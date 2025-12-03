@interface NRDevicePropertyDiff
+ (id)packPropertyValue:(id)value;
+ (id)unpackPropertyValue:(id)value;
- (BOOL)isEqual:(id)equal;
- (NRDevicePropertyDiff)initWithCoder:(id)coder;
- (NRDevicePropertyDiff)initWithProtobuf:(id)protobuf;
- (NRDevicePropertyDiff)initWithValue:(id)value;
- (NRPBDevicePropertyDiff)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NRDevicePropertyDiff

- (NRDevicePropertyDiff)initWithValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = NRDevicePropertyDiff;
  v6 = [(NRDevicePropertyDiff *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, value);
  }

  return v7;
}

- (NRDevicePropertyDiff)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = [(NRDevicePropertyDiff *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    if (protobufCopy)
    {
      v7 = protobufCopy[1];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = [v6 unpackPropertyValue:v8];
    value = v5->_value;
    v5->_value = v9;

    [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:v5->_value name:@"property value" owner:v5];
  }

  return v5;
}

- (NRPBDevicePropertyDiff)protobuf
{
  v3 = objc_opt_new();
  v4 = [objc_opt_class() packPropertyValue:self->_value];
  [(NRPBDevicePropertyDiff *)v3 setValue:v4];

  return v3;
}

- (NRDevicePropertyDiff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NRDevicePropertyDiff *)self init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (!v6)
  {
    v10 = +[NRMutableDeviceProperty enclosedClassTypes];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:0x1F5B7C860];
    value = v5->_value;
    v5->_value = v11;

    [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:v5->_value name:@"property value" owner:v5];
LABEL_5:
    v9 = v5;
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [[NRPBDevicePropertyDiff alloc] initWithData:v6];
  v9 = [(NRDevicePropertyDiff *)v5 initWithProtobuf:v8];

LABEL_6:
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protobuf = [(NRDevicePropertyDiff *)self protobuf];
  data = [protobuf data];
  [coderCopy encodeObject:data forKey:@"data"];
}

- (unint64_t)hash
{
  value = self->_value;
  v4 = [objc_opt_class() hash];
  return [self->_value hash]- v4 + 32 * v4 + 961;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_7;
  }

  value = self->_value;
  if (value == equalCopy->_value)
  {
LABEL_5:
    v6 = 1;
  }

  else
  {
    v6 = [value isEqual:?];
  }

LABEL_7:

  return v6;
}

- (id)description
{
  value = self->_value;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = self->_value;
  if (isKindOfClass)
  {
    v6 = [NRTextFormattingUtilities dateFormatter:self->_value];
  }

  else
  {
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();
    v8 = self->_value;
    if (v7)
    {
      [v8 UUIDString];
    }

    else
    {
      [v8 description];
    }
    v6 = ;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NRDevicePropertyDiff allocWithZone:?]];
  objc_storeStrong(&v4->_value, self->_value);
  return v4;
}

+ (id)packPropertyValue:(id)value
{
  v90 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v5 = objc_alloc_init(NRPBPropertyValue);
  if (!valueCopy)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x1E696ACC8];
    nr_filteredError = [valueCopy nr_filteredError];
    v8 = [v6 nr_secureArchivedDataWithRootObject:nr_filteredError];

    if (v8)
    {
      [(NRPBPropertyValue *)v5 setDataValue:v8];
      [(NRPBPropertyValue *)v5 setIsError:1];
    }

    goto LABEL_67;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_6:

    v5 = 0;
    goto LABEL_68;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = valueCopy;
    v8 = objc_alloc_init(NRPBNumber);
    [v9 timeIntervalSinceReferenceDate];
    v11 = v10;

    [(NRPBNumber *)v8 setDoubleValue:v11];
    [(NRPBPropertyValue *)v5 setNumberValue:v8];
    [(NRPBPropertyValue *)v5 setIsDate:1];
LABEL_67:

    goto LABEL_68;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = valueCopy;
    v12 = objc_alloc_init(NRPBNumber);
    objCType = [(NRPBNumber *)v8 objCType];
    if (*objCType == 105 && !objCType[1])
    {
      intValue = [(NRPBNumber *)v8 intValue];
      v30 = v12;
LABEL_48:
      [(NRPBNumber *)v30 setInt32Value:intValue];
LABEL_64:
      if (!v12)
      {
        goto LABEL_67;
      }

      [(NRPBPropertyValue *)v5 setNumberValue:v12];
      goto LABEL_66;
    }

    objCType2 = [(NRPBNumber *)v8 objCType];
    if (*objCType2 == 73 && !objCType2[1])
    {
      unsignedIntValue = [(NRPBNumber *)v8 unsignedIntValue];
      v32 = v12;
LABEL_50:
      [(NRPBNumber *)v32 setInt32Value:unsignedIntValue];
LABEL_63:
      [(NRPBNumber *)v12 setIsUnsigned:1];
      goto LABEL_64;
    }

    objCType3 = [(NRPBNumber *)v8 objCType];
    if (*objCType3 == 113 && !objCType3[1])
    {
      [(NRPBNumber *)v12 setInt64Value:[(NRPBNumber *)v8 longLongValue]];
      goto LABEL_64;
    }

    objCType4 = [(NRPBNumber *)v8 objCType];
    if (*objCType4 == 81 && !objCType4[1])
    {
      [(NRPBNumber *)v12 setInt64Value:[(NRPBNumber *)v8 unsignedLongLongValue]];
      goto LABEL_63;
    }

    objCType5 = [(NRPBNumber *)v8 objCType];
    if (*objCType5 == 115 && !objCType5[1])
    {
      [(NRPBNumber *)v12 setInt32Value:[(NRPBNumber *)v8 shortValue]];
      v33 = v12;
      v34 = 1;
    }

    else
    {
      objCType6 = [(NRPBNumber *)v8 objCType];
      if (*objCType6 == 83 && !objCType6[1])
      {
        [(NRPBNumber *)v12 setInt32Value:[(NRPBNumber *)v8 unsignedShortValue]];
        v35 = v12;
        v36 = 1;
        goto LABEL_62;
      }

      objCType7 = [(NRPBNumber *)v8 objCType];
      if (*objCType7 != 99 || objCType7[1])
      {
        objCType8 = [(NRPBNumber *)v8 objCType];
        if (*objCType8 != 67 || objCType8[1])
        {
          objCType9 = [(NRPBNumber *)v8 objCType];
          if (*objCType9 != 113 || objCType9[1])
          {
            objCType10 = [(NRPBNumber *)v8 objCType];
            if (*objCType10 != 81 || objCType10[1])
            {
              objCType11 = [(NRPBNumber *)v8 objCType];
              if (*objCType11 == 66 && !objCType11[1])
              {
                [(NRPBNumber *)v12 setBoolValue:[(NRPBNumber *)v8 BOOLValue]];
              }

              else
              {
                objCType12 = [(NRPBNumber *)v8 objCType];
                if (*objCType12 == 102 && !objCType12[1])
                {
                  [(NRPBNumber *)v8 floatValue];
                  [(NRPBNumber *)v12 setFloatValue:?];
                }

                else
                {
                  objCType13 = [(NRPBNumber *)v8 objCType];
                  if (*objCType13 != 100 || objCType13[1])
                  {
                    goto LABEL_66;
                  }

                  [(NRPBNumber *)v8 doubleValue];
                  [(NRPBNumber *)v12 setDoubleValue:?];
                }
              }

              goto LABEL_64;
            }

            unsignedIntValue = [(NRPBNumber *)v8 unsignedIntegerValue];
            v32 = v12;
            goto LABEL_50;
          }

          intValue = [(NRPBNumber *)v8 integerValue];
          v30 = v12;
          goto LABEL_48;
        }

        [(NRPBNumber *)v12 setInt32Value:[(NRPBNumber *)v8 unsignedCharValue]];
        v35 = v12;
        v36 = 0;
LABEL_62:
        [(NRPBNumber *)v35 setIsShortOrChar:v36];
        goto LABEL_63;
      }

      [(NRPBNumber *)v12 setInt32Value:[(NRPBNumber *)v8 charValue]];
      v33 = v12;
      v34 = 0;
    }

    [(NRPBNumber *)v33 setIsShortOrChar:v34];
    goto LABEL_64;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = valueCopy;
    v12 = objc_alloc_init(NRPBSize);
    if (!strcmp([(NRPBNumber *)v8 objCType], "{CGSize=dd}"))
    {
      [(NRPBNumber *)v8 sizeValue];
      *&v26 = v26;
      [(NRPBNumber *)v12 setWidth:v26];
      [(NRPBNumber *)v8 sizeValue];
      *&v28 = v27;
      [(NRPBNumber *)v12 setHeight:v28];
      if (!v12)
      {
        goto LABEL_67;
      }

      [(NRPBPropertyValue *)v5 setSizeValue:v12];
    }

LABEL_66:

    goto LABEL_67;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NRPBPropertyValue *)v5 setStringValue:valueCopy];
    goto LABEL_68;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NRPBPropertyValue *)v5 setIsSecurePropertyValue:1];
      [valueCopy data];
    }

    else
    {
      [MEMORY[0x1E695DEF0] fromUUID:valueCopy];
    }
    v8 = ;
    [(NRPBPropertyValue *)v5 setUUIDValue:v8];
    goto LABEL_67;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NRPBPropertyValue *)v5 setDataValue:valueCopy];
    goto LABEL_68;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = valueCopy;
    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NRPBPropertyValue *)v5 setArrayValues:v40];

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    data = v39;
    v42 = [data countByEnumeratingWithState:&v83 objects:v89 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v84;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v84 != v44)
          {
            objc_enumerationMutation(data);
          }

          v46 = [self packPropertyValue:*(*(&v83 + 1) + 8 * i)];
          if (v46)
          {
            arrayValues = [(NRPBPropertyValue *)v5 arrayValues];
            [arrayValues addObject:v46];
          }
        }

        v43 = [data countByEnumeratingWithState:&v83 objects:v89 count:16];
      }

      while (v43);
    }

LABEL_100:
    arrayValues2 = [(NRPBPropertyValue *)v5 arrayValues];
    v58 = [arrayValues2 count];

    if (!v58)
    {
      [(NRPBPropertyValue *)v5 setArrayValues:0];
    }

    goto LABEL_102;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v48 = valueCopy;
    [(NRPBPropertyValue *)v5 setIsMiniUUIDSet:1];
    data = [v48 data];

    [(NRPBPropertyValue *)v5 setDataValue:data];
LABEL_102:

    goto LABEL_68;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v49 = valueCopy;
    v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NRPBPropertyValue *)v5 setArrayValues:v50];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    data = v49;
    v51 = [data countByEnumeratingWithState:&v79 objects:v88 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v80;
      do
      {
        for (j = 0; j != v52; ++j)
        {
          if (*v80 != v53)
          {
            objc_enumerationMutation(data);
          }

          v55 = [self packPropertyValue:*(*(&v79 + 1) + 8 * j)];
          if (v55)
          {
            arrayValues3 = [(NRPBPropertyValue *)v5 arrayValues];
            [arrayValues3 addObject:v55];
          }
        }

        v52 = [data countByEnumeratingWithState:&v79 objects:v88 count:16];
      }

      while (v52);
    }

    [(NRPBPropertyValue *)v5 setIsSet:1];
    goto LABEL_100;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v59 = valueCopy;
  v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(NRPBPropertyValue *)v5 setArrayValues:v60];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = [v59 allKeys];
  v61 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
  v73 = v59;
  if (v61)
  {
    v62 = v61;
    v63 = *v76;
    do
    {
      for (k = 0; k != v62; ++k)
      {
        if (*v76 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v65 = *(*(&v75 + 1) + 8 * k);
        v66 = [v59 objectForKeyedSubscript:{v65, v73}];
        v67 = [self packPropertyValue:v65];
        if (v67)
        {
          v68 = [self packPropertyValue:v66];
          v69 = v68;
          if (v68)
          {
            [v68 setDictionaryKey:v67];
            arrayValues4 = [(NRPBPropertyValue *)v5 arrayValues];
            [arrayValues4 addObject:v69];

            v59 = v73;
          }
        }
      }

      v62 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
    }

    while (v62);
  }

  arrayValues5 = [(NRPBPropertyValue *)v5 arrayValues];
  v72 = [arrayValues5 count];

  if (!v72)
  {
    [(NRPBPropertyValue *)v5 setArrayValues:0];
  }

LABEL_68:
  v37 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)unpackPropertyValue:(id)value
{
  v101 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  numberValue = [valueCopy numberValue];

  if (numberValue)
  {
    numberValue2 = [valueCopy numberValue];
    hasInt32Value = [numberValue2 hasInt32Value];

    numberValue3 = [valueCopy numberValue];
    v9 = numberValue3;
    if (hasInt32Value)
    {
      hasIsShortOrChar = [numberValue3 hasIsShortOrChar];

      numberValue4 = [valueCopy numberValue];
      v12 = numberValue4;
      if (hasIsShortOrChar)
      {
        isShortOrChar = [numberValue4 isShortOrChar];

        numberValue5 = [valueCopy numberValue];
        isUnsigned = [numberValue5 isUnsigned];

        v16 = MEMORY[0x1E696AD98];
        numberValue6 = [valueCopy numberValue];
        int32Value = [numberValue6 int32Value];
        if (isShortOrChar)
        {
          if (isUnsigned)
          {
            [v16 numberWithUnsignedShort:int32Value];
          }

          else
          {
            [v16 numberWithShort:int32Value];
          }
        }

        else if (isUnsigned)
        {
          [v16 numberWithUnsignedChar:int32Value];
        }

        else
        {
          [v16 numberWithChar:int32Value];
        }
      }

      else
      {
        isUnsigned2 = [numberValue4 isUnsigned];

        v35 = MEMORY[0x1E696AD98];
        numberValue6 = [valueCopy numberValue];
        int32Value2 = [numberValue6 int32Value];
        if (isUnsigned2)
        {
          [v35 numberWithUnsignedInt:int32Value2];
        }

        else
        {
          [v35 numberWithInt:int32Value2];
        }
      }
    }

    else
    {
      hasInt64Value = [numberValue3 hasInt64Value];

      numberValue7 = [valueCopy numberValue];
      v30 = numberValue7;
      if (!hasInt64Value)
      {
        hasFloatValue = [numberValue7 hasFloatValue];

        if (hasFloatValue)
        {
          v38 = MEMORY[0x1E696AD98];
          numberValue6 = [valueCopy numberValue];
          [numberValue6 floatValue];
          v39 = [v38 numberWithFloat:?];
        }

        else
        {
          numberValue8 = [valueCopy numberValue];
          hasDoubleValue = [numberValue8 hasDoubleValue];

          if (hasDoubleValue)
          {
            v44 = MEMORY[0x1E696AD98];
            numberValue6 = [valueCopy numberValue];
            [numberValue6 doubleValue];
            v39 = [v44 numberWithDouble:?];
          }

          else
          {
            numberValue9 = [valueCopy numberValue];
            hasBoolValue = [numberValue9 hasBoolValue];

            if (!hasBoolValue)
            {
              sizeValue2 = 0;
LABEL_35:
              if ([valueCopy isDate])
              {
                v51 = MEMORY[0x1E695DF00];
                [sizeValue2 doubleValue];
                toUUID = [v51 dateWithTimeIntervalSinceReferenceDate:?];
              }

              else
              {
                toUUID = sizeValue2;
              }

              goto LABEL_38;
            }

            v50 = MEMORY[0x1E696AD98];
            numberValue6 = [valueCopy numberValue];
            v39 = [v50 numberWithBool:{objc_msgSend(numberValue6, "BOOLValue")}];
          }
        }

LABEL_34:
        sizeValue2 = v39;

        goto LABEL_35;
      }

      isUnsigned3 = [numberValue7 isUnsigned];

      v32 = MEMORY[0x1E696AD98];
      numberValue6 = [valueCopy numberValue];
      int64Value = [numberValue6 int64Value];
      if (isUnsigned3)
      {
        [v32 numberWithUnsignedLongLong:int64Value];
      }

      else
      {
        [v32 numberWithLongLong:int64Value];
      }
    }
    v39 = ;
    goto LABEL_34;
  }

  sizeValue = [valueCopy sizeValue];

  if (sizeValue)
  {
    v20 = MEMORY[0x1E696B098];
    sizeValue2 = [valueCopy sizeValue];
    [sizeValue2 width];
    v23 = v22;
    sizeValue3 = [valueCopy sizeValue];
    [sizeValue3 height];
    v26 = [v20 valueWithSize:{v23, v25}];
LABEL_9:
    v27 = v26;

LABEL_39:
    goto LABEL_40;
  }

  stringValue = [valueCopy stringValue];

  if (stringValue)
  {
    stringValue2 = [valueCopy stringValue];
    goto LABEL_19;
  }

  uUIDValue = [valueCopy uUIDValue];

  if (uUIDValue)
  {
    if (![valueCopy isSecurePropertyValue])
    {
      sizeValue2 = [valueCopy uUIDValue];
      toUUID = [sizeValue2 toUUID];
      goto LABEL_38;
    }

    v46 = [NRSecureDevicePropertyID alloc];
    uUIDValue2 = [valueCopy uUIDValue];
LABEL_46:
    sizeValue2 = uUIDValue2;
    toUUID = [(NRSecureDevicePropertyID *)v46 initWithData:uUIDValue2];
LABEL_38:
    v27 = toUUID;
    goto LABEL_39;
  }

  dataValue = [valueCopy dataValue];

  if (dataValue)
  {
    if (![valueCopy isMiniUUIDSet])
    {
      if ([valueCopy isError])
      {
        v73 = MEMORY[0x1E696ACD0];
        sizeValue2 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
        sizeValue3 = [valueCopy dataValue];
        v26 = [v73 nr_secureUnarchiveObjectOfClasses:sizeValue2 withData:sizeValue3];
        goto LABEL_9;
      }

      stringValue2 = [valueCopy dataValue];
LABEL_19:
      v27 = stringValue2;
      goto LABEL_40;
    }

    v46 = [NRMiniUUIDSet alloc];
    uUIDValue2 = [valueCopy dataValue];
    goto LABEL_46;
  }

  arrayValues = [valueCopy arrayValues];
  if (!arrayValues || (v57 = arrayValues, [valueCopy arrayValues], v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend(v58, "count"), v58, v57, !v59))
  {
    v27 = 0;
    goto LABEL_40;
  }

  arrayValues2 = [valueCopy arrayValues];
  firstObject = [arrayValues2 firstObject];

  dictionaryKey = [firstObject dictionaryKey];

  if (!dictionaryKey)
  {
    if ([valueCopy isSet])
    {
      v63 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      arrayValues3 = [valueCopy arrayValues];
      v75 = [arrayValues3 countByEnumeratingWithState:&v86 objects:v98 count:16];
      if (v75)
      {
        v76 = v75;
        v77 = *v87;
        do
        {
          for (i = 0; i != v76; ++i)
          {
            if (*v87 != v77)
            {
              objc_enumerationMutation(arrayValues3);
            }

            v79 = [self unpackPropertyValue:*(*(&v86 + 1) + 8 * i)];
            if (v79)
            {
              [v63 addObject:v79];
            }
          }

          v76 = [arrayValues3 countByEnumeratingWithState:&v86 objects:v98 count:16];
        }

        while (v76);
      }
    }

    else
    {
      v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      arrayValues3 = [valueCopy arrayValues];
      v80 = [arrayValues3 countByEnumeratingWithState:&v90 objects:v99 count:16];
      if (v80)
      {
        v81 = v80;
        v82 = *v91;
        do
        {
          for (j = 0; j != v81; ++j)
          {
            if (*v91 != v82)
            {
              objc_enumerationMutation(arrayValues3);
            }

            v84 = [self unpackPropertyValue:*(*(&v90 + 1) + 8 * j)];
            if (v84)
            {
              [v63 addObject:v84];
            }
          }

          v81 = [arrayValues3 countByEnumeratingWithState:&v90 objects:v99 count:16];
        }

        while (v81);
      }
    }

    if (![v63 count])
    {
      v27 = 0;
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  v85 = firstObject;
  v63 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  arrayValues4 = [valueCopy arrayValues];
  v65 = [arrayValues4 countByEnumeratingWithState:&v94 objects:v100 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v95;
    do
    {
      for (k = 0; k != v66; ++k)
      {
        if (*v95 != v67)
        {
          objc_enumerationMutation(arrayValues4);
        }

        v69 = *(*(&v94 + 1) + 8 * k);
        dictionaryKey2 = [v69 dictionaryKey];
        v71 = [self unpackPropertyValue:dictionaryKey2];

        v72 = [self unpackPropertyValue:v69];
        if (v71)
        {
          if (v72)
          {
            [v63 setObject:v72 forKey:v71];
          }

          else
          {
            [v63 removeObjectForKey:v71];
          }
        }
      }

      v66 = [arrayValues4 countByEnumeratingWithState:&v94 objects:v100 count:16];
    }

    while (v66);
  }

  if ([v63 count])
  {
    firstObject = v85;
LABEL_91:
    v27 = [v63 copy];
    goto LABEL_92;
  }

  v27 = 0;
  firstObject = v85;
LABEL_92:

LABEL_40:
  v53 = *MEMORY[0x1E69E9840];

  return v27;
}

@end