@interface NSString(SMSPhoneNumberNormalization)
- (id)unformattedPhoneNumber;
@end

@implementation NSString(SMSPhoneNumberNormalization)

- (id)unformattedPhoneNumber
{
  v2 = [a1 length];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:v2];
  if (v2)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E9830];
    do
    {
      v6 = [a1 characterAtIndex:v4];
      v7 = v6;
      if (v6 > 0x7F)
      {
        v8 = __maskrune(v6, 0x500uLL);
      }

      else
      {
        v8 = *(v5 + 4 * v6 + 60) & 0x500;
      }

      if ((v7 & 0xFFFE) == 0x2A || v8)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", v7];
        [v3 appendString:v9];
      }

      ++v4;
    }

    while (v2 != v4);
  }

  return v3;
}

@end