@interface PKPlaceholderPassConfiguration
- (PKPlaceholderPassConfiguration)initWithCoder:(id)a3;
- (PKPlaceholderPassConfiguration)initWithSubcredential:(id)a3 automaticSelectionCriterion:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPlaceholderPassConfiguration

- (PKPlaceholderPassConfiguration)initWithSubcredential:(id)a3 automaticSelectionCriterion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = [(PKPlaceholderPassConfiguration *)self init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_subcredential, a3);
      objc_storeStrong(&v10->_automaticSelectionCriterion, a4);
      v10->_paymentApplicationState = [(PKAppletSubcredential *)v10->_subcredential state];
    }

    self = v10;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  subcredential = self->_subcredential;
  v5 = a3;
  [v5 encodeObject:subcredential forKey:@"subcredential"];
  [v5 encodeObject:self->_automaticSelectionCriterion forKey:@"automaticSelectionCriterion"];
  [v5 encodeInteger:self->_paymentApplicationState forKey:@"paymentApplicationState"];
  [v5 encodeObject:self->_associatedApplicationIdentifiers forKey:@"associatedApplicationIdentifiers"];
}

- (PKPlaceholderPassConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKPlaceholderPassConfiguration *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subcredential"];
    subcredential = v5->_subcredential;
    v5->_subcredential = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"automaticSelectionCriterion"];
    automaticSelectionCriterion = v5->_automaticSelectionCriterion;
    v5->_automaticSelectionCriterion = v8;

    v5->_paymentApplicationState = [v4 decodeIntegerForKey:@"paymentApplicationState"];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"associatedApplicationIdentifiers"];
    associatedApplicationIdentifiers = v5->_associatedApplicationIdentifiers;
    v5->_associatedApplicationIdentifiers = v13;
  }

  return v5;
}

@end