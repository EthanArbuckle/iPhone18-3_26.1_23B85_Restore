@interface NSCoder(ULExtensions)
- (__n128)ul_decodeVector3ForKey:()ULExtensions;
- (id)ul_decodeAndCacheNSStringForKey:()ULExtensions;
- (void)ul_encodeVector3:()ULExtensions forKey:;
@end

@implementation NSCoder(ULExtensions)

- (void)ul_encodeVector3:()ULExtensions forKey:
{
  v8 = a2;
  v5 = MEMORY[0x277CBEA90];
  v6 = a4;
  v7 = [v5 dataWithBytes:&v8 length:16];
  [self encodeObject:v7 forKey:{v6, *&v8}];
}

- (__n128)ul_decodeVector3ForKey:()ULExtensions
{
  v4 = a3;
  v5 = [self decodeObjectOfClass:objc_opt_class() forKey:v4];

  DWORD2(v8) = 0;
  *&v8 = 0;
  [v5 getBytes:&v8 length:16];
  v7 = v8;

  return v7;
}

- (id)ul_decodeAndCacheNSStringForKey:()ULExtensions
{
  v4 = a3;
  v5 = [self decodeObjectOfClass:objc_opt_class() forKey:v4];

  v6 = [MEMORY[0x277D28860] ul_cachedInstanceForNSString:v5];

  return v6;
}

@end