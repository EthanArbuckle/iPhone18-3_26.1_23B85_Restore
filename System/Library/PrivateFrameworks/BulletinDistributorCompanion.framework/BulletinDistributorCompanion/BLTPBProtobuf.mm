@interface BLTPBProtobuf
- (BLTPBProtobuf)initWithIDSProtobuf:(id)protobuf sequenceNumberManager:(id)manager;
- (BLTPBProtobuf)initWithProtobuf:(id)protobuf type:(unsigned __int16)type isResponse:(BOOL)response sequenceNumberManager:(id)manager;
@end

@implementation BLTPBProtobuf

- (BLTPBProtobuf)initWithProtobuf:(id)protobuf type:(unsigned __int16)type isResponse:(BOOL)response sequenceNumberManager:(id)manager
{
  typeCopy = type;
  responseCopy = response;
  protobufCopy = protobuf;
  v52 = *MEMORY[0x277D85DE8];
  protobufCopy2 = protobuf;
  managerCopy = manager;
  v10 = objc_alloc_init(MEMORY[0x277D43178]);
  [protobufCopy2 writeTo:v10];
  data = [v10 data];
  if (!data)
  {
    v12 = blt_ids_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(BLTPBProtobuf *)protobufCopy2 initWithProtobuf:v12 type:v13 isResponse:v14 sequenceNumberManager:v15, v16, v17, v18];
    }
  }

  v19 = [BLTPBTransportData transportDataWithSequenceNumberManager:managerCopy];
  if (BLTIsDebugOrInternalBuild())
  {
    [data MD5:buf];
    v20 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:16];
    [v19 setMd5:v20];
  }

  data2 = [v19 data];
  v22 = [data2 length];

  v47 = v22;
  v23 = v22 >> 16;
  if (v22 >> 16)
  {
    v47 = 0;
  }

  else
  {
    data3 = [v19 data];
    [data appendData:data3];
  }

  [data appendBytes:&v47 length:2];
  v25 = blt_ids_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    serviceName = [managerCopy serviceName];
    if (v23)
    {
      v32 = @"not added";
    }

    else
    {
      v39 = MEMORY[0x277CCACA8];
      v40 = protobufCopy;
      sequenceNumber = [v19 sequenceNumber];
      currentSessionIdentifier = [managerCopy currentSessionIdentifier];
      [currentSessionIdentifier UUIDString];
      v29 = v28 = protobufCopy2;
      sessionState = [v19 sessionState];
      v31 = "startAck";
      if (sessionState == 1)
      {
        v31 = "start";
      }

      if (!sessionState)
      {
        v31 = "normal";
      }

      v41 = v29;
      v37 = sequenceNumber;
      v38 = v29;
      protobufCopy2 = v28;
      protobufCopy = v40;
      v32 = [v39 stringWithFormat:@"%llu session: %@ state: %s", v37, v38, v31];
    }

    *buf = 138412546;
    v49 = serviceName;
    v50 = 2112;
    v51 = v32;
    _os_log_impl(&dword_241FB3000, v25, OS_LOG_TYPE_INFO, "Sequence number attached to outgoing protobuf on service %@: %@", buf, 0x16u);
    if (!v23)
    {
    }
  }

  v46.receiver = self;
  v46.super_class = BLTPBProtobuf;
  v33 = [(BLTPBProtobuf *)&v46 initWithProtobufData:data type:typeCopy isResponse:responseCopy];
  v34 = v33;
  if (v33)
  {
    objc_storeStrong(&v33->_protobuf, protobufCopy);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

- (BLTPBProtobuf)initWithIDSProtobuf:(id)protobuf sequenceNumberManager:(id)manager
{
  v61 = *MEMORY[0x277D85DE8];
  protobufCopy = protobuf;
  managerCopy = manager;
  if (!protobufCopy)
  {
    v17 = blt_ids_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241FB3000, v17, OS_LOG_TYPE_ERROR, "IDSProtobuf is nil", buf, 2u);
    }

    v16 = @"BLTPBProtobufNilIDSProtobuf";
    goto LABEL_13;
  }

  data = [protobufCopy data];

  if (!data)
  {
    v18 = blt_ids_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      extendedDescription = [protobufCopy extendedDescription];
      *buf = 138412290;
      *&buf[4] = extendedDescription;
      _os_log_impl(&dword_241FB3000, v18, OS_LOG_TYPE_ERROR, "IDSProtobuf contains nil data: %@", buf, 0xCu);
    }

    v16 = @"BLTPBProtobufNilIDSProtobufData";
    goto LABEL_13;
  }

  data2 = [protobufCopy data];
  v11 = [data2 length];

  if (v11 > 1)
  {
    data3 = [protobufCopy data];
    v24 = [data3 length] - 2;
    v25 = *([data3 bytes] + v24);
    if (v24 < v25)
    {
      v26 = blt_ids_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        extendedDescription2 = [protobufCopy extendedDescription];
        *buf = 134218498;
        *&buf[4] = v24;
        *&buf[12] = 2048;
        *&buf[14] = v25;
        v55 = 2112;
        v56 = extendedDescription2;
        _os_log_impl(&dword_241FB3000, v26, OS_LOG_TYPE_ERROR, "IDSProtobuf transport data length is too big. Message data length: %lu transport data length: %lu protobof: %@", buf, 0x20u);
      }

      _BLTCaptureBug(@"BLTPBProtobufTransportDataLengthTooBig");
      goto LABEL_19;
    }

    v28 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(data3 length:"bytes") freeWhenDone:{v24 - v25, 0}];
    v53.receiver = self;
    v53.super_class = BLTPBProtobuf;
    v29 = -[BLTPBProtobuf initWithProtobufData:type:isResponse:](&v53, sel_initWithProtobufData_type_isResponse_, v28, [protobufCopy type], objc_msgSend(protobufCopy, "isResponse"));

    if (v29)
    {
      context = [protobufCopy context];
      [(BLTPBProtobuf *)v29 setContext:context];

      objc_storeStrong(&v29->_idsProtobuf, protobuf);
      if (v25)
      {
        transportData = [protobufCopy transportData];
        v32 = transportData;
        if (!transportData)
        {

          v49 = blt_ids_log();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            extendedDescription3 = [protobufCopy extendedDescription];
            *buf = 138412290;
            *&buf[4] = extendedDescription3;
            _os_log_impl(&dword_241FB3000, v49, OS_LOG_TYPE_ERROR, "No transport data.  Protobuf: %@", buf, 0xCu);
          }

          v40 = @"BLTPBProtobufTransportDataDecodeFail";
          goto LABEL_46;
        }

        if ([transportData hasMd5])
        {
          data4 = [(BLTPBProtobuf *)v29 data];
          [data4 MD5:buf];

          v34 = [v32 md5];
          bytes = [v34 bytes];
          v36 = *buf == *bytes && *&buf[8] == bytes[1];
          v37 = !v36;

          if (v37)
          {

            v38 = blt_ids_log();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              extendedDescription4 = [protobufCopy extendedDescription];
              *v59 = 138412290;
              v60 = extendedDescription4;
              _os_log_impl(&dword_241FB3000, v38, OS_LOG_TYPE_ERROR, "IDSProtobuf contains bad data.  Protobuf: %@", v59, 0xCu);
            }

            v40 = @"BLTPBProtobufTransportDataBad";
LABEL_46:
            _BLTCaptureBug(v40);

            self = 0;
LABEL_19:
            selfCopy = 0;
LABEL_52:

            goto LABEL_14;
          }
        }

        if ([v32 hasSequenceNumber])
        {
          v29->_sessionState = [v32 backwardsCompatibleSessionState];
          v41 = blt_ids_log();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            serviceName = [managerCopy serviceName];
            sequenceNumber = [v32 sequenceNumber];
            sessionUUID = [v32 sessionUUID];
            uUIDString = [sessionUUID UUIDString];
            v45 = uUIDString;
            sessionState = v29->_sessionState;
            v47 = "startAck";
            if (sessionState == 1)
            {
              v47 = "start";
            }

            *buf = 138413058;
            *&buf[12] = 2048;
            *&buf[4] = serviceName;
            *&buf[14] = sequenceNumber;
            if (sessionState)
            {
              v48 = v47;
            }

            else
            {
              v48 = "normal";
            }

            v55 = 2112;
            v56 = uUIDString;
            v57 = 2080;
            v58 = v48;
            _os_log_impl(&dword_241FB3000, v41, OS_LOG_TYPE_INFO, "Sequence number attached to incoming protobuf on service %@: %llu session: %@ state: %s", buf, 0x2Au);
          }

          v29->_sequenceNumberError = [v32 setSequenceNumberOnManager:managerCopy];
        }

        else
        {
          v51 = blt_ids_log();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_241FB3000, v51, OS_LOG_TYPE_INFO, "Received message without sequence number", buf, 2u);
          }
        }
      }
    }

    self = v29;
    selfCopy = self;
    goto LABEL_52;
  }

  v12 = blt_ids_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    data5 = [protobufCopy data];
    v14 = [data5 length];
    extendedDescription5 = [protobufCopy extendedDescription];
    *buf = 134218242;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = extendedDescription5;
    _os_log_impl(&dword_241FB3000, v12, OS_LOG_TYPE_ERROR, "IDSProtobuf missing transport data. Protobuf length: %lu protobof: %@", buf, 0x16u);
  }

  v16 = @"BLTPBProtobufMissingTransportData";
LABEL_13:
  _BLTCaptureBug(v16);
  selfCopy = 0;
LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)initWithProtobuf:(uint64_t)a3 type:(uint64_t)a4 isResponse:(uint64_t)a5 sequenceNumberManager:(uint64_t)a6 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_241FB3000, a2, a3, "PBDataWriter failed to create NSData object for protobuf %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end