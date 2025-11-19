@interface UIKeyboardArbiterSceneFocusChange
@end

@implementation UIKeyboardArbiterSceneFocusChange

void __56___UIKeyboardArbiterSceneFocusChange_focusNothingChange__block_invoke()
{
  v0 = [[_UIKeyboardArbiterSceneFocusChange alloc] _init];
  v1 = qword_28122B760;
  qword_28122B760 = v0;

  *(qword_28122B760 + 8) = 1;
}

id __64___UIKeyboardArbiterSceneFocusChange_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 8) == 1)
  {

    return [v2 appendString:@"nothing" withName:0];
  }

  else
  {
    v5 = [v2 appendInt:*(v3 + 12) withName:@"pid"];
    return [*(a1 + 40) appendObject:*(*(a1 + 32) + 16) withName:@"sceneIdentity"];
  }
}

@end