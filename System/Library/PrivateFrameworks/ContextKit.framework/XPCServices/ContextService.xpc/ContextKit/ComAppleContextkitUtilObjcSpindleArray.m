@interface ComAppleContextkitUtilObjcSpindleArray
- (id)newState;
@end

@implementation ComAppleContextkitUtilObjcSpindleArray

- (id)newState
{
  v2 = [ComAppleContextkitUtilObjcSpindleArray_NativeState alloc];
  ComAppleContextkitUtilSpindleArray_State_init(v2);
  sub_1000A269C(v2);

  return v2;
}

@end