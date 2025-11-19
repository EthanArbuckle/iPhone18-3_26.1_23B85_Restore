@interface NSString(ICAttributedString)
- (id)ic_attributedStringByAppendingAttributedString:()ICAttributedString;
@end

@implementation NSString(ICAttributedString)

- (id)ic_attributedStringByAppendingAttributedString:()ICAttributedString
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:a1];
  v6 = [v5 ic_attributedStringByAppendingAttributedString:v4];

  return v6;
}

@end