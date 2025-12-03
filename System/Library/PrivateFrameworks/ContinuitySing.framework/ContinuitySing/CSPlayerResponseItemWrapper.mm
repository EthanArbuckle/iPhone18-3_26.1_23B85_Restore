@interface CSPlayerResponseItemWrapper
- (BOOL)isEqual:(id)equal;
- (CSPlayerResponseItemWrapper)initWithResponseItem:(id)item;
- (id)initAddSongsItem;
- (unint64_t)hash;
@end

@implementation CSPlayerResponseItemWrapper

- (CSPlayerResponseItemWrapper)initWithResponseItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = CSPlayerResponseItemWrapper;
  v6 = [(CSPlayerResponseItemWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_responseItem, item);
  }

  return v7;
}

- (id)initAddSongsItem
{
  v3.receiver = self;
  v3.super_class = CSPlayerResponseItemWrapper;
  result = [(CSPlayerResponseItemWrapper *)&v3 init];
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_addSongsItem)
    {
      isAddSongsItem = [equalCopy isAddSongsItem];
    }

    else
    {
      queueItemIdentifier = [(MPCPlayerResponseItem *)self->_responseItem queueItemIdentifier];
      responseItem = [equalCopy responseItem];
      queueItemIdentifier2 = [responseItem queueItemIdentifier];
      isAddSongsItem = [queueItemIdentifier isEqualToString:queueItemIdentifier2];
    }
  }

  else
  {
    isAddSongsItem = 0;
  }

  return isAddSongsItem;
}

- (unint64_t)hash
{
  if (self->_addSongsItem)
  {
    return 999;
  }

  queueItemIdentifier = [(MPCPlayerResponseItem *)self->_responseItem queueItemIdentifier];
  v4 = [queueItemIdentifier hash];

  return v4;
}

@end