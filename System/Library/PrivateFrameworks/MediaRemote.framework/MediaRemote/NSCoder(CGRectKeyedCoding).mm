@interface NSCoder(CGRectKeyedCoding)
- (double)mr_decodeCGRectForKey:()CGRectKeyedCoding;
- (void)mr_encodeCGRect:()CGRectKeyedCoding forKey:;
@end

@implementation NSCoder(CGRectKeyedCoding)

- (void)mr_encodeCGRect:()CGRectKeyedCoding forKey:
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v8 = MEMORY[0x1E696B098];
  v9 = a7;
  v10 = [v8 value:&v11 withObjCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [self encodeObject:v10 forKey:{v9, *&v11, *&v12, *&v13, *&v14}];
}

- (double)mr_decodeCGRectForKey:()CGRectKeyedCoding
{
  v4 = a3;
  v5 = [self decodeObjectOfClass:objc_opt_class() forKey:v4];

  if (v5 && !strcmp([v5 objCType], "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    v8 = 0u;
    v9 = 0u;
    [v5 getValue:&v8];
  }

  else
  {
    v6 = *(MEMORY[0x1E695F058] + 16);
    v8 = *MEMORY[0x1E695F058];
    v9 = v6;
  }

  return *&v8;
}

@end