unint64_t sub_214096A9C()
{
  result = qword_27C905178;
  if (!qword_27C905178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905178);
  }

  return result;
}

unint64_t sub_214096AF4()
{
  result = qword_27C905180;
  if (!qword_27C905180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905180);
  }

  return result;
}

unint64_t sub_214096B4C()
{
  result = qword_27C905188;
  if (!qword_27C905188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905188);
  }

  return result;
}

unint64_t sub_214096BA4()
{
  result = qword_27C905190;
  if (!qword_27C905190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905190);
  }

  return result;
}

uint64_t sub_214096BF8()
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

uint64_t sub_214096C4C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 + 16) + 8);
  sub_2146D9B28();
  result = sub_2146D94C8();
  if (result)
  {
    sub_21408014C();
    swift_allocError();
    *v7 = 512;
    swift_willThrow();
    return (*(*(a1 - 8) + 8))(a3, a1);
  }

  return result;
}

uint64_t sub_214096E18@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(uint64_t)@<X4>, char a3@<W5>, uint64_t a4@<X8>)
{
  result = a2(a4);
  if (result)
  {
    sub_21408014C();
    swift_allocError();
    *v8 = 0;
    v8[1] = a3;
    swift_willThrow();
    return (*(*(a1 - 8) + 8))(a4, a1);
  }

  return result;
}

unint64_t sub_214096ED0()
{
  result = qword_27C905268;
  if (!qword_27C905268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905268);
  }

  return result;
}

unint64_t sub_214096F28()
{
  result = qword_27C905270;
  if (!qword_27C905270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905270);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArithmeticOperationError(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
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

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ArithmeticOperationError(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
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
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

BlastDoor::StickerEffect __swiftcall StickerEffect.init(defaultingRawValue:)(Swift::String_optional defaultingRawValue)
{
  v2 = v1;
  if (defaultingRawValue.value._object)
  {
    LOBYTE(defaultingRawValue.value._countAndFlagsBits) = StickerEffect.init(rawValue:)(defaultingRawValue.value);
    v3 = v5;
    if (v5 == 5)
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return defaultingRawValue.value._countAndFlagsBits;
}

BlastDoor::StickerEffect_optional __swiftcall StickerEffect.init(rawValue:)(Swift::String rawValue)
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

uint64_t StickerEffect.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x63696D6F63;
  v4 = 0x7966667570;
  if (v1 != 3)
  {
    v4 = 0x6563736564697269;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656B6F727473;
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

unint64_t sub_214097240()
{
  result = qword_27C905278;
  if (!qword_27C905278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905278);
  }

  return result;
}

uint64_t sub_214097294()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214097368()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_214097428()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_214097504(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE500000000000000;
  v6 = 0x63696D6F63;
  v7 = 0xE500000000000000;
  v8 = 0x7966667570;
  if (v2 != 3)
  {
    v8 = 0x6563736564697269;
    v7 = 0xEA0000000000746ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656B6F727473;
    v3 = 0xE600000000000000;
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

unint64_t sub_214097594(uint64_t a1)
{
  *(a1 + 8) = sub_2140975C4();
  result = sub_214097618();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2140975C4()
{
  result = qword_280B30D98;
  if (!qword_280B30D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30D98);
  }

  return result;
}

unint64_t sub_214097618()
{
  result = qword_280B2F8C0;
  if (!qword_280B2F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2F8C0);
  }

  return result;
}

unint64_t sub_21409772C()
{
  result = qword_280B32218[0];
  if (!qword_280B32218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B32218);
  }

  return result;
}

uint64_t sub_214097780@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v1 + *(v7 + 28), v6, &qword_27C903F40, &unk_2146F1C50);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) != 1)
  {
    return sub_214032588(v6, a1);
  }

  sub_213FB2DF4(v6, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2140978EC()
{
  v1 = v0 + *(type metadata accessor for AccountsRepresentativeCloudShareInfo(0) + 20);
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

uint64_t sub_21409799C()
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

uint64_t sub_214097A1C()
{
  if (*(v0 + 72) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 64);

    return v1;
  }

  return result;
}

uint64_t sub_214097A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(a1 + *(v8 + 28), v7, &qword_27C903F40, &unk_2146F1C50);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) != 1)
  {
    return sub_214032588(v7, a2);
  }

  sub_213FB2DF4(v7, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214097C0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_213FB2E54(a1, &v10 - v7, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(v8, v6, &unk_27C9131A0, &unk_2146E9D10);
  sub_21402F5FC(v6);
  return sub_213FB2DF4(v8, &unk_27C9131A0, &unk_2146E9D10);
}

uint64_t sub_214097CFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  sub_213FB2E54(a1, &v7 - v4, &unk_27C9131A0, &unk_2146E9D10);
  sub_21402F5FC(v5);
  return sub_213FB2DF4(a1, &unk_27C9131A0, &unk_2146E9D10);
}

void (*sub_214097DB0(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v3);
  }

  v6 = v5;
  a1[1] = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  if (v4)
  {
    a1[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    a1[2] = malloc(*(*(v7 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  a1[3] = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v1 + *(v12 + 28), v6, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_213FB2DF4(v6, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v6, v11);
    return sub_214097FAC;
  }

  return result;
}

void sub_214097FAC(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    sub_213FB2E54(a1[3], v2, &unk_27C9131A0, &unk_2146E9D10);
    sub_21402F5FC(v2);
    sub_213FB2DF4(v3, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    sub_21402F5FC(a1[3]);
  }

  free(v3);
  free(v2);

  free(v4);
}

void (*sub_2140980AC(uint64_t *a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  a1[1] = v4;
  sub_213FB2E54(v1, v4, &qword_27C903F38, &unk_2146E9D40);
  return sub_21409815C;
}

void sub_21409815C(uint64_t *a1)
{
  v1 = a1[1];
  sub_21402EDB8(v1, *a1, &qword_27C903F38, &unk_2146E9D40);

  free(v1);
}

uint64_t sub_2140981A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AccountsRepresentativeCloudShareInfo(0) + 20);
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

uint64_t sub_214098244(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for AccountsRepresentativeCloudShareInfo(0) + 20);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21409830C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AccountsRepresentativeCloudShareInfo(0) + 20);
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

void (*sub_21409845C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for AccountsRepresentativeCloudShareInfo(0) + 20);
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

uint64_t sub_214098548@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AccountsRepresentativeCloudShareInfo(0) + 20));
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

uint64_t sub_2140985B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AccountsRepresentativeCloudShareInfo(0) + 20));
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

uint64_t sub_214098624(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for AccountsRepresentativeCloudShareInfo(0) + 20);
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

__n128 sub_2140986BC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for AccountsRepresentativeCloudShareInfo(0) + 20));
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

void (*sub_214098734(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for AccountsRepresentativeCloudShareInfo(0) + 20);
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

unint64_t sub_2140988B8@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  v4 = sub_214069764(&unk_282654358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_21409A858;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_214069888(&unk_2826543F8);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_21409A860;
  *(v8 + 24) = v9;
  *(v3 + 40) = v8;
  v10 = sub_2142E0124(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_21409A868;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_21404352C(inited, a1);
}

unint64_t sub_214098A64@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2146F1C40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 0xD000000000000020;
  *(v5 + 24) = 0x800000021478C560;
  *(v4 + 16) = sub_21409A7EC;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = 0xD000000000000028;
  *(v7 + 24) = 0x800000021478C590;
  *(v6 + 16) = sub_21409A874;
  *(v6 + 24) = v7;
  *(v3 + 40) = v6;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = 0xD000000000000022;
  *(v9 + 24) = 0x800000021478C5C0;
  *(v8 + 16) = sub_21409A874;
  *(v8 + 24) = v9;
  *(v3 + 48) = v8;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = 0xD00000000000002ALL;
  *(v11 + 24) = 0x800000021478C5F0;
  *(v10 + 16) = sub_21409A874;
  *(v10 + 24) = v11;
  *(v3 + 56) = v10;
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v12 + 16) = sub_21409A7F4;
  *(v12 + 24) = v13;
  *(inited + 32) = v12;
  return sub_214042A28(inited, a1);
}

uint64_t sub_214098CC0@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v4 = 10;
  if ((a2 & 1) == 0)
  {
    result = sub_214098D08(result, &v5);
    if (v5 == 11)
    {
      v4 = 10;
    }

    else
    {
      v4 = v5;
    }
  }

  *a3 = v4;
  return result;
}

uint64_t sub_214098D08@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result <= 98)
  {
    if (result <= 1)
    {
      if (!result)
      {
        *a2 = 0;
        return result;
      }

      if (result == 1)
      {
        *a2 = 1;
        return result;
      }
    }

    else
    {
      switch(result)
      {
        case 2:
          *a2 = 2;
          return result;
        case 3:
          *a2 = 3;
          return result;
        case 6:
          *a2 = 4;
          return result;
      }
    }
  }

  else if (result > 102)
  {
    switch(result)
    {
      case 103:
        *a2 = 7;
        return result;
      case 104:
        *a2 = 8;
        return result;
      case 200:
        *a2 = 9;
        return result;
    }
  }

  else
  {
    switch(result)
    {
      case 'c':
        *a2 = 10;
        return result;
      case 'e':
        *a2 = 5;
        return result;
      case 'f':
        *a2 = 6;
        return result;
    }
  }

  *a2 = 11;
  return result;
}

uint64_t sub_214098E38()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146F2120[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_214098EC0()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146F2120[v1]);
  return sub_2146DA9B8();
}

unint64_t sub_214098FDC@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 11;
  if (result < 0xB)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2140990B0@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result - 1;
  if ((result - 1) >= 0x11)
  {
    v2 = 17;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2140990D4()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1 + 1);
  return sub_2146DA9B8();
}

uint64_t sub_21409914C()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1 + 1);
  return sub_2146DA9B8();
}

uint64_t sub_214099300(uint64_t a1, uint64_t a2)
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

void (*sub_214099444(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_21409951C@<X0>(uint64_t a1@<X8>)
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

__n128 sub_214099574(__n128 *a1)
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

void (*sub_2140995DC(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_21409967C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v11 = *(v3 + 80);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 64), *(v3 + 72));

    *(v3 + 64) = a1;
    *(v3 + 72) = a2;
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

void (*sub_2140997C0(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 64);
  *(v3 + 24) = v5;
  v6 = *(v1 + 72);
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

    return sub_214054570;
  }

  return result;
}

uint64_t sub_214099898@<X0>(uint64_t a1@<X8>)
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

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2140998F0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[3].n128_u64[1];
  v7 = v1[4].n128_i64[0];
  v8 = v1[4].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

void (*sub_214099958(uint64_t *a1))(uint64_t **a1, char a2)
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

  sub_213FDC9D0(v6, v7);
  return sub_21405497C;
}

uint64_t sub_214099B24(char a1)
{
  result = type metadata accessor for AccountsRepresentativeMessage(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_214099BC0(char a1)
{
  result = type metadata accessor for AccountsRepresentativeMessage(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t sub_214099C38()
{
  v1 = (v0 + *(type metadata accessor for AccountsRepresentativeMessage(0) + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_214099C78(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AccountsRepresentativeMessage(0) + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_214099D90(uint64_t a1)
{
  *(a1 + 8) = sub_214099E14(&qword_27C905288, type metadata accessor for AccountsRepresentativeCloudShareInfo);
  result = sub_214099E14(&qword_27C905290, type metadata accessor for AccountsRepresentativeCloudShareInfo);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214099E14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_214099E60()
{
  result = qword_27C905298;
  if (!qword_27C905298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905298);
  }

  return result;
}

unint64_t sub_214099EE0()
{
  result = qword_27C9052A0;
  if (!qword_27C9052A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9052A0);
  }

  return result;
}

unint64_t sub_214099F38()
{
  result = qword_27C9052A8;
  if (!qword_27C9052A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9052A8);
  }

  return result;
}

unint64_t sub_214099FB8()
{
  result = qword_27C9052B0;
  if (!qword_27C9052B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9052B0);
  }

  return result;
}

unint64_t sub_21409A010()
{
  result = qword_27C9052B8;
  if (!qword_27C9052B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9052B8);
  }

  return result;
}

uint64_t sub_21409A090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21409A0CC()
{
  result = qword_27C9052C0;
  if (!qword_27C9052C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9052C0);
  }

  return result;
}

uint64_t sub_21409A120(uint64_t a1)
{
  *(a1 + 8) = sub_214099E14(&qword_27C9052C8, type metadata accessor for AccountsRepresentativeMessage);
  result = sub_214099E14(&qword_27C9052D0, type metadata accessor for AccountsRepresentativeMessage);
  *(a1 + 16) = result;
  return result;
}

void sub_21409A1CC()
{
  sub_21409A2B4(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10);
  if (v0 <= 0x3F)
  {
    sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
    if (v1 <= 0x3F)
    {
      sub_21409A4BC(319, &qword_27C9052F8, type metadata accessor for CloudKitSharingToken);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21409A2B4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Validated();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_21409A330()
{
  sub_21403BEC8(319, &qword_27C905310);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_27C905318);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_27C905320);
      if (v2 <= 0x3F)
      {
        sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
        if (v3 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B34BD8);
          if (v4 <= 0x3F)
          {
            sub_21409A4BC(319, &qword_27C905328, type metadata accessor for AccountsRepresentativeCloudShareInfo);
            if (v5 <= 0x3F)
            {
              sub_21403BEC8(319, &qword_280B34BE0);
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

void sub_21409A4BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for TapBack.MessageSummaryInfo.AssociatedMessageMessageSummaryInfoTypeContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapBack.MessageSummaryInfo.AssociatedMessageMessageSummaryInfoTypeContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21409A680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_21409A6F0()
{
  result = qword_27C905330;
  if (!qword_27C905330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905330);
  }

  return result;
}

unint64_t sub_21409A744()
{
  result = qword_27C905338;
  if (!qword_27C905338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905338);
  }

  return result;
}

unint64_t sub_21409A798()
{
  result = qword_27C905340;
  if (!qword_27C905340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905340);
  }

  return result;
}

uint64_t sub_21409A7F4(__int128 *a1, char *a2)
{
  v3 = *a2;
  v4 = *(v2 + 16);
  v8 = *a1;
  v6[2] = &v8;
  v7 = v3;
  return sub_21441C130(sub_214047400, v6, v4) & 1;
}

uint64_t sub_21409A87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_21409A9C0;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_21409A9C0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21409AAB4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905378, &qword_2146F25D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21409C468();
  sub_2146DAA28();
  v13 = 0;
  sub_2146DA3E8();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v12 = 1;
  sub_2146DA3D8();
  v11 = 2;
  sub_2146DA3D8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_21409AC5C()
{
  v1 = 0x6874646977;
  if (*v0 != 1)
  {
    v1 = 0x746867696568;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636967616DLL;
  }
}

uint64_t sub_21409ACAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21409BF7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21409ACD4(uint64_t a1)
{
  v2 = sub_21409C468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21409AD10(uint64_t a1)
{
  v2 = sub_21409C468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21409AD4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21409B62C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_21409AD80(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_21409AAB4(a1);
}

uint64_t sub_21409AD9C@<X0>(char *a1@<X8>)
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

uint64_t sub_21409AE00()
{
  if (*v0)
  {
    result = 0x6574697277;
  }

  else
  {
    result = 1684104562;
  }

  *v0;
  return result;
}

uint64_t sub_21409AE30(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6574697277;
  }

  else
  {
    v4 = 1684104562;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x6574697277;
  }

  else
  {
    v6 = 1684104562;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
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

uint64_t sub_21409AECC()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21409AF44()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_21409AFA8()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21409B01C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

void sub_21409B07C(uint64_t *a1@<X8>)
{
  v2 = 1684104562;
  if (*v1)
  {
    v2 = 0x6574697277;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21409B0B0@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  v4 = 7;
  if (v2 < 7)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t sub_21409B10C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x41657361426C696ELL;
    if (v1 != 1)
    {
      v5 = 0x4674707572726F63;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000012;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (v1 == 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000014;
    if (v1 == 3)
    {
      v3 = 0x4964696C61766E69;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21409B224()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_21409B360@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_21409B0B0(a1);
}

void sub_21409B36C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xEE00737365726464;
    v9 = 0x41657361426C696ELL;
    if (v2 != 1)
    {
      v9 = 0x4674707572726F63;
      v8 = 0xEB00000000656C69;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xD000000000000012;
    }

    if (v10)
    {
      v8 = 0x8000000214786200;
    }

    *a1 = v11;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x8000000214786260;
    v4 = 0xD000000000000015;
    if (v2 == 5)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v3 = 0x8000000214786280;
    }

    v5 = 0xEC0000006567616DLL;
    v6 = 0xD000000000000014;
    if (v2 == 3)
    {
      v6 = 0x4964696C61766E69;
    }

    else
    {
      v5 = 0x8000000214786240;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t static BitmapHelper.writeHeader(at:width:height:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((a3 | a2) < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a3 <= 0xFFFFFFFFLL)
  {
    *result = 0xB1A57D002;
    *(result + 8) = a2;
    *(result + 12) = a3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

char *sub_21409B4F0(char *result, unint64_t a2, uint64_t a3, uint64_t a4, void *__dst)
{
  if (__dst)
  {
    if (a3)
    {
      v5 = a4 - a3;
      if (a4 - a3 < 0)
      {
        __break(1u);
      }

      else if (v5 >= result)
      {
        if (v5 >= a2)
        {
          if (!__OFADD__(result, a2 - result))
          {
            if (a2 >= result)
            {
              return memmove(__dst, &result[a3], a2 - result);
            }

            goto LABEL_16;
          }

LABEL_15:
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_14;
    }

    if (result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (a2)
    {
LABEL_18:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21409B55C(int *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_2146D89A8();
  v9 = *a1;
  if (a1[1] < v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = *(a1 + 1);

  result = sub_2146D8728();
  if (result)
  {
    v11 = result;
    result = sub_2146D8758();
    v12 = v9 - result;
    if (!__OFSUB__(v9, result))
    {
      result = sub_2146D8748();
      if ((a4 & 0x8000000000000000) == 0)
      {
        sub_21409B4F0(0, a4, a2, a3, (v11 + v12));
      }

      goto LABEL_8;
    }

LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21409B62C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905358, &qword_2146F2428);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21409C468();
  sub_2146DAA08();
  v13 = 0;
  v8 = sub_2146DA228();
  v12 = 1;
  sub_2146DA218();
  v11 = 2;
  sub_2146DA218();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

id sub_21409B7F8(void *a1)
{
  v3 = type metadata accessor for _BinaryDecoder();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  *(v4 + 16) = MEMORY[0x277D84F90];
  *(v4 + 24) = sub_214046008(v5);
  *(v4 + 32) = a1;
  *(v4 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  *(inited + 32) = a1;
  v7 = inited & 0xC000000000000001;
  result = a1;
  if ((inited & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x216054E00](0, inited);
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_15;
    }

    v9 = result;
  }

  v10 = v9;
  [v9 open];

  v14[3] = v3;
  v14[4] = sub_21409C410();
  v14[0] = v4;

  result = sub_21409B62C(v14);
  v11 = result;
  if (v1)
  {
    if (v7)
    {
LABEL_13:
      v12 = MEMORY[0x216054E00](0, inited);
      goto LABEL_11;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:
      v12 = *(inited + 32);
LABEL_11:
      v13 = v12;
      [v12 close];

      return v11;
    }

    __break(1u);
  }

  if (v7)
  {
    goto LABEL_13;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_21409B984(double a1, double a2)
{
  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v2 = a2 * a1;
  if ((a2 * a1) >> 64 != v2 >> 63 || (v2 - 0x2000000000000000) >> 62 != 3)
  {
    v3 = 2;
LABEL_10:
    sub_21408014C();
    swift_allocError();
    *v4 = 0;
    v4[1] = v3;
    swift_willThrow();
    return;
  }

  if (__OFADD__(4 * v2, 16))
  {
    v3 = 0;
    goto LABEL_10;
  }
}

unint64_t sub_21409BAA8()
{
  result = qword_27C905348;
  if (!qword_27C905348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905348);
  }

  return result;
}

unint64_t sub_21409BB00()
{
  result = qword_27C905350;
  if (!qword_27C905350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905350);
  }

  return result;
}

NSObject *sub_21409BB94(uint64_t a1, uint64_t a2)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (!a1 || a2 - a1 < 17)
  {
    v18 = sub_2146D9B88();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v12 = qword_280B35410;
    if (os_log_type_enabled(qword_280B35410, v18))
    {
      v19 = swift_slowAlloc();
      v20 = v19;
      *v19 = 134218240;
      v21 = a2 - a1;
      if (!a1)
      {
        v21 = 0;
      }

      *(v19 + 4) = v21;
      *(v19 + 12) = 2048;
      *(v19 + 14) = 16;
      _os_log_impl(&dword_213FAF000, v12, v18, "buffer.count (%ld) <= sizeOfHeader (%ld)", v19, 0x16u);
      MEMORY[0x216056AC0](v20, -1, -1);
    }

    sub_21407D454();
    swift_allocError();
    *v22 = 512;
    *(v22 + 8) = 0;
    swift_willThrow();
    goto LABEL_12;
  }

  v6 = sub_2146D8778();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v33 = 0x1000000000;
  v34 = sub_2146D8738();
  sub_214680B28(&v33, 0);
  sub_21409B55C(&v33, a1, a2, 0x10uLL);
  v9 = v34;
  v10 = sub_2146D8A18();
  v12 = v11;
  v13 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
  v14 = sub_2146D8A38();
  v15 = [v13 initWithData_];

  v16 = sub_21409B7F8(v15);
  if (!v2)
  {
    v24 = v16;
    v35 = v9;
    v25 = v17;

    sub_213FB54FC(v10, v12);
    if (v24 == 0xB1A57D002)
    {
      v12 = HIDWORD(v25);
      sub_21409B984(v25, HIDWORD(v25));
      if (a2 - a1 == v26)
      {
        v27 = CGBitmapContextCreate((a1 + 16), v25, v12, 8uLL, 4 * v25, DeviceRGB, 0x2002u);
        if (v27)
        {
          v28 = v27;
          Image = CGBitmapContextCreateImage(v27);
          if (Image)
          {
            v12 = Image;

            return v12;
          }

          sub_21407D454();
          swift_allocError();
          *v32 = 768;
          *(v32 + 8) = 0;
          swift_willThrow();

          goto LABEL_12;
        }

        sub_21407D454();
        swift_allocError();
        *v31 = 1024;
      }

      else
      {
        sub_21407D454();
        swift_allocError();
        *v31 = 0;
      }

      *(v31 + 8) = 0;
      swift_willThrow();
    }

    else
    {
      sub_21407D454();
      swift_allocError();
      *v30 = 512;
      *(v30 + 8) = 0;
      swift_willThrow();
    }

LABEL_12:

    return v12;
  }

  sub_213FB54FC(v10, v12);

  return v12;
}

uint64_t sub_21409BF7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636967616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
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

void sub_21409C088(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_46;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v13 = DeviceRGB;
  sub_21409B984(a1, a2);
  if (v6)
  {
LABEL_27:

    return;
  }

  v15 = a1;
  if ((a1 - 0x2000000000000000) >> 62 != 3)
  {
    sub_21408014C();
    swift_allocError();
    *v16 = 512;
LABEL_26:
    swift_willThrow();
    goto LABEL_27;
  }

  if (!a4)
  {
    if (!v14)
    {
      sub_21407D454();
      swift_allocError();
      v25 = 257;
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (a5 - a4 != v14)
  {
LABEL_22:
    sub_21407D454();
    swift_allocError();
    v25 = 1;
    goto LABEL_25;
  }

  if (v15 > 0xFFFFFFFFLL)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v17 = a2;
  if ((a2 | v15) < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v17 <= 0xFFFFFFFFLL)
  {
    *a4 = 0xB1A57D002;
    *(a4 + 8) = v15;
    *(a4 + 12) = v17;
    v18 = CGBitmapContextCreate((a4 + 16), a1, a2, 8uLL, 4 * v15, v13, 0x2002u);
    if (v18)
    {
      v19 = v18;
      CGContextSaveGState(v18);
      if (a6 == 1)
      {
LABEL_43:
        sub_2146D9B68();
        CGContextRestoreGState(v19);

        goto LABEL_27;
      }

      v20 = xmmword_2146F21C0;
      v21 = xmmword_2146F21D0;
      v22 = v15;
      v23 = 0.0;
      if (a6 <= 4)
      {
        switch(a6)
        {
          case 2:
            v21 = xmmword_2146F21F0;
            goto LABEL_42;
          case 3:
            v20 = xmmword_2146F21E0;
            v21 = xmmword_2146F21F0;
            goto LABEL_41;
          case 4:
            v20 = xmmword_2146F21E0;
            goto LABEL_32;
        }
      }

      else
      {
        if (a6 <= 6)
        {
          if (a6 == 5)
          {
            v20 = xmmword_2146F21F0;
            v21 = xmmword_2146F21E0;
            goto LABEL_41;
          }

          v20 = xmmword_2146F21D0;
          v21 = xmmword_2146F21E0;
LABEL_32:
          v22 = 0.0;
LABEL_41:
          v23 = v17;
          goto LABEL_42;
        }

        if (a6 == 7)
        {
          v20 = xmmword_2146F21D0;
          v21 = xmmword_2146F21C0;
        }

        else if (a6 == 8)
        {
          v20 = xmmword_2146F21F0;
          v21 = xmmword_2146F21C0;
LABEL_42:
          *&v26.a = v21;
          *&v26.c = v20;
          v26.tx = v22;
          v26.ty = v23;
          CGContextConcatCTM(v19, &v26);
          goto LABEL_43;
        }
      }

      v22 = 0.0;
      goto LABEL_42;
    }

    sub_21407D454();
    swift_allocError();
    v25 = 1025;
LABEL_25:
    *v24 = v25;
    *(v24 + 8) = 0;
    goto LABEL_26;
  }

LABEL_51:
  __break(1u);
}

unint64_t sub_21409C410()
{
  result = qword_280B2F6E8[0];
  if (!qword_280B2F6E8[0])
  {
    type metadata accessor for _BinaryDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B2F6E8);
  }

  return result;
}

unint64_t sub_21409C468()
{
  result = qword_280B2FC20;
  if (!qword_280B2FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2FC20);
  }

  return result;
}

unint64_t sub_21409C4E0()
{
  result = qword_27C905360;
  if (!qword_27C905360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905360);
  }

  return result;
}

unint64_t sub_21409C534(uint64_t a1)
{
  *(a1 + 8) = sub_21409C564();
  result = sub_21409C5B8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21409C564()
{
  result = qword_27C905368;
  if (!qword_27C905368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905368);
  }

  return result;
}

unint64_t sub_21409C5B8()
{
  result = qword_27C905370;
  if (!qword_27C905370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905370);
  }

  return result;
}

unint64_t sub_21409C610()
{
  result = qword_280B2FC10;
  if (!qword_280B2FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2FC10);
  }

  return result;
}

unint64_t sub_21409C668()
{
  result = qword_280B2FC18;
  if (!qword_280B2FC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B2FC18);
  }

  return result;
}

uint64_t sub_21409C6F0@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BasicTextMessage() + 20));
  v4 = v3[7];
  v5 = v3[9];
  v27 = v3[8];
  v28[0] = v5;
  *(v28 + 9) = *(v3 + 153);
  v6 = v3[3];
  v7 = v3[5];
  v23 = v3[4];
  v8 = v23;
  v24 = v7;
  v9 = v3[5];
  v10 = v3[7];
  v25 = v3[6];
  v11 = v25;
  v26 = v10;
  v12 = v3[1];
  v13 = v3[3];
  v21 = v3[2];
  v14 = v21;
  v22 = v13;
  v15 = v3[1];
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  v17 = v3[9];
  a1[8] = v27;
  a1[9] = v17;
  *(a1 + 153) = *(v3 + 153);
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v11;
  a1[7] = v4;
  *a1 = v16;
  a1[1] = v12;
  a1[2] = v14;
  a1[3] = v6;
  return sub_21409C7E8(v20, &v19);
}

uint64_t type metadata accessor for BasicTextMessage()
{
  result = qword_280B2F3F8;
  if (!qword_280B2F3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_21409C820(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for BasicTextMessage() + 20));
  v4 = v3[9];
  v14[8] = v3[8];
  v15[0] = v4;
  *(v15 + 9) = *(v3 + 153);
  v5 = v3[5];
  v14[4] = v3[4];
  v14[5] = v5;
  v6 = v3[7];
  v14[6] = v3[6];
  v14[7] = v6;
  v7 = v3[3];
  v14[2] = v3[2];
  v14[3] = v7;
  v8 = v3[1];
  v14[0] = *v3;
  v14[1] = v8;
  sub_21409C8C0(v14);
  v9 = *(a1 + 144);
  v3[8] = *(a1 + 128);
  v3[9] = v9;
  *(v3 + 153) = *(a1 + 153);
  v10 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v10;
  v11 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v11;
  v12 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v12;
  result = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = result;
  return result;
}

uint64_t sub_21409C938()
{
  v1 = v0 + *(type metadata accessor for BasicTextMessage() + 24);
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

uint64_t sub_21409C9C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for BasicTextMessage() + 24);
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

uint64_t sub_21409CA64(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for BasicTextMessage() + 24);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21409CB2C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for BasicTextMessage() + 24);
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

void (*sub_21409CC7C(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for BasicTextMessage() + 24);
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

    return sub_21409EFEC;
  }

  return result;
}

uint64_t sub_21409CD68@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BasicTextMessage() + 24));
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

uint64_t sub_21409CDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for BasicTextMessage() + 24));
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

uint64_t sub_21409CE44(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for BasicTextMessage() + 24);
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

__n128 sub_21409CEDC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for BasicTextMessage() + 24));
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

void (*sub_21409CF54(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for BasicTextMessage() + 24);
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
  return sub_21409EFF0;
}

uint64_t sub_21409D000()
{
  v1 = v0 + *(type metadata accessor for BasicTextMessage() + 28);
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

uint64_t sub_21409D090@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for BasicTextMessage() + 28);
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

uint64_t sub_21409D12C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for BasicTextMessage() + 28);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21409D1F4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for BasicTextMessage() + 28);
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

void (*sub_21409D344(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for BasicTextMessage() + 28);
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

    return sub_21409EFEC;
  }

  return result;
}

uint64_t sub_21409D430@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BasicTextMessage() + 28));
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

uint64_t sub_21409D49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for BasicTextMessage() + 28));
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

uint64_t sub_21409D50C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for BasicTextMessage() + 28);
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

__n128 sub_21409D5A4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for BasicTextMessage() + 28));
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

void (*sub_21409D61C(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for BasicTextMessage() + 28);
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
  return sub_21409EFF0;
}

uint64_t sub_21409D6C8()
{
  v1 = v0 + *(type metadata accessor for BasicTextMessage() + 32);
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

uint64_t sub_21409D758@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for BasicTextMessage() + 32);
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

uint64_t sub_21409D7F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for BasicTextMessage() + 32);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21409D8BC(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for BasicTextMessage() + 32);
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

void (*sub_21409DA0C(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for BasicTextMessage() + 32);
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

    return sub_21409EFEC;
  }

  return result;
}

uint64_t sub_21409DAF8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BasicTextMessage() + 32));
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

uint64_t sub_21409DB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for BasicTextMessage() + 32));
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

uint64_t sub_21409DBD4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for BasicTextMessage() + 32);
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

__n128 sub_21409DC6C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for BasicTextMessage() + 32));
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

void (*sub_21409DCE4(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for BasicTextMessage() + 32);
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
  return sub_21409EFF0;
}

uint64_t sub_21409DD90()
{
  v1 = v0 + *(type metadata accessor for BasicTextMessage() + 36);
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

uint64_t sub_21409DE20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for BasicTextMessage() + 36);
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

uint64_t sub_21409DEBC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for BasicTextMessage() + 36);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21409DF84(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for BasicTextMessage() + 36);
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

void (*sub_21409E0D4(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for BasicTextMessage() + 36);
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

    return sub_21409E1C0;
  }

  return result;
}

uint64_t sub_21409E1C4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BasicTextMessage() + 36));
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

uint64_t sub_21409E230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for BasicTextMessage() + 36));
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

uint64_t sub_21409E2A0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for BasicTextMessage() + 36);
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

__n128 sub_21409E338(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for BasicTextMessage() + 36));
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

void (*sub_21409E3B0(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for BasicTextMessage() + 36);
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
  return sub_21409E45C;
}

uint64_t sub_21409E460()
{
  v1 = (v0 + *(type metadata accessor for BasicTextMessage() + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_21409E48C(uint64_t a1, char a2)
{
  result = type metadata accessor for BasicTextMessage();
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_21409E51C()
{
  v1 = (v0 + *(type metadata accessor for BasicTextMessage() + 44));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_21409E548(uint64_t a1, char a2)
{
  result = type metadata accessor for BasicTextMessage();
  v6 = v2 + *(result + 44);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_21409E5D8()
{
  v1 = (v0 + *(type metadata accessor for BasicTextMessage() + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_21409E604(uint64_t a1, char a2)
{
  result = type metadata accessor for BasicTextMessage();
  v6 = v2 + *(result + 48);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_21409E694()
{
  v1 = *(v0 + *(type metadata accessor for BasicTextMessage() + 52));
}

uint64_t sub_21409E6C8(uint64_t a1)
{
  v3 = *(type metadata accessor for BasicTextMessage() + 52);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21409E750()
{
  v1 = (v0 + *(type metadata accessor for BasicTextMessage() + 56));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_21409E77C(uint64_t a1, char a2)
{
  result = type metadata accessor for BasicTextMessage();
  v6 = v2 + *(result + 56);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

unint64_t sub_21409E8A8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_213FB7994;
  v5[3] = 0;
  v5[4] = 1024;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_214059860;
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

uint64_t sub_21409EA10()
{
  sub_2146D9EF8();
  MEMORY[0x2160545D0](60, 0xE100000000000000);
  MEMORY[0x2160545D0](0xD000000000000010, 0x80000002146F25C0);
  MEMORY[0x2160545D0](0x6570797462757320, 0xEA0000000000203ALL);
  v1 = (v0 + *(type metadata accessor for BasicTextMessage() + 20));
  v11 = v1[8];
  *v12 = v1[9];
  *&v12[9] = *(v1 + 153);
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0x7461646174656D20, 0xEB00000000203A61);
  type metadata accessor for Metadata();
  sub_2146D9FE8();
  MEMORY[0x2160545D0](15913, 0xE200000000000000);
  return 0;
}

unint64_t sub_21409EB64(uint64_t a1)
{
  *(a1 + 8) = sub_21409EB94();
  result = sub_21409EBE8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21409EB94()
{
  result = qword_27C905380;
  if (!qword_27C905380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905380);
  }

  return result;
}

unint64_t sub_21409EBE8()
{
  result = qword_27C905388;
  if (!qword_27C905388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905388);
  }

  return result;
}

uint64_t sub_21409EC3C(uint64_t a1)
{
  *(a1 + 8) = sub_21409ECA4(&qword_27C905390);
  result = sub_21409ECA4(&qword_27C905398);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21409ECA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BasicTextMessage();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21409ED10()
{
  type metadata accessor for Metadata();
  if (v0 <= 0x3F)
  {
    sub_21409EE88(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050, type metadata accessor for Validated);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BB8);
      if (v2 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B34BC8);
        if (v3 <= 0x3F)
        {
          sub_21409EE88(319, &qword_280B2E3C0, &unk_27C904F20, &qword_2146EE8A0, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_21403BEC8(319, &qword_280B2E320);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21409EE88(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor12BasicTapBackV18MessageSummaryInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_21409EF1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 169))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 168);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21409EF64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
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
    *(result + 168) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 169) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 169) = 0;
    }

    if (a2)
    {
      *(result + 168) = -a2;
    }
  }

  return result;
}

uint64_t sub_21409EFF8(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v5[2];
  v9 = v5[3];
  v10 = v5[4];
  sub_2146DA458();
  v11 = swift_allocBox();
  (*(v3 + 16))(v7, v1, a1);
  sub_2146DA438();
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v10;
  v12[5] = v11;
  return sub_2146D9AA8();
}

uint64_t sub_21409F140(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_2146DA458();
  v1[7] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_21409F1CC, 0, 0);
}

uint64_t sub_21409F1CC()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(MEMORY[0x277D859F0] + 4);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_21409F27C;
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];

  return MEMORY[0x2822007E0](v6, v4);
}

uint64_t sub_21409F27C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21409F3B8, 0, 0);
  }

  else
  {
    swift_endAccess();
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_21409F3B8()
{
  swift_endAccess();
  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_21409F41C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21409A9C0;

  return sub_21409F140(a1);
}

uint64_t MBDChipList.init(payloadData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2146D85C8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_2146D85B8();
  sub_21409F598();
  sub_2146D8598();

  result = sub_213FB54FC(a1, a2);
  if (!v3)
  {
    *a3 = v11;
    *(a3 + 8) = v12;
  }

  return result;
}

unint64_t sub_21409F598()
{
  result = qword_27C9053A0;
  if (!qword_27C9053A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9053A0);
  }

  return result;
}

unint64_t sub_21409F5EC(uint64_t a1)
{
  *(a1 + 8) = sub_21409F61C();
  result = sub_21409F670();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21409F61C()
{
  result = qword_27C9053A8;
  if (!qword_27C9053A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9053A8);
  }

  return result;
}

unint64_t sub_21409F670()
{
  result = qword_27C9053B0;
  if (!qword_27C9053B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9053B0);
  }

  return result;
}

uint64_t sub_21409F6C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_21409F70C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21409F75C@<X0>(char *a1@<X8>)
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

uint64_t sub_21409F7C0()
{
  if (*v0)
  {
    result = 0x6B636F6C726961;
  }

  else
  {
    result = 0x6F6F647473616C62;
  }

  *v0;
  return result;
}

uint64_t sub_21409F800(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6B636F6C726961;
  }

  else
  {
    v4 = 0x6F6F647473616C62;
  }

  if (v3)
  {
    v5 = 0xE900000000000072;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x6B636F6C726961;
  }

  else
  {
    v6 = 0x6F6F647473616C62;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE900000000000072;
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

uint64_t sub_21409F8AC()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21409F934()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_21409F9A8()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21409FA2C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

void sub_21409FA8C(uint64_t *a1@<X8>)
{
  v2 = 0x6F6F647473616C62;
  if (*v1)
  {
    v2 = 0x6B636F6C726961;
  }

  v3 = 0xE900000000000072;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21409FAD0(uint64_t a1, void (*a2)(uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v26 = MEMORY[0x277D84F90];
    sub_21409FDD8(0, v2, 0);
    v5 = v26;
    v6 = (a1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = sub_2146D9628();

      v10 = strdup((v9 + 32));

      v12 = *(v26 + 16);
      v11 = *(v26 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_21409FDD8((v11 > 1), v12 + 1, 1);
      }

      *(v26 + 16) = v12 + 1;
      *(v26 + 8 * v12 + 32) = v10;
      v6 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_2140958CC(0, *(v5 + 2) + 1, 1, v5);
  }

  v14 = *(v5 + 2);
  v13 = *(v5 + 3);
  v15 = v14 + 1;
  if (v14 >= v13 >> 1)
  {
    v5 = sub_2140958CC((v13 > 1), v14 + 1, 1, v5);
  }

  *(v5 + 2) = v15;
  v16 = (v5 + 32);
  *&v5[8 * v14 + 32] = 0;
  sub_21409FDA8(0, v14 + 1, 0);
  v17 = v3;
  v18 = *(v3 + 16);
  v19 = 32;
  do
  {
    v20 = *&v5[v19];
    v21 = *(v17 + 24);
    if (v18 >= v21 >> 1)
    {
      sub_21409FDA8((v21 > 1), v18 + 1, 1);
    }

    *(v17 + 16) = v18 + 1;
    *(v17 + 8 * v18 + 32) = v20;
    v19 += 8;
    ++v18;
    --v15;
  }

  while (v15);
  a2(v17);

  for (i = *(v5 + 2); i; --i)
  {
    v23 = *v16++;
    free(v23);
  }
}

char *sub_21409FD08(char *a1, int64_t a2, char a3)
{
  result = sub_2140A0318(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21409FD28(void *a1, int64_t a2, char a3)
{
  result = sub_2140A0424(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21409FD48(char *a1, int64_t a2, char a3)
{
  result = sub_2140A056C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21409FD68(char *a1, int64_t a2, char a3)
{
  result = sub_2140A067C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21409FD88(char *a1, int64_t a2, char a3)
{
  result = sub_2140A0780(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21409FDA8(char *a1, int64_t a2, char a3)
{
  result = sub_2140A088C(a1, a2, a3, *v3, &qword_27C905490, &qword_2146F2B10);
  *v3 = result;
  return result;
}

char *sub_21409FDD8(char *a1, int64_t a2, char a3)
{
  result = sub_2140A088C(a1, a2, a3, *v3, &qword_27C905220, &qword_2146F1910);
  *v3 = result;
  return result;
}

size_t sub_21409FE08(size_t a1, int64_t a2, char a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C905488, &qword_2146F2B08, _s5CodecVMa);
  *v3 = result;
  return result;
}

char *sub_21409FE4C(char *a1, int64_t a2, char a3)
{
  result = sub_2140A0988(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21409FE6C(char *a1, int64_t a2, char a3)
{
  result = sub_2140A0AA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21409FE8C(char *a1, int64_t a2, char a3)
{
  result = sub_2140A0BA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21409FEAC(size_t a1, int64_t a2, char a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C905460, &qword_2146F2AE0, type metadata accessor for LinkPresentation.AudioMetadata);
  *v3 = result;
  return result;
}

size_t sub_21409FEF0(size_t a1, int64_t a2, char a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C905458, &qword_2146F2AD8, type metadata accessor for LinkPresentation.VideoMetadata);
  *v3 = result;
  return result;
}

size_t sub_21409FF34(size_t a1, int64_t a2, char a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C905448, &qword_2146F2AC8, type metadata accessor for LinkPresentation.IconMetadata);
  *v3 = result;
  return result;
}

size_t sub_21409FF78(size_t a1, int64_t a2, char a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C905440, &qword_2146F2AC0, type metadata accessor for LinkPresentation.ARAssetMetadata);
  *v3 = result;
  return result;
}

size_t sub_21409FFBC(size_t a1, int64_t a2, char a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C905450, &qword_2146F2AD0, type metadata accessor for LinkPresentation.ImageMetadata);
  *v3 = result;
  return result;
}

char *sub_2140A0000(char *a1, int64_t a2, char a3)
{
  result = sub_2140A0CA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2140A0020(char *a1, int64_t a2, char a3)
{
  result = sub_2140A0DB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2140A0040(void *a1, int64_t a2, char a3)
{
  result = sub_2140A0EBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2140A0060(void *a1, int64_t a2, char a3)
{
  result = sub_2140A0FF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2140A0080(char *a1, int64_t a2, char a3)
{
  result = sub_2140A1138(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2140A00A0(char *a1, int64_t a2, char a3)
{
  result = sub_2140A1264(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2140A00C0(char *a1, int64_t a2, char a3)
{
  result = sub_2140A1388(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2140A00E0(size_t a1, int64_t a2, char a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C9053D0, &qword_2146F2A50, type metadata accessor for CSDMHandleProto);
  *v3 = result;
  return result;
}

char *sub_2140A0124(char *a1, int64_t a2, char a3)
{
  result = sub_2140A14AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2140A0144(char *a1, int64_t a2, char a3)
{
  result = sub_2140A15AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2140A0164(char *a1, int64_t a2, char a3)
{
  result = sub_2140A16D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2140A0184(char *a1, int64_t a2, char a3)
{
  result = sub_2140A17FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2140A01A4(size_t a1, int64_t a2, char a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C9053D8, &qword_2146F2A58, type metadata accessor for CSDMConversationInvitationPreferenceProto);
  *v3 = result;
  return result;
}

size_t sub_2140A01E8(size_t a1, int64_t a2, char a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C9053E0, &qword_2146F2A60, type metadata accessor for CSDMConversationActivitySessionProto);
  *v3 = result;
  return result;
}

size_t sub_2140A022C(size_t a1, int64_t a2, char a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C9053E8, &qword_2146F2A68, type metadata accessor for CSDMConversationMemberProto);
  *v3 = result;
  return result;
}

size_t sub_2140A0270(size_t a1, int64_t a2, char a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C9053F0, &qword_2146F2A70, type metadata accessor for CSDMConversationParticipantProto);
  *v3 = result;
  return result;
}

char *sub_2140A02B4(char *a1, int64_t a2, char a3)
{
  result = sub_2140A1924(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2140A02D4(size_t a1, int64_t a2, char a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C905430, &qword_2146F2AB0, type metadata accessor for NearbyGroup_Member);
  *v3 = result;
  return result;
}

char *sub_2140A0318(char *result, int64_t a2, char a3, char *a4)
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

void *sub_2140A0424(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905478, &qword_2146F2AF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905480, &qword_2146F2B00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140A056C(char *result, int64_t a2, char a3, char *a4)
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

char *sub_2140A067C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9053C8, &qword_2146F2A48);
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

char *sub_2140A0780(char *result, int64_t a2, char a3, char *a4)
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

char *sub_2140A088C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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

char *sub_2140A0988(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905470, &qword_2146F2AF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 96 * v8);
  }

  return v10;
}

char *sub_2140A0AA4(char *result, int64_t a2, char a3, char *a4)
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

char *sub_2140A0BA0(char *result, int64_t a2, char a3, char *a4)
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

char *sub_2140A0CA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905438, &qword_2146F2AB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140A0DB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905468, &qword_2146F2AE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2140A0EBC(void *result, int64_t a2, char a3, void *a4)
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

void *sub_2140A0FF0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140A1138(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905400, &qword_2146F2A80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140A1264(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9053F8, &qword_2146F2A78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[296 * v8])
    {
      memmove(v12, v13, 296 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140A1388(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905408, &qword_2146F2A88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[208 * v8])
    {
      memmove(v12, v13, 208 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140A14AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905418, &qword_2146F2A98);
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
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_2140A15AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905420, &qword_2146F2AA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 912);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[912 * v8])
    {
      memmove(v12, v13, 912 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140A16D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905410, &qword_2146F2A90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 496);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[496 * v8])
    {
      memmove(v12, v13, 496 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140A17FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905428, &qword_2146F2AA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 368);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[368 * v8])
    {
      memmove(v12, v13, 368 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140A1924(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9053C0, &qword_2146F2A40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2140A1A40(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_2140A1C1C()
{
  v0 = getpid();
  if (_bd_sandbox_check(v0) != 1)
  {
    goto LABEL_6;
  }

  result = _bd_sandbox_enable_state_flag();
  if ((result & 1) == 0)
  {
    sub_2146D9BA8();
    sub_214063750();
    v2 = sub_2146D9D18();
    sub_2146D91D8();

LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_2140A1D40()
{
  result = qword_27C9053B8;
  if (!qword_27C9053B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9053B8);
  }

  return result;
}

uint64_t _bd_sandbox_enable_state_flag()
{
  v12 = *MEMORY[0x277D85DE8];
  *task_info_out = 0u;
  v10 = 0u;
  task_info_outCnt = 8;
  if (task_info(*MEMORY[0x277D85F48], 0xFu, task_info_out, &task_info_outCnt))
  {
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  *buf = *task_info_out;
  *&buf[16] = v10;
  if ((sandbox_enable_state_flag() & 1) == 0)
  {
    v1 = SandboxLogHandle_onceToken;
    v2 = &__block_literal_global_0;
    if (v1 != -1)
    {
      dispatch_once(&SandboxLogHandle_onceToken, &__block_literal_global_0);
    }

    v3 = SandboxLogHandle_log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"blastdoor-post-launch"];
      v6 = v5;
      v7 = *__error();
      *buf = 138543618;
      *&buf[4] = v5;
      *&buf[12] = 1026;
      *&buf[14] = v7;
      _os_log_error_impl(&dword_213FAF000, v3, OS_LOG_TYPE_ERROR, "sandbox_enable_state_flag failed to enter %{public}@ with errno(%{public}d)", buf, 0x12u);
    }

    goto LABEL_9;
  }

  result = 1;
LABEL_10:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SandboxLogHandle_block_invoke()
{
  SandboxLogHandle_log = os_log_create("com.apple.Messages.blastdoor", "Sandbox");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2140A1F8C()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return result;
}

uint64_t sub_2140A1F98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v4 = result;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

__n128 __swift_memcpy36_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2140A2060(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 36))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2140A2080(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 36) = v3;
  return result;
}

unint64_t sub_2140A20F0()
{
  v1 = *v0;
  v2 = 0x6D694C656D617266;
  v3 = 0x536D726F66696E75;
  v4 = 0x655073656D617266;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2140A21CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2140A5BA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140A21F4(uint64_t a1)
{
  v2 = sub_2140A24A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140A2230(uint64_t a1)
{
  v2 = sub_2140A24A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoPreview.MultiFrameConstraints.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905498, &qword_2146F2BA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v16 = v1[2];
  v17 = v9;
  v15 = *(v1 + 24);
  v14 = v1[4];
  v13[3] = *(v1 + 40);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A24A4();
  sub_2146DAA28();
  v23 = 0;
  sub_2146DA368();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v22 = 1;
  sub_2146DA368();
  v21 = 2;
  sub_2146DA368();
  v20 = 3;
  sub_2146DA338();
  v19 = 4;
  sub_2146DA368();
  v18 = 5;
  sub_2146DA338();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2140A24A4()
{
  result = qword_27C9054A0;
  if (!qword_27C9054A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9054A0);
  }

  return result;
}

uint64_t VideoPreview.MultiFrameConstraints.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9054A8, &qword_2146F2BA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A24A4();
  sub_2146DAA08();
  if (!v2)
  {
    v25 = 0;
    v11 = sub_2146DA1A8();
    v24 = 1;
    v12 = sub_2146DA1A8();
    v23 = 2;
    v19 = sub_2146DA1A8();
    v22 = 3;
    v18 = sub_2146DA178();
    v21 = 4;
    v17 = sub_2146DA1A8();
    v20 = 5;
    HIDWORD(v16) = sub_2146DA178();
    (*(v6 + 8))(v9, v5);
    v14 = v18 & 1;
    v15 = BYTE4(v16) & 1;
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v19;
    *(a2 + 24) = v14;
    *(a2 + 32) = v17;
    *(a2 + 40) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140A2798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000021478C740 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2146DA6A8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2140A282C(uint64_t a1)
{
  v2 = sub_2140A29DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140A2868(uint64_t a1)
{
  v2 = sub_2140A29DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoPreview.SingleFrameConstraints.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9054B0, &qword_2146F2BB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A29DC();
  sub_2146DAA28();
  sub_2146DA368();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2140A29DC()
{
  result = qword_27C9054B8;
  if (!qword_27C9054B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9054B8);
  }

  return result;
}

uint64_t VideoPreview.SingleFrameConstraints.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9054C0, &qword_2146F2BB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A29DC();
  sub_2146DAA08();
  if (!v2)
  {
    v11 = sub_2146DA1A8();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140A2B9C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9054B0, &qword_2146F2BB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A29DC();
  sub_2146DAA28();
  sub_2146DA368();
  return (*(v4 + 8))(v7, v3);
}

__n128 VideoPreview.Constraints.frameConstraints.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  result = *v1;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_2140A2D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000021478C760 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2146DA6A8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2140A2DA0(uint64_t a1)
{
  v2 = sub_2140A2F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140A2DDC(uint64_t a1)
{
  v2 = sub_2140A2F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoPreview.Constraints.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9054C8, &qword_2146F2BC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A2F7C();
  sub_2146DAA28();
  v12 = *(v2 + 16);
  v14[0] = *v2;
  v14[1] = v12;
  v15 = v9;
  v16 = v10;
  sub_2140A2FD0();
  sub_2146DA388();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2140A2F7C()
{
  result = qword_27C9054D0;
  if (!qword_27C9054D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9054D0);
  }

  return result;
}

unint64_t sub_2140A2FD0()
{
  result = qword_27C9054D8;
  if (!qword_27C9054D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9054D8);
  }

  return result;
}

uint64_t VideoPreview.Constraints.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9054E0, &qword_2146F2BC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A2F7C();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2140A31A4();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v11 = v16;
    v12 = v17;
    v13 = v15[1];
    *a2 = v15[0];
    *(a2 + 16) = v13;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2140A31A4()
{
  result = qword_27C9054E8;
  if (!qword_27C9054E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9054E8);
  }

  return result;
}

uint64_t VideoPreview.VideoFormat.formatName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t VideoPreview.VideoFormat.codec.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

BlastDoor::VideoPreview::VideoFormat __swiftcall VideoPreview.VideoFormat.init(formatName:codec:)(Swift::String_optional formatName, Swift::String_optional codec)
{
  *v2 = formatName;
  v2[1] = codec;
  result.codec = codec;
  result.formatName = formatName;
  return result;
}

uint64_t sub_2140A32AC(uint64_t a1, uint64_t a2)
{
  v4 = _s5CodecVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2140A3310()
{
  result = qword_27C9054F8;
  if (!qword_27C9054F8)
  {
    sub_2146D9C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9054F8);
  }

  return result;
}

uint64_t sub_2140A3368(uint64_t a1)
{
  v2 = _s5CodecVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2140A33C4(uint64_t a1, uint64_t a2)
{
  v4 = _s5CodecVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2140A3440@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, void *a3@<X8>)
{
  v67 = a2;
  v58 = a3;
  v4 = sub_2146D9C88();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2146D9C68();
  v7 = *(v66 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = _s5CodecVMa();
  v10 = *(v57 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v57);
  v64 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9054F0, &unk_2146F2BD0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v55 = &v52 - v22;
  MEMORY[0x28223BE20](v21);
  v56 = &v52 - v23;
  result = *(a1 + 8);
  v63 = *(result + 16);
  if (v63)
  {
    v25 = 0;
    v60 = (v7 + 8);
    v26 = MEMORY[0x277D84F90];
    v59 = v10;
    v61 = result;
    v62 = v20;
    v27 = v65;
    while (v25 < *(result + 16))
    {
      v28 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v29 = *(v10 + 72);
      v30 = sub_2140A32AC(result + v28 + v29 * v25, v15);
      v67(v30);
      sub_2140A3310();
      v31 = v66;
      sub_2146D97C8();
      sub_2146D97C8();
      (*v60)(v27, v31);
      if (v69 == v68)
      {
        sub_2140A33C4(v15, v64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21409FE08(0, *(v26 + 16) + 1, 1);
          v26 = v70;
        }

        v34 = *(v26 + 16);
        v33 = *(v26 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_21409FE08(v33 > 1, v34 + 1, 1);
          v26 = v70;
        }

        *(v26 + 16) = v34 + 1;
        sub_2140A33C4(v64, v26 + v28 + v34 * v29);
        v10 = v59;
      }

      else
      {
        sub_2140A3368(v15);
      }

      ++v25;
      v20 = v62;
      result = v61;
      if (v63 == v25)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
LABEL_13:

    if (*(v26 + 16))
    {
      v35 = v56;
      sub_2140A32AC(v26 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v56);
      v36 = 0;
    }

    else
    {
      v36 = 1;
      v35 = v56;
    }

    v37 = v57;

    (*(v10 + 56))(v35, v36, 1, v37);
    v38 = v55;
    sub_213FB2E54(v35, v55, &qword_27C9054F0, &unk_2146F2BD0);
    v39 = *(v10 + 48);
    if (v39(v38, 1, v37) == 1)
    {
      sub_213FB2DF4(v38, &qword_27C9054F0, &unk_2146F2BD0);
      v40 = 0;
      v41 = 0;
    }

    else
    {
      v42 = (v38 + *(v37 + 20));
      v40 = *v42;
      v41 = v42[1];

      sub_2140A3368(v38);
    }

    v43 = v58;
    sub_213FB2E54(v35, v20, &qword_27C9054F0, &unk_2146F2BD0);
    if (v39(v20, 1, v37) == 1)
    {
      sub_213FB2DF4(v35, &qword_27C9054F0, &unk_2146F2BD0);
      result = sub_213FB2DF4(v20, &qword_27C9054F0, &unk_2146F2BD0);
      v44 = 0;
      v45 = 0;
    }

    else
    {
      v47 = v52;
      v46 = v53;
      v48 = &v20[*(v37 + 24)];
      v49 = v54;
      (*(v53 + 16))(v52, v48, v54);
      sub_2140A3368(v20);
      v50 = sub_2146D9C78();
      (*(v46 + 8))(v47, v49);
      v44 = sub_21445D60C(v50);
      v45 = v51;
      result = sub_213FB2DF4(v35, &qword_27C9054F0, &unk_2146F2BD0);
    }

    *v43 = v40;
    v43[1] = v41;
    v43[2] = v44;
    v43[3] = v45;
  }

  return result;
}

uint64_t VideoPreview.image.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 VideoPreview.image.setter(uint64_t a1)
{
  sub_213FB2DF4(v1, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = v3;
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v10;
  return result;
}

void (*VideoPreview.image.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 248;
  *(v4 + 496) = v2;
  result = sub_213FB2E54(v2, v4 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v5 + 272))
  {
    v8 = *(v6 + 208);
    *(v5 + 192) = *(v6 + 192);
    *(v5 + 208) = v8;
    *(v5 + 224) = *(v6 + 224);
    *(v5 + 240) = *(v6 + 240);
    v9 = *(v6 + 144);
    *(v5 + 128) = *(v6 + 128);
    *(v5 + 144) = v9;
    v10 = *(v6 + 176);
    *(v5 + 160) = *(v6 + 160);
    *(v5 + 176) = v10;
    v11 = *(v6 + 80);
    *(v5 + 64) = *(v6 + 64);
    *(v5 + 80) = v11;
    v12 = *(v6 + 112);
    *(v5 + 96) = *(v6 + 96);
    *(v5 + 112) = v12;
    v13 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v13;
    v14 = *(v6 + 48);
    *(v5 + 32) = *(v6 + 32);
    *(v5 + 48) = v14;
    return sub_2140A3C24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2140A3C24(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 62);
    sub_21407CF14(*a1, (v2 + 248));
    sub_213FB2DF4(v3, &qword_27C904858, &qword_214736F00);
    v4 = *(v2 + 264);
    v5 = *(v2 + 296);
    v6 = *(v2 + 248);
    *(v3 + 32) = *(v2 + 280);
    *(v3 + 48) = v5;
    *v3 = v6;
    *(v3 + 16) = v4;
    v7 = *(v2 + 360);
    v9 = *(v2 + 312);
    v8 = *(v2 + 328);
    *(v3 + 96) = *(v2 + 344);
    *(v3 + 112) = v7;
    *(v3 + 64) = v9;
    *(v3 + 80) = v8;
    v10 = *(v2 + 424);
    v12 = *(v2 + 376);
    v11 = *(v2 + 392);
    *(v3 + 160) = *(v2 + 408);
    *(v3 + 176) = v10;
    *(v3 + 128) = v12;
    *(v3 + 144) = v11;
    v14 = *(v2 + 456);
    v13 = *(v2 + 472);
    v15 = *(v2 + 440);
    *(v3 + 240) = *(v2 + 61);
    *(v3 + 208) = v14;
    *(v3 + 224) = v13;
    *(v3 + 192) = v15;
    sub_21406D2CC(v2);
  }

  else
  {
    v16 = *(v2 + 62);
    sub_213FB2DF4(v16, &qword_27C904858, &qword_214736F00);
    v17 = *(v2 + 3);
    v19 = *v2;
    v18 = *(v2 + 1);
    *(v16 + 32) = *(v2 + 2);
    *(v16 + 48) = v17;
    *v16 = v19;
    *(v16 + 16) = v18;
    v20 = *(v2 + 7);
    v22 = *(v2 + 4);
    v21 = *(v2 + 5);
    *(v16 + 96) = *(v2 + 6);
    *(v16 + 112) = v20;
    *(v16 + 64) = v22;
    *(v16 + 80) = v21;
    v23 = *(v2 + 11);
    v25 = *(v2 + 8);
    v24 = *(v2 + 9);
    *(v16 + 160) = *(v2 + 10);
    *(v16 + 176) = v23;
    *(v16 + 128) = v25;
    *(v16 + 144) = v24;
    v27 = *(v2 + 13);
    v26 = *(v2 + 14);
    v28 = *(v2 + 12);
    *(v16 + 240) = *(v2 + 30);
    *(v16 + 208) = v27;
    *(v16 + 224) = v26;
    *(v16 + 192) = v28;
  }

  free(v2);
}

void *VideoPreview.$image.setter(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

void (*VideoPreview.$image.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

void sub_2140A3E5C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 880);
  if (a2)
  {
    sub_213FB2E54(*a1, (v2 + 55), &qword_27C905500, &qword_2146F2BE0);
    sub_213FB2DF4(v3, &qword_27C905500, &qword_2146F2BE0);
    memcpy(v3, v2 + 55, 0x1B8uLL);
    sub_213FB2DF4(v2, &qword_27C905500, &qword_2146F2BE0);
  }

  else
  {
    sub_213FB2DF4(v2[110], &qword_27C905500, &qword_2146F2BE0);
    memcpy(v3, v2, 0x1B8uLL);
  }

  free(v2);
}

uint64_t VideoPreview.videoFormat.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 496);
  *a1 = *(v1 + 472);
  *(a1 + 8) = *(v1 + 480);
  *(a1 + 24) = v2;
}

uint64_t VideoPreview.audioFormat.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 528);
  *a1 = *(v1 + 504);
  *(a1 + 8) = *(v1 + 512);
  *(a1 + 24) = v2;
}

unint64_t sub_2140A3FEC()
{
  v1 = *v0;
  v2 = 0x6567616D69;
  v3 = 0x726F466F69647561;
  if (v1 != 6)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x756F436B63617274;
  if (v1 != 4)
  {
    v4 = 0x726F466F65646976;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656D617266;
  if (v1 != 2)
  {
    v5 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    v2 = 0x6F6C6F7475417369;
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

uint64_t sub_2140A4104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2140A5DC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140A412C(uint64_t a1)
{
  v2 = sub_2140A4CD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140A4168(uint64_t a1)
{
  v2 = sub_2140A4CD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoPreview.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905508, &qword_2146F2BE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A4CD8();
  sub_2146DAA28();
  LOBYTE(v21) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_2140A4DD4(qword_280B2E688);
  sub_2146DA388();
  if (!v2)
  {
    v11 = *(v3 + 440);
    LOBYTE(v21) = 1;
    sub_2146DA338();
    v12 = *(v3 + 448);
    LOBYTE(v21) = 2;
    sub_2146DA368();
    v13 = *(v3 + 456);
    LOBYTE(v21) = 3;
    sub_2146DA348();
    v14 = *(v3 + 464);
    LOBYTE(v21) = 4;
    sub_2146DA368();
    v15 = *(v3 + 496);
    v21 = *(v3 + 472);
    v22 = *(v3 + 480);
    v23 = v15;
    v20 = 5;
    sub_2140A4D2C();

    sub_2146DA388();

    v16 = *(v3 + 528);
    v21 = *(v3 + 504);
    v22 = *(v3 + 512);
    v23 = v16;
    v20 = 6;
    sub_2140A4D80();

    sub_2146DA388();

    v17 = *(v3 + 536);
    LOBYTE(v21) = 7;
    sub_2146DA338();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t VideoPreview.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905528, &qword_2146F2BF0);
  v5 = *(v17 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v17);
  v8 = &v16 - v7;
  LOBYTE(v18) = 1;
  v60 = 1;
  v24 = 1;
  v23 = 1;
  v22 = 1;
  v21 = 1;
  v20 = 1;
  v48 = 0uLL;
  *&v49 = 0;
  BYTE8(v49) = 1;
  *&v50 = 0;
  BYTE8(v50) = 1;
  *&v51 = 0;
  BYTE8(v51) = 1;
  *&v52 = 0;
  WORD4(v52) = 1025;
  v53 = 0uLL;
  *&v54 = 0;
  WORD4(v54) = 1;
  *&v55 = 0;
  BYTE8(v55) = 1;
  *&v56 = 0;
  BYTE8(v56) = 1;
  v58 = 0u;
  v57 = 0u;
  *&v59 = 0;
  *(&v59 + 1) = 0xF000000000000000;
  sub_2140611C0(&v48);
  v36 = v57;
  v37 = v58;
  v38 = v59;
  v32 = v53;
  v33 = v54;
  v34 = v55;
  v35 = v56;
  v28 = v49;
  v29 = v50;
  v30 = v51;
  v31 = v52;
  v27 = v48;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A4CD8();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_213FB2DF4(v25, &qword_27C905500, &qword_2146F2BE0);
  }

  else
  {
    v10 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
    v60 = 0;
    sub_2140A4DD4(&qword_280B30CB8);
    sub_2146DA1C8();
    sub_2140A4E24(&v18, v25);
    LOBYTE(v18) = 1;
    v11 = v5;
    v39 = sub_2146DA178() & 1;
    LOBYTE(v18) = 2;
    v40 = sub_2146DA1A8();
    LOBYTE(v18) = 3;
    sub_2146DA188();
    v41 = v12;
    LOBYTE(v18) = 4;
    v42 = sub_2146DA1A8();
    v60 = 5;
    sub_2140A4E94();
    sub_2146DA1C8();
    v43 = v18;
    v44 = v19;
    v60 = 6;
    sub_2140A4EE8();
    sub_2146DA1C8();
    v45 = v18;
    v46 = v19;
    LOBYTE(v18) = 7;
    v13 = v17;
    v14 = sub_2146DA178();
    (*(v11 + 8))(v8, v13);
    v47 = v14 & 1;
    sub_2140A4F3C(v25, v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2140A4F74(v25);
  }
}

__n128 VideoPreview.init(image:isAutoloop:frame:timestamp:trackCount:videoFormat:audioFormat:videoIsMonoskiAsset:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, _OWORD *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v18 = (a8 + 472);
  v36 = 0uLL;
  *&v37 = 0;
  BYTE8(v37) = 1;
  *&v38 = 0;
  BYTE8(v38) = 1;
  *&v39 = 0;
  BYTE8(v39) = 1;
  *&v40 = 0;
  WORD4(v40) = 1025;
  v41 = 0uLL;
  *&v42 = 0;
  WORD4(v42) = 1;
  *&v43 = 0;
  BYTE8(v43) = 1;
  *&v44 = 0;
  BYTE8(v44) = 1;
  v45 = 0u;
  v46 = 0u;
  *&v47 = 0;
  *(&v47 + 1) = 0xF000000000000000;
  sub_2140611C0(&v36);
  v19 = v46;
  *(a8 + 392) = v45;
  *(a8 + 408) = v19;
  *(a8 + 424) = v47;
  v20 = v42;
  *(a8 + 328) = v41;
  *(a8 + 344) = v20;
  v21 = v44;
  *(a8 + 360) = v43;
  *(a8 + 376) = v21;
  v22 = v37;
  *(a8 + 248) = v36;
  v23 = v38;
  v24 = v39;
  *(a8 + 264) = v22;
  *(a8 + 280) = v23;
  v25 = v40;
  *(a8 + 296) = v24;
  *(a8 + 312) = v25;
  *(a8 + 240) = 0;
  *(a8 + 208) = 0u;
  *(a8 + 224) = 0u;
  *(a8 + 176) = 0u;
  *(a8 + 192) = 0u;
  *(a8 + 144) = 0u;
  *(a8 + 160) = 0u;
  *(a8 + 112) = 0u;
  *(a8 + 128) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0u;
  *a8 = 0u;
  *(a8 + 440) = a2;
  *(a8 + 448) = a3;
  *(a8 + 456) = a9;
  *(a8 + 464) = a4;
  v26 = a5[1];
  *v18 = *a5;
  v18[1] = v26;
  v27 = a6[1];
  v18[2] = *a6;
  v18[3] = v27;
  *(a8 + 536) = a7;
  sub_213FB2DF4(a8, &qword_27C904858, &qword_214736F00);
  v28 = *(a1 + 208);
  *(a8 + 192) = *(a1 + 192);
  *(a8 + 208) = v28;
  *(a8 + 224) = *(a1 + 224);
  *(a8 + 240) = *(a1 + 240);
  v29 = *(a1 + 144);
  *(a8 + 128) = *(a1 + 128);
  *(a8 + 144) = v29;
  v30 = *(a1 + 176);
  *(a8 + 160) = *(a1 + 160);
  *(a8 + 176) = v30;
  v31 = *(a1 + 80);
  *(a8 + 64) = *(a1 + 64);
  *(a8 + 80) = v31;
  v32 = *(a1 + 112);
  *(a8 + 96) = *(a1 + 96);
  *(a8 + 112) = v32;
  v33 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v33;
  result = *(a1 + 32);
  v35 = *(a1 + 48);
  *(a8 + 32) = result;
  *(a8 + 48) = v35;
  return result;
}

double VideoPreview.Constraints.init(maxPixelDimension:minPixelSize:scaleFactor:processFirstFrameOnly:frameInterval:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  return result;
}

__n128 VideoPreview.Constraints.init(multiFrameConstraints:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[2].n128_u64[0];
  v5 = a1[2].n128_u8[8] | 0x80;
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  a2[1].n128_u64[1] = v3;
  a2[2].n128_u64[0] = v4;
  a2[2].n128_u8[8] = v5;
  return result;
}

void __swiftcall VideoPreview.MultiFrameConstraints.init(targetPixelWidth:targetPixelHeight:frameLimit:uniformSampling:framesPerSync:appliesPreferredTrackTransform:)(BlastDoor::VideoPreview::MultiFrameConstraints *__return_ptr retstr, Swift::Int targetPixelWidth, Swift::Int targetPixelHeight, Swift::Int frameLimit, Swift::Bool uniformSampling, Swift::Int framesPerSync, Swift::Bool appliesPreferredTrackTransform)
{
  retstr->targetPixelHeight = targetPixelHeight;
  retstr->targetPixelWidth = targetPixelWidth;
  retstr->frameLimit = frameLimit;
  retstr->uniformSampling = uniformSampling;
  retstr->framesPerSync = framesPerSync;
  retstr->appliesPreferredTrackTransform = appliesPreferredTrackTransform;
}

unint64_t sub_2140A4CD8()
{
  result = qword_27C905510;
  if (!qword_27C905510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905510);
  }

  return result;
}

unint64_t sub_2140A4D2C()
{
  result = qword_27C905518;
  if (!qword_27C905518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905518);
  }

  return result;
}

unint64_t sub_2140A4D80()
{
  result = qword_27C905520;
  if (!qword_27C905520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905520);
  }

  return result;
}

uint64_t sub_2140A4DD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905500, &qword_2146F2BE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2140A4E24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2140A4E94()
{
  result = qword_27C905530;
  if (!qword_27C905530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905530);
  }

  return result;
}

unint64_t sub_2140A4EE8()
{
  result = qword_27C905538;
  if (!qword_27C905538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905538);
  }

  return result;
}

unint64_t sub_2140A5000()
{
  result = qword_27C905540;
  if (!qword_27C905540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905540);
  }

  return result;
}

unint64_t sub_2140A5058()
{
  result = qword_27C905548;
  if (!qword_27C905548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905548);
  }

  return result;
}

unint64_t sub_2140A50AC(uint64_t a1)
{
  result = sub_2140A50D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2140A50D4()
{
  result = qword_27C905550;
  if (!qword_27C905550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905550);
  }

  return result;
}

uint64_t sub_2140A5154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2140A5190()
{
  result = qword_27C905558;
  if (!qword_27C905558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905558);
  }

  return result;
}

unint64_t sub_2140A51E4()
{
  result = qword_27C905560;
  if (!qword_27C905560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905560);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_9BlastDoor5ImageV8EncodingO(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor5ImageV8EncodingOSg(uint64_t a1)
{
  if ((*(a1 + 24) >> 1) > 0x80000000)
  {
    return -(*(a1 + 24) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor5ImageVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2140A5284(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 537))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 272) >> 1;
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

double sub_2140A52D4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(a1 + 536) = 0;
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
      *(a1 + 537) = 1;
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
      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
      *(a1 + 264) = 0;
      *(a1 + 272) = 2 * -a2;
      result = 0.0;
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
      return result;
    }

    *(a1 + 537) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2140A53EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2140A5440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for VideoPreview.FrameConstraints(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_2140A54FC(uint64_t result, char a2)
{
  v2 = *(result + 40) & 1 | (a2 << 7);
  *(result + 24) &= 1uLL;
  *(result + 40) = v2;
  return result;
}

uint64_t sub_2140A552C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
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

uint64_t sub_2140A557C(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * -a2;
      *(result + 32) = 0;
      *(result + 40) = 0;
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

uint64_t getEnumTagSinglePayload for VideoPreview.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoPreview.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2140A578C()
{
  result = qword_27C905568;
  if (!qword_27C905568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905568);
  }

  return result;
}

unint64_t sub_2140A57E4()
{
  result = qword_27C905570;
  if (!qword_27C905570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905570);
  }

  return result;
}

unint64_t sub_2140A583C()
{
  result = qword_27C905578;
  if (!qword_27C905578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905578);
  }

  return result;
}

unint64_t sub_2140A5894()
{
  result = qword_27C905580;
  if (!qword_27C905580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905580);
  }

  return result;
}

unint64_t sub_2140A58EC()
{
  result = qword_27C905588;
  if (!qword_27C905588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905588);
  }

  return result;
}

unint64_t sub_2140A5944()
{
  result = qword_27C905590;
  if (!qword_27C905590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905590);
  }

  return result;
}

unint64_t sub_2140A599C()
{
  result = qword_27C905598;
  if (!qword_27C905598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905598);
  }

  return result;
}

unint64_t sub_2140A59F4()
{
  result = qword_27C9055A0;
  if (!qword_27C9055A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9055A0);
  }

  return result;
}

unint64_t sub_2140A5A4C()
{
  result = qword_27C9055A8;
  if (!qword_27C9055A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9055A8);
  }

  return result;
}

unint64_t sub_2140A5AA4()
{
  result = qword_27C9055B0;
  if (!qword_27C9055B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9055B0);
  }

  return result;
}

unint64_t sub_2140A5AFC()
{
  result = qword_27C9055B8;
  if (!qword_27C9055B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9055B8);
  }

  return result;
}

unint64_t sub_2140A5B54()
{
  result = qword_27C9055C0;
  if (!qword_27C9055C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9055C0);
  }

  return result;
}

uint64_t sub_2140A5BA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000021478C6E0 == a2;
  if (v3 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021478C700 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D694C656D617266 && a2 == 0xEA00000000007469 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x536D726F66696E75 && a2 == 0xEF676E696C706D61 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x655073656D617266 && a2 == 0xED0000636E795372 || (sub_2146DA6A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000021478C720 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_2140A5DC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6C6F7475417369 && a2 == 0xEA0000000000706FLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756F436B63617274 && a2 == 0xEA0000000000746ELL || (sub_2146DA6A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F466F65646976 && a2 == 0xEB0000000074616DLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F466F69647561 && a2 == 0xEB0000000074616DLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021478C780 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t Background.Context.wallpaperWorkingDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t Background.Context.init(wallpaperWorkingDirectory:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_2140A6138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x800000021478C7A0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2146DA6A8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2140A61CC(uint64_t a1)
{
  v2 = sub_2140A63C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140A6208(uint64_t a1)
{
  v2 = sub_2140A63C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Background.Context.encode(to:)(void *a1)
{
  v13[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055C8, &qword_2146F3618);
  v3 = *(v13[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v13[0]);
  v6 = v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A63C4();

  sub_2146DAA28();
  v13[1] = v7;
  v13[2] = v8;
  v14 = v9;
  sub_2140A6418();
  v11 = v13[0];
  sub_2146DA388();

  return (*(v3 + 8))(v6, v11);
}

unint64_t sub_2140A63C4()
{
  result = qword_27C9055D0;
  if (!qword_27C9055D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9055D0);
  }

  return result;
}

unint64_t sub_2140A6418()
{
  result = qword_280B34CB0;
  if (!qword_280B34CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34CB0);
  }

  return result;
}

uint64_t Background.Context.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055D8, &qword_2146F3620);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A63C4();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21406100C();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v11 = v14[2];
    v12 = v15;
    *a2 = v14[1];
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *Background.init(poster:watchBackground:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PosterArchive();
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  sub_2140A66B8(a1, a3);
  v7 = (a3 + *(type metadata accessor for Background() + 20));

  return memcpy(v7, a2, 0x1E8uLL);
}

uint64_t sub_2140A66B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055E0, &unk_2146F4F50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for Background()
{
  result = qword_280B2FCD0;
  if (!qword_280B2FCD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Background.watchBackground.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Background() + 20);

  return sub_2140A6810(v3, a1);
}

uint64_t Background.watchBackground.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Background() + 20);

  return sub_2140A688C(a1, v3);
}

uint64_t sub_2140A690C()
{
  if (*v0)
  {
    result = 0x6361426863746177;
  }

  else
  {
    result = 0x726574736F70;
  }

  *v0;
  return result;
}

uint64_t sub_2140A6950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726574736F70 && a2 == 0xE600000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6361426863746177 && a2 == 0xEF646E756F72676BLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2140A6A30(uint64_t a1)
{
  v2 = sub_2140A6C70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140A6A6C(uint64_t a1)
{
  v2 = sub_2140A6C70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Background.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055E8, &qword_2146F3628);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A6C70();
  sub_2146DAA28();
  v11[15] = 0;
  type metadata accessor for PosterArchive();
  sub_2140A7AB0(&qword_27C9055F8, type metadata accessor for PosterArchive);
  sub_2146DA308();
  if (!v1)
  {
    v9 = *(type metadata accessor for Background() + 20);
    v11[14] = 1;
    sub_2140A6CC4();
    sub_2146DA388();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2140A6C70()
{
  result = qword_27C9055F0;
  if (!qword_27C9055F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9055F0);
  }

  return result;
}

unint64_t sub_2140A6CC4()
{
  result = qword_27C905600;
  if (!qword_27C905600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905600);
  }

  return result;
}

uint64_t Background.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055E0, &unk_2146F4F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v22 = &v19 - v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905608, &qword_2146F3630);
  v21 = *(v23 - 8);
  v6 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Background();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PosterArchive();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A6C70();
  v15 = v24;
  sub_2146DAA08();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_213FB2DF4(v12, &qword_27C9055E0, &unk_2146F4F50);
  }

  else
  {
    v16 = v21;
    v25[0] = 0;
    sub_2140A7AB0(&qword_27C905610, type metadata accessor for PosterArchive);
    sub_2146DA148();
    sub_2140A66B8(v22, v12);
    v25[511] = 1;
    sub_2140A704C();
    v17 = v23;
    sub_2146DA1C8();
    (*(v16 + 8))(v8, v17);
    memcpy(&v12[*(v9 + 20)], v25, 0x1E8uLL);
    sub_2140A70A0(v12, v20);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2140A7104(v12);
  }
}

unint64_t sub_2140A704C()
{
  result = qword_27C905618;
  if (!qword_27C905618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905618);
  }

  return result;
}

uint64_t sub_2140A70A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Background();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2140A7104(uint64_t a1)
{
  v2 = type metadata accessor for Background();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2140A7190@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_2140A7228(uint64_t a1)
{
  sub_213FB2DF4(v1, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = v3;
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v10;
  return result;
}

void (*sub_2140A72A8(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 248;
  *(v4 + 496) = v2;
  result = sub_213FB2E54(v2, v4 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v5 + 272))
  {
    v8 = *(v6 + 208);
    *(v5 + 192) = *(v6 + 192);
    *(v5 + 208) = v8;
    *(v5 + 224) = *(v6 + 224);
    *(v5 + 240) = *(v6 + 240);
    v9 = *(v6 + 144);
    *(v5 + 128) = *(v6 + 128);
    *(v5 + 144) = v9;
    v10 = *(v6 + 176);
    *(v5 + 160) = *(v6 + 160);
    *(v5 + 176) = v10;
    v11 = *(v6 + 80);
    *(v5 + 64) = *(v6 + 64);
    *(v5 + 80) = v11;
    v12 = *(v6 + 112);
    *(v5 + 96) = *(v6 + 96);
    *(v5 + 112) = v12;
    v13 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v13;
    v14 = *(v6 + 48);
    *(v5 + 32) = *(v6 + 32);
    *(v5 + 48) = v14;
    return sub_2140A3C24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2140A73C0(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

void (*sub_2140A7414(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

uint64_t sub_2140A74A0()
{
  if (*(v0 + 464))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 456);
  }

  return result;
}

uint64_t sub_2140A7504@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 464))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 456);
  }

  return result;
}

uint64_t (*sub_2140A7588(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  if (*(v1 + 464))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 456);
    return sub_2140A7610;
  }

  return result;
}

uint64_t sub_2140A763C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 448);
  v3 = *(v1 + 456);
  v4 = *(v1 + 464);
  v5 = *(v1 + 465);
  *a1 = *(v1 + 440);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

uint64_t sub_2140A7660(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a2 + 448);

  *(a2 + 440) = v4;
  *(a2 + 448) = v3;
  *(a2 + 456) = v5;
  *(a2 + 464) = v6;
  *(a2 + 465) = v7;
  return result;
}

__n128 sub_2140A76CC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = *(v1 + 448);

  result = *a1;
  *(v1 + 440) = *a1;
  *(v1 + 456) = v3;
  *(v1 + 464) = v4;
  *(v1 + 465) = v5;
  return result;
}

void (*sub_2140A7728(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 448);
  v6 = *(v1 + 456);
  v7 = *(v1 + 464);
  v8 = *(v1 + 465);
  *v4 = *(v1 + 440);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_2140A77C0;
}

void sub_2140A77C0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(v3 + 448);
  if (a2)
  {
    v10 = (*a1)[1];

    *(v3 + 440) = v5;
    *(v3 + 448) = v4;
    *(v3 + 456) = v6;
    *(v3 + 464) = v7;
    *(v3 + 465) = v8;
    v11 = v2[1];
  }

  else
  {
    v12 = *(v3 + 448);

    *(v3 + 440) = v5;
    *(v3 + 448) = v4;
    *(v3 + 456) = v6;
    *(v3 + 464) = v7;
    *(v3 + 465) = v8;
  }

  free(v2);
}

uint64_t sub_2140A789C()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 480);

  return v1;
}

uint64_t sub_2140A78CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 480);

  *(v2 + 472) = a1;
  *(v2 + 480) = a2;
  return result;
}

unint64_t sub_2140A7928()
{
  result = qword_27C905620;
  if (!qword_27C905620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905620);
  }

  return result;
}

unint64_t sub_2140A7980()
{
  result = qword_27C905628;
  if (!qword_27C905628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C905628);
  }

  return result;
}

uint64_t sub_2140A79D4(uint64_t a1)
{
  result = sub_2140A7AB0(&qword_27C905630, type metadata accessor for Background);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2140A7A2C(uint64_t a1)
{
  *(a1 + 8) = sub_2140A7AB0(&qword_27C905638, type metadata accessor for Background);
  result = sub_2140A7AB0(&qword_27C905640, type metadata accessor for Background);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2140A7AB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2140A7AF8(uint64_t a1)
{
  *(a1 + 8) = sub_2140A704C();
  result = sub_2140A6CC4();
  *(a1 + 16) = result;
  return result;
}

void sub_2140A7B50()
{
  sub_2140A7BC4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2140A7BC4()
{
  if (!qword_280B2F920)
  {
    type metadata accessor for PosterArchive();
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_280B2F920);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2140A7C30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2140A7C78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2140A7CD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 488))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 272) >> 1;
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

double sub_2140A7D20(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(a1 + 456) = 0u;
    *(a1 + 472) = 0u;
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
      *(a1 + 488) = 1;
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
      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
      *(a1 + 264) = 0;
      *(a1 + 272) = 2 * -a2;
      result = 0.0;
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
      return result;
    }

    *(a1 + 488) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}