@interface SummarySharingPreviewSummariesCell
- (_TtC18HealthExperienceUI34SummarySharingPreviewSummariesCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI34SummarySharingPreviewSummariesCell)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation SummarySharingPreviewSummariesCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_1BA4A40C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A40B8();
  selfCopy = self;
  sub_1BA1B2008();

  (*(v5 + 8))(v7, v4);
}

- (_TtC18HealthExperienceUI34SummarySharingPreviewSummariesCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SummarySharingPreviewSummariesCell();
  return [(ButtonCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI34SummarySharingPreviewSummariesCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SummarySharingPreviewSummariesCell();
  coderCopy = coder;
  v5 = [(ButtonCollectionViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end