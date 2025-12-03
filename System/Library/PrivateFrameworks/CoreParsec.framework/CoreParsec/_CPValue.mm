@interface _CPValue
- (BOOL)isEqual:(id)equal;
- (NSData)bytes_value;
- (NSString)string_value;
- (_CPListValue)list_value;
- (_CPStruct)struct_value;
- (_CPValue)initWithFacade:(id)facade;
- (double)number_value;
- (int)null_value;
- (unint64_t)hash;
- (void)clearKind;
- (void)setBool_value:(BOOL)bool_value;
- (void)setBytes_value:(id)bytes_value;
- (void)setList_value:(id)list_value;
- (void)setNull_value:(int)null_value;
- (void)setNumber_value:(double)number_value;
- (void)setString_value:(id)string_value;
- (void)setStruct_value:(id)struct_value;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  null_value = self->_null_value;
  if (null_value != [equalCopy null_value])
  {
    goto LABEL_25;
  }

  number_value = self->_number_value;
  [equalCopy number_value];
  if (number_value != v7)
  {
    goto LABEL_25;
  }

  string_value = [(_CPValue *)self string_value];
  string_value2 = [equalCopy string_value];
  if ((string_value != 0) == (string_value2 == 0))
  {
    goto LABEL_24;
  }

  string_value3 = [(_CPValue *)self string_value];
  if (string_value3)
  {
    v11 = string_value3;
    string_value4 = [(_CPValue *)self string_value];
    string_value5 = [equalCopy string_value];
    v14 = [string_value4 isEqual:string_value5];

    if (!v14)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  BOOL_value = self->_BOOL_value;
  if (BOOL_value != [equalCopy BOOL_value])
  {
    goto LABEL_25;
  }

  string_value = [(_CPValue *)self struct_value];
  string_value2 = [equalCopy struct_value];
  if ((string_value != 0) == (string_value2 == 0))
  {
    goto LABEL_24;
  }

  struct_value = [(_CPValue *)self struct_value];
  if (struct_value)
  {
    v17 = struct_value;
    struct_value2 = [(_CPValue *)self struct_value];
    struct_value3 = [equalCopy struct_value];
    v20 = [struct_value2 isEqual:struct_value3];

    if (!v20)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  string_value = [(_CPValue *)self list_value];
  string_value2 = [equalCopy list_value];
  if ((string_value != 0) == (string_value2 == 0))
  {
    goto LABEL_24;
  }

  list_value = [(_CPValue *)self list_value];
  if (list_value)
  {
    v22 = list_value;
    list_value2 = [(_CPValue *)self list_value];
    list_value3 = [equalCopy list_value];
    v25 = [list_value2 isEqual:list_value3];

    if (!v25)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  string_value = [(_CPValue *)self bytes_value];
  string_value2 = [equalCopy bytes_value];
  if ((string_value != 0) == (string_value2 == 0))
  {
LABEL_24:

    goto LABEL_25;
  }

  bytes_value = [(_CPValue *)self bytes_value];
  if (!bytes_value)
  {

LABEL_28:
    v31 = 1;
    goto LABEL_26;
  }

  v27 = bytes_value;
  bytes_value2 = [(_CPValue *)self bytes_value];
  bytes_value3 = [equalCopy bytes_value];
  v30 = [bytes_value2 isEqual:bytes_value3];

  if (v30)
  {
    goto LABEL_28;
  }

LABEL_25:
  v31 = 0;
LABEL_26:

  return v31;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

  string_value = [(_CPValue *)self string_value];

  if (string_value)
  {
    string_value = self->_string_value;
    PBDataWriterWriteStringField();
  }

  if ([(_CPValue *)self BOOL_value])
  {
    BOOL_value = self->_BOOL_value;
    PBDataWriterWriteBOOLField();
  }

  struct_value = [(_CPValue *)self struct_value];

  if (struct_value)
  {
    struct_value2 = [(_CPValue *)self struct_value];
    PBDataWriterWriteSubmessage();
  }

  list_value = [(_CPValue *)self list_value];

  if (list_value)
  {
    list_value2 = [(_CPValue *)self list_value];
    PBDataWriterWriteSubmessage();
  }

  bytes_value = [(_CPValue *)self bytes_value];

  v15 = toCopy;
  if (bytes_value)
  {
    bytes_value = self->_bytes_value;
    PBDataWriterWriteDataField();
    v15 = toCopy;
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

- (void)setBytes_value:(id)bytes_value
{
  bytes_valueCopy = bytes_value;
  [(_CPValue *)self clearKind];
  v4 = 7;
  if (!bytes_valueCopy)
  {
    v4 = 0;
  }

  self->_whichKind = v4;
  v5 = [bytes_valueCopy copy];
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

- (void)setList_value:(id)list_value
{
  list_valueCopy = list_value;
  [(_CPValue *)self clearKind];
  v5 = 6;
  if (!list_valueCopy)
  {
    v5 = 0;
  }

  self->_whichKind = v5;
  list_value = self->_list_value;
  self->_list_value = list_valueCopy;
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

- (void)setStruct_value:(id)struct_value
{
  struct_valueCopy = struct_value;
  [(_CPValue *)self clearKind];
  v5 = 5;
  if (!struct_valueCopy)
  {
    v5 = 0;
  }

  self->_whichKind = v5;
  struct_value = self->_struct_value;
  self->_struct_value = struct_valueCopy;
}

- (void)setBool_value:(BOOL)bool_value
{
  [(_CPValue *)self clearKind];
  self->_whichKind = 4;
  self->_BOOL_value = bool_value;
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

- (void)setString_value:(id)string_value
{
  string_valueCopy = string_value;
  [(_CPValue *)self clearKind];
  v4 = 3;
  if (!string_valueCopy)
  {
    v4 = 0;
  }

  self->_whichKind = v4;
  v5 = [string_valueCopy copy];
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

- (void)setNumber_value:(double)number_value
{
  [(_CPValue *)self clearKind];
  self->_whichKind = 2;
  self->_number_value = number_value;
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

- (void)setNull_value:(int)null_value
{
  [(_CPValue *)self clearKind];
  self->_whichKind = 1;
  self->_null_value = null_value;
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

- (_CPValue)initWithFacade:(id)facade
{
  v18 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_CPValue *)self init];
  if (v5)
  {
    if (facadeCopy && ([MEMORY[0x1E695DFB0] null], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(facadeCopy, "isEqual:", v6), v6, !v7))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = facadeCopy;
        v9 = [[_CPStruct alloc] initWithFacade:v8];

        [(_CPValue *)v5 setStruct_value:v9];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = facadeCopy;
          v9 = [[_CPListValue alloc] initWithFacade:v10];

          [(_CPValue *)v5 setList_value:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(_CPValue *)v5 setString_value:facadeCopy];
            goto LABEL_10;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = facadeCopy;
            objCType = [(_CPStruct *)v9 objCType];
            if (*objCType == 66 && !objCType[1])
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
              [(_CPValue *)v5 setBytes_value:facadeCopy];
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