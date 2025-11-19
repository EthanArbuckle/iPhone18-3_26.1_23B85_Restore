@interface MDPlistContainerAddPlistObject
@end

@implementation MDPlistContainerAddPlistObject

uint64_t ___MDPlistContainerAddPlistObject_block_invoke(uint64_t a1, __int128 *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v5 = *a2;
  v6 = *(a2 + 2);
  result = _MDPlistContainerAddPlistObject(v2, &v5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___MDPlistContainerAddPlistObject_block_invoke_2(uint64_t a1, char *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *MEMORY[0x1E69E9840];
  _MDPlistContainerAddCString(*(a1 + 32), a2, a3, 0, a5, a6, a7, a8);
  v10 = *(a1 + 32);
  v13 = *a4;
  v14 = *(a4 + 2);
  result = _MDPlistContainerAddPlistObject(v10, &v13);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

@end