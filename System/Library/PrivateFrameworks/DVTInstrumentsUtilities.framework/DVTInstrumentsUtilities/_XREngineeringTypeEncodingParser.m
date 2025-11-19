@interface _XREngineeringTypeEncodingParser
+ (id)_elementNameToClassMap;
+ (id)_elementNameToKVCMap;
- (void)_handleCompletion;
@end

@implementation _XREngineeringTypeEncodingParser

+ (id)_elementNameToClassMap
{
  if (qword_27EE868B8 != -1)
  {
    sub_2480B3A20();
  }

  v3 = qword_27EE868B0;

  return v3;
}

+ (id)_elementNameToKVCMap
{
  if (qword_27EE868C8 != -1)
  {
    sub_2480B3A34();
  }

  v3 = qword_27EE868C0;

  return v3;
}

- (void)_handleCompletion
{
  v29 = self->super.parent;
  v7 = objc_msgSend_encodingConvention(v29, v3, v4, v5, v6);
  v12 = objc_msgSend_impl(v29, v8, v9, v10, v11);
  if (v12 <= 6)
  {
    if (((1 << v12) & 0x47) == 0)
    {
      v18 = 3;
      goto LABEL_12;
    }

    sentinel = self->_sentinel;
    if (sentinel)
    {
      if (objc_msgSend_isEqualToString_(sentinel, v13, @"max", v15, v16))
      {
        v18 = 1;
      }

      else if (objc_msgSend_isEqualToString_(self->_sentinel, v13, @"zero", v15, v16))
      {
        v18 = 2;
      }

      else
      {
        v18 = 0;
      }

LABEL_12:
      if (v7)
      {
LABEL_17:
        objc_msgSend_setSentinel_(v7, v13, v18, v15, v16);
        goto LABEL_18;
      }

LABEL_16:
      v7 = objc_opt_new();
      objc_msgSend_setEncodingConvention_(v29, v22, v7, v23, v24);
      if (!v7)
      {
        goto LABEL_21;
      }

      goto LABEL_17;
    }
  }

  if (!v7)
  {
    if (self->_bitWidth < 0)
    {
      goto LABEL_21;
    }

    v18 = 0;
    goto LABEL_16;
  }

  objc_msgSend_setSentinel_(v7, v13, 0, v15, v16);
LABEL_18:
  objc_msgSend_setIsSigned_(v7, v19, self->_isSigned, v20, v21);
  bitWidth = self->_bitWidth;
  if (bitWidth == -1)
  {
    bitWidth = objc_msgSend_conventionalBitWidth(v29, v25, -1, v26, v27);
  }

  objc_msgSend_setBitWidth_(v7, v25, bitWidth, v26, v27);

LABEL_21:
  objc_msgSend_didHandleEncodingElement(v29, v13, v14, v15, v16);
}

@end