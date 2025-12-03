@interface _DPDediscoAlgorithmParameters
- (_DPDediscoAlgorithmParameters)init;
- (_DPDediscoAlgorithmParameters)initWithDimension:(int64_t)dimension epsilon:(double)epsilon;
- (_DPDediscoAlgorithmParameters)initWithDimension:(int64_t)dimension epsilon:(double)epsilon otherParams:(id)params;
@end

@implementation _DPDediscoAlgorithmParameters

- (_DPDediscoAlgorithmParameters)initWithDimension:(int64_t)dimension epsilon:(double)epsilon otherParams:(id)params
{
  paramsCopy = params;
  v9 = sub_100050300();
  v11 = v10;

  *(&self->super.isa + OBJC_IVAR____DPDediscoAlgorithmParameters_dimension) = dimension;
  *(&self->super.isa + OBJC_IVAR____DPDediscoAlgorithmParameters_epsilon) = epsilon;
  v12 = (self + OBJC_IVAR____DPDediscoAlgorithmParameters_otherParams);
  *v12 = v9;
  v12[1] = v11;
  v14.receiver = self;
  v14.super_class = type metadata accessor for _DPDediscoAlgorithmParameters();
  return [(_DPDediscoAlgorithmParameters *)&v14 init];
}

- (_DPDediscoAlgorithmParameters)initWithDimension:(int64_t)dimension epsilon:(double)epsilon
{
  *(&self->super.isa + OBJC_IVAR____DPDediscoAlgorithmParameters_dimension) = dimension;
  *(&self->super.isa + OBJC_IVAR____DPDediscoAlgorithmParameters_epsilon) = epsilon;
  *(&self->super.isa + OBJC_IVAR____DPDediscoAlgorithmParameters_otherParams) = xmmword_100056E50;
  v5.receiver = self;
  v5.super_class = type metadata accessor for _DPDediscoAlgorithmParameters();
  return [(_DPDediscoAlgorithmParameters *)&v5 init];
}

- (_DPDediscoAlgorithmParameters)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end