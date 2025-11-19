@interface BlastDoorMorphologyCustomPronoun
- (BlastDoorMorphologyCustomPronoun)init;
- (NSString)description;
@end

@implementation BlastDoorMorphologyCustomPronoun

- (NSString)description
{
  v2 = *&self->morphologyCustomPronoun[OBJC_IVAR___BlastDoorMorphologyCustomPronoun_morphologyCustomPronoun + 8];
  v3 = *&self->morphologyCustomPronoun[OBJC_IVAR___BlastDoorMorphologyCustomPronoun_morphologyCustomPronoun + 40];
  v10 = *&self->morphologyCustomPronoun[OBJC_IVAR___BlastDoorMorphologyCustomPronoun_morphologyCustomPronoun + 24];
  v11 = v3;
  v4 = *&self->morphologyCustomPronoun[OBJC_IVAR___BlastDoorMorphologyCustomPronoun_morphologyCustomPronoun + 40];
  v12 = *&self->morphologyCustomPronoun[OBJC_IVAR___BlastDoorMorphologyCustomPronoun_morphologyCustomPronoun + 56];
  v5 = *&self->morphologyCustomPronoun[OBJC_IVAR___BlastDoorMorphologyCustomPronoun_morphologyCustomPronoun + 8];
  v9[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorMorphologyCustomPronoun_morphologyCustomPronoun);
  v9[1] = v5;
  v8[7] = v10;
  v8[8] = v4;
  v8[9] = *&self->morphologyCustomPronoun[OBJC_IVAR___BlastDoorMorphologyCustomPronoun_morphologyCustomPronoun + 56];
  v8[5] = v9[0];
  v8[6] = v2;
  sub_2142F95FC(v9, v8);
  sub_2146D9608();
  v6 = sub_2146D9588();

  return v6;
}

- (BlastDoorMorphologyCustomPronoun)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end