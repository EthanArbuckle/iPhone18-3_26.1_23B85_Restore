@interface NSString(OCBStringAdditions)
+ (id)stringWithCsString:()OCBStringAdditions;
+ (id)stringWithOcText:()OCBStringAdditions;
- (__CFString)initWithOcText:()OCBStringAdditions;
- (id)dataUsingWordEncoding:()OCBStringAdditions;
- (uint64_t)initWithCsString:()OCBStringAdditions;
- (void)copyToCsString:()OCBStringAdditions;
- (void)copyToOcText:()OCBStringAdditions encoding:;
@end

@implementation NSString(OCBStringAdditions)

- (uint64_t)initWithCsString:()OCBStringAdditions
{
  if (a3 && (v4 = *(a3 + 16)) != 0)
  {
    if (*(a3 + 8))
    {
      v5 = *(a3 + 8);
    }

    else
    {
      v5 = &unk_25D6FD6DC;
    }

    if (!*&v5[2 * v4 - 2])
    {
      --v4;
    }

    v6 = CFStringCreateWithBytes(0, v5, 2 * v4, 0x100u, 0);

    return v6;
  }

  else
  {

    return [self init];
  }
}

- (__CFString)initWithOcText:()OCBStringAdditions
{
  selfCopy = self;
  if (!a3 || !*(a3 + 16))
  {
    v6 = [(__CFString *)self init];
LABEL_14:
    selfCopy = v6;
    v7 = selfCopy;
    goto LABEL_15;
  }

  v5 = *(a3 + 8);
  if (v5 == 2)
  {
    operator new();
  }

  v7 = 0;
  v8 = *(a3 + 24);
  isSingleByteEncoding = OcText::isSingleByteEncoding(v5);
  v10 = *(a3 + 16);
  v11 = OCNsEncodingForOcEncoding(*(a3 + 8));
  if (isSingleByteEncoding)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (v11)
  {
LABEL_13:
    v15 = CFStringConvertNSStringEncodingToEncoding(v11);
    v6 = CFStringCreateWithBytes(0, v8, v10 * v12, v15, 0);

    goto LABEL_14;
  }

  v14 = *(a3 + 16);
  v13 = *(a3 + 20);
  if (v13 == v14 || v13 == v14 + 1)
  {
    v12 = 1;
    v11 = 4;
    goto LABEL_13;
  }

  v12 = 2;
  v11 = 10;
  if (v13 == 2 * v14 || 2 * (v14 + 1) == v13)
  {
    goto LABEL_13;
  }

LABEL_15:

  return v7;
}

+ (id)stringWithCsString:()OCBStringAdditions
{
  v3 = [objc_alloc(objc_opt_class()) initWithCsString:a3];

  return v3;
}

+ (id)stringWithOcText:()OCBStringAdditions
{
  v3 = [objc_alloc(objc_opt_class()) initWithOcText:a3];

  return v3;
}

- (id)dataUsingWordEncoding:()OCBStringAdditions
{
  v4 = OCNsEncodingForOcEncoding(a3);
  v5 = [self dataUsingEncoding:v4];
  if (v5)
  {
LABEL_5:
    v8 = v5;
  }

  else
  {
    availableStringEncodings = [MEMORY[0x277CCACA8] availableStringEncodings];
    while (*availableStringEncodings++)
    {
      v5 = [self dataUsingEncoding:?];
      if (v5)
      {
        goto LABEL_5;
      }
    }

    v8 = 0;
  }

  if (v4 == 10)
  {
    bytes = [v8 bytes];
    v10 = [v8 length];
    if (v10)
    {
      if (*bytes == -257)
      {
        v11 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:bytes + 1 length:v10 - 2 freeWhenDone:0];

        v8 = v11;
      }
    }
  }

  return v8;
}

- (void)copyToCsString:()OCBStringAdditions
{
  v5 = objc_autoreleasePoolPush();
  v6 = [self dataUsingWordEncoding:1];
  v7 = [v6 length];
  a3->var2 = 0;
  bzero(a3->var1, 2 * a3->var3);
  if (v7)
  {
    CsString::append(a3, [v6 bytes], v7 >> 1);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)copyToOcText:()OCBStringAdditions encoding:
{
  v7 = objc_autoreleasePoolPush();
  v8 = [self dataUsingWordEncoding:a4];
  v9 = [v8 length];
  if (v9)
  {
    if (OcText::isSingleByteEncoding(a4))
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    OcText::allocBuffer(a3, v10 + v9, 1);
    OcText::copyBuffer(a3, [v8 bytes], v9);
    a3->var3 = [self length];
    a3->var1 = a4;
  }

  else
  {
    OcText::removeBuffer(a3);
  }

  objc_autoreleasePoolPop(v7);
}

@end