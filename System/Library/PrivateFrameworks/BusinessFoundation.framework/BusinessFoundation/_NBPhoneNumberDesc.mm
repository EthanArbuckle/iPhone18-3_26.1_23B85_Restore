@interface _NBPhoneNumberDesc
- (_NBPhoneNumberDesc)initWithEntry:(id)entry;
- (id)description;
@end

@implementation _NBPhoneNumberDesc

- (_NBPhoneNumberDesc)initWithEntry:(id)entry
{
  entryCopy = entry;
  v22.receiver = self;
  v22.super_class = _NBPhoneNumberDesc;
  v5 = [(_NBPhoneNumberDesc *)&v22 init];
  v6 = v5;
  if (entryCopy && v5)
  {
    v7 = [entryCopy nb_safeStringAtIndex:2];
    nationalNumberPattern = v6->_nationalNumberPattern;
    v6->_nationalNumberPattern = v7;

    v9 = [entryCopy nb_safeStringAtIndex:3];
    possibleNumberPattern = v6->_possibleNumberPattern;
    v6->_possibleNumberPattern = v9;

    v11 = [entryCopy nb_safeArrayAtIndex:9];
    possibleLength = v6->_possibleLength;
    v6->_possibleLength = v11;

    v13 = [entryCopy nb_safeArrayAtIndex:10];
    possibleLengthLocalOnly = v6->_possibleLengthLocalOnly;
    v6->_possibleLengthLocalOnly = v13;

    v15 = [entryCopy nb_safeStringAtIndex:6];
    exampleNumber = v6->_exampleNumber;
    v6->_exampleNumber = v15;

    v17 = [entryCopy nb_safeDataAtIndex:7];
    nationalNumberMatcherData = v6->_nationalNumberMatcherData;
    v6->_nationalNumberMatcherData = v17;

    v19 = [entryCopy nb_safeDataAtIndex:8];
    possibleNumberMatcherData = v6->_possibleNumberMatcherData;
    v6->_possibleNumberMatcherData = v19;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  nationalNumberPattern = [(_NBPhoneNumberDesc *)self nationalNumberPattern];
  possibleNumberPattern = [(_NBPhoneNumberDesc *)self possibleNumberPattern];
  possibleLength = [(_NBPhoneNumberDesc *)self possibleLength];
  possibleLengthLocalOnly = [(_NBPhoneNumberDesc *)self possibleLengthLocalOnly];
  exampleNumber = [(_NBPhoneNumberDesc *)self exampleNumber];
  v9 = [v3 stringWithFormat:@"nationalNumberPattern[%@] possibleNumberPattern[%@] possibleLength[%@] possibleLengthLocalOnly[%@] exampleNumber[%@]", nationalNumberPattern, possibleNumberPattern, possibleLength, possibleLengthLocalOnly, exampleNumber];

  return v9;
}

@end