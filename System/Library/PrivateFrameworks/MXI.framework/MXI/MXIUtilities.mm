@interface MXIUtilities
+ (BOOL)parseBool:(id)bool defaultValue:(BOOL)value;
+ (float)parseFloat:(id)float defaultValue:(float)value;
+ (id)parseString:(id)string defaultValue:(id)value;
+ (int)parseInt:(id)int defaultValue:(int)value;
+ (unsigned)parseUInt:(id)int defaultValue:(unsigned int)value;
@end

@implementation MXIUtilities

+ (float)parseFloat:(id)float defaultValue:(float)value
{
  floatCopy = float;
  if (floatCopy)
  {
    v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6, v7, v8);
    if (v10 == floatCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
    }

    else
    {
      v15 = objc_msgSend_notANumber(MEMORY[0x277CCA980], v11, v12, v13, v14);
      isEqualToNumber = objc_msgSend_isEqualToNumber_(floatCopy, v16, v15, v17, v18);

      if ((isEqualToNumber & 1) == 0)
      {
        objc_msgSend_floatValue(floatCopy, v20, v21, v22, v23);
        value = v24;
      }
    }
  }

  return value;
}

+ (unsigned)parseUInt:(id)int defaultValue:(unsigned int)value
{
  intCopy = int;
  if (intCopy)
  {
    v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6, v7, v8);
    if (v10 == intCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
    }

    else
    {
      v15 = objc_msgSend_notANumber(MEMORY[0x277CCA980], v11, v12, v13, v14);
      isEqualToNumber = objc_msgSend_isEqualToNumber_(intCopy, v16, v15, v17, v18);

      if ((isEqualToNumber & 1) == 0)
      {
        value = objc_msgSend_unsignedIntValue(intCopy, v20, v21, v22, v23);
      }
    }
  }

  return value;
}

+ (int)parseInt:(id)int defaultValue:(int)value
{
  intCopy = int;
  if (intCopy)
  {
    v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6, v7, v8);
    if (v10 == intCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
    }

    else
    {
      v15 = objc_msgSend_notANumber(MEMORY[0x277CCA980], v11, v12, v13, v14);
      isEqualToNumber = objc_msgSend_isEqualToNumber_(intCopy, v16, v15, v17, v18);

      if ((isEqualToNumber & 1) == 0)
      {
        value = objc_msgSend_intValue(intCopy, v20, v21, v22, v23);
      }
    }
  }

  return value;
}

+ (BOOL)parseBool:(id)bool defaultValue:(BOOL)value
{
  boolCopy = bool;
  if (boolCopy)
  {
    v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6, v7, v8);
    if (v10 == boolCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
    }

    else
    {
      v15 = objc_msgSend_notANumber(MEMORY[0x277CCA980], v11, v12, v13, v14);
      isEqualToNumber = objc_msgSend_isEqualToNumber_(boolCopy, v16, v15, v17, v18);

      if ((isEqualToNumber & 1) == 0)
      {
        value = objc_msgSend_BOOLValue(boolCopy, v20, v21, v22, v23);
      }
    }
  }

  return value;
}

+ (id)parseString:(id)string defaultValue:(id)value
{
  stringCopy = string;
  valueCopy = value;
  if (!stringCopy)
  {
    goto LABEL_6;
  }

  v11 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7, v8, v9);
  v12 = v11;
  if (v11 == stringCopy)
  {

    goto LABEL_6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v14 = stringCopy;
  if ((isKindOfClass & 1) == 0)
  {
LABEL_6:
    v14 = valueCopy;
  }

  v15 = v14;

  return v15;
}

@end