@interface StubAssetHandle
- (FCAssetDataProvider)dataProvider;
- (NSString)uniqueKey;
- (_TtC8NewsFeed15StubAssetHandle)init;
@end

@implementation StubAssetHandle

- (FCAssetDataProvider)dataProvider
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC8NewsFeed15StubAssetHandle_identifier);
  v2 = *(&self->super._dataProvider + OBJC_IVAR____TtC8NewsFeed15StubAssetHandle_identifier);
  type metadata accessor for StubAssetHandle.StubAssetDataProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D72AFA90;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = 1;

  return v4;
}

- (NSString)uniqueKey
{

  v2 = sub_1D726203C();

  return v2;
}

- (_TtC8NewsFeed15StubAssetHandle)init
{
  ObjectType = swift_getObjectType();
  v4 = sub_1D725895C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (self + OBJC_IVAR____TtC8NewsFeed15StubAssetHandle_identifier);
  sub_1D725894C();
  v10 = sub_1D725893C();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  *v9 = v10;
  v9[1] = v12;
  v14.receiver = self;
  v14.super_class = ObjectType;
  return [(StubAssetHandle *)&v14 init];
}

@end