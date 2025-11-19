@interface PKCacheRecipientItem
- (BOOL)hasExpired;
- (PKCacheRecipientItem)initWithCoder:(id)a3;
- (PKCacheRecipientItem)initWithItem:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCacheRecipientItem

- (PKCacheRecipientItem)initWithItem:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PKCacheRecipientItem;
  v6 = [(PKCacheRecipientItem *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
    v8 = [MEMORY[0x1E695DF00] date];
    insertDate = v7->_insertDate;
    v7->_insertDate = v8;
  }

  return v7;
}

- (BOOL)hasExpired
{
  v3 = [(PKPeerPaymentRecipient *)self->_item cacheUntil];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(NSDate *)self->_insertDate dateByAddingTimeInterval:3600.0];
  }

  v6 = v5;

  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [v6 compare:v7] == -1;

  return v8;
}

- (PKCacheRecipientItem)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKCacheRecipientItem;
  v5 = [(PKCacheRecipientItem *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    item = v5->_item;
    v5->_item = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    insertDate = v5->_insertDate;
    v5->_insertDate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  item = self->_item;
  v5 = a3;
  [v5 encodeObject:item forKey:@"i"];
  [v5 encodeObject:self->_insertDate forKey:@"d"];
}

@end