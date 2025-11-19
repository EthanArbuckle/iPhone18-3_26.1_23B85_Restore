@interface HKAudiogramAverageSensitivityDataSource
- (HKAudiogramAverageSensitivityDataSource)init;
- (HKAudiogramAverageSensitivityDataSource)initWithAudiogramSample:(id)a3 isLeftEar:(BOOL)a4;
- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)a3 zoom:(id)a4 resolution:(int64_t)a5;
- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)a3 context:(id)a4;
@end

@implementation HKAudiogramAverageSensitivityDataSource

- (HKAudiogramAverageSensitivityDataSource)initWithAudiogramSample:(id)a3 isLeftEar:(BOOL)a4
{
  v7 = objc_allocWithZone(HKGraphSeriesDataBlock);
  v8 = a3;
  v9 = [v7 init];
  sub_1C3CC1AD0(v8, a4);
  sub_1C3C77FEC(0, &qword_1EC085850);
  v10 = sub_1C3D202A4();

  [v9 setChartPoints_];

  *(&self->super.super.isa + OBJC_IVAR___HKAudiogramAverageSensitivityDataSource_dataBlock) = v9;
  v13.receiver = self;
  v13.super_class = type metadata accessor for AudiogramAverageSensitivityDataSource();
  v11 = [(HKGraphSeriesDataSource *)&v13 init];

  return v11;
}

- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)a3 zoom:(id)a4 resolution:(int64_t)a5
{
  swift_unknownObjectRetain();
  sub_1C3D20774();
  swift_unknownObjectRelease();
  result = __swift_destroy_boxed_opaque_existential_0(&v8);
  *&retstr->index = xmmword_1C3D62480;
  retstr->resolution = 0;
  return result;
}

- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)a3 context:(id)a4
{
  index = a3->index;
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_1C3D20774();
    swift_unknownObjectRelease();
    if (index)
    {
LABEL_3:
      v7 = [objc_opt_self() emptyDataBlock];

      sub_1C396C69C(v10);
      goto LABEL_6;
    }
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = self;
    if (index)
    {
      goto LABEL_3;
    }
  }

  sub_1C396C69C(v10);
  v7 = *(&self->super.super.isa + OBJC_IVAR___HKAudiogramAverageSensitivityDataSource_dataBlock);

LABEL_6:

  return v7;
}

- (HKAudiogramAverageSensitivityDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end