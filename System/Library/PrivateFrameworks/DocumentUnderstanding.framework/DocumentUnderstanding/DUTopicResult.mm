@interface DUTopicResult
- (NSArray)topicNames;
- (NSString)topicIdentifier;
- (_TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier)topicSet;
- (void)encodeWithCoder:(id)coder;
- (void)setTopicIdentifier:(id)identifier;
- (void)setTopicNames:(id)names;
- (void)setTopicSet:(id)set;
@end

@implementation DUTopicResult

- (_TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier)topicSet
{
  v2 = sub_232C129FC();

  return v2;
}

- (void)setTopicSet:(id)set
{
  setCopy = set;
  selfCopy = self;
  sub_232C12A9C(setCopy);
}

- (NSString)topicIdentifier
{
  sub_232C12BA8();
  v2 = sub_232CE9D20();

  return v2;
}

- (void)setTopicIdentifier:(id)identifier
{
  v4 = sub_232CE9D50();
  v6 = v5;
  selfCopy = self;
  sub_232C12C68(v4, v6);
}

- (NSArray)topicNames
{
  sub_232C12EB0();
  v2 = sub_232CE9FD0();

  return v2;
}

- (void)setTopicNames:(id)names
{
  v4 = sub_232CE9FE0();
  selfCopy = self;
  sub_232C12F50(v4);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_232C1343C(coderCopy);
}

@end