@interface DUTopicResult
- (NSArray)topicNames;
- (NSString)topicIdentifier;
- (_TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier)topicSet;
- (void)encodeWithCoder:(id)a3;
- (void)setTopicIdentifier:(id)a3;
- (void)setTopicNames:(id)a3;
- (void)setTopicSet:(id)a3;
@end

@implementation DUTopicResult

- (_TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier)topicSet
{
  v2 = sub_232C129FC();

  return v2;
}

- (void)setTopicSet:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232C12A9C(v4);
}

- (NSString)topicIdentifier
{
  sub_232C12BA8();
  v2 = sub_232CE9D20();

  return v2;
}

- (void)setTopicIdentifier:(id)a3
{
  v4 = sub_232CE9D50();
  v6 = v5;
  v7 = self;
  sub_232C12C68(v4, v6);
}

- (NSArray)topicNames
{
  sub_232C12EB0();
  v2 = sub_232CE9FD0();

  return v2;
}

- (void)setTopicNames:(id)a3
{
  v4 = sub_232CE9FE0();
  v5 = self;
  sub_232C12F50(v4);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232C1343C(v4);
}

@end