@interface NSProcessInfo(FCAdditions)
- (id)fc_processLaunchDate;
@end

@implementation NSProcessInfo(FCAdditions)

- (id)fc_processLaunchDate
{
  if (qword_1EDB270A8 != -1)
  {
    dispatch_once(&qword_1EDB270A8, &__block_literal_global_40);
  }

  v1 = _MergedGlobals_148;

  return v1;
}

@end