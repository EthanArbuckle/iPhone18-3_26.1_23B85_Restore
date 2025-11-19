unint64_t sub_21A021038()
{
  result = qword_27CCDB9D0;
  if (!qword_27CCDB9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB9D0);
  }

  return result;
}

uint64_t sub_21A02108C()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A0211BC()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A0212E8()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A021428()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t NewsLiveActivityContent.Event.rawValue.getter()
{
  if (*v0)
  {
    return 6581861;
  }

  else
  {
    return 0x657461647075;
  }
}

uint64_t sub_21A021650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7565409 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21A0E6C5C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21A0216D8(uint64_t a1)
{
  v2 = sub_21A024518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A021714(uint64_t a1)
{
  v2 = sub_21A024518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewsLiveActivityPushPayload.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB9D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A024518();
  sub_21A0E6EAC();
  type metadata accessor for NewsLiveActivityContent(0);
  sub_21A0245DC(&qword_27CCDB9E8, type metadata accessor for NewsLiveActivityContent);
  sub_21A0E6BBC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t NewsLiveActivityPushPayload.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21A0E495C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v31 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v31 - v18;
  sub_21A0E626C();
  type metadata accessor for NewsLiveActivityContentState(0);
  NewsLiveActivityContentState.Payload.hash(into:)(a1, v20);
  v21 = type metadata accessor for NewsLiveActivityContent(0);
  sub_21A02456C(v1 + v21[5], v19);
  v31 = *(v5 + 48);
  if (v31(v19, 1, v4) == 1)
  {
    v22 = v5;
    v23 = v8;
    sub_21A0E6DCC();
    v24 = v22;
  }

  else
  {
    (*(v5 + 32))(v8, v19, v4);
    sub_21A0E6DCC();
    sub_21A0245DC(&qword_27CCD9828, MEMORY[0x277CC9578]);
    sub_21A0E615C();
    v25 = *(v5 + 8);
    v26 = v5;
    v23 = v8;
    v25(v8, v4);
    v24 = v26;
  }

  sub_21A02456C(v2 + v21[6], v16);
  v27 = v31;
  if (v31(v16, 1, v4) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    (*(v24 + 32))(v23, v16, v4);
    sub_21A0E6DCC();
    sub_21A0245DC(&qword_27CCD9828, MEMORY[0x277CC9578]);
    sub_21A0E615C();
    (*(v24 + 8))(v23, v4);
  }

  v28 = *(v2 + v21[7]);
  if (v28 == 0.0)
  {
    v28 = 0.0;
  }

  MEMORY[0x21CED24C0](*&v28);
  if (*(v2 + v21[8]) == 2)
  {
    sub_21A0E6DCC();
  }

  else
  {
    sub_21A0E6DCC();
    sub_21A0E626C();
  }

  v29 = v32;
  sub_21A02456C(v2 + v21[9], v32);
  if (v27(v29, 1, v4) == 1)
  {
    return sub_21A0E6DCC();
  }

  (*(v24 + 32))(v23, v29, v4);
  sub_21A0E6DCC();
  sub_21A0245DC(&qword_27CCD9828, MEMORY[0x277CC9578]);
  sub_21A0E615C();
  return (*(v24 + 8))(v23, v4);
}

uint64_t NewsLiveActivityPushPayload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for NewsLiveActivityContent(0);
  MEMORY[0x28223BE20](v4, v5);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB9F0);
  v19 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for NewsLiveActivityPushPayload(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A024518();
  sub_21A0E6E7C();
  if (!v2)
  {
    v15 = v18;
    sub_21A0245DC(&qword_27CCDB9F8, type metadata accessor for NewsLiveActivityContent);
    v16 = v20;
    sub_21A0E6ADC();
    (*(v19 + 8))(v10, v7);
    sub_21A024644(v16, v14, type metadata accessor for NewsLiveActivityContent);
    sub_21A024644(v14, v15, type metadata accessor for NewsLiveActivityPushPayload);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21A022014(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB9D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A024518();
  sub_21A0E6EAC();
  type metadata accessor for NewsLiveActivityContent(0);
  sub_21A0245DC(&qword_27CCDB9E8, type metadata accessor for NewsLiveActivityContent);
  sub_21A0E6BBC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21A0221D8()
{
  sub_21A0E626C();
}

uint64_t sub_21A0222F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A024E94();
  *a1 = result;
  return result;
}

void sub_21A022328(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006574617473;
  v4 = 0x2D746E65746E6F63;
  v5 = 0xEF65726F63732D65;
  v6 = 0x636E6176656C6572;
  v7 = 0xE500000000000000;
  v8 = 0x746E657665;
  if (v2 != 4)
  {
    v8 = 0x617373696D736964;
    v7 = 0xEE00657461642D6CLL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000070;
  v10 = 0x6D617473656D6974;
  if (v2 != 1)
  {
    v10 = 0x61642D656C617473;
    v9 = 0xEA00000000006574;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_21A022410()
{
  v1 = *v0;
  v2 = 0x2D746E65746E6F63;
  v3 = 0x636E6176656C6572;
  v4 = 0x746E657665;
  if (v1 != 4)
  {
    v4 = 0x617373696D736964;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D617473656D6974;
  if (v1 != 1)
  {
    v5 = 0x61642D656C617473;
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

uint64_t sub_21A0224F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A024E94();
  *a1 = result;
  return result;
}

uint64_t sub_21A022528(uint64_t a1)
{
  v2 = sub_21A024714();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A022564(uint64_t a1)
{
  v2 = sub_21A024714();

  return MEMORY[0x2821FE720](a1, v2);
}

NewsLiveActivitiesCore::NewsLiveActivityContent::Event_optional __swiftcall NewsLiveActivityContent.Event.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21A0E6A0C();

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

uint64_t sub_21A022604(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 6581861;
  }

  else
  {
    v3 = 0x657461647075;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 6581861;
  }

  else
  {
    v5 = 0x657461647075;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
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
    v8 = sub_21A0E6C5C();
  }

  return v8 & 1;
}

uint64_t sub_21A0226A0()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A022718()
{
  sub_21A0E626C();
}

uint64_t sub_21A02277C()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A0227F0@<X0>(char *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

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

void sub_21A022850(uint64_t *a1@<X8>)
{
  v2 = 6581861;
  if (!*v1)
  {
    v2 = 0x657461647075;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t NewsLiveActivityContent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewsLiveActivityContent(0) + 20);

  return sub_21A02456C(v3, a1);
}

uint64_t NewsLiveActivityContent.staleDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewsLiveActivityContent(0) + 24);

  return sub_21A02456C(v3, a1);
}

uint64_t NewsLiveActivityContent.event.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NewsLiveActivityContent(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t NewsLiveActivityContent.dismissalDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewsLiveActivityContent(0) + 36);

  return sub_21A02456C(v3, a1);
}

uint64_t NewsLiveActivityContent.init(state:timestamp:staleDate:relevanceScore:event:dismissalDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v12 = *a4;
  sub_21A024644(a1, a6, type metadata accessor for NewsLiveActivityContentState);
  v13 = type metadata accessor for NewsLiveActivityContent(0);
  sub_219FC26CC(a2, a6 + v13[5]);
  sub_219FC26CC(a3, a6 + v13[6]);
  *(a6 + v13[7]) = a7;
  *(a6 + v13[8]) = v12;
  v14 = a6 + v13[9];

  return sub_219FC26CC(a5, v14);
}

uint64_t NewsLiveActivityContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v43 = &v40 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v40 - v11;
  v44 = type metadata accessor for NewsLiveActivityContentState(0);
  MEMORY[0x28223BE20](v44, v13);
  v45 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBA00);
  v46 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v40 - v17;
  v19 = type metadata accessor for NewsLiveActivityContent(0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A024714();
  v23 = v47;
  sub_21A0E6E7C();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v47 = v12;
  v54 = 0;
  sub_21A0245DC(&qword_280C88E60, type metadata accessor for NewsLiveActivityContentState);
  v24 = v45;
  sub_21A0E6ADC();
  v26 = v22;
  sub_21A024644(v24, v22, type metadata accessor for NewsLiveActivityContentState);
  v53 = 3;
  sub_21A0E6ABC();
  *&v22[v19[7]] = v27;
  v51 = 4;
  sub_21A024768();
  sub_21A0E6A8C();
  v28 = a1;
  *(v26 + v19[8]) = v52;
  v50 = 1;
  sub_21A0E6A6C();
  v44 = v18;
  v45 = v15;
  if (v29)
  {
    v30 = 1;
    v31 = v47;
  }

  else
  {
    v31 = v47;
    sub_21A0E490C();
    v30 = 0;
  }

  v32 = sub_21A0E495C();
  v33 = *(*(v32 - 8) + 56);
  v33(v31, v30, 1, v32);
  sub_219FC26CC(v31, v26 + v19[5]);
  v49 = 2;
  sub_21A0E6A6C();
  if (v34)
  {
    v35 = 1;
    v36 = v43;
  }

  else
  {
    v36 = v43;
    sub_21A0E490C();
    v35 = 0;
  }

  v33(v36, v35, 1, v32);
  sub_219FC26CC(v36, v26 + v19[6]);
  v48 = 5;
  sub_21A0E6A6C();
  if (v37)
  {
    v38 = 1;
    v39 = v42;
  }

  else
  {
    v39 = v42;
    sub_21A0E490C();
    v38 = 0;
  }

  (*(v46 + 8))(v44, v45);
  v33(v39, v38, 1, v32);
  sub_219FC26CC(v39, v26 + v19[9]);
  sub_21A0246AC(v26, v41, type metadata accessor for NewsLiveActivityContent);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return sub_21A0247BC(v26, type metadata accessor for NewsLiveActivityContent);
}

uint64_t NewsLiveActivityContent.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v39 = &v34 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBA18);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v34 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A024714();
  sub_21A0E6EAC();
  v47 = 0;
  type metadata accessor for NewsLiveActivityContentState(0);
  sub_21A0245DC(qword_280C88E78, type metadata accessor for NewsLiveActivityContentState);
  v19 = v2;
  v20 = v40;
  sub_21A0E6BBC();
  if (v20)
  {
    return (*(v15 + 8))(v18, v14);
  }

  v22 = v15;
  v23 = type metadata accessor for NewsLiveActivityContent(0);
  v46 = 3;
  sub_21A0E6B9C();
  v24 = v19;
  v45 = *(v19 + v23[8]);
  v44 = 4;
  sub_21A02481C();
  sub_21A0E6B6C();
  v25 = v13;
  sub_21A02456C(v19 + v23[5], v13);
  v26 = sub_21A0E495C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v36 = v27 + 48;
  v37 = v28;
  LODWORD(v40) = v28(v25, 1, v26);
  v35 = v27;
  if (v40 == 1)
  {
    sub_219F6409C(v25, &qword_27CCD97F0);
  }

  else
  {
    sub_21A0E491C();
    (*(v27 + 8))(v25, v26);
  }

  v43 = 1;
  sub_21A0E6B4C();
  v40 = v18;
  v29 = v39;
  sub_21A02456C(v24 + v23[6], v39);
  v30 = v37(v29, 1, v26);
  v34 = v26;
  if (v30 == 1)
  {
    sub_219F6409C(v29, &qword_27CCD97F0);
  }

  else
  {
    sub_21A0E491C();
    (*(v35 + 8))(v29, v26);
  }

  v42 = 2;
  v31 = v40;
  sub_21A0E6B4C();
  v32 = v38;
  sub_21A02456C(v24 + v23[9], v38);
  v33 = v34;
  if (v37(v32, 1, v34) == 1)
  {
    sub_219F6409C(v32, &qword_27CCD97F0);
  }

  else
  {
    sub_21A0E491C();
    (*(v35 + 8))(v32, v33);
  }

  v41 = 5;
  sub_21A0E6B4C();
  return (*(v22 + 8))(v31, v14);
}

uint64_t NewsLiveActivityContent.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21A0E495C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v31 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v31 - v18;
  sub_21A0E626C();
  type metadata accessor for NewsLiveActivityContentState(0);
  NewsLiveActivityContentState.Payload.hash(into:)(a1, v20);
  v21 = type metadata accessor for NewsLiveActivityContent(0);
  sub_21A02456C(v1 + v21[5], v19);
  v31 = *(v5 + 48);
  if (v31(v19, 1, v4) == 1)
  {
    v22 = v5;
    v23 = v8;
    sub_21A0E6DCC();
    v24 = v22;
  }

  else
  {
    (*(v5 + 32))(v8, v19, v4);
    sub_21A0E6DCC();
    sub_21A0245DC(&qword_27CCD9828, MEMORY[0x277CC9578]);
    sub_21A0E615C();
    v25 = *(v5 + 8);
    v26 = v5;
    v23 = v8;
    v25(v8, v4);
    v24 = v26;
  }

  sub_21A02456C(v2 + v21[6], v16);
  v27 = v31;
  if (v31(v16, 1, v4) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    (*(v24 + 32))(v23, v16, v4);
    sub_21A0E6DCC();
    sub_21A0245DC(&qword_27CCD9828, MEMORY[0x277CC9578]);
    sub_21A0E615C();
    (*(v24 + 8))(v23, v4);
  }

  v28 = *(v2 + v21[7]);
  if (v28 == 0.0)
  {
    v28 = 0.0;
  }

  MEMORY[0x21CED24C0](*&v28);
  if (*(v2 + v21[8]) == 2)
  {
    sub_21A0E6DCC();
  }

  else
  {
    sub_21A0E6DCC();
    sub_21A0E626C();
  }

  v29 = v32;
  sub_21A02456C(v2 + v21[9], v32);
  if (v27(v29, 1, v4) == 1)
  {
    return sub_21A0E6DCC();
  }

  (*(v24 + 32))(v23, v29, v4);
  sub_21A0E6DCC();
  sub_21A0245DC(&qword_27CCD9828, MEMORY[0x277CC9578]);
  sub_21A0E615C();
  return (*(v24 + 8))(v23, v4);
}

uint64_t sub_21A023BAC(void (*a1)(_BYTE *))
{
  sub_21A0E6DAC();
  a1(v3);
  return sub_21A0E6DFC();
}

uint64_t sub_21A023C3C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_21A0E6DAC();
  a3(v5);
  return sub_21A0E6DFC();
}

uint64_t sub_21A023CA0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_21A0E6DAC();
  a4(v6);
  return sub_21A0E6DFC();
}

BOOL _s22NewsLiveActivitiesCore0aB19ActivityPushPayloadV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_21A0E495C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v69[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v69[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v69[-v16];
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v69[-v19];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98F8);
  v22 = MEMORY[0x28223BE20](v79, v21);
  v78 = &v69[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v69[-v26];
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v69[-v29];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21A0E6C5C() & 1) == 0)
  {
    return 0;
  }

  v31 = type metadata accessor for NewsLiveActivityContentState(0);
  if ((_s22NewsLiveActivitiesCore0aB20ActivityContentStateV7PayloadO2eeoiySbAE_AEtFZ_0(a1 + *(v31 + 20), a2 + *(v31 + 20)) & 1) == 0)
  {
    return 0;
  }

  v74 = v13;
  v75 = v17;
  v76 = v8;
  v77 = type metadata accessor for NewsLiveActivityContent(0);
  v32 = v77[5];
  v33 = *(v79 + 48);
  sub_21A02456C(a1 + v32, v30);
  sub_21A02456C(a2 + v32, &v30[v33]);
  v34 = v5 + 48;
  v35 = *(v5 + 48);
  if (v35(v30, 1, v4) == 1)
  {
    if (v35(&v30[v33], 1, v4) == 1)
    {
      v73 = v5;
      sub_219F6409C(v30, &qword_27CCD97F0);
      goto LABEL_12;
    }

LABEL_10:
    v36 = v30;
LABEL_18:
    sub_219F6409C(v36, &qword_27CCD98F8);
    return 0;
  }

  sub_21A02456C(v30, v20);
  v72 = v35;
  if (v35(&v30[v33], 1, v4) == 1)
  {
    (*(v5 + 8))(v20, v4);
    goto LABEL_10;
  }

  v37 = *(v5 + 32);
  v71 = v5 + 48;
  v38 = v76;
  v37(v76, &v30[v33], v4);
  sub_21A0245DC(&qword_27CCD9900, MEMORY[0x277CC9578]);
  v70 = sub_21A0E61CC();
  v73 = v5;
  v39 = *(v5 + 8);
  v40 = v38;
  v34 = v71;
  v39(v40, v4);
  v39(v20, v4);
  sub_219F6409C(v30, &qword_27CCD97F0);
  v35 = v72;
  if ((v70 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v41 = v77;
  v42 = v77[6];
  v43 = *(v79 + 48);
  sub_21A02456C(a1 + v42, v27);
  sub_21A02456C(a2 + v42, &v27[v43]);
  if (v35(v27, 1, v4) == 1)
  {
    if (v35(&v27[v43], 1, v4) == 1)
    {
      v71 = v34;
      sub_219F6409C(v27, &qword_27CCD97F0);
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v44 = v75;
  sub_21A02456C(v27, v75);
  v45 = v35(&v27[v43], 1, v4);
  v46 = v73;
  if (v45 == 1)
  {
    (*(v73 + 8))(v44, v4);
LABEL_17:
    v36 = v27;
    goto LABEL_18;
  }

  v71 = v34;
  v48 = v76;
  (*(v73 + 32))(v76, &v27[v43], v4);
  sub_21A0245DC(&qword_27CCD9900, MEMORY[0x277CC9578]);
  LODWORD(v72) = sub_21A0E61CC();
  v49 = *(v46 + 8);
  v49(v48, v4);
  v49(v44, v4);
  sub_219F6409C(v27, &qword_27CCD97F0);
  if ((v72 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  if (*(a1 + v41[7]) != *(a2 + v41[7]))
  {
    return 0;
  }

  v50 = v41[8];
  v51 = *(a1 + v50);
  v52 = *(a2 + v50);
  if (v51 == 2)
  {
    v54 = v73;
    v53 = v74;
    if (v52 != 2)
    {
      return 0;
    }
  }

  else
  {
    v54 = v73;
    v53 = v74;
    if (v52 == 2)
    {
      return 0;
    }

    v55 = v35;
    if (v51)
    {
      v56 = 6581861;
    }

    else
    {
      v56 = 0x657461647075;
    }

    if (v51)
    {
      v57 = 0xE300000000000000;
    }

    else
    {
      v57 = 0xE600000000000000;
    }

    if (v52)
    {
      v58 = 6581861;
    }

    else
    {
      v58 = 0x657461647075;
    }

    if (v52)
    {
      v59 = 0xE300000000000000;
    }

    else
    {
      v59 = 0xE600000000000000;
    }

    if (v56 == v58 && v57 == v59)
    {

      v35 = v55;
    }

    else
    {
      v60 = sub_21A0E6C5C();

      v35 = v55;
      if ((v60 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v61 = v77[9];
  v62 = *(v79 + 48);
  v63 = a1 + v61;
  v64 = v78;
  sub_21A02456C(v63, v78);
  sub_21A02456C(a2 + v61, &v64[v62]);
  if (v35(v64, 1, v4) != 1)
  {
    sub_21A02456C(v64, v53);
    if (v35(&v64[v62], 1, v4) == 1)
    {
      (*(v54 + 8))(v53, v4);
      goto LABEL_47;
    }

    v65 = v53;
    v66 = v76;
    (*(v54 + 32))(v76, &v64[v62], v4);
    sub_21A0245DC(&qword_27CCD9900, MEMORY[0x277CC9578]);
    v67 = sub_21A0E61CC();
    v68 = *(v54 + 8);
    v68(v66, v4);
    v68(v65, v4);
    sub_219F6409C(v64, &qword_27CCD97F0);
    return (v67 & 1) != 0;
  }

  if (v35(&v64[v62], 1, v4) != 1)
  {
LABEL_47:
    v36 = v64;
    goto LABEL_18;
  }

  sub_219F6409C(v64, &qword_27CCD97F0);
  return 1;
}

unint64_t sub_21A024518()
{
  result = qword_27CCDB9E0;
  if (!qword_27CCDB9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDB9E0);
  }

  return result;
}

uint64_t sub_21A02456C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A0245DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A024644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A0246AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A024714()
{
  result = qword_27CCDBA08;
  if (!qword_27CCDBA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBA08);
  }

  return result;
}

unint64_t sub_21A024768()
{
  result = qword_27CCDBA10;
  if (!qword_27CCDBA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBA10);
  }

  return result;
}

uint64_t sub_21A0247BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21A02481C()
{
  result = qword_27CCDBA20;
  if (!qword_27CCDBA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBA20);
  }

  return result;
}

unint64_t sub_21A0248BC()
{
  result = qword_27CCDBA30;
  if (!qword_27CCDBA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBA30);
  }

  return result;
}

uint64_t sub_21A024980()
{
  result = type metadata accessor for NewsLiveActivityContent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21A024A14()
{
  type metadata accessor for NewsLiveActivityContentState(319);
  if (v0 <= 0x3F)
  {
    sub_219F40500();
    if (v1 <= 0x3F)
    {
      sub_21A024AC4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21A024AC4()
{
  if (!qword_280C880E8)
  {
    v0 = sub_21A0E674C();
    if (!v1)
    {
      atomic_store(v0, &qword_280C880E8);
    }
  }
}

uint64_t getEnumTagSinglePayload for NewsLiveActivityContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NewsLiveActivityContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A024C88()
{
  result = qword_27CCDBA50;
  if (!qword_27CCDBA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBA50);
  }

  return result;
}

unint64_t sub_21A024CE0()
{
  result = qword_27CCDBA58;
  if (!qword_27CCDBA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBA58);
  }

  return result;
}

unint64_t sub_21A024D38()
{
  result = qword_27CCDBA60;
  if (!qword_27CCDBA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBA60);
  }

  return result;
}

unint64_t sub_21A024D90()
{
  result = qword_27CCDBA68;
  if (!qword_27CCDBA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBA68);
  }

  return result;
}

unint64_t sub_21A024DE8()
{
  result = qword_27CCDBA70;
  if (!qword_27CCDBA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBA70);
  }

  return result;
}

unint64_t sub_21A024E40()
{
  result = qword_27CCDBA78;
  if (!qword_27CCDBA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBA78);
  }

  return result;
}

uint64_t sub_21A024E94()
{
  v0 = sub_21A0E6A0C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_21A024EE0()
{
  result = qword_27CCDBA80;
  if (!qword_27CCDBA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBA80);
  }

  return result;
}

NewsLiveActivitiesCore::NewsLiveActivityChangeSource_optional __swiftcall NewsLiveActivityChangeSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21A0E6A0C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_21A024F9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE800000000000000;
  v6 = 0x6B6E696C70656564;
  if (v2 != 5)
  {
    v6 = 0x7974697669746361;
    v5 = 0xEB0000000074694BLL;
  }

  v7 = 0xEC0000006E6F6974;
  v8 = 0x6163696669746F6ELL;
  if (v2 != 3)
  {
    v8 = 0x50676E69646E616CLL;
    v7 = 0xEB00000000656761;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000065;
  v10 = 0x6C69546F63736964;
  if (v2 != 1)
  {
    v10 = 0x6465626D45626577;
    v9 = 0xE800000000000000;
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

uint64_t sub_21A0250B0()
{
  sub_21A0E626C();
}

uint64_t NewsLiveActivityChangeSource.description.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6B6E696C70656564;
  if (v1 != 5)
  {
    v3 = 0x7974697669746361;
  }

  v4 = 0x6163696669746F6ELL;
  if (v1 != 3)
  {
    v4 = 0x50676E69646E616CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C69546F63736964;
  if (v1 != 1)
  {
    v5 = 0x6465626D45626577;
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

unint64_t sub_21A0252E0()
{
  result = qword_27CCDBA88;
  if (!qword_27CCDBA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBA88);
  }

  return result;
}

uint64_t sub_21A025334()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6B6E696C70656564;
  if (v1 != 5)
  {
    v3 = 0x7974697669746361;
  }

  v4 = 0x6163696669746F6ELL;
  if (v1 != 3)
  {
    v4 = 0x50676E69646E616CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C69546F63736964;
  if (v1 != 1)
  {
    v5 = 0x6465626D45626577;
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

uint64_t type metadata accessor for NetworkRequest()
{
  result = qword_27CCDBAA8;
  if (!qword_27CCDBAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A0254D4()
{
  if (*v0)
  {
    return 1414745936;
  }

  else
  {
    return 5522759;
  }
}

uint64_t sub_21A025500()
{
  if (((*(v0 + 8) >> 60) & 3u) > 1)
  {
    return 0x7974706D45;
  }

  else
  {
    return sub_21A0E484C();
  }
}

uint64_t sub_21A025548()
{
  sub_21A0E686C();

  v1 = 0xE400000000000000;
  sub_21A0E481C();
  sub_21A02638C(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
  v2 = sub_21A0E6BFC();
  MEMORY[0x21CED1980](v2);

  MEMORY[0x21CED1980](0x646F6874654D202CLL, 0xE90000000000003DLL);
  v3 = type metadata accessor for NetworkRequest();
  if (*(v0 + *(v3 + 20)))
  {
    v4 = 1414745936;
  }

  else
  {
    v4 = 5522759;
  }

  if (!*(v0 + *(v3 + 20)))
  {
    v1 = 0xE300000000000000;
  }

  MEMORY[0x21CED1980](v4, v1);

  MEMORY[0x21CED1980](0x3D79646F42202CLL, 0xE700000000000000);
  if (((*(v0 + *(v3 + 24) + 8) >> 60) & 3u) > 1)
  {
    v7 = 0xE500000000000000;
    v5 = 0x7974706D45;
  }

  else
  {
    v5 = sub_21A0E484C();
    v7 = v6;
  }

  MEMORY[0x21CED1980](v5, v7);

  return 1028411989;
}

uint64_t sub_21A0256E0()
{
  sub_21A0E6DAC();
  sub_21A0E481C();
  sub_21A02638C(&qword_27CCD99F8, MEMORY[0x277CC9260]);
  sub_21A0E615C();
  v1 = type metadata accessor for NetworkRequest();
  MEMORY[0x21CED2490](*(v0 + *(v1 + 20)));
  v2 = (*(v0 + *(v1 + 24) + 8) >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x21CED2490](0);
      return sub_21A0E6DFC();
    }

    MEMORY[0x21CED2490](2);
  }

  else
  {
    MEMORY[0x21CED2490](1);
  }

  sub_21A0E487C();
  return sub_21A0E6DFC();
}

uint64_t sub_21A0257F0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = v7 & 0x3000000000000000;
  v9 = (v5 >> 60) & 3;
  if (!v9)
  {
    if (!v8)
    {
      return sub_21A026164(v4, v5, v6, v7);
    }

    return 0;
  }

  if (v9 == 1)
  {
    if (v8 == 0x1000000000000000)
    {
      v5 &= 0xCFFFFFFFFFFFFFFFLL;
      v7 &= 0xCFFFFFFFFFFFFFFFLL;
      return sub_21A026164(v4, v5, v6, v7);
    }

    return 0;
  }

  return v8 == 0x2000000000000000 && v6 == 0 && v7 == 0x2000000000000000;
}

uint64_t sub_21A025860()
{
  v1 = *(v0 + 8);
  sub_21A0E6DAC();
  v2 = (v1 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x21CED2490](0);
      return sub_21A0E6DFC();
    }

    MEMORY[0x21CED2490](2);
  }

  else
  {
    MEMORY[0x21CED2490](1);
  }

  sub_21A0E487C();
  return sub_21A0E6DFC();
}

uint64_t sub_21A0258F4()
{
  v1 = (*(v0 + 8) >> 60) & 3;
  if (v1)
  {
    if (v1 != 1)
    {
      return MEMORY[0x21CED2490](0);
    }

    MEMORY[0x21CED2490](2);
  }

  else
  {
    MEMORY[0x21CED2490](1);
  }

  return sub_21A0E487C();
}

uint64_t sub_21A025990()
{
  v1 = *(v0 + 8);
  sub_21A0E6DAC();
  v2 = (v1 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x21CED2490](0);
      return sub_21A0E6DFC();
    }

    MEMORY[0x21CED2490](2);
  }

  else
  {
    MEMORY[0x21CED2490](1);
  }

  sub_21A0E487C();
  return sub_21A0E6DFC();
}

uint64_t sub_21A025A24(uint64_t a1, uint64_t a2)
{
  sub_21A0E481C();
  sub_21A02638C(&qword_27CCD99F8, MEMORY[0x277CC9260]);
  sub_21A0E615C();
  MEMORY[0x21CED2490](*(v2 + *(a2 + 20)));
  v4 = (*(v2 + *(a2 + 24) + 8) >> 60) & 3;
  if (v4)
  {
    if (v4 != 1)
    {
      return MEMORY[0x21CED2490](0);
    }

    MEMORY[0x21CED2490](2);
  }

  else
  {
    MEMORY[0x21CED2490](1);
  }

  return sub_21A0E487C();
}

uint64_t sub_21A025B3C(uint64_t a1, uint64_t a2)
{
  sub_21A0E6DAC();
  sub_21A0E481C();
  sub_21A02638C(&qword_27CCD99F8, MEMORY[0x277CC9260]);
  sub_21A0E615C();
  MEMORY[0x21CED2490](*(v2 + *(a2 + 20)));
  v4 = (*(v2 + *(a2 + 24) + 8) >> 60) & 3;
  if (v4)
  {
    if (v4 != 1)
    {
      MEMORY[0x21CED2490](0);
      return sub_21A0E6DFC();
    }

    MEMORY[0x21CED2490](2);
  }

  else
  {
    MEMORY[0x21CED2490](1);
  }

  sub_21A0E487C();
  return sub_21A0E6DFC();
}

unint64_t sub_21A025C40()
{
  result = qword_27CCDBA98;
  if (!qword_27CCDBA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBA98);
  }

  return result;
}

unint64_t sub_21A025C98()
{
  result = qword_27CCDBAA0;
  if (!qword_27CCDBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBAA0);
  }

  return result;
}

uint64_t sub_21A025CEC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
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
    v10 = sub_21A0E45CC();
    if (v10)
    {
      v11 = sub_21A0E45EC();
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
      result = sub_21A0E45DC();
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
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
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
  v10 = sub_21A0E45CC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_21A0E45EC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_21A0E45DC();
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

uint64_t sub_21A025F1C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_21A0260AC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_219F49008(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_21A025CEC(v13, a3, a4, &v12);
  v10 = v4;
  sub_219F49008(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_21A0260AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_21A0E45CC();
  v11 = result;
  if (result)
  {
    result = sub_21A0E45EC();
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

  sub_21A0E45DC();
  sub_21A025CEC(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_21A026164(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_219F48FB4(a3, a4);
          return sub_21A025F1C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_21A0262CC(uint64_t a1, uint64_t a2)
{
  if ((sub_21A0E478C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for NetworkRequest();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *v9;
  v11 = v9[1];
  v12 = v11 & 0x3000000000000000;
  v13 = (v8 >> 60) & 3;
  if (!v13)
  {
    return !v12 && (sub_21A026164(v7, v8, v10, v11) & 1) != 0;
  }

  if (v13 == 1)
  {
    return v12 == 0x1000000000000000 && (sub_21A026164(v7, v8 & 0xCFFFFFFFFFFFFFFFLL, v10, v11 & 0xCFFFFFFFFFFFFFFFLL) & 1) != 0;
  }

  return v12 == 0x2000000000000000 && v10 == 0 && v11 == 0x2000000000000000;
}

uint64_t sub_21A02638C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_22NewsLiveActivitiesCore14NetworkRequestV4BodyO(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

uint64_t sub_21A026404(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 8) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_21A02644C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = xmmword_21A0F7600;
    }
  }

  return result;
}

void *sub_21A0264A0(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x2000000000000000;
  }

  return result;
}

uint64_t sub_21A026500()
{
  result = sub_21A0E481C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for NewsContentViewModifier()
{
  result = qword_27CCDBAC0;
  if (!qword_27CCDBAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A0265F8()
{
  sub_21A026778(319, &qword_280C884B0, &qword_27CCDBAD0);
  if (v0 <= 0x3F)
  {
    sub_21A026778(319, &qword_27CCDBAD8, &qword_27CCDA4D8);
    if (v1 <= 0x3F)
    {
      sub_21A026824(319, &qword_27CCDBAE0, &type metadata for ColorScheme, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21A0267CC();
        if (v3 <= 0x3F)
        {
          sub_21A026824(319, &qword_27CCD9B18, &type metadata for DynamicValueConditionEnvironment, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_21A026824(319, &qword_27CCD9698, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
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

void sub_21A026778(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_21A0E674C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21A0267CC()
{
  if (!qword_27CCDBAE8)
  {
    type metadata accessor for ActivityColorEnvironment();
    v0 = sub_21A0E525C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CCDBAE8);
    }
  }
}

void sub_21A026824(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_21A026890@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_21A0E554C();
  v27 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 264);
  if (v7 == 2)
  {
    goto LABEL_7;
  }

  v8 = v1 + *(type metadata accessor for NewsContentViewModifier() + 36);
  v10 = *v8;
  v9 = *(v8 + 8);
  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  v13 = *(v8 + 32);
  if (*(v8 + 40) == 1)
  {
    *&v33 = *v8;
    *(&v33 + 1) = v9;
    *&v34 = v12;
    *(&v34 + 1) = v11;
    v35 = v13;
    *&v29 = v10;
    *(&v29 + 1) = v9;
    *&v30 = v12;
    *(&v30 + 1) = v11;
    v31 = v13;
    v32 = 1;
    sub_219F63900(&v29, v28);
  }

  else
  {

    sub_21A0E66AC();
    v26 = a1;
    v14 = sub_21A0E575C();
    v25 = v3;
    v15 = v14;
    a1 = v26;
    sub_21A0E512C();

    v3 = v25;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F63A50(v10, v9, v12, v11, v13, 0);
    (*(v27 + 8))(v6, v3);
  }

  v29 = v33;
  v30 = v34;
  v31 = v35;
  result = sub_219F5ED9C(&v29);
  if (BYTE1(v30) != 4)
  {
LABEL_7:
    v18 = v1 + *(type metadata accessor for NewsContentViewModifier() + 36);
    v20 = *v18;
    v19 = *(v18 + 8);
    v22 = *(v18 + 16);
    v21 = *(v18 + 24);
    v23 = *(v18 + 32);
    if (*(v18 + 40) == 1)
    {
      *&v33 = *v18;
      *(&v33 + 1) = v19;
      *&v34 = v22;
      *(&v34 + 1) = v21;
      v35 = v23;
      *&v29 = v20;
      *(&v29 + 1) = v19;
      *&v30 = v22;
      *(&v30 + 1) = v21;
      v31 = v23;
      v32 = 1;
      sub_219F63900(&v29, v28);
    }

    else
    {

      sub_21A0E66AC();
      v24 = sub_21A0E575C();
      sub_21A0E512C();

      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v20, v19, v22, v21, v23, 0);
      (*(v27 + 8))(v6, v3);
    }

    v29 = v33;
    v30 = v34;
    v31 = v35;
    result = sub_219F5ED9C(&v29);
    v17 = v30;
  }

  else
  {
    v17 = v7 & 1;
  }

  *a1 = v17;
  return result;
}

uint64_t sub_21A026B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v88 = a1;
  v99 = a2;
  v4 = sub_21A0E524C();
  v97 = *(v4 - 8);
  v98 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v96 = &v83[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ActivityColorEnvironment();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v92 = &v83[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_21A0E554C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v89 = &v83[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBAF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v83[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBAF8);
  v90 = *(v18 - 8);
  v91 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v102 = &v83[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBB00);
  v94 = *(v21 - 8);
  v95 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v83[-v23];
  v101 = type metadata accessor for NewsContentViewModifier();
  v25 = v3 + *(v101 + 40);
  v26 = *v25;
  LODWORD(v25) = *(v25 + 8);
  v87 = v10;
  if (v25 != 1)
  {

    sub_21A0E66AC();
    v28 = sub_21A0E575C();
    v29 = v89;
    sub_21A0E512C();

    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F68370(v26, 0);
    (*(v11 + 8))(v29, v10);
    if (v111 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v27 = sub_21A0E57BC();
    goto LABEL_6;
  }

  if (v26)
  {
    goto LABEL_5;
  }

LABEL_3:
  v27 = sub_21A0E577C();
LABEL_6:
  v30 = v27;
  v93 = v24;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBB08);
  (*(*(v31 - 8) + 16))(v17, v88, v31);
  v100 = v14;
  v32 = &v17[*(v14 + 36)];
  *v32 = v30;
  *(v32 + 8) = 0u;
  *(v32 + 24) = 0u;
  v32[40] = 1;
  v33 = v3[1];
  v127 = *v3;
  v128 = v33;
  v129 = v3[2];
  v35 = *(v3 + 6);
  v34 = *(v3 + 7);
  LODWORD(v32) = ~*(v3 + 12);
  v36 = *(v3 + 8);
  v126 = *(v3 + 72);
  v88 = v11;
  if ((v32 & 0xFFFFFFFE) != 0 || (v36 & 0xFE00000000) != 0x200000000)
  {
    v86 = v17;
    v37 = v3 + *(v101 + 36);
    v38 = *v37;
    v39 = *(v37 + 8);
    v40 = *(v37 + 16);
    v41 = *(v37 + 24);
    v42 = *(v37 + 32);
    if (*(v37 + 40) == 1)
    {
      *&v103 = *v37;
      *(&v103 + 1) = v39;
      *&v104 = v40;
      *(&v104 + 1) = v41;
      *&v105 = v42;
      *&v111 = v38;
      *(&v111 + 1) = v39;
      *&v112 = v40;
      *(&v112 + 1) = v41;
      *&v113 = v42;
      BYTE8(v113) = 1;
      sub_219F63900(&v111, &v107);
    }

    else
    {

      v84 = sub_21A0E66AC();
      v43 = sub_21A0E575C();
      v85 = v34;
      v44 = v43;
      sub_21A0E512C();

      v45 = v89;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v38, v39, v40, v41, v42, 0);
      v46 = v45;
      v34 = v85;
      (*(v88 + 8))(v46, v87);
    }

    v107 = v103;
    v108 = v104;
    v133[3] = v127;
    v133[4] = v128;
    v133[5] = v129;
    v134 = v35;
    v135 = v34;
    v136 = v36;
    v137 = v126;
    *&v109[0] = v105;
    *(&v110 + 1) = MEMORY[0x277D84F90];
    if (qword_27CCD9198 != -1)
    {
      swift_once();
    }

    *(v109 + 8) = v127;
    *(&v109[1] + 8) = v128;
    *(&v109[2] + 8) = v129;
    *(&v109[3] + 1) = v35;
    *&v109[4] = v34;
    DWORD2(v109[4]) = v36;
    BYTE12(v109[4]) = BYTE4(v36);
    *&v110 = qword_27CCDBDB0;

    sub_219F8B64C(&v107);
    v132 = *(&v109[2] + 8);
    v133[0] = *(&v109[3] + 8);
    *(v133 + 13) = *(&v109[4] + 5);
    v130 = *(v109 + 8);
    v131 = *(&v109[1] + 8);
    v115 = v109[2];
    v116 = v109[3];
    v117 = v109[4];
    v118 = v110;
    v111 = v107;
    v112 = v108;
    v113 = v109[0];
    v114 = v109[1];
    sub_219F6409C(&v111, &qword_27CCDBB28);
    v47 = v92;
    sub_21A003E48(v92);
    sub_219F89010(v47);
    sub_219F894D4(v47);
    v17 = v86;
  }

  v48 = sub_21A02778C();
  v49 = v100;
  sub_21A0E59FC();

  sub_219F6409C(v17, &qword_27CCDBAF0);
  v50 = *(v3 + 104);
  v123 = *(v3 + 88);
  v124 = v50;
  v125 = *(v3 + 120);
  v52 = *(v3 + 17);
  v51 = *(v3 + 18);
  v53 = ~*(v3 + 34);
  v54 = *(v3 + 19);
  v122 = v3[10];
  if ((v53 & 0xFFFFFFFE) != 0 || (v54 & 0xFE00000000) != 0x200000000)
  {
    v86 = v51;
    v56 = v3 + *(v101 + 36);
    v57 = *v56;
    v58 = *(v56 + 8);
    v59 = *(v56 + 16);
    v60 = *(v56 + 24);
    v61 = *(v56 + 32);
    if (*(v56 + 40) == 1)
    {
      *&v119 = *v56;
      *(&v119 + 1) = v58;
      *&v120 = v59;
      *(&v120 + 1) = v60;
      v121 = v61;
      *&v111 = v57;
      *(&v111 + 1) = v58;
      *&v112 = v59;
      *(&v112 + 1) = v60;
      *&v113 = v61;
      BYTE8(v113) = 1;
      sub_219F63900(&v111, &v107);
    }

    else
    {

      v84 = sub_21A0E66AC();
      v62 = sub_21A0E575C();
      v85 = v48;
      v63 = v62;
      sub_21A0E512C();

      v64 = v89;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v57, v58, v59, v60, v61, 0);
      v65 = v64;
      v48 = v85;
      (*(v88 + 8))(v65, v87);
    }

    v107 = v119;
    v108 = v120;
    v130 = v123;
    v131 = v124;
    v132 = v125;
    *&v133[0] = v52;
    v66 = v86;
    *(&v133[0] + 1) = v86;
    *&v133[1] = v54;
    *(&v133[1] + 8) = v122;
    *&v109[0] = v121;
    *(&v110 + 1) = MEMORY[0x277D84F90];
    if (qword_27CCD9198 != -1)
    {
      swift_once();
    }

    *(v109 + 8) = v123;
    *(&v109[1] + 8) = v124;
    *(&v109[2] + 8) = v125;
    *(&v109[3] + 1) = v52;
    *&v109[4] = v66;
    DWORD2(v109[4]) = v54;
    BYTE12(v109[4]) = BYTE4(v54);
    *&v110 = qword_27CCDBDB0;

    sub_219F8B64C(&v107);
    v105 = *(&v109[2] + 8);
    v106[0] = *(&v109[3] + 8);
    *(v106 + 13) = *(&v109[4] + 5);
    v103 = *(v109 + 8);
    v104 = *(&v109[1] + 8);
    v115 = v109[2];
    v116 = v109[3];
    v117 = v109[4];
    v118 = v110;
    v111 = v107;
    v112 = v108;
    v113 = v109[0];
    v114 = v109[1];
    sub_219F6409C(&v111, &qword_27CCDBB28);
    v67 = v92;
    sub_21A003E48(v92);
    v55 = sub_219F89010(v67);
    sub_219F894D4(v67);
    v49 = v100;
  }

  else
  {
    v55 = 0;
  }

  *&v111 = v49;
  *(&v111 + 1) = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v69 = v93;
  v70 = v91;
  v71 = v102;
  MEMORY[0x21CED10E0](v55, v91, OpaqueTypeConformance2);

  (*(v90 + 8))(v71, v70);
  KeyPath = swift_getKeyPath();
  sub_21A026890(&v111);
  if (v111 == 1)
  {

    v73 = MEMORY[0x277CDF3C0];
  }

  else
  {
    v74 = sub_21A0E6C5C();

    v73 = MEMORY[0x277CDF3D0];
    if (v74)
    {
      v73 = MEMORY[0x277CDF3C0];
    }
  }

  v76 = v96;
  v75 = v97;
  v77 = v98;
  (*(v97 + 104))(v96, *v73, v98);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBB20);
  v79 = v99;
  v80 = (v99 + *(v78 + 36));
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAAF8);
  (*(v75 + 32))(v80 + *(v81 + 28), v76, v77);
  *v80 = KeyPath;
  return (*(v94 + 32))(v79, v69, v95);
}

uint64_t sub_21A02769C(uint64_t a1)
{
  v2 = sub_21A0E524C();
  MEMORY[0x28223BE20](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21A0E542C();
}

unint64_t sub_21A02778C()
{
  result = qword_27CCDBB10;
  if (!qword_27CCDBB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDBAF0);
    sub_219F3E490(&qword_27CCDBB18, &qword_27CCDBB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBB10);
  }

  return result;
}

unint64_t sub_21A027844()
{
  result = qword_27CCDBB30;
  if (!qword_27CCDBB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDBB20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDBAF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDBAF0);
    sub_21A02778C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_219F3E490(&qword_27CCDAB40, &qword_27CCDAAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBB30);
  }

  return result;
}

uint64_t sub_21A02797C(uint64_t a1)
{
  v88 = type metadata accessor for ScheduledLiveActivity();
  v3 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v4);
  v77 = (&v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NewsLiveActivity(0);
  v78 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v97 = (&v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12, v14);
  v96 = &v73 - v15;
  v95 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema(0);
  v87 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v16);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v19)
  {
    return result;
  }

  v93 = v18;
  v73 = v1;
  v99 = MEMORY[0x277D84F90];
  sub_219FBE844(0, v19, 0);
  v98 = v99;
  v94 = a1 + 64;
  result = sub_21A0E67CC();
  v21 = result;
  v22 = 0;
  v86 = (v3 + 48);
  v79 = a1 + 72;
  v23 = v78;
  v85 = v19;
  v76 = a1;
  v75 = v9;
  v74 = v10;
  while ((v21 & 0x8000000000000000) == 0 && v21 < 1 << *(a1 + 32))
  {
    v26 = v21 >> 6;
    if ((*(v94 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
    {
      goto LABEL_30;
    }

    v27 = *(a1 + 36);
    v89 = v22;
    v90 = v27;
    v28 = v96;
    sub_21A02C33C(*(a1 + 56) + *(v23 + 72) * v21, v96, type metadata accessor for NewsLiveActivity);
    v29 = v28;
    v30 = v97;
    sub_21A02C33C(v29, v97, type metadata accessor for NewsLiveActivity);
    v31 = v30[1];
    v32 = v93;
    *v93 = *v30;
    v32[1] = v31;
    v92 = v31;
    v33 = v32 + *(v95 + 20);
    sub_21A02C33C(v30 + *(v10 + 20), v9, type metadata accessor for NewsLiveActivitySubscriptionState);
    v34 = (*v86)(v9, 3, v88);
    v91 = 1 << v21;
    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v57 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity(0);
        (*(*(v57 - 8) + 56))(v33, 2, 3, v57);
      }

      else
      {
        v59 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity(0);
        (*(*(v59 - 8) + 56))(v33, 3, 3, v59);
      }
    }

    else
    {
      if (!v34)
      {
        v35 = v77;
        sub_21A02C3C4(v9, v77, type metadata accessor for ScheduledLiveActivity);
        v36 = *v35;
        v83 = v35[1];
        v84 = v36;
        v37 = v88;
        v82 = *(v88 + 20);
        v38 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity(0);
        v81 = v38[5];
        v39 = sub_21A0E495C();
        v40 = *(*(v39 - 8) + 16);
        v40(&v33[v81], v35 + v82, v39);
        v41 = v37[7];
        v42 = (v35 + v37[6]);
        v44 = *v42;
        v43 = v42[1];
        v82 = v44;
        v80 = v43;
        v40(&v33[v38[7]], v35 + v41, v39);
        v45 = v37[9];
        v81 = *(v35 + v37[8]);
        v46 = *(v35 + v45);
        v47 = *(v35 + v37[10]);
        v48 = *(v35 + v37[11]);
        v49 = *(v35 + v37[12]);
        v50 = *(v35 + v37[13]);
        v51 = *(v35 + v37[14]);
        v52 = *(v35 + v37[15]);

        v53 = v83;

        v54 = v80;

        v55 = v35;
        v10 = v74;
        sub_21A02C42C(v55, type metadata accessor for ScheduledLiveActivity);
        *v33 = v84;
        *(v33 + 1) = v53;
        v56 = &v33[v38[6]];
        *v56 = v82;
        *(v56 + 1) = v54;
        *&v33[v38[8]] = v81;
        v23 = v78;
        *&v33[v38[9]] = v46;
        *&v33[v38[10]] = v47;
        *&v33[v38[11]] = v48;
        *&v33[v38[12]] = v49;
        *&v33[v38[13]] = v50;
        *&v33[v38[14]] = v51;
        a1 = v76;
        *&v33[v38[15]] = v52;
        v9 = v75;
        (*(*(v38 - 1) + 56))(v33, 0, 3, v38);
        goto LABEL_16;
      }

      v58 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity(0);
      (*(*(v58 - 8) + 56))(v33, 1, 3, v58);
    }

LABEL_16:
    v60 = v97;
    v61 = v93;
    sub_21A02456C(v97 + *(v10 + 24), v93 + *(v95 + 24));
    sub_21A02C42C(v60, type metadata accessor for NewsLiveActivity);
    sub_21A02C42C(v96, type metadata accessor for NewsLiveActivity);
    v62 = v98;
    v99 = v98;
    v64 = *(v98 + 16);
    v63 = *(v98 + 24);
    if (v64 >= v63 >> 1)
    {
      sub_219FBE844(v63 > 1, v64 + 1, 1);
      v23 = v78;
      v62 = v99;
    }

    *(v62 + 16) = v64 + 1;
    v65 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v98 = v62;
    result = sub_21A02C3C4(v61, v62 + v65 + *(v87 + 72) * v64, type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema);
    v24 = 1 << *(a1 + 32);
    if (v21 >= v24)
    {
      goto LABEL_31;
    }

    v66 = *(v94 + 8 * v26);
    if ((v66 & v91) == 0)
    {
      goto LABEL_32;
    }

    if (v90 != *(a1 + 36))
    {
      goto LABEL_33;
    }

    v67 = v66 & (-2 << (v21 & 0x3F));
    if (v67)
    {
      v24 = __clz(__rbit64(v67)) | v21 & 0x7FFFFFFFFFFFFFC0;
      v25 = v85;
    }

    else
    {
      v68 = v26 << 6;
      v69 = v26 + 1;
      v70 = (v79 + 8 * v26);
      v25 = v85;
      while (v69 < (v24 + 63) >> 6)
      {
        v72 = *v70++;
        v71 = v72;
        v68 += 64;
        ++v69;
        if (v72)
        {
          result = sub_219FEA040(v21, v90, 0);
          v24 = __clz(__rbit64(v71)) + v68;
          goto LABEL_4;
        }
      }

      result = sub_219FEA040(v21, v90, 0);
    }

LABEL_4:
    v22 = v89 + 1;
    v21 = v24;
    if (v89 + 1 == v25)
    {
      return v98;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

size_t sub_21A0281E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_21A061B98(*(a1 + 16), 0);
  v4 = *(type metadata accessor for NewsLiveActivity(0) - 8);
  v5 = sub_21A063074(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, a1);
  sub_219F5EC40();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_21A0282B0()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_21A0282F4()
{
  v134 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity(0);
  v1 = *(v134 - 8);
  MEMORY[0x28223BE20](v134, v2);
  v121 = (v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.SubscriptionState(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v122 = v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NewsLiveActivity(0);
  v128 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = v113 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v133 = v113 - v22;
  v23 = *(v0 + 112);
  v24 = sub_21A0E61DC();
  v25 = [v23 dataForKey_];

  if (!v25)
  {
    if (qword_280C88460 != -1)
    {
      swift_once();
    }

    v36 = sub_21A0E516C();
    __swift_project_value_buffer(v36, qword_280C8C0F0);
    v37 = sub_21A0E514C();
    v38 = sub_21A0E66BC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_219F39000, v37, v38, "No data present in store; assuming no activities.", v39, 2u);
      MEMORY[0x21CED2D30](v39, -1, -1);
    }

    return MEMORY[0x277D84F98];
  }

  v135 = v9;
  v120 = v8;
  v132 = v16;
  isUniquelyReferenced_nonNull_native = sub_21A0E486C();
  v28 = v27;

  if (qword_280C88460 != -1)
  {
    goto LABEL_61;
  }

LABEL_3:
  v29 = sub_21A0E516C();
  v30 = __swift_project_value_buffer(v29, qword_280C8C0F0);
  sub_219F48FB4(isUniquelyReferenced_nonNull_native, v28);
  v116 = v30;
  v31 = sub_21A0E514C();
  v32 = sub_21A0E66BC();
  if (!os_log_type_enabled(v31, v32))
  {
    sub_219F49008(isUniquelyReferenced_nonNull_native, v28);
    goto LABEL_20;
  }

  v33 = swift_slowAlloc();
  *v33 = 134349056;
  v34 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    if (v34 != 2)
    {
      v35 = 0;
      goto LABEL_19;
    }

    v41 = *(isUniquelyReferenced_nonNull_native + 16);
    v40 = *(isUniquelyReferenced_nonNull_native + 24);
    v42 = __OFSUB__(v40, v41);
    v35 = v40 - v41;
    if (!v42)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_16:
    LODWORD(v35) = HIDWORD(isUniquelyReferenced_nonNull_native) - isUniquelyReferenced_nonNull_native;
    if (__OFSUB__(HIDWORD(isUniquelyReferenced_nonNull_native), isUniquelyReferenced_nonNull_native))
    {
      __break(1u);
LABEL_63:
      result = sub_21A0E6D0C();
      __break(1u);
      return result;
    }

    v35 = v35;
    goto LABEL_19;
  }

  if (v34)
  {
    goto LABEL_16;
  }

  v35 = BYTE6(v28);
LABEL_19:
  *(v33 + 4) = v35;
  v43 = v33;
  sub_219F49008(isUniquelyReferenced_nonNull_native, v28);
  _os_log_impl(&dword_219F39000, v31, v32, "Found previously archived activities in store, attempting to decode. Size=%{public}ld (bytes)", v43, 0xCu);
  MEMORY[0x21CED2D30](v43, -1, -1);
LABEL_20:

  sub_21A0E449C();
  swift_allocObject();
  v44 = sub_21A0E448C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBB38);
  sub_21A02C4AC(&qword_27CCDBB50, &qword_27CCDBB58);
  sub_21A0E447C();
  v115 = v28;
  v45 = v137;
  v28 = v137[2];
  v114 = isUniquelyReferenced_nonNull_native;
  v119 = v12;
  v131 = v44;
  if (v28)
  {
    v137 = MEMORY[0x277D84F90];
    sub_219FBE7BC(0, v28, 0);
    v136 = v137;
    v46 = (*(v135 + 80) + 32) & ~*(v135 + 80);
    v113[1] = v45;
    v47 = v45 + v46;
    v48 = *(v135 + 72);
    v129 = (v1 + 48);
    v130 = v48;
    v49 = v128;
    isUniquelyReferenced_nonNull_native = v120;
    v50 = v122;
    v118 = v7;
    v117 = v20;
    while (1)
    {
      sub_21A02C33C(v47, v50, type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema);
      v51 = *v50;
      v135 = v50[1];
      v52 = (v20 + *(v12 + 20));
      sub_21A02C33C(v50 + *(isUniquelyReferenced_nonNull_native + 20), v7, type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.SubscriptionState);
      v53 = (*v129)(v7, 3, v134);
      if (v53 > 1)
      {
        break;
      }

      if (v53)
      {
        v83 = type metadata accessor for ScheduledLiveActivity();
        (*(*(v83 - 8) + 56))(v52, 1, 3, v83);
LABEL_31:
        v80 = v135;

        goto LABEL_32;
      }

      v54 = v121;
      sub_21A02C3C4(v7, v121, type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity);
      v55 = *v54;
      v125 = v54[1];
      v126 = v55;
      v56 = v134;
      v124 = *(v134 + 20);
      v57 = type metadata accessor for ScheduledLiveActivity();
      v127 = v51;
      v58 = v57;
      v59 = *(v57 + 20);
      v60 = sub_21A0E495C();
      v61 = *(*(v60 - 8) + 16);
      v61(&v52[v59], v54 + v124, v60);
      v62 = v56[7];
      v63 = (v54 + v56[6]);
      v64 = v63[1];
      v124 = *v63;
      v61(&v52[v58[7]], v54 + v62, v60);
      v65 = v56[9];
      v123 = *(v54 + v56[8]);
      v66 = *(v54 + v65);
      v67 = *(v54 + v56[10]);
      v68 = *(v54 + v56[11]);
      v69 = *(v54 + v56[12]);
      v70 = *(v54 + v56[13]);
      v71 = *(v54 + v56[14]);
      v72 = *(v54 + v56[15]);
      v73 = v135;

      v74 = v125;

      v75 = v54;
      v50 = v122;
      sub_21A02C42C(v75, type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity);
      *v52 = v126;
      *(v52 + 1) = v74;
      v76 = &v52[v58[6]];
      *v76 = v124;
      v76[1] = v64;
      isUniquelyReferenced_nonNull_native = v120;
      *&v52[v58[8]] = v123;
      v77 = v128;
      *&v52[v58[9]] = v66;
      *&v52[v58[10]] = v67;
      *&v52[v58[11]] = v68;
      *&v52[v58[12]] = v69;
      *&v52[v58[13]] = v70;
      *&v52[v58[14]] = v71;
      v12 = v119;
      *&v52[v58[15]] = v72;
      v7 = v118;
      v78 = *(*(v58 - 1) + 56);
      v79 = v52;
      v80 = v73;
      v49 = v77;
      v81 = v58;
      v51 = v127;
      v20 = v117;
      v78(v79, 0, 3, v81);
LABEL_32:
      sub_21A02456C(v50 + *(isUniquelyReferenced_nonNull_native + 24), v20 + *(v12 + 24));
      *v20 = v51;
      *(v20 + 8) = v80;
      *(v20 + *(v12 + 28)) = 7;
      *(v20 + *(v12 + 32)) = 7;
      sub_21A02C42C(v50, type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema);
      v85 = v136;
      v137 = v136;
      v87 = *(v136 + 16);
      v86 = *(v136 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_219FBE7BC(v86 > 1, v87 + 1, 1);
        v50 = v122;
        v85 = v137;
      }

      *(v85 + 16) = v87 + 1;
      v88 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v136 = v85;
      sub_21A02C3C4(v20, v85 + v88 + *(v49 + 72) * v87, type metadata accessor for NewsLiveActivity);
      v47 += v130;
      if (!--v28)
      {

        v1 = v136;
        goto LABEL_38;
      }
    }

    if (v53 == 2)
    {
      v82 = type metadata accessor for ScheduledLiveActivity();
      (*(*(v82 - 8) + 56))(v52, 2, 3, v82);
    }

    else
    {
      v84 = type metadata accessor for ScheduledLiveActivity();
      (*(*(v84 - 8) + 56))(v52, 3, 3, v84);
    }

    goto LABEL_31;
  }

  v1 = MEMORY[0x277D84F90];
  v49 = v128;
LABEL_38:
  v90 = v132;
  v136 = *(v1 + 16);
  if (v136)
  {
    v12 = 0;
    v135 = v1 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v7 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v12 >= *(v1 + 16))
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        swift_once();
        goto LABEL_3;
      }

      v20 = *(v49 + 72);
      v28 = v133;
      sub_21A02C33C(v135 + v20 * v12, v133, type metadata accessor for NewsLiveActivity);
      v94 = *v28;
      v93 = *(v28 + 8);
      sub_21A02C3C4(v28, v90, type metadata accessor for NewsLiveActivity);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v137 = v7;
      v95 = sub_219F477B4(v94, v93);
      v97 = v7[2];
      v98 = (v96 & 1) == 0;
      v42 = __OFADD__(v97, v98);
      v99 = v97 + v98;
      if (v42)
      {
        goto LABEL_59;
      }

      v28 = v96;
      if (v7[3] < v99)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_48;
      }

      v104 = v95;
      sub_21A0D50BC();
      v95 = v104;
      if (v28)
      {
LABEL_40:
        v91 = v95;

        v7 = v137;
        v92 = v137[7] + v91 * v20;
        v90 = v132;
        sub_219F7DBA0(v132, v92);
        goto LABEL_41;
      }

LABEL_49:
      v7 = v137;
      v137[(v95 >> 6) + 8] |= 1 << v95;
      v101 = (v7[6] + 16 * v95);
      *v101 = v94;
      v101[1] = v93;
      v90 = v132;
      sub_21A02C3C4(v132, v7[7] + v95 * v20, type metadata accessor for NewsLiveActivity);
      v102 = v7[2];
      v42 = __OFADD__(v102, 1);
      v103 = v102 + 1;
      if (v42)
      {
        goto LABEL_60;
      }

      v7[2] = v103;
LABEL_41:
      if (v136 == ++v12)
      {
        goto LABEL_54;
      }
    }

    sub_21A0D2184(v99, isUniquelyReferenced_nonNull_native);
    v95 = sub_219F477B4(v94, v93);
    if ((v28 & 1) != (v100 & 1))
    {
      goto LABEL_63;
    }

LABEL_48:
    if (v28)
    {
      goto LABEL_40;
    }

    goto LABEL_49;
  }

  v7 = MEMORY[0x277D84F98];
LABEL_54:

  v105 = sub_21A0E514C();
  v106 = sub_21A0E66BC();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v137 = v108;
    *v107 = 134218242;
    *(v107 + 4) = v7[2];
    *(v107 + 12) = 2082;
    sub_219F4DBDC();

    v109 = sub_21A0E60FC();
    v111 = v110;

    v112 = sub_219F50144(v109, v111, &v137);

    *(v107 + 14) = v112;
    _os_log_impl(&dword_219F39000, v105, v106, "Decoded %ld Live Activities: %{public}s", v107, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v108);
    MEMORY[0x21CED2D30](v108, -1, -1);
    MEMORY[0x21CED2D30](v107, -1, -1);
  }

  sub_219F49008(v114, v115);

  return v7;
}

uint64_t sub_21A0291A4(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for NewsLiveActivity(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A0282F4();
  v9 = *a1;
  v10 = a1[1];
  sub_21A02C33C(a1, v7, type metadata accessor for NewsLiveActivity);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v8;
  sub_219F7C584(v7, v9, v10, isUniquelyReferenced_nonNull_native);
  sub_21A02BE80(v14, *(v2 + 112));
}

uint64_t sub_21A02928C(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v25 = v23 - v6;
  v7 = type metadata accessor for NewsLiveActivity(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = a1[1];
  result = sub_21A0282F4();
  v15 = *(result + 16);
  v26 = result;
  if (v15)
  {
    v16 = result;
    v23[0] = v2;
    v17 = sub_21A061B98(v15, 0);
    v24 = sub_21A063074(v27, v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v15, v16);
    v23[1] = v27[4];

    result = sub_219F5EC40();
    if (v24 != v15)
    {
      goto LABEL_19;
    }

    v2 = v23[0];
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v18 = 0;
  v19 = *(v17 + 16);
  while (1)
  {
    if (v19 == v18)
    {
    }

    if (v18 >= *(v17 + 16))
    {
      break;
    }

    sub_21A02C33C(v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, v11, type metadata accessor for NewsLiveActivity);
    if (*v11 == v12 && v11[1] == v13)
    {
      sub_21A02C42C(v11, type metadata accessor for NewsLiveActivity);
LABEL_16:

      v22 = v25;
      v27[0] = v26;
      sub_219F7B580(v12, v13, v25);
      sub_219F6409C(v22, &qword_27CCD99E0);
      sub_21A02BE80(v27[0], *(v2 + 112));
    }

    ++v18;
    v21 = sub_21A0E6C5C();
    result = sub_21A02C42C(v11, type metadata accessor for NewsLiveActivity);
    if (v21)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21A02955C()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_21A02957C, v2, 0);
}

uint64_t sub_21A02957C()
{
  v1 = sub_21A0282F4();
  v2 = sub_21A0281E8(v1);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_21A0295E0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_21A029600, v3, 0);
}

uint64_t sub_21A029600()
{
  sub_21A0291A4(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A029660(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_21A029680, v3, 0);
}

uint64_t sub_21A029680()
{
  sub_21A02928C(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A0296E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBB60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A02C7A8();
  sub_21A0E6EAC();
  v10 = v3[1];
  v13 = *v3;
  v14 = v10;
  v12[15] = 0;
  sub_21A02C7FC();

  sub_21A0E6BBC();

  if (!v2)
  {
    type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema(0);
    LOBYTE(v13) = 1;
    type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.SubscriptionState(0);
    sub_21A02C548(&qword_27CCDBB78, type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.SubscriptionState);
    sub_21A0E6BBC();
    LOBYTE(v13) = 2;
    sub_21A0E495C();
    sub_21A02C548(&qword_27CCD9808, MEMORY[0x277CC9578]);
    sub_21A0E6B6C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21A02993C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v27 - v5;
  v7 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.SubscriptionState(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBB80);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v27 - v13;
  v15 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_21A02C7A8();
  v30 = v14;
  v20 = v31;
  sub_21A0E6E7C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v21 = v28;
  v22 = v18;
  v31 = v6;
  v35 = 0;
  sub_21A02C850();
  v23 = v29;
  sub_21A0E6ADC();
  v24 = v34;
  *v22 = v33;
  v22[1] = v24;
  LOBYTE(v33) = 1;
  sub_21A02C548(&qword_27CCDBB90, type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.SubscriptionState);
  sub_21A0E6ADC();
  sub_21A02C3C4(v10, v22 + *(v15 + 20), type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.SubscriptionState);
  sub_21A0E495C();
  LOBYTE(v33) = 2;
  sub_21A02C548(&qword_27CCD9838, MEMORY[0x277CC9578]);
  v25 = v31;
  sub_21A0E6A8C();
  (*(v21 + 8))(v30, v23);
  sub_219FC26CC(v25, v22 + *(v15 + 24));
  sub_21A02C33C(v22, v27, type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return sub_21A02C42C(v22, type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema);
}

uint64_t sub_21A029D98()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_21A029DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A02D27C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A029E14(uint64_t a1)
{
  v2 = sub_21A02C7A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A029E50(uint64_t a1)
{
  v2 = sub_21A02C7A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A029EBC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBBF0);
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v46 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBBF8);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v42 = &v35 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBC00);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v8);
  v37 = &v35 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBC08);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v10);
  v39 = &v35 - v11;
  v12 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v36 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.SubscriptionState(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBC10);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v35 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A02C8A4();
  sub_21A0E6EAC();
  sub_21A02C33C(v49, v19, type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.SubscriptionState);
  v25 = (*(v13 + 48))(v19, 3, v12);
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v52 = 2;
      sub_21A02C94C();
      v31 = v42;
      sub_21A0E6B2C();
      v33 = v44;
      v32 = v45;
    }

    else
    {
      v53 = 3;
      sub_21A02C8F8();
      v31 = v46;
      sub_21A0E6B2C();
      v33 = v47;
      v32 = v48;
    }

    (*(v33 + 8))(v31, v32);
  }

  else
  {
    if (!v25)
    {
      v26 = v19;
      v27 = v36;
      sub_21A02C3C4(v26, v36, type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity);
      v50 = 0;
      sub_21A02C9F4();
      v28 = v39;
      sub_21A0E6B2C();
      sub_21A02C548(&qword_27CCDBC18, type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity);
      v29 = v43;
      sub_21A0E6BBC();
      (*(v41 + 8))(v28, v29);
      sub_21A02C42C(v27, type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity);
      return (*(v21 + 8))(v24, v20);
    }

    v51 = 1;
    sub_21A02C9A0();
    v34 = v37;
    sub_21A0E6B2C();
    (*(v38 + 8))(v34, v40);
  }

  return (*(v21 + 8))(v24, v20);
}

uint64_t sub_21A02A4C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBB98);
  v57 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v3);
  v62 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBBA0);
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v65 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBBA8);
  v9 = *(v8 - 8);
  v54 = v8;
  v55 = v9;
  MEMORY[0x28223BE20](v8, v10);
  v61 = &v52 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBBB0);
  v56 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v12);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBBB8);
  v66 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v52 - v17;
  v19 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.SubscriptionState(0);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v52 - v25;
  v27 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_21A02C8A4();
  v28 = v67;
  sub_21A0E6E7C();
  if (!v28)
  {
    v29 = v19;
    v53 = v23;
    v31 = v64;
    v30 = v65;
    v67 = v26;
    v32 = sub_21A0E6AFC();
    v33 = (2 * *(v32 + 16)) | 1;
    v69 = v32;
    v70 = v32 + 32;
    v71 = 0;
    v72 = v33;
    v34 = sub_219F8259C();
    v35 = v18;
    if (v34 == 4 || v71 != v72 >> 1)
    {
      v40 = sub_21A0E68BC();
      swift_allocError();
      v42 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9D00);
      *v42 = v29;
      sub_21A0E6A2C();
      sub_21A0E68AC();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
      swift_willThrow();
      (*(v66 + 8))(v35, v15);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v34 > 1u)
      {
        v44 = v63;
        if (v34 == 2)
        {
          v73 = 2;
          sub_21A02C94C();
          sub_21A0E6A1C();
          v45 = v66;
          (*(v58 + 8))(v30, v59);
          (*(v45 + 8))(v18, v15);
          swift_unknownObjectRelease();
          v46 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity(0);
          v39 = v67;
          (*(*(v46 - 8) + 56))(v67, 2, 3, v46);
        }

        else
        {
          v73 = 3;
          sub_21A02C8F8();
          v49 = v62;
          sub_21A0E6A1C();
          v50 = v66;
          (*(v57 + 8))(v49, v60);
          (*(v50 + 8))(v35, v15);
          swift_unknownObjectRelease();
          v51 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity(0);
          v39 = v67;
          (*(*(v51 - 8) + 56))(v67, 3, 3, v51);
        }
      }

      else
      {
        if (v34)
        {
          v73 = 1;
          sub_21A02C9A0();
          v47 = v61;
          sub_21A0E6A1C();
          (*(v55 + 8))(v47, v54);
          (*(v66 + 8))(v18, v15);
          swift_unknownObjectRelease();
          v48 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity(0);
          v39 = v67;
          (*(*(v48 - 8) + 56))(v67, 1, 3, v48);
        }

        else
        {
          v73 = 0;
          sub_21A02C9F4();
          v36 = v14;
          sub_21A0E6A1C();
          v37 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity(0);
          sub_21A02C548(&qword_27CCDBBE8, type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity);
          v38 = v53;
          sub_21A0E6ADC();
          (*(v56 + 8))(v36, v31);
          (*(v66 + 8))(v18, v15);
          swift_unknownObjectRelease();
          (*(*(v37 - 8) + 56))(v38, 0, 3, v37);
          v39 = v67;
          sub_21A02C3C4(v38, v67, type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.SubscriptionState);
        }

        v44 = v63;
      }

      sub_21A02C3C4(v39, v44, type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.SubscriptionState);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v68);
}

uint64_t sub_21A02AD78(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000017;
    v7 = 0xD000000000000018;
    if (a1 == 10)
    {
      v7 = 0x756F437972746572;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000012;
    v9 = 0xD000000000000012;
    if (a1 != 7)
    {
      v9 = 0x746E497972746572;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7974697669746361;
    v2 = 0xD000000000000014;
    v3 = 0x756F437972746572;
    if (a1 != 4)
    {
      v3 = 0x656C756465686373;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000010;
    if (a1 == 1)
    {
      v4 = 0x656C756465686373;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21A02AF44(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBC30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A02CA48();
  sub_21A0E6EAC();
  v9[31] = 0;
  sub_21A0E6B7C();
  if (!v1)
  {
    type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity(0);
    v9[30] = 1;
    sub_21A0E495C();
    sub_21A02C548(&qword_27CCD9808, MEMORY[0x277CC9578]);
    sub_21A0E6BBC();
    v9[29] = 2;
    sub_21A0E6B7C();
    v9[28] = 3;
    sub_21A0E6BBC();
    v9[27] = 4;
    sub_21A0E6BAC();
    v9[26] = 5;
    sub_21A0E6B9C();
    v9[25] = 6;
    sub_21A0E6B9C();
    v9[24] = 7;
    sub_21A0E6B9C();
    v9[15] = 8;
    sub_21A0E6B9C();
    v9[14] = 9;
    sub_21A0E6B9C();
    v9[13] = 10;
    sub_21A0E6BCC();
    v9[12] = 11;
    sub_21A0E6BCC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_21A02B2D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_21A0E495C();
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBC20);
  v49 = *(v12 - 8);
  v50 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = v43 - v14;
  v16 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity(0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = (v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A02CA48();
  v51 = v15;
  v20 = v52;
  sub_21A0E6E7C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v8;
  v44 = v19;
  v45 = v16;
  v52 = a1;
  v64 = 0;
  v22 = sub_21A0E6A9C();
  v23 = v44;
  *v44 = v22;
  v23[1] = v24;
  v63 = 1;
  v25 = sub_21A02C548(&qword_27CCD9838, MEMORY[0x277CC9578]);
  v26 = v47;
  sub_21A0E6ADC();
  v43[0] = v25;
  v27 = v11;
  v28 = v26;
  v29 = *(v48 + 32);
  v29(v23 + v45[5], v27, v28);
  v62 = 2;
  v43[1] = 0;
  v30 = sub_21A0E6A9C();
  v31 = (v23 + v45[6]);
  *v31 = v30;
  v31[1] = v32;
  v61 = 3;
  sub_21A0E6ADC();
  v29(v23 + v45[7], v21, v28);
  v60 = 4;
  v33 = sub_21A0E6ACC();
  v34 = v45;
  *(v23 + v45[8]) = v33;
  v59 = 5;
  sub_21A0E6ABC();
  *(v23 + v34[9]) = v35;
  v58 = 6;
  sub_21A0E6ABC();
  *(v23 + v34[10]) = v36;
  v57 = 7;
  sub_21A0E6ABC();
  *(v23 + v34[11]) = v37;
  v56 = 8;
  sub_21A0E6ABC();
  *(v23 + v34[12]) = v38;
  v55 = 9;
  sub_21A0E6ABC();
  *(v44 + v45[13]) = v39;
  v54 = 10;
  *(v44 + v45[14]) = sub_21A0E6AEC();
  v53 = 11;
  v40 = sub_21A0E6AEC();
  (*(v49 + 8))(v51, v50);
  v41 = v44;
  *(v44 + v45[15]) = v40;
  sub_21A02C33C(v41, v46, type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return sub_21A02C42C(v41, type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity);
}

uint64_t sub_21A02B9D0(uint64_t a1)
{
  v2 = sub_21A02C9A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A02BA0C(uint64_t a1)
{
  v2 = sub_21A02C9A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A02BA48(uint64_t a1)
{
  v2 = sub_21A02C8F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A02BA84(uint64_t a1)
{
  v2 = sub_21A02C8F8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21A02BAC0()
{
  v1 = 0x656C756465686373;
  v2 = 0x6269726373627573;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_21A02BB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A02D398(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A02BB78(uint64_t a1)
{
  v2 = sub_21A02C8A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A02BBB4(uint64_t a1)
{
  v2 = sub_21A02C8A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A02BBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21A0E6C5C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21A02BC7C(uint64_t a1)
{
  v2 = sub_21A02C9F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A02BCB8(uint64_t a1)
{
  v2 = sub_21A02C9F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A02BCF4(uint64_t a1)
{
  v2 = sub_21A02C94C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A02BD30(uint64_t a1)
{
  v2 = sub_21A02C94C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A02BDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A02D518(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A02BDD8(uint64_t a1)
{
  v2 = sub_21A02CA48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A02BE14(uint64_t a1)
{
  v2 = sub_21A02CA48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A02BE80(uint64_t a1, void *a2)
{
  if (qword_280C88460 != -1)
  {
    swift_once();
  }

  v4 = sub_21A0E516C();
  __swift_project_value_buffer(v4, qword_280C8C0F0);

  v5 = sub_21A0E514C();
  v6 = sub_21A0E66BC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136446210;
    type metadata accessor for NewsLiveActivity(0);
    sub_219F4DBDC();
    v9 = sub_21A0E60FC();
    v11 = sub_219F50144(v9, v10, &v22);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_219F39000, v5, v6, "About to replace archived activities. New Activities: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x21CED2D30](v8, -1, -1);
    MEMORY[0x21CED2D30](v7, -1, -1);
  }

  v12 = sub_21A02797C(a1);
  sub_21A0E451C();
  swift_allocObject();
  sub_21A0E450C();
  v22 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBB38);
  sub_21A02C4AC(&qword_27CCDBB40, &qword_27CCDBB48);
  v13 = sub_21A0E44FC();
  v15 = v14;

  v16 = sub_21A0E485C();
  v17 = sub_21A0E61DC();
  [a2 setObject:v16 forKey:v17];

  v18 = sub_21A0E514C();
  v19 = sub_21A0E66BC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_219F39000, v18, v19, "Successfully written activities to store.", v20, 2u);
    MEMORY[0x21CED2D30](v20, -1, -1);
  }

  sub_219F49008(v13, v15);
}

uint64_t sub_21A02C33C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A02C3C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A02C42C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A02C4AC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDBB38);
    sub_21A02C548(a2, type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A02C548(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A02C5B8()
{
  v0 = type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_21A02C638()
{
  result = sub_21A0E495C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21A02C714()
{
  type metadata accessor for UserDefaultsNewsLiveActivityRepository.Schema.SubscriptionState(319);
  if (v0 <= 0x3F)
  {
    sub_219F40500();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21A02C7A8()
{
  result = qword_27CCDBB68;
  if (!qword_27CCDBB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBB68);
  }

  return result;
}

unint64_t sub_21A02C7FC()
{
  result = qword_27CCDBB70;
  if (!qword_27CCDBB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBB70);
  }

  return result;
}

unint64_t sub_21A02C850()
{
  result = qword_27CCDBB88;
  if (!qword_27CCDBB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBB88);
  }

  return result;
}

unint64_t sub_21A02C8A4()
{
  result = qword_27CCDBBC0;
  if (!qword_27CCDBBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBBC0);
  }

  return result;
}

unint64_t sub_21A02C8F8()
{
  result = qword_27CCDBBC8;
  if (!qword_27CCDBBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBBC8);
  }

  return result;
}

unint64_t sub_21A02C94C()
{
  result = qword_27CCDBBD0;
  if (!qword_27CCDBBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBBD0);
  }

  return result;
}

unint64_t sub_21A02C9A0()
{
  result = qword_27CCDBBD8;
  if (!qword_27CCDBBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBBD8);
  }

  return result;
}

unint64_t sub_21A02C9F4()
{
  result = qword_27CCDBBE0;
  if (!qword_27CCDBBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBBE0);
  }

  return result;
}

unint64_t sub_21A02CA48()
{
  result = qword_27CCDBC28;
  if (!qword_27CCDBC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBC28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserDefaultsNewsLiveActivityRepository.Schema.ScheduledActivity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A02CC50()
{
  result = qword_27CCDBC38;
  if (!qword_27CCDBC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBC38);
  }

  return result;
}

unint64_t sub_21A02CCA8()
{
  result = qword_27CCDBC40;
  if (!qword_27CCDBC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBC40);
  }

  return result;
}

unint64_t sub_21A02CD00()
{
  result = qword_27CCDBC48;
  if (!qword_27CCDBC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBC48);
  }

  return result;
}

unint64_t sub_21A02CD58()
{
  result = qword_27CCDBC50;
  if (!qword_27CCDBC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBC50);
  }

  return result;
}

unint64_t sub_21A02CDB0()
{
  result = qword_27CCDBC58;
  if (!qword_27CCDBC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBC58);
  }

  return result;
}

unint64_t sub_21A02CE08()
{
  result = qword_27CCDBC60;
  if (!qword_27CCDBC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBC60);
  }

  return result;
}

unint64_t sub_21A02CE60()
{
  result = qword_27CCDBC68;
  if (!qword_27CCDBC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBC68);
  }

  return result;
}

unint64_t sub_21A02CEB8()
{
  result = qword_27CCDBC70;
  if (!qword_27CCDBC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBC70);
  }

  return result;
}

unint64_t sub_21A02CF10()
{
  result = qword_27CCDBC78;
  if (!qword_27CCDBC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBC78);
  }

  return result;
}

unint64_t sub_21A02CF68()
{
  result = qword_27CCDBC80;
  if (!qword_27CCDBC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBC80);
  }

  return result;
}

unint64_t sub_21A02CFC0()
{
  result = qword_27CCDBC88;
  if (!qword_27CCDBC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBC88);
  }

  return result;
}

unint64_t sub_21A02D018()
{
  result = qword_27CCDBC90;
  if (!qword_27CCDBC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBC90);
  }

  return result;
}

unint64_t sub_21A02D070()
{
  result = qword_27CCDBC98;
  if (!qword_27CCDBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBC98);
  }

  return result;
}

unint64_t sub_21A02D0C8()
{
  result = qword_27CCDBCA0;
  if (!qword_27CCDBCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBCA0);
  }

  return result;
}

unint64_t sub_21A02D120()
{
  result = qword_27CCDBCA8;
  if (!qword_27CCDBCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBCA8);
  }

  return result;
}

unint64_t sub_21A02D178()
{
  result = qword_27CCDBCB0;
  if (!qword_27CCDBCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBCB0);
  }

  return result;
}

unint64_t sub_21A02D1D0()
{
  result = qword_27CCDBCB8;
  if (!qword_27CCDBCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBCB8);
  }

  return result;
}

unint64_t sub_21A02D228()
{
  result = qword_27CCDBCC0;
  if (!qword_27CCDBCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBCC0);
  }

  return result;
}

uint64_t sub_21A02D27C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021A10A8D0 == a2 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021A10A8F0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_21A0E6C5C();

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

uint64_t sub_21A02D398(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C756465686373 && a2 == 0xE900000000000064;
  if (v4 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021A109E50 == a2 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEA00000000006465 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000021A109E30 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_21A0E6C5C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_21A02D518(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xEA00000000004449;
  if (v4 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xEC00000065746144 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021A10A910 == a2 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000021A10A930 == a2 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756F437972746572 && a2 == 0xEA0000000000746ELL || (sub_21A0E6C5C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xED000079616C6544 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021A10A950 == a2 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021A10A970 == a2 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746E497972746572 && a2 == 0xED00006C61767265 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x800000021A10A990 == a2 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x756F437972746572 && a2 == 0xED000078614D746ELL || (sub_21A0E6C5C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x800000021A10A9B0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_21A0E6C5C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

__n128 ActivityAssetTheme.init(photo:symbol:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_219F5EC1C(v36);
  v6 = v36[9];
  a3[8] = v36[8];
  a3[9] = v6;
  a3[10] = v36[10];
  v7 = v36[5];
  a3[4] = v36[4];
  a3[5] = v7;
  v8 = v36[7];
  a3[6] = v36[6];
  a3[7] = v8;
  v9 = v36[1];
  *a3 = v36[0];
  a3[1] = v9;
  v10 = v36[3];
  a3[2] = v36[2];
  a3[3] = v10;
  sub_219F5EC1C(v37);
  v11 = v37[9];
  a3[19] = v37[8];
  a3[20] = v11;
  a3[21] = v37[10];
  v12 = v37[5];
  a3[15] = v37[4];
  a3[16] = v12;
  v13 = v37[7];
  a3[17] = v37[6];
  a3[18] = v13;
  v14 = v37[1];
  a3[11] = v37[0];
  a3[12] = v14;
  v15 = v37[3];
  a3[13] = v37[2];
  a3[14] = v15;
  v16 = a3[9];
  v38[8] = a3[8];
  v38[9] = v16;
  v38[10] = a3[10];
  v17 = a3[5];
  v38[4] = a3[4];
  v38[5] = v17;
  v18 = a3[7];
  v38[6] = a3[6];
  v38[7] = v18;
  v19 = a3[1];
  v38[0] = *a3;
  v38[1] = v19;
  v20 = a3[3];
  v38[2] = a3[2];
  v38[3] = v20;
  sub_219F6409C(v38, &qword_27CCDA4A8);
  v21 = a1[9];
  a3[8] = a1[8];
  a3[9] = v21;
  a3[10] = a1[10];
  v22 = a1[5];
  a3[4] = a1[4];
  a3[5] = v22;
  v23 = a1[7];
  a3[6] = a1[6];
  a3[7] = v23;
  v24 = a1[1];
  *a3 = *a1;
  a3[1] = v24;
  v25 = a1[3];
  a3[2] = a1[2];
  a3[3] = v25;
  v26 = a3[20];
  v39[8] = a3[19];
  v39[9] = v26;
  v39[10] = a3[21];
  v27 = a3[16];
  v39[4] = a3[15];
  v39[5] = v27;
  v28 = a3[18];
  v39[6] = a3[17];
  v39[7] = v28;
  v29 = a3[12];
  v39[0] = a3[11];
  v39[1] = v29;
  v30 = a3[14];
  v39[2] = a3[13];
  v39[3] = v30;
  sub_219F6409C(v39, &qword_27CCD9B40);
  v31 = *(a2 + 144);
  a3[19] = *(a2 + 128);
  a3[20] = v31;
  a3[21] = *(a2 + 160);
  v32 = *(a2 + 80);
  a3[15] = *(a2 + 64);
  a3[16] = v32;
  v33 = *(a2 + 112);
  a3[17] = *(a2 + 96);
  a3[18] = v33;
  v34 = *(a2 + 16);
  a3[11] = *a2;
  a3[12] = v34;
  result = *(a2 + 48);
  a3[13] = *(a2 + 32);
  a3[14] = result;
  return result;
}

uint64_t ActivityAssetTheme.photo.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26 = v3;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[3];
  v6 = v1[5];
  v21 = v1[4];
  v7 = v21;
  v22 = v6;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[10];
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v2;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v5;
  return sub_219F45500(v18, &v17, &qword_27CCDA4A8);
}

__n128 ActivityAssetTheme.photo.setter(uint64_t a1)
{
  v3 = v1[9];
  v13[8] = v1[8];
  v13[9] = v3;
  v13[10] = v1[10];
  v4 = v1[5];
  v13[4] = v1[4];
  v13[5] = v4;
  v5 = v1[7];
  v13[6] = v1[6];
  v13[7] = v5;
  v6 = v1[1];
  v13[0] = *v1;
  v13[1] = v6;
  v7 = v1[3];
  v13[2] = v1[2];
  v13[3] = v7;
  sub_219F6409C(v13, &qword_27CCDA4A8);
  v8 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v8;
  v1[10] = *(a1 + 160);
  v9 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v9;
  v10 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v11;
  result = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = result;
  return result;
}

uint64_t ActivityAssetTheme.symbol.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[18];
  v3 = v1[20];
  v25 = v1[19];
  v26 = v3;
  v4 = v1[20];
  v27 = v1[21];
  v5 = v1[14];
  v6 = v1[16];
  v21 = v1[15];
  v7 = v21;
  v22 = v6;
  v8 = v1[16];
  v9 = v1[18];
  v23 = v1[17];
  v10 = v23;
  v24 = v9;
  v11 = v1[12];
  v18[0] = v1[11];
  v18[1] = v11;
  v12 = v1[14];
  v14 = v1[11];
  v13 = v1[12];
  v19 = v1[13];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[21];
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v2;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v5;
  return sub_219F45500(v18, &v17, &qword_27CCD9B40);
}

__n128 ActivityAssetTheme.symbol.setter(uint64_t a1)
{
  v3 = v1[20];
  v13[8] = v1[19];
  v13[9] = v3;
  v13[10] = v1[21];
  v4 = v1[16];
  v13[4] = v1[15];
  v13[5] = v4;
  v5 = v1[18];
  v13[6] = v1[17];
  v13[7] = v5;
  v6 = v1[12];
  v13[0] = v1[11];
  v13[1] = v6;
  v7 = v1[14];
  v13[2] = v1[13];
  v13[3] = v7;
  sub_219F6409C(v13, &qword_27CCD9B40);
  v8 = *(a1 + 144);
  v1[19] = *(a1 + 128);
  v1[20] = v8;
  v1[21] = *(a1 + 160);
  v9 = *(a1 + 80);
  v1[15] = *(a1 + 64);
  v1[16] = v9;
  v10 = *(a1 + 112);
  v1[17] = *(a1 + 96);
  v1[18] = v10;
  v11 = *(a1 + 16);
  v1[11] = *a1;
  v1[12] = v11;
  result = *(a1 + 48);
  v1[13] = *(a1 + 32);
  v1[14] = result;
  return result;
}

uint64_t sub_21A02DD60()
{
  if (*v0)
  {
    return 0x6C6F626D7973;
  }

  else
  {
    return 0x6F746F6870;
  }
}

uint64_t sub_21A02DD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F746F6870 && a2 == 0xE500000000000000;
  if (v6 || (sub_21A0E6C5C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A0E6C5C();

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

uint64_t sub_21A02DE68(uint64_t a1)
{
  v2 = sub_21A02F7C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A02DEA4(uint64_t a1)
{
  v2 = sub_21A02F7C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityAssetTheme.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBCC8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v24 - v7;
  v9 = v1[9];
  v56 = v1[8];
  v57 = v9;
  v10 = v1[11];
  v58 = v1[10];
  v11 = v1[5];
  v52 = v1[4];
  v53 = v11;
  v12 = v1[7];
  v54 = v1[6];
  v55 = v12;
  v13 = v1[1];
  v48 = *v1;
  v49 = v13;
  v14 = v1[3];
  v50 = v1[2];
  v51 = v14;
  v15 = v1[18];
  v16 = v1[20];
  v17 = v1[21];
  v67 = v1[19];
  v68 = v16;
  v69 = v17;
  v18 = v1[14];
  v19 = v1[16];
  v20 = v1[17];
  v63 = v1[15];
  v64 = v19;
  v65 = v20;
  v66 = v15;
  v21 = v1[12];
  v22 = v1[13];
  v59 = v10;
  v60 = v21;
  v61 = v22;
  v62 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219F45500(&v48, &v37, &qword_27CCDA4A8);
  sub_21A02F7C0();
  sub_21A0E6EAC();
  v45 = v56;
  v46 = v57;
  v47 = v58;
  v41 = v52;
  v42 = v53;
  v43 = v54;
  v44 = v55;
  v37 = v48;
  v38 = v49;
  v39 = v50;
  v40 = v51;
  v71 = 0;
  sub_21A02F814();
  sub_21A0E6B6C();
  v36[8] = v45;
  v36[9] = v46;
  v36[10] = v47;
  v36[4] = v41;
  v36[5] = v42;
  v36[6] = v43;
  v36[7] = v44;
  v36[0] = v37;
  v36[1] = v38;
  v36[2] = v39;
  v36[3] = v40;
  sub_219F6409C(v36, &qword_27CCDA4A8);
  if (!v2)
  {
    v33 = v67;
    v34 = v68;
    v35 = v69;
    v29 = v63;
    v30 = v64;
    v31 = v65;
    v32 = v66;
    v25 = v59;
    v26 = v60;
    v27 = v61;
    v28 = v62;
    v70 = 1;
    sub_219F45500(&v59, v24, &qword_27CCD9B40);
    sub_21A02F868();
    sub_21A0E6B6C();
    v24[8] = v33;
    v24[9] = v34;
    v24[10] = v35;
    v24[4] = v29;
    v24[5] = v30;
    v24[6] = v31;
    v24[7] = v32;
    v24[0] = v25;
    v24[1] = v26;
    v24[2] = v27;
    v24[3] = v28;
    sub_219F6409C(v24, &qword_27CCD9B40);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ActivityAssetTheme.hashValue.getter()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v38 = v0[7];
  v39 = v1;
  v4 = v0[10];
  v5 = v0[11];
  v40 = v2;
  v41 = v4;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v34 = v0[3];
  v35 = v6;
  v36 = v7;
  v37 = v3;
  v9 = *v0;
  v32 = v0[1];
  v33 = v8;
  v10 = v0[18];
  v11 = v0[20];
  v12 = v0[21];
  v28 = v0[19];
  v29 = v11;
  v30 = v12;
  v31 = v9;
  v13 = v0[14];
  v14 = v0[16];
  v15 = v0[17];
  v24 = v0[15];
  v25 = v14;
  v26 = v15;
  v27 = v10;
  v16 = v0[12];
  v17 = v0[13];
  v20 = v5;
  v21 = v16;
  v22 = v17;
  v23 = v13;
  sub_21A0E6DAC();
  sub_21A02EB84(v19, sub_219F5EBE4);
  sub_21A02EB84(v19, sub_219F5EBE4);
  return sub_21A0E6DFC();
}

uint64_t ActivityAssetTheme.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBCE8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - v7;
  sub_219F5EC1C(v51);
  v50[8] = v51[8];
  v50[9] = v51[9];
  v50[10] = v51[10];
  v50[4] = v51[4];
  v50[5] = v51[5];
  v50[7] = v51[7];
  v50[6] = v51[6];
  v50[0] = v51[0];
  v50[1] = v51[1];
  v50[3] = v51[3];
  v50[2] = v51[2];
  sub_219F5EC1C(v52);
  v50[19] = v52[8];
  v50[20] = v52[9];
  v50[21] = v52[10];
  v50[15] = v52[4];
  v50[16] = v52[5];
  v50[18] = v52[7];
  v50[17] = v52[6];
  v50[11] = v52[0];
  v50[12] = v52[1];
  v50[14] = v52[3];
  v50[13] = v52[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A02F7C0();
  sub_21A0E6E7C();
  if (!v2)
  {
    v9 = v12;
    v54 = 0;
    sub_21A02F8EC();
    sub_21A0E6A8C();
    v46 = v48[20];
    v47 = v48[21];
    v41 = v48[15];
    v42 = v48[16];
    v44 = v48[18];
    v45 = v48[19];
    v43 = v48[17];
    v37 = v48[11];
    v38 = v48[12];
    v39 = v48[13];
    v40 = v48[14];
    v48[8] = v50[8];
    v48[9] = v50[9];
    v48[10] = v50[10];
    v48[4] = v50[4];
    v48[5] = v50[5];
    v48[7] = v50[7];
    v48[6] = v50[6];
    v48[0] = v50[0];
    v48[1] = v50[1];
    v48[3] = v50[3];
    v48[2] = v50[2];
    sub_219F6409C(v48, &qword_27CCDA4A8);
    v50[8] = v45;
    v50[9] = v46;
    v50[10] = v47;
    v50[4] = v41;
    v50[5] = v42;
    v50[7] = v44;
    v50[6] = v43;
    v50[0] = v37;
    v50[1] = v38;
    v50[3] = v40;
    v50[2] = v39;
    v53 = 1;
    sub_21A02F940();
    sub_21A0E6A8C();
    (*(v5 + 8))(v8, v4);
    v21 = v34;
    v22 = v35;
    v23 = v36;
    v17 = v30;
    v18 = v31;
    v19 = v32;
    v20 = v33;
    v13 = v26;
    v14 = v27;
    v15 = v28;
    v16 = v29;
    v24[8] = v50[19];
    v24[9] = v50[20];
    v24[10] = v50[21];
    v24[4] = v50[15];
    v24[5] = v50[16];
    v24[6] = v50[17];
    v24[7] = v50[18];
    v24[0] = v50[11];
    v24[1] = v50[12];
    v24[2] = v50[13];
    v24[3] = v50[14];
    sub_219F6409C(v24, &qword_27CCD9B40);
    v50[19] = v21;
    v50[20] = v22;
    v50[21] = v23;
    v50[15] = v17;
    v50[16] = v18;
    v50[17] = v19;
    v50[18] = v20;
    v50[11] = v13;
    v50[12] = v14;
    v50[13] = v15;
    v50[14] = v16;
    memcpy(v25, v50, sizeof(v25));
    memcpy(v9, v50, 0x160uLL);
    sub_21A02F994(v25, v49);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  memcpy(v49, v50, sizeof(v49));
  return sub_21A02F8BC(v49);
}

uint64_t sub_21A02E8FC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v38 = v0[7];
  v39 = v1;
  v4 = v0[10];
  v5 = v0[11];
  v40 = v2;
  v41 = v4;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v34 = v0[3];
  v35 = v6;
  v36 = v7;
  v37 = v3;
  v9 = *v0;
  v32 = v0[1];
  v33 = v8;
  v10 = v0[18];
  v11 = v0[20];
  v12 = v0[21];
  v28 = v0[19];
  v29 = v11;
  v30 = v12;
  v31 = v9;
  v13 = v0[14];
  v14 = v0[16];
  v15 = v0[17];
  v24 = v0[15];
  v25 = v14;
  v26 = v15;
  v27 = v10;
  v16 = v0[12];
  v17 = v0[13];
  v20 = v5;
  v21 = v16;
  v22 = v17;
  v23 = v13;
  sub_21A0E6DAC();
  sub_21A02EB84(v19, sub_219F5EBE4);
  sub_21A02EB84(v19, sub_219F5EBE4);
  return sub_21A0E6DFC();
}

uint64_t sub_21A02EA98()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v38 = v0[7];
  v39 = v1;
  v4 = v0[10];
  v5 = v0[11];
  v40 = v2;
  v41 = v4;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v34 = v0[3];
  v35 = v6;
  v36 = v7;
  v37 = v3;
  v9 = *v0;
  v32 = v0[1];
  v33 = v8;
  v10 = v0[18];
  v11 = v0[20];
  v12 = v0[21];
  v28 = v0[19];
  v29 = v11;
  v30 = v12;
  v31 = v9;
  v13 = v0[14];
  v14 = v0[16];
  v15 = v0[17];
  v24 = v0[15];
  v25 = v14;
  v26 = v15;
  v27 = v10;
  v16 = v0[12];
  v17 = v0[13];
  v20 = v5;
  v21 = v16;
  v22 = v17;
  v23 = v13;
  sub_21A0E6DAC();
  sub_21A02EB84(v19, sub_219F5EBE4);
  sub_21A02EB84(v19, sub_219F5EBE4);
  return sub_21A0E6DFC();
}

uint64_t sub_21A02EB84(uint64_t a1, unsigned int (*a2)(_OWORD *))
{
  v4 = *(v2 + 112);
  v5 = *(v2 + 144);
  v15[8] = *(v2 + 128);
  v15[9] = v5;
  v15[10] = *(v2 + 160);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  v15[4] = *(v2 + 64);
  v15[5] = v6;
  v9 = *(v2 + 72);
  v8 = *(v2 + 80);
  v11 = *(v2 + 160);
  v10 = *(v2 + 168);
  v15[6] = v7;
  v15[7] = v4;
  v12 = *(v2 + 16);
  v15[0] = *v2;
  v15[1] = v12;
  v13 = *(v2 + 48);
  v15[2] = *(v2 + 32);
  v15[3] = v13;
  if (a2(v15) != 1)
  {
    sub_21A0E6DCC();
    if (v9)
    {
      sub_21A0E6DCC();
      ActivityFill.hash(into:)(a1);
      sub_219F91544(a1, v9);
      sub_219F6AB48(a1, v8);
      if (v11)
      {
LABEL_4:
        sub_21A0E6DCC();
        ActivityFill.hash(into:)(a1);
        sub_219F91544(a1, v11);
        return sub_219F6AB48(a1, v10);
      }
    }

    else
    {
      sub_21A0E6DCC();
      if (v11)
      {
        goto LABEL_4;
      }
    }
  }

  return sub_21A0E6DCC();
}

BOOL _s22NewsLiveActivitiesCore18ActivityAssetThemeV2eeoiySbAC_ACtFZ_0(__int128 *a1, _OWORD *a2)
{
  v4 = a1[7];
  v5 = a1[9];
  v164 = a1[8];
  v165 = v5;
  v6 = a1[9];
  v166 = a1[10];
  v7 = a1[3];
  v8 = a1[5];
  v160 = a1[4];
  v161 = v8;
  v9 = a1[5];
  v10 = a1[6];
  v11 = v10;
  v163 = a1[7];
  v162 = v10;
  v12 = a1[1];
  v159[0] = *a1;
  v159[1] = v12;
  v13 = a1[2];
  v14 = *a1;
  v15 = a1[1];
  v16 = v13;
  v159[3] = a1[3];
  v159[2] = v13;
  v17 = a1[18];
  v18 = a1[20];
  v19 = a1[21];
  v175 = a1[19];
  v176 = v18;
  v177 = v19;
  v20 = a1[14];
  v21 = a1[16];
  v22 = a1[17];
  v171 = a1[15];
  v172 = v21;
  v174 = v17;
  v173 = v22;
  v23 = a1[12];
  v24 = a1[13];
  v25 = a1[10];
  v167 = a1[11];
  v168 = v23;
  v170 = v20;
  v169 = v24;
  v26 = a2[7];
  v27 = a2[9];
  v183 = a2[8];
  v184 = v27;
  v28 = a2[9];
  v185 = a2[10];
  v29 = a2[3];
  v30 = a2[5];
  v179 = a2[4];
  v180 = v30;
  v31 = a2[5];
  v32 = a2[6];
  v33 = v32;
  v182 = a2[7];
  v181 = v32;
  v34 = a2[1];
  v178[0] = *a2;
  v178[1] = v34;
  v35 = a2[2];
  v37 = *a2;
  v36 = a2[1];
  v38 = v35;
  v178[3] = a2[3];
  v178[2] = v35;
  v39 = a2[18];
  v41 = a2[20];
  v40 = a2[21];
  v194 = a2[19];
  v195 = v41;
  v196 = v40;
  v42 = a2[14];
  v43 = a2[16];
  v44 = a2[17];
  v190 = a2[15];
  v191 = v43;
  v193 = v39;
  v192 = v44;
  v45 = a2[12];
  v46 = a2[13];
  v47 = a2[10];
  v186 = a2[11];
  v187 = v45;
  v189 = v42;
  v188 = v46;
  v48 = a1[7];
  v49 = a1[9];
  __src[8] = a1[8];
  __src[9] = v49;
  v50 = a1[3];
  v51 = a1[5];
  __src[4] = a1[4];
  __src[5] = v51;
  v52 = a1[6];
  __src[7] = v48;
  __src[6] = v52;
  v53 = a1[1];
  __src[0] = *a1;
  __src[1] = v53;
  v54 = a1[2];
  __src[3] = v50;
  __src[2] = v54;
  __src[18] = v26;
  __src[19] = v183;
  __src[20] = v28;
  __src[21] = v47;
  __src[14] = v29;
  __src[15] = v179;
  __src[16] = v31;
  __src[17] = v33;
  __src[10] = a1[10];
  __src[11] = v37;
  __src[12] = v36;
  __src[13] = v38;
  v197[8] = v164;
  v197[9] = v6;
  v197[10] = v25;
  v197[4] = v160;
  v197[5] = v9;
  v197[6] = v11;
  v197[7] = v4;
  v197[0] = v14;
  v197[1] = v15;
  v197[2] = v16;
  v197[3] = v7;
  if (sub_219F5EBE4(v197) == 1)
  {
    v55 = a2[9];
    __dst[8] = a2[8];
    __dst[9] = v55;
    __dst[10] = a2[10];
    v56 = a2[5];
    __dst[4] = a2[4];
    __dst[5] = v56;
    v57 = a2[7];
    __dst[6] = a2[6];
    __dst[7] = v57;
    v58 = a2[1];
    __dst[0] = *a2;
    __dst[1] = v58;
    v59 = a2[3];
    __dst[2] = a2[2];
    __dst[3] = v59;
    if (sub_219F5EBE4(__dst) == 1)
    {
      v60 = a1[9];
      v155 = a1[8];
      v156 = v60;
      v157 = a1[10];
      v61 = a1[5];
      v151 = a1[4];
      v152 = v61;
      v62 = a1[6];
      v154 = a1[7];
      v153 = v62;
      v63 = a1[1];
      v147 = *a1;
      v148 = v63;
      v64 = a1[2];
      v150 = a1[3];
      v149 = v64;
      sub_219F45500(v159, &v135, &qword_27CCDA4A8);
      sub_219F45500(v178, &v135, &qword_27CCDA4A8);
      sub_219F6409C(&v147, &qword_27CCDA4A8);
      goto LABEL_9;
    }

    sub_219F45500(v159, &v147, &qword_27CCDA4A8);
    sub_219F45500(v178, &v147, &qword_27CCDA4A8);
LABEL_7:
    memcpy(__dst, __src, sizeof(__dst));
    v87 = &unk_27CCDBD20;
LABEL_16:
    sub_219F6409C(__dst, v87);
    return 0;
  }

  v65 = a1[7];
  v66 = a1[9];
  v155 = a1[8];
  v156 = v66;
  v67 = a1[9];
  v157 = a1[10];
  v68 = a1[3];
  v69 = a1[5];
  v151 = a1[4];
  v152 = v69;
  v71 = a1[5];
  v70 = a1[6];
  v72 = v70;
  v154 = a1[7];
  v153 = v70;
  v73 = a1[1];
  v147 = *a1;
  v148 = v73;
  v74 = a1[2];
  v76 = *a1;
  v75 = a1[1];
  v150 = a1[3];
  v149 = v74;
  v143 = v155;
  v144 = v67;
  v145 = a1[10];
  v139 = v151;
  v140 = v71;
  v141 = v72;
  v142 = v65;
  v135 = v76;
  v136 = v75;
  v137 = v74;
  v138 = v68;
  v77 = a2[9];
  __dst[8] = a2[8];
  __dst[9] = v77;
  __dst[10] = a2[10];
  v78 = a2[5];
  __dst[4] = a2[4];
  __dst[5] = v78;
  v79 = a2[7];
  __dst[6] = a2[6];
  __dst[7] = v79;
  v80 = a2[1];
  __dst[0] = *a2;
  __dst[1] = v80;
  v81 = a2[3];
  __dst[2] = a2[2];
  __dst[3] = v81;
  if (sub_219F5EBE4(__dst) == 1)
  {
    v82 = a1[9];
    v132 = a1[8];
    v133 = v82;
    v134 = a1[10];
    v83 = a1[5];
    v128 = a1[4];
    v129 = v83;
    v84 = a1[7];
    v130 = a1[6];
    v131 = v84;
    v85 = a1[1];
    v124 = *a1;
    v125 = v85;
    v86 = a1[3];
    v126 = a1[2];
    v127 = v86;
    sub_219F45500(v159, &v113, &qword_27CCDA4A8);
    sub_219F45500(v178, &v113, &qword_27CCDA4A8);
    sub_219F45500(&v147, &v113, &qword_27CCDA4A8);
    sub_21A02FCBC(&v124);
    goto LABEL_7;
  }

  v88 = a2[9];
  v132 = a2[8];
  v133 = v88;
  v134 = a2[10];
  v89 = a2[5];
  v128 = a2[4];
  v129 = v89;
  v90 = a2[7];
  v130 = a2[6];
  v131 = v90;
  v91 = a2[1];
  v124 = *a2;
  v125 = v91;
  v92 = a2[3];
  v126 = a2[2];
  v127 = v92;
  sub_219F45500(v159, &v113, &qword_27CCDA4A8);
  sub_219F45500(v178, &v113, &qword_27CCDA4A8);
  sub_219F45500(&v147, &v113, &qword_27CCDA4A8);
  v93 = _s22NewsLiveActivitiesCore19ActivitySymbolThemeV2eeoiySbAC_ACtFZ_0(&v135, &v124);
  v110 = v132;
  v111 = v133;
  v112 = v134;
  v106 = v128;
  v107 = v129;
  v108 = v130;
  v109 = v131;
  v102 = v124;
  v103 = v125;
  v104 = v126;
  v105 = v127;
  sub_21A02FCBC(&v102);
  v121 = v143;
  v122 = v144;
  v123 = v145;
  v117 = v139;
  v118 = v140;
  v119 = v141;
  v120 = v142;
  v113 = v135;
  v114 = v136;
  v115 = v137;
  v116 = v138;
  sub_21A02FCBC(&v113);
  v94 = a1[9];
  v132 = a1[8];
  v133 = v94;
  v134 = a1[10];
  v95 = a1[5];
  v128 = a1[4];
  v129 = v95;
  v96 = a1[7];
  v130 = a1[6];
  v131 = v96;
  v97 = a1[1];
  v124 = *a1;
  v125 = v97;
  v98 = a1[3];
  v126 = a1[2];
  v127 = v98;
  sub_219F6409C(&v124, &qword_27CCDA4A8);
  if ((v93 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  __src[8] = v175;
  __src[9] = v176;
  __src[4] = v171;
  __src[5] = v172;
  __src[7] = v174;
  __src[6] = v173;
  __src[0] = v167;
  __src[1] = v168;
  __src[3] = v170;
  __src[2] = v169;
  __src[18] = v193;
  __src[19] = v194;
  __src[20] = v195;
  __src[21] = v196;
  __src[14] = v189;
  __src[15] = v190;
  __src[16] = v191;
  __src[17] = v192;
  __src[10] = v177;
  __src[11] = v186;
  __src[12] = v187;
  __src[13] = v188;
  v155 = v175;
  v156 = v176;
  v157 = v177;
  v151 = v171;
  v152 = v172;
  v154 = v174;
  v153 = v173;
  v147 = v167;
  v148 = v168;
  v150 = v170;
  v149 = v169;
  if (sub_219F5EBE4(&v147) != 1)
  {
    v143 = __src[8];
    v144 = __src[9];
    v145 = __src[10];
    v139 = __src[4];
    v140 = __src[5];
    v141 = __src[6];
    v142 = __src[7];
    v135 = __src[0];
    v136 = __src[1];
    v137 = __src[2];
    v138 = __src[3];
    v132 = __src[8];
    v133 = __src[9];
    v134 = __src[10];
    v128 = __src[4];
    v129 = __src[5];
    v130 = __src[6];
    v131 = __src[7];
    v124 = __src[0];
    v125 = __src[1];
    v126 = __src[2];
    v127 = __src[3];
    __dst[8] = __src[19];
    __dst[9] = __src[20];
    __dst[10] = __src[21];
    __dst[4] = __src[15];
    __dst[5] = __src[16];
    __dst[6] = __src[17];
    __dst[7] = __src[18];
    __dst[0] = __src[11];
    __dst[1] = __src[12];
    __dst[2] = __src[13];
    __dst[3] = __src[14];
    if (sub_219F5EBE4(__dst) == 1)
    {
      v121 = __src[8];
      v122 = __src[9];
      v123 = __src[10];
      v117 = __src[4];
      v118 = __src[5];
      v119 = __src[6];
      v120 = __src[7];
      v113 = __src[0];
      v114 = __src[1];
      v115 = __src[2];
      v116 = __src[3];
      sub_219F45500(&v167, &v102, &qword_27CCD9B40);
      sub_219F45500(&v186, &v102, &qword_27CCD9B40);
      sub_219F45500(&v135, &v102, &qword_27CCD9B40);
      sub_21A02FC68(&v113);
LABEL_15:
      memcpy(__dst, __src, sizeof(__dst));
      v87 = &unk_27CCDBD28;
      goto LABEL_16;
    }

    v121 = __src[19];
    v122 = __src[20];
    v123 = __src[21];
    v117 = __src[15];
    v118 = __src[16];
    v119 = __src[17];
    v120 = __src[18];
    v113 = __src[11];
    v114 = __src[12];
    v115 = __src[13];
    v116 = __src[14];
    sub_219F45500(&v167, &v102, &qword_27CCD9B40);
    sub_219F45500(&v186, &v102, &qword_27CCD9B40);
    sub_219F45500(&v135, &v102, &qword_27CCD9B40);
    v100 = _s22NewsLiveActivitiesCore19ActivitySymbolThemeV2eeoiySbAC_ACtFZ_0(&v124, &v113);
    v101[8] = v121;
    v101[9] = v122;
    v101[10] = v123;
    v101[4] = v117;
    v101[5] = v118;
    v101[6] = v119;
    v101[7] = v120;
    v101[0] = v113;
    v101[1] = v114;
    v101[2] = v115;
    v101[3] = v116;
    sub_21A02FC68(v101);
    v110 = v132;
    v111 = v133;
    v112 = v134;
    v106 = v128;
    v107 = v129;
    v108 = v130;
    v109 = v131;
    v102 = v124;
    v103 = v125;
    v104 = v126;
    v105 = v127;
    sub_21A02FC68(&v102);
    v121 = __src[8];
    v122 = __src[9];
    v123 = __src[10];
    v117 = __src[4];
    v118 = __src[5];
    v119 = __src[6];
    v120 = __src[7];
    v113 = __src[0];
    v114 = __src[1];
    v115 = __src[2];
    v116 = __src[3];
    sub_219F6409C(&v113, &qword_27CCD9B40);
    return (v100 & 1) != 0;
  }

  __dst[8] = __src[19];
  __dst[9] = __src[20];
  __dst[10] = __src[21];
  __dst[4] = __src[15];
  __dst[5] = __src[16];
  __dst[6] = __src[17];
  __dst[7] = __src[18];
  __dst[0] = __src[11];
  __dst[1] = __src[12];
  __dst[2] = __src[13];
  __dst[3] = __src[14];
  if (sub_219F5EBE4(__dst) != 1)
  {
    sub_219F45500(&v167, &v135, &qword_27CCD9B40);
    sub_219F45500(&v186, &v135, &qword_27CCD9B40);
    goto LABEL_15;
  }

  v143 = __src[8];
  v144 = __src[9];
  v145 = __src[10];
  v139 = __src[4];
  v140 = __src[5];
  v141 = __src[6];
  v142 = __src[7];
  v135 = __src[0];
  v136 = __src[1];
  v137 = __src[2];
  v138 = __src[3];
  sub_219F45500(&v167, &v124, &qword_27CCD9B40);
  sub_219F45500(&v186, &v124, &qword_27CCD9B40);
  sub_219F6409C(&v135, &qword_27CCD9B40);
  return 1;
}

unint64_t sub_21A02F7C0()
{
  result = qword_27CCDBCD0;
  if (!qword_27CCDBCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBCD0);
  }

  return result;
}

unint64_t sub_21A02F814()
{
  result = qword_27CCDBCD8;
  if (!qword_27CCDBCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBCD8);
  }

  return result;
}

unint64_t sub_21A02F868()
{
  result = qword_27CCDBCE0;
  if (!qword_27CCDBCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBCE0);
  }

  return result;
}

unint64_t sub_21A02F8EC()
{
  result = qword_27CCDBCF0;
  if (!qword_27CCDBCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBCF0);
  }

  return result;
}

unint64_t sub_21A02F940()
{
  result = qword_27CCDBCF8;
  if (!qword_27CCDBCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBCF8);
  }

  return result;
}

unint64_t sub_21A02F9D0()
{
  result = qword_27CCDBD00;
  if (!qword_27CCDBD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBD00);
  }

  return result;
}

uint64_t sub_21A02FA2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 352))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 72);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_21A02FA94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 352) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 352) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_21A02FB64()
{
  result = qword_27CCDBD08;
  if (!qword_27CCDBD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBD08);
  }

  return result;
}

unint64_t sub_21A02FBBC()
{
  result = qword_27CCDBD10;
  if (!qword_27CCDBD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBD10);
  }

  return result;
}

unint64_t sub_21A02FC14()
{
  result = qword_27CCDBD18;
  if (!qword_27CCDBD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBD18);
  }

  return result;
}

uint64_t sub_21A02FD10()
{
  sub_21A02FD4C();
  sub_21A0E555C();
  return v1;
}

unint64_t sub_21A02FD4C()
{
  result = qword_27CCDBD30;
  if (!qword_27CCDBD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBD30);
  }

  return result;
}

uint64_t type metadata accessor for SynchronizeCandidateImageVisibilityViewModifier()
{
  result = qword_27CCDBD38;
  if (!qword_27CCDBD38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A02FE24()
{
  type metadata accessor for NationalElectionTheme();
  if (v0 <= 0x3F)
  {
    sub_21A02FEE0(319, &qword_27CCDB530);
    if (v1 <= 0x3F)
    {
      sub_21A02FEE0(319, &qword_27CCD9B18);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21A02FEE0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21A0E525C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_21A02FF54()
{
  v1 = sub_21A0E554C();
  v18 = *(v1 - 8);
  v19 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v7 = v0[2];
  v6 = v0[3];
  v30 = *v0;
  v31 = v5;
  v32 = v7;
  v33 = v6;
  v20 = type metadata accessor for SynchronizeCandidateImageVisibilityViewModifier();
  v8 = v0 + *(v20 + 24);
  v10 = *v8;
  v9 = *(v8 + 1);
  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  v13 = *(v8 + 4);
  if (v8[40] == 1)
  {
    *&v27 = *v8;
    *(&v27 + 1) = v9;
    *&v28 = v12;
    *(&v28 + 1) = v11;
    v29 = v13;

    sub_219F7F800(v10, v9, v12, v11, v13, 1);
  }

  else
  {

    sub_219F7F800(v10, v9, v12, v11, v13, 0);
    sub_21A0E66AC();
    v14 = sub_21A0E575C();
    sub_21A0E512C();

    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F63A50(v10, v9, v12, v11, v13, 0);
    (*(v18 + 8))(v4, v19);
  }

  v22 = v27;
  v23 = v28;
  v24 = v29;
  sub_21A003CC0(v21);
  v15 = sub_219FC2D94(&v22, v21);
  sub_21A004210(v21);
  v25[0] = v22;
  v25[1] = v23;
  v26 = v24;
  sub_219F5ED9C(v25);

  return v15 & 1;
}

uint64_t sub_21A0301B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = sub_21A02FF54();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBD48);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBD50);
  v8 = a2 + *(result + 36);
  *v8 = KeyPath;
  *(v8 + 8) = v5 & 1;
  return result;
}

unint64_t sub_21A030268()
{
  result = qword_27CCDBD58;
  if (!qword_27CCDBD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDBD50);
    sub_219F3E490(&qword_27CCDBD60, &qword_27CCDBD48);
    sub_219F3E490(&qword_27CCDBD68, &qword_27CCDBD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBD58);
  }

  return result;
}

uint64_t ElectionEntityResult.Resolved.hashValue.getter()
{
  v1 = *v0;
  sub_21A0E6DAC();
  MEMORY[0x21CED2490](v1);
  return sub_21A0E6DFC();
}

NewsLiveActivitiesCore::ElectionEntityResult_optional __swiftcall ElectionEntityResult.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21A0E6A0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ElectionEntityResult.rawValue.getter()
{
  v1 = 0x72656E6E6977;
  v2 = 0x66666F6E7572;
  if (*v0 != 2)
  {
    v2 = 0x72676F72705F6E69;
  }

  if (*v0)
  {
    v1 = 0x6465737265766572;
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

unint64_t sub_21A0304D8()
{
  result = qword_27CCDBD78;
  if (!qword_27CCDBD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBD78);
  }

  return result;
}

void sub_21A030574(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x72656E6E6977;
  v4 = 0xE600000000000000;
  v5 = 0x66666F6E7572;
  if (*v1 != 2)
  {
    v5 = 0x72676F72705F6E69;
    v4 = 0xEB00000000737365;
  }

  if (*v1)
  {
    v3 = 0x6465737265766572;
    v2 = 0xE800000000000000;
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

unint64_t sub_21A0305F8()
{
  result = qword_27CCDBD90;
  if (!qword_27CCDBD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBD90);
  }

  return result;
}

uint64_t sub_21A03064C()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A030710()
{
  sub_21A0E626C();
}

uint64_t sub_21A0307C0()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A030960(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A0309E4()
{
  result = qword_27CCDBDA8;
  if (!qword_27CCDBDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDBDA8);
  }

  return result;
}

uint64_t sub_21A030A38(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v5 = (a1 + 32);
    v6 = 2;
    while (((1 << v5[v4]) & 0x1A) != 0)
    {
      if (v2 == ++v4)
      {
        v6 = 3;
        break;
      }
    }

    v13 = MEMORY[0x277D84F90];
    sub_219FBE5C4(0, v2, 0);
    result = v13;
    do
    {
      v8 = *v5++;
      v7 = v8;
      if (v8 == 1)
      {
        v9 = v6;
      }

      else
      {
        v9 = 1;
      }

      if (!v7)
      {
        v9 = 0;
      }

      if (v7 <= 2)
      {
        v10 = v9;
      }

      else
      {
        v10 = v6;
      }

      v14 = result;
      v12 = *(result + 16);
      v11 = *(result + 24);
      if (v12 >= v11 >> 1)
      {
        sub_219FBE5C4((v11 > 1), v12 + 1, 1);
        result = v14;
      }

      *(result + 16) = v12 + 1;
      *(result + v12 + 32) = v10;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_21A030B44(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  sub_219FBE5A4(0, v1, 0);
  v2 = v29;
  v3 = a1 + 56;
  result = sub_21A0E67CC();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v27 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v28 = *(v6 + 36);
    v11 = v6;
    result = VariantCondition.description.getter();
    v13 = v2;
    v30 = v2;
    v14 = *(v2 + 16);
    v15 = *(v13 + 24);
    if (v14 >= v15 >> 1)
    {
      v24 = v12;
      v25 = result;
      sub_219FBE5A4((v15 > 1), v14 + 1, 1);
      v12 = v24;
      result = v25;
      v13 = v30;
    }

    *(v13 + 16) = v14 + 1;
    v16 = v13 + 16 * v14;
    *(v16 + 32) = result;
    *(v16 + 40) = v12;
    v8 = 1 << *(v11 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(v3 + 8 * v10);
    if ((v17 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    v6 = v11;
    v2 = v13;
    if (v28 != *(v11 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v5 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v27;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 64 + 8 * v10);
      v9 = v27;
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_219FEA040(v5, v28, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_219FEA040(v5, v28, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t static VariantConditions.empty.getter@<X0>(void *a1@<X8>)
{
  if (qword_27CCD9198 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27CCDBDB0;
}

uint64_t sub_21A030E30(uint64_t result)
{
  v2 = 0;
  v3 = *result;
  v4 = *(result + 1);
  v5 = *(result + 8);
  v6 = *v1;
  v7 = 1 << *(*v1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v10 = *(v6 + 56);
  v9 = v6 + 56;
  v11 = v8 & v10;
  v12 = (v7 + 63) >> 6;
  while (v11)
  {
LABEL_10:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = *(*v1 + 48) + ((v2 << 10) | (16 * v14));
    v16 = *v15;
    result = *(v15 + 8);
    if (*(v15 + 8) > 1u)
    {
      v17 = v4;
      if (result == 2)
      {
LABEL_4:
        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v16 != v5)
      {
        return 0;
      }
    }

    else if (*(v15 + 8))
    {
      v17 = v3;
      if (v16 - 4 >= 3)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
    v13 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v13 >= v12)
    {
      return 1;
    }

    v11 = *(v9 + 8 * v13);
    ++v2;
    if (v11)
    {
      v2 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A030F14(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[16];
  v5 = a1[17];
  v6 = a1[18];
  v7 = *(a1 + 3);
  v8 = *v1;
  v37 = *(a1 + 1);
  v38 = v8;
  v36[0] = v2;
  v36[1] = v3;
  if ((sub_21A030E30(v36) & 1) == 0)
  {
    return 0;
  }

  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 56);
  v12 = (v9 + 63) >> 6;
  if (v4)
  {
    v13 = 1802658148;
  }

  else
  {
    v13 = 0x746867696CLL;
  }

  v14 = 0xE500000000000000;
  if (v4)
  {
    v14 = 0xE400000000000000;
  }

  v34 = v14;
  v35 = v13;

  v16 = 0;
  while (v11)
  {
LABEL_15:
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v8 + 48) + ((v16 << 10) | (16 * v18));
    v20 = *v19;
    v21 = *(v19 + 8);
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        if (v6 != (v20 & 1))
        {
          goto LABEL_63;
        }
      }

      else if (v20 != v7)
      {
        goto LABEL_63;
      }
    }

    else if (v21)
    {
      switch(v20)
      {
        case 4u:
          if (v5 != 4)
          {
            goto LABEL_63;
          }

          break;
        case 5u:
          if (v5 != 5)
          {
            goto LABEL_63;
          }

          break;
        case 6u:
          if (v5 != 6)
          {
            goto LABEL_63;
          }

          break;
        default:
          if ((v5 - 4) < 3)
          {
            goto LABEL_63;
          }

          v33 = v6;
          v27 = 0xEA00000000006B63;
          v28 = 0xD000000000000014;
          if (v20 > 1u)
          {
            v29 = 0x6174537472616D73;
            v30 = 0xEA00000000006B63;
            if (v20 == 2)
            {
              v29 = 0xD000000000000015;
              v30 = 0x800000021A1096B0;
            }

            if (v5 <= 1)
            {
LABEL_52:
              if (v5)
              {
                v27 = 0x800000021A109690;
              }

              else
              {
                v27 = 0x800000021A109670;
              }

              goto LABEL_59;
            }
          }

          else
          {
            v29 = 0xD000000000000014;
            if (v20)
            {
              v30 = 0x800000021A109690;
              if (v5 <= 1)
              {
                goto LABEL_52;
              }
            }

            else
            {
              v30 = 0x800000021A109670;
              if (v5 <= 1)
              {
                goto LABEL_52;
              }
            }
          }

          if (v5 == 2)
          {
            v28 = 0xD000000000000015;
            v27 = 0x800000021A1096B0;
          }

          else
          {
            v28 = 0x6174537472616D73;
          }

LABEL_59:
          if (v29 == v28 && v30 == v27)
          {

            v6 = v33;
          }

          else
          {
            v31 = sub_21A0E6C5C();

            v6 = v33;
            if ((v31 & 1) == 0)
            {
LABEL_63:

              return 0;
            }
          }

          break;
      }
    }

    else
    {
      v22 = v7;
      v23 = v6;
      if (v20)
      {
        v24 = 1802658148;
      }

      else
      {
        v24 = 0x746867696CLL;
      }

      if (v20)
      {
        v25 = 0xE400000000000000;
      }

      else
      {
        v25 = 0xE500000000000000;
      }

      if (v24 == v35 && v25 == v34)
      {

        v6 = v23;
        v7 = v22;
      }

      else
      {
        v32 = sub_21A0E6C5C();

        v6 = v23;
        v7 = v22;
        if ((v32 & 1) == 0)
        {
          goto LABEL_63;
        }
      }
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v12)
    {

      return 1;
    }

    v11 = *(v8 + 56 + 8 * v17);
    ++v16;
    if (v11)
    {
      v16 = v17;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A0312D4()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A0313B0()
{
  sub_21A0E626C();
}

uint64_t sub_21A031478()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A031550@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A03A360();
  *a1 = result;
  return result;
}

void sub_21A031580(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000656D65;
  v3 = 0x686353726F6C6F63;
  v4 = 0x800000021A1095E0;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 0x5379616C70736964;
    v4 = 0xEC000000656C6163;
  }

  if (*v1)
  {
    v3 = 0x6E656D6563616C70;
    v2 = 0xE900000000000074;
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

unint64_t sub_21A031618()
{
  v1 = 0x686353726F6C6F63;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x5379616C70736964;
  }

  if (*v0)
  {
    v1 = 0x6E656D6563616C70;
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

uint64_t sub_21A0316AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A03A360();
  *a1 = result;
  return result;
}

uint64_t sub_21A0316D4(uint64_t a1)
{
  v2 = sub_21A036510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A031710(uint64_t a1)
{
  v2 = sub_21A036510();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VariantConditions.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBDB8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v104 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A036510();
  sub_21A0E6E7C();
  if (v2)
  {
    goto LABEL_2;
  }

  v105 = a2;
  v106 = v7;
  v107 = a1;
  v12 = sub_21A0E6AFC();
  v13 = v12;
  v14 = v10;
  v117 = *(v12 + 16);
  if (!v117)
  {

    v16 = MEMORY[0x277D84FA0];
    goto LABEL_208;
  }

  v15 = 0;
  v116 = v12 + 32;
  v109 = 0x800000021A109690;
  v110 = 0x800000021A1096B0;
  v108 = 0x800000021A109670;
  v16 = MEMORY[0x277D84FA0];
  v112 = v14;
  v113 = v6;
  v114 = v12;
  while (2)
  {
    if (v15 >= *(v13 + 16))
    {
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
      goto LABEL_214;
    }

    if (*(v116 + v15) > 1u)
    {
      if (*(v116 + v15) == 2)
      {
        LOBYTE(v118) = 2;
        v33 = sub_21A0E6AAC();
        if (v3)
        {
          goto LABEL_206;
        }

        v34 = v33;
        sub_21A0E6DAC();
        MEMORY[0x21CED2490](2);
        sub_21A0E6DCC();
        v35 = sub_21A0E6DFC();
        v36 = -1 << *(v16 + 32);
        v37 = v35 & ~v36;
        if ((*(v16 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
        {
          v38 = ~v36;
          do
          {
            v39 = *(v16 + 48) + 16 * v37;
            if (*(v39 + 8) == 2 && ((v34 ^ *v39) & 1) == 0)
            {
              goto LABEL_9;
            }

            v37 = (v37 + 1) & v38;
          }

          while (((*(v16 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) != 0);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v119 = v16;
        if (*(v16 + 24) > *(v16 + 16))
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21A037BF8();
            v16 = v119;
          }
        }

        else
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            sub_21A0346E4();
          }

          else
          {
            sub_21A038784();
          }

          v16 = v119;
          sub_21A0E6DAC();
          MEMORY[0x21CED2490](2);
          sub_21A0E6DCC();
          v79 = sub_21A0E6DFC();
          v80 = -1 << *(v16 + 32);
          v37 = v79 & ~v80;
          if ((*(v16 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
          {
            v81 = ~v80;
            do
            {
              v82 = *(v16 + 48) + 16 * v37;
              if (*(v82 + 8) == 2 && ((v34 ^ *v82) & 1) == 0)
              {
                goto LABEL_216;
              }

              v37 = (v37 + 1) & v81;
            }

            while (((*(v16 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) != 0);
          }
        }

        *(v16 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v37;
        v17 = *(v16 + 48) + 16 * v37;
        *v17 = v34 & 1;
        *(v17 + 8) = 2;
        v18 = *(v16 + 16);
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          goto LABEL_213;
        }
      }

      else
      {
        LOBYTE(v119) = 3;
        sub_21A036564();
        sub_21A0E6ADC();
        if (v3)
        {
          goto LABEL_206;
        }

        v43 = v118;
        sub_21A0E6DAC();
        MEMORY[0x21CED2490](3);
        MEMORY[0x21CED2490](v43);
        v44 = sub_21A0E6DFC();
        v45 = -1 << *(v16 + 32);
        v46 = v44 & ~v45;
        if ((*(v16 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
        {
          v47 = ~v45;
          do
          {
            v48 = *(v16 + 48) + 16 * v46;
            if (*(v48 + 8) >= 3u && *v48 == v43)
            {
              goto LABEL_9;
            }

            v46 = (v46 + 1) & v47;
          }

          while (((*(v16 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) != 0);
        }

        v50 = swift_isUniquelyReferenced_nonNull_native();
        v119 = v16;
        if (*(v16 + 24) <= *(v16 + 16))
        {
          if (v50)
          {
            sub_21A0346E4();
          }

          else
          {
            sub_21A038784();
          }

          v16 = v119;
          sub_21A0E6DAC();
          MEMORY[0x21CED2490](3);
          MEMORY[0x21CED2490](v43);
          v83 = sub_21A0E6DFC();
          v84 = -1 << *(v16 + 32);
          v46 = v83 & ~v84;
          if ((*(v16 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
          {
            v85 = ~v84;
            do
            {
              v86 = *(v16 + 48) + 16 * v46;
              if (*(v86 + 8) >= 3u && *v86 == v43)
              {
                goto LABEL_216;
              }

              v46 = (v46 + 1) & v85;
            }

            while (((*(v16 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) != 0);
          }
        }

        else if ((v50 & 1) == 0)
        {
          sub_21A037BF8();
          v16 = v119;
        }

        *(v16 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v46;
        v88 = *(v16 + 48) + 16 * v46;
        *v88 = v43;
        *(v88 + 8) = 3;
        v89 = *(v16 + 16);
        v19 = __OFADD__(v89, 1);
        v20 = v89 + 1;
        if (v19)
        {
LABEL_214:
          __break(1u);
          while (1)
          {
LABEL_215:

LABEL_216:
            sub_21A0E6CFC();
            __break(1u);
          }
        }
      }

      *(v16 + 16) = v20;
      goto LABEL_9;
    }

    if (!*(v116 + v15))
    {
      LOBYTE(v119) = 0;
      sub_21A038B6C();
      sub_21A0E6ADC();
      if (!v3)
      {
        v115 = 0;
        v21 = v118;
        sub_21A0E6DAC();
        MEMORY[0x21CED2490](0);
        v111 = v21;
        if (v21)
        {
          v22 = 1802658148;
        }

        else
        {
          v22 = 0x746867696CLL;
        }

        if (v21)
        {
          v23 = 0xE400000000000000;
        }

        else
        {
          v23 = 0xE500000000000000;
        }

        sub_21A0E626C();

        v24 = sub_21A0E6DFC();
        v25 = -1 << *(v16 + 32);
        v26 = v24 & ~v25;
        if ((*(v16 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
        {
          v27 = ~v25;
          do
          {
            v28 = *(v16 + 48) + 16 * v26;
            if (!*(v28 + 8))
            {
              if (*v28)
              {
                v29 = 1802658148;
              }

              else
              {
                v29 = 0x746867696CLL;
              }

              if (*v28)
              {
                v30 = 0xE400000000000000;
              }

              else
              {
                v30 = 0xE500000000000000;
              }

              if (v29 == v22 && v30 == v23)
              {
                goto LABEL_158;
              }

              v32 = sub_21A0E6C5C();

              if (v32)
              {
                goto LABEL_159;
              }
            }

            v26 = (v26 + 1) & v27;
          }

          while (((*(v16 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0);
        }

        v51 = swift_isUniquelyReferenced_nonNull_native();
        v119 = v16;
        if (*(v16 + 24) <= *(v16 + 16))
        {
          if (v51)
          {
            sub_21A0346E4();
          }

          else
          {
            sub_21A038784();
          }

          v16 = v119;
          sub_21A0E6DAC();
          MEMORY[0x21CED2490](0);
          sub_21A0E626C();

          v67 = sub_21A0E6DFC();
          v68 = -1 << *(v16 + 32);
          v26 = v67 & ~v68;
          if ((*(v16 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
          {
            v69 = ~v68;
            do
            {
              v70 = *(v16 + 48) + 16 * v26;
              if (!*(v70 + 8))
              {
                if (*v70)
                {
                  v71 = 1802658148;
                }

                else
                {
                  v71 = 0x746867696CLL;
                }

                if (*v70)
                {
                  v72 = 0xE400000000000000;
                }

                else
                {
                  v72 = 0xE500000000000000;
                }

                if (v71 == v22 && v72 == v23)
                {
                  goto LABEL_215;
                }

                v74 = sub_21A0E6C5C();

                if (v74)
                {
                  goto LABEL_216;
                }
              }

              v26 = (v26 + 1) & v69;
            }

            while (((*(v16 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0);
          }

          v3 = v115;
        }

        else
        {
          v3 = v115;
          if ((v51 & 1) == 0)
          {
            sub_21A037BF8();
            v16 = v119;
          }
        }

        v14 = v112;
        v6 = v113;
        v75 = v111;
        *(v16 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v26;
        v76 = *(v16 + 48) + 16 * v26;
        *v76 = v75;
        *(v76 + 8) = 0;
        v77 = *(v16 + 16);
        v19 = __OFADD__(v77, 1);
        v78 = v77 + 1;
        if (!v19)
        {
          *(v16 + 16) = v78;
          v13 = v114;
          goto LABEL_9;
        }

        goto LABEL_212;
      }

LABEL_206:
      (*(v106 + 8))(v14, v6);

      a1 = v107;
LABEL_2:
      v11 = a1;
      return __swift_destroy_boxed_opaque_existential_1(v11);
    }

    LOBYTE(v119) = 1;
    sub_21A038B18();
    sub_21A0E6ADC();
    if (v3)
    {
      goto LABEL_206;
    }

    v40 = v118;
    sub_21A0E6DAC();
    MEMORY[0x21CED2490](1);
    v41 = v40 - 4;
    v115 = 0;
    switch(v40)
    {
      case 4:
        v42 = 0;
        goto LABEL_72;
      case 5:
        v42 = 1;
        goto LABEL_72;
      case 6:
        v42 = 3;
LABEL_72:
        MEMORY[0x21CED2490](v42);
        goto LABEL_74;
    }

    MEMORY[0x21CED2490](2);
    sub_21A0E626C();

LABEL_74:
    v53 = sub_21A0E6DFC();
    v54 = -1 << *(v16 + 32);
    v55 = v53 & ~v54;
    if (((*(v16 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
    {
LABEL_110:
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v119 = v16;
      if (*(v16 + 24) > *(v16 + 16))
      {
        v13 = v114;
        if ((v64 & 1) == 0)
        {
          sub_21A037BF8();
          v16 = v119;
        }

LABEL_201:
        *(v16 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v55;
        v100 = *(v16 + 48) + 16 * v55;
        *v100 = v40;
        *(v100 + 8) = 1;
        v101 = *(v16 + 16);
        v19 = __OFADD__(v101, 1);
        v102 = v101 + 1;
        if (!v19)
        {
          *(v16 + 16) = v102;
          v3 = v115;
          goto LABEL_203;
        }

        goto LABEL_211;
      }

      if (v64)
      {
        sub_21A0346E4();
      }

      else
      {
        sub_21A038784();
      }

      v16 = v119;
      sub_21A0E6DAC();
      MEMORY[0x21CED2490](1);
      v65 = v40 - 4;
      switch(v40)
      {
        case 4:
          v66 = 0;
          break;
        case 5:
          v66 = 1;
          break;
        case 6:
          v66 = 3;
          break;
        default:
          MEMORY[0x21CED2490](2);
          sub_21A0E626C();

          goto LABEL_164;
      }

      MEMORY[0x21CED2490](v66);
LABEL_164:
      v90 = sub_21A0E6DFC();
      v91 = -1 << *(v16 + 32);
      v55 = v90 & ~v91;
      if (((*(v16 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
      {
LABEL_200:
        v13 = v114;
        goto LABEL_201;
      }

      v92 = ~v91;
      LODWORD(v111) = v40 - 4;
      while (1)
      {
        v93 = (*(v16 + 48) + 16 * v55);
        if (v93[8] == 1)
        {
          v94 = *v93;
          switch(v94)
          {
            case 4:
              if (v40 == 4)
              {
                goto LABEL_216;
              }

              break;
            case 5:
              if (v40 == 5)
              {
                goto LABEL_216;
              }

              break;
            case 6:
              if (v40 == 6)
              {
                goto LABEL_216;
              }

              break;
            default:
              if (v65 >= 3)
              {
                if (v94 > 1)
                {
                  v95 = 0x6174537472616D73;
                  v96 = 0xEA00000000006B63;
                  if (v94 == 2)
                  {
                    v95 = 0xD000000000000015;
                    v96 = v110;
                  }

                  if (v40 <= 1)
                  {
                    goto LABEL_184;
                  }

LABEL_188:
                  if (v40 == 2)
                  {
                    v98 = 0xD000000000000015;
                  }

                  else
                  {
                    v98 = 0x6174537472616D73;
                  }

                  if (v40 == 2)
                  {
                    v97 = v110;
                  }

                  else
                  {
                    v97 = 0xEA00000000006B63;
                  }

                  if (v95 != v98)
                  {
LABEL_198:
                    v99 = sub_21A0E6C5C();

                    v65 = v111;
                    if (v99)
                    {
                      goto LABEL_216;
                    }

                    break;
                  }
                }

                else
                {
                  v95 = 0xD000000000000014;
                  if (v94)
                  {
                    v96 = v109;
                    if (v40 > 1)
                    {
                      goto LABEL_188;
                    }
                  }

                  else
                  {
                    v96 = v108;
                    if (v40 > 1)
                    {
                      goto LABEL_188;
                    }
                  }

LABEL_184:
                  if (v40)
                  {
                    v97 = v109;
                    if (v95 != 0xD000000000000014)
                    {
                      goto LABEL_198;
                    }
                  }

                  else
                  {
                    v97 = v108;
                    if (v95 != 0xD000000000000014)
                    {
                      goto LABEL_198;
                    }
                  }
                }

                if (v96 == v97)
                {
                  goto LABEL_215;
                }

                goto LABEL_198;
              }

              break;
          }
        }

        v55 = (v55 + 1) & v92;
        if (((*(v16 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
        {
          goto LABEL_200;
        }
      }
    }

    v56 = ~v54;
    LODWORD(v111) = v40 - 4;
    while (1)
    {
      v57 = (*(v16 + 48) + 16 * v55);
      if (v57[8] != 1)
      {
        goto LABEL_77;
      }

      v58 = *v57;
      switch(v58)
      {
        case 4:
          if (v40 == 4)
          {
            goto LABEL_159;
          }

          goto LABEL_77;
        case 5:
          if (v40 == 5)
          {
            goto LABEL_159;
          }

          goto LABEL_77;
        case 6:
          if (v40 == 6)
          {
            goto LABEL_159;
          }

          goto LABEL_77;
      }

      if (v41 < 3)
      {
        goto LABEL_77;
      }

      if (v58 > 1)
      {
        break;
      }

      v59 = 0xD000000000000014;
      if (v58)
      {
        v60 = v109;
        if (v40 <= 1)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v60 = v108;
        if (v40 <= 1)
        {
          goto LABEL_94;
        }
      }

LABEL_98:
      if (v40 == 2)
      {
        v62 = 0xD000000000000015;
      }

      else
      {
        v62 = 0x6174537472616D73;
      }

      if (v40 == 2)
      {
        v61 = v110;
      }

      else
      {
        v61 = 0xEA00000000006B63;
      }

      if (v59 == v62)
      {
        goto LABEL_107;
      }

LABEL_108:
      v63 = sub_21A0E6C5C();

      v41 = v111;
      if (v63)
      {
        goto LABEL_159;
      }

LABEL_77:
      v55 = (v55 + 1) & v56;
      if (((*(v16 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    v59 = 0x6174537472616D73;
    v60 = 0xEA00000000006B63;
    if (v58 == 2)
    {
      v59 = 0xD000000000000015;
      v60 = v110;
    }

    if (v40 > 1)
    {
      goto LABEL_98;
    }

LABEL_94:
    if (!v40)
    {
      v61 = v108;
      if (v59 == 0xD000000000000014)
      {
        goto LABEL_107;
      }

      goto LABEL_108;
    }

    v61 = v109;
    if (v59 != 0xD000000000000014)
    {
      goto LABEL_108;
    }

LABEL_107:
    if (v60 != v61)
    {
      goto LABEL_108;
    }

LABEL_158:

LABEL_159:
    v13 = v114;
    v3 = v115;
LABEL_203:
    v14 = v112;
    v6 = v113;
LABEL_9:
    if (++v15 != v117)
    {
      continue;
    }

    break;
  }

LABEL_208:
  (*(v106 + 8))(v14, v6);
  *v105 = v16;
  v11 = v107;
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t VariantConditions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBDE0);
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v20 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A036510();

  result = sub_21A0E6EAC();
  v10 = 0;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v8 + 56);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = v10;
LABEL_9:
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v17 = *(v8 + 48) + ((v15 << 10) | (16 * v16));
    v18 = *v17;
    v19 = *(v17 + 8);
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v25 = 2;
        result = sub_21A0E6B8C();
        if (v2)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      v27 = v18;
      v26 = 3;
      sub_21A038BC0();
      result = sub_21A0E6BBC();
      if (v2)
      {
        goto LABEL_20;
      }

      v10 = v15;
    }

    else
    {
      if (v19)
      {
        v24 = v18;
        v23 = 1;
        sub_21A038C14();
      }

      else
      {
        v22 = v18 & 1;
        v21 = 0;
        sub_21A038C68();
      }

      result = sub_21A0E6BBC();
      if (v2)
      {
LABEL_20:

        return (*(v20 + 8))(v7, v4);
      }

LABEL_17:
      v10 = v15;
    }
  }

  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      goto LABEL_20;
    }

    v13 = *(v8 + 56 + 8 * v15);
    ++v10;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t VariantConditions.description.getter()
{
  sub_21A030B44(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9650);
  sub_219F65B54();
  v1 = sub_21A0E618C();
  v3 = v2;

  MEMORY[0x21CED1980](v1, v3);

  MEMORY[0x21CED1980](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_21A032A34()
{
  sub_21A030B44(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9650);
  sub_219F65B54();
  v1 = sub_21A0E618C();
  v3 = v2;

  MEMORY[0x21CED1980](v1, v3);

  MEMORY[0x21CED1980](93, 0xE100000000000000);
  return 91;
}

uint64_t VariantConditions.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_219FE95B4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_21A032B48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_219FE95B4(a1);

  *a2 = v3;
  return result;
}

uint64_t VariantConditions.hashValue.getter()
{
  v1 = *v0;
  sub_21A0E6DAC();
  sub_219F91544(v3, v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A032BD8()
{
  v1 = *v0;
  sub_21A0E6DAC();
  sub_219F91544(v3, v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A032C28()
{
  v1 = *v0;
  sub_21A0E6DAC();
  sub_219F91544(v3, v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A032C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_21A0E6DAC();
  VariantCondition.hash(into:)();
  v7 = sub_21A0E6DFC();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_64:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *v42;
    sub_21A0360F0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v42 = v44;
    result = 1;
    goto LABEL_67;
  }

  v11 = ~v9;
  v12 = 1802658148;
  v13 = a2;
  v39 = a2 - 4;
  if (a2)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v12 = 0x746867696CLL;
    v14 = 0xE500000000000000;
  }

  v40 = v6 + 56;
  v41 = v6;
  while (1)
  {
    v15 = *(v6 + 48) + 16 * v10;
    v16 = *v15;
    v17 = *(v15 + 8);
    if (v17 <= 1)
    {
      break;
    }

    if (v17 == 2)
    {
      if (a3 == 2 && ((v16 ^ a2) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (a3 == 3 && v16 == a2)
    {
      goto LABEL_66;
    }

LABEL_7:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  if (v17)
  {
    if (a3 != 1)
    {
      goto LABEL_7;
    }

    switch(v16)
    {
      case 4u:
        if (v13 == 4)
        {
          goto LABEL_66;
        }

        goto LABEL_7;
      case 5u:
        if (v13 == 5)
        {
          goto LABEL_66;
        }

        goto LABEL_7;
      case 6u:
        if (v13 == 6)
        {
          goto LABEL_66;
        }

        goto LABEL_7;
    }

    if (v39 < 3)
    {
      goto LABEL_7;
    }

    if (v16 > 1u)
    {
      if (v16 == 2)
      {
        v27 = 0xD000000000000015;
        v28 = 0x800000021A1096B0;
        if (v13 <= 1)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v27 = 0x6174537472616D73;
        v28 = 0xEA00000000006B63;
        if (v13 <= 1)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      v27 = 0xD000000000000014;
      if (!v16)
      {
        v28 = 0x800000021A109670;
        if (v13 > 1)
        {
          goto LABEL_43;
        }

LABEL_53:
        if (v13)
        {
          v30 = 0x800000021A109690;
          if (v27 != 0xD000000000000014)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v30 = 0x800000021A109670;
          if (v27 != 0xD000000000000014)
          {
            goto LABEL_62;
          }
        }

        goto LABEL_61;
      }

      v28 = 0x800000021A109690;
      if (v13 <= 1)
      {
        goto LABEL_53;
      }
    }

LABEL_43:
    if (v13 == 2)
    {
      v29 = 0xD000000000000015;
    }

    else
    {
      v29 = 0x6174537472616D73;
    }

    if (v13 == 2)
    {
      v30 = 0x800000021A1096B0;
    }

    else
    {
      v30 = 0xEA00000000006B63;
    }

    if (v27 != v29)
    {
LABEL_62:
      v37 = v14;
      v38 = a2;
      v31 = v13;
      v32 = v12;
      v36 = sub_21A0E6C5C();

      v12 = v32;
      v13 = v31;
      v14 = v37;
      a2 = v38;
      if (v36)
      {
        goto LABEL_66;
      }

      goto LABEL_7;
    }

LABEL_61:
    if (v28 == v30)
    {
      goto LABEL_65;
    }

    goto LABEL_62;
  }

  if (a3)
  {
    goto LABEL_7;
  }

  if (v16)
  {
    v18 = 1802658148;
  }

  else
  {
    v18 = 0x746867696CLL;
  }

  if (v16)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  if (v18 != v12 || v19 != v14)
  {
    v21 = a3;
    v22 = v11;
    v23 = a2;
    v24 = v13;
    v25 = v12;
    v26 = sub_21A0E6C5C();

    v12 = v25;
    v13 = v24;
    a2 = v23;
    v11 = v22;
    a3 = v21;
    v8 = v40;
    v6 = v41;
    if (v26)
    {
      goto LABEL_66;
    }

    goto LABEL_7;
  }

LABEL_65:

LABEL_66:
  result = 0;
  v35 = *(v6 + 48) + 16 * v10;
  a2 = *v35;
  LOBYTE(a3) = *(v35 + 8);
LABEL_67:
  *a1 = a2;
  *(a1 + 8) = a3;
  return result;
}

uint64_t sub_21A033088(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v77 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  MEMORY[0x28223BE20](v77, v4);
  v82 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_21A0E481C();
  v6 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v7);
  v81 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URLAssetConfiguration.Format(0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v89 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v76 - v14;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99A8);
  MEMORY[0x28223BE20](v88, v16);
  v18 = &v76 - v17;
  v19 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v92 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99B0);
  MEMORY[0x28223BE20](v100, v22);
  v24 = &v76 - v23;
  v25 = type metadata accessor for ActivityAsset();
  v101 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25, v26);
  v29 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v27, v30);
  v91 = &v76 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v102 = &v76 - v35;
  MEMORY[0x28223BE20](v34, v36);
  v79 = &v76 - v37;
  v80 = v2;
  v38 = *v2;
  sub_21A0E6DAC();
  ActivityAsset.hash(into:)(v106);
  v39 = sub_21A0E6DFC();
  v40 = -1 << *(v38 + 32);
  v41 = v39 & ~v40;
  v99 = v38 + 56;
  if (((*(v38 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
  {
LABEL_29:
    v70 = v80;
    v71 = v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v79;
    sub_21A03A3F0(a2, v79, type metadata accessor for ActivityAsset);
    v106[0] = *v70;
    sub_21A0365B8(v73, v71, isUniquelyReferenced_nonNull_native);
    *v70 = v106[0];
    sub_21A03A4B8(a2, v83, type metadata accessor for ActivityAsset);
    return 1;
  }

  v96 = ~v40;
  v78 = (v6 + 32);
  v97 = *(v101 + 72);
  v84 = (v6 + 8);
  v93 = v15;
  v94 = v29;
  v90 = v38;
  v87 = a2;
  v86 = v24;
  v98 = v25;
  while (1)
  {
    v42 = *(v38 + 48);
    v101 = v41;
    v95 = v97 * v41;
    v43 = v102;
    sub_21A03A3F0(v42 + v97 * v41, v102, type metadata accessor for ActivityAsset);
    v44 = &v24[*(v100 + 48)];
    sub_21A03A3F0(v43, v24, type metadata accessor for ActivityAsset);
    sub_21A03A3F0(a2, v44, type metadata accessor for ActivityAsset);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v54 = a2;
    v55 = v91;
    sub_21A03A3F0(v24, v91, type metadata accessor for ActivityAsset);
    v57 = *v55;
    v56 = *(v55 + 8);
    v58 = *(v55 + 16);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v59 = *(v55 + 17);
      v60 = *v44;
      v61 = *(v44 + 8);
      v62 = *(v44 + 16);
      v63 = *(v44 + 17);
      v106[0] = v57;
      v106[1] = v56;
      v107 = v58;
      v108 = v59;
      v103[0] = v60;
      v103[1] = v61;
      v104 = v62;
      v105 = v63;
      v64 = _s22NewsLiveActivitiesCore21SFSymbolConfigurationV2eeoiySbAC_ACtFZ_0(v106, v103);
      sub_21A03A458(v102, type metadata accessor for ActivityAsset);
      sub_219F79CD8();
      sub_219F79CD8();
      if (v64)
      {
        sub_21A03A458(v87, type metadata accessor for ActivityAsset);
        v24 = v86;
        goto LABEL_33;
      }

      v24 = v86;
      sub_21A03A458(v86, type metadata accessor for ActivityAsset);
      a2 = v87;
      v15 = v93;
      v29 = v94;
      goto LABEL_28;
    }

    sub_21A03A458(v102, type metadata accessor for ActivityAsset);
    sub_219F79CD8();
    v15 = v93;
    v29 = v94;
    a2 = v54;
LABEL_4:
    sub_219F6409C(v24, &qword_27CCD99B0);
LABEL_5:
    v41 = (v101 + 1) & v96;
    if (((*(v99 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  sub_21A03A3F0(v24, v29, type metadata accessor for ActivityAsset);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21A03A458(v102, type metadata accessor for ActivityAsset);
    sub_21A03A458(v29, type metadata accessor for URLAssetConfiguration);
    goto LABEL_4;
  }

  v45 = v92;
  sub_21A03A4B8(v44, v92, type metadata accessor for URLAssetConfiguration);
  v46 = *(v88 + 48);
  sub_21A03A3F0(v29, v18, type metadata accessor for URLAssetConfiguration.Format);
  sub_21A03A3F0(v45, &v18[v46], type metadata accessor for URLAssetConfiguration.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21A03A3F0(v18, v89, type metadata accessor for URLAssetConfiguration.Format);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v47 = v82;
      sub_21A03A4B8(&v18[v46], v82, type metadata accessor for URLAssetConfiguration.Recipe);
      sub_21A03A3AC(&qword_27CCD99B8);
      if (sub_21A0E61CC() & 1) != 0 && (v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99C0), v49 = *(v48 + 28), v50 = *(v89 + v49), v51 = *(v47 + v49), , , v52 = sub_219FAAA00(v50, v51), , , (v52) && (sub_219F76D10(*(v89 + *(v48 + 32)), *(v47 + *(v48 + 32))))
      {
        v53 = sub_21A0795D4(*(v89 + *(v77 + 20)), *(v47 + *(v77 + 20)));
        sub_21A03A458(v92, type metadata accessor for URLAssetConfiguration);
        sub_21A03A458(v102, type metadata accessor for ActivityAsset);
        if (v53)
        {
          sub_21A03A458(v47, type metadata accessor for URLAssetConfiguration.Recipe);
          sub_21A03A458(v89, type metadata accessor for URLAssetConfiguration.Recipe);
          sub_21A03A458(a2, type metadata accessor for ActivityAsset);
          sub_21A03A458(v18, type metadata accessor for URLAssetConfiguration.Format);
          v29 = v94;
          goto LABEL_32;
        }
      }

      else
      {
        sub_21A03A458(v92, type metadata accessor for URLAssetConfiguration);
        sub_21A03A458(v102, type metadata accessor for ActivityAsset);
      }

      sub_21A03A458(v47, type metadata accessor for URLAssetConfiguration.Recipe);
      sub_21A03A458(v89, type metadata accessor for URLAssetConfiguration.Recipe);
      sub_21A03A458(v18, type metadata accessor for URLAssetConfiguration.Format);
      v15 = v93;
      v29 = v94;
      goto LABEL_27;
    }

    sub_21A03A458(v92, type metadata accessor for URLAssetConfiguration);
    sub_21A03A458(v102, type metadata accessor for ActivityAsset);
    sub_21A03A458(v89, type metadata accessor for URLAssetConfiguration.Recipe);
LABEL_22:
    sub_219F6409C(v18, &qword_27CCD99A8);
    goto LABEL_27;
  }

  sub_21A03A3F0(v18, v15, type metadata accessor for URLAssetConfiguration.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21A03A458(v92, type metadata accessor for URLAssetConfiguration);
    sub_21A03A458(v102, type metadata accessor for ActivityAsset);
    (*v84)(v15, v85);
    goto LABEL_22;
  }

  v65 = v81;
  v66 = v85;
  (*v78)(v81, &v18[v46], v85);
  v67 = sub_21A0E478C();
  v68 = *v84;
  v69 = v65;
  v29 = v94;
  (*v84)(v69, v66);
  sub_21A03A458(v92, type metadata accessor for URLAssetConfiguration);
  sub_21A03A458(v102, type metadata accessor for ActivityAsset);
  v68(v15, v66);
  sub_21A03A458(v18, type metadata accessor for URLAssetConfiguration.Format);
  if ((v67 & 1) == 0)
  {
LABEL_27:
    sub_21A03A458(v29, type metadata accessor for URLAssetConfiguration);
    sub_21A03A458(v24, type metadata accessor for ActivityAsset);
LABEL_28:
    v38 = v90;
    goto LABEL_5;
  }

  sub_21A03A458(a2, type metadata accessor for ActivityAsset);
LABEL_32:
  sub_21A03A458(v29, type metadata accessor for URLAssetConfiguration);
LABEL_33:
  v75 = v90;
  sub_21A03A458(v24, type metadata accessor for ActivityAsset);
  sub_21A03A3F0(*(v75 + 48) + v95, v83, type metadata accessor for ActivityAsset);
  return 0;
}

uint64_t sub_21A033DA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21A0E6DAC();
  sub_21A0E626C();
  v8 = sub_21A0E6DFC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_21A0E6C5C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_21A03725C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21A033EF4(uint64_t a1, void *a2)
{
  v3 = v2;
  v20 = a1;
  v5 = type metadata accessor for NewsLiveActivity(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v2;
  sub_21A0E6DAC();
  NewsLiveActivity.hash(into:)();
  v11 = sub_21A0E6DFC();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v6 + 72);
    while (1)
    {
      sub_21A03A3F0(*(v10 + 48) + v15 * v13, v9, type metadata accessor for NewsLiveActivity);
      v16 = _s22NewsLiveActivitiesCore0aB8ActivityV2eeoiySbAC_ACtFZ_0(v9, a2);
      sub_21A03A458(v9, type metadata accessor for NewsLiveActivity);
      if (v16)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_21A03A458(a2, type metadata accessor for NewsLiveActivity);
    sub_21A03A3F0(*(v10 + 48) + v15 * v13, v20, type metadata accessor for NewsLiveActivity);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21A03A3F0(a2, v9, type metadata accessor for NewsLiveActivity);
    v21 = *v3;
    sub_21A0373DC(v9, v13, isUniquelyReferenced_nonNull_native);
    v18 = v20;
    *v3 = v21;
    sub_21A03A4B8(a2, v18, type metadata accessor for NewsLiveActivity);
    return 1;
  }
}

uint64_t sub_21A034134(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21A0E6DAC();
  sub_21A0E626C();
  v8 = sub_21A0E6DFC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_21A0E6C5C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_21A037620(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21A034284(uint64_t a1, void *a2)
{
  v28 = a1;
  v4 = type metadata accessor for RemoteAssetKey();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7, v10);
  v26 = (&v26 - v11);
  v27 = v2;
  v12 = *v2;
  sub_21A0E6DAC();
  v13 = *a2;
  v14 = a2[1];
  sub_21A0E626C();
  v29 = v4;
  sub_21A0E481C();
  sub_21A03A3AC(&qword_27CCD99F8);
  v30 = a2;
  sub_21A0E615C();
  v15 = sub_21A0E6DFC();
  v16 = -1 << *(v12 + 32);
  v17 = v15 & ~v16;
  if ((*(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = *(v5 + 72);
    while (1)
    {
      sub_21A03A3F0(*(v12 + 48) + v19 * v17, v9, type metadata accessor for RemoteAssetKey);
      v20 = *v9 == v13 && v9[1] == v14;
      if (v20 || (sub_21A0E6C5C()) && (sub_21A0E478C())
      {
        break;
      }

      sub_21A03A458(v9, type metadata accessor for RemoteAssetKey);
      v17 = (v17 + 1) & v18;
      if (((*(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    sub_21A03A458(v9, type metadata accessor for RemoteAssetKey);
    sub_21A03A458(v30, type metadata accessor for RemoteAssetKey);
    sub_21A03A3F0(*(v12 + 48) + v19 * v17, v28, type metadata accessor for RemoteAssetKey);
    return 0;
  }

  else
  {
LABEL_11:
    v21 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v30;
    v24 = v26;
    sub_21A03A3F0(v30, v26, type metadata accessor for RemoteAssetKey);
    v31 = *v21;
    sub_21A0377A0(v24, v17, isUniquelyReferenced_nonNull_native);
    *v21 = v31;
    sub_21A03A4B8(v23, v28, type metadata accessor for RemoteAssetKey);
    return 1;
  }
}

uint64_t sub_21A034594(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21A0E6DAC();
  sub_21A0E626C();
  v8 = sub_21A0E6DFC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_21A0E6C5C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_21A037A78(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21A0346E4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE48);
  result = sub_21A0E683C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (1)
    {
      if (!v9)
      {
        v15 = v5;
        while (1)
        {
          v5 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_45;
          }

          if (v5 >= v10)
          {
            break;
          }

          v16 = v6[v5];
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v9 = (v16 - 1) & v16;
            goto LABEL_15;
          }
        }

        v28 = 1 << *(v2 + 32);
        if (v28 >= 64)
        {
          bzero((v2 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v6 = -1 << v28;
        }

        v1 = v0;
        *(v2 + 16) = 0;
        break;
      }

      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 16 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      sub_21A0E6DAC();
      if (v19 > 1)
      {
        if (v19 == 2)
        {
          MEMORY[0x21CED2490](2);
          sub_21A0E6DCC();
          goto LABEL_27;
        }

        MEMORY[0x21CED2490](3);
        v20 = v18;
      }

      else
      {
        if (!v19)
        {
          MEMORY[0x21CED2490](0);
LABEL_18:
          sub_21A0E626C();

          goto LABEL_27;
        }

        MEMORY[0x21CED2490](1);
        switch(v18)
        {
          case 4u:
            v20 = 0;
            break;
          case 5u:
            v20 = 1;
            break;
          case 6u:
            v20 = 3;
            break;
          default:
            MEMORY[0x21CED2490](2);
            goto LABEL_18;
        }
      }

      MEMORY[0x21CED2490](v20);
LABEL_27:
      result = sub_21A0E6DFC();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 16 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      ++*(v4 + 16);
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_21A034AA8()
{
  v1 = v0;
  v63 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  MEMORY[0x28223BE20](v63, v2);
  v62 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_21A0E481C();
  v4 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v5);
  v60 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for URLAssetConfiguration.Format(0);
  MEMORY[0x28223BE20](v67, v7);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v71 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActivityAsset();
  v72 = *(v13 - 8);
  v73 = v13;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v76 = &v57 - v19;
  v20 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE20);
  result = sub_21A0E683C();
  v22 = result;
  if (*(v20 + 16))
  {
    v57 = v0;
    v23 = 0;
    v24 = (v20 + 56);
    v25 = 1 << *(v20 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(v20 + 56);
    v28 = (v25 + 63) >> 6;
    v59 = (v4 + 32);
    v58 = (v4 + 8);
    v29 = result + 56;
    v30 = v71;
    v70 = v20;
    v65 = v9;
    v64 = result;
    v66 = v17;
    while (v27)
    {
      v32 = __clz(__rbit64(v27));
      v75 = (v27 - 1) & v27;
LABEL_15:
      v35 = *(v20 + 48);
      v36 = *(v72 + 72);
      v37 = v76;
      sub_21A03A4B8(v35 + v36 * (v32 | (v23 << 6)), v76, type metadata accessor for ActivityAsset);
      sub_21A0E6DAC();
      sub_21A03A3F0(v37, v17, type metadata accessor for ActivityAsset);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v74 = v36;
      if (EnumCaseMultiPayload == 1)
      {
        sub_21A03A4B8(v17, v30, type metadata accessor for URLAssetConfiguration);
        MEMORY[0x21CED2490](1);
        sub_21A03A3F0(v30, v9, type metadata accessor for URLAssetConfiguration.Format);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v39 = v62;
          sub_21A03A4B8(v9, v62, type metadata accessor for URLAssetConfiguration.Recipe);
          MEMORY[0x21CED2490](1);
          sub_219FAB2D0(v77);
          sub_219F7CB6C(v77, *(v39 + *(v63 + 20)));
          sub_21A03A458(v30, type metadata accessor for URLAssetConfiguration);
          v40 = type metadata accessor for URLAssetConfiguration.Recipe;
          v41 = v39;
        }

        else
        {
          v46 = v60;
          v47 = v61;
          (*v59)(v60, v9, v61);
          MEMORY[0x21CED2490](0);
          sub_21A03A3AC(&qword_27CCD99F8);
          sub_21A0E615C();
          v48 = v46;
          v30 = v71;
          (*v58)(v48, v47);
          v40 = type metadata accessor for URLAssetConfiguration;
          v41 = v30;
        }

        sub_21A03A458(v41, v40);
        v20 = v70;
      }

      else
      {
        v42 = *v17;
        v43 = v17[16];
        v44 = v17[17];
        v45 = v17[18];
        MEMORY[0x21CED2490](0);
        v69 = v43;
        MEMORY[0x21CED2490](v43);
        v68 = v42;
        sub_21A0E626C();
        sub_21A0E6DCC();
        if (v44 == 9)
        {
          v20 = v70;
          v17 = v66;
        }

        else
        {
          v17 = v66;
          sub_21A0E626C();

          v20 = v70;
        }

        v22 = v64;
        sub_21A0E6DCC();
        if (v45 == 3)
        {
          sub_219F79CD8();
        }

        else
        {
          sub_21A0E626C();
          sub_219F79CD8();
        }

        v9 = v65;
        v30 = v71;
      }

      result = sub_21A0E6DFC();
      v49 = -1 << *(v22 + 32);
      v50 = result & ~v49;
      v51 = v50 >> 6;
      if (((-1 << v50) & ~*(v29 + 8 * (v50 >> 6))) == 0)
      {
        v52 = 0;
        v53 = (63 - v49) >> 6;
        while (++v51 != v53 || (v52 & 1) == 0)
        {
          v54 = v51 == v53;
          if (v51 == v53)
          {
            v51 = 0;
          }

          v52 |= v54;
          v55 = *(v29 + 8 * v51);
          if (v55 != -1)
          {
            v31 = __clz(__rbit64(~v55)) + (v51 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v31 = __clz(__rbit64((-1 << v50) & ~*(v29 + 8 * (v50 >> 6)))) | v50 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v29 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      result = sub_21A03A4B8(v76, *(v22 + 48) + v31 * v74, type metadata accessor for ActivityAsset);
      ++*(v22 + 16);
      v27 = v75;
    }

    v33 = v23;
    while (1)
    {
      v23 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v23 >= v28)
      {
        break;
      }

      v34 = v24[v23];
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v75 = (v34 - 1) & v34;
        goto LABEL_15;
      }
    }

    v56 = 1 << *(v20 + 32);
    if (v56 >= 64)
    {
      bzero(v24, ((v56 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v24 = -1 << v56;
    }

    v1 = v57;
    *(v20 + 16) = 0;
  }

  *v1 = v22;
  return result;
}