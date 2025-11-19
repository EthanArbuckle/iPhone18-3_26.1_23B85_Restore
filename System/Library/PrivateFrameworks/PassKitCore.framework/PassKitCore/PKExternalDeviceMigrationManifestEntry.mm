@interface PKExternalDeviceMigrationManifestEntry
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToExternalDeviceMigrationManifestEntry:(id)a3;
- (PKExternalDeviceMigrationManifestEntry)initWithCoder:(id)a3;
- (id)_initWithIdentifier:(id)a3 passUniqueIdentifier:(id)a4 fpanDescriptorIdentifier:(id)a5 title:(id)a6 subtitle:(id)a7 transferSize:(unint64_t)a8 estimatedOnDiskSize:(unint64_t)a9;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKExternalDeviceMigrationManifestEntry

- (id)_initWithIdentifier:(id)a3 passUniqueIdentifier:(id)a4 fpanDescriptorIdentifier:(id)a5 title:(id)a6 subtitle:(id)a7 transferSize:(unint64_t)a8 estimatedOnDiskSize:(unint64_t)a9
{
  v16 = a3;
  v17 = a4;
  v23 = a5;
  v22 = a6;
  v18 = a7;
  v24.receiver = self;
  v24.super_class = PKExternalDeviceMigrationManifestEntry;
  v19 = [(PKExternalDeviceMigrationManifestEntry *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, a3);
    objc_storeStrong(&v20->_passUniqueIdentifier, a4);
    objc_storeStrong(&v20->_fpanDescriptorIdentifier, a5);
    objc_storeStrong(&v20->_title, a6);
    objc_storeStrong(&v20->_subtitle, a7);
    v20->_transferSize = a8;
    v20->_estimatedOnDiskSize = a9;
  }

  return v20;
}

- (PKExternalDeviceMigrationManifestEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKExternalDeviceMigrationManifestEntry;
  v5 = [(PKExternalDeviceMigrationManifestEntry *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fpanDescriptorIdentifier"];
    fpanDescriptorIdentifier = v5->_fpanDescriptorIdentifier;
    v5->_fpanDescriptorIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferSize"];
    v5->_transferSize = [v16 unsignedIntegerValue];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"estimatedOnDiskSize"];
    v5->_estimatedOnDiskSize = [v17 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_passUniqueIdentifier forKey:@"passUniqueIdentifier"];
  [v5 encodeObject:self->_fpanDescriptorIdentifier forKey:@"fpanDescriptorIdentifier"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_subtitle forKey:@"subtitle"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_transferSize];
  [v5 encodeObject:v6 forKey:@"transferSize"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_estimatedOnDiskSize];
  [v5 encodeObject:v7 forKey:@"estimatedOnDiskSize"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v6 appendFormat:@"passUniqueIdentifier: '%@'; ", self->_passUniqueIdentifier];
  [v6 appendFormat:@"fpanDescriptorIdentifier: '%@'; ", self->_fpanDescriptorIdentifier];
  [v6 appendFormat:@"title: '%@'; ", self->_title];
  [v6 appendFormat:@"subtitle: '%@'; ", self->_subtitle];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_transferSize];
  [v6 appendFormat:@"transferSize: '%@'; ", v7];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_estimatedOnDiskSize];
  [v6 appendFormat:@"estimatedOnDiskSize: '%@'; ", v8];

  [v6 appendFormat:@">"];
  v9 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v9;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"identifier: '%@'; ", self->_identifier];
  if (self->_passUniqueIdentifier)
  {
    [v6 appendFormat:@"passUniqueIdentifier: '%@'; ", self->_passUniqueIdentifier];
  }

  else
  {
    if (self->_fpanDescriptorIdentifier)
    {
      v7 = @"Yes";
    }

    else
    {
      v7 = @"No";
    }

    [v6 appendFormat:@"hasFPANDescriptorIdentifier: '%@'; ", v7];
  }

  [v6 appendFormat:@">"];
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKExternalDeviceMigrationManifestEntry *)self isEqualToExternalDeviceMigrationManifestEntry:v5];
  }

  return v6;
}

- (BOOL)isEqualToExternalDeviceMigrationManifestEntry:(id)a3
{
  v4 = a3;
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
      goto LABEL_31;
    }
  }

  else if (([(NSString *)identifier isEqual:?]& 1) == 0)
  {
    goto LABEL_31;
  }

  passUniqueIdentifier = self->_passUniqueIdentifier;
  v9 = v4[2];
  if (passUniqueIdentifier && v9)
  {
    if (([(NSString *)passUniqueIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (passUniqueIdentifier != v9)
  {
    goto LABEL_31;
  }

  fpanDescriptorIdentifier = self->_fpanDescriptorIdentifier;
  v11 = v4[3];
  if (fpanDescriptorIdentifier && v11)
  {
    if (([(NSString *)fpanDescriptorIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (fpanDescriptorIdentifier != v11)
  {
    goto LABEL_31;
  }

  title = self->_title;
  v13 = v4[4];
  if (title && v13)
  {
    if (([(NSString *)title isEqual:?]& 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (title != v13)
  {
    goto LABEL_31;
  }

  subtitle = self->_subtitle;
  v15 = v4[5];
  if (!subtitle || !v15)
  {
    if (subtitle == v15)
    {
      goto LABEL_29;
    }

LABEL_31:
    v16 = 0;
    goto LABEL_32;
  }

  if (([(NSString *)subtitle isEqual:?]& 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (self->_transferSize != v4[6])
  {
    goto LABEL_31;
  }

  v16 = self->_estimatedOnDiskSize == v4[7];
LABEL_32:

  return v16;
}

@end