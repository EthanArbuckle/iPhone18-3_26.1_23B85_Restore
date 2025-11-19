uint64_t sub_20D7CB098(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_20D974268();

    return sub_20D973DA8();
  }

  else
  {
    sub_20D973DF8();
    swift_getWitnessTable();
    sub_20D974238();
    sub_20D973DA8();
    sub_20D975508();
    swift_getWitnessTable();
    sub_20D973DF8();
    swift_getWitnessTable();
    sub_20D974238();
    return sub_20D973DA8();
  }
}

uint64_t sub_20D7CB1FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_20D974268();
    sub_20D973DA8();
  }

  else
  {
    sub_20D973DF8();
    swift_getWitnessTable();
    sub_20D974238();
    sub_20D973DA8();
    sub_20D975508();
    swift_getWitnessTable();
    sub_20D973DF8();
    swift_getWitnessTable();
    sub_20D974238();
    sub_20D973DA8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_20D7CB408(uint64_t a1, int a2)
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

uint64_t sub_20D7CB428(uint64_t result, int a2, int a3)
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

uint64_t sub_20D7CB498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GridForecastSnapshotType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_20D9729D8();
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

uint64_t sub_20D7CB5A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for GridForecastSnapshotType(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_20D9729D8();
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

uint64_t sub_20D7CB810(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20D972628();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 64);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_20D7CB940(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_20D972628();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 64);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20D7CBAA4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20D972628();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20D7CBB50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_20D972628();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20D7CBBF4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838A50, &qword_20D976DE8);
  sub_20D7E6DDC();
  sub_20D7E702C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20D7CBC9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B30, &qword_20D977058);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20D7CBD14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B30, &qword_20D977058);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20D7CBDE8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  if (v0[11])
  {
    v2 = v0[12];
  }

  MEMORY[0x20F324310](v0 + 13);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_20D7CBE44()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20D7CBE7C()
{
  v1 = *(type metadata accessor for TapToRadarButtonView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B20, &qword_20D976FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_20D973CA8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
    v6 = *(v0 + v3);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D7CBF7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838B48, &qword_20D977120);
  sub_20D7EB36C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20D7CC02C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838BD0, &qword_20D977230);
  sub_20D973CD8();
  sub_20D7EBC4C(&qword_27C838BE8, &qword_27C838BD0, &qword_20D977230);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20D7CC0DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20D7CC154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20D7CC28C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20D973FB8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_20D7CC2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
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
    v8 = sub_20D972628();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_20D7CC40C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = sub_20D972628();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838E48, &qword_20D977670);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20D7CC57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
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

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_20D7CC6C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_20D7CC80C()
{
  v1 = type metadata accessor for InlineEducationTip();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20D973D58();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *&v5[v1[5] + 8];

  v9 = &v5[v1[6]];
  if (*v9)
  {
    v10 = *(v9 + 1);
  }

  v11 = v1[7];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v12 - 8) + 8))(&v5[v11], v12);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D7CC9A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D7CC9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
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

uint64_t sub_20D7CCAA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
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

uint64_t sub_20D7CCB6C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_20D9749F8();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_20D7CCC24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_20D9749F8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20D7CCCE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8390F8, &qword_20D977BA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D7CCD78()
{
  v1 = type metadata accessor for GridForecastIndicator(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20D973D58();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v5 + v1[5]);
  v9 = *v8;

  v10 = v8[1];

  v11 = (v5 + v1[6]);
  if (*v11)
  {
    v12 = v11[1];
  }

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v14 = *(v5 + v1[8] + 8);

  v15 = *(v0 + v13 + 8);

  v16 = *(v0 + v13 + 16);

  return MEMORY[0x2821FE8E8](v0, v13 + 24, v2 | 7);
}

uint64_t sub_20D7CCF14(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for HistoricalUsageSnapshot();
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
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_20D7CD08C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_20D972628();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for HistoricalUsageSnapshot();
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
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_20D7CD2D0()
{
  v1 = sub_20D9729D8();
  v2 = *(v1 - 8);
  v53 = *(v2 + 80);
  v3 = (v53 + 16) & ~v53;
  v4 = *(v2 + 64);
  v5 = type metadata accessor for GridForecastSnapshot(0);
  v52 = *(*(v5 - 1) + 80);
  v6 = (v4 + v52 + v3 + 1) & ~v52;
  v51 = *(*(v5 - 1) + 64);
  v7 = (v51 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for GridForecastAppView();
  v50 = *(*(v8 - 1) + 80);
  v9 = (v7 + v50 + 40) & ~v50;
  v10 = *(*(v8 - 1) + 64) + v9;
  v54 = v1;
  v55 = *(v2 + 8);
  v55(v0 + v3, v1);
  v11 = v0 + v6;
  type metadata accessor for GridForecastSnapshotType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    v13 = *(v11 + 16);

    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    v15 = sub_20D972698();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v11 + v14, 1, v15))
    {
      (*(v16 + 8))(v11 + v14, v15);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  v17 = v10 + 7;
  v55(v11 + v5[5], v54);
  v18 = *(v11 + v5[6] + 8);

  v19 = *(v11 + v5[7] + 8);

  v20 = *(v11 + v5[8]);

  __swift_destroy_boxed_opaque_existential_0((v0 + v7));
  v21 = (v0 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839290, &unk_20D978118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_20D973AF8();
    (*(*(v22 - 8) + 8))(v0 + v9, v22);
  }

  else
  {
    v23 = *v21;
  }

  v24 = v17 & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x20F324310](&v21[v8[5]]);
  v25 = *&v21[v8[6]];

  v26 = &v21[v8[9]];
  if (*v26)
  {
    v27 = *(v26 + 1);
  }

  v28 = &v21[v8[10]];
  if (*v28)
  {
    v29 = *(v28 + 1);
  }

  v30 = &v21[v8[11]];
  if (*v30)
  {
    v31 = *(v30 + 1);
  }

  v32 = (v52 + v24 + 16) & ~v52;
  v33 = &v21[v8[12]];
  if (*v33)
  {
    v34 = *(v33 + 1);
  }

  v35 = v8[14];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v36 - 8) + 8))(&v21[v35], v36);
  v37 = *(v0 + v24 + 8);

  v38 = v0 + v32;
  v39 = swift_getEnumCaseMultiPayload();
  if (v39 == 1)
  {

    v40 = *(v38 + 16);

    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    v42 = sub_20D972698();
    v43 = *(v42 - 8);
    if (!(*(v43 + 48))(v38 + v41, 1, v42))
    {
      (*(v43 + 8))(v38 + v41, v42);
    }
  }

  else if (!v39)
  {
  }

  v44 = (v32 + v51 + 55) & 0xFFFFFFFFFFFFFFF8;
  v55(v38 + v5[5], v54);
  v45 = *(v38 + v5[6] + 8);

  v46 = *(v38 + v5[7] + 8);

  v47 = *(v38 + v5[8]);

  __swift_destroy_boxed_opaque_existential_0((v0 + ((v32 + v51 + 7) & 0xFFFFFFFFFFFFFFF8)));
  v48 = *(v0 + v44 + 8);

  return MEMORY[0x2821FE8E8](v0, v44 + 16, v53 | v52 | v50 | 7);
}

uint64_t sub_20D7CD848()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D7CD880()
{
  v1 = type metadata accessor for GridForecastAppView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for GridForecastSnapshot(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = *(*(v5 - 1) + 64);
  v8 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839290, &unk_20D978118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_20D973AF8();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
    v10 = *v8;
  }

  MEMORY[0x20F324310](&v8[v1[5]]);
  v11 = *&v8[v1[6]];

  v12 = &v8[v1[9]];
  if (*v12)
  {
    v13 = *(v12 + 1);
  }

  v14 = v4 + v6;
  v15 = &v8[v1[10]];
  if (*v15)
  {
    v16 = *(v15 + 1);
  }

  v17 = v3 + v14;
  v18 = &v8[v1[11]];
  if (*v18)
  {
    v19 = *(v18 + 1);
  }

  v20 = v17 & ~v6;
  v21 = &v8[v1[12]];
  if (*v21)
  {
    v22 = *(v21 + 1);
  }

  v23 = v1[14];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v24 - 8) + 8))(&v8[v23], v24);
  v25 = v0 + v20;
  type metadata accessor for GridForecastSnapshotType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    v27 = *(v25 + 16);

    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    v29 = sub_20D972698();
    v30 = *(v29 - 8);
    if (!(*(v30 + 48))(v25 + v28, 1, v29))
    {
      (*(v30 + 8))(v25 + v28, v29);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  v31 = v2 | v6;
  v32 = v5[5];
  v33 = sub_20D9729D8();
  (*(*(v33 - 8) + 8))(v25 + v32, v33);
  v34 = *(v25 + v5[6] + 8);

  v35 = *(v25 + v5[7] + 8);

  v36 = *(v25 + v5[8]);

  return MEMORY[0x2821FE8E8](v0, v7 + v20 + 1, v31 | 7);
}

uint64_t sub_20D7CDBFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839280, &qword_20D9780B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D7CDD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392C8, &qword_20D9782D8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 56);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_20D7CDE80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8392C8, &qword_20D9782D8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 56);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_20D7CDFBC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839288, &qword_20D9780B8);
  sub_20D973AF8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839280, &qword_20D9780B0);
  sub_20D804950();
  swift_getOpaqueTypeConformance2();
  sub_20D8050A4(&qword_281125028, MEMORY[0x277CDD6C8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20D7CE0AC()
{
  v1 = type metadata accessor for GridForecastAppView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839290, &unk_20D978118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_20D973AF8();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  MEMORY[0x20F324310](&v6[v1[5]]);
  v9 = *&v6[v1[6]];

  v10 = &v6[v1[9]];
  if (*v10)
  {
    v11 = *(v10 + 1);
  }

  v12 = &v6[v1[10]];
  if (*v12)
  {
    v13 = *(v12 + 1);
  }

  v14 = &v6[v1[11]];
  if (*v14)
  {
    v15 = *(v14 + 1);
  }

  v16 = &v6[v1[12]];
  if (*v16)
  {
    v17 = *(v16 + 1);
  }

  v18 = v1[14];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v19 - 8) + 8))(&v6[v18], v19);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_20D7CE2A0(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x20F3221C0]();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_20D7CE2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20D7CE38C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20D7CE440(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839390, &unk_20D978590);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[7] + 24);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_20D972628();
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_20D7CE5DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839390, &unk_20D978590);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[7] + 24) = a2;
  }

  else
  {
    v15 = sub_20D972628();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_20D7CE774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8393B8, &unk_20D978628);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7CE864(uint64_t *a1, uint64_t a2, int *a3)
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

  v8 = sub_20D972628();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839418, &qword_20D9787B0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839420, &qword_20D9787B8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

char *sub_20D7CE9E8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_20D972628();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839418, &qword_20D9787B0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839420, &qword_20D9787B8);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[10]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_20D7CEB7C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D7CEBB4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20D7CECE0(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_20D80C4B8(&v4);
}

uint64_t sub_20D7CEF94(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_20D81AD58(&v4);
}

uint64_t sub_20D7CEFE4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20D7CF060()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D7CF098()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20D7CF0E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D7CF168(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20D7CF224(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20D7CF304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D972698();
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

    return (v10 + 1);
  }
}

uint64_t sub_20D7CF3C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20D972698();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20D7CF480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D974EA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for HistoricalUsageEntryCommon(0);
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

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_20D7CF59C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20D974EA8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for HistoricalUsageEntryCommon(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20D7CF6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for HistoricalUsageSnapshot();
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

uint64_t sub_20D7CF7C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20D972628();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for HistoricalUsageSnapshot();
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

uint64_t sub_20D7CF8D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20D7CF918(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_20D972628();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_20D971D98();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = sub_20D972E88();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[12];
    goto LABEL_11;
  }

  v15 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[13];

  return v16(v17, a2, v15);
}

uint64_t sub_20D7CFACC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_20D972628();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_20D971D98();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = sub_20D972E88();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[12];
    goto LABEL_9;
  }

  v15 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[13];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_20D7CFC84()
{
  v1 = type metadata accessor for GridForecastSnapshot(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  type metadata accessor for GridForecastSnapshotType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    v8 = *(v6 + 16);

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    v10 = sub_20D972698();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v6 + v9, 1, v10))
    {
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  v12 = v4 + v3;
  v13 = v1[5];
  v14 = sub_20D9729D8();
  (*(*(v14 - 8) + 8))(v6 + v13, v14);
  v15 = *(v6 + v1[6] + 8);

  v16 = *(v6 + v1[7] + 8);

  v17 = *(v6 + v1[8]);

  return MEMORY[0x2821FE8E8](v0, v12 + 1, v2 | 7);
}

uint64_t sub_20D7CFE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_20D972698();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_20D7CFFBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20D972628();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  else
  {
    v11 = sub_20D972698();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_20D7D00E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D972628();
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

uint64_t sub_20D7D019C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20D972628();
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

uint64_t sub_20D7D0264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D974EA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UtilityRateEntryCommon(0);
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

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_20D7D0380(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20D974EA8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for UtilityRateEntryCommon(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20D7D048C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UtilityRateInfoSnapshot();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_20D972628();
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

uint64_t sub_20D7D05A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UtilityRateInfoSnapshot();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_20D972628();
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

uint64_t sub_20D7D06C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D974EA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for GridForecastEntryCommon(0);
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

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_20D7D07E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20D974EA8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for GridForecastEntryCommon(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20D7D08EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GridForecastSnapshot(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_20D972628();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_20D7D0A14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GridForecastSnapshot(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_20D972628();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_20D7D0BC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_20D7D0C20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

id sub_20D7D0C70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *a2 = v4;

  return v4;
}

uint64_t sub_20D7D0CCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_20D7D0D1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 104);
}

id sub_20D7D0D6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *a2 = v4;

  return v4;
}

uint64_t sub_20D7D0DC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 128);
  *a2 = *(v3 + 120);
  a2[1] = v4;
}

uint64_t sub_20D7D0E18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 144);
  *a2 = *(v3 + 136);
  a2[1] = v4;
}

uint64_t sub_20D7D0E68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 160);
  *a2 = *(v3 + 152);
  a2[1] = v4;
}

uint64_t sub_20D7D0EB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate;
  swift_beginAccess();
  return sub_20D7EB7E8(v3 + v4, a2, &qword_27C8389E8, &qword_20D9768D0);
}

uint64_t sub_20D7D0F28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_serviceLocations;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_20D7D0F88@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_selectedServiceLocation);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_20D7D0FE4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20D7D1024()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D7D1060(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for FeaturedHoursInfo();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_20D7D11DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for FeaturedHoursInfo();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = a2;
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

uint64_t sub_20D7D134C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_20D973D58();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_20D7D1488(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_20D973D58();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_20D7D15B8()
{
  v1 = type metadata accessor for FeaturedHoursChart(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_20D972408();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v31 = *(v6 + 64);
  v8 = v0 + v3;
  v9 = sub_20D972628();
  (*(*(v9 - 8) + 8))(v0 + v3, v9);
  v10 = type metadata accessor for FeaturedHoursInfo();
  v11 = *(v0 + v3 + v10[6]);

  v12 = *(v0 + v3 + v10[7]);

  v13 = *(v0 + v3 + v10[8] + 8);

  v14 = *(v0 + v3 + v10[9] + 8);

  v15 = *(v0 + v3 + v10[10] + 8);

  v16 = *(v0 + v3 + v10[11]);

  v17 = *(v0 + v3 + v10[12]);

  v18 = *(v0 + v3 + v10[13] + 24);

  v19 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_20D973D58();
    (*(*(v20 - 8) + 8))(v8 + v19, v20);
  }

  else
  {
    v21 = *(v8 + v19);
  }

  v22 = v2 | v7;
  v23 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 136) & ~v7;
  v25 = v1[7];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v26 - 8) + 8))(v8 + v25, v26);
  v27 = *(v8 + v1[8] + 8);

  v28 = *(v8 + v1[9] + 8);

  v29 = *(v0 + v23);

  (*(v6 + 8))(v0 + v24, v5);

  return MEMORY[0x2821FE8E8](v0, v24 + v31, v22 | 7);
}

uint64_t sub_20D7D18E4()
{
  v1 = type metadata accessor for FeaturedHoursChart(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_20D972628();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = type metadata accessor for FeaturedHoursInfo();
  v8 = *(v0 + v3 + v7[6]);

  v9 = *(v0 + v3 + v7[7]);

  v10 = *(v0 + v3 + v7[8] + 8);

  v11 = *(v0 + v3 + v7[9] + 8);

  v12 = *(v0 + v3 + v7[10] + 8);

  v13 = *(v0 + v3 + v7[11]);

  v14 = *(v0 + v3 + v7[12]);

  v15 = *(v0 + v3 + v7[13] + 24);

  v16 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_20D973D58();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  v19 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8;
  v20 = v1[7];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v21 - 8) + 8))(v5 + v20, v21);
  v22 = *(v5 + v1[8] + 8);

  v23 = *(v5 + v1[9] + 8);

  v24 = *(v0 + v19);

  return MEMORY[0x2821FE8E8](v0, v19 + 8, v2 | 7);
}

uint64_t sub_20D7D1B44()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A008, &qword_20D97B0F0);
  sub_20D7EBC4C(&qword_281126F78, &qword_27C83A008, &qword_20D97B0F0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20D7D1C64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB8, &unk_20D9771F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20D7D1D20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB8, &unk_20D9771F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20D7D1DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_20D7D1EA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_20D7D1F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
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

uint64_t sub_20D7D2028(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
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

uint64_t sub_20D7D20F4()
{
  v1 = type metadata accessor for HistoricalUsageSummaryView(0);
  v66 = *(*(v1 - 8) + 80);
  v64 = *(*(v1 - 8) + 64);
  v67 = v0;
  v65 = (v66 + 16) & ~v66;
  v2 = v0 + v65;
  v3 = sub_20D972628();
  v68 = *(v3 - 8);
  v4 = *(v68 + 8);
  v4(v2, v3);
  v5 = *(v2 + *(v1 + 20));

  v62 = v2;
  v63 = v1;
  v6 = v2 + *(v1 + 24);
  v7 = *(v6 + 8);

  v8 = type metadata accessor for HistoricalUsageSnapshot();
  v4(v6 + v8[5], v3);
  v4(v6 + v8[6], v3);
  v4(v6 + v8[7], v3);
  v4(v6 + v8[8], v3);
  v9 = v8[9];
  v10 = sub_20D971D98();
  v11 = *(*(v10 - 8) + 8);
  v11(v6 + v9, v10);
  v11(v6 + v8[10], v10);
  v12 = v8[12];
  v13 = sub_20D972E88();
  (*(*(v13 - 8) + 8))(v6 + v12, v13);
  v14 = v6 + v8[13];
  v15 = sub_20D972AF8();
  v60 = *(*(v15 - 8) + 8);
  v61 = v15;
  v60(v14);
  v16 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v17 = v16[5];
  v18 = sub_20D9727B8();
  v58 = *(*(v18 - 8) + 8);
  v59 = v18;
  v58(v14 + v17);
  v19 = v14 + v16[7];
  v4(v19, v3);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v4(v19 + *(v20 + 36), v3);
  v21 = v14 + v16[8];
  v4(v21, v3);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  v4(v21 + *(v56 + 36), v3);
  v22 = *(v14 + v16[9]);

  v23 = *(v14 + v16[10]);

  v24 = v16[11];
  v57 = *(v68 + 48);
  if (!v57(v14 + v24, 1, v3))
  {
    v4(v14 + v24, v3);
  }

  v25 = *(v14 + v16[12]);

  v26 = v14 + v16[13];
  v4(v26, v3);
  v4(v26 + *(v20 + 36), v3);
  v27 = *(v14 + v16[14] + 16);

  v28 = v20;
  v29 = v16[16];
  v53 = sub_20D9727D8();
  v54 = (*(v53 - 8) + 8);
  v55 = *v54;
  (*v54)(v14 + v29);
  v4(v6 + v8[14], v3);
  v30 = *(v6 + v8[15]);

  v31 = v62 + v63[7];
  (v60)(v31, v61);
  (v58)(v31 + v16[5], v59);
  v32 = v31 + v16[7];
  v4(v32, v3);
  v4(v32 + *(v28 + 36), v3);
  v33 = v31 + v16[8];
  v4(v33, v3);
  v4(v33 + *(v56 + 36), v3);
  v34 = *(v31 + v16[9]);

  v35 = *(v31 + v16[10]);

  v36 = v16[11];
  if (!v57(v31 + v36, 1, v3))
  {
    v4(v31 + v36, v3);
  }

  v37 = *(v31 + v16[12]);

  v38 = v31 + v16[13];
  v4(v38, v3);
  v4(v38 + *(v28 + 36), v3);
  v39 = *(v31 + v16[14] + 16);

  (v55)(v31 + v16[16], v53);
  v40 = (v62 + v63[8]);
  v41 = v40[2];

  v42 = v40[3];

  v43 = v40[4];

  v44 = v40[5];

  v45 = v40[6];

  v46 = v40[7];

  v47 = v40[8];

  v48 = v40[20];

  v49 = v40[21];

  v50 = v63[9];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v51 - 8) + 8))(v62 + v50, v51);

  return MEMORY[0x2821FE8E8](v67, v65 + v64, v66 | 7);
}

uint64_t sub_20D7D278C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20D972628();
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

  v13 = type metadata accessor for HistoricalUsageSnapshot();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_20D7D2954(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_20D972628();
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

  v13 = type metadata accessor for HistoricalUsageSnapshot();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_20D7D2B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HistoricalUsageSnapshot();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_20D972628();
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

uint64_t sub_20D7D2C3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for HistoricalUsageSnapshot();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_20D972628();
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

uint64_t sub_20D7D2D44@<X0>(uint64_t a1@<X8>)
{
  result = sub_20D974018();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_20D7D2D78(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_20D974028();
}

uint64_t sub_20D7D2DA8@<X0>(void *a1@<X8>)
{
  result = sub_20D973ED8();
  *a1 = v3;
  return result;
}

uint64_t sub_20D7D2E74(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A830, &qword_20D97C3F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_20D7D2FB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A830, &qword_20D97C3F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20D7D3150(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20D972628();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for UtilityRateInfoSnapshot();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_20D7D325C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_20D972628();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for UtilityRateInfoSnapshot();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_20D7D3370@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20D973F28();
  *a1 = result;
  return result;
}

uint64_t sub_20D7D33C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for HistoricalUsageSnapshot();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB88, &unk_20D97C960);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[8];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB90, &unk_20D97D270);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[9];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[10] + 16);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_20D972628();
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[12];
      goto LABEL_7;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[15];
      goto LABEL_7;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839418, &qword_20D9787B0);
    if (*(*(v19 - 8) + 84) == a2)
    {
      v8 = v19;
      v12 = *(v19 - 8);
      v13 = a3[16];
      goto LABEL_7;
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB98, &unk_20D97C970);
    if (*(*(v20 - 8) + 84) == a2)
    {
      v8 = v20;
      v12 = *(v20 - 8);
      v13 = a3[17];
      goto LABEL_7;
    }

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    v22 = *(*(v21 - 8) + 48);
    v23 = a1 + a3[18];

    return v22(v23, a2, v21);
  }
}

uint64_t sub_20D7D36EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for HistoricalUsageSnapshot();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB88, &unk_20D97C960);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB90, &unk_20D97D270);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[9];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10] + 16) = (a2 - 1);
    return result;
  }

  v17 = sub_20D972628();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[12];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[15];
    goto LABEL_7;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839418, &qword_20D9787B0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[16];
    goto LABEL_7;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB98, &unk_20D97C970);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[17];
    goto LABEL_7;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  v22 = *(*(v21 - 8) + 56);
  v23 = a1 + a4[18];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_20D7D3A18()
{
  v1 = sub_20D973548();
  v2 = *(v1 - 8);
  v81 = *(v2 + 80);
  v3 = (v81 + 16) & ~v81;
  v4 = *(v2 + 64);
  v71 = type metadata accessor for HistoricalUsageChart();
  v78 = *(*(v71 - 1) + 80);
  v5 = (v3 + v4 + v78) & ~v78;
  v76 = *(*(v71 - 1) + 64);
  v6 = sub_20D972C58();
  v79 = *(v6 - 8);
  v80 = v6;
  v75 = *(v79 + 80);
  v74 = *(v79 + 64);
  v7 = sub_20D972628();
  v8 = *(v7 - 8);
  v73 = *(v8 + 80);
  v72 = *(v8 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v82 = v0;
  v77 = v5;
  v9 = v0 + v5;
  v10 = *(v0 + v5 + 8);

  v11 = type metadata accessor for HistoricalUsageSnapshot();
  v12 = *(v8 + 8);
  v12(v9 + v11[5], v7);
  v12(v9 + v11[6], v7);
  v12(v9 + v11[7], v7);
  v12(v9 + v11[8], v7);
  v13 = v11[9];
  v14 = sub_20D971D98();
  v15 = *(*(v14 - 8) + 8);
  v15(v9 + v13, v14);
  v15(v9 + v11[10], v14);
  v16 = v11[12];
  v17 = sub_20D972E88();
  (*(*(v17 - 8) + 8))(v9 + v16, v17);
  v18 = v9 + v11[13];
  v19 = sub_20D972AF8();
  (*(*(v19 - 8) + 8))(v18, v19);
  v20 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v21 = v20[5];
  v22 = sub_20D9727B8();
  (*(*(v22 - 8) + 8))(v18 + v21, v22);
  v23 = v18 + v20[7];
  v12(v23, v7);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v12(v23 + *(v24 + 36), v7);
  v25 = v18 + v20[8];
  v12(v25, v7);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  v12(v25 + *(v26 + 36), v7);
  v27 = *(v18 + v20[9]);

  v28 = *(v18 + v20[10]);

  v29 = v20[11];
  v70 = *(v8 + 48);
  if (!v70(v18 + v29, 1, v7))
  {
    v12(v18 + v29, v7);
  }

  v30 = *(v18 + v20[12]);

  v31 = v18 + v20[13];
  v12(v31, v7);
  v12(v31 + *(v24 + 36), v7);
  v32 = *(v18 + v20[14] + 16);

  v33 = v20[16];
  v34 = sub_20D9727D8();
  (*(*(v34 - 8) + 8))(v18 + v33, v34);
  v12(v9 + v11[14], v7);
  v35 = *(v9 + v11[15]);

  v36 = (v9 + v71[8]);
  v37 = *v36;

  v38 = v36[1];

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB88, &unk_20D97C960);
  v12(v36 + *(v39 + 32), v7);
  v40 = (v9 + v71[9]);
  v41 = *v40;

  v42 = v40[1];

  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB90, &unk_20D97D270) + 32);
  if (!v70(v40 + v43, 1, v7))
  {
    v12(v40 + v43, v7);
  }

  v44 = (v9 + v71[10]);
  v45 = v44[2];

  v46 = v44[3];

  v47 = v44[4];

  v48 = v44[5];

  v49 = v44[6];

  v50 = v44[7];

  v51 = v44[8];

  v52 = v44[20];

  v53 = v44[21];

  v12(v9 + v71[12], v7);
  v54 = *(v9 + v71[13] + 16);

  v55 = *(v9 + v71[14] + 16);

  v56 = v71[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v57 = sub_20D973D58();
    (*(*(v57 - 8) + 8))(v9 + v56, v57);
  }

  else
  {
    v58 = *(v9 + v56);
  }

  v59 = v71[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = sub_20D973B18();
    (*(*(v60 - 8) + 8))(v9 + v59, v60);
  }

  else
  {
    v61 = *(v9 + v59);
  }

  v62 = v71[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEA8, &unk_20D97E1E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v63 = sub_20D973D78();
    (*(*(v63 - 8) + 8))(v9 + v62, v63);
  }

  else
  {
    v64 = *(v9 + v62);
  }

  v65 = (v77 + v76 + v75) & ~v75;
  v66 = (v65 + v74 + v73) & ~v73;
  v67 = v71[18];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v68 - 8) + 8))(v9 + v67, v68);
  (*(v79 + 8))(v82 + v65, v80);
  v12(v82 + v66, v7);

  return MEMORY[0x2821FE8E8](v82, v72 + v66 + 1, v81 | v78 | v75 | v73 | 7);
}

uint64_t sub_20D7D4284()
{
  v66 = type metadata accessor for HistoricalUsageChart();
  v70 = *(*(v66 - 1) + 80);
  v68 = *(*(v66 - 1) + 64);
  v1 = sub_20D973548();
  v72 = *(v1 - 8);
  v73 = v1;
  v67 = *(v72 + 80);
  v71 = *(v72 + 64);
  v74 = v0;
  v69 = (v70 + 16) & ~v70;
  v2 = v0 + v69;
  v3 = *(v2 + 8);

  v4 = type metadata accessor for HistoricalUsageSnapshot();
  v5 = v4[5];
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v2 + v5, v6);
  v8(v2 + v4[6], v6);
  v8(v2 + v4[7], v6);
  v8(v2 + v4[8], v6);
  v9 = v4[9];
  v10 = sub_20D971D98();
  v11 = *(*(v10 - 8) + 8);
  v11(v2 + v9, v10);
  v11(v2 + v4[10], v10);
  v12 = v4[12];
  v13 = sub_20D972E88();
  (*(*(v13 - 8) + 8))(v2 + v12, v13);
  v14 = v2 + v4[13];
  v15 = sub_20D972AF8();
  (*(*(v15 - 8) + 8))(v14, v15);
  v16 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v17 = v16[5];
  v18 = sub_20D9727B8();
  (*(*(v18 - 8) + 8))(v14 + v17, v18);
  v19 = v14 + v16[7];
  v8(v19, v6);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v8(v19 + *(v20 + 36), v6);
  v21 = v14 + v16[8];
  v8(v21, v6);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  v8(v21 + *(v22 + 36), v6);
  v23 = *(v14 + v16[9]);

  v24 = *(v14 + v16[10]);

  v25 = v16[11];
  v65 = *(v7 + 48);
  if (!v65(v14 + v25, 1, v6))
  {
    v8(v14 + v25, v6);
  }

  v26 = *(v14 + v16[12]);

  v27 = v14 + v16[13];
  v8(v27, v6);
  v8(v27 + *(v20 + 36), v6);
  v28 = *(v14 + v16[14] + 16);

  v29 = v16[16];
  v30 = sub_20D9727D8();
  (*(*(v30 - 8) + 8))(v14 + v29, v30);
  v8(v2 + v4[14], v6);
  v31 = *(v2 + v4[15]);

  v32 = (v2 + v66[8]);
  v33 = *v32;

  v34 = v32[1];

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB88, &unk_20D97C960);
  v8(v32 + *(v35 + 32), v6);
  v36 = (v2 + v66[9]);
  v37 = *v36;

  v38 = v36[1];

  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB90, &unk_20D97D270) + 32);
  if (!v65(v36 + v39, 1, v6))
  {
    v8(v36 + v39, v6);
  }

  v40 = (v2 + v66[10]);
  v41 = v40[2];

  v42 = v40[3];

  v43 = v40[4];

  v44 = v40[5];

  v45 = v40[6];

  v46 = v40[7];

  v47 = v40[8];

  v48 = v40[20];

  v49 = v40[21];

  v8(v2 + v66[12], v6);
  v50 = *(v2 + v66[13] + 16);

  v51 = *(v2 + v66[14] + 16);

  v52 = v66[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = sub_20D973D58();
    (*(*(v53 - 8) + 8))(v2 + v52, v53);
  }

  else
  {
    v54 = *(v2 + v52);
  }

  v55 = v66[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v56 = sub_20D973B18();
    (*(*(v56 - 8) + 8))(v2 + v55, v56);
  }

  else
  {
    v57 = *(v2 + v55);
  }

  v58 = v66[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEA8, &unk_20D97E1E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = sub_20D973D78();
    (*(*(v59 - 8) + 8))(v2 + v58, v59);
  }

  else
  {
    v60 = *(v2 + v58);
  }

  v61 = (v69 + v68 + v67) & ~v67;
  v62 = v66[18];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v63 - 8) + 8))(v2 + v62, v63);
  (*(v72 + 8))(v74 + v61, v73);

  return MEMORY[0x2821FE8E8](v74, v61 + v71, v70 | v67 | 7);
}

uint64_t sub_20D7D4A20()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20D7D4A60()
{
  v1 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v40 = *(*(v1 - 1) + 80);
  v39 = *(*(v1 - 1) + 64);
  v2 = sub_20D972628();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v38 = *(v3 + 64);
  v5 = *(v0 + 16);

  v41 = v0;
  v6 = v0 + ((v40 + 24) & ~v40);
  v7 = sub_20D972AF8();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = v1[5];
  v9 = sub_20D9727B8();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = v6 + v1[7];
  v11 = *(v3 + 8);
  v11(v10, v2);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v11(v10 + *(v12 + 36), v2);
  v13 = v6 + v1[8];
  v11(v13, v2);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  v11(v13 + *(v14 + 36), v2);
  v15 = *(v6 + v1[9]);

  v16 = *(v6 + v1[10]);

  v17 = v1[11];
  if (!(*(v3 + 48))(v6 + v17, 1, v2))
  {
    v11(v6 + v17, v2);
  }

  v18 = (v39 + ((v40 + 24) & ~v40) + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + v4 + 209) & ~v4;
  v20 = *(v6 + v1[12]);

  v21 = v6 + v1[13];
  v11(v21, v2);
  v11(v21 + *(v12 + 36), v2);
  v22 = *(v6 + v1[14] + 16);

  v23 = v1[16];
  v24 = sub_20D9727D8();
  (*(*(v24 - 8) + 8))(v6 + v23, v24);
  v25 = (v41 + v18);
  v26 = v25[2];

  v27 = v25[3];

  v28 = v25[4];

  v29 = v25[5];

  v30 = v25[6];

  v31 = v25[7];

  v32 = v25[8];

  v33 = v25[20];

  v34 = v25[21];

  v11(v41 + v19, v2);
  v35 = (v38 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = *(v41 + v35);

  return MEMORY[0x2821FE8E8](v41, v35 + 9, v40 | v4 | 7);
}

uint64_t sub_20D7D4E28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D972B78();
  *a1 = result;
  return result;
}

uint64_t sub_20D7D4E64@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*result + 16))
  {
    *a3 = *(*result + 8 * v3 + 32);
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_20D7D4ECC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D972B58();
  *a1 = result;
  return result;
}

uint64_t sub_20D7D4F38@<X0>(void *a1@<X8>)
{
  result = sub_20D972C18();
  *a1 = v3;
  return result;
}

double sub_20D7D4F6C@<D0>(double *a1@<X8>)
{
  sub_20D972BE8();
  result = -v2;
  *a1 = result;
  return result;
}

uint64_t sub_20D7D4F9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D972B38();
  *a1 = result;
  return result;
}

uint64_t sub_20D7D4FE4@<X0>(void *a1@<X8>)
{
  result = sub_20D972BC8();
  *a1 = v3;
  return result;
}

uint64_t sub_20D7D5010@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D972B28();
  *a1 = result;
  return result;
}

uint64_t sub_20D7D5150()
{
  v1 = (type metadata accessor for DynamicEnergyUsagesCalculations(0) - 8);
  v71 = *(*v1 + 80);
  v2 = (v71 + 16) & ~v71;
  v3 = *(*v1 + 64);
  v69 = type metadata accessor for HistoricalUsageIntervalView();
  v70 = *(*(v69 - 1) + 80);
  v4 = (v2 + v3 + v70) & ~v70;
  v72 = *(*(v69 - 1) + 64);
  v5 = sub_20D972628();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v7(v0 + v2 + *(v68 + 36), v5);
  v8 = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
  v9 = *(v0 + v2 + v8[5]);

  v10 = *(v0 + v2 + v8[8]);

  v11 = *(v0 + v2 + v8[9]);

  v12 = v0 + v2 + v1[7];
  v7(v12, v5);
  v7(v12 + *(v68 + 36), v5);
  v13 = *(v12 + v8[5]);

  v14 = *(v12 + v8[8]);

  v15 = *(v12 + v8[9]);

  v73 = v4;
  v74 = v0;
  v16 = v0 + v4;
  v17 = v6;
  v18 = *(v16 + 8);

  v19 = type metadata accessor for HistoricalUsageSnapshot();
  v7(v16 + v19[5], v5);
  v7(v16 + v19[6], v5);
  v7(v16 + v19[7], v5);
  v7(v16 + v19[8], v5);
  v20 = v19[9];
  v21 = sub_20D971D98();
  v22 = *(*(v21 - 8) + 8);
  v22(v16 + v20, v21);
  v22(v16 + v19[10], v21);
  v23 = v19[12];
  v24 = sub_20D972E88();
  (*(*(v24 - 8) + 8))(v16 + v23, v24);
  v25 = v16 + v19[13];
  v26 = sub_20D972AF8();
  (*(*(v26 - 8) + 8))(v25, v26);
  v27 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v28 = v27[5];
  v29 = sub_20D9727B8();
  (*(*(v29 - 8) + 8))(v25 + v28, v29);
  v30 = v25 + v27[7];
  v7(v30, v5);
  v7(v30 + *(v68 + 36), v5);
  v31 = v25 + v27[8];
  v7(v31, v5);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  v7(v31 + *(v32 + 36), v5);
  v33 = *(v25 + v27[9]);

  v34 = *(v25 + v27[10]);

  v35 = v27[11];
  v67 = *(v17 + 48);
  if (!v67(v25 + v35, 1, v5))
  {
    v7(v25 + v35, v5);
  }

  v36 = *(v25 + v27[12]);

  v37 = v25 + v27[13];
  v7(v37, v5);
  v7(v37 + *(v68 + 36), v5);
  v38 = *(v25 + v27[14] + 16);

  v39 = v27[16];
  v40 = sub_20D9727D8();
  (*(*(v40 - 8) + 8))(v25 + v39, v40);
  v7(v16 + v19[14], v5);
  v41 = *(v16 + v19[15]);

  v42 = v69[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = sub_20D973D58();
    (*(*(v43 - 8) + 8))(v16 + v42, v43);
  }

  else
  {
    v44 = *(v16 + v42);
  }

  v45 = (v16 + v69[6]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v16 + v69[7];
  if (!v67(v48, 1, v5))
  {
    v7(v48, v5);
  }

  v49 = *(v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B180, &qword_20D97D298) + 28));

  v50 = *(v16 + v69[8] + 8);

  v51 = *(v16 + v69[9] + 16);

  v52 = *(v16 + v69[10] + 16);

  v53 = *(v16 + v69[11] + 16);

  v54 = v69[12];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v55 - 8) + 8))(v16 + v54, v55);
  v56 = (v16 + v69[13]);
  v57 = v56[2];

  v58 = v56[3];

  v59 = v56[4];

  v60 = v56[5];

  v61 = v56[6];

  v62 = v56[7];

  v63 = v56[8];

  v64 = v56[20];

  v65 = v56[21];

  return MEMORY[0x2821FE8E8](v74, v73 + v72, v71 | v70 | 7);
}

uint64_t sub_20D7D586C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B178, &qword_20D97D290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7D58DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B178, &qword_20D97D290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D7D5948(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for HistoricalUsageSnapshot();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
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
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B180, &qword_20D97D298);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[12];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_20D7D5B28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for HistoricalUsageSnapshot();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
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

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B180, &qword_20D97D298);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[12];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_20D7D5D4C()
{
  v59 = type metadata accessor for HistoricalUsageIntervalView();
  v63 = *(*(v59 - 1) + 80);
  v61 = *(*(v59 - 1) + 64);
  v1 = sub_20D973C48();
  v65 = *(v1 - 8);
  v66 = v1;
  v60 = *(v65 + 80);
  v64 = *(v65 + 64);
  v62 = (v63 + 16) & ~v63;
  v2 = v0 + v62;
  v3 = *(v0 + v62 + 8);

  v4 = type metadata accessor for HistoricalUsageSnapshot();
  v5 = v4[5];
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v62 + v5, v6);
  v8(v0 + v62 + v4[6], v6);
  v8(v0 + v62 + v4[7], v6);
  v8(v0 + v62 + v4[8], v6);
  v9 = v4[9];
  v10 = sub_20D971D98();
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v62 + v9, v10);
  v11(v0 + v62 + v4[10], v10);
  v12 = v4[12];
  v13 = sub_20D972E88();
  (*(*(v13 - 8) + 8))(v0 + v62 + v12, v13);
  v14 = v0 + v62 + v4[13];
  v15 = sub_20D972AF8();
  (*(*(v15 - 8) + 8))(v14, v15);
  v16 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v17 = v16[5];
  v18 = sub_20D9727B8();
  (*(*(v18 - 8) + 8))(v14 + v17, v18);
  v19 = v14 + v16[7];
  v8(v19, v6);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v8(v19 + *(v20 + 36), v6);
  v21 = v14 + v16[8];
  v8(v21, v6);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  v8(v21 + *(v22 + 36), v6);
  v23 = *(v14 + v16[9]);

  v24 = *(v14 + v16[10]);

  v25 = v16[11];
  v58 = *(v7 + 48);
  if (!v58(v14 + v25, 1, v6))
  {
    v8(v14 + v25, v6);
  }

  v26 = *(v14 + v16[12]);

  v27 = v14 + v16[13];
  v8(v27, v6);
  v8(v27 + *(v20 + 36), v6);
  v28 = *(v14 + v16[14] + 16);

  v29 = v16[16];
  v30 = sub_20D9727D8();
  (*(*(v30 - 8) + 8))(v14 + v29, v30);
  v8(v2 + v4[14], v6);
  v31 = *(v2 + v4[15]);

  v32 = v59[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = sub_20D973D58();
    (*(*(v33 - 8) + 8))(v2 + v32, v33);
  }

  else
  {
    v34 = *(v2 + v32);
  }

  v35 = (v2 + v59[6]);
  v36 = *v35;

  v37 = v35[1];

  v38 = v2 + v59[7];
  if (!v58(v38, 1, v6))
  {
    v8(v38, v6);
  }

  v39 = (v62 + v61 + v60) & ~v60;
  v40 = *(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B180, &qword_20D97D298) + 28));

  v41 = *(v2 + v59[8] + 8);

  v42 = *(v2 + v59[9] + 16);

  v43 = *(v2 + v59[10] + 16);

  v44 = *(v2 + v59[11] + 16);

  v45 = v59[12];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v46 - 8) + 8))(v2 + v45, v46);
  v47 = (v2 + v59[13]);
  v48 = v47[2];

  v49 = v47[3];

  v50 = v47[4];

  v51 = v47[5];

  v52 = v47[6];

  v53 = v47[7];

  v54 = v47[8];

  v55 = v47[20];

  v56 = v47[21];

  (*(v65 + 8))(v0 + v39, v66);

  return MEMORY[0x2821FE8E8](v0, v39 + v64, v63 | v60 | 7);
}

uint64_t sub_20D7D63E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for HistoricalUsageSnapshot();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_20D7D656C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for HistoricalUsageSnapshot();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5]) = a2 + 1;
    return result;
  }

  v13 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_20D7D66E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HistoricalUsageSnapshot();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20D7D67D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for HistoricalUsageSnapshot();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20D7D68D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HistoricalUsageSnapshot();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
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

uint64_t sub_20D7D69F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for HistoricalUsageSnapshot();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for DynamicEnergyUsagesCalculations(0);
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

uint64_t sub_20D7D6BF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839420, &qword_20D9787B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_20D972628();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for HistoricalUsageSnapshot();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_20D7D6D8C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839420, &qword_20D9787B8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_20D972628();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = type metadata accessor for HistoricalUsageSnapshot();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_20D7D6F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for HistoricalUsageSnapshot();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20D7D7020(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20D972628();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for HistoricalUsageSnapshot();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20D7D711C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D973F48();
  *a1 = result;
  return result;
}

uint64_t sub_20D7D7148(uint64_t *a1)
{
  v1 = *a1;

  return sub_20D973F58();
}

uint64_t sub_20D7D7174@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D973E88();
  *a1 = result;
  return result;
}

uint64_t sub_20D7D71A0(uint64_t *a1)
{
  v1 = *a1;

  return sub_20D973E98();
}

uint64_t sub_20D7D725C()
{
  v1 = (type metadata accessor for UtilityRateInfoSummaryView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v21 = *(*v1 + 64);
  v4 = v0 + v3;
  v5 = *(v0 + v3);

  v6 = v0 + v3 + v1[7];
  v7 = *(v6 + 8);

  v8 = type metadata accessor for UtilityRateInfoSnapshot();
  v9 = v8[5];
  v10 = sub_20D972628();
  v11 = *(*(v10 - 8) + 8);
  v11(v6 + v9, v10);
  v11(v6 + v8[6], v10);
  v11(v6 + v8[7], v10);
  v12 = *(v6 + v8[8] + 8);

  v13 = v8[9];
  v14 = sub_20D972838();
  (*(*(v14 - 8) + 8))(v6 + v13, v14);
  v15 = *(v6 + v8[12]);

  v16 = *(v6 + v8[13]);

  v17 = *(v6 + v8[14]);

  v18 = v1[8];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v19 - 8) + 8))(v4 + v18, v19);

  return MEMORY[0x2821FE8E8](v22, v3 + v21, v2 | 7);
}

uint64_t sub_20D7D746C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UtilityRateInfoSnapshot();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_20D7D759C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UtilityRateInfoSnapshot();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20D7D771C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839420, &qword_20D9787B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_20D972628();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for UtilityRateInfoSnapshot();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_20D7D7868(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839420, &qword_20D9787B8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_20D972628();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for UtilityRateInfoSnapshot();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_20D7D79C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UtilityRateInfoSnapshot();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20D7D7AB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20D972628();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UtilityRateInfoSnapshot();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20D7D7C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HistoricalUsageSnapshot();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 16);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_20D7D7D50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for HistoricalUsageSnapshot();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 16) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20D7D7E60()
{
  v71 = type metadata accessor for HistoricalUsageSummaryChart();
  v69 = *(*(v71 - 1) + 80);
  v67 = *(*(v71 - 1) + 64);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v66 = *(*(v1 - 8) + 80);
  v65 = *(*(v1 - 8) + 64);
  v70 = v0;
  v68 = (v69 + 16) & ~v69;
  v2 = v0 + v68;
  v3 = *(v0 + v68 + 8);

  v4 = type metadata accessor for HistoricalUsageSnapshot();
  v5 = v4[5];
  v6 = sub_20D972628();
  v72 = *(v6 - 8);
  v7 = *(v72 + 8);
  v7(v0 + v68 + v5, v6);
  v7(v0 + v68 + v4[6], v6);
  v7(v0 + v68 + v4[7], v6);
  v7(v0 + v68 + v4[8], v6);
  v8 = v4[9];
  v9 = sub_20D971D98();
  v10 = *(*(v9 - 8) + 8);
  v10(v2 + v8, v9);
  v10(v2 + v4[10], v9);
  v11 = v1;
  v12 = v4[12];
  v13 = sub_20D972E88();
  (*(*(v13 - 8) + 8))(v2 + v12, v13);
  v14 = v2 + v4[13];
  v15 = sub_20D972AF8();
  v63 = *(*(v15 - 8) + 8);
  v64 = v15;
  v63(v14);
  v16 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v17 = v16[5];
  v18 = sub_20D9727B8();
  v61 = *(*(v18 - 8) + 8);
  v62 = v18;
  v61(v14 + v17);
  v19 = v14 + v16[7];
  v7(v19, v6);
  v7(v19 + *(v11 + 36), v6);
  v20 = v14 + v16[8];
  v7(v20, v6);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  v7(v20 + *(v59 + 36), v6);
  v21 = *(v14 + v16[9]);

  v22 = *(v14 + v16[10]);

  v23 = v16[11];
  v60 = *(v72 + 48);
  if (!v60(v14 + v23, 1, v6))
  {
    v7(v14 + v23, v6);
  }

  v24 = *(v14 + v16[12]);

  v25 = v14 + v16[13];
  v7(v25, v6);
  v7(v25 + *(v11 + 36), v6);
  v26 = *(v14 + v16[14] + 16);

  v27 = v11;
  v28 = v16[16];
  v29 = sub_20D9727D8();
  v58 = *(*(v29 - 8) + 8);
  v58(v14 + v28, v29);
  v7(v2 + v4[14], v6);
  v30 = *(v2 + v4[15]);

  v31 = v2 + v71[5];
  (v63)(v31, v64);
  (v61)(v31 + v16[5], v62);
  v32 = v31 + v16[7];
  v7(v32, v6);
  v33 = v27;
  v7(v32 + *(v27 + 36), v6);
  v34 = v31 + v16[8];
  v7(v34, v6);
  v7(v34 + *(v59 + 36), v6);
  v35 = *(v31 + v16[9]);

  v36 = *(v31 + v16[10]);

  v37 = v16[11];
  if (!v60(v31 + v37, 1, v6))
  {
    v7(v31 + v37, v6);
  }

  v38 = (v67 + v68 + v66 + 1) & ~v66;
  v73 = (v65 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = *(v31 + v16[12]);

  v40 = v31 + v16[13];
  v7(v40, v6);
  v7(v40 + *(v33 + 36), v6);
  v41 = *(v31 + v16[14] + 16);

  v58(v31 + v16[16], v29);
  v42 = (v2 + v71[6]);
  v43 = v42[2];

  v44 = v42[3];

  v45 = v42[4];

  v46 = v42[5];

  v47 = v42[6];

  v48 = v42[7];

  v49 = v42[8];

  v50 = v42[20];

  v51 = v42[21];

  v52 = *(v2 + v71[7] + 8);

  v53 = *(v2 + v71[8] + 8);

  v54 = *(v2 + v71[9] + 8);

  v55 = *(v2 + v71[10] + 8);

  v56 = v70 + v38;
  v7(v56, v6);
  v7(v56 + *(v33 + 36), v6);

  return MEMORY[0x2821FE8E8](v70, v73 + 8, v69 | v66 | 7);
}

uint64_t sub_20D7D8584(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0E8, &unk_20D97E0E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7D863C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HistoricalUsageChart();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_20D972C58();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_20D7D874C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for HistoricalUsageChart();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_20D972C58();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20D7D885C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D972C58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20D7D891C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20D972C58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20D7D89D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D972C58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20D7D8A98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20D972C58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20D7D8B64()
{
  v1 = type metadata accessor for LollipopSelectionView(0);
  v85 = *(*(v1 - 8) + 80);
  v86 = v1;
  v83 = *(*(v1 - 8) + 64);
  v2 = sub_20D973C48();
  v88 = *(v2 - 8);
  v89 = v2;
  v82 = *(v88 + 80);
  v87 = *(v88 + 64);
  v90 = v0;
  v84 = (v85 + 16) & ~v85;
  v3 = v0 + v84;
  v4 = *(v0 + v84 + 8);

  v5 = type metadata accessor for HistoricalUsageSnapshot();
  v6 = v5[5];
  v7 = sub_20D972628();
  v91 = *(v7 - 8);
  v8 = *(v91 + 8);
  v8(v0 + v84 + v6, v7);
  v8(v0 + v84 + v5[6], v7);
  v8(v0 + v84 + v5[7], v7);
  v8(v0 + v84 + v5[8], v7);
  v9 = v5[9];
  v10 = sub_20D971D98();
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v84 + v9, v10);
  v11(v0 + v84 + v5[10], v10);
  v12 = v5[12];
  v13 = sub_20D972E88();
  (*(*(v13 - 8) + 8))(v0 + v84 + v12, v13);
  v14 = v0 + v84 + v5[13];
  v15 = sub_20D972AF8();
  (*(*(v15 - 8) + 8))(v14, v15);
  v16 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v17 = v16[5];
  v18 = sub_20D9727B8();
  (*(*(v18 - 8) + 8))(v14 + v17, v18);
  v19 = v14 + v16[7];
  v8(v19, v7);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v8(v19 + *(v20 + 36), v7);
  v21 = v14 + v16[8];
  v8(v21, v7);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  v8(v21 + *(v22 + 36), v7);
  v23 = *(v14 + v16[9]);

  v24 = *(v14 + v16[10]);

  v25 = v16[11];
  v26 = *(v91 + 48);
  if (!v26(v14 + v25, 1, v7))
  {
    v8(v14 + v25, v7);
  }

  v27 = *(v14 + v16[12]);

  v28 = v14 + v16[13];
  v8(v28, v7);
  v8(v28 + *(v20 + 36), v7);
  v29 = *(v14 + v16[14] + 16);

  v30 = v16[16];
  v31 = sub_20D9727D8();
  (*(*(v31 - 8) + 8))(v14 + v30, v31);
  v8(v3 + v5[14], v7);
  v32 = *(v3 + v5[15]);

  v33 = type metadata accessor for HistoricalUsageChart();
  v34 = (v3 + v33[8]);
  v35 = *v34;

  v36 = v34[1];

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB88, &unk_20D97C960);
  v8(v34 + *(v37 + 32), v7);
  v38 = (v3 + v33[9]);
  v39 = *v38;

  v40 = v38[1];

  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB90, &unk_20D97D270) + 32);
  if (!v26(v38 + v41, 1, v7))
  {
    v8(v38 + v41, v7);
  }

  v42 = (v3 + v33[10]);
  v43 = v42[2];

  v44 = v42[3];

  v45 = v42[4];

  v46 = v42[5];

  v47 = v42[6];

  v48 = v42[7];

  v49 = v42[8];

  v50 = v42[20];

  v51 = v42[21];

  v8(v3 + v33[12], v7);
  v52 = *(v3 + v33[13] + 16);

  v53 = *(v3 + v33[14] + 16);

  v54 = v33[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = sub_20D973D58();
    (*(*(v55 - 8) + 8))(v3 + v54, v55);
  }

  else
  {
    v56 = *(v3 + v54);
  }

  v57 = v33[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v58 = sub_20D973B18();
    (*(*(v58 - 8) + 8))(v3 + v57, v58);
  }

  else
  {
    v59 = *(v3 + v57);
  }

  v60 = v33[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEA8, &unk_20D97E1E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v61 = sub_20D973D78();
    (*(*(v61 - 8) + 8))(v3 + v60, v61);
  }

  else
  {
    v62 = *(v3 + v60);
  }

  v63 = (v84 + v83 + v82) & ~v82;
  v64 = v33[18];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v65 - 8) + 8))(v3 + v64, v65);
  v66 = v86[5];
  v67 = sub_20D972C58();
  (*(*(v67 - 8) + 8))(v3 + v66, v67);
  v68 = (v3 + v86[7]);
  v69 = *v68;

  v70 = v68[1];

  v71 = (v3 + v86[8]);
  v72 = v71[2];

  v73 = v71[3];

  v74 = v71[4];

  v75 = v71[5];

  v76 = v71[6];

  v77 = v71[7];

  v78 = v71[8];

  v79 = v71[20];

  v80 = v71[21];

  (*(v88 + 8))(v90 + v63, v89);

  return MEMORY[0x2821FE8E8](v90, v63 + v87, v85 | v82 | 7);
}

uint64_t sub_20D7D946C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_20D7D95AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_20D7D9730()
{
  v1 = type metadata accessor for UtilityRemoveBanner();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20D973D58();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *&v5[v1[5] + 8];

  v9 = *&v5[v1[6] + 8];

  v10 = *&v5[v1[8] + 8];

  v11 = *&v5[v1[9] + 8];

  v12 = &v5[v1[10]];
  if (*v12)
  {
    v13 = *(v12 + 1);
  }

  v14 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x20F324310](&v5[v1[11]]);
  v17 = v1[12];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v18 - 8) + 8))(&v5[v17], v18);
  v19 = *(v0 + v14 + 8);

  v20 = *(v0 + v15 + 8);

  v21 = *(v0 + v16 + 8);

  return MEMORY[0x2821FE8E8](v0, v16 + 16, v2 | 7);
}

uint64_t sub_20D7D9938()
{
  v1 = type metadata accessor for UtilityRemoveBanner();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20D973D58();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *&v5[v1[5] + 8];

  v9 = *&v5[v1[6] + 8];

  v10 = *&v5[v1[8] + 8];

  v11 = *&v5[v1[9] + 8];

  v12 = &v5[v1[10]];
  if (*v12)
  {
    v13 = *(v12 + 1);
  }

  MEMORY[0x20F324310](&v5[v1[11]]);
  v14 = v1[12];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v15 - 8) + 8))(&v5[v14], v15);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D7D9AF8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20D7D9B38()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20D7D9B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_20D7D9CC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20D7D9E1C()
{
  v1 = type metadata accessor for HistoricalUsageEnergyTip();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_20D973D58();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = *(v1 + 28);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D7D9FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UtilityRateInfoSnapshot();
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

    return (v10 + 1);
  }
}

uint64_t sub_20D7DA098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UtilityRateInfoSnapshot();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20D7DA158(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UtilityRateInfoSnapshot();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20D7DA204(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UtilityRateInfoSnapshot();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20D7DA394(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_20D7DA440(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20D7DA4F4()
{
  v1 = (type metadata accessor for FilterButtonsAndPickerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v38 = *(*v1 + 64);
  v4 = v0 + v3;
  v5 = *(v0 + v3);

  v6 = v0 + v3 + v1[7];
  v7 = sub_20D972628();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v8(v6 + *(v9 + 36), v7);
  v10 = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
  v11 = *(v6 + v10[5]);

  v12 = *(v6 + v10[8]);

  v13 = *(v6 + v10[9]);

  v14 = v6 + *(type metadata accessor for DynamicEnergyUsagesCalculations(0) + 20);
  v8(v14, v7);
  v8(v14 + *(v9 + 36), v7);
  v15 = *(v14 + v10[5]);

  v16 = *(v14 + v10[8]);

  v17 = *(v14 + v10[9]);

  v18 = (v0 + v3 + v1[8]);
  v19 = *v18;

  v20 = v18[1];

  v21 = (v4 + v1[9]);
  v22 = *v21;

  v23 = v21[1];

  v24 = (v4 + v1[10]);
  v25 = *v24;

  v26 = v24[1];

  v27 = (v4 + v1[12]);
  v28 = v27[2];

  v29 = v27[3];

  v30 = v27[4];

  v31 = v27[5];

  v32 = v27[6];

  v33 = v27[7];

  v34 = v27[8];

  v35 = v27[20];

  v36 = v27[21];

  return MEMORY[0x2821FE8E8](v39, v3 + v38, v2 | 7);
}

uint64_t sub_20D7DA75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839418, &qword_20D9787B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_20D7DA898(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839418, &qword_20D9787B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20D7DA9D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20D7DAA80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20D7DAB68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (type metadata accessor for FilterButtonsAndPickerView.CategoryFilterButtonsView() - 8);
  v4 = *(*v3 + 80);
  v35 = (v4 + 32) & ~v4;
  v36 = *(*v3 + 64);
  v5 = *(v0 + v35);

  v6 = *(v0 + v35 + 8);

  v7 = v0 + v35 + v3[11];
  v8 = sub_20D972628();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v9(v7 + *(v10 + 36), v8);
  v11 = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
  v12 = *(v7 + v11[5]);

  v13 = *(v7 + v11[8]);

  v14 = *(v7 + v11[9]);

  v15 = v7 + *(type metadata accessor for DynamicEnergyUsagesCalculations(0) + 20);
  v9(v15, v8);
  v9(v15 + *(v10 + 36), v8);
  v16 = *(v15 + v11[5]);

  v17 = *(v15 + v11[8]);

  v18 = *(v15 + v11[9]);

  v19 = *(v0 + v35 + v3[13]);

  v20 = *(v0 + v35 + v3[14]);

  v21 = *(v0 + v35 + v3[15]);

  v22 = *(v0 + v35 + v3[16]);

  v23 = (v0 + v35 + v3[17]);
  v24 = v23[2];

  v25 = v23[3];

  v26 = v23[4];

  v27 = v23[5];

  v28 = v23[6];

  v29 = v23[7];

  v30 = v23[8];

  v31 = v23[20];

  v32 = v23[21];

  v33 = *(v0 + v35 + v3[18]);

  return MEMORY[0x2821FE8E8](v0, v35 + v36, v4 | 7);
}

uint64_t sub_20D7DAE00()
{
  v1 = type metadata accessor for FilterButtonsAndPickerView.GridQualityFilterButton(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 32);

  v7 = *(v0 + v3 + 40);

  v8 = *(v0 + v3 + 80);

  v9 = *(v0 + v3 + 88);

  v10 = *(v0 + v3 + 96);

  v11 = *(v0 + v3 + 104);

  v12 = *(v0 + v3 + 112);

  v13 = *(v0 + v3 + 120);

  v14 = *(v0 + v3 + 128);

  v15 = *(v0 + v3 + 224);

  v16 = *(v0 + v3 + 232);

  v17 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_20D973D58();
    (*(*(v18 - 8) + 8))(v5 + v17, v18);
  }

  else
  {
    v19 = *(v5 + v17);
  }

  v20 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_20D973B18();
    (*(*(v21 - 8) + 8))(v5 + v20, v21);
  }

  else
  {
    v22 = *(v5 + v20);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D7DAFF0()
{
  v1 = v0[6];

  v2 = v0[7];

  v3 = v0[12];

  v4 = v0[13];

  v5 = v0[14];

  v6 = v0[15];

  v7 = v0[16];

  v8 = v0[17];

  v9 = v0[18];

  v10 = v0[30];

  v11 = v0[31];

  return MEMORY[0x2821FE8E8](v0, 288, 7);
}

uint64_t sub_20D7DB078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BEE0, &qword_20D97F420);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839418, &qword_20D9787B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_20D7DB1A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BEE0, &qword_20D97F420);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839418, &qword_20D9787B0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20D7DB2C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A590, &qword_20D97B800);
  sub_20D7EBC4C(&qword_27C83BEC8, &qword_27C83A590, &qword_20D97B800);
  sub_20D974BB8();
  sub_20D973DA8();
  v4 = *(v2 + 8);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_20D7DB3E0()
{
  type metadata accessor for FilterButtonsAndPickerView.UsageFilterView(255);
  sub_20D93EEB8(&qword_27C83BED8, type metadata accessor for FilterButtonsAndPickerView.UsageFilterView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20D7DB478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83BFE8, &qword_20D97F540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7DB4EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  MEMORY[0x20F324310](v0 + 56);
  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  v7 = *(v0 + 88);

  v8 = *(v0 + 104);

  v9 = *(v0 + 112);

  v10 = *(v0 + 128);

  v11 = *(v0 + 144);

  v12 = *(v0 + 160);

  v13 = *(v0 + 176);

  v14 = *(v0 + 184);

  v15 = *(v0 + 200);

  v16 = *(v0 + 208);

  v17 = *(v0 + 224);

  v18 = *(v0 + 240);

  v19 = *(v0 + 256);

  sub_20D809438(*(v0 + 264), *(v0 + 272));

  return MEMORY[0x2821FE8E8](v0, 273, 7);
}

uint64_t sub_20D7DB620()
{
  v1 = (type metadata accessor for UtilityRateInfoDetailsSheet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v0 + v3 + v1[7];
  v7 = sub_20D972628();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0) + 28));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D7DB730()
{
  v1 = (type metadata accessor for UtilityRateInfoSnapshot() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = v1[7];
  v7 = sub_20D972628();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v8(v0 + v3 + v1[8], v7);
  v8(v0 + v3 + v1[9], v7);
  v9 = *(v0 + v3 + v1[10] + 8);

  v10 = v1[11];
  v11 = sub_20D972838();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v12 = *(v0 + v3 + v1[14]);

  v13 = *(v0 + v3 + v1[15]);

  v14 = *(v0 + v3 + v1[16]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D7DB8CC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_20D7DB988(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20D7DBA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UtilityRateInfoSnapshot();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_20D7DBB60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UtilityRateInfoSnapshot();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20D7DBC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UtilityRateInfoSnapshot();
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

uint64_t sub_20D7DBD90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for UtilityRateInfoSnapshot();
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

uint64_t sub_20D7DBEB4()
{
  v1 = type metadata accessor for UtilityPeaksGrid(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v22 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = *(v0 + v3 + 8);

  v6 = type metadata accessor for UtilityRateInfoSnapshot();
  v7 = v6[5];
  v8 = sub_20D972628();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  v9(v0 + v3 + v6[6], v8);
  v9(v0 + v3 + v6[7], v8);
  v10 = *(v0 + v3 + v6[8] + 8);

  v11 = v6[9];
  v12 = sub_20D972838();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  v13 = *(v0 + v3 + v6[12]);

  v14 = *(v0 + v3 + v6[13]);

  v15 = *(v0 + v3 + v6[14]);

  v16 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_20D973D58();
    (*(*(v17 - 8) + 8))(v4 + v16, v17);
  }

  else
  {
    v18 = *(v4 + v16);
  }

  v19 = *(v4 + v1[7]);

  v20 = *(v4 + v1[8]);

  return MEMORY[0x2821FE8E8](v0, v3 + v22, v2 | 7);
}

uint64_t sub_20D7DC128()
{
  v1 = type metadata accessor for RatePlanTitle(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v21 = *(*(v1 - 8) + 64);
  v22 = v0;
  v4 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_20D973D58();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v4 + *(v1 + 20);
  v8 = *(v7 + 1);

  v9 = type metadata accessor for UtilityRateInfoSnapshot();
  v10 = v9[5];
  v11 = sub_20D972628();
  v12 = *(*(v11 - 8) + 8);
  v12(&v7[v10], v11);
  v12(&v7[v9[6]], v11);
  v12(&v7[v9[7]], v11);
  v13 = *&v7[v9[8] + 8];

  v14 = v9[9];
  v15 = sub_20D972838();
  (*(*(v15 - 8) + 8))(&v7[v14], v15);
  v16 = *&v7[v9[12]];

  v17 = *&v7[v9[13]];

  v18 = *&v7[v9[14]];

  v19 = *(v4 + *(v1 + 24) + 8);

  return MEMORY[0x2821FE8E8](v22, v3 + v21, v2 | 7);
}

uint64_t sub_20D7DC374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A898, &qword_20D97C4A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7DC3E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A898, &qword_20D97C4A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D7DC44C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20D7DC508(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FE0, &unk_20D9779F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20D7DC5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UtilityRateInfoSnapshot();
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

    return (v10 + 1);
  }
}

uint64_t sub_20D7DC678(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UtilityRateInfoSnapshot();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20D7DC750()
{
  v1 = (type metadata accessor for UtilityPeakSquare(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v17 = *(*v1 + 64);
  v4 = *(v0 + v3 + 8);

  v5 = type metadata accessor for UtilityRateInfoSnapshot();
  v6 = v5[5];
  v7 = sub_20D972628();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v8(v0 + v3 + v5[6], v7);
  v8(v0 + v3 + v5[7], v7);
  v9 = *(v0 + v3 + v5[8] + 8);

  v10 = v5[9];
  v11 = sub_20D972838();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v12 = *(v0 + v3 + v5[12]);

  v13 = *(v0 + v3 + v5[13]);

  v14 = *(v0 + v3 + v5[14]);

  v15 = *(v0 + v3 + v1[7] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v17, v2 | 7);
}

uint64_t sub_20D7DC938(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20D972AF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_20D9727B8();
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[11];
    goto LABEL_11;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v18 = *(a1 + a3[12]);
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  else
  {
    v19 = sub_20D9727D8();
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[16];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_20D7DCBA8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_20D972AF8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_20D9727B8();
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

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[11];
    goto LABEL_11;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[12]) = (a2 - 1);
  }

  else
  {
    v19 = sub_20D9727D8();
    v20 = *(*(v19 - 8) + 56);
    v21 = a1 + a4[16];

    return v20(v21, a2, a2, v19);
  }

  return result;
}

uint64_t sub_20D7DCE18(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20D7DCE84(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20D7DCEF4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20D972628();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for HistoricalUsageSnapshot();
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
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_20D7DD06C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_20D972628();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for HistoricalUsageSnapshot();
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
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_20D7DD2F8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83C8D0, &qword_20D980640);
  sub_20D7EBC4C(&qword_281124D30, &qword_27C83C8D0, &qword_20D980640);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20D7DD478(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C9A0, &qword_20D980A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D7DD4E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20D972628();
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
    v12 = *(a1 + a3[8] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_20D972838();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[9];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_20D7DD60C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_20D972628();
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
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v13 = sub_20D972838();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_20D7DD75C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20D7DD774(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_20D7DD7B0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_20D7DD7D0(uint64_t a1)
{
  v2 = sub_20D7DDD48(&qword_281124C90, type metadata accessor for CLError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_20D7DD83C(uint64_t a1)
{
  v2 = sub_20D7DDD48(&qword_281124C90, type metadata accessor for CLError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_20D7DD8A8(void *a1, uint64_t a2)
{
  v4 = sub_20D7DDD48(&qword_281124C90, type metadata accessor for CLError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_20D7DD95C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D7DDD48(&qword_281124C90, type metadata accessor for CLError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_20D7DD9D8()
{
  v2 = *v0;
  sub_20D975888();
  sub_20D974F88();
  return sub_20D9758A8();
}

uint64_t sub_20D7DDA38(uint64_t a1)
{
  v2 = sub_20D7DDD48(&qword_281124C98, type metadata accessor for CLError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_20D7DDAA4(uint64_t a1)
{
  v2 = sub_20D7DDD48(&qword_281124C98, type metadata accessor for CLError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_20D7DDB14(uint64_t a1)
{
  v2 = sub_20D7DDD48(&qword_281124C90, type metadata accessor for CLError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_20D7DDB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20D7DDD48(&qword_281124C90, type metadata accessor for CLError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
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

uint64_t sub_20D7DDC4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

uint64_t sub_20D7DDCA0(uint64_t a1, int a2)
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

uint64_t sub_20D7DDCC0(uint64_t result, int a2, int a3)
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

uint64_t sub_20D7DDD48(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20D7DDF10()
{
  result = qword_281124CA0;
  if (!qword_281124CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281124CA0);
  }

  return result;
}

void sub_20D7DE008(uint64_t a1, unint64_t *a2)
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

uint64_t sub_20D7DE094()
{
  v0 = [objc_opt_self() systemDarkOrangeColor];
  result = sub_20D974888();
  qword_27C840BC8 = result;
  return result;
}

uint64_t sub_20D7DE0F4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_20D974898();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  (*(v6 + 104))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_20D974978();
  *a2 = result;
  return result;
}

uint64_t GridForecastStrings.StringStyle.hashValue.getter()
{
  v1 = *v0;
  sub_20D975888();
  MEMORY[0x20F323A50](v1);
  return sub_20D9758A8();
}

uint64_t sub_20D7DE284()
{
  v1 = *v0;
  sub_20D975888();
  MEMORY[0x20F323A50](v1);
  return sub_20D9758A8();
}

uint64_t sub_20D7DE2F8()
{
  v1 = *v0;
  sub_20D975888();
  MEMORY[0x20F323A50](v1);
  return sub_20D9758A8();
}

uint64_t static GridForecastStrings.cleanerString.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.lessCleanString.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.gridForecastString.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t sub_20D7DE518()
{
  v0 = *(*(sub_20D9726E8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v1 = *(*(sub_20D975058() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v2 = qword_28112ABE8;
  sub_20D9726B8();
  result = sub_20D975108();
  qword_27C8389D0 = result;
  *algn_27C8389D8 = v4;
  return result;
}

uint64_t static GridForecastStrings.strainedString.getter()
{
  if (qword_27C838378 != -1)
  {
    swift_once();
  }

  v0 = qword_27C8389D0;

  return v0;
}

uint64_t static GridForecastStrings.noCleanEnergyWindowsString.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.noCleanerEnergyForecastedString.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.lessCleanUsage.getter()
{
  v0 = *(*(sub_20D9726E8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v1 = *(*(sub_20D975058() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v2 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static GridForecastStrings.energyInfomationViewPrefaceTitle.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.energyInformationViewPrefaceBody.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.energyInformationAboutTheForecastTitle.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.energyInformationAboutTheForecastBody.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.energyInformationCleanerTitle.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.energyInformationCleanerBody.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.energyInformationLessCleanTitle.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.energyInformationLessCleanBody.getter()
{
  v0 = *(*(sub_20D9726E8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v1 = *(*(sub_20D975058() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v2 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t sub_20D7DEF58()
{
  v0 = *(*(sub_20D9726E8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v1 = *(*(sub_20D975058() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v2 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static GridForecastStrings.energyInformationStrainedBody.getter()
{
  v0 = *(*(sub_20D9726E8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v1 = *(*(sub_20D975058() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v2 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static GridForecastStrings.energyInformationRooftopSolarTitle.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.energyInformationRooftopSolarBody.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.inlineEducationViewTitle.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.educationTipNoPunctuationTitle.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t static GridForecastStrings.inlineEducationViewBody.getter()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  return sub_20D971FF8();
}

uint64_t _s12HomeEnergyUI19GridForecastStringsV09localizedB12RatingString3for5styleSS0A8Services0B6WindowV_AC0I5StyleOtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = sub_20D972628();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  sub_20D972978();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20D7DFFB8(v6);
    if (EnergyWindow.isCleanEnergy.getter())
    {
      if (qword_281126E98 == -1)
      {
        return sub_20D971FF8();
      }
    }

    else if (qword_281126E98 == -1)
    {
      return sub_20D971FF8();
    }

    swift_once();
    return sub_20D971FF8();
  }

  (*(v8 + 32))(v11, v6, v7);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      if ((EnergyWindow.isCleanEnergy.getter() & 1) == 0)
      {
        if (EnergyWindow.isStrainedEnergy.getter())
        {
          v13 = "Less clean until %@.";
          if (qword_281126E98 != -1)
          {
            swift_once();
          }

          v14 = qword_28112ABE8;
          v15 = 0xD000000000000012;
        }

        else
        {
          v13 = "Cleaner until %@";
          if (qword_281126E98 != -1)
          {
            swift_once();
          }

          v14 = qword_28112ABE8;
          v15 = 0xD000000000000014;
        }

        goto LABEL_52;
      }

      v17 = "Strained until %@.";
      if (qword_281126E98 != -1)
      {
LABEL_38:
        swift_once();
      }
    }

    else
    {
      if (v12 == 3)
      {
        if (EnergyWindow.isCleanEnergy.getter())
        {
          v13 = "e is strained until %@.";
          if (qword_281126E98 != -1)
          {
            swift_once();
          }

          v14 = qword_28112ABE8;
          v15 = 0xD000000000000020;
        }

        else if (EnergyWindow.isStrainedEnergy.getter())
        {
          v13 = "ess clean until %@.";
          if (qword_281126E98 != -1)
          {
            swift_once();
          }

          v14 = qword_28112ABE8;
          v15 = 0xD000000000000027;
        }

        else
        {
          v13 = "h a strained Energy Window";
          if (qword_281126E98 != -1)
          {
            swift_once();
          }

          v14 = qword_28112ABE8;
          v15 = 0xD000000000000023;
        }

LABEL_52:
        v18 = v13 | 0x8000000000000000;
        goto LABEL_53;
      }

      if (EnergyWindow.isCleanEnergy.getter())
      {
        v13 = "Strained until %@";
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v14 = qword_28112ABE8;
        v15 = 0xD000000000000010;
        goto LABEL_52;
      }

      if ((EnergyWindow.isStrainedEnergy.getter() & 1) == 0)
      {
        v13 = "leaner until %@.";
        if (qword_281126E98 != -1)
        {
          swift_once();
        }

        v14 = qword_28112ABE8;
        v15 = 0xD000000000000013;
        goto LABEL_52;
      }

      v17 = "Less clean until %@";
      if (qword_281126E98 != -1)
      {
        goto LABEL_38;
      }
    }

    v14 = qword_28112ABE8;
    v18 = v17 | 0x8000000000000000;
    v15 = 0xD000000000000011;
LABEL_53:
    v21 = sub_20D88D048(v15, v18, v11, 0x617A696C61636F4CLL, 0xEB00000000656C62, v14);
LABEL_54:
    v22 = v21;
    (*(v8 + 8))(v11, v7);
    return v22;
  }

  if (v12)
  {
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v14 = qword_28112ABE8;
    v15 = 0x4025206C69746E55;
    v18 = 0xE800000000000000;
    goto LABEL_53;
  }

  if (EnergyWindow.isCleanEnergy.getter())
  {
    if (qword_281126E98 == -1)
    {
      goto LABEL_56;
    }

    goto LABEL_59;
  }

  if ((EnergyWindow.isStrainedEnergy.getter() & 1) == 0)
  {
    if (qword_281126E98 == -1)
    {
LABEL_56:
      v21 = sub_20D971FF8();
      goto LABEL_54;
    }

LABEL_59:
    swift_once();
    goto LABEL_56;
  }

  if (qword_27C838378 != -1)
  {
    swift_once();
  }

  v19 = qword_27C8389D0;
  v20 = *(v8 + 8);

  v20(v11, v7);
  return v19;
}

unint64_t sub_20D7DFD24()
{
  result = qword_27C8389E0;
  if (!qword_27C8389E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8389E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GridForecastStrings(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for GridForecastStrings(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for GridForecastStrings.StringStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GridForecastStrings.StringStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_20D7DFFB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D7E002C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridForecastSnapshotType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GridForecastSnapshot.energyWindows.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GridForecastSnapshot(0) + 20);
  v4 = sub_20D9729D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_20D7E014C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GridForecastSnapshot.gridID.getter()
{
  v1 = (v0 + *(type metadata accessor for GridForecastSnapshot(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GridForecastSnapshot.locationCity.getter()
{
  v1 = (v0 + *(type metadata accessor for GridForecastSnapshot(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GridForecastSnapshot.featuredIntervals.getter()
{
  v1 = *(v0 + *(type metadata accessor for GridForecastSnapshot(0) + 32));
}

uint64_t sub_20D7E0238()
{
  v1 = type metadata accessor for GridForecastSnapshotType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20D7E002C(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return *v4;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = *v4;
    v7 = v4[2];

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
    sub_20D7E3944(v4 + *(v8 + 64), &qword_27C8389F8, &qword_20D978460);
    return v6;
  }

  else
  {
    if (qword_281127390 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for GridForecastSnapshot(0);
    __swift_project_value_buffer(v10, qword_28112AC50);
    return sub_20D7E0238();
  }
}

uint64_t GridForecastSnapshot.error.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for GridForecastSnapshot(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t GridForecastSnapshot.locationName.getter()
{
  v1 = *(*(type metadata accessor for GridForecastSnapshotType(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D7E002C(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v4 = *(v3 + 1);
    v5 = *(v3 + 2);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
    sub_20D7E3944(&v3[*(v6 + 64)], &qword_27C8389F8, &qword_20D978460);
  }

  else
  {
    sub_20D7E0488(v3);
    return 0;
  }

  return v4;
}

uint64_t sub_20D7E0488(uint64_t a1)
{
  v2 = type metadata accessor for GridForecastSnapshotType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GridForecastSnapshot.description.getter()
{
  v1 = type metadata accessor for GridForecastSnapshot(0);
  v2 = v1;
  if (*(v0 + *(v1 + 36)) == 12)
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    v11 = *(v0 + *(v1 + 36));
    GridForecastError.description.getter();
    sub_20D7E1EF8();
    v5 = sub_20D975538();
    v7 = v6;

    MEMORY[0x20F323340](v5, v7);

    MEMORY[0x20F323340](41, 0xE100000000000000);

    v3 = 40;
    v4 = 0xE100000000000000;
  }

  sub_20D975678();
  MEMORY[0x20F323340](978536007, 0xE400000000000000);
  MEMORY[0x20F323340](v3, v4);

  MEMORY[0x20F323340](0x20726F6620, 0xE500000000000000);
  v8 = GridForecastSnapshotType.description.getter();
  MEMORY[0x20F323340](v8);

  MEMORY[0x20F323340](0x64697267206E6920, 0xE900000000000020);
  MEMORY[0x20F323340](*(v0 + v2[6]), *(v0 + v2[6] + 8));
  MEMORY[0x20F323340](8236, 0xE200000000000000);
  MEMORY[0x20F323340](*(v0 + v2[7]), *(v0 + v2[7] + 8));
  MEMORY[0x20F323340](8250, 0xE200000000000000);
  v9 = v2[5];
  sub_20D9729D8();
  sub_20D975728();
  return 0;
}

uint64_t static GridForecastSnapshot.staticSnapshotWithWindowsType(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v41 - v5;
  v6 = type metadata accessor for GridForecastSnapshotType(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D9729D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  v18 = *a1;
  v19 = &v41 - v16;
  if (v18 > 3)
  {
    if (*a1 > 5u)
    {
      if (v18 == 6)
      {
        static EnergyWindows.mockNowReduceEnergyWindows()(v19);
      }

      else
      {
        static EnergyWindows.mockCleanOverlappingEnergyWindows()(v19);
      }
    }

    else if (v18 == 4)
    {
      static EnergyWindows.mockPastCleanEnergyWindows()(v19);
    }

    else
    {
      static EnergyWindows.mockWidgetSnapshotEnergyWindows()(v19);
    }
  }

  else if (*a1 > 1u)
  {
    if (v18 == 2)
    {
      static EnergyWindows.mockSoonCleanEnergyWindows()(v19);
    }

    else
    {
      static EnergyWindows.mockFutureCleanEnergyWindows()(v19);
    }
  }

  else if (*a1)
  {
    static EnergyWindows.mockNowCleanEnergyWindows()(v19);
  }

  else
  {
    static EnergyWindows.mockNoCleanEnergyWindows()(v19);
  }

  v20 = &byte_282496C68;
  v21 = qword_282496C58;
  do
  {
    if (!v21)
    {
      v29 = 0xE200000000000000;
      v41 = 11565;
      v27 = 0xE200000000000000;
      v28 = 11565;
      goto LABEL_23;
    }

    v22 = *v20++;
    --v21;
  }

  while (v22 != v18);
  if (qword_281127390 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for GridForecastSnapshot(0);
  v24 = __swift_project_value_buffer(v23, qword_28112AC50);
  v25 = *(v23 + 28);
  v26 = (v24 + *(v23 + 24));
  v27 = v26[1];
  v41 = *v26;
  v28 = *(v24 + v25);
  v29 = *(v24 + v25 + 8);

LABEL_23:
  *v9 = v18;
  swift_storeEnumTagMultiPayload();
  v30 = v9;
  v42 = v9;
  v31 = *(v11 + 16);
  v31(v15, v17, v10);
  v43 = v17;
  v32 = v45;
  sub_20D7E002C(v30, v45);
  v33 = type metadata accessor for GridForecastSnapshot(0);
  v31((v32 + v33[5]), v15, v10);
  v34 = (v32 + v33[6]);
  *v34 = v41;
  v34[1] = v27;
  v35 = (v32 + v33[7]);
  *v35 = v28;
  v35[1] = v29;
  *(v32 + v33[9]) = 12;
  v36 = v44;
  v31(v44, v15, v10);
  (*(v11 + 56))(v36, 0, 1, v10);
  v37 = sub_20D87934C(v36);
  sub_20D7E3944(v36, &qword_27C838A00, &qword_20D976750);
  v46 = v37;
  v38 = sub_20D8797EC(&v46);
  v39 = *(v11 + 8);

  v39(v15, v10);
  sub_20D7E0488(v42);
  v39(v43, v10);

  *(v32 + v33[8]) = v38;
  return result;
}

BOOL sub_20D7E0AEC(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t static GridForecastSnapshot.staticSnapshotWithError(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28[-v6];
  v8 = type metadata accessor for GridForecastSnapshotType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_20D9729D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v28[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v28[-v18];
  v29 = *a1;
  static EnergyWindows.mockNoCleanEnergyWindows()(&v28[-v18]);
  *v11 = 0;
  swift_storeEnumTagMultiPayload();
  v20 = *(v13 + 16);
  v20(v17, v19, v12);
  sub_20D7E002C(v11, a2);
  v21 = type metadata accessor for GridForecastSnapshot(0);
  v20((a2 + v21[5]), v17, v12);
  v22 = (a2 + v21[6]);
  *v22 = 11565;
  v22[1] = 0xE200000000000000;
  v23 = (a2 + v21[7]);
  *v23 = 11565;
  v23[1] = 0xE200000000000000;
  *(a2 + v21[9]) = v29;
  v20(v7, v17, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  v24 = sub_20D87934C(v7);
  sub_20D7E3944(v7, &qword_27C838A00, &qword_20D976750);
  v30 = v24;
  v25 = sub_20D8797EC(&v30);
  v26 = *(v13 + 8);

  v26(v17, v12);
  sub_20D7E0488(v11);
  v26(v19, v12);

  *(a2 + v21[8]) = v25;
  return result;
}

uint64_t sub_20D7E0DFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v33 = &v32 - v2;
  v3 = sub_20D9726E8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_20D975058();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_20D9729D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GridForecastSnapshotType(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for GridForecastSnapshot(0);
  __swift_allocate_value_buffer(v16, qword_28112AC50);
  v17 = __swift_project_value_buffer(v16, qword_28112AC50);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
  *v15 = sub_20D972F58();
  v19 = sub_20D972698();
  v15[1] = 0;
  v15[2] = 0;
  (*(*(v19 - 8) + 56))(v15 + v18, 1, 1, v19);
  swift_storeEnumTagMultiPayload();
  static EnergyWindows.mockWidgetSnapshotEnergyWindows()(v11);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v20 = qword_28112ABE8;
  sub_20D9726B8();
  v21 = sub_20D975108();
  v23 = v22;
  sub_20D7E002C(v15, v17);
  v24 = *(v8 + 16);
  v24(v17 + v16[5], v11, v7);
  v25 = (v17 + v16[6]);
  *v25 = 0x4F4E5F4F53494143;
  v25[1] = 0xEB00000000485452;
  v26 = (v17 + v16[7]);
  *v26 = v21;
  v26[1] = v23;
  *(v17 + v16[9]) = 12;
  v27 = v33;
  v24(v33, v11, v7);
  (*(v8 + 56))(v27, 0, 1, v7);
  v28 = sub_20D87934C(v27);
  sub_20D7E3944(v27, &qword_27C838A00, &qword_20D976750);
  v34 = v28;
  v29 = sub_20D8797EC(&v34);
  v30 = *(v8 + 8);

  v30(v11, v7);
  sub_20D7E0488(v15);

  *(v17 + v16[8]) = v29;
  return result;
}

uint64_t sub_20D7E1230()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v24 - v2;
  v4 = sub_20D9729D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GridForecastSnapshotType(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for GridForecastSnapshot(0);
  __swift_allocate_value_buffer(v13, qword_27C840BD0);
  v14 = __swift_project_value_buffer(v13, qword_27C840BD0);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
  *v12 = sub_20D972F18();
  v16 = sub_20D972698();
  v12[1] = 0;
  v12[2] = 0;
  (*(*(v16 - 8) + 56))(v12 + v15, 1, 1, v16);
  swift_storeEnumTagMultiPayload();
  static EnergyWindows.mockNowCleanEnergyWindows()(v8);
  sub_20D7E002C(v12, v14);
  v17 = *(v5 + 16);
  v17(v14 + v13[5], v8, v4);
  v18 = (v14 + v13[6]);
  *v18 = 0x4F4E5F4F53494143;
  v18[1] = 0xEB00000000485452;
  v19 = v14 + v13[7];
  strcpy(v19, "San Francisco");
  *(v19 + 14) = -4864;
  *(v14 + v13[9]) = 12;
  v17(v3, v8, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  v20 = sub_20D87934C(v3);
  sub_20D7E3944(v3, &qword_27C838A00, &qword_20D976750);
  v25 = v20;
  v21 = sub_20D8797EC(&v25);
  v22 = *(v5 + 8);

  v22(v8, v4);
  sub_20D7E0488(v12);

  *(v14 + v13[8]) = v21;
  return result;
}

uint64_t sub_20D7E1560()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v24 - v2;
  v4 = sub_20D9729D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GridForecastSnapshotType(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for GridForecastSnapshot(0);
  __swift_allocate_value_buffer(v13, qword_27C840BE8);
  v14 = __swift_project_value_buffer(v13, qword_27C840BE8);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
  *v12 = sub_20D972F38();
  v16 = sub_20D972698();
  v12[1] = 0;
  v12[2] = 0;
  (*(*(v16 - 8) + 56))(v12 + v15, 1, 1, v16);
  swift_storeEnumTagMultiPayload();
  static EnergyWindows.mockPastCleanEnergyWindows()(v8);
  sub_20D7E002C(v12, v14);
  v17 = *(v5 + 16);
  v17(v14 + v13[5], v8, v4);
  v18 = (v14 + v13[6]);
  *v18 = 1397315918;
  v18[1] = 0xE400000000000000;
  v19 = (v14 + v13[7]);
  *v19 = 0x6B726F592077654ELL;
  v19[1] = 0xE800000000000000;
  *(v14 + v13[9]) = 12;
  v17(v3, v8, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  v20 = sub_20D87934C(v3);
  sub_20D7E3944(v3, &qword_27C838A00, &qword_20D976750);
  v25 = v20;
  v21 = sub_20D8797EC(&v25);
  v22 = *(v5 + 8);

  v22(v8, v4);
  sub_20D7E0488(v12);

  *(v14 + v13[8]) = v21;
  return result;
}

uint64_t sub_20D7E1874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_20D9729D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GridForecastSnapshotType(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D7E002C(a1, v16);
  static EnergyWindows.mockNoCleanEnergyWindows()(v12);
  sub_20D7E002C(v16, a2);
  v17 = type metadata accessor for GridForecastSnapshot(0);
  v18 = *(v9 + 16);
  v18(a2 + v17[5], v12, v8);
  v19 = (a2 + v17[6]);
  *v19 = 11565;
  v19[1] = 0xE200000000000000;
  v20 = (a2 + v17[7]);
  *v20 = 11565;
  v20[1] = 0xE200000000000000;
  *(a2 + v17[9]) = 0;
  v18(v7, v12, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = sub_20D87934C(v7);
  sub_20D7E3944(v7, &qword_27C838A00, &qword_20D976750);
  v26 = v21;
  v22 = sub_20D8797EC(&v26);
  v23 = *(v9 + 8);

  v23(v12, v8);
  sub_20D7E0488(v16);

  *(a2 + v17[8]) = v22;
  return result;
}

unint64_t GridForecastSnapshotType.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = type metadata accessor for GridForecastSnapshotType(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D7E002C(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = 0x3E4C494E3CLL;

      v15 = *(v12 + 1);
      v16 = *(v12 + 2);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
      sub_20D7E2A54(&v12[*(v17 + 64)], v8);
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_20D975678();

      v29 = 0xD000000000000012;
      v30 = 0x800000020D9823C0;
      if (v16)
      {
        v18 = v15;
      }

      else
      {
        v18 = 0x3E4C494E3CLL;
      }

      if (v16)
      {
        v19 = v16;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      MEMORY[0x20F323340](v18, v19);

      MEMORY[0x20F323340](0x3A6469202F772820, 0xE900000000000020);
      sub_20D7E2AC4(v8, v6);
      v20 = sub_20D972698();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v6, 1, v20) == 1)
      {
        sub_20D7E3944(v6, &qword_27C8389F8, &qword_20D978460);
        v22 = 0xE500000000000000;
      }

      else
      {
        v14 = sub_20D972648();
        v22 = v27;
        (*(v21 + 8))(v6, v20);
      }

      MEMORY[0x20F323340](v14, v22);

      v28 = v29;
      sub_20D7E3944(v8, &qword_27C8389F8, &qword_20D978460);
      return v28;
    }

    else
    {
      v24 = 0xD00000000000001ELL;
      v25 = *v12;
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_20D975678();

      v29 = 0xD00000000000001ELL;
      v30 = 0x800000020D982400;
      if (v25 > 3)
      {
        if (v25 > 5)
        {
          if (v25 == 6)
          {
            v26 = " the next 4 hours";
            v24 = 0xD000000000000026;
          }

          else
          {
            v26 = "Apple Park mock location with ";
            v24 = 0xD000000000000031;
          }
        }

        else if (v25 == 4)
        {
          v26 = "urs that started at 10 am";
        }

        else
        {
          v26 = "w for the next 4 hours";
          v24 = 0xD000000000000039;
        }
      }

      else if (v25 > 1)
      {
        if (v25 == 2)
        {
          v26 = "a clean window in 2 hours";
          v24 = 0xD00000000000001CLL;
        }

        else
        {
          v26 = "a clean window that has passed";
          v24 = 0xD000000000000019;
        }
      }

      else if (v25)
      {
        v26 = "a clean window in 19 minutes";
        v24 = 0xD000000000000023;
      }

      else
      {
        v24 = 0xD000000000000010;
        v26 = "or the next 4 hours";
      }

      MEMORY[0x20F323340](v24, v26 | 0x8000000000000000);

      return v29;
    }
  }

  else
  {
    sub_20D7E0488(v12);
    return 0xD000000000000017;
  }
}

unint64_t sub_20D7E1EF8()
{
  result = qword_281126EF0;
  if (!qword_281126EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126EF0);
  }

  return result;
}

uint64_t CleanNotificationSnapshot.description.getter()
{
  if (*v0)
  {
    result = 0x44454C42414E45;
  }

  else
  {
    result = 0x44454C4241534944;
  }

  *v0;
  return result;
}

uint64_t sub_20D7E1FBC()
{
  if (*v0)
  {
    result = 0x44454C42414E45;
  }

  else
  {
    result = 0x44454C4241534944;
  }

  *v0;
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

uint64_t _s12HomeEnergyUI20GridForecastSnapshotV21serializeCleanWindowsySaySDySSypGGSay0A8Services0B6WindowVGFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v81 - v7;
  v9 = sub_20D972A08();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v81 - v15;
  v17 = sub_20D972998();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v99 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  if (!v21)
  {
    return MEMORY[0x277D84F90];
  }

  v23 = *(v19 + 16);
  v22 = v19 + 16;
  v93 = v23;
  v24 = (a1 + ((*(v22 + 64) + 32) & ~*(v22 + 64)));
  v91 = (v10 + 8);
  v92 = (v10 + 104);
  v90 = *MEMORY[0x277D17F20];
  v88 = (v22 - 8);
  v94 = 0x800000020D9825E0;
  v95 = 0x800000020D9825B0;
  v87 = *(v22 + 56);
  v25 = MEMORY[0x277D84F90];
  v82 = v8;
  v86 = v17;
  v83 = v14;
  v84 = v16;
  v89 = v22;
  v85 = v6;
  while (1)
  {
    v97 = v21;
    v98 = v25;
    v93(v99, v24, v17);
    sub_20D972968();
    (*v92)(v14, v90, v9);
    sub_20D7E38FC(&qword_281127118, MEMORY[0x277D17F30]);
    sub_20D975208();
    sub_20D975208();
    if (v102 == *&v101[0] && *(&v102 + 1) == *(&v101[0] + 1))
    {
      v29 = *v91;
      (*v91)(v14, v9);
      v29(v16, v9);
    }

    else
    {
      v27 = sub_20D9757C8();
      v28 = *v91;
      (*v91)(v14, v9);
      v28(v16, v9);
      v17 = v86;

      if ((v27 & 1) == 0)
      {
        (*v88)(v99, v17);
        v25 = v98;
        goto LABEL_4;
      }
    }

    sub_20D972988();
    v30 = sub_20D972628();
    v31 = *(v30 - 8);
    v96 = *(v31 + 48);
    if (v96(v8, 1, v30) == 1)
    {
      sub_20D7E3944(v8, &qword_27C8389E8, &qword_20D9768D0);
      v32 = MEMORY[0x277D84F98];
      v33 = sub_20D8D4A48(0xD000000000000025, v95);
      if (v34)
      {
        v35 = v33;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v101[0] = v32;
        v37 = v32;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_20D8D5DA4();
          v37 = *&v101[0];
        }

        v38 = *(v37[6] + 16 * v35 + 8);

        sub_20D7E39A4((v37[7] + 32 * v35), &v102);
        sub_20D8D4C90(v35, v37);
      }

      else
      {
        v102 = 0u;
        v103 = 0u;
        v37 = v32;
      }

      v25 = v98;
      sub_20D7E3944(&v102, &qword_27C838A18, &qword_20D9768D8);
      v57 = v85;
      goto LABEL_29;
    }

    v39 = v9;
    v40 = v85;
    sub_20D972588();
    *(&v103 + 1) = MEMORY[0x277D839F8];
    *&v102 = v41;
    (*(v31 + 8))(v8, v30);
    sub_20D7E39A4(&v102, v101);
    v42 = MEMORY[0x277D84F98];
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v100 = v42;
    v45 = sub_20D8D4A48(0xD000000000000025, v95);
    v46 = v42[2];
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      break;
    }

    v49 = v44;
    if (v42[3] >= v48)
    {
      if (v43)
      {
        v37 = v100;
        if ((v44 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_20D8D5DA4();
        v37 = v100;
        if ((v49 & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      sub_20D90856C(v48, v43);
      v50 = sub_20D8D4A48(0xD000000000000025, v95);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_60;
      }

      v45 = v50;
      v37 = v100;
      if ((v49 & 1) == 0)
      {
LABEL_21:
        v37[(v45 >> 6) + 8] |= 1 << v45;
        v52 = (v37[6] + 16 * v45);
        v53 = v95;
        *v52 = 0xD000000000000025;
        v52[1] = v53;
        sub_20D7E39A4(v101, (v37[7] + 32 * v45));
        v54 = v37[2];
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          goto LABEL_58;
        }

        v37[2] = v56;
        goto LABEL_28;
      }
    }

    v58 = (v37[7] + 32 * v45);
    __swift_destroy_boxed_opaque_existential_0(v58);
    sub_20D7E39A4(v101, v58);
LABEL_28:
    v57 = v40;
    v9 = v39;
    v17 = v86;
    v25 = v98;
LABEL_29:
    sub_20D972978();
    if (v96(v57, 1, v30) == 1)
    {
      sub_20D7E3944(v57, &qword_27C8389E8, &qword_20D9768D0);
      v59 = sub_20D8D4A48(0xD000000000000023, v94);
      v16 = v84;
      if (v60)
      {
        v61 = v59;
        v62 = swift_isUniquelyReferenced_nonNull_native();
        *&v101[0] = v37;
        v14 = v83;
        if (!v62)
        {
          sub_20D8D5DA4();
          v37 = *&v101[0];
        }

        v63 = *(v37[6] + 16 * v61 + 8);

        sub_20D7E39A4((v37[7] + 32 * v61), &v102);
        sub_20D8D4C90(v61, v37);
      }

      else
      {
        v102 = 0u;
        v103 = 0u;
        v14 = v83;
      }

      sub_20D7E3944(&v102, &qword_27C838A18, &qword_20D9768D8);
    }

    else
    {
      v96 = v24;
      sub_20D972588();
      *(&v103 + 1) = MEMORY[0x277D839F8];
      *&v102 = v64;
      (*(v31 + 8))(v57, v30);
      sub_20D7E39A4(&v102, v101);
      v65 = swift_isUniquelyReferenced_nonNull_native();
      v100 = v37;
      v66 = sub_20D8D4A48(0xD000000000000023, v94);
      v68 = v37[2];
      v69 = (v67 & 1) == 0;
      v55 = __OFADD__(v68, v69);
      v70 = v68 + v69;
      v16 = v84;
      if (v55)
      {
        goto LABEL_57;
      }

      v71 = v67;
      if (v37[3] >= v70)
      {
        v14 = v83;
        if ((v65 & 1) == 0)
        {
          v79 = v66;
          sub_20D8D5DA4();
          v66 = v79;
        }
      }

      else
      {
        sub_20D90856C(v70, v65);
        v66 = sub_20D8D4A48(0xD000000000000023, v94);
        v14 = v83;
        if ((v71 & 1) != (v72 & 1))
        {
          goto LABEL_60;
        }
      }

      v37 = v100;
      if (v71)
      {
        v73 = (v100[7] + 32 * v66);
        __swift_destroy_boxed_opaque_existential_0(v73);
        sub_20D7E39A4(v101, v73);
      }

      else
      {
        v100[(v66 >> 6) + 8] |= 1 << v66;
        v74 = (v37[6] + 16 * v66);
        *v74 = 0xD000000000000023;
        v74[1] = v94;
        sub_20D7E39A4(v101, (v37[7] + 32 * v66));
        v75 = v37[2];
        v55 = __OFADD__(v75, 1);
        v76 = v75 + 1;
        if (v55)
        {
          goto LABEL_59;
        }

        v37[2] = v76;
      }

      v24 = v96;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_20D8D3FFC(0, v25[2] + 1, 1, v25);
    }

    v78 = v25[2];
    v77 = v25[3];
    if (v78 >= v77 >> 1)
    {
      v25 = sub_20D8D3FFC((v77 > 1), v78 + 1, 1, v25);
    }

    (*v88)(v99, v17);
    v25[2] = v78 + 1;
    v25[v78 + 4] = v37;
    v8 = v82;
LABEL_4:
    v24 += v87;
    v21 = v97 - 1;
    if (v97 == 1)
    {
      return v25;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  result = sub_20D9757F8();
  __break(1u);
  return result;
}

uint64_t sub_20D7E2A54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D7E2AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s12HomeEnergyUI24GridForecastSnapshotTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v69 = sub_20D972698();
  v67 = *(v69 - 8);
  v4 = *(v67 + 64);
  (MEMORY[0x28223BE20])();
  v65 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A08, &qword_20D9768C0);
  v7 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v68 = &v63 - v8;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460) - 8) + 64);
  v10 = (MEMORY[0x28223BE20])();
  v66 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v63 - v13;
  MEMORY[0x28223BE20](v12);
  v70 = &v63 - v15;
  v16 = type metadata accessor for GridForecastSnapshotType(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v63 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = (&v63 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A10, &qword_20D9768C8);
  v27 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v63 - v29;
  v31 = (&v63 + *(v28 + 56) - v29);
  sub_20D7E002C(a1, &v63 - v29);
  sub_20D7E002C(a2, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_20D7E002C(v30, v25);
    v42 = *v25;
    if (!swift_getEnumCaseMultiPayload())
    {
      v45 = *v31;
      if (v42)
      {
        if (v45)
        {
          sub_20D7E38B4(0, &qword_281126EB0, 0x277CE41F8);
          v46 = v42;
          v47 = sub_20D9754C8();

          if (v47)
          {
            goto LABEL_40;
          }

          goto LABEL_30;
        }

        v45 = v42;
      }

      else if (!v45)
      {
        goto LABEL_40;
      }

LABEL_30:
      sub_20D7E0488(v30);
      return 0;
    }

LABEL_15:
    sub_20D7E3944(v30, &qword_27C838A10, &qword_20D9768C8);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_20D7E002C(v30, v20);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v43 = *v20 == *v31;
      sub_20D7E0488(v30);
      return v43;
    }

    goto LABEL_15;
  }

  sub_20D7E002C(v30, v23);
  v34 = *v23;
  v33 = v23[1];
  v35 = v23[2];
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20D7E3944(v23 + v36, &qword_27C8389F8, &qword_20D978460);

    goto LABEL_15;
  }

  v64 = v33;
  v37 = *v31;
  v63 = v31[1];
  v38 = v31[2];
  v39 = v23 + v36;
  v40 = v70;
  sub_20D7E2A54(v39, v70);
  sub_20D7E2A54(v31 + v36, v14);
  sub_20D7E38B4(0, &qword_281124B88, 0x277D82BB8);
  v41 = sub_20D9754C8();

  if ((v41 & 1) == 0)
  {

    goto LABEL_21;
  }

  if (!v35)
  {
    if (!v38)
    {
      goto LABEL_33;
    }

    goto LABEL_21;
  }

  if (!v38)
  {
LABEL_21:

    goto LABEL_22;
  }

  if (v64 == v63 && v35 == v38)
  {

    goto LABEL_33;
  }

  v51 = sub_20D9757C8();

  if ((v51 & 1) == 0)
  {
LABEL_22:
    sub_20D7E3944(v14, &qword_27C8389F8, &qword_20D978460);
    v48 = v40;
    v49 = &qword_27C8389F8;
    v50 = &qword_20D978460;
LABEL_23:
    sub_20D7E3944(v48, v49, v50);
    goto LABEL_30;
  }

LABEL_33:
  v52 = *(v6 + 48);
  v53 = v68;
  sub_20D7E2AC4(v40, v68);
  sub_20D7E2AC4(v14, v53 + v52);
  v54 = v67;
  v55 = v40;
  v56 = *(v67 + 48);
  v57 = v69;
  if (v56(v53, 1, v69) != 1)
  {
    v58 = v66;
    sub_20D7E2AC4(v53, v66);
    if (v56(v53 + v52, 1, v57) != 1)
    {
      v59 = v65;
      (*(v54 + 32))(v65, v53 + v52, v57);
      sub_20D7E38FC(&unk_281126E10, MEMORY[0x277CC95F0]);
      v60 = v58;
      v61 = sub_20D974FD8();
      v62 = *(v54 + 8);
      v62(v59, v57);
      sub_20D7E3944(v14, &qword_27C8389F8, &qword_20D978460);
      sub_20D7E3944(v70, &qword_27C8389F8, &qword_20D978460);
      v62(v60, v57);
      sub_20D7E3944(v53, &qword_27C8389F8, &qword_20D978460);
      if (v61)
      {
        goto LABEL_40;
      }

      goto LABEL_30;
    }

    sub_20D7E3944(v14, &qword_27C8389F8, &qword_20D978460);
    sub_20D7E3944(v70, &qword_27C8389F8, &qword_20D978460);
    (*(v54 + 8))(v58, v57);
    goto LABEL_38;
  }

  sub_20D7E3944(v14, &qword_27C8389F8, &qword_20D978460);
  sub_20D7E3944(v55, &qword_27C8389F8, &qword_20D978460);
  if (v56(v53 + v52, 1, v57) != 1)
  {
LABEL_38:
    v49 = &qword_27C838A08;
    v50 = &qword_20D9768C0;
    v48 = v53;
    goto LABEL_23;
  }

  sub_20D7E3944(v53, &qword_27C8389F8, &qword_20D978460);
LABEL_40:
  sub_20D7E0488(v30);
  return 1;
}

void sub_20D7E32D0()
{
  type metadata accessor for GridForecastSnapshotType(319);
  if (v0 <= 0x3F)
  {
    sub_20D9729D8();
    if (v1 <= 0x3F)
    {
      sub_20D7E3394();
      if (v2 <= 0x3F)
      {
        sub_20D7E33EC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20D7E3394()
{
  if (!qword_281126EC8)
  {
    type metadata accessor for FeaturedInterval();
    v0 = sub_20D975288();
    if (!v1)
    {
      atomic_store(v0, &qword_281126EC8);
    }
  }
}

void sub_20D7E33EC()
{
  if (!qword_2811274E0[0])
  {
    v0 = sub_20D975508();
    if (!v1)
    {
      atomic_store(v0, qword_2811274E0);
    }
  }
}

void sub_20D7E348C()
{
  sub_20D7E3514();
  if (v0 <= 0x3F)
  {
    sub_20D7E35C4();
    if (v1 <= 0x3F)
    {
      sub_20D7E36C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_20D7E3514()
{
  if (!qword_281126EA8)
  {
    sub_20D7E355C();
    if (!v1)
    {
      atomic_store(v0, &qword_281126EA8);
    }
  }
}

void sub_20D7E355C()
{
  if (!qword_281126EA0)
  {
    sub_20D7E38B4(255, &qword_281126EB0, 0x277CE41F8);
    v0 = sub_20D975508();
    if (!v1)
    {
      atomic_store(v0, &qword_281126EA0);
    }
  }
}

void sub_20D7E35C4()
{
  if (!qword_281126EB8)
  {
    sub_20D7E38B4(255, &qword_281126EB0, 0x277CE41F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C83CA30, &qword_20D976870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8389F8, &qword_20D978460);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_281126EB8);
    }
  }
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

ValueMetadata *sub_20D7E36C0()
{
  result = qword_281127128;
  if (!qword_281127128)
  {
    result = &type metadata for EnergyWindows.MockType;
    atomic_store(&type metadata for EnergyWindows.MockType, &qword_281127128);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CleanNotificationSnapshot(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CleanNotificationSnapshot(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_20D7E38B4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_20D7E38FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D7E3944(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_20D7E39A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t HEUIFAnalyticsEvent.__allocating_init(type:data:)(_BYTE *a1, const void *a2)
{
  v4 = swift_allocObject();
  LOBYTE(a1) = *a1;
  sub_20D7E3AF0(v6);
  *(v4 + 16) = a1;
  memcpy(__dst, v6, 0x129uLL);
  memcpy((v4 + 24), a2, 0x129uLL);
  sub_20D7E3B2C(__dst);
  return v4;
}

uint64_t HEUIFAnalyticsEvent.init(type:data:)(char *a1, const void *a2)
{
  v4 = *a1;
  sub_20D7E3AF0(v6);
  *(v2 + 16) = v4;
  memcpy(__dst, v6, 0x129uLL);
  memcpy((v2 + 24), a2, 0x129uLL);
  sub_20D7E3B2C(__dst);
  return v2;
}

uint64_t sub_20D7E3AF0(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 64) = 0u;
  result = a1 + 64;
  *(result + 217) = 0u;
  return result;
}

uint64_t sub_20D7E3B2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A20, &qword_20D9768E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D7E3B94()
{
  v1 = v0;
  v2 = sub_20D972628();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D972618();
  sub_20D972588();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v10 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77[0] = v10;
  sub_20D8D52B0(v9, 0x6D617473656D6974, 0xE900000000000070, isUniquelyReferenced_nonNull_native);
  v12 = v77[0];
  memcpy(v77, (v1 + 24), 0x129uLL);
  memcpy(v78, (v1 + 24), 0x129uLL);
  if (sub_20D7E6050(v78) == 1)
  {
    return v12;
  }

  if (v78[1])
  {
    memcpy(v76, v77, 0x129uLL);
    sub_20D7E6074(v76, &v75);
  }

  else
  {
    v13 = *v78;
    v14 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    sub_20D7E60AC(v77, v76);
    v15 = [v14 initWithDouble_];
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v15, 0x6172754477656976, 0xEC0000006E6F6974, v16);
    v12 = v76[0];
  }

  v17 = BYTE1(v78[1]);
  if (BYTE1(v78[1]) != 2)
  {
    v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v18, 0xD000000000000012, 0x800000020D9827F0, v19);
    v12 = v76[0];
  }

  if ((v78[3] & 1) == 0)
  {
    v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v20, 0xD000000000000014, 0x800000020D9828B0, v21);
    v12 = v76[0];
  }

  if ((v78[5] & 1) == 0)
  {
    v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v22, 0xD000000000000018, 0x800000020D982890, v23);
    v12 = v76[0];
  }

  if (v78[7])
  {
    v24 = objc_allocWithZone(MEMORY[0x277CCACA8]);

    v25 = sub_20D975078();

    v26 = [v24 initWithString_];

    v27 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v26, 0xD000000000000014, 0x800000020D982870, v27);
    v12 = v76[0];
    if (v78[9])
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((v78[9] & 1) == 0)
  {
LABEL_13:
    v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v28, 0xD000000000000019, 0x800000020D982850, v29);
    v12 = v76[0];
  }

LABEL_14:
  if (v78[11])
  {
    v30 = objc_allocWithZone(MEMORY[0x277CCACA8]);

    v31 = sub_20D975078();

    v32 = [v30 &off_277DEE578];

    v33 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v32, 0xD000000000000016, 0x800000020D982830, v33);
    v12 = v76[0];
  }

  if ((v78[13] & 1) == 0)
  {
    v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v34, 0xD000000000000017, 0x800000020D982810, v35);
    v12 = v76[0];
  }

  if (v17 != 2)
  {
    v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v36, 0xD000000000000012, 0x800000020D9827F0, v37);
    v12 = v76[0];
  }

  if (v78[15])
  {
    v38 = 0x277CCA000;
  }

  else
  {
    v38 = 0x277CCA000uLL;
    v39 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v39, 0xD000000000000015, 0x800000020D9827D0, v40);
    v12 = v76[0];
  }

  if (BYTE1(v78[15]) != 2)
  {
    v41 = [objc_allocWithZone(*(v38 + 2992)) initWithBool_];
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v41, 0xD000000000000020, 0x800000020D9827A0, v42);
    v12 = v76[0];
  }

  if ((v78[17] & 1) == 0)
  {
    v43 = [objc_allocWithZone(*(v38 + 2992)) initWithInteger_];
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v43, 0xD000000000000015, 0x800000020D982780, v44);
    v12 = v76[0];
  }

  if (BYTE1(v78[17]) != 2)
  {
    v45 = [objc_allocWithZone(*(v38 + 2992)) initWithBool_];
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v45, 0xD000000000000024, 0x800000020D982750, v46);
    v12 = v76[0];
  }

  if (v78[19])
  {
    v47 = objc_allocWithZone(MEMORY[0x277CCACA8]);

    v48 = sub_20D975078();

    v49 = [v47 &off_277DEE578];

    v50 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v49, 0x497974696C697475, 0xE900000000000064, v50);
    v12 = v76[0];
  }

  if ((v78[21] & 1) == 0)
  {
    v51 = [objc_allocWithZone(*(v38 + 2992)) initWithInteger_];
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v51, 0xD000000000000016, 0x800000020D982730, v52);
    v12 = v76[0];
  }

  if (v78[23])
  {
    if (v78[25])
    {
      goto LABEL_35;
    }
  }

  else
  {
    v61 = [objc_allocWithZone(*(v38 + 2992)) initWithInteger_];
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v61, 0x697455664F6D756ELL, 0xEE0073656974696CLL, v62);
    v12 = v76[0];
    if (v78[25])
    {
LABEL_35:
      if (v78[27])
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  v63 = [objc_allocWithZone(*(v38 + 2992)) initWithInteger_];
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v76[0] = v12;
  sub_20D8D52B0(v63, 0x70744F664F6D756ELL, 0xEF73646F6874654DLL, v64);
  v12 = v76[0];
  if ((v78[27] & 1) == 0)
  {
LABEL_36:
    v53 = [objc_allocWithZone(*(v38 + 2992)) initWithInteger_];
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v53, 0xD000000000000010, 0x800000020D982710, v54);
    v12 = v76[0];
  }

LABEL_37:
  if (BYTE1(v78[27]) != 2)
  {
    v55 = [objc_allocWithZone(*(v38 + 2992)) initWithBool_];
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v55, 0x6C61766E49736168, 0xED00004C52556469, v56);
    v12 = v76[0];
  }

  if ((v78[29] & 1) == 0)
  {
    v57 = [objc_allocWithZone(*(v38 + 2992)) initWithInteger_];
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v57, 0xD000000000000017, 0x800000020D9826F0, v58);
    v12 = v76[0];
  }

  if (BYTE1(v78[29]) != 2)
  {
    v59 = [objc_allocWithZone(*(v38 + 2992)) initWithBool_];
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v59, 0xD00000000000001CLL, 0x800000020D9826D0, v60);
    v12 = v76[0];
  }

  if (v78[31])
  {
    if (v78[33])
    {
      goto LABEL_45;
    }

LABEL_52:
    v67 = [objc_allocWithZone(*(v38 + 2992)) initWithInteger_];
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v67, 0xD000000000000019, 0x800000020D982690, v68);
    v12 = v76[0];
    if (v78[35])
    {
LABEL_46:
      sub_20D7E3B2C(v77);
      if (v78[37])
      {
        return v12;
      }

      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v65 = [objc_allocWithZone(*(v38 + 2992)) initWithInteger_];
  v66 = swift_isUniquelyReferenced_nonNull_native();
  v76[0] = v12;
  sub_20D8D52B0(v65, 0xD00000000000001BLL, 0x800000020D9826B0, v66);
  v12 = v76[0];
  if ((v78[33] & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_45:
  if (v78[35])
  {
    goto LABEL_46;
  }

LABEL_53:
  v69 = [objc_allocWithZone(*(v38 + 2992)) initWithInteger_];
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v76[0] = v12;
  sub_20D8D52B0(v69, 0xD000000000000015, 0x800000020D982670, v70);
  sub_20D7E3B2C(v77);
  v12 = v76[0];
  if ((v78[37] & 1) == 0)
  {
LABEL_54:
    v71 = [objc_allocWithZone(*(v38 + 2992)) initWithInteger_];
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v12;
    sub_20D8D52B0(v71, 0x527974696C697475, 0xEF6E616C50657461, v72);
    return v76[0];
  }

  return v12;
}