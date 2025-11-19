uint64_t sub_1E58326D8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1E5832714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58C8, &qword_1E5854D90);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E583278C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58C8, &qword_1E5854D90);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E5832884()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E58328BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF5B10, qword_1E58555D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 36) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = *(a3 + 16);
    type metadata accessor for SampleContentArtwork();
    swift_getFunctionTypeMetadata1();
    v12 = sub_1E5853FA0();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1E5832A0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF5B10, qword_1E58555D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 36) + 16) = -a2;
  }

  else
  {
    v11 = *(a4 + 16);
    type metadata accessor for SampleContentArtwork();
    swift_getFunctionTypeMetadata1();
    v12 = sub_1E5853FA0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 40);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1E5832B60(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59D0, &qword_1E58554A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59D8, &qword_1E58554B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E0, &qword_1E58554B8);
  sub_1E5854090();
  sub_1E5854090();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E8, &qword_1E58554C0);
  sub_1E5854090();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F0, &qword_1E58554C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F8, &qword_1E58554D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A00, &qword_1E58554D8);
  swift_getTupleTypeMetadata();
  sub_1E5854580();
  swift_getWitnessTable();
  sub_1E5854500();
  swift_getWitnessTable();
  sub_1E58544E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A08, &qword_1E58554E0);
  sub_1E5854090();
  swift_getWitnessTable();
  sub_1E5840E30(&qword_1ECFF5A10, &qword_1ECFF5A08, &qword_1E58554E0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5840E30(&qword_1ECFF5A18, &qword_1ECFF59E0, &qword_1E58554B8);
  sub_1E5854540();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5854230();
  sub_1E5854230();
  sub_1E5854230();
  sub_1E5854560();
  sub_1E5854090();
  sub_1E583EC38();
  sub_1E583EE60();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5833030@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5854140();
  *a1 = result;
  return result;
}

uint64_t sub_1E583305C(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E5854150();
}

uint64_t sub_1E58330EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5854100();
  *a1 = result;
  return result;
}

uint64_t sub_1E5833118(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E5854110();
}

uint64_t sub_1E5833148()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for SampleContentWorkoutView();
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v7 = type metadata accessor for SampleContentItem();
  v8 = *(*(v7 - 1) + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v10 = *(*(v7 - 1) + 64);
  v11 = (v0 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59C8, &qword_1E58554A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1E5854080();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  else
  {
    v13 = *v11;
  }

  v14 = &v11[*(v3 + 36)];
  v15 = *v14;
  v16 = *(v14 + 1);
  v17 = v14[16];
  sub_1E583F318();
  v18 = *(v3 + 40);
  type metadata accessor for SampleContentArtwork();
  swift_getFunctionTypeMetadata1();
  v19 = sub_1E5853FA0();
  (*(*(v19 - 8) + 8))(&v11[v18], v19);
  v20 = v0 + v9;
  swift_checkMetadataState();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_1E5853FC0();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v0 + v9, 1, v21))
    {
      (*(v22 + 8))(v0 + v9, v21);
    }

    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D18, &unk_1E5856E40) + 48);
    v24 = sub_1E5853EF0();
  }

  else
  {
    v25 = *(v20 + 8);

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D00, &unk_1E58566D0);
    v27 = *(v26 + 48);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D10, &unk_1E5855800);
    (*(*(v28 - 8) + 8))(v20 + v27, v28);
    v23 = *(v26 + 64);
    v24 = sub_1E5853FC0();
  }

  v29 = v24;
  v30 = *(v24 - 8);
  if (!(*(v30 + 48))(v20 + v23, 1, v24))
  {
    (*(v30 + 8))(v20 + v23, v29);
  }

  v31 = v4 | v8;
  v32 = v7[5];
  v33 = sub_1E5853EB0();
  v34 = *(*(v33 - 8) + 8);
  v34(v20 + v32, v33);
  v35 = *(v20 + v7[6] + 8);

  v34(v20 + v7[8], v33);
  v34(v20 + v7[9], v33);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v31 | 7);
}

uint64_t sub_1E5833578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5A00, &qword_1E58554D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58335E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5854120();
  *a1 = result;
  return result;
}

uint64_t sub_1E583363C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for SampleContentWorkoutView();
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v7 = (v0 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59C8, &qword_1E58554A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1E5854080();
    (*(*(v8 - 8) + 8))(v0 + v5, v8);
  }

  else
  {
    v9 = *v7;
  }

  v10 = &v7[*(v3 + 36)];
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = v10[16];
  sub_1E583F318();
  v14 = *(v3 + 40);
  type metadata accessor for SampleContentArtwork();
  swift_getFunctionTypeMetadata1();
  v15 = sub_1E5853FA0();
  (*(*(v15 - 8) + 8))(&v7[v14], v15);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v5 + 1, v4 | 7);
}

uint64_t sub_1E58337D4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1E692E7B0]();
  *a1 = result;
  return result;
}

uint64_t sub_1E5833800(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x1E692E7C0](v2);
}

uint64_t sub_1E5833838()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1E58338A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5853EB0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E5833960(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5853EB0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5833A18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5833A50()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for SampleContentSummaryCardView() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(v0 + v5);
  v8 = *(v0 + v5 + 8);
  v9 = *(v0 + v5 + 16);
  sub_1E583F318();
  v10 = v3[11];
  swift_getFunctionTypeMetadata1();
  v11 = sub_1E5853FA0();
  (*(*(v11 - 8) + 8))(v0 + v5 + v10, v11);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1E5833B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = *(a3 + 16);
    swift_getFunctionTypeMetadata1();
    v9 = sub_1E5853FA0();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1E5833C30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v6 = *(a4 + 16);
    swift_getFunctionTypeMetadata1();
    v8 = sub_1E5853FA0();
    v9 = *(*(v8 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1E5833CEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1E5854230();
  sub_1E5854230();
  sub_1E5854230();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5854520();
  sub_1E5854090();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5833E28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E5853F70();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E5853F40();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[9] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1E5833FAC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1E5853F70();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1E5853F40();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 8) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1E5834148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SampleContentArtwork();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E5853EB0();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E5834258(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SampleContentArtwork();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1E5853EB0();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

id sub_1E5834430()
{
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EE2F8AC0 = result;
  return result;
}

uint64_t sub_1E5834488()
{
  v1 = *v0;
  sub_1E5854890();
  MEMORY[0x1E692EEF0](v1);
  return sub_1E58548C0();
}

uint64_t sub_1E58344D0()
{
  v1 = *v0;
  sub_1E5854890();
  MEMORY[0x1E692EEF0](v1);
  return sub_1E58548C0();
}

uint64_t sub_1E5834514()
{
  v1 = 1701602409;
  v2 = 0x64656863746566;
  if (*v0 != 2)
  {
    v2 = 0x676E696863746566;
  }

  if (*v0)
  {
    v1 = 0x64656C696166;
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

uint64_t sub_1E5834584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5835FA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E58345C4(uint64_t a1)
{
  v2 = sub_1E5835348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5834600(uint64_t a1)
{
  v2 = sub_1E5835348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5834648(uint64_t a1)
{
  v2 = sub_1E5835444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5834684(uint64_t a1)
{
  v2 = sub_1E5835444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58346C8()
{
  sub_1E5854890();
  MEMORY[0x1E692EEF0](0);
  return sub_1E58548C0();
}

uint64_t sub_1E5834734()
{
  sub_1E5854890();
  MEMORY[0x1E692EEF0](0);
  return sub_1E58548C0();
}

uint64_t sub_1E5834790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5854840();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5834820(uint64_t a1)
{
  v2 = sub_1E58353F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E583485C(uint64_t a1)
{
  v2 = sub_1E58353F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5834898(uint64_t a1)
{
  v2 = sub_1E583539C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58348D4(uint64_t a1)
{
  v2 = sub_1E583539C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5834910(uint64_t a1)
{
  v2 = sub_1E5835498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E583494C(uint64_t a1)
{
  v2 = sub_1E5835498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleContentLoadState.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SampleContentShelfDescriptor();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(type metadata accessor for SampleContentLoadState() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5834C7C(v1, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58C8, &qword_1E5854D90);
  v10 = (*(*(v9 - 8) + 48))(v8, 3, v9);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      return 0x64656C696166;
    }

    else
    {
      return 0x676E696863746566;
    }
  }

  else if (v10)
  {
    return 1701602409;
  }

  else
  {
    sub_1E5835E20(v8, v5, type metadata accessor for SampleContentShelfDescriptor);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1E5854730();

    v16 = 0x656C746974627573;
    v17 = 0xEA0000000000203ALL;
    sub_1E5853EB0();
    sub_1E5835E88(&qword_1EE2F8AB0, MEMORY[0x1E6968848]);
    v11 = sub_1E5854830();
    MEMORY[0x1E692ECE0](v11);

    MEMORY[0x1E692ECE0](0xD000000000000011, 0x80000001E5857A00);
    v15[1] = *(*&v5[*(v2 + 20)] + 16);
    v12 = sub_1E5854830();
    MEMORY[0x1E692ECE0](v12);

    MEMORY[0x1E692ECE0](93, 0xE100000000000000);
    v13 = v16;
    sub_1E5836C08(v5, type metadata accessor for SampleContentShelfDescriptor);
    return v13;
  }
}

uint64_t type metadata accessor for SampleContentLoadState()
{
  result = qword_1EE2F85A0;
  if (!qword_1EE2F85A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5834C7C(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for SampleContentLoadState();
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
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

uint64_t SampleContentLoadState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58D0, &qword_1E5854D98);
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58D8, &qword_1E5854DA0);
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v35 - v7;
  v39 = type metadata accessor for SampleContentShelfDescriptor();
  v8 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58E0, &qword_1E5854DA8);
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58E8, &qword_1E5854DB0);
  v35 = *(v14 - 8);
  v36 = v14;
  v15 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - v16;
  State = type metadata accessor for SampleContentLoadState();
  v19 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State - 8);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58F0, &qword_1E5854DB8);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v35 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5835348();
  sub_1E58548E0();
  sub_1E5834C7C(v47, v21);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58C8, &qword_1E5854D90);
  v29 = (*(*(v28 - 8) + 48))(v21, 3, v28);
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      v49 = 1;
      sub_1E5835444();
      sub_1E58547E0();
      (*(v37 + 8))(v13, v38);
    }

    else
    {
      v51 = 3;
      sub_1E583539C();
      v34 = v41;
      sub_1E58547E0();
      (*(v43 + 8))(v34, v44);
    }
  }

  else
  {
    if (!v29)
    {
      v30 = v40;
      sub_1E5835E20(v21, v40, type metadata accessor for SampleContentShelfDescriptor);
      v50 = 2;
      sub_1E58353F0();
      v31 = v42;
      sub_1E58547E0();
      sub_1E5835E88(&qword_1EE2F8A68, type metadata accessor for SampleContentShelfDescriptor);
      v32 = v46;
      sub_1E5854820();
      (*(v45 + 8))(v31, v32);
      sub_1E5836C08(v30, type metadata accessor for SampleContentShelfDescriptor);
      return (*(v23 + 8))(v26, v22);
    }

    v48 = 0;
    sub_1E5835498();
    sub_1E58547E0();
    (*(v35 + 8))(v17, v36);
  }

  return (*(v23 + 8))(v26, v22);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E5835348()
{
  result = qword_1ECFF58F8;
  if (!qword_1ECFF58F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF58F8);
  }

  return result;
}

unint64_t sub_1E583539C()
{
  result = qword_1ECFF5900;
  if (!qword_1ECFF5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5900);
  }

  return result;
}

unint64_t sub_1E58353F0()
{
  result = qword_1ECFF5908;
  if (!qword_1ECFF5908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5908);
  }

  return result;
}

unint64_t sub_1E5835444()
{
  result = qword_1ECFF5910;
  if (!qword_1ECFF5910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5910);
  }

  return result;
}

unint64_t sub_1E5835498()
{
  result = qword_1ECFF5918;
  if (!qword_1ECFF5918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5918);
  }

  return result;
}

uint64_t SampleContentLoadState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5920, &qword_1E5854DC0);
  v58 = *(v60 - 8);
  v3 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v65 = &v51 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5928, &qword_1E5854DC8);
  v61 = *(v59 - 8);
  v5 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v63 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5930, &qword_1E5854DD0);
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v62 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5938, &qword_1E5854DD8);
  v54 = *(v10 - 8);
  v55 = v10;
  v11 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5940, &unk_1E5854DE0);
  v66 = *(v14 - 8);
  v15 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v17 = &v51 - v16;
  State = type metadata accessor for SampleContentLoadState();
  v19 = *(*(State - 8) + 64);
  v20 = (MEMORY[0x1EEE9AC00])();
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v51 - v23;
  v25 = a1[3];
  v26 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1E5835348();
  v27 = v67;
  sub_1E58548D0();
  if (!v27)
  {
    v67 = State;
    v52 = v22;
    v53 = v24;
    v28 = v65;
    v29 = sub_1E58547D0();
    v30 = *(v29 + 16);
    v31 = v14;
    if (!v30 || ((v32 = *(v29 + 32), v30 == 1) ? (v33 = v32 == 4) : (v33 = 1), v33))
    {
      v34 = sub_1E5854750();
      swift_allocError();
      v36 = v35;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5948, &qword_1E5855F20) + 48);
      *v36 = v67;
      sub_1E5854780();
      sub_1E5854740();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v66 + 8))(v17, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v29 + 32) > 1u)
      {
        v67 = v29;
        v42 = v64;
        v43 = v66;
        if (v32 == 2)
        {
          v71 = 2;
          sub_1E58353F0();
          v44 = v63;
          sub_1E5854770();
          type metadata accessor for SampleContentShelfDescriptor();
          sub_1E5835E88(&qword_1ECFF5950, type metadata accessor for SampleContentShelfDescriptor);
          v45 = v52;
          v46 = v59;
          sub_1E58547C0();
          (*(v61 + 8))(v44, v46);
          (*(v43 + 8))(v17, v31);
          swift_unknownObjectRelease();
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58C8, &qword_1E5854D90);
          (*(*(v47 - 8) + 56))(v45, 0, 3, v47);
          v41 = v53;
          sub_1E5835E20(v45, v53, type metadata accessor for SampleContentLoadState);
          v42 = v64;
        }

        else
        {
          v72 = 3;
          sub_1E583539C();
          sub_1E5854770();
          (*(v58 + 8))(v28, v60);
          (*(v43 + 8))(v17, v31);
          swift_unknownObjectRelease();
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58C8, &qword_1E5854D90);
          v41 = v53;
          (*(*(v50 - 8) + 56))(v53, 3, 3, v50);
        }
      }

      else
      {
        v39 = v66;
        if (*(v29 + 32))
        {
          v70 = 1;
          sub_1E5835444();
          v48 = v62;
          sub_1E5854770();
          (*(v56 + 8))(v48, v57);
          (*(v39 + 8))(v17, v14);
          swift_unknownObjectRelease();
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58C8, &qword_1E5854D90);
          v41 = v53;
          (*(*(v49 - 8) + 56))(v53, 2, 3, v49);
        }

        else
        {
          v69 = 0;
          sub_1E5835498();
          sub_1E5854770();
          (*(v54 + 8))(v13, v55);
          (*(v39 + 8))(v17, v14);
          swift_unknownObjectRelease();
          v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58C8, &qword_1E5854D90);
          v41 = v53;
          (*(*(v40 - 8) + 56))(v53, 1, 3, v40);
        }

        v42 = v64;
      }

      sub_1E5835E20(v41, v42, type metadata accessor for SampleContentLoadState);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v68);
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

uint64_t sub_1E5835E20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5835E88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5835ED0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5835F04()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5835F38()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5835FA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E5854840() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (sub_1E5854840() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000 || (sub_1E5854840() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5854840();

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

uint64_t _s20FitnessSampleContent0bC9LoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleContentShelfDescriptor();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for SampleContentLoadState();
  v9 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59B8, &qword_1E5855328);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v22 - v15;
  v17 = *(v14 + 56);
  sub_1E5834C7C(a1, &v22 - v15);
  sub_1E5834C7C(a2, &v16[v17]);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF58C8, &qword_1E5854D90);
  v19 = *(*(v18 - 8) + 48);
  v20 = v19(v16, 3, v18);
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      if (v19(&v16[v17], 3, v18) != 2)
      {
        goto LABEL_12;
      }
    }

    else if (v19(&v16[v17], 3, v18) != 3)
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_1E5836C08(v16, type metadata accessor for SampleContentLoadState);
    return 1;
  }

  if (v20)
  {
    if (v19(&v16[v17], 3, v18) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_1E5834C7C(v16, v11);
  if (!v19(&v16[v17], 3, v18))
  {
    sub_1E5835E20(&v16[v17], v7, type metadata accessor for SampleContentShelfDescriptor);
    if ((sub_1E5853EA0() & 1) == 0 || (sub_1E58446AC(*&v11[*(v4 + 20)], *&v7[*(v4 + 20)]) & 1) == 0)
    {
      sub_1E5836C08(v7, type metadata accessor for SampleContentShelfDescriptor);
      sub_1E5836C08(v11, type metadata accessor for SampleContentShelfDescriptor);
      sub_1E5836C08(v16, type metadata accessor for SampleContentLoadState);
      return 0;
    }

    sub_1E5836C08(v7, type metadata accessor for SampleContentShelfDescriptor);
    sub_1E5836C08(v11, type metadata accessor for SampleContentShelfDescriptor);
    goto LABEL_11;
  }

  sub_1E5836C08(v11, type metadata accessor for SampleContentShelfDescriptor);
LABEL_12:
  sub_1E5836BA0(v16);
  return 0;
}

uint64_t sub_1E5836468()
{
  sub_1E58364C0();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1E58364C0()
{
  if (!qword_1EE2F8A70)
  {
    v0 = type metadata accessor for SampleContentShelfDescriptor();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2F8A70);
    }
  }
}

uint64_t getEnumTagSinglePayload for SampleContentLoadState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SampleContentLoadState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SampleContentLoadState.FetchedCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SampleContentLoadState.FetchedCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1E5836784()
{
  result = qword_1ECFF5958;
  if (!qword_1ECFF5958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5958);
  }

  return result;
}

unint64_t sub_1E58367DC()
{
  result = qword_1ECFF5960;
  if (!qword_1ECFF5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5960);
  }

  return result;
}

unint64_t sub_1E5836834()
{
  result = qword_1ECFF5968;
  if (!qword_1ECFF5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5968);
  }

  return result;
}

unint64_t sub_1E583688C()
{
  result = qword_1ECFF5970;
  if (!qword_1ECFF5970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5970);
  }

  return result;
}

unint64_t sub_1E58368E4()
{
  result = qword_1ECFF5978;
  if (!qword_1ECFF5978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5978);
  }

  return result;
}

unint64_t sub_1E583693C()
{
  result = qword_1ECFF5980;
  if (!qword_1ECFF5980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5980);
  }

  return result;
}

unint64_t sub_1E5836994()
{
  result = qword_1ECFF5988;
  if (!qword_1ECFF5988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5988);
  }

  return result;
}

unint64_t sub_1E58369EC()
{
  result = qword_1ECFF5990;
  if (!qword_1ECFF5990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5990);
  }

  return result;
}

unint64_t sub_1E5836A44()
{
  result = qword_1ECFF5998;
  if (!qword_1ECFF5998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5998);
  }

  return result;
}

unint64_t sub_1E5836A9C()
{
  result = qword_1ECFF59A0;
  if (!qword_1ECFF59A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF59A0);
  }

  return result;
}

unint64_t sub_1E5836AF4()
{
  result = qword_1ECFF59A8;
  if (!qword_1ECFF59A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF59A8);
  }

  return result;
}

unint64_t sub_1E5836B4C()
{
  result = qword_1ECFF59B0;
  if (!qword_1ECFF59B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF59B0);
  }

  return result;
}

uint64_t sub_1E5836BA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59B8, &qword_1E5855328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5836C08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SampleContentSummaryCardErrorItemContext.hashValue.getter()
{
  v1 = *v0;
  sub_1E5854890();
  MEMORY[0x1E692EEF0](v1);
  return sub_1E58548C0();
}

unint64_t sub_1E5836D00()
{
  result = qword_1ECFF59C0;
  if (!qword_1ECFF59C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF59C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SampleContentSummaryCardErrorItemContext(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SampleContentSummaryCardErrorItemContext(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E5836EA4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5BA0, "0*");
  v7 = sub_1E5840E30(&qword_1EE2F8480, &qword_1ECFF5BA0, "0*");

  return MEMORY[0x1EEDDD638](v3, v4, v5, v6, v7);
}

uint64_t sub_1E5836F4C()
{
  type metadata accessor for SampleContentArtwork();
  swift_getFunctionTypeMetadata1();
  return sub_1E5853F80();
}

uint64_t sub_1E5836FA8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 16);
  type metadata accessor for SampleContentArtwork();
  swift_getFunctionTypeMetadata1();
  sub_1E5853FA0();
  sub_1E5853F90();
  return v4;
}

uint64_t SampleContentWorkoutView.init(store:artworkViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59C8, &qword_1E58554A0);
  swift_storeEnumTagMultiPayload();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = type metadata accessor for SampleContentWorkoutView();
  v8 = a3 + *(v7 + 36);
  *v8 = sub_1E583EBB0;
  *(v8 + 1) = v6;
  v8[16] = 0;
  v9 = a3 + *(v7 + 40);
  return sub_1E5836F4C();
}

uint64_t SampleContentWorkoutView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v60 = a2;
  v55 = a1;
  v58 = *(a1 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v57 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59D0, &qword_1E58554A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59D8, &qword_1E58554B0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E0, &qword_1E58554B8);
  v62 = *(a1 + 16);
  sub_1E5854090();
  sub_1E5854090();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E8, &qword_1E58554C0);
  v85 = sub_1E5854090();
  v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F0, &qword_1E58554C8);
  v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F8, &qword_1E58554D0);
  v88 = MEMORY[0x1E6981840];
  v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A00, &qword_1E58554D8);
  swift_getTupleTypeMetadata();
  sub_1E5854580();
  swift_getWitnessTable();
  sub_1E5854500();
  swift_getWitnessTable();
  sub_1E58544E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A08, &qword_1E58554E0);
  v5 = sub_1E5854090();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1E5840E30(&qword_1ECFF5A10, &qword_1ECFF5A08, &qword_1E58554E0);
  v83 = WitnessTable;
  v84 = v7;
  v50 = MEMORY[0x1E697E858];
  v8 = swift_getWitnessTable();
  v85 = v5;
  v86 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = sub_1E5840E30(&qword_1ECFF5A18, &qword_1ECFF59E0, &qword_1E58554B8);
  v85 = v4;
  v86 = MEMORY[0x1E69E6158];
  v87 = OpaqueTypeMetadata2;
  v88 = v10;
  v89 = MEMORY[0x1E69E6168];
  v11 = sub_1E5854540();
  v85 = v5;
  v86 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = swift_getWitnessTable();
  v85 = v11;
  v86 = v12;
  swift_getOpaqueTypeMetadata2();
  sub_1E5854230();
  sub_1E5854230();
  v45 = sub_1E5854230();
  v13 = sub_1E5854560();
  v54 = *(v13 - 8);
  v14 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v45 - v15;
  v48 = v13;
  v16 = sub_1E5854090();
  v53 = *(v16 - 8);
  v17 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v45 - v18;
  v19 = sub_1E583EC38();
  v20 = sub_1E583EE60();
  v85 = v11;
  v86 = v12;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = v12;
  v78 = swift_getWitnessTable();
  v79 = v20;
  v21 = swift_getWitnessTable();
  v76 = v20;
  v77 = v21;
  v22 = swift_getWitnessTable();
  v73 = v19;
  v74 = v22;
  v75 = MEMORY[0x1E6981E60];
  v47 = swift_getWitnessTable();
  v71 = v47;
  v72 = MEMORY[0x1E69805D0];
  v49 = v16;
  v50 = swift_getWitnessTable();
  v85 = v16;
  v86 = v50;
  v23 = swift_getOpaqueTypeMetadata2();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v46 = &v45 - v29;
  v30 = v55;
  v31 = *(v55 + 24);
  v68 = v62;
  v69 = v31;
  v32 = v56;
  v70 = v56;
  v64 = v62;
  v65 = v31;
  v66 = v56;
  v33 = v51;
  sub_1E583A408(sub_1E583F300, v67, sub_1E583F30C, v63, v61);
  v34 = v58;
  v35 = v57;
  (*(v58 + 16))(v57, v32, v30);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v62;
  *(v37 + 24) = v31;
  (*(v34 + 32))(v37 + v36, v35, v30);
  v38 = v52;
  v39 = v48;
  sub_1E5854410();

  (*(v54 + 8))(v33, v39);
  v40 = v49;
  sub_1E5854370();
  (*(v53 + 8))(v38, v40);
  v41 = v24[2];
  v42 = v46;
  v41(v46, v28, v23);
  v43 = v24[1];
  v43(v28, v23);
  v41(v60, v42, v23);
  return (v43)(v42, v23);
}

uint64_t sub_1E5837A4C@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v104 = a1;
  v107 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E0, &qword_1E58554B8);
  sub_1E5854090();
  sub_1E5854090();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E8, &qword_1E58554C0);
  sub_1E5854090();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F0, &qword_1E58554C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F8, &qword_1E58554D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A00, &qword_1E58554D8);
  swift_getTupleTypeMetadata();
  sub_1E5854580();
  swift_getWitnessTable();
  sub_1E5854500();
  swift_getWitnessTable();
  sub_1E58544E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A08, &qword_1E58554E0);
  v3 = sub_1E5854090();
  WitnessTable = swift_getWitnessTable();
  v131 = sub_1E5840E30(&qword_1ECFF5A10, &qword_1ECFF5A08, &qword_1E58554E0);
  v4 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v6 = sub_1E5840E30(&qword_1ECFF5A18, &qword_1ECFF59E0, &qword_1E58554B8);
  v132 = v2;
  v133 = MEMORY[0x1E69E6158];
  v134 = OpaqueTypeMetadata2;
  v135 = v6;
  v136 = MEMORY[0x1E69E6168];
  v7 = sub_1E5854540();
  v92 = *(v7 - 8);
  v8 = *(v92 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v91 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v84 - v11;
  v132 = v3;
  v133 = v4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = swift_getWitnessTable();
  v132 = v7;
  v133 = v12;
  v103 = v12;
  v13 = swift_getOpaqueTypeMetadata2();
  v14 = sub_1E5854230();
  v97 = *(v14 - 8);
  v15 = *(v97 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v96 = &v84 - v17;
  v95 = v13;
  v90 = *(v13 - 8);
  v18 = *(v90 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v89 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v93 = &v84 - v21;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
  v22 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98);
  v24 = &v84 - v23;
  v88 = type metadata accessor for SampleContentShelfDescriptor();
  v25 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59D8, &qword_1E58554B0);
  v108 = v14;
  v28 = sub_1E5854230();
  v100 = *(v28 - 8);
  v29 = *(v100 + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v99 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v102 = &v84 - v33;
  v34 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v84 - v35;
  v106 = sub_1E5854230();
  v105 = *(v106 - 8);
  v37 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v39 = &v84 - v38;
  v40 = type metadata accessor for SampleContentWorkoutView();
  sub_1E5836EA4(v40);
  swift_getKeyPath();
  sub_1E58545E0();

  if (v132 != 1)
  {
    v84 = v36;
    v101 = v27;
    v85 = v28;
    v46 = v7;
    v86 = v39;
    sub_1E5836EA4(v40);
    swift_getKeyPath();
    sub_1E58545E0();

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      v53 = v89;
      sub_1E5839284(v40, v89);
      v42 = v103;
      v132 = v7;
      v133 = v103;
      v54 = swift_getOpaqueTypeConformance2();
      v55 = v90;
      v56 = *(v90 + 16);
      v57 = v93;
      v58 = v95;
      v56(v93, v53, v95);
      v104 = *(v55 + 8);
      v104(v53, v58);
      v56(v53, v57, v58);
      v59 = v7;
      v60 = v96;
      sub_1E58472FC(v53, v58);
      v113 = v54;
      v114 = v42;
      v61 = v108;
      swift_getWitnessTable();
      sub_1E583EE60();
      v49 = v102;
      sub_1E58472FC(v60, v61);
      (*(v97 + 8))(v60, v61);
      v62 = v104;
      v104(v53, v58);
      v62(v93, v58);
      v63 = v59;
    }

    else
    {
      v48 = v108;
      if (!EnumCaseMultiPayload)
      {
        v51 = v87;
        sub_1E584085C(v24, v87, type metadata accessor for SampleContentShelfDescriptor);
        v44 = v106;
        v49 = v102;
        goto LABEL_9;
      }

      v49 = v102;
      if (EnumCaseMultiPayload == 1)
      {
        v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CF0, &qword_1E58557A8) + 48);
        v51 = v87;
        sub_1E584085C(v24, v87, type metadata accessor for SampleContentShelfDescriptor);
        v52 = sub_1E5853F00();
        (*(*(v52 - 8) + 8))(&v24[v50], v52);
        v44 = v106;
LABEL_9:
        v64 = *(v51 + *(v88 + 20));

        sub_1E5840A0C(v51, type metadata accessor for SampleContentShelfDescriptor);
        v65 = v91;
        sub_1E5839D68(v64, v40);

        v66 = v92;
        v67 = *(v92 + 16);
        v68 = v94;
        v67(v94, v65, v46);
        v69 = *(v66 + 8);
        v69(v65, v46);
        v67(v65, v68, v46);
        v42 = v103;
        v63 = v46;
        v132 = v46;
        v133 = v103;
        v70 = swift_getOpaqueTypeConformance2();
        v71 = v96;
        sub_1E58473F4(v65, v95, v46);
        v115 = v70;
        v116 = v42;
        v72 = v108;
        swift_getWitnessTable();
        sub_1E583EE60();
        sub_1E58472FC(v71, v72);
        (*(v97 + 8))(v71, v72);
        v69(v65, v63);
        v69(v94, v63);
LABEL_12:
        v132 = v63;
        v133 = v42;
        v125 = swift_getOpaqueTypeConformance2();
        v126 = v42;
        v74 = swift_getWitnessTable();
        v75 = sub_1E583EE60();
        v123 = v74;
        v124 = v75;
        v76 = v85;
        swift_getWitnessTable();
        v77 = v100;
        v78 = v99;
        (*(v100 + 16))(v99, v49, v76);
        v45 = v63;
        v39 = v86;
        sub_1E58473F4(v78, v101, v76);
        v79 = *(v77 + 8);
        v79(v78, v76);
        v79(v49, v76);
        v43 = v107;
        goto LABEL_13;
      }

      sub_1E5840E78(v24, &qword_1ECFF5CD8, &qword_1E58566E0);
      LOBYTE(v132) = 1;
      v73 = v84;
      sub_1E5838A3C(&v132, v40, v84);
      v63 = v46;
      v42 = v103;
      v132 = v46;
      v133 = v103;
      v127 = swift_getOpaqueTypeConformance2();
      v128 = v42;
      swift_getWitnessTable();
      sub_1E583EE60();
      sub_1E58473F4(v73, v48, v101);
      sub_1E5840E78(v73, &qword_1ECFF59D8, &qword_1E58554B0);
    }

    v44 = v106;
    goto LABEL_12;
  }

  LOBYTE(v132) = 0;
  sub_1E5838A3C(&v132, v40, v36);
  v41 = sub_1E583EE60();
  v42 = v103;
  v132 = v7;
  v133 = v103;
  v111 = swift_getOpaqueTypeConformance2();
  v112 = v42;
  v109 = swift_getWitnessTable();
  v110 = v41;
  swift_getWitnessTable();
  sub_1E58472FC(v36, v27);
  sub_1E5840E78(v36, &qword_1ECFF59D8, &qword_1E58554B0);
  v43 = v107;
  v44 = v106;
  v45 = v7;
LABEL_13:
  v80 = sub_1E583EE60();
  v132 = v45;
  v133 = v42;
  v121 = swift_getOpaqueTypeConformance2();
  v122 = v42;
  v119 = swift_getWitnessTable();
  v120 = v80;
  v81 = swift_getWitnessTable();
  v117 = v80;
  v118 = v81;
  swift_getWitnessTable();
  v82 = v105;
  (*(v105 + 16))(v43, v39, v44);
  return (*(v82 + 8))(v39, v44);
}

uint64_t sub_1E5838A3C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a2;
  v93 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5AE8, &qword_1E5855540);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v82 = &v81 - v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5AD8, &qword_1E5855538);
  v7 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v81 - v8;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5AC8, &qword_1E5855530);
  v9 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v81 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5AB8, &qword_1E5855528);
  v11 = *(*(v92 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v92);
  v85 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v81 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DC0, &qword_1E5855858);
  v15 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v81 - v16;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5A78, &qword_1E5855508);
  v17 = *(*(v90 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v90);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v81 - v21;
  v23 = sub_1E5854080();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v81 - v29;
  v31 = *a1;
  sub_1E583F55C(&v81 - v29);
  (*(v24 + 104))(v28, *MEMORY[0x1E697E6C0], v23);
  v32 = sub_1E5854070();
  v33 = *(v24 + 8);
  v33(v28, v23);
  v33(v30, v23);
  if (v32)
  {
    v34 = sub_1E5854450();
    sub_1E5854570();
    sub_1E58540D0();
    *&v94[54] = v99;
    *&v94[70] = v100;
    *&v94[86] = v101;
    *&v94[102] = v102;
    *&v94[6] = v96;
    *&v94[22] = v97;
    v95 = 0;
    *&v94[38] = v98;
    v35 = sub_1E5854570();
    v37 = v36;
    v38 = &v20[*(v90 + 36)];
    v39 = *(v88 + 16);
    v40 = *(v88 + 24);
    sub_1E583DDE4(v31, v38);
    v41 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5AA8, &qword_1E5855520) + 36));
    *v41 = v35;
    v41[1] = v37;
    v42 = *&v94[32];
    *(v20 + 66) = *&v94[48];
    *(v20 + 50) = v42;
    v43 = *v94;
    *(v20 + 34) = *&v94[16];
    *(v20 + 18) = v43;
    *(v20 + 16) = *&v94[110];
    *(v20 + 114) = *&v94[96];
    v44 = *&v94[64];
    *(v20 + 98) = *&v94[80];
    *v20 = v34;
    *(v20 + 1) = 0x3FFC71C71C71C71CLL;
    *(v20 + 8) = 0;
    *(v20 + 82) = v44;
    v45 = &qword_1ECFF5A78;
    v46 = &qword_1E5855508;
    sub_1E5840C94(v20, v22, &qword_1ECFF5A78, &qword_1E5855508);
    sub_1E5840F94(v22, v91, &qword_1ECFF5A78, &qword_1E5855508);
    swift_storeEnumTagMultiPayload();
    sub_1E583EEEC();
    sub_1E583F0D8();
    sub_1E5854220();
    v47 = v22;
  }

  else
  {
    LOBYTE(v96) = v31;
    v48 = v82;
    sub_1E583E0B0(&v96, v88, v82);
    sub_1E5854570();
    sub_1E58540D0();
    v49 = v48;
    v50 = v84;
    sub_1E5840C94(v49, v84, &qword_1ECFF5AE8, &qword_1E5855540);
    v51 = (v50 + *(v81 + 36));
    v52 = v99;
    v53 = v101;
    v54 = v102;
    v51[4] = v100;
    v51[5] = v53;
    v51[6] = v54;
    v55 = v97;
    v56 = v98;
    *v51 = v96;
    v51[1] = v55;
    v51[2] = v56;
    v51[3] = v52;
    v57 = sub_1E5854280();
    sub_1E5854010();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v66 = v86;
    sub_1E5840C94(v50, v86, &qword_1ECFF5AD8, &qword_1E5855538);
    v67 = v66 + *(v83 + 36);
    *v67 = v57;
    *(v67 + 8) = v59;
    *(v67 + 16) = v61;
    *(v67 + 24) = v63;
    *(v67 + 32) = v65;
    *(v67 + 40) = 0;
    LOBYTE(v50) = sub_1E5854260();
    sub_1E5854010();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v76 = v66;
    v77 = v85;
    sub_1E5840C94(v76, v85, &qword_1ECFF5AC8, &qword_1E5855530);
    v78 = v77 + *(v92 + 36);
    *v78 = v50;
    *(v78 + 8) = v69;
    *(v78 + 16) = v71;
    *(v78 + 24) = v73;
    *(v78 + 32) = v75;
    *(v78 + 40) = 0;
    v45 = &qword_1ECFF5AB8;
    v46 = &qword_1E5855528;
    v79 = v87;
    sub_1E5840C94(v77, v87, &qword_1ECFF5AB8, &qword_1E5855528);
    sub_1E5840F94(v79, v91, &qword_1ECFF5AB8, &qword_1E5855528);
    swift_storeEnumTagMultiPayload();
    sub_1E583EEEC();
    sub_1E583F0D8();
    sub_1E5854220();
    v47 = v79;
  }

  return sub_1E5840E78(v47, v45, v46);
}

uint64_t sub_1E5839284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v83 = sub_1E58540B0();
  v81 = *(v83 - 8);
  v3 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v80 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1E5853F40();
  v73 = *(v75 - 8);
  v5 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5853EE0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v72 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5853F70();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5854630();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v67 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E5853EB0();
  v77 = *(v17 - 8);
  v78 = v17;
  v18 = *(v77 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v76 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v74 = &v62 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v84 = &v62 - v23;
  v24 = type metadata accessor for SampleContentArtwork();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E0, &qword_1E58554B8);
  v79 = a1;
  v29 = *(a1 + 16);
  sub_1E5854090();
  sub_1E5854090();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E8, &qword_1E58554C0);
  v88 = sub_1E5854090();
  v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F0, &qword_1E58554C8);
  v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F8, &qword_1E58554D0);
  v91 = MEMORY[0x1E6981840];
  v92 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A00, &qword_1E58554D8);
  swift_getTupleTypeMetadata();
  sub_1E5854580();
  swift_getWitnessTable();
  sub_1E5854500();
  swift_getWitnessTable();
  sub_1E58544E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A08, &qword_1E58554E0);
  v30 = sub_1E5854090();
  WitnessTable = swift_getWitnessTable();
  v32 = v27;
  v33 = sub_1E5840E30(&qword_1ECFF5A10, &qword_1ECFF5A08, &qword_1E58554E0);
  v86 = WitnessTable;
  v87 = v33;
  v34 = swift_getWitnessTable();
  v70 = v30;
  v88 = v30;
  v89 = v34;
  v68 = v34;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v36 = sub_1E5840E30(&qword_1ECFF5A18, &qword_1ECFF59E0, &qword_1E58554B8);
  v88 = v28;
  v89 = MEMORY[0x1E69E6158];
  v90 = OpaqueTypeMetadata2;
  v91 = v36;
  v92 = MEMORY[0x1E69E6168];
  v69 = sub_1E5854540();
  v66 = *(v69 - 8);
  v37 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v62 - v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CF8, &unk_1E58557D0);
  v39 = type metadata accessor for SampleContentItem();
  v40 = *(*(v39 - 1) + 72);
  v41 = (*(*(v39 - 1) + 80) + 32) & ~*(*(v39 - 1) + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1E58553F0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D00, &unk_1E58566D0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 64);
  *v27 = 0xD00000000000001DLL;
  v27[1] = 0x80000001E5857A70;
  if (qword_1EE2F8460 != -1)
  {
    swift_once();
  }

  v46 = v42 + v41;
  v47 = qword_1EE2F8AC0;
  sub_1E584057C();
  v48 = v47;
  sub_1E5853FE0();
  sub_1E5853FB0();
  swift_storeEnumTagMultiPayload();
  v63 = v32;
  sub_1E5854620();
  v49 = v48;
  v64 = v42;
  sub_1E5853F60();
  v50 = v49;
  sub_1E5854650();
  sub_1E5853ED0();
  sub_1E5853EC0();
  sub_1E5853F30();
  v62 = sub_1E5853F10();
  v52 = v51;
  (*(v73 + 8))(v7, v75);
  sub_1E5854620();
  sub_1E5853F60();
  sub_1E5854650();
  sub_1E5853ED0();
  v53 = v74;
  sub_1E5853EC0();
  sub_1E5854620();
  sub_1E5853F60();
  sub_1E5854650();
  sub_1E5853ED0();
  v54 = v76;
  sub_1E5853EC0();
  sub_1E584085C(v63, v46, type metadata accessor for SampleContentArtwork);
  v55 = v78;
  v56 = *(v77 + 32);
  v56(v46 + v39[5], v84, v78);
  v57 = (v46 + v39[6]);
  *v57 = v62;
  v57[1] = v52;
  *(v46 + v39[7]) = 1;
  v56(v46 + v39[8], v53, v55);
  v56(v46 + v39[9], v54, v55);
  v58 = v65;
  sub_1E5839D68(v64, v79);

  v59 = v80;
  sub_1E58540A0();
  v88 = v70;
  v89 = v68;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v69;
  swift_getWitnessTable();
  sub_1E5854420();
  (*(v81 + 8))(v59, v83);
  return (*(v66 + 8))(v58, v60);
}

uint64_t sub_1E5839D68(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v21 = MEMORY[0x1EEE9AC00](a1);
  swift_getKeyPath();
  (*(v4 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v13 = *(a2 + 16);
  *(v7 + 16) = v13;
  (*(v4 + 32))(v7 + v6, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59E0, &qword_1E58554B8);
  sub_1E5854090();
  sub_1E5854090();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E8, &qword_1E58554C0);
  v16 = sub_1E5854090();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F0, &qword_1E58554C8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F8, &qword_1E58554D0);
  v19 = MEMORY[0x1E6981840];
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A00, &qword_1E58554D8);
  swift_getTupleTypeMetadata();
  sub_1E5854580();
  swift_getWitnessTable();
  sub_1E5854500();
  swift_getWitnessTable();
  sub_1E58544E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A08, &qword_1E58554E0);
  v8 = sub_1E5854090();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1E5840E30(&qword_1ECFF5A10, &qword_1ECFF5A08, &qword_1E58554E0);
  v14 = WitnessTable;
  v15 = v10;
  v11 = swift_getWitnessTable();
  v16 = v8;
  v17 = v11;
  swift_getOpaqueTypeMetadata2();
  sub_1E5840E30(&qword_1ECFF5A18, &qword_1ECFF59E0, &qword_1E58554B8);
  v16 = v8;
  v17 = v11;
  swift_getOpaqueTypeConformance2();
  return sub_1E5854530();
}

double sub_1E583A154@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SampleContentWorkoutView();
  sub_1E583A1B8(v2, a1);
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59D0, &qword_1E58554A8) + 36);
  *v3 = 0;
  *(v3 + 8) = 0;
  result = 10.0;
  *(v3 + 16) = xmmword_1E5855400;
  *(v3 + 32) = 0;
  return result;
}

uint64_t sub_1E583A1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5A50, &qword_1E58554F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5A40, &qword_1E58554F0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v23 - v12;
  *v8 = sub_1E58541C0();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5BA8, &qword_1E58555F0);
  sub_1E583C57C(v2, *(a1 + 16), *(a1 + 24), &v8[*(v14 + 44)]);
  sub_1E5854570();
  sub_1E58540D0();
  sub_1E5840C94(v8, v13, &qword_1ECFF5A50, &qword_1E58554F8);
  v15 = &v13[*(v10 + 44)];
  v16 = v23[5];
  *(v15 + 4) = v23[4];
  *(v15 + 5) = v16;
  *(v15 + 6) = v23[6];
  v17 = v23[1];
  *v15 = v23[0];
  *(v15 + 1) = v17;
  v18 = v23[3];
  *(v15 + 2) = v23[2];
  *(v15 + 3) = v18;
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5A30, &qword_1E58554E8) + 36));
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5A60, &qword_1E5855500) + 28);
  v21 = sub_1E5854320();
  (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
  *v19 = swift_getKeyPath();
  return sub_1E5840C94(v13, a2, &qword_1ECFF5A40, &qword_1E58554F0);
}

uint64_t sub_1E583A408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a5 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7(v6);
  return sub_1E5854550();
}

uint64_t sub_1E583A500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v67 = a4;
  v58 = a2;
  v69 = a1;
  v72 = a5;
  v6 = type metadata accessor for SampleContentItem();
  v7 = *(v6 - 8);
  v71 = v6 - 8;
  v68 = v7;
  v70 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SampleContentWorkoutView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v52 - v13;
  v52[0] = v52 - v13;
  v15 = a3;
  sub_1E5854090();
  sub_1E5854090();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E8, &qword_1E58554C0);
  *&v81 = sub_1E5854090();
  *(&v81 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F0, &qword_1E58554C8);
  *&v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F8, &qword_1E58554D0);
  *(&v82 + 1) = MEMORY[0x1E6981840];
  v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A00, &qword_1E58554D8);
  swift_getTupleTypeMetadata();
  sub_1E5854580();
  swift_getWitnessTable();
  v63 = sub_1E5854500();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1E58544E0();
  v65 = *(v16 - 8);
  v17 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v56 = v52 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A08, &qword_1E58554E0);
  v53 = v16;
  v19 = sub_1E5854090();
  v60 = v19;
  v66 = *(v19 - 8);
  v20 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v54 = v52 - v21;
  v22 = swift_getWitnessTable();
  v52[1] = v22;
  v23 = sub_1E5840E30(&qword_1ECFF5A10, &qword_1ECFF5A08, &qword_1E58554E0);
  v79 = v22;
  v80 = v23;
  v61 = swift_getWitnessTable();
  *&v81 = v19;
  *(&v81 + 1) = v61;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v59 = *(OpaqueTypeMetadata2 - 8);
  v24 = *(v59 + 64);
  v25 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v55 = v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v57 = v52 - v27;
  v28 = v11;
  v29 = *(v11 + 16);
  v30 = v58;
  v31 = v10;
  v29(v14, v58, v10);
  v32 = v69;
  v33 = v9;
  sub_1E58407F8(v69, v9);
  v34 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v35 = (v12 + *(v68 + 80) + v34) & ~*(v68 + 80);
  v36 = swift_allocObject();
  v37 = v15;
  *(v36 + 16) = v15;
  v38 = v67;
  *(v36 + 24) = v67;
  (*(v28 + 32))(v36 + v34, v52[0], v31);
  sub_1E584085C(v33, v36 + v35, type metadata accessor for SampleContentItem);
  v73 = v37;
  v74 = v38;
  v75 = v30;
  v76 = v32;
  v39 = v56;
  sub_1E58544D0();
  v81 = xmmword_1E5855410;
  v82 = xmmword_1E5855410;
  LOBYTE(v83) = 0;
  v40 = v54;
  v41 = v53;
  sub_1E58543C0();
  (*(v65 + 8))(v39, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D20, &qword_1E5855810);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1E58553F0;
  v77 = 0;
  v78 = 0xE000000000000000;
  sub_1E5854730();

  v77 = 0xD000000000000015;
  v78 = 0x80000001E5857AD0;
  MEMORY[0x1E692ECE0](*(v32 + *(v71 + 32)), *(v32 + *(v71 + 32) + 8));
  v43 = v78;
  *(v42 + 32) = v77;
  *(v42 + 40) = v43;
  v44 = v55;
  v45 = v60;
  sub_1E5854380();

  (*(v66 + 8))(v40, v45);
  v46 = v59;
  v47 = *(v59 + 16);
  v48 = v57;
  v49 = OpaqueTypeMetadata2;
  v47(v57, v44, OpaqueTypeMetadata2);
  v50 = *(v46 + 8);
  v50(v44, v49);
  v47(v72, v48, v49);
  return (v50)(v48, v49);
}

uint64_t sub_1E583ACEC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SampleContentWorkoutView();
  sub_1E5836EA4(v3);
  v4 = (a2 + *(type metadata accessor for SampleContentItem() + 24));
  v6 = *v4;
  v7 = v4[1];

  sub_1E58545F0();

  return sub_1E5840ED8(v6, v7);
}

uint64_t sub_1E583AD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v21 = a5;
  sub_1E5854090();
  sub_1E5854090();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E8, &qword_1E58554C0);
  v26 = sub_1E5854090();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F0, &qword_1E58554C8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F8, &qword_1E58554D0);
  v29 = MEMORY[0x1E6981840];
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A00, &qword_1E58554D8);
  swift_getTupleTypeMetadata();
  sub_1E5854580();
  swift_getWitnessTable();
  v9 = sub_1E5854500();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  v22 = a3;
  v23 = a4;
  v24 = a1;
  v25 = a2;
  sub_1E58541C0();
  sub_1E58544F0();
  swift_getWitnessTable();
  v17 = v10[2];
  v17(v16, v14, v9);
  v18 = v10[1];
  v18(v14, v9);
  v17(v21, v16, v9);
  return (v18)(v16, v9);
}

uint64_t sub_1E583B004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v141 = a5;
  v142 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D28, &qword_1E5855818);
  v139 = *(v8 - 8);
  v140 = v8;
  v9 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v129 = (&v108 - v10);
  v11 = sub_1E5853F70();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v124 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5854630();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v120 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E5854440();
  v117 = *(v17 - 8);
  v118 = v17;
  v18 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v116 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D30, &qword_1E5855820);
  v20 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v115 = (&v108 - v21);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D38, &qword_1E5855828);
  v22 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v108 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D40, &qword_1E5855830);
  v126 = *(v24 - 8);
  v127 = v24;
  v25 = *(v126 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v125 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v123 = &v108 - v28;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5A00, &qword_1E58554D8);
  v29 = *(*(v136 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v136);
  v138 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v137 = &v108 - v32;
  v134 = sub_1E58540C0();
  v33 = *(*(v134 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v134);
  v135 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(a3 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v39 = &v108 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1E5854090();
  v132 = *(v40 - 8);
  v41 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v108 - v42;
  v131 = sub_1E5854090();
  v133 = *(v131 - 8);
  v44 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v46 = &v108 - v45;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E8, &qword_1E58554C0);
  v47 = sub_1E5854090();
  v48 = *(v47 - 8);
  v144 = v47;
  v145 = v48;
  v49 = *(v48 + 64);
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = &v108 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v143 = &v108 - v53;
  v114 = type metadata accessor for SampleContentWorkoutView();
  v128 = a1;
  v54 = sub_1E5836FA8(v114);
  v54(v142);

  sub_1E58543B0();
  (*(v36 + 8))(v39, a3);
  sub_1E5854570();
  v178 = a4;
  v179 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1E5854400();
  (*(v132 + 8))(v43, v40);
  v56 = *(v134 + 20);
  v57 = *MEMORY[0x1E697F468];
  v58 = sub_1E58541E0();
  v59 = v135;
  (*(*(v58 - 8) + 104))(&v135[v56], v57, v58);
  __asm { FMOV            V0.2D, #10.0 }

  *v59 = _Q0;
  v65 = v59;
  v176 = WitnessTable;
  v177 = MEMORY[0x1E697E040];
  v66 = v131;
  v67 = swift_getWitnessTable();
  sub_1E58409C4(&qword_1ECFF5D48, MEMORY[0x1E697EAF0]);
  sub_1E5854430();
  sub_1E5840A0C(v65, MEMORY[0x1E697EAF0]);
  (*(v133 + 8))(v46, v66);
  v68 = sub_1E5840E30(&qword_1ECFF5D50, &qword_1ECFF59E8, &qword_1E58554C0);
  v174 = v67;
  v175 = v68;
  v69 = v144;
  v70 = swift_getWitnessTable();
  v71 = v145;
  v72 = v145 + 16;
  v133 = *(v145 + 16);
  (v133)(v143, v52, v69);
  v134 = *(v71 + 8);
  v135 = v52;
  v145 = v71 + 8;
  (v134)(v52, v69);
  sub_1E5854570();
  sub_1E5854050();
  v130 = v180;
  v131 = v182;
  v73 = v184;
  v132 = v185;
  v197 = 1;
  v195 = v181;
  v193 = v183;
  v74 = sub_1E5854200();
  LOBYTE(v154) = 1;
  v75 = v142;
  sub_1E583C068(v142, v198);
  *(&v172[1] + 7) = v198[1];
  *(v172 + 7) = v198[0];
  *(&v172[2] + 7) = v198[2];
  *(&v172[3] + 7) = v199;
  v200 = v74;
  v201[0] = v154;
  *&v201[33] = v172[2];
  *&v201[49] = v172[3];
  *&v201[64] = *(&v199 + 1);
  *&v201[1] = v172[0];
  *&v201[17] = v172[1];
  if (*(v75 + *(type metadata accessor for SampleContentItem() + 28)))
  {
    v76 = v137;
    (*(v139 + 56))(v137, 1, 1, v140);
  }

  else
  {
    v112 = v73;
    v113 = v72;
    v142 = v70;
    sub_1E5854570();
    sub_1E5854050();
    v110 = v188;
    v111 = v186;
    v108 = v191;
    v109 = v190;
    LOBYTE(v154) = 1;
    LOBYTE(v160) = v187;
    LOBYTE(v171[0]) = v189;
    v77 = sub_1E58544A0();
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D58, &qword_1E5855838);
    v79 = v115;
    v80 = (v115 + *(v78 + 36));
    v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5C70, &qword_1E58556F0) + 28);
    v82 = *MEMORY[0x1E69816E0];
    v83 = sub_1E58544B0();
    (*(*(v83 - 8) + 104))(v80 + v81, v82, v83);
    *v80 = swift_getKeyPath();
    *v79 = v77;
    v84 = sub_1E58542A0();
    KeyPath = swift_getKeyPath();
    v86 = (v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D60, &qword_1E5855840) + 36));
    *v86 = KeyPath;
    v86[1] = v84;
    (*(v117 + 104))(v116, *MEMORY[0x1E69814D8], v118);
    *(v79 + *(v119 + 36)) = sub_1E5854490();
    sub_1E5854620();
    if (qword_1EE2F8460 != -1)
    {
      swift_once();
    }

    v87 = qword_1EE2F8AC0;
    sub_1E5836EA4(v114);
    swift_getKeyPath();
    sub_1E58545E0();

    *&v172[0] = sub_1E5854670();
    *(&v172[0] + 1) = v88;
    sub_1E5840A6C();
    sub_1E5840074();
    v89 = v121;
    sub_1E58543F0();

    sub_1E5840E78(v79, &qword_1ECFF5D30, &qword_1E5855820);
    sub_1E583FE50(&qword_1ECFF5D90, &qword_1ECFF5D38, &qword_1E5855828, sub_1E5840A6C);
    v90 = v123;
    sub_1E5854380();
    sub_1E5840E78(v89, &qword_1ECFF5D38, &qword_1E5855828);
    v91 = v154;
    v92 = v160;
    LODWORD(v128) = LOBYTE(v171[0]);
    v93 = v125;
    v94 = v126;
    v95 = *(v126 + 16);
    v96 = v127;
    v95(v125, v90, v127);
    v97 = v129;
    *v129 = 0;
    *(v97 + 8) = v91;
    v98 = v110;
    *(v97 + 16) = v111;
    *(v97 + 24) = v92;
    *(v97 + 32) = v98;
    *(v97 + 40) = v128;
    v99 = v108;
    *(v97 + 48) = v109;
    *(v97 + 56) = v99;
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D98, &qword_1E5855850);
    v95((v97 + *(v100 + 48)), v93, v96);
    v101 = *(v94 + 8);
    v101(v90, v96);
    v101(v93, v96);
    v76 = v137;
    sub_1E5840C94(v97, v137, &qword_1ECFF5D28, &qword_1E5855818);
    (*(v139 + 56))(v76, 0, 1, v140);
    v70 = v142;
    v73 = v112;
  }

  v102 = v135;
  v103 = v143;
  v104 = v144;
  (v133)(v135, v143, v144);
  v160 = 0;
  v161 = v197;
  *v162 = *v196;
  *&v162[3] = *&v196[3];
  v163 = v130;
  v164 = v195;
  *v165 = *v194;
  *&v165[3] = *&v194[3];
  v166 = v131;
  v167 = v193;
  *v168 = *v192;
  *&v168[3] = *&v192[3];
  v169 = v73;
  v170 = v132;
  v171[0] = v102;
  v171[1] = &v160;
  v156 = *&v201[16];
  v157 = *&v201[32];
  v158 = *&v201[48];
  v159 = *&v201[64];
  v154 = v200;
  v155 = *v201;
  v152 = 0;
  v153 = 1;
  v171[2] = &v154;
  v171[3] = &v152;
  v105 = v138;
  sub_1E5833578(v76, v138);
  v171[4] = v105;
  sub_1E5840F94(&v200, v172, &qword_1ECFF59F8, &qword_1E58554D0);
  v151[0] = v104;
  v151[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59F0, &qword_1E58554C8);
  v151[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59F8, &qword_1E58554D0);
  v151[3] = MEMORY[0x1E6981840];
  v151[4] = v136;
  v146 = v70;
  v147 = sub_1E5840CFC();
  v148 = sub_1E5840E30(&qword_1ECFF5DA8, &qword_1ECFF59F8, &qword_1E58554D0);
  v149 = MEMORY[0x1E6981838];
  v150 = sub_1E5840D80();
  sub_1E583C3AC(v171, 5uLL, v151);
  sub_1E5840E78(&v200, &qword_1ECFF59F8, &qword_1E58554D0);
  sub_1E5840E78(v76, &qword_1ECFF5A00, &qword_1E58554D8);
  v106 = v134;
  (v134)(v103, v104);
  sub_1E5840E78(v105, &qword_1ECFF5A00, &qword_1E58554D8);
  v172[2] = v156;
  v172[3] = v157;
  v172[4] = v158;
  v173 = v159;
  v172[0] = v154;
  v172[1] = v155;
  sub_1E5840E78(v172, &qword_1ECFF59F8, &qword_1E58554D0);
  return v106(v102, v104);
}

uint64_t sub_1E583C068@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a1;
  v53 = a2;
  v3 = sub_1E5853EB0();
  v46 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SampleContentItem();
  v9 = *(v8 + 36);
  v10 = *(v4 + 16);
  v45 = v4 + 16;
  v48 = v10;
  v49 = v8;
  v10(v7, a1 + v9, v3);
  v11 = sub_1E5854350();
  v13 = v12;
  v15 = v14;
  sub_1E58542A0();
  v16 = sub_1E5854330();
  v18 = v17;
  v20 = v19;

  sub_1E5840460(v11, v13, v15 & 1);

  v55 = sub_1E5854470();
  v21 = sub_1E5854310();
  v51 = v22;
  v52 = v21;
  v24 = v23;
  v50 = v25;
  sub_1E5840460(v16, v18, v20 & 1);

  v48(v7, v47 + *(v49 + 32), v46);
  v26 = sub_1E5854350();
  v28 = v27;
  v30 = v29;
  sub_1E58542A0();
  v31 = sub_1E5854330();
  v33 = v32;
  LOBYTE(v11) = v34;

  sub_1E5840460(v26, v28, v30 & 1);

  v55 = sub_1E5854480();
  v35 = sub_1E5854310();
  v37 = v36;
  LOBYTE(v7) = v38;
  v40 = v39;
  sub_1E5840460(v31, v33, v11 & 1);

  v41 = v50 & 1;
  v54 = v50 & 1;
  LOBYTE(v55) = v50 & 1;
  v56 = v7 & 1;
  v43 = v52;
  v42 = v53;
  *v53 = v52;
  v42[1] = v24;
  *(v42 + 16) = v41;
  v42[3] = v51;
  v42[4] = v35;
  v42[5] = v37;
  *(v42 + 48) = v7 & 1;
  v42[7] = v40;
  sub_1E58404F4(v43, v24, v41);

  sub_1E58404F4(v35, v37, v7 & 1);

  sub_1E5840460(v35, v37, v7 & 1);

  sub_1E5840460(v43, v24, v54);
}

uint64_t sub_1E583C3AC(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_1E5854590();
}

uint64_t sub_1E583C57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5BB8, &qword_1E5855630);
  v9 = *(v8 - 8);
  v37 = v8;
  v38 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5BC0, &qword_1E5855638);
  v31 = *(v36 - 8);
  v13 = v31;
  v14 = *(v31 + 64);
  v15 = MEMORY[0x1EEE9AC00](v36);
  v35 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v33 = &v31 - v17;
  v34 = sub_1E5854200();
  v46 = 1;
  sub_1E583CA6C(a1, a2, a3, &v55);
  v49 = *&v56[16];
  v50[0] = *&v56[32];
  *(v50 + 15) = *&v56[47];
  v47 = v55;
  v48 = *v56;
  v51[2] = *&v56[16];
  v52[0] = *&v56[32];
  *(v52 + 15) = *&v56[47];
  v51[0] = v55;
  v51[1] = *v56;
  sub_1E5840F94(&v47, v53, &qword_1ECFF5BC8, &qword_1E5855640);
  sub_1E5840E78(v51, &qword_1ECFF5BC8, &qword_1E5855640);
  *(&v45[1] + 7) = v48;
  *(&v45[2] + 7) = v49;
  *(&v45[3] + 7) = v50[0];
  *(&v45[4] + 6) = *(v50 + 15);
  *(v45 + 7) = v47;
  v32 = v46;
  v42 = a2;
  v43 = a3;
  v44 = a1;
  v39 = a2;
  v40 = a3;
  v41 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5BD0, &qword_1E5855648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5BD8, &qword_1E5855650);
  sub_1E583FE50(&qword_1ECFF5BE0, &qword_1ECFF5BD0, &qword_1E5855648, sub_1E583FF04);
  sub_1E5840E30(&qword_1ECFF5C30, &qword_1ECFF5BD8, &qword_1E5855650);
  sub_1E58542E0();
  sub_1E5840E30(&qword_1ECFF5C38, &qword_1ECFF5BB8, &qword_1E5855630);
  v18 = v33;
  v19 = v37;
  sub_1E5854380();
  (*(v38 + 8))(v12, v19);
  v20 = *(v13 + 16);
  v22 = v35;
  v21 = v36;
  v20(v35, v18, v36);
  v23 = v34;
  v53[0] = v34;
  v53[1] = 0;
  LOBYTE(v13) = v32;
  LOBYTE(v54[0]) = v32;
  *(v54 + 1) = v45[0];
  *(&v54[1] + 1) = v45[1];
  *(&v54[2] + 1) = v45[2];
  *(&v54[3] + 11) = *(&v45[3] + 10);
  *(&v54[3] + 1) = v45[3];
  v24 = v54[0];
  *a4 = v34;
  *(a4 + 16) = v24;
  v25 = v54[1];
  v26 = v54[2];
  v27 = v54[3];
  *(a4 + 75) = *(&v54[3] + 11);
  *(a4 + 48) = v26;
  *(a4 + 64) = v27;
  *(a4 + 32) = v25;
  *(a4 + 96) = 0;
  *(a4 + 104) = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5C40, &qword_1E5855678);
  v20((a4 + *(v28 + 64)), v22, v21);
  sub_1E5840F94(v53, &v55, &qword_1ECFF5C48, &qword_1E5855680);
  v29 = *(v31 + 8);
  v29(v18, v21);
  v29(v22, v21);
  v55 = v23;
  v56[0] = v13;
  *&v56[17] = v45[1];
  *&v56[33] = v45[2];
  *&v56[49] = v45[3];
  *&v56[59] = *(&v45[3] + 10);
  *&v56[1] = v45[0];
  return sub_1E5840E78(&v55, &qword_1ECFF5C48, &qword_1E5855680);
}

uint64_t sub_1E583CA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a2;
  *&v83 = a3;
  v81 = a1;
  *&v84 = a4;
  v76 = sub_1E5853EB0();
  v75 = *(v76 - 8);
  v4 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5853F70();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v79 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5854630();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v78 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
  v12 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v14 = &v73 - v13;
  v15 = type metadata accessor for SampleContentShelfDescriptor();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v77 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E58541D0();
  v18 = sub_1E5854340();
  v20 = v19;
  v22 = v21;
  sub_1E58542B0();
  v23 = sub_1E5854330();
  v25 = v24;
  v27 = v26;

  sub_1E5840460(v18, v20, v22 & 1);

  sub_1E58542C0();
  v28 = sub_1E5854300();
  v30 = v29;
  v32 = v31;
  sub_1E5840460(v23, v25, v27 & 1);

  *&v91 = sub_1E5854470();
  v33 = sub_1E5854310();
  v35 = v34;
  LODWORD(v37) = v36;
  v39 = v38;
  sub_1E5840460(v28, v30, v32 & 1);

  v40 = type metadata accessor for SampleContentWorkoutView();
  sub_1E5836EA4(v40);
  swift_getKeyPath();
  sub_1E58545E0();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      LODWORD(v81) = v37;
      v82 = v33;
      *&v83 = v39;
      v43 = v77;
      sub_1E584085C(v14, v77, type metadata accessor for SampleContentShelfDescriptor);
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 1)
    {
      LODWORD(v81) = v37;
      v82 = v33;
      *&v83 = v39;
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CF0, &qword_1E58557A8) + 48);
      v43 = v77;
      sub_1E584085C(v14, v77, type metadata accessor for SampleContentShelfDescriptor);
      v44 = sub_1E5853F00();
      (*(*(v44 - 8) + 8))(&v14[v42], v44);
LABEL_6:
      v45 = v75;
      v46 = v74;
      v47 = v76;
      (*(v75 + 16))(v74, v43, v76);
      sub_1E5840A0C(v43, type metadata accessor for SampleContentShelfDescriptor);
      v48 = sub_1E5853E90();
      v50 = v49;
      v52 = v51;
      (*(v45 + 8))(v46, v47);
      *&v91 = sub_1E5854480();
      v53 = sub_1E5854310();
      v55 = v54;
      v57 = v56;
      v37 = v58;
      sub_1E5840460(v48, v50, v52 & 1);

      v85 = v53;
      v86 = v55;
      v87 = v57 & 1;
      v88 = v37;
      v89 = 256;
      v90 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CE0, &qword_1E58557A0);
      sub_1E5840470();
      sub_1E5854220();
      v59 = v91;
      v60 = v92;
      v61 = v93;
      v62 = v94;
      v63 = v84;
      v33 = v82;
      v39 = v83;
      LOBYTE(v37) = v81;
      goto LABEL_11;
    }

    sub_1E5840E78(v14, &qword_1ECFF5CD8, &qword_1E58566E0);
  }

  sub_1E5854620();
  if (qword_1EE2F8460 != -1)
  {
    swift_once();
  }

  v64 = qword_1EE2F8AC0;
  sub_1E5836EA4(v40);
  swift_getKeyPath();
  sub_1E58545E0();

  *&v91 = sub_1E5854670();
  *(&v91 + 1) = v65;
  sub_1E5840074();
  v85 = sub_1E5854360();
  v86 = v66;
  v87 = v67 & 1;
  v88 = v68;
  v89 = 0;
  v90 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CE0, &qword_1E58557A0);
  sub_1E5840470();
  sub_1E5854220();
  v59 = v91;
  v60 = v92;
  v61 = v93;
  v62 = v94;
  v63 = v84;
LABEL_11:
  v83 = v59;
  v84 = v60;
  v69 = v37 & 1;
  LOBYTE(v91) = v69;
  LOBYTE(v85) = v62;
  *v63 = v33;
  *(v63 + 8) = v35;
  *(v63 + 16) = v69;
  *(v63 + 24) = v39;
  *(v63 + 32) = v59;
  *(v63 + 48) = v60;
  *(v63 + 64) = v61;
  *(v63 + 66) = v62;
  sub_1E58404F4(v33, v35, v69);

  v70 = v83;
  v71 = v84;
  sub_1E5840504(v83, *(&v83 + 1), v84);
  sub_1E5840540(v70, *(&v70 + 1), v71);
  sub_1E5840460(v33, v35, v69);
}

uint64_t sub_1E583D268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SampleContentWorkoutView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD0, &unk_1E5855770);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19[-v13];
  sub_1E5853FF0();
  v15 = sub_1E5854000();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  (*(v7 + 32))(v17 + v16, v10, v6);
  v20 = a2;
  v21 = a3;
  v22 = a1;
  return sub_1E58544C0();
}

uint64_t sub_1E583D480()
{
  v0 = type metadata accessor for SampleContentWorkoutView();
  sub_1E5836EA4(v0);
  sub_1E58545F0();
}

uint64_t sub_1E583D4D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5853F70();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5854630();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5854620();
  if (qword_1EE2F8460 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2F8AC0;
  v7 = type metadata accessor for SampleContentWorkoutView();
  v8 = v6;
  sub_1E5836EA4(v7);
  swift_getKeyPath();
  sub_1E58545E0();

  result = sub_1E58542F0();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_1E583D670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a1;
  v27[2] = a2;
  v2 = sub_1E5853F70();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5854630();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1E5854440();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5BF0, &qword_1E5855658);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  (*(v7 + 104))(v10, *MEMORY[0x1E69814D8], v6);
  sub_1E5854490();
  v15 = sub_1E5854460();

  sub_1E5854570();
  sub_1E5854050();
  *&v28[6] = v29;
  *&v28[22] = v30;
  *&v28[38] = v31;
  v16 = sub_1E5854570();
  v18 = v17;
  v19 = &v14[*(v11 + 36)];
  sub_1E583DA34(v19);
  v20 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5C20, &qword_1E5855670) + 36));
  *v20 = v16;
  v20[1] = v18;
  *(v14 + 7) = *&v28[46];
  *(v14 + 42) = *&v28[32];
  v21 = *v28;
  *(v14 + 26) = *&v28[16];
  *v14 = v15;
  *(v14 + 4) = 256;
  *(v14 + 10) = v21;
  sub_1E5854620();
  if (qword_1EE2F8460 != -1)
  {
    swift_once();
  }

  v22 = qword_1EE2F8AC0;
  v23 = type metadata accessor for SampleContentWorkoutView();
  v24 = v22;
  sub_1E5836EA4(v23);
  swift_getKeyPath();
  sub_1E58545E0();

  v27[3] = sub_1E5854670();
  v27[4] = v25;
  sub_1E583FF04();
  sub_1E5840074();
  sub_1E58543F0();

  return sub_1E5840E78(v14, &qword_1ECFF5BF0, &qword_1E5855658);
}

uint64_t sub_1E583DA34@<X0>(uint64_t a1@<X8>)
{
  v25[1] = a1;
  v25[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5C58, &qword_1E58556A8);
  v1 = *(*(v25[0] - 8) + 64);
  MEMORY[0x1EEE9AC00](v25[0]);
  v3 = v25 - v2;
  v27 = sub_1E5854440();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5C60, &qword_1E58556B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v25 - v10);
  v26 = sub_1E58544A0();
  v12 = sub_1E58542A0();
  KeyPath = swift_getKeyPath();
  v14 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5C68, &qword_1E58556E8) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5C70, &qword_1E58556F0) + 28);
  v16 = *MEMORY[0x1E69816C0];
  v17 = sub_1E58544B0();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = swift_getKeyPath();
  v18 = v27;
  *v11 = v26;
  v11[1] = KeyPath;
  v11[2] = v12;
  (*(v4 + 104))(v7, *MEMORY[0x1E69814D8], v18);
  v19 = sub_1E5854490();
  v20 = swift_getKeyPath();
  v21 = (v11 + *(v8 + 36));
  *v21 = v20;
  v21[1] = v19;
  v22 = *MEMORY[0x1E697E6E8];
  v23 = sub_1E5854080();
  (*(*(v23 - 8) + 104))(v3, v22, v23);
  sub_1E58409C4(&qword_1ECFF5C78, MEMORY[0x1E697E730]);
  result = sub_1E5854610();
  if (result)
  {
    sub_1E5840198();
    sub_1E5840E30(&qword_1ECFF5CC8, &qword_1ECFF5C58, &qword_1E58556A8);
    sub_1E58543E0();
    sub_1E5840E78(v3, &qword_1ECFF5C58, &qword_1E58556A8);
    return sub_1E5840E78(v11, &qword_1ECFF5C60, &qword_1E58556B0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E583DDE4@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5AE8, &qword_1E5855540);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5AD8, &qword_1E5855538);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5AC8, &qword_1E5855530);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v44 - v16;
  LOBYTE(v44[0]) = a1 & 1;
  v18 = type metadata accessor for SampleContentWorkoutView();
  sub_1E583E0B0(v44, v18, v7);
  sub_1E5854570();
  sub_1E58540D0();
  sub_1E5840C94(v7, v12, &qword_1ECFF5AE8, &qword_1E5855540);
  v19 = &v12[*(v9 + 44)];
  v20 = v44[5];
  *(v19 + 4) = v44[4];
  *(v19 + 5) = v20;
  *(v19 + 6) = v44[6];
  v21 = v44[1];
  *v19 = v44[0];
  *(v19 + 1) = v21;
  v22 = v44[3];
  *(v19 + 2) = v44[2];
  *(v19 + 3) = v22;
  v23 = sub_1E5854280();
  sub_1E5854010();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1E5840C94(v12, v17, &qword_1ECFF5AD8, &qword_1E5855538);
  v32 = &v17[*(v14 + 44)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = sub_1E5854260();
  sub_1E5854010();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_1E5840C94(v17, a2, &qword_1ECFF5AC8, &qword_1E5855530);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5AB8, &qword_1E5855528);
  v43 = a2 + *(result + 36);
  *v43 = v33;
  *(v43 + 8) = v35;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0;
  return result;
}

uint64_t sub_1E583E0B0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  *a3 = sub_1E58541F0();
  *(a3 + 8) = 0x4014000000000000;
  *(a3 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DC8, &qword_1E5855860);
  sub_1E583E154(v6, v3, *(a2 + 16), *(a2 + 24), (a3 + *(v7 + 44)));
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5AE8, &qword_1E5855540);
  v10 = a3 + *(result + 36);
  *v10 = KeyPath;
  *(v10 + 8) = 1;
  return result;
}

uint64_t sub_1E583E154@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v91 = a4;
  v90 = a3;
  v97 = a5;
  v98 = a2;
  v94 = sub_1E5854440();
  v93 = *(v94 - 8);
  v6 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SampleContentWorkoutView();
  v99 = v8;
  v88 = *(v8 - 8);
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v80 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DD0, &qword_1E5855898);
  v11 = *(v10 - 8);
  v95 = v10 - 8;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8);
  v96 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v80 - v15;
  v16 = sub_1E5853F70();
  v81 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a1 & 1;
  LOBYTE(v106) = a1 & 1;
  sub_1E5836EA4(v8);
  swift_getKeyPath();
  sub_1E58545E0();

  v21 = sub_1E5852814(v20);
  v23 = v22;
  v25 = v24;
  v26 = *(v17 + 8);
  v80 = v17 + 8;
  v82 = v26;
  v26(v20, v16);
  sub_1E58542D0();
  v27 = sub_1E5854330();
  v29 = v28;
  v31 = v30;

  sub_1E5840460(v21, v23, v25 & 1);

  sub_1E58542C0();
  v86 = sub_1E5854300();
  v84 = v32;
  v83 = v33;
  v85 = v34;
  sub_1E5840460(v27, v29, v31 & 1);

  v107 = v100;
  v35 = v99;
  sub_1E5836EA4(v99);
  swift_getKeyPath();
  sub_1E58545E0();

  sub_1E5836EA4(v35);
  swift_getKeyPath();
  sub_1E58545E0();

  v36 = sub_1E5854660();
  v38 = v37;

  v39 = sub_1E58529F8(v20, v36, v38);
  v41 = v40;
  LOBYTE(v36) = v42;

  v82(v20, v81);
  sub_1E5854290();
  v43 = sub_1E5854330();
  v45 = v44;
  v47 = v46;

  sub_1E5840460(v39, v41, v36 & 1);

  LODWORD(v106) = sub_1E5854240();
  v80 = sub_1E5854310();
  v49 = v48;
  LODWORD(v81) = v50;
  v82 = v51;
  sub_1E5840460(v43, v45, v47 & 1);

  v52 = v88;
  v53 = v87;
  v54 = v98;
  v55 = v99;
  (*(v88 + 16))(v87, v98, v99);
  v56 = v52;
  v57 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v58 = v57 + v89;
  v59 = swift_allocObject();
  v60 = v90;
  v61 = v91;
  *(v59 + 16) = v90;
  *(v59 + 24) = v61;
  (*(v56 + 32))(v59 + v57, v53, v55);
  v62 = v100;
  *(v59 + v58) = v100;
  v102 = v60;
  v103 = v61;
  v104 = v62;
  v105 = v54;
  v63 = v101;
  sub_1E58544D0();
  (*(v93 + 104))(v92, *MEMORY[0x1E69814D8], v94);
  v64 = sub_1E5854490();
  KeyPath = swift_getKeyPath();
  v106 = v64;
  v66 = sub_1E5854060();
  v67 = (v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DD8, &qword_1E58558F0) + 36));
  *v67 = KeyPath;
  v67[1] = v66;
  LOBYTE(v66) = sub_1E5854270();
  sub_1E5854010();
  v68 = v96;
  v69 = v63 + *(v95 + 44);
  *v69 = v66;
  *(v69 + 8) = v70;
  *(v69 + 16) = v71;
  *(v69 + 24) = v72;
  *(v69 + 32) = v73;
  *(v69 + 40) = 0;
  LOBYTE(v66) = v83 & 1;
  LOBYTE(v106) = v83 & 1;
  sub_1E5840F94(v63, v68, &qword_1ECFF5DD0, &qword_1E5855898);
  v74 = v97;
  v75 = v86;
  v76 = v84;
  *v97 = v86;
  v74[1] = v76;
  *(v74 + 16) = v66;
  v77 = v80;
  v74[3] = v85;
  v74[4] = v77;
  v74[5] = v49;
  LOBYTE(KeyPath) = v81 & 1;
  *(v74 + 48) = v81 & 1;
  v74[7] = v82;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DE0, &qword_1E58558F8);
  sub_1E5840F94(v68, v74 + *(v78 + 64), &qword_1ECFF5DD0, &qword_1E5855898);
  sub_1E58404F4(v75, v76, v66);

  sub_1E58404F4(v77, v49, KeyPath);

  sub_1E5840E78(v101, &qword_1ECFF5DD0, &qword_1E5855898);
  sub_1E5840E78(v68, &qword_1ECFF5DD0, &qword_1E5855898);
  sub_1E5840460(v77, v49, KeyPath);

  sub_1E5840460(v75, v76, v106);
}

uint64_t sub_1E583E9A8(char *a1, uint64_t a2)
{
  v2 = *a1;
  sub_1E5836EA4(a2);
  sub_1E58545F0();
}

uint64_t sub_1E583EA04@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5853F70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23[15] = a1 & 1;
  v9 = type metadata accessor for SampleContentWorkoutView();
  sub_1E5836EA4(v9);
  swift_getKeyPath();
  sub_1E58545E0();

  v10 = sub_1E5852C34(v8);
  v12 = v11;
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  sub_1E5854290();
  v15 = sub_1E5854330();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_1E5840460(v10, v12, v14 & 1);

  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v21;
  return result;
}

uint64_t sub_1E583EBB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
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

unint64_t sub_1E583EC38()
{
  result = qword_1ECFF5A20;
  if (!qword_1ECFF5A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59D0, &qword_1E58554A8);
    sub_1E583ECF0();
    sub_1E5840E30(&qword_1ECFF5A10, &qword_1ECFF5A08, &qword_1E58554E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5A20);
  }

  return result;
}

unint64_t sub_1E583ECF0()
{
  result = qword_1ECFF5A28;
  if (!qword_1ECFF5A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A30, &qword_1E58554E8);
    sub_1E583EDA8();
    sub_1E5840E30(&qword_1ECFF5A58, &qword_1ECFF5A60, &qword_1E5855500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5A28);
  }

  return result;
}

unint64_t sub_1E583EDA8()
{
  result = qword_1ECFF5A38;
  if (!qword_1ECFF5A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A40, &qword_1E58554F0);
    sub_1E5840E30(&qword_1ECFF5A48, &qword_1ECFF5A50, &qword_1E58554F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5A38);
  }

  return result;
}

unint64_t sub_1E583EE60()
{
  result = qword_1ECFF5A68;
  if (!qword_1ECFF5A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59D8, &qword_1E58554B0);
    sub_1E583EEEC();
    sub_1E583F0D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5A68);
  }

  return result;
}

unint64_t sub_1E583EEEC()
{
  result = qword_1ECFF5A70;
  if (!qword_1ECFF5A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A78, &qword_1E5855508);
    sub_1E583EFD0(&qword_1ECFF5A80, &qword_1ECFF5A88, &qword_1E5855510, sub_1E583F054);
    sub_1E5840E30(&qword_1ECFF5AA0, &qword_1ECFF5AA8, &qword_1E5855520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5A70);
  }

  return result;
}

uint64_t sub_1E583EFD0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1E583F054()
{
  result = qword_1ECFF5A90;
  if (!qword_1ECFF5A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A98, &qword_1E5855518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5A90);
  }

  return result;
}

unint64_t sub_1E583F0D8()
{
  result = qword_1ECFF5AB0;
  if (!qword_1ECFF5AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5AB8, &qword_1E5855528);
    sub_1E583F164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5AB0);
  }

  return result;
}

unint64_t sub_1E583F164()
{
  result = qword_1ECFF5AC0;
  if (!qword_1ECFF5AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5AC8, &qword_1E5855530);
    sub_1E583EFD0(&qword_1ECFF5AD0, &qword_1ECFF5AD8, &qword_1E5855538, sub_1E583F21C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5AC0);
  }

  return result;
}

unint64_t sub_1E583F21C()
{
  result = qword_1ECFF5AE0;
  if (!qword_1ECFF5AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5AE8, &qword_1E5855540);
    sub_1E5840E30(&qword_1ECFF5AF0, &qword_1ECFF5AF8, &qword_1E5855548);
    sub_1E5840E30(&qword_1ECFF5B00, &qword_1ECFF5B08, &unk_1E5855550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5AE0);
  }

  return result;
}

uint64_t sub_1E583F300@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1E5837A4C(*(v1 + 32), a1);
}

double sub_1E583F30C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1E583A154(a1);
}

void sub_1E583F378(uint64_t a1)
{
  sub_1E583F460();
  if (v2 <= 0x3F)
  {
    sub_1E583F4B8();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      type metadata accessor for SampleContentArtwork();
      swift_getFunctionTypeMetadata1();
      sub_1E5853FA0();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E583F460()
{
  if (!qword_1ECFF5B98)
  {
    sub_1E5854080();
    v0 = sub_1E5854020();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECFF5B98);
    }
  }
}

void sub_1E583F4B8()
{
  if (!qword_1EE2F8490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5BA0, "0*");
    sub_1E5840E30(&qword_1EE2F8480, &qword_1ECFF5BA0, "0*");
    v0 = sub_1E5854040();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2F8490);
    }
  }
}

uint64_t sub_1E583F55C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E58541B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59C8, &qword_1E58554A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v20 - v11);
  sub_1E5840F94(v2, &v20 - v11, &qword_1ECFF59C8, &qword_1E58554A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E5854080();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    v16 = sub_1E5854700();
    v17 = sub_1E5854250();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1E583F7E8(0x5463696D616E7944, 0xEF657A6953657079, &v21);
      _os_log_impl(&dword_1E5831000, v17, v16, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1E692F2D0](v19, -1, -1);
      MEMORY[0x1E692F2D0](v18, -1, -1);
    }

    sub_1E58541A0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1E583F7E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E583F8B4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1E5840FFC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1E583F8B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1E583F9C0(a5, a6);
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
    result = sub_1E5854760();
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

uint64_t sub_1E583F9C0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E583FA0C(a1, a2);
  sub_1E583FB3C(&unk_1F5F540B8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1E583FA0C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E583FC28(v5, 0);
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

  result = sub_1E5854760();
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
        v10 = sub_1E58546A0();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E583FC28(v10, 0);
        result = sub_1E5854720();
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

uint64_t sub_1E583FB3C(uint64_t result)
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

  result = sub_1E583FC9C(result, v12, 1, v3);
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

void *sub_1E583FC28(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DE8, &unk_1E5855900);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E583FC9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DE8, &unk_1E5855900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1E583FD90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5BB0, &qword_1E5855628);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E5840F94(a1, &v6 - v4, &qword_1ECFF5BB0, &qword_1E5855628);
  return sub_1E5854190();
}

uint64_t sub_1E583FE44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1E583D670(v1[4], a1);
}

uint64_t sub_1E583FE50(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1E58409C4(&qword_1ECFF5C28, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E583FF04()
{
  result = qword_1ECFF5BE8;
  if (!qword_1ECFF5BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5BF0, &qword_1E5855658);
    sub_1E583FFBC();
    sub_1E5840E30(&qword_1ECFF5C18, &qword_1ECFF5C20, &qword_1E5855670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5BE8);
  }

  return result;
}

unint64_t sub_1E583FFBC()
{
  result = qword_1ECFF5BF8;
  if (!qword_1ECFF5BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5C00, &qword_1E5855660);
    sub_1E5840E30(&qword_1ECFF5C08, &qword_1ECFF5C10, &qword_1E5855668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5BF8);
  }

  return result;
}

unint64_t sub_1E5840074()
{
  result = qword_1ECFF5C50;
  if (!qword_1ECFF5C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5C50);
  }

  return result;
}

uint64_t sub_1E58400C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_1E5840198()
{
  result = qword_1ECFF5C80;
  if (!qword_1ECFF5C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5C60, &qword_1E58556B0);
    sub_1E5840250();
    sub_1E5840E30(&qword_1ECFF5CB8, &qword_1ECFF5CC0, &qword_1E5855768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5C80);
  }

  return result;
}

unint64_t sub_1E5840250()
{
  result = qword_1ECFF5C88;
  if (!qword_1ECFF5C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5C68, &qword_1E58556E8);
    sub_1E5840308();
    sub_1E5840E30(&qword_1ECFF5CB0, &qword_1ECFF5C70, &qword_1E58556F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5C88);
  }

  return result;
}

unint64_t sub_1E5840308()
{
  result = qword_1ECFF5C90;
  if (!qword_1ECFF5C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5C98, &qword_1E5855758);
    sub_1E5840E30(&qword_1ECFF5CA0, &qword_1ECFF5CA8, &qword_1E5855760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5C90);
  }

  return result;
}

uint64_t sub_1E58403CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for SampleContentWorkoutView() - 8) + 80);
  return sub_1E583D480();
}

uint64_t sub_1E5840454@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1E583D4D4(a1);
}

uint64_t sub_1E5840460(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1E5840470()
{
  result = qword_1ECFF5CE8;
  if (!qword_1ECFF5CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5CE0, &qword_1E58557A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5CE8);
  }

  return result;
}

uint64_t sub_1E58404F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E5840504(uint64_t a1, uint64_t a2, char a3)
{
  sub_1E58404F4(a1, a2, a3 & 1);
}

uint64_t sub_1E5840540(uint64_t a1, uint64_t a2, char a3)
{
  sub_1E5840460(a1, a2, a3 & 1);
}

unint64_t sub_1E584057C()
{
  result = qword_1ECFF5D08;
  if (!qword_1ECFF5D08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECFF5D08);
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for SampleContentWorkoutView();
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v7 = (v0 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59C8, &qword_1E58554A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1E5854080();
    (*(*(v8 - 8) + 8))(v0 + v5, v8);
  }

  else
  {
    v9 = *v7;
  }

  v10 = &v7[*(v3 + 36)];
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = v10[16];
  sub_1E583F318();
  v14 = *(v3 + 40);
  type metadata accessor for SampleContentArtwork();
  swift_getFunctionTypeMetadata1();
  v15 = sub_1E5853FA0();
  (*(*(v15 - 8) + 8))(&v7[v14], v15);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1E584075C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for SampleContentWorkoutView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1E583A500(a1, v8, v5, v6, a2);
}

uint64_t sub_1E58407F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleContentItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E584085C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E58408C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for SampleContentWorkoutView() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SampleContentItem() - 8);
  v7 = v0 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1E583ACEC(v0 + v4, v7);
}

uint64_t sub_1E58409C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5840A0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E5840A6C()
{
  result = qword_1ECFF5D68;
  if (!qword_1ECFF5D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5D30, &qword_1E5855820);
    sub_1E5840B24();
    sub_1E5840E30(&qword_1ECFF5D80, &qword_1ECFF5D88, &qword_1E5855848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5D68);
  }

  return result;
}

unint64_t sub_1E5840B24()
{
  result = qword_1ECFF5D70;
  if (!qword_1ECFF5D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5D60, &qword_1E5855840);
    sub_1E5840BDC();
    sub_1E5840E30(&qword_1ECFF5CA0, &qword_1ECFF5CA8, &qword_1E5855760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5D70);
  }

  return result;
}

unint64_t sub_1E5840BDC()
{
  result = qword_1ECFF5D78;
  if (!qword_1ECFF5D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5D58, &qword_1E5855838);
    sub_1E5840E30(&qword_1ECFF5CB0, &qword_1ECFF5C70, &qword_1E58556F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5D78);
  }

  return result;
}

uint64_t sub_1E5840C94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E5840CFC()
{
  result = qword_1ECFF5DA0;
  if (!qword_1ECFF5DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59F0, &qword_1E58554C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5DA0);
  }

  return result;
}

unint64_t sub_1E5840D80()
{
  result = qword_1ECFF5DB0;
  if (!qword_1ECFF5DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5A00, &qword_1E58554D8);
    sub_1E5840E30(&qword_1ECFF5DB8, &qword_1ECFF5D28, &qword_1E5855818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5DB0);
  }

  return result;
}

uint64_t sub_1E5840E30(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1E5840E78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E5840ED8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_1E5840EEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for SampleContentWorkoutView();
  v5 = *(v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)) + *(*(v3 - 8) + 64));
  return sub_1E583E9A8(&v5, v3);
}

uint64_t sub_1E5840F84@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1E583EA04(*(v1 + 32), a1);
}

uint64_t sub_1E5840F94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E5840FFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 SampleContentFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1E58410AC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5854890();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 3;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      MEMORY[0x1E692EEF0](v3);
      return sub_1E58548C0();
    }
  }

  MEMORY[0x1E692EEF0](2);
  sub_1E5854680();
  return sub_1E58548C0();
}

uint64_t sub_1E5841164()
{
  v1 = v0[1];
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      return MEMORY[0x1E692EEF0](v2);
    }

    if (v1 == 3)
    {
      v2 = 4;
      return MEMORY[0x1E692EEF0](v2);
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      return MEMORY[0x1E692EEF0](v2);
    }

    if (v1 == 1)
    {
      v2 = 1;
      return MEMORY[0x1E692EEF0](v2);
    }
  }

  v3 = *v0;
  MEMORY[0x1E692EEF0](2);

  return sub_1E5854680();
}

uint64_t sub_1E5841214()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5854890();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 3;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      MEMORY[0x1E692EEF0](v3);
      return sub_1E58548C0();
    }
  }

  MEMORY[0x1E692EEF0](2);
  sub_1E5854680();
  return sub_1E58548C0();
}

uint64_t sub_1E58412C8(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        return v6 == 3;
      }

LABEL_10:
      if (v6 >= 4)
      {
        if (v4 != *a2 || v5 != v6)
        {
          return sub_1E5854840();
        }

        return 1;
      }

      return 0;
    }

    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        return v6 == 1;
      }

      goto LABEL_10;
    }

    if (v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t SampleContentFeature.reduce(localState:sharedState:sideEffects:action:)(_BYTE *a1, uint64_t a2, void **a3, uint64_t *a4)
{
  v98 = a3;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DF0, &qword_1E5855910);
  v7 = *(v99 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v99);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v98 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v98 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v98 - v19;
  result = MEMORY[0x1EEE9AC00](v18);
  v23 = &v98 - v22;
  v24 = *a4;
  v25 = a4[1];
  v26 = v4[3];
  v103 = v4[2];
  v104 = v26;
  v105 = v4[4];
  v27 = v4[1];
  v101 = *v4;
  v102 = v27;
  if (v25 <= 1)
  {
    if (!v25)
    {
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DF8, &qword_1E5855918);
      v73 = v72[12];
      v74 = v72[16];
      v75 = v72[20];
      v76 = &v23[v72[24]];
      sub_1E5841E68();
      v100[0] = 0uLL;
      sub_1E5854710();
      sub_1E58546F0();
      v77 = *MEMORY[0x1E6999B50];
      v78 = sub_1E58545D0();
      (*(*(v78 - 8) + 104))(&v23[v74], v77, v78);
      v79 = *MEMORY[0x1E6999B40];
      v80 = sub_1E58545C0();
      (*(*(v80 - 8) + 104))(&v23[v75], v79, v80);
      v81 = swift_allocObject();
      v82 = v104;
      v81[3] = v103;
      v81[4] = v82;
      v81[5] = v105;
      v83 = v102;
      v81[1] = v101;
      v81[2] = v83;
      *v76 = &unk_1E5855968;
      *(v76 + 1) = v81;
      v40 = v99;
      (*(v7 + 104))(v23, *MEMORY[0x1E6999AD8], v99);
      v41 = v98;
      v42 = *v98;
      sub_1E5842950(&v101, v100);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1E5842990(0, v42[2] + 1, 1, v42);
      }

      v44 = v42[2];
      v84 = v42[3];
      v45 = v44 + 1;
      if (v44 >= v84 >> 1)
      {
        v42 = sub_1E5842990(v84 > 1, v44 + 1, 1, v42);
      }

      goto LABEL_31;
    }

    if (v25 == 1)
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DF8, &qword_1E5855918);
      v29 = v28[12];
      v30 = v28[16];
      v31 = v28[20];
      v32 = &v20[v28[24]];
      v100[0] = xmmword_1E5855440;
      sub_1E5841E68();
      sub_1E5854710();
      sub_1E58546F0();
      v33 = *MEMORY[0x1E6999B50];
      v34 = sub_1E58545D0();
      (*(*(v34 - 8) + 104))(&v20[v30], v33, v34);
      v35 = *MEMORY[0x1E6999B40];
      v36 = sub_1E58545C0();
      (*(*(v36 - 8) + 104))(&v20[v31], v35, v36);
      v37 = swift_allocObject();
      v38 = v104;
      v37[3] = v103;
      v37[4] = v38;
      v37[5] = v105;
      v39 = v102;
      v37[1] = v101;
      v37[2] = v39;
      *v32 = &unk_1E5855958;
      *(v32 + 1) = v37;
      v40 = v99;
      (*(v7 + 104))(v20, *MEMORY[0x1E6999AD8], v99);
      v41 = v98;
      v42 = *v98;
      sub_1E5842950(&v101, v100);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1E5842990(0, v42[2] + 1, 1, v42);
      }

      v44 = v42[2];
      v43 = v42[3];
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v42 = sub_1E5842990(v43 > 1, v44 + 1, 1, v42);
      }

      v23 = v20;
      goto LABEL_31;
    }

LABEL_17:
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DF8, &qword_1E5855918);
    v60 = v59[12];
    v61 = v59[16];
    v62 = v59[20];
    v63 = &v17[v59[24]];
    *&v100[0] = v24;
    *(&v100[0] + 1) = v25;
    sub_1E5842C18(v24, v25);
    sub_1E5841E68();

    sub_1E5854710();
    sub_1E58546F0();
    v64 = *MEMORY[0x1E6999B50];
    v65 = sub_1E58545D0();
    (*(*(v65 - 8) + 104))(&v17[v61], v64, v65);
    v66 = *MEMORY[0x1E6999B40];
    v67 = sub_1E58545C0();
    (*(*(v67 - 8) + 104))(&v17[v62], v66, v67);
    v68 = swift_allocObject();
    v69 = v104;
    *(v68 + 48) = v103;
    *(v68 + 64) = v69;
    *(v68 + 80) = v105;
    v70 = v102;
    *(v68 + 16) = v101;
    *(v68 + 32) = v70;
    *(v68 + 96) = v24;
    *(v68 + 104) = v25;
    *v63 = &unk_1E5855948;
    *(v63 + 1) = v68;
    v40 = v99;
    (*(v7 + 104))(v17, *MEMORY[0x1E6999AD8], v99);
    v41 = v98;
    v42 = *v98;
    sub_1E5842950(&v101, v100);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_1E5842990(0, v42[2] + 1, 1, v42);
    }

    v44 = v42[2];
    v71 = v42[3];
    v45 = v44 + 1;
    if (v44 >= v71 >> 1)
    {
      v42 = sub_1E5842990(v71 > 1, v44 + 1, 1, v42);
    }

    v23 = v17;
    goto LABEL_31;
  }

  if (v25 == 2)
  {
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DF8, &qword_1E5855918);
    v86 = v85[12];
    v87 = v85[16];
    v88 = v85[20];
    v89 = &v14[v85[24]];
    v100[0] = xmmword_1E5855420;
    sub_1E5841E68();
    sub_1E5854710();
    sub_1E58546F0();
    v90 = *MEMORY[0x1E6999B50];
    v91 = sub_1E58545D0();
    (*(*(v91 - 8) + 104))(&v14[v87], v90, v91);
    v92 = *MEMORY[0x1E6999B40];
    v93 = sub_1E58545C0();
    (*(*(v93 - 8) + 104))(&v14[v88], v92, v93);
    v94 = swift_allocObject();
    v95 = v104;
    v94[3] = v103;
    v94[4] = v95;
    v94[5] = v105;
    v96 = v102;
    v94[1] = v101;
    v94[2] = v96;
    *v89 = &unk_1E5855938;
    *(v89 + 1) = v94;
    v40 = v99;
    (*(v7 + 104))(v14, *MEMORY[0x1E6999AD8], v99);
    v41 = v98;
    v42 = *v98;
    sub_1E5842950(&v101, v100);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_1E5842990(0, v42[2] + 1, 1, v42);
    }

    v44 = v42[2];
    v97 = v42[3];
    v45 = v44 + 1;
    if (v44 >= v97 >> 1)
    {
      v42 = sub_1E5842990(v97 > 1, v44 + 1, 1, v42);
    }

    v23 = v14;
    goto LABEL_31;
  }

  if (v25 != 3)
  {
    goto LABEL_17;
  }

  if (*a1)
  {
    return result;
  }

  *a1 = 1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DF8, &qword_1E5855918);
  v47 = v46[12];
  v48 = v46[16];
  v49 = v46[20];
  v50 = &v11[v46[24]];
  v100[0] = xmmword_1E5855430;
  sub_1E5841E68();
  sub_1E5854710();
  sub_1E58546F0();
  v51 = *MEMORY[0x1E6999B50];
  v52 = sub_1E58545D0();
  (*(*(v52 - 8) + 104))(&v11[v48], v51, v52);
  v53 = *MEMORY[0x1E6999B40];
  v54 = sub_1E58545C0();
  (*(*(v54 - 8) + 104))(&v11[v49], v53, v54);
  v55 = swift_allocObject();
  v56 = v104;
  v55[3] = v103;
  v55[4] = v56;
  v55[5] = v105;
  v57 = v102;
  v55[1] = v101;
  v55[2] = v57;
  *v50 = &unk_1E5855928;
  *(v50 + 1) = v55;
  (*(v7 + 104))(v11, *MEMORY[0x1E6999AD8], v99);
  v41 = v98;
  v42 = *v98;
  sub_1E5842950(&v101, v100);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v42 = sub_1E5842990(0, v42[2] + 1, 1, v42);
  }

  v44 = v42[2];
  v58 = v42[3];
  v45 = v44 + 1;
  if (v44 >= v58 >> 1)
  {
    v42 = sub_1E5842990(v58 > 1, v44 + 1, 1, v42);
  }

  v23 = v11;
  v40 = v99;
LABEL_31:
  v42[2] = v45;
  result = (*(v7 + 32))(v42 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v44, v23, v40);
  *v41 = v42;
  return result;
}

unint64_t sub_1E5841E68()
{
  result = qword_1EE2F85D8[0];
  if (!qword_1EE2F85D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2F85D8);
  }

  return result;
}

uint64_t sub_1E5841EBC(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E58546E0();
  v2[3] = sub_1E58546D0();
  v4 = *(a2 + 40);
  v8 = (*(a2 + 32) + **(a2 + 32));
  v5 = *(*(a2 + 32) + 4);
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1E5841FC4;

  return v8();
}

uint64_t sub_1E5841FC4()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_1E58546C0();
  if (v2)
  {
    v8 = sub_1E58432E0;
  }

  else
  {
    v8 = sub_1E58432E4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E5842120(uint64_t a1, int **a2)
{
  v2[2] = sub_1E58546E0();
  v2[3] = sub_1E58546D0();
  v4 = a2[1];
  v8 = (*a2 + **a2);
  v5 = (*a2)[1];
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1E5842228;

  return v8();
}

uint64_t sub_1E5842228()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_1E58546C0();
  if (v2)
  {
    v8 = sub_1E58423E8;
  }

  else
  {
    v8 = sub_1E5842384;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E5842384()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E58423E8()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_1E584244C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1E58546E0();
  v4[3] = sub_1E58546D0();
  v8 = *(a2 + 24);
  v12 = (*(a2 + 16) + **(a2 + 16));
  v9 = *(*(a2 + 16) + 4);
  v10 = swift_task_alloc();
  v4[4] = v10;
  *v10 = v4;
  v10[1] = sub_1E5841FC4;

  return v12(a3, a4);
}

uint64_t sub_1E584256C(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E58546E0();
  v2[3] = sub_1E58546D0();
  v4 = *(a2 + 56);
  v8 = (*(a2 + 48) + **(a2 + 48));
  v5 = *(*(a2 + 48) + 4);
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1E5841FC4;

  return v8();
}

uint64_t sub_1E5842674(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E58546E0();
  v2[3] = sub_1E58546D0();
  v4 = *(a2 + 72);
  v8 = (*(a2 + 64) + **(a2 + 64));
  v5 = *(*(a2 + 64) + 4);
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1E584277C;

  return v8();
}

uint64_t sub_1E584277C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_1E58546C0();

  return MEMORY[0x1EEE6DFA0](sub_1E58432E4, v5, v4);
}

uint64_t sub_1E58428B8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58432DC;

  return sub_1E5842674(a1, v1 + 16);
}

size_t sub_1E5842990(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E00, &unk_1E5855AF0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DF0, &qword_1E5855910) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5DF0, &qword_1E5855910) - 8);
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

uint64_t sub_1E5842B80(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58432DC;

  return sub_1E584256C(a1, v1 + 16);
}

uint64_t sub_1E5842C18(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_1E5842C2C(uint64_t a1)
{
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E58432DC;

  return sub_1E584244C(a1, v1 + 16, v4, v5);
}

uint64_t sub_1E5842CD8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5842D70;

  return sub_1E5842120(a1, (v1 + 16));
}

uint64_t sub_1E5842D70()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroyTm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1E5842EBC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58432DC;

  return sub_1E5841EBC(a1, v1 + 16);
}

unint64_t sub_1E5842F58()
{
  result = qword_1EE2F86D0;
  if (!qword_1EE2F86D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86D0);
  }

  return result;
}

unint64_t sub_1E5842FB0()
{
  result = qword_1EE2F86D8;
  if (!qword_1EE2F86D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86D8);
  }

  return result;
}

unint64_t sub_1E5843008()
{
  result = qword_1EE2F8A90;
  if (!qword_1EE2F8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8A90);
  }

  return result;
}

unint64_t sub_1E5843060()
{
  result = qword_1EE2F87D8[0];
  if (!qword_1EE2F87D8[0])
  {
    type metadata accessor for SampleContentState();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2F87D8);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1E58430D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1E584311C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20FitnessSampleContent0bC7FeatureV14TaskIdentifier33_EEDECBAFDAB7E1FD33325F9685F0140CLLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E58431A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E58431F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_1E5843254(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1E5843288()
{
  result = qword_1EE2F85D0;
  if (!qword_1EE2F85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F85D0);
  }

  return result;
}

uint64_t SampleContentSummaryCardItemContext.hash(into:)()
{
  v1 = *v0;
  if (v0[2])
  {
    MEMORY[0x1E692EEF0](1);
    return MEMORY[0x1E692EEF0](v1 & 1);
  }

  else
  {
    v3 = v0[1];
    MEMORY[0x1E692EEF0](0);

    return sub_1E5854680();
  }
}

uint64_t SampleContentSummaryCardItemContext.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1E5854890();
  if (v3)
  {
    MEMORY[0x1E692EEF0](1);
    MEMORY[0x1E692EEF0](v1 & 1);
  }

  else
  {
    MEMORY[0x1E692EEF0](0);
    sub_1E5854680();
  }

  return sub_1E58548C0();
}

uint64_t sub_1E58433F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1E5854890();
  if (v3)
  {
    MEMORY[0x1E692EEF0](1);
    MEMORY[0x1E692EEF0](v1 & 1);
  }

  else
  {
    MEMORY[0x1E692EEF0](0);
    sub_1E5854680();
  }

  return sub_1E58548C0();
}

uint64_t sub_1E5843478()
{
  v1 = *v0;
  if (v0[2])
  {
    MEMORY[0x1E692EEF0](1);
    return MEMORY[0x1E692EEF0](v1 & 1);
  }

  else
  {
    v3 = v0[1];
    MEMORY[0x1E692EEF0](0);

    return sub_1E5854680();
  }
}

uint64_t sub_1E58434FC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1E5854890();
  if (v3)
  {
    MEMORY[0x1E692EEF0](1);
    MEMORY[0x1E692EEF0](v1 & 1);
  }

  else
  {
    MEMORY[0x1E692EEF0](0);
    sub_1E5854680();
  }

  return sub_1E58548C0();
}

BOOL _s20FitnessSampleContent0bC22SummaryCardItemContextO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      sub_1E5843814(*a1, v3, 1);
      sub_1E5843814(v5, v6, 1);
      return ((v5 ^ v2) & 1) == 0;
    }

    goto LABEL_6;
  }

  if (*(a2 + 16))
  {
    v9 = *(a1 + 8);

LABEL_6:
    sub_1E5843804(v5, v6, v7);
    sub_1E5843814(v2, v3, v4);
    sub_1E5843814(v5, v6, v7);
    return 0;
  }

  v10 = *a1;
  if (v2 == v5 && v3 == v6)
  {
    sub_1E5843804(v10, v3, 0);
    sub_1E5843804(v2, v3, 0);
    sub_1E5843814(v2, v3, 0);
    sub_1E5843814(v2, v3, 0);
    return 1;
  }

  else
  {
    v12 = sub_1E5854840();
    sub_1E5843804(v5, v6, 0);
    sub_1E5843804(v2, v3, 0);
    sub_1E5843814(v2, v3, 0);
    sub_1E5843814(v5, v6, 0);
    return v12 & 1;
  }
}

unint64_t sub_1E58436E8()
{
  result = qword_1EE2F88A0[0];
  if (!qword_1EE2F88A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2F88A0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E584375C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E58437A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5843804(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E5843814(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t SampleContentSummaryCardErrorItem.title.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SampleContentSummaryCardErrorItem.description.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t SampleContentSummaryCardErrorItem.buttonTitle.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t SampleContentSummaryCardErrorItem.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  MEMORY[0x1E692EEF0](*v0);
  sub_1E5854680();
  sub_1E5854680();

  return sub_1E5854680();
}

uint64_t SampleContentSummaryCardErrorItem.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_1E5854890();
  MEMORY[0x1E692EEF0](v1);
  sub_1E5854680();
  sub_1E5854680();
  sub_1E5854680();
  return sub_1E58548C0();
}

uint64_t sub_1E5843A04()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_1E5854890();
  MEMORY[0x1E692EEF0](v1);
  sub_1E5854680();
  sub_1E5854680();
  sub_1E5854680();
  return sub_1E58548C0();
}

uint64_t sub_1E5843AA0()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  MEMORY[0x1E692EEF0](*v0);
  sub_1E5854680();
  sub_1E5854680();

  return sub_1E5854680();
}

uint64_t sub_1E5843B2C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_1E5854890();
  MEMORY[0x1E692EEF0](v1);
  sub_1E5854680();
  sub_1E5854680();
  sub_1E5854680();
  return sub_1E58548C0();
}

uint64_t _s20FitnessSampleContent0bC20SummaryCardErrorItemV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  if ((a1[1] != a2[1] || a1[2] != a2[2]) && (sub_1E5854840() & 1) == 0)
  {
    return 0;
  }

  if ((v3 != v7 || v5 != v8) && (sub_1E5854840() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v9 && v6 == v10)
  {
    return 1;
  }

  return sub_1E5854840();
}

unint64_t sub_1E5843CD4()
{
  result = qword_1ECFF5E08;
  if (!qword_1ECFF5E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5E08);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E5843D44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1E5843D8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static SampleContentShelfDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1E5853EA0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for SampleContentShelfDescriptor() + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_1E58446AC(v5, v6);
}

uint64_t type metadata accessor for SampleContentShelfDescriptor()
{
  result = qword_1EE2F8A50;
  if (!qword_1EE2F8A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SampleContentShelfDescriptor.init(subtitle:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E5853EB0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for SampleContentShelfDescriptor();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1E5843F10()
{
  if (*v0)
  {
    result = 0x736D657469;
  }

  else
  {
    result = 0x656C746974627573;
  }

  *v0;
  return result;
}

uint64_t sub_1E5843F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
  if (v6 || (sub_1E5854840() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5854840();

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

uint64_t sub_1E5844020(uint64_t a1)
{
  v2 = sub_1E584491C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E584405C(uint64_t a1)
{
  v2 = sub_1E584491C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleContentShelfDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E10, &unk_1E5855CF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E584491C();
  sub_1E58548E0();
  v14 = 0;
  sub_1E5853EB0();
  sub_1E5844A0C(&qword_1EE2F8AB8, MEMORY[0x1E6968848]);
  sub_1E5854820();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for SampleContentShelfDescriptor() + 20));
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59E0, &qword_1E58554B8);
    sub_1E5844970(&qword_1EE2F8468, &qword_1EE2F8880);
    sub_1E5854820();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SampleContentShelfDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = sub_1E5853EB0();
  v27 = *(v30 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E18, &qword_1E5855D00);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for SampleContentShelfDescriptor();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E584491C();
  sub_1E58548D0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v12;
  v17 = v15;
  v18 = v27;
  v33 = 0;
  sub_1E5844A0C(&qword_1ECFF5E20, MEMORY[0x1E6968848]);
  v19 = v30;
  v20 = v28;
  sub_1E58547C0();
  v21 = *(v18 + 32);
  v24 = v17;
  v21(v17, v6, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF59E0, &qword_1E58554B8);
  v32 = 1;
  sub_1E5844970(&qword_1ECFF5E28, &qword_1ECFF5E30);
  sub_1E58547C0();
  (*(v29 + 8))(v11, v20);
  v22 = v24;
  *(v24 + *(v25 + 20)) = v31;
  sub_1E58454A0(v22, v26, type metadata accessor for SampleContentShelfDescriptor);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E58453DC(v22, type metadata accessor for SampleContentShelfDescriptor);
}

uint64_t sub_1E58446AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleContentItem();
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v27 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_19:
    v25 = 0;
    return v25 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1E58454A0(v14, v11, type metadata accessor for SampleContentItem);
      sub_1E58454A0(v15, v8, type metadata accessor for SampleContentItem);
      if ((_s20FitnessSampleContent0bC7ArtworkO2eeoiySbAC_ACtFZ_0(v11, v8) & 1) == 0)
      {
        break;
      }

      v17 = v4[5];
      if ((sub_1E5853EA0() & 1) == 0)
      {
        break;
      }

      v18 = v4[6];
      v19 = *&v11[v18];
      v20 = *&v11[v18 + 8];
      v21 = &v8[v18];
      v22 = v19 == *v21 && v20 == *(v21 + 1);
      if (!v22 && (sub_1E5854840() & 1) == 0)
      {
        break;
      }

      if (v11[v4[7]] != v8[v4[7]])
      {
        break;
      }

      v23 = v4[8];
      if ((sub_1E5853EA0() & 1) == 0)
      {
        break;
      }

      v24 = v4[9];
      v25 = sub_1E5853EA0();
      sub_1E58453DC(v8, type metadata accessor for SampleContentItem);
      sub_1E58453DC(v11, type metadata accessor for SampleContentItem);
      if (v25)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v25 & 1;
    }

    sub_1E58453DC(v8, type metadata accessor for SampleContentItem);
    sub_1E58453DC(v11, type metadata accessor for SampleContentItem);
    goto LABEL_19;
  }

  v25 = 1;
  return v25 & 1;
}

unint64_t sub_1E584491C()
{
  result = qword_1EE2F8A88;
  if (!qword_1EE2F8A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8A88);
  }

  return result;
}

uint64_t sub_1E5844970(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF59E0, &qword_1E58554B8);
    sub_1E5844A0C(a2, type metadata accessor for SampleContentItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5844A0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5844A54(uint64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for SampleContentItem();
  v4 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v63 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E40, &unk_1E5855EB0);
  v6 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v8 = &v52 - v7;
  v64 = type metadata accessor for SampleContentSummaryCardItem();
  v9 = *(*(v64 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v64);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v58 = &v52 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v52 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v52 - v17;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    return 0;
  }

  if (!v20 || a1 == a2)
  {
    return 1;
  }

  v52 = v18;
  v53 = &v52 - v17;
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v57 = *(v16 + 72);
  v24 = v63;
  v54 = v15;
  v55 = v8;
  while (1)
  {
    sub_1E58454A0(v22, v19, type metadata accessor for SampleContentSummaryCardItem);
    sub_1E58454A0(v23, v15, type metadata accessor for SampleContentSummaryCardItem);
    v25 = &v8[*(v65 + 48)];
    sub_1E58454A0(v19, v8, type metadata accessor for SampleContentSummaryCardItem);
    sub_1E58454A0(v15, v25, type metadata accessor for SampleContentSummaryCardItem);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      break;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v27 = v52;
      sub_1E58454A0(v8, v52, type metadata accessor for SampleContentSummaryCardItem);
      v29 = v27[1];
      v28 = v27[2];
      v30 = v27[3];
      v61 = v27[4];
      v62 = v28;
      v31 = v27[5];
      v32 = v27[6];
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        v15 = v54;
        v8 = v55;
        v19 = v53;
        goto LABEL_38;
      }

      v33 = *v27;
      v34 = *v25;
      v35 = *(v25 + 2);
      v59 = *(v25 + 4);
      v60 = v35;
      v36 = *(v25 + 6);
      if (v33 != v34 || ((v37 = *(v25 + 1), v38 = *(v25 + 3), v39 = *(v25 + 5), v29 != v37) || v62 != v60) && (sub_1E5854840() & 1) == 0 || (v30 != v38 || v61 != v59) && (sub_1E5854840() & 1) == 0)
      {

        v15 = v54;
        v8 = v55;
        v19 = v53;
        goto LABEL_35;
      }

      if (v31 == v39 && v32 == v36)
      {

        v15 = v54;
        v8 = v55;
        v19 = v53;
        v24 = v63;
      }

      else
      {
        v50 = sub_1E5854840();

        v15 = v54;
        v8 = v55;
        v19 = v53;
        v24 = v63;
        if ((v50 & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_38;
    }

LABEL_6:
    sub_1E58453DC(v8, type metadata accessor for SampleContentSummaryCardItem);
    sub_1E58453DC(v15, type metadata accessor for SampleContentSummaryCardItem);
    sub_1E58453DC(v19, type metadata accessor for SampleContentSummaryCardItem);
    v23 += v57;
    v22 += v57;
    if (!--v20)
    {
      return 1;
    }
  }

  v40 = v58;
  sub_1E58454A0(v8, v58, type metadata accessor for SampleContentSummaryCardItem);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_1E584543C(v25, v24);
    v41 = static SampleContentArtwork.== infix(_:_:)(v40, v24);
    v42 = v56;
    if ((v41 & 1) == 0 || (v43 = *(v56 + 20), (sub_1E5853EA0() & 1) == 0) || ((v44 = v42[6], v45 = *(v40 + v44), v46 = *(v40 + v44 + 8), v47 = (v24 + v44), v45 != *v47) || v46 != v47[1]) && (sub_1E5854840() & 1) == 0 || *(v40 + v42[7]) != *(v24 + v42[7]) || (v48 = v42[8], (sub_1E5853EA0() & 1) == 0) || (v49 = v42[9], (sub_1E5853EA0() & 1) == 0))
    {
      sub_1E58453DC(v24, type metadata accessor for SampleContentItem);
      sub_1E58453DC(v40, type metadata accessor for SampleContentItem);
LABEL_35:
      sub_1E58453DC(v8, type metadata accessor for SampleContentSummaryCardItem);
      goto LABEL_39;
    }

    sub_1E58453DC(v24, type metadata accessor for SampleContentItem);
    sub_1E58453DC(v40, type metadata accessor for SampleContentItem);
    goto LABEL_6;
  }

  sub_1E58453DC(v40, type metadata accessor for SampleContentItem);
LABEL_38:
  sub_1E5845374(v8);
LABEL_39:
  sub_1E58453DC(v15, type metadata accessor for SampleContentSummaryCardItem);
  sub_1E58453DC(v19, type metadata accessor for SampleContentSummaryCardItem);
  return 0;
}

uint64_t sub_1E58450F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1E5853EA0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1E58446AC(v7, v8);
}

void sub_1E5845180()
{
  sub_1E5853EB0();
  if (v0 <= 0x3F)
  {
    sub_1E5845204();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5845204()
{
  if (!qword_1EE2F8470)
  {
    type metadata accessor for SampleContentItem();
    v0 = sub_1E58546B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2F8470);
    }
  }
}

unint64_t sub_1E5845270()
{
  result = qword_1ECFF5E38;
  if (!qword_1ECFF5E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5E38);
  }

  return result;
}

unint64_t sub_1E58452C8()
{
  result = qword_1EE2F8A78;
  if (!qword_1EE2F8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8A78);
  }

  return result;
}

unint64_t sub_1E5845320()
{
  result = qword_1EE2F8A80;
  if (!qword_1EE2F8A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8A80);
  }

  return result;
}

uint64_t sub_1E5845374(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E40, &unk_1E5855EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E58453DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E584543C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleContentItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58454A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E5845508()
{
  v1 = *v0;
  v2 = 0x707061546D657469;
  v3 = 0xD000000000000014;
  if (v1 != 3)
  {
    v3 = 0x4164694477656976;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000017;
  if (*v0)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E58455C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5846FB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E58455F4(uint64_t a1)
{
  v2 = sub_1E5845EF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5845630(uint64_t a1)
{
  v2 = sub_1E5845EF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E584566C(uint64_t a1)
{
  v2 = sub_1E5846094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58456A8(uint64_t a1)
{
  v2 = sub_1E5846094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58456E4(uint64_t a1)
{
  v2 = sub_1E5846040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5845720(uint64_t a1)
{
  v2 = sub_1E5846040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5845778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5854840();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5845808(uint64_t a1)
{
  v2 = sub_1E5845FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5845844(uint64_t a1)
{
  v2 = sub_1E5845FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5845880(uint64_t a1)
{
  v2 = sub_1E5845F98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58458BC(uint64_t a1)
{
  v2 = sub_1E5845F98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E58458F8(uint64_t a1)
{
  v2 = sub_1E5845F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5845934(uint64_t a1)
{
  v2 = sub_1E5845F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleContentAction.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E48, &qword_1E5855EC0);
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v41 = v31 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E50, &qword_1E5855EC8);
  v38 = *(v40 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v36 = v31 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E58, &qword_1E5855ED0);
  v37 = *(v39 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v35 = v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E60, &qword_1E5855ED8);
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E68, &qword_1E5855EE0);
  v32 = *(v15 - 8);
  v16 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E70, &qword_1E5855EE8);
  v44 = *(v19 - 8);
  v20 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v31 - v21;
  v23 = *v2;
  v24 = v2[1];
  v31[1] = v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5845EF0();
  sub_1E58548E0();
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v48 = 3;
      sub_1E5845F98();
      v30 = v36;
      sub_1E58547E0();
      (*(v38 + 8))(v30, v40);
      return (*(v44 + 8))(v22, v19);
    }

    if (v24 == 3)
    {
      v49 = 4;
      sub_1E5845F44();
      v26 = v41;
      sub_1E58547E0();
      (*(v42 + 8))(v26, v43);
      return (*(v44 + 8))(v22, v19);
    }

LABEL_8:
    v47 = 2;
    sub_1E5845FEC();
    v27 = v35;
    sub_1E58547E0();
    v28 = v39;
    sub_1E5854800();
    (*(v37 + 8))(v27, v28);
    return (*(v44 + 8))(v22, v19);
  }

  if (!v24)
  {
    v45 = 0;
    sub_1E5846094();
    sub_1E58547E0();
    (*(v32 + 8))(v18, v15);
    return (*(v44 + 8))(v22, v19);
  }

  if (v24 != 1)
  {
    goto LABEL_8;
  }

  v46 = 1;
  sub_1E5846040();
  sub_1E58547E0();
  (*(v33 + 8))(v14, v34);
  return (*(v44 + 8))(v22, v19);
}

unint64_t sub_1E5845EF0()
{
  result = qword_1EE2F8728[0];
  if (!qword_1EE2F8728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2F8728);
  }

  return result;
}

unint64_t sub_1E5845F44()
{
  result = qword_1EE2F8700;
  if (!qword_1EE2F8700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8700);
  }

  return result;
}

unint64_t sub_1E5845F98()
{
  result = qword_1ECFF5E78;
  if (!qword_1ECFF5E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5E78);
  }

  return result;
}

unint64_t sub_1E5845FEC()
{
  result = qword_1ECFF5E80;
  if (!qword_1ECFF5E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5E80);
  }

  return result;
}

unint64_t sub_1E5846040()
{
  result = qword_1ECFF5E88;
  if (!qword_1ECFF5E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5E88);
  }

  return result;
}

unint64_t sub_1E5846094()
{
  result = qword_1ECFF5E90;
  if (!qword_1ECFF5E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5E90);
  }

  return result;
}

uint64_t SampleContentAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E98, &qword_1E5855EF0);
  v51 = *(v55 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v45 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5EA0, &qword_1E5855EF8);
  v54 = *(v52 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v58 = &v45 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5EA8, &qword_1E5855F00);
  v53 = *(v48 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v57 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5EB0, &qword_1E5855F08);
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5EB8, &qword_1E5855F10);
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5EC0, &qword_1E5855F18);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v45 - v20;
  v22 = a1[3];
  v23 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1E5845EF0();
  v24 = v60;
  sub_1E58548D0();
  if (!v24)
  {
    v25 = v16;
    v46 = v13;
    v27 = v57;
    v26 = v58;
    v60 = v18;
    v28 = v59;
    v29 = sub_1E58547D0();
    v30 = (2 * *(v29 + 16)) | 1;
    v62 = v29;
    v63 = v29 + 32;
    v64 = 0;
    v65 = v30;
    v31 = sub_1E5835ED0();
    if (v31 == 5 || v64 != v65 >> 1)
    {
      v35 = sub_1E5854750();
      swift_allocError();
      v37 = v36;
      v38 = v21;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5948, &qword_1E5855F20) + 48);
      *v37 = &type metadata for SampleContentAction;
      sub_1E5854780();
      sub_1E5854740();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
      swift_willThrow();
      (*(v60 + 8))(v38, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v31 <= 1u)
      {
        if (v31)
        {
          v66 = 1;
          sub_1E5846040();
          sub_1E5854770();
          (*(v49 + 8))(v12, v50);
          (*(v60 + 8))(v21, v17);
          swift_unknownObjectRelease();
          v33 = 0;
          v34 = 1;
        }

        else
        {
          v66 = 0;
          sub_1E5846094();
          sub_1E5854770();
          (*(v47 + 8))(v25, v46);
          (*(v60 + 8))(v21, v17);
          swift_unknownObjectRelease();
          v33 = 0;
          v34 = 0;
        }
      }

      else if (v31 == 2)
      {
        v66 = 2;
        sub_1E5845FEC();
        sub_1E5854770();
        v41 = v60;
        v42 = v48;
        v33 = sub_1E58547A0();
        v34 = v44;
        (*(v53 + 8))(v27, v42);
        (*(v41 + 8))(v21, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        v32 = v60;
        if (v31 == 3)
        {
          v66 = 3;
          sub_1E5845F98();
          sub_1E5854770();
          (*(v54 + 8))(v26, v52);
          (*(v32 + 8))(v21, v17);
          swift_unknownObjectRelease();
          v33 = 0;
          v34 = 2;
        }

        else
        {
          v66 = 4;
          sub_1E5845F44();
          v43 = v56;
          sub_1E5854770();
          (*(v51 + 8))(v43, v55);
          (*(v32 + 8))(v21, v17);
          swift_unknownObjectRelease();
          v33 = 0;
          v34 = 3;
        }
      }

      *v28 = v33;
      v28[1] = v34;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t get_enum_tag_for_layout_string_20FitnessSampleContent0bC6ActionO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for SampleContentAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SampleContentAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5846AEC()
{
  result = qword_1ECFF5EC8;
  if (!qword_1ECFF5EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5EC8);
  }

  return result;
}

unint64_t sub_1E5846B44()
{
  result = qword_1ECFF5ED0;
  if (!qword_1ECFF5ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5ED0);
  }

  return result;
}

unint64_t sub_1E5846B9C()
{
  result = qword_1ECFF5ED8;
  if (!qword_1ECFF5ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5ED8);
  }

  return result;
}

unint64_t sub_1E5846BF4()
{
  result = qword_1ECFF5EE0;
  if (!qword_1ECFF5EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5EE0);
  }

  return result;
}

unint64_t sub_1E5846C4C()
{
  result = qword_1EE2F86E0;
  if (!qword_1EE2F86E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86E0);
  }

  return result;
}

unint64_t sub_1E5846CA4()
{
  result = qword_1EE2F86E8;
  if (!qword_1EE2F86E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86E8);
  }

  return result;
}

unint64_t sub_1E5846CFC()
{
  result = qword_1EE2F8708;
  if (!qword_1EE2F8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8708);
  }

  return result;
}

unint64_t sub_1E5846D54()
{
  result = qword_1EE2F8710;
  if (!qword_1EE2F8710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8710);
  }

  return result;
}

unint64_t sub_1E5846DAC()
{
  result = qword_1ECFF5EE8;
  if (!qword_1ECFF5EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5EE8);
  }

  return result;
}

unint64_t sub_1E5846E04()
{
  result = qword_1ECFF5EF0;
  if (!qword_1ECFF5EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5EF0);
  }

  return result;
}

unint64_t sub_1E5846E5C()
{
  result = qword_1EE2F86F0;
  if (!qword_1EE2F86F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86F0);
  }

  return result;
}

unint64_t sub_1E5846EB4()
{
  result = qword_1EE2F86F8;
  if (!qword_1EE2F86F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86F8);
  }

  return result;
}

unint64_t sub_1E5846F0C()
{
  result = qword_1EE2F8718;
  if (!qword_1EE2F8718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8718);
  }

  return result;
}

unint64_t sub_1E5846F64()
{
  result = qword_1EE2F8720;
  if (!qword_1EE2F8720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8720);
  }

  return result;
}

uint64_t sub_1E5846FB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001E5857AF0 == a2;
  if (v3 || (sub_1E5854840() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5857B10 == a2 || (sub_1E5854840() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x707061546D657469 && a2 == 0xEA00000000006465 || (sub_1E5854840() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5857B30 == a2 || (sub_1E5854840() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5854840();

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

void sub_1E5847184()
{
  *&xmmword_1ECFF5EF8 = &unk_1E5856538;
  *(&xmmword_1ECFF5EF8 + 1) = 0;
  qword_1ECFF5F08 = &unk_1E5856540;
  unk_1ECFF5F10 = 0;
  *&xmmword_1ECFF5F18 = &unk_1E5856548;
  *(&xmmword_1ECFF5F18 + 1) = 0;
  qword_1ECFF5F28 = &unk_1E5856550;
  unk_1ECFF5F30 = 0;
  *&xmmword_1ECFF5F38 = &unk_1E5856558;
  *(&xmmword_1ECFF5F38 + 1) = 0;
}

uint64_t static SampleContentEnvironment.preview.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1ECFF58C0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&qword_1ECFF5F28;
  v8[2] = xmmword_1ECFF5F18;
  v8[3] = *&qword_1ECFF5F28;
  v2 = xmmword_1ECFF5F38;
  v8[4] = xmmword_1ECFF5F38;
  v4 = xmmword_1ECFF5EF8;
  v3 = *&qword_1ECFF5F08;
  v8[0] = xmmword_1ECFF5EF8;
  v8[1] = *&qword_1ECFF5F08;
  a1[2] = xmmword_1ECFF5F18;
  a1[3] = v1;
  a1[4] = v2;
  *a1 = v4;
  a1[1] = v3;
  return sub_1E584729C(v8, &v7);
}

uint64_t sub_1E58472FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5854210();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E5854220();
}

uint64_t sub_1E58473F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E5854210();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E5854220();
}

uint64_t sub_1E58474EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5BA0, "0*");
  v5 = sub_1E5849880();

  return MEMORY[0x1EEDDD638](v1, v2, v3, v4, v5);
}

uint64_t sub_1E5847558(uint64_t a1)
{
  v1 = *(a1 + 36);
  v2 = *(a1 + 16);
  swift_getFunctionTypeMetadata1();
  sub_1E5853FA0();
  sub_1E5853F90();
  return v4;
}

uint64_t SampleContentSummaryCardView.init(store:summaryWorkoutsCardViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = sub_1E583EBB0;
  *(a3 + 8) = v6;
  *(a3 + 16) = 0;
  v7 = *(type metadata accessor for SampleContentSummaryCardView() + 36);
  swift_getFunctionTypeMetadata1();
  return sub_1E5853F80();
}

uint64_t SampleContentSummaryCardView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v37 = *(a1 - 8);
  v38 = *(v37 + 64);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v3 + 16);
  sub_1E5854230();
  v31 = v5;
  sub_1E5854230();
  sub_1E5854230();
  v6 = *(a1 + 24);
  v49 = v6;
  v50 = v6;
  WitnessTable = swift_getWitnessTable();
  v47 = WitnessTable;
  v48 = v6;
  v8 = swift_getWitnessTable();
  v45 = WitnessTable;
  v46 = v8;
  swift_getWitnessTable();
  v9 = sub_1E5854520();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  v13 = sub_1E5854090();
  v35 = *(v13 - 8);
  v14 = *(v35 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v32 = &v30 - v18;
  v40 = v5;
  v41 = v6;
  v19 = v33;
  v42 = v33;
  sub_1E5854570();
  sub_1E5854510();
  v21 = v36;
  v20 = v37;
  (*(v37 + 16))(v36, v19, a1);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v31;
  *(v23 + 24) = v6;
  (*(v20 + 32))(v23 + v22, v21, a1);
  v24 = swift_getWitnessTable();
  v25 = v17;
  sub_1E5854410();

  (*(v34 + 8))(v12, v9);
  v43 = v24;
  v44 = MEMORY[0x1E69805D0];
  v26 = swift_getWitnessTable();
  v27 = v32;
  sub_1E584108C(v17, v13, v26);
  v28 = *(v35 + 8);
  v28(v25, v13);
  sub_1E584108C(v27, v13, v26);
  return (v28)(v27, v13);
}

uint64_t sub_1E5847AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v171 = a4;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
  v7 = *(*(v154 - 8) + 64);
  MEMORY[0x1EEE9AC00](v154);
  v155 = &v149 - v8;
  v150 = type metadata accessor for SampleContentShelfDescriptor();
  v9 = *(*(v150 - 8) + 64);
  MEMORY[0x1EEE9AC00](v150);
  v153 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5854230();
  v12 = sub_1E5854230();
  v158 = *(v12 - 8);
  v13 = *(v158 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v157 = (&v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v156 = &v149 - v17;
  v161 = *(v11 - 8);
  v18 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v160 = (&v149 - v19);
  v20 = sub_1E5853EE0();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = sub_1E5853F70();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = sub_1E5854630();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v174 = type metadata accessor for SampleContentSummaryCardItem();
  v162 = *(v174 - 1);
  v26 = *(v162 + 64);
  v27 = MEMORY[0x1EEE9AC00](v174);
  v29 = &v149 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = (&v149 - v31);
  v164 = *(a2 - 8);
  v33 = *(v164 + 64);
  v34 = MEMORY[0x1EEE9AC00](v30);
  v151 = &v149 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v152 = &v149 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v159 = (&v149 - v39);
  MEMORY[0x1EEE9AC00](v38);
  v172 = &v149 - v40;
  v168 = v11;
  v169 = v12;
  v41 = sub_1E5854230();
  v166 = *(v41 - 8);
  v42 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v165 = &v149 - v43;
  v163 = a2;
  v170 = a3;
  v44 = type metadata accessor for SampleContentSummaryCardView();
  v173 = a1;
  sub_1E58474EC();
  swift_getKeyPath();
  sub_1E58545E0();

  v167 = v41;
  if (v183 == 1)
  {
    v157 = sub_1E5847558(v44);
    v158 = v45;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D00, &unk_1E58566D0);
    v47 = v32 + *(v46 + 48);
    v48 = v32 + *(v46 + 64);
    *v32 = 0xD00000000000001DLL;
    v32[1] = 0x80000001E5857A70;
    if (qword_1EE2F8460 != -1)
    {
      swift_once();
    }

    v49 = qword_1EE2F8AC0;
    sub_1E584057C();
    v50 = v49;
    sub_1E5853FE0();
    sub_1E5853FB0();
    type metadata accessor for SampleContentArtwork();
    swift_storeEnumTagMultiPayload();
    sub_1E5854620();
    v51 = v50;
    sub_1E5853F60();
    v52 = v51;
    sub_1E5854650();
    sub_1E5853ED0();
    v53 = type metadata accessor for SampleContentItem();
    v54 = v32 + v53[5];
    sub_1E5853EC0();
    sub_1E5854620();
    sub_1E58474EC();
    swift_getKeyPath();
    sub_1E58545E0();

    sub_1E5854650();
    sub_1E5853ED0();
    v55 = v32 + v53[8];
    sub_1E5853EC0();
    sub_1E5854620();
    sub_1E58474EC();
    swift_getKeyPath();
    sub_1E58545E0();

    sub_1E5854650();
    sub_1E5853ED0();
    v56 = v32 + v53[9];
    sub_1E5853EC0();
    v57 = (v32 + v53[6]);
    *v57 = 0x77656976657270;
    v57[1] = 0xE700000000000000;
    *(v32 + v53[7]) = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5F48, &unk_1E58566A0);
    v58 = *(v162 + 72);
    v59 = (*(v162 + 80) + 32) & ~*(v162 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1E58553F0;
    sub_1E584994C(v32, v60 + v59, type metadata accessor for SampleContentSummaryCardItem);
    v183 = v60;
    LOBYTE(v184) = 0;
    v61 = v159;
    v157(&v183);

    v62 = v172;
    v63 = v163;
    v64 = v170;
    sub_1E584108C(v61, v163, v170);
    v174 = *(v164 + 8);
    v174(v61, v63);
    sub_1E584108C(v62, v63, v64);
    v65 = v160;
    sub_1E58472FC(v61, v63);
    v177 = v64;
    v178 = v64;
    v66 = v168;
    WitnessTable = swift_getWitnessTable();
    v176 = v64;
    goto LABEL_10;
  }

  sub_1E58474EC();
  swift_getKeyPath();
  sub_1E58545E0();

  if (v183 != 1)
  {
    sub_1E58474EC();
    swift_getKeyPath();
    v87 = v155;
    sub_1E58545E0();

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      v92 = sub_1E5847558(v44);
      swift_storeEnumTagMultiPayload();
      sub_1E58474EC();
      swift_getKeyPath();
      sub_1E58545E0();

      v93 = v183;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5F48, &unk_1E58566A0);
      v94 = *(v162 + 72);
      v95 = (*(v162 + 80) + 32) & ~*(v162 + 80);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_1E58553F0;
      sub_1E584994C(v32, v96 + v95, type metadata accessor for SampleContentSummaryCardItem);
      v183 = v96;
      LOBYTE(v184) = (v93 & 1) == 0;
      v97 = v159;
      v92(&v183);

      v98 = v172;
      v99 = v163;
      v64 = v170;
      sub_1E584108C(v97, v163, v170);
      v100 = *(v164 + 8);
      v100(v97, v99);
      sub_1E584108C(v98, v99, v64);
      v101 = v160;
      sub_1E58472FC(v97, v99);
      v185 = v64;
      v186 = v64;
      v102 = v168;
      swift_getWitnessTable();
      v103 = v156;
      sub_1E58472FC(v101, v102);
      (*(v161 + 8))(v101, v102);
      v100(v97, v99);
      v104 = v98;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          sub_1E58498E4(v87);
          v160 = sub_1E5847558(v44);
          v161 = v116;
          sub_1E5854620();
          if (qword_1EE2F8460 != -1)
          {
            swift_once();
          }

          v117 = qword_1EE2F8AC0;
          sub_1E58474EC();
          swift_getKeyPath();
          sub_1E58545E0();

          v118 = v117;
          v155 = sub_1E5854650();
          v154 = v119;
          sub_1E5854620();
          sub_1E58474EC();
          swift_getKeyPath();
          sub_1E58545E0();

          v120 = sub_1E5854650();
          v122 = v121;
          sub_1E5854620();
          sub_1E58474EC();
          swift_getKeyPath();
          sub_1E58545E0();

          v123 = sub_1E5854650();
          *v32 = 1;
          v124 = v154;
          v32[1] = v155;
          v32[2] = v124;
          v32[3] = v120;
          v32[4] = v122;
          v32[5] = v123;
          v32[6] = v125;
          swift_storeEnumTagMultiPayload();
          sub_1E58474EC();
          swift_getKeyPath();
          sub_1E58545E0();

          v126 = v183;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5F48, &unk_1E58566A0);
          v127 = *(v162 + 72);
          v128 = (*(v162 + 80) + 32) & ~*(v162 + 80);
          v129 = swift_allocObject();
          *(v129 + 16) = xmmword_1E58553F0;
          sub_1E584994C(v32, v129 + v128, type metadata accessor for SampleContentSummaryCardItem);
          v183 = v129;
          LOBYTE(v184) = (v126 & 1) == 0;
          v130 = v159;
          v160(&v183);

          v131 = v172;
          v132 = v163;
          v64 = v170;
          sub_1E584108C(v130, v163, v170);
          v100 = *(v164 + 8);
          v100(v130, v132);
          sub_1E584108C(v131, v132, v64);
          v199 = v64;
          v200 = v64;
          v102 = v168;
          swift_getWitnessTable();
          v103 = v156;
          sub_1E58473F4(v130, v102, v132);
          v100(v130, v132);
          v104 = v131;
          v133 = v132;
          goto LABEL_29;
        }

        v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CF0, &qword_1E58557A8) + 48);
        v90 = v153;
        sub_1E584994C(v87, v153, type metadata accessor for SampleContentShelfDescriptor);
        v91 = sub_1E5853F00();
        (*(*(v91 - 8) + 8))(v87 + v89, v91);
      }

      else
      {
        v90 = v153;
        sub_1E584994C(v87, v153, type metadata accessor for SampleContentShelfDescriptor);
      }

      v105 = sub_1E5847558(v44);
      v106 = v105;
      v107 = *(v90 + *(v150 + 20));
      v108 = *(v107 + 16);
      if (v108)
      {
        v159 = v105;
        v183 = MEMORY[0x1E69E7CC0];
        sub_1E58499B4(0, v108, 0);
        v109 = v183;
        v110 = *(type metadata accessor for SampleContentItem() - 8);
        v111 = v107 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
        v112 = *(v110 + 72);
        v113 = v162;
        do
        {
          sub_1E58407F8(v111, v29);
          swift_storeEnumTagMultiPayload();
          v183 = v109;
          v115 = *(v109 + 16);
          v114 = *(v109 + 24);
          if (v115 >= v114 >> 1)
          {
            sub_1E58499B4(v114 > 1, v115 + 1, 1);
            v113 = v162;
            v109 = v183;
          }

          *(v109 + 16) = v115 + 1;
          sub_1E584994C(v29, v109 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v115, type metadata accessor for SampleContentSummaryCardItem);
          v111 += v112;
          --v108;
        }

        while (v108);
        sub_1E58499D4(v153);
        v106 = v159;
      }

      else
      {
        sub_1E58499D4(v90);
        v109 = MEMORY[0x1E69E7CC0];
      }

      sub_1E58474EC();
      swift_getKeyPath();
      sub_1E58545E0();

      v134 = (v183 & 1) == 0;
      v183 = v109;
      LOBYTE(v184) = v134;
      v135 = v151;
      v106(&v183);

      v136 = v152;
      v99 = v163;
      v64 = v170;
      sub_1E584108C(v135, v163, v170);
      v100 = *(v164 + 8);
      v100(v135, v99);
      v137 = v172;
      sub_1E584108C(v136, v99, v64);
      v138 = v160;
      sub_1E58473F4(v137, v99, v99);
      v187 = v64;
      v188 = v64;
      v102 = v168;
      swift_getWitnessTable();
      v103 = v156;
      sub_1E58472FC(v138, v102);
      (*(v161 + 8))(v138, v102);
      v100(v137, v99);
      v104 = v136;
    }

    v133 = v99;
LABEL_29:
    v100(v104, v133);
    v139 = v169;
    v85 = v165;
    v197 = v64;
    v198 = v64;
    v195 = swift_getWitnessTable();
    v196 = v64;
    v140 = swift_getWitnessTable();
    v141 = v157;
    sub_1E584108C(v103, v139, v140);
    sub_1E58473F4(v141, v102, v139);
    v142 = *(v158 + 8);
    v142(v141, v139);
    v142(v103, v139);
    goto LABEL_30;
  }

  v183 = 0;
  v184 = 0xE000000000000000;
  sub_1E5854730();

  v183 = 0xD000000000000017;
  v184 = 0x80000001E5857BC0;
  sub_1E58474EC();
  swift_getKeyPath();
  sub_1E58545E0();

  v67 = sub_1E5854660();
  v69 = v68;

  MEMORY[0x1E692ECE0](v67, v69);

  MEMORY[0x1E692ECE0](0xD000000000000017, 0x80000001E5857BE0);
  v156 = v183;
  v155 = v184;
  v157 = sub_1E5847558(v44);
  v158 = v70;
  sub_1E5854620();
  if (qword_1EE2F8460 != -1)
  {
    swift_once();
  }

  v71 = qword_1EE2F8AC0;
  sub_1E58474EC();
  swift_getKeyPath();
  sub_1E58545E0();

  v72 = v71;
  v154 = sub_1E5854650();
  v153 = v73;
  sub_1E5854640();
  sub_1E58474EC();
  swift_getKeyPath();
  sub_1E58545E0();

  v74 = sub_1E5854650();
  v76 = v75;
  sub_1E5854620();
  sub_1E58474EC();
  swift_getKeyPath();
  sub_1E58545E0();

  v77 = sub_1E5854650();
  *v32 = 0;
  v78 = v153;
  v32[1] = v154;
  v32[2] = v78;
  v32[3] = v74;
  v32[4] = v76;
  v32[5] = v77;
  v32[6] = v79;
  swift_storeEnumTagMultiPayload();
  sub_1E58474EC();
  swift_getKeyPath();
  sub_1E58545E0();

  v80 = v183;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5F48, &unk_1E58566A0);
  v81 = *(v162 + 72);
  v82 = (*(v162 + 80) + 32) & ~*(v162 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1E58553F0;
  sub_1E584994C(v32, v83 + v82, type metadata accessor for SampleContentSummaryCardItem);
  v183 = v83;
  LOBYTE(v184) = (v80 & 1) == 0;
  v61 = v159;
  v157(&v183);

  v84 = v172;
  v63 = v163;
  v64 = v170;
  sub_1E584108C(v61, v163, v170);
  v174 = *(v164 + 8);
  v174(v61, v63);
  sub_1E584108C(v84, v63, v64);
  v65 = v160;
  sub_1E58473F4(v61, v63, v63);
  v181 = v64;
  v182 = v64;
  v66 = v168;
  v179 = swift_getWitnessTable();
  v180 = v64;
LABEL_10:
  swift_getWitnessTable();
  v85 = v165;
  sub_1E58472FC(v65, v66);
  (*(v161 + 8))(v65, v66);
  v86 = v174;
  v174(v61, v63);
  v86(v172, v63);
LABEL_30:
  v143 = v166;
  v193 = v64;
  v194 = v64;
  v144 = swift_getWitnessTable();
  v191 = v144;
  v192 = v64;
  v145 = swift_getWitnessTable();
  v189 = v144;
  v190 = v145;
  v146 = v167;
  v147 = swift_getWitnessTable();
  sub_1E584108C(v85, v146, v147);
  return (*(v143 + 8))(v85, v146);
}

uint64_t sub_1E5849690()
{
  type metadata accessor for SampleContentSummaryCardView();
  sub_1E58474EC();
  sub_1E58545F0();
}

uint64_t sub_1E58496E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for SampleContentSummaryCardView() - 8) + 80);

  return sub_1E5849690();
}

void sub_1E58497B8(uint64_t a1)
{
  sub_1E583F4B8();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_getFunctionTypeMetadata1();
    sub_1E5853FA0();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1E5849880()
{
  result = qword_1EE2F8480;
  if (!qword_1EE2F8480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5BA0, "0*");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8480);
  }

  return result;
}

uint64_t sub_1E58498E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E584994C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

size_t sub_1E58499B4(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5849A30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1E58499D4(uint64_t a1)
{
  v2 = type metadata accessor for SampleContentShelfDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

size_t sub_1E5849A30(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5F48, &unk_1E58566A0);
  v10 = *(type metadata accessor for SampleContentSummaryCardItem() - 8);
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
  v15 = *(type metadata accessor for SampleContentSummaryCardItem() - 8);
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

uint64_t SampleContentState.init(activeStorefrontLocale:identifier:isEditModeActive:isPreviewModeActive:loadState:networkConditions:wlanStandards:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = sub_1E5853F70();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for SampleContentState();
  v20 = v19[5];
  v21 = sub_1E5853F40();
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  *(a9 + v19[6]) = a3;
  *(a9 + v19[7]) = a4;
  result = sub_1E5849D70(a5, a9 + v19[10]);
  *(a9 + v19[8]) = a6;
  v23 = (a9 + v19[9]);
  *v23 = a7;
  v23[1] = a8;
  return result;
}

uint64_t type metadata accessor for SampleContentState()
{
  result = qword_1EE2F87C8;
  if (!qword_1EE2F87C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5849D70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SampleContentState.activeStorefrontLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5853F70();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SampleContentState.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SampleContentState() + 20);
  v4 = sub_1E5853F40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SampleContentState.wlanStandards.getter()
{
  v1 = (v0 + *(type metadata accessor for SampleContentState() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SampleContentState.loadState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SampleContentState() + 40);

  return sub_1E5849FB4(v3, a1);
}

uint64_t sub_1E5849FB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SampleContentState.loadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SampleContentState() + 40);

  return sub_1E584A068(a1, v3);
}

uint64_t sub_1E584A068(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E584A120()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x696669746E656469;
    if (v1 != 1)
    {
      v5 = 0xD000000000000010;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  else
  {
    v2 = 0x6E6174536E616C77;
    if (v1 != 5)
    {
      v2 = 0x7461745364616F6CLL;
    }

    v3 = 0xD000000000000011;
    if (v1 == 3)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1E584A224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E584B48C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E584A258(uint64_t a1)
{
  v2 = sub_1E584A60C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E584A294(uint64_t a1)
{
  v2 = sub_1E584A60C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleContentState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5F50, &qword_1E58566E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E584A60C();
  sub_1E58548E0();
  v20[15] = 0;
  sub_1E5853F70();
  sub_1E584B1EC(&qword_1ECFF5F60, MEMORY[0x1E6969770]);
  sub_1E5854820();
  if (!v2)
  {
    v11 = type metadata accessor for SampleContentState();
    v12 = v11[5];
    v20[14] = 1;
    sub_1E5853F40();
    sub_1E584B1EC(&qword_1ECFF5F68, MEMORY[0x1E69695A8]);
    sub_1E5854820();
    v13 = *(v3 + v11[6]);
    v20[13] = 2;
    sub_1E5854810();
    v14 = *(v3 + v11[7]);
    v20[12] = 3;
    sub_1E5854810();
    v20[11] = *(v3 + v11[8]);
    v20[10] = 4;
    sub_1E584A660();
    sub_1E5854820();
    v15 = (v3 + v11[9]);
    v16 = *v15;
    v17 = v15[1];
    v20[9] = 5;
    sub_1E5854800();
    v18 = v11[10];
    v20[8] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
    sub_1E584AD70(&qword_1ECFF5F78);
    sub_1E5854820();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E584A60C()
{
  result = qword_1ECFF5F58;
  if (!qword_1ECFF5F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5F58);
  }

  return result;
}

unint64_t sub_1E584A660()
{
  result = qword_1ECFF5F70;
  if (!qword_1ECFF5F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5F70);
  }

  return result;
}

uint64_t SampleContentState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5CD8, &qword_1E58566E0);
  v3 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v33 - v4;
  v5 = sub_1E5853F40();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5853F70();
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5F80, &qword_1E58566F0);
  v40 = *(v43 - 8);
  v12 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v14 = &v33 - v13;
  v15 = type metadata accessor for SampleContentState();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E584A60C();
  v42 = v14;
  v20 = v44;
  sub_1E58548D0();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v8;
  v44 = v15;
  v22 = v18;
  v23 = v37;
  v24 = v38;
  v25 = v39;
  v52 = 0;
  sub_1E584B1EC(&qword_1ECFF5F88, MEMORY[0x1E6969770]);
  sub_1E58547C0();
  v26 = *(v23 + 32);
  v27 = v41;
  v41 = v9;
  v26(v22, v27, v9);
  v51 = 1;
  sub_1E584B1EC(&qword_1ECFF5F90, MEMORY[0x1E69695A8]);
  sub_1E58547C0();
  (*(v24 + 32))(v22 + v44[5], v21, v25);
  v50 = 2;
  *(v22 + v44[6]) = sub_1E58547B0() & 1;
  v49 = 3;
  *(v22 + v44[7]) = sub_1E58547B0() & 1;
  v47 = 4;
  sub_1E584AD1C();
  sub_1E58547C0();
  *(v22 + v44[8]) = v48;
  v46 = 5;
  v28 = sub_1E58547A0();
  v29 = (v22 + v44[9]);
  *v29 = v28;
  v29[1] = v30;
  v45 = 6;
  sub_1E584AD70(&qword_1ECFF5FA0);
  v31 = v36;
  sub_1E58547C0();
  (*(v40 + 8))(v42, v43);
  sub_1E5849D70(v31, v22 + v44[10]);
  sub_1E584AE44(v22, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E584AEA8(v22);
}

unint64_t sub_1E584AD1C()
{
  result = qword_1ECFF5F98;
  if (!qword_1ECFF5F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5F98);
  }

  return result;
}

uint64_t sub_1E584AD70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5CD8, &qword_1E58566E0);
    sub_1E584B1EC(&qword_1ECFF5950, type metadata accessor for SampleContentShelfDescriptor);
    sub_1E584B1EC(&qword_1EE2F8A68, type metadata accessor for SampleContentShelfDescriptor);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E584AE44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleContentState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E584AEA8(uint64_t a1)
{
  v2 = type metadata accessor for SampleContentState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s20FitnessSampleContent0bC5StateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1E692E5A0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SampleContentState();
  v5 = v4[5];
  if ((sub_1E5853F20() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]) || *(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  v6 = v4[9];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_1E5854840() & 1) == 0)
  {
    return 0;
  }

  v11 = v4[10];
  v12 = type metadata accessor for SampleContentShelfDescriptor();
  v13 = sub_1E584B1EC(&qword_1EE2F8A60, type metadata accessor for SampleContentShelfDescriptor);

  return MEMORY[0x1EEE01AC0](a1 + v11, a2 + v11, v12, v13);
}

void sub_1E584B098()
{
  sub_1E5853F70();
  if (v0 <= 0x3F)
  {
    sub_1E5853F40();
    if (v1 <= 0x3F)
    {
      sub_1E584B158();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E584B158()
{
  if (!qword_1EE2F8488)
  {
    type metadata accessor for SampleContentShelfDescriptor();
    sub_1E584B1EC(&qword_1EE2F8A60, type metadata accessor for SampleContentShelfDescriptor);
    v0 = sub_1E58545B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2F8488);
    }
  }
}

uint64_t sub_1E584B1EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for SampleContentState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SampleContentState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E584B388()
{
  result = qword_1ECFF5FA8;
  if (!qword_1ECFF5FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5FA8);
  }

  return result;
}

unint64_t sub_1E584B3E0()
{
  result = qword_1ECFF5FB0;
  if (!qword_1ECFF5FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5FB0);
  }

  return result;
}

unint64_t sub_1E584B438()
{
  result = qword_1ECFF5FB8;
  if (!qword_1ECFF5FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5FB8);
  }

  return result;
}

uint64_t sub_1E584B48C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001E5857C80 == a2;
  if (v3 || (sub_1E5854840() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5854840() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5857CA0 == a2 || (sub_1E5854840() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5857CC0 == a2 || (sub_1E5854840() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5857CE0 == a2 || (sub_1E5854840() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6174536E616C77 && a2 == 0xED00007364726164 || (sub_1E5854840() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E5854840();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t SampleContentError.hashValue.getter()
{
  sub_1E5854890();
  MEMORY[0x1E692EEF0](0);
  return sub_1E58548C0();
}

unint64_t sub_1E584B76C()
{
  result = qword_1ECFF5FC0;
  if (!qword_1ECFF5FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5FC0);
  }

  return result;
}

uint64_t sub_1E584B7F0(uint64_t a1)
{
  v2 = sub_1E584BEE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E584B82C(uint64_t a1)
{
  v2 = sub_1E584BEE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E584B868()
{
  v1 = 0x616C696176616E75;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C62616C69617661;
  }
}

uint64_t sub_1E584B8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E584C00C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E584B904(uint64_t a1)
{
  v2 = sub_1E584BDEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E584B940(uint64_t a1)
{
  v2 = sub_1E584BDEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E584B97C(uint64_t a1)
{
  v2 = sub_1E584BE94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E584B9B8(uint64_t a1)
{
  v2 = sub_1E584BE94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E584B9F4(uint64_t a1)
{
  v2 = sub_1E584BE40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E584BA30(uint64_t a1)
{
  v2 = sub_1E584BE40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NetworkConditions.encode(to:)(void *a1, int a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5FC8, "r3");
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5FD0, &qword_1E58569B8);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5FD8, &qword_1E58569C0);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5FE0, &qword_1E58569C8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E584BDEC();
  sub_1E58548E0();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_1E584BE94();
      sub_1E58547E0();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_1E584BE40();
      v21 = v27;
      sub_1E58547E0();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_1E584BEE8();
    sub_1E58547E0();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}