@interface SafariClearBrowsingDataInterval
- (SafariClearBrowsingDataInterval)initWithDescription:(id)description dateAfterWhichDataShouldBeClearedBlock:(id)block;
- (id)description;
@end

@implementation SafariClearBrowsingDataInterval

- (SafariClearBrowsingDataInterval)initWithDescription:(id)description dateAfterWhichDataShouldBeClearedBlock:(id)block
{
  descriptionCopy = description;
  blockCopy = block;
  v15.receiver = self;
  v15.super_class = SafariClearBrowsingDataInterval;
  v8 = [(SafariClearBrowsingDataInterval *)&v15 init];
  if (v8)
  {
    v9 = [descriptionCopy copy];
    descriptionOfInterval = v8->_descriptionOfInterval;
    v8->_descriptionOfInterval = v9;

    v11 = [blockCopy copy];
    dateAfterWhichDataShouldBeClearedBlock = v8->_dateAfterWhichDataShouldBeClearedBlock;
    v8->_dateAfterWhichDataShouldBeClearedBlock = v11;

    v13 = v8;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p _descriptionOfInterval = %@>", v5, self, self->_descriptionOfInterval];;

  return v6;
}

@end