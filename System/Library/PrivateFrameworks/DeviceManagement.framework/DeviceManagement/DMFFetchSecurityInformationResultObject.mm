@interface DMFFetchSecurityInformationResultObject
- (DMFFetchSecurityInformationResultObject)initWithCoder:(id)a3;
- (DMFFetchSecurityInformationResultObject)initWithSecurityInformation:(id)a3;
- (DMFFetchSecurityInformationResultObject)initWithValuesByPropertyKey:(id)a3 errorsByPropertyKey:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchSecurityInformationResultObject

- (DMFFetchSecurityInformationResultObject)initWithSecurityInformation:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DMFFetchSecurityInformationResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    securityInformation = v5->_securityInformation;
    v5->_securityInformation = v6;
  }

  return v5;
}

- (DMFFetchSecurityInformationResultObject)initWithValuesByPropertyKey:(id)a3 errorsByPropertyKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DMFFetchSecurityInformationResultObject;
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

- (DMFFetchSecurityInformationResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = DMFFetchSecurityInformationResultObject;
  v5 = [(CATTaskResultObject *)&v38 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"securityInformation"];
    securityInformation = v5->_securityInformation;
    v5->_securityInformation = v7;

    v36 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v32 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v36 setWithObjects:{v34, v32, v9, v10, v11, v12, v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"valuesByPropertyKey"];
    valuesByPropertyKey = v5->_valuesByPropertyKey;
    v5->_valuesByPropertyKey = v18;

    v37 = MEMORY[0x1E695DFD8];
    v35 = objc_opt_class();
    v33 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = [v37 setWithObjects:{v35, v33, v20, v21, v22, v23, v24, v25, v26, v27, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"errorsByPropertyKey"];
    errorsByPropertyKey = v5->_errorsByPropertyKey;
    v5->_errorsByPropertyKey = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = DMFFetchSecurityInformationResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v8 encodeWithCoder:v4];
  v5 = [(DMFFetchSecurityInformationResultObject *)self securityInformation:v8.receiver];
  [v4 encodeObject:v5 forKey:@"securityInformation"];

  v6 = [(DMFFetchSecurityInformationResultObject *)self valuesByPropertyKey];
  [v4 encodeObject:v6 forKey:@"valuesByPropertyKey"];

  v7 = [(DMFFetchSecurityInformationResultObject *)self errorsByPropertyKey];
  [v4 encodeObject:v7 forKey:@"errorsByPropertyKey"];
}

- (id)description
{
  v3 = MEMORY[0x1E695DF90];
  v4 = [(DMFFetchSecurityInformationResultObject *)self errorsByPropertyKey];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = [(DMFFetchSecurityInformationResultObject *)self valuesByPropertyKey];
  [v5 addEntriesFromDictionary:v6];

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = [(DMFFetchSecurityInformationResultObject *)self securityInformation];
  v10 = [v9 description];
  v11 = [v7 stringWithFormat:@"<%@: %p %@ %@>", v8, self, v10, v5];

  return v11;
}

@end