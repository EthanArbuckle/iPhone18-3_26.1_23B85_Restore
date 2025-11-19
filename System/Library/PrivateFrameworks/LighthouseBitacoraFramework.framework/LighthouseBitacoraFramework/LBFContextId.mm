@interface LBFContextId
+ (id)getContextId;
@end

@implementation LBFContextId

+ (id)getContextId
{
  if (qword_281536D18 != -1)
  {
    sub_255F0B500();
  }

  v3 = qword_281536D20;

  return v3;
}

@end