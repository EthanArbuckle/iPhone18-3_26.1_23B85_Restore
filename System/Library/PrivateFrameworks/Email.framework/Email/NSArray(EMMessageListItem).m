@interface NSArray(EMMessageListItem)
- (uint64_t)em_messageListItemTotalCount;
@end

@implementation NSArray(EMMessageListItem)

- (uint64_t)em_messageListItemTotalCount
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a1;
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (([v8 conformsToProtocol:{&unk_1F4620048, v12}] & 1) == 0)
        {
          v9 = [MEMORY[0x1E696AAA8] currentHandler];
          [v9 handleFailureInMethod:a2 object:v3 file:@"EMMessageListItem.m" lineNumber:742 description:@"Objects in the array must conform to protocol EMMessageListItem"];
        }

        v4 += [v8 count];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

@end