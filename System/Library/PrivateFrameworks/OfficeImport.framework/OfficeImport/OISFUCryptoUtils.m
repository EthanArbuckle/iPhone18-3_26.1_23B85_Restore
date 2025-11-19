@interface OISFUCryptoUtils
+ (BOOL)checkKey:(id)a3 againstPassphraseVerifier:(id)a4;
+ (BOOL)generateRandomDataInBuffer:(char *)a3 length:(unint64_t)a4;
+ (id)decodePassphraseHint:(id)a3;
+ (id)generatePassphraseVerifierForKey:(id)a3 verifierVersion:(unsigned __int16)a4;
+ (id)generateRandomSalt;
+ (id)generateRandomSaltWithLength:(unint64_t)a3;
+ (id)hashForPassphrase:(id)a3 withSalt:(id)a4;
+ (id)newBufferedInputStreamForDecryptingFile:(id)a3 key:(id)a4 isDeflated:(BOOL)a5 zipStream:(id *)a6;
+ (id)newBufferedInputStreamForDecryptingZippedBundle:(id)a3 key:(id)a4 zipArchive:(id)a5 isDeflated:(BOOL)a6 zipStream:(id *)a7;
+ (id)saltForSageFiles;
+ (id)saltFromVerifier:(id)a3 saltLength:(unint64_t)a4;
+ (id)sha1HashFromStorage:(id)a3;
+ (id)sha256HashFromData:(id)a3;
+ (id)sha256HashFromStorage:(id)a3;
+ (id)sha256HashFromString:(id)a3;
+ (unsigned)iterationCountFromPassphraseVerifier:(id)a3;
@end

@implementation OISFUCryptoUtils

+ (BOOL)generateRandomDataInBuffer:(char *)a3 length:(unint64_t)a4
{
  v6 = fopen("/dev/random", "r");
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = fread(a3, a4, 1uLL, v6) == 1;
  fclose(v7);
  return v8;
}

+ (id)generateRandomSalt
{
  v2 = objc_opt_class();

  return [v2 generateRandomSaltWithLength:32];
}

+ (id)generateRandomSaltWithLength:(unint64_t)a3
{
  v5 = malloc_type_calloc(a3, 1uLL, 0x100004077774924uLL);
  if ([a1 generateRandomDataInBuffer:v5 length:a3])
  {
    v6 = MEMORY[0x277CBEA90];

    return [v6 dataWithBytesNoCopy:v5 length:a3 freeWhenDone:1];
  }

  else
  {
    free(v5);
    return 0;
  }
}

+ (id)hashForPassphrase:(id)a3 withSalt:(id)a4
{
  if (!a3 || !a4)
  {
    return 0;
  }

  v6 = [MEMORY[0x277CBEB28] dataWithData:a4];
  [v6 appendData:{objc_msgSend(a3, "dataUsingEncoding:", 4)}];

  return [a1 sha256HashFromData:v6];
}

+ (id)generatePassphraseVerifierForKey:(id)a3 verifierVersion:(unsigned __int16)a4
{
  v4 = a4;
  v29 = *MEMORY[0x277D85DE8];
  if ([a3 keyType])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[OISFUCryptoUtils generatePassphraseVerifierForKey:verifierVersion:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUCryptoUtils.mm"], 103, 0, "Unsupported key type");
    +[OITSUAssertionHandler logBacktraceThrottled];
    return 0;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB28] data];
    v26 = 0;
    v9 = [[OISFUMemoryOutputStream alloc] initWithData:v8];
    v25 = v4;
    v24 = 1;
    [(OISFUMemoryOutputStream *)v9 writeBuffer:&v25 size:2];
    [(OISFUMemoryOutputStream *)v9 writeBuffer:&v24 size:2];
    v23 = [a3 iterationCount];
    [(OISFUMemoryOutputStream *)v9 writeBuffer:&v23 size:4];
    if (v4 >= 2)
    {
      -[OISFUMemoryOutputStream writeBuffer:size:](v9, "writeBuffer:size:", [objc_msgSend(a3 "saltData")], objc_msgSend(objc_msgSend(a3, "saltData"), "length"));
    }

    v10 = [a1 ivLengthForKey:a3];
    MEMORY[0x28223BE20]();
    v12 = &c - v11;
    [a1 generateRandomDataInBuffer:&c - v11 length:v10];
    [(OISFUMemoryOutputStream *)v9 writeBuffer:v12 size:v10];
    v13 = [[OISFUCryptor alloc] initWithKey:a3 operation:0 iv:v12 ivLength:v10 usePKCS7Padding:v4 == 1];
    [a1 generateRandomDataInBuffer:data length:32];
    if (![(OISFUCryptor *)v13 cryptDataFromBuffer:data length:32 toStream:v9 finished:0 error:&v26])
    {

      v14 = MEMORY[0x277CBEAD8];
      v15 = *MEMORY[0x277CBE648];
      v16 = [v26 localizedDescription];
      [v14 raise:v15 format:{@"SFUCryptor failed. %@: %@", v16, objc_msgSend(v26, "localizedFailureReason")}];
      v9 = 0;
      v13 = 0;
    }

    if (CC_SHA256_Init(&c) && CC_SHA256_Update(&c, data, 0x20u) && CC_SHA256_Final(md, &c))
    {
      if (![(OISFUCryptor *)v13 cryptDataFromBuffer:md length:32 toStream:v9 finished:1 error:&v26])
      {

        v17 = MEMORY[0x277CBEAD8];
        v18 = *MEMORY[0x277CBE648];
        v19 = [v26 localizedDescription];
        [v17 raise:v18 format:{@"SFUCryptor failed. %@: %@", v19, objc_msgSend(v26, "localizedFailureReason")}];
        v13 = 0;
        v9 = 0;
      }
    }

    else
    {
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[OISFUCryptoUtils generatePassphraseVerifierForKey:verifierVersion:]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v20, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUCryptoUtils.mm"], 156, 0, "CC_SHA256 failed");
      +[OITSUAssertionHandler logBacktraceThrottled];
      v8 = 0;
    }
  }

  return v8;
}

+ (unsigned)iterationCountFromPassphraseVerifier:(id)a3
{
  v4 = [[OISFUMemoryInputStream alloc] initWithData:a3];
  if ([objc_opt_class() isEncryptionVersionAndFormatSupportedInPassphraseVerifier:a3])
  {
    [(OISFUMemoryInputStream *)v4 seekToOffset:4];
    v7 = 0;
    v5 = [(OISFUMemoryInputStream *)v4 readToBuffer:&v7 size:4];

    if (v5 == 4)
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

+ (id)saltFromVerifier:(id)a3 saltLength:(unint64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = [[OISFUMemoryInputStream alloc] initWithData:a3];
  if ([objc_opt_class() isEncryptionVersionAndFormatSupportedInPassphraseVerifier:a3])
  {
    v12 = 0;
    if ([(OISFUMemoryInputStream *)v7 readToBuffer:&v12 size:2]== 2 && v12)
    {
      if (v12 == 1)
      {
        v8 = [a1 saltForSageFiles];
      }

      else
      {
        v10 = [(OISFUMemoryInputStream *)v7 seekToOffset:8];
        MEMORY[0x28223BE20](v10);
        if ([(OISFUMemoryInputStream *)v7 readToBuffer:&v11[-((a4 + 15) & 0xFFFFFFFFFFFFFFF0)] size:a4]== a4)
        {
          v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v11[-((a4 + 15) & 0xFFFFFFFFFFFFFFF0)] length:a4];
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {

    return 0;
  }

  return v8;
}

+ (id)saltForSageFiles
{
  v2 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:"someSalt" length:8];

  return v2;
}

+ (BOOL)checkKey:(id)a3 againstPassphraseVerifier:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = [[OISFUMemoryInputStream alloc] initWithData:a4];
  v32 = 0;
  if (-[OISFUMemoryInputStream readToBuffer:size:](v7, "readToBuffer:size:", &v32, 2) == 2 && (v8 = v32, v31 = 0, -[OISFUMemoryInputStream readToBuffer:size:](v7, "readToBuffer:size:", &v31, 2) == 2) && ([objc_opt_class() isEncryptionVersionAndFormatSupportedInPassphraseVerifier:a4] & 1) != 0 && (v30 = 0, -[OISFUMemoryInputStream readToBuffer:size:](v7, "readToBuffer:size:", &v30, 4) == 4) && (v9 = v30, v9 == objc_msgSend(a3, "iterationCount")) && (v8 < 2 || (v10 = objc_msgSend(objc_msgSend(a3, "saltData"), "length"), MEMORY[0x28223BE20](v10), -[OISFUMemoryInputStream readToBuffer:size:](v7, "readToBuffer:size:") == v10)))
  {
    v11 = [a1 ivLengthForKey:a3];
    v12 = v11;
    v13 = v11;
    MEMORY[0x28223BE20](v11);
    v15 = &v26 - v14;
    if ([(OISFUMemoryInputStream *)v7 readToBuffer:&v26 - v14 size:v13]== v12)
    {
      v16 = [[OISFUCryptor alloc] initWithKey:a3 operation:1 iv:v15 ivLength:v13 usePKCS7Padding:v8 == 1];
      v17 = 0;
      v28 = 0;
      v29 = 0;
      do
      {
        v18 = v17;
        v19 = [(OISFUCryptor *)v16 cryptDataFromStream:v7 toBuffer:&data[v17] length:64 - v17 bytesRead:&v29 error:&v28];
        v17 = v29 + v18;
      }

      while (v19 && v29 != 0);

      LOBYTE(v21) = 0;
      if (v18 == 64 && !v28)
      {
        v21 = CC_SHA256_Init(&c);
        if (v21)
        {
          v21 = CC_SHA256_Update(&c, data, 0x20u);
          if (v21)
          {
            v21 = CC_SHA256_Final(md, &c);
            if (v21)
            {
              LOBYTE(v21) = v38 == *md && v39 == v34 && v40 == v35 && v41 == v36;
            }
          }
        }
      }
    }

    else
    {

      LOBYTE(v21) = 0;
    }
  }

  else
  {

    LOBYTE(v21) = 0;
  }

  return v21;
}

+ (id)newBufferedInputStreamForDecryptingFile:(id)a3 key:(id)a4 isDeflated:(BOOL)a5 zipStream:(id *)a6
{
  v7 = a5;
  v9 = [[OISFUFileInputStream alloc] initWithPath:a3 offset:0];
  if (v9)
  {
    v10 = v9;
    v11 = [[OISFUCryptoInputStream alloc] initForDecryptionWithInputStream:v9 key:a4];

    if (!v7)
    {
      if (!v11)
      {
        return 0;
      }

LABEL_10:
      v13 = [[OISFUBufferedInputStream alloc] initWithStream:v11];

      return v13;
    }
  }

  else
  {
    if (!v7)
    {
      return 0;
    }

    v11 = 0;
  }

  v12 = v11;
  v11 = [[OISFUZipInflateInputStream alloc] initWithInput:v11];

  if (v11)
  {
    if (a6)
    {
      *a6 = v11;
    }

    goto LABEL_10;
  }

  return 0;
}

+ (id)newBufferedInputStreamForDecryptingZippedBundle:(id)a3 key:(id)a4 zipArchive:(id)a5 isDeflated:(BOOL)a6 zipStream:(id *)a7
{
  v8 = a6;
  v10 = [a5 entryWithName:a3];
  if (v10 && (v11 = [v10 inputStream]) != 0)
  {
    v12 = [[OISFUCryptoInputStream alloc] initForDecryptionWithInputStream:v11 key:a4];
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = 0;
    if (!v8)
    {
LABEL_4:
      if (!v12)
      {
        return 0;
      }

LABEL_11:
      v14 = [[OISFUBufferedInputStream alloc] initWithStream:v12];

      return v14;
    }
  }

  v13 = [[OISFUZipInflateInputStream alloc] initWithInput:v12];

  if (v13)
  {
    if (a7)
    {
      *a7 = v13;
    }

    v12 = v13;
    goto LABEL_11;
  }

  return 0;
}

+ (id)decodePassphraseHint:(id)a3
{
  result = [a3 length];
  if (result)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(a3 length:"bytes") encoding:{result, 4}];

    return v5;
  }

  return result;
}

+ (id)sha256HashFromData:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = CC_SHA256_Init(&v7);
  if ([a3 length] >> 32)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[OISFUCryptoUtils sha256HashFromData:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUCryptoUtils.mm"], 416, 0, "overflow  in sha256HashFromData");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if (v4 && CC_SHA256_Update(&v7, [a3 bytes], objc_msgSend(a3, "length")) && CC_SHA256_Final(md, &v7))
  {
    return [MEMORY[0x277CBEA90] dataWithBytes:md length:32];
  }

  else
  {
    return 0;
  }
}

+ (id)sha256HashFromStorage:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = CC_SHA256_Init(&c);
  v5 = [a3 bufferedInputStream];
  [v5 disableSystemCaching];
  data = 0;
  if (!v4)
  {
    return 0;
  }

  while (1)
  {
    v6 = [v5 readToOwnBuffer:&data size:0xFFFFFFFFLL];
    if (!v6)
    {
      break;
    }

    if (!CC_SHA256_Update(&c, data, v6))
    {
      return 0;
    }
  }

  if (CC_SHA256_Final(md, &c))
  {
    return [MEMORY[0x277CBEA90] dataWithBytes:md length:32];
  }

  else
  {
    return 0;
  }
}

+ (id)sha256HashFromString:(id)a3
{
  v4 = [a3 dataUsingEncoding:4];

  return [a1 sha256HashFromData:v4];
}

+ (id)sha1HashFromStorage:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = CC_SHA1_Init(&c);
  v5 = [a3 bufferedInputStream];
  [v5 disableSystemCaching];
  data = 0;
  if (!v4)
  {
    return 0;
  }

  while (1)
  {
    v6 = [v5 readToOwnBuffer:&data size:0xFFFFFFFFLL];
    if (!v6)
    {
      break;
    }

    if (!CC_SHA1_Update(&c, data, v6))
    {
      return 0;
    }
  }

  if (CC_SHA1_Final(md, &c))
  {
    return [MEMORY[0x277CBEA90] dataWithBytes:md length:20];
  }

  else
  {
    return 0;
  }
}

@end