@interface NTKHomeListItem
- (BOOL)isEqual:(id)equal;
- (NTKHomeListItem)initWithSectionIdentifier:(id)identifier;
@end

@implementation NTKHomeListItem

- (NTKHomeListItem)initWithSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = NTKHomeListItem;
  v5 = [(NTKHomeListItem *)&v12 init];
  if (v5)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    ntk_identifier = v5->_ntk_identifier;
    v5->_ntk_identifier = uUIDString;

    v9 = [identifierCopy copy];
    ntk_sectionIdentifier = v5->_ntk_sectionIdentifier;
    v5->_ntk_sectionIdentifier = v9;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v8 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    homeID = [(NTKHomeListItem *)v5 homeID];
    homeID2 = [(NTKHomeListItem *)self homeID];
    v8 = homeID == homeID2;
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

@end