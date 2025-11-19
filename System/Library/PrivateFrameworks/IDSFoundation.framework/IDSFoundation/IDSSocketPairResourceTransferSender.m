@interface IDSSocketPairResourceTransferSender
- (BOOL)readNextBytes:(id *)a3 byteOffset:(unint64_t *)a4;
- (IDSSocketPairResourceTransferSender)initWithResourceAtPath:(id)a3 metadata:(id)a4 sequenceNumber:(unsigned int)a5 streamID:(unsigned __int16)a6 expectsPeerResponse:(BOOL)a7 wantsAppAck:(BOOL)a8 compressPayload:(BOOL)a9 compressed:(BOOL)a10 didWakeHint:(BOOL)a11 peerResponseIdentifier:(id)a12 messageUUID:(id)a13 expiryDate:(id)a14;
- (id)description;
- (id)nextMessage;
- (id)nextMessage_old;
- (id)readNextBytes;
- (void)closeFileAndMarkDone;
- (void)dealloc;
- (void)reset;
@end

@implementation IDSSocketPairResourceTransferSender

- (IDSSocketPairResourceTransferSender)initWithResourceAtPath:(id)a3 metadata:(id)a4 sequenceNumber:(unsigned int)a5 streamID:(unsigned __int16)a6 expectsPeerResponse:(BOOL)a7 wantsAppAck:(BOOL)a8 compressPayload:(BOOL)a9 compressed:(BOOL)a10 didWakeHint:(BOOL)a11 peerResponseIdentifier:(id)a12 messageUUID:(id)a13 expiryDate:(id)a14
{
  v37 = a7;
  v38 = a8;
  v36 = a6;
  v63 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v39 = a4;
  v40 = a12;
  v18 = a13;
  v19 = a14;
  v42.receiver = self;
  v42.super_class = IDSSocketPairResourceTransferSender;
  v20 = [(IDSSocketPairResourceTransferSender *)&v42 init];
  if (v20)
  {
    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138414594;
      v44 = v17;
      v45 = 2112;
      v46 = v39;
      if (v37)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v47 = 2048;
      if (v38)
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v48 = a5;
      v49 = 1024;
      if (a10)
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      v50 = v36;
      v51 = 2112;
      v52 = v22;
      v53 = 2112;
      v54 = v23;
      v55 = 2112;
      v56 = v24;
      v57 = 2112;
      v58 = v40;
      v59 = 2112;
      v60 = v18;
      v61 = 2112;
      v62 = v19;
      _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferSender: created with path %@  metadata %@ sequenceNumber %lu streamID %u expectsPeerResponse %@ wantsAppAck %@ compressed %@ peerResponseIdentifier %@ messageUUID %@ expiryDate %@", buf, 0x62u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    objc_storeStrong(&v20->_resourcePath, a3);
    objc_storeStrong(&v20->_metadata, a4);
    v25 = [MEMORY[0x1E696AC08] defaultManager];
    v41 = 0;
    v26 = [v25 attributesOfItemAtPath:v17 error:&v41];
    v34 = v41;
    resourceAttributes = v20->_resourceAttributes;
    v20->_resourceAttributes = v26;

    v28 = v20->_resourceAttributes;
    if (v28)
    {
      v29 = [(NSDictionary *)v28 fileSize];
      v20->_totalBytes = v29;
      if (!v29)
      {
        goto LABEL_35;
      }

      if (!HIBYTE(v29))
      {
LABEL_36:
        v20->_sequenceNumber = a5;
        v20->_streamID = v36;
        v20->_expectsPeerResponse = v37;
        v20->_wantsAppAck = v38;
        v20->_compressPayload = a9;
        v20->_compressed = a10;
        v20->_didWakeHint = a11;
        objc_storeStrong(&v20->_peerResponseIdentifier, a12);
        objc_storeStrong(&v20->_messageUUID, a13);
        v20->_maxChunkSize = 4000;
        v20->_fileDescriptor = -1;
        objc_storeStrong(&v20->_expiryDate, a14);

        goto LABEL_37;
      }

      v30 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        totalBytes = v20->_totalBytes;
        *buf = 134217984;
        v44 = totalBytes;
        _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferSender: file too big %llu", buf, 0xCu);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_35;
      }

      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      if (!IMShouldLog())
      {
LABEL_35:
        v20->_done = 1;
        goto LABEL_36;
      }
    }

    else
    {
      v32 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = v34;
        _os_log_impl(&dword_1A7AD9000, v32, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferSender: unable to read file attributes %@", buf, 0xCu);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_35;
      }

      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      if (!IMShouldLog())
      {
        goto LABEL_35;
      }
    }

    IMLogString();
    goto LABEL_35;
  }

LABEL_37:

  return v20;
}

- (id)description
{
  v2 = @"YES";
  if (self->_resourceAttributes)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_metadata)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (!self->_sentFirstMessage)
  {
    v2 = @"NO";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"IDSSocketPairResourceTransferSender: path: %@  attributes: %@  metadata: %@  sentFirstMessage: %@  nextbyte: %llu  totalbytes: %llu  messageUUID: %@  filedescriptor: %d expiryDate: %@", self->_resourcePath, v3, v4, v2, self->_nextByte, self->_totalBytes, self->_messageUUID, self->_fileDescriptor, self->_expiryDate];
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    resourcePath = self->_resourcePath;
    resourceAttributes = self->_resourceAttributes;
    fileDescriptor = self->_fileDescriptor;
    messageUUID = self->_messageUUID;
    *buf = 138413058;
    v15 = resourcePath;
    v16 = 2112;
    v17 = resourceAttributes;
    v18 = 1024;
    v19 = fileDescriptor;
    v20 = 2112;
    v21 = messageUUID;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferSender: done with %@ attributes %@ fd %d messageUUID %@", buf, 0x26u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v11 = self->_fileDescriptor;
      v12 = self->_messageUUID;
      v9 = self->_resourcePath;
      v10 = self->_resourceAttributes;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v11 = self->_fileDescriptor;
      v12 = self->_messageUUID;
      v9 = self->_resourcePath;
      v10 = self->_resourceAttributes;
      IMLogString();
    }
  }

  v8 = self->_fileDescriptor;
  if (v8 != -1)
  {
    close(v8);
  }

  v13.receiver = self;
  v13.super_class = IDSSocketPairResourceTransferSender;
  [(IDSSocketPairResourceTransferSender *)&v13 dealloc:v9];
}

- (void)closeFileAndMarkDone
{
  close(self->_fileDescriptor);
  self->_fileDescriptor = -1;
  self->_done = 1;
}

- (BOOL)readNextBytes:(id *)a3 byteOffset:(unint64_t *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  if (self->_done)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferSender: already done reading", buf, 2u);
    }

    v5 = os_log_shim_legacy_logging_enabled();
    if (v5)
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      v5 = IMShouldLog();
      if (v5)
      {
LABEL_8:
        IMLogString();
LABEL_63:
        LOBYTE(v5) = 0;
      }
    }
  }

  else if (self->_fileDescriptor == -1)
  {
    v25 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferSender: file not open", buf, 2u);
    }

    v5 = os_log_shim_legacy_logging_enabled();
    if (v5)
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      v5 = IMShouldLog();
      if (v5)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    nextByte = self->_nextByte;
    totalBytes = self->_totalBytes;
    v9 = totalBytes >= nextByte;
    v10 = totalBytes - nextByte;
    if (v10 == 0 || !v9)
    {
      v26 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferSender: no more bytes to read - should not happen", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }

      [(IDSSocketPairResourceTransferSender *)self closeFileAndMarkDone];
      goto LABEL_63;
    }

    if (v10 >= self->_maxChunkSize)
    {
      maxChunkSize = self->_maxChunkSize;
    }

    else
    {
      maxChunkSize = v10;
    }

    if (self->_resumeResourceTransfers)
    {
      v14 = maxChunkSize;
    }

    else
    {
      v14 = maxChunkSize + 8;
    }

    v15 = malloc_type_malloc(v14, 0x100004077774924uLL);
    if (!v15)
    {
      v28 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v35 = maxChunkSize + 8;
        _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferSender: malloc failed for %llu", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          v32 = maxChunkSize + 8;
          MarcoLog();
        }

        if (IMShouldLog())
        {
          v32 = maxChunkSize + 8;
          IMLogString();
        }
      }

      [(IDSSocketPairResourceTransferSender *)self closeFileAndMarkDone];
      goto LABEL_63;
    }

    v16 = v15;
    v17 = v15;
    if (!self->_resumeResourceTransfers)
    {
      *v15 = bswap64(self->_nextByte);
      v16 = v15 + 1;
    }

    v18 = read(self->_fileDescriptor, v16, maxChunkSize);
    if (v18 <= 0)
    {
      v29 = *__error();
      v30 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v35) = v29;
        _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferSender: unable to read file (errno: %d)", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }

      free(v17);
      [(IDSSocketPairResourceTransferSender *)self closeFileAndMarkDone];
      goto LABEL_63;
    }

    v19 = v18;
    *a3 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v17 length:v14 freeWhenDone:1];
    v20 = self->_nextByte;
    *a4 = v20;
    v21 = v20 + v19;
    self->_nextByte = v21;
    if (v21 == self->_totalBytes)
    {
      v22 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = self->_totalBytes;
        resourcePath = self->_resourcePath;
        *buf = 134218242;
        v35 = v23;
        v36 = 2112;
        v37 = resourcePath;
        _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferSender: read all %llu bytes from file %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          v32 = self->_totalBytes;
          v33 = self->_resourcePath;
          MarcoLog();
        }

        if (IMShouldLog())
        {
          v32 = self->_totalBytes;
          v33 = self->_resourcePath;
          IMLogString();
        }
      }

      [(IDSSocketPairResourceTransferSender *)self closeFileAndMarkDone:v32];
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (id)readNextBytes
{
  v7 = 0;
  v8 = 0;
  v2 = [(IDSSocketPairResourceTransferSender *)self readNextBytes:&v7 byteOffset:&v8];
  v3 = v7;
  v4 = v3;
  v5 = 0;
  if (v2)
  {
    v5 = v3;
  }

  return v5;
}

- (id)nextMessage_old
{
  v30 = *MEMORY[0x1E69E9840];
  if (!self->_sentFirstMessage)
  {
    fileDescriptor = self->_fileDescriptor;
    if (fileDescriptor != -1)
    {
      close(fileDescriptor);
    }

    v7 = open([(NSString *)self->_resourcePath fileSystemRepresentation], 0);
    self->_fileDescriptor = v7;
    if (v7 == -1)
    {
      v10 = *__error();
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v29) = v10;
        _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferSender: unable to open file for read (errno %d)", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }

      IDSAssertNonFatalErrnoWithSource(v10, "IDSSocketPairResourceTransferSender open() failed", "/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSSocketPairMessage.m", 2544);
      [(IDSSocketPairResourceTransferSender *)self closeFileAndMarkDone];
      goto LABEL_54;
    }

    v8 = [MEMORY[0x1E695DF90] dictionary];
    if (self->_totalBytes)
    {
      v9 = [(IDSSocketPairResourceTransferSender *)self readNextBytes];
      if (!v9)
      {
        [(IDSSocketPairResourceTransferSender *)self closeFileAndMarkDone];
        goto LABEL_53;
      }
    }

    else
    {
      v9 = 0;
    }

    v12 = self->_resourcePath;
    if (v12)
    {
      CFDictionarySetValue(v8, @"ids-message-resource-transfer-url", v12);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1C1B0();
    }

    metadata = self->_metadata;
    if (metadata)
    {
      CFDictionarySetValue(v8, @"ids-message-resource-transfer-metadata", metadata);
    }

    if (v9)
    {
      CFDictionarySetValue(v8, @"ids-message-resource-transfer-data", v9);
    }

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_totalBytes];
    if (v14)
    {
      CFDictionarySetValue(v8, @"ids-message-resource-transfer-total-bytes", v14);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1C238();
    }

    v15 = MEMORY[0x1E696AD98];
    [(NSDate *)self->_expiryDate timeIntervalSinceReferenceDate];
    v16 = [v15 numberWithDouble:?];
    if (v16)
    {
      CFDictionarySetValue(v8, @"ids-message-resource-transfer-expiry-date", v16);
    }

    v3 = JWEncodeDictionary();
    if (v3)
    {
      self->_sentFirstMessage = 1;

      goto LABEL_42;
    }

    v24 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      resourcePath = self->_resourcePath;
      *buf = 138412290;
      v29 = resourcePath;
      _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferSender: failed to create first message from %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v27 = self->_resourcePath;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v27 = self->_resourcePath;
        IMLogString();
      }
    }

    [(IDSSocketPairResourceTransferSender *)self closeFileAndMarkDone];

LABEL_53:
LABEL_54:
    v21 = 0;
    goto LABEL_55;
  }

  v3 = [(IDSSocketPairResourceTransferSender *)self readNextBytes];
  if (!v3)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_resourcePath;
      *buf = 138412290;
      v29 = v5;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferSender: failed to create data message from %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v27 = self->_resourcePath;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v27 = self->_resourcePath;
        IMLogString();
      }
    }

    [(IDSSocketPairResourceTransferSender *)self closeFileAndMarkDone];
    goto LABEL_54;
  }

LABEL_42:
  v17 = [v3 _CUTCopyGzippedData];
  v18 = [v17 length];
  v19 = [v3 length];
  if (v18 < v19)
  {
    v20 = v17;

    v3 = v20;
  }

  v21 = [(IDSSocketPairDataMessage *)[IDSSocketPairResourceTransferMessage alloc] initWithSequenceNumber:self->_sequenceNumber streamID:self->_streamID expectsPeerResponse:self->_expectsPeerResponse wantsAppAck:self->_wantsAppAck compressed:v18 < v19 didWakeHint:self->_didWakeHint peerResponseIdentifier:self->_peerResponseIdentifier messageUUID:self->_messageUUID data:v3 expiryDate:0];
  v22 = [(IDSSocketPairMessage *)self topic];
  [(IDSSocketPairMessage *)v21 setTopic:v22];

  v23 = [(IDSSocketPairMessage *)self context];
  [(IDSSocketPairMessage *)v21 setContext:v23];

LABEL_55:

  return v21;
}

- (id)nextMessage
{
  v38 = *MEMORY[0x1E69E9840];
  if (!self->_resumeResourceTransfers)
  {
    v6 = [(IDSSocketPairResourceTransferSender *)self nextMessage_old];
    goto LABEL_61;
  }

  v3 = [MEMORY[0x1E695DF88] data];
  if (!self->_sentFirstMessage)
  {
    fileDescriptor = self->_fileDescriptor;
    if (fileDescriptor != -1)
    {
      close(fileDescriptor);
    }

    v8 = open([(NSString *)self->_resourcePath fileSystemRepresentation], 0);
    self->_fileDescriptor = v8;
    if (v8 == -1)
    {
      v14 = *__error();
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v37) = v14;
        _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferSender: unable to open file for read (errno %d)", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }

      IDSAssertNonFatalErrnoWithSource(v14, "IDSSocketPairResourceTransferSender open() failed", "/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSSocketPairMessage.m", 2634);
      [(IDSSocketPairResourceTransferSender *)self closeFileAndMarkDone];
      goto LABEL_59;
    }

    v9 = [MEMORY[0x1E695DF90] dictionary];
    v35 = 0;
    if (self->_totalBytes)
    {
      v34 = 0;
      v10 = [(IDSSocketPairResourceTransferSender *)self readNextBytes:&v34 byteOffset:&v35];
      v11 = v34;
      if (!v10)
      {
LABEL_58:
        [(IDSSocketPairResourceTransferSender *)self closeFileAndMarkDone];

        goto LABEL_59;
      }
    }

    else
    {
      v11 = 0;
    }

    v16 = self->_resourcePath;
    if (v16)
    {
      CFDictionarySetValue(v9, @"ids-message-resource-transfer-url", v16);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1C1B0();
    }

    metadata = self->_metadata;
    if (metadata)
    {
      CFDictionarySetValue(v9, @"ids-message-resource-transfer-metadata", metadata);
    }

    if (v11)
    {
      CFDictionarySetValue(v9, @"ids-message-resource-transfer-data", v11);
    }

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_totalBytes];
    if (v18)
    {
      CFDictionarySetValue(v9, @"ids-message-resource-transfer-total-bytes", v18);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1C238();
    }

    v19 = MEMORY[0x1E696AD98];
    [(NSDate *)self->_expiryDate timeIntervalSinceReferenceDate];
    v20 = [v19 numberWithDouble:?];
    if (v20)
    {
      CFDictionarySetValue(v9, @"ids-message-resource-transfer-expiry-date", v20);
    }

    v5 = JWEncodeDictionary();
    if (v5)
    {
      buf[0] = 1;
      [v3 appendBytes:buf length:1];
      self->_sentFirstMessage = 1;

      goto LABEL_45;
    }

    v29 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      resourcePath = self->_resourcePath;
      *buf = 138412290;
      v37 = resourcePath;
      _os_log_impl(&dword_1A7AD9000, v29, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferSender: failed to create first message from %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v32 = self->_resourcePath;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v32 = self->_resourcePath;
        IMLogString();
      }
    }

    goto LABEL_58;
  }

  v35 = 0;
  v33 = 0;
  v4 = [(IDSSocketPairResourceTransferSender *)self readNextBytes:&v33 byteOffset:&v35];
  v5 = v33;
  if (v4)
  {
    buf[1] = BYTE6(v35);
    buf[2] = BYTE5(v35);
    buf[3] = BYTE4(v35);
    LOBYTE(v37) = BYTE3(v35);
    BYTE1(v37) = BYTE2(v35);
    BYTE2(v37) = BYTE1(v35);
    BYTE3(v37) = v35;
    buf[0] = 0;
    [v3 appendBytes:buf length:8];
LABEL_45:
    if (self->_compressPayload)
    {
      v21 = [v5 _CUTCopyGzippedData];
      v22 = [v21 length];
      v23 = [v5 length];
      v24 = v22 >= v23;
      v25 = v22 < v23;
      if (!v24)
      {
        v26 = v21;

        v5 = v26;
      }
    }

    else
    {
      v25 = 0;
    }

    [v3 appendData:v5];
    v6 = [(IDSSocketPairDataMessage *)[IDSSocketPairResourceTransferMessage alloc] initWithSequenceNumber:self->_sequenceNumber streamID:self->_streamID expectsPeerResponse:self->_expectsPeerResponse wantsAppAck:self->_wantsAppAck compressed:v25 didWakeHint:self->_didWakeHint peerResponseIdentifier:self->_peerResponseIdentifier messageUUID:self->_messageUUID data:v3 expiryDate:0];
    v27 = [(IDSSocketPairMessage *)self topic];
    [(IDSSocketPairMessage *)v6 setTopic:v27];

    [(IDSSocketPairDataMessage *)v6 setStreamID:self->_streamID];
    [(IDSSocketPairMessage *)v6 setUseDynamicServiceName:[(IDSSocketPairMessage *)self useDynamicServiceName]];
    v28 = [(IDSSocketPairMessage *)self context];
    [(IDSSocketPairMessage *)v6 setContext:v28];

    goto LABEL_60;
  }

  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_resourcePath;
    *buf = 138412290;
    v37 = v13;
    _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferSender: failed to create data message from %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v32 = self->_resourcePath;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v32 = self->_resourcePath;
      IMLogString();
    }
  }

  [(IDSSocketPairResourceTransferSender *)self closeFileAndMarkDone];

LABEL_59:
  v6 = 0;
LABEL_60:

LABEL_61:

  return v6;
}

- (void)reset
{
  self->_sentFirstMessage = 0;
  self->_nextByte = 0;
  self->_done = 0;
  fileDescriptor = self->_fileDescriptor;
  if (fileDescriptor != -1)
  {
    close(fileDescriptor);
    self->_fileDescriptor = -1;
  }
}

@end