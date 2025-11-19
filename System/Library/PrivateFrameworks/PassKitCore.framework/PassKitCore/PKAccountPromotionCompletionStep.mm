@interface PKAccountPromotionCompletionStep
+ (id)completionStepsFromDictionaries:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAccountPromotionCompletionStep:(id)a3;
- (PKAccountPromotionCompletionStep)initWithCoder:(id)a3;
- (PKAccountPromotionCompletionStep)initWithDictionary:(id)a3 index:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)_initWithCompletionStepDictionary:(id)a3 index:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountPromotionCompletionStep

+ (id)completionStepsFromDictionaries:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695DF70];
    v4 = a3;
    v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__PKAccountPromotionCompletionStep_completionStepsFromDictionaries___block_invoke;
    v9[3] = &unk_1E79DBD50;
    v10 = v5;
    v6 = v5;
    [v4 enumerateObjectsUsingBlock:v9];

    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __68__PKAccountPromotionCompletionStep_completionStepsFromDictionaries___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = [[PKAccountPromotionCompletionStep alloc] initWithDictionary:v5 index:a3];

  v6 = v7;
  if (v7)
  {
    [*(a1 + 32) addObject:v7];
    v6 = v7;
  }
}

- (PKAccountPromotionCompletionStep)initWithDictionary:(id)a3 index:(int64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v11.receiver = self;
    v11.super_class = PKAccountPromotionCompletionStep;
    v7 = [(PKAccountPromotionCompletionStep *)&v11 init];
    v8 = v7;
    if (v7)
    {
      [(PKAccountPromotionCompletionStep *)v7 _initWithCompletionStepDictionary:v6 index:a4];
    }

    self = v8;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_initWithCompletionStepDictionary:(id)a3 index:(int64_t)a4
{
  self->_index = a4;
  v5 = a3;
  v6 = [v5 PKStringForKey:@"type"];
  self->_progressType = PKAccountPromotionCompletionStepProgressTypeFromString(v6);

  v7 = [v5 PKStringForKey:@"currencyCode"];
  currencyCode = self->_currencyCode;
  self->_currencyCode = v7;

  v9 = [v5 PKDecimalNumberFromStringForKey:@"endValue"];
  endValue = self->_endValue;
  self->_endValue = v9;

  v11 = [v5 PKDecimalNumberFromStringForKey:@"currentValue"];
  currentValue = self->_currentValue;
  self->_currentValue = v11;

  LOBYTE(v6) = [v5 PKBoolForKey:@"completed"];
  self->_completed = v6;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"index: '%ld'; ", self->_index];
  progressType = self->_progressType;
  if (progressType > 4)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E79DBD70[progressType];
  }

  [v3 appendFormat:@"progressType: '%@'; ", v5];
  [v3 appendFormat:@"currencyCode: '%@'; ", self->_currencyCode];
  v6 = [(NSDecimalNumber *)self->_currentValue stringValue];
  [v3 appendFormat:@"currentValue: '%@'; ", v6];

  v7 = [(NSDecimalNumber *)self->_endValue stringValue];
  [v3 appendFormat:@"endValue: '%@'; ", v7];

  if (self->_completed)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@"completed: '%@'; ", v8];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountPromotionCompletionStep *)self isEqualToAccountPromotionCompletionStep:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountPromotionCompletionStep:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || self->_index != v4[3] || self->_progressType != v4[2])
  {
    goto LABEL_21;
  }

  v6 = v4[4];
  v7 = self->_currencyCode;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {

      goto LABEL_21;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_21;
    }
  }

  currentValue = self->_currentValue;
  v12 = v5[6];
  if (currentValue && v12)
  {
    if (([(NSDecimalNumber *)currentValue isEqual:?]& 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (currentValue != v12)
  {
    goto LABEL_21;
  }

  endValue = self->_endValue;
  v14 = v5[5];
  if (!endValue || !v14)
  {
    if (endValue == v14)
    {
      goto LABEL_19;
    }

LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  if (([(NSDecimalNumber *)endValue isEqual:?]& 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  v15 = self->_completed == *(v5 + 8);
LABEL_22:

  return v15;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_currencyCode];
  [v3 safelyAddObject:self->_currentValue];
  [v3 safelyAddObject:self->_endValue];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_index - v4 + 32 * v4;
  v6 = self->_progressType - v5 + 32 * v5;
  v7 = self->_completed - v6 + 32 * v6;

  return v7;
}

- (PKAccountPromotionCompletionStep)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKAccountPromotionCompletionStep;
  v5 = [(PKAccountPromotionCompletionStep *)&v14 init];
  if (v5)
  {
    v5->_index = [v4 decodeIntegerForKey:@"index"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_progressType = PKAccountPromotionCompletionStepProgressTypeFromString(v6);

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endValue"];
    endValue = v5->_endValue;
    v5->_endValue = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentValue"];
    currentValue = v5->_currentValue;
    v5->_currentValue = v11;

    v5->_completed = [v4 decodeBoolForKey:@"completed"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  index = self->_index;
  v7 = a3;
  [v7 encodeInteger:index forKey:@"index"];
  progressType = self->_progressType;
  if (progressType > 4)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79DBD70[progressType];
  }

  [v7 encodeObject:v6 forKey:@"type"];
  [v7 encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [v7 encodeObject:self->_endValue forKey:@"endValue"];
  [v7 encodeObject:self->_currentValue forKey:@"currentValue"];
  [v7 encodeBool:self->_completed forKey:@"completed"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 24) = self->_index;
  *(v5 + 16) = self->_progressType;
  v6 = [(NSString *)self->_currencyCode copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSDecimalNumber *)self->_endValue copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSDecimalNumber *)self->_currentValue copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  *(v5 + 8) = self->_completed;
  return v5;
}

@end