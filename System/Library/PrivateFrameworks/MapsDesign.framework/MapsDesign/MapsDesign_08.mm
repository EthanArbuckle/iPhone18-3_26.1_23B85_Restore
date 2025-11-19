uint64_t sub_213E99FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v7 = type metadata accessor for StackLayout();
  v8 = *(v7 - 8);
  v36 = *(v8 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v35 = v31 - v10;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FADF8, &qword_213F5E040);
  v33 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAE00, &qword_213F5E048);
  v17 = sub_213EAB314();
  v39 = v16;
  v40 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = a2;
  v40 = v15;
  v41 = a3;
  v42 = OpaqueTypeConformance2;
  v31[2] = sub_213F4DD80();
  v18 = sub_213F4E9C0();
  v34 = *(v18 - 8);
  v19 = *(v34 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v31 - v23;
  (*(v11 + 16))(v14, a1 + *(v7 + 36), a2);
  v25 = v35;
  (*(v8 + 16))(v35, a1, v7);
  v26 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  *(v27 + 24) = a3;
  (*(v8 + 32))(v27 + v26, v25, v7);
  sub_213F4E9A0();
  WitnessTable = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  sub_213DBFEEC(v22, v18, v28);
  v29 = *(v34 + 8);
  v29(v22, v18);
  sub_213DBFEEC(v24, v18, v28);
  return (v29)(v24, v18);
}

uint64_t sub_213E9A394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[1] = a5;
  v9 = sub_213F4DCB0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAE00, &qword_213F5E048);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - v13;
  v15 = *(a2 + *(type metadata accessor for StackLayout() + 40));

  sub_213F4D890();
  v16 = *(a2 + *(type metadata accessor for GridLayoutConfig() + 52));
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a2;
  v18[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAE20, &qword_213F5E058);
  sub_213EAB6B4();
  sub_213E9AD54();
  sub_213F4EFA0();
  *&v14[*(v11 + 36)] = 257;
  sub_213EAB314();
  sub_213F4E600();
  return sub_213DE36FC(v14, &qword_27C8FAE00, &qword_213F5E048);
}

uint64_t sub_213E9A574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for StackLayout();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - v11;
  v13 = sub_213E9835C(a2, v8);
  v14 = sub_213EA9F74(v13);

  v19[1] = v14;
  swift_getKeyPath();
  (*(v9 + 16))(v12, a1, v8);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  (*(v9 + 32))(v16 + v15, v12, v8);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_213EAB764;
  *(v17 + 24) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FACB0, &qword_213F5DF18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAE38, &qword_213F5E060);
  sub_213DE3AE4(&qword_27C8FACC0, &qword_27C8FACB0, &qword_213F5DF18);
  sub_213DE3AE4(&qword_27C8FAE30, &qword_27C8FAE38, &qword_213F5E060);
  return sub_213F4ECC0();
}

uint64_t sub_213E9A7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 + *(type metadata accessor for GridLayoutConfig() + 52));
  *a6 = sub_213F4DA40();
  *(a6 + 8) = v12;
  *(a6 + 16) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAE40, &qword_213F5E068);
  sub_213E9A8A0(a2, a3, a4, a5, a6 + *(v13 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAE38, &qword_213F5E060);
  *(a6 + *(result + 52)) = a1;
  return result;
}

double sub_213E9A8A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v9 = type metadata accessor for StackLayout();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &KeyPath - v12;
  v14 = *(a1 + 16);
  *&v29 = 0;
  *(&v29 + 1) = v14;
  KeyPath = swift_getKeyPath();
  (*(v10 + 16))(v13, a2, v9);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  (*(v10 + 32))(v17 + v15, v13, v9);
  *(v17 + v16) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA3C0, &qword_213F5D780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAE48, &qword_213F5E070);
  sub_213E800BC();
  sub_213EAB960();
  v18 = v28;
  sub_213F4ECC0();
  v19 = type metadata accessor for GridLayoutConfig();
  v20 = *(a2 + v19[7]);
  sub_213E9E844(v9);
  v21 = *(a2 + v19[12]);
  v22 = *(a2 + v19[13]);
  v23 = *(a2 + v19[10]);
  sub_213E9B424(v9);
  sub_213F4EEF0();
  sub_213F4D0C0();
  v24 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAE78, &unk_213F5E090) + 36));
  v25 = v30;
  *v24 = v29;
  v24[1] = v25;
  result = *&v31;
  v24[2] = v31;
  return result;
}

uint64_t sub_213E9AB54@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAE58, &qword_213F5E078);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  v11 = *a1;
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(a2 + 16))
  {
    v12 = *(sub_213F4ED30() - 8);
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11;
    v14 = type metadata accessor for StackLayout();
    sub_213E9B774(v13, v14, sub_213E42A54, sub_213EABD30, v10);
    v16[1] = sub_213F4E8D0();
    *&v10[*(v6 + 36)] = sub_213F4EC10();
    sub_213F4D070();
    sub_213EABA54();
    sub_213F4E650();
    sub_213DE36FC(v10, &qword_27C8FAE58, &qword_213F5E078);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAE48, &qword_213F5E070);
    v15 = a3 + *(result + 36);
    *(v15 + 32) = 0;
    *v15 = 0u;
    *(v15 + 16) = 0u;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_213E9AD54()
{
  sub_213F4DCB0();
  sub_213EAC454(&qword_281182990, MEMORY[0x277CE0428]);
  return sub_213F4F8D0();
}

uint64_t sub_213E9ADD4(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for StackLayout() + 56));
  v4 = *v2;
  v5 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  return sub_213F4EAB0();
}

uint64_t sub_213E9AE54@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v32 = a3;
  v7 = sub_213F4EDE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for ShelfLayout();
  v13 = v12[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAEF8, &unk_213F5E890);
  v14 = *(sub_213F4EDF0() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_213F55C80;
  *v11 = 0;
  (*(v8 + 104))(v11, *MEMORY[0x277CDF0F0], v7);
  sub_213F4EE00();
  *(a4 + v13) = v17;
  v18 = (a4 + v12[12]);
  v19 = sub_213E93B1C();
  *v18 = v20;
  v18[1] = v21;
  v18[2] = v19;
  v22 = (a4 + v12[13]);
  v33 = 0x4024000000000000;
  sub_213F4EA90();
  v23 = v35;
  *v22 = v34;
  v22[1] = v23;
  v24 = a4 + v12[14];
  *v24 = sub_213EA1524();
  v24[8] = v25 & 1;
  *(v24 + 2) = v26;
  v27 = a4 + v12[15];
  LOBYTE(v33) = 0;
  sub_213F4EA90();
  v28 = v35;
  *v27 = v34;
  *(v27 + 1) = v28;
  v29 = sub_213EAC2D4(a1, a4 + v12[9], type metadata accessor for GridLayoutConfig);
  v30 = a4 + v12[10];
  a2(v29);
  return sub_213E9564C(a1);
}

uint64_t sub_213E9B130(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_213F4D960();
  sub_213EAC454(&qword_281182C40, MEMORY[0x277CE0150]);
  sub_213F4F490();
  sub_213F4F4C0();
  v6 = sub_213F4F4B0();
  v7 = v3 + *(a2 + 36);
  result = type metadata accessor for GridLayoutConfig();
  if (*(v7 + *(result + 44)))
  {
    MEMORY[0x28223BE20](result);
    v10[1] = *(a2 + 16);
    v11 = a1;
    v12 = v3;
    return sub_213E98628(sub_213EAB2F0, v10, 0, v6, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213E9B25C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_213F4DE60();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = *a1;
  v9 = a2 + *(type metadata accessor for ShelfLayout() + 36);
  result = type metadata accessor for GridLayoutConfig();
  v11 = *(v9 + *(result + 44));
  v12 = v8 + v11;
  if (__OFADD__(v8, v11))
  {
    __break(1u);
  }

  else
  {
    sub_213F4D960();
    sub_213EAC454(&qword_281182C40, MEMORY[0x277CE0150]);
    sub_213F4F490();
    sub_213F4F4C0();
    result = sub_213F4F4B0();
    if (result >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = result;
    }

    if (v13 >= v8)
    {
      sub_213F4D970();
      sub_213EAC454(&qword_27C8FAD28, MEMORY[0x277CE0668]);
      result = sub_213F4F3C0();
      *a3 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

double sub_213E9B424(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v5 = *v2;
  v6 = *(v2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAA0();
  return v4;
}

uint64_t sub_213E9B484(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v4 = *v2;
  v5 = *(v2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  return sub_213F4EAB0();
}

double sub_213E9B4E8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v5 = *v2;
  v6 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76F8, &unk_213F555A0);
  sub_213F4EAA0();
  return v4;
}

uint64_t sub_213E9B548(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v4 = *v2;
  v5 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76F8, &unk_213F555A0);
  return sub_213F4EAB0();
}

uint64_t sub_213E9B5A8(uint64_t a1)
{
  v2 = v1 + *(a1 + 36);
  result = type metadata accessor for GridLayoutConfig();
  v4 = ceil(*(v2 + *(result + 24)) / *(v2 + *(result + 44)));
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 9.22337204e18)
  {
    return v4;
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_213E9B63C()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_213EA848C(&qword_27C8F7B68, &qword_213F53770, MEMORY[0x277CDF7E8], &v10 - v6);
  sub_213F4D280();
  sub_213F4D270();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v8(v7, v0);
  return 26.0;
}

uint64_t sub_213E9B774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v10 + 16))(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v12, a2);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *(a2 + 16);
  (*(v10 + 32))(v14 + v13, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v15 = sub_213F4ED30();
  (*(*(v15 - 8) + 16))(a5, a1, v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FADF0, &qword_213F5E038);
  v17 = (a5 + *(result + 36));
  *v17 = a3;
  v17[1] = 0;
  v17[2] = a4;
  v17[3] = v14;
  return result;
}

uint64_t sub_213E9B900(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = type metadata accessor for ShelfLayout();
  sub_213E9B4E8(v2);
  return sub_213E9B548(v2);
}

uint64_t sub_213E9B954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v56 = a2;
  v54 = *(a1 - 8);
  v55 = *(v54 + 64);
  v3 = MEMORY[0x28223BE20](a1);
  v53 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v3 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAD40, &qword_213F5DF98);
  v7 = *(a1 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAD48, &qword_213F5DFA0);
  v9 = sub_213EAADEC();
  v63 = v8;
  v64 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = v5;
  v64 = v6;
  v47 = v5;
  v65 = v7;
  v66 = OpaqueTypeConformance2;
  v11 = v7;
  v48 = v7;
  sub_213F4DD80();
  sub_213F4E9C0();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v12 = sub_213F4CE40();
  v13 = swift_getWitnessTable();
  v63 = v12;
  v64 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = v12;
  v64 = v13;
  v15 = swift_getOpaqueTypeConformance2();
  v63 = OpaqueTypeMetadata2;
  v64 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v17 = sub_213F4DFB0();
  v63 = OpaqueTypeMetadata2;
  v64 = v15;
  v18 = swift_getOpaqueTypeConformance2();
  v63 = v16;
  v64 = v17;
  v19 = MEMORY[0x277CDE478];
  v65 = v18;
  v66 = MEMORY[0x277CDE478];
  v20 = swift_getOpaqueTypeMetadata2();
  v63 = v16;
  v64 = v17;
  v65 = v18;
  v66 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v63 = v20;
  v64 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v63 = v20;
  v64 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v63 = v22;
  v64 = MEMORY[0x277D83B88];
  v65 = v23;
  v66 = MEMORY[0x277D83B98];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F96F8, &qword_213F587F8);
  sub_213F4D400();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v24 = sub_213F4EBE0();
  v49 = *(v24 - 8);
  v25 = *(v49 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v47 - v26;
  v28 = sub_213F4D400();
  v50 = *(v28 - 8);
  v29 = *(v50 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v47 - v33;
  v57 = v5;
  v58 = v11;
  v35 = v52;
  v59 = v52;
  sub_213F4EEE0();
  sub_213F4EBD0();
  v37 = v53;
  v36 = v54;
  v38 = v51;
  (*(v54 + 16))(v53, v35, v51);
  v39 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v40 = swift_allocObject();
  v41 = v48;
  *(v40 + 16) = v47;
  *(v40 + 24) = v41;
  (*(v36 + 32))(v40 + v39, v37, v38);
  v42 = swift_getWitnessTable();
  sub_213F4E7B0();

  (*(v49 + 8))(v27, v24);
  v43 = sub_213E37C44();
  v60 = v42;
  v61 = v43;
  v44 = swift_getWitnessTable();
  sub_213DBFEEC(v32, v28, v44);
  v45 = *(v50 + 8);
  v45(v32, v28);
  sub_213DBFEEC(v34, v28, v44);
  return (v45)(v34, v28);
}

uint64_t sub_213E9BFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v144 = a1;
  v138 = a4;
  v141 = a2;
  v142 = a3;
  v143 = type metadata accessor for ShelfLayout();
  v137 = *(v143 - 8);
  v135 = *(v137 + 64);
  MEMORY[0x28223BE20](v143);
  v136 = &v103 - v6;
  v7 = sub_213F4DFB0();
  v131 = *(v7 - 8);
  v8 = *(v131 + 8);
  MEMORY[0x28223BE20](v7);
  v130 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_213F4DF20();
  v127 = *(v10 - 8);
  v128 = v10;
  v11 = *(v127 + 64);
  MEMORY[0x28223BE20](v10);
  v126 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_213F4DD70();
  v118 = *(v120 - 8);
  v13 = *(v118 + 64);
  MEMORY[0x28223BE20](v120);
  v115 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAD40, &qword_213F5DF98);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAD48, &qword_213F5DFA0);
  v17 = sub_213EAADEC();
  *&v161 = v16;
  *(&v161 + 1) = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v161 = a2;
  *(&v161 + 1) = v15;
  *&v162 = a3;
  *(&v162 + 1) = OpaqueTypeConformance2;
  sub_213F4DD80();
  v19 = sub_213F4E9C0();
  WitnessTable = swift_getWitnessTable();
  v112 = v19;
  v110 = swift_getWitnessTable();
  v20 = sub_213F4CE40();
  v105 = *(v20 - 8);
  v21 = *(v105 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v103 - v22;
  v24 = swift_getWitnessTable();
  *&v161 = v20;
  *(&v161 + 1) = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v119 = *(OpaqueTypeMetadata2 - 8);
  v26 = *(v119 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v139 = &v103 - v27;
  *&v161 = v20;
  *(&v161 + 1) = v24;
  v104 = v24;
  v28 = swift_getOpaqueTypeConformance2();
  *&v161 = OpaqueTypeMetadata2;
  *(&v161 + 1) = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v117 = *(v29 - 8);
  v30 = *(v117 + 64);
  MEMORY[0x28223BE20](v29);
  v114 = &v103 - v31;
  *&v161 = OpaqueTypeMetadata2;
  *(&v161 + 1) = v28;
  v109 = v28;
  v32 = swift_getOpaqueTypeConformance2();
  *&v161 = v29;
  *(&v161 + 1) = v7;
  v33 = MEMORY[0x277CDE478];
  *&v162 = v32;
  *(&v162 + 1) = MEMORY[0x277CDE478];
  v34 = swift_getOpaqueTypeMetadata2();
  v111 = *(v34 - 8);
  v35 = *(v111 + 64);
  MEMORY[0x28223BE20](v34);
  v107 = &v103 - v36;
  v108 = v32;
  *&v161 = v29;
  *(&v161 + 1) = v7;
  v132 = v7;
  *&v162 = v32;
  *(&v162 + 1) = v33;
  v37 = swift_getOpaqueTypeConformance2();
  *&v161 = v34;
  *(&v161 + 1) = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v116 = *(v38 - 8);
  v39 = *(v116 + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v103 - v40;
  *&v161 = v34;
  *(&v161 + 1) = v37;
  v106 = v37;
  v42 = swift_getOpaqueTypeConformance2();
  v122 = v38;
  *&v161 = v38;
  *(&v161 + 1) = MEMORY[0x277D83B88];
  v121 = v42;
  *&v162 = v42;
  *(&v162 + 1) = MEMORY[0x277D83B98];
  v43 = swift_getOpaqueTypeMetadata2();
  v124 = *(v43 - 8);
  v44 = *(v124 + 64);
  MEMORY[0x28223BE20](v43);
  v113 = &v103 - v45;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F96F8, &qword_213F587F8);
  v125 = v43;
  v134 = sub_213F4D400();
  v129 = *(v134 - 8);
  v46 = *(v129 + 64);
  v47 = MEMORY[0x28223BE20](v134);
  v133 = &v103 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v123 = &v103 - v50;
  MEMORY[0x28223BE20](v49);
  v140 = &v103 - v51;
  sub_213F4E010();
  v145 = v141;
  v146 = v142;
  v147 = v144;
  sub_213F4CE50();
  LOBYTE(v43) = sub_213F4E040();
  v52 = sub_213F4E090();
  sub_213F4E090();
  if (sub_213F4E090() != v43)
  {
    v52 = sub_213F4E090();
  }

  v53 = v144 + *(v143 + 36);
  v110 = type metadata accessor for GridLayoutConfig();
  v54 = v110[12];
  v112 = v53;
  v55 = *(v53 + v54);
  v56 = v115;
  sub_213F4DD60();
  MEMORY[0x216051900](v52, v55, 0, v56, v20, v104);
  (*(v118 + 8))(v56, v120);
  (*(v105 + 8))(v23, v20);
  v57 = v126;
  sub_213F4DF00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9540, &qword_213F5DE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213F51DE0;
  LOBYTE(v55) = sub_213F4E030();
  *(inited + 32) = v55;
  v59 = sub_213F4E010();
  *(inited + 33) = v59;
  sub_213F4E020();
  sub_213F4E020();
  if (sub_213F4E020() != v55)
  {
    sub_213F4E020();
  }

  sub_213F4E020();
  if (sub_213F4E020() != v59)
  {
    sub_213F4E020();
  }

  v60 = v114;
  v61 = v139;
  sub_213F4E590();
  (*(v127 + 8))(v57, v128);
  (*(v119 + 8))(v61, OpaqueTypeMetadata2);
  sub_213F4F050();
  v62 = v130;
  sub_213F4DFA0();
  v63 = v107;
  v64 = v132;
  sub_213F4E670();
  (*(v131 + 1))(v62, v64);
  (*(v117 + 8))(v60, v29);
  sub_213F4E5E0();
  (*(v111 + 8))(v63, v34);
  v65 = v144;
  v66 = (v144 + *(v143 + 56));
  v139 = *v66;
  LODWORD(v132) = *(v66 + 8);
  v131 = v66[2];
  *&v157 = v139;
  BYTE8(v157) = v132;
  *&v158[0] = v131;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FABD8, &unk_213F5DE48);
  sub_213F4EAC0();
  sub_213F4F050();
  v67 = v113;
  v68 = v121;
  v69 = v122;
  sub_213F4E530();

  (*(v116 + 8))(v41, v69);
  type metadata accessor for CGSize(0);
  v71 = v70;
  v72 = v136;
  v73 = v137;
  v74 = v65;
  v75 = v143;
  (*(v137 + 16))(v136, v74, v143);
  v76 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v77 = swift_allocObject();
  v78 = v142;
  *(v77 + 16) = v141;
  *(v77 + 24) = v78;
  (*(v73 + 32))(v77 + v76, v72, v75);
  *&v161 = v69;
  *(&v161 + 1) = MEMORY[0x277D83B88];
  *&v162 = v68;
  *(&v162 + 1) = MEMORY[0x277D83B98];
  v79 = swift_getOpaqueTypeConformance2();
  sub_213EAC454(&unk_281182358, type metadata accessor for CGSize);
  v80 = v123;
  v81 = v125;
  sub_213E93994(v71, sub_213E42A54, 0, sub_213EAAEE8, v77, v125, v71, v79);

  (*(v124 + 8))(v67, v81);
  v82 = sub_213DE3AE4(&qword_281182910, &qword_27C8F96F8, &qword_213F587F8);
  v156[2] = v79;
  v156[3] = v82;
  v83 = v134;
  v137 = swift_getWitnessTable();
  sub_213DBFEEC(v80, v83, v137);
  v84 = v129;
  v85 = *(v129 + 8);
  v141 = v129 + 8;
  v142 = v85;
  v85(v80, v83);
  v86 = v144;
  v87 = sub_213E9B5A8(v75);
  v135 = *(v112 + v110[10]);
  v136 = v87;
  v88 = *(v112 + v110[7]);
  *&v157 = v139;
  BYTE8(v157) = v132;
  *&v158[0] = v131;
  sub_213F4EAC0();
  v89 = v161;
  v132 = v162;
  LOBYTE(v79) = BYTE8(v162);
  v90 = (v86 + *(v75 + 60));
  v91 = *v90;
  v92 = *(v90 + 1);
  LOBYTE(v157) = v91;
  *(&v157 + 1) = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAC0();
  v143 = *(&v161 + 1);
  v144 = v161;
  LODWORD(v139) = v162;
  sub_213F4F460();

  v93 = sub_213F4F450();
  v94 = swift_allocObject();
  v95 = MEMORY[0x277D85700];
  *(v94 + 16) = v93;
  *(v94 + 24) = v95;
  *(v94 + 32) = v89;
  v96 = v132;
  *(v94 + 48) = v132;
  *(v94 + 56) = v79;

  v97 = sub_213F4F450();
  v98 = swift_allocObject();
  *(v98 + 16) = v97;
  *(v98 + 24) = v95;
  *(v98 + 32) = v89;
  *(v98 + 48) = v96;
  *(v98 + 56) = v79;
  sub_213F4EC60();

  *&v157 = v136;
  *(&v157 + 1) = v135;
  *&v158[0] = v88;
  *(v158 + 8) = v161;
  *(&v158[1] + 1) = v162;
  *&v159 = v144;
  *(&v159 + 1) = v143;
  v160 = v139;
  v99 = v133;
  v100 = v140;
  (*(v84 + 16))(v133, v140, v83);
  v153 = v158[1];
  v154 = v159;
  v155 = v160;
  v151 = v157;
  v152 = v158[0];
  v156[0] = v99;
  v156[1] = &v151;
  sub_213E93624(&v157, &v161);
  v150[0] = v83;
  v150[1] = &type metadata for GridPaginationView;
  v148 = v137;
  v149 = sub_213E93680();
  sub_213E95270(v156, 2uLL, v150);
  sub_213E936D4(&v157);
  v101 = v142;
  v142(v100, v83);
  v163 = v153;
  v164 = v154;
  v165 = v155;
  v161 = v151;
  v162 = v152;
  sub_213E936D4(&v161);
  return v101(v99, v83);
}

uint64_t sub_213E9D048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v7 = type metadata accessor for ShelfLayout();
  v8 = *(v7 - 8);
  v36 = *(v8 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v35 = v31 - v10;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAD40, &qword_213F5DF98);
  v33 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAD48, &qword_213F5DFA0);
  v17 = sub_213EAADEC();
  v39 = v16;
  v40 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = a2;
  v40 = v15;
  v41 = a3;
  v42 = OpaqueTypeConformance2;
  v31[2] = sub_213F4DD80();
  v18 = sub_213F4E9C0();
  v34 = *(v18 - 8);
  v19 = *(v34 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v31 - v23;
  (*(v11 + 16))(v14, a1 + *(v7 + 40), a2);
  v25 = v35;
  (*(v8 + 16))(v35, a1, v7);
  v26 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  *(v27 + 24) = a3;
  (*(v8 + 32))(v27 + v26, v25, v7);
  sub_213F4E9A0();
  WitnessTable = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  sub_213DBFEEC(v22, v18, v28);
  v29 = *(v34 + 8);
  v29(v22, v18);
  sub_213DBFEEC(v24, v18, v28);
  return (v29)(v24, v18);
}

uint64_t sub_213E9D3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[1] = a5;
  v9 = sub_213F4DCB0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAD48, &qword_213F5DFA0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - v13;
  v15 = type metadata accessor for ShelfLayout();
  v16 = *(a2 + *(v15 + 44));

  sub_213F4D890();
  v17 = a2 + *(v15 + 36);
  v18 = *(v17 + *(type metadata accessor for GridLayoutConfig() + 52));
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a2;
  v20[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAD68, &qword_213F5DFB8);
  sub_213EAAF4C();
  sub_213E9AD54();
  sub_213F4EFA0();
  *&v14[*(v11 + 36)] = 257;
  sub_213EAADEC();
  sub_213F4E600();
  return sub_213DE36FC(v14, &qword_27C8FAD48, &qword_213F5DFA0);
}

uint64_t sub_213E9D5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ShelfLayout();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - v11;
  v13 = sub_213E9B130(a2, v8);
  v14 = sub_213EA9F74(v13);

  v19[1] = v14;
  swift_getKeyPath();
  (*(v9 + 16))(v12, a1, v8);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  (*(v9 + 32))(v16 + v15, v12, v8);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_213EAAFFC;
  *(v17 + 24) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FACB0, &qword_213F5DF18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAD80, &qword_213F5DFC0);
  sub_213DE3AE4(&qword_27C8FACC0, &qword_27C8FACB0, &qword_213F5DF18);
  sub_213DE3AE4(&qword_27C8FAD78, &qword_27C8FAD80, &qword_213F5DFC0);
  return sub_213F4ECC0();
}

uint64_t sub_213E9D858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = sub_213F4DA40();
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAD88, &qword_213F5DFC8);
  sub_213E9DA58(a2, a3, a4, a5, a6 + *(v12 + 44));
  v13 = type metadata accessor for ShelfLayout();
  v14 = sub_213E9B63C();
  [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_213E29028();
  sub_213F4EA90();
  v15 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAD90, &qword_213F5DFD0) + 36);
  *v15 = v25;
  *(v15 + 16) = v14;
  v16 = a3 + *(v13 + 36);
  v17 = type metadata accessor for GridLayoutConfig();
  v18 = *(v16 + v17[7]);
  sub_213E9B424(v13);
  v19 = *(v16 + v17[12]);
  v20 = *(v16 + v17[13]);
  v21 = *(v16 + v17[10]);
  v22 = sub_213E9B4E8(v13) * *(a2 + 16);
  sub_213F4EEF0();
  sub_213F4D0C0();
  v23 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAD98, &unk_213F5DFD8) + 36));
  *v23 = v25;
  v23[1] = v26;
  v23[2] = v27;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAD80, &qword_213F5DFC0);
  *(a6 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_213E9DA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[1] = a5;
  v9 = type metadata accessor for ShelfLayout();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - v12;
  v14 = *(a1 + 16);
  v18[2] = 0;
  v18[3] = v14;
  swift_getKeyPath();
  (*(v10 + 16))(v13, a2, v9);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  (*(v10 + 32))(v16 + v15, v13, v9);
  *(v16 + ((v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA3C0, &qword_213F5D780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FADA0, &qword_213F5DFE8);
  sub_213E800BC();
  sub_213DE3AE4(&qword_27C8FADA8, &qword_27C8FADA0, &qword_213F5DFE8);
  return sub_213F4ECC0();
}

uint64_t sub_213E9DC70@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  *a6 = sub_213F4EEE0();
  a6[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FADB0, &qword_213F5DFF0);
  return sub_213E9DCF0(a2, a3, v11, a4, a5, a6 + *(v13 + 44));
}

uint64_t sub_213E9DCF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FADB8, &qword_213F5DFF8);
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FADC0, &qword_213F5E000);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v48 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FADC8, &qword_213F5E008);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  result = MEMORY[0x28223BE20](v23);
  v27 = &v41 - v26;
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v45 = v11;
  v28 = *(a2 + 16);
  if (v28 <= a3)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v43 = v25;
  v44 = a6;
  v29 = *(sub_213F4ED30() - 8);
  v30 = a2 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * a3;
  v42 = a4;
  v31 = v46;
  v32 = type metadata accessor for ShelfLayout();
  sub_213E9B774(v30, v32, sub_213E42A54, sub_213EAB264, v27);
  sub_213E9B4E8(v32);
  sub_213F4EEE0();
  v33 = 1;
  sub_213F4D0C0();
  v34 = &v27[*(v21 + 36)];
  v35 = v50;
  *v34 = v49;
  *(v34 + 1) = v35;
  *(v34 + 2) = v51;
  if (v28 - 1 != a3)
  {
    *v14 = sub_213F4DA40();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FADD0, &qword_213F5E010);
    sub_213E9E138(a1, v42, v31, &v14[*(v36 + 44)]);
    sub_213DE2B44(v14, v20, &qword_27C8FADB8, &qword_213F5DFF8);
    v33 = 0;
  }

  (*(v47 + 56))(v20, v33, 1, v45);
  v37 = v43;
  sub_213DE3164(v27, v43, &qword_27C8FADC8, &qword_213F5E008);
  v38 = v48;
  sub_213DE3164(v20, v48, &qword_27C8FADC0, &qword_213F5E000);
  v39 = v44;
  sub_213DE3164(v37, v44, &qword_27C8FADC8, &qword_213F5E008);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FADD8, &qword_213F5E018);
  sub_213DE3164(v38, v39 + *(v40 + 48), &qword_27C8FADC0, &qword_213F5E000);
  sub_213DE36FC(v20, &qword_27C8FADC0, &qword_213F5E000);
  sub_213DE36FC(v27, &qword_27C8FADC8, &qword_213F5E008);
  sub_213DE36FC(v38, &qword_27C8FADC0, &qword_213F5E000);
  return sub_213DE36FC(v37, &qword_27C8FADC8, &qword_213F5E008);
}

uint64_t sub_213E9E138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v51[0] = a2;
  v51[1] = a3;
  v53 = a4;
  v52 = sub_213F4ECB0();
  v5 = *(v52 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v52);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA128, &qword_213F5E020);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FADE0, &qword_213F5E028);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v51 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v51 - v23;
  sub_213F4ECA0();
  v25 = sub_213F4E080();
  v26 = a1 + *(type metadata accessor for ShelfLayout() + 36);
  v27 = qword_213F5E2E0[*(v26 + *(type metadata accessor for GridLayoutConfig() + 56))];
  sub_213F4CDA0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  (*(v5 + 32))(v13, v8, v52);
  v36 = &v13[*(v10 + 44)];
  *v36 = v25;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = sub_213F4E0A0();
  sub_213F4CDA0();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_213DE2B44(v13, v22, &qword_27C8FA128, &qword_213F5E020);
  v46 = &v22[*(v15 + 44)];
  *v46 = v37;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  sub_213DE2B44(v22, v24, &qword_27C8FADE0, &qword_213F5E028);
  sub_213DE3164(v24, v19, &qword_27C8FADE0, &qword_213F5E028);
  v47 = v53;
  *v53 = 0;
  *(v47 + 8) = 1;
  v48 = v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FADE8, &qword_213F5E030);
  sub_213DE3164(v19, v48 + *(v49 + 48), &qword_27C8FADE0, &qword_213F5E028);
  sub_213DE36FC(v24, &qword_27C8FADE0, &qword_213F5E028);
  return sub_213DE36FC(v19, &qword_27C8FADE0, &qword_213F5E028);
}

uint64_t sub_213E9E468(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for ShelfLayout() + 60));
  v4 = *v2;
  v5 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  return sub_213F4EAB0();
}

uint64_t sub_213E9E4E8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v36 = a2;
  v34 = a1;
  v5 = sub_213F4EDE0();
  v6 = *(v5 - 8);
  v38 = v5;
  v39 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ComposeLayout();
  *(a4 + v10[10]) = 0x3FF0000000000000;
  v11 = (a4 + v10[11]);
  v12 = sub_213E93B1C();
  *v11 = v13;
  v11[1] = v14;
  v11[2] = v12;
  v15 = a4 + v10[12];
  *v15 = sub_213EA1524();
  *(v15 + 8) = v16 & 1;
  *(v15 + 16) = v17;
  v18 = a4 + v10[13];
  v40 = 0;
  sub_213F4EA90();
  v19 = v42;
  *v18 = v41;
  *(v18 + 8) = v19;
  v33 = v10[14];
  v32[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAEF8, &unk_213F5E890);
  v20 = *(sub_213F4EDF0() - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_213F55C80;
  v37 = xmmword_213F5D980;
  *v9 = xmmword_213F5D980;
  v24 = *MEMORY[0x277CDF108];
  v25 = *(v39 + 104);
  v39 += 104;
  v25(v9, v24, v38);
  sub_213F4EE00();
  *(a4 + v33) = v23;
  v33 = v10[15];
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_213F51DE0;
  *v9 = v37;
  v27 = v38;
  v25(v9, v24, v38);
  sub_213F4EE00();
  *v9 = v37;
  v25(v9, v24, v27);
  sub_213F4EE00();
  v28 = v34;
  *(a4 + v33) = v26;
  v29 = sub_213EAC2D4(v28, a4, type metadata accessor for GridLayoutConfig);
  v30 = a4 + v10[9];
  v36(v29);
  sub_213E9564C(v28);
  result = type metadata accessor for GridLayoutConfig();
  *(a4 + *(result + 28)) = 0x3FF0000000000000;
  return result;
}

double sub_213E9E844(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v5 = *v2;
  v6 = *(v2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAA0();
  return v4;
}

uint64_t sub_213E9E8A4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v4 = *v2;
  v5 = *(v2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  return sub_213F4EAB0();
}

uint64_t sub_213E9E908()
{
  result = type metadata accessor for GridLayoutConfig();
  v2 = ceil((*(v0 + *(result + 24)) + -1.0) * 0.5) + 2.0;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_213E9E994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v56 = a2;
  v54 = *(a1 - 8);
  v55 = *(v54 + 64);
  v3 = MEMORY[0x28223BE20](a1);
  v53 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v3 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAC60, &qword_213F5DEC8);
  v7 = *(a1 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAC68, &qword_213F5DED0);
  v9 = sub_213EA8DD0();
  v63 = v8;
  v64 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = v5;
  v64 = v6;
  v47 = v5;
  v65 = v7;
  v66 = OpaqueTypeConformance2;
  v11 = v7;
  v48 = v7;
  sub_213F4DD80();
  sub_213F4E9C0();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v12 = sub_213F4CE40();
  v13 = swift_getWitnessTable();
  v63 = v12;
  v64 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = v12;
  v64 = v13;
  v15 = swift_getOpaqueTypeConformance2();
  v63 = OpaqueTypeMetadata2;
  v64 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v17 = sub_213F4DFB0();
  v63 = OpaqueTypeMetadata2;
  v64 = v15;
  v18 = swift_getOpaqueTypeConformance2();
  v63 = v16;
  v64 = v17;
  v19 = MEMORY[0x277CDE478];
  v65 = v18;
  v66 = MEMORY[0x277CDE478];
  v20 = swift_getOpaqueTypeMetadata2();
  v63 = v16;
  v64 = v17;
  v65 = v18;
  v66 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v63 = v20;
  v64 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v63 = v20;
  v64 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v63 = v22;
  v64 = MEMORY[0x277D83B88];
  v65 = v23;
  v66 = MEMORY[0x277D83B98];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F96F8, &qword_213F587F8);
  sub_213F4D400();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v24 = sub_213F4EBE0();
  v49 = *(v24 - 8);
  v25 = *(v49 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v47 - v26;
  v28 = sub_213F4D400();
  v50 = *(v28 - 8);
  v29 = *(v50 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v47 - v33;
  v57 = v5;
  v58 = v11;
  v35 = v52;
  v59 = v52;
  sub_213F4EEE0();
  sub_213F4EBD0();
  v37 = v53;
  v36 = v54;
  v38 = v51;
  (*(v54 + 16))(v53, v35, v51);
  v39 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v40 = swift_allocObject();
  v41 = v48;
  *(v40 + 16) = v47;
  *(v40 + 24) = v41;
  (*(v36 + 32))(v40 + v39, v37, v38);
  v42 = swift_getWitnessTable();
  sub_213F4E7B0();

  (*(v49 + 8))(v27, v24);
  v43 = sub_213E37C44();
  v60 = v42;
  v61 = v43;
  v44 = swift_getWitnessTable();
  sub_213DBFEEC(v32, v28, v44);
  v45 = *(v50 + 8);
  v45(v32, v28);
  sub_213DBFEEC(v34, v28, v44);
  return (v45)(v34, v28);
}

uint64_t sub_213E9F020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v142 = a1;
  v136 = a4;
  v139 = a2;
  v140 = a3;
  v141 = type metadata accessor for ComposeLayout();
  v131 = *(v141 - 8);
  v134 = *(v131 + 64);
  MEMORY[0x28223BE20](v141);
  v135 = v102 - v6;
  v7 = sub_213F4DFB0();
  v129 = *(v7 - 8);
  v8 = *(v129 + 8);
  MEMORY[0x28223BE20](v7);
  v128 = v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_213F4DF20();
  v125 = *(v10 - 8);
  v126 = v10;
  v11 = *(v125 + 64);
  MEMORY[0x28223BE20](v10);
  v124 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_213F4DD70();
  v116 = *(v118 - 8);
  v13 = *(v116 + 64);
  MEMORY[0x28223BE20](v118);
  v113 = v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAC60, &qword_213F5DEC8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAC68, &qword_213F5DED0);
  v17 = sub_213EA8DD0();
  *&v159 = v16;
  *(&v159 + 1) = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v159 = a2;
  *(&v159 + 1) = v15;
  *&v160 = a3;
  *(&v160 + 1) = OpaqueTypeConformance2;
  sub_213F4DD80();
  v19 = sub_213F4E9C0();
  WitnessTable = swift_getWitnessTable();
  v110 = v19;
  v102[1] = swift_getWitnessTable();
  v20 = sub_213F4CE40();
  v104 = *(v20 - 8);
  v21 = *(v104 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = v102 - v22;
  v24 = swift_getWitnessTable();
  *&v159 = v20;
  *(&v159 + 1) = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v117 = *(OpaqueTypeMetadata2 - 8);
  v26 = *(v117 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v137 = v102 - v27;
  *&v159 = v20;
  *(&v159 + 1) = v24;
  v103 = v24;
  v28 = swift_getOpaqueTypeConformance2();
  *&v159 = OpaqueTypeMetadata2;
  *(&v159 + 1) = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v115 = *(v29 - 8);
  v30 = *(v115 + 64);
  MEMORY[0x28223BE20](v29);
  v112 = v102 - v31;
  *&v159 = OpaqueTypeMetadata2;
  *(&v159 + 1) = v28;
  v108 = v28;
  v32 = swift_getOpaqueTypeConformance2();
  *&v159 = v29;
  *(&v159 + 1) = v7;
  v33 = MEMORY[0x277CDE478];
  *&v160 = v32;
  *(&v160 + 1) = MEMORY[0x277CDE478];
  v34 = swift_getOpaqueTypeMetadata2();
  v109 = *(v34 - 8);
  v35 = *(v109 + 64);
  MEMORY[0x28223BE20](v34);
  v106 = v102 - v36;
  v107 = v32;
  *&v159 = v29;
  *(&v159 + 1) = v7;
  v130 = v7;
  *&v160 = v32;
  *(&v160 + 1) = v33;
  v37 = swift_getOpaqueTypeConformance2();
  *&v159 = v34;
  *(&v159 + 1) = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v114 = *(v38 - 8);
  v39 = *(v114 + 64);
  MEMORY[0x28223BE20](v38);
  v41 = v102 - v40;
  *&v159 = v34;
  *(&v159 + 1) = v37;
  v105 = v37;
  v42 = swift_getOpaqueTypeConformance2();
  v121 = v38;
  *&v159 = v38;
  *(&v159 + 1) = MEMORY[0x277D83B88];
  v111 = v42;
  *&v160 = v42;
  *(&v160 + 1) = MEMORY[0x277D83B98];
  v43 = swift_getOpaqueTypeMetadata2();
  v122 = *(v43 - 8);
  v44 = *(v122 + 64);
  MEMORY[0x28223BE20](v43);
  v119 = v102 - v45;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F96F8, &qword_213F587F8);
  v123 = v43;
  v133 = sub_213F4D400();
  v127 = *(v133 - 8);
  v46 = *(v127 + 64);
  v47 = MEMORY[0x28223BE20](v133);
  v132 = v102 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v120 = v102 - v50;
  MEMORY[0x28223BE20](v49);
  v138 = v102 - v51;
  sub_213F4E010();
  v143 = v139;
  v144 = v140;
  v145 = v142;
  sub_213F4CE50();
  LOBYTE(v38) = sub_213F4E040();
  v52 = sub_213F4E090();
  sub_213F4E090();
  if (sub_213F4E090() != v38)
  {
    v52 = sub_213F4E090();
  }

  v110 = type metadata accessor for GridLayoutConfig();
  v53 = *(v142 + v110[12]);
  v54 = v113;
  sub_213F4DD60();
  MEMORY[0x216051900](v52, v53, 0, v54, v20, v103);
  (*(v116 + 8))(v54, v118);
  (*(v104 + 8))(v23, v20);
  v55 = v124;
  sub_213F4DF00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9540, &qword_213F5DE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213F51DE0;
  v57 = sub_213F4E030();
  *(inited + 32) = v57;
  v58 = sub_213F4E010();
  *(inited + 33) = v58;
  sub_213F4E020();
  sub_213F4E020();
  if (sub_213F4E020() != v57)
  {
    sub_213F4E020();
  }

  sub_213F4E020();
  if (sub_213F4E020() != v58)
  {
    sub_213F4E020();
  }

  v59 = v112;
  v60 = v137;
  sub_213F4E590();
  (*(v125 + 8))(v55, v126);
  (*(v117 + 8))(v60, OpaqueTypeMetadata2);
  sub_213F4F050();
  v61 = v128;
  sub_213F4DFA0();
  v62 = v106;
  v63 = v130;
  sub_213F4E670();
  (*(v129 + 1))(v61, v63);
  (*(v115 + 8))(v59, v29);
  v64 = v41;
  sub_213F4E5E0();
  (*(v109 + 8))(v62, v34);
  v65 = v142;
  v66 = (v142 + *(v141 + 48));
  v137 = *v66;
  LODWORD(v130) = *(v66 + 8);
  v129 = v66[2];
  *&v155 = v137;
  BYTE8(v155) = v130;
  *&v156[0] = v129;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FABD8, &unk_213F5DE48);
  sub_213F4EAC0();
  sub_213F4F050();
  v67 = v119;
  v68 = v121;
  v69 = v111;
  sub_213F4E530();

  (*(v114 + 8))(v64, v68);
  type metadata accessor for CGSize(0);
  v71 = v70;
  v72 = v131;
  v73 = v135;
  v74 = v65;
  v75 = v141;
  (*(v131 + 16))(v135, v74, v141);
  v76 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v77 = swift_allocObject();
  v78 = v140;
  *(v77 + 16) = v139;
  *(v77 + 24) = v78;
  (*(v72 + 32))(v77 + v76, v73, v75);
  *&v159 = v68;
  *(&v159 + 1) = MEMORY[0x277D83B88];
  *&v160 = v69;
  *(&v160 + 1) = MEMORY[0x277D83B98];
  v79 = swift_getOpaqueTypeConformance2();
  sub_213EAC454(&unk_281182358, type metadata accessor for CGSize);
  v80 = v120;
  v81 = v123;
  sub_213E93994(v71, sub_213E42A54, 0, sub_213EA8ECC, v77, v123, v71, v79);

  (*(v122 + 8))(v67, v81);
  v82 = sub_213DE3AE4(&qword_281182910, &qword_27C8F96F8, &qword_213F587F8);
  v154[2] = v79;
  v154[3] = v82;
  v83 = v133;
  v135 = swift_getWitnessTable();
  sub_213DBFEEC(v80, v83, v135);
  v84 = v127;
  v85 = *(v127 + 8);
  v139 = v127 + 8;
  v140 = v85;
  v85(v80, v83);
  v86 = v142;
  v134 = sub_213E9E908();
  v131 = *(v86 + v110[10]);
  v87 = *(v86 + v110[7]);
  *&v155 = v137;
  BYTE8(v155) = v130;
  *&v156[0] = v129;
  sub_213F4EAC0();
  v88 = v159;
  v130 = v160;
  LOBYTE(v79) = BYTE8(v160);
  v89 = (v86 + *(v75 + 52));
  v90 = *v89;
  v91 = *(v89 + 1);
  LOBYTE(v155) = v90;
  *(&v155 + 1) = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAC0();
  v141 = *(&v159 + 1);
  v142 = v159;
  LODWORD(v137) = v160;
  sub_213F4F460();

  v92 = sub_213F4F450();
  v93 = swift_allocObject();
  v94 = MEMORY[0x277D85700];
  *(v93 + 16) = v92;
  *(v93 + 24) = v94;
  *(v93 + 32) = v88;
  v95 = v130;
  *(v93 + 48) = v130;
  *(v93 + 56) = v79;

  v96 = sub_213F4F450();
  v97 = swift_allocObject();
  *(v97 + 16) = v96;
  *(v97 + 24) = v94;
  *(v97 + 32) = v88;
  *(v97 + 48) = v95;
  *(v97 + 56) = v79;
  sub_213F4EC60();

  *&v155 = v134;
  v98 = v132;
  *(&v155 + 1) = v131;
  *&v156[0] = v87;
  *(v156 + 8) = v159;
  *(&v156[1] + 1) = v160;
  *&v157 = v142;
  *(&v157 + 1) = v141;
  v158 = v137;
  v99 = v138;
  (*(v84 + 16))(v132, v138, v83);
  v151 = v156[1];
  v152 = v157;
  v153 = v158;
  v149 = v155;
  v150 = v156[0];
  v154[0] = v98;
  v154[1] = &v149;
  sub_213E93624(&v155, &v159);
  v148[0] = v83;
  v148[1] = &type metadata for GridPaginationView;
  v146 = v135;
  v147 = sub_213E93680();
  sub_213E95270(v154, 2uLL, v148);
  sub_213E936D4(&v155);
  v100 = v140;
  v140(v99, v83);
  v161 = v151;
  v162 = v152;
  v163 = v153;
  v159 = v149;
  v160 = v150;
  sub_213E936D4(&v159);
  return v100(v98, v83);
}

uint64_t sub_213EA008C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v7 = type metadata accessor for ComposeLayout();
  v8 = *(v7 - 8);
  v36 = *(v8 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v35 = v31 - v10;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAC60, &qword_213F5DEC8);
  v33 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAC68, &qword_213F5DED0);
  v17 = sub_213EA8DD0();
  v39 = v16;
  v40 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = a2;
  v40 = v15;
  v41 = a3;
  v42 = OpaqueTypeConformance2;
  v31[2] = sub_213F4DD80();
  v18 = sub_213F4E9C0();
  v34 = *(v18 - 8);
  v19 = *(v34 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v31 - v23;
  (*(v11 + 16))(v14, a1 + *(v7 + 36), a2);
  v25 = v35;
  (*(v8 + 16))(v35, a1, v7);
  v26 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  *(v27 + 24) = a3;
  (*(v8 + 32))(v27 + v26, v25, v7);
  sub_213F4E9A0();
  WitnessTable = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  sub_213DBFEEC(v22, v18, v28);
  v29 = *(v34 + 8);
  v29(v22, v18);
  sub_213DBFEEC(v24, v18, v28);
  return (v29)(v24, v18);
}

uint64_t sub_213EA0438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17[0] = a1;
  v17[1] = a5;
  v8 = sub_213F4DCB0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAC68, &qword_213F5DED0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  v14 = *(a2 + *(type metadata accessor for ComposeLayout() + 56));

  sub_213F4D890();
  v15 = *(a2 + *(type metadata accessor for GridLayoutConfig() + 52));
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = v17[0];
  v17[7] = a2;
  v18 = 0;
  sub_213EAC454(&qword_281182990, MEMORY[0x277CE0428]);
  sub_213F4F8D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAC88, &qword_213F5DEE0);
  sub_213EA8FB0();
  sub_213F4EFA0();
  *&v13[*(v10 + 36)] = 257;
  sub_213EA8DD0();
  sub_213F4E600();
  return sub_213DE36FC(v13, &qword_27C8FAC68, &qword_213F5DED0);
}

uint64_t sub_213EA0658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FACA0, &qword_213F5DEE8);
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  MEMORY[0x28223BE20](v9);
  v59 = (v50 - v11);
  v53 = a3;
  v54 = a4;
  v12 = type metadata accessor for ComposeLayout();
  v52 = *(v12 - 8);
  v50[1] = *(v52 + 64);
  MEMORY[0x28223BE20](v12);
  v51 = v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FACA8, &qword_213F5DEF0);
  v57 = *(v14 - 8);
  v58 = v14;
  v15 = *(v57 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v55 = v50 - v18;
  v19 = sub_213F4D960();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_213EAC454(&qword_281182C40, MEMORY[0x277CE0150]);
  sub_213F4F490();
  sub_213F4F4C0();
  if (sub_213F4F4B0() < 1)
  {
    return (*(v62 + 56))(v64, 1, 1, v63);
  }

  (*(v20 + 16))(v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v19);
  v22 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v61 = swift_allocObject();
  (*(v20 + 32))(v61 + v22, v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v60 = *(a2 + *(v12 + 40));
  sub_213E9E844(v12);
  v23 = type metadata accessor for GridLayoutConfig();
  v24 = *(a2 + v23[12]);
  v25 = *(a2 + v23[13]);
  v26 = *(a2 + v23[10]);
  sub_213F4EEE0();
  sub_213F4D0C0();
  LOBYTE(v69[0]) = 0;
  *&v65[6] = v75;
  *&v65[22] = v76;
  *&v65[38] = v77;
  v28 = v53;
  v27 = v54;
  v29 = sub_213EAA65C();
  v30 = sub_213EA9F74(v29);

  v69[0] = v30;
  swift_getKeyPath();
  v32 = v51;
  v31 = v52;
  (*(v52 + 16))(v51, a2, v12);
  v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v28;
  *(v34 + 24) = v27;
  (*(v31 + 32))(v34 + v33, v32, v12);
  v35 = swift_allocObject();
  *(v35 + 16) = sub_213EAABA0;
  *(v35 + 24) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FACB0, &qword_213F5DF18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FACB8, &qword_213F5DF20);
  sub_213DE3AE4(&qword_27C8FACC0, &qword_27C8FACB0, &qword_213F5DF18);
  sub_213DE3AE4(&qword_27C8FACC8, &qword_27C8FACB8, &qword_213F5DF20);
  v36 = v55;
  sub_213F4ECC0();
  v38 = v56;
  v37 = v57;
  v39 = *(v57 + 16);
  v40 = v58;
  v39(v56, v36, v58);
  *&v66 = sub_213EA9060;
  *(&v66 + 1) = v61;
  *&v67[0] = v60;
  WORD4(v67[0]) = 0;
  *(v67 + 10) = *v65;
  *(&v67[3] + 1) = *&v65[46];
  *(&v67[2] + 10) = *&v65[32];
  *(&v67[1] + 10) = *&v65[16];
  v68 = 0;
  v41 = v67[0];
  v42 = v59;
  *v59 = v66;
  *(v42 + 16) = v41;
  v43 = v67[1];
  v44 = v67[2];
  v45 = v67[3];
  *(v42 + 80) = 0;
  *(v42 + 48) = v44;
  *(v42 + 64) = v45;
  *(v42 + 32) = v43;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FACD0, &qword_213F5DF28);
  v39((v42 + *(v46 + 48)), v38, v40);
  sub_213DE3164(&v66, v69, &qword_27C8FACD8, &qword_213F5DF30);
  v47 = *(v37 + 8);
  v47(v36, v40);
  v47(v38, v40);
  v69[0] = sub_213EA9060;
  v69[1] = v61;
  v69[2] = v60;
  v70 = 0;
  v71 = *v65;
  v72 = *&v65[16];
  *v73 = *&v65[32];
  *&v73[14] = *&v65[46];
  v74 = 0;
  sub_213DE36FC(v69, &qword_27C8FACD8, &qword_213F5DF30);
  v48 = v64;
  sub_213DE2B44(v42, v64, &qword_27C8FACA0, &qword_213F5DEE8);
  return (*(v62 + 56))(v48, 0, 1, v63);
}

uint64_t sub_213EA0DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = sub_213F4DCB0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = *(a2 + *(type metadata accessor for ComposeLayout() + 60));

  sub_213F4D890();
  v8 = *(a2 + *(type metadata accessor for GridLayoutConfig() + 52));
  sub_213EAC454(&qword_281182990, MEMORY[0x277CE0428]);
  sub_213F4F8D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FACE0, &qword_213F5DF38);
  sub_213EA88F4(&qword_27C8FACE8, &qword_27C8FACE0, &qword_213F5DF38, sub_213EAABD8);
  result = sub_213F4EFA0();
  if (__OFADD__(a1, 2))
  {
    __break(1u);
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FACB8, &qword_213F5DF20);
    *(a3 + *(result + 52)) = a1 + 2;
  }

  return result;
}

uint64_t sub_213EA0FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[1] = a5;
  v9 = type metadata accessor for ComposeLayout();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - v12;
  v14 = *(a1 + 16);
  v18[2] = 0;
  v18[3] = v14;
  swift_getKeyPath();
  (*(v10 + 16))(v13, a2, v9);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  *(v16 + 4) = a1;
  (*(v10 + 32))(&v16[v15], v13, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA3C0, &qword_213F5D780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FACF8, &qword_213F5DF40);
  sub_213E800BC();
  sub_213EAABD8();
  return sub_213F4ECC0();
}

__n128 sub_213EA1194@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = v7;
  v9 = type metadata accessor for ComposeLayout();
  v10 = *(a3 + *(v9 + 40));

  sub_213E9E844(v9);
  v11 = type metadata accessor for GridLayoutConfig();
  v12 = *(a3 + v11[12]);
  v13 = *(a3 + v11[13]);
  v14 = *(a3 + v11[10]);
  sub_213F4EEE0();
  sub_213F4D0C0();
  *&v16[38] = v19;
  *&v16[22] = v18;
  *&v16[6] = v17;
  *(a4 + 26) = *v16;
  *a4 = sub_213EAADE4;
  *(a4 + 8) = v8;
  *(a4 + 16) = v10;
  *(a4 + 24) = 0;
  *(a4 + 42) = *&v16[16];
  result = *&v16[32];
  *(a4 + 58) = *&v16[32];
  *(a4 + 72) = *(&v19 + 1);
  return result;
}

void sub_213EA1300(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(a1 + 16) <= a2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = sub_213F4ED30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v9 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a2;

  v8(a3, v9, v6);
}

uint64_t sub_213EA13A4(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for ComposeLayout() + 52));
  v4 = *v2;
  v5 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  return sub_213F4EAB0();
}

uint64_t sub_213EA1424@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DefaultLayout();
  v7 = (a3 + v6[10]);
  v8 = sub_213E93B1C();
  *v7 = v9;
  v7[1] = v10;
  v7[2] = v8;
  v11 = a3 + v6[11];
  *v11 = sub_213EA1524();
  *(v11 + 8) = v12 & 1;
  *(v11 + 16) = v13;
  v14 = a3 + v6[12];
  sub_213F4EA90();
  *v14 = v18;
  *(v14 + 8) = v19;
  v15 = sub_213EAC2D4(a1, a3, type metadata accessor for GridLayoutConfig);
  v16 = a3 + v6[9];
  a2(v15);
  return sub_213E9564C(a1);
}

uint64_t sub_213EA1524()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA8D8, qword_213F5D840);
  sub_213F4EA90();
  return v1;
}

uint64_t sub_213EA157C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v56 = a2;
  v54 = *(a1 - 8);
  v55 = *(v54 + 64);
  v3 = MEMORY[0x28223BE20](a1);
  v53 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v3 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FABB0, &qword_213F5DE20);
  v7 = *(a1 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FABB8, &qword_213F5DE28);
  v9 = sub_213EA82F8();
  v63 = v8;
  v64 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = v5;
  v64 = v6;
  v47 = v5;
  v65 = v7;
  v66 = OpaqueTypeConformance2;
  v11 = v7;
  v48 = v7;
  sub_213F4DD80();
  sub_213F4E9C0();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v12 = sub_213F4CE40();
  v13 = swift_getWitnessTable();
  v63 = v12;
  v64 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = v12;
  v64 = v13;
  v15 = swift_getOpaqueTypeConformance2();
  v63 = OpaqueTypeMetadata2;
  v64 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v17 = sub_213F4DFB0();
  v63 = OpaqueTypeMetadata2;
  v64 = v15;
  v18 = swift_getOpaqueTypeConformance2();
  v63 = v16;
  v64 = v17;
  v19 = MEMORY[0x277CDE478];
  v65 = v18;
  v66 = MEMORY[0x277CDE478];
  v20 = swift_getOpaqueTypeMetadata2();
  v63 = v16;
  v64 = v17;
  v65 = v18;
  v66 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v63 = v20;
  v64 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v63 = v20;
  v64 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v63 = v22;
  v64 = MEMORY[0x277D83B88];
  v65 = v23;
  v66 = MEMORY[0x277D83B98];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F96F8, &qword_213F587F8);
  sub_213F4D400();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v24 = sub_213F4EBE0();
  v49 = *(v24 - 8);
  v25 = *(v49 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v47 - v26;
  v28 = sub_213F4D400();
  v50 = *(v28 - 8);
  v29 = *(v50 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v47 - v33;
  v57 = v5;
  v58 = v11;
  v35 = v52;
  v59 = v52;
  sub_213F4EEE0();
  sub_213F4EBD0();
  v37 = v53;
  v36 = v54;
  v38 = v51;
  (*(v54 + 16))(v53, v35, v51);
  v39 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v40 = swift_allocObject();
  v41 = v48;
  *(v40 + 16) = v47;
  *(v40 + 24) = v41;
  (*(v36 + 32))(v40 + v39, v37, v38);
  v42 = swift_getWitnessTable();
  sub_213F4E7B0();

  (*(v49 + 8))(v27, v24);
  v43 = sub_213E37C44();
  v60 = v42;
  v61 = v43;
  v44 = swift_getWitnessTable();
  sub_213DBFEEC(v32, v28, v44);
  v45 = *(v50 + 8);
  v45(v32, v28);
  sub_213DBFEEC(v34, v28, v44);
  return (v45)(v34, v28);
}

uint64_t sub_213EA1C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v142 = a1;
  v136 = a4;
  v139 = a2;
  v140 = a3;
  v141 = type metadata accessor for DefaultLayout();
  v135 = *(v141 - 8);
  v133 = *(v135 + 64);
  MEMORY[0x28223BE20](v141);
  v134 = v102 - v6;
  v7 = sub_213F4DFB0();
  v129 = *(v7 - 8);
  v8 = *(v129 + 8);
  MEMORY[0x28223BE20](v7);
  v128 = v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_213F4DF20();
  v125 = *(v10 - 8);
  v126 = v10;
  v11 = *(v125 + 64);
  MEMORY[0x28223BE20](v10);
  v124 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_213F4DD70();
  v116 = *(v118 - 8);
  v13 = *(v116 + 64);
  MEMORY[0x28223BE20](v118);
  v113 = v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FABB0, &qword_213F5DE20);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FABB8, &qword_213F5DE28);
  v17 = sub_213EA82F8();
  *&v159 = v16;
  *(&v159 + 1) = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v159 = a2;
  *(&v159 + 1) = v15;
  *&v160 = a3;
  *(&v160 + 1) = OpaqueTypeConformance2;
  sub_213F4DD80();
  v19 = sub_213F4E9C0();
  WitnessTable = swift_getWitnessTable();
  v109 = v19;
  v102[1] = swift_getWitnessTable();
  v20 = sub_213F4CE40();
  v104 = *(v20 - 8);
  v21 = *(v104 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = v102 - v22;
  v24 = swift_getWitnessTable();
  *&v159 = v20;
  *(&v159 + 1) = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v117 = *(OpaqueTypeMetadata2 - 8);
  v26 = *(v117 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v137 = v102 - v27;
  *&v159 = v20;
  *(&v159 + 1) = v24;
  v103 = v24;
  v28 = swift_getOpaqueTypeConformance2();
  *&v159 = OpaqueTypeMetadata2;
  *(&v159 + 1) = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v115 = *(v29 - 8);
  v30 = *(v115 + 64);
  MEMORY[0x28223BE20](v29);
  v112 = v102 - v31;
  *&v159 = OpaqueTypeMetadata2;
  *(&v159 + 1) = v28;
  v108 = v28;
  v32 = swift_getOpaqueTypeConformance2();
  *&v159 = v29;
  *(&v159 + 1) = v7;
  v33 = MEMORY[0x277CDE478];
  *&v160 = v32;
  *(&v160 + 1) = MEMORY[0x277CDE478];
  v34 = swift_getOpaqueTypeMetadata2();
  v110 = *(v34 - 8);
  v35 = *(v110 + 64);
  MEMORY[0x28223BE20](v34);
  v106 = v102 - v36;
  v107 = v32;
  *&v159 = v29;
  *(&v159 + 1) = v7;
  v130 = v7;
  *&v160 = v32;
  *(&v160 + 1) = v33;
  v37 = swift_getOpaqueTypeConformance2();
  *&v159 = v34;
  *(&v159 + 1) = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v114 = *(v38 - 8);
  v39 = *(v114 + 64);
  MEMORY[0x28223BE20](v38);
  v41 = v102 - v40;
  *&v159 = v34;
  *(&v159 + 1) = v37;
  v105 = v37;
  v42 = swift_getOpaqueTypeConformance2();
  v121 = v38;
  *&v159 = v38;
  *(&v159 + 1) = MEMORY[0x277D83B88];
  v111 = v42;
  *&v160 = v42;
  *(&v160 + 1) = MEMORY[0x277D83B98];
  v43 = swift_getOpaqueTypeMetadata2();
  v122 = *(v43 - 8);
  v44 = *(v122 + 64);
  MEMORY[0x28223BE20](v43);
  v119 = v102 - v45;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F96F8, &qword_213F587F8);
  v123 = v43;
  v132 = sub_213F4D400();
  v127 = *(v132 - 8);
  v46 = *(v127 + 64);
  v47 = MEMORY[0x28223BE20](v132);
  v131 = v102 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v120 = v102 - v50;
  MEMORY[0x28223BE20](v49);
  v138 = v102 - v51;
  sub_213F4E010();
  v143 = v139;
  v144 = v140;
  v145 = v142;
  sub_213F4CE50();
  LOBYTE(v37) = sub_213F4E040();
  v52 = sub_213F4E090();
  sub_213F4E090();
  if (sub_213F4E090() != v37)
  {
    v52 = sub_213F4E090();
  }

  v109 = type metadata accessor for GridLayoutConfig();
  v53 = *(v142 + v109[12]);
  v54 = v113;
  sub_213F4DD60();
  MEMORY[0x216051900](v52, v53, 0, v54, v20, v103);
  (*(v116 + 8))(v54, v118);
  (*(v104 + 8))(v23, v20);
  v55 = v124;
  sub_213F4DF00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9540, &qword_213F5DE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213F51DE0;
  LOBYTE(v53) = sub_213F4E030();
  *(inited + 32) = v53;
  v57 = sub_213F4E010();
  *(inited + 33) = v57;
  sub_213F4E020();
  sub_213F4E020();
  if (sub_213F4E020() != v53)
  {
    sub_213F4E020();
  }

  sub_213F4E020();
  if (sub_213F4E020() != v57)
  {
    sub_213F4E020();
  }

  v58 = v112;
  v59 = v137;
  sub_213F4E590();
  (*(v125 + 8))(v55, v126);
  (*(v117 + 8))(v59, OpaqueTypeMetadata2);
  sub_213F4F050();
  v60 = v128;
  sub_213F4DFA0();
  v61 = v106;
  v62 = v130;
  sub_213F4E670();
  (*(v129 + 1))(v60, v62);
  (*(v115 + 8))(v58, v29);
  v63 = v41;
  sub_213F4E5E0();
  (*(v110 + 8))(v61, v34);
  v64 = v142;
  v65 = (v142 + *(v141 + 44));
  v137 = *v65;
  LODWORD(v130) = *(v65 + 8);
  v129 = v65[2];
  *&v155 = v137;
  BYTE8(v155) = v130;
  *&v156[0] = v129;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FABD8, &unk_213F5DE48);
  sub_213F4EAC0();
  sub_213F4F050();
  v66 = v119;
  v67 = v121;
  v68 = v111;
  sub_213F4E530();

  (*(v114 + 8))(v63, v67);
  type metadata accessor for CGSize(0);
  v70 = v69;
  v71 = v134;
  v72 = v135;
  v73 = v64;
  v74 = v141;
  (*(v135 + 16))(v134, v73, v141);
  v75 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v76 = swift_allocObject();
  v77 = v140;
  *(v76 + 16) = v139;
  *(v76 + 24) = v77;
  (*(v72 + 32))(v76 + v75, v71, v74);
  *&v159 = v67;
  *(&v159 + 1) = MEMORY[0x277D83B88];
  *&v160 = v68;
  *(&v160 + 1) = MEMORY[0x277D83B98];
  v78 = swift_getOpaqueTypeConformance2();
  sub_213EAC454(&unk_281182358, type metadata accessor for CGSize);
  v79 = v120;
  v80 = v123;
  sub_213E93994(v70, sub_213E42A54, 0, sub_213EA83F4, v76, v123, v70, v78);

  (*(v122 + 8))(v66, v80);
  v81 = sub_213DE3AE4(&qword_281182910, &qword_27C8F96F8, &qword_213F587F8);
  v154[2] = v78;
  v154[3] = v81;
  v82 = v132;
  v135 = swift_getWitnessTable();
  sub_213DBFEEC(v79, v82, v135);
  v83 = v127;
  v84 = *(v127 + 8);
  v139 = v127 + 8;
  v140 = v84;
  v84(v79, v82);
  v85 = v109[7];
  v134 = *(v142 + v109[6]);
  v133 = *(v142 + v109[10]);
  v86 = *(v142 + v85);
  v87 = v142;
  *&v155 = v137;
  BYTE8(v155) = v130;
  *&v156[0] = v129;
  sub_213F4EAC0();
  v88 = v159;
  v130 = v160;
  LOBYTE(v79) = BYTE8(v160);
  v89 = (v87 + *(v74 + 48));
  v90 = *v89;
  v91 = *(v89 + 1);
  LOBYTE(v155) = v90;
  *(&v155 + 1) = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAC0();
  v141 = *(&v159 + 1);
  v142 = v159;
  LODWORD(v137) = v160;
  sub_213F4F460();

  v92 = sub_213F4F450();
  v93 = swift_allocObject();
  v94 = MEMORY[0x277D85700];
  *(v93 + 16) = v92;
  *(v93 + 24) = v94;
  *(v93 + 32) = v88;
  v95 = v130;
  *(v93 + 48) = v130;
  *(v93 + 56) = v79;

  v96 = sub_213F4F450();
  v97 = swift_allocObject();
  *(v97 + 16) = v96;
  *(v97 + 24) = v94;
  *(v97 + 32) = v88;
  *(v97 + 48) = v95;
  *(v97 + 56) = v79;
  sub_213F4EC60();

  *&v155 = v134;
  *(&v155 + 1) = v133;
  *&v156[0] = v86;
  *(v156 + 8) = v159;
  *(&v156[1] + 1) = v160;
  *&v157 = v142;
  *(&v157 + 1) = v141;
  v158 = v137;
  v98 = v131;
  v99 = v138;
  (*(v83 + 16))(v131, v138, v82);
  v151 = v156[1];
  v152 = v157;
  v153 = v158;
  v149 = v155;
  v150 = v156[0];
  v154[0] = v98;
  v154[1] = &v149;
  sub_213E93624(&v155, &v159);
  v148[0] = v82;
  v148[1] = &type metadata for GridPaginationView;
  v146 = v135;
  v147 = sub_213E93680();
  sub_213E95270(v154, 2uLL, v148);
  sub_213E936D4(&v155);
  v100 = v140;
  v140(v99, v82);
  v161 = v151;
  v162 = v152;
  v163 = v153;
  v159 = v149;
  v160 = v150;
  sub_213E936D4(&v159);
  return v100(v98, v82);
}

uint64_t sub_213EA2C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v7 = type metadata accessor for DefaultLayout();
  v8 = *(v7 - 8);
  v36 = *(v8 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v35 = v31 - v10;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FABB0, &qword_213F5DE20);
  v33 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FABB8, &qword_213F5DE28);
  v17 = sub_213EA82F8();
  v39 = v16;
  v40 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = a2;
  v40 = v15;
  v41 = a3;
  v42 = OpaqueTypeConformance2;
  v31[2] = sub_213F4DD80();
  v18 = sub_213F4E9C0();
  v34 = *(v18 - 8);
  v19 = *(v34 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v31 - v23;
  (*(v11 + 16))(v14, a1 + *(v7 + 36), a2);
  v25 = v35;
  (*(v8 + 16))(v35, a1, v7);
  v26 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  *(v27 + 24) = a3;
  (*(v8 + 32))(v27 + v26, v25, v7);
  sub_213F4E9A0();
  WitnessTable = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  sub_213DBFEEC(v22, v18, v28);
  v29 = *(v34 + 8);
  v29(v22, v18);
  sub_213DBFEEC(v24, v18, v28);
  return (v29)(v24, v18);
}

uint64_t sub_213EA3014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17[1] = a5;
  v9 = sub_213F4DCB0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FABB8, &qword_213F5DE28);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - v13;
  sub_213F4D890();
  v15 = *(a2 + *(type metadata accessor for GridLayoutConfig() + 52));
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = a1;
  v17[7] = a2;
  v18 = 0;
  sub_213EAC454(&qword_281182990, MEMORY[0x277CE0428]);
  sub_213F4F8D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FABE0, &qword_213F5DE58);
  sub_213EA88F4(&qword_27C8FABE8, &qword_27C8FABE0, &qword_213F5DE58, sub_213EA8970);
  sub_213F4CE20();
  *&v14[*(v11 + 36)] = 257;
  sub_213EA82F8();
  sub_213F4E600();
  return sub_213DE36FC(v14, &qword_27C8FABB8, &qword_213F5DE28);
}

uint64_t sub_213EA3238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23[1] = a5;
  v9 = type metadata accessor for DefaultLayout();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAC20, &qword_213F5DE78);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v23 - v16;
  v18 = sub_213F4D960();
  (*(*(v18 - 8) + 16))(v17, a1, v18);
  v23[0] = swift_getKeyPath();
  (*(v10 + 16))(v13, a2, v9);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  (*(v10 + 32))(v20 + v19, v13, v9);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_213EA8BA0;
  *(v21 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FABF8, &qword_213F5DE60);
  sub_213EA8CAC();
  sub_213EA8970();
  return sub_213F4ECC0();
}

uint64_t sub_213EA34A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a2;
  v57 = a1;
  v54 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAC38, &qword_213F5DEA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v60 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAC40, &qword_213F5DEB0);
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v8);
  v50 = &v50 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAC18, &qword_213F5DE70);
  v11 = *(*(v59 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v59);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = &v50 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAC48, &qword_213F5DEB8);
  v16 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v58 = &v50 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAC50, &qword_213F5DEC0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v50 - v21;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAC08, &qword_213F5DE68);
  v23 = *(*(v56 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v56);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v50 - v27;
  v29 = type metadata accessor for GridLayoutConfig();
  v30 = v29;
  if (*(a3 + v29[9]) == 1)
  {
    v31 = sub_213F4E010();
    sub_213F4E020();
    sub_213F4E020();
    result = sub_213F4E020();
    if (result != v31)
    {
      result = sub_213F4E020();
    }

    v33 = *(a3 + v30[7]);
    if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v33 > -9.22337204e18)
      {
        if (v33 < 9.22337204e18)
        {
          v34 = *(a3 + v30[10]);
          v35 = *(a3 + v30[13]);
          sub_213F4EEE0();
          sub_213F4ED30();
          sub_213F4E6B0();
          (*(v19 + 32))(v26, v22, v18);
          *&v26[*(v56 + 52)] = v57;
          v36 = &qword_27C8FAC08;
          v37 = &qword_213F5DE68;
          sub_213DE2B44(v26, v28, &qword_27C8FAC08, &qword_213F5DE68);
          sub_213DE3164(v28, v58, &qword_27C8FAC08, &qword_213F5DE68);
          swift_storeEnumTagMultiPayload();
          sub_213DE3AE4(&qword_27C8FAC00, &qword_27C8FAC08, &qword_213F5DE68);
          sub_213DE3AE4(&qword_27C8FAC10, &qword_27C8FAC18, &qword_213F5DE70);
          sub_213F4DBA0();
          v38 = v28;
          return sub_213DE36FC(v38, v36, v37);
        }

        goto LABEL_19;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v39 = *(a3 + v29[7]);
  v40 = v39 / *(a3 + v29[8]);
  v41 = sub_213F4ED30();
  v42 = v60;
  (*(*(v41 - 8) + 16))(v60, v61, v41);
  v43 = &v42[*(v5 + 36)];
  *v43 = v40;
  *(v43 + 4) = 0;
  v44 = sub_213F4E010();
  sub_213F4E020();
  sub_213F4E020();
  result = sub_213F4E020();
  if (result != v44)
  {
    result = sub_213F4E020();
  }

  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v39 < 9.22337204e18)
  {
    v45 = *(a3 + v30[10]);
    v46 = *(a3 + v30[13]);
    sub_213F4EEE0();
    v47 = v60;
    sub_213EA8D60(&qword_27C8FAC58, &qword_27C8FAC38, &qword_213F5DEA8);
    v48 = v50;
    sub_213F4E6B0();
    sub_213DE36FC(v47, &qword_27C8FAC38, &qword_213F5DEA8);
    (*(v51 + 32))(v14, v48, v52);
    *&v14[*(v59 + 52)] = v57;
    v36 = &qword_27C8FAC18;
    v37 = &qword_213F5DE70;
    v49 = v53;
    sub_213DE2B44(v14, v53, &qword_27C8FAC18, &qword_213F5DE70);
    sub_213DE3164(v49, v58, &qword_27C8FAC18, &qword_213F5DE70);
    swift_storeEnumTagMultiPayload();
    sub_213DE3AE4(&qword_27C8FAC00, &qword_27C8FAC08, &qword_213F5DE68);
    sub_213DE3AE4(&qword_27C8FAC10, &qword_27C8FAC18, &qword_213F5DE70);
    sub_213F4DBA0();
    v38 = v49;
    return sub_213DE36FC(v38, v36, v37);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_213EA3BE0(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for DefaultLayout() + 48));
  v4 = *v2;
  v5 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  return sub_213F4EAB0();
}

uint64_t GridLayout.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v171 = a2;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = type metadata accessor for VerticalLayout();
  v148 = *(v4 - 8);
  v5 = *(v148 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v147 = (&v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v155 = &v143 - v8;
  v9 = type metadata accessor for StackLayout();
  v160 = *(v9 - 8);
  v10 = *(v160 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v146 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v154 = &v143 - v13;
  v14 = type metadata accessor for ShelfLayout();
  v176 = v9;
  v15 = sub_213F4DBB0();
  v157 = *(v15 - 8);
  v16 = *(v157 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v156 = &v143 - v18;
  v175 = v14;
  v159 = *(v14 - 8);
  v19 = *(v159 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v145 = (&v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v152 = &v143 - v22;
  v163 = v3;
  v23 = type metadata accessor for ComposeLayout();
  v158 = *(v23 - 8);
  v24 = *(v158 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v149 = &v143 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v151 = &v143 - v27;
  v28 = type metadata accessor for DefaultLayout();
  v172 = v23;
  v29 = sub_213F4DBB0();
  v153 = *(v29 - 8);
  v30 = *(v153 + 64);
  MEMORY[0x28223BE20](v29);
  v150 = &v143 - v31;
  v174 = v32;
  v169 = v15;
  v33 = sub_213F4DBB0();
  v162 = *(v33 - 8);
  v34 = *(v162 + 64);
  MEMORY[0x28223BE20](v33);
  v161 = &v143 - v35;
  v36 = type metadata accessor for GridLayoutConfig();
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v143 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = v28;
  v42 = *(v28 - 8);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x28223BE20](v39);
  v46 = &v143 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v48 = &v143 - v47;
  v168 = v33;
  v170 = v4;
  v49 = sub_213F4DBB0();
  v165 = *(v49 - 8);
  v166 = v49;
  v50 = *(v165 + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v143 - v51;
  v53 = v164;
  v54 = v164[*(v37 + 28)];
  sub_213EAC2D4(v164, v41, type metadata accessor for GridLayoutConfig);
  v177[2] = v163;
  v177[3] = v2;
  v177[4] = v53;
  v167 = v52;
  if (v54 > 1)
  {
    if (v54 == 2)
    {
      v89 = v145;
      sub_213E9AE54(v41, sub_213EAC624, v177, v145);
      v72 = v175;
      WitnessTable = swift_getWitnessTable();
      v91 = v152;
      sub_213DBFEEC(v89, v72, WitnessTable);
      v92 = *(v159 + 8);
      v159 += 8;
      v164 = v92;
      (v92)(v89, v72);
      sub_213DBFEEC(v91, v72, WitnessTable);
      v93 = swift_getWitnessTable();
      v94 = v156;
      sub_213E95440(v89, v72);
      v95 = swift_getWitnessTable();
      v96 = swift_getWitnessTable();
      v177[21] = v95;
      v177[22] = v96;
      v97 = v174;
      v98 = swift_getWitnessTable();
      v177[19] = WitnessTable;
      v177[20] = v93;
      v99 = v169;
      v100 = swift_getWitnessTable();
      v101 = v161;
      sub_213DBFF2C(v94, v97, v99);
      (*(v157 + 8))(v94, v99);
      v177[17] = v98;
      v177[18] = v100;
      v102 = v168;
      swift_getWitnessTable();
      swift_getWitnessTable();
      v114 = v167;
      sub_213E95440(v101, v102);
      (*(v162 + 8))(v101, v102);
      v73 = v164;
      (v164)(v89, v72);
      v74 = v152;
    }

    else
    {
      v55 = v54 == 3;
      v56 = v176;
      if (!v55)
      {
        v103 = v147;
        sub_213E96BD0(v41, sub_213EAC624, v147);
        v104 = v170;
        v105 = swift_getWitnessTable();
        v106 = v155;
        sub_213DBFEEC(v103, v104, v105);
        v164 = *(v148 + 8);
        (v164)(v103, v104);
        sub_213DBFEEC(v106, v104, v105);
        v107 = swift_getWitnessTable();
        v108 = swift_getWitnessTable();
        v177[41] = v107;
        v177[42] = v108;
        v109 = swift_getWitnessTable();
        v110 = swift_getWitnessTable();
        v111 = swift_getWitnessTable();
        v177[39] = v110;
        v177[40] = v111;
        v112 = swift_getWitnessTable();
        v177[37] = v109;
        v177[38] = v112;
        v113 = v168;
        swift_getWitnessTable();
        v114 = v167;
        sub_213DBFF2C(v103, v113, v104);
        v115 = v164;
        (v164)(v103, v104);
        v115(v155, v104);
        goto LABEL_11;
      }

      v57 = v146;
      sub_213E98080(v41, sub_213EAC624, v177, v146);
      v58 = swift_getWitnessTable();
      v59 = v154;
      sub_213DBFEEC(v57, v56, v58);
      v60 = *(v160 + 8);
      v160 += 8;
      v164 = v60;
      (v60)(v57, v56);
      sub_213DBFEEC(v59, v56, v58);
      v61 = v175;
      v62 = swift_getWitnessTable();
      v63 = v156;
      sub_213DBFF2C(v57, v61, v56);
      v64 = swift_getWitnessTable();
      v65 = swift_getWitnessTable();
      v177[27] = v64;
      v177[28] = v65;
      v66 = v174;
      v67 = swift_getWitnessTable();
      v177[25] = v62;
      v177[26] = v58;
      v68 = v169;
      v69 = swift_getWitnessTable();
      v70 = v161;
      sub_213DBFF2C(v63, v66, v68);
      (*(v157 + 8))(v63, v68);
      v177[23] = v67;
      v177[24] = v69;
      v71 = v168;
      swift_getWitnessTable();
      swift_getWitnessTable();
      v114 = v167;
      sub_213E95440(v70, v71);
      (*(v162 + 8))(v70, v71);
      v72 = v176;
      v73 = v164;
      (v164)(v57, v176);
      v74 = v154;
    }

    v73(v74, v72);
    goto LABEL_11;
  }

  if (v54)
  {
    v116 = v149;
    sub_213E9E4E8(v41, sub_213EA5094, v177, v149);
    v117 = v172;
    v118 = swift_getWitnessTable();
    v119 = v151;
    sub_213DBFEEC(v116, v117, v118);
    v120 = *(v158 + 8);
    v158 += 8;
    v164 = v120;
    (v120)(v116, v117);
    sub_213DBFEEC(v119, v117, v118);
    v121 = v173;
    v122 = swift_getWitnessTable();
    v123 = v150;
    sub_213DBFF2C(v116, v121, v117);
    v177[15] = v122;
    v177[16] = v118;
    v124 = v174;
    v125 = swift_getWitnessTable();
    v126 = swift_getWitnessTable();
    v127 = swift_getWitnessTable();
    v177[13] = v126;
    v177[14] = v127;
    v128 = swift_getWitnessTable();
    v129 = v161;
    sub_213E95440(v123, v124);
    (*(v153 + 8))(v123, v124);
    v177[11] = v125;
    v177[12] = v128;
    v130 = v168;
    swift_getWitnessTable();
    swift_getWitnessTable();
    v114 = v167;
    sub_213E95440(v129, v130);
    (*(v162 + 8))(v129, v130);
    v131 = v164;
    (v164)(v116, v117);
    v131(v151, v117);
  }

  else
  {
    v75 = v46;
    sub_213EA1424(v41, sub_213EAC624, v46);
    v76 = v173;
    v77 = swift_getWitnessTable();
    v144 = v48;
    sub_213DBFEEC(v46, v76, v77);
    v78 = *(v42 + 8);
    v163 = v42 + 8;
    v164 = v78;
    (v78)(v46, v76);
    v143 = v46;
    sub_213DBFEEC(v48, v76, v77);
    v79 = swift_getWitnessTable();
    v80 = v150;
    sub_213E95440(v75, v76);
    v177[9] = v77;
    v177[10] = v79;
    v81 = v174;
    v82 = swift_getWitnessTable();
    v83 = swift_getWitnessTable();
    v84 = swift_getWitnessTable();
    v177[7] = v83;
    v177[8] = v84;
    v85 = swift_getWitnessTable();
    v86 = v161;
    sub_213E95440(v80, v81);
    (*(v153 + 8))(v80, v81);
    v177[5] = v82;
    v177[6] = v85;
    v87 = v168;
    swift_getWitnessTable();
    swift_getWitnessTable();
    v114 = v167;
    sub_213E95440(v86, v87);
    (*(v162 + 8))(v86, v87);
    v88 = v164;
    (v164)(v143, v76);
    v88(v144, v76);
  }

LABEL_11:
  v132 = swift_getWitnessTable();
  v133 = swift_getWitnessTable();
  v177[35] = v132;
  v177[36] = v133;
  v134 = swift_getWitnessTable();
  v135 = swift_getWitnessTable();
  v136 = swift_getWitnessTable();
  v177[33] = v135;
  v177[34] = v136;
  v137 = swift_getWitnessTable();
  v177[31] = v134;
  v177[32] = v137;
  v138 = swift_getWitnessTable();
  v139 = swift_getWitnessTable();
  v177[29] = v138;
  v177[30] = v139;
  v140 = v166;
  v141 = swift_getWitnessTable();
  sub_213DBFEEC(v114, v140, v141);
  return (*(v165 + 8))(v114, v140);
}

uint64_t sub_213EA4F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GridLayout();
  sub_213DBFEEC(a1 + *(v10 + 36), a2, a3);
  sub_213DBFEEC(v9, a2, a3);
  return (*(v6 + 8))(v9, a2);
}

unint64_t sub_213EA50B8()
{
  result = qword_27C8FA908;
  if (!qword_27C8FA908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FA908);
  }

  return result;
}

unint64_t sub_213EA5110()
{
  result = qword_27C8FA910[0];
  if (!qword_27C8FA910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8FA910);
  }

  return result;
}

uint64_t sub_213EA51D4()
{
  result = sub_213F4CB40();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageAccessory.ImageAccessoryType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageAccessory.ImageAccessoryType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_213EA53F0(uint64_t a1)
{
  result = type metadata accessor for GridLayoutConfig();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_213EA5478(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_213F4CB40() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = (((((((((((v12 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v13 + 9;
  if (a2 > v14)
  {
    v16 = (v15 & ~v13) + *(v10 + 64);
    v17 = 8 * v16;
    if (v16 > 3)
    {
      goto LABEL_10;
    }

    v19 = ((a2 - v14 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v19 >= 2)
    {
LABEL_10:
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_30;
      }

LABEL_17:
      v20 = (v18 - 1) << v17;
      if (v16 > 3)
      {
        v20 = 0;
      }

      if (v16)
      {
        if (v16 <= 3)
        {
          v21 = (v15 & ~v13) + *(v10 + 64);
        }

        else
        {
          v21 = 4;
        }

        if (v21 > 2)
        {
          if (v21 == 3)
          {
            v22 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v22 = *a1;
          }
        }

        else if (v21 == 1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = *a1;
        }
      }

      else
      {
        v22 = 0;
      }

      v27 = v14 + (v22 | v20);
      return (v27 + 1);
    }
  }

LABEL_30:
  if (v9 < v11)
  {
    v23 = *(v10 + 48);

    return v23((a1 + v15) & ~v13, v11);
  }

  if (v8 < 0xFE)
  {
    v26 = *(((((((a1 + v12) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v26 < 2)
    {
      return 0;
    }

    v27 = (v26 + 2147483646) & 0x7FFFFFFF;
    return (v27 + 1);
  }

  v25 = *(v7 + 48);

  return v25(a1);
}

void sub_213EA572C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_213F4CB40() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 64);
  v15 = *(v12 + 80);
  if (v13 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  v17 = (((((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v18 = ((v17 + v15) & ~v15) + *(v12 + 64);
  if (a3 <= v16)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v16 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v16 < a2)
  {
    v20 = ~v16 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_53:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v18] = 0;
  }

  else if (v19)
  {
    a1[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v11 >= v13)
  {
    if (v11 >= a2)
    {
      if (v10 < 0xFE)
      {
        *((((((&a1[v14] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
      }

      else
      {
        v27 = *(v9 + 56);

        v27(a1, a2);
      }
    }

    else
    {
      v26 = ~v11 + a2;
      bzero(a1, (((((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9);
      if (v17 <= 3)
      {
        *a1 = v26;
      }

      else
      {
        *a1 = v26;
      }
    }
  }

  else
  {
    v25 = *(v12 + 56);

    v25(&a1[v17 + v15] & ~v15, a2, v13);
  }
}

void sub_213EA5A98(uint64_t a1)
{
  type metadata accessor for GridLayoutConfig();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_213EA7F00(319, &qword_281182798, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
      if (v5 <= 0x3F)
      {
        sub_213EA6138();
        if (v6 <= 0x3F)
        {
          sub_213E61EBC(319, &qword_2811827B0);
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_213EA5BA8(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v8 <= v10)
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = (((((((((((*(*(v6 - 8) + 64) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 9;
  v14 = *(v9 + 64) + 7;
  if (v12 < a2)
  {
    v15 = ((((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    }

    else
    {
      if (!v19)
      {
        goto LABEL_29;
      }

      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

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

    v28 = v12 + (v23 | v22);
    return (v28 + 1);
  }

LABEL_29:
  if (v8 == v12)
  {
    v24 = *(v7 + 48);

    return v24(a1);
  }

  v25 = (a1 + v13) & ~v11;
  if (v10 != v12)
  {
    v27 = *(((v14 + v25) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    v28 = v27 - 1;
    if (v28 < 0)
    {
      v28 = -1;
    }

    return (v28 + 1);
  }

  v26 = *(v9 + 48);

  return v26(v25, v10);
}

void sub_213EA5E24(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_213F4CB40() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 64);
  v15 = *(v12 + 80);
  v16 = *(v12 + 64);
  if (v13 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  v18 = (((((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v19 = v16 + 7;
  v20 = ((((((v16 + 7 + ((v18 + v15) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v17 >= a3)
  {
    v23 = 0;
    v24 = a2 - v17;
    if (a2 <= v17)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (((((((v16 + 7 + ((v18 + v15) & ~v15)) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v21 = a3 - v17 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = a2 - v17;
    if (a2 <= v17)
    {
LABEL_22:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *&a1[v20] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *&a1[v20] = 0;
      }

      else if (v23)
      {
        a1[v20] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v10 == v17)
      {
        if (v11 >= a2)
        {
          v30 = *(v9 + 56);

          v30(a1, a2);
        }

        else
        {
          v27 = ~v11 + a2;
          bzero(a1, v18);
          if (v18 <= 3)
          {
            *a1 = v27;
          }

          else
          {
            *a1 = v27;
          }
        }
      }

      else
      {
        v28 = &a1[v18 + v15] & ~v15;
        if (v13 == v17)
        {
          v29 = *(v12 + 56);

          v29(v28, a2, v13);
        }

        else
        {
          v31 = ((v19 + v28) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            v31[1] = 0;
            v31[2] = 0;
            *v31 = (a2 - 0x7FFFFFFF);
          }

          else
          {
            v31[2] = a2;
          }
        }
      }

      return;
    }
  }

  if (v20)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  if (v20)
  {
    v26 = ~v17 + a2;
    bzero(a1, v20);
    *a1 = v26;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      *&a1[v20] = v25;
    }

    else
    {
      *&a1[v20] = v25;
    }
  }

  else if (v23)
  {
    a1[v20] = v25;
  }
}

void sub_213EA6138()
{
  if (!qword_2811827A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA8D8, qword_213F5D840);
    v0 = sub_213F4EAD0();
    if (!v1)
    {
      atomic_store(v0, &qword_2811827A0);
    }
  }
}

void sub_213EA619C(uint64_t a1)
{
  type metadata accessor for GridLayoutConfig();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_213EA7F00(319, &qword_281182798, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
      if (v5 <= 0x3F)
      {
        sub_213EA6138();
        if (v6 <= 0x3F)
        {
          sub_213E61EBC(319, &qword_2811827B0);
          if (v7 <= 0x3F)
          {
            sub_213EA7F00(319, &qword_2811824A8, MEMORY[0x277CDF110], MEMORY[0x277D83940]);
            if (v8 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_213EA62FC(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v8 <= v10)
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = (((((((((((*(*(v6 - 8) + 64) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 9;
  v14 = *(v9 + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((((((((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
      v27 = *((((((((((v14 + v25) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_213EA65A8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_213F4CB40() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 64);
  v15 = *(v12 + 80);
  v16 = *(v12 + 64);
  if (v13 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  v18 = (((((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v19 = v16 + 7;
  v20 = ((((((((((((v16 + 7 + ((v18 + v15) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 >= a3)
  {
    v23 = 0;
    v24 = a2 - v17;
    if (a2 <= v17)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (((((((((((((v16 + 7 + ((v18 + v15) & ~v15)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a3 - v17 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = a2 - v17;
    if (a2 <= v17)
    {
LABEL_22:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *&a1[v20] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *&a1[v20] = 0;
      }

      else if (v23)
      {
        a1[v20] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v10 == v17)
      {
        if (v11 >= a2)
        {
          v30 = *(v9 + 56);

          v30(a1, a2);
        }

        else
        {
          v27 = ~v11 + a2;
          bzero(a1, v18);
          if (v18 <= 3)
          {
            *a1 = v27;
          }

          else
          {
            *a1 = v27;
          }
        }
      }

      else
      {
        v28 = &a1[v18 + v15] & ~v15;
        if (v13 == v17)
        {
          v29 = *(v12 + 56);

          v29(v28, a2, v13);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v31 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v31 = (a2 - 1);
          }

          *((((((((((v19 + v28) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) = v31;
        }
      }

      return;
    }
  }

  if (v20)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  if (v20)
  {
    v26 = ~v17 + a2;
    bzero(a1, v20);
    *a1 = v26;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      *&a1[v20] = v25;
    }

    else
    {
      *&a1[v20] = v25;
    }
  }

  else if (v23)
  {
    a1[v20] = v25;
  }
}

void sub_213EA68E0(uint64_t a1)
{
  sub_213EA7F00(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
  if (v2 <= 0x3F)
  {
    type metadata accessor for GridLayoutConfig();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        sub_213EA7F00(319, &qword_2811824A8, MEMORY[0x277CDF110], MEMORY[0x277D83940]);
        if (v6 <= 0x3F)
        {
          sub_213EA7F00(319, &qword_281182798, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
          if (v7 <= 0x3F)
          {
            sub_213E61EBC(319, &qword_27C8F7660);
            if (v8 <= 0x3F)
            {
              sub_213EA6138();
              if (v9 <= 0x3F)
              {
                sub_213E61EBC(319, &qword_2811827B0);
                if (v10 <= 0x3F)
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
}

uint64_t sub_213EA6AA8(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_213F4D290() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = sub_213F4CB40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v10 <= v12)
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v9 + 80) & 0xF8 | 7;
  v17 = v7 + v16 + 1;
  v18 = (((((((((((*(*(v8 - 8) + 64) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v19 = *(v11 + 64) + 7;
  if (v15 >= a2)
  {
    goto LABEL_33;
  }

  v20 = ((((((((((v19 + ((v18 + v13 + (v17 & ~v16)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  v21 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v22 = 2;
  }

  else
  {
    v22 = a2 - v15 + 1;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_33;
      }
    }

LABEL_30:
    v27 = v25 - 1;
    if (v21)
    {
      v27 = 0;
      v28 = *a1;
    }

    else
    {
      v28 = 0;
    }

    return v15 + (v28 | v27) + 1;
  }

  if (v24)
  {
    v25 = *(a1 + v20);
    if (v25)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  v29 = (a1 + v17) & ~v16;
  if (v10 == v15)
  {
    v30 = *(v9 + 48);

    return v30(v29);
  }

  else
  {
    v31 = (v29 + v13 + v18) & ~v13;
    if (v12 == v15)
    {
      v32 = *(v11 + 48);

      return v32(v31, v12);
    }

    else
    {
      v33 = *((v19 + v31) & 0xFFFFFFFFFFFFFFF8);
      if (v33 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      return (v33 + 1);
    }
  }
}

void sub_213EA6D80(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_213F4D290() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_213F4CB40() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v10 + 80);
  v17 = *(v10 + 64);
  v18 = *(v14 + 80);
  v19 = *(v14 + 64);
  if (v15 <= v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = *(v14 + 84);
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  v21 = v16 & 0xF8 | 7;
  v22 = v9 + v21 + 1;
  v23 = (((((((((((v17 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v24 = ((((((((((v19 + 7 + ((v23 + v18 + (v22 & ~v21)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v20 >= a3)
  {
    v27 = 0;
    v28 = a2 - v20;
    if (a2 <= v20)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (((((((((((v19 + 7 + ((v23 + v18 + (v22 & ~v21)) & ~v18)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v25 = a3 - v20 + 1;
    }

    else
    {
      v25 = 2;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = a2 - v20;
    if (a2 <= v20)
    {
LABEL_25:
      if (v27 > 1)
      {
        if (v27 != 2)
        {
          *(a1 + v24) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_41;
        }

        *(a1 + v24) = 0;
      }

      else if (v27)
      {
        *(a1 + v24) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return;
      }

LABEL_41:
      v31 = ((a1 + v22) & ~v21);
      if (v12 == v20)
      {
        if (v13 >= a2)
        {
          v35 = *(v11 + 56);

          v35(v31, a2);
        }

        else
        {
          v32 = ~v13 + a2;
          bzero(v31, v23);
          if (v23 <= 3)
          {
            *v31 = v32;
          }

          else
          {
            *v31 = v32;
          }
        }
      }

      else
      {
        v33 = &v31[v18 + v23] & ~v18;
        if (v15 == v20)
        {
          v34 = *(v14 + 56);

          v34(v33, a2, v15);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v36 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v36 = (a2 - 1);
          }

          *((v19 + 7 + v33) & 0xFFFFFFFFFFFFFFF8) = v36;
        }
      }

      return;
    }
  }

  if (((((((((((v19 + 7 + ((v23 + v18 + (v22 & ~v21)) & ~v18)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v29 = v28;
  }

  else
  {
    v29 = 1;
  }

  if (v24)
  {
    v30 = ~v20 + a2;
    bzero(a1, v24);
    *a1 = v30;
  }

  if (v27 > 1)
  {
    if (v27 == 2)
    {
      *(a1 + v24) = v29;
    }

    else
    {
      *(a1 + v24) = v29;
    }
  }

  else if (v27)
  {
    *(a1 + v24) = v29;
  }
}

void sub_213EA70E4(uint64_t a1)
{
  type metadata accessor for GridLayoutConfig();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_213EA7F00(319, &qword_2811824A8, MEMORY[0x277CDF110], MEMORY[0x277D83940]);
      if (v5 <= 0x3F)
      {
        sub_213EA7F00(319, &qword_281182798, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
        if (v6 <= 0x3F)
        {
          sub_213EA6138();
          if (v7 <= 0x3F)
          {
            sub_213E61EBC(319, &qword_2811827B0);
            if (v8 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_213EA723C(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v8 <= v10)
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = (((((((((((*(*(v6 - 8) + 64) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 9;
  v14 = *(v9 + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((((((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
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

void sub_213EA74C0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_213F4CB40() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 64);
  v15 = *(v12 + 80);
  v16 = *(v12 + 64);
  if (v13 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  v18 = (((((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v19 = v16 + 7;
  v20 = ((((((((((v16 + 7 + ((v18 + v15) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v17 >= a3)
  {
    v23 = 0;
    v24 = a2 - v17;
    if (a2 <= v17)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (((((((((((v16 + 7 + ((v18 + v15) & ~v15)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v21 = a3 - v17 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = a2 - v17;
    if (a2 <= v17)
    {
LABEL_22:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *&a1[v20] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *&a1[v20] = 0;
      }

      else if (v23)
      {
        a1[v20] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v10 == v17)
      {
        if (v11 >= a2)
        {
          v30 = *(v9 + 56);

          v30(a1, a2);
        }

        else
        {
          v27 = ~v11 + a2;
          bzero(a1, v18);
          if (v18 <= 3)
          {
            *a1 = v27;
          }

          else
          {
            *a1 = v27;
          }
        }
      }

      else
      {
        v28 = &a1[v18 + v15] & ~v15;
        if (v13 == v17)
        {
          v29 = *(v12 + 56);

          v29(v28, a2, v13);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v31 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v31 = (a2 - 1);
          }

          *((v19 + v28) & 0xFFFFFFFFFFFFFFF8) = v31;
        }
      }

      return;
    }
  }

  if (v20)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  if (v20)
  {
    v26 = ~v17 + a2;
    bzero(a1, v20);
    *a1 = v26;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      *&a1[v20] = v25;
    }

    else
    {
      *&a1[v20] = v25;
    }
  }

  else if (v23)
  {
    a1[v20] = v25;
  }
}

void sub_213EA77D0(uint64_t a1)
{
  sub_213EA7F00(319, &qword_281183528, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v2 <= 0x3F)
  {
    type metadata accessor for GridLayoutConfig();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        sub_213EA7F00(319, &qword_281182798, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_213EA78E8(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_213F4CEA0() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = sub_213F4CB40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v10 <= v12)
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = v14;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v9 + 80) & 0xF8 | 7;
  v17 = v7 + v16 + 1;
  v18 = (((((((((((*(*(v8 - 8) + 64) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v19 = *(v11 + 64) + 7;
  if (v15 < a2)
  {
    v20 = ((v19 + ((v18 + v13 + (v17 & ~v16)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 24;
    v21 = v20 & 0xFFFFFFF8;
    if ((v20 & 0xFFFFFFF8) != 0)
    {
      v22 = 2;
    }

    else
    {
      v22 = a2 - v15 + 1;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v25 = *(a1 + v20);
        if (!v25)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v25 = *(a1 + v20);
        if (!v25)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (!v24)
      {
        goto LABEL_33;
      }

      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_33;
      }
    }

    v27 = v25 - 1;
    if (v21)
    {
      v27 = 0;
      v28 = *a1;
    }

    else
    {
      v28 = 0;
    }

    v34 = v15 + (v28 | v27);
    return (v34 + 1);
  }

LABEL_33:
  v29 = (a1 + v17) & ~v16;
  if (v10 == v15)
  {
    v30 = *(v9 + 48);

    return v30(v29);
  }

  v31 = (v29 + v13 + v18) & ~v13;
  if (v12 != v15)
  {
    v33 = *(((v19 + v31) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v33 >= 0xFFFFFFFF)
    {
      LODWORD(v33) = -1;
    }

    v34 = v33 - 1;
    if (v34 < 0)
    {
      v34 = -1;
    }

    return (v34 + 1);
  }

  v32 = *(v11 + 48);

  return v32(v31, v12);
}

void sub_213EA7BA8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_213F4CEA0() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_213F4CB40() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  v13 = *(*(a4 + 16) - 8);
  if (v12 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = *(*(a4 + 16) - 8);
  v16 = *(v13 + 84);
  v17 = *(v10 + 80);
  v18 = *(v10 + 64);
  v19 = *(v13 + 80);
  v20 = *(v13 + 64);
  if (v16 <= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = *(v13 + 84);
  }

  if (v21 <= 0x7FFFFFFE)
  {
    v21 = 2147483646;
  }

  v22 = v17 & 0xF8 | 7;
  v23 = v9 + v22 + 1;
  v24 = (((((((((((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v25 = ((v20 + 7 + ((v24 + v19 + (v23 & ~v22)) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v21 >= a3)
  {
    v28 = 0;
    v29 = a2 - v21;
    if (a2 <= v21)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (((v20 + 7 + ((v24 + v19 + (v23 & ~v22)) & ~v19)) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v26 = a3 - v21 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = a2 - v21;
    if (a2 <= v21)
    {
LABEL_25:
      if (v28 > 1)
      {
        if (v28 != 2)
        {
          *(a1 + v25) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_41;
        }

        *(a1 + v25) = 0;
      }

      else if (v28)
      {
        *(a1 + v25) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return;
      }

LABEL_41:
      v32 = ((a1 + v23) & ~v22);
      if (v12 == v21)
      {
        if (v14 >= a2)
        {
          v36 = *(v11 + 56);

          v36(v32, a2);
        }

        else
        {
          v33 = ~v14 + a2;
          bzero(v32, v24);
          if (v24 <= 3)
          {
            *v32 = v33;
          }

          else
          {
            *v32 = v33;
          }
        }
      }

      else
      {
        v34 = &v32[v19 + v24] & ~v19;
        if (v16 == v21)
        {
          v35 = *(v15 + 56);

          v35(v34, a2, v16);
        }

        else
        {
          v37 = ((v20 + 7 + v34) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            v37[1] = 0;
            v37[2] = 0;
            *v37 = (a2 - 0x7FFFFFFF);
          }

          else
          {
            v37[2] = a2;
          }
        }
      }

      return;
    }
  }

  if (((v20 + 7 + ((v24 + v19 + (v23 & ~v22)) & ~v19)) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v30 = v29;
  }

  else
  {
    v30 = 1;
  }

  if (v25)
  {
    v31 = ~v21 + a2;
    bzero(a1, v25);
    *a1 = v31;
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      *(a1 + v25) = v30;
    }

    else
    {
      *(a1 + v25) = v30;
    }
  }

  else if (v28)
  {
    *(a1 + v25) = v30;
  }
}

void sub_213EA7F00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_213EA7F88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_213EA7FD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_213EA81A4()
{
  result = qword_27C8FABA0;
  if (!qword_27C8FABA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAB98, &qword_213F5DE18);
    sub_213DE3AE4(&qword_2811825C0, &qword_27C8FA8F0, &unk_213F5D8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FABA0);
  }

  return result;
}

unint64_t sub_213EA82F8()
{
  result = qword_27C8FABC0;
  if (!qword_27C8FABC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FABB8, &qword_213F5DE28);
    sub_213DE3AE4(&qword_27C8FABC8, &qword_27C8FABD0, &unk_213F5DE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FABC0);
  }

  return result;
}

uint64_t sub_213EA83F4(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for DefaultLayout();
  v6 = *a1;
  v7 = a1[1];
  v8 = v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));
  return sub_213E93BBC(v5);
}

uint64_t sub_213EA848C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_213F4D7F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23 - v17);
  sub_213DE3164(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_213F4F520();
    v22 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_213EA868C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_213DE3164(v2, &v16 - v11, &qword_27C8F8C80, &qword_213F57940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_213DE2B44(v12, a1, &qword_27C8F8D50, &unk_213F5E0A0);
  }

  v14 = *v12;
  sub_213F4F520();
  v15 = sub_213F4E000();
  sub_213F4CC10();

  sub_213F4D7E0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_213EA88F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_213EA8970()
{
  result = qword_27C8FABF0;
  if (!qword_27C8FABF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FABF8, &qword_213F5DE60);
    sub_213DE3AE4(&qword_27C8FAC00, &qword_27C8FAC08, &qword_213F5DE68);
    sub_213DE3AE4(&qword_27C8FAC10, &qword_27C8FAC18, &qword_213F5DE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FABF0);
  }

  return result;
}

uint64_t objectdestroy_67Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for DefaultLayout() - 8);
  v4 = *(*v3 + 64);
  v5 = v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80));
  v6 = sub_213F4CB40();
  (*(*(v6 - 8) + 8))(v5, v6);
  (*(*(v2 - 8) + 8))(v5 + v3[11], v2);
  v7 = *(v5 + v3[12] + 16);

  v8 = *(v5 + v3[13] + 16);

  v9 = *(v5 + v3[14] + 8);

  return swift_deallocObject();
}

uint64_t sub_213EA8BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(type metadata accessor for DefaultLayout() - 8);
  v10 = v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_213EA34A4(a1, a2, v10, a3);
}

uint64_t sub_213EA8C44(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAC30, &qword_213F5DEA0);
  return v4(v5, &a1[*(v6 + 48)]);
}

unint64_t sub_213EA8CAC()
{
  result = qword_27C8FAC28;
  if (!qword_27C8FAC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAC20, &qword_213F5DE78);
    sub_213EAC454(&qword_281182C48, MEMORY[0x277CE0150]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAC28);
  }

  return result;
}

uint64_t sub_213EA8D60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_213EA8DD0()
{
  result = qword_27C8FAC70;
  if (!qword_27C8FAC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAC68, &qword_213F5DED0);
    sub_213DE3AE4(&qword_27C8FAC78, &qword_27C8FAC80, &qword_213F5DED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAC70);
  }

  return result;
}

unint64_t sub_213EA8FB0()
{
  result = qword_27C8FAC90;
  if (!qword_27C8FAC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAC88, &qword_213F5DEE0);
    sub_213DE3AE4(&qword_27C8FAC98, &qword_27C8FACA0, &qword_213F5DEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAC90);
  }

  return result;
}

uint64_t sub_213EA9060()
{
  v1 = *(sub_213F4D960() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_213F4D980();
}

char *sub_213EA90C8(char *a1, int64_t a2, char a3)
{
  result = sub_213EA91E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_213EA90E8(char *a1, int64_t a2, char a3)
{
  result = sub_213EA930C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_213EA9108(char *a1, int64_t a2, char a3)
{
  result = sub_213EA9418(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_213EA9128(char *a1, int64_t a2, char a3)
{
  result = sub_213EA951C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_213EA9148(void *a1, int64_t a2, char a3)
{
  result = sub_213EA9620(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_213EA9168(void *a1, int64_t a2, char a3)
{
  result = sub_213EA9754(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_213EA9188(void *a1, int64_t a2, char a3)
{
  result = sub_213EA98A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_213EA91A8(size_t a1, int64_t a2, char a3)
{
  result = sub_213EA99D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_213EA91C8(char *a1, int64_t a2, char a3)
{
  result = sub_213EA9BB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_213EA91E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9B60, &qword_213F59FE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_213EA930C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF80, &unk_213F5E2C0);
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

char *sub_213EA9418(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF88, &unk_213F5E2D0);
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

char *sub_213EA951C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAE80, &qword_213F5E0B0);
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

void *sub_213EA9620(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAD30, &qword_213F5DF88);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAD38, &qword_213F5DF90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_213EA9754(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF68, &qword_213F5E2A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF70, &qword_213F5E2B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_213EA98A4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF60, &unk_213F5E298);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA890, &qword_213F5D620);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_213EA99D8(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA4C0, &qword_213F5C5B0);
  v10 = *(type metadata accessor for RichTextViewModel(0) - 8);
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
  v15 = *(type metadata accessor for RichTextViewModel(0) - 8);
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

char *sub_213EA9BB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BA8, &unk_213F563D8);
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

uint64_t sub_213EA9CC0(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x277D84F90] + 32;
    v6 = result + 32;
    v7 = MEMORY[0x277D84F90];
    v39 = *(result + 16);
    while (1)
    {
      v8 = *(v6 + 144);
      v9 = *(v6 + 112);
      v48 = *(v6 + 128);
      v49 = v8;
      v10 = *(v6 + 144);
      v50 = *(v6 + 160);
      v11 = *(v6 + 80);
      v12 = *(v6 + 48);
      v44 = *(v6 + 64);
      v45 = v11;
      v13 = *(v6 + 80);
      v14 = *(v6 + 112);
      v46 = *(v6 + 96);
      v47 = v14;
      v15 = *(v6 + 16);
      v41[0] = *v6;
      v41[1] = v15;
      v16 = *(v6 + 48);
      v18 = *v6;
      v17 = *(v6 + 16);
      v42 = *(v6 + 32);
      v43 = v16;
      v60 = v48;
      v61 = v10;
      v62 = *(v6 + 160);
      v56 = v44;
      v57 = v13;
      v58 = v46;
      v59 = v9;
      v52 = v18;
      v53 = v17;
      v51 = *(v6 + 176);
      v63 = *(v6 + 176);
      v54 = v42;
      v55 = v12;
      if (v4)
      {
        result = sub_213DF73EC(v41, v40);
        v2 = v7;
        v19 = __OFSUB__(v4--, 1);
        if (v19)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v20 = v7[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF00, &qword_213F5E180);
        v2 = swift_allocObject();
        v23 = (_swift_stdlib_malloc_size(v2) - 32) / 192;
        v2[2] = v22;
        v2[3] = 2 * v23;
        v24 = v7[3] >> 1;
        v25 = 24 * v24;
        v26 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - v24;
        v5 = &v2[24 * v24 + 4];
        if (v7[2])
        {
          if (v2 >= v7 && v2 + 4 < &v7[v25 + 4] && v2 == v7)
          {
            sub_213DF73EC(v41, v40);
          }

          else
          {
            sub_213DF73EC(v41, v40);
            memmove(v2 + 4, v7 + 4, v25 * 8);
          }

          v7[2] = 0;

          v1 = v39;
          v19 = __OFSUB__(v26, 1);
          v4 = v26 - 1;
          if (v19)
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            return result;
          }
        }

        else
        {
          sub_213DF73EC(v41, v40);

          v19 = __OFSUB__(v26, 1);
          v4 = v26 - 1;
          if (v19)
          {
            goto LABEL_28;
          }
        }
      }

      *v5 = v3;
      v27 = v60;
      v28 = v61;
      v29 = v62;
      *(v5 + 184) = v63;
      v30 = v52;
      v31 = v53;
      v32 = v54;
      *(v5 + 56) = v55;
      *(v5 + 40) = v32;
      *(v5 + 24) = v31;
      *(v5 + 8) = v30;
      v33 = v56;
      v34 = v57;
      v35 = v58;
      *(v5 + 120) = v59;
      *(v5 + 104) = v35;
      *(v5 + 88) = v34;
      *(v5 + 72) = v33;
      *(v5 + 168) = v29;
      *(v5 + 152) = v28;
      *(v5 + 136) = v27;
      v5 += 192;
      v6 += 184;
      ++v3;
      v7 = v2;
      if (v1 == v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v36 = v2[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v19 = __OFSUB__(v37, v4);
    v38 = v37 - v4;
    if (v19)
    {
      goto LABEL_30;
    }

    v2[2] = v38;
  }

  return v2;
}

uint64_t sub_213EA9F74(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = result + 32;
    while (1)
    {
      v7 = *(v6 + 8 * v3);
      if (v4)
      {
        v8 = *(v6 + 8 * v3);

        v9 = __OFSUB__(v4--, 1);
        if (v9)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v10 = *(v2 + 3);
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAD20, &qword_213F5DF80);
        v13 = swift_allocObject();
        v14 = _swift_stdlib_malloc_size(v13);
        v15 = v14 - 32;
        if (v14 < 32)
        {
          v15 = v14 - 17;
        }

        v16 = v15 >> 4;
        *(v13 + 2) = v12;
        *(v13 + 3) = 2 * (v15 >> 4);
        v17 = v13 + 32;
        v18 = *(v2 + 3) >> 1;
        v5 = &v13[16 * v18 + 32];
        v19 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;
        if (*(v2 + 2))
        {
          v20 = v2 + 32;
          if (v13 != v2 || v17 >= &v20[16 * v18])
          {
            memmove(v17, v20, 16 * v18);
          }

          *(v2 + 2) = 0;
        }

        else
        {
        }

        v2 = v13;
        v9 = __OFSUB__(v19, 1);
        v4 = v19 - 1;
        if (v9)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 1) = v7;
      v5 += 16;
      if (v1 == ++v3)
      {
        goto LABEL_23;
      }
    }
  }

  v4 = 0;
LABEL_23:
  v21 = *(v2 + 3);
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v9 = __OFSUB__(v22, v4);
    v23 = v22 - v4;
    if (v9)
    {
      goto LABEL_29;
    }

    *(v2 + 2) = v23;
  }

  return v2;
}

uint64_t sub_213EAA104(uint64_t a1)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF10, &qword_213F5E220);
  v2 = *(*(v43 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v43);
  v42 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v3);
  v8 = &v38 - v7;
  v9 = MEMORY[0x277D84F90];
  v41 = *(a1 + 16);
  if (v41)
  {
    v44 = v6;
    v10 = *(v6 + 80);
    v38 = v10;
    v39 = (v10 + 32) & ~v10;
    v11 = MEMORY[0x277D84F90] + v39;
    v12 = 0;
    v13 = 0;
    v14 = *(type metadata accessor for ContextLineAccessoryViewModel(0) - 8);
    v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v40 = *(v14 + 72);
    v16 = v9;
    while (1)
    {
      v17 = v42;
      v18 = *(v43 + 48);
      *v42 = v12;
      sub_213EAC2D4(v15, v17 + v18, type metadata accessor for ContextLineAccessoryViewModel);
      v19 = v8;
      result = sub_213DE2B44(v17, v8, &qword_27C8FAF10, &qword_213F5E220);
      if (v13)
      {
        v45 = v16;
      }

      else
      {
        v20 = v16[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF18, &qword_213F5E228);
        v23 = *(v44 + 72);
        v24 = v39;
        v45 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v45);
        if (!v23)
        {
          goto LABEL_35;
        }

        v25 = result - v24;
        if (result - v24 == 0x8000000000000000 && v23 == -1)
        {
          goto LABEL_36;
        }

        v27 = v25 / v23;
        v28 = v45;
        *(v45 + 2) = v22;
        v28[3] = 2 * (v25 / v23);
        v29 = v28 + v24;
        v30 = v16[3] >> 1;
        v31 = v30 * v23;
        if (v16[2])
        {
          if (v28 < v16 || v29 >= v16 + v39 + v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v28 != v16)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v16[2] = 0;
        }

        v11 = &v29[v31];
        v13 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v30;
      }

      v33 = v44;
      v8 = v19;
      v34 = __OFSUB__(v13--, 1);
      if (v34)
      {
        break;
      }

      ++v12;
      result = sub_213DE2B44(v19, v11, &qword_27C8FAF10, &qword_213F5E220);
      v11 += *(v33 + 72);
      v15 += v40;
      v9 = v45;
      v16 = v45;
      if (v41 == v12)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = 0;
LABEL_29:
  v35 = v9[3];
  if (v35 < 2)
  {
    return v9;
  }

  v36 = v35 >> 1;
  v34 = __OFSUB__(v36, v13);
  v37 = v36 - v13;
  if (!v34)
  {
    v9[2] = v37;
    return v9;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_213EAA460(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x277D84F90] + 32;
    v6 = (result + 57);
    v28 = *(result + 16);
    while (1)
    {
      v7 = *(v6 - 25);
      v8 = *(v6 - 9);
      v9 = *v6;
      v10 = *(v6 - 1);
      v29 = v7;
      if (v4)
      {
        v11 = v7;

        v12 = __OFSUB__(v4--, 1);
        if (v12)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v13 = v2[3];
        if (((v13 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAEF0, &unk_213F5E110);
        v16 = swift_allocObject();
        v17 = (_swift_stdlib_malloc_size(v16) - 32) / 40;
        v16[2] = v15;
        v16[3] = 2 * v17;
        v18 = v16 + 4;
        v19 = v2[3] >> 1;
        v20 = 5 * v19;
        v21 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;
        v5 = &v16[5 * v19 + 4];
        if (v2[2])
        {
          v22 = v16 < v2 || v18 >= &v2[v20 + 4];
          if (v22 || v16 != v2)
          {
            memmove(v18, v2 + 4, v20 * 8);
          }

          v23 = v29;

          v2[2] = 0;
        }

        else
        {
          v24 = v29;
        }

        v2 = v16;
        v1 = v28;
        v12 = __OFSUB__(v21, 1);
        v4 = v21 - 1;
        if (v12)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 8) = v29;
      *(v5 + 24) = v8;
      *(v5 + 32) = v10;
      *(v5 + 33) = v9;
      v5 += 40;
      v6 += 32;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v25 = v2[3];
  if (v25 >= 2)
  {
    v26 = v25 >> 1;
    v12 = __OFSUB__(v26, v4);
    v27 = v26 - v4;
    if (v12)
    {
      goto LABEL_30;
    }

    v2[2] = v27;
  }

  return v2;
}

uint64_t sub_213EAA65C()
{
  v19 = sub_213F4DE60();
  v4 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v18 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4D960();
  sub_213EAC454(&qword_281182C40, MEMORY[0x277CE0150]);
  sub_213F4F490();
  sub_213F4F4C0();
  v6 = 0;
  v20 = sub_213F4F4B0();
  if (v20 >= 2)
  {
    v7 = 0;
    v8 = 1;
    while (1)
    {
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v9 = __OFADD__(v8, 2);
      v8 += 2;
      if (v9)
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      ++v7;
      if (v8 >= v20)
      {
        goto LABEL_7;
      }
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_7:
  v21 = MEMORY[0x277D84F90];
  result = sub_213EA9148(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
LABEL_38:
    __break(1u);
    return result;
  }

  v11 = v21;
  if (!v6)
  {
    if (v20 < 2)
    {
      return v11;
    }

    v6 = 1;
LABEL_28:
    while (1)
    {
      v1 = v6 + 2;
      if (__OFADD__(v6, 2))
      {
        break;
      }

      sub_213F4F490();
      sub_213F4F4C0();
      result = sub_213F4F4B0();
      if (result >= v1)
      {
        v17 = v6 + 2;
      }

      else
      {
        v17 = result;
      }

      if (v17 < v6)
      {
        goto LABEL_37;
      }

      sub_213F4D970();
      sub_213EAC454(&qword_27C8FAD28, MEMORY[0x277CE0668]);
      result = sub_213F4F3C0();
      v3 = result;
      v21 = v11;
      v2 = *(v11 + 16);
      v7 = *(v11 + 24);
      v0 = v2 + 1;
      if (v2 >= v7 >> 1)
      {
LABEL_27:
        result = sub_213EA9148((v7 > 1), v0, 1);
        v11 = v21;
      }

      *(v11 + 16) = v0;
      *(v11 + 8 * v2 + 32) = v3;
      v6 += 2;
      if (v1 >= v20)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v2 = 0x3FFFFFFFFFFFFFFFLL;
  v1 = 3;
  do
  {
    v3 = v1 - 2;
    v7 = v20;
    if (v1 - 2 >= v20)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (!v2)
    {
      goto LABEL_24;
    }

    sub_213F4F490();
    sub_213F4F4C0();
    v12 = sub_213F4F4B0();
    if (v12 >= v1)
    {
      v13 = v1;
    }

    else
    {
      v13 = v12;
    }

    if (v13 < v3)
    {
      goto LABEL_25;
    }

    sub_213F4D970();
    sub_213EAC454(&qword_27C8FAD28, MEMORY[0x277CE0668]);
    result = sub_213F4F3C0();
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    v0 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v16 = result;
      sub_213EA9148((v14 > 1), v15 + 1, 1);
      result = v16;
      v11 = v21;
    }

    *(v11 + 16) = v0;
    *(v11 + 8 * v15 + 32) = result;
    --v2;
    v1 += 2;
    --v6;
  }

  while (v6);
  v6 = v1 - 2;
  if (v1 - 2 < v20)
  {
    goto LABEL_28;
  }

  return v11;
}

uint64_t objectdestroy_88Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for ComposeLayout() - 8);
  v4 = *(*v3 + 64);
  v5 = v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80));
  v6 = sub_213F4CB40();
  (*(*(v6 - 8) + 8))(v5, v6);
  (*(*(v2 - 8) + 8))(v5 + v3[11], v2);
  v7 = *(v5 + v3[13] + 16);

  v8 = *(v5 + v3[14] + 16);

  v9 = *(v5 + v3[15] + 8);

  v10 = *(v5 + v3[16]);

  v11 = *(v5 + v3[17]);

  return swift_deallocObject();
}

uint64_t sub_213EAAC08(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_213EAAC8C()
{
  result = qword_27C8FAD00;
  if (!qword_27C8FAD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAD08, &qword_213F5DF48);
    sub_213DE3AE4(&qword_27C8FAD10, &qword_27C8FAD18, &unk_213F5DF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAD00);
  }

  return result;
}

double sub_213EAAD44@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(type metadata accessor for ComposeLayout() - 8);
  v8 = v2[4];
  v9 = v2 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  *&result = sub_213EA1194(a1, v8, v9, a2).n128_u64[0];
  return result;
}

unint64_t sub_213EAADEC()
{
  result = qword_27C8FAD50;
  if (!qword_27C8FAD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAD48, &qword_213F5DFA0);
    sub_213DE3AE4(&qword_27C8FAD58, &qword_27C8FAD60, &unk_213F5DFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAD50);
  }

  return result;
}

unint64_t sub_213EAAF4C()
{
  result = qword_27C8FAD70;
  if (!qword_27C8FAD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAD68, &qword_213F5DFB8);
    sub_213DE3AE4(&qword_27C8FAD78, &qword_27C8FAD80, &qword_213F5DFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAD70);
  }

  return result;
}

uint64_t sub_213EAB028(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t objectdestroy_124Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for ShelfLayout();
  v4 = (*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = (v0 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_213F4D290();
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = v3[9];
  v10 = sub_213F4CB40();
  (*(*(v10 - 8) + 8))(&v6[v9], v10);
  (*(*(v2 - 8) + 8))(&v6[v3[10]], v2);
  v11 = *&v6[v3[11]];

  v12 = *&v6[v3[12] + 16];

  v13 = *&v6[v3[13] + 8];

  v14 = *&v6[v3[14] + 16];

  v15 = *&v6[v3[15] + 8];

  return swift_deallocObject();
}

uint64_t sub_213EAB264(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(*(type metadata accessor for ShelfLayout() - 8) + 80);

  return sub_213E9B900(a1);
}

uint64_t sub_213EAB2F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_213E9B25C(a1, v2[5], a2);
}

unint64_t sub_213EAB314()
{
  result = qword_27C8FAE08;
  if (!qword_27C8FAE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAE00, &qword_213F5E048);
    sub_213DE3AE4(&qword_27C8FAE10, &qword_27C8FAE18, &qword_213F5E050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAE08);
  }

  return result;
}

uint64_t sub_213EAB404(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(a2(0, v5, v6) - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a3(a1, v8, v5, v6);
}

void *sub_213EAB4E4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v10 = *(v1 + 32);
  v11 = v3;
  v12 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA8E0, qword_213F5D860);
  result = MEMORY[0x216052020](&v8, v5);
  if (v9)
  {
    v7 = 0;
  }

  else
  {
    v7 = v8;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_213EAB558(uint64_t *a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA8E0, qword_213F5D860);
  return sub_213F4EC30();
}

uint64_t sub_213EAB5F0(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(a2(0, v5, v6) - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a3(a1, v8, v5, v6);
}

unint64_t sub_213EAB6B4()
{
  result = qword_27C8FAE28;
  if (!qword_27C8FAE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAE20, &qword_213F5E058);
    sub_213DE3AE4(&qword_27C8FAE30, &qword_27C8FAE38, &qword_213F5E060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAE28);
  }

  return result;
}

uint64_t sub_213EAB790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(a3(0, v7, v8) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return a4(a1, a2, v10, v7, v8);
}

uint64_t sub_213EAB87C(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(a2(0, v5, v6) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, v3 + v8, v9, v5, v6);
}

unint64_t sub_213EAB960()
{
  result = qword_27C8FAE50;
  if (!qword_27C8FAE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAE48, &qword_213F5E070);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAE58, &qword_213F5E078);
    sub_213EABA54();
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAE50);
  }

  return result;
}

unint64_t sub_213EABA54()
{
  result = qword_27C8FAE60;
  if (!qword_27C8FAE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAE58, &qword_213F5E078);
    sub_213EABB0C();
    sub_213DE3AE4(&qword_281182958, &qword_27C8FAE70, &unk_213F5E080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAE60);
  }

  return result;
}

unint64_t sub_213EABB0C()
{
  result = qword_27C8FAE68;
  if (!qword_27C8FAE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FADF0, &qword_213F5E038);
    sub_213DE3AE4(&qword_281182910, &qword_27C8F96F8, &qword_213F587F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAE68);
  }

  return result;
}

uint64_t objectdestroy_153Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for StackLayout() - 8);
  v4 = *(*v3 + 64);
  v5 = v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80));
  v6 = sub_213F4CB40();
  (*(*(v6 - 8) + 8))(v5, v6);
  (*(*(v2 - 8) + 8))(v5 + v3[11], v2);
  v7 = *(v5 + v3[12]);

  v8 = *(v5 + v3[13] + 16);

  v9 = *(v5 + v3[14] + 16);

  v10 = *(v5 + v3[15] + 16);

  v11 = *(v5 + v3[16] + 8);

  return swift_deallocObject();
}

uint64_t sub_213EABD5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_213E98480(a1, v2[5], a2);
}

unint64_t sub_213EABDB0()
{
  result = qword_27C8FAED0;
  if (!qword_27C8FAED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAEC8, &qword_213F5E0F8);
    sub_213EABE68();
    sub_213DE3AE4(&qword_27C8F8760, &qword_27C8F8768, &unk_213F547A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAED0);
  }

  return result;
}

unint64_t sub_213EABE68()
{
  result = qword_27C8FAED8;
  if (!qword_27C8FAED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAEE0, &unk_213F5E100);
    sub_213EABF20();
    sub_213DE3AE4(&qword_281182970, &qword_27C8F8770, &unk_213F62EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAED8);
  }

  return result;
}

unint64_t sub_213EABF20()
{
  result = qword_27C8FAEE8;
  if (!qword_27C8FAEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAEE8);
  }

  return result;
}

uint64_t objectdestroy_183Tm()
{
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_213EAC0DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_213EAC124(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_213EAC174()
{
  result = qword_281182F68;
  if (!qword_281182F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAE98, &qword_213F5E0C8);
    sub_213EAC200();
    sub_213DD9738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F68);
  }

  return result;
}

unint64_t sub_213EAC200()
{
  result = qword_2811831C0;
  if (!qword_2811831C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAE90, &qword_213F5E0C0);
    sub_213DE3AE4(&qword_2811826C0, &qword_27C8FAF08, &qword_213F5E1C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811831C0);
  }

  return result;
}

uint64_t sub_213EAC2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213EAC33C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

double sub_213EAC364@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_213E95934(a1);
}

unint64_t sub_213EAC370()
{
  result = qword_27C8FAF30;
  if (!qword_27C8FAF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAF28, &qword_213F5E238);
    sub_213EAAC08(&qword_281182E28, &qword_27C8F9B20, &qword_213F5E240, sub_213E5B5C8);
    sub_213DE3AE4(&qword_27C8FAF38, &qword_27C8FAF40, &qword_213F5E248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAF30);
  }

  return result;
}

uint64_t sub_213EAC454(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_213EAC49C()
{
  result = qword_27C8FAF58;
  if (!qword_27C8FAF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAF50, &unk_213F5E250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAF20, &qword_213F5E230);
    sub_213F4D450();
    sub_213DE3AE4(&qword_27C8FAF48, &qword_27C8FAF20, &qword_213F5E230);
    sub_213EAC454(&qword_281182C78, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAF58);
  }

  return result;
}

void sub_213EAC644()
{
  sub_213EAC7A0(319, &qword_281183518, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213DE22E8();
    if (v1 <= 0x3F)
    {
      sub_213EAC7A0(319, &qword_281182798, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213EAC7A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_213EAC804(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  return swift_getOpaqueTypeConformance2();
}

double sub_213EAC850(uint64_t a1)
{
  v2 = (v1 + *(a1 + 116));
  v5 = *v2;
  v6 = *(v2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAA0();
  return v4;
}

uint64_t sub_213EAC8B0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 116));
  v4 = *v2;
  v5 = *(v2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  return sub_213F4EAB0();
}

uint64_t sub_213EAC914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = *(a1 + 32);
  v35 = *(a1 + 24);
  v33 = v3;
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  v38 = *(a1 + 16);
  sub_213F4D400();
  v32 = *(a1 + 40);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAF90, &qword_213F5E380);
  sub_213F4D400();
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  sub_213F4D400();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v31 = sub_213F4EBC0();
  sub_213F4DBB0();
  v4 = sub_213F4E9C0();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v8 = sub_213F4D400();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F90, &qword_213F57930);
  v12 = sub_213F4D400();
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  *&v19 = v38;
  *(&v19 + 1) = v35;
  *&v20 = v33;
  *(&v20 + 1) = v32;
  v41 = v19;
  v42 = v20;
  v21 = *(a1 + 64);
  v43 = *(a1 + 48);
  v44 = v21;
  v45 = v39;
  WitnessTable = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v51 = WitnessTable;
  v52 = v23;
  v24 = swift_getWitnessTable();
  sub_213F4E9B0();
  v50 = v24;
  v25 = swift_getWitnessTable();
  sub_213F4E440();
  (*(v34 + 8))(v7, v4);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v48 = v25;
  v49 = MEMORY[0x277CE03F0];
  v26 = swift_getWitnessTable();
  sub_213F4E4C0();
  (*(v36 + 8))(v11, v8);
  v27 = sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930);
  v46 = v26;
  v47 = v27;
  v28 = swift_getWitnessTable();
  sub_213DBFEEC(v16, v12, v28);
  v29 = *(v37 + 8);
  v29(v16, v12);
  sub_213DBFEEC(v18, v12, v28);
  return (v29)(v18, v12);
}

uint64_t sub_213EACF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v85 = a8;
  v72 = a7;
  v84 = a6;
  v82 = a2;
  v73 = a1;
  v81 = a9;
  v83 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAF90, &qword_213F5E380);
  sub_213F4D400();
  sub_213F4D400();
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  sub_213F4D400();
  swift_getTupleTypeMetadata2();
  v69 = sub_213F4EFE0();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_213F4EBC0();
  v71 = *(v13 - 8);
  v14 = *(v71 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v70 = v64 - v18;
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  swift_getTupleTypeMetadata3();
  v19 = sub_213F4EFE0();
  v20 = swift_getWitnessTable();
  v64[1] = v19;
  v64[0] = v20;
  v21 = sub_213F4EBC0();
  v67 = *(v21 - 8);
  v22 = *(v67 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v66 = v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v65 = v64 - v25;
  v26 = sub_213F4D390();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v21;
  v31 = sub_213F4DBB0();
  v75 = *(v31 - 8);
  v76 = v31;
  v32 = *(v75 + 64);
  MEMORY[0x28223BE20](v31);
  v74 = v64 - v33;
  v88 = v82;
  v89 = a3;
  v78 = a3;
  v79 = a4;
  v90 = a4;
  v91 = a5;
  v80 = a5;
  v34 = v72;
  v92 = v84;
  v93 = v72;
  v94 = v85;
  v95 = v83;
  v35 = type metadata accessor for ListCellLayout();
  v36 = v35;
  v37 = v73;
  if (*(v73 + *(v35 + 96)) == 1 && (sub_213EA886C(v30), v38 = sub_213F4D370(), v35 = (*(v27 + 8))(v30, v26), (v38 & 1) != 0))
  {
    v39 = *(v37 + *(v36 + 88));
    MEMORY[0x28223BE20](v35);
    v41 = v78;
    v40 = v79;
    v64[-10] = v82;
    v64[-9] = v41;
    v64[-8] = v40;
    v43 = v84;
    v42 = v85;
    v64[-7] = v80;
    v64[-6] = v43;
    v64[-5] = v34;
    v64[-4] = v42;
    v64[-3] = v83;
    v64[-2] = v37;
    sub_213F4DA40();
    v44 = v66;
    sub_213F4EBB0();
    v45 = v77;
    v46 = swift_getWitnessTable();
    v47 = v65;
    sub_213DBFEEC(v44, v45, v46);
    v48 = *(v67 + 8);
    v48(v44, v45);
    sub_213DBFEEC(v47, v45, v46);
    swift_getWitnessTable();
    v49 = v74;
    sub_213E95440(v44, v45);
    v48(v44, v45);
    v48(v47, v45);
  }

  else
  {
    v50 = *(v37 + *(v36 + 88));
    MEMORY[0x28223BE20](v35);
    v52 = v78;
    v51 = v79;
    v64[-10] = v82;
    v64[-9] = v52;
    v64[-8] = v51;
    v54 = v84;
    v53 = v85;
    v64[-7] = v80;
    v64[-6] = v54;
    v64[-5] = v34;
    v64[-4] = v53;
    v64[-3] = v83;
    v64[-2] = v37;
    sub_213F4DA40();
    sub_213F4EBB0();
    v55 = swift_getWitnessTable();
    v56 = v70;
    sub_213DBFEEC(v17, v13, v55);
    v57 = *(v71 + 8);
    v57(v17, v13);
    sub_213DBFEEC(v56, v13, v55);
    v58 = v77;
    swift_getWitnessTable();
    v49 = v74;
    sub_213DBFF2C(v17, v58, v13);
    v57(v17, v13);
    v57(v56, v13);
  }

  v59 = swift_getWitnessTable();
  v60 = swift_getWitnessTable();
  v86 = v59;
  v87 = v60;
  v61 = v76;
  v62 = swift_getWitnessTable();
  sub_213DBFEEC(v49, v61, v62);
  return (*(v75 + 8))(v49, v61);
}

uint64_t sub_213EAD79C@<X0>(char *a1@<X0>, char *a2@<X2>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void (*a7)(void, void)@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v70 = a7;
  v68 = a6;
  v71 = a1;
  v79 = a8;
  v78 = *(a4 - 8);
  v13 = *(v78 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v77 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v76 = v64 - v17;
  v75 = *(v18 - 8);
  v19 = *(v75 + 64);
  MEMORY[0x28223BE20](v16);
  v72 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v21;
  v74 = sub_213F4D400();
  v83 = *(v74 - 8);
  v23 = *(v83 + 64);
  v24 = MEMORY[0x28223BE20](v74);
  v85 = v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v73 = v64 - v26;
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  WitnessTable = swift_getWitnessTable();
  v80 = sub_213F4EB40();
  v82 = *(v80 - 8);
  v27 = *(v82 + 64);
  v28 = MEMORY[0x28223BE20](v80);
  v84 = v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v86 = v64 - v30;
  v64[1] = sub_213F4D8A0();
  v66 = v22;
  v100 = v22;
  v101 = a2;
  v102 = a3;
  v103 = a4;
  v67 = a4;
  v31 = a5;
  v32 = v68;
  v104 = a5;
  v105 = v68;
  v33 = v70;
  v106 = v70;
  v107 = a9;
  v81 = a9;
  v65 = type metadata accessor for ListCellLayout();
  v34 = v71;
  v35 = *&v71[*(v65 + 92)];
  v87 = v22;
  v88 = a2;
  v89 = a3;
  v90 = a4;
  v91 = v31;
  v92 = v32;
  v36 = v31;
  v93 = v33;
  v94 = a9;
  v95 = v71;
  v37 = v84;
  sub_213F4EB30();
  v38 = v80;
  v68 = swift_getWitnessTable();
  sub_213DBFEEC(v37, v38, v68);
  v39 = *(v82 + 8);
  WitnessTable = v82 + 8;
  v70 = v39;
  v40 = (v39)(v37, v38);
  v41 = v65;
  v42 = &v34[*(v65 + 100)];
  v43 = *(v42 + 1);
  v44 = v72;
  (*v42)(v40);
  sub_213F4EEF0();
  v45 = v66;
  v46 = v85;
  sub_213F4E750();
  (*(v75 + 8))(v44, v45);
  v99[3] = v36;
  v99[4] = MEMORY[0x277CDFC60];
  v47 = v74;
  v72 = swift_getWitnessTable();
  v48 = v73;
  sub_213DBFEEC(v46, v47, v72);
  v75 = *(v83 + 8);
  v49 = (v75)(v46, v47);
  v50 = &v34[*(v41 + 112)];
  v51 = *(v50 + 1);
  v52 = v77;
  (*v50)(v49);
  v53 = v76;
  v54 = v67;
  sub_213DBFEEC(v52, v67, v81);
  v55 = v78;
  v71 = *(v78 + 8);
  (v71)(v52, v54);
  v56 = v84;
  v57 = v80;
  (*(v82 + 16))(v84, v86, v80);
  v100 = v56;
  v58 = v85;
  (*(v83 + 16))(v85, v48, v47);
  v101 = v58;
  (*(v55 + 16))(v52, v53, v54);
  v102 = v52;
  v99[0] = v57;
  v99[1] = v47;
  v99[2] = v54;
  v96 = v68;
  v97 = v72;
  v98 = v81;
  sub_213E95270(&v100, 3uLL, v99);
  v59 = v53;
  v60 = v71;
  (v71)(v59, v54);
  v61 = v75;
  (v75)(v48, v47);
  v62 = v70;
  v70(v86, v57);
  v60(v52, v54);
  v61(v85, v47);
  return v62(v84, v57);
}

uint64_t sub_213EADF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v51 = a6;
  v52 = a5;
  v45 = a3;
  v50 = *(a3 - 8);
  v9 = *(v50 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v48 = &v44 - v14;
  v44 = *(v15 - 8);
  v16 = v44;
  v17 = *(v44 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  v59 = v23;
  v60 = v24;
  v61 = v25;
  v62 = v26;
  v63 = v27;
  v64 = v28;
  v47 = v28;
  v65 = v29;
  v66 = v30;
  v31 = type metadata accessor for ListCellLayout();
  v32 = a1 + *(v31 + 104);
  v33 = *(v32 + 8);
  (*v32)();
  sub_213DBFEEC(v20, a2, a4);
  v49 = *(v16 + 8);
  v34 = v49(v20, a2);
  v35 = a1 + *(v31 + 108);
  v36 = *(v35 + 8);
  (*v35)(v34);
  v37 = v48;
  v38 = v45;
  sub_213DBFEEC(v12, v45, v52);
  v39 = v50;
  v46 = *(v50 + 8);
  v46(v12, v38);
  (*(v44 + 16))(v20, v22, a2);
  v57 = 0;
  v58 = 1;
  v59 = v20;
  v60 = &v57;
  (*(v39 + 16))(v12, v37, v38);
  v61 = v12;
  v40 = a2;
  v56[0] = a2;
  v56[1] = MEMORY[0x277CE1180];
  v56[2] = v38;
  v53 = v47;
  v54 = MEMORY[0x277CE1170];
  v55 = v52;
  sub_213E95270(&v59, 3uLL, v56);
  v41 = v46;
  v46(v37, v38);
  v42 = v49;
  v49(v22, v40);
  v41(v12, v38);
  return v42(v20, v40);
}

uint64_t sub_213EAE2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v60 = a1;
  v71 = a9;
  v67 = *(a5 - 8);
  v17 = *(v67 + 64);
  v74 = a10;
  MEMORY[0x28223BE20](a1);
  v62 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_213F4D400();
  v69 = *(v65 - 8);
  v19 = *(v69 + 64);
  v20 = MEMORY[0x28223BE20](v65);
  v70 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v66 = &v55 - v23;
  MEMORY[0x28223BE20](v22);
  v68 = &v55 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAF90, &qword_213F5E380);
  sub_213F4D400();
  sub_213F4D400();
  swift_getTupleTypeMetadata3();
  v63 = sub_213F4EFE0();
  WitnessTable = swift_getWitnessTable();
  v25 = sub_213F4EB40();
  v72 = *(v25 - 8);
  v26 = *(v72 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v73 = &v55 - v30;
  v87 = a2;
  v88 = a3;
  v89 = a4;
  v90 = a5;
  v91 = a6;
  v92 = a7;
  v31 = v74;
  v93 = a8;
  v94 = v74;
  v56 = type metadata accessor for ListCellLayout();
  v59 = *(v60 + *(v56 + 92));
  v75 = a2;
  v76 = a3;
  v77 = a4;
  v64 = a5;
  v78 = a5;
  v79 = a6;
  v80 = a7;
  v81 = a8;
  v82 = v31;
  v83 = v60;
  v32 = v60;
  sub_213F4D8A0();
  v33 = v62;
  sub_213F4EB30();
  v57 = swift_getWitnessTable();
  sub_213DBFEEC(v29, v25, v57);
  v34 = *(v72 + 8);
  WitnessTable = v29;
  v63 = v25;
  v35 = v25;
  v36 = v56;
  v59 = v72 + 8;
  v58 = v34;
  v37 = v34(v29, v35);
  v38 = v32 + *(v36 + 112);
  v39 = *(v38 + 8);
  (*v38)(v37);
  sub_213F4E080();
  if (*(v32 + *(v36 + 84)) == 1 && sub_213EAC850(v36) > 0.0)
  {
    sub_213EAC850(v36);
  }

  v40 = v66;
  v41 = v64;
  v42 = v74;
  sub_213F4E7D0();
  (*(v67 + 8))(v33, v41);
  v86[2] = v42;
  v86[3] = MEMORY[0x277CDF918];
  v43 = v65;
  v44 = swift_getWitnessTable();
  v45 = v68;
  sub_213DBFEEC(v40, v43, v44);
  v46 = v69;
  v47 = *(v69 + 8);
  v47(v40, v43);
  v48 = WitnessTable;
  v49 = v73;
  v50 = v63;
  (*(v72 + 16))(WitnessTable, v73, v63);
  v87 = v48;
  v51 = v70;
  (*(v46 + 16))(v70, v45, v43);
  v88 = v51;
  v86[0] = v50;
  v86[1] = v43;
  v84 = v57;
  v85 = v44;
  sub_213E95270(&v87, 2uLL, v86);
  v47(v45, v43);
  v52 = v49;
  v53 = v58;
  v58(v52, v50);
  v47(v51, v43);
  return v53(v48, v50);
}

uint64_t sub_213EAE938@<X0>(char *a1@<X0>, char *a2@<X2>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v76 = a6;
  v75 = a1;
  v85 = a8;
  v84 = *(a3 - 1);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v83 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v82 = &v70 - v18;
  v81 = *(v19 - 8);
  v20 = *(v81 + 64);
  MEMORY[0x28223BE20](v17);
  v78 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v22;
  v80 = sub_213F4D400();
  v90 = *(v80 - 8);
  v24 = *(v90 + 64);
  v25 = MEMORY[0x28223BE20](v80);
  v92 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v79 = &v70 - v28;
  WitnessTable = *(a2 - 1);
  v29 = *(WitnessTable + 64);
  MEMORY[0x28223BE20](v27);
  v86 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAF90, &qword_213F5E380);
  v87 = sub_213F4D400();
  v89 = *(v87 - 8);
  v31 = *(v89 + 64);
  v32 = MEMORY[0x28223BE20](v87);
  v91 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v93 = &v70 - v34;
  v35 = v23;
  v73 = v23;
  v107 = v23;
  v108 = a2;
  v71 = a2;
  v77 = a3;
  v109 = a3;
  v110 = a4;
  v36 = a5;
  v37 = v76;
  v111 = a5;
  v112 = v76;
  v88 = a7;
  v113 = a7;
  v114 = a9;
  v72 = type metadata accessor for ListCellLayout();
  v38 = v75;
  v39 = &v75[*(v72 + 104)];
  v40 = *(v39 + 1);
  (*v39)();
  v94 = v35;
  v95 = a2;
  v96 = a3;
  v97 = a4;
  v98 = v36;
  v99 = v37;
  v100 = a7;
  v101 = a9;
  v102 = v38;
  sub_213F4EEE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF98, &qword_213F5E388);
  sub_213EAF464();
  v41 = v91;
  v42 = v71;
  v43 = v86;
  sub_213F4E350();
  (*(WitnessTable + 8))(v43, v42);
  v44 = sub_213DE3AE4(&qword_281182BF0, &qword_27C8FAF90, &qword_213F5E380);
  v106[5] = v37;
  v106[6] = v44;
  v45 = v87;
  WitnessTable = swift_getWitnessTable();
  sub_213DBFEEC(v41, v45, WitnessTable);
  v46 = *(v89 + 8);
  v76 = v89 + 8;
  v86 = v46;
  v47 = (v46)(v41, v45);
  v48 = v72;
  v49 = &v38[*(v72 + 100)];
  v50 = *(v49 + 1);
  v51 = v78;
  (*v49)(v47);
  sub_213F4EEF0();
  v52 = v73;
  v53 = v92;
  sub_213F4E750();
  (*(v81 + 8))(v51, v52);
  v106[3] = v36;
  v106[4] = MEMORY[0x277CDFC60];
  v54 = v80;
  v78 = swift_getWitnessTable();
  v55 = v79;
  sub_213DBFEEC(v53, v54, v78);
  v81 = *(v90 + 8);
  v56 = (v81)(v53, v54);
  v57 = &v38[*(v48 + 108)];
  v58 = *(v57 + 1);
  v59 = v83;
  (*v57)(v56);
  v60 = v82;
  v61 = v77;
  sub_213DBFEEC(v59, v77, v88);
  v62 = v84;
  v75 = *(v84 + 8);
  (v75)(v59, v61);
  v63 = v91;
  v64 = v87;
  (*(v89 + 16))(v91, v93, v87);
  v107 = v63;
  v65 = v92;
  (*(v90 + 16))(v92, v55, v54);
  v108 = v65;
  (*(v62 + 16))(v59, v60, v61);
  v109 = v59;
  v106[0] = v64;
  v106[1] = v54;
  v106[2] = v61;
  v103 = WitnessTable;
  v104 = v78;
  v105 = v88;
  sub_213E95270(&v107, 3uLL, v106);
  v66 = v75;
  (v75)(v60, v61);
  v67 = v81;
  (v81)(v55, v54);
  v68 = v86;
  (v86)(v93, v64);
  v66(v59, v61);
  v67(v92, v54);
  return v68(v91, v64);
}

uint64_t sub_213EAF1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v31 = a7;
  v32 = a8;
  v29 = a5;
  v30 = a6;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = a7;
  v39 = a8;
  v40 = a10;
  v15 = type metadata accessor for ListCellLayout();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  v28 = sub_213F4E8D0();
  (*(v16 + 16))(v19, a1, v15);
  v20 = (*(v16 + 80) + 80) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a2;
  *(v21 + 3) = a3;
  v22 = v29;
  v23 = v30;
  *(v21 + 4) = a4;
  *(v21 + 5) = v22;
  v25 = v31;
  v24 = v32;
  *(v21 + 6) = v23;
  *(v21 + 7) = v25;
  *(v21 + 8) = v24;
  *(v21 + 9) = a10;
  result = (*(v16 + 32))(&v21[v20], v19, v15);
  *a9 = v28;
  a9[1] = sub_213DD7524;
  a9[2] = 0;
  a9[3] = sub_213EAF51C;
  a9[4] = v21;
  return result;
}

unint64_t sub_213EAF464()
{
  result = qword_281183260;
  if (!qword_281183260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAF98, &qword_213F5E388);
    sub_213DE3AE4(&qword_281182910, &qword_27C8F96F8, &qword_213F587F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183260);
  }

  return result;
}

uint64_t sub_213EAF51C(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = *(type metadata accessor for ListCellLayout() - 8);
  v12 = *a1;
  v13 = a1[1];
  v14 = (*(v11 + 80) + 80) & ~*(v11 + 80);
  v15 = type metadata accessor for ListCellLayout();
  return sub_213EAC8B0(v15);
}

uint64_t TagFlowLayout.init(content:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v4 = a2 + *(type metadata accessor for TagFlowLayout() + 36);
  return a1();
}

uint64_t sub_213EAF6B4(uint64_t a1, char a2)
{
  v85 = sub_213F4D7F0();
  v4 = *(v85 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v85);
  v84 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  v7 = *(*(v93 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v93);
  v91 = (&v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v82 = &v77 - v11;
  MEMORY[0x28223BE20](v10);
  v81 = (&v77 - v12);
  v87 = sub_213F4D290();
  v79 = *(v87 - 8);
  v13 = *(v79 + 64);
  v14 = MEMORY[0x28223BE20](v87);
  v86 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v77 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v92 = &v77 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v77 - v21;
  v90 = sub_213F4D1A0();
  v23 = *(v90 - 1);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v26 = INFINITY;
  }

  else
  {
    v26 = *&a1;
  }

  v27 = sub_213F4D2A0();
  v28 = sub_213EB2A40(&qword_27C8FB068, MEMORY[0x277CDF7F8]);
  v29 = sub_213F4F4A0();
  v30 = MEMORY[0x277D84F90];
  v83 = v22;
  v80 = v18;
  if (v29)
  {
    v31 = v29;
    v97 = MEMORY[0x277D84F90];
    sub_213EA9128(0, v29 & ~(v29 >> 63), 0);
    v30 = v97;
    result = sub_213F4F490();
    if (v31 < 0)
    {
      __break(1u);
      return result;
    }

    v78 = v4;
    v88 = v26;
    v33 = (v23 + 16);
    v34 = (v23 + 8);
    v35 = v28;
    do
    {
      v36 = sub_213F4F4E0();
      v37 = v89;
      v38 = v27;
      v39 = v90;
      (*v33)(v89);
      v36(v96, 0);
      v96[0] = 0;
      v95 = 0;
      sub_213F4D180();
      v41 = v40;
      v43 = v42;
      (*v34)(v37, v39);
      v97 = v30;
      v44 = v35;
      v46 = *(v30 + 16);
      v45 = *(v30 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_213EA9128((v45 > 1), v46 + 1, 1);
        v30 = v97;
      }

      *(v30 + 16) = v46 + 1;
      v47 = v30 + 16 * v46;
      *(v47 + 32) = v41;
      *(v47 + 40) = v43;
      sub_213F4F4D0();
      --v31;
      v27 = v38;
      v35 = v44;
    }

    while (v31);
    v22 = v83;
    v4 = v78;
  }

  v48 = *(v30 + 16);
  v49 = v91;
  v50 = v87;
  v51 = v86;
  if (v48)
  {
    v90 = (v4 + 8);
    v89 = (v79 + 32);
    v52 = (v79 + 8);
    v53 = (v30 + 40);
    v54 = 0.0;
    v55 = 0.0;
    v56 = 0.0;
    do
    {
      v64 = *(v53 - 1);
      v63 = *v53;
      if (v26 >= v56 + v64)
      {
        sub_213E8D47C(v94, v49);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*v89)(v51, v49, v50);
        }

        else
        {
          v72 = *v91;
          sub_213F4F520();
          v73 = sub_213F4E000();
          v50 = v87;
          sub_213F4CC10();

          v51 = v86;
          v74 = v84;
          sub_213F4D7E0();
          swift_getAtKeyPath();
          v49 = v91;

          (*v90)(v74, v85);
        }

        v75 = v92;
        sub_213F4D280();
        sub_213F4D270();
        v76 = *v52;
        (*v52)(v75, v50);
        v76(v51, v50);
        v56 = v56 + v64 + 10.0;
        if (v55 <= v63)
        {
          v55 = v63;
        }
      }

      else
      {
        v65 = v81;
        sub_213E8D47C(v94, v81);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*v89)(v22, v65, v50);
        }

        else
        {
          v66 = *v65;
          sub_213F4F520();
          v67 = sub_213F4E000();
          v50 = v87;
          sub_213F4CC10();

          v68 = v84;
          sub_213F4D7E0();
          swift_getAtKeyPath();

          (*v90)(v68, v85);
        }

        v69 = v82;
        v70 = v92;
        sub_213F4D280();
        sub_213F4D270();
        v71 = *v52;
        (*v52)(v70, v50);
        v71(v22, v50);
        sub_213E8D47C(v94, v69);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v60 = v80;
          (*v89)(v80, v69, v50);
        }

        else
        {
          v57 = *v69;
          sub_213F4F520();
          v58 = sub_213F4E000();
          sub_213F4CC10();

          v59 = v84;
          sub_213F4D7E0();
          v60 = v80;
          swift_getAtKeyPath();

          v61 = v59;
          v50 = v87;
          (*v90)(v61, v85);
        }

        v49 = v91;
        v62 = v92;
        v51 = v86;
        v54 = v54 + v55 + 10.0;
        sub_213F4D280();
        sub_213F4D270();
        v71(v62, v50);
        v71(v60, v50);
        v56 = v64 + 10.0;
        v55 = v63;
        v22 = v83;
      }

      v53 += 2;
      --v48;
    }

    while (v48);
  }
}

uint64_t sub_213EAFFFC(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v99 = a5;
  v100 = a6;
  v88 = sub_213F4D7F0();
  v14 = *(v88 - 8);
  v15 = *(*&v14 + 64);
  MEMORY[0x28223BE20](v88);
  v87 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  v17 = *(*(v97 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v97);
  v20 = (&v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v83 = (&v81 - v21);
  v96 = sub_213F4D290();
  v22 = *(v96 - 8);
  v23 = v22[8];
  v24 = MEMORY[0x28223BE20](v96 - 8);
  v92 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v95 = &v81 - v27;
  MEMORY[0x28223BE20](v26);
  v82 = &v81 - v28;
  v102 = sub_213F4D1A0();
  v29 = *(v102 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v102);
  v101 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *&a1;
  if (a2)
  {
    v32 = INFINITY;
  }

  v93 = v32;
  sub_213F4D2A0();
  sub_213EB2A40(&qword_27C8FB068, MEMORY[0x277CDF7F8]);
  v33 = sub_213F4F4A0();
  v34 = MEMORY[0x277D84F90];
  v89 = v20;
  if (v33)
  {
    v35 = v33;
    v105 = MEMORY[0x277D84F90];
    sub_213EA9128(0, v33 & ~(v33 >> 63), 0);
    v34 = v105;
    result = sub_213F4F490();
    if (v35 < 0)
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v90 = v22;
    v91 = v14;
    v94 = v93;
    v37 = v29;
    v38 = (v29 + 16);
    v86 = v37;
    v39 = (v37 + 8);
    do
    {
      v40 = sub_213F4F4E0();
      v42 = v101;
      v41 = v102;
      (*v38)(v101);
      v40(v104, 0);
      LOBYTE(v104[0]) = 0;
      v103 = 0;
      sub_213F4D180();
      v44 = v43;
      v46 = v45;
      (*v39)(v42, v41);
      v105 = v34;
      v47 = a9;
      v49 = *(*&v34 + 16);
      v48 = *(*&v34 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_213EA9128((v48 > 1), v49 + 1, 1);
        v34 = v105;
      }

      *(*&v34 + 16) = v49 + 1;
      v50 = *&v34 + 16 * v49;
      *(v50 + 32) = v44;
      *(v50 + 40) = v46;
      sub_213F4F4D0();
      --v35;
      a9 = v47;
    }

    while (v35);
    v20 = v89;
    v14 = v91;
    v22 = v90;
    v29 = v86;
  }

  v106.origin.x = a3;
  v106.origin.y = a4;
  v52 = v99;
  v51 = v100;
  v106.size.width = v99;
  v106.size.height = v100;
  MinX = CGRectGetMinX(v106);
  v107.origin.x = a3;
  v107.origin.y = a4;
  v107.size.width = v52;
  v107.size.height = v51;
  MinY = CGRectGetMinY(v107);
  sub_213F4F490();
  result = sub_213F4F4C0();
  v55 = v104[0];
  if (*&v105 < v104[0])
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v104[0] == *&v105)
  {
  }

  if (v104[0] >= *&v105)
  {
    goto LABEL_31;
  }

  if (v104[0] < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v56 = *(*&v34 + 16);
  if (v104[0] < v56 && *&v105 - 1 < v56)
  {
    v91 = v93;
    v85 = (*&v14 + 8);
    v84 = (v22 + 4);
    v57 = v22 + 1;
    v90 = (v29 + 8);
    v58 = (*&v34 + 16 * v104[0] + 40);
    v59 = 0.0;
    v86 = a9;
    v94 = v105;
    do
    {
      v68 = *(v58 - 1);
      v69 = *v58;
      v108.origin.x = a3;
      v108.origin.y = a4;
      v108.size.width = v99;
      v108.size.height = v100;
      if (v93 < MinX + v68 - CGRectGetMinX(v108))
      {
        v70 = v83;
        sub_213E8D47C(v98, v83);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v72 = v82;
        if (EnumCaseMultiPayload == 1)
        {
          v73 = v96;
          (*v84)(v82, v70, v96);
        }

        else
        {
          v74 = *v70;
          sub_213F4F520();
          v75 = sub_213F4E000();
          sub_213F4CC10();

          v76 = v87;
          sub_213F4D7E0();
          swift_getAtKeyPath();

          v77 = v76;
          v20 = v89;
          (*v85)(v77, v88);
          v73 = v96;
        }

        v78 = v95;
        sub_213F4D280();
        sub_213F4D270();
        v79 = *v57;
        (*v57)(v78, v73);
        v79(v72, v73);
        MinY = v59 + 10.0 + MinY;
        v109.origin.x = a3;
        v109.origin.y = a4;
        v109.size.width = v99;
        v109.size.height = v100;
        MinX = CGRectGetMinX(v109);
        v59 = 0.0;
      }

      v80 = v101;
      sub_213F4D2B0();
      sub_213F4F000();
      LOBYTE(v104[0]) = 0;
      LOBYTE(v105) = 0;
      sub_213F4D190();
      (*v90)(v80, v102);
      sub_213E8D47C(v98, v20);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v63 = v92;
        v65 = v96;
        (*v84)(v92, v20, v96);
      }

      else
      {
        v60 = *v20;
        sub_213F4F520();
        v61 = sub_213F4E000();
        sub_213F4CC10();

        v62 = v87;
        sub_213F4D7E0();
        v63 = v92;
        swift_getAtKeyPath();

        v64 = v62;
        v20 = v89;
        (*v85)(v64, v88);
        v65 = v96;
      }

      ++v55;
      v66 = v95;
      sub_213F4D280();
      sub_213F4D270();
      v67 = *v57;
      (*v57)(v66, v65);
      v67(v63, v65);
      MinX = v68 + 10.0 + MinX;
      if (v59 <= v69)
      {
        v59 = v69;
      }

      v58 += 2;
    }

    while (*&v94 != v55);
  }

LABEL_33:
  __break(1u);
  return result;
}

void (*sub_213EB0A48(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_213F4CD60();
  return sub_213EB0AD0;
}

void sub_213EB0AD0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_213EB0B1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_213E8D47C(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213F4D290();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_213F4F520();
    v16 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

double sub_213EB0D04()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_213EB0B1C(&v10 - v6);
  sub_213F4D280();
  sub_213F4D270();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v8(v7, v0);
  return 26.0;
}

double sub_213EB0E20()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_213EB0B1C(&v10 - v6);
  sub_213F4D280();
  sub_213F4D270();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v8(v7, v0);
  return 16.0;
}

uint64_t TagFlowLayout.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v60 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAFA0, &qword_213F5E3C0);
  v3 = *(a1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAFA8, &qword_213F5E3C8);
  v5 = *(a1 + 24);
  *&v77 = v3;
  *(&v77 + 1) = v4;
  *&v78 = v5;
  *(&v78 + 1) = sub_213EB1FF8();
  v50 = sub_213F4DD80();
  v52 = sub_213F4E9C0();
  sub_213DE3AE4(&qword_27C8FAFB8, &qword_27C8FAFA0, &qword_213F5E3C0);
  v6 = sub_213F4D1F0();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - v8;
  v10 = type metadata accessor for TagFlow();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_213F4D400();
  v56 = *(v14 - 8);
  v15 = *(v56 + 64);
  MEMORY[0x28223BE20](v14);
  v46 = &v46 - v16;
  v17 = sub_213F4D400();
  v57 = *(v17 - 8);
  v18 = *(v57 + 64);
  MEMORY[0x28223BE20](v17);
  v48 = &v46 - v19;
  v54 = sub_213F4D400();
  v58 = *(v54 - 8);
  v20 = *(v58 + 64);
  MEMORY[0x28223BE20](v54);
  v49 = &v46 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F90, &qword_213F57930);
  v22 = sub_213F4D400();
  v59 = *(v22 - 8);
  v23 = *(v59 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v51 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v55 = &v46 - v26;
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v27 = sub_213EB1758(v13, v3, v5);
  sub_213EB20C0(v13);
  v63 = v3;
  v64 = v5;
  v65 = v61;
  (v27)(sub_213EB211C, v62);

  sub_213EB0E20();
  v28 = sub_213DE3AE4(qword_27C8FAFC0, &qword_27C8FAFA0, &qword_213F5E3C0);
  WitnessTable = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  v74 = v28;
  v75 = v29;
  v30 = swift_getWitnessTable();
  v31 = v46;
  sub_213F4E7C0();
  (*(v47 + 8))(v9, v6);
  sub_213F4EEE0();
  v72 = v30;
  v73 = MEMORY[0x277CDF918];
  v45 = swift_getWitnessTable();
  v32 = v48;
  sub_213F4E750();
  (*(v56 + 8))(v31, v14);
  v33 = sub_213EB0D04();
  v70 = v45;
  v71 = MEMORY[0x277CDFC60];
  v34 = swift_getWitnessTable();
  v35 = v49;
  View.insetGroupedSectionBackground(cornerRadius:)(v17, v34, v33);
  (*(v57 + 8))(v32, v17);
  v36 = sub_213E5A778();
  v77 = 0u;
  v78 = 0u;
  v79 = 0;
  v68 = v34;
  v69 = v36;
  v37 = v54;
  v38 = swift_getWitnessTable();
  v39 = v51;
  sub_213F4E4C0();
  (*(v58 + 8))(v35, v37);
  v40 = sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930);
  v66 = v38;
  v67 = v40;
  v41 = swift_getWitnessTable();
  v42 = v55;
  sub_213DBFEEC(v39, v22, v41);
  v43 = *(v59 + 8);
  v43(v39, v22);
  sub_213DBFEEC(v42, v22, v41);
  return (v43)(v42, v22);
}

uint64_t (*sub_213EB1758(uint64_t a1, uint64_t a2, uint64_t a3))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TagFlow();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_213EB28DC(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_213EB2940(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  return sub_213EB29A4;
}

uint64_t sub_213EB185C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TagFlow();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAFA8, &qword_213F5E3C8);
  sub_213EB1FF8();
  sub_213F4DD80();
  v7 = sub_213F4E9C0();
  v8 = sub_213EB2A40(&qword_27C8FB070, type metadata accessor for TagFlow);
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  return sub_213EB1998(a1, a2, v6, v7, v8, WitnessTable, a3);
}

uint64_t sub_213EB1998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20[0] = a6;
  v20[1] = a7;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_213F4CFB0();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  (*(v13 + 16))(v16, v7, a3);
  sub_213F4CFC0();
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a5;
  v20[7] = v20[0];
  v20[8] = a1;
  v20[9] = a2;
  swift_getWitnessTable();
  return sub_213F4D200();
}

uint64_t sub_213EB1B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a1;
  v26 = a4;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAFA8, &qword_213F5E3C8);
  v24 = v10;
  v11 = sub_213EB1FF8();
  v28 = a2;
  v29 = v10;
  v30 = a3;
  v31 = v11;
  sub_213F4DD80();
  v12 = sub_213F4E9C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v24 - v18;
  v20 = type metadata accessor for TagFlowLayout();
  (*(v6 + 16))(v9, v25 + *(v20 + 36), a2);
  sub_213F4E9A0();
  WitnessTable = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  sub_213DBFEEC(v17, v12, v21);
  v22 = *(v13 + 8);
  v22(v17, v12);
  sub_213DBFEEC(v19, v12, v21);
  return (v22)(v19, v12);
}

uint64_t sub_213EB1DD4(uint64_t a1)
{
  v2 = sub_213F4D960();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  swift_getKeyPath();
  sub_213F4ED30();
  sub_213EB2A40(&qword_281182C48, MEMORY[0x277CE0150]);
  sub_213EB2A40(&qword_2811825F8, MEMORY[0x277CE12A8]);
  return sub_213F4ECC0();
}

uint64_t sub_213EB1F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4ED30();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_213EB1FF8()
{
  result = qword_27C8FAFB0;
  if (!qword_27C8FAFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAFA8, &qword_213F5E3C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FAFB0);
  }

  return result;
}

uint64_t type metadata accessor for TagFlow()
{
  result = qword_27C8FB048;
  if (!qword_27C8FB048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213EB20C0(uint64_t a1)
{
  v2 = type metadata accessor for TagFlow();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_213EB216C(uint64_t a1)
{
  sub_213DF29DC();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_213EB21F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_213F4D290() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v6 + v9 + 1;
  if (a2 <= v11)
  {
    goto LABEL_30;
  }

  v13 = (v12 & ~v9) + v10;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v11 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_30:
      if (v8 > 0xFE)
      {
        v22 = *(*(*(a3 + 16) - 8) + 48);

        return v22((a1 + v12) & ~v9);
      }

      else
      {
        v21 = *(a1 + v6);
        if (v21 >= 2)
        {
          return (v21 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_30;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}