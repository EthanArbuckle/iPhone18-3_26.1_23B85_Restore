@interface NSString(SHA1Base62)
- (id)je_SHA1Base62String;
@end

@implementation NSString(SHA1Base62)

- (id)je_SHA1Base62String
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [self dataUsingEncoding:4];
  v2 = v1;
  if (v1)
  {
    CC_SHA1([v1 bytes], objc_msgSend(v1, "length"), md);
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:md];
    je_base62String = [v3 je_base62String];
  }

  else
  {
    je_base62String = 0;
  }

  return je_base62String;
}

@end