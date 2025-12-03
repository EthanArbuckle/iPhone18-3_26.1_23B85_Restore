@interface MBRestoreFailure
- (MBRestoreFailure)initWithCoder:(id)coder;
- (MBRestoreFailure)initWithIdentifier:(id)identifier dataclass:(id)dataclass assetType:(id)type displayName:(id)name error:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MBRestoreFailure

- (MBRestoreFailure)initWithIdentifier:(id)identifier dataclass:(id)dataclass assetType:(id)type displayName:(id)name error:(id)error
{
  identifierCopy = identifier;
  dataclassCopy = dataclass;
  typeCopy = type;
  nameCopy = name;
  errorCopy = error;
  v30.receiver = self;
  v30.super_class = MBRestoreFailure;
  v17 = [(MBRestoreFailure *)&v30 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [dataclassCopy copy];
    dataclass = v17->_dataclass;
    v17->_dataclass = v20;

    v22 = [typeCopy copy];
    assetType = v17->_assetType;
    v17->_assetType = v22;

    v24 = [nameCopy copy];
    displayName = v17->_displayName;
    v17->_displayName = v24;

    v26 = [errorCopy copy];
    error = v17->_error;
    v17->_error = v26;

    icon = v17->_icon;
    v17->_icon = 0;
  }

  return v17;
}

- (MBRestoreFailure)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = MBRestoreFailure;
  v5 = [(MBRestoreFailure *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataclass"];
    dataclass = v5->_dataclass;
    v5->_dataclass = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetType"];
    assetType = v5->_assetType;
    v5->_assetType = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_dataclass forKey:@"dataclass"];
  [coderCopy encodeObject:self->_assetType forKey:@"assetType"];
  [coderCopy encodeObject:self->_icon forKey:@"icon"];
  [coderCopy encodeObject:self->_error forKey:@"error"];
}

- (id)copyWithZone:(_NSZone *)zone
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