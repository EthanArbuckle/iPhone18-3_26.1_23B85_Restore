@interface PKDiscoveryShelf
+ (id)shelfWithDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKDiscoveryItem)item;
- (PKDiscoveryShelf)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setItem:(id)a3;
@end

@implementation PKDiscoveryShelf

+ (id)shelfWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 PKStringForKey:@"shelfType"];
  if ([@"textBlock" isEqualToString:v4])
  {
    v5 = off_1E79BFB38;
LABEL_7:

LABEL_8:
    v6 = [objc_alloc(*v5) initWithDictionary:v3];
    goto LABEL_9;
  }

  if ([@"inlineMedia" isEqualToString:v4])
  {
    v5 = off_1E79BFAD8;
    goto LABEL_7;
  }

  if ([@"spacer" isEqualToString:v4])
  {
    v5 = off_1E79BFB30;
    goto LABEL_7;
  }

  v8 = [@"callToAction" isEqualToString:v4];

  if (v8)
  {
    v5 = off_1E79BFAB0;
    goto LABEL_8;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (void)setItem:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_item, v4);
  v5 = [v4 identifier];

  itemIdentifier = self->_itemIdentifier;
  self->_itemIdentifier = v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_type == v4[3];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"shelfType"];
  [v5 encodeObject:self->_itemIdentifier forKey:@"itemIdentifier"];
}

- (PKDiscoveryShelf)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKDiscoveryShelf;
  v5 = [(PKDiscoveryShelf *)&v9 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"shelfType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemIdentifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;
  }

  return v5;
}

- (PKDiscoveryItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

@end