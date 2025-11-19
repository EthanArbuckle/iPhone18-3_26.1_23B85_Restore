@interface DUUserInterfaceUnderstandingResult
- (NSString)topicIdentifier;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setTopicIdentifier:(id)a3;
@end

@implementation DUUserInterfaceUnderstandingResult

- (NSString)topicIdentifier
{
  sub_232C177F8();
  v2 = sub_232CE9D20();

  return v2;
}

- (void)setTopicIdentifier:(id)a3
{
  v4 = sub_232CE9D50();
  v6 = v5;
  v7 = self;
  sub_232C178B8(v4, v6);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_232C17BA0(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232C17D40(v4);
}

@end