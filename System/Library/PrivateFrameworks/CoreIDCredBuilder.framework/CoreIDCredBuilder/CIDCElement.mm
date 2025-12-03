@interface CIDCElement
- (CIDCElement)initWithElementIdentifier:(id)identifier stringValue:(id)value dataValue:(id)dataValue dateValue:(id)dateValue numberValue:(id)numberValue arrayValue:(id)arrayValue dictionaryValue:(id)dictionaryValue integerKeyedDictionaryValue:(id)self0;
@end

@implementation CIDCElement

- (CIDCElement)initWithElementIdentifier:(id)identifier stringValue:(id)value dataValue:(id)dataValue dateValue:(id)dateValue numberValue:(id)numberValue arrayValue:(id)arrayValue dictionaryValue:(id)dictionaryValue integerKeyedDictionaryValue:(id)self0
{
  v26.receiver = self;
  v26.super_class = CIDCElement;
  keyedDictionaryValueCopy = keyedDictionaryValue;
  dictionaryValueCopy = dictionaryValue;
  arrayValueCopy = arrayValue;
  numberValueCopy = numberValue;
  dateValueCopy = dateValue;
  dataValueCopy = dataValue;
  valueCopy = value;
  identifierCopy = identifier;
  v24 = [(CIDCElement *)&v26 init];
  [(CIDCElement *)v24 setElementIdentifier:identifierCopy, v26.receiver, v26.super_class];

  [(CIDCElement *)v24 setStringValue:valueCopy];
  [(CIDCElement *)v24 setDateValue:dateValueCopy];

  [(CIDCElement *)v24 setDataValue:dataValueCopy];
  [(CIDCElement *)v24 setNumberValue:numberValueCopy];

  [(CIDCElement *)v24 setArrayValue:arrayValueCopy];
  [(CIDCElement *)v24 setDictionaryValue:dictionaryValueCopy];

  [(CIDCElement *)v24 setIntegerKeyedDictionaryValue:keyedDictionaryValueCopy];
  return v24;
}

@end