@interface _CNUILikenessFingerprintPersistedContactImpl
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_CNUILikenessFingerprintPersistedContactImpl)init;
- (_CNUILikenessFingerprintPersistedContactImpl)initWithContact:(id)a3;
- (_CNUILikenessFingerprintPersistedContactImpl)initWithContactIdentifier:(id)a3;
@end

@implementation _CNUILikenessFingerprintPersistedContactImpl

- (_CNUILikenessFingerprintPersistedContactImpl)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (_CNUILikenessFingerprintPersistedContactImpl)initWithContact:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(_CNUILikenessFingerprintPersistedContactImpl *)self initWithContactIdentifier:v4];

  return v5;
}

- (_CNUILikenessFingerprintPersistedContactImpl)initWithContactIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _CNUILikenessFingerprintPersistedContactImpl;
  v5 = [(_CNUILikenessFingerprintPersistedContactImpl *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
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
  v5 = [v3 build];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 1;
  if (self != v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (contactIdentifier = self->_contactIdentifier, contactIdentifier | v4->_contactIdentifier) && ![(NSString *)contactIdentifier isEqual:?])
    {
      v6 = 0;
    }
  }

  return v6;
}

@end