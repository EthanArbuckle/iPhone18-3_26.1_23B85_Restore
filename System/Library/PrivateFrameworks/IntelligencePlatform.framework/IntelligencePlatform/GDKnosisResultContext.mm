@interface GDKnosisResultContext
- (BOOL)enumerateAnswersForEntityIdentifier:(id)identifier block:(id)block error:(id *)error;
- (BOOL)enumerateAnswersUsingBlock:(id)block error:(id *)error;
- (_TtC20IntelligencePlatform26_GDSwiftGraphObjectContext)context;
- (id)answers;
@end

@implementation GDKnosisResultContext

- (_TtC20IntelligencePlatform26_GDSwiftGraphObjectContext)context
{
  v2 = GDKnosisResultContext.context.getter();

  return v2;
}

- (id)answers
{
  selfCopy = self;
  sub_1ABC6CE60();

  sub_1ABAFF390(0, &qword_1EB4CE6C0, off_1E7960290);
  v3 = sub_1ABF240C4();

  return v3;
}

- (BOOL)enumerateAnswersUsingBlock:(id)block error:(id *)error
{
  v7 = _Block_copy(block);
  selfCopy = self;
  sub_1ABC6CF90(sub_1ABC6D520);

  _Block_release(v7);
  return 1;
}

- (BOOL)enumerateAnswersForEntityIdentifier:(id)identifier block:(id)block error:(id *)error
{
  v10 = _Block_copy(block);
  identifierCopy = identifier;
  selfCopy = self;
  sub_1ABC6D170(identifierCopy, sub_1ABC6D3EC);

  _Block_release(v10);
  return 1;
}

@end