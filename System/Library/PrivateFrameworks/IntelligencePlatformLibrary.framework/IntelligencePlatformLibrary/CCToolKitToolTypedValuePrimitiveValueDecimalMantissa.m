@interface CCToolKitToolTypedValuePrimitiveValueDecimalMantissa
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValuePrimitiveValueDecimalMantissa)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValuePrimitiveValueDecimalMantissa)initWithX_0:(id)a3 x_0Type:(unsigned int)a4 x_1:(id)a5 x_1Type:(unsigned int)a6 x_2:(id)a7 x_2Type:(unsigned int)a8 x_3:(id)a9 x_3Type:(unsigned int)a10 x_4:(id)a11 x_4Type:(unsigned int)a12 x_5:(id)a13 x_5Type:(unsigned int)a14 x_6:(id)a15 x_6Type:(unsigned int)a16 x_7:(id)a17 x_7Type:(unsigned int)a18 error:(id *)a19;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTypedValuePrimitiveValueDecimalMantissa

- (CCToolKitToolTypedValuePrimitiveValueDecimalMantissa)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if ((IsInstanceOfExpectedClass & 1) == 0)
  {
    CCSetError();
    v18 = 0;
    goto LABEL_25;
  }

  v40 = a4;
  v9 = [v6 objectForKeyedSubscript:@"_0"];
  v10 = [v6 objectForKeyedSubscript:@"_1"];
  v44 = [v6 objectForKeyedSubscript:@"_2"];
  v11 = [v6 objectForKeyedSubscript:@"_3"];
  v12 = [v6 objectForKeyedSubscript:@"_4"];
  v13 = [v6 objectForKeyedSubscript:@"_5"];
  v14 = [v6 objectForKeyedSubscript:@"_6"];
  v15 = [v6 objectForKeyedSubscript:@"_7"];
  if (v9)
  {
    v16 = v9;
    v39 = 1;
    if (v10)
    {
LABEL_4:
      v17 = v10;
      v38 = 2;
      goto LABEL_8;
    }
  }

  else
  {
    v39 = 0;
    if (v10)
    {
      goto LABEL_4;
    }
  }

  v38 = 0;
LABEL_8:
  if (v44)
  {
    v19 = v44;
    v37 = 3;
    if (v11)
    {
      goto LABEL_10;
    }

LABEL_13:
    v36 = 0;
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_14:
    v35 = 0;
    goto LABEL_15;
  }

  v37 = 0;
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_10:
  v20 = v11;
  v36 = 4;
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_11:
  v21 = v12;
  v35 = 5;
LABEL_15:
  v41 = v10;
  v43 = self;
  if (v13)
  {
    v22 = v13;
    v23 = 6;
  }

  else
  {
    v23 = 0;
  }

  v42 = v8;
  if (v14)
  {
    v24 = v14;
    v25 = 7;
  }

  else
  {
    v25 = 0;
  }

  v26 = v9;
  if (v15)
  {
    v27 = v15;
    v28 = 8;
  }

  else
  {
    v28 = 0;
  }

  LODWORD(v34) = v28;
  LODWORD(v33) = v25;
  LODWORD(v32) = v23;
  LODWORD(v31) = v35;
  LODWORD(v30) = v36;
  v18 = [[CCToolKitToolTypedValuePrimitiveValueDecimalMantissa alloc] initWithX_0:v26 x_0Type:v39 x_1:v41 x_1Type:v38 x_2:v44 x_2Type:v37 x_3:v11 x_3Type:v30 x_4:v12 x_4Type:v31 x_5:v13 x_5Type:v32 x_6:v14 x_6Type:v33 x_7:v15 x_7Type:v34 error:v40];

  v8 = v42;
  self = v43;
LABEL_25:

  return v18;
}

- (id)jsonDictionary
{
  v4 = objc_opt_new();
  if (self->_x_0Type == 1 && self->_has_0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend__0(self, v3)}];
    [v4 setObject:v5 forKeyedSubscript:@"_0"];
  }

  if (self->_x_1Type == 2 && self->_has_1)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend__1(self, v3)}];
    [v4 setObject:v6 forKeyedSubscript:@"_1"];
  }

  if (self->_x_2Type == 3 && self->_has_2)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend__2(self, v3)}];
    [v4 setObject:v7 forKeyedSubscript:@"_2"];
  }

  if (self->_x_3Type == 4 && self->_has_3)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend__3(self, v3)}];
    [v4 setObject:v8 forKeyedSubscript:@"_3"];
  }

  if (self->_x_4Type == 5 && self->_has_4)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend__4(self, v3)}];
    [v4 setObject:v9 forKeyedSubscript:@"_4"];
  }

  if (self->_x_5Type == 6 && self->_has_5)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend__5(self, v3)}];
    [v4 setObject:v10 forKeyedSubscript:@"_5"];
  }

  if (self->_x_6Type == 7 && self->_has_6)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend__6(self, v3)}];
    [v4 setObject:v11 forKeyedSubscript:@"_6"];
  }

  if (self->_x_7Type == 8 && self->_has_7)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend__7(self, v3)}];
    [v4 setObject:v12 forKeyedSubscript:@"_7"];
  }

  v13 = [v4 copy];

  return v13;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v14 = a3;
  v5 = MEMORY[0x1E69939A8];
  if (self->_has_0)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] uint32Value:self->__0];
    v14[2](v14, v6);
  }

  if (self->_has_1)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 uint32Value:self->__1];
    v14[2](v14, v7);
  }

  if (self->_has_2)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 uint32Value:self->__2];
    v14[2](v14, v8);
  }

  if (self->_has_3)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 uint32Value:self->__3];
    v14[2](v14, v9);
  }

  if (self->_has_4)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 uint32Value:self->__4];
    v14[2](v14, v10);
  }

  if (self->_has_5)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 uint32Value:self->__5];
    v14[2](v14, v11);
  }

  if (self->_has_6)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 uint32Value:self->__6];
    v14[2](v14, v12);
  }

  if (self->_has_7)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 uint32Value:self->__7];
    v14[2](v14, v13);
  }
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v6];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  v10 = MEMORY[0x1E6993AA8];
  if (*&v7[*MEMORY[0x1E6993AB8]] >= *&v7[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_128;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  while (2)
  {
    if (*&v7[*v10])
    {
      v13 = 0;
    }

    else
    {
      v13 = v11 == 0;
    }

    if (v13)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = *v8;
        v18 = *&v7[v17];
        v19 = v18 + 1;
        if (v18 == -1 || v19 > *&v7[*v9])
        {
          break;
        }

        v20 = *(*&v7[*v12] + v18);
        *&v7[v17] = v19;
        v16 |= (v20 & 0x7F) << v14;
        if ((v20 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v14 += 7;
        v21 = v15++ >= 9;
        if (v21)
        {
          v22 = 0;
          if (*&v7[*v10])
          {
            goto LABEL_129;
          }

          goto LABEL_21;
        }
      }

      *&v7[*v10] = 1;
LABEL_17:
      v23 = *&v7[*v10];
      if (v23)
      {
        v22 = 0;
      }

      else
      {
        v22 = v16;
      }

      if (v23)
      {
        goto LABEL_129;
      }

LABEL_21:
      v24 = v22 >> 3;
      if ((v22 >> 3) > 4)
      {
        if (v24 > 6)
        {
          if (v24 == 7)
          {
            v74 = 0;
            v75 = 0;
            v76 = 0;
            while (1)
            {
              v77 = *v8;
              v78 = *&v7[v77];
              v79 = v78 + 1;
              if (v78 == -1 || v79 > *&v7[*v9])
              {
                break;
              }

              v80 = *(*&v7[*v12] + v78);
              *&v7[v77] = v79;
              v76 |= (v80 & 0x7F) << v74;
              if ((v80 & 0x80) == 0)
              {
                goto LABEL_103;
              }

              v74 += 7;
              v21 = v75++ >= 9;
              if (v21)
              {
                LODWORD(v76) = 0;
                goto LABEL_105;
              }
            }

            *&v7[*v10] = 1;
LABEL_103:
            if (*&v7[*v10])
            {
              LODWORD(v76) = 0;
            }

LABEL_105:
            v11 = 0;
            self->__6 = v76;
            self->_has_6 = 1;
            v81 = 80;
            v82 = 7;
            goto LABEL_122;
          }

          if (v24 == 8)
          {
            v46 = 0;
            v47 = 0;
            v48 = 0;
            while (1)
            {
              v49 = *v8;
              v50 = *&v7[v49];
              v51 = v50 + 1;
              if (v50 == -1 || v51 > *&v7[*v9])
              {
                break;
              }

              v52 = *(*&v7[*v12] + v50);
              *&v7[v49] = v51;
              v48 |= (v52 & 0x7F) << v46;
              if ((v52 & 0x80) == 0)
              {
                goto LABEL_119;
              }

              v46 += 7;
              v21 = v47++ >= 9;
              if (v21)
              {
                LODWORD(v48) = 0;
                goto LABEL_121;
              }
            }

            *&v7[*v10] = 1;
LABEL_119:
            if (*&v7[*v10])
            {
              LODWORD(v48) = 0;
            }

LABEL_121:
            v11 = 0;
            self->__7 = v48;
            self->_has_7 = 1;
            v81 = 84;
            v82 = 8;
            goto LABEL_122;
          }
        }

        else
        {
          if (v24 == 5)
          {
            v60 = 0;
            v61 = 0;
            v62 = 0;
            while (1)
            {
              v63 = *v8;
              v64 = *&v7[v63];
              v65 = v64 + 1;
              if (v64 == -1 || v65 > *&v7[*v9])
              {
                break;
              }

              v66 = *(*&v7[*v12] + v64);
              *&v7[v63] = v65;
              v62 |= (v66 & 0x7F) << v60;
              if ((v66 & 0x80) == 0)
              {
                goto LABEL_95;
              }

              v60 += 7;
              v21 = v61++ >= 9;
              if (v21)
              {
                LODWORD(v62) = 0;
                goto LABEL_97;
              }
            }

            *&v7[*v10] = 1;
LABEL_95:
            if (*&v7[*v10])
            {
              LODWORD(v62) = 0;
            }

LABEL_97:
            v11 = 0;
            self->__4 = v62;
            self->_has_4 = 1;
            v81 = 72;
            v82 = 5;
            goto LABEL_122;
          }

          if (v24 == 6)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            while (1)
            {
              v35 = *v8;
              v36 = *&v7[v35];
              v37 = v36 + 1;
              if (v36 == -1 || v37 > *&v7[*v9])
              {
                break;
              }

              v38 = *(*&v7[*v12] + v36);
              *&v7[v35] = v37;
              v34 |= (v38 & 0x7F) << v32;
              if ((v38 & 0x80) == 0)
              {
                goto LABEL_111;
              }

              v32 += 7;
              v21 = v33++ >= 9;
              if (v21)
              {
                LODWORD(v34) = 0;
                goto LABEL_113;
              }
            }

            *&v7[*v10] = 1;
LABEL_111:
            if (*&v7[*v10])
            {
              LODWORD(v34) = 0;
            }

LABEL_113:
            v11 = 0;
            self->__5 = v34;
            self->_has_5 = 1;
            v81 = 76;
            v82 = 6;
            goto LABEL_122;
          }
        }
      }

      else if (v24 > 2)
      {
        if (v24 == 3)
        {
          v67 = 0;
          v68 = 0;
          v69 = 0;
          while (1)
          {
            v70 = *v8;
            v71 = *&v7[v70];
            v72 = v71 + 1;
            if (v71 == -1 || v72 > *&v7[*v9])
            {
              break;
            }

            v73 = *(*&v7[*v12] + v71);
            *&v7[v70] = v72;
            v69 |= (v73 & 0x7F) << v67;
            if ((v73 & 0x80) == 0)
            {
              goto LABEL_99;
            }

            v67 += 7;
            v21 = v68++ >= 9;
            if (v21)
            {
              LODWORD(v69) = 0;
              goto LABEL_101;
            }
          }

          *&v7[*v10] = 1;
LABEL_99:
          if (*&v7[*v10])
          {
            LODWORD(v69) = 0;
          }

LABEL_101:
          v11 = 0;
          self->__2 = v69;
          self->_has_2 = 1;
          v81 = 64;
          v82 = 3;
          goto LABEL_122;
        }

        if (v24 == 4)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          while (1)
          {
            v42 = *v8;
            v43 = *&v7[v42];
            v44 = v43 + 1;
            if (v43 == -1 || v44 > *&v7[*v9])
            {
              break;
            }

            v45 = *(*&v7[*v12] + v43);
            *&v7[v42] = v44;
            v41 |= (v45 & 0x7F) << v39;
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_115;
            }

            v39 += 7;
            v21 = v40++ >= 9;
            if (v21)
            {
              LODWORD(v41) = 0;
              goto LABEL_117;
            }
          }

          *&v7[*v10] = 1;
LABEL_115:
          if (*&v7[*v10])
          {
            LODWORD(v41) = 0;
          }

LABEL_117:
          v11 = 0;
          self->__3 = v41;
          self->_has_3 = 1;
          v81 = 68;
          v82 = 4;
          goto LABEL_122;
        }
      }

      else
      {
        if (v24 == 1)
        {
          v53 = 0;
          v54 = 0;
          v55 = 0;
          while (1)
          {
            v56 = *v8;
            v57 = *&v7[v56];
            v58 = v57 + 1;
            if (v57 == -1 || v58 > *&v7[*v9])
            {
              break;
            }

            v59 = *(*&v7[*v12] + v57);
            *&v7[v56] = v58;
            v55 |= (v59 & 0x7F) << v53;
            if ((v59 & 0x80) == 0)
            {
              goto LABEL_91;
            }

            v53 += 7;
            v21 = v54++ >= 9;
            if (v21)
            {
              LODWORD(v55) = 0;
              goto LABEL_93;
            }
          }

          *&v7[*v10] = 1;
LABEL_91:
          if (*&v7[*v10])
          {
            LODWORD(v55) = 0;
          }

LABEL_93:
          v11 = 0;
          self->__0 = v55;
          self->_has_0 = 1;
          self->_x_0Type = 1;
LABEL_123:
          if (*&v7[*v8] < *&v7[*v9])
          {
            continue;
          }

          break;
        }

        if (v24 == 2)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          while (1)
          {
            v28 = *v8;
            v29 = *&v7[v28];
            v30 = v29 + 1;
            if (v29 == -1 || v30 > *&v7[*v9])
            {
              break;
            }

            v31 = *(*&v7[*v12] + v29);
            *&v7[v28] = v30;
            v27 |= (v31 & 0x7F) << v25;
            if ((v31 & 0x80) == 0)
            {
              goto LABEL_107;
            }

            v25 += 7;
            v21 = v26++ >= 9;
            if (v21)
            {
              LODWORD(v27) = 0;
              goto LABEL_109;
            }
          }

          *&v7[*v10] = 1;
LABEL_107:
          if (*&v7[*v10])
          {
            LODWORD(v27) = 0;
          }

LABEL_109:
          v11 = 0;
          self->__1 = v27;
          self->_has_1 = 1;
          v81 = 60;
          v82 = 2;
LABEL_122:
          *(&self->super.super.isa + v81) = v82;
          goto LABEL_123;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        v11 = 0;
      }

      else
      {
        v83 = objc_opt_class();
        NSStringFromClass(v83);
        v92 = a4;
        v85 = v84 = v6;
        v86 = *&v7[*v10];
        v11 = CCSkipFieldErrorForMessage();

        v6 = v84;
        a4 = v92;
      }

      goto LABEL_123;
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_130;
  }

LABEL_128:
  if (!*&v7[*v10])
  {
    v90 = 1;
    goto LABEL_132;
  }

LABEL_129:
  v87 = objc_opt_class();
  v11 = NSStringFromClass(v87);
  v88 = *&v7[*v10];
  v89 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_130:
  v90 = 0;
LABEL_132:

  return v90;
}

- (CCToolKitToolTypedValuePrimitiveValueDecimalMantissa)initWithX_0:(id)a3 x_0Type:(unsigned int)a4 x_1:(id)a5 x_1Type:(unsigned int)a6 x_2:(id)a7 x_2Type:(unsigned int)a8 x_3:(id)a9 x_3Type:(unsigned int)a10 x_4:(id)a11 x_4Type:(unsigned int)a12 x_5:(id)a13 x_5Type:(unsigned int)a14 x_6:(id)a15 x_6Type:(unsigned int)a16 x_7:(id)a17 x_7Type:(unsigned int)a18 error:(id *)a19
{
  v23 = a3;
  v24 = a5;
  v25 = a7;
  v26 = a9;
  v27 = a11;
  v58 = a13;
  v57 = a15;
  v56 = a17;
  v28 = objc_opt_new();
  v29 = 0;
  v55 = v24;
  if (v23)
  {
    v30 = v26;
    v31 = v27;
    if (a4 == 1)
    {
      objc_opt_class();
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v29 = 0;
      if (!IsInstanceOfExpectedClass)
      {
        v38 = v25;
        v39 = v30;
        v40 = v27;
        CCSetError();
        v41 = 0;
LABEL_51:
        v44 = v58;
        goto LABEL_52;
      }

      [v23 unsignedIntValue];
      CCPBDataWriterWriteUint32Field();
    }

    if (!v24)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v30 = v26;
    v31 = v27;
    if (!v24)
    {
LABEL_11:
      v34 = v29;
      goto LABEL_12;
    }
  }

  if (a6 != 2)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  v33 = CCValidateIsInstanceOfExpectedClass();
  v34 = v29;

  if (!v33)
  {
    v38 = v25;
    v39 = v30;
    v40 = v31;
    CCSetError();
    v41 = 0;
    v29 = v34;
    goto LABEL_51;
  }

  [v24 unsignedIntValue];
  CCPBDataWriterWriteUint32Field();
LABEL_12:
  v51 = self;
  if (v25 && a8 == 3)
  {
    objc_opt_class();
    v35 = CCValidateIsInstanceOfExpectedClass();
    v29 = v34;

    if (!v35)
    {
      goto LABEL_27;
    }

    [v25 unsignedIntValue];
    CCPBDataWriterWriteUint32Field();
    if (!v30)
    {
LABEL_23:
      v37 = v29;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v29 = v34;
    if (!v30)
    {
      goto LABEL_23;
    }
  }

  if (a10 != 4)
  {
    goto LABEL_23;
  }

  objc_opt_class();
  v36 = CCValidateIsInstanceOfExpectedClass();
  v37 = v29;

  if (!v36)
  {
    v38 = v25;
    v39 = v30;
    v40 = v31;
LABEL_46:
    CCSetError();
    v41 = 0;
    v29 = v37;
    goto LABEL_47;
  }

  [v30 unsignedIntValue];
  CCPBDataWriterWriteUint32Field();
  if (!v31)
  {
    goto LABEL_30;
  }

LABEL_24:
  if (a12 == 5)
  {
    objc_opt_class();
    v42 = CCValidateIsInstanceOfExpectedClass();
    v29 = v37;

    if (v42)
    {
      v38 = v25;
      [v31 unsignedIntValue];
      CCPBDataWriterWriteUint32Field();
      goto LABEL_31;
    }

LABEL_27:
    v38 = v25;
    v39 = v30;
    v40 = v31;
    goto LABEL_28;
  }

LABEL_30:
  v38 = v25;
  v29 = v37;
LABEL_31:
  v39 = v30;
  v40 = v31;
  if (v58 && a14 == 6)
  {
    objc_opt_class();
    v43 = CCValidateIsInstanceOfExpectedClass();
    v44 = v58;
    v45 = v29;

    if (!v43)
    {
      CCSetError();
      v41 = 0;
      v29 = v45;
      goto LABEL_48;
    }

    [v58 unsignedIntValue];
    CCPBDataWriterWriteUint32Field();
  }

  else
  {
    v45 = v29;
  }

  if (!v57 || a16 != 7)
  {
    v29 = v45;
LABEL_42:
    if (!v56 || a18 != 8)
    {
      v37 = v29;
      goto LABEL_50;
    }

    objc_opt_class();
    v47 = CCValidateIsInstanceOfExpectedClass();
    v37 = v29;

    if (v47)
    {
      [v56 unsignedIntValue];
      CCPBDataWriterWriteUint32Field();
LABEL_50:
      v48 = [v28 immutableData];
      v49 = [v52 initWithData:v48 error:a19];

      self = v49;
      v29 = v37;
      v41 = v49;
      goto LABEL_51;
    }

    goto LABEL_46;
  }

  objc_opt_class();
  v46 = CCValidateIsInstanceOfExpectedClass();
  v29 = v45;

  if (v46)
  {
    [v57 unsignedIntValue];
    CCPBDataWriterWriteUint32Field();
    goto LABEL_42;
  }

LABEL_28:
  CCSetError();
  v41 = 0;
LABEL_47:
  v44 = v58;
LABEL_48:
  self = v51;
LABEL_52:

  return v41;
}

@end