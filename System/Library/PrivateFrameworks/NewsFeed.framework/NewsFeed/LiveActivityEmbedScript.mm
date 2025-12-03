@interface LiveActivityEmbedScript
- (NSString)executableScript;
- (NSString)identifier;
- (WKUserScript)userScript;
- (_TtC8NewsFeed23LiveActivityEmbedScript)init;
@end

@implementation LiveActivityEmbedScript

- (NSString)identifier
{

  v2 = sub_1D726203C();

  return v2;
}

- (WKUserScript)userScript
{
  selfCopy = self;
  v3 = sub_1D6BE0B30();

  return v3;
}

- (NSString)executableScript
{
  selfCopy = self;
  sub_1D6BE0CD8();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1D726203C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_TtC8NewsFeed23LiveActivityEmbedScript)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end