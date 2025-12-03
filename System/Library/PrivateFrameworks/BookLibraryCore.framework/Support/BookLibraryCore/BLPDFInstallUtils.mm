@interface BLPDFInstallUtils
+ (BOOL)decryptFileAtURL:(id)l encryptionKey:(id)key salt:(id)salt error:(id *)error;
@end

@implementation BLPDFInstallUtils

+ (BOOL)decryptFileAtURL:(id)l encryptionKey:(id)key salt:(id)salt error:(id *)error
{
  lCopy = l;
  keyCopy = key;
  saltCopy = salt;
  if (lCopy)
  {
    v12 = 0;
  }

  else
  {
    v12 = @"Missing URL. ";
  }

  if (!keyCopy)
  {
    v16 = @"Missing property k. ";
    goto LABEL_10;
  }

  v13 = [NSData bu_dataFromHexString:keyCopy];
  if (!v13)
  {
    v16 = @"Failed to decode k. ";
LABEL_10:
    v12 = [(__CFString *)v12 stringByAppendingString:v16];
    v14 = 0;
    if (!saltCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v14 = v13;
  if (!saltCopy)
  {
LABEL_7:
    v15 = @"Missing property s. ";
LABEL_16:
    v21 = [(__CFString *)v12 stringByAppendingString:v15];

    v12 = v21;
    goto LABEL_17;
  }

LABEL_11:
  v17 = [NSData bu_dataFromHexString:saltCopy];
  bytes = [v17 bytes];

  if (!bytes)
  {
    v15 = @"Failed to decode s. ";
    goto LABEL_16;
  }

  if (lCopy && v14)
  {
    v19 = -[BLEncryptedBuffer initWithFileAtURL:pageSize:key:options:]([BLEncryptedBuffer alloc], "initWithFileAtURL:pageSize:key:options:", lCopy, 1008, [v14 bytes], 0);
    [(BLEncryptedBuffer *)v19 setIVProc:sub_1000B499C withContext:bytes];
    [(BLEncryptedBuffer *)v19 decrypt];

    v20 = 0;
    goto LABEL_18;
  }

LABEL_17:
  v20 = sub_1000A8F44(0, @"Missing or malformed fields", v12);
LABEL_18:
  v22 = +[NSUserDefaults standardUserDefaults];
  if ([v22 BOOLForKey:@"BKSimulateCrashAtInstallDuringDecrypt"])
  {
    v23 = BLBookInstallLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[PDFInstall-Op]: Simulating a crash during install decrypt", v26, 2u);
    }

    [v22 removeObjectForKey:@"BKSimulateCrashAtInstallDuringDecrypt"];
    [v22 synchronize];
    raise(11);
  }

  if (error && v20)
  {
    v24 = v20;
    *error = v20;
  }

  return v20 == 0;
}

@end