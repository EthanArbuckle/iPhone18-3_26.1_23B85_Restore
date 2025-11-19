@interface _NBPhoneNumber
- (BOOL)isEqual:(id)a3;
- (_NBPhoneNumber)init;
- (_NBPhoneNumber)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)getCountryCodeSourceOrDefault;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v3 = [(_NBPhoneNumber *)self countryCodeSource];

  if (!v3)
  {
    return 1;
  }

  v4 = [(_NBPhoneNumber *)self countryCodeSource];
  v5 = [v4 integerValue];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(_NBPhoneNumber *)self countryCode];
  v4 = [v3 hash];

  v5 = [(_NBPhoneNumber *)self nationalNumber];
  v6 = ((v4 << 6) + (v4 >> 2) + [v5 hash] + 2654435769) ^ v4;

  v7 = [(_NBPhoneNumber *)self numberOfLeadingZeros];
  v8 = ((v6 << 6) + (v6 >> 2) + [v7 hash] + 2654435769) ^ v6;

  v9 = [(_NBPhoneNumber *)self extension];
  v10 = [v9 hash] + (v8 << 6) + (v8 >> 2) + 2654435769u;

  return v10 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_NBPhoneNumber *)self countryCode];
    v7 = [v5 countryCode];
    if (![v6 isEqualToNumber:v7])
    {
      v11 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v8 = [(_NBPhoneNumber *)self nationalNumber];
    v9 = [v5 nationalNumber];
    if (![v8 isEqualToNumber:v9] || (v10 = -[_NBPhoneNumber italianLeadingZero](self, "italianLeadingZero"), v10 != objc_msgSend(v5, "italianLeadingZero")))
    {
      v11 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v12 = [(_NBPhoneNumber *)self numberOfLeadingZeros];
    v13 = [v5 numberOfLeadingZeros];
    if (![v12 isEqualToNumber:v13])
    {
      v11 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v14 = [(_NBPhoneNumber *)self extension];
    if (v14 || ([v5 extension], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [(_NBPhoneNumber *)self extension];
      v15 = v20 = v12;
      [v5 extension];
      v16 = v19 = v13;
      v11 = [v15 isEqualToString:v16];

      v13 = v19;
      v12 = v20;
      if (v14)
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

    v14 = v18;
    goto LABEL_16;
  }

  v11 = 0;
LABEL_20:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_NBPhoneNumber allocWithZone:?]];
  v5 = [(_NBPhoneNumber *)self countryCode];
  v6 = [v5 copy];
  [(_NBPhoneNumber *)v4 setCountryCode:v6];

  v7 = [(_NBPhoneNumber *)self nationalNumber];
  v8 = [v7 copy];
  [(_NBPhoneNumber *)v4 setNationalNumber:v8];

  v9 = [(_NBPhoneNumber *)self extension];
  v10 = [v9 copy];
  [(_NBPhoneNumber *)v4 setExtension:v10];

  [(_NBPhoneNumber *)v4 setItalianLeadingZero:[(_NBPhoneNumber *)self italianLeadingZero]];
  v11 = [(_NBPhoneNumber *)self numberOfLeadingZeros];
  v12 = [v11 copy];
  [(_NBPhoneNumber *)v4 setNumberOfLeadingZeros:v12];

  v13 = [(_NBPhoneNumber *)self rawInput];
  v14 = [v13 copy];
  [(_NBPhoneNumber *)v4 setRawInput:v14];

  v15 = [(_NBPhoneNumber *)self countryCodeSource];
  v16 = [v15 copy];
  [(_NBPhoneNumber *)v4 setCountryCodeSource:v16];

  v17 = [(_NBPhoneNumber *)self preferredDomesticCarrierCode];
  v18 = [v17 copy];
  [(_NBPhoneNumber *)v4 setPreferredDomesticCarrierCode:v18];

  return v4;
}

- (_NBPhoneNumber)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _NBPhoneNumber;
  v5 = [(_NBPhoneNumber *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"countryCode"];
    [(_NBPhoneNumber *)v5 setCountryCode:v6];

    v7 = [v4 decodeObjectForKey:@"nationalNumber"];
    [(_NBPhoneNumber *)v5 setNationalNumber:v7];

    v8 = [v4 decodeObjectForKey:@"extension"];
    [(_NBPhoneNumber *)v5 setExtension:v8];

    v9 = [v4 decodeObjectForKey:@"italianLeadingZero"];
    -[_NBPhoneNumber setItalianLeadingZero:](v5, "setItalianLeadingZero:", [v9 BOOLValue]);

    v10 = [v4 decodeObjectForKey:@"numberOfLeadingZeros"];
    [(_NBPhoneNumber *)v5 setNumberOfLeadingZeros:v10];

    v11 = [v4 decodeObjectForKey:@"rawInput"];
    [(_NBPhoneNumber *)v5 setRawInput:v11];

    v12 = [v4 decodeObjectForKey:@"countryCodeSource"];
    [(_NBPhoneNumber *)v5 setCountryCodeSource:v12];

    v13 = [v4 decodeObjectForKey:@"preferredDomesticCarrierCode"];
    [(_NBPhoneNumber *)v5 setPreferredDomesticCarrierCode:v13];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_NBPhoneNumber *)self countryCode];
  [v4 encodeObject:v5 forKey:@"countryCode"];

  v6 = [(_NBPhoneNumber *)self nationalNumber];
  [v4 encodeObject:v6 forKey:@"nationalNumber"];

  v7 = [(_NBPhoneNumber *)self extension];
  [v4 encodeObject:v7 forKey:@"extension"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[_NBPhoneNumber italianLeadingZero](self, "italianLeadingZero")}];
  [v4 encodeObject:v8 forKey:@"italianLeadingZero"];

  v9 = [(_NBPhoneNumber *)self numberOfLeadingZeros];
  [v4 encodeObject:v9 forKey:@"numberOfLeadingZeros"];

  v10 = [(_NBPhoneNumber *)self rawInput];
  [v4 encodeObject:v10 forKey:@"rawInput"];

  v11 = [(_NBPhoneNumber *)self countryCodeSource];
  [v4 encodeObject:v11 forKey:@"countryCodeSource"];

  v12 = [(_NBPhoneNumber *)self preferredDomesticCarrierCode];
  [v4 encodeObject:v12 forKey:@"preferredDomesticCarrierCode"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(_NBPhoneNumber *)self countryCode];
  v5 = [(_NBPhoneNumber *)self nationalNumber];
  v6 = [(_NBPhoneNumber *)self extension];
  if ([(_NBPhoneNumber *)self italianLeadingZero])
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v8 = [(_NBPhoneNumber *)self numberOfLeadingZeros];
  v9 = [(_NBPhoneNumber *)self rawInput];
  v10 = [(_NBPhoneNumber *)self countryCodeSource];
  v11 = [(_NBPhoneNumber *)self preferredDomesticCarrierCode];
  v12 = [v3 stringWithFormat:@" - countryCode[%@], nationalNumber[%@], extension[%@], italianLeadingZero[%@], numberOfLeadingZeros[%@], rawInput[%@] countryCodeSource[%@] preferredDomesticCarrierCode[%@]", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

@end