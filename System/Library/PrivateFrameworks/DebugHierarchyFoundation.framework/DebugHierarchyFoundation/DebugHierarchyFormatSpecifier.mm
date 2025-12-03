@interface DebugHierarchyFormatSpecifier
+ (id)specifierWithFormat:(id)format label:(id)label;
- (DebugHierarchyFormatSpecifier)initWithFormat:(id)format label:(id)label;
@end

@implementation DebugHierarchyFormatSpecifier

+ (id)specifierWithFormat:(id)format label:(id)label
{
  labelCopy = label;
  formatCopy = format;
  v8 = [[self alloc] initWithFormat:formatCopy label:labelCopy];

  return v8;
}

- (DebugHierarchyFormatSpecifier)initWithFormat:(id)format label:(id)label
{
  formatCopy = format;
  labelCopy = label;
  v12.receiver = self;
  v12.super_class = DebugHierarchyFormatSpecifier;
  v9 = [(DebugHierarchyFormatSpecifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_format, format);
    objc_storeStrong(&v10->_label, label);
  }

  return v10;
}

@end