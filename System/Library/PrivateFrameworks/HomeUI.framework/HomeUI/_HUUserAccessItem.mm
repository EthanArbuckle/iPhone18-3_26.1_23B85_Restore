@interface _HUUserAccessItem
- (_HUUserAccessItem)initWithUser:(id)user resultsBlock:(id)block;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation _HUUserAccessItem

- (_HUUserAccessItem)initWithUser:(id)user resultsBlock:(id)block
{
  userCopy = user;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = _HUUserAccessItem;
  v9 = [(_HUUserAccessItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_user, user);
    v11 = _Block_copy(blockCopy);
    resultsBlock = v10->_resultsBlock;
    v10->_resultsBlock = v11;
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  resultsBlock = [(_HUUserAccessItem *)self resultsBlock];
  v6 = resultsBlock[2]();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49___HUUserAccessItem__subclass_updateWithOptions___block_invoke;
  v10[3] = &unk_277DB9090;
  v11 = optionsCopy;
  selfCopy = self;
  v7 = optionsCopy;
  v8 = [v6 flatMap:v10];

  return v8;
}

@end