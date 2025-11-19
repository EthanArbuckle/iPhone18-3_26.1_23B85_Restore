@interface BLTPBProtobufSequenceNumberManager
- (BLTPBProtobufSequenceNumberManager)initWithServiceName:(id)a3 updateSequenceNumbersOnOutOfOrder:(BOOL)a4 duplicateCapacity:(unint64_t)a5;
- (BOOL)_isSequenceNumberInOrder:(unint64_t)a3;
- (BOOL)_writeSequenceNumbersToStore;
- (id)_sequenceNumbersURL;
- (id)nextSendSequenceNumber;
- (int64_t)setRecvSequenceNumber:(unint64_t)a3 recvSessionIdentifier:(id)a4 force:(BOOL)a5;
- (void)_readSequenceNumbersFromStoreWithInitialDuplicateCapacity:(unint64_t)a3;
@end

@implementation BLTPBProtobufSequenceNumberManager

- (BOOL)_writeSequenceNumbersToStore
{
  v35[6] = *MEMORY[0x277D85DE8];
  v3 = [(BLTPBProtobufSequenceNumberManager *)self _sequenceNumbersURL];
  if (v3)
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
    v8 = [(BLTCircularBitBuffer *)self->_duplicateEntries bitVector];
    v35[4] = v8;
    v34[5] = @"sendSession";
    v9 = [(NSUUID *)self->_currentSessionIdentifier UUIDString];
    v35[5] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:6];
    v11 = [v10 mutableCopy];

    recvSessionIdentifier = self->_recvSessionIdentifier;
    if (recvSessionIdentifier)
    {
      v13 = [(NSUUID *)recvSessionIdentifier UUIDString];
      [v11 setObject:v13 forKeyedSubscript:@"recvSession"];
    }

    v14 = [MEMORY[0x277CCAC58] dataWithPropertyList:v11 format:200 options:0 error:0];
    v15 = [MEMORY[0x277CBEA90] data];
    v16 = [v15 writeToURL:v3 options:0 error:0];

    if (v16 && [v3 setResourceValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE878] error:0] && (objc_msgSend(v14, "writeToURL:options:error:", v3, 0x10000000, 0) & 1) != 0)
    {
      v17 = blt_ids_log();
      v18 = 1;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        sendSequenceNumber = self->_sendSequenceNumber;
        v20 = [(NSUUID *)self->_currentSessionIdentifier UUIDString];
        recvSequenceNumber = self->_recvSequenceNumber;
        v22 = [(NSUUID *)self->_recvSessionIdentifier UUIDString];
        v26 = 134218754;
        v27 = sendSequenceNumber;
        v28 = 2112;
        v29 = v20;
        v30 = 2048;
        v31 = recvSequenceNumber;
        v32 = 2112;
        v33 = v22;
        v18 = 1;
        _os_log_impl(&dword_241FB3000, v17, OS_LOG_TYPE_INFO, "Sequence numbers written. Send: %llu session: %@ Recv: %llu session: %@", &v26, 0x2Au);
      }
    }

    else
    {
      v23 = [MEMORY[0x277CCAA00] defaultManager];
      [v23 removeItemAtURL:v3 error:0];

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

- (BLTPBProtobufSequenceNumberManager)initWithServiceName:(id)a3 updateSequenceNumbersOnOutOfOrder:(BOOL)a4 duplicateCapacity:(unint64_t)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = BLTPBProtobufSequenceNumberManager;
  v9 = [(BLTPBProtobufSequenceNumberManager *)&v15 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    sequenceNumberAccess = v9->_sequenceNumberAccess;
    v9->_sequenceNumberAccess = v10;

    v12 = [v8 copy];
    serviceName = v9->_serviceName;
    v9->_serviceName = v12;

    v9->_updateSequenceNumbersOnOutOfOrder = a4;
    [(BLTPBProtobufSequenceNumberManager *)v9 _readSequenceNumbersFromStoreWithInitialDuplicateCapacity:a5];
  }

  return v9;
}

- (int64_t)setRecvSequenceNumber:(unint64_t)a3 recvSessionIdentifier:(id)a4 force:(BOOL)a5
{
  v5 = a5;
  v9 = a4;
  [(NSLock *)self->_sequenceNumberAccess lock];
  if (v5)
  {
    [(BLTCircularBitBuffer *)self->_duplicateEntries clear];
    objc_storeStrong(&self->_recvSessionIdentifier, a4);
    self->_recvSequenceNumber = a3;
LABEL_3:
    [(BLTCircularBitBuffer *)self->_duplicateEntries setBit:1 atIndex:a3];
    v10 = 0;
    goto LABEL_4;
  }

  recvSessionIdentifier = self->_recvSessionIdentifier;
  if (!recvSessionIdentifier)
  {
    v10 = 0;
    goto LABEL_14;
  }

  if (([(NSUUID *)recvSessionIdentifier isEqual:v9]& 1) != 0)
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
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v9 && self->_updateSequenceNumbersOnOutOfOrder)
  {
LABEL_15:
    objc_storeStrong(&self->_recvSessionIdentifier, a4);
  }

LABEL_16:
  if ([(BLTPBProtobufSequenceNumberManager *)self _isSequenceNumberInOrder:a3])
  {
    self->_recvSequenceNumber = a3;
    if (v10)
    {
      v10 = 1;
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if ([(BLTCircularBitBuffer *)self->_duplicateEntries bitAtIndex:a3]== 1)
  {
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  if (self->_updateSequenceNumbersOnOutOfOrder)
  {
    self->_recvSequenceNumber = a3;
  }

LABEL_4:
  [(BLTPBProtobufSequenceNumberManager *)self _writeSequenceNumbersToStore];
  [(NSLock *)self->_sequenceNumberAccess unlock];

  return v10;
}

- (BOOL)_isSequenceNumberInOrder:(unint64_t)a3
{
  recvSequenceNumber = self->_recvSequenceNumber;
  v4 = recvSequenceNumber >= a3;
  v5 = recvSequenceNumber - a3;
  return !v4 || v5 < 0;
}

- (void)_readSequenceNumbersFromStoreWithInitialDuplicateCapacity:(unint64_t)a3
{
  v29 = [(BLTPBProtobufSequenceNumberManager *)self _sequenceNumbersURL];
  if (!v29)
  {
    goto LABEL_11;
  }

  currentSessionIdentifier = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v29];
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
    v15 = [[BLTCircularBitBuffer alloc] initWithCapacity:a3];
    duplicateEntries = self->_duplicateEntries;
    self->_duplicateEntries = v15;

    self->_sessionState = 1;
    v17 = [MEMORY[0x277CCAD78] UUID];
    currentSessionIdentifier = self->_currentSessionIdentifier;
    self->_currentSessionIdentifier = v17;
    goto LABEL_12;
  }

  self->_sendSequenceNumber = [v6 unsignedLongLongValue];
  self->_recvSequenceNumber = [v7 unsignedLongLongValue];
  v27 = v7;
  if (v8)
  {
    v14 = [v8 unsignedIntegerValue];
  }

  else
  {
    v14 = [v28 BOOLValue];
  }

  self->_sessionState = v14;
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

  v24 = [(BLTCircularBitBuffer *)self->_duplicateEntries capacity];
  if (v24 != [BLTCircularBitBuffer actualCapacity:a3])
  {
    v25 = [[BLTCircularBitBuffer alloc] initWithCapacity:a3];
    v26 = self->_duplicateEntries;
    self->_duplicateEntries = v25;
  }

LABEL_12:
}

@end