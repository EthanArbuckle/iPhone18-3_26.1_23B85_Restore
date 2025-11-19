@interface NSBundle(FeldsparInternalExtras)
+ (id)fc_feldsparCoreInternalExtrasBundle;
@end

@implementation NSBundle(FeldsparInternalExtras)

+ (id)fc_feldsparCoreInternalExtrasBundle
{
  if (qword_1EDB275B0 != -1)
  {
    dispatch_once(&qword_1EDB275B0, &__block_literal_global_101);
  }

  v1 = qword_1EDB275B8;

  return v1;
}

@end