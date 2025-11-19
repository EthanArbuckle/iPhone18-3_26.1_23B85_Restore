@interface PKIssuerProvisioningExtensionPassEntry
- (BOOL)_isEqualToEntry:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKIssuerProvisioningExtensionPassEntry)init;
- (PKIssuerProvisioningExtensionPassEntry)initWithCoder:(id)a3;
- (id)_initWithType:(int64_t)a3 identifier:(id)a4 title:(id)a5 art:(CGImage *)a6;
- (id)paymentPassEntry;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKIssuerProvisioningExtensionPassEntry

- (id)paymentPassEntry
{
  if ([(PKIssuerProvisioningExtensionPassEntry *)self type]== 1)
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
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

- (id)_initWithType:(int64_t)a3 identifier:(id)a4 title:(id)a5 art:(CGImage *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v10 && v11 && a6)
  {
    v22.receiver = self;
    v22.super_class = PKIssuerProvisioningExtensionPassEntry;
    v13 = [(PKIssuerProvisioningExtensionPassEntry *)&v22 init];
    v14 = v13;
    if (v13)
    {
      v13->_type = a3;
      v15 = [v10 copy];
      identifier = v14->_identifier;
      v14->_identifier = v15;

      v17 = [v12 copy];
      title = v14->_title;
      v14->_title = v17;

      v14->_art = CGImageRetain(a6);
    }

    self = v14;
    v19 = self;
  }

  else
  {
    v20 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "PKIssuerProvisioningExtensionPassEntry: initializer missing required parameters.", buf, 2u);
    }

    v19 = 0;
  }

  return v19;
}

- (void)dealloc
{
  CGImageRelease(self->_art);
  v3.receiver = self;
  v3.super_class = PKIssuerProvisioningExtensionPassEntry;
  [(PKIssuerProvisioningExtensionPassEntry *)&v3 dealloc];
}

- (PKIssuerProvisioningExtensionPassEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKIssuerProvisioningExtensionPassEntry;
  v5 = [(PKIssuerProvisioningExtensionPassEntry *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(PKIssuerProvisioningExtensionPassEntry *)v5 setType:0];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v6->_title;
    v6->_title = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"art"];
    v12 = v11;
    if (v11)
    {
      v6->_art = PKCreateCGImage(v11);
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeObject:self->_identifier forKey:@"identifier"];
  [v8 encodeObject:self->_title forKey:@"title"];
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
          [v8 encodeObject:v5 forKey:@"art"];
        }

        CFRelease(v7);
      }

      CFRelease(v5);
    }
  }
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_title];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKIssuerProvisioningExtensionPassEntry *)self _isEqualToEntry:v4];
  }

  return v5;
}

- (BOOL)_isEqualToEntry:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_15;
  }

  identifier = self->_identifier;
  v6 = v4[1];
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
  v9 = v4[2];
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
  v10 = self->_type == v4[4];
LABEL_16:

  return v10;
}

@end