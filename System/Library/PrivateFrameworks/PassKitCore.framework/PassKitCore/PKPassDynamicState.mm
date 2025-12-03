@interface PKPassDynamicState
- (BOOL)isEqual:(id)equal;
- (PKPassDynamicState)initWithCoder:(id)coder;
- (id)_init;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassDynamicState

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPassDynamicState;
  return [(PKPassDynamicState *)&v3 init];
}

- (void)encodeWithCoder:(id)coder
{
  liveRender = self->_liveRender;
  coderCopy = coder;
  [coderCopy encodeObject:liveRender forKey:@"liveRender"];
  [coderCopy encodeObject:self->_balanceModel forKey:@"balances"];
  [coderCopy encodeObject:self->_relevancyModel forKey:@"relevancy"];
  [coderCopy encodeObject:self->_agreements forKey:@"agreements"];
  [coderCopy encodeObject:self->_flight forKey:@"flight"];
}

- (PKPassDynamicState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKPassDynamicState *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"liveRender"];
    liveRender = v5->_liveRender;
    v5->_liveRender = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"balances"];
    balanceModel = v5->_balanceModel;
    v5->_balanceModel = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relevancy"];
    relevancyModel = v5->_relevancyModel;
    v5->_relevancyModel = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"agreements"];
    agreements = v5->_agreements;
    v5->_agreements = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flight"];
    flight = v5->_flight;
    v5->_flight = v17;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = PKPassDynamicState;
  return [(PKPassDynamicState *)&v4 isEqual:equal];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = PKPassDynamicState;
  return [(PKPassDynamicState *)&v3 hash];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKPassLiveRender *)self->_liveRender description];
  [v3 appendFormat:@"liveRender: %@", v4];

  v5 = [(PKPassBalanceModel *)self->_balanceModel description];
  [v3 appendFormat:@"balanceModel: %@", v5];

  v6 = [(PKPassRelevancyModel *)self->_relevancyModel description];
  [v3 appendFormat:@"relevancyModel: %@", v6];

  v7 = [(NSArray *)self->_agreements description];
  [v3 appendFormat:@"agreements: %@", v7];

  v8 = [(PKFlight *)self->_flight description];
  [v3 appendFormat:@"flight: %@", v8];

  [v3 appendFormat:@">"];

  return v3;
}

@end