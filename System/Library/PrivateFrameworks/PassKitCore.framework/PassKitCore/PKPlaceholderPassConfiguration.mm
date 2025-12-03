@interface PKPlaceholderPassConfiguration
- (PKPlaceholderPassConfiguration)initWithCoder:(id)coder;
- (PKPlaceholderPassConfiguration)initWithSubcredential:(id)subcredential automaticSelectionCriterion:(id)criterion;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPlaceholderPassConfiguration

- (PKPlaceholderPassConfiguration)initWithSubcredential:(id)subcredential automaticSelectionCriterion:(id)criterion
{
  subcredentialCopy = subcredential;
  criterionCopy = criterion;
  if (subcredentialCopy)
  {
    v9 = [(PKPlaceholderPassConfiguration *)self init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_subcredential, subcredential);
      objc_storeStrong(&v10->_automaticSelectionCriterion, criterion);
      v10->_paymentApplicationState = [(PKAppletSubcredential *)v10->_subcredential state];
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  subcredential = self->_subcredential;
  coderCopy = coder;
  [coderCopy encodeObject:subcredential forKey:@"subcredential"];
  [coderCopy encodeObject:self->_automaticSelectionCriterion forKey:@"automaticSelectionCriterion"];
  [coderCopy encodeInteger:self->_paymentApplicationState forKey:@"paymentApplicationState"];
  [coderCopy encodeObject:self->_associatedApplicationIdentifiers forKey:@"associatedApplicationIdentifiers"];
}

- (PKPlaceholderPassConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKPlaceholderPassConfiguration *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subcredential"];
    subcredential = v5->_subcredential;
    v5->_subcredential = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"automaticSelectionCriterion"];
    automaticSelectionCriterion = v5->_automaticSelectionCriterion;
    v5->_automaticSelectionCriterion = v8;

    v5->_paymentApplicationState = [coderCopy decodeIntegerForKey:@"paymentApplicationState"];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"associatedApplicationIdentifiers"];
    associatedApplicationIdentifiers = v5->_associatedApplicationIdentifiers;
    v5->_associatedApplicationIdentifiers = v13;
  }

  return v5;
}

@end