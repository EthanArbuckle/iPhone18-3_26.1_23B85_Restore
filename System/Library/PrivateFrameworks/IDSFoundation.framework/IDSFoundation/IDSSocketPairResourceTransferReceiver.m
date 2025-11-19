@interface IDSSocketPairResourceTransferReceiver
+ (id)incomingFilePathForMessageUUID:(id)a3;
+ (id)modernIncomingFilePath;
- (BOOL)appendMessage:(id)a3 receiverError:(unsigned __int8 *)a4;
- (BOOL)writeResourceData:(id)a3;
- (BOOL)writeResourceData:(id)a3 resourceByteOffset:(unint64_t)a4;
- (IDSSocketPairResourceTransferReceiver)initWithMessage:(id)a3 resumeResourceTransfers:(BOOL)a4 receiverError:(unsigned __int8 *)a5;
- (id)finalizedMessageDictionaryIfDone;
- (void)abortTransfer;
- (void)dealloc;
@end

@implementation IDSSocketPairResourceTransferReceiver

+ (id)incomingFilePathForMessageUUID:(id)a3
{
  if (a3)
  {
    v4 = sub_1A7C1CCBC(a3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)modernIncomingFilePath
{
  v2 = sub_1A7C22174(0);
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E695DEC8];
  v5 = NSHomeDirectory();
  v6 = [v4 arrayWithObjects:{v5, @"/Library/IdentityServices/files/", v2, 0}];
  v7 = [v3 pathWithComponents:v6];

  return v7;
}

- (IDSSocketPairResourceTransferReceiver)initWithMessage:(id)a3 resumeResourceTransfers:(BOOL)a4 receiverError:(unsigned __int8 *)a5
{
  v5 = a4;
  v105[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v99.receiver = self;
  v99.super_class = IDSSocketPairResourceTransferReceiver;
  v8 = [(IDSSocketPairResourceTransferReceiver *)&v99 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_145;
  }

  v8->_fileDescriptor = -1;
  if (v5)
  {
    v10 = [v7 data];
    v97 = [v10 subdataWithRangeNoCopy:{1, objc_msgSend(v10, "length") - 1}];
    if ([v7 compressed])
    {
      v11 = [v97 _FTDecompressData];

      v97 = v11;
    }

    goto LABEL_7;
  }

  v12 = [v7 compressed];
  v13 = [v7 data];
  v10 = v13;
  if (v12)
  {
    v97 = [v13 _FTDecompressData];
LABEL_7:

    goto LABEL_9;
  }

  v97 = v13;
LABEL_9:
  v14 = JWDecodeDictionary();
  v15 = objc_opt_class();
  v16 = sub_1A7B0A2C8(v15, v14, @"ids-message-resource-transfer-url");
  v17 = objc_opt_class();
  v96 = sub_1A7B0A2C8(v17, v14, @"ids-message-resource-transfer-total-bytes");
  v18 = objc_opt_class();
  v19 = sub_1A7B0A2C8(v18, v14, @"ids-message-resource-transfer-expiry-date");
  v20 = v19;
  if (!v19)
  {
    v23 = 0;
    if (v16 && v96)
    {
      goto LABEL_18;
    }

LABEL_19:
    v26 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v102 = v5;
      _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferReceiver: missing header (%d)", buf, 8u);
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

    if (a5)
    {
      *a5 = 1;
    }

    goto LABEL_52;
  }

  v21 = MEMORY[0x1E695DF00];
  [v19 doubleValue];
  v22 = [v21 dateWithTimeIntervalSinceReferenceDate:?];
  v23 = v22;
  if (!v16 || !v96)
  {
    goto LABEL_19;
  }

  if (!v22)
  {
LABEL_18:
    obj = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:172800.0];
    objc_storeStrong(&v9->_expiryDate, obj);
    goto LABEL_30;
  }

  [v22 timeIntervalSinceNow];
  if (v24 <= 3600.0)
  {
    [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:?];
  }

  else
  {
    [v23 timeIntervalSinceNow];
    [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v25 * 1.1 + 60.0];
  }
  obj = ;

  objc_storeStrong(&v9->_expiryDate, obj);
LABEL_30:
  v9->_totalBytesExpected = [v96 unsignedLongLongValue];
  v94 = sub_1A7C1CCBC(0);
  v27 = [MEMORY[0x1E696AC08] defaultManager];
  v98 = 0;
  v92 = [v27 attributesOfFileSystemForPath:v94 error:&v98];
  v91 = v98;

  if (!v92)
  {
    v33 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v102 = v5;
      *&v102[4] = 2112;
      *&v102[6] = v94;
      _os_log_impl(&dword_1A7AD9000, v33, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferReceiver: cannot get system attributes (%d) for path %@", buf, 0x12u);
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

    v31 = 0;
    if (!a5)
    {
      goto LABEL_51;
    }

    v32 = 2;
    goto LABEL_50;
  }

  v28 = [v92 objectForKey:*MEMORY[0x1E696A3C0]];
  v90 = [v28 unsignedLongLongValue];

  if (v90 >= v9->_totalBytesExpected)
  {
    v35 = objc_opt_class();
    v84 = sub_1A7B0A2C8(v35, v14, @"ids-message-resource-transfer-metadata");
    v36 = [v7 messageUUID];
    v37 = v16;
    v88 = v36;
    v89 = v37;
    v38 = [MEMORY[0x1E695DFF8] fileURLWithPath:v37];
    v39 = [v38 lastPathComponent];

    if (!v39)
    {
      v54 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v102 = v89;
        _os_log_impl(&dword_1A7AD9000, v54, OS_LOG_TYPE_DEFAULT, "makeTemporaryFileFromOriginalFilePath: can't get last path component from %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          v77 = v89;
          MarcoLog();
        }

        if (IMShouldLog())
        {
          v77 = v89;
          IMLogString();
        }
      }

      v51 = 0;
      LODWORD(v49) = -1;
LABEL_110:

      v87 = v51;
      v9->_fileDescriptor = v49;

      objc_storeStrong(&v9->_resourcePath, v51);
      if (v9->_fileDescriptor == -1)
      {
        v68 = *__error();
        IDSAssertNonFatalErrnoWithSource(v68, "IDSSocketPairResourceTransferReceiver", "/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSSocketPairMessage.m", 2196);
        v69 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          v70 = strerror(v68);
          *buf = 67109378;
          *v102 = v68;
          *&v102[4] = 2080;
          *&v102[6] = v70;
          _os_log_impl(&dword_1A7AD9000, v69, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferReceiver: cannot create file (errno: %d (%s))", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            strerror(v68);
            MarcoLog();
          }

          if (IMShouldLog())
          {
            strerror(v68);
            IMLogString();
          }
        }

        v71 = 0;
        if (a5)
        {
          *a5 = 2;
        }
      }

      else
      {
        IDSCheckFileDescriptorUsageWithSource("IDSSocketPairMessage.m", 2202, 0);
        if (fchmod(v9->_fileDescriptor, 0x1B6u) == -1)
        {
          v61 = *__error();
          v62 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v102 = v61;
            _os_log_impl(&dword_1A7AD9000, v62, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferReceiver: failed to fchmod the file %d", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (MarcoShouldLog())
            {
              v77 = v61;
              MarcoLog();
            }

            if (IMShouldLog())
            {
              v77 = v61;
              IMLogString();
            }
          }
        }

        v63 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{v14, v77, v79, v81}];
        [v63 removeObjectForKey:@"ids-message-resource-transfer-data"];
        v64 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          expiryDate = v9->_expiryDate;
          *buf = 134218498;
          *v102 = v90;
          *&v102[8] = 2112;
          *&v102[10] = v63;
          v103 = 2112;
          v104 = expiryDate;
          _os_log_impl(&dword_1A7AD9000, v64, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferReceiver: init called with filesystem-free-size %llu header %@ expiryDate %@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v80 = v63;
            v82 = v9->_expiryDate;
            v78 = v90;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v80 = v63;
            v82 = v9->_expiryDate;
            v78 = v90;
            IMLogString();
          }
        }

        v66 = [v14 objectForKey:{@"ids-message-resource-transfer-data", v78, v80, v82}];
        if (v5)
        {
          v67 = [(IDSSocketPairResourceTransferReceiver *)v9 writeResourceData:v66 resourceByteOffset:0];
        }

        else
        {
          v67 = [(IDSSocketPairResourceTransferReceiver *)v9 writeResourceData:v66];
        }

        if (v67)
        {
          objc_storeStrong(&v9->_metadata, v84);
          v72 = [v7 peerResponseIdentifier];
          peerResponseIdentifier = v9->_peerResponseIdentifier;
          v9->_peerResponseIdentifier = v72;

          v74 = [v7 messageUUID];
          messageUUID = v9->_messageUUID;
          v9->_messageUUID = v74;

          v9->_resumeResourceTransfers = v5;
          v71 = 1;
        }

        else
        {
          v71 = 0;
          if (a5)
          {
            *a5 = 3;
          }
        }
      }

      if (!v71)
      {
        goto LABEL_52;
      }

LABEL_145:
      v34 = v9;
      goto LABEL_146;
    }

    v86 = sub_1A7C1CCBC(v88);
    v40 = MEMORY[0x1E696AEC0];
    v105[0] = v86;
    v105[1] = v39;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:2];
    string = [v40 pathWithComponents:v41];

    if (!string)
    {
      v55 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v102 = v89;
        *&v102[8] = 2112;
        *&v102[10] = v86;
        _os_log_impl(&dword_1A7AD9000, v55, OS_LOG_TYPE_DEFAULT, "makeTemporaryFileFromOriginalFilePath: can't get new path from original %@ destination %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          v77 = v89;
          v79 = v86;
          MarcoLog();
        }

        if (IMShouldLog())
        {
          v77 = v89;
          v79 = v86;
          IMLogString();
        }
      }

      v51 = 0;
      LODWORD(v49) = -1;
      goto LABEL_109;
    }

    v42 = [MEMORY[0x1E696AC08] defaultManager];
    v100 = 0;
    v43 = [v42 createDirectoryAtPath:v86 withIntermediateDirectories:1 attributes:0 error:&v100];
    v83 = v100;

    if ((v43 & 1) == 0)
    {
      v44 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v102 = v89;
        *&v102[8] = 2112;
        *&v102[10] = v86;
        _os_log_impl(&dword_1A7AD9000, v44, OS_LOG_TYPE_DEFAULT, "makeTemporaryFileFromOriginalFilePath: can't create new directory from original %@ destination %@ (may be benign)", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          v77 = v89;
          v79 = v86;
          MarcoLog();
        }

        if (IMShouldLog())
        {
          v77 = v89;
          v79 = v86;
          IMLogString();
        }
      }
    }

    MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(string);
    v46 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x100004077774924uLL);
    v47 = v46;
    if (v46)
    {
      [(__CFString *)string getFileSystemRepresentation:v46 maxLength:MaximumSizeOfFileSystemRepresentation];
      if (IMGetDomainBoolForKey())
      {
        v48 = open(v47, 521, 384, v79);
      }

      else
      {
        v48 = open(v47, 1545, 384, v79);
      }

      v49 = v48;
      if (v48 != -1)
      {
        v50 = [MEMORY[0x1E696AC08] defaultManager];
        v51 = [v50 stringWithFileSystemRepresentation:v47 length:strlen(v47)];
        v52 = v51;

        free(v47);
        v53 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *v102 = v89;
          *&v102[8] = 2112;
          *&v102[10] = string;
          v103 = 1024;
          LODWORD(v104) = v49;
          _os_log_impl(&dword_1A7AD9000, v53, OS_LOG_TYPE_DEFAULT, "makeTemporaryFileFromOriginalFilePath: originalFilePath %@ newFilePath %@ newFileDescriptor %d", buf, 0x1Cu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v79 = string;
            v81 = v49;
            v77 = v89;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v81 = v49;
            v77 = v89;
            v79 = string;
            IMLogString();
          }
        }

        goto LABEL_108;
      }

      v58 = *__error();
      v59 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *v102 = v47;
        *&v102[8] = 1024;
        *&v102[10] = v58;
        _os_log_impl(&dword_1A7AD9000, v59, OS_LOG_TYPE_DEFAULT, "makeTemporaryFileFromOriginalFilePath: can't open file for writing @%s errno %d", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          v77 = v47;
          v79 = v58;
          MarcoLog();
        }

        if (IMShouldLog())
        {
          v77 = v47;
          v79 = v58;
          IMLogString();
        }
      }

      IDSAssertNonFatalErrnoWithSource(v58, "SocketPairMessage open() failed", "/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSSocketPairMessage.m", 2082);
      v60 = [MEMORY[0x1E696AC08] defaultManager];
      [v60 removeItemAtPath:v86 error:0];

      free(v47);
    }

    else
    {
      v56 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v102 = MaximumSizeOfFileSystemRepresentation;
        _os_log_impl(&dword_1A7AD9000, v56, OS_LOG_TYPE_DEFAULT, "makeTemporaryFileFromOriginalFilePath: can't allocate %ld bytes for new file path", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          v77 = MaximumSizeOfFileSystemRepresentation;
          MarcoLog();
        }

        if (IMShouldLog())
        {
          v77 = MaximumSizeOfFileSystemRepresentation;
          IMLogString();
        }
      }

      v57 = [MEMORY[0x1E696AC08] defaultManager];
      [v57 removeItemAtPath:v86 error:0];
    }

    v51 = 0;
    LODWORD(v49) = -1;
LABEL_108:

LABEL_109:
    goto LABEL_110;
  }

  v29 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    totalBytesExpected = v9->_totalBytesExpected;
    *buf = 134218496;
    *v102 = totalBytesExpected;
    *&v102[8] = 2048;
    *&v102[10] = v90;
    v103 = 1024;
    LODWORD(v104) = v5;
    _os_log_impl(&dword_1A7AD9000, v29, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferReceiver: system space unavailable file %llu system %llu (%d)", buf, 0x1Cu);
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

  v31 = v92;
  if (!a5)
  {
    goto LABEL_51;
  }

  v32 = 4;
LABEL_50:
  *a5 = v32;
LABEL_51:

LABEL_52:
  v34 = 0;
LABEL_146:

  return v34;
}

- (void)abortTransfer
{
  v8 = *MEMORY[0x1E69E9840];
  fileDescriptor = self->_fileDescriptor;
  if (fileDescriptor != -1)
  {
    close(fileDescriptor);
    self->_fileDescriptor = -1;
    if (unlink([(NSString *)self->_resourcePath fileSystemRepresentation]))
    {
      v4 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        resourcePath = self->_resourcePath;
        *buf = 138412290;
        v7 = resourcePath;
        _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferReceiver: failed to unlink aborted transfer @ %@", buf, 0xCu);
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
    }
  }
}

- (void)dealloc
{
  fileDescriptor = self->_fileDescriptor;
  if (fileDescriptor != -1)
  {
    close(fileDescriptor);
  }

  v4.receiver = self;
  v4.super_class = IDSSocketPairResourceTransferReceiver;
  [(IDSSocketPairResourceTransferReceiver *)&v4 dealloc];
}

- (BOOL)writeResourceData:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 length];
  if (v5 <= 7)
  {
    v6 = v5;
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = v6;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferReceiver: incoming chunk does not have sufficient data (%lu)", buf, 0xCu);
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

LABEL_19:
    close(self->_fileDescriptor);
    v10 = 0;
    self->_fileDescriptor = -1;
    self->_done = 1;
    goto LABEL_20;
  }

  v8 = bswap64(*[v4 bytes]);
  if (self->_totalBytesReceived != v8)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      totalBytesReceived = self->_totalBytesReceived;
      *buf = 134218240;
      v15 = v8;
      v16 = 2048;
      v17 = totalBytesReceived;
      _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferReceiver: mismatching incoming resource chunk index: stated %llu != actual %llu", buf, 0x16u);
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

    goto LABEL_19;
  }

  v9 = [v4 subdataWithRangeNoCopy:{8, objc_msgSend(v4, "length") - 8}];
  v10 = [(IDSSocketPairResourceTransferReceiver *)self writeResourceData:v9 resourceByteOffset:v8];

LABEL_20:
  return v10;
}

- (BOOL)writeResourceData:(id)a3 resourceByteOffset:(unint64_t)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 length];
    v9 = write(self->_fileDescriptor, [v7 bytes], v8);
    if (v9 <= 0)
    {
      v14 = *__error();
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        totalBytesExpected = self->_totalBytesExpected;
        resourcePath = self->_resourcePath;
        *buf = 134219010;
        v33 = v8;
        v34 = 2048;
        v35 = totalBytesExpected;
        v36 = 2112;
        v37 = resourcePath;
        v38 = 1024;
        *v39 = v14;
        *&v39[4] = 2080;
        *&v39[6] = strerror(v14);
        _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferReceiver: error writing %lu (%llu total) to file %@ (errno: %d (%s))", buf, 0x30u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          strerror(v14);
          MarcoLog();
        }

        if (IMShouldLog())
        {
          strerror(v14);
          IMLogString();
        }
      }

      goto LABEL_42;
    }

    v10 = v9;
    if (v9 < v8)
    {
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_resourcePath;
        *buf = 134218498;
        v33 = v10;
        v34 = 2048;
        v35 = v8;
        v36 = 2112;
        v37 = v12;
        _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferReceiver: only wrote %ld/%lu bytes to file %@", buf, 0x20u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_42;
      }

      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      if (!IMShouldLog())
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v20 = self->_totalBytesExpected;
      totalBytesReceived = self->_totalBytesReceived;
      v21 = self->_resourcePath;
      *buf = 134219010;
      v33 = v8;
      v34 = 2048;
      v35 = totalBytesReceived;
      v36 = 2048;
      v37 = v20;
      v38 = 2112;
      *v39 = v21;
      *&v39[8] = 2048;
      *&v39[10] = a4;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEBUG, "IDSSocketPairResourceTransferReceiver: wrote %lu (received %llu out of %llu total) bytes to file %@ at %llu", buf, 0x34u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV(1, @"IDSFoundation", @"SocketPairMessage", @"IDSSocketPairResourceTransferReceiver: wrote %lu (received %llu out of %llu total) bytes to file %@ at %llu");
    }

    v13 = self->_totalBytesReceived + v10;
    self->_totalBytesReceived = v13;
  }

  else
  {
    v13 = self->_totalBytesReceived;
  }

  v22 = self->_totalBytesExpected;
  if (v13 == v22)
  {
    v23 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = self->_totalBytesExpected;
      v25 = self->_resourcePath;
      *buf = 134218242;
      v33 = v24;
      v34 = 2112;
      v35 = v25;
      _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferReceiver: finished writing all %llu  bytes to file %@", buf, 0x16u);
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

    close(self->_fileDescriptor);
    self->_fileDescriptor = -1;
    self->_done = 1;
    v22 = self->_totalBytesExpected;
    v13 = self->_totalBytesReceived;
  }

  if (v13 <= v22)
  {
    v30 = 1;
    goto LABEL_44;
  }

  v26 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v28 = self->_totalBytesExpected;
    v27 = self->_totalBytesReceived;
    v29 = self->_resourcePath;
    *buf = 134218498;
    v33 = v27;
    v34 = 2048;
    v35 = v28;
    v36 = 2112;
    v37 = v29;
    _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferReceiver: received %llu bytes, more than expected %llu to file %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if (IMShouldLog())
    {
LABEL_41:
      IMLogString();
    }
  }

LABEL_42:
  close(self->_fileDescriptor);
  v30 = 0;
  self->_fileDescriptor = -1;
  self->_done = 1;
LABEL_44:

  return v30;
}

- (BOOL)appendMessage:(id)a3 receiverError:(unsigned __int8 *)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (self->_done)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      messageUUID = self->_messageUUID;
      *buf = 138412290;
      v58 = messageUUID;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferReceiver: already done with this resource! messageUUID %@", buf, 0xCu);
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

    v9 = 0;
  }

  else
  {
    v10 = self->_messageUUID;
    v11 = [v5 messageUUID];
    LOBYTE(v10) = [(NSString *)v10 isEqualToString:v11];

    if (v10)
    {
      if (self->_resumeResourceTransfers)
      {
        v12 = [v6 data];
        v13 = [v12 bytes];
        v14 = (v13[1] << 48) | (v13[2] << 40) | (v13[3] << 32) | (v13[4] << 24) | (v13[5] << 16) | (v13[6] << 8) | v13[7];
        if (self->_totalBytesReceived == v14)
        {
          v15 = [v12 subdataWithRangeNoCopy:{8, objc_msgSend(v12, "length") - 8}];
          if ([v6 compressed])
          {
            v16 = [v15 _FTDecompressData];
            v17 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v18 = self->_messageUUID;
              v19 = [v15 length];
              v20 = [v16 length];
              resourcePath = self->_resourcePath;
              *buf = 138413058;
              v58 = v18;
              v59 = 2048;
              v60 = v19;
              v61 = 2048;
              v62 = v20;
              v63 = 2112;
              v64 = resourcePath;
              _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEBUG, "IDSSocketPairResourceTransferReceiver: appending message %@ (size: %lu decompressed: %lu) to file %@", buf, 0x2Au);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v22 = self->_messageUUID;
              v23 = [v15 length];
              v55 = [v16 length];
              v56 = self->_resourcePath;
              v51 = v22;
              v54 = v23;
              _IDSLogV(1, @"IDSFoundation", @"SocketPairMessage", @"IDSSocketPairResourceTransferReceiver: appending message %@ (size: %lu decompressed: %lu) to file %@");
            }
          }

          else
          {
            v45 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              v46 = self->_messageUUID;
              v47 = [v15 length];
              v48 = self->_resourcePath;
              *buf = 138412802;
              v58 = v46;
              v59 = 2048;
              v60 = v47;
              v61 = 2112;
              v62 = v48;
              _os_log_impl(&dword_1A7AD9000, v45, OS_LOG_TYPE_DEBUG, "IDSSocketPairResourceTransferReceiver: appending message %@ (size: %lu) to file %@", buf, 0x20u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v49 = self->_messageUUID;
              v54 = [v15 length];
              v55 = self->_resourcePath;
              v51 = v49;
              _IDSLogV(1, @"IDSFoundation", @"SocketPairMessage", @"IDSSocketPairResourceTransferReceiver: appending message %@ (size: %lu) to file %@");
            }

            v16 = v15;
          }

          v9 = [(IDSSocketPairResourceTransferReceiver *)self writeResourceData:v16 resourceByteOffset:v14, v51, v54, v55, v56];
        }

        else
        {
          v38 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            totalBytesReceived = self->_totalBytesReceived;
            *buf = 134218240;
            v58 = v14;
            v59 = 2048;
            v60 = totalBytesReceived;
            _os_log_impl(&dword_1A7AD9000, v38, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferReceiver: mismatching incoming resource chunk index: stated %llu != actual %llu", buf, 0x16u);
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

          v9 = 0;
        }
      }

      else
      {
        v27 = [v6 compressed];
        v28 = [v6 data];
        v29 = v28;
        if (v27)
        {
          v30 = [v28 _FTDecompressData];
          v31 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v32 = self->_messageUUID;
            v33 = [v29 length];
            v34 = [v30 length];
            v35 = self->_resourcePath;
            *buf = 138413058;
            v58 = v32;
            v59 = 2048;
            v60 = v33;
            v61 = 2048;
            v62 = v34;
            v63 = 2112;
            v64 = v35;
            _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEBUG, "IDSSocketPairResourceTransferReceiver: appending message %@ (size: %lu decompressed: %lu) to file %@", buf, 0x2Au);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v36 = self->_messageUUID;
            v37 = [v29 length];
            v55 = [v30 length];
            v56 = self->_resourcePath;
            v51 = v36;
            v54 = v37;
            _IDSLogV(1, @"IDSFoundation", @"SocketPairMessage", @"IDSSocketPairResourceTransferReceiver: appending message %@ (size: %lu decompressed: %lu) to file %@");
          }
        }

        else
        {
          v40 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            v41 = self->_messageUUID;
            v42 = [v29 length];
            v43 = self->_resourcePath;
            *buf = 138412802;
            v58 = v41;
            v59 = 2048;
            v60 = v42;
            v61 = 2112;
            v62 = v43;
            _os_log_impl(&dword_1A7AD9000, v40, OS_LOG_TYPE_DEBUG, "IDSSocketPairResourceTransferReceiver: appending message %@ (size: %lu) to file %@", buf, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v44 = self->_messageUUID;
            v54 = [v29 length];
            v55 = self->_resourcePath;
            v51 = v44;
            _IDSLogV(1, @"IDSFoundation", @"SocketPairMessage", @"IDSSocketPairResourceTransferReceiver: appending message %@ (size: %lu) to file %@");
          }

          v30 = v29;
        }

        v9 = [(IDSSocketPairResourceTransferReceiver *)self writeResourceData:v30, v51, v54, v55, v56];
      }
    }

    else
    {
      v24 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v6 messageUUID];
        v26 = self->_messageUUID;
        *buf = 138412546;
        v58 = v25;
        v59 = 2112;
        v60 = v26;
        _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferReceiver: messageUUID %@ does not match original messageUUID %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          v52 = [v6 messageUUID];
          MarcoLog();
        }

        if (IMShouldLog())
        {
          v53 = [v6 messageUUID];
          IMLogString();
        }
      }

      v9 = 0;
      self->_done = 1;
    }
  }

  return v9;
}

- (id)finalizedMessageDictionaryIfDone
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_done)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    [(NSString *)self->_resourcePath UTF8String];
    v4 = sandbox_extension_issue_file();
    if (v4)
    {
      v5 = v4;
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
      if (v6)
      {
        CFDictionarySetValue(v3, @"ids-message-resource-transfer-sandbox-extension", v6);
      }

      free(v5);
    }

    else
    {
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        resourcePath = self->_resourcePath;
        *buf = 138412290;
        v13 = resourcePath;
        _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "Failed to issue sandbox extension for file [%@]", buf, 0xCu);
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
    }

    v9 = self->_resourcePath;
    if (v9)
    {
      CFDictionarySetValue(v3, @"ids-message-resource-transfer-url", v9);
    }

    metadata = self->_metadata;
    if (metadata)
    {
      CFDictionarySetValue(v3, @"ids-message-resource-transfer-metadata", metadata);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end