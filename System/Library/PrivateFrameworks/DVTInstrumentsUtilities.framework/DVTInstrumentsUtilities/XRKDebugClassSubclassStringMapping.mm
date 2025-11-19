@interface XRKDebugClassSubclassStringMapping
+ (id)kDebugClassNameForClass:(unsigned __int8)a3;
@end

@implementation XRKDebugClassSubclassStringMapping

+ (id)kDebugClassNameForClass:(unsigned __int8)a3
{
  v5 = a3;
  if (qword_27EE867C8 != -1)
  {
    sub_2480B37D8();
  }

  v6 = qword_27EE867C0;

  return objc_msgSend_objectForIntegerKey_(v6, a2, v5, v3, v4);
}

@end