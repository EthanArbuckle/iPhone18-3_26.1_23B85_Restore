@interface NTKHomeListItem
- (BOOL)isEqual:(id)a3;
- (NTKHomeListItem)initWithSectionIdentifier:(id)a3;
@end

@implementation NTKHomeListItem

- (NTKHomeListItem)initWithSectionIdentifier:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NTKHomeListItem;
  v5 = [(NTKHomeListItem *)&v12 init];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
  {
    v8 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NTKHomeListItem *)v5 homeID];
    v7 = [(NTKHomeListItem *)self homeID];
    v8 = v6 == v7;
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