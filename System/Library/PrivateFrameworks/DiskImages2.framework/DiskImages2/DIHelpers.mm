@interface DIHelpers
+ (BOOL)executeWithPath:(id)path arguments:(id)arguments error:(id *)error;
+ (id)copyDevicePathWithStatfs:(statfs *)statfs;
+ (id)stringWithImageFormat:(int64_t)format;
+ (unint64_t)numBlocksWithSizeStr:(id)str blockSize:(unsigned int)size;
+ (unsigned)getBlockSizeFromStr:(id)str error:(id *)error;
@end

@implementation DIHelpers

+ (id)stringWithImageFormat:(int64_t)format
{
  if ((format - 1) > 8)
  {
    return 0;
  }

  else
  {
    return off_278F80CB0[format - 1];
  }
}

+ (unint64_t)numBlocksWithSizeStr:(id)str blockSize:(unsigned int)size
{
  strCopy = str;
  v17 = 0;
  lowercaseString = [strCopy lowercaseString];
  v7 = [lowercaseString characterAtIndex:{objc_msgSend(strCopy, "length") - 1}];

  if (v7 <= 106)
  {
    if (v7 == 98)
    {
      sizeCopy = 1;
      goto LABEL_12;
    }

    if (v7 == 103)
    {
      sizeCopy = 0x40000000;
      goto LABEL_12;
    }
  }

  else
  {
    switch(v7)
    {
      case 'k':
        sizeCopy = 1024;
        goto LABEL_12;
      case 'm':
        sizeCopy = 0x100000;
        goto LABEL_12;
      case 't':
        sizeCopy = 0x10000000000;
LABEL_12:
        v9 = [strCopy substringToIndex:{objc_msgSend(strCopy, "length") - 1}];

        strCopy = v9;
        goto LABEL_13;
    }
  }

  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v16 = [decimalDigitCharacterSet characterIsMember:v7];

  if (!v16)
  {
    v13 = 0;
    goto LABEL_16;
  }

  sizeCopy = size;
LABEL_13:
  uTF8String = [strCopy UTF8String];
  v11 = strtod(uTF8String, &v17);
  v12 = (v17 - uTF8String);
  v13 = 0;
  if (v12 == [strCopy length] && v11 > 0.0)
  {
    v13 = (vcvtpd_u64_f64(v11 * sizeCopy) + size - 1) / size;
  }

LABEL_16:

  return v13;
}

+ (BOOL)executeWithPath:(id)path arguments:(id)arguments error:(id *)error
{
  pathCopy = path;
  v8 = MEMORY[0x277CCACB0];
  v9 = MEMORY[0x277CBEBC0];
  argumentsCopy = arguments;
  v11 = [v9 fileURLWithPath:pathCopy];
  v12 = [v8 launchedTaskWithExecutableURL:v11 arguments:argumentsCopy error:error terminationHandler:0];

  if (v12)
  {
    [v12 waitUntilExit];
    if ([v12 terminationStatus])
    {
      v13 = MEMORY[0x277CCACA8];
      lastPathComponent = [pathCopy lastPathComponent];
      v15 = [v13 stringWithFormat:@"%@ failed with error code %d", lastPathComponent, objc_msgSend(v12, "terminationStatus")];
      v16 = [DIError failWithEnumValue:154 verboseInfo:v15 error:error];
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)copyDevicePathWithStatfs:(statfs *)statfs
{
  v9 = *MEMORY[0x277D85DE8];
  if (statfs && !_FSGetLocationFromStatfs(statfs, v8, 0x400uLL))
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"/dev/%s", v8];
    if ([v4 hasPrefix:@"/dev/disk"])
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (unsigned)getBlockSizeFromStr:(id)str error:(id *)error
{
  result = [DIHelpers numBlocksWithSizeStr:str blockSize:1];
  if (result != 512 && result != 2048 && result != 4096)
  {
    return [DIError failWithPOSIXCode:22 verboseInfo:@"Invalid value for argument 'block-size'" error:error];
  }

  return result;
}

@end