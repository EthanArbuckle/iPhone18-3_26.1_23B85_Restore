@interface _XREngineeringTypeArrayEncodingParser
+ (id)_elementNameToClassMap;
- (void)_handleCompletion;
- (void)_handleStart;
- (void)setRemainder:(id)a3;
- (void)setSlot:(id)a3;
@end

@implementation _XREngineeringTypeArrayEncodingParser

+ (id)_elementNameToClassMap
{
  if (qword_27EE868D8 != -1)
  {
    sub_2480B3A48();
  }

  v3 = qword_27EE868D0;

  return v3;
}

- (void)_handleStart
{
  v3 = objc_opt_new();
  fixedTypes = self->_fixedTypes;
  self->_fixedTypes = v3;

  MEMORY[0x2821F96F8]();
}

- (void)setSlot:(id)a3
{
  fixedTypes = self->_fixedTypes;
  v9 = objc_msgSend_copy(a3, a2, a3, v3, v4);
  objc_msgSend_addObject_(fixedTypes, v6, v9, v7, v8);
}

- (void)setRemainder:(id)a3
{
  v6 = objc_msgSend_copy(a3, a2, a3, v3, v4);
  remainderType = self->_remainderType;
  self->_remainderType = v6;

  MEMORY[0x2821F96F8]();
}

- (void)_handleCompletion
{
  v3 = self->super.parent->parent;
  v13 = objc_opt_new();
  objc_msgSend_setFixedTypes_(v13, v4, self->_fixedTypes, v5, v6);
  objc_msgSend_setRemainderType_(v13, v7, self->_remainderType, v8, v9);
  objc_msgSend_setEncodingConvention_(v3, v10, v13, v11, v12);
}

@end