@interface SUUILibraryItem
- (BOOL)isEqual:(id)equal;
- (NSNumber)storeItemIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation SUUILibraryItem

- (NSNumber)storeItemIdentifier
{
  storeIdentifier = [(SUUILibraryItem *)self storeIdentifier];
  itemIdentifier = [storeIdentifier itemIdentifier];

  return itemIdentifier;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_storeFlavorIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SUUIStoreIdentifier *)self->_storeIdentifier copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SUUILibraryItem;
  v4 = [(SUUILibraryItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: [%@, %@]", v4, self->_storeIdentifier, self->_storeFlavorIdentifier];

  return v5;
}

- (unint64_t)hash
{
  storeItemIdentifier = [(SUUILibraryItem *)self storeItemIdentifier];
  v4 = [storeItemIdentifier hash];
  v5 = [(NSString *)self->_storeFlavorIdentifier hash]^ v4;
  v6 = [(SUUIStoreIdentifier *)self->_storeIdentifier hash];

  return v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && (storeIdentifier = self->_storeIdentifier) != 0 && (storeIdentifier == equalCopy[1] || [(SUUIStoreIdentifier *)storeIdentifier isEqual:?]))
  {
    storeFlavorIdentifier = self->_storeFlavorIdentifier;
    if (storeFlavorIdentifier == equalCopy[2])
    {
      v6 = 1;
    }

    else
    {
      v6 = [(NSString *)storeFlavorIdentifier isEqualToString:?];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end