@interface PhotoAssetItemProviderWriting
+ (NSArray)writableTypeIdentifiersForItemProvider;
- (_TtC23ImagePlaygroundInternal29PhotoAssetItemProviderWriting)init;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
@end

@implementation PhotoAssetItemProviderWriting

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  if (qword_1EC6D8D60 != -1)
  {
    swift_once();
  }

  v2 = sub_1D28783C8();

  return v2;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_1D28780A8();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  v10 = sub_1D2639EF8(v6, v8, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);

  return v10;
}

- (_TtC23ImagePlaygroundInternal29PhotoAssetItemProviderWriting)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end