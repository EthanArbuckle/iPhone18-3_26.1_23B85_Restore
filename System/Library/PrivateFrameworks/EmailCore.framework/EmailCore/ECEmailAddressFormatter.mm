@interface ECEmailAddressFormatter
- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description;
- (ECEmailAddressFormatter)initWithStyle:(int64_t)style;
- (id)_groupListString:(id)string;
- (id)_stringFromEmailAddressList:(id)list includeDisplayName:(BOOL)name;
- (id)_stringFromGroupEmailAddress:(id)address;
- (id)_stringFromMailboxAddress:(id)address includeDisplayName:(BOOL)name;
- (id)emailAddressFromString:(id)string;
- (id)stringForObjectValue:(id)value;
- (id)stringFromEmailAddress:(id)address;
- (id)stringFromEmailAddressConvertible:(id)convertible;
- (id)stringFromEmailAddressList:(id)list;
@end

@implementation ECEmailAddressFormatter

- (ECEmailAddressFormatter)initWithStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = ECEmailAddressFormatter;
  result = [(ECEmailAddressFormatter *)&v5 init];
  if (result)
  {
    result->_style = style;
  }

  return result;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ECEmailAddressFormatter *)self stringFromEmailAddress:valueCopy];
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  if ([valueCopy conformsToProtocol:&unk_284054FB0])
  {
    v5 = [(ECEmailAddressFormatter *)self stringFromEmailAddressConvertible:valueCopy];
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy ef_all:&__block_literal_global_7])
  {
    v5 = [(ECEmailAddressFormatter *)self stringFromEmailAddressList:valueCopy];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description
{
  stringCopy = string;
  v9 = [(ECEmailAddressFormatter *)self emailAddressFromString:stringCopy];
  v10 = v9;
  if (v9)
  {
    if (value)
    {
      v11 = v9;
      *value = v10;
    }
  }

  else if (description)
  {
    *description = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to parse: %@", stringCopy];
  }

  return v10 != 0;
}

- (id)emailAddressFromString:(id)string
{
  v3 = [ECEmailAddress emailAddressWithString:string];

  return v3;
}

- (id)stringFromEmailAddress:(id)address
{
  addressCopy = address;
  if (!addressCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ECEmailAddressFormatter.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"emailAddress"}];
  }

  v6 = [(ECEmailAddressFormatter *)self _stringFromEmailAddress:addressCopy includeDisplayName:[(ECEmailAddressFormatter *)self shouldIncludeDisplayName]];

  return v6;
}

- (id)stringFromEmailAddressConvertible:(id)convertible
{
  convertibleCopy = convertible;
  if (!convertibleCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ECEmailAddressFormatter.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"emailAddressConvertible"}];
  }

  v6 = [(ECEmailAddressFormatter *)self _stringFromEmailAddressConvertible:convertibleCopy includeDisplayName:[(ECEmailAddressFormatter *)self shouldIncludeDisplayName]];

  return v6;
}

- (id)stringFromEmailAddressList:(id)list
{
  listCopy = list;
  v5 = [(ECEmailAddressFormatter *)self _stringFromEmailAddressList:listCopy includeDisplayName:[(ECEmailAddressFormatter *)self shouldIncludeDisplayName]];

  return v5;
}

- (id)_stringFromEmailAddressList:(id)list includeDisplayName:(BOOL)name
{
  listCopy = list;
  string = [MEMORY[0x277CCAB68] string];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__ECEmailAddressFormatter__stringFromEmailAddressList_includeDisplayName___block_invoke;
  v11[3] = &unk_27874B9B8;
  v8 = string;
  v12 = v8;
  selfCopy = self;
  nameCopy = name;
  [listCopy enumerateObjectsUsingBlock:v11];
  v9 = [v8 copy];

  return v9;
}

void __74__ECEmailAddressFormatter__stringFromEmailAddressList_includeDisplayName___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) _stringFromEmailAddressConvertible:a2 includeDisplayName:*(a1 + 48)];
  v6 = @", ";
  if (!a3)
  {
    v6 = &stru_284041D88;
  }

  v7 = v5;
  [v4 appendFormat:@"%@%@", v6, v5];
}

- (id)_stringFromMailboxAddress:(id)address includeDisplayName:(BOOL)name
{
  nameCopy = name;
  addressCopy = address;
  v7 = addressCopy;
  style = self->_style;
  if (style == 1)
  {
    idnaAddress = [addressCopy idnaAddress];
  }

  else
  {
    if (style == 2)
    {
      ef_publicDescription = [addressCopy ef_publicDescription];
      goto LABEL_12;
    }

    idnaAddress = [addressCopy simpleAddress];
  }

  v11 = idnaAddress;
  if (!nameCopy)
  {
    goto LABEL_10;
  }

  displayName = [v7 displayName];
  ecemailaddress_trimmedAndQuotedDisplayName = [displayName ecemailaddress_trimmedAndQuotedDisplayName];

  if (![ecemailaddress_trimmedAndQuotedDisplayName length])
  {

LABEL_10:
    ef_publicDescription = v11;
    goto LABEL_11;
  }

  ef_publicDescription = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ <%@>", ecemailaddress_trimmedAndQuotedDisplayName, v11];

LABEL_11:
LABEL_12:

  return ef_publicDescription;
}

- (id)_groupListString:(id)string
{
  groupList = [string groupList];
  v5 = [(ECEmailAddressFormatter *)self _stringFromEmailAddressList:groupList includeDisplayName:1];

  return v5;
}

- (id)_stringFromGroupEmailAddress:(id)address
{
  addressCopy = address;
  v5 = addressCopy;
  if (self->_style == 2)
  {
    ef_publicDescription = [addressCopy ef_publicDescription];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    displayName = [addressCopy displayName];
    ecemailaddress_trimmedAndQuotedDisplayName = [displayName ecemailaddress_trimmedAndQuotedDisplayName];
    v10 = [(ECEmailAddressFormatter *)self _groupListString:v5];
    ef_publicDescription = [v7 stringWithFormat:@"%@:%@", ecemailaddress_trimmedAndQuotedDisplayName, v10];;
  }

  return ef_publicDescription;
}

@end