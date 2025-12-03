@interface PKPaymentTransactionQuestion
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToQuestion:(id)question;
- (NSArray)allowedAnswers;
- (PKPaymentTransactionQuestion)initWithCoder:(id)coder;
- (PKPaymentTransactionQuestion)initWithDictionary:(id)dictionary;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentTransactionQuestion

- (PKPaymentTransactionQuestion)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PKPaymentTransactionQuestion;
  v5 = [(PKPaymentTransactionQuestion *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"type"];
    v5->_type = PKPaymentTransactionQuestionTypeFromString(v6);

    v7 = [dictionaryCopy PKDateForKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v7;

    *&v5->_answered = 0;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  type = self->_type;
  if (type > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79DE140[type];
  }

  [v3 setObject:v6 forKeyedSubscript:@"type"];
  if (self->_expirationDate)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v7 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
    v8 = [v7 stringFromDate:self->_expirationDate];
    [v4 setObject:v8 forKeyedSubscript:@"expirationDate"];
  }

  v9 = [v4 copy];

  return v9;
}

- (NSArray)allowedAnswers
{
  v4[2] = *MEMORY[0x1E69E9840];
  if (self->_type - 1 > 1)
  {
    v2 = 0;
  }

  else
  {
    v4[0] = @"yes";
    v4[1] = @"no";
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  }

  return v2;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_expirationDate];
  v4 = PKCombinedHash(17, array);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_answered - v5 + 32 * v5;
  v7 = self->_answeredOnThisDevice - v6 + 32 * v6;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentTransactionQuestion *)self isEqualToQuestion:v5];
  }

  return v6;
}

- (BOOL)isEqualToQuestion:(id)question
{
  questionCopy = question;
  expirationDate = self->_expirationDate;
  expirationDate = [questionCopy expirationDate];
  v7 = expirationDate;
  if (expirationDate)
  {
    v8 = expirationDate == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (expirationDate != expirationDate)
    {
LABEL_12:
      v13 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v9 = [(NSDate *)expirationDate isEqual:expirationDate];
    if ((v9 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  type = self->_type;
  if (type != [questionCopy type])
  {
    goto LABEL_12;
  }

  answered = self->_answered;
  if (answered != [questionCopy answered])
  {
    goto LABEL_12;
  }

  answeredOnThisDevice = self->_answeredOnThisDevice;
  v13 = answeredOnThisDevice == [questionCopy answeredOnThisDevice];
LABEL_13:

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  type = self->_type;
  if (type > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79DE140[type];
  }

  [v3 appendFormat:@"type: '%@'; ", v6];
  v7 = [(NSDate *)self->_expirationDate description];
  [v4 appendFormat:@"expirationDate: '%@'; ", v7];

  if (self->_answered)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v4 appendFormat:@"answered: '%@'; ", v8];
  if (self->_answeredOnThisDevice)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v4 appendFormat:@"answered on device: '%@'; ", v9];
  [v4 appendFormat:@">"];

  return v4;
}

- (PKPaymentTransactionQuestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPaymentTransactionQuestion;
  v5 = [(PKPaymentTransactionQuestion *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v6;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_answered = [coderCopy decodeIntegerForKey:@"answered"] != 0;
    v5->_answeredOnThisDevice = [coderCopy decodeIntegerForKey:@"answeredOnThisDevice"] != 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeInteger:self->_answered forKey:@"answered"];
  [coderCopy encodeInteger:self->_answeredOnThisDevice forKey:@"answeredOnThisDevice"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
}

@end