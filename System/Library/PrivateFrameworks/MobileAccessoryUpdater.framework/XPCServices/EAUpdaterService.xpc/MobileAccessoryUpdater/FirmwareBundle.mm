@interface FirmwareBundle
+ (id)defaultBundlePath;
- (FirmwareBundle)initWithBundle:(id)bundle;
- (FirmwareBundle)initWithBundleName:(id)name;
- (FirmwareBundle)initWithBundlePath:(id)path;
- (FirmwareBundle)initWithData:(id)data hashData:(id)hashData signatureData:(id)signatureData certData:(id)certData;
- (FirmwareBundle)initWithURL:(id)l hashData:(id)data signatureData:(id)signatureData certData:(id)certData;
- (id)getFirmwareDataInRange:(_NSRange)range error:(id *)error;
- (id)parseMSP430TXTFile:(id)file withDefaultByteValue:(unsigned __int8)value;
- (id)parseResourceFileIntoData:(id)data;
- (id)parseSRECFile:(id)file withDefaultByteValue:(unsigned __int8)value;
- (void)calculateHash;
- (void)dealloc;
- (void)loadFirmwareImage;
- (void)parseFileName:(id)name intoPath:(id *)path andExtension:(id *)extension;
- (void)parseSRECLine:(id)line intoImage:(id)image;
@end

@implementation FirmwareBundle

+ (id)defaultBundlePath
{
  resourcePath = [+[NSBundle mainBundle](NSBundle resourcePath];

  return [(NSString *)resourcePath stringByAppendingFormat:@"/FirmwareBundles/"];
}

- (void)calculateHash
{
  v13 = 0;
  firmwareLocalURL = self->_firmwareLocalURL;
  if (firmwareLocalURL)
  {
    HashForDataAtLocationAsData = generateHashForDataAtLocationAsData(firmwareLocalURL, 10, &v13);
    self->_hash = HashForDataAtLocationAsData;
    v5 = HashForDataAtLocationAsData;
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v6 = ccsha256_di();
    NSLog(@"%s: hash not provided by asset. creating sha256 on the fly imageSize=%d\n", "[FirmwareBundle calculateHash]", self->_firmwareImageSize);
    v7 = (((*(v6 + 8) + *(v6 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin();
    v9 = &v12 - v8;
    ccdigest_init();
    firmwareImageSize = self->_firmwareImageSize;
    [(NSData *)self->_firmwareImage bytes];
    ccdigest_update();
    (*(v6 + 56))(v6, v9, v14);
    v11 = [NSData dataWithBytes:v14 length:32];
    self->_hash = v11;
    NSLog(@"hash created %@\n", v11);
  }
}

- (FirmwareBundle)initWithData:(id)data hashData:(id)hashData signatureData:(id)signatureData certData:(id)certData
{
  selfCopy = self;
  if (data)
  {
    v23.receiver = self;
    v23.super_class = FirmwareBundle;
    selfCopy = [(FirmwareBundle *)&v23 init];
    if (selfCopy)
    {
      selfCopy->_firmwareImage = data;
      selfCopy->_firmwareImageSize = [data length];
      selfCopy->_hash = hashData;
      selfCopy->_signature = signatureData;
      selfCopy->_certificate = certData;
      *&selfCopy->_productIDCode = 0;
      selfCopy->_bundleDescription = 0;
      selfCopy->_buildManifest = 0;
      if (!selfCopy->_hash)
      {
        [(FirmwareBundle *)selfCopy calculateHash];
      }

      firmwareImage = selfCopy->_firmwareImage;
      v12 = "valid";
      if (firmwareImage)
      {
        v13 = "valid";
      }

      else
      {
        v13 = "nil";
      }

      v14 = [(NSData *)firmwareImage length];
      hash = selfCopy->_hash;
      if (hash)
      {
        v16 = "valid";
      }

      else
      {
        v16 = "nil";
      }

      v17 = [(NSData *)hash length];
      signature = selfCopy->_signature;
      if (signature)
      {
        v19 = "valid";
      }

      else
      {
        v19 = "nil";
      }

      v20 = [(NSData *)signature length];
      certificate = selfCopy->_certificate;
      if (!certificate)
      {
        v12 = "nil";
      }

      NSLog(@"%s: I=%s[%lu] H=%s[%lu] S=%s[%lu] C=%s[%lu] productID=%d\n", "[FirmwareBundle initWithData:hashData:signatureData:certData:]", v13, v14, v16, v17, v19, v20, v12, [(NSData *)certificate length], selfCopy->_productIDCode);
    }

    else
    {
      NSLog(@"%s: super init failed\n", "[FirmwareBundle initWithData:hashData:signatureData:certData:]");
    }
  }

  else
  {
    NSLog(@"%s: null payload\n", "[FirmwareBundle initWithData:hashData:signatureData:certData:]");
  }

  return selfCopy;
}

- (FirmwareBundle)initWithURL:(id)l hashData:(id)data signatureData:(id)signatureData certData:(id)certData
{
  v25 = 0;
  if ([l checkResourceIsReachableAndReturnError:&v25])
  {
    v24.receiver = self;
    v24.super_class = FirmwareBundle;
    v11 = [(FirmwareBundle *)&v24 init];
    if (v11)
    {
      v11->_firmwareLocalURL = l;
      v11->_hash = data;
      v11->_signature = signatureData;
      v11->_certificate = certData;
      *&v11->_productIDCode = 0;
      v11->_bundleDescription = 0;
      v11->_buildManifest = 0;
      v23 = 0;
      [l getResourceValue:&v23 forKey:NSURLFileSizeKey error:&v25];
      v11->_firmwareImageSize = [v23 unsignedIntValue];
      if (!v11->_hash)
      {
        [(FirmwareBundle *)v11 calculateHash];
      }

      firmwareLocalURL = v11->_firmwareLocalURL;
      v13 = [(NSData *)v11->_firmwareImage length];
      hash = v11->_hash;
      v15 = "valid";
      if (hash)
      {
        v16 = "valid";
      }

      else
      {
        v16 = "nil";
      }

      v17 = [(NSData *)hash length];
      signature = v11->_signature;
      if (signature)
      {
        v19 = "valid";
      }

      else
      {
        v19 = "nil";
      }

      v20 = [(NSData *)signature length];
      certificate = v11->_certificate;
      if (!certificate)
      {
        v15 = "nil";
      }

      NSLog(@"%s: I=%@[%lu] H=%s[%lu] S=%s[%lu] C=%s[%lu] productID=%d\n", "[FirmwareBundle initWithURL:hashData:signatureData:certData:]", firmwareLocalURL, v13, v16, v17, v19, v20, v15, [(NSData *)certificate length], v11->_productIDCode);
    }

    else
    {
      NSLog(@"%s: super init failed\n", "[FirmwareBundle initWithURL:hashData:signatureData:certData:]");
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000F1AC(l);
    }

    return 0;
  }

  return v11;
}

- (FirmwareBundle)initWithBundlePath:(id)path
{
  v4 = [NSBundle bundleWithPath:path];

  return [(FirmwareBundle *)self initWithBundle:v4];
}

- (FirmwareBundle)initWithBundleName:(id)name
{
  v4 = [+[FirmwareBundle defaultBundlePath](FirmwareBundle "defaultBundlePath")];

  return [(FirmwareBundle *)self initWithBundlePath:v4];
}

- (void)loadFirmwareImage
{
  if ([(NSURL *)self->_firmwareLocalURL checkResourceIsReachableAndReturnError:0])
  {
    self->_firmwareImage = [[NSData alloc] initWithContentsOfURL:self->_firmwareLocalURL];
  }
}

- (id)getFirmwareDataInRange:(_NSRange)range error:(id *)error
{
  length = range.length;
  location = range.location;
  firmwareFilehandle = self->_firmwareFilehandle;
  if (!firmwareFilehandle)
  {
    firmwareFilehandle = [NSFileHandle fileHandleForReadingFromURL:self->_firmwareLocalURL error:error];
    self->_firmwareFilehandle = firmwareFilehandle;
    if (!firmwareFilehandle)
    {
      return 0;
    }
  }

  if (![(NSFileHandle *)firmwareFilehandle uarpSeekToOffset:location error:error])
  {
    return 0;
  }

  v9 = self->_firmwareFilehandle;

  return [(NSFileHandle *)v9 uarpReadDataUpToLength:length error:error];
}

- (void)parseFileName:(id)name intoPath:(id *)path andExtension:(id *)extension
{
  pathExtension = [name pathExtension];
  *extension = pathExtension;
  if ([pathExtension caseInsensitiveCompare:@"txt"] && objc_msgSend(*extension, "caseInsensitiveCompare:", @"s19") && objc_msgSend(*extension, "caseInsensitiveCompare:", @"bin") && objc_msgSend(*extension, "caseInsensitiveCompare:", @"plist"))
  {
    *path = name;
    *extension = @"txt";
  }

  else
  {
    *path = [name stringByDeletingPathExtension];
  }
}

- (id)parseResourceFileIntoData:(id)data
{
  v3 = [NSString stringWithContentsOfFile:data encoding:1 error:0];
  v4 = [NSMutableData dataWithCapacity:[(NSString *)v3 length]/ 5];
  v5 = [NSScanner scannerWithString:v3];
  v8 = 0;
  if ([(NSScanner *)v5 scanHexInt:&v8])
  {
    do
    {
      v7 = v8;
      [(NSMutableData *)v4 appendBytes:&v7 length:1];
      [(NSScanner *)v5 scanCharactersFromSet:[NSCharacterSet intoString:"characterSetWithCharactersInString:" characterSetWithCharactersInString:"")], 0];
    }

    while ([(NSScanner *)v5 scanHexInt:&v8]);
  }

  return v4;
}

- (id)parseMSP430TXTFile:(id)file withDefaultByteValue:(unsigned __int8)value
{
  valueCopy = value;
  v7 = [NSMutableData dataWithLength:self->_firmwareImageSize];
  memset([(NSMutableData *)v7 mutableBytes], valueCopy, [(NSMutableData *)v7 length]);
  v14 = 0;
  v8 = [NSScanner scannerWithString:[NSString stringWithContentsOfFile:file encoding:1 error:0]];
  if (![(NSScanner *)v8 isAtEnd])
  {
    do
    {
      v13 = 0;
      if ([(NSScanner *)v8 scanUpToString:@"\n" intoString:&v13])
      {
        v9 = [v13 characterAtIndex:0];
        if (v9 != 113)
        {
          if (v9 == 64)
          {
            -[NSScanner scanHexInt:](+[NSScanner scannerWithString:](NSScanner, "scannerWithString:", [v13 substringFromIndex:1]), "scanHexInt:", &v14);
            v14 -= self->_firmwareImageBaseAddress;
          }

          else
          {
            v10 = [NSScanner scannerWithString:v13];
            if (![(NSScanner *)v10 isAtEnd])
            {
              do
              {
                v12 = 0;
                [(NSScanner *)v10 scanHexInt:&v12];
                ++v14;
                [NSMutableData replaceBytesInRange:v7 withBytes:"replaceBytesInRange:withBytes:"];
              }

              while (![(NSScanner *)v10 isAtEnd]);
            }
          }
        }
      }
    }

    while (![(NSScanner *)v8 isAtEnd]);
  }

  return v7;
}

- (void)parseSRECLine:(id)line intoImage:(id)image
{
  v16 = 0;
  v7 = [line cStringUsingEncoding:1];
  v8 = *(v7 + 1);
  sscanf(v7 + 2, "%02x", &v16);
  v9 = v16;
  v10 = v16;
  if ([line length] - 4 == (2 * v9))
  {
    if (v10)
    {
      v11 = v7 + 4;
      v12 = v10;
      v13 = &v17;
      do
      {
        sscanf(v11, "%02x", &v16);
        v11 += 2;
        v14 = v16;
        *v13 = v16;
        v13 = (v13 + 1);
        v9 += v14;
        --v12;
      }

      while (v12);
    }

    if (v9 == 0xFF)
    {
      if (v8 != 48 && v8 != 57)
      {
        if (v8 == 49)
        {
          if (v10 <= 2)
          {
            NSLog(@"byte_count too low in parseSRECLine", v15);
          }

          else
          {
            [image replaceBytesInRange:(_byteswap_ushort(v17) - self->_firmwareImageBaseAddress) withBytes:{v10 - 3, v18}];
          }
        }

        else
        {
          NSLog(@"Unhandled SREC record type in parseSRECLine", v15);
        }
      }
    }

    else
    {
      NSLog(@"checksum failure in parseSRECLine", v15);
    }
  }

  else
  {
    NSLog(@"parseSRECLine: Invalid byte_count %d in SREC text_line (%lu)", v10, [line length] - 4);
  }
}

- (id)parseSRECFile:(id)file withDefaultByteValue:(unsigned __int8)value
{
  valueCopy = value;
  v7 = [NSMutableData dataWithLength:self->_firmwareImageSize];
  memset([(NSMutableData *)v7 mutableBytes], valueCopy, [(NSMutableData *)v7 length]);
  v8 = [NSScanner scannerWithString:[NSString stringWithContentsOfFile:file encoding:1 error:0]];
  if (![(NSScanner *)v8 isAtEnd])
  {
    do
    {
      v10 = 0;
      if ([(NSScanner *)v8 scanUpToString:@"\n" intoString:&v10])
      {
        [(FirmwareBundle *)self parseSRECLine:v10 intoImage:v7];
      }
    }

    while (![(NSScanner *)v8 isAtEnd]);
  }

  return v7;
}

- (void)dealloc
{
  [(NSFileHandle *)self->_firmwareFilehandle uarpCloseAndReturnError:0];

  v3.receiver = self;
  v3.super_class = FirmwareBundle;
  [(FirmwareBundle *)&v3 dealloc];
}

- (FirmwareBundle)initWithBundle:(id)bundle
{
  v35 = 0;
  v36 = 0;
  v34.receiver = self;
  v34.super_class = FirmwareBundle;
  v4 = [(FirmwareBundle *)&v34 init];
  if (!v4)
  {
    goto LABEL_37;
  }

  v5 = [bundle objectForInfoDictionaryKey:@"FirmwareImageBaseAddress"];
  v6 = [bundle objectForInfoDictionaryKey:@"FirmwareImageSize"];
  v7 = [bundle objectForInfoDictionaryKey:@"FirmwareImageFile"];
  if (!v7)
  {
    goto LABEL_37;
  }

  v8 = v7;
  v9 = [bundle objectForInfoDictionaryKey:@"HashFile"];
  v10 = [bundle objectForInfoDictionaryKey:@"CertificateFile"];
  v11 = [bundle objectForInfoDictionaryKey:@"SignatureFile"];
  v12 = [bundle objectForInfoDictionaryKey:@"CFBundleIdentifier"];
  if (!v12)
  {
    goto LABEL_37;
  }

  v13 = v12;
  NSLog(@"%s: Info Name Keys [I:%@ H:%@ S:%@ C=%@]\n", "[FirmwareBundle initWithBundle:]", v8, v9, v11, v10);
  if (v5)
  {
    [[NSScanner scannerWithString:?], "scanHexInt:", &v4->_firmwareImageBaseAddress];
  }

  if (v6)
  {
    [[NSScanner scannerWithString:?], "scanHexInt:", &v4->_firmwareImageSize];
  }

  else
  {
    [sub_10000A548() parseFileName:v8 intoPath:? andExtension:?];
    v14 = -[NSDictionary fileSize]([+[NSFileManager defaultManager](NSFileManager attributesOfItemAtPath:"attributesOfItemAtPath:error:" error:sub_10000A558(), 0], "fileSize");
    v4->_firmwareImageSize = v14;
    NSLog(@"%s: imageFileSize unspecified by asset. using file size=%d\n", "[FirmwareBundle initWithBundle:]", v14);
  }

  v15 = [bundle objectForInfoDictionaryKey:@"DefaultFillByte"];
  if (v15)
  {
    v33 = 0;
    [[NSScanner scannerWithString:?], "scanHexInt:", &v33];
    v16 = v33;
  }

  else
  {
    v16 = -1;
  }

  [sub_10000A548() parseFileName:v8 intoPath:? andExtension:?];
  if (![v35 caseInsensitiveCompare:@"s19"])
  {
    v19 = [(FirmwareBundle *)v4 parseSRECFile:sub_10000A558() withDefaultByteValue:v16];
    goto LABEL_16;
  }

  v17 = [v35 caseInsensitiveCompare:@"bin"];
  v18 = sub_10000A558();
  if (v17)
  {
    v19 = [(FirmwareBundle *)v4 parseMSP430TXTFile:v18 withDefaultByteValue:v16];
LABEL_16:
    v20 = 40;
    goto LABEL_18;
  }

  v19 = [NSURL fileURLWithPath:v18];
  v20 = 80;
LABEL_18:
  *(&v4->super.isa + v20) = v19;
  [sub_10000A548() parseFileName:? intoPath:? andExtension:?];
  v4->_buildManifest = [NSDictionary dictionaryWithContentsOfFile:sub_10000A558()];
  if (v9)
  {
    [sub_10000A548() parseFileName:v9 intoPath:? andExtension:?];
    if ([v35 caseInsensitiveCompare:@"bin"])
    {
      v21 = [(FirmwareBundle *)v4 parseResourceFileIntoData:sub_10000A558()];
    }

    else
    {
      v21 = [NSData dataWithContentsOfFile:sub_10000A558()];
    }

    v4->_hash = v21;
    if (!v10)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  [(FirmwareBundle *)v4 calculateHash];
  if (v10)
  {
LABEL_25:
    [sub_10000A548() parseFileName:v10 intoPath:? andExtension:?];
    if ([v35 caseInsensitiveCompare:@"bin"])
    {
      v22 = [(FirmwareBundle *)v4 parseResourceFileIntoData:sub_10000A558()];
    }

    else
    {
      v22 = [NSData dataWithContentsOfFile:sub_10000A558()];
    }

    v4->_certificate = v22;
  }

LABEL_29:
  if (v11)
  {
    [sub_10000A548() parseFileName:v11 intoPath:? andExtension:?];
    if ([v35 caseInsensitiveCompare:@"bin"])
    {
      v23 = [(FirmwareBundle *)v4 parseResourceFileIntoData:sub_10000A558()];
    }

    else
    {
      v23 = [NSData dataWithContentsOfFile:sub_10000A558()];
    }

    v4->_signature = v23;
  }

  v24 = [v13 componentsSeparatedByString:@"."];
  if (v24)
  {
    LODWORD(v24) = [objc_msgSend(v24 "lastObject")];
  }

  v4->_productIDCode = v24;
  v4->_bundleDescription = [objc_msgSend(bundle "bundlePath")];
LABEL_37:
  if ([(FirmwareBundle *)v4 firmwareImage])
  {
    v25 = "valid";
  }

  else
  {
    v25 = "nil";
  }

  firmwareImageSize = [(FirmwareBundle *)v4 firmwareImageSize];
  if ([(FirmwareBundle *)v4 hash])
  {
    v27 = "valid";
  }

  else
  {
    v27 = "nil";
  }

  v28 = [(NSData *)[(FirmwareBundle *)v4 hash] length];
  if ([(FirmwareBundle *)v4 signature])
  {
    v29 = "valid";
  }

  else
  {
    v29 = "nil";
  }

  v30 = [(NSData *)[(FirmwareBundle *)v4 signature] length];
  if ([(FirmwareBundle *)v4 certificate])
  {
    v31 = "valid";
  }

  else
  {
    v31 = "nil";
  }

  NSLog(@"%s: I=%s[%lu] H=%s[%lu] S=%s[%lu] C=%s[%lu] productID=%d baseAddress=%d\n", "[FirmwareBundle initWithBundle:]", v25, firmwareImageSize, v27, v28, v29, v30, v31, [(NSData *)[(FirmwareBundle *)v4 certificate] length], [(FirmwareBundle *)v4 productIDCode], [(FirmwareBundle *)v4 firmwareImageBaseAddress]);
  return v4;
}

@end