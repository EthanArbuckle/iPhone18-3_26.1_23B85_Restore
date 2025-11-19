uint64_t sub_2146143BC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
}

uint64_t sub_214614430(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_2146144D4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_214614534(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_2146145C8(uint64_t a1)
{
  v2 = sub_21461488C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214614604(uint64_t a1)
{
  v2 = sub_21461488C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214614640(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916CB8, &qword_21476C7F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21461488C();
  sub_2146DAA28();
  v19 = 0;
  type metadata accessor for Alignment();
  sub_214614C18(&qword_27C9070F0, type metadata accessor for Alignment);
  sub_2146DA388();
  if (!v2)
  {
    v11 = type metadata accessor for EncodedKeyPackage(0);
    v16[1] = *(v3 + *(v11 + 20));
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916CC8, &qword_21476C7F8);
    sub_214615054(&qword_27C916CD0, &qword_27C916CC8, &qword_21476C7F8, sub_2146148E0);
    sub_2146DA388();
    v12 = (v3 + *(v11 + 24));
    v13 = *v12;
    v14 = v12[1];
    v17 = 2;
    sub_2146DA328();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_21461488C()
{
  result = qword_27C916CC0;
  if (!qword_27C916CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916CC0);
  }

  return result;
}

unint64_t sub_2146148E0()
{
  result = qword_27C916CD8;
  if (!qword_27C916CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916CD8);
  }

  return result;
}

uint64_t sub_214614964(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_2146D9468();

  return v3;
}

uint64_t sub_2146149D4(void (*a1)(void))
{
  a1();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214614A2C()
{
  v1 = v0;
  v15 = type metadata accessor for Alignment();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v14);
  sub_214613D0C(v0, boxed_opaque_existential_0);
  sub_213FDC730(&v14, v13);
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v13, 0x6E656D6E67696C61, 0xE900000000000074, isUniquelyReferenced_nonNull_native);
  v5 = type metadata accessor for EncodedKeyPackage(0);
  v6 = *(v1 + *(v5 + 20));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916CC8, &qword_21476C7F8);
  *&v14 = v6;
  sub_213FDC730(&v14, v13);

  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v13, 1937335659, 0xE400000000000000, v7);
  v8 = (v1 + *(v5 + 24));
  v9 = *v8;
  v10 = v8[1];
  v15 = MEMORY[0x277D837D0];
  *&v14 = v9;
  *(&v14 + 1) = v10;
  sub_213FDC730(&v14, v13);

  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v13, 1701869940, 0xE400000000000000, v11);
  return v3;
}

uint64_t sub_214614B94(uint64_t a1)
{
  *(a1 + 8) = sub_214614C18(&qword_27C906D38, type metadata accessor for KeyPackage);
  result = sub_214614C18(&qword_27C906D70, type metadata accessor for KeyPackage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214614C18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Alignment();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Alignment();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_214614E4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  type metadata accessor for Alignment();
  if (v5 <= 0x3F)
  {
    sub_214614EF0(319, a4);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_214614EF0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2146D9978();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_214614F50()
{
  result = qword_27C916D10;
  if (!qword_27C916D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916D10);
  }

  return result;
}

unint64_t sub_214614FA8()
{
  result = qword_27C916D18;
  if (!qword_27C916D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916D18);
  }

  return result;
}

unint64_t sub_214615000()
{
  result = qword_27C916D20;
  if (!qword_27C916D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916D20);
  }

  return result;
}

uint64_t sub_214615054(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2146150D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_2146150FC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1[1].n128_u64[1];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u8[8] = v4;
  v1[2].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214615154()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2146151C0(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*sub_214615268(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 40))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 32);
    return sub_214605264;
  }

  return result;
}

void (*sub_2146152F0(uint64_t *a1))(uint64_t **a1, char a2)
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
  v8 = *(v1 + 41);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214488274;
}

uint64_t sub_214615388()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 1);
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v0 + 41);
  sub_2146154A8();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214615418()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 1);
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v0 + 41);
  sub_2146154A8();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_2146154A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = sub_2146D87D8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2146D87C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907118, &qword_2146F48F0);
  sub_2142F1F70();
  v8 = sub_2146D87B8();
  v10 = v9;

  v18 = MEMORY[0x277CC9318];
  *&v17 = v8;
  *(&v17 + 1) = v10;
  sub_213FDC730(&v17, v16);
  v11 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 80, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  v18 = &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType;
  LOBYTE(v17) = v2;
  sub_213FDC730(&v17, v16);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 84, 0xE100000000000000, v13);
  if (v4)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x277D83B88];
    *&v17 = v3;
    sub_213FDC730(&v17, v16);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v16, 86, 0xE100000000000000, v14);

    return v11;
  }

  return result;
}

uint64_t type metadata accessor for PeerTrustAckEnvelopeV1Payload()
{
  result = qword_27C916D28;
  if (!qword_27C916D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2146156F0()
{
  sub_2146157F8();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214615744()
{
  v0 = sub_2146D8B28();
  v7 = MEMORY[0x277D837D0];
  *&v6 = v0;
  *(&v6 + 1) = v1;
  sub_213FDC730(&v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v5, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
  v3 = sub_2146D9468();

  return v3;
}

uint64_t sub_2146157F8()
{
  v0 = sub_2146D8B28();
  v7 = MEMORY[0x277D837D0];
  *&v6 = v0;
  *(&v6 + 1) = v1;
  sub_213FDC730(&v6, v5);
  v2 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v5, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
  return v2;
}

unint64_t sub_21461587C(uint64_t a1)
{
  *(a1 + 8) = sub_2142F0C88();
  result = sub_2142F14FC();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146158AC(uint64_t a1)
{
  *(a1 + 8) = sub_214615914(&qword_27C907128);
  result = sub_214615914(&qword_27C907140);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214615914(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PeerTrustAckEnvelopeV1Payload();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214615990@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 256;
  *(v4 + 24) = 0;
  *(v3 + 16) = sub_21407B588;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2140676DC;
  *(v5 + 24) = 0;
  *(inited + 40) = v5;
  return sub_214042B80(inited, a1);
}

uint64_t sub_214615A88()
{
  sub_214615B30();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214615ADC()
{
  sub_214615B30();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214615B30()
{
  v1 = v0;
  v2 = sub_2146D8B28();
  v3 = MEMORY[0x277D837D0];
  v24 = MEMORY[0x277D837D0];
  *&v23 = v2;
  *(&v23 + 1) = v4;
  sub_213FDC730(&v23, v22);
  v5 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v22, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
  v7 = type metadata accessor for PeerTrustEnvelopeV1();
  v8 = v1 + *(v7 + 20);
  v9 = *(v8 + 24);
  if (v9)
  {
    v10 = v7;
    v11 = *(v8 + 16);
    v24 = v3;
    *&v23 = v11;
    *(&v23 + 1) = v9;
    sub_213FDC730(&v23, v22);

    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v22, 0xD000000000000011, 0x8000000214794A20, v12);
    v13 = (v1 + *(v10 + 24));
    v15 = *v13;
    v14 = v13[1];
    v16 = v13[2];
    v17 = v13[3];
    v18 = *(v13 + 32);
    v24 = &type metadata for PeerTrustSharedSecret;
    v19 = swift_allocObject();
    *&v23 = v19;
    *(v19 + 16) = v15;
    *(v19 + 24) = v14;
    *(v19 + 32) = v16;
    *(v19 + 40) = v17;
    *(v19 + 48) = v18;
    sub_213FDC730(&v23, v22);

    sub_213FDCA18(v16, v17);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v22, 0x6553646572616873, 0xEC00000074657263, v20);
    return v5;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214615D18(uint64_t a1)
{
  *(a1 + 8) = sub_214615DCC(&qword_27C906D50);
  result = sub_214615DCC(&qword_27C906D80);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for PeerTrustEnvelopeV1()
{
  result = qword_27C916D38;
  if (!qword_27C916D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214615DCC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PeerTrustEnvelopeV1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_214615E38()
{
  sub_2146D8B88();
  if (v0 <= 0x3F)
  {
    sub_214426938();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_214615EC4()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 32);
  sub_21461602C();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214615F34()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v12 = &type metadata for PeerTrustSharedSecretKey;
  v6 = swift_allocObject();
  *&v11 = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v5;
  sub_213FDC730(&v11, v10);

  sub_213FDCA18(v3, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v10, 7955819, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  v8 = sub_2146D9468();

  return v8;
}

uint64_t sub_21461602C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v12 = &type metadata for PeerTrustSharedSecretKey;
  v6 = swift_allocObject();
  *&v11 = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v5;
  sub_213FDC730(&v11, v10);

  sub_213FDCA18(v3, v4);
  v7 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v10, 7955819, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  return v7;
}

uint64_t sub_2146160F0()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 32);
  sub_2146161D0();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214616160()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 32);
  sub_2146161D0();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_2146161D0()
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
    v8 = MEMORY[0x277CC9318];
    *&v7 = v2;
    *(&v7 + 1) = v1;
    sub_213FDC730(&v7, v6);
    sub_21402D9F8(v2, v1);
    v3 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v6, 1635017060, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    return v3;
  }

  return result;
}

uint64_t sub_2146162F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214616364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IMSGSMACharacteristic();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2146163D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IMSGSMACharacteristic();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_214616454(uint64_t a1)
{
  *(a1 + 8) = sub_214616508(&qword_27C909398);
  result = sub_214616508(&qword_27C9093C8);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for IMS3GPPExtCharacteristic()
{
  result = qword_27C916D48;
  if (!qword_27C916D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214616508(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IMS3GPPExtCharacteristic();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214616574()
{
  result = type metadata accessor for IMSGSMACharacteristic();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2146165E0()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21461665C()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 64);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2146166E0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21461672C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 16);
  v7 = *(v1 + 32);

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_214616788@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2146167D4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[3].n128_u64[1];
  v7 = v1[4].n128_u64[1];

  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214616830@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 32;
  switch(result)
  {
    case 0:
      goto LABEL_49;
    case 1:
      v2 = 1;
      goto LABEL_49;
    case 2:
      v2 = 2;
      goto LABEL_49;
    case 3:
      v2 = 3;
      goto LABEL_49;
    case 4:
      v2 = 4;
      goto LABEL_49;
    case 5:
      v2 = 5;
      goto LABEL_49;
    case 6:
      v2 = 6;
      goto LABEL_49;
    case 7:
      v2 = 7;
      goto LABEL_49;
    case 8:
      v2 = 8;
      goto LABEL_49;
    case 9:
      v2 = 9;
      goto LABEL_49;
    case 10:
      v2 = 10;
      goto LABEL_49;
    case 11:
      v2 = 11;
      goto LABEL_49;
    case 12:
      v2 = 12;
      goto LABEL_49;
    case 13:
      v2 = 13;
      goto LABEL_49;
    case 14:
      v2 = 14;
      goto LABEL_49;
    case 15:
      v2 = 15;
      goto LABEL_49;
    case 16:
      v2 = 16;
      goto LABEL_49;
    case 17:
      v2 = 17;
      goto LABEL_49;
    case 18:
      v2 = 18;
      goto LABEL_49;
    case 19:
      v2 = 19;
      goto LABEL_49;
    case 20:
      v2 = 20;
      goto LABEL_49;
    case 21:
      v2 = 21;
      goto LABEL_49;
    case 22:
      v2 = 22;
      goto LABEL_49;
    case 23:
      v2 = 23;
      goto LABEL_49;
    case 24:
      v2 = 24;
      goto LABEL_49;
    case 25:
      v2 = 25;
      goto LABEL_49;
    case 26:
      v2 = 26;
      goto LABEL_49;
    case 27:
      v2 = 27;
      goto LABEL_49;
    case 28:
      v2 = 28;
      goto LABEL_49;
    case 29:
      v2 = 29;
      goto LABEL_49;
    case 30:
      v2 = 30;
      goto LABEL_49;
    case 31:
      v2 = 31;
LABEL_49:
      v3 = v2;
      goto LABEL_50;
    case 32:
LABEL_50:
      *a2 = v3;
      break;
    case 33:
      *a2 = 33;
      break;
    case 34:
      *a2 = 34;
      break;
    case 35:
      *a2 = 35;
      break;
    case 36:
      *a2 = 36;
      break;
    case 37:
      *a2 = 37;
      break;
    case 38:
      *a2 = 38;
      break;
    case 39:
      *a2 = 39;
      break;
    case 40:
      *a2 = 40;
      break;
    case 41:
      *a2 = 41;
      break;
    case 42:
      *a2 = 42;
      break;
    case 43:
      *a2 = 43;
      break;
    case 44:
      *a2 = 44;
      break;
    case 45:
      *a2 = 45;
      break;
    case 46:
      *a2 = 46;
      break;
    case 47:
      *a2 = 47;
      break;
    case 48:
      *a2 = 48;
      break;
    case 49:
      *a2 = 49;
      break;
    default:
      *a2 = 50;
      break;
  }

  return result;
}

uint64_t sub_214616B24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v12 = *(v3 + 40);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 32);

    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
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

uint64_t (*sub_214616C6C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 24);
    a1[1] = v3;

    return sub_214069FB0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214616D08(uint64_t *a1))(uint64_t **a1, char a2)
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
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406A388;
}

uint64_t sub_214616DA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v12 = *(v3 + 80);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 72);

    *(v3 + 64) = a1;
    *(v3 + 72) = a2;
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

uint64_t (*sub_214616EE8(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 72);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 64);
    a1[1] = v3;

    return sub_21406A7D8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214616F84(uint64_t *a1))(uint64_t **a1, char a2)
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
  v7 = *(v1 + 64);
  v6 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406ABB0;
}

uint64_t sub_214617054()
{
  v1 = *(v0 + 88);
  sub_213FDCA18(v1, *(v0 + 96));
  return v1;
}

uint64_t sub_214617088(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 88), *(v2 + 96));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

unint64_t sub_2146170E4()
{
  result = qword_27C916D58;
  if (!qword_27C916D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916D58);
  }

  return result;
}

uint64_t sub_214617190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IDSSessionCancel.IDSSessionEndedReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCF)
  {
    goto LABEL_17;
  }

  if (a2 + 49 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 49) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 49;
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

      return (*a1 | (v4 << 8)) - 49;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 49;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x32;
  v8 = v6 - 50;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSSessionCancel.IDSSessionEndedReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 49) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCF)
  {
    v4 = 0;
  }

  if (a2 > 0xCE)
  {
    v5 = ((a2 - 207) >> 8) + 1;
    *result = a2 + 49;
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
    *result = a2 + 49;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21461732C()
{
  result = qword_27C916D60;
  if (!qword_27C916D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916D60);
  }

  return result;
}

uint64_t sub_214617380@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_2146173CC(__n128 *a1)
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

uint64_t sub_214617424()
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

uint64_t sub_214617494(uint64_t a1)
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

uint64_t (*sub_2146175D0(void *a1))(uint64_t *a1, char a2)
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

void (*sub_214617668(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_214617700()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_214617730(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_214617788@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RelayReachabilityRequest() + 24);

  return sub_214617818(v3, a1);
}

uint64_t type metadata accessor for RelayReachabilityRequest()
{
  result = qword_280B2EBD8;
  if (!qword_280B2EBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214617818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelayReachabilityContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21461787C(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RelayReachabilityRequest() + 24);

  return sub_2146178C0(a1, v3);
}

uint64_t sub_2146178C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelayReachabilityContext();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21461796C(uint64_t a1)
{
  *(a1 + 8) = sub_2146179D4(&qword_27C916D68);
  result = sub_2146179D4(&qword_27C916D70);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2146179D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RelayReachabilityRequest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_214617A40()
{
  sub_214494944();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RelayReachabilityContext();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_214617ACC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 7107189;
  v4 = inited + 32;
  *(inited + 40) = 0xE300000000000000;
  if (v1)
  {
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    v5 = inited;

    v6 = sub_2140457C0(v5);
    swift_setDeallocating();
    sub_21404C938(v4);
    return v6;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_214617BD0()
{
  result = qword_27C916D78;
  if (!qword_27C916D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916D78);
  }

  return result;
}

uint64_t sub_214617C24@<X0>(uint64_t a1@<X8>)
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

__n128 sub_214617C7C(__n128 *a1)
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

uint64_t sub_214617CE4()
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

uint64_t sub_214617D6C(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_214617E34(uint64_t *a1))(uint64_t *a1, char a2)
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

void (*sub_214617ED4(uint64_t *a1))(uint64_t **a1, char a2)
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

unint64_t sub_214617F74(uint64_t a1)
{
  *(a1 + 8) = sub_214325264();
  result = sub_214325018();
  *(a1 + 16) = result;
  return result;
}

uint64_t StyleSheet.Color.init(red:green:blue:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t StyleSheet.Font.Specified.init(size:weight:style:variant:family:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(result + 8);
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  *a6 = *result;
  *(a6 + 8) = v6;
  *(a6 + 9) = v7;
  *(a6 + 10) = v8;
  *(a6 + 11) = v9;
  *(a6 + 16) = a5;
  return result;
}

BlastDoor::StyleSheet::TextAlign_optional __swiftcall StyleSheet.TextAlign.init(rawValue:)(Swift::String rawValue)
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

uint64_t StyleSheet.TextAlign.rawValue.getter()
{
  v1 = 0x7265746E6563;
  if (*v0 != 1)
  {
    v1 = 0x7468676972;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1952867692;
  }
}

uint64_t sub_2146180B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x7265746E6563;
  if (v2 != 1)
  {
    v4 = 0x7468676972;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1952867692;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7265746E6563;
  if (*a2 != 1)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1952867692;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
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

uint64_t sub_2146181A4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214618238()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2146182B8()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_214618354(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7265746E6563;
  if (v2 != 1)
  {
    v5 = 0x7468676972;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1952867692;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void StyleSheet.Font.Specified.size.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

BlastDoor::StyleSheet::Font::Weight_optional __swiftcall StyleSheet.Font.Weight.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.Weight.rawValue.getter()
{
  result = 0x6C616D726F6ELL;
  switch(*v0)
  {
    case 1:
      result = 1684828002;
      break;
    case 2:
      result = 0x7265646C6F62;
      break;
    case 3:
      result = 0x7265746867696CLL;
      break;
    case 4:
      result = 3158065;
      break;
    case 5:
      result = 3158066;
      break;
    case 6:
      result = 3158067;
      break;
    case 7:
      result = 3158068;
      break;
    case 8:
      result = 3158069;
      break;
    case 9:
      result = 3158070;
      break;
    case 0xA:
      result = 3158071;
      break;
    case 0xB:
      result = 3158072;
      break;
    case 0xC:
      result = 3158073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2146185F0(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = StyleSheet.Font.Weight.rawValue.getter();
  v4 = v3;
  if (v2 == StyleSheet.Font.Weight.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2146DA6A8();
  }

  return v7 & 1;
}

uint64_t sub_21461868C()
{
  v1 = *v0;
  sub_2146DA958();
  StyleSheet.Font.Weight.rawValue.getter();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2146186F4()
{
  v2 = *v0;
  StyleSheet.Font.Weight.rawValue.getter();
  sub_2146D9698();
}

uint64_t sub_214618758()
{
  v1 = *v0;
  sub_2146DA958();
  StyleSheet.Font.Weight.rawValue.getter();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2146187C8@<X0>(uint64_t *a1@<X8>)
{
  result = StyleSheet.Font.Weight.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BlastDoor::StyleSheet::Font::Size::Unit_optional __swiftcall StyleSheet.Font.Size.Unit.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.Size.Unit.rawValue.getter()
{
  v1 = 37;
  v2 = 28005;
  if (*v0 != 2)
  {
    v2 = 30821;
  }

  if (*v0)
  {
    v1 = 30832;
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

uint64_t sub_214618950()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2146189E0()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_214618A5C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_214618AF4(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 37;
  v4 = 28005;
  if (*v1 != 2)
  {
    v4 = 30821;
  }

  if (*v1)
  {
    v3 = 30832;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE200000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

BlastDoor::StyleSheet::Font::Size::Absolute_optional __swiftcall StyleSheet.Font.Size.Absolute.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.Size.Absolute.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C6C616D732D7878;
  v3 = 0x656772616C2D78;
  if (v1 != 5)
  {
    v3 = 0x656772616C2D7878;
  }

  v4 = 0x6D756964656DLL;
  if (v1 != 3)
  {
    v4 = 0x656772616CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C6C616D732D78;
  if (v1 != 1)
  {
    v5 = 0x6C6C616D73;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_214618D30()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

void sub_214618E44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6C6C616D732D7878;
  v5 = 0xE700000000000000;
  v6 = 0x656772616C2D78;
  if (v2 != 5)
  {
    v6 = 0x656772616C2D7878;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (v2 != 3)
  {
    v8 = 0x656772616CLL;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6C6C616D732D78;
  if (v2 != 1)
  {
    v10 = 0x6C6C616D73;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
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

BlastDoor::StyleSheet::Font::Style_optional __swiftcall StyleSheet.Font.Style.init(rawValue:)(Swift::String rawValue)
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

uint64_t StyleSheet.Font.Style.rawValue.getter()
{
  v1 = 0x63696C617469;
  if (*v0 != 1)
  {
    v1 = 0x657571696C626FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616D726F6ELL;
  }
}

uint64_t sub_214619074(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x63696C617469;
  if (v2 != 1)
  {
    v5 = 0x657571696C626FLL;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6C616D726F6ELL;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x63696C617469;
  if (*a2 != 1)
  {
    v8 = 0x657571696C626FLL;
    v3 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C616D726F6ELL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
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

uint64_t sub_214619168()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214619204()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_21461928C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_214619330(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x63696C617469;
  if (v2 != 1)
  {
    v5 = 0x657571696C626FLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C616D726F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

BlastDoor::StyleSheet::Font::Variant_optional __swiftcall StyleSheet.Font.Variant.init(rawValue:)(Swift::String rawValue)
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

uint64_t StyleSheet.Font.Variant.rawValue.getter()
{
  if (*v0)
  {
    result = 0x61632D6C6C616D73;
  }

  else
  {
    result = 0x6C616D726F6ELL;
  }

  *v0;
  return result;
}

uint64_t sub_2146194D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x61632D6C6C616D73;
  }

  else
  {
    v4 = 0x6C616D726F6ELL;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xEA00000000007370;
  }

  if (*a2)
  {
    v6 = 0x61632D6C6C616D73;
  }

  else
  {
    v6 = 0x6C616D726F6ELL;
  }

  if (*a2)
  {
    v7 = 0xEA00000000007370;
  }

  else
  {
    v7 = 0xE600000000000000;
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

uint64_t sub_214619580()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214619604()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_214619674()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2146196F4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

void sub_214619754(uint64_t *a1@<X8>)
{
  v2 = 0x6C616D726F6ELL;
  if (*v1)
  {
    v2 = 0x61632D6C6C616D73;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007370;
  }

  *a1 = v2;
  a1[1] = v3;
}

BlastDoor::StyleSheet::Font::System_optional __swiftcall StyleSheet.Font.System.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StyleSheet.Font.System.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E6F6974706163;
  v3 = 0x2D6567617373656DLL;
  v4 = 0x61632D6C6C616D73;
  if (v1 != 4)
  {
    v4 = 0x622D737574617473;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1852793705;
  if (v1 != 1)
  {
    v5 = 1970169197;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_214619978()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

void sub_214619A84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6974706163;
  v5 = 0xEB00000000786F62;
  v6 = 0x2D6567617373656DLL;
  v7 = 0xED00006E6F697470;
  v8 = 0x61632D6C6C616D73;
  if (v2 != 4)
  {
    v8 = 0x622D737574617473;
    v7 = 0xEA00000000007261;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 1852793705;
  if (v2 != 1)
  {
    v9 = 1970169197;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_214619C34()
{
  result = qword_27C916D80;
  if (!qword_27C916D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916D80);
  }

  return result;
}

unint64_t sub_214619CE4()
{
  result = qword_27C916D88;
  if (!qword_27C916D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916D88);
  }

  return result;
}

unint64_t sub_214619D68()
{
  result = qword_27C916D90;
  if (!qword_27C916D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916D90);
  }

  return result;
}

unint64_t sub_214619DEC()
{
  result = qword_27C916D98;
  if (!qword_27C916D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916D98);
  }

  return result;
}

unint64_t sub_214619E9C()
{
  result = qword_27C916DA0;
  if (!qword_27C916DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916DA0);
  }

  return result;
}

unint64_t sub_214619F20()
{
  result = qword_27C916DA8;
  if (!qword_27C916DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916DA8);
  }

  return result;
}

unint64_t sub_214619FA4()
{
  result = qword_27C916DB0;
  if (!qword_27C916DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916DB0);
  }

  return result;
}

uint64_t sub_21461A0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21461A110()
{
  result = qword_27C916DB8;
  if (!qword_27C916DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916DB8);
  }

  return result;
}

unint64_t sub_21461A164()
{
  result = qword_27C916DC0;
  if (!qword_27C916DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916DC0);
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StyleSheet.Color(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StyleSheet.Color(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_21461A254(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 12);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 31;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21461A2A4(uint64_t result, int a2, int a3)
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *result = 0;
      *(result + 8) = (v3 >> 1) << 32;
      *(result + 16) = 0;
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

uint64_t getEnumTagSinglePayload for StyleSheet.Font.Size(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 9))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 8) >> 1) & 0x3E | (*(a1 + 8) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for StyleSheet.Font.Size(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 8) = 0;
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_21461A480(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21461A4C8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_21461A540(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_21461A588(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_21461A5E0()
{
  result = qword_27C916DC8;
  if (!qword_27C916DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916DC8);
  }

  return result;
}

unint64_t sub_21461A634()
{
  result = qword_27C916DD0;
  if (!qword_27C916DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916DD0);
  }

  return result;
}

unint64_t sub_21461A688()
{
  result = qword_27C916DD8;
  if (!qword_27C916DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916DD8);
  }

  return result;
}

unint64_t sub_21461A6DC()
{
  result = qword_27C916DE0;
  if (!qword_27C916DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916DE0);
  }

  return result;
}

unint64_t sub_21461A730()
{
  result = qword_27C916DE8;
  if (!qword_27C916DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916DE8);
  }

  return result;
}

unint64_t sub_21461A784()
{
  result = qword_27C916DF0;
  if (!qword_27C916DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916DF0);
  }

  return result;
}

unint64_t sub_21461A7D8()
{
  result = qword_27C916DF8;
  if (!qword_27C916DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916DF8);
  }

  return result;
}

unint64_t sub_21461A82C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146F1C40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21439DFC4;
  *(v5 + 24) = 0;
  *(v4 + 32) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21439DFC4;
  *(v6 + 24) = 0;
  *(v4 + 40) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DFC4;
  *(v7 + 24) = 0;
  *(v4 + 48) = v7;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = 1;
  *(v8 + 16) = sub_21438F534;
  *(v8 + 24) = v9;
  *(v4 + 56) = v8;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v10 + 16) = sub_21439DF94;
  *(v10 + 24) = v11;
  *(v3 + 32) = v10;
  v12 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = sub_214032610;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21461AA54@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146F1C40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21439DFC4;
  *(v5 + 24) = 0;
  *(v4 + 32) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21439DF24;
  *(v6 + 24) = 0;
  *(v4 + 40) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DFC4;
  *(v7 + 24) = 0;
  *(v4 + 48) = v7;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = 1;
  *(v8 + 16) = sub_21438F534;
  *(v8 + 24) = v9;
  *(v4 + 56) = v8;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v10 + 16) = sub_21439DF94;
  *(v10 + 24) = v11;
  *(v3 + 32) = v10;
  v12 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = sub_21403254C;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_214042A28(inited, a1);
}

uint64_t sub_21461AC7C@<X0>(uint64_t a1@<X8>)
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

__n128 sub_21461ACD4(__n128 *a1)
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

uint64_t sub_21461AD3C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RelayGroupMutationMessage() + 36));
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

uint64_t type metadata accessor for RelayGroupMutationMessage()
{
  result = qword_280B2EB30;
  if (!qword_280B2EB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_21461ADF4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for RelayGroupMutationMessage() + 36));
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

uint64_t sub_21461AE6C()
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

uint64_t sub_21461AEEC()
{
  v1 = v0 + *(type metadata accessor for RelayGroupMutationMessage() + 36);
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

unint64_t sub_21461AF7C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21439DF24;
  *(v3 + 24) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21439DF24;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2146EAEB0;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21439DF28;
  *(v6 + 24) = v3;
  *(v5 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF60;
  *(v7 + 24) = v4;
  *(v5 + 40) = v7;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v8 + 16) = sub_21439DF54;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v10 + 16) = sub_21438EDCC;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2146EAEB0;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21439DF60;
  *(v13 + 24) = v8;
  *(v12 + 32) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21439DF60;
  *(v14 + 24) = v10;
  *(v12 + 40) = v14;
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v15 + 16) = sub_21439DF94;
  *(v15 + 24) = v16;
  *(inited + 32) = v15;
  sub_214042B80(inited, a1);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_2146E9BF0;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_21405980C;
  *(v18 + 24) = 0;
  *(v17 + 32) = v18;
  return sub_214042B80(v17, a1 + 40);
}

uint64_t sub_21461B250@<X0>(uint64_t a1@<X8>)
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

__n128 sub_21461B29C(__n128 *a1)
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

uint64_t sub_21461B2F8@<X0>(uint64_t a1@<X8>)
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

__n128 sub_21461B344(__n128 *a1)
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

uint64_t sub_21461B3A0()
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

uint64_t sub_21461B41C()
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

uint64_t sub_21461B4A0(uint64_t a1, uint64_t a2)
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

void (*sub_21461B5E4(uint64_t *a1))(uint64_t **a1, char a2)
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

void (*sub_21461B6BC(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_21461B75C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_21461B78C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_21461B7E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21461B830(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);

  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t sub_21461B8AC@<X0>(uint64_t a1@<X8>)
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

__n128 sub_21461B8F8(__n128 *a1)
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

uint64_t sub_21461B974@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RelayGroupMutationMessage() + 32);
  v4 = sub_2146D8B88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21461B9F0(uint64_t a1)
{
  v3 = *(type metadata accessor for RelayGroupMutationMessage() + 32);
  v4 = sub_2146D8B88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_21461BAB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for RelayGroupMutationMessage() + 36);
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

uint64_t sub_21461BB50(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for RelayGroupMutationMessage() + 36);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21461BC18(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for RelayGroupMutationMessage() + 36);
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

void (*sub_21461BD68(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for RelayGroupMutationMessage() + 36);
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

uint64_t sub_21461BE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for RelayGroupMutationMessage() + 36));
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

uint64_t sub_21461BEC4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for RelayGroupMutationMessage() + 36);
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

void (*sub_21461BF5C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for RelayGroupMutationMessage() + 36);
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

uint64_t sub_21461C02C(char a1)
{
  result = type metadata accessor for RelayGroupMutationMessage();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_21461C0A4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RelayGroupMutationMessage() + 44);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 32);
  *(a1 + 32) = v8;
  v9 = *(v3 + 33);
  *(a1 + 33) = v9;

  return sub_2142FDFBC(v4, v5, v6, v7, v8, v9);
}

__n128 sub_21461C104(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for RelayGroupMutationMessage() + 44);
  sub_2142FE050(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 33));
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t sub_21461C1A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 32);
  return sub_21431C5DC(v2);
}

__n128 sub_21461C1C4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  sub_21431E10C(*v1);
  result = *a1;
  v9 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v9;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_21461C22C@<X0>(uint64_t result@<X0>, char *a2@<X8>)
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

uint64_t sub_21461C2F8(uint64_t a1, uint64_t a2)
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

uint64_t (*sub_21461C440(void *a1))(uint64_t *a1, char a2)
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

void (*sub_21461C4DC(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_21461C574(uint64_t a1, uint64_t a2)
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

uint64_t (*sub_21461C6BC(void *a1))(uint64_t *a1, char a2)
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

void (*sub_21461C758(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_21461C830(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_21461C87C(uint64_t a1)
{
  *(a1 + 8) = sub_21461C8E4(&qword_27C916E00);
  result = sub_21461C8E4(&qword_27C916E08);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21461C8E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RelayGroupMutationMessage();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21461C954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21461C9C0()
{
  result = qword_27C916E10;
  if (!qword_27C916E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916E10);
  }

  return result;
}

void sub_21461CAC0()
{
  sub_214084AA4();
  if (v0 <= 0x3F)
  {
    sub_2146D8B88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor16GroupDisplayNameVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor18RelayGroupMutationO(uint64_t a1)
{
  if ((*(a1 + 33) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 33) & 3;
  }
}

uint64_t sub_21461CBB4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21461CC10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_21461CCA8()
{
  result = qword_27C916E18;
  if (!qword_27C916E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916E18);
  }

  return result;
}

uint64_t MBDChipReply.dictionaryRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 0x6974736567677573;
  *(inited + 40) = 0xEA00000000006E6FLL;
  v8 = *(v0 + 1);
  v9 = *(v0 + 2);
  v4 = sub_2143E26FC();
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
  *(inited + 48) = v4;
  v5 = sub_214045690(inited);
  swift_setDeallocating();
  sub_21461D448(inited + 32);
  v6 = sub_2140418B8(v5);

  return v6;
}

uint64_t sub_21461CDF0()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 0x6974736567677573;
  *(inited + 40) = 0xEA00000000006E6FLL;
  v8 = *(v0 + 1);
  v9 = *(v0 + 2);
  v4 = sub_2143E26FC();
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
  *(inited + 48) = v4;
  v5 = sub_214045690(inited);
  swift_setDeallocating();
  sub_21461D448(inited + 32);
  v6 = sub_2140418B8(v5);

  return v6;
}

uint64_t sub_21461CEE4()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_21461CF58()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_21461CFAC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2146DA098();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_21461D020@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2146DA098();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21461D078(uint64_t a1)
{
  v2 = sub_21461D4B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21461D0B4(uint64_t a1)
{
  v2 = sub_21461D4B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDChipReply.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916E20, &qword_21476E3A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21461D4B0();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21461D504();
    sub_2146DA0D8();
    (*(v6 + 8))(v9, v5);
    v11 = v15[1];
    v12 = v16;
    v13 = v17;
    *a2 = v15[0];
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 32) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MBDChipReply.encode(to:configuration:)(void *a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916E38, &qword_21476E3B0);
  v3 = *(v17 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v17);
  v6 = &v14 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[3];
  v15 = v1[2];
  v16 = v7;
  v10 = v1[5];
  v14 = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21461D4B0();

  sub_2146DAA28();
  v18 = v16;
  v19 = v8;
  v20 = v15;
  v21 = v9;
  v22 = v14;
  v23 = v10;
  sub_21461D558();
  v12 = v17;
  sub_2146DA2A8();

  return (*(v3 + 8))(v6, v12);
}

uint64_t sub_21461D448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21461D4B0()
{
  result = qword_27C916E28;
  if (!qword_27C916E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916E28);
  }

  return result;
}

unint64_t sub_21461D504()
{
  result = qword_27C916E30;
  if (!qword_27C916E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916E30);
  }

  return result;
}

unint64_t sub_21461D558()
{
  result = qword_27C916E40;
  if (!qword_27C916E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916E40);
  }

  return result;
}

unint64_t sub_21461D5D0()
{
  result = qword_27C916E48;
  if (!qword_27C916E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916E48);
  }

  return result;
}

unint64_t sub_21461D628()
{
  result = qword_27C916E50;
  if (!qword_27C916E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916E50);
  }

  return result;
}

unint64_t sub_21461D680()
{
  result = qword_27C916E58;
  if (!qword_27C916E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916E58);
  }

  return result;
}

uint64_t StyleSheet.bridge()@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = sub_2146D9318();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v1;
  v43 = *(*v1 + 16);
  if (v43)
  {
    v9 = 0;
    v37 = *MEMORY[0x277D239D0];
    v36 = *MEMORY[0x277D239C8];
    v38 = v3 + 32;
    v39 = (v3 + 104);
    v10 = (v8 + 72);
    v11 = MEMORY[0x277D84F90];
    v40 = v8;
    v41 = v3;
    v42 = v2;
    while (v9 < *(v8 + 16))
    {
      v44 = v11;
      v12 = *(v10 - 5);
      v13 = *(v10 - 4);
      v14 = *(v10 - 3);
      v15 = *(v10 - 2);
      v16 = *(v10 - 1);
      if (*v10)
      {
        v46 = v8;
        sub_21461DCB8(v12, v13, v14, v15, v16, 1);

        v17 = v45;
        v18 = sub_21461DA68(v16);
        v45 = v17;
        if (v17)
        {

          v29 = v12;
          v30 = v13;
          v31 = v14;
          v32 = v15;
          v33 = v16;
          v34 = 1;
          goto LABEL_21;
        }

        v19 = v18;
        sub_21461DD14(v12, v13, v14, v15, v16, 1);
        *v7 = v12;
        v7[1] = v13;
        v7[2] = v14;
        v7[3] = v15;
        v20 = v36;
        v7[4] = v19;
      }

      else
      {
        v46 = v8;
        sub_21461DCB8(v12, v13, v14, v15, v16, 0);

        v21 = v45;
        v22 = sub_21461DA68(v14);
        v45 = v21;
        if (v21)
        {

          v29 = v12;
          v30 = v13;
          v31 = v14;
          v32 = v15;
          v33 = v16;
          v34 = 0;
LABEL_21:
          sub_21461DD14(v29, v30, v31, v32, v33, v34);
        }

        v23 = v22;
        sub_21461DD14(v12, v13, v14, v15, v16, 0);
        *v7 = v12;
        v7[1] = v13;
        v20 = v37;
        v7[2] = v23;
      }

      v24 = v42;
      (*v39)(v7, v20, v42);
      v11 = v44;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_214096320(0, v11[2] + 1, 1, v11);
      }

      v28 = v11[2];
      v27 = v11[3];
      if (v28 >= v27 >> 1)
      {
        v11 = sub_214096320(v27 > 1, v28 + 1, 1, v11);
      }

      ++v9;
      v11[2] = v28 + 1;
      result = (*(v26 + 32))(v11 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v28, v7, v24);
      v10 += 48;
      v8 = v40;
      if (v43 == v9)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
LABEL_16:
    if (!v11[2])
    {
    }

    return sub_2146D9348();
  }

  return result;
}

void *sub_21461DA68(uint64_t a1)
{
  v26 = sub_2146D9308();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v26);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

  v25 = *v1;
  v23 = v3 + 32;
  v8 = (a1 + 64);
  v9 = MEMORY[0x277D84F90];
  v24 = v3;
  while (1)
  {
    v27 = v7;
    v28 = v9;
    v10 = *(v8 - 4);
    v11 = *(v8 - 3);
    v13 = *(v8 - 2);
    v12 = *(v8 - 1);
    v14 = *v8;
    v32 = v25;
    v30[0] = v10;
    v30[1] = v11;
    v30[2] = v13;
    v30[3] = v12;
    v31 = v14;
    sub_21461F000(v10, v11, v13, v12, v14);
    v15 = v29;
    sub_21461DD74(v30, v6);
    if (v15)
    {
      break;
    }

    sub_21461F08C(v10, v11, v13, v12, v14);
    v9 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = 0;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_2140962F8(0, v9[2] + 1, 1, v9);
    }

    v17 = v24;
    v19 = v9[2];
    v18 = v9[3];
    if (v19 >= v18 >> 1)
    {
      v9 = sub_2140962F8(v18 > 1, v19 + 1, 1, v9);
    }

    v8 += 40;
    v9[2] = v19 + 1;
    (*(v17 + 32))(v9 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v19, v6, v26);
    v7 = v27 - 1;
    if (v27 == 1)
    {
      return v9;
    }
  }

  v20 = v28;

  v21 = v10;
  v9 = v20;
  sub_21461F08C(v21, v11, v13, v12, v14);
  return v9;
}

uint64_t sub_21461DCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }
}

uint64_t sub_21461DD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  if (a6)
  {
  }
}

uint64_t sub_21461DD74@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916E60, &qword_21476E590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v42 - v7;
  v9 = sub_2146D9298();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v15 = a1[1];
  v17 = a1[2];
  v18 = *(a1 + 32);
  if (v18 <= 2)
  {
    if (*(a1 + 32))
    {
      if (v18 == 1)
      {
        v19 = *a1;
        v20 = a1[1];
        sub_2146D9328();
        v21 = MEMORY[0x277D239A8];
      }

      else
      {
        if ((v15 & 0x100000000) != 0)
        {
          v34 = sub_2146D9338();
          (*(*(v34 - 8) + 56))(a2, 1, 1, v34);
        }

        else
        {
          v29 = *a1;
          v30 = a1[1];
          sub_2146D9328();
          v31 = sub_2146D9338();
          (*(*(v31 - 8) + 56))(a2, 0, 1, v31);
        }

        v21 = MEMORY[0x277D23990];
      }

      goto LABEL_27;
    }

    v24 = a1[3];
    *a2 = v16;
    *(a2 + 1) = v15;
    *(a2 + 2) = v17;
    *(a2 + 3) = v24;
    v25 = *MEMORY[0x277D239B0];
    v26 = sub_2146D9308();
    (*(*(v26 - 8) + 104))(a2, v25, v26);
  }

  if (v18 == 3)
  {
    v27 = sub_2146D9358();
    if (v16)
    {
      if (v16 == 1)
      {
        v28 = MEMORY[0x277D239F0];
      }

      else
      {
        v28 = MEMORY[0x277D239E8];
      }
    }

    else
    {
      v28 = MEMORY[0x277D239E0];
    }

    (*(*(v27 - 8) + 104))(a2, *v28, v27);
    v21 = MEMORY[0x277D239B8];
    goto LABEL_27;
  }

  if (v18 != 4)
  {
    *a2 = v16;
    *(a2 + 1) = v15;
    v32 = *MEMORY[0x277D23998];
    v33 = sub_2146D9308();
    (*(*(v33 - 8) + 104))(a2, v32, v33);
  }

  if (v15 < 0)
  {
    v35 = v12;
    sub_2146D9288();
    if ((*(v10 + 48))(v8, 1, v35) == 1)
    {
      sub_213FB2DF4(v8, &qword_27C916E60, &qword_21476E590);
      sub_21461F118();
      swift_allocError();
      *v36 = 7;
      return swift_willThrow();
    }

    v37 = *(v10 + 32);
    v37(v14, v8, v35);
    v37(a2, v14, v35);
    v23 = MEMORY[0x277D23980];
  }

  else
  {
    v43 = *a1;
    v44 = v15;
    v45 = BYTE2(v15);
    v46 = BYTE3(v15);
    v47 = v17;
    result = sub_21461E2EC(&v43, a2);
    if (v2)
    {
      return result;
    }

    v23 = MEMORY[0x277D23988];
  }

  v38 = *v23;
  v39 = sub_2146D92F8();
  (*(*(v39 - 8) + 104))(a2, v38, v39);
  v21 = MEMORY[0x277D239A0];
LABEL_27:
  v40 = *v21;
  v41 = sub_2146D9308();
  return (*(*(v41 - 8) + 104))(a2, v40, v41);
}

uint64_t sub_21461E2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916E70, &qword_21476E598);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v55 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916E78, &qword_21476E5A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916E80, &qword_21476E5A8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916E88, &qword_21476E5B0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v50 - v22;
  v24 = *a1;
  v25 = *(a1 + 8);
  v26 = *(a1 + 9);
  v27 = *(a1 + 10);
  v28 = *(a1 + 11);
  v29 = *(a1 + 16);
  v58 = v24;
  v59 = v25;
  v30 = v57;
  result = sub_21461E8D0(&v58, v23);
  if (!v30)
  {
    v60 = v27;
    v57 = v23;
    v51 = v28;
    v52 = v19;
    v53 = v12;
    v50 = v8;
    v54 = 0;
    if (v26 == 13)
    {
      v32 = sub_2146D92B8();
      v33 = v52;
      (*(*(v32 - 8) + 56))(v52, 1, 1, v32);
      v34 = v57;
      v35 = v60;
    }

    else
    {
      v36 = v29;
      v61 = v26;
      StyleSheet.Font.Weight.rawValue.getter();
      sub_2146D92A8();
      v37 = sub_2146D92B8();
      v38 = *(v37 - 8);
      v39 = (*(v38 + 48))(v17, 1, v37);
      v34 = v57;
      v35 = v60;
      if (v39 == 1)
      {
        sub_213FB2DF4(v57, &qword_27C916E88, &qword_21476E5B0);
        sub_213FB2DF4(v17, &qword_27C916E80, &qword_21476E5A8);
        sub_21461F118();
        swift_allocError();
        v41 = 6;
LABEL_13:
        *v40 = v41;
        return swift_willThrow();
      }

      v33 = v52;
      (*(v38 + 32))(v52, v17, v37);
      (*(v38 + 56))(v33, 0, 1, v37);
      v29 = v36;
    }

    v62 = v35;
    v43 = v53;
    v42 = v54;
    sub_21461EDE8(&v62, v53);
    v44 = v55;
    if (v42)
    {
      sub_213FB2DF4(v33, &qword_27C916E80, &qword_21476E5A8);
      return sub_213FB2DF4(v34, &qword_27C916E88, &qword_21476E5B0);
    }

    if (v51 == 2)
    {
      v45 = sub_2146D92D8();
      (*(*(v45 - 8) + 56))(v50, 1, 1, v45);
LABEL_16:

      return sub_2146D92E8();
    }

    sub_2146D92C8();
    v46 = sub_2146D92D8();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v44, 1, v46) != 1)
    {
      v48 = *(v47 + 32);
      v57 = v29;
      v49 = v50;
      v48(v50, v44, v46);
      (*(v47 + 56))(v49, 0, 1, v46);
      goto LABEL_16;
    }

    sub_213FB2DF4(v43, &qword_27C916E78, &qword_21476E5A0);
    sub_213FB2DF4(v33, &qword_27C916E80, &qword_21476E5A8);
    sub_213FB2DF4(v34, &qword_27C916E88, &qword_21476E5B0);
    sub_213FB2DF4(v44, &qword_27C916E70, &qword_21476E598);
    sub_21461F118();
    swift_allocError();
    v41 = 5;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_21461E8D0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916E90, &qword_21476E5B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - v6;
  v8 = sub_2146D9248();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916E98, &qword_21476E5C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v37 - v15;
  v17 = sub_2146D9268();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 8);
  if (v23 > 0xFB)
  {
    v24 = sub_2146D9278();
    return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
  }

  v26 = *a1;
  if ((v23 & 0x80) != 0)
  {
    v28 = v20;
    sub_2146D9258();
    if ((*(v18 + 48))(v16, 1, v28) == 1)
    {
      sub_213FB2DF4(v16, &qword_27C916E98, &qword_21476E5C0);
      v27 = 1;
      goto LABEL_8;
    }

    v33 = *(v18 + 32);
    v33(v22, v16, v28);
    v33(a2, v22, v28);
    v32 = MEMORY[0x277D23970];
  }

  else
  {
    sub_2146D9238();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_213FB2DF4(v7, &qword_27C916E90, &qword_21476E5B8);
      v27 = 2;
LABEL_8:
      sub_21461F118();
      swift_allocError();
      *v29 = v27;
      return swift_willThrow();
    }

    v30 = *(v9 + 32);
    v30(v12, v7, v8);
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916EA0, &qword_21476E5C8) + 48);
    *a2 = v26;
    v30(&a2[v31], v12, v8);
    v32 = MEMORY[0x277D23978];
  }

  v34 = *v32;
  v35 = sub_2146D9278();
  v36 = *(v35 - 8);
  (*(v36 + 104))(a2, v34, v35);
  return (*(v36 + 56))(a2, 0, 1, v35);
}

uint64_t sub_21461EDE8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916E78, &qword_21476E5A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  if (*a1 > 2u)
  {
    v12 = sub_2146D9228();
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  else
  {
    sub_2146D9218();
    v8 = sub_2146D9228();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_213FB2DF4(v7, &qword_27C916E78, &qword_21476E5A0);
      sub_21461F118();
      swift_allocError();
      *v10 = 6;
      return swift_willThrow();
    }

    else
    {
      (*(v9 + 32))(a2, v7, v8);
      return (*(v9 + 56))(a2, 0, 1, v8);
    }
  }
}

uint64_t sub_21461F000(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 5)
  {
  }

  if (a5 != 4)
  {
    if (a5)
    {
      return result;
    }
  }

  return sub_21461F07C(result, a2);
}

uint64_t sub_21461F07C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_21461F08C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 5)
  {
  }

  if (a5 != 4)
  {
    if (a5)
    {
      return result;
    }
  }

  return sub_21461F108(result, a2);
}

uint64_t sub_21461F108(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

unint64_t sub_21461F118()
{
  result = qword_27C916E68;
  if (!qword_27C916E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916E68);
  }

  return result;
}

unint64_t sub_21461F180()
{
  result = qword_27C916EA8;
  if (!qword_27C916EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916EA8);
  }

  return result;
}

unint64_t sub_21461F1DC@<X0>(unint64_t result@<X0>, char a2@<W1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  v4 = *a3;
  if (a2)
  {
    v5 = *a3;
  }

  else
  {
    v5 = result;
  }

  if (v5 < 3)
  {
    v4 = v5;
  }

  *a4 = v4;
  return result;
}

unint64_t sub_21461F1F8@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21461F2F8()
{
  v1 = (v0 + *(type metadata accessor for EditMessageCommand() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for EditMessageCommand()
{
  result = qword_280B304B0;
  if (!qword_280B304B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21461F384(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EditMessageCommand() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_21461F414@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EditMessageCommand();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_21461F448(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for EditMessageCommand();
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t sub_21461F4C0()
{
  v1 = (v0 + *(type metadata accessor for EditMessageCommand() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_21461F4EC(uint64_t a1, char a2)
{
  result = type metadata accessor for EditMessageCommand();
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

void sub_21461F57C(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EditMessageCommand() + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;

  sub_2142EE86C(v4, v5, v6, v7, v8);
}

__n128 sub_21461F5DC(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = (v1 + *(type metadata accessor for EditMessageCommand() + 32));
  v5 = v4[5];
  v6 = v4[6];
  sub_2142EE7AC(*v4, v4[1], v4[2], v4[3], v4[4]);
  v7 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v7;
  result = v9;
  *(v4 + 2) = v9;
  v4[6] = v3;
  return result;
}

uint64_t sub_21461F6BC(char a1)
{
  result = type metadata accessor for EditMessageCommand();
  *(v1 + *(result + 36)) = a1;
  return result;
}

void sub_21461F734(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EditMessageCommand() + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;

  sub_2142EE86C(v4, v5, v6, v7, v8);
}

__n128 sub_21461F794(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = (v1 + *(type metadata accessor for EditMessageCommand() + 40));
  v5 = v4[5];
  v6 = v4[6];
  sub_2142EE7AC(*v4, v4[1], v4[2], v4[3], v4[4]);
  v7 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v7;
  result = v9;
  *(v4 + 2) = v9;
  v4[6] = v3;
  return result;
}

uint64_t sub_21461F850@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EditMessageCommand() + 44);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;

  return sub_214031CA0(v5);
}

__n128 sub_21461F8D4(uint64_t a1)
{
  v12 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1 + *(type metadata accessor for EditMessageCommand() + 44);
  v5 = *(v4 + 8);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  v8 = *(v4 + 40);
  v9 = *(v4 + 48);

  sub_214031CE0(v7);
  v10 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v10;
  result = v12;
  *(v4 + 32) = v12;
  *(v4 + 48) = v3;
  return result;
}

unint64_t sub_21461F9B8()
{
  result = qword_27C916EB0;
  if (!qword_27C916EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916EB0);
  }

  return result;
}

unint64_t sub_21461FA0C(uint64_t a1)
{
  *(a1 + 8) = sub_2142EE6D4();
  result = sub_2142EE818();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21461FA3C(uint64_t a1)
{
  *(a1 + 8) = sub_21461FAA4(&qword_27C916EB8);
  result = sub_21461FAA4(&qword_27C916EC0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21461FAA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EditMessageCommand();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21461FB10()
{
  type metadata accessor for Metadata();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BC8);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B2F770);
      if (v2 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B34BD8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_21461FC34()
{
  result = qword_27C916EC8;
  if (!qword_27C916EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916EC8);
  }

  return result;
}

uint64_t sub_21461FD78@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 33);
  v6 = *(v1 + 34);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_21461FDA4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = *(v1 + 16);

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 33) = v5;
  *(v1 + 34) = v6;
  return result;
}

uint64_t sub_21461FE04@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 65);
  v6 = *(v1 + 66);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_21461FE30(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = *(v1 + 48);

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 65) = v5;
  *(v1 + 66) = v6;
  return result;
}

uint64_t sub_21461FE90@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 97);
  v6 = *(v1 + 98);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_21461FEBC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = *(v1 + 80);

  result = *a1;
  *(v1 + 72) = *a1;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  *(v1 + 97) = v5;
  *(v1 + 98) = v6;
  return result;
}

uint64_t sub_21461FF1C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  v5 = *(v1 + 129);
  v6 = *(v1 + 130);
  *a1 = *(v1 + 104);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_21461FF48(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = *(v1 + 112);

  result = *a1;
  *(v1 + 104) = *a1;
  *(v1 + 120) = v3;
  *(v1 + 128) = v4;
  *(v1 + 129) = v5;
  *(v1 + 130) = v6;
  return result;
}

uint64_t sub_21461FFA8()
{
  if (*(v0 + 33))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v0 + 24);
    v2 = *(v0 + 32) & 1;
  }

  return result;
}

uint64_t sub_214620014()
{
  if (*(v0 + 65))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v0 + 56);
    v2 = *(v0 + 64) & 1;
  }

  return result;
}

uint64_t sub_214620080()
{
  if (*(v0 + 97))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v0 + 88);
    v2 = *(v0 + 96) & 1;
  }

  return result;
}

uint64_t sub_2146200EC()
{
  if (*(v0 + 129))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v0 + 120);
    v2 = *(v0 + 128) & 1;
  }

  return result;
}

unint64_t sub_214620158@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21462025C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 33))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 32);
    *a2 = *(result + 24);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_2146202F0(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  if (*(v1 + 33))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 32);
    *a1 = *(v1 + 24);
    *(a1 + 8) = v2 & 1;
    return sub_214620384;
  }

  return result;
}

uint64_t sub_2146203B8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);
  v9 = *(a2 + 16);

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 33) = v7;
  *(a2 + 34) = v8;
  return result;
}

void (*sub_21462042C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 33);
  v9 = *(v1 + 34);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2146204CC;
}

void sub_2146204CC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  v10 = *(v3 + 16);
  if (a2)
  {
    v11 = (*a1)[1];

    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v6;
    *(v3 + 32) = v7;
    *(v3 + 33) = v8;
    *(v3 + 34) = v9;
    v12 = v2[1];
  }

  else
  {
    v13 = *(v3 + 16);

    *(v3 + 8) = v5;
    *(v3 + 16) = v4;
    *(v3 + 24) = v6;
    *(v3 + 32) = v7;
    *(v3 + 33) = v8;
    *(v3 + 34) = v9;
  }

  free(v2);
}

uint64_t sub_21462058C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 65))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 64);
    *a2 = *(result + 56);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_214620620(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  if (*(v1 + 65))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 64);
    *a1 = *(v1 + 56);
    *(a1 + 8) = v2 & 1;
    return sub_2146206B4;
  }

  return result;
}

uint64_t sub_2146206E8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);
  v9 = *(a2 + 48);

  *(a2 + 40) = v4;
  *(a2 + 48) = v3;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  *(a2 + 65) = v7;
  *(a2 + 66) = v8;
  return result;
}

void (*sub_21462075C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 65);
  v9 = *(v1 + 66);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2146207FC;
}

void sub_2146207FC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  v10 = *(v3 + 48);
  if (a2)
  {
    v11 = (*a1)[1];

    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    *(v3 + 56) = v6;
    *(v3 + 64) = v7;
    *(v3 + 65) = v8;
    *(v3 + 66) = v9;
    v12 = v2[1];
  }

  else
  {
    v13 = *(v3 + 48);

    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    *(v3 + 56) = v6;
    *(v3 + 64) = v7;
    *(v3 + 65) = v8;
    *(v3 + 66) = v9;
  }

  free(v2);
}

uint64_t (*sub_2146208E4(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  if (*(v1 + 97))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 96);
    *a1 = *(v1 + 88);
    *(a1 + 8) = v2 & 1;
    return sub_2145F9624;
  }

  return result;
}

void (*sub_214620978(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 97);
  v9 = *(v1 + 98);
  *v4 = *(v1 + 72);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2145F976C;
}

uint64_t sub_214620A18@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 129))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 128);
    *a2 = *(result + 120);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_214620AAC(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  if (*(v1 + 129))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 128);
    *a1 = *(v1 + 120);
    *(a1 + 8) = v2 & 1;
    return sub_214620B40;
  }

  return result;
}

uint64_t sub_214620B74(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);
  v9 = *(a2 + 112);

  *(a2 + 104) = v4;
  *(a2 + 112) = v3;
  *(a2 + 120) = v5;
  *(a2 + 128) = v6;
  *(a2 + 129) = v7;
  *(a2 + 130) = v8;
  return result;
}

void (*sub_214620BE8(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  v7 = *(v1 + 128);
  v8 = *(v1 + 129);
  v9 = *(v1 + 130);
  *v4 = *(v1 + 104);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_214620C88;
}

void sub_214620C88(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  v10 = *(v3 + 112);
  if (a2)
  {
    v11 = (*a1)[1];

    *(v3 + 104) = v5;
    *(v3 + 112) = v4;
    *(v3 + 120) = v6;
    *(v3 + 128) = v7;
    *(v3 + 129) = v8;
    *(v3 + 130) = v9;
    v12 = v2[1];
  }

  else
  {
    v13 = *(v3 + 112);

    *(v3 + 104) = v5;
    *(v3 + 112) = v4;
    *(v3 + 120) = v6;
    *(v3 + 128) = v7;
    *(v3 + 129) = v8;
    *(v3 + 130) = v9;
  }

  free(v2);
}

unint64_t sub_214620D84()
{
  result = qword_27C916ED0;
  if (!qword_27C916ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916ED0);
  }

  return result;
}

unint64_t sub_214620DD8(uint64_t a1)
{
  *(a1 + 8) = sub_2143042C4();
  result = sub_214304528();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy132_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_214620E3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 132))
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

uint64_t sub_214620E84(uint64_t result, int a2, int a3)
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
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 132) = 1;
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

    *(result + 132) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_214620F08()
{
  result = qword_27C916ED8;
  if (!qword_27C916ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916ED8);
  }

  return result;
}

unint64_t sub_214620F5C(uint64_t a1)
{
  *(a1 + 8) = sub_21431E588();
  result = sub_21431DA1C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214620F9C@<X0>(uint64_t a1@<X8>)
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
  v6 = sub_214069764(&unk_282653A98);
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

unint64_t sub_214621140(uint64_t a1)
{
  *(a1 + 8) = sub_214621170();
  result = sub_2146211C4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214621170()
{
  result = qword_280B30430;
  if (!qword_280B30430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30430);
  }

  return result;
}

unint64_t sub_2146211C4()
{
  result = qword_280B30438;
  if (!qword_280B30438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30438);
  }

  return result;
}

uint64_t sub_214621218(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 161))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 104);
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

uint64_t sub_214621274(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2;
    }
  }

  return result;
}

uint64_t sub_214621304@<X0>(uint64_t a1@<X8>)
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

__n128 sub_214621350(__n128 *a1)
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

uint64_t sub_2146213AC()
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

uint64_t sub_214621428(uint64_t a1, uint64_t a2)
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

uint64_t (*sub_214621570(void *a1))(uint64_t *a1, char a2)
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

void (*sub_21462160C(uint64_t *a1))(uint64_t **a1, char a2)
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

unint64_t sub_2146216A4(uint64_t a1)
{
  *(a1 + 8) = sub_214307090();
  result = sub_21430756C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2146216E4@<X0>(uint64_t a1@<X8>)
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
  if (qword_27C903158 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = __swift_project_value_buffer(v5, qword_27CA19DD8);
  v7 = *(*(v5 - 8) + 16);
  v7(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  sub_2144A041C(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
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
  v19 = inited;
  v20 = v24;
  *(inited + 32) = v17;
  return sub_214042B80(v19, v20);
}

uint64_t sub_214621A20@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214621A6C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_u64[1];
  v7 = v1[2].n128_u64[1];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u64[1] = v4;
  v1[3].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214621AC8()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 32);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214621B44()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_214621B74(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214621BCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v12 = *(v3 + 48);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 40);

    *(v3 + 32) = a1;
    *(v3 + 40) = a2;
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

uint64_t (*sub_214621D14(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 40);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 32);
    a1[1] = v3;

    return sub_21447D6B0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214621DB0(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = *(v1 + 48);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21447D9E0;
}

uint64_t sub_214621E48()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_214621E78(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214621ED8(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_214621F2C(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void sub_214621F78()
{
  v1 = *(v0 + 16);
  v16 = *(v1 + 16);
  if (v16)
  {
    v2 = 0;
    v3 = (v1 + 80);
    v4 = MEMORY[0x277D84F90];
    v15 = *(v0 + 16);
    while (v2 < *(v1 + 16))
    {
      v6 = *(v3 - 6);
      v5 = *(v3 - 5);
      v8 = *(v3 - 4);
      v7 = *(v3 - 3);
      v10 = *(v3 - 2);
      v9 = *(v3 - 1);
      v11 = *v3;

      v17 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_214096524(0, *(v4 + 2) + 1, 1, v4);
      }

      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      if (v13 >= v12 >> 1)
      {
        v4 = sub_214096524((v12 > 1), v13 + 1, 1, v4);
      }

      ++v2;
      *(v4 + 2) = v13 + 1;
      v14 = &v4[56 * v13];
      *(v14 + 4) = v6;
      *(v14 + 5) = v5;
      *(v14 + 6) = v8;
      *(v14 + 7) = v7;
      *(v14 + 8) = v10;
      *(v14 + 9) = v9;
      v14[80] = v17;
      v3 += 56;
      v1 = v15;
      if (v16 == v2)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_214622174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2146221B0()
{
  result = qword_27C916EE0;
  if (!qword_27C916EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916EE0);
  }

  return result;
}

unint64_t sub_214622204()
{
  result = qword_27C916EE8;
  if (!qword_27C916EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916EE8);
  }

  return result;
}

unint64_t sub_2146222A0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21405980C;
  *(v3 + 24) = 0;
  *(inited + 32) = v3;
  sub_214042B80(inited, a1);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_2146E9BF0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21462B1F0;
  *(v5 + 24) = 0;
  *(v4 + 32) = v5;
  sub_214042B80(v4, a1 + 40);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_2146E9BF0;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_2146E9BF0;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = 64;
  *(v9 + 24) = 0;
  *(v8 + 16) = sub_21438F518;
  *(v8 + 24) = v9;
  *(v7 + 32) = v8;
  v10 = sub_2142E0070(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_214032610;
  *(v11 + 24) = v12;
  *(v6 + 32) = v11;
  sub_214042A28(v6, a1 + 80);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_2146E9BF0;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = 512;
  *(v15 + 16) = sub_21462B1D8;
  *(v15 + 24) = v16;
  *(v14 + 32) = v15;
  v17 = sub_2142E00AC(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = sub_2143A5730;
  *(v18 + 24) = v19;
  *(v13 + 32) = v18;
  return sub_214042E28(v13, a1 + 120);
}

uint64_t sub_214622584@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2146225D0(__n128 *a1)
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

uint64_t sub_21462262C@<X0>(uint64_t a1@<X8>)
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

__n128 sub_214622678(__n128 *a1)
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

uint64_t sub_2146226D4@<X0>(uint64_t a1@<X8>)
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

__n128 sub_21462272C(__n128 *a1)
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

uint64_t sub_214622794@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2146227EC(__n128 *a1)
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

uint64_t sub_214622854()
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

uint64_t sub_2146228D0()
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

uint64_t sub_21462294C()
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

uint64_t sub_2146229CC()
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

uint64_t sub_214622A54@<X0>(uint64_t a1@<X8>)
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

__n128 sub_214622AA0(__n128 *a1)
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

uint64_t sub_214622AFC@<X0>(uint64_t a1@<X8>)
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

__n128 sub_214622B48(__n128 *a1)
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

uint64_t sub_214622BA4()
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

uint64_t sub_214622C20()
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

unint64_t sub_214622C9C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 64;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21406418C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214622DE8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 512;
  *(v4 + 16) = sub_21462B1C4;
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

uint64_t sub_214622F28@<X0>(uint64_t a1@<X8>)
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

__n128 sub_214622F74(__n128 *a1)
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

uint64_t sub_214622FD0@<X0>(uint64_t a1@<X8>)
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

__n128 sub_214623028(__n128 *a1)
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

uint64_t sub_214623090@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2146230E8(__n128 *a1)
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

uint64_t sub_214623150()
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

uint64_t sub_2146231CC()
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

uint64_t sub_21462324C()
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

uint64_t sub_2146232D4@<X0>(uint64_t a1@<X8>)
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

__n128 sub_214623320(__n128 *a1)
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

uint64_t sub_21462337C()
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

unint64_t sub_2146233F8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21462AFB8;
  *(v3 + 24) = 0;
  *(inited + 32) = v3;
  sub_214042B80(inited, a1);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_2146E9BF0;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2146E9BF0;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21430CE10;
  *(v6 + 24) = 0;
  *(v5 + 32) = v6;
  v7 = sub_2142E0070(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_21403254C;
  *(v8 + 24) = v9;
  *(v4 + 32) = v8;
  return sub_214042A28(v4, a1 + 40);
}

uint64_t sub_214623568@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2146235B4(__n128 *a1)
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

uint64_t sub_214623610@<X0>(uint64_t a1@<X8>)
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

__n128 sub_214623668(__n128 *a1)
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

uint64_t sub_2146236D0()
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

uint64_t sub_21462374C()
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

uint64_t sub_214623804@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 120);
  v12[6] = *(v1 + 104);
  v12[7] = v2;
  v13[0] = *(v1 + 136);
  *(v13 + 9) = *(v1 + 145);
  v3 = *(v1 + 56);
  v12[2] = *(v1 + 40);
  v12[3] = v3;
  v4 = *(v1 + 88);
  v12[4] = *(v1 + 72);
  v12[5] = v4;
  v5 = *(v1 + 24);
  v12[0] = *(v1 + 8);
  v12[1] = v5;
  v6 = *(v1 + 120);
  a1[6] = *(v1 + 104);
  a1[7] = v6;
  a1[8] = *(v1 + 136);
  *(a1 + 137) = *(v1 + 145);
  v7 = *(v1 + 56);
  a1[2] = *(v1 + 40);
  a1[3] = v7;
  v8 = *(v1 + 88);
  a1[4] = *(v1 + 72);
  a1[5] = v8;
  v9 = *(v1 + 24);
  *a1 = *(v1 + 8);
  a1[1] = v9;
  return sub_213FB2E54(v12, &v11, &qword_27C908088, &unk_21476EEA0);
}

__n128 sub_2146238C8(uint64_t a1)
{
  v3 = *(v1 + 120);
  v12[6] = *(v1 + 104);
  v12[7] = v3;
  v13[0] = *(v1 + 136);
  *(v13 + 9) = *(v1 + 145);
  v4 = *(v1 + 56);
  v12[2] = *(v1 + 40);
  v12[3] = v4;
  v5 = *(v1 + 88);
  v12[4] = *(v1 + 72);
  v12[5] = v5;
  v6 = *(v1 + 24);
  v12[0] = *(v1 + 8);
  v12[1] = v6;
  sub_213FB2DF4(v12, &qword_27C908088, &unk_21476EEA0);
  v7 = *(a1 + 112);
  *(v1 + 104) = *(a1 + 96);
  *(v1 + 120) = v7;
  *(v1 + 136) = *(a1 + 128);
  *(v1 + 145) = *(a1 + 137);
  v8 = *(a1 + 48);
  *(v1 + 40) = *(a1 + 32);
  *(v1 + 56) = v8;
  v9 = *(a1 + 80);
  *(v1 + 72) = *(a1 + 64);
  *(v1 + 88) = v9;
  result = *a1;
  v11 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v11;
  return result;
}

uint64_t sub_2146239A8@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 216);
  v10 = *(v1 + 200);
  v11 = v2;
  v4 = *(v1 + 248);
  v12 = *(v1 + 232);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 184);
  v9[0] = *(v1 + 168);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_213FB2E54(v9, &v8, &qword_27C9080A0, &unk_2146F4F10);
}

__n128 sub_214623A10(uint64_t a1)
{
  v3 = *(v1 + 216);
  v10[2] = *(v1 + 200);
  v10[3] = v3;
  v4 = *(v1 + 248);
  v10[4] = *(v1 + 232);
  v10[5] = v4;
  v5 = *(v1 + 184);
  v10[0] = *(v1 + 168);
  v10[1] = v5;
  sub_213FB2DF4(v10, &qword_27C9080A0, &unk_2146F4F10);
  v6 = *(a1 + 48);
  *(v1 + 200) = *(a1 + 32);
  *(v1 + 216) = v6;
  v7 = *(a1 + 80);
  *(v1 + 232) = *(a1 + 64);
  *(v1 + 248) = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *(v1 + 168) = *a1;
  *(v1 + 184) = v9;
  return result;
}

uint64_t sub_214623AB8@<X0>(uint64_t a1@<X8>)
{
  v14 = *(v1 + 376);
  v2 = *(v1 + 328);
  v4 = *(v1 + 360);
  v12 = *(v1 + 344);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 280);
  v11[0] = *(v1 + 264);
  v5 = v11[0];
  v7 = *(v1 + 296);
  v8 = *(v1 + 312);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *(a1 + 112) = v14;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_213FB2E54(v11, v10, &qword_27C9080B8, &unk_21476EEB0);
}

__n128 sub_214623B3C(uint64_t a1)
{
  v11 = *(v1 + 376);
  v3 = *(v1 + 344);
  v10[4] = *(v1 + 328);
  v10[5] = v3;
  v10[6] = *(v1 + 360);
  v4 = *(v1 + 280);
  v10[0] = *(v1 + 264);
  v10[1] = v4;
  v5 = *(v1 + 312);
  v10[2] = *(v1 + 296);
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C9080B8, &unk_21476EEB0);
  v6 = *(a1 + 80);
  *(v1 + 328) = *(a1 + 64);
  *(v1 + 344) = v6;
  *(v1 + 360) = *(a1 + 96);
  *(v1 + 376) = *(a1 + 112);
  v7 = *(a1 + 16);
  *(v1 + 264) = *a1;
  *(v1 + 280) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 296) = result;
  *(v1 + 312) = v9;
  return result;
}

uint64_t sub_214623BF8@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[27];
  v9 = v1[26];
  v10 = v2;
  v11 = v1[28];
  v3 = v11;
  v4 = v1[25];
  v8[0] = v1[24];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_213FB2E54(v8, &v7, &qword_27C9080D0, &qword_2146F4F20);
}

__n128 sub_214623C54(uint64_t a1)
{
  v3 = v1[27];
  v7[2] = v1[26];
  v7[3] = v3;
  v7[4] = v1[28];
  v4 = v1[25];
  v7[0] = v1[24];
  v7[1] = v4;
  sub_213FB2DF4(v7, &qword_27C9080D0, &qword_2146F4F20);
  v5 = *(a1 + 48);
  v1[26] = *(a1 + 32);
  v1[27] = v5;
  v1[28] = *(a1 + 64);
  result = *(a1 + 16);
  v1[24] = *a1;
  v1[25] = result;
  return result;
}

unint64_t sub_214623DDC@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x40302010005uLL >> (8 * result);
  if (result >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214623EC8(uint64_t a1, uint64_t a2)
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

uint64_t (*sub_214624010(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2146240AC(uint64_t *a1))()
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

uint64_t sub_214624144(uint64_t a1, uint64_t a2)
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

uint64_t (*sub_21462428C(void *a1))()
{
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 56);
    a1[1] = v3;

    return sub_2144120D0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214624328(uint64_t *a1))()
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

  return sub_21441238C;
}

uint64_t sub_2146243C0(uint64_t a1, uint64_t a2)
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

void (*sub_214624504(uint64_t *a1))(uint64_t **a1, char a2)
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

void (*sub_2146245DC(uint64_t *a1))(uint64_t **a1, char a2)
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
  return sub_21462467C;
}

uint64_t sub_2146246A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 144);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 136);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_21462471C(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2146247CC(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_214624898(uint64_t *a1))(uint64_t *a1, char a2)
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
    return sub_214624938;
  }

  return result;
}

uint64_t sub_214624938(uint64_t *a1, char a2)
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

uint64_t sub_214624A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  v4 = *(a1 + 144);
  v5 = *(a1 + 152);
  *a2 = *(a1 + 120);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_214624ACC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 128);
  v9 = *(a2 + 136);
  v10 = *(a2 + 144);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v9, v10);
  *(a2 + 120) = v4;
  *(a2 + 128) = v3;
  *(a2 + 136) = v5;
  *(a2 + 144) = v6;
  *(a2 + 152) = v7;
  return result;
}

void (*sub_214624B54(uint64_t *a1))(uint64_t **a1, char a2)
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
  return sub_214624BF4;
}

void sub_214624BF4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 128);
  v9 = *(v3 + 136);
  v11 = *(v3 + 144);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v11);
    *(v3 + 120) = v5;
    *(v3 + 128) = v4;
    *(v3 + 136) = v7;
    *(v3 + 144) = v6;
    *(v3 + 152) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_214032564(v14, v15);
  }

  else
  {
    v16 = *(v3 + 128);

    sub_214032564(v9, v11);
    *(v3 + 120) = v5;
    *(v3 + 128) = v4;
    *(v3 + 136) = v7;
    *(v3 + 144) = v6;
    *(v3 + 152) = v8;
  }

  free(v2);
}

uint64_t sub_214624CD4(uint64_t a1, uint64_t a2)
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

uint64_t (*sub_214624E1C(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214624EB8(uint64_t *a1))()
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

uint64_t sub_214624F50(uint64_t a1, uint64_t a2)
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

uint64_t (*sub_214625098(void *a1))()
{
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 56);
    a1[1] = v3;

    return sub_2144158A0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214625134(uint64_t *a1))()
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

  return sub_2144158A4;
}

uint64_t sub_214625204@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = v2;
  a1[1] = v3;
  return sub_213FDCA18(v2, v3);
}

uint64_t sub_214625210(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_213FDC6BC(*(v1 + 80), *(v1 + 88));
  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
  return result;
}

uint64_t sub_214625264(uint64_t a1)
{
  v2 = sub_2146256D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2146252A0(uint64_t a1)
{
  v2 = sub_2146256D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2146252DC(uint64_t a1)
{
  v2 = sub_21462567C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214625318(uint64_t a1)
{
  v2 = sub_21462567C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214625354(uint64_t a1)
{
  v2 = sub_214625724();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214625390(uint64_t a1)
{
  v2 = sub_214625724();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2146253CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916EF0, &qword_21476EEC8);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916EF8, &qword_21476EED0);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F00, &qword_21476EED8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21462567C();
  sub_2146DAA28();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_2146256D0();
    v18 = v22;
    sub_2146DA288();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_214625724();
    sub_2146DA288();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_21462567C()
{
  result = qword_27C916F08;
  if (!qword_27C916F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916F08);
  }

  return result;
}

unint64_t sub_2146256D0()
{
  result = qword_27C916F10;
  if (!qword_27C916F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916F10);
  }

  return result;
}

unint64_t sub_214625724()
{
  result = qword_27C916F18;
  if (!qword_27C916F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916F18);
  }

  return result;
}

uint64_t sub_214625778@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F20, &qword_21476EEE0);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F28, &qword_21476EEE8);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F30, &unk_21476EEF0);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21462567C();
  v16 = v36;
  sub_2146DAA08();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_2146DA238();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_21439DF70();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_2146D9F58();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v26 = &type metadata for IDSNearbySessionMessage.ConnectionResponse.OneOf_Operation;
      sub_2146DA0E8();
      sub_2146D9F28();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_2146256D0();
        sub_2146DA0B8();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_214625724();
        sub_2146DA0B8();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_214625C64()
{
  v1 = *v0;
  sub_21402D9F8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_214625C98(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_214625CF0(uint64_t a1, uint64_t a2)
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

uint64_t (*sub_214625E38(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214625ED4(uint64_t *a1))()
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

uint64_t sub_214625F6C(uint64_t a1, uint64_t a2)
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

void (*sub_2146260B0(uint64_t *a1))(uint64_t **, char)
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

    return sub_2145DF56C;
  }

  return result;
}

void (*sub_214626188(uint64_t *a1))(uint64_t **, char)
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
  return sub_2145DF570;
}

uint64_t sub_214626228@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 104);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 96);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_21462629C(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21462634C(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_214626418(uint64_t *a1))(uint64_t *a1, char a2)
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
    return sub_2146264B8;
  }

  return result;
}

uint64_t sub_2146264B8(uint64_t *a1, char a2)
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

uint64_t sub_2146265F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_21462664C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 88);
  v9 = *(a2 + 96);
  v10 = *(a2 + 104);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v9, v10);
  *(a2 + 80) = v4;
  *(a2 + 88) = v3;
  *(a2 + 96) = v5;
  *(a2 + 104) = v6;
  *(a2 + 112) = v7;
  return result;
}

void (*sub_2146266D4(uint64_t *a1))(uint64_t **a1, char a2)
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
  return sub_214626774;
}

void sub_2146267A0(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = (*a1)[5];
  v8 = **a1;
  v7 = (*a1)[1];
  v10 = (*a1)[2];
  v9 = (*a1)[3];
  v20 = *(*a1 + 32);
  v12 = *(v6 + 88);
  v11 = *(v6 + 96);
  v13 = *(v6 + 104);
  if (a2)
  {

    a4(v10, v9);

    a3(v11, v13);
    *(v6 + 80) = v8;
    *(v6 + 88) = v7;
    *(v6 + 96) = v10;
    *(v6 + 104) = v9;
    *(v6 + 112) = v20;
    v15 = v5[1];
    v16 = v5[2];
    v17 = v5[3];

    a3(v16, v17);
  }

  else
  {
    v18 = *(v6 + 88);

    a3(v11, v13);
    *(v6 + 80) = v8;
    *(v6 + 88) = v7;
    *(v6 + 96) = v10;
    *(v6 + 104) = v9;
    *(v6 + 112) = v20;
  }

  free(v5);
}

uint64_t sub_2146268E4(uint64_t a1, uint64_t a2)
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

uint64_t (*sub_214626A2C(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214626AC8(uint64_t *a1))()
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

void sub_214626B98(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  sub_21430D49C(v2, v3, v4, v5, v6);
}

__n128 sub_214626BB4(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_21430D4FC(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
  result = *a1;
  *(v1 + 56) = *(a1 + 16);
  *(v1 + 40) = result;
  *(v1 + 72) = v3;
  return result;
}

uint64_t sub_214626C38(uint64_t a1)
{
  v2 = sub_21462717C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214626C74(uint64_t a1)
{
  v2 = sub_21462717C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214626CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465696E6564 && a2 == 0xE600000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465766F72707061 && a2 == 0xE800000000000000)
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

uint64_t sub_214626D88(uint64_t a1)
{
  v2 = sub_214627128();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214626DC4(uint64_t a1)
{
  v2 = sub_214627128();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214626E00(uint64_t a1)
{
  v2 = sub_2146271D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214626E3C(uint64_t a1)
{
  v2 = sub_2146271D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214626E78(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F38, &qword_21476EF00);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F40, &qword_21476EF08);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F48, &qword_21476EF10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214627128();
  sub_2146DAA28();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_21462717C();
    v18 = v22;
    sub_2146DA288();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_2146271D0();
    sub_2146DA288();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_214627128()
{
  result = qword_27C916F50;
  if (!qword_27C916F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916F50);
  }

  return result;
}

unint64_t sub_21462717C()
{
  result = qword_27C916F58;
  if (!qword_27C916F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916F58);
  }

  return result;
}

unint64_t sub_2146271D0()
{
  result = qword_27C916F60;
  if (!qword_27C916F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916F60);
  }

  return result;
}

uint64_t sub_214627254@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F68, &qword_21476EF18);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F70, &qword_21476EF20);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F78, &unk_21476EF28);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214627128();
  v16 = v36;
  sub_2146DAA08();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_2146DA238();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_21439DF70();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_2146D9F58();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v26 = &type metadata for IDSNearbySessionMessage.JoinResponse.OneOf_Operation;
      sub_2146DA0E8();
      sub_2146D9F28();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_21462717C();
        sub_2146DA0B8();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_2146271D0();
        sub_2146DA0B8();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_214627740()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_214627770(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2146277D0(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_21462781C()
{
  v1 = *(v0 + 24);
  sub_213FDCA18(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_214627850(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_214627C74()
{
  v1 = 0x696C616974696E69;
  v2 = 0x65527265626D656DLL;
  if (*v0 != 2)
  {
    v2 = 0x654C7265626D656DLL;
  }

  if (*v0)
  {
    v1 = 0x64417265626D656DLL;
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

uint64_t sub_214627D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21462AFF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214627D30(uint64_t a1)
{
  v2 = sub_2146283C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214627D6C(uint64_t a1)
{
  v2 = sub_2146283C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214627DA8(uint64_t a1)
{
  v2 = sub_214628510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214627DE4(uint64_t a1)
{
  v2 = sub_214628510();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214627E20(uint64_t a1)
{
  v2 = sub_2146284BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214627E5C(uint64_t a1)
{
  v2 = sub_2146284BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214627E98(uint64_t a1)
{
  v2 = sub_214628414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214627ED4(uint64_t a1)
{
  v2 = sub_214628414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214627F10(uint64_t a1)
{
  v2 = sub_214628468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214627F4C(uint64_t a1)
{
  v2 = sub_214628468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214627F88(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F80, &qword_21476EF38);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F88, &qword_21476EF40);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F90, &qword_21476EF48);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916F98, &qword_21476EF50);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916FA0, &qword_21476EF58);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146283C0();
  sub_2146DAA28();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_214628468();
      v24 = v33;
      sub_2146DA288();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_214628414();
      v24 = v36;
      sub_2146DA288();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_2146284BC();
    v24 = v30;
    sub_2146DA288();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_214628510();
  sub_2146DA288();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

unint64_t sub_2146283C0()
{
  result = qword_27C916FA8;
  if (!qword_27C916FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916FA8);
  }

  return result;
}

unint64_t sub_214628414()
{
  result = qword_27C916FB0;
  if (!qword_27C916FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916FB0);
  }

  return result;
}

unint64_t sub_214628468()
{
  result = qword_27C916FB8;
  if (!qword_27C916FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916FB8);
  }

  return result;
}

unint64_t sub_2146284BC()
{
  result = qword_27C916FC0;
  if (!qword_27C916FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916FC0);
  }

  return result;
}

unint64_t sub_214628510()
{
  result = qword_27C916FC8;
  if (!qword_27C916FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916FC8);
  }

  return result;
}

uint64_t sub_214628590()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t sub_2146285D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916FD0, &qword_21476EF60);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916FD8, &qword_21476EF68);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916FE0, &qword_21476EF70);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916FE8, &qword_21476EF78);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916FF0, &qword_21476EF80);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_2146283C0();
  v21 = v53;
  sub_2146DAA08();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_2146DA238();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_21439DF6C();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_2146D9F58();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v34 = &type metadata for IDSNearbySessionMessage.GroupMessage.OneOf_Event;
      sub_2146DA0E8();
      sub_2146D9F28();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_2146284BC();
        v39 = v42;
        sub_2146DA0B8();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_214628510();
        v31 = v42;
        sub_2146DA0B8();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_214628468();
      v38 = v42;
      sub_2146DA0B8();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_214628414();
      v40 = v42;
      sub_2146DA0B8();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}