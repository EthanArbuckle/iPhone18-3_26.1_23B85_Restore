@interface MUTransitLineItemHeaderViewModel
- (MUTransitLineItemHeaderViewModel)initWithTransitLineItem:(id)item;
- (NSString)placeName;
@end

@implementation MUTransitLineItemHeaderViewModel

- (NSString)placeName
{
  v2 = self->_lineItem;
  name = [(GEOTransitLineItem *)v2 name];
  v4 = [name length];

  if (!v4)
  {
    system = [(GEOTransitLineItem *)v2 system];

    v2 = system;
  }

  name2 = [(GEOTransitLineItem *)v2 name];

  return name2;
}

- (MUTransitLineItemHeaderViewModel)initWithTransitLineItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = MUTransitLineItemHeaderViewModel;
  v6 = [(MUTransitLineItemHeaderViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lineItem, item);
  }

  return v7;
}

@end