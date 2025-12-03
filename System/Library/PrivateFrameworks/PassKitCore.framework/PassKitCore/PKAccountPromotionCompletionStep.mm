@interface PKAccountPromotionCompletionStep
+ (id)completionStepsFromDictionaries:(id)dictionaries;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccountPromotionCompletionStep:(id)step;
- (PKAccountPromotionCompletionStep)initWithCoder:(id)coder;
- (PKAccountPromotionCompletionStep)initWithDictionary:(id)dictionary index:(int64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)_initWithCompletionStepDictionary:(id)dictionary index:(int64_t)index;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountPromotionCompletionStep

+ (id)completionStepsFromDictionaries:(id)dictionaries
{
  if (dictionaries)
  {
    v3 = MEMORY[0x1E695DF70];
    dictionariesCopy = dictionaries;
    v5 = [v3 arrayWithCapacity:{objc_msgSend(dictionariesCopy, "count")}];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__PKAccountPromotionCompletionStep_completionStepsFromDictionaries___block_invoke;
    v9[3] = &unk_1E79DBD50;
    v10 = v5;
    v6 = v5;
    [dictionariesCopy enumerateObjectsUsingBlock:v9];

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

- (PKAccountPromotionCompletionStep)initWithDictionary:(id)dictionary index:(int64_t)index
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v11.receiver = self;
    v11.super_class = PKAccountPromotionCompletionStep;
    v7 = [(PKAccountPromotionCompletionStep *)&v11 init];
    v8 = v7;
    if (v7)
    {
      [(PKAccountPromotionCompletionStep *)v7 _initWithCompletionStepDictionary:dictionaryCopy index:index];
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_initWithCompletionStepDictionary:(id)dictionary index:(int64_t)index
{
  self->_index = index;
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy PKStringForKey:@"type"];
  self->_progressType = PKAccountPromotionCompletionStepProgressTypeFromString(v6);

  v7 = [dictionaryCopy PKStringForKey:@"currencyCode"];
  currencyCode = self->_currencyCode;
  self->_currencyCode = v7;

  v9 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"endValue"];
  endValue = self->_endValue;
  self->_endValue = v9;

  v11 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"currentValue"];
  currentValue = self->_currentValue;
  self->_currentValue = v11;

  LOBYTE(v6) = [dictionaryCopy PKBoolForKey:@"completed"];
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
  stringValue = [(NSDecimalNumber *)self->_currentValue stringValue];
  [v3 appendFormat:@"currentValue: '%@'; ", stringValue];

  stringValue2 = [(NSDecimalNumber *)self->_endValue stringValue];
  [v3 appendFormat:@"endValue: '%@'; ", stringValue2];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountPromotionCompletionStep *)self isEqualToAccountPromotionCompletionStep:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountPromotionCompletionStep:(id)step
{
  stepCopy = step;
  v5 = stepCopy;
  if (!stepCopy || self->_index != stepCopy[3] || self->_progressType != stepCopy[2])
  {
    goto LABEL_21;
  }

  v6 = stepCopy[4];
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

- (PKAccountPromotionCompletionStep)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKAccountPromotionCompletionStep;
  v5 = [(PKAccountPromotionCompletionStep *)&v14 init];
  if (v5)
  {
    v5->_index = [coderCopy decodeIntegerForKey:@"index"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_progressType = PKAccountPromotionCompletionStepProgressTypeFromString(v6);

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endValue"];
    endValue = v5->_endValue;
    v5->_endValue = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentValue"];
    currentValue = v5->_currentValue;
    v5->_currentValue = v11;

    v5->_completed = [coderCopy decodeBoolForKey:@"completed"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  index = self->_index;
  coderCopy = coder;
  [coderCopy encodeInteger:index forKey:@"index"];
  progressType = self->_progressType;
  if (progressType > 4)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79DBD70[progressType];
  }

  [coderCopy encodeObject:v6 forKey:@"type"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeObject:self->_endValue forKey:@"endValue"];
  [coderCopy encodeObject:self->_currentValue forKey:@"currentValue"];
  [coderCopy encodeBool:self->_completed forKey:@"completed"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 24) = self->_index;
  *(v5 + 16) = self->_progressType;
  v6 = [(NSString *)self->_currencyCode copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSDecimalNumber *)self->_endValue copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSDecimalNumber *)self->_currentValue copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  *(v5 + 8) = self->_completed;
  return v5;
}

@end