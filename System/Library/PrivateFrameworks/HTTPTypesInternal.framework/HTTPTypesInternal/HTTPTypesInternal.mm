uint64_t HTTPField.init(name:value:)(uint64_t a1)
{
  v2 = *(*(sub_2509AB7B4() - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_2509AB7C4();
  return sub_25099D5F4(a1, type metadata accessor for HTTPField.Name);
}

uint64_t sub_25099D008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t, uint64_t))
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(sub_2509AB7B4() - 8) + 64);
  MEMORY[0x28223BE20]();
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a1);
  (*(v10 + 16))(v13, a2, a3);
  a5(v16, v13, a3, a4);
  (*(v10 + 8))(a2, a3);
  return sub_25099D5F4(a1, type metadata accessor for HTTPField.Name);
}

void (*HTTPField.name.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_2509AB7B4();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[3] = v8;
  v9 = *(*(type metadata accessor for HTTPField.Name(0) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v5[5] = v10;
  _s17HTTPTypesInternal9HTTPFieldV4nameAC4NameVvg_0();
  return sub_25099D3C4;
}

uint64_t sub_25099D3F4@<X0>(uint64_t *a1@<X8>)
{
  result = _s17HTTPTypesInternal9HTTPFieldV5valueSSvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25099D420(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _s17HTTPTypesInternal9HTTPFieldV5valueSSvs_0();
}

uint64_t (*HTTPField.value.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = _s17HTTPTypesInternal9HTTPFieldV5valueSSvg_0();
  a1[1] = v3;
  return sub_25099D4AC;
}

uint64_t sub_25099D4AC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    _s17HTTPTypesInternal9HTTPFieldV5valueSSvs_0();
  }

  else
  {
    v7 = *a1;
    return _s17HTTPTypesInternal9HTTPFieldV5valueSSvs_0();
  }
}

uint64_t sub_25099D5F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void (*HTTPField.indexingStrategy.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_2509AB2F4();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[3] = v8;
  v9 = *(*(type metadata accessor for HTTPField.DynamicTableIndexingStrategy(0) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v5[5] = v10;
  _s17HTTPTypesInternal9HTTPFieldV16indexingStrategyAC020DynamicTableIndexingE0Vvg_0();
  return sub_25099D7B0;
}

uint64_t sub_25099D7DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25099D880()
{
  result = qword_27F3E0C48;
  if (!qword_27F3E0C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3E0C48);
  }

  return result;
}

uint64_t sub_25099D924(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HTTPField.playgroundDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  result = _s17HTTPTypesInternal9HTTPFieldV11descriptionSSvg_0();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25099DACC@<X0>(uint64_t *a1@<X8>)
{
  result = _s17HTTPTypesInternal9HTTPFieldV11descriptionSSvg_0();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
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

uint64_t HTTPField.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_2509AB804();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(type metadata accessor for HTTPField(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v11 = &v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2509AB9B4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_25099D924(&qword_27F3E0C60, MEMORY[0x277CD9048]);
    sub_2509AB964();
    (*(v5 + 32))(v11, v8, v4);
    __swift_destroy_boxed_opaque_existential_1(v15);
    sub_25099DF40(v11, v16, type metadata accessor for HTTPField);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
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

uint64_t sub_25099DF40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25099DFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0C68, &qword_2509ABB20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v25 - v8;
  v10 = sub_2509AB7B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HTTPField.Name(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20]();
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(a1, a2);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2509AA634(v9, &qword_27F3E0C68, &qword_2509ABB20);
    v20 = 1;
    v21 = v26;
  }

  else
  {
    v22 = *(v11 + 32);
    v22(v14, v9, v10);
    v22(v19, v14, v10);
    v23 = v26;
    sub_25099DF40(v19, v26, type metadata accessor for HTTPField.Name);
    v20 = 0;
    v21 = v23;
  }

  return (*(v16 + 56))(v21, v20, 1, v15);
}

uint64_t HTTPField.Name.playgroundDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  result = _s17HTTPTypesInternal9HTTPFieldV4NameV03rawD0SSvg_0();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25099E3D4@<X0>(uint64_t *a1@<X8>)
{
  result = _s17HTTPTypesInternal9HTTPFieldV4NameV03rawD0SSvg_0();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t HTTPField.Name.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_2509AB7B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(type metadata accessor for HTTPField.Name(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v11 = &v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2509AB9B4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_25099D924(&qword_27F3E0C80, MEMORY[0x277CD9000]);
    sub_2509AB964();
    (*(v5 + 32))(v11, v8, v4);
    __swift_destroy_boxed_opaque_existential_1(v15);
    sub_25099DF40(v11, v16, type metadata accessor for HTTPField.Name);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25099E84C@<X0>(uint64_t *a1@<X8>)
{
  result = _s17HTTPTypesInternal10HTTPFieldsVySSSgAA9HTTPFieldV4NameVcig_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25099E87C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2509AB7B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(type metadata accessor for HTTPField.Name(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25099D7DC(a3, v12, type metadata accessor for HTTPField.Name);
  v13 = *a1;
  v14 = a1[1];
  (*(v6 + 16))(v9, v12, v5);

  sub_2509AAC14();
  return sub_25099D5F4(v12, type metadata accessor for HTTPField.Name);
}

uint64_t HTTPFields.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(sub_2509AB7B4() - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  sub_2509AAC14();
  return sub_25099D5F4(a3, type metadata accessor for HTTPField.Name);
}

void (*HTTPFields.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x40uLL);
  }

  v7 = v6;
  *a1 = v6;
  *(v6 + 16) = v2;
  v8 = sub_2509AB7B4();
  v7[3] = v8;
  v9 = *(v8 - 8);
  v7[4] = v9;
  if (v5)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v7[5] = v10;
  v11 = *(*(type metadata accessor for HTTPField.Name(0) - 8) + 64);
  if (v5)
  {
    v7[6] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[6] = malloc(v11);
    v12 = malloc(v11);
  }

  v7[7] = v12;
  sub_25099D7DC(a2, v12, type metadata accessor for HTTPField.Name);
  *v7 = _s17HTTPTypesInternal10HTTPFieldsVySSSgAA9HTTPFieldV4NameVcig_0();
  v7[1] = v13;
  return sub_25099EC3C;
}

{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  *(v6 + 8) = v2;
  v8 = sub_2509AB7B4();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  if (v5)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v7[4] = v10;
  v11 = *(*(type metadata accessor for HTTPField.Name(0) - 8) + 64);
  if (v5)
  {
    v7[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[5] = malloc(v11);
    v12 = malloc(v11);
  }

  v7[6] = v12;
  sub_25099D7DC(a2, v12, type metadata accessor for HTTPField.Name);
  *v7 = _s17HTTPTypesInternal10HTTPFieldsV6valuesSaySSGAA9HTTPFieldV4NameV_tcig_0();
  return sub_25099F15C;
}

void sub_25099EC3C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[6];
  v6 = (*a1)[7];
  v8 = (*a1)[4];
  v7 = (*a1)[5];
  v9 = (*a1)[2];
  v10 = (*a1)[3];
  if (a2)
  {
    sub_25099DF40((*a1)[7], v5, type metadata accessor for HTTPField.Name);
    (*(v8 + 16))(v7, v5, v10);

    sub_2509AAC14();
    sub_25099D5F4(v5, type metadata accessor for HTTPField.Name);
    v11 = v2[1];
  }

  else
  {
    (*(v8 + 16))((*a1)[5], v6, v10);
    sub_2509AAC14();
    sub_25099D5F4(v6, type metadata accessor for HTTPField.Name);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_25099ED84@<X0>(uint64_t *a1@<X8>)
{
  result = _s17HTTPTypesInternal10HTTPFieldsV6valuesSaySSGAA9HTTPFieldV4NameV_tcig_0();
  *a1 = result;
  return result;
}

uint64_t sub_25099EDB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2509AB7B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(type metadata accessor for HTTPField.Name(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25099D7DC(a3, v12, type metadata accessor for HTTPField.Name);
  v13 = *a1;
  (*(v6 + 16))(v9, v12, v5);

  sub_2509AAB84();
  return sub_25099D5F4(v12, type metadata accessor for HTTPField.Name);
}

uint64_t HTTPFields.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(*(sub_2509AB7B4() - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_2509AAB84();
  return sub_25099D5F4(a2, type metadata accessor for HTTPField.Name);
}

{
  v5 = *(type metadata accessor for HTTPField(0) - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v31 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2509AB804();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(sub_2509AB7B4() - 8) + 64);
  MEMORY[0x28223BE20]();
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a2);
  v17 = *(a1 + 16);
  if (v17)
  {
    v28[0] = v15;
    v29 = a2;
    v30 = v2;
    v34 = MEMORY[0x277D84F90];
    sub_2509A8558(0, v17, 0);
    v18 = v34;
    v19 = *(v5 + 80);
    v28[1] = a1;
    v20 = a1 + ((v19 + 32) & ~v19);
    v32 = *(v5 + 72);
    v33 = v9;
    v21 = (v9 + 32);
    v22 = v31;
    do
    {
      sub_25099D7DC(v20, v22, type metadata accessor for HTTPField);
      v23 = *v21;
      (*v21)(v12, v22, v8);
      v34 = v18;
      v24 = v8;
      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2509A8558(v25 > 1, v26 + 1, 1);
        v22 = v31;
        v18 = v34;
      }

      *(v18 + 16) = v26 + 1;
      v23((v18 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v26), v12, v24);
      v20 += v32;
      --v17;
      v8 = v24;
    }

    while (v17);

    a2 = v29;
  }

  else
  {
  }

  sub_2509AAB64();
  return sub_25099D5F4(a2, type metadata accessor for HTTPField.Name);
}

void sub_25099F15C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    sub_25099DF40((*a1)[6], v3, type metadata accessor for HTTPField.Name);
    (*(v6 + 16))(v5, v3, v8);

    sub_2509AAB84();
    sub_25099D5F4(v3, type metadata accessor for HTTPField.Name);
    v10 = *v2;
  }

  else
  {
    (*(v6 + 16))((*a1)[4], v4, v8);
    sub_2509AAB84();
    sub_25099D5F4(v4, type metadata accessor for HTTPField.Name);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t HTTPFields.subscript.getter()
{
  v0 = *(type metadata accessor for HTTPField(0) - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20]();
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2509AAB54();
  v5 = *(v4 + 16);
  if (v5)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2509A8514(0, v5, 0);
    v6 = v17;
    v16 = sub_2509AB804();
    v7 = *(v16 - 8);
    v8 = *(v7 + 16);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v15[1] = v4;
    v10 = v4 + v9;
    v11 = *(v7 + 72);
    do
    {
      v8(v3, v10, v16);
      v17 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2509A8514(v12 > 1, v13 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v13 + 1;
      sub_25099DF40(v3, v6 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v13, type metadata accessor for HTTPField);
      v10 += v11;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_25099F470@<X0>(uint64_t *a1@<X8>)
{
  result = HTTPFields.subscript.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25099F4A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(type metadata accessor for HTTPField.Name(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25099D7DC(a3, v7, type metadata accessor for HTTPField.Name);
  v8 = *a1;

  return HTTPFields.subscript.setter(v9, v7);
}

uint64_t sub_25099F878(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_2509AB884();
  if (!v26)
  {
    return sub_2509AB864();
  }

  v48 = v26;
  v52 = sub_2509AB924();
  v39 = sub_2509AB934();
  sub_2509AB904();
  result = sub_2509AB874();
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
      v29 = sub_2509AB8A4();
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
      sub_2509AB914();
      result = sub_2509AB894();
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

void (*HTTPFields.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = v2;
  v5 = *(*(type metadata accessor for HTTPField.Name(0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    a1[2] = malloc(v5);
    v6 = malloc(v5);
  }

  a1[3] = v6;
  sub_25099D7DC(a2, v6, type metadata accessor for HTTPField.Name);
  *a1 = HTTPFields.subscript.getter();
  return sub_25099FD6C;
}

void sub_25099FD6C(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    sub_25099DF40(a1[3], v2, type metadata accessor for HTTPField.Name);

    HTTPFields.subscript.setter(v6, v2);
  }

  else
  {
    HTTPFields.subscript.setter(*a1, v3);
  }

  free(v3);

  free(v2);
}

uint64_t HTTPFields.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2509AB804();
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  (MEMORY[0x28223BE20])();
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2509AB7B4();
  v48 = *(v44 - 8);
  v8 = *(v48 + 64);
  (MEMORY[0x28223BE20])();
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &qword_27F3E0C90;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0C90, &qword_2509ABB28);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v42 = &v39 - v14;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0C98, &qword_2509ABB30) - 8) + 64);
  v16 = (MEMORY[0x28223BE20])();
  v53 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v51 = &v39 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CA0, &qword_2509ABB38);
  v20 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19 - 8);
  v52 = &v39 - v21;
  result = _s17HTTPTypesInternal10HTTPFieldsVACycfC_0();
  v23 = 0;
  v24 = *(a1 + 16);
  v49 = (v12 + 48);
  v50 = (v12 + 56);
  v39 = v12;
  v40 = (v48 + 16);
  v47 = (v54 + 48);
  v48 = v54 + 56;
  v45 = (v54 + 32);
  v46 = v24;
  v41 = a2;
  while (1)
  {
    v25 = v51;
    if (v23 == v24)
    {
      v26 = 1;
      v54 = v24;
      goto LABEL_7;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v23 >= *(a1 + 16))
    {
      goto LABEL_13;
    }

    sub_2509AA564(a1 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v23, v51, v10, &qword_2509ABB28);
    v26 = 0;
    v54 = v23 + 1;
LABEL_7:
    v27 = 1;
    (*v50)(v25, v26, 1, v11);
    v28 = v25;
    v29 = v53;
    sub_2509AA5CC(v28, v53, &qword_27F3E0C98, &qword_2509ABB30);
    if ((*v49)(v29, 1, v11) != 1)
    {
      v30 = v42;
      sub_2509AA5CC(v53, v42, v10, &qword_2509ABB28);
      v31 = (v30 + *(v11 + 48));
      v32 = v10;
      v33 = v7;
      v34 = v4;
      v35 = a1;
      v36 = *v31;
      v37 = v31[1];
      (*v40)(v43, v30, v44);

      a1 = v35;
      v4 = v34;
      v7 = v33;
      v10 = v32;
      sub_2509AB7C4();
      sub_2509AA634(v30, v32, &qword_2509ABB28);
      v27 = 0;
    }

    v38 = v52;
    (*v48)(v52, v27, 1, v4);
    if ((*v47)(v38, 1, v4) == 1)
    {
    }

    (*v45)(v7, v38, v4);
    sub_2509AABD4();
    sub_25099D924(&qword_27F3E0CA8, MEMORY[0x277CD8A80]);
    result = sub_2509AB8C4();
    v24 = v46;
    v23 = v54;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2509A04A4(uint64_t a1)
{
  v2 = sub_2509AB7B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0C90, &qword_2509ABB28) + 48));
  v8 = *v7;
  v9 = v7[1];
  (*(v3 + 16))(v6, a1, v2);

  return sub_2509AB7C4();
}

uint64_t sub_2509A05B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2509AB804();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v29 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0E50, &qword_2509AC848);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0E60, &qword_2509AC858);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (v25 - v14);
  sub_2509AA5CC(a1, v25 - v14, &qword_27F3E0E58, &qword_2509AC850);
  v16 = *(v12 + 44);
  *(v15 + v16) = 0;
  v17 = *v15;
  if (!*v15)
  {
    return sub_2509AA634(v15, &qword_27F3E0E60, &qword_2509AC858);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0E58, &qword_2509AC850);
  if (v17 >= 1)
  {
    v26 = *(result + 28);
    v27 = (v30 + 16);
    v25[0] = v16;
    v25[1] = v30 + 32;
    v19 = v17;
    v28 = v17;
    do
    {
      _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
      sub_25099D7DC(v15 + v26, v10, type metadata accessor for HTTPField);
      v31 = MEMORY[0x277D84F90];
      sub_2509A8558(0, 1, 0);
      v20 = v31;
      v21 = v29;
      (*v27)(v29, v10, v4);
      v31 = v20;
      v22 = v2;
      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2509A8558(v23 > 1, v24 + 1, 1);
        v21 = v29;
        v20 = v31;
      }

      *(v20 + 16) = v24 + 1;
      (*(v30 + 32))(v20 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24, v21, v4);
      v31 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CB0, &qword_2509ABB40);
      sub_2509A8D14(&qword_27F3E0CB8, &qword_27F3E0CB0, &qword_2509ABB40);
      sub_2509AAB14();
      sub_2509AA634(v10, &qword_27F3E0E50, &qword_2509AC848);

      --v19;
      v2 = v22;
    }

    while (v19);
    *(v15 + v25[0]) = v28;
    return sub_2509AA634(v15, &qword_27F3E0E60, &qword_2509AC858);
  }

  __break(1u);
  return result;
}

uint64_t sub_2509A0948(uint64_t a1)
{
  _s17HTTPTypesInternal10HTTPFieldsVACycfC_0();
  sub_2509AA694(a1, sub_2509A04A4, 0);
}

uint64_t sub_2509A09DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_2509AB804();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HTTPField(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  sub_25099D7DC(a1, v13, type metadata accessor for HTTPField);
  (*(v6 + 16))(v9, v13, v5);
  sub_2509AABF4();
  return sub_25099D5F4(v13, type metadata accessor for HTTPField);
}

uint64_t HTTPFields.subscript.setter(uint64_t a1)
{
  v2 = sub_2509AB804();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_2509AABF4();
  return sub_25099D5F4(a1, type metadata accessor for HTTPField);
}

void (*HTTPFields.subscript.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = sub_2509AB804();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  if (v5)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v7[4] = v10;
  v11 = *(*(type metadata accessor for HTTPField(0) - 8) + 64);
  if (v5)
  {
    v7[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[5] = malloc(v11);
    v12 = malloc(v11);
  }

  v7[6] = v12;
  _s17HTTPTypesInternal10HTTPFieldsVyAA9HTTPFieldVSicig_0();
  return sub_2509A0D64;
}

void sub_2509A0D64(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    sub_25099D7DC((*a1)[6], v3, type metadata accessor for HTTPField);
    (*(v6 + 16))(v5, v3, v8);
    sub_2509AABF4();
    sub_25099D5F4(v3, type metadata accessor for HTTPField);
  }

  else
  {
    (*(v6 + 16))((*a1)[4], v4, v8);
    sub_2509AABF4();
  }

  sub_25099D5F4(v4, type metadata accessor for HTTPField);
  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_2509A0E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2509AB804();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D84F90];
  sub_2509A8558(0, 1, 0);
  v9 = v14;
  (*(v5 + 16))(v8, a3, v4);
  v14 = v9;
  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  if (v11 >= v10 >> 1)
  {
    sub_2509A8558(v10 > 1, v11 + 1, 1);
    v9 = v14;
  }

  *(v9 + 16) = v11 + 1;
  (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v8, v4);
  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CB0, &qword_2509ABB40);
  sub_2509A8D14(&qword_27F3E0CB8, &qword_27F3E0CB0, &qword_2509ABB40);
  sub_2509AAB14();
}

uint64_t HTTPFields.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2509AB804();
  sub_25099F878(sub_2509A1178, 0, a4, v7, MEMORY[0x277D84A98], a5, MEMORY[0x277D84AC0], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CB0, &qword_2509ABB40);
  sub_2509A8D14(&qword_27F3E0CB8, &qword_27F3E0CB0, &qword_2509ABB40);
  sub_2509AAB14();
}

uint64_t sub_2509A11F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  HTTPFields.replaceSubrange<A>(_:with:)(*a1, a1[1], a2, a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a2, a3);
}

uint64_t sub_2509A1274(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0E58, &qword_2509AC850);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v9 - v6);
  result = _s17HTTPTypesInternal10HTTPFieldsVACycfC_0();
  if (!a2)
  {
    return sub_25099D5F4(a1, type metadata accessor for HTTPField);
  }

  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    *v7 = a2;
    sub_25099DF40(a1, v7 + *(v4 + 28), type metadata accessor for HTTPField);
    return sub_2509A05B4(v7);
  }

  return result;
}

uint64_t sub_2509A1380(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0E50, &qword_2509AC848);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  v6 = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  sub_25099DF40(a1, v5, type metadata accessor for HTTPField);
  sub_2509A0E84(v6, v6, v5);
  return sub_2509AA634(v5, &qword_27F3E0E50, &qword_2509AC848);
}

uint64_t sub_2509A1468(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0E50, &qword_2509AC848);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = *a2;
  sub_25099DF40(a1, &v10 - v6, type metadata accessor for HTTPField);
  sub_2509A0E84(v8, v8, v7);
  return sub_2509AA634(v7, &qword_27F3E0E50, &qword_2509AC848);
}

uint64_t sub_2509A1550(uint64_t *a1)
{
  v1 = *a1;
  result = _s17HTTPTypesInternal10HTTPFieldsV7isEmptySbvg_0();
  if (result)
  {
    __break(1u);
  }

  else
  {
    _s17HTTPTypesInternal10HTTPFieldsVyAA9HTTPFieldVSicig_0();
    v3 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
    result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
    if (v1 >= v3 && v1 < result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CB0, &qword_2509ABB40);
      sub_2509A8D14(&qword_27F3E0CB8, &qword_27F3E0CB0, &qword_2509ABB40);
      return sub_2509AAB14();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2509A162C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CB0, &qword_2509ABB40);
  sub_2509A8D14(&qword_27F3E0CB8, &qword_27F3E0CB0, &qword_2509ABB40);
  return sub_2509AAB14();
}

uint64_t sub_2509A16D0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for HTTPField(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_2509A1748()
{
  result = _s17HTTPTypesInternal10HTTPFieldsV7isEmptySbvg_0();
  if (result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  if (v1 == result)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  _s17HTTPTypesInternal10HTTPFieldsVyAA9HTTPFieldVSicig_0();
  v2 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  v3 = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  result = sub_2509A1A74(v2, 1, v3);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    result = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
    if (v5 >= result)
    {
      type metadata accessor for HTTPFields(0);
      sub_25099D924(&qword_27F3E0D88, type metadata accessor for HTTPFields);
      return sub_2509AB8B4();
    }

    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2509A1838(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
      v3 = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
      result = sub_2509A1A74(v2, v1, v3);
      if (v4)
      {
LABEL_9:
        __break(1u);
        return result;
      }

      v5 = result;
      result = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
      if (v5 >= result)
      {
        type metadata accessor for HTTPFields(0);
        sub_25099D924(&qword_27F3E0D88, type metadata accessor for HTTPFields);
        return sub_2509AB8B4();
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2509A1900(char a1)
{
  if (a1)
  {
    v2 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
    result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
    if (result < v2)
    {
      __break(1u);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CB0, &qword_2509ABB40);
      sub_2509A8D14(&qword_27F3E0CB8, &qword_27F3E0CB0, &qword_2509ABB40);
      return sub_2509AAB14();
    }
  }

  else
  {
    sub_25099D5F4(v1, type metadata accessor for HTTPFields);

    return _s17HTTPTypesInternal10HTTPFieldsVACycfC_0();
  }

  return result;
}

uint64_t sub_2509A1A08(uint64_t (*a1)(char *), uint64_t a2)
{
  result = sub_2509A98FC(a1, a2);
  if (!v2)
  {
    v4 = result;
    result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
    if (result < v4)
    {
      __break(1u);
    }

    else
    {
      return sub_2509AB8B4();
    }
  }

  return result;
}

uint64_t sub_2509A1A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  if (v6 > a1 || result < a1)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  if (v8 > a3 || result < a3)
  {
    goto LABEL_18;
  }

  v9 = a3 - a1;
  if (__OFSUB__(a3, a1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a2 >= 1)
  {
    if (v9 < 0 || v9 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v9 <= 0 && v9 > a2)
  {
    return 0;
  }

LABEL_13:
  v11 = __OFADD__(a1, a2);
  v10 = a1 + a2;
  if (v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  if (v10 >= v12 && result >= v10)
  {
    return v10;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2509A1B60(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2509AB804();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = *a2;
  (*(v8 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_2509AABF4();
  return sub_25099D5F4(a1, type metadata accessor for HTTPField);
}

void (*sub_2509A1C4C(void *a1, uint64_t *a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = sub_2509AB804();
  v7[1] = v8;
  v9 = *(v8 - 8);
  v7[2] = v9;
  if (v5)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v7[3] = v10;
  v11 = *(*(type metadata accessor for HTTPField(0) - 8) + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(v11);
    v12 = malloc(v11);
  }

  v13 = v12;
  v14 = *a2;
  v7[5] = v13;
  v7[6] = v14;
  _s17HTTPTypesInternal10HTTPFieldsVyAA9HTTPFieldVSicig_0();
  return sub_2509A1D90;
}

void sub_2509A1D90(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    sub_25099D7DC((*a1)[5], v6, type metadata accessor for HTTPField);
    (*(v8 + 16))(v5, v6, v7);
    sub_2509AABF4();
    sub_25099D5F4(v6, type metadata accessor for HTTPField);
  }

  else
  {
    (*(v8 + 16))((*a1)[3], v3, v7);
    sub_2509AABF4();
  }

  sub_25099D5F4(v3, type metadata accessor for HTTPField);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

void (*sub_2509A1EFC(void *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2509A1FBC(v4, *a2, a2[1]);
  return sub_2509A1F74;
}

void sub_2509A1F74(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_2509A1FBC(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0D80, &qword_2509ABEA0);
  v11 = *(*(v10 - 8) + 64);
  if (v7)
  {
    v9[3] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v9[3] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v9[4] = v12;
  v14 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  if (result < v14)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v14 > a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result >= a3)
  {
    sub_25099D7DC(v3, v13 + *(v10 + 40), type metadata accessor for HTTPFields);
    *v13 = a2;
    v13[1] = a3;
    return sub_2509A210C;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_2509A210C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    sub_2509AA564((*a1)[4], v3, &qword_27F3E0D80, &qword_2509ABEA0);
    sub_2509A824C(v6, v7, v5, v3);
    sub_2509AA634(v3, &qword_27F3E0D80, &qword_2509ABEA0);
  }

  else
  {
    sub_2509A824C((*a1)[2], v7, v5, v4);
  }

  sub_2509AA634(v4, &qword_27F3E0D80, &qword_2509ABEA0);
  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_2509A21F0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2509A9DE8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2509A2228(uint64_t a1, uint64_t a2)
{
  v4 = sub_2509AB804();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HTTPField(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v21 - v15;
  result = MEMORY[0x28223BE20](v14);
  v19 = &v21 - v18;
  if (a1 != a2)
  {
    _s17HTTPTypesInternal10HTTPFieldsVyAA9HTTPFieldVSicig_0();
    _s17HTTPTypesInternal10HTTPFieldsVyAA9HTTPFieldVSicig_0();
    sub_25099DF40(v16, v13, type metadata accessor for HTTPField);
    v20 = *(v5 + 16);
    v20(v8, v13, v4);
    sub_2509AABF4();
    sub_25099D5F4(v13, type metadata accessor for HTTPField);
    v20(v8, v19, v4);
    sub_2509AABF4();
    return sub_25099D5F4(v19, type metadata accessor for HTTPField);
  }

  return result;
}

uint64_t sub_2509A246C@<X0>(uint64_t *a1@<X8>)
{
  result = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  *a1 = result;
  return result;
}

uint64_t sub_2509A2494@<X0>(uint64_t *a1@<X8>)
{
  result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  *a1 = result;
  return result;
}

void (*sub_2509A24BC(uint64_t *a1, uint64_t *a2))(uint64_t *a1)
{
  v4 = *(*(type metadata accessor for HTTPField(0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  *a1 = v5;
  v6 = *a2;
  _s17HTTPTypesInternal10HTTPFieldsVyAA9HTTPFieldVSicig_0();
  return sub_2509A2550;
}

void sub_2509A2550(uint64_t *a1)
{
  v1 = *a1;
  sub_25099D5F4(*a1, type metadata accessor for HTTPField);

  free(v1);
}

uint64_t sub_2509A25A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  if (result < v6)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 < v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result >= v5)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0D80, &qword_2509ABEA0);
    result = sub_25099D7DC(v2, a2 + *(v8 + 40), type metadata accessor for HTTPFields);
    *a2 = v4;
    a2[1] = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2509A2640@<X0>(uint64_t *a1@<X8>)
{
  v2 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  if (result < v2)
  {
    __break(1u);
  }

  else
  {
    *a1 = v2;
    a1[1] = result;
  }

  return result;
}

uint64_t *sub_2509A2698(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_2509A26B4(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_2509A26D0(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2509A26EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  if (v3 >= v4 && v3 < result)
  {
    *a2 = v3 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2509A273C(uint64_t *a1)
{
  v2 = *a1;
  v3 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  if (v2 >= v3 && v2 < result)
  {
    *a1 = v2 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2509A278C@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
    result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
    if (v3 >= v4 && v3 < result)
    {
      *a2 = v3;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_2509A27E4(uint64_t *result)
{
  v1 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
    result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
    if (v1 >= v3 && v1 < result)
    {
      *v2 = v1;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *sub_2509A2840@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    v5 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
    result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
    if (v4 >= v5 && result >= v4)
    {
      *a3 = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2509A2898@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_2509A1A74(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_2509A28D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  if (v2 < v4 || result < v2)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  if (v3 < v7 || result < v3)
  {
    goto LABEL_12;
  }

  result = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_2509A2944@<X0>(uint64_t a1@<X8>)
{
  sub_25099D7DC(v1, a1, type metadata accessor for HTTPFields);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0E00, &qword_2509AC168) + 36);
  v4 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  result = sub_25099D5F4(v1, type metadata accessor for HTTPFields);
  *(a1 + v3) = v4;
  return result;
}

uint64_t sub_2509A29CC()
{
  v0 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  v1 = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  v2 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  if (v0 < v2 || result < v0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  if (v1 < v4 || result < v1)
  {
    goto LABEL_8;
  }

  result = v1 - v0;
  if (__OFSUB__(v1, v0))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_2509A2A54()
{
  v1 = sub_2509AA020(v0);
  sub_25099D5F4(v0, type metadata accessor for HTTPFields);
  return v1;
}

uint64_t HTTPFields.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_2509AABD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HTTPFields(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2509AB9B4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_25099D924(&qword_27F3E0CC8, MEMORY[0x277CD8A80]);
    sub_2509AB964();
    (*(v5 + 32))(v12, v8, v4);
    __swift_destroy_boxed_opaque_existential_1(v16);
    sub_25099DF40(v12, v17, type metadata accessor for HTTPFields);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2509A2DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CD0, &qword_2509ABB48);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - v9;
  v11 = sub_2509AADB4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HTTPRequest.Method(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(a1, a2);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2509AA634(v10, &qword_27F3E0CD0, &qword_2509ABB48);
    v21 = 1;
    v22 = v27;
  }

  else
  {
    v23 = *(v12 + 32);
    v23(v15, v10, v11);
    v23(v20, v15, v11);
    v24 = v27;
    sub_25099DF40(v20, v27, type metadata accessor for HTTPRequest.Method);
    v21 = 0;
    v22 = v24;
  }

  return (*(v17 + 56))(v22, v21, 1, v16);
}

uint64_t sub_2509A3040()
{
  sub_2509AB984();
  _s17HTTPTypesInternal11HTTPRequestV6MethodV11descriptionSSvg_0();
  sub_2509AB844();

  return sub_2509AB9A4();
}

uint64_t sub_2509A309C()
{
  _s17HTTPTypesInternal11HTTPRequestV6MethodV11descriptionSSvg_0();
  sub_2509AB844();
}

uint64_t sub_2509A30EC()
{
  sub_2509AB984();
  _s17HTTPTypesInternal11HTTPRequestV6MethodV11descriptionSSvg_0();
  sub_2509AB844();

  return sub_2509AB9A4();
}

uint64_t sub_2509A3150@<X0>(uint64_t *a1@<X8>)
{
  result = _s17HTTPTypesInternal11HTTPRequestV6MethodV11descriptionSSvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2509A317C()
{
  v0 = _s17HTTPTypesInternal11HTTPRequestV6MethodV11descriptionSSvg_0();
  v2 = v1;
  if (v0 == _s17HTTPTypesInternal11HTTPRequestV6MethodV11descriptionSSvg_0() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2509AB954();
  }

  return v4 & 1;
}

void (*HTTPRequest.method.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_2509AADB4();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[3] = v8;
  v9 = *(*(type metadata accessor for HTTPRequest.Method(0) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v5[5] = v10;
  _s17HTTPTypesInternal11HTTPRequestV6methodAC6MethodVvg_0();
  return sub_2509A3404;
}

uint64_t sub_2509A3434@<X0>(uint64_t *a1@<X8>)
{
  result = _s17HTTPTypesInternal11HTTPRequestV6schemeSSSgvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*HTTPRequest.scheme.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = _s17HTTPTypesInternal11HTTPRequestV6schemeSSSgvg_0();
  a1[1] = v3;
  return sub_2509A34C4;
}

uint64_t sub_2509A34E0@<X0>(uint64_t *a1@<X8>)
{
  result = _s17HTTPTypesInternal11HTTPRequestV9authoritySSSgvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*HTTPRequest.authority.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = _s17HTTPTypesInternal11HTTPRequestV9authoritySSSgvg_0();
  a1[1] = v3;
  return sub_2509A3570;
}

uint64_t sub_2509A358C@<X0>(uint64_t *a1@<X8>)
{
  result = _s17HTTPTypesInternal11HTTPRequestV4pathSSSgvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*HTTPRequest.path.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = _s17HTTPTypesInternal11HTTPRequestV4pathSSSgvg_0();
  a1[1] = v3;
  return sub_2509A361C;
}

uint64_t sub_2509A3638@<X0>(uint64_t *a1@<X8>)
{
  result = _s17HTTPTypesInternal11HTTPRequestV23extendedConnectProtocolSSSgvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2509A367C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t (*HTTPRequest.extendedConnectProtocol.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = _s17HTTPTypesInternal11HTTPRequestV23extendedConnectProtocolSSSgvg_0();
  a1[1] = v3;
  return sub_2509A3710;
}

uint64_t sub_2509A3728(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  v7 = a1[1];

  a3(v5, v4);
}

void (*HTTPRequest.PseudoHeaderFields.method.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_2509AB804();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[3] = v8;
  v9 = *(*(type metadata accessor for HTTPField(0) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v5[5] = v10;
  _s17HTTPTypesInternal11HTTPRequestV18PseudoHeaderFieldsV6methodAA9HTTPFieldVvg_0();
  return sub_2509A39A0;
}

void (*HTTPRequest.PseudoHeaderFields.scheme.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CA0, &qword_2509ABB38) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
    v5[3] = v7;
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
    v5[3] = v7;
    v8 = malloc(v6);
  }

  v9 = v8;
  v5[4] = v8;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CD8, &qword_2509ABB50) - 8) + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v5[6] = swift_coroFrameAlloc();
    v5[7] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v10);
    v5[6] = malloc(v10);
    v5[7] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[8] = v11;
  sub_2509AAC84();
  sub_2509AA5CC(v9, v7, &qword_27F3E0CA0, &qword_2509ABB38);
  v13 = sub_2509AB804();
  v5[9] = v13;
  v14 = *(v13 - 8);
  v5[10] = v14;
  v15 = 1;
  if ((*(v14 + 48))(v7, 1, v13) != 1)
  {
    (*(v14 + 32))(v12, v7, v13);
    v15 = 0;
  }

  v16 = type metadata accessor for HTTPField(0);
  (*(*(v16 - 8) + 56))(v12, v15, 1, v16);
  return sub_2509A3CD8;
}

uint64_t sub_2509A3D08@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CA0, &qword_2509ABB38);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17 - v10;
  a1(v9);
  sub_2509AA5CC(v11, v8, &qword_27F3E0CA0, &qword_2509ABB38);
  v12 = sub_2509AB804();
  v13 = *(v12 - 8);
  v14 = 1;
  if ((*(v13 + 48))(v8, 1, v12) != 1)
  {
    (*(v13 + 32))(a2, v8, v12);
    v14 = 0;
  }

  v15 = type metadata accessor for HTTPField(0);
  return (*(*(v15 - 8) + 56))(a2, v14, 1, v15);
}

uint64_t sub_2509A3EB8@<X0>(void (*a1)(uint64_t)@<X3>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CA0, &qword_2509ABB38);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17 - v10;
  a1(v9);
  sub_2509AA5CC(v11, v8, &qword_27F3E0CA0, &qword_2509ABB38);
  v12 = sub_2509AB804();
  v13 = *(v12 - 8);
  v14 = 1;
  if ((*(v13 + 48))(v8, 1, v12) != 1)
  {
    (*(v13 + 32))(a2, v8, v12);
    v14 = 0;
  }

  v15 = type metadata accessor for HTTPField(0);
  return (*(*(v15 - 8) + 56))(a2, v14, 1, v15);
}

void (*HTTPRequest.PseudoHeaderFields.authority.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CA0, &qword_2509ABB38) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
    v5[3] = v7;
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
    v5[3] = v7;
    v8 = malloc(v6);
  }

  v9 = v8;
  v5[4] = v8;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CD8, &qword_2509ABB50) - 8) + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v5[6] = swift_coroFrameAlloc();
    v5[7] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v10);
    v5[6] = malloc(v10);
    v5[7] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[8] = v11;
  sub_2509AAC94();
  sub_2509AA5CC(v9, v7, &qword_27F3E0CA0, &qword_2509ABB38);
  v13 = sub_2509AB804();
  v5[9] = v13;
  v14 = *(v13 - 8);
  v5[10] = v14;
  v15 = 1;
  if ((*(v14 + 48))(v7, 1, v13) != 1)
  {
    (*(v14 + 32))(v12, v7, v13);
    v15 = 0;
  }

  v16 = type metadata accessor for HTTPField(0);
  (*(*(v16 - 8) + 56))(v12, v15, 1, v16);
  return sub_2509A4330;
}

void (*HTTPRequest.PseudoHeaderFields.path.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CA0, &qword_2509ABB38) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
    v5[3] = v7;
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
    v5[3] = v7;
    v8 = malloc(v6);
  }

  v9 = v8;
  v5[4] = v8;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CD8, &qword_2509ABB50) - 8) + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v5[6] = swift_coroFrameAlloc();
    v5[7] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v10);
    v5[6] = malloc(v10);
    v5[7] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[8] = v11;
  sub_2509AAC64();
  sub_2509AA5CC(v9, v7, &qword_27F3E0CA0, &qword_2509ABB38);
  v13 = sub_2509AB804();
  v5[9] = v13;
  v14 = *(v13 - 8);
  v5[10] = v14;
  v15 = 1;
  if ((*(v14 + 48))(v7, 1, v13) != 1)
  {
    (*(v14 + 32))(v12, v7, v13);
    v15 = 0;
  }

  v16 = type metadata accessor for HTTPField(0);
  (*(*(v16 - 8) + 56))(v12, v15, 1, v16);
  return sub_2509A4654;
}

uint64_t sub_2509A46B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CA0, &qword_2509ABB38);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CD8, &qword_2509ABB50);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  sub_2509AA564(a1, &v23 - v16, &qword_27F3E0CD8, &qword_2509ABB50);
  sub_2509AA564(v17, v15, &qword_27F3E0CD8, &qword_2509ABB50);
  v18 = type metadata accessor for HTTPField(0);
  if ((*(*(v18 - 8) + 48))(v15, 1, v18) == 1)
  {
    sub_2509AA634(v15, &qword_27F3E0CD8, &qword_2509ABB50);
    v19 = sub_2509AB804();
    (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  }

  else
  {
    v20 = sub_2509AB804();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v10, v15, v20);
    sub_25099D5F4(v15, type metadata accessor for HTTPField);
    (*(v21 + 56))(v10, 0, 1, v20);
  }

  a5(v10);
  return sub_2509AA634(v17, &qword_27F3E0CD8, &qword_2509ABB50);
}

uint64_t sub_2509A4968(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CD8, &qword_2509ABB50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CA0, &qword_2509ABB38);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  sub_2509AA564(a1, v7, &qword_27F3E0CD8, &qword_2509ABB50);
  v12 = type metadata accessor for HTTPField(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_2509AA634(v7, &qword_27F3E0CD8, &qword_2509ABB50);
    v13 = sub_2509AB804();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  else
  {
    v14 = sub_2509AB804();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v11, v7, v14);
    sub_25099D5F4(v7, type metadata accessor for HTTPField);
    (*(v15 + 56))(v11, 0, 1, v14);
  }

  a2(v11);
  return sub_2509AA634(a1, &qword_27F3E0CD8, &qword_2509ABB50);
}

void (*HTTPRequest.PseudoHeaderFields.extendedConnectProtocol.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CA0, &qword_2509ABB38) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
    v5[3] = v7;
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
    v5[3] = v7;
    v8 = malloc(v6);
  }

  v9 = v8;
  v5[4] = v8;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CD8, &qword_2509ABB50) - 8) + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v5[6] = swift_coroFrameAlloc();
    v5[7] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v10);
    v5[6] = malloc(v10);
    v5[7] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[8] = v11;
  sub_2509AAC44();
  sub_2509AA5CC(v9, v7, &qword_27F3E0CA0, &qword_2509ABB38);
  v13 = sub_2509AB804();
  v5[9] = v13;
  v14 = *(v13 - 8);
  v5[10] = v14;
  v15 = 1;
  if ((*(v14 + 48))(v7, 1, v13) != 1)
  {
    (*(v14 + 32))(v12, v7, v13);
    v15 = 0;
  }

  v16 = type metadata accessor for HTTPField(0);
  (*(*(v16 - 8) + 56))(v12, v15, 1, v16);
  return sub_2509A4E74;
}

void sub_2509A4E8C(uint64_t **a1, char a2, void (*a3)(void *))
{
  v3 = *a1;
  v4 = (*a1)[8];
  if (a2)
  {
    v6 = v3[5];
    v5 = v3[6];
    sub_2509AA564(v4, v5, &qword_27F3E0CD8, &qword_2509ABB50);
    sub_2509AA564(v5, v6, &qword_27F3E0CD8, &qword_2509ABB50);
    v7 = type metadata accessor for HTTPField(0);
    if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
    {
      sub_2509AA634(v3[5], &qword_27F3E0CD8, &qword_2509ABB50);
      v8 = 1;
    }

    else
    {
      v12 = v3[5];
      (*(v3[10] + 16))(v3[1], v12, v3[9]);
      sub_25099D5F4(v12, type metadata accessor for HTTPField);
      v8 = 0;
    }

    v14 = v3[7];
    v13 = v3[8];
    v16 = v3[5];
    v15 = v3[6];
    v18 = v3[3];
    v17 = v3[4];
    v19 = v3[1];
    v20 = v3[2];
    v21 = *v3;
    (*(v3[10] + 56))(v19, v8, 1, v3[9]);
    a3(v19);
    sub_2509AA634(v15, &qword_27F3E0CD8, &qword_2509ABB50);
  }

  else
  {
    v9 = v3[7];
    sub_2509AA564(v4, v9, &qword_27F3E0CD8, &qword_2509ABB50);
    v10 = type metadata accessor for HTTPField(0);
    if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
    {
      sub_2509AA634(v3[7], &qword_27F3E0CD8, &qword_2509ABB50);
      v11 = 1;
    }

    else
    {
      v22 = v3[7];
      (*(v3[10] + 16))(v3[2], v22, v3[9]);
      sub_25099D5F4(v22, type metadata accessor for HTTPField);
      v11 = 0;
    }

    v14 = v3[7];
    v13 = v3[8];
    v16 = v3[5];
    v15 = v3[6];
    v18 = v3[3];
    v17 = v3[4];
    v19 = v3[1];
    v20 = v3[2];
    v23 = *v3;
    (*(v3[10] + 56))(v20, v11, 1, v3[9]);
    a3(v20);
  }

  sub_2509AA634(v13, &qword_27F3E0CD8, &qword_2509ABB50);
  free(v13);
  free(v14);
  free(v15);
  free(v16);
  free(v17);
  free(v18);
  free(v20);
  free(v19);

  free(v3);
}

void (*HTTPRequest.pseudoHeaderFields.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_2509AACA4();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[3] = v8;
  v9 = *(*(type metadata accessor for HTTPRequest.PseudoHeaderFields(0) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v5[5] = v10;
  _s17HTTPTypesInternal11HTTPRequestV18pseudoHeaderFieldsAC06PseudoeF0Vvg_0();
  return sub_2509A54EC;
}

void (*HTTPRequest.headerFields.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_2509AABD4();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[3] = v8;
  v9 = *(*(type metadata accessor for HTTPFields(0) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v5[5] = v10;
  _s17HTTPTypesInternal11HTTPRequestV12headerFieldsAA10HTTPFieldsVvg_0();
  return sub_2509A5710;
}

uint64_t HTTPRequest.init(method:scheme:authority:path:headerFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[2] = a6;
  v20[3] = a7;
  v20[1] = a5;
  v10 = sub_2509AABD4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2509AADB4();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  (*(v18 + 16))(v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v11 + 16))(v14, a8, v10);
  sub_2509AADC4();
  sub_25099D5F4(a8, type metadata accessor for HTTPFields);
  return sub_25099D5F4(a1, type metadata accessor for HTTPRequest.Method);
}

uint64_t HTTPRequest.PseudoHeaderFields.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_2509AACA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HTTPRequest.PseudoHeaderFields(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2509AB9B4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_25099D924(&qword_27F3E0CF8, MEMORY[0x277CD8BE0]);
    sub_2509AB964();
    (*(v5 + 32))(v12, v8, v4);
    __swift_destroy_boxed_opaque_existential_1(v16);
    sub_25099DF40(v12, v17, type metadata accessor for HTTPRequest.PseudoHeaderFields);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t HTTPRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_2509AAE24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HTTPRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2509AB9B4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_25099D924(&qword_27F3E0D08, MEMORY[0x277CD8C50]);
    sub_2509AB964();
    (*(v5 + 32))(v12, v8, v4);
    __swift_destroy_boxed_opaque_existential_1(v16);
    sub_25099DF40(v12, v17, type metadata accessor for HTTPRequest);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t HTTPResponse.Status.Kind.hashValue.getter(unsigned __int8 a1)
{
  sub_2509AB984();
  MEMORY[0x253066BE0](a1);
  return sub_2509AB9A4();
}

uint64_t sub_2509A6110()
{
  v1 = *v0;
  sub_2509AB984();
  MEMORY[0x253066BE0](v1);
  return sub_2509AB9A4();
}

uint64_t sub_2509A6184()
{
  v1 = *v0;
  sub_2509AB984();
  MEMORY[0x253066BE0](v1);
  return sub_2509AB9A4();
}

void (*HTTPResponse.status.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_2509AB224();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[3] = v8;
  v9 = *(*(type metadata accessor for HTTPResponse.Status(0) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v5[5] = v10;
  _s17HTTPTypesInternal12HTTPResponseV6statusAC6StatusVvg_0();
  return sub_2509A6544;
}

void (*HTTPResponse.PseudoHeaderFields.status.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_2509AB804();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[3] = v8;
  v9 = *(*(type metadata accessor for HTTPField(0) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v5[5] = v10;
  _s17HTTPTypesInternal12HTTPResponseV18PseudoHeaderFieldsV6statusAA9HTTPFieldVvg_0();
  return sub_2509A6768;
}

void (*HTTPResponse.pseudoHeaderFields.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_2509AAE74();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[3] = v8;
  v9 = *(*(type metadata accessor for HTTPResponse.PseudoHeaderFields(0) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v5[5] = v10;
  _s17HTTPTypesInternal12HTTPResponseV18pseudoHeaderFieldsAC06PseudoeF0Vvg_0();
  return sub_2509A6AFC;
}

uint64_t sub_2509A6BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), void (*a8)(char *))
{
  v12 = a5(0);
  v13 = *(v12 - 8);
  v14 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v16 = &v21 - v15;
  v17 = (*(*(a6(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v19 = &v21 - v18;
  sub_25099D7DC(a1, &v21 - v18, a7);
  (*(v13 + 16))(v16, v19, v12);
  a8(v16);
  return sub_25099D5F4(v19, a7);
}

uint64_t sub_2509A6D30(uint64_t a1, uint64_t (*a2)(void), void (*a3)(char *), uint64_t (*a4)(void))
{
  v7 = (*(*(a2(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  a3(v9);
  return sub_25099D5F4(a1, a4);
}

void (*HTTPResponse.headerFields.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_2509AABD4();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[3] = v8;
  v9 = *(*(type metadata accessor for HTTPFields(0) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v5[5] = v10;
  _s17HTTPTypesInternal12HTTPResponseV12headerFieldsAA10HTTPFieldsVvg_0();
  return sub_2509A6F50;
}

void sub_2509A6F7C(uint64_t **a1, char a2, void (*a3)(void *), uint64_t (*a4)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v10 = (*a1)[2];
  v9 = (*a1)[3];
  v11 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    sub_25099D7DC((*a1)[5], v7, a4);
    (*(v10 + 16))(v9, v7, v12);
    a3(v9);
    sub_25099D5F4(v7, a4);
  }

  else
  {
    (*(v10 + 16))((*a1)[3], v8, v12);
    a3(v9);
  }

  sub_25099D5F4(v8, a4);
  free(v8);
  free(v7);
  free(v9);

  free(v6);
}

uint64_t HTTPResponse.init(status:headerFields:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2509AABD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2509AB224();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  (*(v12 + 16))(&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v5 + 16))(v8, a2, v4);
  sub_2509AB234();
  sub_25099D5F4(a2, type metadata accessor for HTTPFields);
  return sub_25099D5F4(a1, type metadata accessor for HTTPResponse.Status);
}

uint64_t sub_2509A7278(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(0);
  sub_25099D924(a3, a4);

  return sub_2509AB814();
}

uint64_t sub_2509A7338(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2509AB984();
  a1(0);
  sub_25099D924(a2, a3);
  sub_2509AB814();
  return sub_2509AB9A4();
}

uint64_t sub_2509A7408(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  sub_2509AB984();
  a3(0);
  sub_25099D924(a4, a5);
  sub_2509AB814();
  return sub_2509AB9A4();
}

uint64_t sub_2509A74D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  a4(0);
  sub_25099D924(a5, a6);

  return sub_2509AB814();
}

uint64_t sub_2509A7598(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  sub_2509AB984();
  a4(0);
  sub_25099D924(a5, a6);
  sub_2509AB814();
  return sub_2509AB9A4();
}

uint64_t HTTPResponse.PseudoHeaderFields.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_2509AAE74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HTTPResponse.PseudoHeaderFields(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2509AB9B4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_25099D924(&qword_27F3E0D30, MEMORY[0x277CD8D30]);
    sub_2509AB964();
    (*(v5 + 32))(v12, v8, v4);
    __swift_destroy_boxed_opaque_existential_1(v16);
    sub_25099DF40(v12, v17, type metadata accessor for HTTPResponse.PseudoHeaderFields);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2509A795C(void *a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2509AB9C4();
  __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
  a2(0);
  sub_25099D924(a3, a4);
  sub_2509AB974();
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t HTTPResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_2509AB254();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HTTPResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2509AB9B4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_25099D924(&qword_27F3E0D40, MEMORY[0x277CD8D78]);
    sub_2509AB964();
    (*(v5 + 32))(v12, v8, v4);
    __swift_destroy_boxed_opaque_existential_1(v16);
    sub_25099DF40(v12, v17, type metadata accessor for HTTPResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2509A7CB4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2509AB9C4();
  __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
  a4(0);
  sub_25099D924(a5, a6);
  sub_2509AB974();
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_2509A7F14@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v10 = type metadata accessor for HTTPField(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2509AB804();
  v14 = *(v41 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2(0);
  v38 = *(v17 - 8);
  v39 = v17;
  v18 = *(v38 + 64);
  MEMORY[0x28223BE20](v17);
  v42 = &v34 - v19;
  v20 = *(a1 + 16);
  if (v20)
  {
    v35 = v4;
    v36 = a3;
    v37 = a4;
    v46 = MEMORY[0x277D84F90];
    sub_2509A8558(0, v20, 0);
    v21 = v46;
    v22 = *(v11 + 80);
    v34 = a1;
    v23 = a1 + ((v22 + 32) & ~v22);
    v24 = *(v11 + 72);
    v43 = v14;
    v44 = v24;
    v25 = (v14 + 32);
    v27 = v40;
    v26 = v41;
    do
    {
      v28 = v45;
      sub_25099D7DC(v23, v45, type metadata accessor for HTTPField);
      v29 = *v25;
      (*v25)(v27, v28, v26);
      v46 = v21;
      v31 = *(v21 + 16);
      v30 = *(v21 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2509A8558(v30 > 1, v31 + 1, 1);
        v21 = v46;
      }

      *(v21 + 16) = v31 + 1;
      v29((v21 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v31), v27, v26);
      v23 += v44;
      --v20;
    }

    while (v20);

    a3 = v36;
    a4 = v37;
    v7 = v35;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v32 = v42;
  result = a3(v21);
  if (!v7)
  {
    return (*(v38 + 32))(a4, v32, v39);
  }

  return result;
}

uint64_t sub_2509A824C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = a4;
  v32 = sub_2509AB804();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HTTPField(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v30 = v29 - v15;
  v16 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  v29[1] = a1;
  result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  if (result < v16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v16 > a2)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (result < a3)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = *v33;
  v18 = v33[1];
  v20 = *v33 == v18;
  v21 = a2 == a3;
  if (a2 != a3 && v19 != v18)
  {
    v29[0] = a3 - 1;
    v22 = v18 - 1;
    while (1)
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0D80, &qword_2509ABEA0);
      if (v19 >= v18)
      {
        break;
      }

      v23 = *(result + 40);
      v24 = v30;
      _s17HTTPTypesInternal10HTTPFieldsVyAA9HTTPFieldVSicig_0();
      sub_25099DF40(v24, v14, type metadata accessor for HTTPField);
      (*(v7 + 16))(v31, v14, v32);
      sub_2509AABF4();
      sub_25099D5F4(v14, type metadata accessor for HTTPField);
      v25 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
      result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
      if (a2 < v25 || a2 >= result)
      {
        goto LABEL_22;
      }

      v26 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
      result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
      if (v19 < v26 || v19 >= result)
      {
        goto LABEL_23;
      }

      v20 = v22 == v19;
      v21 = v29[0] == a2;
      if (v29[0] != a2)
      {
        ++a2;
        if (v22 != v19++)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:
  if (!v21)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v20)
  {
LABEL_28:
    __break(1u);
  }

  return result;
}

size_t sub_2509A8514(size_t a1, int64_t a2, char a3)
{
  result = sub_2509A9720(a1, a2, a3, *v3, &qword_27F3E0E48, &qword_2509AC840, type metadata accessor for HTTPField);
  *v3 = result;
  return result;
}

size_t sub_2509A8558(size_t a1, int64_t a2, char a3)
{
  result = sub_2509A9720(a1, a2, a3, *v3, &qword_27F3E0E68, &qword_2509AC860, MEMORY[0x277CD9048]);
  *v3 = result;
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

uint64_t sub_2509A86C4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2509A8930()
{
  result = qword_27F3E0DA8;
  if (!qword_27F3E0DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3E0DA8);
  }

  return result;
}

uint64_t sub_2509A8B6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3E0DA0, &qword_2509ABF60);
    sub_2509A8930();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2509A8C34(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3E0D80, &qword_2509ABEA0);
    sub_25099D924(a2, type metadata accessor for HTTPFields);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2509A8D14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_2509A8E80()
{
  result = qword_27F3E0E28;
  if (!qword_27F3E0E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3E0E28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTTPResponse.Status.Kind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HTTPResponse.Status.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_2509A96B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

size_t sub_2509A9720(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_2509A98FC(uint64_t (*a1)(char *), uint64_t a2)
{
  v43 = sub_2509AB804();
  v45 = *(v43 - 8);
  v5 = *(v45 + 8);
  MEMORY[0x28223BE20](v43);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HTTPField(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v37 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v37 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v47 = a1;
  v46 = a2;
  v21 = sub_2509A9C90(a1);
  if (v2)
  {
    return v15;
  }

  v44 = v18;
  v40 = v15;
  v41 = v12;
  if (v22)
  {
    return _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  }

  v24 = v21;
  v25 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  if (v24 >= v25)
  {
    v15 = v24;
    if (v24 < result)
    {
      v38 = (v45 + 16);
      v39 = v7;
      v26 = v24 + 1;
      v37 = v20;
      while (v26 != _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0())
      {
        _s17HTTPTypesInternal10HTTPFieldsVyAA9HTTPFieldVSicig_0();
        v27 = v47(v20);
        sub_25099D5F4(v20, type metadata accessor for HTTPField);
        if ((v27 & 1) == 0)
        {
          if (v26 != v15)
          {
            _s17HTTPTypesInternal10HTTPFieldsVyAA9HTTPFieldVSicig_0();
            v28 = v40;
            _s17HTTPTypesInternal10HTTPFieldsVyAA9HTTPFieldVSicig_0();
            v45 = v15;
            v29 = v41;
            sub_25099DF40(v28, v41, type metadata accessor for HTTPField);
            v30 = v39;
            v42 = *v38;
            v31 = v43;
            v42(v39, v29, v43);
            sub_2509AABF4();
            v32 = v29;
            v15 = v45;
            sub_25099D5F4(v32, type metadata accessor for HTTPField);
            v42(v30, v44, v31);
            v20 = v37;
            v33 = v44;
            sub_2509AABF4();
            sub_25099D5F4(v33, type metadata accessor for HTTPField);
          }

          v34 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
          result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
          if (v15 < v34 || v15 >= result)
          {
            goto LABEL_18;
          }

          ++v15;
        }

        v35 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
        result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
        if (v26 >= v35 && v26++ < result)
        {
          continue;
        }

        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      return v15;
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_2509A9C90(uint64_t (*a1)(char *))
{
  v3 = type metadata accessor for HTTPField(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  if (v7 == _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0())
  {
    return 0;
  }

  while (1)
  {
    _s17HTTPTypesInternal10HTTPFieldsVyAA9HTTPFieldVSicig_0();
    v8 = a1(v6);
    sub_25099D5F4(v6, type metadata accessor for HTTPField);
    if (v1 || (v8 & 1) != 0)
    {
      break;
    }

    v9 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
    result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
    if (v7 < v9 || v7 >= result)
    {
      __break(1u);
      return result;
    }

    if (++v7 == _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0())
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2509A9DE8(uint64_t (*a1)(char *))
{
  v3 = type metadata accessor for HTTPField(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  v11 = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  if (v10 >= v11)
  {
    return v10;
  }

  v12 = v11;
  v25 = v7;
  while (1)
  {
    _s17HTTPTypesInternal10HTTPFieldsVyAA9HTTPFieldVSicig_0();
    v13 = a1(v9);
    if (v1)
    {
LABEL_19:
      sub_25099D5F4(v9, type metadata accessor for HTTPField);
      return v10;
    }

    v14 = v13;
    result = sub_25099D5F4(v9, type metadata accessor for HTTPField);
    if (v14)
    {
      break;
    }

    v16 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
    result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
    if (v10 < v16 || v10 >= result)
    {
      __break(1u);
      goto LABEL_22;
    }

LABEL_7:
    if (++v10 >= v12)
    {
      return v10;
    }
  }

  while (!__OFSUB__(v12--, 1))
  {
    v18 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
    result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
    if (v12 < v18 || v12 >= result)
    {
      goto LABEL_23;
    }

    if (v10 >= v12)
    {
      return v10;
    }

    v19 = v25;
    _s17HTTPTypesInternal10HTTPFieldsVyAA9HTTPFieldVSicig_0();
    v20 = a1(v19);
    v21 = v20;
    result = sub_25099D5F4(v19, type metadata accessor for HTTPField);
    if ((v21 & 1) == 0)
    {
      sub_2509A2228(v10, v12);
      v22 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
      v23 = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
      if (v10 < v22 || v10 >= v23)
      {
        __break(1u);
        v9 = v22;
        goto LABEL_19;
      }

      goto LABEL_7;
    }
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_2509AA020(uint64_t a1)
{
  v2 = type metadata accessor for HTTPFields(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0E00, &qword_2509AC168);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  v10 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  v11 = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  v12 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  if (v10 < v12 || result < v10)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
  if (v11 < v14 || result < v11)
  {
    goto LABEL_12;
  }

  v15 = __OFSUB__(v11, v10);
  v16 = v11 - v10;
  if (!v15)
  {
    if (v16)
    {
      v17 = sub_2509AA1F4(v16, 0);
      v18 = *(type metadata accessor for HTTPField(0) - 8);
      v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      sub_25099D7DC(a1, v5, type metadata accessor for HTTPFields);
      v20 = sub_2509AA2F0(v9, v17 + v19, v16);
      sub_2509AA634(v9, &qword_27F3E0E00, &qword_2509AC168);
      if (v20 == v16)
      {
        return v17;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

LABEL_13:
  __break(1u);
  return result;
}

size_t sub_2509AA1F4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0E48, &qword_2509AC840);
  v4 = *(type metadata accessor for HTTPField(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2509AA2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for HTTPField(0);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0E00, &qword_2509AC168);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  sub_25099D7DC(v3, &v26 - v17, type metadata accessor for HTTPFields);
  v19 = *(v15 + 44);
  v20 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
  result = sub_25099D5F4(v3, type metadata accessor for HTTPFields);
  v29 = v19;
  *&v18[v19] = v20;
  if (!a2)
  {
LABEL_12:
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    sub_2509AA5CC(v18, a1, &qword_27F3E0E00, &qword_2509AC168);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v27 = a1;
    a1 = 1;
    while (1)
    {
      v22 = v20 + a1 - 1;
      if (v22 == _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0())
      {
        a3 = a1 - 1;
LABEL_14:
        a1 = v27;
        goto LABEL_15;
      }

      v23 = a3;
      _s17HTTPTypesInternal10HTTPFieldsVyAA9HTTPFieldVSicig_0();
      v24 = _s17HTTPTypesInternal10HTTPFieldsV10startIndexSivg_0();
      result = _s17HTTPTypesInternal10HTTPFieldsV8endIndexSivg_0();
      if (v22 < v24 || v22 >= result)
      {
        break;
      }

      *&v18[v29] = v20 + a1;
      sub_25099DF40(v11, v13, type metadata accessor for HTTPField);
      sub_25099DF40(v13, a2, type metadata accessor for HTTPField);
      a3 = v23;
      if (v23 == a1)
      {
        goto LABEL_14;
      }

      a2 += *(v28 + 72);
      if (__OFADD__(a1++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2509AA564(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2509AA5CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2509AA634(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2509AA694(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v43 = a2;
  v44 = a3;
  v51 = sub_2509AB804();
  v4 = *(v51 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v51);
  v46 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0C90, &qword_2509ABB28);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v40 = &v39 - v10;
  v11 = &qword_27F3E0C98;
  v12 = &qword_2509ABB30;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0C98, &qword_2509ABB30);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3E0CA0, &qword_2509ABB38);
  v21 = *(*(v20 - 8) + 64);
  result = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v39 - v23;
  v25 = 0;
  v41 = v8;
  v42 = a1;
  v26 = *(a1 + 16);
  v49 = (v8 + 48);
  v50 = (v8 + 56);
  v27 = v26;
  v47 = (v4 + 48);
  v48 = (v4 + 56);
  v45 = (v4 + 32);
  v39 = v19;
  v28 = v26 == 0;
  if (v26)
  {
    goto LABEL_3;
  }

LABEL_2:
  v29 = 1;
  v25 = v27;
  while (1)
  {
    v31 = 1;
    (*v50)(v19, v29, 1, v7);
    sub_2509AA5CC(v19, v17, v11, v12);
    if ((*v49)(v17, 1, v7) != 1)
    {
      v32 = v17;
      v33 = v17;
      v34 = v12;
      v35 = v11;
      v36 = v40;
      sub_2509AA5CC(v32, v40, &qword_27F3E0C90, &qword_2509ABB28);
      v43(v36);
      v37 = v36;
      v11 = v35;
      v12 = v34;
      v17 = v33;
      v19 = v39;
      sub_2509AA634(v37, &qword_27F3E0C90, &qword_2509ABB28);
      v31 = 0;
    }

    v38 = v51;
    (*v48)(v24, v31, 1, v51);
    result = (*v47)(v24, 1, v38);
    if (result == 1)
    {
      return result;
    }

    (*v45)(v46, v24, v38);
    sub_2509AABD4();
    sub_25099D924(&qword_27F3E0CA8, MEMORY[0x277CD8A80]);
    result = sub_2509AB8C4();
    v28 = v25 >= v27;
    if (v25 == v27)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v28)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }

    result = sub_2509AA564(v42 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v25, v19, &qword_27F3E0C90, &qword_2509ABB28);
    if (__OFADD__(v25++, 1))
    {
      goto LABEL_13;
    }

    v29 = 0;
  }
}