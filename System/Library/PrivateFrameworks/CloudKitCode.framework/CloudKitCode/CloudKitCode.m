uint64_t sub_2438714D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243871508@<X0>(uint64_t *a1@<X8>)
{
  result = Ckcode_ProtectedEnvelope.encrypted.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_243871560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = a1 + *(a3 + 20);
  }

  return sub_243873AA4(v8, a2, v7);
}

uint64_t sub_243871608(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for UnknownStorage();
    v10 = a1 + *(a4 + 20);
  }

  return sub_243873554(v10, a2, a2, v9);
}

uint64_t sub_2438716BC@<X0>(uint64_t *a1@<X8>)
{
  result = Ckcode_Proto2Any.typeURL.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2438716EC@<X0>(uint64_t *a1@<X8>)
{
  result = Ckcode_Proto2Any.value.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24387171C@<X0>(uint64_t *a1@<X8>)
{
  result = Ckcode_Proto2ProtectedEnvelope.encrypted.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_243871774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2438798E0();
  v6 = type metadata accessor for UnknownStorage();
  v7 = sub_24387993C(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_243873AA4(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_243871828()
{
  sub_243879914();
  v4 = type metadata accessor for UnknownStorage();
  result = sub_24387993C(v4);
  if (*(v6 + 84) == v3)
  {

    return sub_243873554(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }

  return result;
}

uint64_t sub_2438718C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  v7 = sub_24387993C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for UnknownStorage();
    v10 = a1 + *(a3 + 20);
  }

  return sub_243873AA4(v10, a2, v9);
}

uint64_t sub_243871968()
{
  sub_243879914();
  v4 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  v5 = sub_24387993C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = v1 + *(v2 + 20);
  }

  return sub_243873554(v8, v0, v0, v7);
}

uint64_t sub_243871A08@<X0>(uint64_t *a1@<X8>)
{
  result = Ckcode_RecordTransport.localSerialization.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_243871A38@<X0>(uint64_t *a1@<X8>)
{
  result = Ckcode_RecordTransport.wireSerialization.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_243871A68@<X0>(uint64_t *a1@<X8>)
{
  result = Ckcode_RecordTransport.encryptedMasterKey.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_243871A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_243873AA4(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_243871B54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_243873554(v10, a2, a2, v9);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_243871C48()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243871C80()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243871CB8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243871CF0()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243871FA4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243871FB4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 sub_243872000(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void *sub_24387200C(uint64_t *a1)
{
  sub_24388A818(a1);
  result = sub_243880A58();
  *v1 = result;
  return result;
}

uint64_t sub_243872054(uint64_t *a1)
{
  sub_24388A818(a1);
  result = sub_243881234();
  *v1 = result & 1;
  return result;
}

uint64_t sub_2438720D0(uint64_t *a1)
{
  sub_24388A818(a1);
  result = sub_24388264C();
  *v1 = result & 1;
  return result;
}

uint64_t sub_243872128(uint64_t *a1)
{
  sub_24388A818(a1);
  result = sub_243882750();
  *v1 = result & 1;
  return result;
}

uint64_t sub_243872190()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2438721CC()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_243872204()
{
  v1 = *(v0 + 24);

  v2 = sub_24388A694();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2438722B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2438722F0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24387233C(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x245D42700);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

uint64_t sub_243872360()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243872398()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

__n128 sub_243872428(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_24387244C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_24388FED4();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2438724CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_2438915A4();
  *a2 = result & 1;
  return result;
}

uint64_t sub_243872528@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_2438915FC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_243872590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = sub_243873AA4(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2438725D8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for URL();

  return sub_243873554(a1, v5, a3, v6);
}

uint64_t sub_243872638()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243872674()
{
  v1 = *(v0 + 24);

  v2 = sub_24388A694();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

void sub_2438726A8()
{
  sub_243899BAC();
  v2 = v1;
  v4 = v3;
  v5 = ~(-1 << *(v0 + 32));
  for (i = v6 & v5; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v8 = (*(v0 + 48) + 16 * i);
    v9 = *v8 == v4 && v8[1] == v2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  sub_243899B78();
}

uint64_t sub_243872754()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_243872800()
{
  sub_243899B18();
  v2 = sub_243873884(&qword_27ED94EE8, &qword_24389E4C0);

  return sub_243873AA4(v1, v0, v2);
}

uint64_t sub_243872850()
{
  sub_243899B18();
  sub_243873884(&qword_27ED94EE8, &qword_24389E4C0);
  v0 = sub_24389B1B0();

  return sub_243873554(v0, v1, v2, v3);
}

uint64_t sub_243872898()
{
  sub_243899B18();
  v2 = sub_243873884(&qword_27ED94EE0, &qword_24389E4B8);

  return sub_243873AA4(v1, v0, v2);
}

uint64_t sub_2438728E8()
{
  sub_243899B18();
  sub_243873884(&qword_27ED94EE0, &qword_24389E4B8);
  v0 = sub_24389B1B0();

  return sub_243873554(v0, v1, v2, v3);
}

uint64_t sub_243872930()
{
  v1 = sub_243873884(&qword_27ED94F38, &qword_24389E628);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2438729C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2438729FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_243873E40(a1, a2);
  }

  return a1;
}

id CKDatabase.codeConnection(toService:local:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  result = [v4 container];
  if (result)
  {
    v9 = result;
    v10 = [v4 databaseScope];
    type metadata accessor for CodeConnection();
    swift_allocObject();
    v11 = sub_243873324(a1, a2, v9, v10, a3 & 1);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243872AFC(uint64_t a1)
{
  v2 = sub_243872FEC(&qword_27ED946E0, type metadata accessor for CKError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_243872B68(uint64_t a1)
{
  v2 = sub_243872FEC(&qword_27ED946E0, type metadata accessor for CKError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_243872BD8(uint64_t a1)
{
  v2 = sub_243872FEC(&qword_27ED94718, type metadata accessor for CKError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_243872C68(uint64_t a1)
{
  v2 = sub_243872FEC(&qword_27ED94718, type metadata accessor for CKError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_243872CD4(uint64_t a1)
{
  v2 = sub_243872FEC(&qword_27ED94718, type metadata accessor for CKError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_243872D40(void *a1, uint64_t a2)
{
  v4 = sub_243872FEC(&qword_27ED94718, type metadata accessor for CKError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_243872DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_243872FEC(&qword_27ED94718, type metadata accessor for CKError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

Swift::Int sub_243872E54()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_243872EB4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_243872EE8();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_243872EF0@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_243872F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243872FEC(&qword_27ED94718, type metadata accessor for CKError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_243872FEC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_243873168(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_243873200()
{
  result = qword_27ED94708;
  if (!qword_27ED94708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED94708);
  }

  return result;
}

uint64_t sub_243873324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return v5;
}

void sub_243873338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v28[4] = a5;
  v28[5] = a4;
  v28[2] = a2;
  v28[3] = a1;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = a9;
  v15 = (*(*(type metadata accessor for CodeOperation.DestinationServer() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v17 = v28 - v16;
  v18 = (*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v20 = v28 - v19;
  v21 = *(v9 + 24);
  v28[1] = *(v9 + 16);
  (*(*(a6 - 8) + 16))(v28 - v19, a3, a6);
  sub_243873554(v20, 0, 1, a6);
  v22 = *(v9 + 48);
  v23 = type metadata accessor for URL();
  if (v22)
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  sub_243873554(v17, v24, 2, v23);
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = a9;
  type metadata accessor for CodeOperation();

  CodeOperation.__allocating_init(service:functionName:request:destinationServer:)();
  v26 = v25;

  sub_2438914F0();
  [v26 configureConvenience_];
  v27 = [*(v10 + 32) databaseWithDatabaseScope_];
  [v27 addOperation_];
}

uint64_t CodeConnection.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CodeConnection.__deallocating_deinit()
{
  CodeConnection.deinit();

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

uint64_t Invocable.invoke<A>(function:request:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v16 = *(a8 + 8);
  v17 = type metadata accessor for Google_Protobuf_Empty();
  v18 = sub_2438737BC();

  v16(a1, a2, a3, sub_243873790, v15, a7, v17, a9, v18, a6, a8);
}

uint64_t sub_243873790(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a2);
}

unint64_t sub_2438737BC()
{
  result = qword_27ED94728;
  if (!qword_27ED94728)
  {
    type metadata accessor for Google_Protobuf_Empty();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED94728);
  }

  return result;
}

uint64_t sub_243873884(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2438738D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_243873964(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t Ckcode_ProtectedEnvelope.encrypted.getter()
{
  v0 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  sub_243876184(v0);
  v2 = *(v1 + 64);
  sub_243876190();
  MEMORY[0x28223BE20]();
  v4 = (&v10 - v3);
  v5 = sub_2438761E0();
  sub_2438760B4(v5, v6, &qword_27ED94960, &qword_24389CB10);
  v7 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  if (sub_243873AA4(v4, 1, v7) == 1)
  {
    sub_24387605C(v4, &qword_27ED94960, &qword_24389CB10);
    return 0;
  }

  sub_243876224();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_243873ACC(v4);
    return 0;
  }

  result = *v4;
  v9 = v4[1];
  return result;
}

uint64_t sub_243873ACC(uint64_t a1)
{
  v2 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243873B28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_243873DE8(*a1, v2);
  return Ckcode_ProtectedEnvelope.encrypted.setter(v1, v2);
}

uint64_t Ckcode_ProtectedEnvelope.encrypted.setter(uint64_t a1, uint64_t a2)
{
  sub_24387605C(v2, &qword_27ED94960, &qword_24389CB10);
  *v2 = a1;
  v2[1] = a2;
  v5 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  sub_2438761E0();
  swift_storeEnumTagMultiPayload();
  sub_2438761BC();

  return sub_243873554(v6, v7, v8, v5);
}

void (*Ckcode_ProtectedEnvelope.encrypted.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = sub_243873964(0x28uLL);
  *a1 = v4;
  v4[2] = v2;
  v5 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  sub_243876184(v5);
  v7 = sub_243873964(*(v6 + 64));
  v4[3] = v7;
  v8 = sub_243876218();
  sub_2438760B4(v8, v9, &qword_27ED94960, &qword_24389CB10);
  v4[4] = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  sub_24387619C(v7);
  if (v10)
  {
    sub_24387605C(v7, &qword_27ED94960, &qword_24389CB10);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      v12 = *v7;
      goto LABEL_8;
    }

    sub_243873ACC(v7);
  }

  v12 = xmmword_24389CAE0;
LABEL_8:
  *v4 = v12;
  return sub_243873D04;
}

void sub_243873D04(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[2];
  if (a2)
  {
    sub_243873DE8(**a1, v3);
    sub_24387605C(v7, &qword_27ED94960, &qword_24389CB10);
    *v7 = v4;
    v7[1] = v3;
    sub_243876218();
    swift_storeEnumTagMultiPayload();
    sub_2438761BC();
    sub_243873554(v8, v9, v10, v6);
    sub_243873E40(*v2, v2[1]);
  }

  else
  {
    sub_24387605C((*a1)[2], &qword_27ED94960, &qword_24389CB10);
    *v7 = v4;
    v7[1] = v3;
    sub_243876218();
    swift_storeEnumTagMultiPayload();
    sub_2438761BC();
    sub_243873554(v11, v12, v13, v6);
  }

  free(v5);

  free(v2);
}

uint64_t sub_243873DE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_243873E40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t Ckcode_ProtectedEnvelope.value.getter()
{
  v1 = v0;
  v2 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  sub_243876184(v2);
  v4 = *(v3 + 64);
  sub_243876190();
  MEMORY[0x28223BE20]();
  v6 = &v14 - v5;
  sub_2438760B4(v1, &v14 - v5, &qword_27ED94960, &qword_24389CB10);
  v7 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  if (sub_243873AA4(v6, 1, v7) == 1)
  {
    sub_24387605C(v6, &qword_27ED94960, &qword_24389CB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = type metadata accessor for Google_Protobuf_Any();
      sub_243876174(v8);
      v10 = *(v9 + 32);
      v11 = sub_243876224();
      return v12(v11);
    }

    sub_243873ACC(v6);
  }

  return Google_Protobuf_Any.init()();
}

uint64_t sub_243873FC8(uint64_t a1)
{
  v2 = *(*(type metadata accessor for Google_Protobuf_Any() - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return Ckcode_ProtectedEnvelope.value.setter();
}

uint64_t Ckcode_ProtectedEnvelope.value.setter()
{
  sub_24387605C(v0, &qword_27ED94960, &qword_24389CB10);
  v1 = type metadata accessor for Google_Protobuf_Any();
  sub_243876174(v1);
  v3 = *(v2 + 32);
  v4 = sub_2438761E0();
  v5(v4);
  v6 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  sub_2438761E0();
  swift_storeEnumTagMultiPayload();
  sub_2438761BC();

  return sub_243873554(v7, v8, v9, v6);
}

void (*Ckcode_ProtectedEnvelope.value.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = sub_243873964(0x38uLL);
  *a1 = v4;
  *v4 = v1;
  v5 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  sub_243876184(v5);
  v7 = sub_243873964(*(v6 + 64));
  v4[1] = v7;
  v8 = type metadata accessor for Google_Protobuf_Any();
  v4[2] = v8;
  sub_243876204(v8);
  v10 = v9;
  v4[3] = v9;
  v12 = *(v11 + 64);
  v4[4] = sub_243873964(v12);
  v13 = sub_243873964(v12);
  v4[5] = v13;
  sub_2438760B4(v2, v7, &qword_27ED94960, &qword_24389CB10);
  v14 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  v4[6] = v14;
  if (sub_243873AA4(v7, 1, v14) == 1)
  {
    sub_24387605C(v7, &qword_27ED94960, &qword_24389CB10);
LABEL_6:
    Google_Protobuf_Any.init()();
    return sub_2438742EC;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_243873ACC(v7);
    goto LABEL_6;
  }

  (*(v10 + 32))(v13, v7, v8);
  return sub_2438742EC;
}

void sub_2438742EC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v3, v8);
    sub_24387605C(v9, &qword_27ED94960, &qword_24389CB10);
    (*(v6 + 32))(v9, v5, v8);
    swift_storeEnumTagMultiPayload();
    sub_2438761BC();
    sub_243873554(v10, v11, v12, v4);
    (*(v6 + 8))(v3, v8);
  }

  else
  {
    sub_24387605C(**a1, &qword_27ED94960, &qword_24389CB10);
    (*(v6 + 32))(v9, v3, v8);
    swift_storeEnumTagMultiPayload();
    sub_2438761BC();
    sub_243873554(v13, v14, v15, v4);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Ckcode_ProtectedEnvelope.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Ckcode_ProtectedEnvelope(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = sub_243876174(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_2438744E0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Ckcode_ProtectedEnvelope.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Ckcode_ProtectedEnvelope(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  sub_243876174(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t static Ckcode_ProtectedEnvelope.OneOf_Contents.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Google_Protobuf_Any();
  v6 = sub_243876204(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_2438761C8();
  v11 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  v12 = sub_243876174(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = (&v35 - v18);
  v20 = sub_243873884(&qword_27ED94748, &qword_24389CB18);
  sub_243876184(v20);
  v22 = *(v21 + 64);
  sub_243876190();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v35 - v25;
  v27 = (&v35 + *(v24 + 56) - v25);
  sub_24387487C(a1, &v35 - v25);
  sub_24387487C(a2, v27);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24387487C(v26, v17);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v8 + 32))(v2, v27, v5);
      sub_243876218();
      v28 = static Google_Protobuf_Any.== infix(_:_:)();
      v29 = *(v8 + 8);
      v29(v2, v5);
      v29(v17, v5);
LABEL_9:
      sub_243873ACC(v26);
      return v28 & 1;
    }

    (*(v8 + 8))(v17, v5);
  }

  else
  {
    sub_24387487C(v26, v19);
    v30 = *v19;
    v31 = v19[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v32 = *v27;
      v33 = v27[1];
      v28 = MEMORY[0x245D420F0](v30, v31, *v27, v33);
      sub_243873E40(v32, v33);
      sub_243873E40(v30, v31);
      goto LABEL_9;
    }

    sub_243873E40(v30, v31);
  }

  sub_24387605C(v26, &qword_27ED94748, &qword_24389CB18);
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_24387487C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Ckcode_ProtectedEnvelope.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  sub_243873554(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for Ckcode_ProtectedEnvelope(0) + 20);
  return UnknownStorage.init()();
}

uint64_t sub_243874950()
{
  v0 = type metadata accessor for _NameMap();
  sub_243876110(v0, qword_27ED94730);
  sub_243874BC0(v0, qword_27ED94730);
  sub_243873884(&qword_27ED94780, qword_24389D0B0);
  v1 = (sub_243873884(&qword_27ED94788, &unk_24389CD10) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24389CAF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "encrypted";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t static Ckcode_ProtectedEnvelope._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ED946A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = sub_243874BC0(v2, qword_27ED94730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_243874BC0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t Ckcode_ProtectedEnvelope.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v10 = sub_243876224();
      sub_243874E48(v10, v11, a2, a3);
    }

    else if (result == 1)
    {
      v8 = sub_2438761E0();
      sub_243874C7C(v8, v9);
    }
  }

  return result;
}

uint64_t sub_243874C7C(uint64_t a1, __int128 *a2)
{
  v4 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v12 = xmmword_24389CB00;
  dispatch thunk of Decoder.decodeSingularBytesField(value:)();
  v8 = v12;
  if (v2 || *(&v12 + 1) >> 60 == 15)
  {
    return sub_2438729FC(v12, *(&v12 + 1));
  }

  sub_2438760B4(a2, v7, &qword_27ED94960, &qword_24389CB10);
  v13 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  v9 = sub_243873AA4(v7, 1, v13);
  sub_243873DE8(v8, *(&v8 + 1));
  sub_24387605C(v7, &qword_27ED94960, &qword_24389CB10);
  if (v9 != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  sub_2438729FC(v8, *(&v8 + 1));
  sub_24387605C(a2, &qword_27ED94960, &qword_24389CB10);
  *a2 = v8;
  v11 = v13;
  swift_storeEnumTagMultiPayload();
  return sub_243873554(a2, 0, 1, v11);
}

uint64_t sub_243874E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  v47 = a3;
  v46 = a2;
  v5 = type metadata accessor for Google_Protobuf_Any();
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v11 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  v22 = sub_243873884(&qword_27ED94778, &unk_24389CD00);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v39 - v27;
  sub_243873554(&v39 - v27, 1, 1, v5);
  v41 = a1;
  v29 = a1;
  v30 = v15;
  sub_2438760B4(v29, v14, &qword_27ED94960, &qword_24389CB10);
  v31 = sub_243873AA4(v14, 1, v15);
  v40 = v30;
  if (v31 == 1)
  {
    sub_24387605C(v14, &qword_27ED94960, &qword_24389CB10);
  }

  else
  {
    sub_243875A4C(v14, v21);
    sub_243875A4C(v21, v19);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24387605C(v28, &qword_27ED94778, &unk_24389CD00);
      v32 = *(v43 + 32);
      v32(v10, v19, v5);
      v32(v28, v10, v5);
      sub_243873554(v28, 0, 1, v5);
    }

    else
    {
      sub_243873ACC(v19);
    }
  }

  sub_243875D78(qword_280D49098, MEMORY[0x277D215C8]);
  v33 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    v34 = v28;
    return sub_24387605C(v34, &qword_27ED94778, &unk_24389CD00);
  }

  sub_2438760B4(v28, v26, &qword_27ED94778, &unk_24389CD00);
  if (sub_243873AA4(v26, 1, v5) == 1)
  {
    sub_24387605C(v28, &qword_27ED94778, &unk_24389CD00);
    v34 = v26;
    return sub_24387605C(v34, &qword_27ED94778, &unk_24389CD00);
  }

  v36 = *(v43 + 32);
  v36(v42, v26, v5);
  if (v31 != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  sub_24387605C(v28, &qword_27ED94778, &unk_24389CD00);
  v37 = v41;
  sub_24387605C(v41, &qword_27ED94960, &qword_24389CB10);
  v36(v37, v42, v5);
  v38 = v40;
  swift_storeEnumTagMultiPayload();
  return sub_243873554(v37, 0, 1, v38);
}

uint64_t Ckcode_ProtectedEnvelope.traverse<A>(visitor:)()
{
  v2 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  sub_243876184(v2);
  v4 = *(v3 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  sub_2438760B4(v0, &v16 - v6, &qword_27ED94960, &qword_24389CB10);
  v8 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  if (sub_243873AA4(v7, 1, v8) == 1)
  {
    goto LABEL_2;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2438761EC();
    sub_2438755B4(v11, v12, v13, v14);
    result = sub_243873ACC(v7);
    if (!v1)
    {
LABEL_2:
      v9 = v0 + *(type metadata accessor for Ckcode_ProtectedEnvelope(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  else
  {
    sub_243873ACC(v7);
    v15 = sub_2438761EC();
    result = sub_24387546C(v15);
    if (!v1)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_24387546C(uint64_t a1)
{
  v2 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_2438760B4(a1, &v10 - v4, &qword_27ED94960, &qword_24389CB10);
  v6 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  if (sub_243873AA4(v5, 1, v6) == 1)
  {
    result = sub_24387605C(v5, &qword_27ED94960, &qword_24389CB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v8 = *v5;
      v7 = v5[1];
      dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      return sub_243873E40(v8, v7);
    }

    result = sub_243873ACC(v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_2438755B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Google_Protobuf_Any();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2438760B4(a1, v8, &qword_27ED94960, &qword_24389CB10);
  v14 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  if (sub_243873AA4(v8, 1, v14) == 1)
  {
    result = sub_24387605C(v8, &qword_27ED94960, &qword_24389CB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v10 + 32))(v13, v8, v9);
      sub_243875D78(qword_280D49098, MEMORY[0x277D215C8]);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return (*(v10 + 8))(v13, v9);
    }

    result = sub_243873ACC(v8);
  }

  __break(1u);
  return result;
}

uint64_t static Ckcode_ProtectedEnvelope.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  v6 = sub_243876174(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_2438761C8();
  v9 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  sub_243876184(v9);
  v11 = *(v10 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = sub_243873884(&qword_27ED94750, &qword_24389CB20);
  sub_243876184(v15);
  v17 = *(v16 + 64);
  sub_243876190();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v28 - v20;
  v22 = *(v19 + 56);
  sub_2438760B4(a1, &v28 - v20, &qword_27ED94960, &qword_24389CB10);
  sub_2438760B4(a2, &v21[v22], &qword_27ED94960, &qword_24389CB10);
  sub_24387619C(v21);
  if (v23)
  {
    sub_24387619C(&v21[v22]);
    if (v23)
    {
      sub_24387605C(v21, &qword_27ED94960, &qword_24389CB10);
LABEL_12:
      v26 = *(type metadata accessor for Ckcode_ProtectedEnvelope(0) + 20);
      type metadata accessor for UnknownStorage();
      sub_243875D78(&qword_27ED94758, MEMORY[0x277D216C8]);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v24 & 1;
    }

    goto LABEL_9;
  }

  sub_2438760B4(v21, v14, &qword_27ED94960, &qword_24389CB10);
  sub_24387619C(&v21[v22]);
  if (v23)
  {
    sub_243873ACC(v14);
LABEL_9:
    sub_24387605C(v21, &qword_27ED94750, &qword_24389CB20);
    goto LABEL_10;
  }

  sub_243875A4C(&v21[v22], v2);
  v25 = static Ckcode_ProtectedEnvelope.OneOf_Contents.== infix(_:_:)(v14, v2);
  sub_243873ACC(v2);
  sub_243873ACC(v14);
  sub_24387605C(v21, &qword_27ED94960, &qword_24389CB10);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_10:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_243875A4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int Ckcode_ProtectedEnvelope.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Ckcode_ProtectedEnvelope(0);
  sub_243875D78(&qword_27ED94760, type metadata accessor for Ckcode_ProtectedEnvelope);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t (*sub_243875B64(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_243875BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_243875D78(&qword_27ED94770, type metadata accessor for Ckcode_ProtectedEnvelope);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_243875C38(uint64_t a1)
{
  v2 = sub_243875D78(&qword_280D496C0, type metadata accessor for Ckcode_ProtectedEnvelope);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_243875CA8()
{
  sub_243875D78(&qword_280D496C0, type metadata accessor for Ckcode_ProtectedEnvelope);

  return Message.hash(into:)();
}

Swift::Int sub_243875D24()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_243875D78(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_243875F0C()
{
  sub_243875F90();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_243875F90()
{
  if (!qword_280D496C8)
  {
    type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_280D496C8);
    }
  }
}

uint64_t sub_243875FF0()
{
  result = type metadata accessor for Google_Protobuf_Any();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24387605C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_243873884(a2, a3);
  sub_243876174(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2438760B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_243873884(a3, a4);
  sub_243876174(v5);
  v7 = *(v6 + 16);
  v8 = sub_243876224();
  v9(v8);
  return a2;
}

uint64_t *sub_243876110(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t Ckcode_Proto2Any.typeURL.getter()
{
  sub_2438798AC();
  v2 = (v0 + v1);
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  return sub_243876224();
}

uint64_t sub_243876298(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Ckcode_Proto2Any.typeURL.setter(v1, v2);
}

uint64_t Ckcode_Proto2Any.typeURL.setter(uint64_t a1, uint64_t a2)
{
  sub_2438798AC();
  v6 = (v2 + v5);
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void (*Ckcode_Proto2Any.typeURL.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = sub_243873964(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  sub_2438798AC();
  *(v3 + 8) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v6;
  *v3 = v7;
  v3[1] = v8;

  return sub_2438763AC;
}

void sub_2438763AC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall Ckcode_Proto2Any.clearTypeURL()()
{
  sub_2438798AC();
  v2 = (v0 + v1);
  v3 = *(v0 + v1 + 8);

  *v2 = 0;
  v2[1] = 0;
}

uint64_t Ckcode_Proto2Any.value.getter()
{
  sub_2438798EC();
  v1 = sub_243879948(v0);
  sub_2438764C4(v1, v2);
  return sub_243876224();
}

uint64_t sub_2438764C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_243873DE8(a1, a2);
  }

  return a1;
}

uint64_t sub_2438764D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_243873DE8(*a1, v2);
  return Ckcode_Proto2Any.value.setter(v1, v2);
}

uint64_t Ckcode_Proto2Any.value.setter(uint64_t a1, uint64_t a2)
{
  sub_2438798EC();
  v6 = v2 + v5;
  result = sub_2438729FC(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t (*Ckcode_Proto2Any.value.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  sub_2438798EC();
  *(a1 + 24) = v3;
  v6 = sub_243879948(v3);
  if (!v5 & v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xC000000000000000;
  if (!(!v5 & v4))
  {
    v9 = v7;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  sub_2438764C4(v6, v7);
  return sub_2438765BC;
}

uint64_t sub_2438765BC(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = (a1[2] + *(a1 + 6));
  v4 = *a1;
  v5 = *v3;
  v6 = v3[1];
  if (a2)
  {
    v7 = sub_2438761E0();
    sub_243873DE8(v7, v8);
    v9 = sub_24387995C();
    sub_2438729FC(v9, v10);
    *v3 = v4;
    v3[1] = v2;
    v11 = sub_2438761E0();

    return sub_243873E40(v11, v12);
  }

  else
  {
    v14 = sub_24387995C();
    result = sub_2438729FC(v14, v15);
    *v3 = v4;
    v3[1] = v2;
  }

  return result;
}

Swift::Void __swiftcall Ckcode_Proto2Any.clearValue()()
{
  sub_2438798EC();
  v2 = (v0 + v1);
  sub_2438729FC(*(v0 + v1), *(v0 + v1 + 8));
  *v2 = xmmword_24389CB00;
}

uint64_t Ckcode_Proto2Any.unknownFields.getter()
{
  v0 = type metadata accessor for UnknownStorage();
  sub_243876174(v0);
  v2 = *(v1 + 16);
  v3 = sub_243876224();

  return v4(v3);
}

uint64_t Ckcode_Proto2Any.unknownFields.setter()
{
  sub_2438798E0();
  v0 = type metadata accessor for UnknownStorage();
  sub_243876174(v0);
  v2 = *(v1 + 40);
  v3 = sub_2438761E0();

  return v4(v3);
}

double Ckcode_Proto2Any.init()@<D0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = sub_2438798AC();
  v4 = (a1 + v3);
  *v4 = 0;
  v4[1] = 0;
  result = 0.0;
  *(a1 + *(v2 + 24)) = xmmword_24389CB00;
  return result;
}

uint64_t sub_2438767F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Ckcode_Proto2ProtectedEnvelope.encrypted.getter()
{
  v0 = sub_24387995C();
  v2 = sub_243873884(v0, v1);
  sub_243876184(v2);
  v4 = *(v3 + 64);
  sub_243876190();
  MEMORY[0x28223BE20]();
  v6 = (&v12 - v5);
  v7 = sub_2438761E0();
  sub_2438760B4(v7, v8, &qword_27ED947C0, &qword_24389CD20);
  v9 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  if (sub_243873AA4(v6, 1, v9) == 1)
  {
    sub_24387605C(v6, &qword_27ED947C0, &qword_24389CD20);
    return 0;
  }

  sub_243876224();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2438771A0();
    return 0;
  }

  result = *v6;
  v11 = v6[1];
  return result;
}

uint64_t sub_2438769A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_243873DE8(*a1, v2);
  return Ckcode_Proto2ProtectedEnvelope.encrypted.setter(v1, v2);
}

uint64_t Ckcode_Proto2ProtectedEnvelope.encrypted.setter(uint64_t a1, uint64_t a2)
{
  sub_24387605C(v2, &qword_27ED947C0, &qword_24389CD20);
  *v2 = a1;
  v2[1] = a2;
  v5 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  sub_2438761E0();
  swift_storeEnumTagMultiPayload();
  sub_2438761BC();

  return sub_243873554(v6, v7, v8, v5);
}

void (*Ckcode_Proto2ProtectedEnvelope.encrypted.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = sub_243873964(0x28uLL);
  *a1 = v4;
  v4[2] = v2;
  v5 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  sub_243876184(v5);
  v7 = sub_243873964(*(v6 + 64));
  v4[3] = v7;
  v8 = sub_243876218();
  sub_2438760B4(v8, v9, &qword_27ED947C0, &qword_24389CD20);
  v10 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  v4[4] = v10;
  if (sub_243873AA4(v7, 1, v10) == 1)
  {
    sub_24387605C(v7, &qword_27ED947C0, &qword_24389CD20);
  }

  else
  {
    sub_24387995C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v11 = *v7;
      goto LABEL_7;
    }

    sub_2438771A0();
  }

  v11 = xmmword_24389CAE0;
LABEL_7:
  *v4 = v11;
  return sub_243876B9C;
}

void sub_243876B9C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[2];
  if (a2)
  {
    v8 = sub_2438798C8();
    sub_243873DE8(v8, v9);
    sub_24387605C(v7, &qword_27ED947C0, &qword_24389CD20);
    *v7 = v4;
    v7[1] = v3;
    sub_243876218();
    swift_storeEnumTagMultiPayload();
    sub_2438761BC();
    sub_243873554(v10, v11, v12, v6);
    sub_243873E40(*v2, v2[1]);
  }

  else
  {
    sub_24387605C((*a1)[2], &qword_27ED947C0, &qword_24389CD20);
    *v7 = v4;
    v7[1] = v3;
    sub_243876218();
    swift_storeEnumTagMultiPayload();
    sub_2438761BC();
    sub_243873554(v13, v14, v15, v6);
  }

  free(v5);

  free(v2);
}

double Ckcode_Proto2ProtectedEnvelope.value.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  sub_243876184(v4);
  v6 = *(v5 + 64);
  sub_243876190();
  MEMORY[0x28223BE20]();
  v8 = &v14 - v7;
  sub_2438760B4(v2, &v14 - v7, &qword_27ED947C0, &qword_24389CD20);
  v9 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  if (sub_243873AA4(v8, 1, v9) == 1)
  {
    sub_24387605C(v8, &qword_27ED947C0, &qword_24389CD20);
  }

  else
  {
    sub_243879968();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2438797F4();
      sub_2438761E0();
      sub_2438792B0();
      return result;
    }

    sub_2438771A0();
  }

  UnknownStorage.init()();
  v11 = sub_2438798AC();
  v13 = (a1 + v12);
  *v13 = 0;
  v13[1] = 0;
  result = 0.0;
  *(a1 + *(v11 + 24)) = xmmword_24389CB00;
  return result;
}

uint64_t sub_243876DB4()
{
  v0 = type metadata accessor for Ckcode_Proto2Any(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2438775CC();
  return Ckcode_Proto2ProtectedEnvelope.value.setter();
}

uint64_t Ckcode_Proto2ProtectedEnvelope.value.setter()
{
  sub_24387605C(v0, &qword_27ED947C0, &qword_24389CD20);
  sub_2438797F4();
  sub_243876224();
  sub_2438792B0();
  v1 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  sub_2438761E0();
  swift_storeEnumTagMultiPayload();
  sub_2438761BC();

  return sub_243873554(v2, v3, v4, v1);
}

void (*Ckcode_Proto2ProtectedEnvelope.value.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = sub_243873964(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  sub_243876184(v4);
  v6 = sub_243873964(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Ckcode_Proto2Any(0);
  sub_243876174(v7);
  v9 = *(v8 + 64);
  v3[2] = sub_243873964(v9);
  v10 = sub_243873964(v9);
  v3[3] = v10;
  v11 = sub_243879908();
  sub_2438760B4(v11, v12, &qword_27ED947C0, &qword_24389CD20);
  v13 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  v3[4] = v13;
  if (sub_243873AA4(v6, 1, v13) == 1)
  {
    sub_24387605C(v6, &qword_27ED947C0, &qword_24389CD20);
LABEL_6:
    UnknownStorage.init()();
    v14 = &v10[*(v7 + 20)];
    *v14 = 0;
    *(v14 + 1) = 0;
    *&v10[*(v7 + 24)] = xmmword_24389CB00;
    return sub_243877070;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2438771A0();
    goto LABEL_6;
  }

  sub_2438797F4();
  sub_2438792B0();
  return sub_243877070;
}

void sub_243877070(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    v8 = (*a1)[3];
    sub_2438775CC();
    sub_24387605C(v7, &qword_27ED947C0, &qword_24389CD20);
    sub_2438792B0();
    sub_2438798C8();
    swift_storeEnumTagMultiPayload();
    sub_2438761BC();
    sub_243873554(v9, v10, v11, v4);
    sub_24387986C();
    sub_2438771A0();
  }

  else
  {
    sub_24387605C(**a1, &qword_27ED947C0, &qword_24389CD20);
    sub_2438797F4();
    sub_2438792B0();
    sub_2438798C8();
    swift_storeEnumTagMultiPayload();
    sub_2438761BC();
    sub_243873554(v12, v13, v14, v4);
  }

  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_2438771A0()
{
  v1 = sub_2438798E0();
  v3 = v2(v1);
  sub_243876174(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Ckcode_Proto2ProtectedEnvelope.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Ckcode_Proto2ProtectedEnvelope(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = sub_243876174(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Ckcode_Proto2ProtectedEnvelope.unknownFields.setter()
{
  v2 = sub_2438798E0();
  v3 = *(type metadata accessor for Ckcode_Proto2ProtectedEnvelope(v2) + 20);
  v4 = type metadata accessor for UnknownStorage();
  sub_243876174(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Ckcode_Proto2ProtectedEnvelope.unknownFields.modify())(void)
{
  v0 = sub_2438798E0();
  v1 = *(type metadata accessor for Ckcode_Proto2ProtectedEnvelope(v0) + 20);
  return nullsub_1;
}

uint64_t static Ckcode_Proto2ProtectedEnvelope.OneOf_Contents.== infix(_:_:)()
{
  v0 = type metadata accessor for Ckcode_Proto2Any(0);
  v1 = sub_243876184(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  v5 = sub_243876174(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v8);
  v10 = (&v30 - v9);
  v11 = sub_243873884(&qword_27ED947C8, &qword_24389CD28);
  sub_243876184(v11);
  v13 = *(v12 + 64);
  sub_243876190();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v30 - v16;
  v18 = (&v30 + *(v15 + 56) - v16);
  sub_2438775CC();
  sub_2438775CC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_243879824();
    sub_2438775CC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2438797F4();
      sub_2438792B0();
      v19 = static Ckcode_Proto2Any.== infix(_:_:)();
      sub_2438771A0();
      sub_2438771A0();
LABEL_9:
      sub_24387980C();
      sub_2438771A0();
      return v19 & 1;
    }

    sub_24387986C();
    sub_2438771A0();
  }

  else
  {
    sub_243879824();
    sub_2438775CC();
    v20 = *v10;
    v21 = v10[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v24 = *v18;
      v25 = v18[1];
      v26 = sub_243879968();
      v19 = MEMORY[0x245D420F0](v26);
      sub_243873E40(v24, v25);
      v27 = sub_243879968();
      sub_243873E40(v27, v28);
      goto LABEL_9;
    }

    v22 = sub_243879968();
    sub_243873E40(v22, v23);
  }

  sub_24387605C(v17, &qword_27ED947C8, &qword_24389CD28);
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_2438775CC()
{
  v1 = sub_24387989C();
  v3 = v2(v1);
  sub_243876174(v3);
  v5 = *(v4 + 16);
  v6 = sub_243876224();
  v7(v6);
  return v0;
}

uint64_t static Ckcode_Proto2Any.== infix(_:_:)()
{
  v2 = sub_24387989C();
  v3 = type metadata accessor for Ckcode_Proto2Any(v2);
  v4 = *(v3 + 20);
  v5 = (v1 + v4);
  v6 = *(v1 + v4 + 8);
  v7 = (v0 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *v5 == *v7 && v6 == v8;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = *(v3 + 24);
  v12 = *(v1 + v10);
  v11 = *(v1 + v10 + 8);
  v13 = (v0 + v10);
  v15 = *v13;
  v14 = v13[1];
  if (v11 >> 60 != 15)
  {
    if (v14 >> 60 == 15)
    {
      goto LABEL_14;
    }

    v23 = sub_24387983C();
    v24 = MEMORY[0x245D420F0](v23);
    v25 = sub_2438798C8();
    sub_2438729FC(v25, v26);
    v27 = sub_243876218();
    sub_2438729FC(v27, v28);
    if (v24)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v14 >> 60 != 15)
  {
LABEL_14:
    v18 = sub_24387983C();
    sub_2438729FC(v18, v19);
    v20 = sub_2438798C8();
    sub_2438729FC(v20, v21);
    return 0;
  }

  v16 = sub_24387983C();
  sub_2438729FC(v16, v17);
LABEL_17:
  type metadata accessor for UnknownStorage();
  sub_243879884();
  sub_243879268(v29, v30);
  sub_2438761E0();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Ckcode_Proto2ProtectedEnvelope.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  sub_243873554(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for Ckcode_Proto2ProtectedEnvelope(0) + 20);
  return UnknownStorage.init()();
}

uint64_t sub_2438777E0()
{
  v0 = type metadata accessor for _NameMap();
  sub_243876110(v0, qword_27ED94790);
  sub_243874BC0(v0, qword_27ED94790);
  sub_243873884(&qword_27ED94780, qword_24389D0B0);
  v1 = (sub_243873884(&qword_27ED94788, &unk_24389CD10) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24389CAF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type_url";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Ckcode_Proto2Any.decodeMessage<A>(decoder:)()
{
  sub_243879928();
  while (1)
  {
    sub_243879908();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_2438761E0();
      sub_2438798D4();
      sub_243877AA4();
    }

    else if (result == 1)
    {
      sub_2438761E0();
      sub_2438798D4();
      sub_243877A40();
    }
  }

  return result;
}

uint64_t Ckcode_Proto2Any.traverse<A>(visitor:)()
{
  v1 = sub_243879974();
  result = sub_243877B5C(v1);
  if (!v0)
  {
    v3 = sub_243879974();
    sub_243877BD4(v3);
    sub_243879908();
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_243877B5C(uint64_t a1)
{
  result = type metadata accessor for Ckcode_Proto2Any(0);
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_243877BD4(uint64_t a1)
{
  result = type metadata accessor for Ckcode_Proto2Any(0);
  v3 = a1 + *(result + 24);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_243873DE8(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return sub_2438729FC(v5, v4);
  }

  return result;
}

uint64_t sub_243877D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_243879268(&qword_27ED94860, type metadata accessor for Ckcode_Proto2Any);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_243877DB8(uint64_t a1)
{
  v2 = sub_243879268(&qword_27ED947F0, type metadata accessor for Ckcode_Proto2Any);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_243877E28()
{
  sub_243879268(&qword_27ED947F0, type metadata accessor for Ckcode_Proto2Any);

  return Message.hash(into:)();
}

uint64_t sub_243877EC4()
{
  v0 = type metadata accessor for _NameMap();
  sub_243876110(v0, qword_27ED947A8);
  sub_243874BC0(v0, qword_27ED947A8);
  sub_243873884(&qword_27ED94780, qword_24389D0B0);
  v1 = (sub_243873884(&qword_27ED94788, &unk_24389CD10) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24389CAF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "encrypted";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_2438780B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = sub_243874BC0(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Ckcode_Proto2ProtectedEnvelope.decodeMessage<A>(decoder:)()
{
  sub_243879928();
  while (1)
  {
    sub_243879908();
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_243876224();
      sub_2438798D4();
      sub_243878380(v5, v6, v7, v8);
    }

    else if (result == 1)
    {
      sub_2438761E0();
      sub_2438798D4();
      sub_2438781B4(v3, v4);
    }
  }

  return result;
}

uint64_t sub_2438781B4(uint64_t a1, __int128 *a2)
{
  v4 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v12 = xmmword_24389CB00;
  dispatch thunk of Decoder.decodeSingularBytesField(value:)();
  v8 = v12;
  if (v2 || *(&v12 + 1) >> 60 == 15)
  {
    return sub_2438729FC(v12, *(&v12 + 1));
  }

  sub_2438760B4(a2, v7, &qword_27ED947C0, &qword_24389CD20);
  v13 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  v9 = sub_243873AA4(v7, 1, v13);
  sub_243873DE8(v8, *(&v8 + 1));
  sub_24387605C(v7, &qword_27ED947C0, &qword_24389CD20);
  if (v9 != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  sub_2438729FC(v8, *(&v8 + 1));
  sub_24387605C(a2, &qword_27ED947C0, &qword_24389CD20);
  *a2 = v8;
  v11 = v13;
  swift_storeEnumTagMultiPayload();
  return sub_243873554(a2, 0, 1, v11);
}

uint64_t sub_243878380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Ckcode_Proto2Any(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_243873884(&qword_27ED94868, &qword_24389D0A8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_243873554(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_2438760B4(a1, v12, &qword_27ED947C0, &qword_24389CD20);
  v30 = sub_243873AA4(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_24387605C(v12, &qword_27ED947C0, &qword_24389CD20);
  }

  else
  {
    sub_2438792B0();
    sub_2438792B0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24387605C(v22, &qword_27ED94868, &qword_24389D0A8);
      sub_2438792B0();
      sub_2438792B0();
      sub_243873554(v22, 0, 1, v5);
    }

    else
    {
      sub_2438771A0();
    }
  }

  sub_243879268(&qword_27ED947F0, type metadata accessor for Ckcode_Proto2Any);
  v23 = v33;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v23)
  {
    v24 = v22;
    return sub_24387605C(v24, &qword_27ED94868, &qword_24389D0A8);
  }

  sub_2438760B4(v22, v20, &qword_27ED94868, &qword_24389D0A8);
  if (sub_243873AA4(v20, 1, v5) == 1)
  {
    sub_24387605C(v22, &qword_27ED94868, &qword_24389D0A8);
    v24 = v20;
    return sub_24387605C(v24, &qword_27ED94868, &qword_24389D0A8);
  }

  sub_2438792B0();
  if (v30 != 1)
  {
    dispatch thunk of Decoder.handleConflictingOneOf()();
  }

  v26 = v31;
  sub_24387605C(v22, &qword_27ED94868, &qword_24389D0A8);
  v27 = v29;
  sub_24387605C(v29, &qword_27ED947C0, &qword_24389CD20);
  sub_2438792B0();
  swift_storeEnumTagMultiPayload();
  return sub_243873554(v27, 0, 1, v26);
}

uint64_t Ckcode_Proto2ProtectedEnvelope.traverse<A>(visitor:)()
{
  v2 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  sub_243876184(v2);
  v4 = *(v3 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  sub_2438760B4(v0, &v16 - v6, &qword_27ED947C0, &qword_24389CD20);
  v8 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  if (sub_243873AA4(v7, 1, v8) == 1)
  {
    goto LABEL_2;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2438798D4();
    sub_243878B34(v11, v12, v13, v14);
    sub_24387980C();
    result = sub_2438771A0();
    if (!v1)
    {
LABEL_2:
      v9 = v0 + *(type metadata accessor for Ckcode_Proto2ProtectedEnvelope(0) + 20);
      sub_2438798C8();
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  else
  {
    sub_24387980C();
    sub_2438771A0();
    sub_2438798D4();
    result = sub_2438789D8(v15);
    if (!v1)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_2438789D8(uint64_t a1)
{
  v2 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_2438760B4(a1, &v10 - v4, &qword_27ED947C0, &qword_24389CD20);
  v6 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  if (sub_243873AA4(v5, 1, v6) == 1)
  {
    result = sub_24387605C(v5, &qword_27ED947C0, &qword_24389CD20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v8 = *v5;
      v7 = v5[1];
      dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      return sub_243873E40(v8, v7);
    }

    result = sub_2438771A0();
  }

  __break(1u);
  return result;
}

uint64_t sub_243878B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Ckcode_Proto2Any(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_2438760B4(a1, v8, &qword_27ED947C0, &qword_24389CD20);
  v11 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(0);
  if (sub_243873AA4(v8, 1, v11) == 1)
  {
    result = sub_24387605C(v8, &qword_27ED947C0, &qword_24389CD20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2438792B0();
      sub_243879268(&qword_27ED947F0, type metadata accessor for Ckcode_Proto2Any);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return sub_2438771A0();
    }

    result = sub_2438771A0();
  }

  __break(1u);
  return result;
}

uint64_t static Ckcode_Proto2ProtectedEnvelope.== infix(_:_:)()
{
  v2 = sub_24387989C();
  v3 = type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(v2);
  v4 = sub_243876174(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_243873884(&qword_27ED947C0, &qword_24389CD20);
  sub_243876184(v7);
  v9 = *(v8 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_243873884(&qword_27ED947D8, &qword_24389CD30);
  sub_243876184(v13);
  v15 = *(v14 + 64);
  sub_243876190();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v28 - v18;
  v20 = *(v17 + 56);
  sub_2438760B4(v1, &v28 - v18, &qword_27ED947C0, &qword_24389CD20);
  sub_2438760B4(v0, &v19[v20], &qword_27ED947C0, &qword_24389CD20);
  sub_243879988(v19);
  if (v21)
  {
    sub_243879988(&v19[v20]);
    if (v21)
    {
      sub_24387605C(v19, &qword_27ED947C0, &qword_24389CD20);
LABEL_12:
      v24 = *(type metadata accessor for Ckcode_Proto2ProtectedEnvelope(0) + 20);
      type metadata accessor for UnknownStorage();
      sub_243879884();
      sub_243879268(v25, v26);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }

    goto LABEL_9;
  }

  sub_2438760B4(v19, v12, &qword_27ED947C0, &qword_24389CD20);
  sub_243879988(&v19[v20]);
  if (v21)
  {
    sub_24387980C();
    sub_2438771A0();
LABEL_9:
    sub_24387605C(v19, &qword_27ED947D8, &qword_24389CD30);
    goto LABEL_10;
  }

  sub_243879824();
  sub_2438792B0();
  v23 = static Ckcode_Proto2ProtectedEnvelope.OneOf_Contents.== infix(_:_:)();
  sub_2438771A0();
  sub_2438771A0();
  sub_24387605C(v19, &qword_27ED947C0, &qword_24389CD20);
  if (v23)
  {
    goto LABEL_12;
  }

LABEL_10:
  v22 = 0;
  return v22 & 1;
}

Swift::Int sub_243879018(void (*a1)(void))
{
  Hasher.init(_seed:)();
  a1(0);
  v2 = sub_243876218();
  sub_243879268(v2, v3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_2438790F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_243879268(&qword_27ED94858, type metadata accessor for Ckcode_Proto2ProtectedEnvelope);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_243879178(uint64_t a1)
{
  v2 = sub_243879268(&qword_27ED94808, type metadata accessor for Ckcode_Proto2ProtectedEnvelope);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2438791E8()
{
  sub_243879268(&qword_27ED94808, type metadata accessor for Ckcode_Proto2ProtectedEnvelope);

  return Message.hash(into:)();
}

uint64_t sub_243879268(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2438792B0()
{
  v1 = sub_24387989C();
  v3 = v2(v1);
  sub_243876174(v3);
  v5 = *(v4 + 32);
  v6 = sub_243876224();
  v7(v6);
  return v0;
}

void sub_24387956C()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_243879628(319, &qword_27ED94828);
    if (v1 <= 0x3F)
    {
      sub_243879628(319, &qword_280D49650);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243879628(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_24387969C()
{
  sub_243879720();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_243879720()
{
  if (!qword_27ED94840)
  {
    type metadata accessor for Ckcode_Proto2ProtectedEnvelope.OneOf_Contents(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED94840);
    }
  }
}

uint64_t sub_243879778()
{
  result = type metadata accessor for Ckcode_Proto2Any(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24387983C()
{
  sub_2438764C4(v1, v0);
  sub_2438764C4(v3, v2);
  return v1;
}

uint64_t sub_2438798AC()
{
  result = type metadata accessor for Ckcode_Proto2Any(0);
  v1 = *(result + 20);
  return result;
}

uint64_t sub_2438798EC()
{
  result = type metadata accessor for Ckcode_Proto2Any(0);
  v1 = *(result + 24);
  return result;
}

uint64_t sub_243879948@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1] >> 60;
  return result;
}

uint64_t Ckcode_RecordTransport.contents.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2438799B4(v2, v3);
}

uint64_t sub_2438799B4(uint64_t a1, uint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_2438799C8(a1, a2);
  }

  return a1;
}

uint64_t Ckcode_RecordTransport.contents.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_243879A04(*v1, v1[1]);
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t sub_243879A04(uint64_t a1, uint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_243879A18(a1, a2);
  }

  return a1;
}

uint64_t Ckcode_RecordTransport.localSerialization.getter()
{
  if ((v0[1] & 0x2000000000000000) == 0)
  {
    v1 = *v0;
    v2 = sub_2438761E0();
    sub_2438799C8(v2, v3);
  }

  return sub_2438761E0();
}

uint64_t sub_243879A80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_243873DE8(*a1, v2);
  return Ckcode_RecordTransport.localSerialization.setter(v1, v2);
}

uint64_t Ckcode_RecordTransport.localSerialization.setter(uint64_t a1, uint64_t a2)
{
  result = sub_243879A04(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*Ckcode_RecordTransport.localSerialization.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = v1[1];
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = 0;
    v3 = 0xC000000000000000;
  }

  else
  {
    v4 = *v1;
    v5 = sub_24387995C();
    sub_2438799C8(v5, v6);
  }

  *a1 = v4;
  a1[1] = v3;
  return sub_243879B68;
}

uint64_t sub_243879B68(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *v3;
  v6 = v3[1];
  if (a2)
  {
    v7 = sub_2438761E0();
    sub_243873DE8(v7, v8);
    v9 = sub_24387995C();
    sub_243879A04(v9, v10);
    *v3 = v4;
    v3[1] = v2;
    v11 = sub_2438761E0();

    return sub_243873E40(v11, v12);
  }

  else
  {
    v14 = sub_24387995C();
    result = sub_243879A04(v14, v15);
    *v3 = v4;
    v3[1] = v2;
  }

  return result;
}

uint64_t Ckcode_RecordTransport.wireSerialization.getter()
{
  v1 = 0;
  v2 = v0[1];
  if ((~v2 & 0x3000000000000000) != 0 && (v2 & 0x2000000000000000) != 0)
  {
    v1 = *v0;
    sub_2438799C8(*v0, v2);
  }

  return v1;
}

uint64_t sub_243879C44(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_243873DE8(*a1, v2);
  return Ckcode_RecordTransport.wireSerialization.setter(v1, v2);
}

uint64_t Ckcode_RecordTransport.wireSerialization.setter(uint64_t a1, uint64_t a2)
{
  v4 = a2 | 0x2000000000000000;
  result = sub_243879A04(*v2, v2[1]);
  *v2 = a1;
  v2[1] = v4;
  return result;
}

uint64_t (*Ckcode_RecordTransport.wireSerialization.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = 0;
  a1[2] = v1;
  v4 = v1[1];
  v5 = 0xC000000000000000;
  if ((~v4 & 0x3000000000000000) != 0 && (v4 & 0x2000000000000000) != 0)
  {
    v3 = *v1;
    v5 = v4 & 0xDFFFFFFFFFFFFFFFLL;
    sub_2438799C8(*v1, v4);
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_243879D38;
}

uint64_t sub_243879D38(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = v2 | 0x2000000000000000;
  v6 = *v3;
  v7 = v3[1];
  if (a2)
  {
    sub_243873DE8(*a1, v2);
    v8 = sub_24387995C();
    sub_243879A04(v8, v9);
    *v3 = v4;
    v3[1] = v5;

    return sub_243873E40(v4, v2);
  }

  else
  {
    v11 = sub_24387995C();
    result = sub_243879A04(v11, v12);
    *v3 = v4;
    v3[1] = v5;
  }

  return result;
}

uint64_t Ckcode_RecordTransport.encryptedMasterKey.getter()
{
  v0 = type metadata accessor for Ckcode_RecordTransport();
  v1 = sub_243879948(*(v0 + 24));
  if (!v4 & v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v1;
  }

  sub_2438764C4(v1, v2);
  return v5;
}

uint64_t type metadata accessor for Ckcode_RecordTransport()
{
  result = qword_280D49708;
  if (!qword_280D49708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243879E58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_243873DE8(*a1, v2);
  return Ckcode_RecordTransport.encryptedMasterKey.setter(v1, v2);
}

uint64_t Ckcode_RecordTransport.encryptedMasterKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Ckcode_RecordTransport() + 24);
  result = sub_2438729FC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*Ckcode_RecordTransport.encryptedMasterKey.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for Ckcode_RecordTransport() + 24);
  *(a1 + 24) = v3;
  v6 = sub_243879948(v3);
  if (!v5 & v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xC000000000000000;
  if (!(!v5 & v4))
  {
    v9 = v7;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  sub_2438764C4(v6, v7);
  return sub_2438765BC;
}

Swift::Void __swiftcall Ckcode_RecordTransport.clearEncryptedMasterKey()()
{
  v1 = v0 + *(type metadata accessor for Ckcode_RecordTransport() + 24);
  sub_2438729FC(*v1, *(v1 + 8));
  *v1 = xmmword_24389CB00;
}

uint64_t Ckcode_RecordTransport.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Ckcode_RecordTransport() + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Ckcode_RecordTransport.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Ckcode_RecordTransport() + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Ckcode_RecordTransport.OneOf_Contents.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if ((v3 & 0x2000000000000000) != 0)
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      sub_24387B27C();
      v7 = v3 & 0xDFFFFFFFFFFFFFFFLL;
      v9 = v5 & 0xDFFFFFFFFFFFFFFFLL;
      v6 = v2;
      v8 = v4;
      goto LABEL_7;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
    sub_24387B27C();
    v6 = v2;
    v7 = v3;
    v8 = v4;
    v9 = v5;
LABEL_7:
    v10 = MEMORY[0x245D420F0](v6, v7, v8, v9);
    goto LABEL_8;
  }

  sub_24387B27C();
  v10 = 0;
LABEL_8:
  sub_243879A18(v2, v3);
  sub_243879A18(v4, v5);
  return v10 & 1;
}

double Ckcode_RecordTransport.init()@<D0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_24389D0D0;
  v2 = type metadata accessor for Ckcode_RecordTransport();
  v3 = a1 + *(v2 + 20);
  UnknownStorage.init()();
  result = 0.0;
  *(a1 + *(v2 + 24)) = xmmword_24389CB00;
  return result;
}

uint64_t sub_24387A210()
{
  v0 = type metadata accessor for _NameMap();
  sub_243876110(v0, qword_27ED94870);
  sub_243874BC0(v0, qword_27ED94870);
  sub_243873884(&qword_27ED94780, qword_24389D0B0);
  v1 = (sub_243873884(&qword_27ED94788, &unk_24389CD10) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24389D0E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "localSerialization";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "wireSerialization";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "encryptedMasterKey";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t static Ckcode_RecordTransport._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ED946B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = sub_243874BC0(v2, qword_27ED94870);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Ckcode_RecordTransport.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_2438761E0();
        sub_24387A740();
        break;
      case 2:
        sub_2438761E0();
        sub_24387A650();
        break;
      case 1:
        sub_2438761E0();
        sub_24387A564();
        break;
    }
  }

  return result;
}

uint64_t Ckcode_RecordTransport.traverse<A>(visitor:)()
{
  if ((~*(v0 + 8) & 0x3000000000000000) == 0 || ((v2 = sub_2438761EC(), (v3 & 0x2000000000000000) != 0) ? (result = sub_24387A8CC(v2)) : (result = sub_24387A844(v2)), !v1))
  {
    v5 = sub_2438761EC();
    result = sub_24387A960(v5);
    if (!v1)
    {
      v6 = v0 + *(type metadata accessor for Ckcode_RecordTransport() + 20);
      sub_2438798C8();
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t *sub_24387A844(uint64_t *result)
{
  v1 = result[1];
  if ((v1 & 0x2000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *result;
    sub_2438799C8(*result, v1);
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return sub_243879A04(v2, v1);
  }

  return result;
}

uint64_t *sub_24387A8CC(uint64_t *result)
{
  v1 = result[1];
  if ((~v1 & 0x3000000000000000) != 0 && (v1 & 0x2000000000000000) != 0)
  {
    v2 = *result;
    sub_2438799C8(*result, v1);
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return sub_243879A04(v2, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24387A960(uint64_t a1)
{
  result = type metadata accessor for Ckcode_RecordTransport();
  v3 = a1 + *(result + 24);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_243873DE8(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return sub_2438729FC(v5, v4);
  }

  return result;
}

uint64_t static Ckcode_RecordTransport.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  v8 = v6 & 0x3000000000000000;
  if ((~v4 & 0x3000000000000000) == 0)
  {
    if (v8 == 0x3000000000000000)
    {
      v9 = sub_243876218();
      sub_2438799B4(v9, v10);
      v11 = sub_2438798C8();
      sub_2438799B4(v11, v12);
LABEL_4:
      v13 = sub_243876218();
      sub_243879A04(v13, v14);
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (v8 == 0x3000000000000000)
  {
LABEL_9:
    v24 = sub_243876218();
    sub_2438799B4(v24, v25);
    v26 = sub_2438798C8();
    sub_2438799B4(v26, v27);
    v28 = sub_243876218();
    sub_243879A04(v28, v29);
    v30 = sub_2438798C8();
LABEL_19:
    sub_243879A04(v30, v31);
    return 0;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      v70 = sub_243876218();
      sub_2438799B4(v70, v71);
      v72 = sub_243876218();
      sub_2438799B4(v72, v73);
      v74 = sub_243876218();
      sub_2438799B4(v74, v75);
      v76 = sub_2438798C8();
      sub_2438799B4(v76, v77);
      v78 = sub_2438798C8();
      sub_2438799B4(v78, v79);
      v80 = MEMORY[0x245D420F0](v5, v4 & 0xDFFFFFFFFFFFFFFFLL, v7, v6 & 0xDFFFFFFFFFFFFFFFLL);
      v81 = sub_243876218();
      sub_243879A18(v81, v82);
      v83 = sub_2438798C8();
      sub_243879A18(v83, v84);
      v85 = sub_2438798C8();
      sub_243879A04(v85, v86);
      v87 = sub_243876218();
      sub_243879A04(v87, v88);
      if (v80)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }

LABEL_17:
    v56 = sub_243876218();
    sub_2438799B4(v56, v57);
    v58 = sub_243876218();
    sub_2438799B4(v58, v59);
    v60 = sub_2438798C8();
    sub_2438799B4(v60, v61);
    v62 = sub_243876218();
    sub_243879A18(v62, v63);
    v64 = sub_2438798C8();
    sub_243879A18(v64, v65);
LABEL_18:
    v30 = sub_243876218();
    goto LABEL_19;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    goto LABEL_17;
  }

  v32 = sub_243876218();
  sub_2438799B4(v32, v33);
  v34 = sub_243876218();
  sub_2438799B4(v34, v35);
  v36 = sub_243876218();
  sub_2438799B4(v36, v37);
  v38 = sub_2438798C8();
  sub_2438799B4(v38, v39);
  v40 = sub_2438798C8();
  sub_2438799B4(v40, v41);
  v42 = sub_243876218();
  v43 = MEMORY[0x245D420F0](v42);
  v44 = sub_243876218();
  sub_243879A18(v44, v45);
  v46 = sub_2438798C8();
  sub_243879A18(v46, v47);
  v48 = sub_2438798C8();
  sub_243879A04(v48, v49);
  v50 = sub_243876218();
  sub_243879A04(v50, v51);
  v52 = sub_243876218();
  sub_243879A04(v52, v53);
  if ((v43 & 1) == 0)
  {
    return 0;
  }

LABEL_5:
  v15 = type metadata accessor for Ckcode_RecordTransport();
  v16 = *(v15 + 24);
  v18 = *(a1 + v16);
  v17 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v21 = *v19;
  v20 = v19[1];
  if (v17 >> 60 != 15)
  {
    if (v20 >> 60 != 15)
    {
      v67 = sub_24387B24C();
      v68 = MEMORY[0x245D420F0](v67);
      sub_2438729FC(v21, v20);
      sub_2438729FC(v18, v17);
      if (v68)
      {
        goto LABEL_22;
      }

      return 0;
    }

LABEL_15:
    v54 = sub_24387B24C();
    sub_2438729FC(v54, v55);
    sub_2438729FC(v21, v20);
    return 0;
  }

  if (v20 >> 60 != 15)
  {
    goto LABEL_15;
  }

  v22 = sub_24387B24C();
  sub_2438729FC(v22, v23);
LABEL_22:
  v69 = *(v15 + 20);
  type metadata accessor for UnknownStorage();
  sub_24387B204(&qword_27ED94758, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int Ckcode_RecordTransport.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Ckcode_RecordTransport();
  sub_24387B204(&qword_27ED94888, type metadata accessor for Ckcode_RecordTransport);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_24387AD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_24387B204(&qword_27ED94898, type metadata accessor for Ckcode_RecordTransport);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24387AE10(uint64_t a1)
{
  v2 = sub_24387B204(qword_280D49750, type metadata accessor for Ckcode_RecordTransport);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24387AE80()
{
  sub_24387B204(qword_280D49750, type metadata accessor for Ckcode_RecordTransport);

  return Message.hash(into:)();
}

void sub_24387B048()
{
  sub_243879628(319, &qword_280D49648);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_243879628(319, &qword_280D49650);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24387B104(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_24387B12C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24387B138(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 3 && *(a1 + 16))
    {
      v2 = *a1 + 2;
    }

    else
    {
      v2 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
      if (v2 >= 2)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_24387B184(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

uint64_t sub_24387B204(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24387B24C()
{
  sub_2438764C4(v1, v0);
  sub_2438764C4(v3, v2);
  return v1;
}

uint64_t sub_24387B27C()
{
  sub_2438799C8(v0, v2);

  return sub_2438799C8(v1, v3);
}

uint64_t sub_24387B2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[2] = a4;
  v26[0] = a2;
  v6 = *(a2 + 16);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v26 - v11;
  v13 = *(*(a3 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 + 16);
  v26[1] = a1;
  v22(v16, a1, a3);
  if (swift_dynamicCast())
  {
    sub_243873554(v12, 0, 1, v6);
    (*(v17 + 32))(v20, v12, v6);
    v23 = *(v27 + 8);
    (*v27)(v20);
    return (*(v17 + 8))(v20, v6);
  }

  else
  {
    sub_243873554(v12, 1, 1, v6);
    (*(v8 + 8))(v12, v7);
    v25 = *(v27 + 8);
    v28 = *v27;
    v29 = v25;

    swift_getWitnessTable();
    dispatch thunk of Message.traverse<A>(visitor:)();
  }
}

uint64_t sub_24387B588(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Sequence.forEach(_:)();
}

uint64_t sub_24387B690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v5 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  return Sequence.forEach(_:)();
}

uint64_t sub_24387B820(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 + 8);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_24387BA08(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  return sub_24387B820(a1, *(v1 + 72), *(v1 + 80), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

uint64_t sub_24387BA7C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24387BAC4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24387BB04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24387BBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v46 = a4;
  v8 = type metadata accessor for Optional();
  sub_24387C120();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  sub_24387C120();
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24387C120();
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v28 + 16);
  v45 = v5;
  v29(v20, v5, a2);
  if (swift_dynamicCast())
  {
    sub_243873554(v15, 0, 1, a3);
    v31 = *(v22 + 32);
    v30 = v22 + 32;
    v31(v27, v15, a3);
    v32 = sub_24387C084(a3, a3);
    v33 = *(v32 + 52);
    v34 = *(v30 + 40);
    v35 = (*(v30 + 48) + *(v32 + 48)) & ~*(v30 + 48);
    swift_allocObject();
    v36 = static Array._adoptStorage(_:count:)();
    v31(v37, v27, a3);
    type metadata accessor for Array();
  }

  else
  {
    sub_243873554(v15, 1, 1, a3);
    (*(v10 + 8))(v15, v8);
    v38 = swift_allocObject();
    *(v38 + 16) = static Array._allocateUninitialized(_:)();
    v39 = swift_allocObject();
    v39[2] = a2;
    v39[3] = a3;
    v40 = v44;
    v39[4] = v46;
    v39[5] = v40;
    v39[6] = v38;
    v47 = nullsub_1(sub_24387C074);
    v48 = v41;
    type metadata accessor for ExtractingVisitor();

    swift_getWitnessTable();
    v42 = v49;
    dispatch thunk of Message.traverse<A>(visitor:)();
    v36 = v48;

    if (!v42)
    {
      swift_beginAccess();
      v36 = *(v38 + 16);
    }
  }

  return v36;
}

uint64_t sub_24387BF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  type metadata accessor for Array();
  Array.append(_:)();
  return swift_endAccess();
}

uint64_t sub_24387C074(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_24387BF80(a1, v1[6], v1[2], v1[3]);
}

uint64_t sub_24387C084(uint64_t a1, uint64_t a2)
{
  if (sub_24387C0F0(a2))
  {

    return sub_243873884(&qword_27ED948A0, &unk_24389D640);
  }

  else
  {

    return MEMORY[0x2821FDC00]();
  }
}

uint64_t sub_24387C0F0(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24387C130(uint64_t a1, uint64_t a2)
{
  sub_24387C1D0(a2, v4);
  memset(v7, 0, sizeof(v7));
  v5 = a1;
  v6 = 0;
  sub_24387C240(v4, v7);
  sub_24387C2B0();
  dispatch thunk of Message.decodeMessage<A>(decoder:)();
  return sub_24387C304(&v5);
}

uint64_t sub_24387C1D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_243873884(&qword_27ED948A8, &unk_24389DB70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24387C240(uint64_t a1, uint64_t a2)
{
  v4 = sub_243873884(&qword_27ED948A8, &unk_24389DB70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24387C2B0()
{
  result = qword_280D49528[0];
  if (!qword_280D49528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D49528);
  }

  return result;
}

uint64_t sub_24387C358@<X0>(Swift::Int *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v86 = a2;
  v7 = v6;
  v83 = a1;
  v76 = a6;
  v87 = a3;
  v88 = a4;
  v78 = a5;
  v79 = a4;
  v89 = a5;
  v82 = type metadata accessor for SubstitutingVisitor();
  sub_24387C120();
  v80 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v77 = &v69 - v14;
  type metadata accessor for Optional();
  sub_24387C120();
  v74 = v16;
  v75 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v73 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v72 = &v69 - v21;
  sub_24387C120();
  v23 = v22;
  v25 = *(v24 + 64);
  v27 = MEMORY[0x28223BE20](v26);
  v70 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v71 = (&v69 - v29);
  MEMORY[0x28223BE20](v28);
  v31 = &v69 - v30;
  sub_24387C120();
  v33 = v32;
  v35 = *(v34 + 64);
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v69 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = *(v33 + 16);
  v40 = v33 + 16;
  v84 = v7;
  v81 = v41;
  v41(&v69 - v42, v7, a2);
  if (!swift_dynamicCast())
  {
    v71 = v23;
    v46 = swift_allocObject();
    *(v46 + 16) = v83;
    v72 = (v46 + 16);

    *(v46 + 24) = Array.startIndex.getter();
    v83 = (v46 + 24);
    v81(v39, v84, a2);
    v47 = swift_allocObject();
    v47[2] = a2;
    v47[3] = a3;
    v48 = v78;
    v47[4] = v79;
    v47[5] = v48;
    v47[6] = v46;
    v49 = v77;
    sub_24387E6B0(v39, sub_24387CC58, v47, a2, v77);

    v50 = v82;
    swift_getWitnessTable();
    v51 = v85;
    dispatch thunk of Message.traverse<A>(visitor:)();
    if (v51)
    {
      (*(v80 + 8))(v49, v50);
    }

    else
    {
      v84 = v40;
      v85 = v46;
      v79 = a2;
      v52 = v49;
      v53 = v72;
      swift_beginAccess();
      v54 = *v53;
      v55 = MEMORY[0x245D42520](v54, a3);
      v56 = v83;
      v57 = *v83;
      v58 = a3;
      if (*v83 == v55)
      {
        v59 = 1;
        v60 = v73;
      }

      else
      {
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          v65 = v70;
          v66 = v71;
          v71[2](v70, v54 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + v71[9] * v57, v58);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v25 != 8)
          {
LABEL_25:
            __break(1u);
            return result;
          }

          v90 = result;
          v65 = v70;
          v66 = v71;
          v71[2](v70, &v90, v58);
          swift_unknownObjectRelease();
          v56 = v83;
        }

        v60 = v73;
        v66[4](v73, v65, v58);
        Array.formIndex(after:)(v56);
        v59 = 0;
      }

      sub_243873554(v60, v59, 1, v58);
      swift_endAccess();
      v67 = sub_243873AA4(v60, 1, v58);
      (*(v74 + 8))(v60, v75);
      if (v67 == 1)
      {
        v81(v76, v52, v79);
      }

      else
      {
        sub_24387CC68();
        swift_allocError();
        *v68 = 1;
        swift_willThrow();
      }

      (*(v80 + 8))(v52, v82);
    }
  }

  (v23[1])(v31, a3);
  v43 = v83;
  v44 = MEMORY[0x245D42500](v83, a3);
  if (v44 == 1)
  {
    v86 = v43;
    type metadata accessor for Array();
    swift_getWitnessTable();
    v61 = v72;
    Collection.first.getter();
    result = sub_243873AA4(v61, 1, a3);
    if (result != 1)
    {
      v23[4](v71, v61, a3);
      return swift_dynamicCast();
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v44)
  {
    sub_24387CC68();
    swift_allocError();
    *v63 = 1;
  }

  else
  {
    sub_24387CC68();
    swift_allocError();
    *v45 = 0;
  }

  return swift_willThrow();
}

uint64_t sub_24387CAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = MEMORY[0x245D42520](v6, a2);
  v10 = *(a1 + 24);
  v8 = (a1 + 24);
  v9 = v10;
  if (v10 == v7)
  {
    v11 = a3;
    v12 = 1;
LABEL_6:
    sub_243873554(v11, v12, 1, a2);
    return swift_endAccess();
  }

  IsNativeType = Array._hoistableIsNativeTypeChecked()();
  Array._checkSubscript(_:wasNativeTypeChecked:)();
  if (IsNativeType)
  {
    (*(*(a2 - 8) + 16))(a3, v6 + ((*(*(a2 - 8) + 80) + 32) & ~*(*(a2 - 8) + 80)) + *(*(a2 - 8) + 72) * v9, a2);
LABEL_5:
    Array.formIndex(after:)(v8);
    v11 = a3;
    v12 = 0;
    goto LABEL_6;
  }

  result = _ArrayBuffer._getElementSlowPath(_:)();
  v15 = *(a2 - 8);
  if (*(v15 + 64) == 8)
  {
    v16 = result;
    (*(v15 + 16))(a3, &v16, a2);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_24387CC58@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  return sub_24387CAB0(v1[6], v1[3], a1);
}

unint64_t sub_24387CC68()
{
  result = qword_27ED948B0;
  if (!qword_27ED948B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED948B0);
  }

  return result;
}

uint64_t sub_24387CCBC(void *a1)
{
  sub_24387C1D0((v1 + 2), v12);
  if (!v13)
  {
    goto LABEL_5;
  }

  sub_24387C1D0(v12, v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_24387E12C(v11);
LABEL_5:
    v4 = MEMORY[0x277D837D0];
    v5 = *v1;
    v6 = *(v1 + 8);
    sub_24387E070();
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v5;
    *(v7 + 16) = v6;
    swift_willThrow();
    return sub_24387E0C4(v12);
  }

  v3 = a1[1];

  *a1 = v9;
  a1[1] = v10;
  sub_24387E12C(v11);
  return sub_24387E0C4(v12);
}

uint64_t sub_24387CDA8(uint64_t a1)
{
  sub_24387C1D0((v1 + 2), v10);
  if (!v11)
  {
    goto LABEL_5;
  }

  sub_24387C1D0(v10, v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_24387E12C(v9);
LABEL_5:
    v3 = MEMORY[0x277CC9318];
    v4 = *v1;
    v5 = *(v1 + 8);
    sub_24387E070();
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = v4;
    *(v6 + 16) = v5;
    swift_willThrow();
    return sub_24387E0C4(v10);
  }

  sub_243873E40(*a1, *(a1 + 8));
  *a1 = v8;
  sub_24387E12C(v9);
  return sub_24387E0C4(v10);
}

uint64_t sub_24387CE94(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24387C1D0((v2 + 2), v14);
  if (!v15)
  {
    goto LABEL_5;
  }

  sub_24387C1D0(v14, v13);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_24387E12C(v13);
LABEL_5:
    v9 = *v2;
    v10 = *(v2 + 8);
    sub_24387E070();
    swift_allocError();
    *v11 = a2;
    *(v11 + 8) = v9;
    *(v11 + 16) = v10;
    swift_willThrow();
    return sub_24387E0C4(v14);
  }

  (*(v5 + 8))(a1, a2);
  (*(v5 + 32))(a1, v8, a2);
  sub_24387E12C(v13);
  return sub_24387E0C4(v14);
}

uint64_t sub_24387D014(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  sub_24387C1D0((v2 + 2), v14);
  sub_243873884(&qword_27ED948A8, &unk_24389DB70);
  if (swift_dynamicCast())
  {
    (*(v6 + 8))(a1, v5);
    (*(v6 + 32))(a1, v9, v5);
  }

  else
  {
    v10 = *v2;
    v11 = *(v2 + 8) | 0x40;
    sub_24387E070();
    swift_allocError();
    *v12 = a2;
    *(v12 + 8) = v10;
    *(v12 + 16) = v11;
    swift_willThrow();
  }

  return sub_24387E0C4(v14);
}

uint64_t sub_24387D190()
{
  v4 = sub_24387E528();
  v5 = sub_24387C1D0(v4, v15);
  if (!v16)
  {
    goto LABEL_5;
  }

  sub_24387E698(v5, v6);
  sub_243873884(v3, v2);
  if ((sub_24387E544() & 1) == 0)
  {
    sub_24387E12C(v14);
LABEL_5:
    v8 = *v0;
    v9 = *(v0 + 8) | 0x80u;
    sub_24387E070();
    v10 = sub_24387E560();
    sub_24387E4F8(v10, v11);
    return sub_24387E0C4(v15);
  }

  v7 = *v1;

  *v1 = v13;
  sub_24387E12C(v14);
  return sub_24387E0C4(v15);
}

uint64_t sub_24387D254(uint64_t *a1, uint64_t a2)
{
  sub_24387C1D0((v2 + 2), v12);
  if (!v13)
  {
    goto LABEL_5;
  }

  sub_24387C1D0(v12, v11);
  type metadata accessor for Array();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_24387E12C(v11);
LABEL_5:
    v6 = *v2;
    v7 = *(v2 + 8) | 0x80;
    sub_24387E070();
    swift_allocError();
    *v8 = a2;
    *(v8 + 8) = v6;
    *(v8 + 16) = v7;
    swift_willThrow();
    return sub_24387E0C4(v12);
  }

  v5 = *a1;

  *a1 = v10;
  sub_24387E12C(v11);
  return sub_24387E0C4(v12);
}

uint64_t sub_24387D354()
{
  result = *v0;
  if ((v0[1] & 1) == 0)
  {
    *v0 = 0;
    *(v0 + 8) = 1;
  }

  return result;
}

uint64_t sub_24387D370()
{
  v1 = sub_24387E518();
  v2 = sub_24387C1D0(v1, v9);
  if (!v10)
  {
    goto LABEL_5;
  }

  sub_24387E698(v2, v3);
  if ((sub_24387E544() & 1) == 0)
  {
    sub_24387E12C(v8);
LABEL_5:
    sub_24387E600();
    v4 = sub_24387E560();
    sub_24387E4F8(v4, v5);
    return sub_24387E0C4(v9);
  }

  *v0 = v7;
  sub_24387E12C(v8);
  return sub_24387E0C4(v9);
}

uint64_t sub_24387D448()
{
  v1 = sub_24387E518();
  v2 = sub_24387C1D0(v1, v9);
  if (!v10)
  {
    goto LABEL_5;
  }

  sub_24387E698(v2, v3);
  if ((sub_24387E544() & 1) == 0)
  {
    sub_24387E12C(v8);
LABEL_5:
    sub_24387E600();
    v4 = sub_24387E560();
    sub_24387E4F8(v4, v5);
    return sub_24387E0C4(v9);
  }

  *v0 = v7;
  sub_24387E12C(v8);
  return sub_24387E0C4(v9);
}

uint64_t sub_24387D5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24387E588(a1, a2, a3, a4);
  if (!v10)
  {
    goto LABEL_5;
  }

  sub_24387C1D0(v9, v8);
  if ((sub_24387E658() & 1) == 0)
  {
    sub_24387E12C(v8);
LABEL_5:
    sub_24387E600();
    v5 = sub_24387E560();
    sub_24387E4F8(v5, v6);
    return sub_24387E0C4(v9);
  }

  *v4 = v11;
  sub_24387E12C(v8);
  return sub_24387E0C4(v9);
}

uint64_t sub_24387D680()
{
  v4 = sub_24387E528();
  sub_24387C1D0(v4, v11);
  sub_243873884(&qword_27ED948A8, &unk_24389DB70);
  sub_243873884(v3, v2);
  if (swift_dynamicCast())
  {
    v5 = v12;
    *v1 = v11[10];
    *(v1 + 4) = v5;
  }

  else
  {
    v6 = *v0;
    v7 = *(v0 + 8) | 0x40u;
    sub_24387E070();
    v8 = sub_24387E560();
    sub_24387E4F8(v8, v9);
  }

  return sub_24387E0C4(v11);
}

uint64_t sub_24387D74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24387E588(a1, a2, a3, a4);
  if (!v10)
  {
    goto LABEL_5;
  }

  sub_24387C1D0(v9, v8);
  if ((sub_24387E658() & 1) == 0)
  {
    sub_24387E12C(v8);
LABEL_5:
    sub_24387E600();
    v5 = sub_24387E560();
    sub_24387E4F8(v5, v6);
    return sub_24387E0C4(v9);
  }

  *v4 = v11;
  sub_24387E12C(v8);
  return sub_24387E0C4(v9);
}

uint64_t sub_24387D7EC()
{
  v4 = sub_24387E528();
  sub_24387C1D0(v4, v21);
  sub_243873884(&qword_27ED948A8, &unk_24389DB70);
  v5 = sub_243873884(v3, v2);
  sub_24387E578(v5, v6, v7, v8, v9, v10, v11, v12, v18);
  if (swift_dynamicCast())
  {
    *v1 = v19;
    *(v1 + 8) = v20;
  }

  else
  {
    v13 = *v0;
    v14 = *(v0 + 8) | 0x40u;
    sub_24387E070();
    v15 = sub_24387E560();
    sub_24387E4F8(v15, v16);
  }

  return sub_24387E0C4(v21);
}

uint64_t sub_24387D8B0()
{
  v1 = sub_24387E518();
  v2 = sub_24387C1D0(v1, v9);
  if (!v10)
  {
    goto LABEL_5;
  }

  sub_24387E698(v2, v3);
  if ((sub_24387E544() & 1) == 0)
  {
    sub_24387E12C(v8);
LABEL_5:
    sub_24387E600();
    v4 = sub_24387E560();
    sub_24387E4F8(v4, v5);
    return sub_24387E0C4(v9);
  }

  *v0 = v7;
  sub_24387E12C(v8);
  return sub_24387E0C4(v9);
}

uint64_t sub_24387D958()
{
  v1 = sub_24387E518();
  sub_24387C1D0(v1, v5);
  sub_243873884(&qword_27ED948A8, &unk_24389DB70);
  sub_243873884(&qword_27ED948E8, &qword_24389D878);
  if (swift_dynamicCast())
  {
    *v0 = v4;
  }

  else
  {
    sub_24387E5E4();
    sub_24387E560();
    sub_24387E5C8(v2, MEMORY[0x277D839B0]);
  }

  return sub_24387E0C4(v5);
}

uint64_t sub_24387DA5C()
{
  v1 = sub_24387E518();
  sub_24387C1D0(v1, v14);
  sub_243873884(&qword_27ED948A8, &unk_24389DB70);
  v2 = sub_243873884(&qword_27ED948D8, &qword_24389D868);
  sub_24387E578(v2, v3, v4, v5, v6, v7, v8, v9, v13);
  if (swift_dynamicCast())
  {
    v10 = *(v0 + 8);

    *v0 = v13;
  }

  else
  {
    sub_24387E5E4();
    sub_24387E560();
    sub_24387E5C8(v11, MEMORY[0x277D837D0]);
  }

  return sub_24387E0C4(v14);
}

uint64_t sub_24387DB60()
{
  v1 = sub_24387E518();
  sub_24387C1D0(v1, v13);
  sub_243873884(&qword_27ED948A8, &unk_24389DB70);
  v2 = sub_243873884(&qword_27ED948C8, &qword_24389D858);
  sub_24387E578(v2, v3, v4, v5, v6, v7, v8, v9, v12);
  if (swift_dynamicCast())
  {
    sub_2438729FC(*v0, *(v0 + 8));
    *v0 = v12;
  }

  else
  {
    sub_24387E5E4();
    sub_24387E560();
    sub_24387E5C8(v10, MEMORY[0x277CC9318]);
  }

  return sub_24387E0C4(v13);
}

uint64_t sub_24387DC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v8 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for Dictionary();
  return sub_24387CE94(a1, v9);
}

uint64_t sub_24387DD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24387E5B0(a1, a2, a3, a4);
  sub_24387E638();
  sub_24387E618();
  v5 = sub_24387E678();
  return sub_24387CE94(v4, v5);
}

unint64_t sub_24387E070()
{
  result = qword_27ED948B8;
  if (!qword_27ED948B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED948B8);
  }

  return result;
}

uint64_t sub_24387E0C4(uint64_t a1)
{
  v2 = sub_243873884(&qword_27ED948A8, &unk_24389DB70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24387E12C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 initializeBufferWithCopyOfBuffer for OneFieldDecoderError(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for OneFieldDecoderError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFE && *(a1 + 17))
    {
      v2 = *a1 + 16381;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 6) | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (((*(a1 + 16) >> 1) & 0x1F) << 7)))) ^ 0x3FFF;
      if (v2 >= 0x3FFD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for OneFieldDecoderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 16) = 0;
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 16) = (v3 >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_24387E288(uint64_t result, char a2)
{
  v2 = *(result + 16) & 1 | (a2 << 6);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 16) = v2;
  return result;
}

uint64_t sub_24387E2B8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_24387E2D0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_24387E2E4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24387E338(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_24387E4F8(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v2;

  return swift_willThrow();
}

uint64_t sub_24387E544()
{

  return swift_dynamicCast();
}

uint64_t sub_24387E560()
{

  return swift_allocError();
}

uint64_t sub_24387E588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_24387C1D0(v4 + 16, va);
}

uint64_t sub_24387E5C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return swift_willThrow();
}

unint64_t sub_24387E5E4()
{
  v2 = *v0;
  v3 = *(v0 + 8) | 0x40u;

  return sub_24387E070();
}

unint64_t sub_24387E600()
{
  v2 = *v0;
  v3 = *(v0 + 8);

  return sub_24387E070();
}

uint64_t sub_24387E618()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_24387E638()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_24387E658()
{

  return swift_dynamicCast();
}

uint64_t sub_24387E678()
{

  return type metadata accessor for Dictionary();
}

uint64_t sub_24387E698(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);

  return sub_24387C1D0(va1, va);
}

uint64_t sub_24387E6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for SubstitutingVisitor();
  v9 = (a5 + *(result + 52));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t sub_24387E75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v16 - v10;
  v12 = v2 + *(a1 + 52);
  v13 = *(v12 + 8);
  (*v12)(v9);
  if (sub_243873AA4(v11, 1, v5) != 1)
  {
    return (*(*(v5 - 8) + 32))(a2, v11, v5);
  }

  (*(v7 + 8))(v11, v6);
  sub_24387CC68();
  swift_allocError();
  *v14 = 0;
  return swift_willThrow();
}

uint64_t *sub_24387E8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v38 = a1;
  v41 = *(a4 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  v12 = *(v10 + 40);
  v39[0] = v13;
  v39[1] = v11;
  v39[2] = v14;
  v40 = v12;
  v15 = type metadata accessor for SubstitutingVisitor();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  if (v11 == a4)
  {
    v40 = v11;
    v24 = sub_24387FE78(v39);
    v25 = v37;
    sub_24387E75C(a3, v24);
    if (v25)
    {
      return sub_24387FED8(v39);
    }

    v29 = *(a3 + 16);
    v30 = *(a3 + 32);
    sub_24387C130(v36, v39);
  }

  else
  {
    v20 = v19;
    v35 = v17;
    v21 = *(v41 + 16);
    v41 += 16;
    v32 = v21;
    v21(v9, v38, a4);
    v33 = a3;
    v34 = v4;
    sub_24387E6B0(v9, *(v4 + *(a3 + 52)), *(v4 + *(a3 + 52) + 8), a4, v20);

    swift_getWitnessTable();
    v22 = v37;
    dispatch thunk of Message.traverse<A>(visitor:)();
    if (v22)
    {
      return (*(v35 + 8))(v20, v15);
    }

    v40 = a4;
    v26 = sub_24387FE78(v39);
    v32(v26, v20, a4);
    v27 = *(v33 + 16);
    v28 = *(v33 + 32);
    sub_24387C130(v36, v39);
    (*(v35 + 8))(v20, v15);
  }

  return sub_24387E0C4(v39);
}

uint64_t sub_24387EBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a2;
  v17 = static Array._allocateUninitialized(_:)();
  v8 = MEMORY[0x245D42500](a1, a4);
  v9 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(v8);
  v14 = &v13;
  v16[0] = a1;
  MEMORY[0x28223BE20](v10);
  v12 = *(a3 + 16);
  v13 = *(a3 + 32);
  swift_getWitnessTable();
  Sequence.forEach(_:)();
  if (!v4)
  {
    v16[3] = v9;
    v16[0] = v17;

    sub_24387C130(v15, v16);
    sub_24387E0C4(v16);
  }
}

uint64_t sub_24387EDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(*(a6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = v13;
  v19[1] = v14;
  v19[2] = v15;
  v19[3] = v16;
  v17 = type metadata accessor for SubstitutingVisitor();
  result = sub_24387E75C(v17, v12);
  if (!v6)
  {
    swift_dynamicCast();
    type metadata accessor for Array();
    return Array.append(_:)();
  }

  return result;
}

uint64_t sub_24387EF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v31 = a4;
  v32 = a7;
  v30 = a3;
  v33 = a2;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v18;
  v36 = v17;
  v37 = a9;
  v38 = v19;
  v20 = type metadata accessor for SubstitutingVisitor();
  v34 = *(v20 - 8);
  v21 = *(v34 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v27 - v22;
  v28 = *(v13 + 16);
  v29 = v13 + 16;
  v28(v16, a1, a6);
  v35 = v31;
  v36 = a5;
  v37 = v32;
  v38 = a8;
  v24 = type metadata accessor for SubstitutingVisitor();
  sub_24387E6B0(v16, *(v33 + *(v24 + 52)), *(v33 + *(v24 + 52) + 8), a6, v23);

  swift_getWitnessTable();
  v25 = v39;
  dispatch thunk of Message.traverse<A>(visitor:)();
  if (!v25)
  {
    v28(v16, v23, a6);
    type metadata accessor for Array();
    Array.append(_:)();
  }

  return (*(v34 + 8))(v23, v20);
}

uint64_t sub_24387F16C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a2;
  v33 = a8;
  v11 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = MEMORY[0x245D423B0](a1, AssociatedTypeWitness, a5, AssociatedConformanceWitness);
  v15 = MEMORY[0x245D423A0](v14, AssociatedTypeWitness, a5, AssociatedConformanceWitness);
  v36 = v15;
  if (a3[3] == a5)
  {
    v31 = &v30;
    v35[0] = a1;
    v21 = MEMORY[0x28223BE20](v15);
    v27 = a3[2];
    v22 = a3[4];
    v29 = a3[5];
    MEMORY[0x28223BE20](v21);
    v30 = v23;
    v19 = type metadata accessor for Dictionary();
    swift_getWitnessTable();
    v24 = v34;
    Sequence.forEach(_:)();
    if (!v24)
    {
LABEL_5:
      v25 = v36;
      type metadata accessor for Dictionary();
      v35[3] = v19;
      v35[0] = v25;

      sub_24387C130(v32, v35);
      sub_24387E0C4(v35);
    }
  }

  else
  {
    v31 = &v30;
    v35[0] = a1;
    v16 = MEMORY[0x28223BE20](v15);
    v17 = a3[2];
    v18 = a3[4];
    v28 = a3[5];
    MEMORY[0x28223BE20](v16);
    v19 = type metadata accessor for Dictionary();
    swift_getWitnessTable();
    v20 = v34;
    Sequence.forEach(_:)();
    if (!v20)
    {
      goto LABEL_5;
    }
  }
}

uint64_t sub_24387F4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36 = a5;
  v37 = a4;
  v34 = a3;
  v35 = a10;
  v14 = *(*(a6 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v17;
  v18 = type metadata accessor for Optional();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v32 - v20;
  v22 = *(a11 + 8);
  v32 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v27 = &v32 - v26;
  (*(v24 + 16))(&v32 - v26, a1, AssociatedTypeWitness);
  v38 = v36;
  v39 = a6;
  v40 = a9;
  v41 = v35;
  v28 = type metadata accessor for SubstitutingVisitor();
  v29 = v42;
  sub_24387E75C(v28, v16);
  if (v29)
  {
    return (*(v24 + 8))(v27, AssociatedTypeWitness);
  }

  v31 = v33;
  swift_dynamicCast();
  sub_243873554(v21, 0, 1, v31);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Dictionary();
  return Dictionary.subscript.setter();
}

uint64_t sub_24387F760(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a10 + 8);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_24387F7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v46 = a5;
  v47 = a3;
  v40 = a1;
  v45 = a9;
  v43 = a4;
  v44 = a12;
  v16 = type metadata accessor for Optional();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v41 = &v34 - v18;
  v39 = *(a11 + 8);
  v42 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v19 = *(v36 + 64);
  v20 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v37 = &v34 - v21;
  v22 = *(a8 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a8;
  v50 = a6;
  v51 = a12;
  v52 = a10;
  v26 = type metadata accessor for SubstitutingVisitor();
  v48 = *(v26 - 8);
  v27 = *(v48 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v34 - v28;
  v35 = *(v22 + 16);
  v35(v25, a2, a8);
  v49 = v46;
  v50 = a6;
  v51 = v45;
  v52 = a10;
  v30 = type metadata accessor for SubstitutingVisitor();
  sub_24387E6B0(v25, *(v47 + *(v30 + 52)), *(v47 + *(v30 + 52) + 8), a8, v29);

  swift_getWitnessTable();
  v31 = v53;
  dispatch thunk of Message.traverse<A>(visitor:)();
  if (!v31)
  {
    (*(v36 + 16))(v37, v40, AssociatedTypeWitness);
    v32 = v41;
    v35(v41, v29, a8);
    sub_243873554(v32, 0, 1, a8);
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
  }

  return (*(v48 + 8))(v29, v26);
}

Swift::Int sub_24387FBE8(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x245D42800](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_24387FC4C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x245D42800](v1);
  return Hasher._finalize()();
}

uint64_t sub_24387FDD8(uint64_t a1)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  return sub_24387F760(a1, *(v1 + 88), *(v1 + 96), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
}

uint64_t *sub_24387FE78(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t *sub_24387FED8(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x245D42E40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubstitutingVisitorError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SubstitutingVisitorError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2438800B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_243880448();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24388013C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_243873AA4(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_243880278(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_243873554(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_243880448()
{
  result = qword_280D49640;
  if (!qword_280D49640)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280D49640);
  }

  return result;
}

unint64_t sub_243880494()
{
  result = qword_27ED94950;
  if (!qword_27ED94950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED94950);
  }

  return result;
}

__n128 sub_243880530()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  result = *(v0 + 48);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 80);
  v8 = *(v0 + 64);
  return result;
}

void sub_243880550()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];
}

uint64_t sub_243880568(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 32);
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1);
  v12 = *a2;
  return sub_2438806E0(v10);
}

uint64_t sub_243880638@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  sub_24388A608();
  v6 = *(v5 + 112);
  sub_24388A800();
  sub_24388A4E4();
  swift_beginAccess();
  sub_24388A608();
  v8 = *(v7 + 80);
  v9 = type metadata accessor for Optional();
  sub_243876174(v9);
  return (*(v10 + 16))(a1, &v1[v6]);
}

uint64_t sub_2438806E0(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  sub_24388A608();
  v6 = *(v5 + 112);
  sub_24388A800();
  sub_24388A61C();
  sub_24388A608();
  v8 = *(v7 + 80);
  v9 = type metadata accessor for Optional();
  sub_243876174(v9);
  (*(v10 + 40))(&v1[v6], a1);
  return swift_endAccess();
}

uint64_t sub_24388078C()
{
  sub_24388A5E0();
  v0 = *MEMORY[0x277D85000];
  sub_24388A768();
  v2 = *(v1 + 112);
  sub_24388A3F4();
  return sub_24388A5D4();
}

uint64_t sub_2438807EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  sub_24388A608();
  v6 = *(v5 + 120);
  sub_24388A800();
  sub_24388A4E4();
  swift_beginAccess();
  sub_24388A608();
  v8 = *(v7 + 88);
  v9 = type metadata accessor for Optional();
  sub_243876174(v9);
  return (*(v10 + 16))(a1, &v1[v6]);
}

uint64_t sub_243880894(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  sub_24388A608();
  v6 = *(v5 + 120);
  sub_24388A800();
  sub_24388A61C();
  sub_24388A608();
  v8 = *(v7 + 88);
  v9 = type metadata accessor for Optional();
  sub_243876174(v9);
  (*(v10 + 40))(&v1[v6], a1);
  return swift_endAccess();
}

uint64_t sub_243880940()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = (v0 + *(v3 + 128));
  v5 = *v4;
  v6 = v4[1];

  return sub_243876224();
}

void sub_243880990(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_243880AAC(v2);
}

void sub_2438809C0(void *a1)
{
  v2 = v1;
  v4 = [v2 configuration];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 container];
    [v5 setContainer_];
  }

  else
  {
    __break(1u);
  }
}

void *sub_243880A58()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = *(v3 + 136);
  sub_24388A4B4();
  v5 = *(v0 + v4);
  v6 = v5;
  return v5;
}

void sub_243880AAC(void *a1)
{
  sub_2438809C0(a1);
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  sub_24388A768();
  v6 = *(v5 + 136);
  sub_24388A590();
  v7 = *(v1 + v6);
  *(v1 + v6) = a1;
}

void (*sub_243880B10(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_243873964(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = *v1;
  v5 = *MEMORY[0x277D85000];
  sub_24388A768();
  v7 = *(v6 + 136);
  sub_24388A4E4();
  swift_beginAccess();
  v8 = *(v1 + v7);
  v3[3] = v8;
  v9 = v8;
  return sub_243880BAC;
}

void sub_243880BAC(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32);
  if (a2)
  {
    v6 = v3;
    sub_243880AAC(v3);
  }

  else
  {
    sub_243880AAC(*(*a1 + 24));
  }

  free(v2);
}

uint64_t sub_243880C18()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return sub_24388A614(*(v3 + 144));
}

uint64_t sub_243880C4C()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = *(v3 + 144);
  return sub_24388A580(v5);
}

uint64_t sub_243880C80()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  return sub_24388A614(*(v3 + 152));
}

uint64_t sub_243880CB4()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = *(v3 + 152);
  return sub_24388A580(v5);
}

void *sub_243880CE8()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0xA0));
  v2 = v1;
  return v1;
}

void sub_243880D38()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = *(v3 + 160);
  v5 = *(v0 + v4);
  *(v0 + v4) = v6;
}

double sub_243880D78@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_243880E10(v7);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_243880DBC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = *(a1 + 32);
  v8[0] = *a1;
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v9 = v6;
  sub_243880E88(v8[0], v2, v3, v4, v6);
  return sub_243880EE8(v8);
}

uint64_t sub_243880E10@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  sub_24388A768();
  v6 = v1 + *(v5 + 168);
  sub_24388A4E4();
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 1);
  v9 = *(v6 + 2);
  v10 = *(v6 + 3);
  *a1 = *v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  v11 = v6[32];
  *(a1 + 32) = v11;
  return sub_243880E88(v7, v8, v9, v10, v11);
}

uint64_t sub_243880E88(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else if (!a5)
  {

    return sub_243873DE8(result, a2);
  }

  return result;
}

uint64_t sub_243880EE8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *v1;
  v5 = *MEMORY[0x277D85000];
  sub_24388A768();
  v7 = *(v6 + 168);
  sub_24388A434();
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v12;
  v13 = *(v1 + 32);
  *(v1 + 32) = v3;
  return sub_243880F5C(v8, v9, v10, v11, v13);
}

uint64_t sub_243880F5C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else if (!a5)
  {

    return sub_243873E40(result, a2);
  }

  return result;
}

uint64_t sub_243880FBC()
{
  sub_24388A5E0();
  v0 = *MEMORY[0x277D85000];
  sub_24388A768();
  v2 = *(v1 + 168);
  sub_24388A3F4();
  return sub_24388A5D4();
}

double sub_24388101C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_24388109C(&v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_243881058(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v5[0] = *a1;
  v5[1] = v2;
  sub_2438764C4(v5[0], v2);
  return sub_2438810EC(v5);
}

uint64_t sub_24388109C@<X0>(uint64_t *a1@<X8>)
{
  sub_243880E10(&v4);
  result = v4;
  v3 = v5;
  if (v8)
  {
    sub_243880F5C(v4, v5, v6, v7, v8);
    result = 0;
    v3 = 0xF000000000000000;
  }

  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2438810EC(void *a1)
{
  v1 = a1[1];
  if (v1 >> 60 == 15)
  {
    v7 = 0u;
    v8 = 0u;
    v9 = 2;
    return sub_243880EE8(&v7);
  }

  else
  {
    *&v7 = *a1;
    *(&v7 + 1) = v1;
    v8 = 0uLL;
    v9 = 0;
    v3 = sub_24388A708();
    sub_243873DE8(v3, v4);
    sub_243880EE8(&v7);
    v5 = sub_24388A708();
    return sub_2438729FC(v5, v6);
  }
}

uint64_t (*sub_24388116C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  sub_24388109C(a1);
  return sub_2438811B4;
}

uint64_t sub_2438811B4(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v10 = *a1;
    v11 = v2;
    v5 = sub_24388A708();
    sub_2438764C4(v5, v6);
    sub_2438810EC(&v10);
    v7 = sub_24388A708();

    return sub_2438729FC(v7, v8);
  }

  else
  {
    v10 = *a1;
    v11 = v2;
    return sub_2438810EC(&v10);
  }
}

uint64_t sub_243881234()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = *(v3 + 176);
  sub_24388A4B4();
  return *(v0 + v4);
}

uint64_t sub_243881280(char a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  sub_24388A768();
  v6 = *(v5 + 176);
  result = sub_24388A590();
  *(v1 + v6) = a1;
  return result;
}

uint64_t sub_2438812D8()
{
  sub_24388A5E0();
  v0 = *MEMORY[0x277D85000];
  sub_24388A768();
  v2 = *(v1 + 176);
  sub_24388A3F4();
  return sub_24388A5D4();
}

void *sub_243881338()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0xB8));
  v2 = v1;
  return v1;
}

void sub_243881384(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2438819B4(a1, *v4);
  if (!v9 || (v10 = sub_24388ECDC(a2, a3, v9), , !v10) || (v11 = sub_24388ED30(a4, v10), , !v11))
  {
    v12 = objc_allocWithZone(MEMORY[0x277CBC510]);
    v13 = a1;

    sub_2438814C8([v12 init], v13, a2, a3);
    v11 = 0;
  }

  v14 = sub_2438819B4(a1, *v4);
  if (!v14)
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = sub_24388ECDC(a2, a3, v14);
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = sub_24388ED30(a4, v15);

  if (v16)
  {

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_2438814C8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = a2;
  v11 = sub_2438819B4(v10, v9);

  if (v11)
  {
  }

  else
  {
    v12 = v10;
    v13 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = *v5;
    sub_243899208(MEMORY[0x277D84F98], v12, isUniquelyReferenced_nonNull_native);

    v9 = v63;
    *v5 = v63;
  }

  v15 = v10;

  v16 = sub_2438819B4(v15, v9);
  if (!v16)
  {
    goto LABEL_36;
  }

  v17 = v16;
  v61 = a1;

  v18 = sub_24388ECDC(a3, a4, v17);

  if (v18)
  {
  }

  else
  {
    v19 = v15;
    swift_bridgeObjectRetain_n();
    v20 = v19;
    v21 = *v5;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v5;
    v64 = *v5;
    v24 = sub_243898F8C();
    v26 = *(v23 + 16);
    v27 = (v25 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v29 = v24;
    v30 = v25;
    sub_243873884(&unk_27ED94E80, &unk_24389E390);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v22, v28))
    {
      v31 = sub_243898F8C();
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_37;
      }

      v29 = v31;
    }

    if ((v30 & 1) == 0)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v33 = *(*(v64 + 56) + 8 * v29);

    swift_isUniquelyReferenced_nonNull_native();
    sub_2438990D8();

    if (v33)
    {
      *(*(v64 + 56) + 8 * v29) = v33;
    }

    else
    {

      sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
      sub_243873884(&unk_27ED94E90, &unk_24389DF30);
      sub_243889FD8();
      _NativeDictionary._delete(at:)();
    }

    *v5 = v64;
  }

  v34 = v15;
  swift_bridgeObjectRetain_n();
  v35 = v34;
  v36 = *v5;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v5;
  v65 = *v5;
  v39 = sub_243898F8C();
  v41 = *(v38 + 16);
  v42 = (v40 & 1) == 0;
  v43 = v41 + v42;
  if (__OFADD__(v41, v42))
  {
    __break(1u);
    goto LABEL_31;
  }

  v44 = v39;
  v45 = v40;
  sub_243873884(&unk_27ED94E80, &unk_24389E390);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v37, v43))
  {
    v46 = sub_243898F8C();
    if ((v45 & 1) == (v47 & 1))
    {
      v44 = v46;
      goto LABEL_20;
    }

LABEL_37:
    sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
    goto LABEL_38;
  }

LABEL_20:
  if ((v45 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v48 = *(*(v65 + 56) + 8 * v44);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v62 = v48;
  v50 = sub_243898EF4(a3, a4);
  v52 = *(v48 + 16);
  v53 = (v51 & 1) == 0;
  v54 = v52 + v53;
  if (__OFADD__(v52, v53))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v55 = v50;
  v56 = v51;
  sub_243873884(&unk_27ED94EA0, &unk_24389E3A0);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v49, v54))
  {
    v57 = sub_243898EF4(a3, a4);
    if ((v56 & 1) != (v58 & 1))
    {
LABEL_38:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v55 = v57;
  }

  if ((v56 & 1) == 0)
  {
    goto LABEL_33;
  }

  v59 = *(*(v48 + 56) + 8 * v55);

  v60 = v61;
  swift_isUniquelyReferenced_nonNull_native();
  sub_243898FCC();
  if (v59)
  {

    *(*(v62 + 56) + 8 * v55) = v59;
  }

  else
  {

    sub_24388A040(*(v62 + 48) + 16 * v55);
    sub_243873884(&qword_27ED94B10, &qword_24389DF40);
    _NativeDictionary._delete(at:)();
  }

  *(*(v65 + 56) + 8 * v44) = v62;

  *v5 = v65;
}

uint64_t sub_2438819B4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_243898F8C();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

void sub_243881A04(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_243899208(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v16;
  }

  else
  {
    v7 = *v2;
    v8 = sub_243898F8C();
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v13 = *(*v3 + 24);
      sub_243873884(&unk_27ED94E80, &unk_24389E390);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13);

      v14 = *(*(v17 + 56) + 8 * v10);
      sub_24388A094(0, &unk_27ED94AF0, 0x277CBC5D0);
      sub_243873884(&unk_27ED94E90, &unk_24389DF30);
      sub_243889FD8();
      _NativeDictionary._delete(at:)();

      *v3 = v17;
    }

    else
    {
    }
  }
}

uint64_t sub_243881B7C()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = *(v3 + 192);
  sub_24388A4B4();
  v5 = *(v0 + v4);
}

void *CKCodeOperation.init(functionName:request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = MEMORY[0x277D85000];
  v9 = *MEMORY[0x277D85000];
  v10 = *MEMORY[0x277D85000] & *v3;
  v11 = *(v10 + 0x70);
  sub_243873554(v3 + v11, 1, 1, *(v10 + 0x50));
  sub_24388A3A8();
  sub_243873554(v3 + *(v12 + 120), 1, 1, *((v9 & v7) + 0x58));
  sub_24388A3A8();
  *(v3 + *(v13 + 136)) = 0;
  sub_24388A3A8();
  v15 = MEMORY[0x277D84F90];
  *(v3 + *(v14 + 144)) = MEMORY[0x277D84F90];
  *(v3 + *((*v8 & *v3) + 0x98)) = v15;
  sub_24388A3A8();
  *(v3 + *(v16 + 160)) = 0;
  sub_24388A3A8();
  v18 = v3 + *(v17 + 168);
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 2;
  sub_24388A3A8();
  *(v3 + *(v19 + 176)) = 0;
  sub_24388A3A8();
  *(v3 + *(v20 + 184)) = 0;
  v38 = *(v10 + 96);
  *(v3 + *((*v8 & *v3) + 0xC0)) = MEMORY[0x277D84F98];
  sub_24388A3A8();
  sub_24388A744(*(v21 + 200));
  sub_24388A3A8();
  sub_24388A744(*(v22 + 208));
  sub_24388A3A8();
  sub_24388A744(*(v23 + 216));
  sub_24388A3A8();
  sub_24388A744(*(v24 + 240));
  sub_24388A3A8();
  sub_24388A744(*(v25 + 248));
  sub_24388A61C();
  v26 = type metadata accessor for Optional();
  v27 = *(v26 - 8);
  (*(v27 + 24))(v3 + v11, a3, v26);
  swift_endAccess();
  sub_24388A3A8();
  v29 = (v3 + *(v28 + 128));
  *v29 = a1;
  v29[1] = a2;
  sub_24388A3A8();
  *(v3 + *(v30 + 232)) = 0;
  sub_24388A3A8();
  *(v3 + *(v31 + 224)) = 1;
  v39.receiver = v3;
  v39.super_class = type metadata accessor for CKCodeOperation();
  v32 = objc_msgSendSuper2(&v39, sel_init);
  type metadata accessor for CKCodeOperation.CallbackRelay();
  v33 = v32;
  v34 = sub_243881FEC(v33);
  (*(v27 + 8))(a3, v26);
  v35 = *((*v8 & *v33) + 0xB8);
  v36 = *(v33 + v35);
  *(v33 + v35) = v34;

  return v33;
}

uint64_t sub_243882020@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_243882120();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_24388A32C;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_243882090(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
  }

  v6 = *a2;
  sub_243871FA4(v3);
  return sub_24388216C();
}

uint64_t sub_243882120()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = *(v3 + 200);
  sub_24388A480();
  return sub_24388A458();
}

uint64_t sub_24388216C()
{
  sub_24388A5EC();
  v0 = *MEMORY[0x277D85000];
  sub_24388A768();
  v2 = *(v1 + 200);
  sub_24388A434();
  return sub_24388A824();
}

uint64_t sub_2438821C0()
{
  sub_24388A5E0();
  v0 = *MEMORY[0x277D85000];
  sub_24388A768();
  v2 = *(v1 + 200);
  sub_24388A3F4();
  return sub_24388A5D4();
}

uint64_t sub_243882220@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_243882320();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_24388A2DC;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_243882290(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
  }

  v6 = *a2;
  sub_243871FA4(v3);
  return sub_24388236C();
}

uint64_t sub_243882320()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = *(v3 + 208);
  sub_24388A480();
  return sub_24388A458();
}

uint64_t sub_24388236C()
{
  sub_24388A5EC();
  v0 = *MEMORY[0x277D85000];
  sub_24388A768();
  v2 = *(v1 + 208);
  sub_24388A434();
  return sub_24388A824();
}

uint64_t sub_2438823C0()
{
  sub_24388A5E0();
  v0 = *MEMORY[0x277D85000];
  sub_24388A768();
  v2 = *(v1 + 208);
  sub_24388A3F4();
  return sub_24388A5D4();
}

uint64_t sub_243882420@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v11 = *(a2 + a3 - 16);
  v12 = *(a2 + a3 - 32);
  v5 = *a1;
  result = sub_243882548();
  if (result)
  {
    v8 = result;
    v9 = v7;
    result = swift_allocObject();
    *(result + 16) = v12;
    *(result + 32) = v11;
    *(result + 48) = v8;
    *(result + 56) = v9;
    v10 = sub_24388A2AC;
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  a4[1] = result;
  return result;
}

uint64_t sub_2438824AC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    v9 = *(v7 - 16);
    *(v8 + 16) = *(v7 - 32);
    *(v8 + 32) = v9;
    *(v8 + 48) = v5;
    *(v8 + 56) = v6;
  }

  v10 = *a2;
  sub_243871FA4(v5);
  return sub_243882594();
}

uint64_t sub_243882548()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = *(v3 + 216);
  sub_24388A480();
  return sub_24388A458();
}

uint64_t sub_243882594()
{
  sub_24388A5EC();
  v0 = *MEMORY[0x277D85000];
  sub_24388A768();
  v2 = *(v1 + 216);
  sub_24388A434();
  return sub_24388A824();
}

uint64_t sub_2438825E8()
{
  sub_24388A5E0();
  v0 = *MEMORY[0x277D85000];
  sub_24388A768();
  v2 = *(v1 + 216);
  sub_24388A3F4();
  return sub_24388A5D4();
}

uint64_t sub_24388264C()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = *(v3 + 224);
  sub_24388A4B4();
  return *(v0 + v4);
}

uint64_t sub_243882698(char a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  sub_24388A768();
  v6 = *(v5 + 224);
  result = sub_24388A590();
  *(v1 + v6) = a1;
  return result;
}

uint64_t sub_2438826F0()
{
  sub_24388A5E0();
  v0 = *MEMORY[0x277D85000];
  sub_24388A768();
  v2 = *(v1 + 224);
  sub_24388A3F4();
  return sub_24388A5D4();
}

uint64_t sub_243882750()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = *(v3 + 232);
  sub_24388A4B4();
  return *(v0 + v4);
}

uint64_t sub_24388279C(char a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  sub_24388A768();
  v6 = *(v5 + 232);
  result = sub_24388A590();
  *(v1 + v6) = a1;
  return result;
}

uint64_t sub_2438827F4()
{
  sub_24388A5E0();
  v0 = *MEMORY[0x277D85000];
  sub_24388A768();
  v2 = *(v1 + 232);
  sub_24388A3F4();
  return sub_24388A5D4();
}

uint64_t sub_243882854@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1)@<X8>)
{
  v11 = *(a2 + a3 - 16);
  v12 = *(a2 + a3 - 32);
  v5 = *a1;
  result = sub_24388297C();
  if (result)
  {
    v8 = result;
    v9 = v7;
    result = swift_allocObject();
    *(result + 16) = v12;
    *(result + 32) = v11;
    *(result + 48) = v8;
    *(result + 56) = v9;
    v10 = sub_24388A274;
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  a4[1] = result;
  return result;
}

uint64_t sub_2438828E0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    v9 = *(v7 - 16);
    *(v8 + 16) = *(v7 - 32);
    *(v8 + 32) = v9;
    *(v8 + 48) = v5;
    *(v8 + 56) = v6;
  }

  v10 = *a2;
  sub_243871FA4(v5);
  return sub_2438829C8();
}

uint64_t sub_24388297C()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = *(v3 + 240);
  sub_24388A480();
  return sub_24388A458();
}

uint64_t sub_2438829C8()
{
  sub_24388A5EC();
  v0 = *MEMORY[0x277D85000];
  sub_24388A768();
  v2 = *(v1 + 240);
  sub_24388A434();
  return sub_24388A824();
}

uint64_t sub_243882A1C()
{
  sub_24388A5E0();
  v0 = *MEMORY[0x277D85000];
  sub_24388A768();
  v2 = *(v1 + 240);
  sub_24388A3F4();
  return sub_24388A5D4();
}

uint64_t sub_243882A7C()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = (v0 + *(v3 + 248));
  v5 = *v4;
  v6 = v4[1];
  v7 = sub_243876224();
  sub_243871FA4(v7);
  return sub_243876224();
}

uint64_t sub_243882ACC()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  sub_24388A4D4();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CKCodeOperation();
  if (objc_msgSendSuper2(&v4, sel_hasCKOperationCallbacksSet))
  {
    return 1;
  }

  result = sub_243882120();
  if (result || (result = sub_243882548()) != 0 || (result = sub_243882320()) != 0 || (result = sub_24388297C()) != 0)
  {
    sub_243871FB4(result);
    return 1;
  }

  return result;
}

uint64_t sub_243882B68(void *a1)
{
  v1 = a1;
  v2 = sub_243882ACC();

  return v2 & 1;
}

id sub_243882B9C()
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_24388A768();
  v4 = v3;
  v7 = *((v6 & v5) + 0x50);
  v8 = type metadata accessor for Optional();
  sub_243876204(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v16 = sub_243880A58();
  if (!v16 || (v16, sub_243880638(v15), v17 = sub_243873AA4(v15, 1, v7), (*(v10 + 8))(v15, v8), v17 == 1) || (v18 = [v0 resolvedConfiguration], v19 = objc_msgSend(v18, sel_isLongLived), v18, (v19 & 1) != 0))
  {
    sub_24388A714();
    related decl 'e' for CKErrorCode.init(_:description:)();
  }

  else
  {
    v26[0] = 0;
    v26[1] = v7;
    v22 = *(v4 + 104);
    v27 = *(v4 + 88);
    v28 = v22;
    v23 = type metadata accessor for CKCodeOperation();
    v25.receiver = v0;
    v25.super_class = v23;
    if (objc_msgSendSuper2(&v25, sel_CKOperationShouldRun_, v26))
    {
      result = v26[0];
      goto LABEL_8;
    }

    v24 = v26[0];
    _convertNSErrorToError(_:)();
  }

  result = swift_willThrow();
LABEL_8:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_243882E04(void *a1)
{
  v1 = a1;
  sub_243882B9C();

  return 1;
}

void sub_243882EA4()
{
  sub_24388A664();
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = *MEMORY[0x277D85000] & *v0;
  v117 = type metadata accessor for Google_Protobuf_Any();
  v4 = sub_243876204(v117);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_24388A424();
  v116 = v10 - v9;
  v11 = sub_243873884(&qword_27ED94960, &qword_24389CB10);
  v12 = sub_243876184(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_24388A414();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v122 = &v107 - v19;
  v20 = sub_24388A64C();
  v21 = type metadata accessor for Ckcode_ProtectedEnvelope(v20);
  v22 = sub_243876204(v21);
  v121 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_24388A424();
  v120 = v27 - v26;
  v28 = *((v2 & v1) + 0x50);
  v29 = type metadata accessor for Optional();
  sub_243876184(v29);
  v31 = *(v30 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v32);
  v34 = &v107 - v33;
  sub_24387C120();
  v36 = v35;
  v38 = *(v37 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v39);
  v41 = &v107 - v40;
  sub_243880638(v34);
  if (sub_243873AA4(v34, 1, v28) == 1)
  {
    goto LABEL_30;
  }

  v118 = v6;
  v119 = v21;
  v114 = v17;
  v115 = v0;
  v108 = v36;
  (*(v36 + 32))(v41, v34, v28);
  v42 = type metadata accessor for Ckcode_RecordTransport();
  v107 = v3;
  v43 = *(v3 + 96);
  sub_24388A3D0();
  v46 = sub_243888CF0(v44, v45);
  v110 = v41;
  v111 = v28;
  v109 = v43;
  v47 = sub_24387BBC4(v42, v28, v42, v43, v46);
  v48 = 0;
  v49 = *(v47 + 16);
  v50 = v42 - 8;
  v51 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v49 == v48)
    {

      sub_24388A508();
      v67 = sub_243888CF0(v65, v66);
      v68 = sub_24387BBC4(v119, v111, v119, v109, v67);
      v69 = *(v68 + 16);
      v71 = v114;
      v70 = v115;
      v72 = v122;
      if (!v69)
      {
LABEL_26:

        sub_243880C4C();
        sub_243880CB4();
        v104 = *(v107 + 88);
        v105 = *(v107 + 104);
        v103 = v111;
        v123 = v111;
        v124 = v104;
        v125 = v109;
        v126 = v105;
        v106 = type metadata accessor for CKCodeOperation();
        v127.receiver = v70;
        v127.super_class = v106;
        objc_msgSendSuper2(&v127, sel_performCKOperation);
LABEL_27:
        (*(v108 + 8))(v110, v103);
        sub_24388A67C();
        return;
      }

      v73 = 0;
      v74 = *(v121 + 80);
      sub_24388A634();
      v119 = v68 + v75;
      v112 = (v118 + 8);
      v113 = (v118 + 32);
      v118 = "localSerialization";
      v76 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v73 >= *(v68 + 16))
        {
          goto LABEL_29;
        }

        v77 = v120;
        sub_24388A0D4(v119 + *(v121 + 72) * v73, v120, type metadata accessor for Ckcode_ProtectedEnvelope);
        v78 = sub_243876224();
        sub_243888D38(v78, v79);
        sub_24388A130(v77, type metadata accessor for Ckcode_ProtectedEnvelope);
        v80 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
        if (sub_243873AA4(v72, 1, v80) != 1)
        {
          v81 = sub_24388A7DC();
          sub_243888D38(v81, v82);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v83 = *v113;
            v84 = sub_24388A7DC();
            v85(v84);
            sub_243888CF0(qword_280D49098, MEMORY[0x277D215C8]);
            v86 = Message.serializedData(partial:)();
            v88 = v87;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v94 = *(v76 + 2);
              v95 = sub_24388A5C4();
              v76 = sub_243888BE8(v95, v96, v97, v76);
            }

            v90 = *(v76 + 2);
            v89 = *(v76 + 3);
            if (v90 >= v89 >> 1)
            {
              v98 = sub_24388A5B0(v89);
              v76 = sub_243888BE8(v98, v99, v100, v76);
            }

            (*v112)(v116, v117);
            *(v76 + 2) = v90 + 1;
            v91 = &v76[16 * v90];
            *(v91 + 4) = v86;
            *(v91 + 5) = v88;
            v71 = v114;
            v70 = v115;
            goto LABEL_23;
          }

          sub_24388A130(v71, type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents);
        }

        sub_24388A714();
        v92 = related decl 'e' for CKErrorCode.init(_:description:)();
        v93 = _convertErrorToNSError(_:)();

        [v70 finishWithError_];
LABEL_23:
        ++v73;
        v72 = v122;
        sub_24387605C(v122, &qword_27ED94960, &qword_24389CB10);
        if (v69 == v73)
        {
          goto LABEL_26;
        }
      }
    }

    if (v48 >= *(v47 + 16))
    {
      break;
    }

    v52 = (v47 + ((*(*v50 + 80) + 32) & ~*(*v50 + 80)) + *(*v50 + 72) * v48);
    v53 = v52[1];
    if ((v53 & 0x2000000000000000) != 0)
    {

      sub_24388A714();
      v101 = related decl 'e' for CKErrorCode.init(_:description:)();
      v102 = _convertErrorToNSError(_:)();

      [v115 finishWithError_];
      v103 = v111;
      goto LABEL_27;
    }

    v54 = *v52;
    sub_2438799C8(*v52, v52[1]);
    sub_243873DE8(v54, v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = *(v51 + 2);
      v59 = sub_24388A5C4();
      v51 = sub_243888BE8(v59, v60, v61, v51);
    }

    v56 = *(v51 + 2);
    v55 = *(v51 + 3);
    if (v56 >= v55 >> 1)
    {
      v62 = sub_24388A5B0(v55);
      v51 = sub_243888BE8(v62, v63, v64, v51);
    }

    sub_243879A04(v54, v53);
    *(v51 + 2) = v56 + 1;
    v57 = &v51[16 * v56];
    *(v57 + 4) = v54;
    *(v57 + 5) = v53;
    ++v48;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  sub_24388A4A4();
  swift_unexpectedError();
  __break(1u);
}

void sub_243883684(void *a1)
{
  v1 = a1;
  sub_243882EA4();
}

uint64_t sub_2438836F8()
{
  sub_2438836CC();

  return swift_getObjCClassFromMetadata();
}

id sub_24388372C()
{
  v0 = sub_243883720();

  return v0;
}

void sub_24388376C(void *a1)
{
  v1 = a1;
  sub_243883754();
}

void sub_2438837D0(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  sub_2438837B4(a3);
}

id sub_243883844(void *a1)
{
  v1 = a1;
  v2 = sub_243883828();

  return v2;
}

void sub_243883888()
{
  sub_24388A664();
  v1 = v0;
  v3 = v2;
  v4 = *MEMORY[0x277D85000] & *v0;
  v5 = type metadata accessor for URL();
  v6 = sub_243876204(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_24388A424();
  v13 = v12 - v11;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClassUnconditional();
  v15 = sub_243880A58();
  if (!v15)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = v15;
  v17 = [v15 serviceName];

  if (!v17)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = MEMORY[0x245D42400](v18);
  }

  [v14 setServiceName_];

  v19 = sub_243880A58();
  if (!v19)
  {
    goto LABEL_20;
  }

  v20 = v19;
  v21 = [v19 serviceInstanceURL];

  if (v21)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v22);
    v24 = v23;
    (*(v8 + 8))(v13, v5);
  }

  else
  {
    v24 = 0;
  }

  [v14 setClientRuntimeProvidedServiceURL_];

  v25 = sub_243880A58();
  if (!v25)
  {
    goto LABEL_21;
  }

  v26 = v25;
  CKCodeService.databaseScope.getter();
  v28 = v27;

  [v14 setEnqueuedOnContainerService_];
  v29 = sub_243880A58();
  if (!v29)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v30 = v29;
  v31 = CKCodeService.databaseScope.getter();
  v33 = v32;

  if (v33)
  {
    v34 = 1;
  }

  else
  {
    v34 = v31;
  }

  [v14 setDatabaseScope_];
  v35 = sub_243880940();
  v36 = MEMORY[0x245D42400](v35);

  [v14 setFunctionName_];

  sub_243880C18();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setRequestLocalSerializations_];

  sub_243880C80();
  v38 = Array._bridgeToObjectiveC()().super.isa;

  [v14 setRequestLocalEnvelopes_];

  sub_243880E10(&v52);
  v39 = v53;
  if (v54)
  {
    if (v54 == 1)
    {
      [v14 setDataProtectionType_];
      v40 = sub_24388A5FC();
      v41 = MEMORY[0x245D42400](v40);

      [v14 setTrustedTargetDomain_];

      v42 = MEMORY[0x245D42400](v39, *(&v39 + 1));

      [v14 setTrustedTargetOID_];
    }

    else
    {
      [v14 setDataProtectionType_];
    }
  }

  else
  {
    v43 = sub_24388A5FC();
    sub_243873DE8(v43, v44);
    sub_24388A5FC();
    v45 = Data._bridgeToObjectiveC()().super.isa;
    v46 = sub_24388A5FC();
    sub_243880F5C(v46, v47, v39, *(&v39 + 1), 0);
    [v14 setPermittedRemoteMeasurement_];

    [v14 setDataProtectionType_];
    v48 = sub_24388A5FC();
    sub_243880F5C(v48, v49, v39, *(&v39 + 1), 0);
  }

  [v14 setShouldSendRecordPCSKeys_];
  [v14 setShouldFetchAssetContentInMemory_];
  v50 = *(v4 + 96);
  v52 = *(v4 + 80);
  v53 = v50;
  v51.receiver = v1;
  v51.super_class = type metadata accessor for CKCodeOperation();
  objc_msgSendSuper2(&v51, sel_fillOutOperationInfo_, v3);
  sub_24388A67C();
}

void sub_243883D08(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_243883888();
}

id sub_243883DDC(uint64_t a1)
{
  sub_24388A094(0, &qword_280D49658, 0x277CBC7B0);
  [swift_getObjCClassFromMetadata() applyDaemonCallbackInterfaceTweaks_];
  sub_24388A094(0, &qword_280D49670, 0x277CBC3E0);
  [swift_getObjCClassFromMetadata() applyDaemonCallbackInterfaceTweaks_];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = *(v1 + 80);
  v5 = *(v1 + 96);
  sub_24388A4D4();
  v6 = (*MEMORY[0x277D85000] & *type metadata accessor for CKCodeOperation());
  v8.receiver = ObjCClassFromMetadata;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_applyDaemonCallbackInterfaceTweaks_, a1);
}

void sub_243883EC0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjCClassMetadata();
  v4 = a3;
  sub_243883DDC(v4);
}

void sub_243883F10()
{
  sub_24388A664();
  v115 = v1;
  v3 = v2;
  v5 = v4;
  v124 = v6;
  v122 = v7;
  v8 = *v0;
  v9 = *MEMORY[0x277D85000];
  v119 = *MEMORY[0x277D85000] & *v0;
  v10 = type metadata accessor for Ckcode_ProtectedEnvelope(0);
  v11 = sub_243876204(v10);
  v120 = v12;
  v121 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_24388A424();
  v111 = v16 - v15;
  sub_24388A64C();
  v125 = type metadata accessor for Ckcode_RecordTransport();
  v17 = sub_243876204(v125);
  v123 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_24388A424();
  v23 = v22 - v21;
  v24 = *((v9 & v8) + 0x50);
  v25 = type metadata accessor for Optional();
  sub_243876184(v25);
  v27 = *(v26 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v28);
  v30 = &v107 - v29;
  sub_24387C120();
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  sub_24388A414();
  v38 = (v36 - v37);
  MEMORY[0x28223BE20](v39);
  v112 = &v107 - v40;
  sub_24388A6FC();
  MEMORY[0x28223BE20](v41);
  v43 = &v107 - v42;
  v113 = v0;
  sub_243880638(v30);
  if (sub_243873AA4(v30, 1, v24) == 1)
  {
    __break(1u);
  }

  else
  {
    v114 = v3;
    v44 = *(v32 + 32);
    v109 = v32 + 32;
    v110 = v38;
    v108 = v44;
    v44(v43, v30, v24);
    v45 = v122;
    v46 = *(v122 + 16);
    v47 = MEMORY[0x277D84F90];
    v117 = v32;
    v118 = v24;
    v116 = v43;
    if (v46)
    {
      v107 = v5;
      sub_24388A6CC(MEMORY[0x277D84F90]);
      sub_243899608();
      v49 = 0;
      v50 = v126;
      v122 = v45 + 32;
      do
      {
        v51 = *(v122 + 16 * v49);
        *&v52 = MEMORY[0x28223BE20](v48);
        *(&v107 - 2) = v52;
        v53 = v124;
        *(&v107 - 2) = v49;
        *(&v107 - 1) = v53;
        v54 = sub_24388A80C();
        sub_243873DE8(v54, v55);
        sub_24388A3D0();
        v57 = sub_243888CF0(qword_280D49750, v56);
        static Message.with(_:)();
        v58 = sub_24388A80C();
        sub_243873E40(v58, v59);
        v126 = v50;
        v60 = v50[2];
        if (v60 >= v50[3] >> 1)
        {
          sub_243899608();
          v50 = v126;
        }

        ++v49;
        v50[2] = v60 + 1;
        v61 = *(v123 + 80);
        sub_24388A634();
        v63 = *(v62 + 72);
        sub_24388A4F0();
        v48 = sub_24388A1C4(v23, v64, v65);
      }

      while (v46 != v49);
      v66 = v118;
      v67 = v112;
      v68 = v116;
      sub_24387C358(v50, v118, v125, *(v119 + 96), v57, v112);
      v32 = v117;
      v69 = *(v117 + 8);
      v70 = sub_24388A640();
      v71(v70);

      v108(v68, v67, v66);
      if (*MEMORY[0x277CBC810] == 1)
      {
        v72 = sub_243882A7C();
        v5 = v107;
        if (v72)
        {
          v72(v68);
          v73 = sub_243876224();
          sub_243871FB4(v73);
        }
      }

      else
      {
        v5 = v107;
      }

      v47 = MEMORY[0x277D84F90];
    }

    v74 = *(v5 + 16);
    if (v74)
    {
      sub_24388A6CC(v47);
      sub_2438995B0();
      v76 = v126;
      v77 = (v5 + 32);
      v78 = v111;
      do
      {
        v79 = *v77;
        *&v80 = MEMORY[0x28223BE20](v75);
        *(&v107 - 1) = v80;
        v81 = sub_24388A80C();
        sub_243873DE8(v81, v82);
        sub_24388A508();
        v125 = sub_243888CF0(&qword_280D496C0, v83);
        static Message.with(_:)();
        v84 = sub_24388A80C();
        sub_243873E40(v84, v85);
        v126 = v76;
        v86 = v76[2];
        if (v86 >= v76[3] >> 1)
        {
          sub_2438995B0();
          v76 = v126;
        }

        v76[2] = v86 + 1;
        v87 = *(v120 + 80);
        sub_24388A634();
        v75 = sub_24388A1C4(v78, v76 + v88 + *(v89 + 72) * v86, type metadata accessor for Ckcode_ProtectedEnvelope);
        ++v77;
        --v74;
      }

      while (v74);
      v90 = v118;
      v91 = v110;
      v92 = v116;
      sub_24387C358(v76, v118, v121, *(v119 + 96), v125, v110);
      v32 = v117;
      v94 = *(v117 + 8);
      v95 = sub_24388A640();
      v96(v95);

      v108(v92, v91, v90);
    }

    else
    {
      v93 = *(v119 + 96);
    }

    sub_24388EE30();
    v97 = Message.serializedData(partial:)();
    sub_243873DE8(v97, v98);
    v99 = sub_24388A7F4();
    v114(v99);
    v100 = sub_24388A7F4();
    sub_243873E40(v100, v101);
    v102 = sub_24388A7F4();
    sub_243873E40(v102, v103);
    v104 = *(v32 + 8);
    v105 = sub_24388A640();
    v106(v105);
    sub_24388A67C();
  }
}

uint64_t sub_243884680(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a3 | 0x2000000000000000;
  v10 = *a1;
  v11 = a1[1];
  sub_243873DE8(a2, a3);
  result = sub_243879A04(v10, v11);
  *a1 = a2;
  a1[1] = v9;
  if (*(a5 + 16) > a4)
  {
    if (a4 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_243889CD8(a5 + 32 * a4 + 32, v16);
      result = swift_dynamicCast();
      if (result)
      {
        v13 = a1 + *(type metadata accessor for Ckcode_RecordTransport() + 24);
        result = sub_2438729FC(*v13, *(v13 + 1));
        *v13 = v14;
        *(v13 + 1) = v15;
      }
    }
  }

  return result;
}

uint64_t sub_243884764(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  sub_24387605C(a1, &qword_27ED94960, &qword_24389CB10);
  *a1 = a2;
  a1[1] = a3;
  v6 = type metadata accessor for Ckcode_ProtectedEnvelope.OneOf_Contents(0);
  swift_storeEnumTagMultiPayload();
  sub_243873554(a1, 0, 1, v6);
  return sub_243873DE8(a2, a3);
}

void sub_2438847F8()
{
  sub_24388A664();
  v106 = v2;
  v107 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  v8 = *MEMORY[0x277D85000];
  v102 = type metadata accessor for Ckcode_RecordTransport();
  v9 = sub_243876204(v102);
  v109 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_24388A414();
  v110 = v13 - v14;
  sub_24388A6FC();
  MEMORY[0x28223BE20](v15);
  v101 = (v94 - v16);
  v17 = *((v8 & v7) + 0x58);
  v111 = type metadata accessor for Optional();
  sub_243876204(v111);
  v100 = v18;
  v20 = *(v19 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v21);
  sub_24388A738();
  v103 = v22;
  sub_24388A64C();
  v23 = type metadata accessor for BinaryDecodingOptions();
  v24 = sub_243876184(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_24388A424();
  sub_24387C120();
  v105 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  sub_24388A414();
  v104 = (v31 - v32);
  sub_24388A6FC();
  MEMORY[0x28223BE20](v33);
  v35 = v94 - v34;
  v115 = v6;
  v116 = v4;
  v114 = 0;
  v112 = 0u;
  v113 = 0u;
  v36 = v8 & v7;
  v37 = v17;
  v108 = v0;
  v38 = *(v36 + 104);
  sub_24388A79C();
  sub_24388EE30();
  v39 = sub_24388A708();
  sub_243873DE8(v39, v40);
  sub_24388A79C();
  j___s21InternalSwiftProtobuf21BinaryDecodingOptionsVACycfC();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v41 = *(v105 + 16);
  v42 = v103;
  v43 = sub_24388A7E8();
  v94[1] = v44;
  v94[0] = v45;
  v45(v43);
  sub_243873554(v42, 0, 1, v17);
  sub_243880894(v42);
  sub_24388A3D0();
  v48 = sub_243888CF0(v46, v47);
  v49 = v102;
  v98 = v37;
  v97 = v38;
  v96 = v48;
  v99 = v35;
  v50 = sub_24387BBC4(v102, v37, v102, v38, v48);
  v95 = 0;
  v51 = v50;
  v52 = 0;
  v53 = *(v50 + 16);
  v54 = MEMORY[0x277D84F90];
  v55 = v111;
  for (i = v49; ; v49 = i)
  {
    v57 = v110;
    if (v53 == v52)
    {
      break;
    }

    v58 = *(v51 + 16);
    if (v52 >= v58)
    {
      __break(1u);
      v93 = *(v58 - 256);
      goto LABEL_20;
    }

    v59 = *(v109 + 80);
    sub_24388A634();
    v62 = (v51 + v60 + *(v61 + 72) * v52);
    v63 = v62[1];
    if ((~v63 & 0x3000000000000000) == 0 || (v63 & 0x2000000000000000) == 0)
    {

      sub_24388A714();
      v90 = related decl 'e' for CKErrorCode.init(_:description:)();
      v91 = _convertErrorToNSError(_:)();

      [v108 finishWithError_];
      v92 = v90;
      v107(0, v90);

      (*(v105 + 8))(v99, v98);
LABEL_17:
      sub_24388A67C();
      return;
    }

    v64 = *v62;
    sub_2438799C8(*v62, v62[1]);
    sub_243873DE8(v64, v63 & 0xDFFFFFFFFFFFFFFFLL);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = *(v54 + 2);
      v69 = sub_24388A5C4();
      v54 = sub_243888BE8(v69, v70, v71, v54);
    }

    v66 = *(v54 + 2);
    v65 = *(v54 + 3);
    if (v66 >= v65 >> 1)
    {
      v54 = sub_243888BE8((v65 > 1), v66 + 1, 1, v54);
    }

    sub_243879A04(v64, v63);
    *(v54 + 2) = v66 + 1;
    v67 = &v54[16 * v66];
    *(v67 + 4) = v64;
    *(v67 + 5) = v63 & 0xDFFFFFFFFFFFFFFFLL;
    ++v52;
    v55 = v111;
  }

  v72 = v101;
  *v101 = xmmword_24389D0D0;
  v73 = v72 + *(v49 + 20);
  UnknownStorage.init()();
  *(v72 + *(v49 + 24)) = xmmword_24389CB00;
  sub_24388A538();
  sub_24388A0D4(v72, v57, v74);
  v75 = *(v54 + 2);

  v76 = sub_24388EE3C(v57, v75);
  v77 = v98;
  v78 = v49;
  v79 = v99;
  v80 = v95;
  sub_24387C358(v76, v98, v78, v97, v96, v104);
  if (!v80)
  {

    v81 = v107;
    v82 = v105;
    if (*(v54 + 2))
    {
      v83 = sub_24388297C();
      if (v83)
      {
        v84 = v83;
        v85 = v103;
        (v94[0])(v103, v104, v77);
        sub_243873554(v85, 0, 1, v77);
        v84(v85);
        v86 = sub_243876224();
        sub_243871FB4(v86);
        v87 = v85;
        v79 = v99;
        (*(v100 + 8))(v87, v55);
      }
    }

    v81(v54, 0);

    v88 = *(v82 + 8);
    v88(v104, v77);
    sub_24388A520();
    sub_24388A130(v72, v89);
    v88(v79, v77);
    goto LABEL_17;
  }

  sub_24388A4A4();
LABEL_20:
  swift_unexpectedError();
  __break(1u);
}

void sub_243884F10()
{
  sub_24388A664();
  v2 = v1;
  v3 = *v0;
  v4 = *MEMORY[0x277D85000];
  sub_24388A768();
  v78 = v5;
  v89 = v0;
  v8 = *((v7 & v6) + 0x58);
  sub_24387C120();
  v10 = v9;
  v12 = *(v11 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v13);
  sub_24388A738();
  v84 = v14;
  sub_24388A64C();
  v15 = type metadata accessor for Optional();
  v16 = sub_243876204(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_24388A414();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v83 = &v75 - v25;
  sub_24388A6FC();
  MEMORY[0x28223BE20](v26);
  v28 = &v75 - v27;
  v77 = type metadata accessor for Ckcode_RecordTransport();
  v29 = sub_243876204(v77);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  sub_24388A414();
  v36 = v34 - v35;
  v38.n128_f64[0] = MEMORY[0x28223BE20](v37);
  v40 = (&v75 - v39);
  if (v2 >> 62)
  {
LABEL_21:
    if (v2 < 0)
    {
      v74 = v2;
    }

    else
    {
      v74 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v41 = MEMORY[0x245D42700](v74, v38);
    if (!v41)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v41 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v41)
    {
      goto LABEL_18;
    }
  }

  v75 = v10;
  v76 = v23;
  v81 = v8;
  v82 = v28;
  v79 = v18;
  v80 = v15;
  v10 = 0;
  v18 = 0;
  v88 = v2 & 0xC000000000000001;
  v85 = v2 & 0xFFFFFFFFFFFFFF8;
  v28 = MEMORY[0x277D84F90];
  v86 = v41;
  v87 = v2;
  do
  {
    if (v88)
    {
      v42 = MEMORY[0x245D426C0](v10, v2, v38);
    }

    else
    {
      if (v10 >= *(v85 + 16))
      {
        goto LABEL_20;
      }

      v42 = *(v2 + 8 * v10 + 32);
    }

    v8 = v42;
    v23 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_24388545C(v42);
    v15 = v8;
    Ckcode_RecordTransport.init(_:)(v15, v40);
    sub_24388A538();
    sub_24388A0D4(v40, v36, v43);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = *(v28 + 2);
      v52 = sub_24388A5C4();
      v28 = sub_243888DF0(v52, v53, v54, v28);
    }

    v45 = *(v28 + 2);
    v44 = *(v28 + 3);
    v8 = (v45 + 1);
    if (v45 >= v44 >> 1)
    {
      v55 = sub_24388A5B0(v44);
      v28 = sub_243888DF0(v55, v56, v57, v28);
    }

    sub_24388A520();
    sub_24388A130(v40, v46);
    *(v28 + 2) = v8;
    v47 = *(v31 + 80);
    sub_24388A634();
    v48 = *(v31 + 72);
    sub_24388A4F0();
    sub_24388A1C4(v36, v49, v50);
    ++v10;
    v2 = v87;
  }

  while (v23 != v86);
  v58 = v83;
  sub_2438807EC(v83);
  v59 = v81;
  if (sub_243873AA4(v58, 1, v81))
  {

    v61 = v79;
    v60 = v80;
    v62 = *(v79 + 8);
    v62(v58, v80);
    v63 = 1;
  }

  else
  {
    v66 = v75;
    (*(v75 + 16))(v84, v58, v59);
    v61 = v79;
    v60 = v80;
    v62 = *(v79 + 8);
    v62(v58, v80);
    v67 = *(v78 + 104);
    sub_24388A3D0();
    v70 = sub_243888CF0(v68, v69);
    sub_24387C358(v28, v59, v77, v67, v70, v82);
    v71 = *(v66 + 8);
    v72 = sub_24388A7DC();
    v73(v72);

    v63 = 0;
  }

  v64 = v82;
  sub_243873554(v82, v63, 1, v59);
  v65 = v76;
  (*(v61 + 16))(v76, v64, v60);
  sub_243880894(v65);
  v62(v64, v60);
LABEL_18:
  sub_24388A67C();
}

void sub_24388545C(void *a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v4 = [a1 recordID];
  v5 = sub_243881B7C();
  v6 = *((v3 & v2) + 0x50);
  v7 = *((v3 & v2) + 0x58);
  v8 = *((v3 & v2) + 0x60);
  v63 = v1;
  v9 = *((v3 & v2) + 0x68);
  v10 = sub_2438819B4(v4, v5);

  if (!v10)
  {
    goto LABEL_48;
  }

  v11 = 0;
  v12 = v10 + 64;
  v13 = 1 << *(v10 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v10 + 64);
  v16 = (v13 + 63) >> 6;
  v62 = v10;
  v60 = v16;
  v61 = v10 + 64;
  if (!v15)
  {
LABEL_7:
    while (1)
    {
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v17 >= v16)
      {
        goto LABEL_47;
      }

      v15 = *(v12 + 8 * v17);
      ++v11;
      if (v15)
      {
        goto LABEL_10;
      }
    }

LABEL_50:
    __break(1u);
  }

LABEL_6:
  v17 = v11;
LABEL_10:
  v18 = __clz(__rbit64(v15));
  v15 &= v15 - 1;
  v19 = v18 | (v17 << 6);
  v20 = (*(v10 + 48) + 16 * v19);
  v21 = *v20;
  v22 = v20[1];
  v23 = *(*(v10 + 56) + 8 * v19);

  v59 = v21;
  v24 = MEMORY[0x245D42640](v21, v22);
  v25 = v24;
  v26 = 0;
  v27 = v23 + 64;
  v28 = 1 << *(v23 + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & *(v23 + 64);
  v31 = (v28 + 63) >> 6;
  v65 = v23;
  v66 = v24;
  v64 = v31;
  if (!v30)
  {
LABEL_15:
    while (1)
    {
      v32 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v32 >= v31)
      {

        swift_unknownObjectRelease();

        v11 = v17;
        v10 = v62;
        v16 = v60;
        v12 = v61;
        if (!v15)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      v30 = *(v27 + 8 * v32);
      ++v26;
      if (v30)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  while (1)
  {
    v32 = v26;
LABEL_18:
    v33 = (v32 << 9) | (8 * __clz(__rbit64(v30)));
    v67 = *(*(v23 + 56) + v33);
    if (!v25)
    {
LABEL_46:
      v57 = v67;
      _StringGuts.grow(_:)(46);

      MEMORY[0x245D42450](v59, v22);

      related decl 'e' for CKErrorCode.init(_:description:)();
      swift_willThrow();
      swift_unknownObjectRelease();

      goto LABEL_47;
    }

    v34 = *(*(v23 + 48) + v33);
    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    if (v35)
    {
      v36 = v35;
      v37 = v67;
      if (v34 < 0)
      {
      }

      else
      {
        swift_unknownObjectRetain();
        if (v34 < [v36 count])
        {
          v38 = [v36 objectAtIndexedSubscript_];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_24388A094(0, &qword_280D49520, 0x277CBC190);
          swift_dynamicCast();
          v39 = v68;
          goto LABEL_25;
        }

        swift_unknownObjectRelease();
      }

      related decl 'e' for CKErrorCode.init(_:description:)();
      swift_willThrow();

      swift_unknownObjectRelease();
      goto LABEL_45;
    }

    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (!v40)
    {
      goto LABEL_46;
    }

    v39 = v40;
    swift_unknownObjectRetain_n();
    v41 = v67;
LABEL_25:
    if (*MEMORY[0x277CBC810] == 1)
    {
      v42 = MEMORY[0x245D42400](0xD000000000000018, 0x80000002438A1B50);
      v43 = [v63 _BOOLForUnitTestOverride_defaultValue_];

      if (v43)
      {
        break;
      }
    }

    sub_24388A4E4();
    v46 = [v44 v45];
    v47 = 0;
    if (!v46)
    {
      v56 = v47;

      _convertNSErrorToError(_:)();

      goto LABEL_44;
    }

    v30 &= v30 - 1;
    v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    switch(v50 >> 62)
    {
      case 1uLL:
        v51 = v48;
        v52 = v48 >> 32;
        goto LABEL_32;
      case 2uLL:
        v51 = *(v48 + 16);
        v52 = *(v48 + 24);
        goto LABEL_32;
      case 3uLL:
        goto LABEL_51;
      default:
        v51 = 0;
        v52 = BYTE6(v50);
LABEL_32:
        if (v51 == v52)
        {
LABEL_51:
          __break(1u);
          return;
        }

        sub_24388A7E8();
        isa = Data._bridgeToObjectiveC()().super.isa;
        [v39 setAssetContent_];

        v54 = sub_24388A7E8();
        sub_243873E40(v54, v55);

        v26 = v32;
        v23 = v65;
        v25 = v66;
        v31 = v64;
        if (!v30)
        {
          goto LABEL_15;
        }

        break;
    }
  }

  [v39 setAssetContent_];
  type metadata accessor for CKError(0);
  sub_2438975D8(MEMORY[0x277D84F90]);
  sub_243888CF0(&qword_27ED94718, type metadata accessor for CKError);
  _BridgedStoredNSError.init(_:userInfo:)();
LABEL_44:
  swift_willThrow();
  swift_unknownObjectRelease();

LABEL_45:

LABEL_47:

LABEL_48:
  v58 = *MEMORY[0x277D85DE8];
}

void sub_243885B3C()
{
  sub_24388A664();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v9 = *MEMORY[0x277D85000];
  sub_24388A768();
  v10 = type metadata accessor for Logger();
  v11 = sub_243876204(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_24388A424();
  v18 = v17 - v16;
  if (v7)
  {
    v19 = sub_243882120();
    if (!v19)
    {
      v32 = v7;
      v33 = v3;
      goto LABEL_14;
    }

    v21 = v19;
    v22 = v20;
    v23 = v7;
    v24 = v23;
    if (v5)
    {
      v7 = v21;
      v21 = v22;
      v25 = v5;
      v24 = v1;
      sub_24388545C(v25);

      sub_24388A720();
      if (!v3)
      {
        v42 = v25;
        v22(v1, v5, 0);
        goto LABEL_13;
      }
    }

    else if (!v3)
    {
      v34 = v23;
      _StringGuts.grow(_:)(67);
      MEMORY[0x245D42450](0xD00000000000003DLL, 0x80000002438A1AE0);
      sub_24388A788();
      type metadata accessor for CKCodeOperation();
      swift_getWitnessTable();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      MEMORY[0x245D42450](8250, 0xE200000000000000);
      v35 = [v34 description];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      MEMORY[0x245D42450](v36, v38);

      v3 = related decl 'e' for CKErrorCode.init(_:description:)();
      v39 = v3;
      v21(v34, v3, 1);

      v40 = sub_24388A5FC();
      sub_243871FB4(v40);
      goto LABEL_14;
    }

    v41 = v3;
    v42 = _convertErrorToNSError(_:)();
    v43 = [v42 CKClientSuitableError];
    v21(v24, v43, 1);

LABEL_13:
    v44 = sub_24388A5FC();
    sub_243871FB4(v44);

LABEL_14:
    if (sub_243882750() & 1) != 0 && (sub_24388264C())
    {
      v45 = *((*MEMORY[0x277D85000] & *v1) + 0xC0);
      sub_24388A61C();
      v46 = v7;
      sub_24388A788();
      type metadata accessor for CKCodeOperation.AssetInfo();
      sub_243881A04(0, v46);
      swift_endAccess();
    }

    if (v3)
    {
      sub_243880D38();
    }

    goto LABEL_20;
  }

  CKLog.getter();
  v26 = v1;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v1;
    v31 = v26;
    _os_log_impl(&dword_243870000, v27, v28, "Ignoring handleFetch with nil recordID %@", v29, 0xCu);
    sub_24387605C(v30, qword_27ED949D0, ":\x1B");
    sub_24388A750();
    sub_24388A750();
  }

  (*(v13 + 8))(v18, v10);
LABEL_20:
  sub_24388A67C();
}

void (*sub_243885F7C(uint64_t a1, double a2))(uint64_t, double)
{
  result = sub_243882320();
  if (result)
  {
    result(a1, a2);
    v5 = sub_243876224();

    return sub_243871FB4(v5);
  }

  return result;
}

void sub_243885FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *v7;
  v12 = *MEMORY[0x277D85000];
  sub_24388A768();
  v14 = v13;
  sub_24388A768();
  v16 = *(v15 + 192);
  sub_24388A61C();
  v17 = *(v14 + 80);
  v18 = *(v14 + 96);
  sub_24388A4D4();
  type metadata accessor for CKCodeOperation.AssetInfo();
  v19 = sub_24388A5FC();
  sub_243881384(v19, v20, a3, a4);
  v22 = v21;
  swift_endAccess();
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v22 writeData:isa atOffset:a7];
}

void sub_243886108()
{
  sub_24388A664();
  v1 = v0;
  v70 = v2;
  v3 = *v0;
  v4 = *MEMORY[0x277D85000];
  sub_24388A768();
  v6 = *(v5 + 88);
  sub_243888DA8(&qword_27ED949C8, ":\x1B");
  v7 = type metadata accessor for Result();
  v8 = sub_243876204(v7);
  v67 = v9;
  v68 = v8;
  v11 = *(v10 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v12);
  sub_24388A738();
  v66 = v13;
  sub_24388A64C();
  v14 = type metadata accessor for Optional();
  sub_243876204(v14);
  v62 = v15;
  v17 = *(v16 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v18);
  sub_24388A738();
  v65 = v19;
  sub_24387C120();
  v64 = v20;
  v22 = *(v21 + 64);
  sub_243876190();
  MEMORY[0x28223BE20](v23);
  sub_24388A738();
  v63 = v24;
  sub_24388A64C();
  v25 = type metadata accessor for Logger();
  v26 = sub_243876204(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_24388A414();
  v69 = v31 - v32;
  sub_24388A6FC();
  MEMORY[0x28223BE20](v33);
  CKLog.getter();
  v34 = v0;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    *(v37 + 4) = v34;
    *v38 = v0;
    v39 = v34;
    _os_log_impl(&dword_243870000, v35, v36, "In CKCodeOperation._finishOnCallbackQueueWithError() for %@", v37, 0xCu);
    sub_24387605C(v38, qword_27ED949D0, ":\x1B");
    sub_24388A750();
    sub_24388A750();
  }

  v40 = *(v28 + 8);
  v41 = sub_24388A7E8();
  v40(v41);
  v42 = sub_243882548();
  if (v42)
  {
    v43 = v42;
    v44 = v70;
    v45 = v70;
    if (v70 || (v45 = sub_243880CE8()) != 0)
    {
      v46 = v70;
      v47 = v45;
      v48 = _convertErrorToNSError(_:)();

      *v66 = [v48 CKClientSuitableError];
      swift_storeEnumTagMultiPayload();
      v43(v66);
      sub_243871FB4(v43);

      (*(v67 + 8))(v66, v68);
    }

    else
    {
      sub_2438807EC(v65);
      if (sub_243873AA4(v65, 1, v6) == 1)
      {
        v55 = *(v62 + 8);
        v56 = sub_24388A7F4();
        v57(v56);
        *v66 = related decl 'e' for CKErrorCode.init(_:description:)();
        swift_storeEnumTagMultiPayload();
        v43(v66);
        sub_243871FB4(v43);
        v58 = sub_24388A7C8();
        v59(v58);
        v44 = 0;
      }

      else
      {
        (*(v64 + 32))(v63, v65, v6);
        (*(v64 + 16))(v66, v63, v6);
        swift_storeEnumTagMultiPayload();
        v43(v66);
        sub_243871FB4(v43);
        v60 = sub_24388A7C8();
        v61(v60);
        (*(v64 + 8))(v63, v6);
      }
    }
  }

  else
  {
    CKLog.getter();
    v49 = v34;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      *(v52 + 4) = v49;
      *v53 = v1;
      v54 = v49;
      _os_log_impl(&dword_243870000, v50, v51, "In CKCodeOperation._finishOnCallbackQueueWithError(), no result block set for %@", v52, 0xCu);
      sub_24387605C(v53, qword_27ED949D0, ":\x1B");
      sub_24388A750();
      sub_24388A750();
    }

    (v40)(v69, v25);
    v44 = v70;
  }

  sub_243886718(v34, v44);
  sub_24388A67C();
}

void sub_243886718(void *a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85000] & *a1;
  if (a2)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 80);
  v6 = *(v3 + 96);
  v7.receiver = a1;
  v7.super_class = type metadata accessor for CKCodeOperation();
  objc_msgSendSuper2(&v7, sel__finishOnCallbackQueueWithError_, v4, v5, v6);
}

void sub_2438867C8(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  sub_243886108();
}

uint64_t sub_243886820@<X0>(uint64_t *a1@<X8>)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  result = sub_243881338();
  v5 = result;
  if (result)
  {
    v6 = *(v3 + 80);
    v7 = *(v3 + 96);
    sub_24388A4D4();
    result = type metadata accessor for CKCodeOperation.CallbackRelay();
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v5;
  a1[3] = result;
  return result;
}

id sub_2438868B0()
{
  sub_243886820(v8);
  v0 = v9;
  if (v9)
  {
    v1 = sub_24388A220(v8, v9);
    v2 = *(v0 - 8);
    v3 = *(v2 + 64);
    MEMORY[0x28223BE20](v1);
    v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v2 + 16))(v5);
    v6 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v2 + 8))(v5, v0);
    sub_24387E12C(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_2438869F4(void *a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6 = *(v3 + 80);
  v7 = *(v3 + 96);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CKCodeOperation.CallbackRelay();
  v4 = objc_msgSendSuper2(&v8, sel_init, v6, v7);

  return v4;
}

uint64_t sub_243886AB0()
{
  v1[18] = v0;
  v2 = sub_243873884(&qword_27ED94E70, &qword_24389DF00);
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243886B7C, 0, 0);
}

uint64_t sub_243886B7C()
{
  v1 = v0[18];
  v2 = sub_2438869E4();
  v0[22] = v2;
  if (v2)
  {
    v3 = v2;
    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[19];
    v0[2] = v0;
    v0[3] = sub_243886CF4;
    swift_continuation_init();
    v0[17] = v6;
    v7 = sub_24387FE78(v0 + 14);
    sub_243873884(&qword_27ED949C8, ":\x1B");
    sub_24388A6A4(MEMORY[0x277D84F78]);
    v8 = sub_24388A6E4();
    v9(v8);
    sub_24388A564();
    v0[11] = 1107296256;
    sub_24388A550();
    [v3 handleWillStart_];
    (*(v5 + 8))(v7, v6);
    v2 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v2);
}

uint64_t sub_243886CF4()
{
  sub_24388A7BC();
  v1 = *v0;
  sub_24388A7B0();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 184) = v5;
  if (v5)
  {
    v6 = sub_24388A39C;
  }

  else
  {
    v6 = sub_24388A3A0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_243886E1C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24388A384;

  return sub_243886AB0();
}

uint64_t sub_243886EC4()
{
  v1[18] = v0;
  v2 = sub_243873884(&qword_27ED94E70, &qword_24389DF00);
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243886F90, 0, 0);
}

uint64_t sub_243886F90()
{
  v1 = v0[18];
  v2 = sub_2438869E4();
  v0[22] = v2;
  if (v2)
  {
    v3 = v2;
    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[19];
    v0[2] = v0;
    v0[3] = sub_243887108;
    swift_continuation_init();
    v0[17] = v6;
    v7 = sub_24387FE78(v0 + 14);
    sub_243873884(&qword_27ED949C8, ":\x1B");
    sub_24388A6A4(MEMORY[0x277D84F78]);
    v8 = sub_24388A6E4();
    v9(v8);
    sub_24388A564();
    v0[11] = 1107296256;
    sub_24388A550();
    [v3 handleDidStart_];
    (*(v5 + 8))(v7, v6);
    v2 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v2);
}

uint64_t sub_243887108()
{
  sub_24388A7BC();
  v1 = *v0;
  sub_24388A7B0();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 184) = v5;
  if (v5)
  {
    v6 = sub_243887278;
  }

  else
  {
    v6 = sub_243887210;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_243887210()
{
  sub_24388A7BC();
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_243887278()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[23];

  return v4();
}

uint64_t sub_243887314(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  sub_24388A694();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v6 = a1;
  sub_243876224();

  return sub_24388F02C();
}

uint64_t sub_243887378(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_243887420;

  return sub_243886EC4();
}

uint64_t sub_243887420()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_24388A7B0();
  *v5 = v4;
  v6 = v3[4];
  v7 = v3[2];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[3];
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(v9, 0);
  }

  _Block_release(v4[3]);
  v11 = v8[1];

  return v11();
}

void sub_2438875AC(void *a1)
{
  v1 = a1;
  sub_2438875A0();
}

void sub_243887600(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2438875F4(v4);
}

void sub_243887674(uint64_t a1, SEL *a2)
{
  v4 = sub_2438869E4();
  if (v4)
  {
    v5 = v4;
    [v4 *a2];
  }

  else
  {
    __break(1u);
  }
}

void sub_2438876D8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_243887668(v4);
}

void sub_243887740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2438869E4();
  if (v6)
  {
    v7 = v6;
    v9[4] = a2;
    v9[5] = a3;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_24388F12C;
    v9[3] = &unk_28569B438;
    v8 = _Block_copy(v9);

    [v7 openFileWithOpenInfo:a1 reply:v8];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_243887850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2438869E4();
  if (v6)
  {
    v7 = v6;
    v9[4] = a2;
    v9[5] = a3;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_24388F204;
    v9[3] = &unk_28569B488;
    v8 = _Block_copy(v9);

    [v7 handleFinishWithAssetDownloadStagingInfo:a1 reply:v8];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243887960(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void sub_243887A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_2438869E4();
  if (v4)
  {
    v5 = v4;
    if (a2)
    {
      v6 = _convertErrorToNSError(_:)();
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    [v5 handleOperationDidCompleteWithMetrics:a1 error:?];
  }

  else
  {
    __break(1u);
  }
}

void sub_243887A94(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a1;
  v9 = a4;
  sub_243887A08(a3, a4);
}

void sub_243887B10(char a1, char a2, uint64_t a3)
{
  v6 = sub_2438869E4();
  if (v6)
  {
    v7 = v6;
    if (a3)
    {
      v8 = _convertErrorToNSError(_:)();
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    [v7 handleDiscretionaryOperationShouldStart:a1 & 1 nonDiscretionary:a2 & 1 error:?];
  }

  else
  {
    __break(1u);
  }
}

void sub_243887BAC(void *a1, uint64_t a2, char a3, char a4, void *a5)
{
  v8 = a1;
  v9 = a5;
  sub_243887B10(a3, a4, a5);
}

void sub_243887C2C(SEL *a1)
{
  v2 = sub_2438869E4();
  if (v2)
  {
    v3 = v2;
    [v2 *a1];
  }

  else
  {
    __break(1u);
  }
}

void sub_243887C80(void *a1)
{
  v1 = a1;
  sub_243887C20();
}

void sub_243887CC8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2438869E4();
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0x245D42400](a1, a2);
    v14[4] = a4;
    v14[5] = a5;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_2438999A8;
    v14[3] = &unk_28569B4D8;
    v13 = _Block_copy(v14);

    [v11 handleDaemonOperationWillStartWithClassName:v12 isTopLevelDaemonOperation:a3 & 1 replyBlock:v13];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243887DCC(void *a1, int a2, int a3, char a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = a1;
  sub_243887CC8(v8, v10, a4, sub_243889D4C, v11);
}

void sub_243887EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v14 = sub_2438869E4();
  if (v14)
  {
    v15 = v14;
    v16 = MEMORY[0x245D42400](a1, a2);
    v18[4] = a4;
    v18[5] = a5;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_2438999A8;
    v18[3] = a6;
    v17 = _Block_copy(v18);

    [v15 *a7];
    _Block_release(v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243888028(void *a1, int a2, int a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, id, uint64_t, uint64_t))
{
  v12 = _Block_copy(aBlock);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = a4;
  v18 = a1;
  a8(v13, v15, v17, a7, v16);
}

void sub_2438880FC()
{
  v0 = sub_2438869E4();
  if (v0)
  {
    v1 = v0;
    sub_243883F10();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243888188(void *a1, int a2, int a3, int a4, int a5, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v7;
  v8 = a1;
  sub_2438880FC();
}

void sub_243888294()
{
  v0 = sub_2438869E4();
  if (v0)
  {
    v1 = v0;
    sub_2438847F8();
  }

  else
  {
    __break(1u);
  }
}

void sub_243888318(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = a3;
  v11 = a1;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(swift_allocObject() + 16) = v6;
  sub_243888294();

  sub_243873E40(v8, v10);
}

void sub_2438883F0()
{
  v0 = sub_2438869E4();
  if (v0)
  {
    v1 = v0;
    sub_243884F10();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24388844C(void *a1)
{
  sub_24388A094(0, &unk_280D49510, 0x277CBC5A0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = a1;
  sub_2438883F0();
}

void sub_2438884C0()
{
  v0 = sub_2438869E4();
  if (v0)
  {
    v1 = v0;
    sub_243885B3C();
  }

  else
  {
    __break(1u);
  }
}

void sub_243888534(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = a5;
  sub_2438884C0();
}

void sub_2438885CC(uint64_t a1, double a2)
{
  v4 = sub_2438869E4();
  if (v4)
  {
    v5 = v4;
    sub_243885F7C(a1, a2);
  }

  else
  {
    __break(1u);
  }
}