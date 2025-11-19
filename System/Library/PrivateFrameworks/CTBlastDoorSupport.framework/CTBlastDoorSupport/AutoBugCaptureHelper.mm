@interface AutoBugCaptureHelper
- (AutoBugCaptureHelper)init;
- (void)reportWithDomain:(id)a3 type:(id)a4 subtype:(id)a5 subtypeContext:(id)a6;
@end

@implementation AutoBugCaptureHelper

- (void)reportWithDomain:(id)a3 type:(id)a4 subtype:(id)a5 subtypeContext:(id)a6
{
  sub_2426ABA10();
  sub_2426ABA10();
  sub_2426ABA10();
  sub_2426ABA10();
  v7 = self;
  sub_242666FE4();
}

- (AutoBugCaptureHelper)init
{
  v3.receiver = self;
  v3.super_class = AutoBugCaptureHelper;
  return [(AutoBugCaptureHelper *)&v3 init];
}

@end