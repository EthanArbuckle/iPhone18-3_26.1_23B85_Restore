@interface GDKnosisResultContextItem
- (GDEntityIdentifier)entityIdentifier;
- (id)answer;
- (id)contextForAnswerParents;
@end

@implementation GDKnosisResultContextItem

- (GDEntityIdentifier)entityIdentifier
{
  v2 = sub_1ABC6C9E4();

  return v2;
}

- (id)answer
{
  v2 = self;
  v3 = sub_1ABC6C9F0();

  return v3;
}

- (id)contextForAnswerParents
{
  v2 = self;
  v3 = sub_1ABC6CABC(v2);

  return v3;
}

@end