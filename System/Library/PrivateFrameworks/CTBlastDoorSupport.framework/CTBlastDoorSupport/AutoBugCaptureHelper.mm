@interface AutoBugCaptureHelper
- (AutoBugCaptureHelper)init;
- (void)reportWithDomain:(id)domain type:(id)type subtype:(id)subtype subtypeContext:(id)context;
@end

@implementation AutoBugCaptureHelper

- (void)reportWithDomain:(id)domain type:(id)type subtype:(id)subtype subtypeContext:(id)context
{
  sub_2426ABA10();
  sub_2426ABA10();
  sub_2426ABA10();
  sub_2426ABA10();
  selfCopy = self;
  sub_242666FE4();
}

- (AutoBugCaptureHelper)init
{
  v3.receiver = self;
  v3.super_class = AutoBugCaptureHelper;
  return [(AutoBugCaptureHelper *)&v3 init];
}

@end