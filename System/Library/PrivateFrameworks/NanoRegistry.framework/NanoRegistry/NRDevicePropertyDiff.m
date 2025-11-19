@interface NRDevicePropertyDiff
+ (id)packPropertyValue:(id)a3;
+ (id)unpackPropertyValue:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NRDevicePropertyDiff)initWithCoder:(id)a3;
- (NRDevicePropertyDiff)initWithProtobuf:(id)a3;
- (NRDevicePropertyDiff)initWithValue:(id)a3;
- (NRPBDevicePropertyDiff)protobuf;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NRDevicePropertyDiff

- (NRDevicePropertyDiff)initWithValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NRDevicePropertyDiff;
  v6 = [(NRDevicePropertyDiff *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, a3);
  }

  return v7;
}

- (NRDevicePropertyDiff)initWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = [(NRDevicePropertyDiff *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    if (v4)
    {
      v7 = v4[1];
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

- (NRDevicePropertyDiff)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NRDevicePropertyDiff *)self init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (!v6)
  {
    v10 = +[NRMutableDeviceProperty enclosedClassTypes];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:0x1F5B7C860];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(NRDevicePropertyDiff *)self protobuf];
  v5 = [v6 data];
  [v4 encodeObject:v5 forKey:@"data"];
}

- (unint64_t)hash
{
  value = self->_value;
  v4 = [objc_opt_class() hash];
  return [self->_value hash]- v4 + 32 * v4 + 961;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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
  if (value == v4->_value)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NRDevicePropertyDiff allocWithZone:?]];
  objc_storeStrong(&v4->_value, self->_value);
  return v4;
}

+ (id)packPropertyValue:(id)a3
{
  v90 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(NRPBPropertyValue);
  if (!v4)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x1E696ACC8];
    v7 = [v4 nr_filteredError];
    v8 = [v6 nr_secureArchivedDataWithRootObject:v7];

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
    v9 = v4;
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
    v8 = v4;
    v12 = objc_alloc_init(NRPBNumber);
    v13 = [(NRPBNumber *)v8 objCType];
    if (*v13 == 105 && !v13[1])
    {
      v29 = [(NRPBNumber *)v8 intValue];
      v30 = v12;
LABEL_48:
      [(NRPBNumber *)v30 setInt32Value:v29];
LABEL_64:
      if (!v12)
      {
        goto LABEL_67;
      }

      [(NRPBPropertyValue *)v5 setNumberValue:v12];
      goto LABEL_66;
    }

    v14 = [(NRPBNumber *)v8 objCType];
    if (*v14 == 73 && !v14[1])
    {
      v31 = [(NRPBNumber *)v8 unsignedIntValue];
      v32 = v12;
LABEL_50:
      [(NRPBNumber *)v32 setInt32Value:v31];
LABEL_63:
      [(NRPBNumber *)v12 setIsUnsigned:1];
      goto LABEL_64;
    }

    v15 = [(NRPBNumber *)v8 objCType];
    if (*v15 == 113 && !v15[1])
    {
      [(NRPBNumber *)v12 setInt64Value:[(NRPBNumber *)v8 longLongValue]];
      goto LABEL_64;
    }

    v16 = [(NRPBNumber *)v8 objCType];
    if (*v16 == 81 && !v16[1])
    {
      [(NRPBNumber *)v12 setInt64Value:[(NRPBNumber *)v8 unsignedLongLongValue]];
      goto LABEL_63;
    }

    v17 = [(NRPBNumber *)v8 objCType];
    if (*v17 == 115 && !v17[1])
    {
      [(NRPBNumber *)v12 setInt32Value:[(NRPBNumber *)v8 shortValue]];
      v33 = v12;
      v34 = 1;
    }

    else
    {
      v18 = [(NRPBNumber *)v8 objCType];
      if (*v18 == 83 && !v18[1])
      {
        [(NRPBNumber *)v12 setInt32Value:[(NRPBNumber *)v8 unsignedShortValue]];
        v35 = v12;
        v36 = 1;
        goto LABEL_62;
      }

      v19 = [(NRPBNumber *)v8 objCType];
      if (*v19 != 99 || v19[1])
      {
        v20 = [(NRPBNumber *)v8 objCType];
        if (*v20 != 67 || v20[1])
        {
          v21 = [(NRPBNumber *)v8 objCType];
          if (*v21 != 113 || v21[1])
          {
            v22 = [(NRPBNumber *)v8 objCType];
            if (*v22 != 81 || v22[1])
            {
              v23 = [(NRPBNumber *)v8 objCType];
              if (*v23 == 66 && !v23[1])
              {
                [(NRPBNumber *)v12 setBoolValue:[(NRPBNumber *)v8 BOOLValue]];
              }

              else
              {
                v24 = [(NRPBNumber *)v8 objCType];
                if (*v24 == 102 && !v24[1])
                {
                  [(NRPBNumber *)v8 floatValue];
                  [(NRPBNumber *)v12 setFloatValue:?];
                }

                else
                {
                  v25 = [(NRPBNumber *)v8 objCType];
                  if (*v25 != 100 || v25[1])
                  {
                    goto LABEL_66;
                  }

                  [(NRPBNumber *)v8 doubleValue];
                  [(NRPBNumber *)v12 setDoubleValue:?];
                }
              }

              goto LABEL_64;
            }

            v31 = [(NRPBNumber *)v8 unsignedIntegerValue];
            v32 = v12;
            goto LABEL_50;
          }

          v29 = [(NRPBNumber *)v8 integerValue];
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
    v8 = v4;
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
    [(NRPBPropertyValue *)v5 setStringValue:v4];
    goto LABEL_68;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NRPBPropertyValue *)v5 setIsSecurePropertyValue:1];
      [v4 data];
    }

    else
    {
      [MEMORY[0x1E695DEF0] fromUUID:v4];
    }
    v8 = ;
    [(NRPBPropertyValue *)v5 setUUIDValue:v8];
    goto LABEL_67;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NRPBPropertyValue *)v5 setDataValue:v4];
    goto LABEL_68;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = v4;
    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NRPBPropertyValue *)v5 setArrayValues:v40];

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v41 = v39;
    v42 = [v41 countByEnumeratingWithState:&v83 objects:v89 count:16];
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
            objc_enumerationMutation(v41);
          }

          v46 = [a1 packPropertyValue:*(*(&v83 + 1) + 8 * i)];
          if (v46)
          {
            v47 = [(NRPBPropertyValue *)v5 arrayValues];
            [v47 addObject:v46];
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v83 objects:v89 count:16];
      }

      while (v43);
    }

LABEL_100:
    v57 = [(NRPBPropertyValue *)v5 arrayValues];
    v58 = [v57 count];

    if (!v58)
    {
      [(NRPBPropertyValue *)v5 setArrayValues:0];
    }

    goto LABEL_102;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v48 = v4;
    [(NRPBPropertyValue *)v5 setIsMiniUUIDSet:1];
    v41 = [v48 data];

    [(NRPBPropertyValue *)v5 setDataValue:v41];
LABEL_102:

    goto LABEL_68;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v49 = v4;
    v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NRPBPropertyValue *)v5 setArrayValues:v50];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v41 = v49;
    v51 = [v41 countByEnumeratingWithState:&v79 objects:v88 count:16];
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
            objc_enumerationMutation(v41);
          }

          v55 = [a1 packPropertyValue:*(*(&v79 + 1) + 8 * j)];
          if (v55)
          {
            v56 = [(NRPBPropertyValue *)v5 arrayValues];
            [v56 addObject:v55];
          }
        }

        v52 = [v41 countByEnumeratingWithState:&v79 objects:v88 count:16];
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

  v59 = v4;
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
        v67 = [a1 packPropertyValue:v65];
        if (v67)
        {
          v68 = [a1 packPropertyValue:v66];
          v69 = v68;
          if (v68)
          {
            [v68 setDictionaryKey:v67];
            v70 = [(NRPBPropertyValue *)v5 arrayValues];
            [v70 addObject:v69];

            v59 = v73;
          }
        }
      }

      v62 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
    }

    while (v62);
  }

  v71 = [(NRPBPropertyValue *)v5 arrayValues];
  v72 = [v71 count];

  if (!v72)
  {
    [(NRPBPropertyValue *)v5 setArrayValues:0];
  }

LABEL_68:
  v37 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)unpackPropertyValue:(id)a3
{
  v101 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 numberValue];

  if (v5)
  {
    v6 = [v4 numberValue];
    v7 = [v6 hasInt32Value];

    v8 = [v4 numberValue];
    v9 = v8;
    if (v7)
    {
      v10 = [v8 hasIsShortOrChar];

      v11 = [v4 numberValue];
      v12 = v11;
      if (v10)
      {
        v13 = [v11 isShortOrChar];

        v14 = [v4 numberValue];
        v15 = [v14 isUnsigned];

        v16 = MEMORY[0x1E696AD98];
        v17 = [v4 numberValue];
        v18 = [v17 int32Value];
        if (v13)
        {
          if (v15)
          {
            [v16 numberWithUnsignedShort:v18];
          }

          else
          {
            [v16 numberWithShort:v18];
          }
        }

        else if (v15)
        {
          [v16 numberWithUnsignedChar:v18];
        }

        else
        {
          [v16 numberWithChar:v18];
        }
      }

      else
      {
        v34 = [v11 isUnsigned];

        v35 = MEMORY[0x1E696AD98];
        v17 = [v4 numberValue];
        v36 = [v17 int32Value];
        if (v34)
        {
          [v35 numberWithUnsignedInt:v36];
        }

        else
        {
          [v35 numberWithInt:v36];
        }
      }
    }

    else
    {
      v28 = [v8 hasInt64Value];

      v29 = [v4 numberValue];
      v30 = v29;
      if (!v28)
      {
        v37 = [v29 hasFloatValue];

        if (v37)
        {
          v38 = MEMORY[0x1E696AD98];
          v17 = [v4 numberValue];
          [v17 floatValue];
          v39 = [v38 numberWithFloat:?];
        }

        else
        {
          v42 = [v4 numberValue];
          v43 = [v42 hasDoubleValue];

          if (v43)
          {
            v44 = MEMORY[0x1E696AD98];
            v17 = [v4 numberValue];
            [v17 doubleValue];
            v39 = [v44 numberWithDouble:?];
          }

          else
          {
            v48 = [v4 numberValue];
            v49 = [v48 hasBoolValue];

            if (!v49)
            {
              v21 = 0;
LABEL_35:
              if ([v4 isDate])
              {
                v51 = MEMORY[0x1E695DF00];
                [v21 doubleValue];
                v52 = [v51 dateWithTimeIntervalSinceReferenceDate:?];
              }

              else
              {
                v52 = v21;
              }

              goto LABEL_38;
            }

            v50 = MEMORY[0x1E696AD98];
            v17 = [v4 numberValue];
            v39 = [v50 numberWithBool:{objc_msgSend(v17, "BOOLValue")}];
          }
        }

LABEL_34:
        v21 = v39;

        goto LABEL_35;
      }

      v31 = [v29 isUnsigned];

      v32 = MEMORY[0x1E696AD98];
      v17 = [v4 numberValue];
      v33 = [v17 int64Value];
      if (v31)
      {
        [v32 numberWithUnsignedLongLong:v33];
      }

      else
      {
        [v32 numberWithLongLong:v33];
      }
    }
    v39 = ;
    goto LABEL_34;
  }

  v19 = [v4 sizeValue];

  if (v19)
  {
    v20 = MEMORY[0x1E696B098];
    v21 = [v4 sizeValue];
    [v21 width];
    v23 = v22;
    v24 = [v4 sizeValue];
    [v24 height];
    v26 = [v20 valueWithSize:{v23, v25}];
LABEL_9:
    v27 = v26;

LABEL_39:
    goto LABEL_40;
  }

  v40 = [v4 stringValue];

  if (v40)
  {
    v41 = [v4 stringValue];
    goto LABEL_19;
  }

  v45 = [v4 uUIDValue];

  if (v45)
  {
    if (![v4 isSecurePropertyValue])
    {
      v21 = [v4 uUIDValue];
      v52 = [v21 toUUID];
      goto LABEL_38;
    }

    v46 = [NRSecureDevicePropertyID alloc];
    v47 = [v4 uUIDValue];
LABEL_46:
    v21 = v47;
    v52 = [(NRSecureDevicePropertyID *)v46 initWithData:v47];
LABEL_38:
    v27 = v52;
    goto LABEL_39;
  }

  v55 = [v4 dataValue];

  if (v55)
  {
    if (![v4 isMiniUUIDSet])
    {
      if ([v4 isError])
      {
        v73 = MEMORY[0x1E696ACD0];
        v21 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
        v24 = [v4 dataValue];
        v26 = [v73 nr_secureUnarchiveObjectOfClasses:v21 withData:v24];
        goto LABEL_9;
      }

      v41 = [v4 dataValue];
LABEL_19:
      v27 = v41;
      goto LABEL_40;
    }

    v46 = [NRMiniUUIDSet alloc];
    v47 = [v4 dataValue];
    goto LABEL_46;
  }

  v56 = [v4 arrayValues];
  if (!v56 || (v57 = v56, [v4 arrayValues], v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend(v58, "count"), v58, v57, !v59))
  {
    v27 = 0;
    goto LABEL_40;
  }

  v60 = [v4 arrayValues];
  v61 = [v60 firstObject];

  v62 = [v61 dictionaryKey];

  if (!v62)
  {
    if ([v4 isSet])
    {
      v63 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v74 = [v4 arrayValues];
      v75 = [v74 countByEnumeratingWithState:&v86 objects:v98 count:16];
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
              objc_enumerationMutation(v74);
            }

            v79 = [a1 unpackPropertyValue:*(*(&v86 + 1) + 8 * i)];
            if (v79)
            {
              [v63 addObject:v79];
            }
          }

          v76 = [v74 countByEnumeratingWithState:&v86 objects:v98 count:16];
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
      v74 = [v4 arrayValues];
      v80 = [v74 countByEnumeratingWithState:&v90 objects:v99 count:16];
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
              objc_enumerationMutation(v74);
            }

            v84 = [a1 unpackPropertyValue:*(*(&v90 + 1) + 8 * j)];
            if (v84)
            {
              [v63 addObject:v84];
            }
          }

          v81 = [v74 countByEnumeratingWithState:&v90 objects:v99 count:16];
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

  v85 = v61;
  v63 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v64 = [v4 arrayValues];
  v65 = [v64 countByEnumeratingWithState:&v94 objects:v100 count:16];
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
          objc_enumerationMutation(v64);
        }

        v69 = *(*(&v94 + 1) + 8 * k);
        v70 = [v69 dictionaryKey];
        v71 = [a1 unpackPropertyValue:v70];

        v72 = [a1 unpackPropertyValue:v69];
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

      v66 = [v64 countByEnumeratingWithState:&v94 objects:v100 count:16];
    }

    while (v66);
  }

  if ([v63 count])
  {
    v61 = v85;
LABEL_91:
    v27 = [v63 copy];
    goto LABEL_92;
  }

  v27 = 0;
  v61 = v85;
LABEL_92:

LABEL_40:
  v53 = *MEMORY[0x1E69E9840];

  return v27;
}

@end