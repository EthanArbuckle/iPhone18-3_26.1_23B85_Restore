@interface BlastDoorMorphologyCustomPronounPair
- (BlastDoorMorphologyCustomPronoun)pronoun;
- (BlastDoorMorphologyCustomPronounPair)init;
- (NSString)description;
@end

@implementation BlastDoorMorphologyCustomPronounPair

- (NSString)description
{
  v2 = *&self->morphologyCustomPronounPair[OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 40];
  v3 = *&self->morphologyCustomPronounPair[OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 8];
  v17 = *&self->morphologyCustomPronounPair[OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 24];
  v18 = v2;
  v4 = *&self->morphologyCustomPronounPair[OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 40];
  v19 = *&self->morphologyCustomPronounPair[OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 56];
  v5 = *&self->morphologyCustomPronounPair[OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 8];
  v16[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair);
  v16[1] = v5;
  v11 = v3;
  v12 = v17;
  v6 = *&self->morphologyCustomPronounPair[OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 56];
  v13 = v4;
  v14 = v6;
  v20 = *&self->morphologyCustomPronounPair[OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 72];
  v15 = *&self->morphologyCustomPronounPair[OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 72];
  v10 = v16[0];
  sub_2145925C0(v16, v9);
  sub_2146D9608();
  v7 = sub_2146D9588();

  return v7;
}

- (BlastDoorMorphologyCustomPronoun)pronoun
{
  v2 = *&self->morphologyCustomPronounPair[OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 40];
  *&v14[32] = *&self->morphologyCustomPronounPair[OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 24];
  *&v14[48] = v2;
  *&v14[64] = *&self->morphologyCustomPronounPair[OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 56];
  *&v14[80] = *&self->morphologyCustomPronounPair[OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 72];
  v3 = *&self->morphologyCustomPronounPair[OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair + 8];
  *v14 = *(&self->super.isa + OBJC_IVAR___BlastDoorMorphologyCustomPronounPair_morphologyCustomPronounPair);
  *&v14[16] = v3;
  v4 = type metadata accessor for _ObjCMorphologyCustomPronounWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___BlastDoorMorphologyCustomPronoun_morphologyCustomPronoun];
  *v6 = *&v14[8];
  v7 = *&v14[40];
  v8 = *&v14[72];
  v9 = *&v14[24];
  *(v6 + 3) = *&v14[56];
  *(v6 + 4) = v8;
  *(v6 + 1) = v9;
  *(v6 + 2) = v7;
  sub_2145925C0(v14, v13);
  v12.receiver = v5;
  v12.super_class = v4;
  v10 = [(BlastDoorMorphologyCustomPronounPair *)&v12 init];

  return v10;
}

- (BlastDoorMorphologyCustomPronounPair)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end