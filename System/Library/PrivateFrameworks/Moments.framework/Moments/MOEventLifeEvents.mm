@interface MOEventLifeEvents
+ (id)descriptionOfLifeEventCategory:(unint64_t)a3;
- (MOEventLifeEvents)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEventLifeEvents

- (void)encodeWithCoder:(id)a3
{
  lifeEventCategory = self->_lifeEventCategory;
  v6 = a3;
  [v6 encodeInteger:lifeEventCategory forKey:@"lifeEventCategory"];
  confidenceScore = self->_confidenceScore;
  *&confidenceScore = confidenceScore;
  [v6 encodeFloat:@"confidenceScore" forKey:confidenceScore];
}

- (MOEventLifeEvents)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MOEventLifeEvents;
  v5 = [(MOEventLifeEvents *)&v8 init];
  if (v5)
  {
    v5->_lifeEventCategory = [v4 decodeIntegerForKey:@"lifeEventCategory"];
    [v4 decodeFloatForKey:@"confidenceScore"];
    v5->_confidenceScore = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(MOEventLifeEvents);
  *(result + 1) = self->_lifeEventCategory;
  *(result + 2) = *&self->_confidenceScore;
  return result;
}

+ (id)descriptionOfLifeEventCategory:(unint64_t)a3
{
  if (a3 > 4)
  {
    return @"Invalid";
  }

  else
  {
    return off_278774060[a3];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MOEventLifeEvents descriptionOfLifeEventCategory:self->_lifeEventCategory];
  v5 = [v3 initWithFormat:@"life event category, %@, confidence score, %f", v4, *&self->_confidenceScore];

  return v5;
}

@end