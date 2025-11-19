@interface _XREngineeringTypeDefAttribute
- (void)_handleCompletion;
@end

@implementation _XREngineeringTypeDefAttribute

- (void)_handleCompletion
{
  accumulator = self->super.accumulator;
  v7 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], a2, v2, v3, v4);
  v25 = objc_msgSend_stringByTrimmingCharactersInSet_(accumulator, v8, v7, v9, v10);

  if (qword_27EE86858 != -1)
  {
    sub_2480B3950();
  }

  v14 = objc_msgSend_objectForKeyedSubscript_(qword_27EE86850, v11, v25, v12, v13);
  if (!v14)
  {
    sub_2480B3964();
  }

  v19 = v14;
  parent = self->super.super.parent;
  v21 = objc_msgSend_unsignedIntegerValue(v14, v15, v16, v17, v18);
  objc_msgSend_addAttribute_(parent, v22, v21, v23, v24);
}

@end