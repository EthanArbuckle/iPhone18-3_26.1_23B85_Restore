@interface WFPhoneNumber
+ (WFPhoneNumber)phoneNumberWithPhoneNumberString:(id)a3 contactName:(id)a4 label:(id)a5;
+ (WFPhoneNumber)phoneNumberWithTextCheckingResult:(id)a3;
+ (id)objectWithWFSerializedRepresentation:(id)a3;
+ (id)phoneNumbersInString:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)formattedPhoneNumber;
- (NSString)localizedLabel;
- (NSString)normalizedPhoneNumber;
- (NSString)wfName;
- (WFPhoneNumber)initWithCoder:(id)a3;
- (WFPhoneNumber)initWithPhoneNumberString:(id)a3 contactName:(id)a4 label:(id)a5;
- (id)wfSerializedRepresentation;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFPhoneNumber

- (id)wfSerializedRepresentation
{
  v3 = objc_opt_new();
  v4 = [(WFPhoneNumber *)self string];
  [v3 setObject:v4 forKey:@"link.contentkit.phonenumber"];

  [v3 setValue:self->_contactName forKey:@"link.contentkit.phonenumber.contactname"];
  [v3 setValue:self->_label forKey:@"link.contentkit.phonelabel"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(WFPhoneNumber *)self string];
  v4 = [v3 hash];
  v5 = [(WFPhoneNumber *)self label];
  v6 = [v5 hash];
  v7 = [(WFPhoneNumber *)self contactName];
  v8 = v4 ^ v6;
  v9 = [v7 hash] ^ 0x9811FA8CLL;

  return v8 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (v6 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(WFPhoneNumber *)v6 string];
      v8 = [(WFPhoneNumber *)self string];
      if (![v7 isEqualToString:v8])
      {
        v11 = 0;
LABEL_21:

        goto LABEL_22;
      }

      v9 = [(WFPhoneNumber *)v6 label];
      if (v9 || ([(WFPhoneNumber *)self label], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v3 = [(WFPhoneNumber *)v6 label];
        v4 = [(WFPhoneNumber *)self label];
        if (([v3 isEqualToString:v4] & 1) == 0)
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

      v12 = [(WFPhoneNumber *)v6 contactName];
      if (v12 || ([(WFPhoneNumber *)self contactName], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v19 = v10;
        v13 = [(WFPhoneNumber *)v6 contactName];
        v14 = [(WFPhoneNumber *)self contactName];
        v11 = [v13 isEqualToString:v14];

        if (v12)
        {

          if (v19)
          {
LABEL_17:
          }

LABEL_18:
          if (!v9)
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

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_string forKey:@"string"];
  label = self->_label;
  if (label)
  {
    [v6 encodeObject:label forKey:@"phoneLabel"];
  }

  contactName = self->_contactName;
  if (contactName)
  {
    [v6 encodeObject:contactName forKey:@"contactName"];
  }
}

- (WFPhoneNumber)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"string"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneLabel"];

  v8 = [(WFPhoneNumber *)self initWithPhoneNumberString:v5 contactName:v6 label:v7];
  return v8;
}

- (NSString)localizedLabel
{
  v2 = [(WFPhoneNumber *)self label];
  if (v2)
  {
    v3 = [WFContactLabeledValue localizedStringForLabel:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)wfName
{
  v3 = [(WFPhoneNumber *)self contactName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(WFPhoneNumber *)self formattedPhoneNumber];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(WFPhoneNumber *)self string];
    }

    v5 = v8;
  }

  return v5;
}

- (NSString)normalizedPhoneNumber
{
  CNPhoneNumberClass = getCNPhoneNumberClass();
  v4 = [(WFPhoneNumber *)self string];
  v5 = [CNPhoneNumberClass phoneNumberWithStringValue:v4];
  v6 = [v5 unformattedInternationalStringValue];

  return v6;
}

- (NSString)formattedPhoneNumber
{
  CNPhoneNumberClass = getCNPhoneNumberClass();
  v4 = [(WFPhoneNumber *)self string];
  v5 = [CNPhoneNumberClass phoneNumberWithStringValue:v4];
  v6 = [v5 formattedStringValue];

  return v6;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(WFPhoneNumber *)self normalizedPhoneNumber];
  v6 = [v4 normalizedPhoneNumber];

  v7 = [v5 compare:v6];
  return v7;
}

- (WFPhoneNumber)initWithPhoneNumberString:(id)a3 contactName:(id)a4 label:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 length] && (self = -[WFPhoneNumber init](self, "init")) != 0)
  {
    v11 = [v8 copy];
    string = self->_string;
    self->_string = v11;

    v13 = [v9 copy];
    contactName = self->_contactName;
    self->_contactName = v13;

    v15 = [v10 copy];
    label = self->_label;
    self->_label = v15;

    self = self;
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)objectWithWFSerializedRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.phonenumber"];
  v6 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.phonenumber.contactname"];
  v7 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.phonelabel"];

  v8 = [[a1 alloc] initWithPhoneNumberString:v5 contactName:v6 label:v7];

  return v8;
}

+ (WFPhoneNumber)phoneNumberWithPhoneNumberString:(id)a3 contactName:(id)a4 label:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithPhoneNumberString:v10 contactName:v9 label:v8];

  return v11;
}

+ (WFPhoneNumber)phoneNumberWithTextCheckingResult:(id)a3
{
  v4 = [a3 phoneNumber];
  v5 = [a1 phoneNumberWithPhoneNumberString:v4];

  return v5;
}

+ (id)phoneNumbersInString:(id)a3 error:(id *)a4
{
  v4 = [WFDataDetector resultsForString:a3 ofTypes:2048 error:a4];
  v5 = [v4 phoneNumbers];

  return v5;
}

@end