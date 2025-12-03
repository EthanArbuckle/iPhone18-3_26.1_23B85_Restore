@interface PKCreditAccountRates
- (BOOL)isEqual:(id)equal;
- (PKCreditAccountRates)initWithCoder:(id)coder;
- (PKCreditAccountRates)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)formattedAPRForPurchasesPercentageString;
- (id)jsonDictionaryRepresentation;
- (id)jsonString;
- (unint64_t)hash;
@end

@implementation PKCreditAccountRates

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_aprForPurchases];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (PKCreditAccountRates)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PKCreditAccountRates;
  v5 = [(PKCreditAccountRates *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"aprForPurchase"];
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

- (PKCreditAccountRates)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKCreditAccountRates;
  v5 = [(PKCreditAccountRates *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"aprForPurchase"];
    aprForPurchases = v5->_aprForPurchases;
    v5->_aprForPurchases = v6;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  stringValue = [(NSDecimalNumber *)self->_aprForPurchases stringValue];
  [v3 appendFormat:@"aprForPurchases: '%@'; ", stringValue];

  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    aprForPurchases = self->_aprForPurchases;
    v6 = equalCopy[1];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKCreditAccountRates allocWithZone:](PKCreditAccountRates init];
  v6 = [(NSDecimalNumber *)self->_aprForPurchases copyWithZone:zone];
  aprForPurchases = v5->_aprForPurchases;
  v5->_aprForPurchases = v6;

  return v5;
}

- (id)jsonDictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  stringValue = [(NSDecimalNumber *)self->_aprForPurchases stringValue];
  [dictionary setObject:stringValue forKeyedSubscript:@"aprForPurchase"];

  v5 = [dictionary copy];

  return v5;
}

- (id)jsonString
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACB0];
  jsonDictionaryRepresentation = [(PKCreditAccountRates *)self jsonDictionaryRepresentation];
  v9 = 0;
  v4 = [v2 dataWithJSONObject:jsonDictionaryRepresentation options:2 error:&v9];
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