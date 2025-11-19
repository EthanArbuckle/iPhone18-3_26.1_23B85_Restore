@interface CCToolKitToolRestrictionContext
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolRestrictionContext)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolRestrictionContext)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5;
- (CCToolKitToolRestrictionContextInInclusiveRange)inInclusiveRange;
- (CCToolKitToolRestrictionContextInSet)inSet;
- (CCToolKitToolRestrictionContextMeasurementExpressibleAs)measurementExpressibleAs;
- (CCToolKitToolRestrictionContextRepresentableAs)representableAs;
- (CCToolKitToolRestrictionContextTextTypedWith)textTypedWith;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolRestrictionContext

- (CCToolKitToolRestrictionContext)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v40[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"inSet"];
    if (v9)
    {
      v40[0] = 0;
      v10 = [[CCToolKitToolRestrictionContextInSet alloc] initWithJSONDictionary:v9 error:v40];
      v11 = v40[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        v20 = 0;
LABEL_49:

        goto LABEL_50;
      }

      v9 = v10;
    }

    v12 = [v6 objectForKeyedSubscript:@"representableAs"];
    if (v12)
    {
      v39 = 0;
      v13 = [[CCToolKitToolRestrictionContextRepresentableAs alloc] initWithJSONDictionary:v12 error:&v39];
      v14 = v39;
      v10 = v14;
      if (!v13 || v14)
      {
        CCSetError();
        v20 = 0;
LABEL_48:

        goto LABEL_49;
      }

      v12 = v13;
    }

    v35 = self;
    v10 = [v6 objectForKeyedSubscript:@"personReachableAs"];
    v13 = [v6 objectForKeyedSubscript:@"dateExpressibleAs"];
    v15 = [v6 objectForKeyedSubscript:@"textTypedWith"];
    if (v15)
    {
      v16 = v15;
      v38 = 0;
      v17 = [[CCToolKitToolRestrictionContextTextTypedWith alloc] initWithJSONDictionary:v15 error:&v38];
      v18 = v38;
      v19 = v18;
      if (!v17 || v18)
      {
        CCSetError();
        v20 = 0;
LABEL_47:

        self = v35;
        goto LABEL_48;
      }
    }

    else
    {
      v17 = 0;
    }

    v34 = v17;
    v19 = [v6 objectForKeyedSubscript:@"measurementExpressibleAs"];
    if (v19)
    {
      v37 = 0;
      v21 = [[CCToolKitToolRestrictionContextMeasurementExpressibleAs alloc] initWithJSONDictionary:v19 error:&v37];
      v22 = v37;
      v17 = v22;
      if (!v21 || v22)
      {
        CCSetError();
        v20 = 0;
LABEL_46:

        v16 = v34;
        goto LABEL_47;
      }

      v19 = v21;
    }

    v17 = [v6 objectForKeyedSubscript:@"inInclusiveRange"];
    v33 = v13;
    if (v17)
    {
      v36 = 0;
      v23 = [[CCToolKitToolRestrictionContextInInclusiveRange alloc] initWithJSONDictionary:v17 error:&v36];
      v24 = v36;
      v21 = v24;
      if (!v23 || v24)
      {
        CCSetError();

        v20 = 0;
LABEL_45:
        v13 = v33;
        goto LABEL_46;
      }

      v17 = v23;
    }

    if (v9)
    {
      v25 = v9;
      v26 = 1;
    }

    else
    {
      v26 = 0;
    }

    v21 = v9;
    if (v12)
    {
      v21 = v12;

      v26 = 2;
    }

    if (v10)
    {
      v28 = v10;

      v26 = 3;
      v21 = v28;
    }

    if (v33)
    {
      v29 = v33;

      v26 = 4;
      v21 = v29;
    }

    if (v34)
    {
      v30 = v34;

      v26 = 5;
      v21 = v30;
    }

    if (v19)
    {
      v31 = v19;

      v26 = 6;
      v21 = v31;
    }

    if (v17)
    {
      v32 = v17;

      v26 = 7;
      v21 = v32;
    }

    v20 = [[CCToolKitToolRestrictionContext alloc] initWithKind:v21 kindType:v26 error:a4];
    goto LABEL_45;
  }

  CCSetError();
  v20 = 0;
LABEL_50:

  return v20;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  kindType = self->_kindType;
  if (kindType == 1)
  {
    if (!self->_inSet)
    {
      goto LABEL_20;
    }

    v5 = [(CCToolKitToolRestrictionContext *)self inSet];
    v6 = [v5 jsonDictionary];
    [v3 setObject:v6 forKeyedSubscript:@"inSet"];

    kindType = self->_kindType;
  }

  if (kindType == 2)
  {
    if (!self->_representableAs)
    {
      goto LABEL_20;
    }

    v7 = [(CCToolKitToolRestrictionContext *)self representableAs];
    v8 = [v7 jsonDictionary];
    [v3 setObject:v8 forKeyedSubscript:@"representableAs"];

    kindType = self->_kindType;
  }

  if (kindType == 3)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolRestrictionContext personReachableAs](self, "personReachableAs")}];
    [v3 setObject:v9 forKeyedSubscript:@"personReachableAs"];

    kindType = self->_kindType;
  }

  if (kindType == 4)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolRestrictionContext dateExpressibleAs](self, "dateExpressibleAs")}];
    [v3 setObject:v10 forKeyedSubscript:@"dateExpressibleAs"];

    kindType = self->_kindType;
  }

  if (kindType == 5)
  {
    if (!self->_textTypedWith)
    {
      goto LABEL_20;
    }

    v11 = [(CCToolKitToolRestrictionContext *)self textTypedWith];
    v12 = [v11 jsonDictionary];
    [v3 setObject:v12 forKeyedSubscript:@"textTypedWith"];

    kindType = self->_kindType;
  }

  if (kindType == 6)
  {
    if (!self->_measurementExpressibleAs)
    {
      goto LABEL_20;
    }

    v13 = [(CCToolKitToolRestrictionContext *)self measurementExpressibleAs];
    v14 = [v13 jsonDictionary];
    [v3 setObject:v14 forKeyedSubscript:@"measurementExpressibleAs"];

    kindType = self->_kindType;
  }

  if (kindType == 7 && self->_inInclusiveRange)
  {
    v15 = [(CCToolKitToolRestrictionContext *)self inInclusiveRange];
    v16 = [v15 jsonDictionary];
    [v3 setObject:v16 forKeyedSubscript:@"inInclusiveRange"];
  }

LABEL_20:
  v17 = [v3 copy];

  return v17;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v17 = v5;
  if (self->_inSet)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_inSet];
    v17[2](v17, v7);
  }

  if (self->_representableAs)
  {
    v8 = objc_alloc(MEMORY[0x1E69939F0]);
    v9 = *v6;
    v10 = [v8 initWithFieldType:v9 subMessageValue:self->_representableAs];
    v17[2](v17, v10);
  }

  else
  {
    v9 = *v6;
  }

  v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_personReachableAs];
  v17[2](v17, v11);

  v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_dateExpressibleAs];
  v17[2](v17, v12);

  if (self->_textTypedWith)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 subMessageValue:self->_textTypedWith];
    v17[2](v17, v13);
  }

  if (self->_measurementExpressibleAs)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 subMessageValue:self->_measurementExpressibleAs];
    v17[2](v17, v14);
  }

  v15 = v17;
  if (self->_inInclusiveRange)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 subMessageValue:self->_inInclusiveRange];
    v17[2](v17, v16);

    v15 = v17;
  }
}

- (CCToolKitToolRestrictionContextInInclusiveRange)inInclusiveRange
{
  v2 = [(CCToolKitToolRestrictionContextInInclusiveRange *)self->_inInclusiveRange copy];

  return v2;
}

- (CCToolKitToolRestrictionContextMeasurementExpressibleAs)measurementExpressibleAs
{
  v2 = [(CCToolKitToolRestrictionContextMeasurementExpressibleAs *)self->_measurementExpressibleAs copy];

  return v2;
}

- (CCToolKitToolRestrictionContextTextTypedWith)textTypedWith
{
  v2 = [(CCToolKitToolRestrictionContextTextTypedWith *)self->_textTypedWith copy];

  return v2;
}

- (CCToolKitToolRestrictionContextRepresentableAs)representableAs
{
  v2 = [(CCToolKitToolRestrictionContextRepresentableAs *)self->_representableAs copy];

  return v2;
}

- (CCToolKitToolRestrictionContextInSet)inSet
{
  v2 = [(CCToolKitToolRestrictionContextInSet *)self->_inSet copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v5];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] >= *&v6[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_72;
  }

  v10 = 0;
  v11 = MEMORY[0x1E6993AA0];
  while (2)
  {
    if (*&v6[*v9])
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v7;
        v17 = *&v6[v16];
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v6[*v8])
        {
          break;
        }

        v19 = *(*&v6[*v11] + v17);
        *&v6[v16] = v18;
        v15 |= (v19 & 0x7F) << v13;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        v20 = v14++ >= 9;
        if (v20)
        {
          v21 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_73;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v22 = *&v6[*v9];
      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      if (v22)
      {
        goto LABEL_73;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 3)
      {
        if (v23 > 5)
        {
          if (v23 == 6)
          {
            v60 = [CCToolKitToolRestrictionContextMeasurementExpressibleAs alloc];
            v61 = CCPBReaderReadDataNoCopy();
            v89 = 0;
            v62 = [(CCItemMessage *)v60 initWithData:v61 error:&v89];
            v10 = v89;
            measurementExpressibleAs = self->_measurementExpressibleAs;
            self->_measurementExpressibleAs = v62;

            if (v10)
            {
              goto LABEL_69;
            }

            inSet = self->_inSet;
            self->_inSet = 0;

            representableAs = self->_representableAs;
            self->_representableAs = 0;

            self->_personReachableAs = 0;
            self->_dateExpressibleAs = 0;
            textTypedWith = self->_textTypedWith;
            self->_textTypedWith = 0;

            self->_kindType = 6;
            goto LABEL_58;
          }

          if (v23 == 7)
          {
            v37 = [CCToolKitToolRestrictionContextInInclusiveRange alloc];
            v38 = CCPBReaderReadDataNoCopy();
            v88 = 0;
            v39 = [(CCItemMessage *)v37 initWithData:v38 error:&v88];
            v10 = v88;
            inInclusiveRange = self->_inInclusiveRange;
            self->_inInclusiveRange = v39;

            if (!v10)
            {
              v41 = self->_inSet;
              self->_inSet = 0;

              v42 = self->_representableAs;
              self->_representableAs = 0;

              self->_personReachableAs = 0;
              self->_dateExpressibleAs = 0;
              v43 = self->_textTypedWith;
              self->_textTypedWith = 0;

              v44 = self->_measurementExpressibleAs;
              self->_measurementExpressibleAs = 0;

              self->_kindType = 7;
            }

LABEL_69:
            if (*&v6[*v7] < *&v6[*v8])
            {
              continue;
            }

            break;
          }

          goto LABEL_43;
        }

        if (v23 != 4)
        {
          if (v23 == 5)
          {
            v24 = [CCToolKitToolRestrictionContextTextTypedWith alloc];
            v25 = CCPBReaderReadDataNoCopy();
            v90 = 0;
            v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v90];
            v10 = v90;
            v27 = self->_textTypedWith;
            self->_textTypedWith = v26;

            if (v10)
            {
              goto LABEL_69;
            }

            v28 = self->_inSet;
            self->_inSet = 0;

            v29 = self->_representableAs;
            self->_representableAs = 0;

            self->_personReachableAs = 0;
            self->_dateExpressibleAs = 0;
            self->_kindType = 5;
            goto LABEL_57;
          }

          goto LABEL_43;
        }

        v53 = 0;
        v54 = 0;
        v55 = 0;
        while (1)
        {
          v56 = *v7;
          v57 = *&v6[v56];
          v58 = v57 + 1;
          if (v57 == -1 || v58 > *&v6[*v8])
          {
            break;
          }

          v59 = *(*&v6[*v11] + v57);
          *&v6[v56] = v58;
          v55 |= (v59 & 0x7F) << v53;
          if ((v59 & 0x80) == 0)
          {
            goto LABEL_60;
          }

          v53 += 7;
          v20 = v54++ >= 9;
          if (v20)
          {
            LODWORD(v55) = 0;
            goto LABEL_62;
          }
        }

        *&v6[*v9] = 1;
LABEL_60:
        if (*&v6[*v9])
        {
          LODWORD(v55) = 0;
        }

LABEL_62:
        self->_dateExpressibleAs = v55;
        v75 = self->_inSet;
        self->_inSet = 0;

        v76 = self->_representableAs;
        self->_representableAs = 0;

        self->_personReachableAs = 0;
        self->_kindType = 4;
        goto LABEL_67;
      }

      switch(v23)
      {
        case 1:
          v45 = [CCToolKitToolRestrictionContextInSet alloc];
          v46 = CCPBReaderReadDataNoCopy();
          v92 = 0;
          v47 = [(CCItemMessage *)v45 initWithData:v46 error:&v92];
          v10 = v92;
          v48 = self->_inSet;
          self->_inSet = v47;

          if (v10)
          {
            goto LABEL_69;
          }

          self->_kindType = 1;
          v49 = self->_representableAs;
          self->_representableAs = 0;

          break;
        case 2:
          v67 = [CCToolKitToolRestrictionContextRepresentableAs alloc];
          v68 = CCPBReaderReadDataNoCopy();
          v91 = 0;
          v69 = [(CCItemMessage *)v67 initWithData:v68 error:&v91];
          v10 = v91;
          v70 = self->_representableAs;
          self->_representableAs = v69;

          if (v10)
          {
            goto LABEL_69;
          }

          v71 = self->_inSet;
          self->_inSet = 0;

          self->_kindType = 2;
          break;
        case 3:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          while (1)
          {
            v33 = *v7;
            v34 = *&v6[v33];
            v35 = v34 + 1;
            if (v34 == -1 || v35 > *&v6[*v8])
            {
              break;
            }

            v36 = *(*&v6[*v11] + v34);
            *&v6[v33] = v35;
            v32 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              goto LABEL_64;
            }

            v30 += 7;
            v20 = v31++ >= 9;
            if (v20)
            {
              LODWORD(v32) = 0;
              goto LABEL_66;
            }
          }

          *&v6[*v9] = 1;
LABEL_64:
          if (*&v6[*v9])
          {
            LODWORD(v32) = 0;
          }

LABEL_66:
          self->_personReachableAs = v32;
          v77 = self->_inSet;
          self->_inSet = 0;

          v78 = self->_representableAs;
          self->_representableAs = 0;

          self->_kindType = 3;
          self->_dateExpressibleAs = 0;
LABEL_67:
          v79 = self->_textTypedWith;
          self->_textTypedWith = 0;

          v80 = self->_measurementExpressibleAs;
          self->_measurementExpressibleAs = 0;

          v81 = self->_inInclusiveRange;
          self->_inInclusiveRange = 0;

LABEL_68:
          v10 = 0;
          goto LABEL_69;
        default:
LABEL_43:
          if ((CCPBReaderSkipValueWithTag() & 1) == 0)
          {
            v50 = objc_opt_class();
            v51 = NSStringFromClass(v50);
            v52 = *&v6[*v9];
            v10 = CCSkipFieldErrorForMessage();

            goto LABEL_69;
          }

          goto LABEL_68;
      }

      self->_personReachableAs = 0;
      self->_dateExpressibleAs = 0;
      v72 = self->_textTypedWith;
      self->_textTypedWith = 0;

LABEL_57:
      v73 = self->_measurementExpressibleAs;
      self->_measurementExpressibleAs = 0;

LABEL_58:
      v74 = self->_inInclusiveRange;
      self->_inInclusiveRange = 0;

      goto LABEL_69;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_74;
  }

LABEL_72:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v86 = 1;
    goto LABEL_76;
  }

LABEL_73:
  v82 = objc_opt_class();
  v83 = NSStringFromClass(v82);
  v84 = *&v6[*v9];
  v85 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_74:
  v86 = 0;
LABEL_76:

  return v86;
}

- (CCToolKitToolRestrictionContext)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = objc_opt_new();
  if (v8 && a4 == 1)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (IsInstanceOfExpectedClass)
    {
      goto LABEL_8;
    }

LABEL_32:
    CCSetError();
    v15 = 0;
    goto LABEL_33;
  }

  if (!v8 || a4 != 2)
  {
    if (v8 && a4 == 3)
    {
      objc_opt_class();
      v16 = CCValidateIsInstanceOfExpectedClass();
      v17 = 0;
      if (v16)
      {
        [v8 unsignedIntegerValue];
        v18 = CCValidateEnumField();
        v11 = v17;

        if (!v18)
        {
          goto LABEL_9;
        }

LABEL_19:
        CCPBDataWriterWriteUint32Field();
        goto LABEL_9;
      }
    }

    else
    {
      if (!v8 || a4 != 4)
      {
        if (v8 && a4 == 5)
        {
          objc_opt_class();
          v21 = CCValidateIsInstanceOfExpectedClass();
          v11 = 0;
          if (v21)
          {
            goto LABEL_8;
          }
        }

        else if (v8 && a4 == 6)
        {
          objc_opt_class();
          v22 = CCValidateIsInstanceOfExpectedClass();
          v11 = 0;
          if (v22)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v11 = 0;
          if (!v8 || a4 != 7)
          {
            goto LABEL_9;
          }

          objc_opt_class();
          v23 = CCValidateIsInstanceOfExpectedClass();
          v11 = 0;
          if (v23)
          {
            goto LABEL_8;
          }
        }

        goto LABEL_32;
      }

      objc_opt_class();
      v19 = CCValidateIsInstanceOfExpectedClass();
      v17 = 0;
      if (v19)
      {
        [v8 unsignedIntegerValue];
        v20 = CCValidateEnumField();
        v11 = v17;

        if (!v20)
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }
    }

    CCSetError();
    v15 = 0;
    v11 = v17;
    goto LABEL_33;
  }

  objc_opt_class();
  v12 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if (!v12)
  {
    goto LABEL_32;
  }

LABEL_8:
  v13 = [v8 data];
  CCPBDataWriterWriteDataField();

LABEL_9:
  v14 = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:v14 error:a5];

  v15 = self;
LABEL_33:

  return v15;
}

@end