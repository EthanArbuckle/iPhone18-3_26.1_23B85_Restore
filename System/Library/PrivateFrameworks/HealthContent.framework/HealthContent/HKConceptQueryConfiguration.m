@interface HKConceptQueryConfiguration
- (HKConceptQueryConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKConceptQueryConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = HKConceptQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v7 copyWithZone:a3];
  v5 = [(HKConceptSelection *)self->_selection copy];
  [v4 setSelection:v5];

  return v4;
}

- (HKConceptQueryConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKConceptQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Selection"];
    selection = v5->_selection;
    v5->_selection = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKConceptQueryConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_selection forKey:{@"Selection", v5.receiver, v5.super_class}];
}

@end