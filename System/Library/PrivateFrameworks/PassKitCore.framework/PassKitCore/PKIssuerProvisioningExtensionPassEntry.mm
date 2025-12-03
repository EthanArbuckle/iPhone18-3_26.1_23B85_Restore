@interface PKIssuerProvisioningExtensionPassEntry
- (BOOL)_isEqualToEntry:(id)entry;
- (BOOL)isEqual:(id)equal;
- (PKIssuerProvisioningExtensionPassEntry)init;
- (PKIssuerProvisioningExtensionPassEntry)initWithCoder:(id)coder;
- (id)_initWithType:(int64_t)type identifier:(id)identifier title:(id)title art:(CGImage *)art;
- (id)paymentPassEntry;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKIssuerProvisioningExtensionPassEntry

- (id)paymentPassEntry
{
  if ([(PKIssuerProvisioningExtensionPassEntry *)self type]== 1)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKIssuerProvisioningExtensionPassEntry)init
{
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKIssuerProvisioningExtensionPassEntry: invalid initializer.", v5, 2u);
  }

  return 0;
}

- (id)_initWithType:(int64_t)type identifier:(id)identifier title:(id)title art:(CGImage *)art
{
  identifierCopy = identifier;
  titleCopy = title;
  v12 = titleCopy;
  if (identifierCopy && titleCopy && art)
  {
    v22.receiver = self;
    v22.super_class = PKIssuerProvisioningExtensionPassEntry;
    v13 = [(PKIssuerProvisioningExtensionPassEntry *)&v22 init];
    v14 = v13;
    if (v13)
    {
      v13->_type = type;
      v15 = [identifierCopy copy];
      identifier = v14->_identifier;
      v14->_identifier = v15;

      v17 = [v12 copy];
      title = v14->_title;
      v14->_title = v17;

      v14->_art = CGImageRetain(art);
    }

    self = v14;
    selfCopy = self;
  }

  else
  {
    v20 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "PKIssuerProvisioningExtensionPassEntry: initializer missing required parameters.", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  CGImageRelease(self->_art);
  v3.receiver = self;
  v3.super_class = PKIssuerProvisioningExtensionPassEntry;
  [(PKIssuerProvisioningExtensionPassEntry *)&v3 dealloc];
}

- (PKIssuerProvisioningExtensionPassEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKIssuerProvisioningExtensionPassEntry;
  v5 = [(PKIssuerProvisioningExtensionPassEntry *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(PKIssuerProvisioningExtensionPassEntry *)v5 setType:0];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v6->_title;
    v6->_title = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"art"];
    v12 = v11;
    if (v11)
    {
      v6->_art = PKCreateCGImage(v11);
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  if (self->_art)
  {
    Mutable = CFDataCreateMutable(0, 0);
    if (Mutable)
    {
      v5 = Mutable;
      v6 = CGImageDestinationCreateWithData(Mutable, [*MEMORY[0x1E6982F28] identifier], 1uLL, 0);
      if (v6)
      {
        v7 = v6;
        CGImageDestinationAddImage(v6, self->_art, 0);
        if (CGImageDestinationFinalize(v7))
        {
          [coderCopy encodeObject:v5 forKey:@"art"];
        }

        CFRelease(v7);
      }

      CFRelease(v5);
    }
  }
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_title];
  v4 = PKCombinedHash(17, array);
  v5 = self->_type - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKIssuerProvisioningExtensionPassEntry *)self _isEqualToEntry:equalCopy];
  }

  return v5;
}

- (BOOL)_isEqualToEntry:(id)entry
{
  entryCopy = entry;
  if (!entryCopy)
  {
    goto LABEL_15;
  }

  identifier = self->_identifier;
  v6 = entryCopy[1];
  if (identifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (identifier != v6)
    {
      goto LABEL_15;
    }
  }

  else if (([(NSString *)identifier isEqual:?]& 1) == 0)
  {
    goto LABEL_15;
  }

  title = self->_title;
  v9 = entryCopy[2];
  if (!title || !v9)
  {
    if (title == v9)
    {
      goto LABEL_13;
    }

LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  if (([(NSString *)title isEqual:?]& 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  v10 = self->_type == entryCopy[4];
LABEL_16:

  return v10;
}

@end