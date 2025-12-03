@interface PKAliroHomeAuxiliaryCapabilityDescriptor
- (PKAliroHomeAuxiliaryCapabilityDescriptor)initWithCoder:(id)coder;
- (PKAliroHomeAuxiliaryCapabilityDescriptor)initWithReaderGroupIdentifier:(id)identifier readerGroupPublicKey:(id)key;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAliroHomeAuxiliaryCapabilityDescriptor

- (PKAliroHomeAuxiliaryCapabilityDescriptor)initWithReaderGroupIdentifier:(id)identifier readerGroupPublicKey:(id)key
{
  identifierCopy = identifier;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = PKAliroHomeAuxiliaryCapabilityDescriptor;
  v9 = [(PKAliroHomeAuxiliaryCapabilityDescriptor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_readerGroupIdentifier, identifier);
    objc_storeStrong(&v10->_readerGroupPublicKey, key);
  }

  return v10;
}

- (PKAliroHomeAuxiliaryCapabilityDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKAliroHomeAuxiliaryCapabilityDescriptor;
  v5 = [(PKAliroHomeAuxiliaryCapabilityDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerGroupIdentifier"];
    readerGroupIdentifier = v5->_readerGroupIdentifier;
    v5->_readerGroupIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerGroupPublicKey"];
    readerGroupPublicKey = v5->_readerGroupPublicKey;
    v5->_readerGroupPublicKey = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  readerGroupIdentifier = self->_readerGroupIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:readerGroupIdentifier forKey:@"readerGroupIdentifier"];
  [coderCopy encodeObject:self->_readerGroupPublicKey forKey:@"readerGroupPublicKey"];
}

@end