@interface _NBPhoneNumber
- (BOOL)isEqual:(id)equal;
- (_NBPhoneNumber)init;
- (_NBPhoneNumber)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)getCountryCodeSourceOrDefault;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _NBPhoneNumber

- (_NBPhoneNumber)init
{
  v5.receiver = self;
  v5.super_class = _NBPhoneNumber;
  v2 = [(_NBPhoneNumber *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_NBPhoneNumber *)v2 setNationalNumber:&unk_285464A58];
    [(_NBPhoneNumber *)v3 setCountryCode:&unk_285464A58];
    [(_NBPhoneNumber *)v3 setNumberOfLeadingZeros:&unk_285464A70];
  }

  return v3;
}

- (int64_t)getCountryCodeSourceOrDefault
{
  countryCodeSource = [(_NBPhoneNumber *)self countryCodeSource];

  if (!countryCodeSource)
  {
    return 1;
  }

  countryCodeSource2 = [(_NBPhoneNumber *)self countryCodeSource];
  integerValue = [countryCodeSource2 integerValue];

  return integerValue;
}

- (unint64_t)hash
{
  countryCode = [(_NBPhoneNumber *)self countryCode];
  v4 = [countryCode hash];

  nationalNumber = [(_NBPhoneNumber *)self nationalNumber];
  v6 = ((v4 << 6) + (v4 >> 2) + [nationalNumber hash] + 2654435769) ^ v4;

  numberOfLeadingZeros = [(_NBPhoneNumber *)self numberOfLeadingZeros];
  v8 = ((v6 << 6) + (v6 >> 2) + [numberOfLeadingZeros hash] + 2654435769) ^ v6;

  extension = [(_NBPhoneNumber *)self extension];
  v10 = [extension hash] + (v8 << 6) + (v8 >> 2) + 2654435769u;

  return v10 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    countryCode = [(_NBPhoneNumber *)self countryCode];
    countryCode2 = [v5 countryCode];
    if (![countryCode isEqualToNumber:countryCode2])
    {
      v11 = 0;
LABEL_19:

      goto LABEL_20;
    }

    nationalNumber = [(_NBPhoneNumber *)self nationalNumber];
    nationalNumber2 = [v5 nationalNumber];
    if (![nationalNumber isEqualToNumber:nationalNumber2] || (v10 = -[_NBPhoneNumber italianLeadingZero](self, "italianLeadingZero"), v10 != objc_msgSend(v5, "italianLeadingZero")))
    {
      v11 = 0;
LABEL_18:

      goto LABEL_19;
    }

    numberOfLeadingZeros = [(_NBPhoneNumber *)self numberOfLeadingZeros];
    numberOfLeadingZeros2 = [v5 numberOfLeadingZeros];
    if (![numberOfLeadingZeros isEqualToNumber:numberOfLeadingZeros2])
    {
      v11 = 0;
LABEL_17:

      goto LABEL_18;
    }

    extension = [(_NBPhoneNumber *)self extension];
    if (extension || ([v5 extension], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [(_NBPhoneNumber *)self extension];
      v15 = v20 = numberOfLeadingZeros;
      [v5 extension];
      v16 = v19 = numberOfLeadingZeros2;
      v11 = [v15 isEqualToString:v16];

      numberOfLeadingZeros2 = v19;
      numberOfLeadingZeros = v20;
      if (extension)
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      v18 = 0;
      v11 = 1;
    }

    extension = v18;
    goto LABEL_16;
  }

  v11 = 0;
LABEL_20:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_NBPhoneNumber allocWithZone:?]];
  countryCode = [(_NBPhoneNumber *)self countryCode];
  v6 = [countryCode copy];
  [(_NBPhoneNumber *)v4 setCountryCode:v6];

  nationalNumber = [(_NBPhoneNumber *)self nationalNumber];
  v8 = [nationalNumber copy];
  [(_NBPhoneNumber *)v4 setNationalNumber:v8];

  extension = [(_NBPhoneNumber *)self extension];
  v10 = [extension copy];
  [(_NBPhoneNumber *)v4 setExtension:v10];

  [(_NBPhoneNumber *)v4 setItalianLeadingZero:[(_NBPhoneNumber *)self italianLeadingZero]];
  numberOfLeadingZeros = [(_NBPhoneNumber *)self numberOfLeadingZeros];
  v12 = [numberOfLeadingZeros copy];
  [(_NBPhoneNumber *)v4 setNumberOfLeadingZeros:v12];

  rawInput = [(_NBPhoneNumber *)self rawInput];
  v14 = [rawInput copy];
  [(_NBPhoneNumber *)v4 setRawInput:v14];

  countryCodeSource = [(_NBPhoneNumber *)self countryCodeSource];
  v16 = [countryCodeSource copy];
  [(_NBPhoneNumber *)v4 setCountryCodeSource:v16];

  preferredDomesticCarrierCode = [(_NBPhoneNumber *)self preferredDomesticCarrierCode];
  v18 = [preferredDomesticCarrierCode copy];
  [(_NBPhoneNumber *)v4 setPreferredDomesticCarrierCode:v18];

  return v4;
}

- (_NBPhoneNumber)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _NBPhoneNumber;
  v5 = [(_NBPhoneNumber *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"countryCode"];
    [(_NBPhoneNumber *)v5 setCountryCode:v6];

    v7 = [coderCopy decodeObjectForKey:@"nationalNumber"];
    [(_NBPhoneNumber *)v5 setNationalNumber:v7];

    v8 = [coderCopy decodeObjectForKey:@"extension"];
    [(_NBPhoneNumber *)v5 setExtension:v8];

    v9 = [coderCopy decodeObjectForKey:@"italianLeadingZero"];
    -[_NBPhoneNumber setItalianLeadingZero:](v5, "setItalianLeadingZero:", [v9 BOOLValue]);

    v10 = [coderCopy decodeObjectForKey:@"numberOfLeadingZeros"];
    [(_NBPhoneNumber *)v5 setNumberOfLeadingZeros:v10];

    v11 = [coderCopy decodeObjectForKey:@"rawInput"];
    [(_NBPhoneNumber *)v5 setRawInput:v11];

    v12 = [coderCopy decodeObjectForKey:@"countryCodeSource"];
    [(_NBPhoneNumber *)v5 setCountryCodeSource:v12];

    v13 = [coderCopy decodeObjectForKey:@"preferredDomesticCarrierCode"];
    [(_NBPhoneNumber *)v5 setPreferredDomesticCarrierCode:v13];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  countryCode = [(_NBPhoneNumber *)self countryCode];
  [coderCopy encodeObject:countryCode forKey:@"countryCode"];

  nationalNumber = [(_NBPhoneNumber *)self nationalNumber];
  [coderCopy encodeObject:nationalNumber forKey:@"nationalNumber"];

  extension = [(_NBPhoneNumber *)self extension];
  [coderCopy encodeObject:extension forKey:@"extension"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[_NBPhoneNumber italianLeadingZero](self, "italianLeadingZero")}];
  [coderCopy encodeObject:v8 forKey:@"italianLeadingZero"];

  numberOfLeadingZeros = [(_NBPhoneNumber *)self numberOfLeadingZeros];
  [coderCopy encodeObject:numberOfLeadingZeros forKey:@"numberOfLeadingZeros"];

  rawInput = [(_NBPhoneNumber *)self rawInput];
  [coderCopy encodeObject:rawInput forKey:@"rawInput"];

  countryCodeSource = [(_NBPhoneNumber *)self countryCodeSource];
  [coderCopy encodeObject:countryCodeSource forKey:@"countryCodeSource"];

  preferredDomesticCarrierCode = [(_NBPhoneNumber *)self preferredDomesticCarrierCode];
  [coderCopy encodeObject:preferredDomesticCarrierCode forKey:@"preferredDomesticCarrierCode"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  countryCode = [(_NBPhoneNumber *)self countryCode];
  nationalNumber = [(_NBPhoneNumber *)self nationalNumber];
  extension = [(_NBPhoneNumber *)self extension];
  if ([(_NBPhoneNumber *)self italianLeadingZero])
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  numberOfLeadingZeros = [(_NBPhoneNumber *)self numberOfLeadingZeros];
  rawInput = [(_NBPhoneNumber *)self rawInput];
  countryCodeSource = [(_NBPhoneNumber *)self countryCodeSource];
  preferredDomesticCarrierCode = [(_NBPhoneNumber *)self preferredDomesticCarrierCode];
  v12 = [v3 stringWithFormat:@" - countryCode[%@], nationalNumber[%@], extension[%@], italianLeadingZero[%@], numberOfLeadingZeros[%@], rawInput[%@] countryCodeSource[%@] preferredDomesticCarrierCode[%@]", countryCode, nationalNumber, extension, v7, numberOfLeadingZeros, rawInput, countryCodeSource, preferredDomesticCarrierCode];

  return v12;
}

@end