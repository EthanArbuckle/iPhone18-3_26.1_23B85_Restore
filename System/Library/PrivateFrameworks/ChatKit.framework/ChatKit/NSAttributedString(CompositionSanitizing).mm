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
  ck_defaultAllowedAttributesForComposition = [MEMORY[0x1E696AAB0] ck_defaultAllowedAttributesForComposition];
  allObjects = [ck_defaultAllowedAttributesForComposition allObjects];

  v4 = [self __ck_attributedStringByRemovingAllAttributesExcept:allObjects];

  return v4;
}

@end