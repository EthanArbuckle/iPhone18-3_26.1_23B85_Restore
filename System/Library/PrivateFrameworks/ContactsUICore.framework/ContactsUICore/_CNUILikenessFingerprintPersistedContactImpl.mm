@interface _CNUILikenessFingerprintPersistedContactImpl
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_CNUILikenessFingerprintPersistedContactImpl)init;
- (_CNUILikenessFingerprintPersistedContactImpl)initWithContact:(id)contact;
- (_CNUILikenessFingerprintPersistedContactImpl)initWithContactIdentifier:(id)identifier;
@end

@implementation _CNUILikenessFingerprintPersistedContactImpl

- (_CNUILikenessFingerprintPersistedContactImpl)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (_CNUILikenessFingerprintPersistedContactImpl)initWithContact:(id)contact
{
  identifier = [contact identifier];
  v5 = [(_CNUILikenessFingerprintPersistedContactImpl *)self initWithContactIdentifier:identifier];

  return v5;
}

- (_CNUILikenessFingerprintPersistedContactImpl)initWithContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = _CNUILikenessFingerprintPersistedContactImpl;
  v5 = [(_CNUILikenessFingerprintPersistedContactImpl *)&v10 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"contactIdentifier" object:self->_contactIdentifier];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 1;
  if (self != equalCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (contactIdentifier = self->_contactIdentifier, contactIdentifier | equalCopy->_contactIdentifier) && ![(NSString *)contactIdentifier isEqual:?])
    {
      v6 = 0;
    }
  }

  return v6;
}

@end