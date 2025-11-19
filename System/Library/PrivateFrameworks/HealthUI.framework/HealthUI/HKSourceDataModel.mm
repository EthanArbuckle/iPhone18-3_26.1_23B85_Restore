@interface HKSourceDataModel
- (BOOL)isEqual:(id)a3;
- (HKSourceDataModel)initWithSource:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation HKSourceDataModel

- (HKSourceDataModel)initWithSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKSourceDataModel;
  v6 = [(HKSourceDataModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_source, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[HKSourceDataModel allocWithZone:?], "initWithSource:", self->_source];
  [(HKSourceDataModel *)v4 setIcon:self->_icon];
  [(HKSourceDataModel *)v4 setInstalled:self->_installed];
  [(HKSourceDataModel *)v4 setPurposeStrings:self->_purposeStrings];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    source = self->_source;
    v6 = [v4 source];
    v7 = [(HKSource *)source isEqual:v6];
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
  v5 = [(HKSource *)self->_source bundleIdentifier];
  v6 = [v3 stringWithFormat:@"<%@:%p bundleIdentifier:%@ installed:%i icon:%@>", v4, self, v5, self->_installed, self->_icon];

  return v6;
}

@end