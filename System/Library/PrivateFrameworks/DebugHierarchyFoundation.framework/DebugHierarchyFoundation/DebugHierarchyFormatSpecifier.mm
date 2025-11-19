@interface DebugHierarchyFormatSpecifier
+ (id)specifierWithFormat:(id)a3 label:(id)a4;
- (DebugHierarchyFormatSpecifier)initWithFormat:(id)a3 label:(id)a4;
@end

@implementation DebugHierarchyFormatSpecifier

+ (id)specifierWithFormat:(id)a3 label:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithFormat:v7 label:v6];

  return v8;
}

- (DebugHierarchyFormatSpecifier)initWithFormat:(id)a3 label:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DebugHierarchyFormatSpecifier;
  v9 = [(DebugHierarchyFormatSpecifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_format, a3);
    objc_storeStrong(&v10->_label, a4);
  }

  return v10;
}

@end