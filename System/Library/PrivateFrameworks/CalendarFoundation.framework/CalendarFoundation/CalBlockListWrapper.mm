@interface CalBlockListWrapper
+ (CalBlockList)sharedBlockList;
- (BOOL)isEmpty;
@end

@implementation CalBlockListWrapper

+ (CalBlockList)sharedBlockList
{
  if (qword_1EBBDBED0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EBBDBED8;

  return v3;
}

- (BOOL)isEmpty
{
  v2 = self;
  v3 = CalBlockListWrapper.isEmpty.getter();

  return v3 & 1;
}

@end