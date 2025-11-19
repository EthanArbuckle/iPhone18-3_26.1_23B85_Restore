@interface CSPlayerResponseItemWrapper
- (BOOL)isEqual:(id)a3;
- (CSPlayerResponseItemWrapper)initWithResponseItem:(id)a3;
- (id)initAddSongsItem;
- (unint64_t)hash;
@end

@implementation CSPlayerResponseItemWrapper

- (CSPlayerResponseItemWrapper)initWithResponseItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CSPlayerResponseItemWrapper;
  v6 = [(CSPlayerResponseItemWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_responseItem, a3);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_addSongsItem)
    {
      v5 = [v4 isAddSongsItem];
    }

    else
    {
      v6 = [(MPCPlayerResponseItem *)self->_responseItem queueItemIdentifier];
      v7 = [v4 responseItem];
      v8 = [v7 queueItemIdentifier];
      v5 = [v6 isEqualToString:v8];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  if (self->_addSongsItem)
  {
    return 999;
  }

  v3 = [(MPCPlayerResponseItem *)self->_responseItem queueItemIdentifier];
  v4 = [v3 hash];

  return v4;
}

@end