@interface MOEventStateOfMind
- (MOEventStateOfMind)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEventStateOfMind

- (void)encodeWithCoder:(id)a3
{
  reflectiveInterval = self->_reflectiveInterval;
  v5 = a3;
  [v5 encodeDouble:@"reflectiveInterval" forKey:reflectiveInterval];
  [v5 encodeDouble:@"valence" forKey:self->_valence];
  [v5 encodeDouble:@"valenceClassification" forKey:self->_valenceClassification];
  [v5 encodeObject:self->_labels forKey:@"labels"];
  [v5 encodeObject:self->_domains forKey:@"domains"];
}

- (MOEventStateOfMind)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = MOEventStateOfMind;
  v5 = [(MOEventStateOfMind *)&v22 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"reflectiveInterval"];
    v5->_reflectiveInterval = v6;
    [v4 decodeDoubleForKey:@"valence"];
    v5->_valence = v7;
    [v4 decodeDoubleForKey:@"valenceClassification"];
    v5->_valenceClassification = v8;
    v9 = objc_autoreleasePoolPush();
    v10 = objc_alloc(MEMORY[0x277CBEB98]);
    v11 = objc_opt_class();
    v12 = [v10 initWithObjects:{v11, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v9);
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"labels"];
    labels = v5->_labels;
    v5->_labels = v13;

    v15 = objc_autoreleasePoolPush();
    v16 = objc_alloc(MEMORY[0x277CBEB98]);
    v17 = objc_opt_class();
    v18 = [v16 initWithObjects:{v17, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v15);
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"domains"];
    domains = v5->_domains;
    v5->_domains = v19;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MOEventStateOfMind);
  v4->_reflectiveInterval = self->_reflectiveInterval;
  v4->_valenceClassification = self->_valenceClassification;
  v4->_valence = self->_valence;
  objc_storeStrong(&v4->_labels, self->_labels);
  objc_storeStrong(&v4->_domains, self->_domains);
  return v4;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"valence, %f", *&self->_valence];

  return v2;
}

@end