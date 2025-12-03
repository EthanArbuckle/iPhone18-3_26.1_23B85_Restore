@interface ICActivityStreamDigest(UI)
- (id)initWithObject:()UI;
@end

@implementation ICActivityStreamDigest(UI)

- (id)initWithObject:()UI
{
  v7 = 0;
  v3 = [self objc_initWithObject:a3 error:&v7];
  v4 = v7;
  v5 = v3;
  if (!v5)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"digest != ((void*)0)" functionName:"-[ICActivityStreamDigest(UI) initWithObject:]" simulateCrash:1 showAlert:0 format:{@"Failed to init ActivityStreamDigest: %@", v4}];
  }

  return v5;
}

@end