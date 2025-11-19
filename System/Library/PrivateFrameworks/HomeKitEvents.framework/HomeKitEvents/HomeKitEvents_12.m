uint64_t sub_2542326B4()
{
  v1 = v0;
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  sub_25424D8B8();
  sub_2542335F8(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v11 = type metadata accessor for EventBase(0);
  v12 = *(v11 + 20);
  sub_2542335F8(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254262A98[*(v1 + *(v11 + 24))]);
  v13 = type metadata accessor for AccessoryEventBase(0);
  v14 = v1 + v13[5];
  sub_25424DC28();
  v15 = (v1 + v13[6]);
  v16 = *v15;
  v17 = v15[1];
  sub_25424DD88();
  v18 = v1 + v13[7];
  sub_25424DC28();
  v19 = (v1 + v13[8]);
  v20 = *v19;
  v21 = v19[1];
  sub_25424DD88();
  sub_254149770(v1 + v13[9], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return sub_25424EBF8();
  }

  (*(v3 + 32))(v6, v10, v2);
  sub_25424EBF8();
  sub_25424DC28();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_25423298C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC1E8, &unk_254262770);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254234604();
  sub_25424EC78();
  v23[31] = 0;
  sub_25424D8B8();
  sub_2542335F8(&qword_27F5B8C78, MEMORY[0x277CC9578]);
  sub_25424EA18();
  if (!v2)
  {
    v11 = type metadata accessor for AccessoryEventBase.DocumentLayout(0);
    v12 = v11[5];
    v23[30] = 1;
    sub_25424D948();
    sub_2542335F8(&qword_27F5B89D8, MEMORY[0x277CC95F0]);
    sub_25424EA18();
    v23[29] = *(v3 + v11[6]);
    v23[28] = 2;
    sub_2541406B4();
    sub_25424EA18();
    v13 = v11[7];
    v23[27] = 3;
    sub_25424EA18();
    v14 = (v3 + v11[8]);
    v15 = *v14;
    v16 = v14[1];
    v23[26] = 4;
    sub_25424E9D8();
    v17 = v11[9];
    v23[25] = 5;
    sub_25424EA18();
    v18 = (v3 + v11[10]);
    v19 = *v18;
    v20 = v18[1];
    v23[24] = 6;
    sub_25424E9D8();
    v21 = v11[11];
    v23[15] = 7;
    sub_25424E9C8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_254232CDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = v42 - v5;
  v50 = sub_25424D948();
  v52 = *(v50 - 8);
  v6 = *(v52 + 64);
  v7 = MEMORY[0x28223BE20](v50);
  v46 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v47 = v42 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = v42 - v11;
  v13 = sub_25424D8B8();
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v51 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC1D8, &qword_254262768);
  v49 = *(v54 - 8);
  v16 = *(v49 + 64);
  MEMORY[0x28223BE20](v54);
  v18 = v42 - v17;
  v19 = type metadata accessor for AccessoryEventBase.DocumentLayout(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254234604();
  v53 = v18;
  v24 = v55;
  sub_25424EC68();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v55 = a1;
  v25 = v52;
  v26 = v50;
  v64 = 0;
  sub_2542335F8(&qword_27F5B8CA8, MEMORY[0x277CC9578]);
  sub_25424E978();
  v27 = *(v48 + 32);
  v43 = v22;
  v27(v22, v51, v13);
  v63 = 1;
  v28 = sub_2542335F8(&qword_27F5B89F0, MEMORY[0x277CC95F0]);
  sub_25424E978();
  v42[1] = v28;
  v29 = v19;
  v30 = *(v19 + 20);
  v31 = *(v25 + 32);
  v32 = v43;
  v31(&v43[v30], v12, v26);
  v61 = 2;
  sub_2541407C8();
  v51 = 0;
  sub_25424E978();
  *(v32 + v29[6]) = v62;
  v60 = 3;
  v33 = v47;
  sub_25424E978();
  v31((v32 + v29[7]), v33, v26);
  v59 = 4;
  v34 = sub_25424E938();
  v35 = (v32 + v29[8]);
  *v35 = v34;
  v35[1] = v36;
  v58 = 5;
  sub_25424E978();
  v31((v32 + v29[9]), v46, v26);
  v57 = 6;
  v37 = sub_25424E938();
  v38 = (v32 + v29[10]);
  *v38 = v37;
  v38[1] = v39;
  v56 = 7;
  v40 = v45;
  sub_25424E928();
  (*(v49 + 8))(v53, v54);
  sub_25414A348(v40, v32 + v29[11]);
  sub_254234678(v32, v44, type metadata accessor for AccessoryEventBase.DocumentLayout);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return sub_2542346E0(v32, type metadata accessor for AccessoryEventBase.DocumentLayout);
}

uint64_t sub_2542335F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_254233668@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_254235210();
  *a2 = result;
  return result;
}

uint64_t sub_2542336CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254235210();
  *a1 = result;
  return result;
}

uint64_t sub_254233700(uint64_t a1)
{
  v2 = sub_254234604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423373C(uint64_t a1)
{
  v2 = sub_254234604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2542337C0(void *a1, int *a2)
{
  v4 = v2;
  v26 = a1;
  v5 = type metadata accessor for AccessoryEventBase.DocumentLayout(0);
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25424D8B8();
  (*(*(v10 - 8) + 16))(v9, v2, v10);
  v11 = type metadata accessor for EventBase(0);
  v25 = *(v11 + 20);
  v12 = v6[7];
  v13 = sub_25424D948();
  v14 = *(*(v13 - 8) + 16);
  v14(&v9[v12], v4 + v25, v13);
  LODWORD(v25) = *(v4 + *(v11 + 24));
  v14(&v9[v6[9]], v4 + a2[5], v13);
  v15 = (v4 + a2[6]);
  v16 = *v15;
  v17 = v15[1];
  v14(&v9[v6[11]], v4 + a2[7], v13);
  v18 = a2[9];
  v19 = (v4 + a2[8]);
  v20 = *v19;
  v21 = v19[1];
  sub_254149770(v4 + v18, &v9[v6[13]]);
  v9[v6[8]] = v25;
  v22 = &v9[v6[10]];
  *v22 = v16;
  *(v22 + 1) = v17;
  v23 = &v9[v6[12]];
  *v23 = v20;
  *(v23 + 1) = v21;

  sub_25423298C(v26);
  return sub_2542346E0(v9, type metadata accessor for AccessoryEventBase.DocumentLayout);
}

uint64_t sub_2542339E4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_25424EBD8();
  a3(v5);
  return sub_25424EC28();
}

uint64_t sub_254233A44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_25424EBD8();
  a4(v6);
  return sub_25424EC28();
}

uint64_t sub_254233A88(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC1F0, &qword_254262780);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254234740();
  sub_25424EC78();
  v28 = 0;
  type metadata accessor for EventBaseLegacy(0);
  sub_2542335F8(&qword_27F5BC200, type metadata accessor for EventBaseLegacy);
  sub_25424EA18();
  if (!v2)
  {
    v11 = type metadata accessor for AccessoryEventBaseLegacy.LegacyLayout(0);
    v12 = v11[5];
    v27 = 1;
    sub_25424D948();
    sub_2542335F8(&qword_27F5B89D8, MEMORY[0x277CC95F0]);
    sub_25424EA18();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    v26 = 2;
    sub_25424E9D8();
    v16 = v11[7];
    v25 = 3;
    sub_25424EA18();
    v17 = (v3 + v11[8]);
    v18 = *v17;
    v19 = v17[1];
    v24 = 4;
    sub_25424E9D8();
    v20 = v11[9];
    v23 = 5;
    sub_25424E9C8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_254233D5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v42 - v5;
  v48 = sub_25424D948();
  v46 = *(v48 - 8);
  v6 = *(v46 + 64);
  v7 = MEMORY[0x28223BE20](v48);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  v12 = type metadata accessor for EventBaseLegacy(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v49 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC210, &unk_254262790);
  v47 = *(v50 - 8);
  v15 = *(v47 + 64);
  MEMORY[0x28223BE20](v50);
  v17 = &v42 - v16;
  v18 = type metadata accessor for AccessoryEventBaseLegacy.LegacyLayout(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v23 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_254234740();
  v51 = v17;
  v24 = v52;
  sub_25424EC68();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  v42 = v9;
  v43 = v18;
  v25 = v47;
  v26 = v48;
  v52 = v21;
  v59 = 0;
  sub_2542335F8(&qword_27F5BC218, type metadata accessor for EventBaseLegacy);
  v27 = v49;
  sub_25424E978();
  v28 = v52;
  sub_254234794(v27, v52, type metadata accessor for EventBaseLegacy);
  v58 = 1;
  v29 = sub_2542335F8(&qword_27F5B89F0, MEMORY[0x277CC95F0]);
  sub_25424E978();
  v30 = v25;
  v49 = v29;
  v31 = v28;
  v32 = *(v46 + 32);
  v32(v31 + v43[5], v11, v26);
  v57 = 2;
  v33 = sub_25424E938();
  v34 = (v31 + v43[6]);
  *v34 = v33;
  v34[1] = v35;
  v56 = 3;
  v36 = v42;
  sub_25424E978();
  v32(v31 + v43[7], v36, v26);
  v55 = 4;
  v37 = sub_25424E938();
  v38 = (v31 + v43[8]);
  *v38 = v37;
  v38[1] = v39;
  v54 = 5;
  v40 = v45;
  sub_25424E928();
  (*(v30 + 8))(v51, v50);
  sub_25414A348(v40, v31 + v43[9]);
  sub_254234678(v31, v44, type metadata accessor for AccessoryEventBaseLegacy.LegacyLayout);
  __swift_destroy_boxed_opaque_existential_1(v53);
  return sub_2542346E0(v31, type metadata accessor for AccessoryEventBaseLegacy.LegacyLayout);
}

unint64_t sub_254234428()
{
  v1 = *v0;
  v2 = 1702060386;
  v3 = 0xD000000000000013;
  v4 = 0x726F737365636361;
  if (v1 != 4)
  {
    v4 = 0x6E65644972657375;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6564496D6F6F72;
  if (v1 != 1)
  {
    v5 = 0x656D614E6D6F6F72;
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

uint64_t sub_254234504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25423525C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25423452C(uint64_t a1)
{
  v2 = sub_254234740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254234568(uint64_t a1)
{
  v2 = sub_254234740();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_254234604()
{
  result = qword_27F5BC1E0;
  if (!qword_27F5BC1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC1E0);
  }

  return result;
}

uint64_t sub_254234678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2542346E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_254234740()
{
  result = qword_27F5BC1F8;
  if (!qword_27F5BC1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC1F8);
  }

  return result;
}

uint64_t sub_254234794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL _s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25424D948();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9D28, &qword_254257B00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  if ((_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for EventBase(0);
  v18 = *(v17 + 20);
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  if (qword_254262A98[*(a1 + *(v17 + 24))] != qword_254262A98[*(a2 + *(v17 + 24))])
  {
    return 0;
  }

  v19 = type metadata accessor for AccessoryEventBase(0);
  v20 = v19[5];
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v21 = v19[6];
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if ((v22 != *v24 || v23 != v24[1]) && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  v25 = v19[7];
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  v26 = v19[8];
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  if ((v27 != *v29 || v28 != v29[1]) && (sub_25424EAB8() & 1) == 0)
  {
    return 0;
  }

  v30 = v19[9];
  v31 = *(v13 + 48);
  sub_254149770(a1 + v30, v16);
  sub_254149770(a2 + v30, &v16[v31]);
  v32 = *(v5 + 48);
  if (v32(v16, 1, v4) == 1)
  {
    if (v32(&v16[v31], 1, v4) == 1)
    {
      sub_254132E5C(v16, &unk_27F5B8E50, &qword_254254390);
      return 1;
    }

    goto LABEL_17;
  }

  sub_254149770(v16, v12);
  if (v32(&v16[v31], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_17:
    sub_254132E5C(v16, &qword_27F5B9D28, &qword_254257B00);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v31], v4);
  sub_2542335F8(&qword_27F5B9090, MEMORY[0x277CC95F0]);
  v34 = sub_25424DC98();
  v35 = *(v5 + 8);
  v35(v8, v4);
  v35(v12, v4);
  sub_254132E5C(v16, &unk_27F5B8E50, &qword_254254390);
  return (v34 & 1) != 0;
}

uint64_t __swift_get_extra_inhabitant_index_17Tm(uint64_t a1, uint64_t a2, int *a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_5:

    return v10(v11, a2, v9);
  }

  v12 = sub_25424D948();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = *(v13 + 48);
    v11 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[9];

    return v17(v18, a2, v16);
  }
}

uint64_t __swift_store_extra_inhabitant_index_18Tm(uint64_t a1, uint64_t a2, int a3, int *a4, uint64_t (*a5)(void))
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = *(v10 + 56);
    v13 = a1;
LABEL_5:

    return v12(v13, a2, a2, v11);
  }

  result = sub_25424D948();
  v15 = *(result - 8);
  if (*(v15 + 84) == a3)
  {
    v11 = result;
    v12 = *(v15 + 56);
    v13 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + a4[9];

    return v17(v18, a2, a2, v16);
  }

  return result;
}

void sub_254234F44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(319);
  if (v4 <= 0x3F)
  {
    sub_25424D948();
    if (v5 <= 0x3F)
    {
      sub_2542317B8();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_254235004()
{
  result = qword_27F5BC230;
  if (!qword_27F5BC230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC230);
  }

  return result;
}

unint64_t sub_25423505C()
{
  result = qword_27F5BC238;
  if (!qword_27F5BC238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC238);
  }

  return result;
}

unint64_t sub_2542350B4()
{
  result = qword_27F5BC240;
  if (!qword_27F5BC240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC240);
  }

  return result;
}

unint64_t sub_25423510C()
{
  result = qword_27F5BC248;
  if (!qword_27F5BC248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC248);
  }

  return result;
}

unint64_t sub_254235164()
{
  result = qword_27F5BC250;
  if (!qword_27F5BC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC250);
  }

  return result;
}

unint64_t sub_2542351BC()
{
  result = qword_27F5BC258;
  if (!qword_27F5BC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC258);
  }

  return result;
}

uint64_t sub_254235210()
{
  v0 = sub_25424E8E8();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25423525C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (sub_25424EAB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6564496D6F6F72 && a2 == 0xEE00726569666974 || (sub_25424EAB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_25424EAB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000254251BF0 == a2 || (sub_25424EAB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED0000656D614E79 || (sub_25424EAB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E65644972657375 && a2 == 0xEE00726569666974)
  {

    return 5;
  }

  else
  {
    v6 = sub_25424EAB8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t *sub_254235480@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2542355D8()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v2, 0xD000000000000013, 0x8000000254252090, isUniquelyReferenced_nonNull_native);
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v5, 0x6365524B436D7573, 0xEF657A695364726FLL, v6);
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v7, 0x6575514B436D756ELL, 0xEC00000073656972, v8);
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v9, 0xD000000000000015, 0x8000000254251CC0, v10);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v11, 0xD000000000000010, 0x8000000254251CE0, v12);
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v13, 0xD000000000000015, 0x80000002542520B0, v14);
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v15, 0xD00000000000001ALL, 0x80000002542520D0, v16);
  v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v17, 0xD00000000000001ELL, 0x80000002542520F0, v18);
  v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v19, 0xD00000000000001ELL, 0x8000000254252110, v20);
  v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v21, 0xD00000000000002ELL, 0x8000000254252130, v22);
  v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v24 = swift_isUniquelyReferenced_nonNull_native();
  result = sub_2541AE7C0(v23, 0xD000000000000013, 0x8000000254252160, v24);
  if ((*(v1 + OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionStartTime + 8) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionEndTime + 8) & 1) == 0)
  {
    v27 = (*(v1 + OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionEndTime) - *(v1 + OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionStartTime)) * 1000.0;
    v26 = &selRef_initWithArray_;
    if (COERCE__INT64(fabs(v27)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v27 > -9.22337204e18)
    {
      if (v27 < 9.22337204e18)
      {
        v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v29 = swift_isUniquelyReferenced_nonNull_native();
        sub_2541AE7C0(v28, 0xD000000000000018, 0x8000000254252280, v29);
        goto LABEL_8;
      }

LABEL_16:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_16;
  }

  v26 = &selRef_initWithArray_;
LABEL_8:
  v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v26[23]];
  v31 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v30, 0x7079547972657571, 0xE900000000000065, v31);
  v32 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v26[23]];
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v32, 0x74696D696CLL, 0xE500000000000000, v33);
  if (*(v1 + OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_scope))
  {
    v34 = 2;
  }

  else
  {
    v34 = 1;
  }

  v35 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v26[23]];
  v36 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v35, 0x65706F6373, 0xE500000000000000, v36);
  v37 = [objc_opt_self() processInfo];
  v38 = [v37 name];

  if (v38)
  {
    sub_25424DCB8();
  }

  v39 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v40 = sub_25424DCA8();

  v41 = [v39 initWithString_];

  v42 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v41, 0x4E737365636F7270, 0xEB00000000656D61, v42);
  sub_25424D868();
  v44 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v45 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v44, 0xD000000000000010, 0x8000000254252180, v45);
  sub_25424D7C8();
  v47 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v48 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v47, 0xD000000000000011, 0x80000002542521A0, v48);
  v49 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v26[23]];
  v50 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v49, 0xD000000000000012, 0x80000002542521C0, v50);
  v51 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v26[23]];
  v52 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v51, 0xD000000000000015, 0x8000000254251EC0, v52);
  v53 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v26[23]];
  v54 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v53, 0xD000000000000018, 0x8000000254251E60, v54);
  v55 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v26[23]];
  v56 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v55, 0xD00000000000001CLL, 0x8000000254251EA0, v56);
  v57 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v26[23]];
  v58 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v57, 0xD00000000000001FLL, 0x8000000254251E80, v58);
  v59 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v26[23]];
  v60 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v59, 0xD000000000000010, 0x8000000254251EE0, v60);
  v61 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v62 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v61, 0xD00000000000001CLL, 0x80000002542521E0, v62);
  v63 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v64 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v63, 0xD00000000000001BLL, 0x8000000254252200, v64);
  v65 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v66 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v65, 0xD00000000000001FLL, 0x8000000254252220, v66);
  v67 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v68 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v67, 0xD00000000000001FLL, 0x8000000254252240, v68);
  v69 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v70 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v69, 0xD00000000000001FLL, 0x8000000254252260, v70);
  v71 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v72 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v71, 0x6E61437972657571, 0xEE0064656C6C6563, v72);
  v73 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v74 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v73, 0x6375537972657571, 0xEE00646564656563, v74);
  v75 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v76 = swift_isUniquelyReferenced_nonNull_native();
  sub_2541AE7C0(v75, 0xD000000000000011, 0x8000000254251C50, v76);
  return v3;
}

id sub_254236388()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QueryLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for QueryLogEvent()
{
  result = qword_27F5BC340;
  if (!qword_27F5BC340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2542364C4()
{
  result = sub_25424D8B8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_2542365DC()
{
  result = qword_27F5BC350;
  if (!qword_27F5BC350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC350);
  }

  return result;
}

unint64_t sub_254236630()
{
  result = qword_27F5BC358;
  if (!qword_27F5BC358)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5BC358);
  }

  return result;
}

uint64_t Constants.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C756E2F7665642FLL;
  v3 = 1684893549;
  v4 = 0xD000000000000032;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73746E657645;
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

HomeKitEvents::Constants_optional __swiftcall Constants.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25424E8E8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_254236790()
{
  result = qword_27F5BC360[0];
  if (!qword_27F5BC360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5BC360);
  }

  return result;
}

uint64_t sub_2542367E4()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_2542368CC()
{
  *v0;
  *v0;
  *v0;
  sub_25424DD88();
}

uint64_t sub_2542369A0()
{
  v1 = *v0;
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

void sub_254236A90(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006CLL;
  v4 = 0x6C756E2F7665642FLL;
  v5 = 0xE400000000000000;
  v6 = 1684893549;
  v7 = 0x800000025424FC90;
  v8 = 0xD000000000000032;
  if (v2 != 3)
  {
    v8 = 0xD00000000000001BLL;
    v7 = 0x800000025424FCD0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x73746E657645;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_254236B44(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254236BBC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_254236D30(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
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
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_254236F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v16 = &v18 - v15;
  (*(v7 + 16))(v11, v3, v6);
  sub_25424E208();
  return sub_254237AC8(v16, *(v3 + *(a1 + 36)), a2);
}

uint64_t sub_2542370CC(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_2542370EC, 0, 0);
}

uint64_t sub_2542370EC()
{
  sub_25424E1E8();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_2542371CC;
  v2 = v0[8];
  v3 = v0[9];

  return sub_254237C20(v2);
}

uint64_t sub_2542371CC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 88) = a2;
    *(v6 + 96) = a1;

    return MEMORY[0x2822009F8](sub_254237328, 0, 0);
  }
}

uint64_t sub_254237328()
{
  if (v0[11] >> 60 == 15)
  {
    v1 = v0[8];
    v2 = v0[9];
    if (*(v2 + *(v1 + 36)) == 1)
    {
      v3 = v2 + *(v1 + 44);
      sub_2541CF73C();
      v1 = v0[8];
    }

    v0[13] = *(v1 + 24);
    v0[14] = *(v1 + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = *(MEMORY[0x277D856D0] + 4);
    v7 = swift_task_alloc();
    v0[15] = v7;
    *v7 = v0;
    v7[1] = sub_25423749C;
    v8 = v0[9];

    return MEMORY[0x282200308](v0 + 6, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v9 = v0[12];
    v10 = v0[1];

    return v10(v9);
  }
}

uint64_t sub_25423749C()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_254237A4C;
  }

  else
  {
    v3 = sub_2542375B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2542375B0()
{
  v1 = v0[6];
  v2 = v0[7];
  v0[17] = v1;
  v0[18] = v2;
  if (v2 >> 60 == 15)
  {
    v3 = v0[1];

    return v3();
  }

  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 != 2 || *(v1 + 16) == *(v1 + 24))
    {
      goto LABEL_15;
    }
  }

  else if (v5)
  {
    if (v1 == v1 >> 32)
    {
LABEL_15:
      sub_254134CF0(v1, v2);
      v11 = v0[13];
      v10 = v0[14];
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v14 = *(MEMORY[0x277D856D0] + 4);
      v15 = swift_task_alloc();
      v0[15] = v15;
      *v15 = v0;
      v15[1] = sub_25423749C;
      v16 = v0[9];

      return MEMORY[0x282200308](v0 + 6, AssociatedTypeWitness, AssociatedConformanceWitness);
    }
  }

  else if ((v2 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

  v6 = v0[9] + *(v0[8] + 44);
  sub_2541D0104(v1, v2);
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_2542377CC;
  v8 = v0[8];
  v9 = v0[9];

  return sub_254237C20(v8);
}

uint64_t sub_2542377CC(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v6[2] = v3;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = v2;
  v7 = v5[19];
  v8 = *v3;
  v6[20] = v2;

  if (v2)
  {
    v9 = sub_254237A64;
  }

  else
  {
    v6[21] = a2;
    v9 = sub_2542378FC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2542378FC()
{
  v1 = v0[21];
  sub_254134CF0(v0[17], v0[18]);
  if (v1 >> 60 == 15)
  {
    v2 = v0[13];
    v3 = v0[14];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = *(MEMORY[0x277D856D0] + 4);
    v7 = swift_task_alloc();
    v0[15] = v7;
    *v7 = v0;
    v7[1] = sub_25423749C;
    v8 = v0[9];

    return MEMORY[0x282200308](v0 + 6, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v9 = v0[3];
    v10 = v0[21];
    v11 = v0[1];

    return v11(v9, v10);
  }
}

uint64_t sub_254237A64()
{
  sub_254134CF0(v0[17], v0[18]);
  v1 = v0[20];
  v2 = v0[1];

  return v2();
}

uint64_t sub_254237AC8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AsyncJSONArrayObjectSequence.AsyncIterator();
  v7 = a3 + v6[10];
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 2;
  v8 = MEMORY[0x277D84F90];
  v9 = (a3 + v6[11]);
  v9[1] = 0;
  v9[2] = 0;
  *v9 = v8;
  v10 = a3 + v6[12];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a3 + v6[13]) = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  *(a3 + v6[9]) = a2;
  return result;
}

uint64_t sub_254237BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_254236F74(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_254237C20(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[59] = a1;
  v2[60] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9388, &qword_254254808);
  v2[61] = v3;
  v4 = *(v3 - 8);
  v2[62] = v4;
  v5 = *(v4 + 64) + 15;
  v2[63] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_254237D18, 0, 0);
}

uint64_t sub_254237D18()
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v2 + 52);
  *(v0 + 552) = v3;
  v4 = *(v1 + v3);
  v5 = *(v2 + 44);
  *(v0 + 556) = v5;
  v6 = (v1 + v5);
  v7 = v6[2];
  *(v0 + 512) = v7;
  if (v4 < 0 || v7 < v4)
  {
    __break(1u);
  }

  v8 = *(v0 + 504);
  v9 = *(v0 + 488);
  v10 = v6[1];
  *(v0 + 400) = *v6;
  *(v0 + 408) = v10;
  *(v0 + 416) = v7;
  *(v0 + 424) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9390, &qword_254254810);
  sub_254238F94();
  sub_25424E1F8();
  sub_25424D388();
  *(v0 + 528) = v4;
  *(v0 + 520) = 0;
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_254237E44, 0, 0);
}

uint64_t sub_254237E44()
{
  v80 = *MEMORY[0x277D85DE8];
  while (1)
  {
    if ((*(v0 + 57) & 1) == 0)
    {
      v12 = *(v0 + 56);
      *(v0 + 56) = 256;
      if ((v12 & 0xE0) == 0xC0)
      {
        v13 = 0;
        v14 = 1;
      }

      else if ((v12 & 0xF0) == 0xE0)
      {
        v13 = 0;
        v14 = 2;
      }

      else
      {
        if ((v12 & 0xF8) != 0xF0)
        {
          if (v12 < 0)
          {
            goto LABEL_148;
          }

          v78 = 0;
          v13 = 1;
          goto LABEL_31;
        }

        v13 = 0;
        v14 = 3;
      }

      v78 = v14;
LABEL_31:
      *(v0 + 592) = v12;
      *(v0 + 593) = 0;
      *(v0 + 595) = 0;
      if ((v13 & 1) != 0 || !*(v0 + 32))
      {
        goto LABEL_147;
      }

      v15 = 0;
      while (1)
      {
        v16 = *(v0 + 40);
        v17 = *(v0 + 16);
        if (v16 >= *(v17 + 16))
        {
          goto LABEL_147;
        }

        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_177;
        }

        v18 = (v17 + 16 * v16 + 40);
        while (1)
        {
          if (v16 >= *(v17 + 16))
          {
            goto LABEL_168;
          }

          v20 = *(v18 - 1);
          v19 = *v18;
          v21 = *(v0 + 48);
          v22 = *v18 >> 62;
          if (v22 > 1)
          {
            break;
          }

          if (v22)
          {
            if (__OFSUB__(HIDWORD(v20), v20))
            {
              goto LABEL_172;
            }

            v25 = HIDWORD(v20) - v20;
            goto LABEL_50;
          }

          if (v21 < BYTE6(v19))
          {
            goto LABEL_51;
          }

LABEL_38:
          sub_254134D04(v20, v19);
          *(v0 + 40) = ++v16;
          *(v0 + 48) = 0;
          v18 += 2;
          if (v16 >= *(*(v0 + 16) + 16))
          {
            goto LABEL_147;
          }
        }

        if (v22 != 2)
        {
          if (v21 < 0)
          {
            goto LABEL_196;
          }

          goto LABEL_38;
        }

        v24 = *(v20 + 16);
        v23 = *(v20 + 24);
        v25 = v23 - v24;
        if (__OFSUB__(v23, v24))
        {
          goto LABEL_173;
        }

LABEL_50:
        sub_254140660(*(v18 - 1), *v18);
        if (v21 >= v25)
        {
          goto LABEL_38;
        }

LABEL_51:
        if (v22 == 2)
        {
          v26 = *(v20 + 16);
          v27 = v26 + v21;
          if (!__OFADD__(v26, v21))
          {
            v28 = *(v20 + 24);
            goto LABEL_58;
          }

          goto LABEL_180;
        }

        if (v22 != 1)
        {
          v26 = 0;
          v28 = BYTE6(v19);
          v27 = v21;
          goto LABEL_58;
        }

        v26 = v20;
        v27 = v20 + v21;
        if (__OFADD__(v20, v21))
        {
          goto LABEL_179;
        }

        v28 = v20 >> 32;
LABEL_58:
        if (v27 < v26 || v28 < v27)
        {
          goto LABEL_196;
        }

        if (v22 == 2)
        {
          if (v27 >= *(v20 + 16))
          {
            if (v27 >= *(v20 + 24))
            {
              goto LABEL_184;
            }

            v29 = sub_25424D268();
            if (v29)
            {
              v32 = v29;
              v35 = sub_25424D298();
              v34 = v27 - v35;
              if (!__OFSUB__(v27, v35))
              {
                goto LABEL_72;
              }

              goto LABEL_186;
            }

            goto LABEL_198;
          }

          goto LABEL_182;
        }

        if (v22 == 1)
        {
          if (v27 >= v20 && v27 < v20 >> 32)
          {
            v29 = sub_25424D268();
            if (v29)
            {
              v32 = v29;
              v33 = sub_25424D298();
              v34 = v27 - v33;
              if (!__OFSUB__(v27, v33))
              {
LABEL_72:
                v36 = *(v32 + v34);
                goto LABEL_75;
              }

LABEL_185:
              __break(1u);
LABEL_186:
              __break(1u);
              goto LABEL_187;
            }

LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
            goto LABEL_201;
          }

LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }

        if (v27 >= BYTE6(v19))
        {
          goto LABEL_181;
        }

        *(v0 + 574) = v20;
        *(v0 + 582) = v19;
        *(v0 + 584) = BYTE2(v19);
        *(v0 + 585) = BYTE3(v19);
        *(v0 + 586) = BYTE4(v19);
        *(v0 + 587) = BYTE5(v19);
        v36 = *(v0 + 574 + v27);
LABEL_75:
        sub_254134D04(v20, v19);
        *(v0 + 48) = v21 + 1;
        if ((v36 & 0xC0) != 0x80)
        {
          *(v0 + 56) = v36;
          *(v0 + 57) = 0;
          goto LABEL_147;
        }

        ++v15;
        *(v0 + 592 + v15) = v36;
        if (v15 >= v78 || !*(v0 + 32))
        {
LABEL_147:
          v61 = sub_25424DD68();
          v63 = sub_254183160(v61, v62);

          if ((v63 & 0x100000000) == 0)
          {
            goto LABEL_148;
          }

LABEL_152:
          v71 = *(v0 + 64);
          v70 = *(v0 + 72);
          if (sub_25424DD98() >= 1)
          {
            v72 = HIBYTE(v70) & 0xF;
            if ((v70 & 0x2000000000000000) == 0)
            {
              v72 = v71 & 0xFFFFFFFFFFFFLL;
            }

            if (v72)
            {
              v29 = sub_2541832B0(v71, v70);
              if (v30)
              {
                goto LABEL_157;
              }

              __break(1u);
LABEL_198:
              __break(1u);
              goto LABEL_199;
            }

LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          v74 = sub_254238E00;
LABEL_159:
          v75 = *MEMORY[0x277D85DE8];
          v29 = v74;
          v30 = 0;
          v31 = 0;

          return MEMORY[0x2822009F8](v29, v30, v31);
        }
      }
    }

    if (!*(v0 + 32))
    {
      goto LABEL_152;
    }

    v1 = *(v0 + 40);
    v2 = *(v0 + 16);
    if (v1 >= *(v2 + 16))
    {
      goto LABEL_152;
    }

    if (v1 < 0)
    {
      goto LABEL_176;
    }

    v3 = (v2 + 16 * v1 + 40);
    while (1)
    {
      if (v1 >= *(v2 + 16))
      {
        goto LABEL_167;
      }

      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v0 + 48);
      v7 = *v3 >> 62;
      if (v7 <= 1)
      {
        break;
      }

      if (v7 == 2)
      {
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        v10 = v8 - v9;
        if (__OFSUB__(v8, v9))
        {
          goto LABEL_171;
        }

        goto LABEL_20;
      }

      if (v6 < 0)
      {
        v11 = 0;
        goto LABEL_84;
      }

LABEL_8:
      sub_254134D04(v5, v4);
      *(v0 + 40) = ++v1;
      *(v0 + 48) = 0;
      v3 += 2;
      if (v1 >= *(*(v0 + 16) + 16))
      {
        goto LABEL_152;
      }
    }

    if (!v7)
    {
      if (v6 < BYTE6(v4))
      {
        goto LABEL_21;
      }

      goto LABEL_8;
    }

    if (__OFSUB__(HIDWORD(v5), v5))
    {
      goto LABEL_170;
    }

    v10 = HIDWORD(v5) - v5;
LABEL_20:
    sub_254140660(*(v3 - 1), *v3);
    if (v6 >= v10)
    {
      goto LABEL_8;
    }

LABEL_21:
    if (v7)
    {
      v11 = v7 == 2 ? *(v5 + 16) : v5;
    }

    else
    {
      v11 = 0;
    }

LABEL_84:
    sub_2541347C8(v11, v6, v5, v4);
    v37 = sub_25424D4C8();
    v29 = sub_254134D04(v5, v4);
    v38 = v6 + 1;
    *(v0 + 48) = v6 + 1;
    if (v37 < 0)
    {
      break;
    }

LABEL_148:
    v64 = *(v0 + 72);
    *(v0 + 456) = *(v0 + 64);
    *(v0 + 464) = v64;
    sub_25424DD58();
    v65 = *(v0 + 456);
    v66 = *(v0 + 464);
    *(v0 + 64) = v65;
    *(v0 + 72) = v66;
    if (sub_25424DD98() >= 2)
    {
      v76 = HIBYTE(v66) & 0xF;
      if ((v66 & 0x2000000000000000) == 0)
      {
        v76 = v65 & 0xFFFFFFFFFFFFLL;
      }

      if (!v76)
      {
        goto LABEL_195;
      }

      v29 = sub_2541832B0(v65, v66);
      if (v30)
      {
LABEL_157:
        v73 = v29;
        *(v0 + 536) = v30;
        sub_2541832F8(1);
        *(v0 + 544) = v73;
        v74 = sub_2542387F0;
        goto LABEL_159;
      }

      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }
  }

  if ((v37 & 0xFFFFFFE0) != 0xFFFFFFC0)
  {
    if ((v37 & 0xFFFFFFF0) == 0xFFFFFFE0)
    {
      v39 = 2;
      goto LABEL_91;
    }

    if ((v37 & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v39 = 3;
      goto LABEL_91;
    }

    goto LABEL_148;
  }

  v39 = 1;
LABEL_91:
  v79 = v39;
  v40 = 0;
  *(v0 + 588) = v37;
  *(v0 + 589) = 0;
  *(v0 + 591) = 0;
  while (2)
  {
    v41 = *(v0 + 16);
    if (v1 >= *(v41 + 16))
    {
      goto LABEL_151;
    }

    v42 = v41 + 16 * v1;
    v44 = *(v42 + 32);
    v43 = *(v42 + 40);
    v45 = v43 >> 62;
    if ((v43 >> 62) > 1)
    {
      if (v45 == 2)
      {
        v47 = *(v44 + 16);
        v46 = *(v44 + 24);
        v48 = v46 - v47;
        if (__OFSUB__(v46, v47))
        {
          goto LABEL_174;
        }

        goto LABEL_103;
      }

      if (v38 < 0)
      {
        goto LABEL_200;
      }
    }

    else
    {
      if (!v45)
      {
        if (v38 < BYTE6(v43))
        {
          goto LABEL_104;
        }

        goto LABEL_109;
      }

      if (__OFSUB__(HIDWORD(v44), v44))
      {
        goto LABEL_175;
      }

      v48 = HIDWORD(v44) - v44;
LABEL_103:
      v29 = sub_254140660(*(v42 + 32), *(v42 + 40));
      if (v38 < v48)
      {
LABEL_104:
        if (v45 == 2)
        {
          goto LABEL_122;
        }

        goto LABEL_105;
      }
    }

LABEL_109:
    v29 = sub_254134D04(v44, v43);
    *(v0 + 40) = ++v1;
    *(v0 + 48) = 0;
    if (v1 >= *(*(v0 + 16) + 16))
    {
      goto LABEL_151;
    }

    v52 = (v42 + 56);
    while (2)
    {
      if (v1 >= *(v41 + 16))
      {
        goto LABEL_169;
      }

      v44 = *(v52 - 1);
      v43 = *v52;
      v45 = *v52 >> 62;
      if (v45 <= 1)
      {
        if (v45)
        {
          if (__OFSUB__(HIDWORD(v44), v44))
          {
            goto LABEL_175;
          }

          v53 = HIDWORD(v44) - v44;
          goto LABEL_120;
        }

        if (BYTE6(v43))
        {
          goto LABEL_121;
        }

LABEL_112:
        v29 = sub_254134D04(v44, v43);
        *(v0 + 40) = ++v1;
        *(v0 + 48) = 0;
        v52 += 2;
        if (v1 >= *(*(v0 + 16) + 16))
        {
          goto LABEL_151;
        }

        continue;
      }

      break;
    }

    if (v45 != 2)
    {
      goto LABEL_112;
    }

    v55 = *(v44 + 16);
    v54 = *(v44 + 24);
    v53 = v54 - v55;
    if (__OFSUB__(v54, v55))
    {
      goto LABEL_174;
    }

LABEL_120:
    v29 = sub_254140660(*(v52 - 1), *v52);
    if (v53 <= 0)
    {
      goto LABEL_112;
    }

LABEL_121:
    v38 = 0;
    if (v45 == 2)
    {
LABEL_122:
      v49 = *(v44 + 16);
      v50 = v49 + v38;
      if (!__OFADD__(v49, v38))
      {
        v51 = *(v44 + 24);
        goto LABEL_125;
      }

LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
    }

LABEL_105:
    if (v45 != 1)
    {
      v49 = 0;
      v51 = BYTE6(v43);
      v50 = v38;
      goto LABEL_125;
    }

    v49 = v44;
    v50 = v44 + v38;
    if (__OFADD__(v44, v38))
    {
      goto LABEL_188;
    }

    v51 = v44 >> 32;
LABEL_125:
    if (v50 < v49 || v51 < v50)
    {
      goto LABEL_200;
    }

    if (v45 == 2)
    {
      if (v50 < *(v44 + 16))
      {
        goto LABEL_189;
      }

      if (v50 >= *(v44 + 24))
      {
        goto LABEL_193;
      }

      v29 = sub_25424D268();
      if (!v29)
      {
        goto LABEL_202;
      }

      v56 = v29;
      v59 = sub_25424D298();
      v58 = v50 - v59;
      if (__OFSUB__(v50, v59))
      {
        goto LABEL_194;
      }

LABEL_139:
      v60 = *(v56 + v58);
LABEL_142:
      v29 = sub_254134D04(v44, v43);
      *(v0 + 48) = ++v38;
      if ((v60 & 0xC0) == 0x80)
      {
        ++v40;
        *(v0 + 588 + v40) = v60;
        if (v40 == v79)
        {
          goto LABEL_151;
        }

        continue;
      }

      *(v0 + 56) = v60;
      *(v0 + 57) = 0;
LABEL_151:
      v67 = sub_25424DD68();
      v69 = sub_254183160(v67, v68);

      if ((v69 & 0x100000000) != 0)
      {
        goto LABEL_152;
      }

      goto LABEL_148;
    }

    break;
  }

  if (v45 != 1)
  {
    if (v50 >= BYTE6(v43))
    {
      goto LABEL_190;
    }

    *(v0 + 560) = v44;
    *(v0 + 568) = v43;
    *(v0 + 570) = BYTE2(v43);
    *(v0 + 571) = BYTE3(v43);
    *(v0 + 572) = BYTE4(v43);
    *(v0 + 573) = BYTE5(v43);
    v60 = *(v0 + 560 + v50);
    goto LABEL_142;
  }

  if (v50 < v44 || v50 >= v44 >> 32)
  {
    goto LABEL_191;
  }

  v29 = sub_25424D268();
  if (v29)
  {
    v56 = v29;
    v57 = sub_25424D298();
    v58 = v50 - v57;
    if (__OFSUB__(v50, v57))
    {
      goto LABEL_192;
    }

    goto LABEL_139;
  }

LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_2542387F0()
{
  v77 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 520);
  sub_25424E1E8();
  if (v1)
  {
    (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));

    v2 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v2;
    v3 = *(v0 + 64);
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 192) = v3;
    sub_254238FF8(v0 + 144);
LABEL_3:
    v4 = *(v0 + 504);

    v5 = *(v0 + 8);
    v6 = *MEMORY[0x277D85DE8];

    return v5();
  }

  v8 = *(v0 + 544) == 12435439 && *(v0 + 536) == 0xA300000000000000;
  if (v8 || (v9 = *(v0 + 536), v10 = sub_25424EAB8(), v11 = *(v0 + 536), (v10 & 1) != 0))
  {
    v12 = *(v0 + 528);
    v13 = *(v0 + 512);
    v14 = *(v0 + 32);
    *(v0 + 336) = *(v0 + 16);
    *(v0 + 352) = v14;
    v15 = *(v0 + 64);
    *(v0 + 368) = *(v0 + 48);
    *(v0 + 384) = v15;
    sub_254238FF8(v0 + 336);

    v16 = v13 - v12;
    if (!__OFSUB__(v13, v12))
    {
      v18 = *(v0 + 496);
      v17 = *(v0 + 504);
      v19 = *(v0 + 488);
      if (v16 > 3)
      {
        sub_254182650();
        swift_allocError();
        *v25 = 0xD000000000000016;
        v25[1] = 0x8000000254250740;
        swift_willThrow();
        (*(v18 + 8))(v17, v19);
        goto LABEL_3;
      }

      (*(v18 + 8))(*(v0 + 504), *(v0 + 488));
      v20 = 0;
      v21 = 0xF000000000000000;
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_54;
  }

  if ((v11 & 0x1000000000000000) != 0)
  {
LABEL_54:
    v76 = *(v0 + 544);
    v26 = sub_25424DDF8();
    goto LABEL_22;
  }

  if ((v11 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v26 = *(v0 + 544) & 0xFFFFFFFFFFFFLL;
  }

LABEL_22:
  v27 = *(v0 + 528);
  v28 = v27 + v26;
  if (__OFADD__(v27, v26))
  {
    __break(1u);
    goto LABEL_56;
  }

  v29 = *(v0 + 544);
  v30 = *(v0 + 536);
  v32 = *(v0 + 472);
  v31 = *(v0 + 480);
  *(v31 + *(v0 + 552)) = v28;
  v33 = v31 + *(v32 + 40);
  sub_25420C7A4(v29, v30);
  v34 = *v33;
  if (*(v33 + 16))
  {
    if (*(v33 + 16) == 1)
    {
      v35 = *(v0 + 536);
      v37 = *(v0 + 496);
      v36 = *(v0 + 504);
      v38 = *(v0 + 488);
      v39 = *(v33 + 8);

      v40 = *(v0 + 32);
      *(v0 + 272) = *(v0 + 16);
      *(v0 + 288) = v40;
      v41 = *(v0 + 64);
      *(v0 + 304) = *(v0 + 48);
      *(v0 + 320) = v41;
      sub_254238FF8(v0 + 272);
      sub_25424E688();

      MEMORY[0x259C05CA0](v34, v39);
      sub_254183380(v34, v39, 1);
      sub_254182650();
      swift_allocError();
      *v42 = 0xD000000000000016;
      v42[1] = 0x8000000254250720;
      swift_willThrow();
      (*(v37 + 8))(v36, v38);
      goto LABEL_3;
    }

    goto LABEL_30;
  }

  swift_beginAccess();
  if (*(*(v34 + 16) + 16) >= 2uLL)
  {
    v43 = *(v0 + 536);
    v44 = *(v0 + 472);
    v45 = *(v0 + 480);

    v46 = v45 + *(v44 + 48);
    if (*(v46 + 8))
    {
      *v46 = *(v0 + 528);
      *(v46 + 8) = 0;
    }

    goto LABEL_31;
  }

  v47 = *(v0 + 480) + *(*(v0 + 472) + 48);
  if ((*(v47 + 8) & 1) == 0)
  {
    v50 = *v47;
    v51 = *(v0 + 544);
    v52 = *(v0 + 536);
    v53 = *(v0 + 32);
    *(v0 + 208) = *(v0 + 16);
    *(v0 + 224) = v53;
    v54 = *(v0 + 64);
    *(v0 + 240) = *(v0 + 48);
    *(v0 + 256) = v54;
    sub_254238FF8(v0 + 208);
    *v47 = 0;
    *(v47 + 8) = 1;
    if (v51 == 44 && v52 == 0xE100000000000000)
    {
      v55 = *(v0 + 536);

      v56 = *(v0 + 528);
    }

    else
    {
      v57 = *(v0 + 544);
      v58 = *(v0 + 536);
      v59 = *(v0 + 528);
      v60 = sub_25424EAB8();

      if (v60)
      {
        v56 = v59;
      }

      else
      {
        v56 = v28;
      }
    }

    v61 = *(v0 + 552);
    v62 = *(v0 + 480);
    v63 = v62 + *(v0 + 556);
    v64 = sub_2541D0258(v56);
    v66 = v64;
    v67 = v65;
    *(v62 + v61) = 0;
    v68 = v65 >> 62;
    if ((v65 >> 62) > 1)
    {
      if (v68 == 2)
      {
        v70 = sub_2541347C8(*(v64 + 16), v50, v64, v65);
        v69 = *(v66 + 16);
        v71 = *(v66 + 24);
        goto LABEL_50;
      }
    }

    else if (v68)
    {
      v69 = v64;
      v70 = sub_2541347C8(v64, v50, v64, v65);
      v71 = v66 >> 32;
      goto LABEL_50;
    }

    v70 = sub_2541347C8(0, v50, v64, v65);
    if (v68 > 1)
    {
      v71 = 0;
      v69 = 0;
    }

    else if (v68)
    {
      v69 = v66;
      v71 = v66 >> 32;
    }

    else
    {
      v69 = 0;
      v71 = BYTE6(v67);
    }

LABEL_50:
    if (v71 >= v70 && v71 >= v69)
    {
      v73 = *(v0 + 496);
      v72 = *(v0 + 504);
      v74 = *(v0 + 488);
      v20 = sub_25424D4B8();
      v21 = v75;
      sub_254134D04(v66, v67);
      (*(v73 + 8))(v72, v74);
LABEL_14:
      v22 = *(v0 + 504);

      v23 = *(v0 + 8);
      v24 = *MEMORY[0x277D85DE8];

      return v23(v20, v21);
    }

LABEL_56:
    __break(1u);
  }

LABEL_30:
  v48 = *(v0 + 536);

LABEL_31:
  *(v0 + 528) = v28;
  *(v0 + 520) = 0;
  v49 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_254237E44, 0, 0);
}

uint64_t sub_254238E00()
{
  v7 = *MEMORY[0x277D85DE8];
  (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));
  v1 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v1;
  v2 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v2;
  sub_254238FF8(v0 + 80);
  v3 = *(v0 + 504);

  v4 = *(v0 + 8);
  v5 = *MEMORY[0x277D85DE8];

  return v4(0, 0xF000000000000000);
}

uint64_t sub_254238EC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25413439C;

  return sub_2542370CC(a2);
}

unint64_t sub_254238F94()
{
  result = qword_27F5B9398;
  if (!qword_27F5B9398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5B9390, &qword_254254810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9398);
  }

  return result;
}

uint64_t sub_254238FF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5B93A0, &qword_254254818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_254239068(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    sub_25414810C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_254239124(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = (((v12 & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_28:
    if (v10 < 0x7FFFFFFF)
    {
      v22 = *(((a1 + v12) & 0xFFFFFFFFFFFFFFF8) + 32);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }

    else
    {
      v21 = *(v9 + 48);

      return v21(a1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v11 + (v14 | v20) + 1;
}

void sub_2542392B4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = (((v11 & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 8;
  if ((((v11 & 0xFFFFFFF8) + 79) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v14 = a3 - v12 + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a3)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a2 > v12)
  {
    if ((((v11 & 0xFFFFFFF8) + 79) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a2 - v12;
    }

    else
    {
      v18 = 1;
    }

    if ((((v11 & 0xFFFFFFF8) + 79) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v19 = ~v12 + a2;
      bzero(a1, v13);
      *a1 = v19;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        *(a1 + v13) = v18;
      }

      else
      {
        *(a1 + v13) = v18;
      }
    }

    else if (v17)
    {
      *(a1 + v13) = v18;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v13) = 0;
  }

  else if (v17)
  {
    *(a1 + v13) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v10 < 0x7FFFFFFF)
  {
    v21 = ((a1 + v11) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
      v21[5] = 0;
      v21[6] = 0;
    }

    else
    {
      v22 = (a2 - 1);
    }

    v21[4] = v22;
  }

  else
  {
    v20 = *(v9 + 56);

    v20(a1, a2);
  }
}

uint64_t sub_254239494@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SomeAccessoryEvent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25423F514(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        a1[3] = type metadata accessor for SmokeDetectorEvent();
        v9 = sub_254240A44(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
        v10 = type metadata accessor for SmokeDetectorEvent;
      }

      else
      {
        a1[3] = type metadata accessor for ThermostatAutomationEvent(0);
        v9 = sub_254240A44(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
        v10 = type metadata accessor for ThermostatAutomationEvent;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      a1[3] = type metadata accessor for ThermostatAutomationFailureEvent();
      v9 = sub_254240A44(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
      v10 = type metadata accessor for ThermostatAutomationFailureEvent;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      a1[3] = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
      v9 = sub_254240A44(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
      v10 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
    }

    else
    {
      a1[3] = type metadata accessor for WindowEvent();
      v9 = sub_254240A44(&qword_27F5B9198, type metadata accessor for WindowEvent);
      v10 = type metadata accessor for WindowEvent;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      a1[3] = type metadata accessor for DoorEvent();
      v9 = sub_254240A44(&qword_27F5B91D8, type metadata accessor for DoorEvent);
      v10 = type metadata accessor for DoorEvent;
    }

    else
    {
      a1[3] = type metadata accessor for ContactSensorEvent();
      v9 = sub_254240A44(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
      v10 = type metadata accessor for ContactSensorEvent;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    a1[3] = type metadata accessor for GarageDoorEvent();
    v9 = sub_254240A44(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
    v10 = type metadata accessor for GarageDoorEvent;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    a1[3] = type metadata accessor for LockEvent();
    v9 = sub_254240A44(&qword_27F5B91C8, type metadata accessor for LockEvent);
    v10 = type metadata accessor for LockEvent;
  }

  else
  {
    a1[3] = type metadata accessor for SecuritySystemEvent();
    v9 = sub_254240A44(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
    v10 = type metadata accessor for SecuritySystemEvent;
  }

  v11 = v10;
  a1[4] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_25423A0B4(v7, boxed_opaque_existential_1, v11);
}

uint64_t SomeAccessoryEvent.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v43 = type metadata accessor for WindowEvent();
  v3 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
  v5 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for ThermostatAutomationFailureEvent();
  v7 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for ThermostatAutomationEvent(0);
  v9 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for SmokeDetectorEvent();
  v11 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for SecuritySystemEvent();
  v13 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LockEvent();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for GarageDoorEvent();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DoorEvent();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ContactSensorEvent();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for SomeAccessoryEvent();
  v31 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v33 = &v42 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  sub_254140708(a1, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B91F8, &unk_25425D2D0);
  if (swift_dynamicCast())
  {
    sub_25423A0B4(v30, v33, type metadata accessor for ContactSensorEvent);
LABEL_21:
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1(v60);
    sub_25423A0B4(v33, v55, type metadata accessor for SomeAccessoryEvent);
    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  if (swift_dynamicCast())
  {
    sub_25423A0B4(v26, v33, type metadata accessor for DoorEvent);
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    sub_25423A0B4(v22, v33, type metadata accessor for GarageDoorEvent);
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    sub_25423A0B4(v18, v33, type metadata accessor for LockEvent);
    goto LABEL_21;
  }

  v34 = v52;
  if (swift_dynamicCast())
  {
    sub_25423A0B4(v34, v33, type metadata accessor for SecuritySystemEvent);
    goto LABEL_21;
  }

  v35 = v50;
  if (swift_dynamicCast())
  {
    sub_25423A0B4(v35, v33, type metadata accessor for SmokeDetectorEvent);
    goto LABEL_21;
  }

  v36 = v48;
  if (swift_dynamicCast())
  {
    sub_25423A0B4(v36, v33, type metadata accessor for ThermostatAutomationEvent);
    goto LABEL_21;
  }

  v37 = v46;
  if (swift_dynamicCast())
  {
    sub_25423A0B4(v37, v33, type metadata accessor for ThermostatAutomationFailureEvent);
    goto LABEL_21;
  }

  v38 = v44;
  if (swift_dynamicCast())
  {
    sub_25423A0B4(v38, v33, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
    goto LABEL_21;
  }

  v39 = v42;
  if (swift_dynamicCast())
  {
    sub_25423A0B4(v39, v33, type metadata accessor for WindowEvent);
    goto LABEL_21;
  }

  v58 = 0;
  v59 = 0xE000000000000000;
  sub_25424E688();
  MEMORY[0x259C05CA0](0xD000000000000019, 0x8000000254250CF0);
  v57 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC468, &qword_254262DC8);
  v41 = sub_25424DD08();
  MEMORY[0x259C05CA0](v41);

  MEMORY[0x259C05CA0](8250, 0xE200000000000000);
  __swift_project_boxed_opaque_existential_1(v56, v56[3]);
  sub_25424EA98();
  result = sub_25424E858();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for SomeAccessoryEvent()
{
  result = qword_27F5BC580;
  if (!qword_27F5BC580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25423A0B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SomeAccessoryEvent.anyAccessoryEvent.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_254239494(v7);
  v2 = v8;
  v3 = v9;
  v4 = __swift_project_boxed_opaque_existential_1(v7, v8);
  a1[3] = v2;
  a1[4] = *(v3 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

unint64_t sub_25423A1B8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000021;
    if (a1 != 8)
    {
      v5 = 0x776F646E6977;
    }

    if (a1 == 7)
    {
      v5 = 0xD00000000000001BLL;
    }

    v6 = 0x746544656B6F6D73;
    if (a1 != 5)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x53746361746E6F63;
    v2 = 0x6F44656761726167;
    v3 = 1801678700;
    if (a1 != 3)
    {
      v3 = 0x7974697275636573;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1919905636;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_25423A31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254240624(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25423A350(uint64_t a1)
{
  v2 = sub_25423F4C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A38C(uint64_t a1)
{
  v2 = sub_25423F4C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25423A3C8(uint64_t a1)
{
  v2 = sub_25423F86C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A404(uint64_t a1)
{
  v2 = sub_25423F86C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25423A440(uint64_t a1)
{
  v2 = sub_25423F818();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A47C(uint64_t a1)
{
  v2 = sub_25423F818();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25423A4B8(uint64_t a1)
{
  v2 = sub_25423F7C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A4F4(uint64_t a1)
{
  v2 = sub_25423F7C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25423A530(uint64_t a1)
{
  v2 = sub_25423F770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A56C(uint64_t a1)
{
  v2 = sub_25423F770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25423A5A8(uint64_t a1)
{
  v2 = sub_25423F71C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A5E4(uint64_t a1)
{
  v2 = sub_25423F71C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25423A620(uint64_t a1)
{
  v2 = sub_25423F6C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A65C(uint64_t a1)
{
  v2 = sub_25423F6C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25423A698(uint64_t a1)
{
  v2 = sub_25423F674();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A6D4(uint64_t a1)
{
  v2 = sub_25423F674();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25423A710(uint64_t a1)
{
  v2 = sub_25423F620();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A74C(uint64_t a1)
{
  v2 = sub_25423F620();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25423A788(uint64_t a1)
{
  v2 = sub_25423F5CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A7C4(uint64_t a1)
{
  v2 = sub_25423F5CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25423A800(uint64_t a1)
{
  v2 = sub_25423F578();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25423A83C(uint64_t a1)
{
  v2 = sub_25423F578();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SomeAccessoryEvent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC470, &qword_254262DD0);
  v129 = *(v2 - 8);
  v130 = v2;
  v3 = *(v129 + 64);
  MEMORY[0x28223BE20](v2);
  v128 = &v84 - v4;
  v126 = type metadata accessor for WindowEvent();
  v5 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v127 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC478, &qword_254262DD8);
  v124 = *(v7 - 8);
  v125 = v7;
  v8 = *(v124 + 64);
  MEMORY[0x28223BE20](v7);
  v123 = &v84 - v9;
  v121 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
  v10 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v122 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC480, &qword_254262DE0);
  v119 = *(v12 - 8);
  v120 = v12;
  v13 = *(v119 + 64);
  MEMORY[0x28223BE20](v12);
  v118 = &v84 - v14;
  v116 = type metadata accessor for ThermostatAutomationFailureEvent();
  v15 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v117 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC488, &qword_254262DE8);
  v114 = *(v115 - 8);
  v17 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v113 = &v84 - v18;
  v111 = type metadata accessor for ThermostatAutomationEvent(0);
  v19 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v112 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC490, &qword_254262DF0);
  v109 = *(v110 - 8);
  v21 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v108 = &v84 - v22;
  v105 = type metadata accessor for SmokeDetectorEvent();
  v23 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v107 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC498, &qword_254262DF8);
  v104 = *(v106 - 8);
  v25 = *(v104 + 64);
  MEMORY[0x28223BE20](v106);
  v103 = &v84 - v26;
  v101 = type metadata accessor for SecuritySystemEvent();
  v27 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v102 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC4A0, &qword_254262E00);
  v99 = *(v100 - 8);
  v29 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v98 = &v84 - v30;
  v96 = type metadata accessor for LockEvent();
  v31 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v97 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC4A8, &qword_254262E08);
  v94 = *(v95 - 8);
  v33 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v84 - v34;
  v91 = type metadata accessor for GarageDoorEvent();
  v35 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v92 = &v84 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC4B0, &qword_254262E10);
  v89 = *(v90 - 8);
  v37 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v88 = &v84 - v38;
  v86 = type metadata accessor for DoorEvent();
  v39 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v87 = &v84 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC4B8, &qword_254262E18);
  v84 = *(v85 - 8);
  v41 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v43 = &v84 - v42;
  v44 = type metadata accessor for ContactSensorEvent();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v47 = &v84 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SomeAccessoryEvent();
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v84 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC4C0, &unk_254262E20);
  v133 = *(v52 - 8);
  v134 = v52;
  v53 = *(v133 + 64);
  MEMORY[0x28223BE20](v52);
  v55 = &v84 - v54;
  v56 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25423F4C0();
  v132 = v55;
  sub_25424EC78();
  sub_25423F514(v131, v51);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v58 = v107;
        sub_25423A0B4(v51, v107, type metadata accessor for SmokeDetectorEvent);
        v140 = 5;
        sub_25423F6C8();
        v70 = v108;
        v60 = v134;
        v61 = v132;
        sub_25424E9A8();
        sub_254240A44(&qword_27F5BACF0, type metadata accessor for SmokeDetectorEvent);
        v71 = v110;
        sub_25424EA18();
        (*(v109 + 8))(v70, v71);
        v63 = type metadata accessor for SmokeDetectorEvent;
      }

      else
      {
        v58 = v112;
        sub_25423A0B4(v51, v112, type metadata accessor for ThermostatAutomationEvent);
        v141 = 6;
        sub_25423F674();
        v82 = v113;
        v60 = v134;
        v61 = v132;
        sub_25424E9A8();
        sub_254240A44(&qword_27F5B9838, type metadata accessor for ThermostatAutomationEvent);
        v83 = v115;
        sub_25424EA18();
        (*(v114 + 8))(v82, v83);
        v63 = type metadata accessor for ThermostatAutomationEvent;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v58 = v117;
      sub_25423A0B4(v51, v117, type metadata accessor for ThermostatAutomationFailureEvent);
      v142 = 7;
      sub_25423F620();
      v74 = v118;
      v60 = v134;
      v61 = v132;
      sub_25424E9A8();
      sub_254240A44(&qword_27F5BAB98, type metadata accessor for ThermostatAutomationFailureEvent);
      v75 = v120;
      sub_25424EA18();
      (*(v119 + 8))(v74, v75);
      v63 = type metadata accessor for ThermostatAutomationFailureEvent;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v58 = v122;
      sub_25423A0B4(v51, v122, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
      v143 = 8;
      sub_25423F5CC();
      v64 = v123;
      v60 = v134;
      v61 = v132;
      sub_25424E9A8();
      sub_254240A44(&qword_27F5BA860, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
      v65 = v125;
      sub_25424EA18();
      (*(v124 + 8))(v64, v65);
      v63 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
    }

    else
    {
      v58 = v127;
      sub_25423A0B4(v51, v127, type metadata accessor for WindowEvent);
      v144 = 9;
      sub_25423F578();
      v78 = v128;
      v60 = v134;
      v61 = v132;
      sub_25424E9A8();
      sub_254240A44(&qword_27F5BB1B0, type metadata accessor for WindowEvent);
      v79 = v130;
      sub_25424EA18();
      (*(v129 + 8))(v78, v79);
      v63 = type metadata accessor for WindowEvent;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_25423A0B4(v51, v47, type metadata accessor for ContactSensorEvent);
      v135 = 0;
      sub_25423F86C();
      v66 = v134;
      v67 = v132;
      sub_25424E9A8();
      sub_254240A44(&qword_27F5BBDF0, type metadata accessor for ContactSensorEvent);
      v68 = v85;
      sub_25424EA18();
      (*(v84 + 8))(v43, v68);
      sub_2542409E4(v47, type metadata accessor for ContactSensorEvent);
      return (*(v133 + 8))(v67, v66);
    }

    v58 = v87;
    sub_25423A0B4(v51, v87, type metadata accessor for DoorEvent);
    v136 = 1;
    sub_25423F818();
    v80 = v88;
    v60 = v134;
    v61 = v132;
    sub_25424E9A8();
    sub_254240A44(&qword_27F5BBD68, type metadata accessor for DoorEvent);
    v81 = v90;
    sub_25424EA18();
    (*(v89 + 8))(v80, v81);
    v63 = type metadata accessor for DoorEvent;
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v58 = v92;
    sub_25423A0B4(v51, v92, type metadata accessor for GarageDoorEvent);
    v137 = 2;
    sub_25423F7C4();
    v72 = v93;
    v60 = v134;
    v61 = v132;
    sub_25424E9A8();
    sub_254240A44(&qword_27F5BBBE0, type metadata accessor for GarageDoorEvent);
    v73 = v95;
    sub_25424EA18();
    (*(v94 + 8))(v72, v73);
    v63 = type metadata accessor for GarageDoorEvent;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v58 = v97;
    sub_25423A0B4(v51, v97, type metadata accessor for LockEvent);
    v138 = 3;
    sub_25423F770();
    v59 = v98;
    v60 = v134;
    v61 = v132;
    sub_25424E9A8();
    sub_254240A44(&qword_27F5B8EA0, type metadata accessor for LockEvent);
    v62 = v100;
    sub_25424EA18();
    (*(v99 + 8))(v59, v62);
    v63 = type metadata accessor for LockEvent;
  }

  else
  {
    v58 = v102;
    sub_25423A0B4(v51, v102, type metadata accessor for SecuritySystemEvent);
    v139 = 4;
    sub_25423F71C();
    v76 = v103;
    v60 = v134;
    v61 = v132;
    sub_25424E9A8();
    sub_254240A44(&qword_27F5BA130, type metadata accessor for SecuritySystemEvent);
    v77 = v106;
    sub_25424EA18();
    (*(v104 + 8))(v76, v77);
    v63 = type metadata accessor for SecuritySystemEvent;
  }

  sub_2542409E4(v58, v63);
  return (*(v133 + 8))(v61, v60);
}

uint64_t SomeAccessoryEvent.hash(into:)(uint64_t a1)
{
  v128 = a1;
  v123 = type metadata accessor for WindowEvent();
  v1 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v122 = &v113 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v118 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ThermostatAutomationFailureEvent();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v117 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ThermostatAutomationEvent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v116 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for SmokeDetectorEvent();
  v12 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v120 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SecuritySystemEvent();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LockEvent();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for GarageDoorEvent();
  v22 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v119 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DoorEvent();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_25424D948();
  v125 = *(v28 - 8);
  v126 = v28;
  v29 = *(v125 + 64);
  MEMORY[0x28223BE20](v28);
  v124 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v35 = &v113 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v113 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v113 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v113 - v42;
  v115 = type metadata accessor for ContactSensorEvent();
  v44 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v46 = &v113 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for SomeAccessoryEvent();
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v113 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25423F514(v127, v50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      v67 = v126;
      if (EnumCaseMultiPayload != 5)
      {
        v21 = v116;
        sub_25423A0B4(v50, v116, type metadata accessor for ThermostatAutomationEvent);
        MEMORY[0x259C06AA0](6);
        ThermostatAutomationEvent.hash(into:)();
        v52 = type metadata accessor for ThermostatAutomationEvent;
        goto LABEL_24;
      }

      v17 = v120;
      sub_25423A0B4(v50, v120, type metadata accessor for SmokeDetectorEvent);
      MEMORY[0x259C06AA0](5);
      sub_25424D8B8();
      sub_254240A44(&qword_27F5B89C0, MEMORY[0x277CC9578]);
      sub_25424DC28();
      v68 = type metadata accessor for EventBase(0);
      v69 = *(v68 + 20);
      sub_254240A44(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
      sub_25424DC28();
      MEMORY[0x259C06AA0](qword_254263C40[v17[*(v68 + 24)]]);
      v70 = type metadata accessor for AccessoryEventBase(0);
      v71 = &v17[v70[5]];
      sub_25424DC28();
      v72 = &v17[v70[6]];
      v73 = *v72;
      v74 = *(v72 + 1);
      sub_25424DD88();
      v75 = &v17[v70[7]];
      sub_25424DC28();
      v76 = &v17[v70[8]];
      v77 = *v76;
      v78 = *(v76 + 1);
      sub_25424DD88();
      sub_254149770(&v17[v70[9]], v38);
      v79 = v125;
      if ((*(v125 + 48))(v38, 1, v67) == 1)
      {
        sub_25424EBF8();
      }

      else
      {
        v111 = v124;
        (*(v79 + 32))(v124, v38, v67);
        sub_25424EBF8();
        sub_25424DC28();
        (*(v79 + 8))(v111, v67);
      }

      MEMORY[0x259C06AA0](v17[*(v121 + 20)]);
      v93 = type metadata accessor for SmokeDetectorEvent;
    }

    else
    {
      v53 = v126;
      if (EnumCaseMultiPayload == 7)
      {
        v21 = v117;
        sub_25423A0B4(v50, v117, type metadata accessor for ThermostatAutomationFailureEvent);
        MEMORY[0x259C06AA0](7);
        ThermostatAutomationFailureEvent.hash(into:)();
        v52 = type metadata accessor for ThermostatAutomationFailureEvent;
        goto LABEL_24;
      }

      if (EnumCaseMultiPayload == 8)
      {
        v21 = v118;
        sub_25423A0B4(v50, v118, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
        MEMORY[0x259C06AA0](8);
        ThermostatReducedEnergyAutomationEvent.hash(into:)();
        v52 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
        goto LABEL_24;
      }

      v17 = v122;
      sub_25423A0B4(v50, v122, type metadata accessor for WindowEvent);
      MEMORY[0x259C06AA0](9);
      sub_25424D8B8();
      sub_254240A44(&qword_27F5B89C0, MEMORY[0x277CC9578]);
      sub_25424DC28();
      v94 = type metadata accessor for EventBase(0);
      v95 = *(v94 + 20);
      sub_254240A44(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
      sub_25424DC28();
      MEMORY[0x259C06AA0](qword_254263C40[v17[*(v94 + 24)]]);
      v96 = type metadata accessor for AccessoryEventBase(0);
      v97 = &v17[v96[5]];
      sub_25424DC28();
      v98 = &v17[v96[6]];
      v99 = *v98;
      v100 = *(v98 + 1);
      sub_25424DD88();
      v101 = &v17[v96[7]];
      sub_25424DC28();
      v102 = &v17[v96[8]];
      v103 = *v102;
      v104 = *(v102 + 1);
      sub_25424DD88();
      sub_254149770(&v17[v96[9]], v35);
      v105 = v125;
      if ((*(v125 + 48))(v35, 1, v53) == 1)
      {
        sub_25424EBF8();
      }

      else
      {
        v109 = v124;
        (*(v105 + 32))(v124, v35, v53);
        sub_25424EBF8();
        sub_25424DC28();
        (*(v105 + 8))(v109, v53);
      }

      MEMORY[0x259C06AA0](v17[*(v123 + 20)]);
      v93 = type metadata accessor for WindowEvent;
    }

LABEL_33:
    v106 = v93;
    v107 = v17;
    return sub_2542409E4(v107, v106);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v17 = v119;
      sub_25423A0B4(v50, v119, type metadata accessor for GarageDoorEvent);
      MEMORY[0x259C06AA0](2);
      sub_25424D8B8();
      sub_254240A44(&qword_27F5B89C0, MEMORY[0x277CC9578]);
      sub_25424DC28();
      v80 = type metadata accessor for EventBase(0);
      v81 = *(v80 + 20);
      sub_254240A44(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
      v82 = v126;
      sub_25424DC28();
      MEMORY[0x259C06AA0](qword_254263C40[v17[*(v80 + 24)]]);
      v83 = type metadata accessor for AccessoryEventBase(0);
      v84 = &v17[v83[5]];
      sub_25424DC28();
      v85 = &v17[v83[6]];
      v86 = *v85;
      v87 = *(v85 + 1);
      sub_25424DD88();
      v88 = &v17[v83[7]];
      sub_25424DC28();
      v89 = &v17[v83[8]];
      v90 = *v89;
      v91 = *(v89 + 1);
      sub_25424DD88();
      sub_254149770(&v17[v83[9]], v41);
      v92 = v125;
      if ((*(v125 + 48))(v41, 1, v82) == 1)
      {
        sub_25424EBF8();
      }

      else
      {
        v108 = v124;
        (*(v92 + 32))(v124, v41, v82);
        sub_25424EBF8();
        sub_25424DC28();
        (*(v92 + 8))(v108, v82);
      }

      MEMORY[0x259C06AA0](v17[*(v114 + 20)]);
      v93 = type metadata accessor for GarageDoorEvent;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_25423A0B4(v50, v21, type metadata accessor for LockEvent);
        MEMORY[0x259C06AA0](3);
        LockEvent.hash(into:)();
        v52 = type metadata accessor for LockEvent;
LABEL_24:
        v106 = v52;
        v107 = v21;
        return sub_2542409E4(v107, v106);
      }

      sub_25423A0B4(v50, v17, type metadata accessor for SecuritySystemEvent);
      MEMORY[0x259C06AA0](4);
      SecuritySystemEvent.hash(into:)();
      v93 = type metadata accessor for SecuritySystemEvent;
    }

    goto LABEL_33;
  }

  if (EnumCaseMultiPayload)
  {
    sub_25423A0B4(v50, v27, type metadata accessor for DoorEvent);
    MEMORY[0x259C06AA0](1);
    DoorEvent.hash(into:)();
    v106 = type metadata accessor for DoorEvent;
    v107 = v27;
  }

  else
  {
    sub_25423A0B4(v50, v46, type metadata accessor for ContactSensorEvent);
    MEMORY[0x259C06AA0](0);
    sub_25424D8B8();
    sub_254240A44(&qword_27F5B89C0, MEMORY[0x277CC9578]);
    sub_25424DC28();
    v54 = type metadata accessor for EventBase(0);
    v55 = *(v54 + 20);
    sub_254240A44(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
    v56 = v126;
    sub_25424DC28();
    MEMORY[0x259C06AA0](qword_254263C40[v46[*(v54 + 24)]]);
    v57 = type metadata accessor for AccessoryEventBase(0);
    v58 = &v46[v57[5]];
    sub_25424DC28();
    v59 = &v46[v57[6]];
    v60 = *v59;
    v61 = *(v59 + 1);
    sub_25424DD88();
    v62 = &v46[v57[7]];
    sub_25424DC28();
    v63 = &v46[v57[8]];
    v64 = *v63;
    v65 = *(v63 + 1);
    sub_25424DD88();
    sub_254149770(&v46[v57[9]], v43);
    v66 = v125;
    if ((*(v125 + 48))(v43, 1, v56) == 1)
    {
      sub_25424EBF8();
    }

    else
    {
      v110 = v124;
      (*(v66 + 32))(v124, v43, v56);
      sub_25424EBF8();
      sub_25424DC28();
      (*(v66 + 8))(v110, v56);
    }

    MEMORY[0x259C06AA0](v46[*(v115 + 20)]);
    v106 = type metadata accessor for ContactSensorEvent;
    v107 = v46;
  }

  return sub_2542409E4(v107, v106);
}

uint64_t SomeAccessoryEvent.hashValue.getter()
{
  sub_25424EBD8();
  SomeAccessoryEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t SomeAccessoryEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v163 = a2;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC520, &qword_254262E30);
  v149 = *(v146 - 8);
  v3 = *(v149 + 64);
  MEMORY[0x28223BE20](v146);
  v154 = &v118 - v4;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC528, &qword_254262E38);
  v147 = *(v148 - 8);
  v5 = *(v147 + 64);
  MEMORY[0x28223BE20](v148);
  v155 = &v118 - v6;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC530, &qword_254262E40);
  v144 = *(v145 - 8);
  v7 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v151 = &v118 - v8;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC538, &qword_254262E48);
  v142 = *(v143 - 8);
  v9 = *(v142 + 64);
  MEMORY[0x28223BE20](v143);
  v161 = &v118 - v10;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC540, &qword_254262E50);
  v140 = *(v141 - 8);
  v11 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v153 = &v118 - v12;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC548, &qword_254262E58);
  v138 = *(v139 - 8);
  v13 = *(v138 + 64);
  MEMORY[0x28223BE20](v139);
  v152 = &v118 - v14;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC550, &qword_254262E60);
  v136 = *(v137 - 8);
  v15 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v150 = &v118 - v16;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC558, &qword_254262E68);
  v135 = *(v134 - 8);
  v17 = *(v135 + 64);
  MEMORY[0x28223BE20](v134);
  v160 = &v118 - v18;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC560, &qword_254262E70);
  v132 = *(v133 - 8);
  v19 = *(v132 + 64);
  MEMORY[0x28223BE20](v133);
  v159 = &v118 - v20;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC568, &qword_254262E78);
  v130 = *(v131 - 8);
  v21 = *(v130 + 64);
  MEMORY[0x28223BE20](v131);
  v157 = &v118 - v22;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC570, &unk_254262E80);
  v156 = *(v158 - 8);
  v23 = *(v156 + 64);
  MEMORY[0x28223BE20](v158);
  v25 = &v118 - v24;
  v162 = type metadata accessor for SomeAccessoryEvent();
  v26 = *(*(v162 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v162);
  v129 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v128 = &v118 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v127 = &v118 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v126 = &v118 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v125 = &v118 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v124 = &v118 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v118 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v118 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v118 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v118 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = &v118 - v51;
  v53 = a1[3];
  v54 = a1[4];
  v165 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v53);
  sub_25423F4C0();
  v164 = v25;
  v55 = v166;
  sub_25424EC68();
  if (v55)
  {
    return __swift_destroy_boxed_opaque_existential_1(v165);
  }

  v119 = v47;
  v120 = v44;
  v122 = v41;
  v121 = v50;
  v56 = v157;
  v58 = v159;
  v57 = v160;
  v59 = v161;
  v166 = 0;
  v123 = v52;
  v61 = v162;
  v60 = v163;
  v62 = v158;
  v63 = v164;
  v64 = sub_25424E988();
  v65 = (2 * *(v64 + 16)) | 1;
  v167 = v64;
  v168 = v64 + 32;
  v169 = 0;
  v170 = v65;
  v66 = sub_25413B20C();
  if (v66 == 10 || v169 != v170 >> 1)
  {
    v72 = v63;
    v73 = sub_25424E6F8();
    swift_allocError();
    v75 = v74;
    v76 = v62;
    v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40) + 48);
    *v75 = v61;
    sub_25424E908();
    sub_25424E6E8();
    (*(*(v73 - 8) + 104))(v75, *MEMORY[0x277D84160], v73);
    swift_willThrow();
    (*(v156 + 8))(v72, v76);
LABEL_37:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v165);
  }

  if (v66 > 4u)
  {
    if (v66 <= 6u)
    {
      if (v66 == 5)
      {
        v171 = 5;
        sub_25423F6C8();
        v90 = v153;
        v80 = v63;
        v91 = v166;
        sub_25424E8F8();
        v78 = v123;
        if (!v91)
        {
          type metadata accessor for SmokeDetectorEvent();
          sub_254240A44(&qword_27F5BACE8, type metadata accessor for SmokeDetectorEvent);
          v92 = v125;
          v93 = v141;
          sub_25424E978();
          (*(v140 + 8))(v90, v93);
          (*(v156 + 8))(v63, v62);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v89 = v92;
          v88 = v165;
          v60 = v163;
          goto LABEL_43;
        }

        goto LABEL_33;
      }

      v171 = 6;
      sub_25423F674();
      v111 = v59;
      v85 = v63;
      v112 = v166;
      sub_25424E8F8();
      v78 = v123;
      if (v112)
      {
        goto LABEL_35;
      }

      type metadata accessor for ThermostatAutomationEvent(0);
      sub_254240A44(&qword_27F5B9830, type metadata accessor for ThermostatAutomationEvent);
      v113 = v126;
      v114 = v143;
      sub_25424E978();
      v117 = v113;
      (*(v142 + 8))(v111, v114);
      (*(v156 + 8))(v164, v62);
      swift_unknownObjectRelease();
      goto LABEL_41;
    }

    if (v66 != 7)
    {
      v78 = v123;
      if (v66 == 8)
      {
        v171 = 8;
        sub_25423F5CC();
        v79 = v155;
        v80 = v63;
        v81 = v166;
        sub_25424E8F8();
        if (!v81)
        {
          type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
          sub_254240A44(&qword_27F5BA858, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
          v82 = v128;
          v83 = v148;
          sub_25424E978();
          v117 = v82;
          (*(v147 + 8))(v79, v83);
          (*(v156 + 8))(v80, v62);
          swift_unknownObjectRelease();
LABEL_41:
          swift_storeEnumTagMultiPayload();
          v89 = v117;
          goto LABEL_42;
        }
      }

      else
      {
        v171 = 9;
        sub_25423F578();
        v105 = v154;
        v80 = v63;
        v106 = v166;
        sub_25424E8F8();
        if (!v106)
        {
          type metadata accessor for WindowEvent();
          sub_254240A44(&qword_27F5BB1A8, type metadata accessor for WindowEvent);
          v107 = v129;
          v108 = v146;
          sub_25424E978();
          (*(v149 + 8))(v105, v108);
          (*(v156 + 8))(v164, v62);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v89 = v107;
LABEL_42:
          v88 = v165;
          goto LABEL_43;
        }
      }

LABEL_33:
      (*(v156 + 8))(v80, v62);
      goto LABEL_37;
    }

    v171 = 7;
    sub_25423F620();
    v98 = v151;
    v85 = v63;
    v99 = v166;
    sub_25424E8F8();
    v78 = v123;
    if (v99)
    {
      goto LABEL_35;
    }

    type metadata accessor for ThermostatAutomationFailureEvent();
    sub_254240A44(&qword_27F5BAB90, type metadata accessor for ThermostatAutomationFailureEvent);
    v100 = v127;
    v101 = v145;
    sub_25424E978();
    v117 = v100;
    (*(v144 + 8))(v98, v101);
    (*(v156 + 8))(v164, v62);
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  if (v66 > 1u)
  {
    v67 = v166;
    if (v66 != 2)
    {
      if (v66 == 3)
      {
        v171 = 3;
        sub_25423F770();
        v68 = v150;
        v69 = v63;
        sub_25424E8F8();
        if (!v67)
        {
          type metadata accessor for LockEvent();
          sub_254240A44(&qword_27F5B8E98, type metadata accessor for LockEvent);
          v70 = v137;
          sub_25424E978();
          v71 = v156;
          (*(v136 + 8))(v68, v70);
          (*(v71 + 8))(v69, v62);
          swift_unknownObjectRelease();
          v116 = v122;
LABEL_39:
          swift_storeEnumTagMultiPayload();
          v89 = v116;
          goto LABEL_40;
        }
      }

      else
      {
        v171 = 4;
        sub_25423F71C();
        v102 = v152;
        v69 = v63;
        sub_25424E8F8();
        if (!v67)
        {
          type metadata accessor for SecuritySystemEvent();
          sub_254240A44(&qword_27F5BA128, type metadata accessor for SecuritySystemEvent);
          v103 = v124;
          v104 = v139;
          sub_25424E978();
          v116 = v103;
          (*(v138 + 8))(v102, v104);
          (*(v156 + 8))(v69, v62);
          swift_unknownObjectRelease();
          goto LABEL_39;
        }
      }

      (*(v156 + 8))(v69, v62);
      goto LABEL_37;
    }

    v171 = 2;
    sub_25423F7C4();
    v94 = v57;
    v85 = v63;
    sub_25424E8F8();
    if (!v67)
    {
      type metadata accessor for GarageDoorEvent();
      sub_254240A44(qword_27F5BB2D8, type metadata accessor for GarageDoorEvent);
      v95 = v120;
      v96 = v134;
      sub_25424E978();
      v97 = v156;
      (*(v135 + 8))(v94, v96);
      (*(v97 + 8))(v85, v62);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v89 = v95;
LABEL_40:
      v88 = v165;
      v78 = v123;
      goto LABEL_43;
    }

    goto LABEL_35;
  }

  v84 = v166;
  if (v66)
  {
    v171 = 1;
    sub_25423F818();
    v80 = v63;
    sub_25424E8F8();
    if (!v84)
    {
      type metadata accessor for DoorEvent();
      sub_254240A44(&qword_27F5BB2D0, type metadata accessor for DoorEvent);
      v109 = v119;
      v110 = v133;
      sub_25424E978();
      v116 = v109;
      (*(v132 + 8))(v58, v110);
      (*(v156 + 8))(v80, v62);
      swift_unknownObjectRelease();
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v171 = 0;
  sub_25423F86C();
  v85 = v63;
  sub_25424E8F8();
  v78 = v123;
  if (v84)
  {
LABEL_35:
    (*(v156 + 8))(v85, v62);
    goto LABEL_37;
  }

  type metadata accessor for ContactSensorEvent();
  sub_254240A44(&qword_27F5BB2C8, type metadata accessor for ContactSensorEvent);
  v86 = v121;
  v87 = v131;
  sub_25424E978();
  (*(v130 + 8))(v56, v87);
  (*(v156 + 8))(v164, v62);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v88 = v165;
  v89 = v86;
LABEL_43:
  sub_25423A0B4(v89, v78, type metadata accessor for SomeAccessoryEvent);
  sub_25423A0B4(v78, v60, type metadata accessor for SomeAccessoryEvent);
  return __swift_destroy_boxed_opaque_existential_1(v88);
}

uint64_t sub_25423E3C4()
{
  sub_25424EBD8();
  SomeAccessoryEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_25423E408()
{
  sub_25424EBD8();
  SomeAccessoryEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t _s13HomeKitEvents18SomeAccessoryEventO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v144 = a1;
  v129 = type metadata accessor for WindowEvent();
  v3 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v139 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
  v5 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v138 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for ThermostatAutomationFailureEvent();
  v7 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v136 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for ThermostatAutomationEvent(0);
  v9 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v137 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for SmokeDetectorEvent();
  v11 = *(*(v125 - 8) + 64);
  MEMORY[0x28223BE20](v125);
  v135 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for SecuritySystemEvent();
  v13 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v134 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for LockEvent();
  v15 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v133 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for GarageDoorEvent();
  v17 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v132 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for DoorEvent();
  v19 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v131 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for ContactSensorEvent();
  v21 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v130 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SomeAccessoryEvent();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v142 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v141 = &v120 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v140 = &v120 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v143 = &v120 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v120 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v120 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v120 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v120 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v120 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v120 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5BC698, &unk_254263C30);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v50 - 8);
  v54 = &v120 - v53;
  v55 = *(v52 + 56);
  sub_25423F514(v144, &v120 - v53);
  sub_25423F514(a2, &v54[v55]);
  v56 = v54;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      v69 = EnumCaseMultiPayload == 5;
      v58 = v54;
      v70 = v54;
      if (v69)
      {
        sub_25423F514(v54, v35);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v71 = v135;
          sub_25423A0B4(&v54[v55], v135, type metadata accessor for SmokeDetectorEvent);
          if (_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(v35, v71))
          {
            v72 = *(v125 + 20);
            v73 = v35[v72];
            v74 = *(v71 + v72);
            sub_2542409E4(v71, type metadata accessor for SmokeDetectorEvent);
            if (v73 == v74)
            {
              v63 = type metadata accessor for SmokeDetectorEvent;
              v64 = v35;
              goto LABEL_95;
            }
          }

          else
          {
            sub_2542409E4(v71, type metadata accessor for SmokeDetectorEvent);
          }

          v116 = type metadata accessor for SmokeDetectorEvent;
          v117 = v35;
LABEL_82:
          sub_2542409E4(v117, v116);
          v118 = v58;
LABEL_83:
          sub_2542409E4(v118, type metadata accessor for SomeAccessoryEvent);
          return 0;
        }

        v107 = type metadata accessor for SmokeDetectorEvent;
        v108 = v35;
LABEL_62:
        sub_2542409E4(v108, v107);
        goto LABEL_63;
      }

      v65 = v143;
      sub_25423F514(v70, v143);
      v97 = swift_getEnumCaseMultiPayload();
      if (v97 == 6)
      {
        v98 = v137;
        sub_25423A0B4(v56 + v55, v137, type metadata accessor for ThermostatAutomationEvent);
        if (_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(v65, v98) && (v99 = *(v126 + 20), v100 = v65 + v99, v101 = v98 + v99, (_s13HomeKitEvents25ThermostatAutomationEventV0dE7TriggerO2eeoiySbAE_AEtFZ_0(v65 + v99, v98 + v99) & 1) != 0))
        {
          v102 = *(type metadata accessor for ThermostatAutomationEvent.State(0) + 20);
          v103 = *(v100 + v102 + 8);
          v147 = *(v100 + v102);
          v148 = v103;
          v104 = v101 + v102;
          v105 = *v104;
          LOBYTE(v104) = *(v104 + 8);
          v145 = v105;
          v146 = v104;
          v106 = _s13HomeKitEvents25ThermostatAutomationEventV0dE6ResultO2eeoiySbAE_AEtFZ_0(&v147, &v145);
          sub_2542409E4(v98, type metadata accessor for ThermostatAutomationEvent);
          if (v106)
          {
            v68 = type metadata accessor for ThermostatAutomationEvent;
            goto LABEL_94;
          }
        }

        else
        {
          sub_2542409E4(v98, type metadata accessor for ThermostatAutomationEvent);
        }

        v115 = type metadata accessor for ThermostatAutomationEvent;
        goto LABEL_81;
      }

      v109 = type metadata accessor for ThermostatAutomationEvent;
      goto LABEL_61;
    }

    v58 = v54;
    if (EnumCaseMultiPayload != 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v65 = v141;
        sub_25423F514(v56, v141);
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          v66 = v138;
          sub_25423A0B4(v56 + v55, v138, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
          if (_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(v65, v66))
          {
            v67 = _s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV5StateV2eeoiySbAE_AEtFZ_0(v65 + *(v128 + 20), v66 + *(v128 + 20));
            sub_2542409E4(v66, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
            if (v67)
            {
              v68 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
LABEL_94:
              v63 = v68;
              v64 = v65;
              goto LABEL_95;
            }
          }

          else
          {
            sub_2542409E4(v66, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
          }

          v115 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
          goto LABEL_81;
        }

        v109 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
      }

      else
      {
        v65 = v142;
        sub_25423F514(v56, v142);
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          v89 = v139;
          sub_25423A0B4(v56 + v55, v139, type metadata accessor for WindowEvent);
          if (_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(v65, v89))
          {
            v90 = *(v129 + 20);
            v91 = *(v65 + v90);
            v92 = *(v89 + v90);
            sub_2542409E4(v89, type metadata accessor for WindowEvent);
            if (v91 == v92)
            {
              v68 = type metadata accessor for WindowEvent;
              goto LABEL_94;
            }
          }

          else
          {
            sub_2542409E4(v89, type metadata accessor for WindowEvent);
          }

          v115 = type metadata accessor for WindowEvent;
LABEL_81:
          v116 = v115;
          v117 = v65;
          goto LABEL_82;
        }

        v109 = type metadata accessor for WindowEvent;
      }

LABEL_61:
      v107 = v109;
      v108 = v65;
      goto LABEL_62;
    }

    v65 = v140;
    sub_25423F514(v56, v140);
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      v109 = type metadata accessor for ThermostatAutomationFailureEvent;
      goto LABEL_61;
    }

    v79 = v56 + v55;
    v80 = v136;
    sub_25423A0B4(v79, v136, type metadata accessor for ThermostatAutomationFailureEvent);
    if (_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(v65, v80))
    {
      v81 = *(v127 + 20);
      v82 = *(v65 + v81);
      v83 = *(v80 + v81);
      sub_2542409E4(v80, type metadata accessor for ThermostatAutomationFailureEvent);
      if (v82 == 4)
      {
        if (v83 == 4)
        {
LABEL_93:
          v68 = type metadata accessor for ThermostatAutomationFailureEvent;
          goto LABEL_94;
        }
      }

      else if (v83 != 4 && v82 == v83)
      {
        goto LABEL_93;
      }
    }

    else
    {
      sub_2542409E4(v80, type metadata accessor for ThermostatAutomationFailureEvent);
    }

    v115 = type metadata accessor for ThermostatAutomationFailureEvent;
    goto LABEL_81;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v58 = v54;
      sub_25423F514(v54, v44);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v75 = v132;
        sub_25423A0B4(&v54[v55], v132, type metadata accessor for GarageDoorEvent);
        if (_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(v44, v75))
        {
          v76 = *(v122 + 20);
          v77 = v44[v76];
          v78 = *(v75 + v76);
          sub_2542409E4(v75, type metadata accessor for GarageDoorEvent);
          if (v77 == v78)
          {
            v63 = type metadata accessor for GarageDoorEvent;
            v64 = v44;
            goto LABEL_95;
          }
        }

        else
        {
          sub_2542409E4(v75, type metadata accessor for GarageDoorEvent);
        }

        v116 = type metadata accessor for GarageDoorEvent;
        v117 = v44;
        goto LABEL_82;
      }

      v107 = type metadata accessor for GarageDoorEvent;
      v108 = v44;
    }

    else
    {
      v58 = v54;
      if (EnumCaseMultiPayload != 3)
      {
        sub_25423F514(v54, v38);
        v84 = swift_getEnumCaseMultiPayload();
        if (v84 == 4)
        {
          v85 = v134;
          sub_25423A0B4(&v54[v55], v134, type metadata accessor for SecuritySystemEvent);
          if (_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(v38, v85))
          {
            v86 = *(v124 + 20);
            v87 = v38[v86];
            v88 = *(v85 + v86);
            sub_2542409E4(v85, type metadata accessor for SecuritySystemEvent);
            if (qword_254263C78[v87] == qword_254263C78[v88])
            {
              v63 = type metadata accessor for SecuritySystemEvent;
              v64 = v38;
              goto LABEL_95;
            }
          }

          else
          {
            sub_2542409E4(v85, type metadata accessor for SecuritySystemEvent);
          }

          v116 = type metadata accessor for SecuritySystemEvent;
          v117 = v38;
          goto LABEL_82;
        }

        v107 = type metadata accessor for SecuritySystemEvent;
        v108 = v38;
        goto LABEL_62;
      }

      sub_25423F514(v54, v41);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v59 = v133;
        sub_25423A0B4(&v54[v55], v133, type metadata accessor for LockEvent);
        if (_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(v41, v59))
        {
          v60 = *(v123 + 20);
          v61 = v41[v60];
          v62 = *(v59 + v60);
          sub_2542409E4(v59, type metadata accessor for LockEvent);
          if (v61 == v62)
          {
            v63 = type metadata accessor for LockEvent;
            v64 = v41;
LABEL_95:
            sub_2542409E4(v64, v63);
            v114 = v58;
            goto LABEL_96;
          }
        }

        else
        {
          sub_2542409E4(v59, type metadata accessor for LockEvent);
        }

        v116 = type metadata accessor for LockEvent;
        v117 = v41;
        goto LABEL_82;
      }

      v107 = type metadata accessor for LockEvent;
      v108 = v41;
    }

    goto LABEL_62;
  }

  if (EnumCaseMultiPayload)
  {
    v58 = v54;
    sub_25423F514(v54, v47);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v93 = v131;
      sub_25423A0B4(v56 + v55, v131, type metadata accessor for DoorEvent);
      if (_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(v47, v93))
      {
        v94 = *(v121 + 20);
        v95 = v47[v94];
        v96 = *(v93 + v94);
        sub_2542409E4(v93, type metadata accessor for DoorEvent);
        if (v95 == v96)
        {
          v63 = type metadata accessor for DoorEvent;
          v64 = v47;
          goto LABEL_95;
        }
      }

      else
      {
        sub_2542409E4(v93, type metadata accessor for DoorEvent);
      }

      v116 = type metadata accessor for DoorEvent;
      v117 = v47;
      goto LABEL_82;
    }

    v107 = type metadata accessor for DoorEvent;
    v108 = v47;
    goto LABEL_62;
  }

  sub_25423F514(v54, v49);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2542409E4(v49, type metadata accessor for ContactSensorEvent);
    v58 = v54;
LABEL_63:
    sub_25424097C(v58);
    return 0;
  }

  v110 = v130;
  sub_25423A0B4(v56 + v55, v130, type metadata accessor for ContactSensorEvent);
  if (!_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(v49, v110))
  {
    sub_2542409E4(v110, type metadata accessor for ContactSensorEvent);
    goto LABEL_90;
  }

  v111 = *(v120 + 20);
  v112 = v49[v111];
  v113 = *(v110 + v111);
  sub_2542409E4(v110, type metadata accessor for ContactSensorEvent);
  if (v112 != v113)
  {
LABEL_90:
    sub_2542409E4(v49, type metadata accessor for ContactSensorEvent);
    v118 = v56;
    goto LABEL_83;
  }

  sub_2542409E4(v49, type metadata accessor for ContactSensorEvent);
  v114 = v56;
LABEL_96:
  sub_2542409E4(v114, type metadata accessor for SomeAccessoryEvent);
  return 1;
}

unint64_t sub_25423F4C0()
{
  result = qword_27F5BC4C8;
  if (!qword_27F5BC4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC4C8);
  }

  return result;
}

uint64_t sub_25423F514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SomeAccessoryEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25423F578()
{
  result = qword_27F5BC4D0;
  if (!qword_27F5BC4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC4D0);
  }

  return result;
}

unint64_t sub_25423F5CC()
{
  result = qword_27F5BC4D8;
  if (!qword_27F5BC4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC4D8);
  }

  return result;
}

unint64_t sub_25423F620()
{
  result = qword_27F5BC4E0;
  if (!qword_27F5BC4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC4E0);
  }

  return result;
}

unint64_t sub_25423F674()
{
  result = qword_27F5BC4E8;
  if (!qword_27F5BC4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC4E8);
  }

  return result;
}

unint64_t sub_25423F6C8()
{
  result = qword_27F5BC4F0;
  if (!qword_27F5BC4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC4F0);
  }

  return result;
}

unint64_t sub_25423F71C()
{
  result = qword_27F5BC4F8;
  if (!qword_27F5BC4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC4F8);
  }

  return result;
}

unint64_t sub_25423F770()
{
  result = qword_27F5BC500;
  if (!qword_27F5BC500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC500);
  }

  return result;
}

unint64_t sub_25423F7C4()
{
  result = qword_27F5BC508;
  if (!qword_27F5BC508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC508);
  }

  return result;
}

unint64_t sub_25423F818()
{
  result = qword_27F5BC510;
  if (!qword_27F5BC510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC510);
  }

  return result;
}

unint64_t sub_25423F86C()
{
  result = qword_27F5BC518;
  if (!qword_27F5BC518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC518);
  }

  return result;
}

uint64_t sub_25423F908()
{
  result = type metadata accessor for ContactSensorEvent();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DoorEvent();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for GarageDoorEvent();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for LockEvent();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for SecuritySystemEvent();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for SmokeDetectorEvent();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for ThermostatAutomationEvent(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for ThermostatAutomationFailureEvent();
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for ThermostatReducedEnergyAutomationEvent(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for WindowEvent();
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_25423FAD0()
{
  result = qword_27F5BC590;
  if (!qword_27F5BC590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC590);
  }

  return result;
}

unint64_t sub_25423FB28()
{
  result = qword_27F5BC598;
  if (!qword_27F5BC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC598);
  }

  return result;
}

unint64_t sub_25423FB80()
{
  result = qword_27F5BC5A0;
  if (!qword_27F5BC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5A0);
  }

  return result;
}

unint64_t sub_25423FBD8()
{
  result = qword_27F5BC5A8;
  if (!qword_27F5BC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5A8);
  }

  return result;
}

unint64_t sub_25423FC30()
{
  result = qword_27F5BC5B0;
  if (!qword_27F5BC5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5B0);
  }

  return result;
}

unint64_t sub_25423FC88()
{
  result = qword_27F5BC5B8;
  if (!qword_27F5BC5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5B8);
  }

  return result;
}

unint64_t sub_25423FCE0()
{
  result = qword_27F5BC5C0;
  if (!qword_27F5BC5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5C0);
  }

  return result;
}

unint64_t sub_25423FD38()
{
  result = qword_27F5BC5C8;
  if (!qword_27F5BC5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5C8);
  }

  return result;
}

unint64_t sub_25423FD90()
{
  result = qword_27F5BC5D0;
  if (!qword_27F5BC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5D0);
  }

  return result;
}

unint64_t sub_25423FDE8()
{
  result = qword_27F5BC5D8;
  if (!qword_27F5BC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5D8);
  }

  return result;
}

unint64_t sub_25423FE40()
{
  result = qword_27F5BC5E0;
  if (!qword_27F5BC5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5E0);
  }

  return result;
}

unint64_t sub_25423FE98()
{
  result = qword_27F5BC5E8;
  if (!qword_27F5BC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5E8);
  }

  return result;
}

unint64_t sub_25423FEF0()
{
  result = qword_27F5BC5F0;
  if (!qword_27F5BC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5F0);
  }

  return result;
}

unint64_t sub_25423FF48()
{
  result = qword_27F5BC5F8;
  if (!qword_27F5BC5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC5F8);
  }

  return result;
}

unint64_t sub_25423FFA0()
{
  result = qword_27F5BC600;
  if (!qword_27F5BC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC600);
  }

  return result;
}

unint64_t sub_25423FFF8()
{
  result = qword_27F5BC608;
  if (!qword_27F5BC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC608);
  }

  return result;
}

unint64_t sub_254240050()
{
  result = qword_27F5BC610;
  if (!qword_27F5BC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC610);
  }

  return result;
}

unint64_t sub_2542400A8()
{
  result = qword_27F5BC618;
  if (!qword_27F5BC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC618);
  }

  return result;
}

unint64_t sub_254240100()
{
  result = qword_27F5BC620;
  if (!qword_27F5BC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC620);
  }

  return result;
}

unint64_t sub_254240158()
{
  result = qword_27F5BC628;
  if (!qword_27F5BC628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC628);
  }

  return result;
}

unint64_t sub_2542401B0()
{
  result = qword_27F5BC630;
  if (!qword_27F5BC630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC630);
  }

  return result;
}

unint64_t sub_254240208()
{
  result = qword_27F5BC638;
  if (!qword_27F5BC638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC638);
  }

  return result;
}

unint64_t sub_254240260()
{
  result = qword_27F5BC640;
  if (!qword_27F5BC640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC640);
  }

  return result;
}

unint64_t sub_2542402B8()
{
  result = qword_27F5BC648;
  if (!qword_27F5BC648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC648);
  }

  return result;
}

unint64_t sub_254240310()
{
  result = qword_27F5BC650;
  if (!qword_27F5BC650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC650);
  }

  return result;
}

unint64_t sub_254240368()
{
  result = qword_27F5BC658;
  if (!qword_27F5BC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC658);
  }

  return result;
}

unint64_t sub_2542403C0()
{
  result = qword_27F5BC660;
  if (!qword_27F5BC660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC660);
  }

  return result;
}

unint64_t sub_254240418()
{
  result = qword_27F5BC668;
  if (!qword_27F5BC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC668);
  }

  return result;
}

unint64_t sub_254240470()
{
  result = qword_27F5BC670;
  if (!qword_27F5BC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC670);
  }

  return result;
}

unint64_t sub_2542404C8()
{
  result = qword_27F5BC678;
  if (!qword_27F5BC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC678);
  }

  return result;
}

unint64_t sub_254240520()
{
  result = qword_27F5BC680;
  if (!qword_27F5BC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC680);
  }

  return result;
}

unint64_t sub_254240578()
{
  result = qword_27F5BC688;
  if (!qword_27F5BC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC688);
  }

  return result;
}

unint64_t sub_2542405D0()
{
  result = qword_27F5BC690;
  if (!qword_27F5BC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BC690);
  }

  return result;
}

uint64_t sub_254240624(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53746361746E6F63 && a2 == 0xED0000726F736E65;
  if (v4 || (sub_25424EAB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1919905636 && a2 == 0xE400000000000000 || (sub_25424EAB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F44656761726167 && a2 == 0xEA0000000000726FLL || (sub_25424EAB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1801678700 && a2 == 0xE400000000000000 || (sub_25424EAB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7974697275636573 && a2 == 0xEE006D6574737953 || (sub_25424EAB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746544656B6F6D73 && a2 == 0xED0000726F746365 || (sub_25424EAB8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002542522F0 == a2 || (sub_25424EAB8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000254252310 == a2 || (sub_25424EAB8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000254252330 == a2 || (sub_25424EAB8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x776F646E6977 && a2 == 0xE600000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_25424EAB8();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_25424097C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5BC698, &unk_254263C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2542409E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_254240A44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_254240A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AsyncDecompressionStream.AsyncIterator();
  v5 = (a2 + v4[9]);
  v6 = MEMORY[0x277D84F90];
  v5[1] = 0;
  v5[2] = 0;
  *v5 = v6;
  *(a2 + v4[10]) = 1;
  v7 = a2 + v4[11];
  *v7 = 0;
  *(v7 + 4) = 1;
  *(a2 + v4[12]) = xmmword_254252DB0;
  *(a2 + v4[13]) = xmmword_254252DB0;
  *(a2 + v4[14]) = xmmword_254252DB0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 32);

  return v9(a2, a1, AssociatedTypeWitness);
}

uint64_t sub_254240B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v14 = &v16 - v13;
  (*(v5 + 16))(v9, v2, v4);
  sub_25424E208();
  return sub_254240A8C(v14, a2);
}

uint64_t sub_254240CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_254240B7C(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_254240D28(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_254240D48, 0, 0);
}

uint64_t sub_254240D48()
{
  v68 = v0;
  sub_25424E1E8();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v2 + 56);
  *(v0 + 96) = v3;
  v4 = *(v1 + v3 + 8);
  if (v4 >> 60 != 15)
  {
LABEL_77:
    v59 = *(v1 + v3);
    sub_254140660(v59, v4);
    v60 = *(v2 + 16);
    v61 = *(v2 + 24);
    v62 = (v1 + *(type metadata accessor for AsyncDecompressionStream.AsyncIterator() + 56));
    v63 = *v62;
    v64 = v62[1];
    *v62 = xmmword_254252DB0;
    sub_254134CF0(v63, v64);
    v65 = *(v0 + 8);

    return v65(v59, v4);
  }

  LOBYTE(v5) = 1;
  while (1)
  {
    v6 = *(v0 + 64);
    v7 = *(v6 + 40);
    *(v0 + 100) = v7;
    if (*(v1 + v7) == 1)
    {
      break;
    }

    if (sub_254241E90(v6))
    {
      v8 = *(v0 + 64);
      v9 = (*(v0 + 72) + *(v8 + 36));
      v10 = v9[2];
      v11 = sub_254241FA0(v8);
      if ((v11 & 0x100000000) == 0)
      {
        v12 = (v11 & 0xFFFFFFF) + 4;
        if (v10 >= v12)
        {
          v13 = *v9;
          v14 = v9[1];
          *(v0 + 16) = xmmword_254252DC0;
          v67[0] = 0;
          sub_2541CF898((v11 & 0xFFFFFFF) + 4, v13, v14, v10, (v0 + 16), v67, v12);
          v16 = *(v0 + 16);
          v15 = *(v0 + 24);
          sub_254140660(v16, v15);
          sub_254134D04(v16, v15);
          sub_254140660(v16, v15);
          v17 = sub_2541BE53C(v16, v15, (v0 + 32));
          v20 = v17;
          v21 = v18;
          v22 = v19;
          if ((v19 & 0x2000000000000000) != 0)
          {
            v25 = v18 >> 62;
            if ((v18 >> 62) > 1)
            {
              if (v25 != 2)
              {
                goto LABEL_90;
              }

              v28 = *(v17 + 16);
              v17 = v28 + 4;
              if (__OFADD__(v28, 4))
              {
                goto LABEL_81;
              }

              v26 = *(v20 + 24);
              if (v17 < v28)
              {
                goto LABEL_90;
              }
            }

            else
            {
              v26 = v17 >> 32;
              if (v25)
              {
                v27 = v17;
              }

              else
              {
                v26 = BYTE6(v18);
                v27 = 0;
              }

              if (v25)
              {
                v17 = v17 + 4;
              }

              else
              {
                v17 = 4;
              }

              if (v17 < v27)
              {
                goto LABEL_90;
              }
            }

            if (v26 < v17)
            {
              goto LABEL_90;
            }

            if (v25)
            {
              if (v25 == 2)
              {
                v29 = *(v20 + 16);
                v18 = *(v20 + 24);
              }

              else
              {
                v29 = v20;
                v18 = v20 >> 32;
              }
            }

            else
            {
              v29 = 0;
              v18 = BYTE6(v18);
            }

            if (v18 < v17 || v18 < v29)
            {
              __break(1u);
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
LABEL_89:
              __break(1u);
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
              return MEMORY[0x282200308](v17, v18, v19);
            }

            v23 = sub_25424D4B8();
          }

          else
          {
            sub_254243844(v17, v18, v19, sub_254140660);
            v23 = v21;
            v24 = v22;
          }

          v30 = v24 >> 62;
          if ((v24 >> 62) > 1)
          {
            if (v30 != 2)
            {
              sub_254134D04(v23, v24);
LABEL_45:
              v36 = *(v0 + 64);
              v35 = *(v0 + 72);
              sub_254243844(v20, v21, v22, sub_254134D04);
              sub_254134D04(v16, v15);
              goto LABEL_73;
            }

            v5 = *(v23 + 16);
            v32 = *(v23 + 24);
            v17 = sub_254134D04(v23, v24);
          }

          else
          {
            if (!v30)
            {
              v31 = v24;
              v17 = sub_254134D04(v23, v24);
              if ((v31 & 0xFF000000000000) == 0)
              {
                goto LABEL_45;
              }

              goto LABEL_41;
            }

            v33 = v23;
            v17 = sub_254134D04(v23, v24);
            v5 = v33;
            v32 = v33 >> 32;
          }

          v34 = v5 == v32;
          LOBYTE(v5) = 1;
          if (v34)
          {
            goto LABEL_45;
          }

LABEL_41:
          if ((v22 & 0x2000000000000000) == 0)
          {
            if ((v20 & 1) == 0)
            {
              LOBYTE(v5) = 1;
              goto LABEL_72;
            }

LABEL_63:
            v42 = *(v0 + 72);
            sub_2542423E4(v20, v21, v22, *(v0 + 64));
            v5 = *(v0 + 64);
            v43 = *(v0 + 72);
            sub_254243844(v20, v21, v22, sub_254134D04);
            sub_254134D04(v16, v15);
            v44 = *(v5 + 16);
            v45 = *(v5 + 24);
            sub_254242364(v43, v12);
            LOBYTE(v5) = 1;
            goto LABEL_8;
          }

          v5 = v21 >> 62;
          if ((v21 >> 62) > 1)
          {
            if (v5 != 2)
            {
              goto LABEL_91;
            }

            v39 = *(v20 + 16);
            v38 = *(v20 + 24);
            v37 = v38 - v39;
            if (__OFSUB__(v38, v39))
            {
              goto LABEL_85;
            }
          }

          else
          {
            if (!v5)
            {
              v37 = BYTE6(v21);
LABEL_56:
              if (v37 < 4)
              {
                goto LABEL_91;
              }

              v40 = sub_2542435B8(v20, v21);
              v17 = sub_254243844(v20, v21, v22, sub_254134D04);
              if (!(v40 >> 28))
              {
                if (v5)
                {
                  if (v5 == 1)
                  {
                    v41 = v20;
                    v17 = v20 + 4;
                    v18 = v20 >> 32;
                    if (v20 >> 32 < v17)
                    {
                      goto LABEL_88;
                    }
                  }

                  else
                  {
                    LOBYTE(v5) = 1;
                    v41 = *(v20 + 16);
                    v17 = v41 + 4;
                    if (__OFADD__(v41, 4))
                    {
                      goto LABEL_86;
                    }

                    if (v17 < v41)
                    {
                      goto LABEL_89;
                    }

                    v18 = *(v20 + 24);
                    if (v18 < v17)
                    {
                      goto LABEL_89;
                    }
                  }
                }

                else
                {
                  LOBYTE(v5) = 1;
                  if ((v21 & 0xFC000000000000) == 0)
                  {
                    goto LABEL_87;
                  }

                  v41 = 0;
                  v18 = BYTE6(v21);
                  v17 = 4;
                }

                if (v18 < v41 || v18 < v17)
                {
                  goto LABEL_83;
                }

                v46 = sub_25424D4B8();
                v48 = v47;
                sub_254243844(v20, v21, v22, sub_254134D04);
                v21 = v46;
                v22 = v48;
LABEL_72:
                v36 = *(v0 + 64);
                v35 = *(v0 + 72);
                v49 = v35 + *(v0 + 96);
                sub_254134D04(v16, v15);
                sub_254134CF0(*v49, *(v49 + 8));
                *v49 = v21;
                *(v49 + 8) = v22;
LABEL_73:
                v50 = *(v36 + 16);
                v51 = *(v36 + 24);
                sub_254242364(v35, v12);
                goto LABEL_8;
              }

              if (v40 >> 28 != 1)
              {
                goto LABEL_82;
              }

              goto LABEL_63;
            }

            if (__OFSUB__(HIDWORD(v20), v20))
            {
              goto LABEL_84;
            }

            v37 = HIDWORD(v20) - v20;
          }

          v17 = sub_254243844(v20, v21, v22, sub_254140660);
          goto LABEL_56;
        }
      }
    }

    *(*(v0 + 72) + *(v0 + 100)) = v5;
LABEL_8:
    v3 = *(v0 + 96);
    v1 = *(v0 + 72);
    v4 = *(v1 + v3 + 8);
    if (v4 >> 60 != 15)
    {
      v2 = *(v0 + 64);
      goto LABEL_77;
    }
  }

  v52 = *(v6 + 16);
  v53 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = *(MEMORY[0x277D856D0] + 4);
  v57 = swift_task_alloc();
  *(v0 + 80) = v57;
  *v57 = v0;
  v57[1] = sub_254241448;
  v58 = *(v0 + 72);
  v17 = v0 + 48;
  v18 = AssociatedTypeWitness;
  v19 = AssociatedConformanceWitness;

  return MEMORY[0x282200308](v17, v18, v19);
}

uint64_t sub_254241448()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_254241E78;
  }

  else
  {
    v3 = sub_25424155C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25424155C()
{
  v97 = v0;
  v1 = v0 + 48;
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  if (v3 >> 60 != 15)
  {
    v14 = *(v0 + 72);
    v15 = *(*(v0 + 64) + 36);
    v16 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      if (v16 != 2 || *(v2 + 16) == *(v2 + 24))
      {
        goto LABEL_23;
      }
    }

    else if (v16)
    {
      if (v2 == v2 >> 32)
      {
LABEL_23:
        sub_254134CF0(*(v0 + 48), *(v0 + 56));
LABEL_29:
        v93 = v1;
        v94 = (v1 - 16);
        *&v95 = v1 - 32;
        *(*(v0 + 72) + *(v0 + 100)) = 0;
        v32 = *(v0 + 88);
        v33 = *(v0 + 64);
        v34 = *(v0 + 72);
        while (1)
        {
          v35 = sub_254241E90(v33);
          v18 = v32;
          if (v32)
          {
            goto LABEL_6;
          }

          if (v35)
          {
            v36 = *(v0 + 64);
            v3 = *(v0 + 72);
            v37 = (v3 + *(v36 + 36));
            v38 = v37[2];
            v39 = sub_254241FA0(v36);
            if ((v39 & 0x100000000) == 0)
            {
              v40 = (v39 & 0xFFFFFFF) + 4;
              if (v38 >= v40)
              {
                break;
              }
            }
          }

          *(*(v0 + 72) + *(v0 + 100)) = 1;
LABEL_35:
          v4 = *(v0 + 72);
          v41 = (v4 + *(v0 + 96));
          v6 = v41[1];
          if (v6 >> 60 != 15)
          {
            v7 = *v41;
            goto LABEL_103;
          }

          v32 = 0;
          v33 = *(v0 + 64);
          v42 = *(v33 + 40);
          *(v0 + 100) = v42;
          if (*(v4 + v42) == 1)
          {
            v86 = *(v33 + 16);
            v87 = *(v33 + 24);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            v90 = *(MEMORY[0x277D856D0] + 4);
            v91 = swift_task_alloc();
            *(v0 + 80) = v91;
            *v91 = v0;
            v91[1] = sub_254241448;
            v92 = *(v0 + 72);
            isUniquelyReferenced_nonNull_native = v93;
            v20 = AssociatedTypeWitness;
            v21 = AssociatedConformanceWitness;

            return MEMORY[0x282200308](isUniquelyReferenced_nonNull_native, v20, v21);
          }
        }

        v43 = *v37;
        v44 = v37[1];
        *(v0 + 16) = xmmword_254252DC0;
        v96[0] = 0;
        sub_2541CF898((v39 & 0xFFFFFFF) + 4, v43, v44, v38, v95, v96, v40);
        v45 = *(v0 + 16);
        v22 = *(v0 + 24);
        sub_254140660(v45, v22);
        sub_254134D04(v45, v22);
        sub_254140660(v45, v22);
        isUniquelyReferenced_nonNull_native = sub_2541BE53C(v45, v22, v94);
        v17 = isUniquelyReferenced_nonNull_native;
        v16 = v20;
        v46 = v21;
        if ((v21 & 0x2000000000000000) != 0)
        {
          v49 = v20 >> 62;
          if ((v20 >> 62) > 1)
          {
            if (v49 != 2)
            {
              goto LABEL_124;
            }

            v52 = *(isUniquelyReferenced_nonNull_native + 16);
            isUniquelyReferenced_nonNull_native = v52 + 4;
            if (__OFADD__(v52, 4))
            {
              goto LABEL_113;
            }

            v50 = *(v17 + 24);
            if (isUniquelyReferenced_nonNull_native < v52)
            {
              goto LABEL_124;
            }
          }

          else
          {
            v50 = isUniquelyReferenced_nonNull_native >> 32;
            if (v49)
            {
              v51 = isUniquelyReferenced_nonNull_native;
            }

            else
            {
              v50 = BYTE6(v20);
              v51 = 0;
            }

            if (v49)
            {
              isUniquelyReferenced_nonNull_native = isUniquelyReferenced_nonNull_native + 4;
            }

            else
            {
              isUniquelyReferenced_nonNull_native = 4;
            }

            if (isUniquelyReferenced_nonNull_native < v51)
            {
              goto LABEL_124;
            }
          }

          if (v50 < isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_124;
          }

          if (v49)
          {
            if (v49 == 2)
            {
              v54 = *(v17 + 16);
              v53 = *(v17 + 24);
            }

            else
            {
              v54 = v17;
              v53 = v17 >> 32;
            }
          }

          else
          {
            v54 = 0;
            v53 = BYTE6(v20);
          }

          if (v53 < isUniquelyReferenced_nonNull_native || v53 < v54)
          {
            __break(1u);
            goto LABEL_111;
          }

          v47 = sub_25424D4B8();
        }

        else
        {
          sub_254243844(isUniquelyReferenced_nonNull_native, v20, v21, sub_254140660);
          v47 = v16;
          v48 = v46;
        }

        v55 = v48 >> 62;
        if ((v48 >> 62) > 1)
        {
          if (v55 != 2)
          {
            sub_254134D04(v47, v48);
LABEL_73:
            v60 = *(v0 + 64);
            v61 = *(v0 + 72);
            sub_254243844(v17, v16, v46, sub_254134D04);
            sub_254134D04(v45, v22);
            goto LABEL_101;
          }

          v57 = *(v47 + 16);
          v58 = *(v47 + 24);
          isUniquelyReferenced_nonNull_native = sub_254134D04(v47, v48);
          if (v57 == v58)
          {
            goto LABEL_73;
          }
        }

        else if (v55)
        {
          v59 = v47;
          isUniquelyReferenced_nonNull_native = sub_254134D04(v47, v48);
          if (v59 == v59 >> 32)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v56 = v48;
          isUniquelyReferenced_nonNull_native = sub_254134D04(v47, v48);
          if ((v56 & 0xFF000000000000) == 0)
          {
            goto LABEL_73;
          }
        }

        if ((v46 & 0x2000000000000000) == 0)
        {
          if ((v17 & 1) == 0)
          {
            goto LABEL_100;
          }

LABEL_91:
          v68 = *(v0 + 72);
          sub_2542423E4(v17, v16, v46, *(v0 + 64));
          v70 = *(v0 + 64);
          v69 = *(v0 + 72);
          sub_254243844(v17, v16, v46, sub_254134D04);
          sub_254134D04(v45, v22);
          v71 = *(v70 + 16);
          v72 = *(v70 + 24);
          sub_254242364(v69, v40);
          goto LABEL_35;
        }

        v62 = v16 >> 62;
        if ((v16 >> 62) > 1)
        {
          if (v62 != 2)
          {
            goto LABEL_125;
          }

          v65 = *(v17 + 16);
          v64 = *(v17 + 24);
          v63 = v64 - v65;
          if (__OFSUB__(v64, v65))
          {
            goto LABEL_119;
          }
        }

        else
        {
          if (!v62)
          {
            v63 = BYTE6(v16);
LABEL_84:
            if (v63 < 4)
            {
              goto LABEL_125;
            }

            v66 = sub_2542435B8(v17, v16);
            isUniquelyReferenced_nonNull_native = sub_254243844(v17, v16, v46, sub_254134D04);
            if (!(v66 >> 28))
            {
              if (v62)
              {
                if (v62 == 1)
                {
                  v67 = v17;
                  isUniquelyReferenced_nonNull_native = v17 + 4;
                  v20 = v17 >> 32;
                  if (v17 >> 32 < isUniquelyReferenced_nonNull_native)
                  {
                    goto LABEL_120;
                  }
                }

                else
                {
                  v67 = *(v17 + 16);
                  isUniquelyReferenced_nonNull_native = v67 + 4;
                  if (__OFADD__(v67, 4))
                  {
                    goto LABEL_121;
                  }

                  if (isUniquelyReferenced_nonNull_native < v67)
                  {
                    goto LABEL_123;
                  }

                  v20 = *(v17 + 24);
                  if (v20 < isUniquelyReferenced_nonNull_native)
                  {
                    goto LABEL_123;
                  }
                }
              }

              else
              {
                if ((v16 & 0xFC000000000000) == 0)
                {
                  goto LABEL_122;
                }

                v67 = 0;
                v20 = BYTE6(v16);
                isUniquelyReferenced_nonNull_native = 4;
              }

              if (v20 < v67 || v20 < isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_117;
              }

              v73 = sub_25424D4B8();
              v75 = v74;
              sub_254243844(v17, v16, v46, sub_254134D04);
              v16 = v73;
              v46 = v75;
LABEL_100:
              v60 = *(v0 + 64);
              v61 = *(v0 + 72);
              v76 = v61 + *(v0 + 96);
              sub_254134D04(v45, v22);
              sub_254134CF0(*v76, *(v76 + 8));
              *v76 = v16;
              *(v76 + 8) = v46;
LABEL_101:
              v77 = *(v60 + 16);
              v78 = *(v60 + 24);
              sub_254242364(v61, v40);
              goto LABEL_35;
            }

            if (v66 >> 28 != 1)
            {
              goto LABEL_116;
            }

            goto LABEL_91;
          }

          if (__OFSUB__(HIDWORD(v17), v17))
          {
            goto LABEL_118;
          }

          v63 = HIDWORD(v17) - v17;
        }

        isUniquelyReferenced_nonNull_native = sub_254243844(v17, v16, v46, sub_254140660);
        goto LABEL_84;
      }
    }

    else if ((v3 & 0xFF000000000000) == 0)
    {
      goto LABEL_23;
    }

    v95 = *(v0 + 48);
    v17 = v14 + v15;
    v18 = *(v14 + v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v0 + 48;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_111:
      isUniquelyReferenced_nonNull_native = sub_2541B09E0(0, *(v18 + 16) + 1, 1, v18);
      v18 = isUniquelyReferenced_nonNull_native;
    }

    v24 = *(v18 + 16);
    v23 = *(v18 + 24);
    v25 = v95;
    if (v24 >= v23 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_2541B09E0((v23 > 1), v24 + 1, 1, v18);
      v25 = v95;
      v18 = isUniquelyReferenced_nonNull_native;
    }

    *(v18 + 16) = v24 + 1;
    *(v18 + 16 * v24 + 32) = v25;
    *v17 = v18;
    if (v16 == 2)
    {
      v27 = *(v25 + 16);
      v28 = *(v25 + 24);
      v29 = __OFSUB__(v28, v27);
      v26 = v28 - v27;
      if (v29)
      {
        goto LABEL_115;
      }

      v1 = v22;
    }

    else
    {
      v1 = v22;
      if (v16 == 1)
      {
        LODWORD(v26) = DWORD1(v25) - v25;
        if (__OFSUB__(DWORD1(v25), v25))
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          return MEMORY[0x282200308](isUniquelyReferenced_nonNull_native, v20, v21);
        }

        v26 = v26;
      }

      else
      {
        v26 = BYTE6(v3);
      }
    }

    v30 = *(v17 + 16);
    v29 = __OFADD__(v30, v26);
    v31 = v30 + v26;
    if (!v29)
    {
      *(v17 + 16) = v31;
      goto LABEL_29;
    }

    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v4 = *(v0 + 72);
  v5 = (v4 + *(v0 + 96));
  v7 = *v5;
  v6 = v5[1];
  if (v6 >> 60 != 15)
  {
LABEL_103:
    v79 = *(v0 + 64);
    sub_254140660(v7, v6);
    v80 = *(v79 + 16);
    v81 = *(v79 + 24);
    v82 = (v4 + *(type metadata accessor for AsyncDecompressionStream.AsyncIterator() + 56));
    v83 = *v82;
    v84 = v82[1];
    *v82 = xmmword_254252DB0;
    sub_254134CF0(v83, v84);
LABEL_104:
    v85 = *(v0 + 8);

    return v85(v7, v6);
  }

  v8 = *(v0 + 64);
  v9 = v4 + v8[12];
  sub_254134CF0(*v9, *(v9 + 8));
  *v9 = v7;
  *(v9 + 8) = v6;
  v10 = v4 + v8[13];
  sub_254134CF0(*v10, *(v10 + 8));
  *v10 = v7;
  *(v10 + 8) = v6;
  if (*(v4 + v8[11] + 4) == 1 && !*(*(v0 + 72) + *(*(v0 + 64) + 36) + 16))
  {
    goto LABEL_104;
  }

  sub_254182650();
  swift_allocError();
  *v11 = 0xD000000000000021;
  v11[1] = 0x8000000254252360;
  swift_willThrow();
LABEL_6:
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_254241E90(uint64_t a1)
{
  v3 = v1 + *(a1 + 52);
  if (*(v3 + 8) >> 60 != 15)
  {
    goto LABEL_7;
  }

  v4 = *(v1 + *(a1 + 36) + 16);
  if (v4 >= sub_2541A5C64())
  {
    v6 = sub_2541A5C64();
    v7 = sub_2541D0258(v6);
    v9 = v8;
    sub_254140660(v7, v8);
    v10 = sub_2541A5440(v7, v9, v18);
    if (v2)
    {
      v11 = v18[0];
      v12 = v18[1];
      sub_254182650();
      swift_allocError();
      *v13 = v11;
      v13[1] = v12;
      sub_254134D04(v7, v9);
      return v5 & 1;
    }

    v14 = sub_2541B1BA0(v10);
    v16 = v15;
    sub_254134D04(v7, v9);
    sub_254134CF0(*v3, *(v3 + 8));
    *v3 = v14;
    *(v3 + 8) = v16;
LABEL_7:
    v5 = 1;
    return v5 & 1;
  }

  v5 = 0;
  return v5 & 1;
}

unint64_t sub_254241FA0(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = v1 + *(a1 + 44);
  if (*(v2 + 4) != 1)
  {
    v6 = 0;
    v5 = *v2;
    goto LABEL_5;
  }

  v3 = (v1 + *(a1 + 36));
  v4 = v3[2];
  if (v4 < 4)
  {
    v5 = 0;
    v6 = 1;
    goto LABEL_5;
  }

  v9 = *v3;
  v10 = v3[1];
  v35 = xmmword_254252DC0;
  v34 = 0;
  sub_2541CF898(4, v9, v10, v4, &v35, &v34, 4);
  v12 = *(&v35 + 1);
  v11 = v35;
  sub_254140660(v35, *(&v35 + 1));
  result = sub_254134D04(v11, v12);
  v13 = v12 >> 62;
  v33 = v2;
  if ((v12 >> 62) > 1)
  {
    goto LABEL_11;
  }

  if (v13)
  {
    goto LABEL_15;
  }

  if ((v12 & 0xFC000000000000) == 0)
  {
    __break(1u);
LABEL_11:
    if (v13 != 2)
    {
      __break(1u);
      return result;
    }

    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    v16 = __OFSUB__(v14, v15);
    v17 = v14 - v15;
    if (v16)
    {
      goto LABEL_57;
    }

    if (v17 >= 4)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_15:
    if (__OFSUB__(HIDWORD(v11), v11))
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
    }

    if (HIDWORD(v11) - v11 < 4)
    {
      goto LABEL_59;
    }

LABEL_17:
    sub_254140660(v11, v12);
  }

  v18 = 0;
  v5 = 0;
  v19 = v11;
  do
  {
    v21 = v5;
    if (v13)
    {
      v23 = v11 >> 32;
      v22 = v11;
      v24 = v19;
      if (v13 != 1)
      {
        v22 = *(v11 + 16);
        v24 = v22 + v18;
        if (__OFADD__(v22, v18))
        {
          goto LABEL_50;
        }

        v23 = *(v11 + 24);
      }
    }

    else
    {
      v23 = BYTE6(v12);
      v22 = 0;
      v24 = v18;
    }

    if (v24 < v22 || v23 < v24)
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v13 == 2)
    {
      if (v24 < *(v11 + 16))
      {
        goto LABEL_51;
      }

      if (v24 >= *(v11 + 24))
      {
        goto LABEL_54;
      }

      v30 = sub_25424D268();
      if (!v30)
      {
        goto LABEL_61;
      }

      v27 = v30;
      v31 = sub_25424D298();
      v29 = v24 - v31;
      if (__OFSUB__(v24, v31))
      {
        goto LABEL_56;
      }

      goto LABEL_19;
    }

    if (v13 == 1)
    {
      if (v24 < v11 || v24 >= v11 >> 32)
      {
        goto LABEL_53;
      }

      v26 = sub_25424D268();
      if (!v26)
      {
        goto LABEL_60;
      }

      v27 = v26;
      v28 = sub_25424D298();
      v29 = v24 - v28;
      if (__OFSUB__(v24, v28))
      {
        goto LABEL_55;
      }

LABEL_19:
      v20 = *(v27 + v29);
      goto LABEL_20;
    }

    if (v24 >= BYTE6(v12))
    {
      goto LABEL_52;
    }

    *&v35 = v11;
    WORD4(v35) = v12;
    BYTE10(v35) = BYTE2(v12);
    BYTE11(v35) = BYTE3(v12);
    BYTE12(v35) = BYTE4(v12);
    BYTE13(v35) = BYTE5(v12);
    v20 = *(&v35 + v24);
LABEL_20:
    ++v18;
    v5 = v20 | (v21 << 8);
    ++v19;
  }

  while (v18 != 4);
  sub_254134D04(v11, v12);
  if (v21 << 8 >> 29)
  {
    sub_254182650();
    swift_allocError();
    *v32 = 0xD00000000000001CLL;
    v32[1] = 0x80000002542523C0;
    swift_willThrow();
    result = sub_254134D04(v11, v12);
  }

  else
  {
    sub_254134D04(v11, v12);
    v6 = 0;
    *v33 = v5;
    *(v33 + 4) = 0;
LABEL_5:
    LOBYTE(v35) = v6;
    result = v5 | (v6 << 32);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_254242364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncDecompressionStream.AsyncIterator();
  v5 = a1 + v4[11];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = (a1 + v4[9]);
  result = sub_2541D0338(a2, v6);
  if (!v6[2])
  {
    *(a1 + v4[10]) = 1;
  }

  return result;
}

uint64_t sub_2542423E4(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = result;
  if ((a3 & 0x2000000000000000) == 0)
  {
    if (result)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_53;
    }

    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a2);
    goto LABEL_14;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v10 = HIDWORD(result) - result;
LABEL_13:
  result = sub_254243844(result, a2, a3, sub_254140660);
LABEL_14:
  if (v10 >= 4)
  {
    v13 = sub_2542435B8(v8, a2);
    result = sub_254243844(v8, a2, a3, sub_254134D04);
    if (!(v13 >> 28))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v13 >> 28 != 1)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_17:
    v14 = v4 + *(a4 + 48);
    if (*(v14 + 8) >> 60 == 15)
    {
      v15 = compression_decode_scratch_buffer_size(COMPRESSION_LZFSE);
      v16 = sub_2541B1BA0(v15);
      v18 = v17;
      sub_254134CF0(*v14, *(v14 + 8));
      *v14 = v16;
      *(v14 + 8) = v18;
    }

    v43 = 0;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v19 = sub_254243844(v8, a2, a3, sub_254140660);
      v20 = a2;
      v21 = a3;
LABEL_34:
      MEMORY[0x28223BE20](v19);
      v37[1] = *(a4 + 16);
      v38 = v4;
      v39 = &v43;
      v40 = v8;
      v41 = a2;
      v42 = a3;
      sub_2541EFC24(sub_254243858, v37, v20, v21);
      result = sub_254134D04(v20, v21);
      if (v43 < 1)
      {
        sub_254182650();
        swift_allocError();
        *v31 = 0xD000000000000020;
        v31[1] = 0x8000000254252390;
        return swift_willThrow();
      }

      v26 = (v4 + *(a4 + 52));
      v27 = v26[1];
      if (v27 >> 60 == 15)
      {
        goto LABEL_51;
      }

      v28 = *v26;
      v29 = v27 >> 62;
      if ((v27 >> 62) > 1)
      {
        v30 = 0;
        if (v29 == 2)
        {
          v30 = *(v28 + 16);
        }
      }

      else if (v29)
      {
        v30 = v28;
      }

      else
      {
        v30 = 0;
      }

      result = sub_2541347C8(v30, v43, v28, v27);
      if (result >= v30)
      {
        if (v26[1] >> 60 != 15)
        {
          v32 = *v26;
          v33 = sub_25424D4B8();
          v35 = v34;
          v36 = v4 + *(a4 + 56);
          result = sub_254134CF0(*v36, *(v36 + 8));
          *v36 = v33;
          *(v36 + 8) = v35;
          return result;
        }

        goto LABEL_52;
      }

      __break(1u);
      goto LABEL_47;
    }

    v22 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v22 == 2)
      {
        result = sub_2541347C8(*(v8 + 16), 4, v8, a2);
        v23 = *(v8 + 16);
        v24 = *(v8 + 24);
LABEL_31:
        if (v24 < result || v24 < v23)
        {
          goto LABEL_48;
        }

        v19 = sub_25424D4B8();
        v20 = v19;
        v21 = v25;
        goto LABEL_34;
      }
    }

    else if (v22)
    {
      v23 = v8;
      result = sub_2541347C8(v8, 4, v8, a2);
      v24 = v8 >> 32;
      goto LABEL_31;
    }

    result = sub_2541347C8(0, 4, v8, a2);
    if (v22 > 1)
    {
      v24 = 0;
      v23 = 0;
    }

    else if (v22)
    {
      v23 = v8;
      v24 = v8 >> 32;
    }

    else
    {
      v23 = 0;
      v24 = BYTE6(a2);
    }

    goto LABEL_31;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_2542427A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    MEMORY[0x28223BE20](result);
    result = type metadata accessor for AsyncDecompressionStream.AsyncIterator();
    if (*(a3 + *(result + 52) + 8) >> 60 != 15)
    {
      return sub_2541EF7E4(sub_25424388C);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_25424285C(uint64_t *result, uint64_t a2, uint64_t a3, size_t *a4, uint8_t *a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10)
{
  if (result)
  {
    v12 = result;
    result = type metadata accessor for AsyncDecompressionStream.AsyncIterator();
    v17 = (a3 + *(result + 12));
    if (v17[1] >> 60 != 15)
    {
      sub_254243844(a8, a9, a10, sub_254140660);
      return sub_254242B4C(v17, a4, v12, v12, a2, a5, a6, a7, a8, a9, a10);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25424294C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25413439C;

  return sub_254240D28(a2);
}

uint64_t AsyncSequence<>.hmvDecompressed.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, a1);
  a2[3] = type metadata accessor for AsyncDecompressionStream();
  a2[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(v5 + 32))(boxed_opaque_existential_1, v8, a1);
}

uint64_t *sub_254242B4C(uint64_t *result, size_t *a2, uint8_t *a3, size_t a4, uint64_t a5, uint8_t *a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11)
{
  v12 = a10;
  v13 = a9;
  v75 = *MEMORY[0x277D85DE8];
  v14 = *result;
  v15 = result[1];
  v73 = result;
  v16 = v15 >> 62;
  if ((v15 >> 62) <= 1)
  {
    v66 = a5;
    src_buffer = a6;
    v68 = a8;
    v69 = a7;
    if (v16)
    {
      goto LABEL_25;
    }

    v65 = HIWORD(v15);
    sub_254243844(a9, a10, a11, sub_254140660);
    result = sub_254134D04(v14, v15);
    *&scratch_buffer = v14;
    WORD4(scratch_buffer) = v15;
    BYTE10(scratch_buffer) = BYTE2(v15);
    BYTE11(scratch_buffer) = BYTE3(v15);
    BYTE12(scratch_buffer) = BYTE4(v15);
    if (a4)
    {
      v14 = v66 - a4;
    }

    else
    {
      v14 = 0;
    }

    BYTE13(scratch_buffer) = BYTE5(v15);
    if (v69)
    {
      v15 = v68 - v69;
    }

    else
    {
      v15 = 0;
    }

    LODWORD(v16) = v65;
    BYTE14(scratch_buffer) = v65;
    if ((a11 & 0x2000000000000000) == 0)
    {
      v17 = src_buffer;
      v13 = a9;
      if ((a9 & 1) == 0)
      {
        __break(1u);
        goto LABEL_12;
      }

LABEL_75:
      *a2 = compression_decode_buffer(a3, v14, v17, v15, &scratch_buffer, COMPRESSION_LZFSE);
      v53 = scratch_buffer;
      v54 = DWORD2(scratch_buffer) | ((WORD6(scratch_buffer) | (BYTE14(scratch_buffer) << 16)) << 32);
      sub_254243844(v13, a10, a11, sub_254134D04);
      result = sub_254243844(v13, a10, a11, sub_254134D04);
      *v73 = v53;
      v73[1] = v54;
LABEL_103:
      v64 = *MEMORY[0x277D85DE8];
      return result;
    }

    v13 = a9;
    v30 = a10 >> 62;
    if ((a10 >> 62) > 1)
    {
      if (v30 != 2)
      {
        goto LABEL_129;
      }

      v49 = *(a9 + 16);
      v48 = *(a9 + 24);
      v31 = v48 - v49;
      if (__OFSUB__(v48, v49))
      {
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      result = sub_254243844(a9, a10, a11, sub_254140660);
    }

    else if (v30)
    {
      if (__OFSUB__(HIDWORD(a9), a9))
      {
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      v31 = HIDWORD(a9) - a9;
      result = sub_254243844(a9, a10, a11, sub_254140660);
    }

    else
    {
      v31 = BYTE6(a10);
    }

    if (v31 >= 4)
    {
      v52 = sub_2542435B8(a9, a10);
      sub_254243844(a9, a10, a11, sub_254134D04);
      if (!(v52 >> 28))
      {
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      v17 = src_buffer;
      if (v52 >> 28 != 1)
      {
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      goto LABEL_75;
    }

LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

LABEL_12:
  if (v16 != 2)
  {
    if (a4)
    {
      v26 = a5 - a4;
    }

    else
    {
      v26 = 0;
    }

    if (a7)
    {
      v27 = a8 - a7;
    }

    else
    {
      v27 = 0;
    }

    *(&scratch_buffer + 7) = 0;
    *&scratch_buffer = 0;
    if ((a11 & 0x2000000000000000) == 0)
    {
      if ((v13 & 1) == 0)
      {
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      v28 = a6;
      sub_254243844(v13, a10, a11, sub_254140660);
      v29 = v28;
      goto LABEL_82;
    }

    v32 = a10 >> 62;
    if ((a10 >> 62) > 1)
    {
      if (v32 != 2)
      {
        goto LABEL_130;
      }

      v51 = *(v13 + 16);
      v50 = *(v13 + 24);
      v34 = v50 - v51;
      if (__OFSUB__(v50, v51))
      {
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      v33 = a6;
    }

    else
    {
      if (!v32)
      {
        v33 = a6;
        v34 = BYTE6(a10);
        goto LABEL_79;
      }

      if (__OFSUB__(HIDWORD(v13), v13))
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      v33 = a6;
      v34 = HIDWORD(v13) - v13;
    }

    result = sub_254243844(v13, a10, a11, sub_254140660);
LABEL_79:
    if (v34 >= 4)
    {
      sub_254243844(v13, a10, a11, sub_254140660);
      v55 = sub_2542435B8(v13, a10);
      sub_254243844(v13, a10, a11, sub_254134D04);
      if (!(v55 >> 28))
      {
LABEL_110:
        __break(1u);
        goto LABEL_111;
      }

      v29 = v33;
      if (v55 >> 28 != 1)
      {
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

LABEL_82:
      *a2 = compression_decode_buffer(a3, v26, v29, v27, &scratch_buffer, COMPRESSION_LZFSE);
      sub_254243844(v13, a10, a11, sub_254134D04);
      result = sub_254243844(v13, a10, a11, sub_254134D04);
      goto LABEL_103;
    }

LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v18 = a5;
  v68 = a8;
  v69 = a7;
  src_buffer = a6;
  sub_254243844(v13, a10, a11, sub_254140660);

  sub_254134D04(v14, v15);
  *&scratch_buffer = v14;
  *(&scratch_buffer + 1) = v15 & 0x3FFFFFFFFFFFFFFFLL;
  *v73 = xmmword_254252DC0;
  sub_254134D04(0, 0xC000000000000000);
  sub_25424D428();
  v15 = *(&scratch_buffer + 1);
  v12 = scratch_buffer;
  v19 = *(scratch_buffer + 16);
  v20 = *(scratch_buffer + 24);
  v21 = sub_25424D268();
  if (!v21)
  {
    result = sub_254243844(v13, a10, a11, sub_254134D04);
    __break(1u);
    goto LABEL_127;
  }

  v14 = v21;
  v22 = sub_25424D298();
  if (__OFSUB__(v19, v22))
  {
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if (__OFSUB__(v20, v19))
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v66 = v19 - v22;
  result = sub_25424D288();
  if (a4)
  {
    a4 = v18 - a4;
  }

  else
  {
    a4 = 0;
  }

  if (v69)
  {
    v23 = v68 - v69;
  }

  else
  {
    v23 = 0;
  }

  if ((a11 & 0x2000000000000000) != 0)
  {
    v35 = a10 >> 62;
    if ((a10 >> 62) > 1)
    {
      if (v35 != 2)
      {
        goto LABEL_131;
      }

      v57 = *(v13 + 16);
      v56 = *(v13 + 24);
      v36 = v56 - v57;
      if (__OFSUB__(v56, v57))
      {
LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

      v58 = v13;
    }

    else
    {
      if (!v35)
      {
        v36 = BYTE6(a10);
        goto LABEL_89;
      }

      v58 = v13;
      if (__OFSUB__(HIDWORD(v13), v13))
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v36 = HIDWORD(v13) - v13;
    }

    result = sub_254243844(v58, a10, a11, sub_254140660);
LABEL_89:
    if (v36 >= 4)
    {
      v59 = sub_2542435B8(v13, a10);
      sub_254243844(v13, a10, a11, sub_254134D04);
      if (!(v59 >> 28))
      {
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v12 = scratch_buffer;
      if (v59 >> 28 != 1)
      {
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      goto LABEL_92;
    }

LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (v13)
  {
LABEL_92:
    *a2 = compression_decode_buffer(a3, a4, src_buffer, v23, (v14 + v66), COMPRESSION_LZFSE);
    sub_254243844(v13, a10, a11, sub_254134D04);
    result = sub_254243844(v13, a10, a11, sub_254134D04);
    *v73 = v12;
    v73[1] = v15 | 0x8000000000000000;
    goto LABEL_103;
  }

  __break(1u);
LABEL_25:
  v24 = v15 & 0x3FFFFFFFFFFFFFFFLL;
  sub_254243844(v13, v12, a11, sub_254140660);
  sub_254140660(v14, v15);
  sub_254134D04(v14, v15);
  *v73 = xmmword_254252DC0;
  sub_254134D04(0, 0xC000000000000000);
  v70 = v12;
  sub_254243844(v13, v12, a11, sub_254140660);
  v25 = v14 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v25 < v14)
    {
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    if (sub_25424D268() && __OFSUB__(v14, sub_25424D298()))
    {
      goto LABEL_117;
    }

    v37 = sub_25424D2B8();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v40 = sub_25424D248();

    v24 = v40;
  }

  if (v25 < v14)
  {
    goto LABEL_105;
  }

  result = sub_25424D268();
  if (!result)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v41 = result;
  v42 = sub_25424D298();
  v43 = v14 - v42;
  if (__OFSUB__(v14, v42))
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  result = sub_25424D288();
  if (a4)
  {
    v44 = v66 - a4;
  }

  else
  {
    v44 = 0;
  }

  if (v69)
  {
    v45 = v68 - v69;
  }

  else
  {
    v45 = 0;
  }

  if ((a11 & 0x2000000000000000) == 0)
  {
    if (v13)
    {
LABEL_102:
      *a2 = compression_decode_buffer(a3, v44, src_buffer, v45, v41 + v43, COMPRESSION_LZFSE);

      sub_254243844(v13, v70, a11, sub_254134D04);
      sub_254243844(v13, v70, a11, sub_254134D04);
      result = sub_254243844(v13, v70, a11, sub_254134D04);
      *v73 = v14;
      v73[1] = v24 | 0x4000000000000000;
      goto LABEL_103;
    }

    __break(1u);
  }

  v46 = v70 >> 62;
  if ((v70 >> 62) > 1)
  {
    if (v46 != 2)
    {
      goto LABEL_132;
    }

    v61 = *(v13 + 16);
    v60 = *(v13 + 24);
    v47 = v60 - v61;
    if (__OFSUB__(v60, v61))
    {
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
    }

    v62 = v13;
  }

  else
  {
    if (!v46)
    {
      v47 = BYTE6(v70);
      goto LABEL_99;
    }

    v62 = v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
      goto LABEL_125;
    }

    v47 = HIDWORD(v13) - v13;
  }

  result = sub_254243844(v62, v70, a11, sub_254140660);
LABEL_99:
  if (v47 >= 4)
  {
    v63 = sub_2542435B8(v13, v70);
    sub_254243844(v13, v70, a11, sub_254134D04);
    if (v63 >> 28)
    {
      if (v63 >> 28 == 1)
      {
        goto LABEL_102;
      }

      goto LABEL_116;
    }

    goto LABEL_114;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_2542435B8(unint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = a2 >> 62;
  v35 = *MEMORY[0x277D85DE8];
  v26 = HIDWORD(result);
  v27 = BYTE6(a2);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    goto LABEL_51;
  }

  v7 = *(result + 16);
  v6 = *(result + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      goto LABEL_48;
    }

    v5 = v5;
  }

LABEL_10:
  if (v5 >= 4)
  {
    v9 = 0;
    LODWORD(v10) = 0;
    v28 = result >> 32;
    v24 = result >> 16;
    v25 = result >> 8;
    for (i = result; ; ++i)
    {
      if (v4)
      {
        v13 = v28;
        v14 = v3;
        v15 = i;
        if (v4 != 1)
        {
          v14 = *(v3 + 16);
          v15 = v14 + v9;
          if (__OFADD__(v14, v9))
          {
            goto LABEL_41;
          }

          v13 = *(v3 + 24);
        }
      }

      else
      {
        v13 = v27;
        v14 = 0;
        v15 = v9;
      }

      if (v15 < v14 || v13 < v15)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
      }

      if (v4 == 2)
      {
        if (v15 < *(v3 + 16))
        {
          goto LABEL_42;
        }

        if (v15 >= *(v3 + 24))
        {
          goto LABEL_45;
        }

        v21 = sub_25424D268();
        if (!v21)
        {
          goto LABEL_50;
        }

        v18 = v21;
        v22 = sub_25424D298();
        v20 = v15 - v22;
        if (__OFSUB__(v15, v22))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v15 >= v27)
          {
            goto LABEL_43;
          }

          v29[0] = v3;
          v29[1] = v25;
          v29[2] = v24;
          v29[3] = BYTE3(v3);
          v29[4] = v26;
          v29[5] = BYTE5(v3);
          v29[6] = BYTE6(v3);
          v29[7] = HIBYTE(v3);
          v30 = a2;
          v31 = BYTE2(a2);
          v32 = BYTE3(a2);
          v33 = BYTE4(a2);
          v34 = BYTE5(a2);
          v12 = v29[v15];
          goto LABEL_13;
        }

        if (v15 < v3 || v15 >= v28)
        {
          goto LABEL_44;
        }

        v17 = sub_25424D268();
        if (!v17)
        {
          goto LABEL_49;
        }

        v18 = v17;
        v19 = sub_25424D298();
        v20 = v15 - v19;
        if (__OFSUB__(v15, v19))
        {
          goto LABEL_46;
        }
      }

      v12 = *(v18 + v20);
LABEL_13:
      ++v9;
      v10 = v12 | (v10 << 8);
      if (v9 == 4)
      {
        v23 = *MEMORY[0x277D85DE8];
        return v10;
      }
    }
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_254243858(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[5];
  v5 = v2[6];
  v6 = v2[7];
  v7 = v2[8];
  v9 = v2[3];
  return sub_2542427A4(a1, a2, v2[4]);
}

uint64_t *sub_25424388C(uint64_t *a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  return sub_25424285C(a1, a2, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88));
}

void sub_2542438C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    sub_254243D54(319, &unk_27F5BC7A0);
    if (v4 <= 0x3F)
    {
      sub_254243D54(319, &qword_27F5BB538);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2542439B8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = ((((((v12 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_28:
    if (v10 < 0x7FFFFFFF)
    {
      v22 = *((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }

    else
    {
      v21 = *(v9 + 48);

      return v21(a1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v11 + (v14 | v20) + 1;
}

void sub_254243B58(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((((((v11 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v16 = 0;
    v17 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((v11 + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a3 - v12 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *(a1 + v13) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v13) = 0;
      }

      else if (v16)
      {
        *(a1 + v13) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v10 < 0x7FFFFFFF)
      {
        v21 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v22 = a2 & 0x7FFFFFFF;
          v21[1] = 0;
          v21[2] = 0;
        }

        else
        {
          v22 = (a2 - 1);
        }

        *v21 = v22;
      }

      else
      {
        v20 = *(v9 + 56);

        v20(a1, a2);
      }

      return;
    }
  }

  if (((((((v11 + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  if (((((((v11 + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v19 = ~v12 + a2;
    bzero(a1, v13);
    *a1 = v19;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      *(a1 + v13) = v18;
    }

    else
    {
      *(a1 + v13) = v18;
    }
  }

  else if (v16)
  {
    *(a1 + v13) = v18;
  }
}

void sub_254243D54(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25424E598();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t static EventDigestQuery.fetchOldestStartDate(database:homeIdentifier:targetCloudKitZone:queryIdentifier:qualityOfService:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  *(v6 + 48) = *a2;
  *(v6 + 64) = *(a2 + 16);
  *(v6 + 104) = *a4;
  return MEMORY[0x2822009F8](sub_254243DDC, 0, 0);
}

uint64_t sub_254243DDC()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
  v5 = [objc_opt_self() predicateWithValue_];
  v6 = sub_25424E538();
  *(v0 + 72) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_254254370;
  v8 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v9 = sub_25424DCA8();
  v10 = [v8 initWithKey:v9 ascending:1];

  *(v7 + 32) = v10;
  sub_254148D7C(0, &unk_27F5B9020, 0x277CCAC98);
  v11 = sub_25424DF88();

  [v6 setSortDescriptors_];

  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  *(v12 + 16) = v4;
  *(v12 + 24) = v1;
  *(v12 + 32) = v6;
  *(v12 + 40) = v3;
  *(v12 + 48) = &unk_286633400;
  *(v12 + 56) = v2;
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_254152A84;
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  v16 = *(v0 + 48);
  v17 = *(v0 + 16);

  return sub_25414D344(v17, &unk_2542588F0, v12, v16, v14, v15);
}

uint64_t EventDigestQuery.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventDigestQuery.Configuration(0) + 32);
  v4 = sub_25424D218();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventDigestQuery.fetchAll()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB230, &unk_254263DF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12[-v4];
  v6 = sub_25424D8B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25424D898();
  v13 = v0;
  v14 = v10;
  type metadata accessor for DigestRecord(0);
  (*(v2 + 104))(v5, *MEMORY[0x277D858A0], v1);
  sub_25424E278();
  return (*(v7 + 8))(v10, v6);
}

uint64_t EventDigestQuery.init(homeIdentifier:dateInterval:resultsLimit:scope:queryIdentifier:qualityOfService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unsigned __int8 *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v59 = a7;
  v63 = a6;
  v67 = a4;
  v60 = a3;
  v64 = a2;
  v58 = a8;
  v56 = type metadata accessor for EventDigestQuery.Configuration(0);
  v10 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25424D218();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v66 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - v18;
  v20 = sub_25424D948();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v65 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v62 = &v50 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v50 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v50 - v30;
  v50 = *a5;
  if (qword_27F5B8420 != -1)
  {
    swift_once();
  }

  v61 = qword_27F5BA548;
  v54 = v21;
  v32 = *(v21 + 16);
  v55 = a1;
  v32(v31, a1, v20);
  v57 = v14;
  v33 = *(v14 + 16);
  v33(v19, v64, v13);
  v32(v29, v63, v20);
  v52 = v31;
  v32(v62, v31, v20);
  v53 = v19;
  v51 = v13;
  v33(v66, v19, v13);
  result = (v32)(v65, v29, v20);
  v74 = 0;
  memset(v73, 0, sizeof(v73));
  if ((v67 & 1) != 0 || v60 >= 1)
  {
    sub_25424BDBC(v73, &v68);
    if (v69)
    {
      sub_2541AF138(&v68, &v70);
      v35 = v61;
    }

    else
    {
      v71 = &type metadata for Configuration.DefaultFeaturesDataSource;
      v72 = &off_2866378F0;
      v36 = v61;
      v37 = sub_2541BE050();
      LOBYTE(v70) = v37 & 1;
      v38 = vdupq_n_s64(v37);
      *v38.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v38, xmmword_2542588C0), vshlq_u64(v38, xmmword_2542588B0))), 0x1000100010001);
      *(&v70 + 1) = vuzp1_s8(*v38.i8, *v38.i8).u32[0];
      if (v69)
      {
        sub_254132E5C(&v68, &qword_27F5BC7B0, &qword_2542588D8);
      }
    }

    v63 = v29;
    if (qword_27F5B8468 != -1)
    {
      swift_once();
    }

    v50 |= 0x8000000000000000;
    v39 = off_27F5BAFB0;
    v40 = v54;
    v41 = *(v54 + 8);
    v41();
    v42 = v57;
    v43 = *(v57 + 8);
    v44 = v51;
    v43(v64, v51);
    (v41)(v55, v20);
    sub_254132E5C(v73, &qword_27F5BC7B0, &qword_2542588D8);
    (v41)(v63, v20);
    v43(v53, v44);
    (v41)(v52, v20);
    v45 = v39[2];
    sub_2541AF138(&v70, v12);
    v46 = v61;
    *(v12 + 5) = v45;
    *(v12 + 6) = v46;
    *(v12 + 7) = v50;
    *(v12 + 8) = 0;
    v47 = v56;
    v48 = *(v40 + 32);
    v48(&v12[*(v56 + 28)], v62, v20);
    (*(v42 + 32))(&v12[v47[8]], v66, v44);
    *&v12[v47[9]] = 0;
    v49 = &v12[v47[10]];
    *v49 = v60;
    v49[8] = v67 & 1;
    v12[v47[11]] = 0;
    v12[v47[12]] = 0;
    v12[v47[13]] = 0;
    v12[v47[14]] = 0;
    v48(&v12[v47[15]], v65, v20);
    *&v12[v47[16]] = v59;
    sub_25424CCF8(v12, v58, type metadata accessor for EventDigestQuery.Configuration);
    return swift_unknownObjectRetain();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t EventDigestQuery.init(database:homeIdentifier:dateInterval:resultsLimit:queryIdentifier:qualityOfService:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v57 = a7;
  v58 = a3;
  v59 = a6;
  v60 = a4;
  v61 = a5;
  v56 = a8;
  v10 = type metadata accessor for EventDigestQuery.Configuration(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25424D218();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25424D948();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = a1[1];
  v49 = *a1;
  v48 = v25;
  v47 = a1[2];
  v51 = v20;
  v26 = *(v20 + 16);
  v50 = &v46 - v27;
  v55 = a2;
  v28 = v58;
  v26();
  v52 = v15;
  v29 = *(v15 + 16);
  v53 = v18;
  v30 = v28;
  v31 = v28;
  v32 = v59;
  v29(v18, v31, v14);
  v54 = v24;
  result = (v26)(v24, v32, v19);
  v68 = 0;
  memset(v67, 0, sizeof(v67));
  if ((v61 & 1) != 0 || v60 >= 1)
  {
    sub_25424BDBC(v67, &v62);
    if (v63)
    {
      sub_2541AF138(&v62, &v64);
    }

    else
    {
      v65 = &type metadata for Configuration.DefaultFeaturesDataSource;
      v66 = &off_2866378F0;
      v34 = sub_2541BE050();
      LOBYTE(v64) = v34 & 1;
      v35 = vdupq_n_s64(v34);
      *v35.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v35, xmmword_2542588C0), vshlq_u64(v35, xmmword_2542588B0))), 0x1000100010001);
      *(&v64 + 1) = vuzp1_s8(*v35.i8, *v35.i8).u32[0];
      if (v63)
      {
        sub_254132E5C(&v62, &qword_27F5BC7B0, &qword_2542588D8);
      }
    }

    if (qword_27F5B8468 != -1)
    {
      swift_once();
    }

    v36 = off_27F5BAFB0;
    v37 = v51;
    v38 = *(v51 + 8);
    v38(v32, v19);
    v39 = v52;
    (*(v52 + 8))(v30, v14);
    v38(v55, v19);
    sub_254132E5C(v67, &qword_27F5BC7B0, &qword_2542588D8);
    v40 = v36[2];
    sub_2541AF138(&v64, v13);
    v41 = v49;
    *(v13 + 5) = v40;
    *(v13 + 6) = v41;
    v42 = v47;
    *(v13 + 7) = v48;
    *(v13 + 8) = v42;
    v43 = *(v37 + 32);
    v43(&v13[v10[7]], v50, v19);
    (*(v39 + 32))(&v13[v10[8]], v53, v14);
    *&v13[v10[9]] = 0;
    v44 = &v13[v10[10]];
    *v44 = v60;
    v44[8] = v61 & 1;
    v13[v10[11]] = 0;
    v13[v10[12]] = 0;
    v13[v10[13]] = 0;
    v13[v10[14]] = 0;
    v43(&v13[v10[15]], v54, v19);
    v45 = v56;
    *&v13[v10[16]] = v57;
    sub_25424CCF8(v13, v45, type metadata accessor for EventDigestQuery.Configuration);
    return swift_unknownObjectRetain();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t EventDigestQuery.homeIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventDigestQuery.Configuration(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventDigestQuery.categories.getter()
{
  v1 = *(v0 + *(type metadata accessor for EventDigestQuery.Configuration(0) + 36));
}

uint64_t EventDigestQuery.resultsLimit.getter()
{
  v1 = (v0 + *(type metadata accessor for EventDigestQuery.Configuration(0) + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

void EventDigestQuery.scope.getter(char *a1@<X8>)
{
  v3 = *(v1 + 56);
  if (v3 < 0)
  {
    v6 = v3 & 1;
    goto LABEL_7;
  }

  v4 = *(v1 + 48);
  v5 = [v4 scope];
  if (v5 == 2)
  {
    v6 = 0;
LABEL_7:
    *a1 = v6;
    return;
  }

  if (v5 == 3)
  {
    v6 = 1;
    goto LABEL_7;
  }

  sub_25424E688();

  [v4 0x279771478];
  v7 = sub_25424E468();
  MEMORY[0x259C05CA0](v7);

  sub_25424E858();
  __break(1u);
}

uint64_t EventDigestQuery.queryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventDigestQuery.Configuration(0) + 60);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_254245070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v33 = a3;
  v31 = a2;
  v3 = sub_25424D8B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BC7E8, &unk_254263EC0);
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = &v26 - v8;
  v27 = &v26 - v8;
  v10 = type metadata accessor for EventDigestQuery(0);
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = sub_25424E128();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_25424CDC0(v31, v12, type metadata accessor for EventDigestQuery);
  v18 = v9;
  v19 = v30;
  (*(v6 + 16))(v18, v32, v30);
  v20 = v3;
  (*(v4 + 16))(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v3);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = (v11 + *(v6 + 80) + v21) & ~*(v6 + 80);
  v23 = (v7 + *(v4 + 80) + v22) & ~*(v4 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_25424CCF8(v12, v24 + v21, type metadata accessor for EventDigestQuery);
  (*(v6 + 32))(v24 + v22, v27, v19);
  (*(v4 + 32))(v24 + v23, v28, v20);
  sub_25419CC1C(0, 0, v16, &unk_254263ED8, v24);
}

uint64_t sub_2542453FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_25424E0A8();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v10 = sub_25424D8B8();
  v6[13] = v10;
  v11 = *(v10 - 8);
  v6[14] = v11;
  v12 = *(v11 + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v13 = type metadata accessor for EventDigestQuery.Configuration(0);
  v6[18] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v15 = *(*(type metadata accessor for EventDigestQuery(0) - 8) + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v16 = sub_25424DAA8();
  v6[25] = v16;
  v17 = *(v16 - 8);
  v6[26] = v17;
  v18 = *(v17 + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25424564C, 0, 0);
}

uint64_t sub_25424564C()
{
  v37 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[6];
  sub_25421C508(v0[30]);
  sub_25424CDC0(v3, v1, type metadata accessor for EventDigestQuery);
  sub_25424CDC0(v3, v2, type metadata accessor for EventDigestQuery);
  v4 = sub_25424DA88();
  v5 = sub_25424E448();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[30];
  v8 = v0[25];
  v9 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  if (v6)
  {
    v12 = v0[18];
    v32 = v0[19];
    v35 = v0[25];
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = v33;
    *v13 = 136446466;
    v14 = *(v12 + 60);
    sub_25424D948();
    v34 = v7;
    sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v15 = sub_25424EA58();
    v17 = v16;
    sub_25424CD60(v10, type metadata accessor for EventDigestQuery);
    v18 = sub_2542203C4(v15, v17, &v36);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    sub_25424CDC0(v11, v32, type metadata accessor for EventDigestQuery.Configuration);
    v19 = sub_25424DD08();
    v21 = v20;
    sub_25424CD60(v11, type metadata accessor for EventDigestQuery);
    v22 = sub_2542203C4(v19, v21, &v36);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_254124000, v4, v5, "[%{public}s] Beginning query: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v33, -1, -1);
    MEMORY[0x259C07330](v13, -1, -1);

    v23 = *(v9 + 8);
    v23(v34, v35);
  }

  else
  {

    sub_25424CD60(v11, type metadata accessor for EventDigestQuery);
    sub_25424CD60(v10, type metadata accessor for EventDigestQuery);
    v23 = *(v9 + 8);
    v23(v7, v8);
  }

  v0[31] = v23;
  v24 = swift_task_alloc();
  v25 = *(v0 + 3);
  v26 = v0[6];
  v27 = v26[6];
  v28 = v26[7];
  v29 = v26[8];
  v0[32] = v24;
  *(v24 + 16) = v25;
  v30 = swift_task_alloc();
  v0[33] = v30;
  *v30 = v0;
  v30[1] = sub_2542459CC;

  return sub_25414CFC8(sub_25414CFC8, &unk_254263EE8, v24, v27, v28, v29);
}

uint64_t sub_2542459CC()
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 256);
  v6 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = sub_254245F5C;
  }

  else
  {
    v4 = sub_254245AFC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_254245AFC()
{
  v58 = v0;
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[8];
  v6 = v0[6];
  sub_25421C508(v0[29]);
  sub_25424CDC0(v6, v1, type metadata accessor for EventDigestQuery);
  (*(v4 + 16))(v2, v5, v3);
  v7 = sub_25424DA88();
  v8 = sub_25424E448();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[22];
    v11 = v0[17];
    v10 = v0[18];
    v12 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57 = v55;
    *v12 = 136446466;
    v13 = *(v10 + 60);
    sub_25424D948();
    sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v14 = sub_25424EA58();
    v16 = v15;
    sub_25424CD60(v9, type metadata accessor for EventDigestQuery);
    v17 = sub_2542203C4(v14, v16, &v57);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2082;
    sub_25424D868();
    v18 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    [v18 setMaximumFractionDigits_];
    v19 = sub_25424E288();
    v20 = [v18 stringForObjectValue_];

    if (v20)
    {
      v21 = sub_25424DCB8();
      v23 = v22;
    }

    else
    {
      v21 = sub_25424E298();
      v23 = v32;
    }

    v33 = v0[31];
    v34 = v0[29];
    v36 = v0[25];
    v35 = v0[26];
    (*(v0[14] + 8))(v0[17], v0[13]);
    v37 = sub_2542203C4(v21, v23, &v57);

    *(v12 + 14) = v37;
    _os_log_impl(&dword_254124000, v7, v8, "[%{public}s] Finished after %{public}s seconds", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v55, -1, -1);
    MEMORY[0x259C07330](v12, -1, -1);

    v33(v34, v36);
  }

  else
  {
    v24 = v0[31];
    v25 = v0[29];
    v26 = v0[25];
    v27 = v0[26];
    v28 = v0[22];
    v29 = v0[17];
    v30 = v0[13];
    v31 = v0[14];

    (*(v31 + 8))(v29, v30);
    sub_25424CD60(v28, type metadata accessor for EventDigestQuery);
    v24(v25, v26);
  }

  v38 = v0[7];
  v0[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BC7E8, &unk_254263EC0);
  sub_25424E238();
  v40 = v0[29];
  v39 = v0[30];
  v42 = v0[27];
  v41 = v0[28];
  v44 = v0[23];
  v43 = v0[24];
  v46 = v0[21];
  v45 = v0[22];
  v48 = v0[19];
  v47 = v0[20];
  v51 = v0[17];
  v52 = v0[16];
  v53 = v0[15];
  v54 = v0[12];
  v56 = v0[11];

  v49 = v0[1];

  return v49();
}

uint64_t sub_254245F5C()
{
  v118 = v0;
  v1 = *(v0 + 272);
  *(v0 + 16) = v1;
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 272);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  if (v5)
  {
    v9 = *(v0 + 224);
    v10 = *(v0 + 168);
    v108 = *(v0 + 128);
    v112 = *(v0 + 104);
    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
    v105 = *(v0 + 64);
    v15 = *(v0 + 48);

    (*(v13 + 32))(v11, v12, v14);
    sub_25421C508(v9);
    sub_25424CDC0(v15, v10, type metadata accessor for EventDigestQuery);
    (*(v7 + 16))(v108, v105, v112);
    v16 = sub_25424DA88();
    v17 = sub_25424E448();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 168);
      v19 = *(v0 + 144);
      v20 = *(v0 + 128);
      v21 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v117 = v113;
      *v21 = 136446466;
      v22 = *(v19 + 60);
      sub_25424D948();
      sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v23 = sub_25424EA58();
      v25 = v24;
      sub_25424CD60(v18, type metadata accessor for EventDigestQuery);
      v26 = sub_2542203C4(v23, v25, &v117);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2082;
      sub_25424D868();
      v27 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v27 setMaximumFractionDigits_];
      v28 = sub_25424E288();
      v29 = [v27 stringForObjectValue_];

      if (v29)
      {
        v30 = sub_25424DCB8();
        v32 = v31;
      }

      else
      {
        v30 = sub_25424E298();
        v32 = v72;
      }

      v110 = *(v0 + 248);
      v73 = *(v0 + 224);
      v75 = *(v0 + 200);
      v74 = *(v0 + 208);
      (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
      v76 = sub_2542203C4(v30, v32, &v117);

      *(v21 + 14) = v76;
      _os_log_impl(&dword_254124000, v16, v17, "[%{public}s] Canceled after %{public}s seconds", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v113, -1, -1);
      MEMORY[0x259C07330](v21, -1, -1);

      v110(v73, v75);
    }

    else
    {
      v56 = *(v0 + 248);
      v57 = *(v0 + 224);
      v58 = *(v0 + 200);
      v59 = *(v0 + 208);
      v60 = *(v0 + 168);
      v61 = *(v0 + 128);
      v62 = *(v0 + 104);
      v63 = *(v0 + 112);

      (*(v63 + 8))(v61, v62);
      sub_25424CD60(v60, type metadata accessor for EventDigestQuery);
      v56(v57, v58);
    }

    v77 = *(v0 + 96);
    v78 = *(v0 + 72);
    v79 = *(v0 + 80);
    v80 = *(v0 + 56);
    sub_25424D09C(&qword_27F5B90E0, MEMORY[0x277D85678]);
    v81 = swift_allocError();
    (*(v79 + 16))(v82, v77, v78);
    *(v0 + 32) = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BC7E8, &unk_254263EC0);
    sub_25424E238();
    (*(v79 + 8))(v77, v78);
  }

  else
  {
    v33 = *(v0 + 216);
    v34 = *(v0 + 160);
    v35 = *(v0 + 120);
    v36 = *(v0 + 64);
    v37 = *(v0 + 48);

    sub_25421C508(v33);
    sub_25424CDC0(v37, v34, type metadata accessor for EventDigestQuery);
    (*(v7 + 16))(v35, v36, v8);
    v38 = v6;
    v39 = sub_25424DA88();
    v40 = sub_25424E428();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = *(v0 + 160);
      v42 = *(v0 + 144);
      v43 = *(v0 + 120);
      v44 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v117 = v114;
      *v44 = 136446722;
      v45 = *(v42 + 60);
      sub_25424D948();
      sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v46 = sub_25424EA58();
      v48 = v47;
      sub_25424CD60(v41, type metadata accessor for EventDigestQuery);
      v49 = sub_2542203C4(v46, v48, &v117);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2082;
      sub_25424D868();
      v50 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v50 setMaximumFractionDigits_];
      v51 = sub_25424E288();
      v52 = [v50 stringForObjectValue_];

      if (v52)
      {
        v53 = sub_25424DCB8();
        v55 = v54;
      }

      else
      {
        v53 = sub_25424E298();
        v55 = v83;
      }

      v84 = *(v0 + 272);
      v106 = *(v0 + 248);
      v86 = *(v0 + 208);
      v85 = *(v0 + 216);
      v87 = *(v0 + 200);
      (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
      v88 = sub_2542203C4(v53, v55, &v117);

      *(v44 + 14) = v88;
      *(v44 + 22) = 2114;
      v89 = v84;
      v90 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 24) = v90;
      *v109 = v90;
      _os_log_impl(&dword_254124000, v39, v40, "[%{public}s] Failed after %{public}s seconds: %{public}@", v44, 0x20u);
      sub_254132E5C(v109, &unk_27F5BBED0, &qword_254253F80);
      MEMORY[0x259C07330](v109, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v114, -1, -1);
      MEMORY[0x259C07330](v44, -1, -1);

      v106(v85, v87);
    }

    else
    {
      v64 = *(v0 + 248);
      v66 = *(v0 + 208);
      v65 = *(v0 + 216);
      v67 = *(v0 + 200);
      v68 = *(v0 + 160);
      v70 = *(v0 + 112);
      v69 = *(v0 + 120);
      v71 = *(v0 + 104);

      (*(v70 + 8))(v69, v71);
      sub_25424CD60(v68, type metadata accessor for EventDigestQuery);
      v64(v65, v67);
    }

    v91 = *(v0 + 56);
    *(v0 + 24) = *(v0 + 272);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BC7E8, &unk_254263EC0);
    sub_25424E238();
  }

  v93 = *(v0 + 232);
  v92 = *(v0 + 240);
  v95 = *(v0 + 216);
  v94 = *(v0 + 224);
  v97 = *(v0 + 184);
  v96 = *(v0 + 192);
  v99 = *(v0 + 168);
  v98 = *(v0 + 176);
  v101 = *(v0 + 152);
  v100 = *(v0 + 160);
  v104 = *(v0 + 136);
  v107 = *(v0 + 128);
  v111 = *(v0 + 120);
  v115 = *(v0 + 96);
  v116 = *(v0 + 88);

  v102 = *(v0 + 8);

  return v102();
}

uint64_t sub_2542468B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_25412F724;

  return sub_254246960(a2, a4);
}

uint64_t sub_254246960(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC7F8, &qword_254263F00);
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BC800, &unk_25425DD60) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v8 = type metadata accessor for DigestRecord(0);
  v3[11] = v8;
  v9 = *(v8 - 8);
  v3[12] = v9;
  v10 = *(v9 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E10, &qword_254253F68);
  v3[15] = v11;
  v12 = *(v11 - 8);
  v3[16] = v12;
  v13 = *(v12 + 64) + 15;
  v3[17] = swift_task_alloc();
  v14 = sub_25424D8B8();
  v3[18] = v14;
  v15 = *(v14 - 8);
  v3[19] = v15;
  v16 = *(v15 + 64) + 15;
  v3[20] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E18, &qword_254253F70);
  v3[21] = v17;
  v18 = *(v17 - 8);
  v3[22] = v18;
  v19 = *(v18 + 64) + 15;
  v3[23] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E20, &qword_254253F78);
  v3[24] = v20;
  v21 = *(v20 - 8);
  v3[25] = v21;
  v22 = *(v21 + 64) + 15;
  v3[26] = swift_task_alloc();
  v23 = type metadata accessor for CKQueryAsyncSequence();
  v3[27] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v25 = *(*(type metadata accessor for EventDigestQuery(0) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v26 = sub_25424DAA8();
  v3[33] = v26;
  v27 = *(v26 - 8);
  v3[34] = v27;
  v28 = *(v27 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v29 = sub_25424D948();
  v3[39] = v29;
  v30 = *(v29 - 8);
  v3[40] = v30;
  v31 = *(v30 + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254246DD8, 0, 0);
}

uint64_t sub_254246DD8()
{
  sub_25424E1E8();
  v1 = *(v0 + 48);
  v2 = type metadata accessor for EventDigestQuery.Configuration(0);
  *(v0 + 352) = v2;
  v3 = *(v2 + 28);
  *(v0 + 456) = v3;
  *(v0 + 464) = *(v1 + *(v2 + 56));
  v4 = swift_task_alloc();
  *(v0 + 360) = v4;
  *v4 = v0;
  v4[1] = sub_254247008;
  v5 = *(v0 + 32);

  return sub_2541A23BC(v5, v1 + v3, (v0 + 464), 1);
}

uint64_t sub_254247008(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 360);
  v7 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {
    v5 = sub_2542477B4;
  }

  else
  {
    v5 = sub_25424711C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25424711C()
{
  v87 = v0;
  v1 = *(v0 + 344);
  v85 = *(v0 + 336);
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);
  v79 = *(v0 + 256);
  v82 = *(v0 + 312);
  v4 = *(v0 + 48);
  v5 = [objc_opt_self() predicateWithValue_];
  *(v0 + 384) = v5;
  sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
  v6 = v5;
  v7 = sub_25424E538();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_254254370;
  v9 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v10 = sub_25424DCA8();
  v11 = [v9 initWithKey:v10 ascending:0];

  *(v8 + 32) = v11;
  sub_254148D7C(0, &unk_27F5B9020, 0x277CCAC98);
  v12 = sub_25424DF88();

  v84 = v7;
  [v7 setSortDescriptors_];

  sub_25424D938();
  sub_25421C508(v3);
  sub_25424CDC0(v4, v79, type metadata accessor for EventDigestQuery);
  v13 = *(v2 + 16);
  *(v0 + 392) = v13;
  *(v0 + 400) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14 = v82;
  v83 = v13;
  v13(v85, v1, v14);
  v15 = sub_25424DA88();
  v16 = sub_25424E408();
  if (os_log_type_enabled(v15, v16))
  {
    v75 = v16;
    v17 = *(v0 + 352);
    v71 = *(v0 + 336);
    v18 = *(v0 + 312);
    v19 = *(v0 + 320);
    v20 = *(v0 + 272);
    v77 = *(v0 + 264);
    v80 = *(v0 + 304);
    v21 = *(v0 + 256);
    v22 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v86 = v73;
    *v22 = 136446466;
    v23 = *(v17 + 60);
    sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v24 = sub_25424EA58();
    v26 = v25;
    sub_25424CD60(v21, type metadata accessor for EventDigestQuery);
    v27 = sub_2542203C4(v24, v26, &v86);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    v28 = sub_25424EA58();
    v30 = v29;
    v31 = *(v19 + 8);
    v31(v71, v18);
    v32 = sub_2542203C4(v28, v30, &v86);

    *(v22 + 14) = v32;
    _os_log_impl(&dword_254124000, v15, v75, "[%{public}s] Beginning subquery %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v73, -1, -1);
    MEMORY[0x259C07330](v22, -1, -1);

    v35 = *(v20 + 8);
    v34 = v20 + 8;
    v33 = v35;
    v35(v80, v77);
  }

  else
  {
    v36 = *(v0 + 336);
    v37 = *(v0 + 312);
    v38 = *(v0 + 320);
    v39 = *(v0 + 304);
    v40 = *(v0 + 264);
    v41 = *(v0 + 272);
    v42 = *(v0 + 256);

    v31 = *(v38 + 8);
    v31(v36, v37);
    sub_25424CD60(v42, type metadata accessor for EventDigestQuery);
    v43 = *(v41 + 8);
    v34 = v41 + 8;
    v33 = v43;
    v43(v39, v40);
  }

  *(v0 + 416) = v33;
  *(v0 + 424) = v31;
  *(v0 + 408) = v34;
  v44 = *(v0 + 352);
  v65 = *(v0 + 344);
  v66 = *(v0 + 368);
  v45 = *(v0 + 312);
  v46 = *(v0 + 216);
  v47 = *(v0 + 224);
  v78 = *(v0 + 208);
  v81 = *(v0 + 176);
  v70 = *(v0 + 184);
  v72 = *(v0 + 152);
  v48 = *(v0 + 144);
  v74 = v48;
  v76 = *(v0 + 168);
  v67 = *(v0 + 160);
  v68 = *(v0 + 136);
  v49 = *(v0 + 128);
  v69 = *(v0 + 120);
  v50 = *(v0 + 48);
  v51 = *(v0 + 32);
  v52 = v44[15];
  *(v0 + 460) = v52;
  v83(&v47[v46[7]], v50 + v52, v45);
  v83(&v47[v46[8]], v65, v45);
  v53 = (v50 + v44[10]);
  v54 = *v53;
  LOBYTE(v53) = *(v53 + 8);
  v55 = *(v50 + v44[16]);
  *v47 = v51;
  *(v47 + 1) = 0;
  *(v47 + 2) = 0;
  *(v47 + 3) = v66;
  *(v47 + 4) = v84;
  *&v47[v46[9]] = &unk_286634340;
  v56 = &v47[v46[10]];
  *v56 = v54;
  v56[8] = v53;
  v57 = &v47[v46[11]];
  *v57 = v55;
  v57[8] = 0;
  *&v47[v46[12]] = 0;
  v58 = v51;
  sub_25424D898();
  v59 = swift_task_alloc();
  *(v59 + 16) = v47;
  *(v59 + 24) = v67;
  sub_254148D7C(0, &unk_27F5B8E30, 0x277CBC5A0);
  (*(v49 + 104))(v68, *MEMORY[0x277D858A0], v69);
  sub_25424E278();

  (*(v72 + 8))(v67, v74);
  sub_25424E178();
  (*(v81 + 8))(v70, v76);
  *(v0 + 432) = 0;
  v60 = *(MEMORY[0x277D858B8] + 4);
  v61 = swift_task_alloc();
  *(v0 + 440) = v61;
  *v61 = v0;
  v61[1] = sub_25424791C;
  v62 = *(v0 + 208);
  v63 = *(v0 + 192);

  return MEMORY[0x2822005A8](v0 + 16, 0, 0, v63, v0 + 24);
}

uint64_t sub_2542477B4()
{
  v23 = v0[47];
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v5 = v0[37];
  v4 = v0[38];
  v7 = v0[35];
  v6 = v0[36];
  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[30];
  v13 = v0[29];
  v14 = v0[28];
  v15 = v0[26];
  v16 = v0[23];
  v17 = v0[20];
  v18 = v0[17];
  v19 = v0[14];
  v20 = v0[13];
  v21 = v0[10];
  v22 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_25424791C()
{
  v2 = *(*v1 + 440);
  v5 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = sub_254248764;
  }

  else
  {
    v3 = sub_254247A30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_254247A30()
{
  v183 = v0;
  if (!*(v0 + 16))
  {
    v23 = *(v0 + 392);
    v22 = *(v0 + 400);
    v24 = *(v0 + 344);
    v25 = *(v0 + 328);
    v26 = *(v0 + 312);
    v27 = *(v0 + 280);
    v28 = *(v0 + 232);
    v29 = *(v0 + 48);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    sub_25421C508(v27);
    sub_25424CDC0(v29, v28, type metadata accessor for EventDigestQuery);
    v23(v25, v24, v26);
    v30 = sub_25424DA88();
    v31 = sub_25424E408();
    if (os_log_type_enabled(v30, v31))
    {
      v142 = *(v0 + 424);
      v146 = *(v0 + 432);
      v32 = *(v0 + 352);
      v164 = *(v0 + 344);
      v170 = *(v0 + 408);
      v33 = *(v0 + 328);
      v137 = *(v0 + 320);
      v34 = *(v0 + 312);
      v154 = *(v0 + 280);
      v159 = *(v0 + 384);
      v150 = *(v0 + 264);
      v35 = *(v0 + 232);
      v174 = *(v0 + 224);
      v179 = *(v0 + 416);
      v36 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v182[0] = v139;
      *v36 = 136446722;
      v37 = *(v32 + 60);
      sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v38 = sub_25424EA58();
      v40 = v39;
      sub_25424CD60(v35, type metadata accessor for EventDigestQuery);
      v41 = sub_2542203C4(v38, v40, v182);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2082;
      v42 = v33;
      v43 = sub_25424EA58();
      v45 = v44;
      v142(v42, v34);
      v46 = sub_2542203C4(v43, v45, v182);

      *(v36 + 14) = v46;
      *(v36 + 22) = 2048;
      *(v36 + 24) = v146;
      _os_log_impl(&dword_254124000, v30, v31, "[%{public}s] Finished subquery %{public}s, emitted %ld matching digest(s)", v36, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v139, -1, -1);
      MEMORY[0x259C07330](v36, -1, -1);

      v179(v154, v150);
      v142(v164, v34);
      v47 = v174;
    }

    else
    {
      v77 = *(v0 + 424);
      v166 = *(v0 + 408);
      v78 = *(v0 + 384);
      v172 = *(v0 + 344);
      v175 = *(v0 + 416);
      v80 = *(v0 + 320);
      v79 = *(v0 + 328);
      v81 = *(v0 + 312);
      v82 = *(v0 + 280);
      v83 = *(v0 + 264);
      v84 = *(v0 + 232);
      v180 = *(v0 + 224);

      v77(v79, v81);
      sub_25424CD60(v84, type metadata accessor for EventDigestQuery);
      v175(v82, v83);
      v77(v172, v81);
      v47 = v180;
    }

    sub_25424CD60(v47, type metadata accessor for CKQueryAsyncSequence);
    v86 = *(v0 + 336);
    v85 = *(v0 + 344);
    v87 = *(v0 + 328);
    v88 = *(v0 + 296);
    v89 = *(v0 + 304);
    v91 = *(v0 + 280);
    v90 = *(v0 + 288);
    v93 = *(v0 + 248);
    v92 = *(v0 + 256);
    v94 = *(v0 + 240);
    v140 = *(v0 + 232);
    v144 = *(v0 + 224);
    v148 = *(v0 + 208);
    v152 = *(v0 + 184);
    v156 = *(v0 + 160);
    v161 = *(v0 + 136);
    v167 = *(v0 + 112);
    v173 = *(v0 + 104);
    v176 = *(v0 + 80);
    v181 = *(v0 + 72);

    v21 = *(v0 + 8);
    goto LABEL_11;
  }

  v177 = *(v0 + 16);
  v1 = *(v0 + 448);
  sub_25424E1E8();
  if (!v1)
  {
    v48 = *(v0 + 460);
    v49 = *(v0 + 456);
    v50 = *(v0 + 88);
    v51 = *(v0 + 96);
    v52 = *(v0 + 80);
    v53 = *(v0 + 48);
    v54 = [v177 recordID];
    v55 = [v54 recordName];

    v171 = sub_25424DCB8();
    v57 = v56;

    sub_25424BE2C(v177, v53 + v49, v53 + v48, v52);
    if ((*(v51 + 48))(v52, 1, v50) == 1)
    {
      v58 = *(v0 + 288);
      v59 = *(v0 + 240);
      v60 = *(v0 + 48);
      sub_254132E5C(*(v0 + 80), &unk_27F5BC800, &unk_25425DD60);
      sub_25421C508(v58);
      sub_25424CDC0(v60, v59, type metadata accessor for EventDigestQuery);

      v61 = v177;
      v62 = sub_25424DA88();
      v63 = sub_25424E428();

      v64 = os_log_type_enabled(v62, v63);
      v165 = *(v0 + 416);
      if (v64)
      {
        v147 = v63;
        v65 = *(v0 + 352);
        v66 = *(v0 + 312);
        v155 = *(v0 + 264);
        v160 = *(v0 + 288);
        v67 = *(v0 + 240);
        v151 = *(v0 + 408);
        v68 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v182[0] = v69;
        *v68 = 136446722;
        v70 = *(v65 + 60);
        sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
        v71 = sub_25424EA58();
        v73 = v72;
        sub_25424CD60(v67, type metadata accessor for EventDigestQuery);
        v74 = sub_2542203C4(v71, v73, v182);

        *(v68 + 4) = v74;
        *(v68 + 12) = 2082;
        v75 = sub_2542203C4(v171, v57, v182);

        *(v68 + 14) = v75;
        *(v68 + 22) = 2112;
        *(v68 + 24) = v61;
        *v143 = v177;
        v76 = v61;
        _os_log_impl(&dword_254124000, v62, v147, "[%{public}s] Found invalid digest %{public}s: %@", v68, 0x20u);
        sub_254132E5C(v143, &unk_27F5BBED0, &qword_254253F80);
        MEMORY[0x259C07330](v143, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x259C07330](v69, -1, -1);
        MEMORY[0x259C07330](v68, -1, -1);

        v165(v160, v155);
      }

      else
      {
        v120 = *(v0 + 288);
        v121 = *(v0 + 264);
        v122 = *(v0 + 240);

        sub_25424CD60(v122, type metadata accessor for EventDigestQuery);
        v165(v120, v121);
      }
    }

    else
    {
      v96 = *(v0 + 296);
      v97 = *(v0 + 248);
      v98 = *(v0 + 48);
      sub_25424CCF8(*(v0 + 80), *(v0 + 112), type metadata accessor for DigestRecord);
      sub_25421C508(v96);
      sub_25424CDC0(v98, v97, type metadata accessor for EventDigestQuery);

      v99 = sub_25424DA88();
      v100 = sub_25424E408();

      v101 = os_log_type_enabled(v99, v100);
      v103 = *(v0 + 408);
      v102 = *(v0 + 416);
      if (v101)
      {
        v104 = *(v0 + 352);
        v105 = *(v0 + 312);
        v162 = *(v0 + 264);
        v168 = *(v0 + 296);
        v106 = *(v0 + 248);
        v107 = swift_slowAlloc();
        v182[0] = swift_slowAlloc();
        v157 = v102;
        v108 = v182[0];
        *v107 = 136446466;
        v109 = *(v104 + 60);
        sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
        v110 = sub_25424EA58();
        v112 = v111;
        sub_25424CD60(v106, type metadata accessor for EventDigestQuery);
        v113 = sub_2542203C4(v110, v112, v182);

        *(v107 + 4) = v113;
        *(v107 + 12) = 2082;
        v114 = sub_2542203C4(v171, v57, v182);

        *(v107 + 14) = v114;
        _os_log_impl(&dword_254124000, v99, v100, "[%{public}s] Record contains a digest that matches query: %{public}s", v107, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C07330](v108, -1, -1);
        MEMORY[0x259C07330](v107, -1, -1);

        v115 = v157(v168, v162);
      }

      else
      {
        v123 = *(v0 + 296);
        v124 = *(v0 + 264);
        v125 = *(v0 + 248);

        sub_25424CD60(v125, type metadata accessor for EventDigestQuery);
        v115 = v102(v123, v124);
      }

      v126 = *(v0 + 432);
      v127 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        __break(1u);
        return MEMORY[0x2822005A8](v115, v116, v117, v118, v119);
      }

      v128 = *(v0 + 112);
      v129 = *(v0 + 64);
      v130 = *(v0 + 72);
      v131 = *(v0 + 56);
      v132 = *(v0 + 40);
      sub_25424CDC0(v128, *(v0 + 104), type metadata accessor for DigestRecord);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BC7E8, &unk_254263EC0);
      sub_25424E228();

      (*(v129 + 8))(v130, v131);
      sub_25424CD60(v128, type metadata accessor for DigestRecord);
      *(v0 + 432) = v127;
    }

    v133 = *(MEMORY[0x277D858B8] + 4);
    v134 = swift_task_alloc();
    *(v0 + 440) = v134;
    *v134 = v0;
    v134[1] = sub_25424791C;
    v135 = *(v0 + 208);
    v118 = *(v0 + 192);
    v119 = v0 + 24;
    v115 = v0 + 16;
    v116 = 0;
    v117 = 0;

    return MEMORY[0x2822005A8](v115, v116, v117, v118, v119);
  }

  v2 = *(v0 + 424);
  v3 = *(v0 + 384);
  v4 = *(v0 + 344);
  v5 = *(v0 + 312);
  v6 = *(v0 + 320);
  v7 = *(v0 + 224);
  v8 = *(v0 + 200);
  v9 = *(v0 + 208);
  v10 = *(v0 + 192);

  (*(v8 + 8))(v9, v10);
  v2(v4, v5);
  sub_25424CD60(v7, type metadata accessor for CKQueryAsyncSequence);
  v12 = *(v0 + 336);
  v11 = *(v0 + 344);
  v13 = *(v0 + 328);
  v15 = *(v0 + 296);
  v14 = *(v0 + 304);
  v17 = *(v0 + 280);
  v16 = *(v0 + 288);
  v19 = *(v0 + 248);
  v18 = *(v0 + 256);
  v20 = *(v0 + 240);
  v136 = *(v0 + 232);
  v138 = *(v0 + 224);
  v141 = *(v0 + 208);
  v145 = *(v0 + 184);
  v149 = *(v0 + 160);
  v153 = *(v0 + 136);
  v158 = *(v0 + 112);
  v163 = *(v0 + 104);
  v169 = *(v0 + 80);
  v178 = *(v0 + 72);

  v21 = *(v0 + 8);
LABEL_11:

  return v21();
}

uint64_t sub_254248764()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 344);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v5 = *(v0 + 224);
  v7 = *(v0 + 200);
  v6 = *(v0 + 208);
  v8 = *(v0 + 192);

  (*(v7 + 8))(v6, v8);
  v1(v2, v3);
  sub_25424CD60(v5, type metadata accessor for CKQueryAsyncSequence);
  v31 = *(v0 + 24);
  v10 = *(v0 + 336);
  v9 = *(v0 + 344);
  v11 = *(v0 + 328);
  v13 = *(v0 + 296);
  v12 = *(v0 + 304);
  v15 = *(v0 + 280);
  v14 = *(v0 + 288);
  v17 = *(v0 + 248);
  v16 = *(v0 + 256);
  v18 = *(v0 + 240);
  v21 = *(v0 + 232);
  v22 = *(v0 + 224);
  v23 = *(v0 + 208);
  v24 = *(v0 + 184);
  v25 = *(v0 + 160);
  v26 = *(v0 + 136);
  v27 = *(v0 + 112);
  v28 = *(v0 + 104);
  v29 = *(v0 + 80);
  v30 = *(v0 + 72);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t static EventDigestQuery.fetchMostRecentEndDate(homeIdentifier:scope:targetCloudKitZone:queryIdentifier:qualityOfService:)(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 88) = *a3;
  *(v6 + 89) = *a4;
  return MEMORY[0x2822009F8](sub_25424896C, 0, 0);
}

uint64_t sub_25424896C()
{
  if (qword_27F5B8420 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 89);
  v18 = *(v0 + 88);
  v2 = *(v0 + 32);
  v17 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = qword_27F5BA548;
  *(v0 + 48) = qword_27F5BA548;
  sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
  v5 = v4;
  v6 = [objc_opt_self() predicateWithValue_];
  v7 = sub_25424E538();
  *(v0 + 56) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_254254370;
  v9 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v10 = sub_25424DCA8();
  v11 = [v9 initWithKey:v10 ascending:0];

  *(v8 + 32) = v11;
  sub_254148D7C(0, &unk_27F5B9020, 0x277CCAC98);
  v12 = sub_25424DF88();

  [v7 setSortDescriptors_];

  v13 = swift_task_alloc();
  *(v0 + 64) = v13;
  *(v13 + 16) = v3;
  *(v13 + 24) = v1;
  *(v13 + 32) = v7;
  *(v13 + 40) = v2;
  *(v13 + 48) = &unk_286634390;
  *(v13 + 56) = v17;
  v14 = swift_task_alloc();
  *(v0 + 72) = v14;
  *v14 = v0;
  v14[1] = sub_254248C0C;
  v15 = *(v0 + 16);

  return sub_25414D344(v15, &unk_254263E10, v13, v4, v18 | 0x8000000000000000, 0);
}

uint64_t sub_254248C0C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_25424D0E8;
  }

  else
  {
    v4 = sub_25424D0E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t static EventDigestQuery.fetchMostRecentEndDate(database:homeIdentifier:targetCloudKitZone:queryIdentifier:qualityOfService:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  *(v6 + 48) = *a2;
  *(v6 + 64) = *(a2 + 16);
  *(v6 + 104) = *a4;
  return MEMORY[0x2822009F8](sub_254248D78, 0, 0);
}

uint64_t sub_254248D78()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
  v5 = [objc_opt_self() predicateWithValue_];
  v6 = sub_25424E538();
  *(v0 + 72) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_254254370;
  v8 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v9 = sub_25424DCA8();
  v10 = [v8 initWithKey:v9 ascending:0];

  *(v7 + 32) = v10;
  sub_254148D7C(0, &unk_27F5B9020, 0x277CCAC98);
  v11 = sub_25424DF88();

  [v6 setSortDescriptors_];

  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  *(v12 + 16) = v4;
  *(v12 + 24) = v1;
  *(v12 + 32) = v6;
  *(v12 + 40) = v3;
  *(v12 + 48) = &unk_2866343C0;
  *(v12 + 56) = v2;
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_254248FC0;
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  v16 = *(v0 + 48);
  v17 = *(v0 + 16);

  return sub_25414D344(v17, &unk_254263E20, v12, v16, v14, v15);
}

uint64_t sub_254248FC0()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_25424D0EC;
  }

  else
  {
    v4 = sub_25424D0F8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2542490F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 32) = a1;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA4C8, "pV") - 8) + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  v13 = type metadata accessor for DigestRecord.Metadata(0);
  *(v8 + 96) = v13;
  v14 = *(v13 - 8);
  *(v8 + 104) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E10, &qword_254253F68);
  *(v8 + 120) = v16;
  v17 = *(v16 - 8);
  *(v8 + 128) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  v19 = sub_25424D8B8();
  *(v8 + 144) = v19;
  v20 = *(v19 - 8);
  *(v8 + 152) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E18, &qword_254253F70);
  *(v8 + 168) = v22;
  v23 = *(v22 - 8);
  *(v8 + 176) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E20, &qword_254253F78);
  *(v8 + 192) = v25;
  v26 = *(v25 - 8);
  *(v8 + 200) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v28 = type metadata accessor for CKQueryAsyncSequence();
  *(v8 + 216) = v28;
  v29 = *(*(v28 - 8) + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 264) = a4 & 1;
  v30 = swift_task_alloc();
  *(v8 + 232) = v30;
  *v30 = v8;
  v30[1] = sub_254249424;

  return sub_2541A23BC(a2, a3, (v8 + 264), 1);
}

uint64_t sub_254249424(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v7 = sub_25424D0F0;
  }

  else
  {
    *(v4 + 248) = a1;
    v7 = sub_25424954C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25424954C()
{
  v2 = v0[27];
  v1 = v0[28];
  v30 = v0[26];
  v31 = v0[22];
  v3 = v0[20];
  v26 = v0[23];
  v27 = v0[19];
  v28 = v0[18];
  v29 = v0[21];
  v23 = v0[31];
  v24 = v0[17];
  v4 = v0[16];
  v25 = v0[15];
  v5 = v0[9];
  v22 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v2[7];
  v10 = sub_25424D948();
  (*(*(v10 - 8) + 16))(&v1[v9], v7, v10);
  v11 = v2[8];
  v12 = v8;
  sub_25424D938();
  *v1 = v8;
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *(v1 + 3) = v23;
  *(v1 + 4) = v6;
  *&v1[v2[9]] = v5;
  v13 = &v1[v2[10]];
  *v13 = 1;
  v13[8] = 0;
  v14 = &v1[v2[11]];
  *v14 = v22;
  v14[8] = 0;
  *&v1[v2[12]] = 0;
  v15 = v6;

  sub_25424D898();
  v16 = swift_task_alloc();
  *(v16 + 16) = v1;
  *(v16 + 24) = v3;
  sub_254148D7C(0, &unk_27F5B8E30, 0x277CBC5A0);
  (*(v4 + 104))(v24, *MEMORY[0x277D858A0], v25);
  sub_25424E278();

  (*(v27 + 8))(v3, v28);
  sub_25424E178();
  (*(v31 + 8))(v26, v29);
  v17 = *(MEMORY[0x277D858B8] + 4);
  v18 = swift_task_alloc();
  v0[32] = v18;
  *v18 = v0;
  v18[1] = sub_2542497D0;
  v19 = v0[26];
  v20 = v0[24];

  return MEMORY[0x2822005A8](v0 + 2, 0, 0, v20, v0 + 3);
}

uint64_t sub_2542497D0()
{
  v2 = *(*v1 + 256);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_25424D0F4;
  }

  else
  {
    v3 = sub_2542498E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2542498E0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = *(v0 + 96);
    v2 = *(v0 + 104);
    v4 = *(v0 + 88);
    sub_254249BA0(*(v0 + 16), *(v0 + 48), *(v0 + 64), v4);

    if ((*(v2 + 48))(v4, 1, v3) == 1)
    {
      sub_254132E5C(*(v0 + 88), &qword_27F5BA4C8, "pV");
      v5 = *(MEMORY[0x277D858B8] + 4);
      v6 = swift_task_alloc();
      *(v0 + 256) = v6;
      *v6 = v0;
      v6[1] = sub_2542497D0;
      v7 = *(v0 + 208);
      v8 = *(v0 + 192);

      return MEMORY[0x2822005A8](v0 + 16, 0, 0, v8, v0 + 24);
    }

    v11 = *(v0 + 224);
    v12 = *(v0 + 144);
    v13 = *(v0 + 152);
    v14 = *(v0 + 112);
    v15 = *(v0 + 88);
    v16 = *(v0 + 96);
    v17 = *(v0 + 32);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    sub_25424CD60(v11, type metadata accessor for CKQueryAsyncSequence);
    sub_25424CCF8(v15, v14, type metadata accessor for DigestRecord.Metadata);
    (*(v13 + 16))(v17, v14 + *(v16 + 24), v12);
    sub_25424CD60(v14, type metadata accessor for DigestRecord.Metadata);
    v10 = 0;
  }

  else
  {
    v9 = *(v0 + 224);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    sub_25424CD60(v9, type metadata accessor for CKQueryAsyncSequence);
    v10 = 1;
  }

  v18 = *(v0 + 224);
  v19 = *(v0 + 208);
  v20 = *(v0 + 184);
  v21 = *(v0 + 160);
  v22 = *(v0 + 136);
  v23 = *(v0 + 112);
  v24 = *(v0 + 88);
  (*(*(v0 + 152) + 56))(*(v0 + 32), v10, 1, *(v0 + 144));

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_254249BA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v126 = a3;
  v116 = a2;
  v129 = a4;
  v5 = sub_25424D948();
  v125 = *(v5 - 1);
  v6 = *(v125 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v121 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v112 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v119 = &v112 - v13;
  MEMORY[0x28223BE20](v12);
  v114 = &v112 - v14;
  v15 = sub_25424DAA8();
  v16 = *(v15 - 8);
  v123 = v15;
  v124 = v16;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v122 = (&v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v127 = (&v112 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v120 = &v112 - v23;
  MEMORY[0x28223BE20](v22);
  v115 = &v112 - v24;
  v130 = type metadata accessor for DigestRecord.Metadata(0);
  v128 = *(v130 - 8);
  v25 = *(v128 + 64);
  v26 = MEMORY[0x28223BE20](v130);
  v112 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v113 = &v112 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v118 = &v112 - v31;
  MEMORY[0x28223BE20](v30);
  v117 = &v112 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v112 - v35;
  v37 = [a1 recordID];
  v38 = [v37 recordName];
  sub_25424DCB8();

  v39 = v125;
  sub_25424D8C8();
  v40 = v5;

  LODWORD(v38) = (*(v39 + 48))(v36, 1, v5);
  sub_254132E5C(v36, &unk_27F5B8E50, &qword_254254390);
  if (v38 == 1)
  {
    sub_25421C508(v127);
    (*(v39 + 16))(v11, v126, v5);
    v41 = v37;
    v42 = sub_25424DA88();
    v43 = sub_25424E408();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v132 = v45;
      *v44 = 136446722;
      sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v46 = sub_25424EA58();
      v48 = v47;
      (*(v39 + 8))(v11, v5);
      v49 = sub_2542203C4(v46, v48, &v132);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2160;
      *(v44 + 14) = 1752392040;
      *(v44 + 22) = 2080;
      v50 = [v41 recordName];
      v51 = sub_25424DCB8();
      v53 = v52;

      v54 = sub_2542203C4(v51, v53, &v132);

      *(v44 + 24) = v54;
      _os_log_impl(&dword_254124000, v42, v43, "[%{public}s] Ignoring record with non-UUID record name: %{mask.hash}s", v44, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v45, -1, -1);
      MEMORY[0x259C07330](v44, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v11, v5);
    }

    (*(v124 + 8))(v127, v123);
  }

  else
  {
    v55 = v126;
    if ([a1 isExpired])
    {
      v56 = v120;
      sub_25421C508(v120);
      v57 = v119;
      (*(v39 + 16))(v119, v55, v40);
      v58 = v37;
      v59 = sub_25424DA88();
      v60 = sub_25424E408();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = v57;
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        *&v132 = v127;
        *v62 = 136446466;
        sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
        v64 = sub_25424EA58();
        v65 = v40;
        v67 = v66;
        (*(v39 + 8))(v61, v65);
        v68 = sub_2542203C4(v64, v67, &v132);

        *(v62 + 4) = v68;
        *(v62 + 12) = 2114;
        *(v62 + 14) = v58;
        *v63 = v58;
        v69 = v58;
        _os_log_impl(&dword_254124000, v59, v60, "[%{public}s] Ignoring record %{public}@ that has expired", v62, 0x16u);
        sub_254132E5C(v63, &unk_27F5BBED0, &qword_254253F80);
        MEMORY[0x259C07330](v63, -1, -1);
        v70 = v127;
        __swift_destroy_boxed_opaque_existential_1(v127);
        MEMORY[0x259C07330](v70, -1, -1);
        MEMORY[0x259C07330](v62, -1, -1);
      }

      else
      {

        (*(v39 + 8))(v57, v40);
      }

      (*(v124 + 8))(v56, v123);
    }

    else
    {
      v71 = a1;
      sub_254230304(1u, [a1 encryptedValues], &v132);
      v127 = v5;
      swift_unknownObjectRelease();
      v72 = v132;
      v73 = sub_25424D168();
      v74 = *(v73 + 48);
      v75 = *(v73 + 52);
      swift_allocObject();
      sub_25424D158();
      sub_25424D09C(&qword_27F5BA4D8, type metadata accessor for DigestRecord.Metadata);
      v76 = v118;
      sub_25424D138();

      sub_254134D04(v72, *(&v72 + 1));
      v80 = v117;
      sub_25424CCF8(v76, v117, type metadata accessor for DigestRecord.Metadata);
      sub_25424D09C(&qword_27F5B9090, MEMORY[0x277CC95F0]);
      v81 = v127;
      v82 = sub_25424DC98();
      if (v82)
      {

        v83 = v129;
        sub_25424CCF8(v80, v129, type metadata accessor for DigestRecord.Metadata);
        v78 = v83;
        v77 = 0;
        return (*(v128 + 56))(v78, v77, 1, v130);
      }

      v84 = v115;
      sub_25421C508(v115);
      v85 = v55;
      v86 = v114;
      (*(v39 + 16))(v114, v85, v81);
      sub_25424CDC0(v80, v113, type metadata accessor for DigestRecord.Metadata);
      v87 = v37;
      v88 = v71;
      v89 = sub_25424DA88();
      v90 = sub_25424E428();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v122 = v89;
        v93 = v92;
        v126 = swift_slowAlloc();
        *&v132 = v126;
        *v91 = 136446978;
        sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
        v94 = sub_25424EA58();
        LODWORD(v121) = v90;
        v96 = v95;
        (*(v39 + 8))(v86, v81);
        v97 = sub_2542203C4(v94, v96, &v132);

        *(v91 + 4) = v97;
        *(v91 + 12) = 2114;
        *(v91 + 14) = v87;
        v98 = v93;
        *v93 = v87;
        *(v91 + 22) = 2080;
        sub_25424CDC0(v72, v112, type metadata accessor for DigestRecord.Metadata);
        v99 = v87;
        v100 = sub_25424DD08();
        v102 = v101;
        sub_25424CD60(v72, type metadata accessor for DigestRecord.Metadata);
        v103 = sub_2542203C4(v100, v102, &v132);

        *(v91 + 24) = v103;
        *(v91 + 32) = 2080;
        v104 = [v88 encryptedValues];
        v105 = sub_25424DCA8();
        v106 = [v104 objectForKeyedSubscript_];
        swift_unknownObjectRelease();

        v131 = v106;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BC7D8, &unk_254263EB0);
        v107 = sub_25424DD08();
        v109 = sub_2542203C4(v107, v108, &v132);

        *(v91 + 34) = v109;
        v110 = v122;
        _os_log_impl(&dword_254124000, v122, v121, "[%{public}s] Ignoring record %{public}@ that belongs to another home: %s, %s", v91, 0x2Au);
        sub_254132E5C(v98, &unk_27F5BBED0, &qword_254253F80);
        MEMORY[0x259C07330](v98, -1, -1);
        v111 = v126;
        swift_arrayDestroy();
        MEMORY[0x259C07330](v111, -1, -1);
        MEMORY[0x259C07330](v91, -1, -1);

        (*(v124 + 8))(v115, v123);
        sub_25424CD60(v117, type metadata accessor for DigestRecord.Metadata);
      }

      else
      {

        sub_25424CD60(v72, type metadata accessor for DigestRecord.Metadata);
        (*(v39 + 8))(v86, v81);
        (*(v124 + 8))(v84, v123);
        sub_25424CD60(v80, type metadata accessor for DigestRecord.Metadata);
      }
    }
  }

  v77 = 1;
  v78 = v129;
  return (*(v128 + 56))(v78, v77, 1, v130);
}

uint64_t static EventDigestQuery.fetchOldestStartDate(homeIdentifier:scope:targetCloudKitZone:queryIdentifier:qualityOfService:)(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 88) = *a3;
  *(v6 + 89) = *a4;
  return MEMORY[0x2822009F8](sub_25424AC88, 0, 0);
}

uint64_t sub_25424AC88()
{
  if (qword_27F5B8420 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 89);
  v18 = *(v0 + 88);
  v2 = *(v0 + 32);
  v17 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = qword_27F5BA548;
  *(v0 + 48) = qword_27F5BA548;
  sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
  v5 = v4;
  v6 = [objc_opt_self() predicateWithValue_];
  v7 = sub_25424E538();
  *(v0 + 56) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_254254370;
  v9 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v10 = sub_25424DCA8();
  v11 = [v9 initWithKey:v10 ascending:1];

  *(v8 + 32) = v11;
  sub_254148D7C(0, &unk_27F5B9020, 0x277CCAC98);
  v12 = sub_25424DF88();

  [v7 setSortDescriptors_];

  v13 = swift_task_alloc();
  *(v0 + 64) = v13;
  *(v13 + 16) = v3;
  *(v13 + 24) = v1;
  *(v13 + 32) = v7;
  *(v13 + 40) = v2;
  *(v13 + 48) = &unk_2866343F0;
  *(v13 + 56) = v17;
  v14 = swift_task_alloc();
  *(v0 + 72) = v14;
  *v14 = v0;
  v14[1] = sub_25424AF2C;
  v15 = *(v0 + 16);

  return sub_25414D344(v15, &unk_254263E30, v13, v4, v18 | 0x8000000000000000, 0);
}

uint64_t sub_25424AF2C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_25424B0C4;
  }

  else
  {
    v4 = sub_25424B05C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25424B05C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25424B0C4()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_25424B12C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 32) = a1;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA4C8, "pV") - 8) + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  v13 = type metadata accessor for DigestRecord.Metadata(0);
  *(v8 + 96) = v13;
  v14 = *(v13 - 8);
  *(v8 + 104) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E10, &qword_254253F68);
  *(v8 + 120) = v16;
  v17 = *(v16 - 8);
  *(v8 + 128) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  v19 = sub_25424D8B8();
  *(v8 + 144) = v19;
  v20 = *(v19 - 8);
  *(v8 + 152) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E18, &qword_254253F70);
  *(v8 + 168) = v22;
  v23 = *(v22 - 8);
  *(v8 + 176) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E20, &qword_254253F78);
  *(v8 + 192) = v25;
  v26 = *(v25 - 8);
  *(v8 + 200) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v28 = type metadata accessor for CKQueryAsyncSequence();
  *(v8 + 216) = v28;
  v29 = *(*(v28 - 8) + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 264) = a4 & 1;
  v30 = swift_task_alloc();
  *(v8 + 232) = v30;
  *v30 = v8;
  v30[1] = sub_25424B460;

  return sub_2541A23BC(a2, a3, (v8 + 264), 1);
}

uint64_t sub_25424B460(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v7 = sub_25424B80C;
  }

  else
  {
    *(v4 + 248) = a1;
    v7 = sub_25424B588;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25424B588()
{
  v2 = v0[27];
  v1 = v0[28];
  v30 = v0[26];
  v31 = v0[22];
  v3 = v0[20];
  v26 = v0[23];
  v27 = v0[19];
  v28 = v0[18];
  v29 = v0[21];
  v23 = v0[31];
  v24 = v0[17];
  v4 = v0[16];
  v25 = v0[15];
  v5 = v0[9];
  v22 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v2[7];
  v10 = sub_25424D948();
  (*(*(v10 - 8) + 16))(&v1[v9], v7, v10);
  v11 = v2[8];
  v12 = v8;
  sub_25424D938();
  *v1 = v8;
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *(v1 + 3) = v23;
  *(v1 + 4) = v6;
  *&v1[v2[9]] = v5;
  v13 = &v1[v2[10]];
  *v13 = 1;
  v13[8] = 0;
  v14 = &v1[v2[11]];
  *v14 = v22;
  v14[8] = 0;
  *&v1[v2[12]] = 0;
  v15 = v6;

  sub_25424D898();
  v16 = swift_task_alloc();
  *(v16 + 16) = v1;
  *(v16 + 24) = v3;
  sub_254148D7C(0, &unk_27F5B8E30, 0x277CBC5A0);
  (*(v4 + 104))(v24, *MEMORY[0x277D858A0], v25);
  sub_25424E278();

  (*(v27 + 8))(v3, v28);
  sub_25424E178();
  (*(v31 + 8))(v26, v29);
  v17 = *(MEMORY[0x277D858B8] + 4);
  v18 = swift_task_alloc();
  v0[32] = v18;
  *v18 = v0;
  v18[1] = sub_25424B8D0;
  v19 = v0[26];
  v20 = v0[24];

  return MEMORY[0x2822005A8](v0 + 2, 0, 0, v20, v0 + 3);
}

uint64_t sub_25424B80C()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[11];

  v9 = v0[1];

  return v9();
}

uint64_t sub_25424B8D0()
{
  v2 = *(*v1 + 256);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_25424BCA0;
  }

  else
  {
    v3 = sub_25424B9E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25424B9E0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = *(v0 + 96);
    v2 = *(v0 + 104);
    v4 = *(v0 + 88);
    sub_254249BA0(*(v0 + 16), *(v0 + 48), *(v0 + 64), v4);

    if ((*(v2 + 48))(v4, 1, v3) == 1)
    {
      sub_254132E5C(*(v0 + 88), &qword_27F5BA4C8, "pV");
      v5 = *(MEMORY[0x277D858B8] + 4);
      v6 = swift_task_alloc();
      *(v0 + 256) = v6;
      *v6 = v0;
      v6[1] = sub_25424B8D0;
      v7 = *(v0 + 208);
      v8 = *(v0 + 192);

      return MEMORY[0x2822005A8](v0 + 16, 0, 0, v8, v0 + 24);
    }

    v11 = *(v0 + 224);
    v12 = *(v0 + 144);
    v13 = *(v0 + 152);
    v14 = *(v0 + 112);
    v15 = *(v0 + 88);
    v16 = *(v0 + 96);
    v17 = *(v0 + 32);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    sub_25424CD60(v11, type metadata accessor for CKQueryAsyncSequence);
    sub_25424CCF8(v15, v14, type metadata accessor for DigestRecord.Metadata);
    (*(v13 + 16))(v17, v14 + *(v16 + 20), v12);
    sub_25424CD60(v14, type metadata accessor for DigestRecord.Metadata);
    v10 = 0;
  }

  else
  {
    v9 = *(v0 + 224);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    sub_25424CD60(v9, type metadata accessor for CKQueryAsyncSequence);
    v10 = 1;
  }

  v18 = *(v0 + 224);
  v19 = *(v0 + 208);
  v20 = *(v0 + 184);
  v21 = *(v0 + 160);
  v22 = *(v0 + 136);
  v23 = *(v0 + 112);
  v24 = *(v0 + 88);
  (*(*(v0 + 152) + 56))(*(v0 + 32), v10, 1, *(v0 + 144));

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_25424BCA0()
{
  v1 = v0[28];
  (*(v0[25] + 8))(v0[26], v0[24]);
  sub_25424CD60(v1, type metadata accessor for CKQueryAsyncSequence);
  v2 = v0[3];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[20];
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[11];

  v10 = v0[1];

  return v10();
}

uint64_t sub_25424BDBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC7B0, &qword_2542588D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25424BE2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = sub_25424D948();
  v8 = *(v66 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v66);
  v64 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v61 = &v59 - v12;
  v13 = sub_25424DAA8();
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = *(v67 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v65 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v63 = &v59 - v17;
  v18 = type metadata accessor for DigestRecord(0);
  v69 = *(v18 - 8);
  v70 = v18;
  v19 = *(v69 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v59 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v60 = &v59 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v59 - v25;
  MEMORY[0x28223BE20](v24);
  v62 = &v59 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA4C8, "pV");
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v59 - v30;
  sub_254249BA0(a1, a2, a3, &v59 - v30);
  v32 = type metadata accessor for DigestRecord.Metadata(0);
  v33 = 1;
  v34 = (*(*(v32 - 8) + 48))(v31, 1, v32);
  sub_254132E5C(v31, &qword_27F5BA4C8, "pV");
  v35 = v34 == 1;
  v36 = a4;
  if (!v35)
  {
    sub_2541B8FB8(a1, v26);
    v37 = (v8 + 16);
    v38 = v8;
    v39 = v62;
    sub_25424CCF8(v26, v62, type metadata accessor for DigestRecord);
    v40 = v63;
    sub_25421C508(v63);
    v41 = v61;
    v42 = v66;
    (*v37)(v61, a3, v66);
    v43 = v60;
    sub_25424CDC0(v39, v60, type metadata accessor for DigestRecord);
    v44 = sub_25424DA88();
    v45 = sub_25424E418();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v71[0] = v65;
      *v46 = 136315394;
      sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v47 = v43;
      v48 = sub_25424EA58();
      v50 = v49;
      (*(v38 + 8))(v41, v42);
      v51 = sub_2542203C4(v48, v50, v71);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2080;
      sub_25424CDC0(v47, v59, type metadata accessor for DigestRecord);
      v52 = sub_25424DD08();
      v54 = v53;
      v55 = v47;
      v39 = v62;
      sub_25424CD60(v55, type metadata accessor for DigestRecord);
      v56 = sub_2542203C4(v52, v54, v71);

      *(v46 + 14) = v56;
      _os_log_impl(&dword_254124000, v44, v45, "[%s] Successfully decoded record %s", v46, 0x16u);
      v57 = v65;
      swift_arrayDestroy();
      MEMORY[0x259C07330](v57, -1, -1);
      MEMORY[0x259C07330](v46, -1, -1);

      (*(v67 + 8))(v63, v68);
    }

    else
    {

      sub_25424CD60(v43, type metadata accessor for DigestRecord);
      (*(v38 + 8))(v41, v42);
      (*(v67 + 8))(v40, v68);
    }

    sub_25424CCF8(v39, v36, type metadata accessor for DigestRecord);
    v33 = 0;
  }

  return (*(v69 + 56))(v36, v33, 1, v70);
}

uint64_t EventDigestQuery.description.getter()
{
  v1 = v0;
  sub_25424E688();
  type metadata accessor for EventDigestQuery(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC000, &qword_254261BA0);
  v2 = sub_25424DD08();
  MEMORY[0x259C05CA0](v2);

  MEMORY[0x259C05CA0](0xD000000000000016, 0x8000000254250440);
  v3 = type metadata accessor for EventDigestQuery.Configuration(0);
  v4 = v3[15];
  sub_25424D948();
  sub_25424D09C(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
  v5 = sub_25424EA58();
  MEMORY[0x259C05CA0](v5);

  MEMORY[0x259C05CA0](0x3D20656D6F68202CLL, 0xE900000000000020);
  v6 = v1 + v3[7];
  v7 = sub_25424EA58();
  MEMORY[0x259C05CA0](v7);

  MEMORY[0x259C05CA0](0x2074696D696C202CLL, 0xEA0000000000203DLL);
  v8 = (v1 + v3[10]);
  v11 = *v8;
  v12 = *(v8 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8D70, &qword_254253E50);
  v9 = sub_25424DD08();
  MEMORY[0x259C05CA0](v9);

  MEMORY[0x259C05CA0](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_25424C930(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v11 = *(v2 + 48);
  v10 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25412F818;

  return sub_2542490F0(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_25424CA10(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v11 = *(v2 + 48);
  v10 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25412F724;

  return sub_25424B12C(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_25424CB38()
{
  result = type metadata accessor for EventDigestQuery.Configuration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25424CBCC()
{
  sub_2541691B0();
  if (v0 <= 0x3F)
  {
    sub_2541481B4();
    if (v1 <= 0x3F)
    {
      sub_25424D948();
      if (v2 <= 0x3F)
      {
        sub_25424D218();
        if (v3 <= 0x3F)
        {
          sub_254141A7C();
          if (v4 <= 0x3F)
          {
            sub_25414810C();
            if (v5 <= 0x3F)
            {
              type metadata accessor for QualityOfService(319);
              if (v6 <= 0x3F)
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

uint64_t sub_25424CCF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25424CD60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25424CDC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25424CE28(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for EventDigestQuery(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BC7E8, &unk_254263EC0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_25424D8B8() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_25412F724;

  return sub_2542453FC(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_25424CFE8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25412F818;

  return sub_2542468B4(a1, a2, v7, v6);
}

uint64_t sub_25424D09C(unint64_t *a1, void (*a2)(uint64_t))
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