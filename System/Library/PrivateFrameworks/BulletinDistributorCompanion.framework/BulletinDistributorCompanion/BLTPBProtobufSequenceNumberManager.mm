@interface BLTPBProtobufSequenceNumberManager
- (BLTPBProtobufSequenceNumberManager)initWithServiceName:(id)name updateSequenceNumbersOnOutOfOrder:(BOOL)order duplicateCapacity:(unint64_t)capacity;
- (BOOL)_isSequenceNumberInOrder:(unint64_t)order;
- (BOOL)_writeSequenceNumbersToStore;
- (id)_sequenceNumbersURL;
- (id)nextSendSequenceNumber;
- (int64_t)setRecvSequenceNumber:(unint64_t)number recvSessionIdentifier:(id)identifier force:(BOOL)force;
- (void)_readSequenceNumbersFromStoreWithInitialDuplicateCapacity:(unint64_t)capacity;
@end

@implementation BLTPBProtobufSequenceNumberManager

- (BOOL)_writeSequenceNumbersToStore
{
  v35[6] = *MEMORY[0x277D85DE8];
  _sequenceNumbersURL = [(BLTPBProtobufSequenceNumberManager *)self _sequenceNumbersURL];
  if (_sequenceNumbersURL)
  {
    v34[0] = @"send";
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_sendSequenceNumber];
    v35[0] = v4;
    v34[1] = @"recv";
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_recvSequenceNumber];
    v35[1] = v5;
    v34[2] = @"sessionState";
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_sessionState];
    v35[2] = v6;
    v34[3] = @"dupeindex";
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[BLTCircularBitBuffer beginIndex](self->_duplicateEntries, "beginIndex")}];
    v35[3] = v7;
    v34[4] = @"dupebytes";
    bitVector = [(BLTCircularBitBuffer *)self->_duplicateEntries bitVector];
    v35[4] = bitVector;
    v34[5] = @"sendSession";
    uUIDString = [(NSUUID *)self->_currentSessionIdentifier UUIDString];
    v35[5] = uUIDString;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:6];
    v11 = [v10 mutableCopy];

    recvSessionIdentifier = self->_recvSessionIdentifier;
    if (recvSessionIdentifier)
    {
      uUIDString2 = [(NSUUID *)recvSessionIdentifier UUIDString];
      [v11 setObject:uUIDString2 forKeyedSubscript:@"recvSession"];
    }

    v14 = [MEMORY[0x277CCAC58] dataWithPropertyList:v11 format:200 options:0 error:0];
    data = [MEMORY[0x277CBEA90] data];
    v16 = [data writeToURL:_sequenceNumbersURL options:0 error:0];

    if (v16 && [_sequenceNumbersURL setResourceValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE878] error:0] && (objc_msgSend(v14, "writeToURL:options:error:", _sequenceNumbersURL, 0x10000000, 0) & 1) != 0)
    {
      v17 = blt_ids_log();
      v18 = 1;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        sendSequenceNumber = self->_sendSequenceNumber;
        uUIDString3 = [(NSUUID *)self->_currentSessionIdentifier UUIDString];
        recvSequenceNumber = self->_recvSequenceNumber;
        uUIDString4 = [(NSUUID *)self->_recvSessionIdentifier UUIDString];
        v26 = 134218754;
        v27 = sendSequenceNumber;
        v28 = 2112;
        v29 = uUIDString3;
        v30 = 2048;
        v31 = recvSequenceNumber;
        v32 = 2112;
        v33 = uUIDString4;
        v18 = 1;
        _os_log_impl(&dword_241FB3000, v17, OS_LOG_TYPE_INFO, "Sequence numbers written. Send: %llu session: %@ Recv: %llu session: %@", &v26, 0x2Au);
      }
    }

    else
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager removeItemAtURL:_sequenceNumbersURL error:0];

      v17 = blt_ids_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(BLTPBProtobufSequenceNumberManager *)v17 _writeSequenceNumbersToStore];
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)nextSendSequenceNumber
{
  [(NSLock *)self->_sequenceNumberAccess lock];
  ++self->_sendSequenceNumber;
  if ([(BLTPBProtobufSequenceNumberManager *)self _writeSequenceNumbersToStore])
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_sendSequenceNumber];
  }

  else
  {
    v3 = 0;
    --self->_sendSequenceNumber;
  }

  [(NSLock *)self->_sequenceNumberAccess unlock];

  return v3;
}

- (id)_sequenceNumbersURL
{
  sequenceNumbersURL = self->_sequenceNumbersURL;
  if (!sequenceNumbersURL)
  {
    v4 = [(NSString *)self->_serviceName stringByAppendingString:@"-sequencenumbers.plist"];
    v5 = BLTFileURLInPairingPath(v4);
    v6 = self->_sequenceNumbersURL;
    self->_sequenceNumbersURL = v5;

    sequenceNumbersURL = self->_sequenceNumbersURL;
  }

  return sequenceNumbersURL;
}

- (BLTPBProtobufSequenceNumberManager)initWithServiceName:(id)name updateSequenceNumbersOnOutOfOrder:(BOOL)order duplicateCapacity:(unint64_t)capacity
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = BLTPBProtobufSequenceNumberManager;
  v9 = [(BLTPBProtobufSequenceNumberManager *)&v15 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    sequenceNumberAccess = v9->_sequenceNumberAccess;
    v9->_sequenceNumberAccess = v10;

    v12 = [nameCopy copy];
    serviceName = v9->_serviceName;
    v9->_serviceName = v12;

    v9->_updateSequenceNumbersOnOutOfOrder = order;
    [(BLTPBProtobufSequenceNumberManager *)v9 _readSequenceNumbersFromStoreWithInitialDuplicateCapacity:capacity];
  }

  return v9;
}

- (int64_t)setRecvSequenceNumber:(unint64_t)number recvSessionIdentifier:(id)identifier force:(BOOL)force
{
  forceCopy = force;
  identifierCopy = identifier;
  [(NSLock *)self->_sequenceNumberAccess lock];
  if (forceCopy)
  {
    [(BLTCircularBitBuffer *)self->_duplicateEntries clear];
    objc_storeStrong(&self->_recvSessionIdentifier, identifier);
    self->_recvSequenceNumber = number;
LABEL_3:
    [(BLTCircularBitBuffer *)self->_duplicateEntries setBit:1 atIndex:number];
    v10 = 0;
    goto LABEL_4;
  }

  recvSessionIdentifier = self->_recvSessionIdentifier;
  if (!recvSessionIdentifier)
  {
    v10 = 0;
    goto LABEL_14;
  }

  if (([(NSUUID *)recvSessionIdentifier isEqual:identifierCopy]& 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
    if (!self->_updateSequenceNumbersOnOutOfOrder)
    {
      goto LABEL_4;
    }
  }

  if (!self->_recvSessionIdentifier)
  {
LABEL_14:
    if (!identifierCopy)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (identifierCopy && self->_updateSequenceNumbersOnOutOfOrder)
  {
LABEL_15:
    objc_storeStrong(&self->_recvSessionIdentifier, identifier);
  }

LABEL_16:
  if ([(BLTPBProtobufSequenceNumberManager *)self _isSequenceNumberInOrder:number])
  {
    self->_recvSequenceNumber = number;
    if (v10)
    {
      v10 = 1;
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if ([(BLTCircularBitBuffer *)self->_duplicateEntries bitAtIndex:number]== 1)
  {
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  if (self->_updateSequenceNumbersOnOutOfOrder)
  {
    self->_recvSequenceNumber = number;
  }

LABEL_4:
  [(BLTPBProtobufSequenceNumberManager *)self _writeSequenceNumbersToStore];
  [(NSLock *)self->_sequenceNumberAccess unlock];

  return v10;
}

- (BOOL)_isSequenceNumberInOrder:(unint64_t)order
{
  recvSequenceNumber = self->_recvSequenceNumber;
  v4 = recvSequenceNumber >= order;
  v5 = recvSequenceNumber - order;
  return !v4 || v5 < 0;
}

- (void)_readSequenceNumbersFromStoreWithInitialDuplicateCapacity:(unint64_t)capacity
{
  _sequenceNumbersURL = [(BLTPBProtobufSequenceNumberManager *)self _sequenceNumbersURL];
  if (!_sequenceNumbersURL)
  {
    goto LABEL_11;
  }

  currentSessionIdentifier = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:_sequenceNumbersURL];
  v6 = [currentSessionIdentifier objectForKey:@"send"];
  v7 = [currentSessionIdentifier objectForKey:@"recv"];
  v28 = [currentSessionIdentifier objectForKey:@"initial"];
  v8 = [currentSessionIdentifier objectForKey:@"sessionState"];
  v9 = [currentSessionIdentifier objectForKey:@"dupebytes"];
  v10 = [currentSessionIdentifier objectForKey:@"dupeindex"];
  v11 = [currentSessionIdentifier objectForKey:@"sendSession"];
  v12 = [currentSessionIdentifier objectForKey:@"recvSession"];
  v13 = v12;
  if (!v6 || !v7 || !(v28 | v8) || !v9 || !v10 || !v11)
  {

LABEL_11:
    v15 = [[BLTCircularBitBuffer alloc] initWithCapacity:capacity];
    duplicateEntries = self->_duplicateEntries;
    self->_duplicateEntries = v15;

    self->_sessionState = 1;
    uUID = [MEMORY[0x277CCAD78] UUID];
    currentSessionIdentifier = self->_currentSessionIdentifier;
    self->_currentSessionIdentifier = uUID;
    goto LABEL_12;
  }

  self->_sendSequenceNumber = [v6 unsignedLongLongValue];
  self->_recvSequenceNumber = [v7 unsignedLongLongValue];
  v27 = v7;
  if (v8)
  {
    unsignedIntegerValue = [v8 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = [v28 BOOLValue];
  }

  self->_sessionState = unsignedIntegerValue;
  v18 = -[BLTCircularBitBuffer initWithData:andIndex:]([BLTCircularBitBuffer alloc], "initWithData:andIndex:", v9, [v10 unsignedLongLongValue]);
  v19 = self->_duplicateEntries;
  self->_duplicateEntries = v18;

  v20 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
  v21 = self->_currentSessionIdentifier;
  self->_currentSessionIdentifier = v20;

  if (v13)
  {
    v22 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v13];
    recvSessionIdentifier = self->_recvSessionIdentifier;
    self->_recvSessionIdentifier = v22;
  }

  capacity = [(BLTCircularBitBuffer *)self->_duplicateEntries capacity];
  if (capacity != [BLTCircularBitBuffer actualCapacity:capacity])
  {
    v25 = [[BLTCircularBitBuffer alloc] initWithCapacity:capacity];
    v26 = self->_duplicateEntries;
    self->_duplicateEntries = v25;
  }

LABEL_12:
}

@end