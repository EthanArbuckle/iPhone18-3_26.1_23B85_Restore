@interface _DPPINEParameter
- (_DPPINEParameter)init;
- (_DPPINEParameter)initWithFractionalBitCount:(int64_t)count l2NormBound:(float)bound numOfProofs:(int64_t)proofs wraparoundCheckCount:(int64_t)checkCount pineType:(unsigned int)type;
@end

@implementation _DPPINEParameter

- (_DPPINEParameter)initWithFractionalBitCount:(int64_t)count l2NormBound:(float)bound numOfProofs:(int64_t)proofs wraparoundCheckCount:(int64_t)checkCount pineType:(unsigned int)type
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____DPPINEParameter_fractionalBitCount) = count;
  *(&self->super.isa + OBJC_IVAR____DPPINEParameter_l2NormBound) = bound;
  *(&self->super.isa + OBJC_IVAR____DPPINEParameter_numOfProofs) = proofs;
  *(&self->super.isa + OBJC_IVAR____DPPINEParameter_wraparoundCheckCount) = checkCount;
  *(&self->super.isa + OBJC_IVAR____DPPINEParameter_pineType) = type;
  v15.receiver = self;
  v15.super_class = ObjectType;
  return [(_DPPINEParameter *)&v15 init];
}

- (_DPPINEParameter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end