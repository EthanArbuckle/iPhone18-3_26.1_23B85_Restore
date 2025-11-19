@interface GDKnosisResultContext
- (BOOL)enumerateAnswersForEntityIdentifier:(id)a3 block:(id)a4 error:(id *)a5;
- (BOOL)enumerateAnswersUsingBlock:(id)a3 error:(id *)a4;
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
  v2 = self;
  sub_1ABC6CE60();

  sub_1ABAFF390(0, &qword_1EB4CE6C0, off_1E7960290);
  v3 = sub_1ABF240C4();

  return v3;
}

- (BOOL)enumerateAnswersUsingBlock:(id)a3 error:(id *)a4
{
  v7 = _Block_copy(a3);
  v5 = self;
  sub_1ABC6CF90(sub_1ABC6D520);

  _Block_release(v7);
  return 1;
}

- (BOOL)enumerateAnswersForEntityIdentifier:(id)a3 block:(id)a4 error:(id *)a5
{
  v10 = _Block_copy(a4);
  v7 = a3;
  v8 = self;
  sub_1ABC6D170(v7, sub_1ABC6D3EC);

  _Block_release(v10);
  return 1;
}

@end