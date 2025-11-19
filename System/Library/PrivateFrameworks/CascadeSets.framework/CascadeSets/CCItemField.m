@interface CCItemField
+ (id)_selectorNameForDataType:(unsigned __int8)a3;
- (BOOL)BOOLValue;
- (BOOL)hasBoolValue;
- (BOOL)hasDoubleValue;
- (BOOL)hasFloatValue;
- (BOOL)hasInt32Value;
- (BOOL)hasInt64Value;
- (BOOL)hasRawEnumValue;
- (BOOL)hasUInt32Value;
- (BOOL)hasUInt64Value;
- (CCItemField)initWithFieldType:(unsigned __int16)a3 dataType:(unsigned __int8)a4;
- (CCItemFieldValueStorage)valueStorage;
- (NSObject)boxedJSONValue;
- (double)doubleValue;
- (float)floatValue;
- (id)bytesValue;
- (id)bytesValueNoCopy;
- (id)description;
- (id)repeatedBoolValue;
- (id)repeatedBytesValue;
- (id)repeatedBytesValueNoCopy;
- (id)repeatedDoubleValue;
- (id)repeatedFloatValue;
- (id)repeatedInt32Value;
- (id)repeatedInt64Value;
- (id)repeatedRawEnumValue;
- (id)repeatedStringValue;
- (id)repeatedStringValueNoCopy;
- (id)repeatedSubMessageValue;
- (id)repeatedSubMessageValueNoCopy;
- (id)repeatedUInt32Value;
- (id)repeatedUInt64Value;
- (id)stringValue;
- (id)stringValueNoCopy;
- (id)subMessageValue;
- (id)subMessageValueNoCopy;
- (int)int32Value;
- (int64_t)int64Value;
- (unint64_t)uint64Value;
- (unsigned)rawEnumValue;
- (unsigned)uint32Value;
@end

@implementation CCItemField

- (id)subMessageValueNoCopy
{
  if ([(CCItemField *)self dataType]== 18)
  {
    v3 = self->_valueStorage.value.stringValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:18];
    v3 = 0;
  }

  return v3;
}

- (id)stringValueNoCopy
{
  if ([(CCItemField *)self dataType])
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:0];
    v3 = 0;
  }

  else
  {
    v3 = self->_valueStorage.value.stringValue;
  }

  return v3;
}

+ (id)_selectorNameForDataType:(unsigned __int8)a3
{
  switch(a3)
  {
    case 0u:
      v3 = sel_stringValue;
      goto LABEL_25;
    case 1u:
      v3 = sel_repeatedStringValue;
      goto LABEL_25;
    case 2u:
      v3 = sel_uint32Value;
      goto LABEL_25;
    case 3u:
      v3 = sel_repeatedUInt32Value;
      goto LABEL_25;
    case 4u:
      v3 = sel_uint64Value;
      goto LABEL_25;
    case 5u:
      v3 = sel_repeatedUInt64Value;
      goto LABEL_25;
    case 6u:
      v3 = sel_int32Value;
      goto LABEL_25;
    case 7u:
      v3 = sel_repeatedInt32Value;
      goto LABEL_25;
    case 8u:
      v3 = sel_int64Value;
      goto LABEL_25;
    case 9u:
      v3 = sel_repeatedInt64Value;
      goto LABEL_25;
    case 0xAu:
      v3 = sel_floatValue;
      goto LABEL_25;
    case 0xBu:
      v3 = sel_repeatedFloatValue;
      goto LABEL_25;
    case 0xCu:
      v3 = sel_doubleValue;
      goto LABEL_25;
    case 0xDu:
      v3 = sel_repeatedDoubleValue;
      goto LABEL_25;
    case 0xEu:
      v3 = sel_BOOLValue;
      goto LABEL_25;
    case 0xFu:
      v3 = sel_repeatedBoolValue;
      goto LABEL_25;
    case 0x10u:
      v3 = sel_bytesValue;
      goto LABEL_25;
    case 0x11u:
      v3 = sel_repeatedBytesValue;
      goto LABEL_25;
    case 0x12u:
      v3 = sel_subMessageValue;
      goto LABEL_25;
    case 0x13u:
      v3 = sel_repeatedSubMessageValue;
LABEL_25:
      v4 = NSStringFromSelector(v3);
      break;
    case 0x14u:
      v4 = @"[your-enum-type-name]EnumValue";
      break;
    case 0x15u:
      v4 = @"repeated[your-enum-type-name]EnumValue";
      break;
    default:
      v4 = 0;
      break;
  }

  return v4;
}

- (CCItemField)initWithFieldType:(unsigned __int16)a3 dataType:(unsigned __int8)a4
{
  v7.receiver = self;
  v7.super_class = CCItemField;
  result = [(CCItemField *)&v7 init];
  if (result)
  {
    result->_fieldType = a3;
    result->_dataType = a4;
  }

  return result;
}

- (NSObject)boxedJSONValue
{
  if (self->_valueStorage.hasValue)
  {
    v3 = 0;
    switch([(CCItemField *)self dataType])
    {
      case 0u:
      case 1u:
      case 0x10u:
      case 0x11u:
        v4 = self->_valueStorage.value.stringValue;
        goto LABEL_19;
      case 2u:
      case 0x14u:
        v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:self->_valueStorage.value.uint32Value];
        goto LABEL_19;
      case 3u:
        v16 = objc_opt_new();
        stringValue = self->_valueStorage.value.stringValue;
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __29__CCItemField_boxedJSONValue__block_invoke;
        v39[3] = &unk_1E7C8AF68;
        v3 = v16;
        v40 = v3;
        [stringValue enumerateUInt32ValuesWithBlock:v39];
        v7 = v40;
        goto LABEL_21;
      case 4u:
        v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:self->_valueStorage.value.uint64Value];
        goto LABEL_19;
      case 5u:
        v20 = objc_opt_new();
        v21 = self->_valueStorage.value.stringValue;
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __29__CCItemField_boxedJSONValue__block_invoke_2;
        v37[3] = &unk_1E7C8AF90;
        v3 = v20;
        v38 = v3;
        [v21 enumerateUInt64ValuesWithBlock:v37];
        v7 = v38;
        goto LABEL_21;
      case 6u:
        v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:self->_valueStorage.value.uint32Value];
        goto LABEL_19;
      case 7u:
        v10 = objc_opt_new();
        v11 = self->_valueStorage.value.stringValue;
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __29__CCItemField_boxedJSONValue__block_invoke_3;
        v35[3] = &unk_1E7C8AFB8;
        v3 = v10;
        v36 = v3;
        [v11 enumerateInt32ValuesWithBlock:v35];
        v7 = v36;
        goto LABEL_21;
      case 8u:
        v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:self->_valueStorage.value.uint64Value];
        goto LABEL_19;
      case 9u:
        v12 = objc_opt_new();
        v13 = self->_valueStorage.value.stringValue;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __29__CCItemField_boxedJSONValue__block_invoke_4;
        v33[3] = &unk_1E7C8AFE0;
        v3 = v12;
        v34 = v3;
        [v13 enumerateInt64ValuesWithBlock:v33];
        v7 = v34;
        goto LABEL_21;
      case 0xAu:
        v8 = objc_alloc(MEMORY[0x1E696AD98]);
        LODWORD(v9) = self->_valueStorage.value.uint32Value;
        v4 = [v8 initWithFloat:v9];
        goto LABEL_19;
      case 0xBu:
        v18 = objc_opt_new();
        v19 = self->_valueStorage.value.stringValue;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __29__CCItemField_boxedJSONValue__block_invoke_5;
        v31[3] = &unk_1E7C8B008;
        v3 = v18;
        v32 = v3;
        [v19 enumerateFloatValuesWithBlock:v31];
        v7 = v32;
        goto LABEL_21;
      case 0xCu:
        v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:self->_valueStorage.value.doubleValue];
        goto LABEL_19;
      case 0xDu:
        v22 = objc_opt_new();
        v23 = self->_valueStorage.value.stringValue;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __29__CCItemField_boxedJSONValue__block_invoke_6;
        v29[3] = &unk_1E7C8B030;
        v3 = v22;
        v30 = v3;
        [v23 enumerateDoubleValuesWithBlock:v29];
        v7 = v30;
        goto LABEL_21;
      case 0xEu:
        v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->_valueStorage.value.BOOLValue];
LABEL_19:
        v3 = v4;
        break;
      case 0xFu:
        v5 = objc_opt_new();
        v6 = self->_valueStorage.value.stringValue;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __29__CCItemField_boxedJSONValue__block_invoke_7;
        v27[3] = &unk_1E7C8B058;
        v3 = v5;
        v28 = v3;
        [v6 enumerateBoolValuesWithBlock:v27];
        v7 = v28;
        goto LABEL_21;
      case 0x15u:
        v14 = objc_opt_new();
        v15 = self->_valueStorage.value.stringValue;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __29__CCItemField_boxedJSONValue__block_invoke_8;
        v25[3] = &unk_1E7C8AF68;
        v3 = v14;
        v26 = v3;
        [v15 enumerateUInt32ValuesWithBlock:v25];
        v7 = v26;
LABEL_21:

        break;
      default:
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __29__CCItemField_boxedJSONValue__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:a2];
  [v2 addObject:v3];
}

void __29__CCItemField_boxedJSONValue__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:a2];
  [v2 addObject:v3];
}

void __29__CCItemField_boxedJSONValue__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a2];
  [v2 addObject:v3];
}

void __29__CCItemField_boxedJSONValue__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:a2];
  [v2 addObject:v3];
}

void __29__CCItemField_boxedJSONValue__block_invoke_5(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);
  v4 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v5 = a2;
  v6 = [v4 initWithFloat:v5];
  [v3 addObject:v6];
}

void __29__CCItemField_boxedJSONValue__block_invoke_6(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:a2];
  [v2 addObject:v3];
}

void __29__CCItemField_boxedJSONValue__block_invoke_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [v2 addObject:v3];
}

void __29__CCItemField_boxedJSONValue__block_invoke_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
}

- (id)stringValue
{
  if ([(CCItemField *)self dataType])
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:0];
    v3 = 0;
  }

  else
  {
    v3 = [(NSString *)self->_valueStorage.value.stringValue copy];
  }

  return v3;
}

- (id)repeatedStringValue
{
  if ([(CCItemField *)self dataType]== 1)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_valueStorage.value.uint64Value copyItems:1];
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:1];
    v3 = 0;
  }

  return v3;
}

- (id)repeatedStringValueNoCopy
{
  if ([(CCItemField *)self dataType]== 1)
  {
    v3 = self->_valueStorage.value.stringValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:1];
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasUInt32Value
{
  if ([(CCItemField *)self dataType]== 2)
  {
    return self->_valueStorage.hasValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:2];
    return 0;
  }
}

- (unsigned)uint32Value
{
  if ([(CCItemField *)self dataType]== 2)
  {
    return self->_valueStorage.value.uint32Value;
  }

  [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:2];
  return 0;
}

- (id)repeatedUInt32Value
{
  if ([(CCItemField *)self dataType]== 3)
  {
    v3 = self->_valueStorage.value.stringValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:3];
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasUInt64Value
{
  if ([(CCItemField *)self dataType]== 4)
  {
    return self->_valueStorage.hasValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:4];
    return 0;
  }
}

- (unint64_t)uint64Value
{
  if ([(CCItemField *)self dataType]== 4)
  {
    return self->_valueStorage.value.uint64Value;
  }

  [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:4];
  return 0;
}

- (id)repeatedUInt64Value
{
  if ([(CCItemField *)self dataType]== 5)
  {
    v3 = self->_valueStorage.value.stringValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:5];
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasInt32Value
{
  if ([(CCItemField *)self dataType]== 6)
  {
    return self->_valueStorage.hasValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:6];
    return 0;
  }
}

- (int)int32Value
{
  if ([(CCItemField *)self dataType]== 6)
  {
    return self->_valueStorage.value.int32Value;
  }

  [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:6];
  return 0;
}

- (id)repeatedInt32Value
{
  if ([(CCItemField *)self dataType]== 7)
  {
    v3 = self->_valueStorage.value.stringValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:7];
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasInt64Value
{
  if ([(CCItemField *)self dataType]== 8)
  {
    return self->_valueStorage.hasValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:8];
    return 0;
  }
}

- (int64_t)int64Value
{
  if ([(CCItemField *)self dataType]== 8)
  {
    return self->_valueStorage.value.int64Value;
  }

  [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:8];
  return 0;
}

- (id)repeatedInt64Value
{
  if ([(CCItemField *)self dataType]== 9)
  {
    v3 = self->_valueStorage.value.stringValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:9];
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasFloatValue
{
  if ([(CCItemField *)self dataType]== 10)
  {
    return self->_valueStorage.hasValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:10];
    return 0;
  }
}

- (float)floatValue
{
  if ([(CCItemField *)self dataType]== 10)
  {
    return self->_valueStorage.value.floatValue;
  }

  [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:10];
  return 0.0;
}

- (id)repeatedFloatValue
{
  if ([(CCItemField *)self dataType]== 11)
  {
    v3 = self->_valueStorage.value.stringValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:11];
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasDoubleValue
{
  if ([(CCItemField *)self dataType]== 12)
  {
    return self->_valueStorage.hasValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:12];
    return 0;
  }
}

- (double)doubleValue
{
  if ([(CCItemField *)self dataType]== 12)
  {
    return self->_valueStorage.value.doubleValue;
  }

  [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:12];
  return 0.0;
}

- (id)repeatedDoubleValue
{
  if ([(CCItemField *)self dataType]== 13)
  {
    v3 = self->_valueStorage.value.stringValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:13];
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasBoolValue
{
  if ([(CCItemField *)self dataType]== 14)
  {
    return self->_valueStorage.hasValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:14];
    return 0;
  }
}

- (BOOL)BOOLValue
{
  if ([(CCItemField *)self dataType]== 14)
  {
    return self->_valueStorage.value.BOOLValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:14];
    return 0;
  }
}

- (id)repeatedBoolValue
{
  if ([(CCItemField *)self dataType]== 15)
  {
    v3 = self->_valueStorage.value.stringValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:14];
    v3 = 0;
  }

  return v3;
}

- (id)bytesValue
{
  if ([(CCItemField *)self dataType]== 16)
  {
    v3 = [(NSString *)self->_valueStorage.value.stringValue copy];
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:16];
    v3 = 0;
  }

  return v3;
}

- (id)repeatedBytesValue
{
  if ([(CCItemField *)self dataType]== 17)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_valueStorage.value.uint64Value copyItems:1];
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:17];
    v3 = 0;
  }

  return v3;
}

- (id)bytesValueNoCopy
{
  if ([(CCItemField *)self dataType]== 16)
  {
    v3 = self->_valueStorage.value.stringValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:16];
    v3 = 0;
  }

  return v3;
}

- (id)repeatedBytesValueNoCopy
{
  if ([(CCItemField *)self dataType]== 17)
  {
    v3 = self->_valueStorage.value.stringValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:17];
    v3 = 0;
  }

  return v3;
}

- (id)subMessageValue
{
  if ([(CCItemField *)self dataType]== 18)
  {
    v3 = [(NSString *)self->_valueStorage.value.stringValue copy];
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:18];
    v3 = 0;
  }

  return v3;
}

- (id)repeatedSubMessageValue
{
  if ([(CCItemField *)self dataType]== 19)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_valueStorage.value.uint64Value copyItems:1];
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:19];
    v3 = 0;
  }

  return v3;
}

- (id)repeatedSubMessageValueNoCopy
{
  if ([(CCItemField *)self dataType]== 19)
  {
    v3 = self->_valueStorage.value.stringValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:19];
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasRawEnumValue
{
  if ([(CCItemField *)self dataType]== 20)
  {
    return self->_valueStorage.hasValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:20];
    return 0;
  }
}

- (unsigned)rawEnumValue
{
  if ([(CCItemField *)self dataType]== 20)
  {
    return self->_valueStorage.value.uint32Value;
  }

  [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:20];
  return 0;
}

- (id)repeatedRawEnumValue
{
  if ([(CCItemField *)self dataType]== 21)
  {
    v3 = self->_valueStorage.value.stringValue;
  }

  else
  {
    [(CCItemField *)self appendInvalidFieldAccessErrorForAccessedDataType:21];
    v3 = 0;
  }

  return v3;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = CCTypeIdentifierRegistryBridge();
  v7 = [v6 descriptionForTypeIdentifier:{-[CCItemField fieldType](self, "fieldType")}];
  v8 = [(CCItemField *)self fieldType];
  v9 = CCStringFromItemFieldDataType([(CCItemField *)self dataType]);
  v10 = [(CCItemField *)self boxedJSONValue];
  v11 = [(CCItemField *)self parentMessageField];
  v12 = [v3 initWithFormat:@"%@ - name: %@ fieldType: %hu dataType: %@, value: %@, parentField: %@", v5, v7, v8, v9, v10, v11];

  return v12;
}

- (CCItemFieldValueStorage)valueStorage
{
  v2.stringValue = self->_valueStorage.value;
  v3 = *&self->_valueStorage.hasValue;
  result.value = v2;
  result.hasValue = v3;
  return result;
}

@end