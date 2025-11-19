@interface NSCoder(IntentsFoundation)
- (id)if_decodeBytesNoCopyForKey:()IntentsFoundation;
- (void)if_encodeBytesNoCopy:()IntentsFoundation forKey:;
@end

@implementation NSCoder(IntentsFoundation)

- (void)if_encodeBytesNoCopy:()IntentsFoundation forKey:
{
  if (a3)
  {
    v7 = a3;
    v11 = a4;
    v8 = a3;
    v9 = [v8 bytes];
    v10 = [v8 length];

    [a1 encodeBytes:v9 length:v10 forKey:v11];
  }
}

- (id)if_decodeBytesNoCopyForKey:()IntentsFoundation
{
  v7 = 0;
  v3 = [a1 decodeBytesForKey:a3 returnedLength:&v7];
  if (v3)
  {
    v4 = v3;
    v5 = objc_alloc(MEMORY[0x277CBEA90]);
    v3 = [v5 initWithBytesNoCopy:v4 length:v7 freeWhenDone:0];
  }

  return v3;
}

@end