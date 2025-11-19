@interface MBRestoreFailure
- (MBRestoreFailure)initWithCoder:(id)a3;
- (MBRestoreFailure)initWithIdentifier:(id)a3 dataclass:(id)a4 assetType:(id)a5 displayName:(id)a6 error:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MBRestoreFailure

- (MBRestoreFailure)initWithIdentifier:(id)a3 dataclass:(id)a4 assetType:(id)a5 displayName:(id)a6 error:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v30.receiver = self;
  v30.super_class = MBRestoreFailure;
  v17 = [(MBRestoreFailure *)&v30 init];
  if (v17)
  {
    v18 = [v12 copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [v13 copy];
    dataclass = v17->_dataclass;
    v17->_dataclass = v20;

    v22 = [v14 copy];
    assetType = v17->_assetType;
    v17->_assetType = v22;

    v24 = [v15 copy];
    displayName = v17->_displayName;
    v17->_displayName = v24;

    v26 = [v16 copy];
    error = v17->_error;
    v17->_error = v26;

    icon = v17->_icon;
    v17->_icon = 0;
  }

  return v17;
}

- (MBRestoreFailure)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MBRestoreFailure;
  v5 = [(MBRestoreFailure *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataclass"];
    dataclass = v5->_dataclass;
    v5->_dataclass = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeObject:self->_dataclass forKey:@"dataclass"];
  [v5 encodeObject:self->_assetType forKey:@"assetType"];
  [v5 encodeObject:self->_icon forKey:@"icon"];
  [v5 encodeObject:self->_error forKey:@"error"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MBRestoreFailure);
  [(MBRestoreFailure *)v4 setIdentifier:self->_identifier];
  [(MBRestoreFailure *)v4 setDisplayName:self->_displayName];
  [(MBRestoreFailure *)v4 setDataclass:self->_dataclass];
  [(MBRestoreFailure *)v4 setAssetType:self->_assetType];
  [(MBRestoreFailure *)v4 setIcon:self->_icon];
  [(MBRestoreFailure *)v4 setError:self->_error];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = MBRestoreFailure;
  v4 = [(MBRestoreFailure *)&v9 description];
  v5 = v4;
  if (self->_icon)
  {
    v6 = @"has icon";
  }

  else
  {
    v6 = @"no icon";
  }

  v7 = [v3 stringWithFormat:@"{ %@, identifier = %@, dataclass = %@, assetType = %@, error = %@, %@ }", v4, self->_identifier, self->_dataclass, self->_assetType, self->_error, v6];

  return v7;
}

@end