@interface _CPValue
- (BOOL)isEqual:(id)a3;
- (NSData)bytes_value;
- (NSString)string_value;
- (_CPListValue)list_value;
- (_CPStruct)struct_value;
- (_CPValue)initWithFacade:(id)a3;
- (double)number_value;
- (int)null_value;
- (unint64_t)hash;
- (void)clearKind;
- (void)setBool_value:(BOOL)a3;
- (void)setBytes_value:(id)a3;
- (void)setList_value:(id)a3;
- (void)setNull_value:(int)a3;
- (void)setNumber_value:(double)a3;
- (void)setString_value:(id)a3;
- (void)setStruct_value:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPValue

- (unint64_t)hash
{
  number_value = self->_number_value;
  if (number_value < 0.0)
  {
    number_value = -number_value;
  }

  *v2.i64 = round(number_value);
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v7 = 2654435761 * self->_null_value;
  v8 = (*vbslq_s8(vnegq_f64(v6), v3, v2).i64 * 2654435760.0) + vcvtd_n_u64_f64(number_value - *v2.i64, 0x40uLL);
  v9 = [(NSString *)self->_string_value hash];
  v10 = 2654435761 * self->_BOOL_value;
  v11 = [(_CPStruct *)self->_struct_value hash];
  v12 = [(_CPListValue *)self->_list_value hash];
  return v9 ^ v7 ^ v10 ^ v11 ^ v12 ^ [(NSData *)self->_bytes_value hash]^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  null_value = self->_null_value;
  if (null_value != [v4 null_value])
  {
    goto LABEL_25;
  }

  number_value = self->_number_value;
  [v4 number_value];
  if (number_value != v7)
  {
    goto LABEL_25;
  }

  v8 = [(_CPValue *)self string_value];
  v9 = [v4 string_value];
  if ((v8 != 0) == (v9 == 0))
  {
    goto LABEL_24;
  }

  v10 = [(_CPValue *)self string_value];
  if (v10)
  {
    v11 = v10;
    v12 = [(_CPValue *)self string_value];
    v13 = [v4 string_value];
    v14 = [v12 isEqual:v13];

    if (!v14)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  BOOL_value = self->_BOOL_value;
  if (BOOL_value != [v4 BOOL_value])
  {
    goto LABEL_25;
  }

  v8 = [(_CPValue *)self struct_value];
  v9 = [v4 struct_value];
  if ((v8 != 0) == (v9 == 0))
  {
    goto LABEL_24;
  }

  v16 = [(_CPValue *)self struct_value];
  if (v16)
  {
    v17 = v16;
    v18 = [(_CPValue *)self struct_value];
    v19 = [v4 struct_value];
    v20 = [v18 isEqual:v19];

    if (!v20)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v8 = [(_CPValue *)self list_value];
  v9 = [v4 list_value];
  if ((v8 != 0) == (v9 == 0))
  {
    goto LABEL_24;
  }

  v21 = [(_CPValue *)self list_value];
  if (v21)
  {
    v22 = v21;
    v23 = [(_CPValue *)self list_value];
    v24 = [v4 list_value];
    v25 = [v23 isEqual:v24];

    if (!v25)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v8 = [(_CPValue *)self bytes_value];
  v9 = [v4 bytes_value];
  if ((v8 != 0) == (v9 == 0))
  {
LABEL_24:

    goto LABEL_25;
  }

  v26 = [(_CPValue *)self bytes_value];
  if (!v26)
  {

LABEL_28:
    v31 = 1;
    goto LABEL_26;
  }

  v27 = v26;
  v28 = [(_CPValue *)self bytes_value];
  v29 = [v4 bytes_value];
  v30 = [v28 isEqual:v29];

  if (v30)
  {
    goto LABEL_28;
  }

LABEL_25:
  v31 = 0;
LABEL_26:

  return v31;
}

- (void)writeTo:(id)a3
{
  v17 = a3;
  if ([(_CPValue *)self null_value])
  {
    null_value = self->_null_value;
    PBDataWriterWriteInt32Field();
  }

  [(_CPValue *)self number_value];
  if (v5 != 0.0)
  {
    number_value = self->_number_value;
    PBDataWriterWriteDoubleField();
  }

  v7 = [(_CPValue *)self string_value];

  if (v7)
  {
    string_value = self->_string_value;
    PBDataWriterWriteStringField();
  }

  if ([(_CPValue *)self BOOL_value])
  {
    BOOL_value = self->_BOOL_value;
    PBDataWriterWriteBOOLField();
  }

  v10 = [(_CPValue *)self struct_value];

  if (v10)
  {
    v11 = [(_CPValue *)self struct_value];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_CPValue *)self list_value];

  if (v12)
  {
    v13 = [(_CPValue *)self list_value];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_CPValue *)self bytes_value];

  v15 = v17;
  if (v14)
  {
    bytes_value = self->_bytes_value;
    PBDataWriterWriteDataField();
    v15 = v17;
  }
}

- (NSData)bytes_value
{
  if (self->_whichKind == 7)
  {
    v3 = self->_bytes_value;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setBytes_value:(id)a3
{
  v7 = a3;
  [(_CPValue *)self clearKind];
  v4 = 7;
  if (!v7)
  {
    v4 = 0;
  }

  self->_whichKind = v4;
  v5 = [v7 copy];
  bytes_value = self->_bytes_value;
  self->_bytes_value = v5;
}

- (_CPListValue)list_value
{
  if (self->_whichKind == 6)
  {
    v3 = self->_list_value;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setList_value:(id)a3
{
  v4 = a3;
  [(_CPValue *)self clearKind];
  v5 = 6;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichKind = v5;
  list_value = self->_list_value;
  self->_list_value = v4;
}

- (_CPStruct)struct_value
{
  if (self->_whichKind == 5)
  {
    v3 = self->_struct_value;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStruct_value:(id)a3
{
  v4 = a3;
  [(_CPValue *)self clearKind];
  v5 = 5;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichKind = v5;
  struct_value = self->_struct_value;
  self->_struct_value = v4;
}

- (void)setBool_value:(BOOL)a3
{
  [(_CPValue *)self clearKind];
  self->_whichKind = 4;
  self->_BOOL_value = a3;
}

- (NSString)string_value
{
  if (self->_whichKind == 3)
  {
    v3 = self->_string_value;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setString_value:(id)a3
{
  v7 = a3;
  [(_CPValue *)self clearKind];
  v4 = 3;
  if (!v7)
  {
    v4 = 0;
  }

  self->_whichKind = v4;
  v5 = [v7 copy];
  string_value = self->_string_value;
  self->_string_value = v5;
}

- (double)number_value
{
  result = 0.0;
  if (self->_whichKind == 2)
  {
    return self->_number_value;
  }

  return result;
}

- (void)setNumber_value:(double)a3
{
  [(_CPValue *)self clearKind];
  self->_whichKind = 2;
  self->_number_value = a3;
}

- (int)null_value
{
  if (self->_whichKind == 1)
  {
    return self->_null_value;
  }

  else
  {
    return 0;
  }
}

- (void)setNull_value:(int)a3
{
  [(_CPValue *)self clearKind];
  self->_whichKind = 1;
  self->_null_value = a3;
}

- (void)clearKind
{
  self->_whichKind = 0;
  self->_null_value = 0;
  self->_number_value = 0.0;
  string_value = self->_string_value;
  self->_string_value = 0;

  self->_BOOL_value = 0;
  struct_value = self->_struct_value;
  self->_struct_value = 0;

  list_value = self->_list_value;
  self->_list_value = 0;

  bytes_value = self->_bytes_value;
  self->_bytes_value = 0;
}

- (_CPValue)initWithFacade:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CPValue *)self init];
  if (v5)
  {
    if (v4 && ([MEMORY[0x1E695DFB0] null], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "isEqual:", v6), v6, !v7))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v4;
        v9 = [[_CPStruct alloc] initWithFacade:v8];

        [(_CPValue *)v5 setStruct_value:v9];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v4;
          v9 = [[_CPListValue alloc] initWithFacade:v10];

          [(_CPValue *)v5 setList_value:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(_CPValue *)v5 setString_value:v4];
            goto LABEL_10;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = v4;
            v14 = [(_CPStruct *)v9 objCType];
            if (*v14 == 66 && !v14[1])
            {
              [(_CPValue *)v5 setBool_value:[(_CPStruct *)v9 BOOLValue]];
            }

            else
            {
              [(_CPStruct *)v9 doubleValue];
              [(_CPValue *)v5 setNumber_value:?];
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(_CPValue *)v5 setBytes_value:v4];
              goto LABEL_10;
            }

            v9 = PARLogHandleForCategory_1454();
            if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_DEBUG))
            {
              v16 = 138412290;
              v17 = objc_opt_class();
              v15 = v17;
              _os_log_debug_impl(&dword_1B1064000, &v9->super.super, OS_LOG_TYPE_DEBUG, "Don't know how to encode %@ as a _CPValue", &v16, 0xCu);
            }
          }
        }
      }
    }

    else
    {
      [(_CPValue *)v5 setNull_value:0];
    }

LABEL_10:
    v11 = v5;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

@end