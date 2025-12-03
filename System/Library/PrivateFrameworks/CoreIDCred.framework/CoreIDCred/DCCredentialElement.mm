@interface DCCredentialElement
- (DCCredentialElement)initWithCoder:(id)coder;
- (DCCredentialElement)initWithElementIdentifier:(id)identifier doubleValue:(double)value;
- (DCCredentialElement)initWithElementIdentifier:(id)identifier intValue:(int64_t)value;
- (DCCredentialElement)initWithElementIdentifier:(id)identifier stringValue:(id)value dataValue:(id)dataValue dateValue:(id)dateValue birthDateValue:(id)birthDateValue numberValue:(id)numberValue arrayValue:(id)arrayValue dictionaryValue:(id)self0 numericTypeHint:(unint64_t)self1;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DCCredentialElement

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  elementIdentifier = [(DCCredentialElement *)self elementIdentifier];
  [coderCopy encodeObject:elementIdentifier forKey:0x28586D280];

  stringValue = [(DCCredentialElement *)self stringValue];

  if (stringValue)
  {
    stringValue2 = [(DCCredentialElement *)self stringValue];
    [coderCopy encodeObject:stringValue2 forKey:0x28586D5E0];
  }

  dateValue = [(DCCredentialElement *)self dateValue];

  if (dateValue)
  {
    dateValue2 = [(DCCredentialElement *)self dateValue];
    [coderCopy encodeObject:dateValue2 forKey:0x28586D600];
  }

  birthDateValue = [(DCCredentialElement *)self birthDateValue];
  [coderCopy encodeObject:birthDateValue forKey:0x28586D620];

  dataValue = [(DCCredentialElement *)self dataValue];

  if (dataValue)
  {
    dataValue2 = [(DCCredentialElement *)self dataValue];
    [coderCopy encodeObject:dataValue2 forKey:0x28586D640];
  }

  numberValue = [(DCCredentialElement *)self numberValue];

  if (numberValue)
  {
    numberValue2 = [(DCCredentialElement *)self numberValue];
    [coderCopy encodeObject:numberValue2 forKey:0x28586D660];
  }

  arrayValue = [(DCCredentialElement *)self arrayValue];

  if (arrayValue)
  {
    arrayValue2 = [(DCCredentialElement *)self arrayValue];
    [coderCopy encodeObject:arrayValue2 forKey:0x28586D680];
  }

  dictionaryValue = [(DCCredentialElement *)self dictionaryValue];

  if (dictionaryValue)
  {
    dictionaryValue2 = [(DCCredentialElement *)self dictionaryValue];
    [coderCopy encodeObject:dictionaryValue2 forKey:0x28586D6A0];
  }

  [coderCopy encodeInteger:-[DCCredentialElement numericTypeHint](self forKey:{"numericTypeHint"), 0x28586D6C0}];
}

- (DCCredentialElement)initWithCoder:(id)coder
{
  v38.receiver = self;
  v38.super_class = DCCredentialElement;
  coderCopy = coder;
  v4 = [(DCCredentialElement *)&v38 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D280];
  elementIdentifier = v4->_elementIdentifier;
  v4->_elementIdentifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D5E0];
  stringValue = v4->_stringValue;
  v4->_stringValue = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D640];
  dataValue = v4->_dataValue;
  v4->_dataValue = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D600];
  dateValue = v4->_dateValue;
  v4->_dateValue = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D620];
  birthDateValue = v4->_birthDateValue;
  v4->_birthDateValue = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D660];
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
  v25 = [coderCopy decodeObjectOfClasses:v24 forKey:0x28586D680];
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
  v35 = [coderCopy decodeObjectOfClasses:v34 forKey:0x28586D6A0];
  dictionaryValue = v4->_dictionaryValue;
  v4->_dictionaryValue = v35;

  LODWORD(v34) = [coderCopy decodeIntForKey:0x28586D6C0];
  v4->_numericTypeHint = v34;
  return v4;
}

- (DCCredentialElement)initWithElementIdentifier:(id)identifier stringValue:(id)value dataValue:(id)dataValue dateValue:(id)dateValue birthDateValue:(id)birthDateValue numberValue:(id)numberValue arrayValue:(id)arrayValue dictionaryValue:(id)self0 numericTypeHint:(unint64_t)self1
{
  v43.receiver = self;
  v43.super_class = DCCredentialElement;
  dictionaryValueCopy = dictionaryValue;
  arrayValueCopy = arrayValue;
  numberValueCopy = numberValue;
  birthDateValueCopy = birthDateValue;
  dateValueCopy = dateValue;
  dataValueCopy = dataValue;
  valueCopy = value;
  identifierCopy = identifier;
  v24 = [(DCCredentialElement *)&v43 init];
  v25 = [identifierCopy copy];

  elementIdentifier = v24->_elementIdentifier;
  v24->_elementIdentifier = v25;

  v27 = [valueCopy copy];
  stringValue = v24->_stringValue;
  v24->_stringValue = v27;

  v29 = [dateValueCopy copy];
  dateValue = v24->_dateValue;
  v24->_dateValue = v29;

  v31 = [birthDateValueCopy copy];
  birthDateValue = v24->_birthDateValue;
  v24->_birthDateValue = v31;

  v33 = [dataValueCopy copy];
  dataValue = v24->_dataValue;
  v24->_dataValue = v33;

  v35 = [numberValueCopy copy];
  numberValue = v24->_numberValue;
  v24->_numberValue = v35;

  v37 = [arrayValueCopy copy];
  arrayValue = v24->_arrayValue;
  v24->_arrayValue = v37;

  v39 = [dictionaryValueCopy copy];
  dictionaryValue = v24->_dictionaryValue;
  v24->_dictionaryValue = v39;

  v24->_numericTypeHint = hint;
  return v24;
}

- (DCCredentialElement)initWithElementIdentifier:(id)identifier intValue:(int64_t)value
{
  v6 = MEMORY[0x277CCABB0];
  identifierCopy = identifier;
  v8 = [v6 numberWithInteger:value];
  v9 = [(DCCredentialElement *)self initWithElementIdentifier:identifierCopy stringValue:0 dataValue:0 dateValue:0 birthDateValue:0 numberValue:v8 arrayValue:0 dictionaryValue:0 numericTypeHint:1];

  return v9;
}

- (DCCredentialElement)initWithElementIdentifier:(id)identifier doubleValue:(double)value
{
  v6 = MEMORY[0x277CCABB0];
  identifierCopy = identifier;
  v8 = [v6 numberWithDouble:value];
  v9 = [(DCCredentialElement *)self initWithElementIdentifier:identifierCopy stringValue:0 dataValue:0 dateValue:0 birthDateValue:0 numberValue:v8 arrayValue:0 dictionaryValue:0 numericTypeHint:2];

  return v9;
}

- (id)description
{
  stringValue = [(DCCredentialElement *)self stringValue];

  if (stringValue)
  {
    v4 = MEMORY[0x277CCACA8];
    elementIdentifier = [(DCCredentialElement *)self elementIdentifier];
    stringValue2 = [(DCCredentialElement *)self stringValue];
    [v4 stringWithFormat:@"DCCredentialElement identifier = %@; string value = %@", elementIdentifier, stringValue2];
    v13 = LABEL_9:;
LABEL_10:

    goto LABEL_11;
  }

  dateValue = [(DCCredentialElement *)self dateValue];

  if (dateValue)
  {
    v8 = MEMORY[0x277CCACA8];
    elementIdentifier = [(DCCredentialElement *)self elementIdentifier];
    stringValue2 = [(DCCredentialElement *)self dateValue];
    [v8 stringWithFormat:@"DCCredentialElement identifier = %@; date value = %@", elementIdentifier, stringValue2];
    goto LABEL_9;
  }

  birthDateValue = [(DCCredentialElement *)self birthDateValue];

  if (birthDateValue)
  {
    v10 = MEMORY[0x277CCACA8];
    elementIdentifier = [(DCCredentialElement *)self elementIdentifier];
    stringValue2 = [(DCCredentialElement *)self birthDateValue];
    [v10 stringWithFormat:@"DCCredentialElement identifier = %@; birthDate value = %@", elementIdentifier, stringValue2];
    goto LABEL_9;
  }

  dataValue = [(DCCredentialElement *)self dataValue];

  if (dataValue)
  {
    v12 = MEMORY[0x277CCACA8];
    elementIdentifier = [(DCCredentialElement *)self elementIdentifier];
    stringValue2 = [(DCCredentialElement *)self dataValue];
    [v12 stringWithFormat:@"DCCredentialElement identifier = %@; data value = %@", elementIdentifier, stringValue2];
    goto LABEL_9;
  }

  numberValue = [(DCCredentialElement *)self numberValue];

  if (numberValue)
  {
    v16 = MEMORY[0x277CCACA8];
    elementIdentifier = [(DCCredentialElement *)self elementIdentifier];
    stringValue2 = [(DCCredentialElement *)self numberValue];
    v17 = DCCredentialElementNumericTypeHintToString([(DCCredentialElement *)self numericTypeHint]);
    v13 = [v16 stringWithFormat:@"DCCredentialElement identifier = %@ number value = %@, type hint = %@", elementIdentifier, stringValue2, v17];;

    goto LABEL_10;
  }

  arrayValue = [(DCCredentialElement *)self arrayValue];

  if (arrayValue)
  {
    v19 = MEMORY[0x277CCACA8];
    elementIdentifier = [(DCCredentialElement *)self elementIdentifier];
    stringValue2 = [(DCCredentialElement *)self arrayValue];
    [v19 stringWithFormat:@"DCCredentialElement identifier = %@; array value = %@", elementIdentifier, stringValue2];
    goto LABEL_9;
  }

  dictionaryValue = [(DCCredentialElement *)self dictionaryValue];

  v21 = MEMORY[0x277CCACA8];
  elementIdentifier2 = [(DCCredentialElement *)self elementIdentifier];
  elementIdentifier = elementIdentifier2;
  if (dictionaryValue)
  {
    stringValue2 = [(DCCredentialElement *)self dictionaryValue];
    [v21 stringWithFormat:@"DCCredentialElement identifier = %@; dictionary value = %@", elementIdentifier, stringValue2];
    goto LABEL_9;
  }

  v13 = [v21 stringWithFormat:@"DCCredentialElement identifier = %@ no value", elementIdentifier2];;
LABEL_11:

  return v13;
}

@end