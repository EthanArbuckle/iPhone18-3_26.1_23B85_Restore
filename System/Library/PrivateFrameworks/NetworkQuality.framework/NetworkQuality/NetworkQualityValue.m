@interface NetworkQualityValue
- (NetworkQualityValue)init;
- (NetworkQualityValue)initWithCoder:(id)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateConfidence:(int64_t)a3;
@end

@implementation NetworkQualityValue

- (void)updateConfidence:(int64_t)a3
{
  if ([(NetworkQualityValue *)self confidence]< a3)
  {

    [(NetworkQualityValue *)self setConfidence:a3];
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(NetworkQualityValue);
  v5 = [(NetworkQualityValue *)self value];
  v6 = [v5 copy];
  [(NetworkQualityValue *)v4 setValue:v6];

  v7 = [(NetworkQualityValue *)self rating];
  v8 = [v7 copy];
  [(NetworkQualityValue *)v4 setRating:v8];

  [(NetworkQualityValue *)v4 setConfidence:[(NetworkQualityValue *)self confidence]];
  return v4;
}

- (NetworkQualityValue)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NetworkQualityValue;
  v5 = [(NetworkQualityValue *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rating"];
    rating = v5->_rating;
    v5->_rating = v8;

    v5->_confidence = [v4 decodeIntegerForKey:@"confidence"];
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

- (void)encodeWithCoder:(id)a3
{
  value = self->_value;
  v5 = a3;
  [v5 encodeObject:value forKey:@"value"];
  [v5 encodeObject:self->_rating forKey:@"rating"];
  [v5 encodeInteger:self->_confidence forKey:@"confidence"];
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