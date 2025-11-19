@interface _DPDediscoAlgorithmParametersOtherParams
- (_DPDediscoAlgorithmParametersOtherParams)init;
- (_DPDediscoAlgorithmParametersOtherParams)initWithCohortSize:(int64_t)a3 sigma:(double)a4 piRapporPrime:(unsigned int)a5 piRapporAlpha0:(double)a6 piRapporAlpha1:(double)a7;
- (id)serializeAndReturnError:(id *)a3;
@end

@implementation _DPDediscoAlgorithmParametersOtherParams

- (_DPDediscoAlgorithmParametersOtherParams)initWithCohortSize:(int64_t)a3 sigma:(double)a4 piRapporPrime:(unsigned int)a5 piRapporAlpha0:(double)a6 piRapporAlpha1:(double)a7
{
  *(&self->super.isa + OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_cohortSize) = a3;
  *(&self->super.isa + OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_sigma) = a4;
  *(&self->super.isa + OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_piRapporPrime) = a5;
  *(&self->super.isa + OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_piRapporAlpha0) = a6;
  *(&self->super.isa + OBJC_IVAR____DPDediscoAlgorithmParametersOtherParams_piRapporAlpha1) = a7;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _DPDediscoAlgorithmParametersOtherParams();
  return [(_DPDediscoAlgorithmParametersOtherParams *)&v8 init];
}

- (id)serializeAndReturnError:(id *)a3
{
  v4 = type metadata accessor for DediscoAlgorithmParametersOtherParams();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = self;
  sub_1000385AC();
  v8 = self;
  sub_1000504E0();
  v9 = sub_1000504B0();
  v11 = v10;

  sub_100038604(v7);
  v12.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v9, v11);

  return v12.super.isa;
}

- (_DPDediscoAlgorithmParametersOtherParams)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end