unint64_t sub_1AB429A08()
{
  result = qword_1EB43D148;
  if (!qword_1EB43D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D148);
  }

  return result;
}

uint64_t sub_1AB429A5C()
{
  result = sub_1AB069E84(&unk_1F1FF3D60);
  qword_1EB435010 = result;
  *algn_1EB435018 = v1;
  return result;
}

SecTrustRef sub_1AB429AA0(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437548);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4DE160;
  *(v2 + 32) = a1;
  type metadata accessor for SecCertificate(0);
  v3 = a1;
  v4 = sub_1AB460934();

  v5 = SecTrustCreateWithCertificates(v4, 0, v10);

  v6 = v10[0];
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v10[0] == 0;
  }

  if (v7)
  {
    sub_1AB31D6E0(0xD00000000000002ELL, 0x80000001AB50F100);
    sub_1AB429A08();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
  }

  return v6;
}

unint64_t sub_1AB429BE0(void *a1, uint64_t a2)
{
  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  CC_SHA256_Init(v6);
  while (1)
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v7);
    if (((*(v8 + 8))(v7, v8) & 1) == 0)
    {
      v13 = sub_1AB4609B4();
      *(v13 + 16) = 32;
      *(v13 + 48) = 0u;
      *(v13 + 32) = 0u;
      CC_SHA256_Final((v13 + 32), v6);
      v11 = sub_1AB069E84(v13);

LABEL_8:
      MEMORY[0x1AC59F020](v6, -1, -1);
      MEMORY[0x1AC59F020](v5, -1, -1);
      return v11;
    }

    v9 = a1[3];
    v10 = a1[4];
    v11 = __swift_project_boxed_opaque_existential_1Tm(a1, v9);
    result = (*(v10 + 32))(v5, a2, v9, v10);
    if (v2)
    {
      goto LABEL_8;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (HIDWORD(result))
    {
      goto LABEL_10;
    }

    CC_SHA256_Update(v6, v5, result);
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t JetpackSignatureVerifierError.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

unint64_t sub_1AB429E3C()
{
  result = qword_1EB43D150;
  if (!qword_1EB43D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D150);
  }

  return result;
}

uint64_t static _AutomationID.covering(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AB4D4720;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = MEMORY[0x1E69E7CC0];
  *a3 = v6;
  a3[1] = v7;
}

uint64_t _AutomationID.attributes(_:)@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = v2;
  a1[1] = v3;

  return sub_1AB05ED60(v4);
}

uint64_t _AutomationID.components(_:)@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = v2;
  a1[1] = v3;

  return sub_1AB06F948(v4, sub_1AB06E6CC, 0);
}

uint64_t _AutomationID.debugDescription.getter()
{
  sub_1AB4615D4();

  strcpy(v2, "_AutomationID(");
  v0 = _AutomationID.axElementID.getter();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return v2[0];
}

uint64_t static _AutomationID.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1AB16D86C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1AB16D8FC(v2, v3);
}

uint64_t sub_1AB42A10C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1AB16D86C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1AB16D8FC(v2, v3);
}

uint64_t AutomationAttribute.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AutomationAttribute.key.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AutomationAttribute.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AutomationAttribute.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static AutomationAttribute.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1AB461DA4(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_1AB461DA4() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t AutomationAttribute.hash(into:)()
{
  v1 = *(v0 + 24);
  sub_1AB460684();
  if (!v1)
  {
    return sub_1AB4620C4();
  }

  sub_1AB4620C4();

  return sub_1AB460684();
}

uint64_t AutomationAttribute.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_1AB4620A4();
  sub_1AB460684();
  sub_1AB4620C4();
  if (v1)
  {
    sub_1AB460684();
  }

  return sub_1AB462104();
}

uint64_t sub_1AB42A420(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1AB461DA4(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_1AB461DA4() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AB42A4C0()
{
  v1 = *(v0 + 24);
  sub_1AB4620A4();
  sub_1AB460684();
  sub_1AB4620C4();
  if (v1)
  {
    sub_1AB460684();
  }

  return sub_1AB462104();
}

uint64_t sub_1AB42A54C()
{
  v1 = *(v0 + 24);
  sub_1AB460684();
  if (!v1)
  {
    return sub_1AB4620C4();
  }

  sub_1AB4620C4();

  return sub_1AB460684();
}

uint64_t sub_1AB42A5C8()
{
  v1 = *(v0 + 24);
  sub_1AB4620A4();
  sub_1AB460684();
  sub_1AB4620C4();
  if (v1)
  {
    sub_1AB460684();
  }

  return sub_1AB462104();
}

unint64_t sub_1AB42A654()
{
  result = qword_1EB43D158;
  if (!qword_1EB43D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D158);
  }

  return result;
}

unint64_t sub_1AB42A6B8()
{
  result = qword_1ED4D0090;
  if (!qword_1ED4D0090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D160);
    sub_1AB05F57C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0090);
  }

  return result;
}

uint64_t static Dependency.satisfying<A>(_:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  *a3 = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3 + 1);
  return (*(v6 + 32))(boxed_opaque_existential_0, v9, a2);
}

{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  *a3 = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3 + 1);
  return (*(v6 + 32))(boxed_opaque_existential_0, v9, a2);
}

uint64_t Dependency._Personality.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t static Dependency.satisfying<A>(_:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a2;
  *a4 = a1;
  a4[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4 + 1);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, &v7, a3);
  return swift_unknownObjectRetain();
}

unint64_t sub_1AB42AB78()
{
  result = qword_1EB43D180;
  if (!qword_1EB43D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D180);
  }

  return result;
}

__n128 CompoundAction.init(actionMetrics:subactions:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u64[0] = a2;
  return result;
}

uint64_t sub_1AB42ABF4()
{
  if (*v0)
  {
    return 0x6F69746361627573;
  }

  else
  {
    return 0x654D6E6F69746361;
  }
}

uint64_t sub_1AB42AC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v6 || (sub_1AB461DA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69746361627573 && a2 == 0xEA0000000000736ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AB461DA4();

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

uint64_t sub_1AB42AD2C(uint64_t a1)
{
  v2 = sub_1AB42B030();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB42AD68(uint64_t a1)
{
  v2 = sub_1AB42B030();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CompoundAction.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D188);
  v5 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v7 = &v15 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB42B030();
  sub_1AB462224();
  if (!v2)
  {
    v17 = v5;
    v21 = 0;
    sub_1AB24CE74();
    v8 = v18;
    sub_1AB461A54();
    v9 = v19;
    if (!v19)
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v16 = v9;
    v10 = MEMORY[0x1E69E7CC8];
    if (v19)
    {
      v10 = v20;
    }

    v15 = v10;
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    v11 = sub_1AB462214();
    sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, v11);

    LOBYTE(v19) = 1;
    v12 = sub_1AB42B084();
    (*(v17 + 8))(v7, v8);
    v13 = v15;
    *a2 = v16;
    a2[1] = v13;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1AB42B030()
{
  result = qword_1EB43D190;
  if (!qword_1EB43D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D190);
  }

  return result;
}

uint64_t sub_1AB42B084()
{
  type metadata accessor for _CodeByKind_Many();
  sub_1AB461B04();
  swift_getWitnessTable();
  result = sub_1AB461AC4();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t CompoundAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D198);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v13[2] = v1[2];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v9 = sub_1AB42B030();

  v13[1] = v9;
  sub_1AB462274();
  v14 = v7;
  v15 = v8;
  v16 = 0;
  sub_1AB24CA70();
  v10 = v13[3];
  sub_1AB461BF4();

  if (!v10)
  {
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    v11 = sub_1AB462264();
    sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, v11);

    LOBYTE(v14) = 1;
    sub_1AB42B36C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AB42B36C()
{
  _CodeByKind_Many.init(wrappedValue:)();
  sub_1AB461C14();
  type metadata accessor for _CodeByKind_Many();

  swift_getWitnessTable();
  sub_1AB461BF4();
}

uint64_t CompoundAction.actionMetrics.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 CompoundAction.actionMetrics.setter(__n128 *a1)
{

  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t CompoundAction.subactions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t CompoundAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, &v32);

  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v31);

  v7 = sub_1AB37F7F4(v31, v6);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v31);
  v25[0] = v6;
  ScalarDictionary.init(tryDeserializing:using:)(v31, v25, &v28);
  sub_1AB066D84(&v32);
  v8 = v28;
  JSONObject.subscript.getter(0x6F69746361627573, 0xEA0000000000736ELL, v31);
  sub_1AB01EC0C(v31, v25);
  v9 = v26;
  if (!v26)
  {

    sub_1AB066D84(v31);
    sub_1AB014AC0(v25, &qword_1EB436BA0);
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
LABEL_7:
    sub_1AB014AC0(&v28, &qword_1EB437EF8);
    sub_1AB163664();
    swift_allocError();
    *v18 = xmmword_1AB4FA760;
    v19 = MEMORY[0x1E69E7CC0];
    *(v18 + 16) = 0x40000001F2019270uLL;
    *(v18 + 24) = v19;
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

  v10 = v27;
  __swift_project_boxed_opaque_existential_1Tm(v25, v26);
  (*(v10 + 152))(&v28, v9, v10);
  sub_1AB066D84(v31);
  v11 = __swift_destroy_boxed_opaque_existential_1Tm(v25);
  if (!*(&v29 + 1))
  {

    goto LABEL_7;
  }

  v24 = v8;
  v35 = v7;
  v23[0] = a3;
  v23[1] = v23;
  v32 = v28;
  v33 = v29;
  v34 = v30;
  MEMORY[0x1EEE9AC00](v11);
  v22[2] = v6;
  v13 = *(&v33 + 1);
  v12 = v34;
  __swift_project_boxed_opaque_existential_1Tm(&v32, *(&v33 + 1));
  v14 = *(v12 + 48);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438488);
  v16 = v14(sub_1AB42B8F4, v22, v15, v13, v12);

  if (v3)
  {

    sub_1AB066D84(a1);
    return sub_1AB06A37C(&v32);
  }

  else
  {
    sub_1AB066D84(a1);
    result = sub_1AB06A37C(&v32);
    v20 = v23[0];
    v21 = v24;
    *v23[0] = v35;
    *(v20 + 8) = v21;
    *(v20 + 16) = v16;
  }

  return result;
}

unint64_t sub_1AB42B93C()
{
  result = qword_1EB43D1A0;
  if (!qword_1EB43D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D1A0);
  }

  return result;
}

unint64_t sub_1AB42B994()
{
  result = qword_1EB43D1A8;
  if (!qword_1EB43D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D1A8);
  }

  return result;
}

unint64_t sub_1AB42B9EC()
{
  result = qword_1EB43D1B0;
  if (!qword_1EB43D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D1B0);
  }

  return result;
}

void (*Lazy.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = sub_1AB461354();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  Lazy.wrappedValue.getter();
  return sub_1AB42BB54;
}

void sub_1AB42BB54(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    sub_1AB039CD8(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1AB039CD8(*(*a1 + 40));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Lazy.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  sub_1AB461354();
  result = sub_1AB1AA5C4(sub_1AB42C8B0, v8, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_1AB42BCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v7();
  if (!v3)
  {
    (*(v6 + 32))(a3, v9, a2);
    return (*(v6 + 56))(a3, 0, 1, a2);
  }

  return result;
}

uint64_t Lazy.description.getter()
{
  sub_1AB461354();
  type metadata accessor for LazyValueWrapper();

  swift_getWitnessTable();
  sub_1AB461D74();

  return 0;
}

uint64_t Lazy<A>.encode(to:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = sub_1AB461354();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  Lazy.wrappedValue.getter();
  v7 = *(v2 - 8);
  if ((*(v7 + 48))(v6, 1, v2) == 1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  sub_1AB460434();
  return (*(v7 + 8))(v6, v2);
}

uint64_t Lazy<A>.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  sub_1AB0B9254(a1, v13);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = v13[1];
  *(v10 + 32) = v13[0];
  *(v10 + 48) = v11;
  *(v10 + 64) = v14;
  *(v10 + 72) = v9;
  sub_1AB461354();
  sub_1AB1AA5C4(sub_1AB42C8D0, v10, v13);
  result = sub_1AB066D84(a1);
  *a5 = *&v13[0];
  return result;
}

uint64_t sub_1AB42C0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1AB0B9254(a1, v17);
  v14[0] = a2;
  v10 = *(a4 + 8);

  v10(v17, v14, a3, a4);
  if (!v5)
  {
    return (*(*(a3 - 8) + 56))(a5, 0, 1, a3);
  }

  sub_1AB3D85D8(0xD000000000000027, 0x80000001AB4FFF70, a2, v17);
  sub_1AB1FC1DC(v17, v14);
  v11 = v15;
  if (v15)
  {
    v12 = v16;
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    (*(v12 + 8))(a3, v5, v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    sub_1AB1FC24C(v14);
  }

  swift_willThrow();
  return sub_1AB1FC24C(v17);
}

uint64_t static Lazy<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v47 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AB461354();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v38 - v8;
  v10 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  type metadata accessor for Lazy();
  Lazy.wrappedValue.getter();
  Lazy.wrappedValue.getter();
  v44 = TupleTypeMetadata2;
  v19 = *(TupleTypeMetadata2 + 48);
  v20 = *(v10 + 16);
  v20(v9, v18, v6);
  v45 = v19;
  v21 = &v9[v19];
  v22 = v6;
  v20(v21, v15, v6);
  v23 = *(v47 + 48);
  v46 = a3;
  if (v23(v9, 1, a3) != 1)
  {
    v39 = v18;
    v26 = v42;
    v27 = v22;
    v20(v42, v9, v22);
    v28 = v45;
    v29 = v46;
    v30 = v23(&v9[v45], 1, v46);
    v31 = v47;
    v32 = (v47 + 8);
    if (v30 != 1)
    {
      v34 = v40;
      (*(v47 + 32))(v40, &v9[v28], v29);
      v25 = sub_1AB460504();
      v35 = *(v31 + 8);
      v35(v34, v29);
      v36 = *(v10 + 8);
      v36(v15, v27);
      v36(v39, v27);
      v35(v26, v29);
      v36(v9, v27);
      return v25 & 1;
    }

    v33 = *(v10 + 8);
    v33(v15, v27);
    v33(v39, v27);
    (*v32)(v26, v29);
    goto LABEL_6;
  }

  v24 = *(v10 + 8);
  v24(v15, v22);
  v24(v18, v22);
  if (v23(&v9[v45], 1, v46) != 1)
  {
LABEL_6:
    (*(v43 + 8))(v9, v44);
    v25 = 0;
    return v25 & 1;
  }

  v24(v9, v22);
  v25 = 1;
  return v25 & 1;
}

uint64_t Lazy<A>.hash(into:)()
{
  v0 = sub_1AB461354();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  Lazy.wrappedValue.getter();
  sub_1AB461374();
  return (*(v1 + 8))(v3, v0);
}

uint64_t Lazy<A>.hashValue.getter()
{
  sub_1AB4620A4();
  Lazy<A>.hash(into:)();
  return sub_1AB462104();
}

uint64_t sub_1AB42C85C()
{
  sub_1AB4620A4();
  Lazy<A>.hash(into:)();
  return sub_1AB462104();
}

uint64_t sub_1AB42C93C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v8 = v6;
    while (v8 < *(v3 + 16))
    {
      v9 = *(v3 + 32 + 8 * v8);
      v10 = *(*v9 + 88);

      if ((v10(v11) & 1) == 0 || (v12 = (*(*v9 + 104))(a2), (v10(v12) & 1) == 0))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1AB2B0528(0, *(v7 + 2) + 1, 1, v7);
        }

        v14 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v14 >= v13 >> 1)
        {
          v7 = sub_1AB2B0528((v13 > 1), v14 + 1, 1, v7);
        }

        *(v7 + 2) = v14 + 1;
        *&v7[8 * v14 + 32] = v8;
        v6 = v8 + 1;
        if (v4 - 1 != v8)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }

      ++v8;

      if (v4 == v8)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_16:

    v15 = *(v7 + 2);
    if (!v15)
    {
    }

    while (v15 <= *(v7 + 2))
    {
      v16 = v15 - 1;
      v17 = *&v7[8 * v15 + 24];
      swift_beginAccess();
      sub_1AB3C1B44(v17, &v19);
      swift_endAccess();

      v15 = v16;
      if (!v16)
      {
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB42CB64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v8 = v6;
    while (v8 < *(v3 + 16))
    {
      v9 = *(v3 + 32 + 8 * v8);
      v10 = *(*v9 + 88);

      if ((v10(v11) & 1) == 0 || (v19[0] = a2, v12 = (*(*v9 + 104))(v19), (v10(v12) & 1) == 0))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1AB2B0528(0, *(v7 + 2) + 1, 1, v7);
        }

        v14 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v14 >= v13 >> 1)
        {
          v7 = sub_1AB2B0528((v13 > 1), v14 + 1, 1, v7);
        }

        *(v7 + 2) = v14 + 1;
        *&v7[8 * v14 + 32] = v8;
        v6 = v8 + 1;
        if (v4 - 1 != v8)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }

      ++v8;

      if (v4 == v8)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_16:

    v15 = *(v7 + 2);
    if (!v15)
    {
    }

    while (v15 <= *(v7 + 2))
    {
      v16 = v15 - 1;
      v17 = *&v7[8 * v15 + 24];
      swift_beginAccess();
      sub_1AB3C1BE8(v17, &v20);
      swift_endAccess();

      v15 = v16;
      if (!v16)
      {
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AppMetricsPresenter.AppStateEvent.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static AppMetricsPresenter.AppStateEvent.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1AB461DA4();
  }
}

uint64_t AppMetricsPresenter.AppStateEvent.hashValue.getter()
{
  sub_1AB4620A4();
  sub_1AB460684();
  return sub_1AB462104();
}

uint64_t sub_1AB42CE74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438578);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  off_1EB4326A0 = result;
  return result;
}

uint64_t AppMetricsPresenter.__allocating_init(pipeline:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AppMetricsPresenter.init(pipeline:)(a1);
  return v2;
}

uint64_t AppMetricsPresenter.flushedEvents.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 216) = a1;
}

Swift::Void __swiftcall AppMetricsPresenter.didBecomeActive(using:)(JetEngine::MetricsFieldsContext using)
{
  v5 = v1;
  v7 = sub_1AB460224();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *using.storage._rawValue;
  sub_1AB015664();
  *v10 = sub_1AB461124();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = sub_1AB460244();
  (*(v8 + 8))(v10, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  if (*(v5 + 209) != 1)
  {
    return;
  }

  v13 = *(v5 + 224);
  v14 = *(v13 + 16);
  [v14 lock];
  sub_1AB0C9664(v13, 0x7265746E65, 0xE500000000000000);
  [v14 unlock];
  v3 = *(v5 + 232);
  v7 = *(v5 + 240);
  swift_beginAccess();

  v12 = sub_1AB07EF00(0x7265746E65);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D47F0;
  *(inited + 32) = 0x707954746E657665;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 0x7265746E65;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = v4;
  *(inited + 80) = 1701869940;
  *(inited + 88) = 0xE400000000000000;
  if (qword_1EB432698 != -1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v15 = off_1EB4326A0;
  os_unfair_lock_lock(off_1EB4326A0 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v15[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v15 + 5);
  v17 = 0x68636E75616CLL;
  if (os_unfair_lock_opaque_low)
  {
    v17 = 0x746977536B736174;
  }

  v18 = 0xE600000000000000;
  *(inited + 120) = v4;
  if (os_unfair_lock_opaque_low)
  {
    v18 = 0xEA00000000006863;
  }

  *(inited + 96) = v17;
  *(inited + 104) = v18;
  v19 = sub_1AB01B220(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0);
  swift_arrayDestroy();
  v20 = sub_1AB1914C4(&unk_1F1FF4498);
  sub_1AB2D82C8(&unk_1F1FF44B8);
  v22[0] = v3;
  v22[1] = v7;
  v23 = v12 & 1;
  v24 = v19;
  v25 = v20;
  v26 = MEMORY[0x1E69E7CD0];
  v21 = v11;
  MetricsPipeline.process(_:using:)(v22, &v21);

  *(v5 + 209) = 0;
}

uint64_t AppMetricsPresenter.deinit()
{
  sub_1AB056154(v0 + 16);

  return v0;
}

uint64_t AppMetricsPresenter.__deallocating_deinit()
{
  sub_1AB056154(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1AB42D59C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1AB460514();
  v2 = [v0 objectForInfoDictionaryKey_];

  if (!v2)
  {
    return 0;
  }

  sub_1AB461494();
  swift_unknownObjectRelease();
  sub_1AB014B78(v7, v8);
  sub_1AB0165C4(v8, v7);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1AB0165C4(v8, v7);
    sub_1AB083ACC();
    if (swift_dynamicCast())
    {
      v4 = [v6 stringValue];
      v3 = sub_1AB460544();

      goto LABEL_6;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    return 0;
  }

  v3 = v6;
LABEL_6:
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v3;
}

uint64_t sub_1AB42D728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB01EC0C(a1, v11);
  v4 = v12;
  if (v12)
  {
    v5 = v13;
    __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    (*(v5 + 160))(&v14, v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    if (*(&v15 + 1))
    {
      result = sub_1AB066D84(a1);
      v7 = v16;
      v19 = v16;
      v8 = v15;
      v17 = v14;
      v18 = v15;
      *a2 = v14;
      *(a2 + 16) = v8;
      *(a2 + 32) = v7;
      return result;
    }
  }

  else
  {
    sub_1AB014AC0(v11, &qword_1EB436BA0);
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
  }

  sub_1AB014AC0(&v14, &qword_1EB436BC0);
  sub_1AB163664();
  swift_allocError();
  v9 = MEMORY[0x1E69E7CC0];
  *v10 = &type metadata for LocalizedStringsContainerJSONObject;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
  swift_willThrow();
  return sub_1AB066D84(a1);
}

uint64_t sub_1AB42D878()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  result = (*(v2 + 56))(v1, v2);
  v4 = result;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 0;
    v7 = result + 40;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = (v7 + 16 * v6);
      v10 = v6;
      while (1)
      {
        if (v10 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        v11 = *(v9 - 1);
        v12 = *v9;
        if (v11 != 0x74616D726F66 || v12 != 0xE600000000000000)
        {
          result = sub_1AB461DA4();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        ++v10;
        v9 += 2;
        if (v5 == v10)
        {
          goto LABEL_18;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v17 = v7;
      if ((result & 1) == 0)
      {
        result = sub_1AB03BD38(0, *(v8 + 16) + 1, 1);
      }

      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_1AB03BD38((v14 > 1), v15 + 1, 1);
      }

      v6 = v10 + 1;
      *(v8 + 16) = v15 + 1;
      v16 = v8 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v12;
      v7 = v17;
    }

    while (v5 - 1 != v10);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

LABEL_18:

  return v8;
}

uint64_t sub_1AB42DA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1Tm(v4, v9);
  (*(v10 + 24))(v27, a3, a4, v9, v10);
  sub_1AB01EC0C(v27, v21);
  v11 = v22;
  if (!v22)
  {
    sub_1AB066D84(v27);
    sub_1AB014AC0(v21, &qword_1EB436BA0);
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
    goto LABEL_6;
  }

  v12 = v23;
  __swift_project_boxed_opaque_existential_1Tm(v21, v22);
  (*(v12 + 160))(&v24, v11, v12);
  sub_1AB066D84(v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  if (!*(&v25 + 1))
  {
LABEL_6:
    sub_1AB014AC0(&v24, &qword_1EB436BC0);
    v17 = 0x40000001F2018F28uLL;
    sub_1AB163664();
    swift_allocError();
    *v18 = a3;
    v18[1] = a4;
    v19 = MEMORY[0x1E69E7CC0];
    v18[2] = 0x40000001F2018F28uLL;
    v18[3] = v19;
    swift_willThrow();

    return v17;
  }

  v28[0] = v24;
  v28[1] = v25;
  v13 = v26;
  v29 = v26;
  v14 = *(&v25 + 1);
  __swift_project_boxed_opaque_existential_1Tm(v28, *(&v25 + 1));
  (*(v13 + 24))(v27, a1, a2, v14, v13);
  sub_1AB01EC0C(v27, &v24);
  v15 = *(&v25 + 1);
  if (*(&v25 + 1))
  {
    v16 = v26;
    __swift_project_boxed_opaque_existential_1Tm(&v24, *(&v25 + 1));
    v17 = (*(v16 + 24))(v15, v16);
    sub_1AB066D84(v27);
    __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  }

  else
  {
    sub_1AB066D84(v27);
    sub_1AB014AC0(&v24, &qword_1EB436BA0);
    v17 = 0;
  }

  sub_1AB07CDB0(v28);
  return v17;
}

uint64_t sub_1AB42DCA0()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t dispatch thunk of LanguageSource.fetchLanguages()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB2231A8;

  return v7(a1, a2);
}

Swift::Void __swiftcall SwiftLogger.log(contentsOf:withLevel:)(Swift::OpaquePointer contentsOf, JetEngine::LogMessageLevel withLevel)
{
  v3 = *withLevel;
  v4 = *v2;
  v5 = v2[1];
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v6 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v6[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v6 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
  }

  *(swift_allocObject() + 16) = (os_unfair_lock_opaque_low & 1) == 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
  sub_1AB016A34();
  v8 = sub_1AB460484();
  v10 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0);
  v11 = swift_allocObject();
  v12 = 0xE500000000000000;
  *(v11 + 16) = xmmword_1AB4D4720;
  if (v3 == 2)
  {
    v13 = 1868983913;
  }

  else
  {
    v13 = 0x6775626564;
  }

  if (v3 == 2)
  {
    v12 = 0xE400000000000000;
  }

  v14 = 0xE500000000000000;
  v15 = 0x726F727265;
  if (v3)
  {
    v15 = 0x676E696E726177;
    v14 = 0xE700000000000000;
  }

  if (v3 <= 1)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (v3 <= 1)
  {
    v17 = v14;
  }

  else
  {
    v17 = v12;
  }

  MEMORY[0x1AC59BA20](v16, v17);

  MEMORY[0x1AC59BA20](23328, 0xE200000000000000);
  MEMORY[0x1AC59BA20](v4, v5);
  MEMORY[0x1AC59BA20](2112093, 0xE300000000000000);
  MEMORY[0x1AC59BA20](v8, v10);

  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 32) = 0;
  *(v11 + 40) = 0xE000000000000000;
  sub_1AB462074();
}

void sub_1AB42E0C8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v29, &unk_1EB43D1E0);
  if (v30 == 3)
  {
    sub_1AB014AC0(v29, &unk_1EB43D1E0);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v30)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = v29[0];
    sub_1AB0B9254(a1, v28);
    v28[40] = 1;
    swift_beginAccess();
    sub_1AB017CC4(v28, v1 + 24, &unk_1EB43D1E0);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1EB4397A0;
      do
      {
        sub_1AB014A58(v6, v28, v7);
        sub_1AB014A58(v28, v25, v7);
        v11 = v25[0];
        if (v27)
        {
          sub_1AB0B9254(a1, &v22);
          v8 = *(*(v11 + 64) + 40);
          v9 = v24;
          v10 = v23;
          *v8 = v22;
          *(v8 + 16) = v10;
          *(v8 + 32) = v9;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v28, v7);
        }

        else
        {
          v12 = v25[1];

          sub_1AB0149B0(&v26, &v22);
          v13 = v24;
          v19 = *(&v23 + 1);
          __swift_project_boxed_opaque_existential_1Tm(&v22, *(&v23 + 1));
          sub_1AB0B9254(a1, v20);
          v14 = swift_allocObject();
          *(v14 + 16) = v11;
          *(v14 + 24) = v12;
          v15 = v20[1];
          *(v14 + 32) = v20[0];
          *(v14 + 48) = v15;
          *(v14 + 64) = v21;
          v16 = v7;
          v17 = a1;
          v18 = *(v13 + 8);

          v18(sub_1AB0224A8, v14, v19, v13);
          a1 = v17;
          v7 = v16;

          sub_1AB014AC0(v28, v16);
          __swift_destroy_boxed_opaque_existential_1Tm(&v22);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB42E3D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  if (*(v4 + 56) == 3)
  {
    os_unfair_lock_unlock(v5 + 4);
  }

  else if (*(v4 + 56))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v6 = *(v4 + 24);
    v7 = *(v4 + 32);
    v8 = *(v4 + 40);
    v9 = *(v4 + 48);
    sub_1AB2AB398(v6, v7, v8, v9, 0);
    sub_1AB144A64(a1, a2);
    *(v4 + 24) = a1;
    *(v4 + 32) = a2;
    *(v4 + 40) = a3;
    *(v4 + 48) = a4;
    *(v4 + 56) = 1;
    sub_1AB199B30(v6, v7, v8, v9, 0);
    os_unfair_lock_unlock(v5 + 4);
    v10 = *(v6 + 16);
    if (v10)
    {
      v23 = v9;
      v24 = v8;
      v25 = v7;
      v26 = v6;
      v11 = v6 + 32;
      do
      {
        sub_1AB014A58(v11, v37, &unk_1EB43D290);
        sub_1AB014A58(v37, v34, &unk_1EB43D290);
        v13 = v34[0];
        if (v36)
        {
          sub_1AB144A64(a1, a2);
          v12 = *(*(v13 + 64) + 40);
          *v12 = a1;
          v12[1] = a2;
          v12[2] = a3;
          v12[3] = a4;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v37, &unk_1EB43D290);
        }

        else
        {
          v14 = v34[1];

          sub_1AB0149B0(&v35, v31);
          v16 = v32;
          v15 = v33;
          __swift_project_boxed_opaque_existential_1Tm(v31, v32);
          v17 = swift_allocObject();
          v17[2] = v13;
          v17[3] = v14;
          v17[4] = a1;
          v17[5] = a2;
          v17[6] = a3;
          v17[7] = a4;
          v18 = *(v15 + 8);
          sub_1AB144A64(a1, a2);

          v18(sub_1AB43BC48, v17, v16, v15);

          sub_1AB014AC0(v37, &unk_1EB43D290);
          __swift_destroy_boxed_opaque_existential_1Tm(v31);
        }

        v11 += 80;
        --v10;
      }

      while (v10);
      v20 = v25;
      v19 = v26;
      v22 = v23;
      v21 = v24;
    }

    else
    {
      v19 = v6;
      v20 = v7;
      v21 = v8;
      v22 = v9;
    }

    sub_1AB199B30(v19, v20, v21, v22, 0);
  }
}

void sub_1AB42E6FC(uint64_t a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 1;

    os_unfair_lock_unlock(v2 + 4);
    v4 = v3[2];
    if (v4)
    {
      v16 = v3;
      v5 = (v3 + 4);
      v6 = &unk_1EB4377E0;
      do
      {
        sub_1AB014A58(v5, v24, v6);
        sub_1AB014A58(v24, v21, v6);
        v7 = v21[0];
        if (v23)
        {
          **(*(v21[0] + 64) + 40) = a1;

          swift_continuation_throwingResume();
          sub_1AB014AC0(v24, v6);
        }

        else
        {
          v8 = v21[1];

          sub_1AB0149B0(&v22, v18);
          v10 = v19;
          v9 = v20;
          __swift_project_boxed_opaque_existential_1Tm(v18, v19);
          v11 = swift_allocObject();
          v11[2] = v7;
          v11[3] = v8;
          v11[4] = a1;
          v12 = v6;
          v13 = *(v9 + 8);

          v13(sub_1AB017C7C, v11, v10, v9);
          v6 = v12;

          sub_1AB014AC0(v24, v12);
          __swift_destroy_boxed_opaque_existential_1Tm(v18);
        }

        v5 += 80;
        --v4;
      }

      while (v4);
      v14 = MEMORY[0x1E69E7CF8];
      v15 = v16;
    }

    else
    {
      v14 = MEMORY[0x1E69E7CF8];
      v15 = v3;
    }

    sub_1AB023D0C(v15, 0, v14);
  }
}

void sub_1AB42E99C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(v2 + 40) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(v2 + 40))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v2 + 24);
    v5 = *(v2 + 32);
    sub_1AB2AB124(v4, v5, 0);
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
    *(v2 + 40) = 1;

    sub_1AB0802EC(v4, v5, 0);
    os_unfair_lock_unlock(v3 + 4);
    v6 = v4[2];
    if (v6)
    {
      v17 = v5;
      v18 = v4;
      v7 = (v4 + 4);
      do
      {
        sub_1AB014A58(v7, v27, &unk_1EB437970);
        sub_1AB014A58(v27, v24, &unk_1EB437970);
        v9 = v24[0];
        if (v26)
        {
          v8 = *(*(v24[0] + 64) + 40);
          *v8 = a1;
          v8[1] = a2;

          swift_continuation_throwingResume();
          sub_1AB014AC0(v27, &unk_1EB437970);
        }

        else
        {
          v10 = v24[1];

          sub_1AB0149B0(&v25, v21);
          v12 = v22;
          v11 = v23;
          __swift_project_boxed_opaque_existential_1Tm(v21, v22);
          v13 = swift_allocObject();
          v13[2] = v9;
          v13[3] = v10;
          v13[4] = a1;
          v13[5] = a2;
          v14 = *(v11 + 8);

          v14(sub_1AB43AF90, v13, v12, v11);

          sub_1AB014AC0(v27, &unk_1EB437970);
          __swift_destroy_boxed_opaque_existential_1Tm(v21);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
      v16 = v17;
      v15 = v18;
    }

    else
    {
      v15 = v4;
      v16 = v5;
    }

    sub_1AB0802EC(v15, v16, 0);
  }
}

void sub_1AB42EC48()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  swift_beginAccess();
  if (*(v0 + 32) == 3)
  {
    os_unfair_lock_unlock(v1 + 4);
  }

  else if (*(v0 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 24);
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;
    os_unfair_lock_unlock(v1 + 4);
    v11 = v2;
    v3 = v2[2];
    if (v3)
    {
      v4 = (v2 + 4);
      do
      {
        sub_1AB014A58(v4, v18, &unk_1EB4378E0);
        sub_1AB014A58(v18, v15, &unk_1EB4378E0);
        v5 = v15[0];
        if (v17)
        {
          swift_continuation_throwingResume();
          sub_1AB014AC0(v18, &unk_1EB4378E0);
        }

        else
        {
          v6 = v15[1];

          sub_1AB0149B0(&v16, v12);
          v8 = v13;
          v7 = v14;
          __swift_project_boxed_opaque_existential_1Tm(v12, v13);
          v9 = swift_allocObject();
          *(v9 + 16) = v5;
          *(v9 + 24) = v6;
          v10 = *(v7 + 8);

          v10(sub_1AB23A0B0, v9, v8, v7);

          sub_1AB014AC0(v18, &unk_1EB4378E0);
          __swift_destroy_boxed_opaque_existential_1Tm(v12);
        }

        v4 += 80;
        --v3;
      }

      while (v3);
    }

    sub_1AB074080(v11, 0);
  }
}

void sub_1AB42EE80(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 1;
    os_unfair_lock_unlock(v3 + 4);
    v14 = v4;
    v5 = v4[2];
    if (v5)
    {
      v6 = (v4 + 4);
      do
      {
        sub_1AB014A58(v6, v21, &unk_1EB4397F0);
        sub_1AB014A58(v21, v18, &unk_1EB4397F0);
        v7 = v18[0];
        if (v20)
        {
          **(*(v18[0] + 64) + 40) = a1;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v21, &unk_1EB4397F0);
        }

        else
        {
          v8 = v18[1];

          sub_1AB0149B0(&v19, v15);
          v10 = v16;
          v9 = v17;
          __swift_project_boxed_opaque_existential_1Tm(v15, v16);
          v11 = swift_allocObject();
          v11[2] = v7;
          v11[3] = v8;
          v11[4] = a1;
          v12 = a1;
          v13 = *(v9 + 8);

          v13(sub_1AB017C7C, v11, v10, v9);
          a1 = v12;

          sub_1AB014AC0(v21, &unk_1EB4397F0);
          __swift_destroy_boxed_opaque_existential_1Tm(v15);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1AB074080(v14, 0);
  }
}

void sub_1AB42F144(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  os_unfair_lock_lock(v4 + 4);
  swift_beginAccess();
  if (*(v2 + 40) == 3)
  {
    os_unfair_lock_unlock(v4 + 4);
  }

  else if (*(v2 + 40))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 24);
    v15 = *(v2 + 32);
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
    *(v2 + 40) = 1;

    os_unfair_lock_unlock(v4 + 4);
    v6 = v5[2];
    if (v6)
    {
      v7 = (v5 + 4);
      do
      {
        sub_1AB014A58(v7, v23, &unk_1EB439CC0);
        sub_1AB014A58(v23, v20, &unk_1EB439CC0);
        v9 = v20[0];
        if (v22)
        {
          v8 = *(*(v20[0] + 64) + 40);
          *v8 = a1;
          v8[1] = a2;

          swift_continuation_throwingResume();
          sub_1AB014AC0(v23, &unk_1EB439CC0);
        }

        else
        {
          v10 = v20[1];

          sub_1AB0149B0(&v21, v17);
          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_1Tm(v17, v18);
          v13 = swift_allocObject();
          v13[2] = v9;
          v13[3] = v10;
          v13[4] = a1;
          v13[5] = a2;
          v14 = *(v12 + 8);

          v14(sub_1AB43AB88, v13, v11, v12);

          sub_1AB014AC0(v23, &unk_1EB439CC0);
          __swift_destroy_boxed_opaque_existential_1Tm(v17);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
    }

    sub_1AB1997F8(v5, v15, 0);
  }
}

void sub_1AB42F3C4(uint64_t a1)
{
  v37 = a1;
  v36 = sub_1AB45F0A4();
  v2 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v28 = v3;
  v35 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437820);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v26 - v8);
  v10 = v1[2];
  os_unfair_lock_lock(v10 + 4);
  v11 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v11, v9, &unk_1EB437820);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v9, &unk_1EB437820);
    os_unfair_lock_unlock(v10 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v13 = *v9;
    v34 = *(v2 + 16);
    v34(v7, v37, v36);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v7, v1 + v11, &unk_1EB437820);
    swift_endAccess();
    os_unfair_lock_unlock(v10 + 4);
    v14 = *(v13 + 16);
    if (v14)
    {
      v26[0] = v13;
      v15 = v13 + 32;
      v27 = v2;
      v33 = (v2 + 32);
      v26[1] = v2 + 16;
      do
      {
        sub_1AB014A58(v15, v44, &qword_1EB439E20);
        sub_1AB014A58(v44, v41, &qword_1EB439E20);
        v18 = v41[0];
        if (v43)
        {
          v16 = v35;
          v17 = v36;
          v34(v35, v37, v36);
          (*v33)(*(*(v18 + 64) + 40), v16, v17);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v44, &qword_1EB439E20);
        }

        else
        {
          v30 = v41[1];

          sub_1AB0149B0(&v42, v38);
          v32 = v39;
          v29 = v40;
          v31 = __swift_project_boxed_opaque_existential_1Tm(v38, v39);
          v19 = v35;
          v20 = v36;
          v34(v35, v37, v36);
          v21 = v27;
          v22 = (*(v27 + 80) + 32) & ~*(v27 + 80);
          v23 = swift_allocObject();
          *(v23 + 16) = v18;
          *(v23 + 24) = v30;
          (*(v21 + 32))(v23 + v22, v19, v20);
          v24 = v29;
          v25 = *(v29 + 8);

          v25(sub_1AB43BC28, v23, v32, v24);

          sub_1AB014AC0(v44, &qword_1EB439E20);
          __swift_destroy_boxed_opaque_existential_1Tm(v38);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1AB42F918(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(v2 + 40) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(v2 + 40))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v2 + 24);
    v5 = *(v2 + 32);
    sub_1AB2AB22C(v4, v5, 0, sub_1AB017200);
    sub_1AB017200(a1, a2);
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
    *(v2 + 40) = 1;
    v15 = v5;
    sub_1AB199938(v4, v5, 0, sub_1AB017254);
    os_unfair_lock_unlock(v3 + 4);
    v16 = v4;
    v6 = v4[2];
    if (v6)
    {
      v7 = (v4 + 4);
      do
      {
        sub_1AB014A58(v7, v25, &unk_1EB4377D0);
        sub_1AB014A58(v25, v22, &unk_1EB4377D0);
        v9 = v22[0];
        if (v24)
        {
          sub_1AB017200(a1, a2);
          v8 = *(*(v9 + 64) + 40);
          *v8 = a1;
          v8[1] = a2;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v25, &unk_1EB4377D0);
        }

        else
        {
          v10 = v22[1];

          sub_1AB0149B0(&v23, v19);
          v11 = v20;
          v12 = v21;
          __swift_project_boxed_opaque_existential_1Tm(v19, v20);
          v13 = swift_allocObject();
          v13[2] = v9;
          v13[3] = v10;
          v13[4] = a1;
          v13[5] = a2;
          v14 = *(v12 + 8);
          sub_1AB017200(a1, a2);

          v14(sub_1AB43BC18, v13, v11, v12);

          sub_1AB014AC0(v25, &unk_1EB4377D0);
          __swift_destroy_boxed_opaque_existential_1Tm(v19);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
    }

    sub_1AB199938(v16, v15, 0, sub_1AB017254);
  }
}

void sub_1AB42FC2C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v24, &unk_1EB4397C0);
  if (v25 == 3)
  {
    sub_1AB014AC0(v24, &unk_1EB4397C0);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v25)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = v24[0];
    sub_1AB01494C(a1, v23);
    v23[40] = 1;
    swift_beginAccess();
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB4397C0);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1EB4376E0;
      do
      {
        sub_1AB014A58(v6, v23, v7);
        sub_1AB014A58(v23, v20, v7);
        v8 = v20[0];
        if (v22)
        {
          sub_1AB01494C(a1, &v17);
          sub_1AB0149B0(&v17, *(*(v8 + 64) + 40));
          swift_continuation_throwingResume();
          sub_1AB014AC0(v23, v7);
        }

        else
        {
          v9 = v20[1];

          sub_1AB0149B0(&v21, &v17);
          v10 = v19;
          v15 = v18;
          __swift_project_boxed_opaque_existential_1Tm(&v17, v18);
          sub_1AB01494C(a1, v16);
          v11 = swift_allocObject();
          *(v11 + 16) = v8;
          *(v11 + 24) = v9;
          sub_1AB0149B0(v16, v11 + 32);
          v12 = v7;
          v13 = a1;
          v14 = *(v10 + 8);

          v14(sub_1AB0224A8, v11, v15, v10);
          a1 = v13;
          v7 = v12;

          sub_1AB014AC0(v23, v12);
          __swift_destroy_boxed_opaque_existential_1Tm(&v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB42FF24(uint64_t a1)
{
  v3 = type metadata accessor for JSSource();
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v4;
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377B0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v29 - v9);
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v12, v10, &unk_1EB4377B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v10, &unk_1EB4377B0);
    os_unfair_lock_unlock(v11 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v14 = *v10;
    sub_1AB03C4FC(a1, v7, type metadata accessor for JSSource);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v7, v1 + v12, &unk_1EB4377B0);
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    v15 = *(v14 + 16);
    if (v15)
    {
      v29 = v14;
      v16 = v14 + 32;
      v17 = &qword_1EB439D20;
      v30 = a1;
      do
      {
        sub_1AB014A58(v16, v42, v17);
        sub_1AB014A58(v42, v39, v17);
        v19 = v39[0];
        if (v41)
        {
          v18 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for JSSource);
          sub_1AB03C5CC(v18, *(*(v19 + 64) + 40), type metadata accessor for JSSource);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v42, v17);
        }

        else
        {
          v20 = v39[1];

          sub_1AB0149B0(&v40, v36);
          v21 = v37;
          v33 = v38;
          v34 = __swift_project_boxed_opaque_existential_1Tm(v36, v37);
          v22 = v17;
          v23 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for JSSource);
          v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v25 = swift_allocObject();
          *(v25 + 16) = v19;
          *(v25 + 24) = v20;
          v26 = v23;
          v17 = v22;
          sub_1AB03C5CC(v26, v25 + v24, type metadata accessor for JSSource);
          v27 = v33;
          v28 = *(v33 + 8);

          v28(sub_1AB43BC44, v25, v21, v27);

          a1 = v30;

          sub_1AB014AC0(v42, v17);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_1AB430428(uint64_t a1)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D280);
  v26 = *(v2 - 8);
  v25[2] = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437940);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v25 - v8);
  v10 = v1[2];
  os_unfair_lock_lock(v10 + 4);
  v11 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v11, v9, &unk_1EB437940);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v9, &unk_1EB437940);
    os_unfair_lock_unlock(v10 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v13 = *v9;
    sub_1AB014A58(v29, v7, &unk_1EB43D280);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v7, v1 + v11, &unk_1EB437940);
    swift_endAccess();
    os_unfair_lock_unlock(v10 + 4);
    v14 = *(v13 + 16);
    if (v14)
    {
      v25[1] = v13;
      v15 = v13 + 32;
      do
      {
        sub_1AB014A58(v15, v36, &unk_1EB439920);
        sub_1AB014A58(v36, v33, &unk_1EB439920);
        v17 = v33[0];
        if (v35)
        {
          v16 = v28;
          sub_1AB014A58(v29, v28, &unk_1EB43D280);
          sub_1AB017FB8(v16, *(*(v17 + 64) + 40), &unk_1EB43D280);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v36, &unk_1EB439920);
        }

        else
        {
          v18 = v33[1];

          sub_1AB0149B0(&v34, v30);
          v19 = v31;
          v20 = v32;
          v27 = __swift_project_boxed_opaque_existential_1Tm(v30, v31);
          v21 = v28;
          sub_1AB014A58(v29, v28, &unk_1EB43D280);
          v22 = (*(v26 + 80) + 32) & ~*(v26 + 80);
          v23 = swift_allocObject();
          *(v23 + 16) = v17;
          *(v23 + 24) = v18;
          sub_1AB017FB8(v21, v23 + v22, &unk_1EB43D280);
          v24 = *(v20 + 8);

          v24(sub_1AB43BC40, v23, v19, v20);

          sub_1AB014AC0(v36, &unk_1EB439920);
          __swift_destroy_boxed_opaque_existential_1Tm(v30);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1AB4308F8(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = *(v3 + 16);
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  if (*(v3 + 48) == 3)
  {
    os_unfair_lock_unlock(v5 + 4);
  }

  else if (*(v3 + 48))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v6 = *(v3 + 24);
    v7 = *(v3 + 32);
    v8 = *(v3 + 40);
    sub_1AB2AB314(v6, v7, v8, 0);
    sub_1AB017200(a1, a2);
    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
    *(v3 + 40) = a3;
    *(v3 + 48) = 1;
    v23 = a3;
    v20 = v8;
    v21 = v7;
    sub_1AB199AA4(v6, v7, v8, 0);
    os_unfair_lock_unlock(v5 + 4);
    v22 = v6;
    v9 = v6[2];
    if (v9)
    {
      v10 = (v6 + 4);
      do
      {
        sub_1AB014A58(v10, v32, &qword_1EB43A050);
        sub_1AB014A58(v32, v29, &qword_1EB43A050);
        v13 = v29[0];
        if (v31)
        {
          sub_1AB017200(a1, a2);
          v11 = *(*(v13 + 64) + 40);
          *v11 = a1;
          v11[1] = a2;
          v11[2] = v23;
          v12 = v23;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v32, &qword_1EB43A050);
        }

        else
        {
          v14 = v29[1];

          sub_1AB0149B0(&v30, v26);
          v16 = v27;
          v15 = v28;
          __swift_project_boxed_opaque_existential_1Tm(v26, v27);
          v17 = swift_allocObject();
          v17[2] = v13;
          v17[3] = v14;
          v17[4] = a1;
          v17[5] = a2;
          v17[6] = v23;
          v18 = *(v15 + 8);
          sub_1AB017200(a1, a2);
          v19 = v23;

          v18(sub_1AB43BBFC, v17, v16, v15);

          sub_1AB014AC0(v32, &qword_1EB43A050);
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
        }

        v10 += 80;
        --v9;
      }

      while (v9);
    }

    sub_1AB199AA4(v22, v21, v20, 0);
  }
}

void sub_1AB430C00(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v24, &unk_1EB43D230);
  if (v25 == 3)
  {
    sub_1AB014AC0(v24, &unk_1EB43D230);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v25)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = v24[0];
    sub_1AB01494C(a1, v23);
    v23[40] = 1;
    swift_beginAccess();
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB43D230);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1EB437790;
      do
      {
        sub_1AB014A58(v6, v23, v7);
        sub_1AB014A58(v23, v20, v7);
        v8 = v20[0];
        if (v22)
        {
          sub_1AB01494C(a1, &v17);
          sub_1AB0149B0(&v17, *(*(v8 + 64) + 40));
          swift_continuation_throwingResume();
          sub_1AB014AC0(v23, v7);
        }

        else
        {
          v9 = v20[1];

          sub_1AB0149B0(&v21, &v17);
          v10 = v19;
          v15 = v18;
          __swift_project_boxed_opaque_existential_1Tm(&v17, v18);
          sub_1AB01494C(a1, v16);
          v11 = swift_allocObject();
          *(v11 + 16) = v8;
          *(v11 + 24) = v9;
          sub_1AB0149B0(v16, v11 + 32);
          v12 = v7;
          v13 = a1;
          v14 = *(v10 + 8);

          v14(sub_1AB0224A8, v11, v15, v10);
          a1 = v13;
          v7 = v12;

          sub_1AB014AC0(v23, v12);
          __swift_destroy_boxed_opaque_existential_1Tm(&v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB430EF8(uint64_t a1, char a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  if (*(v2 + 33) == 3)
  {
    os_unfair_lock_unlock(v5 + 4);
  }

  else if (*(v2 + 33))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 24);
    v7 = *(v2 + 32);
    *(v2 + 24) = a1;
    *(v2 + 32) = a2 & 1;
    *(v2 + 33) = 1;

    v18 = v7;
    sub_1AB06DD90(v8, v7, 0);
    os_unfair_lock_unlock(v5 + 4);
    v19 = v6;
    v9 = v6[2];
    if (v9)
    {
      v10 = v19 + 32;
      v20 = a2;
      do
      {
        sub_1AB014A58(v10, v27, &unk_1EB439820);
        sub_1AB014A58(v27, v24, &unk_1EB439820);
        v12 = v24[0];
        if (v26)
        {
          LOBYTE(v21[0]) = a2 & 1;
          v11 = *(*(v24[0] + 64) + 40);
          *v11 = a1;
          *(v11 + 8) = a2 & 1;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v27, &unk_1EB439820);
        }

        else
        {
          v13 = v24[1];

          sub_1AB0149B0(&v25, v21);
          v14 = v22;
          v15 = v23;
          __swift_project_boxed_opaque_existential_1Tm(v21, v22);
          v16 = swift_allocObject();
          *(v16 + 16) = v12;
          *(v16 + 24) = v13;
          *(v16 + 32) = a1;
          *(v16 + 40) = a2 & 1;
          v17 = *(v15 + 8);

          v17(sub_1AB43BC10, v16, v14, v15);
          a2 = v20;

          sub_1AB014AC0(v27, &unk_1EB439820);
          __swift_destroy_boxed_opaque_existential_1Tm(v21);
        }

        v10 += 80;
        --v9;
      }

      while (v9);
    }

    sub_1AB06DD90(v19, v18, 0);
  }
}

void sub_1AB4311A4(uint64_t a1)
{
  v3 = type metadata accessor for PageIntentInstrumentation();
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v4;
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377A0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v29 - v9);
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v12, v10, &unk_1EB4377A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v10, &unk_1EB4377A0);
    os_unfair_lock_unlock(v11 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v14 = *v10;
    sub_1AB03C4FC(a1, v7, type metadata accessor for PageIntentInstrumentation);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v7, v1 + v12, &unk_1EB4377A0);
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    v15 = *(v14 + 16);
    if (v15)
    {
      v29 = v14;
      v16 = v14 + 32;
      v17 = &unk_1EB43D240;
      v30 = a1;
      do
      {
        sub_1AB014A58(v16, v42, v17);
        sub_1AB014A58(v42, v39, v17);
        v19 = v39[0];
        if (v41)
        {
          v18 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for PageIntentInstrumentation);
          sub_1AB03C5CC(v18, *(*(v19 + 64) + 40), type metadata accessor for PageIntentInstrumentation);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v42, v17);
        }

        else
        {
          v20 = v39[1];

          sub_1AB0149B0(&v40, v36);
          v21 = v37;
          v33 = v38;
          v34 = __swift_project_boxed_opaque_existential_1Tm(v36, v37);
          v22 = v17;
          v23 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for PageIntentInstrumentation);
          v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v25 = swift_allocObject();
          *(v25 + 16) = v19;
          *(v25 + 24) = v20;
          v26 = v23;
          v17 = v22;
          sub_1AB03C5CC(v26, v25 + v24, type metadata accessor for PageIntentInstrumentation);
          v27 = v33;
          v28 = *(v33 + 8);

          v28(sub_1AB43BC14, v25, v21, v27);

          a1 = v30;

          sub_1AB014AC0(v42, v17);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_1AB431678(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    *(v1 + 24) = a1 & 1;
    *(v1 + 32) = 1;

    sub_1AB074080(v5, 0);
    os_unfair_lock_unlock(v3 + 4);
    v15 = v4;
    v6 = v4[2];
    if (v6)
    {
      v7 = (v4 + 4);
      do
      {
        sub_1AB014A58(v7, v22, &unk_1EB437930);
        sub_1AB014A58(v22, v19, &unk_1EB437930);
        v8 = v19[0];
        if (v21)
        {
          **(*(v19[0] + 64) + 40) = a1 & 1;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v22, &unk_1EB437930);
        }

        else
        {
          v9 = v19[1];

          sub_1AB0149B0(&v20, v16);
          v11 = v17;
          v10 = v18;
          __swift_project_boxed_opaque_existential_1Tm(v16, v17);
          v12 = swift_allocObject();
          *(v12 + 16) = v8;
          *(v12 + 24) = v9;
          *(v12 + 32) = a1 & 1;
          v13 = a1;
          v14 = *(v10 + 8);

          v14(sub_1AB43B014, v12, v11, v10);
          a1 = v13;

          sub_1AB014AC0(v22, &unk_1EB437930);
          __swift_destroy_boxed_opaque_existential_1Tm(v16);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
    }

    sub_1AB074080(v15, 0);
  }
}

void sub_1AB4318F8(char a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    *(v1 + 24) = a1 & 1;
    *(v1 + 32) = 1;

    sub_1AB074080(v5, 0);
    os_unfair_lock_unlock(v3 + 4);
    v15 = v4;
    v6 = v4[2];
    if (v6)
    {
      v7 = (v4 + 4);
      v8 = a1 & 1;
      do
      {
        sub_1AB014A58(v7, v22, &unk_1EB437910);
        sub_1AB014A58(v22, v19, &unk_1EB437910);
        v9 = v19[0];
        if (v21)
        {
          **(*(v19[0] + 64) + 40) = v8;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v22, &unk_1EB437910);
        }

        else
        {
          v10 = v19[1];

          sub_1AB0149B0(&v20, v16);
          v12 = v17;
          v11 = v18;
          __swift_project_boxed_opaque_existential_1Tm(v16, v17);
          v13 = swift_allocObject();
          *(v13 + 16) = v9;
          *(v13 + 24) = v10;
          *(v13 + 32) = v8;
          v14 = *(v11 + 8);

          v14(sub_1AB43BC20, v13, v12, v11);

          sub_1AB014AC0(v22, &unk_1EB437910);
          __swift_destroy_boxed_opaque_existential_1Tm(v16);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
    }

    sub_1AB074080(v15, 0);
  }
}

void sub_1AB431B6C(void *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(v1 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(v1 + 72) == 3)
  {
    os_unfair_lock_unlock(v8 + 4);
  }

  else
  {
    v30 = v6;
    v32 = v5;
    v34 = v4;
    v36 = v3;
    if (*(v1 + 72))
    {
      sub_1AB461884();
      __break(1u);
    }

    else
    {
      v10 = *(v1 + 24);
      v9 = *(v1 + 32);
      v11 = *(v1 + 40);
      v12 = *(v1 + 48);
      v13 = *(v1 + 56);
      v14 = *(v1 + 64);
      sub_1AB2AB28C(v10, v9, v11, v12, v13, v14, 0);
      sub_1AB43B75C(a1, v47);
      *(v1 + 24) = v2;
      *(v1 + 32) = v36;
      *(v1 + 40) = v34;
      *(v1 + 48) = v32;
      *(v1 + 56) = v30;
      *(v1 + 64) = v7;
      *(v1 + 72) = 1;
      v31 = v11;
      v33 = v9;
      v28 = v13;
      v29 = v12;
      sub_1AB199A1C(v10, v9, v11, v12, v13, v14, 0);
      os_unfair_lock_unlock(v8 + 4);
      v35 = v10;
      v15 = v10[2];
      if (v15)
      {
        v16 = v35 + 32;
        v17 = &unk_1EB439FD0;
        do
        {
          sub_1AB014A58(v16, v47, v17);
          sub_1AB014A58(v47, v44, v17);
          v20 = v44[0];
          if (v46)
          {
            v18 = *(a1 + 1);
            v41 = *a1;
            v42 = v18;
            v43 = *(a1 + 2);
            sub_1AB43B75C(a1, v38);
            v19 = *(*(v20 + 64) + 40);
            *v19 = v41;
            v19[1] = v42;
            v19[2] = v43;
            swift_continuation_throwingResume();
            sub_1AB014AC0(v47, v17);
          }

          else
          {
            v21 = v44[1];

            sub_1AB0149B0(&v45, v38);
            v23 = v39;
            v22 = v40;
            __swift_project_boxed_opaque_existential_1Tm(v38, v39);
            v24 = swift_allocObject();
            *(v24 + 16) = v20;
            *(v24 + 24) = v21;
            v25 = *(a1 + 1);
            *(v24 + 32) = *a1;
            *(v24 + 48) = v25;
            *(v24 + 64) = *(a1 + 2);
            v26 = v17;
            v27 = *(v22 + 8);
            sub_1AB43B75C(a1, &v41);

            v27(sub_1AB43BC3C, v24, v23, v22);
            v17 = v26;

            sub_1AB014AC0(v47, v26);
            __swift_destroy_boxed_opaque_existential_1Tm(v38);
          }

          v16 += 80;
          --v15;
        }

        while (v15);
      }

      sub_1AB199A1C(v35, v33, v31, v29, v28, v14, 0);
    }
  }
}

void sub_1AB431E9C(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 64);
  v5 = *(a1 + 11);
  v53 = *a1;
  *&v54 = v2;
  *(&v54 + 1) = v3;
  v6 = a1[3];
  v55 = a1[2];
  v56 = v6;
  v57[0] = v4;
  *&v57[8] = *(a1 + 72);
  *&v57[24] = v5;
  v7 = *(v1 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v59 = *(v1 + 120);
  v8 = *(v1 + 72);
  v9 = *(v1 + 104);
  v58[4] = *(v1 + 88);
  v58[5] = v9;
  v10 = *(v1 + 40);
  v58[0] = *(v1 + 24);
  v58[1] = v10;
  v58[2] = *(v1 + 56);
  v58[3] = v8;
  if (v59 == 3)
  {
    os_unfair_lock_unlock(v7 + 4);
  }

  else if (v59)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v11 = *&v58[0];
    v47 = v55;
    v48 = v56;
    v49 = *v57;
    v50 = *&v57[16];
    v45 = v53;
    v46 = v54;
    v12 = *(v1 + 40);
    v13 = *(v1 + 56);
    v51[0] = *(v1 + 24);
    v51[1] = v12;
    v14 = *(v1 + 72);
    v15 = *(v1 + 88);
    v16 = *(v1 + 104);
    v52 = *(v1 + 120);
    v51[4] = v15;
    v51[5] = v16;
    v51[2] = v13;
    v51[3] = v14;
    sub_1AB014A58(v58, &v39, &unk_1EB437900);
    sub_1AB014A58(&v53, &v39, &unk_1EB43D270);
    v17 = v48;
    *(v1 + 56) = v47;
    *(v1 + 72) = v17;
    v18 = v50;
    *(v1 + 88) = v49;
    *(v1 + 104) = v18;
    v19 = v46;
    *(v1 + 24) = v45;
    *(v1 + 40) = v19;
    *(v1 + 120) = 1;
    sub_1AB014AC0(v51, &unk_1EB437900);
    os_unfair_lock_unlock(v7 + 4);
    v20 = *(v11 + 16);
    if (v20)
    {
      v21 = v11 + 32;
      do
      {
        sub_1AB014A58(v21, v38, &unk_1EB438550);
        sub_1AB014A58(v38, v35, &unk_1EB438550);
        v23 = v35[0];
        if (v37)
        {
          v41 = v55;
          v42 = v56;
          v43 = *v57;
          v44 = *&v57[16];
          v39 = v53;
          v40 = v54;
          sub_1AB014A58(&v53, v32, &unk_1EB43D270);
          v22 = *(*(v23 + 64) + 40);
          v22[2] = v41;
          v22[3] = v42;
          v22[4] = v43;
          v22[5] = v44;
          *v22 = v39;
          v22[1] = v40;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v38, &unk_1EB438550);
        }

        else
        {
          v24 = v35[1];

          sub_1AB0149B0(&v36, v32);
          v26 = v33;
          v25 = v34;
          __swift_project_boxed_opaque_existential_1Tm(v32, v33);
          v27 = swift_allocObject();
          *(v27 + 16) = v23;
          *(v27 + 24) = v24;
          v28 = v56;
          *(v27 + 64) = v55;
          *(v27 + 80) = v28;
          v29 = *&v57[16];
          *(v27 + 96) = *v57;
          *(v27 + 112) = v29;
          v30 = v54;
          *(v27 + 32) = v53;
          *(v27 + 48) = v30;
          v31 = *(v25 + 8);
          sub_1AB014A58(&v53, &v39, &unk_1EB43D270);

          v31(sub_1AB43BC38, v27, v26, v25);

          sub_1AB014AC0(v38, &unk_1EB438550);
          __swift_destroy_boxed_opaque_existential_1Tm(v32);
        }

        v21 += 80;
        --v20;
      }

      while (v20);
    }

    sub_1AB014AC0(v58, &unk_1EB437900);
  }
}

void sub_1AB432294(uint64_t a1)
{
  v37 = a1;
  v36 = sub_1AB45F764();
  v2 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v28 = v3;
  v35 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377C0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v26 - v8);
  v10 = v1[2];
  os_unfair_lock_lock(v10 + 4);
  v11 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v11, v9, &unk_1EB4377C0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v9, &unk_1EB4377C0);
    os_unfair_lock_unlock(v10 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v13 = *v9;
    v34 = *(v2 + 16);
    v34(v6, v37, v36);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v6, v1 + v11, &unk_1EB4377C0);
    swift_endAccess();
    os_unfair_lock_unlock(v10 + 4);
    v14 = *(v13 + 16);
    if (v14)
    {
      v26[0] = v13;
      v15 = v13 + 32;
      v27 = v2;
      v33 = (v2 + 32);
      v26[1] = v2 + 16;
      do
      {
        sub_1AB014A58(v15, v44, &unk_1EB439840);
        sub_1AB014A58(v44, v41, &unk_1EB439840);
        v18 = v41[0];
        if (v43)
        {
          v16 = v35;
          v17 = v36;
          v34(v35, v37, v36);
          (*v33)(*(*(v18 + 64) + 40), v16, v17);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v44, &unk_1EB439840);
        }

        else
        {
          v30 = v41[1];

          sub_1AB0149B0(&v42, v38);
          v32 = v39;
          v29 = v40;
          v31 = __swift_project_boxed_opaque_existential_1Tm(v38, v39);
          v19 = v35;
          v20 = v36;
          v34(v35, v37, v36);
          v21 = v27;
          v22 = (*(v27 + 80) + 32) & ~*(v27 + 80);
          v23 = swift_allocObject();
          *(v23 + 16) = v18;
          *(v23 + 24) = v30;
          (*(v21 + 32))(v23 + v22, v19, v20);
          v24 = v29;
          v25 = *(v29 + 8);

          v25(sub_1AB43BC1C, v23, v32, v24);

          sub_1AB014AC0(v44, &unk_1EB439840);
          __swift_destroy_boxed_opaque_existential_1Tm(v38);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1AB4327E8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v24, &unk_1EB43D1F0);
  if (v25 == 3)
  {
    sub_1AB014AC0(v24, &unk_1EB43D1F0);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v25)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = v24[0];
    sub_1AB0165C4(a1, v23);
    v23[32] = 1;
    swift_beginAccess();
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB43D1F0);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1EB437700;
      do
      {
        sub_1AB014A58(v6, v23, v7);
        sub_1AB014A58(v23, v20, v7);
        v8 = v20[0];
        if (v22)
        {
          sub_1AB0165C4(a1, &v17);
          sub_1AB014B78(&v17, *(*(v8 + 64) + 40));
          swift_continuation_throwingResume();
          sub_1AB014AC0(v23, v7);
        }

        else
        {
          v9 = v20[1];

          sub_1AB0149B0(&v21, &v17);
          v10 = v19;
          v15 = v18;
          __swift_project_boxed_opaque_existential_1Tm(&v17, v18);
          sub_1AB0165C4(a1, v16);
          v11 = swift_allocObject();
          *(v11 + 16) = v8;
          *(v11 + 24) = v9;
          sub_1AB014B78(v16, (v11 + 32));
          v12 = v7;
          v13 = a1;
          v14 = *(v10 + 8);

          v14(sub_1AB022478, v11, v15, v10);
          a1 = v13;
          v7 = v12;

          sub_1AB014AC0(v23, v12);
          __swift_destroy_boxed_opaque_existential_1Tm(&v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB432AE0(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v24, &unk_1EB439900);
  if (v25 == 3)
  {
    sub_1AB014AC0(v24, &unk_1EB439900);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v25)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = v24[0];
    sub_1AB01494C(a1, v23);
    v23[40] = 1;
    swift_beginAccess();
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB439900);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &qword_1EB4378C0;
      do
      {
        sub_1AB014A58(v6, v23, v7);
        sub_1AB014A58(v23, v20, v7);
        v8 = v20[0];
        if (v22)
        {
          sub_1AB01494C(a1, &v17);
          sub_1AB0149B0(&v17, *(*(v8 + 64) + 40));
          swift_continuation_throwingResume();
          sub_1AB014AC0(v23, v7);
        }

        else
        {
          v9 = v20[1];

          sub_1AB0149B0(&v21, &v17);
          v10 = v19;
          v15 = v18;
          __swift_project_boxed_opaque_existential_1Tm(&v17, v18);
          sub_1AB01494C(a1, v16);
          v11 = swift_allocObject();
          *(v11 + 16) = v8;
          *(v11 + 24) = v9;
          sub_1AB0149B0(v16, v11 + 32);
          v12 = v7;
          v13 = a1;
          v14 = *(v10 + 8);

          v14(sub_1AB0224A8, v11, v15, v10);
          a1 = v13;
          v7 = v12;

          sub_1AB014AC0(v23, v12);
          __swift_destroy_boxed_opaque_existential_1Tm(&v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB432DD8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v35, &unk_1EB4398E0);
  if (v36 == 3)
  {
    sub_1AB014AC0(v35, &unk_1EB4398E0);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v36)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = v35[0];
    sub_1AB0261D0(a1, &v29);
    v34 = 1;
    swift_beginAccess();
    sub_1AB017CC4(&v29, v1 + 24, &unk_1EB4398E0);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1EB4378A0;
      do
      {
        sub_1AB014A58(v6, v28, v7);
        sub_1AB014A58(v28, v25, v7);
        v12 = v25[0];
        if (v27)
        {
          sub_1AB0261D0(a1, &v29);
          v8 = *(*(v12 + 64) + 40);
          *v8 = v29;
          v10 = v32;
          v9 = v33;
          v11 = v31;
          v8[1] = v30;
          v8[2] = v11;
          v8[3] = v10;
          v8[4] = v9;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v28, v7);
        }

        else
        {
          v13 = v25[1];

          sub_1AB0149B0(&v26, v22);
          v14 = v24;
          v21 = v23;
          __swift_project_boxed_opaque_existential_1Tm(v22, v23);
          sub_1AB0261D0(a1, &v29);
          v15 = swift_allocObject();
          *(v15 + 16) = v12;
          *(v15 + 24) = v13;
          v16 = v32;
          *(v15 + 64) = v31;
          *(v15 + 80) = v16;
          *(v15 + 96) = v33;
          v17 = v30;
          *(v15 + 32) = v29;
          *(v15 + 48) = v17;
          v18 = v7;
          v19 = a1;
          v20 = *(v14 + 8);

          v20(sub_1AB0224A8, v15, v21, v14);
          a1 = v19;
          v7 = v18;

          sub_1AB014AC0(v28, v18);
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB4330F4(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v24, &unk_1EB4398F0);
  if (v25 == 3)
  {
    sub_1AB014AC0(v24, &unk_1EB4398F0);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v25)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = v24[0];
    sub_1AB01494C(a1, v23);
    v23[40] = 1;
    swift_beginAccess();
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB4398F0);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1EB4378B0;
      do
      {
        sub_1AB014A58(v6, v23, v7);
        sub_1AB014A58(v23, v20, v7);
        v8 = v20[0];
        if (v22)
        {
          sub_1AB01494C(a1, &v17);
          sub_1AB0149B0(&v17, *(*(v8 + 64) + 40));
          swift_continuation_throwingResume();
          sub_1AB014AC0(v23, v7);
        }

        else
        {
          v9 = v20[1];

          sub_1AB0149B0(&v21, &v17);
          v10 = v19;
          v15 = v18;
          __swift_project_boxed_opaque_existential_1Tm(&v17, v18);
          sub_1AB01494C(a1, v16);
          v11 = swift_allocObject();
          *(v11 + 16) = v8;
          *(v11 + 24) = v9;
          sub_1AB0149B0(v16, v11 + 32);
          v12 = v7;
          v13 = a1;
          v14 = *(v10 + 8);

          v14(sub_1AB0224A8, v11, v15, v10);
          a1 = v13;
          v7 = v12;

          sub_1AB014AC0(v23, v12);
          __swift_destroy_boxed_opaque_existential_1Tm(&v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB43344C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v7 + 4);
  }

  else if (*(v5 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v8 = *(v5 + 24);
    *(v5 + 24) = a1;
    *(v5 + 32) = 1;

    os_unfair_lock_unlock(v7 + 4);
    v18 = v8;
    v9 = v8[2];
    if (v9)
    {
      v10 = (v8 + 4);
      v19 = a2;
      do
      {
        sub_1AB014A58(v10, v28, a2);
        sub_1AB014A58(v28, v25, a2);
        v11 = v25[0];
        if (v27)
        {
          **(*(v25[0] + 64) + 40) = a1;

          swift_continuation_throwingResume();
          sub_1AB014AC0(v28, a2);
        }

        else
        {
          v12 = v25[1];

          sub_1AB0149B0(&v26, v22);
          v14 = v23;
          v13 = v24;
          __swift_project_boxed_opaque_existential_1Tm(v22, v23);
          v15 = swift_allocObject();
          v15[2] = v11;
          v15[3] = v12;
          v15[4] = a1;
          v16 = *(v13 + 8);

          v17 = v13;
          a2 = v19;
          v16(a5, v15, v14, v17);

          sub_1AB014AC0(v28, v19);
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
        }

        v10 += 80;
        --v9;
      }

      while (v9);
    }

    sub_1AB023D0C(v18, 0, MEMORY[0x1E69E7D48]);
  }
}

void sub_1AB4336B8(uint64_t a1)
{
  v3 = type metadata accessor for JetPackAsset(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v4;
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437840);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v29 - v9);
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v12, v10, &unk_1EB437840);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v10, &unk_1EB437840);
    os_unfair_lock_unlock(v11 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v14 = *v10;
    sub_1AB03C4FC(a1, v7, type metadata accessor for JetPackAsset);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v7, v1 + v12, &unk_1EB437840);
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    v15 = *(v14 + 16);
    if (v15)
    {
      v29 = v14;
      v16 = v14 + 32;
      v17 = &unk_1EB4398A0;
      v30 = a1;
      do
      {
        sub_1AB014A58(v16, v42, v17);
        sub_1AB014A58(v42, v39, v17);
        v19 = v39[0];
        if (v41)
        {
          v18 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for JetPackAsset);
          sub_1AB03C5CC(v18, *(*(v19 + 64) + 40), type metadata accessor for JetPackAsset);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v42, v17);
        }

        else
        {
          v20 = v39[1];

          sub_1AB0149B0(&v40, v36);
          v21 = v37;
          v33 = v38;
          v34 = __swift_project_boxed_opaque_existential_1Tm(v36, v37);
          v22 = v17;
          v23 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for JetPackAsset);
          v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v25 = swift_allocObject();
          *(v25 + 16) = v19;
          *(v25 + 24) = v20;
          v26 = v23;
          v17 = v22;
          sub_1AB03C5CC(v26, v25 + v24, type metadata accessor for JetPackAsset);
          v27 = v33;
          v28 = *(v33 + 8);

          v28(sub_1AB43BC30, v25, v21, v27);

          a1 = v30;

          sub_1AB014AC0(v42, v17);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_1AB433B8C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v32, &unk_1EB4398D0);
  if (v33 == 3)
  {
    sub_1AB014AC0(v32, &unk_1EB4398D0);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v33)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = v32[0];
    sub_1AB03FFF8(a1, v31);
    v31[56] = 1;
    swift_beginAccess();
    sub_1AB017CC4(v31, v1 + 24, &unk_1EB4398D0);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1EB437880;
      do
      {
        sub_1AB014A58(v6, v31, v7);
        sub_1AB014A58(v31, v28, v7);
        v12 = v28[0];
        if (v30)
        {
          sub_1AB03FFF8(a1, &v24);
          v8 = *(*(v12 + 64) + 40);
          v9 = v24;
          v10 = v25;
          v11 = v26;
          *(v8 + 48) = v27;
          *(v8 + 16) = v10;
          *(v8 + 32) = v11;
          *v8 = v9;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v31, v7);
        }

        else
        {
          v13 = v28[1];

          sub_1AB0149B0(&v29, v21);
          v14 = v23;
          v20 = v22;
          __swift_project_boxed_opaque_existential_1Tm(v21, v22);
          sub_1AB03FFF8(a1, &v24);
          v15 = swift_allocObject();
          *(v15 + 16) = v12;
          *(v15 + 24) = v13;
          v16 = v25;
          *(v15 + 32) = v24;
          *(v15 + 48) = v16;
          *(v15 + 64) = v26;
          *(v15 + 80) = v27;
          v17 = v7;
          v18 = a1;
          v19 = *(v14 + 8);

          v19(sub_1AB0224A8, v15, v20, v14);
          a1 = v18;
          v7 = v17;

          sub_1AB014AC0(v31, v17);
          __swift_destroy_boxed_opaque_existential_1Tm(v21);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB433EA8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v32, &unk_1EB437850);
  if (v33 == 3)
  {
    sub_1AB014AC0(v32, &unk_1EB437850);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v33)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = v32[0];
    sub_1AB019BC0(a1, v31);
    v31[56] = 1;
    swift_beginAccess();
    sub_1AB017CC4(v31, v1 + 24, &unk_1EB437850);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1EB4398B0;
      do
      {
        sub_1AB014A58(v6, v31, v7);
        sub_1AB014A58(v31, v28, v7);
        v12 = v28[0];
        if (v30)
        {
          sub_1AB019BC0(a1, &v24);
          v8 = *(*(v12 + 64) + 40);
          v9 = v24;
          v10 = v25;
          v11 = v26;
          *(v8 + 48) = v27;
          *(v8 + 16) = v10;
          *(v8 + 32) = v11;
          *v8 = v9;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v31, v7);
        }

        else
        {
          v13 = v28[1];

          sub_1AB0149B0(&v29, v21);
          v14 = v23;
          v20 = v22;
          __swift_project_boxed_opaque_existential_1Tm(v21, v22);
          sub_1AB019BC0(a1, &v24);
          v15 = swift_allocObject();
          *(v15 + 16) = v12;
          *(v15 + 24) = v13;
          v16 = v25;
          *(v15 + 32) = v24;
          *(v15 + 48) = v16;
          *(v15 + 64) = v26;
          *(v15 + 80) = v27;
          v17 = v7;
          v18 = a1;
          v19 = *(v14 + 8);

          v19(sub_1AB0224A8, v15, v20, v14);
          a1 = v18;
          v7 = v17;

          sub_1AB014AC0(v31, v17);
          __swift_destroy_boxed_opaque_existential_1Tm(v21);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB4341C4(uint64_t a1)
{
  v3 = type metadata accessor for JSPackageIndex();
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v4;
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437810);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v29 - v9);
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v12, v10, &unk_1EB437810);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v10, &unk_1EB437810);
    os_unfair_lock_unlock(v11 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v14 = *v10;
    sub_1AB03C4FC(a1, v7, type metadata accessor for JSPackageIndex);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v7, v1 + v12, &unk_1EB437810);
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    v15 = *(v14 + 16);
    if (v15)
    {
      v29 = v14;
      v16 = v14 + 32;
      v17 = &qword_1EB439E10;
      v30 = a1;
      do
      {
        sub_1AB014A58(v16, v42, v17);
        sub_1AB014A58(v42, v39, v17);
        v19 = v39[0];
        if (v41)
        {
          v18 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for JSPackageIndex);
          sub_1AB03C5CC(v18, *(*(v19 + 64) + 40), type metadata accessor for JSPackageIndex);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v42, v17);
        }

        else
        {
          v20 = v39[1];

          sub_1AB0149B0(&v40, v36);
          v21 = v37;
          v33 = v38;
          v34 = __swift_project_boxed_opaque_existential_1Tm(v36, v37);
          v22 = v17;
          v23 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for JSPackageIndex);
          v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v25 = swift_allocObject();
          *(v25 + 16) = v19;
          *(v25 + 24) = v20;
          v26 = v23;
          v17 = v22;
          sub_1AB03C5CC(v26, v25 + v24, type metadata accessor for JSPackageIndex);
          v27 = v33;
          v28 = *(v33 + 8);

          v28(sub_1AB43BC24, v25, v21, v27);

          a1 = v30;

          sub_1AB014AC0(v42, v17);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_1AB434698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  os_unfair_lock_lock(v4 + 4);
  swift_beginAccess();
  if (*(v3 + 48) == 3)
  {
    os_unfair_lock_unlock(v4 + 4);
  }

  else if (*(v3 + 48))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    v7 = *(v3 + 40);
    sub_1AB2AB1A8(v5, v6, v7, 0);
    sub_1AB1998F8(a1);
    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
    *(v3 + 40) = a3;
    *(v3 + 48) = 1;

    v17 = v7;
    sub_1AB199834(v5, v6, v7, 0);
    os_unfair_lock_unlock(v4 + 4);
    v18 = v5;
    v8 = v5[2];
    if (v8)
    {
      v9 = (v5 + 4);
      do
      {
        sub_1AB014A58(v9, v28, &unk_1EB4377F0);
        sub_1AB014A58(v28, v25, &unk_1EB4377F0);
        v11 = v25[0];
        if (v27)
        {
          sub_1AB1998F8(a1);
          v10 = *(*(v11 + 64) + 40);
          *v10 = a1;
          v10[1] = a2;
          v10[2] = a3;

          swift_continuation_throwingResume();
          sub_1AB014AC0(v28, &unk_1EB4377F0);
        }

        else
        {
          v12 = v25[1];

          sub_1AB0149B0(&v26, v22);
          v14 = v23;
          v13 = v24;
          __swift_project_boxed_opaque_existential_1Tm(v22, v23);
          v15 = swift_allocObject();
          v15[2] = v11;
          v15[3] = v12;
          v15[4] = a1;
          v15[5] = a2;
          v15[6] = a3;
          v16 = *(v13 + 8);
          sub_1AB1998F8(a1);

          v16(sub_1AB43BBFC, v15, v14, v13);

          sub_1AB014AC0(v28, &unk_1EB4377F0);
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
        }

        v9 += 80;
        --v8;
      }

      while (v8);
    }

    sub_1AB199834(v18, v6, v17, 0);
  }
}

void sub_1AB434974(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(v2 + 40) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(v2 + 40))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v2 + 24);
    v5 = *(v2 + 32);
    sub_1AB2AB22C(v4, v5, 0, sub_1AB1998F8);
    sub_1AB1998F8(a1);
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
    *(v2 + 40) = 1;
    v15 = v5;
    sub_1AB199938(v4, v5, 0, sub_1AB1998B8);
    os_unfair_lock_unlock(v3 + 4);
    v16 = v4;
    v6 = v4[2];
    if (v6)
    {
      v7 = (v4 + 4);
      do
      {
        sub_1AB014A58(v7, v25, &unk_1EB43D260);
        sub_1AB014A58(v25, v22, &unk_1EB43D260);
        v9 = v22[0];
        if (v24)
        {
          sub_1AB1998F8(a1);
          v8 = *(*(v9 + 64) + 40);
          *v8 = a1;
          v8[1] = a2;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v25, &unk_1EB43D260);
        }

        else
        {
          v10 = v22[1];

          sub_1AB0149B0(&v23, v19);
          v11 = v20;
          v12 = v21;
          __swift_project_boxed_opaque_existential_1Tm(v19, v20);
          v13 = swift_allocObject();
          v13[2] = v9;
          v13[3] = v10;
          v13[4] = a1;
          v13[5] = a2;
          v14 = *(v12 + 8);
          sub_1AB1998F8(a1);

          v14(sub_1AB43BC18, v13, v11, v12);

          sub_1AB014AC0(v25, &unk_1EB43D260);
          __swift_destroy_boxed_opaque_existential_1Tm(v19);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
    }

    sub_1AB199938(v16, v15, 0, sub_1AB1998B8);
  }
}

void sub_1AB434C88(void *a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    sub_1AB2AB0EC(v4, 0);
    *(v1 + 24) = a1;
    *(v1 + 32) = 1;
    v16 = a1;
    sub_1AB0171C8(v4, 0);
    os_unfair_lock_unlock(v3 + 4);
    v15 = v4;
    v5 = v4[2];
    if (v5)
    {
      v6 = (v4 + 4);
      do
      {
        sub_1AB014A58(v6, v23, &unk_1EB439850);
        sub_1AB014A58(v23, v20, &unk_1EB439850);
        v8 = v20[0];
        if (v22)
        {
          **(*(v20[0] + 64) + 40) = v16;
          v7 = v16;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v23, &unk_1EB439850);
        }

        else
        {
          v9 = v20[1];

          sub_1AB0149B0(&v21, v17);
          v11 = v18;
          v10 = v19;
          __swift_project_boxed_opaque_existential_1Tm(v17, v18);
          v12 = swift_allocObject();
          v12[2] = v8;
          v12[3] = v9;
          v12[4] = v16;
          v13 = *(v10 + 8);
          v14 = v16;

          v13(sub_1AB017C7C, v12, v11, v10);

          sub_1AB014AC0(v23, &unk_1EB439850);
          __swift_destroy_boxed_opaque_existential_1Tm(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1AB0171C8(v15, 0);
  }
}

void sub_1AB434F14(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v24, &unk_1EB439830);
  if (v25 == 3)
  {
    sub_1AB014AC0(v24, &unk_1EB439830);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v25)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = v24[0];
    sub_1AB01494C(a1, v23);
    v23[40] = 1;
    swift_beginAccess();
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB439830);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1EB43D250;
      do
      {
        sub_1AB014A58(v6, v23, v7);
        sub_1AB014A58(v23, v20, v7);
        v8 = v20[0];
        if (v22)
        {
          sub_1AB01494C(a1, &v17);
          sub_1AB0149B0(&v17, *(*(v8 + 64) + 40));
          swift_continuation_throwingResume();
          sub_1AB014AC0(v23, v7);
        }

        else
        {
          v9 = v20[1];

          sub_1AB0149B0(&v21, &v17);
          v10 = v19;
          v15 = v18;
          __swift_project_boxed_opaque_existential_1Tm(&v17, v18);
          sub_1AB01494C(a1, v16);
          v11 = swift_allocObject();
          *(v11 + 16) = v8;
          *(v11 + 24) = v9;
          sub_1AB0149B0(v16, v11 + 32);
          v12 = v7;
          v13 = a1;
          v14 = *(v10 + 8);

          v14(sub_1AB0224A8, v11, v15, v10);
          a1 = v13;
          v7 = v12;

          sub_1AB014AC0(v23, v12);
          __swift_destroy_boxed_opaque_existential_1Tm(&v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB43523C(uint64_t a1)
{
  v3 = type metadata accessor for JSIntentResult();
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v4;
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D220);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v29 - v9);
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v12, v10, &unk_1EB43D220);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v10, &unk_1EB43D220);
    os_unfair_lock_unlock(v11 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v14 = *v10;
    sub_1AB03C4FC(a1, v7, type metadata accessor for JSIntentResult);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v7, v1 + v12, &unk_1EB43D220);
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    v15 = *(v14 + 16);
    if (v15)
    {
      v29 = v14;
      v16 = v14 + 32;
      v17 = &unk_1EB439800;
      v30 = a1;
      do
      {
        sub_1AB014A58(v16, v42, v17);
        sub_1AB014A58(v42, v39, v17);
        v19 = v39[0];
        if (v41)
        {
          v18 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for JSIntentResult);
          sub_1AB03C5CC(v18, *(*(v19 + 64) + 40), type metadata accessor for JSIntentResult);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v42, v17);
        }

        else
        {
          v20 = v39[1];

          sub_1AB0149B0(&v40, v36);
          v21 = v37;
          v33 = v38;
          v34 = __swift_project_boxed_opaque_existential_1Tm(v36, v37);
          v22 = v17;
          v23 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for JSIntentResult);
          v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v25 = swift_allocObject();
          *(v25 + 16) = v19;
          *(v25 + 24) = v20;
          v26 = v23;
          v17 = v22;
          sub_1AB03C5CC(v26, v25 + v24, type metadata accessor for JSIntentResult);
          v27 = v33;
          v28 = *(v33 + 8);

          v28(sub_1AB43AD00, v25, v21, v27);

          a1 = v30;

          sub_1AB014AC0(v42, v17);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_1AB435740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  os_unfair_lock_lock(v4 + 4);
  swift_beginAccess();
  if (*(v3 + 48) == 3)
  {
    os_unfair_lock_unlock(v4 + 4);
  }

  else if (*(v3 + 48))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v5 = *(v3 + 24);
    v15 = *(v3 + 40);
    v16 = *(v3 + 32);
    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
    *(v3 + 40) = a3;
    *(v3 + 48) = 1;

    os_unfair_lock_unlock(v4 + 4);
    v17 = v5;
    v6 = v5[2];
    if (v6)
    {
      v7 = (v5 + 4);
      do
      {
        sub_1AB014A58(v7, v27, &qword_1EB4376C8);
        sub_1AB014A58(v27, v24, &qword_1EB4376C8);
        v9 = v24[0];
        if (v26)
        {
          v8 = *(*(v24[0] + 64) + 40);
          *v8 = a1;
          v8[1] = a2;
          v8[2] = a3;

          swift_continuation_throwingResume();
          sub_1AB014AC0(v27, &qword_1EB4376C8);
        }

        else
        {
          v10 = v24[1];

          sub_1AB0149B0(&v25, v21);
          v12 = v22;
          v11 = v23;
          __swift_project_boxed_opaque_existential_1Tm(v21, v22);
          v13 = swift_allocObject();
          v13[2] = v9;
          v13[3] = v10;
          v13[4] = a1;
          v13[5] = a2;
          v13[6] = a3;
          v14 = *(v11 + 8);

          v14(sub_1AB43BBFC, v13, v12, v11);

          sub_1AB014AC0(v27, &qword_1EB4376C8);
          __swift_destroy_boxed_opaque_existential_1Tm(v21);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
    }

    sub_1AB199768(v17, v16, v15, 0);
  }
}

void sub_1AB435A10(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v31, &qword_1EB439910);
  if (v32 == 3)
  {
    sub_1AB014AC0(v31, &qword_1EB439910);
    os_unfair_lock_unlock(v3 + 4);
    return;
  }

  if (v32)
  {
    goto LABEL_14;
  }

  v4 = v31[0];
  sub_1AB014A58(a1, v30, &qword_1EB43BDB0);
  v30[40] = 1;
  swift_beginAccess();
  sub_1AB017CC4(v30, v1 + 24, &qword_1EB439910);
  swift_endAccess();
  os_unfair_lock_unlock(v3 + 4);
  v21 = v4;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v21 + 32;
    v8 = &unk_1AB4E16C0;
    while (v6 < v5)
    {
      sub_1AB014A58(v7, v30, &qword_1EB439918);
      sub_1AB014A58(v30, v27, &qword_1EB439918);
      v12 = v27[0];
      if (v29)
      {
        sub_1AB014A58(a1, &v24, &qword_1EB43BDB0);
        v9 = *(*(v12 + 64) + 40);
        v10 = v26;
        v11 = v25;
        *v9 = v24;
        *(v9 + 16) = v11;
        *(v9 + 32) = v10;
        swift_continuation_throwingResume();
      }

      else
      {
        v13 = v27[1];

        sub_1AB0149B0(&v28, &v24);
        v14 = v26;
        v20 = *(&v25 + 1);
        __swift_project_boxed_opaque_existential_1Tm(&v24, *(&v25 + 1));
        sub_1AB014A58(a1, v22, &qword_1EB43BDB0);
        v15 = swift_allocObject();
        *(v15 + 16) = v12;
        *(v15 + 24) = v13;
        v16 = v22[1];
        *(v15 + 32) = v22[0];
        *(v15 + 48) = v16;
        *(v15 + 64) = v23;
        v17 = v8;
        v18 = a1;
        v19 = *(v14 + 8);

        v19(sub_1AB0224A8, v15, v20, v14);
        a1 = v18;
        v8 = v17;

        __swift_destroy_boxed_opaque_existential_1Tm(&v24);
      }

      ++v6;
      sub_1AB014AC0(v30, &qword_1EB439918);
      v5 = *(v21 + 16);
      v7 += 80;
      if (v6 == v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_1AB461884();
    __break(1u);
    return;
  }

LABEL_11:
}

void sub_1AB435D98(uint64_t a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
    return;
  }

  if (*(v1 + 32))
  {
    goto LABEL_14;
  }

  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
  *(v1 + 32) = 1;

  os_unfair_lock_unlock(v2 + 4);
  v4 = v3[2];
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 4);
    while (v5 < v4)
    {
      sub_1AB014A58(v6, v20, &unk_1EB439A90);
      sub_1AB014A58(v20, v17, &unk_1EB439A90);
      v7 = v17[0];
      if (v19)
      {
        **(*(v17[0] + 64) + 40) = a1;

        swift_continuation_throwingResume();
      }

      else
      {
        v8 = v17[1];

        sub_1AB0149B0(&v18, v14);
        v10 = v15;
        v9 = v16;
        __swift_project_boxed_opaque_existential_1Tm(v14, v15);
        v11 = swift_allocObject();
        v11[2] = v7;
        v11[3] = v8;
        v11[4] = a1;
        v12 = *(v9 + 8);

        v12(sub_1AB017C7C, v11, v10, v9);

        __swift_destroy_boxed_opaque_existential_1Tm(v14);
      }

      ++v5;
      sub_1AB014AC0(v20, &unk_1EB439A90);
      v4 = v3[2];
      v6 += 80;
      if (v5 == v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_1AB461884();
    __break(1u);
    return;
  }

LABEL_11:
  sub_1AB023D0C(v3, 0, MEMORY[0x1E69E7CF8]);
}

uint64_t sub_1AB436020(uint64_t a1)
{
  sub_1AB014A58(v1, v13, &unk_1EB4397E0);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1;
    swift_unknownObjectRetain();
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1AB0149B0(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v5;
    v8[4] = a1;
    v9 = *(v7 + 8);

    swift_unknownObjectRetain();
    v9(sub_1AB017C80, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

uint64_t sub_1AB436170(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1AB014A58(v5, v21, &unk_1EB43D290);
  v10 = v21[0];
  if (v23)
  {
    sub_1AB144A64(a1, a2);
    v11 = *(*(v10 + 64) + 40);
    *v11 = a1;
    v11[1] = a2;
    v11[2] = a3;
    v11[3] = a4;
    return swift_continuation_throwingResume();
  }

  else
  {
    v13 = v21[1];

    sub_1AB0149B0(&v22, v18);
    v14 = v19;
    v15 = v20;
    __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    v16 = swift_allocObject();
    v16[2] = v10;
    v16[3] = v13;
    v16[4] = a1;
    v16[5] = a2;
    v16[6] = a3;
    v16[7] = a4;
    v17 = *(v15 + 8);

    sub_1AB144A64(a1, a2);
    v17(sub_1AB43BB20, v16, v14, v15);

    return __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }
}

uint64_t sub_1AB436350(uint64_t a1)
{
  sub_1AB014A58(v1, v13, &unk_1EB4377E0);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1;

    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1AB0149B0(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v5;
    v8[4] = a1;
    v9 = *(v7 + 8);

    v9(sub_1AB017C7C, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

uint64_t sub_1AB4364D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1AB014A58(v3, v17, &unk_1EB437970);
  v6 = v17[0];
  if (v19)
  {
    v7 = *(*(v17[0] + 64) + 40);
    *v7 = a1;
    v7[1] = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v17[1];

    sub_1AB0149B0(&v18, v14);
    v10 = v15;
    v11 = v16;
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    v12 = swift_allocObject();
    v12[2] = v6;
    v12[3] = v9;
    v12[4] = a1;
    v12[5] = a2;
    v13 = *(v11 + 8);

    v13(sub_1AB43BC18, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }
}

uint64_t sub_1AB436638(uint64_t a1)
{
  sub_1AB014A58(v1, v14, &unk_1EB4378D0);
  v3 = v14[0];
  if (v16)
  {
    sub_1AB01494C(a1, &v11);
    sub_1AB0149B0(&v11, *(*(v3 + 64) + 40));
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v14[1];

    sub_1AB0149B0(&v15, &v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1Tm(&v11, v12);
    sub_1AB01494C(a1, v10);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    sub_1AB0149B0(v10, v8 + 32);
    v9 = *(v7 + 8);

    v9(sub_1AB0224A8, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  }
}

uint64_t sub_1AB436794()
{
  sub_1AB014A58(v0, v11, &unk_1EB4378E0);
  v1 = v11[0];
  if (v13)
  {
    return swift_continuation_throwingResume();
  }

  v3 = v11[1];

  sub_1AB0149B0(&v12, v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1Tm(v8, v9);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  v7 = *(v5 + 8);

  v7(sub_1AB43BC4C, v6, v4, v5);

  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_1AB4368A4(uint64_t a1)
{
  sub_1AB014A58(v1, v13, &unk_1EB4397F0);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1AB0149B0(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v5;
    v8[4] = a1;
    v9 = *(v7 + 8);

    v9(sub_1AB017C7C, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

uint64_t sub_1AB436A6C(uint64_t a1)
{
  sub_1AB014A58(v1, v13, &unk_1EB4376B0);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1;

    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1AB0149B0(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v5;
    v8[4] = a1;
    v9 = *(v7 + 8);

    v9(sub_1AB017C80, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

uint64_t sub_1AB436BBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1AB014A58(v3, v17, &unk_1EB439CC0);
  v6 = v17[0];
  if (v19)
  {
    v7 = *(*(v17[0] + 64) + 40);
    *v7 = a1;
    v7[1] = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v17[1];

    sub_1AB0149B0(&v18, v14);
    v10 = v15;
    v11 = v16;
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    v12 = swift_allocObject();
    v12[2] = v6;
    v12[3] = v9;
    v12[4] = a1;
    v12[5] = a2;
    v13 = *(v11 + 8);

    v13(sub_1AB43BC00, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }
}

uint64_t sub_1AB436D44(uint64_t a1)
{
  v3 = sub_1AB45F0A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1AB014A58(v1, v18, &qword_1EB439E20);
  v6 = v18[0];
  if (v20)
  {
    (*(v4 + 16))(&v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    (*(v4 + 32))(*(*(v6 + 64) + 40), &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    return swift_continuation_throwingResume();
  }

  else
  {
    v8 = v18[1];

    sub_1AB0149B0(&v19, v15);
    v9 = v16;
    v10 = v17;
    v14 = __swift_project_boxed_opaque_existential_1Tm(v15, v16);
    (*(v4 + 16))(&v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = v6;
    *(v12 + 24) = v8;
    (*(v4 + 32))(v12 + v11, &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    v13 = *(v10 + 8);

    v13(sub_1AB43B258, v12, v9, v10);

    return __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }
}

uint64_t sub_1AB436F78(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_1AB014A58(v3, v17, &unk_1EB4377D0);
  v6 = v17[0];
  if (v19)
  {
    sub_1AB017200(a1, a2);
    v7 = *(*(v6 + 64) + 40);
    *v7 = a1;
    v7[1] = a2;
    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v17[1];

    sub_1AB0149B0(&v18, v14);
    v10 = v15;
    v11 = v16;
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    v12 = swift_allocObject();
    v12[2] = v6;
    v12[3] = v9;
    v12[4] = a1;
    v12[5] = a2;
    v13 = *(v11 + 8);

    sub_1AB017200(a1, a2);
    v13(sub_1AB43AF90, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }
}

uint64_t sub_1AB4370D8(uint64_t a1)
{
  v3 = sub_1AB45F764();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1AB014A58(v1, v18, &unk_1EB439840);
  v6 = v18[0];
  if (v20)
  {
    (*(v4 + 16))(&v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    (*(v4 + 32))(*(*(v6 + 64) + 40), &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    return swift_continuation_throwingResume();
  }

  else
  {
    v8 = v18[1];

    sub_1AB0149B0(&v19, v15);
    v9 = v16;
    v10 = v17;
    v14 = __swift_project_boxed_opaque_existential_1Tm(v15, v16);
    (*(v4 + 16))(&v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = v6;
    *(v12 + 24) = v8;
    (*(v4 + 32))(v12 + v11, &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    v13 = *(v10 + 8);

    v13(sub_1AB43AF78, v12, v9, v10);

    return __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }
}

uint64_t sub_1AB43730C(uint64_t a1)
{
  sub_1AB014A58(v1, v14, &unk_1EB4376E0);
  v3 = v14[0];
  if (v16)
  {
    sub_1AB01494C(a1, &v11);
    sub_1AB0149B0(&v11, *(*(v3 + 64) + 40));
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v14[1];

    sub_1AB0149B0(&v15, &v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1Tm(&v11, v12);
    sub_1AB01494C(a1, v10);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    sub_1AB0149B0(v10, v8 + 32);
    v9 = *(v7 + 8);

    v9(sub_1AB0224A8, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  }
}

uint64_t sub_1AB437468(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JSSource();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB014A58(v2, v20, &qword_1EB439D20);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JSSource);
    sub_1AB03C5CC(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for JSSource);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JSSource);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB03C5CC(v7, v14 + v13, type metadata accessor for JSSource);
    v15 = *(v12 + 8);

    v15(sub_1AB43AF60, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB437684(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  sub_1AB014A58(v4, v21, &qword_1EB43A050);
  v8 = v21[0];
  if (v23)
  {
    sub_1AB017200(a1, a2);
    v9 = *(*(v8 + 64) + 40);
    *v9 = a1;
    v9[1] = a2;
    v9[2] = a3;
    v10 = a3;
    return swift_continuation_throwingResume();
  }

  else
  {
    v12 = v21[1];

    sub_1AB0149B0(&v22, v18);
    v13 = v19;
    v14 = v20;
    __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    v15 = swift_allocObject();
    v15[2] = v8;
    v15[3] = v12;
    v15[4] = a1;
    v15[5] = a2;
    v15[6] = a3;
    v16 = *(v14 + 8);

    sub_1AB017200(a1, a2);
    v17 = a3;
    v16(sub_1AB43AAF0, v15, v13, v14);

    return __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }
}

uint64_t sub_1AB4377F8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D280);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - v6;
  sub_1AB014A58(v2, v20, &unk_1EB439920);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB014A58(a1, v7, &unk_1EB43D280);
    sub_1AB017FB8(v7, *(*(v8 + 64) + 40), &unk_1EB43D280);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    v16 = __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB014A58(a1, v7, &unk_1EB43D280);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB017FB8(v7, v14 + v13, &unk_1EB43D280);
    v15 = *(v12 + 8);

    v15(sub_1AB43B854, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB437A88(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JSResponse();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB014A58(v2, v20, &unk_1EB4397D0);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JSResponse);
    sub_1AB03C5CC(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for JSResponse);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JSResponse);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB03C5CC(v7, v14 + v13, type metadata accessor for JSResponse);
    v15 = *(v12 + 8);

    v15(sub_1AB43BC04, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB437CA4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437770);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - v6;
  sub_1AB014A58(v2, v20, &unk_1EB437780);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB014A58(a1, v7, &unk_1EB437770);
    sub_1AB017FB8(v7, *(*(v8 + 64) + 40), &unk_1EB437770);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    v16 = __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB014A58(a1, v7, &unk_1EB437770);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB017FB8(v7, v14 + v13, &unk_1EB437770);
    v15 = *(v12 + 8);

    v15(sub_1AB07D2EC, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB437F04(uint64_t a1)
{
  sub_1AB014A58(v1, v14, &unk_1EB437790);
  v3 = v14[0];
  if (v16)
  {
    sub_1AB01494C(a1, &v11);
    sub_1AB0149B0(&v11, *(*(v3 + 64) + 40));
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v14[1];

    sub_1AB0149B0(&v15, &v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1Tm(&v11, v12);
    sub_1AB01494C(a1, v10);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    sub_1AB0149B0(v10, v8 + 32);
    v9 = *(v7 + 8);

    v9(sub_1AB0224A8, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  }
}

uint64_t sub_1AB438090(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageIntentInstrumentation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB014A58(v2, v20, &unk_1EB43D240);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PageIntentInstrumentation);
    sub_1AB03C5CC(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for PageIntentInstrumentation);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PageIntentInstrumentation);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB03C5CC(v7, v14 + v13, type metadata accessor for PageIntentInstrumentation);
    v15 = *(v12 + 8);

    v15(sub_1AB43AE24, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB4382AC(char a1)
{
  sub_1AB014A58(v1, v13, &unk_1EB437930);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1 & 1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1AB0149B0(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    *(v8 + 32) = a1 & 1;
    v9 = *(v7 + 8);

    v9(sub_1AB43BC20, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

uint64_t sub_1AB4383EC(char a1)
{
  v2 = v1;
  sub_1AB014A58(v2, v14, &unk_1EB437910);
  v4 = v14[0];
  if (v16)
  {
    **(*(v14[0] + 64) + 40) = a1 & 1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v6 = v14[1];

    sub_1AB0149B0(&v15, v11);
    v7 = v12;
    v8 = v13;
    __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    *(v9 + 24) = v6;
    *(v9 + 32) = a1 & 1;
    v10 = *(v8 + 8);

    v10(sub_1AB43B014, v9, v7, v8);

    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }
}

uint64_t sub_1AB438530(__int128 *a1)
{
  sub_1AB014A58(v1, v19, &qword_1EB439FD0);
  v3 = v19[0];
  if (v21)
  {
    v4 = a1[1];
    v16 = *a1;
    v17 = v4;
    v18 = a1[2];
    sub_1AB43B75C(a1, v13);
    v5 = *(*(v3 + 64) + 40);
    *v5 = v16;
    v5[1] = v17;
    v5[2] = v18;
    return swift_continuation_throwingResume();
  }

  else
  {
    v7 = v19[1];

    sub_1AB0149B0(&v20, v13);
    v8 = v14;
    v9 = v15;
    __swift_project_boxed_opaque_existential_1Tm(v13, v14);
    v10 = swift_allocObject();
    *(v10 + 16) = v3;
    *(v10 + 24) = v7;
    v11 = a1[1];
    *(v10 + 32) = *a1;
    *(v10 + 48) = v11;
    *(v10 + 64) = a1[2];
    v12 = *(v9 + 8);

    sub_1AB43B75C(a1, &v16);
    v12(sub_1AB43B7B8, v10, v8, v9);

    return __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }
}

uint64_t sub_1AB4386B8(char a1)
{
  sub_1AB014A58(v1, v13, &unk_1EB437920);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1AB0149B0(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    *(v8 + 32) = a1;
    v9 = *(v7 + 8);

    v9(sub_1AB43B018, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

uint64_t sub_1AB4387F0(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 64);
  v5 = *(a1 + 11);
  v30 = *a1;
  *&v31 = v2;
  *(&v31 + 1) = v3;
  v6 = a1[3];
  v32 = a1[2];
  v33 = v6;
  v34[0] = v4;
  *&v34[8] = *(a1 + 72);
  *&v34[24] = v5;
  sub_1AB014A58(v1, v27, &unk_1EB438550);
  v7 = v27[0];
  if (v29)
  {
    v23 = v32;
    v24 = v33;
    v25 = *v34;
    v26 = *&v34[16];
    v21 = v30;
    v22 = v31;
    sub_1AB014A58(&v30, v18, &unk_1EB43D270);
    v8 = *(*(v7 + 64) + 40);
    v8[2] = v23;
    v8[3] = v24;
    v8[4] = v25;
    v8[5] = v26;
    *v8 = v21;
    v8[1] = v22;
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v27[1];

    sub_1AB0149B0(&v28, v18);
    v11 = v19;
    v12 = v20;
    __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    *(v13 + 24) = v10;
    v14 = v33;
    *(v13 + 64) = v32;
    *(v13 + 80) = v14;
    v15 = *&v34[16];
    *(v13 + 96) = *v34;
    *(v13 + 112) = v15;
    v16 = v31;
    *(v13 + 32) = v30;
    *(v13 + 48) = v16;
    v17 = *(v12 + 8);

    sub_1AB014A58(&v30, &v21, &unk_1EB43D270);
    v17(sub_1AB43B6A0, v13, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }
}

uint64_t sub_1AB4389EC(uint64_t a1)
{
  sub_1AB014A58(v1, v14, &unk_1EB437700);
  v3 = v14[0];
  if (v16)
  {
    sub_1AB0165C4(a1, &v11);
    sub_1AB014B78(&v11, *(*(v3 + 64) + 40));
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v14[1];

    sub_1AB0149B0(&v15, &v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1Tm(&v11, v12);
    sub_1AB0165C4(a1, v10);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    sub_1AB014B78(v10, (v8 + 32));
    v9 = *(v7 + 8);

    v9(sub_1AB0224A8, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  }
}

uint64_t sub_1AB438B48(uint64_t a1)
{
  sub_1AB014A58(v1, v14, &qword_1EB4378C0);
  v3 = v14[0];
  if (v16)
  {
    sub_1AB01494C(a1, &v11);
    sub_1AB0149B0(&v11, *(*(v3 + 64) + 40));
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v14[1];

    sub_1AB0149B0(&v15, &v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1Tm(&v11, v12);
    sub_1AB01494C(a1, v10);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    sub_1AB0149B0(v10, v8 + 32);
    v9 = *(v7 + 8);

    v9(sub_1AB0224A8, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  }
}

uint64_t sub_1AB438CA4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - v6;
  sub_1AB014A58(v2, v20, &qword_1EB43BD80);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB014A58(a1, v7, &unk_1EB4395B0);
    sub_1AB017FB8(v7, *(*(v8 + 64) + 40), &unk_1EB4395B0);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    v16 = __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB014A58(a1, v7, &unk_1EB4395B0);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB017FB8(v7, v14 + v13, &unk_1EB4395B0);
    v15 = *(v12 + 8);

    v15(sub_1AB43ABCC, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB438ED4(uint64_t a1)
{
  sub_1AB014A58(v1, v24, &unk_1EB4378A0);
  v3 = v24[0];
  if (v26)
  {
    sub_1AB0261D0(a1, &v19);
    v4 = *(*(v3 + 64) + 40);
    *v4 = v19;
    v6 = v22;
    v5 = v23;
    v7 = v21;
    v4[1] = v20;
    v4[2] = v7;
    v4[3] = v6;
    v4[4] = v5;
    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v24[1];

    sub_1AB0149B0(&v25, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    sub_1AB0261D0(a1, &v19);
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    *(v12 + 24) = v9;
    v13 = v22;
    *(v12 + 64) = v21;
    *(v12 + 80) = v13;
    *(v12 + 96) = v23;
    v14 = v20;
    *(v12 + 32) = v19;
    *(v12 + 48) = v14;
    v15 = *(v11 + 8);

    v15(sub_1AB022478, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }
}

uint64_t sub_1AB439054(uint64_t a1)
{
  sub_1AB014A58(v1, v14, &unk_1EB4378B0);
  v3 = v14[0];
  if (v16)
  {
    sub_1AB01494C(a1, &v11);
    sub_1AB0149B0(&v11, *(*(v3 + 64) + 40));
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v14[1];

    sub_1AB0149B0(&v15, &v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1Tm(&v11, v12);
    sub_1AB01494C(a1, v10);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    sub_1AB0149B0(v10, v8 + 32);
    v9 = *(v7 + 8);

    v9(sub_1AB022478, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  }
}

uint64_t sub_1AB439210(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DiskJetPackResourceBundle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB014A58(v2, v20, &unk_1EB4398C0);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DiskJetPackResourceBundle);
    sub_1AB03C5CC(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for DiskJetPackResourceBundle);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DiskJetPackResourceBundle);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB03C5CC(v7, v14 + v13, type metadata accessor for DiskJetPackResourceBundle);
    v15 = *(v12 + 8);

    v15(sub_1AB04F7B0, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB43942C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JetPackAsset(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB014A58(v2, v20, &unk_1EB4398A0);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JetPackAsset);
    sub_1AB03C5CC(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for JetPackAsset);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JetPackAsset);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB03C5CC(v7, v14 + v13, type metadata accessor for JetPackAsset);
    v15 = *(v12 + 8);

    v15(sub_1AB43B33C, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB439648(uint64_t a1)
{
  sub_1AB014A58(v1, v22, &unk_1EB437880);
  v3 = v22[0];
  if (v24)
  {
    sub_1AB03FFF8(a1, &v18);
    v4 = *(*(v3 + 64) + 40);
    v5 = v18;
    v6 = v19;
    v7 = v20;
    *(v4 + 48) = v21;
    *(v4 + 16) = v6;
    *(v4 + 32) = v7;
    *v4 = v5;
    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v22[1];

    sub_1AB0149B0(&v23, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1Tm(v15, v16);
    sub_1AB03FFF8(a1, &v18);
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    *(v12 + 24) = v9;
    v13 = v19;
    *(v12 + 32) = v18;
    *(v12 + 48) = v13;
    *(v12 + 64) = v20;
    *(v12 + 80) = v21;
    v14 = *(v11 + 8);

    v14(sub_1AB022478, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }
}

uint64_t sub_1AB4397D0(uint64_t a1)
{
  sub_1AB014A58(v1, v22, &unk_1EB4398B0);
  v3 = v22[0];
  if (v24)
  {
    sub_1AB019BC0(a1, &v18);
    v4 = *(*(v3 + 64) + 40);
    v5 = v18;
    v6 = v19;
    v7 = v20;
    *(v4 + 48) = v21;
    *(v4 + 16) = v6;
    *(v4 + 32) = v7;
    *v4 = v5;
    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v22[1];

    sub_1AB0149B0(&v23, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1Tm(v15, v16);
    sub_1AB019BC0(a1, &v18);
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    *(v12 + 24) = v9;
    v13 = v19;
    *(v12 + 32) = v18;
    *(v12 + 48) = v13;
    *(v12 + 64) = v20;
    *(v12 + 80) = v21;
    v14 = *(v11 + 8);

    v14(sub_1AB0224A8, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }
}

uint64_t sub_1AB439958(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JSPackageIndex();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB014A58(v2, v20, &qword_1EB439E10);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JSPackageIndex);
    sub_1AB03C5CC(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for JSPackageIndex);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JSPackageIndex);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB03C5CC(v7, v14 + v13, type metadata accessor for JSPackageIndex);
    v15 = *(v12 + 8);

    v15(sub_1AB43B140, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB439BA4(uint64_t a1)
{
  sub_1AB014A58(v1, v13, &unk_1EB437800);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1;

    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1AB0149B0(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v5;
    v8[4] = a1;
    v9 = *(v7 + 8);

    v9(sub_1AB017C7C, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

uint64_t sub_1AB439CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1AB014A58(v4, v19, &unk_1EB4377F0);
  v8 = v19[0];
  if (v21)
  {
    sub_1AB1998F8(a1);
    v9 = *(*(v8 + 64) + 40);
    *v9 = a1;
    v9[1] = a2;
    v9[2] = a3;

    return swift_continuation_throwingResume();
  }

  else
  {
    v11 = v19[1];

    sub_1AB0149B0(&v20, v16);
    v12 = v17;
    v13 = v18;
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v14 = swift_allocObject();
    v14[2] = v8;
    v14[3] = v11;
    v14[4] = a1;
    v14[5] = a2;
    v14[6] = a3;
    v15 = *(v13 + 8);

    sub_1AB1998F8(a1);

    v15(sub_1AB43AAF0, v14, v12, v13);

    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }
}

uint64_t sub_1AB439E70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1AB014A58(v3, v17, &unk_1EB43D260);
  v6 = v17[0];
  if (v19)
  {
    sub_1AB1998F8(a1);
    v7 = *(*(v6 + 64) + 40);
    *v7 = a1;
    v7[1] = a2;
    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v17[1];

    sub_1AB0149B0(&v18, v14);
    v10 = v15;
    v11 = v16;
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    v12 = swift_allocObject();
    v12[2] = v6;
    v12[3] = v9;
    v12[4] = a1;
    v12[5] = a2;
    v13 = *(v11 + 8);

    sub_1AB1998F8(a1);
    v13(sub_1AB43AF90, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }
}

uint64_t sub_1AB43A030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1AB014A58(v4, v19, &qword_1EB4376C8);
  v8 = v19[0];
  if (v21)
  {
    v9 = *(*(v19[0] + 64) + 40);
    *v9 = a1;
    v9[1] = a2;
    v9[2] = a3;

    return swift_continuation_throwingResume();
  }

  else
  {
    v11 = v19[1];

    sub_1AB0149B0(&v20, v16);
    v12 = v17;
    v13 = v18;
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v14 = swift_allocObject();
    v14[2] = v8;
    v14[3] = v11;
    v14[4] = a1;
    v14[5] = a2;
    v14[6] = a3;
    v15 = *(v13 + 8);

    v15(sub_1AB43AAF0, v14, v12, v13);

    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }
}

uint64_t sub_1AB43A1B4(uint64_t a1)
{
  sub_1AB014A58(v1, v13, &unk_1EB437750);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1;
    swift_unknownObjectRetain();
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1AB0149B0(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v5;
    v8[4] = a1;
    v9 = *(v7 + 8);

    swift_unknownObjectRetain();
    v9(sub_1AB182594, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

uint64_t sub_1AB43A304(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NetResponse();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB014A58(v2, v20, &qword_1EB4376C0);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetResponse);
    sub_1AB03C5CC(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for NetResponse);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetResponse);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB03C5CC(v7, v14 + v13, type metadata accessor for NetResponse);
    v15 = *(v12 + 8);

    v15(sub_1AB0B7230, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB43A580(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  sub_1AB014A58(v7, v21, a2);
  v9 = v21[0];
  if (v23)
  {
    **(*(v21[0] + 64) + 40) = a1;
    v10 = a1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v12 = v21[1];

    sub_1AB0149B0(&v22, v18);
    v13 = v19;
    v14 = v20;
    __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    v15 = swift_allocObject();
    v15[2] = v9;
    v15[3] = v12;
    v15[4] = a1;
    v16 = *(v14 + 8);
    v17 = a1;

    v16(a5, v15, v13, v14);

    return __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }
}

uint64_t sub_1AB43A6B8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D1C0);
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = 0;
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = 0;
  v10 = *a1;
  sub_1AB233FBC(&v10, a2, a3);
  sub_1AB42EC48();
  return v6;
}

uint64_t MetricsEventRecorder._recordAsync(_:on:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D1C0);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = 0;
  v14 = *a1;
  (*(a5 + 8))(&v14, a2, a3, a4, a5);
  sub_1AB42EC48();
  return v10;
}

uint64_t sub_1AB43A8B0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(__int128 *, uint64_t, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D1C0);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 16) = 0;
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = 0;
  v14 = *a1;
  a6(&v14, a2, a3);
  sub_1AB42EC48();
  return v10;
}

uint64_t objectdestroy_25Tm()
{
  v1 = type metadata accessor for NetResponse();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 36);
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AB43AAF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = v2;
  return v1(&v4);
}

uint64_t objectdestroy_46Tm(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1AB43AB8C()
{
  v1 = v0[2];
  v2 = v0[5];
  v4[0] = v0[4];
  v4[1] = v2;
  return v1(v4);
}

uint64_t objectdestroy_109Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1AB45F764();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_153Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437770);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + v3);
  }

  v5 = *(v1 + 28);
  v6 = sub_1AB45F244();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_181Tm()
{
  v1 = *(type metadata accessor for PageIntentInstrumentation() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v5 = sub_1AB45F9B4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_197Tm()
{

  sub_1AB017254(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB43AFD4()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

uint64_t sub_1AB43B018()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

uint64_t objectdestroy_239Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_236Tm()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_246Tm()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_268Tm()
{
  v1 = *(type metadata accessor for JSPackageIndex() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1AB45F764();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_194Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_296Tm()
{
  v1 = (type metadata accessor for JetPackAsset(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v3);
  v5 = v0 + v3 + v1[7];

  v6 = *(type metadata accessor for JetPackAsset.Metadata(0) + 24);
  v7 = sub_1AB45F9B4();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_303Tm()
{

  sub_1AB021B04(v0[4], v0[5]);
  if (v0[9])
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6));
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t objectdestroy_289Tm(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = (a1(0) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(*v4 + 64);

  a2(*(v2 + v6 + 8));
  v8 = v4[8];
  v9 = sub_1AB45F764();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v2 + v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v2 + v6 + v8, v9);
  }

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroy_341Tm()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t objectdestroy_375Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1AB43B70C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 80);
  v6[2] = *(v0 + 64);
  v6[3] = v2;
  v3 = *(v0 + 112);
  v6[4] = *(v0 + 96);
  v6[5] = v3;
  v4 = *(v0 + 48);
  v6[0] = *(v0 + 32);
  v6[1] = v4;
  return v1(v6);
}

uint64_t objectdestroy_385Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AB43B804()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = v2;
  v7 = v3;
  v8 = *(v0 + 64);
  return v1(&v5);
}

uint64_t objectdestroy_402Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D280);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = sub_1AB45F764();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_416Tm()
{

  sub_1AB017254(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_188Tm()
{
  v1 = (type metadata accessor for JSSource() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_441Tm()
{

  if (*(v0 + 40) >= 2uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AB43BB74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v4[0] = *(v0 + 32);
  v4[1] = v2;
  return v1(v4);
}

uint64_t sub_1AB43BBB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v4 = *(v0 + 32);
  v5 = v2;
  return v1(&v4);
}

void *IntentDispatchOptions.init(name:dependencies:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3[3] = a1;
  v3[4] = a2;
  v3[2] = v4;
  return v3;
}

void *IntentDispatchOptions.__allocating_init(dispatcher:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436660);
  *(inited + 64) = v3;
  v4 = swift_allocObject();
  *(inited + 40) = v4;
  sub_1AB01494C(a1, v4 + 16);
  *(inited + 32) = v3;
  v5 = sub_1AB014B20();
  v7 = MEMORY[0x1AC59B670](1, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v5);
  sub_1AB014B88(inited);
  swift_setDeallocating();
  sub_1AB01667C(inited + 32);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  result = swift_allocObject();
  result[3] = 0xD000000000000017;
  result[4] = 0x80000001AB50F340;
  result[2] = v7;
  return result;
}

uint64_t IntentDispatchOptions.dispatcher.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1AB12F650(*(v1 + 16), a1);
  return swift_task_localValuePop();
}

uint64_t IntentDispatchOptions.withDispatcher(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436660);
  sub_1AB014A58(a1, &v10, &qword_1EB439168);
  if (v11)
  {
    sub_1AB1580C0(&v10, v13);
    v12 = v4;
    *(&v10 + 1) = swift_allocObject();
    sub_1AB01494C(v13, *(&v10 + 1) + 16);
    *&v10 = v4;
    v5 = sub_1AB0300F4(&v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    sub_1AB01667C(&v10);
    return v5;
  }

  else
  {
    sub_1AB014AC0(&v10, &qword_1EB439168);
    v9 = v1[2];

    DependencyDictionary.remove(dependencyFor:)(v4);
    swift_beginAccess();
    v7 = v1[4];
    *&v10 = v1[3];
    *(&v10 + 1) = v7;

    MEMORY[0x1AC59BA20](2108704, 0xE300000000000000);
    v8 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v8);

    return (*(v3 + 96))(v10, *(&v10 + 1), &v9);
  }
}

unint64_t IntentDispatchOptions.jsonContext.getter@<X0>(unint64_t *a1@<X8>)
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v4 = v1;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1AB0C7EF4(*(v1 + 16), &v4);
  swift_task_localValuePop();
  result = v4;
  if (!v4)
  {
    result = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  }

  *a1 = result;
  return result;
}

uint64_t IntentDispatchOptions.timeout.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v7 = v1;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1AB12FB20(*(v1 + 16), &v7);
  result = swift_task_localValuePop();
  v4 = v9;
  v5 = v8;
  v6 = v7;
  if (v9)
  {
    v6 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = (v4 | v5) & 1;
  return result;
}

uint64_t IntentDispatchOptions.withTimeoutDefault(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (sub_1AB24EEB0(*(v1 + 16)))
  {
  }

  else
  {
    v7 = &type metadata for IntentDispatchTimeout;
    v6 = v3;
    v5[0] = &type metadata for IntentDispatchTimeout;
    v5[1] = v2;
    v1 = sub_1AB0300F4(v5);
    sub_1AB01667C(v5);
  }

  return v1;
}

uint64_t IntentDispatchOptions.pageIntentInstrumentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43D2B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v10[1] = v2;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1AB12FFB4(*(v2 + 16), v6);
  swift_task_localValuePop();
  v7 = type metadata accessor for PageIntentInstrumentation();
  v8 = *(*(v7 - 8) + 48);
  if (v8(v6, 1, v7) != 1)
  {
    return sub_1AB034334(v6, a1, type metadata accessor for PageIntentInstrumentation);
  }

  swift_storeEnumTagMultiPayload();
  result = (v8)(v6, 1, v7);
  if (result != 1)
  {
    return sub_1AB014AC0(v6, qword_1EB43D2B0);
  }

  return result;
}

uint64_t IntentDispatchOptions.pageRenderMetrics.getter()
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  v1 = sub_1AB13055C(*(v0 + 16));
  swift_task_localValuePop();
  return v1;
}

uint64_t IntentDispatchOptions.withPageRenderMetrics(_:)(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v12[0] = v1;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1AB130A20(v1[2]);
  v5 = v4;
  swift_task_localValuePop();
  if ((v5 & 0x100) == 0)
  {
    sub_1AB41308C("JetEngine/IntentDispatchOptions.swift", 37, 2, 174);
  }

  v6 = type metadata accessor for PageRenderMetricsPresenter();
  if (a1)
  {
    v12[4] = v6;
    v12[0] = v6;
    v12[1] = a1;

    v7 = sub_1AB0300F4(v12);
    sub_1AB01667C(v12);
    return v7;
  }

  else
  {
    v15 = v1[2];
    v9 = v6;

    DependencyDictionary.remove(dependencyFor:)(v9);
    swift_beginAccess();
    v10 = v1[4];
    v13 = v1[3];
    v14 = v10;

    MEMORY[0x1AC59BA20](2108704, 0xE300000000000000);
    v11 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v11);

    return (*(v3 + 96))(v13, v14, &v15);
  }
}

uint64_t sub_1AB43C608(int a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43D2B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for PageRenderMetricsPresenter.State();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PageIntentInstrumentation();
  v24 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v25[0] = v3;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  v15 = sub_1AB13055C(*(v3 + 16));
  swift_task_localValuePop();
  if (v15)
  {
    LODWORD(v23) = a1;
    v16 = *(v15 + 32);
    v17 = *(*v16 + *MEMORY[0x1E69E6B68] + 16);
    v18 = (*(*v16 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v16 + v18));
    sub_1AB03ABBC(v16 + v17, v11, type metadata accessor for PageRenderMetricsPresenter.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1AB034334(v11, v14, type metadata accessor for PageRenderEvent);
    }

    else
    {
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384C8) + 48);
      swift_unknownObjectRelease();
      sub_1AB034334(v11, v14, type metadata accessor for PageRenderEvent);
      sub_1AB074218(&v11[v20]);
    }

    os_unfair_lock_unlock((v16 + v18));
    swift_storeEnumTagMultiPayload();
    sub_1AB03ABBC(v14, v8, type metadata accessor for PageIntentInstrumentation);
    (*(v24 + 56))(v8, 0, 1, v12);
    sub_1AB03AC24(v8);
    sub_1AB014AC0(v8, qword_1EB43D2B0);
    v19 = sub_1AB03B068(&type metadata for IntentDispatchOptions.BadOrderingCanary);

    sub_1AB03439C(v14);
  }

  else
  {
    v27 = &type metadata for IntentDispatchOptions.BadOrderingCanary;
    v26 = 2;
    v25[1] = v23;
    v25[2] = a3;
    v25[0] = &type metadata for IntentDispatchOptions.BadOrderingCanary;
    v19 = sub_1AB0300F4(v25);
    sub_1AB01667C(v25);
  }

  return v19;
}

uint64_t IntentDispatchOptions.deinit()
{

  return v0;
}

uint64_t _CodeByKind_KeyedBy.wrappedValue.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _CodeByKind_KeyedBy.description.getter()
{
  swift_getAssociatedTypeWitness();
  sub_1AB4603C4();
  swift_getWitnessTable();
  sub_1AB461D74();
  return 0;
}

uint64_t _CodeByKind_KeyedBy.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1AB01494C(a1, v15);
  type metadata accessor for CodeByKind();
  swift_getWitnessTable();
  v10 = sub_1AB460404();
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v14[1] = a5;
    MEMORY[0x1EEE9AC00](v10);
    v14[2] = v11;
    KeyPath = swift_getKeyPath();
    v16 = v14;
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getAssociatedTypeWitness();
    a6 = sub_1AB4603A4();

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return a6;
}

uint64_t _CodeByKind_KeyedBy.encode(to:)()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for CodeByKind();
  sub_1AB4603A4();
  swift_getWitnessTable();
  sub_1AB4603D4();
}

uint64_t sub_1AB43CE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return CodeByKind.init(wrappedValue:)(v7, a2);
}

uint64_t sub_1AB43CF5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = _CodeByKind_KeyedBy.init(from:)(a1, a2[2], a2[3], a2[4], a2[5], a2[6]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t _CodeByKind_KeyedBy<>.init(_partiallyFrom:)(uint64_t a1)
{
  sub_1AB01494C(a1, v6);
  v2 = type metadata accessor for CodeByKind();
  WitnessTable = swift_getWitnessTable();
  Dictionary<>.init(_partiallyFrom:)(v6, v2, WitnessTable);
  swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  v4 = sub_1AB4603A4();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

uint64_t sub_1AB43D0E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = _CodeByKind_KeyedBy<>.init(_partiallyFrom:)(a1);
  *a2 = result;
  return result;
}

uint64_t _CodeByKind_KeyedBy<>._partiallyEncode(to:)(void *a1)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for CodeByKind();
  v3 = sub_1AB4603A4();
  WitnessTable = swift_getWitnessTable();
  Dictionary<>._partiallyEncode(to:)(a1, v3, v2, WitnessTable);
}

uint64_t sub_1AB43D20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return CodeByKind.init(wrappedValue:)(v7, a2);
}

uint64_t static _CodeByKind_KeyedBy<>.== infix(_:_:)()
{
  swift_getAssociatedTypeWitness();

  return sub_1AB4603F4();
}

uint64_t _CodeByKind_KeyedBy<>.hash(into:)()
{
  swift_getAssociatedTypeWitness();

  return sub_1AB4603E4();
}

uint64_t _CodeByKind_KeyedBy<>.hashValue.getter()
{
  sub_1AB4620A4();
  swift_getAssociatedTypeWitness();
  sub_1AB4603E4();
  return sub_1AB462104();
}

uint64_t sub_1AB43D580()
{
  sub_1AB4620A4();
  _CodeByKind_KeyedBy<>.hash(into:)();
  return sub_1AB462104();
}

uint64_t sub_1AB43D624()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB43D678(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D340);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB43DD14();
  sub_1AB462274();
  v13 = 0;
  sub_1AB461BB4();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F98);
    sub_1AB3FA5C0(&qword_1EB4323E0);
    sub_1AB461BF4();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1AB43D840()
{
  result = sub_1AB0B22E0(MEMORY[0x1E69E7CC0]);
  qword_1EB46BDE0 = 0xD000000000000011;
  *algn_1EB46BDE8 = 0x80000001AB50F420;
  qword_1EB46BDF0 = result;
  return result;
}

uint64_t sub_1AB43D890()
{
  if (*v0)
  {
    return 0x73726564616568;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1AB43D8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1AB461DA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73726564616568 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AB461DA4();

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

uint64_t sub_1AB43D9A0(uint64_t a1)
{
  v2 = sub_1AB43DD14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB43D9DC(uint64_t a1)
{
  v2 = sub_1AB43DD14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB43DA18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AB43DAEC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1AB43DA68(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1AB461DA4() & 1) == 0)
  {
    return 0;
  }

  return sub_1AB173000(v2, v3);
}

uint64_t sub_1AB43DAEC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D338);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB43DD14();
  sub_1AB462224();
  if (!v1)
  {
    v9[31] = 0;
    v7 = sub_1AB461A84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F98);
    v9[15] = 1;
    sub_1AB3FA5C0(&qword_1EB43CF10);
    sub_1AB461AC4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_1AB43DD14()
{
  result = qword_1EB432A78;
  if (!qword_1EB432A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432A78);
  }

  return result;
}

unint64_t sub_1AB43DD7C()
{
  result = qword_1EB43D348;
  if (!qword_1EB43D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D348);
  }

  return result;
}

unint64_t sub_1AB43DDD4()
{
  result = qword_1EB432A68;
  if (!qword_1EB432A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432A68);
  }

  return result;
}

unint64_t sub_1AB43DE2C()
{
  result = qword_1EB432A70;
  if (!qword_1EB432A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432A70);
  }

  return result;
}

id FamilyInfoLookupBagContract.__allocating_init(_:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *a1;
  *&v3[OBJC_IVAR____TtC9JetEngine27FamilyInfoLookupBagContract_backing] = v4;
  *&v3[OBJC_IVAR____TtC9JetEngine14URLBagContract_backing] = v4;
  v5 = type metadata accessor for MescalBagContract();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing] = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  swift_unknownObjectRetain_n();
  *&v3[OBJC_IVAR____TtC9JetEngine14URLBagContract_mescalContract] = objc_msgSendSuper2(&v9, sel_init);
  v8.receiver = v3;
  v8.super_class = type metadata accessor for URLBagContract();
  return objc_msgSendSuper2(&v8, sel_init);
}

id FamilyInfoLookupBagContract.init(_:)(uint64_t *a1)
{
  v2 = *a1;
  *&v1[OBJC_IVAR____TtC9JetEngine27FamilyInfoLookupBagContract_backing] = *a1;
  *&v1[OBJC_IVAR____TtC9JetEngine14URLBagContract_backing] = v2;
  v3 = type metadata accessor for MescalBagContract();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  swift_unknownObjectRetain_n();
  *&v1[OBJC_IVAR____TtC9JetEngine14URLBagContract_mescalContract] = objc_msgSendSuper2(&v7, sel_init);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for URLBagContract();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1AB43E088()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine27FamilyInfoLookupBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 URLForKey_];

  return v3;
}

id FamilyInfoLookupBagContract.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyInfoLookupBagContract();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AB43E1C0@<X0>(void (*a1)(_OWORD *)@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AB014A58(v2, v8, &qword_1EB43D3C0);
  if (v10)
  {
    *a2 = *&v8[0];
    *(a2 + 40) = 1;
  }

  else
  {
    v6[0] = v8[0];
    v6[1] = v8[1];
    v7 = v9;
    a1(v6);
    result = sub_1AB066D84(v6);
    *(a2 + 40) = 0;
  }

  return result;
}

uint64_t sub_1AB43E270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a1;
  v46 = a2;
  v47 = a4;
  v45 = a5;
  v52 = *MEMORY[0x1E69E9840];
  v6 = sub_1AB45FBC4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41[1] = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB45FBE4();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v41[0] = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v41 - v11;
  v13 = sub_1AB45F764();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v48 = v41 - v18;
  v19 = sub_1AB45F3E4();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB45F3D4();
  sub_1AB45F3C4();

  MEMORY[0x1AC59A690](v46, a3);
  sub_1AB45F384();
  MEMORY[0x1AC59A6B0](0x6E6576652F31762FLL, 0xEA00000000007374);
  sub_1AB45F314();
  sub_1AB45F334();
  v23 = v14;
  v24 = *(v14 + 48);
  v25 = v13;
  if (v24(v12, 1, v13) == 1)
  {
    sub_1AB014AC0(v12, &unk_1EB4395B0);
    sub_1AB45FBB4();
    sub_1AB01B220(MEMORY[0x1E69E7CC0]);
    sub_1AB43FBAC(&qword_1EB43B568, MEMORY[0x1E6969C20]);
    v26 = v41[0];
    v27 = v43;
    sub_1AB45F574();
    sub_1AB45FBD4();
    (*(v42 + 8))(v26, v27);
    swift_willThrow();
    return (*(v20 + 8))(v22, v19);
  }

  else
  {
    v47 = v19;
    v29 = v23;
    v30 = *(v23 + 32);
    v31 = v48;
    v30(v48, v12, v25);
    (*(v29 + 16))(v16, v31, v25);
    v32 = v45;
    sub_1AB45F064();
    sub_1AB45EFF4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D3C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D4720;
    *(inited + 32) = 0x73746E657665;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = sub_1AB43F8E8(v44);
    v34 = sub_1AB1DB49C(inited);
    swift_setDeallocating();
    sub_1AB014AC0(inited + 32, &qword_1EB43D3D0);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D3D8);
    v50[0] = v34;
    sub_1AB45F094();
    v35 = objc_opt_self();
    v49 = *__swift_project_boxed_opaque_existential_1Tm(v50, v51);

    v36 = sub_1AB461F94();
    v49 = 0;
    v37 = [v35 dataWithJSONObject:v36 options:0 error:&v49];
    swift_unknownObjectRelease();
    v38 = v49;
    if (v37)
    {
      sub_1AB45F854();

      sub_1AB45F084();
    }

    else
    {
      v39 = v38;
      sub_1AB45F594();

      swift_willThrow();
      v40 = sub_1AB45F0A4();
      (*(*(v40 - 8) + 8))(v32, v40);
    }

    (*(v29 + 8))(v48, v25);
    (*(v20 + 8))(v22, v47);
    return __swift_destroy_boxed_opaque_existential_1Tm(v50);
  }
}

void sub_1AB43E94C(uint64_t a1, uint64_t a2, void (*a3)(void *), void (*a4)(void *), uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v39 = a8;
  v40 = a6;
  v41 = a7;
  v42 = a3;
  v37 = a2;
  v38 = a5;
  v43 = a4;
  v35 = a1;
  v9 = sub_1AB45EFB4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1AB45EFC4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AB45F0A4();
  v36 = *(v14 - 8);
  v15 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v20 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v20[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v20 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    goto LABEL_14;
  }

  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  if (qword_1EB4358F0 != -1)
  {
    swift_once();
  }

  v22 = sub_1AB026D00(qword_1EB46C2C0, *algn_1EB46C2C8);
  if (v22 != 2 && (v22 & 1) != 0)
  {
    sub_1AB43E270(v39, v38, v40, v41, v19);
    v41 = a9;
    v24 = sub_1AB45F024();
    v25 = v36;
    (*(v36 + 16))(v16, v19, v14);
    v26 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v27 = (v15 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    (*(v25 + 32))(v28 + v26, v16, v14);
    v29 = (v28 + v27);
    v30 = v37;
    *v29 = v35;
    v29[1] = v30;
    v31 = (v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8));
    v32 = v43;
    *v31 = v42;
    v31[1] = v32;
    aBlock[4] = sub_1AB43FAB8;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AB373C48;
    aBlock[3] = &block_descriptor_49;
    v33 = _Block_copy(aBlock);

    v34 = [v41 dataTaskWithRequest:v24 completionHandler:v33];
    _Block_release(v33);

    [v34 resume];
    (*(v25 + 8))(v19, v14);
    return;
  }

LABEL_14:
  sub_1AB45EF94();
  sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  sub_1AB43FBAC(&qword_1EB438F78, MEMORY[0x1E6967E98]);
  sub_1AB45F574();
  v23 = sub_1AB45EF64();
  (*(v11 + 8))(v13, v10);
  v42(v23);
}

uint64_t sub_1AB43EE4C(uint64_t a1, unint64_t a2, int a3, id a4, int a5, void (*a6)(_OWORD *), int a7, void (*a8)(void), uint64_t a9)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2 >> 60 != 15)
  {
    sub_1AB017200(a1, a2);
    if (qword_1EB4356D0 != -1)
    {
      swift_once();
    }

    if (sub_1AB0672FC(qword_1EB46C2A0, *algn_1EB46C2A8, a1, a2))
    {
      v14 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
      v15 = qword_1ED4D1BA0;
    }

    else
    {
      if (qword_1EB4356D8 != -1)
      {
        swift_once();
      }

      if ((sub_1AB0672FC(qword_1EB46C248, unk_1EB46C250, a1, a2) & 1) == 0)
      {
        v18 = objc_opt_self();
        v19 = sub_1AB45F834();
        *&v24[0] = 0;
        v20 = [v18 JSONObjectWithData:v19 options:4 error:v24];

        v21 = *&v24[0];
        if (!v20)
        {
          v22 = v21;
          v23 = sub_1AB45F594();

          swift_willThrow();
          v11 = sub_1AB03BD58(a1, a2);
          *&v26 = v23;
          v29 = 1;
          goto LABEL_14;
        }

        sub_1AB461494();
        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      v14 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
      v15 = &qword_1ED4D0BE0;
    }

    *(&v27 + 1) = sub_1AB016760(0, v15);
    *&v26 = v14;
LABEL_13:
    sub_1AB014B78(&v26, v30);
    sub_1AB0165C4(v30, v24);
    *(&v27 + 1) = &type metadata for FoundationValue;
    v28 = &off_1F1FFB5A8;
    *&v26 = swift_allocObject();
    sub_1AB014B78(v24, (v26 + 16));
    sub_1AB03BD58(a1, a2);
    v11 = __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v29 = 0;
    goto LABEL_14;
  }

  if (!a4)
  {
    result = sub_1AB461884();
    __break(1u);
    return result;
  }

  *&v26 = a4;
  v29 = 1;
  v11 = a4;
LABEL_14:
  MEMORY[0x1EEE9AC00](v11);
  sub_1AB43E1C0(sub_1AB43FB90, v30);
  sub_1AB014AC0(&v26, &qword_1EB43D3C0);
  sub_1AB014A58(v30, &v26, &qword_1EB43D3C0);
  if (v29)
  {
    v16 = v26;
    a8(v26);
  }

  else
  {
    v24[0] = v26;
    v24[1] = v27;
    v25 = v28;
    a6(v24);
    sub_1AB066D84(v24);
  }

  return sub_1AB014AC0(v30, &qword_1EB43D3C0);
}

uint64_t sub_1AB43F24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AB45FBC4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AB45FBE4();
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  v36 = a1;
  JSONObject.subscript.getter(27503, 0xE200000000000000, v41);
  sub_1AB014A58(v41, &v38, &qword_1EB436BA0);
  v12 = v39;
  if (v39)
  {
    v13 = v40;
    __swift_project_boxed_opaque_existential_1Tm(&v38, v39);
    v14 = (*(v13 + 88))(v12, v13);
    sub_1AB066D84(v41);
    __swift_destroy_boxed_opaque_existential_1Tm(&v38);
    if (v14 != 2 && (v14 & 1) != 0)
    {
      return sub_1AB0B9254(v36, a2);
    }
  }

  else
  {
    sub_1AB066D84(v41);
    sub_1AB014AC0(&v38, &qword_1EB436BA0);
  }

  v43 = MEMORY[0x1E69E7CC8];
  v16 = sub_1AB460544();
  v18 = v17;
  sub_1AB45F074();
  v19 = sub_1AB45F764();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v11, 1, v19) == 1)
  {
    sub_1AB014AC0(v11, &unk_1EB4395B0);
    sub_1AB09AE18(v16, v18, v41);

    sub_1AB014AC0(v41, &unk_1EB437E60);
  }

  else
  {
    v42 = v19;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v41);
    (*(v20 + 32))(boxed_opaque_existential_0, v11, v19);
    sub_1AB014B78(v41, &v38);
    v22 = v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v22;
    sub_1AB01AE18(&v38, v16, v18, isUniquelyReferenced_nonNull_native);

    v43 = v37;
  }

  v24 = sub_1AB460544();
  v26 = v25;
  JSONObject.subscript.getter(0x726F727265, 0xE500000000000000, v41);
  sub_1AB014A58(v41, &v38, &qword_1EB436BA0);
  v27 = v39;
  if (!v39)
  {
    sub_1AB066D84(v41);
    sub_1AB014AC0(&v38, &qword_1EB436BA0);
    goto LABEL_13;
  }

  v28 = v40;
  __swift_project_boxed_opaque_existential_1Tm(&v38, v39);
  v29 = (*(v28 + 24))(v27, v28);
  v31 = v30;
  sub_1AB066D84(v41);
  __swift_destroy_boxed_opaque_existential_1Tm(&v38);
  if (!v31)
  {
LABEL_13:
    sub_1AB09AE18(v24, v26, v41);

    sub_1AB014AC0(v41, &unk_1EB437E60);
    goto LABEL_14;
  }

  v39 = MEMORY[0x1E69E6158];
  *&v38 = v29;
  *(&v38 + 1) = v31;
  sub_1AB014B78(&v38, v41);
  v32 = v43;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v37 = v32;
  sub_1AB01AE18(v41, v24, v26, v33);

  v43 = v37;
LABEL_14:
  sub_1AB45FB84();
  sub_1AB43FBAC(&qword_1EB43B568, MEMORY[0x1E6969C20]);
  sub_1AB45F574();
  sub_1AB45FBD4();
  (*(v35 + 8))(v8, v6);
  return swift_willThrow();
}

uint64_t sub_1AB43F790()
{
  v1 = *(v0 + 16);
  sub_1AB4620A4();
  sub_1AB460684();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t sub_1AB43F7F4()
{
  v1 = *(v0 + 16);
  sub_1AB460684();
  return MEMORY[0x1AC59D3F0](v1);
}

uint64_t sub_1AB43F82C()
{
  v1 = *(v0 + 16);
  sub_1AB4620A4();
  sub_1AB460684();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

BOOL sub_1AB43F88C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1AB461DA4();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1AB43F8E8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D3E0);
  result = sub_1AB461904();
  v3 = 0;
  v27 = result;
  v28 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v26 = result + 64;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v29 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = *(v28 + 56);
      v16 = (*(v28 + 48) + 16 * v14);
      v17 = v16[1];
      v33 = *v16;
      sub_1AB01494C(v15 + 40 * v14, v30);
      v18 = v31;
      v19 = v32;
      __swift_project_boxed_opaque_existential_1Tm(v30, v31);
      v20 = *(v19 + 16);

      v21 = v20(v18, v19);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      result = v27;
      *(v26 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v22 = (v27[6] + 16 * v14);
      *v22 = v33;
      v22[1] = v17;
      *(v27[7] + 8 * v14) = v21;
      v23 = v27[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v27[2] = v25;
      v9 = v29;
      if (!v29)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB43FAB8(uint64_t a1, unint64_t a2, int a3, void *a4)
{
  v9 = *(sub_1AB45F0A4() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1AB43EE4C(a1, a2, a3, a4, v4 + v10, *(v4 + v11), *(v4 + v11 + 8), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1AB43FBAC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1AB43FC08()
{
  result = qword_1EB43D3E8;
  if (!qword_1EB43D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D3E8);
  }

  return result;
}

uint64_t sub_1AB43FC5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BCA0);
  v1 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = 0;
  v6[4] = sub_1AB43FE40;
  v6[5] = v1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1AB09C234;
  v6[3] = &block_descriptor_50;
  v4 = _Block_copy(v6);

  [v0 createSnapshotWithCompletion_];
  _Block_release(v4);
  return v1;
}

void sub_1AB43FD78(void *a1, id a2, uint64_t a3)
{
  if (a1)
  {
    v7 = a1;
    sub_1AB43FE88(v7, a3);
    v4 = v7;

LABEL_4:

    return;
  }

  if (a2)
  {
    v6 = a2;
    sub_1AB2A8A1C(a2);
    v4 = a2;

    goto LABEL_4;
  }

  sub_1AB461884();
  __break(1u);
}

void sub_1AB43FE88(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(a2 + 32) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(a2 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 24);
    *(a2 + 24) = a1;
    *(a2 + 32) = 1;
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v3 + 4);
    v14 = v4;
    v5 = v4[2];
    if (v5)
    {
      v6 = (v4 + 4);
      do
      {
        sub_1AB08F8AC(v6, v22);
        sub_1AB08F8AC(v22, v19);
        v7 = v19[0];
        if (v21)
        {
          **(*(v19[0] + 64) + 40) = a1;
          swift_unknownObjectRetain();
          swift_continuation_throwingResume();
          sub_1AB08F91C(v22);
        }

        else
        {
          v8 = v19[1];

          sub_1AB0149B0(&v20, v16);
          v10 = v17;
          v9 = v18;
          __swift_project_boxed_opaque_existential_1Tm(v16, v17);
          v11 = swift_allocObject();
          v11[2] = v7;
          v11[3] = v8;
          v11[4] = a1;
          v12 = *(v9 + 8);
          v13 = a1;

          v12(sub_1AB017C84, v11, v10, v9);

          sub_1AB08F91C(v22);
          __swift_destroy_boxed_opaque_existential_1Tm(v16);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1AB08F984(v14, 0);
  }
}

uint64_t JetpackSignerError.hashValue.getter()
{
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](0);
  return sub_1AB462104();
}

unint64_t sub_1AB44013C()
{
  result = qword_1EB43D3F0;
  if (!qword_1EB43D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D3F0);
  }

  return result;
}

uint64_t sub_1AB4401B0@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 9)
  {
    result = sub_1AB461884();
    __break(1u);
  }

  else
  {
    *a2 = byte_1AB4FB4BA[result];
  }

  return result;
}

uint64_t JSTypedArray.ElementType.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

JetEngine::JSTypedArray_optional __swiftcall JSTypedArray.init(_:)(JSValue a1)
{
  isa = a1.super.isa;
  v3 = v1;
  TypedArrayType = [(objc_class *)a1.super.isa context];
  if (TypedArrayType)
  {
    v6 = TypedArrayType;
    v7 = [TypedArrayType JSGlobalContextRef];

    TypedArrayType = JSValueGetTypedArrayType(v7, [(objc_class *)isa JSValueRef], 0);
    if (TypedArrayType == 9 || TypedArrayType == 10)
    {

      isa = 0;
    }

    *v3 = isa;
  }

  else
  {
    __break(1u);
  }

  result.value.value.super.isa = TypedArrayType;
  result.is_nil = v5;
  return result;
}

JetEngine::JSTypedArray __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSTypedArray.init(count:elementType:in:)(Swift::Int count, JetEngine::JSTypedArray::ElementType elementType, JSContext in)
{
  v5 = v3;
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = *elementType;
  v18[0] = 0;
  TypedArray = JSObjectMakeTypedArray([(objc_class *)in.super.isa JSGlobalContextRef], dword_1AB4FB510[v6], count, v18);
  if (TypedArray)
  {
    result.value.super.isa = [objc_opt_self() valueWithJSValueRef:TypedArray inContext:in.super.isa];
    if (result.value.super.isa)
    {
      isa = result.value.super.isa;

      *v5 = isa;
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  v10 = v18[0];
  sub_1AB0C3EF0();
  swift_allocError();
  v12 = v11;
  result.value.super.isa = [objc_opt_self() valueWithJSValueRef:v10 inContext:in.super.isa];
  if (!result.value.super.isa)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v13 = result.value.super.isa;
  v14 = [(objc_class *)in.super.isa exceptionHandler];
  if (v14)
  {
    v15 = v14[2];
    v16 = v14;
    v17 = v13;
    v15(v16, in.super.isa, v17);
    _Block_release(v16);
  }

  JSError.init(_:)(v13, v12);
  swift_willThrow();

  return result;
}

void JSTypedArray.init(bytesNoCopy:count:deallocator:elementType:in:)(void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, void *a6@<X5>, void *a7@<X8>)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v13 = *a5;
  type metadata accessor for JSBytesDeallocatorHolder();
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v27[0] = 0;

  TypedArrayWithBytesNoCopy = JSObjectMakeTypedArrayWithBytesNoCopy([a6 JSGlobalContextRef], dword_1AB4FB510[v13], a1, a2, sub_1AB30B9C8, v14, v27);
  if (TypedArrayWithBytesNoCopy)
  {
    v16 = [objc_opt_self() valueWithJSValueRef:TypedArrayWithBytesNoCopy inContext:a6];
    if (v16)
    {
      v17 = v16;

      *a7 = v17;
      return;
    }

    __break(1u);
    goto LABEL_9;
  }

  v18 = v27[0];
  sub_1AB0C3EF0();
  swift_allocError();
  v20 = v19;
  v21 = [objc_opt_self() valueWithJSValueRef:v18 inContext:a6];
  if (!v21)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = [a6 exceptionHandler];
  if (v23)
  {
    v24 = v23[2];
    v25 = v23;
    v26 = v22;
    v24(v25, a6, v26);
    _Block_release(v25);
  }

  JSError.init(_:)(v22, v20);
  swift_willThrow();
}

void JSTypedArray.init(data:elementType:in:)(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  exception[1] = *MEMORY[0x1E69E9840];
  v9 = *a3;
  v10 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v10 != 2)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v11 = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
    }

    v11 = HIDWORD(a1) - a1;
  }

LABEL_11:
  v14 = swift_slowAlloc();
  sub_1AB45F8B4();
  type metadata accessor for JSBytesDeallocatorHolder();
  v15 = swift_allocObject();
  v15[2] = sub_1AB3D2AD8;
  v15[3] = 0;
  exception[0] = 0;
  TypedArrayWithBytesNoCopy = JSObjectMakeTypedArrayWithBytesNoCopy([a4 JSGlobalContextRef], dword_1AB4FB510[v9], v14, v11, sub_1AB30B9C8, v15, exception);
  if (TypedArrayWithBytesNoCopy)
  {
    v17 = [objc_opt_self() valueWithJSValueRef:TypedArrayWithBytesNoCopy inContext:a4];
    if (v17)
    {
      v18 = v17;
      sub_1AB017254(a1, a2);

      *a5 = v18;
      return;
    }

    __break(1u);
    goto LABEL_20;
  }

  v19 = exception[0];
  sub_1AB0C3EF0();
  swift_allocError();
  v21 = v20;
  v22 = [objc_opt_self() valueWithJSValueRef:v19 inContext:a4];
  if (!v22)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = [a4 exceptionHandler];
  if (v24)
  {
    v25 = v21;
    v26 = v24[2];
    v27 = v24;
    v28 = v23;
    v26(v27, a4, v28);
    v21 = v25;
    _Block_release(v27);
  }

  JSError.init(_:)(v23, v21);
  swift_willThrow();
  sub_1AB017254(a1, a2);
}

JetEngine::JSTypedArray __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSTypedArray.init(buffer:elementType:in:)(JetEngine::JSArrayBuffer buffer, JetEngine::JSTypedArray::ElementType elementType, JSContext in)
{
  v5 = v3;
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = *buffer.value.super.isa;
  v7 = *elementType;
  v19[0] = 0;
  TypedArrayWithArrayBuffer = JSObjectMakeTypedArrayWithArrayBuffer(-[objc_class JSGlobalContextRef](in.super.isa, sel_JSGlobalContextRef), dword_1AB4FB510[v7], [v6 JSValueRef], v19);
  if (TypedArrayWithArrayBuffer)
  {
    result.value.super.isa = [objc_opt_self() valueWithJSValueRef:TypedArrayWithArrayBuffer inContext:in.super.isa];
    if (result.value.super.isa)
    {
      isa = result.value.super.isa;

      *v5 = isa;
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  v11 = v19[0];
  sub_1AB0C3EF0();
  swift_allocError();
  v13 = v12;
  result.value.super.isa = [objc_opt_self() valueWithJSValueRef:v11 inContext:in.super.isa];
  if (!result.value.super.isa)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v14 = result.value.super.isa;
  v15 = [(objc_class *)in.super.isa exceptionHandler];
  if (v15)
  {
    v16 = v15[2];
    v17 = v15;
    v18 = v14;
    v16(v17, in.super.isa, v18);
    _Block_release(v17);
  }

  JSError.init(_:)(v14, v13);
  swift_willThrow();

  return result;
}

void JSTypedArray.init(buffer:range:elementType:in:)(id a1@<X4>, void **a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, char *a5@<X3>, void *a6@<X8>)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = *a5;
  v8 = qword_1AB4FB4C8[v7];
  v9 = a3 * v8;
  if ((a3 * v8) >> 64 != (a3 * v8) >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  if (__OFADD__(v10, 1))
  {
    goto LABEL_13;
  }

  v12 = *a2;
  v25[0] = 0;
  TypedArrayWithArrayBufferAndOffset = JSObjectMakeTypedArrayWithArrayBufferAndOffset([a1 JSGlobalContextRef], dword_1AB4FB510[v7], objc_msgSend(v12, sel_JSValueRef), v9, v10 + 1, v25);
  if (TypedArrayWithArrayBufferAndOffset)
  {
    v14 = [objc_opt_self() valueWithJSValueRef:TypedArrayWithArrayBufferAndOffset inContext:a1];
    if (v14)
    {
      v15 = v14;

      *a6 = v15;
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  v16 = v25[0];
  sub_1AB0C3EF0();
  swift_allocError();
  v18 = v17;
  v19 = [objc_opt_self() valueWithJSValueRef:v16 inContext:a1];
  if (!v19)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [a1 exceptionHandler];
  if (v21)
  {
    v22 = v21[2];
    v23 = v21;
    v24 = v20;
    v22(v23, a1, v24);
    _Block_release(v23);
  }

  JSError.init(_:)(v20, v18);
  swift_willThrow();
}

id JSTypedArray.count.getter()
{
  v1 = *v0;
  result = [*v0 context];
  if (result)
  {
    v3 = result;
    v4 = [result JSGlobalContextRef];

    v5 = [v1 JSValueRef];

    return JSObjectGetTypedArrayLength(v4, v5, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id JSTypedArray.elementType.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = [v3 context];
  if (result)
  {
    v5 = result;
    v6 = [result JSGlobalContextRef];

    TypedArrayType = JSValueGetTypedArrayType(v6, [v3 JSValueRef], 0);

    return sub_1AB4401B0(TypedArrayType, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id JSTypedArray.data.getter()
{
  v1 = *v0;
  result = [*v0 context];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  v4 = [result JSGlobalContextRef];

  result = JSObjectGetTypedArrayBytesPtr(v4, [v1 JSValueRef], 0);
  if (result)
  {
    v5 = result;
    result = [v1 context];
    if (result)
    {
      v6 = result;
      v7 = [result JSGlobalContextRef];

      TypedArrayByteOffset = JSObjectGetTypedArrayByteOffset(v7, [v1 JSValueRef], 0);
      result = [v1 context];
      if (result)
      {
        v9 = result;
        v10 = [result JSGlobalContextRef];

        TypedArrayByteLength = JSObjectGetTypedArrayByteLength(v10, [v1 JSValueRef], 0);
        return sub_1AB05AF50(&v5[TypedArrayByteOffset], TypedArrayByteLength);
      }

      goto LABEL_9;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t JSTypedArray.description.getter()
{
  v1 = [*v0 description];
  v2 = sub_1AB460544();

  return v2;
}

unint64_t sub_1AB4410B0()
{
  result = qword_1EB43D3F8;
  if (!qword_1EB43D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D3F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSTypedArray.ElementType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JSTypedArray.ElementType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1AB441264()
{
  result = sub_1AB460514();
  qword_1ED4CFF20 = result;
  return result;
}

void *BagLanguageSource.init(bag:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = sub_1AB2AE014;
  *(a2 + 32) = 0;
  return result;
}

void *BagLanguageSource.init(bag:timeout:defaultLanguages:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = *result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_1AB4412D8()
{
  *(v1 + 1896) = v0;
  if (v0)
  {
    v2 = sub_1AB441844;
  }

  else
  {
    v2 = sub_1AB44130C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB44130C()
{
  v1 = v0[236];
  v2 = v0[205];
  v3 = v0[206];
  v0[238] = v3;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  return MEMORY[0x1EEE6DEC0](v0 + 82, v0 + 207, sub_1AB441388, v0 + 216);
}

uint64_t sub_1AB441388()
{
  *(v1 + 1912) = v0;
  if (v0)
  {
    v2 = sub_1AB441908;
  }

  else
  {
    v2 = sub_1AB4413BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB4413BC()
{
  v1 = *(v0 + 1888);
  v2 = *(v0 + 1664);
  *(v1 + 48) = *(v0 + 1656);
  *(v1 + 56) = v2;

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = (*(v0 + 1888) + 16 * v3 + 40);
  while (++v3 != 3)
  {
    v6 = v5 + 2;
    v7 = *v5;
    v5 += 2;
    if (v7)
    {
      v8 = *(v6 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1AB020904(0, *(v4 + 16) + 1, 1, v4);
      }

      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_1AB020904((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  if (!*(v4 + 16))
  {

    v13 = (*(v0 + 1424))(v12);
    if (v13)
    {
      v4 = v13;
    }

    else
    {
      v14 = *(v0 + 1816);
      v15 = *(v0 + 1768);
      v16 = *(v0 + 1720);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1AB4D4720;
      sub_1AB45FA54();
      v17 = sub_1AB45FA04();
      v19 = v18;
      (*(v15 + 8))(v14, v16);
      *(v4 + 32) = v17;
      *(v4 + 40) = v19;
    }
  }

  *(v0 + 1920) = v4;

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1656, sub_1AB4415A8, v0 + 1776);
}

uint64_t sub_1AB441600()
{
  v1 = *(v0 + 1920);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1AB4416E4()
{
  v1 = *(v0 + 1936);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1AB4417C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB441844()
{
  v1 = *(v0 + 1896);
  *(v0 + 1928) = v1;
  *(*(v0 + 1888) + 16) = 0;

  v3 = (*(v0 + 1424))(v2);
  *(v0 + 1936) = v3;
  if (v3)
  {

    v4 = sub_1AB44168C;
    v5 = v0 + 656;
    v6 = v0 + 1656;
    v7 = v0 + 1600;
  }

  else
  {
    swift_willThrow();
    v4 = sub_1AB441770;
    v5 = v0 + 656;
    v6 = v0 + 1656;
    v7 = v0 + 1440;
  }

  return MEMORY[0x1EEE6DEB0](v5, v6, v4, v7);
}

uint64_t sub_1AB441908()
{

  v1 = *(v0 + 1912);
  *(v0 + 1928) = v1;
  *(*(v0 + 1888) + 16) = 0;

  v3 = (*(v0 + 1424))(v2);
  *(v0 + 1936) = v3;
  if (v3)
  {

    v4 = sub_1AB44168C;
    v5 = v0 + 656;
    v6 = v0 + 1656;
    v7 = v0 + 1600;
  }

  else
  {
    swift_willThrow();
    v4 = sub_1AB441770;
    v5 = v0 + 656;
    v6 = v0 + 1656;
    v7 = v0 + 1440;
  }

  return MEMORY[0x1EEE6DEB0](v5, v6, v4, v7);
}

uint64_t sub_1AB4419D4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 96) = v2;

  if (v2)
  {
    swift_unknownObjectRelease();

    return MEMORY[0x1EEE6DFA0](sub_1AB4425CC, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_1AB441B34()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB441CEC;
  }

  else
  {

    *(v1 + 248) = *(v1 + 184);
    v3 = sub_1AB441C60;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB441C60()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = sub_1AB460544();
  v5 = v4;

  v6 = v0[1];

  return v6(v3, v5);
}

uint64_t sub_1AB441CEC()
{

  swift_getErrorValue();
  v1 = sub_1AB044DF8(v0[21]);
  v2 = v0[30];
  v3 = v0[28];
  if (v1)
  {

    v4 = v0[1];

    return v4(0, 0);
  }

  else
  {
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1AB441DD4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1AB441F10()
{
  v1 = *(v0 + 80);
  v2 = v1[4];
  v3 = *(v1 + 1);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = *v1;
  *(v0 + 56) = v4;
  *(v0 + 64) = v4;
  sub_1AB0A08EC(v0 + 56, v0 + 72);
  if (qword_1ED4CFF18 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 80);
  v6 = qword_1ED4CFF20;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_1AB442034;

  return sub_1AB0A790C((v0 + 64), v6, v7, v8);
}

uint64_t sub_1AB442034(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 96) = v2;

  if (v2)
  {
    swift_unknownObjectRelease();

    return MEMORY[0x1EEE6DFA0](sub_1AB20E038, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_1AB442194()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1AB0AFC48;

  return sub_1AB441EF0(v0 + 16);
}

uint64_t sub_1AB442228(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027460;

  return sub_1AB0A77C4(a1, v4);
}

uint64_t BagLanguageSource.locale(forLanguage:)@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v19 = sub_1AB45FAB4();
  v1 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1AB45FB14();
  v4 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AB45FAA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;

  sub_1AB45F9F4();
  sub_1AB45FAF4();
  v22 = 0;
  v23 = 0xE000000000000000;
  v14 = sub_1AB45FA04();
  MEMORY[0x1AC59BA20](v14);

  MEMORY[0x1AC59BA20](0x61646E656C616340, 0xEA00000000003D72);
  sub_1AB45FAC4();
  v15 = v19;
  sub_1AB461824();
  (*(v1 + 8))(v3, v15);
  sub_1AB45F9F4();
  (*(v4 + 8))(v6, v20);
  v16 = *(v8 + 8);
  v16(v10, v7);
  sub_1AB0AA6C8(v13, v21);
  return (v16)(v13, v7);
}

uint64_t dispatch thunk of IntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AB027460;

  return v13(a1, a2, a3, a4, a5);
}

id AllowedFieldValuesTreatmentAction.__allocating_init(field:configuration:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1AB460514();
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_allocWithZone(v2);
  v5 = sub_1AB4602D4();

  v6 = [v4 initWithField:v3 configuration:v5];

  return v6;
}

id AllowedFieldValuesTreatmentAction.init(field:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  strcpy(v16, "allowedValues");
  HIWORD(v16[1]) = -4864;
  sub_1AB461564();
  if (!*(a3 + 16) || (v8 = sub_1AB02B1D8(v17), (v9 & 1) == 0))
  {

    sub_1AB02B2E4(v17);
LABEL_7:
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_1AB0165C4(*(a3 + 56) + 32 * v8, v18);
  sub_1AB02B2E4(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D408);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_7;
  }

  v10 = sub_1AB1BF2A8(v16[0]);

  *&v4[OBJC_IVAR____TtC9JetEngine33AllowedFieldValuesTreatmentAction_allowList] = v10;
  if (a2)
  {
    v11 = sub_1AB460514();
  }

  else
  {
    v11 = 0;
  }

  v13 = sub_1AB4602D4();

  v15.receiver = v4;
  v15.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v15, sel_initWithField_configuration_, v11, v13);

  if (v14)
  {

    return v14;
  }

  return 0;
}

uint64_t AllowedFieldValuesTreatmentAction.perform(_:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB01522C(a1, v7);
  if (!v7[3])
  {
    sub_1AB014AC0(v7, &unk_1EB437E60);
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    goto LABEL_8;
  }

  if (!*(&v9 + 1))
  {
LABEL_8:
    result = sub_1AB014AC0(&v8, &qword_1EB43AF78);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v11[0] = v8;
  v11[1] = v9;
  v12 = v10;
  if (sub_1AB15AB10(v11, *(v2 + OBJC_IVAR____TtC9JetEngine33AllowedFieldValuesTreatmentAction_allowList)))
  {
    v4 = swift_allocObject();
    sub_1AB02B4BC(v11, v4 + 16);
    result = sub_1AB02B2E4(v11);
    v6 = MEMORY[0x1E69E69B8];
  }

  else
  {
    result = sub_1AB02B2E4(v11);
    v6 = 0;
    v4 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  *(a2 + 24) = v6;
  *a2 = v4;
  return result;
}

id AllowedFieldValuesTreatmentAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AB442D90(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D1C0);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v12 = sub_1AB442F98;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1AB01D528;
  v11 = &block_descriptor_9_3;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v5);
  v12 = sub_1AB442F9C;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1AB058108;
  v11 = &block_descriptor_12_1;
  v6 = _Block_copy(&v8);

  [a1 addErrorBlock_];

  _Block_release(v6);
  return v2;
}

void sub_1AB442F40()
{
  v1 = *(v0 + 24);
  v2 = sub_1AB45F584();
  [v1 finishWithError_];
}

void sub_1AB442FA0()
{

  sub_1AB033000(&v11, v2);
  v3 = v11;
  v4 = sub_1AB030B7C(&v11);
  if (v1)
  {
    v11.i64[0] = v1;
    v6 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {
      v9 = v10;
      sub_1AB157E60();
      sub_1AB462024();
    }

    else
    {

      v11.i64[0] = 0;
      v11.i64[1] = 0xE000000000000000;
      MEMORY[0x1AC59BA20](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1AB461D64();
    }

    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 16);
    MEMORY[0x1EEE9AC00](v4);
    v7[2] = v0;
    v8 = v3;
    type metadata accessor for ThrowingDependencyCell.ObjectState();
    sub_1AB01A1F0(sub_1AB443E8C, v7, v5);
  }
}

uint64_t sub_1AB4431B0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1AB443200(a1, a2);
  return v4;
}

uint64_t sub_1AB443200(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ThrowingDependencyCell.ObjectState();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v11 - v7);
  *v8 = a1;
  v8[1] = a2;
  swift_storeEnumTagMultiPayload();
  v9 = sub_1AB02FFC0();
  (*(v6 + 8))(v8, v5);
  *(v2 + 16) = v9;
  return v2;
}

uint64_t sub_1AB443304@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a3;
  v53 = a4;
  v8 = *a2;
  v9 = sub_1AB45FF84();
  tv_nsec = *(v9 - 8);
  tv_sec = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v49 - v13;
  v15 = *(v8 + 80);
  v16 = type metadata accessor for ThrowingDependencyCell.ObjectState();
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v49 - v17);
  v20 = *(v19 + 16);
  v54 = a1;
  v20(v18, a1, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(*(v15 - 8) + 32))(a5, v18, v15);
  }

  v56 = v15;
  v22 = v18[1];
  v49[0] = *v18;
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v23 = sub_1AB45FFC4();
  __swift_project_value_buffer(v23, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v24 = sub_1AB45FFA4();
  v25 = sub_1AB461234();
  v26 = sub_1AB461314();
  v49[1] = a5;
  v49[2] = v5;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v55.tv_sec = v28;
    *v27 = 136315138;
    v29 = sub_1AB462314();
    v31 = sub_1AB030D2C(v29, v30, &v55.tv_sec);

    *(v27 + 4) = v31;
    v32 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v24, v25, v32, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1AC59F020](v28, -1, -1);
    MEMORY[0x1AC59F020](v27, -1, -1);
  }

  v34 = tv_nsec;
  v33 = tv_sec;
  (*(tv_nsec + 16))(v12, v14, tv_sec);
  sub_1AB460014();
  swift_allocObject();
  v35 = sub_1AB460004();
  (*(v34 + 8))(v14, v33);
  static MonotonicTime.now.getter(&v55);
  tv_nsec = v55.tv_nsec;
  tv_sec = v55.tv_sec;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v36 = v55.tv_sec;
  started = type metadata accessor for StartUpPerformanceEvent();
  v38 = v56;
  if (v56 == started)
  {
    v41 = 0;
    v40 = 0;
  }

  else
  {
    type metadata accessor for BaseObjectGraph();
    v39 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v55.tv_sec = v39;

    swift_task_localValuePush();
    v40 = sub_1AB01DBA0(*(v39 + 16));
    swift_task_localValuePop();

    if (v40)
    {

      v41 = sub_1AB043384(v38);

      if (v41)
      {

        sub_1AB460164();
      }
    }

    else
    {
      v41 = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 16) = 0;
  v55.tv_sec = v42;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v44 = v49[0];
  v49[-14] = v56;
  v49[-13] = v44;
  v46 = v52;
  v45 = v53;
  v49[-12] = v22;
  v49[-11] = v46;
  v49[-10] = v45;
  v49[-9] = v41;
  v47 = v54;
  v49[-8] = v40;
  v49[-7] = v47;
  v48 = tv_nsec;
  v49[-6] = tv_sec;
  v49[-5] = v48;
  v49[-4] = v35;
  v49[-3] = v43;
  v49[-2] = v36;
  sub_1AB4622F4();
}

void sub_1AB4438E8(uint64_t a1@<X0>, uint64_t a2@<X1>, __darwin_time_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v54 = a8;
  v55 = a6;
  v56 = a7;
  v58 = a5;
  v59.tv_sec = a3;
  v59.tv_nsec = a4;
  v60 = a1;
  v61 = a2;
  v15 = sub_1AB45FFD4();
  v53 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1AB45FF84();
  v57 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1AB460134();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v59;
  v25 = v63;
  sub_1AB032B18(v60, v61, &v62.tv_sec);
  if (!v25)
  {
    v59.tv_nsec = v15;
    v60 = a14;
    v26 = v54;
    v59.tv_sec = v17;
    v63 = v20;
    v61 = 0;
    if (v58)
    {
      (*(v22 + 104))(v24, *MEMORY[0x1E6977AC8], v21);
      sub_1AB460174();
      (*(v22 + 8))(v24, v21);
    }

    v27 = a9;
    v28 = v60;
    if (v55)
    {
      v62.tv_sec = swift_getDynamicType();
      StartUpPerformanceEvent.record(checkpoint:)(&v62.tv_sec);
    }

    v29 = type metadata accessor for ThrowingDependencyCell.ObjectState();
    v30 = v56;
    (*(*(v29 - 8) + 8))(v56, v29);
    (*(*(v28 - 8) + 16))(v30, v27, v28);
    swift_storeEnumTagMultiPayload();
    static MonotonicTime.now.getter(&v62);
    tv_sec = v62.tv_sec;
    tv_nsec = v62.tv_nsec;
    v33 = v18;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v34 = tv_nsec / *&qword_1ED4D1F90 + tv_sec;
    v35 = a10 / *&qword_1ED4D1F90 + v26;
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v36 = v34 - v35;
    v37 = sub_1AB45FFC4();
    __swift_project_value_buffer(v37, qword_1EB46C230);

    v38 = sub_1AB45FFA4();
    v39 = v63;
    sub_1AB45FFF4();
    v40 = sub_1AB461224();

    v41 = sub_1AB461314();
    v42 = v57;
    if (v41)
    {

      v43 = v59.tv_sec;
      sub_1AB460024();

      v44 = v53;
      v45 = v59.tv_nsec;
      if ((*(v53 + 88))(v43, v59.tv_nsec) == *MEMORY[0x1E69E93E8])
      {
        v46 = 0;
        v47 = "[Error] Interval already ended";
      }

      else
      {
        (*(v44 + 8))(v43, v45);
        v47 = "selfTime=%f";
        v46 = 1;
      }

      v48 = swift_slowAlloc();
      *v48 = 0;
      *(v48 + 1) = v46;
      *(v48 + 2) = 2048;
      os_unfair_lock_lock((a12 + 24));
      v49 = *(a12 + 16);
      os_unfair_lock_unlock((a12 + 24));
      *(v48 + 4) = v36 - v49;
      v50 = v63;
      v51 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v38, v40, v51, "MakeDependency", v47, v48, 0xCu);
      v52 = v48;
      v39 = v50;
      MEMORY[0x1AC59F020](v52, -1, -1);
      v42 = v57;
    }

    (*(v42 + 8))(v39, v33);
    os_unfair_lock_lock((a13 + 24));
    *(a13 + 16) = v36 + *(a13 + 16);
    os_unfair_lock_unlock((a13 + 24));
  }
}

void *RunLoopWorkerThread.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[5] = 0;
  v4[6] = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v4[7] = MEMORY[0x1E69E7CC0];
  return v4;
}

Swift::Void __swiftcall RunLoopWorkerThread.PendingTask.cancel()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CFRunLoopTimerInvalidate(Strong);
  }
}

uint64_t sub_1AB443FB4()
{
  result = sub_1AB460514();
  qword_1EB435818 = result;
  return result;
}

id static RunLoopWorkerThread.willStopNotification.getter()
{
  if (qword_1EB4356B8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB435818;

  return v1;
}

void *RunLoopWorkerThread.init(name:)(uint64_t a1, uint64_t a2)
{
  v2[5] = 0;
  v2[6] = 0;
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v2[7] = MEMORY[0x1E69E7CC0];
  return v2;
}

uint64_t RunLoopWorkerThread.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

BOOL sub_1AB4440C0()
{
  v1 = *(v0 + 32);
  [v1 lock];
  v2 = *(v0 + 40) != 0;
  [v1 unlock];
  return v2;
}

id sub_1AB44411C()
{
  v1 = v0[4];
  [v1 lock];
  v2 = v0[5];
  if (v2)
  {
    v3 = v0[6];
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      CFRunLoopSourceInvalidate(v4);
      CFRunLoopStop(v5);

      v6 = v0[6];
      v0[6] = 0;

      v7 = v0[5];
      v0[5] = 0;
    }
  }

  swift_beginAccess();
  v0[7] = MEMORY[0x1E69E7CC0];

  return [v1 unlock];
}

void sub_1AB4441E4(uint64_t a1)
{
  sub_1AB460BA4();
  sub_1AB460B94();
  sub_1AB460AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() defaultCenter];
  v3 = v2;
  if (qword_1EB4356B8 != -1)
  {
    swift_once();
    v2 = v3;
  }

  [v2 postNotificationName:qword_1EB435818 object:a1];
}

void sub_1AB4442F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1AB444364@<X0>(uint64_t (*a1)(id)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v36 = a1;
  v7 = sub_1AB461354();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  v15 = *(v4 + 32);
  [v15 lock];
  v16 = CFRunLoopGetCurrent();
  v33 = v4;
  v34 = v10;
  v17 = *(v4 + 40);
  if (!v16)
  {
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v18 = v16;
  if (!v17)
  {

    goto LABEL_8;
  }

  type metadata accessor for CFRunLoop(0);
  sub_1AB0499A0(&qword_1ED4D13C0, type metadata accessor for CFRunLoop);
  v19 = v17;
  v20 = a2;
  v21 = v19;
  v22 = sub_1AB45FC14();

  a2 = v20;
  if (v22)
  {
LABEL_6:
    v23 = [v15 unlock];
    return v36(v23);
  }

LABEL_8:
  [v15 unlock];
  v25 = dispatch_semaphore_create(0);
  v26 = *(a3 - 8);
  (*(v26 + 56))(v14, 1, 1, a3);
  v27 = sub_1AB02FFC0();
  (*(v8 + 8))(v14, v7);
  v28 = swift_allocObject();
  v28[2] = a3;
  v28[3] = v27;
  v28[4] = v36;
  v28[5] = a2;
  v28[6] = v25;

  v29 = v25;
  sub_1AB0484A4(sub_1AB444B1C, v28);

  v30 = sub_1AB461254();
  MEMORY[0x1EEE9AC00](v30);
  *(&v32 - 2) = a3;
  v31 = v34;
  sub_1AB01A1F0(sub_1AB444B2C, (&v32 - 4), v27);
  result = (*(v26 + 48))(v31, 1, a3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v26 + 32))(v35, v31, a3);
  }

  return result;
}

uint64_t sub_1AB4446EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[2] = a5;
  v7[3] = a2;
  v7[4] = a3;
  sub_1AB461354();
  sub_1AB01A1F0(sub_1AB444D40, v7, a1);
  return sub_1AB461264();
}

uint64_t sub_1AB44476C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_1AB461354();
  v8 = (*(*(v7 - 8) + 8))(a1, v7);
  a2(v8);
  return (*(*(a4 - 8) + 56))(a1, 0, 1, a4);
}

uint64_t sub_1AB444830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Result();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a1;
  v12[4] = a2;

  sub_1AB444364(sub_1AB444BA0, v12, v8, v11);

  Result.unwrap()(v8, a4);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1AB444984()
{
  sub_1AB4615D4();

  MEMORY[0x1AC59BA20](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return 0xD000000000000014;
}

id *RunLoopWorkerThread.deinit()
{

  return v0;
}

uint64_t RunLoopWorkerThread.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1AB444A9C()
{
  v1 = *v0;
  sub_1AB4615D4();

  MEMORY[0x1AC59BA20](*(v1 + 16), *(v1 + 24));
  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t dispatch thunk of RunLoopWorkerThread.scheduleSync<A>(task:)()
{
  return (*(*v0 + 256))();
}

{
  return (*(*v0 + 264))();
}

uint64_t sub_1AB444D70()
{
  sub_1AB4620A4();
  _s9JetEngine15CodeAnyHashableV4hash4intoys6HasherVz_tF_0();
  return sub_1AB462104();
}

uint64_t sub_1AB444DB4()
{
  sub_1AB4620A4();
  _s9JetEngine15CodeAnyHashableV4hash4intoys6HasherVz_tF_0();
  return sub_1AB462104();
}

uint64_t LRUIntentCache.__allocating_init(configuration:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  LRUIntentCache.init(configuration:)(a1);
  return v2;
}

void LRUIntentCache.init(configuration:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1AB4611B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*a1)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D4A0);
    v9 = sub_1AB01561C(&qword_1EB4323E8, &unk_1EB43D4A0);
    *&v15 = v8;
    *(&v15 + 1) = MEMORY[0x1E69E7CC8];
    v18 = v9;
    v16 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D4B0);
    v10 = swift_allocObject();
    *(v10 + 56) = 0;
    sub_1AB0149B0(&v15, v10 + 16);
    *(v2 + 16) = v10;
    sub_1AB348FDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D4C0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AB4D47F0;
    sub_1AB461194();
    sub_1AB4611A4();
    *&v15 = v11;
    sub_1AB349028();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D4D0);
    sub_1AB01561C(&qword_1EB4323C0, &qword_1EB43D4D0);
    sub_1AB4614E4();
    v12 = sub_1AB4611C4();
    (*(v5 + 8))(v7, v4);
    type metadata accessor for DispatchSourceMemoryPressureWrapper();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v2 + 24) = v13;
    swift_unknownObjectRetain();
    sub_1AB4450FC();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AB4450FC()
{
  v11 = sub_1AB4601B4();
  v0 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1AB4601F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1AB446A4C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_53;
  v8 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  j___s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  sub_1AB073BA0();
  sub_1AB4611D4();
  _Block_release(v8);
  swift_unknownObjectRelease();
  (*(v0 + 8))(v2, v11);
  (*(v4 + 8))(v6, v3);

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1AB461214();
  return swift_unknownObjectRelease();
}

uint64_t LRUIntentCache.deinit()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1AB4611E4();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t LRUIntentCache.__deallocating_deinit()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1AB4611E4();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t LRUIntentCache.retrieve<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[35] = a3;
  v4[36] = v3;
  v4[33] = a1;
  v4[34] = a2;
  v5 = sub_1AB461354();
  v4[37] = v5;
  v4[38] = *(v5 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB445544, 0, 0);
}

uint64_t sub_1AB445544()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v2[3];
  v4 = __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  v5 = *(v3 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v3);
  sub_1AB4619A4();
  (*(v5 + 8))(v6, v3);

  v7 = *(v1 + 16);
  *(swift_task_alloc() + 16) = v0 + 20;
  os_unfair_lock_lock(v7 + 14);
  sub_1AB445C44(&v7[4]);
  os_unfair_lock_unlock(v7 + 14);
  v0[41] = v10;

  if (v10)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB445778, 0, 0);
  }

  else
  {
    (*(*(v0[35] - 8) + 56))(v0[33], 1, 1);
    sub_1AB445CB8((v0 + 20));

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1AB445778()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_1AB445834;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB196DD8(v2);
  sub_1AB445CE8(v2);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB445834()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB445BC4;
  }

  else
  {
    sub_1AB014B78((v1 + 232), (v1 + 200));
    v3 = sub_1AB44595C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB44595C()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[35];
  v6 = swift_dynamicCast();
  v7 = *(v5 - 8);
  v20 = *(v7 + 56);
  v20(v2, v6 ^ 1u, 1, v5);
  (*(v4 + 16))(v1, v2, v3);
  v8 = (*(v7 + 48))(v1, 1, v5);
  v9 = v0[40];
  v10 = v0[41];
  v12 = v0[38];
  v11 = v0[39];
  v13 = v0[37];
  v14 = v0[35];
  v15 = v0[33];
  if (v8 == 1)
  {
    v16 = *(v12 + 8);
    v16(v0[39], v0[37]);
    v17 = swift_task_alloc();
    *(v17 + 16) = v14;
    *(v17 + 24) = v10;
    requirementFailure(_:file:line:)(sub_1AB445E60, v17, "JetEngine/LRUIntentCache.swift", 30, 2, 121);

    v20(v15, 1, 1, v14);
    v16(v9, v13);
  }

  else
  {

    (*(v7 + 32))(v15, v11, v14);
    v20(v15, 0, 1, v14);
    (*(v12 + 8))(v9, v13);
  }

  sub_1AB445CB8((v0 + 20));

  v18 = v0[1];

  return v18();
}

uint64_t sub_1AB445BC4()
{

  sub_1AB445CB8(v0 + 160);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB445C44(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 40))(v2, v3, v4);
}

uint64_t sub_1AB445CE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AB445D50()
{
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD00000000000004ELL, 0x80000001AB50F720);
  v0 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](0x6C6175746361202CLL, 0xEF203A6570797420);
  v1 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v1);

  MEMORY[0x1AC59BA20](46, 0xE100000000000000);
  return 0;
}

uint64_t LRUIntentCache.store<A>(_:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v6[17] = *(a5 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB445F24, 0, 0);
}

uint64_t sub_1AB445F24()
{
  v1 = v0[16];
  v2 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D4D8);
  v3 = swift_allocObject();
  v0[19] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = 0;
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 56) = 0;
  v6 = v2[3];
  v7 = __swift_project_boxed_opaque_existential_1Tm(v2, v6);
  v8 = *(v6 - 8);
  v9 = swift_task_alloc();
  (*(v8 + 16))(v9, v7, v6);
  sub_1AB4619A4();
  (*(v8 + 8))(v9, v6);

  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v11 + 16) = v0 + 2;
  *(v11 + 24) = v3;
  os_unfair_lock_lock(v10 + 14);
  sub_1AB4464D8(&v10[4]);
  v12 = v0[13];
  os_unfair_lock_unlock(v10 + 14);

  v16 = (v12 + *v12);
  v13 = swift_task_alloc();
  v0[20] = v13;
  *v13 = v0;
  v13[1] = sub_1AB4461CC;
  v14 = v0[18];

  return v16(v14);
}

uint64_t sub_1AB4461CC()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1AB4463C8;
  }

  else
  {
    v2 = sub_1AB4462E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB4462E0()
{
  v1 = v0[18];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[11];
  v0[10] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
  (*(v2 + 16))(boxed_opaque_existential_0, v1, v3);
  sub_1AB4327E8((v0 + 7));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
  (*(v2 + 32))(v4, v1, v3);
  sub_1AB445CB8((v0 + 2));

  v6 = v0[1];

  return v6();
}

uint64_t sub_1AB4463C8()
{

  sub_1AB445CB8(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB44643C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AB446A14(a2, v10);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v9 = a3;
  v7 = *(v6 + 48);

  return v7(&v9, v10, v5, v6);
}

uint64_t sub_1AB4464F4()
{
  v0 = sub_1AB4611B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1AB461284();
    swift_unknownObjectRelease();
    sub_1AB446624();
    (*(v1 + 8))(v3, v0);
  }

  return result;
}

void sub_1AB446624()
{
  v1 = v0;
  v2 = sub_1AB4611B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB4611A4();
  sub_1AB349028();
  v6 = sub_1AB4614C4();
  v7 = *(v3 + 8);
  v7(v5, v2);
  if (v6 & 1) != 0 || (sub_1AB461194(), v8 = sub_1AB4614C4(), v7(v5, v2), (v8))
  {
    sub_1AB461194();
    v9 = sub_1AB4614C4();
    v7(v5, v2);
    v10 = *(v1 + 16);
    os_unfair_lock_lock((v10 + 56));
    v11 = *(v10 + 40);
    v12 = *(v10 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v10 + 16, v11);
    (*(v12 + 32))(v9 & 1, v11, v12);
    os_unfair_lock_unlock((v10 + 56));
  }
}

uint64_t sub_1AB4467CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AB027554;

  return LRUIntentCache.retrieve<A>(_:)(a1, a2, a3);
}

uint64_t sub_1AB446880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AB027460;

  return LRUIntentCache.store<A>(_:operation:)(a1, a2, a3, a4, a5);
}

unint64_t sub_1AB4469C0()
{
  result = qword_1EB4329C8;
  if (!qword_1EB4329C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4329C8);
  }

  return result;
}

uint64_t _Lazy_KeyedBy.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = a1;
  v3 = sub_1AB4603C4();
  result = sub_1AB039A9C(&v5, v3, &v6);
  *a2 = v6;
  return result;
}

uint64_t _Lazy_KeyedBy.wrappedValue.getter()
{
  sub_1AB4603C4();
  v0 = type metadata accessor for LazyValueWrapper();

  sub_1AB06BB5C(v0);

  return v2;
}

uint64_t sub_1AB446BC8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for _Lazy_KeyedBy();
  result = _Lazy_KeyedBy.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1AB446C18()
{
  type metadata accessor for _Lazy_KeyedBy();

  sub_1AB4477E4(v0);
}

uint64_t _Lazy_KeyedBy.wrappedValue.setter(uint64_t a1)
{
  sub_1AB4477E4(a1);
}

uint64_t (*_Lazy_KeyedBy.wrappedValue.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = _Lazy_KeyedBy.wrappedValue.getter();
  return sub_1AB446D04;
}

uint64_t sub_1AB446D04(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    sub_1AB4477E4(v3);
  }

  else
  {
    sub_1AB4477E4(v2);
  }
}

uint64_t _Lazy_KeyedBy.description.getter()
{
  sub_1AB4603C4();
  type metadata accessor for LazyValueWrapper();

  swift_getWitnessTable();
  sub_1AB461D74();

  return 0;
}

uint64_t _Lazy_KeyedBy.encode(to:)(void *a1)
{
  v14 = _Lazy_KeyedBy.wrappedValue.getter();
  v2 = sub_1AB4603C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A8E8);
  if (swift_dynamicCast())
  {
    sub_1AB0149B0(v10, v12);
    __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    sub_1AB460434();
    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_1AB014AC0(v10, &qword_1EB43A8F0);
    v9 = sub_1AB4616E4();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372B8);
    v6 = _Lazy_KeyedBy.wrappedValue.getter();
    v5[3] = v2;
    *v5 = v6;
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB462234();
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1AB4615D4();

    *&v10[0] = 60;
    *(&v10[0] + 1) = 0xE100000000000000;
    v7 = _Lazy_KeyedBy.wrappedValue.getter();
    v13 = v2;
    v12[0] = v7;
    runtimeType(of:)(v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    v8 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v8);

    MEMORY[0x1AC59BA20](0xD000000000000012, 0x80000001AB509440);
    sub_1AB461694();
    (*(*(v9 - 8) + 104))(v5, *MEMORY[0x1E69E6B30]);
    return swift_willThrow();
  }
}

uint64_t _Lazy_KeyedBy<>._partiallyEncode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = _Lazy_KeyedBy.wrappedValue.getter();
  Dictionary<>._partiallyEncode(to:)(a1, v6, *(a2 + 24), a3);
}

uint64_t _Lazy_KeyedBy<>.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  sub_1AB0B9254(a1, v13);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = v13[1];
  *(v10 + 32) = v13[0];
  *(v10 + 48) = v11;
  *(v10 + 64) = v14;
  *(v10 + 72) = v9;
  sub_1AB4603C4();
  sub_1AB1AA5C4(sub_1AB44785C, v10, v13);
  result = sub_1AB066D84(a1);
  *a5 = *&v13[0];
  return result;
}

uint64_t sub_1AB4471EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1AB014A58(a1, v21, &qword_1EB436BA0);
  v10 = v22;
  if (!v22)
  {
    sub_1AB014AC0(v21, &qword_1EB436BA0);
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
    goto LABEL_7;
  }

  v11 = v23;
  __swift_project_boxed_opaque_existential_1Tm(v21, v22);
  (*(v11 + 160))(&v24, v10, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  if (!*(&v25 + 1))
  {
LABEL_7:
    sub_1AB014AC0(&v24, &qword_1EB436BC0);
    v16 = type metadata accessor for _Lazy_KeyedBy();
    sub_1AB163664();
    swift_allocError();
    v17 = MEMORY[0x1E69E7CC0];
    *v18 = v16;
    v18[1] = v17;
    v18[2] = 0;
    v18[3] = 0;
    return swift_willThrow();
  }

  v27[0] = v24;
  v27[1] = v25;
  v28 = v26;
  sub_1AB163BD0(v27, &v24);
  v21[0] = a2;

  v12 = Dictionary<>.init(deserializing:using:)(&v24, v21, a3, a4);
  if (v5)
  {
    sub_1AB3D85D8(0xD000000000000027, 0x80000001AB4FFF70, a2, &v24);
    sub_1AB014A58(&v24, v21, &qword_1EB436EC0);
    v13 = v22;
    if (v22)
    {
      v14 = v23;
      __swift_project_boxed_opaque_existential_1Tm(v21, v22);
      v15 = sub_1AB4603C4();
      (*(v14 + 8))(v15, v5, v13, v14);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
    }

    else
    {
      sub_1AB014AC0(v21, &qword_1EB436EC0);
    }

    swift_willThrow();
    sub_1AB014AC0(&v24, &qword_1EB436EC0);
    return sub_1AB07CDB0(v27);
  }

  else
  {
    v20 = v12;
    result = sub_1AB07CDB0(v27);
    *a5 = v20;
  }

  return result;
}

uint64_t _Lazy_KeyedBy<>.init(_partiallyDeserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  sub_1AB0B9254(a1, v13);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = v13[1];
  *(v10 + 32) = v13[0];
  *(v10 + 48) = v11;
  *(v10 + 64) = v14;
  *(v10 + 72) = v9;
  sub_1AB4603C4();
  sub_1AB1AA5C4(sub_1AB447880, v10, v13);
  result = sub_1AB066D84(a1);
  *a5 = *&v13[0];
  return result;
}

uint64_t sub_1AB44756C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1AB0B9254(a1, v10);
  v11 = a2;

  result = Dictionary<>.init(_partiallyDeserializing:using:)(v10, &v11, a3, a4);
  *a5 = result;
  return result;
}

uint64_t static _Lazy_KeyedBy<>.== infix(_:_:)()
{
  type metadata accessor for _Lazy_KeyedBy();
  _Lazy_KeyedBy.wrappedValue.getter();
  _Lazy_KeyedBy.wrappedValue.getter();
  v0 = sub_1AB4603F4();

  return v0 & 1;
}

uint64_t _Lazy_KeyedBy<>.hash(into:)()
{
  _Lazy_KeyedBy.wrappedValue.getter();
  sub_1AB4603E4();
}

uint64_t _Lazy_KeyedBy<>.hashValue.getter()
{
  sub_1AB4620A4();
  _Lazy_KeyedBy<>.hash(into:)();
  return sub_1AB462104();
}

uint64_t sub_1AB447790()
{
  sub_1AB4620A4();
  _Lazy_KeyedBy<>.hash(into:)();
  return sub_1AB462104();
}

uint64_t sub_1AB4477E4(uint64_t a1)
{
  v2 = *v1;
  v5[0] = a1;
  v5[1] = v2;
  sub_1AB4603C4();
  v3 = type metadata accessor for LazyValueWrapper();

  sub_1AB039D58(v5, v3);
}

uint64_t sub_1AB447904()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void MetricsLogger.Configuration.init(recorder:eventTopic:samplingPercentage:samplingDuration:)(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v12 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v12[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v12 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
LABEL_9:
    sub_1AB0149B0(a1, a4);
    *(a4 + 40) = a2;
    *(a4 + 48) = a3;
    *(a4 + 56) = a5;
    *(a4 + 64) = a6;
    return;
  }

  if (a5 >= 0.0 && a5 <= 1.0)
  {
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t MetricsLogger.Configuration.recorder.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(v1);

  return sub_1AB0149B0(a1, v1);
}

uint64_t MetricsLogger.Configuration.eventTopic.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MetricsLogger.Configuration.eventTopic.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_1AB447B78()
{
  sub_1AB083ACC();
  result = sub_1AB4612B4();
  qword_1EB46BEF0 = result;
  return result;
}

uint64_t MetricsLogger.__allocating_init(loggerName:configuration:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  MetricsLogger.init(loggerName:configuration:)(a1, a2, a3);
  return v6;
}

void *MetricsLogger.init(loggerName:configuration:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v3[2] = a1;
  v3[3] = a2;
  sub_1AB01494C(a3, (v3 + 4));
  v6 = a3[6];
  v3[9] = a3[5];
  v3[10] = v6;
  v7 = a3[7];
  v8 = a3[8];
  v9 = qword_1ED4D01B0;

  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_1ED4D3E40;
  v10 = *algn_1ED4D3E48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AB4D47F0;
  *(v12 + 32) = v11;
  *(v12 + 40) = v10;
  *(v12 + 48) = 6778732;
  *(v12 + 56) = 0xE300000000000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  v13 = sub_1AB460484();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AB4D47F0;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;
  *(v16 + 48) = 0x646563726F467369;
  *(v16 + 56) = 0xE800000000000000;

  v17 = sub_1AB460484();
  v24 = v18;
  v25 = v17;

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1AB4D47F0;
  *(v19 + 32) = v13;
  *(v19 + 40) = v15;
  *(v19 + 48) = 0xD000000000000011;
  *(v19 + 56) = 0x80000001AB4FFFF0;
  v20 = sub_1AB460484();
  v22 = v21;
  sub_1AB447E68(a3);

  v4[11] = v25;
  v4[12] = v24;
  v4[13] = v20;
  v4[14] = v22;
  v4[15] = v7;
  v4[16] = v8;
  return v4;
}

uint64_t sub_1AB447E98(uint64_t a1)
{
  v2 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  sub_1AB17783C(0, v2, 0);
  v3 = v9;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_1AB447F90(v4, v8);
      v9 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AB17783C((v5 > 1), v6 + 1, 1);
        v3 = v9;
      }

      *(v3 + 16) = v6 + 1;
      sub_1AB014B78(v8, (v3 + 32 * v6 + 32));
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void sub_1AB447F90(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v36 - v4;
  v6 = sub_1AB45F764();
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[3] = MEMORY[0x1E69E7CA0] + 8;
  v9 = swift_allocObject();
  v39[0] = v9;
  sub_1AB0165C4(a1, v9 + 16);
  v10 = objc_opt_self();
  sub_1AB0165C4(v9 + 16, &v38);
  v11 = [v10 isValidJSONObject_];
  swift_unknownObjectRelease();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
LABEL_4:
    v15 = v37;
    v37[3] = MEMORY[0x1E69E7CA0] + 8;
    v16 = swift_allocObject();
    *v15 = v16;
    sub_1AB0165C4(a1, v16 + 16);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AB4D4720;
  sub_1AB0165C4(v39, v12 + 32);
  v13 = sub_1AB460934();

  v14 = [v10 isValidJSONObject_];

  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  if (v14)
  {
    goto LABEL_4;
  }

  sub_1AB0165C4(a1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  if (swift_dynamicCast())
  {
    v17 = v38;
    v18 = sub_1AB45F584();
    v19 = AMSLogableError();

    v20 = sub_1AB460544();
    v22 = v21;

    v23 = v37;
    v37[3] = MEMORY[0x1E69E6158];

    *v23 = v20;
    v23[1] = v22;
  }

  else
  {
    sub_1AB0165C4(a1, v39);
    v24 = swift_dynamicCast();
    v25 = v36;
    v26 = *(v36 + 56);
    if (v24)
    {
      v26(v5, 0, 1, v6);
      (*(v25 + 32))(v8, v5, v6);
      v27 = sub_1AB45F654();
      v28 = AMSLogableURL();

      v29 = sub_1AB460544();
      v31 = v30;

      v32 = v37;
      v37[3] = MEMORY[0x1E69E6158];
      *v32 = v29;
      v32[1] = v31;
      (*(v25 + 8))(v8, v6);
    }

    else
    {
      v26(v5, 1, 1, v6);
      sub_1AB03BCD0(v5);
      sub_1AB0165C4(a1, v39);
      v33 = sub_1AB4605E4();
      v34 = v37;
      v37[3] = MEMORY[0x1E69E6158];
      *v34 = v33;
      v34[1] = v35;
    }
  }
}

Swift::Void __swiftcall MetricsLogger.log(contentsOf:withLevel:)(Swift::OpaquePointer contentsOf, JetEngine::LogMessageLevel withLevel)
{
  v3 = v2;
  LODWORD(v5) = *withLevel;
  v6 = *(v2 + 104);
  v7 = *(v2 + 112);
  v38 = *(v2 + 88);
  v39 = v6;
  v40 = v7;
  v41 = *(v2 + 120);
  if ((MetricsSamplingLottery.shouldCollect.getter() & 1) == 0)
  {
    return;
  }

  v8 = MEMORY[0x1E69E6158];
  v40 = MEMORY[0x1E69E6158];
  *&v38 = 6778732;
  *(&v38 + 1) = 0xE300000000000000;
  sub_1AB014B78(&v38, v37);
  v9 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v36[0] = v9;
  sub_1AB01AE18(v37, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  if (qword_1EB4332E8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v11 = qword_1EB46BEF0;
    v40 = sub_1AB083ACC();
    *&v38 = v11;
    sub_1AB014B78(&v38, v37);
    v12 = v11;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    *&v36[0] = v9;
    sub_1AB01AE18(v37, 0x726556746E657665, 0xEC0000006E6F6973, v13);
    v14 = *&v36[0];
    v15 = v3[2];
    v16 = v3[3];
    v40 = v8;
    *&v38 = v15;
    *(&v38 + 1) = v16;
    sub_1AB014B78(&v38, v37);

    v17 = swift_isUniquelyReferenced_nonNull_native();
    *&v36[0] = v14;
    sub_1AB01AE18(v37, 0x614E726567676F6CLL, 0xEA0000000000656DLL, v17);
    v18 = *&v36[0];
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v19 = 0xE400000000000000;
        v20 = 1868983913;
      }

      else
      {
        v19 = 0xE500000000000000;
        v20 = 0x6775626564;
      }
    }

    else if (v5)
    {
      v19 = 0xE400000000000000;
      v20 = 1852989815;
    }

    else
    {
      v19 = 0xE500000000000000;
      v20 = 0x726F727265;
    }

    v40 = v8;
    *&v38 = v20;
    *(&v38 + 1) = v19;
    sub_1AB014B78(&v38, v37);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    *&v36[0] = v18;
    sub_1AB01AE18(v37, 0x6C6576656CLL, 0xE500000000000000, v21);
    v22 = *&v36[0];
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v23 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v23[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v23 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v25 = _s9JetEngine10LogMessageV6values2of13withRedactionSayypGSayACG_SbtFZ_0(contentsOf._rawValue, (os_unfair_lock_opaque_low & 1) == 0);
    contentsOf._rawValue = v25;
    v5 = *(v25 + 2);
    if (!v5)
    {
LABEL_25:
      v28 = sub_1AB447E98(contentsOf._rawValue);
LABEL_26:
      v31 = v28;

      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DA8);
      *&v38 = v31;
      sub_1AB014B78(&v38, v37);
      v32 = swift_isUniquelyReferenced_nonNull_native();
      *&v36[0] = v22;
      sub_1AB01AE18(v37, 0x746E656D75677261, 0xE900000000000073, v32);
      v22 = *&v36[0];
LABEL_27:
      v33 = v3[7];
      v34 = v3[8];
      __swift_project_boxed_opaque_existential_1Tm(v3 + 4, v33);
      *&v38 = v22;
      *(&v38 + 1) = MEMORY[0x1E69E7CC0];
      (*(v34 + 8))(&v38, v3[9], v3[10], v33, v34);

      return;
    }

    v8 = (v25 + 32);
    sub_1AB0165C4((v25 + 32), &v38);
    v9 = MEMORY[0x1E69E6158];
    if (swift_dynamicCast())
    {
      break;
    }

    v29 = 0;
    while (v29 < *(contentsOf._rawValue + 2))
    {
      sub_1AB0165C4(v8, v36);
      sub_1AB0165C4(v36, v35);
      if (swift_dynamicCast())
      {

        sub_1AB014B78(v36, v37);
        sub_1AB014B78(v37, &v38);
        sub_1AB0165C4(&v38, v37);
        v30 = swift_isUniquelyReferenced_nonNull_native();
        *&v36[0] = v22;
        sub_1AB01AE18(v37, 0x6567617373656DLL, 0xE700000000000000, v30);
        __swift_destroy_boxed_opaque_existential_1Tm(&v38);
        v22 = *&v36[0];
        goto LABEL_25;
      }

      ++v29;
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      v8 += 32;
      if (v5 == v29)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  v40 = v9;
  v38 = v37[0];
  sub_1AB014B78(&v38, v37);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  *&v36[0] = v22;
  sub_1AB01AE18(v37, 0x6567617373656DLL, 0xE700000000000000, v26);
  v22 = *&v36[0];
  v27 = *(contentsOf._rawValue + 2);
  if (v27 < 2)
  {

    goto LABEL_27;
  }

  if (v27 >= v5)
  {
    v28 = sub_1AB4489C4(contentsOf._rawValue + 32, 1, (2 * v5) | 1);
    goto LABEL_26;
  }

  __break(1u);
}

uint64_t MetricsLogger.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  return v0;
}

uint64_t MetricsLogger.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1AB4489C4(void *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v5 = a1;
  v22 = MEMORY[0x1E69E7CC0];
  a1 = sub_1AB17783C(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = v22;
    if (v4)
    {
      v7 = 0;
      v18 = v5;
      v8 = v5 + 32 * a2;
      do
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        if (!(a2 - v3 + v7))
        {
          goto LABEL_24;
        }

        if ((a2 + v7) >= v3 || v7 >= v4)
        {
          goto LABEL_25;
        }

        sub_1AB0165C4(v8, v20);
        sub_1AB447F90(v20, v21);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        v22 = v6;
        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1AB17783C((v10 > 1), v11 + 1, 1);
          v6 = v22;
        }

        *(v6 + 16) = v11 + 1;
        a1 = sub_1AB014B78(v21, (v6 + 32 * v11 + 32));
        ++v7;
        v8 += 32;
      }

      while (v9 != v4);
      v12 = a2 + v7;
      v5 = v18;
      if (a2 + v7 == v3)
      {
        return v6;
      }
    }

    else
    {
      v12 = a2;
      if (a2 == v3)
      {
        return v6;
      }
    }

    v14 = v5 + 32 * v12;
    v15 = v12;
    while (v12 >= a2 && v15 < v3)
    {
      sub_1AB0165C4(v14, v21);
      sub_1AB447F90(v21, v20);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      v22 = v6;
      v17 = *(v6 + 16);
      v16 = *(v6 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1AB17783C((v16 > 1), v17 + 1, 1);
        v6 = v22;
      }

      ++v15;
      *(v6 + 16) = v17 + 1;
      a1 = sub_1AB014B78(v20, (v6 + 32 * v17 + 32));
      v14 += 32;
      if (v3 == v15)
      {
        return v6;
      }
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_28:
  __break(1u);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  __break(1u);
  return result;
}

uint64_t sub_1AB448C64@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1AB4616A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB1F3034(0x746E65726170, 0xE600000000000000, 1, a2);
  sub_1AB39E4A4(a1, v11, v28);
  if (v3)
  {
  }

  v14 = *a1;
  v13 = a1[1];
  if (v13 == *(*a1 + 16))
  {
    sub_1AB1F3034(0x65756C6176, 0xE500000000000000, 1, a2);

    sub_1AB461694();
    v15 = sub_1AB4616B4();
    swift_allocError();
    v17 = v16;
    (*(v8 + 16))(v16, v10, v7);
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B00], v15);
    swift_willThrow();
    (*(v8 + 8))(v10, v7);
  }

  v29 = v28[1];
  v18 = v28[0];

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *(v14 + 16))
  {
    v19 = (v14 + 32 * v13);
    v21 = v19[6];
    v20 = v19[7];
    v23 = v19[4];
    v22 = v19[5];
    a1[1] = v13 + 1;

    v24 = MEMORY[0x1AC59B960](v23, v22, v21, v20);
    v26 = v25;

    v27 = v29;
    *a3 = v18;
    a3[1] = v27;
    a3[2] = v24;
    a3[3] = v26;
    return result;
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall ShelfID.isChild(of:)(JetEngine::PageID of)
{
  if (*v1 == *of.value._countAndFlagsBits && v1[1] == *(of.value._countAndFlagsBits + 8))
  {
    return 1;
  }

  else
  {
    return sub_1AB461DA4();
  }
}

uint64_t static ShelfID.forShelves(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = 0;
  *(a2 + 8) = sub_1AB44907C;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
}

uint64_t sub_1AB448F9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a1;

  v9 = sub_1AB461C44();
  MEMORY[0x1AC59BA20](v9);

  *a4 = a2;
  a4[1] = a3;
  a4[2] = 35;
  a4[3] = 0xE100000000000000;
  v11 = v8 + 1;
  if (v8 == -1)
  {

    sub_1AB427D20("JetEngine/ShelfID.swift", 23, 2, 50, a2, a3);

    v11 = 0;
  }

  *a1 = v11;
  return result;
}

JetEngine::ShelfID __swiftcall ShelfID.init(at:in:)(Swift::UInt64 at, JetEngine::PageID in)
{
  v3 = v2;
  v4 = *in.value._countAndFlagsBits;
  v5 = *(in.value._countAndFlagsBits + 8);
  v6 = sub_1AB461C44();
  MEMORY[0x1AC59BA20](v6);

  v3[2] = 35;
  v3[3] = 0xE100000000000000;
  *v3 = v4;
  v3[1] = v5;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  result.parent.value._object = v8;
  result.parent.value._countAndFlagsBits = v7;
  return result;
}

JetEngine::ShelfID __swiftcall ShelfID.init(randomIn:)(JetEngine::PageID randomIn)
{
  countAndFlagsBits = randomIn.value._countAndFlagsBits;
  v3 = v1;
  v4 = sub_1AB45F9E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *countAndFlagsBits;
  v9 = countAndFlagsBits[1];
  sub_1AB45F9D4();
  v10 = sub_1AB45F9C4();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v20[4] = v10;
  v20[5] = v12;
  v20[2] = 45;
  v20[3] = 0xE100000000000000;
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1AB0273A8();
  v13 = sub_1AB461434();
  v15 = v14;

  v3[2] = v13;
  v3[3] = v15;
  *v3 = v8;
  v3[1] = v9;
  result.value._object = v19;
  result.value._countAndFlagsBits = v18;
  result.parent.value._object = v17;
  result.parent.value._countAndFlagsBits = v16;
  return result;
}

uint64_t ShelfID.init<A>(id:kind:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *a4;
  v12 = a4[1];
  sub_1AB4608B4();
  MEMORY[0x1AC59BA20](a1, a2);

  result = (*(*(a5 - 8) + 8))(a3, a5);
  a6[2] = v14;
  a6[3] = v15;
  *a6 = v11;
  a6[1] = v12;
  return result;
}

uint64_t ShelfID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1AB4616A4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1Tm(v32, v32[3]);
  v9 = sub_1AB461DB4();
  v33 = v6;
  v26 = 45;
  v27 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v9);
  *(&v23 - 2) = &v26;
  v12 = sub_1AB021178(0x7FFFFFFFFFFFFFFFLL, 1, sub_1AB021538, (&v23 - 4), v10, v11, &v23);
  v30 = v12;
  v31 = 0;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v13 = sub_1AB4621E4();
  sub_1AB448C64(&v30, v13, &v26);
  v15 = v27;
  v16 = v29;
  v24 = v28;
  v25 = v26;
  v17 = *(v12 + 16);

  if (v31 == v17)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v18 = v24;
    *a2 = v25;
    a2[1] = v15;
    a2[2] = v18;
    a2[3] = v16;
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  if (v31 >= v17)
  {
    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB4621E4();
    sub_1AB461694();
    v19 = sub_1AB4616B4();
    swift_allocError();
    v21 = v20;
    v22 = v33;
    (*(v33 + 16))(v20, v8, v5);
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B00], v19);
    swift_willThrow();
    (*(v22 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return result;
}

uint64_t ShelfID.encode(to:)(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462254();

  MEMORY[0x1AC59BA20](45, 0xE100000000000000);
  MEMORY[0x1AC59BA20](v2, v3);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  sub_1AB461E34();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t ShelfID.debugDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

Swift::Bool __swiftcall ShelfID.isParent(of:)(JetEngine::ComponentID *of)
{
  countAndFlagsBits = of->parent.value._countAndFlagsBits;
  object = of->parent.value._object;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = of->parent.parent.value._countAndFlagsBits == *v1 && of->parent.parent.value._object == *(v1 + 8);
  if (v6 || (v7 = sub_1AB461DA4(), result = 0, (v7 & 1) != 0))
  {
    if (countAndFlagsBits == v4 && object == v5)
    {
      return 1;
    }

    else
    {

      return sub_1AB461DA4();
    }
  }

  return result;
}

uint64_t ShelfID.hash(into:)()
{
  sub_1AB460684();

  return sub_1AB460684();
}

uint64_t ShelfID.hashValue.getter()
{
  sub_1AB4620A4();
  sub_1AB460684();
  sub_1AB460684();
  return sub_1AB462104();
}

uint64_t sub_1AB449924()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_1AB44995C()
{
  result = qword_1EB43D568;
  if (!qword_1EB43D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D568);
  }

  return result;
}

unint64_t sub_1AB4499C0()
{
  result = qword_1EB43D570;
  if (!qword_1EB43D570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D570);
  }

  return result;
}

uint64_t static PipelinePhase<>.rateLimitOnFailure(on:withID:using:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_1AB02B4BC(a2, v14);
  type metadata accessor for PersistentPipelineBackoff();
  v11 = swift_allocObject();
  v12 = v14[1];
  *(v11 + 16) = v14[0];
  *(v11 + 32) = v12;
  *(v11 + 48) = v15;
  *(v11 + 56) = a3;
  *(v11 + 64) = a4;

  static PipelinePhase<>.rateLimitOnFailure(on:using:)(a1, v11, &off_1F201B9B8, a5, a6);
}

uint64_t sub_1AB449AF8()
{
  v0 = sub_1AB1DB370(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D580);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1EB432578 = result;
  return result;
}

uint64_t sub_1AB449B54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v6 = *a1;
  if (*(*a1 + 16) && (v7 = sub_1AB02B1D8(a2 + 16), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 16 * v7 + 8);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 8);
    swift_unknownObjectRetain();
    v11(ObjectType, v9);
  }

  else
  {
    v13 = (*(a2 + 56))();
    v15 = v14;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *a1;
    sub_1AB1D6B08(v13, v15, a2 + 16, isUniquelyReferenced_nonNull_native);
    *a1 = v20;
    v17 = swift_getObjectType();
    v12 = (*(v15 + 8))(v17, v15);
  }

  v18 = v12;
  result = swift_unknownObjectRelease();
  *a3 = v18;
  return result;
}

uint64_t sub_1AB449C84()
{
  sub_1AB02B2E4(v0 + 16);

  return swift_deallocClassInstance();
}

double sub_1AB449CC4()
{
  if (qword_1EB435810 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB432578;
  os_unfair_lock_lock((qword_1EB432578 + 24));
  sub_1AB449B54((v1 + 16), v0, &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

void sub_1AB449D50()
{
  if (qword_1EB435810 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB432578;
  os_unfair_lock_lock((qword_1EB432578 + 24));
  if (sub_1AB1F9DEC(v0 + 16))
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  os_unfair_lock_unlock(v1 + 6);
}

void sub_1AB449E04()
{
  qword_1EB433720 = 0x3F847AE147AE147BLL;
  qword_1EB433728 = 48;
  qword_1EB433730 = 0xE100000000000000;
  byte_1EB433738 = 1;
}

uint64_t static ImpressionsCalculator.Configuration.zero.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB433718 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v3 = qword_1EB433728;
  v2 = qword_1EB433730;
  v4 = byte_1EB433738;
  *a1 = qword_1EB433720;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
}

void sub_1AB449EBC()
{
  qword_1EB432668 = 0x3FB999999999999ALL;
  qword_1EB432670 = 12337;
  qword_1EB432678 = 0xE200000000000000;
  byte_1EB432680 = 1;
}

uint64_t static ImpressionsCalculator.Configuration.tenth.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB432660 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v3 = qword_1EB432670;
  v2 = qword_1EB432678;
  v4 = byte_1EB432680;
  *a1 = qword_1EB432668;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
}

void sub_1AB449F70()
{
  qword_1EB43D588 = 0x3FD0000000000000;
  qword_1EB43D590 = 13618;
  qword_1EB43D598 = 0xE200000000000000;
  byte_1EB43D5A0 = 1;
}

uint64_t static ImpressionsCalculator.Configuration.quarter.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB435E08 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v3 = qword_1EB43D590;
  v2 = qword_1EB43D598;
  v4 = byte_1EB43D5A0;
  *a1 = qword_1EB43D588;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
}

void sub_1AB44A01C()
{
  qword_1EB43D5A8 = 0x3FE8000000000000;
  qword_1EB43D5B0 = 13623;
  qword_1EB43D5B8 = 0xE200000000000000;
  byte_1EB43D5C0 = 1;
}

uint64_t static ImpressionsCalculator.Configuration.threeQuarters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB435E18 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v3 = qword_1EB43D5B0;
  v2 = qword_1EB43D5B8;
  v4 = byte_1EB43D5C0;
  *a1 = qword_1EB43D5A8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
}

void sub_1AB44A0C8()
{
  qword_1EB43D5C8 = 0x3FF0000000000000;
  qword_1EB43D5D0 = 3158065;
  qword_1EB43D5D8 = 0xE300000000000000;
  byte_1EB43D5E0 = 1;
}

uint64_t static ImpressionsCalculator.Configuration.full.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB435E20 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v3 = qword_1EB43D5D0;
  v2 = qword_1EB43D5D8;
  v4 = byte_1EB43D5E0;
  *a1 = qword_1EB43D5C8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
}

uint64_t ImpressionsCalculator.Configuration.groupId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ImpressionsCalculator.Configuration.withImpressionableThreshold(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *a1 = a2;
}

uint64_t ImpressionsCalculator.Configuration.withGroupId(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 24);
  *a3 = *v3;
  *(a3 + 24) = v4;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
}

uint64_t ImpressionsCalculator.Configuration.withOverrideVisibleThresholdForContainer(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v3 = v2[2];
  *a2 = *v2;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *(a2 + 24) = a1;
}

void (*ImpressionsCalculator.isVisible.modify(uint64_t *a1))(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_1AB45F9B4();
  *(v5 + 32) = v6;
  v7 = *(v6 - 8);
  *(v5 + 40) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 48) = v8;
  swift_beginAccess();
  *(v5 + 56) = *(v1 + 256);
  return sub_1AB44A328;
}

void sub_1AB44A328(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 56);
  v4 = *(v2 + 256);
  *(v2 + 256) = v3;
  if (v3 != v4)
  {
    v6 = v1[5];
    v5 = v1[6];
    v8 = v1[3];
    v7 = v1[4];
    v9 = sub_1AB0761E0();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = v8[20];
    v17 = v8[21];
    __swift_project_boxed_opaque_existential_1Tm(v8 + 17, v16);
    (*(v17 + 8))(v16, v17);
    sub_1AB0763B0(v5, v9, v11, v13, v15);
    (*(v6 + 8))(v5, v7);
  }

  free(v1[6]);

  free(v1);
}

void (*ImpressionsCalculator.viewBounds.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = sub_1AB45F9B4();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[9] = v8;
  v9 = sub_1AB460224();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v5[12] = v11;
  swift_beginAccess();
  return sub_1AB44A5B0;
}

void sub_1AB44A5B0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[12];
  if ((a2 & 1) == 0)
  {
    v5 = v3[10];
    v6 = v3[11];
    v7 = v3[12];
    sub_1AB015664();
    *v7 = sub_1AB461124();
    (*(v6 + 104))(v7, *MEMORY[0x1E69E8020], v5);
    v8 = sub_1AB460244();
    (*(v6 + 8))(v7, v5);
    if ((v8 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v9 = v3[6];
    swift_beginAccess();
    if (*(v9 + 256) == 1)
    {
      v11 = v3[8];
      v10 = v3[9];
      v13 = v3[6];
      v12 = v3[7];
      v14 = sub_1AB0761E0();
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = v13[20];
      v22 = v13[21];
      __swift_project_boxed_opaque_existential_1Tm(v13 + 17, v21);
      (*(v22 + 8))(v21, v22);
      sub_1AB0763B0(v10, v14, v16, v18, v20);
      (*(v11 + 8))(v10, v12);
    }

    v4 = v3[12];
  }

  v23 = v3[9];
  free(v4);
  free(v23);

  free(v3);
}

uint64_t sub_1AB44A750(uint64_t result)
{
  v2 = *(result + 104);
  if (!v2)
  {
    return result;
  }

  v27 = *(result + 88);
  v28 = *(result + 96);
  v24 = *(result + 120);
  v25 = *(result + 80);
  v26 = *(result + 128);
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = result;

  if (v3 != v1)
  {
    return result;
  }

  swift_weakAssign();
  result = swift_beginAccess();
  v4 = 0;
  v5 = *(v1 + 24);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v23 = *(v1 + 24);
  v9 = 1 << *(v23 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
LABEL_13:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = *(*(v23 + 56) + ((v4 << 9) | (8 * v14)));
    v17 = v15[9];
    v16 = v15[10];
    result = v15[11];
    v19 = v15[14];
    v18 = v15[15];
    if (result != v28 || v2 != v15[12])
    {
      result = sub_1AB461DA4();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    if (v16)
    {
      if (v27)
      {
        if (v17 == v25 && v16 == v27)
        {
          goto LABEL_27;
        }

        result = sub_1AB461DA4();
        if (result)
        {
          goto LABEL_27;
        }
      }
    }

    else if (!v27)
    {
LABEL_27:
      if (v18)
      {
        if (v26)
        {
          v22 = v19 == v24 && v18 == v26;
          if (v22 || (result = sub_1AB461DA4(), (result & 1) != 0))
          {
LABEL_36:

            sub_1AB07AD28(0);
          }
        }
      }

      else if (!v26)
      {
        goto LABEL_36;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v12)
    {
      return result;
    }

    v11 = *(v7 + 8 * v13);
    ++v4;
    if (v11)
    {
      v4 = v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t ImpressionsCalculator.increaseImpressionableFrame(forElement:by:isContainer:)(_OWORD *a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  v60 = a2;
  v13 = sub_1AB45F9B4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[1];
  *v69 = *a1;
  *&v69[16] = v17;
  v18 = a1[3];
  v70 = a1[2];
  v71 = v18;
  v72 = a1[4];
  v64 = *v69;
  *v61 = *&v69[8];
  v65 = *&v69[8];
  v66 = *(&v17 + 1);
  v67 = v70;
  v68 = v18;
  swift_beginAccess();
  v19 = *(v7 + 24);
  v20 = *(v19 + 16);

  if (v20 && (v21 = sub_1AB077384(&v64), (v22 & 1) != 0))
  {
    v23 = *(*(v19 + 56) + 8 * v21);
    swift_endAccess();

    swift_beginAccess();
    v24 = *(v23 + 184);
    v25 = *(v23 + 192);
    v26 = *(v23 + 200);
    v27 = *(v23 + 208);
    swift_retain_n();
    v73.origin.x = v24;
    v73.origin.y = v25;
    v73.size.width = v26;
    v73.size.height = v27;
    v80.origin.x = a3;
    v80.origin.y = a4;
    v80.size.width = a5;
    v80.size.height = a6;
    *(v23 + 184) = CGRectUnion(v73, v80);
    sub_1AB3CFBFC(v28);
  }

  else
  {
    swift_endAccess();
    v29 = *(v7 + 32);
    v30 = *(v7 + 56);
    type metadata accessor for ImpressionsTracking.ImpressionableItem();
    v23 = swift_allocObject();
    v31 = *v69;
    *(v23 + 88) = *&v69[16];
    v32 = v71;
    *(v23 + 104) = v70;
    *(v23 + 120) = v32;
    *(v23 + 136) = v72;
    *(v23 + 168) = 0;
    *(v23 + 72) = v31;
    *(v23 + 161) = 1;
    *(v23 + 184) = a3;
    *(v23 + 192) = a4;
    *(v23 + 200) = a5;
    *(v23 + 208) = a6;
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;
    sub_1AB077170(v69, v63);
    v74.origin.x = a3;
    v74.origin.y = a4;
    v74.size.width = a5;
    v74.size.height = a6;
    v33 = v29 * CGRectGetWidth(v74);
    v75.origin.x = a3;
    v75.origin.y = a4;
    v75.size.width = a5;
    v75.size.height = a6;
    v34 = v29 * CGRectGetHeight(v75);
    v76.origin.x = a3;
    v76.origin.y = a4;
    v76.size.width = a5;
    v76.size.height = a6;
    MinX = CGRectGetMinX(v76);
    v58 = v33;
    v36 = v33 + MinX;
    v37 = 0.0;
    v61[0] = v36 + 0.0;
    v77.origin.x = a3;
    v77.origin.y = a4;
    v77.size.width = a5;
    v77.size.height = a6;
    MinY = CGRectGetMinY(v77);
    v59 = v34;
    v39 = v34 + MinY + 0.0;
    v40 = a6;
    v41 = fabs(v29 + -0.5);
    if (v41 >= 0.01)
    {
      v78.origin.x = a3;
      v78.origin.y = a4;
      v57 = v39;
      v78.size.width = a5;
      v78.size.height = v40;
      v37 = CGRectGetMaxX(v78) - v58 + 0.0;
      v79.origin.x = a3;
      v79.origin.y = a4;
      v79.size.width = a5;
      v79.size.height = v40;
      MaxY = CGRectGetMaxY(v79);
      v39 = v57;
      v43 = MaxY - v59 + 0.0;
      v42 = v29 > 0.5;
    }

    else
    {
      v42 = 0;
      v43 = 0.0;
    }

    *(v23 + 32) = v61[0];
    *(v23 + 40) = v39;
    *(v23 + 48) = v37;
    *(v23 + 56) = v43;
    *(v23 + 64) = v41 < 0.01;
    *(v23 + 65) = v42;
    *(v23 + 176) = 0;
    *(v23 + 152) = 0;
    *(v23 + 160) = 1;
    swift_beginAccess();
    *(v23 + 176) = v60 & 1;
    v45 = swift_retain_n();
    sub_1AB3CFBFC(v45);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = *(v7 + 24);
    *(v7 + 24) = 0x8000000000000000;
    sub_1AB0771CC(v23, &v64, isUniquelyReferenced_nonNull_native);

    *(v7 + 24) = v62;
    swift_endAccess();
  }

  v47 = sub_1AB0761E0();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = *(v7 + 160);
  v55 = *(v7 + 168);
  __swift_project_boxed_opaque_existential_1Tm((v7 + 136), v54);
  (*(v55 + 8))(v54, v55);
  sub_1AB0779CC(v23, v16, v47, v49, v51, v53);

  return (*(v14 + 8))(v16, v13);
}

uint64_t ImpressionsCalculator.copyElements(from:)(uint64_t a1)
{
  v32 = sub_1AB45F9B4();
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v5 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v5;
  swift_bridgeObjectRetain_n();

  v7 = 0;
  v8 = v5 + 64;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v29 = (v3 + 8);
  v30 = v5;
  while (v11)
  {
LABEL_9:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = *(*(v5 + 56) + ((v7 << 9) | (8 * v14)));
    swift_beginAccess();
    *(v15 + 161) = 1;
    result = swift_beginAccess();
    v16 = *(v15 + 168);
    if (v16)
    {
      result = swift_beginAccess();
      v17 = *(v16 + 256);
      *(v16 + 256) = 0;
      if (v17 == 1)
      {

        v18 = sub_1AB0761E0();
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v25 = *(v16 + 160);
        v26 = *(v16 + 168);
        __swift_project_boxed_opaque_existential_1Tm((v16 + 136), v25);
        v27 = v31;
        (*(v26 + 8))(v25, v26);
        sub_1AB0763B0(v27, v18, v20, v22, v24);

        v28 = v27;
        v5 = v30;
        result = (*v29)(v28, v32);
      }
    }
  }

  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v12)
    {
    }

    v11 = *(v8 + 8 * v13);
    ++v7;
    if (v11)
    {
      v7 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t ImpressionsCalculator.removeElement(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AB45F9B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 8);
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v64 = *(a1 + 56);
  v65 = *(a1 + 72);
  v63[0] = v8;
  v63[1] = v9;
  v63[2] = v11;
  v63[3] = v10;
  v48 = v12;
  v49 = v10;
  v63[4] = v12;
  v63[5] = v13;
  v46 = v14;
  v47 = v13;
  v63[6] = v14;
  swift_beginAccess();
  v15 = sub_1AB077384(v63);
  if ((v16 & 1) == 0)
  {
    return swift_endAccess();
  }

  v17 = v15;
  v44 = v5;
  v45 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v2 + 24);
  *&v58[0] = v19;
  *(v2 + 24) = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1AB1DA35C();
    v19 = *&v58[0];
  }

  v43 = v11;

  v20 = *(*(v19 + 56) + 8 * v17);
  sub_1AB191868(v17, v19);
  *(v2 + 24) = v19;
  swift_endAccess();
  swift_beginAccess();
  v21 = *(v20 + 168);
  if (v21)
  {
    swift_beginAccess();
    v22 = *(v21 + 256);
    *(v21 + 256) = 0;
    if (v22 == 1)
    {

      v23 = sub_1AB0761E0();
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v30 = *(v21 + 160);
      v31 = *(v21 + 168);
      __swift_project_boxed_opaque_existential_1Tm((v21 + 136), v30);
      (*(v31 + 8))(v30, v31);
      sub_1AB0763B0(v7, v23, v25, v27, v29);

      (*(v44 + 8))(v7, v45);
    }
  }

  v32 = *(v2 + 72);
  ObjectType = swift_getObjectType();
  v55[0] = v8;
  v55[1] = v9;
  v55[2] = v43;
  v55[3] = v49;
  v55[4] = v48;
  v55[5] = v47;
  v55[6] = v46;
  v56 = v64;
  v57 = v65;
  v35 = *(v2 + 160);
  v34 = *(v2 + 168);
  __swift_project_boxed_opaque_existential_1Tm((v2 + 136), v35);
  (*(v34 + 8))(v35, v34);
  v36 = *(v2 + 192);
  v37 = *(v2 + 224);
  v59 = *(v2 + 208);
  v60 = v37;
  v38 = *(v2 + 224);
  v61 = *(v2 + 240);
  v39 = *(v2 + 192);
  v58[0] = *(v2 + 176);
  v58[1] = v39;
  v52 = v59;
  v53 = v38;
  v54 = *(v2 + 240);
  v50 = v58[0];
  v51 = v36;
  v40 = *(v32 + 40);
  sub_1AB0786FC(v58, v62);
  v40(v55, v7, &v50, ObjectType, v32);

  v62[2] = v52;
  v62[3] = v53;
  v62[4] = v54;
  v62[0] = v50;
  v62[1] = v51;
  sub_1AB079CF0(v62);
  return (*(v44 + 8))(v7, v45);
}

Swift::Void __swiftcall ImpressionsCalculator.removeAllElements()()
{
  v1 = v0;
  v32 = sub_1AB45F9B4();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v37 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 64);
  v30 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v29 = (v6 + 63) >> 6;
  v31 = (v2 + 8);
  v33 = v4;

  v9 = 0;
  while (v8)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(v33 + 56) + ((v10 << 9) | (8 * v11)));
    v13 = *(v1 + 72);
    v36 = *(v1 + 64);
    v34 = v13;
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 88);
    v15 = *(v12 + 120);
    v48[2] = *(v12 + 104);
    v48[3] = v15;
    v48[4] = *(v12 + 136);
    v48[0] = *(v12 + 72);
    v48[1] = v14;
    v16 = *(v12 + 88);
    v17 = *(v12 + 120);
    v45 = *(v12 + 104);
    v46 = v17;
    v47 = *(v12 + 136);
    v43 = *(v12 + 72);
    v44 = v16;
    v18 = *(v1 + 160);
    v19 = *(v1 + 168);
    __swift_project_boxed_opaque_existential_1Tm((v1 + 136), v18);
    v20 = *(v19 + 8);

    sub_1AB077170(v48, v54);
    v20(v18, v19);
    v21 = *(v1 + 192);
    v22 = *(v1 + 224);
    v50 = *(v1 + 208);
    v51 = v22;
    v23 = *(v1 + 224);
    v52 = *(v1 + 240);
    v24 = *(v1 + 192);
    v49[0] = *(v1 + 176);
    v49[1] = v24;
    v40 = v50;
    v41 = v23;
    v42 = *(v1 + 240);
    v38 = v49[0];
    v39 = v21;
    v25 = v34;
    v26 = *(v34 + 40);
    sub_1AB0786FC(v49, v54);
    v27 = v37;
    v26(&v43, v37, &v38, ObjectType, v25);

    v53[2] = v40;
    v53[3] = v41;
    v53[4] = v42;
    v53[0] = v38;
    v53[1] = v39;
    sub_1AB079CF0(v53);
    (*v31)(v27, v32);
    v54[2] = v45;
    v54[3] = v46;
    v54[4] = v47;
    v54[0] = v43;
    v54[1] = v44;
    sub_1AB079D44(v54);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v29)
    {

      *(v1 + 24) = MEMORY[0x1E69E7CC8];

      return;
    }

    v8 = *(v30 + 8 * v10);
    ++v9;
    if (v8)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall ImpressionsCalculator.removeFromParent()()
{
  if (swift_weakLoadStrong())
  {
    sub_1AB44A750(v0);
  }
}

uint64_t *ImpressionsCalculator.deinit()
{
  swift_weakDestroy();

  swift_unknownObjectRelease();
  sub_1AB1B02B8(v0[10], v0[11], v0[12], v0[13]);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 17));

  return v0;
}

uint64_t ImpressionsCalculator.__deallocating_deinit()
{
  swift_weakDestroy();

  swift_unknownObjectRelease();
  sub_1AB1B02B8(v0[10], v0[11], v0[12], v0[13]);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 17));

  return swift_deallocClassInstance();
}

uint64_t Unstable.ImpressionsCalculator.__allocating_init(impressionableThreshold:tracker:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = _s9JetEngine21ImpressionsCalculatorC23impressionableThreshold7trackerAC12CoreGraphics7CGFloatV_AA0C7Tracker_ptcfC_0(a1, a2, a3);
  result = swift_allocObject();
  *(result + 16) = v3;
  return result;
}

uint64_t Unstable.ImpressionsCalculator.isVisible.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 256);
}

uint64_t Unstable.ImpressionsCalculator.isVisible.setter(char a1)
{
  v3 = a1 & 1;
  v4 = sub_1AB45F9B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  result = swift_beginAccess();
  v10 = *(v8 + 256);
  *(v8 + 256) = a1;
  if (v10 != v3)
  {
    v11 = sub_1AB0761E0();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = *(v8 + 160);
    v19 = *(v8 + 168);
    __swift_project_boxed_opaque_existential_1Tm((v8 + 136), v18);
    (*(v19 + 8))(v18, v19);
    sub_1AB0763B0(v7, v11, v13, v15, v17);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void (*Unstable.ImpressionsCalculator.isVisible.modify(uint64_t *a1))(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_1AB45F9B4();
  *(v5 + 24) = v6;
  v7 = *(v6 - 8);
  *(v5 + 32) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 40) = v8;
  v9 = *(v1 + 16);
  *(v5 + 48) = v9;
  swift_beginAccess();
  *(v5 + 56) = *(v9 + 256);
  return sub_1AB44BC94;
}

void sub_1AB44BC94(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = *(v2 + 256);
  *(v2 + 256) = v3;
  if (v3 != v4)
  {
    v6 = v1[5];
    v5 = v1[6];
    v7 = v1[3];
    v8 = v1[4];
    v9 = sub_1AB0761E0();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = v5[20];
    v17 = v5[21];
    __swift_project_boxed_opaque_existential_1Tm(v5 + 17, v16);
    (*(v17 + 8))(v16, v17);
    sub_1AB0763B0(v6, v9, v11, v13, v15);
    (*(v8 + 8))(v6, v7);
  }

  free(v1[5]);

  free(v1);
}

double Unstable.ImpressionsCalculator.viewBounds.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 264);
}

uint64_t Unstable.ImpressionsCalculator.viewBounds.setter(double a1, double a2, double a3, double a4)
{
  v9 = sub_1AB45F9B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1AB460224();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(v4 + 16);
  swift_beginAccess();
  *(v17 + 264) = a1;
  *(v17 + 272) = a2;
  *(v17 + 280) = a3;
  *(v17 + 288) = a4;
  sub_1AB015664();
  *v16 = sub_1AB461124();
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v18 = sub_1AB460244();
  result = (*(v14 + 8))(v16, v13);
  if (v18)
  {
    result = swift_beginAccess();
    if (*(v17 + 256) == 1)
    {
      v20 = sub_1AB0761E0();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = *(v17 + 160);
      v28 = *(v17 + 168);
      __swift_project_boxed_opaque_existential_1Tm((v17 + 136), v27);
      (*(v28 + 8))(v27, v28);
      sub_1AB0763B0(v12, v20, v22, v24, v26);
      return (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*Unstable.ImpressionsCalculator.viewBounds.modify(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = (*(v1 + 16) + 264);
  swift_beginAccess();
  v6 = v5[1];
  *v4 = *v5;
  v4[1] = v6;
  return sub_1AB44C0E4;
}

void sub_1AB44C0E4(double **a1)
{
  v1 = *a1;
  Unstable.ImpressionsCalculator.viewBounds.setter(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

uint64_t sub_1AB44C218(__int128 *a1, uint64_t (*a2)(__int128 *))
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 6);
  v7 = *a1;
  v8 = v2;
  v9 = v3;
  v10 = a1[2];
  v11 = v4;
  result = a2(&v7);
  if (result)
  {
    v6 = result;
    result = swift_allocObject();
    *(result + 16) = v6;
  }

  return result;
}

Swift::Void __swiftcall Unstable.ImpressionsCalculator.changeImpressionableBounds(_:forElementWithID:)(__C::CGRect _, JetEngine::ImpressionMetrics::ID *forElementWithID)
{
  countAndFlagsBits = forElementWithID->element._countAndFlagsBits;
  object = forElementWithID->element._object;
  v4 = forElementWithID->uniqueID.value._object;
  v5.parent = forElementWithID->parent;
  v5.element._countAndFlagsBits = countAndFlagsBits;
  v5.element._object = object;
  *&v5.index = *&forElementWithID->index;
  v5.uniqueID.value._object = v4;
  ImpressionsCalculator.changeImpressionableBounds(_:forElementWithID:)(_, &v5);
}

Swift::Void __swiftcall Unstable.ImpressionsCalculator.removeFromParent()()
{
  v1 = *(v0 + 16);
  if (swift_weakLoadStrong())
  {
    sub_1AB44A750(v1);
  }
}

uint64_t Unstable.ImpressionsCalculator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _s9JetEngine21ImpressionsCalculatorC23impressionableThreshold7trackerAC12CoreGraphics7CGFloatV_AA0C7Tracker_ptcfC_0(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_1AB45F9E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AB4D4720;
  *(v10 + 56) = MEMORY[0x1E69E7DE0];
  *(v10 + 64) = sub_1AB44C704();
  *(v10 + 32) = floor(a3 * 100.0);
  v11 = sub_1AB460584();
  v13 = v12;
  v21 = &type metadata for SystemDateProvider;
  v22 = &protocol witness table for SystemDateProvider;
  type metadata accessor for ImpressionsCalculator();
  v14 = swift_allocObject();
  swift_weakInit();
  *(v14 + 256) = 1;
  *(v14 + 264) = 0u;
  *(v14 + 280) = 0u;
  *(v14 + 32) = a3;
  *(v14 + 40) = v11;
  *(v14 + 48) = v13;
  *(v14 + 56) = 1;
  *(v14 + 80) = 0u;
  *(v14 + 96) = 0u;
  *(v14 + 112) = 0u;
  *(v14 + 128) = 0;
  *(v14 + 64) = a1;
  *(v14 + 72) = a2;

  *(v14 + 24) = sub_1AB0755F8(MEMORY[0x1E69E7CC0]);
  sub_1AB01494C(v20, v14 + 136);
  sub_1AB45F9D4();
  v15 = sub_1AB45F9C4();
  v17 = v16;
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  *(v14 + 176) = v11;
  *(v14 + 184) = v13;
  *(v14 + 192) = 0;
  *(v14 + 200) = 1;
  *(v14 + 208) = v15;
  *(v14 + 216) = v17;
  *(v14 + 224) = 0u;
  *(v14 + 240) = 0u;
  return v14;
}

uint64_t sub_1AB44C63C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1AB44C684(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1AB44C704()
{
  result = qword_1EB435398;
  if (!qword_1EB435398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435398);
  }

  return result;
}

uint64_t dispatch thunk of JetPackAssetDiskCacheMetadataStore.executeWithTransaction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 80) + **(a6 + 80));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1AB027460;

  return v15(a1, a2, a3, a4, a5, a6);
}

void __swiftcall ImpressionsContext.init()(JetEngine::ImpressionsContext *__return_ptr retstr)
{
  retstr->position.is_nil = 1;
  retstr->parentContextID = 0u;
  retstr->uniqueImpressionID = 0u;
  retstr->uniqueParentID = 0u;
  retstr->groupId._countAndFlagsBits = 0;
  retstr->groupId._object = 0xE000000000000000;
  retstr->position.value = 0;
}

void __swiftcall ImpressionsContext.withPosition(_:)(JetEngine::ImpressionsContext *__return_ptr retstr, Swift::Int_optional a2)
{
  v3 = *(v2 + 48);
  v12 = *(v2 + 32);
  v13 = v3;
  v14 = *(v2 + 64);
  v4 = *(v2 + 16);
  v10 = *v2;
  v11 = v4;
  if (BYTE8(v4))
  {
    if (!a2.is_nil)
    {
LABEL_7:
      v7 = *(v2 + 48);
      retstr->parentContextID = *(v2 + 32);
      retstr->uniqueImpressionID = v7;
      retstr->uniqueParentID = *(v2 + 64);
      v8 = *(v2 + 16);
      retstr->groupId = *v2;
      *&retstr->position.value = v8;
      retstr->position.value = a2.value;
      retstr->position.is_nil = a2.is_nil;
      goto LABEL_8;
    }
  }

  else if (a2.is_nil || v11 != a2.value)
  {
    goto LABEL_7;
  }

  v5 = *(v2 + 48);
  retstr->parentContextID = *(v2 + 32);
  retstr->uniqueImpressionID = v5;
  retstr->uniqueParentID = *(v2 + 64);
  v6 = *(v2 + 16);
  retstr->groupId = *v2;
  *&retstr->position.value = v6;
LABEL_8:
  sub_1AB0786FC(&v10, &v9);
}

void __swiftcall ImpressionsContext.init(groupId:position:parentContextID:uniqueImpressionID:uniqueParentID:)(JetEngine::ImpressionsContext *__return_ptr retstr, Swift::String groupId, Swift::Int_optional position, Swift::String_optional parentContextID, Swift::String_optional uniqueImpressionID, Swift::String_optional uniqueParentID)
{
  retstr->groupId = groupId;
  retstr->position.value = position.value;
  retstr->position.is_nil = position.is_nil;
  retstr->parentContextID = parentContextID;
  retstr->uniqueImpressionID = uniqueImpressionID;
  retstr->uniqueParentID = uniqueParentID;
}

double sub_1AB44CAE0()
{
  byte_1EB43D600 = 1;
  result = 0.0;
  xmmword_1EB43D608 = 0u;
  unk_1EB43D618 = 0u;
  xmmword_1EB43D628 = 0u;
  *&xmmword_1EB43D5E8 = 0;
  *(&xmmword_1EB43D5E8 + 1) = 0xE000000000000000;
  qword_1EB43D5F8 = 0;
  return result;
}

uint64_t static ImpressionsContext.empty.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EB435E28 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EB43D618;
  v8[2] = xmmword_1EB43D608;
  v8[3] = unk_1EB43D618;
  v2 = xmmword_1EB43D628;
  v8[4] = xmmword_1EB43D628;
  v4 = xmmword_1EB43D5E8;
  v3 = *&qword_1EB43D5F8;
  v8[0] = xmmword_1EB43D5E8;
  v8[1] = *&qword_1EB43D5F8;
  a1[2] = xmmword_1EB43D608;
  a1[3] = v1;
  a1[4] = v2;
  *a1 = v4;
  a1[1] = v3;
  return sub_1AB0786FC(v8, &v7);
}

uint64_t ImpressionsContext.groupId.getter()
{
  v1 = *v0;

  return v1;
}

void __swiftcall ImpressionsContext.withGroupId(_:)(JetEngine::ImpressionsContext *__return_ptr retstr, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v6 = *(v2 + 16);
  v13[0] = *v2;
  v13[1] = v6;
  v7 = *(v2 + 48);
  v13[2] = *(v2 + 32);
  v13[3] = v7;
  v13[4] = *(v2 + 64);
  if (v13[0] == a2 || (sub_1AB461DA4() & 1) != 0)
  {
    v8 = *(v2 + 48);
    retstr->parentContextID = *(v2 + 32);
    retstr->uniqueImpressionID = v8;
    retstr->uniqueParentID = *(v2 + 64);
    v9 = *(v2 + 16);
    retstr->groupId = *v2;
    *&retstr->position.value = v9;
    sub_1AB0786FC(v13, v12);
  }

  else
  {
    v10 = *(v2 + 48);
    retstr->parentContextID = *(v2 + 32);
    retstr->uniqueImpressionID = v10;
    retstr->uniqueParentID = *(v2 + 64);
    v11 = *(v2 + 16);
    retstr->groupId = *v2;
    *&retstr->position.value = v11;
    sub_1AB0786FC(v13, v12);

    retstr->groupId._countAndFlagsBits = countAndFlagsBits;
    retstr->groupId._object = object;
  }
}

void __swiftcall ImpressionsContext.withParentContextID(_:)(JetEngine::ImpressionsContext *__return_ptr retstr, Swift::String_optional a2)
{
  object = a2.value._object;
  countAndFlagsBits = a2.value._countAndFlagsBits;
  v6 = *(v2 + 48);
  v14 = *(v2 + 32);
  v15 = v6;
  v16 = *(v2 + 64);
  v7 = *(v2 + 16);
  v13[0] = *v2;
  v13[1] = v7;
  if (*(&v14 + 1))
  {
    if (a2.value._object && (v14 == a2 || (sub_1AB461DA4() & 1) != 0))
    {
      goto LABEL_5;
    }
  }

  else if (!a2.value._object)
  {
LABEL_5:
    v8 = *(v2 + 48);
    retstr->parentContextID = *(v2 + 32);
    retstr->uniqueImpressionID = v8;
    retstr->uniqueParentID = *(v2 + 64);
    v9 = *(v2 + 16);
    retstr->groupId = *v2;
    *&retstr->position.value = v9;
    sub_1AB0786FC(v13, v12);
    return;
  }

  v10 = *(v2 + 48);
  retstr->parentContextID = *(v2 + 32);
  retstr->uniqueImpressionID = v10;
  retstr->uniqueParentID = *(v2 + 64);
  v11 = *(v2 + 16);
  retstr->groupId = *v2;
  *&retstr->position.value = v11;
  sub_1AB0786FC(v13, v12);

  retstr->parentContextID.value._countAndFlagsBits = countAndFlagsBits;
  retstr->parentContextID.value._object = object;
}

void __swiftcall ImpressionsContext.withUniqueImpressionID(_:)(JetEngine::ImpressionsContext *__return_ptr retstr, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v6 = *(v2 + 48);
  v13[2] = *(v2 + 32);
  v14 = v6;
  v15 = *(v2 + 64);
  v7 = *(v2 + 16);
  v13[0] = *v2;
  v13[1] = v7;
  if (*(&v14 + 1) && (v14 == a2 || (sub_1AB461DA4() & 1) != 0))
  {
    v8 = *(v2 + 48);
    retstr->parentContextID = *(v2 + 32);
    retstr->uniqueImpressionID = v8;
    retstr->uniqueParentID = *(v2 + 64);
    v9 = *(v2 + 16);
    retstr->groupId = *v2;
    *&retstr->position.value = v9;
    sub_1AB0786FC(v13, v12);
  }

  else
  {
    v10 = *(v2 + 48);
    retstr->parentContextID = *(v2 + 32);
    retstr->uniqueImpressionID = v10;
    retstr->uniqueParentID = *(v2 + 64);
    v11 = *(v2 + 16);
    retstr->groupId = *v2;
    *&retstr->position.value = v11;
    sub_1AB0786FC(v13, v12);

    retstr->uniqueImpressionID.value._countAndFlagsBits = countAndFlagsBits;
    retstr->uniqueImpressionID.value._object = object;
  }
}

void __swiftcall ImpressionsContext.withUniqueImpressionParentID(_:)(JetEngine::ImpressionsContext *__return_ptr retstr, Swift::String_optional a2)
{
  v3 = *(v2 + 48);
  v15[2] = *(v2 + 32);
  v15[3] = v3;
  v16 = *(v2 + 64);
  v4 = *(v2 + 16);
  v15[0] = *v2;
  v15[1] = v4;
  if (!a2.value._object || (object = a2.value._object, countAndFlagsBits = a2.value._countAndFlagsBits, *(&v16 + 1)) && (v16 == a2 || (v7 = retstr, v8 = sub_1AB461DA4(), retstr = v7, (v8 & 1) != 0)))
  {
    v9 = *(v2 + 48);
    retstr->parentContextID = *(v2 + 32);
    retstr->uniqueImpressionID = v9;
    retstr->uniqueParentID = *(v2 + 64);
    v10 = *(v2 + 16);
    retstr->groupId = *v2;
    *&retstr->position.value = v10;
    sub_1AB0786FC(v15, v14);
  }

  else
  {
    v11 = *(v2 + 16);
    retstr->groupId = *v2;
    *&retstr->position.value = v11;
    v12 = *(v2 + 48);
    retstr->parentContextID = *(v2 + 32);
    retstr->uniqueImpressionID = v12;
    v13 = retstr;
    sub_1AB0786FC(v15, v14);

    v13->uniqueParentID.value._countAndFlagsBits = countAndFlagsBits;
    v13->uniqueParentID.value._object = object;
  }
}

BOOL _s9JetEngine18ImpressionsContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v19 = *(a1 + 72);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 56);
  v16 = *(a2 + 48);
  v17 = *(a1 + 48);
  v14 = *(a2 + 64);
  v15 = *(a1 + 64);
  v18 = *(a2 + 72);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1AB461DA4() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v7)
    {
      v12 = v8;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v9 || (v4 != v10 || v5 != v9) && (sub_1AB461DA4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v17 != v16 || v6 != v11) && (sub_1AB461DA4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v19)
  {
    return v18 && (v15 == v14 && v19 == v18 || (sub_1AB461DA4() & 1) != 0);
  }

  return !v18;
}

uint64_t sub_1AB44D120(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB44D1C0, 0, 0);
}

uint64_t sub_1AB44D1C0()
{
  v1 = v0[5];
  v2 = sub_1AB45F9B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1AB44D29C;
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  return sub_1AB2546A4(v6, v5, v4);
}

uint64_t sub_1AB44D29C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  sub_1AB19C1DC(*(v4 + 40));
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB3252E0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t MetricsIDService.idFields(forTopic:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB44D4B0, 0, 0);
}

uint64_t sub_1AB44D4B0()
{
  v1 = v0[7];
  v11 = v0[5];
  v2 = sub_1AB45F9B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v10 = (*(v11 + 16) + **(v11 + 16));
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1AB44D60C;
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  return v10(v8, v7, v4, v5, v6);
}

uint64_t sub_1AB44D60C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 72) = v1;

  sub_1AB19C1DC(*(v4 + 56));
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB44D77C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1AB44D77C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB44D7E0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 64) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1AB44D88C, 0, 0);
}

uint64_t sub_1AB44D88C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = sub_1AB45F9B4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1AB44D98C;
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_1AB44DF74(v7, v6, v1, v5);
}

uint64_t sub_1AB44D98C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 56) = v2;

  sub_1AB19C1DC(*(v6 + 40));
  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB3252E0, 0, 0);
  }

  else
  {

    v8 = *(v7 + 8);

    return v8(a1, a2);
  }
}

uint64_t MetricsIDService.queryID(forTopic:withType:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 81) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1AB44DBC0, 0, 0);
}

uint64_t sub_1AB44DBC0()
{
  v1 = *(v0 + 56);
  v11 = *(v0 + 40);
  *(v0 + 80) = *(v0 + 81);
  v2 = sub_1AB45F9B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v10 = (*(v11 + 32) + **(v11 + 32));
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1AB44DD34;
  v4 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);

  return v10(v8, v7, v0 + 80, v4, v5, v6);
}

uint64_t sub_1AB44DD34(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[9] = v2;

  if (v2)
  {
    sub_1AB19C1DC(v6[7]);

    return MEMORY[0x1EEE6DFA0](sub_1AB44D77C, 0, 0);
  }

  else
  {
    sub_1AB19C1DC(v6[7]);

    v7 = v6[1];

    return v7(a1, a2);
  }
}

uint64_t sub_1AB44DEA4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB0C245C;

  return sub_1AB44DF74(a1, a2, v8, a4);
}

uint64_t sub_1AB44DF74(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 80) = a3;
  v8 = swift_task_alloc();
  *(v4 + 64) = v8;
  *v8 = v4;
  v8[1] = sub_1AB44E024;

  return sub_1AB2546A4(a1, a2, a4);
}

uint64_t sub_1AB44E024(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB0AF72C, 0, 0);
  }
}

uint64_t MetricsIDService.queryID(forTopic:withType:on:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 80) = *a3;
  v14 = (*(a6 + 16) + **(a6 + 16));
  v12 = swift_task_alloc();
  *(v6 + 64) = v12;
  *v12 = v6;
  v12[1] = sub_1AB44E2A0;

  return v14(a1, a2, a4, a5, a6);
}

uint64_t sub_1AB44E2A0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB44E3D4, 0, 0);
  }
}

uint64_t sub_1AB44E3D4()
{
  if (*(v0 + 80))
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  if (!*(*(v0 + 72) + 16))
  {

LABEL_14:

    goto LABEL_15;
  }

  if (*(v0 + 80))
  {
    v2 = 0x6449746E65696C63;
  }

  else
  {
    v2 = 0x644972657375;
  }

  v3 = sub_1AB014DB4(v2, v1);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1AB0165C4(*(*(v0 + 72) + 56) + 32 * v3, v0 + 16);

  if (swift_dynamicCast())
  {
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    v8 = *(v0 + 8);

    return v8(v6, v7);
  }

LABEL_15:
  sub_1AB255CA8();
  swift_allocError();
  *v10 = 0;
  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1AB44E558(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB44E5F8, 0, 0);
}

uint64_t sub_1AB44E5F8()
{
  v1 = v0[5];
  v2 = sub_1AB45F9B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1AB44E6D4;
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  return sub_1AB09C538(v6, v5, v4);
}

uint64_t sub_1AB44E6D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  sub_1AB19C1DC(*(v4 + 40));
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB44F4B0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1AB44E844(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 64) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1AB44E8F0, 0, 0);
}

uint64_t sub_1AB44E8F0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = sub_1AB45F9B4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1AB44E9F0;
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_1AB09B03C(v7, v6, v1, v5);
}

uint64_t sub_1AB44E9F0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 56) = v2;

  sub_1AB19C1DC(*(v6 + 40));
  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB44F4B0, 0, 0);
  }

  else
  {

    v8 = *(v7 + 8);

    return v8(a1, a2);
  }
}

uint64_t MetricsIDServiceError.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t sub_1AB44EC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB200878;

  return MetricsIDService.idFields(forTopic:)(a1, a2, a3, a4);
}

uint64_t sub_1AB44ECBC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AB0C245C;

  return MetricsIDService.queryID(forTopic:withType:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1AB44ED80(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1AB0AF9E8;

  return MetricsIDService.queryID(forTopic:withType:on:)(a1, a2, a3, a4, a5, a6);
}

unint64_t sub_1AB44EE58()
{
  result = qword_1EB43D638;
  if (!qword_1EB43D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D638);
  }

  return result;
}

uint64_t dispatch thunk of MetricsIDService.idFields(forTopic:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB44F4AC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MetricsIDService.idFields(forTopic:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AB2231A8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MetricsIDService.queryID(forTopic:withType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AB4425D0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MetricsIDService.resetID(forTopics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AB027554;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MetricsIDService.performMaintenance()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027460;

  return v7(a1, a2);
}

id static AccountProvider<>.appleServices.getter()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];

  return v0;
}

id ACAccountStore.activeAccount.getter@<X0>(void *a1@<X8>)
{
  result = [v1 ams_activeiTunesAccount];
  *a1 = result;
  return result;
}

JetEngine::Account_optional __swiftcall ACAccountStore.account(forUserID:)(Swift::String forUserID)
{
  object = forUserID._object;
  v4 = v1;
  v5 = (HIBYTE(forUserID._object) & 0xF);
  forUserID._object = (forUserID._countAndFlagsBits & 0xFFFFFFFFFFFFLL);
  if ((object & 0x2000000000000000) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = forUserID._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    goto LABEL_63;
  }

  if ((object & 0x1000000000000000) != 0)
  {
    countAndFlagsBits = forUserID._countAndFlagsBits;

    v8 = sub_1AB44FAD0(countAndFlagsBits, object, 10);
    v29 = v28;

    if (v29)
    {
      goto LABEL_63;
    }

LABEL_65:
    v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    v26 = [v2 ams:v30 iTunesAccountWithDSID:?];

    goto LABEL_66;
  }

  if ((object & 0x2000000000000000) != 0)
  {
    v31[0] = forUserID._countAndFlagsBits;
    v31[1] = object & 0xFFFFFFFFFFFFFFLL;
    if (LOBYTE(forUserID._countAndFlagsBits) == 43)
    {
      if (v5)
      {
        if (--v5)
        {
          v8 = 0;
          v18 = v31 + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            v20 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              break;
            }

            ++v18;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_71:
      __break(1u);
      return *&forUserID._countAndFlagsBits;
    }

    if (LOBYTE(forUserID._countAndFlagsBits) != 45)
    {
      if (v5)
      {
        v8 = 0;
        v23 = v31;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        v8 = 0;
        v12 = v31 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_69;
  }

  if ((forUserID._countAndFlagsBits & 0x1000000000000000) != 0)
  {
    forUserID._countAndFlagsBits = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    forUserID._countAndFlagsBits = sub_1AB461714();
  }

  v7 = *forUserID._countAndFlagsBits;
  if (v7 == 43)
  {
    if (forUserID._object >= 1)
    {
      v5 = forUserID._object - 1;
      if (forUserID._object != 1)
      {
        v8 = 0;
        if (forUserID._countAndFlagsBits)
        {
          v15 = (forUserID._countAndFlagsBits + 1);
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              goto LABEL_61;
            }

            v17 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v17 + v16;
            if (__OFADD__(v17, v16))
            {
              goto LABEL_61;
            }

            ++v15;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_53;
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v7 == 45)
  {
    if (forUserID._object >= 1)
    {
      v5 = forUserID._object - 1;
      if (forUserID._object != 1)
      {
        v8 = 0;
        if (forUserID._countAndFlagsBits)
        {
          v9 = (forUserID._countAndFlagsBits + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (forUserID._object)
  {
    v8 = 0;
    if (forUserID._countAndFlagsBits)
    {
      while (1)
      {
        v21 = *forUserID._countAndFlagsBits - 48;
        if (v21 > 9)
        {
          goto LABEL_61;
        }

        v22 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          goto LABEL_61;
        }

        v8 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          goto LABEL_61;
        }

        ++forUserID._countAndFlagsBits;
        if (!--forUserID._object)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_53;
  }

LABEL_61:
  v8 = 0;
  LOBYTE(v5) = 1;
LABEL_62:
  v32 = v5;
  if ((v5 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_63:
  v26 = 0;
LABEL_66:
  *v4 = v26;
  return *&forUserID._countAndFlagsBits;
}

uint64_t ACAccountStore.onActiveAccountChange.getter()
{
  v0 = *(sub_1AB06B14C() + 16);

  sub_1AB06B640();
  return v0;
}

id static AccountProvider<>.appleServices(forMediaType:)(uint64_t a1)
{
  v1 = [objc_opt_self() ams:a1 sharedAccountStoreForMediaType:?];

  return v1;
}

uint64_t sub_1AB44F930()
{
  [*(v0 + 24) removeObserver_];

  return swift_deallocClassInstance();
}

uint64_t sub_1AB44F994(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = sub_1AB45F284();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB45F254();

  sub_1AB3860F0(a4);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AB44FA88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D668);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  off_1EB43D658 = result;
  return result;
}

unsigned __int8 *sub_1AB44FAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1AB4607D4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1AB45005C();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1AB461714();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1AB45005C()
{
  v0 = sub_1AB4607E4();
  v4 = sub_1AB4500DC(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1AB4500DC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1AB4613B4();
    if (!v9 || (v10 = v9, v11 = sub_1AB030F04(v9, 0), v12 = sub_1AB450234(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1AB460674();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1AB460674();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1AB461714();
LABEL_4:

  return sub_1AB460674();
}

unint64_t sub_1AB450234(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1AB3FE0FC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1AB460764();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1AB461714();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1AB3FE0FC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1AB460744();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void static IntentModel<>.kind.getter()
{
  sub_1AB4615D4();
  sub_1AB462314();

  MEMORY[0x1AC59BA20](0xD00000000000001CLL, 0x80000001AB50FA90);
  sub_1AB461884();
  __break(1u);
}

double sub_1AB45051C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v11 = *(v7 + 16);
  v11(v19 - v12, v3, a1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0u;
    memset(v25, 0, 25);
    v23 = 0u;
    v13 = &unk_1EB43D670;
    v14 = &v23;
LABEL_6:
    sub_1AB014AC0(v14, v13);
    goto LABEL_7;
  }

  v26 = v23;
  v27 = v24;
  v28[0] = v25[0];
  *(v28 + 9) = *(v25 + 9);
  sub_1AB0CBDB8(&v26, &v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D678);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    v13 = &qword_1EB43D680;
    v14 = v19;
    goto LABEL_6;
  }

  sub_1AB014AC0(v29, &qword_1EB43D680);
  sub_1AB0149B0(v19, v21);
  sub_1AB0149B0(v21, v29);
LABEL_7:
  v11(v9, v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D678);
  if (swift_dynamicCast() || (*&v25[0] = 0, v23 = 0u, v24 = 0u, sub_1AB014AC0(&v23, &qword_1EB43D680), sub_1AB450AC8(v29, &v23), *(&v24 + 1)))
  {
    v15 = &v23;
  }

  else
  {
    sub_1AB014AC0(&v23, &qword_1EB43D680);
    (*(a2 + 40))(&v23, a1, a2);
    *&v19[0] = swift_getAssociatedTypeWitness();
    swift_getExtendedExistentialTypeMetadata();
    if (!swift_dynamicCast())
    {
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      sub_1AB014AC0(v29, &qword_1EB43D680);
      sub_1AB014AC0(v21, &qword_1EB43D680);
      *(a3 + 32) = 0;
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v15 = v21;
  }

  sub_1AB0149B0(v15, &v26);
  v16 = *(&v27 + 1);
  v17 = *&v28[0];
  __swift_project_boxed_opaque_existential_1Tm(&v26, *(&v27 + 1));
  (*(v17 + 8))(v16, v17);
  sub_1AB014AC0(v29, &qword_1EB43D680);
  __swift_destroy_boxed_opaque_existential_1Tm(&v26);
  return result;
}

uint64_t sub_1AB450924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);

  return sub_1AB450A64(v3, boxed_opaque_existential_0);
}

BOOL static IntentModel._isContinuous.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (swift_conformsToProtocol2())
  {
    v1 = AssociatedTypeWitness == 0;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

uint64_t sub_1AB4509D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  v5 = swift_allocObject();
  *a3 = v5;

  return sub_1AB34173C(v3, v5 + 16);
}

uint64_t sub_1AB450A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Models.DeepLinkIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB450AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static PipelinePhase<>.readContentsOfFile()@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = sub_1AB450BAC;
  *(result + 24) = 0;
  *a1 = sub_1AB314FBC;
  a1[1] = result;
  return result;
}

uint64_t sub_1AB450BAC()
{
  v0 = sub_1AB45F784();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437670);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 16) = v4;
  *(v3 + 24) = v0;
  *(v3 + 32) = v2;
  *(v3 + 40) = 1;
  return v3;
}

uint64_t PrivateIdentifierFieldProvider.addTimeSensitiveMetricsFields(into:using:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  result = (*(v4 + 8))(v3, v4);
  if (v6)
  {
    v12[3] = MEMORY[0x1E69E6158];
    v12[0] = result;
    v12[1] = v6;
    v7 = sub_1AB460544();
    v9 = v8;
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
    (*(v11 + 16))(v12, v7, v9, v10, v11);

    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  return result;
}

_OWORD *JSRequestIntent.init(_:timeout:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  result = sub_1AB0CBDB8(a1, a4);
  *(a4 + 48) = a2;
  *(a4 + 56) = a3 & 1;
  return result;
}

uint64_t JSRequestIntent.init(_:timeout:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1Tm(a1, v8);
  *(a4 + 24) = v8;
  *(a4 + 32) = *(v9 + 8);
  *(a4 + 40) = *(v9 + 16);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v10, v8);
  *(a4 + 48) = a2;
  *(a4 + 56) = a3 & 1;

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1AB450EF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1AB450F40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB450FA0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 25705;
  }

  else
  {
    v3 = 0x646E696B24;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (*a2)
  {
    v5 = 25705;
  }

  else
  {
    v5 = 0x646E696B24;
  }

  if (*a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AB461DA4();
  }

  return v8 & 1;
}

uint64_t sub_1AB451038()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB4510AC()
{
  sub_1AB460684();
}

uint64_t sub_1AB45110C()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

void sub_1AB451188(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (!*v1)
  {
    v2 = 0x646E696B24;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AB4511B8()
{
  if (*v0)
  {
    return 25705;
  }

  else
  {
    return 0x646E696B24;
  }
}

uint64_t sub_1AB4511E4@<X0>(char *a1@<X8>)
{
  v2 = sub_1AB4619B4();

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

uint64_t sub_1AB451248(uint64_t a1)
{
  v2 = sub_1AB451768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB451284(uint64_t a1)
{
  v2 = sub_1AB451768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.Menu.Child.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D698);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB451768();
  sub_1AB462224();
  if (!v2)
  {
    v26 = v5;
    v8 = v50;
    LOBYTE(v28) = 0;
    v10 = sub_1AB461A84();
    v11 = v9;
    v12 = v10 == 1835365481 && v9 == 0xE400000000000000;
    if (v12 || (sub_1AB461DA4() & 1) != 0)
    {

      sub_1AB01494C(a1, v27);
      Models.Menu.Item.init(from:)(v27, &v28);
      (*(v26 + 8))(v7, v4);
      v13 = 0;
      v14 = v28;
      v15 = v29;
      v46 = v36;
      v47 = v37;
      v48 = v38;
      v49 = v39;
      v42 = v32;
      v43 = v33;
      v44 = v34;
      v45 = v35;
      v16 = v30;
      v17 = v31;
    }

    else
    {
      v22 = v10 == 0x756E656D627573 && v11 == 0xE700000000000000;
      if (!v22 && (sub_1AB461DA4() & 1) == 0)
      {
        v24 = v10 == 0x6574616C706D6574 && v11 == 0xE800000000000000;
        if (!v24 && (sub_1AB461DA4() & 1) == 0)
        {
          LOBYTE(v27[0]) = 0;
          v28 = 0;
          v29 = 0xE000000000000000;
          sub_1AB4615D4();

          v28 = 0x20646E696B24;
          v29 = 0xE600000000000000;
          MEMORY[0x1AC59BA20](v10, v11);

          MEMORY[0x1AC59BA20](0xD000000000000024, 0x80000001AB50FAF0);
          sub_1AB4616B4();
          swift_allocError();
          sub_1AB4517BC();
          sub_1AB461684();

          swift_willThrow();
          (*(v26 + 8))(v7, v4);
          return __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        LOBYTE(v27[0]) = 1;
        sub_1AB451820();
        sub_1AB461AC4();
        (*(v26 + 8))(v7, v4);
        v14 = v28;
        v15 = v29;
        v13 = 2;
        goto LABEL_10;
      }

      sub_1AB01494C(a1, v27);
      Models.Menu.init(from:)(v27, &v28);
      (*(v26 + 8))(v7, v4);
      v14 = v28;
      v15 = v29;
      v46 = v36;
      v47 = v37;
      v48 = v38;
      v49 = v39;
      v42 = v32;
      v43 = v33;
      v44 = v34;
      v45 = v35;
      v16 = v30;
      v17 = v31;
      v13 = 1;
    }

    v40 = v16;
    v41 = v17;
LABEL_10:
    *v8 = v14;
    *(v8 + 8) = v15;
    v18 = v47;
    *(v8 + 112) = v46;
    *(v8 + 128) = v18;
    *(v8 + 144) = v48;
    *(v8 + 160) = v49;
    v19 = v43;
    *(v8 + 48) = v42;
    *(v8 + 64) = v19;
    v20 = v45;
    *(v8 + 80) = v44;
    *(v8 + 96) = v20;
    v21 = v41;
    *(v8 + 16) = v40;
    *(v8 + 32) = v21;
    *(v8 + 161) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1AB451768()
{
  result = qword_1EB43D6A0;
  if (!qword_1EB43D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D6A0);
  }

  return result;
}

unint64_t sub_1AB4517BC()
{
  result = qword_1EB43D6A8;
  if (!qword_1EB43D6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D6A8);
  }

  return result;
}

unint64_t sub_1AB451820()
{
  result = qword_1EB43D6B0;
  if (!qword_1EB43D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D6B0);
  }

  return result;
}

uint64_t Models.Menu.Item.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D6B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - v6;
  v8 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v8);
  v9 = sub_1AB453974();
  sub_1AB462224();
  if (!v2)
  {
    v55 = v9;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D6C8);
    LOBYTE(v68) = 1;
    sub_1AB4539C8();
    sub_1AB461A54();
    v11 = v74[0];
    if (*(&v74[0] + 1) == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = *&v74[0];
    }

    if (*(&v74[0] + 1) == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(&v74[0] + 1);
    }

    LOBYTE(v74[0]) = 0;
    v14 = sub_1AB461A84();
    v51 = v13;
    v52 = *(&v11 + 1);
    v53 = v15;
    v54 = v11;
    v49 = v14;
    v50 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D6E8);
    LOBYTE(v60) = 2;
    sub_1AB453AD0();
    sub_1AB461A54();
    v48 = v7;
    if (v68 == 1)
    {
      sub_1AB014AC0(&v68, &qword_1EB43D708);
      memset(v74, 0, sizeof(v74));
      v75 = 0;
    }

    else
    {
      sub_1AB014A58(&v68, v74, &qword_1EB43BD08);
      sub_1AB014AC0(&v68, &qword_1EB43D6E8);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D710);
    LOBYTE(v60) = 4;
    sub_1AB453C2C();
    sub_1AB461A54();
    v17 = v68;
    if (v68 == 3)
    {
      v17 = 2;
    }

    HIDWORD(v46) = v17;
    v18 = v76[3];
    v47 = v76[4];
    __swift_project_boxed_opaque_existential_1Tm(v76, v18);
    v19 = sub_1AB462214();
    sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, v19);
    v47 = v20;

    LOBYTE(v68) = 3;
    decodeActionModel<A, B>(using:container:forKey:)(v66);
    v21 = BYTE4(v46);
    if (!v51)
    {
      v50 = _s9JetEngine6ModelsO4MenuV2IDVAGycfC_0();
      v51 = v22;
    }

    v23 = v56;
    sub_1AB014A58(v74, &v60, &qword_1EB43BD08);
    if (v60)
    {
      sub_1AB014AC0(v74, &qword_1EB43BD08);
      (*(v10 + 8))(v48, v4);
      v70 = v62;
      v71 = v63;
      v72 = v64;
      v73 = v65;
      v68 = v60;
      v69 = v61;
    }

    else
    {
      *(&v72 + 1) = &_s12_EmptySourceVN;
      v73 = &off_1EE764AB0;
      sub_1AB01494C(&v71, v57);
      v24 = v10;
      v25 = v58;
      v26 = v59;
      __swift_project_boxed_opaque_existential_1Tm(v57, v58);
      v55 = (*(v26 + 24))(v25, v26);
      v27 = v58;
      v28 = v59;
      __swift_project_boxed_opaque_existential_1Tm(v57, v58);
      v54 = (*(v28 + 32))(v27, v28);
      LODWORD(v52) = v29;
      v30 = v58;
      v31 = v59;
      __swift_project_boxed_opaque_existential_1Tm(v57, v58);
      v32 = (*(v31 + 40))(v30, v31);
      v33 = v4;
      v34 = v58;
      v35 = v59;
      __swift_project_boxed_opaque_existential_1Tm(v57, v58);
      v36 = (*(v35 + 48))(v34, v35);
      v23 = v56;
      v37 = v36;
      v39 = v38;
      sub_1AB014AC0(v74, &qword_1EB43BD08);
      (*(v24 + 8))(v48, v33);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      *&v68 = v55;
      *(&v68 + 1) = v54;
      LOBYTE(v69) = v52 & 1;
      *(&v69 + 1) = v32;
      *&v70 = v37;
      *(&v70 + 1) = v39;
      if (v60)
      {
        sub_1AB014AC0(&v60, &qword_1EB43BD08);
      }
    }

    v60 = v66[0];
    v61 = v66[1];
    *&v62 = v67;
    *(v23 + 136) = 0u;
    *(v23 + 152) = 0;
    *(v23 + 120) = 0u;
    *(v23 + 160) = 2;
    v40 = v51;
    *v23 = v50;
    *(v23 + 8) = v40;
    v41 = v53;
    *(v23 + 16) = v49;
    *(v23 + 24) = v41;
    v42 = v69;
    *(v23 + 32) = v68;
    *(v23 + 48) = v42;
    v43 = v70;
    v44 = v71;
    v45 = v72;
    *(v23 + 112) = v73;
    *(v23 + 80) = v44;
    *(v23 + 96) = v45;
    *(v23 + 64) = v43;
    sub_1AB454CD0(&v60, v23 + 120);
    *(v23 + 160) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v76);
}

uint64_t Models.Menu.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D738);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - v7;
  v9 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v9);
  sub_1AB454D40();
  sub_1AB462224();
  if (!v2)
  {
    v54 = a2;
    v55 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D6C8);
    LOBYTE(v61) = 0;
    sub_1AB4539C8();
    sub_1AB461A54();
    v10 = v5;
    v11 = v67[0];
    if (*(&v67[0] + 1) == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = *&v67[0];
    }

    if (*(&v67[0] + 1) == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(&v67[0] + 1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B938);
    LOBYTE(v61) = 1;
    sub_1AB37DF54();
    sub_1AB461A54();
    v52 = *(&v11 + 1);
    v53 = v11;
    v51 = v12;
    v14 = *&v67[0];
    if (*(&v67[0] + 1) == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(&v67[0] + 1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D6E8);
    LOBYTE(v59[0]) = 2;
    sub_1AB453AD0();
    sub_1AB461A54();
    v49 = v15;
    v50 = v14;
    if (v61 == 1)
    {
      sub_1AB014AC0(&v61, &qword_1EB43D708);
      memset(v67, 0, sizeof(v67));
      v68 = 0;
    }

    else
    {
      sub_1AB014A58(&v61, v67, &qword_1EB43BD08);
      sub_1AB014AC0(&v61, &qword_1EB43D6E8);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D748);
    LOBYTE(v59[0]) = 3;
    sub_1AB454D94();
    sub_1AB461AC4();
    v17 = v61;
    if (v13)
    {
      v18 = v13;
      v19 = v54;
      v20 = v55;
      v21 = v51;
    }

    else
    {
      v21 = _s9JetEngine6ModelsO4MenuV2IDVAGycfC_0();
      v18 = v22;
      v19 = v54;
      v20 = v55;
    }

    v23 = v50;
    if (!v49)
    {
      v23 = 0;
    }

    v55 = v23;
    v24 = 0xE000000000000000;
    if (v49)
    {
      v24 = v49;
    }

    v53 = v24;
    sub_1AB014A58(v67, v59, &qword_1EB43BD08);
    if (*&v59[0])
    {
      sub_1AB014AC0(v67, &qword_1EB43BD08);
      (*(v20 + 8))(v8, v10);
      v63 = v59[2];
      v64 = v59[3];
      v65 = v59[4];
      v66 = v60;
      v61 = v59[0];
      v62 = v59[1];
    }

    else
    {
      *(&v65 + 1) = &_s12_EmptySourceVN;
      v66 = &off_1EE764AB0;
      sub_1AB01494C(&v64, v56);
      v51 = v21;
      v52 = v18;
      v25 = v20;
      v26 = v17;
      v27 = v57;
      v28 = v58;
      __swift_project_boxed_opaque_existential_1Tm(v56, v57);
      v50 = (*(v28 + 24))(v27, v28);
      v29 = v57;
      v30 = v58;
      __swift_project_boxed_opaque_existential_1Tm(v56, v57);
      v49 = (*(v30 + 32))(v29, v30);
      v48 = v31;
      v32 = v57;
      v33 = v58;
      __swift_project_boxed_opaque_existential_1Tm(v56, v57);
      v47 = (*(v33 + 40))(v32, v33);
      v35 = v57;
      v34 = v58;
      __swift_project_boxed_opaque_existential_1Tm(v56, v57);
      v36 = *(v34 + 48);
      v37 = v34;
      v17 = v26;
      v38 = v36(v35, v37);
      v19 = v54;
      v39 = v38;
      v41 = v40;
      sub_1AB014AC0(v67, &qword_1EB43BD08);
      (*(v25 + 8))(v8, v10);
      v21 = v51;
      v18 = v52;
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      *&v61 = v50;
      *(&v61 + 1) = v49;
      LOBYTE(v62) = v48 & 1;
      *(&v62 + 1) = v47;
      *&v63 = v39;
      *(&v63 + 1) = v41;
      if (*&v59[0])
      {
        sub_1AB014AC0(v59, &qword_1EB43BD08);
      }
    }

    *v19 = v21;
    *(v19 + 8) = v18;
    v42 = v53;
    *(v19 + 16) = v55;
    *(v19 + 24) = v42;
    v43 = v64;
    *(v19 + 64) = v63;
    *(v19 + 80) = v43;
    *(v19 + 96) = v65;
    v44 = v66;
    v45 = v62;
    *(v19 + 32) = v61;
    *(v19 + 48) = v45;
    *(v19 + 112) = v44;
    *(v19 + 120) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v69);
}

uint64_t Models.Menu.Child.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D768);
  v37 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB451768();
  sub_1AB462274();
  sub_1AB454EF0(v1, &v25);
  if (!v36)
  {
    v21 = v33;
    v22 = v34;
    v23 = v35;
    v17 = v29;
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v16 = v28;
    v24 = 0;
    v7 = v12;
    sub_1AB461BB4();
    if (!v7)
    {
      Models.Menu.Item.encode(to:)(a1);
    }

    sub_1AB454FAC(&v13);
    return (*(v37 + 8))(v5, v3);
  }

  if (v36 == 1)
  {
    v17 = v29;
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v16 = v28;
    v24 = 0;
    v6 = v12;
    sub_1AB461BB4();
    if (!v6)
    {
      Models.Menu.encode(to:)(a1);
    }

    sub_1AB454F7C(&v13);
    return (*(v37 + 8))(v5, v3);
  }

  v8 = v25;
  LOBYTE(v13) = 0;
  v9 = v12;
  sub_1AB461BB4();
  if (!v9)
  {
    v13 = v8;
    v24 = 1;
    sub_1AB454F28();
    sub_1AB461BF4();
  }

  (*(v37 + 8))(v5, v3);
}

uint64_t Models.Menu.Item.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D778);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB453974();
  sub_1AB462274();
  v7 = v1[1];
  v13 = *v1;
  v14 = v7;
  v15 = 1;
  sub_1AB454F28();
  v8 = v12;
  sub_1AB461BF4();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  LOBYTE(v13) = 0;
  sub_1AB461BB4();
  LOBYTE(v13) = 2;
  sub_1AB39FC64();
  sub_1AB461BF4();
  LOBYTE(v13) = *(v1 + 160);
  v15 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D728);
  sub_1AB454FDC();
  sub_1AB461BF4();
  v12 = v3;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v10 = sub_1AB462264();
  sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, v10);

  LOBYTE(v13) = 3;
  encodeActionModel<A, B>(_:using:container:forKey:)((v1 + 15));
  return (*(v4 + 8))(v6, v12);
}

uint64_t Models.Menu.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D790);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB454D40();
  sub_1AB462274();
  v9 = v3[1];
  v13 = *v3;
  v14 = v9;
  v12 = 0;
  sub_1AB454F28();
  sub_1AB461BF4();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1AB461BB4();
    LOBYTE(v13) = 2;
    sub_1AB39FC64();
    sub_1AB461BF4();
    v13 = v3[15];
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BA68);
    sub_1AB4550B4();
    sub_1AB461BF4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Models.Menu.Child.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x646E696B24, 0xE500000000000000, v28);
  sub_1AB014A58(v28, v30, &qword_1EB436BA0);
  v7 = v31;
  if (!v31)
  {

    sub_1AB066D84(v28);
    sub_1AB014AC0(v30, &qword_1EB436BA0);
LABEL_13:
    v19 = 0x20000001F201BE60uLL;
    sub_1AB163664();
    swift_allocError();
    *v20 = xmmword_1AB4E9720;
    goto LABEL_14;
  }

  v8 = v32;
  __swift_project_boxed_opaque_existential_1Tm(v30, v31);
  v9 = (*(v8 + 24))(v7, v8);
  v11 = v10;
  sub_1AB066D84(v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  if (!v11)
  {

    goto LABEL_13;
  }

  v12 = v9 == 1835365481 && v11 == 0xE400000000000000;
  if (v12 || (sub_1AB461DA4() & 1) != 0)
  {

    sub_1AB0B9254(a1, v30);
    v27 = v6;
    Models.Menu.Item.init(deserializing:using:)(v30, &v27, v28);
    result = sub_1AB066D84(a1);
    if (!v3)
    {
      HIBYTE(v29) = 0;
LABEL_10:
      v14 = v28[9];
      *(a3 + 128) = v28[8];
      *(a3 + 144) = v14;
      v15 = v28[5];
      *(a3 + 64) = v28[4];
      *(a3 + 80) = v15;
      v16 = v28[7];
      *(a3 + 96) = v28[6];
      *(a3 + 112) = v16;
      v17 = v28[1];
      *a3 = v28[0];
      *(a3 + 16) = v17;
      v18 = v28[3];
      *(a3 + 32) = v28[2];
      *(a3 + 48) = v18;
      *(a3 + 160) = v29;
      return result;
    }

    return result;
  }

  v22 = v9 == 0x756E656D627573 && v11 == 0xE700000000000000;
  if (!v22 && (sub_1AB461DA4() & 1) == 0)
  {

    if (v9 == 0x6574616C706D6574 && v11 == 0xE800000000000000 || (sub_1AB461DA4() & 1) != 0)
    {

      JSONObject.subscript.getter(25705, 0xE200000000000000, v28);
      v23 = sub_1AB355D28();
      if (!v3)
      {
        v25 = v23;
        v26 = v24;
        sub_1AB066D84(a1);
        result = sub_1AB066D84(v28);
        *a3 = v25;
        *(a3 + 8) = v26;
        *(a3 + 161) = 2;
        return result;
      }

      sub_1AB066D84(a1);
      v21 = v28;
      return sub_1AB066D84(v21);
    }

    v19 = 0x80000001F201BE60;
    sub_1AB163664();
    swift_allocError();
    *v20 = v9;
    *(v20 + 8) = v11;
LABEL_14:
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    swift_willThrow();
    v21 = a1;
    return sub_1AB066D84(v21);
  }

  sub_1AB0B9254(a1, v30);
  v27 = v6;
  Models.Menu.init(deserializing:using:)(v30, &v27, v28);
  result = sub_1AB066D84(a1);
  if (!v3)
  {
    HIBYTE(v29) = 1;
    goto LABEL_10;
  }

  return result;
}

uint64_t Models.Menu.Item.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, v33);
  sub_1AB014A58(v33, v35, &qword_1EB436BA0);
  v7 = v36;
  if (!v36)
  {
    sub_1AB066D84(v33);

    sub_1AB014AC0(v35, &qword_1EB436BA0);
LABEL_8:
    sub_1AB163664();
    swift_allocError();
    *v17 = xmmword_1AB4F97B0;
    *(v17 + 16) = 0x20000001F201BF58uLL;
    *(v17 + 24) = 0;
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

  v8 = v37;
  __swift_project_boxed_opaque_existential_1Tm(v35, v36);
  v9 = (*(v8 + 24))(v7, v8);
  v11 = v10;
  sub_1AB066D84(v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  if (!v11)
  {

    goto LABEL_8;
  }

  JSONObject.subscript.getter(25705, 0xE200000000000000, v33);
  sub_1AB014A58(v33, v35, &qword_1EB436BA0);
  v12 = v36;
  if (v36)
  {
    v13 = v37;
    __swift_project_boxed_opaque_existential_1Tm(v35, v36);
    v14 = (*(v13 + 24))(v12, v13);
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    if (v16)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1AB014AC0(v35, &qword_1EB436BA0);
  }

  v14 = _s9JetEngine6ModelsO4MenuV2IDVAGycfC_0();
  v16 = v19;
LABEL_11:
  sub_1AB066D84(v33);
  JSONObject.subscript.getter(1852793705, 0xE400000000000000, v35);
  v32[0] = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  MediaArtwork.init(deserializing:using:)(v35, v32, v33);
  if (v3)
  {
    sub_1AB066D84(a1);
  }

  else
  {
    JSONObject.subscript.getter(0x6E6F69746361, 0xE600000000000000, v32);
    v29[0] = v6;
    static AnyActionTypes.tryToMakeInstance(byDeserializing:using:)(v32, v29, v35);
    sub_1AB066D84(v32);

    JSONObject.subscript.getter(1701605234, 0xE400000000000000, v32);
    sub_1AB014A58(v32, v29, &qword_1EB436BA0);
    v20 = v30;
    if (v30)
    {
      v38 = v9;
      v21 = v31;
      __swift_project_boxed_opaque_existential_1Tm(v29, v30);
      (*(v21 + 24))(v20, v21);
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      if (v23)
      {
        v24 = sub_1AB4619B4();

        sub_1AB066D84(a1);
        sub_1AB066D84(v32);
        if (v24 == 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        sub_1AB066D84(a1);
        sub_1AB066D84(v32);
        v26 = 2;
      }

      v9 = v38;
    }

    else
    {
      sub_1AB066D84(a1);
      sub_1AB066D84(v32);
      sub_1AB014AC0(v29, &qword_1EB436BA0);
      v26 = 2;
    }

    *(a3 + 152) = 0;
    *(a3 + 136) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 160) = 2;
    *a3 = v14;
    *(a3 + 8) = v16;
    *(a3 + 16) = v9;
    *(a3 + 24) = v11;
    v27 = v33[3];
    *(a3 + 64) = v33[2];
    *(a3 + 80) = v27;
    *(a3 + 96) = v33[4];
    *(a3 + 112) = v34;
    v28 = v33[1];
    *(a3 + 32) = v33[0];
    *(a3 + 48) = v28;
    result = sub_1AB454CD0(v35, a3 + 120);
    *(a3 + 160) = v26;
  }

  return result;
}

double Models.Menu.init(deserializing:using:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(25705, 0xE200000000000000, v23);
  sub_1AB014A58(v23, v25, &qword_1EB436BA0);
  v7 = v26;
  if (v26)
  {
    v8 = v27;
    __swift_project_boxed_opaque_existential_1Tm(v25, v26);
    v9 = (*(v8 + 24))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    if (v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1AB014AC0(v25, &qword_1EB436BA0);
  }

  v9 = _s9JetEngine6ModelsO4MenuV2IDVAGycfC_0();
  v11 = v12;
LABEL_6:
  sub_1AB066D84(v23);
  JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, v23);
  sub_1AB014A58(v23, v25, &qword_1EB436BA0);
  v13 = v26;
  if (v26)
  {
    v14 = v27;
    __swift_project_boxed_opaque_existential_1Tm(v25, v26);
    v15 = (*(v14 + 24))(v13, v14);
    v17 = v16;
    sub_1AB066D84(v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    if (v17)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1AB066D84(v23);
    sub_1AB014AC0(v25, &qword_1EB436BA0);
  }

  v15 = 0;
  v17 = 0xE000000000000000;
LABEL_11:
  JSONObject.subscript.getter(1852793705, 0xE400000000000000, v25);
  v28 = v6;

  MediaArtwork.init(deserializing:using:)(v25, &v28, v23);
  if (v3)
  {
    sub_1AB066D84(a1);
  }

  else
  {
    JSONObject.subscript.getter(0x6E6572646C696863, 0xE800000000000000, v25);
    v19 = sub_1AB37F8E4(v25, v6);
    sub_1AB066D84(a1);
    *a3 = v9;
    *(a3 + 8) = v11;
    *(a3 + 16) = v15;
    *(a3 + 24) = v17;
    v20 = v23[3];
    *(a3 + 64) = v23[2];
    *(a3 + 80) = v20;
    *(a3 + 96) = v23[4];
    v21 = v24;
    result = *v23;
    v22 = v23[1];
    *(a3 + 32) = v23[0];
    *(a3 + 48) = v22;
    *(a3 + 112) = v21;
    *(a3 + 120) = v19;
  }

  return result;
}

uint64_t Models.Menu.Child.id.getter()
{
  sub_1AB454EF0(v0, &v14);
  if (v25)
  {
    if (v25 == 1)
    {
      v7 = v18;
      v8 = v19;
      v9 = v20;
      v10 = v21;
      v3 = v14;
      v4 = v15;
      v5 = v16;
      v6 = v17;
      v1 = v14;

      sub_1AB454F7C(&v3);
    }

    else
    {
      return v14;
    }
  }

  else
  {
    v11 = v22;
    v12 = v23;
    v13 = v24;
    v7 = v18;
    v8 = v19;
    v9 = v20;
    v10 = v21;
    v3 = v14;
    v4 = v15;
    v5 = v16;
    v6 = v17;
    v1 = v14;

    sub_1AB454FAC(&v3);
  }

  return v1;
}

uint64_t sub_1AB4538C4@<X0>(uint64_t *a1@<X8>)
{
  result = Models.Menu.Child.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1AB453934()
{
  result = [objc_allocWithZone(_JEAtomicCounter) initWithInitialValue_];
  qword_1EB43D690 = result;
  return result;
}

unint64_t sub_1AB453974()
{
  result = qword_1EB43D6C0;
  if (!qword_1EB43D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D6C0);
  }

  return result;
}

unint64_t sub_1AB4539C8()
{
  result = qword_1EB43D6D0;
  if (!qword_1EB43D6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D6C8);
    sub_1AB453A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D6D0);
  }

  return result;
}

unint64_t sub_1AB453A4C()
{
  result = qword_1EB43D6D8;
  if (!qword_1EB43D6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D6E0);
    sub_1AB451820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D6D8);
  }

  return result;
}

unint64_t sub_1AB453AD0()
{
  result = qword_1EB43D6F0;
  if (!qword_1EB43D6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D6E8);
    sub_1AB453B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D6F0);
  }

  return result;
}

unint64_t sub_1AB453B54()
{
  result = qword_1EB43D6F8;
  if (!qword_1EB43D6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43BD08);
    sub_1AB453BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D6F8);
  }

  return result;
}

unint64_t sub_1AB453BD8()
{
  result = qword_1EB43D700;
  if (!qword_1EB43D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D700);
  }

  return result;
}

unint64_t sub_1AB453C2C()
{
  result = qword_1EB43D718;
  if (!qword_1EB43D718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D710);
    sub_1AB453CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D718);
  }

  return result;
}

unint64_t sub_1AB453CB0()
{
  result = qword_1EB43D720;
  if (!qword_1EB43D720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D728);
    sub_1AB453D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D720);
  }

  return result;
}

unint64_t sub_1AB453D34()
{
  result = qword_1EB43D730;
  if (!qword_1EB43D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D730);
  }

  return result;
}

uint64_t Models.Menu.Item.init(id:title:icon:action:role:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v9 = *a7;
  *(a8 + 136) = 0u;
  *(a8 + 152) = 0;
  *(a8 + 120) = 0u;
  *(a8 + 160) = 2;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  v10 = *(a5 + 48);
  *(a8 + 64) = *(a5 + 32);
  *(a8 + 80) = v10;
  *(a8 + 96) = *(a5 + 64);
  *(a8 + 112) = *(a5 + 80);
  v11 = *(a5 + 16);
  *(a8 + 32) = *a5;
  *(a8 + 48) = v11;
  result = sub_1AB454CD0(a6, a8 + 120);
  *(a8 + 160) = v9;
  return result;
}

uint64_t sub_1AB453EFC()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 1852793705;
  v4 = 0x6E6F69746361;
  if (v1 != 3)
  {
    v4 = 1701605234;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 25705;
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

uint64_t sub_1AB453F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB4558D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB453F9C(uint64_t a1)
{
  v2 = sub_1AB453974();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB453FD8(uint64_t a1)
{
  v2 = sub_1AB453974();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.Menu.Item.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Models.Menu.Item.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Models.Menu.Item.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Models.Menu.Item.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Models.Menu.ItemRole.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1AB4619B4();

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

uint64_t Models.Menu.ItemRole.rawValue.getter()
{
  if (*v0)
  {
    return 0x7463757274736564;
  }

  else
  {
    return 0x6C65636E6163;
  }
}

uint64_t sub_1AB4542D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7463757274736564;
  }

  else
  {
    v3 = 0x6C65636E6163;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEB00000000657669;
  }

  if (*a2)
  {
    v5 = 0x7463757274736564;
  }

  else
  {
    v5 = 0x6C65636E6163;
  }

  if (*a2)
  {
    v6 = 0xEB00000000657669;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AB461DA4();
  }

  return v8 & 1;
}

uint64_t sub_1AB454380()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB454408()
{
  sub_1AB460684();
}

uint64_t sub_1AB45447C()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB45450C@<X0>(char *a1@<X8>)
{
  v2 = sub_1AB4619B4();

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

void sub_1AB454568(uint64_t *a1@<X8>)
{
  v2 = 0x6C65636E6163;
  if (*v1)
  {
    v2 = 0x7463757274736564;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000657669;
  }

  *a1 = v2;
  a1[1] = v3;
}

__n128 Models.Menu.init(id:title:icon:children:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  v7 = *(a5 + 48);
  *(a7 + 64) = *(a5 + 32);
  *(a7 + 80) = v7;
  *(a7 + 96) = *(a5 + 64);
  v8 = *(a5 + 80);
  result = *a5;
  v10 = *(a5 + 16);
  *(a7 + 32) = *a5;
  *(a7 + 48) = v10;
  *(a7 + 112) = v8;
  *(a7 + 120) = a6;
  return result;
}

uint64_t sub_1AB454694()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB454740()
{
  sub_1AB460684();
}

uint64_t sub_1AB4547D8()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB454880@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB45588C();
  *a1 = result;
  return result;
}

void sub_1AB4548B0(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE400000000000000;
  v5 = 1852793705;
  if (*v1 != 2)
  {
    v5 = 0x6E6572646C696863;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C746974;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1AB454918()
{
  v1 = 25705;
  v2 = 1852793705;
  if (*v0 != 2)
  {
    v2 = 0x6E6572646C696863;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

uint64_t sub_1AB45497C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB45588C();
  *a1 = result;
  return result;
}

uint64_t sub_1AB4549A4(uint64_t a1)
{
  v2 = sub_1AB454D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB4549E0(uint64_t a1)
{
  v2 = sub_1AB454D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.Menu.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Models.Menu.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Models.Menu.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Models.Menu.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Models.Menu.children.setter(uint64_t a1)
{

  *(v1 + 120) = a1;
  return result;
}

unint64_t _s9JetEngine6ModelsO4MenuV2IDVAGycfC_0()
{
  sub_1AB4615D4();

  if (qword_1EB435E38 != -1)
  {
    swift_once();
  }

  [qword_1EB43D690 increment];
  v0 = sub_1AB461C44();
  MEMORY[0x1AC59BA20](v0);

  return 0xD00000000000001ALL;
}

uint64_t sub_1AB454CD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A788);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AB454D40()
{
  result = qword_1EB43D740;
  if (!qword_1EB43D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D740);
  }

  return result;
}

unint64_t sub_1AB454D94()
{
  result = qword_1EB43D750;
  if (!qword_1EB43D750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D748);
    sub_1AB454E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D750);
  }

  return result;
}

unint64_t sub_1AB454E18()
{
  result = qword_1EB43D758;
  if (!qword_1EB43D758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43BA68);
    sub_1AB454E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D758);
  }

  return result;
}

unint64_t sub_1AB454E9C()
{
  result = qword_1EB43D760;
  if (!qword_1EB43D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D760);
  }

  return result;
}

unint64_t sub_1AB454F28()
{
  result = qword_1EB43D770;
  if (!qword_1EB43D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D770);
  }

  return result;
}

unint64_t sub_1AB454FDC()
{
  result = qword_1EB43D780;
  if (!qword_1EB43D780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D728);
    sub_1AB455060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D780);
  }

  return result;
}

unint64_t sub_1AB455060()
{
  result = qword_1EB43D788;
  if (!qword_1EB43D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D788);
  }

  return result;
}

unint64_t sub_1AB4550B4()
{
  result = qword_1EB43D798;
  if (!qword_1EB43D798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43BA68);
    sub_1AB455138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D798);
  }

  return result;
}

unint64_t sub_1AB455138()
{
  result = qword_1EB43D7A0;
  if (!qword_1EB43D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7A0);
  }

  return result;
}

unint64_t sub_1AB4551E8()
{
  result = qword_1EB43D7A8;
  if (!qword_1EB43D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7A8);
  }

  return result;
}

unint64_t sub_1AB455240()
{
  result = qword_1EB43D7B0;
  if (!qword_1EB43D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7B0);
  }

  return result;
}

unint64_t sub_1AB455298()
{
  result = qword_1EB43D7B8;
  if (!qword_1EB43D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7B8);
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

uint64_t sub_1AB455344(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 162))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 161);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AB455380(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 160) = 0;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 162) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 162) = 0;
    }

    if (a2)
    {
      *(result + 161) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AB4553DC(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 160) = 0;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 161) = a2;
  return result;
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1AB455470(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_1AB4554B8(uint64_t result, int a2, int a3)
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
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AB455578()
{
  result = qword_1EB43D7C0;
  if (!qword_1EB43D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7C0);
  }

  return result;
}

unint64_t sub_1AB4555D0()
{
  result = qword_1EB43D7C8;
  if (!qword_1EB43D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7C8);
  }

  return result;
}

unint64_t sub_1AB455628()
{
  result = qword_1EB43D7D0;
  if (!qword_1EB43D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7D0);
  }

  return result;
}

unint64_t sub_1AB455680()
{
  result = qword_1EB43D7D8;
  if (!qword_1EB43D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7D8);
  }

  return result;
}

unint64_t sub_1AB4556D8()
{
  result = qword_1EB43D7E0;
  if (!qword_1EB43D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7E0);
  }

  return result;
}

unint64_t sub_1AB455730()
{
  result = qword_1EB43D7E8;
  if (!qword_1EB43D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7E8);
  }

  return result;
}

unint64_t sub_1AB455788()
{
  result = qword_1EB43D7F0;
  if (!qword_1EB43D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7F0);
  }

  return result;
}

unint64_t sub_1AB4557E0()
{
  result = qword_1EB43D7F8;
  if (!qword_1EB43D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7F8);
  }

  return result;
}

unint64_t sub_1AB455838()
{
  result = qword_1EB43D800;
  if (!qword_1EB43D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D800);
  }

  return result;
}

uint64_t sub_1AB45588C()
{
  v0 = sub_1AB4619B4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AB4558D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1AB461DA4();

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

unint64_t sub_1AB455A78()
{
  result = qword_1EB43D808;
  if (!qword_1EB43D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D808);
  }

  return result;
}

unint64_t sub_1AB455ACC()
{
  result = qword_1EB43D810;
  if (!qword_1EB43D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D810);
  }

  return result;
}

unint64_t PackageEncryptionError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  if (!*(v0 + 4))
  {
    sub_1AB4615D4();

    v5 = 0xD00000000000001BLL;
    goto LABEL_10;
  }

  if (v2 == 1)
  {
    sub_1AB4615D4();

    v5 = 0xD00000000000001ELL;
LABEL_10:
    v4 = sub_1AB461C44();
    MEMORY[0x1AC59BA20](v4);

    return v5;
  }

  if (v2 == 2)
  {
    if (v1 == 1)
    {
      return 0xD000000000000030;
    }

    if (!v1)
    {
      return 0xD000000000000016;
    }
  }

  v5 = 0;
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD00000000000001BLL, 0x80000001AB50FB60);
  sub_1AB461824();
  return v5;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PackageEncryptionError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
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

uint64_t storeEnumTagSinglePayload for PackageEncryptionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AB455D64(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1AB455D7C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t WritableStateLens.init<A>(contentsOf:in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v9 = *a1;
  a4[3] = type metadata accessor for StateStoreHandle();
  a4[4] = &off_1F2000C50;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  return sub_1AB2397EC(&v9, a2, a3, boxed_opaque_existential_0);
}

void *WritableStateLens.init(get:set:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[3] = &type metadata for DelegatingStateStoreHandle;
  a5[4] = &off_1F2000C30;
  result = swift_allocObject();
  *a5 = result;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t WritableStateLens<A>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v3[3];
  v10 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v9);
  (*(v10 + 8))(v5, a3, v9, v10);
  swift_getAtKeyPath();
  return (*(v6 + 8))(v8, v5);
}

uint64_t WritableStateLens<A>.currentValue.getter(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v5);
  return (*(v6 + 8))(*(a1 + 16), a2, v5, v6);
}

uint64_t WritableStateLens<A>.updateValue(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1Tm(v4, v9);
  v12[2] = *(a3 + 16);
  v12[3] = a4;
  v13 = v4;
  v14 = a1;
  v15 = a2;
  return (*(v10 + 16))(sub_1AB456338, v12, v9, v10);
}

uint64_t sub_1AB4560DC(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29[1] = a3;
  v30 = a2;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  v14 = type metadata accessor for WritableStateLens();
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v15);
  v17 = *(v16 + 8);
  v18 = *(v14 + 16);
  v29[0] = a5;
  v17(v18, a5, v15, v16);
  v19 = *(v8 + 16);
  v19(v10, v13, a4);
  v20 = v32;
  v30(v10);
  if (v20 || (sub_1AB460504() & 1) != 0)
  {
    v21 = *(v8 + 8);
    v21(v10, a4);
    return (v21)(v13, a4);
  }

  else
  {
    v23 = a1[3];
    v32 = a1[4];
    v24 = a1;
    v25 = v23;
    __swift_project_boxed_opaque_existential_1Tm(v24, v23);
    v26 = *(v29[0] + 8);
    v31[3] = a4;
    v31[4] = v26;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
    v19(boxed_opaque_existential_0, v10, a4);
    (*(v32 + 24))(v31, v25);
    v28 = *(v8 + 8);
    v28(v10, a4);
    v28(v13, a4);
    return __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }
}

uint64_t sub_1AB456364()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 CodeAnyHashable.init(wrappedValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

double CodeAnyHashable.init(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  sub_1AB01494C(v5, v8);
  sub_1AB460E14();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    sub_1AB461564();
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    result = *&v9;
    v7 = v10;
    *a2 = v9;
    *(a2 + 16) = v7;
    *(a2 + 32) = v11;
  }

  return result;
}

uint64_t CodeAnyHashable.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1AB461354();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB461544();
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v8, 0, 1, v4);
    (*(v9 + 32))(v12, v8, v4);
    sub_1AB460434();
    return (*(v9 + 8))(v12, v4);
  }

  else
  {
    v14(v8, 1, 1, v4);
    (*(v6 + 8))(v8, v5);
    v16 = sub_1AB4616E4();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372B8);
    v18[3] = MEMORY[0x1E69E69B8];
    v19 = swift_allocObject();
    *v18 = v19;
    sub_1AB02B4BC(v2, v19 + 16);
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB462234();
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_1AB4615D4();

    strcpy(v21, "Value is not <");
    HIBYTE(v21[1]) = -18;
    v20 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v20);

    MEMORY[0x1AC59BA20](62, 0xE100000000000000);
    sub_1AB461694();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B30], v16);
    return swift_willThrow();
  }
}

uint64_t CodeAnyHashable.hashValue.getter()
{
  sub_1AB4620A4();
  _s9JetEngine15CodeAnyHashableV4hash4intoys6HasherVz_tF_0();
  return sub_1AB462104();
}

uint64_t sub_1AB45691C()
{
  sub_1AB4620A4();
  CodeAnyHashable.hash(into:)();
  return sub_1AB462104();
}

uint64_t sub_1AB4569B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id URLBagContract.init(_:)(uint64_t *a1)
{
  v2 = *a1;
  *&v1[OBJC_IVAR____TtC9JetEngine14URLBagContract_backing] = *a1;
  v3 = type metadata accessor for MescalBagContract();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  swift_unknownObjectRetain();
  *&v1[OBJC_IVAR____TtC9JetEngine14URLBagContract_mescalContract] = objc_msgSendSuper2(&v7, sel_init);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for URLBagContract();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1AB456AF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 arrayForKey_];

  return v3;
}

id sub_1AB456B60()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 stringForKey_];

  return v3;
}

id sub_1AB456C04()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 doubleForKey_];

  return v3;
}

id sub_1AB456C74()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 integerForKey_];

  return v3;
}

id sub_1AB456CE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 doubleForKey_];

  return v3;
}

id sub_1AB456D54()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 integerForKey_];

  return v3;
}

id sub_1AB456DC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 arrayForKey_];

  return v3;
}

id sub_1AB456E34()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 integerForKey_];

  return v3;
}

id sub_1AB456EA4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 URLForKey_];

  return v3;
}

id sub_1AB456F34(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v6 = sub_1AB460514();
  v7 = [v5 *a3];

  return v7;
}

id URLBagContract.__allocating_init(_:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *a1;
  *&v3[OBJC_IVAR____TtC9JetEngine14URLBagContract_backing] = v4;
  v5 = type metadata accessor for MescalBagContract();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing] = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  swift_unknownObjectRetain();
  *&v3[OBJC_IVAR____TtC9JetEngine14URLBagContract_mescalContract] = objc_msgSendSuper2(&v9, sel_init);
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1AB457634(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *&a1[OBJC_IVAR____TtC9JetEngine14URLBagContract_backing];
  v7 = a1;
  v8 = sub_1AB460514();
  v9 = [v6 *a5];

  return v9;
}

id URLBagContract.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id URLBagContract.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for URLBagContract();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AB457AC0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = *v1;
  v4 = *(v1 + 8);
  sub_1AB19A648(__src, v9);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1AB3C4AE4(v3);
  }

  memcpy(__srca, __dst, sizeof(__srca));
  result = nullsub_1(__srca);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 >= v3[2])
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = &v3[50 * v4];
  memcpy(v9, v6 + 4, sizeof(v9));
  memcpy(v6 + 4, __srca, 0x190uLL);
  result = sub_1AB014AC0(v9, &qword_1EB439FB0);
  *v1 = v3;
  if (v3[2] == v4 + 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4 + 1;
  }

  *(v1 + 8) = v7;
  return result;
}

uint64_t sub_1AB457BB4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = sub_1AB3C4BD4(v5);
  v5 = result;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v6 >= v5[2])
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = &v5[2 * v6];
  v8[4] = a1;
  v8[5] = a2;

  *v2 = v5;
  if (v5[2] == v6 + 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6 + 1;
  }

  *(v2 + 8) = v9;
  return result;
}

uint64_t sub_1AB457C68(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1AB17781C(0, *(v4 + 16) + 1, 1);
    v4 = *a1;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    sub_1AB17781C((v6 > 1), v7 + 1, 1);
    v4 = *a1;
  }

  *(v4 + 16) = v7 + 1;
  *(v4 + 8 * v7 + 32) = a2;
  *a1 = v4;
}

uint64_t sub_1AB457D14(uint64_t a1)
{
  sub_1AB4582B4(a1, &v13);
  if (!v14)
  {
    return sub_1AB014AC0(&v13, &qword_1EB43A8F0);
  }

  sub_1AB0149B0(&v13, v15);
  __swift_project_boxed_opaque_existential_1Tm(v15, v15[3]);
  v4 = sub_1AB45F174();
  v5 = v3;
  sub_1AB458B50(v4, v3);
  if (v6)
  {
    goto LABEL_11;
  }

  v11 = v4;
  v12 = v5;
  sub_1AB017200(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D8C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_1AB014AC0(v9, &qword_1EB43D8C8);
LABEL_10:
    sub_1AB45892C(v4, v5);
LABEL_11:
    v7 = sub_1AB017254(v4, v5);
    goto LABEL_12;
  }

  sub_1AB0149B0(v9, &v13);
  __swift_project_boxed_opaque_existential_1Tm(&v13, v14);
  if ((sub_1AB461964() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v13);
    goto LABEL_10;
  }

  sub_1AB017254(v4, v5);
  __swift_project_boxed_opaque_existential_1Tm(&v13, v14);
  sub_1AB461954();
  v7 = __swift_destroy_boxed_opaque_existential_1Tm(&v13);
LABEL_12:
  v8 = *(v1 + OBJC_IVAR____TtC9JetEngine13JSDebugObject_newPoints);
  MEMORY[0x1EEE9AC00](v7);
  os_unfair_lock_lock(v8 + 8);
  sub_1AB458DAC();
  os_unfair_lock_unlock(v8 + 8);

  return __swift_destroy_boxed_opaque_existential_1Tm(v15);
}

uint64_t sub_1AB4582B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1AB01494C(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D8D0);
  if (swift_dynamicCast())
  {
    v3 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D47F0;
    *(inited + 32) = 0x646E696B24;
    v5 = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xE500000000000000;
    strcpy((inited + 48), "metricsEvent");
    *(inited + 61) = 0;
    *(inited + 62) = -5120;
    *(inited + 72) = v5;
    *(inited + 80) = 1635017060;
    *(inited + 88) = 0xE400000000000000;
    v6 = [v3 dictionaryForPosting];
    v7 = sub_1AB4602F4();

    *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AE0);
    *(inited + 96) = v7;
    v8 = sub_1AB01B220(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0);
    swift_arrayDestroy();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
    *&v14 = v8;
    v9 = sub_1AB1BF9A0();
    v10 = swift_allocObject();
    v10[5] = &type metadata for FoundationValue;
    v10[6] = &off_1F1FFB5A8;
    v11 = swift_allocObject();
    v10[2] = v11;
    sub_1AB014B78(&v14, (v11 + 16));

    v12 = &type metadata for JSONObject;
  }

  else
  {
    v12 = 0;
    v9 = 0;
    v10 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = v12;
  a2[4] = v9;
  *a2 = v10;
  return __swift_destroy_boxed_opaque_existential_1Tm(v17);
}

uint64_t sub_1AB4584F8()
{
  if (sub_1AB087FF4())
  {
  }

  else
  {
    sub_1AB428534("JetEngine/JSDebugObject.swift", 29, 2, 77);
  }

  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine13JSDebugObject_newPoints);
  os_unfair_lock_lock((v1 + 32));
  v2 = sub_1AB2EB074(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = sub_1AB458DE0(0, 0, *(*(v1 + 16) + 16));

  *(v1 + 24) = 0;
  os_unfair_lock_unlock((v1 + 32));
  return v2;
}

uint64_t sub_1AB4585F0()
{
  v1 = sub_1AB087FF4();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + OBJC_IVAR____TtC9JetEngine13JSDebugObject_isDebugPointsEnabled);
    os_unfair_lock_lock((v3 + 20));
    v4 = *(v3 + 16);
    os_unfair_lock_unlock((v3 + 20));
    if (v4)
    {
    }

    else
    {
      if (qword_1EB435DB8 != -1)
      {
        swift_once();
      }

      v6 = qword_1EB46C318;
      v13[3] = type metadata accessor for RunLoopWorkerThread();
      v13[4] = &protocol witness table for RunLoopWorkerThread;
      v13[0] = v2;
      sub_1AB01494C(v13, v10);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v11 = sub_1AB458824;
      v12 = 0;
      sub_1AB014A58(v10, v9, &qword_1EB43D8B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D8B8);
      v7 = swift_allocObject();
      sub_1AB458CFC(v9, v7 + 16);
      v8 = *(v6 + 16);

      os_unfair_lock_lock((v8 + 24));
      sub_1AB458D6C((v8 + 16));
      os_unfair_lock_unlock((v8 + 24));

      sub_1AB014AC0(v10, &qword_1EB43D8B0);

      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      os_unfair_lock_lock((v3 + 20));
      *(v3 + 16) = 1;
      os_unfair_lock_unlock((v3 + 20));
    }
  }

  else
  {

    return sub_1AB428534("JetEngine/JSDebugObject.swift", 29, 2, 88);
  }
}

uint64_t (*sub_1AB458824(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1AB458D88;
}

uint64_t sub_1AB45892C(uint64_t a1, unint64_t a2)
{
  sub_1AB017200(a1, a2);
  sub_1AB4589D4(a1, a2);
  v4 = sub_1AB460664();

  return v4;
}

uint64_t sub_1AB458998@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AB460664();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1AB4589D4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1AB45F894();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_12:
      sub_1AB017254(a1, a2);
      return;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      if (v9)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      sub_1AB030F04(v9, 0);
      v12 = sub_1AB45F7C4();
      sub_1AB017254(a1, a2);
      v13 = *(v5 + 8);
      v5 += 8;
      v13(v7, v4);
      if (v12 == v9)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v14 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v9 = v14;
      if (!v14)
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t sub_1AB458B50(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_1AB460664();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_1AB460664();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_1AB45F414();
  if (a1)
  {
    a1 = sub_1AB45F444();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_1AB45F414() || !__OFSUB__(v5, sub_1AB45F444()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_1AB45F434();
  return sub_1AB460664();
}

uint64_t sub_1AB458CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D8B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1AB458DE0(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AC0);
    v6 = sub_1AB4609B4();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v5;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v5;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t dispatch thunk of LocalizedStringsDataSource.fetchLanguages()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB2231A8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of LocalizedStringsDataSource.fetchStrings(withLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AB027460;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1AB4590E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x1E69E7CC0];
  sub_1AB17785C(0, v1, 0);
  v2 = v31;
  v4 = v3 + 64;
  result = sub_1AB4614F4();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v25 = v3 + 72;
  v26 = v1;
  v27 = v8;
  v28 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v29 = v7;
    v11 = (*(v3 + 48) + 16 * v6);
    v12 = v11[1];
    v30 = *v11;
    v13 = v3;
    v14 = *(*(v3 + 56) + 8 * v6);
    v15 = *(v31 + 16);
    v16 = *(v31 + 24);

    if (v15 >= v16 >> 1)
    {
      result = sub_1AB17785C((v16 > 1), v15 + 1, 1);
    }

    *(v31 + 16) = v15 + 1;
    v17 = (v31 + 24 * v15);
    v17[4] = v30;
    v17[5] = v12;
    v17[6] = v14;
    v9 = 1 << *(v13 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v3 = v13;
    v4 = v28;
    v18 = *(v28 + 8 * v10);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v27;
    if (v27 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v25 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1AB031480(v6, v27, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_1AB031480(v6, v27, 0);
    }

LABEL_4:
    v7 = v29 + 1;
    v6 = v9;
    if (v29 + 1 == v26)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1AB459380(double a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  if (qword_1EB432348 != -1)
  {
LABEL_37:
    v39 = a3;
    v40 = a1;
    swift_once();
    a3 = v39;
    a1 = v40;
  }

  v42 = byte_1EB46BDB0 & a3;
  if (byte_1EB46BDB0 & a3)
  {
    v5 = 0;
  }

  else
  {
    v6 = [objc_opt_self() serverTimeFromTimeInterval_];
    v5 = [v6 unsignedLongLongValue];
  }

  v7 = v4[9];
  swift_beginAccess();
  v8 = v4[4];
  v9 = v4[5];
  v47 = MEMORY[0x1E69E6158];
  *&v46 = v8;
  *(&v46 + 1) = v9;
  sub_1AB014B78(&v46, &v44);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v43[0] = v7;
  sub_1AB01AE18(&v44, 25705, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  v11 = v7;
  swift_beginAccess();

  v13 = sub_1AB459FAC(v12);

  v14 = v13[2];
  if (v14)
  {
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v17 = v15;
      while (1)
      {
        if (v17 >= v13[2])
        {
          __break(1u);
          goto LABEL_37;
        }

        v18 = v13[v17 + 4];
        if (*(v18 + 16))
        {
          break;
        }

LABEL_9:
        if (v14 == ++v17)
        {
          v11 = v7;
          goto LABEL_27;
        }
      }

      v19 = sub_1AB014DB4(100, 0xE100000000000000);
      if ((v20 & 1) == 0)
      {
        break;
      }

      sub_1AB0165C4(*(v18 + 56) + 32 * v19, &v46);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      if (*&v43[0] < v5)
      {
        break;
      }

      if (!*(v18 + 16))
      {
        break;
      }

      v21 = sub_1AB014DB4(115, 0xE100000000000000);
      if ((v22 & 1) == 0)
      {
        break;
      }

      sub_1AB0165C4(*(v18 + 56) + 32 * v21, &v46);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_9;
      }

      v41 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1AB2B00A4(0, *(v16 + 2) + 1, 1, v16);
      }

      v24 = *(v16 + 2);
      v23 = *(v16 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v27 = sub_1AB2B00A4((v23 > 1), v24 + 1, 1, v16);
        v25 = v24 + 1;
        v16 = v27;
      }

      v15 = v17 + 1;
      *(v16 + 2) = v25;
      *&v16[8 * v24 + 32] = v41;
      v26 = v14 - 1 == v17;
      v11 = v7;
      if (v26)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_9;
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_27:

  if (*(v16 + 2))
  {
    if (v42)
    {

      v29 = sub_1AB459FAC(v28);

      v30 = v29[2];
      if (v30)
      {
        v31 = v29[v30 + 3];

        if (*(v31 + 16))
        {
          v32 = sub_1AB014DB4(115, 0xE100000000000000);
          if (v33)
          {
            v34 = v32;

            sub_1AB0165C4(*(v31 + 56) + 32 * v34, &v44);

            sub_1AB014B78(&v44, &v46);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0);
            v35 = swift_allocObject();
            *(v35 + 16) = xmmword_1AB4D4720;
            sub_1AB0165C4(&v46, v35 + 32);
            v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DA8);
            *&v44 = v35;
            sub_1AB014B78(&v44, v43);
            v36 = swift_isUniquelyReferenced_nonNull_native();
            sub_1AB01AE18(v43, 0x6973736572706D69, 0xEF73656D69546E6FLL, v36);
            __swift_destroy_boxed_opaque_existential_1Tm(&v46);
            return v11;
          }
        }
      }
    }

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D8E8);
    *&v46 = v16;
    sub_1AB014B78(&v46, &v44);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(&v44, 0x6973736572706D69, 0xEF73656D69546E6FLL, v38);
    return v11;
  }

  else
  {

    return 0;
  }
}

void sub_1AB4598A4(double a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v31 = MEMORY[0x1E69E6158];
  *&v30 = v5;
  *(&v30 + 1) = v6;
  sub_1AB014B78(&v30, v29);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1AB01AE18(v29, 25705, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  swift_beginAccess();

  v9 = sub_1AB459FAC(v8);

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A228);
  *&v30 = v9;
  sub_1AB014B78(&v30, v29);

  v10 = swift_isUniquelyReferenced_nonNull_native();
  v28 = v4;
  sub_1AB01AE18(v29, 0x6E49646577656976, 0xEA00000000006F66, v10);
  v11 = [objc_opt_self() serverTimeFromTimeInterval_];
  v12 = [v11 unsignedLongLongValue];

  v13 = v9[2];
  if (v13)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v16 = v14;
      while (1)
      {
        if (v16 >= v9[2])
        {
          __break(1u);
          return;
        }

        v17 = v9[v16 + 4];
        if (*(v17 + 16))
        {
          break;
        }

LABEL_5:
        if (v13 == ++v16)
        {
          goto LABEL_21;
        }
      }

      v18 = sub_1AB014DB4(100, 0xE100000000000000);
      if ((v19 & 1) == 0)
      {
        break;
      }

      sub_1AB0165C4(*(v17 + 56) + 32 * v18, &v30);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      if (v12 >= v28)
      {
        break;
      }

      if (!*(v17 + 16))
      {
        break;
      }

      v20 = sub_1AB014DB4(115, 0xE100000000000000);
      if ((v21 & 1) == 0)
      {
        break;
      }

      sub_1AB0165C4(*(v17 + 56) + 32 * v20, &v30);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_5;
      }

      v27 = *&v29[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1AB2B00A4(0, *(v15 + 2) + 1, 1, v15);
      }

      v23 = *(v15 + 2);
      v22 = *(v15 + 3);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v25 = sub_1AB2B00A4((v22 > 1), v23 + 1, 1, v15);
        v24 = v23 + 1;
        v15 = v25;
      }

      v14 = v16 + 1;
      *(v15 + 2) = v24;
      *&v15[8 * v23 + 32] = v27;
      if (v13 - 1 == v16)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_5;
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_21:

  if (*(v15 + 2))
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D8E8);
    *&v30 = v15;
    sub_1AB014B78(&v30, v29);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v29, 0x6973736572706D69, 0xEF73656D69546E6FLL, v26);
  }

  else
  {
  }
}

uint64_t sub_1AB459CA0(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D8F8);
  result = sub_1AB461904();
  v6 = 0;
  v28 = a3;
  v29 = result;
  v9 = *(a3 + 64);
  v8 = a3 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v26 = result + 64;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v28 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v31 = *(*(v28 + 56) + 8 * v17);

      a1(&v30, &v31);

      if (v3)
      {
        break;
      }

      *(v26 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = v29;
      v21 = v30;
      v22 = (v29[6] + 16 * v17);
      *v22 = v19;
      v22[1] = v20;
      *(v29[7] + 8 * v17) = v21;
      v23 = v29[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_17;
      }

      v29[2] = v25;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    return v29;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_1AB459E64(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = [v4 serverTimeFromTimeInterval_];
  v6 = [v5 unsignedLongLongValue];

  v7 = [v4 serverTimeFromTimeInterval_];
  v8 = [v7 unsignedLongLongValue];

  if (v8 >= v6)
  {
    v9 = v8 - v6;
  }

  else
  {
    v9 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
  inited = swift_initStackObject();
  *(inited + 32) = 115;
  *(inited + 16) = xmmword_1AB4D47F0;
  v11 = MEMORY[0x1E69E76D8];
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = v6;
  *(inited + 72) = v11;
  *(inited + 80) = 100;
  *(inited + 120) = v11;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = v9;
  v12 = sub_1AB01B220(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0);
  swift_arrayDestroy();
  return v12;
}

void *sub_1AB459FAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0.0;
  v3 = (a1 + 40);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 0.0;
  v6 = 0x1E698C000uLL;
  v7 = &selRef_moveItemAtURL_toURL_error_;
  v8 = 1;
  v9 = 1;
  do
  {
    v10 = *v3;
    if (*(v3 - 1))
    {
      if ((v9 & 1) == 0)
      {
        v2 = *v3;
      }

      v8 &= v9;
    }

    else
    {
      if (v9)
      {
        v9 = 0;
        v5 = *v3;
        goto LABEL_6;
      }

      if (v8)
      {
        goto LABEL_13;
      }

      v11 = v2;
      if (v10 - v2 < 0.0166666667)
      {
        v2 = 0.0;
LABEL_13:
        v9 = 0;
        v8 = 1;
        goto LABEL_6;
      }

      if (v2 - v5 <= 0.0166666667)
      {
        v2 = 0.0;
        v9 = 0;
        v8 = 1;
        v5 = *v3;
      }

      else
      {
        v12 = v6;
        v13 = objc_opt_self();
        v14 = [v13 v7[262]];
        v15 = [v14 unsignedLongLongValue];

        v16 = v7;
        v17 = [v13 v7[262]];
        v18 = [v17 unsignedLongLongValue];

        v19 = v18 - v15;
        if (v18 < v15)
        {
          v19 = 0;
        }

        v46[0] = 115;
        v46[1] = 0xE100000000000000;
        v46[2] = v15;
        v46[5] = MEMORY[0x1E69E76D8];
        v47[0] = 100;
        v47[1] = 0xE100000000000000;
        v47[2] = v19;
        v47[5] = MEMORY[0x1E69E76D8];
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB436EF0);
        v20 = sub_1AB461924();

        sub_1AB014A58(v46, &v43, &qword_1EB439AA0);
        v21 = v43;
        v22 = v44;
        v23 = sub_1AB014DB4(v43, v44);
        if (v24)
        {
          goto LABEL_37;
        }

        *(v20 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v23;
        v25 = (v20[6] + 16 * v23);
        *v25 = v21;
        v25[1] = v22;
        sub_1AB014B78(v45, (v20[7] + 32 * v23));
        v26 = v20[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_38;
        }

        v20[2] = v28;
        sub_1AB014A58(v47, &v43, &qword_1EB439AA0);
        v29 = v43;
        v30 = v44;
        v31 = sub_1AB014DB4(v43, v44);
        if (v32)
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          v4 = sub_1AB2AFF70(0, v4[2] + 1, 1, v4);
          goto LABEL_33;
        }

        *(v20 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v31;
        v33 = (v20[6] + 16 * v31);
        *v33 = v29;
        v33[1] = v30;
        sub_1AB014B78(v45, (v20[7] + 32 * v31));
        v34 = v20[2];
        v27 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v27)
        {
          goto LABEL_38;
        }

        v20[2] = v35;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0);
        swift_arrayDestroy();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1AB2AFF70(0, v4[2] + 1, 1, v4);
        }

        v6 = v12;
        v37 = v4[2];
        v36 = v4[3];
        if (v37 >= v36 >> 1)
        {
          v4 = sub_1AB2AFF70((v36 > 1), v37 + 1, 1, v4);
        }

        v2 = 0.0;
        v9 = 0;
        v4[2] = v37 + 1;
        v4[v37 + 4] = v20;
        v8 = 1;
        v5 = v10;
        v7 = v16;
      }
    }

LABEL_6:
    v3 += 4;
    --v1;
  }

  while (v1);
  if (v9)
  {
    return v4;
  }

  if (v8)
  {
    sub_1AB45F964();
    v39 = v38;
  }

  else
  {
    v39 = v2;
  }

  v20 = sub_1AB459E64(v5, v39);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  v41 = v4[2];
  v40 = v4[3];
  if (v41 >= v40 >> 1)
  {
    v4 = sub_1AB2AFF70((v40 > 1), v41 + 1, 1, v4);
  }

  v4[2] = v41 + 1;
  v4[v41 + 4] = v20;
  return v4;
}

uint64_t sub_1AB45A3E8(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v31 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 56); ; i += 4)
  {
    v5 = *(i - 24);
    v6 = *(i - 2);
    v8 = *(i - 1);
    v7 = *i;
    swift_bridgeObjectRetain_n();
    v10 = sub_1AB014DB4(v8, v7);
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v1[3] < v13)
    {
      sub_1AB1D2158(v13, 1);
      v1 = v31;
      v15 = sub_1AB014DB4(v8, v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v10 = v15;
    }

    if (v14)
    {

      v17 = v1[7];
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      v30 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_1AB0796F4(0, *(v18 + 2) + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v23 = sub_1AB0796F4((v20 > 1), v21 + 1, 1, v18);
        v22 = v21 + 1;
        v18 = v23;
        *(v30 + 8 * v10) = v23;
      }

      *(v18 + 2) = v22;
      v4 = &v18[32 * v21];
      v4[32] = v5;
      *(v4 + 5) = v6;
      *(v4 + 6) = v8;
      *(v4 + 7) = v7;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43A070);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1AB4D4720;
      *(v24 + 32) = v5;
      *(v24 + 40) = v6;
      *(v24 + 48) = v8;
      *(v24 + 56) = v7;
      v1[(v10 >> 6) + 8] |= 1 << v10;
      v25 = (v1[6] + 16 * v10);
      *v25 = v8;
      v25[1] = v7;
      *(v1[7] + 8 * v10) = v24;
      v26 = v1[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v1[2] = v28;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

unint64_t sub_1AB45A620(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v4 = a3;
  for (i = (result + 48); ; i += 3)
  {
    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *v4;

    result = sub_1AB014DB4(v8, v7);
    v12 = v10[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      break;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      sub_1AB1D2158(v15, a2 & 1);
      result = sub_1AB014DB4(v8, v7);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_34;
      }

LABEL_11:
      v18 = *v4;
      if ((v16 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if (a2)
    {
      goto LABEL_11;
    }

    v28 = result;
    sub_1AB1D7B58();
    result = v28;
    v4 = a3;
    v18 = *a3;
    if ((v16 & 1) == 0)
    {
LABEL_25:
      v18[(result >> 6) + 8] |= 1 << result;
      v29 = (v18[6] + 16 * result);
      *v29 = v8;
      v29[1] = v7;
      *(v18[7] + 8 * result) = v9;
      v30 = v18[2];
      v14 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v14)
      {
        goto LABEL_30;
      }

      v18[2] = v31;
      goto LABEL_5;
    }

LABEL_12:
    v19 = *(v18[7] + 8 * result);
    v20 = *(v9 + 16);
    v21 = *(v19 + 2);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      goto LABEL_29;
    }

    v33 = result;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v24 = *(v19 + 3) >> 1, v24 < v22))
    {
      if (v21 <= v22)
      {
        v25 = v21 + v20;
      }

      else
      {
        v25 = v21;
      }

      v19 = sub_1AB0796F4(isUniquelyReferenced_nonNull_native, v25, 1, v19);
      v24 = *(v19 + 3) >> 1;
    }

    v4 = a3;
    if (*(v9 + 16))
    {
      if (v24 - *(v19 + 2) < v20)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      if (v20)
      {
        v26 = *(v19 + 2);
        v14 = __OFADD__(v26, v20);
        v27 = v26 + v20;
        if (v14)
        {
          goto LABEL_33;
        }

        *(v19 + 2) = v27;
      }
    }

    else
    {

      if (v20)
      {
        goto LABEL_31;
      }
    }

    *(v18[7] + 8 * v33) = v19;

LABEL_5:
    a2 = 1;
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

uint64_t sub_1AB45A888(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v23 = MEMORY[0x1E69E6158];
  *&v22 = v5;
  *(&v22 + 1) = v6;
  sub_1AB014B78(&v22, v21);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v4;
  sub_1AB01AE18(v21, 25705, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  v8 = v4;
  swift_beginAccess();

  v10 = sub_1AB45A3E8(v9);

  v11 = sub_1AB4590E8(v10);

  if (*(v11 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438190);
    v12 = sub_1AB461924();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC8];
  }

  *&v22 = v12;
  sub_1AB45A620(v11, 1, &v22);

  v14 = v22;
  MEMORY[0x1EEE9AC00](v13);
  v18[2] = v2;
  v18[3] = a1;
  v15 = sub_1AB459CA0(sub_1AB45DFB8, v18, v14);

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D8F0);
  *&v22 = v15;
  sub_1AB014B78(&v22, v21);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v19 = v8;
  sub_1AB01AE18(v21, 0xD000000000000012, 0x80000001AB5100D0, v16);
  return v19;
}

void sub_1AB45AAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v8 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v8[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v8 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      return;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    return;
  }

  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  if (qword_1EB434958 != -1)
  {
    swift_once();
  }

  v10 = sub_1AB026D00(qword_1EB434960, *algn_1EB434968);
  if (v10 != 2 && (v10 & 1) != 0)
  {
    v11 = *a4;
    if (*(*a4 + 16) && (v12 = sub_1AB014DB4(0x6775626564, 0xE500000000000000), (v13 & 1) != 0) && (sub_1AB0165C4(*(v11 + 56) + 32 * v12, &v19), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70), (swift_dynamicCast() & 1) != 0))
    {
      v14 = v17;
    }

    else
    {
      v14 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
    }

    sub_1AB014A58(a3, &v17, &unk_1EB437E60);
    if (v18)
    {
      sub_1AB014B78(&v17, &v19);
    }

    else
    {
      v15 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v20 = sub_1AB303A6C();
      *&v19 = v15;
      if (v18)
      {
        sub_1AB014AC0(&v17, &unk_1EB437E60);
      }
    }

    sub_1AB014B78(&v19, &v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(&v17, a1, a2, isUniquelyReferenced_nonNull_native);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
    *&v19 = v14;
    sub_1AB01AD48(&v19, 0x6775626564, 0xE500000000000000);
  }
}

uint64_t sub_1AB45AD4C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = a1;
  v7 = a1[3];
  if (!v7)
  {
    return 0;
  }

  v108 = a2;
  v8 = v6[2];
  v9 = v6[5];
  v115 = v6[4];
  v110 = v6[7];
  v111 = v6;
  v10 = *(a3 + 16);
  v112 = v6[8];

  swift_bridgeObjectRetain_n();
  v116 = v9;

  if (v10 && (v11 = sub_1AB014DB4(v8, v7), (v12 & 1) != 0))
  {
    v13 = *(*(a3 + 56) + 8 * v11);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v117 = v8;
  v118 = v7;
  v14 = *(v13 + 16);
  if (!v14)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_49;
  }

  v15 = 0;
  v16 = v13 + 40;
  v113 = *(v13 + 16);
  v107 = v14 - 1;
  v17 = MEMORY[0x1E69E7CC0];
  do
  {
    v109 = v17;
    v18 = (v16 + 16 * v15);
    v19 = v15;
    while (1)
    {
      if (v19 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_103;
      }

      v20 = *(v18 - 1);
      v114 = *v18;
      swift_beginAccess();
      v21 = v20[2];
      v22 = v20[3];
      v24 = v20[4];
      v23 = v20[5];
      v25 = v20[7];
      v26 = v20[8];
      v27 = v24 == v117 && v118 == v23;
      if (!v27 && (sub_1AB461DA4() & 1) == 0)
      {
        goto LABEL_9;
      }

      v28 = v24 == v115 && v23 == v116;
      if (!v28 && (sub_1AB461DA4() & 1) == 0)
      {
        if (!v22)
        {
          goto LABEL_41;
        }

        goto LABEL_36;
      }

      if (!v22)
      {
        goto LABEL_41;
      }

      v29 = v21 == v117 && v22 == v118;
      if (!v29 && (sub_1AB461DA4() & 1) == 0)
      {
        goto LABEL_36;
      }

      if (v26)
      {
        break;
      }

      if (v112)
      {
        goto LABEL_36;
      }

LABEL_9:
      ++v19;
      v18 += 2;
      if (v113 == v19)
      {
        v17 = v109;
        goto LABEL_49;
      }
    }

    if (v112 && (v25 == v110 && v26 == v112 || (sub_1AB461DA4() & 1) != 0))
    {
      goto LABEL_9;
    }

LABEL_36:
    v30 = v24 == v21 && v22 == v23;
    if (v30 || (sub_1AB461DA4() & 1) != 0)
    {
      goto LABEL_9;
    }

LABEL_41:

    v17 = v109;
    v127[0] = v109;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AB17787C(0, v109[2] + 1, 1);
      v17 = v127[0];
    }

    v32 = v17[2];
    v31 = v17[3];
    if (v32 >= v31 >> 1)
    {
      sub_1AB17787C((v31 > 1), v32 + 1, 1);
      v17 = v127[0];
    }

    v15 = v19 + 1;
    v17[2] = v32 + 1;
    v33 = &v17[2 * v32];
    v33[4] = v20;
    v33[5] = v114;
    v16 = v13 + 40;
  }

  while (v107 != v19);
LABEL_49:

  v35 = v17 + 2;
  v34 = v17[2];
  if (v34 <= 1)
  {
LABEL_83:
    if (!v34)
    {

      if (qword_1EB435768 != -1)
      {
        goto LABEL_105;
      }

      goto LABEL_87;
    }

    if (!*v35)
    {
      goto LABEL_104;
    }

    v79 = v17[5];
  }

  else
  {
    v36 = 0;
    v37 = v17 + 5;
    v17 = MEMORY[0x1E69E7CC0];
LABEL_51:
    v38 = &v37[2 * v36];
    v39 = v36;
    v40 = v111;
    while (v39 < *v35)
    {
      v41 = *(v38 - 1);
      v42 = *v38;
      v43 = v40[12];
      v44 = *(v41 + 96);
      if (v43)
      {
        if (v44)
        {
          v45 = v40[11] == *(v41 + 88) && v43 == v44;
          if (v45 || (v46 = sub_1AB461DA4(), v40 = v111, (v46 & 1) != 0))
          {
LABEL_62:

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v127[0] = v17;
            v48 = v17;
            v49 = v37;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1AB17787C(0, v48[2] + 1, 1);
              v48 = v127[0];
            }

            v51 = v48[2];
            v50 = v48[3];
            if (v51 >= v50 >> 1)
            {
              sub_1AB17787C((v50 > 1), v51 + 1, 1);
              v48 = v127[0];
            }

            v36 = v39 + 1;
            v48[2] = v51 + 1;
            v52 = &v48[2 * v51];
            v52[4] = v41;
            v52[5] = v42;
            v37 = v49;
            v17 = v48;
            if (v34 - 1 == v39)
            {
LABEL_67:

              v35 = v17 + 2;
              v34 = v17[2];
              if (v34 >= 2)
              {
                if (qword_1EB435768 != -1)
                {
                  swift_once();
                }

                sub_1AB4622E4();
                v54 = v128;
                v53 = v129;
                __swift_project_boxed_opaque_existential_1Tm(v127, v128);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
                v55 = swift_allocObject();
                *(v55 + 16) = xmmword_1AB4D4720;
                v126 = sub_1AB0168A8(0, 70, 0, MEMORY[0x1E69E7CC0]);
                v56._object = 0x80000001AB510090;
                v56._countAndFlagsBits = 0xD000000000000031;
                LogMessage.StringInterpolation.appendLiteral(_:)(v56);
                v125 = MEMORY[0x1E69E6530];
                v123 = v108;
                sub_1AB014A58(&v123, v119, &unk_1EB437E60);
                v120 = 0u;
                v121 = 0u;
                sub_1AB0169C4(v119, &v120);
                v122 = 0;
                v57 = v126;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v57 = sub_1AB0168A8(0, *(v57 + 2) + 1, 1, v57);
                }

                v59 = *(v57 + 2);
                v58 = *(v57 + 3);
                if (v59 >= v58 >> 1)
                {
                  v57 = sub_1AB0168A8((v58 > 1), v59 + 1, 1, v57);
                }

                *(v57 + 2) = v59 + 1;
                v60 = &v57[40 * v59];
                v61 = v120;
                v62 = v121;
                v60[64] = v122;
                *(v60 + 2) = v61;
                *(v60 + 3) = v62;
                v126 = v57;
                sub_1AB014AC0(&v123, &unk_1EB437E60);
                v63._countAndFlagsBits = 0x203A6469202CLL;
                v63._object = 0xE600000000000000;
                LogMessage.StringInterpolation.appendLiteral(_:)(v63);
                v64 = MEMORY[0x1E69E6158];
                v125 = MEMORY[0x1E69E6158];
                v123 = v115;
                v124 = v116;
                sub_1AB014A58(&v123, v119, &unk_1EB437E60);
                v120 = 0u;
                v121 = 0u;

                sub_1AB0169C4(v119, &v120);
                v122 = 0;
                v65 = v126;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v65 = sub_1AB0168A8(0, *(v65 + 2) + 1, 1, v65);
                  v126 = v65;
                }

                v67 = *(v65 + 2);
                v66 = *(v65 + 3);
                if (v67 >= v66 >> 1)
                {
                  v65 = sub_1AB0168A8((v66 > 1), v67 + 1, 1, v65);
                }

                *(v65 + 2) = v67 + 1;
                v68 = &v65[40 * v67];
                v69 = v120;
                v70 = v121;
                v68[64] = v122;
                *(v68 + 2) = v69;
                *(v68 + 3) = v70;
                v126 = v65;
                sub_1AB014AC0(&v123, &unk_1EB437E60);
                v71._countAndFlagsBits = 0x746E65726170202CLL;
                v71._object = 0xEC000000203A6449;
                LogMessage.StringInterpolation.appendLiteral(_:)(v71);
                v125 = v64;
                v123 = v117;
                v124 = v118;
                sub_1AB014A58(&v123, v119, &unk_1EB437E60);
                v120 = 0u;
                v121 = 0u;

                sub_1AB0169C4(v119, &v120);
                v122 = 0;
                v72 = v126;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v72 = sub_1AB0168A8(0, *(v72 + 2) + 1, 1, v72);
                  v126 = v72;
                }

                v74 = *(v72 + 2);
                v73 = *(v72 + 3);
                if (v74 >= v73 >> 1)
                {
                  v72 = sub_1AB0168A8((v73 > 1), v74 + 1, 1, v72);
                }

                *(v72 + 2) = v74 + 1;
                v75 = &v72[40 * v74];
                v76 = v120;
                v77 = v121;
                v75[64] = v122;
                *(v75 + 2) = v76;
                *(v75 + 3) = v77;
                v126 = v72;
                sub_1AB014AC0(&v123, &unk_1EB437E60);
                v78._countAndFlagsBits = 0;
                v78._object = 0xE000000000000000;
                LogMessage.StringInterpolation.appendLiteral(_:)(v78);
                *(v55 + 32) = v126;
                Logger.error(_:)(v55, v54, v53);

                __swift_destroy_boxed_opaque_existential_1Tm(v127);
                v34 = *v35;
              }

              goto LABEL_83;
            }

            goto LABEL_51;
          }
        }
      }

      else if (!v44)
      {
        goto LABEL_62;
      }

      ++v39;
      v38 += 2;
      if (v34 == v39)
      {
        goto LABEL_67;
      }
    }

LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    swift_once();
LABEL_87:
    sub_1AB4622E4();
    v81 = v128;
    v80 = v129;
    __swift_project_boxed_opaque_existential_1Tm(v127, v128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1AB4D4720;
    v126 = sub_1AB0168A8(0, 74, 0, MEMORY[0x1E69E7CC0]);
    v83._countAndFlagsBits = 0xD000000000000035;
    v83._object = 0x80000001AB510050;
    LogMessage.StringInterpolation.appendLiteral(_:)(v83);
    v125 = MEMORY[0x1E69E6530];
    v123 = v108;
    sub_1AB014A58(&v123, v119, &unk_1EB437E60);
    v120 = 0u;
    v121 = 0u;
    sub_1AB0169C4(v119, &v120);
    v122 = 0;
    v84 = v126;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = sub_1AB0168A8(0, *(v84 + 2) + 1, 1, v84);
    }

    v86 = *(v84 + 2);
    v85 = *(v84 + 3);
    if (v86 >= v85 >> 1)
    {
      v84 = sub_1AB0168A8((v85 > 1), v86 + 1, 1, v84);
    }

    *(v84 + 2) = v86 + 1;
    v87 = &v84[40 * v86];
    v88 = v120;
    v89 = v121;
    v87[64] = v122;
    *(v87 + 2) = v88;
    *(v87 + 3) = v89;
    v126 = v84;
    sub_1AB014AC0(&v123, &unk_1EB437E60);
    v90._countAndFlagsBits = 0x203A6469202CLL;
    v90._object = 0xE600000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v90);
    v91 = MEMORY[0x1E69E6158];
    v125 = MEMORY[0x1E69E6158];
    v123 = v115;
    v124 = v116;
    sub_1AB014A58(&v123, v119, &unk_1EB437E60);
    v120 = 0u;
    v121 = 0u;

    sub_1AB0169C4(v119, &v120);
    v122 = 0;
    v92 = v126;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v92 = sub_1AB0168A8(0, *(v92 + 2) + 1, 1, v92);
      v126 = v92;
    }

    v94 = *(v92 + 2);
    v93 = *(v92 + 3);
    if (v94 >= v93 >> 1)
    {
      v92 = sub_1AB0168A8((v93 > 1), v94 + 1, 1, v92);
    }

    *(v92 + 2) = v94 + 1;
    v95 = &v92[40 * v94];
    v96 = v120;
    v97 = v121;
    v95[64] = v122;
    *(v95 + 2) = v96;
    *(v95 + 3) = v97;
    v126 = v92;
    sub_1AB014AC0(&v123, &unk_1EB437E60);
    v98._countAndFlagsBits = 0x746E65726170202CLL;
    v98._object = 0xEC000000203A6449;
    LogMessage.StringInterpolation.appendLiteral(_:)(v98);
    v125 = v91;

    v123 = v117;
    v124 = v118;
    sub_1AB014A58(&v123, v119, &unk_1EB437E60);
    v120 = 0u;
    v121 = 0u;
    sub_1AB0169C4(v119, &v120);
    v122 = 0;
    v99 = v126;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v99 = sub_1AB0168A8(0, *(v99 + 2) + 1, 1, v99);
      v126 = v99;
    }

    v101 = *(v99 + 2);
    v100 = *(v99 + 3);
    if (v101 >= v100 >> 1)
    {
      v99 = sub_1AB0168A8((v100 > 1), v101 + 1, 1, v99);
    }

    *(v99 + 2) = v101 + 1;
    v102 = &v99[40 * v101];
    v103 = v120;
    v104 = v121;
    v102[64] = v122;
    *(v102 + 2) = v103;
    *(v102 + 3) = v104;
    v126 = v99;
    sub_1AB014AC0(&v123, &unk_1EB437E60);
    v105._countAndFlagsBits = 0;
    v105._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v105);
    *(v82 + 32) = v126;
    Logger.error(_:)(v82, v81, v80);

    __swift_destroy_boxed_opaque_existential_1Tm(v127);
    return 0;
  }

  return v79;
}

uint64_t sub_1AB45B9C4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (!a1[3])
  {
    v6 = a1[16];
    if (v6)
    {
      if (*(a3 + 16))
      {
        v7 = a1[15];

        v8 = sub_1AB014DB4(v7, v6);
        v10 = v9;

        if (v10)
        {
          return *(*(a3 + 56) + 16 * v8 + 8);
        }
      }

      if (qword_1EB435768 != -1)
      {
        swift_once();
      }

      sub_1AB4622E4();
      v12 = v40;
      v13 = v41;
      __swift_project_boxed_opaque_existential_1Tm(v39, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1AB4D4720;
      v38 = sub_1AB0168A8(0, 61, 0, MEMORY[0x1E69E7CC0]);
      v15._object = 0x80000001AB510050;
      v15._countAndFlagsBits = 0xD000000000000035;
      LogMessage.StringInterpolation.appendLiteral(_:)(v15);
      v37 = MEMORY[0x1E69E6530];
      v36[0] = a2;
      sub_1AB014A58(v36, v32, &unk_1EB437E60);
      v33 = 0u;
      v34 = 0u;
      sub_1AB0169C4(v32, &v33);
      v35 = 0;
      v16 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1AB0168A8(0, *(v16 + 2) + 1, 1, v16);
      }

      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      if (v18 >= v17 >> 1)
      {
        v16 = sub_1AB0168A8((v17 > 1), v18 + 1, 1, v16);
      }

      *(v16 + 2) = v18 + 1;
      v19 = &v16[40 * v18];
      v20 = v33;
      v21 = v34;
      v19[64] = v35;
      *(v19 + 2) = v20;
      *(v19 + 3) = v21;
      v38 = v16;
      sub_1AB014AC0(v36, &unk_1EB437E60);
      v22._countAndFlagsBits = 0x203A6469202CLL;
      v22._object = 0xE600000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v23 = a1[4];
      v24 = a1[5];
      v37 = MEMORY[0x1E69E6158];
      v36[0] = v23;
      v36[1] = v24;
      sub_1AB014A58(v36, v32, &unk_1EB437E60);
      v33 = 0u;
      v34 = 0u;

      sub_1AB0169C4(v32, &v33);
      v35 = 0;
      v25 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1AB0168A8(0, *(v25 + 2) + 1, 1, v25);
        v38 = v25;
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_1AB0168A8((v26 > 1), v27 + 1, 1, v25);
      }

      *(v25 + 2) = v27 + 1;
      v28 = &v25[40 * v27];
      v29 = v33;
      v30 = v34;
      v28[64] = v35;
      *(v28 + 2) = v29;
      *(v28 + 3) = v30;
      v38 = v25;
      sub_1AB014AC0(v36, &unk_1EB437E60);
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v31);
      *(v14 + 32) = v38;
      Logger.error(_:)(v14, v12, v13);

      __swift_destroy_boxed_opaque_existential_1Tm(v39);
    }
  }

  return 0;
}

uint64_t sub_1AB45BD64(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, char a7, double a8)
{
  *&v51 = a1;
  *(&v51 + 1) = a2;
  v9 = *a4;
  v12 = sub_1AB0CF520(a3, a6);
  v52 = *(v12 + 16);
  if (v52)
  {
    v47 = v10;
    v49 = v11;

    v14 = 0;
    v15 = (v12 + 40);
    v16 = MEMORY[0x1E69E7CC0];
    v50 = v12;
    while (1)
    {
      if (v14 >= *(v12 + 16))
      {
        __break(1u);
        return result;
      }

      v18 = *(v15 - 1);
      v17 = *v15;

      if (v9)
      {
        if (v9 == 1)
        {
          sub_1AB4598A4(a8);
          v20 = v19;
          if (v19)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v20 = sub_1AB45A888(a5);
          if (v20)
          {
LABEL_13:
            *&v54[0] = v20;
            v21 = qword_1EB4359F8;

            if (v21 != -1)
            {
              swift_once();
            }

            v22 = off_1EB435A00;
            os_unfair_lock_lock(off_1EB435A00 + 5);
            os_unfair_lock_opaque_low = LOBYTE(v22[4]._os_unfair_lock_opaque);
            os_unfair_lock_unlock(v22 + 5);
            if (os_unfair_lock_opaque_low == 2)
            {
              if ((os_variant_has_internal_content() & 1) == 0)
              {
                goto LABEL_17;
              }

LABEL_19:
              if (qword_1ED4D1D40 != -1)
              {
                swift_once();
              }

              if (qword_1EB434958 != -1)
              {
                swift_once();
              }

              v24 = sub_1AB026D00(qword_1EB434960, *algn_1EB434968);

              if (v24 != 2 && (v24 & 1) != 0)
              {
                swift_beginAccess();
                v25 = *(v18 + 24);
                if (v25)
                {
                  v26 = *(v18 + 16);
                  *(&v56 + 1) = MEMORY[0x1E69E6158];
                  *&v55 = v26;
                  *(&v55 + 1) = v25;
                }

                else
                {
                  v55 = 0u;
                  v56 = 0u;
                }

                sub_1AB45AAA8(0x6449746E65726170, 0xE800000000000000, &v55, v54);
                sub_1AB014AC0(&v55, &unk_1EB437E60);
                v27 = *(v18 + 48);
                if (v27 == -1)
                {
                  v55 = 0u;
                  v56 = 0u;
                }

                else
                {
                  *(&v56 + 1) = MEMORY[0x1E69E6530];
                  *&v55 = v27;
                }

                sub_1AB45AAA8(0xD000000000000015, 0x80000001AB510030, &v55, v54);
                sub_1AB014AC0(&v55, &unk_1EB437E60);
                v20 = *&v54[0];
              }
            }

            else
            {
              if (os_unfair_lock_opaque_low)
              {
                goto LABEL_19;
              }

LABEL_17:
            }

            *(&v56 + 1) = MEMORY[0x1E69E6158];
            v55 = v51;
            sub_1AB014B78(&v55, v54);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v57 = v20;
            sub_1AB01AE18(v54, 0xD000000000000012, 0x80000001AB5100F0, isUniquelyReferenced_nonNull_native);
            v29 = v57;
            *(&v56 + 1) = MEMORY[0x1E69E6530];
            *&v55 = v17;
            sub_1AB014B78(&v55, v54);
            v30 = swift_isUniquelyReferenced_nonNull_native();
            sub_1AB01AE18(v54, 0x6973736572706D69, 0xEC00000064496E6FLL, v30);
            v31 = v29;
            v57 = v29;
            if ((*(v18 + 144) & 1) == 0)
            {
              v32 = *(v18 + 136);
              os_unfair_lock_lock(v22 + 5);
              v33 = LOBYTE(v22[4]._os_unfair_lock_opaque);
              os_unfair_lock_unlock(v22 + 5);
              if (v33 == 2)
              {
                if ((os_variant_has_internal_content() & 1) == 0)
                {
                  goto LABEL_44;
                }
              }

              else if ((v33 & 1) == 0)
              {
                goto LABEL_44;
              }

              if (qword_1ED4D1D40 != -1)
              {
                swift_once();
              }

              if (qword_1EB434958 != -1)
              {
                swift_once();
              }

              v34 = sub_1AB026D00(qword_1EB434960, *algn_1EB434968);
              if (v34 != 2 && (v34 & 1) != 0)
              {
                *(&v56 + 1) = MEMORY[0x1E69E6530];
                *&v55 = v32;
                sub_1AB45AAA8(0xD000000000000015, 0x80000001AB510110, &v55, &v57);
                sub_1AB014AC0(&v55, &unk_1EB437E60);
                v31 = v57;
              }

LABEL_44:
              if (*(v31 + 16) && (v35 = sub_1AB014DB4(0x6973736572706D69, 0xEF7865646E496E6FLL), (v36 & 1) != 0))
              {
                sub_1AB0165C4(*(v31 + 56) + 32 * v35, &v55);
                sub_1AB014AC0(&v55, &unk_1EB437E60);
              }

              else
              {
                v55 = 0u;
                v56 = 0u;
                sub_1AB014AC0(&v55, &unk_1EB437E60);
                swift_beginAccess();
                if (*(v18 + 48) == -1 && (*(v18 + 144) & 1) == 0)
                {
                  v37 = *(v18 + 136);
                  *(&v56 + 1) = MEMORY[0x1E69E6530];
                  *&v55 = v37;
                  sub_1AB014B78(&v55, v54);
                  v38 = swift_isUniquelyReferenced_nonNull_native();
                  sub_1AB01AE18(v54, 0x6973736572706D69, 0xEF7865646E496E6FLL, v38);
                  v57 = v31;
                }
              }
            }

            swift_beginAccess();
            if (*(v18 + 24))
            {
              v39 = sub_1AB45AD4C(v18, v17, v49);
              if ((v40 & 1) == 0)
              {
                goto LABEL_52;
              }
            }

            else
            {
              v39 = sub_1AB45B9C4(v18, v17, v47);
              if ((v45 & 1) == 0)
              {
LABEL_52:
                *(&v56 + 1) = MEMORY[0x1E69E6530];
                *&v55 = v39;
                sub_1AB014B78(&v55, v54);
                v41 = v57;
                v42 = swift_isUniquelyReferenced_nonNull_native();
                sub_1AB01AE18(v54, 0xD000000000000012, 0x80000001AB510010, v42);
                v31 = v41;
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_1AB2AFF70(0, v16[2] + 1, 1, v16);
            }

            v44 = v16[2];
            v43 = v16[3];
            if (v44 >= v43 >> 1)
            {
              v16 = sub_1AB2AFF70((v43 > 1), v44 + 1, 1, v16);
            }

            v16[2] = v44 + 1;
            v16[v44 + 4] = v31;

            v12 = v50;
            goto LABEL_4;
          }
        }
      }

      else
      {
        v20 = sub_1AB459380(a8, a5, a7 & 1);
        if (v20)
        {
          goto LABEL_13;
        }
      }

LABEL_4:
      ++v14;
      v15 += 2;
      if (v52 == v14)
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_62;
      }
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_62:
  v46 = sub_1AB0CED94(v16);

  return v46;
}

uint64_t sub_1AB45C518(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AB45C560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB45C5C0(unint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, char a6, double a7)
{
  v167 = *a4;
  v182 = sub_1AB0CF520(a1, MEMORY[0x1E69E7CC0]);
  v164 = v9;
  v165 = v10;
  if (a2 >> 62)
  {
    goto LABEL_204;
  }

  v174 = a2 & 0xFFFFFFFFFFFFFF8;
  v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_205;
  }

  while (2)
  {
    v162 = a2;
    v171 = a2 + 32;
    v172 = a2 & 0xC000000000000001;
    a2 = 0;
    v168 = MEMORY[0x1E69E7CC0];
    v170 = v11;
LABEL_4:
    if (v172)
    {
      v12 = MEMORY[0x1AC59C990](a2, v162);
      v13 = __OFADD__(a2++, 1);
      if (v13)
      {
        goto LABEL_199;
      }
    }

    else
    {
      if (a2 >= *(v174 + 16))
      {
        goto LABEL_200;
      }

      v12 = *(v171 + 8 * a2);

      v13 = __OFADD__(a2++, 1);
      if (v13)
      {
        goto LABEL_199;
      }
    }

    v175 = a2;
    a2 = v12[13];

    os_unfair_lock_lock((a2 + 20));
    v14 = *(a2 + 16);
    os_unfair_lock_unlock((a2 + 20));

    v183 = v12;
    if (v14 || (v180 = *(v182 + 16)) == 0)
    {
LABEL_8:
      if (a6)
      {

        goto LABEL_10;
      }

      v46 = v12 + 13;
      v47 = MEMORY[0x1E69E7CC8];
      goto LABEL_52;
    }

    v15 = 0;
    v16 = (v182 + 40);
    while (1)
    {
      if (v15 >= *(v182 + 16))
      {
        __break(1u);
        goto LABEL_198;
      }

      v26 = *(v16 - 1);
      v25 = *v16;
      swift_beginAccess();
      v27 = v26[3];
      a2 = v26[5];
      v195 = v26[2];
      v197 = v26[4];
      v28 = v26[6];
      v18 = v26[7];
      v199 = v26[8];
      v29 = v12[6];
      if (!v29)
      {
        if (!a2)
        {

          goto LABEL_112;
        }

        v22 = v195;
        v21 = v197;
        sub_1AB1B0308(v195, v27, v197, a2);

        v24 = 0;
        v17 = 0;
        v19 = 0;
        v20 = 0;
        v33 = 0;
        v23 = 0;
        goto LABEL_15;
      }

      v178 = v25;
      v191 = v26[7];
      v30 = v12[9];
      v189 = v12[8];
      v184 = v12[7];
      v31 = v12;
      v32 = v12[5];
      v33 = v31[4];
      v193 = v31[3];

      v187 = v30;

      if (a2)
      {
        break;
      }

      v17 = v189;
      v18 = v191;
      v19 = v184;
      v20 = v32;
      v22 = v195;
      v21 = v197;
      v23 = v193;
      v24 = v187;
LABEL_15:
      *&v204 = v22;
      *(&v204 + 1) = v27;
      *v205 = v21;
      *&v205[8] = a2;
      *&v205[16] = v28;
      *&v205[24] = v18;
      *&v205[32] = v199;
      *&v205[40] = v23;
      v206 = v33;
      v207 = v20;
      v208 = v29;
      v209 = v19;
      v210 = v17;
      v211 = v24;
      sub_1AB014AC0(&v204, &qword_1EB43D8E0);
      v12 = v183;
LABEL_16:
      ++v15;
      v16 += 2;
      if (v180 == v15)
      {
        goto LABEL_8;
      }
    }

    v34 = v197 == v32 && v29 == a2;
    if (!v34 && (sub_1AB461DA4() & 1) == 0)
    {

      v176 = v32;
      v39 = v195;
      sub_1AB1B0308(v195, v27, v197, a2);
      v38 = v193;
      v35 = v33;
      v36 = v197;
      v37 = v176;
LABEL_42:
      sub_1AB1B02B8(v38, v35, v37, v29);
      goto LABEL_48;
    }

    if (!v27)
    {
      if (!v33)
      {
        goto LABEL_35;
      }

      sub_1AB1B0308(v195, 0, v197, a2);
      v40 = v33;
      v36 = v197;
      v41 = v32;
      v39 = v195;
      sub_1AB1B02B8(v193, v40, v41, v29);
      goto LABEL_48;
    }

    if (!v33)
    {

      v36 = v197;
      sub_1AB1B0308(v195, v27, v197, a2);
      v42 = v193;
      v43 = 0;
      v44 = v32;
      v45 = v29;
      goto LABEL_47;
    }

    if ((v195 != v193 || v27 != v33) && (sub_1AB461DA4() & 1) == 0)
    {

      sub_1AB1B0308(v195, v27, v197, a2);
      v35 = v33;
      v36 = v197;
      v37 = v32;
      v38 = v193;
      v39 = v195;
      goto LABEL_42;
    }

LABEL_35:
    if (v199)
    {
      if (v30)
      {
        if (v191 == v189 && v199 == v30)
        {

          sub_1AB1B0308(v195, v27, v197, a2);
          sub_1AB1B02B8(v193, v33, v32, v29);
          goto LABEL_111;
        }

        v169 = sub_1AB461DA4();

        sub_1AB1B0308(v195, v27, v197, a2);
        sub_1AB1B02B8(v193, v33, v32, v29);

        sub_1AB1B02B8(v195, v27, v197, a2);
        v12 = v183;
        if (v169)
        {
          v25 = v178;
          v83 = v167;
          if (!v167)
          {
            goto LABEL_104;
          }

LABEL_113:
          v84 = v25;
          if (v83 == 1)
          {
            sub_1AB4598A4(a7);
            if (!v85)
            {
              goto LABEL_115;
            }
          }

          else
          {
            v85 = sub_1AB45A888(a5);
            if (!v85)
            {
              goto LABEL_115;
            }
          }

          goto LABEL_105;
        }

        goto LABEL_49;
      }

      sub_1AB1B0308(v195, v27, v197, a2);
      v42 = v193;
      v43 = v33;
      v36 = v197;
      v44 = v32;
      v45 = v29;
LABEL_47:
      sub_1AB1B02B8(v42, v43, v44, v45);
      v39 = v195;
LABEL_48:

      sub_1AB1B02B8(v39, v27, v36, a2);
      v12 = v183;
LABEL_49:

      goto LABEL_16;
    }

    sub_1AB1B0308(v195, v27, v197, a2);
    if (v30)
    {
      sub_1AB1B02B8(v193, v33, v32, v29);
      v39 = v195;
      v36 = v197;
      goto LABEL_48;
    }

    sub_1AB1B02B8(v193, v33, v32, v29);
LABEL_111:

    v12 = v183;
    v25 = v178;
LABEL_112:
    sub_1AB1B02B8(v195, v27, v197, a2);
    v83 = v167;
    if (v167)
    {
      goto LABEL_113;
    }

LABEL_104:
    v84 = v25;
    v85 = sub_1AB459380(a7, a5, 0);
    if (!v85)
    {
LABEL_115:

      goto LABEL_8;
    }

LABEL_105:
    *&v212 = v85;
    v86 = qword_1EB4359F8;
    v87 = v85;

    if (v86 != -1)
    {
      swift_once();
    }

    v88 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v88[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v88 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      if ((os_variant_has_internal_content() & 1) == 0)
      {
        goto LABEL_109;
      }

LABEL_120:
      if (qword_1ED4D1D40 != -1)
      {
        swift_once();
      }

      if (qword_1EB434958 != -1)
      {
        swift_once();
      }

      v95 = sub_1AB026D00(qword_1EB434960, *algn_1EB434968);

      if (v95 == 2 || (v95 & 1) == 0)
      {
        v90 = v84;
      }

      else
      {
        v96 = v26[3];
        if (v96)
        {
          v97 = v26[2];
          *&v205[8] = MEMORY[0x1E69E6158];
          *&v204 = v97;
          *(&v204 + 1) = v96;
        }

        else
        {
          v204 = 0u;
          *v205 = 0u;
        }

        sub_1AB45AAA8(0x6449746E65726170, 0xE800000000000000, &v204, &v212);
        sub_1AB014AC0(&v204, &unk_1EB437E60);
        v154 = v26[6];
        v90 = v84;
        if (v154 == -1)
        {
          v204 = 0u;
          *v205 = 0u;
        }

        else
        {
          *&v205[8] = MEMORY[0x1E69E6530];
          *&v204 = v154;
        }

        sub_1AB45AAA8(0xD000000000000015, 0x80000001AB510030, &v204, &v212);
        sub_1AB014AC0(&v204, &unk_1EB437E60);
        v87 = v212;
      }
    }

    else
    {
      if (os_unfair_lock_opaque_low)
      {
        goto LABEL_120;
      }

LABEL_109:

      v90 = v84;
    }

    v46 = v12 + 13;
    *&v205[8] = MEMORY[0x1E69E6530];
    *&v204 = v90;
    sub_1AB014B78(&v204, &v212);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v202 = v87;
    sub_1AB01AE18(&v212, 0x6973736572706D69, 0xEC00000064496E6FLL, isUniquelyReferenced_nonNull_native);
    v47 = v202;
    if (v26[3])
    {
      v156 = sub_1AB45AD4C(v26, v90, v165);
      if (v157)
      {
        goto LABEL_194;
      }

LABEL_196:
      *&v205[8] = MEMORY[0x1E69E6530];
      *&v204 = v156;
      sub_1AB014B78(&v204, &v212);
      v159 = swift_isUniquelyReferenced_nonNull_native();
      *&v202 = v47;
      sub_1AB01AE18(&v212, 0xD000000000000012, 0x80000001AB510010, v159);

      v47 = v202;
    }

    else
    {
      v156 = sub_1AB45B9C4(v26, v90, v164);
      if ((v158 & 1) == 0)
      {
        goto LABEL_196;
      }

LABEL_194:
    }

LABEL_52:
    v48 = *v46;

    os_unfair_lock_lock((v48 + 20));
    v49 = *(v48 + 16);
    os_unfair_lock_unlock((v48 + 20));

    if (v49 > 1)
    {
      if (v49 == 2)
      {
        v50 = 0xE600000000000000;
        v51 = 0x6574656C6564;
      }

      else
      {
        v51 = 0;
        v50 = 0xE000000000000000;
      }
    }

    else if (v49)
    {
      v50 = 0xE400000000000000;
      v51 = 1702260589;
    }

    else
    {
      v50 = 0xE600000000000000;
      v51 = 0x747265736E69;
    }

    v216 = MEMORY[0x1E69E6158];
    *&v215 = v51;
    *(&v215 + 1) = v50;
    sub_1AB014B78(&v215, &v204);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    *&v212 = v47;
    sub_1AB01AE18(&v204, 0x795465676E616863, 0xEA00000000006570, v52);
    v53 = v212;
    v54 = v12[2];
    *&v205[8] = MEMORY[0x1E69E63B0];
    *&v204 = v54;
    sub_1AB014B78(&v204, &v212);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    *&v202 = v53;
    sub_1AB01AE18(&v212, 0x695465676E616863, 0xEA0000000000656DLL, v55);
    v56 = 0;
    v181 = v202;
    if (v12[6])
    {
      v57 = 0;
      if (v12[4])
      {
        v56 = v12[3];
      }
    }

    else
    {
      v57 = 0;
    }

    if (!*(a3 + 16))
    {
      goto LABEL_140;
    }

    v58 = sub_1AB07926C(v56, v57);
    v60 = v59;

    if ((v60 & 1) == 0)
    {
      goto LABEL_141;
    }

    v188 = *(*(*(a3 + 56) + 8 * v58) + 16);
    if (!v188)
    {
      goto LABEL_141;
    }

    v62 = 1;
    v186 = v61;
    while (2)
    {
      v192 = v62;
      v63 = *(v61 + 32);
      v64 = *(v61 + 48);
      v65 = *(v61 + 80);
      v213[1] = *(v61 + 64);
      v214 = v65;
      v212 = v63;
      v213[0] = v64;
      v66 = v12[6];
      if (v66)
      {
        v67 = v12[8];
        v190 = v12[7];
        v68 = v12[4];
        v200 = v12[5];
        v194 = v12[3];
        v196 = v12[9];

        v198 = v68;
      }

      else
      {
        v194 = 0;
        v196 = 0;
        v198 = 0;
        v200 = 0;
        v190 = 0;
        v67 = 0;
      }

      v69 = *(&v212 + 1);
      v70 = *(&v213[0] + 1);
      a2 = *&v213[0];
      v71 = v213[1];
      v72 = v214;
      if (!*&v213[1])
      {
        if (!v66)
        {
          sub_1AB45DF50(&v212, &v204);
          v91 = v69;
          v92 = a2;
          v93 = v70;
          v94 = 0;
          goto LABEL_133;
        }

        sub_1AB45DF50(&v212, &v204);
        goto LABEL_83;
      }

      if (!v66)
      {
        sub_1AB45DF50(&v212, &v204);
        sub_1AB1B0308(v69, a2, v70, v71);

LABEL_83:
        *&v204 = v69;
        *(&v204 + 1) = a2;
        *v205 = v70;
        *&v205[8] = v71;
        *&v205[24] = v72;
        *&v205[40] = v194;
        v206 = v198;
        v207 = v200;
        v208 = v66;
        v209 = v190;
        v210 = v67;
        v211 = v196;
        sub_1AB014AC0(&v204, &qword_1EB43D8E0);
        goto LABEL_98;
      }

      v185 = *(&v213[0] + 1);
      if (__PAIR128__(v66, v200) != *(v213 + 8) && (sub_1AB461DA4() & 1) == 0)
      {
        sub_1AB45DF50(&v212, &v204);
        v73 = a2;
        v81 = a2;
        a2 = v185;
        sub_1AB1B0308(v69, v81, v185, v71);
        v76 = v194;
        v77 = v198;
LABEL_93:
        v78 = v200;
        v79 = v66;
        goto LABEL_97;
      }

      v73 = a2;
      if (!a2)
      {
        v179 = v67;
        v75 = v196;
        v74 = v198;
        if (v198)
        {
          sub_1AB45DF50(&v212, &v204);
          a2 = v185;
          sub_1AB1B0308(v69, 0, v185, v71);
          v76 = v194;
          v77 = v198;
          v78 = v200;
          v79 = v66;
          goto LABEL_97;
        }

        goto LABEL_86;
      }

      v74 = v198;
      if (!v198)
      {
        sub_1AB45DF50(&v212, &v204);
        a2 = v185;
        sub_1AB1B0308(v69, v73, v185, v71);
        v76 = v194;
        v77 = 0;
        goto LABEL_93;
      }

      v179 = v67;
      v75 = v196;
      if (v69 != v194 || v73 != v198)
      {
        v74 = v198;
        if ((sub_1AB461DA4() & 1) == 0)
        {
LABEL_95:
          sub_1AB45DF50(&v212, &v204);
          a2 = v185;
          sub_1AB1B0308(v69, v73, v185, v71);
          v76 = v194;
          v77 = v198;
          v78 = v200;
          v79 = v66;
          goto LABEL_97;
        }
      }

LABEL_86:
      if (*(&v72 + 1))
      {
        if (v75)
        {
          if (v72 == __PAIR128__(v75, v179))
          {
            goto LABEL_132;
          }

          v177 = sub_1AB461DA4();
          sub_1AB45DF50(&v212, &v204);
          a2 = v73;
          sub_1AB1B0308(v69, v73, v185, v71);
          sub_1AB1B02B8(v194, v198, v200, v66);

          sub_1AB1B02B8(v69, v73, v185, v71);
          v12 = v183;
          v80 = v186;
          if (v177)
          {
            goto LABEL_134;
          }

LABEL_99:
          if (v188 == v192)
          {
            goto LABEL_140;
          }

          v62 = v192 + 1;
          v61 += 64;
          if (v192 >= *(v80 + 16))
          {
            goto LABEL_203;
          }

          continue;
        }

        v82 = v74;
        sub_1AB45DF50(&v212, &v204);
        a2 = v185;
        sub_1AB1B0308(v69, v73, v185, v71);
        v76 = v194;
        v77 = v82;
        v78 = v200;
        v79 = v66;
LABEL_97:
        sub_1AB1B02B8(v76, v77, v78, v79);

        sub_1AB1B02B8(v69, v73, a2, v71);
LABEL_98:
        v12 = v183;
        v80 = v186;
        goto LABEL_99;
      }

      break;
    }

    if (v75)
    {
      goto LABEL_95;
    }

LABEL_132:
    sub_1AB45DF50(&v212, &v204);
    sub_1AB1B0308(v69, v73, v185, v71);
    sub_1AB1B02B8(v194, v198, v200, v66);

    v91 = v69;
    v92 = v73;
    v93 = v185;
    v94 = v71;
LABEL_133:
    sub_1AB1B02B8(v91, v92, v93, v94);
    v12 = v183;
    v80 = v186;
LABEL_134:
    v98 = *v46;

    os_unfair_lock_lock((v98 + 20));
    v99 = *(v98 + 16);
    os_unfair_lock_unlock((v98 + 20));

    if (v99)
    {
      goto LABEL_140;
    }

    *&v204 = *(v61 + 32);
    v100 = sub_1AB461C44();
    *&v205[8] = MEMORY[0x1E69E6158];
    *&v204 = v100;
    *(&v204 + 1) = v101;
    sub_1AB014B78(&v204, &v202);
    v102 = swift_isUniquelyReferenced_nonNull_native();
    *&v201[0] = v181;
    sub_1AB01AE18(&v202, 0x6973736572706D69, 0xEF7865646E496E6FLL, v102);
    v181 = *&v201[0];
    v103 = v192;
    if (v192 == 1)
    {
      goto LABEL_138;
    }

    if (v192 - 1 <= *(v80 + 16))
    {
      v104 = *(v61 - 8);
      v105 = *v61;
      *&v205[8] = MEMORY[0x1E69E6158];
      *&v204 = v104;
      *(&v204 + 1) = v105;
      sub_1AB014B78(&v204, &v202);

      v106 = swift_isUniquelyReferenced_nonNull_native();
      *&v201[0] = v181;
      sub_1AB01AE18(&v202, 0xD000000000000010, 0x80000001AB50FFF0, v106);
      v181 = *&v201[0];
      v103 = v192;
LABEL_138:
      if (v103 < *(v80 + 16))
      {
        v107 = *(v61 + 96);
        v108 = *(v61 + 112);
        v109 = *(v61 + 144);
        *&v205[16] = *(v61 + 128);
        *&v205[32] = v109;
        v204 = v107;
        *v205 = v108;
        sub_1AB45DF50(&v204, &v202);

        v111 = *&v205[8];
        v110 = *&v205[16];

        sub_1AB45DF88(&v204);
        *(&v203[0] + 1) = MEMORY[0x1E69E6158];
        *&v202 = v111;
        *(&v202 + 1) = v110;
        sub_1AB014B78(&v202, v201);
        v112 = swift_isUniquelyReferenced_nonNull_native();
        sub_1AB01AE18(v201, 0xD000000000000011, 0x80000001AB50FFD0, v112);
        goto LABEL_141;
      }

LABEL_140:

LABEL_141:
      a2 = v12[14];
      if (!a2)
      {
        v113 = v181;
        v145 = v12[6];
        if (v145)
        {
          goto LABEL_179;
        }

        goto LABEL_173;
      }

      v113 = v181;

      v114 = swift_isUniquelyReferenced_nonNull_native();
      *&v201[0] = v181;
      v115 = 1 << *(a2 + 32);
      if (v115 < 64)
      {
        v116 = ~(-1 << v115);
      }

      else
      {
        v116 = -1;
      }

      v117 = v116 & *(a2 + 64);
      v118 = (v115 + 63) >> 6;

      v119 = 0;
      if (!v117)
      {
LABEL_149:
        if (v118 <= v119 + 1)
        {
          v123 = v119 + 1;
        }

        else
        {
          v123 = v118;
        }

        v124 = v123 - 1;
        while (1)
        {
          v122 = v119 + 1;
          if (__OFADD__(v119, 1))
          {
            break;
          }

          if (v122 >= v118)
          {
            v117 = 0;
            memset(v213, 0, sizeof(v213));
            v119 = v124;
            v212 = 0u;
            goto LABEL_158;
          }

          v117 = *(a2 + 64 + 8 * v122);
          ++v119;
          if (v117)
          {
            v119 = v122;
            goto LABEL_157;
          }
        }

LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        v174 = a2 & 0xFFFFFFFFFFFFFF8;
        v11 = sub_1AB4618F4();
        if (!v11)
        {
LABEL_205:
          v168 = MEMORY[0x1E69E7CC0];
          goto LABEL_206;
        }

        continue;
      }

      while (2)
      {
        while (2)
        {
          v122 = v119;
LABEL_157:
          v125 = __clz(__rbit64(v117));
          v117 &= v117 - 1;
          v126 = v125 | (v122 << 6);
          v127 = (*(a2 + 48) + 16 * v126);
          v129 = *v127;
          v128 = v127[1];
          sub_1AB0165C4(*(a2 + 56) + 32 * v126, &v202);
          *&v212 = v129;
          *(&v212 + 1) = v128;
          sub_1AB014B78(&v202, v213);

LABEL_158:
          v202 = v212;
          v203[0] = v213[0];
          v203[1] = v213[1];
          v130 = *(&v212 + 1);
          if (!*(&v212 + 1))
          {
            memset(v205, 0, 32);
            v204 = 0u;
LABEL_178:

            v12 = v183;
            v145 = v183[6];
            if (v145)
            {
LABEL_179:
              v150 = v12[5];
              *&v205[8] = MEMORY[0x1E69E6158];
              *&v204 = v150;
              *(&v204 + 1) = v145;
              sub_1AB014B78(&v204, &v212);

              v151 = swift_isUniquelyReferenced_nonNull_native();
              *&v202 = v113;
              sub_1AB01AE18(&v212, 25705, 0xE200000000000000, v151);
              v113 = v202;
              goto LABEL_182;
            }

LABEL_173:
            v146 = sub_1AB014DB4(25705, 0xE200000000000000);
            if (v147)
            {
              v148 = v146;
              v149 = swift_isUniquelyReferenced_nonNull_native();
              *&v212 = v113;
              if ((v149 & 1) == 0)
              {
                sub_1AB0676CC();
                v113 = v212;
              }

              sub_1AB014B78((v113[7] + 32 * v148), &v204);
              sub_1AB18F158(v148, v113);
            }

            else
            {
              v204 = 0u;
              *v205 = 0u;
            }

            sub_1AB014AC0(&v204, &unk_1EB437E60);
LABEL_182:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v168 = sub_1AB2AFF70(0, v168[2] + 1, 1, v168);
            }

            v153 = v168[2];
            v152 = v168[3];
            if (v153 >= v152 >> 1)
            {
              v168 = sub_1AB2AFF70((v152 > 1), v153 + 1, 1, v168);
            }

            v168[2] = v153 + 1;
            v168[v153 + 4] = v113;
LABEL_10:
            a2 = v175;
            if (v175 == v170)
            {
LABEL_206:

              v160 = sub_1AB0CED94(v168);

              return v160;
            }

            goto LABEL_4;
          }

          v131 = v202;
          sub_1AB0165C4(v203, v205);
          *&v204 = v131;
          *(&v204 + 1) = v130;

          sub_1AB014AC0(&v202, &qword_1EB43A620);
          v132 = *(&v204 + 1);
          if (!*(&v204 + 1))
          {
            goto LABEL_178;
          }

          v133 = v204;
          sub_1AB014B78(v205, &v212);
          v134 = sub_1AB014DB4(v133, v132);
          v136 = v113[2];
          v137 = (v135 & 1) == 0;
          v13 = __OFADD__(v136, v137);
          v138 = v136 + v137;
          if (v13)
          {
            goto LABEL_201;
          }

          v139 = v135;
          if (v113[3] < v138)
          {
            sub_1AB01AF68(v138, v114 & 1);
            v134 = sub_1AB014DB4(v133, v132);
            if ((v139 & 1) != (v140 & 1))
            {
              goto LABEL_208;
            }

            goto LABEL_165;
          }

          if (v114)
          {
LABEL_165:
            v113 = *&v201[0];
            if (v139)
            {
              goto LABEL_147;
            }
          }

          else
          {
            v144 = v134;
            sub_1AB0676CC();
            v134 = v144;
            v113 = *&v201[0];
            if (v139)
            {
LABEL_147:
              v120 = v134;

              v121 = (v113[7] + 32 * v120);
              __swift_destroy_boxed_opaque_existential_1Tm(v121);
              sub_1AB014B78(&v212, v121);
              v114 = 1;
              if (!v117)
              {
                goto LABEL_149;
              }

              continue;
            }
          }

          break;
        }

        v113[(v134 >> 6) + 8] |= 1 << v134;
        v141 = (v113[6] + 16 * v134);
        *v141 = v133;
        v141[1] = v132;
        sub_1AB014B78(&v212, (v113[7] + 32 * v134));
        v142 = v113[2];
        v13 = __OFADD__(v142, 1);
        v143 = v142 + 1;
        if (v13)
        {
          goto LABEL_202;
        }

        v113[2] = v143;
        v114 = 1;
        if (!v117)
        {
          goto LABEL_149;
        }

        continue;
      }
    }

    break;
  }

  __break(1u);
LABEL_208:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

void *sub_1AB45DFB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AB459FAC(*a1);
  *a2 = result;
  return result;
}

void JEPluralCategoryForNumber_cold_1(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = [a1 localeIdentifier];
  v2 = 138412290;
  v3 = v1;
  _os_log_fault_impl(&dword_1AB012000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Could not determine plural category for locale: %@", &v2, 0xCu);
}

void sub_1AB45E178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void InitializeProcessLaunchTimeInterval_cold_1(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = strerror(a1);
  _os_log_fault_impl(&dword_1AB012000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Could not get process launch time, reason: %{public}s", &v1, 0xCu);
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CGSizeApplyAffineTransform(CGSize size, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAFE0](t, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}