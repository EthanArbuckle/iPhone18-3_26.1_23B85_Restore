@interface _DPDediscoPrioPiRapporShare
- (_DPDediscoPrioPiRapporShare)init;
- (_DPDediscoPrioPiRapporShare)initWithPrioShare:(id)a3 numberOfEncodedIndices:(unint64_t)a4 piRapporOtherPhi:(id)a5;
- (_DPDediscoPrioPiRapporShare)initWithSerializedData:(id)a3 error:(id *)a4;
- (id)serializeAndReturnError:(id *)a3;
@end

@implementation _DPDediscoPrioPiRapporShare

- (_DPDediscoPrioPiRapporShare)initWithPrioShare:(id)a3 numberOfEncodedIndices:(unint64_t)a4 piRapporOtherPhi:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_22628E7CC();
  v12 = v11;

  v13 = sub_22628E7CC();
  v15 = v14;

  v16 = (self + OBJC_IVAR____DPDediscoPrioPiRapporShare_prioShare);
  *v16 = v10;
  v16[1] = v12;
  *(&self->super.isa + OBJC_IVAR____DPDediscoPrioPiRapporShare_numberOfEncodedIndices) = a4;
  v17 = (self + OBJC_IVAR____DPDediscoPrioPiRapporShare_piRapporOtherPhi);
  *v17 = v13;
  v17[1] = v15;
  v19.receiver = self;
  v19.super_class = type metadata accessor for _DPDediscoPrioPiRapporShare();
  return [(_DPDediscoPrioPiRapporShare *)&v19 init];
}

- (_DPDediscoPrioPiRapporShare)initWithSerializedData:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = sub_22628E7CC();
  v7 = v6;

  return _DPDediscoPrioPiRapporShare.init(serializedData:)(v5, v7);
}

- (id)serializeAndReturnError:(id *)a3
{
  v4 = *(*(type metadata accessor for DediscoPrioPiRapporShare() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = self;
  sub_22627CD9C();
  v7 = self;
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