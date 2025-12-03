@interface HKConceptQueryConfiguration
- (HKConceptQueryConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKConceptQueryConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = HKConceptQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v7 copyWithZone:zone];
  v5 = [(HKConceptSelection *)self->_selection copy];
  [v4 setSelection:v5];

  return v4;
}

- (HKConceptQueryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKConceptQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Selection"];
    selection = v5->_selection;
    v5->_selection = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKConceptQueryConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_selection forKey:{@"Selection", v5.receiver, v5.super_class}];
}

@end