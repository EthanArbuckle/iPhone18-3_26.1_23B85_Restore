@interface OpenWebArticleTestCase
- (NSString)testName;
- (_TtC7NewsUI222OpenWebArticleTestCase)init;
- (void)runTestWithContext:(id)a3 completion:(id)a4;
@end

@implementation OpenWebArticleTestCase

- (_TtC7NewsUI222OpenWebArticleTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR____TtC7NewsUI222OpenWebArticleTestCase_testName;
  strcpy(self + OBJC_IVAR____TtC7NewsUI222OpenWebArticleTestCase_testName, "OpenWebArticle");
  v4[15] = -18;
  *(self + OBJC_IVAR____TtC7NewsUI222OpenWebArticleTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC7NewsUI222OpenWebArticleTestCase_aggregate) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(OpenWebArticleTestCase *)&v6 init];
}

- (NSString)testName
{

  v2 = sub_219BF53D4();

  return v2;
}

- (void)runTestWithContext:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a3;
  v8 = [v7 application];
  v9 = swift_allocObject();
  *(v9 + 16) = sub_218967168;
  *(v9 + 24) = v6;
  v11[4] = sub_2189A4488;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_218793E0C;
  v11[3] = &block_descriptor_36;
  v10 = _Block_copy(v11);

  [v8 ts:v10 installCACommitCompletionBlock:?];

  _Block_release(v10);
}

@end