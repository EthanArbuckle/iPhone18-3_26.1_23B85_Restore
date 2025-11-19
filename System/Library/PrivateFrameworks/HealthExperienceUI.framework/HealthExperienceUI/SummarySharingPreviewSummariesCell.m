@interface SummarySharingPreviewSummariesCell
- (_TtC18HealthExperienceUI34SummarySharingPreviewSummariesCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI34SummarySharingPreviewSummariesCell)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation SummarySharingPreviewSummariesCell

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_1BA4A40C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A40B8();
  v8 = self;
  sub_1BA1B2008();

  (*(v5 + 8))(v7, v4);
}

- (_TtC18HealthExperienceUI34SummarySharingPreviewSummariesCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SummarySharingPreviewSummariesCell();
  return [(ButtonCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI34SummarySharingPreviewSummariesCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SummarySharingPreviewSummariesCell();
  v4 = a3;
  v5 = [(ButtonCollectionViewCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end