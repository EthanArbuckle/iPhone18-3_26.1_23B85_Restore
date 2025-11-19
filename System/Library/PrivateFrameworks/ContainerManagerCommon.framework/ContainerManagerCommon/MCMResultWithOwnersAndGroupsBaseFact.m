@interface MCMResultWithOwnersAndGroupsBaseFact
- (BOOL)isEqual:(id)a3;
- (MCMResultWithOwnersAndGroupsBaseFact)initWithOwnerIndex:(unint64_t)a3 groupIndex:(unint64_t)a4;
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

- (BOOL)isEqual:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [v5 ownerIndex];
    v8 = 0;
    if (v6 == [(MCMResultWithOwnersAndGroupsBaseFact *)self ownerIndex])
    {
      v7 = [v5 groupIndex];
      if (v7 == [(MCMResultWithOwnersAndGroupsBaseFact *)self groupIndex])
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
  v3 = [(MCMResultWithOwnersAndGroupsBaseFact *)self ownerIndex];
  v4 = [(MCMResultWithOwnersAndGroupsBaseFact *)self groupIndex];
  v5 = *MEMORY[0x1E69E9840];
  return v4 ^ v3;
}

- (MCMResultWithOwnersAndGroupsBaseFact)initWithOwnerIndex:(unint64_t)a3 groupIndex:(unint64_t)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MCMResultWithOwnersAndGroupsBaseFact;
  result = [(MCMResultWithOwnersAndGroupsBaseFact *)&v8 init];
  if (result)
  {
    result->_ownerIndex = a3;
    result->_groupIndex = a4;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

@end