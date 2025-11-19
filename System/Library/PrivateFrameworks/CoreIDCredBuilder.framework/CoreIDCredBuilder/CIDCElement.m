@interface CIDCElement
- (CIDCElement)initWithElementIdentifier:(id)a3 stringValue:(id)a4 dataValue:(id)a5 dateValue:(id)a6 numberValue:(id)a7 arrayValue:(id)a8 dictionaryValue:(id)a9 integerKeyedDictionaryValue:(id)a10;
@end

@implementation CIDCElement

- (CIDCElement)initWithElementIdentifier:(id)a3 stringValue:(id)a4 dataValue:(id)a5 dateValue:(id)a6 numberValue:(id)a7 arrayValue:(id)a8 dictionaryValue:(id)a9 integerKeyedDictionaryValue:(id)a10
{
  v26.receiver = self;
  v26.super_class = CIDCElement;
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [(CIDCElement *)&v26 init];
  [(CIDCElement *)v24 setElementIdentifier:v23, v26.receiver, v26.super_class];

  [(CIDCElement *)v24 setStringValue:v22];
  [(CIDCElement *)v24 setDateValue:v20];

  [(CIDCElement *)v24 setDataValue:v21];
  [(CIDCElement *)v24 setNumberValue:v19];

  [(CIDCElement *)v24 setArrayValue:v18];
  [(CIDCElement *)v24 setDictionaryValue:v17];

  [(CIDCElement *)v24 setIntegerKeyedDictionaryValue:v16];
  return v24;
}

@end