@interface NSMapTable(MPCMediaRemoteController)
- (id)allCommandInfos;
@end

@implementation NSMapTable(MPCMediaRemoteController)

- (id)allCommandInfos
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMapTable count](a1, "count")}];
  memset(&enumerator, 0, sizeof(enumerator));
  NSEnumerateMapTable(&enumerator, a1);
  value = 0;
    ;
  }

  NSEndMapTableEnumeration(&enumerator);

  return v2;
}

@end