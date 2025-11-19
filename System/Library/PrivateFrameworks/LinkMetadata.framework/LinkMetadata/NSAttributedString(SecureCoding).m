@interface NSAttributedString(SecureCoding)
- (id)ln_attributedStringByRemovingNonSecureCodingAttributes;
@end

@implementation NSAttributedString(SecureCoding)

- (id)ln_attributedStringByRemovingNonSecureCodingAttributes
{
  v1 = [a1 mutableCopy];
  v2 = [v1 length];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __90__NSAttributedString_SecureCoding__ln_attributedStringByRemovingNonSecureCodingAttributes__block_invoke;
  v6[3] = &unk_1E72B12D0;
  v7 = v1;
  v3 = v1;
  [v3 enumerateAttributesInRange:0 options:v2 usingBlock:{0, v6}];
  v4 = [v3 copy];

  return v4;
}

@end