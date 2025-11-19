uint64_t sub_1E475DDD0()
{
  v1 = type metadata accessor for Event();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[5];
  v8 = sub_1E487732C();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  v9(v0 + v3 + v1[6], v8);
  v10 = *(v0 + v3 + v1[9]);

  v11 = *(v0 + v3 + v1[10] + 8);

  v12 = v1[11];
  v13 = sub_1E487725C();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v3 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  v15 = v5 + v1[15];
  v16 = type metadata accessor for Location();
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v17 = sub_1E487719C();
    (*(*(v17 - 8) + 8))(v15, v17);
    v18 = *(v15 + *(v16 + 20) + 8);
  }

  v19 = *(v5 + v1[16] + 8);

  return MEMORY[0x1EEE6BDD0](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t getEnumTagSinglePayload for RoundedCorner(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RoundedCorner(uint64_t result, int a2, int a3)
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

uint64_t sub_1E475E09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TimeScalingEngine.SpatialViewParameters();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E475E1A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E487732C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TimeScalingEngine.SpatialViewParameters();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E475E2EC(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1E487732C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[10];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[12];

  return v17(v18, a2, v16);
}

char *sub_1E475E518(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1E487732C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v17 = *(*(v16 - 8) + 56);
  v18 = &v5[a4[12]];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1E475E798()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA18, &unk_1E487AC60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA10, &qword_1E487AC58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BA08, &qword_1E487AC50);
  sub_1E4773680(&qword_1EE2B0E50, &qword_1ECF7BA08, &qword_1E487AC50);
  sub_1E477A374();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E475E8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E475E9C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E475EAE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4877EAC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E475EB44(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v11 = *(a1 + a3[6]);
    if (v11 >= 2)
    {
      return v11 - 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[10];

  return v18(v19, a2, v17);
}

uint64_t sub_1E475ED28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1E475EF10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BAD0, &qword_1E487AFE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E475EF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487719C();
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

uint64_t sub_1E475F050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E487719C();
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

uint64_t sub_1E475F10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Event();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E475F23C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Event();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E475F38C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BB48, &qword_1E487B148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E475F440(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E487736C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_1E475F4EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E487736C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E475F590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ColorBarView.Styling(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1E475F6A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ColorBarView.Styling(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E475F7C0()
{
  v1 = type metadata accessor for ColorBarView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(type metadata accessor for ColorBarView.Styling(0) + 40);
  v8 = sub_1E487736C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1E4877CCC();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = *(v5 + *(v1 + 24));

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1E475F94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E475FA7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E475FBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E475FCF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E475FE28()
{
  v1 = type metadata accessor for MultiDaySpatialView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_1E487732C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[5]);

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1E487753C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = *(v5 + v1[9]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E475FFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
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

uint64_t sub_1E4760064(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E487732C();
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

uint64_t sub_1E4760164()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E47601A8@<X0>(void *a1@<X8>)
{
  result = sub_1E4877D6C();
  *a1 = v3;
  return result;
}

uint64_t sub_1E47601E4()
{
  v1 = (type metadata accessor for DayGroup(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_1E487732C();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[7]);

  sub_1E477A484(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  v8 = *(v5 + v1[12]);

  v9 = (v5 + v1[13]);
  v10 = *v9;

  v11 = v9[1];

  v12 = *(v5 + v1[14] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1E476037C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for Event();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1E47604E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = type metadata accessor for Event();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E47606B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BE88, &qword_1E487BCE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BE80, &qword_1E487BCE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BE78, &qword_1E487BCD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BE70, &qword_1E487BCD0);
  sub_1E4773680(&qword_1EE2B0E60, &qword_1ECF7BE70, &qword_1E487BCD0);
  sub_1E477A374();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E476082C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E4760928(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E4760A38@<X0>(_BYTE *a1@<X8>)
{
  sub_1E478E700();
  result = sub_1E4877F2C();
  *a1 = v3;
  return result;
}

uint64_t sub_1E4760A88(char *a1)
{
  v2 = *a1;
  sub_1E478E700();
  return sub_1E4877F3C();
}

uint64_t sub_1E4760B0C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1E4760C98(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E4760E24()
{
  EventContentView = type metadata accessor for RectangularNextEventContentView(0);
  v2 = *(*(EventContentView - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(EventContentView - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_1E487732C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + EventContentView[5]);

  v8 = v0 + v3 + EventContentView[6];
  v9 = *(v8 + 56);

  v10 = *(v8 + 64);

  v11 = EventContentView[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1E487753C();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  v14 = EventContentView[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1E4877CCC();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
    v16 = *(v5 + v14);
  }

  sub_1E477A484(*(v5 + EventContentView[10]), *(v5 + EventContentView[10] + 8));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E4761040(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1E487719C();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1E4761174(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = sub_1E487719C();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1E47612A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Event();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = sub_1E487719C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[9] + 56);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E4761408(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = type metadata accessor for Event();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = sub_1E487719C();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9] + 56) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[7];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t sub_1E4761564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4877CCC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40) + 56);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E4761628(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4877CCC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40) + 56) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4761754@<X0>(void *a1@<X8>)
{
  result = sub_1E4877D4C();
  *a1 = v3;
  return result;
}

uint64_t sub_1E47617A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (type metadata accessor for RectangularNextEventContentView.RedactionProvider() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (v5 + *(*v3 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v0 + v5;
  sub_1E477A484(*(v0 + v5), *(v0 + v5 + 8));
  v10 = v3[11];
  v11 = sub_1E4877CCC();
  (*(*(v11 - 8) + 8))(v9 + v10, v11);
  v12 = v9 + v3[12];
  v13 = *(v12 + 56);

  v14 = *(v12 + 64);

  v15 = *(v9 + v3[13] + 8);

  v16 = *(v0 + v6 + 16);

  v17 = *(v0 + v7 + 8);

  v18 = *(v0 + v8 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v8 + 16, v4 | 7);
}

uint64_t sub_1E476198C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C168, &qword_1E487C710);
  sub_1E487804C();
  sub_1E4773680(&qword_1EE2B1620, &qword_1ECF7C168, &qword_1E487C710);
  return swift_getWitnessTable();
}

uint64_t sub_1E4761A38()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C1D8, &unk_1E487C788);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C1D0, &qword_1E487C780);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C1C8, &qword_1E487C778);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7C1C0, &qword_1E487C770);
  sub_1E4773680(&qword_1EE2B0E40, &qword_1ECF7C1C0, &qword_1E487C770);
  sub_1E477A374();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E4761BB0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CalendarDateTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1E4761D38(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CalendarDateTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1E4761EC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C1E0, &qword_1E487C868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4761F34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C1F0, &qword_1E487C878);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E476215C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E47621C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4762238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Event();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for CellDisplayContext(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E4762328(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Event();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for CellDisplayContext(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E4762424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Event();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E47624DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Event();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1E47625E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Event();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return v14 - 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1E47626F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Event();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E476282C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for CellDisplayContext(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[8]];

  return v16(v17, a2, v15);
}

char *sub_1E4762A04(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for CellDisplayContext(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[8]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E4762C28()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_1E4762C5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_id);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

uint64_t sub_1E4762C78(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtCC14CalendarWidget20NarrowMultidayLayout18SingleDayViewModel_id);
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1E4762CC8()
{
  v1 = sub_1E487732C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E4762D50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1E4762DA8()
{
  v1 = sub_1E487732C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E4762E9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E47CDCB4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E4762EC8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1E4762F84(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4763090(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Event();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for CellDisplayContext(0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[6];
      }

      else
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
        if (*(*(v15 - 8) + 84) == a2)
        {
          v8 = v15;
          v12 = *(v15 - 8);
          v13 = a3[7];
        }

        else
        {
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
          if (*(*(v16 - 8) + 84) != a2)
          {
            v18 = *(a1 + a3[9] + 8);
            if (v18 > 1)
            {
              return (v18 ^ 0xFF) + 1;
            }

            else
            {
              return 0;
            }
          }

          v8 = v16;
          v12 = *(v16 - 8);
          v13 = a3[8];
        }
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1E4763298(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Event();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for CellDisplayContext(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[7];
        }

        else
        {
          result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[9] + 8) = -a2;
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[8];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E47634D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E476355C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Event();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E487732C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  if (a2 == 254)
  {
    v18 = *(a1 + a3[9] + 8);
    if (v18 > 1)
    {
      return (v18 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[10];
    goto LABEL_11;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + a3[11];

  return v21(v22, a2, v20);
}

uint64_t sub_1E4763828(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Event();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1E487732C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  if (a3 == 254)
  {
    *(a1 + a4[9] + 8) = -a2;
    return result;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[10];
    goto LABEL_11;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[11];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_1E4763B74(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[10];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[11];
    goto LABEL_11;
  }

  v17 = sub_1E48783DC();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[14];

  return v18(v19, a2, v17);
}

uint64_t sub_1E4763D48(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[10];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[11];
    goto LABEL_9;
  }

  v17 = sub_1E48783DC();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[14];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1E4763F1C()
{
  v1 = type metadata accessor for NarrowMultidayEventsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_1E487732C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[5]);

  sub_1E477A484(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v8 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1E487893C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1E4877B3C();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  v14 = *(v5 + v1[12]);

  v15 = v1[14];
  v16 = sub_1E48783DC();
  (*(*(v16 - 8) + 8))(v5 + v15, v16);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E4764178(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1E487732C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[15];

  return v15(v16, a2, v14);
}

uint64_t sub_1E47642FC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1E487732C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[15];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E4764480(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DayEvents();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[9];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[11];
    goto LABEL_9;
  }

  if (a2 == 2147483646)
  {
    v17 = *(a1 + a3[13] + 32);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  else
  {
    v19 = sub_1E48783DC();
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[15];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_1E47646AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1E487732C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for DayEvents();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[11];
    goto LABEL_9;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[13] + 32) = a2;
  }

  else
  {
    v18 = sub_1E48783DC();
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + a4[15];

    return v19(v20, a2, a2, v18);
  }

  return result;
}

uint64_t sub_1E476494C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1E4764A08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4764AE4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Event();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for CellDisplayContext(0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[6];
      }

      else
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
        if (*(*(v15 - 8) + 84) == a2)
        {
          v8 = v15;
          v12 = *(v15 - 8);
          v13 = a3[7];
        }

        else
        {
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
          if (*(*(v16 - 8) + 84) != a2)
          {
            v18 = *(a1 + a3[9] + 8);
            if (v18 > 1)
            {
              return (v18 ^ 0xFF) + 1;
            }

            else
            {
              return 0;
            }
          }

          v8 = v16;
          v12 = *(v16 - 8);
          v13 = a3[8];
        }
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1E4764CEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Event();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for CellDisplayContext(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[7];
        }

        else
        {
          result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[9] + 8) = -a2;
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[8];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E4764F70(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Event();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E487732C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 254)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 2)
    {
      return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_5;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[12];

  return v20(v21, a2, v19);
}

uint64_t sub_1E47651F8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Event();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1E487732C();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[10];
    goto LABEL_5;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[12];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1E47654A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Event();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E487732C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[9];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1E4765674(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Event();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1E487732C();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1E4765848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Event();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E4765978(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Event();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E4765B14(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Event();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1E4765C48(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Event();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1E4765D7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4877E2C();
  *a1 = result;
  return result;
}

uint64_t sub_1E4765DF4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1E48783DC();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[8];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1E4765F28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = sub_1E48783DC();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1E476605C()
{
  v1 = type metadata accessor for AllDayCirclesView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1E4877B3C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = *(v5 + v1[6]);

  v11 = *(v5 + v1[7]);

  v12 = v1[8];
  v13 = sub_1E48783DC();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1E47661FC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Event();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1E4766380(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Event();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E476650C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1E48783DC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E4766630(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1E48783DC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E4766754()
{
  v1 = (type metadata accessor for WideMultidayEventsView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1E487732C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7]);

  v7 = *(v0 + v3 + v1[9]);

  v8 = v1[10];
  v9 = sub_1E48783DC();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E4766884()
{
  v1 = sub_1E487732C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 72, v3 | 7);
}

uint64_t sub_1E476698C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDB8, &unk_1E487F890);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[12] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_1E4766B50(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1E487732C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDB8, &unk_1E487F890);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[12] + 8) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[8];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E4766D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
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

uint64_t sub_1E4766E10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E487732C();
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

uint64_t sub_1E4766EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E4766FF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E4767140(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDB8, &unk_1E487F890);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1E47672B0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1E487732C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDB8, &unk_1E487F890);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[8];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E4767478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E4767534(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E47675EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E47676E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E487732C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E47677F0(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[12]];

  return v15(v16, a2, v14);
}

char *sub_1E4767980(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[12]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E4767B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E4767C88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E4767DE4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[9];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1E4767F70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E4768144(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1E487732C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[10]];

  return v15(v16, a2, v14);
}

char *sub_1E47682C8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1E487732C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[10]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E476844C()
{
  EventContentView = type metadata accessor for InlineNextEventContentView(0);
  v2 = *(*(EventContentView - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(EventContentView - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = EventContentView[5];
  v8 = sub_1E487732C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + EventContentView[6]);

  v10 = EventContentView[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E487753C();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = EventContentView[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1E4877CCC();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E476863C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4768684(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1E4768740(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E47687F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487736C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1E487719C();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1E476890C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E487736C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1E487719C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E4768A14()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D348, &unk_1E4880DD0);
  sub_1E4816980();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E4768A78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D3C8, &unk_1E4880FD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D3C0, &qword_1E4880FD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D3B8, &qword_1E4880FC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D3B0, &qword_1E4880FC0);
  sub_1E4773680(&qword_1EE2B0E48, &qword_1ECF7D3B0, &qword_1E4880FC0);
  sub_1E477A374();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E4768BF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CalendarDateTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3D0, &qword_1E4881050);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  if (a2 == 254)
  {
    v17 = *(a1 + a3[8] + 8);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[9];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_1E4768E20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CalendarDateTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3D0, &qword_1E4881050);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  if (a3 == 254)
  {
    *(a1 + a4[8] + 8) = -a2;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + a4[9];

    return v19(v20, a2, a2, v18);
  }

  return result;
}

uint64_t sub_1E4769054(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3E0, &qword_1E48810C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4769110@<X0>(void *a1@<X8>)
{
  sub_1E48218D4();
  result = sub_1E4877F2C();
  *a1 = v3;
  return result;
}

uint64_t sub_1E47691A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1E4769330(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BBF8, &unk_1E487B540);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E47694E0()
{
  v1 = type metadata accessor for MediumListContentView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_1E487732C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[5]);

  v8 = (v0 + v3 + v1[6]);
  v9 = *v8;

  v10 = v8[1];

  v11 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1E4877F9C();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  sub_1E477A484(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v14 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1E487893C();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
    v16 = *(v5 + v14);
  }

  v17 = *(v5 + v1[10]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E4769750(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1E47698E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1E4769A7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E487732C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1E4769BAC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1E487732C();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E4769D50(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1E487732C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[10];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[12]];

  return v17(v18, a2, v16);
}

char *sub_1E4769F7C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1E487732C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v17 = *(*(v16 - 8) + 56);
  v18 = &v5[a4[12]];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1E476A1C4()
{
  v1 = type metadata accessor for NarrowConflictsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[5];
  v8 = sub_1E487732C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1E487894C();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877CCC();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  sub_1E477A484(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v15 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1E487893C();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
  }

  else
  {
    v17 = *(v5 + v15);
  }

  v18 = *(v5 + v1[11]);

  v19 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1E4877B3C();
    (*(*(v20 - 8) + 8))(v5 + v19, v20);
  }

  else
  {
    v21 = *(v5 + v19);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E476A4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Event();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E476A5D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Event();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E476A70C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E476A758()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D588, &unk_1E4881DB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D580, &qword_1E4881DB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D578, &qword_1E4881DA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D570, &qword_1E4881DA0);
  sub_1E4773680(&qword_1EE2B0E58, &qword_1ECF7D570, &qword_1E4881DA0);
  sub_1E477A374();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E476A8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E476A9CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CalendarEventsTimelineEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B838, &unk_1E487A810);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E476AB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
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

uint64_t sub_1E476ABF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
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

uint64_t sub_1E476ACBC()
{
  v1 = type metadata accessor for ConflictColorBarView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1E4877B3C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E476AE2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Event();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for CellDisplayContext(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  if (a2 == 254)
  {
    v18 = *(a1 + a3[9] + 8);
    if (v18 > 1)
    {
      return (v18 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[10];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_1E476B0A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Event();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for CellDisplayContext(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  if (a3 == 254)
  {
    *(a1 + a4[9] + 8) = -a2;
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
    v20 = *(*(v19 - 8) + 56);
    v21 = a1 + a4[10];

    return v20(v21, a2, a2, v19);
  }

  return result;
}

uint64_t sub_1E476B320@<X0>(void *a1@<X8>)
{
  result = sub_1E4877D7C();
  *a1 = v3;
  return result;
}

uint64_t sub_1E476B394@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4877E4C();
  *a1 = result;
  return result;
}

uint64_t sub_1E476B3C0(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E4877E5C();
}

uint64_t sub_1E476B3EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4877DBC();
  *a1 = result;
  return result;
}

uint64_t sub_1E476B418(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E4877DCC();
}

uint64_t sub_1E476B444@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E4877EEC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E476B478(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1E4877EFC();
}

uint64_t sub_1E476B4D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E476B51C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[7];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[9]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1E476B63C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[9]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1E476B758()
{
  v1 = type metadata accessor for TimelineHoursView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1E477A484(*(v0 + v4 + 16), *(v0 + v4 + 24));
  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1E487753C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1E4877CCC();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = *(v5 + v1[9]);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1E476B900(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E487732C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v7 = v13;
    v8 = *(v13 - 8);
    v9 = a3[8];
    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v7 = v14;
    v8 = *(v14 - 8);
    v9 = a3[9];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[10];

  return v16(v17, a2, v15);
}

uint64_t sub_1E476BAE8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1E487732C();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 254)
  {
    *(a1 + a4[7]) = a2 + 1;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E476BCD8()
{
  v1 = type metadata accessor for SpatialGridView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = v1[6];
  v7 = sub_1E487732C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1E487753C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1E4877B3C();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  v14 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1E4877CCC();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
    v16 = *(v5 + v14);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E476BF18(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[11]];

  return v15(v16, a2, v14);
}

char *sub_1E476C0A8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B848, &unk_1E487A820);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[11]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E476C27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E476C398(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E487732C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E476C4B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D0F8, &qword_1E4880020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E476C524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DayEvents();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E476C5E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DayEvents();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E476C6C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[10];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1E476C854(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[10];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B850, &qword_1E487C800);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E476CA3C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1E476CBC8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1E487732C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C820, &unk_1E487B670);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E476CD64(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1E476CE20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E476CED0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1E487732C();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[7]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    EventContentViewModel = type metadata accessor for CircularNextEventContentViewModel(0);
    v15 = *(*(EventContentViewModel - 8) + 48);
    v16 = a1 + a3[8];

    return v15(v16, a2, EventContentViewModel);
  }
}

uint64_t sub_1E476D04C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = sub_1E487732C();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    EventContentViewModel = type metadata accessor for CircularNextEventContentViewModel(0);
    v15 = *(*(EventContentViewModel - 8) + 56);
    v16 = a1 + a4[8];

    return v15(v16, a2, a2, EventContentViewModel);
  }

  return result;
}

uint64_t sub_1E476D1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  EventContentViewModel = type metadata accessor for CircularNextEventContentViewModel(0);
  v12 = *(EventContentViewModel - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = EventContentViewModel;
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

uint64_t sub_1E476D2E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for CircularNextEventContentViewModel(0);
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

uint64_t sub_1E476D448()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DA98, &qword_1E4883438);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DA90, &qword_1E4883430);
  sub_1E4855A4C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E476D53C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E476D584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Event();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ColorBarView.Styling(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E476D674(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Event();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ColorBarView.Styling(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E476D7B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1E476D86C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B840, &unk_1E487AEA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E476D924()
{
  v1 = (type metadata accessor for TextStringThatFits() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1E4877CCC();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E476DA50@<X0>(void *a1@<X8>)
{
  result = sub_1E4877E0C();
  *a1 = v3;
  return result;
}

uint64_t sub_1E476DAA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBF8, &qword_1E4883930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E476DB14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBF8, &qword_1E4883930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E476DBC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mirrorCalendarApp];
  *a2 = result;
  return result;
}

id sub_1E476DC40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 hideAllDayEvents];
  *a2 = result;
  return result;
}

uint64_t sub_1E476DC90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E476DCE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_1E476DD44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mirrorCalendarApp];
  *a2 = result;
  return result;
}

uint64_t sub_1E476DDC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E476DE1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1E476DE80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E476DED8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E476DF68(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E476DF88(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1E476DFDC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Event();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1E47707EC(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v9 == 1)
    {
      sub_1E4771108(&v8[*(v4 + 44)], a2);
      return sub_1E47710AC(v8);
    }

    else
    {
      v13 = &v8[*(v4 + 20)];
      sub_1E4877A6C();
      sub_1E47710AC(v8);
      v14 = sub_1E487725C();
      return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
    }
  }

  else
  {
    sub_1E4877A6C();
    v11 = sub_1E487725C();
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 0, 1, v11);
  }
}

uint64_t sub_1E476E19C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event();
  v5 = v4 - 8;
  v30 = *(v4 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4877B3C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  if (*(a1 + *(v5 + 64)) - 3 > 1)
  {
    v32 = sub_1E487863C();
    v17 = a2;
    v18 = *(v9 + 16);
    v29 = v17;
    v18(v14);
    v19 = (*(v9 + 88))(v14, v8);
    if (v19 == *MEMORY[0x1E697DBC0])
    {
      v20 = 1;
    }

    else if (v19 == *MEMORY[0x1E697DBB0])
    {
      v20 = 2;
    }

    else
    {
      (*(v9 + 8))(v14, v8);
      v20 = 0;
    }

    v21 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    sub_1E47707EC(a1, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (v18)(v12, v29, v8);
    v22 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v23 = (v6 + *(v9 + 80) + v22) & ~*(v9 + 80);
    v24 = swift_allocObject();
    sub_1E4770850(v7, v24 + v22);
    (*(v9 + 32))(v24 + v23, v12, v8);
    *(v24 + ((v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v32;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1E47716D8;
    *(v25 + 24) = v24;
    aBlock[4] = sub_1E4771954;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E476E894;
    aBlock[3] = &block_descriptor_79;
    v26 = _Block_copy(aBlock);

    [v21 performAsCurrentTraitCollection_];

    _Block_release(v26);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if (v26)
    {
      __break(1u);
    }

    else
    {
      v27 = v32;

      return v27;
    }
  }

  else
  {
    v15 = CUIKDeclinedEventBackgroundColor();

    return sub_1E48785FC();
  }

  return result;
}

uint64_t sub_1E476E5B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_1E4877B3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E487861C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Event();
  v17 = *(a1 + *(v16 + 56));
  if ((v17 - 3) < 2)
  {
    (*(v12 + 104))(v15, *MEMORY[0x1E69814D0], v11);
    sub_1E487871C();
LABEL_6:
    sub_1E477090C();
    v18 = sub_1E4878E0C();
    goto LABEL_7;
  }

  if ((v17 - 6) > 1)
  {
    v19 = *(a1 + *(v16 + 36));

    goto LABEL_6;
  }

  v18 = [objc_opt_self() whiteColor];
LABEL_7:
  v20 = v18;
  (*(v7 + 16))(v10, a2, v6);
  v21 = (*(v7 + 88))(v10, v6);
  if (v21 == *MEMORY[0x1E697DBC0] || v21 == *MEMORY[0x1E697DBB0])
  {
    v22 = v20;
  }

  else
  {
    v23 = *(v7 + 8);
    v24 = v20;
    v23(v10, v6);
  }

  v25 = CUIKAdjustedColorForColor();

  v26 = CUIKBackgroundColorForCalendarColorWithOpaqueForStyle();
  v27 = sub_1E48785FC();

  v28 = *a3;
  *a3 = v27;
}

uint64_t sub_1E476E8BC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1E487861C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Event();
  if (*(a1 + *(v10 + 56)) - 3 > 1)
  {
    v11 = *(a1 + *(v10 + 36));
  }

  else
  {
    (*(v6 + 104))(v9, *MEMORY[0x1E69814D0], v5);
    sub_1E487871C();
  }

  sub_1E477090C();
  v12 = sub_1E4878E0C();
  v13 = CUIKAdjustedColorForColor();
  v14 = sub_1E48785FC();

  v15 = *a3;
  *a3 = v14;
}

uint64_t sub_1E476EA20(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v3 = type metadata accessor for Event();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4877B3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v28 = sub_1E487863C();
  v13 = *(v7 + 16);
  v13(v12, a2, v6);
  v14 = (*(v7 + 88))(v12, v6);
  if (v14 == *MEMORY[0x1E697DBC0])
  {
    v15 = 1;
  }

  else if (v14 == *MEMORY[0x1E697DBB0])
  {
    v15 = 2;
  }

  else
  {
    (*(v7 + 8))(v12, v6);
    v15 = 0;
  }

  v16 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  sub_1E47707EC(v26, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13(v10, a2, v6);
  v17 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v18 = (v4 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_1E4770850(v5, v19 + v17);
  (*(v7 + 32))(v19 + v18, v10, v6);
  *(v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v28;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E4770958;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1E4771954;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E476E894;
  aBlock[3] = &block_descriptor_20;
  v21 = _Block_copy(aBlock);

  [v16 performAsCurrentTraitCollection_];

  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    v23 = v28;

    return v23;
  }

  return result;
}

uint64_t sub_1E476EDDC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v26 = a3;
  v5 = sub_1E487861C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4877B3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Event();
  v16 = *(a1 + v15[14]);
  (*(v11 + 16))(v14, a2, v10);
  v17 = (*(v11 + 88))(v14, v10);
  if (v17 != *MEMORY[0x1E697DBC0] && v17 != *MEMORY[0x1E697DBB0])
  {
    (*(v11 + 8))(v14, v10);
  }

  if ((v16 - 3) > 1)
  {
    v18 = *(a1 + v15[9]);
  }

  else
  {
    (*(v6 + 104))(v9, *MEMORY[0x1E69814D0], v5);
    sub_1E487871C();
  }

  sub_1E477090C();
  v19 = sub_1E4878E0C();
  if (v16 == 7)
  {
    v20 = *(a1 + v15[19]);
  }

  v21 = CUIKOccurrenceTextColor();
  v22 = sub_1E48785FC();

  v23 = *v26;
  *v26 = v22;
}

uint64_t sub_1E476F0D0(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v3 = type metadata accessor for Event();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4877B3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v28 = [objc_opt_self() systemRedColor];
  v13 = *(v7 + 16);
  v13(v12, a2, v6);
  v14 = (*(v7 + 88))(v12, v6);
  if (v14 == *MEMORY[0x1E697DBC0])
  {
    v15 = 1;
  }

  else if (v14 == *MEMORY[0x1E697DBB0])
  {
    v15 = 2;
  }

  else
  {
    (*(v7 + 8))(v12, v6);
    v15 = 0;
  }

  v16 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  sub_1E47707EC(v26, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13(v10, a2, v6);
  v17 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v18 = (v4 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_1E4770850(v5, v19 + v17);
  (*(v7 + 32))(v19 + v18, v10, v6);
  *(v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v28;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E47708B4;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1E47708CC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E476E894;
  aBlock[3] = &block_descriptor;
  v21 = _Block_copy(aBlock);

  [v16 performAsCurrentTraitCollection_];

  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    v23 = v28;

    return v23;
  }

  return result;
}

void sub_1E476F4A8(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = sub_1E4877B3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E487861C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Event();
  if (*(a1 + *(v16 + 56)) - 3 > 1)
  {
    v17 = *(a1 + *(v16 + 36));
  }

  else
  {
    (*(v12 + 104))(v15, *MEMORY[0x1E69814D0], v11);
    sub_1E487871C();
  }

  sub_1E477090C();
  v18 = sub_1E4878E0C();
  (*(v7 + 16))(v10, a2, v6);
  v19 = (*(v7 + 88))(v10, v6);
  if (v19 != *MEMORY[0x1E697DBC0] && v19 != *MEMORY[0x1E697DBB0])
  {
    (*(v7 + 8))(v10, v6);
  }

  v20 = CUIKOccurrenceSecondaryTextColor();

  v21 = *a3;
  *a3 = v20;
}

uint64_t sub_1E476F76C(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v3 = type metadata accessor for Event();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4877B3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v29 = [objc_opt_self() redColor];
  v13 = *(v7 + 16);
  v13(v12, a2, v6);
  v14 = (*(v7 + 88))(v12, v6);
  if (v14 == *MEMORY[0x1E697DBC0])
  {
    v15 = 1;
  }

  else if (v14 == *MEMORY[0x1E697DBB0])
  {
    v15 = 2;
  }

  else
  {
    (*(v7 + 8))(v12, v6);
    v15 = 0;
  }

  v16 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  sub_1E47707EC(v27, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13(v10, a2, v6);
  v17 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v18 = (v4 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_1E4770850(v5, v19 + v17);
  (*(v7 + 32))(v19 + v18, v10, v6);
  *(v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v29;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E47711D8;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1E4771954;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E476E894;
  aBlock[3] = &block_descriptor_69;
  v21 = _Block_copy(aBlock);

  [v16 performAsCurrentTraitCollection_];

  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    v23 = [v29 CGColor];
    v24 = v29;

    return v23;
  }

  return result;
}

void sub_1E476FB64(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = sub_1E4877B3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E487861C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Event();
  if (*(a1 + *(v16 + 56)) - 3 > 1)
  {
    v17 = *(a1 + *(v16 + 36));
  }

  else
  {
    (*(v12 + 104))(v15, *MEMORY[0x1E69814D0], v11);
    sub_1E487871C();
  }

  sub_1E477090C();
  v18 = sub_1E4878E0C();
  (*(v7 + 16))(v10, a2, v6);
  v19 = (*(v7 + 88))(v10, v6);
  if (v19 != *MEMORY[0x1E697DBC0] && v19 != *MEMORY[0x1E697DBB0])
  {
    (*(v7 + 8))(v10, v6);
  }

  v20 = CUIKAdjustedColorForColor();
  v21 = CUIKBackgroundColorForCalendarColorWithOpaqueForStyle();

  v22 = *a3;
  *a3 = v21;
}

uint64_t sub_1E476FE00(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v3 = type metadata accessor for Event();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4877B3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v29 = [objc_opt_self() redColor];
  v13 = *(v7 + 16);
  v13(v12, a2, v6);
  v14 = (*(v7 + 88))(v12, v6);
  if (v14 == *MEMORY[0x1E697DBC0])
  {
    v15 = 1;
  }

  else if (v14 == *MEMORY[0x1E697DBB0])
  {
    v15 = 2;
  }

  else
  {
    (*(v7 + 8))(v12, v6);
    v15 = 0;
  }

  v16 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  sub_1E47707EC(v27, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13(v10, a2, v6);
  v17 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v18 = (v4 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_1E4770850(v5, v19 + v17);
  (*(v7 + 32))(v19 + v18, v10, v6);
  *(v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v29;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E47711C0;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1E4771954;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E476E894;
  aBlock[3] = &block_descriptor_59;
  v21 = _Block_copy(aBlock);

  [v16 performAsCurrentTraitCollection_];

  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    v23 = [v29 CGColor];
    v24 = v29;

    return v23;
  }

  return result;
}

void sub_1E47701F8(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = sub_1E4877B3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  v14 = sub_1E487861C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Event();
  if (*(a1 + *(v19 + 56)) - 3 > 1)
  {
    v20 = *(a1 + *(v19 + 36));
  }

  else
  {
    (*(v15 + 104))(v18, *MEMORY[0x1E69814D0], v14);
    sub_1E487871C();
  }

  sub_1E477090C();
  v21 = sub_1E4878E0C();
  (*(v7 + 16))(v13, a2, v6);
  v22 = (*(v7 + 88))(v13, v6);
  v23 = *MEMORY[0x1E697DBB0];
  if (v22 != *MEMORY[0x1E697DBC0] && v22 != v23)
  {
    (*(v7 + 8))(v13, v6);
  }

  v24 = CUIKAdjustedColorForColor();
  (*(v7 + 104))(v11, v23, v6);
  v25 = sub_1E4877B2C();
  (*(v7 + 8))(v11, v6);
  if (v25)
  {
    v26 = CUIKColorDarkenedToPercentageWithFinalAlpha();
  }

  else
  {
    v26 = CUIKLightStripeColorForColor();
  }

  v27 = v26;

  v28 = *a3;
  *a3 = v27;
}

uint64_t sub_1E477050C()
{
  v1 = *v0;
  v2 = sub_1E4878BDC();
  v3 = MEMORY[0x1E69192F0](v2);

  return v3;
}

uint64_t sub_1E4770548()
{
  v1 = *v0;
  sub_1E4878BDC();
  sub_1E4878C0C();
}

uint64_t sub_1E477059C()
{
  v1 = *v0;
  sub_1E4878BDC();
  sub_1E487914C();
  sub_1E4878C0C();
  v2 = sub_1E487917C();

  return v2;
}

uint64_t sub_1E4770618(uint64_t a1, id *a2)
{
  result = sub_1E4878BBC();
  *a2 = 0;
  return result;
}

uint64_t sub_1E4770690(uint64_t a1, id *a2)
{
  v3 = sub_1E4878BCC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1E4770710@<X0>(uint64_t *a1@<X8>)
{
  sub_1E4878BDC();
  v2 = sub_1E4878B9C();

  *a1 = v2;
  return result;
}

void *sub_1E4770754@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1E4770764(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1E4878BDC();
  v6 = v5;
  if (v4 == sub_1E4878BDC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E48790EC();
  }

  return v9 & 1;
}

uint64_t sub_1E47707EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4770850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E47708CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E477090C()
{
  result = qword_1EE2B0D30;
  if (!qword_1EE2B0D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2B0D30);
  }

  return result;
}

uint64_t sub_1E4770970@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1E4878B9C();

  *a2 = v5;
  return result;
}

uint64_t sub_1E47709B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1E4878BDC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1E47709E4(uint64_t a1)
{
  v2 = sub_1E47718C4(&qword_1EE2B0D70);
  v3 = sub_1E47718C4(&qword_1ECF7B6A8);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1E4770A7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = v7;
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4877B3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v43 - v15;
  v17 = sub_1E487861C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v4 + 56);
  v49 = a1;
  v23 = *(a1 + v22);
  if ((v23 - 3) > 1)
  {
    v46 = v5;
    v47 = v8;
    v44 = v23;
    v43 = v4;
    v25 = *(v10 + 16);
    v45 = a2;
    v25(v16, a2, v9);
    v26 = *(v10 + 88);
    v27 = v26(v16, v9);
    v28 = *MEMORY[0x1E697DBC0];
    v29 = MEMORY[0x1E697DBB0];
    if (v27 == *MEMORY[0x1E697DBC0])
    {
      v30 = 1;
    }

    else if (v27 == *MEMORY[0x1E697DBB0])
    {
      v30 = 2;
    }

    else
    {
      (*(v10 + 8))(v16, v9);
      v30 = 0;
    }

    v51 = sub_1E487863C();
    v25(v14, v45, v9);
    v31 = v26(v14, v9);
    if (v31 == v28)
    {
      v32 = 1;
      v33 = v47;
    }

    else
    {
      v33 = v47;
      if (v31 == *v29)
      {
        v32 = 2;
      }

      else
      {
        (*(v10 + 8))(v14, v9);
        v32 = 0;
      }
    }

    v34 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    v35 = v49;
    sub_1E47707EC(v49, v33);
    v36 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v37 = (v48 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    sub_1E4770850(v33, v38 + v36);
    *(v38 + v37) = v30;
    *(v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v51;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1E4770FB8;
    *(v39 + 24) = v38;
    aBlock[4] = sub_1E4771954;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E476E894;
    aBlock[3] = &block_descriptor_30;
    v40 = _Block_copy(aBlock);

    [v34 performAsCurrentTraitCollection_];

    _Block_release(v40);
    LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

    if (v40)
    {
      __break(1u);
    }

    else
    {
      if (v44 == 7 && (*(v35 + *(v43 + 76)) & 1) == 0)
      {

        v42 = sub_1E48786DC();
      }

      else
      {
        v41 = v51;

        v42 = v41;
      }

      return v42;
    }
  }

  else
  {
    (*(v19 + 104))(v21, *MEMORY[0x1E69814D0]);
    return sub_1E487871C();
  }

  return result;
}

uint64_t sub_1E4770FB8()
{
  v1 = *(type metadata accessor for Event() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E476E8BC(v0 + v2, v4, v5);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E47710AC(uint64_t a1)
{
  v2 = type metadata accessor for Event();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4771108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
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

id sub_1E4771220(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_1E4877B3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2(v7);
  (*(v5 + 16))(v9, a1, v4);
  v11 = (*(v5 + 88))(v9, v4);
  if (v11 == *MEMORY[0x1E697DBC0])
  {
    v12 = 1;
  }

  else if (v11 == *MEMORY[0x1E697DBB0])
  {
    v12 = 2;
  }

  else
  {
    (*(v5 + 8))(v9, v4);
    v12 = 0;
  }

  v13 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v14 = [v10 resolvedColorWithTraitCollection_];

  v15 = [v14 CGColor];
  return v15;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for Event();
  v2 = *(*(v1 - 1) + 80);
  v23 = *(*(v1 - 1) + 64);
  v24 = sub_1E4877B3C();
  v3 = *(v24 - 8);
  v4 = *(v3 + 80);
  v22 = *(v3 + 64);
  v5 = v0 + ((v2 + 16) & ~v2);
  v6 = *(v5 + 8);

  v7 = v1[5];
  v8 = sub_1E487732C();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v9(v5 + v1[6], v8);
  v10 = *(v5 + v1[9]);

  v11 = *(v5 + v1[10] + 8);

  v12 = v1[11];
  v13 = sub_1E487725C();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  v15 = v5 + v1[15];
  v16 = type metadata accessor for Location();
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v17 = sub_1E487719C();
    (*(*(v17 - 8) + 8))(v15, v17);
    v18 = *(v15 + *(v16 + 20) + 8);
  }

  v19 = (((v2 + 16) & ~v2) + v23 + v4) & ~v4;
  v20 = *(v5 + v1[16] + 8);

  (*(v3 + 8))(v0 + v19, v24);

  return MEMORY[0x1EEE6BDD0](v0, ((v22 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v4 | 7);
}

uint64_t sub_1E47716F0(uint64_t (*a1)(unint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for Event() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1E4877B3C() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v1 + v6, v7);
}

void sub_1E4771810(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1E47718C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpatialHeaderView.Style(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SpatialHeaderView.Style(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E4771AE8()
{
  result = qword_1ECF7B770;
  if (!qword_1ECF7B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7B770);
  }

  return result;
}

uint64_t sub_1E4771B50()
{
  v1 = *v0;
  sub_1E487914C();
  MEMORY[0x1E6919800](v1);
  return sub_1E487917C();
}

uint64_t sub_1E4771BC4()
{
  v1 = *v0;
  sub_1E487914C();
  MEMORY[0x1E6919800](v1);
  return sub_1E487917C();
}

uint64_t type metadata accessor for SpatialHeaderView()
{
  result = qword_1EE2B3518;
  if (!qword_1EE2B3518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4771C7C()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TimeScalingEngine.SpatialViewParameters();
    if (v1 <= 0x3F)
    {
      sub_1E4771D30();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E4771D30()
{
  if (!qword_1EE2B4638)
  {
    v0 = sub_1E4878E5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2B4638);
    }
  }
}

uint64_t sub_1E4771D9C@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B778, &qword_1E487A5A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v44 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B780, &qword_1E487A5A8);
  v6 = *(*(v46 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v46);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v44 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B788, &qword_1E487A5B0);
  v11 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B790, &qword_1E487A5B8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v16;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B798, &qword_1E487A5C0);
  v18 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v20 = &v44 - v19;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7A0, &qword_1E487A5C8);
  v21 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v23 = &v44 - v22;
  v24 = type metadata accessor for SpatialHeaderView();
  v25 = v1 + *(v24 + 20);
  v26 = type metadata accessor for TimeScalingEngine.SpatialViewParameters();
  if (!*(v25 + *(v26 + 32)))
  {
    *v23 = sub_1E4877FBC();
    *(v23 + 1) = 0;
    v23[16] = 0;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7B0, &qword_1E487A5D8);
    sub_1E47722DC(v1, &v23[*(v42 + 44)]);
    v40 = &qword_1ECF7B7A0;
    v41 = &qword_1E487A5C8;
    sub_1E4773850(v23, v17, &qword_1ECF7B7A0, &qword_1E487A5C8);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B0ED0, &qword_1ECF7B7A0, &qword_1E487A5C8);
    sub_1E47735C8();
    goto LABEL_5;
  }

  if (*(v25 + *(v26 + 32)) == 1)
  {
    *v5 = sub_1E4877F5C();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7A8, &qword_1E487A5D0);
    sub_1E4772C30(v1, &v5[*(v27 + 44)]);
    v28 = sub_1E487817C();
    v29 = v1 + *(v24 + 24);
    v30 = *v29;
    *(v29 + 8);
    sub_1E4877B0C();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    sub_1E477372C(v5, v9, &qword_1ECF7B778, &qword_1E487A5A0);
    v39 = &v9[*(v46 + 36)];
    *v39 = v28;
    *(v39 + 1) = v32;
    *(v39 + 2) = v34;
    *(v39 + 3) = v36;
    *(v39 + 4) = v38;
    v39[40] = 0;
    v40 = &qword_1ECF7B780;
    v41 = &qword_1E487A5A8;
    v23 = v44;
    sub_1E477372C(v9, v44, &qword_1ECF7B780, &qword_1E487A5A8);
    sub_1E4773850(v23, v17, &qword_1ECF7B780, &qword_1E487A5A8);
    swift_storeEnumTagMultiPayload();
    sub_1E4773680(&qword_1EE2B0ED0, &qword_1ECF7B7A0, &qword_1E487A5C8);
    sub_1E47735C8();
LABEL_5:
    sub_1E487803C();
    sub_1E4773850(v20, v13, &qword_1ECF7B798, &qword_1E487A5C0);
    swift_storeEnumTagMultiPayload();
    sub_1E47734C8();
    sub_1E487803C();
    sub_1E47738B8(v20, &qword_1ECF7B798, &qword_1E487A5C0);
    return sub_1E47738B8(v23, v40, v41);
  }

  swift_storeEnumTagMultiPayload();
  sub_1E47734C8();
  return sub_1E487803C();
}

uint64_t sub_1E47722DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NarrowAllDayView();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7B8, &qword_1E487A5E0);
  v63 = *(v8 - 8);
  v9 = *(v63 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v59 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7C0, &qword_1E487A5E8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v64 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v55 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7C8, &qword_1E487A5F0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v62 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - v22;
  sub_1E4878D2C();
  v61 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v23 = sub_1E4877F6C();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D0, &qword_1E487A5F8);
  sub_1E4772920(a1, &v23[*(v24 + 44)]);
  v25 = type metadata accessor for SpatialHeaderView();
  v26 = a1 + v25[5];
  v27 = *(v26 + *(type metadata accessor for DayEvents() + 24));
  v28 = 1;
  if (*(v27 + 16))
  {
    v57 = v8;
    v29 = v4[5];
    v30 = sub_1E487732C();
    (*(*(v30 - 8) + 16))(&v7[v29], v26, v30);
    v56 = *(a1 + v25[8]);
    *&v7[v4[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
    swift_storeEnumTagMultiPayload();
    *&v7[v4[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v7[v4[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *&v7[v4[12]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v32 = swift_getKeyPath();
    *v7 = v27;
    *&v7[v4[6]] = v56;
    v7[v4[7]] = 1;
    v33 = &v7[v4[11]];
    *v33 = KeyPath;
    v8 = v57;
    v33[8] = 0;
    v34 = &v7[v4[13]];
    *v34 = v32;
    v34[8] = 0;

    v35 = sub_1E487817C();
    v36 = a1 + v25[6];
    v37 = *v36;
    *(v36 + 8);
    sub_1E4877B0C();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = v59;
    sub_1E47736C8(v7, v59);
    v47 = v46 + *(v8 + 36);
    *v47 = v35;
    *(v47 + 8) = v39;
    *(v47 + 16) = v41;
    *(v47 + 24) = v43;
    *(v47 + 32) = v45;
    *(v47 + 40) = 0;
    v48 = v46;
    v49 = v58;
    sub_1E477372C(v48, v58, &qword_1ECF7B7B8, &qword_1E487A5E0);
    v50 = v60;
    sub_1E477372C(v49, v60, &qword_1ECF7B7B8, &qword_1E487A5E0);
    v28 = 0;
  }

  else
  {
    v50 = v60;
  }

  (*(v63 + 56))(v50, v28, 1, v8);
  v51 = v62;
  sub_1E4773850(v23, v62, &qword_1ECF7B7C8, &qword_1E487A5F0);
  v52 = v64;
  sub_1E4773850(v50, v64, &qword_1ECF7B7C0, &qword_1E487A5E8);
  sub_1E4773850(v51, a2, &qword_1ECF7B7C8, &qword_1E487A5F0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F0, &qword_1E487A730);
  sub_1E4773850(v52, a2 + *(v53 + 48), &qword_1ECF7B7C0, &qword_1E487A5E8);
  sub_1E47738B8(v50, &qword_1ECF7B7C0, &qword_1E487A5E8);
  sub_1E47738B8(v23, &qword_1ECF7B7C8, &qword_1E487A5F0);
  sub_1E47738B8(v52, &qword_1ECF7B7C0, &qword_1E487A5E8);
  sub_1E47738B8(v51, &qword_1ECF7B7C8, &qword_1E487A5F0);
}

uint64_t sub_1E4772920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IconicDateHeader();
  v5 = *(*(v4 - 1) + 64);
  v6 = (MEMORY[0x1EEE9AC00])();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(type metadata accessor for SpatialHeaderView() + 20);
  v12 = sub_1E487732C();
  (*(*(v12 - 8) + 16))(v10, a1 + v11, v12);
  *&v10[v4[5]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  swift_storeEnumTagMultiPayload();
  *&v10[v4[6]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v14 = &v10[v4[7]];
  *v14 = KeyPath;
  v14[8] = 0;
  v15 = v4[8];
  v23 = 0x4038000000000000;
  sub_1E4773794();
  sub_1E4877B6C();
  v16 = v4[9];
  v23 = 0x403F000000000000;
  sub_1E4877B6C();
  v17 = v4[10];
  v23 = 0x4046000000000000;
  sub_1E4877B6C();
  v18 = v4[11];
  v23 = 0x4024000000000000;
  sub_1E4877B6C();
  v19 = &v10[v4[12]];
  strcpy(v19, "EEEE, MMMM dd");
  *(v19 + 7) = -4864;
  sub_1E47737E8(v10, v8, type metadata accessor for IconicDateHeader);
  sub_1E47737E8(v8, a2, type metadata accessor for IconicDateHeader);
  v20 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B800, &qword_1E487A798) + 48);
  *v20 = 0;
  *(v20 + 8) = 0;
  sub_1E4773918(v10, type metadata accessor for IconicDateHeader);
  sub_1E4773918(v8, type metadata accessor for IconicDateHeader);
}

uint64_t sub_1E4772C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B808, &qword_1E487A7A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = sub_1E4877FBC();
  *(v10 + 1) = 0x4018000000000000;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B810, &qword_1E487A7A8);
  sub_1E4772DF0(a1, &v10[*(v11 + 44)]);
  sub_1E4773850(v10, v8, &qword_1ECF7B808, &qword_1E487A7A0);
  sub_1E4773850(v8, a2, &qword_1ECF7B808, &qword_1E487A7A0);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B818, &unk_1E487A7B0) + 48);
  *v12 = 0;
  *(v12 + 8) = 0;
  sub_1E47738B8(v10, &qword_1ECF7B808, &qword_1E487A7A0);
  sub_1E47738B8(v8, &qword_1ECF7B808, &qword_1E487A7A0);
}

uint64_t sub_1E4772DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for NarrowAllDayView();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B820, &unk_1E487E2E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v61 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v49 - v11;
  v55 = sub_1E48782AC();
  v12 = *(v55 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NarrowTextHeaderView();
  v16 = *(*(v15 - 1) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v57 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v49 - v19;
  sub_1E4878D2C();
  v56 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = sub_1E487732C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v24 = v22 + 16;
  v23(v20, a1, v21);
  v25 = type metadata accessor for SpatialHeaderView();
  v26 = a1 + *(v25 + 20);
  v27 = &v20[v15[5]];
  v52 = v24;
  v53 = v23;
  v23(v27, v26, v21);
  v51 = v25;
  LOBYTE(v23) = *(a1 + *(v25 + 28));
  KeyPath = swift_getKeyPath();
  v50 = a1;
  *&v20[v15[7]] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  v20[v15[6]] = v23;
  v29 = &v20[v15[8]];
  *v29 = 0x4D4D202C45454545;
  *(v29 + 1) = 0xEB0000000064204DLL;
  v30 = &v20[v15[9]];
  strcpy(v30, "EEEE, MMMM d");
  v30[13] = 0;
  *(v30 + 7) = -5120;
  v31 = &v20[v15[10]];
  *v31 = 1162167621;
  *(v31 + 1) = 0xE400000000000000;
  v32 = v15[11];
  sub_1E48782DC();
  v33 = v54;
  v34 = v55;
  (*(v12 + 104))(v54, *MEMORY[0x1E6980EA0], v55);
  sub_1E48782CC();

  (*(v12 + 8))(v33, v34);
  v35 = sub_1E48781FC();

  *&v20[v32] = v35;
  v36 = *(v26 + *(type metadata accessor for DayEvents() + 24));
  if (*(v36 + 16))
  {
    v37 = v59;
    v53(&v6[v59[5]], v26, v21);
    v38 = *(v50 + *(v51 + 32));
    *&v6[v37[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7D8, &qword_1E487A630);
    swift_storeEnumTagMultiPayload();
    *&v6[v37[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v6[v37[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    v39 = swift_getKeyPath();
    *&v6[v37[12]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v40 = swift_getKeyPath();
    *v6 = v36;
    *&v6[v37[6]] = v38;
    v6[v37[7]] = 1;
    v41 = &v6[v37[11]];
    *v41 = v39;
    v41[8] = 0;
    v42 = &v6[v37[13]];
    *v42 = v40;
    v42[8] = 0;
    v43 = v60;
    sub_1E47736C8(v6, v60);
    (*(v58 + 56))(v43, 0, 1, v37);
  }

  else
  {
    v43 = v60;
    (*(v58 + 56))(v60, 1, 1, v59);
  }

  v44 = v57;
  sub_1E47737E8(v20, v57, type metadata accessor for NarrowTextHeaderView);
  v45 = v61;
  sub_1E4773850(v43, v61, &qword_1ECF7B820, &unk_1E487E2E0);
  v46 = v62;
  sub_1E47737E8(v44, v62, type metadata accessor for NarrowTextHeaderView);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B828, &qword_1E487A7C0);
  sub_1E4773850(v45, v46 + *(v47 + 48), &qword_1ECF7B820, &unk_1E487E2E0);
  sub_1E47738B8(v43, &qword_1ECF7B820, &unk_1E487E2E0);
  sub_1E4773918(v20, type metadata accessor for NarrowTextHeaderView);
  sub_1E47738B8(v45, &qword_1ECF7B820, &unk_1E487E2E0);
  sub_1E4773918(v44, type metadata accessor for NarrowTextHeaderView);
}

unint64_t sub_1E47734C8()
{
  result = qword_1EE2B1180;
  if (!qword_1EE2B1180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B798, &qword_1E487A5C0);
    sub_1E4773680(&qword_1EE2B0ED0, &qword_1ECF7B7A0, &qword_1E487A5C8);
    sub_1E47735C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1180);
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

unint64_t sub_1E47735C8()
{
  result = qword_1EE2B14A8;
  if (!qword_1EE2B14A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B780, &qword_1E487A5A8);
    sub_1E4773680(&qword_1EE2B0F88, &qword_1ECF7B778, &qword_1E487A5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14A8);
  }

  return result;
}

uint64_t sub_1E4773680(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1E47736C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NarrowAllDayView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E477372C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E4773794()
{
  result = qword_1EE2B0E38;
  if (!qword_1EE2B0E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B0E38);
  }

  return result;
}

uint64_t sub_1E47737E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4773850(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E47738B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E4773918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4773978()
{
  result = qword_1EE2B1130;
  if (!qword_1EE2B1130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7B830, &qword_1E487A7C8);
    sub_1E47734C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1130);
  }

  return result;
}

uint64_t type metadata accessor for NarrowAllDayView()
{
  result = qword_1EE2B57F0;
  if (!qword_1EE2B57F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4773A78()
{
  sub_1E4773D64(319, &qword_1EE2B0DE0, type metadata accessor for Event, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1E487732C();
    if (v1 <= 0x3F)
    {
      sub_1E4773D14(319, &qword_1EE2B10A0, MEMORY[0x1E6980F58], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1E4773D64(319, &qword_1EE2B1690, MEMORY[0x1E6985840], MEMORY[0x1E697DCC8]);
        if (v3 <= 0x3F)
        {
          sub_1E4773D64(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
          if (v4 <= 0x3F)
          {
            sub_1E4773D64(319, &qword_1EE2B1688, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
            if (v5 <= 0x3F)
            {
              sub_1E4773D14(319, &qword_1EE2B1670, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC8]);
              if (v6 <= 0x3F)
              {
                sub_1E4773D64(319, &qword_1EE2B1698, MEMORY[0x1E6985780], MEMORY[0x1E697DCC8]);
                if (v7 <= 0x3F)
                {
                  sub_1E4773D64(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
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
    }
  }
}

void sub_1E4773D14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1E4773D64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E4773DE4()
{
  v1 = sub_1E48782AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for NarrowAllDayView() + 24);
  if (*(v0 + v6))
  {
    v7 = *(v0 + v6);
  }

  else
  {
    v8 = (v2 + 104);
    v9 = (v2 + 8);
    if (sub_1E4773F9C())
    {
      sub_1E48782EC();
      (*v8)(v5, *MEMORY[0x1E6980EA0], v1);
      sub_1E48782CC();

      (*v9)(v5, v1);
      v7 = sub_1E48781FC();
    }

    else
    {
      sub_1E48782FC();
      (*v8)(v5, *MEMORY[0x1E6980EA0], v1);
      v7 = sub_1E48782CC();

      (*v9)(v5, v1);
    }
  }

  return v7;
}

uint64_t sub_1E4773F9C()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for NarrowAllDayView() + 44);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_1E47740F4()
{
  v1 = sub_1E4877B3C();
  v22 = *(v1 - 8);
  v2 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Event();
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E487893C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  sub_1E47743A4(&v21 - v15);
  sub_1E487892C();
  v17 = sub_1E48788FC();
  v18 = *(v10 + 8);
  v18(v14, v9);
  v18(v16, v9);
  if ((v17 & 1) == 0 || *(*v0 + 16) != 1)
  {
    return sub_1E48786EC();
  }

  sub_1E477AAB4(*v0 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v8, type metadata accessor for Event);
  sub_1E47745AC(v4);
  v19 = sub_1E476EA20(v8, v4);
  (*(v22 + 8))(v4, v1);
  sub_1E477AB1C(v8, type metadata accessor for Event);
  return v19;
}

uint64_t sub_1E47743A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for NarrowAllDayView();
  sub_1E4773850(v1 + *(v12 + 48), v11, &qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487893C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E47745AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for NarrowAllDayView();
  sub_1E4773850(v1 + *(v12 + 40), v11, &qword_1ECF7B7E0, &qword_1E487A6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877B3C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E47747B4()
{
  v19 = type metadata accessor for Event();
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v19);
  v18 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = *v0;
  v17 = *(*v0 + 16);
  if (v17)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (v9 < *(v8 + 16))
    {
      v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v12 = *(v1 + 72);
      sub_1E477AAB4(v8 + v11 + v12 * v9, v7, type metadata accessor for Event);
      sub_1E4878D2C();
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v13 = v7[*(v19 + 56)];

      if (v13 == 5)
      {
        sub_1E477A6A8(v7, v18, type metadata accessor for Event);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v10 + 16) + 1, 1);
          v10 = v20;
        }

        v16 = *(v10 + 16);
        v15 = *(v10 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1E4858038(v15 > 1, v16 + 1, 1);
          v10 = v20;
        }

        *(v10 + 16) = v16 + 1;
        result = sub_1E477A6A8(v18, v10 + v11 + v16 * v12, type metadata accessor for Event);
      }

      else
      {
        result = sub_1E477AB1C(v7, type metadata accessor for Event);
      }

      if (v17 == ++v9)
      {
        return v10;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1E4774A4C()
{
  v19 = type metadata accessor for Event();
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v19);
  v17 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = *v0;
  v18 = *(*v0 + 16);
  if (v18)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (v9 < *(v8 + 16))
    {
      v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v12 = *(v1 + 72);
      sub_1E477AAB4(v8 + v11 + v12 * v9, v7, type metadata accessor for Event);
      sub_1E4878D2C();
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v13 = v7[*(v19 + 56)];
      if (v13 == 5)
      {
        sub_1E477AB1C(v7, type metadata accessor for Event);
      }

      else
      {

        if ((v13 & 0xFE) == 6)
        {
          result = sub_1E477AB1C(v7, type metadata accessor for Event);
        }

        else
        {
          sub_1E477A6A8(v7, v17, type metadata accessor for Event);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v20 = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E4858038(0, *(v10 + 16) + 1, 1);
            v10 = v20;
          }

          v16 = *(v10 + 16);
          v15 = *(v10 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_1E4858038(v15 > 1, v16 + 1, 1);
            v10 = v20;
          }

          *(v10 + 16) = v16 + 1;
          result = sub_1E477A6A8(v17, v10 + v11 + v16 * v12, type metadata accessor for Event);
        }
      }

      if (v18 == ++v9)
      {
        return v10;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1E4774D18()
{
  v19 = type metadata accessor for Event();
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v19);
  v18 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = *v0;
  v17 = *(*v0 + 16);
  if (v17)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (v9 < *(v8 + 16))
    {
      v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v12 = *(v1 + 72);
      sub_1E477AAB4(v8 + v11 + v12 * v9, v7, type metadata accessor for Event);
      sub_1E4878D2C();
      sub_1E4878D1C();
      sub_1E4878D0C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v13 = v7[*(v19 + 56)];

      if ((v13 & 0xFE) == 6)
      {
        sub_1E477A6A8(v7, v18, type metadata accessor for Event);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v10 + 16) + 1, 1);
          v10 = v20;
        }

        v16 = *(v10 + 16);
        v15 = *(v10 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1E4858038(v15 > 1, v16 + 1, 1);
          v10 = v20;
        }

        *(v10 + 16) = v16 + 1;
        result = sub_1E477A6A8(v18, v10 + v11 + v16 * v12, type metadata accessor for Event);
      }

      else
      {
        result = sub_1E477AB1C(v7, type metadata accessor for Event);
      }

      if (v17 == ++v9)
      {
        return v10;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1E4774FB4()
{
  v1 = type metadata accessor for Event();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (*(*v0 + 16) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F8, &qword_1E487AC28);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1E487A7E0;
    sub_1E477AAB4(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v5, type metadata accessor for Event);
    v8 = sub_1E47CC708();
    v10 = v9;
    sub_1E477AB1C(v5, type metadata accessor for Event);
    result = v7;
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    return result;
  }

  v12 = *(sub_1E4774A4C() + 16);

  if (!v12)
  {
    v13 = *(sub_1E4774D18() + 16);

    if (!v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F8, &qword_1E487AC28);
      v28 = swift_allocObject();
      v36 = xmmword_1E487A7E0;
      *(v28 + 16) = xmmword_1E487A7E0;
      if (qword_1EE2B4848 != -1)
      {
        swift_once();
      }

      sub_1E48771EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
      v29 = swift_allocObject();
      *(v29 + 16) = v36;
      v30 = sub_1E47747B4();
      goto LABEL_16;
    }
  }

  v14 = *(sub_1E4774A4C() + 16);

  if (!v14)
  {
    v15 = *(sub_1E47747B4() + 16);

    if (!v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F8, &qword_1E487AC28);
      v28 = swift_allocObject();
      v36 = xmmword_1E487A7E0;
      *(v28 + 16) = xmmword_1E487A7E0;
      if (qword_1EE2B4848 != -1)
      {
        swift_once();
      }

      sub_1E48771EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
      v29 = swift_allocObject();
      *(v29 + 16) = v36;
      v30 = sub_1E4774D18();
LABEL_16:
      v31 = *(v30 + 16);

      v32 = MEMORY[0x1E69E65A8];
      *(v29 + 56) = MEMORY[0x1E69E6530];
      *(v29 + 64) = v32;
      *(v29 + 32) = v31;
      v33 = sub_1E4878BAC();
      v35 = v34;

      result = v28;
      *(v28 + 32) = v33;
      *(v28 + 40) = v35;
      return result;
    }
  }

  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  sub_1E48771EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v16 = swift_allocObject();
  v36 = xmmword_1E487A7E0;
  *(v16 + 16) = xmmword_1E487A7E0;
  v17 = MEMORY[0x1E69E6530];
  v18 = *(v6 + 16);
  v19 = MEMORY[0x1E69E65A8];
  *(v16 + 56) = MEMORY[0x1E69E6530];
  *(v16 + 64) = v19;
  *(v16 + 32) = v18;
  v20 = sub_1E4878BAC();
  v22 = v21;

  sub_1E48771EC();
  v23 = swift_allocObject();
  *(v23 + 16) = v36;
  v24 = *(v6 + 16);
  *(v23 + 56) = v17;
  *(v23 + 64) = v19;
  *(v23 + 32) = v24;
  v25 = sub_1E4878BAC();
  v27 = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F8, &qword_1E487AC28);
  result = swift_allocObject();
  *(result + 16) = xmmword_1E487A7F0;
  *(result + 32) = v20;
  *(result + 40) = v22;
  *(result + 48) = v25;
  *(result + 56) = v27;
  return result;
}

uint64_t sub_1E4775568()
{
  v0 = type metadata accessor for Event();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(sub_1E47747B4() + 16);

  if (v5)
  {
    return 0;
  }

  v6 = *(sub_1E4774D18() + 16);

  if (v6)
  {
    return 0;
  }

  v7 = *(sub_1E4774A4C() + 16);

  if (v7 != 1)
  {
    return 0;
  }

  result = sub_1E4774A4C();
  if (*(result + 16))
  {
    sub_1E477AAB4(result + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v4, type metadata accessor for Event);

    v9 = v4[*(v0 + 56)];
    sub_1E477AB1C(v4, type metadata accessor for Event);
    return v9 == 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E47756C0()
{
  v0 = *(sub_1E47747B4() + 16);

  if (!v0)
  {
    v1 = *(sub_1E4774D18() + 16);

    if (!v1)
    {
      v2 = *(sub_1E4774A4C() + 16);

      if (v2 == 1)
      {
        if (qword_1EE2B4848 != -1)
        {
          swift_once();
        }

        v3 = sub_1E48771EC();
        MEMORY[0x1E69192D0](v3);
      }
    }
  }

  if (sub_1E4775568())
  {
    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    v4 = sub_1E48771EC();
    MEMORY[0x1E69192D0](v4);
  }

  return 0;
}

uint64_t sub_1E47758A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4877CCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  sub_1E4775B14(&v21 - v10);
  sub_1E4877CAC();
  sub_1E477AB7C(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
  v12 = sub_1E4878EAC();
  v13 = *(v5 + 8);
  v13(v9, v4);
  result = (v13)(v11, v4);
  if (v12)
  {
    v15 = sub_1E487725C();
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }

  else
  {
    v16 = *v2;
    v17 = *(*v2 + 16);
    if (v17 < 2)
    {
      if (v17 == 1)
      {
        v20 = type metadata accessor for Event();
        return sub_1E4773850(v16 + *(v20 + 44) + ((*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80)), a1, &unk_1ECF7B688, &qword_1E487C160);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v18 = v2 + *(type metadata accessor for NarrowAllDayView() + 20);
      sub_1E4877A6C();
      v19 = sub_1E487725C();
      return (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
    }
  }

  return result;
}

uint64_t sub_1E4775B14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for NarrowAllDayView();
  sub_1E4773850(v1 + *(v12 + 36), v11, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877CCC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E4775D1C()
{
  v1 = type metadata accessor for Event();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(sub_1E47747B4() + 16);

  if (v6)
  {
    return 0;
  }

  v7 = *(sub_1E4774D18() + 16);

  if (v7)
  {
    return 0;
  }

  v8 = *(sub_1E4774A4C() + 16);

  if (v8 != 1)
  {
    return 0;
  }

  if (*(*v0 + 16))
  {
    sub_1E477AAB4(*v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v5, type metadata accessor for Event);
    v10 = v5[*(v1 + 56)];
    sub_1E477AB1C(v5, type metadata accessor for Event);
    return (v10 - 3) < 2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4775E6C()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for NarrowAllDayView() + 52));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_1E4775FBC@<X0>(uint64_t a1@<X8>)
{
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B8, &qword_1E487A900);
  v3 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v78 = &v77 - v4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8F8, &qword_1E487A940);
  v5 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v77 - v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B890, &qword_1E487A8D8);
  v7 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v9 = &v77 - v8;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B888, &qword_1E487A8D0);
  v10 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v79 = &v77 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B868, &qword_1E487A8A8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v84 = &v77 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8A0, &qword_1E487A8E8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v77 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B898, &qword_1E487A8E0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v77 - v21;
  v23 = type metadata accessor for Event();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  result = MEMORY[0x1EEE9AC00](v23);
  v28 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *v1;
  if (*(*v1 + 16))
  {
    v80 = a1;
    sub_1E477AAB4(v29 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v28, type metadata accessor for Event);
    v30 = *(sub_1E4775E6C() + 72);

    *v18 = sub_1E4877F6C();
    *(v18 + 1) = v30;
    v18[16] = 0;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B900, &qword_1E487A948);
    sub_1E4776874(v28, v1, &v18[*(v31 + 44)]);
    LOBYTE(v30) = sub_1E487819C();
    v32 = *(sub_1E4775E6C() + 48);

    sub_1E4877B0C();
    v33 = &v18[*(v15 + 36)];
    *v33 = v30;
    *(v33 + 1) = v34;
    *(v33 + 2) = v35;
    *(v33 + 3) = v36;
    *(v33 + 4) = v37;
    v33[40] = 0;
    v38 = sub_1E487813C();
    if (sub_1E4773F9C())
    {
      v39 = *(sub_1E4775E6C() + 48);
    }

    sub_1E4877B0C();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    sub_1E477372C(v18, v22, &qword_1ECF7B8A0, &qword_1E487A8E8);
    v48 = &v22[*(v19 + 36)];
    *v48 = v38;
    *(v48 + 1) = v41;
    *(v48 + 2) = v43;
    *(v48 + 3) = v45;
    *(v48 + 4) = v47;
    v48[40] = 0;
    if (sub_1E4773F9C())
    {
      v49 = &v9[*(v81 + 36)];
      sub_1E477AAB4(v28, v49, type metadata accessor for Event);
      (*(v24 + 56))(v49, 0, 1, v23);
      KeyPath = swift_getKeyPath();
      v51 = swift_getKeyPath();
      v52 = type metadata accessor for EventBackgroundView();
      *(v49 + v52[8]) = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
      swift_storeEnumTagMultiPayload();
      *(v49 + v52[9]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
      swift_storeEnumTagMultiPayload();
      *(v49 + v52[10]) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
      swift_storeEnumTagMultiPayload();
      v53 = swift_getKeyPath();
      *(v49 + v52[5]) = 3;
      *(v49 + v52[6]) = 1;
      v54 = v49 + v52[7];
      *v54 = KeyPath;
      *(v54 + 8) = 0;
      v55 = v49 + v52[11];
      *v55 = v53;
      *(v55 + 8) = 0;
      v56 = sub_1E487889C();
      v58 = v57;
      v59 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B0, &qword_1E487DEA0) + 36));
      *v59 = v56;
      v59[1] = v58;
      sub_1E4773850(v22, v9, &qword_1ECF7B898, &qword_1E487A8E0);
      v87 = sub_1E47756C0();
      v88 = v60;
      sub_1E477A374();
      v61 = sub_1E487848C();
      v63 = v62;
      LOBYTE(v49) = v64;
      sub_1E4779D60();
      v65 = v79;
      sub_1E487857C();
      sub_1E477A3C8(v61, v63, v49 & 1);

      sub_1E47738B8(v9, &qword_1ECF7B890, &qword_1E487A8D8);
      v66 = &qword_1ECF7B888;
      v67 = &qword_1E487A8D0;
      sub_1E4773850(v65, v85, &qword_1ECF7B888, &qword_1E487A8D0);
      swift_storeEnumTagMultiPayload();
      sub_1E477A00C(&qword_1EE2B12B0, &qword_1ECF7B888, &qword_1E487A8D0, sub_1E4779D60);
      sub_1E477A00C(&qword_1EE2B12E0, &qword_1ECF7B8B8, &qword_1E487A900, sub_1E4779E40);
      v68 = v84;
      sub_1E487803C();
      v69 = v65;
    }

    else
    {
      v87 = sub_1E47756C0();
      v88 = v70;
      sub_1E477A374();
      v71 = sub_1E487848C();
      v73 = v72;
      v75 = v74;
      sub_1E4779E40();
      v76 = v78;
      sub_1E487857C();
      sub_1E477A3C8(v71, v73, v75 & 1);

      v66 = &qword_1ECF7B8B8;
      v67 = &qword_1E487A900;
      sub_1E4773850(v76, v85, &qword_1ECF7B8B8, &qword_1E487A900);
      swift_storeEnumTagMultiPayload();
      sub_1E477A00C(&qword_1EE2B12B0, &qword_1ECF7B888, &qword_1E487A8D0, sub_1E4779D60);
      sub_1E477A00C(&qword_1EE2B12E0, &qword_1ECF7B8B8, &qword_1E487A900, sub_1E4779E40);
      v68 = v84;
      sub_1E487803C();
      v69 = v76;
    }

    sub_1E47738B8(v69, v66, v67);
    sub_1E47738B8(v22, &qword_1ECF7B898, &qword_1E487A8E0);
    sub_1E477372C(v68, v80, &qword_1ECF7B868, &qword_1E487A8A8);
    return sub_1E477AB1C(v28, type metadata accessor for Event);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4776874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a2;
  v77 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B908, &unk_1E487AA50);
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v76 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v67 - v8;
  v9 = sub_1E4877B3C();
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B910, &unk_1E487E050);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v67 - v15);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B918, &unk_1E487AA60);
  v17 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v19 = &v67 - v18;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B920, &unk_1E487DCF0);
  v20 = *(*(v69 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v69);
  v74 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v67 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v80 = &v67 - v26;
  sub_1E4878D2C();
  v72 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + *(type metadata accessor for Event() + 56)) == 6)
  {
    v27 = MEMORY[0x1E69932E0];
  }

  else
  {
    v27 = MEMORY[0x1E69932F8];
  }

  v28 = *v27;
  sub_1E4878BDC();
  v29 = sub_1E487874C();
  v30 = (v16 + *(v13 + 36));
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B928, &qword_1E487AA70) + 28);
  v32 = *MEMORY[0x1E69816D8];
  v33 = sub_1E487877C();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = swift_getKeyPath();
  *v16 = v29;
  v34 = sub_1E4773DE4();
  KeyPath = swift_getKeyPath();
  sub_1E477372C(v16, v19, &qword_1ECF7B910, &unk_1E487E050);
  v36 = &v19[*(v68 + 36)];
  *v36 = KeyPath;
  v36[1] = v34;
  sub_1E47745AC(v12);
  v37 = sub_1E4770A7C(a1, v12);
  (*(v70 + 8))(v12, v71);
  v38 = swift_getKeyPath();
  sub_1E477372C(v19, v25, &qword_1ECF7B918, &unk_1E487AA60);
  v39 = &v25[*(v69 + 36)];
  *v39 = v38;
  v39[1] = v37;
  sub_1E477372C(v25, v80, &qword_1ECF7B920, &unk_1E487DCF0);
  v81 = sub_1E47CC708();
  v82 = v40;
  sub_1E477A374();
  v41 = sub_1E487848C();
  v43 = v42;
  LOBYTE(v31) = v44;
  sub_1E4773DE4();
  v45 = sub_1E487842C();
  v47 = v46;
  LOBYTE(v38) = v48;

  sub_1E477A3C8(v41, v43, v31 & 1);

  sub_1E47740F4();
  v49 = sub_1E48783FC();
  v51 = v50;
  LOBYTE(KeyPath) = v52;
  v54 = v53;

  sub_1E477A3C8(v45, v47, v38 & 1);

  v55 = swift_getKeyPath();
  v81 = v49;
  v82 = v51;
  LOBYTE(KeyPath) = KeyPath & 1;
  v83 = KeyPath;
  v84 = v54;
  v85 = v55;
  v86 = 1;
  v87 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B930, &qword_1E487C540);
  sub_1E477A490();
  v56 = v75;
  sub_1E487855C();
  sub_1E477A3C8(v49, v51, KeyPath);

  v57 = v74;
  sub_1E4773850(v80, v74, &qword_1ECF7B920, &unk_1E487DCF0);
  v59 = v78;
  v58 = v79;
  v60 = *(v78 + 16);
  v61 = v76;
  v60(v76, v56, v79);
  v62 = v77;
  sub_1E4773850(v57, v77, &qword_1ECF7B920, &unk_1E487DCF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B940, &qword_1E487AB48);
  v60((v62 + *(v63 + 48)), v61, v58);
  v64 = v62 + *(v63 + 64);
  *v64 = 0;
  *(v64 + 8) = 0;
  v65 = *(v59 + 8);
  v65(v56, v58);
  sub_1E47738B8(v80, &qword_1ECF7B920, &unk_1E487DCF0);
  v65(v61, v58);
  sub_1E47738B8(v57, &qword_1ECF7B920, &unk_1E487DCF0);
}

uint64_t sub_1E4776F78@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8F0, &qword_1E487A938);
  v2 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v4 = &v77 - v3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B948, &unk_1E487AB50);
  v5 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v77 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v77 = &v77 - v9;
  v10 = type metadata accessor for EventBackgroundView();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8C8, &qword_1E487A910);
  v14 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v16 = &v77 - v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8C0, &qword_1E487A908);
  v17 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v77 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8D8, &qword_1E487A920);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v77 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8D0, &qword_1E487A918);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v77 - v26;
  *v23 = sub_1E487810C();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B958, &qword_1E487AB60);
  sub_1E47777E0(v1, &v23[*(v28 + 44)]);
  v29 = sub_1E487819C();
  v30 = *(sub_1E4775E6C() + 48);

  sub_1E4877B0C();
  v31 = &v23[*(v20 + 44)];
  *v31 = v29;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  v36 = sub_1E487813C();
  if (sub_1E4773F9C())
  {
    v37 = *(sub_1E4775E6C() + 48);
  }

  sub_1E4877B0C();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_1E477372C(v23, v27, &qword_1ECF7B8D8, &qword_1E487A920);
  v46 = &v27[*(v24 + 36)];
  *v46 = v36;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  if (sub_1E4773F9C())
  {
    v47 = *v1;
    v48 = *(*v1 + 16);
    v49 = type metadata accessor for Event();
    v50 = *(v49 - 8);
    if (v48 == 1)
    {
      v51 = v77;
      sub_1E477AAB4(v47 + ((*(*(v49 - 8) + 80) + 32) & ~*(*(v49 - 8) + 80)), v77, type metadata accessor for Event);
      v52 = 0;
    }

    else
    {
      v52 = 1;
      v51 = v77;
    }

    (*(v50 + 56))(v51, v52, 1, v49);
    v61 = *(v1 + *(type metadata accessor for NarrowAllDayView() + 28));
    KeyPath = swift_getKeyPath();
    *&v13[v10[8]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
    swift_storeEnumTagMultiPayload();
    *&v13[v10[9]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v13[v10[10]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
    swift_storeEnumTagMultiPayload();
    v63 = swift_getKeyPath();
    sub_1E477372C(v51, v13, &qword_1ECF7B950, &unk_1E487AE90);
    *&v13[v10[5]] = 3;
    v13[v10[6]] = v61;
    v64 = &v13[v10[7]];
    *v64 = KeyPath;
    v64[8] = 0;
    v65 = &v13[v10[11]];
    *v65 = v63;
    v65[8] = 0;
    v66 = sub_1E487889C();
    v68 = v67;
    v69 = &v16[*(v78 + 36)];
    sub_1E477A6A8(v13, v69, type metadata accessor for EventBackgroundView);
    v70 = (v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B8B0, &qword_1E487DEA0) + 36));
    *v70 = v66;
    v70[1] = v68;
    sub_1E4773850(v27, v16, &qword_1ECF7B8D0, &qword_1E487A918);
    v85 = sub_1E47756C0();
    v86 = v71;
    sub_1E477A374();
    v72 = sub_1E487848C();
    v74 = v73;
    LOBYTE(v68) = v75;
    sub_1E477A0C0();
    v4 = v79;
    sub_1E487857C();
    sub_1E477A3C8(v72, v74, v68 & 1);

    sub_1E47738B8(v16, &qword_1ECF7B8C8, &qword_1E487A910);
    v59 = &qword_1ECF7B8C0;
    v60 = &qword_1E487A908;
    sub_1E4773850(v4, v82, &qword_1ECF7B8C0, &qword_1E487A908);
    swift_storeEnumTagMultiPayload();
    sub_1E477A00C(&qword_1EE2B12A0, &qword_1ECF7B8C0, &qword_1E487A908, sub_1E477A0C0);
  }

  else
  {
    v85 = sub_1E47756C0();
    v86 = v53;
    sub_1E477A374();
    v54 = sub_1E487848C();
    v56 = v55;
    v58 = v57;
    sub_1E477A0F0();
    sub_1E487857C();
    sub_1E477A3C8(v54, v56, v58 & 1);

    v59 = &qword_1ECF7B8F0;
    v60 = &qword_1E487A938;
    sub_1E4773850(v4, v82, &qword_1ECF7B8F0, &qword_1E487A938);
    swift_storeEnumTagMultiPayload();
    sub_1E477A00C(&qword_1EE2B12A0, &qword_1ECF7B8C0, &qword_1E487A908, sub_1E477A0C0);
  }

  sub_1E477A00C(&qword_1EE2B12C0, &qword_1ECF7B8F0, &qword_1E487A938, sub_1E477A0F0);
  sub_1E487803C();
  sub_1E47738B8(v4, v59, v60);
  return sub_1E47738B8(v27, &qword_1ECF7B8D0, &qword_1E487A918);
}

uint64_t sub_1E47777E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v56 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B960, &qword_1E487AB68);
  v52 = *(v54 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v47 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B968, &qword_1E487AB70);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v55 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v43 - v9;
  v10 = type metadata accessor for NarrowAllDayView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B970, &unk_1E487AB78);
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v49 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v58 = &v43 - v17;
  sub_1E4878D2C();
  v48 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = sub_1E4774FB4();
  v59 = MEMORY[0x1E69E7CD0];
  v19 = sub_1E477A548(v18);
  v57 = a1;
  v20 = v19;
  v46 = 0;

  v59 = v20;
  swift_getKeyPath();
  sub_1E477AAB4(v57, &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NarrowAllDayView);
  v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v22 = swift_allocObject();
  sub_1E477A6A8(&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for NarrowAllDayView);
  v45 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B978, &qword_1E487ABA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B980, &qword_1E487ABB0);
  v44 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4773680(&qword_1EE2B0DC0, &qword_1ECF7B978, &qword_1E487ABA8);
  sub_1E4773680(&qword_1EE2B0F48, &qword_1ECF7B980, &qword_1E487ABB0);
  v23 = v57;
  sub_1E487885C();
  if (*(*v23 + 16) < 2uLL)
  {
    v32 = 1;
    v30 = v53;
    v31 = v54;
    v29 = v52;
  }

  else
  {
    v24 = sub_1E4774FB4();
    v59 = MEMORY[0x1E69E7CD0];
    v25 = sub_1E477A548(v24);

    v59 = v25;
    swift_getKeyPath();
    v26 = v44;
    sub_1E477AAB4(v23, v44, type metadata accessor for NarrowAllDayView);
    v27 = swift_allocObject();
    sub_1E477A6A8(v26, v27 + v21, type metadata accessor for NarrowAllDayView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B990, &qword_1E487ABC0);
    sub_1E4773680(&qword_1EE2B0F30, &qword_1ECF7B990, &qword_1E487ABC0);
    v28 = v47;
    sub_1E487885C();
    v29 = v52;
    v30 = v53;
    v31 = v54;
    (*(v52 + 32))(v53, v28, v54);
    v32 = 0;
  }

  (*(v29 + 56))(v30, v32, 1, v31);
  v34 = v49;
  v33 = v50;
  v35 = *(v50 + 16);
  v36 = v58;
  v37 = v51;
  v35(v49, v58, v51);
  v38 = v55;
  sub_1E4773850(v30, v55, &qword_1ECF7B968, &qword_1E487AB70);
  v39 = v56;
  v35(v56, v34, v37);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B988, &qword_1E487ABB8);
  sub_1E4773850(v38, &v39[*(v40 + 48)], &qword_1ECF7B968, &qword_1E487AB70);
  sub_1E47738B8(v30, &qword_1ECF7B968, &qword_1E487AB70);
  v41 = *(v33 + 8);
  v41(v36, v37);
  sub_1E47738B8(v38, &qword_1ECF7B968, &qword_1E487AB70);
  v41(v34, v37);
}

uint64_t sub_1E4777ED0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_1E4877F6C();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9E0, &qword_1E487AC10);
  sub_1E4778028(a2, v5, v6, a3 + *(v7 + 44));
  sub_1E4878F9C();

  MEMORY[0x1E69192D0](v5, v6);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B980, &qword_1E487ABB0);
  v9 = (a3 + *(result + 52));
  *v9 = 0x63207961646C6C61;
  v9[1] = 0xEF2073656C637269;
  return result;
}

uint64_t sub_1E4778028@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a2;
  v44 = a3;
  v46 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9A0, &unk_1E487ABD0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v38 - v10;
  v12 = type metadata accessor for AllDayCirclesView(0);
  v13 = *(*(v12 - 1) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - v17;
  sub_1E4878D2C();
  v45 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = *a1;

  v20 = sub_1E4773DE4();
  KeyPath = swift_getKeyPath();
  *&v18[v12[5]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  *v18 = KeyPath;
  v18[8] = 0;
  *&v18[v12[6]] = v19;
  *&v18[v12[7]] = v20;
  v22 = &v18[v12[8]];
  sub_1E48783CC();
  v23 = *(sub_1E4775E6C() + 72);

  sub_1E487889C();
  sub_1E4877BCC();
  v41 = v52;
  v42 = v50;
  v39 = v55;
  v40 = v54;
  v49 = 1;
  v48 = v51;
  v47 = v53;
  *v11 = sub_1E4877F4C();
  *(v11 + 1) = 0x4000000000000000;
  v11[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9C0, &qword_1E487ABF0);
  sub_1E4778C24(a1, v43, v44, &v11[*(v24 + 44)]);
  sub_1E477AAB4(v18, v16, type metadata accessor for AllDayCirclesView);
  v25 = v49;
  v26 = v48;
  v27 = v11;
  v28 = v16;
  v29 = v47;
  sub_1E4773850(v27, v9, &qword_1ECF7B9A0, &unk_1E487ABD0);
  v30 = v9;
  v31 = v46;
  sub_1E477AAB4(v28, v46, type metadata accessor for AllDayCirclesView);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9E8, &qword_1E487AC18);
  v33 = v31 + v32[12];
  *v33 = 0;
  *(v33 + 8) = v25;
  v34 = v41;
  *(v33 + 16) = v42;
  *(v33 + 24) = v26;
  *(v33 + 32) = v34;
  *(v33 + 40) = v29;
  v35 = v39;
  *(v33 + 48) = v40;
  *(v33 + 56) = v35;
  sub_1E4773850(v30, v31 + v32[16], &qword_1ECF7B9A0, &unk_1E487ABD0);
  v36 = v31 + v32[20];
  *v36 = 0;
  *(v36 + 8) = 0;
  sub_1E47738B8(v27, &qword_1ECF7B9A0, &unk_1E487ABD0);
  sub_1E477AB1C(v18, type metadata accessor for AllDayCirclesView);
  sub_1E47738B8(v30, &qword_1ECF7B9A0, &unk_1E487ABD0);
  sub_1E477AB1C(v28, type metadata accessor for AllDayCirclesView);
}

uint64_t sub_1E477840C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_1E4877F6C();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B998, &qword_1E487ABC8);
  sub_1E4778544(a2, v5, v6, a3 + *(v7 + 44));
  strcpy(v11, "allday bars ");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  MEMORY[0x1E69192D0](v5, v6);

  v8 = v11[1];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B990, &qword_1E487ABC0);
  v10 = (a3 + *(result + 52));
  *v10 = v11[0];
  v10[1] = v8;
  return result;
}

uint64_t sub_1E4778544@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9A0, &unk_1E487ABD0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v41 - v9;
  v11 = sub_1E4877B3C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9A8, &unk_1E4881BA0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v47 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - v20;
  sub_1E4878D2C();
  v48 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = a1;
  v23 = *(sub_1E4775E6C() + 104);

  *v21 = sub_1E4877F6C();
  *(v21 + 1) = v23;
  v21[16] = 0;
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B0, &qword_1E487ABE0) + 44);
  v25 = *v22;
  sub_1E47745AC(v15);
  v26 = sub_1E486B590(v25, 3, v15);
  (*(v12 + 8))(v15, v11);
  v56 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9B8, &qword_1E487ABE8);
  sub_1E487736C();
  type metadata accessor for ColorBarView(0);
  sub_1E4773680(&qword_1EE2B46F0, &qword_1ECF7B9B8, &qword_1E487ABE8);
  sub_1E477AB7C(qword_1EE2B58D8, type metadata accessor for ColorBarView);
  sub_1E477AB7C(&qword_1EE2B4080, type metadata accessor for ColorBarView.Styling);
  v42 = v21;
  sub_1E487886C();

  v27 = *(sub_1E4775E6C() + 72);

  sub_1E487889C();
  sub_1E4877BCC();
  v45 = v58;
  v46 = v56;
  v43 = v61;
  v44 = v60;
  v55 = 1;
  v54 = v57;
  v53 = v59;
  *v10 = sub_1E4877F4C();
  *(v10 + 1) = 0x4000000000000000;
  v10[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9C0, &qword_1E487ABF0);
  sub_1E4778C24(v22, v50, v51, &v10[*(v28 + 44)]);
  v29 = v47;
  sub_1E4773850(v21, v47, &qword_1ECF7B9A8, &unk_1E4881BA0);
  v30 = v10;
  v31 = v55;
  LOBYTE(v24) = v54;
  v32 = v53;
  v33 = v49;
  sub_1E4773850(v30, v49, &qword_1ECF7B9A0, &unk_1E487ABD0);
  v34 = v52;
  sub_1E4773850(v29, v52, &qword_1ECF7B9A8, &unk_1E4881BA0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9C8, &qword_1E487ABF8);
  v36 = v34 + v35[12];
  *v36 = 0;
  *(v36 + 8) = v31;
  v37 = v45;
  *(v36 + 16) = v46;
  *(v36 + 24) = v24;
  *(v36 + 32) = v37;
  *(v36 + 40) = v32;
  v38 = v43;
  *(v36 + 48) = v44;
  *(v36 + 56) = v38;
  sub_1E4773850(v33, v34 + v35[16], &qword_1ECF7B9A0, &unk_1E487ABD0);
  v39 = v34 + v35[20];
  *v39 = 0;
  *(v39 + 8) = 0;
  sub_1E47738B8(v30, &qword_1ECF7B9A0, &unk_1E487ABD0);
  sub_1E47738B8(v42, &qword_1ECF7B9A8, &unk_1E4881BA0);
  sub_1E47738B8(v33, &qword_1ECF7B9A0, &unk_1E487ABD0);
  sub_1E47738B8(v29, &qword_1ECF7B9A8, &unk_1E4881BA0);
}