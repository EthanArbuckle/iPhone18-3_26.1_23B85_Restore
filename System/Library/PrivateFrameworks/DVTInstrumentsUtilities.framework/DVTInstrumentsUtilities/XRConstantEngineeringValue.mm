@interface XRConstantEngineeringValue
+ (id)engineeringValueOfType:(id)type value:(id)value;
+ (id)engineeringValueWithTypeID:(unsigned __int16)d value:(id)value;
- (BOOL)getLengthOfUint64Representation:(unint64_t *)representation;
- (BOOL)getValue:(id *)value fieldIndex:(unsigned __int16)index;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConstantEngineeringValue:(id)value;
- (XRConstantEngineeringValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateUint64Values:(id)values;
@end

@implementation XRConstantEngineeringValue

- (XRConstantEngineeringValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12 = objc_msgSend_init(self, v5, v6, v7, v8);
  if (v12)
  {
    v12->_implClass = objc_msgSend_decodeIntForKey_(coderCopy, v9, @"_implClass", v10, v11);
    v13 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v14, v13, @"_mnemonic", v15);
    mnemonic = v12->_mnemonic;
    v12->_mnemonic = v16;

    v12->_resolvedEtypeID = XREngineeringTypeIDForMnemonic(v12->_mnemonic);
    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v26 = objc_msgSend_setWithObjects_(v18, v23, v19, v24, v25, v20, v21, v22, 0);
    v29 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v27, v26, @"_value", v28);
    value = v12->_value;
    v12->_value = v29;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  implClass = self->_implClass;
  coderCopy = coder;
  objc_msgSend_encodeInt_forKey_(coderCopy, v5, implClass, @"_implClass", v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_mnemonic, @"_mnemonic", v8);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, self->_value, @"_value", v10);
}

- (id)copyWithZone:(_NSZone *)zone
{
  resolvedEtypeID = self->_resolvedEtypeID;
  v6 = objc_msgSend_copy(self->_value, a2, zone, v3, v4);
  v9 = objc_msgSend_engineeringValueWithTypeID_value_(XRConstantEngineeringValue, v7, resolvedEtypeID, v6, v8);

  return v9;
}

+ (id)engineeringValueOfType:(id)type value:(id)value
{
  valueCopy = value;
  v7 = XREngineeringTypeIDForMnemonic(type);
  v10 = objc_msgSend_engineeringValueWithTypeID_value_(self, v8, v7, valueCopy, v9);

  return v10;
}

+ (id)engineeringValueWithTypeID:(unsigned __int16)d value:(id)value
{
  dCopy = d;
  valueCopy = value;
  v6 = objc_opt_new();
  objc_storeStrong((v6 + 8), *(&XR_ENGINEERING_MNEMONIC_BY_ETYPE + dCopy));
  *(v6 + 16) = dCopy;
  *(v6 + 18) = XR_IMPLEMENTATION_CLASS_ID_BY_ETYPE[dCopy];
  v11 = objc_msgSend_copy(valueCopy, v7, v8, v9, v10);

  v12 = *(v6 + 24);
  *(v6 + 24) = v11;

  return v6;
}

- (BOOL)getValue:(id *)value fieldIndex:(unsigned __int16)index
{
  indexCopy = index;
  value = self->_value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v8 = self->_value;
  if (objc_msgSend_count(v8, v9, v10, v11, v12) <= indexCopy)
  {
    v20 = 0;
  }

  else
  {
    v16 = objc_msgSend_objectAtIndexedSubscript_(v8, v13, indexCopy, v14, v15);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || objc_msgSend_conformsToProtocol_(v16, v17, &unk_285A4AE00, v18, v19))
    {
      objc_storeStrong(value, v16);
      v20 = 1;
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (BOOL)getLengthOfUint64Representation:(unint64_t *)representation
{
  value = self->_value;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = isKindOfClass;
  if (representation && (isKindOfClass & 1) != 0)
  {
    *representation = objc_msgSend_count(self->_value, v7, v8, v9, v10);
  }

  return v11 & 1;
}

- (void)enumerateUint64Values:(id)values
{
  v25 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  value = self->_value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = self->_value;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v20, v24, 16);
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v20 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            v18 = objc_msgSend_unsignedLongLongValue(v13, v14, v15, v16, v17);
            valuesCopy[2](valuesCopy, v10, v18);
          }

          ++v10;
          ++v12;
        }

        while (v9 != v12);
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v14, &v20, v24, 16);
      }

      while (v9);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqualToConstantEngineeringValue:(id)value
{
  valueCopy = value;
  if (self->_resolvedEtypeID == valueCopy[8])
  {
    v9 = objc_msgSend_implClass(self, v4, v5, v6, v7);
    v14 = 0;
    if (v9 <= 6)
    {
      if (((1 << v9) & 0x46) != 0)
      {
        v15 = objc_msgSend_objectValue(self, v10, v11, v12, v13);
        v20 = objc_msgSend_objectValue(valueCopy, v25, v26, v27, v28);
        isEqualToNumber = objc_msgSend_isEqualToNumber_(v15, v29, v20, v30, v31);
        goto LABEL_10;
      }

      if (((1 << v9) & 0x30) != 0)
      {
        v15 = objc_msgSend_objectValue(self, v10, v11, v12, v13);
        v20 = objc_msgSend_objectValue(valueCopy, v16, v17, v18, v19);
        isEqualToNumber = objc_msgSend_isEqualToArray_(v15, v21, v20, v22, v23);
LABEL_10:
        v14 = isEqualToNumber;

        goto LABEL_11;
      }

      if (v9 == 3)
      {
        v15 = objc_msgSend_objectValue(self, v10, v11, v12, v13);
        v20 = objc_msgSend_objectValue(valueCopy, v32, v33, v34, v35);
        isEqualToNumber = objc_msgSend_isEqualToString_(v15, v36, v20, v37, v38);
        goto LABEL_10;
      }
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_11:

  return v14;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v9 = objc_msgSend_implClass(self, v5, v6, v7, v8);
  v14 = objc_msgSend_implClass(compareCopy, v10, v11, v12, v13);
  v19 = objc_msgSend_implClass(self, v15, v16, v17, v18);
  if (v9 == v14)
  {
    v24 = 0;
    if (v19 <= 6)
    {
      if (((1 << v19) & 0x46) != 0)
      {
        goto LABEL_17;
      }

      if (((1 << v19) & 0x30) != 0)
      {
        v25 = objc_msgSend_objectValue(self, v20, v21, v22, v23);
        v30 = objc_msgSend_objectValue(compareCopy, v26, v27, v28, v29);
        v35 = objc_msgSend_count(v25, v31, v32, v33, v34);
        v40 = objc_msgSend_count(v30, v36, v37, v38, v39);
        v45 = objc_msgSend_count(v25, v41, v42, v43, v44);
        v24 = v45;
        if (v35 == v40)
        {
          if (v45)
          {
            v50 = 0;
            while (1)
            {
              v51 = objc_msgSend_objectAtIndexedSubscript_(v25, v46, v50, v48, v49);
              v55 = objc_msgSend_objectAtIndexedSubscript_(v30, v52, v50, v53, v54);
              v24 = objc_msgSend_compare_(v51, v56, v55, v57, v58);

              if (v24)
              {
                break;
              }

              if (objc_msgSend_count(v25, v59, v60, v61, v62) <= ++v50)
              {
                v24 = 0;
                goto LABEL_18;
              }
            }
          }
        }

        else if (v45 < objc_msgSend_count(v30, v46, v47, v48, v49))
        {
          v24 = -1;
        }

        else
        {
          v24 = 1;
        }

        goto LABEL_18;
      }

      if (v19 == 3)
      {
LABEL_17:
        v25 = objc_msgSend_objectValue(self, v20, v21, v22, v23);
        v30 = objc_msgSend_objectValue(compareCopy, v72, v73, v74, v75);
        v24 = objc_msgSend_compare_(v25, v76, v30, v77, v78);
LABEL_18:
      }
    }
  }

  else if (v19 == objc_msgSend_implClass(compareCopy, v20, v21, v22, v23))
  {
    v24 = 0;
  }

  else
  {
    v67 = objc_msgSend_implClass(self, v63, v64, v65, v66);
    if (v67 < objc_msgSend_implClass(compareCopy, v68, v69, v70, v71))
    {
      v24 = -1;
    }

    else
    {
      v24 = 1;
    }
  }

  return v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToConstantEngineeringValue = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToConstantEngineeringValue = objc_msgSend_isEqualToConstantEngineeringValue_(self, v5, equalCopy, v6, v7);
    }

    else
    {
      isEqualToConstantEngineeringValue = 0;
    }
  }

  return isEqualToConstantEngineeringValue;
}

- (unint64_t)hash
{
  v5 = objc_msgSend_objectValue(self, a2, v2, v3, v4);
  v10 = objc_msgSend_hash(v5, v6, v7, v8, v9);

  return v10;
}

@end