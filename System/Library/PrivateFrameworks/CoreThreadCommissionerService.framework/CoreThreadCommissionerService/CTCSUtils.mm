@interface CTCSUtils
- (BOOL)ctcsCheckIfUIBuild;
- (CTCSUtils)init;
@end

@implementation CTCSUtils

- (CTCSUtils)init
{
  v3.receiver = self;
  v3.super_class = CTCSUtils;
  return [(CTCSUtils *)&v3 init];
}

- (BOOL)ctcsCheckIfUIBuild
{
  if (qword_1000807E0 != -1)
  {
    sub_1000559C4();
  }

  return byte_1000807D8;
}

@end