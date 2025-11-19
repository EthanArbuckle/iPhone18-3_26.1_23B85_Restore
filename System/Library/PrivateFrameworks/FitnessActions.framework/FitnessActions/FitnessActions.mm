uint64_t sub_1E5B55A10()
{
  result = sub_1E5BF6384();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for SharingDetail()
{
  result = qword_1EE2C77C8;
  if (!qword_1EE2C77C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5B55AF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_getTupleTypeMetadata2();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E5B55BA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_1E5BF71F4();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1E5B55C24(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5B55C5C()
{
  result = sub_1E5BF6494();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5B55CEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5B55D9C()
{
  result = sub_1E5BF6494();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5B55E88()
{
  result = sub_1E5BF6494();
  if (v1 <= 0x3F)
  {
    result = sub_1E5BF6464();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E5B56010()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5B56084()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5B560D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5B5613C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5B56190()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5B561CC()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1E5B5624C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5B562BC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1E5B562FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5B56334(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1E5BF6544();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1E5B563FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v8 = sub_1E5BF6544();
    v9 = *(*(v8 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1E5B564B8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  type metadata accessor for CreatePlanAlertView();
  swift_getWitnessTable();
  sub_1E5BF6884();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E530, &qword_1E5BF8830);
  sub_1E5BF66E4();
  sub_1E5BF66E4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E538, &qword_1E5BF8838);
  swift_getTupleTypeMetadata2();
  sub_1E5BF6DA4();
  swift_getWitnessTable();
  sub_1E5BF6D24();
  sub_1E5BF66E4();
  swift_getWitnessTable();
  sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B566DC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  type metadata accessor for CreatePlanAlertView();
  sub_1E5BF66E4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5B56770@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E5BF67E4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E5B567A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1E5BF67F4();
}

uint64_t sub_1E5B567D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5BF6764();
  *a1 = result;
  return result;
}

uint64_t sub_1E5B56828()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1E5B56870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5BF6494();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E5B5692C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5BF6494();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5B56A14()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E948, &qword_1E5BFD480) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v13 = *(v7 + 8);

      v14 = *(v7 + 32);

      break;
    case 1:
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E960, &qword_1E5BFD4B0);
      (*(*(v10 - 8) + 8))(v7, v10);
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E968, &unk_1E5BF9620) + 48);
      v12 = sub_1E5BF6464();
      (*(*(v12 - 8) + 8))(v7 + v11, v12);
      break;
    case 0:
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E960, &qword_1E5BFD4B0);
      (*(*(v9 - 8) + 8))(v7, v9);
      break;
  }

  v15 = (v0 + v5);
  v16 = swift_getEnumCaseMultiPayload();
  if (v16 == 2)
  {
    v24 = *(v15 + 1);
  }

  else
  {
    if (v16 == 1)
    {
      v19 = *(v15 + 1);

      v20 = *(v15 + 3);

      v21 = *(v15 + 4);

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E970, &qword_1E5BFD440) + 48);
      v23 = sub_1E5BF6464();
      (*(*(v23 - 8) + 8))(&v15[v22], v23);
      goto LABEL_14;
    }

    if (v16)
    {
      goto LABEL_14;
    }

    v17 = *(v15 + 1);

    v18 = *(v15 + 3);
  }

  v25 = *(v15 + 4);

LABEL_14:
  v26 = (v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 87) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v0 + v26);
  v29 = *(v0 + v26 + 8);

  v30 = v28[3];

  v31 = v28[5];

  v32 = v28[7];

  v33 = v28[9];

  v34 = *(v0 + v27 + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5B56D5C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return swift_deallocObject();
}

uint64_t sub_1E5B56DF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_1E5B56E38(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1E5B86E54(v2);
}

uint64_t sub_1E5B56E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v6 = *(a3 + 16);
    sub_1E5B76870();
    swift_getFunctionTypeMetadata1();
    v9 = sub_1E5BF6544();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1E5B56F38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v6 = *(a4 + 16);
    sub_1E5B76870();
    swift_getFunctionTypeMetadata1();
    v8 = sub_1E5BF6544();
    v9 = *(*(v8 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1E5B57000(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1E5BF66E4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5BF71F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAB0, &qword_1E5BF9C58);
  sub_1E5BF6874();
  sub_1E5BF6BD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAB8, &qword_1E5BF9C60);
  sub_1E5BF66E4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAC0, &qword_1E5BF9C68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAC8, &qword_1E5BF9C70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAD0, &qword_1E5BF9C78);
  sub_1E5B7656C();
  swift_getOpaqueTypeConformance2();
  sub_1E5B76768();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5B5FC8C(&qword_1ED03EB30, &qword_1ED03EAB8, &qword_1E5BF9C60);
  swift_getWitnessTable();
  sub_1E5BF6CB4();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B57350@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6804();
  *a1 = result;
  return result;
}

uint64_t sub_1E5B5737C(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E5BF6814();
}

uint64_t sub_1E5B573A8()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1E5B573E8()
{
  v1 = (type metadata accessor for PreviewPlayerConfiguration() - 8);
  v2 = (*(*v1 + 80) + 64) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 40);

  v5 = *(v0 + 56);

  v6 = sub_1E5BF6384();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);
  v7 = *(v0 + v2 + v1[7] + 8);

  v8 = *(v0 + v2 + v1[8] + 8);

  v9 = *(v0 + v2 + v1[9] + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5B57504()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 5);

  v6 = *(v0 + 7);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_1E5B575CC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EC98, &unk_1E5BFA180);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E530, &qword_1E5BF8830);
  sub_1E5B5FC8C(&qword_1ED03ECA0, &qword_1ED03EC98, &unk_1E5BFA180);
  sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B576D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5BF6384();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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
}

uint64_t sub_1E5B577A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5BF6384();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1E5B5785C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_1E5B578C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5B57900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF28, &qword_1E5BFAD00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B57978@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1E6936EF0]();
  *a1 = result;
  return result;
}

uint64_t sub_1E5B579A4(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x1E6936F00](v2);
}

uint64_t sub_1E5B579D4()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1E5B57A14()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5B57A84()
{
  v1 = (type metadata accessor for PlannedWorkoutConfirmation(0) - 8);
  v2 = (*(*v1 + 80) + 33) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  sub_1E5B5C0A8();
  v7 = sub_1E5BF6494();
  (*(*(v7 - 8) + 8))(v0 + v2, v7);
  v8 = *(v0 + v2 + v1[9] + 8);

  v9 = *(v0 + v2 + v1[10] + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5B57B8C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F140, &qword_1E5BFB4E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F148, &unk_1E5BFB4F0);
  type metadata accessor for PlannedWorkoutConfirmation(255);
  sub_1E5B5FC8C(&qword_1EE2C6320, &qword_1ED03F140, &qword_1E5BFB4E8);
  sub_1E5B5FC8C(&qword_1EE2C6298, &qword_1ED03F148, &unk_1E5BFB4F0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B57D04()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E5B57D44()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5B57D80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1E5B870BC(v4);
}

uint64_t sub_1E5B57DB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5B57DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5BF64B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E5B57EF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E5BF64B4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E5B57FFC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1E5BF64B4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = sub_1E5BF6494();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E948, &qword_1E5BFD480);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[10];

  return v17(v18, a2, v16);
}

uint64_t sub_1E5B5821C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1E5BF64B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1E5BF6494();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E948, &qword_1E5BFD480);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[10];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1E5B5843C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1E5BF64B4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2A8, &unk_1E5BFBDF0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_1E5B585C0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1E5BF64B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F2A8, &unk_1E5BFBDF0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E5B5875C()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1E5B58798(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F468, &qword_1E5BFC878);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B58824()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5B58874()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5B588C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F640, &qword_1E5BFD260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B589E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F848, &unk_1E5BFDFA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E530, &qword_1E5BF8830);
  sub_1E5B5FC8C(&qword_1EE2C6328, &qword_1ED03F848, &unk_1E5BFDFA0);
  sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B58AE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5B58B20()
{
  v17 = *(v0 + 16);
  v18 = *(v0 + 24);
  v19 = *(v0 + 32);
  v16 = *(v0 + 40);
  v20 = *(v0 + 56);
  v21 = *(v0 + 72);
  v1 = (type metadata accessor for DynamicStartWorkoutView() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 80) & ~*(*v1 + 80)));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  sub_1E5B5C0A8();
  v7 = v1[23];
  swift_getFunctionTypeMetadata0();
  v8 = sub_1E5BF6544();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  v9 = v1[24];
  swift_getFunctionTypeMetadata1();
  v10 = sub_1E5BF6544();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);
  v11 = v1[25];
  swift_getFunctionTypeMetadata0();
  v12 = sub_1E5BF6544();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);
  v13 = v1[26];
  swift_getFunctionTypeMetadata0();
  v14 = sub_1E5BF6544();
  (*(*(v14 - 8) + 8))(v3 + v13, v14);
  return swift_deallocObject();
}

uint64_t sub_1E5B58D4C(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = *(a3 + 24);
  swift_getFunctionTypeMetadata0();
  v9 = sub_1E5BF6544();
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = *(a3 + 84);
LABEL_11:
    v17 = *(v11 + 48);

    return v17(a1 + v12, a2, v10);
  }

  v13 = *(a3 + 32);
  swift_getFunctionTypeMetadata1();
  v14 = sub_1E5BF6544();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = *(a3 + 88);
    goto LABEL_11;
  }

  v15 = *(a3 + 16);
  swift_getFunctionTypeMetadata0();
  v16 = sub_1E5BF6544();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v10 = v16;
    v11 = *(v16 - 8);
    v12 = *(a3 + 92);
    goto LABEL_11;
  }

  v18 = *(a3 + 40);
  swift_getFunctionTypeMetadata0();
  v19 = sub_1E5BF6544();
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + *(a3 + 96);

  return v20(v21, a2, v19);
}

uint64_t sub_1E5B58F44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
    return result;
  }

  v8 = *(a4 + 24);
  swift_getFunctionTypeMetadata0();
  v9 = sub_1E5BF6544();
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = *(a4 + 84);
LABEL_9:
    v17 = *(v11 + 56);

    return v17(v5 + v12, a2, a2, v10);
  }

  v13 = *(a4 + 32);
  swift_getFunctionTypeMetadata1();
  v14 = sub_1E5BF6544();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = *(a4 + 88);
    goto LABEL_9;
  }

  v15 = *(a4 + 16);
  swift_getFunctionTypeMetadata0();
  v16 = sub_1E5BF6544();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v11 = *(v16 - 8);
    v12 = *(a4 + 92);
    goto LABEL_9;
  }

  v18 = *(a4 + 40);
  swift_getFunctionTypeMetadata0();
  v19 = sub_1E5BF6544();
  v20 = *(*(v19 - 8) + 56);
  v21 = v5 + *(a4 + 96);

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1E5B59140(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_1E5BF6874();
  sub_1E5BF6874();
  sub_1E5BF6874();
  sub_1E5BF6BD4();
  sub_1E5BF66E4();
  v8 = *(a1 + 3);
  swift_getWitnessTable();
  v7 = vextq_s8(*(a1 + 2), *(a1 + 2), 8uLL);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5B59294()
{
  v1 = *(v0 + 88);

  return swift_deallocObject();
}

uint64_t sub_1E5B59330()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5B59378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F8F8, &qword_1E5BFE5B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B5943C()
{
  if (*v0)
  {
    result = 0x7669746341776172;
  }

  else
  {
    result = 0x6954656D75736572;
  }

  *v0;
  return result;
}

uint64_t sub_1E5B5958C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5BF6494();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E5B595F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5BF6494();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E5B59668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5BF6494();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E5B59728(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5BF6494();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5B597E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5BF6494();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1E5BF6464();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E5B598D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E5BF6494();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1E5BF6464();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E5B599D0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1E5BF64B4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_17:
    v17 = *(v10 + 48);

    return v17(a1 + v11, a2, v9);
  }

  v12 = sub_1E5BF6494();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_17;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_17;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E780, &qword_1E5BF9140);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[10];
    goto LABEL_17;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E760, &qword_1E5BF9120);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[11];
    goto LABEL_17;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E740, &qword_1E5BF9100);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[12];
    goto LABEL_17;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[13];

  return v19(v20, a2, v18);
}

uint64_t sub_1E5B59C98(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1E5BF64B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_15:
    v17 = *(v10 + 56);

    return v17(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1E5BF6494();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_15;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_15;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E780, &qword_1E5BF9140);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[10];
    goto LABEL_15;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E760, &qword_1E5BF9120);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[11];
    goto LABEL_15;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E740, &qword_1E5BF9100);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[12];
    goto LABEL_15;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  v19 = *(*(v18 - 8) + 56);
  v20 = v5 + a4[13];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1E5B59F68()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03FD70, &qword_1E5C00D88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03FD78, &qword_1E5C00D90);
  type metadata accessor for ResumeWorkoutConfirmation(255);
  sub_1E5B5FC8C(&qword_1EE2C6310, &qword_1ED03FD70, &qword_1E5C00D88);
  sub_1E5B81070();
  sub_1E5B5FC8C(&qword_1EE2C62A8, &qword_1ED03FD78, &qword_1E5C00D90);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B5A090()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[13];

  return swift_deallocObject();
}

uint64_t sub_1E5B5A0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5BF64B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
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
}

uint64_t sub_1E5B5A1C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5BF64B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_1E5B5A27C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5B5A2B4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1E5BF64B4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1E5B5A438(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1E5BF64B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E5B5A5D4()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1E5B5A60C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1E5B5C0A8();

  return swift_deallocObject();
}

uint64_t sub_1E5B5A648(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for RemoveLibraryItemConfirmationDialog();
  swift_getWitnessTable();
  sub_1E5BF6884();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0405A8, &qword_1E5C038D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0405B0, &qword_1E5C038D8);
  swift_getWitnessTable();
  sub_1E5B5FC8C(&qword_1EE2C62A0, &qword_1ED0405A8, &qword_1E5C038D0);
  sub_1E5BD02E0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B5A770(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  type metadata accessor for RemoveLibraryItemConfirmationDialog();
  sub_1E5BF66E4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5B5A810()
{
  v1 = sub_1E5BF6914();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5B5A898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040720, &qword_1E5C042B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B5A908@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6784();
  *a1 = result;
  return result;
}

uint64_t sub_1E5B5A934(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E5BF6794();
}

uint64_t sub_1E5B5A968()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040790, &unk_1E5C04460);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E530, &qword_1E5BF8830);
  sub_1E5B5FC8C(&qword_1ED040798, &qword_1ED040790, &unk_1E5C04460);
  sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B5AA70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5B5AAAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1E5BF66E4();
  sub_1E5BD8FA4();
  return swift_getWitnessTable();
}

uint64_t sub_1E5B5AB2C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5B5ABE8()
{
  v1 = *(v0 + 104);

  return swift_deallocObject();
}

uint64_t sub_1E5B5AC20()
{
  v17 = *(v0 + 16);
  v18 = *(v0 + 24);
  v19 = *(v0 + 32);
  v20 = *(v0 + 40);
  v16 = *(v0 + 48);
  v21 = *(v0 + 64);
  v22 = *(v0 + 80);
  v1 = (type metadata accessor for DynamicLibraryButton() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 96) & ~*(*v1 + 80)));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  sub_1E5B5C0A8();
  v7 = v1[27];
  swift_getFunctionTypeMetadata0();
  v8 = sub_1E5BF6544();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  v9 = v1[28];
  swift_getFunctionTypeMetadata1();
  v10 = sub_1E5BF6544();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);
  v11 = v1[29];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040A48, &qword_1E5C056D0);
  swift_getFunctionTypeMetadata1();
  v12 = sub_1E5BF6544();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);
  v13 = v1[30];
  swift_getFunctionTypeMetadata0();
  v14 = sub_1E5BF6544();
  (*(*(v14 - 8) + 8))(v3 + v13, v14);
  return swift_deallocObject();
}

uint64_t sub_1E5B5AE60(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = *(a3 + 24);
  swift_getFunctionTypeMetadata0();
  v9 = sub_1E5BF6544();
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = *(a3 + 100);
LABEL_11:
    v17 = *(v11 + 48);

    return v17(a1 + v12, a2, v10);
  }

  v13 = *(a3 + 32);
  swift_getFunctionTypeMetadata1();
  v14 = sub_1E5BF6544();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = *(a3 + 104);
    goto LABEL_11;
  }

  v15 = *(a3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040A48, &qword_1E5C056D0);
  swift_getFunctionTypeMetadata1();
  v16 = sub_1E5BF6544();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v10 = v16;
    v11 = *(v16 - 8);
    v12 = *(a3 + 108);
    goto LABEL_11;
  }

  v18 = *(a3 + 48);
  swift_getFunctionTypeMetadata0();
  v19 = sub_1E5BF6544();
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + *(a3 + 112);

  return v20(v21, a2, v19);
}

uint64_t sub_1E5B5B078(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
    return result;
  }

  v8 = *(a4 + 24);
  swift_getFunctionTypeMetadata0();
  v9 = sub_1E5BF6544();
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = *(a4 + 100);
LABEL_9:
    v17 = *(v11 + 56);

    return v17(v5 + v12, a2, a2, v10);
  }

  v13 = *(a4 + 32);
  swift_getFunctionTypeMetadata1();
  v14 = sub_1E5BF6544();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = *(a4 + 104);
    goto LABEL_9;
  }

  v15 = *(a4 + 40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040A48, &qword_1E5C056D0);
  swift_getFunctionTypeMetadata1();
  v16 = sub_1E5BF6544();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v11 = *(v16 - 8);
    v12 = *(a4 + 108);
    goto LABEL_9;
  }

  v18 = *(a4 + 48);
  swift_getFunctionTypeMetadata0();
  v19 = sub_1E5BF6544();
  v20 = *(*(v19 - 8) + 56);
  v21 = v5 + *(a4 + 112);

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1E5B5B2A4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 72);
  sub_1E5BF6874();
  sub_1E5BF6874();
  sub_1E5BF6874();
  sub_1E5BF6874();
  sub_1E5BF6874();
  sub_1E5BF6BD4();
  sub_1E5BF66E4();
  v9 = *(a1 + 56);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5B5B46C()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1E5B5B4A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ShareLinkPicker();
  swift_getWitnessTable();
  sub_1E5BF6884();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5BF6874();
  sub_1E5BF6BD4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5B5B5E4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  type metadata accessor for ShareLinkPicker();
  sub_1E5BF66E4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5B5B678()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1E5B5C0A8();

  return swift_deallocObject();
}

uint64_t sub_1E5B5B6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5BF6494();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E5B5B774(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5BF6494();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5B5B834()
{
  v1 = (type metadata accessor for FutureWorkoutConfirmation(0) - 8);
  v2 = (*(*v1 + 80) + 33) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  sub_1E5B5C0A8();
  v7 = sub_1E5BF6494();
  (*(*(v7 - 8) + 8))(v0 + v2, v7);
  v8 = v1[9];
  v9 = sub_1E5BF6464();
  (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_1E5B5B958()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040B80, &unk_1E5C05DC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F148, &unk_1E5BFB4F0);
  type metadata accessor for FutureWorkoutConfirmation(255);
  sub_1E5B5FC8C(&qword_1EE2C6308, &qword_1ED040B80, &unk_1E5C05DC0);
  sub_1E5B5FC8C(&qword_1EE2C6298, &qword_1ED03F148, &unk_1E5BFB4F0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B5BA78()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1E5B5BAB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040BE0, &qword_1E5C05F88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B5BB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E5BF6384();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E5B5BBF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E5BF6384();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5B5BC94(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED040CE8, &qword_1E5C064A0);
  sub_1E5BECF14();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B5BD08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5B5BD40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040CF0, &qword_1E5C06518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B5BDB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED040CF0, &qword_1E5C06518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5B5BE18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1E5B5C0A8();

  return swift_deallocObject();
}

uint64_t sub_1E5B5BE58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5B5BE94(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1E5BF66E4();
  sub_1E5BEE728();
  return swift_getWitnessTable();
}

uint64_t sub_1E5B5BF04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5B5BF3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6C04();
  *a1 = result;
  return result;
}

uint64_t sub_1E5B5BF88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1E5B5C0A8();
  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1E5B5BFE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5BF67C4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5B5C060(char a1)
{
  if (a1)
  {
    return 0x6574617473;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1E5B5C18C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for DownloadButtonFeature();
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();

  return sub_1E5BF6614();
}

uint64_t DownloadButton.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  type metadata accessor for DownloadButtonFeature();
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();
  result = sub_1E5BF6604();
  *a5 = result;
  *(a5 + 8) = v12;
  *(a5 + 16) = v13 & 1;
  return result;
}

uint64_t sub_1E5B5C328()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_1E5B5C350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v4 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v17 = *(a3 + 16);
  sub_1E5B5F77C(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E310, &unk_1E5BFD4F0);
  sub_1E5B5FC8C(&qword_1ED03E318, &qword_1ED03E310, &unk_1E5BFD4F0);
  sub_1E5BF6C84();
  LOBYTE(a3) = a1 == 0;
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E288, &qword_1E5BF7CD8);
  v16 = (a4 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = sub_1E5B5F78C;
  v16[2] = v14;
  return result;
}

uint64_t sub_1E5B5C4CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E320, &qword_1E5BF7E80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E328, &unk_1E5BFD530);
  sub_1E5B5FC8C(&qword_1EE2C61F0, &qword_1ED03E328, &unk_1E5BFD530);
  swift_getOpaqueTypeConformance2();
  return sub_1E5BF6C24();
}

uint64_t sub_1E5B5C5FC()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E328, &unk_1E5BFD530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v2 = v6 - v1;
  v6[1] = sub_1E5BF6BE4();
  v3 = *MEMORY[0x1E697E6E8];
  v4 = sub_1E5BF66D4();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  sub_1E5B5F7AC();
  result = sub_1E5BF6F14();
  if (result)
  {
    sub_1E5B5FC8C(&qword_1EE2C61F0, &qword_1ED03E328, &unk_1E5BFD530);
    sub_1E5BF6A84();
    sub_1E5B5F804(v2, &qword_1ED03E328, &unk_1E5BFD530);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5B5C79C(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v5 = &v14[-v4];
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v1 + 16);
  sub_1E5BF65C4();
  v9 = sub_1E5BF65E4();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  v10 = swift_allocObject();
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 48) = v8;
  v15 = v11;
  v16 = v12;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  sub_1E5B5F5EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3A0, &qword_1E5BF7F08);
  sub_1E5B5FC8C(&qword_1ED03E3A8, &qword_1ED03E3A0, &qword_1E5BF7F08);
  return sub_1E5BF6C74();
}

uint64_t sub_1E5B5C94C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3B0, &unk_1E5BF7F10);
  sub_1E5B5FB44();
  return sub_1E5BF6C24();
}

double sub_1E5B5C9F0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5BF6BF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5BF6BE4();
  (*(v3 + 104))(v6, *MEMORY[0x1E6981630], v2);
  v7 = sub_1E5BF6C14();

  (*(v3 + 8))(v6, v2);
  sub_1E5BF6D84();
  sub_1E5BF6674();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  result = *&v17;
  *(a1 + 40) = v17;
  return result;
}

uint64_t sub_1E5B5CB78(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17[-v7];
  v9 = *v2;
  v10 = v2[1];
  v11 = *(v2 + 16);
  sub_1E5BF65C4();
  v12 = sub_1E5BF65E4();
  (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  v13 = swift_allocObject();
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = v9;
  *(v13 + 40) = v10;
  *(v13 + 48) = v11;
  v18 = v14;
  v19 = v15;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = a1;
  v24 = BYTE4(a1) & 1;
  sub_1E5B5F5EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E340, &qword_1E5BF7ED0);
  sub_1E5B5FC8C(&qword_1ED03E348, &qword_1ED03E340, &qword_1E5BF7ED0);
  return sub_1E5BF6C74();
}

uint64_t sub_1E5B5CD40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E350, &qword_1E5BF7ED8);
  sub_1E5B5FC8C(&qword_1ED03E358, &qword_1ED03E350, &qword_1E5BF7ED8);
  return sub_1E5BF6C24();
}

uint64_t sub_1E5B5CE24@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1E5BF6D84();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E360, &qword_1E5BF7EE0);
  return sub_1E5B5CE84(a1 | ((HIDWORD(a1) & 1) << 32), a2 + *(v5 + 44));
}

uint64_t sub_1E5B5CE84@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v3 = sub_1E5BF6BF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  (MEMORY[0x1EEE9AC00])();
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E368, &qword_1E5BF7EE8);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E370, &qword_1E5BF7EF0);
  v36 = *(v13 - 8);
  v37 = v13;
  v14 = *(v36 + 64);
  v15 = (MEMORY[0x1EEE9AC00])();
  v39 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - v17;
  BYTE4(v41) = BYTE4(a1) & 1;
  v40 = 1065353216;
  LODWORD(v41) = a1;
  sub_1E5B5F9E4();
  sub_1E5BF6634();
  sub_1E5BF6D74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E380, &qword_1E5BF7EF8);
  sub_1E5B5FC8C(&qword_1ED03E388, &qword_1ED03E368, &qword_1E5BF7EE8);
  sub_1E5B5FA38();
  v35 = v18;
  sub_1E5BF6B74();
  (*(v9 + 8))(v12, v8);
  sub_1E5BF6BE4();
  (*(v4 + 104))(v7, *MEMORY[0x1E6981630], v3);
  v19 = sub_1E5BF6C14();

  (*(v4 + 8))(v7, v3);
  sub_1E5BF6D84();
  sub_1E5BF6674();
  v34 = v41;
  v33 = v42;
  v32 = v43;
  LOBYTE(v7) = v44;
  v20 = v45;
  v21 = v46;
  v22 = v36;
  v23 = *(v36 + 16);
  v24 = v39;
  v25 = v37;
  v23(v39, v18, v37);
  v26 = v38;
  v23(v38, v24, v25);
  v27 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E398, &qword_1E5BF7F00) + 48)];
  v28 = v34;
  *v27 = v19;
  *(v27 + 1) = v28;
  v27[16] = v33;
  *(v27 + 3) = v32;
  v27[32] = v7;
  *(v27 + 5) = v20;
  *(v27 + 6) = v21;
  v29 = *(v22 + 8);

  v29(v35, v25);

  return (v29)(v39, v25);
}

double sub_1E5B5D2E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E5BF6D84();
  sub_1E5BF6674();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E368, &qword_1E5BF7EE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E380, &qword_1E5BF7EF8) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_1E5B5D3A4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15[-v5];
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  sub_1E5BF65C4();
  v10 = sub_1E5BF65E4();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = swift_allocObject();
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v7;
  *(v11 + 40) = v8;
  *(v11 + 48) = v9;
  v16 = v12;
  v17 = v13;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  sub_1E5B5F5EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
  sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810);
  return sub_1E5BF6C74();
}

uint64_t sub_1E5B5D554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(*(sub_1E5BF64B4() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v13 = *(*(sub_1E5BF6F94() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE2CD210;
  v21[1] = a1;
  v21[2] = a2;
  v22 = a3 & 1;
  v15 = type metadata accessor for DownloadButton();
  v16 = v14;
  sub_1E5B5C18C(v15);
  MEMORY[0x1EEE9AC00]();
  v21[-2] = a4;
  v21[-1] = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a6 = result;
  *(a6 + 8) = v18;
  *(a6 + 16) = v19 & 1;
  *(a6 + 24) = v20;
  return result;
}

uint64_t sub_1E5B5D740@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6BE4();
  *a1 = result;
  return result;
}

uint64_t sub_1E5B5D778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E288, &qword_1E5BF7CD8);
  v40 = *(v42 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v39 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2C8, &qword_1E5BF7CF0);
  v6 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v41 = &v39 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E330, &qword_1E5BF7EA8);
  v8 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v39 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E258, &qword_1E5BF7CB0);
  v10 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - v15;
  v17 = *v2;
  v18 = v2[1];
  v19 = *(v2 + 16);
  v51 = *v2;
  v52 = v18;
  v53 = v19;
  sub_1E5B5C18C(a1);
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  v43 = a1;
  v49 = v20;
  v50 = v21;
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_10;
  }

  if (!EnumCaseMultiPayload)
  {
    if ((*v16 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    v51 = v17;
    v52 = v18;
    v53 = v19;
    v30 = swift_allocObject();
    *(v30 + 16) = v20;
    *(v30 + 24) = v21;
    *(v30 + 32) = v17;
    *(v30 + 40) = v18;
    *(v30 + 48) = v19;
    sub_1E5B5F5EC();
    v31 = v39;
    sub_1E5B5C350(sub_1E5B5F8CC, v30, v43, v39);

    v29 = v41;
    sub_1E5B5F8D4(v31, v41, &qword_1ED03E288, &qword_1E5BF7CD8);
    v26 = 0;
    v27 = v46;
    v28 = v42;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5B5F804(v16, &qword_1ED03E238, &unk_1E5BF8A10);
LABEL_10:
    v51 = v17;
    v52 = v18;
    v53 = v19;
    sub_1E5B5C350(0, 0, v43, v12);
    v35 = swift_allocObject();
    *(v35 + 16) = v20;
    *(v35 + 24) = v21;
    *(v35 + 32) = v17;
    *(v35 + 40) = v18;
    *(v35 + 48) = v19;
    v36 = v46;
    v37 = &v12[*(v45 + 36)];
    *v37 = sub_1E5B5F93C;
    v37[1] = v35;
    v37[2] = 0;
    v37[3] = 0;
    sub_1E5B5F864(v12, v36, &qword_1ED03E258, &qword_1E5BF7CB0);
    swift_storeEnumTagMultiPayload();
    sub_1E5B5F5EC();
    sub_1E5B5F0B8();
    sub_1E5B5F35C();
    sub_1E5BF6864();
    v32 = v12;
    v33 = &qword_1ED03E258;
    v34 = &qword_1E5BF7CB0;
    return sub_1E5B5F804(v32, v33, v34);
  }

  v23 = *v16;
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
  v25 = sub_1E5BF6464();
  (*(*(v25 - 8) + 8))(&v16[v24], v25);
  if (v23 == 1)
  {
    goto LABEL_7;
  }

LABEL_5:
  v26 = 1;
  v27 = v46;
  v29 = v41;
  v28 = v42;
LABEL_8:
  (*(v40 + 56))(v29, v26, 1, v28);
  sub_1E5B5F864(v29, v27, &qword_1ED03E2C8, &qword_1E5BF7CF0);
  swift_storeEnumTagMultiPayload();
  sub_1E5B5F0B8();
  sub_1E5B5F35C();
  sub_1E5BF6864();
  v32 = v29;
  v33 = &qword_1ED03E2C8;
  v34 = &qword_1E5BF7CF0;
  return sub_1E5B5F804(v32, v33, v34);
}

uint64_t DownloadButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E0, "ܳ");
  v108 = *(v120 - 8);
  v4 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v107 = &v92 - v5;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E8, &qword_1E5BF7C48);
  v106 = *(v112 - 8);
  v6 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v105 = &v92 - v7;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1F0, &qword_1E5BF7C50);
  v8 = *(*(v109 - 8) + 64);
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v92 - v9;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1F8, &qword_1E5BF7C58);
  v104 = *(v111 - 8);
  v10 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v103 = &v92 - v11;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E200, &qword_1E5BF7C60);
  v12 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117);
  v113 = &v92 - v13;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E208, &qword_1E5BF7C68);
  v14 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122);
  v123 = &v92 - v15;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E210, &qword_1E5BF7C70);
  v16 = *(*(v115 - 8) + 64);
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v92 - v17;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E218, &qword_1E5BF7C78);
  v18 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v92 - v19;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E220, &qword_1E5BF7C80);
  v94 = *(v95 - 8);
  v20 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v92 - v21;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E228, &qword_1E5BF7C88);
  v22 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v96 = &v92 - v23;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E230, &qword_1E5BF7C90);
  v24 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v92 - v25;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  v26 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v92 - v27;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E240, &qword_1E5BF7C98);
  v28 = *(*(v114 - 8) + 64);
  MEMORY[0x1EEE9AC00](v114);
  v102 = &v92 - v29;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E248, &qword_1E5BF7CA0);
  v30 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v121 = &v92 - v31;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E250, &qword_1E5BF7CA8);
  v32 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v126 = &v92 - v33;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E258, &qword_1E5BF7CB0);
  v34 = *(*(v129 - 8) + 64);
  MEMORY[0x1EEE9AC00](v129);
  v36 = &v92 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = (&v92 - v39);
  v42 = *v2;
  v41 = v2[1];
  v43 = *(v2 + 16);
  v133 = *v2;
  v134 = v41;
  v135 = v43;
  sub_1E5B5C18C(a1);
  v45 = *(a1 + 16);
  v44 = *(a1 + 24);
  v46 = a1;
  v130 = v45;
  v131 = v44;
  v124 = v44;
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v48 = *v40 | (*(v40 + 4) << 32);
      if ((*(v40 + 5) & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v48 = *v40 | (*(v40 + 4) << 32);
      v49 = *(v40 + 5);
      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F8, &unk_1E5BF91A0) + 48);
      v51 = sub_1E5BF6464();
      (*(*(v51 - 8) + 8))(v40 + v50, v51);
      if (v49 != 1)
      {
LABEL_5:
        v133 = v42;
        v134 = v41;
        v135 = v43;
        v52 = sub_1E5B5C18C(v46);
        MEMORY[0x1EEE9AC00](v52);
        v53 = v124;
        *(&v92 - 2) = v45;
        *(&v92 - 1) = v53;
        swift_getKeyPath();
        sub_1E5BF6E34();

        v133 = v42;
        v134 = v41;
        v135 = v43;
        if (v132)
        {
          v54 = v103;
          sub_1E5B5CB78(v48 | ((HIDWORD(v48) & 1) << 32), v46);
          v55 = v104;
          v56 = v111;
          (*(v104 + 16))(v110, v54, v111);
        }

        else
        {
          v54 = v105;
          sub_1E5B5C79C(v46);
          v55 = v106;
          v56 = v112;
          (*(v106 + 16))(v110, v54, v112);
        }

        swift_storeEnumTagMultiPayload();
        sub_1E5B5FC8C(&qword_1ED03E2D8, &qword_1ED03E1F8, &qword_1E5BF7C58);
        sub_1E5B5FC8C(&qword_1ED03E2E0, &qword_1ED03E1E8, &qword_1E5BF7C48);
        v57 = v113;
        sub_1E5BF6864();
        (*(v55 + 8))(v54, v56);
        v69 = v123;
        sub_1E5B5F864(v57, v116, &qword_1ED03E200, &qword_1E5BF7C60);
        swift_storeEnumTagMultiPayload();
        sub_1E5B5F2D8(&qword_1ED03E270, &qword_1ED03E240, &qword_1E5BF7C98, sub_1E5B5F228);
        sub_1E5B5F3E0();
        v70 = v118;
        sub_1E5BF6864();
        sub_1E5B5F864(v70, v69, &qword_1ED03E218, &qword_1E5BF7C78);
        swift_storeEnumTagMultiPayload();
        sub_1E5B5EFB8();
        sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
        v62 = v121;
        sub_1E5BF6864();
        sub_1E5B5F804(v70, &qword_1ED03E218, &qword_1E5BF7C78);
        v71 = v57;
        v72 = &qword_1ED03E200;
        v73 = &qword_1E5BF7C60;
        goto LABEL_25;
      }

LABEL_8:
      v58 = v46;
      if (v48)
      {
        v133 = v42;
        v134 = v41;
        v135 = v43;
        v59 = v107;
        sub_1E5B5D3A4(v46);
        v60 = v108;
        v61 = v120;
        (*(v108 + 16))(v123, v59, v120);
        swift_storeEnumTagMultiPayload();
        sub_1E5B5EFB8();
        sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
        v62 = v121;
        sub_1E5BF6864();
        (*(v60 + 8))(v59, v61);
LABEL_26:
        sub_1E5B5F864(v62, v126, &qword_1ED03E248, &qword_1E5BF7CA0);
        swift_storeEnumTagMultiPayload();
        sub_1E5B5F0B8();
        sub_1E5B5F4C0();
        sub_1E5BF6864();
        v66 = v62;
        v67 = &qword_1ED03E248;
        v68 = &qword_1E5BF7CA0;
        return sub_1E5B5F804(v66, v67, v68);
      }

      v133 = v42;
      v134 = v41;
      v135 = v43;
      v74 = sub_1E5B5C18C(v46);
      MEMORY[0x1EEE9AC00](v74);
      v75 = v124;
      *(&v92 - 2) = v45;
      *(&v92 - 1) = v75;
      swift_getKeyPath();
      v76 = v101;
      sub_1E5BF6E34();

      v77 = swift_getEnumCaseMultiPayload();
      v78 = v102;
      if (v77 <= 2)
      {
        if (!v77)
        {
          if ((*v76 & 1) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_20;
        }

        if (v77 == 1)
        {
          v79 = *v76;
          v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
          v81 = sub_1E5BF6464();
          (*(*(v81 - 8) + 8))(&v76[v80], v81);
          if (v79 != 1)
          {
LABEL_18:
            v82 = 1;
            v83 = v123;
            v84 = v96;
LABEL_21:
            (*(v94 + 56))(v84, v82, 1, v95);
            sub_1E5B5F864(v84, v98, &qword_1ED03E228, &qword_1E5BF7C88);
            swift_storeEnumTagMultiPayload();
            sub_1E5B5F0B8();
            sub_1E5B5F228();
            sub_1E5BF6864();
            sub_1E5B5F804(v84, &qword_1ED03E228, &qword_1E5BF7C88);
LABEL_24:
            v89 = v78;
            sub_1E5B5F864(v78, v116, &qword_1ED03E240, &qword_1E5BF7C98);
            swift_storeEnumTagMultiPayload();
            sub_1E5B5F2D8(&qword_1ED03E270, &qword_1ED03E240, &qword_1E5BF7C98, sub_1E5B5F228);
            sub_1E5B5F3E0();
            v90 = v118;
            sub_1E5BF6864();
            sub_1E5B5F864(v90, v83, &qword_1ED03E218, &qword_1E5BF7C78);
            swift_storeEnumTagMultiPayload();
            sub_1E5B5EFB8();
            sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
            v62 = v121;
            sub_1E5BF6864();
            sub_1E5B5F804(v90, &qword_1ED03E218, &qword_1E5BF7C78);
            v71 = v89;
            v72 = &qword_1ED03E240;
            v73 = &qword_1E5BF7C98;
LABEL_25:
            sub_1E5B5F804(v71, v72, v73);
            goto LABEL_26;
          }

LABEL_20:
          v133 = v42;
          v134 = v41;
          v135 = v43;
          v85 = v93;
          sub_1E5B5D778(v58, v93);
          v84 = v96;
          sub_1E5B5F8D4(v85, v96, &qword_1ED03E220, &qword_1E5BF7C80);
          v82 = 0;
          v83 = v123;
          goto LABEL_21;
        }

        sub_1E5B5F804(v76, &qword_1ED03E238, &unk_1E5BF8A10);
      }

      v133 = v42;
      v134 = v41;
      v135 = v43;
      sub_1E5B5C350(0, 0, v58, v36);
      v86 = swift_allocObject();
      v87 = v124;
      *(v86 + 16) = v45;
      *(v86 + 24) = v87;
      *(v86 + 32) = v42;
      *(v86 + 40) = v41;
      *(v86 + 48) = v43;
      v88 = &v36[*(v129 + 36)];
      *v88 = sub_1E5B5FCF0;
      v88[1] = v86;
      v88[2] = 0;
      v88[3] = 0;
      sub_1E5B5F864(v36, v98, &qword_1ED03E258, &qword_1E5BF7CB0);
      swift_storeEnumTagMultiPayload();
      sub_1E5B5F5EC();
      sub_1E5B5F0B8();
      sub_1E5B5F228();
      sub_1E5BF6864();
      sub_1E5B5F804(v36, &qword_1ED03E258, &qword_1E5BF7CB0);
      v83 = v123;
      goto LABEL_24;
    }

    sub_1E5B5F804(v40, &qword_1ED03E260, &qword_1E5BF9190);
  }

  v133 = v42;
  v134 = v41;
  v135 = v43;
  sub_1E5B5C350(0, 0, a1, v36);
  v63 = swift_allocObject();
  v64 = v124;
  *(v63 + 16) = v45;
  *(v63 + 24) = v64;
  *(v63 + 32) = v42;
  *(v63 + 40) = v41;
  *(v63 + 48) = v43;
  v65 = &v36[*(v129 + 36)];
  *v65 = sub_1E5B5FCF0;
  v65[1] = v63;
  v65[2] = 0;
  v65[3] = 0;
  sub_1E5B5F864(v36, v126, &qword_1ED03E258, &qword_1E5BF7CB0);
  swift_storeEnumTagMultiPayload();
  sub_1E5B5F5EC();
  sub_1E5B5F0B8();
  sub_1E5B5F4C0();
  sub_1E5BF6864();
  v66 = v36;
  v67 = &qword_1ED03E258;
  v68 = &qword_1E5BF7CB0;
  return sub_1E5B5F804(v66, v67, v68);
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

unint64_t sub_1E5B5EFB8()
{
  result = qword_1ED03E268;
  if (!qword_1ED03E268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E218, &qword_1E5BF7C78);
    sub_1E5B5F2D8(&qword_1ED03E270, &qword_1ED03E240, &qword_1E5BF7C98, sub_1E5B5F228);
    sub_1E5B5F3E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E268);
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

unint64_t sub_1E5B5F0B8()
{
  result = qword_1ED03E278;
  if (!qword_1ED03E278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E258, &qword_1E5BF7CB0);
    sub_1E5B5F144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E278);
  }

  return result;
}

unint64_t sub_1E5B5F144()
{
  result = qword_1ED03E280;
  if (!qword_1ED03E280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E288, &qword_1E5BF7CD8);
    sub_1E5B5FC8C(&qword_1ED03E290, &qword_1ED03E298, &qword_1E5BF7CE0);
    sub_1E5B5FC8C(&qword_1ED03E2A0, &qword_1ED03E2A8, &qword_1E5BF7CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E280);
  }

  return result;
}

unint64_t sub_1E5B5F228()
{
  result = qword_1ED03E2B0;
  if (!qword_1ED03E2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E228, &qword_1E5BF7C88);
    sub_1E5B5F2D8(&qword_1ED03E2B8, &qword_1ED03E220, &qword_1E5BF7C80, sub_1E5B5F35C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E2B0);
  }

  return result;
}

uint64_t sub_1E5B5F2D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1E5B5F0B8();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5B5F35C()
{
  result = qword_1ED03E2C0;
  if (!qword_1ED03E2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E2C8, &qword_1E5BF7CF0);
    sub_1E5B5F144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E2C0);
  }

  return result;
}

unint64_t sub_1E5B5F3E0()
{
  result = qword_1ED03E2D0;
  if (!qword_1ED03E2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E200, &qword_1E5BF7C60);
    sub_1E5B5FC8C(&qword_1ED03E2D8, &qword_1ED03E1F8, &qword_1E5BF7C58);
    sub_1E5B5FC8C(&qword_1ED03E2E0, &qword_1ED03E1E8, &qword_1E5BF7C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E2D0);
  }

  return result;
}

unint64_t sub_1E5B5F4C0()
{
  result = qword_1ED03E2E8;
  if (!qword_1ED03E2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E248, &qword_1E5BF7CA0);
    sub_1E5B5EFB8();
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E2E8);
  }

  return result;
}

uint64_t sub_1E5B5F578()
{
  v0 = type metadata accessor for DownloadButton();
  sub_1E5B5C18C(v0);
  sub_1E5BF6E44();
}

uint64_t sub_1E5B5F5F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  return sub_1E5B5F578();
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E5B5F6A8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1E5B5F6F0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E5B5F734()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_1E5B5F77C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1E5B5F7AC()
{
  result = qword_1EE2C63B0;
  if (!qword_1EE2C63B0)
  {
    sub_1E5BF66D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C63B0);
  }

  return result;
}

uint64_t sub_1E5B5F804(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E5B5F864(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E5B5F8D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E5B5F94C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 52);
  v8 = *(v0 + 56);
  return sub_1E5B5CD40();
}

unint64_t sub_1E5B5F9E4()
{
  result = qword_1ED03E378;
  if (!qword_1ED03E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E378);
  }

  return result;
}

unint64_t sub_1E5B5FA38()
{
  result = qword_1ED03E390;
  if (!qword_1ED03E390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E380, &qword_1E5BF7EF8);
    sub_1E5B5FC8C(&qword_1ED03E388, &qword_1ED03E368, &qword_1E5BF7EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E390);
  }

  return result;
}

unint64_t sub_1E5B5FB44()
{
  result = qword_1ED03E3B8;
  if (!qword_1ED03E3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E3B0, &unk_1E5BF7F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E3B8);
  }

  return result;
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_1E5B5C0A8();

  return swift_deallocObject();
}

uint64_t sub_1E5B5FC0C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  return sub_1E5BF6C24();
}

uint64_t sub_1E5B5FC8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1E5B5FD34(uint64_t a1)
{
  v2 = sub_1E5B61120();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B5FD70(uint64_t a1)
{
  v2 = sub_1E5B61120();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B5FDAC(uint64_t a1)
{
  v2 = sub_1E5B610CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B5FDE8(uint64_t a1)
{
  v2 = sub_1E5B610CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B5FE24()
{
  v1 = *v0;
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](v1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B5FE6C()
{
  v1 = *v0;
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](v1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B5FEB0()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000014;
    if (v1 != 1)
    {
      v5 = 0xD00000000000001ALL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6570704177656976;
    }
  }

  else
  {
    v2 = 0xD000000000000020;
    v3 = 0xD000000000000015;
    if (v1 == 5)
    {
      v3 = 0xD000000000000020;
    }

    if (v1 != 3)
    {
      v2 = 0xD00000000000001ALL;
    }

    if (*v0 <= 4u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1E5B5FFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B6121C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B5FFDC(uint64_t a1)
{
  v2 = sub_1E5B60F28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B60018(uint64_t a1)
{
  v2 = sub_1E5B60F28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B60054(uint64_t a1)
{
  v2 = sub_1E5B61174();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B60090(uint64_t a1)
{
  v2 = sub_1E5B61174();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B600D4()
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](0);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B60118()
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](0);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B60164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5BF7444();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5B601E4(uint64_t a1)
{
  v2 = sub_1E5B60F7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B60220(uint64_t a1)
{
  v2 = sub_1E5B60F7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B6025C(uint64_t a1)
{
  v2 = sub_1E5B61078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B60298(uint64_t a1)
{
  v2 = sub_1E5B61078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B602D4(uint64_t a1)
{
  v2 = sub_1E5B61024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B60310(uint64_t a1)
{
  v2 = sub_1E5B61024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B6034C(uint64_t a1)
{
  v2 = sub_1E5B611C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B60388(uint64_t a1)
{
  v2 = sub_1E5B611C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DownloadButtonAction.encode(to:)(void *a1, uint64_t a2)
{
  v60 = a2;
  v61 = a2 & 0xFFFFFFFFFFFFLL;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C8, &qword_1E5BF7F20);
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3D0, &qword_1E5BF7F28);
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3D8, &qword_1E5BF7F30);
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3E0, &qword_1E5BF7F38);
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3E8, &qword_1E5BF7F40);
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v41 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3F0, &qword_1E5BF7F48);
  v43 = *(v18 - 8);
  v44 = v18;
  v19 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3F8, &qword_1E5BF7F50);
  v42 = *(v22 - 8);
  v23 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v41 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E400, &qword_1E5BF7F58);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v41 - v29;
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B60F28();
  v32 = v60;
  sub_1E5BF7524();
  if ((v32 & 0x1000000000000) == 0)
  {
    v71 = 6;
    sub_1E5B60F7C();
    v33 = v57;
    sub_1E5BF7394();
    v68 = BYTE4(v32);
    v67 = v32;
    v69 = BYTE5(v61) & 1;
    sub_1E5B60FD0();
    v34 = v59;
    sub_1E5BF7424();
    (*(v58 + 8))(v33, v34);
    return (*(v27 + 8))(v30, v26);
  }

  v36 = (v27 + 8);
  if (v61 > 2)
  {
    v37 = v26;
    if (v61 == 3)
    {
      v65 = 3;
      sub_1E5B610CC();
      v38 = v48;
      sub_1E5BF7394();
      v40 = v49;
      v39 = v50;
    }

    else if (v61 == 4)
    {
      v66 = 4;
      sub_1E5B61078();
      v38 = v51;
      sub_1E5BF7394();
      v40 = v52;
      v39 = v53;
    }

    else
    {
      v70 = 5;
      sub_1E5B61024();
      v38 = v54;
      sub_1E5BF7394();
      v40 = v55;
      v39 = v56;
    }

    goto LABEL_14;
  }

  v37 = v26;
  if (!v61)
  {
    v62 = 0;
    sub_1E5B611C8();
    sub_1E5BF7394();
    (*(v42 + 8))(v25, v22);
    return (*v36)(v30, v37);
  }

  if (v61 != 1)
  {
    v64 = 2;
    sub_1E5B61120();
    v38 = v45;
    sub_1E5BF7394();
    v40 = v46;
    v39 = v47;
LABEL_14:
    (*(v40 + 8))(v38, v39);
    return (*v36)(v30, v37);
  }

  v63 = 1;
  sub_1E5B61174();
  sub_1E5BF7394();
  (*(v43 + 8))(v21, v44);
  return (*v36)(v30, v37);
}

uint64_t DownloadButtonAction.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x1000000000000) != 0)
  {
    if ((a2 & 0xFFFFFFFFFFFFuLL) > 2)
    {
      if (v2 == 3)
      {
        v5 = 3;
      }

      else if (v2 == 4)
      {
        v5 = 4;
      }

      else
      {
        v5 = 5;
      }

      return MEMORY[0x1E6937C10](v5);
    }

    if (v2)
    {
      if (v2 == 1)
      {
        v5 = 1;
        return MEMORY[0x1E6937C10](v5);
      }

LABEL_10:
      v5 = 2;
      return MEMORY[0x1E6937C10](v5);
    }

LABEL_14:
    v5 = 0;
    return MEMORY[0x1E6937C10](v5);
  }

  v3 = a2 & 0xFFFFFFFFFFLL;
  MEMORY[0x1E6937C10](6);
  if ((v2 & 0x10000000000) != 0)
  {
    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  MEMORY[0x1E6937C10](1);
  if ((v3 & 0x100000000) != 0)
  {
    return sub_1E5BF74D4();
  }

  sub_1E5BF74D4();
  return sub_1E5BF74E4();
}

uint64_t DownloadButtonAction.hashValue.getter(unint64_t a1)
{
  sub_1E5BF74B4();
  DownloadButtonAction.hash(into:)(v3, a1 & 0xFFFFFFFFFFFFLL | ((HIWORD(a1) & 1) << 48));
  return sub_1E5BF7504();
}

unint64_t sub_1E5B60C3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E5B6146C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = WORD2(result);
    *(a2 + 6) = BYTE6(result) & 1;
  }

  return result;
}

uint64_t sub_1E5B60CB4()
{
  v1 = *v0 | (*(v0 + 2) << 32);
  v2 = *(v0 + 6);
  sub_1E5BF74B4();
  DownloadButtonAction.hash(into:)(v4, v1 | (v2 << 48));
  return sub_1E5BF7504();
}

uint64_t sub_1E5B60D38()
{
  v1 = *v0 | (*(v0 + 2) << 32);
  v2 = *(v0 + 6);
  sub_1E5BF74B4();
  DownloadButtonAction.hash(into:)(v4, v1 | (v2 << 48));
  return sub_1E5BF7504();
}

BOOL sub_1E5B60DD4(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFLL;
  v3 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a1 & 0x1000000000000) != 0)
  {
    if ((a1 & 0xFFFFFFFFFFFFuLL) > 2)
    {
      if (v2 == 3)
      {
        return (a2 & 0x1000000000000) != 0 && v3 == 3;
      }

      else if (v2 == 4)
      {
        return (a2 & 0x1000000000000) != 0 && v3 == 4;
      }

      else
      {
        return (a2 & 0x1000000000000) != 0 && v3 > 4;
      }
    }

    else if (v2)
    {
      if (v2 == 1)
      {
        return (a2 & 0x1000000000000) != 0 && v3 == 1;
      }

      else
      {
        return (a2 & 0x1000000000000) != 0 && v3 == 2;
      }
    }

    else
    {
      return (a2 & 0x1000000000000) != 0 && !v3;
    }
  }

  else
  {
    if ((a2 & 0x1000000000000) != 0)
    {
      return 0;
    }

    v5 = a2 & 0xFFFFFFFFFFLL;
    if ((a1 & 0x10000000000) != 0)
    {
      if ((a1 & 0xFFFFFFFFFFLL) != 0)
      {
        if ((a2 & 0x10000000000) == 0)
        {
          return 0;
        }

        return v5 != 0;
      }

      else
      {
        if ((a2 & 0x10000000000) == 0)
        {
          return 0;
        }

        return v5 == 0;
      }
    }

    else
    {
      if ((a2 & 0x10000000000) != 0)
      {
        return 0;
      }

      if ((a1 & 0x100000000) != 0)
      {
        return (a2 & 0x100000000) != 0;
      }

      else
      {
        return (a2 & 0x100000000) == 0 && *&a1 == *&a2;
      }
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E5B60F28()
{
  result = qword_1ED03E408;
  if (!qword_1ED03E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E408);
  }

  return result;
}

unint64_t sub_1E5B60F7C()
{
  result = qword_1ED03E410;
  if (!qword_1ED03E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E410);
  }

  return result;
}

unint64_t sub_1E5B60FD0()
{
  result = qword_1EE2C75F0;
  if (!qword_1EE2C75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C75F0);
  }

  return result;
}

unint64_t sub_1E5B61024()
{
  result = qword_1ED03E418;
  if (!qword_1ED03E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E418);
  }

  return result;
}

unint64_t sub_1E5B61078()
{
  result = qword_1ED03E420;
  if (!qword_1ED03E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E420);
  }

  return result;
}

unint64_t sub_1E5B610CC()
{
  result = qword_1ED03E428;
  if (!qword_1ED03E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E428);
  }

  return result;
}

unint64_t sub_1E5B61120()
{
  result = qword_1ED03E430;
  if (!qword_1ED03E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E430);
  }

  return result;
}

unint64_t sub_1E5B61174()
{
  result = qword_1ED03E438;
  if (!qword_1ED03E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E438);
  }

  return result;
}

unint64_t sub_1E5B611C8()
{
  result = qword_1ED03E440;
  if (!qword_1ED03E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E440);
  }

  return result;
}

uint64_t sub_1E5B6121C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5C075A0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E5C075C0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001E5C075E0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E5C07610 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001E5C07630 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5C07660 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

unint64_t sub_1E5B6146C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E4E0, &qword_1E5BF8730);
  v3 = *(v2 - 8);
  v68 = v2;
  v69 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v72 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E4E8, &qword_1E5BF8738);
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E4F0, &qword_1E5BF8740);
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E4F8, &qword_1E5BF8748);
  v62 = *(v12 - 8);
  v63 = v12;
  v13 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E500, &qword_1E5BF8750);
  v60 = *(v15 - 8);
  v61 = v15;
  v16 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v56 - v17;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E508, &qword_1E5BF8758);
  v58 = *(v59 - 8);
  v18 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v20 = &v56 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E510, &qword_1E5BF8760);
  v57 = *(v21 - 8);
  v22 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v56 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E518, &qword_1E5BF8768);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v56 - v28;
  v30 = a1[3];
  v31 = a1[4];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1E5B60F28();
  v32 = v76;
  sub_1E5BF7514();
  if (v32)
  {
    return __swift_destroy_boxed_opaque_existential_1(v75);
  }

  v33 = v24;
  v56 = v21;
  v34 = v20;
  v35 = v73;
  v36 = v74;
  v76 = v26;
  v37 = sub_1E5BF7374();
  v38 = (2 * *(v37 + 16)) | 1;
  v77 = v37;
  v78 = v37 + 32;
  v79 = 0;
  v80 = v38;
  v39 = sub_1E5B7FB08();
  if (v39 == 7 || v79 != v80 >> 1)
  {
    v45 = sub_1E5BF7284();
    swift_allocError();
    v47 = v46;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
    *v47 = &type metadata for DownloadButtonAction;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    (*(v76 + 8))(v29, v25);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v75);
  }

  if (v39 <= 2u)
  {
    if (v39)
    {
      if (v39 == 1)
      {
        LOBYTE(v81) = 1;
        sub_1E5B61174();
        sub_1E5BF72C4();
        (*(v58 + 8))(v34, v59);
        (*(v76 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v43 = 1;
        v42 = 1;
      }

      else
      {
        LOBYTE(v81) = 2;
        sub_1E5B61120();
        v51 = v71;
        sub_1E5BF72C4();
        (*(v60 + 8))(v51, v61);
        (*(v76 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v42 = 1;
        v43 = 2;
      }
    }

    else
    {
      LOBYTE(v81) = 0;
      sub_1E5B611C8();
      sub_1E5BF72C4();
      (*(v57 + 8))(v33, v56);
      (*(v76 + 8))(v29, v25);
      swift_unknownObjectRelease();
      v43 = 0;
      v42 = 1;
    }
  }

  else
  {
    if (v39 <= 4u)
    {
      v40 = v75;
      v41 = v76;
      if (v39 == 3)
      {
        LOBYTE(v81) = 3;
        sub_1E5B610CC();
        sub_1E5BF72C4();
        (*(v62 + 8))(v35, v63);
        (*(v41 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v42 = 1;
        v43 = 3;
      }

      else
      {
        LOBYTE(v81) = 4;
        sub_1E5B61078();
        v52 = v70;
        sub_1E5BF72C4();
        (*(v64 + 8))(v52, v65);
        (*(v41 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v42 = 1;
        v43 = 4;
      }

      v44 = v40;
      goto LABEL_23;
    }

    v50 = v76;
    if (v39 == 5)
    {
      LOBYTE(v81) = 5;
      sub_1E5B61024();
      sub_1E5BF72C4();
      (*(v66 + 8))(v36, v67);
      (*(v50 + 8))(v29, v25);
      swift_unknownObjectRelease();
      v42 = 1;
      v43 = 5;
    }

    else
    {
      LOBYTE(v81) = 6;
      sub_1E5B60F7C();
      v53 = v72;
      sub_1E5BF72C4();
      sub_1E5B62934();
      v54 = v68;
      sub_1E5BF7364();
      (*(v69 + 8))(v53, v54);
      (*(v50 + 8))(v29, v25);
      swift_unknownObjectRelease();
      v42 = 0;
      v55 = 0x10000000000;
      if (!v83)
      {
        v55 = 0;
      }

      v43 = v55 | v81 | (v82 << 32);
    }
  }

  v44 = v75;
LABEL_23:
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v43 | (v42 << 48);
}

unint64_t sub_1E5B61F04()
{
  result = qword_1ED03E448;
  if (!qword_1ED03E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E448);
  }

  return result;
}

_DWORD *__swift_memcpy7_4(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DownloadButtonAction(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 7))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DownloadButtonAction(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 7) = v3;
  return result;
}

uint64_t sub_1E5B61FC0(uint64_t a1)
{
  if (*(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5B61FE0(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    *(result + 6) = 1;
  }

  else
  {
    *(result + 6) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DownloadButtonAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DownloadButtonAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DownloadButtonAction.DownloadStatusUpdatedCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DownloadButtonAction.DownloadStatusUpdatedCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1E5B622BC()
{
  result = qword_1ED03E450;
  if (!qword_1ED03E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E450);
  }

  return result;
}

unint64_t sub_1E5B62314()
{
  result = qword_1ED03E458;
  if (!qword_1ED03E458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E458);
  }

  return result;
}

unint64_t sub_1E5B6236C()
{
  result = qword_1ED03E460;
  if (!qword_1ED03E460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E460);
  }

  return result;
}

unint64_t sub_1E5B623C4()
{
  result = qword_1ED03E468;
  if (!qword_1ED03E468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E468);
  }

  return result;
}

unint64_t sub_1E5B6241C()
{
  result = qword_1ED03E470;
  if (!qword_1ED03E470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E470);
  }

  return result;
}

unint64_t sub_1E5B62474()
{
  result = qword_1ED03E478;
  if (!qword_1ED03E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E478);
  }

  return result;
}

unint64_t sub_1E5B624CC()
{
  result = qword_1ED03E480;
  if (!qword_1ED03E480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E480);
  }

  return result;
}

unint64_t sub_1E5B62524()
{
  result = qword_1ED03E488;
  if (!qword_1ED03E488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E488);
  }

  return result;
}

unint64_t sub_1E5B6257C()
{
  result = qword_1ED03E490;
  if (!qword_1ED03E490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E490);
  }

  return result;
}

unint64_t sub_1E5B625D4()
{
  result = qword_1ED03E498;
  if (!qword_1ED03E498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E498);
  }

  return result;
}

unint64_t sub_1E5B6262C()
{
  result = qword_1ED03E4A0;
  if (!qword_1ED03E4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E4A0);
  }

  return result;
}

unint64_t sub_1E5B62684()
{
  result = qword_1ED03E4A8;
  if (!qword_1ED03E4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E4A8);
  }

  return result;
}

unint64_t sub_1E5B626DC()
{
  result = qword_1ED03E4B0;
  if (!qword_1ED03E4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E4B0);
  }

  return result;
}

unint64_t sub_1E5B62734()
{
  result = qword_1ED03E4B8;
  if (!qword_1ED03E4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E4B8);
  }

  return result;
}

unint64_t sub_1E5B6278C()
{
  result = qword_1ED03E4C0;
  if (!qword_1ED03E4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E4C0);
  }

  return result;
}

unint64_t sub_1E5B627E4()
{
  result = qword_1ED03E4C8;
  if (!qword_1ED03E4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E4C8);
  }

  return result;
}

unint64_t sub_1E5B6283C()
{
  result = qword_1ED03E4D0;
  if (!qword_1ED03E4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E4D0);
  }

  return result;
}

unint64_t sub_1E5B62894()
{
  result = qword_1ED03E4D8;
  if (!qword_1ED03E4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E4D8);
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

unint64_t sub_1E5B62934()
{
  result = qword_1ED03E528;
  if (!qword_1ED03E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E528);
  }

  return result;
}

uint64_t DownloadButtonEnvironment.init(resolveDownloadStatus:requestDownload:cancelDownload:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_1E5B629A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1E5B629F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1E5B62A38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E5B62AD4(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
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

  return sub_1E5BF6DB4();
}

uint64_t sub_1E5B62CA4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E540, qword_1E5BF88C8);
  sub_1E5B5FC8C(&qword_1EE2C6260, &qword_1ED03E540, qword_1E5BF88C8);

  return sub_1E5BF6614();
}

uint64_t sub_1E5B62D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  swift_getFunctionTypeMetadata1();
  return sub_1E5BF6524();
}

uint64_t (*sub_1E5B62DE4(uint64_t a1))(char a1)
{
  v2 = *(a1 + 36);
  v3 = *(a1 + 16);
  swift_getFunctionTypeMetadata1();
  sub_1E5BF6544();
  sub_1E5BF6534();
  v4 = swift_allocObject();
  v5 = *(a1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  *(v4 + 32) = v7;
  return sub_1E5B64B34;
}

uint64_t CreatePlanAlertView.init(store:createPlanAlertViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *a7 = sub_1E5B62F34;
  *(a7 + 8) = v14;
  *(a7 + 16) = 0;
  v15 = a7 + *(type metadata accessor for CreatePlanAlertView() + 36);
  return sub_1E5B62D44(a3, a4, a5, a6);
}

uint64_t sub_1E5B62F34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t CreatePlanAlertView.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a1;
  v26 = a3;
  swift_getWitnessTable();
  v5 = sub_1E5BF6884();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E530, &qword_1E5BF8830);
  v24 = *(a2 + 16);
  sub_1E5BF66E4();
  sub_1E5BF66E4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E538, &qword_1E5BF8838);
  swift_getTupleTypeMetadata2();
  sub_1E5BF6DA4();
  swift_getWitnessTable();
  sub_1E5BF6D24();
  v6 = sub_1E5BF66E4();
  v19 = v5;
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830);
  v41 = swift_getWitnessTable();
  v42 = MEMORY[0x1E697E5D8];
  v20 = swift_getWitnessTable();
  v33 = v5;
  v34 = v23;
  v35 = MEMORY[0x1E6981E70];
  v36 = v6;
  v37 = WitnessTable;
  v38 = v21;
  v39 = MEMORY[0x1E6981E60];
  v40 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = *(OpaqueTypeMetadata2 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  sub_1E5B62CA4();
  swift_getKeyPath();
  sub_1E5BF6E54();

  v15 = *(a2 + 24);
  v30 = v24;
  v31 = v15;
  v32 = v3;
  v27 = v24;
  v28 = v15;
  v29 = v3;
  swift_checkMetadataState();
  swift_checkMetadataState();
  sub_1E5BF6AF4();

  v16 = v8[2];
  v16(v14, v12, OpaqueTypeMetadata2);
  v17 = v8[1];
  v17(v12, OpaqueTypeMetadata2);
  v16(v26, v14, OpaqueTypeMetadata2);
  return (v17)(v14, OpaqueTypeMetadata2);
}

uint64_t sub_1E5B63420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  PlanAlertView = type metadata accessor for CreatePlanAlertView();
  v7 = *(PlanAlertView - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](PlanAlertView);
  v10 = &v19[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19[-v13];
  sub_1E5BF65D4();
  v15 = sub_1E5BF65E4();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  (*(v7 + 16))(v10, a1, PlanAlertView);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  (*(v7 + 32))(v17 + v16, v10, PlanAlertView);
  v20 = a2;
  v21 = a3;
  v22 = a1;
  return sub_1E5BF6C74();
}

uint64_t sub_1E5B63644@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5BF64B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5BF6F94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2CD210;
  type metadata accessor for CreatePlanAlertView();
  v7 = v6;
  sub_1E5B62CA4();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_1E5B637E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v23 = a1;
  v24 = a3;
  v25 = a4;
  sub_1E5BF66E4();
  sub_1E5BF66E4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E538, &qword_1E5BF8838);
  swift_getTupleTypeMetadata2();
  sub_1E5BF6DA4();
  swift_getWitnessTable();
  v5 = sub_1E5BF6D24();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = sub_1E5BF66E4();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - v16;
  sub_1E5BF6844();
  v26 = a2;
  v27 = v24;
  v28 = v23;
  sub_1E5BF6D14();
  WitnessTable = swift_getWitnessTable();
  sub_1E5BF6B24();
  (*(v6 + 8))(v9, v5);
  v29 = WitnessTable;
  v30 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v19 = v11[2];
  v19(v17, v15, v10);
  v20 = v11[1];
  v20(v15, v10);
  v19(v25, v17, v10);
  return (v20)(v17, v10);
}

uint64_t sub_1E5B63B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void, void)@<X2>, uint64_t a4@<X8>)
{
  v79 = a3;
  v84 = a4;
  v6 = sub_1E5BF64B4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v82 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5BF6F94();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v81 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5BF6F74();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v72[1] = v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  PlanAlertView = type metadata accessor for CreatePlanAlertView();
  v74 = *(PlanAlertView - 8);
  v80 = *(v74 + 64);
  v16 = MEMORY[0x1EEE9AC00](PlanAlertView);
  v77 = v72 - v17;
  v73 = a2;
  v75 = *(a2 - 8);
  v18 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1E5BF66E4();
  v83 = *(v76 - 8);
  v21 = *(v83 + 8);
  MEMORY[0x1EEE9AC00](v76);
  v23 = v72 - v22;
  v86 = sub_1E5BF66E4();
  v78 = *(v86 - 8);
  v24 = v78[8];
  v25 = MEMORY[0x1EEE9AC00](v86);
  v27 = v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v85 = v72 - v28;
  sub_1E5B62DE4(PlanAlertView);
  v30 = v29;
  v31 = a1;
  v72[2] = a1;
  sub_1E5B62CA4();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v32 = *(v30 + 32);
  v33 = *(v30 + 40);
  LOBYTE(v105[0]) = v96;
  v32(v105);

  sub_1E5BF6D84();
  v34 = v73;
  v35 = v79;
  sub_1E5BF6B14();
  (*(v75 + 8))(v20, v34);
  v36 = v74;
  v37 = v77;
  (*(v74 + 16))(v77, v31, PlanAlertView);
  v38 = v36;
  v39 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v34;
  *(v40 + 24) = v35;
  (*(v38 + 32))(v40 + v39, v37, PlanAlertView);
  v103 = v35;
  v104 = MEMORY[0x1E697E040];
  v41 = v76;
  WitnessTable = swift_getWitnessTable();
  sub_1E5BF6B44();

  (*(v83 + 1))(v23, v41);
  v101 = WitnessTable;
  v102 = MEMORY[0x1E69805D0];
  v43 = v86;
  v80 = swift_getWitnessTable();
  v44 = v78;
  v79 = v78[2];
  v79(v85, v27, v43);
  v45 = v44[1];
  v83 = v27;
  v78 = v45;
  (v45)(v27, v43);
  sub_1E5B62CA4();
  swift_getKeyPath();
  sub_1E5BF6E34();

  if (LOBYTE(v105[0]) != 2 && (v105[0] & 1) != 0 && (sub_1E5B62CA4(), swift_getKeyPath(), sub_1E5BF6E34(), , , *(&v90 + 1)))
  {
    sub_1E5BF6F64();
    sub_1E5BF6F54();
    sub_1E5BF6F44();

    sub_1E5BF6F54();
    sub_1E5BF6F84();
    if (qword_1EE2C6208 != -1)
    {
      swift_once();
    }

    v46 = qword_1EE2CD210;
    sub_1E5B62CA4();
    swift_getKeyPath();
    sub_1E5BF6E34();

    v47 = sub_1E5BF69D4();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    KeyPath = swift_getKeyPath();
    v55 = swift_getKeyPath();
    LOBYTE(v105[0]) = v51 & 1;
    LOBYTE(v95[0]) = 0;
    *&v96 = v47;
    *(&v96 + 1) = v49;
    LOBYTE(v97) = v51 & 1;
    *(&v97 + 1) = v53;
    *&v98 = KeyPath;
    *(&v98 + 1) = 2;
    LOBYTE(v99) = 0;
    *(&v99 + 1) = v55;
    v100 = 1;
  }

  else
  {
    sub_1E5BF6F24();
    if (qword_1EE2C6208 != -1)
    {
      swift_once();
    }

    v56 = qword_1EE2CD210;
    sub_1E5B62CA4();
    swift_getKeyPath();
    sub_1E5BF6E34();

    v57 = sub_1E5BF69D4();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v64 = swift_getKeyPath();
    v65 = swift_getKeyPath();
    LOBYTE(v105[0]) = v61 & 1;
    LOBYTE(v90) = 1;
    *&v96 = v57;
    *(&v96 + 1) = v59;
    LOBYTE(v97) = v61 & 1;
    *(&v97 + 1) = v63;
    *&v98 = v64;
    *(&v98 + 1) = 2;
    LOBYTE(v99) = 0;
    *(&v99 + 1) = v65;
    v100 = 257;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E548, &qword_1E5BF89A0);
  sub_1E5B64868();
  sub_1E5BF6864();
  v66 = v83;
  v68 = v85;
  v67 = v86;
  v79(v83, v85, v86);
  v92 = v105[2];
  v93 = v105[3];
  v94 = v106;
  v90 = v105[0];
  v91 = v105[1];
  v95[0] = v66;
  v95[1] = &v90;
  sub_1E5B649D8(v105, &v96);
  v89[0] = v67;
  v89[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E538, &qword_1E5BF8838);
  v87 = v80;
  v88 = sub_1E5B64A48();
  sub_1E5B62AD4(v95, 2uLL, v89);
  sub_1E5B64ACC(v105);
  v69 = v68;
  v70 = v78;
  (v78)(v69, v67);
  v98 = v92;
  v99 = v93;
  v100 = v94;
  v96 = v90;
  v97 = v91;
  sub_1E5B64ACC(&v96);
  return v70(v66, v67);
}

uint64_t sub_1E5B644E8()
{
  type metadata accessor for CreatePlanAlertView();
  sub_1E5B62CA4();
  sub_1E5BF6E44();
}

uint64_t View.createPlanAlert<A>(store:createPlanAlertViewBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a7;
  v21 = a5;
  PlanAlertView = type metadata accessor for CreatePlanAlertView();
  v15 = *(PlanAlertView - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](PlanAlertView);
  v18 = &v20 - v17;

  CreatePlanAlertView.init(store:createPlanAlertViewBuilder:)(a1, a2, a3, a4, a6, a8, v18);
  MEMORY[0x1E6937280](v18, v21, PlanAlertView, v22);
  return (*(v15 + 8))(v18, PlanAlertView);
}

void sub_1E5B646E8(uint64_t a1)
{
  sub_1E5B647B0();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_getFunctionTypeMetadata1();
    sub_1E5BF6544();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5B647B0()
{
  if (!qword_1EE2C63E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E540, qword_1E5BF88C8);
    sub_1E5B5FC8C(&qword_1EE2C6260, &qword_1ED03E540, qword_1E5BF88C8);
    v0 = sub_1E5BF6624();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C63E0);
    }
  }
}

unint64_t sub_1E5B64868()
{
  result = qword_1ED03E550;
  if (!qword_1ED03E550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E548, &qword_1E5BF89A0);
    sub_1E5B64920();
    sub_1E5B5FC8C(&qword_1ED03E578, &qword_1ED03E580, &qword_1E5BF89B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E550);
  }

  return result;
}

unint64_t sub_1E5B64920()
{
  result = qword_1ED03E558;
  if (!qword_1ED03E558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E560, &qword_1E5BF89A8);
    sub_1E5B5FC8C(&qword_1ED03E568, &qword_1ED03E570, &qword_1E5BF89B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E558);
  }

  return result;
}

uint64_t sub_1E5B649D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E538, &qword_1E5BF8838);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5B64A48()
{
  result = qword_1ED03E588;
  if (!qword_1ED03E588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E538, &qword_1E5BF8838);
    sub_1E5B64868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E588);
  }

  return result;
}

uint64_t sub_1E5B64ACC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E538, &qword_1E5BF8838);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5B64B34(char a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = a1 & 1;
  return v2(&v5);
}

uint64_t objectdestroy_7Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for CreatePlanAlertView() - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = *(v0 + v4 + 16);
  sub_1E5B5C0A8();
  v9 = v3[11];
  swift_getFunctionTypeMetadata1();
  v10 = sub_1E5BF6544();
  (*(*(v10 - 8) + 8))(v0 + v4 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_1E5B64C90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for CreatePlanAlertView() - 8) + 80);
  return sub_1E5B644E8();
}

uint64_t sub_1E5B64D10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1E5B63644(a1);
}

uint64_t sub_1E5B64D1C(unsigned __int8 *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1);
}

unint64_t static DownloadStatus.== infix(_:_:)(uint64_t a1, unint64_t a2)
{
  v2 = a2 & 0xFFFFFFFFFFLL;
  if ((a1 & 0x10000000000) != 0)
  {
    v4 = v2 == 0;
    v5 = (a2 >> 40) & (v2 == 0);
    v6 = !v4;
    if ((a1 & 0xFFFFFFFFFFLL) != 0)
    {
      return (a2 >> 40) & v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if ((a2 & 0x10000000000) != 0)
    {
      return 0;
    }

    if ((a1 & 0x100000000) != 0)
    {
      return (a2 & 0x100000000) != 0;
    }

    else
    {
      return (a2 & 0x100000000) == 0 && *&a1 == *&a2;
    }
  }
}

uint64_t sub_1E5B64DB4()
{
  *v0;
  if (*v0)
  {
    return 0x64616F6C6E776F64;
  }

  else
  {
    return 0x6F6C6E776F446F6ELL;
  }
}

uint64_t sub_1E5B64E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B68E80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B64E44(uint64_t a1)
{
  v2 = sub_1E5B653E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B64E80(uint64_t a1)
{
  v2 = sub_1E5B653E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B64EBC(uint64_t a1)
{
  v2 = sub_1E5B65438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B64EF8(uint64_t a1)
{
  v2 = sub_1E5B65438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B64F34(uint64_t a1)
{
  v2 = sub_1E5B6548C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B64F70(uint64_t a1)
{
  v2 = sub_1E5B6548C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B64FAC(uint64_t a1)
{
  v2 = sub_1E5B654E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B64FE8(uint64_t a1)
{
  v2 = sub_1E5B654E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DownloadStatus.encode(to:)(void *a1, uint64_t a2)
{
  v33 = a2 & 0xFFFFFFFFFFLL;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E590, &qword_1E5BF89F0);
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E598, &qword_1E5BF89F8);
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5A0, &qword_1E5BF8A00);
  v26 = *(v11 - 8);
  v27 = v11;
  v12 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5A8, &qword_1E5BF8A08);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v25 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B653E4();
  sub_1E5BF7524();
  if ((a2 & 0x10000000000) != 0)
  {
    if (v33)
    {
      v36 = 2;
      sub_1E5B65438();
      v14 = v28;
      sub_1E5BF7394();
      v24 = v29;
      v23 = v30;
    }

    else
    {
      v34 = 0;
      sub_1E5B654E0();
      sub_1E5BF7394();
      v24 = v26;
      v23 = v27;
    }

    (*(v24 + 8))(v14, v23);
    return (*(v16 + 8))(v19, v15);
  }

  else
  {
    v35 = 1;
    sub_1E5B6548C();
    sub_1E5BF7394();
    v21 = v32;
    sub_1E5BF73C4();
    (*(v31 + 8))(v10, v21);
    return (*(v16 + 8))(v19, v15);
  }
}

unint64_t sub_1E5B653E4()
{
  result = qword_1EE2C7628;
  if (!qword_1EE2C7628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7628);
  }

  return result;
}

unint64_t sub_1E5B65438()
{
  result = qword_1ED03E5B0;
  if (!qword_1ED03E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E5B0);
  }

  return result;
}

unint64_t sub_1E5B6548C()
{
  result = qword_1ED03E5B8;
  if (!qword_1ED03E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E5B8);
  }

  return result;
}

unint64_t sub_1E5B654E0()
{
  result = qword_1EE2C7640[0];
  if (!qword_1EE2C7640[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C7640);
  }

  return result;
}

uint64_t DownloadStatus.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = a2 & 0xFFFFFFFFFFLL;
  if ((a2 & 0x10000000000) != 0)
  {
    if (v2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    return MEMORY[0x1E6937C10](v4);
  }

  else
  {
    MEMORY[0x1E6937C10](1);
    if ((v2 & 0x100000000) != 0)
    {
      return sub_1E5BF74D4();
    }

    else
    {
      sub_1E5BF74D4();
      return sub_1E5BF74E4();
    }
  }
}

uint64_t DownloadStatus.hashValue.getter(unint64_t a1)
{
  sub_1E5BF74B4();
  DownloadStatus.hash(into:)(v3, a1 & 0xFFFFFFFFFFLL | (((a1 >> 40) & 1) << 40));
  return sub_1E5BF7504();
}

unint64_t sub_1E5B65638@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E5B68FA0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = BYTE4(result);
    *(a2 + 5) = BYTE5(result) & 1;
  }

  return result;
}

uint64_t sub_1E5B656B0()
{
  v1 = *v0 | (*(v0 + 4) << 32);
  v2 = *(v0 + 5);
  sub_1E5BF74B4();
  DownloadStatus.hash(into:)(v4, v1 | (v2 << 40));
  return sub_1E5BF7504();
}

uint64_t sub_1E5B65734()
{
  v1 = *v0 | (*(v0 + 4) << 32);
  v2 = *(v0 + 5);
  sub_1E5BF74B4();
  DownloadStatus.hash(into:)(v4, v1 | (v2 << 40));
  return sub_1E5BF7504();
}

uint64_t sub_1E5B6578C(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1 | (*(a1 + 4) << 32);
  v3 = *a2 | (*(a2 + 4) << 32);
  if (*(a1 + 5) != 1)
  {
    if (*(a2 + 5))
    {
      return 0;
    }

    if ((v2 & 0x100000000) != 0)
    {
      if ((v3 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      if ((v3 & 0x100000000) != 0)
      {
        return 0;
      }

      *(a2 + 4);
      *(a1 + 4);
      if (*a1 != *a2)
      {
        return 0;
      }
    }

    return 1;
  }

  if ((v2 & 0xFFFFFFFFFFLL) != 0)
  {
    if ((v3 & 0xFFFFFFFFFFLL) != 0)
    {
      return *(a2 + 5);
    }

    else
    {
      return 0;
    }
  }

  else if ((v3 & 0xFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  else
  {
    return *(a2 + 5);
  }
}

uint64_t (*DownloadButtonState.downloadState.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t (*DownloadButtonState.removeConfirmation.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 60);
  return result;
}

uint64_t DownloadButtonState.init(identifier:locale:isNetworkAvailable:isSubscribed:shouldShowProgress:downloadState:presentationContextKey:removeConfirmation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a10 - 8) + 32))(a9, a1, a10);
  v18 = type metadata accessor for DownloadButtonState();
  v19 = v18[9];
  v20 = sub_1E5BF64B4();
  (*(*(v20 - 8) + 32))(a9 + v19, a2, v20);
  sub_1E5B5F8D4(a3, a9 + v18[11], &qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5B5F8D4(a4, a9 + v18[12], &qword_1ED03E238, &unk_1E5BF8A10);
  *(a9 + v18[10]) = a5;
  sub_1E5B5F8D4(a6, a9 + v18[13], &qword_1ED03E260, &qword_1E5BF9190);
  v21 = v18[14];
  v22 = sub_1E5BF6494();
  (*(*(v22 - 8) + 32))(a9 + v21, a7, v22);
  return sub_1E5B5F8D4(a8, a9 + v18[15], &qword_1ED03E5C0, &unk_1E5BF8A20);
}

uint64_t static DownloadButtonState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) + 8);
  if ((sub_1E5BF6F14() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for DownloadButtonState();
  if ((MEMORY[0x1E6936BF0](a1 + v7[9], a2 + v7[9]) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v7[10]) != *(a2 + v7[10]))
  {
    return 0;
  }

  v8 = v7[11];
  if ((sub_1E5BF6DE4() & 1) == 0)
  {
    return 0;
  }

  v9 = v7[12];
  if ((sub_1E5BF6DE4() & 1) == 0)
  {
    return 0;
  }

  v10 = v7[13];
  sub_1E5B695CC();
  if ((sub_1E5BF6DE4() & 1) == 0)
  {
    return 0;
  }

  v11 = v7[14];
  if ((sub_1E5BF6474() & 1) == 0)
  {
    return 0;
  }

  v12 = v7[15];

  return sub_1E5B65C60(a1 + v12, a2 + v12);
}

uint64_t sub_1E5B65C60(uint64_t a1, uint64_t a2)
{
  v44 = sub_1E5BF6494();
  v42 = *(v44 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E790, &qword_1E5BF9150);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v40 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v39 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E798, &qword_1E5BF9158);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v39 - v22;
  v24 = *(v21 + 56);
  sub_1E5B5F864(a1, &v39 - v22, &qword_1ED03E5C0, &unk_1E5BF8A20);
  sub_1E5B5F864(a2, &v23[v24], &qword_1ED03E5C0, &unk_1E5BF8A20);
  v25 = *(v10 + 48);
  if (v25(v23, 1, v9) == 1)
  {
    if (v25(&v23[v24], 1, v9) == 1)
    {
LABEL_3:
      sub_1E5B5F804(v23, &qword_1ED03E5C0, &unk_1E5BF8A20);
      return 1;
    }

    goto LABEL_6;
  }

  sub_1E5B5F864(v23, v18, &qword_1ED03E5C0, &unk_1E5BF8A20);
  if (v25(&v23[v24], 1, v9) != 1)
  {
    v29 = v41;
    sub_1E5B5F8D4(&v23[v24], v41, &qword_1ED03E5E8, &unk_1E5BF9600);
    v30 = *(v6 + 48);
    v31 = v43;
    sub_1E5B5F864(v18, v43, &qword_1ED03E5E8, &unk_1E5BF9600);
    sub_1E5B5F804(v18, &qword_1ED03E5E8, &unk_1E5BF9600);
    sub_1E5B5F864(v29, v31 + v30, &qword_1ED03E5E8, &unk_1E5BF9600);
    v32 = v42;
    v33 = *(v42 + 48);
    v34 = v44;
    if (v33(v31, 1, v44) == 1)
    {
      sub_1E5B5F804(v29, &qword_1ED03E5E8, &unk_1E5BF9600);
      if (v33(v31 + v30, 1, v34) == 1)
      {
        sub_1E5B5F804(v31, &qword_1ED03E5E8, &unk_1E5BF9600);
        goto LABEL_3;
      }
    }

    else
    {
      v35 = v40;
      sub_1E5B5F864(v31, v40, &qword_1ED03E5E8, &unk_1E5BF9600);
      if (v33(v31 + v30, 1, v34) != 1)
      {
        v36 = v39;
        (*(v32 + 32))(v39, v31 + v30, v34);
        sub_1E5B6AD6C(&qword_1ED03E7A0, MEMORY[0x1E69695A8]);
        v37 = sub_1E5BF6F14();
        v38 = *(v32 + 8);
        v38(v36, v34);
        sub_1E5B5F804(v29, &qword_1ED03E5E8, &unk_1E5BF9600);
        v38(v35, v34);
        sub_1E5B5F804(v31, &qword_1ED03E5E8, &unk_1E5BF9600);
        if (v37)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }

      sub_1E5B5F804(v29, &qword_1ED03E5E8, &unk_1E5BF9600);
      (*(v32 + 8))(v35, v34);
    }

    sub_1E5B5F804(v31, &qword_1ED03E790, &qword_1E5BF9150);
LABEL_13:
    v27 = &qword_1ED03E5C0;
    v28 = &unk_1E5BF8A20;
    goto LABEL_14;
  }

  sub_1E5B5F804(v18, &qword_1ED03E5E8, &unk_1E5BF9600);
LABEL_6:
  v27 = &qword_1ED03E798;
  v28 = &qword_1E5BF9158;
LABEL_14:
  sub_1E5B5F804(v23, v27, v28);
  return 0;
}

uint64_t sub_1E5B66224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResumeWorkoutConfirmation(0);
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E770, &unk_1E5BF9130);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E778, &qword_1E5C00D60);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v45 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v44 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E780, &qword_1E5BF9140);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v44 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E788, &qword_1E5BF9148);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v44 - v23;
  v25 = *(v22 + 56);
  sub_1E5B5F864(a1, &v44 - v23, &qword_1ED03E780, &qword_1E5BF9140);
  sub_1E5B5F864(a2, &v24[v25], &qword_1ED03E780, &qword_1E5BF9140);
  v26 = *(v11 + 48);
  if (v26(v24, 1, v10) == 1)
  {
    if (v26(&v24[v25], 1, v10) == 1)
    {
LABEL_3:
      sub_1E5B5F804(v24, &qword_1ED03E780, &qword_1E5BF9140);
      return 1;
    }

    goto LABEL_6;
  }

  sub_1E5B5F864(v24, v19, &qword_1ED03E780, &qword_1E5BF9140);
  if (v26(&v24[v25], 1, v10) != 1)
  {
    v30 = v46;
    sub_1E5B5F8D4(&v24[v25], v46, &qword_1ED03E778, &qword_1E5C00D60);
    v31 = *(v7 + 48);
    v32 = v49;
    sub_1E5B5F864(v19, v49, &qword_1ED03E778, &qword_1E5C00D60);
    sub_1E5B5F804(v19, &qword_1ED03E778, &qword_1E5C00D60);
    sub_1E5B5F864(v30, v32 + v31, &qword_1ED03E778, &qword_1E5C00D60);
    v33 = v48;
    v34 = *(v47 + 48);
    if (v34(v32, 1, v48) == 1)
    {
      sub_1E5B5F804(v30, &qword_1ED03E778, &qword_1E5C00D60);
      if (v34(v32 + v31, 1, v33) == 1)
      {
        sub_1E5B5F804(v32, &qword_1ED03E778, &qword_1E5C00D60);
        goto LABEL_3;
      }
    }

    else
    {
      v35 = v45;
      sub_1E5B5F864(v32, v45, &qword_1ED03E778, &qword_1E5C00D60);
      if (v34(v32 + v31, 1, v33) != 1)
      {
        v38 = v32 + v31;
        v39 = v44;
        sub_1E5B6AD04(v38, v44, type metadata accessor for ResumeWorkoutConfirmation);
        v40 = sub_1E5BF6474();
        sub_1E5B5F804(v30, &qword_1ED03E778, &qword_1E5C00D60);
        if ((v40 & 1) != 0 && *(v35 + *(v33 + 20)) == *(v39 + *(v33 + 20)))
        {
          v41 = *(v33 + 24);
          v42 = *(v35 + v41);
          v43 = *(v39 + v41);
          sub_1E5B6ACA4(v39, type metadata accessor for ResumeWorkoutConfirmation);
          sub_1E5B6ACA4(v35, type metadata accessor for ResumeWorkoutConfirmation);
          sub_1E5B5F804(v32, &qword_1ED03E778, &qword_1E5C00D60);
          if (v42 == v43)
          {
            goto LABEL_3;
          }

          goto LABEL_19;
        }

        sub_1E5B6ACA4(v39, type metadata accessor for ResumeWorkoutConfirmation);
        sub_1E5B6ACA4(v35, type metadata accessor for ResumeWorkoutConfirmation);
        v36 = &qword_1ED03E778;
        v37 = &qword_1E5C00D60;
LABEL_18:
        sub_1E5B5F804(v32, v36, v37);
LABEL_19:
        v28 = &qword_1ED03E780;
        v29 = &qword_1E5BF9140;
        goto LABEL_20;
      }

      sub_1E5B5F804(v30, &qword_1ED03E778, &qword_1E5C00D60);
      sub_1E5B6ACA4(v35, type metadata accessor for ResumeWorkoutConfirmation);
    }

    v36 = &qword_1ED03E770;
    v37 = &unk_1E5BF9130;
    goto LABEL_18;
  }

  sub_1E5B5F804(v19, &qword_1ED03E778, &qword_1E5C00D60);
LABEL_6:
  v28 = &qword_1ED03E788;
  v29 = &qword_1E5BF9148;
LABEL_20:
  sub_1E5B5F804(v24, v28, v29);
  return 0;
}

uint64_t sub_1E5B66818(uint64_t a1, uint64_t a2)
{
  v52 = type metadata accessor for PlannedWorkoutConfirmation(0);
  v50 = *(v52 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E750, &unk_1E5BF9110);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E758, &unk_1E5BFB490);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v49 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E760, &qword_1E5BF9120);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E768, &qword_1E5BF9128);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v48 - v22;
  v24 = *(v21 + 56);
  sub_1E5B5F864(a1, &v48 - v22, &qword_1ED03E760, &qword_1E5BF9120);
  sub_1E5B5F864(a2, &v23[v24], &qword_1ED03E760, &qword_1E5BF9120);
  v25 = *(v10 + 48);
  if (v25(v23, 1, v9) == 1)
  {
    if (v25(&v23[v24], 1, v9) == 1)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1E5B5F864(v23, v18, &qword_1ED03E760, &qword_1E5BF9120);
  if (v25(&v23[v24], 1, v9) != 1)
  {
    v28 = v51;
    sub_1E5B5F8D4(&v23[v24], v51, &qword_1ED03E758, &unk_1E5BFB490);
    v29 = *(v6 + 48);
    v30 = v53;
    sub_1E5B5F864(v18, v53, &qword_1ED03E758, &unk_1E5BFB490);
    sub_1E5B5F804(v18, &qword_1ED03E758, &unk_1E5BFB490);
    sub_1E5B5F864(v28, v30 + v29, &qword_1ED03E758, &unk_1E5BFB490);
    v31 = *(v50 + 48);
    v32 = v52;
    if (v31(v30, 1, v52) == 1)
    {
      sub_1E5B5F804(v28, &qword_1ED03E758, &unk_1E5BFB490);
      if (v31(v30 + v29, 1, v32) == 1)
      {
LABEL_9:
        sub_1E5B5F804(v30, &qword_1ED03E758, &unk_1E5BFB490);
LABEL_10:
        sub_1E5B5F804(v23, &qword_1ED03E760, &qword_1E5BF9120);
        return 1;
      }

      goto LABEL_13;
    }

    v34 = v49;
    sub_1E5B5F864(v30, v49, &qword_1ED03E758, &unk_1E5BFB490);
    if (v31(v30 + v29, 1, v32) == 1)
    {
      sub_1E5B5F804(v28, &qword_1ED03E758, &unk_1E5BFB490);
      sub_1E5B6ACA4(v34, type metadata accessor for PlannedWorkoutConfirmation);
LABEL_13:
      v35 = &qword_1ED03E750;
      v36 = &unk_1E5BF9110;
LABEL_25:
      sub_1E5B5F804(v30, v35, v36);
      v26 = &qword_1ED03E760;
      v27 = &qword_1E5BF9120;
      goto LABEL_26;
    }

    v37 = v30 + v29;
    v38 = v48;
    sub_1E5B6AD04(v37, v48, type metadata accessor for PlannedWorkoutConfirmation);
    if (sub_1E5BF6474() & 1) != 0 && *(v34 + v32[5]) == *(v38 + v32[5]) && *(v34 + v32[6]) == *(v38 + v32[6]) && ((v39 = v32[7], v40 = *(v34 + v39), v41 = *(v34 + v39 + 8), v42 = (v38 + v39), v40 == *v42) && v41 == v42[1] || (sub_1E5BF7444()))
    {
      v43 = v32[8];
      v44 = *(v34 + v43);
      v45 = *(v34 + v43 + 8);
      v46 = (v38 + v43);
      if (v44 == *v46 && v45 == v46[1])
      {
        sub_1E5B5F804(v28, &qword_1ED03E758, &unk_1E5BFB490);
LABEL_28:
        sub_1E5B6ACA4(v38, type metadata accessor for PlannedWorkoutConfirmation);
        sub_1E5B6ACA4(v34, type metadata accessor for PlannedWorkoutConfirmation);
        goto LABEL_9;
      }

      v47 = sub_1E5BF7444();
      sub_1E5B5F804(v28, &qword_1ED03E758, &unk_1E5BFB490);
      if (v47)
      {
        goto LABEL_28;
      }
    }

    else
    {
      sub_1E5B5F804(v28, &qword_1ED03E758, &unk_1E5BFB490);
    }

    sub_1E5B6ACA4(v38, type metadata accessor for PlannedWorkoutConfirmation);
    sub_1E5B6ACA4(v34, type metadata accessor for PlannedWorkoutConfirmation);
    v35 = &qword_1ED03E758;
    v36 = &unk_1E5BFB490;
    goto LABEL_25;
  }

  sub_1E5B5F804(v18, &qword_1ED03E758, &unk_1E5BFB490);
LABEL_6:
  v26 = &qword_1ED03E768;
  v27 = &qword_1E5BF9128;
LABEL_26:
  sub_1E5B5F804(v23, v26, v27);
  return 0;
}

uint64_t sub_1E5B66E88(uint64_t a1, uint64_t a2)
{
  v46 = type metadata accessor for FutureWorkoutConfirmation(0);
  v44 = *(v46 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v42 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E730, &unk_1E5BF90F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E738, &unk_1E5BFE1C0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v43 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v42 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E740, &qword_1E5BF9100);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v42 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E748, &qword_1E5BF9108);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v42 - v22;
  v24 = *(v21 + 56);
  sub_1E5B5F864(a1, &v42 - v22, &qword_1ED03E740, &qword_1E5BF9100);
  sub_1E5B5F864(a2, &v23[v24], &qword_1ED03E740, &qword_1E5BF9100);
  v25 = *(v10 + 48);
  if (v25(v23, 1, v9) == 1)
  {
    if (v25(&v23[v24], 1, v9) == 1)
    {
LABEL_3:
      sub_1E5B5F804(v23, &qword_1ED03E740, &qword_1E5BF9100);
      return 1;
    }

    goto LABEL_6;
  }

  sub_1E5B5F864(v23, v18, &qword_1ED03E740, &qword_1E5BF9100);
  if (v25(&v23[v24], 1, v9) != 1)
  {
    v29 = v45;
    sub_1E5B5F8D4(&v23[v24], v45, &qword_1ED03E738, &unk_1E5BFE1C0);
    v30 = *(v6 + 48);
    v31 = v47;
    sub_1E5B5F864(v18, v47, &qword_1ED03E738, &unk_1E5BFE1C0);
    sub_1E5B5F804(v18, &qword_1ED03E738, &unk_1E5BFE1C0);
    sub_1E5B5F864(v29, v31 + v30, &qword_1ED03E738, &unk_1E5BFE1C0);
    v32 = *(v44 + 48);
    v33 = v46;
    if (v32(v31, 1, v46) == 1)
    {
      sub_1E5B5F804(v29, &qword_1ED03E738, &unk_1E5BFE1C0);
      if (v32(v31 + v30, 1, v33) == 1)
      {
        sub_1E5B5F804(v31, &qword_1ED03E738, &unk_1E5BFE1C0);
        goto LABEL_3;
      }
    }

    else
    {
      v34 = v43;
      sub_1E5B5F864(v31, v43, &qword_1ED03E738, &unk_1E5BFE1C0);
      if (v32(v31 + v30, 1, v33) != 1)
      {
        v38 = v31 + v30;
        v39 = v42;
        sub_1E5B6AD04(v38, v42, type metadata accessor for FutureWorkoutConfirmation);
        if ((sub_1E5BF6474() & 1) != 0 && *(v34 + v33[5]) == *(v39 + v33[5]) && *(v34 + v33[6]) == *(v39 + v33[6]))
        {
          v40 = v33[7];
          v41 = sub_1E5BF6434();
          sub_1E5B6ACA4(v39, type metadata accessor for FutureWorkoutConfirmation);
          sub_1E5B5F804(v29, &qword_1ED03E738, &unk_1E5BFE1C0);
          sub_1E5B6ACA4(v34, type metadata accessor for FutureWorkoutConfirmation);
          sub_1E5B5F804(v31, &qword_1ED03E738, &unk_1E5BFE1C0);
          if (v41)
          {
            goto LABEL_3;
          }

          goto LABEL_20;
        }

        sub_1E5B6ACA4(v39, type metadata accessor for FutureWorkoutConfirmation);
        sub_1E5B5F804(v29, &qword_1ED03E738, &unk_1E5BFE1C0);
        sub_1E5B6ACA4(v34, type metadata accessor for FutureWorkoutConfirmation);
        v37 = v31;
        v35 = &qword_1ED03E738;
        v36 = &unk_1E5BFE1C0;
LABEL_19:
        sub_1E5B5F804(v37, v35, v36);
LABEL_20:
        v27 = &qword_1ED03E740;
        v28 = &qword_1E5BF9100;
        goto LABEL_21;
      }

      sub_1E5B5F804(v29, &qword_1ED03E738, &unk_1E5BFE1C0);
      sub_1E5B6ACA4(v34, type metadata accessor for FutureWorkoutConfirmation);
    }

    v35 = &qword_1ED03E730;
    v36 = &unk_1E5BF90F0;
    v37 = v31;
    goto LABEL_19;
  }

  sub_1E5B5F804(v18, &qword_1ED03E738, &unk_1E5BFE1C0);
LABEL_6:
  v27 = &qword_1ED03E748;
  v28 = &qword_1E5BF9108;
LABEL_21:
  sub_1E5B5F804(v23, v27, v28);
  return 0;
}

uint64_t sub_1E5B674AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5C07790 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5C077B0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7263736275537369 && a2 == 0xEC00000064656269 || (sub_1E5BF7444() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xED00006574617453 || (sub_1E5BF7444() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5C077D0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5C077F0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1E5BF7444();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1E5B67794(unsigned __int8 a1)
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](a1);
  return sub_1E5BF7504();
}

unint64_t sub_1E5B677DC(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000016;
  if (a1 != 6)
  {
    v2 = 0xD000000000000012;
  }

  v3 = 0x7263736275537369;
  if (a1 != 4)
  {
    v3 = 0x64616F6C6E776F64;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x656C61636F6CLL;
  }

  if (a1 > 1u)
  {
    v1 = 0xD000000000000012;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

BOOL sub_1E5B67900(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1E5B6775C(*a1, *a2);
}

uint64_t sub_1E5B67914(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E5B67794(*v1);
}

uint64_t sub_1E5B67920(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1E5B6776C(a1, *v2);
}

uint64_t sub_1E5B6792C(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1E5B6776C(v7, *v2);
  return sub_1E5BF7504();
}

unint64_t sub_1E5B67974(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E5B677DC(*v1);
}

uint64_t sub_1E5B67980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E5B674AC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5B679B0@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1E5B6AC9C();
  *a2 = result;
  return result;
}

uint64_t sub_1E5B679DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5B67A30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t DownloadButtonState.encode(to:)(void *a1, uint64_t a2)
{
  v24[0] = a2;
  v3 = *(a2 + 24);
  v24[2] = *(a2 + 16);
  type metadata accessor for DownloadButtonState.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1E5BF7434();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v24 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v24[1];
  sub_1E5BF7524();
  v32 = 0;
  v11 = *(v3 + 16);
  v12 = v24[3];
  sub_1E5BF7424();
  if (v12)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = v5;
  v15 = v24[0];
  v16 = *(v24[0] + 36);
  v31 = 1;
  sub_1E5BF64B4();
  sub_1E5B6AD6C(&qword_1ED03E5C8, MEMORY[0x1E6969770]);
  sub_1E5BF7424();
  v17 = *(v10 + *(v15 + 40));
  v30 = 2;
  sub_1E5BF73F4();
  v18 = *(v15 + 44);
  v29 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5B6968C(&qword_1ED03E5D0);
  sub_1E5BF7424();
  v19 = *(v24[0] + 48);
  v28 = 4;
  sub_1E5BF7424();
  v20 = v24[0];
  v21 = *(v24[0] + 52);
  v27 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  sub_1E5B696FC(&qword_1ED03E5D8);
  sub_1E5BF7424();
  v22 = *(v20 + 56);
  v26 = 6;
  sub_1E5BF6494();
  sub_1E5B6AD6C(&qword_1EE2C7AF0, MEMORY[0x1E69695A8]);
  sub_1E5BF7424();
  v23 = *(v20 + 60);
  v25 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  sub_1E5B69774(&qword_1ED03E5E0);
  sub_1E5BF7424();
  return (*(v14 + 8))(v8, v4);
}

uint64_t DownloadButtonState.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1E5BF6494();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v31 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v31 - v16;
  v18 = *(a2 + 16);
  v19 = *(*(a2 + 24) + 24);
  sub_1E5BF6EF4();
  v20 = *(a2 + 36);
  sub_1E5BF64B4();
  sub_1E5B6AD6C(&qword_1ED03E5F0, MEMORY[0x1E6969770]);
  sub_1E5BF6EF4();
  v21 = *(v3 + *(a2 + 40));
  sub_1E5BF74D4();
  v22 = *(a2 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  sub_1E5BF6DF4();
  v23 = v3 + *(a2 + 48);
  sub_1E5BF6DF4();
  v24 = *(a2 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  sub_1E5B69638();
  sub_1E5BF6DF4();
  v25 = *(a2 + 56);
  sub_1E5B6AD6C(&qword_1EE2C7AE8, MEMORY[0x1E69695A8]);
  sub_1E5BF6EF4();
  sub_1E5B5F864(v3 + *(a2 + 60), v17, &qword_1ED03E5C0, &unk_1E5BF8A20);
  if ((*(v9 + 48))(v17, 1, v8) == 1)
  {
    return MEMORY[0x1E6937C10](0);
  }

  v27 = v33;
  sub_1E5B5F8D4(v17, v33, &qword_1ED03E5E8, &unk_1E5BF9600);
  MEMORY[0x1E6937C10](1);
  v28 = v32;
  sub_1E5B5F864(v27, v32, &qword_1ED03E5E8, &unk_1E5BF9600);
  v29 = v34;
  if ((*(v34 + 48))(v28, 1, v5) == 1)
  {
    sub_1E5BF74D4();
  }

  else
  {
    v30 = v31;
    (*(v29 + 32))(v31, v28, v5);
    sub_1E5BF74D4();
    sub_1E5BF6EF4();
    (*(v29 + 8))(v30, v5);
  }

  return sub_1E5B5F804(v27, &qword_1ED03E5E8, &unk_1E5BF9600);
}

uint64_t DownloadButtonState.hashValue.getter(uint64_t a1)
{
  sub_1E5BF74B4();
  DownloadButtonState.hash(into:)(v3, a1);
  return sub_1E5BF7504();
}

uint64_t DownloadButtonState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v7 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v53 - v8;
  v9 = sub_1E5BF6494();
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  v12 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v53 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  v14 = *(*(v62 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v62);
  v60 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v53 - v17;
  v65 = sub_1E5BF64B4();
  v68 = *(v65 - 8);
  v18 = *(v68 + 64);
  v19 = MEMORY[0x1EEE9AC00](v65);
  v67 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(a2 - 8);
  v21 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v73 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DownloadButtonState.CodingKeys();
  swift_getWitnessTable();
  v23 = sub_1E5BF7384();
  v24 = *(v23 - 8);
  v70 = v23;
  v71 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v53 - v26;
  v72 = a2;
  v69 = a3;
  v28 = type metadata accessor for DownloadButtonState();
  v29 = *(v28 - 1);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v53 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v74 = v27;
  v34 = v75;
  sub_1E5BF7514();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v67;
  v53 = v29;
  v75 = v32;
  v36 = v68;
  v83 = 0;
  v37 = *(v69 + 8);
  v38 = v72;
  sub_1E5BF7364();
  v39 = v75;
  (*(v66 + 32))(v75, v73, v38);
  v82 = 1;
  sub_1E5B6AD6C(&qword_1ED03E600, MEMORY[0x1E6969770]);
  v40 = v35;
  v41 = v65;
  sub_1E5BF7364();
  (*(v36 + 32))(&v39[v28[9]], v40, v41);
  v81 = 2;
  v73 = 0;
  v39[v28[10]] = sub_1E5BF7334() & 1;
  v80 = 3;
  v42 = sub_1E5B6968C(&qword_1ED03E608);
  v43 = v61;
  v69 = v42;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v43, &v39[v28[11]], &qword_1ED03E238, &unk_1E5BF8A10);
  v79 = 4;
  v44 = v60;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v44, &v39[v28[12]], &qword_1ED03E238, &unk_1E5BF8A10);
  v78 = 5;
  sub_1E5B696FC(&qword_1ED03E610);
  v45 = v59;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v45, &v39[v28[13]], &qword_1ED03E260, &qword_1E5BF9190);
  v77 = 6;
  sub_1E5B6AD6C(&qword_1EE2C7AE0, MEMORY[0x1E69695A8]);
  v46 = v57;
  v47 = v64;
  sub_1E5BF7364();
  (*(v63 + 32))(&v39[v28[14]], v46, v47);
  v76 = 7;
  sub_1E5B69774(qword_1ED03E618);
  v48 = v56;
  v49 = v70;
  sub_1E5BF7364();
  (*(v71 + 8))(v74, v49);
  v50 = v75;
  sub_1E5B5F8D4(v48, &v75[v28[15]], &qword_1ED03E5C0, &unk_1E5BF8A20);
  v51 = v53;
  (*(v53 + 16))(v54, v50, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v51 + 8))(v50, v28);
}

uint64_t sub_1E5B68E30(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  DownloadButtonState.hash(into:)(v4, a2);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B68E80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6C6E776F446F6ELL && a2 == 0xEA00000000006461;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEB00000000676E69 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEA00000000006465)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

unint64_t sub_1E5B68FA0(uint64_t *a1)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7A8, &qword_1E5BF9160);
  v39 = *(v41 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v37 - v3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7B0, &qword_1E5BF9168);
  v42 = *(v40 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7B8, &qword_1E5BF9170);
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7C0, &qword_1E5BF9178);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E5B653E4();
  v18 = v45;
  sub_1E5BF7514();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v38 = v7;
  v45 = 0;
  v19 = v43;
  v20 = v44;
  v21 = v12;
  v22 = sub_1E5BF7374();
  v23 = (2 * *(v22 + 16)) | 1;
  v47 = v22;
  v48 = v22 + 32;
  v49 = 0;
  v50 = v23;
  v24 = sub_1E5B7FB04();
  if (v24 == 3 || v49 != v50 >> 1)
  {
    v28 = sub_1E5BF7284();
    swift_allocError();
    v30 = v29;
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
    *v30 = &type metadata for DownloadStatus;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    goto LABEL_9;
  }

  if (!v24)
  {
    v51 = 0;
    sub_1E5B654E0();
    v33 = v45;
    sub_1E5BF72C4();
    if (v33)
    {
      goto LABEL_9;
    }

    (*(v19 + 8))(v10, v38);
    (*(v12 + 8))(v15, v11);
    swift_unknownObjectRelease();
    v36 = 0;
LABEL_15:
    v35 = 1;
    goto LABEL_16;
  }

  if (v24 != 1)
  {
    v51 = 2;
    sub_1E5B65438();
    v34 = v45;
    sub_1E5BF72C4();
    if (v34)
    {
      goto LABEL_9;
    }

    (*(v39 + 8))(v20, v41);
    (*(v12 + 8))(v15, v11);
    swift_unknownObjectRelease();
    v36 = 1;
    goto LABEL_15;
  }

  v51 = 1;
  sub_1E5B6548C();
  v25 = v45;
  sub_1E5BF72C4();
  if (v25)
  {
LABEL_9:
    (*(v21 + 8))(v15, v11);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v26 = v40;
  v27 = sub_1E5BF7304();
  (*(v42 + 8))(v6, v26);
  (*(v12 + 8))(v15, v11);
  swift_unknownObjectRelease();
  v35 = 0;
  v36 = v27 & 0x1FFFFFFFFLL;
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v46);
  return v36 | (v35 << 40);
}

uint64_t sub_1E5B6954C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E5B695CC()
{
  result = qword_1EE2C75E8;
  if (!qword_1EE2C75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C75E8);
  }

  return result;
}

unint64_t sub_1E5B69638()
{
  result = qword_1ED03E5F8;
  if (!qword_1ED03E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E5F8);
  }

  return result;
}

uint64_t sub_1E5B6968C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E238, &unk_1E5BF8A10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5B696FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E260, &qword_1E5BF9190);
    sub_1E5B62934();
    sub_1E5B60FD0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5B69774(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_memcpy6_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DownloadStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DownloadStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 6) = v3;
  return result;
}

uint64_t sub_1E5B69844(uint64_t a1)
{
  if (*(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5B69860(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    *(result + 5) = 1;
  }

  else
  {
    *(result + 5) = 0;
  }

  return result;
}

void sub_1E5B6989C(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1E5BF64B4();
    if (v3 <= 0x3F)
    {
      sub_1E5B6A458();
      if (v4 <= 0x3F)
      {
        sub_1E5B6A4B0();
        if (v5 <= 0x3F)
        {
          sub_1E5BF6494();
          if (v6 <= 0x3F)
          {
            sub_1E5B6A50C();
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1E5B6998C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v58 = *(a3 + 16);
  v4 = *(v58 - 8);
  v5 = *(v4 + 84);
  v56 = sub_1E5BF64B4();
  v6 = *(v56 - 8);
  v57 = *(v6 + 84);
  if (v57 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v8 = *(sub_1E5BF6464() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  if (((v9 + 1) & ~v9) + v10 <= 0x28)
  {
    v11 = 40;
  }

  else
  {
    v11 = ((v9 + 1) & ~v9) + v10;
  }

  v12 = 252 - (1u >> (8 * v11));
  if (v11 >= 4)
  {
    v12 = 252;
  }

  if (v7 > v12)
  {
    v12 = v7;
  }

  v13 = ((v9 + 6) & ~v9) + v10;
  if (v13 <= 0x28)
  {
    v14 = 40;
  }

  else
  {
    v14 = v13;
  }

  v15 = 252 - (1u >> (8 * v14));
  if (v14 >= 4)
  {
    v15 = 252;
  }

  if (v12 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v12;
  }

  v17 = *(sub_1E5BF6494() - 8);
  v18 = v17;
  v19 = *(v17 + 84);
  if (v16 <= v19)
  {
    v20 = *(v17 + 84);
  }

  else
  {
    v20 = v16;
  }

  v21 = v19 - 1;
  if (!v19)
  {
    v21 = 0;
  }

  v22 = v21 - 1;
  if (v19 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v20 <= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v20;
  }

  v25 = *(v6 + 80);
  v26 = *(v6 + 64);
  v27 = *(v17 + 80);
  v28 = *(v17 + 64);
  if (v24 <= 0xFE)
  {
    v29 = 254;
  }

  else
  {
    v29 = v24;
  }

  if (v19)
  {
    v30 = v19 < 2;
  }

  else
  {
    v30 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v31 = *(v4 + 64) + v25;
  v32 = v9 | 7;
  v33 = (v9 | 7) + 1;
  v34 = v33 + v11;
  v35 = v14 + v27 + 1;
  v36 = v28 + v27;
  v37 = a1;
  if (a2 > v29)
  {
    v38 = v30 + v28 + ((v36 + ((v35 + ((v34 + ((v34 + ((v33 + v26 + (v31 & ~v25)) & ~v32)) & ~v32)) & ~v32)) & ~v27)) & ~v27);
    v39 = 8 * v38;
    if (v38 > 3)
    {
      goto LABEL_39;
    }

    v41 = ((a2 - v29 + ~(-1 << v39)) >> v39) + 1;
    if (HIWORD(v41))
    {
      v40 = *(a1 + v38);
      if (!v40)
      {
        goto LABEL_59;
      }

      goto LABEL_46;
    }

    if (v41 > 0xFF)
    {
      v40 = *(a1 + v38);
      if (!*(a1 + v38))
      {
        goto LABEL_59;
      }

      goto LABEL_46;
    }

    if (v41 >= 2)
    {
LABEL_39:
      v40 = *(a1 + v38);
      if (!*(a1 + v38))
      {
        goto LABEL_59;
      }

LABEL_46:
      v42 = (v40 - 1) << v39;
      if (v38 > 3)
      {
        v42 = 0;
      }

      if (v38)
      {
        if (v38 <= 3)
        {
          v43 = v38;
        }

        else
        {
          v43 = 4;
        }

        if (v43 > 2)
        {
          if (v43 == 3)
          {
            v44 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v44 = *a1;
          }
        }

        else if (v43 == 1)
        {
          v44 = *a1;
        }

        else
        {
          v44 = *a1;
        }
      }

      else
      {
        v44 = 0;
      }

      v54 = v29 + (v44 | v42);
      return (v54 + 1);
    }
  }

LABEL_59:
  if (v5 == v29)
  {
    v45 = v58;
    v46 = *(v4 + 48);
    v47 = v5;
LABEL_63:

    return v46(v37, v47, v45);
  }

  v37 = ((a1 + v31) & ~v25);
  if (v57 == v29)
  {
    v46 = *(v6 + 48);
    v47 = v57;
    v45 = v56;
    goto LABEL_63;
  }

  v49 = v37 + v26;
  if (v29 == 254)
  {
    v50 = *v49;
    if (v50 < 2)
    {
      return 0;
    }

    v54 = (v50 + 2147483646) & 0x7FFFFFFF;
    return (v54 + 1);
  }

  v51 = ~v27;
  v52 = (v35 + ((v34 + ((v34 + (&v49[v33] & ~v32)) & ~v32)) & ~v32)) & v51;
  if (v19 == v29)
  {
    v53 = *(v18 + 48);

    return v53(v52);
  }

  else
  {
    result = 0;
    if (v19 >= 2 && v22)
    {
      v55 = (*(v18 + 48))((v36 + v52) & v51);
      if (v55 >= 3)
      {
        return v55 - 2;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1E5B69E54(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v65 = *(a4 + 16);
  v4 = *(v65 - 8);
  v64 = v4;
  v5 = *(v4 + 84);
  v62 = sub_1E5BF64B4();
  v6 = *(v62 - 8);
  v63 = *(v6 + 84);
  if (v63 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v8 = *(sub_1E5BF6464() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  if (((v9 + 1) & ~v9) + v10 <= 0x28)
  {
    v11 = 40;
  }

  else
  {
    v11 = ((v9 + 1) & ~v9) + v10;
  }

  v12 = 252 - (1u >> (8 * v11));
  if (v11 >= 4)
  {
    v12 = 252;
  }

  if (v7 > v12)
  {
    v12 = v7;
  }

  v13 = ((v9 + 6) & ~v9) + v10;
  if (v13 <= 0x28)
  {
    v14 = 40;
  }

  else
  {
    v14 = v13;
  }

  v15 = 252 - (1u >> (8 * v14));
  if (v14 >= 4)
  {
    v15 = 252;
  }

  if (v12 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v12;
  }

  v17 = 0;
  v18 = *(sub_1E5BF6494() - 8);
  v19 = v18;
  v20 = *(v18 + 84);
  v21 = *(v4 + 64);
  if (v16 <= v20)
  {
    v22 = *(v18 + 84);
  }

  else
  {
    v22 = v16;
  }

  v23 = v20 - 1;
  if (!v20)
  {
    v23 = 0;
  }

  v24 = v23 - 1;
  v25 = v20 < 2;
  if (v20 < 2)
  {
    v24 = 0;
  }

  if (v22 <= v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v22;
  }

  v27 = *(v6 + 80);
  v28 = *(v6 + 64);
  v29 = *(v18 + 80);
  v30 = *(v18 + 64);
  if (v26 <= 0xFE)
  {
    v31 = 254;
  }

  else
  {
    v31 = v26;
  }

  v32 = v21 + v27;
  v33 = (v9 | 7) + 1;
  v34 = v33 + v11;
  v35 = v14 + v29 + 1;
  v36 = v30 + v29;
  if (v20)
  {
    v37 = v20 < 2;
  }

  else
  {
    v37 = v25 + 1;
  }

  v38 = v37 + v30 + ((v30 + v29 + ((v35 + ((v33 + v11 + ((v33 + v11 + ((v33 + v28 + ((v21 + v27) & ~v27)) & ~(v9 | 7))) & ~(v9 | 7))) & ~(v9 | 7))) & ~v29)) & ~v29);
  if (a3 > v31)
  {
    v17 = 1;
    if (v38 <= 3)
    {
      v39 = ((a3 - v31 + ~(-1 << (8 * v38))) >> (8 * v38)) + 1;
      v40 = HIWORD(v39);
      if (v39 < 0x100)
      {
        v41 = 1;
      }

      else
      {
        v41 = 2;
      }

      if (v39 >= 2)
      {
        v42 = v41;
      }

      else
      {
        v42 = 0;
      }

      if (v40)
      {
        v17 = 4;
      }

      else
      {
        v17 = v42;
      }
    }
  }

  if (v31 < a2)
  {
    v43 = ~v31 + a2;
    if (v38 >= 4)
    {
      bzero(a1, v38);
      *a1 = v43;
      v44 = 1;
      if (v17 > 1)
      {
        goto LABEL_49;
      }

      goto LABEL_77;
    }

    v44 = (v43 >> (8 * v38)) + 1;
    if (v38)
    {
      v46 = v43 & ~(-1 << (8 * v38));
      bzero(a1, v38);
      if (v38 != 3)
      {
        if (v38 == 2)
        {
          *a1 = v46;
          if (v17 > 1)
          {
            goto LABEL_49;
          }
        }

        else
        {
          *a1 = v43;
          if (v17 > 1)
          {
LABEL_49:
            if (v17 == 2)
            {
              *&a1[v38] = v44;
            }

            else
            {
              *&a1[v38] = v44;
            }

            return;
          }
        }

LABEL_77:
        if (v17)
        {
          a1[v38] = v44;
        }

        return;
      }

      *a1 = v46;
      a1[2] = BYTE2(v46);
    }

    if (v17 > 1)
    {
      goto LABEL_49;
    }

    goto LABEL_77;
  }

  v45 = a1;
  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v38] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_63;
    }

    *&a1[v38] = 0;
  }

  else if (v17)
  {
    a1[v38] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_63;
  }

  if (!a2)
  {
    return;
  }

LABEL_63:
  if (v5 == v31)
  {
    v47 = v65;
    v48 = *(v64 + 56);
    v49 = a2;
    v50 = v5;
LABEL_67:

    v48(v45, v49, v50, v47);
    return;
  }

  v45 = (&a1[v32] & ~v27);
  if (v63 == v31)
  {
    v48 = *(v6 + 56);
    v49 = a2;
    v50 = v63;
    v47 = v62;
    goto LABEL_67;
  }

  v51 = &v45[v28];
  if (v31 == 254)
  {
    *v51 = a2 + 1;
    return;
  }

  v53 = (v35 + ((v34 + ((v34 + (&v51[v33] & ~(v9 | 7))) & ~(v9 | 7))) & ~(v9 | 7))) & ~v29;
  if (v20 != v31)
  {
    v52 = ~v29;
    v56 = (v36 + v53) & ~v29;
    if (v20)
    {
      if (v24 >= a2)
      {
        if (a2 + 1 <= v23)
        {
          if (a2 == -1 || v20 == 1)
          {
            return;
          }

          v54 = *(v19 + 56);
          v55 = a2 + 2;
          v53 = v56;
          goto LABEL_84;
        }

        if (v30 <= 3)
        {
          v57 = ~(-1 << (8 * v30));
        }

        else
        {
          v57 = -1;
        }

        if (!v30)
        {
          return;
        }

        v58 = v57 & (a2 - v23);
        if (v30 <= 3)
        {
          v59 = v30;
        }

        else
        {
          v59 = 4;
        }

        bzero(((v36 + v53) & v52), v30);
        if (v59 <= 2)
        {
          if (v59 != 1)
          {
LABEL_99:
            *v56 = v58;
            return;
          }

LABEL_110:
          *v56 = v58;
          return;
        }

        goto LABEL_111;
      }
    }

    else
    {
      LODWORD(v30) = v30 + 1;
    }

    v60 = (v30 + v25);
    if (v60 <= 3)
    {
      v61 = ~(-1 << (8 * v60));
    }

    else
    {
      v61 = -1;
    }

    if (!v60)
    {
      return;
    }

    v58 = v61 & (~v24 + a2);
    if (v60 <= 3)
    {
      v59 = v60;
    }

    else
    {
      v59 = 4;
    }

    bzero(((v36 + v53) & v52), v60);
    if (v59 <= 2)
    {
      if (v59 != 1)
      {
        goto LABEL_99;
      }

      goto LABEL_110;
    }

LABEL_111:
    if (v59 == 3)
    {
      *v56 = v58;
      *(v56 + 2) = BYTE2(v58);
    }

    else
    {
      *v56 = v58;
    }

    return;
  }

  v54 = *(v19 + 56);
  v55 = a2;
LABEL_84:

  v54(v53, v55);
}

void sub_1E5B6A458()
{
  if (!qword_1EE2C6270)
  {
    v0 = sub_1E5BF6E04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C6270);
    }
  }
}

void sub_1E5B6A4B0()
{
  if (!qword_1EE2C6280)
  {
    sub_1E5B695CC();
    v0 = sub_1E5BF6E04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C6280);
    }
  }
}

void sub_1E5B6A50C()
{
  if (!qword_1EE2C7448[0])
  {
    sub_1E5BF6494();
    v0 = MEMORY[0x1E69695A8];
    sub_1E5B6AD6C(&qword_1EE2C7AE0, MEMORY[0x1E69695A8]);
    sub_1E5B6AD6C(&qword_1EE2C7AF0, v0);
    sub_1E5B6AD6C(&qword_1EE2C7AE8, v0);
    v1 = type metadata accessor for ModalPresentation();
    if (!v2)
    {
      atomic_store(v1, qword_1EE2C7448);
    }
  }
}

uint64_t getEnumTagSinglePayload for SampleContentButtonState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SampleContentButtonState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DownloadStatus.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DownloadStatus.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5B6A8DC()
{
  result = qword_1ED03E720;
  if (!qword_1ED03E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E720);
  }

  return result;
}

unint64_t sub_1E5B6A934()
{
  result = qword_1ED03E728;
  if (!qword_1ED03E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E728);
  }

  return result;
}

unint64_t sub_1E5B6A9E0()
{
  result = qword_1EE2C7630;
  if (!qword_1EE2C7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7630);
  }

  return result;
}

unint64_t sub_1E5B6AA38()
{
  result = qword_1EE2C7638;
  if (!qword_1EE2C7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7638);
  }

  return result;
}

unint64_t sub_1E5B6AA90()
{
  result = qword_1EE2C75F8;
  if (!qword_1EE2C75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C75F8);
  }

  return result;
}

unint64_t sub_1E5B6AAE8()
{
  result = qword_1EE2C7600;
  if (!qword_1EE2C7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7600);
  }

  return result;
}

unint64_t sub_1E5B6AB40()
{
  result = qword_1EE2C7608;
  if (!qword_1EE2C7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7608);
  }

  return result;
}

unint64_t sub_1E5B6AB98()
{
  result = qword_1EE2C7610;
  if (!qword_1EE2C7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7610);
  }

  return result;
}

unint64_t sub_1E5B6ABF0()
{
  result = qword_1EE2C7618;
  if (!qword_1EE2C7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7618);
  }

  return result;
}

unint64_t sub_1E5B6AC48()
{
  result = qword_1EE2C7620;
  if (!qword_1EE2C7620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7620);
  }

  return result;
}

uint64_t sub_1E5B6ACA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5B6AD04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5B6AD6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5B6ADBC(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = sub_1E5BF6494();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v39 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v39 - v7;
  v8 = type metadata accessor for DownloadButtonFeature.TaskIdentifier();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v39 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v39 - v20;
  v22 = &v39 + *(v19 + 48) - v20;
  v43 = v9;
  v23 = *(v9 + 16);
  v23(&v39 - v20, a1, v8);
  v23(v22, v44, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23(v13, v21, v8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = *(v22 + 1);
      v45 = *v22;
      v46 = v24;
      v47 = *(v22 + 4);
      v25 = MEMORY[0x1E6937980](v13, &v45);
      sub_1E5B6E230(&v45);
      v26 = v13;
      goto LABEL_10;
    }

    v15 = v13;
  }

  else
  {
    v23(v15, v21, v8);
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E880, &qword_1E5BF9300) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v28 = *(v22 + 1);
      v45 = *v22;
      v46 = v28;
      v47 = *(v22 + 4);
      v30 = v40;
      v29 = v41;
      v31 = *(v41 + 32);
      v32 = v42;
      v31(v40, &v15[v27], v42);
      v33 = &v22[v27];
      v34 = v39;
      v31(v39, v33, v32);
      v35 = MEMORY[0x1E6937980](v15, &v45);
      sub_1E5B6E230(v15);
      if ((v35 & 1) == 0)
      {
        v37 = *(v29 + 8);
        v37(v34, v32);
        v37(v30, v32);
        sub_1E5B6E230(&v45);
        v25 = 0;
        goto LABEL_12;
      }

      v25 = sub_1E5BF6474();
      v36 = *(v29 + 8);
      v36(v34, v32);
      v36(v30, v32);
      v26 = &v45;
LABEL_10:
      sub_1E5B6E230(v26);
LABEL_12:
      v17 = v43;
      goto LABEL_13;
    }

    (*(v41 + 8))(&v15[v27], v42);
  }

  sub_1E5B6E230(v15);
  v25 = 0;
  v8 = TupleTypeMetadata2;
LABEL_13:
  (*(v17 + 8))(v21, v8);
  return v25 & 1;
}

uint64_t sub_1E5B6B208(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1E5BF6494();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v3, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(v13 + 1);
    v19 = *v13;
    v20 = v15;
    v21 = *(v13 + 4);
    MEMORY[0x1E6937C10](1);
    sub_1E5BF7244();
  }

  else
  {
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E880, &qword_1E5BF9300) + 48);
    v17 = *(v13 + 1);
    v19 = *v13;
    v20 = v17;
    v21 = *(v13 + 4);
    (*(v6 + 32))(v10, &v13[v16], v5);
    MEMORY[0x1E6937C10](0);
    sub_1E5BF7244();
    sub_1E5B6E284();
    sub_1E5BF6EF4();
    (*(v6 + 8))(v10, v5);
  }

  return sub_1E5B6E230(&v19);
}

uint64_t sub_1E5B6B428(uint64_t a1)
{
  sub_1E5BF74B4();
  sub_1E5B6B208(v3, a1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B6B478(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  sub_1E5B6B208(v4, a2);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B6B4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1E5B6ADBC(a1, a2);
}

__n128 DownloadButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E5BF6484();
  v4 = a2 + *(type metadata accessor for DownloadButtonFeature() + 36);
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v5;
  result = *(a1 + 32);
  *(v4 + 32) = result;
  return result;
}

uint64_t DownloadButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v125 = a3;
  v109 = a1;
  v8 = a4 & 0xFFFFFFFFFFFFLL;
  v9 = *(a5 + 16);
  v10 = *(a5 + 24);
  v112 = type metadata accessor for DownloadButtonFeature.TaskIdentifier();
  v111 = *(v112 - 8);
  v11 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v110 = v106 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v106 - v19;
  v124 = a5;
  v119 = *(a5 - 8);
  v21 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v116 = v22;
  v118 = v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7C8, &qword_1E5BF9198);
  v120 = *(v23 - 8);
  v121 = v23;
  v24 = *(v120 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v122 = v106 - v26;
  v27 = *(v9 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v25);
  v117 = v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v106 - v31;
  v33 = *(v27 + 16);
  v114 = v27 + 16;
  v113 = v33;
  v33(v106 - v31, a2, v9);
  if ((a4 & 0x1000000000000) == 0)
  {
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F8, &unk_1E5BF91A0) + 48);
    *v20 = a4;
    v20[4] = BYTE4(a4);
    v20[5] = BYTE5(v8) & 1;
    sub_1E5BF6444();
    (*(v27 + 8))(v32, v9);
    swift_storeEnumTagMultiPayload();
    v35 = type metadata accessor for DownloadButtonState();
    return sub_1E5B6C3AC(v20, &a2[*(v35 + 52)]);
  }

  if (v8 > 2)
  {
    if (v8 == 3)
    {
      (*(v27 + 8))(v32, v9);
      v85 = *(type metadata accessor for DownloadButtonState() + 60);
      sub_1E5B5F804(&a2[v85], &qword_1ED03E5C0, &unk_1E5BF8A20);
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
      return (*(*(v86 - 8) + 56))(&a2[v85], 1, 1, v86);
    }

    else if (v8 == 4)
    {
      (*(v27 + 8))(v32, v9);
      v61 = type metadata accessor for DownloadButtonState();
      v62 = *(v61 + 60);
      sub_1E5B5F804(&a2[v62], &qword_1ED03E5C0, &unk_1E5BF8A20);
      v63 = *(v61 + 56);
      v64 = sub_1E5BF6494();
      v65 = *(v64 - 8);
      (*(v65 + 16))(&a2[v62], &a2[v63], v64);
      (*(v65 + 56))(&a2[v62], 0, 1, v64);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
      return (*(*(v66 - 8) + 56))(&a2[v62], 0, 1, v66);
    }

    else
    {
      v127[0] = 1;
      DownloadButtonFeature.reduce(localState:sharedState:sideEffects:action:)(v109, a2, v125, 0x1000000000002, v124);
      return (*(v27 + 8))(v32, v9);
    }
  }

  else
  {
    if (!v8)
    {
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v111 = v67[12];
      v68 = v67[16];
      v112 = v67[20];
      v69 = v122;
      v110 = &v122[v67[24]];
      v107 = v10;
      v70 = *(v10 + 24);
      v71 = v32;
      v108 = v32;
      sub_1E5BF72B4();
      v128 = 5;
      sub_1E5B6C48C(v127, v126);
      sub_1E5B6C4E8();
      sub_1E5BF7254();
      sub_1E5B6C53C(v127);
      v72 = v9;
      v73 = *MEMORY[0x1E6999B50];
      v74 = sub_1E5BF6E24();
      (*(*(v74 - 8) + 104))(&v69[v68], v73, v74);
      v75 = v118;
      v76 = v119;
      v77 = v124;
      (*(v119 + 16))(v118, v123, v124);
      v78 = v117;
      v113(v117, v71, v72);
      v79 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v80 = v27;
      v81 = (v116 + v79 + *(v27 + 80)) & ~*(v27 + 80);
      v82 = swift_allocObject();
      v83 = v107;
      *(v82 + 16) = v72;
      *(v82 + 24) = v83;
      (*(v76 + 32))(v82 + v79, v75, v77);
      (*(v80 + 32))(v82 + v81, v78, v72);
      v84 = &unk_1E5BF91E0;
LABEL_15:
      v103 = v110;
      *v110 = v84;
      *(v103 + 1) = v82;
      sub_1E5BF7094();
      v104 = *MEMORY[0x1E6999B48];
      v105 = sub_1E5BF6E14();
      (*(*(v105 - 8) + 104))(&v69[v112], v104, v105);
      (*(v120 + 104))(v69, *MEMORY[0x1E6999AD8], v121);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D8, &qword_1E5BF91C0);
      sub_1E5BF7034();
      return (*(v80 + 8))(v108, v72);
    }

    if (v8 == 1)
    {
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F8, &unk_1E5BF91A0) + 48);
      *v20 = 0;
      *(v20 + 2) = 1;
      sub_1E5BF6444();
      swift_storeEnumTagMultiPayload();
      v107 = v10;
      v38 = type metadata accessor for DownloadButtonState();
      sub_1E5B6C3AC(v20, &a2[*(v38 + 52)]);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v106[1] = v39[12];
      v40 = v39[16];
      v109 = v39[20];
      v41 = v122;
      v106[0] = &v122[v39[24]];
      v42 = *(v10 + 24);
      v43 = v110;
      v44 = v32;
      v108 = v32;
      sub_1E5BF72B4();
      v45 = v112;
      swift_storeEnumTagMultiPayload();
      swift_getWitnessTable();
      sub_1E5BF72B4();
      (*(v111 + 8))(v43, v45);
      v46 = v9;
      v47 = *MEMORY[0x1E6999B50];
      v48 = sub_1E5BF6E24();
      (*(*(v48 - 8) + 104))(&v41[v40], v47, v48);
      v49 = v118;
      v50 = v119;
      v51 = v124;
      (*(v119 + 16))(v118, v123, v124);
      v52 = v117;
      v113(v117, v44, v46);
      v53 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v54 = v27;
      v55 = (v116 + v53 + *(v27 + 80)) & ~*(v27 + 80);
      v56 = swift_allocObject();
      v57 = v107;
      *(v56 + 16) = v46;
      *(v56 + 24) = v57;
      (*(v50 + 32))(v56 + v53, v49, v51);
      (*(v54 + 32))(v56 + v55, v52, v46);
      v58 = v106[0];
      *v106[0] = &unk_1E5BF91D0;
      *(v58 + 8) = v56;
      sub_1E5BF7094();
      v59 = *MEMORY[0x1E6999B48];
      v60 = sub_1E5BF6E14();
      (*(*(v60 - 8) + 104))(&v41[v109], v59, v60);
      (*(v120 + 104))(v41, *MEMORY[0x1E6999AD8], v121);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D8, &qword_1E5BF91C0);
      sub_1E5BF7034();
      return (*(v54 + 8))(v108, v46);
    }

    v87 = type metadata accessor for DownloadButtonState();
    sub_1E5B6C41C(&a2[*(v87 + 52)], v17);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F8, &unk_1E5BF91A0) + 48);
      v89 = sub_1E5BF6464();
      (*(*(v89 - 8) + 8))(&v17[v88], v89);
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v111 = v90[12];
      v91 = v90[16];
      v112 = v90[20];
      v69 = v122;
      v110 = &v122[v90[24]];
      v92 = *(v10 + 24);
      v93 = v32;
      v108 = v32;
      sub_1E5BF72B4();
      v128 = 3;
      sub_1E5B6C48C(v127, v126);
      sub_1E5B6C4E8();
      sub_1E5BF7254();
      sub_1E5B6C53C(v127);
      v107 = v10;
      v72 = v9;
      v94 = *MEMORY[0x1E6999B50];
      v95 = sub_1E5BF6E24();
      (*(*(v95 - 8) + 104))(&v69[v91], v94, v95);
      v96 = v118;
      v97 = v119;
      v98 = v124;
      (*(v119 + 16))(v118, v123, v124);
      v99 = v117;
      v113(v117, v93, v72);
      v100 = (*(v97 + 80) + 32) & ~*(v97 + 80);
      v80 = v27;
      v101 = (v116 + v100 + *(v27 + 80)) & ~*(v27 + 80);
      v82 = swift_allocObject();
      v102 = v107;
      *(v82 + 16) = v72;
      *(v82 + 24) = v102;
      (*(v97 + 32))(v82 + v100, v96, v98);
      (*(v80 + 32))(v82 + v101, v99, v72);
      v84 = &unk_1E5BF91B8;
      goto LABEL_15;
    }

    (*(v27 + 8))(v32, v9);
    return sub_1E5B5F804(v17, &qword_1ED03E260, &qword_1E5BF9190);
  }
}

uint64_t sub_1E5B6C3AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B6C41C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E260, &qword_1E5BF9190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5B6C4E8()
{
  result = qword_1EE2C7240;
  if (!qword_1EE2C7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7240);
  }

  return result;
}

uint64_t sub_1E5B6C590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  sub_1E5BF7084();
  v5[6] = sub_1E5BF7074();
  v7 = sub_1E5BF7054();
  v5[7] = v7;
  v5[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E5B6C62C, v7, v6);
}

uint64_t sub_1E5B6C62C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = (v3 + *(type metadata accessor for DownloadButtonFeature() + 36));
  v5 = v4[1];
  v10 = (*v4 + **v4);
  v6 = (*v4)[1];
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1E5B6C734;
  v8 = v0[3];

  return v10(v8);
}

uint64_t sub_1E5B6C734()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E5B6C854, v4, v3);
}

uint64_t sub_1E5B6C854()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5B6C8BC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6999B48];
  v3 = sub_1E5BF6E14();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1E5B6C930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  v6 = *(a4 - 8);
  *(v5 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = sub_1E5BF7084();
  *(v5 + 88) = sub_1E5BF7074();
  *(v5 + 156) = 1;
  *(v5 + 152) = 0;
  *(v5 + 158) = 0;
  v8 = *(MEMORY[0x1E6999AF0] + 4);
  v9 = swift_task_alloc();
  *(v5 + 96) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E888, &qword_1E5BF9308);
  *(v5 + 104) = v10;
  *v9 = v5;
  v9[1] = sub_1E5B6CA88;

  return MEMORY[0x1EEE01A40](v5 + 152, v10);
}

uint64_t sub_1E5B6CA88()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v8 = *v0;

  v6 = sub_1E5BF7054();
  *(v1 + 112) = v6;
  *(v1 + 120) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E5B6CBCC, v6, v5);
}

uint64_t sub_1E5B6CBCC()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v3 + *(type metadata accessor for DownloadButtonFeature() + 36);
  v5 = *(v4 + 24);
  v10 = (*(v4 + 16) + **(v4 + 16));
  v6 = *(*(v4 + 16) + 4);
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1E5B6CCD4;
  v8 = v0[4];

  return v10(v8);
}

uint64_t sub_1E5B6CCD4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);
  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_1E5B6CE84;
  }

  else
  {
    v7 = sub_1E5B6CE10;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E5B6CE10()
{
  v1 = v0[11];

  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5B6CE84()
{
  v34 = v0;
  if (qword_1ED03E1D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = sub_1E5BF6594();
  __swift_project_value_buffer(v6, qword_1ED053DE0);
  v7 = *(v3 + 16);
  v7(v2, v5, v4);
  v8 = v1;
  v9 = sub_1E5BF6574();
  v10 = sub_1E5BF71A4();

  if (os_log_type_enabled(v9, v10))
  {
    v31 = *(v0 + 136);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 56);
    v14 = *(v0 + 40);
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v15 = 136315394;
    v7(v12, v11, v14);
    v16 = sub_1E5BF6FB4();
    v18 = v17;
    (*(v13 + 8))(v11, v14);
    v19 = sub_1E5B89CE4(v16, v18, &v33);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2114;
    v20 = v31;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v21;
    *v30 = v21;
    _os_log_impl(&dword_1E5B54000, v9, v10, "Failed to download workout with identifier: %s -- %{public}@", v15, 0x16u);
    sub_1E5B5F804(v30, &qword_1ED03E890, &qword_1E5BF9310);
    MEMORY[0x1E6938270](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1E6938270](v32, -1, -1);
    MEMORY[0x1E6938270](v15, -1, -1);
  }

  else
  {
    v22 = *(v0 + 72);
    v23 = *(v0 + 56);
    v24 = *(v0 + 40);

    (*(v23 + 8))(v22, v24);
  }

  *(v0 + 164) = 256;
  *(v0 + 160) = 0;
  *(v0 + 166) = 0;
  v25 = *(MEMORY[0x1E6999AF0] + 4);
  v26 = swift_task_alloc();
  *(v0 + 144) = v26;
  *v26 = v0;
  v26[1] = sub_1E5B6D180;
  v27 = *(v0 + 104);
  v28 = *(v0 + 16);

  return MEMORY[0x1EEE01A40](v0 + 160, v27);
}

uint64_t sub_1E5B6D180()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1E5B6D2A0, v4, v3);
}

uint64_t sub_1E5B6D2A0()
{
  v1 = v0[17];
  v2 = v0[11];

  v4 = v0[8];
  v3 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5B6D320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_1E5BF7084();
  v5[7] = sub_1E5BF7074();
  v7 = sub_1E5BF7054();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E5B6D3C0, v7, v6);
}

uint64_t sub_1E5B6D3C0()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v3 + *(type metadata accessor for DownloadButtonFeature() + 36);
  v5 = *(v4 + 40);
  v10 = (*(v4 + 32) + **(v4 + 32));
  v6 = *(*(v4 + 32) + 4);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1E5B6D4C8;
  v8 = v0[4];

  return v10(v8);
}

uint64_t sub_1E5B6D4C8()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 88) = v0;

  if (v0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 72);

    return MEMORY[0x1EEE6DFA0](sub_1E5B6D7F4, v4, v5);
  }

  else
  {
    *(v3 + 104) = 0;
    *(v3 + 108) = 256;
    *(v3 + 110) = 0;
    v6 = *(MEMORY[0x1E6999AF0] + 4);
    v7 = swift_task_alloc();
    *(v3 + 96) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E888, &qword_1E5BF9308);
    *v7 = v3;
    v7[1] = sub_1E5B6D670;
    v9 = *(v3 + 16);

    return MEMORY[0x1EEE01A40](v3 + 104, v8);
  }
}

uint64_t sub_1E5B6D670()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1E5B6D790, v4, v3);
}

uint64_t sub_1E5B6D790()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5B6D7F4()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1E5B6D858(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(type metadata accessor for DownloadButtonFeature() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5B6D9A0;

  return sub_1E5B6D320(a1, v1 + v7, v1 + v8, v4, v5);
}

uint64_t sub_1E5B6D9A0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E5B6DA94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(type metadata accessor for DownloadButtonFeature() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5B6E314;

  return sub_1E5B6C930(a1, v1 + v7, v1 + v8, v4, v5);
}

uint64_t objectdestroyTm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for DownloadButtonFeature() - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = *(v2 - 8);
  v6 = (v4 + *(*v3 + 64) + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v4;
  v9 = sub_1E5BF6494();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = (v8 + v3[11]);
  v11 = v10[1];

  v12 = v10[3];

  v13 = v10[5];

  (*(v5 + 8))(v0 + v6, v2);

  return swift_deallocObject();
}

uint64_t sub_1E5B6DD58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(type metadata accessor for DownloadButtonFeature() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5B6E314;

  return sub_1E5B6C590(a1, v1 + v7, v1 + v8, v4, v5);
}

unint64_t sub_1E5B6DEE4()
{
  result = qword_1ED03E7E0;
  if (!qword_1ED03E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E7E0);
  }

  return result;
}

unint64_t sub_1E5B6DF3C()
{
  result = qword_1ED03E7E8[0];
  if (!qword_1ED03E7E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED03E7E8);
  }

  return result;
}

unint64_t sub_1E5B6DF94()
{
  result = qword_1EE2C6290;
  if (!qword_1EE2C6290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6290);
  }

  return result;
}

uint64_t sub_1E5B6E004(uint64_t a1)
{
  result = sub_1E5BF6494();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    result = type metadata accessor for DownloadButtonEnvironment();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1E5B6E0B4()
{
  sub_1E5B6E178();
  if (v0 <= 0x3F)
  {
    sub_1E5B6E1E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E5B6E178()
{
  if (!qword_1ED03E870)
  {
    sub_1E5BF6494();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED03E870);
    }
  }
}

uint64_t sub_1E5B6E1E4()
{
  result = qword_1ED03E878;
  if (!qword_1ED03E878)
  {
    result = MEMORY[0x1E69E69B8];
    atomic_store(MEMORY[0x1E69E69B8], &qword_1ED03E878);
  }

  return result;
}

unint64_t sub_1E5B6E284()
{
  result = qword_1EE2C7AE8;
  if (!qword_1EE2C7AE8)
  {
    sub_1E5BF6494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7AE8);
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

uint64_t sub_1E5B6E31C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1E5BF74B4();
  if (a3 <= 1u)
  {
    if (a3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v4 = 3;
LABEL_10:
    MEMORY[0x1E6937C10](v4);
    sub_1E5BF6FE4();
    return sub_1E5BF7504();
  }

  if (a3 == 3)
  {
    MEMORY[0x1E6937C10](4);
    sub_1E5BF74D4();
  }

  else
  {
    MEMORY[0x1E6937C10](0);
  }

  return sub_1E5BF7504();
}

uint64_t sub_1E5B6E3E4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  if (v3 <= 1)
  {
    if (*(v0 + 16))
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    if (v3 != 2)
    {
      if (v3 != 3)
      {
        return MEMORY[0x1E6937C10](0);
      }

      MEMORY[0x1E6937C10](4);
      return sub_1E5BF74D4();
    }

    v5 = 3;
  }

  MEMORY[0x1E6937C10](v5);

  return sub_1E5BF6FE4();
}

uint64_t sub_1E5B6E49C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1E5BF74B4();
  if (v3 <= 1)
  {
    if (v3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
    v4 = 3;
LABEL_10:
    MEMORY[0x1E6937C10](v4);
    sub_1E5BF6FE4();
    return sub_1E5BF7504();
  }

  if (v3 == 3)
  {
    MEMORY[0x1E6937C10](4);
    sub_1E5BF74D4();
  }

  else
  {
    MEMORY[0x1E6937C10](0);
  }

  return sub_1E5BF7504();
}

__n128 StackButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t StackButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t *a2, char **a3, unint64_t a4, unsigned __int8 a5)
{
  v156 = a4;
  v158 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v140 - v13;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E898, &qword_1E5BF9328);
  v159 = *(v157 - 8);
  v15 = *(v159 + 64);
  v16 = MEMORY[0x1EEE9AC00](v157);
  v18 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v140 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v140 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v28 = &v140 - v27;
  v29 = v5[3];
  v165 = v5[2];
  v166 = v29;
  v167 = v5[4];
  v30 = v5[1];
  v163 = *v5;
  v164 = v30;
  v31 = a2[1];
  if ((a5 >> 6) > 1u)
  {
    if (a5 >> 6 == 2)
    {
      v58 = v156;
      v59 = v156 >> 8;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v61 = v60[12];
      v62 = v60[16];
      v63 = v60[20];
      v64 = &v18[v60[24]];
      v160 = v58 & 1;
      v161 = 0;
      v162 = 3;
      sub_1E5B6F52C();
      sub_1E5BF7254();
      sub_1E5BF7094();
      v65 = *MEMORY[0x1E6999B60];
      v66 = sub_1E5BF6E24();
      (*(*(v66 - 8) + 104))(&v18[v62], v65, v66);
      v67 = *MEMORY[0x1E6999B40];
      v68 = sub_1E5BF6E14();
      (*(*(v68 - 8) + 104))(&v18[v63], v67, v68);
      v69 = swift_allocObject();
      v70 = v166;
      *(v69 + 48) = v165;
      *(v69 + 64) = v70;
      *(v69 + 80) = v167;
      v71 = v164;
      *(v69 + 16) = v163;
      *(v69 + 32) = v71;
      *(v69 + 96) = v58 & 1;
      *(v69 + 97) = v59;
      *v64 = &unk_1E5BF9340;
      *(v64 + 1) = v69;
      v72 = v159;
      v73 = v157;
      (*(v159 + 104))(v18, *MEMORY[0x1E6999AD8], v157);
      v54 = v158;
      v55 = *v158;
      sub_1E5B70DB8(&v163, &v160);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_1E5B71778(0, v55[2] + 1, 1, v55, &qword_1ED03E940, &unk_1E5BF95E0, &qword_1ED03E898, &qword_1E5BF9328);
      }

      v75 = v55[2];
      v74 = v55[3];
      if (v75 >= v74 >> 1)
      {
        v55 = sub_1E5B71778(v74 > 1, v75 + 1, 1, v55, &qword_1ED03E940, &unk_1E5BF95E0, &qword_1ED03E898, &qword_1E5BF9328);
      }

      v55[2] = v75 + 1;
      result = (*(v72 + 32))(v55 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v75, v18, v73);
      goto LABEL_18;
    }

    v155 = *a2;
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
    v85 = v84[12];
    v86 = v84[16];
    v87 = v84[20];
    v88 = &v28[v84[24]];
    v160 = 0;
    v161 = 0;
    v162 = 4;
    v89 = sub_1E5B6F52C();
    v156 = v31;

    v154 = v89;
    sub_1E5BF7254();
    v90 = *MEMORY[0x1E6999B50];
    v91 = sub_1E5BF6E24();
    v92 = *(v91 - 8);
    v93 = *(v92 + 104);
    v153 = v90;
    v152 = v91;
    v151 = v93;
    v150 = v92 + 104;
    (v93)(&v28[v86], v90);
    v94 = *MEMORY[0x1E6999B40];
    v95 = sub_1E5BF6E14();
    v96 = *(v95 - 8);
    v97 = *(v96 + 104);
    v149 = v94;
    v148 = v95;
    v147 = v97;
    v146 = v96 + 104;
    (v97)(&v28[v87], v94);
    v98 = swift_allocObject();
    v99 = v166;
    v98[3] = v165;
    v98[4] = v99;
    v98[5] = v167;
    v100 = v164;
    v98[1] = v163;
    v98[2] = v100;
    *v88 = &unk_1E5BF9378;
    *(v88 + 1) = v98;
    sub_1E5B70DB8(&v163, &v160);
    sub_1E5BF7094();
    v101 = v159;
    v102 = *(v159 + 104);
    v145 = *MEMORY[0x1E6999AD8];
    v144 = v102;
    v102(v28);
    v103 = *v158;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = sub_1E5B71778(0, *(v103 + 2) + 1, 1, v103, &qword_1ED03E940, &unk_1E5BF95E0, &qword_1ED03E898, &qword_1E5BF9328);
    }

    v105 = *(v103 + 2);
    v104 = *(v103 + 3);
    if (v105 >= v104 >> 1)
    {
      v103 = sub_1E5B71778(v104 > 1, v105 + 1, 1, v103, &qword_1ED03E940, &unk_1E5BF95E0, &qword_1ED03E898, &qword_1E5BF9328);
    }

    *(v103 + 2) = v105 + 1;
    v107 = *(v101 + 32);
    v106 = v101 + 32;
    v142 = (*(v106 + 48) + 32) & ~*(v106 + 48);
    v141 = *(v106 + 40);
    v108 = v157;
    v159 = v106;
    v143 = v107;
    v107(&v103[v142 + v141 * v105], v28, v157);
    v109 = v84[12];
    v110 = v84[16];
    v111 = v84[20];
    v112 = &v25[v84[24]];
    v113 = v155;
    v114 = v156;
    v160 = v155;
    v161 = v156;
    v162 = 0;

    sub_1E5BF7254();
    v151(&v25[v110], v153, v152);
    v147(&v25[v111], v149, v148);
    v115 = swift_allocObject();
    v116 = v166;
    *(v115 + 48) = v165;
    *(v115 + 64) = v116;
    *(v115 + 80) = v167;
    v117 = v164;
    *(v115 + 16) = v163;
    *(v115 + 32) = v117;
    *(v115 + 96) = v113;
    *(v115 + 104) = v114;
    *v112 = &unk_1E5BF9388;
    *(v112 + 1) = v115;
    sub_1E5B70DB8(&v163, &v160);
    sub_1E5BF7094();
    v144(v25, v145, v108);
    v119 = *(v103 + 2);
    v118 = *(v103 + 3);
    if (v119 >= v118 >> 1)
    {
      v103 = sub_1E5B71778(v118 > 1, v119 + 1, 1, v103, &qword_1ED03E940, &unk_1E5BF95E0, &qword_1ED03E898, &qword_1E5BF9328);
    }

    *(v103 + 2) = v119 + 1;
    result = v143(&v103[v142 + v119 * v141], v25, v108);
    *v158 = v103;
  }

  else
  {
    v32 = *a2;
    if (!(a5 >> 6))
    {
      v33 = type metadata accessor for StackButtonState();
      sub_1E5B70E04(a2 + *(v33 + 36), v14);
      result = swift_getEnumCaseMultiPayload();
      if (result > 2)
      {
        return result;
      }

      if (result)
      {
        if (result == 1)
        {
          v35 = v31;
          v36 = *v14;
          v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
          v38 = sub_1E5BF6464();
          v39 = *(*(v38 - 8) + 8);

          v39(&v14[v37], v38);
          if ((v36 & 1) == 0)
          {
LABEL_7:
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
            v41 = v40[12];
            v42 = v40[16];
            v43 = v40[20];
            v44 = &v22[v40[24]];
            v160 = v32;
            v161 = v35;
            v162 = 1;
            sub_1E5B6F52C();

            sub_1E5BF7254();
            v45 = *MEMORY[0x1E6999B50];
            v46 = sub_1E5BF6E24();
            (*(*(v46 - 8) + 104))(&v22[v42], v45, v46);
            v47 = swift_allocObject();
            v48 = v166;
            *(v47 + 48) = v165;
            *(v47 + 64) = v48;
            *(v47 + 80) = v167;
            v49 = v164;
            *(v47 + 16) = v163;
            *(v47 + 32) = v49;
            *(v47 + 96) = v32;
            *(v47 + 104) = v35;
            *(v47 + 112) = v156;
            *(v47 + 120) = a5;
            *v44 = &unk_1E5BF9368;
            *(v44 + 1) = v47;
            sub_1E5B70DB8(&v163, &v160);
            sub_1E5BF7094();
            v50 = *MEMORY[0x1E6999B48];
            v51 = sub_1E5BF6E14();
            (*(*(v51 - 8) + 104))(&v22[v43], v50, v51);
            v52 = v159;
            v53 = v157;
            (*(v159 + 104))(v22, *MEMORY[0x1E6999AD8], v157);
            v54 = v158;
            v55 = *v158;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v55 = sub_1E5B71778(0, v55[2] + 1, 1, v55, &qword_1ED03E940, &unk_1E5BF95E0, &qword_1ED03E898, &qword_1E5BF9328);
            }

            v57 = v55[2];
            v56 = v55[3];
            if (v57 >= v56 >> 1)
            {
              v55 = sub_1E5B71778(v56 > 1, v57 + 1, 1, v55, &qword_1ED03E940, &unk_1E5BF95E0, &qword_1ED03E898, &qword_1E5BF9328);
            }

            v55[2] = v57 + 1;
            result = (*(v52 + 32))(v55 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v57, v22, v53);
LABEL_18:
            *v54 = v55;
            return result;
          }
        }

        v139 = v14;
        return sub_1E5B70F30(v139);
      }

      v120 = *v14;

      v35 = v31;
      if ((v120 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v76 = v26;
    v77 = type metadata accessor for StackButtonState();
    sub_1E5B70E04(a2 + *(v77 + 36), v12);
    result = swift_getEnumCaseMultiPayload();
    if (result > 2)
    {
      return result;
    }

    if (result)
    {
      v78 = v159;
      if (result != 1)
      {
        v139 = v12;
        return sub_1E5B70F30(v139);
      }

      v79 = *v12;
      v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E2F0, &qword_1E5BF7D38) + 48);
      v81 = v31;
      v82 = sub_1E5BF6464();
      v83 = *(*(v82 - 8) + 8);

      v83(&v12[v80], v82);
      if (v79 != 1)
      {
      }
    }

    else
    {
      v121 = *v12;

      v78 = v159;
      v81 = v31;
      if ((v121 & 1) == 0)
      {
      }
    }

    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
    v123 = v122[12];
    v124 = v122[16];
    v125 = v122[20];
    v126 = (v76 + v122[24]);
    v160 = v32;
    v161 = v81;
    v162 = 2;
    sub_1E5B6F52C();

    sub_1E5BF7254();
    v127 = *MEMORY[0x1E6999B50];
    v128 = sub_1E5BF6E24();
    (*(*(v128 - 8) + 104))(v76 + v124, v127, v128);
    v129 = swift_allocObject();
    v130 = v166;
    *(v129 + 48) = v165;
    *(v129 + 64) = v130;
    *(v129 + 80) = v167;
    v131 = v164;
    *(v129 + 16) = v163;
    *(v129 + 32) = v131;
    *(v129 + 96) = v32;
    *(v129 + 104) = v81;
    *(v129 + 112) = v156;
    *v126 = &unk_1E5BF9350;
    v126[1] = v129;
    sub_1E5B70DB8(&v163, &v160);
    sub_1E5BF7094();
    v132 = *MEMORY[0x1E6999B48];
    v133 = sub_1E5BF6E14();
    (*(*(v133 - 8) + 104))(v76 + v125, v132, v133);
    v134 = v157;
    (*(v78 + 104))(v76, *MEMORY[0x1E6999AD8], v157);
    v135 = v158;
    v136 = *v158;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = sub_1E5B71778(0, v136[2] + 1, 1, v136, &qword_1ED03E940, &unk_1E5BF95E0, &qword_1ED03E898, &qword_1E5BF9328);
    }

    v138 = v136[2];
    v137 = v136[3];
    if (v138 >= v137 >> 1)
    {
      v136 = sub_1E5B71778(v137 > 1, v138 + 1, 1, v136, &qword_1ED03E940, &unk_1E5BF95E0, &qword_1ED03E898, &qword_1E5BF9328);
    }

    v136[2] = v138 + 1;
    result = (*(v78 + 32))(v136 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v138, v76, v134);
    *v135 = v136;
  }

  return result;
}