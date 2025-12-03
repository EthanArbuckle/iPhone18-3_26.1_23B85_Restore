@interface DUUserInterfaceUnderstandingResult
- (NSString)topicIdentifier;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setTopicIdentifier:(id)identifier;
@end

@implementation DUUserInterfaceUnderstandingResult

- (NSString)topicIdentifier
{
  sub_232C177F8();
  v2 = sub_232CE9D20();

  return v2;
}

- (void)setTopicIdentifier:(id)identifier
{
  v4 = sub_232CE9D50();
  v6 = v5;
  selfCopy = self;
  sub_232C178B8(v4, v6);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_232C17BA0(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_232C17D40(coderCopy);
}

@end