__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_252F61624(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_252F61680(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_252F61700(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B860, &qword_252F73BF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B868, &qword_252F73BF8);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v21 - v13;
  if (a2)
  {
    v15 = a2;
    sub_252F734D4();

    LOBYTE(v15) = sub_252F73574();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B878, &qword_252F73C00);
    v17 = v16;
    if (v15 & 1) == 0 || (a4)
    {
      (*(*(v16 - 8) + 16))(v9, a1, v16);
      swift_storeEnumTagMultiPayload();
      v20 = sub_252F61AA4();
      v21 = v17;
      v22 = v20;
      swift_getOpaqueTypeConformance2();
      return sub_252F73244();
    }

    else
    {
      v18 = sub_252F61AA4();
      sub_252F732D4();
      (*(v11 + 16))(v9, v14, v10);
      swift_storeEnumTagMultiPayload();
      v21 = v17;
      v22 = v18;
      swift_getOpaqueTypeConformance2();
      sub_252F73244();
      return (*(v11 + 8))(v14, v10);
    }
  }

  else
  {
    sub_252F734E4();
    sub_252F61A4C();
    result = sub_252F731E4();
    __break(1u);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_252F61A4C()
{
  result = qword_27F57B870;
  if (!qword_27F57B870)
  {
    sub_252F734E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57B870);
  }

  return result;
}

unint64_t sub_252F61AA4()
{
  result = qword_27F57B880;
  if (!qword_27F57B880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57B878, &qword_252F73C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57B880);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_252F61B54()
{
  result = qword_27F57B888;
  if (!qword_27F57B888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57B890, &qword_252F73C08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57B878, &qword_252F73C00);
    sub_252F61AA4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57B888);
  }

  return result;
}

uint64_t CarPlayIntercomControlModel.playStopText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F73114();
  return v1;
}

uint64_t sub_252F61C5C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  return sub_252F73124();
}

uint64_t (*CarPlayIntercomControlModel.playStopText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  *(v3 + 32) = sub_252F73104();
  return sub_252F61D7C;
}

uint64_t CarPlayIntercomControlModel.replyText.getter()
{
  v0 = *(type metadata accessor for CarPlayIntercomControlModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F73114();
  return v2;
}

uint64_t type metadata accessor for CarPlayIntercomControlModel()
{
  result = qword_27F57B8F0;
  if (!qword_27F57B8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252F61E20@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for CarPlayIntercomControlModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  result = sub_252F73114();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_252F61E88(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for CarPlayIntercomControlModel() + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  return sub_252F73124();
}

uint64_t CarPlayIntercomControlModel.replyText.setter()
{
  v0 = *(type metadata accessor for CarPlayIntercomControlModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  return sub_252F73124();
}

uint64_t (*CarPlayIntercomControlModel.replyText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CarPlayIntercomControlModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  *(v3 + 32) = sub_252F73104();
  return sub_252F63694;
}

uint64_t CarPlayIntercomControlModel.isPlaying.getter()
{
  v0 = *(type metadata accessor for CarPlayIntercomControlModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  sub_252F73114();
  return v2;
}

uint64_t sub_252F62040@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for CarPlayIntercomControlModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  result = sub_252F73114();
  *a1 = v4;
  return result;
}

uint64_t sub_252F620A8(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for CarPlayIntercomControlModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  return sub_252F73124();
}

uint64_t CarPlayIntercomControlModel.isPlaying.setter()
{
  v0 = *(type metadata accessor for CarPlayIntercomControlModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  return sub_252F73124();
}

uint64_t (*CarPlayIntercomControlModel.isPlaying.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CarPlayIntercomControlModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  *(v3 + 32) = sub_252F73104();
  return sub_252F63694;
}

void sub_252F621FC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t CarPlayIntercomControlModel.init(playStopText:replyText:isPlaying:)()
{
  sub_252F730F4();
  v0 = type metadata accessor for CarPlayIntercomControlModel();
  v1 = *(v0 + 20);
  sub_252F730F4();
  v2 = *(v0 + 24);
  return sub_252F730F4();
}

uint64_t sub_252F62314()
{
  v1 = *v0;
  sub_252F736C4();
  MEMORY[0x2530B0710](v1);
  return sub_252F736E4();
}

uint64_t sub_252F62388()
{
  v1 = *v0;
  sub_252F736C4();
  MEMORY[0x2530B0710](v1);
  return sub_252F736E4();
}

uint64_t sub_252F623CC()
{
  v1 = 0x786554796C706572;
  if (*v0 != 1)
  {
    v1 = 0x6E6979616C507369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x706F745379616C70;
  }
}

uint64_t sub_252F6243C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252F6356C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252F6247C(uint64_t a1)
{
  v2 = sub_252F62768();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F624B8(uint64_t a1)
{
  v2 = sub_252F62768();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CarPlayIntercomControlModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A8, &qword_252F73C30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F62768();
  sub_252F73704();
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F62D4C(&qword_27F57B8B8);
  sub_252F736A4();
  if (!v1)
  {
    v9 = type metadata accessor for CarPlayIntercomControlModel();
    v10 = *(v9 + 20);
    v15 = 1;
    sub_252F736A4();
    v11 = *(v9 + 24);
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
    sub_252F627BC(&qword_27F57B8C0);
    sub_252F736A4();
  }

  return (*(v4 + 8))(v7, v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_252F62768()
{
  result = qword_27F57B8B0;
  if (!qword_27F57B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57B8B0);
  }

  return result;
}

uint64_t sub_252F627BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57B8A0, &qword_252F73C28);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CarPlayIntercomControlModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  v31 = *(v34 - 8);
  v4 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v33 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v36 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8C8, &qword_252F73C38);
  v37 = *(v12 - 8);
  v38 = v12;
  v13 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = type metadata accessor for CarPlayIntercomControlModel();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v20 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_252F62768();
  sub_252F736F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v29 = v16;
  v30 = v19;
  v42 = 0;
  sub_252F62D4C(&qword_27F57B8D0);
  v22 = v36;
  sub_252F73664();
  v36 = *(v35 + 32);
  (v36)(v30, v22, v6);
  v41 = 1;
  v23 = v10;
  sub_252F73664();
  v24 = v30;
  (v36)(&v30[*(v29 + 20)], v23, v6);
  v40 = 2;
  sub_252F627BC(&qword_27F57B8D8);
  v26 = v33;
  v25 = v34;
  sub_252F73664();
  (*(v37 + 8))(v15, v38);
  (*(v31 + 32))(v24 + *(v29 + 24), v26, v25);
  sub_252F62DBC(v24, v32);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_252F62E20(v24);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_252F62D4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57B898, &qword_252F73C20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252F62DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarPlayIntercomControlModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F62E20(uint64_t a1)
{
  v2 = type metadata accessor for CarPlayIntercomControlModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252F62EE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CarPlayIntercomControlModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252F62F58@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  result = sub_252F73114();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_252F62FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_252F630EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

void sub_252F63200()
{
  sub_252F632A4(319, &qword_27F57B900);
  if (v0 <= 0x3F)
  {
    sub_252F632A4(319, &qword_27F57B908);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252F632A4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_252F73134();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CarPlayIntercomControlModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

uint64_t storeEnumTagSinglePayload for CarPlayIntercomControlModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
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
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252F63468()
{
  result = qword_27F57B910;
  if (!qword_27F57B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57B910);
  }

  return result;
}

unint64_t sub_252F634C0()
{
  result = qword_27F57B918;
  if (!qword_27F57B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57B918);
  }

  return result;
}

unint64_t sub_252F63518()
{
  result = qword_27F57B920;
  if (!qword_27F57B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57B920);
  }

  return result;
}

uint64_t sub_252F6356C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706F745379616C70 && a2 == 0xEC00000074786554;
  if (v4 || (sub_252F736B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x786554796C706572 && a2 == 0xE900000000000074 || (sub_252F736B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6979616C507369 && a2 == 0xE900000000000067)
  {

    return 2;
  }

  else
  {
    v6 = sub_252F736B4();

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

uint64_t CarPlayIntercomControlView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CarPlayIntercomControlView();
  v5 = (a2 + *(v4 + 20));
  sub_252F734E4();
  sub_252F65B00(&qword_27F57B870, MEMORY[0x277D63F60]);
  *v5 = sub_252F731F4();
  v5[1] = v6;
  v7 = a2 + *(v4 + 24);
  sub_252F733D4();
  return sub_252F63EFC(a1, a2, type metadata accessor for CarPlayIntercomControlModel);
}

uint64_t type metadata accessor for CarPlayIntercomControlView()
{
  result = qword_27F57B938;
  if (!qword_27F57B938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CarPlayIntercomControlView.body.getter()
{
  v1 = type metadata accessor for CarPlayIntercomControlView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_252F63E94(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_252F63EFC(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for CarPlayIntercomControlView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B928, &qword_252F73E20);
  sub_252F65A4C(&qword_27F57B930, &qword_27F57B928, &qword_252F73E20);
  return sub_252F73404();
}

uint64_t sub_252F6390C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a1;
  v50 = a2;
  v2 = sub_252F73484();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B960, &qword_252F73EA8);
  v49 = *(v43 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v43);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B968, &unk_252F73EB0);
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = *(v47 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v46 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v41 - v14;
  v15 = sub_252F73424();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B970, &qword_252F74E80);
  v42 = *(v44 - 8);
  v20 = v42;
  v21 = *(v42 + 64);
  v22 = MEMORY[0x28223BE20](v44);
  v51 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v41 - v24;
  sub_252F73434();
  sub_252F65B00(&qword_27F57B978, MEMORY[0x277D63C98]);
  v41 = v25;
  sub_252F73314();
  (*(v16 + 8))(v19, v15);
  v53 = v45;
  sub_252F73474();
  v26 = sub_252F65B00(&qword_27F57B980, MEMORY[0x277D63D30]);
  sub_252F73314();
  (*(v3 + 8))(v6, v2);
  v54 = v2;
  v55 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v52;
  v28 = v43;
  sub_252F732C4();
  (*(v49 + 8))(v9, v28);
  v29 = *(v20 + 16);
  v30 = v51;
  v31 = v44;
  v29(v51, v25, v44);
  v32 = v46;
  v33 = v47;
  v34 = *(v47 + 16);
  v35 = v48;
  v34(v46, v27, v48);
  v36 = v50;
  v29(v50, v30, v31);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B988, &qword_252F73EC0);
  v34(&v36[*(v37 + 48)], v32, v35);
  v38 = *(v33 + 8);
  v38(v52, v35);
  v39 = *(v42 + 8);
  v39(v41, v31);
  v38(v32, v35);
  return (v39)(v51, v31);
}

uint64_t sub_252F63E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarPlayIntercomControlView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F63EFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252F63F84(uint64_t a1)
{
  v2 = type metadata accessor for CarPlayIntercomControlView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B990, &qword_252F73EC8);
  v27 = *(v25 - 8);
  v5 = *(v27 + 64);
  v6 = MEMORY[0x28223BE20](v25);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  sub_252F63E94(a1, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v24 = type metadata accessor for CarPlayIntercomControlView;
  sub_252F63EFC(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for CarPlayIntercomControlView);
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B998, &qword_252F73ED0);
  sub_252F65A4C(&qword_27F57B9A0, &qword_27F57B998, &qword_252F73ED0);
  sub_252F73364();
  sub_252F63E94(a1, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  sub_252F63EFC(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10, v24);
  v28 = a1;
  v13 = v26;
  sub_252F73364();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9A8, &qword_252F73ED8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_252F73E00;
  v15 = v25;
  *(v14 + 56) = v25;
  v16 = sub_252F65A4C(&qword_27F57B9B0, &qword_27F57B990, &qword_252F73EC8);
  *(v14 + 64) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v14 + 32));
  v18 = v27;
  v19 = *(v27 + 16);
  v19(boxed_opaque_existential_1, v9, v15);
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  v20 = __swift_allocate_boxed_opaque_existential_1((v14 + 72));
  v19(v20, v13, v15);
  v21 = MEMORY[0x2530B0430](v14);

  v22 = *(v18 + 8);
  v22(v13, v15);
  v22(v9, v15);
  return v21;
}

uint64_t sub_252F64344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9D0, &unk_252F74210);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9D8, &unk_252F73EF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9E0, &unk_252F74220);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v32[-v12];
  v14 = sub_252F73054();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v32[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9E8, &qword_252F73F00);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_252F73E10;
  v20 = *(type metadata accessor for CarPlayIntercomControlModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  sub_252F73114();
  sub_252F65CB8(MEMORY[0x277D84F90]);
  v21 = sub_252F730C4();
  v22 = MEMORY[0x277D63778];
  *(v19 + 56) = v21;
  *(v19 + 64) = v22;
  __swift_allocate_boxed_opaque_existential_1((v19 + 32));
  sub_252F730B4();

  sub_252F73064();
  if (qword_27F57B850 != -1)
  {
    swift_once();
  }

  v23 = sub_252F73174();
  __swift_project_value_buffer(v23, qword_27F57BE00);
  v24 = sub_252F73154();
  v25 = sub_252F73564();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_252F60000, v24, v25, "#CarPlayIntercomControlView start/stop button tapped, performing direct action.", v26, 2u);
    MEMORY[0x2530B0AB0](v26, -1, -1);
  }

  v27 = a1 + *(type metadata accessor for CarPlayIntercomControlView() + 24);
  sub_252F733C4();
  v28 = sub_252F734C4();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v13, 1, v28) == 1)
  {
    (*(v15 + 8))(v18, v14);
    return sub_252F65E0C(v13, &qword_27F57B9E0, &unk_252F74220);
  }

  else
  {
    (*(v15 + 16))(v9, v18, v14);
    (*(v15 + 56))(v9, 0, 1, v14);
    v31 = sub_252F73414();
    (*(*(v31 - 8) + 56))(v5, 1, 1, v31);
    sub_252F734B4();
    sub_252F65E0C(v5, &qword_27F57B9D0, &unk_252F74210);
    sub_252F65E0C(v9, &qword_27F57B9D8, &unk_252F73EF0);
    (*(v15 + 8))(v18, v14);
    return (*(v29 + 8))(v13, v28);
  }
}

uint64_t sub_252F6481C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9B8, &unk_252F73EE0);
  sub_252F733A4();
  swift_getOpaqueTypeConformance2();
  sub_252F65B00(&qword_27F57B9C0, MEMORY[0x277D63B20]);
  return sub_252F73354();
}

uint64_t sub_252F6492C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F73114();
  sub_252F65B48();
  v0 = sub_252F73294();
  v2 = v1;
  v4 = v3 & 1;
  sub_252F73314();
  sub_252F65B9C(v0, v2, v4);
}

uint64_t sub_252F649F8()
{
  v0 = sub_252F730E4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = *(type metadata accessor for CarPlayIntercomControlModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  sub_252F73114();
  sub_252F730D4();

  return sub_252F733B4();
}

uint64_t sub_252F64AF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9D0, &unk_252F74210);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9D8, &unk_252F73EF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9E0, &unk_252F74220);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  v14 = sub_252F73054();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9E8, &qword_252F73F00);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_252F73E10;
  sub_252F65CB8(MEMORY[0x277D84F90]);
  v20 = sub_252F730C4();
  v21 = MEMORY[0x277D63778];
  *(v19 + 56) = v20;
  *(v19 + 64) = v21;
  __swift_allocate_boxed_opaque_existential_1((v19 + 32));
  sub_252F730B4();

  sub_252F73064();
  if (qword_27F57B850 != -1)
  {
    swift_once();
  }

  v22 = sub_252F73174();
  __swift_project_value_buffer(v22, qword_27F57BE00);
  v23 = sub_252F73154();
  v24 = sub_252F73564();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_252F60000, v23, v24, "#CarPlayIntercomControlView reply button tapped, performing direct action.", v25, 2u);
    MEMORY[0x2530B0AB0](v25, -1, -1);
  }

  v26 = a1 + *(type metadata accessor for CarPlayIntercomControlView() + 24);
  sub_252F733C4();
  v27 = sub_252F734C4();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v13, 1, v27) == 1)
  {
    (*(v15 + 8))(v18, v14);
    return sub_252F65E0C(v13, &qword_27F57B9E0, &unk_252F74220);
  }

  else
  {
    (*(v15 + 16))(v9, v18, v14);
    (*(v15 + 56))(v9, 0, 1, v14);
    v30 = sub_252F73414();
    (*(*(v30 - 8) + 56))(v5, 1, 1, v30);
    sub_252F734B4();
    sub_252F65E0C(v5, &qword_27F57B9D0, &unk_252F74210);
    sub_252F65E0C(v9, &qword_27F57B9D8, &unk_252F73EF0);
    (*(v15 + 8))(v18, v14);
    return (*(v28 + 8))(v13, v27);
  }
}

uint64_t sub_252F64F80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9B8, &unk_252F73EE0);
  sub_252F733A4();
  swift_getOpaqueTypeConformance2();
  sub_252F65B00(&qword_27F57B9C0, MEMORY[0x277D63B20]);
  return sub_252F73354();
}

uint64_t sub_252F6508C()
{
  v0 = *(type metadata accessor for CarPlayIntercomControlModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F73114();
  sub_252F65B48();
  v1 = sub_252F73294();
  v3 = v2;
  v5 = v4 & 1;
  sub_252F73314();
  sub_252F65B9C(v1, v3, v5);
}

uint64_t sub_252F65168()
{
  v0 = sub_252F730E4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_252F730D4();
  return sub_252F733B4();
}

uint64_t sub_252F65224(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_252F63E94(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_252F63EFC(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for CarPlayIntercomControlView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B928, &qword_252F73E20);
  sub_252F65A4C(&qword_27F57B930, &qword_27F57B928, &qword_252F73E20);
  return sub_252F73404();
}

uint64_t sub_252F65394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CarPlayIntercomControlModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_252F733E4();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_252F654D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CarPlayIntercomControlModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = sub_252F733E4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_252F655FC()
{
  type metadata accessor for CarPlayIntercomControlModel();
  if (v0 <= 0x3F)
  {
    sub_252F65698();
    if (v1 <= 0x3F)
    {
      sub_252F733E4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252F65698()
{
  if (!qword_27F57B948)
  {
    sub_252F734E4();
    sub_252F65B00(&qword_27F57B870, MEMORY[0x277D63F60]);
    v0 = sub_252F73204();
    if (!v1)
    {
      atomic_store(v0, &qword_27F57B948);
    }
  }
}

uint64_t sub_252F65770@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for CarPlayIntercomControlView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_252F6390C(v4, a1);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for CarPlayIntercomControlView() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v6 = type metadata accessor for CarPlayIntercomControlModel();
  v5(v3 + *(v6 + 20), v4);
  v7 = *(v6 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  (*(*(v8 - 8) + 8))(v3 + v7, v8);

  v9 = v1[8];
  v10 = sub_252F733E4();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_252F659D0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CarPlayIntercomControlView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_252F65A4C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_252F65B00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252F65B48()
{
  result = qword_27F57B9C8;
  if (!qword_27F57B9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57B9C8);
  }

  return result;
}

uint64_t sub_252F65B9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_252F65BAC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_252F73594();

  return sub_252F65BF0(a1, v5);
}

unint64_t sub_252F65BF0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_252F65EEC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2530B05E0](v9, a1);
      sub_252F65F48(v9);
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

unint64_t sub_252F65CB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9F0, &qword_252F73F08);
    v3 = sub_252F73624();
    v4 = a1 + 32;

    while (1)
    {
      sub_252F65E6C(v4, v13);
      result = sub_252F65BAC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_252F65EDC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_252F65E0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_252F65E6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F57B9F8, &unk_252F73F10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_252F65EDC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_252F65FC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_252F66358();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_252F6604C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_252F66188(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_252F66358()
{
  result = qword_27F57BA80;
  if (!qword_27F57BA80)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F57BA80);
  }

  return result;
}

uint64_t sub_252F663A8(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_252F663F4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v44 = *(a1 - 1);
  v45 = *(v44 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v43 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v4 + 16);
  *&v48 = *(v4 + 32);
  v7 = *(*(*(v48 + 8) + 8) + 8);
  v8 = sub_252F73614();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v11 = sub_252F73544();
  v42 = v11;
  v12 = a1[3];
  WitnessTable = swift_getWitnessTable();
  v54 = v11;
  v55 = v10;
  v56 = v12;
  v57 = WitnessTable;
  v13 = v12;
  v38[1] = v12;
  v58 = MEMORY[0x277D83B98];
  v14 = sub_252F73384();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v39 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v40 = v38 - v19;
  MEMORY[0x2530B0570](v6, v7);
  swift_getWitnessTable();
  v20 = sub_252F73554();
  *&v21 = v48;
  v22 = a1[5];
  v23 = a1[6];
  *(&v21 + 1) = v22;
  *&v24 = v6;
  *(&v24 + 1) = v13;
  v47 = v21;
  v48 = v24;
  v54 = v20;
  v49 = v24;
  v50 = v21;
  v25 = a1[7];
  v51 = v23;
  v52 = v25;
  v38[0] = swift_getKeyPath();
  v26 = v43;
  v27 = v44;
  (*(v44 + 16))(v43, v2, a1);
  v28 = (*(v27 + 80) + 64) & ~*(v27 + 80);
  v29 = swift_allocObject();
  v30 = v47;
  *(v29 + 16) = v48;
  *(v29 + 32) = v30;
  *(v29 + 48) = v23;
  *(v29 + 56) = v25;
  (*(v27 + 32))(v29 + v28, v26, a1);
  v31 = swift_allocObject();
  v32 = v47;
  *(v31 + 16) = v48;
  *(v31 + 32) = v32;
  *(v31 + 48) = v23;
  *(v31 + 56) = v25;
  *(v31 + 64) = sub_252F66BA4;
  *(v31 + 72) = v29;
  v33 = v39;
  sub_252F73374();
  v53 = v22;
  swift_getWitnessTable();
  v34 = v15[2];
  v35 = v40;
  v34(v40, v33, v14);
  v36 = v15[1];
  v36(v33, v14);
  v34(v46, v35, v14);
  return (v36)(v35, v14);
}

uint64_t sub_252F66888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v10 = *(a4 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](a1);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v28 - v15;
  v28[0] = v17;
  v28[1] = v18;
  v28[2] = v19;
  v28[3] = v20;
  v28[4] = v21;
  v28[5] = v22;
  v23 = a3 + *(type metadata accessor for ForEachWithIndex(0, v28) + 68);
  v24 = *(v23 + 8);
  (*v23)(a1, a2);
  v25 = v10[2];
  v25(v16, v14, a4);
  v26 = v10[1];
  v26(v14, a4);
  v25(a5, v16, a4);
  return (v26)(v16, a4);
}

uint64_t sub_252F66A04(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v9 = *(*(*(a6 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v8, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_252F66AAC()
{
  v1 = *(v0 + 2);
  v9[0] = *(v0 + 1);
  v8 = *&v9[0];
  v2 = *(v0 + 3);
  v9[1] = v1;
  v9[2] = v2;
  v3 = (type metadata accessor for ForEachWithIndex(0, v9) - 8);
  v4 = (*(*v3 + 80) + 64) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  (*(*(v8 - 8) + 8))(&v0[v4]);
  v6 = *&v0[v4 + 8 + v3[19]];

  return swift_deallocObject();
}

uint64_t sub_252F66BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v11 = v3[7];
  v14[0] = v3[2];
  v14[1] = v7;
  v14[2] = v8;
  v14[3] = v9;
  v14[4] = v10;
  v14[5] = v11;
  v12 = *(type metadata accessor for ForEachWithIndex(0, v14) - 8);
  return sub_252F66888(a1, a2, v3 + ((*(v12 + 80) + 64) & ~*(v12 + 80)), v7, a3);
}

uint64_t sub_252F66C74()
{
  v1 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_252F66CAC(char *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = *(v1 + 56);
  return sub_252F66A04(a1, *(v1 + 64), *(v1 + 72), *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

uint64_t sub_252F66CE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  v4 = *(*(*(a1[2] + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_252F73544();
  swift_getWitnessTable();
  sub_252F73384();
  return swift_getWitnessTable();
}

uint64_t HomeAppLaunchModel.bundleId.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F73114();
  return v1;
}

uint64_t (*HomeAppLaunchModel.bundleId.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  *(v3 + 32) = sub_252F73104();
  return sub_252F63694;
}

uint64_t HomeAppLaunchModel.buttonLabel.getter()
{
  v0 = *(type metadata accessor for HomeAppLaunchModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F73114();
  return v2;
}

uint64_t type metadata accessor for HomeAppLaunchModel()
{
  result = qword_27F57BAB0;
  if (!qword_27F57BAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252F66F74@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for HomeAppLaunchModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  result = sub_252F73114();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_252F66FDC(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for HomeAppLaunchModel() + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  return sub_252F73124();
}

uint64_t HomeAppLaunchModel.buttonLabel.setter()
{
  v0 = *(type metadata accessor for HomeAppLaunchModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  return sub_252F73124();
}

uint64_t (*HomeAppLaunchModel.buttonLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for HomeAppLaunchModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  *(v3 + 32) = sub_252F73104();
  return sub_252F61D7C;
}

uint64_t sub_252F67174()
{
  if (*v0)
  {
    result = 0x614C6E6F74747562;
  }

  else
  {
    result = 0x6449656C646E7562;
  }

  *v0;
  return result;
}

uint64_t sub_252F671B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v6 || (sub_252F736B4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x614C6E6F74747562 && a2 == 0xEB000000006C6562)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252F736B4();

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

uint64_t sub_252F672A4(uint64_t a1)
{
  v2 = sub_252F674D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F672E0(uint64_t a1)
{
  v2 = sub_252F674D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeAppLaunchModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BA88, &qword_252F73FB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F674D8();
  sub_252F73704();
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F62D4C(&qword_27F57B8B8);
  sub_252F736A4();
  if (!v1)
  {
    v9 = *(type metadata accessor for HomeAppLaunchModel() + 20);
    v11[14] = 1;
    sub_252F736A4();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_252F674D8()
{
  result = qword_27F57BA90;
  if (!qword_27F57BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BA90);
  }

  return result;
}

uint64_t HomeAppLaunchModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v31 = *(v34 - 8);
  v4 = *(v31 + 64);
  v5 = MEMORY[0x28223BE20](v34);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v32 = &v25 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BA98, &qword_252F73FC0);
  v30 = *(v33 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v33);
  v11 = &v25 - v10;
  v12 = type metadata accessor for HomeAppLaunchModel();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F674D8();
  sub_252F736F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v12;
  v27 = v7;
  v28 = v15;
  v18 = v30;
  v17 = v31;
  v36 = 0;
  v19 = sub_252F62D4C(&qword_27F57B8D0);
  v21 = v32;
  v20 = v33;
  sub_252F73664();
  v25 = v19;
  v32 = *(v17 + 32);
  (v32)(v28, v21, v34);
  v35 = 1;
  v22 = v27;
  sub_252F73664();
  (*(v18 + 8))(v11, v20);
  v23 = v28;
  (v32)(&v28[*(v26 + 20)], v22, v34);
  sub_252F678A8(v23, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_252F6790C(v23);
}

uint64_t sub_252F678A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAppLaunchModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F6790C(uint64_t a1)
{
  v2 = type metadata accessor for HomeAppLaunchModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252F679D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomeAppLaunchModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252F67A44@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  result = sub_252F73114();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_252F67AB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_252F67B40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_252F67BBC()
{
  sub_252F67C28();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_252F67C28()
{
  if (!qword_27F57B900)
  {
    v0 = sub_252F73134();
    if (!v1)
    {
      atomic_store(v0, &qword_27F57B900);
    }
  }
}

uint64_t getEnumTagSinglePayload for HomeAppLaunchModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeAppLaunchModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252F67DD8()
{
  result = qword_27F57BAC0;
  if (!qword_27F57BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BAC0);
  }

  return result;
}

unint64_t sub_252F67E30()
{
  result = qword_27F57BAC8;
  if (!qword_27F57BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BAC8);
  }

  return result;
}

unint64_t sub_252F67E88()
{
  result = qword_27F57BAD0;
  if (!qword_27F57BAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BAD0);
  }

  return result;
}

uint64_t HomeAppLaunchView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_252F734E4();
  sub_252F61A4C();
  *a2 = sub_252F731F4();
  a2[1] = v4;
  v5 = type metadata accessor for HomeAppLaunchView();
  v6 = a2 + *(v5 + 20);
  sub_252F733D4();
  return sub_252F682C4(a1, a2 + *(v5 + 24), type metadata accessor for HomeAppLaunchModel);
}

uint64_t type metadata accessor for HomeAppLaunchView()
{
  result = qword_27F57BAE8;
  if (!qword_27F57BAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomeAppLaunchView.body.getter()
{
  v1 = type metadata accessor for HomeAppLaunchView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_252F6825C(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_252F682C4(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for HomeAppLaunchView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BAD8, &qword_252F74188);
  sub_252F65A4C(&qword_27F57BAE0, &qword_27F57BAD8, &qword_252F74188);
  return sub_252F73404();
}

uint64_t sub_252F68114(uint64_t a1)
{
  v2 = type metadata accessor for HomeAppLaunchView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_252F6825C(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_252F682C4(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for HomeAppLaunchView);
  v9 = a1;
  return sub_252F73364();
}

uint64_t sub_252F6825C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAppLaunchView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F682C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252F6834C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9D0, &unk_252F74210);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v58 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9D8, &unk_252F73EF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = &v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9E0, &unk_252F74220);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v55 - v10;
  v12 = sub_252F73054();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  MEMORY[0x28223BE20](v12);
  v60 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_252F73044();
  v59 = *(v61 - 8);
  v16 = *(v59 + 64);
  MEMORY[0x28223BE20](v61);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for HomeAppLaunchView();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F57B858 != -1)
  {
    swift_once();
  }

  v23 = sub_252F73174();
  __swift_project_value_buffer(v23, qword_27F57BE18);
  v24 = a1;
  sub_252F6825C(a1, v22);
  v25 = sub_252F73154();
  v26 = sub_252F73564();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v55 = v11;
    v56 = v13;
    v28 = v12;
    v29 = v27;
    v30 = v18;
    v31 = swift_slowAlloc();
    v62[0] = v31;
    *v29 = 136315138;
    v32 = *(v19 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
    sub_252F73114();
    sub_252F691D8(v22);
    v33 = sub_252F711EC(v62[1], v62[2], v62);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_252F60000, v25, v26, "#HomeAppLaunchView Launching App: %s.", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v34 = v31;
    v18 = v30;
    MEMORY[0x2530B0AB0](v34, -1, -1);
    v35 = v29;
    v12 = v28;
    v11 = v55;
    v13 = v56;
    MEMORY[0x2530B0AB0](v35, -1, -1);
  }

  else
  {

    sub_252F691D8(v22);
  }

  v36 = *(v19 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F73114();
  sub_252F73034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9E8, &qword_252F73F00);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_252F73E10;
  v38 = sub_252F730C4();
  v39 = MEMORY[0x277D63778];
  *(v37 + 56) = v38;
  *(v37 + 64) = v39;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v37 + 32));
  v41 = v59;
  (*(v59 + 16))(boxed_opaque_existential_1, v18, v61);
  (*(*(v38 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D63730], v38);
  v42 = v60;
  sub_252F73064();
  v43 = v24 + *(v19 + 20);
  sub_252F733C4();
  v44 = v18;
  v45 = sub_252F734C4();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v11, 1, v45) == 1)
  {
    (*(v13 + 1))(v42, v12);
    (*(v41 + 8))(v44, v61);
    return sub_252F65E0C(v11, &qword_27F57B9E0, &unk_252F74220);
  }

  else
  {
    v48 = v57;
    (*(v13 + 2))(v57, v42, v12);
    (*(v13 + 7))(v48, 0, 1, v12);
    v56 = v44;
    v49 = *MEMORY[0x277D63BE0];
    v50 = sub_252F73414();
    v51 = *(v50 - 8);
    v55 = v12;
    v52 = v51;
    v53 = v41;
    v54 = v58;
    (*(v51 + 104))(v58, v49, v50);
    (*(v52 + 56))(v54, 0, 1, v50);
    sub_252F734B4();
    sub_252F65E0C(v54, &qword_27F57B9D0, &unk_252F74210);
    sub_252F65E0C(v48, &qword_27F57B9D8, &unk_252F73EF0);
    (*(v13 + 1))(v60, v55);
    (*(v53 + 8))(v56, v61);
    return (*(v46 + 8))(v11, v45);
  }
}

uint64_t sub_252F68A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for HomeAppLaunchView() + 24);
  v4 = *(type metadata accessor for HomeAppLaunchModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F73114();
  sub_252F65B48();
  result = sub_252F73294();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_252F68AE8(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_252F6825C(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_252F682C4(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for HomeAppLaunchView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BAD8, &qword_252F74188);
  sub_252F65A4C(&qword_27F57BAE0, &qword_27F57BAD8, &qword_252F74188);
  return sub_252F73404();
}

uint64_t sub_252F68C58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_252F733E4();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for HomeAppLaunchModel();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_252F68D9C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_252F733E4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for HomeAppLaunchModel();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_252F68EC0()
{
  sub_252F65698();
  if (v0 <= 0x3F)
  {
    sub_252F733E4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for HomeAppLaunchModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_252F68FA0()
{
  v1 = *(type metadata accessor for HomeAppLaunchView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_252F68114(v2);
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for HomeAppLaunchView() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v4 = v1[7];
  v5 = sub_252F733E4();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = v3 + v1[8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = type metadata accessor for HomeAppLaunchModel();
  v8(&v6[*(v9 + 20)], v7);

  return swift_deallocObject();
}

uint64_t sub_252F69170()
{
  v1 = *(type metadata accessor for HomeAppLaunchView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_252F6834C(v2);
}

uint64_t sub_252F691D8(uint64_t a1)
{
  v2 = type metadata accessor for HomeAppLaunchView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HomeCommunicationSnippetModel.snippetHidden(for:idiom:)()
{
  v1 = v0;
  v2 = sub_252F73144();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HomeCommunicationSnippetModel();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252F69484(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D61BE8], v2);
    sub_252F6B3C4(&qword_27F57BB08, MEMORY[0x277D61C30]);
    v11 = sub_252F73504();
    (*(v3 + 8))(v6, v2);
    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  sub_252F698DC(v10, type metadata accessor for HomeCommunicationSnippetModel);
  return v12 & 1;
}

uint64_t type metadata accessor for HomeCommunicationSnippetModel()
{
  result = qword_27F57BBC0;
  if (!qword_27F57BBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252F69484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeCommunicationSnippetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HomeCommunicationSnippetModel.description.getter()
{
  v1 = type metadata accessor for HomeDisambiguationModel(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CarPlayIntercomControlModel();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HomeAppLaunchModel();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HomeCommunicationSnippetModel();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_252F69484(v0, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_252F6B2CC(v16, v4, type metadata accessor for HomeDisambiguationModel);
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_252F735C4();
      MEMORY[0x2530B0550](0xD000000000000014, 0x8000000252F76CA0);
      sub_252F73604();
      v18 = v23;
      sub_252F698DC(v4, type metadata accessor for HomeDisambiguationModel);
    }

    else
    {
      v20 = *v16;
      v19 = v16[1];
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_252F735C4();
      MEMORY[0x2530B0550](0xD00000000000001CLL, 0x8000000252F76C80);
      v22[0] = v20;
      v22[1] = v19;
      sub_252F73604();

      return v23;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_252F6B2CC(v16, v8, type metadata accessor for CarPlayIntercomControlModel);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_252F735C4();
    MEMORY[0x2530B0550](0xD000000000000018, 0x8000000252F76CC0);
    sub_252F73604();
    MEMORY[0x2530B0550](41, 0xE100000000000000);
    v18 = v23;
    sub_252F698DC(v8, type metadata accessor for CarPlayIntercomControlModel);
  }

  else
  {
    sub_252F6B2CC(v16, v12, type metadata accessor for HomeAppLaunchModel);
    v23 = 0;
    v24 = 0xE000000000000000;
    MEMORY[0x2530B0550](0x6E75614C7070612ELL, 0xEB00000000286863);
    sub_252F73604();
    v18 = v23;
    sub_252F698DC(v12, type metadata accessor for HomeAppLaunchModel);
  }

  return v18;
}

uint64_t sub_252F698DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252F69990(uint64_t a1)
{
  v2 = sub_252F6A744();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F699CC(uint64_t a1)
{
  v2 = sub_252F6A744();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252F69A08(uint64_t a1)
{
  v2 = sub_252F6A6F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F69A44(uint64_t a1)
{
  v2 = sub_252F6A6F0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_252F69A80()
{
  v1 = 0x636E75614C707061;
  v2 = 0xD00000000000001ALL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_252F69B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252F6BEA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252F69B38(uint64_t a1)
{
  v2 = sub_252F6A5A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F69B74(uint64_t a1)
{
  v2 = sub_252F6A5A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252F69BB0(uint64_t a1)
{
  v2 = sub_252F6A69C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F69BEC(uint64_t a1)
{
  v2 = sub_252F6A69C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252F69C28()
{
  sub_252F736C4();
  MEMORY[0x2530B0710](0);
  return sub_252F736E4();
}

uint64_t sub_252F69C6C()
{
  sub_252F736C4();
  MEMORY[0x2530B0710](0);
  return sub_252F736E4();
}

uint64_t sub_252F69CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_252F736B4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_252F69D2C(uint64_t a1)
{
  v2 = sub_252F6A5F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F69D68(uint64_t a1)
{
  v2 = sub_252F6A5F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeCommunicationSnippetModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB10, &qword_252F74230);
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v2);
  v61 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB18, &qword_252F74238);
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v5);
  v58 = &v48 - v7;
  v56 = type metadata accessor for HomeDisambiguationModel(0);
  v8 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v57 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB20, &qword_252F74240);
  v54 = *(v10 - 8);
  v55 = v10;
  v11 = *(v54 + 64);
  MEMORY[0x28223BE20](v10);
  v53 = &v48 - v12;
  v51 = type metadata accessor for CarPlayIntercomControlModel();
  v13 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v52 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB28, &qword_252F74248);
  v49 = *(v15 - 8);
  v50 = v15;
  v16 = *(v49 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - v17;
  v19 = type metadata accessor for HomeAppLaunchModel();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for HomeCommunicationSnippetModel();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (&v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB30, &qword_252F74250);
  v65 = *(v27 - 8);
  v66 = v27;
  v28 = *(v65 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v48 - v29;
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F6A5A0();
  sub_252F73704();
  sub_252F69484(v64, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v44 = *v26;
      v43 = v26[1];
      LOBYTE(v67) = 3;
      sub_252F6A5F4();
      v45 = v61;
      v46 = v66;
      sub_252F73684();
      v67 = v44;
      v68 = v43;
      sub_252F6A648();
      v47 = v63;
      sub_252F736A4();
      (*(v62 + 8))(v45, v47);
      (*(v65 + 8))(v30, v46);
    }

    v36 = v57;
    sub_252F6B2CC(v26, v57, type metadata accessor for HomeDisambiguationModel);
    LOBYTE(v67) = 2;
    sub_252F6A69C();
    v37 = v58;
    v38 = v66;
    sub_252F73684();
    sub_252F6B3C4(&qword_27F57BB58, type metadata accessor for HomeDisambiguationModel);
    v39 = v60;
    sub_252F736A4();
    (*(v59 + 8))(v37, v39);
    v40 = type metadata accessor for HomeDisambiguationModel;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_252F6B2CC(v26, v22, type metadata accessor for HomeAppLaunchModel);
      LOBYTE(v67) = 0;
      sub_252F6A744();
      v33 = v66;
      sub_252F73684();
      sub_252F6B3C4(&qword_27F57BAA8, type metadata accessor for HomeAppLaunchModel);
      v34 = v50;
      sub_252F736A4();
      (*(v49 + 8))(v18, v34);
      sub_252F698DC(v22, type metadata accessor for HomeAppLaunchModel);
      return (*(v65 + 8))(v30, v33);
    }

    v36 = v52;
    sub_252F6B2CC(v26, v52, type metadata accessor for CarPlayIntercomControlModel);
    LOBYTE(v67) = 1;
    sub_252F6A6F0();
    v41 = v53;
    v38 = v66;
    sub_252F73684();
    sub_252F6B3C4(&qword_27F57B8E8, type metadata accessor for CarPlayIntercomControlModel);
    v42 = v55;
    sub_252F736A4();
    (*(v54 + 8))(v41, v42);
    v40 = type metadata accessor for CarPlayIntercomControlModel;
  }

  sub_252F698DC(v36, v40);
  return (*(v65 + 8))(v30, v38);
}

unint64_t sub_252F6A5A0()
{
  result = qword_27F57BB38;
  if (!qword_27F57BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BB38);
  }

  return result;
}

unint64_t sub_252F6A5F4()
{
  result = qword_27F57BB40;
  if (!qword_27F57BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BB40);
  }

  return result;
}

unint64_t sub_252F6A648()
{
  result = qword_27F57BB48;
  if (!qword_27F57BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BB48);
  }

  return result;
}

unint64_t sub_252F6A69C()
{
  result = qword_27F57BB50;
  if (!qword_27F57BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BB50);
  }

  return result;
}

unint64_t sub_252F6A6F0()
{
  result = qword_27F57BB60;
  if (!qword_27F57BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BB60);
  }

  return result;
}

unint64_t sub_252F6A744()
{
  result = qword_27F57BB68;
  if (!qword_27F57BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BB68);
  }

  return result;
}

uint64_t HomeCommunicationSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB70, &qword_252F74258);
  v81 = *(v78 - 8);
  v3 = *(v81 + 64);
  MEMORY[0x28223BE20](v78);
  v87 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB78, &qword_252F74260);
  v6 = *(v5 - 8);
  v79 = v5;
  v80 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v86 = &v69 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB80, &qword_252F74268);
  v10 = *(v9 - 8);
  v76 = v9;
  v77 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v85 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB88, &qword_252F74270);
  v74 = *(v13 - 8);
  v75 = v13;
  v14 = *(v74 + 64);
  MEMORY[0x28223BE20](v13);
  v82 = &v69 - v15;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB90, &qword_252F74278);
  v88 = *(v84 - 8);
  v16 = *(v88 + 64);
  MEMORY[0x28223BE20](v84);
  v18 = &v69 - v17;
  v83 = type metadata accessor for HomeCommunicationSnippetModel();
  v19 = *(*(v83 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v83);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v69 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v69 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v69 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v69 - v32;
  v34 = a1[3];
  v35 = a1[4];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_252F6A5A0();
  v36 = v90;
  sub_252F736F4();
  if (!v36)
  {
    v71 = v31;
    v72 = v28;
    v70 = v22;
    v73 = v25;
    v38 = v85;
    v37 = v86;
    v39 = v87;
    v90 = v33;
    v40 = v89;
    v41 = v84;
    v42 = sub_252F73674();
    v43 = v42;
    v44 = *(v42 + 16);
    if (!v44 || ((v45 = *(v42 + 32), v44 == 1) ? (v46 = v45 == 4) : (v46 = 1), v46))
    {
      v47 = sub_252F735E4();
      swift_allocError();
      v48 = v18;
      v50 = v49;
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BB98, &qword_252F74280) + 48);
      *v50 = v83;
      sub_252F73644();
      sub_252F735D4();
      (*(*(v47 - 8) + 104))(v50, *MEMORY[0x277D84160], v47);
      swift_willThrow();
      (*(v88 + 8))(v48, v41);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v42 + 32) > 1u)
      {
        if (v45 == 2)
        {
          LOBYTE(v91) = 2;
          sub_252F6A69C();
          sub_252F73634();
          v58 = v88;
          v87 = v43;
          type metadata accessor for HomeDisambiguationModel(0);
          sub_252F6B3C4(&qword_27F57BBA8, type metadata accessor for HomeDisambiguationModel);
          v61 = v73;
          v62 = v79;
          sub_252F73664();
          (*(v80 + 8))(v37, v62);
          (*(v58 + 8))(v18, v41);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v66 = v90;
          sub_252F6B2CC(v61, v90, type metadata accessor for HomeCommunicationSnippetModel);
          v67 = v89;
        }

        else
        {
          v67 = v40;
          LOBYTE(v91) = 3;
          sub_252F6A5F4();
          sub_252F73634();
          v60 = v88;
          sub_252F6B278();
          v65 = v78;
          sub_252F73664();
          (*(v81 + 8))(v39, v65);
          (*(v60 + 8))(v18, v41);
          swift_unknownObjectRelease();
          v68 = v70;
          *v70 = v91;
          swift_storeEnumTagMultiPayload();
          v66 = v90;
          sub_252F6B2CC(v68, v90, type metadata accessor for HomeCommunicationSnippetModel);
        }
      }

      else
      {
        if (*(v42 + 32))
        {
          LOBYTE(v91) = 1;
          sub_252F6A6F0();
          v59 = v38;
          sub_252F73634();
          type metadata accessor for CarPlayIntercomControlModel();
          v87 = v18;
          sub_252F6B3C4(&qword_27F57B8E0, type metadata accessor for CarPlayIntercomControlModel);
          v63 = v72;
          v64 = v76;
          sub_252F73664();
          (*(v77 + 8))(v59, v64);
          (*(v88 + 8))(v87, v41);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v57 = v63;
        }

        else
        {
          LOBYTE(v91) = 0;
          sub_252F6A744();
          v53 = v82;
          sub_252F73634();
          type metadata accessor for HomeAppLaunchModel();
          v54 = v53;
          v87 = v43;
          sub_252F6B3C4(&qword_27F57BAA0, type metadata accessor for HomeAppLaunchModel);
          v55 = v71;
          v56 = v75;
          sub_252F73664();
          (*(v74 + 8))(v54, v56);
          (*(v88 + 8))(v18, v41);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v57 = v55;
        }

        v66 = v90;
        sub_252F6B2CC(v57, v90, type metadata accessor for HomeCommunicationSnippetModel);
        v67 = v40;
      }

      sub_252F6B2CC(v66, v67, type metadata accessor for HomeCommunicationSnippetModel);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v92);
}

unint64_t sub_252F6B278()
{
  result = qword_27F57BBA0;
  if (!qword_27F57BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BBA0);
  }

  return result;
}

uint64_t sub_252F6B2CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252F6B3C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252F6B428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = sub_252F73144();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252F69484(v5, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 104))(v11, *MEMORY[0x277D61BE8], v6);
    sub_252F6B3C4(&qword_27F57BB08, MEMORY[0x277D61C30]);
    v15 = sub_252F73504();
    (*(v7 + 8))(v11, v6);
    v16 = v15 ^ 1;
  }

  else
  {
    v16 = 0;
  }

  sub_252F698DC(v14, type metadata accessor for HomeCommunicationSnippetModel);
  return v16 & 1;
}

uint64_t sub_252F6B680()
{
  result = type metadata accessor for HomeAppLaunchModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CarPlayIntercomControlModel();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for HomeDisambiguationModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeCommunicationSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeCommunicationSnippetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
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
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Logger(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Logger(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_252F6B984()
{
  result = qword_27F57BBD0;
  if (!qword_27F57BBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BBD0);
  }

  return result;
}

unint64_t sub_252F6B9DC()
{
  result = qword_27F57BBD8;
  if (!qword_27F57BBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BBD8);
  }

  return result;
}

unint64_t sub_252F6BA34()
{
  result = qword_27F57BBE0;
  if (!qword_27F57BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BBE0);
  }

  return result;
}

unint64_t sub_252F6BA8C()
{
  result = qword_27F57BBE8;
  if (!qword_27F57BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BBE8);
  }

  return result;
}

unint64_t sub_252F6BAE4()
{
  result = qword_27F57BBF0;
  if (!qword_27F57BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BBF0);
  }

  return result;
}

unint64_t sub_252F6BB3C()
{
  result = qword_27F57BBF8;
  if (!qword_27F57BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BBF8);
  }

  return result;
}

unint64_t sub_252F6BB94()
{
  result = qword_27F57BC00;
  if (!qword_27F57BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BC00);
  }

  return result;
}

unint64_t sub_252F6BBEC()
{
  result = qword_27F57BC08;
  if (!qword_27F57BC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BC08);
  }

  return result;
}

unint64_t sub_252F6BC44()
{
  result = qword_27F57BC10;
  if (!qword_27F57BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BC10);
  }

  return result;
}

unint64_t sub_252F6BC9C()
{
  result = qword_27F57BC18;
  if (!qword_27F57BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BC18);
  }

  return result;
}

unint64_t sub_252F6BCF4()
{
  result = qword_27F57BC20;
  if (!qword_27F57BC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BC20);
  }

  return result;
}

unint64_t sub_252F6BD4C()
{
  result = qword_27F57BC28;
  if (!qword_27F57BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BC28);
  }

  return result;
}

unint64_t sub_252F6BDA4()
{
  result = qword_27F57BC30;
  if (!qword_27F57BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BC30);
  }

  return result;
}

unint64_t sub_252F6BDFC()
{
  result = qword_27F57BC38;
  if (!qword_27F57BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BC38);
  }

  return result;
}

unint64_t sub_252F6BE54()
{
  result = qword_27F57BC40;
  if (!qword_27F57BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BC40);
  }

  return result;
}

uint64_t sub_252F6BEA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E75614C707061 && a2 == 0xE900000000000068;
  if (v4 || (sub_252F736B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000252F76D10 == a2 || (sub_252F736B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000252F76D30 == a2 || (sub_252F736B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000252F76D50 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_252F736B4();

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

uint64_t HomeTarget.hash(into:)()
{
  sub_252F73024();
  sub_252F6C658(&qword_27F57BC48, MEMORY[0x277CC95F0]);

  return sub_252F734F4();
}

uint64_t HomeTarget.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_252F73024();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HomeTarget.init(id:name:selectHomeAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_252F73024();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  v6 = type metadata accessor for HomeTarget(0);
  v7 = *(v6 + 20);
  sub_252F730F4();
  v8 = *(v6 + 24);
  sub_252F6C264();
  sub_252F73084();
  return (*(v5 + 8))(a1, v4);
}

unint64_t sub_252F6C264()
{
  result = qword_27F57BC50;
  if (!qword_27F57BC50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F57BC50);
  }

  return result;
}

uint64_t sub_252F6C2B0()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_252F6C2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252F6E878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252F6C324(uint64_t a1)
{
  v2 = sub_252F6C604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F6C360(uint64_t a1)
{
  v2 = sub_252F6C604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeTarget.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BC58, &unk_252F74950);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F6C604();
  sub_252F73704();
  v13[15] = 0;
  sub_252F73024();
  sub_252F6C658(&qword_27F57BC68, MEMORY[0x277CC95F0]);
  sub_252F736A4();
  if (!v1)
  {
    v9 = type metadata accessor for HomeTarget(0);
    v10 = *(v9 + 20);
    v13[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
    sub_252F62D4C(&qword_27F57B8B8);
    sub_252F736A4();
    v11 = *(v9 + 24);
    v13[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BC70, &qword_252F74960);
    sub_252F6CEB8(&qword_27F57BC78);
    sub_252F736A4();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_252F6C604()
{
  result = qword_27F57BC60;
  if (!qword_27F57BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BC60);
  }

  return result;
}

uint64_t sub_252F6C658(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HomeTarget.hashValue.getter()
{
  sub_252F736C4();
  sub_252F73024();
  sub_252F6C658(&qword_27F57BC48, MEMORY[0x277CC95F0]);
  sub_252F734F4();
  return sub_252F736E4();
}

uint64_t HomeTarget.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BC70, &qword_252F74960);
  v34 = *(v36 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v41 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = sub_252F73024();
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v42 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BC80, &qword_252F74968);
  v38 = *(v44 - 8);
  v12 = *(v38 + 64);
  MEMORY[0x28223BE20](v44);
  v14 = &v32 - v13;
  v15 = type metadata accessor for HomeTarget(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F6C604();
  v43 = v14;
  v20 = v45;
  sub_252F736F4();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v38;
  v21 = v39;
  v32 = v15;
  v33 = v18;
  v45 = a1;
  v24 = v40;
  v23 = v41;
  v48 = 0;
  sub_252F6C658(&qword_27F57BC88, MEMORY[0x277CC95F0]);
  v25 = v42;
  sub_252F73664();
  v26 = *(v37 + 32);
  v42 = v9;
  v26(v33, v25, v9);
  v47 = 1;
  sub_252F62D4C(&qword_27F57B8D0);
  v27 = v8;
  sub_252F73664();
  v28 = v33;
  (*(v21 + 32))(&v33[*(v32 + 20)], v27, v24);
  v46 = 2;
  sub_252F6CEB8(&qword_27F57BC90);
  v29 = v23;
  v30 = v36;
  sub_252F73664();
  (*(v22 + 8))(v43, v44);
  (*(v34 + 32))(v28 + *(v32 + 24), v29, v30);
  sub_252F6DB98(v28, v35, type metadata accessor for HomeTarget);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_252F6DC00(v28, type metadata accessor for HomeTarget);
}

uint64_t sub_252F6CC90@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_252F73024();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_252F6CD28()
{
  sub_252F736C4();
  sub_252F73024();
  sub_252F6C658(&qword_27F57BC48, MEMORY[0x277CC95F0]);
  sub_252F734F4();
  return sub_252F736E4();
}

uint64_t sub_252F6CDB0()
{
  sub_252F73024();
  sub_252F6C658(&qword_27F57BC48, MEMORY[0x277CC95F0]);

  return sub_252F734F4();
}

uint64_t sub_252F6CE34()
{
  sub_252F736C4();
  sub_252F73024();
  sub_252F6C658(&qword_27F57BC48, MEMORY[0x277CC95F0]);
  sub_252F734F4();
  return sub_252F736E4();
}

uint64_t sub_252F6CEB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BC70, &qword_252F74960);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252F6CF30()
{
  v1 = 0x6449656C646E7562;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x74706D6F7270;
  }

  if (*v0)
  {
    v1 = 0x67726154656D6F68;
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

uint64_t sub_252F6CFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252F6E990(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252F6CFDC(uint64_t a1)
{
  v2 = sub_252F6D2FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F6D018(uint64_t a1)
{
  v2 = sub_252F6D2FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeDisambiguationModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BC98, &qword_252F74970);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F6D2FC();
  sub_252F73704();
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F62D4C(&qword_27F57B8B8);
  sub_252F736A4();
  if (!v1)
  {
    v14 = type metadata accessor for HomeDisambiguationModel(0);
    v9 = v14[5];
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BCA8, &qword_252F74978);
    sub_252F6DAB0(&qword_27F57BCB0);
    sub_252F736A4();
    v10 = v14[6];
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
    sub_252F627BC(&qword_27F57B8C0);
    sub_252F736A4();
    v11 = v14[7];
    v15 = 3;
    sub_252F736A4();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_252F6D2FC()
{
  result = qword_27F57BCA0;
  if (!qword_27F57BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BCA0);
  }

  return result;
}

uint64_t sub_252F6D370(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252F6D3A8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BCC0, &unk_252F74980);
    sub_252F6C658(a2, type metadata accessor for HomeTarget);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t HomeDisambiguationModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = &v38 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BCA8, &qword_252F74978);
  v45 = *(v49 - 8);
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v38 - v13;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BCE0, &qword_252F74990);
  v52 = *(v54 - 8);
  v14 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v16 = &v38 - v15;
  v17 = type metadata accessor for HomeDisambiguationModel(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F6D2FC();
  v53 = v16;
  v22 = v55;
  sub_252F736F4();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v50;
  v41 = v12;
  v42 = v20;
  v55 = a1;
  v59 = 0;
  v24 = sub_252F62D4C(&qword_27F57B8D0);
  v25 = v51;
  sub_252F73664();
  v40 = v24;
  v26 = v8;
  v27 = v48 + 32;
  v28 = *(v48 + 32);
  v51 = v26;
  v28(v42, v25);
  v58 = 1;
  sub_252F6DAB0(&qword_27F57BCE8);
  v29 = v23;
  v30 = v49;
  sub_252F73664();
  v38 = v27;
  v39 = v28;
  v31 = v17;
  v32 = v42;
  (*(v45 + 32))(&v42[*(v17 + 20)], v29, v30);
  v57 = 2;
  sub_252F627BC(&qword_27F57B8D8);
  v33 = v44;
  v34 = v47;
  v50 = 0;
  sub_252F73664();
  (*(v46 + 32))(v32 + *(v31 + 24), v33, v34);
  v56 = 3;
  v35 = v41;
  v36 = v51;
  sub_252F73664();
  (*(v52 + 8))(v53, v54);
  v39(v32 + *(v31 + 28), v35, v36);
  sub_252F6DB98(v32, v43, type metadata accessor for HomeDisambiguationModel);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return sub_252F6DC00(v32, type metadata accessor for HomeDisambiguationModel);
}

uint64_t sub_252F6DAB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BCA8, &qword_252F74978);
    sub_252F6D3A8(&qword_27F57BCB8, &qword_27F57BCC8);
    sub_252F6D3A8(&qword_27F57BCD0, &qword_27F57BCD8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252F6DB98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252F6DC00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252F6DE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252F73024();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BC70, &qword_252F74960);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_252F6DFC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_252F73024();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BC70, &qword_252F74960);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_252F6E124()
{
  sub_252F73024();
  if (v0 <= 0x3F)
  {
    sub_252F632A4(319, &qword_27F57B900);
    if (v1 <= 0x3F)
    {
      sub_252F6E1D0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252F6E1D0()
{
  if (!qword_27F57BD08)
  {
    sub_252F6C264();
    v0 = sub_252F730A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F57BD08);
    }
  }
}

uint64_t sub_252F6E23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BCA8, &qword_252F74978);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_252F6E3B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BCA8, &qword_252F74978);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_252F6E524()
{
  sub_252F632A4(319, &qword_27F57B900);
  if (v0 <= 0x3F)
  {
    sub_252F6E5E4();
    if (v1 <= 0x3F)
    {
      sub_252F632A4(319, &qword_27F57B908);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_252F6E5E4()
{
  if (!qword_27F57BD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BCC0, &unk_252F74980);
    v0 = sub_252F73134();
    if (!v1)
    {
      atomic_store(v0, &qword_27F57BD20);
    }
  }
}

unint64_t sub_252F6E66C()
{
  result = qword_27F57BD28;
  if (!qword_27F57BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BD28);
  }

  return result;
}

unint64_t sub_252F6E6C4()
{
  result = qword_27F57BD30;
  if (!qword_27F57BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BD30);
  }

  return result;
}

unint64_t sub_252F6E71C()
{
  result = qword_27F57BD38;
  if (!qword_27F57BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BD38);
  }

  return result;
}

unint64_t sub_252F6E774()
{
  result = qword_27F57BD40;
  if (!qword_27F57BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BD40);
  }

  return result;
}

unint64_t sub_252F6E7CC()
{
  result = qword_27F57BD48;
  if (!qword_27F57BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BD48);
  }

  return result;
}

unint64_t sub_252F6E824()
{
  result = qword_27F57BD50;
  if (!qword_27F57BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BD50);
  }

  return result;
}

uint64_t sub_252F6E878(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_252F736B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_252F736B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000252F76DA0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_252F736B4();

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

uint64_t sub_252F6E990(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_252F736B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x67726154656D6F68 && a2 == 0xEB00000000737465 || (sub_252F736B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000252F76DC0 == a2 || (sub_252F736B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_252F736B4();

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

uint64_t HomeDisambiguationView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_252F734E4();
  sub_252F717F4(&qword_27F57B870, MEMORY[0x277D63F60]);
  *a2 = sub_252F731F4();
  a2[1] = v4;
  v5 = type metadata accessor for HomeDisambiguationView();
  v6 = a2 + *(v5 + 20);
  sub_252F733D4();
  return sub_252F70ED8(a1, a2 + *(v5 + 24), type metadata accessor for HomeDisambiguationModel);
}

uint64_t type metadata accessor for HomeDisambiguationView()
{
  result = qword_27F57BDA0;
  if (!qword_27F57BDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomeDisambiguationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BD58, &qword_252F74DB0);
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v41);
  v6 = &v34 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BD60, &qword_252F74DB8);
  v7 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v9 = &v34 - v8;
  v10 = type metadata accessor for HomeDisambiguationView();
  v11 = v10 - 8;
  v37 = *(v10 - 8);
  v12 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_252F734A4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BD68, &unk_252F74DC0);
  v36 = *(v39 - 8);
  v16 = *(v36 + 64);
  MEMORY[0x28223BE20](v39);
  v35 = &v34 - v17;
  v18 = v2 + *(v11 + 32);
  v19 = type metadata accessor for HomeDisambiguationModel(0);
  v20 = *(v19 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  sub_252F73114();
  if (v45 != 1)
  {
    goto LABEL_4;
  }

  v34 = v12;
  v21 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v2)
  {
    v22 = *v2;
    sub_252F734D4();

    v13 = v21;
    if (sub_252F73574())
    {
LABEL_4:
      sub_252F70B68(v2, v13, type metadata accessor for HomeDisambiguationView);
      v23 = (*(v37 + 80) + 16) & ~*(v37 + 80);
      v24 = swift_allocObject();
      sub_252F70ED8(v13, v24 + v23, type metadata accessor for HomeDisambiguationView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BD70, &qword_252F74DD0);
      sub_252F65A4C(&qword_27F57BD78, &qword_27F57BD70, &qword_252F74DD0);
      sub_252F73404();
      v25 = v41;
      (*(v3 + 16))(v9, v6, v41);
      swift_storeEnumTagMultiPayload();
      sub_252F65A4C(&qword_27F57BD80, &qword_27F57BD68, &unk_252F74DC0);
      sub_252F65A4C(&qword_27F57BD88, &qword_27F57BD58, &qword_252F74DB0);
      sub_252F73244();
      return (*(v3 + 8))(v6, v25);
    }

    v27 = *(v19 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
    sub_252F73114();
    v46 = MEMORY[0x277D837D0];
    v47 = MEMORY[0x277D63F80];
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    sub_252F73494();
    sub_252F70B68(v2, v21, type metadata accessor for HomeDisambiguationView);
    v28 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v29 = swift_allocObject();
    sub_252F70ED8(v21, v29 + v28, type metadata accessor for HomeDisambiguationView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BD90, &qword_252F74DD8);
    sub_252F65A4C(&qword_27F57BD98, &qword_27F57BD90, &qword_252F74DD8);
    v30 = v35;
    sub_252F73444();
    v31 = v36;
    v32 = v39;
    (*(v36 + 16))(v9, v30, v39);
    swift_storeEnumTagMultiPayload();
    sub_252F65A4C(&qword_27F57BD80, &qword_27F57BD68, &unk_252F74DC0);
    sub_252F65A4C(&qword_27F57BD88, &qword_27F57BD58, &qword_252F74DB0);
    sub_252F73244();
    return (*(v31 + 8))(v30, v32);
  }

  else
  {
    v33 = *(v2 + 8);
    sub_252F734E4();
    sub_252F717F4(&qword_27F57B870, MEMORY[0x277D63F60]);
    result = sub_252F731E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_252F6F324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for HomeDisambiguationView();
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v39 = v6;
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252F73424();
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B970, &qword_252F74E80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BDF0, &qword_252F74E88);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - v21;
  if (*a1)
  {
    v23 = *a1;
    sub_252F734D4();

    if (sub_252F73574())
    {
      (*(v12 + 56))(v22, 1, 1, v11);
      v24 = v37;
    }

    else
    {
      v24 = v37;
      v25 = *(v37 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
      sub_252F73114();
      sub_252F73434();
      sub_252F717F4(&qword_27F57B978, MEMORY[0x277D63C98]);
      sub_252F73314();
      (*(v36 + 8))(v10, v7);
      (*(v12 + 32))(v22, v15, v11);
      (*(v12 + 56))(v22, 0, 1, v11);
    }

    v26 = a1 + *(v24 + 24);
    v27 = *(type metadata accessor for HomeDisambiguationModel(0) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BCA8, &qword_252F74978);
    sub_252F73114();
    v28 = v42;
    v29 = v40;
    sub_252F70B68(a1, v40, type metadata accessor for HomeDisambiguationView);
    v30 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v31 = swift_allocObject();
    sub_252F70ED8(v29, v31 + v30, type metadata accessor for HomeDisambiguationView);
    sub_252F71AC0(v22, v20);
    v32 = v41;
    sub_252F71AC0(v20, v41);
    v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BDF8, &unk_252F74E90) + 48));
    *v33 = v28;
    v33[1] = sub_252F71B30;
    v33[2] = v31;

    sub_252F65E0C(v22, &qword_27F57BDF0, &qword_252F74E88);

    return sub_252F65E0C(v20, &qword_27F57BDF0, &qword_252F74E88);
  }

  else
  {
    v35 = *(a1 + 8);
    sub_252F734E4();
    sub_252F717F4(&qword_27F57B870, MEMORY[0x277D63F60]);
    result = sub_252F731E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_252F6F82C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HomeDisambiguationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_252F6F324(v4, a1);
}

uint64_t sub_252F6F89C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HomeDisambiguationView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(MEMORY[0x28223BE20](v4 - 8) + 32);
  v8 = a1 + *(type metadata accessor for HomeDisambiguationModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BCA8, &qword_252F74978);
  sub_252F73114();
  v9 = v13[1];
  sub_252F70B68(a1, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HomeDisambiguationView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  result = sub_252F70ED8(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for HomeDisambiguationView);
  *a2 = v9;
  a2[1] = sub_252F70B64;
  a2[2] = v11;
  return result;
}

uint64_t sub_252F6FA04@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for HomeDisambiguationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_252F6F89C(v4, a1);
}

uint64_t sub_252F6FA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v57 = a1;
  v58 = a4;
  v5 = sub_252F73074();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v5);
  v54 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HomeDisambiguationView();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HomeTarget(0);
  v12 = v11 - 8;
  v46 = *(v11 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_252F73464();
  v50 = *(v48 - 8);
  v15 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BDC0, &qword_252F74E60);
  v51 = *(v18 - 8);
  v52 = v18;
  v19 = *(v51 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - v20;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BDC8, &unk_252F74E68);
  v22 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v24 = &v45 - v23;
  v25 = *(v12 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  sub_252F73114();
  v85 = MEMORY[0x277D837D0];
  v86 = MEMORY[0x277D63F80];
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  sub_252F73454();
  sub_252F70B68(a2, v14, type metadata accessor for HomeTarget);
  v26 = v49;
  sub_252F70B68(v49, v10, type metadata accessor for HomeDisambiguationView);
  v27 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v28 = (v13 + *(v47 + 80) + v27) & ~*(v47 + 80);
  v29 = swift_allocObject();
  sub_252F70ED8(v14, v29 + v27, type metadata accessor for HomeTarget);
  sub_252F70ED8(v10, v29 + v28, type metadata accessor for HomeDisambiguationView);
  v30 = sub_252F717F4(&qword_27F57BDD0, MEMORY[0x277D63D08]);
  v31 = v48;
  sub_252F732B4();
  v32 = v31;

  (*(v50 + 8))(v17, v31);
  if (*v26)
  {
    v33 = *v26;
    sub_252F734D4();

    if (sub_252F73574() & 1) != 0 || (v34 = v33, sub_252F734D4(), v34, (sub_252F73584()))
    {
      v35 = MEMORY[0x277D62F38];
    }

    else
    {
      v35 = MEMORY[0x277D62F28];
    }

    v37 = v54;
    v36 = v55;
    v38 = v56;
    (*(v55 + 104))(v54, *v35, v56);
    v83 = v32;
    v84 = v30;
    swift_getOpaqueTypeConformance2();
    v39 = v52;
    sub_252F732A4();
    (*(v36 + 8))(v37, v38);
    (*(v51 + 8))(v21, v39);
    LOBYTE(v38) = v57 == 0;
    sub_252F734E4();
    sub_252F717F4(&qword_27F57B870, MEMORY[0x277D63F60]);
    v40 = sub_252F731F4();
    v41 = &v24[*(v53 + 36)];
    *v41 = v40;
    *(v41 + 1) = v42;
    v41[16] = v38;
    sub_252F7100C();
    sub_252F73314();
    return sub_252F65E0C(v24, &qword_27F57BDC8, &unk_252F74E68);
  }

  else
  {
    v44 = *(v26 + 8);
    sub_252F734E4();
    sub_252F717F4(&qword_27F57B870, MEMORY[0x277D63F60]);
    result = sub_252F731E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_252F70190(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9D0, &unk_252F74210);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9D8, &unk_252F73EF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9E0, &unk_252F74220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for HomeTarget(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_252F73054();
  v17 = *(v45 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v45);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B9E8, &qword_252F73F00);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_252F73E10;
  v22 = sub_252F730C4();
  v23 = MEMORY[0x277D63778];
  *(v21 + 56) = v22;
  *(v21 + 64) = v23;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v21 + 32));
  v25 = *(v13 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BC70, &qword_252F74960);
  *boxed_opaque_existential_1 = sub_252F73094();
  *(boxed_opaque_existential_1 + 8) = 0;
  (*(*(v22 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D63750], v22);
  sub_252F73064();
  if (qword_27F57B858 != -1)
  {
    swift_once();
  }

  v26 = sub_252F73174();
  __swift_project_value_buffer(v26, qword_27F57BE18);
  sub_252F70B68(a1, v16, type metadata accessor for HomeTarget);
  v27 = sub_252F73154();
  v28 = sub_252F73564();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v48 = v30;
    *v29 = 136315138;
    v31 = *(v13 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
    sub_252F73114();
    sub_252F71190(v16);
    v32 = sub_252F711EC(v46, v47, &v48);

    *(v29 + 4) = v32;
    _os_log_impl(&dword_252F60000, v27, v28, "#HomeDisambiguationView target tapped, performing direct action for %s.", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x2530B0AB0](v30, -1, -1);
    MEMORY[0x2530B0AB0](v29, -1, -1);
  }

  else
  {

    sub_252F71190(v16);
  }

  v33 = v44 + *(type metadata accessor for HomeDisambiguationView() + 20);
  sub_252F733C4();
  v34 = sub_252F734C4();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v12, 1, v34) == 1)
  {
    (*(v17 + 8))(v20, v45);
    return sub_252F65E0C(v12, &qword_27F57B9E0, &unk_252F74220);
  }

  else
  {
    v37 = v42;
    v38 = v45;
    (*(v17 + 16))(v42, v20, v45);
    (*(v17 + 56))(v37, 0, 1, v38);
    v39 = sub_252F73414();
    v40 = v43;
    (*(*(v39 - 8) + 56))(v43, 1, 1, v39);
    sub_252F734B4();
    sub_252F65E0C(v40, &qword_27F57B9D0, &unk_252F74210);
    sub_252F65E0C(v37, &qword_27F57B9D8, &unk_252F73EF0);
    (*(v17 + 8))(v20, v38);
    return (*(v35 + 8))(v12, v34);
  }
}

uint64_t sub_252F70778(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_252F733E4();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for HomeDisambiguationModel(0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_252F708BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_252F733E4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for HomeDisambiguationModel(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_252F709E0()
{
  sub_252F65698();
  if (v0 <= 0x3F)
  {
    sub_252F733E4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for HomeDisambiguationModel(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_252F70A80()
{
  result = qword_27F57BDB0;
  if (!qword_27F57BDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BDB8, &qword_252F74E58);
    sub_252F65A4C(&qword_27F57BD80, &qword_27F57BD68, &unk_252F74DC0);
    sub_252F65A4C(&qword_27F57BD88, &qword_27F57BD58, &qword_252F74DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BDB0);
  }

  return result;
}

uint64_t sub_252F70B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252F70BD0()
{
  v1 = (type metadata accessor for HomeTarget(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for HomeDisambiguationView() - 8);
  v5 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v22 = *(*v4 + 64);
  v6 = v0 + v2;
  v7 = sub_252F73024();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = v1[7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v10 = *(*(v9 - 8) + 8);
  v10(v6 + v8, v9);
  v11 = v1[8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BC70, &qword_252F74960);
  (*(*(v12 - 8) + 8))(v6 + v11, v12);

  v13 = v4[7];
  v14 = sub_252F733E4();
  (*(*(v14 - 8) + 8))(v0 + v5 + v13, v14);
  v15 = v0 + v5 + v4[8];
  v10(v15, v9);
  v16 = type metadata accessor for HomeDisambiguationModel(0);
  v17 = v16[5];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BCA8, &qword_252F74978);
  (*(*(v18 - 8) + 8))(v15 + v17, v18);
  v19 = v16[6];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  (*(*(v20 - 8) + 8))(v15 + v19, v20);
  v10(v15 + v16[7], v9);

  return swift_deallocObject();
}

uint64_t sub_252F70ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252F70F40()
{
  v1 = *(type metadata accessor for HomeTarget(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for HomeDisambiguationView() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_252F70190(v0 + v2, v5);
}

unint64_t sub_252F7100C()
{
  result = qword_27F57BDD8;
  if (!qword_27F57BDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BDC8, &unk_252F74E68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BDC0, &qword_252F74E60);
    sub_252F73464();
    sub_252F717F4(&qword_27F57BDD0, MEMORY[0x277D63D08]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_252F7113C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BDD8);
  }

  return result;
}

unint64_t sub_252F7113C()
{
  result = qword_27F57BDE0;
  if (!qword_27F57BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BDE0);
  }

  return result;
}

uint64_t sub_252F71190(uint64_t a1)
{
  v2 = type metadata accessor for HomeTarget(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252F711EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_252F712B8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_252F71794(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_252F712B8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_252F713C4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_252F735F4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_252F713C4(uint64_t a1, unint64_t a2)
{
  v4 = sub_252F71410(a1, a2);
  sub_252F71540(&unk_2864D98D8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_252F71410(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_252F7162C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_252F735F4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_252F73524();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_252F7162C(v10, 0);
        result = sub_252F735B4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_252F71540(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_252F716A0(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_252F7162C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BDE8, &qword_252F74E78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_252F716A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BDE8, &qword_252F74E78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_252F71794(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_252F717F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for HomeDisambiguationView() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v4 = v1[7];
  v5 = sub_252F733E4();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = v3 + v1[8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B898, &qword_252F73C20);
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = type metadata accessor for HomeDisambiguationModel(0);
  v10 = v9[5];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BCA8, &qword_252F74978);
  (*(*(v11 - 8) + 8))(&v6[v10], v11);
  v12 = v9[6];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57B8A0, &qword_252F73C28);
  (*(*(v13 - 8) + 8))(&v6[v12], v13);
  v8(&v6[v9[7]], v7);

  return swift_deallocObject();
}

uint64_t sub_252F71A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for HomeDisambiguationView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_252F6FA90(a1, a2, v8, a3);
}

uint64_t sub_252F71AC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BDF0, &qword_252F74E88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F71B40()
{
  v0 = sub_252F73174();
  __swift_allocate_value_buffer(v0, qword_27F57BE00);
  __swift_project_value_buffer(v0, qword_27F57BE00);
  return sub_252F73164();
}

uint64_t sub_252F71BE0()
{
  v0 = sub_252F73174();
  __swift_allocate_value_buffer(v0, qword_27F57BE18);
  __swift_project_value_buffer(v0, qword_27F57BE18);
  return sub_252F73164();
}

uint64_t sub_252F71C84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_252F73174();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_252F71DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614E746567726174 && a2 == 0xEA0000000000656DLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_252F736B4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_252F71E60(uint64_t a1)
{
  v2 = sub_252F72014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F71E9C(uint64_t a1)
{
  v2 = sub_252F72014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SendAnnouncementNeedsValueModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BE30, &qword_252F74ED0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F72014();
  sub_252F73704();
  sub_252F73694();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_252F72014()
{
  result = qword_27F57BE38;
  if (!qword_27F57BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BE38);
  }

  return result;
}

uint64_t SendAnnouncementNeedsValueModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BE40, &qword_252F74ED8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F72014();
  sub_252F736F4();
  if (!v2)
  {
    v11 = sub_252F73654();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_252F721FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BE30, &qword_252F74ED0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F72014();
  sub_252F73704();
  sub_252F73694();
  return (*(v4 + 8))(v7, v3);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_252F72344(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_252F723A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_252F72414()
{
  result = qword_27F57BE48;
  if (!qword_27F57BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BE48);
  }

  return result;
}

unint64_t sub_252F7246C()
{
  result = qword_27F57BE50;
  if (!qword_27F57BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BE50);
  }

  return result;
}

unint64_t sub_252F724C4()
{
  result = qword_27F57BE58;
  if (!qword_27F57BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BE58);
  }

  return result;
}

double SendAnnouncementView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_252F73234();
  v50 = 1;
  sub_252F727F0(v3, v4, &v38);
  v59 = v46;
  v60 = v47;
  v55 = v42;
  v56 = v43;
  v57 = v44;
  v58 = v45;
  v51 = v38;
  v52 = v39;
  v53 = v40;
  v54 = v41;
  v62[8] = v46;
  v62[9] = v47;
  v62[4] = v42;
  v62[5] = v43;
  v62[6] = v44;
  v62[7] = v45;
  v62[0] = v38;
  v62[1] = v39;
  v61 = v48;
  v63 = v48;
  v62[2] = v40;
  v62[3] = v41;
  sub_252F72F8C(&v51, &v37, &qword_27F57BE60, &qword_252F750D0);
  sub_252F65E0C(v62, &qword_27F57BE60, &qword_252F750D0);
  *&v49[119] = v58;
  *&v49[135] = v59;
  *&v49[151] = v60;
  *&v49[55] = v54;
  *&v49[71] = v55;
  *&v49[87] = v56;
  *&v49[103] = v57;
  *&v49[7] = v51;
  *&v49[23] = v52;
  v49[167] = v61;
  *&v49[39] = v53;
  v6 = v50;
  v7 = sub_252F73324();
  v8 = objc_opt_self();
  v9 = [v8 mainScreen];
  [v9 applicationFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v64.origin.x = v11;
  v64.origin.y = v13;
  v64.size.width = v15;
  v64.size.height = v17;
  CGRectGetWidth(v64);
  v18 = [v8 mainScreen];
  [v18 applicationFrame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v65.origin.x = v20;
  v65.origin.y = v22;
  v65.size.width = v24;
  v65.size.height = v26;
  CGRectGetHeight(v65);
  sub_252F73394();
  sub_252F731C4();
  v27 = sub_252F731D4();
  LOBYTE(v9) = sub_252F73254();
  v28 = sub_252F73334();
  v29 = sub_252F73254();
  v30 = *&v49[96];
  *(a1 + 129) = *&v49[112];
  v31 = *&v49[144];
  *(a1 + 145) = *&v49[128];
  *(a1 + 161) = v31;
  v32 = *&v49[32];
  *(a1 + 65) = *&v49[48];
  v33 = *&v49[80];
  *(a1 + 81) = *&v49[64];
  *(a1 + 97) = v33;
  *(a1 + 113) = v30;
  v34 = *&v49[16];
  *(a1 + 17) = *v49;
  *(a1 + 33) = v34;
  *(a1 + 49) = v32;
  v35 = v39;
  *(a1 + 200) = v38;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 177) = *&v49[160];
  *(a1 + 192) = v7;
  *(a1 + 216) = v35;
  result = *&v40;
  *(a1 + 232) = v40;
  *(a1 + 248) = v27;
  *(a1 + 256) = v9;
  *(a1 + 264) = v28;
  *(a1 + 272) = v29;
  return result;
}

uint64_t sub_252F727F0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57BED8, &qword_252F751A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - v8;
  if (a2)
  {
    v10 = a2;
  }

  else
  {

    v10 = 0xEA00000000006572;
    a1 = 0x6568777972657645;
  }

  *&v48 = a1;
  *(&v48 + 1) = v10;
  sub_252F65B48();

  v11 = sub_252F73294();
  v13 = v12;
  v38 = v12;
  v39 = v14;
  v16 = v15;
  v17 = v14;
  v18 = sub_252F73264();
  sub_252F73184();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = v16 & 1;
  v64 = v16 & 1;
  HIDWORD(v37) = v16 & 1;
  v63 = 0;
  v28 = sub_252F73344();
  v29 = sub_252F73274();
  (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  v30 = sub_252F73284();
  sub_252F65E0C(v9, &qword_27F57BED8, &qword_252F751A0);
  KeyPath = swift_getKeyPath();
  *&v44 = v11;
  *(&v44 + 1) = v13;
  LOBYTE(v45) = v27;
  *(&v45 + 1) = *v43;
  DWORD1(v45) = *&v43[3];
  *(&v45 + 1) = v17;
  LOBYTE(v46) = v18;
  *(&v46 + 1) = *v42;
  DWORD1(v46) = *&v42[3];
  *(&v46 + 1) = v20;
  *&v47[0] = v22;
  *(&v47[0] + 1) = v24;
  *&v47[1] = v26;
  BYTE8(v47[1]) = 0;
  *(v51 + 9) = *(v47 + 9);
  v50 = v46;
  v51[0] = v47[0];
  v48 = v44;
  v49 = v45;
  v41 = 1;
  v40 = 1;
  v32 = v44;
  v33 = v45;
  v34 = v51[1];
  *(a3 + 48) = v47[0];
  *(a3 + 64) = v34;
  v35 = v50;
  *(a3 + 16) = v33;
  *(a3 + 32) = v35;
  *a3 = v32;
  *(a3 + 80) = 0;
  *(a3 + 88) = 1;
  *(a3 + 96) = v28;
  *(a3 + 104) = KeyPath;
  *(a3 + 112) = v30;
  *(a3 + 120) = sub_252F72B80;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 1;
  sub_252F72F8C(&v44, v52, &unk_27F57BEE0, &qword_252F751D8);

  sub_252F72FF4(sub_252F72B80);
  sub_252F72FF4(0);

  sub_252F73004(sub_252F72B80);
  sub_252F73004(0);
  v52[0] = v11;
  v52[1] = v38;
  v53 = BYTE4(v37);
  *v54 = *v43;
  *&v54[3] = *&v43[3];
  v55 = v39;
  v56 = v18;
  *v57 = *v42;
  *&v57[3] = *&v42[3];
  v58 = v20;
  v59 = v22;
  v60 = v24;
  v61 = v26;
  v62 = 0;
  return sub_252F65E0C(v52, &unk_27F57BEE0, &qword_252F751D8);
}

void sub_252F72B80()
{
  if (qword_27F57B858 != -1)
  {
    swift_once();
  }

  v0 = sub_252F73174();
  __swift_project_value_buffer(v0, qword_27F57BE18);
  oslog = sub_252F73154();
  v1 = sub_252F73564();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_252F60000, oslog, v1, "WAVEFORM!!", v2, 2u);
    MEMORY[0x2530B0AB0](v2, -1, -1);
  }
}

unint64_t sub_252F72C80()
{
  result = qword_27F57BE68;
  if (!qword_27F57BE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BE70, &qword_252F75168);
    sub_252F72D38();
    sub_252F65A4C(&qword_27F57BEC8, &qword_27F57BED0, &qword_252F75198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BE68);
  }

  return result;
}

unint64_t sub_252F72D38()
{
  result = qword_27F57BE78;
  if (!qword_27F57BE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BE80, &qword_252F75170);
    sub_252F72DC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BE78);
  }

  return result;
}

unint64_t sub_252F72DC4()
{
  result = qword_27F57BE88;
  if (!qword_27F57BE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BE90, &qword_252F75178);
    sub_252F72E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BE88);
  }

  return result;
}

unint64_t sub_252F72E50()
{
  result = qword_27F57BE98;
  if (!qword_27F57BE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F57BEA0, &qword_252F75180);
    sub_252F65A4C(&qword_27F57BEA8, &qword_27F57BEB0, &qword_252F75188);
    sub_252F65A4C(&qword_27F57BEB8, &qword_27F57BEC0, &qword_252F75190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F57BE98);
  }

  return result;
}

uint64_t sub_252F72F34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252F73214();
  *a1 = result;
  return result;
}

uint64_t sub_252F72F60(uint64_t *a1)
{
  v1 = *a1;

  return sub_252F73224();
}

uint64_t sub_252F72F8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_252F72FF4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_252F73004(uint64_t result)
{
  if (result)
  {
  }

  return result;
}