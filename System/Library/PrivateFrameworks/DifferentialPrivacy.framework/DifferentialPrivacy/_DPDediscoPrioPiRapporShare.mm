@interface _DPDediscoPrioPiRapporShare
- (_DPDediscoPrioPiRapporShare)init;
- (_DPDediscoPrioPiRapporShare)initWithPrioShare:(id)share numberOfEncodedIndices:(unint64_t)indices piRapporOtherPhi:(id)phi;
- (_DPDediscoPrioPiRapporShare)initWithSerializedData:(id)data error:(id *)error;
- (id)serializeAndReturnError:(id *)error;
@end

@implementation _DPDediscoPrioPiRapporShare

- (_DPDediscoPrioPiRapporShare)initWithPrioShare:(id)share numberOfEncodedIndices:(unint64_t)indices piRapporOtherPhi:(id)phi
{
  shareCopy = share;
  phiCopy = phi;
  v10 = sub_22628E7CC();
  v12 = v11;

  v13 = sub_22628E7CC();
  v15 = v14;

  v16 = (self + OBJC_IVAR____DPDediscoPrioPiRapporShare_prioShare);
  *v16 = v10;
  v16[1] = v12;
  *(&self->super.isa + OBJC_IVAR____DPDediscoPrioPiRapporShare_numberOfEncodedIndices) = indices;
  v17 = (self + OBJC_IVAR____DPDediscoPrioPiRapporShare_piRapporOtherPhi);
  *v17 = v13;
  v17[1] = v15;
  v19.receiver = self;
  v19.super_class = type metadata accessor for _DPDediscoPrioPiRapporShare();
  return [(_DPDediscoPrioPiRapporShare *)&v19 init];
}

- (_DPDediscoPrioPiRapporShare)initWithSerializedData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = sub_22628E7CC();
  v7 = v6;

  return _DPDediscoPrioPiRapporShare.init(serializedData:)(v5, v7);
}

- (id)serializeAndReturnError:(id *)error
{
  v4 = *(*(type metadata accessor for DediscoPrioPiRapporShare() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  selfCopy = self;
  sub_22627CD9C();
  selfCopy2 = self;
  sub_22628E8CC();
  v8 = sub_22628E88C();
  v10 = v9;

  sub_22627CE48(v6);
  v11 = sub_22628E7BC();
  sub_22627CDF4(v8, v10);

  return v11;
}

- (_DPDediscoPrioPiRapporShare)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end