@interface NSAttributedString(DataDetectorsSupport)
- (id)dd_attributedStringByAppendingAttributedString:()DataDetectorsSupport;
- (id)dd_attributedSubstringFromRange:()DataDetectorsSupport;
@end

@implementation NSAttributedString(DataDetectorsSupport)

- (id)dd_attributedStringByAppendingAttributedString:()DataDetectorsSupport
{
  v4 = [self mutableCopy];
  [v4 dd_appendAttributedString:a3];

  return v4;
}

- (id)dd_attributedSubstringFromRange:()DataDetectorsSupport
{
  v4 = [objc_msgSend(self "attributedSubstringFromRange:"mutableCopy"")];
  [v4 dd_offsetResultsBy:-a3];
  [v4 dd_chopResults];

  return v4;
}

@end