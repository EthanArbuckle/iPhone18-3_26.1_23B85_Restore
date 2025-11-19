@interface _XREngineeringTypeDefArrayMember
- (void)_handleCompletion;
@end

@implementation _XREngineeringTypeDefArrayMember

- (void)_handleCompletion
{
  parent = self->super.super.parent;
  accumulator = self->super.accumulator;
  v19 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], a2, v2, v3, v4);
  v11 = objc_msgSend_stringByTrimmingCharactersInSet_(accumulator, v8, v19, v9, v10);
  v16 = objc_msgSend_elementName(self, v12, v13, v14, v15);
  objc_msgSend_addString_elementType_(parent, v17, v11, v16, v18);
}

@end