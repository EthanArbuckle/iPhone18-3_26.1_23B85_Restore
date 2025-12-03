@interface _CLMainService
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
@end

@implementation _CLMainService

+ (id)getSilo
{
  if (qword_1ED5FADC0 != -1)
  {
    dispatch_once(&qword_1ED5FADC0, &unk_1F5AC6AA8);
  }

  v3 = qword_1ED5FADB8;

  return v3;
}

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  blockedCopy = blocked;
  v5 = index + 1;
  if (v5 < [blockedCopy count])
  {
    [objc_msgSend(blockedCopy objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", blockedCopy, v5}];
  }
}

@end