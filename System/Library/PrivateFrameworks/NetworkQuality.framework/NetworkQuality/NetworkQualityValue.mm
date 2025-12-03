@interface NetworkQualityValue
- (NetworkQualityValue)init;
- (NetworkQualityValue)initWithCoder:(id)coder;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)updateConfidence:(int64_t)confidence;
@end

@implementation NetworkQualityValue

- (void)updateConfidence:(int64_t)confidence
{
  if ([(NetworkQualityValue *)self confidence]< confidence)
  {

    [(NetworkQualityValue *)self setConfidence:confidence];
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(NetworkQualityValue);
  value = [(NetworkQualityValue *)self value];
  v6 = [value copy];
  [(NetworkQualityValue *)v4 setValue:v6];

  rating = [(NetworkQualityValue *)self rating];
  v8 = [rating copy];
  [(NetworkQualityValue *)v4 setRating:v8];

  [(NetworkQualityValue *)v4 setConfidence:[(NetworkQualityValue *)self confidence]];
  return v4;
}

- (NetworkQualityValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NetworkQualityValue;
  v5 = [(NetworkQualityValue *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rating"];
    rating = v5->_rating;
    v5->_rating = v8;

    v5->_confidence = [coderCopy decodeIntegerForKey:@"confidence"];
  }

  return v5;
}

- (NetworkQualityValue)init
{
  v8.receiver = self;
  v8.super_class = NetworkQualityValue;
  v2 = [(NetworkQualityValue *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABB0]);
    value = v2->_value;
    v2->_value = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCABB0]);
    rating = v2->_rating;
    v2->_rating = v5;

    v2->_confidence = 1;
  }

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  value = self->_value;
  coderCopy = coder;
  [coderCopy encodeObject:value forKey:@"value"];
  [coderCopy encodeObject:self->_rating forKey:@"rating"];
  [coderCopy encodeInteger:self->_confidence forKey:@"confidence"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: value=%@, rating=%@, confidence=%ld>", v5, self->_value, self->_rating, self->_confidence];

  return v6;
}

@end