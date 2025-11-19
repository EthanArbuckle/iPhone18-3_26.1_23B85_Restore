@interface XRConstantEngineeringValueElementParser
+ (id)_elementNameToClassMap;
- (void)_handleCompletion;
- (void)setValue:(id)a3 forElementName:(id)a4;
@end

@implementation XRConstantEngineeringValueElementParser

+ (id)_elementNameToClassMap
{
  if (qword_27EE867B8 != -1)
  {
    sub_2480B36CC();
  }

  v3 = qword_27EE867B0;

  return v3;
}

- (void)setValue:(id)a3 forElementName:(id)a4
{
  v14 = a3;
  v7 = a4;
  if (!self->_fields)
  {
    v8 = objc_opt_new();
    fields = self->_fields;
    self->_fields = v8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_2480B36E0(a2, self, v11, v12, v13);
  }

  objc_msgSend_addObject_(self->_fields, v10, v14, v12, v13);
}

- (void)_handleCompletion
{
  v6 = objc_msgSend_elementName(self, a2, v2, v3, v4);
  v9 = v6;
  fields = self->_fields;
  if (fields)
  {
    objc_msgSend_engineeringValueOfType_value_(XRConstantEngineeringValue, v7, v6, fields, v8);
    v11 = LABEL_3:;
    parsedValue = self->_parsedValue;
    self->_parsedValue = v11;

    goto LABEL_4;
  }

  v17 = XREngineeringTypeIDForMnemonic(v6);
  if ((*(&XR_ENGINEERING_ATTRIBUTES_BY_ETYPE + v17) & 0x10) != 0)
  {
    objc_msgSend_reportProblemWithElement_failure_(self->super.super.context, v13, self, @"Structured engineering types are not supported", v14);
  }

  if (v17)
  {
    v18 = XR_IMPLEMENTATION_CLASS_ID_BY_ETYPE[v17];
    if (v18 <= 3)
    {
      if (v18 - 1 >= 2)
      {
        if (v18 != 3)
        {
          goto LABEL_4;
        }

        v19 = objc_msgSend_collapsedStringValue(self, v13, v15, v16, v14);
        if (v19)
        {
          v47 = objc_msgSend_engineeringValueOfType_value_(XRConstantEngineeringValue, v45, v9, v19, v46);
          v48 = self->_parsedValue;
          self->_parsedValue = v47;
        }
      }

      else
      {
        v19 = objc_msgSend_stringValue(self, v13, v15, v16, v14);
        v76 = 0;
        if (objc_msgSend_xr_getLongLong_(v19, v20, &v76, v21, v22))
        {
          v26 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v23, v76, v24, v25);
          v29 = objc_msgSend_engineeringValueOfType_value_(XRConstantEngineeringValue, v27, v9, v26, v28);
          v30 = self->_parsedValue;
          self->_parsedValue = v29;
        }
      }

LABEL_25:

      goto LABEL_4;
    }

    switch(v18)
    {
      case 4u:
        v19 = objc_msgSend_stringValue(self, v13, v15, v16, v14);
        v49 = objc_alloc(MEMORY[0x277CBEA90]);
        v52 = objc_msgSend_initWithBase64EncodedString_options_(v49, v50, v19, 1, v51);
        if (v52)
        {
          v53 = objc_opt_new();
          v58 = objc_msgSend_length(v52, v54, v55, v56, v57);
          v59 = v52;
          v64 = objc_msgSend_bytes(v59, v60, v61, v62, v63);
          if (v58)
          {
            v68 = v64;
            for (i = 0; i < v58; i += 8)
            {
              v70 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v65, *(v68 + i), v66, v67);
              objc_msgSend_addObject_(v53, v71, v70, v72, v73);
            }
          }

          v74 = objc_msgSend_engineeringValueOfType_value_(XRConstantEngineeringValue, v65, v9, v53, v67);
          v75 = self->_parsedValue;
          self->_parsedValue = v74;
        }

        goto LABEL_25;
      case 5u:
        objc_msgSend_engineeringValueOfType_value_(XRConstantEngineeringValue, v13, v9, MEMORY[0x277CBEBF8], v14);
        goto LABEL_3;
      case 6u:
        v31 = objc_msgSend_CLIPSLiteralFormatter(XREngineeringNumberFormatter, v13, v15, v16, v14);
        v36 = objc_msgSend_stringValue(self, v32, v33, v34, v35);
        v40 = objc_msgSend_numberFromString_(v31, v37, v36, v38, v39);

        v43 = objc_msgSend_engineeringValueOfType_value_(XRConstantEngineeringValue, v41, v9, v40, v42);
        v44 = self->_parsedValue;
        self->_parsedValue = v43;

        break;
    }
  }

LABEL_4:
  objc_msgSend_setValue_forElementName_(self->super.super.parent, v13, self, v9, v14);
}

@end