uint64_t static CRStruct_3.fieldKeys.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 64))(v8);
  v6 = *&v8[3];
  v7 = *v8;
  v2 = v8[6];
  v3 = v8[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2427E0;
  *(v4 + 32) = v7;
  *(v4 + 48) = v6;
  *(v4 + 64) = v2;
  *(v4 + 72) = v3;

  return v4;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRStruct_3.decode(fields:)(Swift::OpaquePointer fields)
{
  v3 = v1;
  v5 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = v41 - v7;
  v46 = swift_getAssociatedTypeWitness();
  v8 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v47 = v41 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  (*(v5 + 64))(v53, v3, v5, v12);
  v13 = v53[1];
  v14 = v53[2];
  v51 = v53[4];
  v52 = v53[5];
  if (!*(fields._rawValue + 2))
  {
    goto LABEL_17;
  }

  v50 = v53[8];
  v48 = v53[7];
  v15 = v53[0];
  v42 = v53[6];
  v43 = v53[3];

  v16 = sub_1ADDD7A10(v15, v13);
  v17 = v13;
  v19 = v18;
  v49 = v17;

  if (v19)
  {
    v20 = *(*(fields._rawValue + 7) + 8 * v16);
    v21 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v41[0] = *(v21 + 8);
    swift_retain_n();

    v41[1] = v20;
    v22 = v54;
    (v41[0])(v20, v10, v21);
    v54 = v22;
    if (v22)
    {

LABEL_16:

      return;
    }

    swift_setAtWritableKeyPath();
  }

  if (!*(fields._rawValue + 2))
  {
    goto LABEL_17;
  }

  v23 = v51;

  v24 = sub_1ADDD7A10(v43, v23);
  v26 = v25;

  if (v26)
  {
    v43 = v14;
    v27 = *(*(fields._rawValue + 7) + 8 * v24);
    v28 = v46;
    v29 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v30 = *(v29 + 8);
    swift_retain_n();

    v31 = v54;
    v30(v27, v28, v29);
    v54 = v31;
    if (v31)
    {
      goto LABEL_15;
    }

    swift_setAtWritableKeyPath();

    v14 = v43;
  }

  if (*(fields._rawValue + 2))
  {
    v32 = v48;

    v33 = sub_1ADDD7A10(v42, v32);
    v35 = v34;

    if (v35)
    {
      v43 = v14;
      v36 = *(*(fields._rawValue + 7) + 8 * v33);
      v37 = AssociatedTypeWitness;
      v38 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v39 = *(v38 + 8);
      swift_retain_n();

      v40 = v54;
      v39(v36, v37, v38);
      v54 = v40;
      if (v40)
      {
LABEL_15:

        goto LABEL_16;
      }

      swift_setAtWritableKeyPath();
    }

    else
    {
    }
  }

  else
  {
LABEL_17:
  }
}

uint64_t sub_1ADE08424(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t CRMaxRegister.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    sub_1ADE085A8(a2, a3, a4);
    swift_setDeallocating();
    v9 = *(inited + 16);
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v10 = 0xD000000000000014;
    *(v10 + 8) = 0x80000001AE25FB50;
    *(v10 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1ADE085A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_1ADDE78C8();
  v8 = *(v3 + 16);

  return sub_1ADE0861C(v7, v8, a1, a2, a3);
}

uint64_t sub_1ADE0861C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v37 = a4;
  v40 = a2;
  v36 = a5;
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - v10;
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v35 = &v35 - v18;
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v22 = &v35 - v21;
  v39 = a1;
  v23 = *(a1 + 16);
  if (v23 >> 60 || (v23 & 0xF000000000000007) == 0xF000000000000007 || (v24 = *(v23 + 16), swift_beginAccess(), !*(v24 + 40)))
  {
    v31 = v38;
    (*(*(*(v37 + 8) + 8) + 40))(a3, v20);
    if (v31)
    {

      (*(v12 + 56))(v11, 1, 1, a3);
      (*(v8 + 8))(v11, v7);
      sub_1ADE42E40();
      swift_allocError();
      *v32 = 0xD000000000000020;
      *(v32 + 8) = 0x80000001AE261210;
      *(v32 + 16) = 0;
      swift_willThrow();
    }

    else
    {

      (*(v12 + 56))(v11, 0, 1, a3);
      v33 = *(v12 + 32);
      v33(v16, v11, a3);
      v34 = v35;
      v33(v35, v16, a3);
      return (v33)(v36, v34, a3);
    }
  }

  else
  {
    type metadata accessor for CRDecoder();
    swift_allocObject();

    v26 = sub_1ADE0262C(v25, v40);
    v27 = v38;
    (*(*(*(v37 + 8) + 8) + 8))(v26, a3);

    if (!v27)
    {
      v29 = *(v12 + 32);
      v30 = v35;
      v29(v35, v22, a3);
      return (v29)(v36, v30, a3);
    }
  }

  return result;
}

void sub_1ADE089F4(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = sub_1ADE08BD8(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

BOOL sub_1ADE08A20@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ADE08A50(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_1ADE08A50(uint64_t a1)
{
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = a1;
    sub_1ADDF4474();
    v4 = v3;

    if (!v1)
    {
      return v4 != 0;
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v6 = 0xD000000000000017;
    *(v6 + 8) = 0x80000001AE25FB70;
    *(v6 + 16) = 0;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1ADE08B24()
{
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE08B6C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t CRDecoder.__deallocating_deinit()
{
  CRDecoder.deinit();

  return swift_deallocClassInstance();
}

double sub_1ADE08BD8(uint64_t a1)
{
  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    *(swift_initStackObject() + 16) = a1;
    sub_1ADE08CAC();
    v1 = v3;
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v4 = 0xD000000000000017;
    *(v4 + 8) = 0x80000001AE25FB70;
    *(v4 + 16) = 0;
    swift_willThrow();
  }

  return v1;
}

void sub_1ADE08CAC()
{
  v1 = *(*(v0 + 16) + 72);
  if (v1)
  {
    v2 = *(v1 + 16);
    if ((~v2 & 0xF000000000000007) == 0)
    {
LABEL_6:
      sub_1ADE42E40();
      swift_allocError();
      *v5 = 0xD000000000000018;
      *(v5 + 8) = 0x80000001AE2602A0;
      *(v5 + 16) = 0;
      swift_willThrow();
      return;
    }

    v3 = (v2 >> 59) & 0x1E | (v2 >> 2) & 1;
    if (v3 != 14)
    {
      if (v3 == 1)
      {
        v4 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        return;
      }

      goto LABEL_6;
    }

    v6 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ADE08D74()
{
  sub_1ADE52174(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE08DAC()
{
  sub_1ADE51B48(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE08E20()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE08EB0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1AE23D43C();
  if (!v26)
  {
    return sub_1AE23D05C();
  }

  v48 = v26;
  v52 = sub_1AE23DB5C();
  v39 = sub_1AE23DB6C();
  sub_1AE23DB0C();
  result = sub_1AE23D41C();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1AE23D51C();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1AE23DB4C();
      result = sub_1AE23D47C();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADE092D0()
{
  if (*(v0 + 72))
  {
    type metadata accessor for CRDecoder.CRValueKeyedContainer();
    v1 = swift_allocObject();
    *(v1 + 16) = v0;
  }

  else
  {
    sub_1ADE42E40();
    v2 = swift_allocError();
    *v3 = 0xD000000000000021;
    *(v3 + 8) = 0x80000001AE25FCC0;
    *(v3 + 16) = 0;
    v1 = v2;
    swift_willThrow();
  }

  return v1;
}

Coherence::UnknownValueProperties __swiftcall UnknownValueProperties.init()()
{
  v1 = v0;
  result.properties._rawValue = sub_1ADE15B94(MEMORY[0x1E69E7CC0]);
  v1->properties._rawValue = result.properties._rawValue;
  return result;
}

uint64_t CRExtensible.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v29 = a4;
  v30 = a5;
  v31 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v26 - v12;
  v14 = sub_1AE23D7CC();
  v27 = *(v14 - 8);
  v28 = v14;
  v15 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  v18 = *(a2 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, AssociatedTypeWitness, v21);
  sub_1AE23CF7C();
  if ((*(v18 + 48))(v17, 1, a2) == 1)
  {
    (*(v27 + 8))(v17, v28);
    (*(v10 + 32))(v31, a1, AssociatedTypeWitness);
  }

  else
  {
    (*(v10 + 8))(a1, AssociatedTypeWitness);
    v24 = *(v18 + 32);
    v24(v23, v17, a2);
    v24(v31, v23, a2);
  }

  v32 = a2;
  v33 = a3;
  v34 = v29;
  v35 = v30;
  type metadata accessor for CRExtensible();
  return swift_storeEnumTagMultiPayload();
}

uint64_t CRExtensible.hash(into:)(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  CRExtensible.rawValue.getter(a2, &v12 - v8);
  v10 = a2[5];
  sub_1AE23CBCC();
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_1ADE097D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *(a1 + 16);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
}

id sub_1ADE098C0()
{
  v2 = *(v0 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded + 56);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded + 64);
    v4 = *(v0 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder);
    sub_1ADE42C78(v2);

    result = sub_1ADDD6748(v2, v3, v4, &v14);
    if (!v1)
    {
      v6 = type metadata accessor for ObjCVersion();
      v7 = objc_allocWithZone(v6);
      v8 = &v7[OBJC_IVAR____TtC9Coherence11ObjCVersion_version];
      v9 = MEMORY[0x1E69E7CC8];
      *v8 = MEMORY[0x1E69E7CC8];
      *(v8 + 1) = v9;
      swift_beginAccess();
      v11 = *v8;
      v10 = *(v8 + 1);
      *v8 = v14;

      v13.receiver = v7;
      v13.super_class = v6;
      return objc_msgSendSuper2(&v13, sel_init);
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v12 = 0xD000000000000022;
    *(v12 + 8) = 0x80000001AE261690;
    *(v12 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1ADE09A10(void **a1)
{
  v2 = *(sub_1AE23BFEC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1ADE0C054(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1ADE09AB8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1ADE09AB8(int64_t *a1)
{
  v2 = a1[1];
  result = sub_1AE23DD7C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1AE23BFEC();
        v6 = sub_1AE23D06C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1AE23BFEC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1AE2283B8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1ADE0C068(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ADE09BE4@<X0>(uint64_t a1@<X8>)
{
  v2 = 0xD000000000000013;
  if (*(v1 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence + 64))
  {
    v3 = "Coherence.CRTTStringEncoder";
    v2 = 0xD00000000000003ALL;
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence + 48);
    v5 = *(*(v1 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder) + 24);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v4 >= v6;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v11 = sub_1AE23BFEC();
      return (*(*(v11 - 8) + 16))(a1, v5 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80)) + *(*(v11 - 8) + 72) * v4, v11);
    }

    v3 = "Wrong format for UUID.";
  }

  v8 = v3 | 0x8000000000000000;
  sub_1ADE42E40();
  swift_allocError();
  *v9 = v2;
  *(v9 + 8) = v8;
  *(v9 + 16) = 0;
  return swift_willThrow();
}

id sub_1ADE09D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v7 = sub_1AE23BFEC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a5(a3);
  v12 = sub_1AE23BF7C();
  (*(v8 + 8))(v11, v7);

  return v12;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoID>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t sub_1ADE09EB0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v6 = (a1 + *a3);
  v7 = v6[1];
  v8 = v6[2];
  v10 = v6[3];
  v9 = v6[4];
  v11 = v6[5];
  v12 = v6[6];
  v13 = v6[7];
  v14 = v6[8];
  v15 = v6[9];
  v16 = v6[10];
  v23 = v6[12];
  v24 = v6[11];

  sub_1ADE42CB8(v11);
  sub_1ADE42CB8(v13);
  sub_1ADE42CB8(v15);
  sub_1ADE42CB8(v24);
  v17 = (a1 + *a4);
  v18 = v17[1];
  v19 = v17[2];
  v20 = v17[3];

  v21 = *(a1 + *a5);
}

uint64_t sub_1ADE09FC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_beginAccess();
  *a2 = *(a1 + 16);
  return result;
}

uint64_t CROrderedSet.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for CROrderedSet();
  v27[0] = *(v10 - 8);
  v11 = *(v27[0] + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - v12;
  v15 = *(v14 + 48);
  v16 = type metadata accessor for CROrderedSet.DeduplicatedInfo();
  v17 = *(*(v16 - 8) + 56);
  v29 = a5;
  v28 = v15;
  v17(a5 + v15, 1, 1, v16);
  if (!*(a1 + 64))
  {
    sub_1ADE42E40();
    swift_allocError();
    *v21 = 0xD000000000000014;
    *(v21 + 8) = 0x80000001AE25FB50;
    *(v21 + 16) = 0;
    swift_willThrow();
    goto LABEL_5;
  }

  type metadata accessor for CRDecoder.CRDTContainer();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = 0;
  *(inited + 32) = 1;
  v19 = v27[1];
  sub_1ADE0C65C(a2, a3, a4, v13);
  if (v19)
  {
    swift_setDeallocating();
    v20 = *(inited + 16);
LABEL_5:

    v22 = sub_1AE23D7CC();
    return (*(*(v22 - 8) + 8))(v29 + v28, v22);
  }

  swift_setDeallocating();
  v24 = *(inited + 16);

  v25 = sub_1AE23D7CC();
  v26 = v29;
  (*(*(v25 - 8) + 8))(v29 + v28, v25);
  return (*(v27[0] + 32))(v26, v13, v10);
}

uint64_t sub_1ADE0A2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for CROrderedSet();
  v13 = *(v12 + 48);
  v14 = type metadata accessor for CROrderedSet.DeduplicatedInfo();
  v15 = *(*(v14 - 8) + 56);
  v91 = v14;
  v15(&a6[v13], 1, 1);
  swift_beginAccess();
  if (*(a1 + 208))
  {
    sub_1ADE42E40();
    swift_allocError();
    *v16 = 0xD000000000000021;
    *(v16 + 8) = 0x80000001AE263E70;
    *(v16 + 16) = 0;
    swift_willThrow();

LABEL_15:
    v51 = sub_1AE23D7CC();
    return (*(*(v51 - 8) + 8))(&a6[v13], v51);
  }

  v54 = v12;
  v55 = a2;
  v56 = v13;
  v57 = type metadata accessor for CROrderedSetElement();
  v75 = sub_1AE23C9DC();
  swift_beginAccess();
  v17 = *(a1 + 32);
  v76 = *(a1 + 16);
  v77[0] = v17;
  v18 = *(a1 + 64);
  v77[1] = *(a1 + 48);
  v77[2] = v18;
  v78 = *(a1 + 80);
  v19 = *(&v76 + 1);
  v58 = a6;
  if (*(&v76 + 1))
  {
    v20 = v76;
    v21 = *&v77[0];
    v22 = *(v77 + 8);
    v23 = *(&v77[1] + 8);
    v24 = v78;
    v25 = BYTE8(v77[2]);
  }

  else
  {
    v20 = 0;
    v25 = 1;
    v19 = MEMORY[0x1E69E7CC0];
    v21 = MEMORY[0x1E69E7CC0];
    v24 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
  }

  v67[0] = v20;
  v67[1] = v19;
  v67[2] = v21;
  v68 = v22;
  v69 = v23;
  v70 = v25 & 1;
  v71 = v24;

  sub_1ADDCEE40(&v76, &v62, &qword_1EB5BCC30, &qword_1AE2580D0);
  sub_1ADFAECE8(v67);
  v26 = *(v19 + 16);

  sub_1AE23D11C();
  v27 = sub_1AE23D02C();
  v28 = *(a1 + 32);
  v72 = *(a1 + 16);
  v73[0] = v28;
  v29 = *(a1 + 64);
  v73[1] = *(a1 + 48);
  v73[2] = v29;
  v74 = *(a1 + 80);
  v30 = *(&v72 + 1);
  v31 = MEMORY[0x1E69E7CC0];
  if (*(&v72 + 1))
  {
    v32 = v72;
    v31 = *&v73[0];
    v33 = *(v73 + 8);
    v34 = *(&v73[1] + 8);
    v35 = v74;
    v36 = BYTE8(v73[2]);
  }

  else
  {
    v32 = 0;
    v36 = 1;
    v30 = MEMORY[0x1E69E7CC0];
    v34 = 0uLL;
    v35 = 0uLL;
    v33 = 0uLL;
  }

  v65 = v36 & 1;
  v86[0] = v32;
  v86[1] = v30;
  v86[2] = v31;
  v87 = v33;
  v88 = v34;
  v89 = v36 & 1;
  v90 = v35;
  MEMORY[0x1EEE9AC00](v27);
  v53[2] = a3;
  v53[3] = a4;
  v37 = v55;
  v53[4] = a5;
  v53[5] = v55;
  v53[6] = a1;
  v53[7] = &v75;
  sub_1ADDCEE40(&v72, &v62, &qword_1EB5BCC30, &qword_1AE2580D0);

  v38 = v59;
  sub_1ADDF0758(v86, sub_1ADE0C85C, v53, v37, a3, a4, a5, &v66);
  if (v38)
  {

    a6 = v58;
    v13 = v56;
    goto LABEL_15;
  }

  *(v58 + 1) = v66;
  swift_beginAccess();
  v39 = *(a1 + 176);
  v64[2] = *(a1 + 160);
  v64[3] = v39;
  *&v64[4] = *(a1 + 192);
  v40 = *(a1 + 112);
  v62 = *(a1 + 96);
  v63 = v40;
  v41 = *(a1 + 144);
  v64[0] = *(a1 + 128);
  v64[1] = v41;
  v42 = *(&v62 + 1);
  if (*(&v62 + 1))
  {
    v43 = v63;
    v44 = v62;
    v45 = *&v64[0];
    v46 = *(v64 + 8);
    v47 = *(&v64[1] + 8);
    v48 = *(&v64[2] + 8);
    v49 = *(&v64[3] + 8);
  }

  else
  {
    v44 = 0;
    v45 = MEMORY[0x1E69E7CC0];
    v43 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
    v46 = 0uLL;
    v42 = 0xE000000000000000;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
  }

  v79[0] = v44;
  v79[1] = v42;
  v80 = v43;
  v81 = v45;
  v82 = v46;
  v83 = v47;
  v84 = v48;
  v85 = v49;
  v50 = v75;

  sub_1ADDCEE40(&v62, &v60, &qword_1EB5BCC28, &unk_1AE251820);

  sub_1ADE0C954(v79, v50, v37, &v61);
  *v58 = v61;
  sub_1ADDF210C(0, v54);
}

id sub_1ADE0A808(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [v1 initWithDecoder:a1 error:v7];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1AE23BC9C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

id sub_1ADE0A8BC@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1ADE0CCF8(v1[4], a1);
}

uint64_t sub_1ADE0A8DC()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = qword_1EB5BD4A8;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = *((v2 & v1) + 0x50);

  v6 = sub_1AE23D0AC();

  return v6;
}

id sub_1ADE0A96C()
{
  v1 = [objc_msgSend(*(v0 + qword_1ED96F258) attributedString)];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1ADE0A9DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Replica();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1ADE0AA4C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = sub_1AE23BFEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = *(v8 + 64) + v14;
  v16 = ((((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = v16 + (v15 & ~v14);
  if (v17)
  {
    v18 = 2;
  }

  else
  {
    v18 = a3 - v13 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v13 < a3)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (a2 > v13)
  {
    if (v17)
    {
      v22 = 1;
    }

    else
    {
      v22 = a2 - v13;
    }

    if (v17)
    {
      v23 = ~v13 + a2;
      bzero(a1, v17);
      *a1 = v23;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        *(a1 + v17) = v22;
      }

      else
      {
        *(a1 + v17) = v22;
      }
    }

    else if (v21)
    {
      *(a1 + v17) = v22;
    }

    return;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v17) = 0;
    goto LABEL_35;
  }

  if (!v21)
  {
LABEL_35:
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  *(a1 + v17) = 0;
  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v9 >= v12)
  {
    v27 = *(v29 + 56);

    v27(a1, a2, v9, v7);
  }

  else
  {
    v24 = ((a1 + v15) & ~v14);
    if (v12 >= a2)
    {
      v28 = *(v11 + 56);

      v28(v24, a2);
    }

    else if (v16)
    {
      v25 = ~v12 + a2;
      v26 = ((a1 + v15) & ~v14);
      bzero(v24, v16);
      *v26 = v25;
    }
  }
}

uint64_t sub_1ADE0ACE4(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1AE23BFEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = *(v6 + 64) + v12;
  if (v11 < a2)
  {
    v14 = ((((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v13 & ~v12) + 8;
    v15 = v14 & 0xFFFFFFF8;
    if ((v14 & 0xFFFFFFF8) != 0)
    {
      v16 = 2;
    }

    else
    {
      v16 = a2 - v11 + 1;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    v18 = v16 >= 2 ? v17 : 0;
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v19 = *(a1 + v14);
        if (v19)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v19 = *(a1 + v14);
        if (v19)
        {
          goto LABEL_20;
        }
      }
    }

    else if (v18)
    {
      v19 = *(a1 + v14);
      if (v19)
      {
LABEL_20:
        v20 = v19 - 1;
        if (v15)
        {
          v20 = 0;
          v21 = *a1;
        }

        else
        {
          v21 = 0;
        }

        return v11 + (v21 | v20) + 1;
      }
    }

    if (!v11)
    {
      return 0;
    }
  }

  if (v7 >= v10)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v22 = *(v9 + 48);

    return v22((a1 + v13) & ~v12);
  }
}

void sub_1ADE0AF18()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 64);
  if (!v2)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v3 = *(v2 + 16);
  if ((~v3 & 0xF000000000000007) != 0 && (v3 & 0xF000000000000000) == 0x3000000000000000)
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v6 = *(v5 + 16);
    if (v6)
    {
      v20 = MEMORY[0x1E69E7CC0];

      v19 = v1;
      sub_1ADE0B11C(0, v6, 0);
      v7 = 0;
      while (v7 < *(v5 + 16))
      {
        v8 = *(v5 + 8 * v7 + 32);
        v9 = *(v1 + 32);
        v10 = *(v9 + 16);
        if (v10)
        {
          v11 = v8 >= v10;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {

          sub_1ADE42E40();
          swift_allocError();
          *v18 = 0xD000000000000015;
          *(v18 + 8) = 0x80000001AE25FCF0;
          *(v18 + 16) = 0;
          swift_willThrow();

          return;
        }

        v12 = v9 + 16 * v8;
        v14 = *(v12 + 32);
        v13 = *(v12 + 40);
        v16 = *(v20 + 16);
        v15 = *(v20 + 24);

        if (v16 >= v15 >> 1)
        {
          sub_1ADE0B11C((v15 > 1), v16 + 1, 1);
          v1 = v19;
        }

        ++v7;
        *(v20 + 16) = v16 + 1;
        v17 = v20 + 16 * v16;
        *(v17 + 32) = v14;
        *(v17 + 40) = v13;
        if (v6 == v7)
        {

          return;
        }
      }

      __break(1u);
      goto LABEL_21;
    }
  }
}

char *sub_1ADE0B11C(char *a1, int64_t a2, char a3)
{
  result = sub_1ADDF5128(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1ADE0B140()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall CRAttributedString.insert(contentsOf:at:)(NSAttributedString contentsOf, Swift::Int at)
{
  sub_1ADE0B3D0();
  v5 = *v2;
  if (!*v2)
  {
    goto LABEL_15;
  }

  v6 = *(v5 + 16);
  v7 = [(objc_class *)contentsOf.super.isa length];
  v8 = swift_allocObject();
  v8[2].super.isa = contentsOf.super.isa;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1ADE0F07C;
  *(v9 + 24) = v8;
  v18[4] = sub_1AE16B1E4;
  v18[5] = v9;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1ADE0EEE0;
  v18[3] = &block_descriptor_13_0;
  v10 = _Block_copy(v18);
  v11 = contentsOf.super.isa;

  [v6 insertAtIndex:at length:v7 getStorage:v10];

  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v12 = [(objc_class *)v11 length];
    if (*(v5 + 40))
    {
      goto LABEL_10;
    }

    v13 = *(v5 + 24);
    v14 = *(v5 + 32);
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (!v15)
    {
      if (v16 != at)
      {
        goto LABEL_10;
      }

      v17 = v12 + at;
      if (!__OFADD__(at, v12))
      {
        v12 = (v17 - v13);
        if (!__OFSUB__(v17, v13))
        {
          goto LABEL_11;
        }

        __break(1u);
LABEL_10:
        *(v5 + 24) = at;
LABEL_11:
        *(v5 + 32) = v12;
        *(v5 + 40) = 0;

        return;
      }

      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1ADE0B380()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADE0B3D0()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_native();
  v3 = *v0;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 16);

      return [v4 useRenameIfAvailable];
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (!v3)
  {
    goto LABEL_11;
  }

  type metadata accessor for CRAttributedStringRef();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  v6 = qword_1EB5B9C00;

  if (v6 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB5D7CC0);
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  os_unfair_lock_unlock(&dword_1EB5D7CC0);
  [*(v3 + 16) copy];
  sub_1AE23D83C();

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
  swift_dynamicCast();
  *(v5 + 16) = v8;
  v7 = *v0;

  *v0 = v5;
  return result;
}

char *sub_1ADE0B544(char *a1, int64_t a2, char a3)
{
  result = sub_1ADDEC34C(a1, a2, a3, *v3, &qword_1EB5BA150, &unk_1AE242310);
  *v3 = result;
  return result;
}

uint64_t sub_1ADE0B5E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  CRExtensible.init(rawValue:)(a1, a2[2], a2[3], a2[4], a2[5], a3);
  v5 = *(*(a2 - 1) + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t sub_1ADE0B65C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  v8 = *(v2 + 224);
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v8, v3);
  v9 = *(v2 + 216);
  sub_1AE23CBCC();
  return (*(v4 + 8))(v7, v3);
}

void *std::vector<Coherence_namespace::TopoSubstring *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring *>>(result, a2);
    }

    std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

id sub_1ADE0B868()
{
  v2 = *(v0 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded + 40);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded + 48);
    v4 = *(v0 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder);
    sub_1ADE42C78(v2);

    result = sub_1ADDD6748(v2, v3, v4, &v14);
    if (!v1)
    {
      v6 = type metadata accessor for ObjCVersion();
      v7 = objc_allocWithZone(v6);
      v8 = &v7[OBJC_IVAR____TtC9Coherence11ObjCVersion_version];
      v9 = MEMORY[0x1E69E7CC8];
      *v8 = MEMORY[0x1E69E7CC8];
      *(v8 + 1) = v9;
      swift_beginAccess();
      v11 = *v8;
      v10 = *(v8 + 1);
      *v8 = v14;

      v13.receiver = v7;
      v13.super_class = v6;
      return objc_msgSendSuper2(&v13, sel_init);
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v12 = 0xD000000000000018;
    *(v12 + 8) = 0x80000001AE2616C0;
    *(v12 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

id sub_1ADE0B9B8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  v6 = a4();

  return v6;
}

size_t sub_1ADE0BA68(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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

size_t sub_1ADE0BC44(size_t a1, int64_t a2, char a3)
{
  result = sub_1ADE0BA68(a1, a2, a3, *v3, &qword_1EB5BA218, &qword_1AE241BF0, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

uint64_t sub_1ADE0BC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v38 = a4;
  v37 = type metadata accessor for Timestamp(0);
  v9 = *(*(v37 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v37);
  v36 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v28 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *v4;
    v20 = *(v16 + 72);
    v21 = *v4 + v20 * (a3 - 1);
    v34 = -v20;
    v35 = v19;
    v22 = a1 - a3;
    v28 = v20;
    v23 = v19 + v20 * a3;
LABEL_4:
    v32 = v21;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    v24 = v21;
    while (1)
    {
      sub_1ADDF8030(v23, v18, type metadata accessor for Timestamp);
      sub_1ADDF8030(v24, v14, type metadata accessor for Timestamp);
      v25 = v38(v18, v14);
      sub_1ADDE5300(v14, type metadata accessor for Timestamp);
      result = sub_1ADDE5300(v18, type metadata accessor for Timestamp);
      if (v5)
      {
        break;
      }

      if (v25)
      {
        if (!v35)
        {
          __break(1u);
          return result;
        }

        v26 = v36;
        sub_1ADDE5F9C(v23, v36, type metadata accessor for Timestamp);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1ADDE5F9C(v26, v24, type metadata accessor for Timestamp);
        v24 += v34;
        v23 += v34;
        if (!__CFADD__(v22++, 1))
        {
          continue;
        }
      }

      a3 = v33 + 1;
      v21 = v32 + v28;
      v22 = v31 - 1;
      v23 = v30 + v28;
      if (v33 + 1 != v29)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1ADE0BF00(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1ADDE4ECC(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_1AE23BFEC();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1ADE0C068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v69 = *MEMORY[0x1E69E9840];
  v8 = sub_1AE23BFEC();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v61 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v64 = &v51 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v51 - v16;
  v53 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v62 = *(v15 + 16);
    v63 = v15 + 16;
    v20 = *(v15 + 72);
    v21 = (v15 + 8);
    v59 = (v15 + 32);
    v60 = v19;
    v22 = v19 + v20 * (a3 - 1);
    v58 = -v20;
    v23 = a1 - a3;
    v52 = v20;
    v24 = v19 + v20 * a3;
    do
    {
      v56 = v22;
      v57 = a3;
      v54 = v24;
      v55 = v23;
      v25 = v23;
      v26 = v22;
      do
      {
        v27 = v17;
        v28 = v17;
        v29 = v62;
        v62(v27, v24, v8);
        v29(v64, v26, v8);
        v17 = v28;
        v67 = sub_1AE23BFCC();
        LOWORD(v68) = v30;
        BYTE2(v68) = v31;
        BYTE3(v68) = v32;
        BYTE4(v68) = v33;
        BYTE5(v68) = v34;
        BYTE6(v68) = v35;
        HIBYTE(v68) = v36;
        v65 = sub_1AE23BFCC();
        LOWORD(v66) = v37;
        BYTE2(v66) = v38;
        BYTE3(v66) = v39;
        BYTE4(v66) = v40;
        BYTE5(v66) = v41;
        BYTE6(v66) = v42;
        HIBYTE(v66) = v43;
        v44 = bswap64(v67);
        v45 = bswap64(v65);
        if (v44 == v45 && (v44 = bswap64(v68), v45 = bswap64(v66), v44 == v45))
        {
          v46 = 0;
        }

        else if (v44 < v45)
        {
          v46 = -1;
        }

        else
        {
          v46 = 1;
        }

        v47 = *v21;
        (*v21)(v64, v8);
        result = (v47)(v28, v8);
        if ((v46 & 0x80000000) == 0)
        {
          break;
        }

        if (!v60)
        {
          __break(1u);
        }

        v48 = *v59;
        v49 = v61;
        (*v59)(v61, v24, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v48)(v26, v49, v8);
        v26 += v58;
        v24 += v58;
      }

      while (!__CFADD__(v25++, 1));
      a3 = v57 + 1;
      v22 = v56 + v52;
      v23 = v55 - 1;
      v24 = v54 + v52;
    }

    while (v57 + 1 != v53);
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1ADE0C418@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(v2 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence + 8);
  if (*(v4 + 16) <= result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(v4 + 16 * result + 32);
  v6 = *(*(v2 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder) + 24);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v5 >= v7;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v9 = 0xD000000000000013;
    *(v9 + 8) = 0x80000001AE25FD70;
    *(v9 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    v10 = sub_1AE23BFEC();
    return (*(*(v10 - 8) + 16))(a2, v6 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * v5, v10);
  }
}

void std::vector<Coherence_namespace::TopoID>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoID>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t sub_1ADE0C65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v9 = *(sub_1ADDE78C8() + 16);
  if ((~v9 & 0xF000000000000007) != 0 && (v9 & 0xF000000000000000) == 0x8000000000000000)
  {
    v11 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 16);
  }

  else
  {
    if (qword_1ED967F98 != -1)
    {
      swift_once();
    }

    v11 = &off_1ED967FA0;
  }

  v12 = *v11;

  v13 = *(v4 + 16);

  return sub_1ADE0A2B0(v12, v13, a1, a2, a3, a4);
}

void *sub_1ADE0C750(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = MEMORY[0x1E69E7CC8];
  v4[3] = MEMORY[0x1E69E7CC8];
  v4[4] = v10;
  v11 = v9[10];
  v12 = v9[11];
  v13 = v9[13];
  v4[5] = sub_1AE23C9CC();
  v4[6] = 0;
  v4[2] = a1;
  swift_beginAccess();
  v14 = v4[3];
  v15 = v4[4];
  *(v4 + 3) = *a2;

  swift_beginAccess();
  v16 = v4[5];
  v4[5] = a3;

  v4[6] = a4;
  return v4;
}

uint64_t sub_1ADE0C88C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_1ADE0C8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for CROrderedSetElement() + 44);

  return sub_1AE017B14(a2, v6);
}

uint64_t sub_1ADE0C954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + 40))
  {
    v9 = type metadata accessor for CRSequenceRef();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    v12 = swift_allocObject();
    result = sub_1ADDF4E90(a1, a2, a3);
    if (!v4)
    {
      *a4 = v12;
    }
  }

  else
  {

    result = sub_1AE030800(a1);
    *a4 = 0;
  }

  return result;
}

id sub_1ADE0CA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v10 = swift_allocObject();
    v10[2] = a4;
    v10[3] = a5;
    v10[4] = a3;
    v11 = objc_allocWithZone(type metadata accessor for CRSequenceDecoder());
    v12 = &v11[OBJC_IVAR____TtC9Coherence17CRSequenceDecoder_getStorage];
    *v12 = sub_1ADE0A8BC;
    *(v12 + 1) = v10;
    v13 = &v11[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence];
    v37[0] = 1;
    v38 = 1;
    *v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    *(v13 + 1) = MEMORY[0x1E69E7CC0];
    *(v13 + 2) = v14;
    *(v13 + 3) = v14;
    *(v13 + 4) = 0;
    v13[40] = 1;
    *(v13 + 6) = 0;
    *(v13 + 7) = 0;
    v13[64] = 1;
    v15 = &v11[OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded];
    v16 = *a1;
    v17 = *(a1 + 32);
    *(v15 + 1) = *(a1 + 16);
    *(v15 + 2) = v17;
    *v15 = v16;
    v18 = *(a1 + 48);
    v19 = *(a1 + 64);
    v20 = *(a1 + 80);
    *(v15 + 12) = *(a1 + 96);
    *(v15 + 4) = v19;
    *(v15 + 5) = v20;
    *(v15 + 3) = v18;
    *&v11[OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder] = a2;

    sub_1ADE51B64(a1, v37);
    v21 = type metadata accessor for CRStringDecoder();
    v35 = v11;
    v22 = &v35;
  }

  else
  {
    v23 = swift_allocObject();
    v23[2] = a4;
    v23[3] = a5;
    v23[4] = a2;
    v24 = objc_allocWithZone(type metadata accessor for CRSequenceDecoder());
    v25 = &v24[OBJC_IVAR____TtC9Coherence17CRSequenceDecoder_getStorage];
    *v25 = sub_1AE16AB14;
    *(v25 + 1) = v23;
    v26 = &v24[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence];
    v37[0] = 1;
    v38 = 1;
    *v26 = 0;
    v27 = MEMORY[0x1E69E7CC0];
    *(v26 + 1) = MEMORY[0x1E69E7CC0];
    *(v26 + 2) = v27;
    *(v26 + 3) = v27;
    *(v26 + 4) = 0;
    v26[40] = 1;
    *(v26 + 6) = 0;
    *(v26 + 7) = 0;
    v26[64] = 1;
    v28 = &v24[OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded];
    v29 = *a1;
    v30 = *(a1 + 32);
    *(v28 + 1) = *(a1 + 16);
    *(v28 + 2) = v30;
    *v28 = v29;
    v31 = *(a1 + 48);
    v32 = *(a1 + 64);
    v33 = *(a1 + 80);
    *(v28 + 12) = *(a1 + 96);
    *(v28 + 4) = v32;
    *(v28 + 5) = v33;
    *(v28 + 3) = v31;
    *&v24[OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder] = a2;

    sub_1ADE51B64(a1, v37);
    v21 = type metadata accessor for CRStringDecoder();
    v36 = v24;
    v22 = &v36;
  }

  v22->super_class = v21;

  return [(objc_super *)v22 init];
}

uint64_t sub_1ADE0CC88()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ADE0CCC0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_1ADE0CCF8@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = type metadata accessor for CRSequenceStorage();

  v5 = objc_allocWithZone(v4);
  result = sub_1ADE0CD68(a1);
  a2[3] = v4;
  *a2 = result;
  return result;
}

id sub_1ADE0CD68(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  *(v1 + qword_1EB5BD4A8) = a1;
  v4 = *((v3 & v2) + 0x50);
  v5 = *((v3 & v2) + 0x58);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CRSequenceStorage();
  return objc_msgSendSuper2(&v7, sel_init);
}

id CRSequence.count.getter()
{
  if (*v0)
  {
    return sub_1ADE0A96C();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ADE0CE3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Replica();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

void *CRSet.init(defaultState:)@<X0>(void *a1@<X8>)
{
  result = CRSet.init()(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1ADE0CEE8()
{
  v1 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  v2 = sub_1AE23BFEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1ADDD7E20(v0 + OBJC_IVAR____TtC9Coherence12ReplicaState__replica);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE0CF94()
{
  v3 = v0[11];
  sub_1AE1D0FEC(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10]);
  v4 = v0[24];
  sub_1AE1D1058(v0[12], v0[13], v0[14], v0[15], v0[16], v0[17], v0[18], v0[19], v0[20], v0[21], v0[22], v0[23]);
  v1 = v0[25];

  return swift_deallocClassInstance();
}

void sub_1ADE0D120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void Coherence_namespace::traverseIterative(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    memset(v4, 0, sizeof(v4));
    v5 = 1065353216;
    Coherence_namespace::traverseIterative(a1, v4, v3);
    std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(v4);
  }
}

void sub_1ADE0D1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(&a9);

  _Unwind_Resume(a1);
}

void Coherence_namespace::traverseIterative(uint64_t a1, void *a2, void *a3)
{
  v19[0] = a1;
  v5 = a3;
  if (a1)
  {
    v18 = 0u;
    memset(v17, 0, sizeof(v17));
    std::deque<Coherence_namespace::TopoSubstring *>::push_back(v17, v19);
    v6 = *(&v18 + 1);
    if (*(&v18 + 1))
    {
      while (1)
      {
        v7 = v6 - 1;
        v8 = *(*(*(&v17[0] + 1) + (((v18 + v7) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v18 + v7) & 0x1FF));
        *(&v18 + 1) = v7;
        std::deque<Coherence_namespace::TopoSubstring *>::__maybe_remove_back_spare[abi:ne200100](v17, 1);
        v5[2](v5, v8);
        while (1)
        {
          v10 = *(v8 + 56);
          v9 = *(v8 + 64);
          if (v9 - v10 != 8)
          {
            break;
          }

          v11 = *v10;
          if (*(*v10 + 80) != 1)
          {
            break;
          }

          v5[2](v5, *v10);
          v8 = v11;
        }

        if (v9 != v10)
        {
          break;
        }

LABEL_18:
        v6 = *(&v18 + 1);
        if (!*(&v18 + 1))
        {
          goto LABEL_19;
        }
      }

      v12 = v9 - 8;
      while (1)
      {
        v13 = std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::find<Coherence_namespace::TopoSubstring *>(a2, v12);
        if (v13)
        {
          v14 = *(v13 + 6) - 1;
          if (*(v13 + 6) == 1)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v15 = *(*v12 + 80);
          if (v15 < 2)
          {
LABEL_15:
            std::deque<Coherence_namespace::TopoSubstring *>::push_back(v17, v12);
            goto LABEL_16;
          }

          v19[2] = v12;
          v13 = std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned int>,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring *,std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::hash<Coherence_namespace::TopoSubstring *>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring *,unsigned int>>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,std::piecewise_construct_t const&,std::tuple<Coherence_namespace::TopoSubstring * const&>,std::tuple<>>(a2, v12);
          v14 = v15 - 1;
        }

        *(v13 + 6) = v14;
LABEL_16:
        v16 = v12 == *(v8 + 56);
        v12 -= 8;
        if (v16)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_19:
    std::deque<Coherence_namespace::TopoSubstring *>::~deque[abi:ne200100](v17);
  }
}

void sub_1ADE0D350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::deque<Coherence_namespace::TopoSubstring *>::~deque[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

void *std::deque<Coherence_namespace::TopoSubstring *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<Coherence_namespace::TopoSubstring **>::emplace_back<Coherence_namespace::TopoSubstring **&>(a1, &v10);
}

void sub_1ADE0D4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::deque<Coherence_namespace::TopoSubstring *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<Coherence_namespace::TopoSubstring *>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::__split_buffer<Coherence_namespace::TopoSubstring **>::emplace_back<Coherence_namespace::TopoSubstring **>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring **>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t std::deque<Coherence_namespace::TopoSubstring *>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t std::deque<Coherence_namespace::TopoSubstring *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<Coherence_namespace::TopoSubstring **>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<Coherence_namespace::TopoSubstring **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1ADE0D908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Replica();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid;
  swift_beginAccess();
  v12 = sub_1AE23BFEC();
  result = (*(*(v12 - 8) + 16))(v10, a3 + v11, v12);
  *&v10[*(v7 + 28)] = *(a3 + OBJC_IVAR____TtC9Coherence11ObjCReplica_index);
  if (__OFADD__(a1, a2))
  {
    __break(1u);
  }

  else if (a1 + a2 >= a1)
  {
    swift_beginAccess();
    sub_1ADE0DA80(v10, a1);
    sub_1ADE0DCEC(v10, type metadata accessor for Replica);
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADE0DA80(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v28 = a2;
  v6 = type metadata accessor for Replica();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AE23C12C();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v3;
  v29 = v16;
  v18 = sub_1ADDD8A6C(a1);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v17;
  if (v16[3] >= v21)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_1ADDFB81C();
    v16 = v29;
    goto LABEL_6;
  }

  sub_1ADDDDED0(v21, isUniquelyReferenced_nonNull_native);
  v16 = v29;
  v22 = sub_1ADDD8A6C(a1);
  if ((v2 & 1) != (v23 & 1))
  {
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

  v18 = v22;
LABEL_6:
  *v4 = v16;
  if ((v2 & 1) == 0)
  {
    sub_1AE23C11C();
    sub_1ADDDE3A0(a1, v9, type metadata accessor for Replica);
    sub_1ADDDE678(v18, v9, v13, v16);
  }

  v24 = v16[7] + *(v27 + 72) * v18;
  return sub_1AE23C07C();
}

uint64_t sub_1ADE0DC8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1ADE0DCEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Coherence_namespace::TopoReplica::TopoReplica(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 16) = [v3 index];
  v4 = [v3 uuid];
  [v4 getUUIDBytes:a1];

  return a1;
}

uint64_t Coherence_namespace::TopoSubstring::addAddedBy(Coherence_namespace::TopoSubstring *this, const Coherence_namespace::TopoID *a2)
{
  v5 = *(this + 5);
  v4 = *(this + 6);
  if (v5 >= v4)
  {
    v8 = *(this + 4);
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v8) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v8) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoID>>(this + 32, v12);
    }

    v13 = 24 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    v7 = 24 * v9 + 24;
    v15 = *(this + 4);
    v16 = *(this + 5) - v15;
    v17 = 24 * v9 - v16;
    memcpy((v13 - v16), v15, v16);
    v18 = *(this + 4);
    *(this + 4) = v17;
    *(this + 5) = v7;
    *(this + 6) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  v19 = *(this + 4);
  v20 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v7 - v19) >> 3));
  *(this + 5) = v7;
  if (v7 == v19)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  return std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *,false>(v19, v7, &v23, v21, 1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *,false>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = result;
  v127 = *MEMORY[0x1E69E9840];
LABEL_2:
  v8 = (a2 - 24);
  v77 = (a2 - 48);
  v9 = (a2 - 72);
  v10 = v7;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v7 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    if (v14 <= 2)
    {
      break;
    }

    switch(v14)
    {
      case 3uLL:
        v57 = Coherence_namespace::TopoID::operator<(v10 + 24, v10);
        result = Coherence_namespace::TopoID::operator<(a2 - 24, v10 + 24);
        if (v57)
        {
          if (result)
          {
            goto LABEL_78;
          }

          v124 = *(v10 + 16);
          v100 = *v10;
          *v10 = *(v10 + 24);
          *(v10 + 16) = *(v10 + 40);
          *(v10 + 24) = v100;
          *(v10 + 40) = v124;
          result = Coherence_namespace::TopoID::operator<(a2 - 24, v10 + 24);
          if (!result)
          {
            goto LABEL_95;
          }

          v58 = *(v10 + 40);
          v59 = *(v10 + 24);
          v60 = *(a2 - 8);
          *(v10 + 24) = *v8;
          *(v10 + 40) = v60;
          *v8 = v59;
LABEL_79:
          *(a2 - 8) = v58;
          goto LABEL_95;
        }

        if (!result)
        {
          goto LABEL_95;
        }

        v72 = *(v10 + 40);
        v73 = *(v10 + 24);
        v74 = *(a2 - 8);
        *(v10 + 24) = *v8;
        *(v10 + 40) = v74;
        *v8 = v73;
        *(a2 - 8) = v72;
LABEL_93:
        result = Coherence_namespace::TopoID::operator<(v10 + 24, v10);
        if (result)
        {
          v126 = *(v10 + 16);
          v102 = *v10;
          *v10 = *(v10 + 24);
          *(v10 + 16) = *(v10 + 40);
          *(v10 + 24) = v102;
          *(v10 + 40) = v126;
        }

        goto LABEL_95;
      case 4uLL:
        v69 = *MEMORY[0x1E69E9840];

        return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *,0>(v10, v10 + 24, v10 + 48, a2 - 24);
      case 5uLL:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *,0>(v10, v10 + 24, v10 + 48, v10 + 72);
        result = Coherence_namespace::TopoID::operator<(a2 - 24, v10 + 72);
        if (!result)
        {
          goto LABEL_95;
        }

        v61 = *(v10 + 88);
        v62 = *(v10 + 72);
        v63 = *(a2 - 8);
        *(v10 + 72) = *v8;
        *(v10 + 88) = v63;
        *v8 = v62;
        *(a2 - 8) = v61;
        result = Coherence_namespace::TopoID::operator<(v10 + 72, v10 + 48);
        if (!result)
        {
          goto LABEL_95;
        }

        v64 = *(v10 + 64);
        v65 = *(v10 + 48);
        *(v10 + 48) = *(v10 + 72);
        *(v10 + 64) = *(v10 + 88);
        *(v10 + 72) = v65;
        *(v10 + 88) = v64;
        result = Coherence_namespace::TopoID::operator<(v10 + 48, v10 + 24);
        if (!result)
        {
          goto LABEL_95;
        }

        v66 = *(v10 + 40);
        v67 = *(v10 + 24);
        *(v10 + 24) = *(v10 + 48);
        *(v10 + 40) = *(v10 + 64);
        *(v10 + 48) = v67;
        *(v10 + 64) = v66;
        goto LABEL_93;
    }

LABEL_11:
    if (v13 <= 575)
    {
      if (a5)
      {
        v70 = *MEMORY[0x1E69E9840];

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(v10, a2);
      }

      else
      {
        v76 = *MEMORY[0x1E69E9840];

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(v10, a2);
      }
    }

    if (v12 == 1)
    {
      if (v10 == a2)
      {
        goto LABEL_95;
      }

      v71 = *MEMORY[0x1E69E9840];

      return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *,Coherence_namespace::TopoID *>(v10, a2, a2, a3);
    }

    v15 = v14 >> 1;
    v16 = v10 + 24 * (v14 >> 1);
    if (v13 >= 0xC01)
    {
      v17 = Coherence_namespace::TopoID::operator<(v10 + 24 * v15, v10);
      v18 = Coherence_namespace::TopoID::operator<(a2 - 24, v7 + 24 * v15);
      if (v17)
      {
        if (v18)
        {
          v103 = *(v7 + 16);
          v79 = *v7;
          v19 = *v8;
          *(v7 + 16) = *(a2 - 8);
          *v7 = v19;
          goto LABEL_28;
        }

        v109 = *(v7 + 16);
        v85 = *v7;
        v27 = *v16;
        *(v7 + 16) = *(v16 + 16);
        *v7 = v27;
        *(v16 + 16) = v109;
        *v16 = v85;
        if (Coherence_namespace::TopoID::operator<(a2 - 24, v7 + 24 * v15))
        {
          v103 = *(v16 + 16);
          v79 = *v16;
          v28 = *v8;
          *(v16 + 16) = *(a2 - 8);
          *v16 = v28;
LABEL_28:
          *v8 = v79;
          *(a2 - 8) = v103;
        }
      }

      else if (v18)
      {
        v105 = *(v16 + 16);
        v81 = *v16;
        v23 = *v8;
        *(v16 + 16) = *(a2 - 8);
        *v16 = v23;
        *v8 = v81;
        *(a2 - 8) = v105;
        if (Coherence_namespace::TopoID::operator<(v7 + 24 * v15, v7))
        {
          v106 = *(v7 + 16);
          v82 = *v7;
          v24 = *v16;
          *(v7 + 16) = *(v16 + 16);
          *v7 = v24;
          *(v16 + 16) = v106;
          *v16 = v82;
        }
      }

      v29 = v7 + 24 * v15 - 24;
      v30 = Coherence_namespace::TopoID::operator<(v29, v7 + 24);
      v31 = Coherence_namespace::TopoID::operator<(v77, v29);
      if (v30)
      {
        if (v31)
        {
          v32 = *(v7 + 40);
          v33 = *(v7 + 24);
          v34 = *(a2 - 32);
          *(v7 + 24) = *v77;
          *(v7 + 40) = v34;
          *v77 = v33;
          *(a2 - 32) = v32;
        }

        else
        {
          v89 = *(v7 + 24);
          v113 = *(v7 + 40);
          v39 = *(v7 + 24 * v15 - 8);
          *(v7 + 24) = *v29;
          *(v7 + 40) = v39;
          *(v7 + 24 * v15 - 8) = v113;
          *v29 = v89;
          if (Coherence_namespace::TopoID::operator<(v77, v29))
          {
            v114 = *(v7 + 24 * v15 - 8);
            v90 = *v29;
            v40 = *v77;
            *(v7 + 24 * v15 - 8) = *(a2 - 32);
            *v29 = v40;
            *v77 = v90;
            *(a2 - 32) = v114;
          }
        }
      }

      else if (v31)
      {
        v110 = *(v7 + 24 * v15 - 8);
        v86 = *v29;
        v35 = *v77;
        *(v7 + 24 * v15 - 8) = *(a2 - 32);
        *v29 = v35;
        *v77 = v86;
        *(a2 - 32) = v110;
        if (Coherence_namespace::TopoID::operator<(v29, v7 + 24))
        {
          v87 = *(v7 + 24);
          v111 = *(v7 + 40);
          v36 = *(v7 + 24 * v15 - 8);
          *(v7 + 24) = *v29;
          *(v7 + 40) = v36;
          *(v7 + 24 * v15 - 8) = v111;
          *v29 = v87;
        }
      }

      v41 = v7 + 24 * v15;
      v42 = Coherence_namespace::TopoID::operator<(v41 + 24, v7 + 48);
      v43 = Coherence_namespace::TopoID::operator<(a2 - 72, v41 + 24);
      if (v42)
      {
        if (v43)
        {
          v44 = *(v7 + 64);
          v45 = *(v7 + 48);
          v46 = *(a2 - 56);
          *(v7 + 48) = *v9;
          *(v7 + 64) = v46;
          *v9 = v45;
          goto LABEL_48;
        }

        v93 = *(v7 + 48);
        v117 = *(v7 + 64);
        v49 = *(v41 + 40);
        *(v7 + 48) = *(v41 + 24);
        *(v7 + 64) = v49;
        *(v41 + 40) = v117;
        *(v41 + 24) = v93;
        if (Coherence_namespace::TopoID::operator<(a2 - 72, v41 + 24))
        {
          v118 = *(v41 + 40);
          v94 = *(v41 + 24);
          v50 = *v9;
          *(v41 + 40) = *(a2 - 56);
          *(v41 + 24) = v50;
          *v9 = v94;
          v44 = v118;
LABEL_48:
          *(a2 - 56) = v44;
        }
      }

      else if (v43)
      {
        v115 = *(v41 + 40);
        v91 = *(v41 + 24);
        v47 = *v9;
        *(v41 + 40) = *(a2 - 56);
        *(v41 + 24) = v47;
        *v9 = v91;
        *(a2 - 56) = v115;
        if (Coherence_namespace::TopoID::operator<(v41 + 24, v7 + 48))
        {
          v92 = *(v7 + 48);
          v116 = *(v7 + 64);
          v48 = *(v41 + 40);
          *(v7 + 48) = *(v41 + 24);
          *(v7 + 64) = v48;
          *(v41 + 40) = v116;
          *(v41 + 24) = v92;
        }
      }

      v51 = Coherence_namespace::TopoID::operator<(v16, v29);
      v52 = Coherence_namespace::TopoID::operator<(v41 + 24, v16);
      if (v51)
      {
        if (v52)
        {
          v119 = *(v29 + 16);
          v95 = *v29;
          *v29 = *(v41 + 24);
          *(v29 + 16) = *(v41 + 40);
          goto LABEL_57;
        }

        v122 = *(v29 + 16);
        v98 = *v29;
        *v29 = *v16;
        *(v29 + 16) = *(v16 + 16);
        *(v16 + 16) = v122;
        *v16 = v98;
        if (Coherence_namespace::TopoID::operator<(v41 + 24, v16))
        {
          v119 = *(v16 + 16);
          v95 = *v16;
          *v16 = *(v41 + 24);
          *(v16 + 16) = *(v41 + 40);
LABEL_57:
          *(v41 + 40) = v119;
          *(v41 + 24) = v95;
        }
      }

      else if (v52)
      {
        v120 = *(v16 + 16);
        v96 = *v16;
        *v16 = *(v41 + 24);
        *(v16 + 16) = *(v41 + 40);
        *(v41 + 40) = v120;
        *(v41 + 24) = v96;
        if (Coherence_namespace::TopoID::operator<(v16, v29))
        {
          v121 = *(v29 + 16);
          v97 = *v29;
          *v29 = *v16;
          *(v29 + 16) = *(v16 + 16);
          *(v16 + 16) = v121;
          *v16 = v97;
        }
      }

      v123 = *(v7 + 16);
      v99 = *v7;
      v53 = *v16;
      *(v7 + 16) = *(v16 + 16);
      *v7 = v53;
      *(v16 + 16) = v123;
      *v16 = v99;
      goto LABEL_59;
    }

    v20 = Coherence_namespace::TopoID::operator<(v10, v10 + 24 * v15);
    v21 = Coherence_namespace::TopoID::operator<(a2 - 24, v7);
    if (v20)
    {
      if (v21)
      {
        v104 = *(v16 + 16);
        v80 = *v16;
        v22 = *v8;
        *(v16 + 16) = *(a2 - 8);
        *v16 = v22;
LABEL_37:
        *v8 = v80;
        *(a2 - 8) = v104;
        goto LABEL_59;
      }

      v112 = *(v16 + 16);
      v88 = *v16;
      v37 = *v7;
      *(v16 + 16) = *(v7 + 16);
      *v16 = v37;
      *(v7 + 16) = v112;
      *v7 = v88;
      if (Coherence_namespace::TopoID::operator<(a2 - 24, v7))
      {
        v104 = *(v7 + 16);
        v80 = *v7;
        v38 = *v8;
        *(v7 + 16) = *(a2 - 8);
        *v7 = v38;
        goto LABEL_37;
      }
    }

    else if (v21)
    {
      v107 = *(v7 + 16);
      v83 = *v7;
      v25 = *v8;
      *(v7 + 16) = *(a2 - 8);
      *v7 = v25;
      *v8 = v83;
      *(a2 - 8) = v107;
      if (Coherence_namespace::TopoID::operator<(v7, v7 + 24 * v15))
      {
        v108 = *(v16 + 16);
        v84 = *v16;
        v26 = *v7;
        *(v16 + 16) = *(v7 + 16);
        *v16 = v26;
        *(v7 + 16) = v108;
        *v7 = v84;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && (Coherence_namespace::TopoID::operator<(v7 - 24, v7) & 1) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,Coherence_namespace::TopoID *,std::__less<void,void> &>(v7, a2);
      v10 = result;
      goto LABEL_66;
    }

    v54 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,Coherence_namespace::TopoID *,std::__less<void,void> &>(v7, a2);
    if ((v55 & 1) == 0)
    {
      goto LABEL_64;
    }

    v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(v7, v54);
    v10 = v54 + 24;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *>(v54 + 24, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        goto LABEL_95;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,Coherence_namespace::TopoID *,false>(v7, v54, a3, -v12, a5 & 1);
      v10 = v54 + 24;
LABEL_66:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  if (v14 < 2)
  {
    goto LABEL_95;
  }

  if (v14 != 2)
  {
    goto LABEL_11;
  }

  result = Coherence_namespace::TopoID::operator<(a2 - 24, v10);
  if (result)
  {
LABEL_78:
    v125 = *(v10 + 16);
    v101 = *v10;
    v68 = *v8;
    *(v10 + 16) = *(a2 - 8);
    *v10 = v68;
    *v8 = v101;
    v58 = v125;
    goto LABEL_79;
  }

LABEL_95:
  v75 = *MEMORY[0x1E69E9840];
  return result;
}

_TtC9Coherence11ObjCReplica *Coherence_namespace::TopoReplica::objc(Coherence_namespace::TopoReplica *this)
{
  v2 = [_TtC9Coherence11ObjCReplica alloc];
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:this];
  v4 = [(ObjCReplica *)v2 initWithUuid:v3 index:*(this + 4)];

  return v4;
}

char *std::vector<Coherence_namespace::TopoSubstring *>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring *>>(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    std::__split_buffer<Coherence_namespace::TopoSubstring *>::emplace_back<Coherence_namespace::TopoSubstring * const&>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1ADE0EDA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__split_buffer<Coherence_namespace::TopoSubstring *>::emplace_back<Coherence_namespace::TopoSubstring * const&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

id sub_1ADE0EEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1AE23BFEC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  sub_1AE23BF9C();
  v13(v16, v11, a3, a4);
  (*(v8 + 8))(v11, v7);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v14 = sub_1AE23DFFC();
  __swift_destroy_boxed_opaque_existential_1(v16);

  return v14;
}

uint64_t sub_1ADE0F04C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_1ADE0F080@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  a1[3] = sub_1ADDEE524(0, &qword_1EB5BBB18, 0x1E696AAB0);
  *a1 = v4;

  return v4;
}

void sub_1ADE0F248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(v8 + 48);
  _Unwind_Resume(a1);
}

BOOL Coherence_namespace::TopoSubstring::isSequentialWith(Coherence_namespace::TopoSubstring *this, const TopoIDRange *a2)
{
  result = Coherence_namespace::TopoIDRange::isSequentialWith(this, a2);
  if (result)
  {
    v5 = *(this + 4);
    v6 = *(this + 5);
    v7 = *&a2[1].charID.replica.uuid[4];
    if (v6 - v5 == *&a2[1].charID.replica.uuid[12] - v7)
    {
      if (v6 == v5)
      {
        return 1;
      }

      v8 = 0;
      v9 = *(this + 6);
      if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3);
      }

      while (*(v5 + v8 + 16) == *(v7 + v8 + 16))
      {
        if (uuid_compare((v5 + v8), (v7 + v8)))
        {
          break;
        }

        v5 = *(this + 4);
        v7 = *&a2[1].charID.replica.uuid[4];
        if (*(v5 + v8 + 20) + v9 != *(v7 + v8 + 20))
        {
          break;
        }

        v8 += 24;
        if (!--v10)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t CRAttributedString.Attributes.init()@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1ADE0F4FC(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

unint64_t sub_1ADE0F4FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA098, &qword_1AE241878);
    v3 = sub_1AE23DCDC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1ADDCEE40(v4, &v11, &qword_1EB5BA0A0, &qword_1AE241880);
      v5 = v11;
      result = sub_1ADDF1D10(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1ADDEE390(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t CRAttributedString.Attributes.subscript.setter(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26[2] = a2;
  v6 = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v26 - v20;
  v22 = v9[2];
  v27 = a1;
  v22(v12, a1, v8, v19);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    v23 = v9[1];
    v23(v12, v8);
    (*(a4 + 40))(v6, a4);
    v24 = sub_1AE23CCDC();

    v28 = 0u;
    v29 = 0u;
    sub_1ADE15F98(&v28, v24);

    return (v23)(v27, v8);
  }

  else
  {
    (*(v13 + 32))(v21, v12, AssociatedTypeWitness);
    (*(a4 + 40))(v6, a4);
    v26[0] = sub_1AE23CCDC();

    (*(v13 + 16))(v17, v21, AssociatedTypeWitness);
    *(&v29 + 1) = &type metadata for AnyCRValue;
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    AnyCRValue.init<A>(_:)(v17, AssociatedTypeWitness, &v28);
    sub_1ADE15F98(&v28, v26[0]);

    (v9[1])(v27, v8);
    return (*(v13 + 8))(v21, AssociatedTypeWitness);
  }
}

uint64_t sub_1ADE0F9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE0B3D0();
  v8 = *v3;
  if (v8)
  {
    [*(v8 + 16) attributedString];
    objc_opt_self();
    v9 = swift_dynamicCastObjCClassUnconditional();
    v11 = a1;

    sub_1AE1D24B8(&v11, a2, a3);
    type metadata accessor for Key(0);
    sub_1ADDEE3A0();
    v10 = sub_1AE23C9FC();

    [v9 setAttributes:v10 range:{a2, a3}];

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CRAttributedString.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for CRAttributedStringRef();
  v2 = swift_allocObject();
  result = sub_1ADDEBF04();
  *a1 = v2;
  return result;
}

uint64_t CROrderedSet.append(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1ADE0FC48(v4, v4);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = *(v4 - 8);
  v9 = *(v8 + 72);
  v10 = *(v8 + 80);
  swift_allocObject();
  v11 = sub_1AE23CFFC();
  (*(v8 + 16))(v12, a1, v4);
  sub_1ADE0FCBC();
  v16 = v11;
  v13 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  sub_1ADDF7744(&v16, 0, 1, a2, v13, WitnessTable);
}

uint64_t sub_1ADE0FC48(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA38, &unk_1AE2456C0);
  }

  else
  {

    return sub_1AE23DDAC();
  }
}

uint64_t CRSet.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  sub_1ADE0FE78(a3);
  v16 = *v3;
  *v15 = sub_1ADE0FF20(&v15[*(TupleTypeMetadata2 + 48)], a2) & 1;
  (*(v9 + 32))(v12, v15, TupleTypeMetadata2);
  v17 = *v12;
  (*(*(v7 - 8) + 32))(a1, &v12[*(TupleTypeMetadata2 + 48)], v7);
  return v17;
}

uint64_t sub_1ADE0FE78(uint64_t a1)
{
  v2 = v1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  type metadata accessor for CRSetRef();
  result = sub_1AE23DFBC();
  if ((result & 1) == 0)
  {
    v4 = *v1;
    v5 = (*(**v2 + 288))();
    v6 = *v2;

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1ADE0FF20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v66 = a1;
  v67 = *v2;
  v68 = a2;
  v4 = *(v67 + 80);
  v65 = *(v4 - 8);
  v5 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v64 = &v61 - v6;
  v7 = type metadata accessor for Replica();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AE23C12C();
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v61 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Timestamp(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - v19;
  swift_beginAccess();
  v21 = v2[5];
  if (*(v21 + 16))
  {
    v22 = *(v67 + 104);

    sub_1ADDFFB6C(v68, v4, v22);
    if (v23)
    {
      v24 = *(v21 + 36);

      v25 = v3[5];

      sub_1AE23CB9C();

      return 0;
    }
  }

  sub_1ADE10580(v20);
  sub_1ADDF8030(v20, v17, type metadata accessor for Timestamp);
  v27 = sub_1ADE09898(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v29 = v27[2];
  v28 = v27[3];
  if (v29 >= v28 >> 1)
  {
    v27 = sub_1ADE09898(v28 > 1, v29 + 1, 1, v27);
  }

  v27[2] = v29 + 1;
  v30 = v27 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  sub_1AE017B14(v17, &v30[*(v14 + 72) * v29]);
  v31 = v27[2];
  v70 = v30;
  v71 = v31;
  sub_1ADDF3CCC(sub_1ADF7B924, 0);
  swift_beginAccess();
  if (!*&v20[*(v7 + 20)])
  {
    v43 = *&v20[*(v13 + 20)];
    v44 = v3[3];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v3[3];
    v35 = v69;
    v3[3] = 0x8000000000000000;
    v37 = sub_1ADDD8A6C(v20);
    v47 = v35[2];
    v48 = (v46 & 1) == 0;
    v49 = v47 + v48;
    if (!__OFADD__(v47, v48))
    {
      v50 = v46;
      if (v35[3] >= v49)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ADDFB81C();
          v35 = v69;
        }
      }

      else
      {
        sub_1ADDDDED0(v49, isUniquelyReferenced_nonNull_native);
        v35 = v69;
        v51 = sub_1ADDD8A6C(v20);
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_27;
        }

        v37 = v51;
      }

      v54 = v65;
      v53 = v66;
      v3[3] = v35;
      if (v50)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_25;
  }

  v32 = *&v20[*(v13 + 20)];
  v33 = v3[4];
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v3[4];
  v35 = v69;
  v3[4] = 0x8000000000000000;
  v37 = sub_1ADDD8A6C(v20);
  v38 = v35[2];
  v39 = (v36 & 1) == 0;
  v40 = v38 + v39;
  if (__OFADD__(v38, v39))
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1ADDFB81C();
    v35 = v69;
LABEL_17:
    v54 = v65;
    v53 = v66;
    v3[4] = v35;
    if (v13)
    {
LABEL_19:
      v57 = v35[7] + *(v63 + 72) * v37;
      sub_1AE23C08C();
      swift_endAccess();
      v58 = *(v54 + 16);
      v59 = v68;
      v58(v64, v68, v4);
      v69 = v27;
      swift_beginAccess();
      v60 = *(v67 + 104);
      sub_1AE23CB1C();
      sub_1AE23CB8C();
      swift_endAccess();
      sub_1AE017AB8(v20);
      v58(v53, v59, v4);
      return 1;
    }

LABEL_18:
    v66 = v4;
    v55 = v61;
    sub_1AE23C11C();
    v56 = v62;
    sub_1ADDF8030(v20, v62, type metadata accessor for Replica);
    v4 = v66;
    sub_1ADDDE678(v37, v56, v55, v35);
    goto LABEL_19;
  }

  LOBYTE(v13) = v36;
  if (v35[3] >= v40)
  {
    if (v34)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  sub_1ADDDDED0(v40, v34);
  v35 = v69;
  v41 = sub_1ADDD8A6C(v20);
  if ((v13 & 1) == (v42 & 1))
  {
    v37 = v41;
    goto LABEL_17;
  }

LABEL_27:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1ADE10580@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = qword_1ED967EE8;

  if (v4 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED96F1F8);
  sub_1AE1FEC4C(v3, a1);
  os_unfair_lock_unlock(&dword_1ED96F1F8);
  v5 = OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter;
  v6 = *(v3 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter);
  result = type metadata accessor for Timestamp(0);
  *(a1 + *(result + 20)) = v6;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + v5) = v6 + 1;
  }

  return result;
}

uint64_t sub_1ADE10650(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v21[1] = *(a1 + 16);
  v5 = type metadata accessor for CROrderedSet.DeduplicatedInfo();
  v6 = sub_1AE23D7CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  v11 = *(v5 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v21 - v15;
  v17 = *(a1 + 48);
  (*(v7 + 16))(v10, v1 + v17, v6, v14);
  if ((*(v11 + 48))(v10, 1, v5) == 1)
  {
    return (*(v7 + 8))(v10, v6);
  }

  (*(v11 + 32))(v16, v10, v5);
  v19 = *(v5 + 44);
  type metadata accessor for CROrderedSetElement();
  v20 = type metadata accessor for CRSequence();
  sub_1AE168474(&v16[v19], v20);
  (*(v11 + 8))(v16, v5);
  (*(v7 + 8))(v1 + v17, v6);
  return (*(v11 + 56))(v1 + v17, 1, 1, v5);
}

uint64_t sub_1ADE108AC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = type metadata accessor for CRSequenceRef();
  result = sub_1AE23DFAC();
  if ((result & 1) == 0)
  {
    v7 = *v2;
    v8 = *(v5 + 48);
    v9 = *(v5 + 52);
    v10 = swift_allocObject();

    sub_1ADE162F8(v11);
    v12 = *v2;

    *v2 = v10;
  }

  return result;
}

uint64_t sub_1ADE10924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  return sub_1ADE167F4(a1, *(v2 + 56), *(v2 + 16), a2);
}

id sub_1ADE10964@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  v4 = type metadata accessor for CRSequenceStorage();

  v5 = objc_allocWithZone(v4);
  result = sub_1ADE0CD68(a1);
  a2[3] = v4;
  *a2 = result;
  return result;
}

uint64_t sub_1ADE109CC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  type metadata accessor for CRSequenceStorage();
  v3 = swift_dynamicCastClassUnconditional();
  v4 = qword_1EB5BD4A8;
  swift_beginAccess();
  v6 = *(v3 + v4);
  swift_beginAccess();
  sub_1AE23D11C();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1AE23D57C();
  return swift_endAccess();
}

void sub_1ADE10B20(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_1ADE109CC();
  swift_unknownObjectRelease();
}

void *std::vector<Coherence_namespace::TopoSubstring *>::__assign_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring **,Coherence_namespace::TopoSubstring **>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<Coherence_namespace::TopoSubstring *>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t sub_1ADE10CC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1ADE10D14()
{
  (*(*(*(*v0 + 200) - 8) + 8))(v0 + *(*v0 + 224));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE10DC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v91 = a7;
  v92 = a8;
  v89 = a5;
  v90 = a6;
  v96 = a4;
  v14 = type metadata accessor for FinalizedTimestamp(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v88 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v79 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v79 - v22;
  v24 = sub_1AE23BFEC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = a1;
  v29 = *a1;
  v30 = *(a2 + 24);
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = v29 >= v31;
  }

  else
  {
    v32 = 1;
  }

  if (v32)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v33 = 0xD000000000000013;
    *(v33 + 8) = 0x80000001AE25FD70;
    *(v33 + 16) = 0;
    swift_willThrow();
    sub_1ADDDCE80(a3);

    v34 = v95;
    return sub_1ADFAECE8(v34);
  }

  v85 = a9;
  v86 = v19;
  v93 = a3;
  (*(v25 + 16))(v28, v30 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v29, v24);
  v35 = type metadata accessor for ReplicaState();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v38 = swift_allocObject();
  v39 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v40 = type metadata accessor for Replica();
  v41 = *(*(v40 - 8) + 56);
  v87 = a2;
  v41(v38 + v39, 1, 1, v40);
  (*(v25 + 32))(v38 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v28, v24);
  *(v38 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v38 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v41(v23, 1, 1, v40);
  v42 = v87;
  swift_beginAccess();
  sub_1ADF92F3C(v23, v38 + v39, &unk_1EB5B9E70, &unk_1AE240EC0);
  swift_endAccess();
  v43 = v95;
  v44 = v95[3];
  v45 = v95[4];
  if (v44)
  {
    v46 = v95[3];
  }

  else
  {
    v46 = MEMORY[0x1E69E7CC0];
  }

  if (v44)
  {
    v47 = v95[4];
  }

  else
  {
    v47 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v44);

  v48 = v94;
  sub_1ADDD6748(v46, v47, v42, &v97);
  if (v48)
  {

    sub_1ADDDCE80(v93);

    v34 = v43;
    return sub_1ADFAECE8(v34);
  }

  v94 = v38;
  v49 = v97;
  v50 = *(v43 + 40);
  if (*(v43 + 56))
  {
    v51 = 0;
  }

  else
  {
    v51 = *(v43 + 40);
  }

  if (*(v43 + 56))
  {
    v52 = 0;
  }

  else
  {
    v52 = *(v43 + 48);
  }

  sub_1ADE058D4(v51, v52, v42, v86);
  v83 = *(&v49 + 1);
  v84 = v49;
  v82 = v79;
  v103 = *(v43 + 8);
  *&v97 = v103;
  MEMORY[0x1EEE9AC00](v103);
  v54 = v90;
  v79[-8] = v89;
  v79[-7] = v54;
  v55 = v92;
  v79[-6] = v91;
  v79[-5] = v55;
  v79[-4] = a10;
  v79[-3] = v56;
  v81 = v56;
  v79[-2] = v42;

  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BBB90, &unk_1AE24EC40);
  v58 = type metadata accessor for CRDictionaryElement();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  v61 = sub_1ADE11630();
  v62 = sub_1ADE08EB0(sub_1ADE11694, &v79[-10], v57, TupleTypeMetadata2, v60, v61, MEMORY[0x1E69E7288], &v102);
  v79[1] = TupleTypeMetadata2;
  v79[2] = v58;
  v63 = v81;
  v80 = 0;
  sub_1ADFAECE8(v95);
  v64 = sub_1ADDCEDE0(&v103, qword_1EB5BBB90, &unk_1AE24EC40);
  v65 = v93;
  if (v93)
  {

    v65(v62);
    v64 = sub_1ADDDCE80(v65);
  }

  v95 = v79;
  *&v97 = v62;
  MEMORY[0x1EEE9AC00](v64);
  v67 = v89;
  v66 = v90;
  v79[-6] = v89;
  v79[-5] = v66;
  v68 = v66;
  v69 = v91;
  v70 = v92;
  v79[-4] = v91;
  v79[-3] = v70;
  v79[-2] = a10;
  v79[-1] = v63;
  sub_1AE23D11C();
  swift_getWitnessTable();
  v71 = v80;
  v72 = sub_1AE23CB2C();
  if (v71)
  {
    sub_1ADDD2728(v86, type metadata accessor for FinalizedTimestamp);

    sub_1ADDDCE80(v93);
  }

  else
  {
    v73 = v72;
    *&v97 = v67;
    *(&v97 + 1) = v68;
    v98 = v69;
    v99 = v70;
    v100 = a10;
    v101 = v63;
    type metadata accessor for CRDictionaryRef();
    *&v97 = v84;
    *(&v97 + 1) = v83;
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    v74 = *(qword_1ED96F2F8 + 40);
    sub_1AE23D6AC();
    v75 = v102;
    v76 = v86;
    v77 = v88;
    sub_1ADDD2658(v86, v88, type metadata accessor for FinalizedTimestamp);
    v78 = sub_1ADE1386C(v94, &v97, v73, v75, v77);
    sub_1ADDDCE80(v93);

    result = sub_1ADDD2728(v76, type metadata accessor for FinalizedTimestamp);
    *v85 = v78;
  }

  return result;
}

unint64_t sub_1ADE11630()
{
  result = qword_1ED969F40[0];
  if (!qword_1ED969F40[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB5BBB90, &unk_1AE24EC40);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED969F40);
  }

  return result;
}

uint64_t sub_1ADE116C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>, char **a8)
{
  v53 = a7;
  v54 = *(a4 - 8);
  v14 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v58 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FinalizedTimestamp(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v57 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a6;
  v19 = type metadata accessor for CRDictionaryElement();
  v51 = *(v19 - 8);
  v52 = v19;
  v20 = *(v51 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v50 = &v50 - v22;
  v23 = a3;
  v60 = *(a3 - 8);
  v24 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;
  v27 = a1[1];
  v29 = a1[2];
  v55 = a1[3];
  v56 = v29;
  v59 = a4;
  if (v28)
  {
    inited = v28;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  sub_1ADE0262C(inited, a2);

  v31 = *(*(a5 + 8) + 8);
  v32 = *(v31 + 8);

  v34 = v62;
  v32(v33, v23, v31);
  if (v34)
  {

    *a8 = v34;
  }

  else
  {
    v62 = v26;
    v35 = v59;
    if (v27)
    {
      v36 = v27;
    }

    else
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      v36 = swift_initStaticObject();
    }

    v37 = v61;

    sub_1ADE04FC4(v36, a2, v35, v37, &v64);
    v61 = v23;
    v39 = v64;
    v40 = type metadata accessor for CRRegister();
    CRRegister.timestamp.getter(v57);
    v63 = v39;
    CRRegister.value.getter(v40);
    v41 = v56;
    if (v56)
    {
      v42 = v56;
    }

    else
    {
      v42 = MEMORY[0x1E69E7CC0];
    }

    if (v56)
    {
      v43 = v55;
    }

    else
    {
      v43 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADE42C78(v41);
    v44 = sub_1ADDF4A24(v42, v43, a2);

    v45 = v50;
    sub_1ADE12F9C(v57, v58, v44, v35, v50);
    v46 = v61;
    v47 = v52;
    v48 = *(swift_getTupleTypeMetadata2() + 48);
    v49 = v53;
    (*(v60 + 32))(v53, v62, v46);
    return (*(v51 + 32))(v49 + v48, v45, v47);
  }

  return result;
}

uint64_t sub_1ADE11C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return SharedTagged_2.init(from:)(a1, a3);
}

uint64_t SharedTagged_2.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v16 = 0xD000000000000017;
    *(v16 + 8) = 0x80000001AE25FB70;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  v5 = v2;
  type metadata accessor for CRDecoder.CRValueContainer();
  *(swift_initStackObject() + 16) = a1;
  v7 = *(v4 + 16);
  if ((~v7 & 0xF000000000000007) != 0 && ((v7 >> 59) & 0x1E | (v7 >> 2) & 1) == 0xB)
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v8 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  *&v45 = v8[2];
  v9 = *(type metadata accessor for SharedTagged_2() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v43 = AssociatedTypeWitness;
  v44 = v9;
  v42 = AssociatedConformanceWitness;
  result = CRExtensible.init(rawValue:)(&v45, AssociatedTypeWitness, AssociatedConformanceWitness, &protocol witness table for Int, MEMORY[0x1E69E6540], (a2 + v9));
  if (*(a1 + 57) >= 3u)
  {
    v13 = *(a1 + 72);
    if (!v13)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v14 = *(v13 + 16);
    if ((~v14 & 0xF000000000000007) != 0 && ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) == 0xB)
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v15 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    if (v15[3])
    {
      inited = v15[3];
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v18 = *(inited + 16);
    sub_1ADE51B2C(v18);

    if ((~v18 & 0xF000000000000007) != 0)
    {
      if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0x10)
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1ADE51B48(v18);
        v20 = *(a1 + 40);
        v21 = *(v20 + 16);
        if (v21 && v19 < v21)
        {
          v22 = *(v20 + 16 * v19 + 32);
          *a2 = v22;
          sub_1ADDD86D8(v22, *(&v22 + 1));
          goto LABEL_41;
        }

        sub_1ADE42E40();
        swift_allocError();
        *v40 = 0xD000000000000013;
        *(v40 + 8) = 0x80000001AE25FC60;
        *(v40 + 16) = 0;
        swift_willThrow();
LABEL_39:

LABEL_50:
        *&v45 = v43;
        *(&v45 + 1) = v42;
        v46 = &protocol witness table for Int;
        v47 = MEMORY[0x1E69E6540];
        v39 = type metadata accessor for CRExtensible();
        return (*(*(v39 - 8) + 8))(a2 + v44, v39);
      }

      result = sub_1ADE51B48(v18);
    }
  }

  v23 = *(a1 + 72);
  if (!v23)
  {
    __break(1u);
    goto LABEL_54;
  }

  v24 = *(v23 + 16);
  if ((~v24 & 0xF000000000000007) != 0 && ((v24 >> 59) & 0x1E | (v24 >> 2) & 1) == 0xB)
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v25 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v26 = v25[3];
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v27 = swift_initStaticObject();
  }

  v28 = *(v27 + 16);
  if ((~v28 & 0xF000000000000007) != 0 && ((v28 >> 59) & 0x1E | (v28 >> 2) & 1) == 7)
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    type metadata accessor for Proto_Reference._StorageClass();
    v29 = swift_initStaticObject();
  }

  swift_beginAccess();
  if (v29[8])
  {
    v31 = v29[9];
    v30 = v29[10];
    v32 = v29[8];

    sub_1ADDD86D8(v31, v30);
  }

  else
  {
    v31 = 0;
    v30 = 0xC000000000000000;
  }

  sub_1ADDE94BC(v31, v30, &v45);
  if (v5)
  {
    goto LABEL_39;
  }

  *a2 = v45;
LABEL_41:
  *&v45 = v43;
  *(&v45 + 1) = AssociatedConformanceWitness;
  v46 = &protocol witness table for Int;
  v47 = MEMORY[0x1E69E6540];
  v33 = type metadata accessor for CRExtensible();
  result = CRExtensible.rawValue.getter(v33, &v48);
  v34 = *(a1 + 16);
  if (v48 == 1)
  {
    if (v34)
    {
      goto LABEL_48;
    }

    goto LABEL_56;
  }

  if (!v48)
  {
    if (v34)
    {
      goto LABEL_48;
    }

    goto LABEL_55;
  }

  if (v34)
  {
LABEL_48:
    v35 = swift_getAssociatedTypeWitness();
    v37 = *(a2 + 8);
    *&v45 = *a2;
    v36 = v45;
    *(&v45 + 1) = v37;
    v41 = *(*v34 + 200);

    sub_1ADDD86D8(v36, v37);
    v38 = swift_getAssociatedConformanceWitness();
    v41(v35, &v45, a1, 0, v35, v38);
    if (v5)
    {
      sub_1ADDCC35C(v45, *(&v45 + 1));

      sub_1ADDCC35C(*a2, *(a2 + 8));
      goto LABEL_50;
    }

    sub_1ADDCC35C(v45, *(&v45 + 1));
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_1ADE1234C(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = *a2;
  v7 = a2[1];
  result = swift_beginAccess();
  if (!*(*(v4 + 24) + 16) || (, sub_1ADDDE7CC(v6, v7), v10 = v9, result = , (v10 & 1) == 0))
  {
    if ((a4 & 1) == 0)
    {
      type metadata accessor for CRDecodeContext.DecodingReference();
      v11 = swift_allocObject();
      *(v11 + 16) = v6;
      *(v11 + 24) = v7;
      swift_beginAccess();
      sub_1ADDD86D8(v6, v7);
      v12 = *(v4 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v4 + 16);
      *(v4 + 16) = 0x8000000000000000;
      sub_1ADDE9748(v11, v6, v7, isUniquelyReferenced_nonNull_native);
      *(v4 + 16) = v14;
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1ADE12478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  v7 = *(a2 + 16);
  sub_1AE23D7CC();
  v10 = *(a2 + 24);
  v8 = swift_getWitnessTable();
  return CRValue<>.init(from:)(a1, a2, WitnessTable, v8, a3);
}

void sub_1ADE12538(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 64);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  v11 = *(v9 + 80) & 0xF8;
  v12 = v11 | 7;
  v13 = v10 + ((v11 + 23) & ~(v11 | 7)) + 1;
  if (a3 < 0xFF)
  {
    v14 = 0;
  }

  else if (v13 <= 3)
  {
    v17 = ((a3 + ~(-1 << (8 * v13)) - 254) >> (8 * v13)) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (a2 > 0xFE)
  {
    v15 = a2 - 255;
    if (v13 >= 4)
    {
      bzero(a1, v13);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v16 = (v15 >> (8 * v13)) + 1;
    if (v13)
    {
      v19 = v15 & ~(-1 << (8 * v13));
      bzero(a1, v13);
      if (v13 != 3)
      {
        if (v13 == 2)
        {
          *a1 = v19;
          if (v14 > 1)
          {
LABEL_39:
            if (v14 == 2)
            {
              *&a1[v13] = v16;
            }

            else
            {
              *&a1[v13] = v16;
            }

            return;
          }
        }

        else
        {
          *a1 = v15;
          if (v14 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v14)
        {
          a1[v13] = v16;
        }

        return;
      }

      *a1 = v19;
      a1[2] = BYTE2(v19);
    }

    if (v14 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v14 <= 1)
  {
    if (v14)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      *((&a1[v12 + 16] & ~v12) + v10) = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v14 == 2)
  {
    *&a1[v13] = 0;
    goto LABEL_24;
  }

  *&a1[v13] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1ADE12774(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v8 + 80) & 0xF8;
  v11 = v10 | 7;
  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v12 = v9 + ((v10 + 23) & ~v11) + 1;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((a2 + ~(-1 << v13) - 254) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      v20 = *(((a1 + v11 + 16) & ~v11) + v9);
      if (v20 >= 2)
      {
        return (v20 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 <= 3)
    {
      v18 = v12;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return (v19 | v17) + 255;
}

uint64_t sub_1ADE12910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(*(a2 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](*(a2 - 8));
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v10;
  if ((*(v10 + 48))(a1, 1, a2, v7) == 1)
  {
    v11 = sub_1AE23D7CC();
    (*(*(v11 - 8) + 8))(a1, v11);
    v12 = *(v16 + 56);

    return v12(a3, 1, 1, a2);
  }

  else
  {
    v14 = *(v16 + 32);
    v14(v9, a1, a2);
    v14(a3, v9, a2);
    return (*(v16 + 56))(a3, 0, 1, a2);
  }
}

uint64_t sub_1ADE12AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_1ADE12910(a1, *(a2 + 16), a3);
  v5 = *(*(a2 - 8) + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t sub_1ADE12B38(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1ADE12CB8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_1ADE12EE4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 216);
  swift_beginAccess();
  return sub_1ADED0548(v1 + v3, a1);
}

uint64_t CRRegister.value.getter(uint64_t a1)
{
  v2 = *v1;
  if (v2)
  {
    return (*(*v2 + 96))();
  }

  else
  {
    return sub_1AE0062C4(a1);
  }
}

uint64_t sub_1ADE12F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1ADE172E4(a1, a5);
  v9 = type metadata accessor for CRDictionaryElement();
  result = (*(*(a4 - 8) + 32))(a5 + *(v9 + 36), a2, a4);
  *(a5 + *(v9 + 40)) = a3;
  return result;
}

uint64_t sub_1ADE13038()
{
  sub_1ADDCC35C(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE13074(uint64_t a1)
{
  v3 = *(v1 + 64);
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t sub_1ADE130C8(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8;
  v14 = *(v9 + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v8 == v12)
  {
    v24 = *(v7 + 48);

    return v24(a1);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25, v10);
    }

    else
    {
      v27 = *((v14 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

uint64_t sub_1ADE13320(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  sub_1AE23E31C();
  a4(v7, a2);
  return sub_1AE23E34C();
}

uint64_t sub_1ADE1338C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  sub_1AE23BECC();
  v7 = *(a2 + 36);
  v10 = a2 + 16;
  v8 = *(a2 + 16);
  v9 = *(v10 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for CRExtensible();
  return CRExtensible.hash(into:)(a1, v11);
}

uint64_t sub_1ADE13454(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *a2;
  v12 = a2[1];
  sub_1ADDD86D8(*a1, v10);
  sub_1ADDD86D8(v11, v12);
  v13 = sub_1ADDD6F8C(v9, v10, v11, v12);
  sub_1ADDCC35C(v11, v12);
  sub_1ADDCC35C(v9, v10);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = *(a5(0, a3, a4) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = MEMORY[0x1E69E6540];

  return static CRExtensible.== infix(_:_:)(a1 + v14, a2 + v14, AssociatedTypeWitness, AssociatedConformanceWitness, &protocol witness table for Int, v17);
}

void sub_1ADE135E0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1AE23BFEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  v14 = *(v11 + 64);
  if (v12 <= v10)
  {
    v15 = *(v9 + 84);
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  v16 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8;
  v17 = v14 + 7;
  v18 = ((v14 + 7 + (v16 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v15 >= a3)
  {
    v21 = 0;
    v22 = a2 - v15;
    if (a2 <= v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((v14 + 7 + (v16 & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = a3 - v15 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = a2 - v15;
    if (a2 <= v15)
    {
LABEL_19:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *(a1 + v18) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v18) = 0;
      }

      else if (v21)
      {
        *(a1 + v18) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v10 == v15)
      {
        v25 = *(v9 + 56);

        v25(a1, a2);
      }

      else
      {
        v26 = (a1 + v16) & ~v13;
        if (v12 == v15)
        {
          v27 = *(v11 + 56);

          v27(v26, a2, v12);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v28 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v28 = (a2 - 1);
          }

          *((v17 + v26) & 0xFFFFFFFFFFFFFFF8) = v28;
        }
      }

      return;
    }
  }

  if (v18)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  if (v18)
  {
    v24 = ~v15 + a2;
    bzero(a1, v18);
    *a1 = v24;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      *(a1 + v18) = v23;
    }

    else
    {
      *(a1 + v18) = v23;
    }
  }

  else if (v21)
  {
    *(a1 + v18) = v23;
  }
}

void *sub_1ADE1386C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  swift_allocObject();
  return sub_1ADE138D8(a1, a2, a3, a4, a5);
}

void *sub_1ADE138D8(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *a2;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  sub_1ADDD2658(a5, v5 + qword_1ED96F250, type metadata accessor for FinalizedTimestamp);
  v13 = v12;
  v10 = sub_1ADE0C750(a1, &v13, a3, a4);
  sub_1ADDD2728(a5, type metadata accessor for FinalizedTimestamp);
  return v10;
}

unint64_t sub_1ADE13A44()
{
  result = qword_1EB5B8C20;
  if (!qword_1EB5B8C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB5BCC38, &qword_1AE251830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B8C20);
  }

  return result;
}

uint64_t sub_1ADE13AA8(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v64 = &v49 - v21;
  v22 = sub_1AE23D7CC();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x1EEE9AC00](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v38 = &v49 - v37;
  v39 = sub_1AE23CE9C();
  v70 = sub_1AE23DB5C();
  v65 = sub_1AE23DB6C();
  sub_1AE23DB0C();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_1AE23CE7C();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1AE23D80C();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_1AE23DB4C();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_1AE23D80C();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_1AE23DB4C();
      sub_1AE23D80C();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t sub_1ADE1419C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5[3];
  v8 = v5[7];
  return sub_1ADE14314(a1, a2, a3, a4, v5[8], v5[2], v5[4], a5, v5[5]);
}

uint64_t sub_1ADE141D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = a1[1];
  *a4 = *a1;
  a4[1] = v7;
  v8 = sub_1AE23D05C();
  if (sub_1AE23D0AC())
  {
    v9 = sub_1AE18F13C(v8, a2, a3);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CD0];
  }

  a4[3] = v9;
  v10 = type metadata accessor for TreeNode();
  v11 = sub_1AE23D11C();
  swift_getTupleTypeMetadata2();
  v12 = sub_1AE23D05C();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1ADDEAF38(v12, v10, v11, WitnessTable);

  a4[2] = v14;
  v15 = type metadata accessor for CROrderedTree();
  return sub_1ADE145CC(1, v15);
}

uint64_t sub_1ADE14314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v35 = a7;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v34 = a8;
  v12 = type metadata accessor for Timestamp(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v33 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  v18 = type metadata accessor for CRDictionaryElement();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(TupleTypeMetadata2 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v33 - v25;
  (*(*(a6 - 8) + 16))(&v33 - v25, a1, a6);
  v27 = *(v18 - 8);
  (*(v27 + 16))(&v26[*(TupleTypeMetadata2 + 48)], v36, v18);

  v28 = v39;
  sub_1ADE017C0(v37, v38, a5, v17);
  if (v28)
  {
    return (*(v20 + 8))(v26, TupleTypeMetadata2);
  }

  v39 = a9;
  (*(v20 + 32))(v24, v26, TupleTypeMetadata2);
  v30 = *(TupleTypeMetadata2 + 48);
  v31 = v17;
  v32 = v33;
  sub_1AE017B14(v31, v33);
  sub_1ADE0C8B4(v24, v32, a6, v34);
  return (*(v27 + 8))(&v24[v30], v18);
}

uint64_t sub_1ADE145CC(int a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v65 = a2;
  v5 = a2[4];
  v85 = v3;
  v6 = type metadata accessor for TreeNode();
  v64 = sub_1AE23D7CC();
  v87 = *(v64 - 8);
  v7 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v57 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v77 = &v57 - v11;
  v67 = *(v6 - 8);
  v12 = *(v67 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v57 - v17;
  v68 = *(v4 - 8);
  v19 = *(v68 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v74 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - v22;
  v24 = swift_getTupleTypeMetadata2();
  v83 = sub_1AE23D7CC();
  v79 = *(v83 - 8);
  v25 = *(v79 + 64);
  v26 = MEMORY[0x1EEE9AC00](v83);
  v82 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v81 = &v57 - v28;
  v29 = 0;
  v59 = a1;
  if ((a1 & 1) == 0)
  {
    v29 = v86[3];
  }

  v30 = sub_1AE23D05C();
  v31 = sub_1AE23D0AC();
  v58 = v29;
  if (v31)
  {
    v32 = sub_1AE18F13C(v30, v4, v5);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CD0];
  }

  v33 = v86;
  v34 = v86[3];

  v33[3] = v32;
  v97 = sub_1AE23D05C();
  v35 = v33[1];
  v94 = *v33;
  v95 = v35;

  WitnessTable = swift_getWitnessTable();
  v88 = v4;
  v89 = v6;
  v90 = v85;
  v91 = v5;
  v92 = &off_1F23C93F8;
  v93 = WitnessTable;
  v80 = WitnessTable;
  v62 = type metadata accessor for CROrderedDictionary();
  CROrderedDictionary.makeIterator()(v62, &v96);

  v79 += 32;
  v78 = v24 - 8;
  v73 = (v68 + 32);
  v72 = (v67 + 32);
  v71 = (v68 + 16);
  v70 = (v67 + 16);
  v69 = (v68 + 48);
  v61 = (v67 + 48);
  v60 = (v87 + 8);
  v68 += 8;
  v67 += 8;
  v37 = v81;
  v76 = v24;
  v75 = v5;
  v66 = v23;
  while (1)
  {
    v88 = v4;
    v89 = v6;
    v90 = v85;
    v91 = v5;
    v92 = &off_1F23C93F8;
    v93 = v80;
    v39 = type metadata accessor for CROrderedDictionary.Iterator();
    v40 = v82;
    CROrderedDictionary.Iterator.next()(v39, v82);
    (*v79)(v37, v40, v83);
    if ((*(*(v24 - 8) + 48))(v37, 1, v24) == 1)
    {
      break;
    }

    v41 = *(v24 + 48);
    v87 = *v73;
    (v87)(v23, v37, v4);
    (*v72)(v18, &v37[v41], v6);
    v42 = *(TupleTypeMetadata2 + 48);
    v43 = v23;
    v44 = v15;
    v45 = v4;
    v46 = v6;
    v47 = v77;
    (*v71)(v77, v43, v45);
    v48 = *v70;
    (*v70)(&v47[v42], v18, v46);
    sub_1AE23D11C();
    v6 = v46;
    v4 = v45;
    v15 = v44;
    sub_1AE23D0CC();
    v48(v44, v18, v6);
    if ((*v69)(v44, 1, v4) == 1)
    {
      v23 = v66;
      sub_1ADE158F4(v66, v65);
      (*v67)(v18, v6);
      (*v68)(v23, v4);
    }

    else
    {
      v49 = v74;
      (v87)(v74, v44, v4);
      v50 = v86[1];
      v88 = *v86;
      v89 = v50;
      v51 = v63;
      CROrderedDictionary.subscript.getter(v49, v62);
      v52 = (*v61)(v51, 1, v6);
      (*v60)(v51, v64);
      v23 = v66;
      if (v52 == 1)
      {
        sub_1ADE158F4(v66, v65);
      }

      v38 = *v68;
      (*v68)(v74, v4);
      (*v67)(v18, v6);
      v38(v23, v4);
    }

    v5 = v75;
    v24 = v76;
    v37 = v81;
  }

  sub_1AE1877E4(v97, v65);
  if (v59)
  {

LABEL_18:
    v55 = sub_1AE23DB9C();

    sub_1AE1847AC(v55, v65);
  }

  if (!v58)
  {
    goto LABEL_18;
  }

  v53 = v86[3];

  v54 = sub_1AE23D30C();

  swift_bridgeObjectRelease_n();
  if ((v54 & 1) == 0)
  {
    goto LABEL_18;
  }
}

uint64_t CROrderedDictionary.makeIterator()@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[1];
  v10 = *v2;
  v5 = a1[2];
  v6 = a1[4];
  v7 = a1[5];
  type metadata accessor for CROrderedSetElement();
  v8 = type metadata accessor for CRSequence();

  result = sub_1ADDEF6DC(v8);
  *a2 = result;
  a2[1] = 0;
  a2[2] = v4;
  return result;
}

uint64_t sub_1ADE14F84()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t CROrderedDictionary.Iterator.next()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v4 = *(a1 + 24);
  v5 = sub_1AE23D7CC();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v48 - v8;
  v9 = *(*(a1 + 16) - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v48 - v15;
  v53 = v14;
  v50 = *(a1 + 32);
  v16 = type metadata accessor for CROrderedSetElement();
  v17 = sub_1AE23D7CC();
  v55 = *(v17 - 8);
  v56 = v17;
  v18 = *(v55 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v48 - v22;
  v24 = *v2;
  v25 = sub_1AE23D0AC();
  v26 = v2[1];
  v51 = a1;
  if (v26 == v25)
  {
    v27 = *(v16 - 8);
    (*(v27 + 56))(v23, 1, 1, v16);
    goto LABEL_6;
  }

  v48 = v4;
  v28 = sub_1AE23D08C();
  sub_1AE23D00C();
  if ((v28 & 1) == 0)
  {
    result = sub_1AE23DAAC();
    v29 = *(v16 - 8);
    if (*(v29 + 64) != 8)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    *&v57[0] = result;
    (*(v29 + 16))(v23, v57, v16);
    result = swift_unknownObjectRelease();
    v31 = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      goto LABEL_5;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v29 = *(v16 - 8);
  result = (*(v29 + 16))(v23, v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26, v16);
  v31 = v26 + 1;
  if (__OFADD__(v26, 1))
  {
    goto LABEL_14;
  }

LABEL_5:
  v2[1] = v31;
  v27 = v29;
  (*(v29 + 56))(v23, 0, 1, v16);
  v4 = v48;
LABEL_6:
  v32 = v55;
  v33 = v56;
  (*(v55 + 16))(v21, v23, v56);
  if ((*(v27 + 48))(v21, 1, v16) == 1)
  {
    v34 = *(v32 + 8);
    v34(v23, v33);
    v34(v21, v33);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v54, 1, 1, TupleTypeMetadata2);
  }

  v48 = v2;
  v36 = *(v9 + 16);
  v37 = v13;
  v38 = v13;
  v39 = v53;
  v36(v38, v21, v53);
  (*(v27 + 8))(v21, v16);
  v40 = v52;
  (*(v9 + 32))(v52, v37, v39);
  v41 = v54;
  v36(v54, v40, v39);
  v42 = v40;
  v43 = v49;
  *&v44 = v39;
  *(&v44 + 1) = v4;
  v57[0] = v44;
  v57[1] = v50;
  v57[2] = *(v51 + 48);
  type metadata accessor for CRDictionary();
  CRDictionary.subscript.getter(v43);
  v45 = *(v4 - 1);
  result = (*(v45 + 48))(v43, 1, v4);
  if (result == 1)
  {
    goto LABEL_15;
  }

  v46 = swift_getTupleTypeMetadata2();
  v47 = *(v46 + 48);
  (*(v9 + 8))(v42, v39);
  (*(v55 + 8))(v23, v56);
  (*(v45 + 32))(&v41[v47], v43, v4);
  return (*(*(v46 - 8) + 56))(v41, 0, 1, v46);
}

uint64_t sub_1ADE15640@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *(*v1 + 472);
  v5 = type metadata accessor for CRDictionaryElement();
  v6 = sub_1AE23D7CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  swift_beginAccess();
  v11 = v1[5];
  v12 = *(v2 + 440);
  v13 = *(v2 + 464);

  sub_1AE23CB7C();

  if ((*(*(v5 - 8) + 48))(v10, 1, v5))
  {
    (*(v7 + 8))(v10, v6);
    v14 = *(v3 - 8);
    v15 = 1;
    v16 = v20;
  }

  else
  {
    v17 = *(v5 + 36);
    v14 = *(v3 - 8);
    v18 = v20;
    (*(v14 + 16))(v20, &v10[v17], v3);
    (*(v7 + 8))(v10, v6);
    v15 = 0;
    v16 = v18;
  }

  return (*(v14 + 56))(v16, v15, 1, v3);
}

uint64_t sub_1ADE158F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  (*(v4 + 16))(v8);
  v11 = *(a2 + 32);
  sub_1AE23D38C();
  sub_1AE23D33C();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1ADE15A14(uint64_t a1, _OWORD *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v11 = *(v3 + 8);
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v6 = type metadata accessor for CRDictionary();
  return a3(a1, v6);
}

uint64_t sub_1ADE15AB8()
{
  if (*(v0 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    v1 = swift_allocObject();
    *(v1 + 16) = v0;
  }

  else
  {
    sub_1ADE42E40();
    v2 = swift_allocError();
    *v3 = 0xD000000000000017;
    *(v3 + 8) = 0x80000001AE25FB70;
    *(v3 + 16) = 0;
    v1 = v2;
    swift_willThrow();
  }

  return v1;
}

void *sub_1ADE15B94(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0A8, &qword_1AE241888);
  v3 = sub_1AE23DCDC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1ADF4A3F0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1ADF4A3F0(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADE15C9C(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 72);
  if (v3)
  {
    v4 = *(v3 + 16);
    if ((~v4 & 0xF000000000000007) != 0 && ((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 13)
    {
      if ((result & 0x8000000000000000) == 0)
      {
        v6 = result;
        v7 = *(*((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 16);

        if (v7)
        {
          v8 = -*(result + 16);
          v9 = -v7;
          v10 = 4;
          while (1)
          {
            if (v10 - *(result + 16) == 4)
            {
              __break(1u);
              goto LABEL_22;
            }

            if (*(result + 8 * v10) == v6)
            {
              break;
            }

            ++v10;
            if (v9 + v10 == 4)
            {
              goto LABEL_7;
            }
          }

          v11 = *(v2 + 72);
          if (!v11)
          {
            goto LABEL_25;
          }

          v12 = *(v11 + 16);
          if ((~v12 & 0xF000000000000007) != 0 && ((v12 >> 59) & 0x1E | (v12 >> 2) & 1) == 0xD)
          {
            v13 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
            if ((v10 - 4) < *(v13 + 16))
            {
              v14 = *(v13 + 8 * v10);
              type metadata accessor for CRDecoder();
              swift_allocObject();

              v16 = sub_1ADE0262C(v15, v2);

              return v16;
            }
          }

          return 0;
        }

LABEL_7:

        return 0;
      }
    }

    else
    {
      if ((result & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }

LABEL_22:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1ADE15E44()
{
  v1 = *(*(v0 + 16) + 72);
  if (!v1)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v2 = *(v1 + 16);
  if ((~v2 & 0xF000000000000007) != 0 && ((v2 >> 59) & 0x1E | (v2 >> 2) & 1) == 0xD)
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v4 = *(v3 + 16);
    if (v4)
    {
      v10 = MEMORY[0x1E69E7CC0];

      sub_1ADE0B544(0, v4, 0);
      v5 = 32;
      v6 = v10;
      while (1)
      {
        v7 = *(v3 + v5);
        if (v7 < 0)
        {
          break;
        }

        v11 = v6;
        v9 = *(v6 + 16);
        v8 = *(v6 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1ADE0B544((v8 > 1), v9 + 1, 1);
          v6 = v11;
        }

        *(v6 + 16) = v9 + 1;
        *(v6 + 8 * v9 + 32) = v7;
        v5 += 8;
        if (!--v4)
        {

          return;
        }
      }

      __break(1u);
      goto LABEL_13;
    }
  }
}

void sub_1ADE15F98(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_1ADDEE390(a1, v7);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_1ADDF4818(v7, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v6;
  }

  else
  {
    sub_1ADDCEDE0(a1, &qword_1EB5BAA00, &qword_1AE2587A0);
    sub_1ADEBEEB4(a2, v7);

    sub_1ADDCEDE0(v7, &qword_1EB5BAA00, &qword_1AE2587A0);
  }
}

uint64_t CRAttributedString.setAttributes(_:range:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = sub_1ADE0F4FC(MEMORY[0x1E69E7CC0]);
  }

  sub_1ADE0F9AC(v6, a2, a3);
}

uint64_t sub_1ADE160D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v12 = a2;
    sub_1ADDEE390(&v12, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  swift_unknownObjectRetain();
  v10(v14, a3, a4, a5);
  return sub_1ADDCEDE0(v14, &qword_1EB5BAA00, &qword_1AE2587A0);
}

uint64_t sub_1ADE16180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = type metadata accessor for FinalizedTimestamp(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADDCEE40(a1, v18, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (!v19)
  {
    return sub_1ADDCEDE0(v18, &qword_1EB5BAA00, &qword_1AE2587A0);
  }

  type metadata accessor for ObjCFinalizedTimestamp(0);
  result = swift_dynamicCast();
  if (result)
  {
    v12 = v17;
    v13 = *a5;
    sub_1ADED0548(v17 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v10);

    v14 = *&v10[*(v7 + 20)];
    result = sub_1ADDE5118(v10, type metadata accessor for FinalizedTimestamp);
    if (v14 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    *a5 = v15;
  }

  return result;
}

uint64_t sub_1ADE162D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t *sub_1ADE162F8(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1AE23BFEC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  if (a1)
  {
    [*(a1 + qword_1ED96F258) copy];
    sub_1AE23D83C();

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
    swift_dynamicCast();
    *(v1 + qword_1ED96F258) = v14[1];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9FE8, &qword_1AE241500);
    v8 = *(v3 + 80);
    v9 = *(v3 + 88);
    v10 = type metadata accessor for CRSequenceStorage();
    v11 = [objc_allocWithZone(v10) init];
    v15[3] = v10;
    v15[0] = v11;
    sub_1ADDD0F70();
    sub_1AE23BFBC();
    v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    *(v1 + qword_1ED96F258) = sub_1ADE16668(v15, v7);
  }

  return v1;
}

id sub_1ADE165D0()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  *(v0 + qword_1EB5BD4A8) = sub_1AE23C9DC();
  v4 = *((v2 & v1) + 0x58);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CRSequenceStorage();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1ADE16668(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1[3];
  if (v5)
  {
    v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v8 = *(v5 - 8);
    v9 = *(v8 + 64);
    v10 = MEMORY[0x1EEE9AC00](v7);
    v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v12, v10);
    v13 = sub_1AE23DFFC();
    (*(v8 + 8))(v12, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_1AE23BF7C();
  v15 = [v3 initWithStorage:v13 uuid:v14];
  swift_unknownObjectRelease();

  v16 = sub_1AE23BFEC();
  (*(*(v16 - 8) + 8))(a2, v16);
  return v15;
}

uint64_t sub_1ADE167F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Timestamp(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(a3 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, a1, a3, v15);
  v20[3] = *a2;
  type metadata accessor for CROrderedSetElement();
  type metadata accessor for CRSequence();
  sub_1ADE16998(v12);
  *&v12[*(type metadata accessor for Replica() + 20)] = 0;
  *&v12[*(v9 + 28)] = 0;
  return sub_1ADE0C8B4(v17, v12, a3, a4);
}

uint64_t sub_1ADE16998@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = *v1;
  if (*v1)
  {
    v8 = qword_1ED96F260;
    v9 = sub_1AE23BFEC();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v6, v7 + v8, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    return (*(v10 + 32))(a1, v6, v9);
  }

  else
  {
    v12 = sub_1AE23BFEC();
    v13 = *(v12 - 8);
    (*(v13 + 56))(v6, 1, 1, v12);
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    sub_1ADDD0F70();
    sub_1AE23BFBC();
    result = (*(v13 + 48))(v6, 1, v12);
    if (result != 1)
    {
      return sub_1ADDCEDE0(v6, &qword_1EB5BA2F8, &unk_1AE2422B0);
    }
  }

  return result;
}

uint64_t CRSequence.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1ADE108AC(a2);
  if (*v4)
  {
    return sub_1ADE16C80(a1, a3, a4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADE16C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(*(a2 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v11 = *(v6 + 80);
  v12 = sub_1AE23D13C();
  v13 = *(v3 + qword_1ED96F258);
  v14 = [v13 length];
  v15 = sub_1AE23D0AC();
  v16 = swift_allocObject();
  v16[2] = v11;
  v16[3] = a2;
  v16[4] = *(v6 + 88);
  v16[5] = a3;
  v16[6] = v12;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1ADE109C8;
  *(v17 + 24) = v16;
  aBlock[4] = sub_1AE16B1E4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADE0EEE0;
  aBlock[3] = &block_descriptor_56;
  v18 = _Block_copy(aBlock);

  [v13 insertAtIndex:v14 length:v15 getStorage:v18];

  _Block_release(v18);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE16EF8()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_1ADE16F94@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1ADE10964(v1[6], a1);
}

uint64_t sub_1ADE16FCC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1ADE1705C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 448);
  v5 = *(*v1 + 472);
  v6 = type metadata accessor for CRDictionaryElement();
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  swift_beginAccess();
  v12 = v1[5];
  v13 = *(v3 + 440);
  v14 = *(v3 + 464);

  sub_1AE23CB7C();

  v15 = 1;
  if (!(*(*(v6 - 8) + 48))(v11, 1, v6))
  {
    sub_1ADDD2658(v11, a1, type metadata accessor for FinalizedTimestamp);
    v15 = 0;
  }

  (*(v8 + 8))(v11, v7);
  v16 = type metadata accessor for FinalizedTimestamp(0);
  return (*(*(v16 - 8) + 56))(a1, v15, 1, v16);
}

uint64_t sub_1ADE1727C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADE172E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinalizedTimestamp(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADE17348(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADE173B8(uint64_t a1)
{
  v2 = type metadata accessor for FinalizedTimestamp(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADE17414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  v10 = 1;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    (*(v9 + 32))(a2, v6, v8);
    v10 = 0;
  }

  return (*(v9 + 56))(a2, v10, 1, v8);
}

uint64_t sub_1ADE17574(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  v3 = *(a2 + 16);
  sub_1AE23D7CC();
  v5 = *(a2 + 32);
  swift_getWitnessTable();
  return sub_1AE23CF9C();
}

uint64_t sub_1ADE1761C(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  v3 = *(a2 + 16);
  sub_1AE23D7CC();
  v5 = *(a2 + 32);
  swift_getWitnessTable();
  return sub_1AE23CFAC();
}

uint64_t sub_1ADE176C4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1ADE17700(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_1AE23D0CC();
}

uint64_t sub_1ADE177C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  v4 = *(a3 + 16);
  sub_1AE23D7CC();
  v6 = *(*(a3 + 32) + 8);
  swift_getWitnessTable();
  return sub_1AE23E0AC() & 1;
}

uint64_t sub_1ADE17874()
{
  v0 = sub_1ADDF36A8();
  sub_1ADDD2728(v0 + qword_1ED96F250, type metadata accessor for FinalizedTimestamp);
  v1 = qword_1ED96F278;
  v2 = sub_1AE23BFEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1ADE17900()
{
  v0 = *sub_1ADE17874();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1ADE17954(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7E0, &qword_1AE24CEE0);
  v39 = a2;
  result = sub_1AE23DCCC();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(*(v5 + 48) + 16 * v22);
      v24 = *(v5 + 56) + 48 * v22;
      v41 = *v24;
      v42 = v23;
      v25 = *(v24 + 24);
      v40 = *(v24 + 16);
      v26 = *(v24 + 32);
      v27 = *(v24 + 40);
      if ((v39 & 1) == 0)
      {
        sub_1ADDD86D8(v23, *(&v23 + 1));
      }

      v28 = *(v8 + 40);
      sub_1AE23E31C();
      sub_1AE23BECC();
      result = sub_1AE23E34C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v17 = v42;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v17 = v42;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      v18 = *(v8 + 56) + 48 * v16;
      *v18 = v41;
      *(v18 + 16) = v40;
      *(v18 + 24) = v25;
      *(v18 + 32) = v26;
      *(v18 + 40) = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t static CRStruct_1.fieldKeys.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE2418F0;
  v5 = (*(*(a2 + 8) + 32))(a1);
  v7 = v6;

  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  return v4;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRStruct_1.decode(fields:)(Swift::OpaquePointer fields)
{
  v4 = v3;
  v5 = v1;
  v7 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = (*(v7 + 32))(v5, v7, v10);
  v13 = v12;
  if (*(fields._rawValue + 2))
  {
    v14 = v11;
    v21 = v4;

    v15 = sub_1ADDD7A10(v14, v13);
    v17 = v16;

    if (v17)
    {
      v18 = *(*(fields._rawValue + 7) + 8 * v15);
      v19 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v20 = *(v19 + 8);
      swift_retain_n();

      v20(v18, AssociatedTypeWitness, v19);
      if (v21)
      {
      }

      else
      {
        swift_setAtWritableKeyPath();
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t static CRStruct_4.fieldKeys.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 80))(v12);
  v3 = v12[0];
  v2 = v12[1];
  v4 = v12[3];
  v5 = v12[4];
  v7 = v12[6];
  v6 = v12[7];
  v11 = v12[9];
  v8 = v12[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AE242560;

  *(v9 + 32) = v3;
  *(v9 + 40) = v2;

  *(v9 + 48) = v4;
  *(v9 + 56) = v5;

  *(v9 + 64) = v7;
  *(v9 + 72) = v6;

  *(v9 + 80) = v11;
  *(v9 + 88) = v8;

  return v9;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRStruct_4.decode(fields:)(Swift::OpaquePointer fields)
{
  v3 = v1;
  rawValue = fields._rawValue;
  v4 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v76 = &v73 - v6;
  v89 = swift_getAssociatedTypeWitness();
  v7 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v77 = &v73 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v73 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v81 = &v73 - v15;
  v16 = *(v4 + 80);
  v85 = v4;
  v16(&TupleTypeMetadata2, v3, v4, v14);
  v17 = v101;
  v18 = v103;
  v98 = v104;
  v19 = v106;
  v111[14] = v107;
  v20 = v109;
  v21 = v110;
  v91 = TupleTypeMetadata2;
  v111[0] = TupleTypeMetadata2;
  v111[1] = v100;
  v90 = v100;
  v111[2] = v101;
  v111[3] = v102;
  v84 = v102;
  v111[4] = v103;
  v111[5] = v104;
  v83 = v105;
  v111[6] = v105;
  v111[7] = v106;
  v111[8] = v107;
  v111[9] = v108;
  v82 = v108;
  v111[10] = v109;
  v111[11] = v110;
  v80 = v12;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v78 = v9;
  sub_1AE23DB8C();
  v100 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v101 = swift_getTupleTypeMetadata2();
  v92 = v3;
  sub_1AE23DB8C();
  v22 = v21;
  v23 = v20;
  v24 = rawValue;
  v102 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v86 = *(TupleTypeMetadata - 8);
  v27 = v86 + 16;
  v26 = *(v86 + 16);
  v97 = TupleTypeMetadata;
  v26(&TupleTypeMetadata2, v111);

  v94 = v19;

  v28 = v24[2];
  v95 = v17;
  v93 = v26;
  if (v28)
  {
    v29 = v26;
    v30 = v27;
    v31 = v22;
    v32 = sub_1ADDD7A10(v91, v90);
    v34 = v33;

    if ((v34 & 1) == 0)
    {
      v22 = v31;
      v27 = v30;
      v29(&TupleTypeMetadata2, v111, v97);
      goto LABEL_9;
    }

    v35 = *(v24[7] + 8 * v32);
    v29(&TupleTypeMetadata2, v111, v97);

    v75 = v31;

    v36 = v80;
    v37 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v74 = v18;
    v38 = *(v37 + 8);

    v40 = v96;
    v38(v39, v36, v37);
    v96 = v40;
    if (v40)
    {
      v41 = &v112;
LABEL_13:
      v53 = *(v41 - 32);
LABEL_20:
      v54 = v97;
      goto LABEL_21;
    }

    swift_setAtWritableKeyPath();

    v24 = rawValue;
    v22 = v75;
    v18 = v74;
    v27 = v30;
    v26 = v93;
  }

  else
  {
  }

  (v26)(&TupleTypeMetadata2, v111, v97);
LABEL_9:

  v91 = v23;

  if (v24[2])
  {
    v42 = sub_1ADDD7A10(v84, v18);
    v44 = v43;

    if (v44)
    {
      v45 = v24;
      v46 = v22;
      v47 = *(v24[7] + 8 * v42);
      (v93)(&TupleTypeMetadata2, v111, v97);

      v75 = v46;

      v48 = v78;
      v49 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v84 = v27;
      v50 = *(v49 + 8);

      v52 = v96;
      v50(v51, v48, v49);
      v96 = v52;
      if (v52)
      {
        v41 = &v113;
        goto LABEL_13;
      }

      v24 = v45;
      swift_setAtWritableKeyPath();

      v27 = v84;
    }
  }

  else
  {
  }

  v54 = v97;
  (v93)(&TupleTypeMetadata2, v111, v97);

  if (v24[2])
  {
    v55 = sub_1ADDD7A10(v83, v94);
    v57 = v56;

    if (v57)
    {
      v58 = *(v24[7] + 8 * v55);
      (v93)(&TupleTypeMetadata2, v111, v97);

      v74 = v18;

      v59 = v89;
      v60 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v61 = *(v60 + 8);

      v84 = v27;
      v63 = v96;
      v61(v62, v59, v60);
      v96 = v63;
      if (v63)
      {
        goto LABEL_20;
      }

      swift_setAtWritableKeyPath();

      v24 = rawValue;
      v54 = v97;
    }

    else
    {
      v54 = v97;
    }
  }

  else
  {
  }

  (v93)(&TupleTypeMetadata2, v111, v54);

  if (v24[2])
  {
    v64 = sub_1ADDD7A10(v82, v91);
    v66 = v65;

    if ((v66 & 1) == 0)
    {
      goto LABEL_29;
    }

    v67 = *(v24[7] + 8 * v64);
    (v93)(&TupleTypeMetadata2, v111, v54);

    v68 = AssociatedTypeWitness;
    v69 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v70 = *(v69 + 8);

    v72 = v96;
    v70(v71, v68, v69);
    v96 = v72;
    if (!v72)
    {
      swift_setAtWritableKeyPath();
      (*(v86 + 8))(v111, v54);

      return;
    }

LABEL_21:

LABEL_29:
    (*(v86 + 8))(v111, v54);
    return;
  }

  (*(v86 + 8))(v111, v54);
}

uint64_t sub_1ADE18DC0(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  v47 = *a2;
  v46 = v4;
  v50 = type metadata accessor for PartiallyOrderedReferenceMap();
  v5 = v50[5];

  v51 = v2;
  sub_1ADE19160(v6, sub_1ADE1A500, 0, (v2 + v5));
  v7 = *(a1 + 64);
  v48 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7;
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v49 = a1;
  while (v10)
  {
LABEL_11:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v13 << 6);
    v17 = (*(a1 + 56) + 48 * v16);
    v18 = v17[3];
    if (*(v18 + 16))
    {
      v19 = (*(a1 + 48) + 16 * v16);
      v20 = *v19;
      v21 = v19[1];
      v22 = v17[2];
      v24 = v17[4];
      v23 = v17[5];
      v25 = *v17;
      v53 = v51 + v50[7];
      sub_1AE23E31C();
      sub_1ADDD86D8(v20, v21);
      v57 = v25;

      v56 = v22;

      v58 = v18;

      v55 = v24;

      v54 = v23;

      sub_1AE23BECC();
      v52 = sub_1AE23E34C();
      v61 = v20;
      v62 = v21;
      MEMORY[0x1EEE9AC00](v52);
      v45[2] = &v61;
      v27 = v61;
      v26 = v62;
      v59 = v20;
      v60 = v21;
      v28 = v53;
      sub_1ADDD86D8(v20, v21);
      LOBYTE(v26) = sub_1ADDDB234(0, v27, v26, v52, sub_1ADE1B14C, v45);
      v30 = v29;
      v32 = v31;
      sub_1ADDCC35C(v61, v62);
      if (v26)
      {

        result = sub_1ADDCC35C(v59, v60);
        ++*(v28 + 16);
      }

      else
      {
        v33 = v30 + *(v30 + 24) + 16 * ~v32;
        v34 = *(v33 + 32);
        v35 = *(v33 + 40);
        sub_1ADDD86D8(v34, v35);

        sub_1ADDCC35C(v59, v60);
        result = sub_1ADDCC35C(v34, v35);
      }

      a1 = v49;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA138, &qword_1AE251E60);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1AE2418F0;

      v37 = v47;

      v38 = v46;

      v39 = sub_1ADE1AFA0(a1);
      *(v36 + 32) = v37;
      *(v36 + 40) = v38;
      *(v36 + 48) = v39;
      *(v36 + 56) = v40;
      *(v36 + 64) = v41;
      v42 = v51;
      v43 = v50[6];
      v44 = *(v51 + v43);

      *(v42 + v43) = v36;
      return result;
    }

    v10 = *(v48 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADE19160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = -1 << *(a1 + 32);
  v6 = ~v5;
  v7 = *(a1 + 64);
  v8 = -v5;
  v240 = a1;
  v241 = a1 + 64;
  v242 = v6;
  v243 = 0;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v244 = v9 & v7;
  v245 = a2;
  v190 = a3;
  v246 = a3;
  sub_1ADE1A3A0(&v233);
  if (v236)
  {
    v10 = v236;
    v199 = a4;
    while (1)
    {
      v203 = v10;
      v17 = v233;
      v18 = v234;
      v201 = v235;
      v19 = v238;
      v204 = v239;
      v205 = v237;
      v20 = v199;
      ++v199[2];
      sub_1AE23E31C();
      sub_1ADDD86D8(v17, *(&v17 + 1));
      sub_1AE23BECC();
      v21 = sub_1AE23E34C();
      sub_1ADDCC35C(v17, *(&v17 + 1));
      v22 = *v20;
      swift_beginAccess();
      v23 = *(v22 + 16) != 0;
      v228 = v17;
      v200 = v17;
      sub_1ADDD86D8(v17, *(&v17 + 1));
      sub_1ADDDC21C(0, 0, 0);
      v230 = 0u;
      v231 = 0u;
      v229 = 0u;
      *v232 = v21;
      *&v232[8] = 0;
      *&v232[16] = v22;
      *&v232[24] = 0;
      v232[28] = 0;
      v232[29] = v23;
      v232[30] = 0;
      sub_1ADDDD688(&v228);
      v24 = v229;
      v25 = v230;
      if (v230)
      {
        v26 = v19;
        v27 = v18;
        v202 = *(&v231 + 1);
        v198 = v231;

        v28 = v203;

        v29 = v205;

        v30 = v204;

        v31 = sub_1ADDDC21C(v24, *(&v24 + 1), v25);
        v32 = v27;
      }

      else
      {
        sub_1ADDDC21C(v229, *(&v229 + 1), 0);
        v32 = v18;

        v28 = v203;

        v29 = v205;

        v30 = v204;

        v26 = v19;
      }

      *&v229 = v32;
      *(&v229 + 1) = v201;
      *&v230 = v28;
      *(&v230 + 1) = v29;
      v201 = v26;
      v202 = v32;
      *&v231 = v26;
      *(&v231 + 1) = v30;
      v227[0] = *v232;
      *(v227 + 15) = *&v232[15];
      v226[2] = v230;
      v226[3] = v231;
      v226[0] = v228;
      v226[1] = v229;
      v223 = v230;
      v224 = v231;
      v225[0] = *v232;
      *(v225 + 15) = *&v232[15];
      v33 = (*&v232[23] >> 8);
      v34 = v232[28];
      v35 = v232[29];
      v36 = *(&v227[0] + 1);
      v37 = *v232;
      v221 = v228;
      v222 = v229;
      if (!v28)
      {
        if (v232[30])
        {
          sub_1ADDCEE40(v226, &v216, &qword_1EB5BA960, &qword_1AE2455E0);
          v50 = v193 & 0xFFFF000000000000 | v33 | (v34 << 32);
          v51 = 0x10000000000;
          if (!v35)
          {
            v51 = 0;
          }

          v193 = v50 | v51;
          sub_1AE035D24(0, v37, v36, v50 | v51, &v208);
          sub_1ADDCC35C(v200, *(&v200 + 1));
          v218 = v230;
          v219 = v231;
          v220[0] = *v232;
          *(v220 + 15) = *&v232[15];
          v216 = v228;
          v217 = v229;
          sub_1ADDCEDE0(&v216, &qword_1EB5BA960, &qword_1AE2455E0);
          v212 = v208;
          v213 = v209;
          v214 = v210;
          v215 = v211;
          v52 = &v212;
          v53 = &qword_1EB5BA980;
          v54 = &qword_1AE245630;
        }

        else
        {
          sub_1ADDCEE40(v226, &v216, &qword_1EB5BA960, &qword_1AE2455E0);
          sub_1ADDCC35C(v200, *(&v200 + 1));
          v218 = v230;
          v219 = v231;
          v220[0] = *v232;
          *(v220 + 15) = *&v232[15];
          v216 = v228;
          v217 = v229;
          v52 = &v216;
          v53 = &qword_1EB5BA960;
          v54 = &qword_1AE2455E0;
        }

        sub_1ADDCEDE0(v52, v53, v54);
        goto LABEL_7;
      }

      if ((v232[30] & 1) == 0)
      {
        break;
      }

      v11 = (*&v232[15] >> 8) + *((*&v232[15] >> 8) + 24);
      v12 = *(&v221 + 1);
      v197 = *(&v221 + 1);
      v198 = v221;
      v13 = v222;
      v14 = *(&v223 + 1);
      v15 = v224;
      v16 = v11 + (~v33 << 6);
      *(v16 + 32) = v221;
      *(v16 + 40) = v12;
      *(v16 + 48) = v13;
      *(v16 + 64) = v28;
      *(v16 + 72) = v14;
      *(v16 + 80) = v15;
      sub_1ADDCEE40(v226, &v216, &qword_1EB5BA960, &qword_1AE2455E0);
      sub_1ADDDDE40(v13, *(&v13 + 1), v28);
      sub_1ADDD86D8(v198, v197);
      sub_1ADDCC35C(v200, *(&v200 + 1));
      v218 = v230;
      v219 = v231;
      v220[0] = *v232;
      *(v220 + 15) = *&v232[15];
      v216 = v228;
      v217 = v229;
      sub_1ADDCEDE0(&v216, &qword_1EB5BA960, &qword_1AE2455E0);
LABEL_7:
      v218 = v223;
      v219 = v224;
      v220[0] = v225[0];
      *(v220 + 15) = *(v225 + 15);
      v216 = v221;
      v217 = v222;
      sub_1ADDCEDE0(&v216, &qword_1EB5BA960, &qword_1AE2455E0);

      sub_1ADE1A3A0(&v233);
      v10 = v236;
      if (!v236)
      {
        goto LABEL_71;
      }
    }

    v197 = v182;
    MEMORY[0x1EEE9AC00](v31);
    v196 = &v182[-4];
    v181 = v38;
    v40 = *(&v221 + 1);
    v39 = v221;
    sub_1ADDCEE40(v226, &v216, &qword_1EB5BA960, &qword_1AE2455E0);
    v41 = v199;
    v42 = *v199;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = (*v41 + 32);
    v198 = *v41;
    v194 = v44;
    v195 = v37;
    v46 = sub_1ADDDAB3C(0, v39, v40, v37, v198 + 4, v44, v45);
    v48 = v46 >> 29;
    if (v46 >> 29 <= 1)
    {
      if (v48)
      {
        v72 = HIDWORD(v46);
        if (isUniquelyReferenced_nonNull_native)
        {
          v73 = v46;
          v74 = v198;
          swift_beginAccess();
          if (v74[7] < 0x40u)
          {
            sub_1ADE1A674(v73, v72, sub_1ADE1A60C, v196, v75);
            goto LABEL_38;
          }

          v127 = sub_1ADE1A914(v72, v73, v74 + 4, v194);
          v129 = *(&v221 + 1);
          v128 = v221;
          v130 = *(&v222 + 1);
          v131 = v222;
          v133 = *(&v223 + 1);
          v132 = v223;
          v134 = v224;
          *v127 = v221;
          *(v127 + 1) = v129;
          *(v127 + 1) = __PAIR128__(v130, v131);
          *(v127 + 2) = __PAIR128__(v133, v132);
          *(v127 + 3) = v134;
          v135 = v131;
          goto LABEL_70;
        }

        v86 = v41[1];
        v57 = sub_1ADDD83C0(v46, HIDWORD(v46), sub_1ADE1A60C, v47, v196, v198);
      }

      else
      {
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_38:
          sub_1ADDCC35C(v200, *(&v200 + 1));
LABEL_59:
          v218 = v230;
          v219 = v231;
          v220[0] = *v232;
          *(v220 + 15) = *&v232[15];
          v216 = v228;
          v217 = v229;
          sub_1ADDCEDE0(&v216, &qword_1EB5BA960, &qword_1AE2455E0);
          goto LABEL_7;
        }

        v55 = v41[1];
        v56 = sub_1ADDFB3E0();
        v57 = sub_1ADDF59C8(v56, v198, v55);
      }

LABEL_58:
      v125 = v57;
      v126 = v58;

      sub_1ADDCC35C(v200, *(&v200 + 1));
      *v41 = v125;
      v41[1] = v126;
      goto LABEL_59;
    }

    if (v48 != 2)
    {
      if (v48 == 3)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v49 = v198;
        }

        else
        {
          v76 = v41[1];
          v191 = v46;
          v77 = sub_1ADDFB3E0();
          v78 = sub_1ADDF59C8(v77, v198, v76);
          v80 = v79;

          HIDWORD(v46) = HIDWORD(v191);
          *v41 = v78;
          v41[1] = v80;
          v49 = v78;
        }

        v81 = v192;
        v82 = sub_1ADE1ACAC((v49 + 8), HIDWORD(v46), 0, v39, v40, v195, sub_1ADE1A60C, v196);
        v192 = v81;
        sub_1ADDCC35C(v200, *(&v200 + 1));
        if (v82)
        {
          ++v41[1];
        }

        goto LABEL_59;
      }

      if (v46 == 0x80000000)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v68 = v198;
          swift_beginAccess();
          v69 = v68[7];
          v70 = v69 >= 0x40;
          v71 = v69 - 64;
          if (!v70)
          {
            sub_1AE034ECC(sub_1ADE1A60C, v196, sub_1AE0351D8, sub_1AE035028);
            goto LABEL_38;
          }

          v171 = v68[4];
          v172 = v68[5];
          v173 = vcnt_s8(v171);
          v173.i16[0] = vaddlv_u8(v173);
          v68[7] = v71;
          if (v171 == v172)
          {
            v174 = v171;
          }

          else
          {
            v174 = v173.u32[0];
          }

          v175 = v68[6] - (v174 << 6);
          v176 = v194 + v175;
          v177 = v171 + 1;
          v68[4] = v177;
          v68[5] = v177;
          v129 = *(&v221 + 1);
          v128 = v221;
          v130 = *(&v222 + 1);
          v135 = v222;
          v178 = *(&v223 + 1);
          v132 = v223;
          v179 = v224;
          *(v176 - 8) = v221;
          *(v176 - 7) = v129;
          *(v176 - 3) = __PAIR128__(v130, v135);
          *(v68 + v175) = v132;
          *(v176 - 3) = v178;
          *(v176 - 1) = v179;
LABEL_70:
          sub_1ADDDDE40(v135, v130, v132);
          sub_1ADDD86D8(v128, v129);
          sub_1ADDCC35C(v200, *(&v200 + 1));
          ++v41[1];
          goto LABEL_59;
        }

        v57 = sub_1AE034BB0(sub_1ADE1A60C, v196, v198, v41[1], sub_1AE035378, sub_1AE035028);
      }

      else
      {
        v83 = v41[1];
        v84 = v198;
        v85 = *(v198 + 4);

        v57 = sub_1AE033D0C(0, sub_1ADE1A60C, v196, v195, v84, v83, v85);
      }

      goto LABEL_58;
    }

    v191 = v46;
    v59 = HIDWORD(v46);
    v60 = ~HIDWORD(v46);
    v61 = (&v194[8 * v60] + v198[6]);
    v62 = *v61;
    v63 = v61[1];
    sub_1AE23E31C();
    sub_1ADDD86D8(v62, v63);
    sub_1AE23BECC();
    v64 = sub_1AE23E34C();
    sub_1ADDCC35C(v62, v63);
    if (v195 == v64)
    {
      v66 = v198[4];
      v67 = v198[5];
      if (v66 == v67)
      {
        if (v66 != 1)
        {
          goto LABEL_49;
        }

LABEL_48:
        v88 = v194 + v198[6];
        v89 = *(v88 - 1);
        v91 = *(v88 - 4);
        v90 = *(v88 - 3);
        v210 = *(v88 - 2);
        v211 = v89;
        v208 = v91;
        v209 = v90;
        sub_1ADDCEE40(&v208, &v216, &qword_1EB5BA9E8, &qword_1AE251DE0);

        v93 = *(&v208 + 1);
        v92 = v208;
        v94 = v209;
        v95 = v210;
        v194 = *(&v211 + 1);
        v96 = v211;
        v97 = sub_1ADDDAC74(136);
        *(v97 + 16) = 0x200000002;
        v98 = *(v97 + 24);
        v99 = *(v97 + 28) - 136;
        v100 = v194;
        *(v97 + 32) = v195;
        *(v97 + 28) = v99;
        v101 = v97 + 32 + v98;
        v212 = __PAIR128__(v93, v92);
        v213 = v94;
        v214 = v95;
        *&v215 = v96;
        *(&v215 + 1) = v100;
        *(v101 - 64) = __PAIR128__(v93, v92);
        *(v101 - 48) = v94;
        *(v101 - 32) = v95;
        *(v101 - 16) = v96;
        *(v101 - 8) = v100;
        v102 = *(&v221 + 1);
        v196 = *(&v221 + 1);
        v198 = v221;
        v103 = v222;
        v104 = v223;
        v105 = v224;
        *(v101 - 128) = v221;
        *(v101 - 120) = v102;
        *(v101 - 112) = v103;
        *(v101 - 96) = v104;
        *(v101 - 80) = v105;
        v216 = __PAIR128__(v93, v92);
        v217 = v94;
        v218 = v95;
        *&v219 = v96;
        *(&v219 + 1) = v100;
        sub_1ADDCEE40(&v212, v207, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v106 = v199;
        sub_1ADDDDE40(v103, *(&v103 + 1), v104);
        sub_1ADDD86D8(v198, v196);
        sub_1ADDCEDE0(&v216, &qword_1EB5BA9E8, &qword_1AE251DE0);
        sub_1ADDCC35C(v200, *(&v200 + 1));
        *v106 = v97;
        v106[1] = 2;
        goto LABEL_59;
      }

      if (v66)
      {
        if (!v67)
        {
          v65.i32[0] = v198[4];
          v87 = vcnt_s8(v65);
          v87.i16[0] = vaddlv_u8(v87);
          if (v87.i32[0] < 2u)
          {
            goto LABEL_48;
          }
        }
      }
    }

LABEL_49:
    if (isUniquelyReferenced_nonNull_native)
    {
      v107 = v198;
      swift_beginAccess();
      v186 = v199[1];
      LODWORD(v108) = v107[4];
      v109 = vcnt_s8(v108);
      v109.i16[0] = vaddlv_u8(v109);
      if (v108 == v107[5])
      {
        v108 = v108;
      }

      else
      {
        v108 = v109.u32[0];
      }

      v110 = v107[6];
      v107[7] += 64;
      v111 = v194 + v110 + -64 * v108;
      v112 = (v108 + v60) << 6;
      v113 = *&v111[v112];
      v114 = *&v111[v112 + 8];
      v115 = *&v111[v112 + 16];
      v116 = *&v111[v112 + 24];
      v117 = *&v111[v112 + 32];
      v189 = *&v111[v112 + 40];
      v118 = *&v111[v112 + 56];
      *&v188 = *&v111[v112 + 48];
      memmove(v111 + 64, v111, v112);
      v119 = v107[4];
      if ((v107[5] & v119) != 0)
      {
        v120 = v119 - 1;
        v107[5] = v120;
      }

      else
      {
        v120 = v119 & ((-1 << v191) - 1);
      }

      v136 = v195;
      v107[4] = v120;
      v137 = v113;
      *&v216 = v113;
      v138 = v114;
      *(&v216 + 1) = v114;
      *&v217 = v115;
      v139 = v116;
      *(&v217 + 1) = v116;
      v140 = v117;
      *&v218 = v117;
      v141 = v189;
      *(&v218 + 1) = v189;
      v142 = v188;
      *&v219 = v188;
      *(&v219 + 1) = v118;
      v143 = v136;
      *(&v188 + 1) = v118;
      v185 = v115;
      v187 = v139;
      if (v136 == v64)
      {
        v206[0] = v137;
        v206[1] = v138;
        v206[2] = v115;
        v206[3] = v139;
        v206[4] = v140;
        v206[5] = v189;
        v206[6] = v188;
        v206[7] = v118;
        v144 = v137;
        v145 = sub_1ADDDAC74(136);
        *(v145 + 16) = 0x200000002;
        v146 = *(v145 + 24);
        v147 = *(v145 + 28) - 136;
        *(v145 + 32) = v143;
        *(v145 + 28) = v147;
        v148 = v145 + 32 + v146;
        v207[0] = v144;
        v207[1] = v138;
        v149 = v187;
        v207[2] = v115;
        v207[3] = v187;
        v207[4] = v140;
        v207[5] = v141;
        v150 = *(&v188 + 1);
        v207[6] = v142;
        v207[7] = *(&v188 + 1);
        *(v148 - 64) = v144;
        *(v148 - 56) = v138;
        v184 = v144;
        *(v148 - 48) = v115;
        *(v148 - 40) = v149;
        v151 = v149;
        *(v148 - 32) = v140;
        *(v148 - 24) = v141;
        *(v148 - 16) = v142;
        *(v148 - 8) = v150;
        v152 = *(&v221 + 1);
        v195 = *(&v221 + 1);
        v196 = v221;
        v154 = *(&v222 + 1);
        v153 = v222;
        v155 = v223;
        v182[3] = *(&v223 + 1);
        v183 = v223;
        v157 = *(&v224 + 1);
        v156 = v224;
        v182[2] = v224;
        v182[0] = v222;
        v182[1] = *(&v224 + 1);
        *(v148 - 128) = v221;
        *(v148 - 120) = v152;
        *(v148 - 112) = __PAIR128__(v154, v153);
        *(v148 - 96) = v155;
        *(v148 - 80) = __PAIR128__(v157, v156);
        *&v208 = v144;
        *(&v208 + 1) = v138;
        *&v209 = v115;
        *(&v209 + 1) = v151;
        *&v210 = v140;
        *(&v210 + 1) = v141;
        *&v211 = v142;
        *(&v211 + 1) = v150;
        sub_1ADDCEE40(&v216, &v212, &qword_1EB5BA9E8, &qword_1AE251DE0);
        sub_1ADDCEE40(v206, &v212, &qword_1EB5BA9E8, &qword_1AE251DE0);
        sub_1ADDCEE40(v207, &v212, &qword_1EB5BA9E8, &qword_1AE251DE0);
        sub_1ADDDDE40(v182[0], v154, v183);
        sub_1ADDD86D8(v196, v195);
        sub_1ADDCEDE0(&v208, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v158 = v184;
        *&v212 = v184;
        *(&v212 + 1) = v138;
        *&v213 = v115;
        *(&v213 + 1) = v187;
        *&v214 = v140;
        *(&v214 + 1) = v189;
        *&v215 = v142;
        *(&v215 + 1) = *(&v188 + 1);
        sub_1ADDCEDE0(&v212, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v159 = 2;
        v160 = v158;
      }

      else
      {
        *&v208 = v137;
        *(&v208 + 1) = v138;
        *&v209 = v115;
        *(&v209 + 1) = v139;
        *&v210 = v140;
        *(&v210 + 1) = v189;
        *&v211 = v188;
        *(&v211 + 1) = v118;
        *&v247 = v115;
        *(&v247 + 1) = v139;
        v248 = v140;
        v249 = v189;
        v250 = v188;
        v251 = v118;
        v160 = v137;
        v161 = v115;
        v162 = v139;
        sub_1ADDCEE40(&v216, &v212, &qword_1EB5BA9E8, &qword_1AE251DE0);
        sub_1ADDCEE40(&v208, &v212, &qword_1EB5BA9E8, &qword_1AE251DE0);
        v145 = sub_1ADE1A9BC(5, v160, v138, &v247, v64, sub_1ADE1A60C, v196, v143);
        v159 = v163;
        *&v212 = v160;
        *(&v212 + 1) = v138;
        *&v213 = v161;
        *(&v213 + 1) = v162;
        *&v214 = v140;
        *(&v214 + 1) = v141;
        v215 = v188;
        sub_1ADDCEDE0(&v212, &qword_1EB5BA9E8, &qword_1AE251DE0);
      }

      v164 = v140;
      v165 = v198;
      v199[1] = v186 + v159 - 1;
      v166 = v165[5];
      v167 = 1 << v191;
      v165[7] -= 16;
      v168.i32[0] = v166;
      v168.i32[1] = v166 & (v167 - 1);
      v169 = vpaddl_u16(vpaddl_u8(vcnt_s8(v168)));
      v170 = &v194[2 * v169.u32[1]];
      memmove(v170 + 2, v170, 16 * (v169.u32[0] - v169.u32[1]));
      *v170 = v145;
      v170[1] = v159;
      v165[5] |= v167;
      *&v212 = v160;
      *(&v212 + 1) = v138;
      *&v213 = v185;
      *(&v213 + 1) = v187;
      *&v214 = v164;
      *(&v214 + 1) = v189;
      v215 = v188;

      sub_1ADDCEDE0(&v212, &qword_1EB5BA9E8, &qword_1AE251DE0);

      sub_1ADDCC35C(v200, *(&v200 + 1));
    }

    else
    {
      v121 = v199;
      v181 = v199[1];
      v122 = sub_1AE034800(0, v191, v59, v64, v195, sub_1ADE1A60C, v196, v198);
      v124 = v123;

      sub_1ADDCC35C(v200, *(&v200 + 1));
      *v121 = v122;
      v121[1] = v124;
    }

    goto LABEL_59;
  }

LABEL_71:
  sub_1ADDDCE74();
}

uint64_t sub_1ADE1A3A0@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[3];
  v5 = v1[4];
  if (v5)
  {
    v6 = v1[3];
LABEL_10:
    v10 = __clz(__rbit64(v5)) | (v6 << 6);
    v11 = *(v3 + 48);
    v12 = *(v3 + 56) + 48 * v10;
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    v15 = *(v12 + 32);
    v16 = *(v12 + 40);
    v18 = v1[5];
    v17 = v1[6];
    v22 = *v12;
    v20 = *v12;
    v23 = *(v11 + 16 * v10);
    v19 = v23;
    v1[3] = v6;
    v1[4] = (v5 - 1) & v5;
    v24 = v20;
    *&v25 = v13;
    *(&v25 + 1) = v14;
    *&v26 = v15;
    *(&v26 + 1) = v16;
    sub_1ADDD86D8(v19, *(&v19 + 1));

    v18(&v23);
    v27[0] = v23;
    v27[1] = v24;
    v27[2] = v25;
    v27[3] = v26;
    return sub_1ADDCEDE0(v27, &qword_1EB5BA9E8, &qword_1AE251DE0);
  }

  else
  {
    v7 = (v1[2] + 64) >> 6;
    if (v7 <= v4 + 1)
    {
      v8 = v4 + 1;
    }

    else
    {
      v8 = (v1[2] + 64) >> 6;
    }

    v9 = v8 - 1;
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v6 >= v7)
      {
        v1[3] = v9;
        v1[4] = 0;
        *a1 = 0u;
        a1[1] = 0u;
        a1[2] = 0u;
        a1[3] = 0u;
        return result;
      }

      v5 = *(v1[1] + 8 * v6);
      ++v4;
      if (v5)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

__n128 sub_1ADE1A500@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = *a1;
  v10 = *(a1 + 16);
  v7 = *a1;
  sub_1ADDD86D8(*a1, *(a1 + 8));

  sub_1ADDD86D8(v7.n128_i64[0], v7.n128_u64[1]);

  sub_1ADDCC35C(v7.n128_i64[0], v7.n128_u64[1]);

  result = v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  return result;
}

uint64_t sub_1ADE1A614(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  a1[7] = v9;
  sub_1ADDDDE40(v4, v5, v6);

  return sub_1ADDD86D8(v2, v3);
}

uint64_t sub_1ADE1A674(char a1, unsigned int a2, uint64_t (*a3)(char *), uint64_t a4, int8x8_t a5)
{
  v6 = *v5;
  v19 = v5[1];
  v7 = *(*v5 + 16) | (1 << a1);
  v8 = *(*v5 + 20);
  a5.i32[0] = v7;
  v9 = vcnt_s8(a5);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  v11 = vcnt_s8(v8);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  v13 = v10 << 6;
  v14 = (v10 << 6) + 16 * v11.i32[0];
  v15 = sub_1ADDDAC74(v13 + 16 * v11.u32[0]);
  *(v15 + 16) = v7;
  *(v15 + 20) = v8;
  v16 = *(v15 + 24);
  *(v15 + 28) -= v14;
  sub_1ADE1A764((v15 + 32), v12, (v15 + 32 - v13 + v16), v10, (v6 + 16), (v6 + 32), a2, a3, v17, a4);

  *v5 = v15;
  v5[1] = v19 + 1;
  return result;
}

char *sub_1ADE1A764(char *result, uint64_t a2, char *__dst, unint64_t a4, unsigned int *a5, char *__src, unsigned int a7, uint64_t (*a8)(char *), int8x8_t a9, uint64_t a10)
{
  v15 = a5[1];
  if (*a5 != v15 && v15 != 0)
  {
    a9.i32[0] = a5[1];
    v31 = vcnt_s8(a9);
    v31.i16[0] = vaddlv_u8(v31);
    if (v31.u32[0] > a2)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (result != __src || &__src[16 * v31.u32[0]] <= result)
    {
      v32 = __src;
      result = memmove(result, __src, 16 * v31.u32[0]);
      __src = v32;
    }
  }

  v17 = vcnt_s8(*a5);
  v17.i16[0] = vaddlv_u8(v17);
  if (*a5 == a5[1])
  {
    v18 = *a5;
  }

  else
  {
    v18 = v17.u32[0];
  }

  if (-a7 < -a4 && -a4 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = a4 - a7;
  }

  v21 = a4 - v20;
  if (a4 < v20)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v22 = v18 - a7;
  if (v18 >= a7)
  {
    v23 = v18 - a7;
  }

  else
  {
    v23 = 0;
  }

  if (v18 < v23)
  {
    goto LABEL_48;
  }

  v24 = &__dst[64 * v20];
  if (__dst)
  {
    result = v24;
  }

  else
  {
    result = 0;
  }

  v25 = &__src[a5[2]];
  v26 = &v25[-64 * v18];
  v27 = v18 - v23;
  if (v18 != v23)
  {
    if (v21 < v27)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v28 = &v26[64 * v23];
    v29 = v28 <= result && v25 > result;
    if (!v29 || v28 != result)
    {
      result = memmove(result, v28, v27 << 6);
    }
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v18 == a7)
  {
    goto LABEL_41;
  }

  if ((a4 & 0x8000000000000000) == 0 && v22 > a4)
  {
    goto LABEL_51;
  }

  if (v26 != __dst || &v26[64 * v22] <= __dst)
  {
    result = memmove(__dst, v26, v22 << 6);
  }

LABEL_41:
  if (__dst)
  {
    result = a8(&__dst[64 * v22]);
    *a5 = 0;
    a5[3] = a5[2];
    return result;
  }

LABEL_53:
  __break(1u);
  return result;
}

char *sub_1ADE1A914(unsigned int a1, char a2, int *a3, uint64_t a4)
{
  v6 = ~a2;
  LODWORD(v7) = *a3;
  v8 = vcnt_s8(*a3);
  v8.i16[0] = vaddlv_u8(v8);
  if (*a3 == a3[1])
  {
    v7 = v7;
  }

  else
  {
    v7 = v8.u32[0];
  }

  v9 = a3[2];
  a3[3] -= 64;
  v10 = (a4 - (v7 << 6) + v9);
  v11 = v10 - 64;
  v12 = v7 - a1;
  memmove(v10 - 64, v10, v12 << 6);
  v13 = *a3;
  if (v6)
  {
    v14 = v13 | (1 << a2);
  }

  else
  {
    v14 = v13 + 1;
    a3[1] = v14;
  }

  *a3 = v14;
  return &v11[64 * v12];
}

int64_t sub_1ADE1A9BC(int a1, uint64_t a2, uint64_t a3, unsigned __int128 *a4, unint64_t a5, void (*a6)(unint64_t), uint64_t a7, unint64_t a8)
{
  v14 = (a5 >> a1) & 0x1F;
  v15 = (a8 >> a1) & 0x1F;
  v47[0] = a2;
  v47[1] = a3;
  v16 = a4[1];
  v48 = *a4;
  v49 = v16;
  v50 = a4[2];
  if (v14 == v15)
  {
    v43 = v48;
    v44 = v16;
    v45 = v50;
    sub_1ADDCEE40(v47, &v51, &qword_1EB5BA9E8, &qword_1AE251DE0);
    v19 = sub_1ADE1A9BC((a1 + 5), a2, a3, &v43, a5, a6, a7, a8);
    v21 = v20;
    v22 = sub_1ADDDAC74(16);
    *(v22 + 16) = 0;
    *(v22 + 20) = 1 << v14;
    *(v22 + 28) -= 16;
    *(v22 + 32) = v19;
    *(v22 + 40) = v21;
    v51 = a2;
    v52 = a3;
    v23 = a4[1];
    v55 = a4[2];
    v24 = *a4;
    v54 = v23;
    v53 = v24;
    sub_1ADDCEDE0(&v51, &qword_1EB5BA9E8, &qword_1AE251DE0);
  }

  else
  {
    v25 = *(&v48 + 1);
    v26 = v16;
    v38 = v48;
    v27 = v50;
    v28 = (1 << (a8 >> a1)) | (1 << (a5 >> a1));
    v29 = vcnt_s8(__PAIR64__(DWORD1(v50), v28));
    v29.i16[0] = vaddlv_u8(v29);
    v30 = (v29.i32[0] << 6);
    v22 = sub_1ADDDAC74(v30);
    v31 = *(v22 + 24);
    *(v22 + 28) -= v30;
    *(v22 + 16) = v28;
    *(v22 + 20) = 0;
    v32 = v22 - v30 + v31 + 32;
    v51 = a2;
    v52 = a3;
    v53 = __PAIR128__(v25, v38);
    v54 = v26;
    v55 = v27;
    v33 = v32 + ((v14 < v15) << 6);
    *v33 = a2;
    *(v33 + 8) = a3;
    *(v33 + 16) = v38;
    *(v33 + 24) = v25;
    *(v33 + 32) = v26;
    v34 = v32 + ((v14 >= v15) << 6);
    *(v33 + 48) = v27;
    sub_1ADDCEE40(v47, &v43, &qword_1EB5BA9E8, &qword_1AE251DE0);
    sub_1ADDCEE40(&v51, &v43, &qword_1EB5BA9E8, &qword_1AE251DE0);
    a6(v34);
    v39[0] = a2;
    v39[1] = a3;
    v35 = a4[1];
    v40 = *a4;
    v41 = v35;
    v42 = a4[2];
    sub_1ADDCEDE0(v39, &qword_1EB5BA9E8, &qword_1AE251DE0);
    *&v43 = a2;
    *(&v43 + 1) = a3;
    v44 = __PAIR128__(v25, v38);
    v45 = v26;
    v46 = v27;
    sub_1ADDCEDE0(&v43, &qword_1EB5BA9E8, &qword_1AE251DE0);
  }

  return v22;
}

uint64_t sub_1ADE1ACAC(uint64_t a1, unsigned int a2, int a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t (*a7)(char *), uint64_t a8)
{
  v14 = (a1 + 16 * a2);
  v15 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = sub_1ADDDAB3C((a3 + 5), a4, a5, a6, (*v14 + 16), (*v14 + 32), v17);
  v20 = v18 >> 29;
  if (v18 >> 29 <= 1)
  {
    if (!v20)
    {
      v27 = *v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = v14[1];
        v40 = *v14;
        v41 = sub_1ADDFB3E0();
        v42 = sub_1ADDF59C8(v41, v40, v39);
        v44 = v43;

        result = 0;
        *v14 = v42;
        v14[1] = v44;
        return result;
      }

      return 0;
    }

    v29 = HIDWORD(v18);
    v30 = *v14;
    if (isUniquelyReferenced_nonNull_native)
    {
      v31 = v18;
      swift_beginAccess();
      if (*(v30 + 28) >= 0x40u)
      {
        v49 = sub_1ADE1A914(v29, v31, (v30 + 16), v30 + 32);
        a7(v49);
        ++v14[1];
      }

      else
      {
        sub_1ADE1A674(v31, v29, a7, a8, v32);
      }
    }

    else
    {
      v45 = v14[1];
      v46 = sub_1ADDD83C0(v18, HIDWORD(v18), a7, v19, a8, *v14);
      v47 = *v14;
      *v14 = v46;
      v14[1] = v48;
    }

LABEL_21:
    v50 = *v14;
    return 1;
  }

  if (v20 == 2)
  {
    sub_1AE033E90(isUniquelyReferenced_nonNull_native, a3 + 5, v18, HIDWORD(v18), a6, a7, a8);
    return 1;
  }

  if (v20 != 3)
  {
    if (v18 != 0x80000000)
    {
      v34 = *v14;
      v33 = v14[1];
      v35 = *(*v14 + 32);

      v36 = sub_1AE033D0C(a3 + 5, a7, a8, a6, v34, v33, v35);
      v37 = *v14;
      *v14 = v36;
      v14[1] = v38;

      return 1;
    }

    sub_1AE034414(isUniquelyReferenced_nonNull_native, a7, a8);
    goto LABEL_21;
  }

  v21 = HIDWORD(v18);
  v22 = *v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = v14[1];
    v52 = HIDWORD(v18);
    v24 = sub_1ADDFB3E0();
    v25 = sub_1ADDF59C8(v24, v22, v23);
    v51 = v26;

    v21 = v52;
    *v14 = v25;
    v14[1] = v51;
    v22 = v25;
  }

  if ((sub_1ADE1ACAC(v22 + 32, v21, (a3 + 5), a4, a5, a6, a7, a8) & 1) == 0)
  {
    return 0;
  }

  ++v14[1];
  return 1;
}

uint64_t sub_1ADE1AFA0(uint64_t a1)
{
  v2 = *sub_1AE23C1EC();
  v19 = v2;
  v20 = 0;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v16[4] = v2;

  for (i = 0; v5; result = sub_1ADDCC35C(v17, v18))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    sub_1AE23E31C();
    sub_1ADDD86D8(v12, v13);
    sub_1ADDD86D8(v12, v13);
    sub_1AE23BECC();
    v14 = sub_1AE23E34C();
    v15 = sub_1ADDCC35C(v12, v13);
    v17 = v12;
    v18 = v13;
    MEMORY[0x1EEE9AC00](v15);
    v16[2] = &v17;
    sub_1ADDDB234(0, v17, v18, v14, sub_1ADE1B14C, v16);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v19;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADE1B150(char a1, unsigned int a2, uint64_t (*a3)(char *), uint64_t a4)
{
  v6 = *v4;
  v5 = v4[1];
  v7 = (*v4 + 16);
  v8 = *v7 | (1 << a1);
  v9 = *(*v4 + 20);
  v10 = vpaddl_u16(vpaddl_u8(vcnt_s8(__PAIR64__(v9, v8))));
  v11 = v10.u32[0];
  v12 = v10.u32[1];
  v13 = 16 * (v10.i32[0] + v10.i32[1]);
  v14 = sub_1ADDDB860(16 * (v10.u32[0] + v10.u32[1]));
  *(v14 + 16) = v8;
  *(v14 + 20) = v9;
  v15 = *(v14 + 24);
  *(v14 + 28) -= v13;
  sub_1ADE1B23C((v14 + 32), v12, (v14 + 32 - 16 * v11 + v15), v11, v7, (v6 + 32), a2, a3, v16, a4);

  *v4 = v14;
  v4[1] = v5 + 1;
  return result;
}

char *sub_1ADE1B23C(char *result, uint64_t a2, char *__dst, unint64_t a4, unsigned int *a5, char *__src, unsigned int a7, uint64_t (*a8)(char *), int8x8_t a9, uint64_t a10)
{
  v15 = a5[1];
  if (*a5 != v15 && v15 != 0)
  {
    a9.i32[0] = a5[1];
    v31 = vcnt_s8(a9);
    v31.i16[0] = vaddlv_u8(v31);
    if (v31.u32[0] > a2)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (result != __src || &__src[16 * v31.u32[0]] <= result)
    {
      v32 = __src;
      result = memmove(result, __src, 16 * v31.u32[0]);
      __src = v32;
    }
  }

  v17 = vcnt_s8(*a5);
  v17.i16[0] = vaddlv_u8(v17);
  if (*a5 == a5[1])
  {
    v18 = *a5;
  }

  else
  {
    v18 = v17.u32[0];
  }

  if (-a7 < -a4 && -a4 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = a4 - a7;
  }

  v21 = a4 - v20;
  if (a4 < v20)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v22 = v18 - a7;
  if (v18 >= a7)
  {
    v23 = v18 - a7;
  }

  else
  {
    v23 = 0;
  }

  if (v18 < v23)
  {
    goto LABEL_48;
  }

  v24 = &__dst[16 * v20];
  if (__dst)
  {
    result = v24;
  }

  else
  {
    result = 0;
  }

  v25 = &__src[a5[2]];
  v26 = &v25[-16 * v18];
  v27 = v18 - v23;
  if (v18 != v23)
  {
    if (v21 < v27)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v28 = &v26[16 * v23];
    v29 = v28 <= result && v25 > result;
    if (!v29 || v28 != result)
    {
      result = memmove(result, v28, 16 * v27);
    }
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v18 == a7)
  {
    goto LABEL_41;
  }

  if ((a4 & 0x8000000000000000) == 0 && v22 > a4)
  {
    goto LABEL_51;
  }

  if (v26 != __dst || &v26[16 * v22] <= __dst)
  {
    result = memmove(__dst, v26, 16 * v22);
  }

LABEL_41:
  if (__dst)
  {
    result = a8(&__dst[16 * v22]);
    *a5 = 0;
    a5[3] = a5[2];
    return result;
  }

LABEL_53:
  __break(1u);
  return result;
}

int64_t sub_1ADE1B3EC(char a1, int a2, char a3, unsigned int a4, unint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v8 = v7;
  v13 = *v7;
  v60 = *v7 + 32;
  v14 = ~a4;
  v15 = (v60 + *(*v7 + 24) + 16 * v14);
  v16 = *v15;
  v17 = v15[1];
  sub_1AE23E31C();
  sub_1ADDD86D8(v16, v17);
  sub_1AE23BECC();
  v18 = sub_1AE23E34C();
  sub_1ADDCC35C(v16, v17);
  if (v18 == a5)
  {
    v20 = v13[4];
    v21 = v13[5];
    if (v20 == v21)
    {
      if (v20 == 1)
      {
LABEL_4:
        v22 = v60 + v13[6];
        v23 = *(v22 - 16);
        v24 = *(v22 - 8);
        sub_1ADDD86D8(v23, v24);

        v25 = sub_1AE034D24(a5, v23, v24, a6);
        *v8 = v25;
        v8[1] = v26;
        return v25;
      }
    }

    else
    {
      v19.i32[0] = v13[4];
      v27 = vcnt_s8(v19);
      v27.i16[0] = vaddlv_u8(v27);
      if (v20)
      {
        v28 = v21 == 0;
      }

      else
      {
        v28 = 0;
      }

      if (v28 && v27.i32[0] < 2u)
      {
        goto LABEL_4;
      }
    }
  }

  if (a1)
  {
    swift_beginAccess();
    v30 = v8[1];
    LODWORD(v31) = v13[4];
    v32 = vcnt_s8(v31);
    v32.i16[0] = vaddlv_u8(v32);
    if (v31 == v13[5])
    {
      v31 = v31;
    }

    else
    {
      v31 = v32.u32[0];
    }

    v33 = v13[6];
    v13[7] += 16;
    v34 = v60 - 16 * v31 + v33;
    v35 = 16 * (v31 + v14);
    v36 = *(v34 + v35);
    v37 = *(v34 + v35 + 8);
    memmove((v34 + 16), v34, v35);
    v38 = v13[4];
    if ((v13[5] & v38) != 0)
    {
      v39 = v38 - 1;
      v13[5] = v39;
    }

    else
    {
      v39 = v38 & ((-1 << a3) - 1);
    }

    v13[4] = v39;
    if (v18 == a5)
    {
      v44 = sub_1ADDDB860(40);
      *(v44 + 16) = 0x200000002;
      v45 = *(v44 + 24);
      *(v44 + 28) -= 40;
      *(v44 + 32) = a5;
      v46 = v44 + v45;
      *(v46 + 16) = v36;
      *(v46 + 24) = v37;
      sub_1ADDD86D8(v36, v37);
      sub_1ADDD86D8(v36, v37);
      sub_1ADDD86D8(v36, v37);
      a6(v46);
      sub_1ADDCC35C(v36, v37);
      v47 = 2;
      v25 = v44;
    }

    else
    {
      sub_1ADDD86D8(v36, v37);
      sub_1ADDD86D8(v36, v37);
      v44 = sub_1ADE1B784(a2 + 5, v36, v37, v18, a6, a7, a5, v48);
      v47 = v49;
      v25 = v50;
    }

    sub_1ADDCC35C(v36, v37);
    v8[1] = v30 + v47 - 1;
    v51 = v13[5];
    v13[7] -= 16;
    v52.i32[0] = v51;
    v52.i32[1] = v51 & ((1 << a3) - 1);
    v53 = vpaddl_u16(vpaddl_u8(vcnt_s8(v52)));
    v54 = (v60 + 16 * v53.u32[1]);
    memmove(v54 + 2, v54, 16 * (v53.u32[0] - v53.u32[1]));
    *v54 = v44;
    v54[1] = v47;
    v13[5] |= 1 << a3;

    sub_1ADDCC35C(v36, v37);
  }

  else
  {
    v56 = v8[1];
    v40 = sub_1AE034564(a2, a3, a4, v18, a5, a6, a7, v13);
    v42 = v41;
    v25 = v43;

    *v8 = v40;
    v8[1] = v42;
  }

  return v25;
}