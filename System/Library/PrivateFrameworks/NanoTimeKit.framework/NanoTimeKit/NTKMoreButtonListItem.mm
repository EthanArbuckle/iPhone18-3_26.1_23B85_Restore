@interface NTKMoreButtonListItem
- (NTKMoreButtonListItem)initWithSectionIdentifier:(id)identifier;
@end

@implementation NTKMoreButtonListItem

- (NTKMoreButtonListItem)initWithSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = NTKMoreButtonListItem;
  v5 = [(NTKMoreButtonListItem *)&v12 init];
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

@end