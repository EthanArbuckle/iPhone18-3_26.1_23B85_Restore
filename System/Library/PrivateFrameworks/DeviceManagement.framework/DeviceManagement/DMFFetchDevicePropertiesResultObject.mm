@interface DMFFetchDevicePropertiesResultObject
- (DMFDevice)device;
- (DMFFetchDevicePropertiesResultObject)initWithCoder:(id)coder;
- (DMFFetchDevicePropertiesResultObject)initWithValuesByPropertyKey:(id)key errorsByPropertyKey:(id)propertyKey;
- (id)description;
- (id)valueForPropertyKey:(id)key error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchDevicePropertiesResultObject

- (DMFFetchDevicePropertiesResultObject)initWithValuesByPropertyKey:(id)key errorsByPropertyKey:(id)propertyKey
{
  keyCopy = key;
  propertyKeyCopy = propertyKey;
  v14.receiver = self;
  v14.super_class = DMFFetchDevicePropertiesResultObject;
  v8 = [(CATTaskResultObject *)&v14 init];
  if (v8)
  {
    v9 = [keyCopy copy];
    valuesByPropertyKey = v8->_valuesByPropertyKey;
    v8->_valuesByPropertyKey = v9;

    v11 = [propertyKeyCopy copy];
    errorsByPropertyKey = v8->_errorsByPropertyKey;
    v8->_errorsByPropertyKey = v11;
  }

  return v8;
}

- (id)valueForPropertyKey:(id)key error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (error)
  {
    errorsByPropertyKey = [(DMFFetchDevicePropertiesResultObject *)self errorsByPropertyKey];
    v8 = [errorsByPropertyKey objectForKeyedSubscript:keyCopy];
    if (v8)
    {
    }

    else
    {
      valuesByPropertyKey = [(DMFFetchDevicePropertiesResultObject *)self valuesByPropertyKey];
      v10 = [valuesByPropertyKey objectForKeyedSubscript:keyCopy];

      if (!v10)
      {
        v17 = @"propertyKey";
        v18[0] = keyCopy;
        errorsByPropertyKey2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
        v12 = DMFErrorWithCodeAndUserInfo(111, errorsByPropertyKey2);
        goto LABEL_6;
      }
    }

    errorsByPropertyKey2 = [(DMFFetchDevicePropertiesResultObject *)self errorsByPropertyKey];
    v12 = [errorsByPropertyKey2 valueForKey:keyCopy];
LABEL_6:
    *error = v12;
  }

  valuesByPropertyKey2 = [(DMFFetchDevicePropertiesResultObject *)self valuesByPropertyKey];
  v14 = [valuesByPropertyKey2 valueForKey:keyCopy];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (DMFDevice)device
{
  initPrivate = [[DMFDevice alloc] initPrivate];
  valuesByPropertyKey = [(DMFFetchDevicePropertiesResultObject *)self valuesByPropertyKey];
  [initPrivate setValuesForKeysWithDictionary:valuesByPropertyKey];

  errorsByPropertyKey = [(DMFFetchDevicePropertiesResultObject *)self errorsByPropertyKey];
  [initPrivate setErrorsForKeys:errorsByPropertyKey];

  return initPrivate;
}

- (DMFFetchDevicePropertiesResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = DMFFetchDevicePropertiesResultObject;
  v5 = [(CATTaskResultObject *)&v35 initWithCoder:coderCopy];
  if (v5)
  {
    v33 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v29 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v33 setWithObjects:{v31, v29, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"valuesByPropertyKey"];
    valuesByPropertyKey = v5->_valuesByPropertyKey;
    v5->_valuesByPropertyKey = v15;

    v34 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v30 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v34 setWithObjects:{v32, v30, v17, v18, v19, v20, v21, v22, v23, v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"errorsByPropertyKey"];
    errorsByPropertyKey = v5->_errorsByPropertyKey;
    v5->_errorsByPropertyKey = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DMFFetchDevicePropertiesResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v7 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchDevicePropertiesResultObject *)self valuesByPropertyKey:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"valuesByPropertyKey"];

  errorsByPropertyKey = [(DMFFetchDevicePropertiesResultObject *)self errorsByPropertyKey];
  [coderCopy encodeObject:errorsByPropertyKey forKey:@"errorsByPropertyKey"];
}

- (id)description
{
  v3 = MEMORY[0x1E695DF90];
  errorsByPropertyKey = [(DMFFetchDevicePropertiesResultObject *)self errorsByPropertyKey];
  v5 = [v3 dictionaryWithDictionary:errorsByPropertyKey];

  valuesByPropertyKey = [(DMFFetchDevicePropertiesResultObject *)self valuesByPropertyKey];
  [v5 addEntriesFromDictionary:valuesByPropertyKey];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p %@>", objc_opt_class(), self, v5];

  return v7;
}

@end