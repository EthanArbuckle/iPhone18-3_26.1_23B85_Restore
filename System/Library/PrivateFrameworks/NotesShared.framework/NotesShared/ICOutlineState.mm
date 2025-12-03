@interface ICOutlineState
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToICOutlineState:(id)state;
- (BOOL)mergeWithState:(id)state;
- (ICOutlineState)initWithCollapsedUUIDs:(id)ds;
- (ICOutlineState)initWithData:(id)data;
- (NSArray)collapsedUUIDStrings;
- (NSData)data;
- (unint64_t)hash;
- (void)updateCollapsedUUIDs;
@end

@implementation ICOutlineState

- (void)updateCollapsedUUIDs
{
  objc_opt_class();
  mergeableValue = [(ICOutlineState *)self mergeableValue];
  value = [mergeableValue value];
  v9 = ICDynamicCast();

  v5 = MEMORY[0x277CBEB98];
  v6 = [v9 ic_compactMap:&__block_literal_global_37];
  v7 = [v5 setWithArray:v6];
  collapsedUUIDs = self->_collapsedUUIDs;
  self->_collapsedUUIDs = v7;
}

- (ICOutlineState)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = ICOutlineState;
  v5 = [(ICOutlineState *)&v9 init];
  if (v5)
  {
    v6 = [[ICTTMergeableWallClockValue alloc] initWithData:dataCopy];
    mergeableValue = v5->_mergeableValue;
    v5->_mergeableValue = v6;

    [(ICOutlineState *)v5 updateCollapsedUUIDs];
  }

  return v5;
}

- (ICOutlineState)initWithCollapsedUUIDs:(id)ds
{
  dsCopy = ds;
  v14.receiver = self;
  v14.super_class = ICOutlineState;
  v5 = [(ICOutlineState *)&v14 init];
  if (v5)
  {
    v6 = [dsCopy copy];
    collapsedUUIDs = v5->_collapsedUUIDs;
    v5->_collapsedUUIDs = v6;

    v8 = [ICTTMergeableWallClockValue alloc];
    collapsedUUIDStrings = [(ICOutlineState *)v5 collapsedUUIDStrings];
    v10 = [MEMORY[0x277CBEAA8] now];
    v11 = [(ICTTMergeableWallClockValue *)v8 initWithValue:collapsedUUIDStrings timestamp:v10];
    mergeableValue = v5->_mergeableValue;
    v5->_mergeableValue = v11;
  }

  return v5;
}

- (NSData)data
{
  mergeableValue = [(ICOutlineState *)self mergeableValue];
  serialize = [mergeableValue serialize];

  return serialize;
}

- (BOOL)mergeWithState:(id)state
{
  stateCopy = state;
  mergeableValue = [(ICOutlineState *)self mergeableValue];

  if (mergeableValue)
  {
    mergeableValue2 = [(ICOutlineState *)self mergeableValue];
    mergeableValue3 = [stateCopy mergeableValue];
    v8 = [mergeableValue2 merge:mergeableValue3];

    [(ICOutlineState *)self updateCollapsedUUIDs];
    v9 = v8 == 2;
  }

  else
  {
    mergeableValue4 = [stateCopy mergeableValue];
    [(ICOutlineState *)self setMergeableValue:mergeableValue4];

    v9 = 1;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ICOutlineState *)self isEqualToICOutlineState:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v25 = *MEMORY[0x277D85DE8];
  collapsedUUIDs = [(ICOutlineState *)self collapsedUUIDs];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 hash];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = collapsedUUIDs;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v5 += ICHashWithObject(*(*(&v20 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v18 = ICHashWithHashKeys(v5, v11, v12, v13, v14, v15, v16, v17, 0);
  return v18;
}

id __38__ICOutlineState_updateCollapsedUUIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (NSArray)collapsedUUIDStrings
{
  collapsedUUIDs = [(ICOutlineState *)self collapsedUUIDs];
  v3 = [collapsedUUIDs ic_map:&__block_literal_global_14];
  allObjects = [v3 allObjects];

  return allObjects;
}

- (BOOL)isEqualToICOutlineState:(id)state
{
  stateCopy = state;
  collapsedUUIDs = [(ICOutlineState *)self collapsedUUIDs];
  collapsedUUIDs2 = [stateCopy collapsedUUIDs];

  LOBYTE(stateCopy) = [collapsedUUIDs isEqualToSet:collapsedUUIDs2];
  return stateCopy;
}

@end