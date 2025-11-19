@interface _CLUnSupportedService
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
@end

@implementation _CLUnSupportedService

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v6 = a3;
  v5 = a4 + 1;
  if (v5 < [v6 count])
  {
    [objc_msgSend(v6 objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", v6, v5}];
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