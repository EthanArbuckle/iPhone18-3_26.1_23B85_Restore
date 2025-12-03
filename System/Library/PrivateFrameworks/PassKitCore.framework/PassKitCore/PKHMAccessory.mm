@interface PKHMAccessory
- (PKHMAccessory)initWithCoder:(id)coder;
- (PKHMAccessory)initWithUniqueIdentifier:(id)identifier name:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKHMAccessory

- (PKHMAccessory)initWithUniqueIdentifier:(id)identifier name:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = PKHMAccessory;
  v9 = [(PKHMAccessory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uniqueIdentifier, identifier);
    objc_storeStrong(&v10->_name, name);
  }

  return v10;
}

- (PKHMAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKHMAccessory;
  v5 = [(PKHMAccessory *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  uniqueIdentifier = self->_uniqueIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
}

@end