@interface _CLUnSupportedService
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
@end

@implementation _CLUnSupportedService

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  blockedCopy = blocked;
  v5 = index + 1;
  if (v5 < [blockedCopy count])
  {
    [objc_msgSend(blockedCopy objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", blockedCopy, v5}];
  }
}

+ (id)getSilo
{
  if (qword_1ECE5D918 != -1)
  {
    dispatch_once(&qword_1ECE5D918, &unk_1F5AC6AC8);
  }

  return 0;
}

@end