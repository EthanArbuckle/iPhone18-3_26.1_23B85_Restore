void sub_214082824()
{
  if (!qword_280B34F28)
  {
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_280B34F28);
    }
  }
}

unint64_t sub_214082878()
{
  result = qword_27C904DA0;
  if (!qword_27C904DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904DA0);
  }

  return result;
}

unint64_t sub_2140828D0()
{
  result = qword_27C904DA8;
  if (!qword_27C904DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904DA8);
  }

  return result;
}

unint64_t sub_214082928()
{
  result = qword_27C904DB0;
  if (!qword_27C904DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904DB0);
  }

  return result;
}

unint64_t sub_214082980()
{
  result = qword_27C904DB8;
  if (!qword_27C904DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904DB8);
  }

  return result;
}

unint64_t sub_2140829D8()
{
  result = qword_27C904DC0;
  if (!qword_27C904DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904DC0);
  }

  return result;
}

unint64_t sub_214082A30()
{
  result = qword_27C904DC8;
  if (!qword_27C904DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904DC8);
  }

  return result;
}

uint64_t sub_214082A9C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_214082AEC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_214082B3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214082C08@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if ((result + 1) >= 4)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * (result + 1));
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214082C30@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if ((result + 1) >= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0x2010003u >> (8 * (result + 1));
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214082C9C()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146F04F8[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_214082D24()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146F04F8[v1]);
  return sub_2146DA9B8();
}

unint64_t sub_214082E50@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    result = sub_214082E9C(result, &v4);
    v3 = v4;
    if (v4 == 14)
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 14;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_214082E9C@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 14;
  if (result < 0xE)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214082F8C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_214082FBC(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t sub_21408321C()
{
  v1 = 0x3E6C696E3CLL;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - v4;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_2146D9EF8();

  v18 = 0xD00000000000001ALL;
  v19 = 0x800000021478BF90;
  if (*(v0 + 8))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + 8))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x2160545D0](v6, v7);

  MEMORY[0x2160545D0](0x6B63616270617420, 0xEA0000000000203ALL);
  v8 = type metadata accessor for LiteTextMessage(0);
  sub_213FB2E54(v0 + *(v8 + 28), v5, &qword_27C904DD0, &unk_214741A90);
  v9 = type metadata accessor for LiteTapback(0);
  if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
  {
    sub_21408354C(v5);
    v10 = 0xE500000000000000;
  }

  else
  {
    v16 = 0xD000000000000013;
    v17 = 0x800000021478BFB0;
    v11 = v5[*(v9 + 20)];
    if (v11 == 15)
    {
      v12 = 0xE500000000000000;
    }

    else
    {
      v15[1] = v11 - 1;
      sub_214083684();
      v1 = sub_2146D9E18();
      v12 = v13;
    }

    MEMORY[0x2160545D0](v1, v12);

    MEMORY[0x2160545D0](62, 0xE100000000000000);
    v1 = v16;
    v10 = v17;
    sub_2140835B4(v5);
  }

  MEMORY[0x2160545D0](v1, v10);

  MEMORY[0x2160545D0](62, 0xE100000000000000);
  return v18;
}

unint64_t LiteTapback.debugDescription.getter()
{
  if (*(v0 + *(type metadata accessor for LiteTapback(0) + 20)) == 15)
  {
    v1 = 0xE500000000000000;
    v2 = 0x3E6C696E3CLL;
  }

  else
  {
    sub_214083684();
    v2 = sub_2146D9E18();
    v1 = v3;
  }

  MEMORY[0x2160545D0](v2, v1);

  MEMORY[0x2160545D0](62, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t sub_21408354C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2140835B4(uint64_t a1)
{
  v2 = type metadata accessor for LiteTapback(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BlastDoor::LiteTapback::AssociatedMessageType __swiftcall LiteTapback.AssociatedMessageType.init(defaultingRawValue:)(Swift::Int defaultingRawValue)
{
  v2 = v1;
  result = LiteTapback.AssociatedMessageType.init(rawValue:)(defaultingRawValue).value;
  v4 = v5;
  if (v5 == 15)
  {
    v4 = 0;
  }

  *v2 = v4;
  return result;
}

BlastDoor::LiteTapback::AssociatedMessageType_optional __swiftcall LiteTapback.AssociatedMessageType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 15;
  if ((rawValue + 1) < 0xF)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_214083684()
{
  result = qword_280B30BB0[0];
  if (!qword_280B30BB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B30BB0);
  }

  return result;
}

uint64_t LiteTapback.associatedMessageUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LiteTapback.associatedMessageUUID.setter(uint64_t a1)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t LiteTapback.associatedMessageType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LiteTapback(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t LiteTapback.associatedMessageType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for LiteTapback(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t LiteTapback.associatedMessageEmoji.getter()
{
  v1 = v0 + *(type metadata accessor for LiteTapback(0) + 24);
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

uint64_t sub_2140839CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for LiteTapback(0) + 24);
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

uint64_t sub_214083A68(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for LiteTapback(0) + 24);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t LiteTapback.associatedMessageEmoji.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for LiteTapback(0) + 24);
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

void (*LiteTapback.associatedMessageEmoji.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for LiteTapback(0) + 24);
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

uint64_t LiteTapback.$associatedMessageEmoji.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiteTapback(0) + 24));
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

uint64_t sub_214083DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for LiteTapback(0) + 24));
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

uint64_t sub_214083E48(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for LiteTapback(0) + 24);
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

__n128 LiteTapback.$associatedMessageEmoji.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for LiteTapback(0) + 24));
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

void (*LiteTapback.$associatedMessageEmoji.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for LiteTapback(0) + 24);
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

unint64_t sub_214084004@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 1;
  *(v4 + 16) = sub_214084D54;
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

unint64_t sub_21408414C()
{
  result = qword_27C904DD8;
  if (!qword_27C904DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904DD8);
  }

  return result;
}

unint64_t sub_2140841CC()
{
  result = qword_27C904DE0;
  if (!qword_27C904DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904DE0);
  }

  return result;
}

unint64_t sub_214084220()
{
  result = qword_27C904DE8;
  if (!qword_27C904DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904DE8);
  }

  return result;
}

unint64_t sub_2140842A8()
{
  result = qword_27C904E00;
  if (!qword_27C904E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904E00);
  }

  return result;
}

unint64_t sub_214084328()
{
  result = qword_27C904E08;
  if (!qword_27C904E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904E08);
  }

  return result;
}

unint64_t sub_21408437C()
{
  result = qword_27C904E10;
  if (!qword_27C904E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904E10);
  }

  return result;
}

uint64_t sub_214084400(uint64_t a1)
{
  *(a1 + 8) = sub_214084484(&qword_27C904E28, type metadata accessor for LiteTextMessage);
  result = sub_214084484(&qword_27C904E30, type metadata accessor for LiteTextMessage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214084484(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2140844D0()
{
  result = qword_27C904E38;
  if (!qword_27C904E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904E38);
  }

  return result;
}

uint64_t sub_214084550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21408458C()
{
  result = qword_27C904E40;
  if (!qword_27C904E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904E40);
  }

  return result;
}

unint64_t sub_2140845E0()
{
  result = qword_27C904E48;
  if (!qword_27C904E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904E48);
  }

  return result;
}

uint64_t sub_214084664(uint64_t a1)
{
  *(a1 + 8) = sub_214084484(&qword_27C904E60, type metadata accessor for LiteTapback);
  result = sub_214084484(&qword_27C904E68, type metadata accessor for LiteTapback);
  *(a1 + 16) = result;
  return result;
}

void sub_214084710()
{
  sub_21403BEC8(319, &qword_280B34BE0);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, qword_280B2F4B0);
    if (v1 <= 0x3F)
    {
      sub_21408481C(319, &qword_280B353F8, MEMORY[0x277CC95F0]);
      if (v2 <= 0x3F)
      {
        sub_21408481C(319, &qword_280B2FBB0, type metadata accessor for LiteTapback);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21408481C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MBDActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MBDActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2140849F8()
{
  sub_2146D8B88();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2FBF8);
    if (v1 <= 0x3F)
    {
      sub_214084AA4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214084AA4()
{
  if (!qword_280B2E570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904008, &qword_2146EC050);
    v0 = type metadata accessor for Validated();
    if (!v1)
    {
      atomic_store(v0, &qword_280B2E570);
    }
  }
}

uint64_t getEnumTagSinglePayload for LiteTapback.AssociatedMessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiteTapback.AssociatedMessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_214084C58()
{
  result = qword_27C904E70;
  if (!qword_27C904E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904E70);
  }

  return result;
}

unint64_t sub_214084CAC()
{
  result = qword_27C904E78;
  if (!qword_27C904E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904E78);
  }

  return result;
}

unint64_t sub_214084D00()
{
  result = qword_27C904E80;
  if (!qword_27C904E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904E80);
  }

  return result;
}

uint64_t sub_214084D5C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_214084D8C(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214084F0C(uint64_t result, char a2)
{
  if (a2 & 1 | ((result & 0xFFFFFFFFFFF1F801) != 1))
  {
    return 0;
  }

  return result;
}

BOOL sub_214084F80(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_214084FB0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_214084FDC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

unint64_t sub_214085190()
{
  result = qword_27C904E88;
  if (!qword_27C904E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904E88);
  }

  return result;
}

unint64_t sub_2140851E4()
{
  result = qword_27C904E90;
  if (!qword_27C904E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904E90);
  }

  return result;
}

unint64_t sub_21408523C()
{
  result = qword_27C904E98;
  if (!qword_27C904E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904E98);
  }

  return result;
}

unint64_t sub_214085294()
{
  result = qword_27C904EA0;
  if (!qword_27C904EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904EA0);
  }

  return result;
}

uint64_t sub_214085314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214085350()
{
  result = qword_27C904EA8;
  if (!qword_27C904EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904EA8);
  }

  return result;
}

unint64_t sub_2140853A4()
{
  result = qword_27C904EB0;
  if (!qword_27C904EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904EB0);
  }

  return result;
}

unint64_t sub_2140853FC()
{
  result = qword_27C904EB8;
  if (!qword_27C904EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904EB8);
  }

  return result;
}

unint64_t sub_214085454()
{
  result = qword_27C904EC0;
  if (!qword_27C904EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904EC0);
  }

  return result;
}

uint64_t sub_2140854AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_214085508(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_214085580()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for WalletCloudStoreZoneInvitationMessage();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (result)
  {
    v12 = result;
    [result writeUint32:*v1 forTag:1];
    v13 = type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage();
    sub_2140857F4(v1 + *(v13 + 20), v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_214085864(v5);
    }

    else
    {
      sub_2140858CC(v5, v10);
      v14 = sub_2144DC484();
      v15 = sub_214601954(v14);
      v17 = v16;
      v18 = sub_2146D8A38();
      sub_213FB54FC(v15, v17);
      [v12 writeData:v18 forTag:2];

      sub_2140860F8(v10);
    }

    v19 = (v1 + *(v13 + 24));
    if ((v19[1] & 1) == 0)
    {
      [v12 writeUint32:*v19 forTag:3];
    }

    result = [v12 immutableData];
    if (result)
    {
      v20 = result;

      return v20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage()
{
  result = qword_27C904EE8;
  if (!qword_27C904EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2140857F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214085864(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2140858CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletCloudStoreZoneInvitationMessage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214085960@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage() + 20);

  return sub_2140857F4(v3, a1);
}

uint64_t sub_2140859A4(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage() + 20);

  return sub_214086154(a1, v3);
}

uint64_t sub_214085A70(uint64_t a1)
{
  result = type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage();
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_214085AF8@<X0>(uint64_t a1@<X8>)
{
  v56[0] = a1;
  v64 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v56 - v7;
  v9 = objc_allocWithZone(MEMORY[0x277D43170]);
  v10 = sub_2146D8A38();
  v11 = [v9 initWithData_];

  v12 = type metadata accessor for WalletCloudStoreZoneInvitationMessage();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v56[1] = v13 + 56;
  v57 = v14;
  v14(v8, 1, 1, v12);
  v15 = [v11 position];
  if (v15 >= [v11 length])
  {
LABEL_52:
    sub_2140861C4();
    swift_allocError();
    *v48 = 1;
LABEL_53:
    swift_willThrow();

    result = sub_214085864(v8);
  }

  else
  {
    v59 = 0;
    v60 = 1;
    v58 = 1;
    do
    {
      if ([v11 hasError])
      {
        break;
      }

      v17 = 0;
      v18 = 0;
      v19 = 0;
      while (1)
      {
        v61 = 0;
        v20 = [v11 position] + 1;
        if (v20 >= [v11 position] && (v21 = objc_msgSend(v11, "position") + 1, v21 <= objc_msgSend(v11, "length")))
        {
          v22 = [v11 data];
          [v22 getBytes:&v61 range:{objc_msgSend(v11, "position"), 1}];

          [v11 setPosition:{objc_msgSend(v11, "position") + 1}];
        }

        else
        {
          [v11 _setError];
        }

        v19 |= (v61 & 0x7F) << v17;
        if ((v61 & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        if (v18++ >= 9)
        {
          v24 = 0;
          goto LABEL_18;
        }
      }

      if ([v11 hasError])
      {
        v24 = 0;
      }

      else
      {
        v24 = v19;
      }

LABEL_18:
      if ([v11 hasError])
      {
        sub_2140861C4();
        swift_allocError();
        *v51 = 0;
        goto LABEL_53;
      }

      v25 = v24 >> 3;
      if ((v24 >> 3) == 1)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        while (1)
        {
          v62 = 0;
          v41 = [v11 position] + 1;
          if (v41 >= [v11 position] && (v42 = objc_msgSend(v11, "position") + 1, v42 <= objc_msgSend(v11, "length")))
          {
            v43 = [v11 data];
            [v43 getBytes:&v62 range:{objc_msgSend(v11, "position"), 1}];

            [v11 setPosition:{objc_msgSend(v11, "position") + 1}];
          }

          else
          {
            [v11 _setError];
          }

          v40 |= (v62 & 0x7F) << v38;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v32 = v39++ > 8;
          if (v32)
          {
            LODWORD(v59) = 0;
            v60 = 0;
            goto LABEL_4;
          }
        }

        v44 = [v11 hasError];
        v60 = 0;
        v45 = v44 ? 0 : v40;
        LODWORD(v59) = v45;
      }

      else if (v25 == 2)
      {
        v33 = PBReaderReadData();
        if (v33)
        {
          v34 = v33;
          v35 = sub_2146D8A58();
          v37 = v36;

          sub_2144DB5B0(v6);
          sub_214085864(v8);
          if (v1)
          {

            result = sub_213FB54FC(v35, v37);
            goto LABEL_54;
          }

          sub_213FB54FC(v35, v37);
          v57(v6, 0, 1, v12);
          sub_214086218(v6, v8);
        }
      }

      else if (v25 == 3)
      {
        v26 = 0;
        v27 = 0;
        v28 = 0;
        while (1)
        {
          v63 = 0;
          v29 = [v11 position] + 1;
          if (v29 >= [v11 position] && (v30 = objc_msgSend(v11, "position") + 1, v30 <= objc_msgSend(v11, "length")))
          {
            v31 = [v11 data];
            [v31 getBytes:&v63 range:{objc_msgSend(v11, "position"), 1}];

            [v11 setPosition:{objc_msgSend(v11, "position") + 1}];
          }

          else
          {
            [v11 _setError];
          }

          v28 |= (v63 & 0x7F) << v26;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v32 = v27++ > 8;
          if (v32)
          {
            HIDWORD(v59) = 0;
            v58 = 0;
            goto LABEL_4;
          }
        }

        v46 = [v11 hasError];
        v58 = 0;
        v47 = v46 ? 0 : v28;
        HIDWORD(v59) = v47;
      }

      else
      {
        PBReaderSkipValueWithTag();
      }

LABEL_4:
      v16 = [v11 position];
    }

    while (v16 < [v11 length]);
    if (v60)
    {
      goto LABEL_52;
    }

    v52 = type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage();
    v53 = v56[0];
    result = sub_214086218(v8, v56[0] + *(v52 + 20));
    v54 = HIDWORD(v59);
    *v53 = v59;
    v55 = v53 + *(v52 + 24);
    *v55 = v54;
    v55[4] = v58 & 1;
  }

LABEL_54:
  v50 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2140860F8(uint64_t a1)
{
  v2 = type metadata accessor for WalletCloudStoreZoneInvitationMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214086154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2140861C4()
{
  result = qword_27C904ED0;
  if (!qword_27C904ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904ED0);
  }

  return result;
}

uint64_t sub_214086218(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214086288(uint64_t a1)
{
  *(a1 + 8) = sub_2140862F0(&qword_27C904ED8);
  result = sub_2140862F0(&qword_27C904EE0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2140862F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21408635C()
{
  sub_2140863F0();
  if (v0 <= 0x3F)
  {
    sub_214086448();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2140863F0()
{
  if (!qword_27C904EF8)
  {
    type metadata accessor for WalletCloudStoreZoneInvitationMessage();
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_27C904EF8);
    }
  }
}

void sub_214086448()
{
  if (!qword_280B2E328)
  {
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_280B2E328);
    }
  }
}

void *BlastDoorService.__allocating_init(name:instanceType:queue:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_2146D9628();
  v7 = a4;

  v8 = xpc_connection_create((v6 + 32), v7);

  v9 = type metadata accessor for XPCConnection();
  swift_allocObject();
  v10 = v7;
  swift_unknownObjectRetain();
  v11 = a3;
  v12 = sub_2146A2BBC(v8, v11, v10);
  swift_unknownObjectRelease();

  v18[3] = v9;
  v18[4] = &off_2826A5BA0;
  v18[0] = v12;
  type metadata accessor for BlastDoorService();
  v13 = swift_allocObject();
  v13[2] = v10;
  sub_214053840(v18, (v13 + 3));
  v13[8] = v11;
  v14 = v13[6];
  v15 = v13[7];
  __swift_project_boxed_opaque_existential_1(v13 + 3, v14);
  v16 = *(v15 + 16);

  v16(v14, v15);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v13;
}

void *BlastDoorService.__allocating_init(endpoint:queue:)(_xpc_endpoint_s *a1, void *a2)
{
  v3 = xpc_connection_create_from_endpoint(a1);
  v4 = type metadata accessor for XPCConnection();
  swift_allocObject();
  v5 = @"Default";
  v6 = a2;
  v7 = sub_2146A2BBC(v3, v5, v6);
  swift_unknownObjectRelease();

  v13[3] = v4;
  v13[4] = &off_2826A5BA0;
  v13[0] = v7;
  type metadata accessor for BlastDoorService();
  v8 = swift_allocObject();
  v8[2] = v6;
  sub_214053840(v13, (v8 + 3));
  v8[8] = v5;
  v9 = v8[6];
  v10 = v8[7];
  __swift_project_boxed_opaque_existential_1(v8 + 3, v9);
  v11 = *(v10 + 16);

  v11(v9, v10);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v8;
}

uint64_t sub_214086740(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v58 = a6;
  v59 = a8;
  v49 = a7;
  v63 = a4;
  v55 = a1;
  v56 = a3;
  v53 = a13;
  v54 = a14;
  v52 = a11;
  v61 = a12;
  v62 = a5;
  v60 = *(a12 - 8);
  v15 = *(v60 + 64);
  v57 = a9;
  v47 = a10;
  MEMORY[0x28223BE20](a1);
  v46 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2146D9438();
  v43 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v45 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v23 = &v43 - v22;
  v44 = a2;
  v24 = a2[7];
  v51 = a2[6];
  v48 = v24;
  v50 = __swift_project_boxed_opaque_existential_1(a2 + 3, v51);
  sub_213FB2E54(v62, v23, &unk_27C904F30, &unk_2146EFA20);
  (*(v17 + 16))(&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v16);
  v25 = v60;
  v26 = v61;
  (*(v60 + 16))(&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v61);
  v27 = (*(v20 + 80) + 73) & ~*(v20 + 80);
  v28 = (v21 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v17 + 80) + v28 + 8) & ~*(v17 + 80);
  v30 = (v18 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (*(v25 + 80) + v30 + 16) & ~*(v25 + 80);
  v32 = swift_allocObject();
  v33 = v53;
  *(v32 + 16) = v52;
  *(v32 + 24) = v26;
  v35 = v54;
  v34 = v55;
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  v36 = v56;
  *(v32 + 48) = v34;
  *(v32 + 56) = v36;
  *(v32 + 64) = v44;
  *(v32 + 72) = v63;
  sub_21408AC04(v23, v32 + v27, &unk_27C904F30, &unk_2146EFA20);
  *(v32 + v28) = v58;
  (*(v17 + 32))(v32 + v29, v45, v43);
  v37 = (v32 + v30);
  v38 = v60;
  v39 = v57;
  *v37 = v59;
  v37[1] = v39;
  (*(v38 + 32))(v32 + v31, v46, v61);
  v40 = v48;
  v41 = *(v48 + 24);
  swift_unknownObjectRetain();

  v41(v36, v63, v62, sub_21408AA7C, v32, v51, v40);
}

uint64_t sub_214086AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a14, uint64_t a15)
{
  v70 = a7;
  v71 = a8;
  v66 = a3;
  v67 = a6;
  LODWORD(v64) = a5;
  v65 = a4;
  v68 = a14;
  v72 = a10;
  v73 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v69 = a12;
  v17 = sub_2146DA9C8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v61 - v20);
  swift_getObjectType();
  v22 = sub_21408FD98();
  v23 = sub_21408FFD8();
  if (v22 == 7)
  {
    v42 = v69;
    v81 = v68;
    v43 = v70;
    v44 = v71;
    v46 = v72;
    v45 = v73;

    return sub_213FB19EC(a1, v43, a11, v44, v45, v46, v42, a13, v81, a15);
  }

  else if (v22 == 13)
  {
    if (v23 != 1)
    {
LABEL_8:
      v66 = v18;
      swift_unknownObjectRetain();
      sub_2145073B0(&v74);
      v25 = v74;
      v24 = v75;
      v27 = v76;
      v26 = v77;
      v29 = v78;
      v28 = v79;
      LODWORD(v65) = sub_2146D9BA8();
      if (qword_280B35358 != -1)
      {
        swift_once();
      }

      v64 = qword_280B35408;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_2146EA710;
      v74 = v25;
      v75 = v24;
      v76 = v27;
      v77 = v26;
      v78 = v29;
      v79 = v28;

      v31 = sub_2146D9618();
      v62 = v29;
      v63 = v27;
      v32 = v31;
      v34 = v33;
      *(v30 + 56) = MEMORY[0x277D837D0];
      *(v30 + 64) = sub_213FB2DA0();
      *(v30 + 32) = v32;
      *(v30 + 40) = v34;
      sub_2146D91D8();

      sub_21404A6EC();
      v35 = swift_allocError();
      *v36 = v25;
      v36[1] = v24;
      v36[2] = v27;
      v36[3] = v26;
      v37 = v62;
      v36[4] = v62;
      v36[5] = v28;
      *v21 = v35;
      swift_storeEnumTagMultiPayload();

      sub_213FB2F04(v70, v71, v21);
      v38 = *(v66 + 8);
      v38(v21, v17);
      v39 = swift_allocError();
      *v40 = v25;
      v40[1] = v24;
      v40[2] = v63;
      v40[3] = v26;
      v40[4] = v37;
      v40[5] = v28;
      *v21 = v39;
      swift_storeEnumTagMultiPayload();
      v73(v21, v67, 1);
      return (v38)(v21, v17);
    }

    if (a2 > 0)
    {
      sub_2146D9B88();
      if (qword_280B35360 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
      *(swift_allocObject() + 16) = xmmword_2146EA710;
      v74 = v66;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F60, &qword_2146F08F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F68, &qword_2146F08F8);
      swift_dynamicCast();
      sub_2146D91D8();

      goto LABEL_8;
    }

    sub_2146D9B88();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_2146E6910;
    v74 = a2 + 1;
    v57 = sub_2146D9618();
    v59 = v58;
    *(v56 + 56) = MEMORY[0x277D837D0];
    *(v56 + 64) = sub_213FB2DA0();
    *(v56 + 32) = v57;
    *(v56 + 40) = v59;
    v60 = v66;
    v74 = v66;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F60, &qword_2146F08F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F68, &qword_2146F08F8);
    swift_dynamicCast();
    sub_2146D91D8();

    return sub_214086740(a2 + 1, v65, v60, v64 & 1, v67, v70, v71, v73, v72, a11, v69, a13, v68, a15);
  }

  else
  {
    sub_2146D9BA8();
    if (qword_280B35358 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_2146EA710;
    LOBYTE(v74) = sub_21408FD98();
    v48 = sub_2146D9618();
    v50 = v49;
    *(v47 + 56) = MEMORY[0x277D837D0];
    *(v47 + 64) = sub_213FB2DA0();
    *(v47 + 32) = v48;
    *(v47 + 40) = v50;
    sub_2146D91D8();

    sub_21404A6EC();
    v51 = swift_allocError();
    *v52 = 0xD000000000000026;
    v52[1] = 0x800000021478C210;
    v52[2] = 0x546E776F6E6B6E55;
    v52[3] = 0xEB00000000657079;
    v52[4] = 0;
    v52[5] = 0;
    *v21 = v51;
    swift_storeEnumTagMultiPayload();
    sub_213FB2F04(v70, v71, v21);
    v53 = *(v18 + 8);
    v53(v21, v17);
    v54 = swift_allocError();
    *v55 = 0xD000000000000026;
    v55[1] = 0x800000021478C210;
    v55[2] = 0x546E776F6E6B6E55;
    v55[3] = 0xEB00000000657079;
    v55[4] = 0;
    v55[5] = 0;
    *v21 = v54;
    swift_storeEnumTagMultiPayload();
    v73(v21, v67, 1);
    return (v53)(v21, v17);
  }
}

uint64_t sub_2140872F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v23 - v18;
  v20 = swift_allocObject();
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a7;
  v20[5] = a8;
  v20[6] = a3;
  v20[7] = a4;
  v21 = sub_2146D8B88();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);

  sub_213FB49EC(a1, a2, 0, v19, sub_21408AD2C, v20, a5, a6, a7, a8);

  return sub_213FB2DF4(v19, &unk_27C904F30, &unk_2146EFA20);
}

uint64_t sub_214087474(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a4;
  sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2146EA710;
  v23 = a1;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v15 = sub_213FB17C8(&v23, MetatypeMetadata);
  v17 = v16;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_213FB2DA0();
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  sub_2146D91D8();

  v23 = a2;
  v24 = a3;
  v25 = v12;
  sub_21402D9F8(a2, a3);
  v18 = sub_21408A5E8();
  sub_2140872F4(a1, &v23, a5, a6, a7, &type metadata for UnpackRequestMessage, a8, v18);
  return sub_213FB54FC(v23, v24);
}

uint64_t sub_2140875F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v8 = a2[1];
  v17 = *a3;
  v18 = *(a2 + 16);
  sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2146EA710;
  v21[0] = a1;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v12 = sub_213FB17C8(v21, MetatypeMetadata);
  v14 = v13;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_213FB2DA0();
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  sub_2146D91D8();

  v21[0] = v9;
  v21[1] = v8;
  v22 = v18;
  v23 = v17;
  v15 = sub_21408A63C();

  sub_213FB4E90(a1, v21, a4, &type metadata for UnpackFileRequestMessage, a5, v15, a6);
}

uint64_t sub_214087794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v39 = a4;
  v40 = a2;
  v41 = a3;
  v43 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  v13 = *(v37 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v32 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = a7;
  v35 = swift_getAssociatedConformanceWitness();
  v36 = AssociatedConformanceWitness;
  v17 = type metadata accessor for ContextualUnpackRequestMessage();
  v38 = *(v17 - 8);
  v18 = *(v38 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - v19;
  v34 = *a5;
  v33 = sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2146EA710;
  v45 = a1;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v23 = sub_213FB17C8(&v45, MetatypeMetadata);
  v32 = a1;
  v25 = v24;
  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 64) = sub_213FB2DA0();
  *(v21 + 32) = v23;
  *(v21 + 40) = v25;
  sub_2146D91D8();

  (*(v37 + 16))(v15, v39, AssociatedTypeWitness);
  v44 = v34;
  v26 = v15;
  v28 = v40;
  v27 = v41;
  sub_2144F2B60(v26, &v44, v40, v41, AssociatedTypeWitness, v20);
  sub_21402D9F8(v28, v27);
  v29 = *(v42 + 8);
  WitnessTable = swift_getWitnessTable();
  sub_213FB4E90(v32, v20, a6, v17, v29, WitnessTable, v43);
  return (*(v38 + 8))(v20, v17);
}

uint64_t sub_214087AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = a7;
  v42 = a3;
  v43 = a6;
  v40 = a4;
  v41 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  v13 = *(v39 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v33 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = swift_getAssociatedConformanceWitness();
  v37 = AssociatedConformanceWitness;
  v17 = type metadata accessor for ContextualUnpackRequestMessage();
  v38 = *(v17 - 8);
  v18 = *(v38 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v33 - v19;
  v35 = *a5;
  v34 = sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2146EA710;
  v46 = a1;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v23 = sub_213FB17C8(&v46, MetatypeMetadata);
  v33 = a1;
  v24 = v23;
  v26 = v25;
  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 64) = sub_213FB2DA0();
  *(v21 + 32) = v24;
  *(v21 + 40) = v26;
  sub_2146D91D8();

  (*(v39 + 16))(v15, v40, AssociatedTypeWitness);
  v45 = v35;
  v27 = v15;
  v29 = v41;
  v28 = v42;
  sub_2144F2B60(v27, &v45, v41, v42, AssociatedTypeWitness, v20);
  sub_21402D9F8(v29, v28);
  v30 = *(a9 + 8);
  WitnessTable = swift_getWitnessTable();
  sub_2140872F4(v33, v20, v43, v44, a8, v17, v30, WitnessTable);
  return (*(v38 + 8))(v20, v17);
}

uint64_t sub_214087E3C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = a6;
  v54 = a5;
  v52 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v14 = *(v49 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v39 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53 = a8;
  v47 = swift_getAssociatedConformanceWitness();
  v48 = AssociatedConformanceWitness;
  v17 = type metadata accessor for ContextualUnpackFileRequestMessage();
  v51 = *(v17 - 8);
  v18 = *(v51 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - v19;
  v21 = *a2;
  v46 = *(a2 + 8);
  v22 = *(a2 + 16);
  v44 = *a4;
  v45 = v22;
  v42 = sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  v41 = qword_280B35408;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2146E6910;
  v56 = a1;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v25 = sub_213FB17C8(&v56, MetatypeMetadata);
  v27 = v26;
  v43 = a1;
  v28 = MEMORY[0x277D837D0];
  *(v23 + 56) = MEMORY[0x277D837D0];
  v29 = sub_213FB2DA0();
  *(v23 + 64) = v29;
  *(v23 + 32) = v25;
  *(v23 + 40) = v27;
  v56 = 47;
  v57 = 0xE100000000000000;
  v59 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v30 = sub_2146D9558();
  v40 = a7;
  v32 = v31;

  MEMORY[0x2160545D0](v30, v32);

  v33 = sub_2146D9618();
  *(v23 + 96) = v28;
  *(v23 + 104) = v29;
  *(v23 + 72) = v33;
  *(v23 + 80) = v34;
  sub_2146D91D8();

  v35 = v50;
  (*(v49 + 16))(v50, v52, AssociatedTypeWitness);
  LOBYTE(v59) = v44;
  v56 = v21;
  v57 = v46;
  v58 = v45;
  sub_2144F2C10(v35, &v59, &v56, AssociatedTypeWitness, v20);
  v36 = *(v53 + 8);

  WitnessTable = swift_getWitnessTable();
  sub_2140872F4(v43, v20, v54, v55, v40, v17, v36, WitnessTable);
  return (*(v51 + 8))(v20, v17);
}

uint64_t sub_214088248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v55 = a4;
  v57 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  v13 = *(v51 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v52 = &v41 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = a6;
  v49 = swift_getAssociatedConformanceWitness();
  v50 = AssociatedConformanceWitness;
  v16 = type metadata accessor for ContextualUnpackFileRequestMessage();
  v17 = *(v16 - 8);
  v53 = v16;
  v54 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  v21 = *a2;
  v48 = *(a2 + 8);
  v22 = *(a2 + 16);
  v46 = *a3;
  v47 = v22;
  v45 = sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  v43 = qword_280B35408;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2146E6910;
  v58 = a1;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v25 = sub_213FB17C8(&v58, MetatypeMetadata);
  v27 = v26;
  v28 = MEMORY[0x277D837D0];
  *(v23 + 56) = MEMORY[0x277D837D0];
  v29 = sub_213FB2DA0();
  v44 = a1;
  v30 = v29;
  *(v23 + 64) = v29;
  *(v23 + 32) = v25;
  *(v23 + 40) = v27;
  v58 = 47;
  v59 = 0xE100000000000000;
  v61 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v31 = sub_2146D9558();
  v42 = a5;
  v33 = v32;

  MEMORY[0x2160545D0](v31, v33);

  v34 = sub_2146D9618();
  *(v23 + 96) = v28;
  *(v23 + 104) = v30;
  *(v23 + 72) = v34;
  *(v23 + 80) = v35;
  sub_2146D91D8();

  v36 = v52;
  (*(v51 + 16))(v52, v55, AssociatedTypeWitness);
  LOBYTE(v61) = v46;
  v58 = v21;
  v59 = v48;
  v60 = v47;
  sub_2144F2C10(v36, &v61, &v58, AssociatedTypeWitness, v20);
  v37 = *(v56 + 8);

  v38 = v53;
  WitnessTable = swift_getWitnessTable();
  sub_213FB4E90(v44, v20, v42, v38, v37, WitnessTable, v57);
  return (*(v54 + 8))(v20, v38);
}

uint64_t sub_21408865C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v86 = a7;
  v84 = a1;
  v85 = a6;
  v87 = a5;
  v78 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = *(AssociatedTypeWitness - 8);
  v13 = *(v76 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v77 = v65 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v83 = a9;
  v88 = a8;
  v16 = swift_getAssociatedConformanceWitness();
  v80 = AssociatedTypeWitness;
  v74 = v16;
  v75 = AssociatedConformanceWitness;
  v17 = type metadata accessor for ContextualUnpackFileRequestMessage();
  v81 = *(v17 - 8);
  v82 = v17;
  v18 = *(v81 + 64);
  MEMORY[0x28223BE20](v17);
  v79 = v65 - v19;
  v20 = sub_2146D8B88();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v65 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v73 = v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = v65 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = v65 - v35;
  v37 = *(a2 + 8);
  v71 = *a2;
  v72 = v37;
  v70 = *(a2 + 16);
  v69 = *a4;
  v68 = sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  v65[1] = qword_280B35408;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_2146E68D0;
  v39 = *(v21 + 16);
  v39(v36, v87, v20);
  v40 = *(v21 + 56);
  v67 = v21 + 56;
  v66 = v40;
  v40(v36, 0, 1, v20);
  sub_213FB2E54(v36, v34, &unk_27C904F30, &unk_2146EFA20);
  v41 = (*(v21 + 48))(v34, 1, v20);
  v65[0] = v39;
  if (v41 == 1)
  {
    sub_213FB2DF4(v34, &unk_27C904F30, &unk_2146EFA20);
    v42 = 0xE300000000000000;
    v43 = 7104878;
  }

  else
  {
    (*(v21 + 32))(v27, v34, v20);
    v39(v25, v27, v20);
    v43 = sub_2146D9618();
    v42 = v44;
    (*(v21 + 8))(v27, v20);
  }

  sub_213FB2DF4(v36, &unk_27C904F30, &unk_2146EFA20);
  v45 = MEMORY[0x277D837D0];
  *(v38 + 56) = MEMORY[0x277D837D0];
  v46 = sub_213FB2DA0();
  *(v38 + 64) = v46;
  *(v38 + 32) = v43;
  *(v38 + 40) = v42;
  v47 = v84;
  v89 = v84;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v49 = sub_213FB17C8(&v89, MetatypeMetadata);
  *(v38 + 96) = v45;
  *(v38 + 104) = v46;
  *(v38 + 72) = v49;
  *(v38 + 80) = v50;
  v89 = 47;
  v90 = 0xE100000000000000;
  v51 = v71;
  v92 = v71;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v52 = sub_2146D9558();
  v54 = v53;

  MEMORY[0x2160545D0](v52, v54);

  v55 = sub_2146D9618();
  *(v38 + 136) = v45;
  *(v38 + 144) = v46;
  *(v38 + 112) = v55;
  *(v38 + 120) = v56;
  sub_2146D91D8();

  v57 = v77;
  v58 = v80;
  (*(v76 + 16))(v77, v78, v80);
  LOBYTE(v92) = v69;
  v89 = v51;
  v90 = v72;
  v91 = v70;
  v59 = v79;
  sub_2144F2C10(v57, &v92, &v89, v58, v79);
  v60 = v73;
  (v65[0])(v73, v87, v20);
  v66(v60, 0, 1, v20);
  v61 = *(v83 + 8);

  v62 = v82;
  WitnessTable = swift_getWitnessTable();
  sub_213FB49EC(v47, v59, 0, v60, v85, v86, v88, v62, v61, WitnessTable);
  sub_213FB2DF4(v60, &unk_27C904F30, &unk_2146EFA20);
  return (*(v81 + 8))(v59, v62);
}

uint64_t sub_214088D98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v63 = a7;
  v61 = a1;
  v62 = a3;
  v67 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v65 = a6;
  v12 = sub_2146D9A48();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v60 = &v54 - v14;
  v15 = sub_2146D8B88();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v54 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v54 - v28;
  v30 = *a2;
  v58 = a2[1];
  v59 = v30;
  LODWORD(v30) = *(a2 + 16);
  v56 = *a4;
  v57 = v30;
  v55 = sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  v54 = qword_280B35408;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2146E68D0;
  v32 = *(v16 + 16);
  v66 = a5;
  v32(v29, a5, v15);
  (*(v16 + 56))(v29, 0, 1, v15);
  sub_213FB2E54(v29, v27, &unk_27C904F30, &unk_2146EFA20);
  if ((*(v16 + 48))(v27, 1, v15) == 1)
  {
    sub_213FB2DF4(v27, &unk_27C904F30, &unk_2146EFA20);
    v33 = 0xE300000000000000;
    v34 = 7104878;
  }

  else
  {
    (*(v16 + 32))(v22, v27, v15);
    v32(v20, v22, v15);
    v34 = sub_2146D9618();
    v33 = v35;
    (*(v16 + 8))(v22, v15);
  }

  sub_213FB2DF4(v29, &unk_27C904F30, &unk_2146EFA20);
  v36 = MEMORY[0x277D837D0];
  *(v31 + 56) = MEMORY[0x277D837D0];
  v37 = sub_213FB2DA0();
  *(v31 + 64) = v37;
  *(v31 + 32) = v34;
  *(v31 + 40) = v33;
  v38 = v61;
  v69[0] = v61;
  v39 = v65;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v41 = sub_213FB17C8(v69, MetatypeMetadata);
  *(v31 + 96) = v36;
  *(v31 + 104) = v37;
  *(v31 + 72) = v41;
  *(v31 + 80) = v42;
  v69[0] = 47;
  v69[1] = 0xE100000000000000;
  v43 = v59;
  v68 = v59;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v44 = sub_2146D9558();
  v46 = v45;

  MEMORY[0x2160545D0](v44, v46);

  v47 = sub_2146D9618();
  *(v31 + 136) = v36;
  *(v31 + 144) = v37;
  *(v31 + 112) = v47;
  *(v31 + 120) = v48;
  sub_2146D91D8();

  MEMORY[0x28223BE20](v49);
  v51 = v63;
  v50 = v64;
  *(&v54 - 10) = v39;
  *(&v54 - 9) = v51;
  *(&v54 - 8) = v50;
  *(&v54 - 7) = v38;
  *(&v54 - 6) = v62;
  *(&v54 - 40) = v56;
  v52 = v58;
  *(&v54 - 4) = v43;
  *(&v54 - 3) = v52;
  *(&v54 - 16) = v57;
  *(&v54 - 1) = v66;
  sub_21408A4A8(v60);
  return sub_2146D9AC8();
}

uint64_t sub_2140892C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v58 = a8;
  v66 = a6;
  v67 = a7;
  v56 = a5;
  v55 = a4;
  v64 = a3;
  v65 = a2;
  v63 = a1;
  v60 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v61 = sub_2146D9A78();
  v59 = *(v61 - 8);
  v62 = *(v59 + 64);
  MEMORY[0x28223BE20](v61);
  v57 = &v46 - v11;
  v12 = sub_2146D8B88();
  v13 = *(v12 - 8);
  v54 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v52 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v46 - v17;
  v50 = a11;
  v49 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v23 = &v46 - v22;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v51 = type metadata accessor for ContextualUnpackFileRequestMessage();
  v53 = *(v51 - 8);
  v24 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  v26 = &v46 - v25;
  v48 = &v46 - v25;
  (*(v20 + 16))(v23, v55, AssociatedTypeWitness);
  v70[0] = v56;
  v68[0] = v66;
  v68[1] = v67;
  v69 = v58;
  sub_2144F2C10(v23, v70, v68, AssociatedTypeWitness, v26);
  v27 = *(v13 + 16);
  v47 = v18;
  v28 = v60;
  v27(v18, v60, v12);
  v29 = *(v13 + 56);
  v30 = v12;
  v46 = v12;
  v29(v18, 0, 1, v12);
  v31 = v52;
  v27(v52, v28, v30);
  v32 = v59;
  v33 = v57;
  v34 = v61;
  (*(v59 + 16))(v57, v63, v61);
  v35 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v36 = (v54 + v35 + *(v32 + 80)) & ~*(v32 + 80);
  v37 = swift_allocObject();
  v38 = v49;
  v39 = v50;
  *(v37 + 16) = v49;
  *(v37 + 24) = v39;
  (*(v13 + 32))(v37 + v35, v31, v46);
  (*(v32 + 32))(v37 + v36, v33, v34);
  v40 = *(v39 + 8);

  v41 = v51;
  WitnessTable = swift_getWitnessTable();
  v43 = v48;
  v44 = v47;
  sub_213FB49EC(v64, v48, 0, v47, sub_21408A890, v37, v38, v41, v40, WitnessTable);

  sub_213FB2DF4(v44, &unk_27C904F30, &unk_2146EFA20);
  return (*(v53 + 8))(v43, v41);
}

uint64_t sub_214089840(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v114 = a5;
  v115 = a2;
  v112 = a4;
  v113 = a1;
  v108 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v8 = sub_2146D9A38();
  v106 = *(v8 - 8);
  v107 = v8;
  v9 = *(v106 + 64);
  MEMORY[0x28223BE20](v8);
  v105 = v89 - v10;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F40, &qword_21477E730);
  v11 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v109 = v89 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v101 = v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v102 = v89 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v100 = v89 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v98 = v89 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v89 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v89 - v26;
  v28 = sub_2146D8B88();
  v110 = *(v28 - 8);
  v29 = *(v110 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v97 = v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v96 = v89 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v111 = v89 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = v89 - v37;
  v39 = *(a6 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v36);
  v104 = v89 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = v89 - v43;
  v45 = sub_2146DA9C8();
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v48 = (v89 - v47);
  (*(v49 + 16))(v89 - v47, v113, v45);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v116 = *v48;
    sub_2146D9A78();
    return sub_2146D9A68();
  }

  v94 = v7;
  v93 = v39;
  v51 = *(v39 + 32);
  v91 = v44;
  v92 = a6;
  v51(v44, v48, a6);
  sub_2146D9B88();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v99 = qword_280B35410;
  v89[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_2146EA710;
  sub_213FB2E54(v115, v27, &unk_27C904F30, &unk_2146EFA20);
  v53 = v110;
  v113 = *(v110 + 48);
  v54 = v113(v27, 1, v28);
  v55 = v112;
  if (v54 == 1)
  {
    sub_213FB2DF4(v27, &unk_27C904F30, &unk_2146EFA20);
    v56 = 0xE300000000000000;
    v57 = 7104878;
  }

  else
  {
    (*(v53 + 32))(v38, v27, v28);
    (*(v53 + 16))(v111, v38, v28);
    v57 = sub_2146D9618();
    v56 = v58;
    (*(v53 + 8))(v38, v28);
  }

  *(v52 + 56) = MEMORY[0x277D837D0];
  v95 = sub_213FB2DA0();
  *(v52 + 64) = v95;
  *(v52 + 32) = v57;
  *(v52 + 40) = v56;
  sub_2146D91D8();

  v90 = *(v53 + 16);
  v90(v25, v55, v28);
  v89[0] = *(v53 + 56);
  (v89[0])(v25, 0, 1, v28);
  v59 = *(v103 + 48);
  v60 = v109;
  sub_213FB2E54(v115, v109, &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(v25, v60 + v59, &unk_27C904F30, &unk_2146EFA20);
  v61 = v113;
  if (v113(v60, 1, v28) != 1)
  {
    v62 = v98;
    sub_213FB2E54(v60, v98, &unk_27C904F30, &unk_2146EFA20);
    if (v61(v60 + v59, 1, v28) != 1)
    {
      v86 = v60 + v59;
      v87 = v111;
      (*(v53 + 32))(v111, v86, v28);
      sub_21408A9B4();
      LODWORD(v103) = sub_2146D9578();
      v88 = *(v53 + 8);
      v88(v87, v28);
      sub_213FB2DF4(v25, &unk_27C904F30, &unk_2146EFA20);
      v88(v62, v28);
      sub_213FB2DF4(v109, &unk_27C904F30, &unk_2146EFA20);
      if (v103)
      {
        goto LABEL_21;
      }

LABEL_14:
      LODWORD(v109) = sub_2146D9BA8();
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_2146E6910;
      v64 = v100;
      sub_213FB2E54(v115, v100, &unk_27C904F30, &unk_2146EFA20);
      if (v113(v64, 1, v28) == 1)
      {
        sub_213FB2DF4(v64, &unk_27C904F30, &unk_2146EFA20);
        v65 = 0xE300000000000000;
        v66 = 7104878;
        v67 = v112;
        v68 = v90;
      }

      else
      {
        v69 = v96;
        (*(v53 + 32))(v96, v64, v28);
        v68 = v90;
        v90(v111, v69, v28);
        v70 = sub_2146D9618();
        v71 = v53;
        v66 = v70;
        v65 = v72;
        (*(v71 + 8))(v69, v28);
        v67 = v112;
      }

      v73 = v95;
      *(v63 + 56) = MEMORY[0x277D837D0];
      *(v63 + 64) = v73;
      *(v63 + 32) = v66;
      *(v63 + 40) = v65;
      v74 = v102;
      v68(v102, v67, v28);
      (v89[0])(v74, 0, 1, v28);
      v75 = v101;
      sub_213FB2E54(v74, v101, &unk_27C904F30, &unk_2146EFA20);
      if (v113(v75, 1, v28) == 1)
      {
        sub_213FB2DF4(v75, &unk_27C904F30, &unk_2146EFA20);
        v76 = 0xE300000000000000;
        v77 = 7104878;
      }

      else
      {
        v78 = v110;
        v79 = v97;
        (*(v110 + 32))(v97, v75, v28);
        v68(v111, v79, v28);
        v77 = sub_2146D9618();
        v76 = v80;
        (*(v78 + 8))(v79, v28);
      }

      sub_213FB2DF4(v74, &unk_27C904F30, &unk_2146EFA20);
      v81 = v95;
      *(v63 + 96) = MEMORY[0x277D837D0];
      *(v63 + 104) = v81;
      *(v63 + 72) = v77;
      *(v63 + 80) = v76;
      sub_2146D91D8();

      goto LABEL_21;
    }

    sub_213FB2DF4(v25, &unk_27C904F30, &unk_2146EFA20);
    (*(v53 + 8))(v62, v28);
LABEL_13:
    sub_213FB2DF4(v60, &qword_27C904F40, &qword_21477E730);
    goto LABEL_14;
  }

  sub_213FB2DF4(v25, &unk_27C904F30, &unk_2146EFA20);
  if (v61(v60 + v59, 1, v28) != 1)
  {
    goto LABEL_13;
  }

  sub_213FB2DF4(v60, &unk_27C904F30, &unk_2146EFA20);
LABEL_21:
  v82 = v93;
  v83 = v91;
  v84 = v92;
  (*(v93 + 16))(v104, v91, v92);
  sub_2146D9A78();
  v85 = v105;
  sub_2146D9A58();
  (*(v106 + 8))(v85, v107);
  if (v108)
  {
    v116 = 0;
    sub_2146D9A68();
  }

  return (*(v82 + 8))(v83, v84);
}

uint64_t sub_21408A4A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v3 = sub_2146D9A48();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t BlastDoorService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t BlastDoorService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_21408A5E8()
{
  result = qword_27C904F10;
  if (!qword_27C904F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904F10);
  }

  return result;
}

unint64_t sub_21408A63C()
{
  result = qword_27C904F18;
  if (!qword_27C904F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904F18);
  }

  return result;
}

uint64_t dispatch thunk of BlastDoorService.unpack<A>(_:from:validatorContext:)()
{
  return (*(*v0 + 144))();
}

{
  return (*(*v0 + 160))();
}

uint64_t dispatch thunk of BlastDoorService.unpack<A>(_:from:with:validatorContext:_:)()
{
  return (*(*v0 + 176))();
}

{
  return (*(*v0 + 184))();
}

uint64_t sub_21408A890(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2, int a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(sub_2146D8B88() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = v10 + *(v9 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v12 = *(sub_2146D9A78() - 8);
  v13 = v3 + ((v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_214089840(a1, a2, a3, v3 + v10, v13, v7);
}

unint64_t sub_21408A9B4()
{
  result = qword_27C904F48;
  if (!qword_27C904F48)
  {
    sub_2146D8B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904F48);
  }

  return result;
}

uint64_t sub_21408AA0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F50, &unk_2146F08E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21408AA7C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20) - 8);
  v8 = (*(v7 + 80) + 73) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_2146D9438() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_214086AFC(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v1 + v8, *(v1 + v9), v1 + v11, *(v1 + v12), *(v1 + v12 + 8), v1 + ((v12 + *(*(v4 - 1) + 80) + 16) & ~*(*(v4 - 1) + 80)), v3, v4, v5, v6);
}

uint64_t sub_21408AC04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_21408AC6C(uint64_t a1)
{
  v2 = type metadata accessor for EncoderErrorResponseMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21408ACC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncoderErrorResponseMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21408AD2C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

BOOL sub_21408AD54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_21408AD90()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x216055860](1);
  }

  return MEMORY[0x216055860](v1);
}

uint64_t sub_21408ADD8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2146DA958();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x216055860](1);
    v3 = v1;
  }

  MEMORY[0x216055860](v3);
  return sub_2146DA9B8();
}

uint64_t sub_21408AE38()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2146DA958();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x216055860](1);
    v3 = v1;
  }

  MEMORY[0x216055860](v3);
  return sub_2146DA9B8();
}

uint64_t sub_21408AE98()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x216055860](1);
  }

  return MEMORY[0x216055860](v1);
}

uint64_t sub_21408AEE0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2146DA958();
  if (v2)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x216055860](1);
  }

  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

BOOL sub_21408AF40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

id sub_21408AF7C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9BlastDoor21OverridingFileManager_overrides] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_21408AFCC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC9BlastDoor21OverridingFileManager_overrides] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for OverridingFileManager();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_21408B00C(uint64_t *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F88, qword_2146F0910);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904190, &qword_2146EAAE8) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2146EA710;
  v11 = v10 + v9;
  v12 = v7[14];
  *v11 = v6;
  *(v11 + 8) = a1;
  v13 = sub_2146D8958();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11 + v12, a2, v13);
  v15 = sub_2140461F4(v10);
  swift_setDeallocating();
  sub_213FB2DF4(v11, &qword_27C904190, &qword_2146EAAE8);
  swift_deallocClassInstance();
  *&v5[OBJC_IVAR____TtC9BlastDoor21OverridingFileManager_overrides] = v15;
  v18.receiver = v5;
  v18.super_class = v2;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v14 + 8))(a2, v13);
  return v16;
}

id sub_21408B1E8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F88, qword_2146F0910);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904190, &qword_2146EAAE8) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2146EA710;
  v10 = v9 + v8;
  v11 = v6[14];
  *v10 = v4;
  *(v10 + 8) = v5;
  v12 = sub_2146D8958();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v10 + v11, a2, v12);
  v14 = sub_2140461F4(v9);
  swift_setDeallocating();
  sub_213FB2DF4(v10, &qword_27C904190, &qword_2146EAAE8);
  swift_deallocClassInstance();
  *&v2[OBJC_IVAR____TtC9BlastDoor21OverridingFileManager_overrides] = v14;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for OverridingFileManager();
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v13 + 8))(a2, v12);
  return v15;
}

uint64_t sub_21408B3B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v4 = sub_2146D8B88();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2146D8958();
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v34 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  v21 = *a1;
  v22 = *(a1 + 8);
  v23 = *(v2 + OBJC_IVAR____TtC9BlastDoor21OverridingFileManager_overrides);
  if (*(v23 + 16))
  {
    v24 = sub_21408C56C(v21, v22);
    if (v25)
    {
      (*(v37 + 16))(v18, *(v23 + 56) + *(v37 + 72) * v24, v8);
      v26 = *(v37 + 32);
      v26(v20, v18, v8);
      v27 = v36;
      v26(v36, v20, v8);
      return (*(v37 + 56))(v27, 0, 1, v8);
    }
  }

  if ((v22 & 1) == 0 && v21 == 99)
  {
    if (*(v23 + 16))
    {
      v28 = sub_21408C56C(0, 1);
      if (v29)
      {
        (*(v37 + 16))(v12, *(v23 + 56) + *(v37 + 72) * v28, v8);
        (*(v37 + 32))(v15, v12, v8);
        v38 = 0x2D6D657469;
        v39 = 0xE500000000000000;
        sub_2146D8B78();
        sub_21408DE90(&qword_27C918120, MEMORY[0x277CC95F0]);
        v30 = sub_2146DA428();
        MEMORY[0x2160545D0](v30);

        (*(v35 + 8))(v7, v4);
        v27 = v36;
        sub_2146D88A8();

        (*(v37 + 8))(v15, v8);
        return (*(v37 + 56))(v27, 0, 1, v8);
      }
    }
  }

  v32 = v36;
  v33 = *(v37 + 56);

  return v33(v32, 1, 1, v8);
}

uint64_t sub_21408B890@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2146D8958();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = *&v1[OBJC_IVAR____TtC9BlastDoor21OverridingFileManager_overrides];
  if (*(v16 + 16) && (v17 = sub_21408C56C(0, 1), (v18 & 1) != 0))
  {
    (*(v5 + 16))(v15, *(v16 + 56) + *(v5 + 72) * v17, v4);
    (*(v5 + 56))(v15, 0, 1, v4);
    return (*(v5 + 32))(a1, v15, v4);
  }

  else
  {
    v20 = *(v5 + 56);
    v20(v15, 1, 1, v4);
    if (*(v16 + 16) && (v21 = sub_21408C56C(99, 0), (v22 & 1) != 0))
    {
      (*(v5 + 16))(v8, *(v16 + 56) + *(v5 + 72) * v21, v4);
      sub_2146D88B8();
      (*(v5 + 8))(v8, v4);
      v20(v13, 0, 1, v4);
      (*(v5 + 32))(a1, v13, v4);
      result = (*(v5 + 48))(v15, 1, v4);
    }

    else
    {
      v20(v13, 1, 1, v4);
      v23 = type metadata accessor for OverridingFileManager();
      v26.receiver = v2;
      v26.super_class = v23;
      v24 = objc_msgSendSuper2(&v26, sel_temporaryDirectory);
      sub_2146D88E8();

      v25 = *(v5 + 48);
      if (v25(v13, 1, v4) != 1)
      {
        sub_213FB2DF4(v13, &unk_27C9131A0, &unk_2146E9D10);
      }

      result = (v25)(v15, 1, v4);
    }

    if (result != 1)
    {
      return sub_213FB2DF4(v15, &unk_27C9131A0, &unk_2146E9D10);
    }
  }

  return result;
}

void sub_21408BBEC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  v35 = a5;
  v33 = a3;
  v34 = a2;
  v40 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = sub_2146D8958();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  v39 = 0;
  v36 = v5;
  sub_21408B3B8(&v38, v14);
  v20 = *(v16 + 48);
  if (v20(v14, 1, v15) == 1)
  {
    sub_213FB2DF4(v14, &unk_27C9131A0, &unk_2146E9D10);
    sub_21407E1D8(v33, v12);
    if (v20(v12, 1, v15) == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = sub_2146D8898();
      (*(v16 + 8))(v12, v15);
    }

    v38 = 0;
    v26 = type metadata accessor for OverridingFileManager();
    v37.receiver = v36;
    v37.super_class = v26;
    v27 = objc_msgSendSuper2(&v37, sel_URLForDirectory_inDomain_appropriateForURL_create_error_, a1, v34, v21, a4 & 1, &v38);

    v28 = v38;
    if (v27)
    {
      sub_2146D88E8();
      v29 = v28;
    }

    else
    {
      v30 = v38;
      sub_2146D8838();

      swift_willThrow();
    }
  }

  else
  {
    v22 = *(v16 + 32);
    v22(v19, v14, v15);
    if (a4)
    {
      v23 = sub_2146D8898();
      v38 = 0;
      v24 = [v36 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:{&v38, v33}];

      if (!v24)
      {
        v31 = v38;
        sub_2146D8838();

        swift_willThrow();
        (*(v16 + 8))(v19, v15);
        goto LABEL_14;
      }

      v25 = v38;
    }

    v22(v35, v19, v15);
  }

LABEL_14:
  v32 = *MEMORY[0x277D85DE8];
}

id sub_21408C1BC()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_21408C250()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OverridingFileManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21408C2B8(unsigned int a1)
{
  v3 = MEMORY[0x216055840](*(v1 + 40), a1, 4);

  return sub_21408C71C(a1, v3);
}

unint64_t sub_21408C300(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2146DA958();
  sub_2146D9698();
  v6 = sub_2146DA9B8();

  return sub_21408C788(a1, a2, v6);
}

unint64_t sub_21408C378(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2146D9E78();

  return sub_21408C840(a1, v5);
}

unint64_t sub_21408C3BC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2146DA958();
  type metadata accessor for CFString(0);
  sub_21408DE90(&qword_280B34D80, type metadata accessor for CFString);
  sub_2146D8CB8();
  v4 = sub_2146DA9B8();

  return sub_21408C908(a1, v4);
}

unint64_t sub_21408C470(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2146D8B88();
  sub_21408DE90(&unk_27C914340, MEMORY[0x277CC95F0]);
  v5 = sub_2146D94D8();

  return sub_21408CA14(a1, v5);
}

unint64_t sub_21408C508(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2146DA008();
  v5 = sub_2146D94D8();

  return sub_21408CBD4(a1, v5);
}

unint64_t sub_21408C56C(uint64_t a1, char a2)
{
  v5 = *(v2 + 40);
  sub_2146DA958();
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    MEMORY[0x216055860](1);
    v6 = a1;
  }

  MEMORY[0x216055860](v6);
  v7 = sub_2146DA9B8();

  return sub_21408CD6C(a1, a2 & 1, v7);
}

uint64_t sub_21408C67C(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  v7 = sub_2146DA958();
  a2(v7);
  sub_2146D9698();

  v8 = sub_2146DA9B8();

  return a3(a1, v8);
}

unint64_t sub_21408C71C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21408C788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2146DA6A8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21408C840(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2140538A4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x216054D80](v9, a1);
      sub_21408DE3C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21408C908(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_21408DE90(&qword_280B34D80, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2146D8CA8();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21408CA14(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_2146D8B88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_21408DE90(&qword_27C904F48, MEMORY[0x277CC95F0]);
      v16 = sub_2146D9578();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_21408CBD4(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_2146DA008();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_2146D9578();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_21408CD6C(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      if (*(v8 + 8) == 1)
      {
        if (a2)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && *v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21408CDF4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEB00000000657079;
      v8 = 0x546567617373654DLL;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000011;
          v7 = 0x80000002147882F0;
          break;
        case 2:
          v8 = 0xD00000000000001BLL;
          v7 = 0x8000000214788310;
          break;
        case 3:
          v7 = 0xE400000000000000;
          v8 = 1262770030;
          break;
        case 4:
          v7 = 0xE600000000000000;
          v8 = 0x4B4457524C6ELL;
          break;
        case 5:
          v7 = 0xE400000000000000;
          v8 = 1263359854;
          break;
        case 6:
          v8 = 0xD000000000000012;
          v7 = 0x8000000214788340;
          break;
        case 7:
          v8 = 0xD000000000000012;
          v7 = 0x8000000214788360;
          break;
        case 8:
          v7 = 0xE400000000000000;
          v8 = 1146241390;
          break;
        case 9:
          v7 = 0xE400000000000000;
          v8 = 1262576493;
          break;
        case 0xA:
          v7 = 0xE400000000000000;
          v8 = 1262838637;
          break;
        case 0xB:
          v8 = 0x4B464E636DLL;
          v7 = 0xE500000000000000;
          break;
        case 0xC:
          v7 = 0xE500000000000000;
          v8 = 0x4B4649636DLL;
          break;
        case 0xD:
          v7 = 0xE400000000000000;
          v8 = 1145655918;
          break;
        case 0xE:
          v7 = 0xE300000000000000;
          v8 = 4932718;
          break;
        case 0xF:
          v7 = 0xE300000000000000;
          v8 = 6901362;
          break;
        case 0x10:
          v7 = 0xE200000000000000;
          v8 = 22126;
          break;
        case 0x11:
          v7 = 0xE300000000000000;
          v8 = 5664368;
          break;
        case 0x12:
          v7 = 0xE400000000000000;
          v8 = 1263038064;
          break;
        case 0x13:
          v7 = 0xE400000000000000;
          v8 = 1448559214;
          break;
        case 0x14:
          v8 = 5003118;
          v7 = 0xE300000000000000;
          break;
        case 0x15:
          v8 = 4997742;
          v7 = 0xE300000000000000;
          break;
        case 0x16:
          v8 = 1448364142;
          goto LABEL_36;
        case 0x17:
          v7 = 0xE300000000000000;
          v8 = 5002350;
          break;
        case 0x18:
          v7 = 0xE400000000000000;
          v8 = 1447118958;
          break;
        case 0x19:
          v7 = 0xE300000000000000;
          v8 = 4997486;
          break;
        case 0x1A:
          v8 = 1447643246;
          goto LABEL_36;
        case 0x1B:
          v8 = 4999534;
          v7 = 0xE300000000000000;
          break;
        case 0x1C:
          v8 = 1263693424;
          goto LABEL_36;
        case 0x1D:
          v8 = 1263693411;
LABEL_36:
          v7 = 0xE400000000000000;
          break;
        case 0x1E:
          v7 = 0xE400000000000000;
          v8 = 1263693409;
          break;
        case 0x1F:
          v8 = 0x6D614E7473726946;
          v7 = 0xE900000000000065;
          break;
        case 0x20:
          v7 = 0xE800000000000000;
          v8 = 0x656D614E7473614CLL;
          break;
        default:
          break;
      }

      v9 = 0x546567617373654DLL;
      v10 = 0xEB00000000657079;
      switch(a1)
      {
        case 1:
          v10 = 0x80000002147882F0;
          if (v8 == 0xD000000000000011)
          {
            goto LABEL_97;
          }

          goto LABEL_98;
        case 2:
          v10 = 0x8000000214788310;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 3:
          v10 = 0xE400000000000000;
          if (v8 != 1262770030)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 4:
          v10 = 0xE600000000000000;
          if (v8 != 0x4B4457524C6ELL)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 5:
          v10 = 0xE400000000000000;
          if (v8 != 1263359854)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 6:
          v10 = 0x8000000214788340;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 7:
          v10 = 0x8000000214788360;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 8:
          v10 = 0xE400000000000000;
          if (v8 != 1146241390)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 9:
          v10 = 0xE400000000000000;
          if (v8 != 1262576493)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 10:
          v10 = 0xE400000000000000;
          if (v8 != 1262838637)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 11:
          v10 = 0xE500000000000000;
          if (v8 != 0x4B464E636DLL)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 12:
          v10 = 0xE500000000000000;
          if (v8 != 0x4B4649636DLL)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 13:
          v10 = 0xE400000000000000;
          if (v8 != 1145655918)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 14:
          v10 = 0xE300000000000000;
          if (v8 != 4932718)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 15:
          v10 = 0xE300000000000000;
          if (v8 != 6901362)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 16:
          v10 = 0xE200000000000000;
          if (v8 != 22126)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 17:
          v10 = 0xE300000000000000;
          if (v8 != 5664368)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 18:
          v10 = 0xE400000000000000;
          if (v8 != 1263038064)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 19:
          v10 = 0xE400000000000000;
          if (v8 != 1448559214)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 20:
          v11 = 5003118;
          goto LABEL_72;
        case 21:
          v11 = 4997742;
          goto LABEL_72;
        case 22:
          v13 = 1448364142;
          goto LABEL_102;
        case 23:
          v10 = 0xE300000000000000;
          v12 = 21614;
          goto LABEL_92;
        case 24:
          v10 = 0xE400000000000000;
          if (v8 != 1447118958)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 25:
          v10 = 0xE300000000000000;
          v12 = 16750;
LABEL_92:
          if (v8 != (v12 | 0x4C0000))
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 26:
          v13 = 1447643246;
          goto LABEL_102;
        case 27:
          v11 = 4999534;
LABEL_72:
          v10 = 0xE300000000000000;
          if (v8 != v11)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 28:
          v13 = 1263693424;
LABEL_102:
          v10 = 0xE400000000000000;
          if (v8 != v13)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 29:
          v9 = 1263693411;
          v10 = 0xE400000000000000;
          goto LABEL_96;
        case 30:
          v10 = 0xE400000000000000;
          if (v8 != 1263693409)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 31:
          v10 = 0xE900000000000065;
          if (v8 != 0x6D614E7473726946)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 32:
          v10 = 0xE800000000000000;
          if (v8 != 0x656D614E7473614CLL)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        default:
LABEL_96:
          if (v8 != v9)
          {
            goto LABEL_98;
          }

LABEL_97:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_98:
          v14 = sub_2146DA6A8();

          if (v14)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_21408D4D4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE100000000000000;
      v8 = 99;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 100;
          break;
        case 2:
          v8 = 115;
          break;
        case 3:
          v8 = 114;
          break;
        case 4:
          v8 = 112;
          break;
        case 5:
          v7 = 0xE200000000000000;
          v8 = 29296;
          break;
        case 6:
          v7 = 0xE200000000000000;
          v8 = 29795;
          break;
        case 7:
          v7 = 0xE200000000000000;
          v8 = 27507;
          break;
        case 8:
          v7 = 0xE200000000000000;
          v8 = 27504;
          break;
        case 9:
          v7 = 0xE200000000000000;
          v8 = 27501;
          break;
        case 0xA:
          v7 = 0xE200000000000000;
          v8 = 25699;
          break;
        case 0xB:
          v7 = 0xE200000000000000;
          v8 = 28777;
          break;
        case 0xC:
          v7 = 0xE200000000000000;
          v8 = 26995;
          break;
        default:
          break;
      }

      v9 = 0xE100000000000000;
      v10 = 99;
      switch(a1)
      {
        case 1:
          if (v8 == 100)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        case 2:
          if (v8 != 115)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 3:
          if (v8 != 114)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 4:
          if (v8 != 112)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 5:
          v9 = 0xE200000000000000;
          if (v8 != 29296)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 6:
          v9 = 0xE200000000000000;
          if (v8 != 29795)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 7:
          v9 = 0xE200000000000000;
          if (v8 != 27507)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 8:
          v9 = 0xE200000000000000;
          if (v8 != 27504)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 9:
          v9 = 0xE200000000000000;
          if (v8 != 27501)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 10:
          v9 = 0xE200000000000000;
          v10 = 25699;
          goto LABEL_38;
        case 11:
          v9 = 0xE200000000000000;
          if (v8 != 28777)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 12:
          v9 = 0xE200000000000000;
          if (v8 != 26995)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        default:
LABEL_38:
          if (v8 != v10)
          {
            goto LABEL_40;
          }

LABEL_39:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_40:
          v11 = sub_2146DA6A8();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_21408D760(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xED00007874612E65;
      v8 = 0x6C7070612E6D6F63;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x612E63696C627570;
          v7 = 0xEB00000000696376;
          break;
        case 2:
          v8 = 0x682E63696C627570;
          v7 = 0xEB00000000636965;
          break;
        case 3:
          v7 = 0xEB00000000316673;
          goto LABEL_21;
        case 4:
          v8 = 0x6D2E63696C627570;
          v7 = 0xEB00000000316669;
          break;
        case 5:
          v7 = 0xEB00000000666976;
          v8 = 0x612E63696C627570;
          break;
        case 6:
          v8 = 0x612E63696C627570;
          v7 = 0xEB00000000736976;
          break;
        case 7:
          v7 = 0xEB00000000666965;
          v8 = 0x682E63696C627570;
          break;
        case 8:
          v8 = 0xD000000000000010;
          v7 = 0x8000000214788090;
          break;
        case 9:
          v8 = 0x6A2E63696C627570;
          v7 = 0xEF7478652D676570;
          break;
        case 0xA:
          v7 = 0xEA00000000006F70;
LABEL_21:
          v8 = 0x6D2E63696C627570;
          break;
        case 0xB:
          v8 = 0x6A2E63696C627570;
          v7 = 0xEB00000000676570;
          break;
        case 0xC:
          v7 = 0xEA0000000000676ELL;
          v8 = 0x702E63696C627570;
          break;
        case 0xD:
          v8 = 0x772E63696C627570;
          v7 = 0xEB00000000706265;
          break;
        case 0xE:
          v8 = 0x742E63696C627570;
          v7 = 0xEB00000000666669;
          break;
        case 0xF:
          v7 = 0xEA0000000000706DLL;
          v8 = 0x622E63696C627570;
          break;
        case 0x10:
          v8 = 0x672E63696C627570;
          v7 = 0xEA00000000006669;
          break;
        case 0x11:
          v8 = 0xD000000000000019;
          v7 = 0x8000000214788110;
          break;
        case 0x12:
          v8 = 0xD000000000000018;
          v7 = 0x8000000214788130;
          break;
        case 0x13:
          v7 = 0xE700000000000000;
          v8 = 0x6E776F6E6B6E55;
          break;
        default:
          break;
      }

      v9 = 0x6C7070612E6D6F63;
      v10 = 0xED00007874612E65;
      switch(a1)
      {
        case 1:
          v11 = 0x612E63696C627570;
          v12 = 6906742;
          goto LABEL_47;
        case 2:
          v11 = 0x682E63696C627570;
          v12 = 6515045;
          goto LABEL_47;
        case 3:
          v10 = 0xEB00000000316673;
          goto LABEL_52;
        case 4:
          v11 = 0x6D2E63696C627570;
          v12 = 3237481;
          goto LABEL_47;
        case 5:
          v10 = 0xEB00000000666976;
          if (v8 != 0x612E63696C627570)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        case 6:
          v11 = 0x612E63696C627570;
          v12 = 7563638;
          goto LABEL_47;
        case 7:
          v10 = 0xEB00000000666965;
          if (v8 != 0x682E63696C627570)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        case 8:
          v9 = 0xD000000000000010;
          v10 = 0x8000000214788090;
          goto LABEL_55;
        case 9:
          v10 = 0xEF7478652D676570;
          if (v8 != 0x6A2E63696C627570)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        case 10:
          v10 = 0xEA00000000006F70;
LABEL_52:
          if (v8 != 0x6D2E63696C627570)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        case 11:
          v11 = 0x6A2E63696C627570;
          v12 = 6776176;
          goto LABEL_47;
        case 12:
          v10 = 0xEA0000000000676ELL;
          if (v8 != 0x702E63696C627570)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        case 13:
          v11 = 0x772E63696C627570;
          v12 = 7365221;
          goto LABEL_47;
        case 14:
          v11 = 0x742E63696C627570;
          v12 = 6710889;
LABEL_47:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v8 != v11)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        case 15:
          v10 = 0xEA0000000000706DLL;
          if (v8 != 0x622E63696C627570)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        case 16:
          v10 = 0xEA00000000006669;
          if (v8 != 0x672E63696C627570)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        case 17:
          v10 = 0x8000000214788110;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        case 18:
          v10 = 0x8000000214788130;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        case 19:
          v10 = 0xE700000000000000;
          if (v8 != 0x6E776F6E6B6E55)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        default:
LABEL_55:
          if (v8 != v9)
          {
            goto LABEL_57;
          }

LABEL_56:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_57:
          v13 = sub_2146DA6A8();

          if (v13)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_21408DD98()
{
  result = qword_27C904F90;
  if (!qword_27C904F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904F90);
  }

  return result;
}

uint64_t sub_21408DE90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21408DED8()
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

uint64_t sub_21408DF48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
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

uint64_t sub_21408DFB0(uint64_t *a1)
{
  sub_2140325F8(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21408E058(uint64_t a1)
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

uint64_t (*sub_21408E194(void *a1))(uint64_t *a1, char a2)
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

uint64_t sub_21408E22C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v13 = *a1;
    v9 = *v4;
    v10 = *(v4 + 8);
    v14 = *(v4 + 24);
    v15 = 0x6E776F6E6B6E753CLL;
    v16 = 0xE90000000000003ELL;
    v17 = 0xD00000000000001CLL;
    v18 = 0x800000021478A360;
    if (v9(&v13, &v14, &v15))
    {
      v11 = a1[2];

      *(v4 + 16) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v13 = *a1;
  v6 = *v4;
  v5 = *(v4 + 8);
  v14 = *(v4 + 24);
  v15 = 0x6E776F6E6B6E753CLL;
  v16 = 0xE90000000000003ELL;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;

  if ((v6(&v13, &v14, &v15) & 1) == 0)
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

  v7 = a1[2];

  *(v4 + 16) = v3;
}

uint64_t sub_21408E40C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_21408E458(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
}

__n128 sub_21408E4C4(__n128 *a1)
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

void (*sub_21408E51C(uint64_t *a1))(uint64_t **a1, char a2)
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

void sub_21408E5B4(uint64_t **a1, char a2)
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
    v10 = (*a1)[2];

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    v11 = v2[1];
    v12 = v2[2];
  }

  else
  {
    v13 = *(v3 + 8);

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
  }

  free(v2);
}

unint64_t sub_21408E674@<X0>(uint64_t a1@<X8>)
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
  *(v5 + 16) = sub_21408E9A0;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21408E9E0;
  *(v7 + 24) = v5;
  *(inited + 40) = v7;
  return sub_2140433DC(inited, a1);
}

unint64_t sub_21408E7D8(uint64_t a1)
{
  *(a1 + 8) = sub_21408E808();
  result = sub_21408E85C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21408E808()
{
  result = qword_27C904F98;
  if (!qword_27C904F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904F98);
  }

  return result;
}

unint64_t sub_21408E85C()
{
  result = qword_27C904FA0;
  if (!qword_27C904FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904FA0);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21408E8C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_21408E90C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21408E960(uint64_t *a1, char *a2, char *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a3;
  v7 = *a2;
  return sub_2143BD420(v3, v4, &v7, v5) & 1;
}

uint64_t sub_21408E9A0(uint64_t *a1, char *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(v2 + 16);
  v7 = *a2;
  return sub_2143BD420(v3, v4, &v7, v5) & 1;
}

uint64_t sub_21408EA0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  type metadata accessor for FileDescriptor();
  v7 = swift_allocObject();
  v10 = 0;
  v9[2] = &v10;
  sub_21408ED74(sub_21408ED58, v9, v5, v4, &v10);

  if (v2)
  {

    return swift_deallocPartialClassInstance();
  }

  else
  {

    *(v7 + 16) = v10;
    *a2 = v7;
  }

  return result;
}

uint64_t sub_21408EAF8()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v0;
  if (archive_read_new())
  {
    lseek(*(v2 + 16), 0, 0);
    archive_read_support_format_zip_seekable();
    if (!archive_read_open_fd())
    {
      archive_read_next_header();
      sub_21408F29C();
      swift_allocError();
      *v5 = 6;
      swift_willThrow();
      archive_read_free();
      goto LABEL_7;
    }

    archive_read_free();
    sub_21408F29C();
    swift_allocError();
    *v3 = 1;
  }

  else
  {
    sub_21408F29C();
    swift_allocError();
    *v4 = 0;
  }

  swift_willThrow();
LABEL_7:
  v6 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_21408ED74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = sub_2146D8958();
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v36);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  if (!a4)
  {
    v37 = 47;
    v38 = 0xE100000000000000;
    v39 = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2140610B4();
    v35 = a5;
    v22 = sub_2146D9558();
    v24 = v23;

    MEMORY[0x2160545D0](v22, v24);

    sub_2146D8888();

    MEMORY[0x28223BE20](v25);
    *(&v35 - 2) = a1;
    *(&v35 - 1) = a2;
    sub_2146D88D8();
    (*(v11 + 8))(v17, v36);
    return;
  }

  v35 = a1;

  sub_2146A5650();
  if (v5)
  {
    goto LABEL_18;
  }

  v37 = 47;
  v38 = 0xE100000000000000;
  v39 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v18 = sub_2146D9558();
  v20 = v19;

  MEMORY[0x2160545D0](v18, v20);

  sub_2146D8888();

  MEMORY[0x28223BE20](v21);
  *(&v35 - 2) = v35;
  *(&v35 - 1) = a2;
  sub_2146D88D8();
  (*(v11 + 8))(v15, v36);
  if (*(a4 + 40))
  {
    sub_2146D9B88();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    sub_2146D91D8();
    goto LABEL_18;
  }

  v26 = *(a4 + 32);
  v27 = sandbox_extension_release();
  if (v27 == sub_2146D93B8())
  {
    *(a4 + 32) = 0;
    *(a4 + 40) = 1;
LABEL_18:

    return;
  }

  v28 = MEMORY[0x2160542A0]();
  sub_21408FA04();
  v29 = swift_allocError();
  *v30 = v28;
  *(v30 + 4) = 0;
  swift_willThrow();
  if (*(a4 + 40))
  {
    sub_2146D9B88();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    sub_2146D91D8();
    goto LABEL_17;
  }

  v31 = *(a4 + 32);
  v32 = sandbox_extension_release();
  if (v32 == sub_2146D93B8())
  {
    *(a4 + 32) = 0;
    *(a4 + 40) = 1;
LABEL_17:
    swift_willThrow();
    goto LABEL_18;
  }

  v33 = MEMORY[0x2160542A0]();
  sub_21408FA04();
  swift_allocError();
  *v34 = v33;
  *(v34 + 4) = 0;
  swift_willThrow();
}

unint64_t sub_21408F29C()
{
  result = qword_27C904FA8;
  if (!qword_27C904FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904FA8);
  }

  return result;
}

uint64_t sub_21408F2F0(uint64_t *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_213FB54FC(v5, v4);
      *&v24 = v5;
      *(&v24 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_2146ECC00;
      sub_213FB54FC(0, 0xC000000000000000);
      result = sub_21408F6A0(&v24, a2);
      v18 = v24;
      v19 = *(&v24 + 1) | 0x4000000000000000;
LABEL_22:
      *a1 = v18;
      a1[1] = v19;
LABEL_29:
      v23 = *MEMORY[0x277D85DE8];
      return result;
    }

    sub_213FB54FC(v5, v4);
    *&v24 = v5;
    WORD4(v24) = v4;
    BYTE10(v24) = BYTE2(v4);
    BYTE11(v24) = BYTE3(v4);
    BYTE12(v24) = BYTE4(v4);
    BYTE13(v24) = BYTE5(v4);
    BYTE14(v24) = BYTE6(v4);
    if (a2 == BYTE6(v4))
    {
      result = archive_read_data();
      if (result == a2)
      {
LABEL_21:
        v18 = v24;
        v19 = DWORD2(v24) | ((WORD6(v24) | (BYTE14(v24) << 16)) << 32);
        goto LABEL_22;
      }

      sub_21408F29C();
      swift_allocError();
      v9 = 5;
    }

    else
    {
      sub_21408F29C();
      swift_allocError();
      v9 = 4;
    }

    *v8 = v9;
    result = swift_willThrow();
    goto LABEL_21;
  }

  if (v6 != 2)
  {
    *(&v24 + 7) = 0;
    *&v24 = 0;
    if (a2)
    {
      sub_21408F29C();
      swift_allocError();
      v21 = 4;
    }

    else
    {
      result = archive_read_data();
      if (!result)
      {
        goto LABEL_29;
      }

      sub_21408F29C();
      swift_allocError();
      v21 = 5;
    }

    *v20 = v21;
    result = swift_willThrow();
    goto LABEL_29;
  }

  sub_213FB54FC(v5, v4);
  *&v24 = v5;
  *(&v24 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_2146ECC00;
  sub_213FB54FC(0, 0xC000000000000000);
  sub_2146D8968();
  v10 = v24;
  v12 = *(v24 + 16);
  v11 = *(v24 + 24);
  result = sub_2146D8728();
  if (result)
  {
    if (__OFSUB__(v12, sub_2146D8758()))
    {
      __break(1u);
    }

    else
    {
      v13 = __OFSUB__(v11, v12);
      v14 = v11 - v12;
      if (!v13)
      {
        v15 = sub_2146D8748();
        if (v15 >= v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v15;
        }

        if (v16 == a2)
        {
          result = archive_read_data();
          if (result == a2)
          {
LABEL_25:
            *a1 = v10;
            a1[1] = *(&v10 + 1) | 0x8000000000000000;
            goto LABEL_29;
          }

          v17 = 5;
        }

        else
        {
          v17 = 4;
        }

        sub_21408F29C();
        swift_allocError();
        *v22 = v17;
        result = swift_willThrow();
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21408F6A0(int *a1, uint64_t a2)
{
  result = sub_2146D89A8();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(a1 + 1);

  result = sub_2146D8728();
  if (result)
  {
    result = sub_2146D8758();
    if (!__OFSUB__(v5, result))
    {
      v8 = v6 - v5;
      v9 = sub_2146D8748();
      if (v9 >= v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      if (v10 == a2)
      {
        if (archive_read_data() == a2)
        {
        }

        v11 = 5;
      }

      else
      {
        v11 = 4;
      }

      sub_21408F29C();
      swift_allocError();
      *v12 = v11;
      swift_willThrow();
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21408F798(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_2145B087C(result);
    }

    else
    {
      v2 = sub_2146D8778();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_2146D8738();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_2146D89D8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for Archive(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for Archive(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21408F988()
{
  result = qword_27C904FB0;
  if (!qword_27C904FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904FB0);
  }

  return result;
}

uint64_t sub_21408F9DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_21408FA04()
{
  result = qword_27C904FB8;
  if (!qword_27C904FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904FB8);
  }

  return result;
}

uint64_t sub_21408FA70()
{
  v1 = sub_2146D9628();

  v2 = sub_2146D9628();

  xpc_dictionary_set_string(v0, (v1 + 32), (v2 + 32));
}

uint64_t sub_21408FB88(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  sub_214090414(a1, &v13 - v6);
  v8 = sub_2146D8B88();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_214082B3C(v7);
  }

  else
  {
    sub_2146D8B28();
    (*(v9 + 8))(v7, v8);
  }

  v10 = sub_2146D9628();

  v11 = sub_2146D9628();

  xpc_dictionary_set_string(v2, (v10 + 32), (v11 + 32));
  sub_214082B3C(a1);
}

uint64_t sub_21408FD98()
{
  v1 = MEMORY[0x216056E20](v0);
  if (v1 == MEMORY[0x277D86448])
  {
    return 0;
  }

  if (v1 == MEMORY[0x277D86498])
  {
    return 1;
  }

  if (v1 == MEMORY[0x277D864C8])
  {
    return 2;
  }

  if (v1 == MEMORY[0x277D864C0])
  {
    return 3;
  }

  if (v1 == MEMORY[0x277D86470])
  {
    return 4;
  }

  if (v1 == MEMORY[0x277D86458])
  {
    return 5;
  }

  if (v1 == MEMORY[0x277D86460])
  {
    return 8;
  }

  if (v1 == MEMORY[0x277D86488])
  {
    return 9;
  }

  if (v1 == MEMORY[0x277D864D0])
  {
    return 10;
  }

  if (v1 == MEMORY[0x277D864B0])
  {
    return 11;
  }

  if (v1 == MEMORY[0x277D86468])
  {
    return 7;
  }

  if (v1 == MEMORY[0x277D86440])
  {
    return 6;
  }

  if (v1 == MEMORY[0x277D86450])
  {
    return 12;
  }

  if (v1 == MEMORY[0x277D86480])
  {
    return 13;
  }

  v3 = v1;
  sub_2146D9EF8();
  MEMORY[0x2160545D0](0xD00000000000001CLL, 0x800000021478C4F0);
  xpc_type_get_name(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FC0, &qword_2146F0B58);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](46, 0xE100000000000000);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21408FFD8()
{
  if (sub_21408FD98() != 13)
  {
    return 4;
  }

  v1 = _blastdoor_xpc_ERROR_CONNECTION_INVALID();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRelease();
    if (v2 == v0)
    {
      return 0;
    }
  }

  v3 = _blastdoor_xpc_ERROR_CONNECTION_INTERRUPTED();
  if (v3)
  {
    v4 = v3;
    swift_unknownObjectRelease();
    if (v4 == v0)
    {
      return 1;
    }
  }

  v5 = _blastdoor_xpc_ERROR_TERMINATION_IMMINENT();
  if (v5 && (v6 = v5, swift_unknownObjectRelease(), v6 == v0))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

xpc_object_t sub_2140900AC()
{
  v1 = sub_2146D9628();
  v2 = xpc_dictionary_get_value(v0, (v1 + 32));

  return v2;
}

uint64_t sub_2140900F4()
{
  v1 = sub_2146D9628();

  string = xpc_dictionary_get_string(v0, (v1 + 32));

  if (string)
  {
    return sub_2146D96E8();
  }

  else
  {
    return 0;
  }
}

xpc_object_t sub_2140901DC()
{
  v1 = sub_2146D9628();

  v2 = xpc_dictionary_get_value(v0, (v1 + 32));

  return v2;
}

uint64_t sub_2140902B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D9628();

  string = xpc_dictionary_get_string(v1, (v3 + 32));

  if (string)
  {
    sub_2146D96E8();
    sub_2146D8B18();
  }

  else
  {
    v6 = sub_2146D8B88();
    v7 = *(*(v6 - 8) + 56);

    return v7(a1, 1, 1, v6);
  }
}

uint64_t sub_214090414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214090484(void *a1)
{
  v3 = sub_2146D9628();

  xpc_dictionary_set_value(v1, (v3 + 32), a1);
}

unint64_t sub_2140905AC()
{
  result = qword_27C904FC8;
  if (!qword_27C904FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904FC8);
  }

  return result;
}

unint64_t sub_214090604()
{
  result = qword_27C904FD0;
  if (!qword_27C904FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904FD0);
  }

  return result;
}

uint64_t sub_214090658@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result == 2007;
  if (result == 3007)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214090674@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 3007)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (result == 2007)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (!result)
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_2140906D8()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146F0F58[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_214090760()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146F0F58[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_2140908B4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_2140908E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_21409093C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_21409096C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_2140909C4()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t sub_2140909CC(uint64_t result, uint64_t a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_2140909F4()
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

uint64_t sub_214090A64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 72);
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

uint64_t sub_214090ACC(uint64_t *a1)
{
  sub_2140325F8(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214090B74(uint64_t a1)
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

uint64_t (*sub_214090CB0(void *a1))(uint64_t *a1, char a2)
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

uint64_t sub_214090D48(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    v13 = *a1;
    v9 = *(v4 + 56);
    v10 = *(v4 + 64);
    v14 = *(v4 + 80);
    v15 = 0x6E776F6E6B6E753CLL;
    v16 = 0xE90000000000003ELL;
    v17 = 0xD00000000000001CLL;
    v18 = 0x800000021478A360;
    if (v9(&v13, &v14, &v15))
    {
      v11 = a1[2];

      *(v4 + 72) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v13 = *a1;
  v6 = *(v4 + 56);
  v5 = *(v4 + 64);
  v14 = *(v4 + 80);
  v15 = 0x6E776F6E6B6E753CLL;
  v16 = 0xE90000000000003ELL;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;

  if ((v6(&v13, &v14, &v15) & 1) == 0)
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

  v7 = a1[2];

  *(v4 + 72) = v3;
}

uint64_t sub_214090F28@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_214090F74(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a2 + 64);
  v8 = *(a2 + 72);

  *(a2 + 56) = v4;
  *(a2 + 64) = v3;
  *(a2 + 72) = v5;
  *(a2 + 80) = v6;
  return result;
}

__n128 sub_214090FE8(__n128 *a1)
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

void (*sub_214091040(uint64_t *a1))(uint64_t **a1, char a2)
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

void sub_2140910D8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v9 = *(v3 + 64);
  v8 = *(v3 + 72);
  if (a2)
  {
    v10 = (*a1)[2];

    *(v3 + 56) = v5;
    *(v3 + 64) = v4;
    *(v3 + 72) = v6;
    *(v3 + 80) = v7;
    v11 = v2[1];
    v12 = v2[2];
  }

  else
  {
    v13 = *(v3 + 64);

    *(v3 + 56) = v5;
    *(v3 + 64) = v4;
    *(v3 + 72) = v6;
    *(v3 + 80) = v7;
  }

  free(v2);
}

uint64_t sub_214091198@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v4 = *(v1 + 184);
  v16 = *(v1 + 168);
  v3 = v16;
  v17 = v4;
  v18 = *(v1 + 200);
  v5 = v18;
  v11 = *(v1 + 88);
  v7 = *(v1 + 120);
  v12 = *(v1 + 104);
  v6 = v12;
  v13 = v7;
  v14 = *(v1 + 136);
  v8 = v14;
  v15 = v2;
  *a1 = v11;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_214091538(&v11, v10);
}

__n128 sub_214091214(uint64_t a1)
{
  v3 = *(v1 + 168);
  v10[4] = *(v1 + 152);
  v10[5] = v3;
  v10[6] = *(v1 + 184);
  v11 = *(v1 + 200);
  v4 = *(v1 + 104);
  v10[0] = *(v1 + 88);
  v10[1] = v4;
  v5 = *(v1 + 136);
  v10[2] = *(v1 + 120);
  v10[3] = v5;
  sub_214091594(v10);
  v6 = *(a1 + 80);
  *(v1 + 152) = *(a1 + 64);
  *(v1 + 168) = v6;
  *(v1 + 184) = *(a1 + 96);
  v7 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 120) = result;
  *(v1 + 200) = *(a1 + 112);
  *(v1 + 136) = v9;
  return result;
}

uint64_t sub_2140912CC@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[16];
  v9 = v1[15];
  v10 = v2;
  v11 = v1[17];
  v3 = v11;
  v4 = v1[14];
  v8[0] = v1[13];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_2140915E8(v8, &v7);
}

__n128 sub_214091318(uint64_t a1)
{
  v3 = v1[16];
  v7[2] = v1[15];
  v7[3] = v3;
  v7[4] = v1[17];
  v4 = v1[14];
  v7[0] = v1[13];
  v7[1] = v4;
  sub_214091658(v7);
  v5 = *(a1 + 48);
  v1[15] = *(a1 + 32);
  v1[16] = v5;
  v1[17] = *(a1 + 64);
  result = *(a1 + 16);
  v1[13] = *a1;
  v1[14] = result;
  return result;
}

uint64_t sub_214091398()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return v1;
}

uint64_t sub_2140913C8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 296);

  *(v2 + 288) = a1;
  *(v2 + 296) = a2;
  return result;
}

uint64_t sub_214091420()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_2146D9EF8();
  MEMORY[0x2160545D0](40, 0xE100000000000000);
  MEMORY[0x2160545D0](0x5472656B63697453, 0xEE006B6361427061);
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBF0);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBB0);
  MEMORY[0x2160545D0](v2, v3);
  MEMORY[0x2160545D0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2140915E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FD8, &qword_2146F0C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214091658(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FD8, &qword_2146F0C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2140916C4()
{
  result = qword_27C904FE0;
  if (!qword_27C904FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904FE0);
  }

  return result;
}

unint64_t sub_214091744()
{
  result = qword_27C904FE8;
  if (!qword_27C904FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904FE8);
  }

  return result;
}

unint64_t sub_214091798()
{
  result = qword_27C904FF0;
  if (!qword_27C904FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904FF0);
  }

  return result;
}

uint64_t sub_214091818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214091854()
{
  result = qword_27C904FF8;
  if (!qword_27C904FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C904FF8);
  }

  return result;
}

unint64_t sub_2140918A8()
{
  result = qword_27C905000;
  if (!qword_27C905000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905000);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor17_AttributedStringVSgSg(uint64_t *a1)
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

uint64_t get_enum_tag_for_layout_string_9BlastDoor7TapBackV18MessageSummaryInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_214091940(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
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

uint64_t sub_214091988(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_214091A38()
{
  result = qword_27C905008;
  if (!qword_27C905008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905008);
  }

  return result;
}

uint64_t sub_214091AC0(uint64_t a1)
{
  *(a1 + 8) = sub_214091B74(&qword_27C905010);
  result = sub_214091B74(&qword_27C905018);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for NotifyRecipientCommand()
{
  result = qword_280B30278;
  if (!qword_280B30278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214091B74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NotifyRecipientCommand();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214091BE0()
{
  v1 = *v0;
  sub_21402D9F8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_214091C14(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_214091C74(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_214091CC0()
{
  v1 = *(v0 + 24);
  sub_213FDCA18(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_214091CF4(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_214091D4C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_214091D7C(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214091E64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_214091E94(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_214091EEC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_214091F1C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_214091F74()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_214091FA4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_214091FFC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_21409202C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_214092084()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_2140920B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_21409213C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_214092198(v10, v9);
}

__n128 sub_2140921D0(uint64_t a1)
{
  v3 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v3;
  v10 = *(v1 + 96);
  v4 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v4;
  v5 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v5;
  sub_214092240(v9);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

uint64_t sub_214092290@<X0>(void *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  *a1 = v1[13];
  a1[1] = v2;
  a1[2] = v3;
}

__n128 sub_2140922A4(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *(v1 + 112);

  result = v5;
  *(v1 + 104) = v5;
  *(v1 + 120) = v2;
  return result;
}

uint64_t sub_214092308()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_214092338(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214092390()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2140923C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t type metadata accessor for CollaborationMetadata()
{
  result = qword_280B30330;
  if (!qword_280B30330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2140924AC(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CollaborationMetadata() + 24);

  return sub_2140924F0(a1, v3);
}

uint64_t sub_2140924F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2140925A8()
{
  v1 = (v0 + *(type metadata accessor for CollaborationMetadata() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_2140925E8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CollaborationMetadata() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_214092678()
{
  v1 = *(v0 + *(type metadata accessor for CollaborationMetadata() + 32));
}

uint64_t sub_2140926AC(uint64_t a1)
{
  v3 = *(type metadata accessor for CollaborationMetadata() + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_214092734()
{
  v1 = *(v0 + *(type metadata accessor for CollaborationMetadata() + 36));
}

uint64_t sub_214092768(uint64_t a1)
{
  v3 = *(type metadata accessor for CollaborationMetadata() + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2140927F0@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CollaborationMetadata() + 40));
  v4 = v3[3];
  v5 = v3[5];
  v20 = v3[4];
  v6 = v20;
  v21 = v5;
  v7 = v3[7];
  v9 = v3[5];
  v22 = v3[6];
  v8 = v22;
  v23 = v7;
  v10 = v3[3];
  v11 = v3[1];
  v18 = v3[2];
  v19 = v10;
  v12 = v3[1];
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  a1[2] = v18;
  a1[3] = v4;
  *a1 = v13;
  a1[1] = v11;
  v14 = v3[7];
  a1[6] = v8;
  a1[7] = v14;
  a1[4] = v6;
  a1[5] = v9;
  return sub_213FB2E54(v17, &v16, &qword_27C905020, ")\r");
}

__n128 sub_214092888(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for CollaborationMetadata() + 40));
  v4 = v3[5];
  v13[4] = v3[4];
  v13[5] = v4;
  v5 = v3[7];
  v13[6] = v3[6];
  v13[7] = v5;
  v6 = v3[3];
  v13[2] = v3[2];
  v13[3] = v6;
  v7 = v3[1];
  v13[0] = *v3;
  v13[1] = v7;
  sub_214092908(v13);
  v8 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v8;
  v9 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v9;
  v10 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v10;
  result = *(a1 + 32);
  v12 = *(a1 + 48);
  v3[2] = result;
  v3[3] = v12;
  return result;
}

uint64_t sub_214092908(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905020, ")\r");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2140929E4()
{
  result = qword_27C905028;
  if (!qword_27C905028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905028);
  }

  return result;
}

unint64_t sub_214092A38()
{
  result = qword_27C905030;
  if (!qword_27C905030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905030);
  }

  return result;
}

uint64_t sub_214092AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214092AF4()
{
  result = qword_27C905038;
  if (!qword_27C905038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905038);
  }

  return result;
}

unint64_t sub_214092B48()
{
  result = qword_27C905040;
  if (!qword_27C905040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905040);
  }

  return result;
}

unint64_t sub_214092BC8()
{
  result = qword_27C905048;
  if (!qword_27C905048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905048);
  }

  return result;
}

unint64_t sub_214092C1C()
{
  result = qword_27C905050;
  if (!qword_27C905050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905050);
  }

  return result;
}

unint64_t sub_214092C9C()
{
  result = qword_27C905058;
  if (!qword_27C905058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905058);
  }

  return result;
}

unint64_t sub_214092CF0()
{
  result = qword_27C905060;
  if (!qword_27C905060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905060);
  }

  return result;
}

uint64_t sub_214092D44(uint64_t a1)
{
  *(a1 + 8) = sub_214092DAC(&qword_27C905068);
  result = sub_214092DAC(&qword_27C905070);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214092DAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CollaborationMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214092DF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_214092E38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214092E90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_214092ED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214092F28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_214092F84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_214093004(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21409304C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2140930E4()
{
  sub_21403BEC8(319, &qword_280B34BE0);
  if (v0 <= 0x3F)
  {
    sub_21409320C();
    if (v1 <= 0x3F)
    {
      sub_214078E0C(319, &qword_280B2E490, &qword_27C905078, &unk_2146F4400);
      if (v2 <= 0x3F)
      {
        sub_214078E0C(319, &qword_280B2E3C0, &unk_27C904F20, &qword_2146EE8A0);
        if (v3 <= 0x3F)
        {
          sub_21403BEC8(319, qword_280B2E9A0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21409320C()
{
  if (!qword_280B35230)
  {
    sub_2146D8B08();
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_280B35230);
    }
  }
}

uint64_t sub_214093264(uint64_t a1)
{
  *(a1 + 8) = sub_214093308(&qword_27C905080, type metadata accessor for IDSDictionaryContext);
  result = sub_214093308(&qword_27C905088, type metadata accessor for IDSDictionaryContext);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214093308(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_214093350(uint64_t a1)
{
  *(a1 + 8) = sub_214093308(&qword_27C905090, type metadata accessor for IDSInvitationContextType);
  result = sub_214093308(&qword_27C905098, type metadata accessor for IDSInvitationContextType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2140933F4(uint64_t a1)
{
  *(a1 + 8) = sub_214093308(&qword_27C9050A0, type metadata accessor for IDSInvitationContext);
  result = sub_214093308(&qword_27C9050A8, type metadata accessor for IDSInvitationContext);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214093498(uint64_t a1)
{
  *(a1 + 8) = sub_214093308(&qword_27C9050B0, type metadata accessor for IDSInvitation);
  result = sub_214093308(&qword_27C9050B8, type metadata accessor for IDSInvitation);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21409353C()
{
  result = type metadata accessor for IDSSampleInvitation();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for IDSHomeKitInvitation(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for IDSKCSharingInvitation();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for IDSHealthInvitation(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for IDSActivitySharingInvitation(319);
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

uint64_t sub_2140935F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSDictionaryContext(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_214093660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IDSDictionaryContext(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_2140936DC(uint64_t a1)
{
  result = type metadata accessor for IDSDictionaryContext(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_2140937A8()
{
  sub_2140939D4(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
  if (v0 <= 0x3F)
  {
    sub_2140939D4(319, &qword_27C9050E0, MEMORY[0x277D83B88], type metadata accessor for Validated);
    if (v1 <= 0x3F)
    {
      type metadata accessor for IDSInvitationContextType(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2140938B4()
{
  type metadata accessor for IDSInvitationContext(319);
  if (v0 <= 0x3F)
  {
    sub_2140939D4(319, &qword_27C9050E0, MEMORY[0x277D83B88], type metadata accessor for Validated);
    if (v1 <= 0x3F)
    {
      sub_2140939D4(319, &qword_280B34BD0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2140939D4(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2140939D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_214093A24()
{
  if (*v0)
  {
    v6 = *v0;
    v8 = *(v0 + 3);
    v9 = *(v0 + 5);
    v10 = *(v0 + 7);
    v11 = v0[9];
    v7 = *(v0 + 1);
    sub_214093C70();
  }

  else
  {
    v1 = MEMORY[0x277D837D0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    *(inited + 32) = 0xD000000000000020;
    v3 = inited + 32;
    *(inited + 72) = v1;
    *(inited + 40) = 0x800000021478C510;
    *(inited + 48) = 0xD00000000000001DLL;
    *(inited + 56) = 0x800000021478C540;
    sub_2140457C0(inited);
    swift_setDeallocating();
    sub_213FB2DF4(v3, &qword_27C903FE0, &unk_2146EA760);
  }

  v4 = sub_2146D9468();

  return v4;
}

uint64_t sub_214093B64()
{
  if (*v0)
  {
    v5 = *v0;
    v7 = *(v0 + 3);
    v8 = *(v0 + 5);
    v9 = *(v0 + 7);
    v10 = v0[9];
    v6 = *(v0 + 1);
    return sub_214093C70();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    *(inited + 32) = 0xD000000000000020;
    v3 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0x800000021478C510;
    *(inited + 48) = 0xD00000000000001DLL;
    *(inited + 56) = 0x800000021478C540;
    v4 = sub_2140457C0(inited);
    swift_setDeallocating();
    sub_213FB2DF4(v3, &qword_27C903FE0, &unk_2146EA760);
    return v4;
  }
}

uint64_t sub_214093C70()
{
  v1 = type metadata accessor for MBDPersistentMenuItem(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E68D0;
  *(inited + 32) = 0x6C6576656CLL;
  *(inited + 40) = 0xE500000000000000;
  if ((v7 & 1) != 0 || (v12 = inited, v13 = MEMORY[0x277D83B88], *(inited + 48) = v6, *(inited + 72) = v13, *(inited + 80) = 0x5479616C70736964, *(inited + 88) = 0xEB00000000747865, v9 == 1))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    if (v9)
    {
      v14 = MEMORY[0x277D837D0];
      v15 = v9;
    }

    else
    {
      v8 = 0;
      v15 = 0;
      v14 = 0;
      *(inited + 112) = 0;
    }

    v30 = inited + 32;
    v31 = v6;
    *(inited + 96) = v8;
    *(inited + 104) = v15;
    *(inited + 120) = v14;
    *(inited + 128) = 0x736D657469;
    *(inited + 136) = 0xE500000000000000;
    v16 = *(v10 + 16);
    v29 = v16;
    if (v16)
    {
      v17 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v18 = *(v2 + 72);

      v19 = MEMORY[0x277D84F90];
      do
      {
        sub_214096648(v17, v5);
        v20 = sub_2145FFEB8();
        sub_2140966AC(v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_214095798(0, v19[2] + 1, 1, v19);
        }

        v22 = v19[2];
        v21 = v19[3];
        if (v22 >= v21 >> 1)
        {
          v19 = sub_214095798((v21 > 1), v22 + 1, 1, v19);
        }

        v19[2] = v22 + 1;
        v19[v22 + 4] = v20;
        v17 += v18;
        --v16;
      }

      while (v16);
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
    }

    *(v12 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9050E8, &qword_2147726C0);
    *(v12 + 144) = v19;
    v23 = sub_214045690(v12);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
    swift_arrayDestroy();
    v24 = sub_2140418B8(v23);

    if (!v31)
    {
      if (v29)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
        v25 = swift_initStackObject();
        *(v25 + 32) = 0xD000000000000020;
        v26 = v25 + 32;
        *(v25 + 16) = xmmword_2146EA710;
        *(v25 + 40) = 0x800000021478C510;
        *(v25 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v25 + 48) = v24;
      }

      else
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
        v25 = swift_initStackObject();
        *(v25 + 16) = xmmword_2146EA710;
        *(v25 + 32) = 0xD000000000000020;
        v26 = v25 + 32;
        *(v25 + 72) = MEMORY[0x277D837D0];
        *(v25 + 40) = 0x800000021478C510;
        *(v25 + 48) = 0xD00000000000001DLL;
        *(v25 + 56) = 0x800000021478C540;
      }

      v24 = sub_2140457C0(v25);
      swift_setDeallocating();
      sub_213FB2DF4(v26, &qword_27C903FE0, &unk_2146EA760);
    }

    return v24;
  }

  return result;
}

uint64_t sub_2140940B4()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_214094110()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_214094158@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2146DA098();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2140941D0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2146DA098();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_214094228(uint64_t a1)
{
  v2 = sub_214096708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214094264(uint64_t a1)
{
  v2 = sub_214096708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140942A0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9050F0, &qword_2146F14C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214096708();
  sub_2146DAA08();
  if (!v2)
  {
    v11 = sub_2146DA0F8();
    if (v12)
    {
      if (v11 == 0xD00000000000001DLL && v12 == 0x800000021478C540)
      {

LABEL_13:
        (*(v6 + 8))(v9, v5);
        v13 = 0uLL;
        v14 = 0uLL;
        v15 = 0uLL;
        v16 = 0uLL;
        v17 = 0uLL;
LABEL_14:
        *a2 = v13;
        a2[1] = v14;
        a2[2] = v15;
        a2[3] = v16;
        a2[4] = v17;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v19 = sub_2146DA6A8();

      if (v19)
      {
        goto LABEL_13;
      }
    }

    sub_21409675C();
    sub_2146DA0C8();
    (*(v6 + 8))(v9, v5);
    v13 = v21[0];
    v14 = v21[1];
    v15 = v21[2];
    v16 = v21[3];
    v17 = v21[4];
    goto LABEL_14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140944CC(void *a1)
{
  v2 = v1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905108, &qword_2146F14C8);
  v22 = *(v30 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v19 - v5;
  v8 = *v2;
  v7 = v2[1];
  v9 = v2[5];
  v20 = v2[6];
  v10 = v2[7];
  v19 = v2[8];
  v21 = v2[9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214096708();
  v23 = v6;
  sub_2146DAA28();
  if (v8)
  {
    *&v25 = v8;
    *(&v25 + 1) = v7;
    v26 = *(v2 + 1);
    *&v27 = v2[4];
    *(&v27 + 1) = v9;
    v12 = v20;
    *&v28 = v20;
    *(&v28 + 1) = v10;
    *&v29 = v19;
    *(&v29 + 1) = v21;

    sub_213FDC9D0(v12, v10);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905110, &qword_2146F14D0);
    sub_2140967B0();
    v13 = v30;
    v14 = v23;
    sub_2146DA2A8();
    v15 = (v22 + 8);
    v24[2] = v27;
    v24[3] = v28;
    v24[4] = v29;
    v24[0] = v25;
    v24[1] = v26;
    sub_213FB2DF4(v24, &qword_27C905110, &qword_2146F14D0);
    return (*v15)(v14, v13);
  }

  else
  {
    v17 = v30;
    v18 = v23;
    sub_2146DA328();
    return (*(v22 + 8))(v18, v17);
  }
}

uint64_t sub_2140947A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5479616C70736964;
  v4 = 0xEB00000000747865;
  if (v2 != 1)
  {
    v3 = 0x736D657469;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C6576656CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x5479616C70736964;
  v8 = 0xEB00000000747865;
  if (*a2 != 1)
  {
    v7 = 0x736D657469;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C6576656CLL;
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

uint64_t sub_2140948AC()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214094950()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2140949E0()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214094A80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214096BF8();
  *a2 = result;
  return result;
}

void sub_214094AB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEB00000000747865;
  v5 = 0x5479616C70736964;
  if (v2 != 1)
  {
    v5 = 0x736D657469;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6576656CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_214094B10()
{
  v1 = 0x5479616C70736964;
  if (*v0 != 1)
  {
    v1 = 0x736D657469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6576656CLL;
  }
}

uint64_t sub_214094B6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214096BF8();
  *a1 = result;
  return result;
}

uint64_t sub_214094B94(uint64_t a1)
{
  v2 = sub_214096888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214094BD0(uint64_t a1)
{
  v2 = sub_214096888();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214094C0C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905128, &qword_2146F14D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214096888();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v21) = 0;
    v11 = sub_2146DA1A8();
    LOBYTE(v21) = 1;
    v12 = sub_2146DA0F8();
    v15 = v14;
    v18 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905138, &qword_2146F14E0);
    v20 = 2;
    sub_2140968DC(&qword_27C905140, &qword_27C905148);
    sub_2146DA0D8();
    sub_2140A9B6C(v11, v18, v15, v21, v19);
    (*(v6 + 8))(v9, v5);
    v16 = v19[3];
    a2[2] = v19[2];
    a2[3] = v16;
    a2[4] = v19[4];
    v17 = v19[1];
    *a2 = v19[0];
    a2[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214094EA0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905150, &unk_2146F14E8);
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v14 = *(v1 + 72);
  v15 = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214096888();
  sub_2146DAA28();
  if ((v8 & 1) == 0)
  {
    LOBYTE(v18) = 0;
    v12 = v16;
    sub_2146DA368();
    if (v12)
    {
      return (*(v17 + 8))(v6, v3);
    }

    if (v10 != 1)
    {
      v18 = v15;
      v19 = v10;
      v20 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      v18 = v14;
      v20 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905138, &qword_2146F14E0);
      sub_2140968DC(&qword_27C905158, &qword_27C905160);
      sub_2146DA2A8();
      return (*(v17 + 8))(v6, v3);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

char *sub_21409515C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905258, &qword_2146F1948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21409526C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905240, &qword_2146F1930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_214095390(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905238, &qword_2146F1928);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_214095520(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9051D0, &qword_2146F18C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_214095650(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_214095798(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905228, &qword_2146F1918);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140958E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905218, &qword_2146F1908);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2140959E4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9051F8, &qword_2146F18E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_214095AE0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905200, &qword_2146F18F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_214095C34(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9051E0, &qword_2146F18D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_214095DAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9051B0, &qword_2146F1898);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_214095ECC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9051D8, &qword_2146F18C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_214095FE4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_2140960E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D48, qword_2146EF9D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140961EC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9051B8, &qword_2146F18A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_214096348(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_214096524(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905198, &qword_2146F1880);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_214096648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MBDPersistentMenuItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2140966AC(uint64_t a1)
{
  v2 = type metadata accessor for MBDPersistentMenuItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_214096708()
{
  result = qword_27C9050F8;
  if (!qword_27C9050F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9050F8);
  }

  return result;
}

unint64_t sub_21409675C()
{
  result = qword_27C905100;
  if (!qword_27C905100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905100);
  }

  return result;
}

unint64_t sub_2140967B0()
{
  result = qword_27C905118;
  if (!qword_27C905118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905110, &qword_2146F14D0);
    sub_214096834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905118);
  }

  return result;
}

unint64_t sub_214096834()
{
  result = qword_27C905120;
  if (!qword_27C905120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905120);
  }

  return result;
}

unint64_t sub_214096888()
{
  result = qword_27C905130;
  if (!qword_27C905130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905130);
  }

  return result;
}

uint64_t sub_2140968DC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905138, &qword_2146F14E0);
    sub_214096964(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214096964(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MBDPersistentMenuItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2140969EC()
{
  result = qword_27C905168;
  if (!qword_27C905168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905168);
  }

  return result;
}

unint64_t sub_214096A44()
{
  result = qword_27C905170;
  if (!qword_27C905170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905170);
  }

  return result;
}