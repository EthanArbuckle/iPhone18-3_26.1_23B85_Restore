@interface NSString
+ (NSString)stringWithBytes:(id)a3 hibyte:(unint64_t)a4 offset:(unint64_t)a5 length:(unint64_t)a6;
+ (NSString)stringWithInts:(id)a3 offset:(int)a4 length:(int)a5;
+ (NSString)stringWithJavaLangStringBuilder:(id)a3;
+ (id)valueOf:(id)a3;
+ (id)valueOfBool:(BOOL)a3;
- (BOOL)contains:(id)a3;
- (BOOL)contentEqualsCharSequence:(id)a3;
- (BOOL)contentEqualsStringBuffer:(id)a3;
- (BOOL)hasPrefix:(id)a3 offset:(int)a4;
- (BOOL)regionMatches:(BOOL)a3 thisOffset:(int)a4 aString:(id)a5 otherOffset:(int)a6 count:(int)a7;
- (id)concat:(id)a3;
- (id)getBytes;
- (id)getBytesWithCharset:(id)a3;
- (id)getBytesWithCharsetName:(id)a3;
- (id)getBytesWithEncoding:(unint64_t)a3;
- (id)lowercaseStringWithJRELocale:(id)a3;
- (id)replace:(id)a3 withSequence:(id)a4;
- (id)replace:(unsigned __int16)a3 withChar:(unsigned __int16)a4;
- (id)replaceAll:(id)a3 withReplacement:(id)a4;
- (id)replaceFirst:(id)a3 withReplacement:(id)a4;
- (id)split:(id)a3;
- (id)subSequenceFrom:(int)a3 to:(int)a4;
- (id)trim;
- (id)uppercaseStringWithJRELocale:(id)a3;
- (int)compareToIgnoreCase:(id)a3;
- (int)compareToWithId:(id)a3;
- (int)indexOfString:(id)a3;
- (int)indexOfString:(id)a3 fromIndex:(int)a4;
- (int)lastIndexOfString:(id)a3;
- (int)lastIndexOfString:(id)a3 fromIndex:(int)a4;
- (unsigned)charAtWithInt:(int)a3;
- (void)getBytesWithSrcBegin:(int)a3 withSrcEnd:(int)a4 withDst:(id)a5 withDstBegin:(int)a6;
@end

@implementation NSString

+ (id)valueOf:(id)a3
{
  if (a3)
  {
    return [a3 description];
  }

  else
  {
    return @"null";
  }
}

+ (id)valueOfBool:(BOOL)a3
{
  if (a3)
  {
    return @"true";
  }

  else
  {
    return @"false";
  }
}

+ (NSString)stringWithJavaLangStringBuilder:(id)a3
{
  if (!a3)
  {
    v5 = objc_opt_class();
    Exception = makeException(v5);
    objc_exception_throw(Exception);
  }

  return [a3 description];
}

- (int)compareToWithId:(id)a3
{
  if (!a3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = objc_opt_class();
    Exception = makeException(v6);
    objc_exception_throw(Exception);
  }

  return [(NSString *)self compare:a3 options:2];
}

- (int)compareToIgnoreCase:(id)a3
{
  if (!a3)
  {
    v4 = objc_opt_class();
    Exception = makeException(v4);
    objc_exception_throw(Exception);
  }

  return [(NSString *)self caseInsensitiveCompare:?];
}

- (int)indexOfString:(id)a3
{
  if (!a3)
  {
    v6 = objc_opt_class();
    Exception = makeException(v6);
    objc_exception_throw(Exception);
  }

  v5 = [a3 length];
  if (v5)
  {
    LODWORD(v5) = [(NSString *)self rangeOfString:a3];
  }

  return v5;
}

- (int)indexOfString:(id)a3 fromIndex:(int)a4
{
  if (!a3)
  {
    v9 = objc_opt_class();
    Exception = makeException(v9);
    objc_exception_throw(Exception);
  }

  v7 = [a3 length];
  if (v7)
  {
    v8 = [(NSString *)self length];
    if (v8 <= a4)
    {
      LODWORD(v7) = -1;
    }

    else
    {
      LODWORD(v7) = [(NSString *)self rangeOfString:a3 options:2 range:a4 & ~(a4 >> 31), v8 - (a4 & ~(a4 >> 31))];
    }
  }

  return v7;
}

- (int)lastIndexOfString:(id)a3
{
  if (!a3)
  {
    v6 = objc_opt_class();
    Exception = makeException(v6);
    objc_exception_throw(Exception);
  }

  if ([a3 length])
  {
    return [(NSString *)self rangeOfString:a3 options:4];
  }

  else
  {
    return [(NSString *)self length];
  }
}

- (int)lastIndexOfString:(id)a3 fromIndex:(int)a4
{
  if (!a3)
  {
    v12 = objc_opt_class();
    Exception = makeException(v12);
    objc_exception_throw(Exception);
  }

  v7 = [(NSString *)self length];
  if (a4 < 0)
  {
    return -1;
  }

  v8 = v7;
  if (!v7)
  {
    return 0;
  }

  v9 = [a3 length];
  if (v9)
  {
    v10 = v9 + a4;
    if ((v9 + a4) >= v8)
    {
      v10 = v8;
    }

    return [(NSString *)self rangeOfString:a3 options:4 range:0, v10];
  }

  return a4;
}

- (unsigned)charAtWithInt:(int)a3
{
  if (a3 < 0 || [(NSString *)self length]<= a3)
  {
    v6 = objc_opt_class();
    Exception = makeException(v6);
    objc_exception_throw(Exception);
  }

  return [(NSString *)self characterAtIndex:a3];
}

- (id)subSequenceFrom:(int)a3 to:(int)a4
{
  v7 = [(NSString *)self length];
  if (a3 < 0 || (v8 = a4 - a3, a4 < a3) || v7 < a4)
  {
    v13 = objc_opt_class();
    Exception = makeException(v13);
    objc_exception_throw(Exception);
  }

  v9 = v8;
  v10 = malloc_type_calloc(v8, 2uLL, 0x1000040BDFB0063uLL);
  [(NSString *)self getCharacters:v10 range:a3, v9];
  v11 = [NSString stringWithCharacters:v10 length:v9];
  free(v10);
  return v11;
}

- (id)replace:(unsigned __int16)a3 withChar:(unsigned __int16)a4
{
  v6 = a3;
  v5 = a4;
  return [(NSString *)self replace:[NSString withSequence:"stringWithCharacters:length:" stringWithCharacters:1 length:?], [NSString stringWithCharacters:&v5 length:1]];
}

- (id)replace:(id)a3 withSequence:(id)a4
{
  v6 = [a3 description];
  v7 = [a4 description];

  return [(NSString *)self stringByReplacingOccurrencesOfString:v6 withString:v7];
}

- (id)replaceAll:(id)a3 withReplacement:(id)a4
{
  v7 = [(NSString *)self length];

  return [(NSString *)self stringByReplacingOccurrencesOfString:a3 withString:a4 options:1024 range:0, v7];
}

- (id)replaceFirst:(id)a3 withReplacement:(id)a4
{
  v7 = [(NSString *)self rangeOfString:a3 options:1024];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return self;
  }

  return [(NSString *)self stringByReplacingOccurrencesOfString:a3 withString:a4 options:1024 range:v7, v8];
}

+ (NSString)stringWithBytes:(id)a3 hibyte:(unint64_t)a4 offset:(unint64_t)a5 length:(unint64_t)a6
{
  v8 = a4;
  v10 = malloc_type_calloc(a6, 2uLL, 0x1000040BDFB0063uLL);
  v11 = v10;
  if (a6)
  {
    v12 = a3 + a5 + 12;
    v13 = v10;
    v14 = a6;
    do
    {
      v15 = *v12++;
      *v13++ = (v8 << 8) | v15;
      --v14;
    }

    while (v14);
  }

  v16 = [NSString stringWithCharacters:v10 length:a6];
  free(v11);
  return v16;
}

+ (NSString)stringWithInts:(id)a3 offset:(int)a4 length:(int)a5
{
  v8 = *(a3 + 2);
  v9 = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
  [a3 getInts:v9 length:v8];
  v10 = malloc_type_malloc(a5, 0x1000040BDFB0063uLL);
  v11 = v10;
  if (a5 >= 1)
  {
    v12 = a5;
    v13 = v10;
    do
    {
      *v13++ = v9[a4++];
      --v12;
    }

    while (v12);
  }

  v14 = [NSString stringWithCharacters:v10 length:a5];
  free(v11);
  free(v9);
  return v14;
}

- (id)getBytes
{
  v3 = [JavaNioCharsetCharset_defaultCharset() nsEncoding];

  return [(NSString *)self getBytesWithEncoding:v3];
}

- (id)getBytesWithCharsetName:(id)a3
{
  if (!a3)
  {
    v5 = objc_opt_class();
    Exception = makeException(v5);
    objc_exception_throw(Exception);
  }

  v4 = [JavaNioCharsetCharset_forNameUEEWithNSString_(a3) nsEncoding];

  return [(NSString *)self getBytesWithEncoding:v4];
}

- (id)getBytesWithCharset:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw(-[JavaNioCharsetUnsupportedCharsetException initWithNSString:]([JavaNioCharsetUnsupportedCharsetException alloc], "initWithNSString:", [a3 description]));
  }

  v5 = [a3 nsEncoding];

  return [(NSString *)self getBytesWithEncoding:v5];
}

- (id)getBytesWithEncoding:(unint64_t)a3
{
  if (!a3)
  {
    v14 = objc_opt_class();
    Exception = makeException(v14);
    objc_exception_throw(Exception);
  }

  v5 = [(NSString *)self maximumLengthOfBytesUsingEncoding:?];
  v6 = v5 << 32;
  v7 = (v5 << 32) + 0x200000000;
  if (a3 != 10)
  {
    v7 = v5 << 32;
  }

  v8 = v7 >> 32;
  v9 = malloc_type_malloc(v7 >> 32, 0x100004077774924uLL);
  v10 = v9;
  if (a3 == 10)
  {
    *v9 = -2;
    v16 = 0;
    [(NSString *)self getBytes:v9 + 1 maxLength:v6 >> 32 usedLength:&v16 encoding:2415919360 options:0 range:0 remainingRange:[(NSString *)self length], 0];
    v11 = v16 + 2;
    v16 += 2;
  }

  else
  {
    v16 = 0;
    [(NSString *)self getBytes:v9 maxLength:v8 usedLength:&v16 encoding:a3 options:0 range:0 remainingRange:[(NSString *)self length], 0];
    v11 = v16;
  }

  v12 = [IOSByteArray arrayWithBytes:v10 count:v11];
  free(v10);
  return v12;
}

- (void)getBytesWithSrcBegin:(int)a3 withSrcEnd:(int)a4 withDst:(id)a5 withDstBegin:(int)a6
{
  if (a3 < 0)
  {
    v14 = @"srcBegin < 0";
LABEL_12:
    v15 = [JavaLangStringIndexOutOfBoundsException alloc];
    v16 = v14;
    goto LABEL_13;
  }

  if (a4 < a3)
  {
    v14 = @"srcBegin > srcEnd";
    goto LABEL_12;
  }

  if ([(NSString *)self length]< a4)
  {
    v14 = @"srcEnd > string length";
    goto LABEL_12;
  }

  v11 = a4 - a3;
  if (a4 - a3 > [(NSString *)self length])
  {
    v14 = @"dstBegin+(srcEnd-srcBegin) > dst.length";
    goto LABEL_12;
  }

  if (!a5)
  {
    v17 = objc_opt_class();
    Exception = makeException(v17);
    objc_exception_throw(Exception);
  }

  v12 = [(NSString *)self maximumLengthOfBytesUsingEncoding:4];
  v13 = malloc_type_malloc(v12, 0x100004077774924uLL);
  v19 = 0;
  [(NSString *)self getBytes:v13 maxLength:v12 usedLength:&v19 encoding:4 options:0 range:a3 remainingRange:v11, 0];
  if (*(a5 + 2) - a6 < v19)
  {
    free(v13);
    v15 = [JavaLangStringIndexOutOfBoundsException alloc];
    v16 = @"dstBegin+(srcEnd-srcBegin) > dst.length";
LABEL_13:
    objc_exception_throw([(JavaLangStringIndexOutOfBoundsException *)v15 initWithNSString:v16]);
  }

  [a5 replaceBytes:v13 length:? offset:?];
  free(v13);
}

- (BOOL)hasPrefix:(id)a3 offset:(int)a4
{
  if (!a3)
  {
    v5 = objc_opt_class();
    Exception = makeException(v5);
    objc_exception_throw(Exception);
  }

  return -[NSString compare:options:range:](self, "compare:options:range:", a3, 2, a4, [a3 length]) == NSOrderedSame;
}

- (id)trim
{
  v3 = [NSCharacterSet characterSetWithRange:0, 33];

  return [(NSString *)self stringByTrimmingCharactersInSet:v3];
}

- (id)split:(id)a3
{
  if (!a3)
  {
    v4 = objc_opt_class();
    Exception = makeException(v4);
    objc_exception_throw(Exception);
  }

  return [NSString split:"split:limit:" limit:?];
}

- (id)lowercaseStringWithJRELocale:(id)a3
{
  if (!a3)
  {
    v10 = objc_opt_class();
    Exception = makeException(v10);
    objc_exception_throw(Exception);
  }

  v4 = [[NSLocale alloc] initWithLocaleIdentifier:{objc_msgSend(a3, "description")}];
  v5 = v4;
  MutableCopy = CFStringCreateMutableCopy(0, 0, self);
  CFStringLowercase(MutableCopy, v4);
  v7 = [(__CFString *)MutableCopy copy];
  CFRelease(MutableCopy);
  v8 = v7;
  return v7;
}

- (id)uppercaseStringWithJRELocale:(id)a3
{
  if (!a3)
  {
    v10 = objc_opt_class();
    Exception = makeException(v10);
    objc_exception_throw(Exception);
  }

  v4 = [[NSLocale alloc] initWithLocaleIdentifier:{objc_msgSend(a3, "description")}];
  v5 = v4;
  MutableCopy = CFStringCreateMutableCopy(0, 0, self);
  CFStringUppercase(MutableCopy, v4);
  v7 = [(__CFString *)MutableCopy copy];
  CFRelease(MutableCopy);
  v8 = v7;
  return v7;
}

- (BOOL)regionMatches:(BOOL)a3 thisOffset:(int)a4 aString:(id)a5 otherOffset:(int)a6 count:(int)a7
{
  if (a4 < 0)
  {
    return 0;
  }

  v11 = a3;
  v12 = self;
  v13 = [(NSString *)self length];
  result = 0;
  if ((a6 & 0x80000000) == 0 && (v13 - a4) >= a7)
  {
    if (([a5 length] - a6) < a7)
    {
      return 0;
    }

    if (!a5)
    {
      v16 = objc_opt_class();
      Exception = makeException(v16);
      objc_exception_throw(Exception);
    }

    if (a4 || [(NSString *)v12 length]!= a7)
    {
      v12 = [(NSString *)v12 substringWithRange:a4, a7];
    }

    if (a6 || [a5 length] != a7)
    {
      a5 = [a5 substringWithRange:{a6, a7}];
    }

    if (v11)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    return [(NSString *)v12 compare:a5 options:v15]== NSOrderedSame;
  }

  return result;
}

- (id)concat:(id)a3
{
  if (!a3)
  {
    v5 = objc_opt_class();
    Exception = makeException(v5);
    objc_exception_throw(Exception);
  }

  return [(NSString *)self stringByAppendingString:?];
}

- (BOOL)contains:(id)a3
{
  if (!a3)
  {
    v6 = objc_opt_class();
    Exception = makeException(v6);
    objc_exception_throw(Exception);
  }

  return ![a3 length] || -[NSString rangeOfString:](self, "rangeOfString:", objc_msgSend(a3, "description")) != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)contentEqualsCharSequence:(id)a3
{
  v4 = [a3 description];

  return [(NSString *)self isEqualToString:v4];
}

- (BOOL)contentEqualsStringBuffer:(id)a3
{
  v4 = [a3 description];

  return [(NSString *)self isEqualToString:v4];
}

@end