@interface _NBPhoneNumberDesc
- (_NBPhoneNumberDesc)initWithEntry:(id)a3;
- (id)description;
@end

@implementation _NBPhoneNumberDesc

- (_NBPhoneNumberDesc)initWithEntry:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = _NBPhoneNumberDesc;
  v5 = [(_NBPhoneNumberDesc *)&v22 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 nb_safeStringAtIndex:2];
    nationalNumberPattern = v6->_nationalNumberPattern;
    v6->_nationalNumberPattern = v7;

    v9 = [v4 nb_safeStringAtIndex:3];
    possibleNumberPattern = v6->_possibleNumberPattern;
    v6->_possibleNumberPattern = v9;

    v11 = [v4 nb_safeArrayAtIndex:9];
    possibleLength = v6->_possibleLength;
    v6->_possibleLength = v11;

    v13 = [v4 nb_safeArrayAtIndex:10];
    possibleLengthLocalOnly = v6->_possibleLengthLocalOnly;
    v6->_possibleLengthLocalOnly = v13;

    v15 = [v4 nb_safeStringAtIndex:6];
    exampleNumber = v6->_exampleNumber;
    v6->_exampleNumber = v15;

    v17 = [v4 nb_safeDataAtIndex:7];
    nationalNumberMatcherData = v6->_nationalNumberMatcherData;
    v6->_nationalNumberMatcherData = v17;

    v19 = [v4 nb_safeDataAtIndex:8];
    possibleNumberMatcherData = v6->_possibleNumberMatcherData;
    v6->_possibleNumberMatcherData = v19;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(_NBPhoneNumberDesc *)self nationalNumberPattern];
  v5 = [(_NBPhoneNumberDesc *)self possibleNumberPattern];
  v6 = [(_NBPhoneNumberDesc *)self possibleLength];
  v7 = [(_NBPhoneNumberDesc *)self possibleLengthLocalOnly];
  v8 = [(_NBPhoneNumberDesc *)self exampleNumber];
  v9 = [v3 stringWithFormat:@"nationalNumberPattern[%@] possibleNumberPattern[%@] possibleLength[%@] possibleLengthLocalOnly[%@] exampleNumber[%@]", v4, v5, v6, v7, v8];

  return v9;
}

@end