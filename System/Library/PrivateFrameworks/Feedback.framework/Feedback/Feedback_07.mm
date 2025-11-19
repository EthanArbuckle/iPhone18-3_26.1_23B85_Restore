uint64_t sub_1B8BCCE00()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 24);
}

uint64_t sub_1B8BCCEAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6588, &unk_1B8C2DB50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B8BCCF1C()
{
  result = qword_1EBAA7D90;
  if (!qword_1EBAA7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7D90);
  }

  return result;
}

uint64_t sub_1B8BCCF70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B8B5115C;

  return sub_1B8BCAF10(a1, v4, v5, v6);
}

unint64_t sub_1B8BCD024()
{
  result = qword_1EBAA7D98;
  if (!qword_1EBAA7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7D98);
  }

  return result;
}

uint64_t sub_1B8BCD078(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t keypath_set_46Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_1B8BCD12C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1B8C258B8();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1B8C258B8();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1B8BCC090(result);

  return sub_1B8BCC950(v4, v2, 0);
}

unint64_t sub_1B8BCD228()
{
  result = qword_1EBAA7DA8;
  if (!qword_1EBAA7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7DA8);
  }

  return result;
}

unint64_t sub_1B8BCD280()
{
  result = qword_1EBAA7DB0;
  if (!qword_1EBAA7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7DB0);
  }

  return result;
}

uint64_t sub_1B8BCD2DC()
{
  v1 = *(type metadata accessor for BatchInteraction(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1B8BC49C8(v2, v3);
}

uint64_t sub_1B8BCD458()
{
  v1 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_serverErrorDetails;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1B8BCD530(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_serverErrorDetails;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B8BCD588(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_serverErrorDetails;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

id sub_1B8BCD69C()
{
  v1 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_underlyingError;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1B8BCD750(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_underlyingError;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1B8BCD7A8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_underlyingError;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

char *sub_1B8BCD868(void *a1)
{
  *&v1[OBJC_IVAR____TtC8Feedback18FBKSubmissionError_serverErrorDetails] = 0;
  *&v1[OBJC_IVAR____TtC8Feedback18FBKSubmissionError_underlyingError] = a1;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for FBKSubmissionError();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v18, sel_init);
  v5 = [v3 userInfo];
  v6 = sub_1B8C25098();

  v7 = *MEMORY[0x1E699C6F8];
  v8 = sub_1B8C25128();
  if (!*(v6 + 16))
  {

LABEL_7:

    goto LABEL_8;
  }

  v10 = sub_1B8B5E2DC(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {

    goto LABEL_7;
  }

  sub_1B8B5FDD4(*(v6 + 56) + 32 * v10, v17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E00, &qword_1B8C2DFA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    return v4;
  }

  v13 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_serverErrorDetails;
  swift_beginAccess();
  v14 = *&v4[v13];
  *&v4[v13] = v16;

  return v4;
}

uint64_t sub_1B8BCDAC8()
{
  v1 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_underlyingError;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = [v2 description];
  v4 = sub_1B8C25128();

  return v4;
}

uint64_t static FBKSubmissionError.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EBAA7DC0 = a1;
  return result;
}

void sub_1B8BCDCC0(void *a1)
{
  v3 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_serverErrorDetails;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    v4 = *(v1 + v3);

    v5 = sub_1B8C25088();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1B8C250F8();
  [a1 encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  v7 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_underlyingError;
  swift_beginAccess();
  v8 = [*(v1 + v7) domain];
  if (!v8)
  {
    sub_1B8C25128();
    v8 = sub_1B8C250F8();
  }

  v9 = [*(v1 + v7) code];
  v10 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:v8 code:v9 userInfo:0];

  v11 = sub_1B8C250F8();
  [a1 encodeObject:v10 forKey:v11];
}

id FBKSubmissionError.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1B8BCE1F4();

  return v4;
}

id FBKSubmissionError.init(coder:)(void *a1)
{
  v2 = sub_1B8BCE1F4();

  return v2;
}

id FBKSubmissionError.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FBKSubmissionError.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBKSubmissionError();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *_s8Feedback18FBKSubmissionErrorC16debugDescriptionACSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E08, &qword_1B8C2DFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8C2A740;
  v5 = *MEMORY[0x1E696A278];
  *(inited + 32) = sub_1B8C25128();
  *(inited + 40) = v6;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v7 = sub_1B8B5F49C(inited);
  swift_setDeallocating();
  sub_1B8B3433C(inited + 32, &unk_1EBAA7E10, &qword_1B8C2DFB8);
  sub_1B8BA1F7C(v7);

  v8 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v9 = sub_1B8C250F8();
  v10 = sub_1B8C25088();

  v11 = [v8 initWithDomain:v9 code:-1 userInfo:v10];

  v12 = objc_allocWithZone(type metadata accessor for FBKSubmissionError());
  return sub_1B8BCD868(v11);
}

id sub_1B8BCE1F4()
{
  v1 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_serverErrorDetails;
  *&v0[OBJC_IVAR____TtC8Feedback18FBKSubmissionError_serverErrorDetails] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA7DE0, &unk_1B8C2FC70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B8C293F0;
  *(v2 + 32) = sub_1B8B46130(0, &unk_1EBAA8870, 0x1E695DF20);
  *(v2 + 40) = sub_1B8B46130(0, &qword_1EBAA72A0, 0x1E696AEC0);
  *(v2 + 48) = sub_1B8B46130(0, &qword_1EBAA88A0, 0x1E696AD98);
  sub_1B8C255B8();

  if (v9)
  {
    sub_1B8B5FE40(&v8, &v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E00, &qword_1B8C2DFA8);
    swift_dynamicCast();
    v3 = v6;
  }

  else
  {
    sub_1B8B3433C(&v8, &unk_1EBAA7DF0, &unk_1B8C2D750);
    v3 = 0;
  }

  swift_beginAccess();
  v4 = *&v0[v1];
  *&v0[v1] = v3;

  sub_1B8B46130(0, &qword_1EBAA72E0, 0x1E696ABC0);
  result = sub_1B8C255A8();
  if (result)
  {
    *&v0[OBJC_IVAR____TtC8Feedback18FBKSubmissionError_underlyingError] = result;
    v7.receiver = v0;
    v7.super_class = type metadata accessor for FBKSubmissionError();
    return objc_msgSendSuper2(&v7, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t View.inlineFeedback(controller:completion:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v30 = a6;
  v31 = a7;
  v29 = a8;
  v15 = type metadata accessor for FBKEvaluationViewModifier();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v17 + 20);
  *(v19 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DB8, &unk_1B8C2A510);
  swift_storeEnumTagMultiPayload();
  v33 = a1;
  v34 = a2;
  v35 = a3;

  v21 = a3;
  sub_1B8B247D4(a4);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](&v32, v22);
  v23 = v32;
  if (a4)
  {
    KeyPath = swift_getKeyPath();
    v28 = v9;
    v26[1] = v26;
    MEMORY[0x1EEE9AC00](KeyPath);
    v27 = v21;
    v26[-4] = v23;
    v26[-3] = a4;
    v26[-2] = a5;
    v33 = v23;
    sub_1B8BD0B88(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
    sub_1B8C23578();
    v21 = v27;
    sub_1B8B30A44(a4);
  }

  else
  {
  }

  *v19 = a1;
  v19[1] = a2;
  v19[2] = v21;
  MEMORY[0x1B8CC9900](v19, v30, v15, v31);
  return sub_1B8BD0D84(v19, type metadata accessor for FBKEvaluationViewModifier);
}

{
  if (a4)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;
    sub_1B8B247D4(a4);

    View.inlineFeedback(controller:completion:)(a1, a2, a3, sub_1B8BD0640, v16, a6, a7, a8);

    return sub_1B8B30A44(a4);
  }

  else
  {

    return View.inlineFeedback(controller:completion:)(a1, a2, a3, 0, 0, a6, a7, a8);
  }
}

uint64_t type metadata accessor for FBKEvaluationViewModifier()
{
  result = qword_1EDC855F8;
  if (!qword_1EDC855F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8BCE96C(void *a1, char a2, void (*a3)(uint64_t *))
{
  v30 = a3;
  v5 = type metadata accessor for FBKEvaluation.Response(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E68, &qword_1B8C2E158);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84B0, &unk_1B8C2E160);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v29 - v19);
  if (a2)
  {
    *v20 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v30(v20);
    v22 = &unk_1EBAA84B0;
    v23 = &unk_1B8C2E160;
    v24 = v20;
  }

  else
  {
    v25 = v30;
    sub_1B8BBE208(a1, v16);
    sub_1B8B34450(v16, v14, &qword_1EBAA7E68, &qword_1B8C2E158);
    if ((*(v6 + 48))(v14, 1, v5) == 1)
    {
      sub_1B8B3433C(v14, &qword_1EBAA7E68, &qword_1B8C2E158);
      sub_1B8BD0C60();
      v26 = swift_allocError();
      *v27 = 3;
      *v20 = v26;
      swift_storeEnumTagMultiPayload();
      v25(v20);
      sub_1B8B3433C(v20, &unk_1EBAA84B0, &unk_1B8C2E160);
      v24 = v16;
      v22 = &qword_1EBAA7E68;
      v23 = &qword_1B8C2E158;
    }

    else
    {
      sub_1B8BD0CB4(v14, v9, type metadata accessor for FBKEvaluation.Response);
      sub_1B8BD0D1C(v9, v20, type metadata accessor for FBKEvaluation.Response);
      swift_storeEnumTagMultiPayload();
      v25(v20);
      sub_1B8B3433C(v20, &unk_1EBAA84B0, &unk_1B8C2E160);
      sub_1B8BD0D84(v9, type metadata accessor for FBKEvaluation.Response);
      v22 = &qword_1EBAA7E68;
      v23 = &qword_1B8C2E158;
      v24 = v16;
    }
  }

  return sub_1B8B3433C(v24, v22, v23);
}

uint64_t sub_1B8BCECAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B8C242A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DB8, &unk_1B8C2A510);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for FBKEvaluationViewModifier();
  sub_1B8B34450(v1 + *(v12 + 20), v11, &qword_1EBAA6DB8, &unk_1B8C2A510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1B8BD0BD0(v11, a1);
  }

  v14 = *v11;
  sub_1B8C25488();
  v15 = sub_1B8C247B8();
  sub_1B8C23C08();

  sub_1B8C24298();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1B8BCEE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v21[1] = a2;
  v21[2] = a1;
  v4 = type metadata accessor for FBKEvaluationViewModifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1B8BD0D1C(v2, v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FBKEvaluationViewModifier);
  sub_1B8C25368();
  v7 = sub_1B8C25358();
  v8 = *(v5 + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v7;
  *(v10 + 24) = v11;
  sub_1B8BD0CB4(v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for FBKEvaluationViewModifier);
  sub_1B8BD0D1C(v2, v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FBKEvaluationViewModifier);
  v12 = sub_1B8C25358();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  sub_1B8BD0CB4(v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v9, type metadata accessor for FBKEvaluationViewModifier);
  sub_1B8C24E78();
  sub_1B8BD0D1C(v3, v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FBKEvaluationViewModifier);
  v14 = swift_allocObject();
  sub_1B8BD0CB4(v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + ((v8 + 16) & ~v8), type metadata accessor for FBKEvaluationViewModifier);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E30, &qword_1B8C2E0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E38, &qword_1B8C2E0B0);
  sub_1B8BD0AB4();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7E40, &qword_1B8C2E0B8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7E48, &qword_1B8C2E0C0);
  v17 = sub_1B8BD0B18();
  v22 = &type metadata for FeedbackFormView;
  v23 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v16;
  v23 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v22 = v15;
  v23 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1B8C24BD8();
}

void sub_1B8BCF1D4(char **a1@<X2>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v14 = *a1;
  v15 = v4;
  v16 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](&v13);
  v7 = v13;
  swift_getKeyPath();
  v14 = v7;
  sub_1B8BD0B88(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v8 = v7[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented];

  if (v8 != 1)
  {
    goto LABEL_4;
  }

  v14 = v3;
  v15 = v4;
  v16 = v5;
  MEMORY[0x1B8CC9B00](&v13, v6);
  v9 = v13;
  swift_getKeyPath();
  v14 = v9;
  sub_1B8C23588();

  v10 = *&v9[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__interaction];
  v11 = v10;

  if (v10)
  {

    v12 = 1;
  }

  else
  {
LABEL_4:
    v12 = 0;
  }

  *a2 = v12;
}

void sub_1B8BCF35C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v9 = *a4;
  v10 = *(a4 + 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](&v8, v5);
  v6 = v8;
  if (v4 == v8[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented])
  {
    v8[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented] = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9 = v6;
    sub_1B8BD0B88(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8BCF4B0()
{
  sub_1B8C24F58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E38, &qword_1B8C2E0B0);
  sub_1B8C23F08();
}

void sub_1B8BCF534(char **a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v44 = sub_1B8C24648();
  v46 = *(v44 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E50, &qword_1B8C2E0C8);
  v5 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v47 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E28, &qword_1B8C2E050);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v43 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v39 - v14;
  v16 = *a1;
  v15 = a1[1];
  v17 = a1[2];
  v49 = *a1;
  v50 = v15;
  v51 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](&v52);
  v19 = v52;
  swift_getKeyPath();
  v49 = v19;
  sub_1B8BD0B88(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v20 = *&v19[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__interaction];
  v21 = v20;

  if (v20)
  {
    v49 = v16;
    v50 = v15;
    v51 = v17;
    MEMORY[0x1B8CC9B00](&v52, v18);
    v22 = v52;
    v23 = sub_1B8BF1BDC();

    if (v23)
    {
      v40 = v21;
      v24 = v45;
      sub_1B8BCECAC(v45);
      v25 = v46;
      v26 = v44;
      (*(v46 + 104))(v13, *MEMORY[0x1E697FF38], v44);
      (*(v25 + 56))(v13, 0, 1, v26);
      v27 = *(v42 + 48);
      v28 = v47;
      sub_1B8B34450(v24, v47, &qword_1EBAA7E28, &qword_1B8C2E050);
      v29 = v28;
      sub_1B8B34450(v13, v28 + v27, &qword_1EBAA7E28, &qword_1B8C2E050);
      v30 = *(v25 + 48);
      if (v30(v28, 1, v26) == 1)
      {
        sub_1B8B3433C(v13, &qword_1EBAA7E28, &qword_1B8C2E050);
        v31 = v47;
        sub_1B8B3433C(v24, &qword_1EBAA7E28, &qword_1B8C2E050);
        v32 = v30(v31 + v27, 1, v26);
        v21 = v40;
        if (v32 == 1)
        {
          sub_1B8B3433C(v31, &qword_1EBAA7E28, &qword_1B8C2E050);
          v33 = 1;
LABEL_11:
          sub_1B8BCFAE8(v21, v33 & 1, v48);

          return;
        }
      }

      else
      {
        sub_1B8B34450(v28, v43, &qword_1EBAA7E28, &qword_1B8C2E050);
        v34 = v30(v28 + v27, 1, v26);
        v21 = v40;
        if (v34 != 1)
        {
          v35 = v46;
          v36 = v41;
          (*(v46 + 32))(v41, v29 + v27, v26);
          sub_1B8BD0B88(&qword_1EBAA7E58, MEMORY[0x1E697FF50]);
          v37 = v43;
          v33 = sub_1B8C250E8();
          v38 = *(v35 + 8);
          v38(v36, v26);
          sub_1B8B3433C(v13, &qword_1EBAA7E28, &qword_1B8C2E050);
          sub_1B8B3433C(v45, &qword_1EBAA7E28, &qword_1B8C2E050);
          v38(v37, v26);
          sub_1B8B3433C(v47, &qword_1EBAA7E28, &qword_1B8C2E050);
          goto LABEL_11;
        }

        sub_1B8B3433C(v13, &qword_1EBAA7E28, &qword_1B8C2E050);
        v31 = v47;
        sub_1B8B3433C(v45, &qword_1EBAA7E28, &qword_1B8C2E050);
        (*(v46 + 8))(v43, v26);
      }

      sub_1B8B3433C(v31, &qword_1EBAA7E50, &qword_1B8C2E0C8);
      v33 = 0;
      goto LABEL_11;
    }

    v33 = 0;
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1B8BCFAE8@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v50 = a3;
  v51 = sub_1B8C24798();
  v49 = *(v51 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E60, &qword_1B8C2E0F8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v41 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E48, &qword_1B8C2E0C0);
  v42 = *(v44 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E40, &qword_1B8C2E0B8);
  v45 = *(v15 - 8);
  v46 = v15;
  v16 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v43 = &v41 - v17;
  v47 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6F90, &qword_1B8C2ABD8);
    v18 = sub_1B8C24408();
    v19 = *(v18 - 8);
    v20 = *(v19 + 72);
    v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1B8C27920;
    sub_1B8C243E8();
    v53 = *v4;
    v54 = *(v4 + 8);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
    MEMORY[0x1B8CC9B00](v52, v23);
    v24 = v52[0];
    (*(v19 + 16))(v22 + v21 + v20, v52[0] + OBJC_IVAR____TtC8Feedback23FBKEvaluationController_customSmallDetentForSwiftUI, v18);

    sub_1B8B8ACD4(v22);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  v25 = *v4;
  v26 = *(v4 + 8);
  v27 = *(v4 + 16);
  v53 = v25;
  *&v54 = v26;
  *(&v54 + 1) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](v52);
  v28 = v52[0];
  v52[3] = a1;
  v52[4] = v52[0];
  v53 = v25;
  *&v54 = v26;
  *(&v54 + 1) = v27;
  v29 = a1;
  sub_1B8C24E68();
  v30 = v52[0];
  v31 = v52[1];
  v32 = v52[2];
  swift_getKeyPath();
  v53 = v30;
  *&v54 = v31;
  *(&v54 + 1) = v32;
  sub_1B8C24E58();

  v33 = sub_1B8BD0B18();
  v34 = v41;
  sub_1B8C24B48();

  sub_1B8B3433C(v12, &qword_1EBAA7E60, &qword_1B8C2E0F8);

  v53 = &type metadata for FeedbackFormView;
  *&v54 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v43;
  v36 = v44;
  sub_1B8C24BA8();
  (*(v42 + 8))(v34, v36);
  v38 = v48;
  if (v47)
  {
    sub_1B8C24778();
  }

  else
  {
    sub_1B8C24788();
  }

  v53 = v36;
  *&v54 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v39 = v46;
  sub_1B8C24BB8();
  (*(v49 + 8))(v38, v51);
  return (*(v45 + 8))(v37, v39);
}

uint64_t sub_1B8BD0044@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BD0B88(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v4 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__swiftUIDetent;
  swift_beginAccess();
  v5 = sub_1B8C24408();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1B8BD013C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1B8C24408();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_1B8BE7024(v7);
}

id sub_1B8BD0230@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BD0B88(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v4 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__interaction);
  *a2 = v4;

  return v4;
}

void sub_1B8BD02F0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1B8BE72B4(v2);
}

uint64_t sub_1B8BD0320@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BD0B88(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v4 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler);
  v5 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B8BD0E24;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1B8B247D4(v4);
}

uint64_t sub_1B8BD0418(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B8BD0DE4;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1B8B247D4(v3);
  sub_1B8BD0B88(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23578();
  sub_1B8B30A44(v6);
}

uint64_t sub_1B8BD0598(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E28, &qword_1B8C2E050);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B8B34450(a1, &v6 - v4, &qword_1EBAA7E28, &qword_1B8C2E050);
  return sub_1B8C24198();
}

void sub_1B8BD0674()
{
  sub_1B8BD06F8();
  if (v0 <= 0x3F)
  {
    sub_1B8BD0750();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8BD06F8()
{
  if (!qword_1EDC85640)
  {
    type metadata accessor for FBKEvaluationController(255);
    v0 = sub_1B8C24E88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC85640);
    }
  }
}

void sub_1B8BD0750()
{
  if (!qword_1EDC85650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7E28, &qword_1B8C2E050);
    v0 = sub_1B8C23D98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC85650);
    }
  }
}

void sub_1B8BD07D0(char *a1@<X8>)
{
  v3 = *(type metadata accessor for FBKEvaluationViewModifier() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  sub_1B8BCF1D4(v6, a1);
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = (type metadata accessor for FBKEvaluationViewModifier() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 8);

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DB8, &unk_1B8C2A510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1B8C24648();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v6 + v9, 1, v10))
    {
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  else
  {
    v12 = *(v6 + v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1B8BD09D0(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for FBKEvaluationViewModifier() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1B8BCF35C(a1, v4, v5, v6);
}

uint64_t sub_1B8BD0A44()
{
  v0 = *(*(type metadata accessor for FBKEvaluationViewModifier() - 8) + 80);

  return sub_1B8BCF4B0();
}

unint64_t sub_1B8BD0AB4()
{
  result = qword_1EDC85648;
  if (!qword_1EDC85648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7E30, &qword_1B8C2E0A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC85648);
  }

  return result;
}

unint64_t sub_1B8BD0B18()
{
  result = qword_1EDC85638;
  if (!qword_1EDC85638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC85638);
  }

  return result;
}

uint64_t sub_1B8BD0B88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8BD0BD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E28, &qword_1B8C2E050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B8BD0C60()
{
  result = qword_1EBAA7E70;
  if (!qword_1EBAA7E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7E70);
  }

  return result;
}

uint64_t sub_1B8BD0CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8BD0D1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8BD0D84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B8BD0DE4(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_1B8BD0E24(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_1B8BD0E80(uint64_t a1)
{
  v2 = sub_1B8BD100C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8BD0EBC(uint64_t a1)
{
  v2 = sub_1B8BD100C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKFeedbackDraftLaunchController.IntroductionPage.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E78, &unk_1B8C2E170);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8BD100C();
  sub_1B8C25B18();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1B8BD100C()
{
  result = qword_1EBAA7E80;
  if (!qword_1EBAA7E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7E80);
  }

  return result;
}

uint64_t sub_1B8BD10B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E78, &unk_1B8C2E170);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8BD100C();
  sub_1B8C25B18();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1B8BD11C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_introductionPages;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_1B8BD122C()
{
  v1 = OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_introductionPages;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1B8BD1274(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_introductionPages;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id FBKFeedbackDraftLaunchController.__allocating_init(feedbackForm:introductionPages:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_introductionPages;
  *&v5[OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_introductionPages] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_form] = a1;
  swift_beginAccess();
  *&v5[v6] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id FBKFeedbackDraftLaunchController.init(feedbackForm:introductionPages:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_introductionPages;
  *&v2[OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_introductionPages] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_form] = a1;
  swift_beginAccess();
  *&v2[v4] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for FBKFeedbackDraftLaunchController();
  return objc_msgSendSuper2(&v6, sel_init);
}

void sub_1B8BD1464(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_form;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1B8BD14C4()
{
  v1 = OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_form;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

id FBKFeedbackDraftLaunchController.__allocating_init(feedbackForm:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_introductionPages] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_form] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id FBKFeedbackDraftLaunchController.init(feedbackForm:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_introductionPages] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_form] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FBKFeedbackDraftLaunchController();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1B8BD15D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v16 - v6;
  v8 = OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_form;
  swift_beginAccess();
  v9 = *(v1 + v8);
  sub_1B8BFF590(v7);

  v10 = sub_1B8C23498();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v7, v10);
  }

  sub_1B8BD17D0(v7);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1B8C257E8();

  v16[3] = 0xD000000000000024;
  v16[4] = 0x80000001B8C35AC0;
  v13 = (*(v2 + v8) + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier);
  swift_beginAccess();
  v15 = *v13;
  v14 = v13[1];

  MEMORY[0x1B8CC9EB0](v15, v14);

  result = sub_1B8C258A8();
  __break(1u);
  return result;
}

uint64_t sub_1B8BD17D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id FBKFeedbackDraftLaunchController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FBKFeedbackDraftLaunchController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBKFeedbackDraftLaunchController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B8BD1AB4()
{
  result = qword_1EBAA7E98;
  if (!qword_1EBAA7E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7E98);
  }

  return result;
}

unint64_t sub_1B8BD1B0C()
{
  result = qword_1EBAA7EA0;
  if (!qword_1EBAA7EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7EA0);
  }

  return result;
}

void NSUserDefaults.authenticationMethod.getter(char *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1B8C250F8();
  v4 = [v2 stringForKey_];

  if (v4)
  {
    v5 = sub_1B8C25128();
    v7 = v6;

    v8 = v5 == 1701736302 && v7 == 0xE400000000000000;
    if (v8 || (sub_1B8C25A08() & 1) != 0)
    {

      v9 = 0;
    }

    else if (v5 == 0x6C616E6F6974706FLL && v7 == 0xE800000000000000)
    {

      v9 = 1;
    }

    else
    {
      v11 = sub_1B8C25A08();

      if (v11)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }
    }
  }

  else
  {
    v9 = 2;
  }

  *a1 = v9;
}

uint64_t sub_1B8BD1CE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B8BD1D28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_1B8BD1DD0()
{
  sub_1B8B46130(319, &qword_1EBAA6220, 0x1E69DCAB8);
  if (v0 <= 0x3F)
  {
    sub_1B8C237B8();
    if (v1 <= 0x3F)
    {
      sub_1B8BD8DF0(319, &qword_1EBAA7EB8, &type metadata for ListPreviewer.Content.Section, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8BD1EE8()
{
  type metadata accessor for ListPreviewer.Content(319);
  if (v0 <= 0x3F)
  {
    sub_1B8BD8604(319, &qword_1EBAA6800, type metadata accessor for FullScreenPreviewController);
    if (v1 <= 0x3F)
    {
      sub_1B8BD8DF0(319, &qword_1EBAA5DE8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B8BD1FE0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1B8C25AB8();
  if (!a4)
  {
    v6 = 0;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v6 = 1;
LABEL_5:
    MEMORY[0x1B8CCA790](v6);
    goto LABEL_8;
  }

  MEMORY[0x1B8CCA790](2);
  sub_1B8C255F8();
  if (!a3)
  {
    sub_1B8C25AD8();
    return sub_1B8C25AF8();
  }

  sub_1B8C25AD8();
LABEL_8:
  sub_1B8C251B8();
  return sub_1B8C25AF8();
}

uint64_t sub_1B8BD20B8()
{
  v2 = *v0;
  v1 = v0[1];
  if (!*(v0 + 24))
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 24) == 1)
  {
    v3 = 1;
LABEL_5:
    MEMORY[0x1B8CCA790](v3);
    goto LABEL_8;
  }

  v4 = v0[2];
  MEMORY[0x1B8CCA790](2);
  sub_1B8C255F8();
  if (!v4)
  {
    return sub_1B8C25AD8();
  }

  sub_1B8C25AD8();
LABEL_8:

  return sub_1B8C251B8();
}

uint64_t sub_1B8BD2188()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1B8C25AB8();
  if (!v4)
  {
    v5 = 0;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = 1;
LABEL_5:
    MEMORY[0x1B8CCA790](v5);
    goto LABEL_8;
  }

  MEMORY[0x1B8CCA790](2);
  sub_1B8C255F8();
  if (!v3)
  {
    sub_1B8C25AD8();
    return sub_1B8C25AF8();
  }

  sub_1B8C25AD8();
LABEL_8:
  sub_1B8C251B8();
  return sub_1B8C25AF8();
}

uint64_t sub_1B8BD226C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B8C25AB8();
  sub_1B8C251B8();
  sub_1B8BD76E8(v5, v3);
  return sub_1B8C25AF8();
}

void *sub_1B8BD22D0(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1B8C251B8();

  return sub_1B8BD76E8(a1, v5);
}

uint64_t sub_1B8BD2314()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B8C25AB8();
  sub_1B8C251B8();
  sub_1B8BD76E8(v5, v3);
  return sub_1B8C25AF8();
}

uint64_t sub_1B8BD2374(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B8C25A08() & 1) == 0)
  {
    return 0;
  }

  return sub_1B8B446D0(v2, v3);
}

uint64_t sub_1B8BD23E8(uint64_t a1)
{
  v3 = v1;
  sub_1B8C25AB8();
  v4 = *v1;
  sub_1B8C255F8();
  v5 = *(a1 + 20);
  sub_1B8C237B8();
  sub_1B8BD7984(&qword_1EBAA64E0, MEMORY[0x1E699C390]);
  sub_1B8C250C8();
  sub_1B8BD74F8(v7, *(v3 + *(a1 + 24)));
  return sub_1B8C25AF8();
}

uint64_t sub_1B8BD24A4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v2;
  sub_1B8C255F8();
  v7 = *(a2 + 20);
  sub_1B8C237B8();
  sub_1B8BD7984(&qword_1EBAA64E0, MEMORY[0x1E699C390]);
  sub_1B8C250C8();
  v8 = *(v4 + *(a2 + 24));

  return sub_1B8BD74F8(a1, v8);
}

uint64_t sub_1B8BD2558(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1B8C25AB8();
  v5 = *v2;
  sub_1B8C255F8();
  v6 = *(a2 + 20);
  sub_1B8C237B8();
  sub_1B8BD7984(&qword_1EBAA64E0, MEMORY[0x1E699C390]);
  sub_1B8C250C8();
  sub_1B8BD74F8(v8, *(v4 + *(a2 + 24)));
  return sub_1B8C25AF8();
}

uint64_t sub_1B8BD2610(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
  v6 = *a1;
  v7 = *a2;
  if ((sub_1B8C255E8() & 1) == 0 || (MEMORY[0x1B8CC8470](a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);

  return sub_1B8B445D0(v9, v10);
}

uint64_t sub_1B8BD26B0@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v2 = type metadata accessor for ListPreviewer(0);
  v3 = *(v2 - 8);
  v73 = v2 - 8;
  v81 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v82 = v5;
  v83 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1B8C24698();
  v79 = *(v80 - 8);
  v6 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v72 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1B8C23FC8();
  v68 = *(v67 - 8);
  v8 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7EE8, &qword_1B8C2E550);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v65 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7EF0, &qword_1B8C2E558);
  v16 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v18 = &v65 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7EF8, &qword_1B8C2E560);
  v71 = *(v19 - 8);
  v20 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v66 = &v65 - v21;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7F00, &qword_1B8C2E568);
  v74 = *(v76 - 8);
  v22 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v70 = &v65 - v23;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7F08, &qword_1B8C2E570);
  v77 = *(v78 - 8);
  v24 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v75 = &v65 - v25;
  v85 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7F10, &qword_1B8C2E578);
  v26 = v1;
  sub_1B8B34CFC(&qword_1EBAA7F18, &qword_1EBAA7F10, &qword_1B8C2E578);
  sub_1B8C24968();
  sub_1B8C23FB8();
  sub_1B8B34CFC(&qword_1EBAA7F20, &qword_1EBAA7EE8, &qword_1B8C2E550);
  v27 = v67;
  sub_1B8C24C58();
  (*(v68 + 8))(v10, v27);
  (*(v12 + 8))(v15, v11);
  LOBYTE(v27) = sub_1B8C247F8();
  sub_1B8C23D18();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7F28, &qword_1B8C2E580) + 36)];
  *v36 = v27;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  LOBYTE(v27) = sub_1B8C24828();
  sub_1B8C23D18();
  v37 = v69;
  v38 = &v18[*(v69 + 36)];
  *v38 = v27;
  *(v38 + 1) = v39;
  *(v38 + 2) = v40;
  *(v38 + 3) = v41;
  *(v38 + 4) = v42;
  v38[40] = 0;
  v43 = sub_1B8BD91F8(&qword_1EBAA7F30, &qword_1EBAA7EF0, &qword_1B8C2E558, sub_1B8BD79D4);
  v44 = v66;
  sub_1B8C24B98();
  sub_1B8B2C7B8(v18);
  v45 = *(v73 + 32);
  v73 = v26;
  v46 = (v26 + v45);
  v47 = *v46;
  v48 = *(v46 + 1);
  LOBYTE(v86) = v47;
  v87 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EE0, &qword_1B8C27CA8);
  sub_1B8C24D68();
  v86 = v37;
  v87 = v43;
  v49 = v72;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = MEMORY[0x1E69E6370];
  v52 = MEMORY[0x1E69E6388];
  v53 = v70;
  sub_1B8C24B88();
  (*(v71 + 8))(v44, v19);
  sub_1B8C24688();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7F40, &qword_1B8C2E588);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8C27920;
  v55 = sub_1B8C247E8();
  *(inited + 32) = v55;
  v56 = sub_1B8C247C8();
  *(inited + 33) = v56;
  sub_1B8C247D8();
  sub_1B8C247D8();
  if (sub_1B8C247D8() != v55)
  {
    sub_1B8C247D8();
  }

  sub_1B8C247D8();
  if (sub_1B8C247D8() != v56)
  {
    sub_1B8C247D8();
  }

  v86 = v19;
  v87 = v51;
  v88 = OpaqueTypeConformance2;
  v89 = v52;
  swift_getOpaqueTypeConformance2();
  v57 = v75;
  v58 = v76;
  sub_1B8C24B18();
  (*(v79 + 8))(v49, v80);
  (*(v74 + 8))(v53, v58);
  v59 = v83;
  sub_1B8BD7E20(v73, v83, type metadata accessor for ListPreviewer);
  v60 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v61 = swift_allocObject();
  sub_1B8BD81DC(v59, v61 + v60, type metadata accessor for ListPreviewer);
  v62 = v84;
  (*(v77 + 32))(v84, v57, v78);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7F48, &qword_1B8C2E590);
  v64 = (v62 + *(result + 36));
  *v64 = sub_1B8BD7AF0;
  v64[1] = v61;
  v64[2] = 0;
  v64[3] = 0;
  return result;
}

uint64_t sub_1B8BD2FF4@<X0>(void **a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for ListPreviewer(0);
  v44 = *(v3 - 8);
  v43[1] = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7F50, &qword_1B8C2E598);
  v46 = *(v48 - 8);
  v6 = *(v46 + 64);
  v7 = MEMORY[0x1EEE9AC00](v48);
  v47 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v52 = v43 - v9;
  v10 = type metadata accessor for ImageWithPreview();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7F58, &unk_1B8C2E5A0);
  v51 = *(v45 - 8);
  v14 = v51[8];
  v15 = MEMORY[0x1EEE9AC00](v45);
  v50 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v43 - v17;
  v19 = *a1;
  v20 = type metadata accessor for ListPreviewer.Content(0);
  v21 = *(v20 + 20);
  v22 = *(v10 + 20);
  v23 = sub_1B8C237B8();
  (*(*(v23 - 8) + 16))(&v13[v22], a1 + v21, v23);
  *v13 = v19;
  v24 = &v13[*(v10 + 24)];
  type metadata accessor for FullScreenPreviewController(0);
  sub_1B8BD7984(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController);
  v25 = v19;
  *v24 = sub_1B8C23DA8();
  v24[8] = v26 & 1;
  sub_1B8C23DF8();
  sub_1B8BD7984(&qword_1EBAA7F60, type metadata accessor for ImageWithPreview);
  v27 = v18;
  v43[0] = v18;
  sub_1B8C24B08();
  sub_1B8BD7CD0(v13);
  v53 = *(a1 + *(v20 + 24));
  swift_getKeyPath();
  sub_1B8BD7E20(a1, v5, type metadata accessor for ListPreviewer);
  v28 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v29 = swift_allocObject();
  sub_1B8BD81DC(v5, v29 + v28, type metadata accessor for ListPreviewer);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7F68, &qword_1B8C2E5C8);
  type metadata accessor for ListSection(0);
  sub_1B8B34CFC(&qword_1EBAA7F70, &qword_1EBAA7F68, &qword_1B8C2E5C8);
  sub_1B8BD7DCC();
  sub_1B8BD7984(&qword_1EBAA7F80, type metadata accessor for ListSection);
  v30 = v52;
  sub_1B8C24EB8();
  v31 = v50;
  v32 = v51[2];
  v33 = v45;
  v32(v50, v27, v45);
  v35 = v46;
  v34 = v47;
  v36 = *(v46 + 16);
  v37 = v48;
  v36(v47, v30, v48);
  v38 = v49;
  v32(v49, v31, v33);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7F88, &qword_1B8C2E5D0);
  v36(&v38[*(v39 + 48)], v34, v37);
  v40 = *(v35 + 8);
  v40(v52, v37);
  v41 = v51[1];
  v41(v43[0], v33);
  v40(v34, v37);
  return v41(v50, v33);
}

uint64_t sub_1B8BD35E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  sub_1B8BD7E20(a2, a3, type metadata accessor for ListPreviewer.Content);
  v7 = (a3 + *(type metadata accessor for ListSection(0) + 20));
  *v7 = v5;
  v7[1] = v4;
  v7[2] = v6;
}

uint64_t sub_1B8BD3664(uint64_t a1)
{
  v27 = a1;
  v29 = sub_1B8C24FD8();
  v32 = *(v29 - 8);
  v1 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B8C25008();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ListPreviewer(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = sub_1B8C25028();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v26 = sub_1B8C25538();
  sub_1B8C25018();
  sub_1B8C25078();
  v28 = *(v12 + 8);
  v28(v16, v11);
  sub_1B8BD7E20(v27, &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListPreviewer);
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  sub_1B8BD81DC(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for ListPreviewer);
  aBlock[4] = sub_1B8BD7C2C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_8;
  v21 = _Block_copy(aBlock);

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BD7984(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B34CFC(&qword_1EBAA69D0, &qword_1EBAA77D0, &qword_1B8C2B2A0);
  v22 = v29;
  sub_1B8C256D8();
  v23 = v26;
  MEMORY[0x1B8CCA1C0](v18, v7, v3, v21);
  _Block_release(v21);

  (*(v32 + 8))(v3, v22);
  (*(v30 + 8))(v7, v31);
  return (v28)(v18, v11);
}

uint64_t sub_1B8BD3AF0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ListPreviewer(0) + 24));
  v2 = *v1;
  v3 = *(v1 + 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EE0, &qword_1B8C27CA8);
  sub_1B8C24D68();
  sub_1B8C24D78();
}

unint64_t sub_1B8BD3BEC()
{
  result = qword_1EBAA7ED8;
  if (!qword_1EBAA7ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7ED8);
  }

  return result;
}

unint64_t sub_1B8BD3C44()
{
  result = qword_1EBAA7EE0;
  if (!qword_1EBAA7EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7EE0);
  }

  return result;
}

uint64_t sub_1B8BD3C98()
{
  result = type metadata accessor for ListSection(0);
  v2 = 0;
  v3 = *(v0 + *(result + 20) + 16);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = v3 + 32 * v2;
  while (1)
  {
    if (v4 == v2)
    {
      return v5;
    }

    if (v2 >= *(v3 + 16))
    {
      break;
    }

    v7 = (v6 + 32);
    ++v2;
    v8 = *(v6 + 56);
    v6 += 32;
    if (!v8)
    {
      v10 = *v7;
      v9 = v7[1];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B8B5D1AC(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_1B8B5D1AC((v11 > 1), v12 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v12 + 1;
      v13 = v5 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8BD3D9C()
{
  result = type metadata accessor for ListSection(0);
  v2 = 0;
  v3 = *(v0 + *(result + 20) + 16);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = v3 + 32 * v2;
  while (1)
  {
    if (v4 == v2)
    {
      return v5;
    }

    if (v2 >= *(v3 + 16))
    {
      break;
    }

    v7 = v6 + 32;
    ++v2;
    v8 = *(v6 + 56);
    v6 += 32;
    if (v8)
    {
      v9 = *v7;
      v10 = *(v7 + 8);
      v11 = *(v7 + 16);
      sub_1B8B46850(*v7, v10, v11, v8);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B8B5D784(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1B8B5D784((v12 > 1), v13 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 32 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v10;
      *(v14 + 48) = v11;
      *(v14 + 56) = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8BD3EC0(uint64_t a1)
{
  v2 = sub_1B8C23A28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7FB0, &qword_1B8C2E640);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - v9;
  *v10 = sub_1B8C24478();
  *(v10 + 1) = 0x4020000000000000;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7FE0, &qword_1B8C2E658);
  sub_1B8BD40CC(a1, &v10[*(v11 + 44)]);
  if (qword_1EBAA59A0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_1EBAB3A60);
  (*(v3 + 16))(v6, v12, v2);
  v14[1] = sub_1B8C24CE8();
  *&v10[*(v7 + 36)] = sub_1B8C24E28();
  sub_1B8C23DF8();
  sub_1B8BD80D8();
  sub_1B8C24B08();
  return sub_1B8B3433C(v10, &qword_1EBAA7FB0, &qword_1B8C2E640);
}

uint64_t sub_1B8BD40CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for ListSection(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7FE8, &qword_1B8C2E660);
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v43 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v38 - v11;
  v12 = type metadata accessor for TextRow(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7FF0, &qword_1B8C2E668);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v39 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - v21;
  v23 = *(sub_1B8BD3C98() + 16);

  if (v23)
  {
    v24 = sub_1B8BD3C98();
    *&v16[*(v12 + 24)] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7FF8, &qword_1B8C2E6A0);
    v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    swift_storeEnumTagMultiPayload();
    *v16 = v24;
    *(v16 + 1) = swift_getKeyPath();
    v16[16] = 0;
    sub_1B8BD81DC(v16, v22, type metadata accessor for TextRow);
    (*(v13 + 56))(v22, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v22, 1, 1, v12);
  }

  v45 = sub_1B8BD3D9C();
  swift_getKeyPath();
  sub_1B8BD7E20(a1, v6, type metadata accessor for ListSection);
  v25 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v26 = swift_allocObject();
  sub_1B8BD81DC(v6, v26 + v25, type metadata accessor for ListSection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8000, &qword_1B8C2E6E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8008, &qword_1B8C2E6F0);
  sub_1B8B34CFC(&qword_1EBAA8010, &qword_1EBAA8000, &qword_1B8C2E6E8);
  sub_1B8BD82C4();
  sub_1B8BD8318();
  v27 = v40;
  sub_1B8C24EB8();
  v28 = v22;
  v29 = v39;
  sub_1B8B34450(v22, v39, &qword_1EBAA7FF0, &qword_1B8C2E668);
  v31 = v41;
  v30 = v42;
  v32 = *(v41 + 16);
  v33 = v43;
  v32(v43, v27, v42);
  v34 = v44;
  sub_1B8B34450(v29, v44, &qword_1EBAA7FF0, &qword_1B8C2E668);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8048, &qword_1B8C2E708);
  v32((v34 + *(v35 + 48)), v33, v30);
  v36 = *(v31 + 8);
  v36(v27, v30);
  sub_1B8B3433C(v28, &qword_1EBAA7FF0, &qword_1B8C2E668);
  v36(v33, v30);
  return sub_1B8B3433C(v29, &qword_1EBAA7FF0, &qword_1B8C2E668);
}

uint64_t sub_1B8BD460C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8040, &qword_1B8C2E700);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5CD0, &qword_1B8C278C8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8050, &qword_1B8C2E710);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v41 - v16;
  v18 = *(a1 + 24);
  if (*(a1 + 24))
  {
    v41[3] = a3;
    v20 = *a1;
    v19 = *(a1 + 8);
    if (v18 == 1)
    {
      *&v45 = *a1;
      *(&v45 + 1) = v19;
      sub_1B8B34CA8();

      v21 = sub_1B8C249E8();
      v41[2] = v6;
      v23 = v22;
      v25 = v24;
      v26 = sub_1B8C248C8();
      (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
      sub_1B8C24908();
      sub_1B8B3433C(v13, &qword_1EBAA5CD0, &qword_1B8C278C8);
      v41[1] = v14;
      v27 = sub_1B8C249B8();
      v29 = v28;
      v31 = v30;
      v33 = v32;

      sub_1B8B34060(v21, v23, v25 & 1);

      *&v42 = v27;
      *(&v42 + 1) = v29;
      *&v43 = v31 & 1;
      *(&v43 + 1) = v33;
      v44 = 1;
      sub_1B8B34694(v27, v29, v31 & 1);

      sub_1B8C24598();
      v34 = v47;
      v35 = v46;
      *v17 = v45;
      *(v17 + 1) = v35;
      v17[32] = v34;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8030, &qword_1B8C2E6F8);
      sub_1B8BD83D0();
      sub_1B8B34CFC(&qword_1EBAA8038, &qword_1EBAA8040, &qword_1B8C2E700);
      sub_1B8C24598();
      sub_1B8B34060(v27, v29, v31 & 1);
    }

    else
    {
      v39 = *(a1 + 16);
      *v9 = sub_1B8C242E8();
      *(v9 + 1) = 0;
      v9[16] = 1;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8058, &qword_1B8C2E718);
      sub_1B8BD4B18(v20, a2, v19, v39, &v9[*(v40 + 44)]);
      sub_1B8B34450(v9, v17, &qword_1EBAA8040, &qword_1B8C2E700);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8030, &qword_1B8C2E6F8);
      sub_1B8BD83D0();
      sub_1B8B34CFC(&qword_1EBAA8038, &qword_1EBAA8040, &qword_1B8C2E700);
      sub_1B8C24598();
      return sub_1B8B3433C(v9, &qword_1EBAA8040, &qword_1B8C2E700);
    }
  }

  else
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    sub_1B8C24598();
    v37 = v47;
    v38 = v46;
    *v17 = v45;
    *(v17 + 1) = v38;
    v17[32] = v37;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8030, &qword_1B8C2E6F8);
    sub_1B8BD83D0();
    sub_1B8B34CFC(&qword_1EBAA8038, &qword_1EBAA8040, &qword_1B8C2E700);
    return sub_1B8C24598();
  }
}

uint64_t sub_1B8BD4B18@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a3;
  v47 = a5;
  v8 = sub_1B8C23A28();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8060, &qword_1B8C2E720);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v50 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - v17;
  v19 = *(type metadata accessor for ListPreviewer.Content(0) + 20);
  v20 = type metadata accessor for ImageWithPreview();
  v21 = *(v20 + 20);
  v22 = sub_1B8C237B8();
  (*(*(v22 - 8) + 16))(&v18[v21], a2 + v19, v22);
  *v18 = a1;
  v23 = &v18[*(v20 + 24)];
  type metadata accessor for FullScreenPreviewController(0);
  sub_1B8BD7984(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController);
  v24 = a1;
  *v23 = sub_1B8C23DA8();
  v23[8] = v25 & 1;
  sub_1B8C24F48();
  sub_1B8C23E38();
  v26 = &v18[*(v13 + 44)];
  v27 = v54;
  *v26 = v53;
  *(v26 + 1) = v27;
  *(v26 + 2) = v55;
  if (a4)
  {
    v51 = v46;
    v52 = a4;
    sub_1B8B34CA8();

    a4 = sub_1B8C249E8();
    v29 = v28;
    v31 = v30;
    v33 = v32 & 1;
    sub_1B8B34694(a4, v28, v32 & 1);
  }

  else
  {
    v29 = 0;
    v33 = 0;
    v31 = 0;
  }

  v34 = sub_1B8C24D08();
  if (qword_1EBAA59B0 != -1)
  {
    swift_once();
  }

  v35 = v49;
  v36 = __swift_project_value_buffer(v49, qword_1EBAB3A90);
  (*(v48 + 16))(v11, v36, v35);
  v37 = sub_1B8C24CE8();
  v38 = v50;
  v49 = v18;
  sub_1B8B34450(v18, v50, &qword_1EBAA8060, &qword_1B8C2E720);
  v39 = v47;
  sub_1B8B34450(v38, v47, &qword_1EBAA8060, &qword_1B8C2E720);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8068, &qword_1B8C2E728);
  v41 = (v39 + v40[12]);
  *v41 = a4;
  v41[1] = v29;
  v41[2] = v33;
  v41[3] = v31;
  v42 = v39 + v40[16];
  *v42 = 0;
  *(v42 + 8) = 1;
  v43 = (v39 + v40[20]);
  sub_1B8BD8454(a4, v29, v33, v31);

  sub_1B8BD8498(a4, v29, v33, v31);
  *v43 = v34;
  v43[1] = v37;
  sub_1B8B3433C(v49, &qword_1EBAA8060, &qword_1B8C2E720);

  sub_1B8BD8498(a4, v29, v33, v31);
  return sub_1B8B3433C(v38, &qword_1EBAA8060, &qword_1B8C2E720);
}

uint64_t sub_1B8BD4F60(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v4 = *v2;
  v5 = v2[1];
  sub_1B8B34CA8();

  sub_1B8C249E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7FA8, &qword_1B8C2E638);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7FB0, &qword_1B8C2E640);
  sub_1B8BD80D8();
  swift_getOpaqueTypeConformance2();
  return sub_1B8C24ED8();
}

uint64_t sub_1B8BD506C()
{
  v1 = v0;
  sub_1B8C23568();
  sub_1B8BD7984(&qword_1EBAA6230, MEMORY[0x1E69695A8]);
  sub_1B8C250C8();
  v2 = type metadata accessor for TextRow.Row(0);
  v3 = *(v0 + *(v2 + 20));
  MEMORY[0x1B8CCA790](*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_1B8C251B8();

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  v8 = (v1 + *(v2 + 24));
  if (v8[1])
  {
    return sub_1B8C25AD8();
  }

  v10 = *v8;
  sub_1B8C25AD8();
  if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return MEMORY[0x1B8CCA7B0](v11);
}

uint64_t sub_1B8BD5190()
{
  sub_1B8C25AB8();
  sub_1B8BD506C();
  return sub_1B8C25AF8();
}

uint64_t sub_1B8BD51D4()
{
  sub_1B8C25AB8();
  sub_1B8BD506C();
  return sub_1B8C25AF8();
}

uint64_t sub_1B8BD5214()
{
  v1 = type metadata accessor for TextRow.Row(0);
  v93 = *(v1 - 8);
  v94 = v1;
  v2 = *(v93 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v79 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v74 - v5;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7FF8, &qword_1B8C2E6A0);
  v7 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v9 = (&v74 - v8);
  v87 = sub_1B8C24458();
  v10 = *(v87 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1B8C242A8();
  v13 = *(v96 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v0;
  v98 = *v0;

  sub_1B8BD68E8(&v98);
  v16 = v98;
  v17 = *(v98 + 2);
  if (v17)
  {
    v18 = type metadata accessor for TextRow(0);
    v90 = 0;
    v19 = 0;
    v85 = *(v18 + 24);
    v20 = v91[1];
    v97 = *(v91 + 16);
    v92 = (v13 + 8);
    v78 = (v10 + 32);
    v83 = (v10 + 8);
    v84 = v20;
    v21 = v20;
    v22 = v16 + 40;
    v23 = MEMORY[0x1E69E7CC0];
    v24 = 0.0;
    v74 = xmmword_1B8C2A740;
    v82 = v9;
    v76 = v6;
    v81 = v16;
    v77 = v17;
    v75 = v16 + 40;
LABEL_3:
    v25 = 0;
    v80 = (v17 - v19);
    v26 = v24;
    v27 = &v22[16 * v19];
    v89 = v19;
    while (&v25[v19] < *(v16 + 2))
    {
      v28 = *(v27 - 1);
      v29 = *v27;

      v30 = v21;
      if ((v97 & 1) == 0)
      {
        v31 = v84;
        sub_1B8BD8C0C(v84, 0);
        sub_1B8C25488();
        v32 = sub_1B8C247B8();
        sub_1B8C23C08();

        v33 = v95;
        sub_1B8C24298();
        swift_getAtKeyPath();
        sub_1B8BD8C18(v31, 0);
        (*v92)(v33, v96);
        v30 = v98;
      }

      sub_1B8B34450(v91 + v85, v9, &qword_1EBAA7FF8, &qword_1B8C2E6A0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v34 = v87;
        v35 = v86;
        (*v78)();
      }

      else
      {
        v36 = *v9;
        sub_1B8C25488();
        v37 = sub_1B8C247B8();
        sub_1B8C23C08();

        v38 = v95;
        sub_1B8C24298();
        v35 = v86;
        swift_getAtKeyPath();

        (*v92)(v38, v96);
        v34 = v87;
      }

      v24 = sub_1B8BD8954(*&v30, v28, v29, v35);
      v40 = v39;
      v42 = v41;
      (*v83)(v35, v34);
      v43 = v21;
      if ((v97 & 1) == 0)
      {
        v44 = v84;

        sub_1B8C25488();
        v45 = sub_1B8C247B8();
        sub_1B8C23C08();

        v46 = v95;
        sub_1B8C24298();
        swift_getAtKeyPath();
        sub_1B8BD8C18(v44, 0);
        (*v92)(v46, v96);
        v43 = v98;
      }

      v26 = v26 + v24;
      v47 = v90;
      if (*&v43 < v25 * 8.0 + v26 + 16.0)
      {
        v61 = v90 + 1;
        if (__OFADD__(v90, 1))
        {
          goto LABEL_40;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
        v62 = swift_allocObject();
        *(v62 + 16) = v74;
        *(v62 + 32) = v28;
        *(v62 + 40) = v29;
        v63 = v76;
        sub_1B8C23558();
        v64 = v94;
        *(v63 + *(v94 + 20)) = v62;
        v65 = v63 + *(v64 + 24);
        *v65 = v40;
        *(v65 + 8) = v42 & 1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1B8B5D9BC(0, v23[2] + 1, 1, v23);
        }

        v16 = v81;
        v17 = v77;
        v67 = v23[2];
        v66 = v23[3];
        v68 = v89;
        v90 = v61;
        if (v67 >= v66 >> 1)
        {
          v72 = sub_1B8B5D9BC(v66 > 1, v67 + 1, 1, v23);
          v68 = v89;
          v23 = v72;
        }

        v69 = &v25[v68 + 1];
        v70 = (~v68 + v17);
        v23[2] = v67 + 1;
        sub_1B8BD81DC(v63, v23 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v67, type metadata accessor for TextRow.Row);
        v19 = v69;
        v71 = v70 == v25;
        v9 = v82;
        v22 = v75;
        if (v71)
        {
LABEL_35:

          return v23;
        }

        goto LABEL_3;
      }

      if (v90 >= v23[2])
      {
        v48 = v79;
        sub_1B8C23558();
        v49 = v94;
        *(v48 + *(v94 + 20)) = MEMORY[0x1E69E7CC0];
        v50 = v48 + *(v49 + 24);
        *v50 = 0;
        *(v50 + 8) = 1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1B8B5D9BC(0, v23[2] + 1, 1, v23);
        }

        v52 = v23[2];
        v51 = v23[3];
        if (v52 >= v51 >> 1)
        {
          v23 = sub_1B8B5D9BC(v51 > 1, v52 + 1, 1, v23);
        }

        v23[2] = v52 + 1;
        sub_1B8BD81DC(v79, v23 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v52, type metadata accessor for TextRow.Row);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1B8BD74E4(v23);
      }

      if (v47 >= v23[2])
      {
        goto LABEL_39;
      }

      v53 = v23 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v47;
      v54 = *(v94 + 20);
      v55 = *(v53 + v54);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v53 + v54) = v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = sub_1B8B5D1AC(0, *(v55 + 2) + 1, 1, v55);
        *(v53 + v54) = v55;
      }

      v58 = *(v55 + 2);
      v57 = *(v55 + 3);
      v19 = v89;
      if (v58 >= v57 >> 1)
      {
        v60 = sub_1B8B5D1AC((v57 > 1), v58 + 1, 1, v55);
        v19 = v89;
        v55 = v60;
        *(v53 + v54) = v60;
      }

      *(v55 + 2) = v58 + 1;
      v59 = &v55[16 * v58];
      *(v59 + 4) = v28;
      *(v59 + 5) = v29;
      ++v25;
      v27 += 2;
      v9 = v82;
      v16 = v81;
      if (v80 == v25)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1B8BD5B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TextRow.Row(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  *a2 = sub_1B8C242E8();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA80E0, &qword_1B8C2E7B0) + 44);
  v12[1] = *(a1 + *(v5 + 28));
  swift_getKeyPath();
  sub_1B8BD7E20(a1, v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextRow.Row);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_1B8BD81DC(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for TextRow.Row);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7478, &qword_1B8C2BC80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA80E8, &qword_1B8C2E7D0);
  sub_1B8B34CFC(&qword_1EBAA80F0, &qword_1EBAA7478, &qword_1B8C2BC80);
  sub_1B8BD87E8();
  return sub_1B8C24EB8();
}

double sub_1B8BD5D78@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *(type metadata accessor for TextChip(0) + 20);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7FF8, &qword_1B8C2E6A0);
  swift_storeEnumTagMultiPayload();
  *a3 = v6;
  a3[1] = v5;
  v8 = (a2 + *(type metadata accessor for TextRow.Row(0) + 24));
  v9 = *v8;
  v10 = *(v8 + 8);

  sub_1B8C24F48();
  sub_1B8C23E38();
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA80E8, &qword_1B8C2E7D0) + 36));
  *v11 = v13;
  v11[1] = v14;
  result = *&v15;
  v11[2] = v15;
  return result;
}

uint64_t sub_1B8BD5E6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B8C242A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7FF8, &qword_1B8C2E6A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for TextChip(0);
  sub_1B8B34450(v1 + *(v12 + 20), v11, &qword_1EBAA7FF8, &qword_1B8C2E6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1B8C24458();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1B8C25488();
    v16 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1B8BD6074@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1B8C24478();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA80B0, &qword_1B8C2E798) + 44);
  sub_1B8BD5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA80B8, &qword_1B8C2E7A0);
  sub_1B8C23568();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA80C0, &qword_1B8C2E7A8);
  sub_1B8B34CFC(&qword_1EBAA80C8, &qword_1EBAA80B8, &qword_1B8C2E7A0);
  sub_1B8B34CFC(&qword_1EBAA80D0, &qword_1EBAA80C0, &qword_1B8C2E7A8);
  sub_1B8BD7984(&qword_1EBAA80D8, type metadata accessor for TextRow.Row);
  return sub_1B8C24EC8();
}

double sub_1B8BD6200@<D0>(uint64_t a1@<X8>)
{
  v57 = sub_1B8C24458();
  v3 = *(v57 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v6 = &v53[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1B8C23A28();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v1[1];
  *&v66 = *v1;
  *(&v66 + 1) = v12;
  sub_1B8B34CA8();

  v13 = sub_1B8C249E8();
  v60 = v14;
  v61 = v13;
  LOBYTE(v12) = v15;
  v59 = v16;
  KeyPath = swift_getKeyPath();
  sub_1B8C24F48();
  sub_1B8C24088();
  *&v62[55] = v69;
  *&v62[71] = v70;
  *&v62[87] = v71;
  *&v62[103] = v72;
  *&v62[7] = v66;
  *&v62[23] = v67;
  v17 = v12 & 1;
  v64 = v17;
  v63 = 1;
  *&v62[39] = v68;
  v56 = sub_1B8C24808();
  sub_1B8C23D18();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v65 = 0;
  if (qword_1EBAA59C0 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v7, qword_1EBAB3AC0);
  v27 = *(v8 + 16);
  v27(v11, v26, v7);
  v55 = sub_1B8C24CE8();
  v54 = sub_1B8C24808();
  if (qword_1EBAA59A8 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v7, qword_1EBAB3A78);
  v27(v11, v28, v7);
  v29 = sub_1B8C24CE8();
  sub_1B8BD5E6C(v6);
  v30 = sub_1B8C24448();
  v31 = sub_1B8BD66FC(v6, v30);
  v33 = v32;

  (*(v3 + 8))(v6, v57);
  if (v33)
  {
    v34 = 14.0;
  }

  else
  {
    v34 = v31 * 1.5 + 12.0;
  }

  v35 = [objc_opt_self() systemFontOfSize_];
  v36 = sub_1B8C24948();
  v37 = swift_getKeyPath();
  v38 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8158, &qword_1B8C2E948) + 36));
  v39 = *(sub_1B8C24078() + 20);
  v40 = *MEMORY[0x1E697F468];
  v41 = sub_1B8C24418();
  (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
  __asm { FMOV            V0.2D, #8.0 }

  *v38 = _Q0;
  *&v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA61A8, &unk_1B8C2CE50) + 36)] = 256;
  v47 = *&v62[80];
  *(a1 + 113) = *&v62[64];
  *(a1 + 129) = v47;
  *(a1 + 145) = *&v62[96];
  v48 = *&v62[16];
  *(a1 + 49) = *v62;
  *(a1 + 65) = v48;
  result = *&v62[32];
  v50 = *&v62[48];
  *(a1 + 81) = *&v62[32];
  v51 = v60;
  *a1 = v61;
  *(a1 + 8) = v51;
  *(a1 + 16) = v17;
  v52 = KeyPath;
  *(a1 + 24) = v59;
  *(a1 + 32) = v52;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 160) = *&v62[111];
  *(a1 + 97) = v50;
  *(a1 + 168) = v56;
  *(a1 + 176) = v19;
  *(a1 + 184) = v21;
  *(a1 + 192) = v23;
  *(a1 + 200) = v25;
  *(a1 + 208) = 0;
  *(a1 + 216) = v55;
  *(a1 + 224) = v54;
  *(a1 + 232) = v29;
  *(a1 + 240) = v37;
  *(a1 + 248) = v36;
  return result;
}

uint64_t sub_1B8BD66FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_1B8C24458() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_1B8BD7984(&qword_1EBAA8110, MEMORY[0x1E697F6A0]);
  v7 = 0;
  while ((sub_1B8C250E8() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1B8BD6820(uint64_t a1)
{
  v2 = sub_1B8C24458();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1B8C24108();
}

uint64_t sub_1B8BD68E8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B8BACC10(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B8BD6954(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B8BD6954(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B8C259D8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B8C252F8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B8BD6B58(v7, v8, a1, v4);
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
    return sub_1B8BD6A4C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B8BD6A4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 16 * a3);
    v7 = result - a3;
LABEL_5:
    v8 = (v5 + 16 * v4);
    v9 = *v8;
    v10 = v8[1];
    v19 = v7;
    v20 = v6;
    while (1)
    {
      v11 = *(v6 - 2);
      v12 = *(v6 - 1);

      v13 = sub_1B8C251C8();
      v14 = sub_1B8C251C8();

      if (v13 >= v14)
      {
LABEL_4:
        ++v4;
        v6 = v20 + 2;
        v7 = v19 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v15 = *v6;
      v16 = v6[1];
      *v6 = *(v6 - 1);
      *(v6 - 1) = v16;
      *(v6 - 2) = v15;
      v6 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B8BD6B58(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v106 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v7 = *v106;
    if (!*v106)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_1B8BACA34(v8);
      v8 = result;
    }

    v95 = *(v8 + 2);
    if (v95 >= 2)
    {
      while (*a3)
      {
        v96 = v8;
        v8 = (v95 - 1);
        v97 = *&v96[16 * v95];
        v98 = *&v96[16 * v95 + 24];
        sub_1B8BD7208((*a3 + 16 * v97), (*a3 + 16 * *&v96[16 * v95 + 16]), (*a3 + 16 * v98), v7);
        if (v5)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_1B8BACA34(v96);
        }

        if (v95 - 2 >= *(v96 + 2))
        {
          goto LABEL_115;
        }

        v99 = &v96[16 * v95];
        *v99 = v97;
        *(v99 + 1) = v98;
        result = sub_1B8BAC9A8(v95 - 1);
        v8 = v96;
        v95 = *(v96 + 2);
        if (v95 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    if (v7 + 1 >= v6)
    {
      v6 = v7 + 1;
    }

    else
    {
      v104 = v5;
      v10 = (*a3 + 16 * (v7 + 1));
      v11 = *v10;
      v12 = v10[1];
      v107 = 16 * v7;
      v13 = (*a3 + 16 * v7);
      v15 = *v13;
      v16 = v13[1];
      v14 = v13 + 5;

      v111 = sub_1B8C251C8();
      v109 = sub_1B8C251C8();

      v102 = v7;
      v17 = v7 + 2;
      while (v6 != v17)
      {
        v18 = *(v14 - 1);
        v19 = *v14;
        v20 = v8;
        v22 = *(v14 - 3);
        v21 = *(v14 - 2);

        v7 = sub_1B8C251C8();
        v23 = sub_1B8C251C8();

        v8 = v20;

        ++v17;
        v14 += 2;
        if (v111 < v109 == v7 >= v23)
        {
          v6 = v17 - 1;
          break;
        }
      }

      v9 = v102;
      v5 = v104;
      v24 = v107;
      if (v111 < v109)
      {
        if (v6 < v102)
        {
          goto LABEL_118;
        }

        if (v102 < v6)
        {
          v25 = 0;
          v26 = 16 * v6;
          v27 = v102;
          do
          {
            if (v27 != v6 + v25 - 1)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v28 = (v32 + v24);
              v29 = v32 + v26;
              v30 = *v28;
              v31 = v28[1];
              *v28 = *(v29 - 16);
              *(v29 - 16) = v30;
              *(v29 - 8) = v31;
            }

            ++v27;
            --v25;
            v26 -= 16;
            v24 += 16;
          }

          while (v27 < v6 + v25);
        }
      }
    }

    v33 = a3[1];
    if (v6 < v33)
    {
      if (__OFSUB__(v6, v9))
      {
        goto LABEL_117;
      }

      if (v6 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v33)
        {
          v7 = a3[1];
        }

        else
        {
          v7 = v9 + a4;
        }

        if (v7 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v6 != v7)
        {
          break;
        }
      }
    }

    v7 = v6;
    if (v6 < v9)
    {
      goto LABEL_116;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B8B5D890(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v35 = *(v8 + 2);
    v34 = *(v8 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_1B8B5D890((v34 > 1), v35 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v36;
    v37 = &v8[16 * v35];
    *(v37 + 4) = v9;
    *(v37 + 5) = v7;
    v38 = *v106;
    if (!*v106)
    {
      goto LABEL_126;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v8 + 4);
          v41 = *(v8 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_48:
          if (v43)
          {
            goto LABEL_105;
          }

          v56 = &v8[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_108;
          }

          v62 = &v8[16 * v39 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_112;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v66 = &v8[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_62:
        if (v61)
        {
          goto LABEL_107;
        }

        v69 = &v8[16 * v39];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_69:
        v77 = v39 - 1;
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v78 = *&v8[16 * v77 + 32];
        v79 = *&v8[16 * v39 + 40];
        sub_1B8BD7208((*a3 + 16 * v78), (*a3 + 16 * *&v8[16 * v39 + 32]), (*a3 + 16 * v79), v38);
        if (v5)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B8BACA34(v8);
        }

        if (v77 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v80 = &v8[16 * v77];
        *(v80 + 4) = v78;
        *(v80 + 5) = v79;
        result = sub_1B8BAC9A8(v39);
        v36 = *(v8 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = &v8[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_103;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_104;
      }

      v51 = &v8[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_106;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_109;
      }

      if (v55 >= v47)
      {
        v73 = &v8[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_89;
    }
  }

  v100 = v8;
  v103 = v9;
  v105 = v5;
  v81 = *a3;
  v82 = (*a3 + 16 * v6);
  v83 = v9 - v6;
  v108 = v7;
LABEL_80:
  v110 = v82;
  v112 = v6;
  v84 = (v81 + 16 * v6);
  v85 = *v84;
  v86 = v84[1];
  v87 = v83;
  while (1)
  {
    v88 = *(v82 - 2);
    v89 = *(v82 - 1);

    v90 = sub_1B8C251C8();
    v91 = sub_1B8C251C8();

    if (v90 >= v91)
    {
LABEL_79:
      v6 = v112 + 1;
      v82 = v110 + 2;
      --v83;
      v7 = v108;
      if (v112 + 1 != v108)
      {
        goto LABEL_80;
      }

      v9 = v103;
      v5 = v105;
      v8 = v100;
      if (v108 < v103)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v81)
    {
      break;
    }

    v92 = *v82;
    v93 = v82[1];
    *v82 = *(v82 - 1);
    *(v82 - 1) = v93;
    *(v82 - 2) = v92;
    v82 -= 2;
    if (__CFADD__(v87++, 1))
    {
      goto LABEL_79;
    }
  }

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
  return result;
}

uint64_t sub_1B8BD7208(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 15;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 4;
  v10 = a3 - a2;
  v11 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 4;
  if (v9 < v11 >> 4)
  {
    v13 = __dst;
    if (__dst != __src || &__src[16 * v9] <= __dst)
    {
      memmove(__dst, __src, 16 * v9);
    }

    if (v7 < 16 || v5 >= v4)
    {
      v5 = v6;
      v14 = &v13[16 * v9];
      goto LABEL_39;
    }

    v14 = &v13[16 * v9];
    while (1)
    {
      v15 = *v5;
      v16 = *(v5 + 1);
      v17 = *v13;
      v18 = *(v13 + 1);

      v19 = sub_1B8C251C8();
      v20 = sub_1B8C251C8();

      if (v19 >= v20)
      {
        break;
      }

      v21 = v5;
      v22 = v6 == v5;
      v5 += 16;
      if (!v22)
      {
        goto LABEL_17;
      }

LABEL_18:
      v6 += 16;
      if (v13 >= v14 || v5 >= v4)
      {
        v5 = v6;
        goto LABEL_39;
      }
    }

    v21 = v13;
    v22 = v6 == v13;
    v13 += 16;
    if (v22)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v6 = *v21;
    goto LABEL_18;
  }

  if (__dst != a2 || &a2[16 * v12] <= __dst)
  {
    v23 = __dst;
    memmove(__dst, a2, 16 * v12);
    __dst = v23;
  }

  v35 = __dst;
  v14 = &__dst[16 * v12];
  if (v10 < 16)
  {
    v13 = __dst;
    goto LABEL_39;
  }

  v13 = __dst;
  if (v5 > v6)
  {
    do
    {
      v34 = v5;
      v33 = v5 - 16;
      v4 -= 16;
      v24 = v14;
      while (1)
      {
        v25 = v4 + 16;
        v26 = *(v14 - 2);
        v27 = *(v14 - 1);
        v14 -= 16;
        v28 = *(v34 - 2);
        v29 = *(v34 - 1);

        v30 = sub_1B8C251C8();
        v31 = sub_1B8C251C8();

        if (v30 < v31)
        {
          break;
        }

        if (v25 != v24)
        {
          *v4 = *v14;
        }

        v4 -= 16;
        v24 = v14;
        v13 = v35;
        if (v14 <= v35)
        {
          v5 = v34;
          goto LABEL_39;
        }
      }

      if (v25 != v34)
      {
        *v4 = *v33;
      }

      v13 = v35;
      v14 = v24;
      if (v24 <= v35)
      {
        break;
      }

      v5 = v33;
    }

    while (v33 > v6);
    v5 = v33;
  }

LABEL_39:
  if (v5 != v13 || v5 >= &v13[(v14 - v13 + (v14 - v13 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v5, v13, 16 * ((v14 - v13) / 16));
  }

  return 1;
}

uint64_t sub_1B8BD74F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8CCA790](v3);
  v21 = v3;
  if (v3)
  {
    v5 = 0;
    v20 = a2 + 32;
    do
    {
      v6 = (v20 + 24 * v5);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];

      sub_1B8C251B8();
      MEMORY[0x1B8CCA790](*(v9 + 16));
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = (v9 + 56);
        do
        {
          v17 = *(v11 - 3);
          v16 = *(v11 - 2);
          v18 = *(v11 - 1);
          if (*v11)
          {
            if (*v11 == 1)
            {
              MEMORY[0x1B8CCA790](1);

              sub_1B8C251B8();
              v12 = v17;
              v13 = v16;
              v14 = v18;
              v15 = 1;
            }

            else
            {
              MEMORY[0x1B8CCA790](2);

              v19 = v17;
              sub_1B8C255F8();
              sub_1B8C25AD8();
              if (v18)
              {
                sub_1B8C251B8();
                v12 = v17;
                v13 = v16;
                v14 = v18;
              }

              else
              {
                v12 = v17;
                v13 = v16;
                v14 = 0;
              }

              v15 = 2;
            }
          }

          else
          {
            MEMORY[0x1B8CCA790](0);

            sub_1B8C251B8();
            v12 = v17;
            v13 = v16;
            v14 = v18;
            v15 = 0;
          }

          sub_1B8B468BC(v12, v13, v14, v15);
          v11 += 32;
          --v10;
        }

        while (v10);
      }

      ++v5;
    }

    while (v5 != v21);
  }

  return result;
}

void *sub_1B8BD76E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8CCA790](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v11 = *(v5 - 3);
      v10 = *(v5 - 2);
      v12 = *(v5 - 1);
      if (*v5)
      {
        if (*v5 == 1)
        {
          MEMORY[0x1B8CCA790](1);

          sub_1B8C251B8();
          v6 = v11;
          v7 = v10;
          v8 = v12;
          v9 = 1;
        }

        else
        {
          MEMORY[0x1B8CCA790](2);

          v13 = v11;
          sub_1B8C255F8();
          sub_1B8C25AD8();
          if (v12)
          {
            sub_1B8C251B8();
            v6 = v11;
            v7 = v10;
            v8 = v12;
          }

          else
          {
            v6 = v11;
            v7 = v10;
            v8 = 0;
          }

          v9 = 2;
        }
      }

      else
      {
        MEMORY[0x1B8CCA790](0);

        sub_1B8C251B8();
        v6 = v11;
        v7 = v10;
        v8 = v12;
        v9 = 0;
      }

      result = sub_1B8B468BC(v6, v7, v8, v9);
      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B8BD7848(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        if (a1 != a5 || a2 != a6)
        {
          goto LABEL_10;
        }

        return 1;
      }
    }

    else if (a8 == 2)
    {
      sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
      if (sub_1B8C255E8())
      {
        if (a3)
        {
          if (a7 && (a2 == a6 && a3 == a7 || (sub_1B8C25A08() & 1) != 0))
          {
            return 1;
          }
        }

        else if (!a7)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (a8)
  {
    return 0;
  }

  if (a1 == a5 && a2 == a6)
  {
    return 1;
  }

LABEL_10:

  return sub_1B8C25A08();
}

uint64_t sub_1B8BD7984(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B8BD79D4()
{
  result = qword_1EBAA7F38;
  if (!qword_1EBAA7F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7F28, &qword_1B8C2E580);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7EE8, &qword_1B8C2E550);
    sub_1B8C23FC8();
    sub_1B8B34CFC(&qword_1EBAA7F20, &qword_1EBAA7EE8, &qword_1B8C2E550);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7F38);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for ListPreviewer(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for ListPreviewer.Content(0);
  v6 = *(v5 + 20);
  v7 = sub_1B8C237B8();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + *(v5 + 24));

  v9 = *(v0 + v3 + v1[7]);

  v10 = *(v0 + v3 + v1[8] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8BD7C44(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ListPreviewer(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B8BD7CD0(uint64_t a1)
{
  v2 = type metadata accessor for ImageWithPreview();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8BD7D2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ListPreviewer(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1B8BD35E0(a1, v6, a2);
}

unint64_t sub_1B8BD7DCC()
{
  result = qword_1EBAA7F78;
  if (!qword_1EBAA7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7F78);
  }

  return result;
}

uint64_t sub_1B8BD7E20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8BD7EB0()
{
  result = type metadata accessor for ListPreviewer.Content(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B8BD7F24()
{
  result = qword_1EBAA7FA0;
  if (!qword_1EBAA7FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7F48, &qword_1B8C2E590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7F00, &qword_1B8C2E568);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7EF8, &qword_1B8C2E560);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7EF0, &qword_1B8C2E558);
    sub_1B8BD91F8(&qword_1EBAA7F30, &qword_1EBAA7EF0, &qword_1B8C2E558, sub_1B8BD79D4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7FA0);
  }

  return result;
}

unint64_t sub_1B8BD80D8()
{
  result = qword_1EBAA7FB8;
  if (!qword_1EBAA7FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7FB0, &qword_1B8C2E640);
    sub_1B8B34CFC(&qword_1EBAA7FC0, &qword_1EBAA7FC8, &qword_1B8C2E648);
    sub_1B8B34CFC(&qword_1EBAA7FD0, &qword_1EBAA7FD8, &qword_1B8C2E650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7FB8);
  }

  return result;
}

uint64_t sub_1B8BD81DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8BD8244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ListSection(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1B8BD460C(a1, v6, a2);
}

unint64_t sub_1B8BD82C4()
{
  result = qword_1EBAA8018;
  if (!qword_1EBAA8018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8018);
  }

  return result;
}

unint64_t sub_1B8BD8318()
{
  result = qword_1EBAA8020;
  if (!qword_1EBAA8020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8008, &qword_1B8C2E6F0);
    sub_1B8BD83D0();
    sub_1B8B34CFC(&qword_1EBAA8038, &qword_1EBAA8040, &qword_1B8C2E700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8020);
  }

  return result;
}

unint64_t sub_1B8BD83D0()
{
  result = qword_1EBAA8028;
  if (!qword_1EBAA8028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8030, &qword_1B8C2E6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8028);
  }

  return result;
}

uint64_t sub_1B8BD8454(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1B8B34694(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1B8BD8498(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1B8B34060(result, a2, a3 & 1);
  }

  return result;
}

void sub_1B8BD8504()
{
  sub_1B8BD8DF0(319, &qword_1EBAA8088, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B8BD8DF0(319, &qword_1EBAA8090, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1B8BD8604(319, &qword_1EBAA8098, MEMORY[0x1E697F6A0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8BD8604(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B8C23D98();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B8BD8658()
{
  result = qword_1EBAA80A0;
  if (!qword_1EBAA80A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA80A8, qword_1B8C2E740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7FB0, &qword_1B8C2E640);
    sub_1B8BD80D8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA80A0);
  }

  return result;
}

double sub_1B8BD8768@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for TextRow.Row(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1B8BD5D78(a1, v6, a2);
}

unint64_t sub_1B8BD87E8()
{
  result = qword_1EBAA80F8;
  if (!qword_1EBAA80F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA80E8, &qword_1B8C2E7D0);
    sub_1B8BD7984(&qword_1EBAA8100, type metadata accessor for TextChip);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA80F8);
  }

  return result;
}

uint64_t sub_1B8BD88C4(uint64_t a1, uint64_t a2)
{
  if ((sub_1B8C23548() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TextRow.Row(0);
  if ((sub_1B8B44024(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

double sub_1B8BD8954(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B8C250F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8108, &qword_1B8C2E7D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8C2A740;
  v8 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v9 = v8;
  v10 = sub_1B8C24448();
  v11 = sub_1B8BD66FC(a4, v10);
  v13 = v12;

  if (v13)
  {
    v14 = 14.0;
  }

  else
  {
    v14 = v11 * 1.5 + 12.0;
  }

  v15 = [objc_opt_self() systemFontOfSize_];
  *(inited + 64) = sub_1B8B46130(0, &qword_1EBAA7838, 0x1E69DB878);
  *(inited + 40) = v15;
  sub_1B8B5F8E4(inited);
  swift_setDeallocating();
  sub_1B8B3433C(inited + 32, &qword_1EBAA66C0, qword_1B8C29590);
  type metadata accessor for Key(0);
  sub_1B8BD7984(&qword_1EBAA5CB8, type metadata accessor for Key);
  v16 = sub_1B8C25088();
  [v6 sizeWithAttributes_];
  v18 = v17;

  if (v18 + 16.0 > a1)
  {
    v20 = CGSizeMake(a1);
    v21 = sub_1B8C25088();

    [v6 boundingRectWithSize:1 options:v21 attributes:0 context:{v20, INFINITY}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v31.origin.x = v23;
    v31.origin.y = v25;
    v31.size.width = v27;
    v31.size.height = v29;
    v19 = CGRectGetWidth(v31) + 16.0;
    v32.origin.x = v23;
    v32.origin.y = v25;
    v32.size.width = v27;
    v32.size.height = v29;
    CGRectGetHeight(v32);
  }

  else
  {

    return v18 + 16.0;
  }

  return v19;
}

uint64_t sub_1B8BD8C0C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1B8BD8C18(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void sub_1B8BD8C4C()
{
  sub_1B8BD8604(319, &qword_1EBAA8098, MEMORY[0x1E697F6A0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B8BD8D0C()
{
  sub_1B8C23568();
  if (v0 <= 0x3F)
  {
    sub_1B8BD8DF0(319, &qword_1EBAA8088, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B8BD8DF0(319, &qword_1EBAA8138, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8BD8DF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1B8BD8EEC()
{
  result = qword_1EBAA8160;
  if (!qword_1EBAA8160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8158, &qword_1B8C2E948);
    sub_1B8BD8FA4();
    sub_1B8B34CFC(&qword_1EBAA61B8, &qword_1EBAA61A8, &unk_1B8C2CE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8160);
  }

  return result;
}

unint64_t sub_1B8BD8FA4()
{
  result = qword_1EBAA8168;
  if (!qword_1EBAA8168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8170, &qword_1B8C2E950);
    sub_1B8BD905C();
    sub_1B8B34CFC(&qword_1EBAA7A48, &unk_1EBAA7A50, &qword_1B8C2D370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8168);
  }

  return result;
}

unint64_t sub_1B8BD905C()
{
  result = qword_1EBAA8178;
  if (!qword_1EBAA8178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8180, &qword_1B8C2E958);
    sub_1B8BD9114();
    sub_1B8B34CFC(&qword_1EBAA6A40, &qword_1EBAA5F98, qword_1B8C29DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8178);
  }

  return result;
}

unint64_t sub_1B8BD9114()
{
  result = qword_1EBAA8188;
  if (!qword_1EBAA8188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8190, &qword_1B8C2E960);
    sub_1B8BD91F8(&qword_1EBAA8198, &qword_1EBAA81A0, &qword_1B8C2E968, sub_1B8BD927C);
    sub_1B8B34CFC(&qword_1EBAA6A30, &qword_1EBAA6A38, &qword_1B8C29DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8188);
  }

  return result;
}

uint64_t sub_1B8BD91F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1B8BD927C()
{
  result = qword_1EBAA81A8;
  if (!qword_1EBAA81A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA81B0, &qword_1B8C2E970);
    sub_1B8BD9308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA81A8);
  }

  return result;
}

unint64_t sub_1B8BD9308()
{
  result = qword_1EBAA81B8;
  if (!qword_1EBAA81B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA81C0, &qword_1B8C2E978);
    sub_1B8B34CFC(&qword_1EBAA81C8, &qword_1EBAA81D0, &qword_1B8C2E980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA81B8);
  }

  return result;
}

id sub_1B8BD93C0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 BOOLForKey_];

  if ((v1 & 1) == 0)
  {
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v2 = sub_1B8C23C38();
    __swift_project_value_buffer(v2, qword_1EBAB3A00);
    v3 = sub_1B8C23C18();
    v4 = sub_1B8C25498();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1B8B22000, v3, v4, "Will not use system account", v5, 2u);
      MEMORY[0x1B8CCB0E0](v5, -1, -1);
    }
  }

  return v1;
}

id sub_1B8BD94E4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 BOOLForKey_];

  if (v1)
  {
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v2 = sub_1B8C23C38();
    __swift_project_value_buffer(v2, qword_1EBAB3A00);
    v3 = sub_1B8C23C18();
    v4 = sub_1B8C25458();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1B8B22000, v3, v4, "Will not use Apple Connect authentication", v5, 2u);
      MEMORY[0x1B8CCB0E0](v5, -1, -1);
    }
  }

  return v1;
}

uint64_t sub_1B8BD9628()
{
  result = sub_1B8C23498();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B8BD96DC()
{
  result = type metadata accessor for WebView.HTMLContent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1B8BD978C()
{
  v1 = v0;
  v2 = sub_1B8C23188();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1B8C23498();
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v29);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for WebView.HTMLContent(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = [objc_allocWithZone(MEMORY[0x1E69853A8]) init];
  [v17 _setColorFilterEnabled_];
  v18 = type metadata accessor for WebView(0);
  [v17 _setDrawsBackground_];
  v19 = [objc_allocWithZone(MEMORY[0x1E69853A0]) initWithFrame:v17 configuration:{0.0, 0.0, 0.0, 0.0}];

  [v19 setUserInteractionEnabled_];
  sub_1B8BD9C7C(v1, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = v29;
    (*(v6 + 32))(v12, v16, v29);
    (*(v6 + 16))(v10, v12, v20);
    sub_1B8C23178();
    v21 = sub_1B8C23168();
    (*(v27 + 8))(v5, v28);

    (*(v6 + 8))(v12, v20);
  }

  else
  {
    v22 = *v16;
    v23 = v16[1];
    v24 = sub_1B8C250F8();
  }

  return v19;
}

uint64_t sub_1B8BD9AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8BD9C38(&qword_1EBAA81F8);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1B8BD9B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8BD9C38(&qword_1EBAA81F8);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1B8BD9BF4()
{
  sub_1B8BD9C38(&qword_1EBAA81F8);
  sub_1B8C24558();
  __break(1u);
}

uint64_t sub_1B8BD9C38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WebView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B8BD9C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebView.HTMLContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8BD9D28()
{
  result = sub_1B8C23528();
  if (v1 <= 0x3F)
  {
    result = sub_1B8C23328();
    if (v2 <= 0x3F)
    {
      result = sub_1B8C23568();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B8BD9E24()
{
  result = sub_1B8C23528();
  if (v1 <= 0x3F)
  {
    result = sub_1B8C23568();
    if (v2 <= 0x3F)
    {
      result = sub_1B8C23328();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1B8BD9ED4()
{
  result = qword_1EBAA6230;
  if (!qword_1EBAA6230)
  {
    sub_1B8C23568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6230);
  }

  return result;
}

uint64_t sub_1B8BD9F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1B8C23568();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B8BD9FA8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return sub_1B8B4435C(v4, v5);
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return sub_1B8B440B4(v4, v5);
}

uint64_t sub_1B8BD9FDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v38 - v13);
  v15 = *(v5 + 16);
  v15(&v38 - v13, a1, v4);
  result = (*(v5 + 88))(v14, v4);
  if (result == *MEMORY[0x1E69C5C98])
  {
    (*(v5 + 96))(v14, v4);
    v18 = *v14;
    v17 = v14[1];
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v19 = sub_1B8C23C38();
    __swift_project_value_buffer(v19, qword_1EBAB3A30);

    v20 = sub_1B8C23C18();
    v21 = sub_1B8C25478();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v42 = v23;
      *v22 = 136446210;
      v24 = sub_1B8B5DD48(v18, v17, &v42);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_1B8B22000, v20, v21, "Response has error: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B8CCB0E0](v23, -1, -1);
      MEMORY[0x1B8CCB0E0](v22, -1, -1);
    }

    else
    {
    }

    sub_1B8BDEEA8();
    swift_allocError();
    *v36 = 9;
    return swift_willThrow();
  }

  else if (result != *MEMORY[0x1E69C5CA0])
  {
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v25 = sub_1B8C23C38();
    __swift_project_value_buffer(v25, qword_1EBAB3A30);
    v15(v12, a1, v4);
    v26 = sub_1B8C23C18();
    v27 = sub_1B8C25478();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v40 = v27;
      v29 = v28;
      v41 = swift_slowAlloc();
      v42 = v41;
      *v29 = 136446210;
      v15(v9, v12, v4);
      v39 = sub_1B8C25178();
      v31 = v30;
      v32 = *(v5 + 8);
      v32(v12, v4);
      v33 = sub_1B8B5DD48(v39, v31, &v42);

      *(v29 + 4) = v33;
      v34 = v29;
      _os_log_impl(&dword_1B8B22000, v26, v40, "Response has unhandled state: %{public}s", v29, 0xCu);
      v35 = v41;
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x1B8CCB0E0](v35, -1, -1);
      MEMORY[0x1B8CCB0E0](v34, -1, -1);
    }

    else
    {

      v32 = *(v5 + 8);
      v32(v12, v4);
    }

    sub_1B8BDEEA8();
    swift_allocError();
    *v37 = 9;
    swift_willThrow();
    return (v32)(v14, v4);
  }

  return result;
}

uint64_t sub_1B8BDA4A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E8, &qword_1B8C2AEF0);
  v0 = sub_1B8C237B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B8C2A740;
  (*(v1 + 104))(v4 + v3, *MEMORY[0x1E699C308], v0);
  v5 = sub_1B8B8A408(v4);
  swift_setDeallocating();
  (*(v1 + 8))(v4 + v3, v0);
  result = swift_deallocClassInstance();
  qword_1EBAB39E8 = v5;
  return result;
}

uint64_t sub_1B8BDA5D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E8, &qword_1B8C2AEF0);
  v0 = sub_1B8C237B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B8C27920;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E699C2E0], v0);
  v6(v5 + v2, *MEMORY[0x1E699C2B0], v0);
  v7 = sub_1B8B8A408(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EBAB39F0 = v7;
  return result;
}

uint64_t sub_1B8BDA718(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C237B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v26 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = v26 - v14;
  v16 = 0;
  v27 = a1;
  v28 = a2;
  v19 = *(a1 + 56);
  v18 = a1 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v5 + 32;
  v26[3] = v5 + 16;
  v26[1] = v5 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v5 + 16))(v15, *(v27 + 48) + *(v5 + 72) * (v25 | (v24 << 6)), v4);
      (*(v5 + 32))(v9, v15, v4);
      sub_1B8BF6F80(v12, v9);
      result = (*(v5 + 8))(v12, v4);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8BDA934()
{
  v0 = sub_1B8C237B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBAA5938 != -1)
  {
    swift_once();
  }

  v5 = qword_1EBAB39E8;
  v6 = qword_1EBAA5940;

  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_1B8BDA718(v7, v5);
  sub_1B8C237C8();
  v9 = sub_1B8B4E0BC(v4, v8);

  (*(v1 + 8))(v4, v0);
  return v9 & 1;
}

uint64_t sub_1B8BDAAA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  v4 = swift_task_alloc();
  *(v2 + 104) = v4;
  *v4 = v2;
  v4[1] = sub_1B8B47300;

  return sub_1B8BDE8F4(v2 + 16, a2);
}

uint64_t sub_1B8BDAB58(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B8C25A08() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B8C25A08() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1B8C25A08() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1B8C25A08() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for CatchUpDonationDecoder.Result.Mail(0);
  v7 = v6[8];
  if ((sub_1B8C23508() & 1) == 0)
  {
    return 0;
  }

  v8 = v6[9];
  if ((sub_1B8C23548() & 1) == 0)
  {
    return 0;
  }

  v9 = v6[10];

  return sub_1B8C23318();
}

uint64_t sub_1B8BDAC74(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B8C25A08() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B8C25A08() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  v7 = v6[6];
  if ((sub_1B8C23508() & 1) == 0)
  {
    return 0;
  }

  v8 = v6[7];
  if ((sub_1B8C23318() & 1) == 0 || *(a1 + v6[8]) != *(a2 + v6[8]))
  {
    return 0;
  }

  v10 = v6[9];

  return sub_1B8C23548();
}

uint64_t sub_1B8BDAD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1B8C23528();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for CatchUpDonationDecoder.Result.Mail(0);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_1B8C23AD8();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_1B8C23AA8();
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8228, &qword_1B8C2EC60);
  v4[18] = v17;
  v18 = *(v17 - 8);
  v4[19] = v18;
  v19 = *(v18 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8230, &qword_1B8C2EC68) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v21 = sub_1B8C23328();
  v4[25] = v21;
  v22 = *(v21 - 8);
  v4[26] = v22;
  v23 = *(v22 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8238, &unk_1B8C2EC70);
  v4[29] = v24;
  v25 = *(v24 - 8);
  v4[30] = v25;
  v26 = *(v25 + 64) + 15;
  v4[31] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v28 = sub_1B8C23BA8();
  v4[33] = v28;
  v29 = *(v28 - 8);
  v4[34] = v29;
  v30 = *(v29 + 64) + 15;
  v4[35] = swift_task_alloc();
  v31 = sub_1B8C23BE8();
  v4[36] = v31;
  v32 = *(v31 - 8);
  v4[37] = v32;
  v33 = *(v32 + 64) + 15;
  v4[38] = swift_task_alloc();
  v34 = sub_1B8C23BD8();
  v4[39] = v34;
  v35 = *(v34 - 8);
  v4[40] = v35;
  v36 = *(v35 + 64) + 15;
  v4[41] = swift_task_alloc();
  v37 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8240, &qword_1B8C2EC80) - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8248, &qword_1B8C2EC88);
  v4[43] = v38;
  v39 = *(v38 - 8);
  v4[44] = v39;
  v40 = *(v39 + 64) + 15;
  v4[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8BDB2D4, 0, 0);
}

uint64_t sub_1B8BDB2D4()
{
  v1 = v0[42];
  v2 = sub_1B8C23A48();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[46] = sub_1B8C23A38();
  v5 = sub_1B8C23BF8();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = *(MEMORY[0x1E69C5C48] + 4);
  v13 = (*MEMORY[0x1E69C5C48] + MEMORY[0x1E69C5C48]);
  v7 = swift_task_alloc();
  v0[47] = v7;
  *v7 = v0;
  v7[1] = sub_1B8BDB3F0;
  v8 = v0[45];
  v9 = v0[42];
  v10 = v0[3];
  v11 = v0[4];

  return v13(v8, v10, v11, v9);
}

uint64_t sub_1B8BDB3F0()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 336);
  v4 = *v0;

  sub_1B8B3433C(v2, &qword_1EBAA8240, &qword_1B8C2EC80);

  return MEMORY[0x1EEE6DFA0](sub_1B8BDB518, 0, 0);
}

uint64_t sub_1B8BDB518()
{
  v1 = v0[41];
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  v6 = v0[33];
  v7 = v0[34];
  v8 = v0[32];
  v222 = v0[31];
  v225 = v0[43];
  v206 = v0[45];
  v214 = v0[5];
  (*(v2 + 104))(v3, *MEMORY[0x1E69C5CB8], v5);
  (*(v7 + 104))(v4, *MEMORY[0x1E69C5CA8], v6);
  sub_1B8C23B38();
  (*(v7 + 8))(v4, v6);
  (*(v2 + 8))(v3, v5);
  sub_1B8C23BB8();
  v9 = sub_1B8C238B8();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  sub_1B8C23908();
  sub_1B8C23BC8();
  v10(v8, 0, 1, v9);
  sub_1B8C23928();
  sub_1B8C23B78();
  sub_1B8BD9FDC(v222, &qword_1EBAA8238, &unk_1B8C2EC70);
  v11 = v0[45];
  v12 = v0[43];
  v13 = v0[25];
  v14 = v0[26];
  v15 = v0[23];
  (*(v0[30] + 8))(v0[31], v0[29]);
  sub_1B8C23B98();
  v16 = *(v14 + 48);
  if (v16(v15, 1, v13) == 1)
  {
    v17 = v0[45];
    v18 = v0[43];
    v19 = v0[25];
    v20 = v0[22];
    sub_1B8C23B68();
    if (v16(v20, 1, v19) == 1)
    {
      v21 = v0[45];
      v22 = v0[43];
      v23 = v0[24];
      v24 = v0[25];
      v25 = v0[22];
      sub_1B8C23B88();
      if (v16(v25, 1, v24) != 1)
      {
        sub_1B8B3433C(v0[22], &qword_1EBAA8230, &qword_1B8C2EC68);
      }
    }

    else
    {
      v29 = v0[25];
      v30 = v0[26];
      v31 = v0[24];
      (*(v30 + 32))(v31, v0[22], v29);
      (*(v30 + 56))(v31, 0, 1, v29);
    }

    v32 = v0[23];
    if (v16(v32, 1, v0[25]) != 1)
    {
      sub_1B8B3433C(v32, &qword_1EBAA8230, &qword_1B8C2EC68);
    }
  }

  else
  {
    v26 = v0[25];
    v27 = v0[26];
    v28 = v0[24];
    (*(v27 + 32))(v28, v0[23], v26);
    (*(v27 + 56))(v28, 0, 1, v26);
  }

  v34 = v0[24];
  v33 = v0[25];
  if (v16(v34, 1, v33) == 1)
  {
    v36 = v0[45];
    v35 = v0[46];
    v38 = v0[43];
    v37 = v0[44];
    v40 = v0[40];
    v39 = v0[41];
    v41 = v0[39];
    sub_1B8B3433C(v34, &qword_1EBAA8230, &qword_1B8C2EC68);
    sub_1B8BDEEA8();
    swift_allocError();
    *v42 = 4;
    swift_willThrow();

    (*(v40 + 8))(v39, v41);
    (*(v37 + 8))(v36, v38);
  }

  else
  {
    v55 = v0[45];
    v56 = v0[43];
    (*(v0[26] + 32))(v0[28], v34, v33);
    result = sub_1B8C23B58();
    v162 = *(result + 16);
    if (!v162)
    {
      v62 = MEMORY[0x1E69E7CC0];
LABEL_32:
      v227 = v62;
      v104 = v0[45];
      v103 = v0[46];
      v105 = v0[44];
      v106 = v0[41];
      v161 = v0[43];
      v163 = v0[42];
      v107 = v0[40];
      v159 = v0[39];
      v165 = v0[38];
      v166 = v0[35];
      v167 = v0[32];
      v170 = v0[31];
      v108 = v0[28];
      v110 = v0[25];
      v109 = v0[26];
      v174 = v0[27];
      v176 = v0[24];
      v179 = v0[23];
      v183 = v0[22];
      v188 = v0[21];
      v195 = v0[20];
      v202 = v0[17];
      v209 = v0[14];
      v217 = v0[11];
      v224 = v0[8];
      v111 = v0[2];

      (*(v109 + 8))(v108, v110);
      (*(v107 + 8))(v106, v159);
      (*(v105 + 8))(v104, v161);
      *v111 = v227;
      *(v111 + 8) = 0;
      *(v111 + 72) = 0;

      v53 = v0[1];
      goto LABEL_12;
    }

    v57 = 0;
    v58 = v0[26];
    v59 = v0[19];
    v60 = v0[16];
    v155 = v0[11];
    v154 = v0[10];
    v153 = v0[9];
    v61 = v0[7];
    v157 = (v60 + 32);
    v158 = (v59 + 96);
    v156 = (v0[13] + 8);
    v152 = (v58 + 16);
    v175 = (v58 + 8);
    v150 = (v61 + 8);
    v151 = (v61 + 16);
    v160 = (v60 + 8);
    v169 = v59;
    v173 = (v59 + 8);
    v62 = MEMORY[0x1E69E7CC0];
    v164 = *MEMORY[0x1E69C5C88];
    v172 = result;
    while (1)
    {
      if (v57 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v64 = v0[20];
      v63 = v0[21];
      v65 = v0[18];
      v66 = *(v169 + 16);
      v66(v63, result + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v57, v65);
      v66(v64, v63, v65);
      v67 = (*(v169 + 88))(v64, v65);
      if (v67 != v164)
      {
        break;
      }

      v68 = v0[20];
      v69 = v0[17];
      v70 = v0[15];
      (*v158)(v68, v0[18]);
      v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8250, &qword_1B8C2EC90) + 48);
      (*v157)(v69, v68, v70);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8258, &qword_1B8C2EC98);
      v73 = (*(*(v72 - 8) + 8))(v68 + v71, v72);
      v74 = MEMORY[0x1B8CC8740](v73);
      if (!v75)
      {
        v120 = v0[46];
        v121 = v0[44];
        v211 = v0[43];
        v219 = v0[45];
        v122 = v0[40];
        v197 = v0[39];
        v204 = v0[41];
        v190 = v0[28];
        v123 = v0[25];
        v124 = v0[21];
        v126 = v0[17];
        v125 = v0[18];
        v127 = v0[15];

        sub_1B8BDEEA8();
        swift_allocError();
        *v128 = 5;
        swift_willThrow();

        (*v160)(v126, v127);
        (*v173)(v124, v125);
        (*v175)(v190, v123);
        (*(v122 + 8))(v204, v197);
        (*(v121 + 8))(v219, v211);
        goto LABEL_11;
      }

      v76 = v74;
      v77 = v75;
      v78 = v0[17];
      v79 = v0[14];
      sub_1B8C23A68();
      v80 = sub_1B8C23AB8();
      if (!v81)
      {
        v82 = v0[14];
        v80 = sub_1B8C23AC8();
        if (!v81)
        {
          v140 = v0[46];
          v141 = v0[44];
          v213 = v0[43];
          v221 = v0[45];
          v142 = v0[40];
          v192 = v0[39];
          v199 = v0[41];
          v180 = v0[25];
          v185 = v0[28];
          v143 = v0[17];
          v168 = v0[18];
          v171 = v0[21];
          v144 = v0[14];
          v145 = v0[15];
          v146 = v0[12];

          sub_1B8BDEEA8();
          swift_allocError();
          *v147 = 10;
          swift_willThrow();

          (*v156)(v144, v146);
          (*v160)(v143, v145);
          (*v173)(v171, v168);
          (*v175)(v185, v180);
          (*(v142 + 8))(v199, v192);
          (*(v141 + 8))(v221, v213);

          goto LABEL_11;
        }
      }

      v216 = v81;
      v223 = v80;
      v83 = v0[17];
      v84 = (*v156)(v0[14], v0[12]);
      v85 = MEMORY[0x1B8CC8720](v84);
      v178 = v57;
      v201 = v77;
      v187 = v76;
      if (v86)
      {
        v87 = v86;
        v208 = v85;
      }

      else
      {

        v208 = v76;
        v87 = v77;
      }

      v88 = v0[27];
      v182 = v0[28];
      v89 = v0[25];
      v90 = v0[17];
      v91 = v0[11];
      v92 = v0[8];
      v194 = v0[6];
      v93 = sub_1B8C23A98();
      v95 = v94;
      sub_1B8C23A88();
      v96 = *v152;
      (*v152)(v88, v182, v89);
      *v91 = v187;
      v155[1] = v201;
      v155[2] = v208;
      v155[3] = v87;
      v155[4] = v93;
      v155[5] = v95;
      v155[6] = v223;
      v155[7] = v216;
      (*v151)(&v91[v153[8]], v92, v194);
      v96(&v91[v153[10]], v88, v89);
      v97 = &v91[v153[9]];
      sub_1B8C23558();
      (*v175)(v88, v89);
      (*v150)(v92, v194);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_1B8B5D050(0, v62[2] + 1, 1, v62);
      }

      v99 = v62[2];
      v98 = v62[3];
      if (v99 >= v98 >> 1)
      {
        v62 = sub_1B8B5D050(v98 > 1, v99 + 1, 1, v62);
      }

      v57 = v178 + 1;
      v100 = v0[21];
      v101 = v0[18];
      v102 = v0[11];
      (*v160)(v0[17], v0[15]);
      (*v173)(v100, v101);
      v62[2] = v99 + 1;
      sub_1B8BDEEFC(v102, v62 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * v99, type metadata accessor for CatchUpDonationDecoder.Result.Mail);
      result = v172;
      if (v162 == v178 + 1)
      {
        goto LABEL_32;
      }
    }

    if (v67 == *MEMORY[0x1E69C5C90])
    {
      v112 = v0[46];
      v113 = v0[44];
      v210 = v0[43];
      v218 = v0[45];
      v114 = v0[40];
      v196 = v0[39];
      v203 = v0[41];
      v189 = v0[28];
      v184 = v0[25];
      v115 = v0[20];
      v116 = v0[21];
      v117 = v0[18];

      v118 = *v173;
      (*v173)(v115, v117);
      sub_1B8BDEEA8();
      swift_allocError();
      *v119 = 6;
      swift_willThrow();

      v118(v116, v117);
      (*v175)(v189, v184);
      (*(v114 + 8))(v203, v196);
      (*(v113 + 8))(v218, v210);
    }

    else
    {
      v129 = *MEMORY[0x1E69C5C80];
      v130 = v67;

      v132 = v0[45];
      v131 = v0[46];
      v133 = v0[44];
      v134 = v0[40];
      v212 = v0[41];
      v220 = v0[43];
      v198 = v0[28];
      v205 = v0[39];
      v191 = v0[25];
      v136 = v0[20];
      v135 = v0[21];
      v137 = v0[18];
      if (v130 == v129)
      {
        v138 = *v173;
        (*v173)(v136, v137);
        sub_1B8BDEEA8();
        swift_allocError();
        *v139 = 7;
        swift_willThrow();

        v138(v135, v137);
        (*v175)(v198, v191);
        (*(v134 + 8))(v212, v205);
        (*(v133 + 8))(v132, v220);
      }

      else
      {
        sub_1B8BDEEA8();
        swift_allocError();
        *v148 = 8;
        swift_willThrow();

        v149 = *v173;
        (*v173)(v135, v137);
        (*v175)(v198, v191);
        (*(v134 + 8))(v212, v205);
        (*(v133 + 8))(v132, v220);
        v149(v136, v137);
      }
    }
  }

LABEL_11:
  v43 = v0[45];
  v45 = v0[41];
  v44 = v0[42];
  v46 = v0[38];
  v47 = v0[35];
  v48 = v0[31];
  v49 = v0[32];
  v51 = v0[27];
  v50 = v0[28];
  v52 = v0[24];
  v177 = v0[23];
  v181 = v0[22];
  v186 = v0[21];
  v193 = v0[20];
  v200 = v0[17];
  v207 = v0[14];
  v215 = v0[11];
  v226 = v0[8];

  v53 = v0[1];
LABEL_12:

  return v53();
}

uint64_t sub_1B8BDC574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1B8C23528();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_1B8C23AD8();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_1B8C23B28();
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8260, &qword_1B8C2ECA0);
  v4[18] = v17;
  v18 = *(v17 - 8);
  v4[19] = v18;
  v19 = *(v18 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8230, &qword_1B8C2EC68) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v21 = sub_1B8C23328();
  v4[25] = v21;
  v22 = *(v21 - 8);
  v4[26] = v22;
  v23 = *(v22 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8268, &qword_1B8C2ECA8);
  v4[29] = v24;
  v25 = *(v24 - 8);
  v4[30] = v25;
  v26 = *(v25 + 64) + 15;
  v4[31] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v28 = sub_1B8C23BA8();
  v4[33] = v28;
  v29 = *(v28 - 8);
  v4[34] = v29;
  v30 = *(v29 + 64) + 15;
  v4[35] = swift_task_alloc();
  v31 = sub_1B8C23BE8();
  v4[36] = v31;
  v32 = *(v31 - 8);
  v4[37] = v32;
  v33 = *(v32 + 64) + 15;
  v4[38] = swift_task_alloc();
  v34 = sub_1B8C23BD8();
  v4[39] = v34;
  v35 = *(v34 - 8);
  v4[40] = v35;
  v36 = *(v35 + 64) + 15;
  v4[41] = swift_task_alloc();
  v37 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8240, &qword_1B8C2EC80) - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8270, &qword_1B8C2ECB0);
  v4[43] = v38;
  v39 = *(v38 - 8);
  v4[44] = v39;
  v40 = *(v39 + 64) + 15;
  v4[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8BDCACC, 0, 0);
}

uint64_t sub_1B8BDCACC()
{
  v1 = v0[42];
  v2 = sub_1B8C23A48();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[46] = sub_1B8C23A38();
  v5 = sub_1B8C23BF8();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = *(MEMORY[0x1E69C5C40] + 4);
  v13 = (*MEMORY[0x1E69C5C40] + MEMORY[0x1E69C5C40]);
  v7 = swift_task_alloc();
  v0[47] = v7;
  *v7 = v0;
  v7[1] = sub_1B8BDCBE8;
  v8 = v0[45];
  v9 = v0[42];
  v10 = v0[3];
  v11 = v0[4];

  return v13(v8, v10, v11, v9);
}

uint64_t sub_1B8BDCBE8()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 336);
  v4 = *v0;

  sub_1B8B3433C(v2, &qword_1EBAA8240, &qword_1B8C2EC80);

  return MEMORY[0x1EEE6DFA0](sub_1B8BDCD10, 0, 0);
}

uint64_t sub_1B8BDCD10()
{
  v1 = v0[41];
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  v6 = v0[33];
  v7 = v0[34];
  v8 = v0[32];
  v199 = v0[31];
  v202 = v0[43];
  v185 = v0[45];
  v192 = v0[5];
  (*(v2 + 104))(v3, *MEMORY[0x1E69C5CB8], v5);
  (*(v7 + 104))(v4, *MEMORY[0x1E69C5CB0], v6);
  sub_1B8C23B48();
  (*(v7 + 8))(v4, v6);
  (*(v2 + 8))(v3, v5);
  sub_1B8C23BB8();
  v9 = sub_1B8C238B8();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  sub_1B8C23908();
  sub_1B8C23BC8();
  v10(v8, 0, 1, v9);
  sub_1B8C23928();
  sub_1B8C23B78();
  sub_1B8BD9FDC(v199, &qword_1EBAA8268, &qword_1B8C2ECA8);
  v11 = v0[45];
  v12 = v0[43];
  v13 = v0[25];
  v14 = v0[26];
  v15 = v0[23];
  (*(v0[30] + 8))(v0[31], v0[29]);
  sub_1B8C23B98();
  v16 = *(v14 + 48);
  if (v16(v15, 1, v13) == 1)
  {
    v17 = v0[45];
    v18 = v0[43];
    v19 = v0[25];
    v20 = v0[22];
    sub_1B8C23B68();
    if (v16(v20, 1, v19) == 1)
    {
      v21 = v0[45];
      v22 = v0[43];
      v23 = v0[24];
      v24 = v0[25];
      v25 = v0[22];
      sub_1B8C23B88();
      if (v16(v25, 1, v24) != 1)
      {
        sub_1B8B3433C(v0[22], &qword_1EBAA8230, &qword_1B8C2EC68);
      }
    }

    else
    {
      v29 = v0[25];
      v30 = v0[26];
      v31 = v0[24];
      (*(v30 + 32))(v31, v0[22], v29);
      (*(v30 + 56))(v31, 0, 1, v29);
    }

    v32 = v0[23];
    if (v16(v32, 1, v0[25]) != 1)
    {
      sub_1B8B3433C(v32, &qword_1EBAA8230, &qword_1B8C2EC68);
    }
  }

  else
  {
    v26 = v0[25];
    v27 = v0[26];
    v28 = v0[24];
    (*(v27 + 32))(v28, v0[23], v26);
    (*(v27 + 56))(v28, 0, 1, v26);
  }

  v34 = v0[24];
  v33 = v0[25];
  if (v16(v34, 1, v33) == 1)
  {
    v36 = v0[45];
    v35 = v0[46];
    v38 = v0[43];
    v37 = v0[44];
    v40 = v0[40];
    v39 = v0[41];
    v41 = v0[39];
    sub_1B8B3433C(v34, &qword_1EBAA8230, &qword_1B8C2EC68);
    sub_1B8BDEEA8();
    swift_allocError();
    *v42 = 4;
    swift_willThrow();

    (*(v40 + 8))(v39, v41);
    (*(v37 + 8))(v36, v38);
LABEL_11:
    v43 = v0[45];
    v45 = v0[41];
    v44 = v0[42];
    v46 = v0[38];
    v47 = v0[35];
    v48 = v0[31];
    v49 = v0[32];
    v51 = v0[27];
    v50 = v0[28];
    v52 = v0[24];
    v164 = v0[23];
    v167 = v0[22];
    v170 = v0[21];
    v173 = v0[20];
    v179 = v0[17];
    v186 = v0[14];
    v193 = v0[11];
    v203 = v0[8];

    v53 = v0[1];
    goto LABEL_12;
  }

  v55 = v0[45];
  v56 = v0[43];
  (*(v0[26] + 32))(v0[28], v34, v33);
  result = sub_1B8C23B58();
  v174 = *(result + 16);
  if (!v174)
  {
    v62 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v205 = v62;
    v98 = v0[45];
    v97 = v0[46];
    v99 = v0[44];
    v100 = v0[41];
    v144 = v0[43];
    v146 = v0[42];
    v101 = v0[40];
    v142 = v0[39];
    v148 = v0[38];
    v150 = v0[35];
    v152 = v0[32];
    v154 = v0[31];
    v102 = v0[28];
    v104 = v0[25];
    v103 = v0[26];
    v155 = v0[27];
    v157 = v0[24];
    v161 = v0[23];
    v169 = v0[22];
    v172 = v0[21];
    v175 = v0[20];
    v181 = v0[17];
    v188 = v0[14];
    v195 = v0[11];
    v201 = v0[8];
    v105 = v0[2];

    (*(v103 + 8))(v102, v104);
    (*(v101 + 8))(v100, v142);
    (*(v99 + 8))(v98, v144);
    *v105 = v205;
    *(v105 + 8) = 1;
    *(v105 + 72) = 0;

    v53 = v0[1];
LABEL_12:

    return v53();
  }

  v57 = 0;
  v58 = v0[26];
  v59 = v0[19];
  v60 = v0[16];
  v143 = v0[11];
  v141 = v0[10];
  v140 = v0[9];
  v61 = v0[7];
  v145 = (v60 + 32);
  v147 = (v59 + 96);
  v151 = (v0[13] + 8);
  v139 = (v58 + 16);
  v171 = (v58 + 8);
  v136 = (v61 + 8);
  v137 = (v61 + 16);
  v149 = (v60 + 8);
  v160 = v59;
  v168 = (v59 + 8);
  v62 = MEMORY[0x1E69E7CC0];
  v153 = *MEMORY[0x1E69C5C88];
  v165 = result;
  v138 = v0;
  while (v57 < *(result + 16))
  {
    v64 = v0[20];
    v63 = v0[21];
    v65 = v0[18];
    v66 = *(v160 + 16);
    v66(v63, result + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v57, v65);
    v66(v64, v63, v65);
    v67 = (*(v160 + 88))(v64, v65);
    v204 = v62;
    if (v67 != v153)
    {
      if (v67 == *MEMORY[0x1E69C5C90])
      {
        v106 = v0[46];
        v107 = v0[44];
        v189 = v0[43];
        v196 = v0[45];
        v108 = v0[40];
        v182 = v0[41];
        v176 = v0[39];
        v158 = v0[25];
        v162 = v0[28];
        v109 = v0[20];
        v110 = v0[21];
        v111 = v0[18];

        v112 = *v168;
        (*v168)(v109, v111);
        sub_1B8BDEEA8();
        swift_allocError();
        *v113 = 6;
        swift_willThrow();

        v112(v110, v111);
        (*v171)(v162, v158);
        (*(v108 + 8))(v182, v176);
        (*(v107 + 8))(v196, v189);
      }

      else
      {
        v114 = *MEMORY[0x1E69C5C80];
        v115 = v67;

        v117 = v0[45];
        v116 = v0[46];
        v118 = v0[44];
        v119 = v0[40];
        v190 = v0[41];
        v197 = v0[43];
        v183 = v0[39];
        v177 = v0[28];
        v166 = v0[25];
        v121 = v0[20];
        v120 = v0[21];
        v122 = v0[18];
        if (v115 == v114)
        {
          v123 = *v168;
          (*v168)(v121, v122);
          sub_1B8BDEEA8();
          swift_allocError();
          *v124 = 7;
          swift_willThrow();

          v123(v120, v122);
          (*v171)(v177, v166);
          (*(v119 + 8))(v190, v183);
          (*(v118 + 8))(v117, v197);
        }

        else
        {
          sub_1B8BDEEA8();
          swift_allocError();
          *v134 = 8;
          swift_willThrow();

          v135 = *v168;
          (*v168)(v120, v122);
          (*v171)(v177, v166);
          (*(v119 + 8))(v190, v183);
          (*(v118 + 8))(v117, v197);
          v135(v121, v122);
        }
      }

      goto LABEL_35;
    }

    v68 = v0[20];
    v69 = v0[17];
    v71 = v0[14];
    v70 = v0[15];
    (*v147)(v68, v0[18]);
    v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8278, &qword_1B8C2ECB8) + 48);
    (*v145)(v69, v68, v70);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8280, &unk_1B8C2ECC0);
    (*(*(v73 - 8) + 8))(v68 + v72, v73);
    sub_1B8C23AE8();
    v74 = sub_1B8C23AB8();
    v200 = v57;
    if (!v75)
    {
      v76 = v0[14];
      v74 = sub_1B8C23AC8();
      if (!v75)
      {
        v125 = v0[46];
        v126 = v0[44];
        v191 = v0[43];
        v198 = v0[45];
        v127 = v0[40];
        v184 = v0[41];
        v178 = v0[39];
        v159 = v0[25];
        v163 = v0[28];
        v156 = v0[21];
        v129 = v0[17];
        v128 = v0[18];
        v131 = v0[14];
        v130 = v0[15];
        v132 = v0[12];

        sub_1B8BDEEA8();
        swift_allocError();
        *v133 = 10;
        swift_willThrow();

        (*v151)(v131, v132);
        (*v149)(v129, v130);
        (*v168)(v156, v128);
        (*v171)(v163, v159);
        (*(v127 + 8))(v184, v178);
        (*(v126 + 8))(v198, v191);
LABEL_35:

        goto LABEL_11;
      }
    }

    v77 = v75;
    v194 = v74;
    v79 = v0[27];
    v78 = v0[28];
    v80 = v0[25];
    v81 = v0[17];
    v82 = v0[14];
    v84 = v0[11];
    v83 = v0[12];
    v85 = v0;
    v86 = v0[8];
    v180 = v78;
    v187 = v85[6];
    (*v151)(v82, v83);
    v87 = sub_1B8C23B08();
    v89 = v88;
    sub_1B8C23AF8();
    v90 = *v139;
    (*v139)(v79, v180, v80);
    LOBYTE(v81) = sub_1B8C23B18();
    *v84 = v87;
    v143[1] = v89;
    v143[2] = v194;
    v143[3] = v77;
    (*v137)(v84 + v140[6], v86, v187);
    v90(v84 + v140[7], v79, v80);
    *(v84 + v140[8]) = v81 & 1;
    v91 = v84 + v140[9];
    sub_1B8C23558();
    (*v171)(v79, v80);
    (*v136)(v86, v187);
    v62 = v204;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_1B8B5D078(0, v204[2] + 1, 1, v204);
    }

    v93 = v62[2];
    v92 = v62[3];
    v0 = v138;
    if (v93 >= v92 >> 1)
    {
      v62 = sub_1B8B5D078(v92 > 1, v93 + 1, 1, v62);
    }

    v57 = v200 + 1;
    v94 = v138[21];
    v95 = v138[18];
    v96 = v138[11];
    (*v149)(v138[17], v138[15]);
    (*v168)(v94, v95);
    v62[2] = v93 + 1;
    sub_1B8BDEEFC(v96, v62 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v93, type metadata accessor for CatchUpDonationDecoder.Result.Message);
    result = v165;
    if (v174 == v200 + 1)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8BDDC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[33] = a2;
  v3[34] = a3;
  v3[32] = a1;
  v4 = sub_1B8C23938();
  v3[35] = v4;
  v5 = *(v4 - 8);
  v3[36] = v5;
  v6 = *(v5 + 64) + 15;
  v3[37] = swift_task_alloc();
  v7 = sub_1B8C237E8();
  v3[38] = v7;
  v8 = *(v7 - 8);
  v3[39] = v8;
  v9 = *(v8 + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8BDDD8C, 0, 0);
}

uint64_t sub_1B8BDDD8C()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v2 + 16))(v1, v0[33], v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x1E699C588])
  {
    v4 = v0[42];
    v5 = v0[43];
    v6 = v0[38];
    v7 = v0[39];
    v8 = v0[37];
    (*(v0[36] + 96))(v8, v0[35]);
    (*(v7 + 32))(v5, v8, v6);
    v9 = *(v7 + 16);
    v9(v4, v5, v6);
    v10 = *(v7 + 88);
    if (v10(v4, v6) == *MEMORY[0x1E699C3B0])
    {
      v11 = v0[42];
      v12 = *(v0[39] + 96);
      v12(v11, v0[38]);
      v13 = *v11;
      if (!*(v13 + 16))
      {
        goto LABEL_26;
      }

      v14 = sub_1B8B5E2DC(0x746F70536C69616DLL, 0xEF4449746867696CLL);
      if (v15)
      {
        v16 = v0[41];
        v17 = v0[38];
        v9(v16, *(v13 + 56) + *(v0[39] + 72) * v14, v17);
        v18 = v10(v16, v17);
        v19 = v0[41];
        if (v18 == *MEMORY[0x1E699C3D0])
        {
          v20 = v0[38];

          v12(v19, v20);
          v21 = *v19;
          v22 = v19[1];
          v0[44] = v22;
          if (qword_1EBAA5978 != -1)
          {
            swift_once();
          }

          v23 = sub_1B8C23C38();
          __swift_project_value_buffer(v23, qword_1EBAB3A30);
          v24 = sub_1B8C23C18();
          v25 = sub_1B8C25468();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            _os_log_impl(&dword_1B8B22000, v24, v25, "found MAIL_KEY on donation", v26, 2u);
            MEMORY[0x1B8CCB0E0](v26, -1, -1);
          }

          v27 = swift_task_alloc();
          v0[45] = v27;
          *v27 = v0;
          v27[1] = sub_1B8BDE438;
          v28 = v0[34];

          return sub_1B8BDAD7C((v0 + 12), v21, v22, v28);
        }

        (*(v0[39] + 8))(v0[41], v0[38]);
      }

      if (*(v13 + 16) && (v35 = sub_1B8B5E2DC(0xD000000000000012, 0x80000001B8C35BB0), (v36 & 1) != 0))
      {
        v37 = v0[40];
        v38 = v0[38];
        v9(v37, *(v13 + 56) + *(v0[39] + 72) * v35, v38);

        v39 = v10(v37, v38);
        v40 = v0[40];
        if (v39 == *MEMORY[0x1E699C3D0])
        {
          v12(v0[40], v0[38]);
          v41 = *v40;
          v42 = v40[1];
          v0[47] = v42;
          if (qword_1EBAA5978 != -1)
          {
            swift_once();
          }

          v43 = sub_1B8C23C38();
          __swift_project_value_buffer(v43, qword_1EBAB3A30);
          v44 = sub_1B8C23C18();
          v45 = sub_1B8C25468();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&dword_1B8B22000, v44, v45, "found MESSAGE_KEY on donation", v46, 2u);
            MEMORY[0x1B8CCB0E0](v46, -1, -1);
          }

          v47 = swift_task_alloc();
          v0[48] = v47;
          *v47 = v0;
          v47[1] = sub_1B8BDE704;
          v48 = v0[34];

          return sub_1B8BDC574((v0 + 2), v41, v42, v48);
        }

        (*(v0[39] + 8))(v0[40], v0[38]);
      }

      else
      {
LABEL_26:
      }

      v49 = v0[43];
      v50 = v0[38];
      v51 = v0[39];
      sub_1B8BDEEA8();
      swift_allocError();
      *v52 = 3;
      swift_willThrow();
      (*(v51 + 8))(v49, v50);
    }

    else
    {
      v31 = v0[43];
      v32 = v0[38];
      v33 = *(v0[39] + 8);
      v33(v0[42], v32);
      sub_1B8BDEEA8();
      swift_allocError();
      *v34 = 2;
      swift_willThrow();
      v33(v31, v32);
    }
  }

  else
  {
    (*(v0[36] + 8))(v0[37], v0[35]);
    sub_1B8BDEEA8();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();
  }

  v54 = v0[42];
  v53 = v0[43];
  v56 = v0[40];
  v55 = v0[41];
  v57 = v0[37];

  v58 = v0[1];

  return v58();
}

uint64_t sub_1B8BDE438()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v9 = *v1;
  *(*v1 + 368) = v0;

  v4 = *(v2 + 352);
  if (v0)
  {

    v5 = sub_1B8BDE650;
  }

  else
  {
    v6 = *(v2 + 144);
    *(v2 + 208) = *(v2 + 128);
    *(v2 + 224) = v6;
    *(v2 + 233) = *(v2 + 153);
    v7 = *(v2 + 112);
    *(v2 + 176) = *(v2 + 96);
    *(v2 + 192) = v7;

    v5 = sub_1B8BDE574;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B8BDE574()
{
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);
  v4 = *(v0 + 296);
  v5 = *(v0 + 256);
  (*(*(v0 + 312) + 8))(*(v0 + 344), *(v0 + 304));
  *v5 = *(v0 + 176);
  v6 = *(v0 + 192);
  v7 = *(v0 + 208);
  v8 = *(v0 + 224);
  *(v5 + 57) = *(v0 + 233);
  v5[2] = v7;
  v5[3] = v8;
  v5[1] = v6;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1B8BDE650()
{
  (*(v0[39] + 8))(v0[43], v0[38]);
  v1 = v0[46];
  v3 = v0[42];
  v2 = v0[43];
  v5 = v0[40];
  v4 = v0[41];
  v6 = v0[37];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B8BDE704()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v9 = *v1;
  *(*v1 + 392) = v0;

  v4 = *(v2 + 376);
  if (v0)
  {

    v5 = sub_1B8BDE840;
  }

  else
  {
    v6 = *(v2 + 64);
    *(v2 + 208) = *(v2 + 48);
    *(v2 + 224) = v6;
    *(v2 + 233) = *(v2 + 73);
    v7 = *(v2 + 32);
    *(v2 + 176) = *(v2 + 16);
    *(v2 + 192) = v7;

    v5 = sub_1B8BDF110;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B8BDE840()
{
  (*(v0[39] + 8))(v0[43], v0[38]);
  v1 = v0[49];
  v3 = v0[42];
  v2 = v0[43];
  v5 = v0[40];
  v4 = v0[41];
  v6 = v0[37];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B8BDE8F4(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6280, &unk_1B8C285B0) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = sub_1B8C23938();
  v2[16] = v4;
  v5 = *(v4 - 8);
  v2[17] = v5;
  v6 = *(v5 + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8BDE9F8, 0, 0);
}

uint64_t sub_1B8BDE9F8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  sub_1B8C237F8();
  v5 = *(v2 + 48);
  if (v5(v4, 1, v1) == 1)
  {
    v6 = v0[15];
    v7 = v0[16];
    v8 = v0[13];
    v9 = v0[14];
    sub_1B8C238D8();
    if (v5(v9, 1, v7) != 1)
    {
      sub_1B8B3433C(v0[14], &qword_1EBAA6280, &unk_1B8C285B0);
    }
  }

  else
  {
    v10 = v0[16];
    v11 = v0[17];
    v12 = v0[15];
    (*(v11 + 32))(v12, v0[14], v10);
    (*(v11 + 56))(v12, 0, 1, v10);
  }

  v14 = v0[15];
  v13 = v0[16];
  if (v5(v14, 1, v13) == 1)
  {
    sub_1B8B3433C(v14, &qword_1EBAA6280, &unk_1B8C285B0);
    sub_1B8BDEEA8();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    v16 = v0[18];
    v18 = v0[14];
    v17 = v0[15];

    v19 = v0[1];

    return v19();
  }

  else
  {
    (*(v0[17] + 32))(v0[18], v14, v13);
    v21 = swift_task_alloc();
    v0[19] = v21;
    *v21 = v0;
    v21[1] = sub_1B8BDEC3C;
    v22 = v0[18];
    v23 = v0[13];

    return sub_1B8BDDC48((v0 + 2), v22, v23);
  }
}

uint64_t sub_1B8BDEC3C()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1B8BDEE10;
  }

  else
  {
    v3 = sub_1B8BDED50;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8BDED50()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  *v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 64);
  *(v3 + 57) = *(v0 + 73);
  v3[2] = v5;
  v3[3] = v6;
  v3[1] = v4;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B8BDEE10()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = v0[20];
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];

  v5 = v0[1];

  return v5();
}

unint64_t sub_1B8BDEEA8()
{
  result = qword_1EBAA8220;
  if (!qword_1EBAA8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8220);
  }

  return result;
}

uint64_t sub_1B8BDEEFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for CatchUpDonationDecoder.ReferenceError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CatchUpDonationDecoder.ReferenceError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B8BDF0B8()
{
  result = qword_1EBAA8288;
  if (!qword_1EBAA8288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8288);
  }

  return result;
}

uint64_t FBKFeedbackForm.__allocating_init(serviceForm:)(void *a1)
{
  v2 = sub_1B8C23A08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v120 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v105 = &v102 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E0, &qword_1B8C29420);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v102 - v13;
  v15 = sub_1B8C239A8();
  v17 = v16;
  v18 = objc_allocWithZone(type metadata accessor for FBKFeedbackForm());
  v19 = FBKFeedbackForm.init(identifier:)(v15, v17);
  sub_1B8BDFC90(v123);
  LOBYTE(v15) = v123[0];
  v20 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
  swift_beginAccess();
  v19[v20] = v15;
  v103 = a1;
  v21 = sub_1B8C239D8();
  v22 = 0;
  v24 = v21 + 64;
  v23 = *(v21 + 64);
  v107 = v21;
  v25 = 1 << *(v21 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v23;
  v28 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  v29 = (v25 + 63) >> 6;
  v104 = v3 + 16;
  v114 = (v3 + 32);
  v102 = 0x80000001B8C33DC0;
  v106 = v3;
  v30 = (v3 + 8);
  v31 = v2;
  v108 = v30;
  v118 = xmmword_1B8C2A740;
  v110 = v21 + 64;
  v109 = v29;
  v112 = v2;
  v111 = v12;
  v113 = v14;
  v117 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  while (1)
  {
    if (v27)
    {
      v32 = v12;
      v33 = v31;
      v116 = v22;
      v34 = v22;
LABEL_15:
      v115 = (v27 - 1) & v27;
      v37 = __clz(__rbit64(v27)) | (v34 << 6);
      v38 = v107;
      v39 = v106;
      v40 = v105;
      (*(v106 + 16))(v105, *(v107 + 48) + *(v106 + 72) * v37, v33);
      v41 = *(*(v38 + 56) + 8 * v37);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65F0, &qword_1B8C29430);
      v43 = *(v42 + 48);
      v44 = *(v39 + 32);
      v31 = v33;
      v12 = v32;
      v44(v32, v40, v31);
      *&v32[v43] = v41;
      (*(*(v42 - 8) + 56))(v32, 0, 1, v42);

      v14 = v113;
    }

    else
    {
      v35 = v29 <= v22 + 1 ? v22 + 1 : v29;
      v36 = v35 - 1;
      while (1)
      {
        v34 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_78;
        }

        if (v34 >= v29)
        {
          break;
        }

        v27 = *(v24 + 8 * v34);
        ++v22;
        if (v27)
        {
          v32 = v12;
          v33 = v31;
          v116 = v34;
          goto LABEL_15;
        }
      }

      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65F0, &qword_1B8C29430);
      (*(*(v100 - 8) + 56))(v12, 1, 1, v100);
      v115 = 0;
      v116 = v36;
    }

    sub_1B8BDFE28(v12, v14);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65F0, &qword_1B8C29430);
    if ((*(*(v45 - 8) + 48))(v14, 1, v45) == 1)
    {

      return v19;
    }

    v46 = *&v14[*(v45 + 48)];
    (*v114)(v120, v14, v31);
    v121 = v46;
    v119 = *(v46 + 16);
    if (v119)
    {
      break;
    }

LABEL_4:

    v31 = v112;
    (*v108)(v120, v112);
    v12 = v111;
    v14 = v113;
    v24 = v110;
    v29 = v109;
    v27 = v115;
    v22 = v116;
  }

  swift_beginAccess();
  v47 = 0;
  v48 = (v121 + 40);
  while (v47 < *(v121 + 16))
  {
    v52 = *(v48 - 1);
    v51 = *v48;

    v55 = MEMORY[0x1B8CC86C0](v53);
    v56 = v54;
    if (v55 == 0x656C7469743ALL && v54 == 0xE600000000000000 || (sub_1B8C25A08() & 1) != 0)
    {

      v55 = 0;
      v56 = 0;
    }

    else if (v55 == 0x616572613ALL && v56 == 0xE500000000000000 || (sub_1B8C25A08() & 1) != 0)
    {

      v55 = 0;
      v56 = 1;
    }

    else if (v55 == 0x706972637365643ALL && v56 == 0xEC0000006E6F6974 || (sub_1B8C25A08() & 1) != 0)
    {

      v55 = 0;
      v56 = 2;
    }

    else if (v55 == 0x657275746165663ALL && v56 == 0xEF6E69616D6F645FLL || (sub_1B8C25A08() & 1) != 0)
    {

      v55 = 0;
      v56 = 3;
    }

    else if (v55 == 0x6165665F6275733ALL && v56 == 0xEC00000065727574 || (sub_1B8C25A08() & 1) != 0)
    {

      v55 = 0;
      v56 = 4;
    }

    else if (v55 == 0xD000000000000012 && v102 == v56 || (sub_1B8C25A08() & 1) != 0)
    {

      v55 = 0;
      v56 = 5;
    }

    v57 = *&v19[v28];
    if (*(v57 + 16))
    {
      v58 = *&v19[v28];

      v59 = sub_1B8B5E354(v55, v56);
      if (v60)
      {
        v61 = v19;
        v62 = *(*(v57 + 56) + 8 * v59);

        v63 = v52;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_1B8B5D1AC(0, *(v62 + 2) + 1, 1, v62);
        }

        v65 = *(v62 + 2);
        v64 = *(v62 + 3);
        if (v65 >= v64 >> 1)
        {
          v62 = sub_1B8B5D1AC((v64 > 1), v65 + 1, 1, v62);
        }

        *(v62 + 2) = v65 + 1;
        v66 = &v62[16 * v65];
        *(v66 + 4) = v63;
        *(v66 + 5) = v51;
        v19 = v61;
        v28 = v117;
        swift_beginAccess();
        sub_1B8B5FB10(v55, v56);
        v67 = *&v19[v28];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v122 = *&v19[v28];
        v69 = v122;
        *&v19[v28] = 0x8000000000000000;
        v70 = sub_1B8B5E354(v55, v56);
        v72 = v69[2];
        v73 = (v71 & 1) == 0;
        v74 = __OFADD__(v72, v73);
        v75 = v72 + v73;
        if (v74)
        {
          goto LABEL_79;
        }

        v76 = v71;
        if (v69[3] < v75)
        {
          sub_1B8B93050(v75, isUniquelyReferenced_nonNull_native);
          v70 = sub_1B8B5E354(v55, v56);
          if ((v76 & 1) != (v77 & 1))
          {
            goto LABEL_81;
          }

          goto LABEL_50;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_50:
          v89 = v122;
          if (v76)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v96 = v70;
          sub_1B8B94514();
          v70 = v96;
          v89 = v122;
          if (v76)
          {
LABEL_51:
            v93 = v89[7];
            v94 = *(v93 + 8 * v70);
            *(v93 + 8 * v70) = v62;

            sub_1B8B5E4C4(v55, v56);
            goto LABEL_20;
          }
        }

        v89[(v70 >> 6) + 8] |= 1 << v70;
        v97 = (v89[6] + 16 * v70);
        *v97 = v55;
        v97[1] = v56;
        *(v89[7] + 8 * v70) = v62;
        v98 = v89[2];
        v74 = __OFADD__(v98, 1);
        v99 = v98 + 1;
        if (v74)
        {
          goto LABEL_80;
        }

        v89[2] = v99;
        goto LABEL_20;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
    v78 = swift_allocObject();
    *(v78 + 16) = v118;
    *(v78 + 32) = v52;
    *(v78 + 40) = v51;
    swift_beginAccess();
    v79 = *&v19[v28];
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v122 = *&v19[v28];
    v81 = v122;
    *&v19[v28] = 0x8000000000000000;
    v82 = sub_1B8B5E354(v55, v56);
    v84 = v81[2];
    v85 = (v83 & 1) == 0;
    v74 = __OFADD__(v84, v85);
    v86 = v84 + v85;
    if (v74)
    {
      goto LABEL_76;
    }

    v87 = v83;
    if (v81[3] >= v86)
    {
      if ((v80 & 1) == 0)
      {
        v95 = v82;
        sub_1B8B94514();
        v82 = v95;
        v89 = v122;
        if (v87)
        {
LABEL_19:
          v49 = v89[7];
          v50 = *(v49 + 8 * v82);
          *(v49 + 8 * v82) = v78;

          goto LABEL_20;
        }

        goto LABEL_43;
      }
    }

    else
    {
      sub_1B8B93050(v86, v80);
      v82 = sub_1B8B5E354(v55, v56);
      if ((v87 & 1) != (v88 & 1))
      {
        goto LABEL_81;
      }
    }

    v89 = v122;
    if (v87)
    {
      goto LABEL_19;
    }

LABEL_43:
    v89[(v82 >> 6) + 8] |= 1 << v82;
    v90 = (v89[6] + 16 * v82);
    *v90 = v55;
    v90[1] = v56;
    *(v89[7] + 8 * v82) = v78;
    v91 = v89[2];
    v74 = __OFADD__(v91, 1);
    v92 = v91 + 1;
    if (v74)
    {
      goto LABEL_77;
    }

    v89[2] = v92;
    sub_1B8B5FB10(v55, v56);
LABEL_20:
    *&v19[v28] = v89;
    swift_endAccess();
    ++v47;
    sub_1B8B5E4C4(v55, v56);
    v48 += 2;
    if (v119 == v47)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  result = sub_1B8C25A58();
  __break(1u);
  return result;
}

void sub_1B8BDFC90(char *a1@<X8>)
{
  v3 = sub_1B8C239C8();
  v4 = v3 - 1;
  if ((v3 - 1) >= 3)
  {
    if (qword_1EBAA5970 != -1)
    {
      swift_once();
    }

    v5 = sub_1B8C23C38();
    __swift_project_value_buffer(v5, qword_1EBAB3A18);
    v6 = v1;
    v7 = sub_1B8C23C18();
    v8 = sub_1B8C25478();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_1B8B5DD48(0xD000000000000020, 0x80000001B8C35BD0, &v11);
      *(v9 + 12) = 2048;
      sub_1B8C239C8();
      *(v9 + 14) = sub_1B8C239B8();

      _os_log_impl(&dword_1B8B22000, v7, v8, "Unknown case in %s: %ld falling back to .optional", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1B8CCB0E0](v10, -1, -1);
      MEMORY[0x1B8CCB0E0](v9, -1, -1);
    }

    else
    {
    }

    v4 = 1;
  }

  *a1 = v4;
}

uint64_t sub_1B8BDFE28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E0, &qword_1B8C29420);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B8BDFEA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for SheetContainer.Config();
  if (v3 <= 0x3F)
  {
    sub_1B8B491A0();
    if (v4 <= 0x3F)
    {
      sub_1B8B80B94();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B8BDFF98()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B8BDFFD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_1B8BE0030(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B8BE0100(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C24588();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1B8C24598();
}

uint64_t sub_1B8BE01F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B8C24588();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1B8C24598();
}

uint64_t sub_1B8BE02F0()
{
  v0 = sub_1B8C245F8();
  __swift_allocate_value_buffer(v0, qword_1EBAA8290);
  __swift_project_value_buffer(v0, qword_1EBAA8290);
  return sub_1B8C245D8();
}

uint64_t sub_1B8BE033C(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_1B8C23FF8();
  v24 = *(a1 + 24);
  v4 = v24;
  v25 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1B8C24E18();
  sub_1B8C23D48();
  sub_1B8C245A8();
  WitnessTable = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  swift_getWitnessTable();
  v5 = sub_1B8C24E18();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v17 = v3;
  v18 = v24;
  v19 = v1;
  sub_1B8C24468();
  sub_1B8C24E08();
  v14 = v3;
  v15 = v4;
  v16 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA83A8, &qword_1B8C2EE48);
  swift_getWitnessTable();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA83B0, &qword_1B8C2EE50);
  v11 = sub_1B8B34CFC(&qword_1EBAA83B8, &qword_1EBAA83B0, &qword_1B8C2EE50);
  v20 = v10;
  v21 = v11;
  swift_getOpaqueTypeConformance2();
  sub_1B8C24C28();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B8BE061C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v36 = a2;
  v37 = a1;
  v41 = a4;
  sub_1B8C23FF8();
  v47 = a3;
  v48 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v5 = sub_1B8C23D48();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v34 - v11;
  v12 = sub_1B8C24E18();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  v20 = sub_1B8C245A8();
  v39 = *(v20 - 8);
  v40 = v20;
  v21 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v38 = &v34 - v22;
  LODWORD(v22) = *(v37 + 16);
  v42 = v36;
  v43 = v35;
  v44 = v37;
  if (v22 == 1)
  {
    sub_1B8C24468();
    sub_1B8C24E08();
    swift_getWitnessTable();
    v23 = v13[2];
    v23(v19, v17, v12);
    v24 = v13[1];
    v24(v17, v12);
    v23(v17, v19, v12);
    swift_getWitnessTable();
    v25 = v38;
    sub_1B8BE0100(v17, v12);
    v24(v17, v12);
    v24(v19, v12);
  }

  else
  {
    sub_1B8C247E8();
    sub_1B8C23D58();
    swift_getWitnessTable();
    v26 = v6[2];
    v27 = v34;
    v26(v34, v10, v5);
    v28 = v6[1];
    v28(v10, v5);
    v26(v10, v27, v5);
    swift_getWitnessTable();
    v25 = v38;
    sub_1B8BE01F8(v10, v12, v5);
    v28(v10, v5);
    v28(v27, v5);
  }

  WitnessTable = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v45 = WitnessTable;
  v46 = v30;
  v31 = v40;
  swift_getWitnessTable();
  v32 = v39;
  (*(v39 + 16))(v41, v25, v31);
  return (*(v32 + 8))(v25, v31);
}

uint64_t sub_1B8BE0B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B8C23FF8();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v26 - v19;
  v21 = *(a1 + 24);
  v22 = *(a1 + 32);
  v21(v18);
  sub_1B8C24C08();
  (*(v8 + 8))(v11, a2);
  v26[0] = a3;
  v26[1] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v23 = v13[2];
  v23(v20, v17, v12);
  v24 = v13[1];
  v24(v17, v12);
  v23(a4, v20, v12);
  return (v24)(v20, v12);
}

uint64_t sub_1B8BE0D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C245F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA83B0, &qword_1B8C2EE50);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  if (qword_1EBAA5948 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, qword_1EBAA8290);
  v17 = (*(v7 + 16))(v10, v16, v6);
  MEMORY[0x1EEE9AC00](v17);
  *(&v20 - 4) = a2;
  *(&v20 - 3) = a3;
  *(&v20 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA83C0, &qword_1B8C2EE58);
  sub_1B8BE1EDC();
  sub_1B8C23DC8();
  v18 = sub_1B8B34CFC(&qword_1EBAA83B8, &qword_1EBAA83B0, &qword_1B8C2EE50);
  MEMORY[0x1B8CC92F0](v15, v11, v18);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1B8BE1004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v7 = type metadata accessor for SheetContainer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = sub_1B8C243A8();
  v14 = v13;
  v26 = v15;
  v27 = v16;
  (*(v8 + 16))(v11, a1, v7);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  (*(v8 + 32))(v18 + v17, v11, v7);
  v29 = v12;
  v30 = v14;
  v31 = v26 & 1;
  v32 = v27;
  v33 = 0x6B72616D78;
  v34 = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA76B8, &unk_1B8C2C280);
  sub_1B8B34CFC(&qword_1EBAA76C0, &qword_1EBAA76B8, &unk_1B8C2C280);
  v19 = v28;
  sub_1B8C24DB8();

  v20 = sub_1B8C24C68();
  KeyPath = swift_getKeyPath();
  v35 = v20;
  v22 = sub_1B8C23E48();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA83C0, &qword_1B8C2EE58);
  v24 = (v19 + *(result + 36));
  *v24 = KeyPath;
  v24[1] = v22;
  return result;
}

uint64_t sub_1B8BE127C(uint64_t a1)
{
  v2 = sub_1B8C24058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7100, &qword_1B8C2AFD8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = a1 + *(type metadata accessor for SheetContainer() + 40);
  sub_1B8B82CC4(v7);
  MEMORY[0x1B8CC9B00](v4);
  sub_1B8C24048();
  sub_1B8C24E48();
  return sub_1B8BE20EC(v7);
}

uint64_t sub_1B8BE13A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v21 = a2;
  sub_1B8C23F68();
  v3 = *(a1 + 16);
  sub_1B8C23FF8();
  v33 = *(a1 + 24);
  v4 = v33;
  v34 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1B8C24E18();
  sub_1B8C23D48();
  sub_1B8C245A8();
  WitnessTable = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B8C24E18();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA83A8, &qword_1B8C2EE48);
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA83B0, &qword_1B8C2EE50);
  sub_1B8B34CFC(&qword_1EBAA83B8, &qword_1EBAA83B0, &qword_1B8C2EE50);
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v7 = sub_1B8B34CA8();
  v8 = MEMORY[0x1E69E6158];
  swift_getOpaqueTypeMetadata2();
  sub_1B8C245A8();
  v27 = OpaqueTypeMetadata2;
  v28 = v8;
  v29 = OpaqueTypeConformance2;
  v30 = v7;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v9 = sub_1B8C24018();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  v22 = v3;
  v23 = v4;
  v24 = v20;
  sub_1B8C24008();
  swift_getWitnessTable();
  v17 = v10[2];
  v17(v16, v14, v9);
  v18 = v10[1];
  v18(v14, v9);
  v17(v21, v16, v9);
  return (v18)(v16, v9);
}

uint64_t sub_1B8BE17C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a4;
  v50 = a2;
  sub_1B8C23FF8();
  v51 = a3;
  v63 = a3;
  v64 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1B8C24E18();
  sub_1B8C23D48();
  sub_1B8C245A8();
  WitnessTable = swift_getWitnessTable();
  v62 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B8C24E18();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA83A8, &qword_1B8C2EE48);
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA83B0, &qword_1B8C2EE50);
  sub_1B8B34CFC(&qword_1EBAA83B8, &qword_1EBAA83B0, &qword_1B8C2EE50);
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v8 = sub_1B8B34CA8();
  v57 = OpaqueTypeMetadata2;
  v58 = MEMORY[0x1E69E6158];
  v52 = OpaqueTypeConformance2;
  v59 = OpaqueTypeConformance2;
  v60 = v8;
  v54 = v8;
  v9 = swift_getOpaqueTypeMetadata2();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - v15;
  v17 = swift_checkMetadataState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v46 - v23;
  v46 = v9;
  v25 = sub_1B8C245A8();
  v48 = *(v25 - 8);
  v49 = v25;
  v26 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v47 = &v46 - v27;
  v28 = a1[1];
  if (v28)
  {
    v29 = *a1;
    v30 = type metadata accessor for SheetContainer();
    sub_1B8BE033C(v30);
    v57 = v29;
    v58 = v28;
    v31 = MEMORY[0x1E69E6158];
    v32 = v52;
    v33 = v54;
    sub_1B8C24AE8();
    (*(v18 + 8))(v24, v17);
    v57 = v17;
    v58 = v31;
    v59 = v32;
    v60 = v33;
    swift_getOpaqueTypeConformance2();
    v34 = v10[2];
    v35 = v46;
    v34(v16, v14, v46);
    v36 = v10[1];
    v36(v14, v35);
    v34(v14, v16, v35);
    v37 = v32;
    v38 = v47;
    sub_1B8BE0100(v14, v35);
    v36(v14, v35);
    v36(v16, v35);
  }

  else
  {
    v39 = type metadata accessor for SheetContainer();
    sub_1B8BE033C(v39);
    v40 = *(v18 + 16);
    v40(v24, v22, v17);
    v41 = *(v18 + 8);
    v41(v22, v17);
    v40(v22, v24, v17);
    v57 = v17;
    v37 = v52;
    v58 = MEMORY[0x1E69E6158];
    v59 = v52;
    v60 = v54;
    swift_getOpaqueTypeConformance2();
    v42 = v47;
    sub_1B8BE01F8(v22, v46, v17);
    v41(v22, v17);
    v41(v24, v17);
    v38 = v42;
  }

  v57 = v17;
  v58 = MEMORY[0x1E69E6158];
  v59 = v37;
  v60 = v54;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = v37;
  v43 = v49;
  swift_getWitnessTable();
  v44 = v48;
  (*(v48 + 16))(v53, v38, v43);
  return (*(v44 + 8))(v38, v43);
}

unint64_t sub_1B8BE1EDC()
{
  result = qword_1EBAA83C8;
  if (!qword_1EBAA83C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA83C0, &qword_1B8C2EE58);
    sub_1B8B34CFC(&qword_1EBAA76E0, &qword_1EBAA76E8, &qword_1B8C2C300);
    sub_1B8B34CFC(&qword_1EBAA5FE8, &qword_1EBAA5FF0, &qword_1B8C27F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA83C8);
  }

  return result;
}

uint64_t sub_1B8BE1FC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for SheetContainer() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1B8BE127C(v4);
}

uint64_t sub_1B8BE2044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return MEMORY[0x1EEDDC7B0](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1B8BE20EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7100, &qword_1B8C2AFD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8BE21A4()
{
  v0 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v0, qword_1EBAA83D0);
  __swift_project_value_buffer(v0, qword_1EBAA83D0);
  return sub_1B8C23C28();
}

uint64_t sub_1B8BE2228@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {

    v5 = sub_1B8B5E354(0x6E6F697463613ALL, 0xE700000000000000);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);

      if (v7[2])
      {
        v8 = v7[4];
        v9 = v7[5];

        sub_1B8BE5488(v8, v9, a1);
      }
    }
  }

  if (qword_1EBAA5950 != -1)
  {
    swift_once();
  }

  v11 = sub_1B8C23C38();
  __swift_project_value_buffer(v11, qword_1EBAA83D0);
  v12 = sub_1B8C23C18();
  v13 = sub_1B8C25488();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1B8B22000, v12, v13, "Could not find action answer in form", v14, 2u);
    MEMORY[0x1B8CCB0E0](v14, -1, -1);
  }

  v15 = *MEMORY[0x1E699C1D8];
  v16 = sub_1B8C236E8();
  return (*(*(v16 - 8) + 104))(a1, v15, v16);
}

uint64_t sub_1B8BE2400()
{
  v0 = MEMORY[0x1B8CCA870]();
  if (!v0)
  {
    goto LABEL_10;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_1B8C250F8();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = sub_1B8C25128();
  v6 = v5;

  v7 = v4;
  if (sub_1B8C251C8() < 1)
  {

LABEL_10:
    if (MEMORY[0x1B8CCA870](v0))
    {
      return 0x646565732D736F69;
    }

    else
    {
      return 0x2D7363662D736F69;
    }
  }

  if (qword_1EBAA5950 != -1)
  {
    swift_once();
  }

  v8 = sub_1B8C23C38();
  __swift_project_value_buffer(v8, qword_1EBAA83D0);

  v9 = sub_1B8C23C18();
  v10 = sub_1B8C25498();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1B8B5DD48(v7, v6, &v14);
    _os_log_impl(&dword_1B8B22000, v9, v10, "Using RaCFormOverride [%s]", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B8CCB0E0](v12, -1, -1);
    MEMORY[0x1B8CCB0E0](v11, -1, -1);
  }

  return v7;
}

uint64_t sub_1B8BE2648(char *a1)
{
  v2 = sub_1B8C236E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v10 = &a1[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
  swift_beginAccess();
  v11 = *v10 == 0xD000000000000018 && 0x80000001B8C32AB0 == v10[1];
  if (v11 || (result = sub_1B8C25A08(), (result & 1) != 0))
  {
    sub_1B8BE2228(v9);
    v13 = sub_1B8BE2400();
    v14 = v10[1];
    *v10 = v13;
    v10[1] = v15;

    if (qword_1EBAA5950 != -1)
    {
      swift_once();
    }

    v16 = sub_1B8C23C38();
    __swift_project_value_buffer(v16, qword_1EBAA83D0);
    (*(v3 + 16))(v7, v9, v2);
    v17 = a1;
    v18 = sub_1B8C23C18();
    v19 = sub_1B8C25498();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v20 = 136446466;
      v21 = *v10;
      v22 = v10[1];

      v23 = sub_1B8B5DD48(v21, v22, &v33);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2082;
      sub_1B8BE29A0();
      v24 = sub_1B8C259E8();
      v26 = v25;
      v27 = *(v3 + 8);
      v27(v7, v2);
      v28 = sub_1B8B5DD48(v24, v26, &v33);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_1B8B22000, v18, v19, "Using form identifier: [%{public}s] for action: [%{public}s]", v20, 0x16u);
      v29 = v32;
      swift_arrayDestroy();
      MEMORY[0x1B8CCB0E0](v29, -1, -1);
      MEMORY[0x1B8CCB0E0](v20, -1, -1);

      return (v27)(v9, v2);
    }

    else
    {

      v30 = *(v3 + 8);
      v30(v7, v2);
      return (v30)(v9, v2);
    }
  }

  return result;
}

unint64_t sub_1B8BE29A0()
{
  result = qword_1EBAA83E8;
  if (!qword_1EBAA83E8)
  {
    sub_1B8C236E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA83E8);
  }

  return result;
}

uint64_t sub_1B8BE29F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B8C23C88();

  return v1;
}

uint64_t sub_1B8BE2A6C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8FeedbackP33_F562E464EE642380597E8DA5B39CDBBB11ImageLoader_subscription;
  if (*(v0 + OBJC_IVAR____TtC8FeedbackP33_F562E464EE642380597E8DA5B39CDBBB11ImageLoader_subscription))
  {

    sub_1B8C23C68();
  }

  v3 = OBJC_IVAR____TtC8FeedbackP33_F562E464EE642380597E8DA5B39CDBBB11ImageLoader__image;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8468, &qword_1B8C2EF68);
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  v5 = *(v1 + OBJC_IVAR____TtC8FeedbackP33_F562E464EE642380597E8DA5B39CDBBB11ImageLoader_publisher);

  v6 = *(v1 + v2);

  v7 = *(*v1 + 48);
  v8 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ImageLoader()
{
  result = qword_1EBAA8408;
  if (!qword_1EBAA8408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8BE2BB0()
{
  sub_1B8BE3030();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1B8BE2C58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8428, &qword_1B8C2EF00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8430, &qword_1B8C2EF08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8438, &qword_1B8C2EF10);
  v11 = *(v10 - 8);
  v23 = v10;
  v24 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v25 = *(v0 + OBJC_IVAR____TtC8FeedbackP33_F562E464EE642380597E8DA5B39CDBBB11ImageLoader_publisher);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8440, &qword_1B8C2EF18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8420, &qword_1B8C2EEA8);
  sub_1B8B34CFC(&qword_1EBAA8448, &qword_1EBAA8440, &qword_1B8C2EF18);
  sub_1B8C23CD8();

  sub_1B8B622C8();
  v15 = sub_1B8C25538();
  v25 = v15;
  v16 = sub_1B8C25518();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  sub_1B8B34CFC(&qword_1EBAA8450, &qword_1EBAA8430, &qword_1B8C2EF08);
  sub_1B8BE3218();
  sub_1B8C23CE8();
  sub_1B8BE3270(v4);

  (*(v6 + 8))(v9, v5);
  swift_allocObject();
  v17 = v22;
  swift_weakInit();
  sub_1B8B34CFC(&qword_1EBAA8460, &qword_1EBAA8438, &qword_1B8C2EF10);
  v18 = v23;
  v19 = sub_1B8C23D08();

  (*(v24 + 8))(v14, v18);
  v20 = *(v17 + OBJC_IVAR____TtC8FeedbackP33_F562E464EE642380597E8DA5B39CDBBB11ImageLoader_subscription);
  *(v17 + OBJC_IVAR____TtC8FeedbackP33_F562E464EE642380597E8DA5B39CDBBB11ImageLoader_subscription) = v19;
}

void sub_1B8BE3030()
{
  if (!qword_1EBAA8418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8420, &qword_1B8C2EEA8);
    v0 = sub_1B8C23CA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAA8418);
    }
  }
}

uint64_t *sub_1B8BE30A0@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = *result;
    v6 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_1B8B7B54C(v5, v3);
    v7 = sub_1B8C234A8();
    v4 = [v6 initWithData_];

    result = sub_1B8BE33D8(v5, v3);
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1B8BE3144(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v1;
    return sub_1B8C23C98();
  }

  return result;
}

uint64_t sub_1B8BE31D8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ImageLoader();
  result = sub_1B8C23C78();
  *a1 = result;
  return result;
}

unint64_t sub_1B8BE3218()
{
  result = qword_1EBAA8458;
  if (!qword_1EBAA8458)
  {
    sub_1B8B622C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8458);
  }

  return result;
}

uint64_t sub_1B8BE3270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8428, &qword_1B8C2EF00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8BE32E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B8C23C88();

  *a2 = v5;
  return result;
}

uint64_t sub_1B8BE3360(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_1B8C23C98();
}

uint64_t sub_1B8BE33D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B8B4645C(a1, a2);
  }

  return a1;
}

uint64_t sub_1B8BE33EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA64C8, &qword_1B8C2BC70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1B8B34450(a3, v27 - v11, &qword_1EBAA64C8, &qword_1B8C2BC70);
  v13 = sub_1B8C253A8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1B8B3433C(v12, &qword_1EBAA64C8, &qword_1B8C2BC70);
  }

  else
  {
    sub_1B8C25398();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1B8C25328();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1B8C25188() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1B8B3433C(a3, &qword_1EBAA64C8, &qword_1B8C2BC70);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B8B3433C(a3, &qword_1EBAA64C8, &qword_1B8C2BC70);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

unint64_t sub_1B8BE36EC()
{
  v1 = v0;
  v2 = sub_1B8C237B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E699C380])
  {
LABEL_2:
    v8 = 0x6E776F6E6B6E75;
    (*(v3 + 8))(v6, v2);
    return v8;
  }

  if (v7 == *MEMORY[0x1E699C2C8])
  {
    return 0xD000000000000010;
  }

  if (v7 == *MEMORY[0x1E699C2B8])
  {
    return 0xD000000000000014;
  }

  if (v7 == *MEMORY[0x1E699C260])
  {
    return 0x6353207472616D53;
  }

  v8 = 1769105747;
  if (v7 != *MEMORY[0x1E699C2D8] && v7 != *MEMORY[0x1E699C270])
  {
    if (v7 == *MEMORY[0x1E699C298])
    {
      return 0x20676E6974697257;
    }

    if (v7 == *MEMORY[0x1E699C290])
    {
      return 0x6552207472616D53;
    }

    if (v7 == *MEMORY[0x1E699C2C0])
    {
      return 0x696A6F6D6E6547;
    }

    if (v7 == *MEMORY[0x1E699C2E0])
    {
      return 0x6D7553206C69614DLL;
    }

    if (v7 == *MEMORY[0x1E699C2B0])
    {
      v10 = 9;
    }

    else
    {
      if (v7 == *MEMORY[0x1E699C308])
      {
        return 0xD000000000000010;
      }

      if (v7 != *MEMORY[0x1E699C338])
      {
        if (v7 == *MEMORY[0x1E699C328])
        {
          return 0xD000000000000016;
        }

        if (v7 == *MEMORY[0x1E699C330])
        {
          return 0xD000000000000024;
        }

        if (v7 == *MEMORY[0x1E699C258])
        {
          return 0x6157206567616D49;
        }

        if (v7 == *MEMORY[0x1E699C268])
        {
          return 0x7341207466697753;
        }

        if (v7 == *MEMORY[0x1E699C2A8])
        {
          return 0x4320736F746F6850;
        }

        if (v7 == *MEMORY[0x1E699C2F0])
        {
          return 0xD000000000000013;
        }

        if (v7 == *MEMORY[0x1E699C2D0])
        {
          return v8;
        }

        if (v7 == *MEMORY[0x1E699C300])
        {
          return 0xD000000000000018;
        }

        if (v7 == *MEMORY[0x1E699C368])
        {
          return 0x6C616E6F73726550;
        }

        if (v7 == *MEMORY[0x1E699C2F8])
        {
          return 0xD000000000000013;
        }

        if (v7 == *MEMORY[0x1E699C278])
        {
          return 0x5320736F746F6850;
        }

        if (v7 == *MEMORY[0x1E699C320])
        {
          return 0xD000000000000010;
        }

        if (v7 == *MEMORY[0x1E699C2E8])
        {
          return 0xD000000000000024;
        }

        if (v7 != *MEMORY[0x1E699C350])
        {
          if (v7 == *MEMORY[0x1E699C280])
          {
            return 0x677573206C6C6F50;
          }

          if (v7 == *MEMORY[0x1E699C388])
          {
            return 0xD000000000000010;
          }

          if (v7 == *MEMORY[0x1E699C358])
          {
            return 0x65746F6E79654BLL;
          }

          if (v7 == *MEMORY[0x1E699C348])
          {
            return 0x7365676150;
          }

          if (v7 == *MEMORY[0x1E699C360])
          {
            return 0x737265626D754ELL;
          }

          if (v7 == *MEMORY[0x1E699C370])
          {
            return 0x6D726F6665657246;
          }

          if (v7 == *MEMORY[0x1E699C318] || v7 == *MEMORY[0x1E699C310])
          {
            return 0xD000000000000017;
          }

          if (v7 == *MEMORY[0x1E699C378])
          {
            return 0x726F707075736E55;
          }

          if (v7 == *MEMORY[0x1E699C340])
          {
            return 1953719636;
          }

          goto LABEL_2;
        }

        return 0xD000000000000014;
      }

      v10 = 5;
    }

    return v10 | 0xD000000000000010;
  }

  return v8;
}

uint64_t sub_1B8BE3E4C()
{
  v1 = sub_1B8C236E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x1E699C1F0] || v6 == *MEMORY[0x1E699C1C8] || v6 == *MEMORY[0x1E699C1D8])
  {
    v7 = [objc_opt_self() mainBundle];
    v8 = sub_1B8C23348();
  }

  else if (v6 == *MEMORY[0x1E699C1E8] || v6 == *MEMORY[0x1E699C1D0] || v6 == *MEMORY[0x1E699C1E0])
  {
    return 0;
  }

  else
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v12 = sub_1B8C23C38();
    __swift_project_value_buffer(v12, qword_1EDC85D40);
    v13 = sub_1B8C23C18();
    v14 = sub_1B8C25498();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_1B8B5DD48(0xD000000000000017, 0x80000001B8C36590, &v19);
      _os_log_impl(&dword_1B8B22000, v13, v14, "%{public}s Unknown Action case", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1B8CCB0E0](v16, -1, -1);
      MEMORY[0x1B8CCB0E0](v15, -1, -1);
    }

    v17 = [objc_opt_self() mainBundle];
    v8 = sub_1B8C23348();

    (*(v2 + 8))(v5, v1);
  }

  return v8;
}

uint64_t sub_1B8BE429C()
{
  v1 = v0;
  v2 = sub_1B8C237B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E699C380])
  {
    goto LABEL_2;
  }

  if (v7 == *MEMORY[0x1E699C2C8])
  {
    return 0x316E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C2B8])
  {
    return 0x326E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C260])
  {
    return 0x336E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C2D8])
  {
    return 0x386E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C270])
  {
    return 0x346E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C298])
  {
    return 0x396E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C290])
  {
    return 0x30316E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C2C0])
  {
    return 0x31316E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C2E0])
  {
    return 0x32316E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C2B0])
  {
    return 0x33316E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C308])
  {
    return 0x34316E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C338])
  {
    return 0x35316E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C328])
  {
    return 0x36316E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C330])
  {
    return 0x37316E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C258])
  {
    return 0x366E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C268])
  {
    return 0x38316E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C2A8])
  {
    return 0x39316E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C2F0])
  {
    return 0x30326E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C2D0])
  {
    return 0x31326E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C300])
  {
    return 0x32326E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C368])
  {
    return 0x33326E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C2F8])
  {
    return 0x34326E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C278])
  {
    return 0x35326E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C320])
  {
    return 0x38326E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C2E8])
  {
    return 0x39326E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C350])
  {
    return 0x32336E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C280])
  {
    return 0x33336E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C388])
  {
    return 0x34336E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C358])
  {
    return 0x35336E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C348])
  {
    return 0x36336E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C360])
  {
    return 0x37336E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C370])
  {
    return 0x38336E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C318])
  {
    return 0x39336E69616D6F64;
  }

  if (v7 == *MEMORY[0x1E699C310])
  {
    return 0x33346E69616D6F64;
  }

  if (v7 != *MEMORY[0x1E699C340])
  {
LABEL_2:
    (*(v3 + 8))(v6, v2);
    return 0x6E776F6E6B6E75;
  }

  return 0x586E69616D6F64;
}

uint64_t sub_1B8BE49C0()
{
  v1 = sub_1B8C236E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x1E699C1F0])
  {
    return 28789;
  }

  if (v6 == *MEMORY[0x1E699C1C8])
  {
    return 1853321060;
  }

  if (v6 == *MEMORY[0x1E699C1D8])
  {
    v8 = 0x7265636E6F63;
    return v8 & 0xFFFFFFFFFFFFLL | 0x6E000000000000;
  }

  if (v6 == *MEMORY[0x1E699C1E8])
  {
    return 1885956979;
  }

  if (v6 == *MEMORY[0x1E699C1D0])
  {
    return 0x64696C61766E69;
  }

  if (v6 != *MEMORY[0x1E699C1E0])
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v9 = sub_1B8C23C38();
    __swift_project_value_buffer(v9, qword_1EDC85D40);
    v10 = sub_1B8C23C18();
    v11 = sub_1B8C25498();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_1B8B5DD48(0xD000000000000011, 0x80000001B8C36570, &v15);
      _os_log_impl(&dword_1B8B22000, v10, v11, "%{public}s Unknown Action case", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1B8CCB0E0](v13, -1, -1);
      MEMORY[0x1B8CCB0E0](v12, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    v8 = 0x776F6E6B6E75;
    return v8 & 0xFFFFFFFFFFFFLL | 0x6E000000000000;
  }

  return 0x646574656C6564;
}

uint64_t sub_1B8BE4CD0@<X0>(void (**a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v71[2] = *MEMORY[0x1E69E9840];
  v67 = sub_1B8C23398();
  v3 = *(v67 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1B8C23568();
  v6 = *(v65 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v60 - v11;
  v13 = sub_1B8C23498();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B34450(v68, v12, &qword_1EBAA85A0, &qword_1B8C28C20);
  v18 = (*(v14 + 48))(v12, 1, v13);
  v69 = v13;
  if (v18 == 1)
  {
    sub_1B8B3433C(v12, &qword_1EBAA85A0, &qword_1B8C28C20);
    v19 = NSTemporaryDirectory();
    sub_1B8C25128();

    sub_1B8C233C8();
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
  }

  v63 = (v6 + 8);
  v62 = *MEMORY[0x1E6968F58];
  v61 = (v3 + 104);
  v20 = (v3 + 8);
  v68 = (v14 + 8);
  v21 = 3;
  while (1)
  {
    v71[0] = 761423459;
    v71[1] = 0xE400000000000000;
    v22 = v64;
    sub_1B8C23558();
    v23 = sub_1B8C23538();
    v25 = v24;
    (*v63)(v22, v65);
    MEMORY[0x1B8CC9EB0](v23, v25);

    v27 = v66;
    v26 = v67;
    (*v61)(v66, v62, v67);
    sub_1B8B34CA8();
    v28 = v17;
    sub_1B8C23478();
    (*v20)(v27, v26);

    v29 = objc_opt_self();
    v30 = [v29 defaultManager];
    sub_1B8C23468();
    v31 = a2;
    v32 = sub_1B8C250F8();

    LODWORD(v22) = [v30 fileExistsAtPath_];

    if (!v22)
    {
      break;
    }

    v33 = *v68;
    (*v68)(v31, v69);
    --v21;
    a2 = v31;
    v17 = v28;
    if (!v21)
    {
      sub_1B8B7B4F8();
      swift_allocError();
      *v34 = 6;
      swift_willThrow();
      result = (v33)(v28, v69);
      goto LABEL_15;
    }
  }

  v36 = [v29 defaultManager];
  v37 = sub_1B8C233E8();
  v71[0] = 0;
  v38 = [v36 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:v71];

  if (v38)
  {
    v39 = *v68;
    v40 = v71[0];
    result = v39(v28, v69);
  }

  else
  {
    v41 = v31;
    v42 = v71[0];
    v43 = sub_1B8C23368();

    swift_willThrow();
    v44 = v28;
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v45 = sub_1B8C23C38();
    __swift_project_value_buffer(v45, qword_1EDC85D40);
    v46 = v43;
    v47 = sub_1B8C23C18();
    v48 = sub_1B8C25488();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v70 = v43;
      v71[0] = v50;
      *v49 = 136446210;
      v51 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
      v52 = sub_1B8C25178();
      v54 = v41;
      v55 = sub_1B8B5DD48(v52, v53, v71);

      *(v49 + 4) = v55;
      v41 = v54;
      _os_log_impl(&dword_1B8B22000, v47, v48, "Failed to create attachment directory: %{public}s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x1B8CCB0E0](v50, -1, -1);
      MEMORY[0x1B8CCB0E0](v49, -1, -1);
    }

    sub_1B8B7B4F8();
    swift_allocError();
    *v56 = 1;
    swift_willThrow();

    v57 = v69;
    v58 = *v68;
    (*v68)(v41, v69);
    result = v58(v44, v57);
  }

LABEL_15:
  v59 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B8BE5488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 28789 && a2 == 0xE200000000000000 || (sub_1B8C25A08() & 1) != 0)
  {
    v6 = MEMORY[0x1E699C1F0];
    goto LABEL_5;
  }

  if (a1 == 1853321060 && a2 == 0xE400000000000000 || (sub_1B8C25A08() & 1) != 0)
  {
    v6 = MEMORY[0x1E699C1C8];
    goto LABEL_5;
  }

  if (a1 == 0x6E7265636E6F63 && a2 == 0xE700000000000000 || (sub_1B8C25A08() & 1) != 0)
  {
    v6 = MEMORY[0x1E699C1D8];
    goto LABEL_5;
  }

  if (a1 == 1885956979 && a2 == 0xE400000000000000 || (sub_1B8C25A08() & 1) != 0)
  {
    v6 = MEMORY[0x1E699C1E8];
    goto LABEL_5;
  }

  if (a1 == 0x64696C61766E69 && a2 == 0xE700000000000000 || (sub_1B8C25A08() & 1) != 0)
  {
    goto LABEL_23;
  }

  if ((a1 != 0x646574656C6564 || a2 != 0xE700000000000000) && (sub_1B8C25A08() & 1) == 0)
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v11 = sub_1B8C23C38();
    __swift_project_value_buffer(v11, qword_1EDC85D40);
    v12 = sub_1B8C23C18();
    v13 = sub_1B8C25478();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_1B8B5DD48(0xD00000000000001ELL, 0x80000001B8C36550, &v16);
      _os_log_impl(&dword_1B8B22000, v12, v13, "%{public}s Unknown form answer mapping", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B8CCB0E0](v15, -1, -1);
      MEMORY[0x1B8CCB0E0](v14, -1, -1);
    }

LABEL_23:
    v6 = MEMORY[0x1E699C1D0];
    goto LABEL_5;
  }

  v6 = MEMORY[0x1E699C1E0];
LABEL_5:
  v7 = *v6;
  v8 = sub_1B8C236E8();
  v9 = *(*(v8 - 8) + 104);

  return v9(a3, v7, v8);
}

uint64_t sub_1B8BE57C8()
{
  result = sub_1B8C250F8();
  qword_1EBAB39F8 = result;
  return result;
}

uint64_t FBKEvaluationController.APIType.description.getter()
{
  v1 = 0x49557466697753;
  if (*v0 != 1)
  {
    v1 = 0x74694B707041;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74694B4955;
  }
}

Feedback::FBKEvaluationController::APIType_optional __swiftcall FBKEvaluationController.APIType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B8C25908();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B8BE58B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x49557466697753;
  if (v2 != 1)
  {
    v4 = 0x74694B707041;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x74694B4955;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x49557466697753;
  if (*a2 != 1)
  {
    v8 = 0x74694B707041;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x74694B4955;
  }

  if (*a2)
  {
    v10 = v7;
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
    v11 = sub_1B8C25A08();
  }

  return v11 & 1;
}

uint64_t sub_1B8BE59A8()
{
  v1 = *v0;
  sub_1B8C25AB8();
  sub_1B8C251B8();

  return sub_1B8C25AF8();
}

uint64_t sub_1B8BE5A44()
{
  *v0;
  *v0;
  sub_1B8C251B8();
}

uint64_t sub_1B8BE5ACC()
{
  v1 = *v0;
  sub_1B8C25AB8();
  sub_1B8C251B8();

  return sub_1B8C25AF8();
}

void sub_1B8BE5B70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x49557466697753;
  if (v2 != 1)
  {
    v5 = 0x74694B707041;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74694B4955;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B8BE5BC8()
{
  v1 = 0x49557466697753;
  if (*v0 != 1)
  {
    v1 = 0x74694B707041;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74694B4955;
  }
}

uint64_t sub_1B8BE5C1C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  *a1 = *(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType);
  return result;
}

uint64_t sub_1B8BE5CCC(unsigned __int8 *a1)
{
  v2 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0x49557466697753;
  if (*(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType) != 1)
  {
    v5 = 0x74694B707041;
    v4 = 0xE600000000000000;
  }

  if (*(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x74694B4955;
  }

  if (*(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0xE700000000000000;
  v9 = 0x49557466697753;
  if (v3 != 1)
  {
    v9 = 0x74694B707041;
    v8 = 0xE600000000000000;
  }

  if (v3)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x74694B4955;
  }

  if (v3)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  if (v6 == v10 && v7 == v11)
  {

LABEL_21:
    *(v1 + v2) = v3;
    return result;
  }

  v13 = sub_1B8C25A08();

  if (v13)
  {
    goto LABEL_21;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23578();
}

uint64_t sub_1B8BE5EB4()
{
  v1 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController_blockPresentationDetentUsage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B8BE5EF8(char a1)
{
  v3 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController_blockPresentationDetentUsage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void (*sub_1B8BE5FE4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC8Feedback23FBKEvaluationController___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v5 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController___presentAsEmbeddedView;
  *(v4 + 32) = OBJC_IVAR____TtC8Feedback23FBKEvaluationController___presentAsEmbeddedView;
  *(v4 + 40) = *(v1 + v5);
  return sub_1B8BE60E8;
}

uint64_t sub_1B8BE6144()
{
  v1 = 0x676E6964616F4CLL;
  if (*v0 != 1)
  {
    v1 = 0x697461756C617645;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E696C6449;
  }
}

uint64_t sub_1B8BE61A0()
{
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  return *(v0 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__evaluationState);
}

uint64_t sub_1B8BE6248@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1B8BE62FC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__evaluationState) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8BE640C(unsigned __int8 a1)
{
  if (qword_1EDC85598 != -1)
  {
    v45 = a1;
    swift_once();
    a1 = v45;
  }

  v2 = a1;
  v3 = sub_1B8C23C38();
  __swift_project_value_buffer(v3, qword_1EDC85D40);
  v4 = v1;
  v5 = sub_1B8C23C18();
  v6 = sub_1B8C25498();

  v7 = &unk_1EBAA8000;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v47 = v9;
    *v8 = 136446722;
    *(v8 + 4) = sub_1B8B5DD48(0xD000000000000010, 0x80000001B8C36510, &v47);
    *(v8 + 12) = 2080;
    swift_getKeyPath();
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
    sub_1B8C23588();

    if (v4[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__evaluationState])
    {
      if (v4[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__evaluationState] == 1)
      {
        v10 = 0xE700000000000000;
        v11 = 0x676E6964616F4CLL;
      }

      else
      {
        v11 = 0x697461756C617645;
        v10 = 0xEA0000000000676ELL;
      }
    }

    else
    {
      v10 = 0xE600000000000000;
      v11 = 0x676E696C6449;
    }

    v12 = sub_1B8B5DD48(v11, v10, &v47);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2080;
    v13 = 0xE700000000000000;
    v14 = 0x676E6964616F4CLL;
    if (v2 != 1)
    {
      v14 = 0x697461756C617645;
      v13 = 0xEA0000000000676ELL;
    }

    if (v2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x676E696C6449;
    }

    if (v2)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0xE600000000000000;
    }

    v17 = sub_1B8B5DD48(v15, v16, &v47);

    *(v8 + 24) = v17;
    _os_log_impl(&dword_1B8B22000, v5, v6, "%{public}s [%s] -> [%s]", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);

    v7 = &unk_1EBAA8000;
  }

  else
  {
  }

  if (([objc_opt_self() isMainThread] & 1) == 0)
  {
    v19 = sub_1B8C23C18();
    v29 = sub_1B8C25478();
    if (os_log_type_enabled(v19, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1B8B22000, v19, v29, "BUG in Feedback.framework client.  State transitions must occur on main thread / queue.", v30, 2u);
      v28 = v30;
LABEL_34:
      MEMORY[0x1B8CCB0E0](v28, -1, -1);
    }

LABEL_35:

    return 0;
  }

  swift_getKeyPath();
  v47 = v4;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C23588();

  v18 = v7[144];
  if (v4[v18])
  {
    swift_getKeyPath();
    v47 = v4;
    sub_1B8C23588();

    if (v4[v18] == v2)
    {
      v19 = sub_1B8C23C18();
      v20 = sub_1B8C25478();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v47 = v22;
        *v21 = 136315138;
        v23 = 0xE700000000000000;
        v24 = 0x676E6964616F4CLL;
        if (v2 != 1)
        {
          v24 = 0x697461756C617645;
          v23 = 0xEA0000000000676ELL;
        }

        if (v2)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0x676E696C6449;
        }

        if (v2)
        {
          v26 = v23;
        }

        else
        {
          v26 = 0xE600000000000000;
        }

        v27 = sub_1B8B5DD48(v25, v26, &v47);

        *(v21 + 4) = v27;
        _os_log_impl(&dword_1B8B22000, v19, v20, "Detected duplicate state transition to [%s].", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x1B8CCB0E0](v22, -1, -1);
        v28 = v21;
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v2)
    {
      v32 = v4;
      v33 = sub_1B8C23C18();
      v34 = sub_1B8C25478();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = v46;
        *v35 = 136315394;
        swift_getKeyPath();
        sub_1B8C23588();

        if (v4[v18])
        {
          if (v4[v18] == 1)
          {
            v36 = 0xE700000000000000;
            v37 = 0x676E6964616F4CLL;
          }

          else
          {
            v37 = 0x697461756C617645;
            v36 = 0xEA0000000000676ELL;
          }

          v38 = v34;
          v39 = v46;
        }

        else
        {
          v37 = 0x676E696C6449;
          v36 = 0xE600000000000000;
          v38 = v34;
          v39 = v46;
        }

        v41 = sub_1B8B5DD48(v37, v36, &v47);

        *(v35 + 4) = v41;
        *(v35 + 12) = 2080;
        if (v2 == 2)
        {
          v42 = 0x697461756C617645;
        }

        else
        {
          v42 = 0x676E6964616F4CLL;
        }

        if (v2 == 2)
        {
          v43 = 0xEA0000000000676ELL;
        }

        else
        {
          v43 = 0xE700000000000000;
        }

        v44 = sub_1B8B5DD48(v42, v43, &v47);

        *(v35 + 14) = v44;
        _os_log_impl(&dword_1B8B22000, v33, v38, "Failed to transition from [%s] to [%s]", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8CCB0E0](v39, -1, -1);
        MEMORY[0x1B8CCB0E0](v35, -1, -1);
      }

      return 0;
    }
  }

  else if (!v2)
  {
    v4[v18] = 0;
    return 1;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v47 = v4;
  sub_1B8C23578();

  return 1;
}