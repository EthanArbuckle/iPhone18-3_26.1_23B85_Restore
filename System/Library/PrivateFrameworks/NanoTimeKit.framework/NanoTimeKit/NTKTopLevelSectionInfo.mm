@interface NTKTopLevelSectionInfo
- (BOOL)isEqual:(id)a3;
- (NTKTopLevelSectionInfo)initWithIdentifier:(id)a3 localizedSectionName:(id)a4;
@end

@implementation NTKTopLevelSectionInfo

- (NTKTopLevelSectionInfo)initWithIdentifier:(id)a3 localizedSectionName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NTKTopLevelSectionInfo;
  v9 = [(NTKTopLevelSectionInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ntk_identifier, a3);
    objc_storeStrong(&v10->_ntk_localizedSectionName, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->_ntk_identifier isEqual:v4[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end