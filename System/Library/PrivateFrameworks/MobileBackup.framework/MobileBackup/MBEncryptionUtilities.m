@interface MBEncryptionUtilities
+ (id)decryptString:(id)a3 withKey:(id)a4 salt:(id)a5 error:(id *)a6;
+ (id)keyDataForKey:(id)a3 salt:(id)a4;
@end

@implementation MBEncryptionUtilities

+ (id)decryptString:(id)a3 withKey:(id)a4 salt:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [a1 keyDataForKey:a4 salt:a5];
  v12 = [[NSData alloc] initWithBase64EncodedString:v10 options:0];

  dataOutMoved = 0;
  iv = xmmword_1002BA010;
  if (CCCrypt(1u, 0, 1u, [v11 bytes], objc_msgSend(v11, "length"), &iv, objc_msgSend(v12, "bytes"), objc_msgSend(v12, "length"), 0, 0, &dataOutMoved) == -4301 || !objc_msgSend(v12, "length"))
  {
    v16 = [NSMutableData alloc];
    v15 = [v16 initWithLength:dataOutMoved];
    v17 = [v11 bytes];
    v18 = [v11 length];
    v19 = [v12 bytes];
    v20 = [v12 length];
    dataOut = [v15 mutableBytes];
    v22 = CCCrypt(1u, 0, 1u, v17, v18, &iv, v19, v20, dataOut, dataOutMoved, &dataOutMoved);
    if (v22)
    {
      if (a6)
      {
        v13 = [MBError errorWithCode:1 format:@"Failed to encrypt data: %d", v22];
        v14 = 0;
        goto LABEL_8;
      }

      v14 = 0;
    }

    else
    {
      [v15 setLength:dataOutMoved];
      v14 = v15;
      v15 = v14;
    }
  }

  else
  {
    if (a6)
    {
      v13 = [MBError errorWithCode:1 format:@"CCCrypt was OK with a zero-length buffer? No. Just no."];
      v14 = 0;
      v15 = 0;
LABEL_8:
      *a6 = v13;
      goto LABEL_12;
    }

    v14 = 0;
    v15 = 0;
  }

LABEL_12:

  return v14;
}

+ (id)keyDataForKey:(id)a3 salt:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5 || (v7 = v6) == 0)
  {
    objc_exception_throw([[MBException alloc] initWithCode:207 format:@"Key and salt must not be nil"]);
  }

  v8 = [v5 mutableCopy];
  [v8 appendData:v7];
  v9 = [MBDigest sha1ForData:v8];
  v10 = [v9 subdataWithRange:{0, 16}];

  return v10;
}

@end