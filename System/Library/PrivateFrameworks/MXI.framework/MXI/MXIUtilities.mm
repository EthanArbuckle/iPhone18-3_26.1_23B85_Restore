@interface MXIUtilities
+ (BOOL)parseBool:(id)a3 defaultValue:(BOOL)a4;
+ (float)parseFloat:(id)a3 defaultValue:(float)a4;
+ (id)parseString:(id)a3 defaultValue:(id)a4;
+ (int)parseInt:(id)a3 defaultValue:(int)a4;
+ (unsigned)parseUInt:(id)a3 defaultValue:(unsigned int)a4;
@end

@implementation MXIUtilities

+ (float)parseFloat:(id)a3 defaultValue:(float)a4
{
  v9 = a3;
  if (v9)
  {
    v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6, v7, v8);
    if (v10 == v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
    }

    else
    {
      v15 = objc_msgSend_notANumber(MEMORY[0x277CCA980], v11, v12, v13, v14);
      isEqualToNumber = objc_msgSend_isEqualToNumber_(v9, v16, v15, v17, v18);

      if ((isEqualToNumber & 1) == 0)
      {
        objc_msgSend_floatValue(v9, v20, v21, v22, v23);
        a4 = v24;
      }
    }
  }

  return a4;
}

+ (unsigned)parseUInt:(id)a3 defaultValue:(unsigned int)a4
{
  v9 = a3;
  if (v9)
  {
    v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6, v7, v8);
    if (v10 == v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
    }

    else
    {
      v15 = objc_msgSend_notANumber(MEMORY[0x277CCA980], v11, v12, v13, v14);
      isEqualToNumber = objc_msgSend_isEqualToNumber_(v9, v16, v15, v17, v18);

      if ((isEqualToNumber & 1) == 0)
      {
        a4 = objc_msgSend_unsignedIntValue(v9, v20, v21, v22, v23);
      }
    }
  }

  return a4;
}

+ (int)parseInt:(id)a3 defaultValue:(int)a4
{
  v9 = a3;
  if (v9)
  {
    v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6, v7, v8);
    if (v10 == v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
    }

    else
    {
      v15 = objc_msgSend_notANumber(MEMORY[0x277CCA980], v11, v12, v13, v14);
      isEqualToNumber = objc_msgSend_isEqualToNumber_(v9, v16, v15, v17, v18);

      if ((isEqualToNumber & 1) == 0)
      {
        a4 = objc_msgSend_intValue(v9, v20, v21, v22, v23);
      }
    }
  }

  return a4;
}

+ (BOOL)parseBool:(id)a3 defaultValue:(BOOL)a4
{
  v9 = a3;
  if (v9)
  {
    v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6, v7, v8);
    if (v10 == v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
    }

    else
    {
      v15 = objc_msgSend_notANumber(MEMORY[0x277CCA980], v11, v12, v13, v14);
      isEqualToNumber = objc_msgSend_isEqualToNumber_(v9, v16, v15, v17, v18);

      if ((isEqualToNumber & 1) == 0)
      {
        a4 = objc_msgSend_BOOLValue(v9, v20, v21, v22, v23);
      }
    }
  }

  return a4;
}

+ (id)parseString:(id)a3 defaultValue:(id)a4
{
  v5 = a3;
  v10 = a4;
  if (!v5)
  {
    goto LABEL_6;
  }

  v11 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7, v8, v9);
  v12 = v11;
  if (v11 == v5)
  {

    goto LABEL_6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v14 = v5;
  if ((isKindOfClass & 1) == 0)
  {
LABEL_6:
    v14 = v10;
  }

  v15 = v14;

  return v15;
}

@end