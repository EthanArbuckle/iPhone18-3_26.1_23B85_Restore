@interface BLTPBProtobuf
- (BLTPBProtobuf)initWithIDSProtobuf:(id)a3 sequenceNumberManager:(id)a4;
- (BLTPBProtobuf)initWithProtobuf:(id)a3 type:(unsigned __int16)a4 isResponse:(BOOL)a5 sequenceNumberManager:(id)a6;
@end

@implementation BLTPBProtobuf

- (BLTPBProtobuf)initWithProtobuf:(id)a3 type:(unsigned __int16)a4 isResponse:(BOOL)a5 sequenceNumberManager:(id)a6
{
  v44 = a4;
  v45 = a5;
  v7 = a3;
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a6;
  v10 = objc_alloc_init(MEMORY[0x277D43178]);
  [v8 writeTo:v10];
  v11 = [v10 data];
  if (!v11)
  {
    v12 = blt_ids_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(BLTPBProtobuf *)v8 initWithProtobuf:v12 type:v13 isResponse:v14 sequenceNumberManager:v15, v16, v17, v18];
    }
  }

  v19 = [BLTPBTransportData transportDataWithSequenceNumberManager:v9];
  if (BLTIsDebugOrInternalBuild())
  {
    [v11 MD5:buf];
    v20 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:16];
    [v19 setMd5:v20];
  }

  v21 = [v19 data];
  v22 = [v21 length];

  v47 = v22;
  v23 = v22 >> 16;
  if (v22 >> 16)
  {
    v47 = 0;
  }

  else
  {
    v24 = [v19 data];
    [v11 appendData:v24];
  }

  [v11 appendBytes:&v47 length:2];
  v25 = blt_ids_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = [v9 serviceName];
    if (v23)
    {
      v32 = @"not added";
    }

    else
    {
      v39 = MEMORY[0x277CCACA8];
      v40 = v7;
      v27 = [v19 sequenceNumber];
      v42 = [v9 currentSessionIdentifier];
      [v42 UUIDString];
      v29 = v28 = v8;
      v30 = [v19 sessionState];
      v31 = "startAck";
      if (v30 == 1)
      {
        v31 = "start";
      }

      if (!v30)
      {
        v31 = "normal";
      }

      v41 = v29;
      v37 = v27;
      v38 = v29;
      v8 = v28;
      v7 = v40;
      v32 = [v39 stringWithFormat:@"%llu session: %@ state: %s", v37, v38, v31];
    }

    *buf = 138412546;
    v49 = v26;
    v50 = 2112;
    v51 = v32;
    _os_log_impl(&dword_241FB3000, v25, OS_LOG_TYPE_INFO, "Sequence number attached to outgoing protobuf on service %@: %@", buf, 0x16u);
    if (!v23)
    {
    }
  }

  v46.receiver = self;
  v46.super_class = BLTPBProtobuf;
  v33 = [(BLTPBProtobuf *)&v46 initWithProtobufData:v11 type:v44 isResponse:v45];
  v34 = v33;
  if (v33)
  {
    objc_storeStrong(&v33->_protobuf, v7);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

- (BLTPBProtobuf)initWithIDSProtobuf:(id)a3 sequenceNumberManager:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v7)
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

  v9 = [v7 data];

  if (!v9)
  {
    v18 = blt_ids_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v7 extendedDescription];
      *buf = 138412290;
      *&buf[4] = v19;
      _os_log_impl(&dword_241FB3000, v18, OS_LOG_TYPE_ERROR, "IDSProtobuf contains nil data: %@", buf, 0xCu);
    }

    v16 = @"BLTPBProtobufNilIDSProtobufData";
    goto LABEL_13;
  }

  v10 = [v7 data];
  v11 = [v10 length];

  if (v11 > 1)
  {
    v23 = [v7 data];
    v24 = [v23 length] - 2;
    v25 = *([v23 bytes] + v24);
    if (v24 < v25)
    {
      v26 = blt_ids_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [v7 extendedDescription];
        *buf = 134218498;
        *&buf[4] = v24;
        *&buf[12] = 2048;
        *&buf[14] = v25;
        v55 = 2112;
        v56 = v27;
        _os_log_impl(&dword_241FB3000, v26, OS_LOG_TYPE_ERROR, "IDSProtobuf transport data length is too big. Message data length: %lu transport data length: %lu protobof: %@", buf, 0x20u);
      }

      _BLTCaptureBug(@"BLTPBProtobufTransportDataLengthTooBig");
      goto LABEL_19;
    }

    v28 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v23 length:"bytes") freeWhenDone:{v24 - v25, 0}];
    v53.receiver = self;
    v53.super_class = BLTPBProtobuf;
    v29 = -[BLTPBProtobuf initWithProtobufData:type:isResponse:](&v53, sel_initWithProtobufData_type_isResponse_, v28, [v7 type], objc_msgSend(v7, "isResponse"));

    if (v29)
    {
      v30 = [v7 context];
      [(BLTPBProtobuf *)v29 setContext:v30];

      objc_storeStrong(&v29->_idsProtobuf, a3);
      if (v25)
      {
        v31 = [v7 transportData];
        v32 = v31;
        if (!v31)
        {

          v49 = blt_ids_log();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v50 = [v7 extendedDescription];
            *buf = 138412290;
            *&buf[4] = v50;
            _os_log_impl(&dword_241FB3000, v49, OS_LOG_TYPE_ERROR, "No transport data.  Protobuf: %@", buf, 0xCu);
          }

          v40 = @"BLTPBProtobufTransportDataDecodeFail";
          goto LABEL_46;
        }

        if ([v31 hasMd5])
        {
          v33 = [(BLTPBProtobuf *)v29 data];
          [v33 MD5:buf];

          v34 = [v32 md5];
          v35 = [v34 bytes];
          v36 = *buf == *v35 && *&buf[8] == v35[1];
          v37 = !v36;

          if (v37)
          {

            v38 = blt_ids_log();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v39 = [v7 extendedDescription];
              *v59 = 138412290;
              v60 = v39;
              _os_log_impl(&dword_241FB3000, v38, OS_LOG_TYPE_ERROR, "IDSProtobuf contains bad data.  Protobuf: %@", v59, 0xCu);
            }

            v40 = @"BLTPBProtobufTransportDataBad";
LABEL_46:
            _BLTCaptureBug(v40);

            self = 0;
LABEL_19:
            v20 = 0;
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
            v52 = [v8 serviceName];
            v42 = [v32 sequenceNumber];
            v43 = [v32 sessionUUID];
            v44 = [v43 UUIDString];
            v45 = v44;
            sessionState = v29->_sessionState;
            v47 = "startAck";
            if (sessionState == 1)
            {
              v47 = "start";
            }

            *buf = 138413058;
            *&buf[12] = 2048;
            *&buf[4] = v52;
            *&buf[14] = v42;
            if (sessionState)
            {
              v48 = v47;
            }

            else
            {
              v48 = "normal";
            }

            v55 = 2112;
            v56 = v44;
            v57 = 2080;
            v58 = v48;
            _os_log_impl(&dword_241FB3000, v41, OS_LOG_TYPE_INFO, "Sequence number attached to incoming protobuf on service %@: %llu session: %@ state: %s", buf, 0x2Au);
          }

          v29->_sequenceNumberError = [v32 setSequenceNumberOnManager:v8];
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
    v20 = self;
    goto LABEL_52;
  }

  v12 = blt_ids_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = [v7 data];
    v14 = [v13 length];
    v15 = [v7 extendedDescription];
    *buf = 134218242;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    _os_log_impl(&dword_241FB3000, v12, OS_LOG_TYPE_ERROR, "IDSProtobuf missing transport data. Protobuf length: %lu protobof: %@", buf, 0x16u);
  }

  v16 = @"BLTPBProtobufMissingTransportData";
LABEL_13:
  _BLTCaptureBug(v16);
  v20 = 0;
LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)initWithProtobuf:(uint64_t)a3 type:(uint64_t)a4 isResponse:(uint64_t)a5 sequenceNumberManager:(uint64_t)a6 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_241FB3000, a2, a3, "PBDataWriter failed to create NSData object for protobuf %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end