@interface PKDiscoveryShelf
+ (id)shelfWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (PKDiscoveryItem)item;
- (PKDiscoveryShelf)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setItem:(id)item;
@end

@implementation PKDiscoveryShelf

+ (id)shelfWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy PKStringForKey:@"shelfType"];
  if ([@"textBlock" isEqualToString:v4])
  {
    v5 = off_1E79BFB38;
LABEL_7:

LABEL_8:
    v6 = [objc_alloc(*v5) initWithDictionary:dictionaryCopy];
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

- (void)setItem:(id)item
{
  itemCopy = item;
  objc_storeWeak(&self->_item, itemCopy);
  identifier = [itemCopy identifier];

  itemIdentifier = self->_itemIdentifier;
  self->_itemIdentifier = identifier;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_type == equalCopy[3];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"shelfType"];
  [coderCopy encodeObject:self->_itemIdentifier forKey:@"itemIdentifier"];
}

- (PKDiscoveryShelf)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKDiscoveryShelf;
  v5 = [(PKDiscoveryShelf *)&v9 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"shelfType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemIdentifier"];
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