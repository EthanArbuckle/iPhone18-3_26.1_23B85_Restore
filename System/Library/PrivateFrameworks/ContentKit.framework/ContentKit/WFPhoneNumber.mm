@interface WFPhoneNumber
+ (WFPhoneNumber)phoneNumberWithPhoneNumberString:(id)string contactName:(id)name label:(id)label;
+ (WFPhoneNumber)phoneNumberWithTextCheckingResult:(id)result;
+ (id)objectWithWFSerializedRepresentation:(id)representation;
+ (id)phoneNumbersInString:(id)string error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)formattedPhoneNumber;
- (NSString)localizedLabel;
- (NSString)normalizedPhoneNumber;
- (NSString)wfName;
- (WFPhoneNumber)initWithCoder:(id)coder;
- (WFPhoneNumber)initWithPhoneNumberString:(id)string contactName:(id)name label:(id)label;
- (id)wfSerializedRepresentation;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFPhoneNumber

- (id)wfSerializedRepresentation
{
  v3 = objc_opt_new();
  string = [(WFPhoneNumber *)self string];
  [v3 setObject:string forKey:@"link.contentkit.phonenumber"];

  [v3 setValue:self->_contactName forKey:@"link.contentkit.phonenumber.contactname"];
  [v3 setValue:self->_label forKey:@"link.contentkit.phonelabel"];

  return v3;
}

- (unint64_t)hash
{
  string = [(WFPhoneNumber *)self string];
  v4 = [string hash];
  label = [(WFPhoneNumber *)self label];
  v6 = [label hash];
  contactName = [(WFPhoneNumber *)self contactName];
  v8 = v4 ^ v6;
  v9 = [contactName hash] ^ 0x9811FA8CLL;

  return v8 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      string = [(WFPhoneNumber *)equalCopy string];
      string2 = [(WFPhoneNumber *)self string];
      if (![string isEqualToString:string2])
      {
        v11 = 0;
LABEL_21:

        goto LABEL_22;
      }

      label = [(WFPhoneNumber *)equalCopy label];
      if (label || ([(WFPhoneNumber *)self label], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        label2 = [(WFPhoneNumber *)equalCopy label];
        label3 = [(WFPhoneNumber *)self label];
        if (([label2 isEqualToString:label3] & 1) == 0)
        {

          v11 = 0;
          goto LABEL_18;
        }

        v10 = 1;
      }

      else
      {
        v18 = 0;
        v10 = 0;
      }

      contactName = [(WFPhoneNumber *)equalCopy contactName];
      if (contactName || ([(WFPhoneNumber *)self contactName], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v19 = v10;
        contactName2 = [(WFPhoneNumber *)equalCopy contactName];
        contactName3 = [(WFPhoneNumber *)self contactName];
        v11 = [contactName2 isEqualToString:contactName3];

        if (contactName)
        {

          if (v19)
          {
LABEL_17:
          }

LABEL_18:
          if (!label)
          {
          }

          goto LABEL_21;
        }

        LOBYTE(v10) = v19;
        v16 = v17;
      }

      else
      {
        v16 = 0;
        v11 = 1;
      }

      if ((v10 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_22:

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_string forKey:@"string"];
  label = self->_label;
  if (label)
  {
    [coderCopy encodeObject:label forKey:@"phoneLabel"];
  }

  contactName = self->_contactName;
  if (contactName)
  {
    [coderCopy encodeObject:contactName forKey:@"contactName"];
  }
}

- (WFPhoneNumber)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"string"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneLabel"];

  v8 = [(WFPhoneNumber *)self initWithPhoneNumberString:v5 contactName:v6 label:v7];
  return v8;
}

- (NSString)localizedLabel
{
  label = [(WFPhoneNumber *)self label];
  if (label)
  {
    v3 = [WFContactLabeledValue localizedStringForLabel:label];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)wfName
{
  contactName = [(WFPhoneNumber *)self contactName];
  v4 = contactName;
  if (contactName)
  {
    v5 = contactName;
  }

  else
  {
    formattedPhoneNumber = [(WFPhoneNumber *)self formattedPhoneNumber];
    v7 = formattedPhoneNumber;
    if (formattedPhoneNumber)
    {
      string = formattedPhoneNumber;
    }

    else
    {
      string = [(WFPhoneNumber *)self string];
    }

    v5 = string;
  }

  return v5;
}

- (NSString)normalizedPhoneNumber
{
  CNPhoneNumberClass = getCNPhoneNumberClass();
  string = [(WFPhoneNumber *)self string];
  v5 = [CNPhoneNumberClass phoneNumberWithStringValue:string];
  unformattedInternationalStringValue = [v5 unformattedInternationalStringValue];

  return unformattedInternationalStringValue;
}

- (NSString)formattedPhoneNumber
{
  CNPhoneNumberClass = getCNPhoneNumberClass();
  string = [(WFPhoneNumber *)self string];
  v5 = [CNPhoneNumberClass phoneNumberWithStringValue:string];
  formattedStringValue = [v5 formattedStringValue];

  return formattedStringValue;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  normalizedPhoneNumber = [(WFPhoneNumber *)self normalizedPhoneNumber];
  normalizedPhoneNumber2 = [compareCopy normalizedPhoneNumber];

  v7 = [normalizedPhoneNumber compare:normalizedPhoneNumber2];
  return v7;
}

- (WFPhoneNumber)initWithPhoneNumberString:(id)string contactName:(id)name label:(id)label
{
  stringCopy = string;
  nameCopy = name;
  labelCopy = label;
  if ([stringCopy length] && (self = -[WFPhoneNumber init](self, "init")) != 0)
  {
    v11 = [stringCopy copy];
    string = self->_string;
    self->_string = v11;

    v13 = [nameCopy copy];
    contactName = self->_contactName;
    self->_contactName = v13;

    v15 = [labelCopy copy];
    label = self->_label;
    self->_label = v15;

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)objectWithWFSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.phonenumber"];
  v6 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.phonenumber.contactname"];
  v7 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.phonelabel"];

  v8 = [[self alloc] initWithPhoneNumberString:v5 contactName:v6 label:v7];

  return v8;
}

+ (WFPhoneNumber)phoneNumberWithPhoneNumberString:(id)string contactName:(id)name label:(id)label
{
  labelCopy = label;
  nameCopy = name;
  stringCopy = string;
  v11 = [[self alloc] initWithPhoneNumberString:stringCopy contactName:nameCopy label:labelCopy];

  return v11;
}

+ (WFPhoneNumber)phoneNumberWithTextCheckingResult:(id)result
{
  phoneNumber = [result phoneNumber];
  v5 = [self phoneNumberWithPhoneNumberString:phoneNumber];

  return v5;
}

+ (id)phoneNumbersInString:(id)string error:(id *)error
{
  v4 = [WFDataDetector resultsForString:string ofTypes:2048 error:error];
  phoneNumbers = [v4 phoneNumbers];

  return phoneNumbers;
}

@end