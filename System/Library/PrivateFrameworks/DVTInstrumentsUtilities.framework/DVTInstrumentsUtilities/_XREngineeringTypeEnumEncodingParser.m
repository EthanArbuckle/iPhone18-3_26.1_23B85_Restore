@interface _XREngineeringTypeEnumEncodingParser
+ (id)_elementNameToClassMap;
- (void)_handleCompletion;
- (void)_handleStart;
@end

@implementation _XREngineeringTypeEnumEncodingParser

+ (id)_elementNameToClassMap
{
  if (qword_27EE868F8 != -1)
  {
    sub_2480B3A70();
  }

  v3 = qword_27EE868F0;

  return v3;
}

- (void)_handleStart
{
  v3 = objc_opt_new();
  convention = self->_convention;
  self->_convention = v3;

  MEMORY[0x2821F96F8]();
}

- (void)_handleCompletion
{
  v3 = self->super.parent->parent;
  v11 = objc_msgSend_convention(self, v4, v5, v6, v7);
  objc_msgSend_setEncodingConvention_(v3, v8, v11, v9, v10);
}

@end