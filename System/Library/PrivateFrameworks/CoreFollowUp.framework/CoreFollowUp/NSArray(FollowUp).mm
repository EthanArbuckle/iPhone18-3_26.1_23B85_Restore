@interface NSArray(FollowUp)
- (id)fl_map:()FollowUp;
- (id)fl_multiMap:()FollowUp;
@end

@implementation NSArray(FollowUp)

- (id)fl_map:()FollowUp
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __28__NSArray_FollowUp__fl_map___block_invoke;
    v12 = &unk_278852888;
    v13 = v5;
    v14 = v4;
    v6 = v5;
    [self enumerateObjectsUsingBlock:&v9];
    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)fl_multiMap:()FollowUp
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(self, "count")}];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __33__NSArray_FollowUp__fl_multiMap___block_invoke;
    v12 = &unk_278852888;
    v13 = v5;
    v14 = v4;
    v6 = v5;
    [self enumerateObjectsUsingBlock:&v9];
    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end