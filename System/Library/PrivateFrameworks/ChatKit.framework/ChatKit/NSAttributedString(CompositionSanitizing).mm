@interface NSAttributedString(CompositionSanitizing)
+ (id)ck_defaultAllowedAttributesForComposition;
- (id)ck_attributedStringByRemovingUnsupportedCompositionAttributes;
@end

@implementation NSAttributedString(CompositionSanitizing)

+ (id)ck_defaultAllowedAttributesForComposition
{
  if (ck_defaultAllowedAttributesForComposition_onceToken != -1)
  {
    +[NSAttributedString(CompositionSanitizing) ck_defaultAllowedAttributesForComposition];
  }

  v1 = ck_defaultAllowedAttributesForComposition_sAttributes;

  return v1;
}

- (id)ck_attributedStringByRemovingUnsupportedCompositionAttributes
{
  v2 = [MEMORY[0x1E696AAB0] ck_defaultAllowedAttributesForComposition];
  v3 = [v2 allObjects];

  v4 = [a1 __ck_attributedStringByRemovingAllAttributesExcept:v3];

  return v4;
}

@end