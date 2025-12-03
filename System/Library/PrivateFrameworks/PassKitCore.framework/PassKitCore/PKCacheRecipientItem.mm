@interface PKCacheRecipientItem
- (BOOL)hasExpired;
- (PKCacheRecipientItem)initWithCoder:(id)coder;
- (PKCacheRecipientItem)initWithItem:(id)item;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCacheRecipientItem

- (PKCacheRecipientItem)initWithItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = PKCacheRecipientItem;
  v6 = [(PKCacheRecipientItem *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, item);
    date = [MEMORY[0x1E695DF00] date];
    insertDate = v7->_insertDate;
    v7->_insertDate = date;
  }

  return v7;
}

- (BOOL)hasExpired
{
  cacheUntil = [(PKPeerPaymentRecipient *)self->_item cacheUntil];
  v4 = cacheUntil;
  if (cacheUntil)
  {
    v5 = cacheUntil;
  }

  else
  {
    v5 = [(NSDate *)self->_insertDate dateByAddingTimeInterval:3600.0];
  }

  v6 = v5;

  date = [MEMORY[0x1E695DF00] date];
  v8 = [v6 compare:date] == -1;

  return v8;
}

- (PKCacheRecipientItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKCacheRecipientItem;
  v5 = [(PKCacheRecipientItem *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    item = v5->_item;
    v5->_item = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    insertDate = v5->_insertDate;
    v5->_insertDate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  item = self->_item;
  coderCopy = coder;
  [coderCopy encodeObject:item forKey:@"i"];
  [coderCopy encodeObject:self->_insertDate forKey:@"d"];
}

@end