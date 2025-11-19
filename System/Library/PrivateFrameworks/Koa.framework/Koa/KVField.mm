@interface KVField
+ (id)fieldWithBuffer:(id)a3 root:(const void *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToField:(id)a3;
- (KVField)init;
- (KVField)initWithBuffer:(id)a3 root:(const Field *)a4;
- (id)JSONWithIndent:(unsigned __int8)a3;
- (id)label;
- (id)value;
- (int64_t)fieldType;
- (int64_t)localeType;
- (unint64_t)hash;
@end

@implementation KVField

- (unint64_t)hash
{
  v7 = MEMORY[0x277CCABB0];
  v8 = objc_msgSend_fieldType(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_numberWithInteger_(v7, v9, v8, v10, v11, v12);
  v19 = objc_msgSend_hash(v13, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_value(self, v20, v21, v22, v23, v24);
  v31 = objc_msgSend_hash(v25, v26, v27, v28, v29, v30);
  v37 = objc_msgSend_label(self, v32, v33, v34, v35, v36);
  v43 = objc_msgSend_hash(v37, v38, v39, v40, v41, v42);

  return v31 ^ v19 ^ v43;
}

- (BOOL)isEqualToField:(id)a3
{
  v8 = a3;
  v14 = objc_msgSend_fieldType(self, v9, v10, v11, v12, v13);
  if (v14 == objc_msgSend_fieldType(v8, v15, v16, v17, v18, v19))
  {
    v25 = objc_msgSend_localeType(self, v20, v21, v22, v23, v24);
    if (v25 == objc_msgSend_localeType(v8, v26, v27, v28, v29, v30))
    {
      v41 = objc_msgSend_value(self, v31, v32, v33, v34, v35);
      if (v41 || (objc_msgSend_value(v8, v36, v37, v38, v39, v40), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v4 = objc_msgSend_value(self, v36, v37, v38, v39, v40);
        v5 = objc_msgSend_value(v8, v42, v43, v44, v45, v46);
        if (!objc_msgSend_isEqual_(v4, v47, v5, v48, v49, v50))
        {
          isEqual = 0;
          goto LABEL_15;
        }

        v70 = v3;
        LODWORD(v3) = 1;
      }

      else
      {
        v70 = 0;
      }

      v57 = objc_msgSend_label(self, v36, v37, v38, v39, v40);
      if (v57 || (objc_msgSend_label(v8, v52, v53, v54, v55, v56), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v58 = objc_msgSend_label(self, v52, v53, v54, v55, v56);
        v64 = objc_msgSend_label(v8, v59, v60, v61, v62, v63);
        isEqual = objc_msgSend_isEqual_(v58, v65, v64, v66, v67, v68);

        if (v57)
        {

          if (v3)
          {
LABEL_14:
            v3 = v70;
LABEL_15:

            if (v41)
            {
LABEL_17:

              goto LABEL_18;
            }

LABEL_16:

            goto LABEL_17;
          }

LABEL_21:
          v3 = v70;
          if (v41)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }

      else
      {
        isEqual = 1;
      }

      if (v3)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  isEqual = 0;
LABEL_18:

  return isEqual;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    isEqualToField = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isEqualToField = objc_msgSend_isEqualToField_(self, v6, v5, v7, v8, v9);
  }

  else
  {
    isEqualToField = 0;
  }

  return isEqualToField;
}

- (id)JSONWithIndent:(unsigned __int8)a3
{
  v5 = sub_2559C2C40(a3);
  v6 = sub_2559C2C40(a3 + 1);
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendFormat_(v7, v8, @"%@{\n", v9, v10, v11, v5);
  v17 = objc_msgSend_fieldType(self, v12, v13, v14, v15, v16);
  v18 = KVFieldTypeName(v17);
  objc_msgSend_appendFormat_(v7, v19, @"%@%@: %@,\n", v20, v21, v22, v6, @"fieldType", v18);

  v28 = objc_msgSend_localeType(self, v23, v24, v25, v26, v27);
  if (v28)
  {
    if (v28 >= 0x2D)
    {
      v34 = 0;
    }

    else
    {
      v34 = v28;
    }

    if (v34 <= 0x2Cu)
    {
      objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v29, off_279803B38[v34], 4, v32, v33);
    }

    else
    {
      objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v29, "", 4, v32, v33);
    }
    v35 = ;
    objc_msgSend_appendFormat_(v7, v36, @"%@%@: %@,\n", v37, v38, v39, v6, @"localeType", v35);
  }

  v40 = objc_msgSend_label(self, v29, v30, v31, v32, v33);
  if (objc_msgSend_length(v40, v41, v42, v43, v44, v45))
  {
    v51 = sub_2559C2CC8(v40, v46, v47, v48, v49, v50);
    objc_msgSend_appendFormat_(v7, v52, @"%@%@: %@,\n", v53, v54, v55, v6, @"label", v51);
  }

  v56 = objc_msgSend_value(self, v46, v47, v48, v49, v50);
  if (objc_msgSend_length(v56, v57, v58, v59, v60, v61))
  {
    v67 = sub_2559C2CC8(v56, v62, v63, v64, v65, v66);
    objc_msgSend_appendFormat_(v7, v68, @"%@%@: %@,\n", v69, v70, v71, v6, @"value", v67);
  }

  objc_msgSend_appendFormat_(v7, v62, @"%@}", v64, v65, v66, v5);

  return v7;
}

- (int64_t)localeType
{
  field = self->_field;
  v3 = &field[-*field->var0];
  if (*v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0)
  {
    return field[v4].var0[0];
  }

  else
  {
    return 0;
  }
}

- (id)value
{
  v3 = &self->_field[-*self->_field];
  if (*v3->var0 >= 7u && *v3[6].var0)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = &self->_field[*self->_field[-*self->_field + 6].var0];
    v8 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v5, v7, &v6[*v6->var0 + 4], *v6[*v6->var0].var0, 4, 0);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)label
{
  v3 = &self->_field[-*self->_field];
  if (*v3->var0 >= 9u && *v3[8].var0)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = &self->_field[*self->_field[-*self->_field + 8].var0];
    v8 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v5, v7, &v6[*v6->var0 + 4], *v6[*v6->var0].var0, 4, 0);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)fieldType
{
  field = self->_field;
  v3 = &field[-*field->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    return *field[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (KVField)initWithBuffer:(id)a3 root:(const Field *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = KVField;
  v8 = [(KVField *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_buffer, a3);
    v9->_field = a4;
  }

  return v9;
}

- (KVField)init
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], a2, *MEMORY[0x277CBE658], @"init unsupported", MEMORY[0x277CBEC10], v2);
  objc_exception_throw(v3);
}

+ (id)fieldWithBuffer:(id)a3 root:(const void *)a4
{
  v5 = a3;
  v6 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_initWithBuffer_root_(v6, v7, v5, a4, v8, v9);

  return v10;
}

@end