@interface NSString
+ (NSString)stringWithBytes:(id)bytes hibyte:(unint64_t)hibyte offset:(unint64_t)offset length:(unint64_t)length;
+ (NSString)stringWithInts:(id)ints offset:(int)offset length:(int)length;
+ (NSString)stringWithJavaLangStringBuilder:(id)builder;
+ (id)valueOf:(id)of;
+ (id)valueOfBool:(BOOL)bool;
- (BOOL)contains:(id)contains;
- (BOOL)contentEqualsCharSequence:(id)sequence;
- (BOOL)contentEqualsStringBuffer:(id)buffer;
- (BOOL)hasPrefix:(id)prefix offset:(int)offset;
- (BOOL)regionMatches:(BOOL)matches thisOffset:(int)offset aString:(id)string otherOffset:(int)otherOffset count:(int)count;
- (id)concat:(id)concat;
- (id)getBytes;
- (id)getBytesWithCharset:(id)charset;
- (id)getBytesWithCharsetName:(id)name;
- (id)getBytesWithEncoding:(unint64_t)encoding;
- (id)lowercaseStringWithJRELocale:(id)locale;
- (id)replace:(id)replace withSequence:(id)sequence;
- (id)replace:(unsigned __int16)replace withChar:(unsigned __int16)char;
- (id)replaceAll:(id)all withReplacement:(id)replacement;
- (id)replaceFirst:(id)first withReplacement:(id)replacement;
- (id)split:(id)split;
- (id)subSequenceFrom:(int)from to:(int)to;
- (id)trim;
- (id)uppercaseStringWithJRELocale:(id)locale;
- (int)compareToIgnoreCase:(id)case;
- (int)compareToWithId:(id)id;
- (int)indexOfString:(id)string;
- (int)indexOfString:(id)string fromIndex:(int)index;
- (int)lastIndexOfString:(id)string;
- (int)lastIndexOfString:(id)string fromIndex:(int)index;
- (unsigned)charAtWithInt:(int)int;
- (void)getBytesWithSrcBegin:(int)begin withSrcEnd:(int)end withDst:(id)dst withDstBegin:(int)dstBegin;
@end

@implementation NSString

+ (id)valueOf:(id)of
{
  if (of)
  {
    return [of description];
  }

  else
  {
    return @"null";
  }
}

+ (id)valueOfBool:(BOOL)bool
{
  if (bool)
  {
    return @"true";
  }

  else
  {
    return @"false";
  }
}

+ (NSString)stringWithJavaLangStringBuilder:(id)builder
{
  if (!builder)
  {
    v5 = objc_opt_class();
    Exception = makeException(v5);
    objc_exception_throw(Exception);
  }

  return [builder description];
}

- (int)compareToWithId:(id)id
{
  if (!id || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = objc_opt_class();
    Exception = makeException(v6);
    objc_exception_throw(Exception);
  }

  return [(NSString *)self compare:id options:2];
}

- (int)compareToIgnoreCase:(id)case
{
  if (!case)
  {
    v4 = objc_opt_class();
    Exception = makeException(v4);
    objc_exception_throw(Exception);
  }

  return [(NSString *)self caseInsensitiveCompare:?];
}

- (int)indexOfString:(id)string
{
  if (!string)
  {
    v6 = objc_opt_class();
    Exception = makeException(v6);
    objc_exception_throw(Exception);
  }

  v5 = [string length];
  if (v5)
  {
    LODWORD(v5) = [(NSString *)self rangeOfString:string];
  }

  return v5;
}

- (int)indexOfString:(id)string fromIndex:(int)index
{
  if (!string)
  {
    v9 = objc_opt_class();
    Exception = makeException(v9);
    objc_exception_throw(Exception);
  }

  v7 = [string length];
  if (v7)
  {
    v8 = [(NSString *)self length];
    if (v8 <= index)
    {
      LODWORD(v7) = -1;
    }

    else
    {
      LODWORD(v7) = [(NSString *)self rangeOfString:string options:2 range:index & ~(index >> 31), v8 - (index & ~(index >> 31))];
    }
  }

  return v7;
}

- (int)lastIndexOfString:(id)string
{
  if (!string)
  {
    v6 = objc_opt_class();
    Exception = makeException(v6);
    objc_exception_throw(Exception);
  }

  if ([string length])
  {
    return [(NSString *)self rangeOfString:string options:4];
  }

  else
  {
    return [(NSString *)self length];
  }
}

- (int)lastIndexOfString:(id)string fromIndex:(int)index
{
  if (!string)
  {
    v12 = objc_opt_class();
    Exception = makeException(v12);
    objc_exception_throw(Exception);
  }

  v7 = [(NSString *)self length];
  if (index < 0)
  {
    return -1;
  }

  v8 = v7;
  if (!v7)
  {
    return 0;
  }

  v9 = [string length];
  if (v9)
  {
    v10 = v9 + index;
    if ((v9 + index) >= v8)
    {
      v10 = v8;
    }

    return [(NSString *)self rangeOfString:string options:4 range:0, v10];
  }

  return index;
}

- (unsigned)charAtWithInt:(int)int
{
  if (int < 0 || [(NSString *)self length]<= int)
  {
    v6 = objc_opt_class();
    Exception = makeException(v6);
    objc_exception_throw(Exception);
  }

  return [(NSString *)self characterAtIndex:int];
}

- (id)subSequenceFrom:(int)from to:(int)to
{
  v7 = [(NSString *)self length];
  if (from < 0 || (v8 = to - from, to < from) || v7 < to)
  {
    v13 = objc_opt_class();
    Exception = makeException(v13);
    objc_exception_throw(Exception);
  }

  v9 = v8;
  v10 = malloc_type_calloc(v8, 2uLL, 0x1000040BDFB0063uLL);
  [(NSString *)self getCharacters:v10 range:from, v9];
  v11 = [NSString stringWithCharacters:v10 length:v9];
  free(v10);
  return v11;
}

- (id)replace:(unsigned __int16)replace withChar:(unsigned __int16)char
{
  replaceCopy = replace;
  charCopy = char;
  return [(NSString *)self replace:[NSString withSequence:"stringWithCharacters:length:" stringWithCharacters:1 length:?], [NSString stringWithCharacters:&charCopy length:1]];
}

- (id)replace:(id)replace withSequence:(id)sequence
{
  v6 = [replace description];
  v7 = [sequence description];

  return [(NSString *)self stringByReplacingOccurrencesOfString:v6 withString:v7];
}

- (id)replaceAll:(id)all withReplacement:(id)replacement
{
  v7 = [(NSString *)self length];

  return [(NSString *)self stringByReplacingOccurrencesOfString:all withString:replacement options:1024 range:0, v7];
}

- (id)replaceFirst:(id)first withReplacement:(id)replacement
{
  v7 = [(NSString *)self rangeOfString:first options:1024];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return self;
  }

  return [(NSString *)self stringByReplacingOccurrencesOfString:first withString:replacement options:1024 range:v7, v8];
}

+ (NSString)stringWithBytes:(id)bytes hibyte:(unint64_t)hibyte offset:(unint64_t)offset length:(unint64_t)length
{
  hibyteCopy = hibyte;
  v10 = malloc_type_calloc(length, 2uLL, 0x1000040BDFB0063uLL);
  v11 = v10;
  if (length)
  {
    v12 = bytes + offset + 12;
    v13 = v10;
    lengthCopy = length;
    do
    {
      v15 = *v12++;
      *v13++ = (hibyteCopy << 8) | v15;
      --lengthCopy;
    }

    while (lengthCopy);
  }

  v16 = [NSString stringWithCharacters:v10 length:length];
  free(v11);
  return v16;
}

+ (NSString)stringWithInts:(id)ints offset:(int)offset length:(int)length
{
  v8 = *(ints + 2);
  v9 = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
  [ints getInts:v9 length:v8];
  v10 = malloc_type_malloc(length, 0x1000040BDFB0063uLL);
  v11 = v10;
  if (length >= 1)
  {
    lengthCopy = length;
    v13 = v10;
    do
    {
      *v13++ = v9[offset++];
      --lengthCopy;
    }

    while (lengthCopy);
  }

  v14 = [NSString stringWithCharacters:v10 length:length];
  free(v11);
  free(v9);
  return v14;
}

- (id)getBytes
{
  nsEncoding = [JavaNioCharsetCharset_defaultCharset() nsEncoding];

  return [(NSString *)self getBytesWithEncoding:nsEncoding];
}

- (id)getBytesWithCharsetName:(id)name
{
  if (!name)
  {
    v5 = objc_opt_class();
    Exception = makeException(v5);
    objc_exception_throw(Exception);
  }

  nsEncoding = [JavaNioCharsetCharset_forNameUEEWithNSString_(name) nsEncoding];

  return [(NSString *)self getBytesWithEncoding:nsEncoding];
}

- (id)getBytesWithCharset:(id)charset
{
  if (!charset)
  {
    JreThrowNullPointerException();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw(-[JavaNioCharsetUnsupportedCharsetException initWithNSString:]([JavaNioCharsetUnsupportedCharsetException alloc], "initWithNSString:", [charset description]));
  }

  nsEncoding = [charset nsEncoding];

  return [(NSString *)self getBytesWithEncoding:nsEncoding];
}

- (id)getBytesWithEncoding:(unint64_t)encoding
{
  if (!encoding)
  {
    v14 = objc_opt_class();
    Exception = makeException(v14);
    objc_exception_throw(Exception);
  }

  v5 = [(NSString *)self maximumLengthOfBytesUsingEncoding:?];
  v6 = v5 << 32;
  v7 = (v5 << 32) + 0x200000000;
  if (encoding != 10)
  {
    v7 = v5 << 32;
  }

  v8 = v7 >> 32;
  v9 = malloc_type_malloc(v7 >> 32, 0x100004077774924uLL);
  v10 = v9;
  if (encoding == 10)
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
    [(NSString *)self getBytes:v9 maxLength:v8 usedLength:&v16 encoding:encoding options:0 range:0 remainingRange:[(NSString *)self length], 0];
    v11 = v16;
  }

  v12 = [IOSByteArray arrayWithBytes:v10 count:v11];
  free(v10);
  return v12;
}

- (void)getBytesWithSrcBegin:(int)begin withSrcEnd:(int)end withDst:(id)dst withDstBegin:(int)dstBegin
{
  if (begin < 0)
  {
    v14 = @"srcBegin < 0";
LABEL_12:
    v15 = [JavaLangStringIndexOutOfBoundsException alloc];
    v16 = v14;
    goto LABEL_13;
  }

  if (end < begin)
  {
    v14 = @"srcBegin > srcEnd";
    goto LABEL_12;
  }

  if ([(NSString *)self length]< end)
  {
    v14 = @"srcEnd > string length";
    goto LABEL_12;
  }

  v11 = end - begin;
  if (end - begin > [(NSString *)self length])
  {
    v14 = @"dstBegin+(srcEnd-srcBegin) > dst.length";
    goto LABEL_12;
  }

  if (!dst)
  {
    v17 = objc_opt_class();
    Exception = makeException(v17);
    objc_exception_throw(Exception);
  }

  v12 = [(NSString *)self maximumLengthOfBytesUsingEncoding:4];
  v13 = malloc_type_malloc(v12, 0x100004077774924uLL);
  v19 = 0;
  [(NSString *)self getBytes:v13 maxLength:v12 usedLength:&v19 encoding:4 options:0 range:begin remainingRange:v11, 0];
  if (*(dst + 2) - dstBegin < v19)
  {
    free(v13);
    v15 = [JavaLangStringIndexOutOfBoundsException alloc];
    v16 = @"dstBegin+(srcEnd-srcBegin) > dst.length";
LABEL_13:
    objc_exception_throw([(JavaLangStringIndexOutOfBoundsException *)v15 initWithNSString:v16]);
  }

  [dst replaceBytes:v13 length:? offset:?];
  free(v13);
}

- (BOOL)hasPrefix:(id)prefix offset:(int)offset
{
  if (!prefix)
  {
    v5 = objc_opt_class();
    Exception = makeException(v5);
    objc_exception_throw(Exception);
  }

  return -[NSString compare:options:range:](self, "compare:options:range:", prefix, 2, offset, [prefix length]) == NSOrderedSame;
}

- (id)trim
{
  v3 = [NSCharacterSet characterSetWithRange:0, 33];

  return [(NSString *)self stringByTrimmingCharactersInSet:v3];
}

- (id)split:(id)split
{
  if (!split)
  {
    v4 = objc_opt_class();
    Exception = makeException(v4);
    objc_exception_throw(Exception);
  }

  return [NSString split:"split:limit:" limit:?];
}

- (id)lowercaseStringWithJRELocale:(id)locale
{
  if (!locale)
  {
    v10 = objc_opt_class();
    Exception = makeException(v10);
    objc_exception_throw(Exception);
  }

  v4 = [[NSLocale alloc] initWithLocaleIdentifier:{objc_msgSend(locale, "description")}];
  v5 = v4;
  MutableCopy = CFStringCreateMutableCopy(0, 0, self);
  CFStringLowercase(MutableCopy, v4);
  v7 = [(__CFString *)MutableCopy copy];
  CFRelease(MutableCopy);
  v8 = v7;
  return v7;
}

- (id)uppercaseStringWithJRELocale:(id)locale
{
  if (!locale)
  {
    v10 = objc_opt_class();
    Exception = makeException(v10);
    objc_exception_throw(Exception);
  }

  v4 = [[NSLocale alloc] initWithLocaleIdentifier:{objc_msgSend(locale, "description")}];
  v5 = v4;
  MutableCopy = CFStringCreateMutableCopy(0, 0, self);
  CFStringUppercase(MutableCopy, v4);
  v7 = [(__CFString *)MutableCopy copy];
  CFRelease(MutableCopy);
  v8 = v7;
  return v7;
}

- (BOOL)regionMatches:(BOOL)matches thisOffset:(int)offset aString:(id)string otherOffset:(int)otherOffset count:(int)count
{
  if (offset < 0)
  {
    return 0;
  }

  matchesCopy = matches;
  selfCopy = self;
  v13 = [(NSString *)self length];
  result = 0;
  if ((otherOffset & 0x80000000) == 0 && (v13 - offset) >= count)
  {
    if (([string length] - otherOffset) < count)
    {
      return 0;
    }

    if (!string)
    {
      v16 = objc_opt_class();
      Exception = makeException(v16);
      objc_exception_throw(Exception);
    }

    if (offset || [(NSString *)selfCopy length]!= count)
    {
      selfCopy = [(NSString *)selfCopy substringWithRange:offset, count];
    }

    if (otherOffset || [string length] != count)
    {
      string = [string substringWithRange:{otherOffset, count}];
    }

    if (matchesCopy)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    return [(NSString *)selfCopy compare:string options:v15]== NSOrderedSame;
  }

  return result;
}

- (id)concat:(id)concat
{
  if (!concat)
  {
    v5 = objc_opt_class();
    Exception = makeException(v5);
    objc_exception_throw(Exception);
  }

  return [(NSString *)self stringByAppendingString:?];
}

- (BOOL)contains:(id)contains
{
  if (!contains)
  {
    v6 = objc_opt_class();
    Exception = makeException(v6);
    objc_exception_throw(Exception);
  }

  return ![contains length] || -[NSString rangeOfString:](self, "rangeOfString:", objc_msgSend(contains, "description")) != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)contentEqualsCharSequence:(id)sequence
{
  v4 = [sequence description];

  return [(NSString *)self isEqualToString:v4];
}

- (BOOL)contentEqualsStringBuffer:(id)buffer
{
  v4 = [buffer description];

  return [(NSString *)self isEqualToString:v4];
}

@end