@interface CRAssetFilePresenter
- (NSString)description;
- (NSURL)presentedItemURL;
- (_TtC9Coherence20CRAssetFilePresenter)init;
- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)a3;
- (void)accommodatePresentedSubitemDeletionAtURL:(id)a3 completionHandler:(id)a4;
@end

@implementation CRAssetFilePresenter

- (NSURL)presentedItemURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  sub_1ADDCEE40(self + OBJC_IVAR____TtC9Coherence20CRAssetFilePresenter_presentedItemURL, &v13 - v5, &qword_1EB5B9DC0, &qword_1AE240B90);
  v7 = sub_1AE23BDDC();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1AE23BD1C();
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  return v10;
}

- (void)accommodatePresentedSubitemDeletionAtURL:(id)a3 completionHandler:(id)a4
{
  v6 = sub_1AE23BDDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_1AE23BD8C();
  _Block_copy(v11);
  v12 = self;
  sub_1AE1B3368(v10, v12, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1AE1B365C(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (NSString)description
{
  v2 = self;
  sub_1AE1A7508();

  v3 = sub_1AE23CCDC();

  return v3;
}

- (_TtC9Coherence20CRAssetFilePresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end