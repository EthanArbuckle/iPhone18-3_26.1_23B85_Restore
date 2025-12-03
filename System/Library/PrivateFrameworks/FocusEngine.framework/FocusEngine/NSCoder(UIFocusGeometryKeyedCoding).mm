@interface NSCoder(UIFocusGeometryKeyedCoding)
- (double)decodeCGRectForKey:()UIFocusGeometryKeyedCoding;
- (void)encodeCGRect:()UIFocusGeometryKeyedCoding forKey:;
@end

@implementation NSCoder(UIFocusGeometryKeyedCoding)

- (void)encodeCGRect:()UIFocusGeometryKeyedCoding forKey:
{
  v12 = a7;
  v13 = _UIFocusStringFromCGRect(a2, a3, a4, a5);
  [self encodeObject:v13 forKey:v12];
}

- (double)decodeCGRectForKey:()UIFocusGeometryKeyedCoding
{
  v4 = a3;
  v5 = [self decodeObjectOfClass:objc_opt_class() forKey:v4];

  if (v5)
  {
    v6 = v5;
    DoubleValue = *MEMORY[0x277CBF3A0];
    if ([v6 length] >= 0xD)
    {
      v15 = 0;
      v16 = 0;
      if (SplitBracesAndComma(v6, &v16, &v15))
      {
        v8 = v16;
        DoubleValue = *MEMORY[0x277CBF348];
        if ([(__CFString *)v8 length]>= 5)
        {
          v17 = 0;
          str = 0;
          if (SplitBracesAndComma(v8, &str, &v17))
          {
            v9 = str;
            DoubleValue = CFStringGetDoubleValue(str);
            v10 = v17;
            CFStringGetDoubleValue(v17);
            CFRelease(v9);
            CFRelease(v10);
          }
        }

        v11 = v15;
        if ([(__CFString *)v11 length]>= 5)
        {
          v17 = 0;
          str = 0;
          if (SplitBracesAndComma(v11, &str, &v17))
          {
            v12 = str;
            CFStringGetDoubleValue(str);
            v13 = v17;
            CFStringGetDoubleValue(v17);
            CFRelease(v12);
            CFRelease(v13);
          }
        }

        CFRelease(v8);
        CFRelease(v11);
      }
    }
  }

  else
  {
    DoubleValue = *MEMORY[0x277CBF3A0];
  }

  return DoubleValue;
}

@end