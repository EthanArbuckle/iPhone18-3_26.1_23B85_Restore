@interface PuzzleRadarScript
- (NSString)executableScript;
- (NSString)identifier;
- (WKUserScript)userScript;
- (_TtC7NewsUI217PuzzleRadarScript)init;
@end

@implementation PuzzleRadarScript

- (_TtC7NewsUI217PuzzleRadarScript)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PuzzleRadarScript *)&v3 init];
}

- (NSString)identifier
{
  v2 = sub_219BF53D4();

  return v2;
}

- (WKUserScript)userScript
{
  v2 = sub_2191605C0();

  return v2;
}

- (NSString)executableScript
{
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD00000000000001DLL, 0x8000000219D0DB80);
  MEMORY[0x21CECC330](0xD000000000000012, 0x8000000219D0DBA0);
  MEMORY[0x21CECC330](0xD000000000000025, 0x8000000219D0DBC0);
  v2 = sub_219BF53D4();

  return v2;
}

@end