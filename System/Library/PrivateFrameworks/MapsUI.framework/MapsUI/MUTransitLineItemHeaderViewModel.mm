@interface MUTransitLineItemHeaderViewModel
- (MUTransitLineItemHeaderViewModel)initWithTransitLineItem:(id)a3;
- (NSString)placeName;
@end

@implementation MUTransitLineItemHeaderViewModel

- (NSString)placeName
{
  v2 = self->_lineItem;
  v3 = [(GEOTransitLineItem *)v2 name];
  v4 = [v3 length];

  if (!v4)
  {
    v5 = [(GEOTransitLineItem *)v2 system];

    v2 = v5;
  }

  v6 = [(GEOTransitLineItem *)v2 name];

  return v6;
}

- (MUTransitLineItemHeaderViewModel)initWithTransitLineItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUTransitLineItemHeaderViewModel;
  v6 = [(MUTransitLineItemHeaderViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lineItem, a3);
  }

  return v7;
}

@end