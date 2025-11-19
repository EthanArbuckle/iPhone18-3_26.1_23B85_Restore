__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_245B7434C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245B7436C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_245B743C0()
{
  v1 = *v0;
  sub_245B92FF0();
  MEMORY[0x245D7A680](v1);
  return sub_245B93010();
}

uint64_t sub_245B74434()
{
  v1 = *v0;
  sub_245B92FF0();
  MEMORY[0x245D7A680](v1);
  return sub_245B93010();
}

unint64_t sub_245B74478()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x7942656C75646F6DLL;
  }

  *v0;
  return result;
}

uint64_t sub_245B744C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7942656C75646F6DLL && a2 == 0xEE0065646F636574;
  if (v6 || (sub_245B92F50() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000245B93870 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_245B92F50();

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

uint64_t sub_245B745C8(uint64_t a1)
{
  v2 = sub_245B74D84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_245B74604(uint64_t a1)
{
  v2 = sub_245B74D84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_245B74640(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a4;
  v17[1] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34748, &qword_245B94298);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v12);
  v14 = v17 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_245B74D84();
  sub_245B93030();
  v18 = a2;
  v19 = a3;
  v20 = 0;
  sub_245B74E78(a2, a3);
  sub_245B74EE0();
  sub_245B92F10();
  sub_245B74A54(v18, v19);
  if (!v5)
  {
    LOBYTE(v18) = 1;
    sub_245B92F20();
  }

  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_245B747DC(uint64_t a1, uint64_t a2)
{
  result = sub_245B74A54(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_245B74814@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_245B74ABC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

_DWORD *sub_245B74864@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_245B748D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_245B74918(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_245B7497C(uint64_t a1)
{
  *(a1 + 8) = sub_245B749AC();
  result = sub_245B74A00();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_245B749AC()
{
  result = qword_27EE34720;
  if (!qword_27EE34720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34720);
  }

  return result;
}

unint64_t sub_245B74A00()
{
  result = qword_27EE34728;
  if (!qword_27EE34728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34728);
  }

  return result;
}

uint64_t sub_245B74A54(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_245B74A68(a1, a2);
  }

  return a1;
}

uint64_t sub_245B74A68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_245B74ABC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34730, &qword_245B94290);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v12 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_245B74D84();
  sub_245B93020();
  if (v1)
  {
    v10 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_245B74A54(0, 0xF000000000000000);
  }

  else
  {
    v13 = 0;
    sub_245B74E24();
    sub_245B92EE0();
    v10 = v12[0];
    v11 = v12[1];
    sub_245B74A54(0, 0xF000000000000000);
    LOBYTE(v12[0]) = 1;
    sub_245B92EF0();
    (*(v4 + 8))(v7, v3);
    sub_245B74E78(v10, v11);

    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_245B74A54(v10, v11);
  }

  return v10;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_245B74D84()
{
  result = qword_27EE34738;
  if (!qword_27EE34738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34738);
  }

  return result;
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

unint64_t sub_245B74E24()
{
  result = qword_27EE34740;
  if (!qword_27EE34740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34740);
  }

  return result;
}

uint64_t sub_245B74E78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_245B74E8C(a1, a2);
  }

  return a1;
}

uint64_t sub_245B74E8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_245B74EE0()
{
  result = qword_27EE34750;
  if (!qword_27EE34750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34750);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreMLSegmenterInput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CoreMLSegmenterInput.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_245B750C0()
{
  result = qword_27EE34760;
  if (!qword_27EE34760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34760);
  }

  return result;
}

unint64_t sub_245B75118()
{
  result = qword_27EE34768;
  if (!qword_27EE34768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34768);
  }

  return result;
}

unint64_t sub_245B75170()
{
  result = qword_27EE34770;
  if (!qword_27EE34770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34770);
  }

  return result;
}

uint64_t sub_245B751D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245B751F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void sub_245B7522C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_245B75294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34780, &unk_245B94440);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_245B75378(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34780, &unk_245B94440);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for E5MLCompilerInput()
{
  result = qword_27EE34788;
  if (!qword_27EE34788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_245B75490()
{
  sub_245B755CC(319, &qword_27EE34798, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_245B75574();
    if (v1 <= 0x3F)
    {
      sub_245B755CC(319, &qword_27EE347A8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_245B75574()
{
  if (!qword_27EE347A0)
  {
    sub_245B925E0();
    v0 = sub_245B92D70();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE347A0);
    }
  }
}

void sub_245B755CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_245B7561C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE347E8, &qword_245B944E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_245B75F44();
  sub_245B93030();
  v12 = v3[1];
  v21 = *v3;
  v22 = v12;
  v20 = 0;
  sub_245B74E78(v21, v12);
  sub_245B74EE0();
  sub_245B92F10();
  sub_245B74A54(v21, v22);
  if (!v2)
  {
    v13 = type metadata accessor for E5MLCompilerInput();
    v14 = v13[5];
    LOBYTE(v21) = 1;
    sub_245B925E0();
    sub_245B760A0(&qword_27EE347F0, MEMORY[0x277CC9260]);
    sub_245B92F10();
    v15 = (v3 + v13[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v21) = 2;
    sub_245B92F20();
    v21 = *(v3 + v13[7]);
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE347D8, &qword_245B944D8);
    sub_245B760E8(&qword_27EE347F8);
    sub_245B92F30();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_245B758A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34780, &unk_245B94440);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v41 = &v35 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE347C0, &qword_245B944D0);
  v40 = *(v43 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v43, v8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for E5MLCompilerInput();
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v16 = xmmword_245B94430;
  v17 = v12[7];
  v18 = sub_245B925E0();
  v19 = *(*(v18 - 8) + 56);
  v39 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = &v16[v12[8]];
  *v20 = 0;
  *(v20 + 1) = 0xE000000000000000;
  v21 = v12[9];
  *&v16[v21] = MEMORY[0x277D84F90];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_245B75F44();
  v42 = v10;
  v23 = v44;
  sub_245B93020();
  if (v23)
  {
    v34 = a1;
  }

  else
  {
    v36 = v21;
    v37 = v20;
    v44 = a1;
    v25 = v40;
    v24 = v41;
    v47 = 0;
    sub_245B74E24();
    v26 = v42;
    sub_245B92EE0();
    v28 = v45;
    v27 = v46;
    sub_245B74A54(*v16, *(v16 + 1));
    *v16 = v28;
    *(v16 + 1) = v27;
    v29 = v43;
    LOBYTE(v45) = 1;
    sub_245B760A0(&qword_27EE347D0, MEMORY[0x277CC9260]);
    sub_245B92EE0();
    sub_245B75ED4(v24, &v16[v39]);
    LOBYTE(v45) = 2;
    v30 = sub_245B92EF0();
    v32 = v37;
    *v37 = v30;
    v32[1] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE347D8, &qword_245B944D8);
    v47 = 3;
    sub_245B760E8(&qword_27EE347E0);
    sub_245B92F00();
    (*(v25 + 8))(v26, v29);
    *&v16[v36] = v45;
    sub_245B7603C(v16, v38);
    v34 = v44;
  }

  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_245B75F98(v16);
}

unint64_t sub_245B75CC4()
{
  v1 = 0x7942656C75646F6DLL;
  v2 = 0x6C50746567726174;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x694474757074756FLL;
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

uint64_t sub_245B75D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_245B763B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_245B75D9C(uint64_t a1)
{
  v2 = sub_245B75F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_245B75DD8(uint64_t a1)
{
  v2 = sub_245B75F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_245B75E50(uint64_t a1)
{
  *(a1 + 8) = sub_245B760A0(&qword_27EE347B0, type metadata accessor for E5MLCompilerInput);
  result = sub_245B760A0(&qword_27EE347B8, type metadata accessor for E5MLCompilerInput);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_245B75ED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34780, &unk_245B94440);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_245B75F44()
{
  result = qword_27EE347C8;
  if (!qword_27EE347C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE347C8);
  }

  return result;
}

uint64_t sub_245B75F98(uint64_t a1)
{
  v2 = type metadata accessor for E5MLCompilerInput();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_245B7603C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for E5MLCompilerInput();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245B760A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_245B760E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE347D8, &qword_245B944D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for E5MLCompilerInput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for E5MLCompilerInput.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_245B762B0()
{
  result = qword_27EE34800;
  if (!qword_27EE34800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34800);
  }

  return result;
}

unint64_t sub_245B76308()
{
  result = qword_27EE34808;
  if (!qword_27EE34808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34808);
  }

  return result;
}

unint64_t sub_245B76360()
{
  result = qword_27EE34810;
  if (!qword_27EE34810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34810);
  }

  return result;
}

uint64_t sub_245B763B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7942656C75646F6DLL && a2 == 0xEE0065646F636574;
  if (v4 || (sub_245B92F50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x694474757074756FLL && a2 == 0xEF79726F74636572 || (sub_245B92F50() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C50746567726174 && a2 == 0xEE006D726F667461 || (sub_245B92F50() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000245B93890 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_245B92F50();

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

uint64_t sub_245B76538()
{
  v0 = sub_245B926E0();
  __swift_allocate_value_buffer(v0, qword_27EE36010);
  __swift_project_value_buffer(v0, qword_27EE36010);
  return sub_245B926D0();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_245B76660(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = sub_245B925E0();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245B76754, 0, 0);
}

uint64_t sub_245B76754()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];
  sub_245B92900();
  sub_245B92580();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v7 = [objc_opt_self() defaultManager];
  sub_245B925B0();
  v8 = sub_245B92BC0();

  LODWORD(v5) = [v7 fileExistsAtPath_];

  v9 = v0[8];
  if (v5)
  {
    v10 = v0[3];
    v11 = v0[8];
    sub_245B925B0();
    sub_245B92C00();

    v12 = BNNSGraphContextMakeFromFile();
    v14 = v13;

    *(v10 + 16) = v12;
    *(v10 + 24) = v14;
    v15 = v0[8];
    v16 = v0[2];
    if (v12)
    {
      v17 = v0[7];
      v18 = v0[5];
      v19 = sub_245B92910();
      (*(*(v19 - 8) + 8))(v16, v19);
      v6(v15, v18);

      v20 = v0[1];
      v21 = v0[3];

      return v20(v21);
    }

    v28 = v0[5];
    v29 = v0[3];
    type metadata accessor for BNNSDelegate.BNNSError();
    sub_245B77270(&qword_27EE34820, 255, type metadata accessor for BNNSDelegate.BNNSError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v30 = sub_245B92910();
    (*(*(v30 - 8) + 8))(v16, v30);
    v6(v15, v28);
  }

  else
  {
    v24 = v0[5];
    v23 = v0[6];
    v34 = v0[3];
    v35 = v0[4];
    v25 = v0[2];
    type metadata accessor for BNNSDelegate.BNNSError();
    sub_245B77270(&qword_27EE34820, 255, type metadata accessor for BNNSDelegate.BNNSError);
    swift_allocError();
    (*(v23 + 16))(v26, v9, v24);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v27 = sub_245B92910();
    (*(*(v27 - 8) + 8))(v25, v27);
    v6(v9, v24);
    swift_deallocPartialClassInstance();
  }

  v32 = v0[7];
  v31 = v0[8];

  v33 = v0[1];

  return v33();
}

uint64_t sub_245B76B64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  BNNSGraphContextDestroy_v2();

  return swift_deallocClassInstance();
}

uint64_t sub_245B76BC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  swift_allocObject();
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_245B76C6C;

  return sub_245B76660(a2);
}

uint64_t sub_245B76C6C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_245B76DA4()
{
  type metadata accessor for BNNSDelegate.BNNSError();
  sub_245B77270(&qword_27EE34820, 255, type metadata accessor for BNNSDelegate.BNNSError);
  swift_allocError();
  *v0 = 0xD000000000000023;
  v0[1] = 0x8000000245B93910;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t type metadata accessor for BNNSDelegate.BNNSError()
{
  result = qword_27EE34838;
  if (!qword_27EE34838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_245B76F78(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v2 = sub_245B92BF0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v27 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_245B92940();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_245B92950();
  v24 = *(result + 16);
  if (!v24)
  {
  }

  v12 = 0;
  v22 = (v28 + 8);
  v23 = v28 + 16;
  while (v12 < *(result + 16))
  {
    v13 = result;
    (*(v28 + 16))(v10, result + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v12, v6);
    v14 = sub_245B92930();
    v16 = v15;
    sub_245B92BE0();
    v17 = sub_245B92BD0();
    v19 = v18;
    result = sub_245B74A68(v14, v16);
    if (!v19)
    {
      goto LABEL_8;
    }

    ++v12;
    v29 = 0x2E534E4E42;
    v30 = 0xE500000000000000;
    v34 = sub_245B92920();
    v20 = sub_245B92F40();
    MEMORY[0x245D7A2F0](v20);

    v31 = v25;
    v32 = v17;
    v33 = v19;
    sub_245B7721C();

    sub_245B92790();
    (*v22)(v10, v6);

    result = v13;
    if (v24 == v12)
    {
    }
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_245B7721C()
{
  result = qword_27EE34828;
  if (!qword_27EE34828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34828);
  }

  return result;
}

uint64_t sub_245B77270(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_245B77308()
{
  result = sub_245B925E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_245B77384(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_245B773CC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_245B77424(uint64_t a1)
{
  v2 = sub_245B92A70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v23, v10);
  v12 = &v21 - v11;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v24 = MEMORY[0x277D84F90];
    sub_245B852B0(0, v13, 0);
    v16 = *(v3 + 16);
    v15 = v3 + 16;
    v14 = v24;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v21 = *(v15 + 56);
    v22 = v16;
    do
    {
      v22(v7, v17, v2);
      swift_dynamicCast();
      v24 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_245B852B0(v18 > 1, v19 + 1, 1);
        v14 = v24;
      }

      *(v14 + 16) = v19 + 1;
      sub_245B77EDC(v12, v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19);
      v17 += v21;
      --v13;
    }

    while (v13);
  }

  return v14;
}

uint64_t sub_245B77658()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_245B776C0(uint64_t result)
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

  v3 = sub_245B848B4(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
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

uint64_t sub_245B777F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v56 = a7;
  v55 = a6;
  v11 = sub_245B92A10();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v66 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_245B92A30();
  v16 = *(v65 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v65, v18);
  v64 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
  v21 = *(v20 - 8);
  v22 = *(v21 + 8);
  v24 = MEMORY[0x28223BE20](v20 - 8, v23);
  v67 = (&v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24, v26);
  v68 = &v51 - v27;
  v28 = *(a5 + 16);
  v53 = *(a5 + 24);
  v54 = v28;
  v29 = *a2;

  v30 = sub_245B77424(a1);
  v69 = v29;
  v31 = &v69;
  sub_245B776C0(v30);
  v32 = v69;
  v33 = *(v69 + 16);
  if (v33)
  {
    v69 = MEMORY[0x277D84F90];
    sub_245B85290(0, v33, 0);
    v34 = v12;
    v35 = 0;
    v36 = v69;
    v63 = v32 + ((v21[80] + 32) & ~v21[80]);
    v71 = *MEMORY[0x277D36B10];
    v61 = (v34 + 88);
    v62 = (v16 + 8);
    v60 = *MEMORY[0x277D36AF8];
    v52 = v34;
    v57 = (v34 + 96);
    v58 = v21;
    v59 = v11;
    while (v35 < *(v32 + 16))
    {
      v37 = v33;
      v38 = v68;
      sub_245B77E04(v63 + *(v21 + 9) * v35, v68);
      v7 = v67;
      sub_245B77E04(v38, v67);
      v31 = sub_245B92A70();
      v33 = *(v31 - 1);
      if ((*(v33 + 48))(v7, 1, v31) == 1)
      {
        goto LABEL_20;
      }

      v39 = (*(v33 + 88))(v7, v31);
      v21 = v66;
      if (v39 != v71)
      {
        goto LABEL_22;
      }

      (*(v33 + 96))(v7, v31);
      v7 = *v7;
      v33 = v64;
      sub_245B92A40();
      v31 = v33;
      sub_245B92A20();
      (*v62)(v33, v65);
      v40 = (*v61)(v21, v11);
      if (v40 != v60)
      {
        goto LABEL_21;
      }

      (*v57)(v21, v11);
      v31 = *v21;
      v41 = sub_245B929F0();
      v43 = v42;

      sub_245B77E74(v68);
      if (v41)
      {
        v44 = v43 - v41;
      }

      else
      {
        v44 = 0;
      }

      v69 = v36;
      v46 = *(v36 + 16);
      v45 = *(v36 + 24);
      v7 = (v46 + 1);
      if (v46 >= v45 >> 1)
      {
        v31 = &v69;
        sub_245B85290((v45 > 1), v46 + 1, 1);
        v36 = v69;
      }

      ++v35;
      *(v36 + 16) = v7;
      v47 = v36 + 16 * v46;
      *(v47 + 32) = v41;
      *(v47 + 40) = v44;
      v33 = v37;
      v21 = v58;
      v11 = v59;
      if (v37 == v35)
      {

        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_20:
    sub_245B77E74(v7);
    __break(1u);
LABEL_21:
    (*(v52 + 8))(v21, v11);
    __break(1u);
LABEL_22:
    (*(v33 + 8))(v7, v31);
    __break(1u);
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
LABEL_15:
    v48 = *(v36 + 16);
    sub_245B92C00();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_245B847B0(0, v48, 0, v36);
    }

    LODWORD(v35) = BNNSGraphContextExecute_v2();

    if ((v35 & 0x80000000) == 0)
    {
    }
  }

  v69 = 0;
  v70 = 0xE000000000000000;
  sub_245B92E50();

  v69 = 0xD000000000000029;
  v70 = 0x8000000245B93970;
  v72 = v35;
  v50 = sub_245B92F40();
  MEMORY[0x245D7A2F0](v50);

  result = sub_245B92E90();
  __break(1u);
  return result;
}

uint64_t sub_245B77E04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245B77E74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_245B77EDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_245B77F4C(uint64_t a1)
{
  v2 = sub_245B92770();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D36A88])
  {
    goto LABEL_2;
  }

  if (v8 == *MEMORY[0x277D36A90])
  {
    v9 = 0xC00000000;
    goto LABEL_5;
  }

  if (v8 == *MEMORY[0x277D36A98])
  {
LABEL_2:
    v9 = 0;
LABEL_5:
    v10 = 1;
    return v9 | v10;
  }

  if (v8 == *MEMORY[0x277D36AA0])
  {
    v9 = 0x300000000;
    goto LABEL_5;
  }

  if (v8 == *MEMORY[0x277D36AA8])
  {
    v9 = 0x600000000;
    goto LABEL_5;
  }

  if (v8 == *MEMORY[0x277D36AB0])
  {
    v9 = 0x300000000;
LABEL_16:
    v10 = 4;
    return v9 | v10;
  }

  if (v8 == *MEMORY[0x277D36AB8])
  {
    v9 = 0x600000000;
    goto LABEL_16;
  }

  type metadata accessor for E5MLDelegate.E5MLError();
  sub_245B7C384();
  swift_allocError();
  v13 = v12;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_245B92E50();
  MEMORY[0x245D7A2F0](0xD000000000000019, 0x8000000245B93B80);
  sub_245B92E80();
  v14 = v16;
  *v13 = v15;
  v13[1] = v14;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_245B781CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_245B92A70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v12, a2, v7);
  if ((*(v8 + 88))(v12, v7) == *MEMORY[0x277D36B10])
  {
    v13 = (*(v8 + 96))(v12, v7);
    v14 = *v12;
    MEMORY[0x28223BE20](v13, v15);
    *(&v18 - 4) = v14;
    *(&v18 - 3) = a3;
    *(&v18 - 2) = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34870, &qword_245B94778);
    sub_245B929D0();
  }

  else
  {
    (*(v8 + 8))(v12, v7);
    type metadata accessor for E5MLDelegate.E5MLError();
    sub_245B7C384();
    swift_allocError();
    *v17 = 0xD000000000000016;
    v17[1] = 0x8000000245B93A30;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_245B78418(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t **a6)
{
  v201 = a6;
  v217 = a5;
  v215 = a4;
  v222 = a3;
  v245 = *MEMORY[0x277D85DE8];
  v193 = sub_245B92B90();
  v229 = *(v193 - 8);
  v9 = *(v229 + 64);
  v11 = MEMORY[0x28223BE20](v193, v10);
  v225 = &v182 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v227 = &v182 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
  v194 = *(v15 - 8);
  v16 = *(v194 + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v200 = (&v182 - v18);
  v19 = sub_245B92800();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v198 = &v182 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_245B92770();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v197 = &v182 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_245B92780();
  v214 = *(v228 - 8);
  v27 = *(v214 + 64);
  v29 = MEMORY[0x28223BE20](v228, v28);
  v219 = &v182 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v218 = &v182 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v216 = &v182 - v35;
  v230 = sub_245B92830();
  v220 = *(v230 - 8);
  v36 = *(v220 + 64);
  v38 = MEMORY[0x28223BE20](v230, v37);
  v195 = &v182 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38, v40);
  v196 = &v182 - v42;
  MEMORY[0x28223BE20](v41, v43);
  v45 = &v182 - v44;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34888, &unk_245B95100);
  v221 = *(v223 - 8);
  v46 = *(v221 + 64);
  MEMORY[0x28223BE20](v223, v47);
  v205 = (&v182 - v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34890, &unk_245B94790);
  v50 = *(*(v49 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v49 - 8, v51);
  v226 = &v182 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52, v54);
  v224 = (&v182 - v55);
  v56 = sub_245B92A70();
  v57 = *(*(v56 - 8) + 64);
  v59 = MEMORY[0x28223BE20](v56, v58);
  v62 = (&v182 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = MEMORY[0x277D84F90];
  v242 = MEMORY[0x277D84F90];
  v64 = *(a2 + 16);
  v236 = v59;
  v237 = v45;
  v238 = v60;
  v232 = v64;
  if (v64)
  {
    v240 = a1;
    v65 = 0;
    v234 = v60 + 88;
    v235 = v60 + 16;
    v233 = *MEMORY[0x277D36B10];
    v231 = (v60 + 96);
    v66 = (a2 + 40);
    v67 = MEMORY[0x277D84F90];
    v63 = MEMORY[0x277D84F90];
    while (1)
    {
      v68 = *(v66 - 1);
      v69 = *v66;
      v70 = sub_245B92C00();
      v71 = strdup((v70 + 32));

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_245B84AA4(0, *(v63 + 2) + 1, 1, v63);
      }

      v45 = *(v63 + 2);
      v72 = *(v63 + 3);
      v6 = v45 + 1;
      if (v45 >= v72 >> 1)
      {
        v63 = sub_245B84AA4((v72 > 1), v45 + 1, 1, v63);
      }

      *(v63 + 2) = v6;
      *&v63[8 * v45 + 32] = v71;
      if (v65 >= *(v240 + 16))
      {
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      v73 = v238;
      (*(v238 + 16))(v62, v240 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v65, v56);
      v74 = (*(v73 + 88))(v62, v56);
      if (v74 != v233)
      {
        break;
      }

      (*v231)(v62, v56);
      v75 = *v62;

      v77 = v239;
      v78 = sub_245B7C5DC(v76);
      v239 = v77;
      if (v77)
      {

        goto LABEL_83;
      }

      v6 = v78;
      type metadata accessor for E5RTOperandDescriptor();
      v79 = swift_allocObject();
      *(v79 + 16) = 0;
      v243 = 0;
      if (!*(v6 + 16))
      {
LABEL_103:
        result = sub_245B92E90();
        __break(1u);
        return result;
      }

      v80 = v79;

      if (e5rt_operand_desc_retain_from_tensor_desc() || (v81 = v243) == 0)
      {

        type metadata accessor for E5MLDelegate.E5MLError();
        sub_245B7C384();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        goto LABEL_83;
      }

      *(v80 + 16) = v81;

      MEMORY[0x245D7A390](v82);
      if (*((v242 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v242 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v213 = *((v242 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_245B92D30();
      }

      ++v65;
      sub_245B92D50();

      v67 = v242;
      v66 += 2;
      v56 = v236;
      v45 = v237;
      if (v232 == v65)
      {
        goto LABEL_18;
      }
    }

    (*(v238 + 8))(v62, v56);
    type metadata accessor for E5MLDelegate.E5MLError();
    sub_245B7C384();
    swift_allocError();
    *v164 = 0xD000000000000029;
    v164[1] = 0x8000000245B93A70;
LABEL_81:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_82:

    goto LABEL_83;
  }

  v67 = MEMORY[0x277D84F90];
LABEL_18:
  v199 = v63;
  v56 = v67 >> 62;
  if (v67 >> 62)
  {
    goto LABEL_96;
  }

  v83 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_20:
  v84 = v224;
  v240 = v67;
  if (v83)
  {
    v243 = MEMORY[0x277D84F90];
    v85 = &v243;
    sub_245B852F0(0, v83 & ~(v83 >> 63), 0);
    if (v83 < 0)
    {
      __break(1u);
      goto LABEL_98;
    }

    v86 = 0;
    v87 = v243;
    v88 = v67 & 0xC000000000000001;
    do
    {
      if (v88)
      {
        v89 = MEMORY[0x245D7A4E0](v86, v67);
      }

      else
      {
        v90 = *(v67 + 8 * v86 + 32);
      }

      v91 = *(v89 + 16);

      v243 = v87;
      v93 = *(v87 + 16);
      v92 = *(v87 + 24);
      if (v93 >= v92 >> 1)
      {
        sub_245B852F0((v92 > 1), v93 + 1, 1);
        v87 = v243;
      }

      ++v86;
      *(v87 + 16) = v93 + 1;
      *(v87 + 8 * v93 + 32) = v91;
      v67 = v240;
    }

    while (v83 != v86);
    v45 = v237;
  }

  v94 = *(v222 + 16);
  v6 = v84;
  if (v56)
  {
    sub_245B92DB0();
  }

  else
  {
    v95 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v96 = v199;
  v97 = (v199 + 32);
  v98 = e5rt_execution_stream_operation_reshape_operation();

  for (i = *(v96 + 2); i; --i)
  {
    v102 = *v97++;
    v101 = v102;
    if (v102)
    {
      free(v101);
    }
  }

  if (v98)
  {

    type metadata accessor for E5MLDelegate.E5MLError();
    sub_245B7C384();
    swift_allocError();
    strcpy(v100, "Reshape failed");
    v100[15] = -18;
    goto LABEL_81;
  }

  v85 = *v201;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v190 = v85;
    goto LABEL_42;
  }

LABEL_98:
  v190 = sub_245B7D678(v85);
LABEL_42:
  v104 = v228;
  v105 = v216;
  v106 = v223;
  v56 = 0;
  v107 = *(v215 + 16);
  *v201 = v190;
  v208 = (v214 + 16);
  v211 = (v221 + 56);
  v210 = (v221 + 48);
  v207 = (v214 + 32);
  v222 = v214 + 88;
  LODWORD(v221) = *MEMORY[0x277D36AC8];
  v191 = *MEMORY[0x277D36AC0];
  v206 = (v214 + 96);
  v192 = (v214 + 8);
  v212 = (v220 + 16);
  v204 = (v220 + 8);
  v234 = v229 + 88;
  v235 = v229 + 16;
  v233 = *MEMORY[0x277D36B40];
  v231 = (v229 + 96);
  v232 = (v229 + 8);
  v188 = *MEMORY[0x277D36B10];
  v187 = (v238 + 104);
  v186 = (v238 + 56);
  v202 = v107;
LABEL_45:
  v108 = v6;
  v6 = v226;
  v109 = v56 >= v107;
  if (v56 == v107)
  {
LABEL_46:
    v110 = 1;
    v56 = v107;
    goto LABEL_50;
  }

  while (1)
  {
    if (v109)
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      v83 = sub_245B92DB0();
      goto LABEL_20;
    }

    if (__OFADD__(v56, 1))
    {
      goto LABEL_95;
    }

    v111 = v214;
    v112 = v215 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v56;
    v113 = *(v106 + 48);
    v114 = v205;
    *v205 = v56;
    (*(v111 + 16))(v114 + v113, v112, v104);
    v115 = v114;
    v6 = v226;
    sub_245B7CD64(v115, v226, &qword_27EE34888, &unk_245B95100);
    v110 = 0;
    ++v56;
    v108 = v224;
LABEL_50:
    (*v211)(v6, v110, 1, v106);
    sub_245B7CD64(v6, v108, &qword_27EE34890, &unk_245B94790);
    if ((*v210)(v108, 1, v106) == 1)
    {

      goto LABEL_83;
    }

    v116 = v108;
    v117 = *v108;
    v6 = v116;
    (*v207)(v105, v116 + *(v106 + 48), v104);
    v118 = *v222;
    v119 = (*v222)(v105, v104);
    if (v119 == v221)
    {
      (*v206)(v105, v104);
      v120 = *v105;
      v121 = swift_projectBox();
      v203 = *v212;
      v203(v45, v121, v230);
      goto LABEL_57;
    }

    v213 = v117;
    if (v119 != v191)
    {

      type metadata accessor for E5MLDelegate.E5MLError();
      sub_245B7C384();
      swift_allocError();
      v170 = v105;
      v172 = v171;
      v243 = 0;
      v244 = 0xE000000000000000;
      sub_245B92E50();
      MEMORY[0x245D7A2F0](0xD000000000000036, 0x8000000245B93B00);
      v241 = v213;
      v173 = sub_245B92F40();
      MEMORY[0x245D7A2F0](v173);

      v174 = v244;
      *v172 = v243;
      v172[1] = v174;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*v192)(v170, v104);
      goto LABEL_82;
    }

    v209 = v56;
    v122 = *v206;
    (*v206)(v105, v104);
    v238 = *v105;
    v123 = swift_projectBox();
    v124 = v218;
    v125 = *v208;
    (*v208)(v218, v123, v104);
    v125(v219, v124, v104);
    v126 = v219;
    v127 = v118(v219, v104);
    if (v127 != v221)
    {
      break;
    }

    (*v192)(v218, v104);
    v122(v126, v104);
    v128 = *v126;
    v129 = swift_projectBox();
    v203 = *v212;
    v203(v45, v129, v230);

    v105 = v216;
    v6 = v224;
    v56 = v209;
    v117 = v213;
LABEL_57:

    if (sub_245B927D0())
    {
      (*v204)(v45, v230);
      v106 = v223;
LABEL_44:
      v107 = v202;
      goto LABEL_45;
    }

    if (!*(v217 + 16) || (v130 = sub_245B8BA34(v117), (v131 & 1) == 0))
    {

      type metadata accessor for E5MLDelegate.E5MLError();
      sub_245B7C384();
      swift_allocError();
      v167 = v166;
      v243 = 0;
      v244 = 0xE000000000000000;
      sub_245B92E50();

      v243 = 0xD00000000000001DLL;
      v244 = 0x8000000245B93B40;
      v241 = v117;
      v168 = sub_245B92F40();
      MEMORY[0x245D7A2F0](v168);

      v169 = v244;
      *v167 = v243;
      v167[1] = v169;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*v204)(v45, v230);
      goto LABEL_82;
    }

    v132 = *(*(v217 + 56) + 8 * v130);
    LOBYTE(v243) = 0;
    v133 = *(v132 + 16);

    if (e5rt_io_port_has_known_shape() || (v243 & 1) == 0)
    {

      v106 = v223;
      (*v204)(v45, v230);
      goto LABEL_44;
    }

    v185 = v132;
    v134 = *(v132 + 16);
    type metadata accessor for E5RTTensorDescriptor();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    v243 = 0;
    if (e5rt_io_port_retain_tensor_desc() || (v136 = v243) == 0)
    {
      type metadata accessor for E5MLDelegate.E5MLError();
      sub_245B7C384();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
LABEL_90:

      (*v204)(v45, v230);

      goto LABEL_82;
    }

    v213 = v117;
    *(inited + 16) = v243;
    v137 = v239;
    v189 = sub_245B83D14();
    if (v137)
    {
      swift_setDeallocating();
      v243 = v136;
      e5rt_tensor_desc_release();
      goto LABEL_90;
    }

    v183 = v136;
    v184 = inited;
    v209 = v56;
    v239 = 0;
    v138 = sub_245B927C0();
    v6 = *(v138 + 16);
    if (v6)
    {
      v243 = MEMORY[0x277D84F90];
      v139 = v138;
      sub_245B852D0(0, v6, 0);
      v140 = v139;
      v56 = 0;
      v141 = v243;
      v220 = v139 + ((*(v229 + 80) + 32) & ~*(v229 + 80));
      v142 = v193;
      v45 = v227;
      v238 = v139;
      while (1)
      {
        if (v56 >= *(v140 + 16))
        {
          goto LABEL_93;
        }

        v143 = v229;
        v144 = *(v229 + 16);
        v67 = v235;
        v144(v45, v220 + *(v229 + 72) * v56, v142);
        v145 = v225;
        v144(v225, v45, v142);
        v146 = (*(v143 + 88))(v145, v142);
        if (v146 != v233)
        {
          break;
        }

        (*v232)(v45, v142);
        (*v231)(v145, v142);
        v147 = *v145;
        v243 = v141;
        v149 = *(v141 + 16);
        v148 = *(v141 + 24);
        if (v149 >= v148 >> 1)
        {
          sub_245B852D0((v148 > 1), v149 + 1, 1);
          v142 = v193;
          v141 = v243;
        }

        ++v56;
        *(v141 + 16) = v149 + 1;
        *(v141 + 8 * v149 + 32) = v147;
        v104 = v228;
        v45 = v227;
        v140 = v238;
        if (v6 == v56)
        {
          goto LABEL_72;
        }
      }

      *MEMORY[0x277D36B48];
      goto LABEL_103;
    }

LABEL_72:

    sub_245B927F0();
    sub_245B92810();
    v150 = *(v189 + 16);
    v151 = sub_245B92D40();
    v151[2] = v150 + 1;
    v151[4] = 1;
    v67 = v240;
    if (v150)
    {
      memset_pattern16(v151 + 5, &unk_245B947A0, 8 * v150);
    }

    v152 = v237;
    sub_245B92820();
    v153 = v196;
    sub_245B927E0();
    v154 = v230;
    v203(v195, v153, v230);
    v155 = sub_245B92A60();
    v156 = *(v155 + 48);
    v157 = *(v155 + 52);
    swift_allocObject();
    v158 = v239;
    v159 = sub_245B929B0();
    if (v158)
    {
      swift_setDeallocating();
      v243 = v183;
      e5rt_tensor_desc_release();

      v181 = *v204;
      (*v204)(v153, v154);
      v181(v152, v154);

      goto LABEL_82;
    }

    v239 = 0;
    v160 = v200;
    *v200 = v159;
    v161 = v236;
    (*v187)(v160, v188, v236);
    (*v186)(v160, 0, 1, v161);
    swift_setDeallocating();
    v243 = v183;
    e5rt_tensor_desc_release();

    v162 = *v204;
    (*v204)(v153, v154);
    v162(v152, v154);
    if ((v213 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_100:
      __break(1u);
    }

    v45 = v152;
    v163 = v190;
    v105 = v216;
    v106 = v223;
    v6 = v226;
    v108 = v224;
    if (v213 >= *(v190 + 16))
    {
      goto LABEL_100;
    }

    sub_245B7C498(v200, v190 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v213);
    *v201 = v163;
    v56 = v209;
    v107 = v202;
    v109 = v209 >= v202;
    if (v209 == v202)
    {
      goto LABEL_46;
    }
  }

  v175 = *v192;
  (*v192)(v126, v104);
  type metadata accessor for E5MLDelegate.E5MLError();
  sub_245B7C384();
  swift_allocError();
  v176 = v104;
  v178 = v177;
  v243 = 0;
  v244 = 0xE000000000000000;
  sub_245B92E50();
  MEMORY[0x245D7A2F0](0xD000000000000036, 0x8000000245B93B00);
  v241 = v213;
  v179 = sub_245B92F40();
  MEMORY[0x245D7A2F0](v179);

  v180 = v244;
  *v178 = v243;
  v178[1] = v180;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v175(v218, v176);

LABEL_83:
  v165 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245B79E5C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34880, &qword_245B94788);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3, v5);
  v9 = &v20 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = *(*v1 + 16);
  if (v11 == v12)
  {
    v13 = *(v7 + 56);

    return v13(a1, 1, 1, v3);
  }

  else
  {
    if (v11 >= v12)
    {
      __break(1u);
    }

    else
    {
      v21 = v7;
      v14 = sub_245B92A70();
      v15 = *(v14 - 8);
      v16 = *(v15 + 16);
      v17 = v10 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v11;
      v1[1] = v11 + 1;
      v18 = *(v3 + 48);
      v19 = v1[2];
      *v9 = v19;
      result = v16(&v9[v18], v17, v14);
      if (!__OFADD__(v19, 1))
      {
        v1[2] = v19 + 1;
        sub_245B7CD64(v9, a1, &qword_27EE34880, &qword_245B94788);
        return (*(v21 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_245B7A028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  result = sub_245B7DAE8();
  if (v3)
  {
    goto LABEL_2;
  }

  if (result)
  {
    v7 = *(a3 + 16);
    type metadata accessor for E5RTTensorDescriptor();
    *(swift_initStackObject() + 16) = 0;
    e5rt_io_port_retain_tensor_desc();
    type metadata accessor for E5MLDelegate.E5MLError();
    sub_245B7C384();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    result = swift_willThrow();
LABEL_2:
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  type metadata accessor for E5RTBufferObject();
  swift_allocObject();
  v8 = sub_245B7CDE4();
  v9 = *(a3 + 16);
  v10 = v8[2];
  if (e5rt_io_port_bind_buffer_object())
  {
    type metadata accessor for E5MLDelegate.E5MLError();
    sub_245B7C384();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_2;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245B7A368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a4;
  v72 = a5;
  v88 = a3;
  v73 = a2;
  v79 = sub_245B92A70();
  v6 = *(v79 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v79, v8);
  v70 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v82 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v80 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v87 = &v64 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34860, &qword_245B94770);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v83 = (&v64 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34868, &unk_245B95120);
  v26 = *(*(v25 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v25 - 8, v27);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v28, v31);
  v34 = (&v64 - v33);
  i = 0;
  v36 = *(a1 + 16);
  v85 = a1;
  v86 = (v21 + 56);
  v37 = (v21 + 48);
  v78 = (v6 + 48);
  v74 = (v6 + 32);
  v69 = (v6 + 16);
  v68 = (v6 + 88);
  v67 = *MEMORY[0x277D36B10];
  v65 = (v6 + 96);
  v66 = (v6 + 8);
  v38 = v87;
  v76 = (v21 + 48);
  v77 = v36;
  v39 = v36 == 0;
  if (v36)
  {
    goto LABEL_5;
  }

LABEL_4:
  v40 = 1;
  for (i = v36; ; ++i)
  {
    (*v86)(v30, v40, 1, v20);
    sub_245B7CD64(v30, v34, &qword_27EE34868, &unk_245B95120);
    result = (*v37)(v34, 1, v20);
    if (result == 1)
    {
      break;
    }

    v44 = *v34;
    sub_245B7CD64(v34 + *(v20 + 48), v38, &qword_27EE34848, &qword_245B94760);
    if (*(v88 + 16) && (v45 = sub_245B8BA34(v44), v38 = v87, (v46 & 1) != 0))
    {
      v47 = *(*(v88 + 56) + 8 * v45);
      v48 = v80;
      sub_245B77E04(v87, v80);
      v49 = v79;
      if ((*v78)(v48, 1, v79) == 1)
      {
        sub_245B77E74(v38);
        result = sub_245B77E74(v48);
      }

      else
      {
        result = (*v74)(v82, v48, v49);
        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

        if (v44 >= *(v73 + 16))
        {
          goto LABEL_26;
        }

        v75 = &v64;
        MEMORY[0x28223BE20](result, v50);
        v51 = v49;
        v52 = v47;
        v53 = v51;
        v55 = v71;
        v54 = v72;
        *(&v64 - 4) = v52;
        *(&v64 - 3) = v55;
        *(&v64 - 2) = v54;
        *(&v64 - 1) = v44;
        v56 = v70;
        (*v69)(v70, v82, v53);
        v57 = (*v68)(v56, v53);
        if (v57 != v67)
        {
          v62 = *v66;

          v62(v56, v53);
          type metadata accessor for E5MLDelegate.E5MLError();
          sub_245B7C384();
          swift_allocError();
          *v63 = 0xD000000000000016;
          v63[1] = 0x8000000245B93A30;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v62(v82, v53);
          return sub_245B77E74(v87);
        }

        v58 = (*v65)(v56, v53);
        v59 = *v56;
        MEMORY[0x28223BE20](v58, v60);
        *(&v64 - 4) = v59;
        *(&v64 - 3) = sub_245B7C508;
        *(&v64 - 2) = (&v64 - 6);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34870, &qword_245B94778);
        v61 = v81;
        sub_245B929D0();
        if (v61)
        {

          (*v66)(v82, v53);
          return sub_245B77E74(v87);
        }

        v81 = 0;

        (*v66)(v82, v53);
        v38 = v87;
        result = sub_245B77E74(v87);
      }

      v37 = v76;
      v36 = v77;
      v39 = i >= v77;
      if (i == v77)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = sub_245B77E74(v38);
      v39 = i >= v36;
      if (i == v36)
      {
        goto LABEL_4;
      }
    }

LABEL_5:
    if (v39)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_24;
    }

    v41 = v83;
    v42 = v85 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * i;
    v43 = *(v20 + 48);
    *v83 = i;
    sub_245B77E04(v42, v41 + v43);
    sub_245B7CD64(v41, v30, &qword_27EE34860, &qword_245B94770);
    v40 = 0;
    v38 = v87;
  }

  return result;
}

uint64_t sub_245B7AAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  result = sub_245B7DAE8();
  if (v3)
  {
    goto LABEL_2;
  }

  if (result)
  {
    v7 = *(a3 + 16);
    type metadata accessor for E5RTTensorDescriptor();
    *(swift_initStackObject() + 16) = 0;
    e5rt_io_port_retain_tensor_desc();
    type metadata accessor for E5MLDelegate.E5MLError();
    sub_245B7C384();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    result = swift_willThrow();
LABEL_2:
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  type metadata accessor for E5RTBufferObject();
  swift_allocObject();
  v8 = sub_245B7CDE4();
  v9 = *(a3 + 16);
  v10 = v8[2];
  if (e5rt_io_port_bind_buffer_object())
  {
    type metadata accessor for E5MLDelegate.E5MLError();
    sub_245B7C384();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_2;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245B7AE50(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t **a4)
{
  v5 = v4;
  v162 = a3;
  v150 = a2;
  v187 = *MEMORY[0x277D85DE8];
  v149 = sub_245B92A70();
  v8 = *(v149 - 8);
  v9 = v8[8];
  v11 = MEMORY[0x28223BE20](v149, v10);
  v132 = (&v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11, v13);
  v130 = &v124 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
  v143 = *(v15 - 8);
  v16 = *(v143 + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v139 = (&v124 - v22);
  v23 = sub_245B92B90();
  v24 = *(v23 - 8);
  v182 = v23;
  v183 = v24;
  v25 = *(v24 + 64);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v181 = &v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v133 = &v124 - v30;
  v31 = sub_245B92800();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  v147 = &v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_245B92770();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8, v37);
  v146 = &v124 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_245B92780();
  v170 = *(v161 - 8);
  v39 = *(v170 + 64);
  MEMORY[0x28223BE20](v161, v40);
  v160 = &v124 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_245B92830();
  v42 = *(v153 - 8);
  v43 = v42[8];
  v45 = MEMORY[0x28223BE20](v153, v44);
  v140 = &v124 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v45, v47);
  v141 = &v124 - v49;
  MEMORY[0x28223BE20](v48, v50);
  v52 = &v124 - v51;
  v53 = *(a1 + 64);
  v166 = a1 + 64;
  v54 = 1 << *(a1 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & v53;
  v152 = a4;
  v57 = *a4;
  v169 = a1;

  v163 = v57;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_4:
  v58 = 0;
  *v152 = v163;
  v59 = (v54 + 63) >> 6;
  v159 = v170 + 16;
  v158 = v170 + 88;
  v157 = *MEMORY[0x277D36AC8];
  v156 = (v170 + 96);
  v168 = (v42 + 2);
  v155 = v42 + 1;
  v131 = (v8 + 6);
  v129 = (v8 + 4);
  v127 = (v8 + 2);
  v126 = (v8 + 11);
  v142 = *MEMORY[0x277D36B10];
  v125 = (v8 + 12);
  v128 = (v8 + 1);
  v180 = v183 + 16;
  v179 = v183 + 88;
  v178 = *MEMORY[0x277D36B40];
  v177 = (v183 + 8);
  v176 = (v183 + 96);
  v138 = (v8 + 13);
  v137 = (v8 + 7);
  v60 = v166;
  v61 = v56;
  v62 = v52;
  v52 = v153;
  v148 = v59;
  if (!v56)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v63 = v58;
LABEL_9:
    v56 = v61;
    v167 = v63;
    v64 = (v63 << 9) | (8 * __clz(__rbit64(v61)));
    v54 = *(*(v169 + 48) + v64);
    v8 = *(*(v169 + 56) + v64);

    v42 = v162;
    v65 = sub_245B92850();
    if (v54 < 0)
    {
      goto LABEL_61;
    }

    v66 = v54;
    if (v54 >= *(v65 + 16))
    {
      goto LABEL_62;
    }

    v172 = v8;
    v54 = v170;
    v67 = v65 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v68 = *(v170 + 72);
    v165 = v66;
    v69 = v160;
    v70 = v161;
    (*(v170 + 16))(v160, v67 + v68 * v66, v161);

    v71 = (*(v54 + 88))(v69, v70);
    if (v71 != v157)
    {
      (*(v170 + 8))(v69, v70);
      type metadata accessor for E5MLDelegate.E5MLError();
      sub_245B7C384();
      swift_allocError();
      v110 = v109;
      v185 = 0;
      v186 = 0xE000000000000000;
      sub_245B92E50();

      v185 = 0xD000000000000021;
      v186 = 0x8000000245B939A0;
      v184 = v165;
      v111 = sub_245B92F40();
      MEMORY[0x245D7A2F0](v111);

      v112 = v186;
      *v110 = v185;
      v110[1] = v112;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_51;
    }

    (*v156)(v69, v70);
    v72 = *v69;
    v73 = swift_projectBox();
    v151 = *v168;
    v151(v62, v73, v52);

    v74 = v172[2];
    type metadata accessor for E5RTBufferObject();
    v171 = swift_allocObject();
    v185 = 0;
    if (e5rt_io_port_retain_buffer_object() || !v185)
    {
      type metadata accessor for E5MLDelegate.E5MLError();
      sub_245B7C384();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      swift_deallocPartialClassInstance();
      goto LABEL_48;
    }

    v8 = v171;
    *(v171 + 16) = v185;
    v185 = 0;
    if (e5rt_buffer_object_get_data_ptr() || (v75 = v185) == 0 || (v185 = 0, v76 = v8[2], e5rt_buffer_object_get_size()))
    {
LABEL_47:
      type metadata accessor for E5MLDelegate.E5MLError();
      sub_245B7C384();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_48;
    }

    v154 = v75;
    v56 &= v56 - 1;
    v164 = v56;
    v145 = v185;
    v42 = v172;
    if (!sub_245B7C280(v172, v150))
    {
      v91 = sub_245B7DAE8();
      if (!v5)
      {
        if ((v91 & 1) == 0)
        {
          (*v155)(v62, v52);

          goto LABEL_42;
        }

        v92 = v149;
        v93 = v132;
        if (v165 >= v163[2])
        {
          goto LABEL_65;
        }

        sub_245B77E04(v163 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v165, v20);
        if ((*v131)(v20, 1, v92) == 1)
        {
          sub_245B77E74(v20);
        }

        else
        {
          v94 = v130;
          (*v129)(v130, v20, v92);
          (*v127)(v93, v94, v92);
          v95 = (*v126)(v93, v92);
          if (v95 == v142)
          {
            v96 = (*v125)(v93, v92);
            v54 = &v124;
            v42 = *v93;
            MEMORY[0x28223BE20](v96, v97);
            v8 = (&v124 - 4);
            v122 = v154;
            v123 = v42;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34858, &qword_245B94768);
            sub_245B929E0();

            (*v128)(v94, v149);
            (*v155)(v62, v52);
            goto LABEL_42;
          }

          v116 = v93;
          v117 = *v128;
          (*v128)(v94, v92);
          v117(v116, v92);
        }

        type metadata accessor for E5MLDelegate.E5MLError();
        sub_245B7C384();
        swift_allocError();
        v119 = v118;
        v185 = 0;
        v186 = 0xE000000000000000;
        sub_245B92E50();

        v185 = 0xD000000000000021;
        v186 = 0x8000000245B939A0;
        v184 = v165;
        v120 = sub_245B92F40();
        MEMORY[0x245D7A2F0](v120);

        v121 = v186;
        *v119 = v185;
        v119[1] = v121;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

LABEL_48:

        goto LABEL_49;
      }

      (*v155)(v62, v52);

LABEL_51:

LABEL_52:

      goto LABEL_53;
    }

    v77 = v42[2];
    type metadata accessor for E5RTTensorDescriptor();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    v185 = 0;
    if (e5rt_io_port_retain_tensor_desc())
    {
      goto LABEL_47;
    }

    v79 = v185;
    if (!v185)
    {
      goto LABEL_47;
    }

    *(inited + 16) = v185;
    v136 = inited;
    v144 = sub_245B83D14();
    if (v5)
    {

      swift_setDeallocating();
      v185 = v79;
      e5rt_tensor_desc_release();

LABEL_49:

      result = (*v155)(v62, v52);
LABEL_53:
      v114 = *MEMORY[0x277D85DE8];
      return result;
    }

    v135 = v79;
    v134 = v62;
    v80 = sub_245B927C0();
    v81 = *(v80 + 16);
    if (v81)
    {
      break;
    }

LABEL_37:
    v62 = v134;
    sub_245B927F0();
    sub_245B92810();
    v98 = *(v144 + 16);
    v99 = sub_245B92D40();
    v99[2] = v98 + 1;
    v99[4] = 1;
    if (v98)
    {
      memset_pattern16(v99 + 5, &unk_245B947A0, 8 * v98);
    }

    sub_245B92820();
    v100 = v141;
    sub_245B927E0();
    v52 = v153;
    v151(v140, v100, v153);
    v101 = sub_245B92A60();
    v102 = *(v101 + 48);
    v103 = *(v101 + 52);
    swift_allocObject();
    v104 = sub_245B929B0();
    if (v5)
    {

      swift_setDeallocating();
      v185 = v135;
      e5rt_tensor_desc_release();

      v115 = *v155;
      (*v155)(v100, v52);
      result = v115(v62, v52);
      goto LABEL_53;
    }

    v106 = v104;
    MEMORY[0x28223BE20](v104, v105);
    v122 = v154;
    v123 = v145;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34858, &qword_245B94768);
    sub_245B929E0();
    v54 = v139;
    *v139 = v106;
    v107 = v149;
    (*v138)(v54, v142, v149);
    (*v137)(v54, 0, 1, v107);

    swift_setDeallocating();
    v185 = v135;
    e5rt_tensor_desc_release();

    v42 = v155;
    v108 = *v155;
    (*v155)(v100, v52);
    v108(v62, v52);
    v8 = v163;
    if (v165 >= v163[2])
    {
      __break(1u);
LABEL_65:
      __break(1u);
    }

    sub_245B7C498(v54, v163 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v165);
    *v152 = v8;
LABEL_42:
    v58 = v167;
    v60 = v166;
    v61 = v164;
    v59 = v148;
    if (!v164)
    {
LABEL_6:
      while (1)
      {
        v63 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          break;
        }

        if (v63 >= v59)
        {
          goto LABEL_52;
        }

        v61 = *(v60 + 8 * v63);
        ++v58;
        if (v61)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v163 = sub_245B7D678(v163);
      goto LABEL_4;
    }
  }

  v124 = 0;
  v185 = MEMORY[0x277D84F90];
  v42 = &v185;
  v82 = v80;
  sub_245B852D0(0, v81, 0);
  v83 = v82;
  v5 = 0;
  v8 = v185;
  v173 = v83 + ((*(v183 + 80) + 32) & ~*(v183 + 80));
  v52 = v133;
  v174 = v20;
  v175 = v83;
  while (1)
  {
    if (v5 >= *(v83 + 16))
    {
      goto LABEL_60;
    }

    v84 = v182;
    v85 = v183;
    v42 = *(v183 + 16);
    v56 = v180;
    (v42)(v52, v173 + *(v183 + 72) * v5, v182);
    v86 = v181;
    (v42)(v181, v52, v84);
    v87 = (*(v85 + 88))(v86, v84);
    if (v87 != v178)
    {
      break;
    }

    (*v177)(v52, v84);
    (*v176)(v86, v84);
    v88 = *v86;
    v185 = v8;
    v90 = v8[2];
    v89 = v8[3];
    v54 = v90 + 1;
    if (v90 >= v89 >> 1)
    {
      v42 = &v185;
      sub_245B852D0((v89 > 1), v90 + 1, 1);
      v52 = v133;
      v8 = v185;
    }

    ++v5;
    v8[2] = v54;
    v8[v90 + 4] = v88;
    v20 = v174;
    v83 = v175;
    if (v81 == v5)
    {

      v5 = v124;
      goto LABEL_37;
    }
  }

  result = sub_245B92E90();
  __break(1u);
  return result;
}

BOOL sub_245B7C280(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = sub_245B92DE0();

    return v2 & 1;
  }

  else if (*(a2 + 16) && (v4 = *(a2 + 40), sub_245B92FF0(), v7 = *(a1 + 16), MEMORY[0x245D7A680](v7), v8 = sub_245B93010(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v11 = ~v9;
    do
    {
      v12 = *(*(*(a2 + 48) + 8 * v10) + 16);
      result = v12 == v7;
      if (v12 == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t sub_245B7C384()
{
  result = qword_27EE34850;
  if (!qword_27EE34850)
  {
    type metadata accessor for E5MLDelegate.E5MLError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34850);
  }

  return result;
}

void *sub_245B7C3DC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = sub_245B92970();
  v6 = sub_245B92A50();
  result = memcpy(v5, v3, v6);
  *a1 = v5;
  return result;
}

void *sub_245B7C440@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = sub_245B92970();
  result = memcpy(v5, v3, v4);
  *a1 = v5;
  return result;
}

uint64_t sub_245B7C498(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_245B7C508(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  return sub_245B7AAC4(a1, a2, v2[2]);
}

uint64_t sub_245B7C528(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, void *a5)
{
  result = sub_245B928F0();
  if (result)
  {
    v9 = result;
    v10 = sub_245B92A50();
    result = a3(v9, v10);
    if (v5)
    {
      *a5 = v5;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_245B7C5DC(uint64_t a1)
{
  v2 = v1;
  v26 = *MEMORY[0x277D85DE8];
  v4 = sub_245B92770();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_245B92A00();
  v11 = *(v10 + 16);
  if (v11)
  {
    v21 = v1;
    v22 = v4;
    v23 = a1;
    v24 = v10;
    v25 = MEMORY[0x277D84F90];
    sub_245B852D0(0, v11, 0);
    v12 = v24;
    v13 = v25;
    v14 = *(v25 + 16);
    v15 = 32;
    do
    {
      v16 = *(v12 + v15);
      v25 = v13;
      v17 = *(v13 + 24);
      if (v14 >= v17 >> 1)
      {
        sub_245B852D0((v17 > 1), v14 + 1, 1);
        v12 = v24;
        v13 = v25;
      }

      *(v13 + 16) = v14 + 1;
      *(v13 + 8 * v14 + 32) = v16;
      v15 += 8;
      ++v14;
      --v11;
    }

    while (v11);

    v4 = v22;
    a1 = v23;
    v2 = v21;
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v18 = a1;
  sub_245B929C0();
  sub_245B77F4C(v9);
  if (v2)
  {
    (*(v5 + 8))(v9, v4);
  }

  else
  {
    (*(v5 + 8))(v9, v4);
    v25 = 0;
    if (e5rt_tensor_desc_dtype_create() || !v25)
    {

      v18 = type metadata accessor for E5MLDelegate.E5MLError();
      sub_245B7C384();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      type metadata accessor for E5RTTensorDescriptor();
      swift_allocObject();
      v18 = sub_245B83E74(v13);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t sub_245B7C8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a3;
  v47 = a2;
  v6 = sub_245B92A70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &qword_27EE34878;
  v13 = &qword_245B94780;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34878, &qword_245B94780);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v45 - v21;
  v59 = 0;
  v60 = 0;
  v53 = a4;
  v54 = (v7 + 32);
  v52 = a4 + 32;
  v49 = (v7 + 8);
  v58 = a1;

  v50 = v6;
  v51 = (v61 + 48);
  v48 = v11;
  v46 = v22;
  while (2)
  {
    sub_245B79E5C(v19);
    sub_245B7CD64(v19, v22, v12, v13);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34880, &qword_245B94788);
    if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
    {
    }

    v24 = v22;
    v25 = v19;
    v26 = v13;
    v27 = v12;
    v28 = *v24;
    result = (*v54)(v11, &v24[*(v23 + 48)], v6);
    if ((v28 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    if (v28 >= *(v53 + 16))
    {
      goto LABEL_20;
    }

    v30 = v51;
    v31 = (v52 + 16 * v28);
    v32 = *v31;
    v33 = v31[1];
    v34 = *(v61 + 16) + 1;
    do
    {
      if (!--v34)
      {

        type metadata accessor for E5MLDelegate.E5MLError();
        sub_245B7C384();
        swift_allocError();
        v43 = v42;
        v56 = 0;
        v57 = 0xE000000000000000;
        sub_245B92E50();

        v56 = 0xD000000000000014;
        v57 = 0x8000000245B93A50;
        MEMORY[0x245D7A2F0](v32, v33);

        v44 = v57;
        *v43 = v56;
        v43[1] = v44;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return (*v49)(v48, v50);
      }

      result = *(v30 - 2);
      v35 = *v30;
      if (result == v32 && *(v30 - 1) == v33)
      {
        break;
      }

      v30 += 3;
      result = sub_245B92F50();
    }

    while ((result & 1) == 0);
    v37 = v47;
    if (v28 >= *(v47 + 16))
    {
      goto LABEL_21;
    }

    v38 = *(sub_245B92780() - 8);
    v39 = v37 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v28;

    v40 = v39;
    v11 = v48;
    v41 = v55;
    sub_245B781CC(v40, v48, sub_245B7CD48, v35);
    if (!v41)
    {
      v55 = 0;

      v6 = v50;
      (*v49)(v11, v50);
      v12 = v27;
      v13 = v26;
      v19 = v25;
      v22 = v46;
      continue;
    }

    break;
  }

  (*v49)(v11, v50);
}

uint64_t sub_245B7CD64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t *sub_245B7CDE4()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  e5rt_buffer_object_create_from_data_pointer();
  type metadata accessor for E5MLDelegate.E5MLError();
  sub_245B7C384();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_deallocPartialClassInstance();
  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t sub_245B7CEEC(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  if (*(a1 + 16))
  {
    e5rt_tensor_desc_alloc_buffer_object();
    type metadata accessor for E5MLDelegate.E5MLError();
    sub_245B7C384();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    swift_deallocPartialClassInstance();
    v3 = *MEMORY[0x277D85DE8];
    return v1;
  }

  else
  {
    result = sub_245B92E90();
    __break(1u);
  }

  return result;
}

uint64_t sub_245B7D054()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 16);
  e5rt_buffer_object_release();
  result = swift_deallocClassInstance();
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245B7D0E0()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 16);
  e5rt_precompiled_compute_op_create_options_release();
  result = swift_deallocClassInstance();
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245B7D16C()
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(v0 + 16))
  {
    v3 = *(v0 + 16);
    e5rt_execution_stream_release();
  }

  result = swift_deallocClassInstance();
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245B7D1FC()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 16);
  e5rt_execution_stream_operation_release();
  result = swift_deallocClassInstance();
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245B7D288(unsigned int (*a1)(uint64_t, uint64_t *), uint64_t a2, unsigned int (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, unsigned int (*a5)(uint64_t, uint64_t, void *), uint64_t a6)
{
  v8 = sub_245B7D3BC(a1, a2, a3, a4, a5, a6);
  if (!v7)
  {
    v9 = *(v8 + 2);
    if (v9)
    {
      v20 = MEMORY[0x277D84F90];
      v10 = v8;
      sub_245B85310(0, v9, 0);
      v6 = v20;
      type metadata accessor for E5IOPort();
      v11 = (v10 + 48);
      do
      {
        v13 = *(v11 - 2);
        v12 = *(v11 - 1);
        v14 = *v11;
        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        v17 = *(v20 + 16);
        v16 = *(v20 + 24);

        if (v17 >= v16 >> 1)
        {
          sub_245B85310((v16 > 1), v17 + 1, 1);
        }

        *(v20 + 16) = v17 + 1;
        v18 = (v20 + 24 * v17);
        v18[4] = v13;
        v18[5] = v12;
        v18[6] = v15;
        v11 += 3;
        --v9;
      }

      while (v9);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v6;
}

unsigned int (*sub_245B7D3BC(unsigned int (*a1)(uint64_t, uint64_t *), uint64_t a2, unsigned int (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, unsigned int (*a5)(uint64_t, uint64_t, void *), uint64_t a6))(uint64_t, uint64_t, uint64_t)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v29 = 0;
  v10 = *(v6 + 16);
  if (a1(v10, &v29))
  {
    type metadata accessor for E5MLDelegate.E5MLError();
    sub_245B7C384();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_6;
  }

  if ((v29 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_23;
  }

  v11 = swift_slowAlloc();
  if (a3(v10, v29, v11))
  {
    goto LABEL_5;
  }

  v28 = v10;
  v14 = v29;
  if (v29 < 0)
  {
LABEL_23:
    __break(1u);
  }

  if (!v29)
  {
    a3 = MEMORY[0x277D84F90];
LABEL_20:
    MEMORY[0x245D7ADF0](v11, -1, -1);
    goto LABEL_6;
  }

  v27 = a5;
  v15 = 0;
  a3 = MEMORY[0x277D84F90];
  v26 = v11;
  while (1)
  {
    v17 = *(v11 + 8 * v15);
    if (v17)
    {
      break;
    }

LABEL_11:
    if (v14 == ++v15)
    {
      goto LABEL_20;
    }
  }

  v18 = *(v11 + 8 * v15);
  v19 = sub_245B92C80();
  v21 = v20;
  v30[0] = 0;
  v22 = a6;
  if (!v27(v28, v17, v30))
  {
    v23 = v30[0];
    if (v30[0])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a3 = sub_245B84BC8(0, *(a3 + 2) + 1, 1, a3);
      }

      v25 = *(a3 + 2);
      v24 = *(a3 + 3);
      if (v25 >= v24 >> 1)
      {
        a3 = sub_245B84BC8((v24 > 1), v25 + 1, 1, a3);
      }

      *(a3 + 2) = v25 + 1;
      v16 = (a3 + 24 * v25);
      v16[4] = v19;
      v16[5] = v21;
      v16[6] = v23;
      v11 = v26;
      a6 = v22;
      goto LABEL_11;
    }
  }

LABEL_5:
  type metadata accessor for E5MLDelegate.E5MLError();
  sub_245B7C384();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  MEMORY[0x245D7ADF0](v11, -1, -1);
LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t sub_245B7D6A0(unint64_t a1, uint64_t a2)
{
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v16 = a2;
    v17 = sub_245B92DB0();
    a2 = v16;
    v6 = v17;
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 != *(a2 + 16))
  {
    __break(1u);
    goto LABEL_23;
  }

  v44 = a2;
  v3 = MEMORY[0x277D84F90];
  if (!v6)
  {
    v2 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v47 = MEMORY[0x277D84F90];
  sub_245B852F0(0, v6, 0);
  v2 = v47;
  if ((a1 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = *(MEMORY[0x245D7A4E0](i, a1) + 16);
      swift_unknownObjectRelease();
      v10 = *(v47 + 16);
      v9 = *(v47 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_245B852F0((v9 > 1), v10 + 1, 1);
      }

      *(v47 + 16) = v10 + 1;
      *(v47 + 8 * v10 + 32) = v8;
    }
  }

  else
  {
    v11 = a1 + 32;
    v12 = *(v47 + 16);
    v13 = v6;
    do
    {
      v3 = *(*v11 + 16);
      v14 = *(v47 + 24);
      if (v12 >= v14 >> 1)
      {
        sub_245B852F0((v14 > 1), v12 + 1, 1);
      }

      *(v47 + 16) = v12 + 1;
      *(v47 + 8 * v12 + 32) = v3;
      v11 += 8;
      ++v12;
      --v13;
    }

    while (v13);
  }

  if (v6 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    sub_245B7D68C(v2);
    if (!v5)
    {
      goto LABEL_20;
    }

LABEL_25:
    sub_245B92DB0();
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34898, &qword_245B94860);
  v3 = sub_245B92D40();
  *(v3 + 16) = v6;
  bzero((v3 + 32), 8 * v6);
LABEL_18:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v5)
  {
    goto LABEL_25;
  }

LABEL_20:
  v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_26:
  resource_sharing_precompiled_compute_operations_with_multiple_options = e5rt_execution_stream_operation_create_resource_sharing_precompiled_compute_operations_with_multiple_options();

  if (resource_sharing_precompiled_compute_operations_with_multiple_options)
  {
LABEL_27:
    v19 = type metadata accessor for E5MLDelegate.E5MLError();
    sub_245B7C384();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return v19;
  }

  v19 = sub_245B8D970(MEMORY[0x277D84F90]);
  v46 = *(v3 + 16);
  if (!v46)
  {
LABEL_45:

    return v19;
  }

  v20 = 0;
  v21 = (v44 + 40);
  v45 = v6;
  while (v20 < *(v3 + 16))
  {
    v25 = *(v3 + 8 * v20 + 32);
    if (!v25)
    {

      goto LABEL_27;
    }

    if (v6 == v20)
    {
      goto LABEL_49;
    }

    v26 = v3;
    v28 = *(v21 - 1);
    v27 = *v21;
    type metadata accessor for E5RTExecutionStreamOperation();
    v29 = swift_allocObject();
    *(v29 + 16) = v25;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = sub_245B8BA78(v28, v27);
    v33 = v19[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_50;
    }

    v37 = v32;
    if (v19[3] < v36)
    {
      sub_245B8BCC8(v36, isUniquelyReferenced_nonNull_native);
      v31 = sub_245B8BA78(v28, v27);
      if ((v37 & 1) != (v38 & 1))
      {
        goto LABEL_52;
      }

LABEL_40:
      if (v37)
      {
        goto LABEL_30;
      }

      goto LABEL_41;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_40;
    }

    v42 = v31;
    sub_245B8C9D4();
    v31 = v42;
    if (v37)
    {
LABEL_30:
      v22 = v31;

      v23 = v19[7];
      v24 = *(v23 + 8 * v22);
      *(v23 + 8 * v22) = v29;

      goto LABEL_31;
    }

LABEL_41:
    v19[(v31 >> 6) + 8] |= 1 << v31;
    v39 = (v19[6] + 16 * v31);
    *v39 = v28;
    v39[1] = v27;
    *(v19[7] + 8 * v31) = v29;
    v40 = v19[2];
    v35 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v35)
    {
      goto LABEL_51;
    }

    v19[2] = v41;
LABEL_31:
    ++v20;
    v21 += 2;
    v3 = v26;
    v6 = v45;
    if (v46 == v20)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_245B92F80();
  __break(1u);
  return result;
}

uint64_t sub_245B7DAE8()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  e5rt_io_port_get_supported_buffer_types();
  type metadata accessor for E5MLDelegate.E5MLError();
  sub_245B7DDC0(&qword_27EE34850, 255, type metadata accessor for E5MLDelegate.E5MLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v2 = *MEMORY[0x277D85DE8];
  return v3 & 1;
}

uint64_t sub_245B7DC14()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 16);
  e5rt_io_port_release();
  result = swift_deallocClassInstance();
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245B7DCA0()
{
  v1 = *v0;
  sub_245B92FF0();
  MEMORY[0x245D7A680](*(v1 + 16));
  return sub_245B93010();
}

uint64_t sub_245B7DD18()
{
  v1 = *v0;
  sub_245B92FF0();
  MEMORY[0x245D7A680](*(v1 + 16));
  return sub_245B93010();
}

uint64_t sub_245B7DDC0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_245B7DE08()
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(v0 + 16))
  {
    v3 = *(v0 + 16);
    e5rt_operand_desc_release();
  }

  result = swift_deallocClassInstance();
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245B7DE98()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = *(v0 + 32);
  e5rt_program_function_release();
  v1 = *(v0 + 24);

  result = swift_deallocClassInstance();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245B7DF2C(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  sub_245B7E060(a1, a2);
  if (v3)
  {
    MEMORY[0x245D7ACB0](v3);
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {

    type metadata accessor for E5MLDelegate.E5MLError();
    sub_245B7C384();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_deallocPartialClassInstance();
    v5 = *MEMORY[0x277D85DE8];
    return v2;
  }

  return result;
}

uint64_t sub_245B7E060(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return e5rt_program_library_create();
  }

  type metadata accessor for e5rt_error_code_t(0);
  result = sub_245B92E40();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_245B7E118()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 16);
  e5rt_program_library_release();
  result = swift_deallocClassInstance();
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245B7E1A4()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  if (e5rt_program_library_get_num_functions())
  {
    type metadata accessor for E5MLDelegate.E5MLError();
    sub_245B7C384();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_245B7E3C0@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = e5rt_program_library_retain_program_function();
  *a2 = result;
  return result;
}

uint64_t sub_245B7E3FC@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = e5rt_program_library_create();
  *a1 = result;
  return result;
}

uint64_t AllowedDelegates.MPSGraphOptions.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = *(type metadata accessor for AllowedDelegates.MPSGraphOptions(0) + 20);
  v3 = sub_245B925E0();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

Swift::Int_optional __swiftcall AllowedDelegates.MPSGraphOptions.getCore()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  result.value = v1;
  result.is_nil = v2;
  return result;
}

uint64_t AllowedDelegates.MPSGraphOptions.setURL(url:)(uint64_t a1)
{
  v3 = *(type metadata accessor for AllowedDelegates.MPSGraphOptions(0) + 20);
  sub_245B7E5BC(v1 + v3);
  v4 = sub_245B925E0();
  v7 = *(v4 - 8);
  (*(v7 + 16))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_245B7E5BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34780, &unk_245B94440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall AllowedDelegates.E5MLOptions.setEspressocOptions(options:)(Swift::OpaquePointer options)
{
  v3._rawValue = *v1;

  *v1 = options._rawValue;
}

uint64_t sub_245B7E798(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_245B7E7D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t AllowedDelegates.mpsGraphOptions.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AllowedDelegates(0) + 24);

  return sub_245B7E87C(a1, v3);
}

uint64_t sub_245B7E87C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE348A8, &qword_245B94978);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AllowedDelegates.e5mlOptions.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for AllowedDelegates(0) + 28));
}

uint64_t AllowedDelegates.e5mlOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for AllowedDelegates(0) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = v2;
  return result;
}

uint64_t AllowedDelegates.targetDelegateOptionsString.getter()
{
  v1 = (v0 + *(type metadata accessor for AllowedDelegates(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AllowedDelegates.targetDelegateOptionsString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AllowedDelegates(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AllowedDelegates.init(target:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  a2[1] = 1;
  v4 = type metadata accessor for AllowedDelegates(0);
  v5 = v4[6];
  v6 = type metadata accessor for AllowedDelegates.MPSGraphOptions(0);
  result = (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  *&a2[v4[7]] = 0;
  v8 = &a2[v4[8]];
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *a2 = v3;
  return result;
}

uint64_t sub_245B7EB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE348A8, &qword_245B94978);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_245B7EC68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE348A8, &qword_245B94978);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

void sub_245B7ED34()
{
  sub_245B7F0E8(319, &qword_27EE348C0);
  if (v0 <= 0x3F)
  {
    sub_245B7F134(319, &qword_27EE348C8, type metadata accessor for AllowedDelegates.MPSGraphOptions);
    if (v1 <= 0x3F)
    {
      sub_245B7F0E8(319, &qword_27EE348D0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for AllowedDelegates.BNNSOptions(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AllowedDelegates.BNNSOptions(_WORD *result, int a2, int a3)
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

uint64_t sub_245B7EF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34780, &unk_245B94440);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_245B7EFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34780, &unk_245B94440);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_245B7F038()
{
  sub_245B7F0E8(319, &qword_27EE348E8);
  if (v0 <= 0x3F)
  {
    sub_245B7F134(319, &qword_27EE347A0, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_245B7F0E8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_245B92D70();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_245B7F134(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_245B92D70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_245B7F188(uint64_t *a1, int a2)
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

uint64_t sub_245B7F1D0(uint64_t result, int a2, int a3)
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

uint64_t BNNSCompiler.compile(moduleBytecode:to:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_245B92610();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = 0;
  v26 = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v19 = a3;
  v20 = v3;
  v21 = a1;
  v22 = a2;
  v23 = &v25;
  v24 = v13 + 16;
  sub_245B7FAAC(sub_245B80214, v18, a1, a2);
  v14 = v25;
  if (v25)
  {
    v15 = v26;
    *v12 = sub_245B8028C;
    v12[1] = v13;
    (*(v8 + 104))(v12, *MEMORY[0x277CC92B8], v7);
    return sub_245B7FE28(v14, v15, v12);
  }

  else
  {
    sub_245B80238();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
  }
}

uint64_t sub_245B7F458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t *a7, uint64_t a8)
{
  v30 = a7;
  v29[0] = a5;
  v29[1] = a8;
  v33 = a4;
  v10 = sub_245B92530();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_245B925E0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  result = MEMORY[0x28223BE20](v16, v19);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_14;
  }

  v31 = 0x72692E736E6E62;
  v32 = 0xE700000000000000;
  (*(v11 + 104))(v15, *MEMORY[0x277CC91D8], v10);
  sub_245B803A0();
  sub_245B925D0();
  (*(v11 + 8))(v15, v10);
  BNNSGraphCompileOptionsMakeDefault();
  sub_245B925C0();
  sub_245B92C00();

  BNNSGraphCompileOptionsSetOutputPathWithPermissionsAndProtectionClass();

  v23 = *(v33 + 16);
  result = BNNSGraphCompileOptionsSetTarget();
  v24 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v24 != 2 || !__OFSUB__(*(v29[0] + 24), *(v29[0] + 16)))
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (v24)
  {
LABEL_9:
    if (!__OFSUB__(HIDWORD(v29[0]), v29[0]))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

LABEL_10:
  if (!BNNSGraphCompileMLIR())
  {
    return (*(v17 + 8))(v22, v16);
  }

  v25 = BNNSReplaceByDelegateOpsMLIR();
  v27 = v26;
  result = (*(v17 + 8))(v22, v16);
  v28 = v30;
  *v30 = v25;
  v28[1] = v27;
  return result;
}

uint64_t sub_245B7F7B8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v8)
    {
      goto LABEL_17;
    }

    v9 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v9 != 2)
      {
        goto LABEL_47;
      }

      v23 = *(a3 + 24);
      if (!__OFSUB__(v23, *(a3 + 16)))
      {
        goto LABEL_47;
      }

      __break(1u);
LABEL_31:
      if (v23 != 2)
      {
        goto LABEL_47;
      }

      v15 = *(a3 + 24);
      if (!__OFSUB__(v15, *(a3 + 16)))
      {
        goto LABEL_47;
      }

      __break(1u);
      goto LABEL_35;
    }

    if (!v9)
    {
      goto LABEL_47;
    }

    LODWORD(v8) = HIDWORD(a3) - a3;
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_47;
    }

    __break(1u);
  }

  if (v8 != 2)
  {
    v23 = a4 >> 62;
    if ((a4 >> 62) <= 1)
    {
      if (!v23 || !__OFSUB__(HIDWORD(a3), a3))
      {
        goto LABEL_47;
      }

      goto LABEL_51;
    }

    goto LABEL_31;
  }

  v10 = *(a1 + 16);
  v11 = sub_245B924D0();
  if (!v11)
  {
    sub_245B924E0();
    goto LABEL_54;
  }

  v12 = v11;
  v13 = sub_245B924F0();
  if (__OFSUB__(v10, v13))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v14 = v10 - v13 + v12;
  a1 = sub_245B924E0();
  if (!v14)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v15 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
LABEL_35:
    if (v15 != 2)
    {
      goto LABEL_47;
    }

    v22 = *(a3 + 24);
    if (!__OFSUB__(v22, *(a3 + 16)))
    {
      goto LABEL_47;
    }

    __break(1u);
    goto LABEL_39;
  }

  if (!v15 || !__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_47;
  }

  __break(1u);
LABEL_17:
  v16 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_49;
  }

  v17 = sub_245B924D0();
  if (!v17)
  {
LABEL_55:
    result = sub_245B924E0();
    goto LABEL_56;
  }

  v18 = v17;
  v19 = sub_245B924F0();
  if (__OFSUB__(v16, v19))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v20 = v16 - v19 + v18;
  result = sub_245B924E0();
  if (v20)
  {
    v22 = a4 >> 62;
    if ((a4 >> 62) <= 1)
    {
      if (!v22 || !__OFSUB__(HIDWORD(a3), a3))
      {
LABEL_47:
        BNNSGraphCompileOptionsMakeDefault();
        *a5 = BNNSSegmentCoreMLIR();
        a5[1] = v24;
        result = sub_245B74A68(a3, a4);
        v25 = *MEMORY[0x277D85DE8];
        return result;
      }

LABEL_52:
      __break(1u);
    }

LABEL_39:
    if (v22 == 2 && __OFSUB__(*(a3 + 24), *(a3 + 16)))
    {
      __break(1u);
    }

    goto LABEL_47;
  }

LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_245B7FAAC(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v11, 0, 14);
      v6 = v11;
      goto LABEL_9;
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
  }

  else
  {
    if (!v5)
    {
      v11[0] = a3;
      LOWORD(v11[1]) = a4;
      BYTE2(v11[1]) = BYTE2(a4);
      BYTE3(v11[1]) = BYTE3(a4);
      BYTE4(v11[1]) = BYTE4(a4);
      BYTE5(v11[1]) = BYTE5(a4);
      v6 = v11 + BYTE6(a4);
LABEL_9:
      result = a1(v11, v6);
      goto LABEL_10;
    }

    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }
  }

  result = sub_245B7FBE4(v7, v8, a1);
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245B7FBE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_245B924D0();
  v7 = result;
  if (result)
  {
    result = sub_245B924F0();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_245B924E0();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

uint64_t sub_245B7FC8C(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245B7FD44(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_245B92620();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_245B924D0();
  if (v3)
  {
    result = sub_245B924F0();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_245B924E0();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_245B7FC8C(v3, v7);

  return v8;
}

uint64_t sub_245B7FE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_245B92610();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_245B92600();
  if (a2)
  {
    v12 = sub_245B92510();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();

    v15 = sub_245B924C0();
    (*(v7 + 16))(v11, a3, v6);
    if ((*(v7 + 88))(v11, v6) == *MEMORY[0x277CC92A8])
    {
      v16 = sub_245B92500();
      *v17 |= 0x8000000000000000;
      v16(v21, 0);
    }

    else
    {
      (*(v7 + 8))(v11, v6);
    }

    v19 = sub_245B7FD44(v15, a2);
  }

  else
  {
    v18 = sub_245B92600();
    v18(a1, 0);

    v19 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v19;
}

uint64_t sub_245B80060(uint64_t a1, unint64_t a2)
{
  v4 = sub_245B92610();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = 0;
  v16 = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  sub_245B74E8C(a1, a2);
  sub_245B7F7B8(a1, a2, a1, a2, &v15);
  v11 = v15;
  if (v15)
  {
    v12 = v16;
    *v9 = sub_245B80524;
    v9[1] = v10;
    (*(v5 + 104))(v9, *MEMORY[0x277CC92B8], v4);
    return sub_245B7FE28(v11, v12, v9);
  }

  else
  {
    sub_245B803F4();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
  }
}

unint64_t sub_245B80238()
{
  result = qword_27EE348F0;
  if (!qword_27EE348F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE348F0);
  }

  return result;
}

unint64_t sub_245B80324()
{
  result = qword_27EE348F8;
  if (!qword_27EE348F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE348F8);
  }

  return result;
}

unint64_t sub_245B803A0()
{
  result = qword_27EE34900;
  if (!qword_27EE34900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34900);
  }

  return result;
}

unint64_t sub_245B803F4()
{
  result = qword_27EE34908;
  if (!qword_27EE34908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34908);
  }

  return result;
}

unint64_t sub_245B804A4()
{
  result = qword_27EE34910;
  if (!qword_27EE34910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34910);
  }

  return result;
}

uint64_t static Compiler.compile(compiling:for:outputPackageURL:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_245B92BF0() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_245B92AD0();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245B80628, 0, 0);
}

uint64_t sub_245B80628()
{
  v1 = v0[2];
  v2 = sub_245B92540();
  v4 = v3;
  v5 = v2 == 1919511661 && v3 == 0xE400000000000000;
  if (v5 || (v6 = v2, (sub_245B92F50() & 1) != 0))
  {

    v7 = v0[6];
    v8 = v0[2];
    sub_245B925B0();
    sub_245B92BE0();
    v9 = sub_245B92BB0();
    v11 = v10;

    v12 = v0[9];
    *v12 = v9;
    v12[1] = v11;
    v13 = MEMORY[0x277D36B18];
  }

  else
  {
    if (v6 == 25442 && v4 == 0xE200000000000000)
    {
    }

    else
    {
      v25 = sub_245B92F50();

      if ((v25 & 1) == 0)
      {
        return sub_245B92E90();
      }
    }

    v26 = v0[2];
    v27 = sub_245B925F0();
    v28 = v0[9];
    *v28 = v27;
    v28[1] = v29;
    v13 = MEMORY[0x277D36B20];
  }

  v14 = v0[9];
  v15 = v0[10];
  v16 = v0[7];
  v17 = v0[8];
  (*(v17 + 104))(v14, *v13, v16);
  (*(v17 + 32))(v15, v14, v16);
  v18 = swift_task_alloc();
  v0[11] = v18;
  *v18 = v0;
  v18[1] = sub_245B808E4;
  v19 = v0[10];
  v20 = v0[4];
  v21 = v0[5];
  v22 = v0[3];

  return sub_245B80B2C(v19, v20, v22);
}

uint64_t sub_245B808E4()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_245B80A94;
  }

  else
  {
    v3 = sub_245B809F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_245B809F8()
{
  v1 = v0[9];
  v2 = v0[6];
  (*(v0[8] + 8))(v0[10], v0[7]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_245B80A94()
{
  (*(v0[8] + 8))(v0[10], v0[7]);
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_245B80B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34918, &qword_245B94D20) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v6 = sub_245B92B30();
  v4[11] = v6;
  v7 = *(v6 - 8);
  v4[12] = v7;
  v8 = *(v7 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v9 = sub_245B925E0();
  v4[15] = v9;
  v10 = *(v9 - 8);
  v4[16] = v10;
  v11 = *(v10 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245B80CA8, 0, 0);
}

uint64_t sub_245B80CA8()
{
  v1 = v0[18];
  v24 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v25 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v26 = *v7;
  TargetArchitecture.rawValue.getter();
  (*(v2 + 16))(v1, v6, v5);
  sub_245B92590();

  v8 = *(v2 + 8);
  v0[20] = v8;
  v0[21] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v5);
  (*(v2 + 32))(v1, v3, v5);
  sub_245B925A0();
  v8(v1, v5);
  sub_245B812E0(v7);
  sub_245B92B20();
  sub_245B92AE0();
  sub_245B92AF0();
  v27 = *v7;
  TargetArchitecture.rawValue.getter();
  sub_245B92AA0();
  v9 = sub_245B92AC0();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v25, 0, 1, v9);
  sub_245B92B10();
  v11 = sub_245B92B00();
  if (!(*(v10 + 48))(v12, 1, v9))
  {
    v13 = v0[8];
    v14 = (v13 + *(type metadata accessor for AllowedDelegates(0) + 32));
    v15 = *v14;
    v16 = v14[1];

    sub_245B92AB0();
  }

  v11(v0 + 2, 0);
  (*(v0[12] + 16))(v0[13], v0[14], v0[11]);
  v17 = *(MEMORY[0x277D36B28] + 4);
  v18 = swift_task_alloc();
  v0[22] = v18;
  *v18 = v0;
  v18[1] = sub_245B80FA4;
  v19 = v0[19];
  v20 = v0[13];
  v21 = v0[9];
  v22 = v0[6];

  return MEMORY[0x282195DF8](v22, v19, v20);
}

uint64_t sub_245B80FA4()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v10 = *v1;
  v2[23] = v0;

  v7 = *(v5 + 8);
  v2[24] = v7;
  v2[25] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  if (v0)
  {
    v8 = sub_245B81204;
  }

  else
  {
    v8 = sub_245B81128;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_245B81128()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);
  v7 = *(v0 + 120);
  v8 = *(v0 + 104);
  v9 = *(v0 + 80);
  (*(v0 + 192))(*(v0 + 112), *(v0 + 88));
  v3(v5, v7);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_245B81204()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);
  v7 = *(v0 + 120);
  v8 = *(v0 + 104);
  v9 = *(v0 + 80);
  (*(v0 + 192))(*(v0 + 112), *(v0 + 88));
  v3(v5, v7);

  v10 = *(v0 + 8);
  v11 = *(v0 + 184);

  return v10();
}

void *sub_245B812E0(_BYTE *a1)
{
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34920, &qword_245B94D28);
  v2 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117, v3);
  v123 = v110 - v4;
  v122 = type metadata accessor for E5MLCompilerInput();
  v5 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122, v6);
  v8 = v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_245B926B0();
  v120 = *(v116 - 8);
  v9 = v120[8];
  v11 = MEMORY[0x28223BE20](v116, v10);
  v119 = v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  *&v127 = v110 - v14;
  v114 = sub_245B92680();
  v113 = *(v114 - 8);
  v15 = *(v113 + 64);
  MEMORY[0x28223BE20](v114, v16);
  v118 = v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34780, &unk_245B94440);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18 - 8, v20);
  v23 = v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v126 = v110 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE348A8, &qword_245B94978);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26 - 8, v28);
  v31 = v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v29, v32);
  v115 = v110 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v37 = v110 - v36;
  v38 = a1[1];
  v124 = v8;
  v112 = v23;
  if (v38)
  {
    v39 = a1;
LABEL_10:
    v128 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v39 = a1;
  v40 = *a1;
  v41 = type metadata accessor for BNNSCompiler();
  v42 = swift_allocObject();
  LOBYTE(v129) = v40;
  v43 = sub_245B80378(&v129);
  if ((v43 & 0x100000000) != 0)
  {
    swift_deallocPartialClassInstance();
    goto LABEL_10;
  }

  *(v42 + 16) = v43;

  v44 = sub_245B84E40(0, 1, 1, MEMORY[0x277D84F90]);
  v46 = v44[2];
  v45 = v44[3];
  if (v46 >= v45 >> 1)
  {
    v44 = sub_245B84E40((v45 > 1), v46 + 1, 1, v44);
  }

  v130 = v41;
  v131 = sub_245B82318(&qword_27EE34950, type metadata accessor for BNNSCompiler);
  *&v129 = v42;
  v44[2] = v46 + 1;
  v125 = v44;
  sub_245B821A0(&v129, &v44[5 * v46 + 4]);
  v47 = type metadata accessor for BNNSSegmenter();
  v48 = swift_allocObject();
  v49 = sub_245B84E1C(0, 1, 1, MEMORY[0x277D84F90]);
  v51 = v49[2];
  v50 = v49[3];
  if (v51 >= v50 >> 1)
  {
    v49 = sub_245B84E1C((v50 > 1), v51 + 1, 1, v49);
  }

  v130 = v47;
  v131 = sub_245B82318(&qword_27EE34958, type metadata accessor for BNNSSegmenter);
  v128 = v49;
  *&v129 = v48;
  v49[2] = v51 + 1;
  sub_245B821A0(&v129, &v49[5 * v51 + 4]);
LABEL_11:
  v121 = type metadata accessor for AllowedDelegates(0);
  v52 = *(v121 + 24);
  v53 = v39;
  sub_245B7E7D0(&v39[v52], v37, &qword_27EE348A8, &qword_245B94978);
  v54 = type metadata accessor for AllowedDelegates.MPSGraphOptions(0);
  v55 = *(*(v54 - 8) + 48);
  v56 = v55(v37, 1, v54);
  sub_245B822B8(v37, &qword_27EE348A8, &qword_245B94978);
  if (v56 == 1)
  {
    v58 = v124;
    v57 = v125;
LABEL_31:
    v90 = v122;
    v91 = *(v121 + 28);
    v92 = v123;
    if (!*&v53[v91])
    {
      return v128;
    }

    v93 = 7629162;
    v127 = xmmword_245B94430;
    *v58 = xmmword_245B94430;
    v94 = v90[5];
    v95 = sub_245B925E0();
    (*(*(v95 - 8) + 56))(&v58[v94], 1, 1, v95);
    LOBYTE(v129) = *v53;
    if (TargetArchitecture.rawValue.getter() == 0x6169636570736E75 && v96 == 0xED000064657A696CLL)
    {

      v97 = 0xE300000000000000;
    }

    else
    {
      v99 = sub_245B92F50();

      if (v99)
      {
        v97 = 0xE300000000000000;
      }

      else
      {
        LOBYTE(v129) = *v53;
        result = TargetArchitecture.rawValue.getter();
        v93 = result;
      }
    }

    v100 = &v58[v90[6]];
    *v100 = v93;
    v100[1] = v97;
    v101 = *&v53[v91];
    v102 = v117;
    if (v101)
    {
      *&v58[v90[7]] = v101;
      sub_245B7603C(v58, v92 + *(v102 + 40));
      *v92 = 1280128325;
      v92[1] = 0xE400000000000000;
      v92[2] = 0xD00000000000001BLL;
      v92[3] = 0x8000000245B93DD0;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_245B84E40(0, v57[2] + 1, 1, v57);
      }

      v104 = v57[2];
      v103 = v57[3];
      if (v104 >= v103 >> 1)
      {
        v57 = sub_245B84E40((v103 > 1), v104 + 1, 1, v57);
      }

      v130 = v102;
      v131 = sub_245B821B8(&qword_27EE34928, &qword_27EE34920, &qword_245B94D28);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v129);
      sub_245B7E7D0(v92, boxed_opaque_existential_1, &qword_27EE34920, &qword_245B94D28);
      v57[2] = v104 + 1;
      sub_245B821A0(&v129, &v57[5 * v104 + 4]);
      sub_245B822B8(v92, &qword_27EE34920, &qword_245B94D28);

      sub_245B74E78(0, 0xF000000000000000);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v128 = sub_245B84E1C(0, v128[2] + 1, 1, v128);
      }

      v107 = v128[2];
      v106 = v128[3];
      if (v107 >= v106 >> 1)
      {
        v128 = sub_245B84E1C((v106 > 1), v107 + 1, 1, v128);
      }

      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34930, &qword_245B94D30);
      v131 = sub_245B821B8(&qword_27EE34938, &qword_27EE34930, &qword_245B94D30);
      v108 = swift_allocObject();
      *&v129 = v108;
      *(v108 + 16) = 0xD00000000000001ELL;
      *(v108 + 24) = 0x8000000245B93DF0;
      *(v108 + 32) = v127;
      *(v108 + 48) = 1280128325;
      *(v108 + 56) = 0xE400000000000000;
      v98 = v128;
      v109 = &v128[5 * v107];
      v128[2] = v107 + 1;
      sub_245B821A0(&v129, (v109 + 4));

      sub_245B74E78(0, 0xF000000000000000);

      sub_245B74A54(0, 0xF000000000000000);

      sub_245B74A54(0, 0xF000000000000000);

      sub_245B82258(v58, type metadata accessor for E5MLCompilerInput);
      return v98;
    }

    __break(1u);
    goto LABEL_52;
  }

  v59 = v115;
  sub_245B7E7D0(&v53[v52], v115, &qword_27EE348A8, &qword_245B94978);
  result = v55(v59, 1, v54);
  if (result == 1)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  sub_245B7E7D0(v59 + *(v54 + 20), v126, &qword_27EE34780, &unk_245B94440);
  sub_245B82258(v59, type metadata accessor for AllowedDelegates.MPSGraphOptions);
  sub_245B7E7D0(&v53[v52], v31, &qword_27EE348A8, &qword_245B94978);
  result = v55(v31, 1, v54);
  v61 = v125;
  v62 = v116;
  if (result != 1)
  {
    v63 = *v31;
    v64 = v31[8];
    sub_245B82258(v31, type metadata accessor for AllowedDelegates.MPSGraphOptions);
    v115 = v53;
    LOBYTE(v129) = *v53;
    v65 = TargetArchitecture.rawValue.getter();
    sub_245B92670();
    v66 = v128;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v111 = v63;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v66 = sub_245B84E1C(0, v66[2] + 1, 1, v66);
    }

    v69 = v66[2];
    v68 = v66[3];
    v110[1] = v65;
    if (v69 >= v68 >> 1)
    {
      v66 = sub_245B84E1C((v68 > 1), v69 + 1, 1, v66);
    }

    v70 = v114;
    v130 = v114;
    v131 = sub_245B82318(&qword_27EE34940, MEMORY[0x277CD77F0]);
    v71 = __swift_allocate_boxed_opaque_existential_1(&v129);
    v72 = v113;
    v73 = v118;
    (*(v113 + 16))(v71, v118, v70);
    v66[2] = v69 + 1;
    v128 = v66;
    sub_245B821A0(&v129, &v66[5 * v69 + 4]);
    (*(v72 + 8))(v73, v70);
    sub_245B926A0();
    if (v64 || (v74 = sub_245B925E0(), v75 = *(v74 - 8), v76 = *(v75 + 48), v77 = v126, v76(v126, 1, v74) == 1))
    {

      v53 = v115;
    }

    else
    {
      v78 = v77;
      v79 = v112;
      sub_245B7E7D0(v78, v112, &qword_27EE34780, &unk_245B94440);
      v80 = sub_245B92BC0();

      if (v76(v79, 1, v74) == 1)
      {
        v81 = 0;
      }

      else
      {
        v81 = sub_245B92560();
        (*(v75 + 8))(v79, v74);
      }

      v53 = v115;
      v82 = objc_allocWithZone(MEMORY[0x277CD7820]);
      [v82 initWithArchitecture:v80 gpuCoreCount:v111 aneOptionsURL:v81];

      sub_245B92690();
      v62 = v116;
    }

    v83 = v120[2];
    v83(v119, v127, v62);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_245B84E40(0, v61[2] + 1, 1, v61);
    }

    v85 = v61[2];
    v84 = v61[3];
    if (v85 >= v84 >> 1)
    {
      v86 = sub_245B84E40((v84 > 1), v85 + 1, 1, v61);
    }

    else
    {
      v86 = v61;
    }

    v87 = v120[1];
    v87(v127, v62);
    v130 = v62;
    v131 = sub_245B82318(&qword_27EE34948, MEMORY[0x277CD7800]);
    v88 = __swift_allocate_boxed_opaque_existential_1(&v129);
    v89 = v119;
    v83(v88, v119, v62);
    v86[2] = v85 + 1;
    sub_245B821A0(&v129, &v86[5 * v85 + 4]);
    v87(v89, v62);
    v57 = v86;
    sub_245B822B8(v126, &qword_27EE34780, &unk_245B94440);
    v58 = v124;
    goto LABEL_31;
  }

LABEL_53:
  __break(1u);
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

uint64_t sub_245B821A0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_245B821B8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_245B82200()
{
  v1 = v0[3];

  v2 = v0[5];
  if (v2 >> 60 != 15)
  {
    sub_245B74A68(v0[4], v2);
  }

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_245B82258(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_245B822B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_245B82318(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ProgramLibrary.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_245B925E0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ProgramLibrary.init(compiling:for:outputPackageURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_245B92B70();
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_245B82490;

  return static Compiler.compile(compiling:for:outputPackageURL:)(a2, a3, a4);
}

uint64_t sub_245B82490()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_245B82688;
  }

  else
  {
    v3 = sub_245B825A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_245B825A4()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  sub_245B82754(v0[4]);
  v4 = sub_245B925E0();
  v5 = *(v4 - 8);
  (*(v5 + 8))(v2, v4);
  (*(v5 + 32))(v3, v1, v4);
  v6 = v0[1];

  return v6();
}

uint64_t sub_245B82688()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = sub_245B925E0();
  v5 = *(*(v4 - 8) + 8);
  v5(v2, v4);
  sub_245B82754(v1);
  v5(v3, v4);
  v6 = v0[1];
  v7 = v0[7];

  return v6();
}

uint64_t sub_245B82754(uint64_t a1)
{
  v2 = type metadata accessor for AllowedDelegates(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ProgramLibrary.compiledProgram.getter()
{
  v0 = sub_245B925E0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  sub_245B828B0();
  return sub_245B92890();
}

uint64_t sub_245B828B0()
{
  v0 = sub_245B92BC0();
  v1 = MGGetSInt64Answer();

  sub_245B82F44(v1, &v9);
  v2 = TargetArchitecture.rawValue.getter();
  v4 = v3;
  v9 = v2;
  v10 = v3;

  MEMORY[0x245D7A2F0](0x6361707869646F2ELL, 0xEC0000006567616BLL);
  sub_245B92590();

  v5 = [objc_opt_self() defaultManager];
  sub_245B925C0();
  v6 = sub_245B92BC0();

  LODWORD(v1) = [v5 fileExistsAtPath_];

  if (v1)
  {
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
    sub_245B92E50();
    MEMORY[0x245D7A2F0](0xD000000000000017, 0x8000000245B93E40);
    sub_245B925E0();
    sub_245B82CA4();
    v8 = sub_245B92F40();
    MEMORY[0x245D7A2F0](v8);

    MEMORY[0x245D7A2F0](0xD00000000000003DLL, 0x8000000245B93E60);
    MEMORY[0x245D7A2F0](v2, v4);
    MEMORY[0x245D7A2F0](46, 0xE100000000000000);
    result = sub_245B92E90();
    __break(1u);
  }

  return result;
}

uint64_t sub_245B82AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_245B925E0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_245B82B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_245B925E0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ProgramLibrary()
{
  result = qword_27EE34960;
  if (!qword_27EE34960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_245B82C38()
{
  result = sub_245B925E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_245B82CA4()
{
  result = qword_27EE34970;
  if (!qword_27EE34970)
  {
    sub_245B925E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34970);
  }

  return result;
}

uint64_t static TargetArchitecture.currentArchitecture.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_245B92BC0();
  v3 = MGGetSInt64Answer();

  return sub_245B82F44(v3, a1);
}

uint64_t TargetArchitecture.rawValue.getter()
{
  result = 1731408232;
  switch(*v0)
  {
    case 1:
      result = 1882403176;
      break;
    case 2:
      result = 1932734824;
      break;
    case 3:
      result = 1664299368;
      break;
    case 4:
      result = 1681076584;
      break;
    case 5:
      result = 1664364904;
      break;
    case 6:
      result = 1731473768;
      break;
    case 7:
      result = 1882468712;
      break;
    case 8:
      result = 1932800360;
      break;
    case 9:
      result = 1681142120;
      break;
    case 0xA:
      result = 1664430440;
      break;
    case 0xB:
      result = 1731539304;
      break;
    case 0xC:
      result = 1882534248;
      break;
    case 0xD:
      result = 1932865896;
      break;
    case 0xE:
      result = 1681207656;
      break;
    case 0xF:
      result = 1832202600;
      break;
    case 0x10:
      result = 1664495976;
      break;
    case 0x11:
      result = 1731604840;
      break;
    case 0x12:
      result = 1882599784;
      break;
    case 0x13:
      result = 1932931432;
      break;
    case 0x14:
      result = 1731670376;
      break;
    case 0x15:
      result = 1882665320;
      break;
    case 0x16:
      result = 1882730856;
      break;
    case 0x17:
      result = 0x6169636570736E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_245B82F44@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result <= 24640)
  {
    if (result <= 24609)
    {
      if (result <= 24577)
      {
        if (result == 24576)
        {
          *a2 = 2;
          return result;
        }

        if (result == 24577)
        {
          *a2 = 3;
          return result;
        }
      }

      else
      {
        switch(result)
        {
          case 24578:
            *a2 = 4;
            return result;
          case 24608:
            *a2 = 8;
            return result;
          case 24609:
            *a2 = 5;
            return result;
        }
      }
    }

    else if (result > 24625)
    {
      switch(result)
      {
        case 24626:
          *a2 = 14;
          return result;
        case 24628:
          *a2 = 15;
          return result;
        case 24640:
          *a2 = 19;
          return result;
      }
    }

    else
    {
      switch(result)
      {
        case 24610:
          *a2 = 9;
          return result;
        case 24624:
          *a2 = 13;
          return result;
        case 24625:
          *a2 = 10;
          return result;
      }
    }
  }

  else if (result > 33057)
  {
    if (result > 33087)
    {
      switch(result)
      {
        case 33088:
          *a2 = 21;
          return result;
        case 33090:
          *a2 = 20;
          return result;
        case 33104:
          *a2 = 22;
          return result;
      }
    }

    else
    {
      switch(result)
      {
        case 33058:
          *a2 = 11;
          return result;
        case 33072:
          *a2 = 18;
          return result;
        case 33074:
          *a2 = 17;
          return result;
      }
    }
  }

  else if (result > 33039)
  {
    switch(result)
    {
      case 33040:
        *a2 = 7;
        return result;
      case 33042:
        *a2 = 6;
        return result;
      case 33056:
        *a2 = 12;
        return result;
    }
  }

  else
  {
    switch(result)
    {
      case 24641:
        *a2 = 16;
        return result;
      case 33025:
        *a2 = 1;
        return result;
      case 33027:
        *a2 = 0;
        return result;
    }
  }

  *a2 = 23;
  return result;
}

uint64_t static TargetArchitecture.getAllArchsInString()()
{
  v0 = 0;
  do
  {
    v2 = byte_2858B93B0[v0++ + 32];
    v3 = 0xE400000000000000;
    v1 = 1731408232;
    switch(v2)
    {
      case 1:
        v1 = 1882403176;
        break;
      case 2:
        v1 = 1932734824;
        break;
      case 3:
        v1 = 1664299368;
        break;
      case 4:
        v1 = 1681076584;
        break;
      case 5:
        v1 = 1664364904;
        break;
      case 6:
        v1 = 1731473768;
        break;
      case 7:
        v1 = 1882468712;
        break;
      case 8:
        v1 = 1932800360;
        break;
      case 9:
        v1 = 1681142120;
        break;
      case 10:
        v1 = 1664430440;
        break;
      case 11:
        v1 = 1731539304;
        break;
      case 12:
        v1 = 1882534248;
        break;
      case 13:
        v1 = 1932865896;
        break;
      case 14:
        v1 = 1681207656;
        break;
      case 15:
        v1 = 1832202600;
        break;
      case 16:
        v1 = 1664495976;
        break;
      case 17:
        v1 = 1731604840;
        break;
      case 18:
        v1 = 1882599784;
        break;
      case 19:
        v1 = 1932931432;
        break;
      case 20:
        v1 = 1731670376;
        break;
      case 21:
        v1 = 1882665320;
        break;
      case 22:
        v1 = 1882730856;
        break;
      case 23:
        v1 = 0x6169636570736E75;
        v3 = 0xED000064657A696CLL;
        break;
      default:
        break;
    }

    v13 = v1;

    MEMORY[0x245D7A2F0](44, 0xE100000000000000);

    MEMORY[0x245D7A2F0](v13, v3);
  }

  while (v0 != 24);
  v4 = sub_245B83A38(1);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x245D7A290](v4, v6, v8, v10);

  return v11;
}

Swift::String __swiftcall TargetArchitecture.toPlatformString()()
{
  v1 = 0xE600000000000000;
  v2 = 0x313031387830;
  switch(*v0)
  {
    case 1:
      break;
    case 2:
      v2 = 0x303030367830;
      break;
    case 3:
      v2 = 0x313030367830;
      break;
    case 4:
      v2 = 0x323030367830;
      break;
    case 5:
      v2 = 0x313230367830;
      break;
    case 6:
      v2 = 0x323131387830;
      break;
    case 7:
      v2 = 0x303131387830;
      break;
    case 8:
      v2 = 0x303230367830;
      break;
    case 9:
      v2 = 0x323230367830;
      break;
    case 0xA:
      v2 = 0x313330367830;
      break;
    case 0xB:
      v2 = 0x323231387830;
      break;
    case 0xC:
      v2 = 0x303231387830;
      break;
    case 0xD:
      v2 = 0x303330367830;
      break;
    case 0xE:
      v2 = 0x323330367830;
      break;
    case 0xF:
      v2 = 0x343330367830;
      break;
    case 0x10:
      v2 = 0x313430367830;
      break;
    case 0x11:
      v2 = 0x323331387830;
      break;
    case 0x12:
      v2 = 0x303331387830;
      break;
    case 0x13:
      v2 = 0x303430367830;
      break;
    case 0x14:
      v2 = 0x323431387830;
      break;
    case 0x15:
      v2 = 0x303431387830;
      break;
    case 0x16:
      v2 = 0x303531387830;
      break;
    case 0x17:
      v1 = 0xED000064657A696CLL;
      v2 = 0x6169636570736E75;
      break;
    default:
      v2 = 0x333031387830;
      break;
  }

  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

CoreMLOdie::TargetArchitecture_optional __swiftcall TargetArchitecture.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_245B92F60();

  v5 = 0;
  v6 = 6;
  switch(v3)
  {
    case 0:
      goto LABEL_18;
    case 1:
      v5 = 1;
      goto LABEL_18;
    case 2:
      v5 = 2;
      goto LABEL_18;
    case 3:
      v5 = 3;
      goto LABEL_18;
    case 4:
      v5 = 4;
      goto LABEL_18;
    case 5:
      v5 = 5;
LABEL_18:
      v6 = v5;
      break;
    case 6:
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
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
    default:
      v6 = 24;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_245B83828(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = TargetArchitecture.rawValue.getter();
  v4 = v3;
  if (v2 == TargetArchitecture.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_245B92F50();
  }

  return v7 & 1;
}

uint64_t sub_245B838C4()
{
  v1 = *v0;
  sub_245B92FF0();
  TargetArchitecture.rawValue.getter();
  sub_245B92C30();

  return sub_245B93010();
}

uint64_t sub_245B8392C()
{
  v2 = *v0;
  TargetArchitecture.rawValue.getter();
  sub_245B92C30();
}

uint64_t sub_245B83990()
{
  v1 = *v0;
  sub_245B92FF0();
  TargetArchitecture.rawValue.getter();
  sub_245B92C30();

  return sub_245B93010();
}

uint64_t sub_245B83A00@<X0>(uint64_t *a1@<X8>)
{
  result = TargetArchitecture.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_245B83A38(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = sub_245B92C40();
  if (__OFSUB__(result, v1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_245B92C60();

  return sub_245B92D00();
}

unint64_t sub_245B83B08()
{
  result = qword_27EE34978;
  if (!qword_27EE34978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34978);
  }

  return result;
}

unint64_t sub_245B83B60()
{
  result = qword_27EE34980;
  if (!qword_27EE34980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE34988, &qword_245B94E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34980);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TargetArchitecture(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TargetArchitecture(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_245B83D14()
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(v0 + 16))
  {
    e5rt_tensor_desc_get_shape();
  }

  type metadata accessor for E5MLDelegate.E5MLError();
  sub_245B7C384();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  result = swift_willThrow();
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245B83E74(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  *(v1 + 16) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_245B852D0(0, v2, 0);
    v3 = a1;
    v4 = *(v12 + 16);
    v5 = 32;
    v6 = v2;
    do
    {
      v7 = *(v3 + v5);
      v8 = *(v12 + 24);
      if (v4 >= v8 >> 1)
      {
        sub_245B852D0((v8 > 1), v4 + 1, 1);
        v3 = a1;
      }

      *(v12 + 16) = v4 + 1;
      *(v12 + 8 * v4 + 32) = v7;
      v5 += 8;
      ++v4;
      --v6;
    }

    while (v6);
  }

  e5rt_tensor_desc_create();

  type metadata accessor for E5MLDelegate.E5MLError();
  sub_245B7C384();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v9 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_245B84028()
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(v0 + 16))
  {
    v3 = *(v0 + 16);
    e5rt_tensor_desc_release();
  }

  result = swift_deallocClassInstance();
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_245B840B8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_245B8B884(a3, a4, a1, a2);
  if (v6)
  {
    type metadata accessor for E5MLDelegate.E5MLError();
    sub_245B7C384();
    swift_allocError();
    v8 = v7;
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_245B92E50();
    MEMORY[0x245D7A2F0](0x6574696D696C6544, 0xEB00000000272072);
    sub_245B92BA0();
    MEMORY[0x245D7A2F0](0xD000000000000011, 0x8000000245B93ED0);
    MEMORY[0x245D7A2F0](a1, a2);
    v9 = &v15;
    MEMORY[0x245D7A2F0](34, 0xE100000000000000);
    v10 = v16;
    *v8 = v15;
    v8[1] = v10;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v11 = sub_245B92D00();
    v9 = MEMORY[0x245D7A290](v11);

    v12 = sub_245B92C50();
    v13 = sub_245B8B974(v12, a1, a2);
    MEMORY[0x245D7A290](v13);
  }

  return v9;
}

uint64_t sub_245B84288(uint64_t a1, unint64_t a2)
{
  v21[0] = 44;
  v21[1] = 0xE100000000000000;
  v20[2] = v21;

  v5 = sub_245B843F0(0x7FFFFFFFFFFFFFFFLL, 1, sub_245B85AA0, v20, a1, a2, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v21[0] = MEMORY[0x277D84F90];
    sub_245B85330(0, v6, 0);
    v7 = v21[0];
    v8 = (v5 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;

      v13 = MEMORY[0x245D7A290](v9, v10, v11, v12);
      v15 = v14;

      v21[0] = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_245B85330((v16 > 1), v17 + 1, 1);
        v7 = v21[0];
      }

      *(v7 + 16) = v17 + 1;
      v18 = v7 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v7;
}

unint64_t sub_245B843F0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_245B92D00();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_245B84FAC(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_245B84FAC((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_245B92CE0();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_245B92C50();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_245B92C50();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_245B92D00();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_245B84FAC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_245B92D00();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_245B84FAC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_245B84FAC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_245B92C50();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_245B847B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE349C8, &qword_245B94F30);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_245B848B4(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE349D0, &qword_245B94F38);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_245B84ACC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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

void *sub_245B84BC8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE349F8, &qword_245B94F60);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A00, &qword_245B94F68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_245B84D10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34990, &qword_245B94EF8);
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

void *sub_245B84E64(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *sub_245B84FAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34998, &qword_245B94F00);
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

size_t sub_245B850B8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A08, &qword_245B94F70);
  v10 = *(sub_245B92780() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_245B92780() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_245B85290(char *a1, int64_t a2, char a3)
{
  result = sub_245B85350(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_245B852B0(size_t a1, int64_t a2, char a3)
{
  result = sub_245B85454(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_245B852D0(char *a1, int64_t a2, char a3)
{
  result = sub_245B85644(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_245B852F0(char *a1, int64_t a2, char a3)
{
  result = sub_245B85748(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_245B85310(void *a1, int64_t a2, char a3)
{
  result = sub_245B8584C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_245B85330(char *a1, int64_t a2, char a3)
{
  result = sub_245B85994(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_245B85350(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE349C8, &qword_245B94F30);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_245B85454(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE349D0, &qword_245B94F38);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_245B85644(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE349D8, &qword_245B94F40);
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

char *sub_245B85748(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE349A0, &qword_245B94F08);
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

void *sub_245B8584C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE349E8, &qword_245B94F50);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE349F0, &qword_245B94F58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_245B85994(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34990, &qword_245B94EF8);
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

uint64_t sub_245B85AA0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_245B92F50() & 1;
  }
}

uint64_t sub_245B85AFC(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_245B925E0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_245B85C0C, 0, 0);
}

uint64_t sub_245B85C0C()
{
  v106 = *MEMORY[0x277D85DE8];
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  *(v6 + 16) = sub_245B8D970(MEMORY[0x277D84F90]);
  v99 = (v6 + 16);
  sub_245B92900();
  sub_245B92580();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v8 = objc_opt_self();
  v9 = [v8 defaultManager];
  sub_245B925C0();
  v10 = sub_245B92BC0();

  LODWORD(v6) = [v9 fileExistsAtPath_];

  v11 = v0[16];
  if (!v6)
  {
    v15 = v0[11];
    v16 = v0[12];
    v17 = v0[10];
    v105 = v0[9];
    type metadata accessor for E5MLDelegate.E5MLError();
    sub_245B871F8(&qword_27EE34850, 255, type metadata accessor for E5MLDelegate.E5MLError);
    swift_allocError();
    (*(v16 + 16))(v18, v11, v15);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v19 = sub_245B92910();
    (*(*(v19 - 8) + 8))(v105, v19);
    v7(v11, v15);
    goto LABEL_27;
  }

  v104 = v7;
  v12 = sub_245B925C0();
  v14 = v13;
  type metadata accessor for E5RTProgramLibrary();
  swift_allocObject();
  v94 = sub_245B7DF2C(v12, v14);
  v21 = v0[14];
  v20 = v0[15];
  v22 = v0[11];
  v23 = v0[9];
  v24 = sub_245B8DA74(MEMORY[0x277D84F90]);
  sub_245B92900();
  sub_245B92580();
  v104(v20, v22);
  v25 = [v8 defaultManager];
  sub_245B925C0();
  v26 = sub_245B92BC0();

  v27 = [v25 fileExistsAtPath_];

  v100 = v0;
  if (!v27)
  {
LABEL_24:

    v63 = sub_245B7E1A4();
    if (!v63[2])
    {
      v66 = MEMORY[0x277D84F90];
      v103 = MEMORY[0x277D84F90];

      v67 = sub_245B7D6A0(v66, v103);
      v82 = v0[15];
      v83 = v0[16];
      v84 = v0[14];
      v101 = v0[13];
      v85 = v0[11];
      v86 = v0[9];
      v87 = v67;

      v88 = sub_245B92910();
      (*(*(v88 - 8) + 8))(v86, v88);
      v104(v84, v85);
      v104(v83, v85);
      swift_beginAccess();
      v89 = *v99;
      *v99 = v87;

      v90 = v0[1];
      v91 = v0[10];
      v92 = *MEMORY[0x277D85DE8];

      return v90(v91);
    }

    v65 = v63[4];
    v64 = v63[5];

    sub_245B86CE8(v65, v64, v94);

    v0 = v100;
    v68 = v100[16];
    v69 = v100[14];
    v71 = v100[10];
    v70 = v100[11];
    v72 = v100[9];

    type metadata accessor for E5MLDelegate.E5MLError();
    sub_245B871F8(&qword_27EE34850, 255, type metadata accessor for E5MLDelegate.E5MLError);
    swift_allocError();
    *v73 = v65;
    v73[1] = v64;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v74 = sub_245B92910();
    (*(*(v74 - 8) + 8))(v72, v74);
    v104(v69, v70);
    v104(v68, v70);

LABEL_27:
    v76 = v0[15];
    v75 = v0[16];
    v78 = v0[13];
    v77 = v0[14];

    v79 = v0[1];
    v80 = *MEMORY[0x277D85DE8];

    return v79();
  }

  v28 = v0[14];
  v29 = [v8 defaultManager];
  v30 = sub_245B92560();
  v0[8] = 0;
  v31 = [v29 contentsOfDirectoryAtURL:v30 includingPropertiesForKeys:0 options:0 error:v0 + 8];

  v32 = v0[8];
  if (!v31)
  {
    v61 = v32;
    v62 = sub_245B92520();

    swift_willThrow();
    MEMORY[0x245D7ACB0](v62);
    goto LABEL_24;
  }

  v33 = v0[11];
  v34 = sub_245B92D20();
  v35 = v32;

  v98 = *(v34 + 16);
  if (!v98)
  {
LABEL_22:

    goto LABEL_24;
  }

  v36 = 0;
  v96 = v34 + ((*(v0[12] + 80) + 32) & ~*(v0[12] + 80));
  v97 = v0[12];
  v95 = v34;
  while (1)
  {
    if (v36 >= *(v34 + 16))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      __break(1u);
    }

    v39 = v0[15];
    v40 = v0[13];
    v41 = v0[11];
    (*(v97 + 16))(v40, v96 + *(v97 + 72) * v36, v41);
    sub_245B92570();
    v42 = sub_245B92550();
    v44 = v43;
    v104(v39, v41);
    v45 = sub_245B925C0();
    v102 = v46;
    v104(v40, v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = sub_245B8BA78(v42, v44);
    v50 = v24[2];
    v51 = (v48 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_37;
    }

    v53 = v48;
    if (v24[3] < v52)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v48)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_245B8CB44();
      if (v53)
      {
LABEL_8:

        v37 = (v24[7] + 16 * v49);
        v38 = v37[1];
        *v37 = v45;
        v37[1] = v102;

        goto LABEL_9;
      }
    }

LABEL_18:
    v24[(v49 >> 6) + 8] |= 1 << v49;
    v56 = (v24[6] + 16 * v49);
    *v56 = v42;
    v56[1] = v44;
    v57 = (v24[7] + 16 * v49);
    *v57 = v45;
    v57[1] = v102;
    v58 = v24[2];
    v59 = __OFADD__(v58, 1);
    v60 = v58 + 1;
    if (v59)
    {
      goto LABEL_38;
    }

    v24[2] = v60;
LABEL_9:
    ++v36;
    v0 = v100;
    v34 = v95;
    if (v98 == v36)
    {
      goto LABEL_22;
    }
  }

  sub_245B8BF70(v52, isUniquelyReferenced_nonNull_native);
  v54 = sub_245B8BA78(v42, v44);
  if ((v53 & 1) == (v55 & 1))
  {
    v49 = v54;
    if (v53)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  v93 = *MEMORY[0x277D85DE8];

  return sub_245B92F80();
}

uint64_t sub_245B869E4()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_245B86A40(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  swift_allocObject();
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_245B76C6C;

  return sub_245B85AFC(a2);
}

uint64_t sub_245B86B14()
{
  type metadata accessor for E5MLDelegate.E5MLError();
  sub_245B871F8(&qword_27EE34850, 255, type metadata accessor for E5MLDelegate.E5MLError);
  swift_allocError();
  *v0 = 0xD000000000000023;
  v0[1] = 0x8000000245B93910;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t type metadata accessor for E5MLDelegate.E5MLError()
{
  result = qword_27EE34A28;
  if (!qword_27EE34A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_245B86CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v5 = *(a3 + 16);
      return e5rt_program_library_retain_program_function();
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *(a3 + 16);
      return e5rt_program_library_retain_program_function();
    }
  }

  type metadata accessor for e5rt_error_code_t(0);
  result = sub_245B92E40();
  if (!v3)
  {
    return v7;
  }

  return result;
}

uint64_t sub_245B86DA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a2;
  v4 = sub_245B92BF0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245B92940();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v46 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_245B92950();
  v29 = *(result + 16);
  if (!v29)
  {
  }

  v14 = 0;
  v28[1] = v9 + 16;
  v28[0] = v9 + 8;
  while (v14 < *(result + 16))
  {
    v15 = v3;
    v16 = result;
    v17 = v9;
    v18 = v8;
    (*(v9 + 16))(v46, result + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14, v8);
    v19 = sub_245B92930();
    v21 = v20;
    sub_245B92BE0();
    v22 = sub_245B92BD0();
    v24 = v23;
    result = sub_245B74A68(v19, v21);
    if (!v24)
    {
      goto LABEL_11;
    }

    sub_245B8DDA4(v22, v24, &v43);
    v3 = v15;
    if (v15)
    {
      (*v28[0])(v46, v18);
    }

    ++v14;
    v25 = v43;

    *&v39 = 0x2E4C4D3545;
    *(&v39 + 1) = 0xE500000000000000;
    v26 = v46;
    *&v35 = sub_245B92920();
    v27 = sub_245B92F40();
    v34 = v44;
    v33 = v45;
    MEMORY[0x245D7A2F0](v27);

    *&v40 = v31;
    *(&v40 + 1) = v25;
    v41 = v34;
    v42 = v33;
    v35 = v39;
    v36 = v40;
    v37 = v34;
    v38 = v33;
    sub_245B87134();

    sub_245B92790();
    v8 = v18;
    (*v28[0])(v26, v18);
    sub_245B87188(&v39);
    result = v16;
    v9 = v17;
    if (v29 == v14)
    {
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_245B87134()
{
  result = qword_27EE34A18;
  if (!qword_27EE34A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE34A18);
  }

  return result;
}

uint64_t sub_245B871F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_245B87240()
{
  result = sub_245B925E0();
  if (v1 <= 0x3F)
  {
    result = sub_245B872BC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_245B872BC()
{
  result = qword_27EE34A38;
  if (!qword_27EE34A38)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27EE34A38);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_245B87300(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_245B87348(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_245B873A8(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
      v4 = sub_245B92D40();
      *(v4 + 16) = a2;
      v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760) - 8);
      v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      sub_245B77E04(v3, v4 + v6);
      v7 = a2 - 1;
      if (a2 != 1)
      {
        v8 = *(v5 + 72);
        v9 = v4 + v8 + v6;
        do
        {
          sub_245B77E04(v3, v9);
          v9 += v8;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    sub_245B77E74(v3);
    return v4;
  }

  return result;
}

uint64_t sub_245B874CC(unint64_t a1, uint64_t **a2, unint64_t *a3)
{
  v184 = a2;
  v168 = a1;
  v204 = *MEMORY[0x277D85DE8];
  v173 = sub_245B92830();
  v170 = *(v173 - 8);
  v4 = *(v170 + 64);
  MEMORY[0x28223BE20](v173, v5);
  v172 = &v167 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34888, &unk_245B95100);
  v169 = *(v175 - 8);
  v7 = *(v169 + 64);
  MEMORY[0x28223BE20](v175, v8);
  v174 = (&v167 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34890, &unk_245B94790);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v177 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v176 = (&v167 - v16);
  v17 = sub_245B92780();
  v18 = *(v17 - 8);
  v198 = v17;
  v199 = v18;
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v178 = (&v167 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v167 - v24;
  v189 = sub_245B92990();
  v192 = *(v189 - 1);
  v26 = *(v192 + 64);
  v28 = MEMORY[0x28223BE20](v189, v27);
  v191 = &v167 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v190 = &v167 - v31;
  v32 = sub_245B92870();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v36 = MEMORY[0x28223BE20](v32, v35);
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v167 - v38;
  v40 = *(v33 + 16);
  v197 = a3;
  v40(&v167 - v38, a3, v32);
  v40(&v167 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v32);
  v41 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v42 = swift_allocObject();
  v182 = v33;
  v43 = &v167 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(v33 + 32);
  v181 = v42;
  v183 = v32;
  v44(v42 + v41, v39, v32);
  v171 = *v184;
  v45 = v171[2];
  if (v45)
  {
    v46 = 0;
    v188 = (v192 + 16);
    LODWORD(v187) = *MEMORY[0x277D36AE0];
    v185 = (v192 + 8);
    v186 = (v192 + 104);
    v194 = v199 + 88;
    v195 = v199 + 16;
    LODWORD(v193) = *MEMORY[0x277D36AC8];
    v196 = v199 + 8;
    do
    {
      v47 = *(sub_245B92860() + 16);

      if (v46 >= v47)
      {
        goto LABEL_8;
      }

      v48 = sub_245B92860();
      if (v46 >= *(v48 + 16))
      {
        goto LABEL_67;
      }

      v49 = v192;
      v50 = v190;
      v51 = v25;
      v52 = v189;
      (*(v192 + 16))(v190, v48 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v46, v189);

      v53 = v191;
      (*(v49 + 104))(v191, v187, v52);
      v54 = sub_245B92980();
      v55 = *(v49 + 8);
      v55(v53, v52);
      v56 = v52;
      v25 = v51;
      v55(v50, v56);
      if ((v54 & 1) == 0)
      {
LABEL_8:
        v57 = sub_245B92850();
        if (v46 >= *(v57 + 16))
        {
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v58 = v198;
        v59 = v199;
        (*(v199 + 16))(v25, v57 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v46, v198);

        v60 = (*(v59 + 88))(v25, v58);
        if (v60 != v193)
        {
          (*(v182 + 8))(v43, v183);
          (*v196)(v25, v58);
          type metadata accessor for E5MLDelegate.E5MLError();
          sub_245B7C384();
          swift_allocError();
          v62 = v61;
          v202 = 0;
          v203 = 0xE000000000000000;
          sub_245B92E50();

          v202 = 0xD000000000000026;
          v203 = 0x8000000245B93F30;
          v201 = v46;
          v63 = sub_245B92F40();
          MEMORY[0x245D7A2F0](v63);

          v64 = v203;
          *v62 = v202;
          v62[1] = v64;
LABEL_16:
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          goto LABEL_17;
        }

        (*v196)(v25, v58);
      }

      v46 = (v46 + 1);
    }

    while (v45 != v46);
  }

  (*(v182 + 8))(v43, v183);
  v66 = v180[2];
  v65 = v180[3];
  v68 = v180[4];
  v67 = v180[5];
  v70 = v180[6];
  v69 = v180[7];
  swift_beginAccess();
  v71 = *(v66 + 16);
  if (!*(v71 + 16) || (v72 = sub_245B8BA78(v65, v68), (v73 & 1) == 0))
  {
    swift_endAccess();
    type metadata accessor for E5MLDelegate.E5MLError();
    sub_245B7C384();
    swift_allocError();
    v79 = v78;
    v202 = 0;
    v203 = 0xE000000000000000;
    sub_245B92E50();

    v202 = 0xD000000000000021;
    v203 = 0x8000000245B93F60;
    MEMORY[0x245D7A2F0](v65, v68);
    v80 = v203;
    *v79 = v202;
    v79[1] = v80;
    goto LABEL_16;
  }

  v74 = *(*(v71 + 56) + 8 * v72);
  swift_endAccess();
  swift_retain_n();
  v75 = v179;
  v76 = sub_245B7D288(j__e5rt_execution_stream_operation_get_num_inputs, 0, j__e5rt_execution_stream_operation_get_input_names, 0, j__e5rt_execution_stream_operation_retain_input_port, 0);
  if (v75)
  {

    goto LABEL_18;
  }

  v82 = v76;
  v83 = sub_245B7D288(j__e5rt_execution_stream_operation_get_num_inouts, 0, j__e5rt_execution_stream_operation_get_inout_names, 0, j__e5rt_execution_stream_operation_retain_inout_port, 0);
  v84 = sub_245B7D288(j__e5rt_execution_stream_operation_get_num_outputs, 0, j__e5rt_execution_stream_operation_get_output_names, 0, j__e5rt_execution_stream_operation_retain_output_port, 0);
  v183 = v67;
  v196 = v82;
  v185 = v74;

  v85 = sub_245B8DC9C(MEMORY[0x277D84F90]);
  v191 = v171[2];
  if (!v191)
  {
    v106 = v175;
    goto LABEL_46;
  }

  v192 = v83;
  v193 = 0;
  v86 = 0;
  v188 = (v83 + 48);
  v189 = (v84 + 48);
  v190 = (v70 + 32);
  v194 = v84;
  do
  {
    if (v86 == 0x100000000)
    {
      goto LABEL_101;
    }

    v87 = v69[2];
    v195 = v85;
    if (v87)
    {
      v74 = v69;
      v88 = sub_245B8BAF0(v86);
      if (v89)
      {
        v90 = (v69[7] + 16 * v88);
        v92 = *v90;
        v91 = v90[1];
        v93 = *(v83 + 16) + 1;
        v94 = v188;
        while (--v93)
        {
          v95 = *v94;
          if (*(v94 - 2) != v92 || *(v94 - 1) != v91)
          {
            v94 += 3;
            if ((sub_245B92F50() & 1) == 0)
            {
              continue;
            }
          }

          v97 = v195;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v202 = v97;
          v74 = &v202;
          sub_245B8C888(v95, v86, isUniquelyReferenced_nonNull_native);
          v85 = v202;
          goto LABEL_42;
        }

        type metadata accessor for E5MLDelegate.E5MLError();
        sub_245B7C384();
        swift_allocError();
        v108 = v144;
        v202 = 0;
        v203 = 0xE000000000000000;
        sub_245B92E50();

        v109 = 0x8000000245B93FD0;
        v110 = 0xD000000000000014;
LABEL_70:
        v202 = v110;
        v203 = v109;
        MEMORY[0x245D7A2F0](v92, v91);

        v145 = v203;
        *v108 = v202;
        v108[1] = v145;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        goto LABEL_71;
      }
    }

    if (v193 >= *(v70 + 16))
    {

      type metadata accessor for E5MLDelegate.E5MLError();
      sub_245B7C384();
      swift_allocError();
      *v163 = 0xD00000000000001ELL;
      v163[1] = 0x8000000245B93F90;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_71;
    }

    if (v193 < 0)
    {
      goto LABEL_102;
    }

    v99 = v189;
    v100 = &v190[16 * v193];
    v92 = *v100;
    v91 = *(v100 + 1);
    v101 = *(v194 + 16) + 1;
    do
    {
      if (!--v101)
      {

        type metadata accessor for E5MLDelegate.E5MLError();
        sub_245B7C384();
        swift_allocError();
        v108 = v107;
        v202 = 0;
        v203 = 0xE000000000000000;
        sub_245B92E50();

        v109 = 0x8000000245B93FB0;
        v110 = 0xD000000000000015;
        goto LABEL_70;
      }

      v102 = *v99;
      if (*(v99 - 2) == v92 && *(v99 - 1) == v91)
      {
        break;
      }

      v99 += 3;
    }

    while ((sub_245B92F50() & 1) == 0);

    v104 = v195;
    v105 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v104;
    v74 = &v202;
    sub_245B8C888(v102, v86, v105);
    v85 = v202;
    ++v193;
LABEL_42:
    ++v86;
    v83 = v192;
    v106 = v175;
  }

  while (v86 != v191);
LABEL_46:
  v195 = v85;

  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_245B92DB0())
    {
      v111 = sub_245B8B5F0(MEMORY[0x277D84F90]);
    }

    else
    {
      v111 = MEMORY[0x277D84FA0];
    }

    v106 = v175;
  }

  else
  {
    v111 = MEMORY[0x277D84FA0];
  }

  v85 = v170;
  v112 = v169;
  v201 = v111;
  v113 = sub_245B92850();
  v114 = 0;
  v115 = *(v113 + 16);
  v190 = (v199 + 16);
  v191 = v113;
  v116 = (v112 + 56);
  v117 = (v112 + 48);
  v193 = v199 + 32;
  v194 = v115;
  v118 = (v199 + 88);
  LODWORD(v192) = *MEMORY[0x277D36AC8];
  v188 = (v199 + 96);
  v189 = (v199 + 8);
  v186 = (v85 + 8);
  v187 = (v85 + 16);
  while (2)
  {
    v74 = v178;
    while (2)
    {
      if (v114 == v194)
      {
        v119 = 1;
        v114 = v194;
        v120 = v177;
        v121 = v176;
        goto LABEL_56;
      }

      v120 = v177;
      if ((v114 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      if (v114 >= *(v191 + 2))
      {
        goto LABEL_100;
      }

      v122 = v198;
      v123 = v199;
      v124 = &v191[((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v114];
      v125 = *(v106 + 48);
      v126 = v174;
      *v174 = v114;
      (*(v123 + 16))(v126 + v125, v124, v122);
      sub_245B7CD64(v126, v120, &qword_27EE34888, &unk_245B95100);
      v119 = 0;
      ++v114;
      v121 = v176;
      v74 = v178;
LABEL_56:
      (*v116)(v120, v119, 1, v106);
      sub_245B7CD64(v120, v121, &qword_27EE34890, &unk_245B94790);
      if ((*v117)(v121, 1, v106) == 1)
      {

        v146 = *(v183 + 16);
        if (v146)
        {
          v147 = 0;
          v198 = (v196 + 48);
          v199 = v183 + 32;
LABEL_76:
          v148 = (v199 + 16 * v147);
          v150 = *v148;
          v149 = v148[1];
          ++v147;
          v151 = *(v196 + 16);

          v152 = -1;
          v153 = v198;
          while (1)
          {
            if (v152 - v151 == -1)
            {

LABEL_75:
              if (v147 == v146)
              {
                goto LABEL_87;
              }

              goto LABEL_76;
            }

            if (++v152 >= *(v196 + 16))
            {
              break;
            }

            v154 = *v153;
            if (*(v153 - 2) != v150 || *(v153 - 1) != v149)
            {
              v153 += 3;
              if ((sub_245B92F50() & 1) == 0)
              {
                continue;
              }
            }

            LOBYTE(v202) = 0;
            v156 = *(v154 + 16);

            if (e5rt_io_port_is_dynamic())
            {

              type metadata accessor for E5MLDelegate.E5MLError();
              sub_245B7C384();
              swift_allocError();
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

              goto LABEL_18;
            }

            if (v202)
            {
              v157 = sub_245B92850();
              v158 = v168;
              v147 = v185;
              v159 = v184;
              sub_245B78418(v168, v183, v185, v157, v195, v184);

              v164 = v181;
              goto LABEL_88;
            }

            goto LABEL_75;
          }

          __break(1u);
        }

        else
        {
LABEL_87:
          v164 = v181;
          v147 = v185;
          v159 = v184;
          v158 = v168;
LABEL_88:
          v160 = sub_245B92840();
          sub_245B7C8AC(v158, v160, v196, v183);

          v161 = *v159;
          v162 = sub_245B92850();
          sub_245B7A368(v161, v162, v195, sub_245B8A9A4, v164);

          v202 = 0;
          if (e5rt_execution_stream_create())
          {
            goto LABEL_92;
          }
        }

        v85 = v202;
        if (v202)
        {
          v165 = *(v147 + 16);
          if (e5rt_execution_stream_encode_operation() || (v166 = e5rt_execution_stream_execute_sync(), v74 = v201, v166))
          {

            type metadata accessor for E5MLDelegate.E5MLError();
            sub_245B7C384();
            swift_allocError();
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
LABEL_98:

            v202 = v85;
            e5rt_execution_stream_release();

            goto LABEL_17;
          }

LABEL_103:
          sub_245B7AE50(v195, v74, v197, v184);

          goto LABEL_98;
        }

LABEL_92:

        type metadata accessor for E5MLDelegate.E5MLError();
        sub_245B7C384();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        goto LABEL_17;
      }

      v45 = *v121;
      v127 = v121 + *(v106 + 48);
      v128 = v198;
      (*v193)(v74, v127, v198);
      v129 = (*v118)(v74, v128);
      if (v129 == v192)
      {
        (*v188)(v74, v128);
        v130 = *v74;
        v131 = swift_projectBox();
        v132 = v172;
        v133 = v173;
        (*v187)(v172, v131, v173);

        v85 = sub_245B927D0();
        v134 = v132;
        v74 = v178;
        v135 = v133;
        v106 = v175;
        (*v186)(v134, v135);
        if ((v85 & 1) == 0)
        {
          goto LABEL_61;
        }

        continue;
      }

      break;
    }

    (*v189)(v74, v128);
LABEL_61:
    v136 = v195;
    if (*(v195 + 16))
    {
      v137 = sub_245B8BA34(v45);
      if (v138)
      {
        v85 = *(*(v136 + 56) + 8 * v137);
        LOBYTE(v202) = 0;
        v139 = *(v85 + 16);

        if (e5rt_io_port_has_known_shape() || (v202 & 1) == 0)
        {
          sub_245B8AA14(&v202, v85);
        }

        else
        {
        }

        continue;
      }
    }

    break;
  }

LABEL_68:

  type metadata accessor for E5MLDelegate.E5MLError();
  sub_245B7C384();
  swift_allocError();
  v141 = v140;
  v202 = 0;
  v203 = 0xE000000000000000;
  sub_245B92E50();

  v202 = 0xD00000000000001DLL;
  v203 = 0x8000000245B93B40;
  v200 = v45;
  v142 = sub_245B92F40();
  MEMORY[0x245D7A2F0](v142);

  v143 = v203;
  *v141 = v202;
  v141[1] = v143;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_71:

LABEL_17:

LABEL_18:
  v81 = *MEMORY[0x277D85DE8];
  return result;
}