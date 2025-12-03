@interface NSMapTable(MPCMediaRemoteController)
- (id)allCommandInfos;
@end

@implementation NSMapTable(MPCMediaRemoteController)

- (id)allCommandInfos
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMapTable count](self, "count")}];
  memset(&enumerator, 0, sizeof(enumerator));
  NSEnumerateMapTable(&enumerator, self);
  value = 0;
    ;
  }

  NSEndMapTableEnumeration(&enumerator);

  return v2;
}

@end