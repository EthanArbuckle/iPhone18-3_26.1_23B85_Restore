@interface _CLMainService
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
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

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v6 = a3;
  v5 = a4 + 1;
  if (v5 < [v6 count])
  {
    [objc_msgSend(v6 objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", v6, v5}];
  }
}

@end