@interface _XREngineeringTypeBitRangeParser
+ (id)_elementNameToClassMap;
- (void)_handleCompletion;
@end

@implementation _XREngineeringTypeBitRangeParser

+ (id)_elementNameToClassMap
{
  if (qword_27EE86908 != -1)
  {
    sub_2480B3A84();
  }

  v3 = qword_27EE86900;

  return v3;
}

- (void)_handleCompletion
{
  v32 = objc_opt_new();
  v7 = objc_msgSend_type(self, v3, v4, v5, v6);
  objc_msgSend_setType_(v32, v8, v7, v9, v10);

  v15 = objc_msgSend_start(self, v11, v12, v13, v14);
  v20 = objc_msgSend_end(self, v16, v17, v18, v19);
  if (v15 <= v20)
  {
    v23 = v20;
  }

  else
  {
    v23 = v15;
  }

  if (v15 >= v20)
  {
    objc_msgSend_setBitRange_(v32, v21, v20, v23 - v20 + 1, v22);
  }

  else
  {
    objc_msgSend_setBitRange_(v32, v21, v15, v23 - v15 + 1, v22);
  }

  v28 = objc_msgSend_convention(self->super.parent, v24, v25, v26, v27);
  objc_msgSend_addEntry_(v28, v29, v32, v30, v31);
}

@end