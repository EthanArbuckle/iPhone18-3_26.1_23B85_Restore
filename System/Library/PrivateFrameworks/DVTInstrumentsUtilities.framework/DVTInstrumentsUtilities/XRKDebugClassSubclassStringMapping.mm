@interface XRKDebugClassSubclassStringMapping
+ (id)kDebugClassNameForClass:(unsigned __int8)class;
@end

@implementation XRKDebugClassSubclassStringMapping

+ (id)kDebugClassNameForClass:(unsigned __int8)class
{
  classCopy = class;
  if (qword_27EE867C8 != -1)
  {
    sub_2480B37D8();
  }

  v6 = qword_27EE867C0;

  return objc_msgSend_objectForIntegerKey_(v6, a2, classCopy, v3, v4);
}

@end