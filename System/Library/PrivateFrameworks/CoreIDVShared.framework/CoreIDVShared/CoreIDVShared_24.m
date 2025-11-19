id sub_225BC971C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_2259D8718(0, &qword_281059A70);
  v3 = sub_225CCEF14();
  if (v3)
  {
    v25 = 0;
    v26 = 1;
    v4 = v3;
    sub_225CCEC54();
  }

  v5 = &v0[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_firstName];
  *v5 = 0;
  v5[8] = 1;
  v6 = sub_225CCEF14();
  if (v6)
  {
    v25 = 0;
    v26 = 1;
    v7 = v6;
    sub_225CCEC54();
  }

  v8 = &v0[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_lastName];
  *v8 = 0;
  v8[8] = 1;
  v9 = sub_225CCEF14();
  if (v9)
  {
    v25 = 0;
    v26 = 1;
    v10 = v9;
    sub_225CCEC54();
  }

  v11 = &v0[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_state];
  *v11 = 0;
  v11[8] = 1;
  v12 = sub_225CCEF14();
  if (v12)
  {
    v25 = 0;
    v26 = 1;
    v13 = v12;
    sub_225CCEC54();
  }

  v14 = &v0[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_houseNumber];
  *v14 = 0;
  v14[8] = 1;
  v15 = sub_225CCEF14();
  if (v15)
  {
    v25 = 0;
    v26 = 1;
    v16 = v15;
    sub_225CCEC54();
  }

  v17 = &v0[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_street];
  *v17 = 0;
  v17[8] = 1;
  v18 = sub_225CCEF14();
  if (v18)
  {
    v25 = 0;
    v26 = 1;
    v19 = v18;
    sub_225CCEC54();
  }

  v20 = &v0[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_dob];
  *v20 = 0;
  v20[8] = 1;
  v21 = sub_225CCEF14();
  if (v21)
  {
    v25 = 0;
    v26 = 1;
    v22 = v21;
    sub_225CCEC54();
  }

  v23 = &v1[OBJC_IVAR____TtC13CoreIDVShared20FuzzyMatchAssessment_postalCode];
  *v23 = 0;
  v23[8] = 1;
  v27.receiver = v1;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, sel_init, v25, v26);
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 4);
  *a3 = *v4;
  *(a3 + 4) = v6;
  return result;
}

uint64_t keypath_setTm(int *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 4);
  v7 = *a2 + *a5;
  result = swift_beginAccess();
  *v7 = v5;
  *(v7 + 4) = v6;
  return result;
}

uint64_t keypath_get_96Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t keypath_get_106Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_107Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_get_114Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t keypath_get_100Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

uint64_t keypath_set_101Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  result = swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
  return result;
}

uint64_t keypath_set_163Tm(int *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = (*a2 + *a5);
  result = swift_beginAccess();
  *v6 = v5;
  return result;
}

uint64_t dispatch thunk of FuzzyMatchAssessment.__allocating_init(firstName:lastName:state:houseNumber:street:dob:postalCode:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  LOBYTE(a10) = a10 & 1;
  LOBYTE(a12) = a12 & 1;
  return (*(v13 + 136))(a1, a2 & 1, a3, a4 & 1, a5, a6 & 1, a7, a8 & 1, a9, a10, a11, a12, a13);
}

uint64_t IQComplexSignal.debugDescription.getter()
{
  v1 = *(v0 + 32);
  sub_225CCF204();

  strcpy(v6, "identifier: ");
  v2 = IQACode.toString.getter();
  MEMORY[0x22AA6CE70](v2);

  MEMORY[0x22AA6CE70](0x7469726F6972700ALL, 0xEB00000000203A79);
  v3 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v3);

  MEMORY[0x22AA6CE70](0x736C616E6769730ALL, 0xEA0000000000203ALL);
  v4 = sub_225BBE6A4(v1);
  MEMORY[0x22AA6CE70](v4);

  return v6[0];
}

uint64_t IQSignal.debugDescription.getter()
{
  v1 = *(v0 + 17);
  MEMORY[0x22AA6CE70](40, 0xE100000000000000);
  v2 = IQCType.toString.getter();
  MEMORY[0x22AA6CE70](v2);

  MEMORY[0x22AA6CE70](32, 0xE100000000000000);
  v3 = 0xE500000000000000;
  v4 = 0x6C61757165;
  v5 = 0xEC0000006C617571;
  v6 = 0x4572657461657267;
  v7 = 0xE700000000000000;
  if (v1 != 5)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v8 = 0x72657461657267;
  if (v1 != 3)
  {
    v8 = 0x617571457373656CLL;
    v7 = 0xE90000000000006CLL;
  }

  if (v1 <= 4)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6C61757145746F6ELL;
  if (v1 != 1)
  {
    v10 = 1936942444;
    v9 = 0xE400000000000000;
  }

  if (v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (v1 <= 2)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v1 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x22AA6CE70](v11, v12);

  MEMORY[0x22AA6CE70](32, 0xE100000000000000);
  sub_225CCEBD4();
  MEMORY[0x22AA6CE70](41, 0xE100000000000000);
  return 0;
}

uint64_t IQOCRMatchSignal.debugDescription.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_225CCF204();

  v3 = sub_225CCE564();
  MEMORY[0x22AA6CE70](v3);

  MEMORY[0x22AA6CE70](0x6172656C6F74202CLL, 0xED0000203A65636ELL);
  v4 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v4);

  MEMORY[0x22AA6CE70](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x22AA6CE70](v1, v2);
  return 0x203A64726F77;
}

uint64_t IQOCRMatchSignal.word.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IQOCRMatchSignal.identifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void __swiftcall IQOCRMatchSignal.init(word:tolerance:identifier:)(CoreIDVShared::IQOCRMatchSignal *__return_ptr retstr, Swift::String word, Swift::Int tolerance, Swift::String identifier)
{
  retstr->word = word;
  retstr->tolerance = tolerance;
  retstr->identifier = identifier;
}

uint64_t sub_225BCD41C()
{
  v1 = 0x636E6172656C6F74;
  if (*v0 != 1)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1685221239;
  }
}

uint64_t sub_225BCD478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225BCF210(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225BCD4A0(uint64_t a1)
{
  v2 = sub_225BCE0E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225BCD4DC(uint64_t a1)
{
  v2 = sub_225BCE0E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IQOCRMatchSignal.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FAB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v11 - v6;
  v8 = v1[2];
  v11[1] = v1[3];
  v11[2] = v8;
  v11[0] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225BCE0E0();
  sub_225CCFCE4();
  v14 = 0;
  v9 = v11[3];
  sub_225CCF784();
  if (v9)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v13 = 1;
  sub_225CCF7C4();
  v12 = 2;
  sub_225CCF784();
  return (*(v4 + 8))(v7, v3);
}

uint64_t IQOCRMatchSignal.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FAC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225BCE0E0();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = 0;
  v10 = sub_225CCF684();
  v12 = v11;
  v13 = v10;
  v23 = 1;
  v21 = sub_225CCF6C4();
  v22 = 2;
  v14 = sub_225CCF684();
  v17 = v16;
  v18 = *(v6 + 8);
  v20 = v14;
  v18(v9, v5);
  *a2 = v13;
  a2[1] = v12;
  v19 = v20;
  a2[2] = v21;
  a2[3] = v19;
  a2[4] = v17;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t IQComplexSignal.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_2259F6128(v2, v3, v4);
}

__n128 IQComplexSignal.init(identifier:priority:signals:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1[1].n128_u8[0];
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u8[0] = v4;
  a4[1].n128_u64[1] = a2;
  a4[2].n128_u64[0] = a3;
  return result;
}

uint64_t sub_225BCD974()
{
  v1 = 0x797469726F697270;
  if (*v0 != 1)
  {
    v1 = 0x736C616E676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_225BCD9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225BCF338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225BCD9FC(uint64_t a1)
{
  v2 = sub_225BCE134();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225BCDA38(uint64_t a1)
{
  v2 = sub_225BCE134();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IQComplexSignal.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FAC8);
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v16 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 24);
  v17 = *(v1 + 32);
  v18 = v9;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2259F6128(v7, v8, v10);
  sub_225BCE134();
  v11 = v3;
  sub_225CCFCE4();
  v21 = v7;
  v22 = v8;
  v23 = v10;
  v24 = 0;
  sub_225BCE188();
  v12 = v19;
  sub_225CCF7E4();
  sub_2259F6140(v21, v22, v23);
  if (v12)
  {
    return (*(v20 + 8))(v6, v3);
  }

  v14 = v17;
  v15 = v20;
  LOBYTE(v21) = 1;
  sub_225CCF7C4();
  v21 = v14;
  v24 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FAE0);
  sub_225BCE284(&qword_27D73FAE8, sub_225BCE1DC);
  sub_225CCF7E4();
  return (*(v15 + 8))(v6, v11);
}

uint64_t IQComplexSignal.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FAF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225BCE134();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  sub_225BCE230();
  sub_225CCF6E4();
  v11 = v17;
  v10 = v18;
  v20 = v19;
  LOBYTE(v17) = 1;
  v16 = sub_225CCF6C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FAE0);
  v21 = 2;
  sub_225BCE284(&qword_27D73FB08, sub_225BCE2FC);
  sub_225CCF6E4();
  (*(v6 + 8))(v9, v5);
  v12 = v16;
  v13 = v17;
  v14 = v11;
  *a2 = v11;
  *(a2 + 8) = v10;
  LOBYTE(v11) = v20;
  *(a2 + 16) = v20;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  sub_2259F6128(v14, v10, v11);

  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_2259F6140(v14, v10, v11);
}

uint64_t IQSignal.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_225BB4C48(v2, v3, v4);
}

uint64_t IQSignal.init(type:comparator:threshold:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v4 = *(result + 16);
  v5 = *a2;
  *a3 = *result;
  *(a3 + 16) = v4;
  *(a3 + 17) = v5;
  *(a3 + 20) = a4;
  return result;
}

uint64_t IQComparator.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C61757165;
  v3 = 0x4572657461657267;
  if (v1 != 5)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  v4 = 0x72657461657267;
  if (v1 != 3)
  {
    v4 = 0x617571457373656CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C61757145746F6ELL;
  if (v1 != 1)
  {
    v5 = 1936942444;
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

unint64_t sub_225BCE0E0()
{
  result = qword_27D73FAB8;
  if (!qword_27D73FAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FAB8);
  }

  return result;
}

unint64_t sub_225BCE134()
{
  result = qword_27D73FAD0;
  if (!qword_27D73FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FAD0);
  }

  return result;
}

unint64_t sub_225BCE188()
{
  result = qword_27D73FAD8;
  if (!qword_27D73FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FAD8);
  }

  return result;
}

unint64_t sub_225BCE1DC()
{
  result = qword_27D73FAF0;
  if (!qword_27D73FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FAF0);
  }

  return result;
}

unint64_t sub_225BCE230()
{
  result = qword_27D73FB00;
  if (!qword_27D73FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB00);
  }

  return result;
}

uint64_t sub_225BCE284(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73FAE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225BCE2FC()
{
  result = qword_27D73FB10;
  if (!qword_27D73FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB10);
  }

  return result;
}

uint64_t sub_225BCE350()
{
  v1 = 0x74617261706D6F63;
  if (*v0 != 1)
  {
    v1 = 0x6C6F687365726874;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_225BCE3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225BCF458(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225BCE3D4(uint64_t a1)
{
  v2 = sub_225BCE648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225BCE410(uint64_t a1)
{
  v2 = sub_225BCE648();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IQSignal.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FB18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  HIDWORD(v17) = *(v1 + 17);
  v10 = a1[3];
  v11 = *(v1 + 16);
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v10);
  sub_225BB4C48(v8, v9, v11);
  sub_225BCE648();
  sub_225CCFCE4();
  v20 = v8;
  v21 = v9;
  v22 = v11;
  v19 = 0;
  sub_225BB4934();
  v15 = v18;
  sub_225CCF7E4();
  sub_225BB4C60(v20, v21, v22);
  if (!v15)
  {
    LOBYTE(v20) = BYTE4(v17);
    v19 = 1;
    sub_225BCE69C();
    sub_225CCF7E4();
    LOBYTE(v20) = 2;
    sub_225CCF7B4();
  }

  return (*(v4 + 8))(v7, v14);
}

unint64_t sub_225BCE648()
{
  result = qword_27D73FB20;
  if (!qword_27D73FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB20);
  }

  return result;
}

unint64_t sub_225BCE69C()
{
  result = qword_27D73FB28;
  if (!qword_27D73FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB28);
  }

  return result;
}

uint64_t IQSignal.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FB30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225BCE648();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = 0;
  sub_225BB4AB4();
  sub_225CCF6E4();
  v11 = v21;
  v10 = v22;
  v19 = v23;
  v20 = 1;
  sub_225BCE970();
  sub_225CCF6E4();
  v18 = v21;
  LOBYTE(v21) = 2;
  sub_225CCF6B4();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  v15 = v11;
  *a2 = v11;
  *(a2 + 8) = v10;
  v16 = v18;
  LOBYTE(v11) = v19;
  *(a2 + 16) = v19;
  *(a2 + 17) = v16;
  *(a2 + 20) = v13;
  sub_225BB4C48(v15, v10, v11);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_225BB4C60(v15, v10, v11);
}

unint64_t sub_225BCE970()
{
  result = qword_27D73FB38;
  if (!qword_27D73FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB38);
  }

  return result;
}

CoreIDVShared::IQComparator_optional __swiftcall IQComparator.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_225BCEA60()
{
  result = qword_27D73FB40;
  if (!qword_27D73FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB40);
  }

  return result;
}

uint64_t sub_225BCEAC0()
{
  sub_225CCE5B4();
}

void sub_225BCEBE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6C61757165;
  v5 = 0xEC0000006C617571;
  v6 = 0x4572657461657267;
  v7 = 0xE700000000000000;
  if (v2 != 5)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v8 = 0x72657461657267;
  if (v2 != 3)
  {
    v8 = 0x617571457373656CLL;
    v7 = 0xE90000000000006CLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6C61757145746F6ELL;
  if (v2 != 1)
  {
    v10 = 1936942444;
    v9 = 0xE400000000000000;
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

uint64_t sub_225BCED7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_225BCEDC4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_225BCEE1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 24))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_225BCEE64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_225BCEEFC()
{
  result = qword_27D73FB48;
  if (!qword_27D73FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB48);
  }

  return result;
}

unint64_t sub_225BCEF54()
{
  result = qword_27D73FB50;
  if (!qword_27D73FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB50);
  }

  return result;
}

unint64_t sub_225BCEFAC()
{
  result = qword_27D73FB58;
  if (!qword_27D73FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB58);
  }

  return result;
}

unint64_t sub_225BCF004()
{
  result = qword_27D73FB60;
  if (!qword_27D73FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB60);
  }

  return result;
}

unint64_t sub_225BCF05C()
{
  result = qword_27D73FB68;
  if (!qword_27D73FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB68);
  }

  return result;
}

unint64_t sub_225BCF0B4()
{
  result = qword_27D73FB70;
  if (!qword_27D73FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB70);
  }

  return result;
}

unint64_t sub_225BCF10C()
{
  result = qword_27D73FB78;
  if (!qword_27D73FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB78);
  }

  return result;
}

unint64_t sub_225BCF164()
{
  result = qword_27D73FB80;
  if (!qword_27D73FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB80);
  }

  return result;
}

unint64_t sub_225BCF1BC()
{
  result = qword_27D73FB88;
  if (!qword_27D73FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB88);
  }

  return result;
}

uint64_t sub_225BCF210(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1685221239 && a2 == 0xE400000000000000;
  if (v3 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E6172656C6F74 && a2 == 0xE900000000000065 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 2;
  }

  else
  {
    v6 = sub_225CCF934();

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

uint64_t sub_225BCF338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736C616E676973 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_225CCF934();

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

uint64_t sub_225BCF458(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74617261706D6F63 && a2 == 0xEA0000000000726FLL || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_225CCF934();

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

unint64_t sub_225BCF580()
{
  result = qword_27D73FB90;
  if (!qword_27D73FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FB90);
  }

  return result;
}

uint64_t PDF417ParsedData.docType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PDF417ParsedData.docType.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PDF417ParsedData.issuer.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PDF417ParsedData.issuer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PDF417ParsedData.aamvaVersion.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PDF417ParsedData.aamvaVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PDF417ParsedData.jurisdictionVersion.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PDF417ParsedData.jurisdictionVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t PDF417ParsedData.vehicleClass.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t PDF417ParsedData.vehicleClass.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t PDF417ParsedData.restrictionCodes.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t PDF417ParsedData.restrictionCodes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t PDF417ParsedData.endorsementCodes.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t PDF417ParsedData.endorsementCodes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t PDF417ParsedData.lastName.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t PDF417ParsedData.lastName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t PDF417ParsedData.firstName.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t PDF417ParsedData.firstName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t PDF417ParsedData.middleName.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t PDF417ParsedData.middleName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t PDF417ParsedData.gender.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t PDF417ParsedData.gender.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t PDF417ParsedData.eyeColor.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t PDF417ParsedData.eyeColor.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return result;
}

uint64_t PDF417ParsedData.height.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t PDF417ParsedData.height.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return result;
}

uint64_t PDF417ParsedData.street1.getter()
{
  v1 = *(v0 + 208);

  return v1;
}

uint64_t PDF417ParsedData.street1.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return result;
}

uint64_t PDF417ParsedData.city.getter()
{
  v1 = *(v0 + 224);

  return v1;
}

uint64_t PDF417ParsedData.city.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return result;
}

uint64_t PDF417ParsedData.state.getter()
{
  v1 = *(v0 + 240);

  return v1;
}

uint64_t PDF417ParsedData.state.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return result;
}

uint64_t PDF417ParsedData.postalCode.getter()
{
  v1 = *(v0 + 256);

  return v1;
}

uint64_t PDF417ParsedData.postalCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return result;
}

uint64_t PDF417ParsedData.idNumber.getter()
{
  v1 = *(v0 + 272);

  return v1;
}

uint64_t PDF417ParsedData.idNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  return result;
}

uint64_t PDF417ParsedData.documentDiscriminator.getter()
{
  v1 = *(v0 + 288);

  return v1;
}

uint64_t PDF417ParsedData.documentDiscriminator.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 288) = a1;
  *(v2 + 296) = a2;
  return result;
}

uint64_t PDF417ParsedData.country.getter()
{
  v1 = *(v0 + 304);

  return v1;
}

uint64_t PDF417ParsedData.country.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 304) = a1;
  *(v2 + 312) = a2;
  return result;
}

uint64_t PDF417ParsedData.lastNameTruncation.getter()
{
  v1 = *(v0 + 320);

  return v1;
}

uint64_t PDF417ParsedData.lastNameTruncation.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 320) = a1;
  *(v2 + 328) = a2;
  return result;
}

uint64_t PDF417ParsedData.firstNameTruncation.getter()
{
  v1 = *(v0 + 336);

  return v1;
}

uint64_t PDF417ParsedData.firstNameTruncation.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 336) = a1;
  *(v2 + 344) = a2;
  return result;
}

uint64_t PDF417ParsedData.middleNameTruncation.getter()
{
  v1 = *(v0 + 352);

  return v1;
}

uint64_t PDF417ParsedData.middleNameTruncation.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 352) = a1;
  *(v2 + 360) = a2;
  return result;
}

uint64_t PDF417ParsedData.expirationDate.getter()
{
  v1 = *(v0 + 368);

  return v1;
}

uint64_t PDF417ParsedData.expirationDate.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 368) = a1;
  *(v2 + 376) = a2;
  return result;
}

uint64_t PDF417ParsedData.issueDate.getter()
{
  v1 = *(v0 + 384);

  return v1;
}

uint64_t PDF417ParsedData.issueDate.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 384) = a1;
  *(v2 + 392) = a2;
  return result;
}

uint64_t PDF417ParsedData.dob.getter()
{
  v1 = *(v0 + 400);

  return v1;
}

uint64_t PDF417ParsedData.dob.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 400) = a1;
  *(v2 + 408) = a2;
  return result;
}

uint64_t PDF417ParsedData.street2.getter()
{
  v1 = *(v0 + 416);

  return v1;
}

uint64_t PDF417ParsedData.street2.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 416) = a1;
  *(v2 + 424) = a2;
  return result;
}

uint64_t PDF417ParsedData.hairColor.getter()
{
  v1 = *(v0 + 432);

  return v1;
}

uint64_t PDF417ParsedData.hairColor.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 432) = a1;
  *(v2 + 440) = a2;
  return result;
}

uint64_t PDF417ParsedData.placeOfBirth.getter()
{
  v1 = *(v0 + 448);

  return v1;
}

uint64_t PDF417ParsedData.placeOfBirth.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 448) = a1;
  *(v2 + 456) = a2;
  return result;
}

uint64_t PDF417ParsedData.auditInfo.getter()
{
  v1 = *(v0 + 464);

  return v1;
}

uint64_t PDF417ParsedData.auditInfo.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 464) = a1;
  *(v2 + 472) = a2;
  return result;
}

uint64_t PDF417ParsedData.inventoryControlNumber.getter()
{
  v1 = *(v0 + 480);

  return v1;
}

uint64_t PDF417ParsedData.inventoryControlNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 480) = a1;
  *(v2 + 488) = a2;
  return result;
}

uint64_t PDF417ParsedData.lastNameAlias.getter()
{
  v1 = *(v0 + 496);

  return v1;
}

uint64_t PDF417ParsedData.lastNameAlias.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 496) = a1;
  *(v2 + 504) = a2;
  return result;
}

uint64_t PDF417ParsedData.firstNameAlias.getter()
{
  v1 = *(v0 + 512);

  return v1;
}

uint64_t PDF417ParsedData.firstNameAlias.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 512) = a1;
  *(v2 + 520) = a2;
  return result;
}

uint64_t PDF417ParsedData.suffixNameAlias.getter()
{
  v1 = *(v0 + 528);

  return v1;
}

uint64_t PDF417ParsedData.suffixNameAlias.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 528) = a1;
  *(v2 + 536) = a2;
  return result;
}

uint64_t PDF417ParsedData.suffix.getter()
{
  v1 = *(v0 + 544);

  return v1;
}

uint64_t PDF417ParsedData.suffix.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 544) = a1;
  *(v2 + 552) = a2;
  return result;
}

uint64_t PDF417ParsedData.weightRange.getter()
{
  v1 = *(v0 + 560);

  return v1;
}

uint64_t PDF417ParsedData.weightRange.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 560) = a1;
  *(v2 + 568) = a2;
  return result;
}

uint64_t PDF417ParsedData.ethnicity.getter()
{
  v1 = *(v0 + 576);

  return v1;
}

uint64_t PDF417ParsedData.ethnicity.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 576) = a1;
  *(v2 + 584) = a2;
  return result;
}

uint64_t PDF417ParsedData.standardVehicleClassification.getter()
{
  v1 = *(v0 + 592);

  return v1;
}

uint64_t PDF417ParsedData.standardVehicleClassification.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 592) = a1;
  *(v2 + 600) = a2;
  return result;
}

uint64_t PDF417ParsedData.standardEndorsementCode.getter()
{
  v1 = *(v0 + 608);

  return v1;
}

uint64_t PDF417ParsedData.standardEndorsementCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 608) = a1;
  *(v2 + 616) = a2;
  return result;
}

uint64_t PDF417ParsedData.standardRestrictionCode.getter()
{
  v1 = *(v0 + 624);

  return v1;
}

uint64_t PDF417ParsedData.standardRestrictionCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 624) = a1;
  *(v2 + 632) = a2;
  return result;
}

uint64_t PDF417ParsedData.jurisdictionVehicleClassification.getter()
{
  v1 = *(v0 + 640);

  return v1;
}

uint64_t PDF417ParsedData.jurisdictionVehicleClassification.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 640) = a1;
  *(v2 + 648) = a2;
  return result;
}

uint64_t PDF417ParsedData.jurisdictionEndorsementCode.getter()
{
  v1 = *(v0 + 656);

  return v1;
}

uint64_t PDF417ParsedData.jurisdictionEndorsementCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 656) = a1;
  *(v2 + 664) = a2;
  return result;
}

uint64_t PDF417ParsedData.jurisdictionRestrictionCode.getter()
{
  v1 = *(v0 + 672);

  return v1;
}

uint64_t PDF417ParsedData.jurisdictionRestrictionCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 672) = a1;
  *(v2 + 680) = a2;
  return result;
}

uint64_t PDF417ParsedData.complianceType.getter()
{
  v1 = *(v0 + 688);

  return v1;
}

uint64_t PDF417ParsedData.complianceType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 688) = a1;
  *(v2 + 696) = a2;
  return result;
}

uint64_t PDF417ParsedData.limitedDurationDocument.getter()
{
  v1 = *(v0 + 704);

  return v1;
}

uint64_t PDF417ParsedData.limitedDurationDocument.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 704) = a1;
  *(v2 + 712) = a2;
  return result;
}

uint64_t PDF417ParsedData.weightPounds.getter()
{
  v1 = *(v0 + 720);

  return v1;
}

uint64_t PDF417ParsedData.weightPounds.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 720) = a1;
  *(v2 + 728) = a2;
  return result;
}

uint64_t PDF417ParsedData.weightKilograms.getter()
{
  v1 = *(v0 + 736);

  return v1;
}

uint64_t PDF417ParsedData.weightKilograms.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 736) = a1;
  *(v2 + 744) = a2;
  return result;
}

uint64_t PDF417ParsedData.organDonor.getter()
{
  v1 = *(v0 + 752);

  return v1;
}

uint64_t PDF417ParsedData.organDonor.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 752) = a1;
  *(v2 + 760) = a2;
  return result;
}

uint64_t PDF417ParsedData.veteran.getter()
{
  v1 = *(v0 + 768);

  return v1;
}

uint64_t PDF417ParsedData.veteran.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 768) = a1;
  *(v2 + 776) = a2;
  return result;
}

uint64_t PDF417ParsedData.cardRevisionDate.getter()
{
  v1 = *(v0 + 784);

  return v1;
}

uint64_t PDF417ParsedData.cardRevisionDate.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 784) = a1;
  *(v2 + 792) = a2;
  return result;
}

uint64_t PDF417ParsedData.hazmatEndorsementExpirationDate.getter()
{
  v1 = *(v0 + 800);

  return v1;
}

uint64_t PDF417ParsedData.hazmatEndorsementExpirationDate.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 800) = a1;
  *(v2 + 808) = a2;
  return result;
}

uint64_t PDF417ParsedData.under18Until.getter()
{
  v1 = *(v0 + 816);

  return v1;
}

uint64_t PDF417ParsedData.under18Until.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 816) = a1;
  *(v2 + 824) = a2;
  return result;
}

uint64_t PDF417ParsedData.under19Until.getter()
{
  v1 = *(v0 + 832);

  return v1;
}

uint64_t PDF417ParsedData.under19Until.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 832) = a1;
  *(v2 + 840) = a2;
  return result;
}

uint64_t PDF417ParsedData.under21Until.getter()
{
  v1 = *(v0 + 848);

  return v1;
}

uint64_t PDF417ParsedData.under21Until.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 848) = a1;
  *(v2 + 856) = a2;
  return result;
}

void __swiftcall PDF417ParsedData.init(docType:aamvaVersion:map:)(CoreIDVShared::PDF417ParsedData *__return_ptr retstr, Swift::String docType, Swift::String aamvaVersion, Swift::OpaquePointer map)
{
  v4 = MEMORY[0x28223BE20](docType._countAndFlagsBits, docType._object);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v4;
  v15 = v14;
  v16 = *(v5 + 16);

  v412 = v12;
  v335 = v13;
  if (v16)
  {
    v17 = sub_2259F18D4(4277060, 0xE300000000000000);
    if (v18)
    {
      v19 = (*(v6 + 56) + 16 * v17);
      v20 = *v19;
      v21 = v19[1];
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    v411 = v20;
    v410 = v21;
    if (*(v6 + 16))
    {
      sub_2259F18D4(4407620, 0xE300000000000000);
      if (v22)
      {
      }
    }
  }

  else
  {
    v410 = 0;
    v411 = 0;
  }

  v23 = sub_225CCE514();
  v25 = v24;

  v423[0] = v23;
  v423[1] = v25;
  sub_2259D8654();
  v26 = sub_225CCF044();
  v28 = v27;

  v409 = v26;
  v408 = v28;
  if (*(v6 + 16))
  {
    sub_2259F18D4(4473156, 0xE300000000000000);
    if (v29)
    {
    }
  }

  v30 = sub_225CCE514();
  v32 = v31;

  v423[0] = v30;
  v423[1] = v32;
  v33 = sub_225CCF044();
  v35 = v34;

  v327 = v8;
  v407 = v33;
  v406 = v35;
  if (*(v6 + 16))
  {
    v36 = sub_2259F18D4(4407876, 0xE300000000000000);
    if (v37)
    {
      v38 = (*(v6 + 56) + 16 * v36);
      v39 = *v38;
      v40 = v38[1];
    }

    else
    {
      v39 = 0;
      v40 = 0;
    }

    v405 = v39;
    v404 = v40;
    if (*(v6 + 16))
    {
      sub_2259F18D4(5849412, 0xE300000000000000);
      if (v41)
      {
      }
    }
  }

  else
  {
    v404 = 0;
    v405 = 0;
  }

  v42 = sub_225CCE514();
  v44 = v43;

  v423[0] = v42;
  v423[1] = v44;
  v45 = sub_225CCF044();
  v47 = v46;

  v336 = v10;
  v403 = v45;
  if (*(v6 + 16))
  {
    v48 = sub_2259F18D4(5587268, 0xE300000000000000);
    if (v49)
    {
      v50 = (*(v6 + 56) + 16 * v48);
      v51 = *v50;
      v52 = v50[1];
    }

    else
    {
      v51 = 0;
      v52 = 0;
    }

    v402 = v51;
    v401 = v52;
    if (*(v6 + 16))
    {
      sub_2259F18D4(4669764, 0xE300000000000000);
      if (v53)
      {
      }
    }
  }

  else
  {
    v401 = 0;
    v402 = 0;
  }

  v54 = sub_225CCE514();
  v56 = v55;

  v423[0] = v54;
  v423[1] = v56;
  v57 = sub_225CCF044();
  v59 = v58;

  v400 = v57;
  v399 = v59;
  if (*(v6 + 16))
  {
    sub_2259F18D4(4800836, 0xE300000000000000);
    if (v60)
    {
    }
  }

  v61 = sub_225CCE514();
  v63 = v62;

  v423[0] = v61;
  v423[1] = v63;
  v64 = sub_225CCF044();
  v397 = v65;

  v66 = *(v6 + 16);
  if (!v66)
  {
    v393 = 0uLL;
    v71 = 0;
    v70 = 0;
LABEL_41:
    v76 = 0;
    v75 = 0;
LABEL_42:
    v81 = 0;
    goto LABEL_43;
  }

  v67 = sub_2259F18D4(4866372, 0xE300000000000000);
  if (v68)
  {
    v69 = (*(v6 + 56) + 16 * v67);
    v70 = *v69;
    v71 = v69[1];

    v66 = *(v6 + 16);
    if (v66)
    {
      goto LABEL_34;
    }

    goto LABEL_40;
  }

  v70 = 0;
  v71 = 0;
  v66 = *(v6 + 16);
  if (!v66)
  {
LABEL_40:
    v393 = 0uLL;
    goto LABEL_41;
  }

LABEL_34:
  v72 = sub_2259F18D4(4931908, 0xE300000000000000);
  if (v73)
  {
    v74 = (*(v6 + 56) + 16 * v72);
    v76 = *v74;
    v75 = v74[1];

    v66 = *(v6 + 16);
    if (v66)
    {
      goto LABEL_36;
    }

    goto LABEL_55;
  }

  v76 = 0;
  v75 = 0;
  v66 = *(v6 + 16);
  if (!v66)
  {
LABEL_55:
    v393 = 0uLL;
    goto LABEL_42;
  }

LABEL_36:
  v77 = sub_2259F18D4(5325124, 0xE300000000000000);
  if (v78)
  {
    v79 = *(*(v6 + 56) + 16 * v77);
  }

  else
  {
    v79 = 0;
    v80 = 0;
  }

  *&v393 = v79;
  *(&v393 + 1) = v80;
  v66 = *(v6 + 16);
  if (!v66)
  {
    goto LABEL_42;
  }

  v97 = sub_2259F18D4(4604740, 0xE300000000000000);
  if ((v98 & 1) == 0)
  {
    v66 = 0;
    goto LABEL_42;
  }

  v99 = *(*(v6 + 56) + 16 * v97);

  v66 = v99;
LABEL_43:
  v391 = v81;
  v392 = v66;
  v394 = v75;
  v395 = v71;
  v82 = *(v6 + 16);
  v325 = v47;
  if (!v82)
  {
    v386 = 0uLL;
    v389 = 0;
    v390 = 0;
LABEL_53:
    v89 = 0;
    v90 = 0;
    v96 = 0;
    goto LABEL_70;
  }

  v83 = sub_2259F18D4(4670276, 0xE300000000000000);
  if ((v84 & 1) == 0)
  {
    v390 = 0;
    v389 = 0;
    v82 = *(v6 + 16);
    if (v82)
    {
      goto LABEL_46;
    }

    goto LABEL_52;
  }

  v85 = (*(v6 + 56) + 16 * v83);
  v390 = *v85;
  v389 = v85[1];

  v82 = *(v6 + 16);
  if (!v82)
  {
LABEL_52:
    v386 = 0uLL;
    goto LABEL_53;
  }

LABEL_46:
  v86 = sub_2259F18D4(4539460, 0xE300000000000000);
  if (v87)
  {
    v88 = (*(v6 + 56) + 16 * v86);
    v89 = *v88;
    v90 = v88[1];

    v82 = *(v6 + 16);
    if (v82)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v89 = 0;
    v90 = 0;
    v82 = *(v6 + 16);
    if (v82)
    {
LABEL_48:
      v91 = v89;
      v92 = sub_2259F18D4(4604996, 0xE300000000000000);
      if (v93)
      {
        v94 = *(*(v6 + 56) + 16 * v92);
      }

      else
      {
        v94 = 0;
        v95 = 0;
      }

      *&v386 = v94;
      *(&v386 + 1) = v95;
      v82 = *(v6 + 16);
      if (v82)
      {
        v100 = sub_2259F18D4(4670532, 0xE300000000000000);
        if (v101)
        {
          v102 = *(*(v6 + 56) + 16 * v100);

          v82 = v102;
LABEL_69:
          v89 = v91;
          goto LABEL_70;
        }

        v82 = 0;
      }

      v96 = 0;
      goto LABEL_69;
    }
  }

  v386 = 0uLL;
  v96 = 0;
LABEL_70:
  v384 = v96;
  v385 = v82;
  v387 = v90;
  v388 = v89;
  v398 = v64;
  v396 = v70;
  if (*(v6 + 16))
  {
    sub_2259F18D4(4735300, 0xE300000000000000);
    if (v103)
    {
    }
  }

  v104 = sub_225CCE514();
  v106 = v105;

  v423[0] = v104;
  v423[1] = v106;
  v107 = sub_225CCF044();
  v109 = v108;

  v383 = v107;
  v382 = v109;
  if (*(v6 + 16))
  {
    sub_2259F18D4(5914948, 0xE300000000000000);
    if (v110)
    {
    }
  }

  v111 = sub_225CCE514();
  v113 = v112;

  v423[0] = v111;
  v423[1] = v113;
  v114 = sub_225CCF044();
  v380 = v115;

  v381 = v114;
  if (!*(v6 + 16))
  {
    v375 = 0uLL;
    v378 = 0;
    v379 = 0;
LABEL_85:
    v376 = 0;
    v377 = 0;
    goto LABEL_86;
  }

  v116 = sub_2259F18D4(4801348, 0xE300000000000000);
  if (v117)
  {
    v118 = (*(v6 + 56) + 16 * v116);
    v119 = *v118;
    v120 = v118[1];
  }

  else
  {
    v119 = 0;
    v120 = 0;
  }

  v378 = v120;
  v379 = v119;
  if (!*(v6 + 16))
  {
    v375 = 0uLL;
    goto LABEL_85;
  }

  v121 = sub_2259F18D4(4866884, 0xE300000000000000);
  if (v122)
  {
    v123 = (*(v6 + 56) + 16 * v121);
    v124 = *v123;
    v125 = v123[1];
  }

  else
  {
    v124 = 0;
    v125 = 0;
  }

  v376 = v125;
  v377 = v124;
  if (*(v6 + 16))
  {
    v197 = sub_2259F18D4(4932420, 0xE300000000000000);
    if (v198)
    {
      v199 = *(*(v6 + 56) + 16 * v197);
    }

    else
    {
      v199 = 0;
      v200 = 0;
    }

    *&v375 = v199;
    *(&v375 + 1) = v200;
    if (*(v6 + 16))
    {
      sub_2259F18D4(5128772, 0xE300000000000000);
      if (v205)
      {
      }
    }
  }

  else
  {
    v375 = 0uLL;
  }

LABEL_86:
  v126 = sub_225CCE514();
  v128 = v127;

  v423[0] = v126;
  v423[1] = v128;
  v129 = sub_225CCF044();
  v131 = v130;

  v373 = v131;
  v374 = v129;
  if (*(v6 + 16))
  {
    sub_2259F18D4(4670020, 0xE300000000000000);
    if (v132)
    {
    }
  }

  v133 = sub_225CCE514();
  v135 = v134;

  v423[0] = v133;
  v423[1] = v135;
  v136 = sub_225CCF044();
  v138 = v137;

  v371 = v138;
  v372 = v136;
  if (*(v6 + 16))
  {
    sub_2259F18D4(5456452, 0xE300000000000000);
    if (v139)
    {
    }
  }

  v140 = sub_225CCE514();
  v142 = v141;

  v423[0] = v140;
  v423[1] = v142;
  v143 = sub_225CCF044();
  v369 = v144;

  v145 = *(v6 + 16);
  if (!v145)
  {
    v151 = v76;
    v362 = 0uLL;
    v150 = 0;
    v149 = 0;
LABEL_102:
    v156 = 0;
    v155 = 0;
LABEL_103:
    v161 = 0;
    goto LABEL_104;
  }

  v146 = sub_2259F18D4(4539204, 0xE300000000000000);
  if (v147)
  {
    v148 = (*(v6 + 56) + 16 * v146);
    v149 = *v148;
    v150 = v148[1];

    v145 = *(v6 + 16);
    if (v145)
    {
      goto LABEL_95;
    }

    goto LABEL_101;
  }

  v149 = 0;
  v150 = 0;
  v145 = *(v6 + 16);
  if (!v145)
  {
LABEL_101:
    v151 = v76;
    v362 = 0uLL;
    goto LABEL_102;
  }

LABEL_95:
  v151 = v76;
  v152 = sub_2259F18D4(4997956, 0xE300000000000000);
  if (v153)
  {
    v154 = (*(v6 + 56) + 16 * v152);
    v156 = *v154;
    v155 = v154[1];

    v145 = *(v6 + 16);
    if (v145)
    {
      goto LABEL_97;
    }

    goto LABEL_134;
  }

  v156 = 0;
  v155 = 0;
  v145 = *(v6 + 16);
  if (!v145)
  {
LABEL_134:
    v362 = 0uLL;
    goto LABEL_103;
  }

LABEL_97:
  v157 = sub_2259F18D4(5063492, 0xE300000000000000);
  if (v158)
  {
    v159 = *(*(v6 + 56) + 16 * v157);
  }

  else
  {
    v159 = 0;
    v160 = 0;
  }

  *&v362 = v159;
  *(&v362 + 1) = v160;
  v145 = *(v6 + 16);
  if (!v145)
  {
    goto LABEL_103;
  }

  v201 = sub_2259F18D4(5129028, 0xE300000000000000);
  if (v202)
  {
    v161 = *(*(v6 + 56) + 16 * v201);
  }

  else
  {
    v161 = 0;
    v145 = 0;
  }

LABEL_104:
  v363 = v145;
  v364 = v161;
  v365 = v155;
  v366 = v156;
  v367 = v150;
  v368 = v149;
  v355 = v151;
  if (!*(v6 + 16))
  {
    goto LABEL_112;
  }

  sub_2259F18D4(5391172, 0xE300000000000000);
  if (v162)
  {

    if (!*(v6 + 16))
    {
      goto LABEL_112;
    }
  }

  else if (!*(v6 + 16))
  {
    goto LABEL_112;
  }

  sub_2259F18D4(5260100, 0xE300000000000000);
  if (v163)
  {
  }

LABEL_112:
  v164 = sub_225CCE514();
  v166 = v165;

  v423[0] = v164;
  v423[1] = v166;
  v167 = sub_225CCF044();
  v169 = v168;

  v360 = v169;
  v361 = v167;
  if (*(v6 + 16))
  {
    sub_2259F18D4(5325636, 0xE300000000000000);
    if (v170)
    {
    }
  }

  v171 = sub_225CCE514();
  v173 = v172;

  v423[0] = v171;
  v423[1] = v173;
  v174 = sub_225CCF044();
  v176 = v175;

  v359 = v174;
  v334 = v176;
  if (*(v6 + 16))
  {
    sub_2259F18D4(5391172, 0xE300000000000000);
    if (v177)
    {
    }
  }

  v370 = v143;
  v178 = sub_225CCE514();
  v180 = v179;

  v423[0] = v178;
  v423[1] = v180;
  v358 = sub_225CCF044();
  v182 = v181;

  if (!*(v6 + 16))
  {
    v194 = 0;
    v195 = 0;
    v353 = 0;
    v354 = 0;
    v356 = 0;
    v190 = 0;
    v340 = 0;
    v196 = 0;
    v184 = v327;
    goto LABEL_152;
  }

  v183 = sub_2259F18D4(4277316, 0xE300000000000000);
  v184 = v327;
  if (v185)
  {
    v186 = (*(v6 + 56) + 16 * v183);
    v356 = *v186;
    v354 = v186[1];

    if (*(v6 + 16))
    {
      goto LABEL_121;
    }

LABEL_128:
    v194 = 0;
    v195 = 0;
    v353 = 0;
    v190 = 0;
    goto LABEL_145;
  }

  v356 = 0;
  v354 = 0;
  if (!*(v6 + 16))
  {
    goto LABEL_128;
  }

LABEL_121:
  v187 = sub_2259F18D4(4473924, 0xE300000000000000);
  if (v188)
  {
    v189 = (*(v6 + 56) + 16 * v187);
    v190 = v189[1];
    v353 = *v189;

    if (*(v6 + 16))
    {
      goto LABEL_123;
    }

LABEL_136:
    v194 = 0;
    v195 = 0;
    goto LABEL_145;
  }

  v353 = 0;
  v190 = 0;
  if (!*(v6 + 16))
  {
    goto LABEL_136;
  }

LABEL_123:
  v191 = sub_2259F18D4(5718340, 0xE300000000000000);
  if ((v192 & 1) == 0)
  {
    v195 = 0;
    v194 = 0;
    if (*(v6 + 16))
    {
      goto LABEL_143;
    }

LABEL_145:
    v340 = 0;
    v196 = 0;
    goto LABEL_152;
  }

  v193 = (*(v6 + 56) + 16 * v191);
  v195 = *v193;
  v194 = v193[1];

  if (!*(v6 + 16))
  {
    goto LABEL_145;
  }

LABEL_143:
  v203 = sub_2259F18D4(5783876, 0xE300000000000000);
  if (v204)
  {
    v340 = *(*(v6 + 56) + 16 * v203);
  }

  else
  {
    v340 = 0;
    v196 = 0;
  }

LABEL_152:
  v333 = v196;
  *(&v351 + 1) = v194;
  v352 = v190;
  v206 = *(v6 + 16);
  if (!v206)
  {
    v219 = 0;
    *&v350 = 0;
    v211 = 0;
    v210 = 0;
LABEL_162:
    v214 = 0;
    v215 = 0;
    v221 = 0;
    goto LABEL_172;
  }

  v207 = sub_2259F18D4(4932676, 0xE300000000000000);
  if (v208)
  {
    v209 = (*(v6 + 56) + 16 * v207);
    v210 = *v209;
    v211 = v209[1];

    v206 = *(v6 + 16);
    if (v206)
    {
      goto LABEL_155;
    }

    goto LABEL_161;
  }

  v210 = 0;
  v211 = 0;
  v206 = *(v6 + 16);
  if (!v206)
  {
LABEL_161:
    v219 = 0;
    *&v350 = 0;
    goto LABEL_162;
  }

LABEL_155:
  v212 = sub_2259F18D4(4998212, 0xE300000000000000);
  if ((v213 & 1) == 0)
  {
    v214 = 0;
    v215 = 0;
    v206 = *(v6 + 16);
    if (v206)
    {
      goto LABEL_157;
    }

LABEL_164:
    v219 = 0;
    *&v350 = 0;
    v221 = 0;
    goto LABEL_172;
  }

  v214 = *(*(v6 + 56) + 16 * v212);

  v206 = *(v6 + 16);
  if (!v206)
  {
    goto LABEL_164;
  }

LABEL_157:
  v413 = v215;
  v216 = sub_2259F18D4(4342852, 0xE300000000000000);
  if (v217)
  {
    v218 = (*(v6 + 56) + 16 * v216);
    v220 = *v218;
    v219 = v218[1];
  }

  else
  {
    v220 = 0;
    v219 = 0;
  }

  v206 = *(v6 + 16);
  *&v350 = v220;
  if (v206)
  {
    v338 = v211;
    v222 = v219;
    v223 = sub_2259F18D4(4408388, 0xE300000000000000);
    if (v224)
    {
      v225 = *(*(v6 + 56) + 16 * v223);

      v206 = v225;
    }

    else
    {
      v206 = 0;
      v221 = 0;
    }

    v215 = v413;
    v219 = v222;
    v211 = v338;
  }

  else
  {
    v221 = 0;
    v215 = v413;
  }

LABEL_172:
  v348 = v221;
  v349 = v206;
  *(&v350 + 1) = v219;
  v414 = v215;
  v226 = *(v6 + 16);
  v357 = v182;
  v339 = v211;
  if (!v226)
  {
    v234 = 0;
    v233 = 0;
    v230 = 0;
    v347 = 0;
LABEL_180:
    v235 = 0;
    v236 = v336;
    goto LABEL_188;
  }

  v227 = sub_2259F18D4(4736068, 0xE300000000000000);
  if ((v228 & 1) == 0)
  {
    v230 = 0;
    v347 = 0;
    v226 = *(v6 + 16);
    if (v226)
    {
      goto LABEL_175;
    }

    goto LABEL_179;
  }

  v229 = (*(v6 + 56) + 16 * v227);
  v230 = *v229;
  v347 = v229[1];

  v226 = *(v6 + 16);
  if (!v226)
  {
LABEL_179:
    v234 = 0;
    v233 = 0;
    goto LABEL_180;
  }

LABEL_175:
  v231 = sub_2259F18D4(4801604, 0xE300000000000000);
  if (v232)
  {
    v233 = *(*(v6 + 56) + 16 * v231);
  }

  else
  {
    v233 = 0;
    v234 = 0;
  }

  v226 = *(v6 + 16);
  v236 = v336;
  if (v226)
  {
    v237 = v214;
    v238 = v210;
    v239 = v233;
    v240 = v234;
    v241 = sub_2259F18D4(4867140, 0xE300000000000000);
    if (v242)
    {
      v243 = *(*(v6 + 56) + 16 * v241);

      v226 = v243;
    }

    else
    {
      v226 = 0;
      v235 = 0;
    }

    v234 = v240;
    v233 = v239;
    v210 = v238;
    v236 = v336;
    v214 = v237;
  }

  else
  {
    v235 = 0;
  }

LABEL_188:
  v344 = v235;
  v345 = v226;
  *&v346 = v233;
  *(&v346 + 1) = v234;
  *&v351 = v195;
  v337 = v214;
  v415 = v230;
  if (v236 != 12592 || v184 != 0xE200000000000000)
  {
    v244 = sub_225CCF934();

    if (v244)
    {
      goto LABEL_192;
    }

    if (*(v6 + 16))
    {
      v251 = sub_2259F18D4(4342596, 0xE300000000000000);
      v253 = v325;
      if (v252)
      {
        v254 = (*(v6 + 56) + 16 * v251);
        v255 = *v254;
        v342 = v254[1];
      }

      else
      {
        v255 = 0;
        v342 = 0;
      }

      v343 = v255;
      if (*(v6 + 16))
      {
        v307 = sub_2259F18D4(4473668, 0xE300000000000000);
        if (v308)
        {
          v306 = v210;
          v309 = (*(v6 + 56) + 16 * v307);
          v341 = *v309;
          v329 = v309[1];

LABEL_218:
          sub_225B51F64(5456708, 0xE300000000000000, v6);
          v310 = sub_225CCE514();
          v312 = v311;

          v423[0] = v310;
          v423[1] = v312;
          v313 = sub_225CCF044();
          v330 = v314;
          v331 = v313;

          v416 = sub_225B51F64(5587780, 0xE300000000000000, v6);
          v332 = v315;
          v316 = sub_225B51F64(4276804, 0xE300000000000000, v6);
          v323 = v317;
          v324 = v316;
          v288 = sub_225B51F64(4473412, 0xE300000000000000, v6);
          v287 = v318;
          v322 = sub_225B51F64(4342340, 0xE300000000000000, v6);
          v280 = v319;

          v282 = v327;
          v290 = v335;
          v291 = v336;
          v305 = v363;
          v304 = v364;
          v303 = v360;
          v302 = v361;
          v300 = v358;
          v299 = v359;
          v289 = v333;
          v301 = v334;
          v298 = v356;
          v297 = v357;
          v294 = v353;
          v296 = v354;
          v292 = *(&v351 + 1);
          v295 = v352;
          v293 = v351;
          v286 = v306;
          v284 = v337;
          v285 = v339;
          v283 = v355;
          v281 = v340;
          v276 = v329;
          goto LABEL_219;
        }
      }

      v306 = v210;
    }

    else
    {
      v306 = v210;
      v253 = v325;
      v342 = 0;
      v343 = 0;
    }

    v341 = 0;
    v329 = 0;
    goto LABEL_218;
  }

LABEL_192:
  v326 = v210;
  if (*(v6 + 16))
  {
    v245 = sub_2259F18D4(5456196, 0xE300000000000000);
    if (v246)
    {
      v247 = *(*(v6 + 56) + 16 * v245);
    }

    else
    {
      v247 = 0;
      v248 = 0;
    }

    v342 = v248;
    v343 = v247;
    if (*(v6 + 16))
    {
      v256 = sub_2259F18D4(5521732, 0xE300000000000000);
      if (v257)
      {
        v258 = (*(v6 + 56) + 16 * v256);
        v259 = *v258;
        v328 = v258[1];
      }

      else
      {
        v259 = 0;
        v328 = 0;
      }

      v341 = v259;
      if (*(v6 + 16))
      {
        sub_2259F18D4(4342084, 0xE300000000000000);
        if (v260)
        {
        }
      }

      v249 = v328;
    }

    else
    {
      v249 = 0;
      v341 = 0;
    }

    v250 = v406;
    v236 = v336;
  }

  else
  {
    v249 = 0;
    v341 = 0;
    v342 = 0;
    v343 = 0;
    v250 = v406;
  }

  sub_225CCE514();

  v261 = sub_225CCF044();
  v330 = v262;
  v331 = v261;
  v263 = v262;

  v416 = sub_225B51F64(4538692, 0xE300000000000000, v6);
  v332 = v264;
  *&__src[0] = v335;
  *(&__src[0] + 1) = v412;
  __src[1] = 0u;
  *&__src[2] = v236;
  v265 = v184;
  *(&__src[2] + 1) = v184;
  __src[3] = 0u;
  *&__src[4] = v411;
  *(&__src[4] + 1) = v410;
  *&__src[5] = v343;
  *(&__src[5] + 1) = v342;
  *&__src[6] = v341;
  *(&__src[6] + 1) = v249;
  *&__src[7] = v261;
  *(&__src[7] + 1) = v263;
  *&__src[8] = v409;
  *(&__src[8] + 1) = v408;
  *&__src[9] = v407;
  *(&__src[9] + 1) = v250;
  *&__src[10] = v405;
  *(&__src[10] + 1) = v404;
  *&__src[11] = v403;
  *(&__src[11] + 1) = v325;
  *&__src[12] = v402;
  *(&__src[12] + 1) = v401;
  *&__src[13] = v400;
  *(&__src[13] + 1) = v399;
  *&__src[14] = v398;
  *(&__src[14] + 1) = v397;
  *&__src[15] = v396;
  *(&__src[15] + 1) = v395;
  *&__src[16] = v355;
  *(&__src[16] + 1) = v394;
  __src[17] = v393;
  *&__src[18] = v392;
  *(&__src[18] + 1) = v391;
  *&__src[19] = v390;
  *(&__src[19] + 1) = v389;
  *&__src[20] = v388;
  *(&__src[20] + 1) = v387;
  __src[21] = v386;
  *&__src[22] = v385;
  *(&__src[22] + 1) = v384;
  memset(&__src[23], 0, 48);
  *&__src[26] = v383;
  *(&__src[26] + 1) = v382;
  *&__src[27] = v381;
  *(&__src[27] + 1) = v380;
  *&__src[28] = v379;
  *(&__src[28] + 1) = v378;
  *&__src[29] = v377;
  *(&__src[29] + 1) = v376;
  __src[30] = v375;
  *&__src[31] = v374;
  *(&__src[31] + 1) = v373;
  *&__src[32] = v372;
  *(&__src[32] + 1) = v371;
  *&__src[33] = v370;
  *(&__src[33] + 1) = v369;
  *&__src[34] = v416;
  *(&__src[34] + 1) = v264;
  *&__src[35] = v368;
  *(&__src[35] + 1) = v367;
  *&__src[36] = v366;
  *(&__src[36] + 1) = v365;
  __src[37] = v362;
  *&__src[38] = v364;
  *(&__src[38] + 1) = v363;
  __src[39] = 0u;
  *&__src[40] = v361;
  *(&__src[40] + 1) = v360;
  *&__src[41] = v359;
  *(&__src[41] + 1) = v334;
  *&__src[42] = v358;
  *(&__src[42] + 1) = v357;
  *&__src[43] = v356;
  *(&__src[43] + 1) = v354;
  *&__src[44] = v353;
  *(&__src[44] + 1) = v352;
  __src[45] = v351;
  *&__src[46] = v340;
  *(&__src[46] + 1) = v333;
  *&__src[47] = v326;
  *(&__src[47] + 1) = v339;
  *&__src[48] = v337;
  *(&__src[48] + 1) = v414;
  __src[49] = v350;
  *&__src[50] = v349;
  *(&__src[50] + 1) = v348;
  *&__src[51] = v415;
  *(&__src[51] + 1) = v347;
  __src[52] = v346;
  *&__src[53] = v345;
  *(&__src[53] + 1) = v344;
  memcpy(v423, __src, 0x360uLL);
  sub_225BD9800(__src, v422);
  v266 = sub_225B51F64(4276804, 0xE300000000000000, v6);
  v268 = sub_225BD36A8(v266, v267);
  v323 = v269;
  v324 = v268;
  v270 = v269;

  memcpy(__dst, v423, sizeof(__dst));
  sub_225BD9838(__dst);

  *&v420[0] = v335;
  *(&v420[0] + 1) = v412;
  v420[1] = 0u;
  *&v420[2] = v236;
  *(&v420[2] + 1) = v265;
  v420[3] = 0u;
  *&v420[4] = v411;
  *(&v420[4] + 1) = v410;
  *&v420[5] = v343;
  *(&v420[5] + 1) = v342;
  *&v420[6] = v341;
  *(&v420[6] + 1) = v249;
  *&v420[7] = v331;
  *(&v420[7] + 1) = v330;
  *&v420[8] = v409;
  *(&v420[8] + 1) = v408;
  *&v420[9] = v407;
  *(&v420[9] + 1) = v406;
  *&v420[10] = v405;
  *(&v420[10] + 1) = v404;
  *&v420[11] = v403;
  *(&v420[11] + 1) = v325;
  *&v420[12] = v402;
  *(&v420[12] + 1) = v401;
  *&v420[13] = v400;
  *(&v420[13] + 1) = v399;
  *&v420[14] = v398;
  *(&v420[14] + 1) = v397;
  *&v420[15] = v396;
  *(&v420[15] + 1) = v395;
  *&v420[16] = v355;
  *(&v420[16] + 1) = v394;
  v420[17] = v393;
  *&v420[18] = v392;
  *(&v420[18] + 1) = v391;
  *&v420[19] = v390;
  *(&v420[19] + 1) = v389;
  *&v420[20] = v388;
  *(&v420[20] + 1) = v387;
  v420[21] = v386;
  *&v420[22] = v385;
  *(&v420[22] + 1) = v384;
  *&v420[23] = v268;
  *(&v420[23] + 1) = v270;
  memset(&v420[24], 0, 32);
  *&v420[26] = v383;
  *(&v420[26] + 1) = v382;
  *&v420[27] = v381;
  *(&v420[27] + 1) = v380;
  *&v420[28] = v379;
  *(&v420[28] + 1) = v378;
  *&v420[29] = v377;
  *(&v420[29] + 1) = v376;
  v420[30] = v375;
  *&v420[31] = v374;
  *(&v420[31] + 1) = v373;
  *&v420[32] = v372;
  *(&v420[32] + 1) = v371;
  *&v420[33] = v370;
  *(&v420[33] + 1) = v369;
  *&v420[34] = v416;
  *(&v420[34] + 1) = v332;
  *&v420[35] = v368;
  *(&v420[35] + 1) = v367;
  *&v420[36] = v366;
  *(&v420[36] + 1) = v365;
  v420[37] = v362;
  *&v420[38] = v364;
  *(&v420[38] + 1) = v363;
  v420[39] = 0u;
  *&v420[40] = v361;
  *(&v420[40] + 1) = v360;
  *&v420[41] = v359;
  *(&v420[41] + 1) = v334;
  *&v420[42] = v358;
  *(&v420[42] + 1) = v357;
  *&v420[43] = v356;
  *(&v420[43] + 1) = v354;
  *&v420[44] = v353;
  *(&v420[44] + 1) = v352;
  v420[45] = v351;
  *&v420[46] = v340;
  *(&v420[46] + 1) = v333;
  *&v420[47] = v326;
  *(&v420[47] + 1) = v339;
  *&v420[48] = v337;
  *(&v420[48] + 1) = v414;
  v420[49] = v350;
  *&v420[50] = v349;
  *(&v420[50] + 1) = v348;
  *&v420[51] = v415;
  *(&v420[51] + 1) = v347;
  v420[52] = v346;
  *&v420[53] = v345;
  *(&v420[53] + 1) = v344;
  memcpy(v423, v420, 0x360uLL);
  sub_225BD9800(v420, v422);
  v271 = sub_225B51F64(4473412, 0xE300000000000000, v6);
  v320 = sub_225BD36A8(v271, v272);
  v321 = v273;
  v274 = v273;

  memcpy(v421, v423, sizeof(v421));
  sub_225BD9838(v421);

  *&v422[0] = v335;
  *(&v422[0] + 1) = v412;
  v422[1] = 0u;
  *&v422[2] = v236;
  *(&v422[2] + 1) = v265;
  v422[3] = 0u;
  *&v422[4] = v411;
  *(&v422[4] + 1) = v410;
  *&v422[5] = v343;
  *(&v422[5] + 1) = v342;
  *&v422[6] = v341;
  *(&v422[6] + 1) = v249;
  *&v422[7] = v331;
  *(&v422[7] + 1) = v330;
  *&v422[8] = v409;
  *(&v422[8] + 1) = v408;
  *&v422[9] = v407;
  *(&v422[9] + 1) = v406;
  *&v422[10] = v405;
  *(&v422[10] + 1) = v404;
  *&v422[11] = v403;
  *(&v422[11] + 1) = v325;
  *&v422[12] = v402;
  *(&v422[12] + 1) = v401;
  *&v422[13] = v400;
  *(&v422[13] + 1) = v399;
  *&v422[14] = v398;
  *(&v422[14] + 1) = v397;
  *&v422[15] = v396;
  *(&v422[15] + 1) = v395;
  *&v422[16] = v355;
  *(&v422[16] + 1) = v394;
  v422[17] = v393;
  *&v422[18] = v392;
  *(&v422[18] + 1) = v391;
  *&v422[19] = v390;
  *(&v422[19] + 1) = v389;
  *&v422[20] = v388;
  *(&v422[20] + 1) = v387;
  v422[21] = v386;
  *&v422[22] = v385;
  *(&v422[22] + 1) = v384;
  *&v422[23] = v324;
  *(&v422[23] + 1) = v323;
  *&v422[24] = v320;
  *(&v422[24] + 1) = v274;
  v422[25] = 0u;
  *&v422[26] = v383;
  *(&v422[26] + 1) = v382;
  *&v422[27] = v381;
  *(&v422[27] + 1) = v380;
  *&v422[28] = v379;
  *(&v422[28] + 1) = v378;
  *&v422[29] = v377;
  *(&v422[29] + 1) = v376;
  v422[30] = v375;
  *&v422[31] = v374;
  *(&v422[31] + 1) = v373;
  *&v422[32] = v372;
  *(&v422[32] + 1) = v371;
  *&v422[33] = v370;
  *(&v422[33] + 1) = v369;
  *&v422[34] = v416;
  *(&v422[34] + 1) = v332;
  *&v422[35] = v368;
  *(&v422[35] + 1) = v367;
  *&v422[36] = v366;
  *(&v422[36] + 1) = v365;
  v422[37] = v362;
  *&v422[38] = v364;
  *(&v422[38] + 1) = v363;
  v422[39] = 0u;
  *&v422[40] = v361;
  *(&v422[40] + 1) = v360;
  *&v422[41] = v359;
  *(&v422[41] + 1) = v334;
  *&v422[42] = v358;
  *(&v422[42] + 1) = v357;
  *&v422[43] = v356;
  *(&v422[43] + 1) = v354;
  *&v422[44] = v353;
  *(&v422[44] + 1) = v352;
  v422[45] = v351;
  *&v422[46] = v340;
  *(&v422[46] + 1) = v333;
  *&v422[47] = v326;
  *(&v422[47] + 1) = v339;
  *&v422[48] = v337;
  *(&v422[48] + 1) = v414;
  v422[49] = v350;
  *&v422[50] = v349;
  *(&v422[50] + 1) = v348;
  *&v422[51] = v415;
  *(&v422[51] + 1) = v347;
  v422[52] = v346;
  *&v422[53] = v345;
  *(&v422[53] + 1) = v344;
  memcpy(v417, v422, sizeof(v417));
  sub_225BD9800(v422, v423);
  v275 = sub_225B51F64(4342340, 0xE300000000000000, v6);
  v276 = v249;
  v278 = v277;

  v322 = sub_225BD36A8(v275, v278);
  v280 = v279;
  v281 = v340;
  v282 = v327;
  v283 = v355;

  memcpy(v423, v417, 0x360uLL);
  sub_225BD9838(v423);

  v284 = v337;
  v285 = v339;
  v253 = v325;
  v286 = v326;
  v288 = v320;
  v287 = v321;
  v289 = v333;
  v290 = v335;
  v291 = v336;
  v292 = *(&v351 + 1);
  v293 = v351;
  v295 = v352;
  v294 = v353;
  v296 = v354;
  v298 = v356;
  v297 = v357;
  v300 = v358;
  v299 = v359;
  v301 = v334;
  v303 = v360;
  v302 = v361;
  v305 = v363;
  v304 = v364;
LABEL_219:
  *v15 = v290;
  *(v15 + 8) = v412;
  *(v15 + 32) = v291;
  *(v15 + 40) = v282;
  *(v15 + 64) = v411;
  *(v15 + 72) = v410;
  *(v15 + 80) = v343;
  *(v15 + 88) = v342;
  *(v15 + 96) = v341;
  *(v15 + 104) = v276;
  *(v15 + 112) = v331;
  *(v15 + 120) = v330;
  *(v15 + 128) = v409;
  *(v15 + 136) = v408;
  *(v15 + 144) = v407;
  *(v15 + 152) = v406;
  *(v15 + 160) = v405;
  *(v15 + 168) = v404;
  *(v15 + 176) = v403;
  *(v15 + 184) = v253;
  *(v15 + 192) = v402;
  *(v15 + 200) = v401;
  *(v15 + 208) = v400;
  *(v15 + 216) = v399;
  *(v15 + 224) = v398;
  *(v15 + 232) = v397;
  *(v15 + 240) = v396;
  *(v15 + 248) = v395;
  *(v15 + 256) = v283;
  *(v15 + 264) = v394;
  *(v15 + 272) = v393;
  *(v15 + 288) = v392;
  *(v15 + 296) = v391;
  *(v15 + 304) = v390;
  *(v15 + 312) = v389;
  *(v15 + 320) = v388;
  *(v15 + 328) = v387;
  *(v15 + 336) = v386;
  *(v15 + 352) = v385;
  *(v15 + 360) = v384;
  *(v15 + 368) = v324;
  *(v15 + 376) = v323;
  *(v15 + 384) = v288;
  *(v15 + 392) = v287;
  *(v15 + 400) = v322;
  *(v15 + 408) = v280;
  *(v15 + 416) = v383;
  *(v15 + 424) = v382;
  *(v15 + 432) = v381;
  *(v15 + 440) = v380;
  *(v15 + 448) = v379;
  *(v15 + 456) = v378;
  *(v15 + 464) = v377;
  *(v15 + 472) = v376;
  *(v15 + 480) = v375;
  *(v15 + 496) = v374;
  *(v15 + 504) = v373;
  *(v15 + 512) = v372;
  *(v15 + 520) = v371;
  *(v15 + 528) = v370;
  *(v15 + 536) = v369;
  *(v15 + 544) = v416;
  *(v15 + 552) = v332;
  *(v15 + 560) = v368;
  *(v15 + 568) = v367;
  *(v15 + 576) = v366;
  *(v15 + 584) = v365;
  *(v15 + 592) = v362;
  *(v15 + 16) = 0u;
  *(v15 + 48) = 0u;
  *(v15 + 608) = v304;
  *(v15 + 616) = v305;
  *(v15 + 624) = 0u;
  *(v15 + 640) = v302;
  *(v15 + 648) = v303;
  *(v15 + 656) = v299;
  *(v15 + 664) = v301;
  *(v15 + 672) = v300;
  *(v15 + 680) = v297;
  *(v15 + 688) = v298;
  *(v15 + 696) = v296;
  *(v15 + 704) = v294;
  *(v15 + 712) = v295;
  *(v15 + 720) = v293;
  *(v15 + 728) = v292;
  *(v15 + 736) = v281;
  *(v15 + 744) = v289;
  *(v15 + 752) = v286;
  *(v15 + 760) = v285;
  *(v15 + 768) = v284;
  *(v15 + 776) = v414;
  *(v15 + 784) = v350;
  *(v15 + 800) = v349;
  *(v15 + 808) = v348;
  *(v15 + 816) = v415;
  *(v15 + 824) = v347;
  *(v15 + 832) = v346;
  *(v15 + 848) = v345;
  *(v15 + 856) = v344;
}

uint64_t sub_225BD36A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return a1;
  }

  if (sub_225CCE5D4() != 8)
  {
    if (qword_28105B910 == -1)
    {
LABEL_8:
      v52 = off_28105B918;
      v53 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v54 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v54));
      (*(v5 + 16))(v8, &v52[v53], v4);
      os_unfair_lock_unlock(&v52[v54]);
      v55 = sub_225CCD934();
      v56 = sub_225CCED14();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_2259A7000, v55, v56, "Unable to convert date, did not contain the correct number of characters", v57, 2u);
        MEMORY[0x22AA6F950](v57, -1, -1);
      }

      (*(v5 + 8))(v8, v4);
      return a1;
    }

LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  v62 = a1;
  v63 = a2;
  v8 = sub_2259D8654();

  v5 = sub_225CCE5C4();
  v62 = a1;
  v63 = a2;

  v9 = sub_225CCE5C4();
  v62 = a1;
  v63 = a2;

  v10 = sub_225CCE5C4();
  v62 = a1;
  v63 = a2;

  v11 = sub_225CCE5C4();
  v12 = v9;
  v4 = v10 >> 14;
  v13 = v12 >> 14;
  if (v10 >> 14 < v12 >> 14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v58 = v12;
  v59 = v5;
  result = sub_225CCE704();
  if (v4 > v11 >> 14)
  {
    __break(1u);
  }

  else
  {
    v18 = result;
    v19 = v15;
    v20 = v16;
    v21 = v17;
    v62 = sub_225CCE704();
    v63 = v22;
    v64 = v23;
    v65 = v24;
    v25 = MEMORY[0x22AA6CD90](v18, v19, v20, v21);
    v27 = v26;

    v60 = v25;
    v61 = v27;
    sub_225BDB030();
    sub_225CCE614();
    v28 = sub_225CCEFF4();
    v30 = v29;
    v32 = v31;
    v34 = v33;

    result = v59;
    if (v13 >= v59 >> 14)
    {
      v35 = sub_225CCE704();
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v62 = v35;
      v63 = v37;
      v64 = v39;
      v65 = v41;
      v42 = MEMORY[0x22AA6CD90](v28, v30, v32, v34);
      v44 = v43;

      v60 = v42;
      v61 = v44;
      sub_225CCE614();
      v45 = sub_225CCEFF4();
      v47 = v46;
      v49 = v48;
      v51 = v50;

      a1 = MEMORY[0x22AA6CD90](v45, v47, v49, v51);

      return a1;
    }
  }

  __break(1u);
  return result;
}

unint64_t *PDF417ParsedData.getBindings()()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[17];
  v6 = v0[18];
  v5 = v0[19];
  v57 = v0[27];
  v58 = v0[26];
  v59 = v0[29];
  v60 = v0[28];
  v61 = v0[31];
  v62 = v0[30];
  v63 = v0[33];
  v64 = v0[32];
  v65 = v0[39];
  v66 = v0[38];
  v7 = v0[40];
  v8 = v0[41];
  v47 = v0[42];
  v48 = v0[44];
  v68 = v0[45];
  v69 = v0[43];
  v55 = v0[53];
  v56 = v0[52];
  v67 = v0[63];
  v49 = v0[62];
  v50 = v0[65];
  v51 = v0[64];
  v52 = v0[67];
  v53 = v0[66];
  v54 = v0[68];
  v9 = v0[69];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD68);
  inited = swift_initStackObject();
  v11 = inited;
  if (v2)
  {
    v12 = v1;
  }

  else
  {
    v12 = 0;
  }

  *(inited + 40) = 0x8000000225D0C970;
  *(inited + 48) = v12;
  v13 = 0xE000000000000000;
  if (v2)
  {
    v14 = v2;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  *(inited + 56) = v14;
  *(inited + 64) = 0xD000000000000012;
  if (v4)
  {
    v15 = v3;
  }

  else
  {
    v15 = 0;
  }

  *(inited + 72) = 0x8000000225D0C950;
  *(inited + 80) = v15;
  if (v4)
  {
    v16 = v4;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  if (v5)
  {
    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  *(inited + 104) = 0x8000000225D23190;
  *(inited + 112) = v17;
  if (v5)
  {
    v18 = v5;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  *(inited + 120) = v18;
  *(inited + 128) = 0xD00000000000001BLL;
  if (v8)
  {
    v19 = v7;
  }

  else
  {
    v19 = 0;
  }

  *(inited + 136) = 0x8000000225D231B0;
  *(inited + 144) = v19;
  if (v8)
  {
    v20 = v8;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  *(inited + 152) = v20;
  *(inited + 160) = 0xD00000000000001CLL;
  v21 = v47;
  if (!v69)
  {
    v21 = 0;
  }

  *(inited + 168) = 0x8000000225D231D0;
  *(inited + 176) = v21;
  if (v69)
  {
    v22 = v69;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  *(inited + 184) = v22;
  *(inited + 192) = 0xD00000000000001DLL;
  v23 = v48;
  if (!v68)
  {
    v23 = 0;
  }

  *(inited + 200) = 0x8000000225D231F0;
  *(inited + 208) = v23;
  if (v68)
  {
    v24 = v68;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  *(inited + 216) = v24;
  *(inited + 224) = 0xD000000000000016;
  v25 = v49;
  if (!v67)
  {
    v25 = 0;
  }

  *(inited + 232) = 0x8000000225D23210;
  *(inited + 240) = v25;
  if (v67)
  {
    v26 = v67;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  *(inited + 248) = v26;
  *(inited + 256) = 0xD000000000000017;
  v27 = v51;
  if (!v50)
  {
    v27 = 0;
  }

  *(inited + 264) = 0x8000000225D23230;
  *(inited + 272) = v27;
  if (v50)
  {
    v28 = v50;
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  *(inited + 280) = v28;
  *(inited + 288) = 0xD000000000000018;
  v29 = v53;
  v30 = v54;
  if (!v52)
  {
    v29 = 0;
  }

  *(inited + 296) = 0x8000000225D23250;
  *(inited + 304) = v29;
  if (v52)
  {
    v31 = v52;
  }

  else
  {
    v31 = 0xE000000000000000;
  }

  if (!v9)
  {
    v30 = 0;
  }

  *(inited + 328) = 0xEF7869666675732ELL;
  *(inited + 336) = v30;
  if (v9)
  {
    v32 = v9;
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  v33 = v58;
  if (!v57)
  {
    v33 = 0;
  }

  *(inited + 360) = 0x8000000225D23270;
  *(inited + 368) = v33;
  if (v57)
  {
    v34 = v57;
  }

  else
  {
    v34 = 0xE000000000000000;
  }

  *(inited + 376) = v34;
  v35 = v56;
  if (!v55)
  {
    v35 = 0;
  }

  *(inited + 392) = 0x8000000225D23290;
  *(inited + 400) = v35;
  if (v55)
  {
    v36 = v55;
  }

  else
  {
    v36 = 0xE000000000000000;
  }

  *(inited + 408) = v36;
  *(inited + 416) = 0x746E656D75636F64;
  v37 = v60;
  if (!v59)
  {
    v37 = 0;
  }

  *(inited + 424) = 0xED0000797469632ELL;
  *(inited + 432) = v37;
  *(inited + 312) = v31;
  *(inited + 320) = 0x746E656D75636F64;
  if (v59)
  {
    v38 = v59;
  }

  else
  {
    v38 = 0xE000000000000000;
  }

  *(inited + 440) = v38;
  *(inited + 448) = 0x746E656D75636F64;
  v39 = v62;
  if (!v61)
  {
    v39 = 0;
  }

  *(inited + 456) = 0xEE0065746174732ELL;
  *(inited + 464) = v39;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 88) = v16;
  *(inited + 96) = 0xD000000000000013;
  if (v61)
  {
    v40 = v61;
  }

  else
  {
    v40 = 0xE000000000000000;
  }

  *(inited + 472) = v40;
  *(inited + 480) = 0xD000000000000013;
  v41 = v64;
  if (!v63)
  {
    v41 = 0;
  }

  *(inited + 488) = 0x8000000225D232B0;
  *(inited + 496) = v41;
  if (v63)
  {
    v42 = v63;
  }

  else
  {
    v42 = 0xE000000000000000;
  }

  *(inited + 504) = v42;
  *(inited + 512) = 0xD000000000000010;
  *(inited + 344) = v32;
  *(inited + 352) = 0xD000000000000010;
  *(inited + 384) = 0xD000000000000010;
  *(inited + 520) = 0x8000000225D232D0;
  v43 = v66;
  if (!v65)
  {
    v43 = 0;
  }

  *(inited + 528) = v43;
  if (v65)
  {
    v13 = v65;
  }

  *(inited + 536) = v13;
  *(inited + 16) = xmmword_225CF90D0;

  v44 = sub_225B2E928(v11);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD70);
  swift_arrayDestroy();
  v45 = sub_225BD9868(v44);

  return v45;
}

unint64_t sub_225BD3F94(char a1)
{
  result = 0x65707954636F64;
  switch(a1)
  {
    case 1:
      return 0x726575737369;
    case 2:
      return 0x72655661766D6161;
    case 3:
    case 21:
      return 0xD000000000000013;
    case 4:
      return 0x43656C6369686576;
    case 5:
      return 0xD000000000000010;
    case 6:
      return 0xD000000000000010;
    case 7:
    case 31:
      return 0x656D614E7473616CLL;
    case 8:
      return 0x6D614E7473726966;
    case 9:
      return 0x614E656C6464696DLL;
    case 10:
      return 0x7265646E6567;
    case 11:
      return 0x726F6C6F43657965;
    case 12:
      return 0x746867696568;
    case 13:
      return 0x31746565727473;
    case 14:
      return 2037672291;
    case 15:
      return 0x6574617473;
    case 16:
      return 0x6F436C6174736F70;
    case 17:
      return 0x7265626D754E6469;
    case 18:
      v3 = 5;
      goto LABEL_44;
    case 19:
      return 0x7972746E756F63;
    case 20:
      return 0xD000000000000012;
    case 22:
      return 0xD000000000000014;
    case 23:
      return 0x6974617269707865;
    case 24:
      return 0x7461446575737369;
    case 25:
      return 6451044;
    case 26:
      return 0x32746565727473;
    case 27:
      return 0x6F6C6F4372696168;
    case 28:
      return 0x42664F6563616C70;
    case 29:
      return 0x666E497469647561;
    case 30:
      return 0xD000000000000016;
    case 32:
      return 0x6D614E7473726966;
    case 33:
      return 0x614E786966667573;
    case 34:
      return 0x786966667573;
    case 35:
      return 0x6152746867696577;
    case 36:
      return 0x746963696E687465;
    case 37:
      v3 = 13;
      goto LABEL_44;
    case 38:
    case 39:
    case 44:
      return 0xD000000000000017;
    case 40:
      return 0xD000000000000021;
    case 41:
    case 42:
      v3 = 11;
LABEL_44:
      result = v3 | 0xD000000000000010;
      break;
    case 43:
      result = 0x6E61696C706D6F63;
      break;
    case 45:
      result = 0x6F50746867696577;
      break;
    case 46:
      result = 0x694B746867696577;
      break;
    case 47:
      result = 0x6E6F446E6167726FLL;
      break;
    case 48:
      result = 0x6E617265746576;
      break;
    case 49:
      result = 0xD000000000000010;
      break;
    case 50:
      result = 0xD00000000000001FLL;
      break;
    case 51:
      result = 0x5538317265646E75;
      break;
    case 52:
      result = 0x5539317265646E75;
      break;
    case 53:
      result = 0x5531327265646E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_225BD4540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225BD9F6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225BD4574(uint64_t a1)
{
  v2 = sub_225BD9B3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225BD45B0(uint64_t a1)
{
  v2 = sub_225BD9B3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PDF417ParsedData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FB98);
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = v48 - v5;
  v7 = *v1;
  v50 = v1[1];
  v51 = v7;
  v8 = v1[2];
  v48[102] = v1[3];
  v49 = v8;
  v9 = v1[4];
  v48[100] = v1[5];
  v48[101] = v9;
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v48[94] = v1[9];
  v48[95] = v11;
  v13 = v1[10];
  v48[92] = v1[11];
  v48[93] = v12;
  v14 = v1[12];
  v48[90] = v1[13];
  v48[91] = v13;
  v15 = v1[15];
  v48[98] = v1[14];
  v48[99] = v10;
  v48[97] = v15;
  v16 = v1[17];
  v48[96] = v1[16];
  v48[88] = v16;
  v48[89] = v14;
  v17 = v1[19];
  v48[86] = v1[18];
  v48[87] = v17;
  v18 = v1[21];
  v48[82] = v1[20];
  v48[81] = v18;
  v19 = v1[23];
  v48[84] = v1[22];
  v48[83] = v19;
  v20 = v1[25];
  v48[85] = v1[24];
  v48[80] = v20;
  v21 = v1[27];
  v48[78] = v1[26];
  v48[79] = v21;
  v22 = v1[29];
  v48[76] = v1[28];
  v48[77] = v22;
  v23 = v1[31];
  v48[74] = v1[30];
  v48[75] = v23;
  v24 = v1[33];
  v48[72] = v1[32];
  v48[73] = v24;
  v25 = v1[35];
  v48[2] = v1[34];
  v48[3] = v25;
  v26 = v1[37];
  v48[4] = v1[36];
  v48[5] = v26;
  v27 = v1[39];
  v48[6] = v1[38];
  v48[7] = v27;
  v28 = v1[41];
  v48[8] = v1[40];
  v48[9] = v28;
  v29 = v1[43];
  v48[10] = v1[42];
  v48[11] = v29;
  v30 = v1[45];
  v48[12] = v1[44];
  v48[13] = v30;
  v31 = v1[47];
  v48[14] = v1[46];
  v48[15] = v31;
  v32 = v1[49];
  v48[16] = v1[48];
  v48[17] = v32;
  v33 = v1[51];
  v48[18] = v1[50];
  v48[19] = v33;
  v34 = v1[53];
  v48[20] = v1[52];
  v48[21] = v34;
  v35 = v1[55];
  v48[22] = v1[54];
  v48[23] = v35;
  v36 = v1[57];
  v48[24] = v1[56];
  v48[25] = v36;
  v37 = v1[59];
  v48[26] = v1[58];
  v48[27] = v37;
  v38 = v1[61];
  v48[28] = v1[60];
  v48[29] = v38;
  v39 = v1[63];
  v48[30] = v1[62];
  v48[31] = v39;
  v48[32] = v1[64];
  v48[33] = v1[65];
  v48[34] = v1[66];
  v48[35] = v1[67];
  v48[36] = v1[68];
  v48[37] = v1[69];
  v48[38] = v1[70];
  v48[39] = v1[71];
  v48[40] = v1[72];
  v48[41] = v1[73];
  v48[42] = v1[74];
  v48[43] = v1[75];
  v48[44] = v1[76];
  v48[45] = v1[77];
  v48[46] = v1[78];
  v48[47] = v1[79];
  v48[48] = v1[80];
  v48[49] = v1[81];
  v48[50] = v1[82];
  v48[51] = v1[83];
  v48[52] = v1[84];
  v48[53] = v1[85];
  v48[54] = v1[86];
  v48[55] = v1[87];
  v48[56] = v1[88];
  v48[57] = v1[89];
  v48[58] = v1[90];
  v48[59] = v1[91];
  v48[60] = v1[92];
  v48[61] = v1[93];
  v48[62] = v1[94];
  v48[63] = v1[95];
  v48[64] = v1[96];
  v48[65] = v1[97];
  v48[66] = v1[98];
  v48[67] = v1[99];
  v48[68] = v1[100];
  v48[69] = v1[101];
  v48[70] = v1[102];
  v48[71] = v1[103];
  v40 = v1[104];
  v41 = v1[105];
  v42 = v1[106];
  v43 = v1[107];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225BD9B3C();
  sub_225CCFCE4();
  v55 = 0;
  v44 = v6;
  v45 = v54;
  v46 = v52;
  sub_225CCF784();
  if (v46)
  {
    return (*(v53 + 8))(v44, v45);
  }

  v51 = v42;
  v52 = v43;
  v50 = v41;
  v48[1] = v40;
  v55 = 1;
  sub_225CCF734();
  v55 = 2;
  sub_225CCF734();
  v55 = 3;
  sub_225CCF734();
  v55 = 4;
  sub_225CCF734();
  v55 = 5;
  sub_225CCF734();
  v55 = 6;
  sub_225CCF734();
  v55 = 7;
  sub_225CCF734();
  v55 = 8;
  sub_225CCF734();
  v55 = 9;
  v49 = v44;
  sub_225CCF734();
  v55 = 10;
  sub_225CCF734();
  v55 = 11;
  sub_225CCF734();
  v55 = 12;
  sub_225CCF734();
  v55 = 13;
  sub_225CCF734();
  v55 = 14;
  sub_225CCF734();
  v55 = 15;
  sub_225CCF734();
  v55 = 16;
  sub_225CCF734();
  v55 = 17;
  sub_225CCF734();
  v55 = 18;
  sub_225CCF734();
  v55 = 19;
  sub_225CCF734();
  v55 = 20;
  sub_225CCF734();
  v55 = 21;
  sub_225CCF734();
  v55 = 22;
  sub_225CCF734();
  v55 = 23;
  sub_225CCF734();
  v55 = 24;
  sub_225CCF734();
  v55 = 25;
  sub_225CCF734();
  v55 = 26;
  sub_225CCF734();
  v55 = 27;
  sub_225CCF734();
  v55 = 28;
  sub_225CCF734();
  v55 = 29;
  sub_225CCF734();
  v55 = 30;
  sub_225CCF734();
  v55 = 31;
  sub_225CCF734();
  v55 = 32;
  sub_225CCF734();
  v55 = 33;
  sub_225CCF734();
  v55 = 34;
  sub_225CCF734();
  v55 = 35;
  sub_225CCF734();
  v55 = 36;
  sub_225CCF734();
  v55 = 37;
  sub_225CCF734();
  v55 = 38;
  sub_225CCF734();
  v55 = 39;
  sub_225CCF734();
  v55 = 40;
  sub_225CCF734();
  v55 = 41;
  sub_225CCF734();
  v55 = 42;
  sub_225CCF734();
  v55 = 43;
  sub_225CCF734();
  v55 = 44;
  sub_225CCF734();
  v55 = 45;
  sub_225CCF734();
  v55 = 46;
  sub_225CCF734();
  v55 = 47;
  sub_225CCF734();
  v55 = 48;
  sub_225CCF734();
  v55 = 49;
  sub_225CCF734();
  v55 = 50;
  sub_225CCF734();
  v55 = 51;
  sub_225CCF734();
  v55 = 52;
  sub_225CCF734();
  v55 = 53;
  sub_225CCF734();
  return (*(v53 + 8))(v49, v54);
}

uint64_t PDF417ParsedData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FBA8);
  v5 = *(v150 - 8);
  MEMORY[0x28223BE20](v150, v6);
  v8 = &v82 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225BD9B3C();
  sub_225CCFCA4();
  if (v2)
  {
    v189 = v2;
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_bridgeObjectRelease_n();
    v156 = 0;
    v154 = 0;
    v152 = 0;
    v151 = 0;
    v153 = 0;
    v155 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v163 = 0;
    v164 = 0;
    v165 = 0;
    v166 = 0;
    v167 = 0;
    v168 = 0;
    v169 = 0;
    v170 = 0;
    v171 = 0;
    v172 = 0;
    v173 = 0;
    v174 = 0;
    v175 = 0;
    v176 = 0;
    v177 = 0;
    v178 = 0;
    v181 = 0;
    v182 = 0;
    v183 = 0;
    v184 = 0;
    v185 = 0;
    v186 = 0;
    v187 = 0;
    v188 = 0;
    v190 = 0;
    v179 = 0;
    v180 = 0;
  }

  else
  {
    v9 = v5;
    v10 = a2;
    LOBYTE(v192[0]) = 0;
    v12 = sub_225CCF684();
    v149 = v13;
    LOBYTE(v192[0]) = 1;
    v136 = sub_225CCF624();
    v137 = v14;
    LOBYTE(v192[0]) = 2;
    v135 = sub_225CCF624();
    v148 = v15;
    LOBYTE(v192[0]) = 3;
    v133 = sub_225CCF624();
    v134 = v12;
    v147 = v16;
    LOBYTE(v192[0]) = 4;
    v17 = sub_225CCF624();
    v19 = v18;
    v132 = v17;
    LOBYTE(v192[0]) = 5;
    v131 = sub_225CCF624();
    v180 = v20;
    LOBYTE(v192[0]) = 6;
    v130 = sub_225CCF624();
    v179 = v21;
    LOBYTE(v192[0]) = 7;
    v22 = sub_225CCF624();
    v190 = v23;
    v129 = v22;
    LOBYTE(v192[0]) = 8;
    v128 = sub_225CCF624();
    v188 = v24;
    v189 = 0;
    v127 = a1;
    LOBYTE(v192[0]) = 9;
    v25 = sub_225CCF624();
    v187 = v26;
    v189 = 0;
    v27 = v25;
    LOBYTE(v192[0]) = 10;
    v28 = sub_225CCF624();
    v186 = v29;
    v189 = 0;
    v30 = v28;
    LOBYTE(v192[0]) = 11;
    v31 = sub_225CCF624();
    v185 = v32;
    v189 = 0;
    v33 = v31;
    LOBYTE(v192[0]) = 12;
    v126 = sub_225CCF624();
    v184 = v34;
    v189 = 0;
    LOBYTE(v192[0]) = 13;
    v125 = sub_225CCF624();
    v183 = v35;
    v189 = 0;
    LOBYTE(v192[0]) = 14;
    v124 = sub_225CCF624();
    v182 = v36;
    v189 = 0;
    LOBYTE(v192[0]) = 15;
    v123 = sub_225CCF624();
    v181 = v37;
    v189 = 0;
    LOBYTE(v192[0]) = 16;
    v122 = sub_225CCF624();
    v178 = v38;
    v189 = 0;
    LOBYTE(v192[0]) = 17;
    v121 = sub_225CCF624();
    v177 = v39;
    v189 = 0;
    LOBYTE(v192[0]) = 18;
    v120 = sub_225CCF624();
    v176 = v40;
    v189 = 0;
    LOBYTE(v192[0]) = 19;
    v119 = sub_225CCF624();
    v175 = v41;
    v189 = 0;
    LOBYTE(v192[0]) = 20;
    v118 = sub_225CCF624();
    v174 = v42;
    v189 = 0;
    LOBYTE(v192[0]) = 21;
    v117 = sub_225CCF624();
    v173 = v43;
    v189 = 0;
    LOBYTE(v192[0]) = 22;
    v116 = sub_225CCF624();
    v172 = v44;
    v189 = 0;
    LOBYTE(v192[0]) = 23;
    v115 = sub_225CCF624();
    v171 = v45;
    v189 = 0;
    LOBYTE(v192[0]) = 24;
    v114 = sub_225CCF624();
    v170 = v46;
    v189 = 0;
    LOBYTE(v192[0]) = 25;
    v113 = sub_225CCF624();
    v169 = v47;
    v189 = 0;
    LOBYTE(v192[0]) = 26;
    v112 = sub_225CCF624();
    v168 = v48;
    v189 = 0;
    LOBYTE(v192[0]) = 27;
    v111 = sub_225CCF624();
    v167 = v49;
    v189 = 0;
    LOBYTE(v192[0]) = 28;
    v110 = sub_225CCF624();
    v166 = v50;
    v189 = 0;
    LOBYTE(v192[0]) = 29;
    v109 = sub_225CCF624();
    v165 = v51;
    v189 = 0;
    LOBYTE(v192[0]) = 30;
    v108 = sub_225CCF624();
    v164 = v52;
    v189 = 0;
    LOBYTE(v192[0]) = 31;
    v107 = sub_225CCF624();
    v163 = v53;
    v189 = 0;
    LOBYTE(v192[0]) = 32;
    v106 = sub_225CCF624();
    v162 = v54;
    v189 = 0;
    LOBYTE(v192[0]) = 33;
    v105 = sub_225CCF624();
    v161 = v55;
    v189 = 0;
    LOBYTE(v192[0]) = 34;
    v104 = sub_225CCF624();
    v160 = v56;
    v189 = 0;
    LOBYTE(v192[0]) = 35;
    v103 = sub_225CCF624();
    v159 = v57;
    v189 = 0;
    LOBYTE(v192[0]) = 36;
    v102 = sub_225CCF624();
    v158 = v58;
    v189 = 0;
    LOBYTE(v192[0]) = 37;
    v101 = sub_225CCF624();
    v157 = v59;
    v189 = 0;
    LOBYTE(v192[0]) = 38;
    v100 = sub_225CCF624();
    v155 = v60;
    v189 = 0;
    LOBYTE(v192[0]) = 39;
    v99 = sub_225CCF624();
    v153 = v61;
    v189 = 0;
    LOBYTE(v192[0]) = 40;
    v98 = sub_225CCF624();
    v151 = v62;
    v189 = 0;
    LOBYTE(v192[0]) = 41;
    v97 = sub_225CCF624();
    v152 = v63;
    v189 = 0;
    LOBYTE(v192[0]) = 42;
    v96 = sub_225CCF624();
    v154 = v64;
    v189 = 0;
    LOBYTE(v192[0]) = 43;
    v95 = sub_225CCF624();
    v156 = v65;
    v189 = 0;
    LOBYTE(v192[0]) = 44;
    v94 = sub_225CCF624();
    v142 = v66;
    v189 = 0;
    LOBYTE(v192[0]) = 45;
    v93 = sub_225CCF624();
    v143 = v67;
    v189 = 0;
    LOBYTE(v192[0]) = 46;
    v92 = sub_225CCF624();
    v144 = v68;
    v189 = 0;
    LOBYTE(v192[0]) = 47;
    v91 = sub_225CCF624();
    v145 = v69;
    v189 = 0;
    LOBYTE(v192[0]) = 48;
    v90 = sub_225CCF624();
    v146 = v70;
    v189 = 0;
    LOBYTE(v192[0]) = 49;
    v89 = sub_225CCF624();
    v141 = v71;
    v189 = 0;
    LOBYTE(v192[0]) = 50;
    v88 = sub_225CCF624();
    v140 = v72;
    v189 = 0;
    LOBYTE(v192[0]) = 51;
    v87 = sub_225CCF624();
    v139 = v73;
    v189 = 0;
    LOBYTE(v192[0]) = 52;
    v86 = sub_225CCF624();
    v138 = v74;
    v189 = 0;
    v193 = 53;
    v75 = sub_225CCF624();
    v84 = v76;
    v85 = v75;
    v189 = 0;
    (*(v9 + 8))(v8, v150);
    v191[0] = v134;
    v191[1] = v149;
    v77 = v137;
    v191[2] = v136;
    v191[3] = v137;
    v191[4] = v135;
    v191[5] = v148;
    v191[6] = v133;
    v191[7] = v147;
    v191[8] = v132;
    v82 = v27;
    v83 = v19;
    v191[9] = v19;
    v191[10] = v131;
    v191[11] = v180;
    v191[12] = v130;
    v78 = v179;
    v191[13] = v179;
    v191[14] = v129;
    v191[15] = v190;
    v191[16] = v128;
    v191[17] = v188;
    v191[18] = v27;
    v79 = v187;
    v191[19] = v187;
    v191[20] = v30;
    v80 = v186;
    v191[21] = v186;
    v191[22] = v33;
    v81 = v185;
    v191[23] = v185;
    v191[24] = v126;
    v191[25] = v184;
    v191[26] = v125;
    v191[27] = v183;
    v191[28] = v124;
    v191[29] = v182;
    v191[30] = v123;
    v191[31] = v181;
    v191[32] = v122;
    v191[33] = v178;
    v191[34] = v121;
    v191[35] = v177;
    v191[36] = v120;
    v191[37] = v176;
    v191[38] = v119;
    v191[39] = v175;
    v191[40] = v118;
    v191[41] = v174;
    v191[42] = v117;
    v191[43] = v173;
    v191[44] = v116;
    v191[45] = v172;
    v191[46] = v115;
    v191[47] = v171;
    v191[48] = v114;
    v191[49] = v170;
    v191[50] = v113;
    v191[51] = v169;
    v191[52] = v112;
    v191[53] = v168;
    v191[54] = v111;
    v191[55] = v167;
    v191[56] = v110;
    v191[57] = v166;
    v191[58] = v109;
    v191[59] = v165;
    v191[60] = v108;
    v191[61] = v164;
    v191[62] = v107;
    v191[63] = v163;
    v191[64] = v106;
    v191[65] = v162;
    v191[66] = v105;
    v191[67] = v161;
    v191[68] = v104;
    v191[69] = v160;
    v191[70] = v103;
    v191[71] = v159;
    v191[72] = v102;
    v191[73] = v158;
    v191[74] = v101;
    v191[75] = v157;
    v191[76] = v100;
    v191[77] = v155;
    v191[78] = v99;
    v191[79] = v153;
    v191[80] = v98;
    v191[81] = v151;
    v191[82] = v97;
    v191[83] = v152;
    v191[84] = v96;
    v191[85] = v154;
    v191[86] = v95;
    v191[87] = v156;
    v191[88] = v94;
    v191[89] = v142;
    v191[90] = v93;
    v191[91] = v143;
    v191[92] = v92;
    v191[93] = v144;
    v191[94] = v91;
    v191[95] = v145;
    v191[96] = v90;
    v191[97] = v146;
    v191[98] = v89;
    v191[99] = v141;
    v191[100] = v88;
    v191[101] = v140;
    v191[102] = v87;
    v191[103] = v139;
    v191[104] = v86;
    v191[105] = v138;
    v191[106] = v85;
    v191[107] = v84;
    memcpy(v10, v191, 0x360uLL);
    sub_225BD9800(v191, v192);
    __swift_destroy_boxed_opaque_existential_0(v127);
    v192[0] = v134;
    v192[1] = v149;
    v192[2] = v136;
    v192[3] = v77;
    v192[4] = v135;
    v192[5] = v148;
    v192[6] = v133;
    v192[7] = v147;
    v192[8] = v132;
    v192[9] = v83;
    v192[10] = v131;
    v192[11] = v180;
    v192[12] = v130;
    v192[13] = v78;
    v192[14] = v129;
    v192[15] = v190;
    v192[16] = v128;
    v192[17] = v188;
    v192[18] = v82;
    v192[19] = v79;
    v192[20] = v30;
    v192[21] = v80;
    v192[22] = v33;
    v192[23] = v81;
    v192[24] = v126;
    v192[25] = v184;
    v192[26] = v125;
    v192[27] = v183;
    v192[28] = v124;
    v192[29] = v182;
    v192[30] = v123;
    v192[31] = v181;
    v192[32] = v122;
    v192[33] = v178;
    v192[34] = v121;
    v192[35] = v177;
    v192[36] = v120;
    v192[37] = v176;
    v192[38] = v119;
    v192[39] = v175;
    v192[40] = v118;
    v192[41] = v174;
    v192[42] = v117;
    v192[43] = v173;
    v192[44] = v116;
    v192[45] = v172;
    v192[46] = v115;
    v192[47] = v171;
    v192[48] = v114;
    v192[49] = v170;
    v192[50] = v113;
    v192[51] = v169;
    v192[52] = v112;
    v192[53] = v168;
    v192[54] = v111;
    v192[55] = v167;
    v192[56] = v110;
    v192[57] = v166;
    v192[58] = v109;
    v192[59] = v165;
    v192[60] = v108;
    v192[61] = v164;
    v192[62] = v107;
    v192[63] = v163;
    v192[64] = v106;
    v192[65] = v162;
    v192[66] = v105;
    v192[67] = v161;
    v192[68] = v104;
    v192[69] = v160;
    v192[70] = v103;
    v192[71] = v159;
    v192[72] = v102;
    v192[73] = v158;
    v192[74] = v101;
    v192[75] = v157;
    v192[76] = v100;
    v192[77] = v155;
    v192[78] = v99;
    v192[79] = v153;
    v192[80] = v98;
    v192[81] = v151;
    v192[82] = v97;
    v192[83] = v152;
    v192[84] = v96;
    v192[85] = v154;
    v192[86] = v95;
    v192[87] = v156;
    v192[88] = v94;
    v192[89] = v142;
    v192[90] = v93;
    v192[91] = v143;
    v192[92] = v92;
    v192[93] = v144;
    v192[94] = v91;
    v192[95] = v145;
    v192[96] = v90;
    v192[97] = v146;
    v192[98] = v89;
    v192[99] = v141;
    v192[100] = v88;
    v192[101] = v140;
    v192[102] = v87;
    v192[103] = v139;
    v192[104] = v86;
    v192[105] = v138;
    v192[106] = v85;
    v192[107] = v84;
    return sub_225BD9838(v192);
  }
}

uint64_t PDF417ParsedData.debugDescription.getter()
{
  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[5];
  v113 = v0[1];
  v114 = v0[4];
  v5 = v0[7];
  v132 = v0[6];
  v6 = v0[9];
  v7 = v0[11];
  v115 = v0[8];
  v116 = v0[10];
  v8 = v0[13];
  v117 = v0[12];
  v118 = v0[15];
  v119 = v0[14];
  v120 = v0[17];
  v121 = v0[16];
  v122 = v0[19];
  v123 = v0[18];
  v124 = v0[21];
  v125 = v0[20];
  v126 = v0[23];
  v127 = v0[22];
  v128 = v0[25];
  v131 = v0[26];
  v129 = v0[24];
  v130 = v0[27];
  v133 = v0[29];
  v134 = v0[28];
  v135 = v0[31];
  v136 = v0[30];
  v137 = v0[33];
  v138 = v0[32];
  v139 = v0[35];
  v140 = v0[34];
  v141 = v0[37];
  v142 = v0[36];
  v143 = v0[39];
  v144 = v0[38];
  v145 = v0[41];
  v146 = v0[40];
  v147 = v0[43];
  v148 = v0[42];
  v149 = v0[45];
  v150 = v0[44];
  v151 = v0[47];
  v152 = v0[46];
  v153 = v0[49];
  v154 = v0[48];
  v155 = v0[51];
  v156 = v0[50];
  v157 = v0[53];
  v158 = v0[52];
  v159 = v0[55];
  v160 = v0[54];
  v161 = v0[57];
  v162 = v0[56];
  v163 = v0[59];
  v164 = v0[58];
  v165 = v0[61];
  v166 = v0[60];
  v167 = v0[63];
  v168 = v0[62];
  v169 = v0[65];
  v170 = v0[64];
  v171 = v0[67];
  v172 = v0[66];
  v173 = v0[69];
  v174 = v0[68];
  v175 = v0[71];
  v176 = v0[70];
  v178 = v0[72];
  v177 = v0[73];
  v180 = v0[74];
  v179 = v0[75];
  v182 = v0[76];
  v181 = v0[77];
  v186 = v0[80];
  v185 = v0[81];
  v188 = v0[82];
  v187 = v0[83];
  v184 = v0[84];
  v183 = v0[85];
  v190 = v0[86];
  v189 = v0[87];
  v192 = v0[88];
  v191 = v0[89];
  v193 = v0[91];
  v194 = v0[90];
  v195 = v0[93];
  v196 = v0[92];
  v197 = v0[95];
  v198 = v0[94];
  v199 = v0[97];
  v200 = v0[96];
  v201 = v0[99];
  v202 = v0[98];
  v203 = v0[101];
  v204 = v0[100];
  v205 = v0[103];
  v206 = v0[102];
  v207 = v0[105];
  v208 = v0[104];
  v209 = v0[107];
  v210 = v0[106];

  sub_225CCF204();
  MEMORY[0x22AA6CE70](0x746E656D75636F44, 0xEF203A6570795420);
  MEMORY[0x22AA6CE70](v1, v113);
  MEMORY[0x22AA6CE70](0xD00000000000001BLL, 0x8000000225D232F0);
  if (v2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0;
  }

  if (!v2)
  {
    v2 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v9, v2);

  MEMORY[0x22AA6CE70](0xD000000000000017, 0x8000000225D23310);
  if (v4)
  {
    v10 = v114;
  }

  else
  {
    v10 = 0;
  }

  if (v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v10, v11);

  MEMORY[0x22AA6CE70](0xD00000000000001ELL, 0x8000000225D23330);
  if (v5)
  {
    v12 = v132;
  }

  else
  {
    v12 = 0;
  }

  if (v5)
  {
    v13 = v5;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v12, v13);

  MEMORY[0x22AA6CE70]();
  if (v6)
  {
    v14 = v115;
  }

  else
  {
    v14 = 0;
  }

  if (v6)
  {
    v15 = v6;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v14, v15);

  MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D23370);
  if (v7)
  {
    v16 = v116;
  }

  else
  {
    v16 = 0;
  }

  if (v7)
  {
    v17 = v7;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v16, v17);

  MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D23390);
  if (v8)
  {
    v18 = v117;
  }

  else
  {
    v18 = 0;
  }

  if (v8)
  {
    v19 = v8;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v18, v19);

  MEMORY[0x22AA6CE70](0x20796C696D61460ALL, 0xEE00203A656D614ELL);
  if (v118)
  {
    v20 = v119;
  }

  else
  {
    v20 = 0;
  }

  if (v118)
  {
    v21 = v118;
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v20, v21);

  MEMORY[0x22AA6CE70](0x4E2074737269460ALL, 0xED0000203A656D61);
  if (v120)
  {
    v22 = v121;
  }

  else
  {
    v22 = 0;
  }

  if (v120)
  {
    v23 = v120;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v22, v23);

  MEMORY[0x22AA6CE70](0x20656C6464694D0ALL, 0xEE00203A656D614ELL);
  if (v122)
  {
    v24 = v123;
  }

  else
  {
    v24 = 0;
  }

  if (v122)
  {
    v25 = v122;
  }

  else
  {
    v25 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v24, v25);

  MEMORY[0x22AA6CE70](0x3A7265646E65470ALL, 0xE900000000000020);
  if (v124)
  {
    v26 = v125;
  }

  else
  {
    v26 = 0;
  }

  if (v124)
  {
    v27 = v124;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v26, v27);

  MEMORY[0x22AA6CE70](0x6C6F43206579450ALL, 0xEC000000203A726FLL);
  if (v126)
  {
    v28 = v127;
  }

  else
  {
    v28 = 0;
  }

  if (v126)
  {
    v29 = v126;
  }

  else
  {
    v29 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v28, v29);

  MEMORY[0x22AA6CE70](0x3A7468676965480ALL, 0xE900000000000020);
  if (v128)
  {
    v30 = v129;
  }

  else
  {
    v30 = 0;
  }

  if (v128)
  {
    v31 = v128;
  }

  else
  {
    v31 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v30, v31);

  MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D233B0);
  if (v130)
  {
    v32 = v131;
  }

  else
  {
    v32 = 0;
  }

  if (v130)
  {
    v33 = v130;
  }

  else
  {
    v33 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v32, v33);

  MEMORY[0x22AA6CE70](0x203A797469430ALL, 0xE700000000000000);
  if (v133)
  {
    v34 = v134;
  }

  else
  {
    v34 = 0;
  }

  if (v133)
  {
    v35 = v133;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v34, v35);

  MEMORY[0x22AA6CE70](0x4E2074737269460ALL, 0xED0000203A656D61);

  MEMORY[0x22AA6CE70](v22, v23);

  MEMORY[0x22AA6CE70](0x203A65746174530ALL, 0xE800000000000000);
  if (v135)
  {
    v36 = v136;
  }

  else
  {
    v36 = 0;
  }

  if (v135)
  {
    v37 = v135;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v36, v37);

  MEMORY[0x22AA6CE70](0x206C6174736F500ALL, 0xEE00203A65646F43);
  if (v137)
  {
    v38 = v138;
  }

  else
  {
    v38 = 0;
  }

  if (v137)
  {
    v39 = v137;
  }

  else
  {
    v39 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v38, v39);

  MEMORY[0x22AA6CE70](0x626D754E2044490ALL, 0xEC000000203A7265);
  if (v139)
  {
    v40 = v140;
  }

  else
  {
    v40 = 0;
  }

  if (v139)
  {
    v41 = v139;
  }

  else
  {
    v41 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v40, v41);

  MEMORY[0x22AA6CE70](0xD000000000000019, 0x8000000225D233D0);
  if (v141)
  {
    v42 = v142;
  }

  else
  {
    v42 = 0;
  }

  if (v141)
  {
    v43 = v141;
  }

  else
  {
    v43 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v42, v43);

  MEMORY[0x22AA6CE70](0x7972746E756F430ALL, 0xEA0000000000203ALL);
  if (v143)
  {
    v44 = v144;
  }

  else
  {
    v44 = 0;
  }

  if (v143)
  {
    v45 = v143;
  }

  else
  {
    v45 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v44, v45);

  MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D233F0);
  if (v145)
  {
    v46 = v146;
  }

  else
  {
    v46 = 0;
  }

  if (v145)
  {
    v47 = v145;
  }

  else
  {
    v47 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v46, v47);

  MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D23410);
  if (v147)
  {
    v48 = v148;
  }

  else
  {
    v48 = 0;
  }

  if (v147)
  {
    v49 = v147;
  }

  else
  {
    v49 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v48, v49);

  MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D23430);
  if (v149)
  {
    v50 = v150;
  }

  else
  {
    v50 = 0;
  }

  if (v149)
  {
    v51 = v149;
  }

  else
  {
    v51 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v50, v51);

  MEMORY[0x22AA6CE70](0xD000000000000012, 0x8000000225D23450);
  if (v151)
  {
    v52 = v152;
  }

  else
  {
    v52 = 0;
  }

  if (v151)
  {
    v53 = v151;
  }

  else
  {
    v53 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v52, v53);

  MEMORY[0x22AA6CE70](0x442065757373490ALL, 0xED0000203A657461);
  if (v153)
  {
    v54 = v154;
  }

  else
  {
    v54 = 0;
  }

  if (v153)
  {
    v55 = v153;
  }

  else
  {
    v55 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v54, v55);

  MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D23470);
  if (v155)
  {
    v56 = v156;
  }

  else
  {
    v56 = 0;
  }

  if (v155)
  {
    v57 = v155;
  }

  else
  {
    v57 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v56, v57);

  MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D23490);
  if (v157)
  {
    v58 = v158;
  }

  else
  {
    v58 = 0;
  }

  if (v157)
  {
    v59 = v157;
  }

  else
  {
    v59 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v58, v59);

  MEMORY[0x22AA6CE70](0x6F4320726961480ALL, 0xED0000203A726F6CLL);
  if (v159)
  {
    v60 = v160;
  }

  else
  {
    v60 = 0;
  }

  if (v159)
  {
    v61 = v159;
  }

  else
  {
    v61 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v60, v61);

  MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D234B0);
  if (v161)
  {
    v62 = v162;
  }

  else
  {
    v62 = 0;
  }

  if (v161)
  {
    v63 = v161;
  }

  else
  {
    v63 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v62, v63);

  MEMORY[0x22AA6CE70](0x492074696475410ALL, 0xED0000203A6F666ELL);
  if (v163)
  {
    v64 = v164;
  }

  else
  {
    v64 = 0;
  }

  if (v163)
  {
    v65 = v163;
  }

  else
  {
    v65 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v64, v65);

  MEMORY[0x22AA6CE70](0xD00000000000001BLL, 0x8000000225D234D0);
  if (v165)
  {
    v66 = v166;
  }

  else
  {
    v66 = 0;
  }

  if (v165)
  {
    v67 = v165;
  }

  else
  {
    v67 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v66, v67);

  MEMORY[0x22AA6CE70](0xD000000000000024, 0x8000000225D234F0);
  if (v167)
  {
    v68 = v168;
  }

  else
  {
    v68 = 0;
  }

  if (v167)
  {
    v69 = v167;
  }

  else
  {
    v69 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v68, v69);

  MEMORY[0x22AA6CE70](0xD000000000000012, 0x8000000225D23520);

  MEMORY[0x22AA6CE70](v68, v69);

  MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D23540);
  if (v169)
  {
    v70 = v170;
  }

  else
  {
    v70 = 0;
  }

  if (v169)
  {
    v71 = v169;
  }

  else
  {
    v71 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v70, v71);

  MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D23560);
  if (v171)
  {
    v72 = v172;
  }

  else
  {
    v72 = 0;
  }

  if (v171)
  {
    v73 = v171;
  }

  else
  {
    v73 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v72, v73);

  MEMORY[0x22AA6CE70](0x3A7869666675530ALL, 0xE900000000000020);
  if (v173)
  {
    v74 = v174;
  }

  else
  {
    v74 = 0;
  }

  if (v173)
  {
    v75 = v173;
  }

  else
  {
    v75 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v74, v75);

  MEMORY[0x22AA6CE70](0x207468676965570ALL, 0xEF203A65676E6152);
  if (v175)
  {
    v76 = v176;
  }

  else
  {
    v76 = 0;
  }

  if (v175)
  {
    v77 = v175;
  }

  else
  {
    v77 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v76, v77);

  MEMORY[0x22AA6CE70](0x6963696E6874450ALL, 0xEC000000203A7974);
  if (v177)
  {
    v78 = v178;
  }

  else
  {
    v78 = 0;
  }

  if (v177)
  {
    v79 = v177;
  }

  else
  {
    v79 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v78, v79);

  MEMORY[0x22AA6CE70](0xD000000000000022, 0x8000000225D23580);
  if (v179)
  {
    v80 = v180;
  }

  else
  {
    v80 = 0;
  }

  if (v179)
  {
    v81 = v179;
  }

  else
  {
    v81 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v80, v81);

  MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D235B0);
  if (v181)
  {
    v82 = v182;
  }

  else
  {
    v82 = 0;
  }

  if (v181)
  {
    v83 = v181;
  }

  else
  {
    v83 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v82, v83);

  MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D235D0);
  if (v183)
  {
    v84 = v184;
  }

  else
  {
    v84 = 0;
  }

  if (v183)
  {
    v85 = v183;
  }

  else
  {
    v85 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v84, v85);

  MEMORY[0x22AA6CE70](0xD000000000000026, 0x8000000225D235F0);
  if (v185)
  {
    v86 = v186;
  }

  else
  {
    v86 = 0;
  }

  if (v185)
  {
    v87 = v185;
  }

  else
  {
    v87 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v86, v87);

  MEMORY[0x22AA6CE70](0xD000000000000020, 0x8000000225D23620);
  if (v187)
  {
    v88 = v188;
  }

  else
  {
    v88 = 0;
  }

  if (v187)
  {
    v89 = v187;
  }

  else
  {
    v89 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v88, v89);

  MEMORY[0x22AA6CE70](0xD000000000000020, 0x8000000225D23650);

  MEMORY[0x22AA6CE70](v84, v85);

  MEMORY[0x22AA6CE70](0xD000000000000012, 0x8000000225D23680);
  if (v189)
  {
    v90 = v190;
  }

  else
  {
    v90 = 0;
  }

  if (v189)
  {
    v91 = v189;
  }

  else
  {
    v91 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v90, v91);

  MEMORY[0x22AA6CE70](0xD00000000000001CLL, 0x8000000225D236A0);
  if (v191)
  {
    v92 = v192;
  }

  else
  {
    v92 = 0;
  }

  if (v191)
  {
    v93 = v191;
  }

  else
  {
    v93 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v92, v93);

  MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D236C0);
  if (v193)
  {
    v94 = v194;
  }

  else
  {
    v94 = 0;
  }

  if (v193)
  {
    v95 = v193;
  }

  else
  {
    v95 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v94, v95);

  MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D236E0);
  if (v195)
  {
    v96 = v196;
  }

  else
  {
    v96 = 0;
  }

  if (v195)
  {
    v97 = v195;
  }

  else
  {
    v97 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v96, v97);

  MEMORY[0x22AA6CE70](0x44206E6167724F0ALL, 0xEE00203A726F6E6FLL);
  if (v197)
  {
    v98 = v198;
  }

  else
  {
    v98 = 0;
  }

  if (v197)
  {
    v99 = v197;
  }

  else
  {
    v99 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v98, v99);

  MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D23700);
  if (v199)
  {
    v100 = v200;
  }

  else
  {
    v100 = 0;
  }

  if (v199)
  {
    v101 = v199;
  }

  else
  {
    v101 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v100, v101);

  MEMORY[0x22AA6CE70](0xD000000000000015, 0x8000000225D23720);
  if (v201)
  {
    v102 = v202;
  }

  else
  {
    v102 = 0;
  }

  if (v201)
  {
    v103 = v201;
  }

  else
  {
    v103 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v102, v103);

  MEMORY[0x22AA6CE70](0xD000000000000025, 0x8000000225D23740);
  if (v203)
  {
    v104 = v204;
  }

  else
  {
    v104 = 0;
  }

  if (v203)
  {
    v105 = v203;
  }

  else
  {
    v105 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v104, v105);

  MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D23770);
  if (v205)
  {
    v106 = v206;
  }

  else
  {
    v106 = 0;
  }

  if (v205)
  {
    v107 = v205;
  }

  else
  {
    v107 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v106, v107);

  MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D23790);
  if (v207)
  {
    v108 = v208;
  }

  else
  {
    v108 = 0;
  }

  if (v207)
  {
    v109 = v207;
  }

  else
  {
    v109 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v108, v109);

  MEMORY[0x22AA6CE70](0xD000000000000011, 0x8000000225D237B0);
  if (v209)
  {
    v110 = v210;
  }

  else
  {
    v110 = 0;
  }

  if (v209)
  {
    v111 = v209;
  }

  else
  {
    v111 = 0xE000000000000000;
  }

  MEMORY[0x22AA6CE70](v110, v111);

  return 0;
}

unint64_t *sub_225BD9868(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x28223BE20](a1, v8);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_225BD99C8(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_225BD9AC4(v13, v7, v3);
  result = MEMORY[0x22AA6F950](v13, -1, -1);
  if (!v14)
  {
    return v15;
  }

  return result;
}

unint64_t *sub_225BD99C8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    v14 = (*(a3 + 56) + 16 * v11);
    v16 = *v14;
    v15 = v14[1];
    v17 = v16 & 0xFFFFFFFFFFFFLL;
    if ((v15 & 0x2000000000000000) != 0)
    {
      v18 = HIBYTE(v15) & 0xF;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_225C0A6D4(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_225C0A6D4(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_225BD9AC4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_225BD99C8(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t sub_225BD9B3C()
{
  result = qword_27D73FBA0;
  if (!qword_27D73FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FBA0);
  }

  return result;
}

uint64_t sub_225BD9B98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 864))
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

uint64_t sub_225BD9BE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 856) = 0;
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
      *(result + 864) = 1;
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

    *(result + 864) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PDF417ParsedData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCB)
  {
    goto LABEL_17;
  }

  if (a2 + 53 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 53) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 53;
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

      return (*a1 | (v4 << 8)) - 53;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 53;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x36;
  v8 = v6 - 54;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PDF417ParsedData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 53 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 53) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCB)
  {
    v4 = 0;
  }

  if (a2 > 0xCA)
  {
    v5 = ((a2 - 203) >> 8) + 1;
    *result = a2 + 53;
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
    *result = a2 + 53;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_225BD9E68()
{
  result = qword_27D73FBB0;
  if (!qword_27D73FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FBB0);
  }

  return result;
}

unint64_t sub_225BD9EC0()
{
  result = qword_27D73FBB8;
  if (!qword_27D73FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FBB8);
  }

  return result;
}

unint64_t sub_225BD9F18()
{
  result = qword_27D73FBC0;
  if (!qword_27D73FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FBC0);
  }

  return result;
}

uint64_t sub_225BD9F6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707954636F64 && a2 == 0xE700000000000000;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726575737369 && a2 == 0xE600000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72655661766D6161 && a2 == 0xEC0000006E6F6973 || (sub_225CCF934() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000225D237D0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x43656C6369686576 && a2 == 0xEC0000007373616CLL || (sub_225CCF934() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000225D237F0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000225D23810 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656D614E7473616CLL && a2 == 0xE800000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065 || (sub_225CCF934() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x614E656C6464696DLL && a2 == 0xEA0000000000656DLL || (sub_225CCF934() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7265646E6567 && a2 == 0xE600000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x726F6C6F43657965 && a2 == 0xE800000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x31746565727473 && a2 == 0xE700000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564 || (sub_225CCF934() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7265626D754E6469 && a2 == 0xE800000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000225D23830 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000225D23850 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000225D23870 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000225D23890 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL || (sub_225CCF934() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000065 || (sub_225CCF934() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 6451044 && a2 == 0xE300000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x32746565727473 && a2 == 0xE700000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6F6C6F4372696168 && a2 == 0xE900000000000072 || (sub_225CCF934() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x42664F6563616C70 && a2 == 0xEC00000068747269 || (sub_225CCF934() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x666E497469647561 && a2 == 0xE90000000000006FLL || (sub_225CCF934() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000225D238B0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0x656D614E7473616CLL && a2 == 0xED00007361696C41 || (sub_225CCF934() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x6D614E7473726966 && a2 == 0xEE007361696C4165 || (sub_225CCF934() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x614E786966667573 && a2 == 0xEF7361696C41656DLL || (sub_225CCF934() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x786966667573 && a2 == 0xE600000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x6152746867696577 && a2 == 0xEB0000000065676ELL || (sub_225CCF934() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0x746963696E687465 && a2 == 0xE900000000000079 || (sub_225CCF934() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000225D238D0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000225D238F0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000225D23910 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000225D23930 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000225D23960 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000225D23980 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0x6E61696C706D6F63 && a2 == 0xEE00657079546563 || (sub_225CCF934() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000225D239A0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0x6F50746867696577 && a2 == 0xEC00000073646E75 || (sub_225CCF934() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0x694B746867696577 && a2 == 0xEF736D6172676F6CLL || (sub_225CCF934() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0x6E6F446E6167726FLL && a2 == 0xEA0000000000726FLL || (sub_225CCF934() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0x6E617265746576 && a2 == 0xE700000000000000 || (sub_225CCF934() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000225D239C0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 49;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000225D239E0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 50;
  }

  else if (a1 == 0x5538317265646E75 && a2 == 0xEC0000006C69746ELL || (sub_225CCF934() & 1) != 0)
  {

    return 51;
  }

  else if (a1 == 0x5539317265646E75 && a2 == 0xEC0000006C69746ELL || (sub_225CCF934() & 1) != 0)
  {

    return 52;
  }

  else if (a1 == 0x5531327265646E75 && a2 == 0xEC0000006C69746ELL)
  {

    return 53;
  }

  else
  {
    v6 = sub_225CCF934();

    if (v6)
    {
      return 53;
    }

    else
    {
      return 54;
    }
  }
}

unint64_t sub_225BDB030()
{
  result = qword_27D73FBC8;
  if (!qword_27D73FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FBC8);
  }

  return result;
}

void __swiftcall PDF417Parser.init(pdf417ParsingConfigs:)(CoreIDVShared::PDF417Parser *__return_ptr retstr, Swift::OpaquePointer_optional pdf417ParsingConfigs)
{
  if (!pdf417ParsingConfigs.value._rawValue)
  {
    if (qword_27D739FA0 != -1)
    {
      swift_once();
    }
  }

  v3 = vdupq_n_s64(2uLL);
  *&retstr->HEADER_SIZE = xmmword_225CF1CF0;
  *&retstr->AAMVA_VERSION_NUM_SIZE = v3;
  *&retstr->NUM_OF_ENTRIES_SIZE = v3;
  *&retstr->SUBFILE_OFFSET_SIZE = vdupq_n_s64(4uLL);
  *&retstr->SUBFILE_OFFSET = xmmword_225CF1CB0;
  retstr->DL_SUBFILE._countAndFlagsBits = 19524;
  retstr->DL_SUBFILE._object = 0xE200000000000000;
  retstr->ID_SUBFILE._countAndFlagsBits = 17481;
  retstr->ID_SUBFILE._object = 0xE200000000000000;
  retstr->pdf417ParsingConfigs._rawValue = pdf417ParsingConfigs.value._rawValue;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PDF417Parser.parse(payload:)(CoreIDVShared::PDF417ParsedData *__return_ptr retstr, Swift::String payload)
{
  object = payload._object;
  countAndFlagsBits = payload._countAndFlagsBits;
  v206 = retstr;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v207 = &v205 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v210 = &v205 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FBD8);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v222 = &v205 - v12;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FBE0);
  v235 = *(v259 - 8);
  v14 = MEMORY[0x28223BE20](v259, v13);
  v221 = &v205 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v227 = &v205 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v238 = &v205 - v20;
  v21 = sub_225CCD954();
  v22 = *(v21 - 1);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v233 = &v205 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v205 = &v205 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v208 = &v205 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v209 = &v205 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v237 = &v205 - v37;
  MEMORY[0x28223BE20](v36, v38);
  v236 = &v205 - v39;
  v40 = v2[5];
  v255 = v2[4];
  v256 = v40;
  v257 = v2[6];
  v258 = *(v2 + 14);
  v41 = v2[1];
  v251 = *v2;
  v252 = v41;
  v42 = v2[3];
  v253 = v2[2];
  v254 = v42;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v43 = off_28105B918;
  v44 = *off_28105B918;
  v228 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v45 = v228;
  v46 = (*(v44 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v46));
  v48 = v22 + 16;
  v47 = *(v22 + 16);
  v49 = &v43[v45];
  v50 = v236;
  v47(v236, v49, v21);
  os_unfair_lock_unlock(&v43[v46]);

  sub_225B40BCC(v50, countAndFlagsBits, object);

  v52 = *(v22 + 8);
  v51 = v22 + 8;
  v229 = v52;
  v52(v50, v21);
  os_unfair_lock_lock(&v43[v46]);
  v223 = v47;
  v224 = v48;
  v47(v237, &v43[v228], v21);
  v225 = v46;
  v226 = v43;
  os_unfair_lock_unlock(&v43[v46]);
  sub_225BDDDC8(&v251, &v243);
  v53 = sub_225CCD934();
  v54 = sub_225CCED04();
  if (os_log_type_enabled(v53, v54))
  {
    v46 = object;
    v55 = swift_slowAlloc();
    *v55 = 134217984;
    if (v258 >> 62)
    {
      v56 = sub_225CCF144();
    }

    else
    {
      v56 = *((v258 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v55 + 4) = v56;
    sub_225B93D3C(&v251);
    _os_log_impl(&dword_2259A7000, v53, v54, "pdf417ParsingConfigs = %ld", v55, 0xCu);
    MEMORY[0x22AA6F950](v55, -1, -1);
    object = v46;
  }

  else
  {
    sub_225B93D3C(&v251);
  }

  v229(v237, v21);
  v58 = v258;
  if (v258 >> 62)
  {
    v59 = sub_225CCF144();
    v60 = countAndFlagsBits;
    if (v59)
    {
      goto LABEL_10;
    }

LABEL_72:
    v259 = 0x8000000225D23A20;
    v189 = MEMORY[0x277D84F90];
    v190 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v192 = v191;
    v193 = sub_225CCE954();
    v194 = *(v193 - 8);
    v195 = v210;
    (*(v194 + 56))(v210, 1, 1, v193);
    LODWORD(v193) = (*(v194 + 48))(v195, 1, v193);
    sub_2259CB640(v195, &unk_27D73B050);
    if (v193)
    {
      v196 = 369;
    }

    else
    {
      v196 = 23;
    }

    v197 = sub_225B2C374(v189);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v243 = v197;
    sub_225B2C4A0(v190, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v243);

    v199 = v243;
    v200 = sub_225B29AA0(0, 1, 1, v189);
    v202 = *(v200 + 2);
    v201 = *(v200 + 3);
    if (v202 >= v201 >> 1)
    {
      v200 = sub_225B29AA0((v201 > 1), v202 + 1, 1, v200);
    }

    *(v200 + 2) = v202 + 1;
    v203 = &v200[56 * v202];
    *(v203 + 4) = 0xD00000000000001BLL;
    *(v203 + 5) = 0x8000000225D23A50;
    v204 = v259;
    *(v203 + 6) = 0xD000000000000020;
    *(v203 + 7) = v204;
    *(v203 + 8) = 0x6170286573726170;
    *(v203 + 9) = 0xEF293A64616F6C79;
    *(v203 + 10) = 94;
    *v192 = v196;
    *(v192 + 8) = v200;
    *(v192 + 16) = 0xD00000000000001BLL;
    *(v192 + 24) = 0x8000000225D23A50;
    *(v192 + 32) = v199;
    *(v192 + 40) = 0;
    swift_willThrow();
    return;
  }

  v59 = *((v258 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v60 = countAndFlagsBits;
  if (!v59)
  {
    goto LABEL_72;
  }

LABEL_10:
  v61 = 0;
  v219 = v58 & 0xFFFFFFFFFFFFFF8;
  v220 = v58 & 0xC000000000000001;
  v216 = (v235 + 32);
  v62 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v62 = v60;
  }

  v63 = 7;
  if (((object >> 60) & ((v60 & 0x800000000000000) == 0)) != 0)
  {
    v63 = 11;
  }

  v237 = (v235 + 8);
  v215 = v63 | (v62 << 16);
  *&v57 = 136315138;
  v211 = v57;
  v232 = v21;
  v217 = v51;
  v218 = object;
  v213 = v59;
  v214 = v58;
  while (!v220)
  {
    if (v61 >= *(v219 + 16))
    {
      __break(1u);
      goto LABEL_64;
    }

    v64 = *(v58 + 8 * v61 + 32);
    v65 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_26;
    }

LABEL_20:
    v234 = v65;
    v235 = v61;
    v236 = v64;
    v231 = &v64[OBJC_IVAR____TtC13CoreIDVShared19PDF417ParsingConfig_aamvaHeader];

    v66 = v227;
    v67 = v239;
    sub_225CCD874();
    v21 = v67;
    if (v67)
    {
      goto LABEL_27;
    }

    (*v216)(v238, v66, v259);
    sub_225CCE704();
    sub_225BDDE00();
    v68 = v221;
    sub_225CCD804();
    v69 = v222;
    v70 = v259;
    sub_225CCD824();
    v71 = 0;
    v72 = *v237;
    (*v237)(v68, v70);

    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FBF0);
    v74 = *(v73 - 8);
    if ((*(v74 + 48))(v69, 1, v73) != 1)
    {
      v212 = v72;
      sub_225CCD864();
      (*(v74 + 8))(v69, v73);
      v100 = sub_225CCE704();
      v233 = v101;
      v234 = v100;
      v103 = v102;
      v105 = v104;
      v107 = v225;
      v106 = v226;
      os_unfair_lock_lock(&v226[v225]);
      v108 = v232;
      v223(v209, &v106[v228], v232);
      os_unfair_lock_unlock(&v106[v107]);

      v109 = v236;
      v110 = sub_225CCD934();
      v111 = sub_225CCED04();
      v236 = v109;

      v112 = os_log_type_enabled(v110, v111);
      v235 = v105;
      if (v112)
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v239 = 0;
        v115 = v114;
        *&v243 = v114;
        *v113 = 136315394;

        v116 = MEMORY[0x22AA6CD90](v234, v103, v233, v105);
        v118 = v117;

        v119 = sub_2259BE198(v116, v118, &v243);

        *(v113 + 4) = v119;
        *(v113 + 12) = 2080;
        v120 = *v231;
        v121 = v231[1];

        v122 = sub_2259BE198(v120, v121, &v243);

        *(v113 + 14) = v122;
        _os_log_impl(&dword_2259A7000, v110, v111, "found header = %s, config header: %s", v113, 0x16u);
        swift_arrayDestroy();
        v123 = v115;
        v71 = v239;
        MEMORY[0x22AA6F950](v123, -1, -1);
        v124 = v113;
        v108 = v232;
        MEMORY[0x22AA6F950](v124, -1, -1);
      }

      v229(v209, v108);
      v141 = sub_225CCE694();
      v143 = v225;
      v142 = v226;
      os_unfair_lock_lock(&v226[v225]);
      v144 = v208;
      v223(v208, &v142[v228], v108);
      os_unfair_lock_unlock(&v142[v143]);
      v145 = sub_225CCD934();
      v146 = sub_225CCED04();
      v147 = os_log_type_enabled(v145, v146);
      v148 = v212;
      if (v147)
      {
        v149 = swift_slowAlloc();
        *v149 = 134217984;
        *(v149 + 4) = v141;
        _os_log_impl(&dword_2259A7000, v145, v146, "current index after AAVMA header = %ld", v149, 0xCu);
        v150 = v149;
        v144 = v208;
        MEMORY[0x22AA6F950](v150, -1, -1);
      }

      v229(v144, v108);
      v58 = &v243;
      v247 = v255;
      v248 = v256;
      v249 = v257;
      v250 = v258;
      v243 = v251;
      v244 = v252;
      v245 = v253;
      v246 = v254;
      v151 = v141 + *(&v251 + 1);
      if (__OFADD__(v141, *(&v251 + 1)))
      {
        __break(1u);
      }

      else
      {
        v152 = sub_225BDD9C4(countAndFlagsBits, v218, v141, v141 + *(&v251 + 1));
        v154 = v259;
        if (v71)
        {

          v148(v238, v154);
          return;
        }

        v234 = v152;
        v239 = v153;
        v247 = v255;
        v248 = v256;
        v249 = v257;
        v250 = v258;
        v243 = v251;
        v244 = v252;
        v245 = v253;
        v246 = v254;
        v59 = v151 + v252;
        if (!__OFADD__(v151, v252))
        {
          v46 = sub_225BDD9C4(countAndFlagsBits, v218, v151, v151 + v252);
          v60 = v155;
          v233 = 0;
          if (v46 == 12336 && v155 == 0xE200000000000000)
          {
LABEL_50:
            v227 = 0;
            v231 = 0;
            goto LABEL_65;
          }

          v156 = sub_225CCF934();
          v63 = 0;
          v158 = v46 == 12592 && v60 == 0xE200000000000000;
          if ((v156 & 1) == 0 && !v158)
          {
            if (sub_225CCF934())
            {
              goto LABEL_50;
            }

            v247 = v255;
            v248 = v256;
            v249 = v257;
            v250 = v258;
            v243 = v251;
            v244 = v252;
            v245 = v253;
            v246 = v254;
            v159 = v59 + *(&v252 + 1);
            if (!__OFADD__(v59, *(&v252 + 1)))
            {
              v160 = v233;
              v161 = sub_225BDD9C4(countAndFlagsBits, v218, v59, v59 + *(&v252 + 1));
              v233 = v160;
              if (v160)
              {

                v212(v238, v259);
                return;
              }

              v227 = v161;
              v231 = v162;
              v59 = v159;
LABEL_65:
              v163 = *(v58 + 208);
              *(v58 + 64) = *(v58 + 192);
              *(v58 + 80) = v163;
              *(v58 + 96) = *(v58 + 224);
              v164 = v253;
              v250 = v258;
              v165 = *(v58 + 144);
              *v58 = *(v58 + 128);
              *(v58 + 16) = v165;
              v166 = *(v58 + 176);
              *(v58 + 32) = *(v58 + 160);
              *(v58 + 48) = v166;
              v167 = v59 + v164;
              if (!__OFADD__(v59, v164))
              {
                v168 = countAndFlagsBits;
                v169 = v218;
                v170 = v233;
                sub_225BDD9C4(countAndFlagsBits, v218, v59, v59 + v164);
                if (v170)
                {

                  v212(v238, v259);
                }

                else
                {

                  v247 = v255;
                  v248 = v256;
                  v249 = v257;
                  v250 = v258;
                  v243 = v251;
                  v244 = v252;
                  v245 = v253;
                  v246 = v254;
                  v171 = sub_225BDCC30(v168, v169, v167);
                  v233 = v172;
                  v222 = v171;
                  v247 = v255;
                  v248 = v256;
                  v249 = v257;
                  v250 = v258;
                  v243 = v251;
                  v244 = v252;
                  v245 = v253;
                  v246 = v254;
                  v175 = sub_225BDD134(v168, v169, v173, v174);
                  v176 = v233;

                  v177._countAndFlagsBits = v222;
                  v177._object = v176;
                  v178._countAndFlagsBits = v46;
                  v178._object = v60;
                  PDF417ParsedData.init(docType:aamvaVersion:map:)(&v240, v177, v178, v175);

                  v240.issuer.value._countAndFlagsBits = v234;
                  v240.issuer.value._object = v239;

                  v179 = v226;
                  v240.jurisdictionVersion.value._countAndFlagsBits = v227;
                  v240.jurisdictionVersion.value._object = v231;
                  v180 = v225;
                  os_unfair_lock_lock(&v226[v225]);
                  v181 = v205;
                  v223(v205, &v179[v228], v232);
                  os_unfair_lock_unlock(&v179[v180]);

                  v182 = sub_225CCD934();
                  v183 = sub_225CCED04();

                  if (os_log_type_enabled(v182, v183))
                  {
                    v184 = swift_slowAlloc();
                    v185 = swift_slowAlloc();
                    *&v243 = v185;
                    *v184 = v211;
                    v186 = v181;
                    v187 = sub_2259BE198(v222, v176, &v243);

                    *(v184 + 4) = v187;
                    _os_log_impl(&dword_2259A7000, v182, v183, "Found pdf417 barcode of doc type %s", v184, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v185);
                    MEMORY[0x22AA6F950](v185, -1, -1);
                    MEMORY[0x22AA6F950](v184, -1, -1);

                    v188 = v186;
                  }

                  else
                  {

                    v188 = v181;
                  }

                  v229(v188, v232);
                  v212(v238, v259);
                  memcpy(v206, &v240, sizeof(CoreIDVShared::PDF417ParsedData));
                }

                return;
              }

LABEL_83:
              __break(1u);
            }

            __break(1u);
            return;
          }

LABEL_64:
          v227 = v63;
          v231 = v63;
          goto LABEL_65;
        }
      }

      __break(1u);
      goto LABEL_83;
    }

    v239 = 0;
    sub_2259CB640(v69, &qword_27D73FBD8);
    v76 = v225;
    v75 = v226;
    os_unfair_lock_lock(&v226[v225]);
    v21 = v232;
    v46 = v233;
    v223(v233, &v75[v228], v232);
    os_unfair_lock_unlock(&v75[v76]);
    v77 = v236;
    v78 = sub_225CCD934();
    v79 = sub_225CCED04();

    v80 = os_log_type_enabled(v78, v79);
    v58 = v214;
    if (v80)
    {
      v81 = swift_slowAlloc();
      v212 = v72;
      v82 = v81;
      v83 = swift_slowAlloc();
      *&v243 = v83;
      *v82 = v211;
      v84 = *v231;
      v85 = v231[1];

      v46 = sub_2259BE198(v84, v85, &v243);
      v21 = v232;

      *(v82 + 4) = v46;
      _os_log_impl(&dword_2259A7000, v78, v79, "did not find header that matches %s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v83);
      MEMORY[0x22AA6F950](v83, -1, -1);
      MEMORY[0x22AA6F950](v82, -1, -1);

      v229(v233, v21);
      v212(v238, v259);
    }

    else
    {

      v229(v46, v21);
      v72(v238, v259);
    }

    v60 = countAndFlagsBits;
    v61 = v235 + 1;
    v59 = v213;
    if (v234 == v213)
    {
      goto LABEL_72;
    }
  }

  v64 = MEMORY[0x22AA6DA80](v61, v58);
  v65 = v61 + 1;
  if (!__OFADD__(v61, 1))
  {
    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  v239 = "Invalid AAMVA header regex";
  v86 = v21;
  v87 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v89 = v88;
  swift_getErrorValue();
  v90 = v242;
  v91 = v21;
  sub_225B21FAC(v90, &v243);

  v92 = *(&v243 + 1);
  v259 = 0x8000000225D23A00;
  if (*(&v243 + 1))
  {
    v237 = v244;
    v238 = v243;
    v234 = *(&v245 + 1);
    v93 = v245;
    v235 = *(&v244 + 1);
  }

  else
  {
    *&v243 = v21;
    v94 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v95 = v241;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_225CD30F0;
      *(v96 + 32) = 20;
      v97 = [v95 code];
      v98 = MEMORY[0x277D83BF8];
      *(v96 + 64) = MEMORY[0x277D83B88];
      *(v96 + 72) = v98;
      *(v96 + 40) = v97;
      v93 = sub_225B2C374(v96);
      swift_setDeallocating();
      sub_2259CB640(v96 + 32, &qword_27D73B060);
      swift_deallocClassInstance();

      v99 = v21;
      v237 = 0;
      v235 = 0;
      v92 = MEMORY[0x277D84F90];
      v238 = 368;
      v234 = v21;
    }

    else
    {
      *&v243 = v21;
      v125 = v21;
      v126 = sub_225CCE954();
      v127 = v207;
      v128 = swift_dynamicCast();
      v129 = *(v126 - 8);
      (*(v129 + 56))(v127, v128 ^ 1u, 1, v126);
      LODWORD(v129) = (*(v129 + 48))(v127, 1, v126);
      sub_2259CB640(v127, &unk_27D73B050);
      if (v129)
      {
        v130 = 368;
      }

      else
      {
        v130 = 23;
      }

      v238 = v130;
      v92 = MEMORY[0x277D84F90];
      v93 = sub_225B2C374(MEMORY[0x277D84F90]);
      v131 = v21;
      v237 = 0xD00000000000001ALL;
      v234 = v21;
      v235 = 0x8000000225D23A00;
    }
  }

  v132 = v239 | 0x8000000000000000;
  v133 = swift_isUniquelyReferenced_nonNull_native();
  *&v243 = v93;
  sub_225B2C4A0(v87, sub_225B2AC40, 0, v133, &v243);

  v134 = v243;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v92 = sub_225B29AA0(0, *(v92 + 2) + 1, 1, v92);
  }

  v136 = *(v92 + 2);
  v135 = *(v92 + 3);
  if (v136 >= v135 >> 1)
  {
    v92 = sub_225B29AA0((v135 > 1), v136 + 1, 1, v92);
  }

  *(v92 + 2) = v136 + 1;
  v137 = &v92[56 * v136];
  v138 = v259;
  *(v137 + 4) = 0xD00000000000001ALL;
  *(v137 + 5) = v138;
  *(v137 + 6) = 0xD000000000000020;
  *(v137 + 7) = v132;
  *(v137 + 8) = 0x6170286573726170;
  *(v137 + 9) = 0xEF293A64616F6C79;
  *(v137 + 10) = 57;
  v139 = v237;
  *v89 = v238;
  *(v89 + 8) = v92;
  *(v89 + 16) = v139;
  v140 = v234;
  *(v89 + 24) = v235;
  *(v89 + 32) = v134;
  *(v89 + 40) = v140;
  swift_willThrow();
}

id sub_225BDCA70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_225CF1D00;
  v1 = type metadata accessor for PDF417ParsingConfig();
  v2 = objc_allocWithZone(v1);
  v3 = &v2[OBJC_IVAR____TtC13CoreIDVShared19PDF417ParsingConfig_aamvaHeader];
  *v3 = 0x49534E410D1E0A40;
  *(v3 + 1) = 0xE900000000000020;
  v14.receiver = v2;
  v14.super_class = v1;
  *(v0 + 32) = objc_msgSendSuper2(&v14, sel_init);
  v4 = objc_allocWithZone(v1);
  v5 = &v4[OBJC_IVAR____TtC13CoreIDVShared19PDF417ParsingConfig_aamvaHeader];
  *v5 = 0x49534E410D1C0A40;
  *(v5 + 1) = 0xE900000000000020;
  v13.receiver = v4;
  v13.super_class = v1;
  *(v0 + 40) = objc_msgSendSuper2(&v13, sel_init);
  v6 = objc_allocWithZone(v1);
  v7 = &v6[OBJC_IVAR____TtC13CoreIDVShared19PDF417ParsingConfig_aamvaHeader];
  *v7 = 0x564D41410D1E0A40;
  *(v7 + 1) = 0xE900000000000041;
  v12.receiver = v6;
  v12.super_class = v1;
  *(v0 + 48) = objc_msgSendSuper2(&v12, sel_init);
  v8 = objc_allocWithZone(v1);
  v9 = &v8[OBJC_IVAR____TtC13CoreIDVShared19PDF417ParsingConfig_aamvaHeader];
  *v9 = 0x2049534E410D0A40;
  *(v9 + 1) = 0xE800000000000000;
  v11.receiver = v8;
  v11.super_class = v1;
  result = objc_msgSendSuper2(&v11, sel_init);
  *(v0 + 56) = result;
  qword_27D73FBD0 = v0;
  return result;
}

uint64_t static PDF417Parser.defaultParsingConfigs.getter()
{
  if (qword_27D739FA0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_225BDCC30(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v14 = &v41 - v13;
  v15 = v3[1];
  v60 = *v3;
  v61 = v15;
  v16 = *(v3 + 5);
  v62 = *(v3 + 4);
  v18 = *(v3 + 6);
  v17 = *(v3 + 7);
  v59 = v3[4];
  v19 = *(v3 + 10);
  v20 = *(v3 + 11);
  v21 = *(v3 + 12);
  v22 = *(v3 + 13);
  v23 = *(v3 + 14);
  v24 = v3[1];
  v47 = *v3;
  v48 = v24;
  v49 = *(v3 + 4);
  v50 = v16;
  v51 = v18;
  v52 = v17;
  v45 = v17;
  v53 = v3[4];
  v54 = v19;
  v55 = v20;
  v63 = v21;
  v56 = v21;
  v57 = v22;
  v46 = v22;
  v25 = &v64;
  v44 = v23;
  v58 = v23;
  v26 = __OFADD__(a3, v16);
  v27 = a3 + v16;
  if (v26)
  {
    __break(1u);
    goto LABEL_19;
  }

  v43 = v14;
  v3 = &v47;
  result = sub_225BDD9C4(a1, a2, v11, v27);
  if (!v4)
  {
    v5 = v29;
    v42 = a2;
    v41 = result;
    if (result != v19 || v29 != v20)
    {
      v3 = 0;
      if ((sub_225CCF934() & 1) == 0 && (v41 != v63 || v5 != v46) && (sub_225CCF934() & 1) == 0)
      {

        v19 = 0x8000000225D23A70;
        v63 = 0x8000000225D23A20;
        v46 = 0x8000000225D23A90;
        v30 = MEMORY[0x277D84F90];
        v31 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        swift_allocError();
        v3 = v32;
        v33 = sub_225CCE954();
        v34 = *(v33 - 8);
        v35 = v43;
        (*(v34 + 56))(v43, 1, 1, v33);
        LODWORD(v33) = (*(v34 + 48))(v35, 1, v33);
        sub_2259CB640(v35, &unk_27D73B050);
        if (v33)
        {
          LOWORD(v20) = 365;
        }

        else
        {
          LOWORD(v20) = 23;
        }

        v36 = sub_225B2C374(v30);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v47 = v36;
        sub_225B2C4A0(v31, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v47);

        v5 = v47;
        v12 = sub_225B29AA0(0, 1, 1, v30);
        a2 = *(v12 + 2);
        v25 = *(v12 + 3);
        v18 = a2 + 1;
        if (a2 < v25 >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }
    }

    v47 = v60;
    v48 = v61;
    v49 = v62;
    v50 = v16;
    v51 = v18;
    v52 = v45;
    v53 = v59;
    v54 = v19;
    v55 = v20;
    v56 = v63;
    v57 = v46;
    v25 = v44;
    v58 = v44;
    v12 = (v27 + v18);
    if (!__OFADD__(v27, v18))
    {
      v3 = &v47;
      a2 = a1;
      sub_225BDD400(a1, v42, v27, v12);
      v47 = v60;
      v48 = v61;
      v49 = v62;
      v50 = v16;
      v25 = v45;
      v51 = v18;
      v52 = v45;
      v53 = v59;
      v54 = v19;
      v55 = v20;
      v56 = v63;
      v57 = v46;
      v58 = v44;
      v12 = (v27 + v18 + v45);
      if (!__OFADD__(v27 + v18, v45))
      {
        sub_225BDD400(a1, v42, v27 + v18, v12);
        return v41;
      }

      goto LABEL_20;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v12 = sub_225B29AA0((v25 > 1), v18, 1, v12);
LABEL_17:
    *(v12 + 2) = v18;
    v38 = &v12[56 * a2];
    *(v38 + 4) = 0xD000000000000014;
    *(v38 + 5) = v19;
    v39 = v63;
    *(v38 + 6) = 0xD000000000000020;
    *(v38 + 7) = v39;
    v40 = v46;
    *(v38 + 8) = 0xD000000000000027;
    *(v38 + 9) = v40;
    *(v38 + 10) = 101;
    *v3 = v20;
    *(v3 + 1) = v12;
    *(v3 + 2) = 0xD000000000000014;
    *(v3 + 3) = v19;
    *(v3 + 4) = v5;
    *(v3 + 5) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_225BDD134(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[1];
  v49 = *v4;
  v50 = v6;
  v7 = v4[3];
  v9 = *v4;
  v8 = v4[1];
  v51 = v4[2];
  v52 = v7;
  v10 = v4[6];
  v46 = v4[5];
  v47 = v10;
  v11 = *(v4 + 8);
  v12 = *(v4 + 9);
  v48 = *(v4 + 14);
  v37 = v9;
  v38 = v8;
  v13 = v4[3];
  v39 = v4[2];
  v40 = v13;
  v41 = v11;
  v42 = v12;
  v14 = v4[6];
  v43 = v4[5];
  v44 = v14;
  v45 = *(v4 + 14);
  v53 = v11;
  if (__OFADD__(a3, v11))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = __OFADD__(a3, a4);
  v16 = a3 + a4;
  if (!v15)
  {
    v17 = &v37;
    v18 = sub_225BDD9C4(result, a2, a3 + v11, v16);
    if (!v5)
    {
      *&v37 = v18;
      *(&v37 + 1) = v19;
      sub_2259D8654();
      v20 = sub_225CCF034();

      v36 = *(v20 + 16);
      if (v36)
      {
        v21 = 0;
        v22 = (v20 + 40);
        v17 = MEMORY[0x277D84F98];
        v34 = v20;
        while (v21 < *(v20 + 16))
        {
          v24 = *(v22 - 1);
          v23 = *v22;

          if (sub_225CCE5D4() < v12)
          {
          }

          else
          {
            v37 = v49;
            v38 = v50;
            v39 = v51;
            v40 = v52;
            v41 = v53;
            v42 = v12;
            v43 = v46;
            v44 = v47;
            v45 = v48;
            v25 = sub_225BDD9C4(v24, v23, 0, v12);
            v27 = v26;
            v35 = v25;
            v37 = v49;
            v38 = v50;
            v39 = v51;
            v40 = v52;
            v41 = v53;
            v42 = v12;
            v43 = v46;
            v44 = v47;
            v45 = v48;
            v29 = v12;
            v28 = sub_225CCE5D4();
            v30 = sub_225BDD9C4(v24, v23, v12, v28);
            v32 = v31;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v37 = v17;
            sub_225A04C1C(v30, v32, v35, v27, isUniquelyReferenced_nonNull_native);

            v17 = v37;
            v12 = v29;
            v20 = v34;
          }

          ++v21;
          v22 += 2;
          if (v36 == v21)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_15;
      }

      v17 = MEMORY[0x277D84F98];
LABEL_12:
    }

    return v17;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_225BDD400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v60 - v12;
  v14 = *(v4 + 80);
  v62[4] = *(v4 + 64);
  v62[5] = v14;
  v62[6] = *(v4 + 96);
  v63 = *(v4 + 112);
  v15 = *(v4 + 16);
  v62[0] = *v4;
  v62[1] = v15;
  v16 = *(v4 + 48);
  v62[2] = *(v4 + 32);
  v62[3] = v16;
  v17 = v62;
  result = sub_225BDD9C4(a1, a2, a3, a4);
  if (v5)
  {
    return v17;
  }

  v20 = HIBYTE(v19) & 0xF;
  v21 = result & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v22 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {

    goto LABEL_64;
  }

  if ((v19 & 0x1000000000000000) != 0)
  {
    v64 = 0;
    v17 = sub_2259F3F08(result, v19, 10);
    v58 = v57;

    if (v58)
    {
      goto LABEL_64;
    }

    return v17;
  }

  if ((v19 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v19 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_225CCF354();
      v21 = v59;
    }

    v23 = *result;
    if (v23 == 43)
    {
      if (v21 >= 1)
      {
        if (--v21)
        {
          v17 = 0;
          if (result)
          {
            v30 = (result + 1);
            while (1)
            {
              v31 = *v30 - 48;
              if (v31 > 9)
              {
                goto LABEL_62;
              }

              v32 = 10 * v17;
              if ((v17 * 10) >> 64 != (10 * v17) >> 63)
              {
                goto LABEL_62;
              }

              v17 = v32 + v31;
              if (__OFADD__(v32, v31))
              {
                goto LABEL_62;
              }

              ++v30;
              if (!--v21)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }

      goto LABEL_77;
    }

    if (v23 != 45)
    {
      if (v21)
      {
        v17 = 0;
        if (result)
        {
          while (1)
          {
            v36 = *result - 48;
            if (v36 > 9)
            {
              goto LABEL_62;
            }

            v37 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              goto LABEL_62;
            }

            v17 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              goto LABEL_62;
            }

            ++result;
            if (!--v21)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_62:
      v17 = 0;
      LOBYTE(v21) = 1;
LABEL_63:
      v64 = v21;
      v41 = v21;

      if (v41)
      {
LABEL_64:
        v60 = 0x8000000225D23AF0;
        v61 = 0x8000000225D23A20;
        v42 = MEMORY[0x277D84F90];
        v43 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v17 = swift_allocError();
        v45 = v44;
        v46 = sub_225CCE954();
        v47 = *(v46 - 8);
        (*(v47 + 56))(v13, 1, 1, v46);
        LODWORD(v46) = (*(v47 + 48))(v13, 1, v46);
        sub_2259CB640(v13, &unk_27D73B050);
        if (v46)
        {
          v48 = 367;
        }

        else
        {
          v48 = 23;
        }

        v49 = sub_225B2C374(v42);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v62[0] = v49;
        sub_225B2C4A0(v43, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v62);

        v51 = *&v62[0];
        v52 = sub_225B29AA0(0, 1, 1, v42);
        v54 = *(v52 + 2);
        v53 = *(v52 + 3);
        if (v54 >= v53 >> 1)
        {
          v52 = sub_225B29AA0((v53 > 1), v54 + 1, 1, v52);
        }

        *(v52 + 2) = v54 + 1;
        v55 = &v52[56 * v54];
        *(v55 + 4) = 0xD00000000000002CLL;
        *(v55 + 5) = 0x8000000225D23AC0;
        v56 = v61;
        *(v55 + 6) = 0xD000000000000020;
        *(v55 + 7) = v56;
        *(v55 + 8) = 0xD000000000000020;
        *(v55 + 9) = v60;
        *(v55 + 10) = 132;
        *v45 = v48;
        *(v45 + 8) = v52;
        *(v45 + 16) = 0xD00000000000002CLL;
        *(v45 + 24) = 0x8000000225D23AC0;
        *(v45 + 32) = v51;
        *(v45 + 40) = 0;
        swift_willThrow();
      }

      return v17;
    }

    if (v21 >= 1)
    {
      if (--v21)
      {
        v17 = 0;
        if (result)
        {
          v24 = (result + 1);
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              goto LABEL_62;
            }

            v26 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              goto LABEL_62;
            }

            v17 = v26 - v25;
            if (__OFSUB__(v26, v25))
            {
              goto LABEL_62;
            }

            ++v24;
            if (!--v21)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_61:
        LOBYTE(v21) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  *&v62[0] = result;
  *(&v62[0] + 1) = v19 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v20)
      {
        v17 = 0;
        v38 = v62;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v40 + v39;
          if (__OFADD__(v40, v39))
          {
            break;
          }

          ++v38;
          if (!--v20)
          {
            goto LABEL_61;
          }
        }
      }

      goto LABEL_62;
    }

    if (v20)
    {
      v21 = v20 - 1;
      if (v20 != 1)
      {
        v17 = 0;
        v27 = v62 + 1;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v29 - v28;
          if (__OFSUB__(v29, v28))
          {
            break;
          }

          ++v27;
          if (!--v21)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_76;
  }

  if (v20)
  {
    v21 = v20 - 1;
    if (v20 != 1)
    {
      v17 = 0;
      v33 = v62 + 1;
      while (1)
      {
        v34 = *v33 - 48;
        if (v34 > 9)
        {
          break;
        }

        v35 = 10 * v17;
        if ((v17 * 10) >> 64 != (10 * v17) >> 63)
        {
          break;
        }

        v17 = v35 + v34;
        if (__OFADD__(v35, v34))
        {
          break;
        }

        ++v33;
        if (!--v21)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_78:
  __break(1u);
  return result;
}

unint64_t sub_225BDD9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v36 - v10;
  if (sub_225CCE5D4() < a3 || sub_225CCE5D4() < a4 || a4 < a3)
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_225CCF204();

    v38 = 0xD000000000000025;
    v39 = 0x8000000225D23B20;
    MEMORY[0x22AA6CE70](a1, a2);
    MEMORY[0x22AA6CE70](544497952, 0xE400000000000000);
    v40 = a3;
    sub_225A84D38();
    v12 = sub_225CCF094();
    MEMORY[0x22AA6CE70](v12);

    MEMORY[0x22AA6CE70](8236, 0xE200000000000000);
    v40 = a4;
    v13 = sub_225CCF094();
    MEMORY[0x22AA6CE70](v13);

    v15 = v38;
    v14 = v39;
    v36 = 0x8000000225D23B50;
    v37 = 0x8000000225D23A20;
    v16 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v18 = v17;
    v19 = sub_225CCE954();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v11, 1, 1, v19);
    LODWORD(v19) = (*(v20 + 48))(v11, 1, v19);
    sub_2259CB640(v11, &unk_27D73B050);
    if (v19)
    {
      v21 = 366;
    }

    else
    {
      v21 = 23;
    }

    v22 = MEMORY[0x277D84F90];
    v23 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v23;
    sub_225B2C4A0(v16, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v38);

    v25 = v38;
    v26 = sub_225B29AA0(0, 1, 1, v22);
    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    if (v28 >= v27 >> 1)
    {
      v26 = sub_225B29AA0((v27 > 1), v28 + 1, 1, v26);
    }

    *(v26 + 2) = v28 + 1;
    v29 = &v26[56 * v28];
    *(v29 + 4) = v15;
    *(v29 + 5) = v14;
    v30 = v37;
    *(v29 + 6) = 0xD000000000000020;
    *(v29 + 7) = v30;
    v31 = v36;
    *(v29 + 8) = 0xD000000000000024;
    *(v29 + 9) = v31;
    *(v29 + 10) = 140;
    *v18 = v21;
    *(v18 + 8) = v26;
    *(v18 + 16) = v15;
    *(v18 + 24) = v14;
    *(v18 + 32) = v25;
    *(v18 + 40) = 0;
    return swift_willThrow();
  }

  else
  {
    v33 = sub_225CCE604();
    result = sub_225CCE604();
    if (result >> 14 < v33 >> 14)
    {
      __break(1u);
    }

    else
    {
      v34 = sub_225CCE704();
      v35 = MEMORY[0x22AA6CD90](v34);

      return v35;
    }
  }

  return result;
}

unint64_t sub_225BDDE00()
{
  result = qword_27D73FBE8;
  if (!qword_27D73FBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73FBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FBE8);
  }

  return result;
}

uint64_t sub_225BDDE64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225BDDEAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_225BDDF18()
{
  v1 = *(v0[5] + 16);
  if (v1)
  {
    v2 = sub_225CCE874();
    *(v2 + 16) = v1;
    bzero((v2 + 32), v1);
    v15 = v2;
    v3 = MEMORY[0x277D84F90];
    v4 = 32;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      v6 = v15;
      if ((v4 - 32) >= *(v15 + 2))
      {
        break;
      }

      if ((v15[v4] & 1) == 0)
      {
        v7 = sub_225BDEE8C(v4 - 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_225C0EC00(v6);
        }

        if ((v4 - 32) >= *(v6 + 2))
        {
          goto LABEL_22;
        }

        v6[v4] = 1;
        v15 = v6;
        if (*(v7 + 16) < v0[1])
        {
        }

        else
        {
          v8 = sub_225BDF108(v4 - 32, v7, &v15);
          v10 = v9;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_225B29CD4(0, *(v5 + 2) + 1, 1, v5);
          }

          v12 = *(v5 + 2);
          v11 = *(v5 + 3);
          if (v12 >= v11 >> 1)
          {
            v5 = sub_225B29CD4((v11 > 1), v12 + 1, 1, v5);
          }

          *(v5 + 2) = v12 + 1;
          *&v5[8 * v12 + 32] = v8;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_225B29CD4(0, *(v3 + 2) + 1, 1, v3);
          }

          v14 = *(v3 + 2);
          v13 = *(v3 + 3);
          if (v14 >= v13 >> 1)
          {
            v3 = sub_225B29CD4((v13 > 1), v14 + 1, 1, v3);
          }

          *(v3 + 2) = v14 + 1;
          *&v3[8 * v14 + 32] = v10;
          if (v8 >= v0[3])
          {
            goto LABEL_20;
          }
        }
      }

      ++v4;
      if (!--v1)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_20:
  }
}

uint64_t sub_225BDE17C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  MEMORY[0x22AA6E420](v2);
  return sub_225CCFC24();
}

uint64_t sub_225BDE1D8()
{
  v1 = v0[1];
  MEMORY[0x22AA6E420](*v0);
  return MEMORY[0x22AA6E420](v1);
}

uint64_t sub_225BDE214()
{
  v1 = *v0;
  v2 = v0[1];
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  MEMORY[0x22AA6E420](v2);
  return sub_225CCFC24();
}

uint64_t sub_225BDE26C(void *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FBF8);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v32[-v11];
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v32[-v14];
  v16 = [a1 CGImage];
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = v16;
  CGColorSpaceCreateDeviceGray();
  sub_225CCEE94();
  if (v40 != 1)
  {
    v37 = v41;
    v38 = v42;
    v35 = v39;
    v36 = v40;
    sub_225CCC964();
    v18 = v17;
    sub_225CCC954();
    (*(v4 + 32))(v15, v12, v3);
    Width = CGImageGetWidth(v18);
    v21 = *(v1 + 32);
    if (v21)
    {
      if (Width != 0x8000000000000000 || v21 != -1)
      {
        Height = CGImageGetHeight(v18);
        if (v21 != -1 || Height != 0x8000000000000000)
        {
          sub_225CCC944();
          src.data = sub_225CCC924();
          src.height = v23;
          src.width = v24;
          src.rowBytes = v25;
          dest.data = sub_225CCC924();
          dest.height = v26;
          dest.width = v27;
          dest.rowBytes = v28;
          vImageScale_Planar8(&src, &dest, 0, 0);
          sub_225BDE8D0();
          v30 = v29;

          v31 = *(v4 + 8);
          v31(v8, v3);
          v31(v15, v3);
          return v30;
        }

LABEL_15:
        __break(1u);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

  return MEMORY[0x277D84F90];
}

void sub_225BDE590()
{
  v35 = *(v0 + 40);
  v34 = *(v35 + 16);
  if (!v34)
  {
    return;
  }

  v1 = v0;
  v2 = *v0;
  if ((*v0 & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_40;
  }

  if (v2 <= -9.2234e18)
  {
LABEL_41:
    __break(1u);
  }

  else if (v2 < 9.2234e18)
  {
    v3 = v2;
    if (v2)
    {
      v4 = 0;
      for (i = (v35 + 40); ; i += 3)
      {
        if (v4 >= *(v35 + 16))
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v7 = *(i - 1);
        v6 = *i;
        if (v3 == -1 && v7 == 0x8000000000000000)
        {
          goto LABEL_37;
        }

        if (v3 == -1 && v6 == 0x8000000000000000)
        {
          goto LABEL_38;
        }

        v8 = v7 / v3;
        v9 = v6 / v3;
        if (*(*(v1 + 48) + 16))
        {
          sub_2259F1F14(v8, v6 / v3);
          if (v10)
          {
            v12 = sub_225BDEDB8(v36, v8, v9);
            v13 = *v11;
            if (*v11)
            {
              v14 = v11;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v14 = v13;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v13 = sub_225B29CD4(0, *(v13 + 2) + 1, 1, v13);
                *v14 = v13;
              }

              v17 = *(v13 + 2);
              v16 = *(v13 + 3);
              if (v17 >= v16 >> 1)
              {
                v13 = sub_225B29CD4((v16 > 1), v17 + 1, 1, v13);
                *v14 = v13;
              }

              *(v13 + 2) = v17 + 1;
              *&v13[8 * v17 + 32] = v4;
            }

            (v12)(v36, 0);
            goto LABEL_9;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD10);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_225CD30F0;
        *(v18 + 32) = v4;
        v19 = swift_isUniquelyReferenced_nonNull_native();
        v36[0] = *(v1 + 48);
        v20 = v36[0];
        v21 = sub_2259F1F14(v8, v9);
        v23 = v20[2];
        v24 = (v22 & 1) == 0;
        v25 = __OFADD__(v23, v24);
        v26 = v23 + v24;
        if (v25)
        {
          goto LABEL_36;
        }

        v27 = v22;
        if (v20[3] < v26)
        {
          break;
        }

        if (v19)
        {
          goto LABEL_29;
        }

        v33 = v21;
        sub_225A45A7C();
        v21 = v33;
        v29 = v36[0];
        if ((v27 & 1) == 0)
        {
LABEL_30:
          v29[(v21 >> 6) + 8] |= 1 << v21;
          v30 = (v29[6] + 16 * v21);
          *v30 = v8;
          v30[1] = v9;
          *(v29[7] + 8 * v21) = v18;
          v31 = v29[2];
          v25 = __OFADD__(v31, 1);
          v32 = v31 + 1;
          if (v25)
          {
            goto LABEL_39;
          }

          v29[2] = v32;
          goto LABEL_8;
        }

LABEL_7:
        *(v29[7] + 8 * v21) = v18;

LABEL_8:
        *(v1 + 48) = v29;
LABEL_9:
        if (v34 == ++v4)
        {
          return;
        }
      }

      sub_225A43358(v26, v19);
      v21 = sub_2259F1F14(v8, v9);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_44;
      }

LABEL_29:
      v29 = v36[0];
      if ((v27 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_7;
    }

    goto LABEL_43;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  sub_225CCFAC4();
  __break(1u);
}

void sub_225BDE8D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FBF8);
  v0 = sub_225CCC934();
  sub_225CCC914();
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 activeProcessorCount];

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FC00);
    inited = swift_initStackObject();
    *(inited + 24) = 0;
    v5 = (inited + 24);
    *(inited + 16) = MEMORY[0x277D84F90];
    v6 = (inited + 16);
    if (v1 / v3)
    {
      v7 = sub_225B451E4();
      MEMORY[0x28223BE20](v7, v8);
      sub_225CCED94();

      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v10);

      os_unfair_lock_lock(v5);
      sub_225BDF638(v6, &v11);
      os_unfair_lock_unlock(v5);

      swift_setDeallocating();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_225BDEAD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, os_unfair_lock_s *a6)
{
  v6 = result * a2;
  if ((result * a2) >> 64 != (result * a2) >> 63)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (__OFADD__(v6, a2))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (*(a3 + 16) >= v6 + a2)
  {
    v7 = v6 + a2;
  }

  else
  {
    v7 = *(a3 + 16);
  }

  if (v7 < v6)
  {
    goto LABEL_29;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = a3 + 32;
    v12 = MEMORY[0x277D84F90];
    v13 = result * a2;
    v14 = result * a2;
    while (1)
    {
      if (v7 == v14)
      {
        MEMORY[0x28223BE20](result, a2);
        os_unfair_lock_lock(a6 + 6);
        sub_225BDF67C();
        os_unfair_lock_unlock(a6 + 6);
      }

      if (v13 < v6 || v14 >= v7)
      {
        break;
      }

      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_25;
      }

      v16 = v6 + v10;
      if (__OFADD__(v6, v10))
      {
        goto LABEL_26;
      }

      v17 = *(v11 + v14);
      ++v10;
      ++v14;
      if (v17 >= *(a4 + 16))
      {
        if (!a5)
        {
          goto LABEL_31;
        }

        if (v16 == 0x8000000000000000 && a5 == -1)
        {
          goto LABEL_32;
        }

        v23 = a5;
        result = swift_isUniquelyReferenced_nonNull_native();
        v22 = a6;
        if ((result & 1) == 0)
        {
          result = sub_225B2AB30(0, *(v12 + 16) + 1, 1, v12);
          v12 = result;
        }

        v19 = *(v12 + 16);
        v18 = *(v12 + 24);
        v20 = v19 + 1;
        a5 = v23;
        if (v19 >= v18 >> 1)
        {
          result = sub_225B2AB30((v18 > 1), v19 + 1, 1, v12);
          v20 = v19 + 1;
          a5 = v23;
          v12 = result;
        }

        *(v12 + 16) = v20;
        v21 = v12 + 24 * v19;
        *(v21 + 32) = v16 % a5;
        *(v21 + 40) = v16 / a5;
        *(v21 + 48) = v17;
        v10 = v15;
        v13 = v14;
        a6 = v22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_225BDECE0()
{

  swift_getAtKeyPath();

  return v1;
}

uint64_t sub_225BDED30(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  if ((*v2 & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 <= -9.2234e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 >= 9.2234e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  if (!v3)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (result == 0x8000000000000000 && v4 == -1)
  {
    goto LABEL_14;
  }

  if (a2 != 0x8000000000000000 || v4 != -1)
  {
    result /= v4;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void (*sub_225BDEDB8(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_225BDF2F4(v6, a2, a3);
  return sub_225BDEE40;
}

void sub_225BDEE40(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_225BDEE8C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v3 = v1;
  v4 = result;
  v5 = *(v1 + 40);
  v6 = *(v5 + 16);
  if (v6 > result)
  {
    v36 = v5 + 32;
    v7 = v5 + 32 + 24 * result;
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    result = sub_225BDED30(*v7, v9);
    v28 = result;
    v31 = result - 1;
    v32 = v11;
    if (__OFSUB__(result, 1))
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return v2;
    }

    v29 = v11 - 1;
    if (!__OFSUB__(v11, 1))
    {
      v12 = *(v1 + 48);
      v13 = -1;
      v2 = MEMORY[0x277D84F90];
      v35 = v6;
      v33 = *(v3 + 48);
      while (1)
      {
        v30 = v13;
        v14 = -1;
        v15 = v29;
        while (1)
        {
          if (*(v12 + 16) && (sub_2259F1F14(v31, v15), (v16 & 1) != 0))
          {
          }

          else
          {
            v17 = MEMORY[0x277D84F90];
          }

          v34 = v14;
          v18 = *(v17 + 16);
          if (v18)
          {
            v19 = (v17 + 32);
            do
            {
              v21 = *v19++;
              v20 = v21;
              if (v21 != v4)
              {
                if (v20 >= v6)
                {
                  goto LABEL_32;
                }

                v22 = v36 + 24 * v20;
                if (__OFSUB__(v8, *v22))
                {
                  goto LABEL_33;
                }

                v23 = *(v22 + 8);
                v24 = __OFSUB__(v9, v23);
                v25 = v9 - v23;
                if (v24)
                {
                  goto LABEL_34;
                }

                if ((sqrtf(((v8 - *v22) * (v8 - *v22)) + (v25 * v25)) * ((vabds_f32(v10, *(v22 + 16)) * *(v3 + 20)) + 1.0)) <= *v3)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v2 = sub_225B29CD4(0, *(v2 + 2) + 1, 1, v2);
                  }

                  v27 = *(v2 + 2);
                  v26 = *(v2 + 3);
                  if (v27 >= v26 >> 1)
                  {
                    v2 = sub_225B29CD4((v26 > 1), v27 + 1, 1, v2);
                  }

                  *(v2 + 2) = v27 + 1;
                  *&v2[8 * v27 + 32] = v20;
                  v6 = v35;
                }
              }

              --v18;
            }

            while (v18);
          }

          v12 = v33;
          if (v34 == 1)
          {
            break;
          }

          v14 = v34 + 1;
          v15 = v32 + v34 + 1;
          if (__OFADD__(v32, v34 + 1))
          {
            goto LABEL_36;
          }
        }

        if (v30 == 1)
        {
          return v2;
        }

        v13 = v30 + 1;
        v31 = v28 + v30 + 1;
        if (__OFADD__(v28, v30 + 1))
        {
          goto LABEL_31;
        }
      }
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_225BDF108(unint64_t a1, uint64_t a2, char **a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v5 = v4;
  v3 = *(v4 + 40);
  v9 = *(v3 + 2);
  if (v9 <= a1)
  {
    goto LABEL_37;
  }

  v6 = a2;
  v8 = v3[24 * a1 + 48];
  if (*(a2 + 16))
  {
    v21 = a3;
    v7 = *a3;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_5:
      v10 = 0;
      v11 = v3 + 48;
      v3 = v7 + 32;
      v12 = *(v6 + 16);
      v13 = 1;
      v14 = 1;
      while (1)
      {
        if (v10 >= v12)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v15 = *(v6 + 8 * v10 + 32);
        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        if (v15 >= *(v7 + 2))
        {
          goto LABEL_32;
        }

        if ((v3[v15] & 1) == 0)
        {
          v3[v15] = 1;
          v13 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_33;
          }

          if (v15 >= v9)
          {
            goto LABEL_34;
          }

          v16 = v11[24 * v15];
          v17 = __OFADD__(v8, v16);
          v8 += v16;
          if (v17)
          {
            goto LABEL_35;
          }

          if (v13 >= *(v5 + 24))
          {

            *v21 = v7;
            if (v13)
            {
              if (v8 != 0x8000000000000000 || v13 != -1)
              {
                return v13;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            return result;
          }

          v18 = sub_225BDEE8C(v15);
          if (*(v18 + 16) < *(v5 + 8))
          {
          }

          else
          {
            sub_225A84A64(v18);
            v6 = a2;
          }

          v14 = v13;
        }

        ++v10;
        v12 = *(v6 + 16);
        if (v10 >= v12)
        {

          *v21 = v7;
          if (!v13)
          {
            goto LABEL_38;
          }

          if (v8 == 0x8000000000000000 && v13 == -1)
          {
            __break(1u);
            return 1;
          }

          return v13;
        }
      }
    }

LABEL_39:
    v7 = sub_225C0EC00(v7);
    goto LABEL_5;
  }

  return 1;
}