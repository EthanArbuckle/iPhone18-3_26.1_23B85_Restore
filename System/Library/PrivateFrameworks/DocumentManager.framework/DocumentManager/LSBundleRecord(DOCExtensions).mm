@interface LSBundleRecord(DOCExtensions)
+ (id)doc_applicationExtensionRecordAtURL:()DOCExtensions;
- (id)containingApplicationRecord;
@end

@implementation LSBundleRecord(DOCExtensions)

- (id)containingApplicationRecord
{
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    containingBundleRecord = [selfCopy containingBundleRecord];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = containingBundleRecord;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)doc_applicationExtensionRecordAtURL:()DOCExtensions
{
  v3 = MEMORY[0x1E69635D0];
  v4 = a3;
  v5 = [[v3 alloc] initWithURL:v4 error:0];

  return v5;
}

@end