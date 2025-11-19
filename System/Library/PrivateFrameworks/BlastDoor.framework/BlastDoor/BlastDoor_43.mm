uint64_t sub_2143CDB14(uint64_t a1)
{
  *(a1 + 8) = sub_2143CDBC8(&qword_27C9127F0);
  result = sub_2143CDBC8(&qword_27C9127F8);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for PlayedReceipt()
{
  result = qword_280B30980;
  if (!qword_280B30980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2143CDBC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PlayedReceipt();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2143CDC34@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = type metadata accessor for SwiftRegexValidator();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  if (qword_27C903160 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = __swift_project_value_buffer(v5, qword_27CA19DF0);
  v7 = *(*(v5 - 8) + 16);
  v7(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  sub_2143D1848(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for SwiftRegexValidator);
  *(v8 + 16) = sub_2143D3FAC;
  *(v8 + 24) = v10;
  if (qword_27C903298 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_27CA19F60);
  v7(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v5);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  sub_2143D1848(v4, v13 + v9, type metadata accessor for SwiftRegexValidator);
  *(v12 + 16) = sub_2143D3FAC;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2146EAEB0;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21439DF60;
  *(v15 + 24) = v8;
  *(v14 + 32) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21439DF60;
  *(v16 + 24) = v12;
  *(v14 + 40) = v16;
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  *(v17 + 16) = sub_21439DF94;
  *(v17 + 24) = v18;
  v19 = inited;
  v20 = v24;
  *(inited + 32) = v17;
  return sub_214042B80(v19, v20);
}

unint64_t sub_2143CDF98@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = type metadata accessor for SwiftRegexValidator();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  if (qword_27C903160 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = __swift_project_value_buffer(v5, qword_27CA19DF0);
  v7 = *(*(v5 - 8) + 16);
  v7(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  sub_2143D1848(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for SwiftRegexValidator);
  *(v8 + 16) = sub_214302808;
  *(v8 + 24) = v10;
  if (qword_27C903298 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_27CA19F60);
  v7(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v5);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  sub_2143D1848(v4, v13 + v9, type metadata accessor for SwiftRegexValidator);
  *(v12 + 16) = sub_2143D3FAC;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2146EAEB0;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21439DF28;
  *(v15 + 24) = v8;
  *(v14 + 32) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21439DF60;
  *(v16 + 24) = v12;
  *(v14 + 40) = v16;
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  *(v17 + 16) = sub_21439DF54;
  *(v17 + 24) = v18;
  v19 = inited;
  v20 = v24;
  *(inited + 32) = v17;
  return sub_214042B80(v19, v20);
}

unint64_t sub_2143CE308@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2140676DC;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

uint64_t CPIMMessage.NamespaceHeader.$namePrefix.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 CPIMMessage.NamespaceHeader.$namePrefix.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t CPIMMessage.NamespaceHeader.namePrefix.getter()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t _s9BlastDoor11CPIMMessageV10FromHeaderV16_sourceURIStringAA9UntrustedVySSGvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 _s9BlastDoor11CPIMMessageV10FromHeaderV16_sourceURIStringAA9UntrustedVySSGvs_0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t _s9BlastDoor11CPIMMessageV10FromHeaderV15sourceURIStringSSvg_0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t CPIMMessage.MlsEraIdHeader.$eraId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 CPIMMessage.MlsEraIdHeader.$eraId.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1->n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  v1[1].n128_u8[9] = v5;
  return result;
}

uint64_t CPIMMessage.MlsEraIdHeader.eraId.getter()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t (*CPIMMessage.ToHeader.destinationURIString.modify(void *a1))()
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143D3F88;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*CPIMMessage.ToHeader.$destinationURIString.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t (*CPIMMessage.FromHeader.sourceURIString.modify(void *a1))()
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CE940;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*CPIMMessage.FromHeader.$sourceURIString.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143CE9DC;
}

uint64_t CPIMMessage.DateTimeHeader.dateTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D8B08();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CPIMMessage.DateTimeHeader.dateTime.setter(uint64_t a1)
{
  v3 = sub_2146D8B08();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CPIMMessage.NamespaceHeader.namePrefix.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v11 = *(v3 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 16), *(v3 + 24));

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*CPIMMessage.NamespaceHeader.namePrefix.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214074090;
  }

  return result;
}

void (*CPIMMessage.NamespaceHeader.$namePrefix.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21407449C;
}

uint64_t CPIMMessage.NamespaceHeader.namespaceURI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CPIMMessage.NamespaceHeader(0) + 20);
  v4 = sub_2146D8958();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CPIMMessage.NamespaceHeader.namespaceURI.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CPIMMessage.NamespaceHeader(0) + 20);
  v4 = sub_2146D8958();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*CPIMMessage.IMDNMessageIDHeader.messageID.modify(void *a1))()
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143D3F88;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*CPIMMessage.IMDNMessageIDHeader.$messageID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

BlastDoor::CPIMMessage::IMDNDispositionNotificationHeader::NotifyRequirement_optional __swiftcall CPIMMessage.IMDNDispositionNotificationHeader.NotifyRequirement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CPIMMessage.IMDNDispositionNotificationHeader.NotifyRequirement.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x69737365636F7270;
  v3 = 0x79616C70736964;
  if (v1 != 3)
  {
    v3 = 0x726F777265746E69;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0xD000000000000011;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2143CF138()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143CF230()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2143CF314()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2143CF414(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000676ELL;
  v4 = 0x69737365636F7270;
  v5 = 0xE700000000000000;
  v6 = 0x79616C70736964;
  if (v2 != 3)
  {
    v6 = 0x726F777265746E69;
    v5 = 0xEC000000676E696BLL;
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x8000000214787700;
  if (*v1)
  {
    v7 = 0x8000000214787720;
  }

  if (*v1 <= 1u)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v8 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v7;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t CPIMMessage.IMDNDispositionNotificationHeader.requirements.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

BlastDoor::CPIMMessage::RCSAdvisedAction_optional __swiftcall CPIMMessage.RCSAdvisedAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t CPIMMessage.RCSAdvisedAction.rawValue.getter()
{
  if (*v0)
  {
    return 1701079400;
  }

  else
  {
    return 1852989815;
  }
}

uint64_t sub_2143CF654(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1701079400;
  }

  else
  {
    v2 = 1852989815;
  }

  if (*a2)
  {
    v3 = 1701079400;
  }

  else
  {
    v3 = 1852989815;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2143CF6CC()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143CF734()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2143CF780()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143CF7E4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2146DA098();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2143CF844(uint64_t *a1@<X8>)
{
  v2 = 1852989815;
  if (*v1)
  {
    v2 = 1701079400;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t (*CPIMMessage.MlsDerivedContentSignatureHeader.derivedContentSignature.modify(void *a1))()
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143D3F88;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*CPIMMessage.MlsDerivedContentSignatureHeader.$derivedContentSignature.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t (*CPIMMessage.MlsEpochAuthenticatorHeader.epochAuthenticator.modify(void *a1))()
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143D3F88;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*CPIMMessage.MlsEpochAuthenticatorHeader.$epochAuthenticator.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t sub_2143CFB84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    *a2 = *(a1 + 16);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143CFBF4(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t _s9BlastDoor11CPIMMessageV10FromHeaderV15sourceURIStringSSvs_0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*CPIMMessage.MlsOriginalMessageIdHeader.originalMessageId.modify(void *a1))()
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143D3F88;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143CFE84(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    v14 = *a1;
    v15 = v3;
    v10 = *v4;
    v11 = *(v4 + 8);
    v16 = *(v4 + 32);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = a1[3];

      *(v4 + 16) = v5;
      *(v4 + 24) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v14 = *a1;
  v15 = v3;
  v7 = *v4;
  v6 = *(v4 + 8);
  v16 = *(v4 + 32);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v8 = a1[3];

  *(v4 + 16) = v5;
  *(v4 + 24) = v3;
}

uint64_t sub_2143D00A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);

  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v7;
  *(a2 + 32) = v9;
}

uint64_t (*CPIMMessage.MlsOriginalMessageIdHeader.$originalMessageId.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void sub_2143D01AC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 8);
  v10 = *(v3 + 24);
  if (a2)
  {
    v11 = (*a1)[3];

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
    v12 = v2[1];
    v13 = v2[3];
  }

  else
  {
    v14 = *(v3 + 8);

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
  }

  free(v2);
}

uint64_t sub_2143D027C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 16);
  }

  return result;
}

uint64_t (*CPIMMessage.MlsEraIdHeader.eraId.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 16);
    return sub_2143D0368;
  }

  return result;
}

uint64_t sub_2143D038C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 25);
  *a2 = *a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
}

void (*CPIMMessage.MlsEraIdHeader.$eraId.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_2143D0480;
}

void sub_2143D0480(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(v3 + 8);
  if (a2)
  {
    v10 = (*a1)[1];

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    *(v3 + 25) = v8;
    v11 = v2[1];
  }

  else
  {
    v12 = *(v3 + 8);

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    *(v3 + 25) = v8;
  }

  free(v2);
}

BlastDoor::CPIMMessage::Namespace_optional __swiftcall CPIMMessage.Namespace.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CPIMMessage.Namespace.rawValue.getter()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_2143D05EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "urn:ietf:params:imdn";
  v4 = 0xD000000000000017;
  if (v2 == 1)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 0xD00000000000001BLL;
  }

  if (v2 == 1)
  {
    v6 = "urn:ietf:params:imdn";
  }

  else
  {
    v6 = "http://www.gsma.com/rcs";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "positive-delivery";
  }

  if (*a2 != 1)
  {
    v4 = 0xD00000000000001BLL;
    v3 = "http://www.gsma.com/rcs";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "positive-delivery";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2143D06C4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143D0760()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2143D07E8()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2143D088C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = "urn:ietf:params:imdn";
  v4 = 0xD000000000000017;
  if (*v1 != 1)
  {
    v4 = 0xD00000000000001BLL;
    v3 = "http://www.gsma.com/rcs";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "positive-delivery";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

BlastDoor::CPIMMessage::EncapsulatedMessage::ContentType_optional __swiftcall CPIMMessage.EncapsulatedMessage.ContentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CPIMMessage.EncapsulatedMessage.ContentType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v2 = 0x2F6567617373656DLL;
    v5 = 0xD000000000000016;
    if (v1 != 10)
    {
      v5 = 0xD000000000000019;
    }

    if (v1 != 9)
    {
      v2 = v5;
    }

    v3 = 0xD00000000000001ELL;
    v6 = 0xD000000000000010;
    if (v1 != 7)
    {
      v6 = 0xD00000000000001FLL;
    }

    if (v1 != 6)
    {
      v3 = v6;
    }

    v4 = *v0 <= 8u;
  }

  else
  {
    v2 = 0x616C702F74786574;
    if (v1 == 4)
    {
      v2 = 0xD000000000000024;
    }

    if (v1 == 3)
    {
      v2 = 0xD000000000000029;
    }

    v3 = 0xD00000000000002CLL;
    if (v1 == 1)
    {
      v3 = 0xD000000000000025;
    }

    if (!*v0)
    {
      v3 = 0xD000000000000028;
    }

    v4 = *v0 <= 2u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2143D0AF8(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = CPIMMessage.EncapsulatedMessage.ContentType.rawValue.getter();
  v4 = v3;
  if (v2 == CPIMMessage.EncapsulatedMessage.ContentType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2146DA6A8();
  }

  return v7 & 1;
}

uint64_t sub_2143D0B94()
{
  v1 = *v0;
  sub_2146DA958();
  CPIMMessage.EncapsulatedMessage.ContentType.rawValue.getter();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143D0BFC()
{
  v2 = *v0;
  CPIMMessage.EncapsulatedMessage.ContentType.rawValue.getter();
  sub_2146D9698();
}

uint64_t sub_2143D0C60()
{
  v1 = *v0;
  sub_2146DA958();
  CPIMMessage.EncapsulatedMessage.ContentType.rawValue.getter();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2143D0CD0@<X0>(unint64_t *a1@<X8>)
{
  result = CPIMMessage.EncapsulatedMessage.ContentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CPIMMessage.EncapsulatedMessage.TransferEncoding.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2146DA098();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2143D0E30()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_2143D0E94()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_2143D0EE0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2146DA098();

  *a2 = v5 != 0;
  return result;
}

uint64_t CPIMMessage.headers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_2143D1214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2143D1314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t CPIMMessage.Header.toValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Header(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v7, type metadata accessor for CPIMMessage.Header);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    result = sub_2143D1FA0(v7, type metadata accessor for CPIMMessage.Header);
    v9 = 0;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  else
  {
    v10 = *v7;
    v11 = *(v7 + 1);
    v9 = v7[32];
  }

  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 32) = v9;
  return result;
}

uint64_t CPIMMessage.Header.fromValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Header(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v7, type metadata accessor for CPIMMessage.Header);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v9 = *v7;
    v10 = *(v7 + 1);
    v11 = v7[32];
  }

  else
  {
    result = sub_2143D1FA0(v7, type metadata accessor for CPIMMessage.Header);
    v11 = 0;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  return result;
}

uint64_t CPIMMessage.Header.dateTimeValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Header(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v7, type metadata accessor for CPIMMessage.Header);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_2143D1848(v7, a1, type metadata accessor for CPIMMessage.DateTimeHeader);
    v8 = 0;
  }

  else
  {
    sub_2143D1FA0(v7, type metadata accessor for CPIMMessage.Header);
    v8 = 1;
  }

  v9 = type metadata accessor for CPIMMessage.DateTimeHeader(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t CPIMMessage.Header.namespaceValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Header(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v7, type metadata accessor for CPIMMessage.Header);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_2143D1848(v7, a1, type metadata accessor for CPIMMessage.NamespaceHeader);
    v8 = 0;
  }

  else
  {
    sub_2143D1FA0(v7, type metadata accessor for CPIMMessage.Header);
    v8 = 1;
  }

  v9 = type metadata accessor for CPIMMessage.NamespaceHeader(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_2143D1848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CPIMMessage.Header.imdnMessageIDValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Header(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v7, type metadata accessor for CPIMMessage.Header);
  result = swift_getEnumCaseMultiPayload();
  if (result == 4)
  {
    v9 = *v7;
    v10 = *(v7 + 1);
    v11 = v7[32];
  }

  else
  {
    result = sub_2143D1FA0(v7, type metadata accessor for CPIMMessage.Header);
    v11 = 0;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  return result;
}

uint64_t CPIMMessage.Header.imdnDispositionNotificationValue.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Header(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2143D1214(v2, v7, type metadata accessor for CPIMMessage.Header);
  result = swift_getEnumCaseMultiPayload();
  if (result == 5)
  {
    v9 = *v7;
  }

  else
  {
    result = sub_2143D1FA0(v7, type metadata accessor for CPIMMessage.Header);
    v9 = 0;
  }

  *a1 = v9;
  return result;
}

uint64_t CPIMMessage.Header.rcsAdviseActionValue.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Header(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v7, type metadata accessor for CPIMMessage.Header);
  result = swift_getEnumCaseMultiPayload();
  if (result == 6)
  {
    v9 = *v7;
  }

  else
  {
    result = sub_2143D1FA0(v7, type metadata accessor for CPIMMessage.Header);
    v9 = 2;
  }

  *a1 = v9;
  return result;
}

uint64_t CPIMMessage.Header.mlsDerivedContentSignatureValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Header(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v7, type metadata accessor for CPIMMessage.Header);
  result = swift_getEnumCaseMultiPayload();
  if (result == 7)
  {
    v9 = *v7;
    v10 = *(v7 + 1);
    v11 = v7[32];
  }

  else
  {
    result = sub_2143D1FA0(v7, type metadata accessor for CPIMMessage.Header);
    v11 = 0;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  return result;
}

uint64_t CPIMMessage.Header.mlsEpochAuthenticatorValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Header(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v7, type metadata accessor for CPIMMessage.Header);
  result = swift_getEnumCaseMultiPayload();
  if (result == 8)
  {
    v9 = *v7;
    v10 = *(v7 + 1);
    v11 = v7[32];
  }

  else
  {
    result = sub_2143D1FA0(v7, type metadata accessor for CPIMMessage.Header);
    v11 = 0;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  return result;
}

uint64_t CPIMMessage.Header.mlsEraIdValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Header(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v7, type metadata accessor for CPIMMessage.Header);
  result = swift_getEnumCaseMultiPayload();
  if (result == 10)
  {
    v9 = *v7;
    v10 = *(v7 + 2);
    v11 = v7[24] | (v7[25] << 8);
  }

  else
  {
    result = sub_2143D1FA0(v7, type metadata accessor for CPIMMessage.Header);
    v10 = 0;
    v11 = 0;
    v9 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  return result;
}

uint64_t CPIMMessage.Content.messageValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.Content(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v7, type metadata accessor for CPIMMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2143D1FA0(v7, type metadata accessor for CPIMMessage.Content);
    v8 = 1;
  }

  else
  {
    sub_2143D1848(v7, a1, type metadata accessor for CPIMMessage.EncapsulatedMessage);
    v8 = 0;
  }

  v9 = type metadata accessor for CPIMMessage.EncapsulatedMessage(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_2143D1FA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CPIMMessage.Content.multipartMessageValue.getter()
{
  v1 = type metadata accessor for CPIMMessage.Content(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v0, v4, type metadata accessor for CPIMMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v4;
  }

  sub_2143D1FA0(v4, type metadata accessor for CPIMMessage.Content);
  return 0;
}

__n128 CPIMMessage.EncapsulatedMessage.Content.rcsPushLocationValue.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v7, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2143D1FA0(v7, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0x1FFFFFF00FELL;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
  }

  else
  {
    v9 = *(v7 + 1);
    *a1 = *v7;
    *(a1 + 16) = v9;
    *(a1 + 32) = *(v7 + 2);
    result = *(v7 + 42);
    *(a1 + 42) = result;
  }

  return result;
}

double CPIMMessage.EncapsulatedMessage.Content.cpmGroupData.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v7, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(v7 + 3);
    *(a1 + 32) = *(v7 + 2);
    *(a1 + 48) = v8;
    *(a1 + 64) = *(v7 + 32);
    v9 = *(v7 + 1);
    *a1 = *v7;
    *(a1 + 16) = v9;
  }

  else
  {
    sub_2143D1FA0(v7, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    *&v9 = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0;
  }

  return *&v9;
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.botSuggestionValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v7, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_2143D1848(v7, a1, type metadata accessor for Chatbot.RootMessage);
    v8 = 0;
  }

  else
  {
    sub_2143D1FA0(v7, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    v8 = 1;
  }

  v9 = type metadata accessor for Chatbot.RootMessage(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.botMessageValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v7, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_2143D1848(v7, a1, type metadata accessor for Chatbot.RootMessage);
    v8 = 0;
  }

  else
  {
    sub_2143D1FA0(v7, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    v8 = 1;
  }

  v9 = type metadata accessor for Chatbot.RootMessage(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.fileTransferValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v7, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_2143D1848(v7, a1, type metadata accessor for RCSFileTransferInfo);
    v8 = 0;
  }

  else
  {
    sub_2143D1FA0(v7, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    v8 = 1;
  }

  v9 = type metadata accessor for RCSFileTransferInfo();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.textPlainValue.getter()
{
  v1 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2143D1214(v0, v4, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    result = *v4;
    v6 = v4[1];
  }

  else
  {
    sub_2143D1FA0(v4, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    return 0;
  }

  return result;
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.composingIndicatorValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v7, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_2143D1848(v7, a1, type metadata accessor for IMCompositionIndication);
    v8 = 0;
  }

  else
  {
    sub_2143D1FA0(v7, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    v8 = 1;
  }

  v9 = type metadata accessor for IMCompositionIndication();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.imdnValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v7, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_2143D1848(v7, a1, type metadata accessor for IMDispositionNotification);
    v8 = 0;
  }

  else
  {
    sub_2143D1FA0(v7, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    v8 = 1;
  }

  v9 = type metadata accessor for IMDispositionNotification();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.conferenceInfoValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v7, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_2143D1848(v7, a1, type metadata accessor for SIPConferenceInfo);
    v8 = 0;
  }

  else
  {
    sub_2143D1FA0(v7, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    v8 = 1;
  }

  v9 = type metadata accessor for SIPConferenceInfo(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_2143D2B2C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v9 = a1(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  sub_2143D1214(v7, &v17 - v11, a2);
  result = swift_getEnumCaseMultiPayload();
  if (result == 9)
  {
    v14 = *v12;
    v15 = *(v12 + 1);
    v16 = v12[32];
  }

  else
  {
    result = sub_2143D1FA0(v12, a3);
    v16 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *a4 = v14;
  *(a4 + 16) = v15;
  *(a4 + 32) = v16;
  return result;
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.serverMLSRCSContent.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v7, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  result = swift_getEnumCaseMultiPayload();
  if (result == 10)
  {
    v9 = *v7;
    v10 = *(v7 + 1);
    v11 = v7[32];
  }

  else
  {
    result = sub_2143D1FA0(v7, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    v11 = 0;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  return result;
}

uint64_t CPIMMessage.EncapsulatedMessage.Content.mlsFileTransfer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2143D1214(v2, v7, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  result = swift_getEnumCaseMultiPayload();
  if (result == 11)
  {
    v9 = *v7;
    v10 = *(v7 + 1);
    v11 = v7[32];
  }

  else
  {
    result = sub_2143D1FA0(v7, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    v11 = 0;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  return result;
}

uint64_t sub_2143D2E3C(uint64_t a1)
{
  *(a1 + 8) = sub_2143D2EC0(&qword_27C90D3F8, type metadata accessor for CPIMMessage.DateTimeHeader);
  result = sub_2143D2EC0(&qword_27C90D390, type metadata accessor for CPIMMessage.DateTimeHeader);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143D2EC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2143D2F08(uint64_t a1)
{
  *(a1 + 8) = sub_2143D2EC0(&qword_27C90D3F0, type metadata accessor for CPIMMessage.NamespaceHeader);
  result = sub_2143D2EC0(&qword_27C90D388, type metadata accessor for CPIMMessage.NamespaceHeader);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2143D2FBC()
{
  result = qword_27C912800;
  if (!qword_27C912800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912800);
  }

  return result;
}

unint64_t sub_2143D3040()
{
  result = qword_27C912808;
  if (!qword_27C912808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912808);
  }

  return result;
}

uint64_t sub_2143D3144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2143D3184()
{
  result = qword_27C912810;
  if (!qword_27C912810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912810);
  }

  return result;
}

uint64_t sub_2143D3208(uint64_t a1)
{
  *(a1 + 8) = sub_2143D2EC0(&qword_27C908F20, type metadata accessor for CPIMMessage.Header);
  result = sub_2143D2EC0(&qword_27C908F40, type metadata accessor for CPIMMessage.Header);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2143D3290()
{
  result = qword_27C912828;
  if (!qword_27C912828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912828);
  }

  return result;
}

uint64_t sub_2143D3314(uint64_t a1)
{
  *(a1 + 8) = sub_2143D2EC0(&qword_27C90AE60, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  result = sub_2143D2EC0(&qword_27C90AE78, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2143D339C()
{
  result = qword_27C912840;
  if (!qword_27C912840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912840);
  }

  return result;
}

uint64_t sub_2143D3420(uint64_t a1)
{
  *(a1 + 8) = sub_2143D2EC0(&qword_27C90D520, type metadata accessor for CPIMMessage.EncapsulatedMessage);
  result = sub_2143D2EC0(&qword_27C90D500, type metadata accessor for CPIMMessage.EncapsulatedMessage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143D34A4(uint64_t a1)
{
  *(a1 + 8) = sub_2143D2EC0(&qword_27C908F28, type metadata accessor for CPIMMessage.Content);
  result = sub_2143D2EC0(&qword_27C908F48, type metadata accessor for CPIMMessage.Content);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143D3528(uint64_t a1)
{
  *(a1 + 8) = sub_2143D2EC0(&qword_27C912858, type metadata accessor for CPIMMessage);
  result = sub_2143D2EC0(&qword_27C912860, type metadata accessor for CPIMMessage);
  *(a1 + 16) = result;
  return result;
}

uint64_t keypath_get_8Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

void sub_2143D3624()
{
  sub_2143D3DA0(319, &qword_27C912878, type metadata accessor for CPIMMessage.Header);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CPIMMessage.Content(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2143D370C()
{
  result = sub_2146D8B08();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_2143D38F8()
{
  sub_214084AA4();
  if (v0 <= 0x3F)
  {
    sub_2146D8958();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2143D39DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2143D3A24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2143D3A98()
{
  result = type metadata accessor for CPIMMessage.DateTimeHeader(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CPIMMessage.NamespaceHeader(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2143D3B8C()
{
  result = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2143D3C18()
{
  result = type metadata accessor for Chatbot.RootMessage(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RCSFileTransferInfo();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for IMCompositionIndication();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for IMDispositionNotification();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for SIPConferenceInfo(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_2143D3D10()
{
  type metadata accessor for CPIMMessage.EncapsulatedMessage(319);
  if (v0 <= 0x3F)
  {
    sub_2143D3DA0(319, &qword_27C9128E0, type metadata accessor for CPIMMessage.EncapsulatedMessage);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2143D3DA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9978();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2143D3DF4()
{
  result = qword_27C9128E8;
  if (!qword_27C9128E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9128E8);
  }

  return result;
}

unint64_t sub_2143D3E48()
{
  result = qword_27C9128F0;
  if (!qword_27C9128F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9128F0);
  }

  return result;
}

unint64_t sub_2143D3E9C()
{
  result = qword_27C9128F8;
  if (!qword_27C9128F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9128F8);
  }

  return result;
}

unint64_t sub_2143D3EF0()
{
  result = qword_27C912900;
  if (!qword_27C912900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912900);
  }

  return result;
}

uint64_t sub_2143D3FB0(uint64_t a1)
{
  v4 = v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21409A9C0;

  return sub_2143D4060(a1, v4);
}

uint64_t sub_2143D4060(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  v3 = _s5CodecVMa();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2143D412C, 0, 0);
}

uint64_t sub_2143D412C()
{
  *(v0 + 208) = [*(v0 + 144) trackID];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912958, &unk_214739C60);
  v1 = sub_2146D8B98();
  *(v0 + 184) = v1;
  v2 = *(MEMORY[0x277D82DC0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  *v3 = v0;
  v3[1] = sub_2143D420C;
  v4 = *(v0 + 144);

  return MEMORY[0x2821FAF00](v0 + 120, v1, 0, 0);
}

uint64_t sub_2143D420C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_2143D4734;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_2143D4328;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

size_t sub_2143D4328()
{
  v1 = *(v0 + 120);
  if (v1 >> 62)
  {
    v22 = *(v0 + 120);
    v2 = sub_2146DA028();
    v1 = v22;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:
    v23 = *(v0 + 144);

    v8 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  v3 = v1;
  v31 = MEMORY[0x277D84F90];
  result = sub_21409FE08(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = *(v0 + 152);
  v7 = *(v0 + 160);
  v8 = v31;
  v9 = v3;
  v28 = *MEMORY[0x277CC0310];
  v29 = v3 & 0xC000000000000001;
  v30 = v3;
  do
  {
    if (v29)
    {
      v10 = MEMORY[0x216054E00](v5, v9);
    }

    else
    {
      v10 = *(v9 + 8 * v5 + 32);
    }

    v11 = v10;
    v12 = *(v0 + 168);
    sub_2146D9CA8();
    v13 = CMFormatDescriptionGetExtensions(v11);
    if (v13)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_2146D9478();
      }

      v13 = 0;
    }

    v14 = *(v0 + 168);
    v15 = *(v0 + 176);
    v16 = (v14 + *(v6 + 20));
    *v16 = v13;
    v16[1] = 0;
    v17 = v14 + *(v6 + 24);
    sub_2146D9C98();

    sub_2143DA580(v14, v15, _s5CodecVMa);
    v19 = *(v31 + 16);
    v18 = *(v31 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_21409FE08(v18 > 1, v19 + 1, 1);
    }

    v20 = *(v0 + 176);
    ++v5;
    *(v31 + 16) = v19 + 1;
    sub_2143DA580(v20, v31 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, _s5CodecVMa);
    v9 = v30;
  }

  while (v2 != v5);
  v21 = *(v0 + 144);

LABEL_19:
  v25 = *(v0 + 168);
  v24 = *(v0 + 176);
  v26 = *(v0 + 136);
  *v26 = *(v0 + 208);
  *(v26 + 8) = v8;

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2143D4734()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);

  v4 = *(v0 + 8);
  v5 = *(v0 + 200);

  return v4();
}

uint64_t sub_2143D47C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D9C68();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2143D4828()
{
  v1 = (v0 + *(_s5CodecVMa() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t _s5CodecVMa()
{
  result = qword_27C912940;
  if (!qword_27C912940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2143D48B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(_s5CodecVMa() + 24);
  v4 = sub_2146D9C88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2143D4930()
{
  v0 = sub_2146D86D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v11 - v7;
  __swift_allocate_value_buffer(v6, qword_27C912908);
  __swift_project_value_buffer(v0, qword_27C912908);
  sub_2146D8658();
  sub_2146D8688();
  sub_2146D8698();
  v9 = *(v1 + 8);
  v9(v5, v0);
  return (v9)(v8, v0);
}

uint64_t sub_2143D4A6C()
{
  sub_2146D9C68();
  sub_2143DA5E8(&qword_27C912920, MEMORY[0x277D850E8]);
  sub_2146D94E8();
  v1 = _s5CodecVMa();
  v2 = (v0 + *(v1 + 20));
  if (v2[1])
  {
    v3 = *v2;
    sub_2146DA978();
    sub_2146D9698();
  }

  else
  {
    sub_2146DA978();
  }

  v4 = *(v1 + 24);
  sub_2146D9C88();
  sub_2143DA5E8(&qword_27C912928, MEMORY[0x277D85100]);
  return sub_2146D94E8();
}

uint64_t sub_2143D4B94()
{
  sub_2146DA958();
  sub_2146D9C68();
  sub_2143DA5E8(&qword_27C912920, MEMORY[0x277D850E8]);
  sub_2146D94E8();
  v1 = _s5CodecVMa();
  v2 = (v0 + *(v1 + 20));
  if (v2[1])
  {
    v3 = *v2;
    sub_2146DA978();
    sub_2146D9698();
  }

  else
  {
    sub_2146DA978();
  }

  v4 = *(v1 + 24);
  sub_2146D9C88();
  sub_2143DA5E8(&qword_27C912928, MEMORY[0x277D85100]);
  sub_2146D94E8();
  return sub_2146DA9B8();
}

uint64_t sub_2143D4CD4(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9C68();
  sub_2143DA5E8(&qword_27C912920, MEMORY[0x277D850E8]);
  sub_2146D94E8();
  v3 = (v1 + *(a1 + 20));
  if (v3[1])
  {
    v4 = *v3;
    sub_2146DA978();
    sub_2146D9698();
  }

  else
  {
    sub_2146DA978();
  }

  v5 = *(a1 + 24);
  sub_2146D9C88();
  sub_2143DA5E8(&qword_27C912928, MEMORY[0x277D85100]);
  sub_2146D94E8();
  return sub_2146DA9B8();
}

uint64_t sub_2143D4E0C(uint64_t a1, uint64_t a2)
{
  sub_2146D9C68();
  sub_2143DA5E8(&qword_27C912920, MEMORY[0x277D850E8]);
  sub_2146D94E8();
  v4 = (v2 + *(a2 + 20));
  if (v4[1])
  {
    v5 = *v4;
    sub_2146DA978();
    sub_2146D9698();
  }

  else
  {
    sub_2146DA978();
  }

  v6 = *(a2 + 24);
  sub_2146D9C88();
  sub_2143DA5E8(&qword_27C912928, MEMORY[0x277D85100]);
  return sub_2146D94E8();
}

uint64_t sub_2143D4F2C(uint64_t a1, uint64_t a2)
{
  sub_2146DA958();
  sub_2146D9C68();
  sub_2143DA5E8(&qword_27C912920, MEMORY[0x277D850E8]);
  sub_2146D94E8();
  v4 = (v2 + *(a2 + 20));
  if (v4[1])
  {
    v5 = *v4;
    sub_2146DA978();
    sub_2146D9698();
  }

  else
  {
    sub_2146DA978();
  }

  v6 = *(a2 + 24);
  sub_2146D9C88();
  sub_2143DA5E8(&qword_27C912928, MEMORY[0x277D85100]);
  sub_2146D94E8();
  return sub_2146DA9B8();
}

BOOL sub_2143D5098(uint64_t a1, uint64_t a2)
{
  v4 = _s5CodecVMa();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v24 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v24 = *(v9 + 72);
    while (1)
    {
      sub_2143DA4B8(v14, v11, _s5CodecVMa);
      sub_2143DA4B8(v15, v8, _s5CodecVMa);
      sub_2146D9C68();
      sub_2143DA5E8(&qword_27C9054F8, MEMORY[0x277D850E8]);
      sub_2146D97C8();
      sub_2146D97C8();
      if (v26 != v25)
      {
        break;
      }

      v16 = *(v4 + 20);
      v17 = &v11[v16];
      v18 = *&v11[v16 + 8];
      v19 = &v8[v16];
      v20 = *(v19 + 1);
      if (v18)
      {
        if (!v20)
        {
          break;
        }

        v21 = *v17 == *v19 && v18 == v20;
        if (!v21 && (sub_2146DA6A8() & 1) == 0)
        {
          break;
        }
      }

      else if (v20)
      {
        break;
      }

      v22 = *(v4 + 24);
      sub_2146D9C88();
      sub_2143DA5E8(&qword_27C912950, MEMORY[0x277D85100]);
      sub_2146D97C8();
      sub_2146D97C8();
      sub_2143DA520(v8, _s5CodecVMa);
      sub_2143DA520(v11, _s5CodecVMa);
      result = v26 == v25;
      if (v26 == v25)
      {
        v15 += v24;
        v14 += v24;
        if (--v12)
        {
          continue;
        }
      }

      return result;
    }

    sub_2143DA520(v8, _s5CodecVMa);
    sub_2143DA520(v11, _s5CodecVMa);
  }

  return 0;
}

uint64_t sub_2143D53BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2146DA6A8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2143D544C(uint64_t a1, uint64_t a2)
{
  v68[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for HealthSharingSetupInvitationToken(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v60 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    goto LABEL_85;
  }

  if (!v12 || a1 == a2)
  {
    v42 = 1;
    goto LABEL_86;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  v64 = 0;
  v65 = v16;
  v66 = v4;
  while (1)
  {
    sub_2143DA4B8(v14, v11, type metadata accessor for HealthSharingSetupInvitationToken);
    sub_2143DA4B8(v15, v8, type metadata accessor for HealthSharingSetupInvitationToken);
    v17 = *(v4 + 20);
    v18 = &v11[v17];
    v19 = *&v11[v17 + 8];
    v20 = &v8[v17];
    v21 = *(v20 + 1);
    if (v19)
    {
      if (!v21)
      {
        goto LABEL_84;
      }

      v22 = *v18 == *v20 && v19 == v21;
      if (!v22 && (sub_2146DA6A8() & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    else if (v21)
    {
      goto LABEL_84;
    }

    v23 = *(v4 + 24);
    v24 = *&v11[v23];
    v25 = *&v11[v23 + 8];
    v26 = &v8[v23];
    v27 = *v26;
    v28 = v26[1];
    if (v25 >> 60 == 15)
    {
      if (v28 >> 60 != 15)
      {
        goto LABEL_81;
      }

      sub_213FDCA18(v24, v25);
      sub_213FDCA18(v27, v28);
      goto LABEL_52;
    }

    if (v28 >> 60 == 15)
    {
LABEL_81:
      sub_213FDCA18(v24, v25);
      sub_213FDCA18(v27, v28);
      sub_213FDC6BC(v24, v25);
      v56 = v27;
      v57 = v28;
      goto LABEL_83;
    }

    v29 = v25 >> 62;
    v30 = v28 >> 62;
    if (v25 >> 62 != 3)
    {
      break;
    }

    if (v24)
    {
      v31 = 0;
    }

    else
    {
      v31 = v25 == 0xC000000000000000;
    }

    v32 = 0;
    v33 = v31 && v28 >> 62 == 3;
    if (!v33 || v27 || v28 != 0xC000000000000000)
    {
      goto LABEL_39;
    }

    sub_213FDCA18(0, 0xC000000000000000);
    sub_213FDCA18(0, 0xC000000000000000);
    sub_213FDC6BC(0, 0xC000000000000000);
    v34 = 0;
    v35 = 0xC000000000000000;
LABEL_53:
    sub_213FDC6BC(v34, v35);
    v4 = v66;
LABEL_54:
    sub_2146D8DF8();
    sub_2143DA5E8(&qword_27C903D38, MEMORY[0x277D216C8]);
    v42 = sub_2146D9578();
    sub_2143DA520(v8, type metadata accessor for HealthSharingSetupInvitationToken);
    sub_2143DA520(v11, type metadata accessor for HealthSharingSetupInvitationToken);
    if (v42)
    {
      v15 += v65;
      v14 += v65;
      if (--v12)
      {
        continue;
      }
    }

    goto LABEL_86;
  }

  if (v29 > 1)
  {
    if (v29 == 2)
    {
      v41 = *(v24 + 16);
      v40 = *(v24 + 24);
      v38 = __OFSUB__(v40, v41);
      v32 = v40 - v41;
      if (v38)
      {
        goto LABEL_89;
      }

LABEL_39:
      if (v30 <= 1)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v32 = 0;
      if (v30 <= 1)
      {
        goto LABEL_40;
      }
    }

LABEL_33:
    if (v30 == 2)
    {
      v37 = *(v27 + 16);
      v36 = *(v27 + 24);
      v38 = __OFSUB__(v36, v37);
      v39 = v36 - v37;
      if (v38)
      {
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
      }

      goto LABEL_46;
    }

    if (v32)
    {
      goto LABEL_82;
    }

LABEL_51:
    sub_213FDCA18(v24, v25);
    sub_213FDCA18(v27, v28);
    sub_213FDC6BC(v27, v28);
LABEL_52:
    v34 = v24;
    v35 = v25;
    goto LABEL_53;
  }

  if (v29)
  {
    LODWORD(v32) = HIDWORD(v24) - v24;
    if (__OFSUB__(HIDWORD(v24), v24))
    {
      goto LABEL_88;
    }

    v32 = v32;
    if (v30 <= 1)
    {
      goto LABEL_40;
    }

    goto LABEL_33;
  }

  v32 = BYTE6(v25);
  if (v30 > 1)
  {
    goto LABEL_33;
  }

LABEL_40:
  if (v30)
  {
    LODWORD(v39) = HIDWORD(v27) - v27;
    if (__OFSUB__(HIDWORD(v27), v27))
    {
      goto LABEL_87;
    }

    v39 = v39;
  }

  else
  {
    v39 = BYTE6(v28);
  }

LABEL_46:
  if (v32 == v39)
  {
    if (v32 >= 1)
    {
      if (v29 > 1)
      {
        if (v29 == 2)
        {
          v43 = *(v24 + 16);
          v61 = *(v24 + 24);
          v62 = v43;
          sub_213FDCA18(v24, v25);
          v63 = v27;
          sub_213FDCA18(v27, v28);
          v44 = sub_2146D8728();
          if (v44)
          {
            v45 = v44;
            v46 = sub_2146D8758();
            v47 = v62;
            if (__OFSUB__(v62, v46))
            {
              goto LABEL_92;
            }

            v60 = v62 - v46 + v45;
          }

          else
          {
            v60 = 0;
            v47 = v62;
          }

          if (__OFSUB__(v61, v47))
          {
            goto LABEL_91;
          }

          sub_2146D8748();
          v53 = v60;
          goto LABEL_77;
        }

        memset(v68, 0, 14);
        sub_213FDCA18(v24, v25);
        sub_213FDCA18(v27, v28);
LABEL_71:
        v51 = v64;
        sub_2143D9A20(v68, v27, v28, &v67);
        v64 = v51;
        sub_213FDC6BC(v27, v28);
        v52 = v67;
      }

      else
      {
        if (!v29)
        {
          v68[0] = v24;
          LOWORD(v68[1]) = v25;
          BYTE2(v68[1]) = BYTE2(v25);
          BYTE3(v68[1]) = BYTE3(v25);
          BYTE4(v68[1]) = BYTE4(v25);
          BYTE5(v68[1]) = BYTE5(v25);
          sub_213FDCA18(v24, v25);
          sub_213FDCA18(v27, v28);
          goto LABEL_71;
        }

        v62 = (v24 >> 32) - v24;
        if (v24 >> 32 < v24)
        {
          goto LABEL_90;
        }

        sub_213FDCA18(v24, v25);
        v63 = v27;
        sub_213FDCA18(v27, v28);
        v48 = sub_2146D8728();
        if (v48)
        {
          v61 = v48;
          v49 = sub_2146D8758();
          if (__OFSUB__(v24, v49))
          {
            goto LABEL_93;
          }

          v50 = v24 - v49 + v61;
        }

        else
        {
          v50 = 0;
        }

        sub_2146D8748();
        v53 = v50;
LABEL_77:
        v54 = v63;
        v55 = v64;
        sub_2143D9A20(v53, v63, v28, v68);
        v64 = v55;
        sub_213FDC6BC(v54, v28);
        v52 = v68[0];
      }

      sub_213FDC6BC(v24, v25);
      v4 = v66;
      if ((v52 & 1) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_54;
    }

    goto LABEL_51;
  }

LABEL_82:
  sub_213FDCA18(v24, v25);
  sub_213FDCA18(v27, v28);
  sub_213FDC6BC(v27, v28);
  v56 = v24;
  v57 = v25;
LABEL_83:
  sub_213FDC6BC(v56, v57);
LABEL_84:
  sub_2143DA520(v8, type metadata accessor for HealthSharingSetupInvitationToken);
  sub_2143DA520(v11, type metadata accessor for HealthSharingSetupInvitationToken);
LABEL_85:
  v42 = 0;
LABEL_86:
  v58 = *MEMORY[0x277D85DE8];
  return v42 & 1;
}

uint64_t sub_2143D5B78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  for (i = 0; ; i += 96)
  {
    v4 = a1 + i;
    if (*(a1 + i + 57))
    {
      break;
    }

    v5 = a2 + i;
    if (*(a2 + i + 57))
    {
      break;
    }

    v6 = *(v5 + 56);
    v7 = *(v5 + 120);
    if (*(v4 + 56))
    {
      if ((*(v5 + 56) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v8 = 0;
      if ((*(v5 + 56) & 1) != 0 || *(v4 + 48) != *(v5 + 48))
      {
        return v8;
      }
    }

    if (*(v4 + 89) & 1) != 0 || (*(v5 + 89))
    {
      break;
    }

    if (*(v4 + 88))
    {
      if ((*(v5 + 88) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v8 = 0;
      if ((*(v5 + 88) & 1) != 0 || *(v4 + 80) != *(v5 + 80))
      {
        return v8;
      }
    }

    if (*(v4 + 121) & 1) != 0 || (*(v5 + 121))
    {
      break;
    }

    if (*(v4 + 120))
    {
      if ((*(v5 + 120) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v8 = 0;
      if ((*(v5 + 120) & 1) != 0 || *(v4 + 112) != *(v5 + 112))
      {
        return v8;
      }
    }

    if (!--v2)
    {
      return 1;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143D5CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D8B08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v63 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913180, &qword_214739C58);
  v14 = *(*(v69 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v69);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v64 = &v56 - v18;
  v62 = type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule(0);
  v19 = *(*(v62 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v62);
  v71 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v68 = &v56 - v23;
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
    return 0;
  }

  if (!v24 || a1 == a2)
  {
    return 1;
  }

  v25 = *(a1 + 16);
  v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v27 = a1 + v26;
  v28 = a2 + v26;
  v67 = (v5 + 48);
  v58 = (v5 + 32);
  v59 = v17;
  v60 = (v5 + 8);
  v29 = *(v22 + 72);
  v56 = v13;
  v57 = v29;
  v30 = v64;
  v31 = v68;
  v32 = v25;
  v70 = v4;
  while (1)
  {
    result = sub_2143DA4B8(v27, v31, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule);
    if (!v32)
    {
      break;
    }

    v65 = v32;
    v34 = v71;
    sub_2143DA4B8(v28, v71, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule);
    v35 = *(v69 + 48);
    v36 = v31;
    sub_213FB2E54(v31, v30, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2E54(v34, v30 + v35, &qword_27C913090, &unk_2146E9DB0);
    v37 = *v67;
    v38 = (*v67)(v30, 1, v4);
    v66 = v28;
    if (v38 == 1)
    {
      if (v37(v30 + v35, 1, v4) != 1)
      {
        goto LABEL_23;
      }

      sub_213FB2DF4(v30, &qword_27C913090, &unk_2146E9DB0);
      v4 = v70;
    }

    else
    {
      v39 = v56;
      sub_213FB2E54(v30, v56, &qword_27C913090, &unk_2146E9DB0);
      if (v37(v30 + v35, 1, v4) == 1)
      {
        v55 = v39;
        goto LABEL_21;
      }

      v40 = v30 + v35;
      v41 = v61;
      (*v58)(v61, v40, v4);
      sub_2143DA5E8(&unk_27C913190, MEMORY[0x277CC9578]);
      v42 = sub_2146D9578();
      v4 = v70;
      v43 = v42;
      v44 = *v60;
      v45 = v41;
      v30 = v64;
      (*v60)(v45, v70);
      v44(v39, v4);
      sub_213FB2DF4(v30, &qword_27C913090, &unk_2146E9DB0);
      v36 = v68;
      if ((v43 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v46 = *(v62 + 20);
    v47 = *(v69 + 48);
    v48 = v59;
    sub_213FB2E54(v36 + v46, v59, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2E54(v71 + v46, v48 + v47, &qword_27C913090, &unk_2146E9DB0);
    if (v37(v48, 1, v4) == 1)
    {
      if (v37(v48 + v47, 1, v4) != 1)
      {
        v30 = v48;
        v36 = v68;
        goto LABEL_23;
      }

      sub_213FB2DF4(v48, &qword_27C913090, &unk_2146E9DB0);
      sub_2143DA520(v71, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule);
      v31 = v68;
      sub_2143DA520(v68, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule);
    }

    else
    {
      sub_213FB2E54(v48, v63, &qword_27C913090, &unk_2146E9DB0);
      if (v37(v48 + v47, 1, v4) == 1)
      {
        v55 = v63;
        v30 = v48;
LABEL_21:
        v36 = v68;
        (*v60)(v55, v4);
LABEL_23:
        sub_213FB2DF4(v30, &qword_27C913180, &qword_214739C58);
LABEL_24:
        sub_2143DA520(v71, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule);
        sub_2143DA520(v36, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule);
        return 0;
      }

      v49 = v61;
      (*v58)(v61, v48 + v47, v4);
      sub_2143DA5E8(&unk_27C913190, MEMORY[0x277CC9578]);
      v50 = v63;
      v51 = sub_2146D9578();
      v4 = v70;
      v52 = v51;
      v53 = *v60;
      v54 = v49;
      v30 = v64;
      (*v60)(v54, v70);
      v53(v50, v4);
      sub_213FB2DF4(v48, &qword_27C913090, &unk_2146E9DB0);
      sub_2143DA520(v71, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule);
      v31 = v68;
      sub_2143DA520(v68, type metadata accessor for IDSHomeKitInviteeScheduleYearDayRule);
      if ((v52 & 1) == 0)
      {
        return 0;
      }
    }

    v28 = v66 + v57;
    v27 += v57;
    v32 = v65 - 1;
    if (v65 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2143D6458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMHandleProto(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v39 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_2143DA4B8(v14, v11, type metadata accessor for CSDMHandleProto);
        sub_2143DA4B8(v15, v8, type metadata accessor for CSDMHandleProto);
        v17 = v4[5];
        v18 = v11[v17];
        v19 = v8[v17];
        if (v18 == 4)
        {
          if (v19 != 4)
          {
            goto LABEL_38;
          }
        }

        else if (v18 != v19)
        {
          goto LABEL_38;
        }

        v20 = v4[6];
        v21 = &v11[v20];
        v22 = *&v11[v20 + 8];
        v23 = &v8[v20];
        v24 = *(v23 + 1);
        if (v22)
        {
          if (!v24 || (*v21 == *v23 ? (v25 = v22 == v24) : (v25 = 0), !v25 && (sub_2146DA6A8() & 1) == 0))
          {
LABEL_38:
            sub_2143DA520(v8, type metadata accessor for CSDMHandleProto);
            sub_2143DA520(v11, type metadata accessor for CSDMHandleProto);
            goto LABEL_39;
          }
        }

        else if (v24)
        {
          goto LABEL_38;
        }

        v26 = v4[7];
        v27 = &v11[v26];
        v28 = *&v11[v26 + 8];
        v29 = &v8[v26];
        v30 = *(v29 + 1);
        if (v28)
        {
          if (!v30)
          {
            goto LABEL_38;
          }

          v31 = *v27 == *v29 && v28 == v30;
          if (!v31 && (sub_2146DA6A8() & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        else if (v30)
        {
          goto LABEL_38;
        }

        v32 = v4[8];
        v33 = &v11[v32];
        v34 = *&v11[v32 + 8];
        v35 = &v8[v32];
        v36 = *(v35 + 1);
        if (v34)
        {
          if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_2146DA6A8() & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        else if (v36)
        {
          goto LABEL_38;
        }

        sub_2146D8DF8();
        sub_2143DA5E8(&qword_27C903D38, MEMORY[0x277D216C8]);
        v37 = sub_2146D9578();
        sub_2143DA520(v8, type metadata accessor for CSDMHandleProto);
        sub_2143DA520(v11, type metadata accessor for CSDMHandleProto);
        if (v37)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v37 & 1;
      }
    }

    v37 = 1;
  }

  else
  {
LABEL_39:
    v37 = 0;
  }

  return v37 & 1;
}

uint64_t sub_2143D6790(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 96);
  for (i = (a2 + 96); ; i += 10)
  {
    v5 = *(v3 - 5);
    if (!v5)
    {
      break;
    }

    v6 = *(i - 5);
    if (!v6)
    {
      break;
    }

    v7 = *(v3 - 1);
    v8 = *v3;
    v9 = *(i - 1);
    v10 = *i;
    v11 = *(v3 - 6) == *(i - 6) && v5 == v6;
    if (!v11 && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }

    if (v8 == 1 || v10 == 1)
    {
      break;
    }

    if (v8)
    {
      if (!v10 || (v7 != v9 || v8 != v10) && (sub_2146DA6A8() & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v10)
      {
        return 0;
      }

      sub_213FDC9D0(v9, 0);
      sub_213FDC9D0(v7, 0);
    }

    v3 += 10;
    if (!--v2)
    {
      return 1;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143D691C(uint64_t a1, uint64_t a2)
{
  v37[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a2 + 64);
      v5 = (a1 + 64);
      while (1)
      {
        if (*(v5 - 8) != *(v4 - 8))
        {
          goto LABEL_57;
        }

        v6 = *v5;
        if (*v5 >> 60 == 15 || (v7 = *v4, *v4 >> 60 == 15))
        {
          result = sub_2146DA018();
          __break(1u);
          return result;
        }

        v9 = *(v5 - 2);
        v8 = *(v5 - 1);
        v10 = *(v4 - 2);
        v11 = *(v4 - 1);
        v12 = v6 >> 62;
        v13 = v7 >> 62;
        if (v6 >> 62 == 3)
        {
          break;
        }

        if (v12 > 1)
        {
          if (v12 == 2)
          {
            v20 = *(v8 + 16);
            v19 = *(v8 + 24);
            v17 = __OFSUB__(v19, v20);
            v14 = v19 - v20;
            if (v17)
            {
              goto LABEL_63;
            }

            goto LABEL_26;
          }

          v14 = 0;
          if (v13 <= 1)
          {
            goto LABEL_27;
          }
        }

        else if (v12)
        {
          LODWORD(v14) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            goto LABEL_62;
          }

          v14 = v14;
          if (v13 <= 1)
          {
LABEL_27:
            if (v13)
            {
              LODWORD(v18) = HIDWORD(v11) - v11;
              if (__OFSUB__(HIDWORD(v11), v11))
              {
                __break(1u);
LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
              }

              v18 = v18;
            }

            else
            {
              v18 = BYTE6(v7);
            }

            goto LABEL_31;
          }
        }

        else
        {
          v14 = BYTE6(v6);
          if (v13 <= 1)
          {
            goto LABEL_27;
          }
        }

LABEL_20:
        if (v13 != 2)
        {
          if (v14)
          {
            goto LABEL_57;
          }

          goto LABEL_6;
        }

        v16 = *(v11 + 16);
        v15 = *(v11 + 24);
        v17 = __OFSUB__(v15, v16);
        v18 = v15 - v16;
        if (v17)
        {
          goto LABEL_61;
        }

LABEL_31:
        if (v14 != v18)
        {
          goto LABEL_57;
        }

        if (v14 < 1)
        {
          goto LABEL_6;
        }

        if (v12 > 1)
        {
          if (v12 == 2)
          {
            v34 = *(v5 - 2);
            v35 = v3;
            v23 = *(v8 + 16);
            v33 = *(v8 + 24);

            sub_213FDCA18(v8, v6);

            sub_213FDCA18(v11, v7);
            sub_213FDCA18(v8, v6);
            sub_213FDCA18(v11, v7);
            v24 = sub_2146D8728();
            if (v24)
            {
              v25 = sub_2146D8758();
              if (__OFSUB__(v23, v25))
              {
                goto LABEL_66;
              }

              v24 += v23 - v25;
            }

            if (__OFSUB__(v33, v23))
            {
              goto LABEL_65;
            }

            sub_2146D8748();
            v26 = v24;
            v27 = v11;
            v28 = v7;
            v3 = v35;
            goto LABEL_52;
          }

          memset(v37, 0, 14);

          sub_213FDCA18(v8, v6);

          sub_213FDCA18(v11, v7);
          sub_213FDCA18(v8, v6);
          sub_213FDCA18(v11, v7);
          v21 = v11;
          v22 = v7;
        }

        else
        {
          if (v12)
          {
            if (v8 >> 32 < v8)
            {
              goto LABEL_64;
            }

            sub_213FDCA18(v8, v6);

            sub_213FDCA18(v11, v7);
            sub_213FDCA18(v8, v6);
            sub_213FDCA18(v11, v7);
            v29 = sub_2146D8728();
            if (v29)
            {
              v30 = sub_2146D8758();
              if (__OFSUB__(v8, v30))
              {
                goto LABEL_67;
              }

              v29 += v8 - v30;
            }

            sub_2146D8748();
            v26 = v29;
            v27 = v11;
            v28 = v7;
LABEL_52:
            sub_2143D9A20(v26, v27, v28, v37);
            sub_213FDC6BC(v8, v6);
            sub_213FDC6BC(v11, v7);

            sub_213FDC6BC(v11, v7);

            sub_213FDC6BC(v8, v6);
            if ((v37[0] & 1) == 0)
            {
              goto LABEL_57;
            }

            goto LABEL_6;
          }

          v37[0] = *(v5 - 1);
          LOWORD(v37[1]) = v6;
          BYTE2(v37[1]) = BYTE2(v6);
          BYTE3(v37[1]) = BYTE3(v6);
          BYTE4(v37[1]) = BYTE4(v6);
          BYTE5(v37[1]) = BYTE5(v6);

          sub_213FDCA18(v8, v6);

          sub_213FDCA18(v11, v7);
          sub_213FDCA18(v8, v6);
          sub_213FDCA18(v11, v7);
          v21 = v11;
          v22 = v7;
        }

        sub_2143D9A20(v37, v21, v22, &v36);
        sub_213FDC6BC(v8, v6);
        sub_213FDC6BC(v11, v7);

        sub_213FDC6BC(v11, v7);

        sub_213FDC6BC(v8, v6);
        if (!v36)
        {
          goto LABEL_57;
        }

LABEL_6:
        v4 += 6;
        v5 += 6;
        if (!--v2)
        {
          goto LABEL_58;
        }
      }

      v14 = 0;
      if (!v8 && v6 == 0xC000000000000000 && v7 >> 62 == 3)
      {
        v14 = 0;
        if (!v11 && v7 == 0xC000000000000000)
        {
          goto LABEL_6;
        }
      }

LABEL_26:
      if (v13 <= 1)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

LABEL_58:
    result = 1;
  }

  else
  {
LABEL_57:
    result = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2143D6EA8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v17 = v2;
  v18 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    memcpy(__dst, v5, 0x121uLL);
    memcpy(v12, v5, 0x121uLL);
    memcpy(v14, v6, 0x121uLL);
    memcpy(__src, v6, 0x121uLL);
    sub_21430B818(__dst, v10);
    sub_21430B818(v14, v10);
    v8 = sub_2144D2170(v12, __src);
    memcpy(v15, __src, 0x121uLL);
    sub_21430B698(v15);
    memcpy(v16, v12, 0x121uLL);
    sub_21430B698(v16);
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 296;
    v5 += 296;
  }

  return 1;
}

uint64_t sub_2143D6FD4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v79 = v2;
  v80 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[7];
    v9 = v5[9];
    v62 = v5[8];
    v63 = v9;
    v10 = v5[3];
    v11 = v5[5];
    v58 = v5[4];
    v59 = v11;
    v12 = v5[5];
    v13 = v5[7];
    v60 = v5[6];
    v61 = v13;
    v14 = v5[1];
    v55[0] = *v5;
    v55[1] = v14;
    v15 = v5[3];
    v17 = *v5;
    v16 = v5[1];
    v56 = v5[2];
    v57 = v15;
    v18 = v5[9];
    v52 = v62;
    v53 = v18;
    v48 = v58;
    v49 = v12;
    v50 = v60;
    v51 = v8;
    v44 = v17;
    v45 = v16;
    v46 = v56;
    v47 = v10;
    v19 = v6[7];
    v20 = v6[9];
    v72 = v6[8];
    v73 = v20;
    v21 = v6[3];
    v22 = v6[5];
    v68 = v6[4];
    v69 = v22;
    v23 = v6[5];
    v24 = v6[7];
    v70 = v6[6];
    v71 = v24;
    v25 = v6[1];
    v65[0] = *v6;
    v65[1] = v25;
    v26 = v6[3];
    v28 = *v6;
    v27 = v6[1];
    v66 = v6[2];
    v67 = v26;
    v29 = v6[9];
    v41 = v72;
    v42 = v29;
    v37 = v68;
    v38 = v23;
    v39 = v70;
    v40 = v19;
    v33 = v28;
    v34 = v27;
    v64 = *(v5 + 20);
    v54 = *(v5 + 20);
    v74 = *(v6 + 20);
    v43 = *(v6 + 20);
    v35 = v66;
    v36 = v21;
    sub_2143DA3B8(v55, v32);
    sub_2143DA3B8(v65, v32);
    v30 = sub_2144D2984(&v44, &v33);
    v75[8] = v41;
    v75[9] = v42;
    v76 = v43;
    v75[4] = v37;
    v75[5] = v38;
    v75[6] = v39;
    v75[7] = v40;
    v75[0] = v33;
    v75[1] = v34;
    v75[2] = v35;
    v75[3] = v36;
    sub_2143DA414(v75);
    v77[8] = v52;
    v77[9] = v53;
    v78 = v54;
    v77[4] = v48;
    v77[5] = v49;
    v77[6] = v50;
    v77[7] = v51;
    v77[0] = v44;
    v77[1] = v45;
    v77[2] = v46;
    v77[3] = v47;
    sub_2143DA414(v77);
    if ((v30 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 168);
    v5 = (v5 + 168);
  }

  return 1;
}

uint64_t sub_2143D71CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutProtobuf(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_2143DA4B8(v14, v11, type metadata accessor for WorkoutProtobuf);
      sub_2143DA4B8(v15, v8, type metadata accessor for WorkoutProtobuf);
      v17 = *(v4 + 20);
      v18 = *&v11[v17];
      v19 = *&v8[v17];
      if (v18 != v19)
      {
        v20 = *&v11[v17];

        v21 = sub_214432358(v18, v19);

        if ((v21 & 1) == 0)
        {
          break;
        }
      }

      sub_2146D8DF8();
      sub_2143DA5E8(&qword_27C903D38, MEMORY[0x277D216C8]);
      if ((sub_2146D9578() & 1) == 0)
      {
        break;
      }

      sub_2143DA520(v8, type metadata accessor for WorkoutProtobuf);
      sub_2143DA520(v11, type metadata accessor for WorkoutProtobuf);
      v15 += v16;
      v14 += v16;
      if (!--v12)
      {
        return 1;
      }
    }

    sub_2143DA520(v8, type metadata accessor for WorkoutProtobuf);
    sub_2143DA520(v11, type metadata accessor for WorkoutProtobuf);
  }

  return 0;
}

uint64_t sub_2143D7490(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2143D74EC(uint64_t a1, uint64_t a2)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    goto LABEL_119;
  }

  if (!v2 || a1 == a2)
  {
LABEL_117:
    result = 1;
LABEL_120:
    v68 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = *(a1 + 112);
  *v79 = *(a1 + 96);
  *&v79[16] = v3;
  v80 = *(a1 + 128);
  v4 = *(a1 + 48);
  v75 = *(a1 + 32);
  v76 = v4;
  v5 = *(a1 + 80);
  v77 = *(a1 + 64);
  v78 = v5;
  v6 = *(a2 + 48);
  v81 = *(a2 + 32);
  v82 = v6;
  v7 = *(a2 + 64);
  v8 = *(a2 + 80);
  v9 = *(a2 + 96);
  v10 = *(a2 + 112);
  v86 = *(a2 + 128);
  *v85 = v9;
  *&v85[16] = v10;
  v83 = v7;
  v84 = v8;
  if (v75 != v81)
  {
LABEL_119:
    result = 0;
    goto LABEL_120;
  }

  v11 = 0;
  v12 = (a2 + 136);
  v13 = (a1 + 136);
  while (1)
  {
    if (BYTE8(v75))
    {
      if ((BYTE8(v81) & 1) == 0)
      {
        goto LABEL_119;
      }
    }

    else if ((BYTE8(v81) & 1) != 0 || DWORD1(v75) != DWORD1(v81))
    {
      goto LABEL_119;
    }

    v14 = *(&v77 + 1);
    if (*(&v77 + 1) >> 60 == 15)
    {
      break;
    }

    v15 = *(&v83 + 1);
    if (*(&v83 + 1) >> 60 == 15)
    {
      break;
    }

    v16 = v77;
    v17 = v83;
    v18 = *(&v77 + 1) >> 62;
    v19 = *(&v83 + 1) >> 62;
    if (*(&v77 + 1) >> 62 == 3)
    {
      v20 = 0;
      if (v77 == __PAIR128__(0xC000000000000000, 0) && *(&v83 + 1) >> 62 == 3)
      {
        v20 = 0;
        if (v83 == __PAIR128__(0xC000000000000000, 0))
        {
          goto LABEL_39;
        }
      }

LABEL_27:
      if (v19 <= 1)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v26 = *(v77 + 16);
        v25 = *(v77 + 24);
        v23 = __OFSUB__(v25, v26);
        v20 = v25 - v26;
        if (v23)
        {
          goto LABEL_126;
        }

        goto LABEL_27;
      }

      v20 = 0;
      if (v19 <= 1)
      {
        goto LABEL_28;
      }
    }

    else if (v18)
    {
      LODWORD(v20) = DWORD1(v77) - v77;
      if (__OFSUB__(DWORD1(v77), v77))
      {
        goto LABEL_125;
      }

      v20 = v20;
      if (v19 <= 1)
      {
LABEL_28:
        if (v19)
        {
          LODWORD(v24) = DWORD1(v83) - v83;
          if (__OFSUB__(DWORD1(v83), v83))
          {
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
          }

          v24 = v24;
        }

        else
        {
          v24 = BYTE14(v83);
        }

        goto LABEL_34;
      }
    }

    else
    {
      v20 = BYTE14(v77);
      if (v19 <= 1)
      {
        goto LABEL_28;
      }
    }

LABEL_21:
    if (v19 != 2)
    {
      if (v20)
      {
        goto LABEL_119;
      }

LABEL_39:
      sub_2142EB200(&v75, v74);
      sub_2142EB200(&v81, v74);
      goto LABEL_60;
    }

    v22 = *(v83 + 16);
    v21 = *(v83 + 24);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (v23)
    {
      goto LABEL_122;
    }

LABEL_34:
    if (v20 != v24)
    {
      goto LABEL_119;
    }

    if (v20 < 1)
    {
      goto LABEL_39;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v71 = v11;
        v27 = *(v77 + 16);
        v69 = *(v77 + 24);
        sub_213FDCA18(v83, *(&v83 + 1));
        sub_2142EB200(&v75, v74);
        sub_2142EB200(&v81, v74);
        sub_213FDCA18(v17, v15);
        sub_2142EB0A8(&v75, v74);
        sub_2142EB0A8(&v81, v74);
        sub_213FDCA18(v16, v14);
        v28 = sub_2146D8728();
        if (v28)
        {
          v29 = sub_2146D8758();
          if (__OFSUB__(v27, v29))
          {
            goto LABEL_133;
          }

          v28 += v27 - v29;
        }

        if (__OFSUB__(v69, v27))
        {
          goto LABEL_130;
        }

        sub_2146D8748();
        v30 = v28;
        v31 = v17;
        v32 = v15;
        v11 = v71;
        goto LABEL_56;
      }

      memset(v73, 0, 14);
      sub_213FDCA18(v83, *(&v83 + 1));
      sub_2142EB200(&v75, v74);
      sub_2142EB200(&v81, v74);
      sub_213FDCA18(v17, v15);
      sub_2142EB0A8(&v75, v74);
      sub_2142EB0A8(&v81, v74);
    }

    else
    {
      if (v18)
      {
        if (v77 >> 32 < v77)
        {
          goto LABEL_129;
        }

        sub_213FDCA18(v83, *(&v83 + 1));
        sub_2142EB200(&v75, v74);
        sub_2142EB200(&v81, v74);
        sub_213FDCA18(v17, v15);
        sub_2142EB0A8(&v75, v74);
        sub_2142EB0A8(&v81, v74);
        sub_213FDCA18(v16, v14);
        v33 = sub_2146D8728();
        if (v33)
        {
          v34 = sub_2146D8758();
          if (__OFSUB__(v16, v34))
          {
            goto LABEL_134;
          }

          v33 += v16 - v34;
        }

        sub_2146D8748();
        v30 = v33;
        v31 = v17;
        v32 = v15;
LABEL_56:
        sub_2143D9A20(v30, v31, v32, v74);
        sub_213FDC6BC(v17, v15);
        sub_213FDC6BC(v16, v14);
        sub_213FDC6BC(v17, v15);
        v35 = v74[0];
        sub_2142EB000(&v81);
        sub_2142EB000(&v75);
        if ((v35 & 1) == 0)
        {
          goto LABEL_118;
        }

        goto LABEL_60;
      }

      v73[0] = v77;
      LOWORD(v73[1]) = WORD4(v77);
      *(&v73[1] + 2) = *(&v77 + 10);
      sub_213FDCA18(v83, *(&v83 + 1));
      sub_2142EB200(&v75, v74);
      sub_2142EB200(&v81, v74);
      sub_213FDCA18(v17, v15);
      sub_2142EB0A8(&v75, v74);
      sub_2142EB0A8(&v81, v74);
    }

    sub_2143D9A20(v73, v17, v15, v74);
    sub_213FDC6BC(v17, v15);
    sub_213FDC6BC(v16, v14);
    sub_213FDC6BC(v17, v15);
    v36 = v74[0];
    sub_2142EB000(&v81);
    sub_2142EB000(&v75);
    if ((v36 & 1) == 0)
    {
      goto LABEL_118;
    }

LABEL_60:
    v37 = *&v79[16];
    if (*&v79[16] >> 60 == 15)
    {
      break;
    }

    v38 = *&v85[16];
    if (*&v85[16] >> 60 == 15)
    {
      break;
    }

    v39 = *&v79[8];
    v40 = *&v85[8];
    v41 = *&v79[16] >> 62;
    v42 = *&v85[16] >> 62;
    if (*&v79[16] >> 62 == 3)
    {
      v43 = 0;
      if (*&v79[8] == __PAIR128__(0xC000000000000000, 0) && *&v85[16] >> 62 == 3)
      {
        v43 = 0;
        if (*&v85[8] == __PAIR128__(0xC000000000000000, 0))
        {
          goto LABEL_88;
        }
      }

LABEL_76:
      if (v42 <= 1)
      {
        goto LABEL_77;
      }

      goto LABEL_70;
    }

    if (v41 > 1)
    {
      if (v41 == 2)
      {
        v48 = *(*&v79[8] + 16);
        v47 = *(*&v79[8] + 24);
        v23 = __OFSUB__(v47, v48);
        v43 = v47 - v48;
        if (v23)
        {
          goto LABEL_127;
        }

        goto LABEL_76;
      }

      v43 = 0;
      if (v42 <= 1)
      {
        goto LABEL_77;
      }
    }

    else if (v41)
    {
      LODWORD(v43) = *&v79[12] - *&v79[8];
      if (__OFSUB__(*&v79[12], *&v79[8]))
      {
        goto LABEL_128;
      }

      v43 = v43;
      if (v42 <= 1)
      {
LABEL_77:
        if (v42)
        {
          LODWORD(v46) = *&v85[12] - *&v85[8];
          if (__OFSUB__(*&v85[12], *&v85[8]))
          {
            goto LABEL_123;
          }

          v46 = v46;
        }

        else
        {
          v46 = v85[22];
        }

        goto LABEL_83;
      }
    }

    else
    {
      v43 = v79[22];
      if (v42 <= 1)
      {
        goto LABEL_77;
      }
    }

LABEL_70:
    if (v42 != 2)
    {
      if (v43)
      {
        goto LABEL_118;
      }

LABEL_88:
      sub_2142EB104(&v81);
      sub_2142EB104(&v75);
      goto LABEL_109;
    }

    v45 = *(*&v85[8] + 16);
    v44 = *(*&v85[8] + 24);
    v23 = __OFSUB__(v44, v45);
    v46 = v44 - v45;
    if (v23)
    {
      goto LABEL_124;
    }

LABEL_83:
    if (v43 != v46)
    {
LABEL_118:
      sub_2142EB104(&v81);
      sub_2142EB104(&v75);
      goto LABEL_119;
    }

    if (v43 < 1)
    {
      goto LABEL_88;
    }

    if (v41 > 1)
    {
      if (v41 != 2)
      {
        *&v74[6] = 0;
        *v74 = 0;
        sub_213FDCA18(*&v79[8], *&v79[16]);
        sub_213FDCA18(v40, v38);
LABEL_108:
        sub_2143D9A20(v74, v40, v38, v73);
        sub_213FDC6BC(v39, v37);
        sub_213FDC6BC(v40, v38);
        sub_2142EB104(&v81);
        sub_2142EB104(&v75);
        if ((v73[0] & 1) == 0)
        {
          goto LABEL_119;
        }

        goto LABEL_109;
      }

      v72 = v11;
      v49 = *(*&v79[8] + 16);
      v70 = *(*&v79[8] + 24);
      sub_213FDCA18(*&v79[8], *&v79[16]);
      sub_213FDCA18(v40, v38);
      v50 = sub_2146D8728();
      if (v50)
      {
        v51 = sub_2146D8758();
        if (__OFSUB__(v49, v51))
        {
          goto LABEL_135;
        }

        v50 += v49 - v51;
      }

      if (__OFSUB__(v70, v49))
      {
        goto LABEL_132;
      }

      sub_2146D8748();
      v52 = v50;
      v53 = v40;
      v54 = v38;
      v11 = v72;
    }

    else
    {
      if (!v41)
      {
        *v74 = *&v79[8];
        *&v74[8] = *&v79[16];
        *&v74[10] = *&v79[18];
        sub_213FDCA18(*&v79[8], *&v79[16]);
        sub_213FDCA18(v40, v38);
        goto LABEL_108;
      }

      if (*&v79[8] >> 32 < *&v79[8])
      {
        goto LABEL_131;
      }

      sub_213FDCA18(*&v79[8], *&v79[16]);
      sub_213FDCA18(v40, v38);
      v55 = sub_2146D8728();
      if (v55)
      {
        v56 = sub_2146D8758();
        if (__OFSUB__(v39, v56))
        {
          goto LABEL_136;
        }

        v55 += v39 - v56;
      }

      sub_2146D8748();
      v52 = v55;
      v53 = v40;
      v54 = v38;
    }

    sub_2143D9A20(v52, v53, v54, v74);
    sub_213FDC6BC(v39, v37);
    sub_213FDC6BC(v40, v38);
    sub_2142EB104(&v81);
    sub_2142EB104(&v75);
    if ((v74[0] & 1) == 0)
    {
      goto LABEL_119;
    }

LABEL_109:
    if (v80)
    {
      if ((v86 & 1) == 0)
      {
        goto LABEL_119;
      }
    }

    else if ((v86 & 1) != 0 || *&v79[28] != *&v85[28])
    {
      goto LABEL_119;
    }

    if (!--v2)
    {
      goto LABEL_117;
    }

    v57 = v13[5];
    *v79 = v13[4];
    *&v79[16] = v57;
    v58 = v13[1];
    v75 = *v13;
    v76 = v58;
    v59 = v13[3];
    v77 = v13[2];
    v78 = v59;
    v60 = v12[1];
    v81 = *v12;
    v82 = v60;
    v61 = v12[2];
    v62 = v12[3];
    v63 = v12[4];
    v64 = v12[5];
    v65 = *(v12 + 96);
    v12 = (v12 + 104);
    v66 = *(v13 + 96);
    v13 = (v13 + 104);
    v80 = v66;
    v86 = v65;
    *v85 = v63;
    *&v85[16] = v64;
    v83 = v61;
    v84 = v62;
    if (v75 != v81)
    {
      goto LABEL_119;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143D7F2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 96);
  for (i = (a1 + 96); ; i += 9)
  {
    v5 = *(i - 5);
    if (v5 == 1)
    {
      break;
    }

    v6 = *(v3 - 5);
    if (v6 == 1)
    {
      break;
    }

    v7 = *(i - 6);
    v8 = *(i - 3);
    v9 = *(i - 2);
    v10 = *i;
    v11 = *(v3 - 6);
    v13 = *(v3 - 3);
    v12 = *(v3 - 2);
    v14 = *(v3 - 1);
    v15 = *v3;
    v17 = v14;
    v18 = *(i - 1);
    if (v5)
    {
      if (!v6 || (v7 != v11 || v5 != v6) && (sub_2146DA6A8() & 1) == 0)
      {
        return 0;
      }

      if (!v9)
      {
LABEL_22:
        if (v12)
        {
          return 0;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (v6)
      {
        return 0;
      }

      sub_213FDC9D0(v11, 0);
      sub_213FDC9D0(v7, 0);
      if (!v9)
      {
        goto LABEL_22;
      }
    }

    if (!v12 || (v8 != v13 || v9 != v12) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }

LABEL_23:
    if (v10)
    {
      if (!v15 || (v18 != v17 || v10 != v15) && (sub_2146DA6A8() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v15)
    {
      return 0;
    }

    v3 += 9;
    if (!--v2)
    {
      return 1;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143D80E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v13 = *(i - 2);
    v14 = *(i - 1);
    v15 = *i;
    v16 = *(v3 - 2);
    v17 = *(v3 - 1);
    v18 = *v3;
    if (v15 <= 2)
    {
      if (!*i)
      {
        if (*v3)
        {
          sub_2143DA468(*(v3 - 2), *(v3 - 1), *v3);
          v27 = v13;
          v28 = v14;
          v29 = 0;
          goto LABEL_36;
        }

        if (v13 != v16 || v14 != v17)
        {
          v5 = *(i - 2);
          v6 = *(i - 1);
          v7 = *(v3 - 2);
          v8 = *(v3 - 1);
          v9 = sub_2146DA6A8();
          sub_2143DA468(v16, v17, 0);
          sub_2143DA468(v13, v14, 0);
          sub_2143DA490(v13, v14, 0);
          v10 = v16;
          v11 = v17;
          v12 = 0;
          goto LABEL_6;
        }

        sub_2143DA468(*(i - 2), *(i - 1), 0);
        sub_2143DA468(v13, v14, 0);
        sub_2143DA490(v13, v14, 0);
        v19 = v13;
        v20 = v14;
        v21 = 0;
        goto LABEL_30;
      }

      if (v15 != 1)
      {
        v24 = *(v3 - 2);
        v25 = *(v3 - 1);
        if (v18 != 2)
        {
          sub_2143DA468(v24, v25, *v3);
          v27 = v13;
          v28 = v14;
          v29 = 2;
          goto LABEL_36;
        }

        sub_2143DA468(v24, v25, 2);
        sub_2143DA468(v13, v14, 2);
        sub_2143DA468(v16, v17, 2);
        sub_2143DA468(v13, v14, 2);
        v9 = sub_214464F80(v13, v16);
        sub_2143DA490(v13, v14, 2);
        sub_2143DA490(v16, v17, 2);
        sub_2143DA490(v16, v17, 2);
        v10 = v13;
        v11 = v14;
        v12 = 2;
        goto LABEL_6;
      }

      if (v18 != 1)
      {
        goto LABEL_32;
      }

      sub_2143DA490(*(i - 2), *(i - 1), 1);
      sub_2143DA490(v16, v17, 1);
      if (v13 != v16)
      {
        return 0;
      }

      goto LABEL_7;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 != 4)
    {
      if (v18 != 5 || v17 | v16)
      {
LABEL_32:
        v27 = *(v3 - 2);
        v28 = *(v3 - 1);
        v29 = *v3;
        goto LABEL_36;
      }

      sub_2143DA490(*(i - 2), *(i - 1), 5);
      v19 = 0;
      v20 = 0;
      v21 = 5;
LABEL_30:
      sub_2143DA490(v19, v20, v21);
      goto LABEL_7;
    }

    if (v18 != 4)
    {
      goto LABEL_32;
    }

    sub_2143DA490(*(i - 2), *(i - 1), 4);
    sub_2143DA490(v16, v17, 4);
    if ((v16 ^ v13))
    {
      return 0;
    }

LABEL_7:
    v3 += 24;
    if (!--v2)
    {
      return 1;
    }
  }

  v22 = *(v3 - 2);
  v23 = *(v3 - 1);
  if (v18 == 3)
  {
    sub_2143DA468(v22, v23, 3);
    sub_2143DA468(v13, v14, 3);
    sub_2143DA468(v16, v17, 3);
    sub_2143DA468(v13, v14, 3);
    v9 = sub_2143D80E4(v13, v16);
    sub_2143DA490(v13, v14, 3);
    sub_2143DA490(v16, v17, 3);
    sub_2143DA490(v16, v17, 3);
    v10 = v13;
    v11 = v14;
    v12 = 3;
LABEL_6:
    sub_2143DA490(v10, v11, v12);
    if ((v9 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  sub_2143DA468(v22, v23, *v3);
  v27 = v13;
  v28 = v14;
  v29 = 3;
LABEL_36:
  sub_2143DA468(v27, v28, v29);
  sub_2143DA490(v13, v14, v15);
  sub_2143DA490(v16, v17, v18);
  return 0;
}

uint64_t sub_2143D84A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyGroup_Member(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v27 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_24:
    v25 = 0;
    return v25 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_2143DA4B8(v14, v11, type metadata accessor for NearbyGroup_Member);
      sub_2143DA4B8(v15, v8, type metadata accessor for NearbyGroup_Member);
      v17 = *v11 == *v8 && v11[1] == v8[1];
      if (!v17 && (sub_2146DA6A8() & 1) == 0)
      {
        break;
      }

      v18 = *(v4 + 24);
      v19 = (v11 + v18);
      v20 = *(v11 + v18 + 8);
      v21 = (v8 + v18);
      v22 = v21[1];
      if (v20)
      {
        if (!v22)
        {
          break;
        }

        v23 = *v19 == *v21 && v20 == v22;
        if (!v23 && (sub_2146DA6A8() & 1) == 0)
        {
          break;
        }
      }

      else if (v22)
      {
        break;
      }

      v24 = *(v4 + 20);
      sub_2146D8DF8();
      sub_2143DA5E8(&qword_27C903D38, MEMORY[0x277D216C8]);
      v25 = sub_2146D9578();
      sub_2143DA520(v8, type metadata accessor for NearbyGroup_Member);
      sub_2143DA520(v11, type metadata accessor for NearbyGroup_Member);
      if (v25)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v25 & 1;
    }

    sub_2143DA520(v8, type metadata accessor for NearbyGroup_Member);
    sub_2143DA520(v11, type metadata accessor for NearbyGroup_Member);
    goto LABEL_24;
  }

  v25 = 1;
  return v25 & 1;
}

uint64_t sub_2143D879C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        sub_2143DA4B8(v21, v18, a4);
        sub_2143DA4B8(v22, v15, a4);
        v24 = a5(v18, v15);
        sub_2143DA520(v15, a6);
        sub_2143DA520(v18, a6);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_2143D893C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationParticipantProto(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v24 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_2143DA4B8(v14, v11, type metadata accessor for CSDMConversationParticipantProto);
        sub_2143DA4B8(v15, v8, type metadata accessor for CSDMConversationParticipantProto);
        v17 = *(v4 + 20);
        v18 = *&v11[v17];
        v19 = *&v8[v17];
        if (v18 != v19)
        {
          v20 = *&v11[v17];

          v21 = sub_21401A114(v18, v19);

          if ((v21 & 1) == 0)
          {
            break;
          }
        }

        sub_2146D8DF8();
        sub_2143DA5E8(&qword_27C903D38, MEMORY[0x277D216C8]);
        v22 = sub_2146D9578();
        sub_2143DA520(v8, type metadata accessor for CSDMConversationParticipantProto);
        sub_2143DA520(v11, type metadata accessor for CSDMConversationParticipantProto);
        if (v22)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v22 & 1;
      }

      sub_2143DA520(v8, type metadata accessor for CSDMConversationParticipantProto);
      sub_2143DA520(v11, type metadata accessor for CSDMConversationParticipantProto);
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_2143D8BC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationActivityProto(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v67 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903858, &unk_2146E6F50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v59 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D80, &qword_2146E9860);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - v14;
  v70 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v16 = *(*(v70 - 1) + 64);
  v17 = MEMORY[0x28223BE20](v70);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v69 = &v59 - v21;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    goto LABEL_36;
  }

  if (!v22 || a1 == a2)
  {
    v54 = 1;
    return v54 & 1;
  }

  v23 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v65 = (v5 + 48);
  v66 = v4;
  v62 = *(v20 + 72);
  v63 = v11;
  v26 = v69;
  v60 = v12;
  v61 = v15;
  v64 = v19;
  while (1)
  {
    v68 = v24;
    sub_2143DA4B8(v24, v26, type metadata accessor for CSDMConversationActivitySessionProto);
    sub_2143DA4B8(v25, v19, type metadata accessor for CSDMConversationActivitySessionProto);
    v27 = v70[5];
    v28 = (v26 + v27);
    v29 = *(v26 + v27 + 8);
    v30 = &v19[v27];
    v31 = *(v30 + 1);
    if (v29)
    {
      if (!v31)
      {
        goto LABEL_35;
      }

      v32 = *v28 == *v30 && v29 == v31;
      if (!v32 && (sub_2146DA6A8() & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v31)
    {
      goto LABEL_35;
    }

    v33 = v70[6];
    v34 = *(v12 + 48);
    sub_213FB2E54(v26 + v33, v15, &unk_27C903858, &unk_2146E6F50);
    sub_213FB2E54(&v19[v33], &v15[v34], &unk_27C903858, &unk_2146E6F50);
    v35 = *v65;
    v36 = v15;
    v37 = v15;
    v38 = v66;
    if ((*v65)(v36, 1, v66) != 1)
    {
      break;
    }

    if (v35((v37 + v34), 1, v38) != 1)
    {
      goto LABEL_32;
    }

    sub_213FB2DF4(v37, &unk_27C903858, &unk_2146E6F50);
    v15 = v37;
    v19 = v64;
    v26 = v69;
LABEL_21:
    v49 = v70[7];
    v50 = (v26 + v49);
    v51 = *(v26 + v49 + 8);
    v52 = &v19[v49];
    v53 = v19[v49 + 8];
    if (v51)
    {
      if (!v53)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (*v50 != *v52)
      {
        LOBYTE(v53) = 1;
      }

      if (v53)
      {
        goto LABEL_35;
      }
    }

    sub_2146D8DF8();
    sub_2143DA5E8(&qword_27C903D38, MEMORY[0x277D216C8]);
    v54 = sub_2146D9578();
    sub_2143DA520(v19, type metadata accessor for CSDMConversationActivitySessionProto);
    sub_2143DA520(v26, type metadata accessor for CSDMConversationActivitySessionProto);
    if (v54)
    {
      v25 += v62;
      v24 = v68 + v62;
      if (--v22)
      {
        continue;
      }
    }

    return v54 & 1;
  }

  v39 = v63;
  sub_213FB2E54(v37, v63, &unk_27C903858, &unk_2146E6F50);
  if (v35((v37 + v34), 1, v38) == 1)
  {
    sub_2143DA520(v39, type metadata accessor for CSDMConversationActivityProto);
LABEL_32:
    v55 = &qword_27C903D80;
    v56 = &qword_2146E9860;
    v57 = v37;
    goto LABEL_34;
  }

  v40 = v67;
  sub_2143DA580(v37 + v34, v67, type metadata accessor for CSDMConversationActivityProto);
  v41 = *(v38 + 20);
  v42 = *(v39 + v41);
  v43 = *(v40 + v41);
  if (v42 == v43 || (v44 = *(v39 + v41), , , v45 = sub_214021228(v42, v43), , , (v45 & 1) != 0))
  {
    sub_2146D8DF8();
    sub_2143DA5E8(&qword_27C903D38, MEMORY[0x277D216C8]);
    v46 = v63;
    v47 = v67;
    v48 = sub_2146D9578();
    sub_2143DA520(v47, type metadata accessor for CSDMConversationActivityProto);
    sub_2143DA520(v46, type metadata accessor for CSDMConversationActivityProto);
    v15 = v61;
    sub_213FB2DF4(v61, &unk_27C903858, &unk_2146E6F50);
    v12 = v60;
    v19 = v64;
    v26 = v69;
    if ((v48 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_21;
  }

  sub_2143DA520(v67, type metadata accessor for CSDMConversationActivityProto);
  sub_2143DA520(v63, type metadata accessor for CSDMConversationActivityProto);
  v55 = &unk_27C903858;
  v56 = &unk_2146E6F50;
  v57 = v61;
LABEL_34:
  sub_213FB2DF4(v57, v55, v56);
  v19 = v64;
  v26 = v69;
LABEL_35:
  sub_2143DA520(v19, type metadata accessor for CSDMConversationActivitySessionProto);
  sub_2143DA520(v26, type metadata accessor for CSDMConversationActivitySessionProto);
LABEL_36:
  v54 = 0;
  return v54 & 1;
}

uint64_t sub_2143D9264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CSDMConversationInvitationPreferenceProto(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v32 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_2143DA4B8(v14, v11, type metadata accessor for CSDMConversationInvitationPreferenceProto);
        sub_2143DA4B8(v15, v8, type metadata accessor for CSDMConversationInvitationPreferenceProto);
        v17 = v4[5];
        v18 = &v11[v17];
        v19 = v11[v17 + 4];
        v20 = &v8[v17];
        v21 = v8[v17 + 4];
        if (v19)
        {
          if (!v21)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (*v18 != *v20)
          {
            LOBYTE(v21) = 1;
          }

          if (v21)
          {
LABEL_25:
            sub_2143DA520(v8, type metadata accessor for CSDMConversationInvitationPreferenceProto);
            sub_2143DA520(v11, type metadata accessor for CSDMConversationInvitationPreferenceProto);
            goto LABEL_26;
          }
        }

        v22 = v4[6];
        v23 = v11[v22];
        v24 = v8[v22];
        if (v23 == 4)
        {
          if (v24 != 4)
          {
            goto LABEL_25;
          }
        }

        else if (v23 != v24)
        {
          goto LABEL_25;
        }

        v25 = v4[7];
        v26 = &v11[v25];
        v27 = v11[v25 + 4];
        v28 = &v8[v25];
        v29 = v8[v25 + 4];
        if (v27)
        {
          if (!v29)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (*v26 != *v28)
          {
            LOBYTE(v29) = 1;
          }

          if (v29)
          {
            goto LABEL_25;
          }
        }

        sub_2146D8DF8();
        sub_2143DA5E8(&qword_27C903D38, MEMORY[0x277D216C8]);
        v30 = sub_2146D9578();
        sub_2143DA520(v8, type metadata accessor for CSDMConversationInvitationPreferenceProto);
        sub_2143DA520(v11, type metadata accessor for CSDMConversationInvitationPreferenceProto);
        if (v30)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v30 & 1;
      }
    }

    v30 = 1;
  }

  else
  {
LABEL_26:
    v30 = 0;
  }

  return v30 & 1;
}

uint64_t sub_2143D9534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthSharingAuthorization(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v37 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_2143DA4B8(v14, v11, type metadata accessor for HealthSharingAuthorization);
        sub_2143DA4B8(v15, v8, type metadata accessor for HealthSharingAuthorization);
        v17 = v4[5];
        v18 = &v11[v17];
        v19 = *&v11[v17 + 8];
        v20 = &v8[v17];
        v21 = *(v20 + 1);
        if (v19)
        {
          if (!v21 || (*v18 == *v20 ? (v22 = v19 == v21) : (v22 = 0), !v22 && (sub_2146DA6A8() & 1) == 0))
          {
LABEL_36:
            sub_2143DA520(v11, type metadata accessor for HealthSharingAuthorization);
            sub_2143DA520(v8, type metadata accessor for HealthSharingAuthorization);
            goto LABEL_37;
          }
        }

        else if (v21)
        {
          goto LABEL_36;
        }

        v23 = v4[6];
        v24 = &v11[v23];
        v25 = *&v11[v23 + 8];
        v26 = &v8[v23];
        v27 = *(v26 + 1);
        if (v25)
        {
          if (!v27)
          {
            goto LABEL_36;
          }

          v28 = *v24 == *v26 && v25 == v27;
          if (!v28 && (sub_2146DA6A8() & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else if (v27)
        {
          goto LABEL_36;
        }

        v29 = v4[7];
        v30 = &v11[v29];
        v31 = *&v11[v29 + 8];
        v32 = &v8[v29];
        v33 = *(v32 + 1);
        if (v31)
        {
          if (!v33)
          {
            goto LABEL_36;
          }

          v34 = *v30 == *v32 && v31 == v33;
          if (!v34 && (sub_2146DA6A8() & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else if (v33)
        {
          goto LABEL_36;
        }

        sub_2146D8DF8();
        sub_2143DA5E8(&qword_27C903D38, MEMORY[0x277D216C8]);
        v35 = sub_2146D9578();
        sub_2143DA520(v11, type metadata accessor for HealthSharingAuthorization);
        sub_2143DA520(v8, type metadata accessor for HealthSharingAuthorization);
        if (v35)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v35 & 1;
      }
    }

    v35 = 1;
  }

  else
  {
LABEL_37:
    v35 = 0;
  }

  return v35 & 1;
}

uint64_t sub_2143D9840(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_2146DA998();

  return sub_2143D9DE0(a1, v4);
}

uint64_t sub_2143D9890()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_2146DA958();
  sub_2146DA998();
  sub_2143D9DE0(v4, v2);
  return sub_2146DA9B8();
}

uint64_t sub_2143D98F0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_2146DA958();
  sub_2146DA998();
  sub_2143D9DE0(v4, v2);
  return sub_2146DA9B8();
}

uint64_t sub_2143D9950(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_2146DA998();

  return sub_2143D9DE0(a1, v4);
}

uint64_t sub_2143D99A0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_2146DA958();
  sub_2146DA998();
  sub_2143D9DE0(v4, v2);
  return sub_2146DA9B8();
}

uint64_t sub_2143D9A20@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2146D8728();
    if (v10)
    {
      v11 = sub_2146D8758();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2146D8748();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2146D8728();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2146D8758();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2146D8748();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2143D9C50(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2143D9FFC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_213FB54FC(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_2143D9A20(v14, a3, a4, &v13);
  v10 = v4;
  sub_213FB54FC(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_2143D9DE0(uint64_t a1, uint64_t a2)
{
  v3 = _s5CodecVMa();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x216055860](v8);
  if (v8)
  {
    v10 = *(v3 + 24);
    v11 = &v7[*(v3 + 20)];
    v12 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_2143DA4B8(v12, v7, _s5CodecVMa);
      sub_2146D9C68();
      sub_2143DA5E8(&qword_27C912920, MEMORY[0x277D850E8]);
      sub_2146D94E8();
      if (*(v11 + 1))
      {
        v14 = *v11;
        sub_2146DA978();
        sub_2146D9698();
      }

      else
      {
        sub_2146DA978();
      }

      sub_2146D9C88();
      sub_2143DA5E8(&qword_27C912928, MEMORY[0x277D85100]);
      sub_2146D94E8();
      result = sub_2143DA520(v7, _s5CodecVMa);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_2143D9FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2146D8728();
  v11 = result;
  if (result)
  {
    result = sub_2146D8758();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2146D8748();
  sub_2143D9A20(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_2143DA0B4(uint64_t a1, uint64_t a2)
{
  sub_2146D9C68();
  sub_2143DA5E8(&qword_27C9054F8, MEMORY[0x277D850E8]);
  sub_2146D97C8();
  sub_2146D97C8();
  if (v16 == v15)
  {
    v4 = _s5CodecVMa();
    v5 = *(v4 + 20);
    v6 = (a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    v9 = v8[1];
    if (v7)
    {
      if (v9)
      {
        if (*v6 == *v8 && v7 == v9)
        {
          goto LABEL_9;
        }

        v11 = v4;
        v12 = sub_2146DA6A8();
        v4 = v11;
        if (v12)
        {
          goto LABEL_9;
        }
      }
    }

    else if (!v9)
    {
LABEL_9:
      v13 = *(v4 + 24);
      sub_2146D9C88();
      sub_2143DA5E8(&qword_27C912950, MEMORY[0x277D85100]);
      sub_2146D97C8();
      sub_2146D97C8();
      return v16 == v15;
    }
  }

  return 0;
}

unint64_t sub_2143DA290()
{
  result = qword_27C912938;
  if (!qword_27C912938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912938);
  }

  return result;
}

void sub_2143DA30C()
{
  sub_2146D9C68();
  if (v0 <= 0x3F)
  {
    sub_2143ACE3C();
    if (v1 <= 0x3F)
    {
      sub_2146D9C88();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2143DA468(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 3 || a3 == 2)
  {
  }

  return result;
}

uint64_t sub_2143DA490(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 3 || a3 == 2)
  {
  }

  return result;
}

uint64_t sub_2143DA4B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2143DA520(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2143DA580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2143DA5E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2143DA630@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2143DA67C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143DA6D8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143DA754@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2143DA7D4(char *a1, char *a2)
{
  if (*&aFqdn_3[8 * *a1] == *&aFqdn_3[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_2143DA83C()
{
  v1 = *v0;
  sub_2146DA958();
  v2 = *&aFqdn_3[8 * v1];
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143DA898()
{
  v1 = *&aFqdn_3[8 * *v0];
  sub_2146D9698();
}

uint64_t sub_2143DA8D8()
{
  v1 = *v0;
  sub_2146DA958();
  v2 = *&aFqdn_3[8 * v1];
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143DA930@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_2143DA754(a1);
}

uint64_t sub_2143DAA18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2143DAB60(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143DABFC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 8);
  v9 = *(a2 + 24);

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  return result;
}

void (*sub_2143DAC74(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

uint64_t sub_2143DAD4C(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

unint64_t sub_2143DAD9C()
{
  result = qword_27C912960;
  if (!qword_27C912960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912960);
  }

  return result;
}

unint64_t sub_2143DADF4()
{
  result = qword_27C912968;
  if (!qword_27C912968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C912970, qword_214739D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912968);
  }

  return result;
}

uint64_t sub_2143DAEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2143DAF1C()
{
  result = qword_27C912978;
  if (!qword_27C912978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912978);
  }

  return result;
}

unint64_t sub_2143DAF70@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 16;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2143DB0D8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2143E05A8;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_214059908;
  v6[3] = 0;
  v6[4] = 32;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_21439DF90;
  *(v5 + 24) = v6;
  *(v3 + 40) = v5;
  v7 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_214032610;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2143DB2A8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

uint64_t sub_2143DB418@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2143DB470(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_u64[1];

  sub_214032564(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143DB4D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2143DB530(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2143DB598@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2143DB5F0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[5].n128_u64[1];
  v7 = v1[6].n128_i64[0];
  v8 = v1[6].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143DB658@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2143DB6B0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[8].n128_u64[1];
  v7 = v1[9].n128_i64[0];
  v8 = v1[9].n128_u64[1];

  sub_214032564(v7, v8);
  result = *a1;
  v1[8] = *a1;
  v1[9].n128_u64[0] = v3;
  v1[9].n128_u64[1] = v4;
  v1[10].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143DB718()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2143DB7A0()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

uint64_t sub_2143DB820()
{
  if (*(v0 + 104) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 96);

    return v1;
  }

  return result;
}

uint64_t sub_2143DB8A0()
{
  v1 = *(v0 + 152);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 144);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

unint64_t sub_2143DB928@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2143E05A8;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_214059908;
  v6[3] = 0;
  v6[4] = 32;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_21439DF90;
  *(v5 + 24) = v6;
  *(v3 + 40) = v5;
  v7 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_214032610;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2143DBAC4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2143DBC68@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 16;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A571C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5724;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2143DBDD0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2140676DC;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_214059908;
  v6[3] = 0;
  v6[4] = 255;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_214059860;
  *(v5 + 24) = v6;
  *(v3 + 40) = v5;
  v7 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_21403254C;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2143DBF64@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2143DBFBC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_2143DC024@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2143DC07C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[3].n128_u64[1];
  v7 = v1[4].n128_i64[0];
  v8 = v1[4].n128_u64[1];

  sub_214032564(v7, v8);
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143DC0E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2143DC13C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 112);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 88) = *a1;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  return result;
}

uint64_t sub_2143DC1A4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2143DC1FC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[8].n128_u64[1];
  v7 = v1[9].n128_i64[0];
  v8 = v1[9].n128_u64[1];

  sub_214032564(v7, v8);
  result = *a1;
  v1[8] = *a1;
  v1[9].n128_u64[0] = v3;
  v1[9].n128_u64[1] = v4;
  v1[10].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2143DC264@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  v5 = *(v1 + 200);
  *a1 = *(v1 + 168);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2143DC2BC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 176);
  v7 = *(v1 + 184);
  v8 = *(v1 + 192);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 168) = *a1;
  *(v1 + 184) = v3;
  *(v1 + 192) = v4;
  *(v1 + 200) = v5;
  return result;
}

uint64_t sub_2143DC324()
{
  if (*(v0 + 32) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 24);

    return v1;
  }

  return result;
}

uint64_t sub_2143DC3A4()
{
  v1 = *(v0 + 72);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 64);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2143DC42C()
{
  if (*(v0 + 112) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 104);

    return v1;
  }

  return result;
}

uint64_t sub_2143DC4AC()
{
  v1 = *(v0 + 152);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 144);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2143DC534()
{
  if (*(v0 + 192) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 184);

    return v1;
  }

  return result;
}

uint64_t sub_2143DC5B4@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 0xFu)
  {
    if (result <= 0x21u)
    {
      if (result <= 0x11u)
      {
        if (result == 16)
        {
          result = 13;
          *a2 = 13;
          return result;
        }

        if (result == 17)
        {
          result = 14;
          *a2 = 14;
          return result;
        }
      }

      else
      {
        switch(result)
        {
          case 0x12u:
            result = 15;
            *a2 = 15;
            return result;
          case 0x20u:
            result = 16;
            *a2 = 16;
            return result;
          case 0x21u:
            result = 17;
            *a2 = 17;
            return result;
        }
      }
    }

    else if (result > 0x3Fu)
    {
      switch(result)
      {
        case '@':
          result = 21;
          *a2 = 21;
          return result;
        case 'A':
          result = 22;
          *a2 = 22;
          return result;
        case 'B':
          result = 23;
          *a2 = 23;
          return result;
      }
    }

    else
    {
      switch(result)
      {
        case '""':
          result = 18;
          *a2 = 18;
          return result;
        case '0':
          result = 19;
          *a2 = 19;
          return result;
        case '1':
          result = 20;
          *a2 = 20;
          return result;
      }
    }
  }

  else if (result < 0xDu)
  {
    *a2 = result;
    return result;
  }

  result = 24;
  *a2 = 24;
  return result;
}

uint64_t sub_2143DC708()
{
  v1 = *v0;
  sub_2146DA958();
  v2 = byte_21473A962[v1];
  sub_2146DA978();
  return sub_2146DA9B8();
}

uint64_t sub_2143DC790()
{
  v1 = *v0;
  sub_2146DA958();
  v2 = byte_21473A962[v1];
  sub_2146DA978();
  return sub_2146DA9B8();
}

uint64_t sub_2143DC8E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 152);
  v14[8] = *(v1 + 136);
  v14[9] = v3;
  v15 = *(v1 + 168);
  v4 = *(v1 + 56);
  v5 = *(v1 + 88);
  v14[4] = *(v1 + 72);
  v14[5] = v5;
  v14[6] = *(v1 + 104);
  v14[7] = v2;
  v6 = *(v1 + 24);
  v14[0] = *(v1 + 8);
  v14[1] = v6;
  v14[2] = *(v1 + 40);
  v14[3] = v4;
  v7 = *(v1 + 120);
  v8 = *(v1 + 152);
  *(a1 + 128) = *(v1 + 136);
  *(a1 + 144) = v8;
  *(a1 + 160) = *(v1 + 168);
  v9 = *(v1 + 56);
  v10 = *(v1 + 88);
  *(a1 + 64) = *(v1 + 72);
  *(a1 + 80) = v10;
  *(a1 + 96) = *(v1 + 104);
  *(a1 + 112) = v7;
  v11 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v11;
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = v9;
  return sub_213FB2E54(v14, v13, &qword_27C9085E8, &qword_2146F50F0);
}

__n128 sub_2143DC9B0(uint64_t a1)
{
  v3 = *(v1 + 120);
  v4 = *(v1 + 152);
  v14[8] = *(v1 + 136);
  v14[9] = v4;
  v15 = *(v1 + 168);
  v5 = *(v1 + 56);
  v6 = *(v1 + 88);
  v14[4] = *(v1 + 72);
  v14[5] = v6;
  v14[6] = *(v1 + 104);
  v14[7] = v3;
  v7 = *(v1 + 24);
  v14[0] = *(v1 + 8);
  v14[1] = v7;
  v14[2] = *(v1 + 40);
  v14[3] = v5;
  sub_213FB2DF4(v14, &qword_27C9085E8, &qword_2146F50F0);
  v8 = *(a1 + 96);
  *(v1 + 120) = *(a1 + 112);
  v9 = *(a1 + 144);
  *(v1 + 136) = *(a1 + 128);
  *(v1 + 152) = v9;
  v10 = *(a1 + 32);
  *(v1 + 56) = *(a1 + 48);
  v11 = *(a1 + 80);
  *(v1 + 72) = *(a1 + 64);
  *(v1 + 88) = v11;
  *(v1 + 104) = v8;
  result = *a1;
  v13 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v13;
  *(v1 + 168) = *(a1 + 160);
  *(v1 + 40) = v10;
  return result;
}

uint64_t sub_2143DCA98@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[20];
  v3 = v1[22];
  v30 = v1[21];
  v31[0] = v3;
  v4 = v1[16];
  v5 = v1[18];
  v26 = v1[17];
  v6 = v26;
  v27 = v5;
  v7 = v1[18];
  v8 = v1[20];
  v28 = v1[19];
  v9 = v28;
  v29 = v8;
  v10 = v1[12];
  v11 = v1[14];
  v22 = v1[13];
  v12 = v22;
  v23 = v11;
  v13 = v1[14];
  v14 = v1[16];
  v24 = v1[15];
  v15 = v24;
  v25 = v14;
  v16 = v1[12];
  v21[0] = v1[11];
  v17 = v21[0];
  v21[1] = v16;
  *(v31 + 9) = *(v1 + 361);
  v18 = v1[22];
  a1[10] = v30;
  a1[11] = v18;
  *(a1 + 185) = *(v1 + 361);
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v9;
  a1[9] = v2;
  a1[2] = v12;
  a1[3] = v13;
  a1[4] = v15;
  a1[5] = v4;
  *a1 = v17;
  a1[1] = v10;
  return sub_213FB2E54(v21, &v20, &qword_27C908600, &qword_2146F50F8);
}

__n128 sub_2143DCB54(uint64_t a1)
{
  v3 = v1[22];
  v15[10] = v1[21];
  v16[0] = v3;
  v4 = v1[18];
  v15[6] = v1[17];
  v15[7] = v4;
  v5 = v1[20];
  v15[8] = v1[19];
  v15[9] = v5;
  v6 = v1[14];
  v15[2] = v1[13];
  v15[3] = v6;
  v7 = v1[16];
  v15[4] = v1[15];
  v15[5] = v7;
  v8 = v1[12];
  v15[0] = v1[11];
  v15[1] = v8;
  *(v16 + 9) = *(v1 + 361);
  sub_213FB2DF4(v15, &qword_27C908600, &qword_2146F50F8);
  v9 = *(a1 + 176);
  v1[21] = *(a1 + 160);
  v1[22] = v9;
  *(v1 + 361) = *(a1 + 185);
  v10 = *(a1 + 112);
  v1[17] = *(a1 + 96);
  v1[18] = v10;
  v11 = *(a1 + 144);
  v1[19] = *(a1 + 128);
  v1[20] = v11;
  v12 = *(a1 + 48);
  v1[13] = *(a1 + 32);
  v1[14] = v12;
  v13 = *(a1 + 80);
  v1[15] = *(a1 + 64);
  v1[16] = v13;
  result = *(a1 + 16);
  v1[11] = *a1;
  v1[12] = result;
  return result;
}

uint64_t sub_2143DCC30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 16);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_2143DCCA4(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143DCD50(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2143DCE18(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 24);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2143DCEB8;
  }

  return result;
}

uint64_t sub_2143DCEB8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2143DCFF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2143DD044(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v9, v10);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

void (*sub_2143DD0CC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2143DD16C;
}

void sub_2143DD16C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 8);
  v9 = *(v3 + 16);
  v11 = *(v3 + 24);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v11);
    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_214032564(v14, v15);
  }

  else
  {
    v16 = *(v3 + 8);

    sub_214032564(v9, v11);
    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v8;
  }

  free(v2);
}

uint64_t sub_2143DD24C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v11 = *(v3 + 72);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 56), *(v3 + 64));

    *(v3 + 56) = a1;
    *(v3 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2143DD390(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21407493C;
  }

  return result;
}

void (*sub_2143DD468(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214074D48;
}

uint64_t sub_2143DD508@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 104);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 96);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2143DD57C(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143DD62C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v11 = *(v3 + 112);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 96), *(v3 + 104));

    *(v3 + 96) = a1;
    *(v3 + 104) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2143DD770(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 96);
  *(v3 + 24) = v5;
  v6 = *(v1 + 104);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2143DD848;
  }

  return result;
}

void sub_2143DD848(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 80);
    v11 = *(v3 + 88);
    v16 = *(v3 + 112);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 96) = v5;
      *(v12 + 104) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v7 = *(v3 + 80);
  v6 = *(v3 + 88);
  v16 = *(v3 + 112);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 96) = v5;
  *(v8 + 104) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_2143DDA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  *a2 = *(a1 + 80);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2143DDA6C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 88);
  v9 = *(a2 + 96);
  v10 = *(a2 + 104);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 80) = v4;
  *(a2 + 88) = v3;
  *(a2 + 96) = v5;
  *(a2 + 104) = v6;
  *(a2 + 112) = v7;
  return result;
}

void (*sub_2143DDAF4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2143DDB94;
}

void sub_2143DDB94(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 88);
  v9 = *(v3 + 96);
  v11 = *(v3 + 104);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v7;
    *(v3 + 104) = v6;
    *(v3 + 112) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 88);

    sub_213FDC6D0(v9, v11);
    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v7;
    *(v3 + 104) = v6;
    *(v3 + 112) = v8;
  }

  free(v2);
}

uint64_t sub_2143DDC94(uint64_t result)
{
  *(v1 + 116) = result;
  *(v1 + 120) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2143DDCC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 152);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 144);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_2143DDD38(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143DDDE8(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2143DDEB4(uint64_t *a1))()
{
  a1[2] = v1;
  v2 = *(v1 + 152);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 144);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2143E05A0;
  }

  return result;
}

uint64_t sub_2143DDF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 144);
  v4 = *(a1 + 152);
  v5 = *(a1 + 160);
  *a2 = *(a1 + 128);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2143DDFA8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 136);
  v9 = *(a2 + 144);
  v10 = *(a2 + 152);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v9, v10);
  *(a2 + 128) = v4;
  *(a2 + 136) = v3;
  *(a2 + 144) = v5;
  *(a2 + 152) = v6;
  *(a2 + 160) = v7;
  return result;
}

uint64_t (*sub_2143DE030(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  v8 = *(v1 + 160);
  *v4 = *(v1 + 128);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2143E05A4;
}

uint64_t sub_2143DE0D0()
{
  sub_2143DE178();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2143DE124()
{
  sub_2143DE178();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2143DE178()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 == 11)
  {
    goto LABEL_16;
  }

  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 104);
  v21 = *(v0 + 96);
  v5 = *(v0 + 116);
  v6 = *(v0 + 120);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v9 = MEMORY[0x277D84F98];
  if (v1 >> 60 != 15)
  {
    v20 = *(v0 + 144);
    v10 = *(v0 + 120);
    v11 = *(v0 + 116);
    v12 = *(v0 + 16);
    v24 = MEMORY[0x277CC9318];
    *&v23 = v12;
    *(&v23 + 1) = v1;
    sub_213FDC730(&v23, v22);
    sub_21404F7E0(v12, v1);
    sub_213FDCA18(v12, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v22, 0x4B5249645FLL, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v14 = v12;
    v5 = v11;
    v6 = v10;
    v7 = v20;
    sub_214032564(v14, v1);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_16;
    }

    v24 = MEMORY[0x277D837D0];
    *&v23 = v3;
    *(&v23 + 1) = v2;
    sub_213FDC730(&v23, v22);

    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v22, 0x6C65646F6DLL, 0xE500000000000000, v15);
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  if (v4 == 1)
  {
LABEL_16:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v24 = MEMORY[0x277D837D0];
  *&v23 = v21;
  *(&v23 + 1) = v4;
  sub_213FDC730(&v23, v22);

  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v22, 0x44497364695FLL, 0xE600000000000000, v16);
LABEL_10:
  if ((v6 & 1) == 0)
  {
    v24 = MEMORY[0x277D84CC0];
    LODWORD(v23) = v5;
    sub_213FDC730(&v23, v22);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v22, 6710879, 0xE300000000000000, v17);
  }

  if (v8 >> 60 == 11)
  {
    goto LABEL_16;
  }

  if (v8 >> 60 != 15)
  {
    v24 = MEMORY[0x277CC9318];
    *&v23 = v7;
    *(&v23 + 1) = v8;
    sub_213FDC730(&v23, v22);
    sub_21404F7E0(v7, v8);
    sub_213FDCA18(v7, v8);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v22, 0x4B5064655FLL, 0xE500000000000000, v18);
    sub_214032564(v7, v8);
  }

  return v9;
}

uint64_t sub_2143DE474(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2143DE4A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v11 = *(v3 + 40);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 24), *(v3 + 32));

    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2143DE5E8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  v6 = *(v1 + 32);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214053CC4;
  }

  return result;
}

void (*sub_2143DE6C0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2140540D0;
}

uint64_t sub_2143DE760@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 72);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 64);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_2143DE7D4(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143DE884(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2143DE950(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 72);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 64);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2143DE9F0;
  }

  return result;
}

uint64_t sub_2143DE9F0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2143DEB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  *a2 = *(a1 + 48);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2143DEB84(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = *(a2 + 72);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v9, v10);
  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  *(a2 + 80) = v7;
  return result;
}

void (*sub_2143DEC0C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2143DECAC;
}

void sub_2143DECAC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 56);
  v9 = *(v3 + 64);
  v11 = *(v3 + 72);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v11);
    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v7;
    *(v3 + 72) = v6;
    *(v3 + 80) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_214032564(v14, v15);
  }

  else
  {
    v16 = *(v3 + 56);

    sub_214032564(v9, v11);
    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v7;
    *(v3 + 72) = v6;
    *(v3 + 80) = v8;
  }

  free(v2);
}

uint64_t sub_2143DED8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 88);
  v7 = *(v2 + 96);
  v11 = *(v3 + 120);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 104), *(v3 + 112));

    *(v3 + 104) = a1;
    *(v3 + 112) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2143DEED0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 104);
  *(v3 + 24) = v5;
  v6 = *(v1 + 112);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214054E1C;
  }

  return result;
}

void (*sub_2143DEFA8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  v8 = *(v1 + 120);
  *v4 = *(v1 + 88);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214055228;
}

uint64_t sub_2143DF048(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2143DF114(uint64_t *a1))()
{
  a1[2] = v1;
  v2 = *(v1 + 152);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 144);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2143DF1B4;
  }

  return result;
}

uint64_t sub_2143DF1B8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t (*sub_2143DF2F8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  v8 = *(v1 + 160);
  *v4 = *(v1 + 128);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2143DF398;
}

void sub_2143DF39C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 136);
  v9 = *(v3 + 144);
  v11 = *(v3 + 152);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v11);
    *(v3 + 128) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v7;
    *(v3 + 152) = v6;
    *(v3 + 160) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_214032564(v14, v15);
  }

  else
  {
    v16 = *(v3 + 136);

    sub_214032564(v9, v11);
    *(v3 + 128) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v7;
    *(v3 + 152) = v6;
    *(v3 + 160) = v8;
  }

  free(v2);
}

uint64_t sub_2143DF47C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 192);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 184);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2143DF4F0(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143DF5A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 168);
  v7 = *(v2 + 176);
  v11 = *(v3 + 200);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 184), *(v3 + 192));

    *(v3 + 184) = a1;
    *(v3 + 192) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2143DF6E4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 184);
  *(v3 + 24) = v5;
  v6 = *(v1 + 192);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2143DF7BC;
  }

  return result;
}

void sub_2143DF7BC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 168);
    v11 = *(v3 + 176);
    v16 = *(v3 + 200);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 184) = v5;
      *(v12 + 192) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v7 = *(v3 + 168);
  v6 = *(v3 + 176);
  v16 = *(v3 + 200);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 184) = v5;
  *(v8 + 192) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_2143DF98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 176);
  v3 = *(a1 + 184);
  v4 = *(a1 + 192);
  v5 = *(a1 + 200);
  *a2 = *(a1 + 168);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2143DF9E0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 176);
  v9 = *(a2 + 184);
  v10 = *(a2 + 192);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 168) = v4;
  *(a2 + 176) = v3;
  *(a2 + 184) = v5;
  *(a2 + 192) = v6;
  *(a2 + 200) = v7;
  return result;
}

void (*sub_2143DFA68(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 176);
  v6 = *(v1 + 184);
  v7 = *(v1 + 192);
  v8 = *(v1 + 200);
  *v4 = *(v1 + 168);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2143DFB08;
}

void sub_2143DFB08(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 176);
  v9 = *(v3 + 184);
  v11 = *(v3 + 192);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 168) = v5;
    *(v3 + 176) = v4;
    *(v3 + 184) = v7;
    *(v3 + 192) = v6;
    *(v3 + 200) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 176);

    sub_213FDC6D0(v9, v11);
    *(v3 + 168) = v5;
    *(v3 + 176) = v4;
    *(v3 + 184) = v7;
    *(v3 + 192) = v6;
    *(v3 + 200) = v8;
  }

  free(v2);
}

uint64_t sub_2143DFBE8()
{
  sub_2143DFC90();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2143DFC3C()
{
  sub_2143DFC90();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2143DFC90()
{
  v2 = *(v0 + 3);
  v1 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  v5 = *(v0 + 13);
  v6 = *(v0 + 14);
  v7 = *(v0 + 18);
  v8 = *(v0 + 19);
  v9 = *(v0 + 24);
  v19 = v5;
  v20 = *(v0 + 23);
  v10 = MEMORY[0x277D84F98];
  if ((v0[1] & 1) == 0)
  {
    v11 = *v0;
    v23 = MEMORY[0x277D84CC0];
    LODWORD(v22) = v11;
    sub_213FDC730(&v22, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v21, 6710879, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  }

  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_19;
    }

    v23 = MEMORY[0x277D837D0];
    *&v22 = v2;
    *(&v22 + 1) = v1;
    sub_213FDC730(&v22, v21);

    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v21, 0x6C65646F6DLL, 0xE500000000000000, v13);
  }

  if (v4 >> 60 != 11)
  {
    if (v4 >> 60 != 15)
    {
      v23 = MEMORY[0x277CC9318];
      *&v22 = v3;
      *(&v22 + 1) = v4;
      sub_213FDC730(&v22, v21);
      sub_21404F7E0(v3, v4);
      sub_213FDCA18(v3, v4);
      v14 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v21, 0x4B5064655FLL, 0xE500000000000000, v14);
      sub_214032564(v3, v4);
    }

    if (v6)
    {
      if (v6 == 1)
      {
        goto LABEL_19;
      }

      v23 = MEMORY[0x277D837D0];
      *&v22 = v19;
      *(&v22 + 1) = v6;
      sub_213FDC730(&v22, v21);

      v15 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v21, 0x44497364695FLL, 0xE600000000000000, v15);
    }

    if (v8 >> 60 != 11)
    {
      if (v8 >> 60 != 15)
      {
        v23 = MEMORY[0x277CC9318];
        *&v22 = v7;
        *(&v22 + 1) = v8;
        sub_213FDC730(&v22, v21);
        sub_21404F7E0(v7, v8);
        sub_213FDCA18(v7, v8);
        v16 = swift_isUniquelyReferenced_nonNull_native();
        sub_2140524DC(v21, 0x4B5249645FLL, 0xE500000000000000, v16);
        sub_214032564(v7, v8);
      }

      if (!v9)
      {
        return v10;
      }

      if (v9 != 1)
      {
        v23 = MEMORY[0x277D837D0];
        *&v22 = v20;
        *(&v22 + 1) = v9;
        sub_213FDC730(&v22, v21);

        v17 = swift_isUniquelyReferenced_nonNull_native();
        sub_2140524DC(v21, 1701667182, 0xE400000000000000, v17);
        return v10;
      }
    }
  }

LABEL_19:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2143DFFB8()
{
  result = qword_27C912980;
  if (!qword_27C912980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912980);
  }

  return result;
}

uint64_t sub_2143E0090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor17RPFrameTypeFriendVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor17RPFrameTypeFamilyVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2143E0104(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 377))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2143E0160(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 376) = 0;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 377) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 377) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RapportMessage.RPFrameType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}