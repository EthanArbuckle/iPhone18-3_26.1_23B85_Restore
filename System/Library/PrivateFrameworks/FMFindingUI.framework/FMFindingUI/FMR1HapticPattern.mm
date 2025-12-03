@interface FMR1HapticPattern
- (_TtC11FMFindingUI17FMR1HapticPattern)initWithContentsOfURL:(id)l error:(id *)error;
- (_TtC11FMFindingUI17FMR1HapticPattern)initWithDictionary:(id)dictionary error:(id *)error;
@end

@implementation FMR1HapticPattern

- (_TtC11FMFindingUI17FMR1HapticPattern)initWithDictionary:(id)dictionary error:(id *)error
{
  type metadata accessor for Key(0);
  sub_24A582FCC(&qword_27EF4F1C0, type metadata accessor for Key);
  sub_24A62EB84();
  return sub_24A578FB8();
}

- (_TtC11FMFindingUI17FMR1HapticPattern)initWithContentsOfURL:(id)l error:(id *)error
{
  v4 = sub_24A62E0F4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A62E0D4();
  return sub_24A579338(v7);
}

@end