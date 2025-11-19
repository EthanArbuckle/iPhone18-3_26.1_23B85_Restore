void sub_214679294(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "IDSProtoBufDataKey";
  v4 = 0xD000000000000018;
  if (*v1 == 1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v3 = "IDSProtoBufTypeKey";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "aradigm";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_2146792F0()
{
  result = qword_27C917918;
  if (!qword_27C917918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917918);
  }

  return result;
}

unint64_t sub_214679348()
{
  result = qword_27C917920;
  if (!qword_27C917920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917920);
  }

  return result;
}

unint64_t sub_21467939C()
{
  v1 = 0xD000000000000018;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_214679428(uint64_t a1)
{
  v2 = sub_214679890();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214679464(uint64_t a1)
{
  v2 = sub_214679890();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2146794A0(uint64_t a1)
{
  *(a1 + 8) = sub_214678F64(&qword_27C90CA58, type metadata accessor for IDSProtobuf);
  result = sub_214678F64(&qword_27C90C978, type metadata accessor for IDSProtobuf);
  *(a1 + 16) = result;
  return result;
}

void sub_214679524()
{
  type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage();
    if (v1 <= 0x3F)
    {
      sub_214679690(319, &qword_27C917938, sub_21467963C);
      if (v2 <= 0x3F)
      {
        sub_214679690(319, &qword_27C917948, sub_2146796F0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_21467963C()
{
  result = qword_27C917940;
  if (!qword_27C917940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917940);
  }

  return result;
}

void sub_214679690(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for WalletPassSharingSpecializedMessage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2146796F0()
{
  result = qword_27C917950;
  if (!qword_27C917950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917950);
  }

  return result;
}

void sub_21467976C()
{
  sub_214679828();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_27C917970);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BD8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214679828()
{
  if (!qword_27C917968)
  {
    type metadata accessor for IDSClientProtobufMessageType(255);
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_27C917968);
    }
  }
}

unint64_t sub_214679890()
{
  result = qword_27C917978;
  if (!qword_27C917978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917978);
  }

  return result;
}

uint64_t sub_214679944()
{
  sub_2146DA958();
  MEMORY[0x216055860](0);
  return sub_2146DA9B8();
}

uint64_t sub_2146799B0()
{
  v2[3] = &type metadata for BlastdoorUnpacking;
  v2[4] = sub_214679A00();
  v0 = sub_2146D8BC8();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_214679A00()
{
  result = qword_27C917980;
  if (!qword_27C917980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917980);
  }

  return result;
}

unint64_t sub_214679A58()
{
  result = qword_27C917988;
  if (!qword_27C917988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917988);
  }

  return result;
}

uint64_t sub_214679ABC()
{
  v1 = v0;
  v2 = type metadata accessor for BusinessMessage(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for EncodedAppData.EncodedContent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2145BFB38(v1, v9);
  if (swift_getEnumCaseMultiPayload())
  {
    result = *v9;
    v11 = v9[1];
  }

  else
  {
    sub_214679DE8(v9, v5);
    v12 = sub_2146D8608();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_2146D85F8();
    sub_214679E4C();
    v15 = sub_2146D85D8();
    sub_214679EA4(v5);

    return v15;
  }

  return result;
}

uint64_t sub_214679C48()
{
  v1 = type metadata accessor for BusinessMessage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for EncodedAppData.EncodedContent(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2145BFB38(v0, v8);
  if (swift_getEnumCaseMultiPayload())
  {
    v9 = *v8;
    v10 = v8[1];
  }

  else
  {
    sub_214679DE8(v8, v4);
    v11 = sub_2146D8608();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_2146D85F8();
    sub_214679E4C();
    v9 = sub_2146D85D8();
    v10 = v14;
    sub_214679EA4(v4);
  }

  v15 = sub_2146D8A38();
  sub_213FB54FC(v9, v10);
  return v15;
}

uint64_t sub_214679DE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BusinessMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_214679E4C()
{
  result = qword_27C917990;
  if (!qword_27C917990)
  {
    type metadata accessor for BusinessMessage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917990);
  }

  return result;
}

uint64_t sub_214679EA4(uint64_t a1)
{
  v2 = type metadata accessor for BusinessMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21467A0C8@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21467A194@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if ((result + 3) >= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = -result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21467A1D4()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](-v1);
  return sub_2146DA9B8();
}

uint64_t sub_21467A24C()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](-v1);
  return sub_2146DA9B8();
}

uint64_t sub_21467A358@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2146DA098();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21467A3C4()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_21467A428()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_21467A474@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2146DA098();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_21467A5D0(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

unint64_t sub_21467A780()
{
  result = qword_27C917998;
  if (!qword_27C917998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917998);
  }

  return result;
}

unint64_t sub_21467A830()
{
  result = qword_27C9179A0;
  if (!qword_27C9179A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9179A0);
  }

  return result;
}

unint64_t sub_21467A888()
{
  result = qword_27C9179A8;
  if (!qword_27C9179A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9179A8);
  }

  return result;
}

unint64_t sub_21467A8E0()
{
  result = qword_27C9179B0;
  if (!qword_27C9179B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9179B0);
  }

  return result;
}

uint64_t sub_21467A960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21467A9C8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[4])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_21467AA1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_21467AA6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
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

uint64_t sub_21467AAC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_21467AB60()
{
  result = qword_27C9179B8;
  if (!qword_27C9179B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9179B8);
  }

  return result;
}

unint64_t sub_21467ABB4()
{
  result = qword_27C9179C0;
  if (!qword_27C9179C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9179C0);
  }

  return result;
}

unint64_t sub_21467AC08()
{
  result = qword_27C9179C8;
  if (!qword_27C9179C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9179C8);
  }

  return result;
}

unint64_t sub_21467AC5C()
{
  result = qword_27C9179D0;
  if (!qword_27C9179D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9179D0);
  }

  return result;
}

CGColorRef sub_21467ACC4()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_27C903248 != -1)
  {
    v4 = v0[1];
    v5 = *v0;
    swift_once();
    v2 = v4;
    v1 = v5;
  }

  v6[0] = v1;
  v6[1] = v2;
  result = CGColorCreate(qword_27C9179D8, v6);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_21467AD3C()
{
  v0 = *MEMORY[0x277CBF430];
  v1 = CGColorSpaceCreateWithName(v0);

  if (v1)
  {
    qword_27C9179D8 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_21467AD88(CGColor *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = CGColorGetColorSpace(a1);
  if (!v4)
  {
    sub_21467AF20();
    swift_allocError();
    *v10 = 0;
LABEL_11:
    swift_willThrow();
    goto LABEL_12;
  }

  if (qword_27C903248 != -1)
  {
    swift_once();
  }

  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(qword_27C9179D8, kCGRenderingIntentDefault, a1, 0);
  if (!CopyByMatchingToColorSpace)
  {
    sub_21467AF20();
    swift_allocError();
    *v11 = 1;
    goto LABEL_11;
  }

  v6 = CopyByMatchingToColorSpace;
  v7 = sub_2146D9B48();
  if (!v7)
  {
LABEL_8:
    sub_21467AF20();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();

LABEL_12:
    return;
  }

  v8 = *(v7 + 16);
  if (v8 < 3)
  {

    goto LABEL_8;
  }

  v12 = 1.0;
  if (v8 != 3)
  {
    v12 = *(v7 + 56);
  }

  v14 = *(v7 + 32);
  v13 = *(v7 + 48);

  *a2 = v14;
  *(a2 + 16) = v13;
  *(a2 + 24) = v12;
}

unint64_t sub_21467AF20()
{
  result = qword_27C9179E0;
  if (!qword_27C9179E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9179E0);
  }

  return result;
}

unint64_t sub_21467AF88()
{
  result = qword_27C9179E8;
  if (!qword_27C9179E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9179E8);
  }

  return result;
}

uint64_t XPCEncoder.__allocating_init(dictionary:)(void *a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0;
  if (!a1)
  {
    v4 = 0;
    goto LABEL_5;
  }

  v3 = result;
  result = xpc_dictionary_create_reply(a1);
  if (result)
  {
    v4 = result;
    swift_unknownObjectRelease();
    result = v3;
LABEL_5:
    *(result + 64) = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t XPCEncoder.DataEncodingStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t XPCEncoder.UUIDEncodingStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

xpc_object_t XPCEncoder.init(dictionary:)(void *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0;
  if (!a1)
  {
    v3 = 0;
    goto LABEL_5;
  }

  result = xpc_dictionary_create_reply(a1);
  if (result)
  {
    v3 = result;
    swift_unknownObjectRelease();
LABEL_5:
    *(v1 + 64) = v3;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t *sub_21467B1D8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t, uint64_t))
{
  v33 = a3;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(*v3 + 120))(&v38, v8);
  (*(*v3 + 144))(&v34, v11);
  BYTE1(v38) = v34;
  swift_beginAccess();
  sub_21467B590((v3 + 3), &v34);
  v12 = v3[8];
  v13 = type metadata accessor for _XPCEncoder();
  swift_allocObject();
  swift_unknownObjectRetain();
  v14 = sub_21467B64C(&v38, &v34, v12);
  v15 = *(v6 + 16);
  v31 = a1;
  v15(v10, a1, a2);
  v36 = v13;
  v37 = sub_21467F744(qword_280B35370, type metadata accessor for _XPCEncoder);
  v34 = v14;
  v16 = v14;

  v17 = v10;
  v18 = v32;
  v19 = a2;
  sub_2146D94B8();
  if (v18)
  {

    __swift_destroy_boxed_opaque_existential_1(&v34);
    (*(v6 + 8))(v10, a2);
  }

  else
  {
    v33 = v15;
    v20 = v31;
    __swift_destroy_boxed_opaque_existential_1(&v34);
    v17 = *(v16 + 72);
    v21 = *(v6 + 8);
    swift_unknownObjectRetain();
    v22 = v19;
    v21(v10, v19);
    if (!v17)
    {
      v24 = sub_2146D9F78();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9179F0, &qword_21477E720) + 48);
      v26[3] = v22;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
      v33(boxed_opaque_existential_0, v20, v22);
      v34 = 0;
      v35 = 0xE000000000000000;
      v17 = &v34;
      sub_2146D9EF8();

      v34 = 0x6576656C2D706F54;
      v35 = 0xEA0000000000206CLL;
      v29 = sub_2146DAA78();
      MEMORY[0x2160545D0](v29);

      MEMORY[0x2160545D0](0xD00000000000001BLL, 0x80000002147A69E0);
      sub_2146D9F28();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D841A8], v24);
      swift_willThrow();
    }
  }

  return v17;
}

uint64_t sub_21467B590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F50, &unk_2146F08E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t XPCEncoder.deinit()
{
  sub_213FB4944(v0 + 24);
  v1 = *(v0 + 64);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_21467B64C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = a1[1];
  v9 = MEMORY[0x277D84F90];
  *(v4 + 16) = MEMORY[0x277D84F90];
  v10 = sub_214046008(v9);
  *(v4 + 32) = 0u;
  *(v4 + 24) = v10;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = v7;
  *(v4 + 81) = v8;
  swift_beginAccess();
  sub_21467F2FC(a2, v4 + 32);
  swift_endAccess();
  if (a3)
  {
    swift_getObjectType();
    v11 = sub_21408FD98();
    sub_213FB4944(a2);
    if (v11 == 7)
    {
      v12 = *(v4 + 72);
      *(v4 + 72) = a3;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_213FB4944(a2);
  }

  return v4;
}

unint64_t sub_21467B734()
{
  result = qword_27C9179F8;
  if (!qword_27C9179F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9179F8);
  }

  return result;
}

unint64_t sub_21467B78C()
{
  result = qword_27C917A00;
  if (!qword_27C917A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917A00);
  }

  return result;
}

uint64_t sub_21467B960()
{
  if (!*(v0 + 72))
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 72);
  swift_getObjectType();
  swift_unknownObjectRetain();
  if (sub_21408FD98() != 7)
  {
    __break(1u);
LABEL_4:
    v2 = xpc_dictionary_create(0, 0, 0);
    v3 = *(v0 + 72);
    *(v0 + 72) = v2;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + 16);
  swift_unknownObjectRetain();

  sub_21467BADC(v0);
  type metadata accessor for _XPCKeyedEncodingContainer();

  swift_unknownObjectRetain();

  swift_getWitnessTable();
  sub_2146DA408();

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_21467BADC(uint64_t a1)
{
  swift_getObjectType();
  if (sub_21408FD98() == 7)
  {
    return a1;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21467BB84@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 72);
  if (v4)
  {
    v5 = *(v1 + 72);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v6 = v4;
    if (sub_21408FD98() == 6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = xpc_array_create(0, 0);
  v7 = *(v2 + 72);
  *(v2 + 72) = v6;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
LABEL_5:
  v8 = *(v2 + 16);
  swift_getObjectType();
  swift_unknownObjectRetain();

  if (sub_21408FD98() == 6)
  {
    a1[3] = &type metadata for _XPCUnkeyedEncodingContainer;
    a1[4] = sub_21467F36C();

    result = swift_unknownObjectRelease();
    *a1 = v2;
    a1[1] = v6;
    a1[2] = v8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

xpc_object_t sub_21467BCCC(void *a1)
{
  v43[5] = *MEMORY[0x277D85DE8];
  v4 = sub_2146D9408();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  if (DynamicType == MEMORY[0x277CC9318])
  {
    sub_214053840(a1, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917A18, &qword_21477A7B8);
    v19 = MEMORY[0x277CC9318];
    swift_dynamicCast();
    v21 = v41;
    v20 = v42;
    if (!*(v1 + 80))
    {
      v28 = sub_2146D9F78();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9179F0, &qword_21477E720) + 48);
      v30[3] = v19;
      *v30 = v21;
      v30[1] = v20;
      v18 = *(v1 + 16);
      sub_21402D9F8(v21, v20);

      sub_2146D9F28();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D841A8], v28);
      swift_willThrow();
      sub_213FB54FC(v21, v20);
      goto LABEL_30;
    }

    if (*(v1 + 80) != 1)
    {
      sub_2146D8A48();
      v32 = sub_2146D9628();

      v18 = xpc_string_create((v32 + 32));
      sub_213FB54FC(v21, v20);
LABEL_23:

      goto LABEL_30;
    }

    v22 = v42 >> 62;
    if ((v42 >> 62) > 1)
    {
      if (v22 != 2)
      {
        memset(v40, 0, 14);
        goto LABEL_29;
      }

      v34 = *(v41 + 16);
      v39 = *(v41 + 24);
      if (sub_2146D8728() && __OFSUB__(v34, sub_2146D8758()))
      {
        goto LABEL_33;
      }

      if (!__OFSUB__(v39, v34))
      {
LABEL_21:
        sub_2146D8748();
        goto LABEL_29;
      }
    }

    else
    {
      if (!v22)
      {
        v40[0] = v41;
        LODWORD(v40[1]) = v42;
        WORD2(v40[1]) = WORD2(v42);
LABEL_29:
        sub_2146D93F8();
        v35 = sub_2146D93E8();
        (*(v5 + 8))(v8, v4);
        v18 = xpc_data_create_with_dispatch_data(v35);
        sub_213FB54FC(v21, v20);

        goto LABEL_30;
      }

      v39 = (v41 >> 32) - v41;
      if (v41 >> 32 >= v41)
      {
        if (!sub_2146D8728() || !__OFSUB__(v21, sub_2146D8758()))
        {
          goto LABEL_21;
        }

LABEL_34:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v10 = DynamicType;
  if (DynamicType == __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A40, &qword_214750318))
  {
    sub_214053840(a1, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917A18, &qword_21477A7B8);
    swift_dynamicCast();
    v23 = xpc_mach_send_create();
    v18 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v18, "mpr_p", v23);
    swift_unknownObjectRelease();
    goto LABEL_30;
  }

  if (v10 == __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917A10, &unk_214756CB0))
  {
    sub_214053840(a1, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917A18, &qword_21477A7B8);
    swift_dynamicCast();
    v24 = v40[0];
    swift_beginAccess();
    v25 = *(v24 + 16);
    v26 = xpc_mach_send_create();
    v18 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v18, "mpr_p", v26);
    swift_unknownObjectRelease();
    v27 = xpc_int64_create(*(v24 + 24));
    xpc_dictionary_set_value(v18, "mpr_s", v27);

    swift_unknownObjectRelease();
    goto LABEL_30;
  }

  v11 = *(v1 + 80);
  v12 = *(v1 + 81);
  swift_beginAccess();
  sub_21467B590(v1 + 32, v43);
  v13 = type metadata accessor for _XPCEncoder();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D84F90];
  *(v14 + 16) = MEMORY[0x277D84F90];
  *(v14 + 24) = sub_214046008(v15);
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 80) = v11;
  *(v14 + 81) = v12;
  swift_beginAccess();
  sub_21467F2FC(v43, v14 + 32);
  swift_endAccess();
  sub_213FB4944(v43);
  v16 = a1[4];
  v17 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v43[3] = v13;
  v43[4] = sub_21467F744(qword_280B35370, type metadata accessor for _XPCEncoder);
  v43[0] = v14;

  v18 = v17;
  sub_2146D94B8();
  if (!v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
    v18 = *(v14 + 72);
    if (v18)
    {
      v33 = *(v14 + 72);
      swift_unknownObjectRetain();
    }

    else
    {
      v18 = xpc_null_create();
    }

    goto LABEL_23;
  }

  __swift_destroy_boxed_opaque_existential_1(v43);
LABEL_30:
  v36 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_21467C428(void *a1@<X8>)
{
  v3 = *v1;
  if (*(*v1 + 72))
  {
    __break(1u);
  }

  else
  {
    a1[3] = type metadata accessor for _XPCEncoder();
    a1[4] = sub_21467F744(&qword_280B35340, type metadata accessor for _XPCEncoder);
    *a1 = v3;
  }
}

uint64_t sub_21467C4BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_21467B590(v3 + 32, a1);
}

uint64_t sub_21467C508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[4] = a3;
  v11[3] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  v8 = sub_21467BCCC(v11);
  result = __swift_destroy_boxed_opaque_existential_1(v11);
  if (!v4)
  {
    v10 = *(v3 + 72);
    *(v3 + 72) = v8;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21467C5AC()
{
  v1 = *v0;
  v2 = xpc_null_create();
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C5E8(char a1)
{
  v2 = *v1;
  v3 = xpc_BOOL_create(a1 & 1);
  v4 = *(v2 + 72);
  *(v2 + 72) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C628()
{
  v1 = *v0;
  v2 = sub_2146D9628();
  v3 = xpc_string_create((v2 + 32));

  v4 = *(v1 + 72);
  *(v1 + 72) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C680(double a1)
{
  v2 = *v1;
  v3 = xpc_double_create(a1);
  v4 = *(v2 + 72);
  *(v2 + 72) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C6BC(float a1)
{
  v2 = *v1;
  v3 = xpc_double_create(a1);
  v4 = *(v2 + 72);
  *(v2 + 72) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C6FC(char a1)
{
  v2 = *v1;
  v3 = xpc_int64_create(a1);
  v4 = *(v2 + 72);
  *(v2 + 72) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C73C(__int16 a1)
{
  v2 = *v1;
  v3 = xpc_int64_create(a1);
  v4 = *(v2 + 72);
  *(v2 + 72) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C77C(int a1)
{
  v2 = *v1;
  v3 = xpc_int64_create(a1);
  v4 = *(v2 + 72);
  *(v2 + 72) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C7D4(unsigned __int8 a1)
{
  v2 = *v1;
  v3 = xpc_uint64_create(a1);
  v4 = *(v2 + 72);
  *(v2 + 72) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C814(unsigned __int16 a1)
{
  v2 = *v1;
  v3 = xpc_uint64_create(a1);
  v4 = *(v2 + 72);
  *(v2 + 72) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C854(uint64_t value)
{
  v2 = *v1;
  v3 = xpc_uint64_create(value);
  v4 = *(v2 + 72);
  *(v2 + 72) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *v4;
  v6 = a4();
  v7 = *(v5 + 72);
  *(v5 + 72) = v6;
  return swift_unknownObjectRelease();
}

uint64_t sub_21467C910(uint64_t a1, ValueMetadata *a2, unint64_t a3)
{
  v4 = v3;
  xarray = v3[1];
  count = xpc_array_get_count(xarray);
  *&v21 = 0x207865646E49;
  *(&v21 + 1) = 0xE600000000000000;
  v24 = count;
  v8 = sub_2146DA428();
  MEMORY[0x2160545D0](v8);

  v9 = v3[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_2140954FC(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_2140954FC((v10 > 1), v11 + 1, 1, v9);
  }

  v22 = &type metadata for XPCCodingKey;
  v23 = sub_2144EE044();
  v12 = swift_allocObject();
  *&v21 = v12;
  *(v12 + 16) = 0x207865646E49;
  *(v12 + 24) = 0xE600000000000000;
  *(v12 + 32) = count;
  *(v12 + 40) = 0;
  v9[2] = v11 + 1;
  sub_213FB77C8(&v21, &v9[5 * v11 + 4]);
  v4[2] = v9;
  v13 = *v4;
  v22 = a2;
  v23 = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v21);
  (*(a2[-1].Description + 2))(boxed_opaque_existential_0, a1, a2);
  v15 = sub_21467BCCC(&v21);
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  else
  {
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(&v21);
    xpc_array_append_value(xarray, v16);
    swift_unknownObjectRelease();
  }

  return sub_21467CF74(v4);
}

uint64_t sub_21467CAFC()
{
  v1 = v0;
  v2 = v0[1];
  count = xpc_array_get_count(v2);
  *&v14 = 0x207865646E49;
  *(&v14 + 1) = 0xE600000000000000;
  v18 = count;
  v4 = sub_2146DA428();
  MEMORY[0x2160545D0](v4);

  v5 = v0[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_2140954FC(0, v5[2] + 1, 1, v5);
  }

  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_2140954FC((v6 > 1), v7 + 1, 1, v5);
  }

  v16 = &type metadata for XPCCodingKey;
  v17 = sub_2144EE044();
  v8 = swift_allocObject();
  *&v14 = v8;
  *(v8 + 16) = 0x207865646E49;
  *(v8 + 24) = 0xE600000000000000;
  *(v8 + 32) = count;
  *(v8 + 40) = 0;
  v5[2] = v7 + 1;
  sub_213FB77C8(&v14, &v5[5 * v7 + 4]);
  v1[2] = v5;
  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_array_append_value(v2, v9);
  v10 = *v1;

  swift_unknownObjectRetain();
  *&v14 = sub_21467BADC(v10);
  *(&v14 + 1) = v11;
  v15 = v12;
  type metadata accessor for _XPCKeyedEncodingContainer();

  swift_unknownObjectRetain();

  swift_getWitnessTable();
  sub_2146DA408();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return sub_21467CF74(v1);
}

uint64_t sub_21467CD4C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = v1[1];
  count = xpc_array_get_count(v4);
  *&v14 = 0x207865646E49;
  *(&v14 + 1) = 0xE600000000000000;
  v17 = count;
  v6 = sub_2146DA428();
  MEMORY[0x2160545D0](v6);

  v7 = v1[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_2140954FC(0, v7[2] + 1, 1, v7);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_2140954FC((v8 > 1), v9 + 1, 1, v7);
  }

  v15 = &type metadata for XPCCodingKey;
  v16 = sub_2144EE044();
  v10 = swift_allocObject();
  *&v14 = v10;
  *(v10 + 16) = 0x207865646E49;
  *(v10 + 24) = 0xE600000000000000;
  *(v10 + 32) = count;
  *(v10 + 40) = 0;
  v7[2] = v9 + 1;
  sub_213FB77C8(&v14, &v7[5 * v9 + 4]);
  v1[2] = v7;
  v11 = xpc_array_create(0, 0);
  xpc_array_append_value(v4, v11);
  v12 = *v2;
  swift_getObjectType();

  swift_unknownObjectRetain();
  if (sub_21408FD98() == 6)
  {
    a1[3] = &type metadata for _XPCUnkeyedEncodingContainer;
    a1[4] = sub_21467F36C();
    swift_unknownObjectRelease();
    *a1 = v12;
    a1[1] = v11;
    a1[2] = v7;
    return sub_21467CF74(v2);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21467CF74(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_214508E84(v2);
    v2 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v1 = a1;
  v3 = *(a1 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = v2[2];
  if (v5)
  {
LABEL_4:
    v6 = v5 - 1;
    result = __swift_destroy_boxed_opaque_existential_1(&v2[5 * v5 - 1]);
    v2[2] = v6;
    *(v1 + 16) = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21467CFFC()
{
  v1 = *(v0 + 8);
  v2 = xpc_null_create();
  xpc_array_append_value(v1, v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D048(char a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_BOOL_create(a1 & 1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D098()
{
  v1 = *(v0 + 8);
  v2 = sub_2146D9628();
  v3 = xpc_string_create((v2 + 32));

  xpc_array_append_value(v1, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D0F8(double a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_double_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D144(float a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_double_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D194(char a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_int64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D1E4(__int16 a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_int64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D234(int a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_int64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D29C(unsigned __int8 a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_uint64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D2EC(unsigned __int16 a1)
{
  v2 = *(v1 + 8);
  v3 = xpc_uint64_create(a1);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D33C(uint64_t value)
{
  v2 = *(v1 + 8);
  v3 = xpc_uint64_create(value);
  xpc_array_append_value(v2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(v4 + 8);
  v6 = a4();
  xpc_array_append_value(v5, v6);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467D734@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];

  xpc_array_get_count(v4);
  v5 = type metadata accessor for _XPCSuperUnkeyedEncoder();
  swift_allocObject();
  swift_unknownObjectRetain();
  v6 = sub_21467F424(v3);

  swift_unknownObjectRelease();
  a1[3] = v5;
  result = sub_21467F744(&qword_27C917A30, type metadata accessor for _XPCSuperUnkeyedEncoder);
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_21467D7FC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2146DAA38();
  v7 = sub_2146D9628();

  xpc_dictionary_set_value(a4, (v7 + 32), a1);
}

uint64_t sub_21467D888(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = xpc_null_create();
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v13[3] = v10;
  v13[4] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, a1, v10);
  sub_21467D7FC(v8, v13, v5, v6);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_21467D954(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = xpc_BOOL_create(a1 & 1);
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  v14[3] = v11;
  v14[4] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, a2, v11);
  sub_21467D7FC(v9, v14, v6, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_21467DA24(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = xpc_int64_create(a1);
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  v14[3] = v11;
  v14[4] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, a2, v11);
  sub_21467D7FC(v9, v14, v6, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_21467DAF4(__int16 a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = xpc_int64_create(a1);
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  v14[3] = v11;
  v14[4] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, a2, v11);
  sub_21467D7FC(v9, v14, v6, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_21467DBC4(int a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = xpc_int64_create(a1);
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  v14[3] = v11;
  v14[4] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, a2, v11);
  sub_21467D7FC(v9, v14, v6, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_21467DC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v4[2];
  v10 = a4();
  v12 = *(a3 + 16);
  v11 = *(a3 + 24);
  v15[3] = v12;
  v15[4] = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, a2, v12);
  sub_21467D7FC(v10, v15, v7, v8);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_21467DD64(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = xpc_uint64_create(a1);
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  v14[3] = v11;
  v14[4] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, a2, v11);
  sub_21467D7FC(v9, v14, v6, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_21467DE34(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = xpc_uint64_create(a1);
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  v14[3] = v11;
  v14[4] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, a2, v11);
  sub_21467D7FC(v9, v14, v6, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_21467DF04(uint64_t value, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = xpc_uint64_create(value);
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  v14[3] = v11;
  v14[4] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, a2, v11);
  sub_21467D7FC(v9, v14, v6, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_21467DFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v4[2];
  v10 = sub_2146D9628();
  v11 = xpc_string_create((v10 + 32));

  v13 = *(a4 + 16);
  v12 = *(a4 + 24);
  v16[3] = v13;
  v16[4] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, a3, v13);
  sub_21467D7FC(v11, v16, v7, v8);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_21467E0B4(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = xpc_double_create(a3);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v14[3] = v11;
  v14[4] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, a1, v11);
  sub_21467D7FC(v9, v14, v6, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_21467E180(uint64_t a1, uint64_t a2, float a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = xpc_double_create(a3);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v14[3] = v11;
  v14[4] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, a1, v11);
  sub_21467D7FC(v9, v14, v6, v7);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_21467E250(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v38 = a1;
  v41 = a5;
  v45 = a4;
  v37 = a3;
  v6 = a3[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = *(v7 + 16);
  v36 = v15;
  v16 = v14;
  (v14)(&v35 - v12);
  v17 = v5 + 2;
  v18 = v5[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[2] = v18;
  v40 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_2140954FC(0, v18[2] + 1, 1, v18);
    *v17 = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v34 = sub_2140954FC((v20 > 1), v21 + 1, 1, v18);
    v22 = v16;
    v18 = v34;
    *v17 = v34;
  }

  else
  {
    v22 = v16;
  }

  v35 = v22;
  v22(v11, v13, v6);
  v23 = v37[3];
  sub_21467F264(v21, v11, v17, v6, v23);
  (*(v7 + 8))(v13, v6);
  v25 = v40;
  v24 = v41;
  v40[2] = v18;
  v26 = *v25;
  v37 = v25[1];
  v27 = v45;
  v43 = v45;
  v44 = v24;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v42);
  (*(*(v27 - 8) + 16))(boxed_opaque_existential_0, v38, v27);
  v29 = v39;
  v30 = sub_21467BCCC(v42);
  if (!v29)
  {
    v31 = v30;
    __swift_destroy_boxed_opaque_existential_1(v42);
    v43 = v6;
    v44 = v23;
    v32 = __swift_allocate_boxed_opaque_existential_0(v42);
    v35(v32, v36, v6);
    sub_21467D7FC(v31, v42, v26, v37);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v42);
  return sub_21467CF74(v25);
}

uint64_t sub_21467E518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a4;
  v42 = a5;
  v39 = a6;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  v16 = xpc_dictionary_create(0, 0, 0);
  v17 = *v6;
  v34 = v6[1];
  v40 = v6;
  v18 = v6 + 2;
  v19 = v6[2];
  v20 = *(a3 + 24);
  v43[3] = v9;
  v43[4] = v20;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v43);
  v37 = v10;
  v22 = *(v10 + 16);
  v22(boxed_opaque_existential_0, a2, v9);
  v38 = v16;
  v23 = v16;
  v36 = v17;
  v24 = v20;
  sub_21467D7FC(v23, v43, v17, v34);
  __swift_destroy_boxed_opaque_existential_1(v43);
  v22(v15, a2, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v18 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_2140954FC(0, v19[2] + 1, 1, v19);
    *v18 = v19;
  }

  v27 = v19[2];
  v26 = v19[3];
  if (v27 >= v26 >> 1)
  {
    v19 = sub_2140954FC((v26 > 1), v27 + 1, 1, v19);
    *v18 = v19;
  }

  v28 = v35;
  v22(v35, v15, v9);
  sub_21467F264(v27, v28, v18, v9, v24);
  (*(v37 + 8))(v15, v9);
  v29 = v40;
  v40[2] = v19;
  v30 = v36;

  swift_unknownObjectRetain();
  v43[0] = sub_21467BADC(v30);
  v43[1] = v31;
  v43[2] = v32;
  type metadata accessor for _XPCKeyedEncodingContainer();
  swift_getWitnessTable();
  sub_2146DA408();
  sub_21467CF74(v29);
  return swift_unknownObjectRelease();
}

uint64_t sub_21467E80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v36 = a3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = xpc_array_create(0, 0);
  v15 = *v4;
  v32 = v4[1];
  v37 = v4;
  v18 = v4[2];
  v17 = v4 + 2;
  v16 = v18;
  v19 = *(a2 + 24);
  v38[3] = v7;
  v38[4] = v19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
  v34 = v8;
  v21 = *(v8 + 16);
  v21(boxed_opaque_existential_0, a1, v7);
  v35 = v15;
  v22 = v32;
  v31 = v14;
  v32 = v19;
  sub_21467D7FC(v14, v38, v15, v22);
  __swift_destroy_boxed_opaque_existential_1(v38);
  v21(v13, a1, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_2140954FC(0, v16[2] + 1, 1, v16);
    *v17 = v16;
  }

  v25 = v16[2];
  v24 = v16[3];
  if (v25 >= v24 >> 1)
  {
    v16 = sub_2140954FC((v24 > 1), v25 + 1, 1, v16);
    *v17 = v16;
  }

  v26 = v33;
  v21(v33, v13, v7);
  sub_21467F264(v25, v26, v17, v7, v32);
  (*(v34 + 8))(v13, v7);
  *v17 = v16;
  v27 = v31;
  swift_getObjectType();
  v28 = v35;

  swift_unknownObjectRetain();
  if (sub_21408FD98() == 6)
  {
    v29 = v36;
    v36[3] = &type metadata for _XPCUnkeyedEncodingContainer;
    v29[4] = sub_21467F36C();
    *v29 = v28;
    v29[1] = v27;
    v29[2] = v16;
    sub_21467CF74(v37);
    return swift_unknownObjectRelease();
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21467EB14@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for _XPCSuperKeyedEncoder();
  v6 = swift_allocObject();

  swift_unknownObjectRetain();
  v7 = sub_21467F508(v4, 0x7265707573, 0xE500000000000000, 0, 1, v3, v6);

  swift_unknownObjectRelease();
  a1[3] = v5;
  result = sub_21467F744(&qword_27C917A28, type metadata accessor for _XPCSuperKeyedEncoder);
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_21467EBF0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);

  swift_unknownObjectRetain();
  v8 = sub_21467F6D8(v5, v4);

  swift_unknownObjectRelease();
  a2[3] = type metadata accessor for _XPCSuperKeyedEncoder();
  result = sub_21467F744(&qword_27C917A28, type metadata accessor for _XPCSuperKeyedEncoder);
  a2[4] = result;
  *a2 = v8;
  return result;
}

uint64_t sub_21467F14C()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_213FB4944((v0 + 4));
  v3 = v0[9];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for XPCEncoder.Options(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21467F264(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_213FB77C8(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_21467F2FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F50, &unk_2146F08E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_21467F36C()
{
  result = qword_280B300B0[0];
  if (!qword_280B300B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B300B0);
  }

  return result;
}

uint64_t sub_21467F3E8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21467F424(uint64_t a1)
{
  swift_getObjectType();
  result = sub_21408FD98();
  if (result == 6)
  {
    v4 = *(a1 + 80);
    v5 = *(a1 + 81);
    swift_beginAccess();
    sub_21467B590(a1 + 32, v7);
    v6 = MEMORY[0x277D84F90];
    *(v1 + 16) = MEMORY[0x277D84F90];
    *(v1 + 24) = sub_214046008(v6);
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 80) = v4;
    *(v1 + 81) = v5;
    swift_beginAccess();
    sub_21467F2FC(v7, v1 + 32);
    swift_endAccess();
    sub_213FB4944(v7);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21467F508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  swift_getObjectType();
  result = sub_21408FD98();
  if (result == 7)
  {
    v10 = *(a1 + 80);
    v11 = *(a1 + 81);
    swift_beginAccess();
    sub_21467B590(a1 + 32, v13);
    v12 = MEMORY[0x277D84F90];
    *(a7 + 16) = MEMORY[0x277D84F90];
    *(a7 + 24) = sub_214046008(v12);
    *(a7 + 48) = 0u;
    *(a7 + 64) = 0u;
    *(a7 + 32) = 0u;
    *(a7 + 80) = v10;
    *(a7 + 81) = v11;
    swift_beginAccess();
    sub_21467F2FC(v13, a7 + 32);
    swift_endAccess();
    sub_213FB4944(v13);
    return a7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21467F5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  result = sub_21408FD98();
  if (result == 7)
  {
    v6 = *(a1 + 80);
    v7 = *(a1 + 81);
    swift_beginAccess();
    sub_21467B590(a1 + 32, v9);
    v8 = MEMORY[0x277D84F90];
    *(a3 + 16) = MEMORY[0x277D84F90];
    *(a3 + 24) = sub_214046008(v8);
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 80) = v6;
    *(a3 + 81) = v7;
    swift_beginAccess();
    sub_21467F2FC(v9, a3 + 32);
    swift_endAccess();
    sub_213FB4944(v9);
    return a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21467F6D8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _XPCSuperKeyedEncoder();
  v4 = swift_allocObject();

  return sub_21467F5F4(a1, a2, v4);
}

uint64_t sub_21467F744(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t BitmapDecoder.decode(from:)(uint64_t a1, unint64_t a2)
{
  v4 = a1;
  v5 = a2;
  sub_21402D9F8(a1, a2);
  v2 = sub_214061224(&v4);
  sub_213FB54FC(v4, v5);
  return v2;
}

uint64_t BitmapDecoder.decode(from:)()
{
  v2 = sub_2146D8978();
  if (!v1)
  {
    v5 = v2;
    v6 = v3;
    v0 = sub_214061224(&v5);
    sub_213FB54FC(v5, v6);
  }

  return v0;
}

uint64_t BitmapEncoder.__allocating_init(configuration:maxPixelDimension:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  swift_beginAccess();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2 & 1;
  return v4;
}

uint64_t BitmapEncoder.__allocating_init(configuration:)()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  return result;
}

uint64_t BitmapEncoder.maxPixelDimension.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t BitmapEncoder.maxPixelDimension.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t BitmapEncoder.init(configuration:)()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  return result;
}

uint64_t BitmapEncoder.init(configuration:maxPixelDimension:)(uint64_t a1, char a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return v2;
}

void BitmapEncoder.encode(image:to:)(CGImage *a1)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  sub_214680BD0(a1, 1, Width, Height);
  if (!v1)
  {
    v7 = v5;
    v8 = v6;
    sub_2146D8A68();
    sub_213FB54FC(v7, v8);
  }
}

const __CFDictionary *BitmapEncoder.encode(imageSource:)(CGImageSource *a1)
{
  v67 = a1;
  sub_2143C122C(v63);
  v2 = v64;
  v3 = v65;
  sub_2146D9B88();
  if (qword_280B30DD8 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2146EA710;
  type metadata accessor for CGSize(0);
  v6 = sub_2146D9618();
  v8 = v7;
  *(v5 + 56) = MEMORY[0x277D837D0];
  v9 = sub_213FB2DA0();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_2146D91D8();

  swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_2146D9B88();
    sub_2146D91D8();
    v10 = v2;
    v11 = v3;
  }

  else
  {
    sub_21407FF6C(*(v1 + 16), v2, v3);
    v10 = v12;
    v11 = v13;
    sub_2146D9B88();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2146E6910;
    v15 = sub_2146D9618();
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = v9;
    *(v14 + 32) = v15;
    *(v14 + 40) = v16;
    if (*(v1 + 24))
    {
      v17 = 0xE300000000000000;
      v18 = 7104878;
    }

    else
    {
      v62 = *(v1 + 16);
      v18 = sub_2146D9618();
    }

    *(v14 + 96) = MEMORY[0x277D837D0];
    *(v14 + 104) = v9;
    *(v14 + 72) = v18;
    *(v14 + 80) = v17;
    sub_2146D91D8();
  }

  v19 = CGImageSourceGetType(v67);
  if (v19)
  {
    v20 = v19;
    v21 = sub_2146D95B8();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  type metadata accessor for EncoderUtils();
  v24 = sub_21407E534(v21, v23, v2, v3, v10, v11);
  if (v61)
  {

    sub_21463F708(v63);
  }

  else
  {
    v26 = v24;
    sub_2146D9B88();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_2146EA710;
    v28 = sub_2146D9618();
    *(v27 + 56) = MEMORY[0x277D837D0];
    *(v27 + 64) = v9;
    v60 = v9;
    *(v27 + 32) = v28;
    *(v27 + 40) = v29;
    sub_2146D91D8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912220, &qword_214734E10);
    inited = swift_initStackObject();
    v31 = inited;
    v32 = *MEMORY[0x277CD3648];
    *(inited + 32) = *MEMORY[0x277CD3648];
    *(inited + 16) = xmmword_2146E6930;
    v33 = MEMORY[0x277D839B0];
    v34 = MEMORY[0x277CD3568];
    *(inited + 40) = 1;
    v35 = *v34;
    *(inited + 64) = v33;
    *(inited + 72) = v35;
    v36 = MEMORY[0x277CD3578];
    *(inited + 80) = 0;
    v37 = *v36;
    *(inited + 104) = v33;
    *(inited + 112) = v37;
    v38 = MEMORY[0x277CD3678];
    *(inited + 120) = 1;
    v39 = *v38;
    *(inited + 144) = v33;
    *(inited + 152) = v39;
    v40 = MEMORY[0x277CD3618];
    *(inited + 160) = 0;
    v41 = *v40;
    *(inited + 184) = v33;
    *(inited + 192) = v41;
    v42 = MEMORY[0x277CD3650];
    *(inited + 200) = 0;
    v43 = *v42;
    *(inited + 224) = v33;
    *(inited + 232) = v43;
    v44 = MEMORY[0x277D83B88];
    v45 = *&v26;
    if (v26 <= 0.0)
    {
      v45 = 2;
    }

    else
    {
      v44 = MEMORY[0x277D85048];
    }

    *(inited + 264) = v44;
    *(inited + 240) = v45;
    v46 = v32;
    v47 = v35;
    v48 = v37;
    v49 = v39;
    v50 = v41;
    v51 = v43;
    sub_214045EE0(v31);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A0, &unk_214771CE0);
    swift_arrayDestroy();
    sub_2146D9B88();
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_2146EA710;
    type metadata accessor for CFString(0);
    sub_2143A6B04();
    sub_2146D9498();
    v53 = MEMORY[0x277D837D0];
    v54 = sub_2146D9618();
    *(v52 + 56) = v53;
    *(v52 + 64) = v60;
    *(v52 + 32) = v54;
    *(v52 + 40) = v55;
    sub_2146D91D8();

    v4 = sub_2146D9468();
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v67, 0, v4);

    if (ImageAtIndex)
    {

      sub_214680BD0(ImageAtIndex, v66, v10, v11);
      v4 = v57;
      sub_21463F708(v63);
    }

    else
    {
      sub_21463F708(v63);
      if (v23)
      {

        sub_21407D454();
        swift_allocError();
        v59 = 1281;
      }

      else
      {
        sub_21407D454();
        swift_allocError();
        v59 = 1537;
      }

      *v58 = v59;
      *(v58 + 8) = 0;
      swift_willThrow();
    }
  }

  return v4;
}

void BitmapEncoder.encode(image:)(CGImage *a1)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  sub_214680BD0(a1, 1, Width, Height);
}

uint64_t BitmapEncoder.encode(pixelBuffer:to:)()
{
  sub_21407D454();
  swift_allocError();
  *v0 = 1281;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

uint64_t BitmapEncoder.encode(pixelBuffer:)()
{
  sub_21407D454();
  swift_allocError();
  *v0 = 1281;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

uint64_t sub_214680318@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  *a1 = result;
  return result;
}

void sub_214680394(CGImage *a1)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  sub_214680BD0(a1, 1, Width, Height);
  if (!v1)
  {
    v7 = v5;
    v8 = v6;
    sub_2146D8A68();
    sub_213FB54FC(v7, v8);
  }
}

void sub_214680420(CGImage *a1)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  sub_214680BD0(a1, 1, Width, Height);
}

void sub_214680494(uint64_t *a1, void *a2, int a3, double a4, double a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 != 2)
    {
      *(&v48 + 7) = 0;
      *&v48 = 0;
      sub_21409C088(a4, a5, a2, &v48, &v48, a3);

      goto LABEL_26;
    }

    v17 = a2;

    sub_213FB54FC(v8, v7);
    *&v48 = v8;
    *(&v48 + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_2146ECC00;
    sub_213FB54FC(0, 0xC000000000000000);
    sub_2146D8968();
    v18 = *(&v48 + 1);
    v19 = *(v48 + 16);
    v20 = *(v48 + 24);
    v21 = sub_2146D8728();
    if (!v21)
    {

      __break(1u);
      goto LABEL_34;
    }

    v22 = v21;
    v23 = sub_2146D8758();
    v24 = v19 - v23;
    if (!__OFSUB__(v19, v23))
    {
      v25 = __OFSUB__(v20, v19);
      v26 = v20 - v19;
      if (!v25)
      {
        v27 = sub_2146D8748();
        if (v27 >= v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = v27;
        }

        sub_21409C088(a4, a5, v17, v22 + v24, v22 + v24 + v28, a3);

        *a1 = v48;
        a1[1] = v18 | 0x8000000000000000;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v9)
  {
    v12 = a2;
    sub_213FB54FC(v8, v7);
    *&v48 = v8;
    WORD4(v48) = v7;
    BYTE10(v48) = BYTE2(v7);
    BYTE11(v48) = BYTE3(v7);
    BYTE12(v48) = BYTE4(v7);
    BYTE13(v48) = BYTE5(v7);
    BYTE14(v48) = BYTE6(v7);
    sub_21409C088(a4, a5, v12, &v48, &v48 + BYTE6(v7), a3);
    v13 = v48;
    v14 = DWORD2(v48) | ((WORD6(v48) | (BYTE14(v48) << 16)) << 32);

    *a1 = v13;
    a1[1] = v14;
LABEL_26:
    v46 = *MEMORY[0x277D85DE8];
    return;
  }

  v29 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v30 = a2;
  sub_21402D9F8(v8, v7);
  sub_213FB54FC(v8, v7);
  *a1 = xmmword_2146ECC00;
  sub_213FB54FC(0, 0xC000000000000000);
  v31 = v30;
  v32 = v8 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v32 < v8)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (sub_2146D8728() && __OFSUB__(v8, sub_2146D8758()))
    {
LABEL_32:
      __break(1u);
    }

    v34 = sub_2146D8778();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    v37 = sub_2146D8708();

    v29 = v37;
  }

  v38 = v32 < v8;
  v39 = v32 - v8;
  if (v38)
  {
    goto LABEL_28;
  }

  v40 = sub_2146D8728();
  if (v40)
  {
    v41 = v40;
    v42 = sub_2146D8758();
    v43 = v8 - v42;
    if (!__OFSUB__(v8, v42))
    {
      v44 = sub_2146D8748();
      if (v44 >= v39)
      {
        v45 = v39;
      }

      else
      {
        v45 = v44;
      }

      sub_21409C088(a4, a5, v31, v41 + v43, v41 + v43 + v45, a3);

      *a1 = v8;
      a1[1] = v29 | 0x4000000000000000;
      goto LABEL_26;
    }

    goto LABEL_30;
  }

LABEL_34:
  __break(1u);
}

uint64_t *sub_2146808C0(uint64_t *result, int a2)
{
  v3 = result;
  v24 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_213FB54FC(v5, v4);
      __b = v5;
      v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_2146ECC00;
      sub_213FB54FC(0, 0xC000000000000000);
      result = sub_214680B28(&__b, a2);
      v7 = __b;
      v8 = v23 | 0x4000000000000000;
    }

    else
    {
      sub_213FB54FC(v5, v4);
      __b = v5;
      LOWORD(v23) = v4;
      BYTE2(v23) = BYTE2(v4);
      BYTE3(v23) = BYTE3(v4);
      BYTE4(v23) = BYTE4(v4);
      BYTE5(v23) = BYTE5(v4);
      BYTE6(v23) = BYTE6(v4);
      result = memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v23 | ((WORD2(v23) | (BYTE6(v23) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    goto LABEL_14;
  }

  if (v6 != 2)
  {
LABEL_14:
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = *result;

  sub_213FB54FC(v5, v4);
  __b = v5;
  v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_2146ECC00;
  sub_213FB54FC(0, 0xC000000000000000);
  sub_2146D8968();
  v10 = v23;
  v11 = *(__b + 16);
  v12 = *(__b + 24);
  result = sub_2146D8728();
  if (result)
  {
    v13 = result;
    v14 = sub_2146D8758();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_2146D8748();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = memset(v13 + v15, a2, v19);
        *v3 = __b;
        v3[1] = v10 | 0x8000000000000000;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_214680B28(int *a1, int a2)
{
  result = sub_2146D89A8();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_2146D8728();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_2146D8758();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_2146D8748();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

void sub_214680BD0(void *a1, int a2, double a3, double a4)
{
  sub_21409B984(a3, a4);
  if (!v4)
  {
    *&v11 = sub_21408F798(v9);
    *(&v11 + 1) = v10;
    sub_2146808C0(&v11, 0);
    v12 = v11;
    sub_214680494(&v12, a1, a2, a3, a4);
  }
}

void sub_214680C78(CGImageSource *a1)
{
  ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, 0, 0);
  if (ImageAtIndex)
  {
    v3 = ImageAtIndex;
    Width = CGImageGetWidth(ImageAtIndex);
    Height = CGImageGetHeight(v3);
    sub_214680BD0(v3, 1, Width, Height);
    if (!v1)
    {
      v9 = v6;
      v10 = v7;
      sub_2146D8A68();
      sub_213FB54FC(v9, v10);
    }
  }

  else
  {
    sub_21407D454();
    swift_allocError();
    *v8 = 1281;
    *(v8 + 8) = 0;
    swift_willThrow();
  }
}

unint64_t sub_214680E34(uint64_t a1)
{
  *(a1 + 8) = sub_21431E660();
  result = sub_21431DAF4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214680E74@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21439DF24;
  *(v3 + 24) = 0;
  *(inited + 32) = v3;
  sub_214042B80(inited, a1);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_2146E9BF0;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2146E9BF0;
  v6 = sub_214069764(&unk_282653CA0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214059810;
  *(v7 + 24) = v8;
  *(v5 + 32) = v7;
  v9 = sub_2142E0070(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v10 + 16) = sub_21403254C;
  *(v10 + 24) = v11;
  *(v4 + 32) = v10;
  sub_214042A28(v4, a1 + 40);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_2146E9BF0;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_2146E9BF0;
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = 60;
  *(v15 + 24) = 0;
  *(v14 + 16) = sub_21406418C;
  *(v14 + 24) = v15;
  *(v13 + 32) = v14;
  v16 = sub_2142E0070(v13);
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v17 + 16) = sub_214032610;
  *(v17 + 24) = v18;
  *(v12 + 32) = v17;
  return sub_214042A28(v12, a1 + 80);
}

unint64_t sub_214681104(uint64_t a1)
{
  *(a1 + 8) = sub_21431ECFC();
  result = sub_21431E1D4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214681144@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SwiftRegexValidator();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2146EAEB0;
  v8 = sub_214069764(&unk_2826538E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v9 + 16) = sub_214059810;
  *(v9 + 24) = v10;
  *(v7 + 32) = v9;
  if (qword_27C903218 != -1)
  {
    swift_once();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v12 = __swift_project_value_buffer(v11, qword_27CA19E80);
  (*(*(v11 - 8) + 16))(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v11);
  v13 = swift_allocObject();
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_2144A041C(v5, v15 + v14);
  *(v13 + 16) = sub_214306D5C;
  *(v13 + 24) = v15;
  *(v7 + 40) = v13;
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = v7;
  *(v16 + 16) = sub_21439DF54;
  *(v16 + 24) = v17;
  *(inited + 32) = v16;
  return sub_214042B80(inited, a1);
}

uint64_t sub_2146813E8@<X0>(uint64_t a1@<X8>)
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

__n128 sub_214681434(__n128 *a1)
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

uint64_t sub_214681490()
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

unint64_t sub_21468150C@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 15;
  if (result < 0xF)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_2146815D8@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if (result < 6)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_2146817BC@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_2146818A8@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2146819AC(uint64_t a1, uint64_t a2)
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

uint64_t (*sub_214681AF4(void *a1))(uint64_t *a1, char a2)
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

void (*sub_214681B90(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_214681C28@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IMDispositionNotification() + 20);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_214681CA4(uint64_t a1)
{
  v3 = *(type metadata accessor for IMDispositionNotification() + 20);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_214681D68@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IMDispositionNotification() + 24);

  return sub_21407E1D8(v3, a1);
}

uint64_t sub_214681DAC(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IMDispositionNotification() + 24);

  return sub_214682208(a1, v3);
}

uint64_t sub_214681E38@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IMDispositionNotification() + 28);

  return sub_21407E1D8(v3, a1);
}

uint64_t sub_214681E7C(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IMDispositionNotification() + 28);

  return sub_214682208(a1, v3);
}

uint64_t sub_214681F08@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for IMDispositionNotification();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_214681F3C(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for IMDispositionNotification();
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t sub_214681FB4@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IMDispositionNotification();
  v4 = *(v1 + *(result + 32));
  if (v4 > 0xFF)
  {
    LOBYTE(v4) = -48;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_214681FF4@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IMDispositionNotification();
  v4 = *(v1 + *(result + 32));
  if ((v4 & 0xFF00) != 0x100 || v4 >> 8 > 0xFE)
  {
    LOBYTE(v4) = 3;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_214682044@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IMDispositionNotification();
  v4 = *(v1 + *(result + 32));
  if ((v4 & 0xFF00) != 0x200 || v4 >> 8 > 0xFE)
  {
    LOBYTE(v4) = 4;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_214682094@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IMDispositionNotification();
  v4 = *(v1 + *(result + 32));
  if ((v4 & 0xFF00) != 0x300 || v4 >> 8 > 0xFE)
  {
    LOBYTE(v4) = 4;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2146820E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 4;
  if (v4 > 0xD)
  {
    if (v4 == 14)
    {
      return (v3 & 0xF0) == 0xE0;
    }

    if (v4 == 15)
    {
      return v3 > 0xEF;
    }
  }

  else
  {
    if (v4 == 6)
    {
      return (v3 & 0xF0) == 0x60;
    }

    if (v4 == 7)
    {
      return (v3 & 0xF0) == 0x70;
    }
  }

  if (v3 >> 4 <= -3 || ((0x303u >> (((*a2 >> 4) + 2) & 0xF)) & 1) == 0)
  {
    if (v2 < 0)
    {
      if ((v3 & 0x80) != 0 && ((v3 ^ v2) & 0x7F) == 0)
      {
        return 1;
      }
    }

    else if (v3 == v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t type metadata accessor for IMDispositionNotification()
{
  result = qword_27C917A60;
  if (!qword_27C917A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214682208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21468227C()
{
  result = qword_27C917A38;
  if (!qword_27C917A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917A38);
  }

  return result;
}

unint64_t sub_2146822D4()
{
  result = qword_27C917A40;
  if (!qword_27C917A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917A40);
  }

  return result;
}

uint64_t sub_214682380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2146823EC()
{
  result = qword_27C917A48;
  if (!qword_27C917A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917A48);
  }

  return result;
}

unint64_t sub_214682470()
{
  result = qword_27C917A50;
  if (!qword_27C917A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917A50);
  }

  return result;
}

unint64_t sub_2146824F4()
{
  result = qword_27C917A58;
  if (!qword_27C917A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917A58);
  }

  return result;
}

uint64_t sub_2146825A0(uint64_t a1)
{
  *(a1 + 8) = sub_214682608(&qword_27C90D4A8);
  result = sub_214682608(&qword_27C90D448);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214682608(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IMDispositionNotification();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_214682674()
{
  sub_2146827C8(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
  if (v0 <= 0x3F)
  {
    sub_2146D8B08();
    if (v1 <= 0x3F)
    {
      sub_214682770();
      if (v2 <= 0x3F)
      {
        sub_2146827C8(319, &qword_27C917A70, &type metadata for IMDispositionNotification.DispositionNotification, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_214682770()
{
  if (!qword_280B30B80)
  {
    sub_2146D8958();
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_280B30B80);
    }
  }
}

void sub_2146827C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for IMDispositionNotification.DeliveryNotification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB)
  {
    goto LABEL_17;
  }

  if (a2 + 245 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 245) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 245;
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

      return (*a1 | (v4 << 8)) - 245;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 245;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = (v6 >> 3) & 0xE | (v6 >> 7);
  v8 = __OFSUB__(11, v7);
  v9 = 11 - v7;
  if (v9 < 0 != v8)
  {
    v9 = -1;
  }

  if (((v6 >> 3) & 0xE) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t storeEnumTagSinglePayload for IMDispositionNotification.DeliveryNotification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 245 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 245) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB)
  {
    v4 = 0;
  }

  if (a2 > 0xA)
  {
    v5 = ((a2 - 11) >> 8) + 1;
    *result = a2 - 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = (8 * (12 - a2)) & 0x70 | ((12 - a2) << 7);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IMDispositionNotification.DeliveryNotification.Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 245;
  if (a2 + 245 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 245;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 245;
    }
  }

LABEL_20:
  v7 = *a1;
  if (((v7 >> 3) & 0xE) != 0)
  {
    v8 = 16 - ((v7 >> 3) & 0xE | (v7 >> 7));
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 5)
  {
    return v8 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IMDispositionNotification.DeliveryNotification.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 245;
  if (a3 + 245 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xB)
  {
    v5 = 0;
  }

  if (a2 > 0xA)
  {
    v6 = ((a2 - 11) >> 8) + 1;
    *result = a2 - 11;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = (8 * (12 - a2)) & 0x70 | ((12 - a2) << 7);
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_214682B08(unsigned __int8 *a1)
{
  v1 = *a1;
  if (((v1 >> 3) & 0xE) != 0)
  {
    return 16 - ((v1 >> 3) & 0xE | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_214682B2C(_BYTE *result, unsigned int a2)
{
  if (a2 > 0xE)
  {
    LOBYTE(v2) = a2 - 15;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 16 * (((-a2 >> 1) & 7) - 8 * a2);
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IMDispositionNotification.DeliveryNotification.Status.FailureReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF)
  {
    goto LABEL_17;
  }

  if (a2 + 241 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 241) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 241;
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

      return (*a1 | (v4 << 8)) - 241;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 241;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 3) & 0xE | (*a1 >> 7)) ^ 0xF;
  if (v6 >= 0xE)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for IMDispositionNotification.DeliveryNotification.Status.FailureReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 241 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 241) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF)
  {
    v4 = 0;
  }

  if (a2 > 0xE)
  {
    v5 = ((a2 - 15) >> 8) + 1;
    *result = a2 - 15;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 16 * (((-a2 >> 1) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IMDispositionNotification.DispositionNotification(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 3)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for IMDispositionNotification.DispositionNotification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_214682EEC()
{
  result = qword_27C917A78;
  if (!qword_27C917A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917A78);
  }

  return result;
}

unint64_t sub_214682F40()
{
  result = qword_27C917A80;
  if (!qword_27C917A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917A80);
  }

  return result;
}

unint64_t sub_214682F94()
{
  result = qword_27C917A88;
  if (!qword_27C917A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917A88);
  }

  return result;
}

unint64_t sub_214682FE8()
{
  result = qword_27C917A90;
  if (!qword_27C917A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917A90);
  }

  return result;
}

unint64_t sub_21468303C()
{
  result = qword_27C917A98;
  if (!qword_27C917A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917A98);
  }

  return result;
}

unint64_t sub_2146830BC@<X0>(uint64_t a1@<X8>)
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

uint64_t GroupContext.$groupID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 GroupContext.$groupID.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[2].n128_u64[1];
  v7 = v1[3].n128_i64[0];
  v8 = v1[3].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u64[0] = v3;
  v1[3].n128_u64[1] = v4;
  v1[4].n128_u8[0] = v5;
  return result;
}

uint64_t GroupContext.$participantDestinationIdentifiers.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 GroupContext.$participantDestinationIdentifiers.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1->n128_u64[1];
  v6 = v1[1].n128_u64[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  return result;
}

uint64_t GroupContext.participantDestinationIdentifiers.getter()
{
  if (*(v0 + 16))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t GroupContext.groupID.getter()
{
  if (*(v0 + 56) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 48);

    return v1;
  }

  return result;
}

uint64_t GroupContext.participantDestinationIdentifiers.setter(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v4 = *v1;
  v5 = *(v1 + 8);
  v10 = *(v2 + 24);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v2 + 16);

    *(v2 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*GroupContext.participantDestinationIdentifiers.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_21408E22C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*GroupContext.$participantDestinationIdentifiers.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_21408E5B4;
}

uint64_t GroupContext.groupID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v11 = *(v3 + 64);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 48), *(v3 + 56));

    *(v3 + 48) = a1;
    *(v3 + 56) = a2;
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

void (*GroupContext.groupID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 48);
  *(v3 + 24) = v5;
  v6 = *(v1 + 56);
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

    return sub_214030A78;
  }

  return result;
}

void (*GroupContext.$groupID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214030E84;
}

uint64_t GroupContext.currentGroupName.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t GroupContext.currentGroupName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t GroupContext.groupParticipantVersion.getter()
{
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

uint64_t GroupContext.groupParticipantVersion.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t GroupContext.groupProtocolVersion.getter()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  return result;
}

uint64_t GroupContext.groupProtocolVersion.setter(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

unint64_t sub_214683A58(uint64_t a1)
{
  *(a1 + 8) = sub_214301E18();
  result = sub_214301F3C();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214683A98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_214683AF0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_214683B48@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = result == 1;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214683B64@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214683C50()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_214683C58()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_214683C88@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v4 = *(v1 + 144);
  v12 = *(v1 + 128);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 160);
  v5 = v14;
  v6 = *(v1 + 64);
  v11[0] = *(v1 + 48);
  v7 = *(v1 + 80);
  v8 = *(v1 + 96);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_2142F236C(v11, v10);
}

BOOL sub_214683E94(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_214683EC4@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_214683EF0@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unint64_t sub_214683FC4()
{
  result = qword_27C917AA0;
  if (!qword_27C917AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917AA0);
  }

  return result;
}

uint64_t sub_214684070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2146840AC()
{
  result = qword_27C917AA8;
  if (!qword_27C917AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917AA8);
  }

  return result;
}

unint64_t sub_214684100()
{
  result = qword_27C917AB0;
  if (!qword_27C917AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917AB0);
  }

  return result;
}

unint64_t sub_214684158()
{
  result = qword_27C917AB8;
  if (!qword_27C917AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917AB8);
  }

  return result;
}

unint64_t sub_2146841B0()
{
  result = qword_27C917AC0;
  if (!qword_27C917AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917AC0);
  }

  return result;
}

unint64_t sub_214684208()
{
  result = qword_27C917AC8;
  if (!qword_27C917AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917AC8);
  }

  return result;
}

unint64_t sub_214684260()
{
  result = qword_27C917AD0;
  if (!qword_27C917AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917AD0);
  }

  return result;
}

__n128 __swift_memcpy162_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_2146842F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 162))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21468433C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 162) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2146843D8()
{
  result = qword_27C917AD8;
  if (!qword_27C917AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917AD8);
  }

  return result;
}

unint64_t sub_214684434@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_213FB7994;
  v4[3] = 0;
  v4[4] = 100;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_2140597F4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21405980C;
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21408E9E0;
  *(v6 + 24) = v5;
  *(inited + 40) = v6;
  return sub_2140433DC(inited, a1);
}

uint64_t sub_214684580@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PriorityMessageCommand() + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v3;
}

uint64_t type metadata accessor for PriorityMessageCommand()
{
  result = qword_280B2EEB0;
  if (!qword_280B2EEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_21468462C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = (v1 + *(type metadata accessor for PriorityMessageCommand() + 20));
  v6 = v5->n128_u64[1];
  v7 = v5[1].n128_u64[0];

  result = *a1;
  *v5 = *a1;
  v5[1].n128_u64[0] = v3;
  v5[1].n128_u8[8] = v4;
  return result;
}

uint64_t sub_214684694()
{
  if (*(v0 + *(type metadata accessor for PriorityMessageCommand() + 20) + 16))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214684748@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for PriorityMessageCommand() + 20) + 16);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146847DC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for PriorityMessageCommand() + 20);
  sub_2140325F8(v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214684898(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PriorityMessageCommand() + 20);
  v11 = a1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v10 = *(v3 + 24);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v3 + 16);

    *(v3 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2146849E0(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for PriorityMessageCommand() + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    *a1 = v4;

    return sub_2140652FC;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214684A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for PriorityMessageCommand() + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v3;
}

uint64_t sub_214684AF4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = a2 + *(type metadata accessor for PriorityMessageCommand() + 20);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);

  *v6 = v3;
  *(v6 + 8) = v2;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  return result;
}

void (*sub_214684B78(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for PriorityMessageCommand() + 20);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  LOBYTE(v6) = *(v6 + 24);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v6;

  return sub_214065740;
}

uint64_t sub_214684C24(uint64_t a1)
{
  *(a1 + 8) = sub_214684C8C(&qword_27C917AE0);
  result = sub_214684C8C(&qword_27C917AE8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214684C8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PriorityMessageCommand();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void BinaryDecoder.decode<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
  v9 = sub_2146D8A38();
  v10 = [v8 initWithData_];

  (*(*v5 + 80))(a4, v10, a4, a5);
}

uint64_t sub_214684DD8(uint64_t result)
{
  if (result < 8)
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = result;
    if ([v1 hasBytesAvailable])
    {
      v4 = swift_slowAlloc();
      if ([v2 read:v4 maxLength:v3] == v3)
      {
        v3 = *v4;
      }

      else
      {
        sub_21468620C();
        swift_allocError();
        *v6 = 1;
        swift_willThrow();
      }

      MEMORY[0x216056AC0](v4, -1, -1);
    }

    else
    {
      sub_21468620C();
      swift_allocError();
      *v5 = 0;
      swift_willThrow();
    }

    return v3;
  }

  return result;
}

uint64_t sub_214684EE8(uint64_t result)
{
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = result;
    if ([v1 hasBytesAvailable])
    {
      v4 = swift_slowAlloc();
      if ([v2 read:v4 maxLength:v3] == v3)
      {
        v3 = *v4;
      }

      else
      {
        sub_21468620C();
        swift_allocError();
        *v6 = 1;
        swift_willThrow();
      }

      MEMORY[0x216056AC0](v4, -1, -1);
    }

    else
    {
      sub_21468620C();
      swift_allocError();
      *v5 = 0;
      swift_willThrow();
    }

    return v3;
  }

  return result;
}

uint64_t sub_214684FF8(uint64_t result)
{
  if (result < 2)
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = result;
    if ([v1 hasBytesAvailable])
    {
      v4 = swift_slowAlloc();
      if ([v2 read:v4 maxLength:v3] == v3)
      {
        v3 = *v4;
      }

      else
      {
        sub_21468620C();
        swift_allocError();
        *v6 = 1;
        swift_willThrow();
      }

      MEMORY[0x216056AC0](v4, -1, -1);
    }

    else
    {
      sub_21468620C();
      swift_allocError();
      *v5 = 0;
      swift_willThrow();
    }

    return v3;
  }

  return result;
}

uint64_t sub_214685108(uint64_t result)
{
  if (result < 4)
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = result;
    if ([v1 hasBytesAvailable])
    {
      v4 = swift_slowAlloc();
      if ([v2 read:v4 maxLength:v3] == v3)
      {
        v3 = *v4;
      }

      else
      {
        sub_21468620C();
        swift_allocError();
        *v6 = 1;
        swift_willThrow();
      }

      MEMORY[0x216056AC0](v4, -1, -1);
    }

    else
    {
      sub_21468620C();
      swift_allocError();
      *v5 = 0;
      swift_willThrow();
    }

    return v3;
  }

  return result;
}

uint64_t sub_214685218@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X8>)
{
  (*(a3 + 24))(&v13, a2, a3);
  v6 = v13;
  type metadata accessor for _BinaryDecoder();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84F90];
  *(v7 + 16) = MEMORY[0x277D84F90];
  *(v7 + 24) = sub_214046008(v8);
  *(v7 + 32) = a1;
  *(v7 + 40) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  *(inited + 32) = a1;
  v10 = a1;
  sub_21451EC18(inited, sub_214686110, a4);

  swift_setDeallocating();
  v11 = *(inited + 16);
  return swift_arrayDestroy();
}

uint64_t sub_214685360()
{
  type metadata accessor for _BinaryDecoder();
  sub_2146861C8(qword_280B2F6E8);

  return sub_2146D9AF8();
}

uint64_t sub_214685444()
{
  type metadata accessor for _BinaryDecoder.KeyedContainer();

  swift_getWitnessTable();
  return sub_2146DA268();
}

uint64_t sub_2146854CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2146855A0@<X0>(unint64_t *a1@<X2>, void *a2@<X8>)
{
  v5 = *v2;
  a2[3] = type metadata accessor for _BinaryDecoder();
  a2[4] = sub_2146861C8(a1);
  *a2 = v5;
}

void sub_214685610()
{
  v2 = *v0;
  v3 = *(*v0 + 32);
  sub_214684DD8(8);

  if (!v1)
  {
    *(v2 + 40);
  }
}

void sub_2146856D8()
{
  v2 = *v0;
  v3 = *(*v0 + 32);
  sub_214684FF8(2);

  if (!v1)
  {
    *(v2 + 40);
  }
}

void sub_214685744()
{
  v2 = *v0;
  v3 = *(*v0 + 32);
  sub_214685108(4);

  if (!v1)
  {
    *(v2 + 40);
  }
}

uint64_t sub_214685990@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = *v2;
  a2[3] = type metadata accessor for _BinaryDecoder();
  a2[4] = a1;
  *a2 = v5;
}

uint64_t sub_2146859E0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for _BinaryDecoder();
  a1[4] = sub_2146861C8(qword_280B2F6E8);
  *a1 = v3;
}

uint64_t sub_214685AAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for _BinaryDecoder();
  a2[4] = sub_2146861C8(qword_280B2F6E8);
  *a2 = a1;
}

uint64_t sub_214685B1C@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X4>, void *a3@<X8>)
{
  a3[3] = type metadata accessor for _BinaryDecoder();
  a3[4] = sub_2146861C8(a2);
  *a3 = a1;
}

uint64_t sub_214685B94(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_2146862B4();
}

uint64_t sub_214685BA0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_214685A50();
  if (!v3)
  {
    v7 = v9;
  }

  return v7 & 1;
}

uint64_t sub_214685BF8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  result = sub_214685A50();
  if (!v3)
  {
    return v8;
  }

  return result;
}

double sub_214685C4C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_214685A50();
  if (!v3)
  {
    return v8;
  }

  return result;
}

float sub_214685CA0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_214685A50();
  if (!v3)
  {
    return v8;
  }

  return result;
}

uint64_t sub_214685E24(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  result = sub_214685A50();
  if (!v3)
  {
    return v8;
  }

  return result;
}

uint64_t sub_214685E98(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  result = sub_214685A50();
  if (!v3)
  {
    return v8;
  }

  return result;
}

uint64_t sub_214685F0C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  result = sub_214685A50();
  if (!v3)
  {
    return v8;
  }

  return result;
}

uint64_t sub_214685F80(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  result = sub_214685A50();
  if (!v3)
  {
    return v8;
  }

  return result;
}

uint64_t sub_214685FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v7 = *(a5 + 16);
  v8 = *(a5 + 24);
  return sub_214685A50();
}

uint64_t sub_214686040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v7 = *(a5 + 16);
  v8 = *(a5 + 24);
  return sub_214685A80();
}

uint64_t sub_21468606C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_214685B1C(*v2, &qword_27C917AF0, a2);
}

uint64_t sub_2146860AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_214685AAC(*v2, a2);
}

uint64_t sub_2146860D0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_214685B1C(*v2, qword_280B2F6E8, a2);
}

uint64_t sub_214686110()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 8);
  return sub_214685360();
}

uint64_t sub_2146861C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _BinaryDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21468620C()
{
  result = qword_27C917AF8;
  if (!qword_27C917AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917AF8);
  }

  return result;
}

uint64_t sub_214686278()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_214686368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E756F4378616DLL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2146863F0(uint64_t a1)
{
  v2 = sub_2146865A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21468642C(uint64_t a1)
{
  v2 = sub_2146865A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214686468(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917B00, &qword_21477BEC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146865A0();
  sub_2146DAA28();
  sub_2146DA368();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2146865A0()
{
  result = qword_27C917B08;
  if (!qword_27C917B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917B08);
  }

  return result;
}

uint64_t sub_2146865F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917B10, &qword_21477BEC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146865A0();
  sub_2146DAA08();
  if (!v2)
  {
    v11 = sub_2146DA1A8();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214686760(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917B00, &qword_21477BEC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146865A0();
  sub_2146DAA28();
  sub_2146DA368();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2146868A0(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

double sub_2146868EC()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t sub_21468691C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_21468694C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_2146869A4()
{
  v1 = 0x7A69536C65786970;
  if (*v0 != 1)
  {
    v1 = 0x7453657079547475;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_214686A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214687508(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214686A34(uint64_t a1)
{
  v2 = sub_214686CF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214686A70(uint64_t a1)
{
  v2 = sub_214686CF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214686AAC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917B18, &unk_21477BED0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v15[0] = v1[4];
  v15[1] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214686CF4();

  sub_2146DAA28();
  v16 = v9;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A8F0, &qword_2146F5FD8);
  sub_214687000(&qword_27C90A910);
  sub_2146DA388();

  if (!v2)
  {
    v16 = v10;
    v17 = v11;
    v18 = 1;
    type metadata accessor for CGSize(0);
    sub_21464A290(&qword_280B2E368);
    sub_2146DA388();
    LOBYTE(v16) = 2;
    sub_2146DA328();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_214686CF4()
{
  result = qword_27C917B20;
  if (!qword_27C917B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917B20);
  }

  return result;
}

uint64_t sub_214686D48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917B28, &qword_21477BEE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214686CF4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A8F0, &qword_2146F5FD8);
  v19 = 0;
  sub_214687000(&qword_27C90A8F8);
  sub_2146DA1C8();
  v11 = v18[0];
  type metadata accessor for CGSize(0);
  v19 = 1;
  sub_21464A290(&qword_280B30B88);
  sub_2146DA1C8();
  v12 = v18[0];
  v13 = v18[1];
  LOBYTE(v18[0]) = 2;
  v15 = sub_2146DA168();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;
  a2[4] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214687000(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C90A8F0, &qword_2146F5FD8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21468709C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a6;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

unint64_t sub_2146870B8()
{
  result = qword_27C917B30;
  if (!qword_27C917B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917B30);
  }

  return result;
}

unint64_t sub_214687110()
{
  result = qword_27C917B38;
  if (!qword_27C917B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917B38);
  }

  return result;
}

unint64_t sub_214687164(uint64_t a1)
{
  result = sub_21468718C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21468718C()
{
  result = qword_27C917B40;
  if (!qword_27C917B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917B40);
  }

  return result;
}

unint64_t sub_2146871E0(uint64_t a1)
{
  *(a1 + 8) = sub_214687210();
  result = sub_214687264();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214687210()
{
  result = qword_27C917B48;
  if (!qword_27C917B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917B48);
  }

  return result;
}

unint64_t sub_214687264()
{
  result = qword_27C917B50;
  if (!qword_27C917B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917B50);
  }

  return result;
}

unint64_t sub_2146872FC()
{
  result = qword_27C917B58;
  if (!qword_27C917B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917B58);
  }

  return result;
}

unint64_t sub_214687354()
{
  result = qword_27C917B60;
  if (!qword_27C917B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917B60);
  }

  return result;
}

unint64_t sub_2146873AC()
{
  result = qword_27C917B68;
  if (!qword_27C917B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917B68);
  }

  return result;
}

unint64_t sub_214687404()
{
  result = qword_27C917B70;
  if (!qword_27C917B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917B70);
  }

  return result;
}

unint64_t sub_21468745C()
{
  result = qword_27C917B78;
  if (!qword_27C917B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917B78);
  }

  return result;
}

unint64_t sub_2146874B4()
{
  result = qword_27C917B80;
  if (!qword_27C917B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917B80);
  }

  return result;
}

uint64_t sub_214687508(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F697461727564 && a2 == 0xE900000000000073 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7A69536C65786970 && a2 == 0xE900000000000065 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7453657079547475 && a2 == 0xEC000000676E6972)
  {

    return 2;
  }

  else
  {
    v5 = sub_2146DA6A8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_214687634@<X0>(uint64_t a1@<X8>)
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

__n128 sub_214687680(__n128 *a1)
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

uint64_t sub_2146876DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214687728(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_214687784@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v4 = *(v1 + 112);
  v3 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2146877D0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[6].n128_u64[1];
  v7 = v1[7].n128_u64[1];

  result = *a1;
  v1[6] = *a1;
  v1[7].n128_u64[0] = v3;
  v1[7].n128_u64[1] = v4;
  v1[8].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21468782C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  v4 = *(v1 + 152);
  v3 = *(v1 + 160);
  v5 = *(v1 + 168);
  *a1 = *(v1 + 136);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214687878(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 144);
  v7 = *(v1 + 160);

  result = *a1;
  *(v1 + 136) = *a1;
  *(v1 + 152) = v3;
  *(v1 + 160) = v4;
  *(v1 + 168) = v5;
  return result;
}

uint64_t sub_2146878D4()
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

uint64_t sub_214687950()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146879CC()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 112);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214687A48()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 152);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214687AC4()
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  v9 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v0 + 176) longitude:*(v0 + 184)];
  *&v30 = 0;
  v10 = [objc_opt_self() archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v30];
  v11 = v30;
  if (v10)
  {
    v27 = v9;
    v28 = v8;
    v12 = sub_2146D8A58();
    v14 = v13;

    v31 = MEMORY[0x277D839F8];
    *&v30 = v5;
    sub_213FDC730(&v30, v29);
    v15 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v29, 1702125924, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    if (v1)
    {
      v17 = MEMORY[0x277D837D0];
      v31 = MEMORY[0x277D837D0];
      *&v30 = v2;
      *(&v30 + 1) = v1;
      sub_213FDC730(&v30, v29);

      v18 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v29, 0x444965636E6566, 0xE700000000000000, v18);
      v31 = &type metadata for FMFFenceTrigger.EnvelopeTriggerStatus;
      LOBYTE(v30) = v6;
      sub_213FDC730(&v30, v29);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v29, 0xD000000000000015, 0x800000021479B0F0, v19);
      v31 = MEMORY[0x277CC9318];
      *&v30 = v12;
      *(&v30 + 1) = v14;
      sub_213FDC730(&v30, v29);
      sub_21402D9F8(v12, v14);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v29, 0x6E6F697461636F6CLL, 0xE800000000000000, v20);
      v31 = &type metadata for FMFFenceTrigger.EnvelopeTriggerStatus;
      LOBYTE(v30) = v6;
      sub_213FDC730(&v30, v29);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v29, 0x5372656767697274, 0xED00007375746174, v21);
      if (v4)
      {
        v31 = v17;
        *&v30 = v3;
        *(&v30 + 1) = v4;
        sub_213FDC730(&v30, v29);

        v22 = swift_isUniquelyReferenced_nonNull_native();
        sub_2140524DC(v29, 1684632949, 0xE400000000000000, v22);
        if (v7)
        {
          v31 = v17;
          *&v30 = v28;
          *(&v30 + 1) = v7;
          sub_213FDC730(&v30, v29);

          v23 = swift_isUniquelyReferenced_nonNull_native();
          sub_2140524DC(v29, 118, 0xE100000000000000, v23);
          sub_213FB54FC(v12, v14);

          result = v15;
          v25 = *MEMORY[0x277D85DE8];
          return result;
        }
      }
    }

    v11 = sub_2146DA018();
    __break(1u);
  }

  v26 = v11;
  sub_2146D8838();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_214687EA4@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_214687F00()
{
  v1 = *v0;
  v2 = 28265;
  v3 = 0x7265746E65;
  v4 = 1953069157;
  if (v1 != 3)
  {
    v4 = 0x6D72657465646E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7632239;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_214687F90()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468805C()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_214688114()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2146881DC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_214687EA4(a1);
}

void sub_2146881E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 28265;
  v5 = 0xE500000000000000;
  v6 = 0x7265746E65;
  v7 = 0xE400000000000000;
  v8 = 1953069157;
  if (v2 != 3)
  {
    v8 = 0x6D72657465646E75;
    v7 = 0xEC00000064656E69;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7632239;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_214688320(uint64_t a1, uint64_t a2)
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

uint64_t (*sub_214688468(void *a1))(uint64_t *a1, char a2)
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

void (*sub_214688504(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_21468859C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v12 = *(v3 + 72);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 64);

    *(v3 + 56) = a1;
    *(v3 + 64) = a2;
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

uint64_t (*sub_2146886E4(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 56);
    a1[1] = v3;

    return sub_2144120D4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214688780(uint64_t *a1))(uint64_t **a1, char a2)
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
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_214412390;
}

uint64_t sub_214688880@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 120);
  if (v4)
  {
    *a2 = *(a1 + 112);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146888F0(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2146889A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 96);
  v7 = *(v2 + 104);
  v12 = *(v3 + 128);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 120);

    *(v3 + 112) = a1;
    *(v3 + 120) = a2;
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

uint64_t (*sub_214688AE8(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 120);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 112);
    a1[1] = v3;

    return sub_214688B84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214688B84(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    v14 = *a1;
    v15 = v3;
    v10 = *(v4 + 96);
    v11 = *(v4 + 104);
    v16 = *(v4 + 128);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = a1[3];

      *(v4 + 112) = v5;
      *(v4 + 120) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v14 = *a1;
  v15 = v3;
  v7 = *(v4 + 96);
  v6 = *(v4 + 104);
  v16 = *(v4 + 128);
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

  *(v4 + 112) = v5;
  *(v4 + 120) = v3;
}

uint64_t sub_214688DA4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 104);
  v9 = *(a2 + 120);

  *(a2 + 96) = v4;
  *(a2 + 104) = v3;
  *(a2 + 112) = v6;
  *(a2 + 120) = v5;
  *(a2 + 128) = v7;
  return result;
}

void (*sub_214688E1C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 104);
  v7 = *(v1 + 112);
  v6 = *(v1 + 120);
  v8 = *(v1 + 128);
  *v4 = *(v1 + 96);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_214688EB4;
}

void sub_214688EB4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 104);
  v10 = *(v3 + 120);
  if (a2)
  {
    v11 = (*a1)[3];

    *(v3 + 96) = v5;
    *(v3 + 104) = v4;
    *(v3 + 112) = v7;
    *(v3 + 120) = v6;
    *(v3 + 128) = v8;
    v12 = v2[1];
    v13 = v2[3];
  }

  else
  {
    v14 = *(v3 + 104);

    *(v3 + 96) = v5;
    *(v3 + 104) = v4;
    *(v3 + 112) = v7;
    *(v3 + 120) = v6;
    *(v3 + 128) = v8;
  }

  free(v2);
}

uint64_t sub_214688F84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 160);
  if (v4)
  {
    *a2 = *(a1 + 152);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214688FF4(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2146890A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 136);
  v7 = *(v2 + 144);
  v12 = *(v3 + 168);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 160);

    *(v3 + 152) = a1;
    *(v3 + 160) = a2;
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

uint64_t (*sub_2146891EC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 160);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 152);
    a1[1] = v3;

    return sub_214689288;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214689288(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    v14 = *a1;
    v15 = v3;
    v10 = *(v4 + 136);
    v11 = *(v4 + 144);
    v16 = *(v4 + 168);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = a1[3];

      *(v4 + 152) = v5;
      *(v4 + 160) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v14 = *a1;
  v15 = v3;
  v7 = *(v4 + 136);
  v6 = *(v4 + 144);
  v16 = *(v4 + 168);
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

  *(v4 + 152) = v5;
  *(v4 + 160) = v3;
}

uint64_t sub_2146894A8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 144);
  v9 = *(a2 + 160);

  *(a2 + 136) = v4;
  *(a2 + 144) = v3;
  *(a2 + 152) = v6;
  *(a2 + 160) = v5;
  *(a2 + 168) = v7;
  return result;
}

void (*sub_214689520(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 144);
  v7 = *(v1 + 152);
  v6 = *(v1 + 160);
  v8 = *(v1 + 168);
  *v4 = *(v1 + 136);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2146895B8;
}

void sub_2146895B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 144);
  v10 = *(v3 + 160);
  if (a2)
  {
    v11 = (*a1)[3];

    *(v3 + 136) = v5;
    *(v3 + 144) = v4;
    *(v3 + 152) = v7;
    *(v3 + 160) = v6;
    *(v3 + 168) = v8;
    v12 = v2[1];
    v13 = v2[3];
  }

  else
  {
    v14 = *(v3 + 144);

    *(v3 + 136) = v5;
    *(v3 + 144) = v4;
    *(v3 + 152) = v7;
    *(v3 + 160) = v6;
    *(v3 + 168) = v8;
  }

  free(v2);
}

uint64_t sub_2146896E8()
{
  sub_214687AC4();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21468973C()
{
  sub_214687AC4();
  v0 = sub_2146D9468();

  return v0;
}

unint64_t sub_214689794()
{
  result = qword_27C917B88;
  if (!qword_27C917B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917B88);
  }

  return result;
}

unint64_t sub_2146897E8(uint64_t a1)
{
  *(a1 + 8) = sub_214320130();
  result = sub_21431F9F8();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214689818(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_214689860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2146898F0()
{
  result = qword_27C917B90;
  if (!qword_27C917B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917B90);
  }

  return result;
}

void sub_214689944(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [a1 domain];
  v9 = sub_2146D95B8();
  v11 = v10;

  MEMORY[0x2160545D0](v9, v11);

  *a4 = 0xD000000000000014;
  a4[1] = 0x800000021478AAD0;
  [a1 code];
  v12 = sub_2146DA428();
  v14 = v13;

  a4[2] = v12;
  a4[3] = v14;
  a4[4] = a2;
  a4[5] = a3;
}

void sub_214689A34(void *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v44 = a3;
  v45 = a4;
  v41 = a2;
  v5 = sub_2146D9F58();
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  sub_2146D9BA8();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2146EA710;
  v50 = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
  v16 = sub_2146D9618();
  v18 = v17;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_213FB2DA0();
  *(v14 + 32) = v16;
  *(v14 + 40) = v18;
  sub_2146D91D8();

  v46 = a1;
  v19 = a1;
  if (swift_dynamicCast())
  {

LABEL_7:
    v23 = v50;
    v24 = v51;
    v25 = v52;
    v26 = v53;
    v28 = v54;
    v27 = v55;
    v29 = v46;
LABEL_8:

    goto LABEL_9;
  }

  v46 = a1;
  v20 = a1;
  if (swift_dynamicCast())
  {

    v21 = v43;
    (*(v43 + 32))(v11, v13, v5);
    v22 = v42;
    (*(v21 + 16))(v42, v11, v5);
    sub_21468A070(v22, &v50);

    (*(v21 + 8))(v11, v5);
    goto LABEL_7;
  }

  v46 = a1;
  v31 = a1;
  if (swift_dynamicCast())
  {

    v28 = v50;
    v27 = v51;
    v24 = 0x80000002147A6E60;

    v23 = 0xD000000000000022;
    v26 = 0xEC00000065756C61;
    v25 = 0x5664696C61766E69;
    goto LABEL_9;
  }

  v49 = a1;
  v32 = a1;
  if (swift_dynamicCast())
  {

    sub_21468A624(v46, v47, v48, 0, 0, &v50);

    v23 = v50;
    v24 = v51;
    v25 = v52;
    v26 = v53;
    v28 = v54;
    v27 = v55;
    v29 = v49;
    goto LABEL_8;
  }

  v46 = a1;
  v33 = a1;
  sub_21404E35C();
  if (swift_dynamicCast())
  {
    v34 = v49;
    v35 = [v49 domain];
    v36 = sub_2146D95B8();
    v38 = v37;

    v50 = 0xD000000000000014;
    v51 = 0x800000021478AAD0;
    MEMORY[0x2160545D0](v36, v38);

    v23 = v50;
    v24 = v51;
    v50 = [v34 code];
    v25 = sub_2146DA428();
    v26 = v39;
  }

  else
  {

    v50 = 0;
    v51 = 0xE000000000000000;
    sub_2146D9EF8();

    v50 = 0xD000000000000014;
    v51 = 0x800000021478AAD0;
    swift_getErrorValue();
    swift_getDynamicType();
    v40 = sub_2146DAA78();
    MEMORY[0x2160545D0](v40);

    v23 = v50;
    v24 = v51;

    v26 = 0xEB00000000657079;
    v25 = 0x546E776F6E6B6E55;
  }

  v27 = v44;
  v28 = v41;
LABEL_9:
  v30 = v45;
  *v45 = v23;
  v30[1] = v24;
  v30[2] = v25;
  v30[3] = v26;
  v30[4] = v28;
  v30[5] = v27;
}

uint64_t sub_214689FD0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_214689FE0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_21468A010()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_21468A040()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_21468A070@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2146D9F48();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2146D9F58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v13, a1, v9);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == *MEMORY[0x277D84160])
  {
    (*(v10 + 96))(v13, v9);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    (*(v5 + 32))(v8, v13 + *(v15 + 48), v4);
    v16 = sub_21468AE74();
    v18 = v17;
    (*(v5 + 8))(v8, v4);
    v19 = 0xEC00000068637461;
    v20 = 0x6D73694D65707974;
  }

  else if (v14 == *MEMORY[0x277D84170])
  {
    (*(v10 + 96))(v13, v9);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    (*(v5 + 32))(v8, v13 + *(v21 + 48), v4);
    v16 = sub_21468AE74();
    v18 = v22;
    (*(v5 + 8))(v8, v4);
    v19 = 0xED0000646E756F46;
    v20 = 0x746F4E65756C6176;
  }

  else if (v14 == *MEMORY[0x277D84158])
  {
    (*(v10 + 96))(v13, v9);
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    sub_213FB77C8(v13, v37);
    (*(v5 + 32))(v8, v13 + v23, v4);
    v33 = sub_21468AE74();
    v34 = a1;
    v25 = v24;
    v35 = 46;
    v36 = 0xE100000000000000;
    __swift_project_boxed_opaque_existential_1(v37, v37[3]);
    v26 = sub_2146DAA38();
    MEMORY[0x2160545D0](v26);

    v27 = v35;
    v28 = v36;
    v35 = v33;
    v36 = v25;

    v29 = v27;
    a1 = v34;
    MEMORY[0x2160545D0](v29, v28);

    v16 = v35;
    v18 = v36;
    (*(v5 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v19 = 0xEB00000000646E75;
    v20 = 0x6F46746F4E79656BLL;
  }

  else if (v14 == *MEMORY[0x277D84168])
  {
    (*(v10 + 96))(v13, v9);
    (*(v5 + 32))(v8, v13, v4);
    v16 = sub_21468AE74();
    v18 = v30;
    (*(v5 + 8))(v8, v4);
    v19 = 0xED00006465747075;
    v20 = 0x72726F4361746164;
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    v19 = 0xEB00000000657079;
    v20 = 0x546E776F6E6B6E55;
    v18 = 0xEA00000000007965;
    v16 = 0x4B6E776F6E6B6E55;
  }

  result = (*(v10 + 8))(a1, v9);
  *a2 = 0xD000000000000021;
  a2[1] = 0x80000002147A6E90;
  a2[2] = v20;
  a2[3] = v19;
  a2[4] = v16;
  a2[5] = v18;
  return result;
}

uint64_t sub_21468A5B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[3];

  *a2 = 0xD000000000000022;
  *(a2 + 8) = 0x80000002147A6E60;
  strcpy((a2 + 16), "invalidValue");
  *(a2 + 29) = 0;
  *(a2 + 30) = -5120;
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  return result;
}

uint64_t sub_21468A624@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v9 = result;
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      v21 = 0xEA00000000006567;
      v20 = 0x616D497974706D65;
      goto LABEL_15;
    }

    sub_2146D9EF8();

    v22 = 0xD000000000000021;
    v23 = 0x80000002147A6F10;
    v16 = v9;
    v17 = a2;
    if (!a2)
    {
      v16 = 0x6E776F6E6B6E55;
      sub_21468BE1C(v9, 0, 2u);
      v17 = 0xE700000000000000;
    }

    MEMORY[0x2160545D0](v16, v17);

    v13 = v9;
    v14 = a2;
    v15 = 2;
  }

  else if (a3)
  {

    sub_2146D9EF8();

    v22 = 0xD00000000000001ALL;
    v23 = 0x80000002147A6F40;
    v18 = v9;
    v19 = a2;
    if (!a2)
    {
      v18 = 0x6E776F6E6B6E55;
      sub_21468BE1C(v9, 0, 1u);
      v19 = 0xE700000000000000;
    }

    MEMORY[0x2160545D0](v18, v19);

    v13 = v9;
    v14 = a2;
    v15 = 1;
  }

  else
  {

    sub_2146D9EF8();

    v22 = 0xD00000000000001ELL;
    v23 = 0x80000002147A6F60;
    v11 = v9;
    v12 = a2;
    if (!a2)
    {
      v11 = 0x6E776F6E6B6E55;
      sub_21468BE1C(v9, 0, 0);
      v12 = 0xE700000000000000;
    }

    MEMORY[0x2160545D0](v11, v12);

    v13 = v9;
    v14 = a2;
    v15 = 0;
  }

  result = sub_21468BE1C(v13, v14, v15);
  v20 = v22;
  v21 = v23;
LABEL_15:
  *a6 = 0xD000000000000022;
  a6[1] = 0x80000002147A6EE0;
  a6[2] = v20;
  a6[3] = v21;
  a6[4] = a4;
  a6[5] = a5;
  return result;
}

uint64_t sub_21468A894()
{
  v1 = 0x707954726F727265;
  if (*v0 != 1)
  {
    v1 = 0x6874615079656BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_21468A8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21468BCAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21468A918(uint64_t a1)
{
  v2 = sub_21468AFEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21468A954(uint64_t a1)
{
  v2 = sub_21468AFEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21468A990(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917B98, &qword_21477C460);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21468AFEC();
  sub_2146DAA28();
  v18 = 0;
  v13 = v15[5];
  sub_2146DA328();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_2146DA328();
  v16 = 2;
  sub_2146DA2B8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_21468AB54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917BA0, &qword_21477C468);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21468AFEC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_2146DA168();
  v23 = v14;
  v25 = 2;
  v15 = sub_2146DA0F8();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21468ADFC(uint64_t a1)
{
  v2 = sub_21468BDC8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21468AE38(uint64_t a1)
{
  v2 = sub_21468BDC8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_21468AE74()
{
  v0 = sub_2146D9F38();
  v1 = *(v0 + 16);
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_21409FD08(0, v1, 0);
    v2 = v13;
    v3 = v0 + 32;
    do
    {
      sub_214053840(v3, v12);
      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      v4 = sub_2146DAA38();
      v6 = v5;
      __swift_destroy_boxed_opaque_existential_1(v12);
      v13 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_21409FD08((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = v4;
      *(v9 + 40) = v6;
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v12[0] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v10 = sub_2146D9558();

  return v10;
}

unint64_t sub_21468AFEC()
{
  result = qword_280B2FEA0;
  if (!qword_280B2FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2FEA0);
  }

  return result;
}

uint64_t sub_21468B040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_2146D9F48();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2146D9F58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v14 + 16);
  v38 = a3;
  v18(v17, a3, v13);
  v19 = (*(v14 + 88))(v17, v13);
  if (v19 == *MEMORY[0x277D84160])
  {
    (*(v14 + 96))(v17, v13);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    (*(v9 + 32))(v12, v17 + *(v20 + 48), v8);
    v21 = sub_21468B5EC(a1, a2);
    v23 = v22;

    (*(v9 + 8))(v12, v8);
    v24 = 0xEC00000068637461;
    v25 = 0x6D73694D65707974;
  }

  else if (v19 == *MEMORY[0x277D84170])
  {
    (*(v14 + 96))(v17, v13);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0);
    (*(v9 + 32))(v12, v17 + *(v26 + 48), v8);
    v21 = sub_21468B5EC(a1, a2);
    v23 = v27;

    (*(v9 + 8))(v12, v8);
    v24 = 0xED0000646E756F46;
    v25 = 0x746F4E65756C6176;
  }

  else if (v19 == *MEMORY[0x277D84158])
  {
    (*(v14 + 96))(v17, v13);
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914A70, &qword_214757090) + 48);
    sub_213FB77C8(v17, &v41);
    (*(v9 + 32))(v12, v17 + v28, v8);
    v37 = sub_21468B5EC(a1, a2);
    v30 = v29;

    v39 = 46;
    v40 = 0xE100000000000000;
    __swift_project_boxed_opaque_existential_1(&v41, v43);
    v31 = sub_2146DAA38();
    MEMORY[0x2160545D0](v31);

    v32 = v39;
    v33 = v40;
    v39 = v37;
    v40 = v30;

    MEMORY[0x2160545D0](v32, v33);

    v21 = v39;
    v23 = v40;
    (*(v9 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_1(&v41);
    v24 = 0xEB00000000646E75;
    v25 = 0x6F46746F4E79656BLL;
  }

  else if (v19 == *MEMORY[0x277D84168])
  {
    (*(v14 + 96))(v17, v13);
    (*(v9 + 32))(v12, v17, v8);
    v21 = sub_21468B5EC(a1, a2);
    v23 = v34;

    (*(v9 + 8))(v12, v8);
    v24 = 0xED00006465747075;
    v25 = 0x72726F4361746164;
  }

  else
  {
    v41 = a1;
    v42 = a2;

    MEMORY[0x2160545D0](0x6E776F6E6B6E552ELL, 0xEB0000000079654BLL);

    v21 = v41;
    v23 = v42;
    (*(v14 + 8))(v17, v13);
    v24 = 0xEB00000000657079;
    v25 = 0x546E776F6E6B6E55;
  }

  result = (*(v14 + 8))(v38, v13);
  *a4 = 0xD000000000000021;
  a4[1] = 0x80000002147A6E90;
  a4[2] = v25;
  a4[3] = v24;
  a4[4] = v21;
  a4[5] = v23;
  return result;
}

uint64_t sub_21468B5EC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D48, qword_2146EF9D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146EA710;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  v5 = sub_2146D9F38();
  v6 = *(v5 + 16);
  if (v6)
  {
    v18 = MEMORY[0x277D84F90];
    sub_21409FD08(0, v6, 0);
    v7 = v18;
    v8 = v5 + 32;
    do
    {
      sub_214053840(v8, v17);
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      v9 = sub_2146DAA38();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1(v17);
      v18 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21409FD08((v12 > 1), v13 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v17[0] = v4;
  sub_21468BA8C(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v15 = sub_2146D9558();

  return v15;
}

unint64_t sub_21468B7BC()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v13 = *v0;

  MEMORY[0x2160545D0](45, 0xE100000000000000);
  MEMORY[0x2160545D0](v4, v3);
  v7 = v13;
  v8 = v1;
  if (v6)
  {
    MEMORY[0x2160545D0](v5, v6);
    MEMORY[0x2160545D0](45, 0xE100000000000000);

    v7 = v13;
    v8 = v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E68D0;
  *(inited + 32) = 0x6F69736F6C707865;
  v10 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xEF6E69616D6F446ELL;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 72) = v10;
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x80000002147A6EC0;
  *(inited + 96) = v4;
  *(inited + 104) = v3;
  *(inited + 120) = v10;
  *(inited + 128) = 0x74654D726F727265;
  *(inited + 168) = v10;
  *(inited + 136) = 0xEB00000000636972;
  *(inited + 144) = v7;
  *(inited + 152) = v8;

  v11 = sub_2140457C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
  swift_arrayDestroy();
  return v11;
}

void *sub_21468B984(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2140954FC(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905260, &qword_2146F1958);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21468BA8C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2140960E0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_21468BBA8()
{
  result = qword_27C917BA8;
  if (!qword_27C917BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917BA8);
  }

  return result;
}

unint64_t sub_21468BC00()
{
  result = qword_280B2FE90;
  if (!qword_280B2FE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2FE90);
  }

  return result;
}

unint64_t sub_21468BC58()
{
  result = qword_280B2FE98;
  if (!qword_280B2FE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2FE98);
  }

  return result;
}

uint64_t sub_21468BCAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954726F727265 && a2 == 0xE900000000000065 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874615079656BLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_21468BDC8()
{
  result = qword_280B2E5A8[0];
  if (!qword_280B2E5A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B2E5A8);
  }

  return result;
}

uint64_t sub_21468BE1C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_21468BE34@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = type metadata accessor for SwiftRegexValidator();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  if (qword_27C903158 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = __swift_project_value_buffer(v5, qword_27CA19DD8);
  v7 = *(*(v5 - 8) + 16);
  v7(&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  sub_2144A041C(&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v8 + 16) = sub_214302808;
  *(v8 + 24) = v10;
  if (qword_27C903298 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_27CA19F60);
  v7(&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v5);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  sub_2144A041C(v4, v13 + v9);
  *(v12 + 16) = sub_2144A066C;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_21408E9E0;
  *(v19 + 24) = v17;
  v21 = inited;
  v20 = v25;
  *(inited + 32) = v19;
  return sub_2140433DC(v21, v20);
}

uint64_t sub_21468C1A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_21468C1F4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1->n128_u64[1];
  v6 = v1[1].n128_u64[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  return result;
}

uint64_t sub_21468C24C()
{
  if (*(v0 + 16))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21468C2BC(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v4 = *v1;
  v5 = *(v1 + 8);
  v10 = *(v2 + 24);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v2 + 16);

    *(v2 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_21468C3F8(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_21408E22C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_21468C490(uint64_t *a1))(uint64_t **a1, char a2)
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
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_21408E5B4;
}

unint64_t sub_21468C528(uint64_t a1)
{
  *(a1 + 8) = sub_214304B90();
  result = sub_214304D70();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21468C568()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468C670()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468C758()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468C88C()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468C9B0()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468CAF8()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468CC58()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468CD88()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468CDEC()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468CEF0()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468D00C()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468D114()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468D1F8()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468D2FC()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468D408()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468D51C()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21468D658(uint64_t a1, char a2)
{
  sub_2146DA958();
  sub_21405019C(*&a420v_1[8 * a2], 0xE400000000000000);
  sub_2146DA998();
  return sub_2146DA9B8();
}

uint64_t sub_21468D6B0()
{
  sub_2146D9698();
}

uint64_t sub_21468D7DC()
{
  sub_2146D9698();
}

uint64_t sub_21468D8FC()
{
  sub_2146D9698();
}

uint64_t sub_21468DA48()
{
  sub_2146D9698();
}

uint64_t sub_21468DBD8()
{
  sub_2146D9698();
}

uint64_t sub_21468DD28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214696AA8();
  *a2 = result;
  return result;
}

void sub_21468DD58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000644965;
  v4 = 0x636E657265666572;
  v5 = 0xE200000000000000;
  v6 = 25705;
  if (v2 != 6)
  {
    v6 = 0x4379616C70736964;
    v5 = 0xEE00746E65746E6FLL;
  }

  v7 = 0xE400000000000000;
  v8 = 1869768040;
  if (v2 != 4)
  {
    v8 = 0xD000000000000017;
    v7 = 0x8000000214788230;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656C746974627573;
  if (v2 != 2)
  {
    v10 = 1852793705;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_21468DE50()
{
  v1 = *v0;
  v2 = 0x636E657265666572;
  v3 = 25705;
  if (v1 != 6)
  {
    v3 = 0x4379616C70736964;
  }

  v4 = 1869768040;
  if (v1 != 4)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974627573;
  if (v1 != 2)
  {
    v5 = 1852793705;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21468DF44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214696AA8();
  *a1 = result;
  return result;
}

uint64_t sub_21468DF6C(uint64_t a1)
{
  v2 = sub_21469005C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21468DFA8(uint64_t a1)
{
  v2 = sub_21469005C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BIAPayload.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v213 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C08, &qword_21473BF00);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v214 = &v200 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v215 = (&v200 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917BB0, &qword_21477C718);
  v216 = *(v8 - 8);
  v217 = v8;
  v9 = *(v216 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v200 - v10;
  v12 = type metadata accessor for BIAPayload(0);
  v13 = *(*(v12 - 1) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v200 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v200 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v200 - v20;
  v23 = a1[3];
  v22 = a1[4];
  v263 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_21469005C();
  v24 = v218;
  sub_2146DAA08();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v263);
  }

  v218 = v19;
  v211 = v21;
  v212 = v16;
  LOBYTE(v262[0]) = 7;
  v25 = v217;
  if ((sub_2146DA248() & 1) == 0)
  {
    memset(v262, 0, 272);
    v262[17] = 0x1FFFFFFFEuLL;
    *(&v262[18] + 8) = 0uLL;
    *(&v262[19] + 8) = 0uLL;
    *(&v262[20] + 8) = 0uLL;
    *(&v262[21] + 8) = 0uLL;
    *(&v262[22] + 8) = 0uLL;
    *(&v262[23] + 8) = 0uLL;
    *(&v262[24] + 8) = 0uLL;
    *(&v262[25] + 8) = 0uLL;
    *(&v262[26] + 8) = 0uLL;
    memset(v261, 0, 272);
    v261[17] = 0x1FFFFFFFEuLL;
    *(&v261[18] + 8) = 0uLL;
    *(&v261[19] + 8) = 0uLL;
    *(&v261[20] + 8) = 0uLL;
    *(&v261[21] + 8) = 0uLL;
    *(&v261[22] + 8) = 0uLL;
    *(&v261[23] + 8) = 0uLL;
    *(&v261[24] + 8) = 0uLL;
    *(&v261[25] + 8) = 0uLL;
    *(&v261[26] + 8) = 0uLL;
    LOBYTE(v260[0]) = 3;
    sub_2146DA0F8();
    if (v28)
    {
      v29 = sub_2146D89C8();
      v31 = v30;

      if (v31 >> 60 != 15)
      {
        sub_213FB2DF4(v262, &qword_27C907C00, &unk_2146F4D60);
        sub_2146900B0(&v219);
        v239 = v227;
        v240 = v228;
        v241 = v229;
        v242 = v230;
        v235 = v223;
        v236 = v224;
        v237 = v225;
        v238 = v226;
        v231 = v219;
        v232 = v220;
        v233 = v221;
        v234 = v222;
        nullsub_1(&v231);
        *&v259[135] = v239;
        *&v259[151] = v240;
        *&v259[167] = v241;
        *&v259[183] = v242;
        *&v259[71] = v235;
        *&v259[87] = v236;
        *&v259[103] = v237;
        *&v259[119] = v238;
        *&v259[7] = v231;
        *&v259[23] = v232;
        *&v259[39] = v233;
        LOBYTE(v255) = 1;
        *&v259[55] = v234;
        LOWORD(v243) = 0;
        sub_2140615D0(&v243);
        *(&v260[24] + 8) = v252;
        *(&v260[25] + 8) = v253;
        *(&v260[26] + 8) = v254;
        *(&v260[20] + 8) = v248;
        *(&v260[21] + 8) = v249;
        *(&v260[22] + 8) = v250;
        *(&v260[23] + 8) = v251;
        *(&v260[16] + 8) = v244;
        *(&v260[17] + 8) = v245;
        *(&v260[18] + 8) = v246;
        *(&v260[19] + 8) = v247;
        *(&v260[15] + 8) = v243;
        memset(v260, 0, 248);
        sub_213FB2DF4(v260, &qword_27C904858, &qword_214736F00);
        *(&v260[12] + 1) = *&v259[144];
        *(&v260[13] + 1) = *&v259[160];
        *(&v260[14] + 1) = *&v259[176];
        *(&v260[8] + 1) = *&v259[80];
        *(&v260[9] + 1) = *&v259[96];
        *(&v260[10] + 1) = *&v259[112];
        *(&v260[11] + 1) = *&v259[128];
        *(&v260[4] + 1) = *&v259[16];
        *(&v260[5] + 1) = *&v259[32];
        *(&v260[6] + 1) = *&v259[48];
        *(&v260[7] + 1) = *&v259[64];
        *&v260[0] = v29;
        *(&v260[0] + 1) = v31;
        *(&v260[1] + 1) = MEMORY[0x277CC9318];
        *&v260[2] = &protocol witness table for Data;
        *(&v260[2] + 1) = 0;
        LOBYTE(v260[3]) = v255;
        *&v260[15] = *&v259[191];
        *(&v260[3] + 1) = *v259;
        memcpy(v262, v260, 0x1B8uLL);
      }
    }

    LOBYTE(v260[0]) = 4;
    sub_2146DA0F8();
    if (v32)
    {
      v33 = sub_2146D89C8();
      v35 = v34;

      if (v35 >> 60 != 15)
      {
        sub_213FB2DF4(v261, &qword_27C907C00, &unk_2146F4D60);
        sub_2146900B0(&v219);
        v239 = v227;
        v240 = v228;
        v241 = v229;
        v242 = v230;
        v235 = v223;
        v236 = v224;
        v237 = v225;
        v238 = v226;
        v231 = v219;
        v232 = v220;
        v233 = v221;
        v234 = v222;
        nullsub_1(&v231);
        *&v259[135] = v239;
        *&v259[151] = v240;
        *&v259[167] = v241;
        *&v259[183] = v242;
        *&v259[71] = v235;
        *&v259[87] = v236;
        *&v259[103] = v237;
        *&v259[119] = v238;
        *&v259[7] = v231;
        *&v259[23] = v232;
        *&v259[39] = v233;
        LOBYTE(v255) = 1;
        *&v259[55] = v234;
        LOWORD(v243) = 0;
        sub_2140615D0(&v243);
        *(&v260[24] + 8) = v252;
        *(&v260[25] + 8) = v253;
        *(&v260[26] + 8) = v254;
        *(&v260[20] + 8) = v248;
        *(&v260[21] + 8) = v249;
        *(&v260[22] + 8) = v250;
        *(&v260[23] + 8) = v251;
        *(&v260[16] + 8) = v244;
        *(&v260[17] + 8) = v245;
        *(&v260[18] + 8) = v246;
        *(&v260[19] + 8) = v247;
        *(&v260[15] + 8) = v243;
        memset(v260, 0, 248);
        sub_213FB2DF4(v260, &qword_27C904858, &qword_214736F00);
        *(&v260[12] + 1) = *&v259[144];
        *(&v260[13] + 1) = *&v259[160];
        *(&v260[14] + 1) = *&v259[176];
        *(&v260[8] + 1) = *&v259[80];
        *(&v260[9] + 1) = *&v259[96];
        *(&v260[10] + 1) = *&v259[112];
        *(&v260[11] + 1) = *&v259[128];
        *(&v260[4] + 1) = *&v259[16];
        *(&v260[5] + 1) = *&v259[32];
        *(&v260[6] + 1) = *&v259[48];
        *(&v260[7] + 1) = *&v259[64];
        *&v260[0] = v33;
        *(&v260[0] + 1) = v35;
        *(&v260[1] + 1) = MEMORY[0x277CC9318];
        *&v260[2] = &protocol witness table for Data;
        *(&v260[2] + 1) = 0;
        LOBYTE(v260[3]) = v255;
        *&v260[15] = *&v259[191];
        *(&v260[3] + 1) = *v259;
        memcpy(v261, v260, 0x1B8uLL);
      }
    }

    LOBYTE(v260[0]) = 0;
    v56 = sub_2146DA0F8();
    v58 = v57;
    sub_213FB2E54(v262, v260, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2E54(v261, v259, &qword_27C907C00, &unk_2146F4D60);
    LOBYTE(v243) = 1;
    v215 = sub_2146DA0F8();
    v218 = v75;
    LOBYTE(v243) = 2;
    *&v208 = sub_2146DA0F8();
    *(&v208 + 1) = v88;
    type metadata accessor for BIAUserInteractionParadigm(0);
    v258 = 5;
    sub_2146960E0(&qword_27C917BC0, type metadata accessor for BIAUserInteractionParadigm);
    v89 = v214;
    sub_2146DA0C8();
    v210 = 0;
    v209 = v11;
    v96 = v212;
    sub_213FB2E54(v260, (v212 + 5), &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2E54(v259, (v96 + 60), &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2E54(v89, v96 + v12[9], &qword_27C907C08, &qword_21473BF00);
    sub_214409FCC(&v243);
    v206 = *(&v244 + 1);
    v207 = v244;
    LODWORD(v205) = v245;
    sub_21440A3C0(&v231);
    v203 = *(&v232 + 1);
    v204 = v232;
    LODWORD(v202) = v233;
    sub_21440A7B4(&v219);
    v97 = v220;
    LOBYTE(v89) = v221;
    sub_21440ABA8(&v255);
    *v96 = v243;
    v98 = v206;
    v96[2] = v207;
    v96[3] = v98;
    *(v96 + 32) = v205;
    *(v96 + 115) = v231;
    v99 = v203;
    v96[117] = v204;
    v96[118] = v99;
    *(v96 + 952) = v202;
    *(v96 + 60) = v219;
    *(v96 + 61) = v97;
    *(v96 + 992) = v89;
    v100 = v96 + v12[10];
    v101 = v256;
    *v100 = v255;
    LOBYTE(v99) = v257;
    *(v100 + 1) = v101;
    v201 = v100 + 16;
    v100[32] = v99;
    v102 = v96 + v12[11];
    *(v102 + 3) = 0u;
    *(v102 + 4) = 0u;
    *(v102 + 1) = 0u;
    *(v102 + 2) = 0u;
    *v102 = 0u;
    v102[80] = 0;
    v104 = *v96;
    v103 = v96[1];
    v105 = v96[2];
    v106 = v96[3];
    LODWORD(v102) = *(v96 + 32);
    *&v231 = v56;
    *(&v231 + 1) = v58;
    LODWORD(v205) = v102;
    LOBYTE(v219) = v102;
    *&v243 = 0xD000000000000016;
    v202 = 0x800000021478EEE0;
    *(&v243 + 1) = 0x800000021478EEE0;
    *&v244 = 0xD00000000000001CLL;
    v207 = 0x800000021478A360;
    *(&v244 + 1) = 0x800000021478A360;

    v203 = v106;
    v204 = v105;
    sub_213FDC9D0(v105, v106);
    v107 = v103;
    v108 = v210;
    v206 = v104;
    v109 = v104(&v231, &v219, &v243);
    v210 = v108;
    if (v108)
    {
    }

    else
    {
      v121 = v202;
      v200 = v100;
      if (v109)
      {
        sub_213FDC6D0(v204, v203);
        v122 = v207;

        v123 = v212;
        v124 = v212[1];
        v125 = v212[2];
        v126 = v212[3];

        sub_213FDC6D0(v125, v126);
        *v123 = v206;
        v123[1] = v107;
        v123[2] = v56;
        v123[3] = v58;
        *(v123 + 32) = v205;
        v127 = v123[115];
        v128 = v123[116];
        v129 = v123[117];
        v130 = v123[118];
        v131 = *(v123 + 952);
        *&v231 = v215;
        *(&v231 + 1) = v218;
        LODWORD(v206) = v131;
        LOBYTE(v219) = v131;
        *&v243 = 0xD000000000000010;
        *(&v243 + 1) = 0x800000021478EF00;
        *&v244 = 0xD00000000000001CLL;
        *(&v244 + 1) = v122;

        sub_213FDC9D0(v129, v130);
        v132 = v210;
        v210 = v127;
        v133 = v127(&v231, &v219, &v243);
        if (v132)
        {
        }

        else
        {
          if (v133)
          {
            sub_213FDC6D0(v129, v130);
            v152 = v207;

            v153 = v212;
            v154 = v212[116];
            v155 = v212[117];
            v156 = v212[118];

            sub_213FDC6D0(v155, v156);
            v153[115] = v210;
            v153[116] = v128;
            v153[117] = v215;
            v153[118] = v218;
            *(v153 + 952) = v206;
            v157 = v153[120];
            v158 = v153[121];
            v159 = v153[122];
            v160 = v153[123];
            v161 = *(v153 + 992);
            v231 = v208;
            LODWORD(v218) = v161;
            LOBYTE(v219) = v161;
            *&v243 = 0xD000000000000013;
            *(&v243 + 1) = 0x800000021478EF20;
            *&v244 = 0xD00000000000001CLL;
            *(&v244 + 1) = v152;

            sub_213FDC9D0(v159, v160);
            v215 = v157;
            v162 = (v157)(&v231, &v219, &v243);
            if (v162)
            {
              sub_213FDC6D0(v159, v160);
              v174 = v207;

              v175 = v212;
              v176 = v212[121];
              v177 = v212[122];
              v178 = v212[123];

              sub_213FDC6D0(v177, v178);
              v175[120] = v215;
              v175[121] = v158;
              v179 = *(&v208 + 1);
              v175[122] = v208;
              v175[123] = v179;
              *(v175 + 992) = v218;
              v181 = *v200;
              v180 = *(v200 + 1);
              v182 = *(v200 + 2);
              v183 = *(v200 + 3);
              LODWORD(v179) = v200[32];
              v231 = 0uLL;
              LODWORD(v218) = v179;
              LOBYTE(v219) = v179;
              strcpy(&v243, "BIAPayload.id");
              HIWORD(v243) = -4864;
              *&v244 = 0xD00000000000001CLL;
              *(&v244 + 1) = v174;

              sub_213FDC9D0(v182, v183);
              v184 = v181(&v231, &v219, &v243);
              v210 = 0;
              if (v184)
              {
                sub_213FDC6D0(v182, v183);

                sub_213FB2DF4(v214, &qword_27C907C08, &qword_21473BF00);
                sub_213FB2DF4(v259, &qword_27C907C00, &unk_2146F4D60);
                sub_213FB2DF4(v260, &qword_27C907C00, &unk_2146F4D60);
                sub_213FB2DF4(v261, &qword_27C907C00, &unk_2146F4D60);
                sub_213FB2DF4(v262, &qword_27C907C00, &unk_2146F4D60);
                (*(v216 + 8))(v209, v217);
                v189 = v200;
                v190 = *(v200 + 1);
                v191 = *(v200 + 2);
                v192 = *(v200 + 3);

                sub_213FDC6D0(v191, v192);
                *v189 = v181;
                *(v189 + 1) = v180;
                v193 = v201;
                *v201 = 0;
                v193[1] = 0;
                v189[32] = v218;
                v151 = v212;
                goto LABEL_35;
              }

              sub_214031C4C();
              v194 = swift_allocError();
              strcpy(v195, "BIAPayload.id");
              *(v195 + 7) = -4864;
              *(v195 + 2) = 0xD00000000000001CLL;
              *(v195 + 3) = v207;
              v210 = v194;
              swift_willThrow();
              sub_213FB2DF4(v214, &qword_27C907C08, &qword_21473BF00);
              sub_213FB2DF4(v259, &qword_27C907C00, &unk_2146F4D60);
              sub_213FB2DF4(v260, &qword_27C907C00, &unk_2146F4D60);
              sub_213FB2DF4(v261, &qword_27C907C00, &unk_2146F4D60);
              sub_213FB2DF4(v262, &qword_27C907C00, &unk_2146F4D60);
              (*(v216 + 8))(v209, v217);
              v196 = v200;
              v197 = *(v200 + 1);
              v198 = *(v200 + 2);
              v199 = *(v200 + 3);

              sub_213FDC6D0(v198, v199);
              *v196 = v181;
              *(v196 + 1) = v180;
              *(v196 + 2) = v182;
              *(v196 + 3) = v183;
              v196[32] = v218;
              v141 = v212;
            }

            else
            {
              sub_214031C4C();
              swift_allocError();
              *v185 = 0xD000000000000013;
              v185[1] = 0x800000021478EF20;
              v185[2] = 0xD00000000000001CLL;
              v185[3] = v207;
              swift_willThrow();

              sub_213FB2DF4(v214, &qword_27C907C08, &qword_21473BF00);
              sub_213FB2DF4(v259, &qword_27C907C00, &unk_2146F4D60);
              sub_213FB2DF4(v260, &qword_27C907C00, &unk_2146F4D60);
              sub_213FB2DF4(v261, &qword_27C907C00, &unk_2146F4D60);
              sub_213FB2DF4(v262, &qword_27C907C00, &unk_2146F4D60);
              (*(v216 + 8))(v209, v217);
              v141 = v212;
              v186 = v212[121];
              v187 = v212[122];
              v188 = v212[123];

              sub_213FDC6D0(v187, v188);
              *(v141 + 960) = v215;
              *(v141 + 968) = v158;
              *(v141 + 976) = v159;
              *(v141 + 984) = v160;
              *(v141 + 992) = v218;
            }

LABEL_32:
            sub_214693C18(v141, type metadata accessor for BIAPayload);
            return __swift_destroy_boxed_opaque_existential_1(v263);
          }

          sub_214031C4C();
          swift_allocError();
          *v169 = 0xD000000000000010;
          v169[1] = 0x800000021478EF00;
          v170 = v207;
          v169[2] = 0xD00000000000001CLL;
          v169[3] = v170;
          swift_willThrow();
        }

        sub_213FB2DF4(v214, &qword_27C907C08, &qword_21473BF00);
        sub_213FB2DF4(v259, &qword_27C907C00, &unk_2146F4D60);
        sub_213FB2DF4(v260, &qword_27C907C00, &unk_2146F4D60);
        sub_213FB2DF4(v261, &qword_27C907C00, &unk_2146F4D60);
        sub_213FB2DF4(v262, &qword_27C907C00, &unk_2146F4D60);
        (*(v216 + 8))(v209, v217);
        v141 = v212;
        v171 = v212[116];
        v172 = v212[117];
        v173 = v212[118];

        sub_213FDC6D0(v172, v173);
        *(v141 + 920) = v210;
        *(v141 + 928) = v128;
        *(v141 + 936) = v129;
        *(v141 + 944) = v130;
        *(v141 + 952) = v206;
        goto LABEL_32;
      }

      sub_214031C4C();
      swift_allocError();
      *v140 = 0xD000000000000016;
      v140[1] = v121;
      v140[2] = 0xD00000000000001CLL;
      v140[3] = v207;
      swift_willThrow();
    }

    sub_213FB2DF4(v214, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v259, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v260, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v261, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v262, &qword_27C907C00, &unk_2146F4D60);
    (*(v216 + 8))(v209, v25);
    v141 = v212;
    v142 = v212[1];
    v143 = v212[2];
    v144 = v212[3];

    sub_213FDC6D0(v143, v144);
    *v141 = v206;
    *(v141 + 8) = v103;
    v145 = v203;
    *(v141 + 16) = v204;
    *(v141 + 24) = v145;
    *(v141 + 32) = v205;
    goto LABEL_32;
  }

  memset(v262, 0, 272);
  v262[17] = 0x1FFFFFFFEuLL;
  *(&v262[18] + 8) = 0uLL;
  *(&v262[19] + 8) = 0uLL;
  *(&v262[20] + 8) = 0uLL;
  *(&v262[21] + 8) = 0uLL;
  *(&v262[22] + 8) = 0uLL;
  *(&v262[23] + 8) = 0uLL;
  *(&v262[24] + 8) = 0uLL;
  *(&v262[25] + 8) = 0uLL;
  *(&v262[26] + 8) = 0uLL;
  memset(v261, 0, 272);
  *&v261[17] = 0x1FFFFFFFELL;
  v26 = type metadata accessor for BIAUserInteractionParadigm(0);
  *(&v261[17] + 8) = 0u;
  *(&v261[18] + 8) = 0u;
  *(&v261[19] + 8) = 0u;
  *(&v261[20] + 8) = 0u;
  *(&v261[21] + 8) = 0u;
  *(&v261[22] + 8) = 0u;
  *(&v261[23] + 8) = 0u;
  *(&v261[24] + 8) = 0u;
  *(&v261[25] + 8) = 0u;
  *(&v261[26] + 8) = 0u;
  v27 = v215;
  (*(*(v26 - 8) + 56))(v215, 1, 1, v26);
  LOBYTE(v260[0]) = 6;
  v212 = sub_2146DA0F8();
  v214 = v37;
  v258 = 7;
  sub_2146900F0();
  sub_2146DA0C8();
  v209 = v11;
  *&v259[32] = v260[2];
  *&v259[48] = v260[3];
  *&v259[64] = v260[4];
  v259[80] = v260[5];
  *v259 = v260[0];
  *&v259[16] = v260[1];
  v38 = v218;
  sub_213FB2E54(v262, (v218 + 40), &qword_27C907C00, &unk_2146F4D60);
  sub_213FB2E54(v261, v38 + 480, &qword_27C907C00, &unk_2146F4D60);
  sub_213FB2E54(v27, v38 + v12[9], &qword_27C907C08, &qword_21473BF00);
  sub_214409FCC(&v243);
  v39 = v244;
  DWORD2(v208) = v245;
  sub_21440A3C0(&v231);
  v207 = *(&v232 + 1);
  *&v208 = v232;
  LODWORD(v206) = v233;
  sub_21440A7B4(&v219);
  v40 = v220;
  v210 = 0;
  v41 = v221;
  sub_21440ABA8(&v255);
  v42 = v257;
  *v38 = v243;
  *(v38 + 16) = v39;
  *(v38 + 32) = BYTE8(v208);
  *(v38 + 920) = v231;
  v43 = v207;
  *(v38 + 936) = v208;
  *(v38 + 944) = v43;
  *(v38 + 952) = v206;
  *(v38 + 960) = v219;
  *(v38 + 976) = v40;
  *(v38 + 992) = v41;
  v44 = v38 + v12[10];
  v45 = v256;
  *v44 = v255;
  *(v44 + 16) = v45;
  *(v44 + 32) = v42;
  v46 = v38 + v12[11];
  v47 = *&v259[48];
  *(v46 + 32) = *&v259[32];
  *(v46 + 48) = v47;
  *(v46 + 64) = *&v259[64];
  *(v46 + 80) = v259[80];
  v48 = *&v259[16];
  *v46 = *v259;
  *(v46 + 16) = v48;
  v50 = *v38;
  v49 = *(v38 + 8);
  v51 = *(v38 + 16);
  v52 = *(v38 + 24);
  LODWORD(v46) = *(v38 + 32);
  v231 = 0uLL;
  DWORD2(v208) = v46;
  LOBYTE(v219) = v46;
  *&v243 = 0xD000000000000016;
  v206 = 0x800000021478EEE0;
  *(&v243 + 1) = 0x800000021478EEE0;
  *&v244 = 0xD00000000000001CLL;
  *(&v244 + 1) = 0x800000021478A360;

  v207 = v52;
  *&v208 = v51;
  sub_213FDC9D0(v51, v52);
  v53 = v210;
  v210 = v50;
  v54 = v50(&v231, &v219, &v243);
  if (v53)
  {

    v55 = v217;
LABEL_17:
    sub_213FB2DF4(v215, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v261, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v262, &qword_27C907C00, &unk_2146F4D60);
    (*(v216 + 8))(v209, v55);
    v71 = *(v38 + 8);
    v72 = *(v38 + 16);
    v73 = *(v38 + 24);

    sub_213FDC6D0(v72, v73);
    *v38 = v210;
    *(v38 + 8) = v49;
    v74 = v207;
    *(v38 + 16) = v208;
    *(v38 + 24) = v74;
    *(v38 + 32) = BYTE8(v208);
LABEL_18:
    sub_214693C18(v38, type metadata accessor for BIAPayload);
    return __swift_destroy_boxed_opaque_existential_1(v263);
  }

  v204 = 0xD000000000000016;
  v205 = 0x800000021478A360;
  v59 = v206;
  v55 = v217;
  if ((v54 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v70 = v204;
    v70[1] = v59;
    v70[2] = 0xD00000000000001CLL;
    v70[3] = v205;
    swift_willThrow();

    goto LABEL_17;
  }

  v204 = v44;
  sub_213FDC6D0(v208, v207);
  v60 = v205;

  v61 = *(v38 + 8);
  v62 = *(v38 + 16);
  v63 = *(v38 + 24);

  sub_213FDC6D0(v62, v63);
  *v38 = v210;
  *(v38 + 8) = v49;
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = BYTE8(v208);
  v64 = *(v38 + 920);
  v65 = *(v38 + 928);
  v66 = *(v38 + 936);
  v67 = *(v38 + 944);
  v68 = *(v38 + 952);
  v231 = 0uLL;
  LODWORD(v210) = v68;
  LOBYTE(v219) = v68;
  *&v243 = 0xD000000000000010;
  *(&v243 + 1) = 0x800000021478EF00;
  *&v244 = 0xD00000000000001CLL;
  *(&v244 + 1) = v60;

  *&v208 = v66;
  sub_213FDC9D0(v66, v67);
  *(&v208 + 1) = v64;
  v69 = v64(&v231, &v219, &v243);
  if ((v69 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v90 = 0xD000000000000010;
    v90[1] = 0x800000021478EF00;
    v91 = v205;
    v90[2] = 0xD00000000000001CLL;
    v90[3] = v91;
    swift_willThrow();

    sub_213FB2DF4(v215, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v261, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v262, &qword_27C907C00, &unk_2146F4D60);
    (*(v216 + 8))(v209, v217);
    v92 = *(v38 + 928);
    v93 = *(v38 + 936);
    v94 = *(v38 + 944);

    sub_213FDC6D0(v93, v94);
    v95 = v208;
    *(v38 + 920) = *(&v208 + 1);
    *(v38 + 928) = v65;
    *(v38 + 936) = v95;
    *(v38 + 944) = v67;
    *(v38 + 952) = v210;
    goto LABEL_18;
  }

  sub_213FDC6D0(v208, v67);
  v76 = v205;

  v77 = *(v38 + 928);
  v78 = *(v38 + 936);
  v79 = *(v38 + 944);

  sub_213FDC6D0(v78, v79);
  *(v38 + 920) = *(&v208 + 1);
  *(v38 + 928) = v65;
  *(v38 + 936) = 0;
  *(v38 + 944) = 0;
  *(v38 + 952) = v210;
  v80 = *(v38 + 960);
  v81 = *(v38 + 968);
  v82 = *(v38 + 976);
  v83 = *(v38 + 984);
  v84 = *(v38 + 992);
  v231 = 0uLL;
  LODWORD(v210) = v84;
  LOBYTE(v219) = v84;
  *&v243 = 0xD000000000000013;
  *(&v243 + 1) = 0x800000021478EF20;
  *&v244 = 0xD00000000000001CLL;
  *(&v244 + 1) = v76;

  *&v208 = v83;
  *(&v208 + 1) = v82;
  v85 = v83;
  v86 = v80;
  sub_213FDC9D0(v82, v85);
  v87 = v80(&v231, &v219, &v243);
  if ((v87 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v134 = 0xD000000000000013;
    v134[1] = 0x800000021478EF20;
    v135 = v205;
    v134[2] = 0xD00000000000001CLL;
    v134[3] = v135;
    swift_willThrow();

    sub_213FB2DF4(v215, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v261, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v262, &qword_27C907C00, &unk_2146F4D60);
    (*(v216 + 8))(v209, v217);
    v136 = *(v38 + 968);
    v137 = *(v38 + 976);
    v138 = *(v38 + 984);

    sub_213FDC6D0(v137, v138);
    *(v38 + 960) = v86;
    *(v38 + 968) = v81;
    v139 = v208;
    *(v38 + 976) = *(&v208 + 1);
    *(v38 + 984) = v139;
    *(v38 + 992) = v210;
    goto LABEL_18;
  }

  sub_213FDC6D0(*(&v208 + 1), v208);
  v110 = v205;

  v111 = *(v38 + 968);
  v112 = *(v38 + 976);
  v113 = *(v38 + 984);

  sub_213FDC6D0(v112, v113);
  *(v38 + 960) = v80;
  *(v38 + 968) = v81;
  *(v38 + 976) = 0;
  *(v38 + 984) = 0;
  *(v38 + 992) = v210;
  v115 = *v204;
  v114 = *(v204 + 8);
  v116 = *(v204 + 16);
  v117 = *(v204 + 24);
  v118 = *(v204 + 32);
  *&v231 = v212;
  *(&v231 + 1) = v214;
  DWORD2(v208) = v118;
  LOBYTE(v219) = v118;
  strcpy(&v243, "BIAPayload.id");
  HIWORD(v243) = -4864;
  *&v244 = 0xD00000000000001CLL;
  *(&v244 + 1) = v110;

  sub_213FDC9D0(v116, v117);
  v119 = v115;
  v120 = v115(&v231, &v219, &v243);
  v210 = 0;
  if ((v120 & 1) == 0)
  {
    sub_214031C4C();
    v163 = swift_allocError();
    strcpy(v164, "BIAPayload.id");
    *(v164 + 7) = -4864;
    *(v164 + 2) = 0xD00000000000001CLL;
    *(v164 + 3) = v205;
    v210 = v163;
    swift_willThrow();

    sub_213FB2DF4(v215, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v261, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v262, &qword_27C907C00, &unk_2146F4D60);
    (*(v216 + 8))(v209, v217);
    v165 = v204;
    v166 = *(v204 + 8);
    v167 = *(v204 + 16);
    v168 = *(v204 + 24);

    sub_213FDC6D0(v167, v168);
    *v165 = v119;
    *(v165 + 8) = v114;
    *(v165 + 16) = v116;
    *(v165 + 24) = v117;
    *(v165 + 32) = BYTE8(v208);
    goto LABEL_18;
  }

  sub_213FDC6D0(v116, v117);

  sub_213FB2DF4(v215, &qword_27C907C08, &qword_21473BF00);
  sub_213FB2DF4(v261, &qword_27C907C00, &unk_2146F4D60);
  sub_213FB2DF4(v262, &qword_27C907C00, &unk_2146F4D60);
  (*(v216 + 8))(v209, v217);
  v146 = v204;
  v147 = *(v204 + 8);
  v148 = *(v204 + 16);
  v149 = *(v204 + 24);

  sub_213FDC6D0(v148, v149);
  *v146 = v119;
  *(v146 + 8) = v114;
  v150 = v214;
  *(v146 + 16) = v212;
  *(v146 + 24) = v150;
  *(v146 + 32) = BYTE8(v208);
  v151 = v38;
LABEL_35:
  sub_214693C78(v151, v211, type metadata accessor for BIAPayload);
  sub_214693C78(v211, v213, type metadata accessor for BIAPayload);
  return __swift_destroy_boxed_opaque_existential_1(v263);
}

unint64_t sub_21469005C()
{
  result = qword_27C917BB8;
  if (!qword_27C917BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917BB8);
  }

  return result;
}

double sub_2146900B0(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0x8000000000000000;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return result;
}

unint64_t sub_2146900F0()
{
  result = qword_27C917BC8;
  if (!qword_27C917BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917BC8);
  }

  return result;
}

uint64_t BIAPayload.encode(to:configuration:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917BD0, &unk_21477C720);
  v115 = *(v5 - 8);
  v6 = *(v115 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - v10;
  v12 = type metadata accessor for BIAPayload(0);
  v13 = v3 + v12[11];
  v14 = *(v13 + 3);
  v109 = *(v13 + 2);
  v110 = v14;
  v111 = *(v13 + 4);
  v112 = v13[80];
  v15 = *(v13 + 1);
  v108[0] = *v13;
  v108[1] = v15;
  v113[3] = v14;
  v113[4] = v111;
  v113[1] = v15;
  v113[2] = v109;
  v114 = v112;
  v113[0] = v108[0];
  if (*(&v108[0] + 1))
  {
    v16 = *(v13 + 3);
    v99[2] = *(v13 + 2);
    v99[3] = v16;
    v99[4] = *(v13 + 4);
    v100 = v13[80];
    v17 = *(v13 + 1);
    v99[0] = *v13;
    v99[1] = v17;
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_214690B1C(v99, &v83);
    sub_21469005C();
    sub_2146DAA28();
    v19 = v3 + v12[10];
    v20 = *(v19 + 3);
    if (v20 != 1)
    {
      v21 = *(v19 + 2);
      LOBYTE(v83) = 6;

      sub_2146DA2B8();
      if (v2)
      {
        (*(v115 + 8))(v11, v5);
        sub_213FDC6D0(v21, v20);
      }

      else
      {
        sub_213FDC6D0(v21, v20);
        sub_214320DF0(v113, &v83);
        LOBYTE(v67) = 7;
        sub_214690B78();
        sub_2146DA2A8();
        (*(v115 + 8))(v11, v5);
      }

      return sub_213FB2DF4(v108, &qword_27C907C40, &qword_2146F4D78);
    }

LABEL_34:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21469005C();
  sub_2146DAA28();
  v23 = v3[3];
  if (v23 == 1)
  {
    goto LABEL_34;
  }

  v24 = v3[2];
  LOBYTE(v99[0]) = 0;

  sub_2146DA2B8();
  if (v2)
  {
    (*(v115 + 8))(v9, v5);
    return sub_213FDC6D0(v24, v23);
  }

  sub_213FDC6D0(v24, v23);
  v25 = v3[118];
  if (v25 == 1)
  {
    goto LABEL_34;
  }

  v26 = v3[117];
  LOBYTE(v99[0]) = 1;

  sub_2146DA2B8();
  sub_213FDC6D0(v26, v25);
  v27 = v3[123];
  if (v27 == 1)
  {
    goto LABEL_34;
  }

  v28 = v3[122];
  LOBYTE(v99[0]) = 2;

  sub_2146DA2B8();
  sub_213FDC6D0(v28, v27);
  sub_213FB2E54((v3 + 5), v99, &qword_27C907C00, &unk_2146F4D60);
  if (v101 >> 1 != 0xFFFFFFFF || (v103 | v102) > 1 || v105 & 0xFFFFFFFFFFFFFEFELL | v104 & 0xFFFFFFFFFFFF00FELL || (v107 | v106) >= 2)
  {
    sub_213FB2E54(v99, &v67, &qword_27C904858, &qword_214736F00);
    if (!*(&v68 + 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    v95 = v79;
    v96 = v80;
    v97 = v81;
    v98 = v82;
    v91 = v75;
    v92 = v76;
    v93 = v77;
    v94 = v78;
    v87 = v71;
    v88 = v72;
    v89 = v73;
    v90 = v74;
    v83 = v67;
    v84 = v68;
    v85 = v69;
    v86 = v70;
    sub_214690AC8(v99);
    LOWORD(v55) = 0;
    sub_2140615D0(&v55);
    v51 = v63;
    v52 = v64;
    v53 = v65;
    v54 = v66;
    v47 = v59;
    v48 = v60;
    v49 = v61;
    v50 = v62;
    v43 = v55;
    v44 = v56;
    v45 = v57;
    v46 = v58;
    v30 = sub_21463C734(&v43);
    v31 = v32;
    sub_21406D2CC(&v83);
  }

  else
  {
    sub_213FB2DF4(v99, &qword_27C907C00, &unk_2146F4D60);
    v30 = 0;
    v31 = 0xF000000000000000;
  }

  sub_213FB2E54((v3 + 60), v99, &qword_27C907C00, &unk_2146F4D60);
  if (v101 >> 1 != 0xFFFFFFFF || (v103 | v102) > 1 || v105 & 0xFFFFFFFFFFFFFEFELL | v104 & 0xFFFFFFFFFFFF00FELL || (v107 | v106) >= 2)
  {
    sub_213FB2E54(v99, &v67, &qword_27C904858, &qword_214736F00);
    if (*(&v68 + 1))
    {
      v95 = v79;
      v96 = v80;
      v97 = v81;
      v98 = v82;
      v91 = v75;
      v92 = v76;
      v93 = v77;
      v94 = v78;
      v87 = v71;
      v88 = v72;
      v89 = v73;
      v90 = v74;
      v83 = v67;
      v84 = v68;
      v85 = v69;
      v86 = v70;
      sub_214690AC8(v99);
      LOWORD(v55) = 0;
      sub_2140615D0(&v55);
      v51 = v63;
      v52 = v64;
      v53 = v65;
      v54 = v66;
      v47 = v59;
      v48 = v60;
      v49 = v61;
      v50 = v62;
      v43 = v55;
      v44 = v56;
      v45 = v57;
      v46 = v58;
      v34 = sub_21463C734(&v43);
      v33 = v35;
      v41 = v34;
      sub_21406D2CC(&v83);
      goto LABEL_27;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  sub_213FB2DF4(v99, &qword_27C907C00, &unk_2146F4D60);
  v41 = 0;
  v33 = 0xF000000000000000;
LABEL_27:
  v42 = v33;
  v40 = v30;
  if (v31 >> 60 != 15)
  {
    sub_21402D9F8(v30, v31);
    sub_2146D8A48();
    sub_213FDC6BC(v30, v31);
  }

  LOBYTE(v99[0]) = 3;
  sub_2146DA2B8();

  v36 = v42;
  if (v42 >> 60 != 15)
  {
    v37 = v41;
    sub_21402D9F8(v41, v42);
    sub_2146D8A48();
    sub_213FDC6BC(v37, v36);
  }

  LOBYTE(v99[0]) = 4;
  sub_2146DA2B8();

  v38 = v12[9];
  LOBYTE(v99[0]) = 5;
  type metadata accessor for BIAUserInteractionParadigm(0);
  sub_2146960E0(&qword_27C917BD8, type metadata accessor for BIAUserInteractionParadigm);
  sub_2146DA298();
  (*(v115 + 8))(v9, v5);
  sub_213FDC6BC(v40, v31);
  return sub_213FDC6BC(v41, v42);
}

unint64_t sub_214690B78()
{
  result = qword_27C917BE0;
  if (!qword_27C917BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917BE0);
  }

  return result;
}

uint64_t sub_214690C24@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2146DA098();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_214690C7C(uint64_t a1)
{
  v2 = sub_214690EF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214690CB8(uint64_t a1)
{
  v2 = sub_214690EF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214690CF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917BE8, &qword_21477C730);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214690EF4();
  sub_2146DAA08();
  if (!v2)
  {
    if (sub_2146DA248())
    {
      sub_214320D9C();
      sub_2146DA1C8();
      (*(v6 + 8))(v9, v5);
      v13[2] = v17;
      v13[3] = v18;
      v13[4] = v19;
      v14 = v20;
      v13[0] = v15;
      v13[1] = v16;
      sub_214320DF0(v13, a2);
    }

    else
    {
      sub_214690F48();
      swift_allocError();
      *v11 = 3;
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_214690EF4()
{
  result = qword_27C917BF0;
  if (!qword_27C917BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917BF0);
  }

  return result;
}

unint64_t sub_214690F48()
{
  result = qword_27C917BF8;
  if (!qword_27C917BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917BF8);
  }

  return result;
}

uint64_t sub_214690F9C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917C00, &qword_21477C738);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *v2;
  v10 = *(v2 + 3);
  v15 = *(v2 + 4);
  HIDWORD(v14) = v2[40];
  v11 = *(v2 + 8);
  v17 = *(v2 + 9);
  v18 = v11;
  v16 = v2[80];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214690EF4();
  sub_2146DAA28();
  v19 = v9;
  v20 = *(v2 + 8);
  v21 = v10;
  v22 = v15;
  v23 = BYTE4(v14);
  v24 = *(v2 + 3);
  v25 = v18;
  v26 = v17;
  v27 = v16;
  sub_214320CF4();
  sub_2146DA388();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_214691170@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214696B40();
  *a2 = result;
  return result;
}

uint64_t sub_2146911A0()
{
  v1 = 1701736302;
  v2 = 0x736E6F6974706FLL;
  if (*v0 != 2)
  {
    v2 = 0x68437972616E6962;
  }

  if (*v0)
  {
    v1 = 0x656C676E6973;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_214691218@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214696B40();
  *a1 = result;
  return result;
}

uint64_t sub_214691240(uint64_t a1)
{
  v2 = sub_214691B58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21469127C(uint64_t a1)
{
  v2 = sub_214691B58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2146912B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F30, &unk_21477C740);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v70 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v69 = &v64 - v7;
  v71 = type metadata accessor for BIABinaryChoice(0);
  v8 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v78 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F10, &qword_21473C4D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v72 = &v64 - v12;
  v77 = type metadata accessor for BIASingleAction(0);
  v13 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v76 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917C08, &unk_21477C750);
  v75 = *(v79 - 8);
  v15 = *(v75 + 64);
  MEMORY[0x28223BE20](v79);
  v17 = &v64 - v16;
  v74 = type metadata accessor for BIAUserInteractionParadigm(0);
  v18 = *(*(v74 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v74);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v64 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v64 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v64 - v28;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214691B58();
  v31 = v80;
  sub_2146DAA08();
  if (v31)
  {
    goto LABEL_22;
  }

  v65 = v24;
  v80 = 0;
  v66 = v27;
  v32 = v76;
  v64 = v21;
  v67 = v29;
  v68 = a1;
  v33 = v75;
  v81 = 1;
  v35 = v78;
  v34 = v79;
  v36 = v17;
  if (sub_2146DA248())
  {
    v81 = 1;
    sub_2146960E0(&qword_27C917C28, type metadata accessor for BIASingleAction);
    v37 = v80;
    sub_2146DA0D8();
    if (!v37)
    {
      v38 = v72;
      sub_213FB2E54(v32, v72, &qword_27C912F10, &qword_21473C4D0);
      v39 = type metadata accessor for BIAUserAction(0);
      if ((*(*(v39 - 8) + 48))(v38, 1, v39) != 1)
      {
        sub_214693C18(v32, type metadata accessor for BIASingleAction);
        (*(v33 + 8))(v36, v34);
        v40 = v38;
        v41 = v66;
        sub_214693C78(v40, v66, type metadata accessor for BIAUserAction);
        swift_storeEnumTagMultiPayload();
        v42 = v41;
LABEL_16:
        v59 = v67;
        sub_214693C78(v42, v67, type metadata accessor for BIAUserInteractionParadigm);
LABEL_17:
        v60 = v68;
        sub_214693C78(v59, v73, type metadata accessor for BIAUserInteractionParadigm);
        v61 = v60;
        return __swift_destroy_boxed_opaque_existential_1(v61);
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v81 = 2;
  if ((sub_2146DA248() & 1) == 0)
  {
    v81 = 3;
    v48 = sub_2146DA248();
    v49 = v80;
    if (v48)
    {
      v81 = 3;
      sub_2146960E0(&qword_27C917C18, type metadata accessor for BIABinaryChoice);
      sub_2146DA0D8();
      if (!v49)
      {
        v50 = v69;
        sub_213FB2E54(v35, v69, &qword_27C912F30, &unk_21477C740);
        v51 = type metadata accessor for BIABinaryChoiceButton(0);
        v52 = *(v51 - 8);
        v53 = *(v52 + 48);
        v80 = (v52 + 48);
        if (v53(v50, 1, v51) != 1)
        {
          v54 = v64;
          sub_214693C78(v50, v64, type metadata accessor for BIABinaryChoiceButton);
          v55 = v35 + *(v71 + 20);
          v56 = v35;
          v57 = v70;
          sub_213FB2E54(v55, v70, &qword_27C912F30, &unk_21477C740);
          if (v53(v57, 1, v51) != 1)
          {
            v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CC38, &qword_2146F6E30) + 48);
            sub_214693C18(v56, type metadata accessor for BIABinaryChoice);
            (*(v33 + 8))(v36, v34);
            sub_214693C78(v57, v54 + v58, type metadata accessor for BIABinaryChoiceButton);
            swift_storeEnumTagMultiPayload();
            v42 = v54;
            goto LABEL_16;
          }

          goto LABEL_27;
        }

LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      v81 = 0;
      if (sub_2146DA248())
      {
        (*(v33 + 8))(v17, v34);
        v59 = v67;
        swift_storeEnumTagMultiPayload();
        goto LABEL_17;
      }

      sub_214690F48();
      swift_allocError();
      *v62 = 3;
      swift_willThrow();
    }

    goto LABEL_21;
  }

  v85 = 2;
  sub_214691BAC();
  v43 = v80;
  sub_2146DA0D8();
  if (v43)
  {
LABEL_21:
    (*(v33 + 8))(v17, v34);
    a1 = v68;
LABEL_22:
    v61 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v44 = v83;
  if (v83)
  {
    v80 = v36;
    v45 = v84;
    v46 = v65;
    if (v84)
    {
      v47 = v82;

      (*(v33 + 8))(v80, v34);
      *v46 = v47;
      v46[1] = v44;
      v46[2] = v45;
      swift_storeEnumTagMultiPayload();
      v42 = v46;
      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_28:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_214691B58()
{
  result = qword_27C917C10;
  if (!qword_27C917C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917C10);
  }

  return result;
}

unint64_t sub_214691BAC()
{
  result = qword_27C917C20;
  if (!qword_27C917C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917C20);
  }

  return result;
}

uint64_t sub_214691C00(void *a1)
{
  v52 = type metadata accessor for BIABinaryChoice(0);
  v2 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v55 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BIABinaryChoiceButton(0);
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v53 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v46 - v8;
  v49 = type metadata accessor for BIASingleAction(0);
  v9 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BIAUserAction(0);
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = *(v47 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BIAUserInteractionParadigm(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = (&v46 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917C30, &unk_21477C760);
  v59 = *(v23 - 8);
  v60 = v23;
  v24 = *(v59 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v46 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214691B58();
  v58 = v26;
  sub_2146DAA28();
  sub_21469239C(v56, v22, type metadata accessor for BIAUserInteractionParadigm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CC38, &qword_2146F6E30) + 48);
      v34 = v54;
      sub_214693C78(v22, v54, type metadata accessor for BIABinaryChoiceButton);
      v35 = v53;
      sub_214693C78(v22 + v33, v53, type metadata accessor for BIABinaryChoiceButton);
      v36 = v55;
      sub_21469239C(v34, v55, type metadata accessor for BIABinaryChoiceButton);
      v37 = v51;
      v38 = *(v50 + 56);
      v38(v36, 0, 1, v51);
      v39 = *(v52 + 20);
      sub_21469239C(v35, v36 + v39, type metadata accessor for BIABinaryChoiceButton);
      v38(v36 + v39, 0, 1, v37);
      LOBYTE(v61) = 3;
      sub_2146960E0(&qword_27C917C38, type metadata accessor for BIABinaryChoice);
      v29 = v60;
      v30 = v58;
      sub_2146DA2A8();
      sub_214693C18(v36, type metadata accessor for BIABinaryChoice);
      sub_214693C18(v35, type metadata accessor for BIABinaryChoiceButton);
      v32 = v34;
      v31 = type metadata accessor for BIABinaryChoiceButton;
      goto LABEL_6;
    }

    swift_storeEnumTagMultiPayload();
    LOBYTE(v61) = 0;
    sub_2146960E0(&qword_27C907C78, type metadata accessor for BIAUserInteractionParadigm);
    v42 = v60;
    v43 = v58;
    sub_2146DA388();
    sub_214693C18(v20, type metadata accessor for BIAUserInteractionParadigm);
    return (*(v59 + 8))(v43, v42);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_214693C78(v22, v15, type metadata accessor for BIAUserAction);
      sub_21469239C(v15, v11, type metadata accessor for BIAUserAction);
      (*(v47 + 56))(v11, 0, 1, v48);
      LOBYTE(v61) = 1;
      sub_2146960E0(&qword_27C917C48, type metadata accessor for BIASingleAction);
      v29 = v60;
      v30 = v58;
      sub_2146DA2A8();
      sub_214693C18(v11, type metadata accessor for BIASingleAction);
      v31 = type metadata accessor for BIAUserAction;
      v32 = v15;
LABEL_6:
      sub_214693C18(v32, v31);
      return (*(v59 + 8))(v30, v29);
    }

    v41 = v57;
    sub_214175C98(*v22, v22[1], v22[2], &v61);
    if (v41)
    {
      return (*(v59 + 8))(v58, v60);
    }

    else
    {
      v62 = 2;
      sub_214692348();
      v44 = v60;
      v45 = v58;
      sub_2146DA2A8();
      (*(v59 + 8))(v45, v44);
    }
  }
}

unint64_t sub_214692348()
{
  result = qword_27C917C40;
  if (!qword_27C917C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917C40);
  }

  return result;
}

uint64_t sub_21469239C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_214692440()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_214692484(uint64_t a1)
{
  v2 = sub_214692AD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2146924C0(uint64_t a1)
{
  v2 = sub_214692AD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BIAUserAction.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v57 = &v47 - v5;
  v6 = sub_2146D8958();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v51 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917C50, &qword_21477C770);
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - v13;
  v15 = type metadata accessor for BIAUserAction(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v47 - v21);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214692AD8();
  v26 = v58;
  sub_2146DAA08();
  if (v26)
  {
    goto LABEL_9;
  }

  v47 = v19;
  v48 = v22;
  v27 = v57;
  v49 = v24;
  v58 = a1;
  v28 = v55;
  v29 = v56;
  v30 = *(sub_2146DA238() + 16);

  if (!v30)
  {
    sub_214690F48();
    swift_allocError();
    v34 = 3;
    goto LABEL_7;
  }

  LOBYTE(v59) = 0;
  if ((sub_2146DA248() & 1) == 0)
  {
    LOBYTE(v59) = 1;
    v37 = (v28 + 8);
    if ((sub_2146DA248() & 1) == 0)
    {
      sub_214690F48();
      swift_allocError();
      *v42 = 0;
      swift_willThrow();
      (*v37)(v14, v29);
      goto LABEL_8;
    }

    v67 = 1;
    sub_214320BF8();
    sub_2146DA1C8();
    (*v37)(v14, v29);
    v38 = v64;
    v39 = v47;
    *(v47 + 4) = v63;
    *(v39 + 5) = v38;
    *(v39 + 6) = v65;
    *(v39 + 112) = v66;
    v40 = v60;
    *v39 = v59;
    *(v39 + 1) = v40;
    v41 = v62;
    *(v39 + 2) = v61;
    *(v39 + 3) = v41;
LABEL_15:
    swift_storeEnumTagMultiPayload();
    v45 = v39;
    v46 = v49;
    sub_214693C78(v45, v49, type metadata accessor for BIAUserAction);
    sub_214693C78(v46, v52, type metadata accessor for BIAUserAction);
    v35 = v58;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  LOBYTE(v59) = 0;
  sub_2146DA168();
  sub_2146D8928();

  v32 = v53;
  v31 = v54;
  if ((*(v53 + 48))(v27, 1, v54) != 1)
  {
    v43 = v51;
    (*(v32 + 32))(v51, v27, v31);
    v44 = v50;
    (*(v32 + 16))(v50, v43, v31);
    sub_21417140C(v44, v48);
    (*(v32 + 8))(v43, v31);
    (*(v28 + 8))(v14, v29);
    v39 = v48;
    goto LABEL_15;
  }

  sub_213FB2DF4(v27, &unk_27C9131A0, &unk_2146E9D10);
  sub_214690F48();
  swift_allocError();
  v34 = 2;
LABEL_7:
  *v33 = v34;
  swift_willThrow();
  (*(v28 + 8))(v14, v29);
LABEL_8:
  a1 = v58;
LABEL_9:
  v35 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

unint64_t sub_214692AD8()
{
  result = qword_27C917C58;
  if (!qword_27C917C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917C58);
  }

  return result;
}

uint64_t BIAUserAction.encode(to:configuration:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v35 - v4;
  v38 = sub_2146D8958();
  v41 = *(v38 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BIAURL(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BIAUserAction(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917C60, &unk_21477C778);
  v40 = *(v15 - 8);
  v16 = *(v40 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214692AD8();
  sub_2146DAA28();
  sub_21469239C(v39, v14, type metadata accessor for BIAUserAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *(v14 + 5);
    v21 = *(v14 + 3);
    v54 = *(v14 + 4);
    v55 = v20;
    v22 = *(v14 + 5);
    v56 = *(v14 + 6);
    v23 = *(v14 + 1);
    v51[0] = *v14;
    v51[1] = v23;
    v24 = *(v14 + 3);
    v26 = *v14;
    v25 = *(v14 + 1);
    v52 = *(v14 + 2);
    v53 = v24;
    v47 = v54;
    v48 = v22;
    v49 = *(v14 + 6);
    v43 = v26;
    v44 = v25;
    v57 = v14[112];
    v50 = v14[112];
    v45 = v52;
    v46 = v21;
    v42 = 1;
    sub_214320B50();
    sub_2146DA388();
    (*(v40 + 8))(v18, v15);
    return sub_2142F8368(v51);
  }

  else
  {
    v28 = v15;
    sub_214693C78(v14, v10, type metadata accessor for BIAURL);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
    v30 = v37;
    sub_213FB2E54(&v10[*(v29 + 28)], v37, &unk_27C9131A0, &unk_2146E9D10);
    v31 = v38;
    if ((*(v41 + 48))(v30, 1, v38) == 1)
    {
      sub_213FB2DF4(v30, &unk_27C9131A0, &unk_2146E9D10);
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      v32 = v41;
      v33 = v36;
      (*(v41 + 32))(v36, v30, v31);
      sub_2146D8868();
      (*(v32 + 8))(v33, v31);
      LOBYTE(v51[0]) = 0;
      sub_2146DA328();
      v34 = v40;

      sub_214693C18(v10, type metadata accessor for BIAURL);
      return (*(v34 + 8))(v18, v28);
    }
  }

  return result;
}

uint64_t sub_214693040(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6D614E6567616D69;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x6E6F69746361;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C6562616CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x6D614E6567616D69;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x6E6F69746361;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_214693140()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2146931E0()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_21469326C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214693308@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214696AF4();
  *a2 = result;
  return result;
}

void sub_214693338(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x6D614E6567616D69;
  if (v2 != 1)
  {
    v5 = 0x6E6F69746361;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6562616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_214693394@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214696AF4();
  *a1 = result;
  return result;
}

uint64_t sub_2146933BC(uint64_t a1)
{
  v2 = sub_214693BC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2146933F8(uint64_t a1)
{
  v2 = sub_214693BC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214693434@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = type metadata accessor for BIALabeledUserAction(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BIAUserAction(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917C68, &qword_21477C788);
  v79 = *(v11 - 8);
  v12 = *(v79 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v66 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_214693BC4();
  v17 = v80;
  sub_2146DAA08();
  if (!v17)
  {
    v18 = v3;
    v80 = v10;
    v19 = v79;
    v77 = v6;
    LOBYTE(v84) = 0;
    v20 = v14;
    v22 = v11;
    v21 = sub_2146DA168();
    v24 = v23;
    v76 = v21;
    LOBYTE(v84) = 1;
    v25 = sub_2146DA168();
    v27 = v26;
    v74 = v25;
    LOBYTE(v84) = 2;
    sub_2146960E0(&qword_27C917C78, type metadata accessor for BIAUserAction);
    v28 = v80;
    sub_2146DA0D8();
    v72 = v20;
    v73 = v27;
    v30 = v77;
    sub_21469239C(v28, &v77[*(v18 + 24)], type metadata accessor for BIAUserAction);
    sub_21440CDF0(&v84);
    v31 = v85;
    v75 = v84;
    v33 = v86;
    v32 = v87;
    LODWORD(v28) = v88;
    sub_21440D164(v82);
    v34 = v82[1];
    *(v30 + 40) = v82[0];
    v35 = v83;
    v36 = v75;
    *v30 = v75;
    *(v30 + 1) = v31;
    v67 = v33;
    *(v30 + 2) = v33;
    *(v30 + 3) = v32;
    v30[32] = v28;
    *(v30 + 56) = v34;
    v30[72] = v35;
    *&v82[0] = v76;
    *(&v82[0] + 1) = v24;
    v68 = v24;
    LODWORD(v71) = v28;
    v89 = v28;
    v37 = v36;
    v84 = 0xD00000000000001ALL;
    v85 = 0x800000021478F000;
    v86 = 0xD00000000000001CLL;
    v87 = 0x800000021478A360;
    v69 = v32;

    v70 = v31;
    v38 = v37(v82, &v89, &v84);
    v66 = 0x800000021478A360;
    v39 = v68;
    if (v38)
    {
      v40 = v66;

      v41 = v77;
      v42 = *(v77 + 1);
      v43 = *(v77 + 3);

      v44 = v70;
      *v41 = v75;
      *(v41 + 8) = v44;
      *(v41 + 16) = v76;
      *(v41 + 24) = v39;
      *(v41 + 32) = v71;
      v46 = *(v41 + 40);
      v45 = *(v41 + 48);
      v47 = *(v41 + 64);
      v70 = *(v41 + 56);
      v48 = *(v41 + 72);
      *&v82[0] = v74;
      *(&v82[0] + 1) = v73;
      LODWORD(v76) = v48;
      v89 = v48;
      v84 = 0xD00000000000001ELL;
      v85 = 0x800000021478F020;
      v86 = 0xD00000000000001CLL;
      v87 = v40;
      v71 = v47;

      v75 = v46;
      v49 = v46(v82, &v89, &v84);
      if (v49)
      {

        sub_214693C18(v80, type metadata accessor for BIAUserAction);
        (*(v19 + 8))(v72, v22);
        v57 = *(v41 + 48);
        v58 = *(v41 + 64);

        v59 = v74;
        *(v41 + 40) = v75;
        *(v41 + 48) = v45;
        v60 = v73;
        *(v41 + 56) = v59;
        *(v41 + 64) = v60;
        *(v41 + 72) = v76;
        sub_214693C78(v41, v78, type metadata accessor for BIALabeledUserAction);
        return __swift_destroy_boxed_opaque_existential_1(v81);
      }

      sub_214031C4C();
      swift_allocError();
      *v61 = 0xD00000000000001ELL;
      v61[1] = 0x800000021478F020;
      v62 = v66;
      v61[2] = 0xD00000000000001CLL;
      v61[3] = v62;
      swift_willThrow();

      sub_214693C18(v80, type metadata accessor for BIAUserAction);
      (*(v19 + 8))(v72, v22);
      v63 = *(v41 + 48);
      v52 = v41;
      v64 = *(v41 + 64);

      *(v41 + 40) = v75;
      *(v41 + 48) = v45;
      v65 = v71;
      *(v41 + 56) = v70;
      *(v41 + 64) = v65;
      *(v41 + 72) = v76;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v50 = 0xD00000000000001ALL;
      v50[1] = 0x800000021478F000;
      v51 = v66;
      v50[2] = 0xD00000000000001CLL;
      v50[3] = v51;
      swift_willThrow();

      sub_214693C18(v80, type metadata accessor for BIAUserAction);
      (*(v19 + 8))(v72, v22);
      v52 = v77;
      v53 = *(v77 + 1);
      v54 = *(v77 + 3);

      v55 = v70;
      *v52 = v75;
      *(v52 + 8) = v55;
      v56 = v69;
      *(v52 + 16) = v67;
      *(v52 + 24) = v56;
      *(v52 + 32) = v71;
    }

    sub_214693C18(v52, type metadata accessor for BIALabeledUserAction);
  }

  return __swift_destroy_boxed_opaque_existential_1(v81);
}

unint64_t sub_214693BC4()
{
  result = qword_27C917C70;
  if (!qword_27C917C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917C70);
  }

  return result;
}

uint64_t sub_214693C18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_214693C78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_214693CE0(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F10, &qword_21473C4D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917C80, &unk_21477C790);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214693BC4();
  sub_2146DAA28();
  if (v4[3])
  {
    v16 = v4[2];
    v24 = 0;

    sub_2146DA2B8();
    if (v3)
    {
      (*(v11 + 8))(v14, v10);
    }

    if (v4[8])
    {
      v17 = v4[7];
      v23 = 1;

      sub_2146DA2B8();

      v18 = type metadata accessor for BIALabeledUserAction(0);
      sub_21469239C(v4 + *(v18 + 24), v9, type metadata accessor for BIAUserAction);
      v19 = type metadata accessor for BIAUserAction(0);
      (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
      v22 = 2;
      sub_2146960E0(&qword_27C917C88, type metadata accessor for BIAUserAction);
      sub_2146DA298();
      sub_213FB2DF4(v9, &qword_27C912F10, &qword_21473C4D0);
      return (*(v11 + 8))(v14, v10);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214694058@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for BIABinaryChoiceButton(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BIAUserAction(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D10, &unk_2146F4DD0);
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2142F866C();
  v17 = v52;
  sub_2146DAA08();
  if (!v17)
  {
    v52 = v3;
    v18 = v10;
    v49 = v6;
    LOBYTE(v55) = 0;
    v19 = sub_2146DA168();
    v21 = v20;
    v22 = v19;
    LOBYTE(v55) = 1;
    sub_2142F86C0();
    sub_2146DA1C8();
    v48 = v22;
    LOBYTE(v22) = v60[1];
    LOBYTE(v55) = 2;
    sub_2146960E0(&qword_27C917C78, type metadata accessor for BIAUserAction);
    sub_2146DA0D8();
    v47 = v11;
    v24 = v49;
    sub_21469239C(v18, &v49[*(v52 + 24)], type metadata accessor for BIAUserAction);
    sub_21440D608(&v55);
    v25 = v55;
    v26 = v56;
    v28 = v57;
    v27 = v58;
    v29 = v59;
    *v24 = v55;
    *(v24 + 1) = v26;
    v45 = v28;
    *(v24 + 2) = v28;
    *(v24 + 3) = v27;
    v24[32] = v29;
    v24[33] = v22;
    v30 = v21;
    v31 = v25;
    v54[0] = v48;
    v54[1] = v30;
    LODWORD(v52) = v29;
    v60[0] = v29;
    v55 = 0xD00000000000001BLL;
    v56 = 0x800000021478F040;
    v57 = 0xD00000000000001CLL;
    v58 = 0x800000021478A360;
    v46 = v27;

    v32 = v31(v54, v60, &v55);
    v44 = v30;
    v33 = v47;
    if (v32)
    {

      sub_214693C18(v18, type metadata accessor for BIAUserAction);
      (*(v51 + 8))(v14, v33);
      v34 = v49;
      v35 = *(v49 + 1);
      v36 = *(v49 + 3);

      *v34 = v31;
      *(v34 + 8) = v26;
      v37 = v44;
      *(v34 + 16) = v48;
      *(v34 + 24) = v37;
      *(v34 + 32) = v52;
      sub_214693C78(v34, v50, type metadata accessor for BIABinaryChoiceButton);
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v38 = 0xD00000000000001BLL;
      v38[1] = 0x800000021478F040;
      v38[2] = 0xD00000000000001CLL;
      v38[3] = 0x800000021478A360;
      swift_willThrow();

      sub_214693C18(v18, type metadata accessor for BIAUserAction);
      (*(v51 + 8))(v14, v33);
      v39 = v49;
      v40 = *(v49 + 1);
      v41 = *(v49 + 3);

      *v39 = v31;
      *(v39 + 8) = v26;
      v42 = v46;
      *(v39 + 16) = v45;
      *(v39 + 24) = v42;
      *(v39 + 32) = v52;
      sub_214693C18(v39, type metadata accessor for BIABinaryChoiceButton);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t sub_2146945A4(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D28, &qword_21477C7A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F866C();
  sub_2146DAA28();
  if (*(v4 + 24))
  {
    v12 = *(v4 + 16);
    v15[15] = 0;

    sub_2146DA328();
    if (v3)
    {
      (*(v7 + 8))(v10, v6);
    }

    else
    {

      v15[14] = *(v4 + 33);
      v15[13] = 1;
      sub_2142F8714();
      sub_2146DA388();
      v14 = *(type metadata accessor for BIABinaryChoiceButton(0) + 24);
      v15[12] = 2;
      type metadata accessor for BIAUserAction(0);
      sub_2146960E0(&qword_27C917C88, type metadata accessor for BIAUserAction);
      sub_2146DA2A8();
      return (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214694854(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x736E6F69746361;
  }

  else
  {
    v4 = 0x6C6562616CLL;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x736E6F69746361;
  }

  else
  {
    v6 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2146948F8()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214694978()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2146949E4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_214694A6C(uint64_t *a1@<X8>)
{
  v2 = 0x6C6562616CLL;
  if (*v1)
  {
    v2 = 0x736E6F69746361;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_214694AB4(uint64_t a1)
{
  v2 = sub_214694D8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214694AF0(uint64_t a1)
{
  v2 = sub_214694D8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214694B2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917C90, &unk_21477C7A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214694D8C();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v22) = 0;
    v11 = sub_2146DA168();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D60, &qword_2146F4DF0);
    v18[15] = 1;
    sub_2146950C4(&qword_27C917CA0, &qword_27C917CA8);
    sub_2146DA0D8();
    sub_214175C98(v11, v13, v22, v19);
    (*(v6 + 8))(v9, v5);
    v14 = v20;
    v15 = v21;
    v16 = v19[1];
    *a2 = v19[0];
    *(a2 + 16) = v16;
    *(a2 + 32) = v14;
    *(a2 + 40) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_214694D8C()
{
  result = qword_27C917C98;
  if (!qword_27C917C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917C98);
  }

  return result;
}

uint64_t sub_214694DE0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917CB0, &qword_21477C7B8);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v9 = v1[2];
  v8 = v1[3];
  v13 = v1[5];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214694D8C();
  sub_2146DAA28();
  if (v8)
  {
    v17 = 0;

    sub_2146DA328();
    if (v2)
    {
      (*(v14 + 8))(v7, v4);
    }

    else
    {

      v15 = v13;
      v16 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D48, &qword_21477C7C0);
      sub_214695008();
      sub_2146DA2A8();
      return (*(v14 + 8))(v7, v4);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_214695008()
{
  result = qword_27C917CB8;
  if (!qword_27C917CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C907D48, &qword_21477C7C0);
    sub_2146950C4(&qword_27C917CC0, &qword_27C917CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917CB8);
  }

  return result;
}

uint64_t sub_2146950C4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C907D60, &qword_2146F4DF0);
    sub_2146960E0(a2, type metadata accessor for BIALabeledUserAction);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214695190()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_2146951F4()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_214695264@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2146DA098();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2146952BC(uint64_t a1)
{
  v2 = sub_214695574();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2146952F8(uint64_t a1)
{
  v2 = sub_214695574();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214695334@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F10, &qword_21473C4D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917CD0, &qword_21477C7C8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214695574();
  sub_2146DAA08();
  if (!v2)
  {
    v14 = v18;
    v15 = type metadata accessor for BIAUserAction(0);
    sub_2146960E0(&qword_27C917C78, type metadata accessor for BIAUserAction);
    sub_2146DA0D8();
    (*(v9 + 8))(v12, v8);
    (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
    sub_21408AC04(v7, v14, &qword_27C912F10, &qword_21473C4D0);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_214695574()
{
  result = qword_27C917CD8;
  if (!qword_27C917CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917CD8);
  }

  return result;
}

uint64_t sub_2146955C8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917CE0, &qword_21477C7D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214695574();
  sub_2146DAA28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F10, &qword_21473C4D0);
  sub_21469571C();
  sub_2146DA2A8();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_21469571C()
{
  result = qword_27C917CE8;
  if (!qword_27C917CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C912F10, &qword_21473C4D0);
    sub_2146960E0(&qword_27C917C88, type metadata accessor for BIAUserAction);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917CE8);
  }

  return result;
}

uint64_t sub_214695800(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x326E6F6974706FLL;
  }

  else
  {
    v2 = 0x316E6F6974706FLL;
  }

  if (*a2)
  {
    v3 = 0x326E6F6974706FLL;
  }

  else
  {
    v3 = 0x316E6F6974706FLL;
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

uint64_t sub_214695888()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214695900()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_21469595C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2146959DC(uint64_t *a1@<X8>)
{
  v2 = 0x316E6F6974706FLL;
  if (*v1)
  {
    v2 = 0x326E6F6974706FLL;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_214695A20@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_214695A80(uint64_t a1)
{
  v2 = sub_214695E38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214695ABC(uint64_t a1)
{
  v2 = sub_214695E38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214695AF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F30, &unk_21477C740);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v30 = &v25 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917CF0, &qword_21477C7D8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214695E38();
  sub_2146DAA08();
  if (!v2)
  {
    v27 = v8;
    v28 = v11;
    v16 = type metadata accessor for BIABinaryChoiceButton(0);
    v32 = 0;
    sub_2146960E0(&qword_27C917D00, type metadata accessor for BIABinaryChoiceButton);
    v17 = v30;
    sub_2146DA0D8();
    v18 = *(v16 - 8);
    v19 = *(v18 + 56);
    v25 = v18 + 56;
    v26 = v19;
    v19(v17, 0, 1, v16);
    v31 = 1;
    v20 = v27;
    sub_2146DA0D8();
    (*(v28 + 8))(v14, v10);
    v26(v20, 0, 1, v16);
    v22 = v17;
    v23 = v29;
    sub_21408AC04(v22, v29, &qword_27C912F30, &unk_21477C740);
    v24 = type metadata accessor for BIABinaryChoice(0);
    sub_21408AC04(v20, v23 + *(v24 + 20), &qword_27C912F30, &unk_21477C740);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_214695E38()
{
  result = qword_27C917CF8;
  if (!qword_27C917CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917CF8);
  }

  return result;
}

uint64_t sub_214695E8C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917D08, &qword_21477C7E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214695E38();
  sub_2146DAA28();
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F30, &unk_21477C740);
  sub_21469602C();
  sub_2146DA2A8();
  if (!v1)
  {
    v9 = *(type metadata accessor for BIABinaryChoice(0) + 20);
    v11[14] = 1;
    sub_2146DA2A8();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_21469602C()
{
  result = qword_27C917D10;
  if (!qword_27C917D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C912F30, &unk_21477C740);
    sub_2146960E0(&qword_27C917D18, type metadata accessor for BIABinaryChoiceButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917D10);
  }

  return result;
}

uint64_t sub_2146960E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21469626C()
{
  result = qword_27C917D20;
  if (!qword_27C917D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917D20);
  }

  return result;
}

unint64_t sub_2146962C4()
{
  result = qword_27C917D28;
  if (!qword_27C917D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917D28);
  }

  return result;
}

unint64_t sub_21469631C()
{
  result = qword_27C917D30;
  if (!qword_27C917D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917D30);
  }

  return result;
}

unint64_t sub_214696374()
{
  result = qword_27C917D38;
  if (!qword_27C917D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917D38);
  }

  return result;
}

unint64_t sub_2146963CC()
{
  result = qword_27C917D40;
  if (!qword_27C917D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917D40);
  }

  return result;
}

unint64_t sub_214696424()
{
  result = qword_27C917D48;
  if (!qword_27C917D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917D48);
  }

  return result;
}

unint64_t sub_21469647C()
{
  result = qword_27C917D50;
  if (!qword_27C917D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917D50);
  }

  return result;
}

unint64_t sub_2146964D4()
{
  result = qword_27C917D58;
  if (!qword_27C917D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917D58);
  }

  return result;
}

unint64_t sub_21469652C()
{
  result = qword_27C917D60;
  if (!qword_27C917D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917D60);
  }

  return result;
}

unint64_t sub_214696584()
{
  result = qword_27C917D68;
  if (!qword_27C917D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917D68);
  }

  return result;
}

unint64_t sub_2146965DC()
{
  result = qword_27C917D70;
  if (!qword_27C917D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917D70);
  }

  return result;
}

unint64_t sub_214696634()
{
  result = qword_27C917D78;
  if (!qword_27C917D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917D78);
  }

  return result;
}

unint64_t sub_21469668C()
{
  result = qword_27C917D80;
  if (!qword_27C917D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917D80);
  }

  return result;
}

unint64_t sub_2146966E4()
{
  result = qword_27C917D88;
  if (!qword_27C917D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917D88);
  }

  return result;
}

unint64_t sub_21469673C()
{
  result = qword_27C917D90;
  if (!qword_27C917D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917D90);
  }

  return result;
}

unint64_t sub_214696794()
{
  result = qword_27C917D98;
  if (!qword_27C917D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917D98);
  }

  return result;
}

unint64_t sub_2146967EC()
{
  result = qword_27C917DA0;
  if (!qword_27C917DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917DA0);
  }

  return result;
}

unint64_t sub_214696844()
{
  result = qword_27C917DA8;
  if (!qword_27C917DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917DA8);
  }

  return result;
}

unint64_t sub_21469689C()
{
  result = qword_27C917DB0;
  if (!qword_27C917DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917DB0);
  }

  return result;
}

unint64_t sub_2146968F4()
{
  result = qword_27C917DB8;
  if (!qword_27C917DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917DB8);
  }

  return result;
}

unint64_t sub_21469694C()
{
  result = qword_27C917DC0;
  if (!qword_27C917DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917DC0);
  }

  return result;
}

unint64_t sub_2146969A4()
{
  result = qword_27C917DC8;
  if (!qword_27C917DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917DC8);
  }

  return result;
}

unint64_t sub_2146969FC()
{
  result = qword_27C917DD0;
  if (!qword_27C917DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917DD0);
  }

  return result;
}

unint64_t sub_214696A54()
{
  result = qword_27C917DD8;
  if (!qword_27C917DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917DD8);
  }

  return result;
}

uint64_t sub_214696AA8()
{
  v0 = sub_2146DA098();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_214696AF4()
{
  v0 = sub_2146DA098();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_214696B40()
{
  v0 = sub_2146DA098();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_214696B8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for BusinessMessage.RootObject(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917DE0, &qword_21477D5C0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214696DE8();
  sub_2146DAA08();
  if (!v2)
  {
    v14 = v18;
    if (sub_2146DA248())
    {
      type metadata accessor for BIAPayload(0);
      sub_214698540(&qword_27C917DF0, type metadata accessor for BIAPayload);
      sub_2146DA0D8();
      (*(v9 + 8))(v12, v8);
      sub_2146980A0(v7, v14, type metadata accessor for BusinessMessage.RootObject);
    }

    else
    {
      sub_214690F48();
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
      (*(v9 + 8))(v12, v8);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_214696DE8()
{
  result = qword_27C917DE8;
  if (!qword_27C917DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917DE8);
  }

  return result;
}

uint64_t sub_214696E3C(void *a1)
{
  v2 = type metadata accessor for BIAPayload(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BusinessMessage.RootObject(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917DF8, &unk_21477D5C8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214696DE8();
  sub_2146DAA28();
  sub_21440957C(v17[1], v9);
  sub_2146980A0(v9, v5, type metadata accessor for BIAPayload);
  sub_214698540(&qword_27C912E60, type metadata accessor for BIAPayload);
  sub_2146DA388();
  sub_214698040(v5, type metadata accessor for BIAPayload);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21469708C()
{
  v0 = sub_2146D8608();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_2146D85F8();
  type metadata accessor for BusinessMessage(0);
  sub_214698540(&qword_27C917990, type metadata accessor for BusinessMessage);
  v3 = sub_2146D85D8();

  return v3;
}

uint64_t sub_21469714C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6E6F6973726576;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0x6163696669746F6ELL;
  if (v3 == 1)
  {
    v5 = 0x6E6F6973726576;
  }

  else
  {
    v4 = 0xEC0000006E6F6974;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x8000000214788420;
  }

  v8 = 0xE700000000000000;
  if (*a2 != 1)
  {
    v2 = 0x6163696669746F6ELL;
    v8 = 0xEC0000006E6F6974;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x8000000214788420;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_214697258()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214697308()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2146973A4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214697450@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214698A24();
  *a2 = result;
  return result;
}

void sub_214697480(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6973726576;
  if (v2 != 1)
  {
    v4 = 0x6163696669746F6ELL;
    v3 = 0xEC0000006E6F6974;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v5)
  {
    v3 = 0x8000000214788420;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_2146974EC()
{
  v1 = 0x6E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x6163696669746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_214697554@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214698A24();
  *a1 = result;
  return result;
}

uint64_t sub_21469757C(uint64_t a1)
{
  v2 = sub_214697F14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2146975B8(uint64_t a1)
{
  v2 = sub_214697F14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2146975F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v85 = type metadata accessor for BusinessMessage(0);
  v3 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v88 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D90, &qword_2146F4E00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v86 = &v73 - v7;
  v87 = type metadata accessor for BIAPayload(0);
  v8 = *(*(v87 - 1) + 64);
  MEMORY[0x28223BE20](v87);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BusinessMessage.RootObject(0);
  v84 = *(v11 - 8);
  v12 = *(v84 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917E00, &qword_21477D5D8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v73 - v18;
  v21 = a1[3];
  v20 = a1[4];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_214697F14();
  v22 = v89;
  sub_2146DAA08();
  if (!v22)
  {
    v82 = 0;
    v80 = v11;
    v81 = v14;
    v89 = v16;
    v23 = v88;
    LOBYTE(v93) = 2;
    v24 = v19;
    if (sub_2146DA248())
    {
      LOBYTE(v93) = 2;
      sub_214698540(&qword_27C917DF0, type metadata accessor for BIAPayload);
      v25 = v82;
      sub_2146DA0D8();
      v26 = v89;
      if (v25)
      {
        (*(v89 + 8))(v24, v15);
      }

      else
      {
        v27 = v81;
        sub_2146980A0(v10, v81, type metadata accessor for BIAPayload);
        LOBYTE(v93) = 0;
        v28 = sub_2146DA0F8();
        v30 = v29;
        v31 = v28;
        LOBYTE(v93) = 1;
        v74 = sub_2146DA0F8();
        v82 = v34;
        v78 = v24;
        v79 = v15;
        v35 = v86;
        sub_21440957C(v27, v86);
        (*(v84 + 56))(v35, 0, 1, v80);
        sub_214697F68(v35, v23 + *(v85 + 24));
        sub_214406CE8(&v93);
        v84 = v31;
        v37 = v93;
        v36 = v94;
        v87 = v93;
        v38 = v96;
        v85 = v95;
        v39 = v97;
        sub_2144070DC(v91);
        v40 = v91[1];
        *(v23 + 40) = v91[0];
        v41 = v92;
        *v23 = v37;
        *(v23 + 8) = v36;
        v42 = v84;
        v43 = v85;
        *(v23 + 16) = v85;
        *(v23 + 24) = v38;
        *(v23 + 32) = v39;
        *(v23 + 56) = v40;
        *(v23 + 72) = v41;
        *&v91[0] = v42;
        *(&v91[0] + 1) = v30;
        v75 = v30;
        LODWORD(v80) = v39;
        v98 = v39;
        v93 = 0xD000000000000021;
        v94 = 0x800000021478F080;
        v95 = 0xD00000000000001CLL;
        v96 = 0x800000021478A360;

        v76 = v38;
        sub_213FDC9D0(v43, v38);
        v77 = v36;
        v44 = (v87)(v91, &v98, &v93);
        v45 = v75;
        if (v44)
        {
          sub_213FDC6D0(v85, v76);

          v46 = *(v23 + 8);
          v47 = *(v23 + 16);
          v48 = *(v23 + 24);

          sub_213FDC6D0(v47, v48);
          v49 = v77;
          *v23 = v87;
          *(v23 + 8) = v49;
          *(v23 + 16) = v84;
          *(v23 + 24) = v45;
          *(v23 + 32) = v80;
          v51 = *(v23 + 40);
          v50 = *(v23 + 48);
          v52 = *(v23 + 56);
          v53 = *(v23 + 64);
          v54 = *(v23 + 72);
          *&v91[0] = v74;
          *(&v91[0] + 1) = v82;
          LODWORD(v85) = v54;
          v98 = v54;
          v93 = 0xD000000000000017;
          v94 = 0x800000021478F0B0;
          v95 = 0xD00000000000001CLL;
          v96 = 0x800000021478A360;

          v84 = v52;
          sub_213FDC9D0(v52, v53);
          v87 = v51;
          v55 = (v51)(v91, &v98, &v93);
          v62 = v89;
          if (v55)
          {
            sub_213FDC6D0(v84, v53);

            sub_214697FD8(v86);
            sub_214698040(v81, type metadata accessor for BusinessMessage.RootObject);
            (*(v62 + 8))(v78, v79);
            v63 = v23;
            v64 = *(v23 + 48);
            v65 = *(v23 + 56);
            v66 = *(v23 + 64);

            sub_213FDC6D0(v65, v66);
            *(v63 + 40) = v87;
            *(v63 + 48) = v50;
            v68 = v82;
            v67 = v83;
            *(v63 + 56) = v74;
            *(v63 + 64) = v68;
            *(v63 + 72) = v85;
            sub_2146980A0(v63, v67, type metadata accessor for BusinessMessage);
          }

          else
          {
            sub_214031C4C();
            swift_allocError();
            *v69 = 0xD000000000000017;
            v69[1] = 0x800000021478F0B0;
            v69[2] = 0xD00000000000001CLL;
            v69[3] = 0x800000021478A360;
            swift_willThrow();

            sub_214697FD8(v86);
            sub_214698040(v81, type metadata accessor for BusinessMessage.RootObject);
            (*(v62 + 8))(v78, v79);
            v70 = *(v23 + 48);
            v71 = *(v23 + 56);
            v72 = *(v23 + 64);

            sub_213FDC6D0(v71, v72);
            *(v23 + 40) = v87;
            *(v23 + 48) = v50;
            *(v23 + 56) = v84;
            *(v23 + 64) = v53;
            *(v23 + 72) = v85;
            sub_214698040(v23, type metadata accessor for BusinessMessage);
          }
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v56 = 0xD000000000000021;
          v56[1] = 0x800000021478F080;
          v56[2] = 0xD00000000000001CLL;
          v56[3] = 0x800000021478A360;
          swift_willThrow();

          sub_214697FD8(v86);
          sub_214698040(v81, type metadata accessor for BusinessMessage.RootObject);
          (*(v26 + 8))(v78, v79);
          v57 = *(v23 + 8);
          v58 = *(v23 + 16);
          v59 = *(v23 + 24);

          sub_213FDC6D0(v58, v59);
          v60 = v77;
          *v23 = v87;
          *(v23 + 8) = v60;
          v61 = v76;
          *(v23 + 16) = v85;
          *(v23 + 24) = v61;
          *(v23 + 32) = v80;
          sub_214698040(v23, type metadata accessor for BusinessMessage);
        }
      }
    }

    else
    {
      sub_214690F48();
      swift_allocError();
      *v32 = 4;
      swift_willThrow();
      (*(v89 + 8))(v19, v15);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v90);
}

unint64_t sub_214697F14()
{
  result = qword_27C917E08;
  if (!qword_27C917E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917E08);
  }

  return result;
}

uint64_t sub_214697F68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D90, &qword_2146F4E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214697FD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D90, &qword_2146F4E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214698040(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2146980A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_214698108(void *a1)
{
  v3 = v1;
  v30 = type metadata accessor for BIAPayload(0);
  v5 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D90, &qword_2146F4E00);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v32 = &v29 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917E10, &qword_21477D5E0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214697F14();
  sub_2146DAA28();
  v19 = v3[3];
  if (v19 == 1)
  {
    goto LABEL_10;
  }

  v20 = v3[2];
  v35 = 0;

  sub_2146DA2B8();
  if (v2)
  {
    (*(v14 + 8))(v17, v13);
    return sub_213FDC6D0(v20, v19);
  }

  sub_213FDC6D0(v20, v19);
  v21 = v3[8];
  if (v21 == 1)
  {
LABEL_10:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v22 = v3[7];
    v34 = 1;

    sub_2146DA2B8();
    sub_213FDC6D0(v22, v21);
    v24 = type metadata accessor for BusinessMessage(0);
    v25 = v32;
    sub_214697F68(v3 + *(v24 + 24), v32);
    v26 = type metadata accessor for BusinessMessage.RootObject(0);
    if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
    {
      sub_214690F48();
      swift_allocError();
      *v27 = 4;
      swift_willThrow();
    }

    else
    {
      sub_214697F68(v25, v11);
      v28 = v31;
      sub_2146980A0(v11, v31, type metadata accessor for BIAPayload);
      v33 = 2;
      sub_214698540(&qword_27C917E18, type metadata accessor for BIAPayload);
      sub_2146DA2A8();
      sub_214698040(v28, type metadata accessor for BIAPayload);
    }

    (*(v14 + 8))(v17, v13);
    return sub_214697FD8(v25);
  }

  return result;
}

uint64_t sub_214698540(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2146985F8()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_214698674()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_2146986CC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2146DA098();

  *a2 = v5 != 0;
  return result;
}

void sub_214698720(uint64_t a1@<X8>)
{
  strcpy(a1, "notification");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_214698744@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2146DA098();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21469879C(uint64_t a1)
{
  v2 = sub_214696DE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2146987D8(uint64_t a1)
{
  v2 = sub_214696DE8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_214698818()
{
  result = qword_27C917E20;
  if (!qword_27C917E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917E20);
  }

  return result;
}

unint64_t sub_214698870()
{
  result = qword_27C917E28;
  if (!qword_27C917E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917E28);
  }

  return result;
}

unint64_t sub_2146988C8()
{
  result = qword_27C917E30;
  if (!qword_27C917E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917E30);
  }

  return result;
}

unint64_t sub_214698920()
{
  result = qword_27C917E38;
  if (!qword_27C917E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917E38);
  }

  return result;
}

unint64_t sub_214698978()
{
  result = qword_27C917E40;
  if (!qword_27C917E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917E40);
  }

  return result;
}

unint64_t sub_2146989D0()
{
  result = qword_27C917E48;
  if (!qword_27C917E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917E48);
  }

  return result;
}

uint64_t sub_214698A24()
{
  v0 = sub_2146DA098();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_214698A70()
{
  v1 = *v0;
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[8];
  v4 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 32) = 1701080941;
  *(inited + 16) = xmmword_2146E68D0;
  v7 = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v1 - 1;
  *(inited + 72) = v7;
  *(inited + 80) = 7107189;
  *(inited + 88) = 0xE300000000000000;
  if (v2 && (v8 = MEMORY[0x277D837D0], *(inited + 96) = v3, *(inited + 104) = v2, *(inited + 120) = v8, *(inited + 128) = 0x6574656D61726170, *(inited + 136) = 0xEA00000000007372, v4))
  {
    *(inited + 168) = v8;
    *(inited + 144) = v5;
    *(inited + 152) = v4;
    v9 = inited;

    v10 = sub_2140457C0(v9);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
    swift_arrayDestroy();
    return v10;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_214698BE4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  *(v3 + 16) = sub_2143E18F8;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21405980C;
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2146EAEB0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF28;
  *(v7 + 24) = v3;
  *(v6 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21439DF60;
  *(v8 + 24) = v5;
  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v9 + 16) = sub_21439DF54;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  return sub_214042B80(inited, a1);
}

uint64_t sub_214698D98@<X0>(uint64_t a1@<X8>)
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

__n128 sub_214698DE4(__n128 *a1)
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

uint64_t sub_214698E40()
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

uint64_t sub_214698EBC(uint64_t a1, uint64_t a2)
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

uint64_t (*sub_214699004(void *a1))(uint64_t *a1, char a2)
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

void (*sub_2146990A0(uint64_t *a1))(uint64_t **a1, char a2)
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

unint64_t sub_214699138(uint64_t a1)
{
  *(a1 + 8) = sub_2142FDEC0();
  result = sub_2142FDF68();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214699178()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[7];
  v3 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E6910;
  *(inited + 32) = 0x6D754E656E6F6870;
  *(inited + 40) = 0xEB00000000726562;
  if (v1)
  {
    v6 = MEMORY[0x277D837D0];
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    *(inited + 72) = v6;
    *(inited + 80) = 0x6B6361626C6C6166;
    *(inited + 88) = 0xEB000000006C7255;
    if (!v3)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      *(inited + 112) = 0;
LABEL_6:
      *(inited + 96) = v7;
      *(inited + 104) = v8;
      *(inited + 120) = v9;
      v10 = inited;

      sub_213FDC9D0(v4, v3);
      v11 = sub_214045690(v10);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
      swift_arrayDestroy();
      v12 = sub_2140418B8(v11);

      return v12;
    }

    if (v3 != 1)
    {
      v9 = MEMORY[0x277D837D0];
      v7 = v4;
      v8 = v3;
      goto LABEL_6;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21469931C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

uint64_t sub_21469937C@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2146993E0(uint64_t a1)
{
  v2 = sub_2146998B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21469941C(uint64_t a1)
{
  v2 = sub_2146998B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214699458@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917E50, &qword_21477D970);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146998B8();
  sub_2146DAA08();
  if (!v2)
  {
    v21 = 0;
    v11 = sub_2146DA168();
    v13 = v12;
    v21 = 1;
    v14 = sub_2146DA0F8();
    sub_2140FCF38(v11, v13, v14, v15, v19);
    (*(v6 + 8))(v9, v5);
    v16 = v20[0];
    a2[2] = v19[2];
    a2[3] = v16;
    *(a2 + 57) = *(v20 + 9);
    v17 = v19[1];
    *a2 = v19[0];
    a2[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214699654(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917E60, qword_21477D978);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v9 = v1[2];
  v8 = v1[3];
  v10 = v1[7];
  v14 = v1[8];
  v15 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146998B8();
  sub_2146DAA28();
  if (!v8)
  {
    goto LABEL_6;
  }

  LOBYTE(v17) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v16 + 8))(v7, v4);
  }

  if (v14 == 1)
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v17 = v15;
    v18 = v14;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v16 + 8))(v7, v4);
  }

  return result;
}

unint64_t sub_2146998B8()
{
  result = qword_27C917E58;
  if (!qword_27C917E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917E58);
  }

  return result;
}

unint64_t sub_214699930()
{
  result = qword_27C917E68;
  if (!qword_27C917E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917E68);
  }

  return result;
}

unint64_t sub_214699988()
{
  result = qword_27C917E70;
  if (!qword_27C917E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917E70);
  }

  return result;
}

unint64_t sub_2146999E0()
{
  result = qword_27C917E78;
  if (!qword_27C917E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917E78);
  }

  return result;
}

uint64_t sub_214699A58(uint64_t a1)
{
  v2 = sub_214699C64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214699A94(uint64_t a1)
{
  v2 = sub_214699C64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214699AD0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917E80, &qword_21477DB60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214699C64();
  sub_2146DAA28();
  v13[15] = 0;
  sub_2146DA368();
  if (!v2)
  {
    v13[14] = 1;
    sub_2146DA348();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_214699C64()
{
  result = qword_27C917E88;
  if (!qword_27C917E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917E88);
  }

  return result;
}

uint64_t sub_214699CB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917E90, &qword_21477DB68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214699C64();
  sub_2146DAA08();
  if (!v2)
  {
    v15[15] = 0;
    v11 = sub_2146DA1A8();
    v15[14] = 1;
    sub_2146DA188();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_214699E98@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x40302010000uLL >> (8 * result);
  if (result >= 6)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_214699EB8@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x40302010005uLL >> (8 * result);
  if (result >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_214699F98@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_214699FA8@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21469A10C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_21469A13C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_21469A1CC@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a3;
  v8 = *a6;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 9) = v7;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = v8;
  return result;
}

unint64_t sub_21469A1EC()
{
  v1 = *v0;
  v2 = 0x7974697669746361;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F6F646E497369;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21469A294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21469B0B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21469A2BC(uint64_t a1)
{
  v2 = sub_21469A5E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21469A2F8(uint64_t a1)
{
  v2 = sub_21469A5E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21469A334(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917E98, &qword_21477DB70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v20 = *(v1 + 9);
  v21 = v10;
  v11 = v1[2];
  v18 = v1[3];
  v19 = v11;
  HIDWORD(v17) = *(v1 + 32);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21469A5E4();
  sub_2146DAA28();
  v28 = 0;
  sub_2146DA378();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = v20;
  v15 = v5;
  v16 = BYTE4(v17);
  v27 = 1;
  sub_2146DA338();
  v26 = v14;
  v25 = 2;
  sub_21469A638();
  sub_2146DA388();
  v24 = 3;
  sub_2146DA328();
  v23 = v16;
  v22 = 4;
  sub_21469A68C();
  sub_2146DA388();
  return (*(v15 + 8))(v8, v4);
}

unint64_t sub_21469A5E4()
{
  result = qword_27C917EA0;
  if (!qword_27C917EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917EA0);
  }

  return result;
}

unint64_t sub_21469A638()
{
  result = qword_27C917EA8;
  if (!qword_27C917EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917EA8);
  }

  return result;
}

unint64_t sub_21469A68C()
{
  result = qword_27C917EB0;
  if (!qword_27C917EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917EB0);
  }

  return result;
}

uint64_t sub_21469A6E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917EB8, &qword_21477DB78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21469A5E4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v11 = sub_2146DA1B8();
  v28 = 1;
  v22 = sub_2146DA178();
  v26 = 2;
  sub_21469A990();
  sub_2146DA1C8();
  v12 = v27;
  v25 = 3;
  v13 = sub_2146DA168();
  HIDWORD(v19) = v12;
  v20 = v13;
  v21 = v14;
  v23 = 4;
  sub_21469A9E4();
  sub_2146DA1C8();
  v15 = v22 & 1;
  (*(v6 + 8))(v9, v5);
  v16 = v24;
  *a2 = v11;
  *(a2 + 8) = v15;
  *(a2 + 9) = BYTE4(v19);
  v17 = v21;
  *(a2 + 16) = v20;
  *(a2 + 24) = v17;
  *(a2 + 32) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_21469A990()
{
  result = qword_27C917EC0;
  if (!qword_27C917EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917EC0);
  }

  return result;
}

unint64_t sub_21469A9E4()
{
  result = qword_27C917EC8;
  if (!qword_27C917EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917EC8);
  }

  return result;
}

uint64_t sub_21469AA68@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

unint64_t sub_21469AA78()
{
  result = qword_27C917ED0;
  if (!qword_27C917ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917ED0);
  }

  return result;
}

unint64_t sub_21469AAFC()
{
  result = qword_27C917ED8;
  if (!qword_27C917ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917ED8);
  }

  return result;
}

unint64_t sub_21469AB80()
{
  result = qword_27C917EE0;
  if (!qword_27C917EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917EE0);
  }

  return result;
}

unint64_t sub_21469ABD8()
{
  result = qword_27C917EE8;
  if (!qword_27C917EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917EE8);
  }

  return result;
}

unint64_t sub_21469AC2C(uint64_t a1)
{
  result = sub_21469AC54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21469AC54()
{
  result = qword_27C917EF0;
  if (!qword_27C917EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917EF0);
  }

  return result;
}

uint64_t sub_21469ACD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21469AD10()
{
  result = qword_27C917EF8;
  if (!qword_27C917EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917EF8);
  }

  return result;
}

unint64_t sub_21469AD64()
{
  result = qword_27C917F00;
  if (!qword_27C917F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917F00);
  }

  return result;
}

uint64_t sub_21469ADB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21469AE00(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_21469AEA8()
{
  result = qword_27C917F08;
  if (!qword_27C917F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917F08);
  }

  return result;
}

unint64_t sub_21469AF00()
{
  result = qword_27C917F10;
  if (!qword_27C917F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917F10);
  }

  return result;
}

unint64_t sub_21469AF58()
{
  result = qword_27C917F18;
  if (!qword_27C917F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917F18);
  }

  return result;
}

unint64_t sub_21469AFB0()
{
  result = qword_27C917F20;
  if (!qword_27C917F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917F20);
  }

  return result;
}

unint64_t sub_21469B008()
{
  result = qword_27C917F28;
  if (!qword_27C917F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917F28);
  }

  return result;
}

unint64_t sub_21469B060()
{
  result = qword_27C917F30;
  if (!qword_27C917F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917F30);
  }

  return result;
}

uint64_t sub_21469B0B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xEC00000065707954;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6F646E497369 && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002147A3DD0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002147A3DF0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002147A3E10 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_21469B274()
{
  result = qword_27C917F38;
  if (!qword_27C917F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917F38);
  }

  return result;
}

unint64_t sub_21469B2C8()
{
  result = qword_27C917F40;
  if (!qword_27C917F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917F40);
  }

  return result;
}

uint64_t sub_21469B31C(_BYTE *a1)
{
  if (*a1 != 1)
  {
    return 0;
  }

  v5[7] = v1;
  v5[8] = v2;
  v5[3] = &type metadata for BlastdoorUnpacking;
  v5[4] = sub_214679A00();
  v3 = sub_2146D8BC8();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return (v3 ^ 1) & 1;
}

uint64_t sub_21469B388()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2146F1C40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v1 = swift_allocObject();
  *(v1 + 16) = sub_21439DF24;
  *(v1 + 24) = 0;
  *(v0 + 32) = v1;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_21439DF24;
  *(v2 + 24) = 0;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21403281C;
  *(v3 + 24) = 0;
  *(v0 + 48) = v3;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 1;
  *(v4 + 16) = sub_21438EDCC;
  *(v4 + 24) = v5;
  *(v0 + 56) = v4;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  *(v6 + 16) = sub_21439DF54;
  *(v6 + 24) = v7;
  result = swift_allocObject();
  *(result + 16) = sub_21469B514;
  *(result + 24) = v6;
  return result;
}

uint64_t sub_21469B544@<X0>(uint64_t a1@<X8>)
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

  return sub_213FDCA18(v3, v4);
}

__n128 sub_21469B59C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_u64[1];

  sub_213FDC6BC(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21469B604()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_21469B68C(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_21469B754(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 24);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A1B10;
  }

  return result;
}

void (*sub_21469B7F4(uint64_t *a1))(uint64_t **a1, char a2)
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

  sub_213FDCA18(v6, v7);
  return sub_2143A1DC4;
}

unint64_t sub_21469B894(uint64_t a1)
{
  *(a1 + 8) = sub_2143252B8();
  result = sub_21432506C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21469B8D4(uint64_t a1)
{
  *(a1 + 8) = sub_2142FFBF4();
  result = sub_2142FFDA4();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21469B914(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v9 = *a2;
  v11 = *a3;
  v10 = a3[1];
  v13 = a3[2];
  v12 = a3[3];
  if (v9 != 2)
  {
    *(v4 + *(a4 + 32)) = v9;
  }

  v14 = *(v4 + *(a4 + 32));
  v15 = *v4;
  v16 = *(v4 + 8);
  v24 = *(v6 + *(a4 + 32));
  v23[0] = v11;
  v23[1] = v10;
  v23[2] = v13;
  v23[3] = v12;
  result = v15(a1, &v24, v23);
  if (!v5)
  {
    if (result)
    {
      v18 = *(a4 + 28);
      v19 = *(a4 + 16);
      v20 = sub_2146D9D38();
      (*(*(v20 - 8) + 8))(v6 + v18, v20);
      v21 = *(v19 - 8);
      (*(v21 + 16))(v6 + v18, a1, v19);
      return (*(v21 + 56))(v6 + v18, 0, 1, v19);
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v22 = v11;
      v22[1] = v10;
      v22[2] = v13;
      v22[3] = v12;
      swift_willThrow();
    }
  }

  return result;
}

void sub_21469BAA8(uint64_t a1)
{
  sub_21469BB48();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_2146D9D38();
    if (v4 <= 0x3F)
    {
      sub_2144F2708();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21469BB48()
{
  result = qword_280B2E318;
  if (!qword_280B2E318)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280B2E318);
  }

  return result;
}

unint64_t sub_21469BB98@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21477E330;
  *(v3 + 16) = sub_214032554;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  sub_21404328C(inited, a1);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2146E9BF0;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21477E330;
  *(v6 + 16) = sub_21447174C;
  *(v6 + 24) = v7;
  *(v5 + 32) = v6;
  return sub_21404328C(v5, a1 + 32);
}

uint64_t sub_21469BCE0@<X0>(uint64_t a1@<X8>)
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

__n128 sub_21469BD04(__n128 *a1)
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

uint64_t sub_21469BD5C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 57);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_21469BD80(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1[2].n128_u64[1];

  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u64[0] = v3;
  v1[3].n128_u8[8] = v4;
  v1[3].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21469BDD8()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21469BE3C()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    return *(v0 + 48);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t (*sub_21469BEA4(void *a1))(uint64_t *a1)
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

void (*sub_21469BF2C(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t (*sub_21469BFE8(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 56))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 48);
    return sub_214519B08;
  }

  return result;
}

void (*sub_21469C070(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 57);
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214441F1C;
}

unint64_t sub_21469C108(uint64_t a1)
{
  *(a1 + 8) = sub_214306FB8();
  result = sub_214307494();
  *(a1 + 16) = result;
  return result;
}

id sub_21469C148()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  result = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (result)
  {
    v5 = result;
    [result writeUint32:v1 forTag:1];
    if (v2 != 2)
    {
      [v5 writeBOOL:v2 & 1 forTag:2];
    }

    if (v3 != 2)
    {
      [v5 writeBOOL:v3 & 1 forTag:3];
    }

    result = [v5 immutableData];
    if (result)
    {
      v6 = result;

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21469C2AC(uint64_t a1@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = objc_allocWithZone(MEMORY[0x277D43170]);
  v3 = sub_2146D8A38();
  v4 = [v2 initWithData_];

  v5 = [v4 position];
  if (v5 >= [v4 length])
  {
LABEL_55:
    v37 = 1;
LABEL_56:
    sub_2140861C4();
    swift_allocError();
    *v38 = v37;
    swift_willThrow();
  }

  else
  {
    v40 = a1;
    LODWORD(v6) = 0;
    LOBYTE(v41) = 2;
    v7 = 1;
    v8 = 2;
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v42 = 0;
        v13 = [v4 position] + 1;
        if (v13 >= [v4 position] && (v14 = objc_msgSend(v4, "position") + 1, v14 <= objc_msgSend(v4, "length")))
        {
          v15 = [v4 data];
          [v15 getBytes:&v42 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v16 = v11++ >= 9;
        if (v16)
        {
          v17 = 0;
          goto LABEL_18;
        }
      }

      if ([v4 hasError])
      {
        v17 = 0;
      }

      else
      {
        v17 = v12;
      }

LABEL_18:
      if ([v4 hasError])
      {
        v37 = 0;
        goto LABEL_56;
      }

      v18 = v17 >> 3;
      if ((v17 >> 3) == 1)
      {
        v31 = 0;
        v32 = 0;
        v6 = 0;
        while (1)
        {
          v45 = 0;
          v33 = [v4 position] + 1;
          if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 1, v34 <= objc_msgSend(v4, "length")))
          {
            v35 = [v4 data];
            [v35 getBytes:&v45 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v6 |= (v45 & 0x7F) << v31;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          if (v32++ > 8)
          {
            LODWORD(v6) = 0;
            v7 = 0;
            goto LABEL_4;
          }
        }

        v7 = 0;
        if ([v4 hasError])
        {
          LODWORD(v6) = 0;
        }
      }

      else if (v18 == 2)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        while (1)
        {
          v43 = 0;
          v28 = [v4 position] + 1;
          if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
          {
            v30 = [v4 data];
            [v30 getBytes:&v43 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v27 |= (v43 & 0x7F) << v25;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v16 = v26++ >= 9;
          if (v16)
          {
            LOBYTE(v41) = 0;
            goto LABEL_4;
          }
        }

        v41 = (v27 != 0) & ~[v4 hasError];
      }

      else if (v18 == 3)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        while (1)
        {
          v44 = 0;
          v22 = [v4 position] + 1;
          if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 1, v23 <= objc_msgSend(v4, "length")))
          {
            v24 = [v4 data];
            [v24 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v21 |= (v44 & 0x7F) << v19;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v16 = v20++ >= 9;
          if (v16)
          {
            v8 = 0;
            goto LABEL_4;
          }
        }

        v8 = (v21 != 0) & ~[v4 hasError];
      }

      else
      {
        PBReaderSkipValueWithTag();
      }

LABEL_4:
      v9 = [v4 position];
    }

    while (v9 < [v4 length]);
    if (v7)
    {
      goto LABEL_55;
    }

    *v40 = v6;
    *(v40 + 4) = v41;
    *(v40 + 5) = v8;
  }

  v39 = *MEMORY[0x277D85DE8];
}

unint64_t sub_21469C7DC(uint64_t a1)
{
  *(a1 + 8) = sub_214320718();
  result = sub_214320574();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WalletRemoteRegistrationRequestMessage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 6))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WalletRemoteRegistrationRequestMessage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_21469C8C0@<X0>(uint64_t a1@<X8>)
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

__n128 sub_21469C90C(__n128 *a1)
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

uint64_t sub_21469C968()
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

uint64_t sub_21469C9E4(uint64_t a1, uint64_t a2)
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

uint64_t (*sub_21469CB2C(void *a1))(uint64_t *a1, char a2)
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

void (*sub_21469CBC8(uint64_t *a1))(uint64_t **a1, char a2)
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

unint64_t sub_21469CC60(uint64_t a1)
{
  *(a1 + 8) = sub_2142FE168();
  result = sub_2142FE240();
  *(a1 + 16) = result;
  return result;
}

uint64_t GroupContext.debugDescription.getter()
{
  v1 = 1162760014;
  v2 = *(v0 + 16);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  if (*(v0 + 112))
  {
    v9 = 0xE400000000000000;
    v20 = 1162760014;
    if ((*(v0 + 96) & 1) == 0)
    {
LABEL_3:
      v1 = sub_2146DA428();
      v11 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    v21 = *(v0 + 104);
    v20 = sub_2146DA428();
    v9 = v12;
    if ((v8 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v11 = 0xE400000000000000;
LABEL_6:
  sub_2146D9EF8();
  MEMORY[0x2160545D0](60, 0xE100000000000000);
  MEMORY[0x2160545D0](0x6E6F4370756F7247, 0xEC00000074786574);
  MEMORY[0x2160545D0](0x70756F7267203A3ELL, 0xEC000000203A4449);
  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_18;
    }

    v13 = v4;
  }

  else
  {
    sub_213FDC6D0(v3, 0);
    v13 = 0xE400000000000000;
    v3 = 1280070990;
  }

  MEMORY[0x2160545D0](v3, v13);

  MEMORY[0x2160545D0](0xD000000000000015, 0x80000002147A6F80);
  if (v6)
  {
    v14 = v5;
  }

  else
  {
    v14 = 1280070990;
  }

  if (v6)
  {
    v15 = v6;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x2160545D0](v14, v15);

  MEMORY[0x2160545D0](0xD00000000000001BLL, 0x80000002147A6FA0);
  MEMORY[0x2160545D0](v1, v11);

  MEMORY[0x2160545D0](0xD000000000000018, 0x80000002147A6FC0);
  MEMORY[0x2160545D0](v20, v9);

  MEMORY[0x2160545D0](0xD00000000000001BLL, 0x80000002147A6FE0);
  if (v2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2140610B4();
    v16 = sub_2146D9558();
    v18 = v17;

    MEMORY[0x2160545D0](v16, v18);

    return 0;
  }

LABEL_18:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_21469CFCC@<X0>(uint64_t (**a1)(uint64_t a1, char *a2)@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  v3 = sub_214069764(&unk_282653FF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v4 + 16) = sub_21409A858;
  *(v4 + 24) = v5;
  *(inited + 32) = v4;
  v6 = sub_214069888(&unk_282654050);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21409A860;
  *(v7 + 24) = v8;
  *(inited + 40) = v7;
  return sub_214042F80(inited, a1);
}

uint64_t sub_21469D130@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CombinedPluginAttachmentInfo() + 24));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;
}

uint64_t type metadata accessor for CombinedPluginAttachmentInfo()
{
  result = qword_280B30140;
  if (!qword_280B30140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_21469D1DC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for CombinedPluginAttachmentInfo() + 24));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_u64[1];

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21469D248@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v1 + *(v7 + 28), v6, &unk_27C9131A0, &unk_2146E9D10);
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_21407E248(v6);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21469D3C0()
{
  v1 = v0 + *(type metadata accessor for CombinedPluginAttachmentInfo() + 24);
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21469D44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(a1 + *(v8 + 28), v7, &unk_27C9131A0, &unk_2146E9D10);
  v9 = sub_2146D8958();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_21407E248(v7);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21469D5C8(uint64_t a1)
{
  v2 = sub_2146D8958();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2);
  v10(v7, v9, v2);
  sub_21402F904(v7);
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_21469D6F8(uint64_t a1)
{
  v2 = sub_2146D8958();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  sub_21402F904(v6);
  return (*(v3 + 8))(a1, v2);
}

void (*sub_21469D7E4(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_2146D8958();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v1 + *(v15 + 28), v8, &unk_27C9131A0, &unk_2146E9D10);
  if ((*(v11 + 48))(v8, 1, v9) == 1)
  {
    sub_21407E248(v8);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
    return sub_21440FDC8;
  }

  return result;
}

void (*sub_21469DA00(uint64_t *a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  a1[1] = v4;
  sub_213FB2E54(v1, v4, &unk_27C9131D0, &qword_2146EAA70);
  return sub_214477F78;
}

uint64_t sub_21469DAB0()
{
  v1 = v0 + *(type metadata accessor for CombinedPluginAttachmentInfo() + 20);
  v2 = *v1;
  sub_21402D9F8(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_21469DAF4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CombinedPluginAttachmentInfo() + 20);
  result = sub_213FB54FC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_21469DB84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for CombinedPluginAttachmentInfo() + 24);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21469DC1C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for CombinedPluginAttachmentInfo() + 24);
  sub_214031F20(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21469DCE4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CombinedPluginAttachmentInfo() + 24);
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v12 = *(v5 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v5 + 24);

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
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

void (*sub_21469DE38(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for CombinedPluginAttachmentInfo() + 24);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2140646F8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21469DF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CombinedPluginAttachmentInfo() + 24));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

uint64_t sub_21469DF80(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for CombinedPluginAttachmentInfo() + 24);
  v8 = *(v7 + 8);
  v9 = *(v7 + 24);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_21469E008(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for CombinedPluginAttachmentInfo() + 24);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_214064B44;
}

uint64_t sub_21469E0D8(uint64_t a1)
{
  result = type metadata accessor for CombinedPluginAttachmentInfo();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_21469E150()
{
  v1 = v0 + *(type metadata accessor for CombinedPluginAttachmentInfo() + 32);
  v2 = *v1;
  sub_21402D9F8(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_21469E194(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CombinedPluginAttachmentInfo() + 32);
  result = sub_213FB54FC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_21469E224(uint64_t a1)
{
  *(a1 + 8) = sub_21469E28C(&qword_27C90CF10);
  result = sub_21469E28C(&qword_27C90CEE0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21469E28C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CombinedPluginAttachmentInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21469E2F8()
{
  sub_2143A5654();
  if (v0 <= 0x3F)
  {
    sub_214426938();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21469E394(uint64_t a1)
{
  *(a1 + 8) = sub_21469E448(&qword_27C90C5D0);
  result = sub_21469E448(&qword_27C90C5B0);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for MBDChipAction()
{
  result = qword_27C917F48;
  if (!qword_27C917F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21469E448(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MBDChipAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21469E4B4()
{
  sub_21469E538();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21469E538()
{
  if (!qword_27C917F58)
  {
    type metadata accessor for MBDActionContent();
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_27C917F58);
    }
  }
}

unint64_t sub_21469E590@<X0>(uint64_t a1@<X8>)
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

uint64_t ReadReceipt.$groupID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ReadReceipt() + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 ReadReceipt.$groupID.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for ReadReceipt() + 24));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t ReadReceipt.$participantDestinationIdentifiers.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ReadReceipt() + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v3;
}

__n128 ReadReceipt.$participantDestinationIdentifiers.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = (v1 + *(type metadata accessor for ReadReceipt() + 20));
  v6 = v5->n128_u64[1];
  v7 = v5[1].n128_u64[0];

  result = *a1;
  *v5 = *a1;
  v5[1].n128_u64[0] = v3;
  v5[1].n128_u8[8] = v4;
  return result;
}

uint64_t ReadReceipt.participantDestinationIdentifiers.getter()
{
  if (*(v0 + *(type metadata accessor for ReadReceipt() + 20) + 16))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t ReadReceipt.groupID.getter()
{
  v1 = v0 + *(type metadata accessor for ReadReceipt() + 24);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t sub_21469E9A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ReadReceipt() + 20) + 16);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21469EA34(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for ReadReceipt() + 20);
  sub_2140325F8(v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t ReadReceipt.participantDestinationIdentifiers.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ReadReceipt() + 20);
  v11 = a1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v10 = *(v3 + 24);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v3 + 16);

    *(v3 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*ReadReceipt.participantDestinationIdentifiers.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ReadReceipt() + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    *a1 = v4;

    return sub_2140652FC;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21469ECE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ReadReceipt() + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v3;
}

uint64_t sub_21469ED4C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = a2 + *(type metadata accessor for ReadReceipt() + 20);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);

  *v6 = v3;
  *(v6 + 8) = v2;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  return result;
}

void (*ReadReceipt.$participantDestinationIdentifiers.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for ReadReceipt() + 20);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  LOBYTE(v6) = *(v6 + 24);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v6;

  return sub_214065740;
}

uint64_t sub_21469EE7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for ReadReceipt() + 24);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21469EF18(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for ReadReceipt() + 24);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t ReadReceipt.groupID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for ReadReceipt() + 24);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
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

void (*ReadReceipt.groupID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ReadReceipt() + 24);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_214065C38;
  }

  return result;
}

uint64_t sub_21469F21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ReadReceipt() + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21469F28C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for ReadReceipt() + 24);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*ReadReceipt.$groupID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for ReadReceipt() + 24);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_2140660B8;
}

uint64_t ReadReceipt.groupName.getter()
{
  v1 = (v0 + *(type metadata accessor for ReadReceipt() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ReadReceipt.groupName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ReadReceipt() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ReadReceipt.originalMessageTimestamp.getter()
{
  v1 = (v0 + *(type metadata accessor for ReadReceipt() + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ReadReceipt.originalMessageTimestamp.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ReadReceipt();
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_21469F55C(uint64_t a1)
{
  *(a1 + 8) = sub_21469F5C4(&qword_280B2FB30);
  result = sub_21469F5C4(&qword_280B2FB38);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21469F5C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ReadReceipt();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21469F61C()
{
  type metadata accessor for Metadata();
  if (v0 <= 0x3F)
  {
    sub_21409A2B4(319, &qword_280B2E568, &unk_27C904F20, &qword_2146EE8A0);
    if (v1 <= 0x3F)
    {
      sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
      if (v2 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B34BE0);
        if (v3 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B2E320);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t *sub_21469F7B4(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D60, &unk_21477E710);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25[-v7];
  v9 = type metadata accessor for UnpackResponseSessionFinishedMessage(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = (*(*v1 + 120))(&v28, v11);
  (*(*v1 + 144))(&v26, v14);
  BYTE1(v28) = v26;
  swift_beginAccess();
  sub_213FB2E54((v1 + 3), &v26, &unk_27C904F50, &unk_2146F08E0);
  v15 = v1[8];
  type metadata accessor for _XPCEncoder();
  swift_allocObject();
  swift_unknownObjectRetain();
  v16 = sub_21467B64C(&v28, &v26, v15);
  sub_214081EB0(a1, v13, type metadata accessor for UnpackResponseSessionFinishedMessage);
  sub_21469FFC4();
  LOBYTE(v26) = 0;
  sub_2146D8B88();
  sub_2146A2884(&qword_280B34D20, MEMORY[0x277CC95F0]);
  v17 = v8;
  sub_2146DA388();
  if (v2)
  {
    (*(v5 + 8))(v8, v4);

    sub_214081F18(v13, type metadata accessor for UnpackResponseSessionFinishedMessage);
  }

  else
  {
    v18 = v13[*(v9 + 20)];
    LOBYTE(v26) = 1;
    sub_2146DA338();
    (*(v5 + 8))(v8, v4);
    v17 = *(v16 + 72);
    swift_unknownObjectRetain();
    sub_214081F18(v13, type metadata accessor for UnpackResponseSessionFinishedMessage);
    if (!v17)
    {
      v20 = sub_2146D9F78();
      swift_allocError();
      v22 = v21;
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9179F0, &qword_21477E720) + 48);
      v22[3] = v9;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
      sub_214081EB0(a1, boxed_opaque_existential_0, type metadata accessor for UnpackResponseSessionFinishedMessage);
      v26 = 0;
      v27 = 0xE000000000000000;
      v17 = &v26;
      sub_2146D9EF8();

      v26 = 0x6576656C2D706F54;
      v27 = 0xEA0000000000206CLL;
      MEMORY[0x2160545D0](0xD000000000000024, 0x80000002147A70A0);
      MEMORY[0x2160545D0](0xD00000000000001BLL, 0x80000002147A69E0);
      sub_2146D9F28();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D841A8], v20);
      swift_willThrow();
    }
  }

  return v17;
}

uint64_t *sub_21469FC34(uint64_t a1)
{
  v4 = type metadata accessor for EncoderErrorResponseMessage(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(*v1 + 120))(&v25, v6);
  (*(*v1 + 144))(&v21, v9);
  BYTE1(v25) = v21;
  swift_beginAccess();
  sub_213FB2E54((v1 + 3), &v21, &unk_27C904F50, &unk_2146F08E0);
  v10 = v1[8];
  v11 = type metadata accessor for _XPCEncoder();
  swift_allocObject();
  swift_unknownObjectRetain();
  v12 = sub_21467B64C(&v25, &v21, v10);
  sub_214081EB0(a1, v8, type metadata accessor for EncoderErrorResponseMessage);
  v23 = v11;
  v24 = sub_2146A2884(qword_280B35370, type metadata accessor for _XPCEncoder);
  v21 = v12;

  v13 = v8;
  sub_214081228(&v21);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1(&v21);
    sub_214081F18(v8, type metadata accessor for EncoderErrorResponseMessage);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v21);
    v13 = *(v12 + 72);
    swift_unknownObjectRetain();
    sub_214081F18(v8, type metadata accessor for EncoderErrorResponseMessage);
    if (!v13)
    {
      v15 = sub_2146D9F78();
      swift_allocError();
      v17 = v16;
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9179F0, &qword_21477E720) + 48);
      v17[3] = v4;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
      sub_214081EB0(a1, boxed_opaque_existential_0, type metadata accessor for EncoderErrorResponseMessage);
      v21 = 0;
      v22 = 0xE000000000000000;
      v13 = &v21;
      sub_2146D9EF8();

      v21 = 0x6576656C2D706F54;
      v22 = 0xEA0000000000206CLL;
      MEMORY[0x2160545D0](0xD00000000000001BLL, 0x80000002147A70D0);
      MEMORY[0x2160545D0](0xD00000000000001BLL, 0x80000002147A69E0);
      sub_2146D9F28();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D841A8], v15);
      swift_willThrow();
    }
  }

  return v13;
}

uint64_t sub_21469FFC4()
{
  v1 = v0;
  if (*(v0 + 72))
  {
    v2 = *(v0 + 72);
    swift_getObjectType();
    swift_unknownObjectRetain();
    if (sub_21408FD98() == 7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = *(v1 + 72);
  *(v1 + 72) = v3;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
LABEL_5:
  v5 = *(v1 + 16);
  swift_getObjectType();
  swift_unknownObjectRetain();

  if (sub_21408FD98() == 7)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917F78, &qword_21477E728);
    sub_21432076C(&qword_27C917F80, &qword_27C917F78, &qword_21477E728);
    sub_2146DA408();

    return swift_unknownObjectRelease();
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void *sub_2146A01AC(uint64_t a1)
{
  v2 = v1;
  v20 = *v1;
  v21 = a1;
  v3 = sub_2146D9C28();
  v18 = *(v3 - 8);
  v19 = v3;
  v4 = *(v18 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D9C18();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_2146D93D8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_214480EA8();
  v17[1] = "sessionCallbacks";
  v17[2] = v11;
  sub_2146D93C8();
  v22 = MEMORY[0x277D84F90];
  sub_2146A2884(&qword_280B34D60, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914338, &qword_21474BE38);
  sub_21432076C(&qword_280B34CA0, &qword_27C914338, &qword_21474BE38);
  sub_2146D9E48();
  (*(v18 + 104))(v6, *MEMORY[0x277D85260], v19);
  v1[2] = sub_2146D9C58();
  v12 = v20;
  v22 = v21;
  v13 = *(v20 + 80);
  v14 = *(v20 + 88);
  swift_getTupleTypeMetadata2();
  sub_2146D9978();
  v15 = *(v12 + 96);
  swift_getWitnessTable();
  v2[3] = sub_2146D94A8();
  return v2;
}

uint64_t sub_2146A04B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = sub_21408C470(a2);
  if (v6)
  {
    v7 = (*(v4 + 56) + 16 * v5);
    v8 = *v7;
    v9 = v7[1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_2146A0560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2146D8B88();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v4 + 16);
  (*(v9 + 16))(v11, a3, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = (v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  (*(v9 + 32))(v14 + v12, v11, v8);
  v15 = (v14 + v13);
  *v15 = a1;
  v15[1] = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2146A2718;
  *(v16 + 24) = v14;
  aBlock[4] = sub_214484288;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21469F760;
  aBlock[3] = &block_descriptor_20;
  v17 = _Block_copy(aBlock);

  dispatch_sync(v20, v17);
  _Block_release(v17);
  (*(v9 + 8))(a3, v8);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2146A07C4()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void *sub_2146A0804@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_2146A0170(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2146A082C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2146A1420(a1);
  }

  return result;
}

uint64_t sub_2146A088C(uint64_t a1)
{
  v2 = sub_2146D8B88();
  v108 = *(v2 - 8);
  v109 = v2;
  v3 = *(v108 + 64);
  MEMORY[0x28223BE20](v2);
  v107 = v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917F70, &qword_21477E708);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v102 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v103 = v91 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v105 = v91 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v106 = v91 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = v91 - v15;
  v112 = type metadata accessor for UnpackResponseSessionFinishedMessage(0);
  v17 = *(v112 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v112);
  v111 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v91 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v91 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v91 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = v91 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = v91 - v33;
  type metadata accessor for XPCDecoder();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = sub_214046008(MEMORY[0x277D84F90]);
  sub_2146C6E9C(a1);
  v96 = v29;
  v97 = v26;
  v104 = v32;
  v100 = v35;
  v37 = v112;
  v98 = *(v17 + 56);
  v98(v16, 0, 1, v112);
  sub_2146A2684(v16, v34);
  v38 = sub_2146D9B88();
  v39 = v38;
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v40 = qword_280B35410;
  v41 = v104;
  sub_214081EB0(v34, v104, type metadata accessor for UnpackResponseSessionFinishedMessage);
  v42 = os_log_type_enabled(v40, v39);
  v101 = v34;
  v99 = v23;
  v95 = v17;
  v94 = v17 + 56;
  if (v42)
  {
    v93 = v39;
    v43 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v114 = v92;
    *v43 = 136446466;
    swift_getObjectType();
    v44 = sub_2140901DC();
    v91[1] = a1;
    if (v44)
    {
      v113 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F60, &qword_2146F08F0);
      v45 = sub_2146D9618();
      v47 = v46;
    }

    else
    {
      v47 = 0xE300000000000000;
      v45 = 7104878;
    }

    v51 = v106;
    v52 = sub_2144AEA38(v45, v47, &v114);

    *(v43 + 4) = v52;
    *(v43 + 12) = 2082;
    sub_214081EB0(v104, v51, type metadata accessor for UnpackResponseSessionFinishedMessage);
    v98(v51, 0, 1, v37);
    v53 = v105;
    sub_213FB2E54(v51, v105, &qword_27C917F70, &qword_21477E708);
    if ((*(v17 + 48))(v53, 1, v37) == 1)
    {
      sub_213FB2DF4(v53, &qword_27C917F70, &qword_21477E708);
      v54 = 0xE300000000000000;
      v55 = 7104878;
    }

    else
    {
      v56 = v96;
      sub_2146A2684(v53, v96);
      sub_214081EB0(v56, v97, type metadata accessor for UnpackResponseSessionFinishedMessage);
      v55 = sub_2146D9618();
      v54 = v57;
      sub_214081F18(v56, type metadata accessor for UnpackResponseSessionFinishedMessage);
    }

    sub_213FB2DF4(v51, &qword_27C917F70, &qword_21477E708);
    sub_214081F18(v104, type metadata accessor for UnpackResponseSessionFinishedMessage);
    v58 = sub_2144AEA38(v55, v54, &v114);

    *(v43 + 14) = v58;
    v48 = v40;
    _os_log_impl(&dword_213FAF000, v40, v93, "Received session end message for unpacker: %{public}s with sessionEnd message: %{public}s", v43, 0x16u);
    v59 = v92;
    swift_arrayDestroy();
    MEMORY[0x216056AC0](v59, -1, -1);
    v49 = MEMORY[0x216056AC0](v43, -1, -1);
    v50 = v110;
  }

  else
  {
    v48 = v40;
    v49 = sub_214081F18(v41, type metadata accessor for UnpackResponseSessionFinishedMessage);
    v50 = v110;
  }

  isa = v50[10].isa;
  v61 = *(isa + 2);
  MEMORY[0x28223BE20](v49);
  v62 = v101;
  v91[-2] = isa;
  v91[-1] = v62;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917F60, &unk_21477E6F8);
  sub_2146D9C48();

  v63 = v111;
  if (v114)
  {
    sub_21430299C(v114);
    type metadata accessor for XPCEncoder();
    v64 = swift_allocObject();
    *(v64 + 16) = 0;
    *(v64 + 24) = 0u;
    *(v64 + 40) = 0u;
    *(v64 + 56) = 0;
    v65 = swift_unknownObjectRetain();
    reply = xpc_dictionary_create_reply(v65);
    if (reply)
    {
      v67 = reply;
      swift_unknownObjectRelease();
      *(v64 + 64) = v67;
      v68 = v101;
      v69 = sub_21469F7B4(v101);
      v71 = v108;
      v70 = v109;
      v72 = v107;
      xpc_connection_send_message(v50[2].isa, v69);
      v73 = v50[10].isa;
      (*(v71 + 16))(v72, v68, v70);

      sub_2146A0560(0, 0, v72);

      swift_unknownObjectRelease();

      sub_214081F18(v68, type metadata accessor for UnpackResponseSessionFinishedMessage);
      return 1;
    }

    else
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
    }
  }

  else
  {
    v74 = sub_2146D9B88();
    v75 = v99;
    sub_214081EB0(v62, v99, type metadata accessor for UnpackResponseSessionFinishedMessage);
    if (os_log_type_enabled(v48, v74))
    {
      v110 = v48;
      v76 = 7104878;
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v114 = v78;
      *v77 = 136446466;
      swift_getObjectType();
      v79 = sub_2140901DC();
      if (v79)
      {
        v113 = v79;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F60, &qword_2146F08F0);
        v80 = sub_2146D9618();
        v82 = v81;
      }

      else
      {
        v82 = 0xE300000000000000;
        v80 = 7104878;
      }

      v83 = v97;
      v84 = sub_2144AEA38(v80, v82, &v114);

      *(v77 + 4) = v84;
      *(v77 + 12) = 2082;
      v85 = v103;
      sub_214081EB0(v99, v103, type metadata accessor for UnpackResponseSessionFinishedMessage);
      v86 = v112;
      v98(v85, 0, 1, v112);
      v87 = v102;
      sub_213FB2E54(v85, v102, &qword_27C917F70, &qword_21477E708);
      if ((*(v95 + 48))(v87, 1, v86) == 1)
      {
        sub_213FB2DF4(v87, &qword_27C917F70, &qword_21477E708);
        v88 = 0xE300000000000000;
      }

      else
      {
        sub_2146A2684(v87, v63);
        sub_214081EB0(v63, v83, type metadata accessor for UnpackResponseSessionFinishedMessage);
        v76 = sub_2146D9618();
        v88 = v89;
        sub_214081F18(v63, type metadata accessor for UnpackResponseSessionFinishedMessage);
      }

      sub_213FB2DF4(v85, &qword_27C917F70, &qword_21477E708);
      sub_214081F18(v99, type metadata accessor for UnpackResponseSessionFinishedMessage);
      v90 = sub_2144AEA38(v76, v88, &v114);

      *(v77 + 14) = v90;
      _os_log_impl(&dword_213FAF000, v110, v74, "Could not find current session: %{public}s with message: %{public}s", v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216056AC0](v78, -1, -1);
      MEMORY[0x216056AC0](v77, -1, -1);

      sub_214081F18(v101, type metadata accessor for UnpackResponseSessionFinishedMessage);
    }

    else
    {

      sub_214081F18(v75, type metadata accessor for UnpackResponseSessionFinishedMessage);
      sub_214081F18(v62, type metadata accessor for UnpackResponseSessionFinishedMessage);
    }

    return 0;
  }

  return result;
}

void sub_2146A1420(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v53 - v6;
  v8 = sub_2146D8B88();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  v13 = sub_21408FD98();
  if (v13 == 7)
  {
    v21 = *(*(v1 + 80) + 16);

    sub_2146D9C48();

    if (v58)
    {
      v22 = sub_2146D9B88();
      if (qword_280B35360 != -1)
      {
        swift_once();
      }

      v23 = qword_280B35410;
      if (os_log_type_enabled(qword_280B35410, v22))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v58 = v25;
        *v24 = 136446210;
        v26 = sub_2140901DC();
        if (v26)
        {
          v57 = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F60, &qword_2146F08F0);
          v27 = sub_2146D9618();
          v29 = v28;
        }

        else
        {
          v27 = 7104878;
          v29 = 0xE300000000000000;
        }

        v38 = sub_2144AEA38(v27, v29, &v58);

        *(v24 + 4) = v38;
        _os_log_impl(&dword_213FAF000, v23, v22, "Received handle event when no session was present: %{public}s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x216056AC0](v25, -1, -1);
        MEMORY[0x216056AC0](v24, -1, -1);
      }
    }

    else if ((sub_2146A088C(a1) & 1) == 0)
    {
      v31 = sub_2146D9B88();
      if (qword_280B35360 != -1)
      {
        swift_once();
      }

      v56 = qword_280B35410;
      v32 = os_log_type_enabled(qword_280B35410, v31);
      v55 = 0;
      if (v32)
      {
        v54 = v31;
        v33 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v58 = v53;
        *v33 = 136446210;
        v34 = sub_2140901DC();
        if (v34)
        {
          v57 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F60, &qword_2146F08F0);
          v35 = sub_2146D9618();
          v37 = v36;
        }

        else
        {
          v35 = 7104878;
          v37 = 0xE300000000000000;
        }

        v39 = sub_2144AEA38(v35, v37, &v58);

        *(v33 + 4) = v39;
        _os_log_impl(&dword_213FAF000, v56, v54, "Received session response for unpacker: %{public}s", v33, 0xCu);
        v40 = v53;
        __swift_destroy_boxed_opaque_existential_1(v53);
        MEMORY[0x216056AC0](v40, -1, -1);
        MEMORY[0x216056AC0](v33, -1, -1);
      }

      sub_2140902B8(v7);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_213FB2DF4(v7, &unk_27C904F30, &unk_2146EFA20);
      }

      else
      {
        (*(v9 + 32))(v12, v7, v8);
        v41 = sub_2146D9B88();
        v42 = os_log_type_enabled(v56, v41);
        if (v42)
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v58 = v44;
          *v43 = 136446210;
          v45 = sub_2140901DC();
          if (v45)
          {
            v57 = v45;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F60, &qword_2146F08F0);
            v46 = sub_2146D9618();
            v48 = v47;
          }

          else
          {
            v46 = 7104878;
            v48 = 0xE300000000000000;
          }

          v49 = sub_2144AEA38(v46, v48, &v58);

          *(v43 + 4) = v49;
          _os_log_impl(&dword_213FAF000, v56, v41, "    For session: %{public}s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v44);
          MEMORY[0x216056AC0](v44, -1, -1);
          v42 = MEMORY[0x216056AC0](v43, -1, -1);
        }

        v50 = *(v2 + 80);
        v51 = v50[2];
        MEMORY[0x28223BE20](v42);
        *(&v53 - 2) = v50;
        *(&v53 - 1) = v12;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917F60, &unk_21477E6F8);
        sub_2146D9C48();

        v52 = v58;
        if (v58)
        {
          v58 = a1;
          v52(&v58);
          sub_21430299C(v52);
        }

        (*(v9 + 8))(v12, v8);
      }
    }
  }

  else if (v13 == 13)
  {
    sub_2146A1BDC();
    if (qword_280B34F40[0] != -1)
    {
      swift_once();
    }

    v14 = sub_2146D9208();
    __swift_project_value_buffer(v14, qword_280B34D98);
    swift_unknownObjectRetain();
    v56 = sub_2146D91E8();
    v15 = sub_2146D9BA8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v56, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v58 = v17;
      *v16 = 136315138;
      LOBYTE(v57) = sub_21408FFD8();
      v18 = sub_2146D9618();
      v20 = sub_2144AEA38(v18, v19, &v58);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_213FAF000, v56, v15, "Got an XPC Error: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x216056AC0](v17, -1, -1);
      MEMORY[0x216056AC0](v16, -1, -1);
    }

    else
    {
      v30 = v56;
    }
  }
}

void sub_2146A1BDC()
{
  v1 = *(v0 + 16);
  if (xpc_connection_copy_invalidation_reason())
  {
    v2 = sub_2146D96E8();
    v4 = v3;
    if (qword_280B34F40[0] != -1)
    {
      swift_once();
    }

    v5 = sub_2146D9208();
    __swift_project_value_buffer(v5, qword_280B34D98);

    oslog = sub_2146D91E8();
    v6 = sub_2146D9BA8();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      v9 = sub_2144AEA38(v2, v4, &v11);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_213FAF000, oslog, v6, "XPC Connection invalid with reason: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x216056AC0](v8, -1, -1);
      MEMORY[0x216056AC0](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2146A1D78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 80);

  return swift_deallocClassInstance();
}

__n128 sub_2146A1E58@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  result = *(*v1 + 40);
  v4 = *(*v1 + 56);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v2 + 72);
  return result;
}

void sub_2146A1E74()
{
  v1 = *(*v0 + 16);
  v2 = swift_allocObject();
  swift_weakInit();
  v4[4] = sub_2146A1F78;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_213FB14A8;
  v4[3] = &block_descriptor_3;
  v3 = _Block_copy(v4);

  xpc_connection_set_event_handler(v1, v3);
  _Block_release(v3);
  xpc_connection_activate(v1);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2146A1F98(uint64_t a1, char a2, void *a3)
{
  v7 = sub_2146D8B88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917F98, &qword_21477E748);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = v56 - v16;
  v61 = *(a1 + 16);
  if (!v61)
  {
    goto LABEL_22;
  }

  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v60 = *(v15 + 72);
  v62 = a1;
  v56[0] = v19;
  v56[1] = v3;
  sub_213FB2E54(a1 + v19, v56 - v16, &qword_27C917F98, &qword_21477E748);
  v57 = v8;
  v20 = *(v8 + 32);
  v64 = v7;
  v20(v11, v17, v7);
  v59 = v18;
  v63 = *&v17[v18];
  v21 = *a3;
  v22 = sub_21408C470(v11);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_214050C88(v27, a2 & 1);
    v29 = *a3;
    v22 = sub_21408C470(v11);
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_5:
      sub_2146DA8D8();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v35 = v22;
  sub_214482F70();
  v22 = v35;
  if (v28)
  {
LABEL_9:
    v31 = swift_allocError();
    swift_willThrow();
    v67 = v31;
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    v33 = swift_dynamicCast();
    v34 = v57;
    if ((v33 & 1) == 0)
    {

      (*(v34 + 8))(v11, v64);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v36 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  v37 = v36[6];
  v58 = *(v57 + 72);
  v38 = v22;
  v20((v37 + v58 * v22), v11, v64);
  *(v36[7] + 16 * v38) = v63;
  v39 = v36[2];
  v26 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (!v26)
  {
    v36[2] = v40;
    if (v61 == 1)
    {
LABEL_22:

      return;
    }

    v41 = v62 + v60 + v56[0];
    v42 = 1;
    while (v42 < *(v62 + 16))
    {
      sub_213FB2E54(v41, v17, &qword_27C917F98, &qword_21477E748);
      v20(v11, v17, v64);
      v63 = *&v17[v59];
      v43 = *a3;
      v44 = sub_21408C470(v11);
      v46 = v43[2];
      v47 = (v45 & 1) == 0;
      v26 = __OFADD__(v46, v47);
      v48 = v46 + v47;
      if (v26)
      {
        goto LABEL_23;
      }

      v49 = v45;
      if (v43[3] < v48)
      {
        sub_214050C88(v48, 1);
        v50 = *a3;
        v44 = sub_21408C470(v11);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v49)
      {
        goto LABEL_9;
      }

      v52 = *a3;
      *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
      v53 = v44;
      v20((v52[6] + v58 * v44), v11, v64);
      *(v52[7] + 16 * v53) = v63;
      v54 = v52[2];
      v26 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v42;
      v52[2] = v55;
      v41 += v60;
      if (v61 == v42)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_2146D9EF8();
  MEMORY[0x2160545D0](0xD00000000000001BLL, 0x80000002147A7110);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](39, 0xE100000000000000);
  sub_2146DA018();
  __break(1u);
}

uint64_t sub_2146A2504(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_2146D8B88();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a3;
  v9 = a3[1];
  (*(v11 + 16))(v8, a2);
  swift_beginAccess();
  sub_21430298C(v10);
  sub_214480264(v10, v9, v8);
  return swift_endAccess();
}

uint64_t sub_2146A2614@<X0>(BOOL *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(*(v1 + 24) + 16) == 0;
  return result;
}

uint64_t sub_2146A2684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnpackResponseSessionFinishedMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2146A26E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2146A04B4(*(v1 + 16), *(v1 + 24));
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_2146A2718()
{
  v1 = *(sub_2146D8B88() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2146A2504(v3, v0 + v2, v4);
}

uint64_t sub_2146A27A8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_213FB34FC(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_2146A2858(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_2146A2884(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2146A28CC(uint64_t a1)
{
  v15 = a1;
  v16 = sub_2146D9C28();
  v1 = *(v16 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v16);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2146D9C18();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_2146D93D8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v14[0] = sub_214480EA8();
  sub_2146D93C8();
  v17 = MEMORY[0x277D84F90];
  sub_2146A2884(&qword_280B34D60, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914338, &qword_21474BE38);
  v9 = v14[1];
  sub_21432076C(&qword_280B34CA0, &qword_27C914338, &qword_21474BE38);
  v10 = v15;
  sub_2146D9E48();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v16);
  *(v9 + 16) = sub_2146D9C58();
  if (*(v10 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9042A0, &unk_2146EAE50);
    v11 = sub_2146DA058();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v17 = v11;

  sub_2146A1F98(v12, 1, &v17);
  *(v9 + 24) = v17;
  return v9;
}

id sub_2146A2BBC(_xpc_connection_s *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917F88, &unk_21477E738);
  swift_allocObject();
  *(v3 + 80) = sub_2146A28CC(MEMORY[0x277D84F90]);
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = a2;
  v7 = sub_2146D95B8();
  v9 = v8;
  if (v7 == sub_2146D95B8() && v9 == v10)
  {
    swift_unknownObjectRetain();
    v16 = a3;
    v17 = a2;

    goto LABEL_9;
  }

  v12 = sub_2146DA6A8();
  swift_unknownObjectRetain();
  v13 = a3;
  v14 = a2;

  if (v12)
  {
LABEL_9:
    xpc_connection_get_audit_token();
    pid = xpc_connection_get_pid(a1);
    *(v3 + 40) = 0u;
    *(v3 + 56) = 0u;
    *(v3 + 72) = pid;
    v18 = *MEMORY[0x277D85DE8];
    return v3;
  }

  swift_unknownObjectRetain();
  result = [v14 UTF8String];
  if (result)
  {
    blastdoor_xpc_connection_set_instance(a1);
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void blastdoor_xpc_connection_set_instance(void *a1)
{
  v1 = a1;
  xpc_connection_set_instance();
}

uint64_t sub_2146A2DF0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2146A2E20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2146A2E50()
{
  v1 = *(v0 + 32);
  sub_213FDCA18(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_2146A2E84()
{
  v1 = *(v0 + 48);
  sub_213FDCA18(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_2146A2EB8()
{
  v1 = *(v0 + 64);
  sub_213FDCA18(v1, *(v0 + 72));
  return v1;
}

uint64_t sub_2146A2EEC()
{
  v1 = *(v0 + 80);
  sub_213FDCA18(v1, *(v0 + 88));
  return v1;
}

uint64_t sub_2146A2F20()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t sub_2146A2F50()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t sub_2146A2F5C()
{
  v1 = *(v0 + 128);
  sub_213FDCA18(v1, *(v0 + 136));
  return v1;
}

uint64_t sub_2146A2F98()
{
  result = *(v0 + 152);
  v2 = *(v0 + 160);
  return result;
}

uint64_t sub_2146A2FA4()
{
  result = *(v0 + 168);
  v2 = *(v0 + 176);
  return result;
}

uint64_t sub_2146A2FB0()
{
  result = *(v0 + 272);
  v2 = *(v0 + 280);
  return result;
}

uint64_t sub_2146A2FC4()
{
  result = *(v0 + 296);
  v2 = *(v0 + 304);
  return result;
}

uint64_t sub_2146A2FD8()
{
  result = *(v0 + 320);
  v2 = *(v0 + 328);
  return result;
}

uint64_t sub_2146A3004()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return v1;
}

uint64_t sub_2146A3034()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  return v1;
}

uint64_t sub_2146A3064(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917FB0, &qword_21477E750);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v39 - v6;
  v8 = *v1;
  v86 = v1[1];
  v87 = v8;
  v9 = v1[2];
  v84 = v1[3];
  v85 = v9;
  v10 = v1[4];
  v82 = v1[5];
  v83 = v10;
  v11 = v1[7];
  v81 = v1[6];
  v12 = v1[8];
  v78 = v1[9];
  v79 = v11;
  v13 = v1[10];
  v76 = v1[11];
  v77 = v12;
  v14 = v1[12];
  v74 = v1[13];
  v75 = v13;
  v72 = v1[14];
  v73 = v14;
  v91 = *(v1 + 120);
  v15 = v1[17];
  v70 = v1[16];
  v71 = v15;
  v60 = *(v1 + 144);
  v58 = v1[19];
  v59 = *(v1 + 160);
  v68 = v1[21];
  v69 = *(v1 + 176);
  v67 = *(v1 + 177);
  v66 = *(v1 + 178);
  v65 = *(v1 + 179);
  v16 = v1[24];
  v63 = v1[23];
  v64 = v16;
  v17 = v1[26];
  v61 = v1[25];
  v62 = v17;
  v39[1] = v1[27];
  v40 = *(v1 + 224);
  v18 = v1[30];
  v41 = v1[29];
  v42 = v18;
  v43 = *(v1 + 248);
  v19 = v1[33];
  v45 = v1[32];
  v44 = v19;
  v46 = v1[34];
  v47 = *(v1 + 280);
  v20 = v1[37];
  v48 = v1[36];
  v49 = v20;
  v50 = *(v1 + 304);
  v21 = v1[40];
  v51 = v1[39];
  v52 = v21;
  v53 = *(v1 + 328);
  v22 = v1[43];
  v54 = v1[42];
  v55 = v22;
  v23 = v1[45];
  v56 = v1[44];
  v57 = v23;
  v24 = v1[47];
  v80 = v1[46];
  v26 = v1[48];
  v25 = v1[49];
  v27 = a1[3];
  v28 = a1[4];
  v29 = a1;
  v31 = v30;
  __swift_project_boxed_opaque_existential_1(v29, v27);
  sub_2146A3C08();
  sub_2146DAA28();
  LOBYTE(v89) = 0;
  v32 = v7;
  v33 = v88;
  sub_2146DA2B8();
  if (v33)
  {
    return (*(v4 + 8))(v7, v31);
  }

  v35 = v82;
  v36 = v83;
  v87 = v24;
  v88 = v25;
  v37 = v81;
  v86 = v26;
  LOBYTE(v89) = 1;
  sub_2146DA2B8();
  v89 = v36;
  v90 = v35;
  v92 = 2;
  sub_213FDCA18(v36, v35);
  v38 = sub_214061684();
  sub_2146DA308();
  sub_213FDC6BC(v89, v90);
  v89 = v37;
  v90 = v79;
  v92 = 3;
  sub_213FDCA18(v37, v79);
  sub_2146DA308();
  sub_213FDC6BC(v89, v90);
  v89 = v77;
  v90 = v78;
  v92 = 4;
  sub_213FDCA18(v77, v78);
  sub_2146DA308();
  sub_213FDC6BC(v89, v90);
  v89 = v75;
  v90 = v76;
  v92 = 5;
  sub_213FDCA18(v75, v76);
  sub_2146DA308();
  v85 = v38;
  sub_213FDC6BC(v89, v90);
  LOBYTE(v89) = 6;
  sub_2146DA2B8();
  LOBYTE(v89) = 7;
  sub_2146DA318();
  v89 = v70;
  v90 = v71;
  v92 = 8;
  sub_213FDCA18(v70, v71);
  sub_2146DA308();
  sub_213FDC6BC(v89, v90);
  LOBYTE(v89) = 9;
  sub_2146DA318();
  LOBYTE(v89) = 10;
  sub_2146DA2C8();
  LOBYTE(v89) = 11;
  sub_2146DA2C8();
  LOBYTE(v89) = 12;
  sub_2146DA2C8();
  LOBYTE(v89) = 13;
  sub_2146DA2B8();
  v89 = v61;
  v90 = v62;
  v92 = 14;
  sub_213FDCA18(v61, v62);
  sub_2146DA308();
  sub_213FDC6BC(v89, v90);
  LOBYTE(v89) = 15;
  sub_2146DA2C8();
  LOBYTE(v89) = 16;
  sub_2146DA2E8();
  LOBYTE(v89) = 17;
  sub_2146DA2F8();
  v89 = v41;
  v92 = 18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_214045A54(&qword_280B30BA0);
  sub_2146DA308();
  LOBYTE(v89) = 19;
  sub_2146DA2F8();
  v89 = v44;
  v92 = 20;
  sub_2146DA308();
  v89 = v45;
  v92 = 21;
  sub_2146DA308();
  LOBYTE(v89) = 22;
  sub_2146DA2F8();
  v89 = v48;
  v92 = 23;
  sub_2146DA308();
  LOBYTE(v89) = 24;
  sub_2146DA2F8();
  v89 = v51;
  v92 = 25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904CA0, &qword_2146EE770);
  v85 = sub_2142FFE4C(&qword_27C908A60);
  sub_2146DA308();
  LOBYTE(v89) = 26;
  sub_2146DA2F8();
  v89 = v54;
  v92 = 27;
  sub_2146DA308();
  v89 = v55;
  v92 = 28;
  sub_2146DA308();
  v89 = v56;
  v92 = 29;
  sub_2146DA308();
  v89 = v57;
  v92 = 30;
  sub_2146DA308();
  LOBYTE(v89) = 31;
  sub_2146DA2B8();
  LOBYTE(v89) = 32;
  sub_2146DA2B8();
  return (*(v4 + 8))(v32, v31);
}

unint64_t sub_2146A3C08()
{
  result = qword_27C917FB8;
  if (!qword_27C917FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917FB8);
  }

  return result;
}

uint64_t sub_2146A3C5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917FC0, qword_21477E758);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v47 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v178 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2146A3C08();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v178);
  }

  v98 = a2;
  LOBYTE(v100) = 0;
  v13 = sub_2146DA0F8();
  v96 = v14;
  LOBYTE(v100) = 1;
  v15 = sub_2146DA0F8();
  v89 = v16;
  v17 = v15;
  LOBYTE(v99[0]) = 2;
  sub_21406116C();
  sub_2146DA148();
  v87 = v100;
  v88 = v101;
  LOBYTE(v99[0]) = 3;
  sub_2146DA148();
  v85 = v100;
  v86 = v101;
  LOBYTE(v99[0]) = 4;
  sub_2146DA148();
  v83 = v100;
  v84 = v101;
  LOBYTE(v99[0]) = 5;
  sub_2146DA148();
  v81 = v100;
  v82 = v101;
  LOBYTE(v100) = 6;
  v95 = sub_2146DA0F8();
  v80 = v18;
  LOBYTE(v100) = 7;
  v94 = sub_2146DA158();
  v68 = 0;
  v177 = v19 & 1;
  LOBYTE(v99[0]) = 8;
  sub_2146DA148();
  v97 = 0;
  v78 = v100;
  v79 = v101;
  LOBYTE(v100) = 9;
  v20 = sub_2146DA158();
  v97 = 0;
  v21 = v20;
  v172 = v22 & 1;
  LOBYTE(v100) = 10;
  v93 = sub_2146DA108();
  v97 = 0;
  LOBYTE(v100) = 11;
  v92 = sub_2146DA108();
  v97 = 0;
  LOBYTE(v100) = 12;
  v91 = sub_2146DA108();
  v97 = 0;
  LOBYTE(v100) = 13;
  v90 = sub_2146DA0F8();
  v77 = v23;
  v97 = 0;
  LOBYTE(v99[0]) = 14;
  sub_2146DA148();
  v97 = 0;
  v75 = v101;
  v76 = v100;
  LOBYTE(v100) = 15;
  v25 = sub_2146DA108();
  v97 = 0;
  v26 = v25;
  LOBYTE(v100) = 16;
  v67 = sub_2146DA128();
  v97 = 0;
  v174 = v27 & 1;
  LOBYTE(v100) = 17;
  v66 = sub_2146DA138();
  v97 = 0;
  v171 = v28 & 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v99[0]) = 18;
  v64 = sub_214045A54(&qword_280B2FE60);
  v65 = v29;
  v30 = v97;
  sub_2146DA148();
  v97 = v30;
  if (v30)
  {
    (*(v6 + 8))(v9, v5);
    LODWORD(v90) = 0;
    v93 = 0;
    v91 = 0;
    LODWORD(v94) = 0;
    LODWORD(v95) = 0;
    LODWORD(v98) = 0;
    v92 = 1;
  }

  else
  {
    v74 = v100;
    LOBYTE(v100) = 19;
    v63 = sub_2146DA138();
    v97 = 0;
    v169 = v31 & 1;
    LOBYTE(v99[0]) = 20;
    sub_2146DA148();
    v97 = 0;
    v73 = v100;
    LOBYTE(v99[0]) = 21;
    sub_2146DA148();
    v97 = 0;
    v72 = v100;
    LOBYTE(v100) = 22;
    v62 = sub_2146DA138();
    v97 = 0;
    v167 = v32 & 1;
    LOBYTE(v99[0]) = 23;
    sub_2146DA148();
    v97 = 0;
    v71 = v100;
    LOBYTE(v100) = 24;
    v61 = sub_2146DA138();
    v97 = 0;
    v165 = v33 & 1;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904CA0, &qword_2146EE770);
    LOBYTE(v99[0]) = 25;
    v35 = sub_2142FFE4C(&qword_27C908A50);
    v69 = v34;
    v60 = v35;
    v36 = v97;
    sub_2146DA148();
    v97 = v36;
    if (!v36)
    {
      v70 = v100;
      LOBYTE(v100) = 26;
      v59 = sub_2146DA138();
      v97 = 0;
      v163 = v37 & 1;
      LOBYTE(v99[0]) = 27;
      sub_2146DA148();
      v97 = 0;
      v69 = v100;
      LOBYTE(v99[0]) = 28;
      sub_2146DA148();
      v97 = 0;
      v60 = v100;
      LOBYTE(v99[0]) = 29;
      sub_2146DA148();
      v68 = 0;
      v58 = v100;
      LOBYTE(v99[0]) = 30;
      sub_2146DA148();
      v97 = 0;
      v65 = v100;
      LOBYTE(v100) = 31;
      v57 = sub_2146DA0F8();
      v64 = v38;
      v97 = 0;
      v161 = 32;
      v39 = sub_2146DA0F8();
      v55 = v40;
      v56 = v39;
      v97 = 0;
      (*(v6 + 8))(v9, v5);
      v99[0] = v13;
      v99[1] = v96;
      v53 = v17;
      v99[2] = v17;
      v99[3] = v89;
      v99[4] = v87;
      v99[5] = v88;
      v99[6] = v85;
      v99[7] = v86;
      v99[8] = v83;
      v99[9] = v84;
      v99[10] = v81;
      v99[11] = v82;
      v99[12] = v95;
      v99[13] = v80;
      v99[14] = v94;
      v51 = v26;
      v52 = v177;
      LOBYTE(v99[15]) = v177;
      HIDWORD(v99[15]) = *&v176[3];
      *(&v99[15] + 1) = *v176;
      v99[16] = v78;
      v99[17] = v79;
      LOBYTE(v99[18]) = v26;
      *(&v99[18] + 1) = *v175;
      HIDWORD(v99[18]) = *&v175[3];
      v99[19] = v67;
      v50 = v174;
      LOBYTE(v99[20]) = v174;
      *(&v99[20] + 1) = *v173;
      HIDWORD(v99[20]) = *&v173[3];
      v48 = v21;
      v99[21] = v21;
      HIDWORD(v47) = v172;
      LOBYTE(v99[22]) = v172;
      v41 = v93;
      BYTE1(v99[22]) = v93;
      v42 = v92;
      BYTE2(v99[22]) = v92;
      BYTE3(v99[22]) = v91;
      v99[23] = v90;
      v99[24] = v77;
      v99[25] = v76;
      v99[26] = v75;
      v99[27] = v66;
      LODWORD(v68) = v171;
      LOBYTE(v99[28]) = v171;
      HIDWORD(v99[28]) = *&v170[3];
      *(&v99[28] + 1) = *v170;
      v99[29] = v74;
      v99[30] = v63;
      v54 = v169;
      LOBYTE(v99[31]) = v169;
      HIDWORD(v99[31]) = *&v168[3];
      *(&v99[31] + 1) = *v168;
      v99[32] = v72;
      v99[33] = v73;
      v99[34] = v62;
      *(&v99[35] + 1) = *v166;
      *(&v99[38] + 1) = *v164;
      v49 = v167;
      LOBYTE(v99[35]) = v167;
      HIDWORD(v99[35]) = *&v166[3];
      v43 = v70;
      v99[36] = v71;
      v99[37] = v61;
      *(&v99[41] + 1) = *v162;
      v44 = v165;
      LOBYTE(v99[38]) = v165;
      HIDWORD(v99[38]) = *&v164[3];
      v99[39] = v70;
      v45 = v59;
      v99[40] = v59;
      HIDWORD(v99[41]) = *&v162[3];
      v46 = v163;
      LOBYTE(v99[41]) = v163;
      v99[42] = v69;
      v99[43] = v60;
      v99[44] = v58;
      v99[45] = v65;
      v99[46] = v57;
      v99[47] = v64;
      v99[48] = v56;
      v99[49] = v55;
      memcpy(v98, v99, 0x190uLL);
      sub_2146A51CC(v99, &v100);
      __swift_destroy_boxed_opaque_existential_1(v178);
      v100 = v13;
      v101 = v96;
      v102 = v53;
      v103 = v89;
      v104 = v87;
      v105 = v88;
      v106 = v85;
      v107 = v86;
      v108 = v83;
      v109 = v84;
      v110 = v81;
      v111 = v82;
      v112 = v95;
      v113 = v80;
      v114 = v94;
      v115 = v52;
      v117 = v78;
      v118 = v79;
      v119 = v51;
      v121 = v67;
      v122 = v50;
      v124 = v48;
      v125 = BYTE4(v47);
      v126 = v41;
      v127 = v42;
      *v116 = *v176;
      *&v116[3] = *&v176[3];
      *v120 = *v175;
      *&v120[3] = *&v175[3];
      *v123 = *v173;
      *&v123[3] = *&v173[3];
      v128 = v91;
      v129 = v90;
      v130 = v77;
      v131 = v76;
      v132 = v75;
      v133 = v66;
      v134 = v68;
      *&v135[3] = *&v170[3];
      *v135 = *v170;
      v136 = v74;
      v137 = v63;
      v138 = v54;
      *&v139[3] = *&v168[3];
      *v139 = *v168;
      v140 = v72;
      v141 = v73;
      v142 = v62;
      v143 = v49;
      *v144 = *v166;
      *&v144[3] = *&v166[3];
      v145 = v71;
      v146 = v61;
      v147 = v44;
      *v148 = *v164;
      *&v148[3] = *&v164[3];
      v149 = v43;
      v150 = v45;
      v151 = v46;
      *v152 = *v162;
      *&v152[3] = *&v162[3];
      v153 = v69;
      v154 = v60;
      v155 = v58;
      v156 = v65;
      v157 = v57;
      v158 = v64;
      v159 = v56;
      v160 = v55;
      return sub_2146A5204(&v100);
    }

    (*(v6 + 8))(v9, v5);
    LODWORD(v95) = 0;
    LODWORD(v98) = 0;
    v92 = 1;
    LODWORD(v90) = 1;
    v93 = 1;
    v91 = 1;
    LODWORD(v94) = 1;
  }

  v24 = v68;
  __swift_destroy_boxed_opaque_existential_1(v178);

  if (v24)
  {
    if (!v92)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  if (v92)
  {
LABEL_6:
    sub_213FDC6BC(v87, v88);
  }

LABEL_14:
  sub_213FDC6BC(v85, v86);
  sub_213FDC6BC(v83, v84);
  sub_213FDC6BC(v81, v82);

  sub_213FDC6BC(v78, v79);

  result = sub_213FDC6BC(v76, v75);
  if (v90)
  {

    if (v93)
    {
      goto LABEL_16;
    }

LABEL_8:
    if (!v91)
    {
      goto LABEL_17;
    }

LABEL_9:

    if (v94)
    {
      goto LABEL_18;
    }

LABEL_10:
    if (!v95)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (!v93)
  {
    goto LABEL_8;
  }

LABEL_16:

  if (v91)
  {
    goto LABEL_9;
  }

LABEL_17:
  if (!v94)
  {
    goto LABEL_10;
  }

LABEL_18:

  if ((v95 & 1) == 0)
  {
LABEL_19:
    if (!v98)
    {
      return result;
    }
  }

LABEL_11:

  if ((v98 & 1) == 0)
  {
    return result;
  }
}

uint64_t sub_2146A526C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 400))
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

uint64_t sub_2146A52C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 392) = 0;
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
    *(result + 376) = 0u;
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
      *(result + 400) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 400) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2146A5394(char *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  sub_2146A58F4(a1, a2);
  return v4;
}

void sub_2146A53EC(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = sub_2146A5650();
  if (!v4)
  {
    a1(v9);
    if (*(v3 + 40))
    {
      sub_2146D9B88();
      if (qword_280B35360 != -1)
      {
        swift_once();
      }

      sub_2146D91D8();
    }

    else
    {
      v10 = *(v3 + 32);
      v11 = sandbox_extension_release();
      if (v11 == sub_2146D93B8())
      {
        *(v3 + 32) = 0;
        *(v3 + 40) = 1;
        return;
      }

      v12 = MEMORY[0x2160542A0]();
      sub_21408FA04();
      v13 = swift_allocError();
      *v14 = v12;
      *(v14 + 4) = 0;
      swift_willThrow();
      (*(*(a2 - 8) + 8))(a3, a2);
      if (*(v5 + 40))
      {
        sub_2146D9B88();
        if (qword_280B35360 != -1)
        {
          swift_once();
        }

        sub_2146D91D8();
      }

      else
      {
        v15 = *(v5 + 32);
        v16 = sandbox_extension_release();
        if (v16 != sub_2146D93B8())
        {
          v17 = MEMORY[0x2160542A0]();
          sub_21408FA04();
          swift_allocError();
          *v18 = v17;
          *(v18 + 4) = 0;
          swift_willThrow();

          return;
        }

        *(v5 + 32) = 0;
        *(v5 + 40) = 1;
      }

      swift_willThrow();
    }
  }
}

uint64_t sub_2146A5650()
{
  if (*(v0 + 40) == 1)
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
    sub_2146D9628();
    v3 = sandbox_extension_consume();

    if (v3 == -1)
    {
      v5 = MEMORY[0x2160542A0](result);
      sub_21408FA04();
      swift_allocError();
      *v6 = v5;
      *(v6 + 4) = 0;
      return swift_willThrow();
    }

    else
    {
      *(v0 + 32) = v3;
      *(v0 + 40) = 0;
    }
  }

  else
  {
    sub_2146D9B88();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    return sub_2146D91D8();
  }

  return result;
}

uint64_t sub_2146A5764()
{
  if (*(v0 + 40))
  {
    sub_2146D9B88();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    return sub_2146D91D8();
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = sandbox_extension_release();
    result = sub_2146D93B8();
    if (v3 == result)
    {
      *(v0 + 32) = 0;
      *(v0 + 40) = 1;
    }

    else
    {
      v4 = MEMORY[0x2160542A0]();
      sub_21408FA04();
      swift_allocError();
      *v5 = v4;
      *(v5 + 4) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_2146A58AC()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t *sub_2146A58F4(char *a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = *a1;
  v6 = *a2;
  v2[4] = 0;
  *(v2 + 40) = 1;
  if (v5)
  {
    if (*MEMORY[0x277D861C0])
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  result = *MEMORY[0x277D861B8];
  if (!*MEMORY[0x277D861B8])
  {
    __break(1u);
    return result;
  }

LABEL_5:
  sub_2146D96E8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v8 = sub_2146D9558();
  v10 = v9;

  MEMORY[0x2160545D0](v8, v10);

  v11 = *MEMORY[0x277D861E8];
  sub_2146D9628();

  sub_2146D9628();

  v12 = sandbox_extension_issue_file();

  if (v12)
  {
    v3[2] = sub_2146D96E8();
    v3[3] = v13;
    free(v12);
  }

  else
  {
    sub_21408FA04();
    swift_allocError();
    *v14 = 0;
    *(v14 + 4) = 1;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t sub_2146A5B00()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_2146A5B20()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2146A5B70(void *a1)
{
  v2 = v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146DAA18();
  v4 = *(v1 + 16);
  v5 = *(v2 + 24);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_2146DA708();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_2146A5C10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2146A5CDC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2146A5C3C(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146DAA18();
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_2146DA708();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_2146A5CDC(uint64_t *a1)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146DA9E8();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v5 = sub_2146DA6B8();
    v7 = v6;
    type metadata accessor for SandboxExtension();
    v3 = swift_allocObject();
    *(v3 + 24) = v7;
    *(v3 + 32) = 0;
    *(v3 + 40) = 1;
    *(v3 + 16) = v5;
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unint64_t sub_2146A5DCC()
{
  result = qword_27C917FC8;
  if (!qword_27C917FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917FC8);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SandboxExtensionError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SandboxExtensionError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_2146A5F04(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2146A5F20(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_2146A5F50()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 40);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146A5FCC()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 80);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146A6048()
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

uint64_t sub_2146A60D0()
{
  v1 = *(v0 + 192);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 184);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

unint64_t sub_2146A6158@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 3072;
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

unint64_t sub_2146A62C0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 3072;
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

uint64_t sub_2146A6428@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2146A6474(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);

  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  return result;
}

uint64_t sub_2146A64D0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v4 = *(v1 + 80);
  v3 = *(v1 + 88);
  v5 = *(v1 + 96);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2146A651C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[4].n128_u64[1];
  v7 = v1[5].n128_u64[1];

  result = *a1;
  v1[4] = *a1;
  v1[5].n128_u64[0] = v3;
  v1[5].n128_u64[1] = v4;
  v1[6].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146A6578@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2146A65D0(__n128 *a1)
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

uint64_t sub_2146A6638@<X0>(uint64_t a1@<X8>)
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

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146A6690(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 176);
  v7 = *(v1 + 184);
  v8 = *(v1 + 192);

  sub_214032564(v7, v8);
  result = *a1;
  *(v1 + 168) = *a1;
  *(v1 + 184) = v3;
  *(v1 + 192) = v4;
  *(v1 + 200) = v5;
  return result;
}

uint64_t sub_2146A6728()
{
  v1 = *(v0 + 8);
  sub_213FDCA18(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_2146A675C(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_2146A67B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    *a2 = *(a1 + 40);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146A6824(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2146A68D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v12 = *(v3 + 56);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 48);

    *(v3 + 40) = a1;
    *(v3 + 48) = a2;
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

uint64_t (*sub_2146A6A1C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 48);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 40);
    a1[1] = v3;

    return sub_2146A6AB8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146A6AB8(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    v14 = *a1;
    v15 = v3;
    v10 = *(v4 + 24);
    v11 = *(v4 + 32);
    v16 = *(v4 + 56);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = a1[3];

      *(v4 + 40) = v5;
      *(v4 + 48) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v14 = *a1;
  v15 = v3;
  v7 = *(v4 + 24);
  v6 = *(v4 + 32);
  v16 = *(v4 + 56);
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

  *(v4 + 40) = v5;
  *(v4 + 48) = v3;
}

uint64_t sub_2146A6CD8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);

  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  *(a2 + 40) = v6;
  *(a2 + 48) = v5;
  *(a2 + 56) = v7;
  return result;
}

void (*sub_2146A6D50(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = *(v1 + 56);
  *v4 = *(v1 + 24);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2146A6DE8;
}

void sub_2146A6DE8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 32);
  v10 = *(v3 + 48);
  if (a2)
  {
    v11 = (*a1)[3];

    *(v3 + 24) = v5;
    *(v3 + 32) = v4;
    *(v3 + 40) = v7;
    *(v3 + 48) = v6;
    *(v3 + 56) = v8;
    v12 = v2[1];
    v13 = v2[3];
  }

  else
  {
    v14 = *(v3 + 32);

    *(v3 + 24) = v5;
    *(v3 + 32) = v4;
    *(v3 + 40) = v7;
    *(v3 + 48) = v6;
    *(v3 + 56) = v8;
  }

  free(v2);
}

uint64_t sub_2146A6EB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    *a2 = *(a1 + 80);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146A6F28(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2146A6FD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 64);
  v7 = *(v2 + 72);
  v12 = *(v3 + 96);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 88);

    *(v3 + 80) = a1;
    *(v3 + 88) = a2;
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

uint64_t (*sub_2146A7120(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 88);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 80);
    a1[1] = v3;

    return sub_2146A71BC;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146A71BC(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    v14 = *a1;
    v15 = v3;
    v10 = *(v4 + 64);
    v11 = *(v4 + 72);
    v16 = *(v4 + 96);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = a1[3];

      *(v4 + 80) = v5;
      *(v4 + 88) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v14 = *a1;
  v15 = v3;
  v7 = *(v4 + 64);
  v6 = *(v4 + 72);
  v16 = *(v4 + 96);
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

  *(v4 + 80) = v5;
  *(v4 + 88) = v3;
}

uint64_t sub_2146A73DC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 72);
  v9 = *(a2 + 88);

  *(a2 + 64) = v4;
  *(a2 + 72) = v3;
  *(a2 + 80) = v6;
  *(a2 + 88) = v5;
  *(a2 + 96) = v7;
  return result;
}

void (*sub_2146A7454(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 72);
  v7 = *(v1 + 80);
  v6 = *(v1 + 88);
  v8 = *(v1 + 96);
  *v4 = *(v1 + 64);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2146A74EC;
}

void sub_2146A74EC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 72);
  v10 = *(v3 + 88);
  if (a2)
  {
    v11 = (*a1)[3];

    *(v3 + 64) = v5;
    *(v3 + 72) = v4;
    *(v3 + 80) = v7;
    *(v3 + 88) = v6;
    *(v3 + 96) = v8;
    v12 = v2[1];
    v13 = v2[3];
  }

  else
  {
    v14 = *(v3 + 72);

    *(v3 + 64) = v5;
    *(v3 + 72) = v4;
    *(v3 + 80) = v7;
    *(v3 + 88) = v6;
    *(v3 + 96) = v8;
  }

  free(v2);
}

uint64_t sub_2146A75BC()
{
  v1 = *(v0 + 104);
  sub_213FDCA18(v1, *(v0 + 112));
  return v1;
}

uint64_t sub_2146A75F0(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 104), *(v2 + 112));
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t sub_2146A76D8(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146A77A4(uint64_t *a1))(uint64_t *a1, char a2)
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
    return sub_2143DF1B8;
  }

  return result;
}

void (*sub_2146A7844(uint64_t *a1))(uint64_t **a1, char a2)
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
  return sub_2143DF39C;
}

uint64_t sub_2146A7914@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 192);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 184);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_2146A7988(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2146A7A38(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146A7B04(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 192);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 184);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146A7BA4;
  }

  return result;
}

uint64_t sub_2146A7BA4(uint64_t *a1, char a2)
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

uint64_t sub_2146A7CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2146A7D38(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 176);
  v9 = *(a2 + 184);
  v10 = *(a2 + 192);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v9, v10);
  *(a2 + 168) = v4;
  *(a2 + 176) = v3;
  *(a2 + 184) = v5;
  *(a2 + 192) = v6;
  *(a2 + 200) = v7;
  return result;
}

void (*sub_2146A7DC0(uint64_t *a1))(uint64_t **a1, char a2)
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

  sub_21404F7E0(v6, v7);
  return sub_2146A7E60;
}

void sub_2146A7E60(uint64_t **a1, char a2)
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

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v11);
    *(v3 + 168) = v5;
    *(v3 + 176) = v4;
    *(v3 + 184) = v7;
    *(v3 + 192) = v6;
    *(v3 + 200) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_214032564(v14, v15);
  }

  else
  {
    v16 = *(v3 + 176);

    sub_214032564(v9, v11);
    *(v3 + 168) = v5;
    *(v3 + 176) = v4;
    *(v3 + 184) = v7;
    *(v3 + 192) = v6;
    *(v3 + 200) = v8;
  }

  free(v2);
}

uint64_t sub_2146A7F40()
{
  result = *(v0 + 208);
  v2 = *(v0 + 216);
  return result;
}

uint64_t sub_2146A7F4C(uint64_t result, char a2)
{
  *(v2 + 208) = result;
  *(v2 + 216) = a2 & 1;
  return result;
}

uint64_t sub_2146A7F7C()
{
  result = *(v0 + 224);
  v2 = *(v0 + 232);
  return result;
}

uint64_t sub_2146A7F88(uint64_t result, char a2)
{
  *(v2 + 224) = result;
  *(v2 + 232) = a2 & 1;
  return result;
}

unint64_t sub_2146A7FE8(uint64_t a1)
{
  *(a1 + 8) = sub_21431FD94();
  result = sub_21431F560();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy234_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 218) = *(a2 + 218);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_2146A8064(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 234))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2146A80AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 232) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 234) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 234) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2146A826C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146A82B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 2203))
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

uint64_t sub_2146A82F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 2202) = 0;
    *(result + 2200) = 0;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 2203) = 1;
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

    *(result + 2203) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2146A8594(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_2146A85F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2146A867C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 42))
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

uint64_t sub_2146A86D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2146A8748(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_2146A87A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_2146A8818(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 105))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2146A8874(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

unint64_t sub_2146A8900(uint64_t a1)
{
  *(a1 + 8) = sub_2146A8930();
  result = sub_2146A8984();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2146A8930()
{
  result = qword_27C917FD0;
  if (!qword_27C917FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917FD0);
  }

  return result;
}

unint64_t sub_2146A8984()
{
  result = qword_27C917FD8;
  if (!qword_27C917FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917FD8);
  }

  return result;
}

unint64_t sub_2146A89E8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_214064194;
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

unint64_t sub_2146A8B08@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2146ED240;
  *(v4 + 16) = sub_214032554;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142DFFF8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403255C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_2140428D0(inited, a1);
}

uint64_t sub_2146A8C4C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IMCompositionIndication() + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t type metadata accessor for IMCompositionIndication()
{
  result = qword_27C917FE8;
  if (!qword_27C917FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_2146A8D04(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IMCompositionIndication() + 24));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146A8D7C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IMCompositionIndication() + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v8;
  *(a1 + 26) = v3;
}

__n128 sub_2146A8DE4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = (v1 + *(type metadata accessor for IMCompositionIndication() + 28));
  v8 = v7->n128_u64[1];

  result = *a1;
  *v7 = *a1;
  v7[1].n128_u64[0] = v3;
  v7[1].n128_u8[8] = v4;
  v7[1].n128_u8[9] = v5;
  v7[1].n128_u8[10] = v6;
  return result;
}

uint64_t sub_2146A8E54()
{
  v1 = v0 + *(type metadata accessor for IMCompositionIndication() + 24);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t sub_2146A8EE4()
{
  v1 = v0 + *(type metadata accessor for IMCompositionIndication() + 28);
  if (*(v1 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v1 + 16);
    v3 = *(v1 + 24) & 1;
  }

  return result;
}

uint64_t sub_2146A8F60@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2146A906C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IMCompositionIndication() + 20);

  return sub_2144716D8(v3, a1);
}

uint64_t sub_2146A90B0(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IMCompositionIndication() + 20);

  return sub_2140924F0(a1, v3);
}

uint64_t sub_2146A913C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IMCompositionIndication() + 24);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2146A91D8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for IMCompositionIndication() + 24);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2146A92A0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IMCompositionIndication() + 24);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
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

void (*sub_2146A93F0(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for IMCompositionIndication() + 24);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_214065C38;
  }

  return result;
}

uint64_t sub_2146A94DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IMCompositionIndication() + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_2146A954C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IMCompositionIndication() + 24);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2146A95E4(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for IMCompositionIndication() + 24);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_2140660B8;
}

uint64_t sub_2146A9690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for IMCompositionIndication();
  v5 = a1 + *(result + 28);
  if (*(v5 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 24);
    *a2 = *(v5 + 16);
    *(a2 + 8) = v6 & 1;
  }

  return result;
}

uint64_t (*sub_2146A976C(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for IMCompositionIndication() + 28);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  if (*(v4 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 24);
    *a1 = *(v4 + 16);
    *(a1 + 8) = v5 & 1;
    return sub_21406646C;
  }

  return result;
}

uint64_t sub_2146A9820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IMCompositionIndication() + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  *(a2 + 26) = v3;
}

uint64_t sub_2146A988C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = a2 + *(type metadata accessor for IMCompositionIndication() + 28);
  v9 = *(v8 + 8);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 25) = v6;
  *(v8 + 26) = v7;
  return result;
}

void (*sub_2146A9910(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for IMCompositionIndication() + 28);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  v11 = *(v6 + 25);
  LOBYTE(v6) = *(v6 + 26);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v11;
  *(v4 + 26) = v6;

  return sub_214066720;
}

unint64_t sub_2146A99C8()
{
  result = qword_27C917FE0;
  if (!qword_27C917FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917FE0);
  }

  return result;
}

uint64_t sub_2146A9A1C(uint64_t a1)
{
  *(a1 + 8) = sub_2146A9A84(&qword_27C90D4B0);
  result = sub_2146A9A84(&qword_27C90D450);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146A9A84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IMCompositionIndication();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2146A9AF0()
{
  sub_21409320C();
  if (v0 <= 0x3F)
  {
    sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
    if (v1 <= 0x3F)
    {
      sub_21409A2B4(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2146A9BDC()
{
  result = qword_27C917FF8;
  if (!qword_27C917FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C917FF8);
  }

  return result;
}

uint64_t sub_2146A9C30@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

__n128 sub_2146A9C44(__n128 *a1)
{
  v3 = a1[1].n128_u16[0];
  v4 = v1->n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u16[0] = v3;
  return result;
}

uint64_t sub_2146A9C84@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 == 14)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v2;
  }

  return result;
}

unint64_t sub_2146A9CEC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  v3 = sub_214069764(&unk_282653F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v4 + 16) = sub_214059810;
  *(v4 + 24) = v5;
  *(inited + 32) = v4;
  v6 = sub_214069888(&unk_282653FA0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214059818;
  *(v7 + 24) = v8;
  *(inited + 40) = v7;
  return sub_214042B80(inited, a1);
}

uint64_t sub_2146A9E18@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2146A9E64(__n128 *a1)
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

uint64_t sub_2146A9EC0()
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

uint64_t (*sub_2146A9F44(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v2 = *(v1 + 16);
  if (v2 == 14)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v2;
    return sub_214428888;
  }

  return result;
}

uint64_t (*sub_2146A9FCC(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;

  return sub_214428908;
}

uint64_t sub_2146AA024(uint64_t a1, uint64_t a2)
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

uint64_t (*sub_2146AA16C(void *a1))(uint64_t *a1, char a2)
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

void (*sub_2146AA208(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_2146AA2A0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

__n128 sub_2146AA2B4(__n128 *a1)
{
  v3 = a1[1].n128_u16[0];
  v4 = v1->n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u16[0] = v3;
  return result;
}

uint64_t sub_2146AA314@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2146AA360(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);

  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  return result;
}

unint64_t sub_2146AA434(uint64_t a1)
{
  result = sub_2146AA45C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2146AA45C()
{
  result = qword_27C918000;
  if (!qword_27C918000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C918000);
  }

  return result;
}

uint64_t sub_2146AA4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2146AA518()
{
  result = qword_27C918008;
  if (!qword_27C918008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C918008);
  }

  return result;
}

unint64_t sub_2146AA56C()
{
  result = qword_27C918010;
  if (!qword_27C918010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C918010);
  }

  return result;
}

BOOL sub_2146AA5F0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = sub_2146D8958();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  v16 = *a3;
  sub_2146D8928();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21407E248(v8);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);

    v19 = sub_214069888(v18);
    v17 = sub_21407DAC4(v13, v19);

    (*(v10 + 8))(v13, v9);
  }

  return v17;
}

uint64_t sub_2146AA798()
{
  v1 = type metadata accessor for CSDMConversationMessageProto(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v16, v0, 0x6F3uLL);
  v11[2] = v16;
  sub_2146AA9C8();
  sub_2146D9018();
  v5 = sub_2146D8FC8();
  v7 = v6;
  sub_2146AAA20(v4);
  v15 = MEMORY[0x277CC9318];
  *&v14 = v5;
  *(&v14 + 1) = v7;
  sub_213FDC730(&v14, v13);
  v8 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = v8;
  sub_2140524DC(v13, 0xD000000000000010, 0x800000021478BC50, isUniquelyReferenced_nonNull_native);
  return v12;
}

uint64_t sub_2146AA920()
{
  sub_2146AA798();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2146AA974()
{
  sub_2146AA798();
  v0 = sub_2146D9468();

  return v0;
}

unint64_t sub_2146AA9C8()
{
  result = qword_27C903BD8;
  if (!qword_27C903BD8)
  {
    type metadata accessor for CSDMConversationMessageProto(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C903BD8);
  }

  return result;
}

uint64_t sub_2146AAA20(uint64_t a1)
{
  v2 = type metadata accessor for CSDMConversationMessageProto(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2146AAA7C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 1701869940;
  v3 = inited + 32;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v1 - 1;
  v4 = sub_2140457C0(inited);
  swift_setDeallocating();
  sub_21404C938(v3);
  return v4;
}

uint64_t sub_2146AAB1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v38 = MEMORY[0x277D84F90];
    sub_2140A0060(0, v2, 0);
    v4 = -1 << *(a1 + 32);
    v25 = a1 + 64;
    v26 = v38;
    result = sub_2146D9E58();
    v5 = result;
    v6 = 0;
    v39 = *(a1 + 36);
    v24 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v39 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v9 = *(a1 + 56);
      v34 = *(*(a1 + 48) + v5);
      sub_2140537E4(v9 + 32 * v5, v35);
      v32[0] = v34;
      sub_213FDC730(v35, &v33);
      sub_213FB2E54(v32, v30, &qword_27C918048, &qword_214783CD8);
      v29 = v30[0];
      *&v36 = NameAndPhoto.NameAndPhotoKey.rawValue.getter();
      *(&v36 + 1) = v10;
      sub_213FB2E54(v32, v27, &qword_27C918048, &qword_214783CD8);
      sub_213FDC730(&v28, v37);
      __swift_destroy_boxed_opaque_existential_1(v31);
      result = sub_2146B8F68(v32);
      v11 = v26;
      v38 = v26;
      v13 = *(v26 + 16);
      v12 = *(v26 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_2140A0060((v12 > 1), v13 + 1, 1);
        v11 = v38;
      }

      *(v11 + 16) = v13 + 1;
      v14 = (v11 + 48 * v13);
      v15 = v36;
      v16 = v37[1];
      v14[3] = v37[0];
      v14[4] = v16;
      v14[2] = v15;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_25;
      }

      v17 = *(v25 + 8 * v8);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      v26 = v11;
      if (v39 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v7 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (a1 + 72 + 8 * v8);
        while (v20 < (v7 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_214493D04(v5, v39, 0);
            v7 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        result = sub_214493D04(v5, v39, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v24)
      {
        return v26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

unint64_t sub_2146AAE04@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_2146AAF74@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_2146AB0E4@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_2146AB254@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_2146AB3C4@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2146AB410(__n128 *a1)
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

uint64_t sub_2146AB46C@<X0>(uint64_t a1@<X8>)
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

  return sub_213FDCA18(v3, v4);
}

__n128 sub_2146AB4C4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  sub_213FDC6BC(v7, v8);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2146AB52C@<X0>(uint64_t a1@<X8>)
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

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146AB584(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[5].n128_u64[1];
  v7 = v1[6].n128_i64[0];
  v8 = v1[6].n128_u64[1];

  sub_214032564(v7, v8);
  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146AB5EC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146AB644(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  v8 = *(v1 + 144);

  sub_214032564(v7, v8);
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  return result;
}

uint64_t sub_2146AB6AC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  v4 = *(v1 + 184);
  v5 = *(v1 + 192);
  *a1 = *(v1 + 160);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146AB704(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[10].n128_u64[1];
  v7 = v1[11].n128_i64[0];
  v8 = v1[11].n128_u64[1];

  sub_214032564(v7, v8);
  result = *a1;
  v1[10] = *a1;
  v1[11].n128_u64[0] = v3;
  v1[11].n128_u64[1] = v4;
  v1[12].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146AB76C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 232);
  v4 = *(v1 + 240);
  v5 = *(v1 + 248);
  *a1 = *(v1 + 216);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146AB7C4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 224);
  v7 = *(v1 + 232);
  v8 = *(v1 + 240);

  sub_214032564(v7, v8);
  result = *a1;
  *(v1 + 216) = *a1;
  *(v1 + 232) = v3;
  *(v1 + 240) = v4;
  *(v1 + 248) = v5;
  return result;
}

uint64_t sub_2146AB82C()
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

uint64_t sub_2146AB8A8()
{
  v1 = *(v0 + 64);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 56);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2146AB930()
{
  v1 = *(v0 + 104);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 96);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2146AB9B8()
{
  v1 = *(v0 + 144);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 136);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2146ABA40()
{
  v1 = *(v0 + 184);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 176);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2146ABAC8()
{
  v1 = *(v0 + 240);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 232);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

unint64_t sub_2146ABB50@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 16;
  *(v4 + 16) = sub_2140598E0;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2146ABCA4@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_2146ABE0C@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_2146ABF7C@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_2146AC0EC@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_2146AC25C@<X0>(uint64_t a1@<X8>)
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
  *(v7 + 16) = sub_2143A5724;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

uint64_t sub_2146AC3CC@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2146AC424(__n128 *a1)
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

uint64_t sub_2146AC48C@<X0>(uint64_t a1@<X8>)
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

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146AC4E4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  sub_214032564(v7, v8);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2146AC54C@<X0>(uint64_t a1@<X8>)
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

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146AC5A4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[5].n128_u64[1];
  v7 = v1[6].n128_i64[0];
  v8 = v1[6].n128_u64[1];

  sub_214032564(v7, v8);
  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146AC60C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146AC664(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  v8 = *(v1 + 144);

  sub_214032564(v7, v8);
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  return result;
}

uint64_t sub_2146AC6CC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  v4 = *(v1 + 184);
  v5 = *(v1 + 192);
  *a1 = *(v1 + 160);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146AC724(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[10].n128_u64[1];
  v7 = v1[11].n128_i64[0];
  v8 = v1[11].n128_u64[1];

  sub_214032564(v7, v8);
  result = *a1;
  v1[10] = *a1;
  v1[11].n128_u64[0] = v3;
  v1[11].n128_u64[1] = v4;
  v1[12].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146AC78C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  v3 = *(v1 + 216);
  v4 = *(v1 + 224);
  v5 = *(v1 + 232);
  *a1 = *(v1 + 200);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2146AC7E4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 208);
  v7 = *(v1 + 216);
  v8 = *(v1 + 224);

  sub_214032564(v7, v8);
  result = *a1;
  *(v1 + 200) = *a1;
  *(v1 + 216) = v3;
  *(v1 + 224) = v4;
  *(v1 + 232) = v5;
  return result;
}

uint64_t sub_2146AC84C()
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

uint64_t sub_2146AC8CC()
{
  v1 = *(v0 + 64);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 56);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2146AC954()
{
  v1 = *(v0 + 104);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 96);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2146AC9DC()
{
  v1 = *(v0 + 144);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 136);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2146ACA64()
{
  v1 = *(v0 + 184);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 176);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2146ACAEC()
{
  v1 = *(v0 + 224);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 216);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

unint64_t sub_2146ACB74@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21439DFC4;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21439DFC4;
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2146EAEB0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF60;
  *(v7 + 24) = v4;
  *(v6 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21439DF60;
  *(v8 + 24) = v5;
  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v9 + 16) = sub_21439DF94;
  *(v9 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21439DF64;
  *(v11 + 24) = v9;
  *(v3 + 32) = v11;
  v12 = sub_2142E01D8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C8, &unk_2147319B0);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = sub_2146B9220;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_2140452B0(inited, a1);
}

unint64_t sub_2146ACDE8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21439DFC4;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21439DFC4;
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2146EAEB0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF60;
  *(v7 + 24) = v4;
  *(v6 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21439DF60;
  *(v8 + 24) = v5;
  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v9 + 16) = sub_21439DF94;
  *(v9 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21439DF64;
  *(v11 + 24) = v9;
  *(v3 + 32) = v11;
  v12 = sub_2142E01D8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C8, &unk_2147319B0);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = sub_2146B9220;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_2140452B0(inited, a1);
}

unint64_t sub_2146AD02C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21439DFC4;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21439DFC4;
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2146EAEB0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF60;
  *(v7 + 24) = v4;
  *(v6 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21439DF60;
  *(v8 + 24) = v5;
  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v9 + 16) = sub_21439DF94;
  *(v9 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21439DF64;
  *(v11 + 24) = v9;
  *(v3 + 32) = v11;
  v12 = sub_2142E01D8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C8, &unk_2147319B0);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = sub_2146B9220;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_2140452B0(inited, a1);
}

uint64_t sub_2146AD270@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_213FBE134(v3);
}

__n128 sub_2146AD2BC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1[1].n128_u64[1];
  v6 = v1[2].n128_i64[0];

  sub_213FB7170(v6);
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  return result;
}

uint64_t sub_2146AD314@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_213FBE134(v3);
}

__n128 sub_2146AD360(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1[3].n128_u64[1];
  v6 = v1[4].n128_i64[0];

  sub_213FB7170(v6);
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u8[8] = v4;
  return result;
}

uint64_t sub_2146AD3B8()
{
  if (*(v0 + 32) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_2146AD42C()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
  }

  return result;
}

unint64_t sub_2146AD4A0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21439DF24;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21439DF24;
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2146EAEB0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF28;
  *(v7 + 24) = v4;
  *(v6 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21439DF60;
  *(v8 + 24) = v5;
  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v9 + 16) = sub_21439DF54;
  *(v9 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21439DF64;
  *(v11 + 24) = v9;
  *(v3 + 32) = v11;
  v12 = sub_2142E01D8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C8, &unk_2147319B0);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = sub_2146B9220;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_2140452B0(inited, a1);
}

unint64_t sub_2146AD7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C918050, qword_214783CE0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C58, &unk_2147319C0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = v10;
  *(v9 + 32) = v11;
  v12 = sub_2142E0868(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040D0, &qword_2146EAA20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = a3;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_21404515C(inited, a4);
}

uint64_t sub_2146AD8EC@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  *a2 = *(v2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;

  return a1(v4);
}

__n128 sub_2146AD94C(__n128 *a1, void (*a2)(unint64_t))
{
  v5 = a1[1].n128_u64[0];
  v6 = a1[1].n128_u8[8];
  v7 = v2[1].n128_u64[1];
  v8 = v2[2].n128_u64[0];

  a2(v8);
  result = *a1;
  v2[1] = *a1;
  v2[2].n128_u64[0] = v5;
  v2[2].n128_u8[8] = v6;
  return result;
}

uint64_t sub_2146AD9AC()
{
  if (*(v0 + 32) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
  }

  return result;
}

unint64_t sub_2146ADA20@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 16;
  *(v4 + 16) = sub_2140598E0;
  *(v4 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21408E9E0;
  *(v6 + 24) = v4;
  *(v3 + 32) = v6;
  v7 = sub_2142E01D8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C8, &unk_2147319B0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_2146B908C;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_2140452B0(inited, a1);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_2146E9BF0;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_2146E9BF0;
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  v13[2] = sub_214059904;
  v13[3] = 0;
  v13[4] = 16;
  *(v12 + 16) = sub_2140598E0;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21439DF64;
  *(v14 + 24) = v12;
  *(v11 + 32) = v14;
  v15 = sub_2142E01D8(v11);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v16 + 16) = sub_2146B9220;
  *(v16 + 24) = v17;
  *(v10 + 32) = v16;
  sub_2140452B0(v10, a1 + 32);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_2146E9BF0;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_2146E9BF0;
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  v21[2] = sub_214059904;
  v21[3] = 0;
  v21[4] = 16;
  *(v20 + 16) = sub_2140598E0;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_21439DF64;
  *(v22 + 24) = v20;
  *(v19 + 32) = v22;
  v23 = sub_2142E01D8(v19);
  v24 = swift_allocObject();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v24 + 16) = sub_2146B9220;
  *(v24 + 24) = v25;
  *(v18 + 32) = v24;
  return sub_2140452B0(v18, a1 + 64);
}

uint64_t sub_2146ADDDC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_213FBE134(v3);
}

__n128 sub_2146ADE28(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1->n128_u64[1];
  v6 = v1[1].n128_i64[0];

  sub_213FB7170(v6);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  return result;
}

uint64_t sub_2146ADE80@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_213FBE134(v3);
}

__n128 sub_2146ADECC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1[2].n128_u64[1];
  v6 = v1[3].n128_i64[0];

  sub_213FB7170(v6);
  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u64[0] = v3;
  v1[3].n128_u8[8] = v4;
  return result;
}

uint64_t sub_2146ADF24@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_213FBE134(v3);
}

__n128 sub_2146ADF70(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1[4].n128_u64[1];
  v6 = v1[5].n128_i64[0];

  sub_213FB7170(v6);
  result = *a1;
  v1[4] = *a1;
  v1[5].n128_u64[0] = v3;
  v1[5].n128_u8[8] = v4;
  return result;
}

uint64_t sub_2146ADFC8()
{
  if (*(v0 + 16) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_2146AE03C()
{
  if (*(v0 + 48) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_2146AE0B0()
{
  if (*(v0 + 80) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_2146AE124()
{
  memcpy(__dst, v0, 0x261uLL);
  v120 = MEMORY[0x277D84F98];
  memcpy(v122, v0, 0x261uLL);
  v1 = sub_214322C8C(v122);
  sub_213FBF560(v122);
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0xEE00657461647055;
      v3 = 0x796C6E4F656D614ELL;
    }

    else
    {
      v3 = 0xD000000000000010;
      v2 = 0x80000002147A71D0;
    }
  }

  else
  {
    v2 = 0x80000002147A71F0;
    v3 = 0xD000000000000012;
  }

  v4 = MEMORY[0x277D837D0];
  v119[3] = MEMORY[0x277D837D0];
  v119[0] = v3;
  v119[1] = v2;
  sub_21448054C(v119, 0);
  memcpy(v118, __dst, 0x261uLL);
  v5 = sub_214322C8C(v118);
  v6 = sub_213FBF560(v118);
  v7 = v6;
  if (v5)
  {
    if (v5 == 1)
    {
      v8 = *(v6 + 1);
      v9 = *(v6 + 2);
      v10 = *(v6 + 3);
      if (v8)
      {
        v11 = *v6;
        v12 = MEMORY[0x277D837D0];
      }

      else
      {
        v11 = 0;
        v12 = 0;
        *&v115 = 0;
      }

      v106 = *(v6 + 4);
      v107 = v6[40];
      *&v114 = v11;
      *(&v114 + 1) = v8;
      *(&v115 + 1) = v12;
      sub_2142F9BA4(__dst, v117);

      sub_21448054C(&v114, 31);
      if (v10)
      {
        v108 = MEMORY[0x277D837D0];
      }

      else
      {
        v9 = 0;
        v108 = 0;
        v117[2] = 0;
      }

      v117[0] = v9;
      v117[1] = v10;
      v117[3] = v108;

      sub_21448054C(v117, 32);
      sub_2142F9C54(__dst);
      if (v107)
      {
        v106 = 0;
        v109 = 0;
        v117[2] = 0;
        v117[1] = 0;
      }

      else
      {
        v109 = MEMORY[0x277D84A28];
      }

      v117[0] = v106;
      v117[3] = v109;
      sub_21448054C(v117, 7);
      goto LABEL_142;
    }

    v15 = *(v6 + 3);
    if (v15)
    {
      v16 = *(v6 + 2);
      *(&v115 + 1) = v4;
      *&v114 = v16;
      *(&v114 + 1) = v15;
      sub_2142F9BA4(__dst, v117);

      sub_21448054C(&v114, 1);
      v17 = *(v7 + 8);
      if (v17 >> 60 != 15)
      {
        v18 = *(v7 + 7);
        v117[3] = MEMORY[0x277CC9318];
        v117[0] = v18;
        v117[1] = v17;
        sub_21402D9F8(v18, v17);
        sub_21448054C(v117, 2);
        v19 = *(v7 + 13);
        if (v19 >> 60 != 11)
        {
          v20 = *(v7 + 12);
          if (v19 >> 60 == 15)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v117[2] = 0;
          }

          else
          {
            v23 = MEMORY[0x277CC9318];
            v21 = *(v7 + 12);
            v22 = *(v7 + 13);
          }

          v117[0] = v21;
          v117[1] = v22;
          v117[3] = v23;
          sub_213FDCA18(v20, v19);
          sub_21448054C(v117, 3);
          v72 = *(v7 + 18);
          if (v72 >> 60 != 11)
          {
            v73 = *(v7 + 17);
            if (v72 >> 60 == 15)
            {
              v74 = 0;
              v75 = 0;
              v76 = 0;
              v117[2] = 0;
            }

            else
            {
              v76 = MEMORY[0x277CC9318];
              v74 = *(v7 + 17);
              v75 = *(v7 + 18);
            }

            v117[0] = v74;
            v117[1] = v75;
            v117[3] = v76;
            sub_213FDCA18(v73, v72);
            sub_21448054C(v117, 4);
            v83 = *(v7 + 23);
            if (v83 >> 60 != 11)
            {
              v84 = *(v7 + 22);
              if (v83 >> 60 == 15)
              {
                v85 = 0;
                v86 = 0;
                v87 = 0;
                v117[2] = 0;
              }

              else
              {
                v87 = MEMORY[0x277CC9318];
                v85 = *(v7 + 22);
                v86 = *(v7 + 23);
              }

              v117[0] = v85;
              v117[1] = v86;
              v117[3] = v87;
              sub_213FDCA18(v84, v83);
              sub_21448054C(v117, 5);
              v94 = v7[193] == 0;
              v95 = 20302;
              if (v7[193])
              {
                v95 = 5457241;
              }

              v96 = 0xE200000000000000;
              v117[3] = v4;
              if (!v94)
              {
                v96 = 0xE300000000000000;
              }

              v117[0] = v95;
              v117[1] = v96;
              sub_21448054C(v117, 6);
              if (v7[208])
              {
                v97 = 0;
                v98 = 0;
                v117[2] = 0;
                v117[1] = 0;
              }

              else
              {
                v97 = *(v7 + 25);
                v98 = MEMORY[0x277D84A28];
              }

              v117[0] = v97;
              v117[3] = v98;
              sub_21448054C(v117, 7);
              v99 = *(v7 + 30);
              if (v99 >> 60 != 11)
              {
                v100 = *(v7 + 29);
                if (v99 >> 60 == 15)
                {
                  v101 = 0;
                  v102 = 0;
                  v103 = 0;
                  v117[2] = 0;
                }

                else
                {
                  v103 = MEMORY[0x277CC9318];
                  v101 = *(v7 + 29);
                  v102 = *(v7 + 30);
                }

                v117[0] = v101;
                v117[1] = v102;
                v117[3] = v103;
                sub_213FDCA18(v100, v99);
                v104 = v117;
                v105 = 8;
                goto LABEL_133;
              }
            }
          }
        }
      }
    }

LABEL_146:
    sub_2146DA018();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v13 = *v6;
  if (v13 == 2)
  {
    v14 = 0;
    memset(v116, 0, 24);
  }

  else
  {
    LOBYTE(v116[0]) = v13 & 1;
    v14 = MEMORY[0x277D839B0];
  }

  v116[3] = v14;
  memcpy(v117, __dst, 0x261uLL);
  v24 = sub_213FBF560(v117);
  sub_2146B8EDC(v24, &v114);
  sub_21448054C(v116, 15);
  v25 = v7[1];
  v26 = v7[2];
  v27 = v7[3];
  v28 = v7[4];
  if (v25 == 3)
  {
    v25 = 0;
    v29 = 0;
    *(&v114 + 1) = 0;
    *&v115 = 0;
  }

  else
  {
    v29 = MEMORY[0x277D83B88];
  }

  *&v114 = v25;
  *(&v115 + 1) = v29;
  sub_21448054C(&v114, 9);
  if (v26 == 2)
  {
    v30 = 0;
    v114 = 0uLL;
    *&v115 = 0;
  }

  else
  {
    LOBYTE(v114) = v26 & 1;
    v30 = MEMORY[0x277D839B0];
  }

  *(&v115 + 1) = v30;
  sub_21448054C(&v114, 10);
  if (v28 == 2)
  {
    v31 = 0;
    v114 = 0uLL;
    *&v115 = 0;
  }

  else
  {
    LOBYTE(v114) = v28 & 1;
    v31 = MEMORY[0x277D839B0];
  }

  *(&v115 + 1) = v31;
  sub_21448054C(&v114, 12);
  if (v27 == 2)
  {
    v32 = 0;
    v114 = 0uLL;
    *&v115 = 0;
  }

  else
  {
    LOBYTE(v114) = v27 & 1;
    v32 = MEMORY[0x277D839B0];
  }

  *(&v115 + 1) = v32;
  sub_21448054C(&v114, 11);
  v33 = *(v7 + 4);
  if (v33)
  {
    if (v33 == 1)
    {
      goto LABEL_146;
    }

    v34 = *(v7 + 3);
    *(&v115 + 1) = v4;
    *&v114 = v34;
    *(&v114 + 1) = v33;
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
  }

  sub_21448054C(&v114, 13);
  v35 = *(v7 + 9);
  if (v35 >> 60 == 11)
  {
    goto LABEL_146;
  }

  v36 = *(v7 + 8);
  if (v35 >> 60 == 15)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    *&v115 = 0;
  }

  else
  {
    v39 = MEMORY[0x277CC9318];
    v37 = *(v7 + 8);
    v38 = *(v7 + 9);
  }

  *&v114 = v37;
  *(&v114 + 1) = v38;
  *(&v115 + 1) = v39;
  sub_213FDCA18(v36, v35);
  sub_21448054C(&v114, 14);
  v40 = *(v7 + 14);
  if (v40 >> 60 == 11)
  {
    goto LABEL_146;
  }

  v41 = *(v7 + 13);
  if (v40 >> 60 == 15)
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    *&v115 = 0;
  }

  else
  {
    v44 = MEMORY[0x277CC9318];
    v42 = *(v7 + 13);
    v43 = *(v7 + 14);
  }

  *&v114 = v42;
  *(&v114 + 1) = v43;
  *(&v115 + 1) = v44;
  sub_213FDCA18(v41, v40);
  sub_21448054C(&v114, 3);
  v45 = *(v7 + 19);
  if (v45 >> 60 == 11)
  {
    goto LABEL_146;
  }

  v46 = *(v7 + 18);
  if (v45 >> 60 == 15)
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    *&v115 = 0;
  }

  else
  {
    v49 = MEMORY[0x277CC9318];
    v47 = *(v7 + 18);
    v48 = *(v7 + 19);
  }

  *&v114 = v47;
  *(&v114 + 1) = v48;
  *(&v115 + 1) = v49;
  sub_213FDCA18(v46, v45);
  sub_21448054C(&v114, 4);
  v50 = *(v7 + 24);
  if (v50 >> 60 == 11)
  {
    goto LABEL_146;
  }

  v51 = *(v7 + 23);
  if (v50 >> 60 == 15)
  {
    v52 = 0;
    v53 = 0;
    v54 = 0;
    *&v115 = 0;
  }

  else
  {
    v54 = MEMORY[0x277CC9318];
    v52 = *(v7 + 23);
    v53 = *(v7 + 24);
  }

  *&v114 = v52;
  *(&v114 + 1) = v53;
  *(&v115 + 1) = v54;
  sub_213FDCA18(v51, v50);
  sub_21448054C(&v114, 5);
  v55 = v7[201];
  if (v55 != 2)
  {
    v56 = (v55 & 1) == 0;
    v57 = 20302;
    if (!v56)
    {
      v57 = 5457241;
    }

    v58 = 0xE200000000000000;
    *(&v115 + 1) = v4;
    if (!v56)
    {
      v58 = 0xE300000000000000;
    }

    *&v114 = v57;
    *(&v114 + 1) = v58;
    sub_21448054C(&v114, 6);
  }

  v59 = *(v7 + 29);
  if (v59 >> 60 == 11)
  {
    goto LABEL_146;
  }

  v60 = *(v7 + 28);
  if (v59 >> 60 == 15)
  {
    v61 = 0;
    v62 = 0;
    v63 = 0;
    *&v115 = 0;
  }

  else
  {
    v63 = MEMORY[0x277CC9318];
    v61 = *(v7 + 28);
    v62 = *(v7 + 29);
  }

  *&v114 = v61;
  *(&v114 + 1) = v62;
  *(&v115 + 1) = v63;
  sub_213FDCA18(v60, v59);
  sub_21448054C(&v114, 8);
  v64 = *(v7 + 31);
  v65 = v7[256];
  v66 = *(v7 + 35);
  if (v66)
  {
    if (v66 == 1)
    {
      goto LABEL_146;
    }

    *(&v115 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    *&v114 = v66;
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
  }

  sub_21448054C(&v114, 18);
  if (v65)
  {
    v64 = 0;
    v67 = 0;
    *(&v114 + 1) = 0;
    *&v115 = 0;
  }

  else
  {
    v67 = MEMORY[0x277D83E88];
  }

  *&v114 = v64;
  *(&v115 + 1) = v67;
  sub_21448054C(&v114, 17);
  v68 = *(v7 + 45);
  if (v7[304])
  {
    v69 = 0;
    v70 = 0;
    *(&v114 + 1) = 0;
    *&v115 = 0;
  }

  else
  {
    v69 = *(v7 + 37);
    v70 = MEMORY[0x277D83E88];
  }

  v71 = *(v7 + 41);
  *&v114 = v69;
  *(&v115 + 1) = v70;
  sub_21448054C(&v114, 19);
  if (v68)
  {
    if (v68 == 1)
    {
      goto LABEL_146;
    }

    *(&v115 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    *&v114 = v68;
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
  }

  sub_21448054C(&v114, 21);
  if (v71)
  {
    if (v71 == 1)
    {
      goto LABEL_146;
    }

    *(&v115 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    *&v114 = v71;
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
  }

  sub_21448054C(&v114, 20);
  v77 = *(v7 + 51);
  if (v7[384])
  {
    v78 = 0;
    v79 = 0;
    *(&v114 + 1) = 0;
    *&v115 = 0;
  }

  else
  {
    v78 = *(v7 + 47);
    v79 = MEMORY[0x277D83E88];
  }

  *&v114 = v78;
  *(&v115 + 1) = v79;
  sub_21448054C(&v114, 22);
  if (v77)
  {
    if (v77 == 1)
    {
      goto LABEL_146;
    }

    *(&v115 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    *&v114 = v77;
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
  }

  sub_21448054C(&v114, 23);
  v80 = *(v7 + 57);
  if (v7[432])
  {
    v81 = 0;
    v82 = 0;
    *(&v114 + 1) = 0;
    *&v115 = 0;
  }

  else
  {
    v81 = *(v7 + 53);
    v82 = MEMORY[0x277D83E88];
  }

  *&v114 = v81;
  *(&v115 + 1) = v82;
  sub_21448054C(&v114, 24);
  if (v80)
  {
    if (v80 == 1)
    {
      goto LABEL_146;
    }

    *(&v115 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904CA0, &qword_2146EE770);
    *&v114 = v80;
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
  }

  sub_21448054C(&v114, 25);
  v88 = *(v7 + 63);
  if (v7[480])
  {
    v89 = 0;
    v90 = 0;
    *(&v114 + 1) = 0;
    *&v115 = 0;
  }

  else
  {
    v89 = *(v7 + 59);
    v90 = MEMORY[0x277D83E88];
  }

  *&v114 = v89;
  *(&v115 + 1) = v90;
  sub_21448054C(&v114, 26);
  if (v88)
  {
    if (v88 == 1)
    {
      goto LABEL_146;
    }

    *(&v115 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904CA0, &qword_2146EE770);
    *&v114 = v88;
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
  }

  sub_21448054C(&v114, 27);
  v91 = *(v7 + 67);
  v92 = *(v7 + 71);
  v93 = *(v7 + 75);
  if (v91)
  {
    if (v91 == 1)
    {
      goto LABEL_146;
    }

    *(&v115 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    *&v114 = v91;
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
  }

  sub_21448054C(&v114, 28);
  if (v92)
  {
    if (v92 == 1)
    {
      goto LABEL_146;
    }

    *(&v115 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    *&v114 = v92;
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
  }

  sub_21448054C(&v114, 29);
  if (v93)
  {
    if (v93 == 1)
    {
      goto LABEL_146;
    }

    *(&v115 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    *&v114 = v93;
  }

  else
  {
    v114 = 0u;
    v115 = 0u;
  }

  v104 = &v114;
  v105 = 30;
LABEL_133:
  sub_21448054C(v104, v105);
  sub_2142F9C54(__dst);
LABEL_142:
  v110 = sub_2146AAB1C(v120);

  if (*(v110 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914350, &qword_21474D950);
    v111 = sub_2146DA058();
  }

  else
  {
    v111 = MEMORY[0x277D84F98];
  }

  v117[0] = v111;

  sub_2146B7C30(v112, 1, v117);

  return v117[0];
}

unint64_t NameAndPhoto.UpdateType.rawValue.getter()
{
  memcpy(v4, v0, 0x261uLL);
  v1 = sub_214322C8C(v4);
  sub_213FBF560(v4);
  v2 = 0x796C6E4F656D614ELL;
  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t NameAndPhoto.type.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x261uLL);
  memcpy(a1, v1, 0x261uLL);
  return sub_2142F9BA4(__dst, v4);
}

void *NameAndPhoto.type.setter(const void *a1)
{
  memcpy(v4, v1, 0x261uLL);
  sub_21431F6B0(v4);
  return memcpy(v1, a1, 0x261uLL);
}

BlastDoor::NameAndPhoto::NameAndPhotoKey_optional __swiftcall NameAndPhoto.NameAndPhotoKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA8B8();

  v5 = 0;
  v6 = 15;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
      goto LABEL_25;
    case 13:
      v5 = 13;
      goto LABEL_25;
    case 14:
      v5 = 14;
LABEL_25:
      v6 = v5;
      break;
    case 15:
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    default:
      v6 = 33;
      break;
  }

  *v2 = v6;
  return result;
}

BlastDoor::NameAndPhoto::NameAndPhotoKey_optional __swiftcall NameAndPhoto.NameAndPhotoKey.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = NameAndPhoto.NameAndPhotoKey.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t NameAndPhoto.NameAndPhotoKey.rawValue.getter()
{
  result = 0x546567617373654DLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 1262770030;
      break;
    case 4:
      result = 0x4B4457524C6ELL;
      break;
    case 5:
      result = 1263359854;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 1146241390;
      break;
    case 9:
      result = 1262576493;
      break;
    case 0xA:
      result = 1262838637;
      break;
    case 0xB:
      result = 0x4B464E636DLL;
      break;
    case 0xC:
      result = 0x4B4649636DLL;
      break;
    case 0xD:
      result = 1145655918;
      break;
    case 0xE:
      result = 4932718;
      break;
    case 0xF:
      result = 6901362;
      break;
    case 0x10:
      result = 22126;
      break;
    case 0x11:
      result = 5664368;
      break;
    case 0x12:
      result = 1263038064;
      break;
    case 0x13:
      result = 1448559214;
      break;
    case 0x14:
      result = 5003118;
      break;
    case 0x15:
      result = 4997742;
      break;
    case 0x16:
      result = 1448364142;
      break;
    case 0x17:
      result = 5002350;
      break;
    case 0x18:
      result = 1447118958;
      break;
    case 0x19:
      result = 4997486;
      break;
    case 0x1A:
      result = 1447643246;
      break;
    case 0x1B:
      result = 4999534;
      break;
    case 0x1C:
      result = 1263693424;
      break;
    case 0x1D:
      result = 1263693411;
      break;
    case 0x1E:
      result = 1263693409;
      break;
    case 0x1F:
      result = 0x6D614E7473726946;
      break;
    case 0x20:
      result = 0x656D614E7473614CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2146AF474(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = NameAndPhoto.NameAndPhotoKey.rawValue.getter();
  v4 = v3;
  if (v2 == NameAndPhoto.NameAndPhotoKey.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2146DA6A8();
  }

  return v7 & 1;
}

uint64_t sub_2146AF510()
{
  v1 = *v0;
  sub_2146DA958();
  NameAndPhoto.NameAndPhotoKey.rawValue.getter();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2146AF578()
{
  v2 = *v0;
  NameAndPhoto.NameAndPhotoKey.rawValue.getter();
  sub_2146D9698();
}

uint64_t sub_2146AF5DC()
{
  v1 = *v0;
  sub_2146DA958();
  NameAndPhoto.NameAndPhotoKey.rawValue.getter();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2146AF64C@<X0>(unint64_t *a1@<X8>)
{
  result = NameAndPhoto.NameAndPhotoKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2146AF6EC(uint64_t a1)
{
  v2 = sub_2146A3C08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2146AF728(uint64_t a1)
{
  v2 = sub_2146A3C08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2146AF764()
{
  sub_2146AE124();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t NameAndPhoto.bridgedToObjectiveC.getter()
{
  sub_2146AE124();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2146AF874@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 216);
  v18[12] = *(v1 + 200);
  v19[0] = v3;
  *(v19 + 9) = *(v1 + 225);
  v4 = *(v1 + 120);
  v5 = *(v1 + 152);
  v18[8] = *(v1 + 136);
  v18[9] = v5;
  v18[10] = *(v1 + 168);
  v18[11] = v2;
  v6 = *(v1 + 56);
  v7 = *(v1 + 88);
  v18[4] = *(v1 + 72);
  v18[5] = v7;
  v18[6] = *(v1 + 104);
  v18[7] = v4;
  v8 = *(v1 + 24);
  v18[0] = *(v1 + 8);
  v18[1] = v8;
  v18[2] = *(v1 + 40);
  v18[3] = v6;
  v9 = *(v1 + 184);
  v10 = *(v1 + 216);
  a1[12] = *(v1 + 200);
  a1[13] = v10;
  *(a1 + 217) = *(v1 + 225);
  v11 = *(v1 + 120);
  v12 = *(v1 + 152);
  a1[8] = *(v1 + 136);
  a1[9] = v12;
  a1[10] = *(v1 + 168);
  a1[11] = v9;
  v13 = *(v1 + 56);
  v14 = *(v1 + 88);
  a1[4] = *(v1 + 72);
  a1[5] = v14;
  a1[6] = *(v1 + 104);
  a1[7] = v11;
  v15 = *(v1 + 24);
  *a1 = *(v1 + 8);
  a1[1] = v15;
  a1[2] = *(v1 + 40);
  a1[3] = v13;
  return sub_2142FA098(v18, &v17);
}

__n128 sub_2146AF960(uint64_t a1)
{
  v3 = *(v1 + 184);
  v4 = *(v1 + 216);
  v18[12] = *(v1 + 200);
  v19[0] = v4;
  *(v19 + 9) = *(v1 + 225);
  v5 = *(v1 + 120);
  v6 = *(v1 + 152);
  v18[8] = *(v1 + 136);
  v18[9] = v6;
  v18[10] = *(v1 + 168);
  v18[11] = v3;
  v7 = *(v1 + 56);
  v8 = *(v1 + 88);
  v18[4] = *(v1 + 72);
  v18[5] = v8;
  v18[6] = *(v1 + 104);
  v18[7] = v5;
  v9 = *(v1 + 24);
  v18[0] = *(v1 + 8);
  v18[1] = v9;
  v18[2] = *(v1 + 40);
  v18[3] = v7;
  sub_2142F9DF8(v18);
  v10 = *(a1 + 160);
  *(v1 + 184) = *(a1 + 176);
  v11 = *(a1 + 208);
  *(v1 + 200) = *(a1 + 192);
  *(v1 + 216) = v11;
  *(v1 + 225) = *(a1 + 217);
  v12 = *(a1 + 96);
  *(v1 + 120) = *(a1 + 112);
  v13 = *(a1 + 144);
  *(v1 + 136) = *(a1 + 128);
  *(v1 + 152) = v13;
  *(v1 + 168) = v10;
  v14 = *(a1 + 32);
  *(v1 + 56) = *(a1 + 48);
  v15 = *(a1 + 80);
  *(v1 + 72) = *(a1 + 64);
  *(v1 + 88) = v15;
  *(v1 + 104) = v12;
  result = *a1;
  v17 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v17;
  *(v1 + 40) = v14;
  return result;
}

uint64_t sub_2146AFA68@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 256);
  v4 = *(v1 + 264);
  v3 = *(v1 + 272);
  v5 = *(v1 + 280);
  v6 = *(v1 + 288);
  *a1 = *(v1 + 248);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return sub_213FBE134(v5);
}

__n128 sub_2146AFAC4(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u8[8];
  v5 = a1[2].n128_u64[0];
  v6 = a1[2].n128_u8[8];
  v7 = *(v1 + 272);
  v8 = *(v1 + 280);

  sub_213FB7170(v8);
  *(v1 + 248) = v3;
  *(v1 + 256) = v4;
  result = a1[1];
  *(v1 + 264) = result;
  *(v1 + 280) = v5;
  *(v1 + 288) = v6;
  return result;
}

uint64_t sub_2146AFB58@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 344);
  v9 = *(v1 + 328);
  v10[0] = v2;
  *(v10 + 9) = *(v1 + 353);
  v3 = *(v10 + 9);
  v4 = *(v1 + 312);
  v8[0] = *(v1 + 296);
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 57) = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_2142FA19C(v8, &v7);
}

__n128 sub_2146AFBA8(uint64_t a1)
{
  v3 = (v1 + 296);
  v4 = v3[3];
  v8[2] = v3[2];
  v9[0] = v4;
  *(v9 + 9) = *(v3 + 57);
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_2142F9EF4(v8);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  *(v3 + 57) = *(a1 + 57);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t sub_2146AFC2C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 384);
  v4 = *(v1 + 392);
  v3 = *(v1 + 400);
  v5 = *(v1 + 408);
  v6 = *(v1 + 416);
  *a1 = *(v1 + 376);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return sub_213FBE134(v5);
}

__n128 sub_2146AFC88(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u8[8];
  v5 = a1[2].n128_u64[0];
  v6 = a1[2].n128_u8[8];
  v7 = *(v1 + 400);
  v8 = *(v1 + 408);

  sub_213FB7170(v8);
  *(v1 + 376) = v3;
  *(v1 + 384) = v4;
  result = a1[1];
  *(v1 + 392) = result;
  *(v1 + 408) = v5;
  *(v1 + 416) = v6;
  return result;
}

uint64_t sub_2146AFD1C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 432);
  v4 = *(v1 + 440);
  v3 = *(v1 + 448);
  v5 = *(v1 + 456);
  v6 = *(v1 + 464);
  *a1 = *(v1 + 424);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return sub_213FBE134(v5);
}

__n128 sub_2146AFD78(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u8[8];
  v5 = a1[2].n128_u64[0];
  v6 = a1[2].n128_u8[8];
  v7 = *(v1 + 448);
  v8 = *(v1 + 456);

  sub_213FB7170(v8);
  *(v1 + 424) = v3;
  *(v1 + 432) = v4;
  result = a1[1];
  *(v1 + 440) = result;
  *(v1 + 456) = v5;
  *(v1 + 464) = v6;
  return result;
}

uint64_t sub_2146AFE0C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 480);
  v4 = *(v1 + 488);
  v3 = *(v1 + 496);
  v5 = *(v1 + 504);
  v6 = *(v1 + 512);
  *a1 = *(v1 + 472);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return sub_213FBE134(v5);
}

__n128 sub_2146AFE68(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u8[8];
  v5 = a1[2].n128_u64[0];
  v6 = a1[2].n128_u8[8];
  v7 = *(v1 + 496);
  v8 = *(v1 + 504);

  sub_213FB7170(v8);
  *(v1 + 472) = v3;
  *(v1 + 480) = v4;
  result = a1[1];
  *(v1 + 488) = result;
  *(v1 + 504) = v5;
  *(v1 + 512) = v6;
  return result;
}

uint64_t sub_2146AFEFC@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 568);
  v10 = *(v1 + 552);
  v2 = v10;
  v11 = v3;
  v12[0] = *(v1 + 584);
  v4 = v12[0];
  *(v12 + 9) = *(v1 + 593);
  v6 = *(v1 + 536);
  v9[0] = *(v1 + 520);
  v5 = v9[0];
  v9[1] = v6;
  *(a1 + 73) = *(v12 + 9);
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_2142FA348(v9, &v8);
}

__n128 sub_2146AFF58(uint64_t a1)
{
  v3 = (v1 + 520);
  v4 = v3[3];
  v9[2] = v3[2];
  v9[3] = v4;
  v10[0] = v3[4];
  *(v10 + 9) = *(v3 + 73);
  v5 = v3[1];
  v9[0] = *v3;
  v9[1] = v5;
  sub_2142FA3F8(v9);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  *(v3 + 73) = *(a1 + 73);
  result = *a1;
  v8 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v8;
  return result;
}

unint64_t sub_2146B00B4@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2146B0188(uint64_t a1, uint64_t a2)
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

void (*sub_2146B02CC(uint64_t *a1))(uint64_t **a1, char a2)
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

void (*sub_2146B03A4(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_2146B0444(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146B0510(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 64);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 56);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146B05B0;
  }

  return result;
}

void (*sub_2146B05F0(uint64_t *a1))(uint64_t **a1, char a2)
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

  sub_21404F7E0(v6, v7);
  return sub_2146B0690;
}

uint64_t sub_2146B06BC(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146B0788(uint64_t *a1))(uint64_t *, char)
{
  a1[2] = v1;
  v2 = *(v1 + 104);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 96);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146B9248;
  }

  return result;
}

uint64_t (*sub_2146B0828(uint64_t *a1))()
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

  sub_21404F7E0(v6, v7);
  return sub_2146B924C;
}

uint64_t sub_2146B08C8(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146B0994(uint64_t *a1))(uint64_t *, char)
{
  a1[2] = v1;
  v2 = *(v1 + 144);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 136);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146B9250;
  }

  return result;
}

void (*sub_2146B0A34(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  *v4 = *(v1 + 120);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2146B9254;
}

uint64_t sub_2146B0AD4(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146B0BA0(uint64_t *a1))(uint64_t *, char)
{
  a1[2] = v1;
  v2 = *(v1 + 184);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 176);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146B9258;
  }

  return result;
}

void (*sub_2146B0C40(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 168);
  v6 = *(v1 + 176);
  v7 = *(v1 + 184);
  v8 = *(v1 + 192);
  *v4 = *(v1 + 160);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2146B925C;
}

uint64_t sub_2146B0D10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 224);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 216);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_2146B0D84(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2146B0E34(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146B0F00(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 224);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 216);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146B0FA0;
  }

  return result;
}

uint64_t sub_2146B0FA0(uint64_t *a1, char a2)
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

uint64_t sub_2146B10E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 208);
  v3 = *(a1 + 216);
  v4 = *(a1 + 224);
  v5 = *(a1 + 232);
  *a2 = *(a1 + 200);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2146B1134(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 208);
  v9 = *(a2 + 216);
  v10 = *(a2 + 224);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v9, v10);
  *(a2 + 200) = v4;
  *(a2 + 208) = v3;
  *(a2 + 216) = v5;
  *(a2 + 224) = v6;
  *(a2 + 232) = v7;
  return result;
}

void (*sub_2146B11BC(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 208);
  v6 = *(v1 + 216);
  v7 = *(v1 + 224);
  v8 = *(v1 + 232);
  *v4 = *(v1 + 200);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2146B125C;
}

void sub_2146B125C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 208);
  v9 = *(v3 + 216);
  v11 = *(v3 + 224);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v11);
    *(v3 + 200) = v5;
    *(v3 + 208) = v4;
    *(v3 + 216) = v7;
    *(v3 + 224) = v6;
    *(v3 + 232) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_214032564(v14, v15);
  }

  else
  {
    v16 = *(v3 + 208);

    sub_214032564(v9, v11);
    *(v3 + 200) = v5;
    *(v3 + 208) = v4;
    *(v3 + 216) = v7;
    *(v3 + 224) = v6;
    *(v3 + 232) = v8;
  }

  free(v2);
}

uint64_t (*sub_2146B1374(void *a1))()
{
  v3 = *(v1 + 32);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2146B9238;
  }

  return result;
}

uint64_t (*sub_2146B1410(uint64_t *a1))()
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
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2146B923C;
}

uint64_t sub_2146B14A4()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_2146B14B0(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2146B14E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_2146B154C(uint64_t *a1)
{
  sub_214032310(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2146B15F4(uint64_t a1)
{
  v2 = v1;
  v10 = a1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v9 = *(v2 + 40);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v4(&v10, &v9, v8))
  {
    sub_213FB7170(*(v2 + 32));

    *(v2 + 32) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2146B172C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 32);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2146B17C8;
  }

  return result;
}

uint64_t sub_2146B17E0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);

  sub_213FBE134(v5);

  result = sub_213FB7170(v8);
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  return result;
}

void (*sub_2146B1854(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2146B18E8;
}

uint64_t sub_2146B1914@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 64);
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_2146B1980(uint64_t *a1)
{
  sub_214032310(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2146B1A28(uint64_t a1)
{
  v2 = v1;
  v10 = a1;
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v9 = *(v2 + 72);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v4(&v10, &v9, v8))
  {
    sub_213FB7170(*(v2 + 64));

    *(v2 + 64) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2146B1B60(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 64);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2146B1BFC;
  }

  return result;
}

uint64_t sub_2146B1BFC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v11 = *a1;
    v8 = *(v4 + 48);
    v9 = *(v4 + 56);
    v12 = *(v4 + 72);
    v13 = 0x6E776F6E6B6E753CLL;
    v14 = 0xE90000000000003ELL;
    v15 = 0xD00000000000001CLL;
    v16 = 0x800000021478A360;
    if (v8(&v11, &v12, &v13))
    {
      sub_213FB7170(a1[2]);

      *(v4 + 64) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v11 = *a1;
  v6 = *(v4 + 48);
  v5 = *(v4 + 56);
  v12 = *(v4 + 72);
  v13 = 0x6E776F6E6B6E753CLL;
  v14 = 0xE90000000000003ELL;
  v15 = 0xD00000000000001CLL;
  v16 = 0x800000021478A360;

  if ((v6(&v11, &v12, &v13) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  sub_213FB7170(a1[2]);

  *(v4 + 64) = v3;
}

uint64_t sub_2146B1DD4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);

  sub_213FBE134(v5);

  result = sub_213FB7170(v8);
  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  return result;
}

void (*sub_2146B1E48(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2146B1EDC;
}

void sub_2146B1EDC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v9 = *(v3 + 56);
  v8 = *(v3 + 64);
  if (a2)
  {
    v10 = (*a1)[1];

    sub_213FBE134(v6);

    sub_213FB7170(v8);
    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v6;
    *(v3 + 72) = v7;
    v11 = v2[1];
    v12 = v2[2];

    sub_213FB7170(v12);
  }

  else
  {
    v13 = *(v3 + 56);

    sub_213FB7170(v8);
    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v6;
    *(v3 + 72) = v7;
  }

  free(v2);
}

uint64_t (*sub_2146B1FBC(void *a1))()
{
  v3 = *(v1 + 32);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2146B9238;
  }

  return result;
}

uint64_t (*sub_2146B2058(uint64_t *a1))()
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
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2146B923C;
}

uint64_t sub_2146B20EC()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_2146B20F8(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t (*sub_2146B2140(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 32);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2146B17C8;
  }

  return result;
}

void (*sub_2146B21DC(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2146B18E8;
}

uint64_t sub_2146B2290(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t, uint64_t, unint64_t, unint64_t, unint64_t))
{
  a5(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2146B2340(uint64_t a1, void (*a2)(void))
{
  v4 = v2;
  v12 = a1;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v11 = *(v4 + 40);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(&v12, &v11, v10))
  {
    a2(*(v4 + 32));

    *(v4 + 32) = a1;
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

uint64_t (*sub_2146B2488(void *a1))()
{
  v3 = *(v1 + 32);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2146B9238;
  }

  return result;
}

uint64_t sub_2146B2524(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v5 = *a1;
  v6 = a1[1];
  if ((a2 & 1) == 0)
  {
    v13 = *a1;
    v10 = *(v6 + 16);
    v11 = *(v6 + 24);
    v14 = *(v6 + 40);
    v15 = 0x6E776F6E6B6E753CLL;
    v16 = 0xE90000000000003ELL;
    v17 = 0xD00000000000001CLL;
    v18 = 0x800000021478A360;
    if (v10(&v13, &v14, &v15))
    {
      a3(a1[2]);

      *(v6 + 32) = v5;
      return result;
    }

    goto LABEL_8;
  }

  v13 = *a1;
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  v14 = *(v6 + 40);
  v15 = 0x6E776F6E6B6E753CLL;
  v16 = 0xE90000000000003ELL;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;

  if ((v8(&v13, &v14, &v15) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v12 = 0x6E776F6E6B6E753CLL;
    v12[1] = 0xE90000000000003ELL;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  a3(a1[2]);

  *(v6 + 32) = v5;
}

uint64_t sub_2146B2744(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v12 = *(a1 + 24);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);

  a5(v11);

  result = a6(v14);
  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  return result;
}

uint64_t (*sub_2146B27D0(uint64_t *a1))()
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
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2146B923C;
}

void sub_2146B2864(uint64_t **a1, char a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v5 = *a1;
  v6 = (*a1)[4];
  v8 = **a1;
  v7 = (*a1)[1];
  v9 = (*a1)[2];
  v10 = *(*a1 + 24);
  v12 = *(v6 + 24);
  v11 = *(v6 + 32);
  if (a2)
  {
    v14 = (*a1)[1];

    a4(v9);

    a3(v11);
    *(v6 + 16) = v8;
    *(v6 + 24) = v7;
    *(v6 + 32) = v9;
    *(v6 + 40) = v10;
    v15 = v5[1];
    v16 = v5[2];

    a3(v16);
  }

  else
  {
    v17 = *(v6 + 24);

    a3(v11);
    *(v6 + 16) = v8;
    *(v6 + 24) = v7;
    *(v6 + 32) = v9;
    *(v6 + 40) = v10;
  }

  free(v5);
}

uint64_t sub_2146B2944@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_2146B29B0(uint64_t *a1)
{
  sub_214032310(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2146B2A58(uint64_t a1)
{
  v2 = v1;
  v10 = a1;
  v4 = *v1;
  v5 = *(v1 + 8);
  v9 = *(v2 + 24);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v4(&v10, &v9, v8))
  {
    sub_213FB7170(*(v2 + 16));

    *(v2 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2146B2B90(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2146B2C2C;
  }

  return result;
}

uint64_t sub_2146B2C2C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v11 = *a1;
    v8 = *v4;
    v9 = *(v4 + 8);
    v12 = *(v4 + 24);
    v13 = 0x6E776F6E6B6E753CLL;
    v14 = 0xE90000000000003ELL;
    v15 = 0xD00000000000001CLL;
    v16 = 0x800000021478A360;
    if (v8(&v11, &v12, &v13))
    {
      sub_213FB7170(a1[2]);

      *(v4 + 16) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v11 = *a1;
  v6 = *v4;
  v5 = *(v4 + 8);
  v12 = *(v4 + 24);
  v13 = 0x6E776F6E6B6E753CLL;
  v14 = 0xE90000000000003ELL;
  v15 = 0xD00000000000001CLL;
  v16 = 0x800000021478A360;

  if ((v6(&v11, &v12, &v13) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  sub_213FB7170(a1[2]);

  *(v4 + 16) = v3;
}

uint64_t sub_2146B2E04(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);

  sub_213FBE134(v5);

  result = sub_213FB7170(v8);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

void (*sub_2146B2E78(uint64_t *a1))(uint64_t **a1, char a2)
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
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2146B2F0C;
}

void sub_2146B2F0C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v9 = *(v3 + 8);
  v8 = *(v3 + 16);
  if (a2)
  {
    v10 = (*a1)[1];

    sub_213FBE134(v6);

    sub_213FB7170(v8);
    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    v11 = v2[1];
    v12 = v2[2];

    sub_213FB7170(v12);
  }

  else
  {
    v13 = *(v3 + 8);

    sub_213FB7170(v8);
    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
  }

  free(v2);
}

uint64_t sub_2146B2FCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_2146B3038(uint64_t *a1)
{
  sub_214032310(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2146B30E0(uint64_t a1)
{
  v2 = v1;
  v10 = a1;
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v9 = *(v2 + 56);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v4(&v10, &v9, v8))
  {
    sub_213FB7170(*(v2 + 48));

    *(v2 + 48) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2146B3218(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 48);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2146B32B4;
  }

  return result;
}

uint64_t sub_2146B32B4(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v11 = *a1;
    v8 = *(v4 + 32);
    v9 = *(v4 + 40);
    v12 = *(v4 + 56);
    v13 = 0x6E776F6E6B6E753CLL;
    v14 = 0xE90000000000003ELL;
    v15 = 0xD00000000000001CLL;
    v16 = 0x800000021478A360;
    if (v8(&v11, &v12, &v13))
    {
      sub_213FB7170(a1[2]);

      *(v4 + 48) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v11 = *a1;
  v6 = *(v4 + 32);
  v5 = *(v4 + 40);
  v12 = *(v4 + 56);
  v13 = 0x6E776F6E6B6E753CLL;
  v14 = 0xE90000000000003ELL;
  v15 = 0xD00000000000001CLL;
  v16 = 0x800000021478A360;

  if ((v6(&v11, &v12, &v13) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  sub_213FB7170(a1[2]);

  *(v4 + 48) = v3;
}

uint64_t sub_2146B348C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);

  sub_213FBE134(v5);

  result = sub_213FB7170(v8);
  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  return result;
}

void (*sub_2146B3500(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2146B3594;
}

void sub_2146B3594(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v9 = *(v3 + 40);
  v8 = *(v3 + 48);
  if (a2)
  {
    v10 = (*a1)[1];

    sub_213FBE134(v6);

    sub_213FB7170(v8);
    *(v3 + 32) = v5;
    *(v3 + 40) = v4;
    *(v3 + 48) = v6;
    *(v3 + 56) = v7;
    v11 = v2[1];
    v12 = v2[2];

    sub_213FB7170(v12);
  }

  else
  {
    v13 = *(v3 + 40);

    sub_213FB7170(v8);
    *(v3 + 32) = v5;
    *(v3 + 40) = v4;
    *(v3 + 48) = v6;
    *(v3 + 56) = v7;
  }

  free(v2);
}

uint64_t sub_2146B3654@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 80);
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_2146B36C0(uint64_t *a1)
{
  sub_214032310(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2146B3768(uint64_t a1)
{
  v2 = v1;
  v10 = a1;
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v9 = *(v2 + 88);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v4(&v10, &v9, v8))
  {
    sub_213FB7170(*(v2 + 80));

    *(v2 + 80) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2146B38A0(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 80);
  a1[1] = v1;
  a1[2] = v3;
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v3;

    return sub_2146B393C;
  }

  return result;
}

uint64_t sub_2146B393C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v11 = *a1;
    v8 = *(v4 + 64);
    v9 = *(v4 + 72);
    v12 = *(v4 + 88);
    v13 = 0x6E776F6E6B6E753CLL;
    v14 = 0xE90000000000003ELL;
    v15 = 0xD00000000000001CLL;
    v16 = 0x800000021478A360;
    if (v8(&v11, &v12, &v13))
    {
      sub_213FB7170(a1[2]);

      *(v4 + 80) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v11 = *a1;
  v6 = *(v4 + 64);
  v5 = *(v4 + 72);
  v12 = *(v4 + 88);
  v13 = 0x6E776F6E6B6E753CLL;
  v14 = 0xE90000000000003ELL;
  v15 = 0xD00000000000001CLL;
  v16 = 0x800000021478A360;

  if ((v6(&v11, &v12, &v13) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  sub_213FB7170(a1[2]);

  *(v4 + 80) = v3;
}

uint64_t sub_2146B3B14(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 72);
  v8 = *(a2 + 80);

  sub_213FBE134(v5);

  result = sub_213FB7170(v8);
  *(a2 + 64) = v4;
  *(a2 + 72) = v3;
  *(a2 + 80) = v5;
  *(a2 + 88) = v6;
  return result;
}

void (*sub_2146B3B88(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  *v4 = *(v1 + 64);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  sub_213FBE134(v6);
  return sub_2146B3C1C;
}

void sub_2146B3C1C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v9 = *(v3 + 72);
  v8 = *(v3 + 80);
  if (a2)
  {
    v10 = (*a1)[1];

    sub_213FBE134(v6);

    sub_213FB7170(v8);
    *(v3 + 64) = v5;
    *(v3 + 72) = v4;
    *(v3 + 80) = v6;
    *(v3 + 88) = v7;
    v11 = v2[1];
    v12 = v2[2];

    sub_213FB7170(v12);
  }

  else
  {
    v13 = *(v3 + 72);

    sub_213FB7170(v8);
    *(v3 + 64) = v5;
    *(v3 + 72) = v4;
    *(v3 + 80) = v6;
    *(v3 + 88) = v7;
  }

  free(v2);
}

uint64_t sub_2146B3CDC(uint64_t a1, uint64_t a2)
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

uint64_t (*sub_2146B3E24(void *a1))(uint64_t *a1, char a2)
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

void (*sub_2146B3EC0(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_2146B3F58(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_2146B4024(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 64);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 56);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2146B40C4;
  }

  return result;
}

uint64_t sub_2146B4104(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, unint64_t, unint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  if (a2)
  {
    a4(*a1, v7);
    a3(v6, v7, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    a5(v6, v7);
  }

  else
  {
    a3(*a1, v7, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return (a5)(v6, v7);
}

void (*sub_2146B426C(uint64_t *a1))(uint64_t **a1, char a2)
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

  sub_213FDCA18(v6, v7);
  return sub_2146B430C;
}

void sub_2146B4338(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = (*a1)[5];
  v8 = **a1;
  v7 = (*a1)[1];
  v10 = (*a1)[2];
  v9 = (*a1)[3];
  v20 = *(*a1 + 32);
  v12 = *(v6 + 48);
  v11 = *(v6 + 56);
  v13 = *(v6 + 64);
  if (a2)
  {

    a4(v10, v9);

    a3(v11, v13);
    *(v6 + 40) = v8;
    *(v6 + 48) = v7;
    *(v6 + 56) = v10;
    *(v6 + 64) = v9;
    *(v6 + 72) = v20;
    v15 = v5[1];
    v16 = v5[2];
    v17 = v5[3];

    a3(v16, v17);
  }

  else
  {
    v18 = *(v6 + 48);

    a3(v11, v13);
    *(v6 + 40) = v8;
    *(v6 + 48) = v7;
    *(v6 + 56) = v10;
    *(v6 + 64) = v9;
    *(v6 + 72) = v20;
  }

  free(v5);
}

uint64_t sub_2146B444C(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146B4518(uint64_t *a1))(uint64_t *, char)
{
  a1[2] = v1;
  v2 = *(v1 + 104);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 96);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146B45B8;
  }

  return result;
}

uint64_t (*sub_2146B45BC(uint64_t *a1))()
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

  sub_21404F7E0(v6, v7);
  return sub_2146B465C;
}

void sub_2146B4660(uint64_t **a1, char a2)
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

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v11);
    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v7;
    *(v3 + 104) = v6;
    *(v3 + 112) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_214032564(v14, v15);
  }

  else
  {
    v16 = *(v3 + 88);

    sub_214032564(v9, v11);
    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v7;
    *(v3 + 104) = v6;
    *(v3 + 112) = v8;
  }

  free(v2);
}

uint64_t sub_2146B4740(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146B480C(uint64_t *a1))(uint64_t *, char)
{
  a1[2] = v1;
  v2 = *(v1 + 144);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 136);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146B48AC;
  }

  return result;
}

void (*sub_2146B48B0(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  *v4 = *(v1 + 120);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2146B4950;
}

uint64_t sub_2146B4954(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146B4A20(uint64_t *a1))(uint64_t *, char)
{
  a1[2] = v1;
  v2 = *(v1 + 184);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 176);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146B4AC0;
  }

  return result;
}

void (*sub_2146B4AC4(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(v1 + 168);
  v6 = *(v1 + 176);
  v7 = *(v1 + 184);
  v8 = *(v1 + 192);
  *v4 = *(v1 + 160);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2146B4B64;
}

uint64_t sub_2146B4B98()
{
  result = *(v0 + 200);
  v2 = *(v0 + 208);
  return result;
}

uint64_t sub_2146B4BA4(uint64_t result, char a2)
{
  *(v2 + 200) = result;
  *(v2 + 208) = a2 & 1;
  return result;
}

uint64_t sub_2146B4BD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 240);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 232);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_2146B4C48(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2146B4CF8(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2146B4DC4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 240);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 232);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2146B4E64;
  }

  return result;
}

uint64_t sub_2146B4E64(uint64_t *a1, char a2)
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

uint64_t sub_2146B4FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 224);
  v3 = *(a1 + 232);
  v4 = *(a1 + 240);
  v5 = *(a1 + 248);
  *a2 = *(a1 + 216);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2146B4FF8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 224);
  v9 = *(a2 + 232);
  v10 = *(a2 + 240);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v9, v10);
  *(a2 + 216) = v4;
  *(a2 + 224) = v3;
  *(a2 + 232) = v5;
  *(a2 + 240) = v6;
  *(a2 + 248) = v7;
  return result;
}

void (*sub_2146B5080(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 224);
  v6 = *(v1 + 232);
  v7 = *(v1 + 240);
  v8 = *(v1 + 248);
  *v4 = *(v1 + 216);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2146B5120;
}

void sub_2146B5120(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 224);
  v9 = *(v3 + 232);
  v11 = *(v3 + 240);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v11);
    *(v3 + 216) = v5;
    *(v3 + 224) = v4;
    *(v3 + 232) = v7;
    *(v3 + 240) = v6;
    *(v3 + 248) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_214032564(v14, v15);
  }

  else
  {
    v16 = *(v3 + 224);

    sub_214032564(v9, v11);
    *(v3 + 216) = v5;
    *(v3 + 224) = v4;
    *(v3 + 232) = v7;
    *(v3 + 240) = v6;
    *(v3 + 248) = v8;
  }

  free(v2);
}

uint64_t NameAndPhotoNameOnlyUpdate.firstName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NameAndPhotoNameOnlyUpdate.firstName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NameAndPhotoNameOnlyUpdate.lastName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NameAndPhotoNameOnlyUpdate.lastName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NameAndPhotoNameOnlyUpdate.updateInfoIncluded.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t NameAndPhotoNameOnlyUpdate.updateInfoIncluded.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

void NameAndPhoto.UpdateType.init(from:)(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v5 = __dst[0];
  v6 = __dst[1];
  if (!__dst[1])
  {
    goto LABEL_22;
  }

  v7 = __dst[0] == 0xD000000000000012 && 0x80000002147A71F0 == __dst[1];
  if (v7 || (sub_2146DA6A8() & 1) != 0)
  {
    sub_2146B5778(__src, __srca);
    if (v2)
    {
      return;
    }

    memcpy(v24, __srca, sizeof(v24));
    sub_214323040(v24);
    v8 = v24;
    goto LABEL_16;
  }

  if ((v5 != 0x796C6E4F656D614ELL || v6 != 0xEE00657461647055) && (sub_2146DA6A8() & 1) == 0)
  {
    if (v5 == 0xD000000000000010 && 0x80000002147A71D0 == v6 || (sub_2146DA6A8() & 1) != 0)
    {
      sub_2146B6C60(__src, v24);
      if (v2)
      {
        return;
      }

      *&__srca[192] = *&v24[192];
      *&__srca[208] = *&v24[208];
      *&__srca[224] = *&v24[224];
      *&__srca[233] = *&v24[233];
      *&__srca[128] = *&v24[128];
      *&__srca[144] = *&v24[144];
      *&__srca[160] = *&v24[160];
      *&__srca[176] = *&v24[176];
      *&__srca[64] = *&v24[64];
      *&__srca[80] = *&v24[80];
      *&__srca[96] = *&v24[96];
      *&__srca[112] = *&v24[112];
      *__srca = *v24;
      *&__srca[16] = *&v24[16];
      *&__srca[32] = *&v24[32];
      *&__srca[48] = *&v24[48];
      sub_214322E90(__srca);
LABEL_15:
      v8 = __srca;
LABEL_16:
      memcpy(v26, v8, sizeof(v26));
      memcpy(a2, v26, 0x261uLL);
      return;
    }

LABEL_22:
    if (qword_27C902F38 != -1)
    {
      swift_once();
    }

    v14 = sub_2146D9208();
    __swift_project_value_buffer(v14, qword_27C9046E0);
    sub_2146A51CC(__dst, __srca);
    v15 = sub_2146D91E8();
    v16 = sub_2146D9BA8();
    sub_2146A5204(__dst);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v24 = v18;
      *v17 = 136446210;
      if (v6)
      {
        *__srca = v5;
        *&__srca[8] = v6;

        v19 = sub_2146D9618();
        v21 = v20;
      }

      else
      {
        v21 = 0xE300000000000000;
        v19 = 7104878;
      }

      v22 = sub_2144AEA38(v19, v21, v24);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_213FAF000, v15, v16, "Unknown NameAndPhoto type: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x216056AC0](v18, -1, -1);
      MEMORY[0x216056AC0](v17, -1, -1);
    }

    sub_2146B7BDC();
    swift_allocError();
    *v23 = 0;
    v23[1] = 0;
    goto LABEL_30;
  }

  v9 = __dst[47];
  v10 = __dst[49];
  if (__dst[47] | __dst[49])
  {
    v12 = __dst[46];
    v13 = __dst[48];

    sub_2146A5204(__dst);
    *__srca = v12;
    *&__srca[8] = v9;
    *&__srca[16] = v13;
    *&__srca[24] = v10;
    *&__srca[32] = __dst[14];
    __srca[40] = __dst[15];
    sub_214322F68(__srca);
    goto LABEL_15;
  }

  sub_2146B7BDC();
  swift_allocError();
  *v11 = 0xD00000000000002ALL;
  v11[1] = 0x80000002147A7210;
LABEL_30:
  swift_willThrow();
  sub_2146A5204(__dst);
}

__n128 sub_2146B5778@<Q0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, __src, 0x190uLL);
  v2 = __dst[21];
  if (__dst[21] >= 3uLL)
  {
    v2 = 3;
  }

  if (LOBYTE(__dst[22]))
  {
    v3 = 3;
  }

  else
  {
    v3 = v2;
  }

  v54 = BYTE1(__dst[22]);
  v55 = v3;
  v52 = BYTE3(__dst[22]);
  v53 = BYTE2(__dst[22]);
  if (__dst[13])
  {
    if (__dst[12] == 5457241 && __dst[13] == 0xE300000000000000)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_2146DA6A8() & 1;
    }
  }

  else
  {
    v4 = 2;
  }

  v70 = v4;
  v5 = __dst[23];
  v110 = __dst[24];
  v6 = __dst[6];
  v7 = __dst[7];
  v8 = __dst[8];
  v9 = __dst[9];
  v10 = __dst[10];
  v11 = __dst[11];
  v12 = __dst[16];
  v13 = __dst[17];
  v97 = __dst[25];
  v99 = __dst[26];
  sub_213FDCA18(__dst[25], __dst[26]);
  v82 = v6;
  v84 = v7;
  sub_213FDCA18(v6, v7);
  v74 = v9;
  sub_213FDCA18(v8, v9);
  v61 = v11;
  sub_213FDCA18(v10, v11);
  sub_213FDCA18(v12, v13);
  sub_2146ABB50(&v130);
  v14 = *(&v130 + 1);
  v15 = v130;
  v16 = v131;
  LOBYTE(v7) = v132;
  sub_2146ABCA4(v127);
  v59 = *&v127[8];
  v103 = *v127;
  v58 = *&v127[24];
  LODWORD(v158) = v128;
  sub_2146ABE0C(&v123);
  v108 = v123;
  v65 = v124;
  v62 = *(&v123 + 1);
  v63 = *(&v124 + 1);
  v105 = v125;
  sub_2146ABF7C(&v117);
  v93 = v117;
  v67 = v118;
  v86 = v120;
  v88 = v119;
  v90 = v121;
  sub_2146AC0EC(&v147);
  v17 = v147;
  v75 = v149;
  v77 = v148;
  v79 = v150;
  sub_2146AC25C(&v143);
  v72 = v143;
  v68 = v144;
  v73 = v145;
  v71 = v146;
  *v127 = v5;
  *&v127[8] = v110;
  v69 = v7;
  LOBYTE(v123) = v7;
  *&v130 = 0xD000000000000052;
  *(&v130 + 1) = 0x8000000214791A00;
  *&v131 = 0xD00000000000001CLL;
  *(&v131 + 1) = 0x800000021478A360;

  sub_213FDC9D0(v16, *(&v16 + 1));
  v101 = v14;
  v18 = v15(v127, &v123, &v130);
  if (v57)
  {
    sub_213FDC6BC(v12, v13);
    sub_213FDC6BC(v10, v11);
    sub_213FDC6BC(v8, v74);
    v19 = v99;
    v20 = v14;
  }

  else
  {
    if (v18)
    {
      sub_213FDC6D0(v16, *(&v16 + 1));

      sub_213FDC6D0(v16, *(&v16 + 1));
      v130 = __PAIR128__(v59, v103);
      v131 = __PAIR128__(v58, *(&v59 + 1));
      LOBYTE(v132) = v158;

      sub_21404F7E0(*(&v59 + 1), v58);
      v158 = "meCloudKitRecordID";
      sub_214032118(v97, v99, 2, 0xD00000000000004FLL, 0x8000000214791A60, 0xD00000000000001CLL, 0x800000021478A360);

      *v51 = *(&v130 + 1);
      v104 = v130;
      *&v51[8] = v131;
      LODWORD(v158) = v132;

      sub_214032564(*(&v59 + 1), v58);
      *&v130 = v108;
      *(&v130 + 1) = v62;
      *&v131 = v65;
      *(&v131 + 1) = v63;
      LOBYTE(v132) = v105;

      sub_21404F7E0(v65, v63);
      sub_214032118(v82, v84, 2, 0xD000000000000042, 0x8000000214791AB0, 0xD00000000000001CLL, 0x800000021478A360);

      v22 = v130;
      v60 = v131;
      v106 = v132;

      sub_214032564(v65, v63);
      *&v130 = v93;
      *(&v130 + 1) = v67;
      *&v131 = v88;
      *(&v131 + 1) = v86;
      LOBYTE(v132) = v90;

      sub_21404F7E0(v88, v86);
      sub_214032118(v8, v74, 2, 0xD000000000000048, 0x8000000214791B00, 0xD00000000000001CLL, 0x800000021478A360);

      v94 = v130;
      v23 = v131;
      v64 = *(&v130 + 1);
      v66 = *(&v131 + 1);
      v91 = v132;

      sub_214032564(v88, v86);
      v130 = v17;
      *&v131 = v77;
      *(&v131 + 1) = v75;
      LOBYTE(v132) = v79;

      sub_21404F7E0(v77, v75);
      sub_214032118(v10, v61, 2, 0xD000000000000046, 0x8000000214791B50, 0xD00000000000001CLL, 0x800000021478A360);

      v24 = v130;
      v25 = v131;
      v80 = v132;

      sub_214032564(v77, v75);
      v147 = v72;
      v148 = v68;
      v149 = v73;
      v150 = v71;

      sub_21404F7E0(v68, v73);
      sub_214032118(v12, v13, 2, 0xD000000000000045, 0x8000000214791BA0, 0xD00000000000001CLL, 0x800000021478A360);
      sub_213FDC6BC(v12, v13);
      sub_213FDC6BC(v10, v61);
      sub_213FDC6BC(v8, v74);
      sub_213FDC6BC(v82, v84);
      sub_213FDC6BC(v97, v99);

      v26 = v148;
      v27 = v149;
      v28 = v150;

      sub_214032564(v68, v73);
      v130 = __PAIR128__(v101, v15);
      *&v131 = v5;
      *(&v131 + 1) = v110;
      LOBYTE(v132) = v69;
      *(&v132 + 1) = *v156;
      DWORD1(v132) = *&v156[3];
      *(&v132 + 1) = v104;
      v133 = *v51;
      *&v134 = *&v51[16];
      BYTE8(v134) = v158;
      *(&v134 + 9) = *v155;
      HIDWORD(v134) = *&v155[3];
      v135 = v22;
      v136 = v60;
      LOBYTE(v137) = v106;
      *(&v137 + 1) = *v154;
      DWORD1(v137) = *&v154[3];
      *(&v137 + 1) = v94;
      *&v138 = v64;
      *(&v138 + 1) = v23;
      *&v139 = v66;
      BYTE8(v139) = v91;
      *(&v139 + 9) = *v153;
      HIDWORD(v139) = *&v153[3];
      v140 = v24;
      v141 = v25;
      v142[0] = v80;
      v142[1] = v70;
      *&v142[6] = v152;
      *&v142[2] = v151;
      *&v142[8] = v147;
      *&v142[24] = v26;
      *&v142[32] = v27;
      v142[40] = v28;
      v29 = __dst[27];
      LOBYTE(v26) = __dst[28];
      v30 = __dst[29];

      sub_2142266C0(v29, v26, v30, v127);
      v158 = *v127;
      v31 = v127[8];
      v32 = *&v127[16];
      v33 = v128;
      LOBYTE(v26) = BYTE8(v128);
      v34 = __dst[30];
      LOBYTE(v30) = __dst[31];
      v35 = __dst[33];
      v36 = __dst[32];

      sub_214226FF8(v34, v30, v35, v36, v127);
      v107 = v31;
      v111 = v33;
      v109 = v26;
      v125 = v128;
      v126[0] = v129[0];
      *(v126 + 9) = *(v129 + 9);
      v123 = *v127;
      v124 = *&v127[16];
      LOBYTE(v34) = __dst[35];
      v37 = __dst[34];
      v38 = __dst[36];

      sub_214227EC0(v37, v34, v38, &v117);
      v39 = v117;
      LOBYTE(v26) = v118;
      v102 = v119;
      v40 = v120;
      v41 = v121;
      v100 = v122;
      v42 = __dst[38];
      v43 = __dst[37];
      v44 = __dst[39];

      sub_214228800(v43, v42, v44, &v117);
      LOBYTE(v44) = v118;
      v92 = v119;
      v95 = v117;
      v96 = v120;
      v98 = v121;
      v89 = v122;
      LOBYTE(v34) = __dst[41];
      v45 = __dst[40];
      v46 = __dst[42];

      sub_21422914C(v45, v34, v46, &v117);
      v81 = v118;
      v78 = v119;
      v83 = v117;
      v85 = v120;
      v87 = v121;
      v76 = v122;
      v47 = __dst[43];
      v48 = __dst[44];
      v49 = __dst[45];

      sub_214229A98(v47, v48, v49, v115);
      sub_2146A5204(__dst);
      *&v114[179] = v141;
      *&v114[195] = *v142;
      *&v114[211] = *&v142[16];
      *&v114[220] = *&v142[25];
      *&v114[115] = v137;
      *&v114[131] = v138;
      *&v114[147] = v139;
      *&v114[163] = v140;
      *&v114[51] = v133;
      *&v114[67] = v134;
      *&v113[23] = v124;
      *&v113[39] = v125;
      *&v113[55] = v126[0];
      *&v114[83] = v135;
      *&v114[99] = v136;
      *&v114[3] = v130;
      *&v114[19] = v131;
      *&v114[35] = v132;
      *&v113[64] = *(v126 + 9);
      *&v113[7] = v123;
      *&v112[7] = v115[0];
      *&v112[23] = v115[1];
      *&v112[80] = *(v116 + 9);
      *&v112[71] = v116[0];
      *&v112[55] = v115[3];
      *&v112[39] = v115[2];
      *a2 = __dst[18];
      *(a2 + 1) = v55;
      *(a2 + 2) = v54;
      *(a2 + 3) = v53;
      *(a2 + 4) = v52;
      *(a2 + 181) = *&v114[176];
      *(a2 + 197) = *&v114[192];
      *(a2 + 213) = *&v114[208];
      *(a2 + 225) = *&v114[220];
      *(a2 + 117) = *&v114[112];
      *(a2 + 133) = *&v114[128];
      *(a2 + 149) = *&v114[144];
      *(a2 + 165) = *&v114[160];
      *(a2 + 53) = *&v114[48];
      *(a2 + 69) = *&v114[64];
      *(a2 + 85) = *&v114[80];
      *(a2 + 101) = *&v114[96];
      *(a2 + 5) = *v114;
      *(a2 + 21) = *&v114[16];
      *(a2 + 37) = *&v114[32];
      *(a2 + 248) = v158;
      *(a2 + 256) = v107;
      *(a2 + 264) = v32;
      *(a2 + 280) = v111;
      *(a2 + 288) = v109;
      *(a2 + 321) = *&v113[32];
      *(a2 + 337) = *&v113[48];
      *(a2 + 353) = *&v113[64];
      *(a2 + 289) = *v113;
      *(a2 + 305) = *&v113[16];
      *(a2 + 376) = v39;
      *(a2 + 384) = v26;
      *(a2 + 392) = v102;
      *(a2 + 400) = v40;
      *(a2 + 408) = v41;
      *(a2 + 416) = v100;
      *(a2 + 424) = v95;
      *(a2 + 432) = v44;
      *(a2 + 440) = v92;
      *(a2 + 448) = v96;
      *(a2 + 456) = v98;
      *(a2 + 464) = v89;
      *(a2 + 472) = v83;
      *(a2 + 480) = v81;
      *(a2 + 488) = v78;
      *(a2 + 496) = v85;
      *(a2 + 504) = v87;
      *(a2 + 512) = v76;
      *(a2 + 545) = *&v112[32];
      *(a2 + 561) = *&v112[48];
      *(a2 + 577) = *&v112[64];
      *(a2 + 593) = *&v112[80];
      result = *v112;
      *(a2 + 513) = *v112;
      *(a2 + 529) = *&v112[16];
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD000000000000052;
    v21[1] = 0x8000000214791A00;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(v12, v13);
    sub_213FDC6BC(v10, v11);
    sub_213FDC6BC(v8, v74);
    v19 = v99;
    v20 = v14;
  }

  sub_213FDC6BC(v82, v84);
  sub_213FDC6BC(v97, v19);
  sub_2146A5204(__dst);

  sub_213FDC6D0(v16, *(&v16 + 1));
  *&v130 = v15;
  *(&v130 + 1) = v20;
  v131 = v16;
  LOBYTE(v132) = v69;
  *(&v132 + 1) = *v156;
  DWORD1(v132) = *&v156[3];
  *(&v132 + 1) = v103;
  v133 = v59;
  *&v134 = v58;
  BYTE8(v134) = v158;
  *(&v134 + 9) = *v155;
  HIDWORD(v134) = *&v155[3];
  *&v135 = v108;
  *(&v135 + 1) = v62;
  *&v136 = v65;
  *(&v136 + 1) = v63;
  LOBYTE(v137) = v105;
  DWORD1(v137) = *&v154[3];
  *(&v137 + 1) = *v154;
  *(&v137 + 1) = v93;
  *&v138 = v67;
  *(&v138 + 1) = v88;
  *&v139 = v86;
  BYTE8(v139) = v90;
  *(&v139 + 9) = *v153;
  HIDWORD(v139) = *&v153[3];
  v140 = v17;
  *&v141 = v77;
  *(&v141 + 1) = v75;
  v142[0] = v79;
  v142[1] = v70;
  *&v142[6] = v152;
  *&v142[2] = v151;
  *&v142[8] = v72;
  *&v142[24] = v68;
  *&v142[32] = v73;
  v142[40] = v71;
  sub_2142F9DF8(&v130);
  return result;
}

uint64_t NameAndPhotoNameOnlyUpdate.init(from:)@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(v11, __src, sizeof(v11));
  v3 = v11[47];
  v4 = v11[49];
  if (v11[47] | v11[49])
  {
    v7 = v11[46];
    v8 = v11[48];

    result = sub_2146A5204(v11);
    v9 = v11[14];
    v10 = v11[15];
    *a2 = v7;
    *(a2 + 8) = v3;
    *(a2 + 16) = v8;
    *(a2 + 24) = v4;
    *(a2 + 32) = v9;
    *(a2 + 40) = v10;
  }

  else
  {
    sub_2146A5204(v11);
    sub_2146B7BDC();
    swift_allocError();
    *v5 = 0xD00000000000002ALL;
    v5[1] = 0x80000002147A7210;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2146B6C60@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  memcpy(__dst, __src, 0x190uLL);
  if (!__dst[3])
  {
    sub_2146A5204(__dst);
    v6 = 0x8000000214795240;
    sub_2146B7BDC();
    swift_allocError();
    v8 = 0xD000000000000016;
    goto LABEL_5;
  }

  v5 = __dst[5];
  if (__dst[5] >> 60 == 15)
  {
    sub_2146A5204(__dst);
    v6 = 0x8000000214795260;
    sub_2146B7BDC();
    swift_allocError();
    v8 = 0xD00000000000001DLL;
LABEL_5:
    *v7 = v8;
    v7[1] = v6;
    return swift_willThrow();
  }

  v50 = v3;
  v42 = a2;
  v10 = __dst[4];
  v84 = __dst[2];
  v86 = __dst[3];
  v77 = __dst[4];
  v78 = __dst[5];
  if (__dst[13])
  {

    sub_213FDCA18(v10, v5);

    v11 = sub_2146D9588();

    v62 = [v11 BOOLValue];
  }

  else
  {

    sub_213FDCA18(v10, v5);
    v62 = 0;
  }

  v12 = __dst[6];
  v13 = __dst[7];
  v14 = __dst[8];
  v15 = __dst[9];
  v85 = __dst[10];
  v16 = __dst[11];
  v61 = __dst[14];
  v150 = LOBYTE(__dst[15]);
  v17 = __dst[16];
  v18 = __dst[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  v21[2] = sub_214059904;
  v21[3] = 0;
  v21[4] = 16;
  *(v20 + 16) = sub_214059804;
  *(v20 + 24) = v21;
  *(v19 + 32) = v20;
  v73 = v12;
  sub_213FDCA18(v12, v13);
  v68 = v15;
  sub_213FDCA18(v14, v15);
  v54 = v16;
  sub_213FDCA18(v85, v16);
  v22 = v17;
  sub_213FDCA18(v17, v18);
  sub_214042B80(v19, &v87);
  v23 = v87;
  v24 = v89;
  v43 = v88;
  v25 = v90;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  v28[2] = sub_214059904;
  v28[3] = 0;
  v28[4] = 16;
  v28[5] = sub_21403C354;
  v28[6] = 0;
  *(v27 + 16) = sub_2143A571C;
  *(v27 + 24) = v28;
  *(v26 + 32) = v27;
  sub_214042CD0(v26, &v135);
  v29 = v135;
  v46 = v136;
  v48 = v137;
  v44 = v138;
  v80 = v139;
  sub_2146AAE04(v133);
  v82 = v133[0];
  v79 = v133[2];
  v51 = v133[1];
  v52 = v133[3];
  v149 = v134;
  sub_2146AAF74(v131);
  v76 = v131[0];
  v55 = v131[1];
  v56 = v131[2];
  v71 = v131[3];
  v74 = v132;
  sub_2146AB0E4(v129);
  v67 = v129[0];
  v60 = v129[2];
  v58 = v129[1];
  v59 = v129[3];
  v69 = v130;
  sub_2146AB254(&v125);
  v66 = v125;
  v63 = v126;
  v64 = v127;
  v65 = v128;
  v140 = v150;
  v135 = v84;
  v136 = v86;
  LOBYTE(v133[0]) = v25;
  *&v87 = 0xD00000000000002BLL;
  *(&v87 + 1) = 0x800000021478F110;
  v88 = 0xD00000000000001CLL;
  v89 = 0x800000021478A360;

  v30 = (v23)(&v135, v133, &v87);
  if (v50)
  {
    sub_2146A5204(__dst);
    v31 = v22;
  }

  else
  {
    if (v30)
    {

      *&v87 = v29;
      *(&v87 + 1) = v46;
      v88 = v48;
      v89 = v44;
      v90 = v80;

      sub_213FDCA18(v48, v44);
      sub_214032024(v77, v78, 2, 0xD000000000000032, 0x800000021478F140, 0xD00000000000001CLL, 0x800000021478A360);

      v33 = v87;
      v40 = v88;
      v41 = v89;
      v81 = v90;

      sub_213FDC6BC(v48, v44);
      *&v87 = v82;
      *(&v87 + 1) = v51;
      v88 = v79;
      v89 = v52;
      v90 = v149;

      sub_21404F7E0(v79, v52);
      sub_214032118(v73, v13, 2, 0xD000000000000025, 0x800000021478F180, 0xD00000000000001CLL, 0x800000021478A360);

      v83 = v87;
      v45 = v88;
      v47 = *(&v87 + 1);
      v49 = v89;
      v149 = v90;

      sub_214032564(v79, v52);
      *&v87 = v76;
      *(&v87 + 1) = v55;
      v88 = v56;
      v89 = v71;
      v90 = v74;

      sub_21404F7E0(v56, v71);
      sub_214032118(v14, v68, 2, 0xD00000000000002BLL, 0x800000021478F1B0, 0xD00000000000001CLL, 0x800000021478A360);

      v34 = v87;
      v53 = v88;
      v39 = v89;
      v75 = v90;

      sub_214032564(v56, v71);
      *&v87 = v67;
      *(&v87 + 1) = v58;
      v88 = v60;
      v89 = v59;
      v90 = v69;

      sub_21404F7E0(v60, v59);
      sub_214032118(v85, v54, 2, 0xD000000000000029, 0x800000021478F1E0, 0xD00000000000001CLL, 0x800000021478A360);

      v35 = v87;
      v57 = v88;
      v72 = v89;
      v70 = v90;

      sub_214032564(v60, v59);
      v87 = v66;
      v88 = v63;
      v89 = v64;
      v90 = v65;

      sub_21404F7E0(v63, v64);
      sub_214032118(v22, v18, 2, 0xD000000000000028, 0x800000021478F210, 0xD00000000000001CLL, 0x800000021478A360);
      sub_2146A5204(__dst);
      sub_213FDC6BC(v22, v18);
      sub_213FDC6BC(v85, v54);
      sub_213FDC6BC(v14, v68);
      sub_213FDC6BC(v73, v13);
      sub_213FDC6BC(v77, v78);

      v36 = v88;
      v37 = v89;
      v38 = v90;

      result = sub_214032564(v63, v64);
      *v42 = v23;
      *(v42 + 16) = v84;
      *(v42 + 24) = v86;
      *(v42 + 32) = v25;
      *(v42 + 33) = *v147;
      *(v42 + 36) = *&v147[3];
      *(v42 + 40) = v33;
      *(v42 + 56) = v40;
      *(v42 + 64) = v41;
      *(v42 + 72) = v81;
      *(v42 + 73) = *v146;
      *(v42 + 76) = *&v146[3];
      *(v42 + 80) = v83;
      *(v42 + 88) = v47;
      *(v42 + 96) = v45;
      *(v42 + 104) = v49;
      *(v42 + 112) = v149;
      *(v42 + 113) = *v145;
      *(v42 + 116) = *&v145[3];
      *(v42 + 120) = v34;
      *(v42 + 136) = v53;
      *(v42 + 144) = v39;
      *(v42 + 152) = v75;
      *(v42 + 153) = *v144;
      *(v42 + 156) = *&v144[3];
      *(v42 + 160) = v35;
      *(v42 + 176) = v57;
      *(v42 + 184) = v72;
      *(v42 + 192) = v70;
      *(v42 + 193) = v62;
      *(v42 + 198) = v143;
      *(v42 + 194) = v142;
      *(v42 + 200) = v61;
      *(v42 + 208) = v150;
      *(v42 + 212) = *(v141 + 3);
      *(v42 + 209) = v141[0];
      *(v42 + 216) = v87;
      *(v42 + 232) = v36;
      *(v42 + 240) = v37;
      *(v42 + 248) = v38;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD00000000000002BLL;
    v32[1] = 0x800000021478F110;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();

    sub_2146A5204(__dst);
    v31 = v22;
  }

  sub_213FDC6BC(v31, v18);
  sub_213FDC6BC(v85, v54);
  sub_213FDC6BC(v14, v68);
  sub_213FDC6BC(v73, v13);
  sub_213FDC6BC(v77, v78);

  v87 = v23;
  v88 = v43;
  v89 = v24;
  v90 = v25;
  *v91 = *v147;
  *&v91[3] = *&v147[3];
  v92 = v29;
  v93 = v46;
  v94 = v48;
  v95 = v44;
  v96 = v80;
  *v97 = *v146;
  *&v97[3] = *&v146[3];
  v98 = v82;
  v99 = v51;
  v100 = v79;
  v101 = v52;
  v102 = v149;
  *&v103[3] = *&v145[3];
  *v103 = *v145;
  v104 = v76;
  v105 = v55;
  v106 = v56;
  v107 = v71;
  v108 = v74;
  *v109 = *v144;
  *&v109[3] = *&v144[3];
  v110 = v67;
  v111 = v58;
  v112 = v60;
  v113 = v59;
  v114 = v69;
  v115 = v62;
  v117 = v143;
  v116 = v142;
  v118 = v61;
  v119 = v150;
  *&v120[3] = *(v141 + 3);
  *v120 = v141[0];
  v121 = v66;
  v122 = v63;
  v123 = v64;
  v124 = v65;
  return sub_2142FA450(&v87);
}

unint64_t sub_2146B7BDC()
{
  result = qword_27C918018;
  if (!qword_27C918018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C918018);
  }

  return result;
}

void sub_2146B7C30(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_213FB2E54(a1 + 32, &v46, &qword_27C903FE0, &unk_2146EA760);
  v8 = v46;
  v7 = v47;
  v44 = v46;
  v45 = v47;
  sub_213FDC730(v48, v43);
  v9 = *a3;
  v10 = sub_21408C300(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_2140506C8(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_21408C300(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      sub_2146DA8D8();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v21 = v10;
  sub_214482C24();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v49 = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v43);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  sub_213FDC730(v43, (v22[7] + 32 * v10));
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v26 = a1 + 80;
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      sub_213FB2E54(v26, &v46, &qword_27C903FE0, &unk_2146EA760);
      v29 = v46;
      v28 = v47;
      v44 = v46;
      v45 = v47;
      sub_213FDC730(v48, v43);
      v30 = *a3;
      v31 = sub_21408C300(v29, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        goto LABEL_23;
      }

      v36 = v32;
      if (v30[3] < v35)
      {
        sub_2140506C8(v35, 1);
        v37 = *a3;
        v31 = sub_21408C300(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v40 = (v39[6] + 16 * v31);
      *v40 = v29;
      v40[1] = v28;
      sub_213FDC730(v43, (v39[7] + 32 * v31));
      v41 = v39[2];
      v14 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v27;
      v39[2] = v42;
      v26 += 48;
      if (v4 == v27)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_2146D9EF8();
  MEMORY[0x2160545D0](0xD00000000000001BLL, 0x80000002147A7110);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](39, 0xE100000000000000);
  sub_2146DA018();
  __break(1u);
}

unint64_t sub_2146B803C()
{
  result = qword_27C918020;
  if (!qword_27C918020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C918020);
  }

  return result;
}

unint64_t sub_2146B8094()
{
  result = qword_27C918028;
  if (!qword_27C918028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C918028);
  }

  return result;
}

unint64_t sub_2146B80EC()
{
  result = qword_27C918030;
  if (!qword_27C918030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C918030);
  }

  return result;
}

unint64_t sub_2146B8170()
{
  result = qword_27C918038;
  if (!qword_27C918038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C918038);
  }

  return result;
}

uint64_t sub_2146B83D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t keypath_get_51Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *a3 = *(a1 + 16);
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;

  return a2(v4);
}

uint64_t get_enum_tag_for_layout_string_SaySSGSgSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2146B84BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 609))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 256) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_2146B850C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 600) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 584) = 0u;
    *(a1 + 608) = 0;
    *(a1 + 568) = 0u;
    *(a1 + 552) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 609) = 1;
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
      result = 0.0;
      *(a1 + 224) = 0u;
      *(a1 + 240) = 0u;
      *(a1 + 192) = 0u;
      *(a1 + 208) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 256) = 2 * -a2;
      *(a1 + 264) = 0u;
      *(a1 + 280) = 0u;
      *(a1 + 296) = 0u;
      *(a1 + 312) = 0u;
      *(a1 + 328) = 0u;
      *(a1 + 344) = 0u;
      *(a1 + 360) = 0u;
      *(a1 + 376) = 0u;
      *(a1 + 392) = 0u;
      *(a1 + 408) = 0u;
      *(a1 + 424) = 0u;
      *(a1 + 440) = 0u;
      *(a1 + 456) = 0u;
      *(a1 + 472) = 0u;
      *(a1 + 488) = 0u;
      *(a1 + 504) = 0u;
      *(a1 + 520) = 0u;
      *(a1 + 536) = 0u;
      *(a1 + 552) = 0u;
      *(a1 + 568) = 0u;
      *(a1 + 584) = 0u;
      *(a1 + 593) = 0u;
      return result;
    }

    *(a1 + 609) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2146B8650(uint64_t result, uint64_t a2)
{
  v2 = *(result + 288);
  v3 = *(result + 336);
  v4 = *(result + 368);
  v5 = *(result + 416);
  v6 = *(result + 464);
  v7 = *(result + 512);
  v8 = *(result + 544);
  v9 = *(result + 304) & 1;
  v10 = *(result + 384) & 1;
  v11 = *(result + 432) & 1;
  v12 = *(result + 480) & 1;
  v13 = *(result + 576) | (a2 << 62);
  *(result + 256) &= 1uLL;
  *(result + 288) = v2;
  *(result + 304) = v9;
  *(result + 336) = v3;
  *(result + 368) = v4;
  *(result + 384) = v10;
  *(result + 416) = v5;
  *(result + 432) = v11;
  *(result + 464) = v6;
  *(result + 480) = v12;
  *(result + 512) = v7;
  *(result + 544) = v8;
  *(result + 576) = v13;
  return result;
}

uint64_t sub_2146B86F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 609))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2146B873C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 600) = 0;
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
    *(result + 584) = 0u;
    *(result + 608) = 0;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 609) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 609) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NameAndPhotoPeerDeviceUpdate.NameAndPhotoSettings(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 4))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 1);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for NameAndPhotoPeerDeviceUpdate.NameAndPhotoSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy233_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_2146B893C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 233))
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

uint64_t sub_2146B8984(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 232) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 233) = 1;
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

    *(result + 233) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2146B8A20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2146B8A68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2146B8AEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2146B8B34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy249_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 233) = *(a2 + 233);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_2146B8BEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 249))
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

uint64_t sub_2146B8C34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 249) = 1;
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

    *(result + 249) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2146B8CC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_2146B8D20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor25NameAndPhotoUnpackerErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2146B8DA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2146B8DFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_2146B8E58(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_2146B8E88()
{
  result = qword_27C918040;
  if (!qword_27C918040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C918040);
  }

  return result;
}

uint64_t sub_2146B8F14(uint64_t *a1, uint64_t *a2, char a3)
{
  v3 = *a1;
  v8 = *a2;
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = a3;
  return v4(&v8, &v7) & 1;
}

uint64_t sub_2146B8F68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C918048, &qword_214783CD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2146B8FD0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t))
{
  if (*a1)
  {
    v7 = *a3;
    v12 = *a1;
    MEMORY[0x28223BE20](a1);
    v10[2] = &v12;
    v11 = 2;

    v8 = a5(a4, v10, v7);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_2146B90D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_21444171C();
}

uint64_t sub_2146B912C(__int128 *a1)
{
  v2 = *(v1 + 24);
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = **(v1 + 16);
  v10 = *a1;
  v11 = v3;
  v12 = v4;
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v9 = v2;
  return v6(&v10, &v9) & 1;
}

uint64_t sub_2146B9190(uint64_t *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5[2] = &v7;
  v6 = v3;
  return sub_2140425C0(sub_2146B912C, v5, v2) & 1;
}

uint64_t sub_2146B9290@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v1 = sub_2146D8C48();
  v2 = *(v1 - 8);
  v67 = v1;
  v68 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v64 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v65 = &v57 - v7;
  MEMORY[0x28223BE20](v6);
  v66 = &v57 - v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v78 = *(v72 - 8);
  v9 = *(v78 + 64);
  v10 = MEMORY[0x28223BE20](v72);
  v69 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v57 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  v17 = sub_2146D8D48();
  v75 = v17;
  v79 = *(v17 - 8);
  v18 = *(v79 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v57 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916600, &qword_214767E88);
  v77 = *(v25 - 8);
  v26 = *(v77 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v63 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v71 = &v57 - v30;
  MEMORY[0x28223BE20](v29);
  v61 = &v57 - v31;
  v32 = sub_2146D8D88();
  v33 = *(v32 - 8);
  v59 = *(v33 + 56);
  v60 = v33 + 56;
  v59(v24, 1, 1, v32);
  sub_2146D8C38();
  v58 = v14;
  sub_2146B9A10(v14);
  v62 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v34 = MEMORY[0x277D83E40];
  v57 = v16;
  v35 = v72;
  sub_2146D8D28();
  v74 = *(v78 + 8);
  v78 += 8;
  v74(v14, v35);
  v36 = *(v79 + 8);
  v79 += 8;
  v76 = v36;
  v36(v20, v17);
  sub_214503110(v24);
  v37 = v71;
  MEMORY[0x216053B60](v16, v34);
  v38 = sub_21432076C(&qword_27C916608, &qword_27C916600, &qword_214767E88);
  MEMORY[0x216053AF0](v37, v25, v38);
  v73 = *(v77 + 8);
  v77 += 8;
  v73(v37, v25);
  v59(v24, 1, 1, v32);
  sub_2146D8C38();
  sub_2146D8D68();
  v39 = v65;
  sub_2146D8D78();
  v40 = sub_2145030B8();
  v41 = v66;
  v42 = v67;
  MEMORY[0x216053AF0](v39, v67, v40);
  v43 = *(v68 + 8);
  v43(v39, v42);
  v44 = v58;
  sub_2146D8C08();
  v43(v41, v42);
  v45 = v57;
  v46 = v44;
  v47 = MEMORY[0x277D83E40];
  v48 = v72;
  sub_2146D8D28();
  v74(v46, v48);
  v76(v20, v75);
  sub_214503110(v24);
  v49 = v63;
  MEMORY[0x216053B60](v45, v47);
  v50 = v71;
  MEMORY[0x216053AF0](v49, v25, v38);
  v73(v49, v25);
  v51 = v61;
  sub_2146D8C08();
  sub_2146D8C38();
  sub_2146D8D08();
  v52 = v69;
  sub_2146D8D08();
  sub_2146D8CD8();
  v53 = v52;
  v54 = v74;
  v74(v53, v48);
  v54(v46, v48);
  v76(v20, v75);
  v54(v45, v48);
  v55 = v73;
  v73(v50, v25);
  return v55(v51, v25);
}

uint64_t sub_2146B9A10@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = sub_2146D8C48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v49 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v62 = *(v58 - 8);
  v10 = *(v62 + 64);
  v11 = MEMORY[0x28223BE20](v58);
  v55 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  MEMORY[0x28223BE20](v13);
  v54 = &v49 - v16;
  v59 = sub_2146D8D48();
  v61 = *(v59 - 8);
  v17 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v49 - v22;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916600, &qword_214767E88);
  v60 = *(v53 - 8);
  v24 = *(v60 + 64);
  v25 = MEMORY[0x28223BE20](v53);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v57 = &v49 - v28;
  v29 = sub_2146D8D88();
  (*(*(v29 - 8) + 56))(v23, 1, 1, v29);
  sub_2146D8C38();
  sub_2146D8D68();
  sub_2146D8D78();
  v30 = sub_2145030B8();
  MEMORY[0x216053AF0](v7, v1, v30);
  v31 = *(v2 + 8);
  v31(v7, v1);
  sub_2146D8C08();
  v31(v9, v1);
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v32 = MEMORY[0x277D83E40];
  v33 = v54;
  v34 = v15;
  v50 = v15;
  v35 = v58;
  sub_2146D8D28();
  v36 = *(v62 + 8);
  v62 += 8;
  v36(v34, v35);
  v37 = *(v61 + 8);
  v61 += 8;
  v52 = v37;
  v37(v19, v59);
  sub_214503110(v23);
  v38 = v33;
  MEMORY[0x216053B60](v33, v32);
  v39 = sub_21432076C(&qword_27C916608, &qword_27C916600, &qword_214767E88);
  v40 = v53;
  MEMORY[0x216053AF0](v27, v53, v39);
  v41 = *(v60 + 8);
  v60 += 8;
  v51 = v41;
  v41(v27, v40);
  v63 = 46;
  v64 = 0xE100000000000000;
  v42 = sub_2145031D0();
  MEMORY[0x216053AF0](v65, &v63, MEMORY[0x277D837D0], v42);
  sub_2146D8C08();
  v44 = v65[0];
  v43 = v65[1];
  sub_2146D8C38();
  v63 = v44;
  v64 = v43;
  v45 = v50;
  v46 = v58;
  sub_2146D8D08();
  v47 = v55;
  sub_2146D8D08();

  sub_2146D8CD8();
  v36(v47, v46);
  v36(v45, v46);
  v52(v19, v59);
  v36(v38, v46);
  return v51(v57, v40);
}

uint64_t sub_2146BA09C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - v8;
  MEMORY[0x28223BE20](v7);
  v38 = &v34 - v10;
  v11 = sub_2146D8D48();
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916600, &qword_214767E88);
  v35 = *(v19 - 8);
  v20 = *(v35 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v34 = &v34 - v24;
  v25 = sub_2146D8D88();
  (*(*(v25 - 8) + 56))(v18, 1, 1, v25);
  sub_2146D8C38();
  if (qword_27C9031E8 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v1, qword_27CA19E38);
  v27 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AF0](v26, v1, v27);
  sub_2146D8C08();
  v28 = *(v2 + 8);
  v28(v6, v1);
  v29 = v38;
  sub_2146D8D28();
  v28(v9, v1);
  (*(v36 + 8))(v14, v37);
  sub_214503110(v18);
  MEMORY[0x216053B60](v29, MEMORY[0x277D83E40]);
  v30 = sub_21432076C(&qword_27C916608, &qword_27C916600, &qword_214767E88);
  v31 = v34;
  MEMORY[0x216053AF0](v23, v19, v30);
  v32 = *(v35 + 8);
  v32(v23, v19);
  sub_2146D8C08();
  return (v32)(v31, v19);
}

uint64_t sub_2146BA53C@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = sub_2146D8D48();
  v2 = *(v1 - 8);
  v54 = v1;
  v55 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v11 = *(v10 - 8);
  v48 = v10;
  v49 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v47 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v53 = v45 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v45 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v45 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v52 = v45 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = v45 - v30;
  if (qword_27C903258 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v16, qword_27C918070);
  v33 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v51 = v31;
  MEMORY[0x216053AF0](v32, v16, v33);
  v34 = sub_2146D8D88();
  (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
  sub_2146D8C38();
  v35 = MEMORY[0x277D83E40];
  sub_2146D8DA8();
  v45[0] = v24;
  MEMORY[0x216053AF0](v21, v16, v33);
  v36 = *(v17 + 8);
  v45[1] = v17 + 8;
  v36(v21, v16);
  sub_2146D8C08();
  v36(v24, v16);
  v37 = v52;
  sub_2146D8CE8();
  v36(v27, v16);
  v38 = *(v55 + 8);
  v55 += 8;
  v46 = v38;
  v38(v5, v54);
  sub_214503110(v9);
  v39 = v47;
  MEMORY[0x216053B20](v37, v35);
  v40 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0);
  v41 = v48;
  MEMORY[0x216053AF0](v39, v48, v40);
  v49 = *(v49 + 8);
  (v49)(v39, v41);
  sub_2146D8C08();
  sub_2146D8C38();
  sub_2146D8D08();
  v42 = v45[0];
  v43 = v53;
  sub_2146D8D08();
  sub_2146D8CD8();
  v36(v42, v16);
  v36(v27, v16);
  v46(v5, v54);
  v36(v52, v16);
  (v49)(v43, v41);
  return (v36)(v51, v16);
}

uint64_t sub_2146BAB64@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v43 = sub_2146D8D48();
  v40 = *(v43 - 8);
  v1 = *(v40 + 64);
  MEMORY[0x28223BE20](v43);
  v36 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v42 = *(v39 - 8);
  v3 = *(v42 + 64);
  v4 = MEMORY[0x28223BE20](v39);
  v41 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v45 = v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v34 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v34 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v34 - v19;
  if (qword_27C903260 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v7, qword_27C918088);
  v22 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v38 = v20;
  MEMORY[0x216053AD0](v21, v7, v22);
  v23 = MEMORY[0x277D83E40];
  v24 = v15;
  sub_2146D8DA8();
  v35 = v18;
  MEMORY[0x216053AD0](v15, v7, v22);
  v25 = *(v8 + 8);
  v34[1] = v8 + 8;
  v46 = v24;
  v25(v24, v7);
  v37 = v25;
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v12, v7, v22);
  v25(v12, v7);
  sub_2146D8BE8();
  v26 = v36;
  sub_2146D8C38();
  v34[0] = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v27 = v39;
  sub_2146D8CF8();
  v28 = *(v40 + 8);
  v29 = v43;
  v28(v26, v43);
  v30 = v41;
  MEMORY[0x216053B70](v12, v23);
  sub_2146D8C38();
  sub_2146D8CF8();
  v28(v26, v29);
  MEMORY[0x216053B70](v12, v23);
  v31 = *(v42 + 8);
  v31(v30, v27);
  v31(v45, v27);
  v32 = v37;
  v37(v46, v7);
  v32(v35, v7);
  return (v32)(v38, v7);
}

uint64_t sub_2146BB094@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = sub_2146D8D48();
  v59 = *(v1 - 8);
  v60 = v1;
  v2 = *(v59 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v10 = *(v9 - 8);
  v57 = v9;
  v58 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v50 = &v44 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v52 = *(v16 - 8);
  v17 = *(v52 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v53 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v51 = &v44 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v56 = &v44 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v44 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v44 - v27;
  if (qword_27C903260 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v16, qword_27C918088);
  v30 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AF0](v29, v16, v30);
  v61 = 14906;
  v62 = 0xE200000000000000;
  v47 = sub_2145031D0();
  MEMORY[0x216053AF0](v63, &v61, MEMORY[0x277D837D0], v47);
  v31 = sub_2146D8D88();
  (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
  sub_2146D8C38();
  v32 = MEMORY[0x277D83E40];
  sub_2146D8D38();
  v48 = v28;
  v33 = *(v59 + 8);
  v59 += 8;
  v55 = v33;
  v33(v4, v60);
  sub_214503110(v8);
  v46 = v26;
  MEMORY[0x216053B10](v26, v32);
  v45 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0);
  v34 = v50;
  v35 = v57;
  MEMORY[0x216053AF0](v14, v57, v45);
  v36 = *(v58 + 8);
  v58 += 8;
  v49 = v36;
  v36(v14, v35);
  sub_2146D8C08();
  v38 = v63[0];
  v37 = v63[1];
  sub_2146D8C38();
  v61 = v38;
  v62 = v37;
  v39 = v51;
  sub_2146D8D08();
  v40 = v53;
  sub_2146D8D08();

  sub_2146D8CD8();
  v41 = *(v52 + 8);
  v41(v40, v16);
  v41(v39, v16);
  v55(v4, v60);
  sub_2146D8C38();
  sub_2146D8D08();
  v42 = v57;
  sub_2146D8D08();
  sub_2146D8CD8();
  v41(v40, v16);
  v41(v39, v16);
  v55(v4, v60);
  v41(v56, v16);
  v41(v46, v16);
  v49(v34, v42);
  return (v41)(v48, v16);
}

uint64_t sub_2146BB6F4@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v42 = *(v1 - 8);
  v2 = *(v42 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v40 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v39 = v34 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = v34 - v7;
  v9 = sub_2146D8D48();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v38 = *(v18 - 8);
  v19 = *(v38 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v37 = v34 - v23;
  v43 = 14906;
  v44 = 0xE200000000000000;
  v36 = sub_2145031D0();
  MEMORY[0x216053AF0](v45, &v43, MEMORY[0x277D837D0]);
  if (qword_27C903260 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, qword_27C918088);
  v24 = sub_2146D8D88();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v25 = MEMORY[0x277D83E40];
  sub_2146D8D38();
  v26 = *(v10 + 8);
  v34[1] = v10 + 8;
  v35 = v26;
  v26(v13, v9);
  sub_214503110(v17);
  v27 = v8;
  MEMORY[0x216053B10](v8, v25);
  v28 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0);
  v29 = v37;
  MEMORY[0x216053AF0](v22, v18, v28);
  v34[0] = v9;
  v38 = *(v38 + 8);
  (v38)(v22, v18);
  v43 = v45[0];
  v44 = v45[1];
  sub_2146D8C08();

  sub_2146D8C38();
  v30 = v39;
  sub_2146D8D08();
  v31 = v40;
  sub_2146D8D08();
  sub_2146D8CD8();
  v32 = *(v42 + 8);
  v32(v31, v1);
  v32(v30, v1);
  v35(v13, v34[0]);
  v32(v27, v1);
  return (v38)(v29, v18);
}

uint64_t sub_2146BBC2C@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = sub_2146D8D48();
  v2 = *(v1 - 8);
  v49 = v1;
  v50 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v44 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v45 = v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v46 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v41 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v41 - v24;
  MEMORY[0x28223BE20](v23);
  v48 = v41 - v26;
  v27 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v25, v15, v27);
  v28 = *(v16 + 8);
  v28(v25, v15);
  v41[1] = v16 + 8;
  v42 = v28;
  v29 = sub_2146D8D88();
  (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  sub_2146D8C38();
  sub_2146BC1BC(58, &qword_27C903250, qword_27C918058, sub_2146B9270, v22);
  v30 = MEMORY[0x277D83E40];
  sub_2146D8D38();
  v28(v22, v15);
  v31 = *(v50 + 8);
  v50 += 8;
  v43 = v31;
  v31(v5, v49);
  sub_214503110(v9);
  v32 = v44;
  MEMORY[0x216053B10](v25, v30);
  v33 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0);
  v34 = v45;
  v35 = v10;
  MEMORY[0x216053AF0](v32, v10, v33);
  v36 = *(v51 + 8);
  v51 += 8;
  v41[0] = v36;
  v36(v32, v10);
  sub_2146D8C08();
  sub_2146D8C38();
  sub_2146D8D08();
  v37 = v46;
  v38 = v34;
  sub_2146D8D08();
  sub_2146D8CD8();
  v39 = v42;
  v42(v37, v15);
  v39(v22, v15);
  v43(v5, v49);
  v39(v25, v15);
  (v41[0])(v38, v35);
  return (v39)(v48, v15);
}

uint64_t sub_2146BC1BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31[0] = a4;
  v31[1] = a5;
  v8 = sub_2146D8D48();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v31 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v31 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v31 - v24;
  v34 = a1;
  v35 = 0xE100000000000000;
  v26 = sub_2145031D0();
  MEMORY[0x216053AF0](v36, &v34, MEMORY[0x277D837D0], v26);
  if (*a2 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v12, a3);
  v28 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AF0](v27, v12, v28);
  v34 = v36[0];
  v35 = v36[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_2146D8D08();
  sub_2146D8D08();
  sub_2146D8CD8();
  v29 = *(v13 + 8);
  v29(v17, v12);
  v29(v20, v12);
  (*(v32 + 8))(v11, v33);
  v29(v23, v12);
  return (v29)(v25, v12);
}

uint64_t sub_2146BC4F0@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_2146D8D48();
  v2 = *(v1 - 8);
  v37 = v1;
  v38 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v34 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v32 = v30 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v33 = v30 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v30 - v16;
  MEMORY[0x28223BE20](v15);
  v36 = v30 - v18;
  v41 = 91;
  v42 = 0xE100000000000000;
  v19 = sub_2145031D0();
  v20 = MEMORY[0x277D837D0];
  MEMORY[0x216053AF0](v43, &v41, MEMORY[0x277D837D0], v19);
  v21 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v17, v6, v21);
  v22 = *(v7 + 8);
  v22(v17, v6);
  v39 = 93;
  v40 = 0xE100000000000000;
  v30[1] = v19;
  MEMORY[0x216053AF0](&v41, &v39, v20, v19);
  v39 = v43[0];
  v40 = v43[1];
  v31 = v17;
  sub_2146D8C08();

  sub_2146D8C38();
  v23 = v32;
  sub_2146D8D08();
  v24 = v34;
  sub_2146D8D08();
  v25 = v33;
  sub_2146D8CD8();
  v22(v24, v6);
  v22(v23, v6);
  v26 = *(v38 + 8);
  v38 += 8;
  v30[0] = v26;
  v26(v5, v37);
  v28 = v41;
  v27 = v42;
  sub_2146D8C38();
  v39 = v28;
  v40 = v27;
  sub_2146D8D08();
  sub_2146D8D08();

  sub_2146D8CD8();
  v22(v24, v6);
  v22(v23, v6);
  (v30[0])(v5, v37);
  v22(v25, v6);
  v22(v31, v6);
  return (v22)(v36, v6);
}

uint64_t sub_2146BC99C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_2146D8C88();
  v8 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  MEMORY[0x216053AF0](v5, v0, v8);
  v9 = *(v1 + 8);
  v9(v5, v0);
  sub_2146D8C08();
  return (v9)(v7, v0);
}

uint64_t sub_2146BCB20@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_2146D8D48();
  v41 = *(v1 - 8);
  v42 = v1;
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v43 = *(v40 - 8);
  v5 = *(v43 + 64);
  v6 = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v45 = *(v10 - 8);
  v11 = *(v45 + 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v34 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v34 - v21;
  if (qword_27C903148 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v10, qword_27CA19DA8);
  v24 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AD0](v23, v10, v24);
  if (qword_27C903250 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v10, qword_27C918058);
  MEMORY[0x216053AD0](v25, v10, v24);
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v14, v10, v24);
  v36 = v20;
  v37 = *(v45 + 1);
  v37(v14, v10);
  v38 = v22;
  sub_2146D8BE8();
  sub_2146D8C38();
  v34 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v35 = v9;
  v45 = v17;
  v26 = v40;
  sub_2146D8CF8();
  v27 = v42;
  v28 = *(v41 + 8);
  v28(v4, v42);
  v29 = v39;
  v41 = v24;
  v30 = MEMORY[0x277D83E40];
  MEMORY[0x216053B70](v14, MEMORY[0x277D83E40]);
  sub_2146D8C38();
  sub_2146D8CF8();
  v28(v4, v27);
  MEMORY[0x216053B70](v14, v30);
  v31 = *(v43 + 8);
  v31(v29, v26);
  v31(v35, v26);
  v32 = v37;
  v37(v45, v10);
  v32(v36, v10);
  return (v32)(v38, v10);
}

uint64_t sub_2146BD058@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_2146D8C48();
  v45 = *(v1 - 8);
  v2 = *(v45 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v40 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v10 = *(v9 - 8);
  v47 = v9;
  v48 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v41 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v43 = &v40 - v14;
  v46 = sub_2146D8D48();
  v44 = *(v46 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v40 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v40 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CC0, &qword_214757CB8);
  v42 = *(v21 - 8);
  v22 = *(v42 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v40 - v26;
  v28 = sub_2146D8D88();
  (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
  sub_2146D8C38();
  sub_2146D8D68();
  sub_2146D8D78();
  v29 = sub_2145030B8();
  v30 = v1;
  MEMORY[0x216053AF0](v6, v1, v29);
  v31 = *(v45 + 8);
  v31(v6, v1);
  v32 = v41;
  sub_2146D8C08();
  v31(v8, v30);
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v33 = MEMORY[0x277D83E40];
  v34 = v43;
  v35 = v47;
  v36 = v40;
  sub_2146D8D18();
  (*(v48 + 8))(v32, v35);
  (*(v44 + 8))(v36, v46);
  sub_214503110(v20);
  MEMORY[0x216053B90](v34, v33);
  v37 = sub_21432076C(&qword_27C914CC8, &qword_27C914CC0, &qword_214757CB8);
  MEMORY[0x216053AF0](v25, v21, v37);
  v38 = *(v42 + 8);
  v38(v25, v21);
  sub_2146D8C08();
  return (v38)(v27, v21);
}

uint64_t sub_2146BD598@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v51 = sub_2146D8D48();
  v1 = *(v51 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v51);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v10 = *(v9 - 8);
  v46 = v9;
  v47 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v44 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v50 = v39 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v45 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v39 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v39 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v39 - v26;
  if (qword_27C903268 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v15, qword_27CA19F18);
  v39[1] = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AF0](v28, v15);
  v29 = sub_2146D8D88();
  (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
  sub_2146D8C38();
  sub_2146BC1BC(58, &qword_27C903270, qword_27CA19F30, sub_2146BD038, v22);
  v49 = v25;
  v30 = MEMORY[0x277D83E40];
  sub_2146D8D38();
  v41 = *(v16 + 8);
  v41(v22, v15);
  v31 = *(v1 + 8);
  v42 = v1 + 8;
  v43 = v31;
  v31(v4, v51);
  sub_214503110(v8);
  v32 = v44;
  MEMORY[0x216053B10](v25, v30);
  v33 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0);
  v40 = v27;
  v34 = v46;
  MEMORY[0x216053AF0](v32, v46, v33);
  v47 = *(v47 + 8);
  (v47)(v32, v34);
  sub_2146D8C08();
  sub_2146D8C38();
  sub_2146D8D08();
  v35 = v45;
  v36 = v50;
  sub_2146D8D08();
  sub_2146D8CD8();
  v37 = v41;
  v41(v35, v15);
  v37(v22, v15);
  v43(v4, v51);
  v37(v49, v15);
  (v47)(v36, v34);
  return (v37)(v40, v15);
}

uint64_t sub_2146BDB2C@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v30 - v3;
  v5 = sub_2146D8D48();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v30 - v24;
  sub_2146D8C88();
  v26 = sub_2146D8D88();
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  sub_2146D8CE8();
  (*(v31 + 8))(v8, v32);
  sub_214503110(v12);
  (*(v14 + 8))(v17, v13);
  MEMORY[0x216053B20](v4, MEMORY[0x277D83E40]);
  v27 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0);
  MEMORY[0x216053AF0](v23, v18, v27);
  v28 = *(v19 + 8);
  v28(v23, v18);
  sub_2146D8C08();
  return (v28)(v25, v18);
}

uint64_t sub_2146BDF38@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v63 = sub_2146D8D48();
  v52 = *(v63 - 8);
  v1 = *(v52 + 64);
  MEMORY[0x28223BE20](v63);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v55 = *(v48 - 8);
  v4 = *(v55 + 64);
  v5 = MEMORY[0x28223BE20](v48);
  v54 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v61 = &v47 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v60 = &v47 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v59 = &v47 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v58 = &v47 - v14;
  MEMORY[0x28223BE20](v13);
  v57 = &v47 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v53 = *(v16 - 8);
  v17 = *(v53 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v47 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v47 - v24;
  if (qword_27C903110 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v16, qword_27CA19D60);
  v27 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AD0](v26, v16, v27);
  if (qword_27C9031F0 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v16, qword_27CA19E50);
  v50 = v23;
  MEMORY[0x216053AD0](v28, v16, v27);
  v72 = 38;
  v73 = 0xE100000000000000;
  v29 = sub_2145031D0();
  v30 = MEMORY[0x277D837D0];
  v62 = v29;
  MEMORY[0x216053AD0](v74, &v72, MEMORY[0x277D837D0], v29);
  v70 = 61;
  v71 = 0xE100000000000000;
  MEMORY[0x216053AD0](&v72, &v70, v30, v29);
  v68 = 43;
  v69 = 0xE100000000000000;
  MEMORY[0x216053AD0](&v70, &v68, v30, v29);
  v66 = 36;
  v67 = 0xE100000000000000;
  MEMORY[0x216053AD0](&v68, &v66, v30, v29);
  v64 = 44;
  v65 = 0xE100000000000000;
  MEMORY[0x216053AD0](&v66, &v64, v30, v29);
  v51 = v25;
  v49 = v16;
  sub_2146D8BE8();
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v31 = MEMORY[0x277D83E40];
  v32 = v48;
  v33 = v20;
  sub_2146D8CF8();
  v34 = v32;
  v35 = *(v52 + 8);
  v36 = v63;
  v35(v3, v63);
  MEMORY[0x216053B70](v20, v31);
  v64 = v74[0];
  v65 = v74[1];
  sub_2146D8C38();
  sub_2146D8CF8();
  v35(v3, v36);
  v37 = v35;

  MEMORY[0x216053B70](v20, MEMORY[0x277D83E40]);
  v64 = v72;
  v65 = v73;
  sub_2146D8C38();
  sub_2146D8CF8();
  v38 = v63;
  v39 = v37;
  v37(v3, v63);

  MEMORY[0x216053B70](v33, MEMORY[0x277D83E40]);
  v64 = v70;
  v65 = v71;
  sub_2146D8C38();
  sub_2146D8CF8();
  v37(v3, v38);

  v40 = MEMORY[0x277D83E40];
  MEMORY[0x216053B70](v33);
  v64 = v68;
  v65 = v69;
  sub_2146D8C38();
  sub_2146D8CF8();
  v41 = v63;
  v37(v3, v63);

  v42 = v54;
  MEMORY[0x216053B70](v33, v40);
  v64 = v66;
  v65 = v67;
  sub_2146D8C38();
  sub_2146D8CF8();
  v39(v3, v41);

  MEMORY[0x216053B70](v33, v40);
  v43 = *(v55 + 8);
  v43(v42, v34);
  v43(v61, v34);
  v43(v60, v34);
  v43(v59, v34);
  v43(v58, v34);
  v43(v57, v34);
  v44 = *(v53 + 8);
  v45 = v49;
  v44(v50, v49);
  return (v44)(v51, v45);
}

uint64_t sub_2146BE778@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v30 - v3;
  v5 = sub_2146D8D48();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CC0, &qword_214757CB8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v30 - v24;
  sub_2146D8C88();
  v26 = sub_2146D8D88();
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  sub_2146D8D18();
  (*(v31 + 8))(v8, v32);
  sub_214503110(v12);
  (*(v14 + 8))(v17, v13);
  MEMORY[0x216053B90](v4, MEMORY[0x277D83E40]);
  v27 = sub_21432076C(&qword_27C914CC8, &qword_27C914CC0, &qword_214757CB8);
  MEMORY[0x216053AF0](v23, v18, v27);
  v28 = *(v19 + 8);
  v28(v23, v18);
  sub_2146D8C08();
  return (v28)(v25, v18);
}

uint64_t sub_2146BEB84@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v57 = sub_2146D8D48();
  v54 = *(v57 - 8);
  v1 = *(v54 + 8);
  MEMORY[0x28223BE20](v57);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v56 = *(v52 - 8);
  v4 = *(v56 + 64);
  v5 = MEMORY[0x28223BE20](v52);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - v7;
  v9 = sub_2146D8C48();
  v10 = *(v9 - 8);
  v59 = v9;
  v60 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v45 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v53 = *(v18 - 8);
  v19 = *(v53 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v51 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v45 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v45 - v25;
  if (qword_27C903110 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v18, qword_27CA19D60);
  v28 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AD0](v27, v18, v28);
  if (qword_27C9031F0 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v18, qword_27CA19E50);
  v46 = v24;
  MEMORY[0x216053AD0](v29, v18, v28);
  v61 = 0x2F3F3B2C242B3D26;
  v62 = 0xE800000000000000;
  sub_2146D8D58();
  sub_2146D8D78();
  v30 = sub_2145030B8();
  v47 = v17;
  v48 = v30;
  v31 = v59;
  MEMORY[0x216053AD0](v15, v59, v30);
  v49 = *(v60 + 8);
  v60 += 8;
  v49(v15, v31);
  v50 = v26;
  v45 = v18;
  sub_2146D8BE8();
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v32 = MEMORY[0x277D83E40];
  v34 = v51;
  v33 = v52;
  sub_2146D8CF8();
  v35 = *(v54 + 1);
  v54 = v8;
  v36 = v33;
  v37 = v57;
  v35(v3, v57);
  v38 = v55;
  MEMORY[0x216053B70](v34, v32);
  sub_2146D8C38();
  v39 = v47;
  v40 = v59;
  sub_2146D8CF8();
  v35(v3, v37);
  MEMORY[0x216053B70](v34, MEMORY[0x277D83E40]);
  v41 = *(v56 + 8);
  v41(v38, v36);
  v41(v54, v36);
  v49(v39, v40);
  v42 = *(v53 + 8);
  v43 = v45;
  v42(v46, v45);
  return (v42)(v50, v43);
}

uint64_t sub_2146BF17C@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v71 = *(v1 - 8);
  v2 = *(v71 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v62 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v61 = &v53 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v65 = &v53 - v8;
  MEMORY[0x28223BE20](v7);
  v67 = &v53 - v9;
  v10 = sub_2146D8D48();
  v11 = *(v10 - 8);
  v72 = v10;
  v73 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v53 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v70 = *(v66 - 8);
  v19 = *(v70 + 64);
  v20 = MEMORY[0x28223BE20](v66);
  v58 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v64 = &v53 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v69 = &v53 - v29;
  v30 = MEMORY[0x277D83E40];
  sub_2146D8C88();
  v56 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v68 = v23;
  MEMORY[0x216053AF0](v28, v23, v56);
  v31 = *(v24 + 8);
  v59 = v24 + 8;
  v60 = v31;
  v31(v28, v23);
  v32 = sub_2146D8D88();
  (*(*(v32 - 8) + 56))(v18, 1, 1, v32);
  sub_2146D8C38();
  v33 = v65;
  sub_2146C1C3C(58, 0xE100000000000000, sub_2146BDB2C, v65);
  v34 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v35 = v67;
  v36 = v30;
  sub_2146D8D38();
  v37 = *(v71 + 8);
  v71 += 8;
  v54 = v37;
  v38 = v1;
  v37(v33, v1);
  v55 = *(v73 + 8);
  v73 += 8;
  v55(v14, v72);
  sub_214503110(v18);
  v39 = v58;
  MEMORY[0x216053B10](v35, v36);
  v40 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0);
  v41 = v66;
  MEMORY[0x216053AF0](v39, v66, v40);
  v42 = *(v70 + 8);
  v70 += 8;
  v57 = v42;
  v42(v39, v41);
  v74 = 64;
  v75 = 0xE100000000000000;
  v58 = sub_2145031D0();
  MEMORY[0x216053AF0](v76, &v74, MEMORY[0x277D837D0], v58);
  sub_2146D8C08();
  sub_2146D8C38();
  v43 = v61;
  v44 = v38;
  sub_2146D8D08();
  v45 = v62;
  sub_2146D8D08();
  v46 = v65;
  v53 = v34;
  sub_2146D8CD8();
  v47 = v45;
  v48 = v54;
  v54(v45, v44);
  v48(v43, v44);
  v49 = v55;
  v55(v14, v72);
  v51 = v76[0];
  v50 = v76[1];
  sub_2146D8C38();
  v74 = v51;
  v75 = v50;
  sub_2146D8D08();
  sub_2146D8D08();

  sub_2146D8CD8();
  v48(v47, v44);
  v48(v43, v44);
  v49(v14, v72);
  v48(v46, v44);
  v48(v67, v44);
  v57(v64, v66);
  return v60(v69, v68);
}

uint64_t sub_2146BF924@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_2146D8D48();
  v28 = *(v1 - 8);
  v29 = v1;
  v2 = *(v28 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  v20 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v17, v9, v20);
  v26 = *(v10 + 8);
  v26(v17, v9);
  if (qword_27C903150 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v9, qword_27CA19DC0);
  MEMORY[0x216053AD0](v21, v9, v20);
  sub_2146D8BE8();
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v22 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  (*(v28 + 8))(v4, v29);
  MEMORY[0x216053B70](v14, v22);
  (*(v27 + 8))(v8, v5);
  v23 = v26;
  v26(v17, v9);
  return v23(v19, v9);
}

uint64_t sub_2146BFD30@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_2146D8D48();
  v40 = *(v1 - 8);
  v41 = v1;
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v1);
  v37 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v31 - v6;
  v7 = sub_2146D8C48();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v36 = *(v15 - 8);
  v16 = *(v36 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  if (qword_27C9031D8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v15, qword_27CA19E08);
  v23 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v33 = v15;
  MEMORY[0x216053AD0](v22, v15, v23);
  v43 = 0x602B5F2A25212E2DLL;
  v44 = 0xEA00000000007E27;
  sub_2146D8D58();
  sub_2146D8D78();
  v24 = sub_2145030B8();
  MEMORY[0x216053AD0](v12, v7, v24);
  v32 = v21;
  v25 = *(v34 + 8);
  v25(v12, v7);
  v26 = v35;
  sub_2146D8BE8();
  v27 = v37;
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v28 = MEMORY[0x277D83E40];
  v29 = v39;
  sub_2146D8CF8();
  (*(v40 + 8))(v27, v41);
  MEMORY[0x216053B70](v19, v28);
  (*(v38 + 8))(v26, v29);
  v25(v14, v7);
  return (*(v36 + 8))(v32, v33);
}

uint64_t sub_2146C01DC@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - v3;
  v5 = sub_2146D8D48();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CC0, &qword_214757CB8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  if (qword_27C903130 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, qword_27CA19D78);
  v21 = sub_2146D8D88();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v22 = MEMORY[0x277D83E40];
  sub_2146D8D18();
  (*(v27 + 8))(v8, v28);
  sub_214503110(v12);
  MEMORY[0x216053B90](v4, v22);
  v23 = sub_21432076C(&qword_27C914CC8, &qword_27C914CC0, &qword_214757CB8);
  MEMORY[0x216053AF0](v18, v13, v23);
  v24 = *(v14 + 8);
  v24(v18, v13);
  sub_2146D8C08();
  return (v24)(v20, v13);
}

uint64_t sub_2146C057C@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v1 = sub_2146D8D48();
  v2 = *(v1 - 8);
  v64 = v1;
  v65 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v11 = *(v10 - 8);
  v62 = v10;
  v63 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v57 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v56 = &v49 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v61 = &v49 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v49 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v49 - v30;
  v32 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  sub_2146D8DA8();
  v60 = v31;
  v33 = v29;
  MEMORY[0x216053AF0](v29, v18, v32);
  v34 = *(v19 + 8);
  v58 = v19 + 8;
  v55 = v34;
  v34(v29, v18);
  v66 = 61;
  v67 = 0xE100000000000000;
  v35 = sub_2145031D0();
  MEMORY[0x216053AF0](v68, &v66, MEMORY[0x277D837D0], v35);
  if (qword_27C903138 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v18, qword_27CA19D90);
  v36 = sub_2146D8D88();
  (*(*(v36 - 8) + 56))(v9, 1, 1, v36);
  sub_2146D8C38();
  v37 = MEMORY[0x277D83E40];
  sub_2146D8D38();
  v53 = *(v65 + 8);
  v65 += 8;
  v53(v5, v64);
  sub_214503110(v9);
  MEMORY[0x216053B10](v29, v37);
  v51 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0);
  v38 = v62;
  MEMORY[0x216053AF0](v15, v62, v51);
  v50 = v17;
  v39 = *(v63 + 8);
  v63 += 8;
  v54 = v39;
  v39(v15, v38);
  v52 = v33;
  sub_2146D8C08();
  v41 = v68[0];
  v40 = v68[1];
  sub_2146D8C38();
  v66 = v41;
  v67 = v40;
  v42 = v56;
  sub_2146D8D08();
  v43 = v57;
  sub_2146D8D08();

  sub_2146D8CD8();
  v44 = v55;
  v55(v43, v18);
  v44(v42, v18);
  v45 = v53;
  v53(v5, v64);
  sub_2146D8C38();
  sub_2146D8D08();
  v46 = v50;
  v47 = v62;
  sub_2146D8D08();
  sub_2146D8CD8();
  v44(v43, v18);
  v44(v42, v18);
  v45(v5, v64);
  v44(v61, v18);
  v44(v52, v18);
  v54(v46, v47);
  return (v44)(v60, v18);
}

uint64_t sub_2146C0C24@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v1 = sub_2146D8D48();
  v25 = *(v1 - 8);
  v26 = v1;
  v2 = *(v25 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v24 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v24 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v24 - v17;
  v27 = 0x3D726464616DLL;
  v28 = 0xE600000000000000;
  v19 = sub_2145031D0();
  MEMORY[0x216053AF0](v29, &v27, MEMORY[0x277D837D0], v19);
  if (qword_27C903268 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v5, qword_27CA19F18);
  v21 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AF0](v20, v5, v21);
  v27 = v29[0];
  v28 = v29[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_2146D8D08();
  sub_2146D8D08();
  sub_2146D8CD8();
  v22 = *(v6 + 8);
  v22(v10, v5);
  v22(v13, v5);
  (*(v25 + 8))(v4, v26);
  v22(v16, v5);
  return (v22)(v18, v5);
}

uint64_t sub_2146C0F70@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = sub_2146D8C48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v44 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v57 = *(v50 - 8);
  v10 = *(v57 + 64);
  v11 = MEMORY[0x28223BE20](v50);
  v51 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  MEMORY[0x28223BE20](v13);
  v55 = &v44 - v16;
  v53 = sub_2146D8D48();
  v56 = *(v53 - 8);
  v17 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v44 - v22;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916600, &qword_214767E88);
  v54 = *(v49 - 8);
  v24 = *(v54 + 64);
  v25 = MEMORY[0x28223BE20](v49);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v47 = &v44 - v28;
  v58 = 1030517876;
  v59 = 0xE400000000000000;
  v48 = sub_2145031D0();
  MEMORY[0x216053AF0](v60, &v58, MEMORY[0x277D837D0], v48);
  v29 = sub_2146D8D88();
  (*(*(v29 - 8) + 56))(v23, 1, 1, v29);
  sub_2146D8C38();
  sub_2146D8D68();
  sub_2146D8D78();
  v30 = sub_2145030B8();
  MEMORY[0x216053AF0](v7, v1, v30);
  v31 = *(v2 + 8);
  v31(v7, v1);
  sub_2146D8C08();
  v31(v9, v1);
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v32 = MEMORY[0x277D83E40];
  v33 = v55;
  v44 = v15;
  v34 = v50;
  sub_2146D8D28();
  v35 = *(v57 + 8);
  v57 += 8;
  v35(v15, v34);
  v36 = *(v56 + 8);
  v56 += 8;
  v46 = v36;
  v36(v19, v53);
  sub_214503110(v23);
  MEMORY[0x216053B60](v33, v32);
  v37 = sub_21432076C(&qword_27C916608, &qword_27C916600, &qword_214767E88);
  v38 = v47;
  v39 = v49;
  MEMORY[0x216053AF0](v27, v49, v37);
  v40 = *(v54 + 8);
  v54 += 8;
  v45 = v40;
  v40(v27, v39);
  v58 = v60[0];
  v59 = v60[1];
  sub_2146D8C08();

  sub_2146D8C38();
  v41 = v44;
  sub_2146D8D08();
  v42 = v51;
  sub_2146D8D08();
  sub_2146D8CD8();
  v35(v42, v34);
  v35(v41, v34);
  v46(v19, v53);
  v35(v55, v34);
  return v45(v38, v39);
}

uint64_t sub_2146C15F4@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v34 - v3;
  v44 = sub_2146D8D48();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v44);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v40 = *(v36 - 8);
  v9 = *(v40 + 64);
  v10 = MEMORY[0x28223BE20](v36);
  v39 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v43 = &v34 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v42 = &v34 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  v55 = 0x5245545349474552;
  v56 = 0xE800000000000000;
  v21 = sub_2145031D0();
  v22 = MEMORY[0x277D837D0];
  MEMORY[0x216053AD0](v57, &v55, MEMORY[0x277D837D0], v21);
  v53 = 0x455449564E49;
  v54 = 0xE600000000000000;
  MEMORY[0x216053AD0](&v55, &v53, v22, v21);
  v51 = 4932417;
  v52 = 0xE300000000000000;
  MEMORY[0x216053AD0](&v53, &v51, v22, v21);
  v49 = 0x4C45434E4143;
  v50 = 0xE600000000000000;
  MEMORY[0x216053AD0](&v51, &v49, v22, v21);
  v47 = 4544834;
  v48 = 0xE300000000000000;
  MEMORY[0x216053AD0](&v49, &v47, v22, v21);
  v45 = 0x534E4F4954504FLL;
  v46 = 0xE700000000000000;
  MEMORY[0x216053AD0](&v47, &v45, v22, v21);
  v45 = v57[0];
  v46 = v57[1];
  v38 = v20;
  sub_2146D8BE8();

  v45 = v55;
  v46 = v56;
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  sub_2146D8CF8();
  v23 = *(v5 + 8);
  v24 = v44;
  v23(v8, v44);
  v25 = v23;

  v37 = v18;
  v26 = v4;
  MEMORY[0x216053B70](v4, MEMORY[0x277D83E40]);
  v45 = v53;
  v46 = v54;
  sub_2146D8C38();
  v27 = v36;
  sub_2146D8CF8();
  v25(v8, v24);
  v35 = v25;

  MEMORY[0x216053B70](v26, MEMORY[0x277D83E40]);
  v45 = v51;
  v46 = v52;
  sub_2146D8C38();
  sub_2146D8CF8();
  v28 = v44;
  v25(v8, v44);

  MEMORY[0x216053B70](v26, MEMORY[0x277D83E40]);
  v45 = v49;
  v46 = v50;
  sub_2146D8C38();
  sub_2146D8CF8();
  v29 = v35;
  v35(v8, v28);

  v30 = v39;
  v31 = MEMORY[0x277D83E40];
  MEMORY[0x216053B70](v26, MEMORY[0x277D83E40]);
  v45 = v47;
  v46 = v48;
  sub_2146D8C38();
  sub_2146D8CF8();
  v29(v8, v44);

  MEMORY[0x216053B70](v26, v31);
  v32 = *(v40 + 8);
  v32(v30, v27);
  v32(v43, v27);
  v32(v42, v27);
  v32(v37, v27);
  return (v32)(v38, v27);
}

uint64_t sub_2146C1C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v31 = a4;
  v6 = sub_2146D8D48();
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v28 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v28 - v20;
  MEMORY[0x28223BE20](v19);
  v29 = &v28 - v22;
  v34 = a1;
  v35 = a2;
  v23 = sub_2145031D0();
  MEMORY[0x216053AF0](v36, &v34, MEMORY[0x277D837D0], v23);
  v24 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v21, v10, v24);
  v25 = *(v11 + 8);
  v25(v21, v10);
  v34 = v36[0];
  v35 = v36[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_2146D8D08();
  v26 = v29;
  sub_2146D8D08();
  sub_2146D8CD8();
  v25(v15, v10);
  v25(v18, v10);
  (*(v32 + 8))(v9, v33);
  v25(v21, v10);
  return (v25)(v26, v10);
}

uint64_t sub_2146C1F78@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_2146D8D48();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v34 = *(v11 - 8);
  v12 = *(v34 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v42 = 0x656E6F6870;
  v43 = 0xE500000000000000;
  v18 = sub_2145031D0();
  v19 = MEMORY[0x277D837D0];
  MEMORY[0x216053AD0](v44, &v42, MEMORY[0x277D837D0], v18);
  v40 = 28777;
  v41 = 0xE200000000000000;
  MEMORY[0x216053AD0](&v42, &v40, v19, v18);
  if (qword_27C903280 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v11, qword_27C9180A0);
  v21 = v11;
  v32 = v11;
  v22 = v20;
  v33 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AD0](v22, v21, v33);
  v40 = v44[0];
  v41 = v44[1];
  v30 = v17;
  sub_2146D8BE8();

  v40 = v42;
  v41 = v43;
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v31 = v10;
  v23 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  v24 = v38;
  v25 = *(v37 + 8);
  v25(v4, v38);

  v26 = v35;
  MEMORY[0x216053B70](v15, v23);
  sub_2146D8C38();
  v27 = v32;
  sub_2146D8CF8();
  v25(v4, v24);
  MEMORY[0x216053B70](v15, v23);
  v28 = *(v36 + 8);
  v28(v26, v5);
  v28(v31, v5);
  return (*(v34 + 8))(v30, v27);
}

uint64_t sub_2146C23E8@<X0>(uint64_t (*a1)(void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v37 = a3;
  v4 = sub_2146D8D48();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v36 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v35 = &v32 - v14;
  MEMORY[0x28223BE20](v13);
  v33 = &v32 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v32 - v22;
  v40 = v34;
  v41 = a2;
  v24 = sub_2145031D0();
  MEMORY[0x216053AF0](v42, &v40, MEMORY[0x277D837D0], v24);
  sub_2146D8C88();
  v25 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  MEMORY[0x216053AF0](v21, v16, v25);
  v26 = *(v17 + 8);
  v32 = v17 + 8;
  v34 = v26;
  v26(v21, v16);
  v40 = v42[0];
  v41 = v42[1];
  v27 = v33;
  sub_2146D8C08();

  sub_2146D8C38();
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v28 = v35;
  sub_2146D8D08();
  v29 = v36;
  sub_2146D8D08();
  sub_2146D8CD8();
  v30 = *(v9 + 8);
  v30(v29, v8);
  v30(v28, v8);
  (*(v38 + 8))(v7, v39);
  v30(v27, v8);
  return v34(v23, v16);
}

uint64_t sub_2146C2800@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v43 = sub_2146D8D48();
  v38 = *(v43 - 8);
  v1 = *(v38 + 8);
  MEMORY[0x28223BE20](v43);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v40 = &v34 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v46 = &v34 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v39 = *(v14 - 8);
  v15 = *(v39 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  v53 = 7365749;
  v54 = 0xE300000000000000;
  v21 = sub_2145031D0();
  v22 = MEMORY[0x277D837D0];
  MEMORY[0x216053AD0](v55, &v53, MEMORY[0x277D837D0], v21);
  v51 = 7365492;
  v52 = 0xE300000000000000;
  MEMORY[0x216053AD0](&v53, &v51, v22, v21);
  v49 = 1886675827;
  v50 = 0xE400000000000000;
  MEMORY[0x216053AD0](&v51, &v49, v22, v21);
  v47 = 7564404;
  v48 = 0xE300000000000000;
  MEMORY[0x216053AD0](&v49, &v47, v22, v21);
  if (qword_27C903280 != -1)
  {
    swift_once();
  }

  v36 = v14;
  v23 = __swift_project_value_buffer(v14, qword_27C9180A0);
  v37 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v35 = v20;
  MEMORY[0x216053AD0](v23, v14, v37);
  v47 = v55[0];
  v48 = v55[1];
  sub_2146D8BE8();

  v34 = v13;
  v47 = v53;
  v48 = v54;
  sub_2146D8C38();
  v45 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v24 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  v25 = *(v38 + 1);
  v26 = v43;
  v25(v3, v43);
  v38 = v25;

  MEMORY[0x216053B70](v18, v24);
  v47 = v51;
  v48 = v52;
  sub_2146D8C38();
  sub_2146D8CF8();
  v25(v3, v26);

  v27 = v40;
  MEMORY[0x216053B70](v18, MEMORY[0x277D83E40]);
  v47 = v49;
  v48 = v50;
  sub_2146D8C38();
  sub_2146D8CF8();
  v28 = v38;
  v38(v3, v26);

  v29 = v41;
  MEMORY[0x216053B70](v18, MEMORY[0x277D83E40]);
  sub_2146D8C38();
  v30 = v35;
  v31 = v36;
  sub_2146D8CF8();
  v28(v3, v26);
  MEMORY[0x216053B70](v18, MEMORY[0x277D83E40]);
  v32 = *(v42 + 8);
  v32(v29, v4);
  v32(v27, v4);
  v32(v46, v4);
  v32(v34, v4);
  return (*(v39 + 8))(v30, v31);
}

uint64_t sub_2146C2E34@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v63 = sub_2146D8D48();
  v67 = *(v63 - 8);
  v1 = *(v67 + 8);
  MEMORY[0x28223BE20](v63);
  v3 = v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v65 = *(v62 - 8);
  v4 = *(v65 + 64);
  v5 = MEMORY[0x28223BE20](v62);
  v64 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v78 = v60 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v76 = v60 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v74 = v60 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v73 = v60 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v72 = v60 - v16;
  MEMORY[0x28223BE20](v15);
  v70 = v60 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v79 = v60 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v80 = v60 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v81 = v60 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = v60 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = v60 - v34;
  MEMORY[0x28223BE20](v33);
  v77 = v60 - v36;
  v37 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v35, v18, v37);
  v39 = v19 + 8;
  v38 = *(v19 + 8);
  v71 = v35;
  v38(v35, v18);
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v32, v18, v37);
  v75 = v32;
  v38(v32, v18);
  v40 = v81;
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v40, v18, v37);
  v38(v40, v18);
  v41 = v80;
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v41, v18, v37);
  v38(v41, v18);
  v42 = v79;
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v42, v18, v37);
  v38(v42, v18);
  v61 = v38;
  v60[1] = v39;
  v84 = 29292;
  v85 = 0xE200000000000000;
  v43 = sub_2145031D0();
  v44 = MEMORY[0x277D837D0];
  v69 = v43;
  MEMORY[0x216053AD0](v86, &v84, MEMORY[0x277D837D0], v43);
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v23, v18, v37);
  v45 = v23;
  v38(v23, v18);
  v82 = 25199;
  v83 = 0xE200000000000000;
  MEMORY[0x216053AD0](&v84, &v82, v44, v43);
  sub_2146D8BE8();
  sub_2146D8C38();
  v68 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v46 = v62;
  sub_2146D8CF8();
  v47 = *(v67 + 1);
  v48 = v63;
  v47(v3, v63);
  v67 = v47;
  MEMORY[0x216053B70](v23, MEMORY[0x277D83E40]);
  sub_2146D8C38();
  sub_2146D8CF8();
  v47(v3, v48);
  MEMORY[0x216053B70](v23, MEMORY[0x277D83E40]);
  sub_2146D8C38();
  v49 = v46;
  v60[0] = v37;
  sub_2146D8CF8();
  v50 = v67;
  v67(v3, v48);
  MEMORY[0x216053B70](v23, MEMORY[0x277D83E40]);
  sub_2146D8C38();
  v51 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  v52 = v48;
  v50(v3, v48);
  MEMORY[0x216053B70](v23, v51);
  v82 = v86[0];
  v83 = v86[1];
  sub_2146D8C38();
  v53 = v49;
  sub_2146D8CF8();
  v54 = v67;
  v67(v3, v52);

  MEMORY[0x216053B70](v45, MEMORY[0x277D83E40]);
  sub_2146D8C38();
  sub_2146D8CF8();
  v54(v3, v52);
  v55 = v64;
  v56 = MEMORY[0x277D83E40];
  MEMORY[0x216053B70](v45, MEMORY[0x277D83E40]);
  v82 = v84;
  v83 = v85;
  sub_2146D8C38();
  sub_2146D8CF8();
  v54(v3, v52);

  MEMORY[0x216053B70](v45, v56);
  v57 = *(v65 + 8);
  v57(v55, v53);
  v57(v78, v53);
  v57(v76, v53);
  v57(v74, v53);
  v57(v73, v53);
  v57(v72, v53);
  v57(v70, v53);
  v58 = v61;
  v61(v79, v18);
  v58(v80, v18);
  v58(v81, v18);
  v58(v75, v18);
  v58(v71, v18);
  return (v58)(v77, v18);
}

uint64_t sub_2146C38E8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v30 = *(v1 - 8);
  v2 = *(v30 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  v8 = sub_2146D8D48();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v28 - v22;
  v24 = sub_2146D8D88();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  sub_2146D8C38();
  sub_2146C1C3C(59, 0xE100000000000000, sub_2146C644C, v5);
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  sub_2146D8CE8();
  (*(v30 + 8))(v5, v1);
  (*(v28 + 8))(v11, v29);
  sub_214503110(v15);
  MEMORY[0x216053B20](v7, MEMORY[0x277D83E40]);
  v25 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0);
  MEMORY[0x216053AF0](v21, v16, v25);
  v26 = *(v17 + 8);
  v26(v21, v16);
  sub_2146D8C08();
  return (v26)(v23, v16);
}

uint64_t sub_2146C3CDC()
{
  v0 = sub_2146D8C48();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  __swift_allocate_value_buffer(v2, qword_27C9180B8);
  __swift_project_value_buffer(v0, qword_27C9180B8);
  sub_2146D8D58();
  return sub_2146D8D78();
}

uint64_t sub_2146C3DBC@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v10 = *(v9 - 8);
  v48 = v9;
  v49 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v43 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v45 = &v41 - v14;
  v15 = sub_2146D8D48();
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = *(v46 + 64);
  MEMORY[0x28223BE20](v15);
  v42 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v44 = *(v22 - 8);
  v23 = *(v44 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v41 - v27;
  v29 = sub_2146D8D88();
  (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
  sub_2146D8C38();
  sub_2146D8C88();
  v30 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  MEMORY[0x216053AF0](v6, v1, v30);
  v31 = *(v2 + 8);
  v31(v6, v1);
  v32 = v43;
  sub_2146D8C08();
  v31(v8, v1);
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v33 = v45;
  v34 = v32;
  v35 = MEMORY[0x277D83E40];
  v36 = v48;
  v37 = v42;
  sub_2146D8CE8();
  (*(v49 + 8))(v34, v36);
  (*(v46 + 8))(v37, v47);
  sub_214503110(v21);
  MEMORY[0x216053B20](v33, v35);
  v38 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0);
  MEMORY[0x216053AF0](v26, v22, v38);
  v39 = *(v44 + 8);
  v39(v26, v22);
  sub_2146D8C08();
  return (v39)(v28, v22);
}

uint64_t sub_2146C42F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v50 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v11 = *(v10 - 8);
  v48 = v10;
  v49 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v42 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v44 = &v41 - v15;
  v47 = sub_2146D8D48();
  v45 = *(v47 - 8);
  v16 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v41 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CC0, &qword_214757CB8);
  v43 = *(v22 - 8);
  v23 = *(v43 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v41 - v27;
  v29 = sub_2146D8D88();
  (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
  sub_2146D8C38();
  sub_2146D8C88();
  v30 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  MEMORY[0x216053AF0](v7, v2, v30);
  v31 = *(v3 + 8);
  v31(v7, v2);
  v32 = v42;
  sub_2146D8C08();
  v31(v9, v2);
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v33 = v44;
  v34 = v32;
  v35 = MEMORY[0x277D83E40];
  v36 = v48;
  v37 = v41;
  sub_2146D8D18();
  (*(v49 + 8))(v34, v36);
  (*(v45 + 8))(v37, v47);
  sub_214503110(v21);
  MEMORY[0x216053B90](v33, v35);
  v38 = sub_21432076C(&qword_27C914CC8, &qword_27C914CC0, &qword_214757CB8);
  MEMORY[0x216053AF0](v26, v22, v38);
  v39 = *(v43 + 8);
  v39(v26, v22);
  sub_2146D8C08();
  return (v39)(v28, v22);
}

uint64_t sub_2146C4820@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v43 = sub_2146D8D48();
  v41 = *(v43 - 8);
  v1 = *(v41 + 8);
  MEMORY[0x28223BE20](v43);
  v3 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v42 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v39 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v47 = v35 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v35 - v16;
  v18 = sub_2146D8C48();
  v40 = *(v18 - 8);
  v19 = *(v40 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C903288 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v18, qword_27C9180B8);
  sub_2145030B8();
  MEMORY[0x216053AD0](v22);
  if (qword_27C903110 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v10, qword_27CA19D60);
  v24 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AD0](v23, v10, v24);
  if (qword_27C9031F0 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v10, qword_27CA19E50);
  MEMORY[0x216053AD0](v25, v10, v24);
  v37 = v18;
  v38 = v21;
  sub_2146D8BE8();
  sub_2146D8C38();
  v35[1] = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v36 = v9;
  v26 = MEMORY[0x277D83E40];
  v27 = v39;
  sub_2146D8CF8();
  v28 = *(v41 + 1);
  v41 = v17;
  v29 = v43;
  v28(v3, v43);
  v30 = v42;
  MEMORY[0x216053B70](v27, v26);
  sub_2146D8C38();
  v31 = v47;
  sub_2146D8CF8();
  v28(v3, v29);
  MEMORY[0x216053B70](v27, v26);
  v32 = *(v45 + 8);
  v32(v30, v4);
  v32(v36, v4);
  v33 = *(v44 + 8);
  v33(v31, v10);
  v33(v41, v10);
  return (*(v40 + 8))(v38, v37);
}

uint64_t sub_2146C4DB8@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_2146D8D48();
  v2 = *(v1 - 8);
  v45 = v1;
  v46 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v41 = &v37 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v42 = &v37 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v37 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  v23 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  sub_2146D8DA8();
  v40 = v22;
  MEMORY[0x216053AF0](v20, v6, v23);
  v24 = *(v7 + 8);
  v38 = v20;
  v24(v20, v6);
  v47 = 61;
  v48 = 0xE100000000000000;
  v25 = sub_2145031D0();
  MEMORY[0x216053AF0](v49, &v47, MEMORY[0x277D837D0], v25);
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v17, v6, v23);
  v24(v17, v6);
  v39 = v17;
  sub_2146D8C08();
  v27 = v49[0];
  v26 = v49[1];
  sub_2146D8C38();
  v47 = v27;
  v48 = v26;
  v28 = v41;
  sub_2146D8D08();
  v29 = v43;
  sub_2146D8D08();

  v30 = v42;
  v31 = v28;
  sub_2146D8CD8();
  v32 = v29;
  v24(v29, v6);
  v24(v31, v6);
  v33 = *(v46 + 8);
  v46 += 8;
  v33(v5, v45);
  sub_2146D8C38();
  v34 = v30;
  sub_2146D8D08();
  v35 = v38;
  sub_2146D8D08();
  sub_2146D8CD8();
  v24(v32, v6);
  v24(v31, v6);
  v33(v5, v45);
  v24(v34, v6);
  v24(v39, v6);
  v24(v35, v6);
  return (v24)(v40, v6);
}

uint64_t sub_2146C5290@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v57 = sub_2146D8D48();
  v59 = *(v57 - 8);
  v1 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v58 = *(v56 - 8);
  v8 = *(v58 + 64);
  v9 = MEMORY[0x28223BE20](v56);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v50 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v48 = &v43 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v54 = &v43 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v43 - v24;
  v60 = 63;
  v61 = 0xE100000000000000;
  v47 = sub_2145031D0();
  MEMORY[0x216053AF0](v62, &v60, MEMORY[0x277D837D0]);
  if (qword_27C903290 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v12, qword_27C9180D0);
  v27 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v55 = v25;
  MEMORY[0x216053AF0](v26, v12, v27);
  v28 = sub_2146D8D88();
  (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
  sub_2146D8C38();
  sub_2146BC1BC(38, &qword_27C903290, qword_27C9180D0, sub_2146C4D98, v21);
  v29 = MEMORY[0x277D83E40];
  v30 = v54;
  sub_2146D8CE8();
  v31 = *(v13 + 8);
  v31(v21, v12);
  v32 = *(v59 + 8);
  v52 = v21;
  v53 = v32;
  v59 += 8;
  v32(v3, v57);
  sub_214503110(v7);
  v33 = v46;
  MEMORY[0x216053B20](v30, v29);
  v44 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0);
  v34 = v49;
  v35 = v56;
  MEMORY[0x216053AF0](v33, v56, v44);
  v36 = *(v58 + 8);
  v58 += 8;
  v45 = v36;
  v36(v33, v35);
  v60 = v62[0];
  v61 = v62[1];
  sub_2146D8C08();

  sub_2146D8C38();
  v37 = v48;
  sub_2146D8D08();
  v38 = v50;
  sub_2146D8D08();
  sub_2146D8CD8();
  v31(v38, v12);
  v31(v37, v12);
  v39 = v57;
  v53(v3, v57);
  sub_2146D8C38();
  sub_2146D8D08();
  v40 = v34;
  v41 = v56;
  sub_2146D8D08();
  sub_2146D8CD8();
  v31(v38, v12);
  v31(v37, v12);
  v53(v3, v39);
  v31(v52, v12);
  v31(v54, v12);
  v45(v40, v41);
  return (v31)(v55, v12);
}

uint64_t sub_2146C5974@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v89 = sub_2146D8D48();
  v91 = *(v89 - 8);
  v1 = *(v91 + 64);
  MEMORY[0x28223BE20](v89);
  v3 = v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v68 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v74 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v73 = v68 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v68 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v82 = v68 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v87 = v68 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v81 = v68 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v68 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v68 - v26;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v88 = *(v84 - 8);
  v28 = *(v88 + 64);
  v29 = MEMORY[0x28223BE20](v84);
  v71 = v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = v68 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = v68 - v34;
  v92 = 980445555;
  v93 = 0xE400000000000000;
  v70 = sub_2145031D0();
  MEMORY[0x216053AF0](v94, &v92, MEMORY[0x277D837D0]);
  v36 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v37 = MEMORY[0x277D83E40];
  sub_2146D8DA8();
  v38 = sub_2146D8D88();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v68[0] = v38;
  v69 = v40;
  v68[1] = v39 + 56;
  (v40)(v7, 1, 1);
  sub_2146D8C38();
  sub_2146D8D38();
  v90 = *(v91 + 8);
  v91 += 8;
  v90(v3, v89);
  v72 = v7;
  sub_214503110(v7);
  v41 = *(v9 + 8);
  v85 = v27;
  v42 = v27;
  v43 = v9 + 8;
  v41(v42, v8);
  v86 = v25;
  v44 = v25;
  v45 = v88;
  v46 = v84;
  MEMORY[0x216053B10](v44, v37);
  v47 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0);
  v80 = v35;
  v78 = v47;
  MEMORY[0x216053AF0](v33, v46);
  v48 = *(v45 + 8);
  v77 = v33;
  v79 = v48;
  v88 = v45 + 8;
  v48(v33, v46);
  if (qword_27C903278 != -1)
  {
    swift_once();
  }

  v49 = __swift_project_value_buffer(v8, qword_27CA19F48);
  MEMORY[0x216053AF0](v49, v8, v36);
  v50 = MEMORY[0x277D83E40];
  v51 = v81;
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v51, v8, v36);
  v52 = v43;
  v41(v51, v8);
  v53 = v51;
  v54 = v50;
  sub_2146D8DA8();
  v55 = v72;
  v69(v72, 1, 1, v68[0]);
  sub_2146D8C38();
  v56 = v87;
  sub_2146D8D38();
  v90(v3, v89);
  sub_214503110(v55);
  v41(v53, v8);
  v57 = v71;
  MEMORY[0x216053B10](v56, v54);
  MEMORY[0x216053AF0](v57, v46, v78);
  v79(v57, v46);
  v92 = v94[0];
  v93 = v94[1];
  sub_2146D8C08();

  sub_2146D8C38();
  v58 = v82;
  sub_2146D8D08();
  v59 = v83;
  sub_2146D8D08();
  sub_2146D8CD8();
  v76 = v52;
  v41(v59, v8);
  v41(v58, v8);
  v60 = v89;
  v90(v3, v89);
  sub_2146D8C38();
  sub_2146D8D08();
  v61 = v73;
  sub_2146D8D08();
  sub_2146D8CD8();
  v41(v61, v8);
  v41(v59, v8);
  v90(v3, v60);
  sub_2146D8C38();
  sub_2146D8D08();
  v62 = v74;
  sub_2146D8D08();
  sub_2146D8CD8();
  v41(v62, v8);
  v41(v61, v8);
  v63 = v89;
  v90(v3, v89);
  sub_2146D8C38();
  sub_2146D8D08();
  v64 = v77;
  sub_2146D8D08();
  sub_2146D8CD8();
  v41(v62, v8);
  v41(v61, v8);
  v90(v3, v63);
  v41(v83, v8);
  v41(v82, v8);
  v41(v87, v8);
  v41(v81, v8);
  v65 = v84;
  v66 = v79;
  v79(v64, v84);
  v41(v86, v8);
  v41(v85, v8);
  return v66(v80, v65);
}

uint64_t sub_2146C659C@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2146C65E8(__n128 *a1)
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

uint64_t sub_2146C6644()
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

uint64_t sub_2146C66C0(uint64_t a1, uint64_t a2)
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

uint64_t (*sub_2146C6808(void *a1))(uint64_t *a1, char a2)
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

void (*sub_2146C68A4(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_2146C6948(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t sub_2146C6994@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CombinedPluginAttachment() + 20);

  return sub_2140641A4(v3, a1);
}

uint64_t type metadata accessor for CombinedPluginAttachment()
{
  result = qword_280B2ECA8;
  if (!qword_280B2ECA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2146C6A24(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CombinedPluginAttachment() + 20);

  return sub_214064230(a1, v3);
}

unint64_t sub_2146C6AB0(uint64_t a1)
{
  *(a1 + 8) = sub_2146C6AE0();
  result = sub_2146C6B34();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2146C6AE0()
{
  result = qword_27C9180E8;
  if (!qword_27C9180E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9180E8);
  }

  return result;
}

unint64_t sub_2146C6B34()
{
  result = qword_27C9180F0;
  if (!qword_27C9180F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9180F0);
  }

  return result;
}

uint64_t sub_2146C6B88(uint64_t a1)
{
  *(a1 + 8) = sub_2146C6C3C(&qword_27C9180F8);
  result = sub_2146C6C3C(&qword_27C918100);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146C6BF8(uint64_t a1)
{
  result = sub_2146C6C3C(&unk_27C918108);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2146C6C3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CombinedPluginAttachment();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2146C6CA8()
{
  result = type metadata accessor for BalloonPlugin.Payload(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2146C6DAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2146C6EC8(uint64_t a1, uint64_t (*a2)(void *))
{
  v5 = (*(*v2 + 112))(v13);
  v6 = v13[0];
  v7 = (*(*v2 + 136))(&v14, v5);
  v8 = v14;
  v9 = (*(*v2 + 160))(v7);
  v10 = type metadata accessor for _XPCDecoder();
  v11 = swift_allocObject();
  *(v11 + 32) = MEMORY[0x277D84F90];
  *(v11 + 40) = a1;
  *(v11 + 16) = v6;
  *(v11 + 17) = v8;
  *(v11 + 24) = v9;
  v13[3] = v10;
  v13[4] = sub_2146CB1BC(qword_280B355B0, type metadata accessor for _XPCDecoder);
  v13[0] = v11;
  swift_unknownObjectRetain();
  return a2(v13);
}

uint64_t sub_2146C702C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (*(*v2 + 112))(v19);
  v7 = v19[0];
  v8 = (*(*v2 + 136))(&v20, v6);
  v9 = v20;
  v10 = (*(*v2 + 160))(v8);
  v11 = type metadata accessor for _XPCDecoder();
  v12 = swift_allocObject();
  *(v12 + 32) = MEMORY[0x277D84F90];
  *(v12 + 40) = a1;
  *(v12 + 16) = v7;
  *(v12 + 17) = v9;
  *(v12 + 24) = v10;
  v19[3] = v11;
  v19[4] = sub_2146CB1BC(qword_280B355B0, type metadata accessor for _XPCDecoder);
  v19[0] = v12;
  swift_unknownObjectRetain();

  sub_2144F2E7C(v19, &v20);
  if (v3)
  {
  }

  v13 = v21;
  if (v21 == 3)
  {
    sub_2146CB244(v20, *(&v20 + 1), 3);
    v14 = sub_2146D9F58();
    swift_allocError();
    v16 = v15;
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v16 = &type metadata for UnpackRequestMessage;
    sub_2146D9F28();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84170], v14);
    swift_willThrow();
  }

  *a2 = v20;
  *(a2 + 16) = v13;
  return result;
}

uint64_t sub_2146C7288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (*(*v2 + 112))(v22);
  v7 = v22[0];
  v8 = (*(*v2 + 136))(v23, v6);
  v9 = v23[0];
  v10 = (*(*v2 + 160))(v8);
  v11 = type metadata accessor for _XPCDecoder();
  v12 = swift_allocObject();
  *(v12 + 32) = MEMORY[0x277D84F90];
  *(v12 + 40) = a1;
  *(v12 + 16) = v7;
  *(v12 + 17) = v9;
  *(v12 + 24) = v10;
  v22[3] = v11;
  v22[4] = sub_2146CB1BC(qword_280B355B0, type metadata accessor for _XPCDecoder);
  v22[0] = v12;
  swift_unknownObjectRetain();

  sub_2144F3244(v22, v23);
  if (v3)
  {
  }

  v14 = v23[0];
  if (!v23[0])
  {
    sub_2146CB204(0);
    v18 = sub_2146D9F58();
    swift_allocError();
    v20 = v19;
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v20 = &type metadata for UnpackFileRequestMessage;
    sub_2146D9F28();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84170], v18);
    swift_willThrow();
  }

  v15 = v23[1];
  v16 = v24;
  v17 = HIBYTE(v24);
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16 & 1;
  *(a2 + 17) = v17;
  return result;
}

uint64_t sub_2146C74F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v78 = &v66 - v8;
  v11 = a3 + 16;
  v9 = *(a3 + 16);
  v10 = *(v11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = v10;
  v71 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for UnpackResponseMessage();
  v80 = *(v13 - 8);
  v81 = v13;
  v14 = *(v80 + 64);
  MEMORY[0x28223BE20](v13);
  v76 = &v66 - v15;
  v79 = sub_2146D9D38();
  v77 = *(v79 - 8);
  v16 = *(v77 + 64);
  v17 = MEMORY[0x28223BE20](v79);
  v72 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v89 = &v66 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v66 - v21;
  type metadata accessor for XPCDecoder();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = sub_214046008(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v23 + 16) = 1;
  v24 = *(*(AssociatedTypeWitness - 8) + 56);
  v74 = v22;
  v24(v22, 1, 1, AssociatedTypeWitness);
  v73 = v23;
  sub_2146C702C(a1, &v84);
  if (v3)
  {
    v71 = 0;
    v28 = v3;
    sub_214689A34(v3, 0, 0, &v84);
    v69 = *(&v84 + 1);
    v70 = v84;
    v68 = v85;
    v67 = v86;
    v89 = v87;
    v83 = v88;
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v29 = swift_allocObject();
    v66 = xmmword_2146E6910;
    *(v29 + 16) = xmmword_2146E6910;
    *&v84 = AssociatedTypeWitness;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v31 = sub_213FB17C8(&v84, MetatypeMetadata);
    v33 = v32;
    *(v29 + 56) = MEMORY[0x277D837D0];
    v34 = sub_213FB2DA0();
    *(v29 + 64) = v34;
    *(v29 + 32) = v31;
    *(v29 + 40) = v33;
    *&v84 = v3;
    v35 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    v36 = sub_2146D9618();
    v37 = MEMORY[0x277D837D0];
    *(v29 + 96) = MEMORY[0x277D837D0];
    *(v29 + 104) = v34;
    *(v29 + 72) = v36;
    *(v29 + 80) = v38;
    sub_2146D9BC8();
    sub_2146D91C8();

    v39 = swift_allocObject();
    *(v39 + 16) = v66;
    *&v84 = AssociatedTypeWitness;
    v40 = sub_213FB17C8(&v84, MetatypeMetadata);
    *(v39 + 56) = v37;
    *(v39 + 64) = v34;
    v41 = v37;
    *(v39 + 32) = v40;
    *(v39 + 40) = v42;
    v43 = v70;
    v44 = v69;
    *&v84 = v70;
    *(&v84 + 1) = v69;
    *&v66 = AssociatedTypeWitness;
    v45 = v68;
    v65 = v67;
    v85 = v68;
    v86 = v67;
    v87 = v89;
    v88 = v83;

    v46 = sub_2146D9618();
    *(v39 + 96) = v41;
    *(v39 + 104) = v34;
    *(v39 + 72) = v46;
    *(v39 + 80) = v47;
    sub_2146D9BC8();
    sub_2146D91C8();

    v59 = v79;
    v57 = v77;
    v61 = v74;
    v62 = v43;
    v63 = v44;
    v64 = v45;
  }

  else
  {
    v26 = *(&v84 + 1);
    v25 = v84;
    LOBYTE(v84) = v85;
    v27 = v83;
    v70 = *(v83 + 32);
    sub_21402D9F8(v25, *(&v84 + 1));
    v70(v25, v26, &v84, v71, v27);
    v71 = 0;
    sub_213FB54FC(v25, v26);
    sub_213FB54FC(v25, v26);
    v57 = v77;
    v58 = v74;
    v59 = v79;
    (*(v77 + 8))(v74, v79);
    v60 = v89;
    v24(v89, 0, 1, AssociatedTypeWitness);
    v61 = v58;
    (*(v57 + 32))(v58, v60, v59);
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v89 = 0;
    v83 = 0;
  }

  v48 = v72;
  (*(v57 + 16))(v72, v61, v59);
  *&v84 = v62;
  *(&v84 + 1) = v63;
  v85 = v64;
  v86 = v65;
  v87 = v89;
  v88 = v83;
  v49 = sub_2146D8B88();
  v50 = v78;
  (*(*(v49 - 8) + 56))(v78, 1, 1, v49);
  v51 = v76;
  sub_214080BDC(v48, &v84, v50, 1, v76);
  v52 = v81;
  v53 = *(*v82 + 200);
  WitnessTable = swift_getWitnessTable();
  v55 = v53(v51, v52, WitnessTable);

  (*(v80 + 8))(v51, v52);
  (*(v57 + 8))(v61, v59);
  return v55;
}

uint64_t sub_2146C7CE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  swift_getDynamicType();
  (*(v2 + 8))(v5, v1);
  return sub_2146DAA78();
}

uint64_t sub_2146C7DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v59 - v8;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for UnpackResponseMessage();
  v73 = *(v12 - 8);
  v74 = v12;
  v13 = *(v73 + 64);
  MEMORY[0x28223BE20](v12);
  v69 = &v59 - v14;
  v72 = sub_2146D9D38();
  v70 = *(v72 - 8);
  v15 = *(v70 + 64);
  v16 = MEMORY[0x28223BE20](v72);
  v65 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v83 = &v59 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - v20;
  type metadata accessor for XPCDecoder();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = sub_214046008(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v22 + 16) = 1;
  v23 = *(*(AssociatedTypeWitness - 8) + 56);
  v67 = v21;
  v23(v21, 1, 1, AssociatedTypeWitness);
  v66 = v22;
  sub_2146C7288(a1, &v78);
  if (v3)
  {
    v64 = 0;
    v25 = v3;
    sub_214689A34(v3, 0, 0, &v78);
    v62 = *(&v78 + 1);
    v63 = v78;
    v61 = v79;
    v83 = v80;
    v76 = v82;
    v77 = v81;
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v60 = qword_280B35410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v26 = swift_allocObject();
    v59 = xmmword_2146E6910;
    *(v26 + 16) = xmmword_2146E6910;
    *&v78 = AssociatedTypeWitness;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v28 = sub_213FB17C8(&v78, MetatypeMetadata);
    v29 = AssociatedTypeWitness;
    v31 = v30;
    *(v26 + 56) = MEMORY[0x277D837D0];
    v32 = sub_213FB2DA0();
    *(v26 + 64) = v32;
    *(v26 + 32) = v28;
    *(v26 + 40) = v31;
    *&v78 = v3;
    v33 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    v34 = sub_2146D9618();
    v35 = MEMORY[0x277D837D0];
    *(v26 + 96) = MEMORY[0x277D837D0];
    *(v26 + 104) = v32;
    *(v26 + 72) = v34;
    *(v26 + 80) = v36;
    sub_2146D9BC8();
    sub_2146D91C8();

    v37 = swift_allocObject();
    *(v37 + 16) = v59;
    *&v78 = v29;
    v38 = sub_213FB17C8(&v78, MetatypeMetadata);
    *(v37 + 56) = v35;
    *(v37 + 64) = v32;
    v39 = v35;
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    v55 = v63;
    v56 = v62;
    *&v78 = v63;
    *(&v78 + 1) = v62;
    v57 = v61;
    v79 = v61;
    v80 = v83;
    v81 = v77;
    v82 = v76;

    v41 = sub_2146D9618();
    *(v37 + 96) = v39;
    *(v37 + 104) = v32;
    *(v37 + 72) = v41;
    *(v37 + 80) = v42;
    sub_2146D9BC8();
    sub_2146D91C8();

    v53 = v72;
    v58 = v69;
    v51 = v70;
    v52 = v67;
  }

  else
  {
    v63 = AssociatedTypeWitness;
    v24 = *(v10 + 24);

    v24(&v78, v76, v10);
    v64 = 0;

    v51 = v70;
    v52 = v67;
    v53 = v72;
    (*(v70 + 8))(v67, v72);
    v54 = v83;
    v23(v83, 0, 1, v63);
    (*(v51 + 32))(v52, v54, v53);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v83 = 0;
    v76 = 0;
    v77 = 0;
    v58 = v69;
  }

  v43 = v65;
  (*(v51 + 16))(v65, v52, v53);
  *&v78 = v55;
  *(&v78 + 1) = v56;
  v79 = v57;
  v80 = v83;
  v81 = v77;
  v82 = v76;
  v44 = sub_2146D8B88();
  v45 = v71;
  (*(*(v44 - 8) + 56))(v71, 1, 1, v44);
  sub_214080BDC(v43, &v78, v45, 1, v58);
  v46 = v74;
  v47 = *(*v75 + 200);
  WitnessTable = swift_getWitnessTable();
  v49 = v47(v58, v46, WitnessTable);

  (*(v73 + 8))(v58, v46);
  (*(v51 + 8))(v52, v53);
  return v49;
}

uint64_t sub_2146C85BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a2;
  v86 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v81 = v68 - v6;
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = v7;
  v72 = v8;
  v79 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = type metadata accessor for UnpackResponseMessage();
  v82 = *(v10 - 8);
  v83 = v10;
  v11 = *(v82 + 64);
  MEMORY[0x28223BE20](v10);
  v80 = v68 - v12;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for ContextualUnpackRequestMessage();
  v71 = *(v13 - 8);
  v14 = *(v71 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v68 - v15;
  v17 = sub_2146D9D38();
  v77 = *(v17 - 8);
  v78 = v17;
  v18 = *(v77 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v75 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v68 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v68 - v24;
  type metadata accessor for XPCDecoder();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = sub_214046008(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v26 + 16) = 1;
  v27 = *(*(AssociatedTypeWitness - 8) + 56);
  v85 = v25;
  v27(v25, 1, 1, AssociatedTypeWitness);
  WitnessTable = swift_getWitnessTable();
  v76 = v26;
  v29 = v92;
  sub_2144DFF68(v13, v86, v13, WitnessTable, v16);
  if (v29)
  {
    v74 = 0;
    v31 = v29;
    sub_214689A34(v29, 0, 0, &v87);
    v72 = *(&v87 + 1);
    v73 = v87;
    v71 = v88;
    v70 = v89;
    v92 = v90;
    v86 = v91;
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v68[1] = qword_280B35410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v32 = swift_allocObject();
    v69 = xmmword_2146E6910;
    *(v32 + 16) = xmmword_2146E6910;
    *&v87 = AssociatedTypeWitness;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v34 = sub_213FB17C8(&v87, MetatypeMetadata);
    v36 = v35;
    *(v32 + 56) = MEMORY[0x277D837D0];
    v37 = sub_213FB2DA0();
    *(v32 + 64) = v37;
    *(v32 + 32) = v34;
    *(v32 + 40) = v36;
    *&v87 = v29;
    v38 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    v39 = sub_2146D9618();
    v40 = MEMORY[0x277D837D0];
    *(v32 + 96) = MEMORY[0x277D837D0];
    *(v32 + 104) = v37;
    *(v32 + 72) = v39;
    *(v32 + 80) = v41;
    sub_2146D9BC8();
    sub_2146D91C8();

    v42 = swift_allocObject();
    *(v42 + 16) = v69;
    *&v87 = AssociatedTypeWitness;
    v43 = sub_213FB17C8(&v87, MetatypeMetadata);
    *(v42 + 56) = v40;
    *(v42 + 64) = v37;
    v44 = v40;
    *(v42 + 32) = v43;
    *(v42 + 40) = v45;
    v46 = v73;
    v65 = v72;
    *&v87 = v73;
    *(&v87 + 1) = v72;
    v47 = v71;
    v67 = v70;
    v88 = v71;
    v89 = v70;
    v90 = v92;
    v91 = v86;

    v48 = sub_2146D9618();
    *(v42 + 96) = v44;
    *(v42 + 104) = v37;
    *(v42 + 72) = v48;
    *(v42 + 80) = v49;
    sub_2146D9BC8();
    sub_2146D91C8();

    v62 = v77;
    v63 = v78;
    v64 = v46;
    v66 = v47;
  }

  else
  {
    v30 = v71;
    (*(v73 + 24))(*&v16[*(v13 + 48)], *&v16[*(v13 + 48) + 8], v16, v72);
    v74 = 0;
    v61 = v77;
    v60 = v78;
    (*(v77 + 8))(v85, v78);
    (*(v30 + 8))(v16, v13);
    v27(v23, 0, 1, AssociatedTypeWitness);
    v62 = v61;
    v63 = v60;
    (*(v61 + 32))(v85, v23, v60);
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v92 = 0;
    v86 = 0;
  }

  v50 = v75;
  v51 = v85;
  (*(v62 + 16))(v75, v85, v63);
  *&v87 = v64;
  *(&v87 + 1) = v65;
  v88 = v66;
  v89 = v67;
  v90 = v92;
  v91 = v86;
  v52 = sub_2146D8B88();
  v53 = v81;
  (*(*(v52 - 8) + 56))(v81, 1, 1, v52);
  v54 = v80;
  sub_214080BDC(v50, &v87, v53, 1, v80);
  v55 = v83;
  v56 = *(*v84 + 200);
  v57 = swift_getWitnessTable();
  v58 = v56(v54, v55, v57);

  (*(v82 + 8))(v54, v55);
  (*(v62 + 8))(v51, v63);
  return v58;
}

uint64_t sub_2146C8E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v90 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = &v74 - v7;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = v8;
  v78 = v9;
  v85 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = type metadata accessor for UnpackResponseMessage();
  v88 = *(v11 - 8);
  v89 = v11;
  v12 = *(v88 + 64);
  MEMORY[0x28223BE20](v11);
  v86 = &v74 - v13;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for ContextualUnpackFileRequestMessage();
  v77 = *(v14 - 8);
  v15 = *(v77 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v74 - v16;
  v18 = sub_2146D9D38();
  v83 = *(v18 - 8);
  v84 = v18;
  v19 = *(v83 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v80 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v92 = &v74 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v74 - v24;
  type metadata accessor for XPCDecoder();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = sub_214046008(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v26 + 16) = 1;
  v27 = *(AssociatedTypeWitness - 8);
  v28 = *(v27 + 56);
  v29 = v27 + 56;
  v28(v25, 1, 1, AssociatedTypeWitness);
  WitnessTable = swift_getWitnessTable();
  v81 = v26;
  v31 = v98;
  sub_2144DFF68(v14, a1, v14, WitnessTable, v17);
  v82 = v25;
  if (v31)
  {
    v79 = 0;
    v37 = v31;
    sub_214689A34(v31, 0, 0, &v93);
    v77 = *(&v93 + 1);
    v78 = v93;
    v76 = v94;
    v75 = v95;
    v98 = v96;
    v92 = v97;
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v38 = swift_allocObject();
    v74 = xmmword_2146E6910;
    *(v38 + 16) = xmmword_2146E6910;
    *&v93 = AssociatedTypeWitness;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v40 = sub_213FB17C8(&v93, MetatypeMetadata);
    v42 = v41;
    v43 = MEMORY[0x277D837D0];
    *(v38 + 56) = MEMORY[0x277D837D0];
    v44 = sub_213FB2DA0();
    v91 = AssociatedTypeWitness;
    v45 = v44;
    *(v38 + 64) = v44;
    *(v38 + 32) = v40;
    *(v38 + 40) = v42;
    *&v93 = v31;
    v46 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    v47 = sub_2146D9618();
    *(v38 + 96) = v43;
    *(v38 + 104) = v45;
    *(v38 + 72) = v47;
    *(v38 + 80) = v48;
    sub_2146D9BC8();
    sub_2146D91C8();

    v49 = swift_allocObject();
    *(v49 + 16) = v74;
    *&v93 = v91;
    v50 = sub_213FB17C8(&v93, MetatypeMetadata);
    *(v49 + 56) = v43;
    *(v49 + 64) = v45;
    v51 = v43;
    *(v49 + 32) = v50;
    *(v49 + 40) = v52;
    v53 = v78;
    v71 = v77;
    *&v93 = v78;
    *(&v93 + 1) = v77;
    v72 = v76;
    v73 = v75;
    v94 = v76;
    v95 = v75;
    v96 = v98;
    v97 = v92;

    v54 = sub_2146D9618();
    *(v49 + 96) = v51;
    *(v49 + 104) = v45;
    *(v49 + 72) = v54;
    *(v49 + 80) = v55;
    sub_2146D9BC8();
    sub_2146D91C8();

    v69 = v83;
    v67 = v84;
    v66 = v82;
    v70 = v53;
  }

  else
  {
    v76 = v29;
    v98 = v28;
    v32 = &v17[*(v14 + 48)];
    v34 = *v32;
    v33 = *(v32 + 1);
    LOBYTE(v32) = v32[16];
    *&v93 = v34;
    *(&v93 + 1) = v33;
    LOBYTE(v94) = v32;
    v35 = v79;
    v36 = *(v79 + 24);

    v36(&v93, v17, v78, v35);
    v79 = 0;

    (*(v77 + 8))(v17, v14);
    v66 = v82;
    v65 = v83;
    v67 = v84;
    (*(v83 + 8))(v82, v84);
    v68 = v92;
    v98(v92, 0, 1, AssociatedTypeWitness);
    v69 = v65;
    (*(v65 + 32))(v66, v68, v67);
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v98 = 0;
    v92 = 0;
  }

  v56 = v80;
  (*(v69 + 16))(v80, v66, v67);
  *&v93 = v70;
  *(&v93 + 1) = v71;
  v94 = v72;
  v95 = v73;
  v96 = v98;
  v97 = v92;
  v57 = sub_2146D8B88();
  v58 = v87;
  (*(*(v57 - 8) + 56))(v87, 1, 1, v57);
  v59 = v86;
  sub_214080BDC(v56, &v93, v58, 1, v86);
  v60 = v89;
  v61 = *(*v90 + 200);
  v62 = swift_getWitnessTable();
  v63 = v61(v59, v60, v62);

  (*(v88 + 8))(v59, v60);
  (*(v69 + 8))(v66, v67);
  return v63;
}

uint64_t sub_2146C97AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a2;
  v4[10] = v3;
  v4[8] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = *(a3 + 24);
  v4[13] = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[14] = AssociatedTypeWitness;
  v8 = *(*(sub_2146D9D38() - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = type metadata accessor for UnpackResponseMessage();
  v4[17] = v9;
  v10 = *(v9 - 8);
  v4[18] = v10;
  v11 = *(v10 + 64) + 15;
  v4[19] = swift_task_alloc();
  v12 = *(AssociatedTypeWitness - 8);
  v4[20] = v12;
  v13 = *(v12 + 64) + 15;
  v4[21] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for ContextualUnpackFileRequestMessage();
  v4[22] = v14;
  v15 = *(v14 - 8);
  v4[23] = v15;
  v16 = *(v15 + 64) + 15;
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2146C9A74, 0, 0);
}

uint64_t sub_2146C9A74()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 64);
  type metadata accessor for XPCDecoder();
  v4 = swift_allocObject();
  *(v0 + 200) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = sub_214046008(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v4 + 16) = 1;
  WitnessTable = swift_getWitnessTable();
  sub_2144DFF68(v2, v3, v2, WitnessTable, v1);
  v6 = *(v0 + 96);
  v7 = (*(v0 + 192) + *(*(v0 + 176) + 48));
  v8 = *v7;
  v9 = v7[1];
  LOBYTE(v7) = *(v7 + 16);
  *(v0 + 40) = v8;
  *(v0 + 48) = v9;
  *(v0 + 56) = v7;
  v10 = *(v6 + 24);

  v19 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v0 + 208) = v12;
  *v12 = v0;
  v12[1] = sub_2146C9CF4;
  v13 = *(v0 + 192);
  v14 = *(v0 + 168);
  v16 = *(v0 + 96);
  v15 = *(v0 + 104);
  v17 = *(v0 + 80);

  return v19(v14, v0 + 40, v13, v15, v16);
}

uint64_t sub_2146C9CF4()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v8 = *v1;
  v2[27] = v0;

  v4 = v2[5];
  v5 = v2[6];

  if (v0)
  {
    v6 = sub_2146CA118;
  }

  else
  {
    v6 = sub_2146C9E1C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2146C9E1C()
{
  v37 = v0;
  v1 = v0[27];
  v2 = v0[20];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[11];
  v9 = v0[9];
  (*(v2 + 16))(v6, v0[21], v7);
  (*(v2 + 56))(v6, 0, 1, v7);
  v10 = sub_2146D8B88();
  memset(v36, 0, sizeof(v36));
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_214080BDC(v6, v36, v8, 1, v3);
  v11 = *(*v9 + 200);
  WitnessTable = swift_getWitnessTable();
  v13 = v11(v3, v4, WitnessTable);
  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[23];
  v35 = v0[22];
  v18 = v0[20];
  v17 = v0[21];
  v19 = v0[18];
  v20 = v0[19];
  v21 = v0[17];
  if (v1)
  {
    v22 = v0[14];

    (*(v19 + 8))(v20, v21);
    (*(v18 + 8))(v17, v22);
    (*(v16 + 8))(v15, v35);
    v23 = v0[24];
    v24 = v0[21];
    v25 = v0[19];
    v26 = v0[15];
    v27 = v0[11];

    v28 = v0[1];

    return v28();
  }

  else
  {
    v31 = v0[14];
    v30 = v0[15];
    v33 = v0[11];
    v34 = v13;

    (*(v19 + 8))(v20, v21);
    (*(v18 + 8))(v17, v31);
    (*(v16 + 8))(v15, v35);

    v32 = v0[1];

    return v32(v34);
  }
}

uint64_t sub_2146CA118()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];

  (*(v4 + 8))(v2, v3);
  v5 = v0[27];
  v6 = v0[24];
  v7 = v0[21];
  v8 = v0[19];
  v9 = v0[15];
  v10 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2146CA1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2146CA28C;

  return sub_2146C97AC(a1, a2, a3);
}

uint64_t sub_2146CA28C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2146CA38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a3;
  v77 = a5;
  v80 = a1;
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  v74 = v7;
  v75 = v6;
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  type metadata accessor for SessionSchemaResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v9 = sub_2146D9AB8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v79 = v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C918118, &qword_2147840B0);
  WitnessTable = swift_getWitnessTable();
  v73 = v9;
  v70 = v12;
  v68 = WitnessTable;
  v14 = sub_2146DA468();
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = *(v71 + 64);
  MEMORY[0x28223BE20](v14);
  v69 = v62 - v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for ContextualUnpackFileRequestMessage();
  v66 = *(v17 - 8);
  v18 = *(v66 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v62 - v19;
  v21 = sub_2146D8B88();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v63 = v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62[2] = v25;
  MEMORY[0x28223BE20](v24);
  v27 = v62 - v26;
  v28 = sub_2146D9B88();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v29 = qword_280B35410;
  v30 = *(v22 + 16);
  v62[1] = v22 + 16;
  v62[0] = v30;
  v30(v27, a2, v21);
  v31 = os_log_type_enabled(v29, v28);
  v67 = a2;
  v65 = v21;
  v64 = v22;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v78 = v20;
    v34 = v17;
    v35 = v33;
    v83[0] = v33;
    *v32 = 136315138;
    sub_2146CB1BC(&qword_27C918120, MEMORY[0x277CC95F0]);
    v36 = sub_2146DA428();
    v37 = v21;
    v39 = v38;
    (*(v22 + 8))(v27, v37);
    v40 = sub_2144AEA38(v36, v39, v83);

    *(v32 + 4) = v40;
    _os_log_impl(&dword_213FAF000, v29, v28, "Task running for AsyncThrowingStream %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v41 = v35;
    v17 = v34;
    v20 = v78;
    MEMORY[0x216056AC0](v41, -1, -1);
    MEMORY[0x216056AC0](v32, -1, -1);
  }

  else
  {
    (*(v22 + 8))(v27, v21);
  }

  type metadata accessor for XPCDecoder();
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = sub_214046008(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v42 + 16) = 1;
  v43 = swift_getWitnessTable();
  v44 = v84;
  sub_2144DFF68(v17, v80, v17, v43, v20);
  if (v44)
  {
  }

  type metadata accessor for XPCEncoder();
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0u;
  *(v46 + 40) = 0u;
  *(v46 + 56) = 0u;
  swift_beginAccess();
  *(v46 + 16) = 1;
  v47 = &v20[*(v17 + 48)];
  v49 = *v47;
  v48 = *(v47 + 1);
  LOBYTE(v47) = v47[16];
  v81[0] = v49;
  v81[1] = v48;
  v82 = v47;
  v80 = v17;
  v50 = v75;
  v51 = *(v75 + 24);

  v84 = 0;
  v52 = v67;
  v78 = v20;
  v53 = v74;
  v51(v81, v20, v67, v74, v50);

  v54 = v63;
  v55 = v52;
  v56 = v65;
  (v62[0])(v63, v55, v65);
  v57 = v64;
  v58 = (*(v64 + 80) + 48) & ~*(v64 + 80);
  v59 = swift_allocObject();
  *(v59 + 2) = v53;
  *(v59 + 3) = v50;
  *(v59 + 4) = v76;
  *(v59 + 5) = v46;
  (*(v57 + 32))(&v59[v58], v54, v56);

  v60 = v69;
  sub_2146D9A28();

  v61 = v72;
  sub_21409EFF8(v72);

  (*(v71 + 8))(v60, v61);
  return (*(v66 + 8))(v78, v80);
}

uint64_t sub_2146CAB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_getAssociatedTypeWitness();
  v7 = *(*(sub_2146D9D38() - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = type metadata accessor for UnpackResponseMessage();
  v5[11] = v8;
  v9 = *(v8 - 8);
  v5[12] = v9;
  v10 = *(v9 + 64) + 15;
  v5[13] = swift_task_alloc();
  v11 = type metadata accessor for SessionSchemaResult();
  v5[14] = v11;
  v12 = *(v11 - 8);
  v5[15] = v12;
  v13 = *(v12 + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2146CAD84, 0, 0);
}

uint64_t sub_2146CAD84()
{
  v29 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v26 = v2;
  v27 = v0[10];
  v5 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[4];
  v10 = v0[5];
  (*(v0[15] + 16))(v1, v0[3], v3);
  v11 = *(v1 + *(v3 + 36));
  if (v11)
  {
    v10 = v9;
  }

  v12 = *(v5 - 8);
  (*(v12 + 16))(v6, v1, v5);
  (*(v12 + 56))(v6, 0, 1, v5);
  v13 = sub_2146D8B88();
  memset(v28, 0, sizeof(v28));
  v14 = *(v13 - 8);
  (*(v14 + 16))(v7, v8, v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  sub_214080BDC(v6, v28, v7, v11, v26);
  v15 = *(*v10 + 200);

  WitnessTable = swift_getWitnessTable();
  v17 = v15(v26, v4, WitnessTable);

  v19 = v0[15];
  v18 = v0[16];
  v20 = v0[14];
  v21 = v0[9];
  v22 = v0[7];
  v23 = v0[2];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v19 + 8))(v18, v20);
  *v23 = v17;
  *(v23 + 8) = v11;

  v24 = v0[1];

  return v24();
}

uint64_t sub_2146CB0B0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(sub_2146D8B88() - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = v2[4];
  v11 = v2[5];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_21409A9C0;

  return sub_2146CAB88(a1, a2, v10, v11, v2 + v9);
}

uint64_t sub_2146CB1BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2146CB204(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2146CB244(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != 3)
  {
    return sub_213FB54FC(a1, a2);
  }

  return a1;
}

uint64_t sub_2146CB2A0()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (*v0)
    {
      return sub_2146D107C();
    }

    else
    {
      return sub_2146D0DE4();
    }
  }

  else if (v1 == 2)
  {
    return sub_2146D080C();
  }

  else if (v1 == 3)
  {
    return sub_2146D0B24();
  }

  else
  {
    return sub_2146D1320();
  }
}

uint64_t sub_2146CB30C@<X0>(char *a1@<X8>)
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

uint64_t sub_2146CB368()
{
  v1 = 0x5064696C61766E69;
  if (*v0 != 1)
  {
    v1 = 0x5564696C61766E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4964696C61766E69;
  }
}

uint64_t sub_2146CB3E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5064696C61766E69;
  v4 = 0xEF6675626F746F72;
  if (v2 != 1)
  {
    v3 = 0x5564696C61766E69;
    v4 = 0xEB00000000444955;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x4964696C61766E69;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB000000006D6574;
  }

  v7 = 0x5064696C61766E69;
  v8 = 0xEF6675626F746F72;
  if (*a2 != 1)
  {
    v7 = 0x5564696C61766E69;
    v8 = 0xEB00000000444955;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x4964696C61766E69;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB000000006D6574;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2146CB510()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2146CB5D0()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2146CB67C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2146CB738@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_2146CB30C(a1);
}

void sub_2146CB744(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006D6574;
  v4 = 0xEF6675626F746F72;
  v5 = 0x5064696C61766E69;
  if (v2 != 1)
  {
    v5 = 0x5564696C61766E69;
    v4 = 0xEB00000000444955;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4964696C61766E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2146CB7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v104 = a2;
  v107 = a3;
  v6 = type metadata accessor for IDSNearbySessionMessage(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v102 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908068, &qword_21476EEC0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v151 = v81 - v14;
  sub_214535078(&v142);
  v15 = v149;
  *(a4 + 104) = v148;
  *(a4 + 120) = v15;
  *(a4 + 136) = v150[0];
  *(a4 + 145) = *(v150 + 9);
  v16 = v145;
  *(a4 + 40) = v144;
  *(a4 + 56) = v16;
  v17 = v147;
  *(a4 + 72) = v146;
  *(a4 + 88) = v17;
  v18 = v143;
  *(a4 + 8) = v142;
  *(a4 + 24) = v18;
  *(a4 + 168) = 0u;
  v19 = (a4 + 168);
  v105 = a4 + 264;
  *(a4 + 376) = 0;
  *(a4 + 248) = 0u;
  *(a4 + 232) = 0u;
  *(a4 + 216) = 0u;
  *(a4 + 200) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 344) = 0u;
  *(a4 + 360) = 0u;
  *(a4 + 312) = 0u;
  *(a4 + 328) = 0u;
  *(a4 + 280) = 0u;
  *(a4 + 296) = 0u;
  *(a4 + 264) = 0u;
  *(a4 + 384) = 0u;
  *(a4 + 400) = 0u;
  *(a4 + 416) = 0u;
  *(a4 + 432) = 0u;
  *(a4 + 448) = 0u;
  v101 = v6;
  v20 = *(v6 + 36);
  v21 = type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
  v22 = *(*(v21 - 8) + 56);
  v106 = v20;
  v22(a4 + v20, 1, 1, v21);
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v23 = v151;
      v22(v151, 1, 1, v21);
      v38 = v103;
      v28 = v104;
      v29 = v107;
      sub_2146CCFEC(v104, v107, &v117);
      if (!v38)
      {
        sub_213FB54FC(v28, v29);
        v97 = 0;
        v99 = 0;
        v100 = 0;
        v88 = v118;
        v89 = v117;
        v86 = v120;
        v87 = v119;
        v84 = v122;
        v85 = v121;
        v104 = *(&v123 + 1);
        v107 = v123;
        v139 = v148;
        v140 = v149;
        v141[0] = v150[0];
        *(v141 + 9) = *(v150 + 9);
        v135 = v144;
        v136 = v145;
        v98 = 0u;
        v137 = v146;
        v138 = v147;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v90 = 0u;
        v133 = v142;
        v134 = v143;
        v82 = 0u;
        v83 = 0u;
        LODWORD(v103) = v124;
        v30 = v105;
        goto LABEL_23;
      }
    }

    else
    {
      v23 = v151;
      if (a1 != 2)
      {
        goto LABEL_17;
      }

      v22(v151, 1, 1, v21);
      v27 = v103;
      v28 = v104;
      v29 = v107;
      sub_2146CD998(v104, v107, &v117);
      if (!v27)
      {
        sub_213FB54FC(v28, v29);
        v107 = 0;
        v104 = 0;
        LODWORD(v103) = 0;
        v98 = v117;
        v94 = v120;
        v95 = v119;
        v96 = v118;
        v139 = v148;
        v140 = v149;
        v141[0] = v150[0];
        *(v141 + 9) = *(v150 + 9);
        v135 = v144;
        v136 = v145;
        v92 = 0u;
        v93 = 0u;
        v97 = 1;
        v137 = v146;
        v138 = v147;
        v90 = 0u;
        v91 = 0u;
        v82 = 0u;
        v83 = 0u;
        v88 = 0u;
        v89 = 0u;
        v133 = v142;
        v134 = v143;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v99 = *(&v121 + 1);
        v100 = v121;
        v30 = v105;
        goto LABEL_23;
      }
    }

    goto LABEL_16;
  }

  if (a1 == 3)
  {
    v31 = v151;
    v22(v151, 1, 1, v21);
    v32 = v103;
    v33 = v104;
    v34 = v107;
    sub_2146CC2FC(v104, v107, &v117);
    if (!v32)
    {
      sub_213FB54FC(v33, v34);
      v114 = v123;
      v115 = v124;
      v116[0] = v125[0];
      *(v116 + 9) = *(v125 + 9);
      v110 = v119;
      v111 = v120;
      v112 = v121;
      v113 = v122;
      v108 = v117;
      v109 = v118;
      nullsub_1(&v108);
      v107 = 0;
      v104 = 0;
      LODWORD(v103) = 0;
      v99 = 0;
      v100 = 0;
      v139 = v114;
      v140 = v115;
      v141[0] = v116[0];
      *(v141 + 9) = *(v116 + 9);
      v98 = 0u;
      v97 = 2;
      v95 = 0u;
      v96 = 0u;
      v135 = v110;
      v136 = v111;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v137 = v112;
      v138 = v113;
      v82 = 0u;
      v83 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v133 = v108;
      v134 = v109;
      v84 = 0u;
      v30 = v105;
      goto LABEL_23;
    }

    sub_213FB2DF4(v31, &qword_27C908068, &qword_21476EEC0);
    v35 = v33;
    v36 = v34;
LABEL_18:
    sub_213FB54FC(v35, v36);
    v26 = v105;
    goto LABEL_19;
  }

  v23 = v151;
  if (a1 == 4)
  {
    v22(v151, 1, 1, v21);
    v37 = v103;
    v28 = v104;
    v29 = v107;
    sub_2146CC52C(v104, v107, &v117);
    if (!v37)
    {
      sub_213FB54FC(v28, v29);
      v107 = 0;
      v104 = 0;
      LODWORD(v103) = 0;
      v99 = 0;
      v100 = 0;
      v92 = v118;
      v93 = v117;
      v90 = v120;
      v91 = v119;
      v139 = v148;
      v140 = v149;
      v141[0] = v150[0];
      *(v141 + 9) = *(v150 + 9);
      v135 = v144;
      v136 = v145;
      v137 = v146;
      v138 = v147;
      v98 = 0u;
      v97 = 3;
      v95 = 0u;
      v96 = 0u;
      v94 = 0u;
      v88 = 0u;
      v89 = 0u;
      v133 = v142;
      v134 = v143;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = v122;
      v83 = v121;
      v30 = v105;
      goto LABEL_23;
    }

LABEL_16:
    sub_213FB2DF4(v23, &qword_27C908068, &qword_21476EEC0);
    v35 = v28;
    v36 = v29;
    goto LABEL_18;
  }

  if (a1 != 5)
  {
LABEL_17:
    sub_21404A6EC();
    swift_allocError();
    *v39 = 0xD000000000000031;
    v39[1] = 0x80000002147A72A0;
    v39[2] = 0x4964696C61766E69;
    v39[3] = 0xEB000000006D6574;
    v39[4] = 0xD000000000000017;
    v39[5] = 0x80000002147A72E0;
    swift_willThrow();
    v35 = v104;
    v36 = v107;
    goto LABEL_18;
  }

  v22(v151, 1, 1, v21);
  v24 = v103;
  v25 = v104;
  sub_2146CE1A4(v104, v107, v13);
  v81[1] = v24;
  if (v24)
  {
    sub_213FB2DF4(v23, &qword_27C908068, &qword_21476EEC0);
    sub_213FB54FC(v25, v107);
    v26 = v105;
LABEL_19:
    v40 = *(a4 + 120);
    v139 = *(a4 + 104);
    v140 = v40;
    v141[0] = *(a4 + 136);
    *(v141 + 9) = *(a4 + 145);
    v41 = *(a4 + 56);
    v135 = *(a4 + 40);
    v136 = v41;
    v42 = *(a4 + 88);
    v137 = *(a4 + 72);
    v138 = v42;
    v43 = *(a4 + 24);
    v133 = *(a4 + 8);
    v134 = v43;
    sub_213FB2DF4(&v133, &qword_27C908088, &unk_21476EEA0);
    v44 = *(a4 + 216);
    v110 = *(a4 + 200);
    v111 = v44;
    v45 = *(a4 + 248);
    v112 = *(a4 + 232);
    v113 = v45;
    v46 = *(a4 + 184);
    v108 = *v19;
    v109 = v46;
    sub_213FB2DF4(&v108, &qword_27C9080A0, &unk_2146F4F10);
    v47 = *(v26 + 80);
    v121 = *(v26 + 64);
    v122 = v47;
    v123 = *(v26 + 96);
    LOWORD(v124) = *(v26 + 112);
    v48 = *(v26 + 16);
    v117 = *v26;
    v118 = v48;
    v49 = *(v26 + 48);
    v119 = *(v26 + 32);
    v120 = v49;
    sub_213FB2DF4(&v117, &qword_27C9080B8, &unk_21476EEB0);
    v50 = *(a4 + 432);
    v128 = *(a4 + 416);
    v129 = v50;
    v130 = *(a4 + 448);
    v51 = *(a4 + 400);
    v126 = *(a4 + 384);
    v127 = v51;
    sub_213FB2DF4(&v126, &qword_27C9080D0, &qword_2146F4F20);
    return sub_213FB2DF4(a4 + v106, &qword_27C908068, &qword_21476EEC0);
  }

  sub_213FB2DF4(v23, &qword_27C908068, &qword_21476EEC0);
  sub_213FB54FC(v25, v107);
  v22(v13, 0, 1, v21);
  sub_21408AC04(v13, v23, &qword_27C908068, &qword_21476EEC0);
  v107 = 0;
  v104 = 0;
  LODWORD(v103) = 0;
  v99 = 0;
  v100 = 0;
  v139 = v148;
  v140 = v149;
  v141[0] = v150[0];
  *(v141 + 9) = *(v150 + 9);
  v98 = 0u;
  v97 = 4;
  v95 = 0u;
  v96 = 0u;
  v135 = v144;
  v136 = v145;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v137 = v146;
  v138 = v147;
  v82 = 0u;
  v83 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v133 = v142;
  v134 = v143;
  v84 = 0u;
  v30 = v105;
LABEL_23:
  v53 = v102;
  v54 = v102 + 264;
  sub_21408AC04(v151, &v102[*(v101 + 36)], &qword_27C908068, &qword_21476EEC0);
  v55 = v140;
  *(v53 + 104) = v139;
  *(v53 + 120) = v55;
  *(v53 + 136) = v141[0];
  *(v53 + 145) = *(v141 + 9);
  v56 = v136;
  *(v53 + 40) = v135;
  *(v53 + 56) = v56;
  v57 = v138;
  *(v53 + 72) = v137;
  *(v53 + 88) = v57;
  v58 = v134;
  *(v53 + 8) = v133;
  *v53 = v97;
  *(v53 + 24) = v58;
  v59 = v93;
  *(v53 + 184) = v92;
  *(v53 + 168) = v59;
  v60 = v91;
  *(v53 + 216) = v90;
  *(v53 + 200) = v60;
  v61 = v83;
  *(v53 + 248) = v82;
  *(v53 + 232) = v61;
  v62 = v88;
  *v54 = v89;
  *(v53 + 280) = v62;
  v63 = v86;
  *(v53 + 296) = v87;
  *(v53 + 312) = v63;
  v64 = v84;
  *(v53 + 328) = v85;
  *(v53 + 344) = v64;
  v65 = v104;
  *(v53 + 360) = v107;
  *(v53 + 368) = v65;
  *(v53 + 376) = v103;
  v66 = v96;
  *(v53 + 384) = v98;
  *(v53 + 400) = v66;
  v67 = v94;
  *(v53 + 416) = v95;
  *(v53 + 432) = v67;
  v68 = v99;
  *(v53 + 448) = v100;
  *(v53 + 456) = v68;
  v69 = *(a4 + 120);
  v123 = *(a4 + 104);
  v124 = v69;
  v125[0] = *(a4 + 136);
  *(v125 + 9) = *(a4 + 145);
  v70 = *(a4 + 56);
  v119 = *(a4 + 40);
  v120 = v70;
  v71 = *(a4 + 88);
  v121 = *(a4 + 72);
  v122 = v71;
  v72 = *(a4 + 24);
  v117 = *(a4 + 8);
  v118 = v72;
  sub_213FB2DF4(&v117, &qword_27C908088, &unk_21476EEA0);
  v73 = *(a4 + 216);
  v128 = *(a4 + 200);
  v129 = v73;
  v74 = *(a4 + 248);
  v130 = *(a4 + 232);
  v131 = v74;
  v75 = *(a4 + 184);
  v126 = *v19;
  v127 = v75;
  sub_213FB2DF4(&v126, &qword_27C9080A0, &unk_2146F4F10);
  v76 = *(v30 + 80);
  v112 = *(v30 + 64);
  v113 = v76;
  v114 = *(v30 + 96);
  LOWORD(v115) = *(v30 + 112);
  v77 = *(v30 + 16);
  v108 = *v30;
  v109 = v77;
  v78 = *(v30 + 48);
  v110 = *(v30 + 32);
  v111 = v78;
  sub_213FB2DF4(&v108, &qword_27C9080B8, &unk_21476EEB0);
  v79 = *(a4 + 432);
  v132[2] = *(a4 + 416);
  v132[3] = v79;
  v132[4] = *(a4 + 448);
  v80 = *(a4 + 400);
  v132[0] = *(a4 + 384);
  v132[1] = v80;
  sub_213FB2DF4(v132, &qword_27C9080D0, &qword_2146F4F20);
  sub_213FB2DF4(a4 + v106, &qword_27C908068, &qword_21476EEC0);
  return sub_2146D69E4(v53, a4, type metadata accessor for IDSNearbySessionMessage);
}

uint64_t sub_2146CC2FC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2146D8E18();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for NearbyProtoConnectionRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = a1;
  v32 = a2;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_2146D6B54(&qword_27C914F18, type metadata accessor for NearbyProtoConnectionRequest);
  result = sub_2146D8FD8();
  if (!v3)
  {
    v33 = a3;
    v14 = *v12;
    v15 = v12[1];
    v16 = v12[2];
    v17 = v12[3];
    v18 = *(v9 + 32);
    v19 = (v12 + *(v9 + 28));
    v20 = *v19;
    v21 = v19[1];
    v23 = *(v12 + v18);
    v22 = *(v12 + v18 + 8);
    if (v22 >> 60 != 15)
    {
      v24 = *(v12 + v18);
      v25 = *(v12 + v18 + 8);
      v27 = *v19;
      sub_213FDCA18(v24, v25);
      v20 = v27;
    }

    sub_21422AD24(v14, v15, v16, v17, v20, v21, v23, v22, v33);
    return sub_2146D6A68(v12, type metadata accessor for NearbyProtoConnectionRequest);
  }

  return result;
}

uint64_t sub_2146CC52C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v85 = a3;
  v5 = type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v68 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v68 - v17;
  v19 = sub_2146D8E18();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v100 = a1;
  v101 = a2;
  v88 = 0;
  v87 = 0u;
  v86 = 0u;
  v24 = a2;
  v25 = (&v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21402D9F8(a1, v24);
  sub_2146D8E08();
  sub_2146D6B54(&qword_27C914F30, type metadata accessor for NearbyProtoConnectionResponseContent);
  v26 = v108;
  result = sub_2146D8FD8();
  if (v26)
  {
    return result;
  }

  v79 = v13;
  *&v84 = v16;
  v28 = v5;
  v80 = v8;
  v108 = 0;
  v29 = v25[1];
  v82 = *v25;
  v81 = v29;
  v30 = v25[3];
  v72 = v25[2];
  v71 = v30;
  v31 = *(v21 + 24);
  v83 = v25;
  sub_213FB2E54(v25 + v31, v18, &qword_27C914EC0, qword_214758530);
  v32 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  v33 = *(*(v32 - 8) + 48);
  v34 = v33(v18, 1, v32) == 1;
  v35 = v18;
  if (!v34)
  {
    v38 = v18;
    sub_213FB2E54(v18, v84, &qword_27C914EC0, qword_214758530);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v77 = EnumCaseMultiPayload == 1;
    if (EnumCaseMultiPayload != 1)
    {
      v36 = 0;
      v37 = 0xF000000000000000;
      v41 = v84;
LABEL_14:
      sub_2146D6A68(v41, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
      v35 = v38;
      goto LABEL_15;
    }

    v40 = v79;
    sub_213FB2E54(v83 + v31, v79, &qword_27C914EC0, qword_214758530);
    if (v33(v40, 1, v32) == 1)
    {
      sub_213FB2DF4(v40, &qword_27C914EC0, qword_214758530);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v42 = v80;
        sub_2146D69E4(v40, v80, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
LABEL_13:
        v41 = v84;
        v36 = *v42;
        v37 = v42[1];
        sub_21402D9F8(*v42, v37);
        sub_2146D6A68(v42, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
        goto LABEL_14;
      }

      sub_2146D6A68(v40, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
    }

    v42 = v80;
    *v80 = xmmword_2146ECC00;
    v43 = v42 + *(v28 + 20);
    sub_2146D8DE8();
    goto LABEL_13;
  }

  v36 = 0;
  v77 = 0;
  v37 = 0xF000000000000000;
LABEL_15:
  sub_213FB2DF4(v35, &qword_27C914EC0, qword_214758530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v84 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v45 = swift_allocObject();
  *(v45 + 16) = sub_21405980C;
  *(v45 + 24) = 0;
  *(inited + 32) = v45;
  sub_213FDCA18(v36, v37);
  sub_214042B80(inited, &v86);
  v46 = v86;
  v47 = *(&v87 + 1);
  v74 = v87;
  v48 = v88;
  v49 = swift_initStackObject();
  *(v49 + 16) = v84;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_21430CE10;
  *(v50 + 24) = 0;
  *(v49 + 32) = v50;
  sub_214042B80(v49, &v100);
  v79 = v100;
  v78 = v101;
  v73 = v102;
  *&v84 = v103;
  LODWORD(v80) = v104;
  v100 = v82;
  v101 = v81;
  v75 = v48;
  v99 = v48;
  *&v86 = 0xD000000000000035;
  *(&v86 + 1) = 0x8000000214791F70;
  *&v87 = 0xD00000000000001CLL;
  *(&v87 + 1) = 0x800000021478A360;

  v51 = v108;
  v76 = v46;
  v52 = (v46)(&v100, &v99, &v86);
  if (v51)
  {
    v108 = v51;

    sub_213FDC6BC(v36, v37);
    v53 = v74;
  }

  else
  {
    v54 = v74;
    v69 = v37;
    v70 = v36;
    if (v52)
    {
      v108 = 0;

      v55 = v81;

      v56 = v72;
      v57 = v71;
      v100 = v72;
      v101 = v71;
      v99 = v80;
      *&v86 = 0xD000000000000031;
      *(&v86 + 1) = 0x8000000214791FB0;
      *&v87 = 0xD00000000000001CLL;
      *(&v87 + 1) = 0x800000021478A360;

      v58 = v78;

      v59 = v108;
      v60 = v79(&v100, &v99, &v86);
      if (v59)
      {
        v108 = v59;
      }

      else
      {
        if (v60)
        {
          v108 = 0;

          v63 = v70;
          v64 = v69;
          sub_213FDC6BC(v70, v69);
          sub_2146D6A68(v83, type metadata accessor for NearbyProtoConnectionResponseContent);

          v65 = v85;
          *v85 = v76;
          v65[1] = *(&v46 + 1);
          v65[2] = v82;
          v65[3] = v55;
          *(v65 + 32) = v75;
          v65[5] = v79;
          v65[6] = v58;
          v65[7] = v56;
          v65[8] = v57;
          *(v65 + 72) = v80;
          *(v65 + 73) = v77;
          v65[10] = v63;
          v65[11] = v64;
          return result;
        }

        sub_214031C4C();
        v66 = swift_allocError();
        *v67 = 0xD000000000000031;
        v67[1] = 0x8000000214791FB0;
        v67[2] = 0xD00000000000001CLL;
        v67[3] = 0x800000021478A360;
        v108 = v66;
        swift_willThrow();
      }

      sub_213FDC6BC(v70, v69);
      v47 = v55;
      v53 = v82;
      v36 = v70;
      v37 = v69;
    }

    else
    {
      sub_214031C4C();
      v61 = swift_allocError();
      *v62 = 0xD000000000000035;
      v62[1] = 0x8000000214791F70;
      v62[2] = 0xD00000000000001CLL;
      v62[3] = 0x800000021478A360;
      v108 = v61;
      swift_willThrow();
      v36 = v70;
      v37 = v69;
      sub_213FDC6BC(v70, v69);
      v53 = v54;
    }
  }

  sub_2146D6A68(v83, type metadata accessor for NearbyProtoConnectionResponseContent);

  *&v86 = v76;
  *(&v86 + 1) = *(&v46 + 1);
  *&v87 = v53;
  *(&v87 + 1) = v47;
  LOBYTE(v88) = v75;
  *(&v88 + 1) = v107[0];
  HIDWORD(v88) = *(v107 + 3);
  v89 = v79;
  v90 = v78;
  v91 = v73;
  v92 = v84;
  v93 = v80;
  v94 = v77;
  v95 = v105;
  v96 = v106;
  v97 = v36;
  v98 = v37;
  return sub_21430CE14(&v86);
}

uint64_t sub_2146CCFEC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_2146D8E18();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for NearbyProtoJoinRequestContent(0);
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = a1;
  v90 = a2;
  v73 = 0;
  v72 = 0u;
  v71 = 0u;
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_2146D6B54(&qword_27C914F78, type metadata accessor for NearbyProtoJoinRequestContent);
  result = sub_2146D8FD8();
  if (!v3)
  {
    v52 = a3;
    v64 = 0;
    v14 = v12[1];
    v69 = *v12;
    v70 = v14;
    v15 = v9[7];
    v16 = (v12 + v9[6]);
    v17 = v16[1];
    v53 = *v16;
    v19 = *(v12 + v15);
    v18 = *(v12 + v15 + 8);
    if (v18 >> 60 != 15)
    {
      sub_213FDCA18(*(v12 + v15), *(v12 + v15 + 8));
    }

    v55 = v19;
    v56 = v18;
    v60 = *(v12 + v9[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_2146E9BF0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
    v21 = swift_allocObject();
    *(v21 + 16) = sub_214059900;
    *(v21 + 24) = 0;
    *(v20 + 32) = v21;

    sub_214042B80(v20, &v71);
    v23 = *(&v71 + 1);
    v22 = v71;
    v24 = *(&v72 + 1);
    v54 = v72;
    LODWORD(v20) = v73;
    sub_214622C9C(&v89);
    v67 = v89;
    v65 = v90;
    v96 = v91;
    v66 = v92;
    v58 = v93;
    sub_214622DE8(&v85);
    v63 = v85;
    v57 = v86;
    v61 = v87;
    v62 = v88;
    v89 = v69;
    v90 = v70;
    v59 = v20;
    LOBYTE(v85) = v20;
    *&v71 = 0xD00000000000002ELL;
    *(&v71 + 1) = 0x8000000214791FF0;
    *&v72 = 0xD00000000000001CLL;
    *(&v72 + 1) = 0x800000021478A360;

    v68 = v23;
    v25 = v64;
    v26 = v22(&v89, &v85, &v71);
    if (v25)
    {
      sub_213FDC6BC(v55, v56);

      v27 = v58;
    }

    else
    {
      v51 = v22;
      if (v26)
      {

        v89 = v53;
        v90 = v17;
        v28 = v17;
        v27 = v58;
        LOBYTE(v85) = v58;
        *&v71 = 0xD00000000000002FLL;
        *(&v71 + 1) = 0x8000000214792020;
        *&v72 = 0xD00000000000001CLL;
        *(&v72 + 1) = 0x800000021478A360;
        v29 = v65;

        sub_213FDC9D0(v96, v66);
        v30 = v67(&v89, &v85, &v71);
        if (v30)
        {
          v36 = v96;
          v37 = v66;
          v64 = 0;
          sub_213FDC6D0(v96, v66);

          sub_213FDC6D0(v36, v37);
          v71 = v63;
          v38 = v57;
          *&v72 = v57;
          v39 = v61;
          *(&v72 + 1) = v61;
          LOBYTE(v73) = v62;
          v96 = *(&v63 + 1);

          sub_21404F7E0(v38, v39);
          v66 = "Message.JoinRequest.displayName";
          v40 = v55;
          v41 = v56;
          v42 = v64;
          sub_214032118(v55, v56, 2, 0xD00000000000002CLL, 0x8000000214792050, 0xD00000000000001CLL, 0x800000021478A360);
          if (!v42)
          {
            sub_213FDC6BC(v40, v41);

            v45 = v72;
            v46 = v73;

            sub_214032564(v38, v61);
            v47 = v52;
            v48 = v68;
            *v52 = v51;
            v47[1] = v48;
            v49 = v70;
            v47[2] = v69;
            v47[3] = v49;
            *(v47 + 32) = v59;
            v47[5] = v67;
            v47[6] = v29;
            v47[7] = v53;
            v47[8] = v28;
            *(v47 + 72) = v27;
            *(v47 + 5) = v71;
            *(v47 + 6) = v45;
            *(v47 + 112) = v46;
            *(v47 + 113) = v60;
            return sub_2146D6A68(v12, type metadata accessor for NearbyProtoJoinRequestContent);
          }

          sub_213FDC6BC(v40, v41);

          v63 = v71;
          v34 = *(&v72 + 1);
          v43 = v72;
          v62 = v73;

          sub_214032564(v38, v61);
          v24 = v70;
          v96 = v53;
          v35 = v43;
          v33 = v69;
          v22 = v51;
          v32 = v68;
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v44 = 0xD00000000000002FLL;
          v44[1] = 0x8000000214792020;
          v44[2] = 0xD00000000000001CLL;
          v44[3] = 0x800000021478A360;
          swift_willThrow();

          sub_213FDC6BC(v55, v56);

          v33 = v69;
          v24 = v70;

          v28 = v66;
          sub_213FDC6D0(v96, v66);
          v22 = v51;
          v32 = v68;
          v34 = v61;
          v35 = v57;
        }

LABEL_10:
        *&v71 = v22;
        *(&v71 + 1) = v32;
        *&v72 = v33;
        *(&v72 + 1) = v24;
        LOBYTE(v73) = v59;
        *(&v73 + 1) = *v95;
        HIDWORD(v73) = *&v95[3];
        v74 = v67;
        v75 = v65;
        v76 = v96;
        v77 = v28;
        v78 = v27;
        *v79 = *v94;
        *&v79[3] = *&v94[3];
        v80 = v63;
        v81 = v35;
        v82 = v34;
        v83 = v62;
        v84 = v60;
        sub_21430D1C4(&v71);
        return sub_2146D6A68(v12, type metadata accessor for NearbyProtoJoinRequestContent);
      }

      sub_214031C4C();
      swift_allocError();
      *v31 = 0xD00000000000002ELL;
      v31[1] = 0x8000000214791FF0;
      v31[2] = 0xD00000000000001CLL;
      v31[3] = 0x800000021478A360;
      swift_willThrow();

      sub_213FDC6BC(v55, v56);

      v27 = v58;
      v22 = v51;
    }

    v32 = v68;

    v33 = v54;
    v34 = v61;
    v35 = v57;
    v28 = v66;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_2146CD998@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v62 = a3;
  v63 = type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0);
  v5 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v54 - v10;
  v64 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v64);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  v19 = sub_2146D8E18();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = type metadata accessor for NearbyProtoJoinResponseContent(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v74 = a1;
  v75 = a2;
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v24 = a1;
  v25 = (&v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21402D9F8(v24, a2);
  sub_2146D8E08();
  sub_2146D6B54(&qword_27C914F90, type metadata accessor for NearbyProtoJoinResponseContent);
  v26 = v65;
  result = sub_2146D8FD8();
  if (!v26)
  {
    v28 = v63;
    v61 = v18;
    v65 = 0;
    v29 = *v25;
    v30 = v25[1];
    sub_213FB2E54(v25 + *(v21 + 20), v11, &qword_27C914EC8, &unk_214784480);
    if ((*(v12 + 48))(v11, 1, v64) == 1)
    {
      sub_213FB2DF4(v11, &qword_27C914EC8, &unk_214784480);
      sub_21404A6EC();
      swift_allocError();
      *v31 = 0xD000000000000031;
      v31[1] = 0x80000002147A72A0;
      v31[2] = 0x5064696C61766E69;
      v31[3] = 0xEF6675626F746F72;
      v31[4] = 0xD000000000000012;
      v31[5] = 0x80000002147A7300;
      swift_willThrow();
      return sub_2146D6A68(v25, type metadata accessor for NearbyProtoJoinResponseContent);
    }

    v60 = v30;
    v59 = v29;
    v32 = v61;
    sub_2146D69E4(v11, v61, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    sub_2146D6894(v32, v16, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v58 = v25;
    if (EnumCaseMultiPayload == 1)
    {
      sub_2146D69E4(v16, v7, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
      v34 = *v7;
      v35 = v7[1];
      v36 = v7[2];
      v37 = (v7 + *(v28 + 28));
      v38 = *v37;
      v39 = v37[1];

      sub_213FDCA18(v38, v39);
      sub_2146D6A68(v7, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
      if (v39 >> 60 == 15)
      {
        v40 = 0;
      }

      else
      {
        v40 = v38;
      }

      if (v39 >> 60 == 15)
      {
        v41 = 0xC000000000000000;
      }

      else
      {
        v41 = v39;
      }

      v42 = v40;
    }

    else
    {
      sub_2146D6A68(v16, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v42 = 0;
      v41 = 0;
    }

    LODWORD(v64) = EnumCaseMultiPayload == 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146E9BF0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
    v44 = swift_allocObject();
    *(v44 + 16) = sub_214059900;
    *(v44 + 24) = 0;
    *(inited + 32) = v44;
    sub_21430D49C(v34, v35, v36, v42, v41);
    sub_214042B80(inited, &v66);
    v45 = v66;
    v46 = *(&v67 + 1);
    v55 = v67;
    v74 = v59;
    v75 = v60;
    LODWORD(v63) = v68;
    v76 = v68;
    *&v66 = 0xD00000000000002FLL;
    *(&v66 + 1) = 0x8000000214792080;
    *&v67 = 0xD00000000000001CLL;
    *(&v67 + 1) = 0x800000021478A360;
    v56 = v46;

    v47 = v65;
    v57 = v45;
    v48 = (v45)(&v74, &v76, &v66);
    if (v47)
    {
      v65 = v47;
    }

    else
    {
      if (v48)
      {
        v65 = 0;

        sub_21430D4FC(v34, v35, v36, v42, v41);
        sub_2146D6A68(v61, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
        sub_2146D6A68(v58, type metadata accessor for NearbyProtoJoinResponseContent);

        v49 = v62;
        *v62 = v57;
        v49[1] = *(&v45 + 1);
        v50 = v60;
        v49[2] = v59;
        v49[3] = v50;
        *(v49 + 32) = v63;
        *(v49 + 33) = v64;
        v49[5] = v34;
        v49[6] = v35;
        v49[7] = v36;
        v49[8] = v42;
        v49[9] = v41;
        return result;
      }

      sub_214031C4C();
      v51 = swift_allocError();
      *v52 = 0xD00000000000002FLL;
      v52[1] = 0x8000000214792080;
      v52[2] = 0xD00000000000001CLL;
      v52[3] = 0x800000021478A360;
      v65 = v51;
      swift_willThrow();
    }

    sub_21430D4FC(v34, v35, v36, v42, v41);
    sub_2146D6A68(v61, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    sub_2146D6A68(v58, type metadata accessor for NearbyProtoJoinResponseContent);
    v53 = v56;

    *&v66 = v57;
    *(&v66 + 1) = *(&v45 + 1);
    *&v67 = v55;
    *(&v67 + 1) = v53;
    LOBYTE(v68) = v63;
    BYTE1(v68) = v64;
    v69 = v34;
    v70 = v35;
    v71 = v36;
    v72 = v42;
    v73 = v41;
    return sub_21430D2C8(&v66);
  }

  return result;
}

uint64_t sub_2146CE1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *(&v289 + 1) = a2;
  *&v289 = a1;
  v278 = a3;
  v3 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v275 = &v246 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  v6 = *(*(v264 - 8) + 64);
  MEMORY[0x28223BE20](v264);
  v279 = (&v246 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912330, &qword_2147357B8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v257 = &v246 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v269 = &v246 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v265 = &v246 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v256 = &v246 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v268 = &v246 - v19;
  MEMORY[0x28223BE20](v18);
  v263 = &v246 - v20;
  v260 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  v21 = *(*(v260 - 8) + 64);
  MEMORY[0x28223BE20](v260);
  v280 = (&v246 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v285 = type metadata accessor for NearbyGroup_Member(0);
  v281 = *(v285 - 8);
  v23 = *(v281 + 64);
  v24 = MEMORY[0x28223BE20](v285);
  v255 = (&v246 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x28223BE20](v24);
  v267 = (&v246 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v262 = (&v246 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v254 = (&v246 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v266 = (&v246 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v261 = (&v246 - v35);
  MEMORY[0x28223BE20](v34);
  v258 = (&v246 - v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v274 = &v246 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v273 = &v246 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v272 = &v246 - v44;
  MEMORY[0x28223BE20](v43);
  v271 = &v246 - v45;
  v282 = sub_2146D8B88();
  v283 = *(v282 - 8);
  v46 = *(v283 + 64);
  v47 = MEMORY[0x28223BE20](v282);
  v259 = &v246 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v277 = &v246 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v276 = &v246 - v52;
  MEMORY[0x28223BE20](v51);
  v270 = &v246 - v53;
  v54 = type metadata accessor for NearbyGroup_Group.Initialization(0);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v57 = &v246 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58 - 8);
  v61 = &v246 - v60;
  v286 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v284 = *(v286 - 8);
  v62 = *(v284 + 8);
  v63 = MEMORY[0x28223BE20](v286);
  v65 = &v246 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v67 = &v246 - v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A498, &qword_2146F5E50);
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68 - 8);
  v288 = &v246 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A490, &qword_2146F5E48);
  v72 = *(*(v71 - 8) + 64);
  v73 = MEMORY[0x28223BE20](v71 - 8);
  v287 = &v246 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v76 = &v246 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A488, &qword_2146F5E40);
  v78 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77 - 8);
  v80 = &v246 - v79;
  v81 = sub_2146D8E18();
  v82 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81 - 8);
  v83 = type metadata accessor for NearbyGroup_Group(0);
  v84 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v86 = &v246 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = v289;
  *&v297 = 0;
  v295 = 0u;
  v296 = 0u;
  sub_21402D9F8(v289, *(&v289 + 1));
  sub_2146D8E08();
  sub_2146D6B54(&qword_27C9122B0, type metadata accessor for NearbyGroup_Group);
  v87 = v300;
  result = sub_2146D8FD8();
  if (!v87)
  {
    *&v289 = v57;
    *(&v289 + 1) = v67;
    v300 = 0;
    v89 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization(0);
    v90 = *(v89 - 8);
    v250 = *(v90 + 56);
    v249 = v90 + 56;
    v250(v80, 1, 1, v89);
    v91 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0);
    v92 = *(v91 - 8);
    v93 = *(v92 + 56);
    v94 = v92 + 56;
    v93(v76, 1, 1, v91);
    v252 = v93;
    v251 = v94;
    v93(v287, 1, 1, v91);
    v95 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft(0);
    v253 = *(*(v95 - 8) + 56);
    v253(v288, 1, 1, v95);
    sub_213FB2E54(v86, v61, &qword_27C9122F8, &qword_214735780);
    if ((*(v284 + 6))(v61, 1, v286) == 1)
    {
      sub_213FB2DF4(v61, &qword_27C9122F8, &qword_214735780);
      sub_21404A6EC();
      swift_allocError();
      *v96 = 0xD000000000000031;
      v96[1] = 0x80000002147A72A0;
      v96[2] = 0x5064696C61766E69;
      v96[3] = 0xEF6675626F746F72;
      v96[4] = 0xD000000000000012;
      v96[5] = 0x80000002147A7300;
      swift_willThrow();
      sub_213FB2DF4(v288, &qword_27C90A498, &qword_2146F5E50);
      sub_213FB2DF4(v287, &qword_27C90A490, &qword_2146F5E48);
      sub_213FB2DF4(v76, &qword_27C90A490, &qword_2146F5E48);
      sub_213FB2DF4(v80, &qword_27C90A488, &qword_2146F5E40);
      return sub_2146D6A68(v86, type metadata accessor for NearbyGroup_Group);
    }

    v246 = v91;
    v247 = v86;
    v248 = v76;
    v284 = v80;
    v97 = *(&v289 + 1);
    sub_2146D69E4(v61, *(&v289 + 1), type metadata accessor for NearbyGroup_Group.OneOf_Event);
    v98 = v65;
    sub_2146D6894(v97, v65, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v100 = v283;
    v101 = (v283 + 48);
    if (EnumCaseMultiPayload > 1)
    {
      v114 = v288;
      v115 = v282;
      if (EnumCaseMultiPayload != 2)
      {
        v130 = v275;
        sub_2146D69E4(v98, v275, type metadata accessor for NearbyGroup_Group.MemberLeft);
        v131 = *v130;
        v132 = *(v130 + 8);
        sub_21402D9F8(*v130, v132);
        v133 = v131;
        v134 = v274;
        sub_2146D05BC(v133, v132, v274);
        v135 = (*v101)(v134, 1, v115);
        v136 = v115;
        v137 = v248;
        if (v135 != 1)
        {
          sub_2146D6A68(v97, type metadata accessor for NearbyGroup_Group.OneOf_Event);
          v185 = v288;
          sub_213FB2DF4(v288, &qword_27C90A498, &qword_2146F5E50);
          sub_2146D6A68(v247, type metadata accessor for NearbyGroup_Group);
          v186 = v134;
          v187 = *(v100 + 32);
          v188 = v259;
          v187(v259, v186, v136);
          v187(v185, v188, v136);
          LOBYTE(v187) = *(v130 + 16);
          v189 = v130;
          v102 = v185;
          sub_2146D6A68(v189, type metadata accessor for NearbyGroup_Group.MemberLeft);
          *(v185 + *(v95 + 20)) = v187;
          v253(v185, 0, 1, v95);
          v190 = 3;
          v191 = v284;
          v192 = v278;
          v110 = v287;
LABEL_74:
          v245 = type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
          sub_21408AC04(v191, &v192[v245[5]], &qword_27C90A488, &qword_2146F5E40);
          sub_21408AC04(v137, &v192[v245[6]], &qword_27C90A490, &qword_2146F5E48);
          sub_21408AC04(v110, &v192[v245[7]], &qword_27C90A490, &qword_2146F5E48);
          result = sub_21408AC04(v102, &v192[v245[8]], &qword_27C90A498, &qword_2146F5E50);
          *v192 = v190;
          return result;
        }

        sub_213FB2DF4(v134, &unk_27C904F30, &unk_2146EFA20);
        sub_2146D6840();
        swift_allocError();
        *v138 = 2;
        swift_willThrow();
        sub_2146D6A68(v130, type metadata accessor for NearbyGroup_Group.MemberLeft);
        sub_2146D6A68(v97, type metadata accessor for NearbyGroup_Group.OneOf_Event);
        sub_213FB2DF4(v288, &qword_27C90A498, &qword_2146F5E50);
        sub_213FB2DF4(v287, &qword_27C90A490, &qword_2146F5E48);
        v129 = v137;
LABEL_16:
        sub_213FB2DF4(v129, &qword_27C90A490, &qword_2146F5E48);
        sub_213FB2DF4(v284, &qword_27C90A488, &qword_2146F5E40);
        v112 = type metadata accessor for NearbyGroup_Group;
        v113 = v247;
        return sub_2146D6A68(v113, v112);
      }

      v116 = v279;
      sub_2146D69E4(v98, v279, type metadata accessor for NearbyGroup_Group.MemberRemoved);
      v117 = *v116;
      v118 = v116[1];
      sub_21402D9F8(*v116, v118);
      v119 = v273;
      sub_2146D05BC(v117, v118, v273);
      if ((*v101)(v119, 1, v115) == 1)
      {
        sub_213FB2DF4(v119, &unk_27C904F30, &unk_2146EFA20);
        sub_2146D6840();
        swift_allocError();
        *v120 = 2;
        swift_willThrow();
        sub_2146D6A68(v116, type metadata accessor for NearbyGroup_Group.MemberRemoved);
        sub_2146D6A68(v97, type metadata accessor for NearbyGroup_Group.OneOf_Event);
        sub_213FB2DF4(v114, &qword_27C90A498, &qword_2146F5E50);
        v121 = v287;
LABEL_13:
        sub_213FB2DF4(v121, &qword_27C90A490, &qword_2146F5E48);
        v129 = v248;
        goto LABEL_16;
      }

      v161 = *(v100 + 32);
      v286 = v100 + 32;
      v280 = v161;
      (v161)(v277, v119, v115);
      v162 = *(v264 + 24);
      v163 = v265;
      sub_213FB2E54(v116 + v162, v265, &qword_27C912330, &qword_2147357B8);
      v164 = *(v281 + 48);
      v165 = v285;
      if (v164(v163, 1, v285) == 1)
      {
        v166 = v262;
        *v262 = 0;
        v166[1] = 0xE000000000000000;
        v167 = v166 + *(v165 + 20);
        sub_2146D8DE8();
        v168 = (v166 + *(v165 + 24));
        *v168 = 0;
        v168[1] = 0;
        v169 = v165;
        v170 = v166;
        v171 = v164(v163, 1, v169);
        v172 = v269;
        if (v171 != 1)
        {
          sub_213FB2DF4(v163, &qword_27C912330, &qword_2147357B8);
        }
      }

      else
      {
        v170 = v262;
        sub_2146D69E4(v163, v262, type metadata accessor for NearbyGroup_Member);
        v172 = v269;
      }

      v193 = v170[1];
      *&v289 = *v170;

      sub_2146D6A68(v170, type metadata accessor for NearbyGroup_Member);
      sub_213FB2E54(v116 + v162, v172, &qword_27C912330, &qword_2147357B8);
      v194 = v285;
      if (v164(v172, 1, v285) == 1)
      {
        v195 = v267;
        *v267 = 0;
        v195[1] = 0xE000000000000000;
        v196 = v195 + *(v194 + 20);
        sub_2146D8DE8();
        v197 = (v195 + *(v194 + 24));
        *v197 = 0;
        v197[1] = 0;
        if (v164(v172, 1, v194) != 1)
        {
          sub_213FB2DF4(v172, &qword_27C912330, &qword_2147357B8);
        }
      }

      else
      {
        v195 = v267;
        sub_2146D69E4(v172, v267, type metadata accessor for NearbyGroup_Member);
      }

      v203 = v285;
      v204 = (v195 + *(v285 + 24));
      v110 = v287;
      if (v204[1])
      {
        sub_2146D6A68(v195, type metadata accessor for NearbyGroup_Member);
        v205 = v279 + v162;
        v206 = v257;
        sub_213FB2E54(v205, v257, &qword_27C912330, &qword_2147357B8);
        if (v164(v206, 1, v203) == 1)
        {
          v207 = v255;
          *v255 = 0;
          v207[1] = 0xE000000000000000;
          v208 = v207 + *(v203 + 20);
          sub_2146D8DE8();
          v209 = (v207 + *(v203 + 24));
          *v209 = 0;
          v209[1] = 0;
          v210 = v164(v206, 1, v203);
          v211 = v246;
          v102 = v288;
          if (v210 != 1)
          {
            sub_213FB2DF4(v206, &qword_27C912330, &qword_2147357B8);
          }
        }

        else
        {
          v207 = v255;
          sub_2146D69E4(v206, v255, type metadata accessor for NearbyGroup_Member);
          v211 = v246;
          v102 = v288;
        }

        v226 = (v207 + *(v203 + 24));
        v227 = v207;
        v222 = *v226;
        v228 = v226[1];

        sub_2146D6A68(v227, type metadata accessor for NearbyGroup_Member);
        if (v228)
        {
          v223 = v228;
        }

        else
        {
          v222 = 0;
          v223 = 0xE000000000000000;
        }
      }

      else
      {
        v222 = *v204;
        sub_2146D6A68(v195, type metadata accessor for NearbyGroup_Member);
        v223 = 0;
        v211 = v246;
        v102 = v288;
      }

      v229 = v300;
      sub_214231E78(v289, v193, v222, v223, &v295);
      v300 = v229;
      v230 = v247;
      if (v229)
      {
        (*(v283 + 8))(v277, v115);
        v231 = type metadata accessor for NearbyGroup_Group.MemberRemoved;
        v232 = &v298[24];
LABEL_69:
        sub_2146D6A68(*(v232 - 32), v231);
        sub_2146D6A68(*(&v289 + 1), type metadata accessor for NearbyGroup_Group.OneOf_Event);
        sub_213FB2DF4(v102, &qword_27C90A498, &qword_2146F5E50);
        sub_213FB2DF4(v110, &qword_27C90A490, &qword_2146F5E48);
        sub_213FB2DF4(v248, &qword_27C90A490, &qword_2146F5E48);
        sub_213FB2DF4(v284, &qword_27C90A488, &qword_2146F5E40);
        return sub_2146D6A68(v230, type metadata accessor for NearbyGroup_Group);
      }

      sub_2146D6A68(v279, type metadata accessor for NearbyGroup_Group.MemberRemoved);
      sub_2146D6A68(*(&v289 + 1), type metadata accessor for NearbyGroup_Group.OneOf_Event);
      sub_213FB2DF4(v110, &qword_27C90A490, &qword_2146F5E48);
      sub_2146D6A68(v230, type metadata accessor for NearbyGroup_Group);
      v293 = v297;
      *v294 = *v298;
      *&v294[9] = *&v298[9];
      v291 = v295;
      v292 = v296;
      (v280)(v110, v277, v115);
      v233 = (v110 + *(v211 + 20));
      v234 = *v294;
      v233[2] = v293;
      v233[3] = v234;
      *(v233 + 57) = *&v294[9];
      v235 = v292;
      *v233 = v291;
      v233[1] = v235;
      v252(v110, 0, 1, v211);
      v190 = 2;
      v191 = v284;
      v137 = v248;
    }

    else
    {
      v102 = v288;
      v103 = v282;
      if (!EnumCaseMultiPayload)
      {
        v280 = v89;
        v104 = v289;
        sub_2146D69E4(v98, v289, type metadata accessor for NearbyGroup_Group.Initialization);
        v105 = *v104;
        v106 = v104[1];
        sub_21402D9F8(*v104, v106);
        v107 = v105;
        v108 = v271;
        sub_2146D05BC(v107, v106, v271);
        v109 = (*v101)(v108, 1, v103);
        v110 = v287;
        if (v109 == 1)
        {
          sub_213FB2DF4(v108, &unk_27C904F30, &unk_2146EFA20);
          sub_2146D6840();
          swift_allocError();
          *v111 = 2;
          swift_willThrow();
          sub_2146D6A68(v97, type metadata accessor for NearbyGroup_Group.OneOf_Event);
          sub_213FB2DF4(v102, &qword_27C90A498, &qword_2146F5E50);
          sub_213FB2DF4(v110, &qword_27C90A490, &qword_2146F5E48);
          sub_213FB2DF4(v248, &qword_27C90A490, &qword_2146F5E48);
          sub_213FB2DF4(v284, &qword_27C90A488, &qword_2146F5E40);
          sub_2146D6A68(v247, type metadata accessor for NearbyGroup_Group);
          v112 = type metadata accessor for NearbyGroup_Group.Initialization;
          v113 = v104;
          return sub_2146D6A68(v113, v112);
        }

        v139 = *(v283 + 32);
        v140 = v270;
        v279 = (v283 + 32);
        v277 = v139;
        (v139)(v270, v108, v103);
        v141 = v104[2];
        v142 = *(v141 + 16);
        if (v142)
        {
          v290 = MEMORY[0x277D84F90];
          result = sub_2140A02B4(0, v142, 0);
          v143 = v258;
          if (!*(v141 + 16))
          {
LABEL_76:
            __break(1u);
            return result;
          }

          v144 = 0;
          v145 = v290;
          v146 = v141 + ((*(v281 + 80) + 32) & ~*(v281 + 80));
          v286 = *(v281 + 72);
          v147 = v142 - 1;
          while (1)
          {
            sub_2146D6894(v146, v143, type metadata accessor for NearbyGroup_Member);
            v149 = *v143;
            v148 = v143[1];
            v150 = (v143 + *(v285 + 24));
            v151 = *v150;
            v152 = v150[1];

            v153 = v149;
            v154 = v300;
            sub_214231E78(v153, v148, v151, v152, &v295);
            v300 = v154;
            if (v154)
            {
              (*(v283 + 8))(v270, v282);
              sub_2146D6A68(*(&v289 + 1), type metadata accessor for NearbyGroup_Group.OneOf_Event);
              sub_213FB2DF4(v288, &qword_27C90A498, &qword_2146F5E50);
              sub_213FB2DF4(v287, &qword_27C90A490, &qword_2146F5E48);
              sub_213FB2DF4(v248, &qword_27C90A490, &qword_2146F5E48);
              sub_213FB2DF4(v284, &qword_27C90A488, &qword_2146F5E40);
              sub_2146D6A68(v247, type metadata accessor for NearbyGroup_Group);
              sub_2146D6A68(v143, type metadata accessor for NearbyGroup_Member);
              sub_2146D6A68(v289, type metadata accessor for NearbyGroup_Group.Initialization);
            }

            result = sub_2146D6A68(v143, type metadata accessor for NearbyGroup_Member);
            *&v294[9] = *&v298[9];
            v293 = v297;
            *v294 = *v298;
            v291 = v295;
            v292 = v296;
            v290 = v145;
            v156 = *(v145 + 16);
            v155 = *(v145 + 24);
            if (v156 >= v155 >> 1)
            {
              result = sub_2140A02B4((v155 > 1), v156 + 1, 1);
              v143 = v258;
              v145 = v290;
            }

            *(v145 + 16) = v156 + 1;
            v157 = (v145 + 80 * v156);
            v157[2] = v291;
            v158 = v292;
            v159 = v293;
            v160 = *v294;
            *(v157 + 89) = *&v294[9];
            v157[4] = v159;
            v157[5] = v160;
            v157[3] = v158;
            if (v147 == v144)
            {
              break;
            }

            v146 += v286;
            if (++v144 >= *(v141 + 16))
            {
              goto LABEL_76;
            }
          }

          sub_2146D6A68(*(&v289 + 1), type metadata accessor for NearbyGroup_Group.OneOf_Event);
          v191 = v284;
          sub_213FB2DF4(v284, &qword_27C90A488, &qword_2146F5E40);
          sub_2146D6A68(v247, type metadata accessor for NearbyGroup_Group);
          sub_2146D6A68(v289, type metadata accessor for NearbyGroup_Group.Initialization);
          v110 = v287;
          v103 = v282;
          v140 = v270;
        }

        else
        {
          sub_2146D6A68(v97, type metadata accessor for NearbyGroup_Group.OneOf_Event);
          v191 = v284;
          sub_213FB2DF4(v284, &qword_27C90A488, &qword_2146F5E40);
          sub_2146D6A68(v247, type metadata accessor for NearbyGroup_Group);
          sub_2146D6A68(v104, type metadata accessor for NearbyGroup_Group.Initialization);
          v145 = MEMORY[0x277D84F90];
        }

        (v277)(v191, v140, v103);
        *(v191 + *(v280 + 5)) = v145;
        (v250)(v191, 0, 1);
        v190 = 0;
        v137 = v248;
        v102 = v288;
        goto LABEL_73;
      }

      v122 = v280;
      sub_2146D69E4(v98, v280, type metadata accessor for NearbyGroup_Group.MemberAdded);
      v123 = *v122;
      v124 = v122[1];
      sub_21402D9F8(*v122, v124);
      v125 = v272;
      sub_2146D05BC(v123, v124, v272);
      v126 = (*v101)(v125, 1, v103);
      v127 = v287;
      if (v126 == 1)
      {
        sub_213FB2DF4(v125, &unk_27C904F30, &unk_2146EFA20);
        sub_2146D6840();
        swift_allocError();
        *v128 = 2;
        swift_willThrow();
        sub_2146D6A68(v122, type metadata accessor for NearbyGroup_Group.MemberAdded);
        sub_2146D6A68(v97, type metadata accessor for NearbyGroup_Group.OneOf_Event);
        sub_213FB2DF4(v102, &qword_27C90A498, &qword_2146F5E50);
        v121 = v127;
        goto LABEL_13;
      }

      v173 = *(v100 + 32);
      v286 = v100 + 32;
      v279 = v173;
      (v173)(v276, v125, v103);
      v174 = *(v260 + 24);
      v175 = v263;
      sub_213FB2E54(v122 + v174, v263, &qword_27C912330, &qword_2147357B8);
      v177 = v281 + 48;
      v176 = *(v281 + 48);
      v178 = v285;
      v179 = v176(v175, 1, v285);
      v281 = v177;
      if (v179 == 1)
      {
        v180 = v261;
        *v261 = 0;
        v180[1] = 0xE000000000000000;
        v181 = v180 + *(v178 + 20);
        sub_2146D8DE8();
        v182 = (v180 + *(v178 + 24));
        *v182 = 0;
        v182[1] = 0;
        v183 = v176(v175, 1, v178);
        v184 = v268;
        if (v183 != 1)
        {
          sub_213FB2DF4(v175, &qword_27C912330, &qword_2147357B8);
        }
      }

      else
      {
        v180 = v261;
        sub_2146D69E4(v175, v261, type metadata accessor for NearbyGroup_Member);
        v184 = v268;
      }

      v198 = v180[1];
      *&v289 = *v180;

      sub_2146D6A68(v180, type metadata accessor for NearbyGroup_Member);
      sub_213FB2E54(v280 + v174, v184, &qword_27C912330, &qword_2147357B8);
      v199 = v285;
      if (v176(v184, 1, v285) == 1)
      {
        v200 = v266;
        *v266 = 0;
        v200[1] = 0xE000000000000000;
        v201 = v200 + *(v199 + 20);
        sub_2146D8DE8();
        v202 = (v200 + *(v199 + 24));
        *v202 = 0;
        v202[1] = 0;
        if (v176(v184, 1, v199) != 1)
        {
          sub_213FB2DF4(v184, &qword_27C912330, &qword_2147357B8);
        }
      }

      else
      {
        v200 = v266;
        sub_2146D69E4(v184, v266, type metadata accessor for NearbyGroup_Member);
      }

      v212 = v285;
      v213 = (v200 + *(v285 + 24));
      if (v213[1])
      {
        sub_2146D6A68(v200, type metadata accessor for NearbyGroup_Member);
        v214 = v280 + v174;
        v215 = v256;
        sub_213FB2E54(v214, v256, &qword_27C912330, &qword_2147357B8);
        if (v176(v215, 1, v212) == 1)
        {
          v216 = v254;
          *v254 = 0;
          v216[1] = 0xE000000000000000;
          v217 = v216 + *(v212 + 20);
          sub_2146D8DE8();
          v218 = (v216 + *(v212 + 24));
          *v218 = 0;
          v218[1] = 0;
          v219 = v176(v215, 1, v212);
          v220 = v216;
          v110 = v287;
          v221 = v246;
          if (v219 != 1)
          {
            sub_213FB2DF4(v215, &qword_27C912330, &qword_2147357B8);
          }
        }

        else
        {
          v220 = v254;
          sub_2146D69E4(v215, v254, type metadata accessor for NearbyGroup_Member);
          v110 = v287;
          v221 = v246;
        }

        v236 = (v220 + *(v212 + 24));
        v237 = v220;
        v224 = *v236;
        v238 = v236[1];

        sub_2146D6A68(v237, type metadata accessor for NearbyGroup_Member);
        if (v238)
        {
          v225 = v238;
        }

        else
        {
          v224 = 0;
          v225 = 0xE000000000000000;
        }
      }

      else
      {
        v224 = *v213;
        sub_2146D6A68(v200, type metadata accessor for NearbyGroup_Member);
        v225 = 0;
        v110 = v287;
        v221 = v246;
      }

      v239 = v300;
      sub_214231E78(v289, v198, v224, v225, &v295);
      v300 = v239;
      v230 = v247;
      v240 = v276;
      if (v239)
      {
        (*(v283 + 8))(v276, v103);
        v231 = type metadata accessor for NearbyGroup_Group.MemberAdded;
        v232 = &v299;
        goto LABEL_69;
      }

      sub_2146D6A68(v280, type metadata accessor for NearbyGroup_Group.MemberAdded);
      sub_2146D6A68(*(&v289 + 1), type metadata accessor for NearbyGroup_Group.OneOf_Event);
      v241 = v103;
      v137 = v248;
      sub_213FB2DF4(v248, &qword_27C90A490, &qword_2146F5E48);
      sub_2146D6A68(v230, type metadata accessor for NearbyGroup_Group);
      v293 = v297;
      *v294 = *v298;
      *&v294[9] = *&v298[9];
      v291 = v295;
      v292 = v296;
      (v279)(v137, v240, v241);
      v242 = (v137 + *(v221 + 20));
      v243 = *v294;
      v242[2] = v293;
      v242[3] = v243;
      *(v242 + 57) = *&v294[9];
      v244 = v292;
      *v242 = v291;
      v242[1] = v244;
      v190 = 1;
      v252(v137, 0, 1, v221);
      v191 = v284;
    }

LABEL_73:
    v192 = v278;
    goto LABEL_74;
  }

  return result;
}

uint64_t sub_2146D05BC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v5)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v5 != 2)
    {
      if (v5 != 1)
      {
        v11 = a1;
        goto LABEL_23;
      }

      v10 = a1;
      if (a1 > a1 >> 32)
      {
        goto LABEL_29;
      }

      v11 = a1;
      v12 = sub_2146D8728();
      if (!v12)
      {
        goto LABEL_34;
      }

      v13 = v12;
      v14 = sub_2146D8758();
      if (__OFSUB__(v10, v14))
      {
        goto LABEL_31;
      }

      v15 = (v10 - v14 + v13);
      a1 = sub_2146D8748();
      if (v15)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_28;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v11 = a1;
    v17 = *(a1 + 16);
    v18 = sub_2146D8728();
    if (!v18)
    {
      goto LABEL_32;
    }

    v19 = v18;
    v20 = sub_2146D8758();
    if (!__OFSUB__(v17, v20))
    {
      v15 = (v17 - v20 + v19);
      sub_2146D8748();
      if (!v15)
      {
        goto LABEL_33;
      }

LABEL_21:
      v21 = *v15;
      v22 = v15[1];
      v23 = v15[2];
      v24 = v15[3];
      v25 = v15[4];
      v26 = v15[5];
      v27 = v15[6];
      v28 = v15[7];
      v29 = v15[8];
      v30 = v15[9];
      v31 = v15[10];
      v32 = v15[11];
      v33 = v15[12];
      v34 = v15[13];
      v35 = v15[14];
      v36 = v15[15];
LABEL_23:
      sub_2146D8B58();
      v16 = 0;
      a1 = v11;
      goto LABEL_24;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    sub_2146D8748();
LABEL_33:
    __break(1u);
LABEL_34:
    result = sub_2146D8748();
    __break(1u);
    return result;
  }

  if (v5 != 2)
  {
    goto LABEL_17;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = __OFSUB__(v6, v7);
  v9 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v9 == 16)
  {
    goto LABEL_8;
  }

LABEL_17:
  v16 = 1;
LABEL_24:
  sub_213FB54FC(a1, a2);
  v37 = sub_2146D8B88();
  v38 = *(*(v37 - 8) + 56);

  return v38(a3, v16, 1, v37);
}

uint64_t sub_2146D080C()
{
  v1 = type metadata accessor for NearbyProtoConnectionRequest(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 120);
  v28 = *(v0 + 104);
  v29 = v5;
  v30[0] = *(v0 + 136);
  *(v30 + 9) = *(v0 + 145);
  v6 = *(v0 + 56);
  v24 = *(v0 + 40);
  v25 = v6;
  v7 = *(v0 + 88);
  v26 = *(v0 + 72);
  v27 = v7;
  v8 = *(v0 + 24);
  v22 = *(v0 + 8);
  v23 = v8;
  v9 = *(v0 + 120);
  v37 = *(v0 + 104);
  v38 = v9;
  v39[0] = *(v0 + 136);
  *(v39 + 9) = *(v0 + 145);
  v10 = *(v0 + 56);
  v33 = *(v0 + 40);
  v34 = v10;
  v11 = *(v0 + 88);
  v35 = *(v0 + 72);
  v36 = v11;
  v12 = *(v0 + 24);
  v31 = *(v0 + 8);
  v32 = v12;
  enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 = get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(&v31);
  if (enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 == 1)
  {
    v14 = 0x80000002147A7320;
    sub_21404A6EC();
    swift_allocError();
    *v15 = 0xD000000000000031;
    v15[1] = 0x80000002147A72A0;
    v15[2] = 0xD00000000000001ALL;
    v15[3] = 0x80000002147A7320;
    v15[4] = 0xD000000000000017;
    v15[5] = 0x80000002147A72E0;
    swift_willThrow();
  }

  else
  {
    v20[6] = v37;
    v20[7] = v38;
    v21[0] = v39[0];
    *(v21 + 9) = *(v39 + 9);
    v20[2] = v33;
    v20[3] = v34;
    v20[4] = v35;
    v20[5] = v36;
    v20[0] = v31;
    v20[1] = v32;
    MEMORY[0x28223BE20](enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0);
    *&v17[-16] = v20;
    v18[6] = v28;
    v18[7] = v29;
    v19[0] = v30[0];
    *(v19 + 9) = *(v30 + 9);
    v18[2] = v24;
    v18[3] = v25;
    v18[4] = v26;
    v18[5] = v27;
    v18[0] = v22;
    v18[1] = v23;
    sub_21430CDB4(v18, v17);
    sub_2146D6B54(&qword_27C914F18, type metadata accessor for NearbyProtoConnectionRequest);
    sub_2146D9018();
    v14 = sub_2146D8FC8();
    sub_2146D6A68(v4, type metadata accessor for NearbyProtoConnectionRequest);
    sub_213FB2DF4(&v22, &qword_27C908088, &unk_21476EEA0);
  }

  return v14;
}

uint64_t sub_2146D0B24()
{
  v2 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + 168);
  v8 = *(v0 + 216);
  v30[2] = *(v0 + 200);
  v30[3] = v8;
  v9 = *(v0 + 248);
  v30[4] = *(v0 + 232);
  v30[5] = v9;
  v10 = *(v0 + 184);
  v30[0] = v7;
  v30[1] = v10;
  if (v7)
  {
    v11 = *(v0 + 224);
    v26 = *(v0 + 208);
    v27 = v11;
    v28 = *(v0 + 240);
    v12 = *(v0 + 192);
    v24 = *(v0 + 176);
    v13 = *(v0 + 256);
    v23 = v7;
    v29 = v13;
    v25 = v12;
    MEMORY[0x28223BE20](v4);
    *&v21[-16] = v14;
    v15 = *(v0 + 216);
    v22[2] = *(v0 + 200);
    v22[3] = v15;
    v16 = *(v0 + 248);
    v22[4] = *(v0 + 232);
    v22[5] = v16;
    v17 = *(v0 + 184);
    v22[0] = *(v0 + 168);
    v22[1] = v17;
    sub_21430CFE8(v22, v21);
    sub_2146D6B54(&qword_27C914F30, type metadata accessor for NearbyProtoConnectionResponseContent);
    v18 = v2;
    sub_2146D9018();
    if (!v1)
    {
      v18 = sub_2146D8FC8();
      sub_2146D6A68(v6, type metadata accessor for NearbyProtoConnectionResponseContent);
    }

    sub_213FB2DF4(v30, &qword_27C9080A0, &unk_2146F4F10);
  }

  else
  {
    v18 = 0x80000002147A72A0;
    sub_21404A6EC();
    swift_allocError();
    *v19 = 0xD000000000000031;
    v19[1] = 0x80000002147A72A0;
    v19[2] = 0xD00000000000001BLL;
    v19[3] = 0x80000002147A7340;
    v19[4] = 0xD000000000000017;
    v19[5] = 0x80000002147A72E0;
    swift_willThrow();
  }

  return v18;
}

uint64_t sub_2146D0DE4()
{
  v1 = type metadata accessor for NearbyProtoJoinRequestContent(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 344);
  v32[4] = *(v0 + 328);
  v32[5] = v6;
  v32[6] = *(v0 + 360);
  v33 = *(v0 + 376);
  v7 = *(v0 + 280);
  v32[0] = *(v0 + 264);
  v32[1] = v7;
  v8 = *(v0 + 312);
  v32[2] = *(v0 + 296);
  v32[3] = v8;
  if (*&v32[0])
  {
    v25 = *&v32[0];
    v9 = *(v0 + 352);
    v30 = *(v0 + 336);
    v31[0] = v9;
    v10 = *(v0 + 288);
    v26 = *(v0 + 272);
    v27 = v10;
    v11 = *(v0 + 320);
    v28 = *(v0 + 304);
    v29 = v11;
    *(v31 + 10) = *(v0 + 362);
    MEMORY[0x28223BE20](v3);
    v13 = *(v12 + 64);
    v14 = *(v12 + 96);
    v23[5] = *(v12 + 80);
    v23[6] = v14;
    v15 = *(v12 + 16);
    v23[0] = *v12;
    v16 = *(v12 + 32);
    v17 = *(v12 + 48);
    v23[1] = v15;
    v23[2] = v16;
    *(&v21 - 2) = &v25;
    v24 = *(v12 + 112);
    v23[3] = v17;
    v23[4] = v13;
    sub_21430D26C(v23, &v22);
    sub_2146D6B54(&qword_27C914F78, type metadata accessor for NearbyProtoJoinRequestContent);
    sub_2146D9018();
    v18 = sub_2146D8FC8();
    sub_2146D6A68(v5, type metadata accessor for NearbyProtoJoinRequestContent);
    sub_213FB2DF4(v32, &qword_27C9080B8, &unk_21476EEB0);
  }

  else
  {
    v18 = 0x80000002147A7390;
    sub_21404A6EC();
    swift_allocError();
    *v19 = 0xD000000000000031;
    v19[1] = 0x80000002147A72A0;
    v19[2] = 0xD000000000000014;
    v19[3] = 0x80000002147A7390;
    v19[4] = 0xD000000000000017;
    v19[5] = 0x80000002147A72E0;
    swift_willThrow();
  }

  return v18;
}

uint64_t sub_2146D107C()
{
  v2 = type metadata accessor for NearbyProtoJoinResponseContent(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + 400);
  v26[0] = *(v0 + 384);
  v26[1] = v7;
  v8 = *(v0 + 432);
  v26[2] = *(v0 + 416);
  v26[3] = v8;
  v26[4] = *(v0 + 448);
  if (*&v26[0])
  {
    v9 = *(v0 + 456);
    v20 = *&v26[0];
    v25 = v9;
    v10 = *(v0 + 392);
    v22 = *(v0 + 408);
    v11 = *(v0 + 440);
    v23 = *(v0 + 424);
    v24 = v11;
    v21 = v10;
    MEMORY[0x28223BE20](v4);
    *&v18[-16] = v12;
    v13 = *(v0 + 432);
    v19[2] = *(v0 + 416);
    v19[3] = v13;
    v19[4] = *(v0 + 448);
    v14 = *(v0 + 400);
    v19[0] = *(v0 + 384);
    v19[1] = v14;
    sub_21430D55C(v19, v18);
    sub_2146D6B54(&qword_27C914F90, type metadata accessor for NearbyProtoJoinResponseContent);
    v15 = v2;
    sub_2146D9018();
    if (!v1)
    {
      v15 = sub_2146D8FC8();
      sub_2146D6A68(v6, type metadata accessor for NearbyProtoJoinResponseContent);
    }

    sub_213FB2DF4(v26, &qword_27C9080D0, &qword_2146F4F20);
  }

  else
  {
    v15 = 0x80000002147A72A0;
    sub_21404A6EC();
    swift_allocError();
    *v16 = 0xD000000000000031;
    v16[1] = 0x80000002147A72A0;
    v16[2] = 0xD000000000000015;
    v16[3] = 0x80000002147A73B0;
    v16[4] = 0xD000000000000017;
    v16[5] = 0x80000002147A72E0;
    swift_willThrow();
  }

  return v15;
}

uint64_t sub_2146D1320()
{
  v1 = v0;
  v2 = type metadata accessor for NearbyGroup_Group(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908068, &qword_21476EEC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C902F48 != -1)
  {
    swift_once();
  }

  v15 = sub_2146D9208();
  __swift_project_value_buffer(v15, qword_27C9046F8);
  v16 = sub_2146D91E8();
  v17 = sub_2146D9B88();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = v10;
    v19 = v5;
    v20 = v1;
    v21 = v18;
    *v18 = 0;
    _os_log_impl(&dword_213FAF000, v16, v17, "IDSNearbySessionMessage.encodeGroupMessage", v18, 2u);
    v22 = v21;
    v1 = v20;
    v5 = v19;
    v10 = v29;
    MEMORY[0x216056AC0](v22, -1, -1);
  }

  v23 = type metadata accessor for IDSNearbySessionMessage(0);
  sub_213FB2E54(v1 + *(v23 + 36), v9, &qword_27C908068, &qword_21476EEC0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_213FB2DF4(v9, &qword_27C908068, &qword_21476EEC0);
    v24 = 0x80000002147A73D0;
    sub_21404A6EC();
    swift_allocError();
    *v25 = 0xD000000000000031;
    v25[1] = 0x80000002147A72A0;
    v25[2] = 0xD000000000000015;
    v25[3] = 0x80000002147A73D0;
    v25[4] = 0xD000000000000017;
    v25[5] = 0x80000002147A72E0;
    swift_willThrow();
  }

  else
  {
    v26 = sub_2146D69E4(v9, v14, type metadata accessor for IDSNearbySessionMessage.GroupMessage);
    MEMORY[0x28223BE20](v26);
    *(&v28 - 2) = v14;
    sub_2146D6B54(&qword_27C9122B0, type metadata accessor for NearbyGroup_Group);
    sub_2146D9018();
    v24 = sub_2146D8FC8();
    sub_2146D6A68(v5, type metadata accessor for NearbyGroup_Group);
    sub_2146D6A68(v14, type metadata accessor for IDSNearbySessionMessage.GroupMessage);
  }

  return v24;
}

uint64_t sub_2146D1750(void *a1, void *a2)
{
  v3 = a2[3];
  if (!v3)
  {
    goto LABEL_10;
  }

  v5 = a1[1];
  *a1 = a2[2];
  a1[1] = v3;

  v6 = a2[8];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = a1[3];
  a1[2] = a2[7];
  a1[3] = v6;

  v9 = a2[13];
  if (v9)
  {
    if (v9 == 1)
    {
LABEL_10:
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v10 = a2[12];
    v11 = (a1 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));
    v12 = v11[1];

    *v11 = v10;
    v11[1] = v9;
  }

  v13 = a2[18];
  if (v13 >> 60 == 11)
  {
    goto LABEL_10;
  }

  if (v13 >> 60 != 15)
  {
    v14 = a2[17];
    v15 = (a1 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32));
    v16 = *v15;
    v17 = v15[1];
    sub_213FDCA18(v14, v13);
    result = sub_213FDC6BC(v16, v17);
    *v15 = v14;
    v15[1] = v13;
  }

  return result;
}

uint64_t sub_2146D1898(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 24);
  if (v12 && (v13 = *(a1 + 1), *a1 = *(a2 + 16), *(a1 + 1) = v12, , , (v14 = *(a2 + 64)) != 0))
  {
    v15 = *(a1 + 3);
    *(a1 + 2) = *(a2 + 56);
    *(a1 + 3) = v14;

    if (*(a2 + 73))
    {
      v17 = *(a2 + 88);
      if (v17 >> 60 == 15)
      {
        sub_21404A6EC();
        swift_allocError();
        *v18 = 0xD000000000000031;
        v18[1] = 0x80000002147A72A0;
        v18[2] = 0xD00000000000002FLL;
        v18[3] = 0x80000002147A7360;
        v18[4] = 0xD000000000000017;
        v18[5] = 0x80000002147A72E0;
        return swift_willThrow();
      }

      else
      {
        v22 = *(a2 + 80);
        MEMORY[0x28223BE20](v16);
        sub_21402D9F8(v22, v17);
        sub_2146D6B54(&qword_27C914F48, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
        sub_2146D9018();
        sub_213FDC6BC(v22, v17);
        v23 = *(type metadata accessor for NearbyProtoConnectionResponseContent(0) + 24);
        sub_213FB2DF4(&a1[v23], &qword_27C914EC0, qword_214758530);
        sub_2146D69E4(v11, &a1[v23], type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
        v24 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
        swift_storeEnumTagMultiPayload();
        return (*(*(v24 - 8) + 56))(&a1[v23], 0, 1, v24);
      }
    }

    else
    {
      sub_2146D8DE8();
      v20 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v20 - 8) + 56))(v7, 0, 1, v20);
      v21 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
      return sub_21402EDB8(v7, &a1[*(v21 + 24)], &qword_27C914EC0, qword_214758530);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146D1C58(void *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (!v3)
  {
    goto LABEL_11;
  }

  v5 = a1[1];
  *a1 = *(a2 + 16);
  a1[1] = v3;

  v7 = *(a2 + 64);
  if (v7)
  {
    if (v7 == 1)
    {
LABEL_11:
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v8 = *(a2 + 56);
    v9 = (a1 + *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 24));
    v10 = v9[1];

    *v9 = v8;
    v9[1] = v7;
  }

  v11 = *(a2 + 104);
  if (v11 >> 60 == 11)
  {
    goto LABEL_11;
  }

  if (v11 >> 60 != 15)
  {
    v12 = *(a2 + 96);
    v13 = (a1 + *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 28));
    v14 = *v13;
    v15 = v13[1];
    sub_213FDCA18(v12, v11);
    result = sub_213FDC6BC(v14, v15);
    *v13 = v12;
    v13[1] = v11;
  }

  v16 = *(a2 + 113);
  if (v16 != 2)
  {
    result = type metadata accessor for NearbyProtoJoinRequestContent(0);
    *(a1 + *(result + 32)) = v16;
  }

  return result;
}

uint64_t sub_2146D1DA4(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v28 - v8;
  v10 = type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 24);
  if (v14)
  {
    v15 = *(a1 + 1);
    *a1 = *(a2 + 16);
    *(a1 + 1) = v14;

    if (*(a2 + 33))
    {
      v17 = *(a2 + 48);
      if (v17)
      {
        v28[7] = v28;
        v28[0] = v3;
        v19 = *(a2 + 64);
        v18 = *(a2 + 72);
        v20 = *(a2 + 56);
        v21 = *(a2 + 40);
        v28[1] = v21;
        v28[2] = v17;
        v28[3] = v20;
        v28[4] = v19;
        v28[5] = v18;
        MEMORY[0x28223BE20](v16);

        sub_213FDCA18(v19, v18);
        sub_2146D6B54(&qword_27C914FA8, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
        sub_2146D9018();
        sub_21430D4FC(v21, v17, v20, v19, v18);
        v22 = *(type metadata accessor for NearbyProtoJoinResponseContent(0) + 20);
        sub_213FB2DF4(&a1[v22], &qword_27C914EC8, &unk_214784480);
        sub_2146D69E4(v13, &a1[v22], type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
        v23 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
        swift_storeEnumTagMultiPayload();
        return (*(*(v23 - 8) + 56))(&a1[v22], 0, 1, v23);
      }

      else
      {
        sub_21404A6EC();
        swift_allocError();
        *v27 = 0xD000000000000031;
        v27[1] = 0x80000002147A72A0;
        v27[2] = 0xD00000000000002FLL;
        v27[3] = 0x80000002147A7360;
        v27[4] = 0xD000000000000017;
        v27[5] = 0x80000002147A72E0;
        return swift_willThrow();
      }
    }

    else
    {
      sub_2146D8DE8();
      v25 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v25 - 8) + 56))(v9, 0, 1, v25);
      v26 = type metadata accessor for NearbyProtoJoinResponseContent(0);
      return sub_21402EDB8(v9, &a1[*(v26 + 20)], &qword_27C914EC8, &unk_214784480);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146D2188(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = a1[1];

  *a1 = v5;
  a1[1] = v4;
  v7 = a2[2];
  v8 = a1[2];

  a1[2] = v7;
  v10 = a2[4];
  if (v10 >> 60 != 15)
  {
    v11 = a2[3];
    v12 = (a1 + *(type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0) + 28));
    v13 = *v12;
    v14 = v12[1];
    sub_21402D9F8(v11, v10);
    result = sub_213FDC6BC(v13, v14);
    *v12 = v11;
    v12[1] = v10;
  }

  return result;
}

uint64_t sub_2146D2240(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  if (*a2 > 1u)
  {
    if (*a2 == 2)
    {
      v9 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
      MEMORY[0x28223BE20](v9);
      v14[-2] = a2;
      sub_2146D6B54(&qword_27C912250, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    }

    else
    {
      v11 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
      MEMORY[0x28223BE20](v11);
      v14[-2] = a2;
      sub_2146D6B54(&qword_27C912230, type metadata accessor for NearbyGroup_Group.MemberLeft);
    }
  }

  else if (*a2)
  {
    v10 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
    MEMORY[0x28223BE20](v10);
    v14[-2] = a2;
    sub_2146D6B54(&qword_27C912270, type metadata accessor for NearbyGroup_Group.MemberAdded);
  }

  else
  {
    v8 = type metadata accessor for NearbyGroup_Group.Initialization(0);
    MEMORY[0x28223BE20](v8);
    v14[-2] = a2;
    sub_2146D6B54(&qword_27C912290, type metadata accessor for NearbyGroup_Group.Initialization);
  }

  sub_2146D9018();
  v12 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  return sub_21402EDB8(v7, a1, &qword_27C9122F8, &qword_214735780);
}

uint64_t sub_2146D25E8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v44 = a2;
  v51 = *MEMORY[0x277D85DE8];
  v46 = type metadata accessor for NearbyGroup_Member(0);
  v45 = *(v46 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v46);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A488, &qword_2146F5E40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v42 - v10;
  v12 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
  sub_213FB2E54(v44 + *(v17 + 20), v11, &qword_27C90A488, &qword_2146F5E40);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    __break(1u);
  }

  sub_2146D69E4(v11, v16, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
  *&v49[0] = sub_2146D8B68();
  WORD4(v49[0]) = v18;
  BYTE10(v49[0]) = v19;
  BYTE11(v49[0]) = v20;
  BYTE12(v49[0]) = v21;
  BYTE13(v49[0]) = v22;
  BYTE14(v49[0]) = v23;
  HIBYTE(v49[0]) = v24;
  v25 = sub_2144668E8(v49, 16);
  v27 = v26;
  sub_213FB54FC(*a1, a1[1]);
  *a1 = v25;
  a1[1] = v27;
  v28 = *&v16[*(v12 + 20)];
  v29 = *(v28 + 16);
  if (v29)
  {
    v43 = v16;
    v44 = a1;
    v47 = MEMORY[0x277D84F90];
    v30 = sub_2140A02D4(0, v29, 0);
    v31 = v47;
    v32 = (v28 + 32);
    do
    {
      v49[0] = *v32;
      v33 = v32[1];
      v34 = v32[2];
      v35 = v32[3];
      *(v50 + 9) = *(v32 + 57);
      v50[0] = v35;
      v49[1] = v33;
      v49[2] = v34;
      MEMORY[0x28223BE20](v30);
      *(&v42 - 2) = v49;
      sub_21430DEC4(v49, v48);
      sub_2146D6B54(&qword_27C9122D0, type metadata accessor for NearbyGroup_Member);
      v36 = v3;
      sub_2146D9018();
      sub_21430DF20(v49);
      v47 = v31;
      v38 = *(v31 + 16);
      v37 = *(v31 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_2140A02D4(v37 > 1, v38 + 1, 1);
        v31 = v47;
      }

      *(v31 + 16) = v38 + 1;
      v30 = sub_2146D69E4(v7, v31 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v38, type metadata accessor for NearbyGroup_Member);
      v32 += 5;
      --v29;
      v3 = v36;
    }

    while (v29);
    sub_2146D6A68(v43, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
    a1 = v44;
  }

  else
  {
    sub_2146D6A68(v16, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
    v31 = MEMORY[0x277D84F90];
  }

  v39 = a1[2];

  a1[2] = v31;
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t UUID.data.getter()
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = sub_2146D8B68();
  v11 = v0;
  v12 = v1;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  result = sub_2144668E8(&v10, 16);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2146D2BA8(void *a1, void *a2)
{
  v3 = a2[3];
  if (!v3)
  {
    goto LABEL_6;
  }

  v5 = a1[1];
  *a1 = a2[2];
  a1[1] = v3;

  v7 = a2[8];
  if (!v7)
  {
    return result;
  }

  if (v7 == 1)
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v8 = a2[7];
  v9 = (a1 + *(type metadata accessor for NearbyGroup_Member(0) + 24));
  v10 = v9[1];

  *v9 = v8;
  v9[1] = v7;
  return result;
}

uint64_t sub_2146D2C7C(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for NearbyGroup_Member(0);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A490, &qword_2146F5E48);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
  sub_213FB2E54(a2 + *(v16 + 24), v10, &qword_27C90A490, &qword_2146F5E48);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    __break(1u);
  }

  sub_2146D69E4(v10, v15, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
  v36 = sub_2146D8B68();
  v37 = v17;
  v38 = v18;
  v39 = v19;
  v40 = v20;
  v41 = v21;
  v42 = v22;
  v43 = v23;
  v44 = v24;
  v25 = sub_2144668E8(&v36, 16);
  v27 = v26;
  v28 = sub_213FB54FC(*a1, *(a1 + 8));
  *a1 = v25;
  *(a1 + 8) = v27;
  MEMORY[0x28223BE20](v28);
  *(&v33 - 2) = v15;
  sub_2146D6B54(&qword_27C9122D0, type metadata accessor for NearbyGroup_Member);
  v29 = v34;
  sub_2146D9018();
  v30 = *(type metadata accessor for NearbyGroup_Group.MemberAdded(0) + 24);
  sub_213FB2DF4(a1 + v30, &qword_27C912330, &qword_2147357B8);
  sub_2146D69E4(v29, a1 + v30, type metadata accessor for NearbyGroup_Member);
  (*(v35 + 56))(a1 + v30, 0, 1, v4);
  result = sub_2146D6A68(v15, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2146D3064(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for NearbyGroup_Member(0);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A490, &qword_2146F5E48);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
  sub_213FB2E54(a2 + *(v16 + 28), v10, &qword_27C90A490, &qword_2146F5E48);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    __break(1u);
  }

  sub_2146D69E4(v10, v15, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
  v36 = sub_2146D8B68();
  v37 = v17;
  v38 = v18;
  v39 = v19;
  v40 = v20;
  v41 = v21;
  v42 = v22;
  v43 = v23;
  v44 = v24;
  v25 = sub_2144668E8(&v36, 16);
  v27 = v26;
  v28 = sub_213FB54FC(*a1, *(a1 + 8));
  *a1 = v25;
  *(a1 + 8) = v27;
  MEMORY[0x28223BE20](v28);
  *(&v33 - 2) = v15;
  sub_2146D6B54(&qword_27C9122D0, type metadata accessor for NearbyGroup_Member);
  v29 = v34;
  sub_2146D9018();
  v30 = *(type metadata accessor for NearbyGroup_Group.MemberRemoved(0) + 24);
  sub_213FB2DF4(a1 + v30, &qword_27C912330, &qword_2147357B8);
  sub_2146D69E4(v29, a1 + v30, type metadata accessor for NearbyGroup_Member);
  (*(v35 + 56))(a1 + v30, 0, 1, v4);
  result = sub_2146D6A68(v15, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2146D344C(void *a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0) + 20));
  v4 = v3[3];
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = v3[7];
  v5 = v3[8];
  v7 = a1[1];
  *a1 = v3[2];
  a1[1] = v4;

  if (!v5)
  {
    return result;
  }

  if (v5 == 1)
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v9 = (a1 + *(type metadata accessor for NearbyGroup_Member(0) + 24));
  v10 = v9[1];

  *v9 = v6;
  v9[1] = v5;
  return result;
}

uint64_t sub_2146D352C(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A498, &qword_2146F5E50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
  sub_213FB2E54(a2 + *(v13 + 32), v7, &qword_27C90A498, &qword_2146F5E50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    __break(1u);
  }

  sub_2146D69E4(v7, v12, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft);
  v29 = sub_2146D8B68();
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v22 = sub_2144668E8(&v29, 16);
  v24 = v23;
  sub_213FB54FC(*a1, *(a1 + 8));
  *a1 = v22;
  *(a1 + 8) = v24;
  v25 = v12[*(v8 + 20)];
  result = sub_2146D6A68(v12, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft);
  *(a1 + 16) = v25;
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2146D3804(uint64_t a1, uint64_t a2)
{
  if ((sub_2146D8B48() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_2143D6790(v5, v6);
}

uint64_t sub_2146D3864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_2146D8B48() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_2143D6790(v7, v8);
}

uint64_t sub_2146D38CC(uint64_t a1, uint64_t a2)
{
  if (sub_2146D8B48())
  {
    v4 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0);
    v5 = (a1 + *(v4 + 20));
    v6 = v5[1];
    v7 = v5[3];
    v26 = v5[2];
    v27[0] = v7;
    *(v27 + 9) = *(v5 + 57);
    v8 = v5[1];
    v25[0] = *v5;
    v25[1] = v8;
    v9 = v5[3];
    v23 = v26;
    v24[0] = v9;
    *(v24 + 9) = *(v5 + 57);
    v21 = v25[0];
    v22 = v6;
    v10 = (a2 + *(v4 + 20));
    *(v30 + 9) = *(v10 + 57);
    v11 = v10[1];
    v12 = v10[3];
    v29 = v10[2];
    v30[0] = v12;
    v13 = v10[1];
    v28[0] = *v10;
    v28[1] = v13;
    v14 = v10[3];
    v19 = v29;
    v20[0] = v14;
    *(v20 + 9) = *(v10 + 57);
    v17 = v28[0];
    v18 = v11;
    v15 = sub_2146D3BA0(&v21, &v17);
    v31[2] = v19;
    v32[0] = v20[0];
    *(v32 + 9) = *(v20 + 9);
    v31[0] = v17;
    v31[1] = v18;
    sub_21430DEC4(v25, v33);
    sub_21430DEC4(v28, v33);
    sub_21430DF20(v31);
    v33[2] = v23;
    v34[0] = v24[0];
    *(v34 + 9) = *(v24 + 9);
    v33[0] = v21;
    v33[1] = v22;
    sub_21430DF20(v33);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_2146D3A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_2146D8B48())
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6 + 16);
    v8 = *(a1 + v6 + 48);
    v30 = *(a1 + v6 + 32);
    v31[0] = v8;
    *(v31 + 9) = *(a1 + v6 + 57);
    v9 = *(a1 + v6 + 16);
    v29[0] = *(a1 + v6);
    v29[1] = v9;
    v10 = *(a1 + v6 + 48);
    v27 = v30;
    v28[0] = v10;
    *(v28 + 9) = *(a1 + v6 + 57);
    v25 = v29[0];
    v26 = v7;
    v11 = (a2 + v6);
    v12 = *v11;
    v13 = v11[1];
    *(v33 + 9) = *(v11 + 57);
    v14 = v11[3];
    v32[2] = v11[2];
    v33[0] = v14;
    v15 = v11[1];
    v16 = v11[2];
    v17 = *v11;
    v32[0] = v12;
    v32[1] = v15;
    v18 = v11[3];
    v23 = v16;
    v24[0] = v18;
    *(v24 + 9) = *(v11 + 57);
    v21 = v17;
    v22 = v13;
    v19 = sub_2146D3BA0(&v25, &v21);
    v34[2] = v23;
    v35[0] = v24[0];
    *(v35 + 9) = *(v24 + 9);
    v34[0] = v21;
    v34[1] = v22;
    sub_21430DEC4(v29, v36);
    sub_21430DEC4(v32, v36);
    sub_21430DF20(v34);
    v36[2] = v27;
    v37[0] = v28[0];
    *(v37 + 9) = *(v28 + 9);
    v36[0] = v25;
    v36[1] = v26;
    sub_21430DF20(v36);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_2146D3B48(uint64_t a1, uint64_t a2)
{
  if (sub_2146D8B48())
  {
    v4 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft(0);
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_2146D3BA0(void *a1, void *a2)
{
  v3 = a1[3];
  if (!v3)
  {
    goto LABEL_21;
  }

  v4 = a2[3];
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = a1[7];
  v6 = a1[8];
  v7 = a2[7];
  v8 = a2[8];
  v9 = a1[2] == a2[2] && v3 == v4;
  if (!v9 && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

  if (v6 == 1 || v8 == 1)
  {
LABEL_21:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  if (!v6)
  {
    if (!v8)
    {
      sub_213FDC9D0(v7, 0);
      sub_213FDC9D0(v5, 0);
      return 1;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  if (v5 == v7 && v6 == v8)
  {
    return 1;
  }

  return sub_2146DA6A8();
}

uint64_t sub_2146D3CF8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft(0);
  v110 = *(v4 - 8);
  v111 = v4;
  v5 = *(v110 + 64);
  MEMORY[0x28223BE20](v4);
  v106 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A498, &qword_2146F5E50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v107 = &v102 - v9;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C918130, &unk_214784430);
  v10 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v12 = &v102 - v11;
  v120 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0);
  v118 = *(v120 - 8);
  v13 = *(v118 + 64);
  v14 = MEMORY[0x28223BE20](v120);
  v108 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v113 = &v102 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A490, &qword_2146F5E48);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v112 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v115 = &v102 - v21;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C918138, &unk_214784440);
  v22 = *(*(v119 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v119);
  v114 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v117 = &v102 - v25;
  v26 = type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v116 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A488, &qword_2146F5E40);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v121 = &v102 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C918140, &qword_214784450);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v102 - v35;
  if (*a1 != *a2)
  {
    goto LABEL_19;
  }

  v37 = a2;
  v103 = v12;
  v38 = type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
  v104 = a1;
  v105 = v38;
  v39 = *(v38 + 20);
  v40 = *(v33 + 48);
  sub_213FB2E54(&a1[v39], v36, &qword_27C90A488, &qword_2146F5E40);
  sub_213FB2E54(&v37[v39], &v36[v40], &qword_27C90A488, &qword_2146F5E40);
  v41 = *(v27 + 48);
  v42 = v37;
  if (v41(v36, 1, v26) == 1)
  {
    if (v41(&v36[v40], 1, v26) == 1)
    {
      sub_213FB2DF4(v36, &qword_27C90A488, &qword_2146F5E40);
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  v64 = v121;
  sub_213FB2E54(v36, v121, &qword_27C90A488, &qword_2146F5E40);
  if (v41(&v36[v40], 1, v26) == 1)
  {
    sub_2146D6A68(v64, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
LABEL_16:
    v65 = &qword_27C918140;
    v66 = &qword_214784450;
LABEL_17:
    v67 = v36;
LABEL_18:
    sub_213FB2DF4(v67, v65, v66);
LABEL_19:
    v63 = 0;
    return v63 & 1;
  }

  v69 = v116;
  sub_2146D69E4(&v36[v40], v116, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
  if ((sub_2146D8B48() & 1) == 0)
  {
    sub_2146D6A68(v69, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
    sub_2146D6A68(v64, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
    v65 = &qword_27C90A488;
    v66 = &qword_2146F5E40;
    goto LABEL_17;
  }

  v70 = sub_2143D6790(*(v64 + *(v26 + 20)), *(v69 + *(v26 + 20)));
  sub_2146D6A68(v69, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
  sub_2146D6A68(v64, type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization);
  sub_213FB2DF4(v36, &qword_27C90A488, &qword_2146F5E40);
  if ((v70 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_5:
  v43 = v42;
  v44 = v104;
  v45 = v105[6];
  v46 = *(v119 + 48);
  v47 = v117;
  sub_213FB2E54(&v104[v45], v117, &qword_27C90A490, &qword_2146F5E48);
  v48 = v43 + v45;
  v49 = v43;
  sub_213FB2E54(v48, v47 + v46, &qword_27C90A490, &qword_2146F5E48);
  v50 = *(v118 + 48);
  v51 = v120;
  if (v50(v47, 1, v120) == 1)
  {
    if (v50(v47 + v46, 1, v51) == 1)
    {
      sub_213FB2DF4(v47, &qword_27C90A490, &qword_2146F5E48);
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  v121 = v43;
  v71 = v115;
  sub_213FB2E54(v47, v115, &qword_27C90A490, &qword_2146F5E48);
  if (v50(v47 + v46, 1, v51) == 1)
  {
    sub_2146D6A68(v71, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
LABEL_26:
    v65 = &qword_27C918138;
    v66 = &unk_214784440;
    v67 = v47;
    goto LABEL_18;
  }

  v72 = v47 + v46;
  v73 = v113;
  sub_2146D69E4(v72, v113, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
  if ((sub_2146D8B48() & 1) == 0)
  {
    sub_2146D6A68(v73, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
    sub_2146D6A68(v71, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
    v65 = &qword_27C90A490;
    v66 = &qword_2146F5E48;
    v67 = v47;
    goto LABEL_18;
  }

  v74 = (v71 + *(v51 + 20));
  v75 = v74[1];
  v76 = v74[3];
  v132 = v74[2];
  v133[0] = v76;
  *(v133 + 9) = *(v74 + 57);
  v77 = v74[1];
  v130 = *v74;
  v131 = v77;
  v78 = v74[3];
  v128 = v132;
  v129[0] = v78;
  *(v129 + 9) = *(v74 + 57);
  v126 = v130;
  v127 = v75;
  v79 = (v73 + *(v51 + 20));
  *(v137 + 9) = *(v79 + 57);
  v80 = v79[1];
  v81 = v79[3];
  v136 = v79[2];
  v137[0] = v81;
  v82 = v79[1];
  v134 = *v79;
  v135 = v82;
  v83 = v79[3];
  v124 = v136;
  v125[0] = v83;
  *(v125 + 9) = *(v79 + 57);
  v122 = v134;
  v123 = v80;
  v84 = sub_2146D3BA0(&v126, &v122);
  sub_21430DEC4(&v130, &v142);
  sub_21430DEC4(&v134, &v142);
  sub_2146D6A68(v73, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
  v140 = v124;
  v141[0] = v125[0];
  *(v141 + 9) = *(v125 + 9);
  v138 = v122;
  v139 = v123;
  sub_21430DF20(&v138);
  v144 = v128;
  v145[0] = v129[0];
  *(v145 + 9) = *(v129 + 9);
  v142 = v126;
  v143 = v127;
  sub_21430DF20(&v142);
  sub_2146D6A68(v71, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
  sub_213FB2DF4(v47, &qword_27C90A490, &qword_2146F5E48);
  v49 = v121;
  if ((v84 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  v52 = v105[7];
  v53 = v49;
  v54 = v44;
  v55 = *(v119 + 48);
  v56 = v114;
  sub_213FB2E54(&v54[v52], v114, &qword_27C90A490, &qword_2146F5E48);
  sub_213FB2E54(v53 + v52, v56 + v55, &qword_27C90A490, &qword_2146F5E48);
  v57 = v120;
  if (v50(v56, 1, v120) == 1)
  {
    if (v50(v56 + v55, 1, v57) == 1)
    {
      sub_213FB2DF4(v56, &qword_27C90A490, &qword_2146F5E48);
      goto LABEL_11;
    }

    goto LABEL_33;
  }

  v85 = v112;
  sub_213FB2E54(v56, v112, &qword_27C90A490, &qword_2146F5E48);
  if (v50(v56 + v55, 1, v57) == 1)
  {
    sub_2146D6A68(v85, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
LABEL_33:
    v65 = &qword_27C918138;
    v66 = &unk_214784440;
    v67 = v56;
    goto LABEL_18;
  }

  v86 = v56 + v55;
  v87 = v108;
  sub_2146D69E4(v86, v108, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
  if ((sub_2146D8B48() & 1) == 0)
  {
    sub_2146D6A68(v87, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
    sub_2146D6A68(v85, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
    v65 = &qword_27C90A490;
    v66 = &qword_2146F5E48;
    v67 = v56;
    goto LABEL_18;
  }

  v88 = (v85 + *(v57 + 20));
  v89 = v88[1];
  v90 = v88[3];
  v132 = v88[2];
  v133[0] = v90;
  *(v133 + 9) = *(v88 + 57);
  v91 = v88[1];
  v130 = *v88;
  v131 = v91;
  v92 = v88[3];
  v128 = v132;
  v129[0] = v92;
  *(v129 + 9) = *(v88 + 57);
  v126 = v130;
  v127 = v89;
  v93 = (v87 + *(v57 + 20));
  *(v137 + 9) = *(v93 + 57);
  v94 = v93[1];
  v95 = v93[3];
  v136 = v93[2];
  v137[0] = v95;
  v96 = v93[1];
  v134 = *v93;
  v135 = v96;
  v97 = v93[3];
  v124 = v136;
  v125[0] = v97;
  *(v125 + 9) = *(v93 + 57);
  v122 = v134;
  v123 = v94;
  v98 = sub_2146D3BA0(&v126, &v122);
  sub_21430DEC4(&v130, &v142);
  sub_21430DEC4(&v134, &v142);
  sub_2146D6A68(v87, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
  v140 = v124;
  v141[0] = v125[0];
  *(v141 + 9) = *(v125 + 9);
  v138 = v122;
  v139 = v123;
  sub_21430DF20(&v138);
  v144 = v128;
  v145[0] = v129[0];
  *(v145 + 9) = *(v129 + 9);
  v142 = v126;
  v143 = v127;
  sub_21430DF20(&v142);
  sub_2146D6A68(v85, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved);
  sub_213FB2DF4(v56, &qword_27C90A490, &qword_2146F5E48);
  if ((v98 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v58 = v105[8];
  v59 = *(v109 + 48);
  v60 = v103;
  sub_213FB2E54(&v104[v58], v103, &qword_27C90A498, &qword_2146F5E50);
  sub_213FB2E54(v43 + v58, v60 + v59, &qword_27C90A498, &qword_2146F5E50);
  v61 = v111;
  v62 = *(v110 + 48);
  if (v62(v60, 1, v111) == 1)
  {
    if (v62(v60 + v59, 1, v61) == 1)
    {
      sub_213FB2DF4(v60, &qword_27C90A498, &qword_2146F5E50);
      v63 = 1;
      return v63 & 1;
    }

    goto LABEL_40;
  }

  v99 = v107;
  sub_213FB2E54(v60, v107, &qword_27C90A498, &qword_2146F5E50);
  if (v62(v60 + v59, 1, v61) == 1)
  {
    sub_2146D6A68(v99, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft);
LABEL_40:
    v65 = &qword_27C918130;
    v66 = &unk_214784430;
    v67 = v60;
    goto LABEL_18;
  }

  v100 = v60 + v59;
  v101 = v106;
  sub_2146D69E4(v100, v106, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft);
  if (sub_2146D8B48())
  {
    v63 = *(v99 + *(v61 + 20)) ^ *(v101 + *(v61 + 20)) ^ 1;
  }

  else
  {
    v63 = 0;
  }

  sub_2146D6A68(v101, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft);
  sub_2146D6A68(v99, type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft);
  sub_213FB2DF4(v103, &qword_27C90A498, &qword_2146F5E50);
  return v63 & 1;
}

uint64_t sub_2146D4AB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      v5 = *(a1 + 56);
      v6 = *(a1 + 64);
      v8 = *(a1 + 96);
      v7 = *(a1 + 104);
      v9 = *(a1 + 113);
      v10 = *(a2 + 56);
      v11 = *(a2 + 64);
      v13 = *(a2 + 96);
      v12 = *(a2 + 104);
      v14 = *(a2 + 113);
      if ((*(a1 + 16) != *(a2 + 16) || v3 != v4) && (sub_2146DA6A8() & 1) == 0)
      {
        goto LABEL_23;
      }

      if (v6 != 1 && v11 != 1)
      {
        if (v6)
        {
          if (!v11 || (v5 != v10 || v6 != v11) && (sub_2146DA6A8() & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_23;
          }

          sub_213FDC9D0(v10, 0);
          sub_213FDC9D0(v5, 0);
        }

        if (v7 >> 60 != 11 && v12 >> 60 != 11)
        {
          if (v7 >> 60 == 15)
          {
            if (v12 >> 60 == 15)
            {
              sub_21404F7E0(v8, v7);
              sub_21404F7E0(v13, v12);
              sub_213FDC6BC(v8, v7);
LABEL_26:
              v15 = v9 == 2;
              if (v14 != 2)
              {
                v15 = 0;
              }

              if (v9 != 2 && v14 != 2)
              {
                v15 = v14 ^ v9 ^ 1;
              }

              return v15 & 1;
            }

            goto LABEL_22;
          }

          if (v12 >> 60 == 15)
          {
LABEL_22:
            sub_21404F7E0(v8, v7);
            sub_21404F7E0(v13, v12);
            sub_213FDC6BC(v8, v7);
            sub_213FDC6BC(v13, v12);
            goto LABEL_23;
          }

          sub_21404F7E0(v8, v7);
          sub_21404F7E0(v13, v12);
          sub_21404F7E0(v8, v7);
          sub_21404F7E0(v13, v12);
          v17 = sub_214466780(v8, v7, v13, v12);
          sub_213FDC6BC(v13, v12);
          sub_214032564(v13, v12);
          sub_214032564(v8, v7);
          sub_213FDC6BC(v8, v7);
          if (v17)
          {
            goto LABEL_26;
          }

LABEL_23:
          v15 = 0;
          return v15 & 1;
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2146D4D4C(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_2146DA6A8() & 1) == 0 || (sub_2143D53BC(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v3 >> 60 == 15)
  {
    if (v7 >> 60 == 15)
    {
      sub_213FDCA18(v4, v3);
      sub_213FDCA18(v5, v7);
      sub_213FDC6BC(v4, v3);
      return 1;
    }

    goto LABEL_12;
  }

  if (v7 >> 60 == 15)
  {
LABEL_12:
    sub_213FDCA18(v4, v3);
    sub_213FDCA18(v5, v7);
    sub_213FDC6BC(v4, v3);
    sub_213FDC6BC(v5, v7);
    return 0;
  }

  sub_213FDCA18(v4, v3);
  sub_213FDCA18(v5, v7);
  sub_213FDCA18(v4, v3);
  sub_213FDCA18(v5, v7);
  v10 = sub_214466780(v4, v3, v5, v7);
  sub_213FDC6BC(v5, v7);
  sub_213FDC6BC(v5, v7);
  sub_213FDC6BC(v4, v3);
  sub_213FDC6BC(v4, v3);
  return v10 & 1;
}

uint64_t sub_2146D4ECC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      v5 = *(a1 + 33);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v34 = *(a1 + 64);
      v35 = *(a1 + 72);
      v9 = *(a2 + 33);
      v10 = *(a2 + 40);
      v33 = *(a2 + 48);
      v12 = *(a2 + 56);
      v11 = *(a2 + 64);
      v13 = *(a2 + 72);
      if (*(a1 + 16) == *(a2 + 16) && v3 == v4)
      {
        if (v5 != v9)
        {
          v14 = 0;
          return v14 & 1;
        }
      }

      else
      {
        v15 = *(a2 + 40);
        v16 = *(a2 + 56);
        v17 = *(a1 + 48);
        v18 = *(a2 + 64);
        v19 = *(a1 + 56);
        v14 = 0;
        if ((sub_2146DA6A8() & 1) == 0)
        {
          return v14 & 1;
        }

        v8 = v19;
        v11 = v18;
        v7 = v17;
        v12 = v16;
        v10 = v15;
        if ((v5 ^ v9))
        {
          return v14 & 1;
        }
      }

      v20 = v6;
      if (v7)
      {
        v39[0] = v6;
        v39[1] = v7;
        v22 = v34;
        v21 = v35;
        v39[2] = v8;
        v40 = v34;
        v41 = v35;
        v23 = v13;
        v24 = v33;
        if (v33)
        {
          v36[0] = v10;
          v36[1] = v33;
          v36[2] = v12;
          v37 = v11;
          v38 = v23;
          v25 = v8;
          sub_21430D49C(v20, v7, v8, v34, v35);
          sub_21430D49C(v10, v33, v12, v11, v23);
          sub_21430D49C(v20, v7, v25, v34, v35);
          v14 = sub_2146D4D4C(v39, v36);
          v26 = v37;
          v27 = v38;

          sub_213FDC6BC(v26, v27);
          v28 = v40;
          v29 = v41;

          sub_213FDC6BC(v28, v29);
          sub_21430D4FC(v20, v7, v25, v34, v35);
          return v14 & 1;
        }

        v31 = v8;
        sub_21430D49C(v20, v7, v8, v34, v35);
        sub_21430D49C(v10, 0, v12, v11, v23);
        sub_21430D49C(v20, v7, v31, v34, v35);

        sub_213FDC6BC(v34, v35);
      }

      else
      {
        v30 = v6;
        v22 = v34;
        v21 = v35;
        v31 = v8;
        sub_21430D49C(v30, 0, v8, v34, v35);
        v23 = v13;
        v24 = v33;
        if (!v33)
        {
          sub_21430D49C(v10, 0, v12, v11, v23);
          sub_21430D4FC(v20, 0, v31, v34, v35);
          v14 = 1;
          return v14 & 1;
        }

        sub_21430D49C(v10, v33, v12, v11, v23);
      }

      sub_21430D4FC(v20, v7, v31, v22, v21);
      sub_21430D4FC(v10, v24, v12, v11, v23);
      v14 = 0;
      return v14 & 1;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2146D5228(void *a1, void *a2)
{
  v3 = a1[3];
  if (!v3)
  {
    goto LABEL_30;
  }

  v4 = a2[3];
  if (!v4)
  {
    goto LABEL_30;
  }

  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[18];
  v10 = a2[7];
  v11 = a2[8];
  v12 = a2[12];
  v13 = a2[13];
  v14 = a2[18];
  v17 = a2[17];
  v18 = a1[17];
  if ((a1[2] != a2[2] || v3 != v4) && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

  if (!v6 || !v11)
  {
    goto LABEL_30;
  }

  if ((v5 != v10 || v6 != v11) && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

  if (v8 == 1 || v13 == 1)
  {
    goto LABEL_30;
  }

  if (v8)
  {
    if (!v13 || (v7 != v12 || v8 != v13) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v13)
    {
      return 0;
    }

    sub_213FDC9D0(v12, 0);
    sub_213FDC9D0(v7, 0);
  }

  if (v9 >> 60 == 11 || v14 >> 60 == 11)
  {
LABEL_30:
    while (1)
    {
      sub_2146DA018();
      __break(1u);
    }
  }

  if (v9 >> 60 == 15)
  {
    if (v14 >> 60 == 15)
    {
      sub_21404F7E0(v18, v9);
      sub_21404F7E0(v17, v14);
      sub_213FDC6BC(v18, v9);
      return 1;
    }

    goto LABEL_28;
  }

  if (v14 >> 60 == 15)
  {
LABEL_28:
    sub_21404F7E0(v18, v9);
    sub_21404F7E0(v17, v14);
    sub_213FDC6BC(v18, v9);
    sub_213FDC6BC(v17, v14);
    return 0;
  }

  sub_21404F7E0(v18, v9);
  sub_21404F7E0(v17, v14);
  sub_21404F7E0(v18, v9);
  sub_21404F7E0(v17, v14);
  v16 = sub_214466780(v18, v9, v17, v14);
  sub_213FDC6BC(v17, v14);
  sub_214032564(v17, v14);
  sub_214032564(v18, v9);
  sub_213FDC6BC(v18, v9);
  return v16 & 1;
}

uint64_t sub_2146D54EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    goto LABEL_22;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    goto LABEL_22;
  }

  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 73);
  v9 = *(a1 + 80);
  v8 = *(a1 + 88);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v12 = *(a2 + 73);
  v14 = *(a2 + 80);
  v13 = *(a2 + 88);
  if ((*(a1 + 16) != *(a2 + 16) || v3 != v4) && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

  if (!v6 || !v11)
  {
LABEL_22:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  if (v5 == v10 && v6 == v11)
  {
    if (v7 != v12)
    {
      return 0;
    }
  }

  else
  {
    v16 = sub_2146DA6A8();
    result = 0;
    if (v16 & 1) == 0 || ((v7 ^ v12))
    {
      return result;
    }
  }

  sub_213FDCA18(v9, v8);
  sub_213FDCA18(v14, v13);
  if (v8 >> 60 == 15)
  {
    if (v13 >> 60 == 15)
    {
      sub_213FDC6BC(v9, v8);
      return 1;
    }

    goto LABEL_19;
  }

  sub_213FDCA18(v9, v8);
  if (v13 >> 60 == 15)
  {
    sub_213FB54FC(v9, v8);
LABEL_19:
    sub_213FDC6BC(v9, v8);
    sub_213FDC6BC(v14, v13);
    return 0;
  }

  sub_213FDCA18(v14, v13);
  sub_213FDCA18(v9, v8);
  v17 = sub_214466780(v9, v8, v14, v13);
  sub_213FDC6BC(v14, v13);
  sub_213FDC6BC(v9, v8);
  sub_213FDC6BC(v14, v13);
  sub_213FB54FC(v9, v8);
  sub_213FDC6BC(v9, v8);
  return v17 & 1;
}

uint64_t sub_2146D5734(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_37;
  }

  v4 = *(a1 + 120);
  v186[6] = *(a1 + 104);
  v186[7] = v4;
  v187[0] = *(a1 + 136);
  *(v187 + 9) = *(a1 + 145);
  v5 = *(a1 + 56);
  v186[2] = *(a1 + 40);
  v186[3] = v5;
  v6 = *(a1 + 88);
  v186[4] = *(a1 + 72);
  v186[5] = v6;
  v7 = *(a1 + 24);
  v186[0] = *(a1 + 8);
  v186[1] = v7;
  v8 = *(a2 + 120);
  v188[6] = *(a2 + 104);
  v188[7] = v8;
  v189[0] = *(a2 + 136);
  *(v189 + 9) = *(a2 + 145);
  v9 = *(a2 + 56);
  v188[2] = *(a2 + 40);
  v188[3] = v9;
  v10 = *(a2 + 88);
  v188[4] = *(a2 + 72);
  v188[5] = v10;
  v11 = *(a2 + 24);
  v188[0] = *(a2 + 8);
  v188[1] = v11;
  v12 = *(a1 + 120);
  __src[6] = *(a1 + 104);
  __src[7] = v12;
  v13 = *(a2 + 8);
  __src[8] = *(a1 + 136);
  *(&__src[8] + 9) = *(a1 + 145);
  v14 = *(a1 + 56);
  __src[2] = *(a1 + 40);
  __src[3] = v14;
  v15 = *(a1 + 88);
  __src[4] = *(a1 + 72);
  __src[5] = v15;
  v16 = *(a1 + 24);
  __src[0] = *(a1 + 8);
  __src[1] = v16;
  *(&__src[18] + 9) = *(a2 + 145);
  v17 = *(a2 + 104);
  v18 = *(a2 + 136);
  __src[17] = *(a2 + 120);
  __src[18] = v18;
  v19 = *(a2 + 72);
  __src[13] = *(a2 + 56);
  __src[14] = v19;
  v20 = *(a2 + 88);
  __src[16] = v17;
  __src[15] = v20;
  v21 = *(a2 + 40);
  __src[10] = v13;
  v22 = *(a2 + 24);
  __src[12] = v21;
  __src[11] = v22;
  v23 = *(a1 + 120);
  v190[6] = *(a1 + 104);
  v190[7] = v23;
  v191[0] = *(a1 + 136);
  *(v191 + 9) = *(a1 + 145);
  v24 = *(a1 + 56);
  v190[2] = *(a1 + 40);
  v190[3] = v24;
  v25 = *(a1 + 88);
  v190[4] = *(a1 + 72);
  v190[5] = v25;
  v26 = *(a1 + 24);
  v190[0] = *(a1 + 8);
  v190[1] = v26;
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v190) == 1)
  {
    v27 = *(a2 + 120);
    __dst[6] = *(a2 + 104);
    __dst[7] = v27;
    __dst[8] = *(a2 + 136);
    *(&__dst[8] + 9) = *(a2 + 145);
    v28 = *(a2 + 40);
    __dst[3] = *(a2 + 56);
    v29 = *(a2 + 88);
    __dst[4] = *(a2 + 72);
    __dst[5] = v29;
    v30 = *(a2 + 24);
    __dst[0] = *(a2 + 8);
    __dst[1] = v30;
    __dst[2] = v28;
    if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(__dst) == 1)
    {
      v31 = *(a1 + 120);
      v182 = *(a1 + 104);
      v183 = v31;
      v184[0] = *(a1 + 136);
      *(v184 + 9) = *(a1 + 145);
      v32 = *(a1 + 56);
      *&v181[32] = *(a1 + 40);
      *&v181[48] = v32;
      v33 = *(a1 + 88);
      *&v181[64] = *(a1 + 72);
      *&v181[80] = v33;
      v34 = *(a1 + 24);
      *v181 = *(a1 + 8);
      *&v181[16] = v34;
      sub_213FB2E54(v186, &v171, &qword_27C908088, &unk_21476EEA0);
      sub_213FB2E54(v188, &v171, &qword_27C908088, &unk_21476EEA0);
      sub_213FB2DF4(v181, &qword_27C908088, &unk_21476EEA0);
      goto LABEL_10;
    }

    sub_213FB2E54(v186, v181, &qword_27C908088, &unk_21476EEA0);
    sub_213FB2E54(v188, v181, &qword_27C908088, &unk_21476EEA0);
LABEL_8:
    memcpy(__dst, __src, 0x139uLL);
    v51 = &unk_27C918148;
    v52 = &unk_214784458;
    v53 = __dst;
LABEL_36:
    sub_213FB2DF4(v53, v51, v52);
    goto LABEL_37;
  }

  v35 = *(a1 + 120);
  v182 = *(a1 + 104);
  v183 = v35;
  v184[0] = *(a1 + 136);
  *(v184 + 9) = *(a1 + 145);
  v36 = *(a1 + 56);
  *&v181[32] = *(a1 + 40);
  *&v181[48] = v36;
  v37 = *(a1 + 88);
  *&v181[64] = *(a1 + 72);
  *&v181[80] = v37;
  v38 = *(a1 + 24);
  *v181 = *(a1 + 8);
  *&v181[16] = v38;
  v39 = *(a1 + 120);
  v177 = *(a1 + 104);
  v178 = v39;
  v179[0] = *(a1 + 136);
  *(v179 + 9) = *(a1 + 145);
  v40 = *(a1 + 56);
  v173 = *(a1 + 40);
  v174 = v40;
  v41 = *(a1 + 88);
  v175 = *(a1 + 72);
  v176 = v41;
  v42 = *(a1 + 24);
  v171 = *(a1 + 8);
  v172 = v42;
  v43 = *(a2 + 120);
  __dst[6] = *(a2 + 104);
  __dst[7] = v43;
  __dst[8] = *(a2 + 136);
  *(&__dst[8] + 9) = *(a2 + 145);
  v44 = *(a2 + 40);
  __dst[3] = *(a2 + 56);
  v45 = *(a2 + 88);
  __dst[4] = *(a2 + 72);
  __dst[5] = v45;
  v46 = *(a2 + 24);
  __dst[0] = *(a2 + 8);
  __dst[1] = v46;
  __dst[2] = v44;
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(__dst) == 1)
  {
    v47 = *(a1 + 120);
    *&v165[96] = *(a1 + 104);
    *&v165[112] = v47;
    v166[0] = *(a1 + 136);
    *(v166 + 9) = *(a1 + 145);
    v48 = *(a1 + 56);
    *&v165[32] = *(a1 + 40);
    *&v165[48] = v48;
    v49 = *(a1 + 88);
    *&v165[64] = *(a1 + 72);
    *&v165[80] = v49;
    v50 = *(a1 + 24);
    *v165 = *(a1 + 8);
    *&v165[16] = v50;
    sub_213FB2E54(v186, &v156, &qword_27C908088, &unk_21476EEA0);
    sub_213FB2E54(v188, &v156, &qword_27C908088, &unk_21476EEA0);
    sub_213FB2E54(v181, &v156, &qword_27C908088, &unk_21476EEA0);
    sub_21430CD0C(v165);
    goto LABEL_8;
  }

  v54 = *(a2 + 120);
  *&v165[96] = *(a2 + 104);
  *&v165[112] = v54;
  v166[0] = *(a2 + 136);
  *(v166 + 9) = *(a2 + 145);
  v55 = *(a2 + 56);
  *&v165[32] = *(a2 + 40);
  *&v165[48] = v55;
  v56 = *(a2 + 88);
  *&v165[64] = *(a2 + 72);
  *&v165[80] = v56;
  v57 = *(a2 + 24);
  *v165 = *(a2 + 8);
  *&v165[16] = v57;
  sub_213FB2E54(v186, &v156, &qword_27C908088, &unk_21476EEA0);
  sub_213FB2E54(v188, &v156, &qword_27C908088, &unk_21476EEA0);
  sub_213FB2E54(v181, &v156, &qword_27C908088, &unk_21476EEA0);
  v58 = sub_2146D5228(&v171, v165);
  v153 = *&v165[96];
  v154 = *&v165[112];
  v155[0] = v166[0];
  *(v155 + 9) = *(v166 + 9);
  *&v151[32] = *&v165[32];
  *&v151[48] = *&v165[48];
  *&v151[64] = *&v165[64];
  v152 = *&v165[80];
  *v151 = *v165;
  *&v151[16] = *&v165[16];
  sub_21430CD0C(v151);
  v162 = v177;
  v163 = v178;
  v164[0] = v179[0];
  *(v164 + 9) = *(v179 + 9);
  v158 = v173;
  v159 = v174;
  v160 = v175;
  v161 = v176;
  v156 = v171;
  v157 = v172;
  sub_21430CD0C(&v156);
  v59 = *(a1 + 120);
  *&v165[96] = *(a1 + 104);
  *&v165[112] = v59;
  v166[0] = *(a1 + 136);
  *(v166 + 9) = *(a1 + 145);
  v60 = *(a1 + 56);
  *&v165[32] = *(a1 + 40);
  *&v165[48] = v60;
  v61 = *(a1 + 88);
  *&v165[64] = *(a1 + 72);
  *&v165[80] = v61;
  v62 = *(a1 + 24);
  *v165 = *(a1 + 8);
  *&v165[16] = v62;
  sub_213FB2DF4(v165, &qword_27C908088, &unk_21476EEA0);
  if ((v58 & 1) == 0)
  {
LABEL_37:
    v138 = 0;
    return v138 & 1;
  }

LABEL_10:
  v63 = *(a1 + 216);
  v169[2] = *(a1 + 200);
  v169[3] = v63;
  v64 = *(a1 + 248);
  v169[4] = *(a1 + 232);
  v169[5] = v64;
  v65 = *(a1 + 184);
  v169[0] = *(a1 + 168);
  v169[1] = v65;
  v66 = *(a2 + 216);
  v170[2] = *(a2 + 200);
  v170[3] = v66;
  v67 = *(a2 + 248);
  v170[4] = *(a2 + 232);
  v170[5] = v67;
  v68 = *(a2 + 184);
  v170[0] = *(a2 + 168);
  v170[1] = v68;
  v69 = *&v169[0];
  v70 = *&v170[0];
  if (!*&v169[0])
  {
    if (!*&v170[0])
    {
      v89 = *(a1 + 14);
      *(&__src[2] + 8) = *(a1 + 13);
      *(&__src[3] + 8) = v89;
      *(&__src[4] + 8) = *(a1 + 15);
      v90 = *(a1 + 32);
      *&__src[0] = 0;
      *(&__src[5] + 1) = v90;
      v91 = *(a1 + 12);
      *(__src + 8) = *(a1 + 11);
      *(&__src[1] + 8) = v91;
      sub_213FB2E54(v169, __dst, &qword_27C9080A0, &unk_2146F4F10);
      sub_213FB2E54(v170, __dst, &qword_27C9080A0, &unk_2146F4F10);
      sub_213FB2DF4(__src, &qword_27C9080A0, &unk_2146F4F10);
      goto LABEL_19;
    }

    sub_213FB2E54(v169, __src, &qword_27C9080A0, &unk_2146F4F10);
    sub_213FB2E54(v170, __src, &qword_27C9080A0, &unk_2146F4F10);
LABEL_17:
    v81 = *(a1 + 14);
    *(&__src[2] + 8) = *(a1 + 13);
    *(&__src[3] + 8) = v81;
    *(&__src[4] + 8) = *(a1 + 15);
    v82 = *(a1 + 32);
    *&__src[0] = v69;
    *(&__src[5] + 1) = v82;
    v83 = *(a1 + 12);
    *(__src + 8) = *(a1 + 11);
    *(&__src[1] + 8) = v83;
    v84 = *(a2 + 11);
    *(&__src[7] + 8) = *(a2 + 12);
    *(&__src[6] + 8) = v84;
    v85 = *(a2 + 13);
    v86 = *(a2 + 14);
    v87 = *(a2 + 15);
    v88 = *(a2 + 32);
    *&__src[6] = v70;
    *(&__src[11] + 1) = v88;
    *(&__src[10] + 8) = v87;
    *(&__src[9] + 8) = v86;
    *(&__src[8] + 8) = v85;
    v51 = &unk_27C918150;
    v52 = &unk_214784460;
LABEL_35:
    v53 = __src;
    goto LABEL_36;
  }

  v71 = *(a1 + 12);
  *(__src + 8) = *(a1 + 11);
  *(&__src[1] + 8) = v71;
  v72 = *(a1 + 14);
  *(&__src[2] + 8) = *(a1 + 13);
  *(&__src[3] + 8) = v72;
  *(&__src[4] + 8) = *(a1 + 15);
  v73 = *(a1 + 32);
  *&__src[0] = *&v169[0];
  *(&__src[5] + 1) = v73;
  __dst[0] = __src[0];
  __dst[1] = __src[1];
  __dst[5] = __src[5];
  __dst[4] = __src[4];
  __dst[3] = __src[3];
  __dst[2] = __src[2];
  if (!*&v170[0])
  {
    *&v181[32] = __src[2];
    *&v181[48] = __src[3];
    *&v181[64] = __src[4];
    *&v181[80] = __src[5];
    *v181 = __src[0];
    *&v181[16] = __src[1];
    sub_213FB2E54(v169, &v171, &qword_27C9080A0, &unk_2146F4F10);
    sub_213FB2E54(v170, &v171, &qword_27C9080A0, &unk_2146F4F10);
    sub_213FB2E54(__src, &v171, &qword_27C9080A0, &unk_2146F4F10);
    sub_21430CE14(v181);
    goto LABEL_17;
  }

  v74 = *(a2 + 14);
  *&v181[40] = *(a2 + 13);
  *&v181[56] = v74;
  *&v181[72] = *(a2 + 15);
  v75 = *(a2 + 32);
  v76 = *(a2 + 12);
  *&v181[8] = *(a2 + 11);
  *&v181[24] = v76;
  *&v181[88] = v75;
  *v181 = *&v170[0];
  sub_213FB2E54(v169, &v171, &qword_27C9080A0, &unk_2146F4F10);
  sub_213FB2E54(v170, &v171, &qword_27C9080A0, &unk_2146F4F10);
  sub_213FB2E54(__src, &v171, &qword_27C9080A0, &unk_2146F4F10);
  v77 = sub_2146D54EC(__dst, v181);
  *&v165[32] = *&v181[32];
  *&v165[48] = *&v181[48];
  *&v165[64] = *&v181[64];
  *&v165[80] = *&v181[80];
  *v165 = *v181;
  *&v165[16] = *&v181[16];
  sub_21430CE14(v165);
  v173 = __dst[2];
  v174 = __dst[3];
  v175 = __dst[4];
  v176 = __dst[5];
  v171 = __dst[0];
  v172 = __dst[1];
  sub_21430CE14(&v171);
  v78 = *(a1 + 14);
  *&v181[40] = *(a1 + 13);
  *&v181[56] = v78;
  *&v181[72] = *(a1 + 15);
  v79 = *(a1 + 32);
  *v181 = v69;
  *&v181[88] = v79;
  v80 = *(a1 + 12);
  *&v181[8] = *(a1 + 11);
  *&v181[24] = v80;
  sub_213FB2DF4(v181, &qword_27C9080A0, &unk_2146F4F10);
  if ((v77 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_19:
  v92 = *(a1 + 344);
  *&v181[64] = *(a1 + 328);
  *&v181[80] = v92;
  v182 = *(a1 + 360);
  LOWORD(v183) = *(a1 + 188);
  v93 = *(a1 + 280);
  *v181 = *(a1 + 264);
  *&v181[16] = v93;
  v94 = *(a1 + 312);
  *&v181[32] = *(a1 + 296);
  *&v181[48] = v94;
  v95 = *(a2 + 264);
  v96 = *(a2 + 280);
  v97 = *(a2 + 296);
  __dst[3] = *(a2 + 312);
  __dst[1] = v96;
  __dst[2] = v97;
  __dst[0] = v95;
  v98 = *(a2 + 328);
  v99 = *(a2 + 344);
  v100 = *(a2 + 360);
  LOWORD(__dst[7]) = *(a2 + 188);
  __dst[6] = v100;
  __dst[5] = v99;
  __dst[4] = v98;
  v101 = *v181;
  v102 = a1 + 272;
  v103 = (a2 + 272);
  v104 = *&__dst[0];
  if (!*v181)
  {
    if (!*&__dst[0])
    {
      v122 = *(a1 + 19);
      *(&__src[3] + 8) = *(a1 + 20);
      v123 = *(a1 + 22);
      *(&__src[4] + 8) = *(a1 + 21);
      *(&__src[5] + 8) = v123;
      *(&__src[6] + 2) = *(a1 + 362);
      v124 = *(a1 + 18);
      *(__src + 8) = *v102;
      *(&__src[1] + 8) = v124;
      *&__src[0] = 0;
      *(&__src[2] + 8) = v122;
      sub_213FB2E54(v181, &v171, &qword_27C9080B8, &unk_21476EEB0);
      sub_213FB2E54(__dst, &v171, &qword_27C9080B8, &unk_21476EEB0);
      sub_213FB2DF4(__src, &qword_27C9080B8, &unk_21476EEB0);
      goto LABEL_28;
    }

    sub_213FB2E54(v181, __src, &qword_27C9080B8, &unk_21476EEB0);
    sub_213FB2E54(__dst, __src, &qword_27C9080B8, &unk_21476EEB0);
    goto LABEL_26;
  }

  *&__src[0] = *v181;
  v105 = *(a1 + 18);
  *(__src + 8) = *v102;
  *(&__src[1] + 8) = v105;
  v106 = *(a1 + 20);
  *(&__src[2] + 8) = *(a1 + 19);
  *(&__src[3] + 8) = v106;
  *(&__src[6] + 2) = *(a1 + 362);
  v107 = *(a1 + 21);
  *(&__src[5] + 8) = *(a1 + 22);
  *(&__src[4] + 8) = v107;
  v173 = __src[2];
  v174 = __src[3];
  v171 = __src[0];
  v172 = __src[1];
  LOWORD(v178) = __src[7];
  v176 = __src[5];
  v177 = __src[6];
  v175 = __src[4];
  if (!*&__dst[0])
  {
    *&v165[64] = __src[4];
    *&v165[80] = __src[5];
    *&v165[96] = __src[6];
    *&v165[112] = __src[7];
    *v165 = __src[0];
    *&v165[16] = __src[1];
    *&v165[32] = __src[2];
    *&v165[48] = __src[3];
    sub_213FB2E54(v181, &v156, &qword_27C9080B8, &unk_21476EEB0);
    sub_213FB2E54(__dst, &v156, &qword_27C9080B8, &unk_21476EEB0);
    sub_213FB2E54(__src, &v156, &qword_27C9080B8, &unk_21476EEB0);
    sub_21430D1C4(v165);
LABEL_26:
    v115 = *(a1 + 19);
    *(&__src[3] + 8) = *(a1 + 20);
    v116 = *(a1 + 22);
    *(&__src[4] + 8) = *(a1 + 21);
    *(&__src[5] + 8) = v116;
    *(&__src[6] + 2) = *(a1 + 362);
    v117 = *(a1 + 18);
    *(__src + 8) = *v102;
    *(&__src[1] + 8) = v117;
    *(&__src[2] + 8) = v115;
    *&__src[0] = v101;
    *(&__src[7] + 1) = v104;
    v118 = *v103;
    __src[9] = *(a2 + 18);
    __src[8] = v118;
    v119 = *(a2 + 19);
    v120 = *(a2 + 20);
    *(&__src[13] + 10) = *(a2 + 362);
    v121 = *(a2 + 21);
    __src[13] = *(a2 + 22);
    __src[12] = v121;
    __src[10] = v119;
    __src[11] = v120;
    v51 = &unk_27C918158;
    v52 = &unk_214784468;
    goto LABEL_35;
  }

  v108 = *(a2 + 19);
  *&v165[56] = *(a2 + 20);
  v109 = *(a2 + 22);
  *&v165[72] = *(a2 + 21);
  *&v165[88] = v109;
  *&v165[98] = *(a2 + 362);
  v110 = *(a2 + 18);
  *&v165[8] = *v103;
  *&v165[24] = v110;
  *&v165[40] = v108;
  *v165 = *&__dst[0];
  sub_213FB2E54(v181, &v156, &qword_27C9080B8, &unk_21476EEB0);
  sub_213FB2E54(__dst, &v156, &qword_27C9080B8, &unk_21476EEB0);
  sub_213FB2E54(__src, &v156, &qword_27C9080B8, &unk_21476EEB0);
  v111 = sub_2146D4AB0(&v171, v165);
  *&v151[64] = *&v165[64];
  v152 = *&v165[80];
  v153 = *&v165[96];
  LOWORD(v154) = *&v165[112];
  *v151 = *v165;
  *&v151[16] = *&v165[16];
  *&v151[32] = *&v165[32];
  *&v151[48] = *&v165[48];
  sub_21430D1C4(v151);
  v160 = v175;
  v161 = v176;
  v162 = v177;
  LOWORD(v163) = v178;
  v156 = v171;
  v157 = v172;
  v158 = v173;
  v159 = v174;
  sub_21430D1C4(&v156);
  v112 = *(a1 + 19);
  *&v165[56] = *(a1 + 20);
  v113 = *(a1 + 22);
  *&v165[72] = *(a1 + 21);
  *&v165[88] = v113;
  *&v165[98] = *(a1 + 362);
  v114 = *(a1 + 18);
  *&v165[8] = *v102;
  *&v165[24] = v114;
  *v165 = v101;
  *&v165[40] = v112;
  sub_213FB2DF4(v165, &qword_27C9080B8, &unk_21476EEB0);
  if ((v111 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_28:
  v125 = *(a1 + 27);
  *&v165[32] = *(a1 + 26);
  *&v165[48] = v125;
  *&v165[64] = *(a1 + 28);
  v126 = *(a1 + 25);
  *v165 = *(a1 + 24);
  *&v165[16] = v126;
  v127 = *(a2 + 27);
  v173 = *(a2 + 26);
  v174 = v127;
  v175 = *(a2 + 28);
  v128 = *(a2 + 25);
  v171 = *(a2 + 24);
  v172 = v128;
  v129 = *v165;
  v130 = (a1 + 392);
  v131 = (a2 + 392);
  v132 = v171;
  if (!*v165)
  {
    if (!v171)
    {
      v148 = *v130;
      *(&__src[1] + 8) = *(a1 + 408);
      v149 = *(a1 + 440);
      *(&__src[2] + 8) = *(a1 + 424);
      *(&__src[3] + 8) = v149;
      v150 = *(a1 + 57);
      *&__src[0] = 0;
      *(&__src[4] + 1) = v150;
      *(__src + 8) = v148;
      sub_213FB2E54(v165, &v156, &qword_27C9080D0, &qword_2146F4F20);
      sub_213FB2E54(&v171, &v156, &qword_27C9080D0, &qword_2146F4F20);
      sub_213FB2DF4(__src, &qword_27C9080D0, &qword_2146F4F20);
      v138 = 1;
      return v138 & 1;
    }

    sub_213FB2E54(v165, __src, &qword_27C9080D0, &qword_2146F4F20);
    sub_213FB2E54(&v171, __src, &qword_27C9080D0, &qword_2146F4F20);
    goto LABEL_34;
  }

  v133 = *(a1 + 408);
  *(__src + 8) = *v130;
  *(&__src[1] + 8) = v133;
  v134 = *(a1 + 440);
  *(&__src[2] + 8) = *(a1 + 424);
  *(&__src[3] + 8) = v134;
  v135 = *(a1 + 57);
  *&__src[0] = *v165;
  *(&__src[4] + 1) = v135;
  v158 = __src[2];
  v159 = __src[3];
  v160 = __src[4];
  v156 = __src[0];
  v157 = __src[1];
  if (!v171)
  {
    *&v151[32] = __src[2];
    *&v151[48] = __src[3];
    *&v151[64] = __src[4];
    *v151 = __src[0];
    *&v151[16] = __src[1];
    sub_213FB2E54(v165, v168, &qword_27C9080D0, &qword_2146F4F20);
    sub_213FB2E54(&v171, v168, &qword_27C9080D0, &qword_2146F4F20);
    sub_213FB2E54(__src, v168, &qword_27C9080D0, &qword_2146F4F20);
    sub_21430D2C8(v151);
LABEL_34:
    v141 = *v130;
    *(&__src[1] + 8) = *(a1 + 408);
    v142 = *(a1 + 440);
    *(&__src[2] + 8) = *(a1 + 424);
    *(&__src[3] + 8) = v142;
    *(__src + 8) = v141;
    v143 = *v131;
    *(&__src[6] + 8) = *(a2 + 408);
    v144 = *(a2 + 440);
    *(&__src[7] + 8) = *(a2 + 424);
    *(&__src[8] + 8) = v144;
    v145 = *(a1 + 57);
    *&__src[0] = v129;
    *(&__src[4] + 1) = v145;
    v146 = *(a2 + 57);
    *&__src[5] = v132;
    *(&__src[9] + 1) = v146;
    *(&__src[5] + 8) = v143;
    v51 = &unk_27C918160;
    v52 = &unk_214784470;
    goto LABEL_35;
  }

  v136 = *v131;
  *&v151[24] = *(a2 + 408);
  v137 = *(a2 + 440);
  *&v151[40] = *(a2 + 424);
  *&v151[56] = v137;
  *&v151[72] = *(a2 + 57);
  *&v151[8] = v136;
  *v151 = v171;
  sub_213FB2E54(v165, v168, &qword_27C9080D0, &qword_2146F4F20);
  sub_213FB2E54(&v171, v168, &qword_27C9080D0, &qword_2146F4F20);
  sub_213FB2E54(__src, v168, &qword_27C9080D0, &qword_2146F4F20);
  v138 = sub_2146D4ECC(&v156, v151);
  v167[2] = *&v151[32];
  v167[3] = *&v151[48];
  v167[4] = *&v151[64];
  v167[0] = *v151;
  v167[1] = *&v151[16];
  sub_21430D2C8(v167);
  v168[2] = v158;
  v168[3] = v159;
  v168[4] = v160;
  v168[0] = v156;
  v168[1] = v157;
  sub_21430D2C8(v168);
  *v151 = v129;
  v139 = *v130;
  *&v151[24] = *(a1 + 408);
  v140 = *(a1 + 440);
  *&v151[40] = *(a1 + 424);
  *&v151[56] = v140;
  *&v151[72] = *(a1 + 57);
  *&v151[8] = v139;
  sub_213FB2DF4(v151, &qword_27C9080D0, &qword_2146F4F20);
  return v138 & 1;
}

unint64_t sub_2146D67DC()
{
  result = qword_27C918128;
  if (!qword_27C918128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C918128);
  }

  return result;
}

unint64_t sub_2146D6840()
{
  result = qword_27C918168;
  if (!qword_27C918168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C918168);
  }

  return result;
}

uint64_t sub_2146D6894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2146D6934(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = a1[1];
  sub_21402D9F8(v4, v3);
  result = sub_213FB54FC(v5, v6);
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_2146D69E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2146D6A68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2146D6B54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2146D6BD0(uint64_t a1)
{
  *(a1 + 8) = sub_21431E738();
  result = sub_21431DBCC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2146D6C10@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21439DF24;
  *(v3 + 24) = 0;
  *(inited + 32) = v3;
  sub_214042B80(inited, a1);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_2146E9BF0;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2146E9BF0;
  v6 = sub_214069764(&unk_282653AD8);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214059810;
  *(v7 + 24) = v8;
  *(v5 + 32) = v7;
  v9 = sub_2142E0070(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v10 + 16) = sub_21403254C;
  *(v10 + 24) = v11;
  *(v4 + 32) = v10;
  return sub_214042A28(v4, a1 + 40);
}

unint64_t sub_2146D6DB4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_213FDC8D0;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_2140597F4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = sub_21438EDCC;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21408E9E0;
  *(v7 + 24) = v5;
  *(inited + 40) = v7;
  return sub_2140433DC(inited, a1);
}

uint64_t sub_2146D6F18@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_2146D6F64(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);

  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  return result;
}

uint64_t sub_2146D6FBC()
{
  if (*(v0 + 72))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146D702C()
{
  if (*v0)
  {
    return 4000;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2146D7050@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 4000)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2146D706C()
{
  v1 = *v0;
  sub_2146DA958();
  if (v1)
  {
    v2 = 4000;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x216055860](v2);
  return sub_2146DA9B8();
}

uint64_t sub_2146D70BC()
{
  if (*v0)
  {
    v1 = 4000;
  }

  else
  {
    v1 = 0;
  }

  return MEMORY[0x216055860](v1);
}

uint64_t sub_2146D70F4()
{
  v1 = *v0;
  sub_2146DA958();
  if (v1)
  {
    v2 = 4000;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x216055860](v2);
  return sub_2146DA9B8();
}

void *sub_2146D7140@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 4000)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_2146D7160(uint64_t *a1@<X8>)
{
  v2 = 4000;
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t sub_2146D7260()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_2146D7290(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_2146D72E8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_2146D7318(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_2146D7370()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t sub_2146D7378(uint64_t result, uint64_t a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_2146D73A0(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v10 = *(v2 + 80);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v2 + 72);

    *(v2 + 72) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2146D74DC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 72);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_214090D48;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2146D7574(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2140910D8;
}

uint64_t sub_2146D760C@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 136);
  v9 = *(v1 + 120);
  v10 = v3;
  v11 = *(v1 + 152);
  v4 = v11;
  v8[0] = *(v1 + 88);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v2;
  return sub_2140915E8(v8, &v7);
}

__n128 sub_2146D7660(__int128 *a1)
{
  v3 = *(v1 + 104);
  v4 = *(v1 + 136);
  v8[2] = *(v1 + 120);
  v8[3] = v4;
  v8[4] = *(v1 + 152);
  v8[0] = *(v1 + 88);
  v8[1] = v3;
  sub_214091658(v8);
  v5 = *a1;
  *(v1 + 104) = a1[1];
  v6 = a1[3];
  *(v1 + 120) = a1[2];
  *(v1 + 136) = v6;
  result = a1[4];
  *(v1 + 152) = result;
  *(v1 + 88) = v5;
  return result;
}

uint64_t sub_2146D76F0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return v1;
}

uint64_t sub_2146D7720(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 176);

  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
  return result;
}

uint64_t sub_2146D7778@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CustomAcknowledgement() + 44);

  return sub_2140641A4(v3, a1);
}

uint64_t type metadata accessor for CustomAcknowledgement()
{
  result = qword_280B2F0A8;
  if (!qword_280B2F0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2146D7808(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CustomAcknowledgement() + 44);

  return sub_214064230(a1, v3);
}

uint64_t sub_2146D7894()
{
  v1 = *(v0 + *(type metadata accessor for CustomAcknowledgement() + 48));
}

uint64_t sub_2146D78C8(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomAcknowledgement() + 48);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2146D7950@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CustomAcknowledgement() + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_214031CA0(v4);
}

__n128 sub_2146D79A0(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_i64[0];
  v3 = (v1 + *(type metadata accessor for CustomAcknowledgement() + 52));
  v4 = v3[1];
  v5 = v3[2];
  sub_214031CE0(*v3);
  result = v7;
  *v3 = v7;
  v3[2] = v2;
  return result;
}

uint64_t sub_2146D7A40()
{
  BYTE8(v2) = 0;
  sub_2146D9EF8();
  MEMORY[0x2160545D0](40, 0xE100000000000000);
  MEMORY[0x2160545D0](0xD000000000000015, 0x8000000214784510);
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBF0);
  *&v2 = *v0;
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBB0);
  MEMORY[0x2160545D0](*(v0 + 1), *(v0 + 2));
  MEMORY[0x2160545D0](41, 0xE100000000000000);
  return *(&v2 + 1);
}

unint64_t sub_2146D7B48()
{
  result = qword_27C918170;
  if (!qword_27C918170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C918170);
  }

  return result;
}

unint64_t sub_2146D7B9C(uint64_t a1)
{
  *(a1 + 8) = sub_2142ECF50();
  result = sub_2142ED07C();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146D7BCC(uint64_t a1)
{
  *(a1 + 8) = sub_2146D7C34(&qword_27C90D738);
  result = sub_2146D7C34(&qword_27C90D708);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146D7C34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CustomAcknowledgement();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2146D7CA4()
{
  sub_2146D7E44(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21447A994();
    if (v1 <= 0x3F)
    {
      sub_214494944();
      if (v2 <= 0x3F)
      {
        sub_2146D7E44(319, &qword_280B2E670, &type metadata for TapBack.MessageSummaryInfo, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for BalloonPlugin.Payload(319);
          if (v4 <= 0x3F)
          {
            sub_2146D7E44(319, &qword_280B2E470, &type metadata for AttributionInfo, MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              sub_2146D7E44(319, &qword_280B2F2E8, &type metadata for _AttributedString, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_2146D7E44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2146D7EA4()
{
  result = qword_27C918178;
  if (!qword_27C918178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C918178);
  }

  return result;
}

void BD_IOSurfaceDisallowForever_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  *v2 = 0;
  _os_log_error_impl(&dword_213FAF000, log, OS_LOG_TYPE_ERROR, "Unable soft link IOSurfaceDisallowForever", v2, 2u);
  v1 = *MEMORY[0x277D85DE8];
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}