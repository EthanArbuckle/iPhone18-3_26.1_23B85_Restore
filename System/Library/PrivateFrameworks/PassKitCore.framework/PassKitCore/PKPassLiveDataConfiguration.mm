@interface PKPassLiveDataConfiguration
+ (id)_defaultEligibleSemanticsForPassStyle:(int64_t)style;
+ (id)configurationForPassStyle:(int64_t)style excludingSemantics:(id)semantics;
- (PKPassLiveDataConfiguration)initWithCoder:(id)coder;
- (id)_initWithEligibleSemantics:(id)semantics;
- (id)description;
@end

@implementation PKPassLiveDataConfiguration

- (id)_initWithEligibleSemantics:(id)semantics
{
  semanticsCopy = semantics;
  v9.receiver = self;
  v9.super_class = PKPassLiveDataConfiguration;
  v6 = [(PKPassLiveDataConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eligibleSemantics, semantics);
  }

  return v7;
}

+ (id)configurationForPassStyle:(int64_t)style excludingSemantics:(id)semantics
{
  if (style == 10)
  {
    semanticsCopy = semantics;
    v6 = [self _defaultEligibleSemanticsForPassStyle:10];
    [v6 minusSet:semanticsCopy];

    v7 = [PKPassLiveDataConfiguration alloc];
    v8 = [v6 copy];
    v9 = [(PKPassLiveDataConfiguration *)v7 _initWithEligibleSemantics:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_defaultEligibleSemanticsForPassStyle:(int64_t)style
{
  v7[7] = *MEMORY[0x1E69E9840];
  if (style == 10)
  {
    v3 = MEMORY[0x1E695DFA8];
    v7[0] = @"departureGate";
    v7[1] = @"departureTerminal";
    v7[2] = @"destinationGate";
    v7[3] = @"destinationTerminal";
    v7[4] = @"currentDepartureDate";
    v7[5] = @"currentArrivalDate";
    v7[6] = @"currentBoardingDate";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:7];
    v5 = [v3 setWithArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PKPassLiveDataConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PKPassLiveDataConfiguration;
  v5 = [(PKPassLiveDataConfiguration *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"eligibleSemantics"];
    eligibleSemantics = v5->_eligibleSemantics;
    v5->_eligibleSemantics = v9;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"eligibleSemantics: '%@'; ", self->_eligibleSemantics];
  [v3 appendFormat:@">"];

  return v3;
}

@end