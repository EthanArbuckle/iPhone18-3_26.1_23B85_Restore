@interface HKSourceDataModel
- (BOOL)isEqual:(id)equal;
- (HKSourceDataModel)initWithSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation HKSourceDataModel

- (HKSourceDataModel)initWithSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = HKSourceDataModel;
  v6 = [(HKSourceDataModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_source, source);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HKSourceDataModel allocWithZone:?], "initWithSource:", self->_source];
  [(HKSourceDataModel *)v4 setIcon:self->_icon];
  [(HKSourceDataModel *)v4 setInstalled:self->_installed];
  [(HKSourceDataModel *)v4 setPurposeStrings:self->_purposeStrings];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    source = self->_source;
    source = [equalCopy source];
    v7 = [(HKSource *)source isEqual:source];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  bundleIdentifier = [(HKSource *)self->_source bundleIdentifier];
  v6 = [v3 stringWithFormat:@"<%@:%p bundleIdentifier:%@ installed:%i icon:%@>", v4, self, bundleIdentifier, self->_installed, self->_icon];

  return v6;
}

@end