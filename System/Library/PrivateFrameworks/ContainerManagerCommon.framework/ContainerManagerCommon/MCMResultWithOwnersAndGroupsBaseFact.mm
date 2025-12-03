@interface MCMResultWithOwnersAndGroupsBaseFact
- (BOOL)isEqual:(id)equal;
- (MCMResultWithOwnersAndGroupsBaseFact)initWithOwnerIndex:(unint64_t)index groupIndex:(unint64_t)groupIndex;
- (unint64_t)groupIndex;
- (unint64_t)hash;
- (unint64_t)ownerIndex;
@end

@implementation MCMResultWithOwnersAndGroupsBaseFact

- (unint64_t)groupIndex
{
  result = self->_groupIndex;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)ownerIndex
{
  result = self->_ownerIndex;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v11 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    ownerIndex = [v5 ownerIndex];
    v8 = 0;
    if (ownerIndex == [(MCMResultWithOwnersAndGroupsBaseFact *)self ownerIndex])
    {
      groupIndex = [v5 groupIndex];
      if (groupIndex == [(MCMResultWithOwnersAndGroupsBaseFact *)self groupIndex])
      {
        v8 = 1;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (unint64_t)hash
{
  v7 = *MEMORY[0x1E69E9840];
  ownerIndex = [(MCMResultWithOwnersAndGroupsBaseFact *)self ownerIndex];
  groupIndex = [(MCMResultWithOwnersAndGroupsBaseFact *)self groupIndex];
  v5 = *MEMORY[0x1E69E9840];
  return groupIndex ^ ownerIndex;
}

- (MCMResultWithOwnersAndGroupsBaseFact)initWithOwnerIndex:(unint64_t)index groupIndex:(unint64_t)groupIndex
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MCMResultWithOwnersAndGroupsBaseFact;
  result = [(MCMResultWithOwnersAndGroupsBaseFact *)&v8 init];
  if (result)
  {
    result->_ownerIndex = index;
    result->_groupIndex = groupIndex;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

@end