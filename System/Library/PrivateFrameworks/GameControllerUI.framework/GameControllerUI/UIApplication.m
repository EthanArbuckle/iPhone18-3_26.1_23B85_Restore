@interface UIApplication
- (id)_gameControllerApplicationComponent;
@end

@implementation UIApplication

- (id)_gameControllerApplicationComponent
{
  if (a1)
  {
    if (qword_27C8CEA90 != -1)
    {
      dispatch_once(&qword_27C8CEA90, &__block_literal_global_4);
    }

    a1 = _MergedGlobals;
    v1 = vars8;
  }

  return a1;
}

void __88__UIApplication_GameControllerApplicationComponent___gameControllerApplicationComponent__block_invoke()
{
  v0 = [_GCApplicationComponent alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = _GCApplicationComponent;
    v0 = objc_msgSendSuper2(&v2, sel_init);
  }

  v1 = _MergedGlobals;
  _MergedGlobals = v0;
}

@end