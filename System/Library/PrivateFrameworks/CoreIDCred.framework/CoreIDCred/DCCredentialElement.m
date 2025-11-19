@interface DCCredentialElement
- (DCCredentialElement)initWithCoder:(id)a3;
- (DCCredentialElement)initWithElementIdentifier:(id)a3 doubleValue:(double)a4;
- (DCCredentialElement)initWithElementIdentifier:(id)a3 intValue:(int64_t)a4;
- (DCCredentialElement)initWithElementIdentifier:(id)a3 stringValue:(id)a4 dataValue:(id)a5 dateValue:(id)a6 birthDateValue:(id)a7 numberValue:(id)a8 arrayValue:(id)a9 dictionaryValue:(id)a10 numericTypeHint:(unint64_t)a11;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DCCredentialElement

- (void)encodeWithCoder:(id)a3
{
  v18 = a3;
  v4 = [(DCCredentialElement *)self elementIdentifier];
  [v18 encodeObject:v4 forKey:0x28586D280];

  v5 = [(DCCredentialElement *)self stringValue];

  if (v5)
  {
    v6 = [(DCCredentialElement *)self stringValue];
    [v18 encodeObject:v6 forKey:0x28586D5E0];
  }

  v7 = [(DCCredentialElement *)self dateValue];

  if (v7)
  {
    v8 = [(DCCredentialElement *)self dateValue];
    [v18 encodeObject:v8 forKey:0x28586D600];
  }

  v9 = [(DCCredentialElement *)self birthDateValue];
  [v18 encodeObject:v9 forKey:0x28586D620];

  v10 = [(DCCredentialElement *)self dataValue];

  if (v10)
  {
    v11 = [(DCCredentialElement *)self dataValue];
    [v18 encodeObject:v11 forKey:0x28586D640];
  }

  v12 = [(DCCredentialElement *)self numberValue];

  if (v12)
  {
    v13 = [(DCCredentialElement *)self numberValue];
    [v18 encodeObject:v13 forKey:0x28586D660];
  }

  v14 = [(DCCredentialElement *)self arrayValue];

  if (v14)
  {
    v15 = [(DCCredentialElement *)self arrayValue];
    [v18 encodeObject:v15 forKey:0x28586D680];
  }

  v16 = [(DCCredentialElement *)self dictionaryValue];

  if (v16)
  {
    v17 = [(DCCredentialElement *)self dictionaryValue];
    [v18 encodeObject:v17 forKey:0x28586D6A0];
  }

  [v18 encodeInteger:-[DCCredentialElement numericTypeHint](self forKey:{"numericTypeHint"), 0x28586D6C0}];
}

- (DCCredentialElement)initWithCoder:(id)a3
{
  v38.receiver = self;
  v38.super_class = DCCredentialElement;
  v3 = a3;
  v4 = [(DCCredentialElement *)&v38 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:0x28586D280];
  elementIdentifier = v4->_elementIdentifier;
  v4->_elementIdentifier = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:0x28586D5E0];
  stringValue = v4->_stringValue;
  v4->_stringValue = v7;

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:0x28586D640];
  dataValue = v4->_dataValue;
  v4->_dataValue = v9;

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:0x28586D600];
  dateValue = v4->_dateValue;
  v4->_dateValue = v11;

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:0x28586D620];
  birthDateValue = v4->_birthDateValue;
  v4->_birthDateValue = v13;

  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:0x28586D660];
  numberValue = v4->_numberValue;
  v4->_numberValue = v15;

  v17 = MEMORY[0x277CBEB98];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = [v17 setWithObjects:{v18, v19, v20, v21, v22, v23, objc_opt_class(), 0}];
  v25 = [v3 decodeObjectOfClasses:v24 forKey:0x28586D680];
  arrayValue = v4->_arrayValue;
  v4->_arrayValue = v25;

  v27 = MEMORY[0x277CBEB98];
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = [v27 setWithObjects:{v28, v29, v30, v31, v32, v33, objc_opt_class(), 0}];
  v35 = [v3 decodeObjectOfClasses:v34 forKey:0x28586D6A0];
  dictionaryValue = v4->_dictionaryValue;
  v4->_dictionaryValue = v35;

  LODWORD(v34) = [v3 decodeIntForKey:0x28586D6C0];
  v4->_numericTypeHint = v34;
  return v4;
}

- (DCCredentialElement)initWithElementIdentifier:(id)a3 stringValue:(id)a4 dataValue:(id)a5 dateValue:(id)a6 birthDateValue:(id)a7 numberValue:(id)a8 arrayValue:(id)a9 dictionaryValue:(id)a10 numericTypeHint:(unint64_t)a11
{
  v43.receiver = self;
  v43.super_class = DCCredentialElement;
  v42 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [(DCCredentialElement *)&v43 init];
  v25 = [v23 copy];

  elementIdentifier = v24->_elementIdentifier;
  v24->_elementIdentifier = v25;

  v27 = [v22 copy];
  stringValue = v24->_stringValue;
  v24->_stringValue = v27;

  v29 = [v20 copy];
  dateValue = v24->_dateValue;
  v24->_dateValue = v29;

  v31 = [v19 copy];
  birthDateValue = v24->_birthDateValue;
  v24->_birthDateValue = v31;

  v33 = [v21 copy];
  dataValue = v24->_dataValue;
  v24->_dataValue = v33;

  v35 = [v18 copy];
  numberValue = v24->_numberValue;
  v24->_numberValue = v35;

  v37 = [v17 copy];
  arrayValue = v24->_arrayValue;
  v24->_arrayValue = v37;

  v39 = [v42 copy];
  dictionaryValue = v24->_dictionaryValue;
  v24->_dictionaryValue = v39;

  v24->_numericTypeHint = a11;
  return v24;
}

- (DCCredentialElement)initWithElementIdentifier:(id)a3 intValue:(int64_t)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  v9 = [(DCCredentialElement *)self initWithElementIdentifier:v7 stringValue:0 dataValue:0 dateValue:0 birthDateValue:0 numberValue:v8 arrayValue:0 dictionaryValue:0 numericTypeHint:1];

  return v9;
}

- (DCCredentialElement)initWithElementIdentifier:(id)a3 doubleValue:(double)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithDouble:a4];
  v9 = [(DCCredentialElement *)self initWithElementIdentifier:v7 stringValue:0 dataValue:0 dateValue:0 birthDateValue:0 numberValue:v8 arrayValue:0 dictionaryValue:0 numericTypeHint:2];

  return v9;
}

- (id)description
{
  v3 = [(DCCredentialElement *)self stringValue];

  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(DCCredentialElement *)self elementIdentifier];
    v6 = [(DCCredentialElement *)self stringValue];
    [v4 stringWithFormat:@"DCCredentialElement identifier = %@; string value = %@", v5, v6];
    v13 = LABEL_9:;
LABEL_10:

    goto LABEL_11;
  }

  v7 = [(DCCredentialElement *)self dateValue];

  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v5 = [(DCCredentialElement *)self elementIdentifier];
    v6 = [(DCCredentialElement *)self dateValue];
    [v8 stringWithFormat:@"DCCredentialElement identifier = %@; date value = %@", v5, v6];
    goto LABEL_9;
  }

  v9 = [(DCCredentialElement *)self birthDateValue];

  if (v9)
  {
    v10 = MEMORY[0x277CCACA8];
    v5 = [(DCCredentialElement *)self elementIdentifier];
    v6 = [(DCCredentialElement *)self birthDateValue];
    [v10 stringWithFormat:@"DCCredentialElement identifier = %@; birthDate value = %@", v5, v6];
    goto LABEL_9;
  }

  v11 = [(DCCredentialElement *)self dataValue];

  if (v11)
  {
    v12 = MEMORY[0x277CCACA8];
    v5 = [(DCCredentialElement *)self elementIdentifier];
    v6 = [(DCCredentialElement *)self dataValue];
    [v12 stringWithFormat:@"DCCredentialElement identifier = %@; data value = %@", v5, v6];
    goto LABEL_9;
  }

  v15 = [(DCCredentialElement *)self numberValue];

  if (v15)
  {
    v16 = MEMORY[0x277CCACA8];
    v5 = [(DCCredentialElement *)self elementIdentifier];
    v6 = [(DCCredentialElement *)self numberValue];
    v17 = DCCredentialElementNumericTypeHintToString([(DCCredentialElement *)self numericTypeHint]);
    v13 = [v16 stringWithFormat:@"DCCredentialElement identifier = %@ number value = %@, type hint = %@", v5, v6, v17];;

    goto LABEL_10;
  }

  v18 = [(DCCredentialElement *)self arrayValue];

  if (v18)
  {
    v19 = MEMORY[0x277CCACA8];
    v5 = [(DCCredentialElement *)self elementIdentifier];
    v6 = [(DCCredentialElement *)self arrayValue];
    [v19 stringWithFormat:@"DCCredentialElement identifier = %@; array value = %@", v5, v6];
    goto LABEL_9;
  }

  v20 = [(DCCredentialElement *)self dictionaryValue];

  v21 = MEMORY[0x277CCACA8];
  v22 = [(DCCredentialElement *)self elementIdentifier];
  v5 = v22;
  if (v20)
  {
    v6 = [(DCCredentialElement *)self dictionaryValue];
    [v21 stringWithFormat:@"DCCredentialElement identifier = %@; dictionary value = %@", v5, v6];
    goto LABEL_9;
  }

  v13 = [v21 stringWithFormat:@"DCCredentialElement identifier = %@ no value", v22];;
LABEL_11:

  return v13;
}

@end