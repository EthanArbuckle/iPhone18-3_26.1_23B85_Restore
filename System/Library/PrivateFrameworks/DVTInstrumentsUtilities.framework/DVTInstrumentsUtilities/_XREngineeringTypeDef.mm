@interface _XREngineeringTypeDef
+ (id)_elementNameToClassMap;
+ (id)_elementNameToKVCMap;
- (id)errorStringHeader;
- (int64_t)conventionalBitWidth;
- (void)_handleCompletion;
@end

@implementation _XREngineeringTypeDef

+ (id)_elementNameToClassMap
{
  if (qword_27EE86888 != -1)
  {
    sub_2480B39E4();
  }

  v3 = qword_27EE86880;

  return v3;
}

+ (id)_elementNameToKVCMap
{
  if (qword_27EE86898 != -1)
  {
    sub_2480B39F8();
  }

  v3 = qword_27EE86890;

  return v3;
}

- (void)_handleCompletion
{
  if (!self->_handledEncodingElement)
  {
    (MEMORY[0x2821F9670])(self, sel_simulateEmptyElement_, @"encoding-convention");
  }
}

- (id)errorStringHeader
{
  if (qword_27EE868A0 != -1)
  {
    sub_2480B3A0C();
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_path(qword_27EE868A8, a2, v2, v3, v4);
  v12 = objc_msgSend_lineAndColumnForElementStart(self, v8, v9, v10, v11);
  v16 = objc_msgSend_stringWithFormat_(v6, v13, @"%@:%@: error:", v14, v15, v7, v12);

  return v16;
}

- (int64_t)conventionalBitWidth
{
  v6 = objc_msgSend_encodingConvention(self, a2, v2, v3, v4);
  if (!v6 || (v11 = v6, objc_msgSend_encodingConvention(self, v7, v8, v9, v10), v12 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend_bitWidth(v12, v13, v14, v15, v16), v12, v11, v17 == -1))
  {
    v25 = objc_msgSend_impl(self, v7, v8, v9, v10);
    if (v25 >= 7)
    {
      return 22;
    }

    else
    {
      return qword_2480B9328[v25];
    }
  }

  else
  {
    v18 = objc_msgSend_encodingConvention(self, v7, v8, v9, v10);
    v23 = objc_msgSend_bitWidth(v18, v19, v20, v21, v22);

    return v23;
  }
}

@end