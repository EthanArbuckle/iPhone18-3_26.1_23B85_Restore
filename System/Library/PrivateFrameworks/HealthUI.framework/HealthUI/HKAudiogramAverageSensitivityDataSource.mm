@interface HKAudiogramAverageSensitivityDataSource
- (HKAudiogramAverageSensitivityDataSource)init;
- (HKAudiogramAverageSensitivityDataSource)initWithAudiogramSample:(id)sample isLeftEar:(BOOL)ear;
- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)x zoom:(id)zoom resolution:(int64_t)resolution;
- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)path context:(id)context;
@end

@implementation HKAudiogramAverageSensitivityDataSource

- (HKAudiogramAverageSensitivityDataSource)initWithAudiogramSample:(id)sample isLeftEar:(BOOL)ear
{
  v7 = objc_allocWithZone(HKGraphSeriesDataBlock);
  sampleCopy = sample;
  v9 = [v7 init];
  sub_1C3CC1AD0(sampleCopy, ear);
  sub_1C3C77FEC(0, &qword_1EC085850);
  v10 = sub_1C3D202A4();

  [v9 setChartPoints_];

  *(&self->super.super.isa + OBJC_IVAR___HKAudiogramAverageSensitivityDataSource_dataBlock) = v9;
  v13.receiver = self;
  v13.super_class = type metadata accessor for AudiogramAverageSensitivityDataSource();
  v11 = [(HKGraphSeriesDataSource *)&v13 init];

  return v11;
}

- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)x zoom:(id)zoom resolution:(int64_t)resolution
{
  swift_unknownObjectRetain();
  sub_1C3D20774();
  swift_unknownObjectRelease();
  result = __swift_destroy_boxed_opaque_existential_0(&v8);
  *&retstr->index = xmmword_1C3D62480;
  retstr->resolution = 0;
  return result;
}

- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)path context:(id)context
{
  index = path->index;
  if (context)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C3D20774();
    swift_unknownObjectRelease();
    if (index)
    {
LABEL_3:
      emptyDataBlock = [objc_opt_self() emptyDataBlock];

      sub_1C396C69C(v10);
      goto LABEL_6;
    }
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
    if (index)
    {
      goto LABEL_3;
    }
  }

  sub_1C396C69C(v10);
  emptyDataBlock = *(&self->super.super.isa + OBJC_IVAR___HKAudiogramAverageSensitivityDataSource_dataBlock);

LABEL_6:

  return emptyDataBlock;
}

- (HKAudiogramAverageSensitivityDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end