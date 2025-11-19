@interface _DPPrio3SumVectorParameter
- (_DPPrio3SumVectorParameter)init;
- (_DPPrio3SumVectorParameter)initWithBitWidth:(int64_t)a3 numOfAggregators:(int64_t)a4 numOfProofs:(int64_t)a5 vdafType:(unsigned int)a6;
@end

@implementation _DPPrio3SumVectorParameter

- (_DPPrio3SumVectorParameter)initWithBitWidth:(int64_t)a3 numOfAggregators:(int64_t)a4 numOfProofs:(int64_t)a5 vdafType:(unsigned int)a6
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____DPPrio3SumVectorParameter_bitWidth) = a3;
  *(&self->super.isa + OBJC_IVAR____DPPrio3SumVectorParameter_numOfAggregators) = a4;
  *(&self->super.isa + OBJC_IVAR____DPPrio3SumVectorParameter_numberOfProofs) = a5;
  *(&self->super.isa + OBJC_IVAR____DPPrio3SumVectorParameter_vdafType) = a6;
  v13.receiver = self;
  v13.super_class = ObjectType;
  return [(_DPPrio3SumVectorParameter *)&v13 init];
}

- (_DPPrio3SumVectorParameter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end