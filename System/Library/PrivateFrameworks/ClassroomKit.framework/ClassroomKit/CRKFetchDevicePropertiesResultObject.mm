@interface CRKFetchDevicePropertiesResultObject
- (CRKFetchDevicePropertiesResultObject)initWithCoder:(id)coder;
- (id)description;
- (id)valueForPropertyKey:(id)key error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchDevicePropertiesResultObject

- (id)valueForPropertyKey:(id)key error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (keyCopy)
  {
    valuesByPropertyKey = [(CRKFetchDevicePropertiesResultObject *)self valuesByPropertyKey];
    v8 = [valuesByPropertyKey valueForKey:keyCopy];

    if (v8)
    {
      v9 = v8;
    }

    else
    {
      errorsByPropertyKey = [(CRKFetchDevicePropertiesResultObject *)self errorsByPropertyKey];
      v11 = [errorsByPropertyKey objectForKeyedSubscript:keyCopy];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v17 = @"kCRKPropertyNameErrorKey";
        v18[0] = keyCopy;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
        v13 = CRKErrorWithCodeAndUserInfo(37, v14);
      }

      if (error)
      {
        v15 = v13;
        *error = v13;
      }
    }
  }

  else if (error)
  {
    CRKErrorWithCodeAndUserInfo(2, &unk_285672478);
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CRKFetchDevicePropertiesResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = CRKFetchDevicePropertiesResultObject;
  v5 = [(CATTaskResultObject *)&v35 initWithCoder:coderCopy];
  if (v5)
  {
    v33 = MEMORY[0x277CBEB98];
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

    v34 = MEMORY[0x277CBEB98];
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
  v7.super_class = CRKFetchDevicePropertiesResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CRKFetchDevicePropertiesResultObject *)self valuesByPropertyKey:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"valuesByPropertyKey"];

  errorsByPropertyKey = [(CRKFetchDevicePropertiesResultObject *)self errorsByPropertyKey];
  [coderCopy encodeObject:errorsByPropertyKey forKey:@"errorsByPropertyKey"];
}

- (id)description
{
  v3 = MEMORY[0x277CBEB38];
  errorsByPropertyKey = [(CRKFetchDevicePropertiesResultObject *)self errorsByPropertyKey];
  v5 = [v3 dictionaryWithDictionary:errorsByPropertyKey];

  valuesByPropertyKey = [(CRKFetchDevicePropertiesResultObject *)self valuesByPropertyKey];
  [v5 addEntriesFromDictionary:valuesByPropertyKey];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p %@>", objc_opt_class(), self, v5];

  return v7;
}

@end