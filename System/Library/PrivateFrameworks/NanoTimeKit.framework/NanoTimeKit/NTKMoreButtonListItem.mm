@interface NTKMoreButtonListItem
- (NTKMoreButtonListItem)initWithSectionIdentifier:(id)a3;
@end

@implementation NTKMoreButtonListItem

- (NTKMoreButtonListItem)initWithSectionIdentifier:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NTKMoreButtonListItem;
  v5 = [(NTKMoreButtonListItem *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAD78] UUID];
    v7 = [v6 UUIDString];
    ntk_identifier = v5->_ntk_identifier;
    v5->_ntk_identifier = v7;

    v9 = [v4 copy];
    ntk_sectionIdentifier = v5->_ntk_sectionIdentifier;
    v5->_ntk_sectionIdentifier = v9;
  }

  return v5;
}

@end