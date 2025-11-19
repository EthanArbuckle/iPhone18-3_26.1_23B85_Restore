@interface _DPDediscoAlgorithmParameters
- (_DPDediscoAlgorithmParameters)init;
- (_DPDediscoAlgorithmParameters)initWithDimension:(int64_t)a3 epsilon:(double)a4;
- (_DPDediscoAlgorithmParameters)initWithDimension:(int64_t)a3 epsilon:(double)a4 otherParams:(id)a5;
@end

@implementation _DPDediscoAlgorithmParameters

- (_DPDediscoAlgorithmParameters)initWithDimension:(int64_t)a3 epsilon:(double)a4 otherParams:(id)a5
{
  v8 = a5;
  v9 = sub_100050300();
  v11 = v10;

  *(&self->super.isa + OBJC_IVAR____DPDediscoAlgorithmParameters_dimension) = a3;
  *(&self->super.isa + OBJC_IVAR____DPDediscoAlgorithmParameters_epsilon) = a4;
  v12 = (self + OBJC_IVAR____DPDediscoAlgorithmParameters_otherParams);
  *v12 = v9;
  v12[1] = v11;
  v14.receiver = self;
  v14.super_class = type metadata accessor for _DPDediscoAlgorithmParameters();
  return [(_DPDediscoAlgorithmParameters *)&v14 init];
}

- (_DPDediscoAlgorithmParameters)initWithDimension:(int64_t)a3 epsilon:(double)a4
{
  *(&self->super.isa + OBJC_IVAR____DPDediscoAlgorithmParameters_dimension) = a3;
  *(&self->super.isa + OBJC_IVAR____DPDediscoAlgorithmParameters_epsilon) = a4;
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