@interface SearchIndexPersistence.Message
- (void)didChangeValueForKey:(id)key;
@end

@implementation SearchIndexPersistence.Message

- (void)didChangeValueForKey:(id)key
{
  v4 = sub_1004A5764();
  v6 = v5;
  selfCopy = self;
  sub_10033B738(v4, v6);
}

@end