@interface NSData(PKDataAdditions)
+ (id)dataWithCGImage:()PKDataAdditions;
+ (id)dataWithHexEncodedString:()PKDataAdditions;
- (BOOL)hasPDFMIMEType;
- (id)SHA1Hash;
- (id)SHA256Hash;
- (id)URLBase64EncodedString;
- (id)fileSafeBase64Encoding;
- (id)hexEncoding;
@end

@implementation NSData(PKDataAdditions)

- (id)SHA256Hash
{
  v4 = *MEMORY[0x1E69E9840];
  CC_SHA256([a1 bytes], objc_msgSend(a1, "length"), md);
  v1 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:md length:32];

  return v1;
}

- (id)SHA1Hash
{
  v4 = *MEMORY[0x1E69E9840];
  CC_SHA1([a1 bytes], objc_msgSend(a1, "length"), md);
  v1 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:md length:20];

  return v1;
}

- (id)fileSafeBase64Encoding
{
  v1 = [a1 base64EncodedStringWithOptions:0];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"/" withString:@"-"];

  return v2;
}

- (id)hexEncoding
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v3 = [a1 length];
  v4 = [a1 bytes];
  if (v3)
  {
    v5 = v4;
    do
    {
      v6 = *v5++;
      [v2 appendFormat:@"%02x", v6];
      --v3;
    }

    while (v3);
  }

  return v2;
}

+ (id)dataWithHexEncodedString:()PKDataAdditions
{
  v3 = a3;
  __str[2] = 0;
  v4 = malloc_type_malloc([v3 length] >> 1, 0xA0B76947uLL);
  if ([v3 length])
  {
    v5 = 0;
    v6 = v4;
    do
    {
      __str[0] = [v3 characterAtIndex:v5];
      __str[1] = [v3 characterAtIndex:v5 + 1];
      v9 = 0;
      *v6++ = strtol(__str, &v9, 16);
      v5 += 2;
    }

    while (v5 < [v3 length]);
  }

  v7 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v4 length:objc_msgSend(v3 freeWhenDone:{"length") >> 1, 1}];

  return v7;
}

+ (id)dataWithCGImage:()PKDataAdditions
{
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v5 = CGImageDestinationCreateWithData(Mutable, [*MEMORY[0x1E6982F28] identifier], 1uLL, 0);
  CGImageDestinationAddImage(v5, a3, 0);
  v6 = 0;
  if (CGImageDestinationFinalize(v5))
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithData:Mutable];
  }

  CFRelease(Mutable);
  CFRelease(v5);

  return v6;
}

- (BOOL)hasPDFMIMEType
{
  v2 = 0;
  [a1 getBytes:&v2 length:1];
  return v2 == 37;
}

- (id)URLBase64EncodedString
{
  v1 = [a1 base64EncodedStringWithOptions:0];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  v3 = [v2 stringByReplacingOccurrencesOfString:@"+" withString:@"-"];

  return v3;
}

@end