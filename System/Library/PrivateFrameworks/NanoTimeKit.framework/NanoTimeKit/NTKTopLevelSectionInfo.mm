@interface NTKTopLevelSectionInfo
- (BOOL)isEqual:(id)equal;
- (NTKTopLevelSectionInfo)initWithIdentifier:(id)identifier localizedSectionName:(id)name;
@end

@implementation NTKTopLevelSectionInfo

- (NTKTopLevelSectionInfo)initWithIdentifier:(id)identifier localizedSectionName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = NTKTopLevelSectionInfo;
  v9 = [(NTKTopLevelSectionInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ntk_identifier, identifier);
    objc_storeStrong(&v10->_ntk_localizedSectionName, name);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->_ntk_identifier isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end