@interface PKCreditAccountRates
- (BOOL)isEqual:(id)a3;
- (PKCreditAccountRates)initWithCoder:(id)a3;
- (PKCreditAccountRates)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)formattedAPRForPurchasesPercentageString;
- (id)jsonDictionaryRepresentation;
- (id)jsonString;
- (unint64_t)hash;
@end

@implementation PKCreditAccountRates

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_aprForPurchases];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (PKCreditAccountRates)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKCreditAccountRates;
  v5 = [(PKCreditAccountRates *)&v9 init];
  if (v5)
  {
    v6 = [v4 PKDecimalNumberFromStringForKey:@"aprForPurchase"];
    aprForPurchases = v5->_aprForPurchases;
    v5->_aprForPurchases = v6;
  }

  return v5;
}

- (id)formattedAPRForPurchasesPercentageString
{
  v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v3 setNumberStyle:3];
  if (([(NSDecimalNumber *)self->_aprForPurchases pk_isIntegralNumber]& 1) == 0)
  {
    [v3 setMinimumFractionDigits:2];
  }

  v4 = [v3 stringFromNumber:self->_aprForPurchases];

  return v4;
}

- (PKCreditAccountRates)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKCreditAccountRates;
  v5 = [(PKCreditAccountRates *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"aprForPurchase"];
    aprForPurchases = v5->_aprForPurchases;
    v5->_aprForPurchases = v6;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(NSDecimalNumber *)self->_aprForPurchases stringValue];
  [v3 appendFormat:@"aprForPurchases: '%@'; ", v4];

  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    aprForPurchases = self->_aprForPurchases;
    v6 = v4[1];
    if (aprForPurchases && v6)
    {
      v7 = [(NSDecimalNumber *)aprForPurchases isEqual:?];
    }

    else
    {
      v7 = aprForPurchases == v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKCreditAccountRates allocWithZone:](PKCreditAccountRates init];
  v6 = [(NSDecimalNumber *)self->_aprForPurchases copyWithZone:a3];
  aprForPurchases = v5->_aprForPurchases;
  v5->_aprForPurchases = v6;

  return v5;
}

- (id)jsonDictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(NSDecimalNumber *)self->_aprForPurchases stringValue];
  [v3 setObject:v4 forKeyedSubscript:@"aprForPurchase"];

  v5 = [v3 copy];

  return v5;
}

- (id)jsonString
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(PKCreditAccountRates *)self jsonDictionaryRepresentation];
  v9 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:2 error:&v9];
  v5 = v9;

  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Error forming json dictionary for CloudKit with error: %@", buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
  }

  return v7;
}

@end