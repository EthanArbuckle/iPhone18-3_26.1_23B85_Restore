@interface DEDAEAEncryptor
- (id)encryptLogsAtPath:(id)a3 toDirectory:(id)a4 withMetadata:(id)a5 anonymousDeviceUUID:(id)a6;
@end

@implementation DEDAEAEncryptor

- (id)encryptLogsAtPath:(id)a3 toDirectory:(id)a4 withMetadata:(id)a5 anonymousDeviceUUID:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[DEDConfiguration sharedInstance];
  v12 = os_log_create([v11 loggingSubsystem], "ded-encryptor");

  v13 = [v10 objectForKey:@"publicKey"];

  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v13 options:0];
    if ([MEMORY[0x277D051E0] isValidDirectory:v8])
    {
      v15 = [v8 path];
      v16 = [v15 fileSystemRepresentation];

      v17 = AAPathListCreateWithDirectoryContents(v16, 0, 0, 0, 0, 0);
      if (!v17)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [DEDAEAEncryptor encryptLogsAtPath:toDirectory:withMetadata:anonymousDeviceUUID:];
        }

LABEL_21:
        v18 = 0;
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
      v19 = [v8 URLByDeletingLastPathComponent];
      v20 = [v19 path];
      v16 = [v20 fileSystemRepresentation];

      v21 = [v8 lastPathComponent];
      v22 = [v21 fileSystemRepresentation];

      v17 = AAPathListCreateWithPath(v16, v22);
      if (!v17)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [DEDAEAEncryptor encryptLogsAtPath:toDirectory:withMetadata:anonymousDeviceUUID:];
        }

        goto LABEL_21;
      }
    }

    v23 = v17;
    v24 = [v8 lastPathComponent];
    v25 = [v24 stringByAppendingPathExtension:@"aea"];

    v39 = v25;
    v38 = [v9 URLByAppendingPathComponent:v25];
    v26 = [v38 path];
    v27 = AAFileStreamOpenWithPath([v26 fileSystemRepresentation], 513, 0x1A4u);

    if (!v27)
    {
      v35 = v38;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [DEDAEAEncryptor encryptLogsAtPath:toDirectory:withMetadata:anonymousDeviceUUID:];
      }

      AAPathListDestroy(v23);
      v18 = 0;
      goto LABEL_34;
    }

    v37 = v9;
    v28 = AEAContextCreateWithProfile(3u);
    AEAContextSetFieldBlob(v28, 0xAu, 1u, [v14 bytes], objc_msgSend(v14, "length"));
    AEAContextSetFieldUInt(v28, 3u, 0x801uLL);
    v29 = AEAEncryptionOutputStreamOpen(v27, v28, 0, 0);
    if (v29)
    {
      v30 = v29;
      v31 = AAEncodeArchiveOutputStreamOpen(v29, 0, 0, 0, 0);
      v32 = AAFieldKeySetCreateWithString("TYP,PAT,LNK,DEV,DAT,MOD,FLG,MTM,BTM,CTM,UID,GID,CLC,HLC,XAT");
      if (v31)
      {
        v33 = v32;
        if (v32)
        {
          if (AAArchiveStreamWritePathList(v31, v23, v32, v16, 0, 0, 0, 0) < 0)
          {
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              [DEDAEAEncryptor encryptLogsAtPath:toDirectory:withMetadata:anonymousDeviceUUID:];
            }

            v34 = 0;
          }

          else
          {
            v34 = v38;
          }

          AEAContextDestroy(v28);
          AAArchiveStreamClose(v31);
          AAFieldKeySetDestroy(v33);
          AAPathListDestroy(v23);
          v35 = v34;
          v18 = v35;
          goto LABEL_33;
        }
      }

      v35 = v38;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [DEDAEAEncryptor encryptLogsAtPath:toDirectory:withMetadata:anonymousDeviceUUID:];
      }

      AAByteStreamClose(v30);
      AEAContextDestroy(v28);
    }

    else
    {
      v35 = v38;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [DEDAEAEncryptor encryptLogsAtPath:toDirectory:withMetadata:anonymousDeviceUUID:];
      }

      AEAContextDestroy(v28);
      AAByteStreamClose(v27);
    }

    AAPathListDestroy(v23);
    v18 = 0;
LABEL_33:
    v9 = v37;
LABEL_34:

    goto LABEL_35;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [DEDAEAEncryptor encryptLogsAtPath:v12 toDirectory:? withMetadata:? anonymousDeviceUUID:?];
  }

  v18 = 0;
LABEL_36:

  return v18;
}

- (void)encryptLogsAtPath:toDirectory:withMetadata:anonymousDeviceUUID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, v0, v1, "Could not open file at %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)encryptLogsAtPath:toDirectory:withMetadata:anonymousDeviceUUID:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, v0, v1, "Writing directory contents to archive failed %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)encryptLogsAtPath:toDirectory:withMetadata:anonymousDeviceUUID:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, v0, v1, "Could not create encoder stream for the archive at %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)encryptLogsAtPath:toDirectory:withMetadata:anonymousDeviceUUID:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, v0, v1, "Could not open AppleArchive encryption stream at %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)encryptLogsAtPath:toDirectory:withMetadata:anonymousDeviceUUID:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, v0, v1, "Could not open AppleArchive output byte stream at %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)encryptLogsAtPath:toDirectory:withMetadata:anonymousDeviceUUID:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, v0, v1, "Could not open directory contents of %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end