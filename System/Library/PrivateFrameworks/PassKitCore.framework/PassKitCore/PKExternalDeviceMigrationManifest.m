@interface PKExternalDeviceMigrationManifest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToExternalDeviceMigrationManifest:(id)a3;
- (PKExternalDeviceMigrationManifest)initWithCoder:(id)a3;
- (PKExternalDeviceMigrationManifest)initWithEntries:(id)a3;
- (id)description;
- (id)redactedDescription;
- (unint64_t)estimatedOnDiskSize;
- (unint64_t)transferSize;
@end

@implementation PKExternalDeviceMigrationManifest

- (PKExternalDeviceMigrationManifest)initWithEntries:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKExternalDeviceMigrationManifest;
  v6 = [(PKExternalDeviceMigrationManifest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entries, a3);
  }

  return v7;
}

- (unint64_t)transferSize
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_entries;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) transferSize];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)estimatedOnDiskSize
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_entries;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) estimatedOnDiskSize];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PKExternalDeviceMigrationManifest)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKExternalDeviceMigrationManifest;
  v5 = [(PKExternalDeviceMigrationManifest *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"entries"];
    entries = v5->_entries;
    v5->_entries = v9;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"entries: '%@'; ", self->_entries];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKExternalDeviceMigrationManifest transferSize](self, "transferSize")}];
  [v6 appendFormat:@"transferSize: '%@'; ", v7];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKExternalDeviceMigrationManifest estimatedOnDiskSize](self, "estimatedOnDiskSize")}];
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

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_entries, "count")}];
  [v6 appendFormat:@"entryCount: '%@'; ", v7];

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKExternalDeviceMigrationManifest *)self isEqualToExternalDeviceMigrationManifest:v5];
  }

  return v6;
}

- (BOOL)isEqualToExternalDeviceMigrationManifest:(id)a3
{
  entries = self->_entries;
  v4 = *(a3 + 1);
  if (entries)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return entries == v4;
  }

  else
  {
    return [(NSArray *)entries isEqual:?];
  }
}

@end