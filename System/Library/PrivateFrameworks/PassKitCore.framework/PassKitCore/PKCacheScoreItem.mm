@interface PKCacheScoreItem
- (BOOL)hasExpired;
- (PKCacheScoreItem)init;
- (PKCacheScoreItem)initWithCoder:(id)coder;
@end

@implementation PKCacheScoreItem

- (PKCacheScoreItem)init
{
  v6.receiver = self;
  v6.super_class = PKCacheScoreItem;
  v2 = [(PKCacheScoreItem *)&v6 init];
  if (v2)
  {
    date = [MEMORY[0x1E695DF00] date];
    insertDate = v2->_insertDate;
    v2->_insertDate = date;
  }

  return v2;
}

- (BOOL)hasExpired
{
  v2 = [(NSDate *)self->_insertDate dateByAddingTimeInterval:10368000.0];
  date = [MEMORY[0x1E695DF00] date];
  v4 = [v2 compare:date] == -1;

  return v4;
}

- (PKCacheScoreItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKCacheScoreItem;
  v5 = [(PKCacheScoreItem *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    insertDate = v5->_insertDate;
    v5->_insertDate = v6;
  }

  return v5;
}

@end