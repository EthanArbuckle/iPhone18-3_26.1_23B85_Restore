@interface SafariClearBrowsingDataInterval
- (SafariClearBrowsingDataInterval)initWithDescription:(id)a3 dateAfterWhichDataShouldBeClearedBlock:(id)a4;
- (id)description;
@end

@implementation SafariClearBrowsingDataInterval

- (SafariClearBrowsingDataInterval)initWithDescription:(id)a3 dateAfterWhichDataShouldBeClearedBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SafariClearBrowsingDataInterval;
  v8 = [(SafariClearBrowsingDataInterval *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    descriptionOfInterval = v8->_descriptionOfInterval;
    v8->_descriptionOfInterval = v9;

    v11 = [v7 copy];
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