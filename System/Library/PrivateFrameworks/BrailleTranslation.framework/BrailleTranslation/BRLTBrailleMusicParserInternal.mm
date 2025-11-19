@interface BRLTBrailleMusicParserInternal
+ (BRLTBrailleMusicParserInternal)shared;
- (BRLTBrailleMusicParserInternal)init;
- (id)translate:(id)a3;
@end

@implementation BRLTBrailleMusicParserInternal

+ (BRLTBrailleMusicParserInternal)shared
{
  if (qword_27EC748D0 != -1)
  {
    swift_once();
  }

  v3 = qword_27EC748D8;

  return v3;
}

- (id)translate:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_241E35774();
  v8 = v7;

  sub_241E298D4();
  sub_241E2CBD8(v6, v8);

  v9 = sub_241E357E4();

  return v9;
}

- (BRLTBrailleMusicParserInternal)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BRLTBrailleMusicParser();
  return [(BRLTBrailleMusicParserInternal *)&v3 init];
}

@end