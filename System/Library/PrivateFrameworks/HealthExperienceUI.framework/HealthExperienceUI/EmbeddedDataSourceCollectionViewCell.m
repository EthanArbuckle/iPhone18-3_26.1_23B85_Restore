@interface EmbeddedDataSourceCollectionViewCell
- (_TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)prepareForReuse;
- (void)snapshotDidChangeWithDataSourceID:(id)a3 snapshot:(id)a4 animated:(BOOL)a5;
@end

@implementation EmbeddedDataSourceCollectionViewCell

- (_TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_eventHandlerSink) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_collectionViewController) = 0;
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item;
  v9 = type metadata accessor for EmbeddedDataSourceCollectionViewCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(EmbeddedDataSourceCollectionViewCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_eventHandlerSink) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_collectionViewController) = 0;
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for EmbeddedDataSourceCollectionViewCell();
  v2 = v7.receiver;
  [(EmbeddedDataSourceCollectionViewCell *)&v7 prepareForReuse];
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v3 = OBJC_IVAR____TtC18HealthExperienceUI36EmbeddedDataSourceCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v2 + v3, v4);
  swift_beginAccess();
  sub_1B9F63E74(v5, v2 + v3);
  swift_endAccess();
  sub_1BA449794(v4);

  sub_1B9F44760(v4, sub_1B9F7B6F8);
  sub_1B9F44760(v5, sub_1B9F7B6F8);
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA44A174(v4);
  v7 = v6;

  return v7;
}

- (void)snapshotDidChangeWithDataSourceID:(id)a3 snapshot:(id)a4 animated:(BOOL)a5
{
  sub_1B9F12538();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A45C8();
  [(EmbeddedDataSourceCollectionViewCell *)self invalidateIntrinsicContentSize];
  (*(v8 + 8))(v10, v7);
}

@end