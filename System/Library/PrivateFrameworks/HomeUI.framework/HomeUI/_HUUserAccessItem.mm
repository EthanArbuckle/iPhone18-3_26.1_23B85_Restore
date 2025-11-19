@interface _HUUserAccessItem
- (_HUUserAccessItem)initWithUser:(id)a3 resultsBlock:(id)a4;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation _HUUserAccessItem

- (_HUUserAccessItem)initWithUser:(id)a3 resultsBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _HUUserAccessItem;
  v9 = [(_HUUserAccessItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_user, a3);
    v11 = _Block_copy(v8);
    resultsBlock = v10->_resultsBlock;
    v10->_resultsBlock = v11;
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(_HUUserAccessItem *)self resultsBlock];
  v6 = v5[2]();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49___HUUserAccessItem__subclass_updateWithOptions___block_invoke;
  v10[3] = &unk_277DB9090;
  v11 = v4;
  v12 = self;
  v7 = v4;
  v8 = [v6 flatMap:v10];

  return v8;
}

@end