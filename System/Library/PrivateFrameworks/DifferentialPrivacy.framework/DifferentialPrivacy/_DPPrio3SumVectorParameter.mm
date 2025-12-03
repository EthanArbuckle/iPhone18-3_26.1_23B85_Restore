@interface _DPPrio3SumVectorParameter
- (_DPPrio3SumVectorParameter)init;
- (_DPPrio3SumVectorParameter)initWithBitWidth:(int64_t)width numOfAggregators:(int64_t)aggregators numOfProofs:(int64_t)proofs vdafType:(unsigned int)type;
@end

@implementation _DPPrio3SumVectorParameter

- (_DPPrio3SumVectorParameter)initWithBitWidth:(int64_t)width numOfAggregators:(int64_t)aggregators numOfProofs:(int64_t)proofs vdafType:(unsigned int)type
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____DPPrio3SumVectorParameter_bitWidth) = width;
  *(&self->super.isa + OBJC_IVAR____DPPrio3SumVectorParameter_numOfAggregators) = aggregators;
  *(&self->super.isa + OBJC_IVAR____DPPrio3SumVectorParameter_numberOfProofs) = proofs;
  *(&self->super.isa + OBJC_IVAR____DPPrio3SumVectorParameter_vdafType) = type;
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