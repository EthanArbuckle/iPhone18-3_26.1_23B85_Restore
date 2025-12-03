@interface NSExtensionItem(WFNaming)
- (id)wfName;
@end

@implementation NSExtensionItem(WFNaming)

- (id)wfName
{
  attributedTitle = [self attributedTitle];
  string = [attributedTitle string];

  return string;
}

@end