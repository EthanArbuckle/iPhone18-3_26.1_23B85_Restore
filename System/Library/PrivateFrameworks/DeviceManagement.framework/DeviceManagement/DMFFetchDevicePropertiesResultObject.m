@interface DMFFetchDevicePropertiesResultObject
- (DMFDevice)device;
- (DMFFetchDevicePropertiesResultObject)initWithCoder:(id)a3;
- (DMFFetchDevicePropertiesResultObject)initWithValuesByPropertyKey:(id)a3 errorsByPropertyKey:(id)a4;
- (id)description;
- (id)valueForPropertyKey:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchDevicePropertiesResultObject

- (DMFFetchDevicePropertiesResultObject)initWithValuesByPropertyKey:(id)a3 errorsByPropertyKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DMFFetchDevicePropertiesResultObject;
  v8 = [(CATTaskResultObject *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    valuesByPropertyKey = v8->_valuesByPropertyKey;
    v8->_valuesByPropertyKey = v9;

    v11 = [v7 copy];
    errorsByPropertyKey = v8->_errorsByPropertyKey;
    v8->_errorsByPropertyKey = v11;
  }

  return v8;
}

- (id)valueForPropertyKey:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4)
  {
    v7 = [(DMFFetchDevicePropertiesResultObject *)self errorsByPropertyKey];
    v8 = [v7 objectForKeyedSubscript:v6];
    if (v8)
    {
    }

    else
    {
      v9 = [(DMFFetchDevicePropertiesResultObject *)self valuesByPropertyKey];
      v10 = [v9 objectForKeyedSubscript:v6];

      if (!v10)
      {
        v17 = @"propertyKey";
        v18[0] = v6;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
        v12 = DMFErrorWithCodeAndUserInfo(111, v11);
        goto LABEL_6;
      }
    }

    v11 = [(DMFFetchDevicePropertiesResultObject *)self errorsByPropertyKey];
    v12 = [v11 valueForKey:v6];
LABEL_6:
    *a4 = v12;
  }

  v13 = [(DMFFetchDevicePropertiesResultObject *)self valuesByPropertyKey];
  v14 = [v13 valueForKey:v6];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (DMFDevice)device
{
  v3 = [[DMFDevice alloc] initPrivate];
  v4 = [(DMFFetchDevicePropertiesResultObject *)self valuesByPropertyKey];
  [v3 setValuesForKeysWithDictionary:v4];

  v5 = [(DMFFetchDevicePropertiesResultObject *)self errorsByPropertyKey];
  [v3 setErrorsForKeys:v5];

  return v3;
}

- (DMFFetchDevicePropertiesResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = DMFFetchDevicePropertiesResultObject;
  v5 = [(CATTaskResultObject *)&v35 initWithCoder:v4];
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
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"valuesByPropertyKey"];
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
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"errorsByPropertyKey"];
    errorsByPropertyKey = v5->_errorsByPropertyKey;
    v5->_errorsByPropertyKey = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DMFFetchDevicePropertiesResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v7 encodeWithCoder:v4];
  v5 = [(DMFFetchDevicePropertiesResultObject *)self valuesByPropertyKey:v7.receiver];
  [v4 encodeObject:v5 forKey:@"valuesByPropertyKey"];

  v6 = [(DMFFetchDevicePropertiesResultObject *)self errorsByPropertyKey];
  [v4 encodeObject:v6 forKey:@"errorsByPropertyKey"];
}

- (id)description
{
  v3 = MEMORY[0x1E695DF90];
  v4 = [(DMFFetchDevicePropertiesResultObject *)self errorsByPropertyKey];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = [(DMFFetchDevicePropertiesResultObject *)self valuesByPropertyKey];
  [v5 addEntriesFromDictionary:v6];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p %@>", objc_opt_class(), self, v5];

  return v7;
}

@end