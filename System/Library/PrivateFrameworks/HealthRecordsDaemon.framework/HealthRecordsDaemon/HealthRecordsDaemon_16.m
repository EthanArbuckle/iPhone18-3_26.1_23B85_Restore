uint64_t sub_251C0A34C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251C0A3AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251C0A950(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_251C0A41C(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 56;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    a3 = 0;
LABEL_24:
    *v4 = a4;
    v4[1] = v5;
    v4[2] = ~v6;
    v4[3] = v10;
    v4[4] = v8;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v23 = -1 << *(a4 + 32);
    v24 = a3;
    result = 0;
    v10 = 0;
    v11 = (63 - v6) >> 6;
    v12 = 1;
    while (v8)
    {
LABEL_14:
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = a4;
      v17 = (*(a4 + 48) + ((v10 << 11) | (32 * v15)));
      v18 = v17[1];
      v19 = v17[2];
      v20 = v17[3];
      *v9 = *v17;
      v9[1] = v18;
      v9[2] = v19;
      v9[3] = v20;
      if (v12 == v24)
      {

        sub_251A858C4(v19, v20);
        a4 = v16;
        v6 = v23;
        a3 = v24;
        goto LABEL_24;
      }

      v9 += 4;

      sub_251A858C4(v19, v20);
      result = v12;
      v21 = __OFADD__(v12++, 1);
      a4 = v16;
      if (v21)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v14 >= v11)
      {
        break;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v8 = 0;
    if (v11 <= v10 + 1)
    {
      v22 = v10 + 1;
    }

    else
    {
      v22 = v11;
    }

    v10 = v22 - 1;
    a3 = result;
    v6 = v23;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_251C0A5B0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_251C70074();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_251C0A854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C0A8BC(uint64_t a1, uint64_t a2)
{
  sub_251C0A950(0, &qword_27F4793C8, type metadata accessor for PBTypedData, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_251C0A950(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251C0A9B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_251C0AA1C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t DecodingError.hdhr_friendlyDescription.getter()
{
  v1 = sub_251C71704();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v51 - v7;
  v9 = sub_251C71714();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v13, v0, v9);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == *MEMORY[0x277D84160])
  {
    (*(v10 + 96))(v13, v9);
    v15 = *v13;
    sub_251C0CB3C(0, &qword_27F47C398, sub_251C0B2B8, MEMORY[0x277D84190]);
    (*(v2 + 32))(v6, v13 + *(v16 + 48), v1);
    v17 = DecodingError.Context.hdhr_keyPathRepresentation.getter();
    v19 = v18;
    v54[0] = 0x20746F6E5B2ELL;
    v54[1] = 0xE600000000000000;
    v20 = sub_251C71B64();
    MEMORY[0x25308CDA0](v20);

    MEMORY[0x25308CDA0](93, 0xE100000000000000);
    v57 = v17;
    v58 = v19;
    v57 = sub_251C71094();
    v58 = v21;
    sub_251C70FE4();
    (*(v2 + 8))(v6, v1);
    goto LABEL_5;
  }

  if (v14 == *MEMORY[0x277D84170])
  {
    (*(v10 + 96))(v13, v9);
    v22 = *v13;
    sub_251C0CB3C(0, &qword_27F47C398, sub_251C0B2B8, MEMORY[0x277D84190]);
    (*(v2 + 32))(v6, v13 + *(v23 + 48), v1);
    v24 = DecodingError.Context.hdhr_keyPathRepresentation.getter();
    v26 = v25;
    v54[0] = 0;
    v54[1] = 0xE000000000000000;
    sub_251C716A4();

    strcpy(v54, ".[not found; ");
    HIWORD(v54[1]) = -4864;
    v27 = sub_251C71B64();
    MEMORY[0x25308CDA0](v27);

    MEMORY[0x25308CDA0](93, 0xE100000000000000);
    v57 = v24;
    v58 = v26;
    v57 = sub_251C71094();
    v58 = v28;
    sub_251C70FE4();
    (*(v2 + 8))(v6, v1);
    goto LABEL_5;
  }

  if (v14 == *MEMORY[0x277D84158])
  {
    (*(v10 + 96))(v13, v9);
    sub_251C0B518();
    v31 = *(v30 + 48);
    sub_251A7E8D8(v13, v54);
    (*(v2 + 32))(v6, v13 + v31, v1);
    v32 = DecodingError.Context.hdhr_keyPathRepresentation.getter();
    v34 = v33;
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_251C716A4();

    v57 = 46;
    v58 = 0xE100000000000000;
    v35 = v55;
    v36 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v37 = CodingKey.hdhr_keyPathRepresentation.getter(v35, v36);
    MEMORY[0x25308CDA0](v37);

    MEMORY[0x25308CDA0](0x73696D2073695B2ELL, 0xED00005D676E6973);
    v52 = v32;
    v53 = v34;
    v52 = sub_251C71094();
    v53 = v38;
    sub_251C70FE4();
    (*(v2 + 8))(v6, v1);

    v39 = v52;
    __swift_destroy_boxed_opaque_existential_1(v54);
    return v39;
  }

  if (v14 != *MEMORY[0x277D84168])
  {
    v39 = sub_251C71A44();
    (*(v10 + 8))(v13, v9);
    return v39;
  }

  (*(v10 + 96))(v13, v9);
  (*(v2 + 32))(v8, v13, v1);
  v40 = sub_251C716F4();
  v42 = v41;

  if ((v42 & 0x2000000000000000) != 0)
  {
    v43 = HIBYTE(v42) & 0xF;
  }

  else
  {
    v43 = v40 & 0xFFFFFFFFFFFFLL;
  }

  v44 = DecodingError.Context.hdhr_keyPathRepresentation.getter();
  v46 = v44;
  v47 = v45;
  if (!v43)
  {
    v54[0] = 0xD000000000000011;
    v54[1] = 0x8000000251C90B00;
    v57 = v44;
    v58 = v45;
    v57 = sub_251C71094();
    v58 = v50;
    sub_251C70FE4();
    (*(v2 + 8))(v8, v1);
    return v57;
  }

  v54[0] = 23342;
  v54[1] = 0xE200000000000000;
  v48 = sub_251C716F4();
  MEMORY[0x25308CDA0](v48);

  MEMORY[0x25308CDA0](93, 0xE100000000000000);
  v57 = v46;
  v58 = v47;
  v57 = sub_251C71094();
  v58 = v49;
  sub_251C70FE4();
  (*(v2 + 8))(v8, v1);
LABEL_5:

  return v57;
}

unint64_t sub_251C0B2B8()
{
  result = qword_27F47C3A0;
  if (!qword_27F47C3A0)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27F47C3A0);
  }

  return result;
}

uint64_t CodingKey.hdhr_keyPathRepresentation.getter(uint64_t a1, uint64_t a2)
{
  sub_251C71B34();
  if ((v4 & 1) == 0)
  {
    return sub_251C719A4();
  }

  return MEMORY[0x2821FE6F8](a1, a2);
}

uint64_t DecodingError.Context.hdhr_keyPathRepresentation.getter()
{
  v0 = sub_251C716E4();
  v1 = *(v0 + 16);
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_251C0B6AC(0, v1, 0);
    v2 = v17;
    v3 = v0 + 32;
    do
    {
      sub_251A823B4(v3, v14);
      v4 = v15;
      v5 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v6 = CodingKey.hdhr_keyPathRepresentation.getter(v4, v5);
      v8 = v7;
      __swift_destroy_boxed_opaque_existential_1(v14);
      v17 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_251C0B6AC((v9 > 1), v10 + 1, 1);
        v2 = v17;
      }

      *(v2 + 16) = v10 + 1;
      v11 = v2 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v14[0] = v2;
  sub_251C0D400(0, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_251AF3520();
  v12 = sub_251C70EA4();

  return v12;
}

void sub_251C0B518()
{
  if (!qword_27F47C3A8)
  {
    sub_251AA98B0(255, &qword_27F47C3B0);
    sub_251C71704();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47C3A8);
    }
  }
}

size_t sub_251C0B59C(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D334, type metadata accessor for PBCategorySeries.Event);
  *v3 = result;
  return result;
}

size_t sub_251C0B5E4(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CA38, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

size_t sub_251C0B62C(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CA04, type metadata accessor for AccountSummary);
  *v3 = result;
  return result;
}

void *sub_251C0B674(void *a1, int64_t a2, char a3)
{
  result = sub_251C0C7C4(a1, a2, a3, *v3, &qword_27F47C378, &qword_27F4791E8);
  *v3 = result;
  return result;
}

char *sub_251C0B6AC(char *a1, int64_t a2, char a3)
{
  result = sub_251C0BFA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_251C0B6CC(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CE18, type metadata accessor for PBTimeSeries.Value);
  *v3 = result;
  return result;
}

size_t sub_251C0B714(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0C0CC, MEMORY[0x277CC88A8]);
  *v3 = result;
  return result;
}

size_t sub_251C0B75C(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CDB0, sub_251ABCCD4);
  *v3 = result;
  return result;
}

size_t sub_251C0B7A4(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CAA0, MEMORY[0x277CC9578]);
  *v3 = result;
  return result;
}

char *sub_251C0B7EC(char *a1, int64_t a2, char a3)
{
  result = sub_251C0C100(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_251C0B80C(char *a1, int64_t a2, char a3)
{
  result = sub_251C0C21C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_251C0B82C(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D194, type metadata accessor for PBPatientMeta.CHRMeta);
  *v3 = result;
  return result;
}

size_t sub_251C0B874(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D12C, type metadata accessor for PBMedicationTrackingSchedule);
  *v3 = result;
  return result;
}

size_t sub_251C0B8BC(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D160, type metadata accessor for PBHKMedicationScheduleIntervalData);
  *v3 = result;
  return result;
}

size_t sub_251C0B904(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CA6C, type metadata accessor for PBDeleteBlob);
  *v3 = result;
  return result;
}

size_t sub_251C0B94C(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D1FC, type metadata accessor for PBClinicalRecord);
  *v3 = result;
  return result;
}

size_t sub_251C0B994(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D264, type metadata accessor for PBHKCodedValue);
  *v3 = result;
  return result;
}

size_t sub_251C0B9DC(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D298, type metadata accessor for PBHKInspectableValue);
  *v3 = result;
  return result;
}

size_t sub_251C0BA24(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D2CC, type metadata accessor for PBHKReferenceRange);
  *v3 = result;
  return result;
}

char *sub_251C0BA6C(char *a1, int64_t a2, char a3)
{
  result = sub_251C0C340(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_251C0BA8C(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CDE4, type metadata accessor for ClinicalSharingDataNodeInfo);
  *v3 = result;
  return result;
}

size_t sub_251C0BAD4(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CB08, type metadata accessor for PBNode);
  *v3 = result;
  return result;
}

size_t sub_251C0BB1C(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CD7C, type metadata accessor for ClinicalSharingCategoryNodeInfo);
  *v3 = result;
  return result;
}

size_t sub_251C0BB64(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0C480(a1, a2, a3, *v3, &qword_27F47C3F8, &qword_27F479C98, type metadata accessor for PBNode);
  *v3 = result;
  return result;
}

size_t sub_251C0BBA8(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0C480(a1, a2, a3, *v3, &qword_27F47C400, &qword_27F479928, sub_251AE65AC);
  *v3 = result;
  return result;
}

size_t sub_251C0BBEC(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CAD4, type metadata accessor for PBBlob);
  *v3 = result;
  return result;
}

char *sub_251C0BC34(char *a1, int64_t a2, char a3)
{
  result = sub_251C0C6A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_251C0BC54(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D230, type metadata accessor for PBHKConcept);
  *v3 = result;
  return result;
}

size_t sub_251C0BC9C(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D0C4, type metadata accessor for PBHistogramSeries.Value);
  *v3 = result;
  return result;
}

size_t sub_251C0BCE4(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D368, type metadata accessor for PBBucket);
  *v3 = result;
  return result;
}

size_t sub_251C0BD2C(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D300, type metadata accessor for PBMedicationDosage);
  *v3 = result;
  return result;
}

void *sub_251C0BD74(void *a1, int64_t a2, char a3)
{
  result = sub_251C0C7C4(a1, a2, a3, *v3, &qword_27F47C420, &qword_27F4798E0);
  *v3 = result;
  return result;
}

size_t sub_251C0BDAC(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D1C8, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
  *v3 = result;
  return result;
}

size_t sub_251C0BDF4(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0C918, type metadata accessor for PBECGMeasurement);
  *v3 = result;
  return result;
}

char *sub_251C0BE3C(char *a1, int64_t a2, char a3)
{
  result = sub_251C0CC24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_251C0BE5C(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CE4C, type metadata accessor for PBMedicationTracking);
  *v3 = result;
  return result;
}

size_t sub_251C0BEA4(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0CD48, type metadata accessor for PBReference);
  *v3 = result;
  return result;
}

size_t sub_251C0BEEC(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D0F8, type metadata accessor for PBMedicationTrackingDoseEvent);
  *v3 = result;
  return result;
}

size_t sub_251C0BF34(size_t a1, int64_t a2, char a3)
{
  result = sub_251C0CE80(a1, a2, a3, *v3, sub_251C0D05C, sub_251C0D090);
  *v3 = result;
  return result;
}

char *sub_251C0BFA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C0D400(0, &qword_27F4793D0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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

char *sub_251C0C100(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C0D400(0, &qword_27F47C4B0, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
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

char *sub_251C0C21C(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C0D400(0, &qword_27F479720, &type metadata for ClinicalSharingNodeMetadata, MEMORY[0x277D84560]);
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

char *sub_251C0C340(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C0D400(0, &qword_27F47C3E0, &type metadata for ClinicalSharingFHIRSearchEntry, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_251C0C480(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, void (*a7)(uint64_t))
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (!v14)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_251C0CBB8(0, a5, a6, a7);
  sub_251C0CB3C(0, a6, a7, type metadata accessor for ClinicalSharingSyncContext);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v18);
  if (!v16)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v17 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_29;
  }

  v18[2] = v13;
  v18[3] = 2 * ((result - v17) / v16);
LABEL_19:
  sub_251C0CB3C(0, a6, a7, type metadata accessor for ClinicalSharingSyncContext);
  v21 = *(v20 - 8);
  if (v10)
  {
    if (v18 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v18 + v22 >= a4 + v22 + *(v21 + 72) * v13))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v18 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v18;
}

char *sub_251C0C6A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C0D400(0, &qword_27F47C3D0, MEMORY[0x277CC9318], MEMORY[0x277D84560]);
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

void *sub_251C0C7C4(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_251C0C9AC(0, a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[5 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_251AA98B0(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_251C0C9AC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_251AA98B0(255, a3);
    v4 = sub_251C719B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251C0CB3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_251C0CBB8(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_251C0CB3C(255, a3, a4, type metadata accessor for ClinicalSharingSyncContext);
    v5 = sub_251C719B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

char *sub_251C0CC24(char *result, int64_t a2, char a3, char *a4)
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
    sub_251C0D400(0, &qword_27F47A080, &type metadata for HTTPHeader, MEMORY[0x277D84560]);
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

size_t sub_251C0CE80(size_t result, int64_t a2, char a3, void *a4, void (*a5)(void), uint64_t (*a6)(void))
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (!v12)
  {
    v16 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  a5(0);
  v13 = *(a6(0) - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v16);
  if (!v14)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v15 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_29;
  }

  v16[2] = v11;
  v16[3] = 2 * ((result - v15) / v14);
LABEL_19:
  v18 = *(a6(0) - 8);
  if (v8)
  {
    if (v16 < a4 || (v19 = (*(v18 + 80) + 32) & ~*(v18 + 80), v16 + v19 >= a4 + v19 + *(v18 + 72) * v11))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v16 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v16;
}

void sub_251C0D39C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251C0D400(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_251C0D450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  sub_251ABCCD4(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v40 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - v10;
  v12 = sub_251C70014();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v38 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - v17;
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v19 = a3 + *(type metadata accessor for PBDateRange(0) + 28);
  sub_251C703A4();
  sub_251C15994(a1, v11, sub_251ABCCD4);
  v20 = *(v13 + 48);
  v21 = v20(v11, 1, v12);
  v39 = v3;
  if (v21 == 1)
  {
    sub_251C159FC(v11, sub_251ABCCD4);
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    v22 = *(*v3 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v23 = sub_251C6FF94();
    v24 = v13;
    v25 = [v22 stringFromDate_];

    v26 = sub_251C70F14();
    v28 = v27;

    v13 = v24;
    (*(v24 + 8))(v18, v12);
    *a3 = v26;
    *(a3 + 8) = v28;
  }

  v29 = v40;
  sub_251C15994(v41, v40, sub_251ABCCD4);
  if (v20(v29, 1, v12) == 1)
  {
    return sub_251C159FC(v29, sub_251ABCCD4);
  }

  v31 = v38;
  (*(v13 + 32))(v38, v29, v12);
  v32 = *(*v39 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v33 = sub_251C6FF94();
  v34 = [v32 stringFromDate_];

  v35 = sub_251C70F14();
  v37 = v36;

  result = (*(v13 + 8))(v31, v12);
  *(a3 + 16) = v35;
  *(a3 + 24) = v37;
  return result;
}

uint64_t sub_251C0D7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  sub_251ABCCD4(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = sub_251C70014();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v39 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v20 = a3 + *(type metadata accessor for PBDateRange(0) + 28);
  sub_251C703A4();
  sub_251C15994(a1, v12, sub_251ABCCD4);
  v21 = *(v14 + 48);
  v22 = v21(v12, 1, v13);
  v40 = v3;
  if (v22 == 1)
  {
    sub_251C159FC(v12, sub_251ABCCD4);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    v23 = *(*(v3 + *(type metadata accessor for ClinicalSharingCycleTrackingQuery() + 20)) + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v24 = sub_251C6FF94();
    v25 = v14;
    v26 = [v23 stringFromDate_];

    v27 = sub_251C70F14();
    v29 = v28;

    v14 = v25;
    (*(v25 + 8))(v19, v13);
    *a3 = v27;
    *(a3 + 8) = v29;
  }

  sub_251C15994(v41, v10, sub_251ABCCD4);
  if (v21(v10, 1, v13) == 1)
  {
    return sub_251C159FC(v10, sub_251ABCCD4);
  }

  v31 = v39;
  (*(v14 + 32))(v39, v10, v13);
  v32 = *(*(v40 + *(type metadata accessor for ClinicalSharingCycleTrackingQuery() + 20)) + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v33 = sub_251C6FF94();
  v34 = [v32 stringFromDate_];

  v35 = sub_251C70F14();
  v37 = v36;

  result = (*(v14 + 8))(v31, v13);
  *(a3 + 16) = v35;
  *(a3 + 24) = v37;
  return result;
}

uint64_t sub_251C0DBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a2;
  v39 = a3;
  sub_251ABCCD4(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = sub_251C70014();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v37 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - v18;
  *a4 = 0;
  *(a4 + 8) = 0xE000000000000000;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0xE000000000000000;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  v20 = a4 + *(type metadata accessor for PBDateRange(0) + 28);
  sub_251C703A4();
  sub_251C15994(a1, v12, sub_251ABCCD4);
  v21 = *(v14 + 48);
  if (v21(v12, 1, v13) == 1)
  {
    sub_251C159FC(v12, sub_251ABCCD4);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    v22 = *(v39 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v23 = sub_251C6FF94();
    v24 = [v22 stringFromDate_];

    v25 = sub_251C70F14();
    v27 = v26;

    (*(v14 + 8))(v19, v13);
    *a4 = v25;
    *(a4 + 8) = v27;
  }

  sub_251C15994(v38, v10, sub_251ABCCD4);
  if (v21(v10, 1, v13) == 1)
  {
    return sub_251C159FC(v10, sub_251ABCCD4);
  }

  v29 = v37;
  (*(v14 + 32))(v37, v10, v13);
  v30 = *(v39 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v31 = sub_251C6FF94();
  v32 = [v30 stringFromDate_];

  v33 = sub_251C70F14();
  v35 = v34;

  result = (*(v14 + 8))(v29, v13);
  *(a4 + 16) = v33;
  *(a4 + 24) = v35;
  return result;
}

int64_t sub_251C0DF14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v6[-1], v5);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), *v6, v8);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v8, v5), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v10, v9.i64[0]), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v14 < v2)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_251C0DFC8@<X0>(unint64_t a1@<X8>)
{
  v74 = a1;
  sub_251C15A90(0, &qword_27F4795A8, sub_251ABCCD4, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v98 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v96 = &v72 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v92 = &v72 - v9;
  MEMORY[0x28223BE20](v8);
  v87 = (&v72 - v10);
  sub_251ABCCD4(0);
  v12 = *(v11 - 8);
  v94 = v11;
  v95 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v72 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v72 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v77 = &v72 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v91 = &v72 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v72 - v28;
  MEMORY[0x28223BE20](v27);
  v75 = &v72 - v30;
  v31 = sub_251C70014();
  v79 = *(v31 - 8);
  v32 = *(v79 + 8);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v72 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v72 - v36;
  v39 = *v1;
  v38 = *(v1 + 8);
  v40 = *(v1 + 16);
  v99 = *(v1 + 24);
  v100 = v38;
  v101 = *(v1 + 32);
  v102 = v40;
  v104 = v39;
  v73 = v39 >> 62;
  if (v39 >> 62)
  {
    goto LABEL_52;
  }

  v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v42 = *(v1 + 40);
  v1 = *(v1 + 48);
  v76 = v42;
  sub_251C15AF4(&v104, &v103);

  v78 = v1;

  v90 = v31;
  v97 = v22;
  v93 = v37;
  v84 = v35;
  if (v41)
  {
    v31 = 0;
    v88 = v39 & 0xFFFFFFFFFFFFFF8;
    v89 = v39 & 0xC000000000000001;
    while (1)
    {
      if (v89)
      {
        v43 = MEMORY[0x25308D460](v31, v39);
      }

      else
      {
        if (v31 >= *(v88 + 16))
        {
          goto LABEL_51;
        }

        v43 = *(v39 + 8 * v31 + 32);
      }

      v22 = v43;
      v35 = (v31 + 1);
      if (__OFADD__(v31, 1))
      {
        goto LABEL_50;
      }

      v103 = v43;
      v37 = v29;
      v44 = v91;
      v100(&v103);

      v45 = v44;
      v29 = v37;
      sub_251C149B4(v45, v37, sub_251ABCCD4);
      v1 = v101;
      if (v99(v37))
      {
        break;
      }

      sub_251C159FC(v37, sub_251ABCCD4);
      ++v31;
      v46 = v35 == v41;
      v35 = v92;
      if (v46)
      {
        v47 = 1;
        v31 = v90;
        goto LABEL_17;
      }
    }

    sub_251C149B4(v37, v87, sub_251ABCCD4);
    v47 = 0;
    v41 = v31 + 1;
    v31 = v90;
  }

  else
  {
    v47 = 1;
  }

  v35 = v92;
LABEL_17:
  v48 = v94;
  v49 = v95;
  v1 = 1;
  v50 = v87;
  v88 = *(v95 + 56);
  v89 = v95 + 56;
  (v88)(v87, v47, 1, v94);
  sub_251AC1050(v50, v35);
  v51 = *(v49 + 48);
  v95 = v49 + 48;
  v87 = v51;
  v46 = (v51)(v35, 1, v48) == 1;
  v52 = v35;
  v53 = v75;
  if (!v46)
  {
    v54 = v77;
    sub_251C149B4(v52, v77, sub_251ABCCD4);
    v76(v54);
    sub_251C159FC(v54, sub_251ABCCD4);
    v1 = 0;
  }

  v22 = v79;
  v91 = *(v79 + 7);
  v92 = v79 + 56;
  (v91)(v53, v1, 1, v31);
  v85 = *(v22 + 6);
  v86 = v22 + 48;
  if (v85(v53, 1, v31) == 1)
  {
    sub_251C15B70(&v104);

    sub_251C159FC(v53, sub_251ABCCD4);
    v55 = 1;
    v56 = v74;
  }

  else
  {
    v57 = *(v22 + 4);
    v83 = v22 + 32;
    v82 = v57;
    v57(v93, v53, v31);
    v37 = (v39 & 0xFFFFFFFFFFFFFF8);
    if (v73)
    {
      v29 = sub_251C717F4();
    }

    else
    {
      v29 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v35 = (v39 & 0xC000000000000001);
    v79 = v22 + 8;
    v81 = v16;
    v80 = v39;
    while (1)
    {
      if (v41 != v29)
      {
        do
        {
          if (v35)
          {
            v59 = MEMORY[0x25308D460](v41, v39);
          }

          else
          {
            if ((v41 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              v41 = sub_251C717F4();
              goto LABEL_3;
            }

            if (v41 >= *(v37 + 2))
            {
              goto LABEL_49;
            }

            v59 = *(v39 + 8 * v41 + 32);
          }

          v22 = v59;
          v31 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_48;
          }

          v103 = v59;
          v100(&v103);

          sub_251C149B4(v16, v19, sub_251ABCCD4);
          v1 = v101;
          if (v99(v19))
          {
            sub_251C149B4(v19, v96, sub_251ABCCD4);
            v58 = 0;
            ++v41;
            goto LABEL_40;
          }

          sub_251C159FC(v19, sub_251ABCCD4);
          ++v41;
        }

        while (v31 != v29);
      }

      v58 = 1;
      v41 = v29;
LABEL_40:
      v60 = 1;
      v61 = v96;
      v62 = v94;
      (v88)(v96, v58, 1, v94);
      v63 = v61;
      v64 = v98;
      sub_251AC1050(v63, v98);
      if ((v87)(v64, 1, v62) != 1)
      {
        v65 = v77;
        sub_251C149B4(v98, v77, sub_251ABCCD4);
        v76(v65);
        sub_251C159FC(v65, sub_251ABCCD4);
        v60 = 0;
      }

      v66 = v97;
      v67 = v60;
      v1 = v90;
      (v91)(v97, v67, 1, v90);
      if (v85(v66, 1, v1) == 1)
      {
        break;
      }

      v22 = v84;
      v68 = v82;
      v82(v84, v66, v1);
      sub_251C15454(&qword_27F4795A0, MEMORY[0x277CC9578]);
      v31 = v93;
      v69 = sub_251C70EB4();
      v70 = *v79;
      if (v69)
      {
        v70(v31, v1);
        v68(v31, v22, v1);
      }

      else
      {
        v70(v22, v1);
      }

      v39 = v80;
      v16 = v81;
    }

    sub_251C15B70(&v104);

    sub_251C159FC(v66, sub_251ABCCD4);
    v56 = v74;
    v82(v74, v93, v1);
    v55 = 0;
    v31 = v1;
  }

  return (v91)(v56, v55, 1, v31);
}

uint64_t sub_251C0EA30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_251C70014();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_251C15454(&qword_27F4795A0, MEMORY[0x277CC9578]);
        v21 = sub_251C70EB4();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

void *sub_251C0ECE0(void (*a1)(void **), uint64_t a2, unint64_t a3)
{
  v31 = a1;
  sub_251C14A1C(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for PBCategorySeries.Event(0);
  v26 = *(v30 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v25 = &v25 - v11;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v13 = 0;
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v28 = a3 & 0xC000000000000001;
    v14 = (v26 + 48);
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v28)
      {
        v16 = MEMORY[0x25308D460](v13, a3);
      }

      else
      {
        if (v13 >= *(v27 + 16))
        {
          goto LABEL_18;
        }

        v16 = *(a3 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v19 = a3;
      v20 = MEMORY[0x25308DB30]();
      v32 = v17;
      v31(&v32);
      objc_autoreleasePoolPop(v20);

      if ((*v14)(v7, 1, v30) == 1)
      {
        sub_251C159FC(v7, sub_251C14A1C);
      }

      else
      {
        v21 = v25;
        sub_251C149B4(v7, v25, type metadata accessor for PBCategorySeries.Event);
        sub_251C149B4(v21, v29, type metadata accessor for PBCategorySeries.Event);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_251C39894(0, v15[2] + 1, 1, v15);
        }

        v23 = v15[2];
        v22 = v15[3];
        if (v23 >= v22 >> 1)
        {
          v15 = sub_251C39894(v22 > 1, v23 + 1, 1, v15);
        }

        v15[2] = v23 + 1;
        sub_251C149B4(v29, v15 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, type metadata accessor for PBCategorySeries.Event);
      }

      a3 = v19;
      ++v13;
      if (v18 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_251C0F00C(void (*a1)(void **), uint64_t a2, unint64_t a3)
{
  v31 = a1;
  sub_251C15960(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for PBCycleTracking.Event(0);
  v26 = *(v30 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v25 = &v25 - v11;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v13 = 0;
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v28 = a3 & 0xC000000000000001;
    v14 = (v26 + 48);
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v28)
      {
        v16 = MEMORY[0x25308D460](v13, a3);
      }

      else
      {
        if (v13 >= *(v27 + 16))
        {
          goto LABEL_18;
        }

        v16 = *(a3 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v19 = a3;
      v20 = MEMORY[0x25308DB30]();
      v32 = v17;
      v31(&v32);
      objc_autoreleasePoolPop(v20);

      if ((*v14)(v7, 1, v30) == 1)
      {
        sub_251C159FC(v7, sub_251C15960);
      }

      else
      {
        v21 = v25;
        sub_251C149B4(v7, v25, type metadata accessor for PBCycleTracking.Event);
        sub_251C149B4(v21, v29, type metadata accessor for PBCycleTracking.Event);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_251C398C8(0, v15[2] + 1, 1, v15);
        }

        v23 = v15[2];
        v22 = v15[3];
        if (v23 >= v22 >> 1)
        {
          v15 = sub_251C398C8(v22 > 1, v23 + 1, 1, v15);
        }

        v15[2] = v23 + 1;
        sub_251C149B4(v29, v15 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, type metadata accessor for PBCycleTracking.Event);
      }

      a3 = v19;
      ++v13;
      if (v18 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_251C0F338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v48 = a2;
  v43 = a4;
  v6 = sub_251C701E4();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251C6FAE4();
  v40 = v9;
  v45 = *(v9 - 8);
  v10 = v45;
  v11 = *(v45 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v44 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  v41 = &v39 - v14;
  v16 = sub_251C70074();
  v46 = *(v16 - 8);
  v17 = v46;
  v18 = *(v46 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v17 + 16);
  v42 = v16;
  v39(v20, a1, v16);
  v21 = *(v10 + 16);
  v21(v15, a3, v9);
  v22 = type metadata accessor for ClinicalSharingCycleTrackingQuery();
  v23 = v22[10];
  v24 = [objc_opt_self() hk_gregorianCalendarWithUTCTimeZone];
  v25 = v43;
  sub_251C70124();

  v39(v25, v20, v16);
  v26 = v48;
  *&v25[v22[5]] = v48;
  v27 = &v25[v22[6]];
  v28 = v25;
  v29 = v40;
  v30 = v41;
  v21(v27, v41, v40);
  v31 = v44;
  v21(v44, v30, v29);
  v32 = v47;
  (*(v49 + 16))(v47, v26 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v50);

  v33 = sub_251C560A4(v31, v32);
  v34 = &v28[v22[7]];
  *v34 = v33;
  v34[1] = v35;
  v36 = *(v26 + 56);
  *&v28[v22[8]] = sub_251C13D5C(v36, v20);
  v37 = sub_251C24D54(v36, v20);
  (*(v45 + 8))(v30, v29);
  (*(v46 + 8))(v20, v42);
  *&v28[v22[9]] = v37;
  return (*(*(v22 - 1) + 56))(v28, 0, 1, v22);
}

uint64_t type metadata accessor for ClinicalSharingCycleTrackingQuery()
{
  result = qword_27F47C4B8;
  if (!qword_27F47C4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251C0F754()
{
  v1 = v0;
  sub_251C15134(0, &qword_27F479AD0, type metadata accessor for ClinicalSharingQueryOutput, MEMORY[0x277CBCE88]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = v53 - v6;
  sub_251C1435C();
  v65 = v8;
  v73 = *(v8 - 8);
  v9 = *(v73 + 64);
  MEMORY[0x28223BE20](v8);
  v69 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C1474C();
  v12 = v11;
  v68 = *(v11 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x28223BE20](v11);
  v71 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C1463C();
  v72 = v15;
  v70 = *(v15 - 8);
  v16 = *(v70 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v67 = v53 - v20;
  v21 = type metadata accessor for ClinicalSharingCycleTrackingQuery();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v24;
  v26 = v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C14448();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v30 = MEMORY[0x28223BE20](v29);
  if ((*(v1 + *(v21 + 32)) & 2) != 0)
  {
    v35 = *(v1 + *(v21 + 20));
    v59 = v1;
    v57 = v30;
    v60 = v53 - v31;
    v66 = v32;
    v56 = v33;
    sub_251A823B4(v35 + 16, v75);
    __swift_project_boxed_opaque_existential_1(v75, v75[3]);
    v54 = off_2863FD730();
    v74 = v54;
    v64 = type metadata accessor for ClinicalSharingCycleTrackingQuery;
    sub_251C15994(v1, v26, type metadata accessor for ClinicalSharingCycleTrackingQuery);
    v36 = *(v22 + 80);
    v62 = v25;
    v63 = v36;
    v37 = (v36 + 16) & ~v36;
    v38 = swift_allocObject();
    v61 = type metadata accessor for ClinicalSharingCycleTrackingQuery;
    sub_251C149B4(v26, v38 + v37, type metadata accessor for ClinicalSharingCycleTrackingQuery);
    v53[1] = sub_251C70964();
    sub_251C14534();
    v58 = v12;
    v53[2] = type metadata accessor for PBTypedData(0);
    sub_251C15134(0, &qword_27F47C4F8, type metadata accessor for PBTypedData, MEMORY[0x277CBCD88]);
    sub_251C15454(&qword_27F47C518, sub_251C14534);
    sub_251C145B4();
    v55 = v19;
    v39 = v60;
    sub_251C70B94();

    __swift_destroy_boxed_opaque_existential_1(v75);
    v40 = v59;
    v75[0] = sub_251C106F0();
    sub_251C15994(v40, v26, v64);
    v41 = swift_allocObject();
    sub_251C149B4(v26, v41 + v37, v61);
    v42 = MEMORY[0x277CBCD88];
    sub_251C14A84(0, &qword_27F478D60, MEMORY[0x277CBCD88]);
    sub_251C14708(&qword_27F478D78, &qword_27F478D60, v42);
    v43 = v67;
    sub_251C70AA4();

    v44 = v57;
    (*(v66 + 16))(v56, v39, v57);
    v45 = v70;
    v46 = v72;
    (*(v70 + 16))(v55, v43, v72);
    sub_251C15454(&qword_27F47C520, sub_251C14448);
    sub_251C15454(&qword_27F47C528, sub_251C1463C);
    v47 = v69;
    sub_251C70884();
    sub_251C15994(v59, v26, v64);
    v48 = swift_allocObject();
    sub_251C149B4(v26, v48 + v37, v61);
    type metadata accessor for ClinicalSharingQueryOutput(0);
    sub_251C15454(&qword_27F47C538, sub_251C1435C);
    v49 = v71;
    v50 = v65;
    sub_251C70AE4();

    (*(v73 + 8))(v47, v50);
    sub_251C15454(&qword_27F47C540, sub_251C1474C);
    v51 = v58;
    v34 = sub_251C70A94();
    (*(v68 + 8))(v49, v51);
    (*(v45 + 8))(v43, v46);
    (*(v66 + 8))(v60, v44);
  }

  else
  {
    type metadata accessor for ClinicalSharingQueryOutput(0);
    sub_251A82284();
    sub_251C70A34();
    sub_251C147F8();
    v34 = sub_251C70A94();
    (*(v4 + 8))(v7, v3);
  }

  return v34;
}

uint64_t sub_251C10098(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ClinicalSharingCycleTrackingQuery();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C14B14();
  v9 = *(v8 - 8);
  v44 = v8;
  v45 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C14C1C();
  v46 = *(v13 - 8);
  v47 = v13;
  v14 = *(v46 + 64);
  MEMORY[0x28223BE20](v13);
  v43 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C14E4C();
  v52 = v16;
  v50 = *(v16 - 8);
  v17 = *(v50 + 64);
  MEMORY[0x28223BE20](v16);
  v48 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C14EE0();
  v53 = v19;
  v51 = *(v19 - 8);
  v20 = *(v51 + 64);
  MEMORY[0x28223BE20](v19);
  v49 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  v22 = [a1 cycles];
  if (v22)
  {
    v23 = v22;
    sub_251A8223C(0, &qword_27F47C570, 0x277D11978);
    v24 = sub_251C71154();
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v55 = v24;
  sub_251AA8E98(0, &qword_27F47C568, &qword_27F47C570, 0x277D11978);
  sub_251C14BAC();
  sub_251C710D4();

  v42 = type metadata accessor for ClinicalSharingCycleTrackingQuery;
  sub_251C15994(v2, &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClinicalSharingCycleTrackingQuery);
  v41 = v2;
  v25 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v26 = v25 + v6;
  v27 = swift_allocObject();
  v40 = type metadata accessor for ClinicalSharingCycleTrackingQuery;
  sub_251C149B4(&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v25, type metadata accessor for ClinicalSharingCycleTrackingQuery);
  sub_251C70964();
  sub_251C15134(0, &qword_27F47C588, type metadata accessor for PBCycleTracking.Cycle, MEMORY[0x277CBCD88]);
  sub_251C15454(&qword_27F47C598, sub_251C14B14);
  sub_251C14DC4();
  v28 = v43;
  v29 = v44;
  sub_251C70BD4();

  (*(v45 + 8))(v12, v29);
  sub_251C15454(&qword_27F47C5B8, sub_251C14C1C);
  v31 = v47;
  v30 = v48;
  sub_251C70B64();
  (*(v46 + 8))(v28, v31);
  sub_251C15994(v41, v7, v42);
  v32 = swift_allocObject();
  sub_251C149B4(v7, v32 + v25, v40);
  v33 = v54;
  *(v32 + ((v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v54;
  type metadata accessor for PBTypedData(0);
  sub_251C15454(&qword_27F47C5C8, sub_251C14E4C);
  v34 = v33;
  v35 = v49;
  v36 = v52;
  sub_251C70AA4();

  (*(v50 + 8))(v30, v36);
  sub_251C15454(&qword_27F47C5D0, sub_251C14EE0);
  v37 = v53;
  v38 = sub_251C70A94();
  (*(v51 + 8))(v35, v37);
  return v38;
}

uint64_t sub_251C106F0()
{
  sub_251C14A84(0, &qword_27F47C550, MEMORY[0x277CBCE88]);
  v38 = v1;
  v37 = *(v1 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x28223BE20](v1);
  v36 = &v35 - v3;
  v4 = sub_251C702E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251A82418();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251C86490;
  sub_251A8223C(0, &qword_27F479E00, 0x277CCD0C0);
  *(inited + 32) = MEMORY[0x25308D1B0](*MEMORY[0x277CCB938]);
  v40 = inited + 32;
  *(inited + 40) = MEMORY[0x25308D1B0](*MEMORY[0x277CCB9F0]);
  *(inited + 48) = MEMORY[0x25308D1B0](*MEMORY[0x277CCBA68]);
  v39 = *(v0 + *(type metadata accessor for ClinicalSharingCycleTrackingQuery() + 20));
  v10 = *(v39 + 56);
  v46[0] = MEMORY[0x277D84F90];
  v43 = inited & 0xC000000000000001;
  v44 = inited;
  v41 = inited & 0xFFFFFFFFFFFFFF8;
  v42 = *MEMORY[0x277D112F0];
  v11 = (v5 + 104);
  v12 = (v5 + 8);
  v45 = v10;

  v13 = 0;
  v14 = 0;
  do
  {
    if (v43)
    {
      v15 = MEMORY[0x25308D460](v13, v44);
    }

    else
    {
      if (v13 >= *(v41 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v15 = *(v44 + 8 * v13 + 32);
    }

    v16 = v15;
    *v8 = v15;
    v17 = (*v11)(v8, v42, v4);
    MEMORY[0x28223BE20](v17);
    *(&v35 - 2) = v8;
    v18 = v16;
    v19 = *(sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, (&v35 - 4), v45) + 16);

    (*v12)(v8, v4);
    if (v19)
    {
      sub_251C71734();
      v20 = *(v46[0] + 16);
      sub_251C71774();
      sub_251C71784();
      sub_251C71744();
    }

    else
    {
    }

    ++v13;
  }

  while (v13 != 3);

  v21 = v44;
  swift_setDeallocating();
  v22 = *(v21 + 16);
  swift_arrayDestroy();
  v14 = v46[0];
  if ((v46[0] & 0x8000000000000000) == 0 && (v46[0] & 0x4000000000000000) == 0)
  {
    v23 = *(v46[0] + 16);
    if (v23)
    {
      v46[0] = MEMORY[0x277D84F90];
      sub_251C71764();
LABEL_14:
      v24 = objc_opt_self();
      v25 = 0;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x25308D460](v25, v14);
        }

        else
        {
          v26 = *(v14 + 8 * v25 + 32);
        }

        v27 = v26;
        ++v25;
        v28 = [v24 queryDescriptorWithSampleType_];

        sub_251C71734();
        v29 = *(v46[0] + 16);
        sub_251C71774();
        sub_251C71784();
        sub_251C71744();
      }

      while (v23 != v25);
LABEL_19:

      sub_251BFC460(0x61662D656C637963, 0xED000073726F7463, 0, 5, 1);
      sub_251A823B4(v39 + 16, v46);
      __swift_project_boxed_opaque_existential_1(v46, v46[3]);
      v30 = off_2863FD750();

      __swift_destroy_boxed_opaque_existential_1(v46);
      return v30;
    }

    goto LABEL_25;
  }

LABEL_21:
  if (sub_251C717F4())
  {
    v31 = sub_251C717F4();
    if (!v31)
    {
      goto LABEL_19;
    }

    v23 = v31;
    v46[0] = MEMORY[0x277D84F90];
    sub_251C71764();
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

LABEL_25:

  sub_251AA8E98(0, &qword_27F478D68, &qword_27F478D70, 0x277CCD8A8);
  sub_251A82284();
  v32 = v36;
  sub_251C70A34();
  sub_251C14708(&qword_27F47C558, &qword_27F47C550, MEMORY[0x277CBCE88]);
  v33 = v38;
  v30 = sub_251C70A94();
  (*(v37 + 8))(v32, v33);
  return v30;
}

size_t sub_251C10D2C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v102 = a2;
  v103 = a1;
  sub_251AD5C6C(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v95 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PBDateRange(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v96 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBTypedData(0);
  v101 = *(v11 - 8);
  v12 = *(v101 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_251C6FAE4();
  v93 = *(v15 - 8);
  v94 = v15;
  v16 = *(v93 + 64);
  MEMORY[0x28223BE20](v15);
  v92 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ABCCD4(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v100 = (&v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = sub_251C70014();
  v21 = *(v107 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v107);
  v89 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v90 = &v86 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v88 = &v86 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v104 = &v86 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v86 - v32;
  MEMORY[0x28223BE20](v31);
  v106 = &v86 - v34;
  v35 = type metadata accessor for PBCategorySeries(0);
  v36 = v35 - 8;
  v37 = *(*(v35 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v91 = &v86 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = (&v86 - v40);
  *v41 = 0;
  v41[1] = 0xE000000000000000;
  v42 = &v86 + *(v36 + 32) - v40;
  sub_251C703A4();
  v44 = *(v8 + 56);
  v43 = v8 + 56;
  v45 = v41 + *(v36 + 36);
  v105 = v44;
  v44(v45, 1, 1, v7);
  v46 = v3;
  v109 = v3;
  v47 = v103;
  v48 = sub_251C0ECE0(sub_251C1498C, v108, v103);
  v41[2] = v48;
  if (!v48[2])
  {
    sub_251C159FC(v41, type metadata accessor for PBCategorySeries);
    return (*(v101 + 56))(v102, 1, 1, v11);
  }

  v97 = v43;
  v98 = v7;
  v87 = v14;
  v99 = v11;
  v86 = v41;
  v49 = v47;
  if (v47 >> 62)
  {
    v50 = sub_251C717F4();
  }

  else
  {
    v50 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = v106;
  v51 = v107;
  v53 = MEMORY[0x277D84F90];
  v103 = v46;
  if (v50)
  {
    v110 = MEMORY[0x277D84F90];
    result = sub_251C0B7A4(0, v50 & ~(v50 >> 63), 0);
    if (v50 < 0)
    {
      __break(1u);
      return result;
    }

    v55 = 0;
    v53 = v110;
    do
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v56 = MEMORY[0x25308D460](v55, v49);
      }

      else
      {
        v56 = *(v49 + 8 * v55 + 32);
      }

      v57 = v56;
      v58 = [v57 startDate];
      sub_251C6FFE4();

      v110 = v53;
      v60 = *(v53 + 16);
      v59 = *(v53 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_251C0B7A4(v59 > 1, v60 + 1, 1);
        v53 = v110;
      }

      ++v55;
      *(v53 + 16) = v60 + 1;
      v61 = v53 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v60;
      v51 = v107;
      (*(v21 + 32))(v61, v33, v107);
    }

    while (v50 != v55);
    v62 = v103;
    v52 = v106;
  }

  else
  {
    v62 = v46;
  }

  v63 = v100;
  sub_251C0EA30(v53, v100);

  v64 = *(v21 + 48);
  v65 = v64(v63, 1, v51);
  v66 = v87;
  v67 = v88;
  if (v65 == 1)
  {
    v68 = v62 + *(type metadata accessor for ClinicalSharingCycleTrackingQuery() + 24);
    sub_251C6FAB4();
    v69 = v100;
    if (v64(v100, 1, v51) != 1)
    {
      sub_251C159FC(v69, sub_251ABCCD4);
    }
  }

  else
  {
    (*(v21 + 32))(v52, v63, v51);
  }

  v70 = *(type metadata accessor for ClinicalSharingCycleTrackingQuery() + 24);
  sub_251C6FA84();
  sub_251C15454(&qword_27F4795A0, MEMORY[0x277CC9578]);
  if (sub_251C70EB4())
  {
    (*(v21 + 32))(v104, v67, v51);
  }

  else
  {
    (*(v21 + 8))(v67, v51);
    (*(v21 + 16))(v104, v52, v51);
  }

  v71 = v89;
  sub_251C6FA84();
  if (sub_251C70EC4())
  {
    (*(v21 + 32))(v90, v71, v51);
  }

  else
  {
    (*(v21 + 8))(v71, v51);
    (*(v21 + 16))(v90, v52, v51);
  }

  v72 = v99;
  v73 = v92;
  sub_251C6FA94();
  v74 = v72[5];
  v90 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v75 = *(v90 - 1);
  v100 = *(v75 + 56);
  v104 = (v75 + 56);
  (v100)(v66 + v74, 1, 1, v90);
  v76 = v66 + v72[6];
  sub_251C703A4();
  v77 = v72[7];
  v105(v66 + v77, 1, 1, v98);
  *v66 = 116;
  *(v66 + 8) = 1;
  v79 = v93;
  v78 = v94;
  v80 = v95;
  (*(v93 + 16))(v95, v73, v94);
  (*(v79 + 56))(v80, 0, 1, v78);
  v81 = v96;
  sub_251BF0A40(5, 1, v80, v96);
  sub_251C159FC(v80, sub_251AD5C6C);
  (*(v79 + 8))(v73, v78);
  (*(v21 + 8))(v106, v107);
  sub_251C159FC(v66 + v77, sub_251AC0EAC);
  sub_251C149B4(v81, v66 + v77, type metadata accessor for PBDateRange);
  v105(v66 + v77, 0, 1, v98);
  v82 = v86;
  v83 = v91;
  sub_251C15994(v86, v91, type metadata accessor for PBCategorySeries);
  sub_251C159FC(v66 + v74, sub_251ABCD08);
  sub_251C149B4(v83, v66 + v74, type metadata accessor for PBCategorySeries);
  v84 = v90;
  swift_storeEnumTagMultiPayload();
  (v100)(v66 + v74, 0, 1, v84);
  sub_251C159FC(v82, type metadata accessor for PBCategorySeries);
  v85 = v102;
  sub_251C149B4(v66, v102, type metadata accessor for PBTypedData);
  return (*(v101 + 56))(v85, 0, 1, v99);
}

uint64_t sub_251C1182C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_251C15994(a1, a3, type metadata accessor for PBTypedData);
  sub_251C15A90(0, &qword_27F479238, MEMORY[0x277CC95F0], MEMORY[0x277D84560]);
  v5 = sub_251C70074();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_251C74800;
  (*(v6 + 16))(v9 + v8, a2, v5);
  v10 = sub_251BFAE40(v9);
  swift_setDeallocating();
  (*(v6 + 8))(v9 + v8, v5);
  swift_deallocClassInstance();
  result = type metadata accessor for ClinicalSharingQueryOutput(0);
  *(a3 + *(result + 20)) = v10;
  v12 = (a3 + *(result + 24));
  *v12 = 0;
  v12[1] = 0;
  return result;
}

void sub_251C119B0(void *a1)
{
  v2 = v1;
  sub_251C15134(0, &qword_27F47C5D8, type metadata accessor for PBCycleTracking.Cycle, MEMORY[0x277CBCE88]);
  v5 = v4;
  v61 = *(v4 - 8);
  v6 = v61[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v49 - v7;
  v9 = type metadata accessor for ClinicalSharingCycleTrackingQuery();
  v51 = *(v9 - 8);
  v10 = *(v51 + 8);
  MEMORY[0x28223BE20](v9);
  sub_251C151B0();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v52 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C15314();
  v59 = v14;
  v57 = *(v14 - 8);
  v15 = *(v57 + 64);
  MEMORY[0x28223BE20](v14);
  v55 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C153A8();
  v60 = v17;
  v58 = *(v17 - 8);
  v18 = *(v58 + 64);
  MEMORY[0x28223BE20](v17);
  v56 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 menstruationSegment];
  v21 = [v20 days];

  v22 = [a1 lastDayIndex];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 integerValue];

    v25 = (v2 + *(v9 + 28));
    v26 = *v25;
    v27 = v25[1];
    v32 = __OFADD__(v26, v27);
    v28 = v26 + v27;
    v29 = v32;
    goto LABEL_10;
  }

  v30 = (v2 + *(v9 + 28));
  v26 = *v30;
  v31 = v30[1];
  v32 = __OFADD__(v26, v31);
  v28 = v26 + v31;
  v29 = v32;
  if (v32)
  {
    goto LABEL_24;
  }

  v24 = (v28 - 1);
  if (!__OFSUB__(v28, 1))
  {
LABEL_10:
    if (v29)
    {
      __break(1u);
    }

    else
    {
      v32 = __OFSUB__(v28, 1);
      v33 = v28 - 1;
      if (!v32)
      {
        if (v21 >= v33 || v24 < v26)
        {
          type metadata accessor for PBCycleTracking.Cycle(0);
          sub_251A82284();
          sub_251C70A34();
          sub_251C1549C();
          sub_251C70A94();
          (v61[1])(v8, v5);
          return;
        }

        v34 = v24 - v21;
        if (v24 >= v21)
        {
          if (!__OFSUB__(v24, v21))
          {
            v35 = v34 + 1;
            if (!__OFADD__(v34, 1))
            {
              sub_251A823B4(*(v2 + *(v9 + 20)) + 16, v63);
              __swift_project_boxed_opaque_existential_1(v63, v63[3]);
              v50 = v2;
              v62 = (off_2863FD738[0])(v21, v35);
              v49 = type metadata accessor for ClinicalSharingCycleTrackingQuery;
              v36 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_251C15994(v2, v36, type metadata accessor for ClinicalSharingCycleTrackingQuery);
              v61 = a1;
              v37 = (*(v51 + 80) + 16) & ~*(v51 + 80);
              v38 = swift_allocObject();
              v51 = type metadata accessor for ClinicalSharingCycleTrackingQuery;
              sub_251C149B4(v36, v38 + v37, type metadata accessor for ClinicalSharingCycleTrackingQuery);
              sub_251C1528C();
              sub_251C15A90(0, &qword_2813E1F10, type metadata accessor for PBCycleTracking.Event, MEMORY[0x277D83940]);
              sub_251C15454(&qword_27F47C5F8, sub_251C1528C);
              v39 = v52;
              sub_251C70AE4();

              __swift_destroy_boxed_opaque_existential_1(v63);
              v63[0] = MEMORY[0x277D84F90];
              sub_251C15454(&qword_27F47C608, sub_251C151B0);
              v40 = v54;
              v41 = v55;
              sub_251C70AD4();
              (*(v53 + 8))(v39, v40);
              sub_251C15994(v50, v36, v49);
              v42 = (v37 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
              v43 = swift_allocObject();
              sub_251C149B4(v36, v43 + v37, v51);
              v44 = v61;
              *(v43 + v42) = v61;
              type metadata accessor for PBCycleTracking.Cycle(0);
              sub_251C15454(&qword_27F47C618, sub_251C15314);
              v45 = v44;
              v46 = v56;
              v47 = v59;
              sub_251C70AA4();

              (*(v57 + 8))(v41, v47);
              sub_251C15454(&qword_27F47C628, sub_251C153A8);
              v48 = v60;
              sub_251C70A94();
              (*(v58 + 8))(v46, v48);
              return;
            }

            goto LABEL_23;
          }

LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_251C1213C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  sub_251AD5C6C(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBDateRange(0);
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = *(v52 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for PBTypedData(0);
  v54 = *(v56 - 8);
  v15 = *(v54 + 64);
  MEMORY[0x28223BE20](v56);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C150CC(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PBCycleTracking(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v51 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v45 - v27;
  v29 = *a1;
  v30 = [a3 statistics];
  sub_251C12698(v30, v29, v21);

  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_251C159FC(v21, sub_251C150CC);
    v31 = 1;
  }

  else
  {
    v46 = v28;
    v47 = type metadata accessor for PBCycleTracking;
    sub_251C149B4(v21, v28, type metadata accessor for PBCycleTracking);
    v32 = v56;
    v33 = *(v56 + 20);
    v48 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    v34 = *(v48 - 8);
    v49 = *(v34 + 56);
    v50 = v34 + 56;
    v49(&v17[v33], 1, 1, v48);
    v35 = &v17[*(v32 + 24)];
    sub_251C703A4();
    v36 = *(v32 + 28);
    v52 = *(v52 + 56);
    (v52)(&v17[v36], 1, 1, v53);
    *v17 = 109;
    v17[8] = 1;
    v37 = *(type metadata accessor for ClinicalSharingCycleTrackingQuery() + 24);
    v38 = sub_251C6FAE4();
    v39 = *(v38 - 8);
    (*(v39 + 16))(v10, a2 + v37, v38);
    (*(v39 + 56))(v10, 0, 1, v38);
    v40 = v55;
    sub_251BF0A40(5, 1, v10, v14);
    sub_251C159FC(v10, sub_251AD5C6C);
    sub_251C159FC(&v17[v36], sub_251AC0EAC);
    sub_251C149B4(v14, &v17[v36], type metadata accessor for PBDateRange);
    (v52)(&v17[v36], 0, 1, v53);
    v41 = v47;
    v42 = v51;
    sub_251C149B4(v46, v51, v47);
    sub_251C159FC(&v17[v33], sub_251ABCD08);
    sub_251C149B4(v42, &v17[v33], v41);
    v43 = v48;
    swift_storeEnumTagMultiPayload();
    v49(&v17[v33], 0, 1, v43);
    sub_251C149B4(v17, v40, type metadata accessor for PBTypedData);
    v31 = 0;
  }

  return (*(v54 + 56))(v55, v31, 1, v56);
}

uint64_t sub_251C12698@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a2;
  v75 = a3;
  sub_251C15100(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v70 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v63 - v8;
  v10 = type metadata accessor for PBCycleTracking.Range(0);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v66 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v76 = &v63 - v16;
  MEMORY[0x28223BE20](v15);
  v64 = &v63 - v17;
  v18 = type metadata accessor for PBCycleTracking(0);
  v72 = *(v18 - 8);
  v19 = *(v72 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v63 - v24;
  *v25 = MEMORY[0x277D84F90];
  *(&v63 - v24 + 8) = 0;
  v67 = (&v63 - v24 + 8);
  *(v25 + 2) = 0;
  *(v25 + 3) = 0xE000000000000000;
  v26 = &v63 + *(v23 + 32) - v24;
  sub_251C703A4();
  v27 = *(v18 + 36);
  v28 = v11[7];
  v28(&v25[v27], 1, 1, v10);
  v74 = v18;
  v65 = *(v18 + 40);
  v28(&v25[v65], 1, 1, v10);
  v29 = [a1 cycleLengthLowerPercentile];
  v77 = a1;
  sub_251C133F4(v29, [a1 cycleLengthUpperPercentile], v9);
  v68 = v11[6];
  v69 = v11 + 6;
  v30 = v68(v9, 1, v10);
  v71 = v28;
  if (v30 == 1)
  {
    v31 = v10;
    sub_251C159FC(v9, sub_251C15100);
  }

  else
  {
    v32 = v9;
    v33 = v64;
    sub_251C149B4(v32, v64, type metadata accessor for PBCycleTracking.Range);
    v34 = v33;
    v35 = v76;
    sub_251C149B4(v34, v76, type metadata accessor for PBCycleTracking.Range);
    sub_251C159FC(&v25[v27], sub_251C15100);
    sub_251C149B4(v35, &v25[v27], type metadata accessor for PBCycleTracking.Range);
    v31 = v10;
    v28(&v25[v27], 0, 1, v10);
  }

  v36 = [v77 cycleLengthMedian];
  v37 = v75;
  if (v36)
  {
    v38 = v36;
    v39 = [v36 intValue];

    *v67 = v39;
  }

  v40 = v77;
  v41 = [v77 menstruationLengthLowerPercentile];
  v42 = [v40 menstruationLengthUpperPercentile];
  v43 = v70;
  sub_251C133F4(v41, v42, v70);
  v44 = v68(v43, 1, v31);
  v45 = v76;
  if (v44 == 1)
  {
    sub_251C159FC(v43, sub_251C15100);
    v46 = v71;
  }

  else
  {
    v47 = v43;
    v48 = v66;
    sub_251C149B4(v47, v66, type metadata accessor for PBCycleTracking.Range);
    sub_251C149B4(v48, v45, type metadata accessor for PBCycleTracking.Range);
    v49 = v65;
    sub_251C159FC(&v25[v65], sub_251C15100);
    sub_251C149B4(v45, &v25[v49], type metadata accessor for PBCycleTracking.Range);
    v46 = v71;
    v71(&v25[v49], 0, 1, v31);
  }

  v50 = [v40 menstruationLengthMedian];
  if (v50)
  {
    v51 = v50;
    v52 = [v50 intValue];

    *(v25 + 3) = v52;
  }

  v53 = [v40 lastMenstruationStartDayIndex];
  if (v53)
  {
    v54 = v53;
    v55 = sub_251C13568([v53 integerValue]);
    v57 = v56;

    *(v25 + 2) = v55;
    *(v25 + 3) = v57;
  }

  if (*(v73 + 16))
  {
    *v25 = v73;
  }

  *v22 = MEMORY[0x277D84F90];
  *(v22 + 1) = 0;
  *(v22 + 2) = 0;
  *(v22 + 3) = 0xE000000000000000;
  v58 = v74;
  v59 = &v22[*(v74 + 32)];
  sub_251C703A4();
  v60 = 1;
  v46(&v22[*(v58 + 36)], 1, 1, v31);
  v46(&v22[*(v58 + 40)], 1, 1, v31);
  v61 = sub_251BAF44C(v25, v22);
  sub_251C159FC(v22, type metadata accessor for PBCycleTracking);
  if ((v61 & 1) == 0)
  {
    sub_251C15994(v25, v37, type metadata accessor for PBCycleTracking);
    v60 = 0;
  }

  (*(v72 + 56))(v37, v60, 1, v58);
  return sub_251C159FC(v25, type metadata accessor for PBCycleTracking);
}

uint64_t sub_251C12D34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v51 = a2;
  v3 = type metadata accessor for PBCycleTracking.SexualActivity(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v45 - v9;
  MEMORY[0x28223BE20](v8);
  v46 = &v45 - v11;
  v12 = type metadata accessor for PBCycleTracking.Event(0);
  v49 = *(v12 - 8);
  v13 = *(v49 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v45 - v18;
  *v19 = 0;
  *(v19 + 1) = 0xE000000000000000;
  *(v19 + 2) = 0;
  v19[24] = 1;
  *(v19 + 4) = 0;
  v19[40] = 1;
  *(v19 + 11) = 0;
  v19[48] = 0;
  v20 = MEMORY[0x277D84F90];
  *(v19 + 7) = MEMORY[0x277D84F90];
  *(v19 + 8) = v20;
  v21 = &v45 + *(v17 + 44) - v18;
  sub_251C703A4();
  v22 = *(v12 + 48);
  v52 = *(v4 + 56);
  v52(&v19[v22], 1, 1, v3);
  v23 = type metadata accessor for ClinicalSharingCycleTrackingQuery();
  v24 = *(v23 + 32);
  v50 = v2;
  v25 = *(v2 + v24);
  v26 = v48;
  if ((v25 & 2) != 0)
  {
    v27 = sub_251C23FB4([v48 menstrualFlow]);
    if ((v28 & 0x100) == 0)
    {
      *(v19 + 2) = v27;
      v19[24] = v28 & 1;
    }
  }

  if ((v25 & 1) != 0 && [v26 intermenstrualBleeding])
  {
    v19[48] = 1;
  }

  if ((v25 & 4) != 0)
  {
    v29 = [v26 sexualActivity];
    if (v29)
    {
      v30 = v29;
      v31 = &v10[*(v3 + 24)];
      sub_251C703A4();
      *v10 = 1;
      v10[1] = v30 == 1;
      v32 = v10;
      v33 = v46;
      sub_251C149B4(v32, v46, type metadata accessor for PBCycleTracking.SexualActivity);
      v34 = v33;
      v35 = v47;
      sub_251C149B4(v34, v47, type metadata accessor for PBCycleTracking.SexualActivity);
      sub_251C159FC(&v19[v22], sub_251C15A5C);
      sub_251C149B4(v35, &v19[v22], type metadata accessor for PBCycleTracking.SexualActivity);
      v52(&v19[v22], 0, 1, v3);
    }
  }

  v36 = [v26 symptoms];
  v37 = *(v50 + *(v23 + 36)) & v36;
  if (v37)
  {
    *(v19 + 8) = sub_251C23FD8(v37);
  }

  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  *(v16 + 2) = 0;
  v38 = 1;
  v16[24] = 1;
  *(v16 + 4) = 0;
  v16[40] = 1;
  *(v16 + 11) = 0;
  v16[48] = 0;
  v39 = MEMORY[0x277D84F90];
  *(v16 + 7) = MEMORY[0x277D84F90];
  *(v16 + 8) = v39;
  v40 = &v16[*(v12 + 44)];
  sub_251C703A4();
  v52(&v16[*(v12 + 48)], 1, 1, v3);
  v41 = sub_251BAFC4C(v19, v16);
  sub_251C159FC(v16, type metadata accessor for PBCycleTracking.Event);
  v42 = v51;
  if ((v41 & 1) == 0)
  {
    *v19 = sub_251C13568([v26 dayIndex]);
    *(v19 + 1) = v43;
    sub_251C15994(v19, v42, type metadata accessor for PBCycleTracking.Event);
    v38 = 0;
  }

  (*(v49 + 56))(v42, v38, 1, v12);
  return sub_251C159FC(v19, type metadata accessor for PBCycleTracking.Event);
}

void sub_251C131A4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PBCycleTracking.Cycle(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 2) = 0;
  *(v11 + 3) = 0xE000000000000000;
  *(v11 + 10) = 0;
  v12 = &v11[*(v9 + 36)];
  sub_251C703A4();
  v13 = [a1 menstruationSegment];
  v14 = [v13 days];

  *v11 = sub_251C13568(v14);
  *(v11 + 1) = v15;
  v16 = [a1 lastDayIndex];
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  v18 = [v16 integerValue];

  *(v11 + 2) = sub_251C13568(v18);
  *(v11 + 3) = v19;
  v20 = v18 - v14;
  if (__OFSUB__(v18, v14))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v22 < 0xFFFFFFFF80000000)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    *(v11 + 10) = v22;
LABEL_7:
    v23 = [a1 menstruationSegment];
    [v23 days];
    v25 = v24;

    if (v25 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v25 <= 0x7FFFFFFF)
    {
      *(v11 + 11) = v25;
      *(v11 + 4) = a2;
      sub_251C15994(v11, a3, type metadata accessor for PBCycleTracking.Cycle);
      (*(v7 + 56))(a3, 0, 1, v6);

      sub_251C159FC(v11, type metadata accessor for PBCycleTracking.Cycle);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_251C133F4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PBCycleTracking.Range(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = 0;
  v12 = &v11[*(v9 + 24)];
  sub_251C703A4();
  if (!a1)
  {
    if (!a2)
    {
      sub_251C159FC(v11, type metadata accessor for PBCycleTracking.Range);
      v14 = 1;
      return (*(v7 + 56))(a3, v14, 1, v6);
    }

    goto LABEL_5;
  }

  *v11 = [a1 intValue];
  if (a2)
  {
LABEL_5:
    v13 = [a2 intValue];

    *(v11 + 1) = v13;
    goto LABEL_6;
  }

LABEL_6:
  sub_251C149B4(v11, a3, type metadata accessor for PBCycleTracking.Range);
  v14 = 0;
  return (*(v7 + 56))(a3, v14, 1, v6);
}

uint64_t sub_251C13568(uint64_t a1)
{
  v2 = v1;
  v4 = sub_251C70014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = type metadata accessor for ClinicalSharingCycleTrackingQuery();
  v11 = v1 + *(v10 + 40);
  v12 = sub_251C70114();
  v13 = [v9 hk:a1 dateOnDayIndex:0 atHour:v12 calendar:?];

  sub_251C6FFE4();
  v14 = *(*(v2 + *(v10 + 20)) + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v15 = sub_251C6FF94();
  v16 = [v14 stringFromDate_];

  v17 = sub_251C70F14();
  (*(v5 + 8))(v8, v4);
  return v17;
}

uint64_t sub_251C13710@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_251ABCCD4(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = type metadata accessor for PBDateRange(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_251C13B70(a1);
  if ((v18 & 0x100) != 0)
  {
    v34 = type metadata accessor for PBCategorySeries.Event(0);
    v35 = *(*(v34 - 8) + 56);

    return v35(a2, 1, 1, v34);
  }

  else
  {
    v41 = v16;
    v42 = v18;
    v43 = v17;
    v45 = v2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0xE000000000000000;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0xE000000000000000;
    v19 = type metadata accessor for PBCategorySeries.Event(0);
    v20 = a2 + v19[7];
    v21 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
    v22 = *(v21 - 8);
    v23 = 1;
    v39 = *(v22 + 56);
    v40 = v21;
    v38 = v22 + 56;
    v39(v20, 1, 1);
    v24 = a2 + v19[8];
    sub_251C703A4();
    v44 = v19;
    v25 = v19[9];
    v26 = *(v13 + 56);
    v46 = v13 + 56;
    v47 = v12;
    v37 = v26;
    v26(a2 + v25, 1, 1, v12);
    v27 = [a1 startDate];
    sub_251C6FFE4();

    v28 = sub_251C70014();
    v29 = *(*(v28 - 8) + 56);
    v29(v11, 0, 1, v28);
    if (([a1 hasUndeterminedDuration] & 1) == 0)
    {
      v30 = [a1 endDate];
      sub_251C6FFE4();

      v23 = 0;
    }

    v29(v9, v23, 1, v28);
    v31 = v41;
    sub_251C0D7F0(v11, v9, v41);
    sub_251C159FC(v9, sub_251ABCCD4);
    sub_251C159FC(v11, sub_251ABCCD4);
    sub_251C159FC(a2 + v25, sub_251AC0EAC);
    sub_251C149B4(v31, a2 + v25, type metadata accessor for PBDateRange);
    v37(a2 + v25, 0, 1, v47);
    sub_251C159FC(v20, sub_251C14A50);
    *v20 = v43;
    *(v20 + 8) = v42 & 1;
    v32 = v40;
    swift_storeEnumTagMultiPayload();
    (v39)(v20, 0, 1, v32);
    return (*(*(v44 - 1) + 56))(a2, 0, 1);
  }
}

uint64_t sub_251C13B70(void *a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = a1;
    v5 = [v3 categoryType];
    v6 = [v5 code];

    if (v6 != 193)
    {
      if (v6 == 192)
      {

        return 1;
      }

      else if (v6 == 191)
      {

        return 2;
      }

      else
      {

        return 0;
      }
    }

    v7 = [v3 value];

    if (v7 <= 3)
    {
      if (v7 != 1)
      {
        if (v7 == 2)
        {
          return 4;
        }

        if (v7 == 3)
        {
          return 5;
        }
      }
    }

    else
    {
      if (v7 <= 5)
      {
        if (v7 == 4)
        {
          return 6;
        }

        else
        {
          return 7;
        }
      }

      if (v7 == 6)
      {
        return 8;
      }

      if (v7 == 7)
      {
        return 9;
      }
    }

    return 3;
  }

  return result;
}

uint64_t sub_251C13D1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_251A7FE20(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_251C13D5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C702E4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v36 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v35 - v10);
  MEMORY[0x28223BE20](v9);
  v13 = (&v35 - v12);
  v14 = sub_251A8223C(0, &qword_27F479E00, 0x277CCD0C0);
  v15 = *MEMORY[0x277CCB9D8];
  v35 = v14;
  *v13 = MEMORY[0x25308D1B0](v15);
  v16 = *MEMORY[0x277D112F0];
  v17 = v5[13];
  v17(v13, v16, v4);
  v18 = *(a1 + 16);
  v37 = a2;
  v38 = v5;
  if (v18 && (v19 = sub_251AC8AFC(a2), (v20 & 1) != 0))
  {
    v21 = *(*(a1 + 56) + 8 * v19);

    v22 = sub_251C5DBC0(v13, v21);

    v23 = v5[1];
    v23(v13, v4);
    v24 = v22 & 1;
  }

  else
  {
    v23 = v5[1];
    v23(v13, v4);
    v24 = 0;
  }

  *v11 = MEMORY[0x25308D1B0](*MEMORY[0x277CCBA28]);
  v17(v11, v16, v4);
  if (*(a1 + 16) && (v25 = sub_251AC8AFC(v37), (v26 & 1) != 0))
  {
    v27 = *(*(a1 + 56) + 8 * v25);

    LODWORD(v35) = sub_251C5DBC0(v11, v27);

    v23(v11, v4);
    if (v35)
    {
      v24 |= 2uLL;
    }
  }

  else
  {
    v23(v11, v4);
  }

  v28 = MEMORY[0x25308D1B0](*MEMORY[0x277CCBA98]);
  v29 = v36;
  *v36 = v28;
  v17(v29, v16, v4);
  if (*(a1 + 16) && (v30 = sub_251AC8AFC(v37), (v31 & 1) != 0))
  {
    v32 = *(*(a1 + 56) + 8 * v30);

    v33 = sub_251C5DBC0(v29, v32);

    v23(v29, v4);
    if (v33)
    {
      return v24 | 4;
    }
  }

  else
  {
    v23(v29, v4);
  }

  return v24;
}

void sub_251C14100()
{
  sub_251C70074();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ClinicalSharingQueryContext(319);
    if (v1 <= 0x3F)
    {
      sub_251C6FAE4();
      if (v2 <= 0x3F)
      {
        type metadata accessor for HKDayIndexRange(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for HKMCDaySummarySymptoms(319);
          if (v4 <= 0x3F)
          {
            sub_251C701E4();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_251C14200()
{
  result = qword_27F47C4C8;
  if (!qword_27F47C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C4C8);
  }

  return result;
}

unint64_t sub_251C14258()
{
  result = qword_27F47C4D0;
  if (!qword_27F47C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C4D0);
  }

  return result;
}

unint64_t sub_251C142B0()
{
  result = qword_27F47C4D8;
  if (!qword_27F47C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C4D8);
  }

  return result;
}

unint64_t sub_251C14308()
{
  result = qword_27F47C4E0;
  if (!qword_27F47C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C4E0);
  }

  return result;
}

void sub_251C1435C()
{
  if (!qword_27F47C4E8)
  {
    sub_251C14448();
    sub_251C1463C();
    sub_251C15454(&qword_27F47C520, sub_251C14448);
    sub_251C15454(&qword_27F47C528, sub_251C1463C);
    v0 = sub_251C70874();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C4E8);
    }
  }
}

void sub_251C14448()
{
  if (!qword_27F47C4F0)
  {
    sub_251C15134(255, &qword_27F47C4F8, type metadata accessor for PBTypedData, MEMORY[0x277CBCD88]);
    sub_251C14534();
    sub_251C145B4();
    sub_251C15454(&qword_27F47C518, sub_251C14534);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C4F0);
    }
  }
}

void sub_251C14534()
{
  if (!qword_27F47C500)
  {
    sub_251A8223C(255, &qword_27F47C508, 0x277D11960);
    sub_251A82284();
    v0 = sub_251C70974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C500);
    }
  }
}

unint64_t sub_251C145B4()
{
  result = qword_27F47C510;
  if (!qword_27F47C510)
  {
    sub_251C15134(255, &qword_27F47C4F8, type metadata accessor for PBTypedData, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C510);
  }

  return result;
}

void sub_251C1463C()
{
  if (!qword_27F478D58)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_251C14A84(255, &qword_27F478D60, MEMORY[0x277CBCD88]);
    type metadata accessor for PBTypedData(255);
    sub_251C14708(&qword_27F478D78, &qword_27F478D60, v0);
    v1 = sub_251C70784();
    if (!v2)
    {
      atomic_store(v1, &qword_27F478D58);
    }
  }
}

uint64_t sub_251C14708(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_251C14A84(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251C1474C()
{
  if (!qword_27F47C530)
  {
    sub_251C1435C();
    type metadata accessor for ClinicalSharingQueryOutput(255);
    sub_251C15454(&qword_27F47C538, sub_251C1435C);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C530);
    }
  }
}

unint64_t sub_251C147F8()
{
  result = qword_27F479B00;
  if (!qword_27F479B00)
  {
    sub_251C15134(255, &qword_27F479AD0, type metadata accessor for ClinicalSharingQueryOutput, MEMORY[0x277CBCE88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479B00);
  }

  return result;
}

size_t sub_251C14898@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingCycleTrackingQuery() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_251C10D2C(*a1, a2);
}

uint64_t sub_251C1490C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingCycleTrackingQuery() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_251C1182C(a1, v6, a2);
}

uint64_t sub_251C149B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_251C14A84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_251AA8E98(255, &qword_27F478D68, &qword_27F478D70, 0x277CCD8A8);
    v7 = v6;
    v8 = sub_251A82284();
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_251C14B14()
{
  if (!qword_27F47C560)
  {
    sub_251AA8E98(255, &qword_27F47C568, &qword_27F47C570, 0x277D11978);
    sub_251C14BAC();
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C560);
    }
  }
}

unint64_t sub_251C14BAC()
{
  result = qword_27F47C578;
  if (!qword_27F47C578)
  {
    sub_251AA8E98(255, &qword_27F47C568, &qword_27F47C570, 0x277D11978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C578);
  }

  return result;
}

void sub_251C14C1C()
{
  if (!qword_27F47C580)
  {
    sub_251C15134(255, &qword_27F47C588, type metadata accessor for PBCycleTracking.Cycle, MEMORY[0x277CBCD88]);
    sub_251C14D08();
    sub_251C14DC4();
    sub_251C15454(&qword_27F47C5A8, sub_251C14D08);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C580);
    }
  }
}

void sub_251C14D08()
{
  if (!qword_27F47C590)
  {
    sub_251C14B14();
    sub_251A82284();
    sub_251C15454(&qword_27F47C598, sub_251C14B14);
    v0 = sub_251C707E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C590);
    }
  }
}

unint64_t sub_251C14DC4()
{
  result = qword_27F47C5A0;
  if (!qword_27F47C5A0)
  {
    sub_251C15134(255, &qword_27F47C588, type metadata accessor for PBCycleTracking.Cycle, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C5A0);
  }

  return result;
}

void sub_251C14E4C()
{
  if (!qword_27F47C5B0)
  {
    sub_251C14C1C();
    sub_251C15454(&qword_27F47C5B8, sub_251C14C1C);
    v0 = sub_251C708C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C5B0);
    }
  }
}

void sub_251C14EE0()
{
  if (!qword_27F47C5C0)
  {
    sub_251C14E4C();
    type metadata accessor for PBTypedData(255);
    sub_251C15454(&qword_27F47C5C8, sub_251C14E4C);
    v0 = sub_251C70784();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C5C0);
    }
  }
}

uint64_t sub_251C14FA4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(*(type metadata accessor for ClinicalSharingCycleTrackingQuery() - 8) + 80);
  result = a2(*a1);
  *a3 = result;
  return result;
}

uint64_t sub_251C15020@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingCycleTrackingQuery() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_251C1213C(a1, v2 + v6, v7, a2);
}

void sub_251C15134(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_251A82284();
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_251C151B0()
{
  if (!qword_27F47C5E0)
  {
    sub_251C1528C();
    sub_251C15A90(255, &qword_2813E1F10, type metadata accessor for PBCycleTracking.Event, MEMORY[0x277D83940]);
    sub_251C15454(&qword_27F47C5F8, sub_251C1528C);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C5E0);
    }
  }
}

void sub_251C1528C()
{
  if (!qword_27F47C5E8)
  {
    sub_251AA8E98(255, &qword_27F47C5F0, &qword_27F479FB8, 0x277D11988);
    sub_251A82284();
    v0 = sub_251C70974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C5E8);
    }
  }
}

void sub_251C15314()
{
  if (!qword_27F47C600)
  {
    sub_251C151B0();
    sub_251C15454(&qword_27F47C608, sub_251C151B0);
    v0 = sub_251C707C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C600);
    }
  }
}

void sub_251C153A8()
{
  if (!qword_27F47C610)
  {
    sub_251C15314();
    type metadata accessor for PBCycleTracking.Cycle(255);
    sub_251C15454(&qword_27F47C618, sub_251C15314);
    v0 = sub_251C70784();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C610);
    }
  }
}

uint64_t sub_251C15454(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_251C1549C()
{
  result = qword_27F47C620;
  if (!qword_27F47C620)
  {
    sub_251C15134(255, &qword_27F47C5D8, type metadata accessor for PBCycleTracking.Cycle, MEMORY[0x277CBCE88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C620);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for ClinicalSharingCycleTrackingQuery() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_251C70074();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7]);

  v7 = v1[8];
  v8 = sub_251C6FAE4();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[12];
  v10 = sub_251C701E4();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void *sub_251C1568C@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingCycleTrackingQuery() - 8);
  v6 = *a1;
  v8[2] = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  result = sub_251C0F00C(sub_251C15938, v8, v6);
  *a2 = result;
  return result;
}

uint64_t objectdestroy_12Tm()
{
  v1 = (type metadata accessor for ClinicalSharingCycleTrackingQuery() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_251C70074();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[7]);

  v8 = v1[8];
  v9 = sub_251C6FAE4();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = v1[12];
  v11 = sub_251C701E4();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_251C15994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C159FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251C15A90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251C15AF4(uint64_t a1, uint64_t a2)
{
  sub_251AA8E98(0, &qword_27F4795B0, &qword_27F4795B8, 0x277CCD5F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C15B70(uint64_t a1)
{
  sub_251AA8E98(0, &qword_27F4795B0, &qword_27F4795B8, 0x277CCD5F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251C15BE8@<X0>(char *a1@<X8>)
{
  sub_251AF3A84();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_251C6FE64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C6FE54();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_251AF3ADC(v5);
LABEL_7:
    v14 = 1;
    return (*(v7 + 56))(a1, v14, 1, v6);
  }

  v11 = *(v7 + 32);
  v11(v10, v5, v6);
  sub_251C6FE44();
  if (!v12 || (, sub_251C6FE24(), !v13))
  {
    (*(v7 + 8))(v10, v6);
    goto LABEL_7;
  }

  v11(a1, v10, v6);
  v14 = 0;
  return (*(v7 + 56))(a1, v14, 1, v6);
}

uint64_t sub_251C15DC8()
{
  v1 = *(sub_251C6FDB4() + 16);

  if (v1 < 3)
  {
    goto LABEL_4;
  }

  v2 = sub_251C6FDB4();
  v12[0] = 0xD000000000000011;
  v12[1] = 0x8000000251C8B590;
  MEMORY[0x28223BE20](v2);
  v11[2] = v12;
  v3 = sub_251C15F40(sub_251C15FE4, v11, v2);
  v5 = v4;

  if ((v5 & 1) != 0 || (v6 = *(sub_251C6FDB4() + 16), , v6 < v3))
  {
LABEL_4:
    sub_251B26550();
    swift_allocError();
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *v7 = 2;
    *(v7 + 24) = 3;
    swift_willThrow();
    return v0;
  }

  result = sub_251C6FDB4();
  if (v3 < -1)
  {
    __break(1u);
  }

  else if ((v3 + 1) < *(result + 16))
  {
    v9 = result + 16 * (v3 + 1);
    v0 = *(v9 + 32);
    v10 = *(v9 + 40);

    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_251C15F40(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  result = *(a3 + 16);
  v6 = (a3 + 16 * result + 24);
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    v8 = *v6;
    v10[0] = *(v6 - 1);
    v10[1] = v8;

    v9 = a1(v10);

    if (v3)
    {
      break;
    }

    v6 -= 2;
    result = v7 - 1;
  }

  while ((v9 & 1) == 0);
  return result;
}

uint64_t sub_251C15FE4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_251C719D4() & 1;
  }
}

uint64_t sub_251C1603C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[21] = v5;
  v6[22] = a5;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  sub_251C17CFC(0, &qword_27F4798C8, type metadata accessor for WebRequestResponseError.ErrorType);
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[23] = swift_task_alloc();
  sub_251C17CFC(0, &qword_27F47C638, type metadata accessor for WebRequestResponseError);
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v11 = sub_251C70074();
  v6[25] = v11;
  v12 = *(v11 - 8);
  v6[26] = v12;
  v13 = *(v12 + 64) + 15;
  v6[27] = swift_task_alloc();
  v14 = type metadata accessor for HTTPError();
  v6[28] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v16 = type metadata accessor for WebRequestResponseError.ErrorType(0);
  v6[31] = v16;
  v17 = *(v16 - 8);
  v6[32] = v17;
  v18 = *(v17 + 64) + 15;
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v19 = type metadata accessor for WebRequestResponseError(0);
  v6[40] = v19;
  v20 = *(v19 - 8);
  v6[41] = v20;
  v21 = *(v20 + 64) + 15;
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251C16300, 0, 0);
}

void sub_251C16300()
{
  v1 = v0[21];

  v2 = swift_task_alloc();
  v0[47] = v2;
  *v2 = v0;
  v2[1] = sub_251C163DC;
  v3 = v0[21];
  v4 = v0[18];
  v6 = v0[38];

  JUMPOUT(0x251C695F4);
}

uint64_t sub_251C163DC(uint64_t a1)
{
  v3 = *(*v2 + 376);
  v6 = *v2;
  *(*v2 + 384) = a1;

  if (v1)
  {
    v4 = sub_251C16694;
  }

  else
  {
    v4 = sub_251C164F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251C164F0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v3)
    {
      if ((v1 & 0xFF000000000000) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v4 = v2;
    v5 = v2 >> 32;
LABEL_8:
    if (v4 != v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v3 == 2)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    goto LABEL_8;
  }

LABEL_9:
  sub_251A83028(v0[10], v0[11]);
  v2 = 0;
  v1 = 0xF000000000000000;
LABEL_10:
  v6 = v0[48];
  v7 = v0[17];
  sub_251A823B4(v0[18], v7);
  v7[5] = v2;
  v7[6] = v1;
  v7[7] = v6;
  v9 = v0[45];
  v8 = v0[46];
  v11 = v0[43];
  v10 = v0[44];
  v12 = v0[42];
  v14 = v0[38];
  v13 = v0[39];
  v15 = v0[36];
  v16 = v0[37];
  v17 = v0[35];
  v20 = v0[34];
  v21 = v0[33];
  v22 = v0[30];
  v23 = v0[29];
  v24 = v0[27];
  v25 = v0[24];
  v26 = v0[23];

  v18 = v0[1];

  return v18();
}

uint64_t sub_251C16694()
{
  v71 = v0;
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v4 = v0[39];
  v5 = v0[40];
  v6 = v0[37];
  v7 = v0[36];
  v67 = v0[31];
  v8 = v0[18];
  sub_251C17EA8(v0[38], v4, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251C17EA8(v4, v6, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251A823B4(v8, v2);
  sub_251C17F10(v6, v2 + *(v5 + 20), type metadata accessor for WebRequestResponseError.ErrorType);
  v0[49] = sub_251C17FF0(&qword_27F478E50, type metadata accessor for WebRequestResponseError);
  swift_willThrowTypedImpl();
  sub_251C17E48(v6, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251C17EA8(v2, v1, type metadata accessor for WebRequestResponseError);
  sub_251C17EA8(v1, v3, type metadata accessor for WebRequestResponseError);
  sub_251C17F10(v3 + *(v5 + 20), v7, type metadata accessor for WebRequestResponseError.ErrorType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = v0[36];
  if (EnumCaseMultiPayload == 1)
  {
    v12 = v0[29];
    v11 = v0[30];
    v13 = v0[28];
    sub_251C17EA8(v10, v11, type metadata accessor for HTTPError);
    sub_251C17F10(v11, v12, type metadata accessor for HTTPError);
    v14 = swift_getEnumCaseMultiPayload();
    v15 = v0[29];
    if (v14 == 2)
    {
      if (v15[1])
      {
        v16 = *v15;
        v17 = sub_251C4EEAC();

        if (v17)
        {
          if (qword_2813E26F8 != -1)
          {
            swift_once();
          }

          v19 = v0[26];
          v18 = v0[27];
          v20 = v0[25];
          v21 = v0[19];
          v22 = sub_251C70764();
          v0[50] = __swift_project_value_buffer(v22, qword_2813E8130);
          (*(v19 + 16))(v18, v21, v20);
          v23 = sub_251C70744();
          v24 = sub_251C713F4();
          v25 = os_log_type_enabled(v23, v24);
          v27 = v0[26];
          v26 = v0[27];
          v28 = v0[25];
          if (v25)
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v70 = v30;
            *v29 = 136315138;
            sub_251C17FF0(&qword_27F479418, MEMORY[0x277CC95F0]);
            v31 = sub_251C719A4();
            v33 = v32;
            (*(v27 + 8))(v26, v28);
            v34 = sub_251B10780(v31, v33, &v70);

            *(v29 + 4) = v34;
            _os_log_impl(&dword_251A6C000, v23, v24, "WebRequestResponseError.catchAndRefreshToken: tryCatch: 401 response, requesting new accessToken for account: %s", v29, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v30);
            MEMORY[0x25308E2B0](v30, -1, -1);
            MEMORY[0x25308E2B0](v29, -1, -1);
          }

          else
          {

            (*(v27 + 8))(v26, v28);
          }

          v53 = v0[20];
          v54 = v53[3];
          v55 = v53[4];
          __swift_project_boxed_opaque_existential_1(v53, v54);
          v56 = *(v55 + 8);
          v69 = (v56 + *v56);
          v57 = v56[1];
          v58 = swift_task_alloc();
          v0[51] = v58;
          *v58 = v0;
          v58[1] = sub_251C16DB8;
          v59 = v0[19];

          return v69(v59, v54, v55);
        }
      }
    }

    else
    {
      sub_251C17E48(v15, type metadata accessor for HTTPError);
    }

    v10 = v0[30];
    v35 = type metadata accessor for HTTPError;
  }

  else
  {
    v35 = type metadata accessor for WebRequestResponseError.ErrorType;
  }

  sub_251C17E48(v10, v35);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v36 = sub_251C70764();
  __swift_project_value_buffer(v36, qword_2813E8130);
  v37 = sub_251C70744();
  v38 = sub_251C713C4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_251A6C000, v37, v38, "WebRequestPerformer.catchAndRefreshToken: re-throwing error", v39, 2u);
    MEMORY[0x25308E2B0](v39, -1, -1);
  }

  v40 = v0[44];
  v41 = v0[40];
  v42 = v0[22];

  sub_251C17F10(v40, v42, type metadata accessor for WebRequestResponseError);
  swift_willThrowTypedImpl();
  v44 = v0[45];
  v43 = v0[46];
  v45 = v0[43];
  v46 = v0[42];
  v48 = v0[38];
  v47 = v0[39];
  v50 = v0[36];
  v49 = v0[37];
  v60 = v0[35];
  v61 = v0[34];
  v62 = v0[33];
  v63 = v0[30];
  v64 = v0[29];
  v65 = v0[27];
  v66 = v0[24];
  v68 = v0[23];
  sub_251C17E48(v0[44], type metadata accessor for WebRequestResponseError);

  v51 = v0[1];

  return v51();
}

uint64_t sub_251C16DB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 408);
  v7 = *v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = v1;

  if (v1)
  {
    v5 = sub_251C17868;
  }

  else
  {
    v5 = sub_251C16ECC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_251C16ECC()
{
  v1 = v0[52];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v0[5] = v4;
  v0[6] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_251C17D50(v4, v5, boxed_opaque_existential_1);

  v7 = swift_task_alloc();
  v0[54] = v7;
  *v7 = v0;
  v7[1] = sub_251C16FF8;
  v8 = v0[21];
  v10 = v0[34];

  JUMPOUT(0x251C695F4);
}

uint64_t sub_251C16FF8(uint64_t a1)
{
  v3 = *(*v2 + 432);
  v6 = *v2;
  *(*v2 + 440) = a1;

  if (v1)
  {
    v4 = sub_251C17304;
  }

  else
  {
    v4 = sub_251C1710C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251C1710C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v3)
    {
      if ((v1 & 0xFF000000000000) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v4 = v2;
    v5 = v2 >> 32;
LABEL_8:
    if (v4 != v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v3 == 2)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    goto LABEL_8;
  }

LABEL_9:
  sub_251A83028(v0[12], v0[13]);
  v2 = 0;
  v1 = 0xF000000000000000;
LABEL_10:
  v6 = v0[55];
  v7 = v0[52];
  v8 = v0[44];
  v9 = v0[30];
  v10 = v0[17];
  sub_251A823B4((v0 + 2), v10);
  v10[5] = v2;
  v10[6] = v1;
  v10[7] = v6;

  sub_251C17E48(v9, type metadata accessor for HTTPError);
  sub_251C17E48(v8, type metadata accessor for WebRequestResponseError);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v12 = v0[45];
  v11 = v0[46];
  v14 = v0[43];
  v13 = v0[44];
  v15 = v0[42];
  v17 = v0[38];
  v16 = v0[39];
  v18 = v0[36];
  v19 = v0[37];
  v20 = v0[35];
  v23 = v0[34];
  v24 = v0[33];
  v25 = v0[30];
  v26 = v0[29];
  v27 = v0[27];
  v28 = v0[24];
  v29 = v0[23];

  v21 = v0[1];

  return v21();
}

uint64_t sub_251C17304()
{
  v66 = v0;
  v1 = v0[52];
  v2 = v0[49];
  v3 = v0[43];
  v4 = v0[40];
  v5 = v0[37];
  v6 = v0[35];
  sub_251C17EA8(v0[34], v6, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251C17EA8(v6, v5, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251A823B4((v0 + 2), v3);
  sub_251C17F10(v5, v3 + *(v4 + 20), type metadata accessor for WebRequestResponseError.ErrorType);
  swift_willThrowTypedImpl();
  sub_251C17E48(v5, type metadata accessor for WebRequestResponseError.ErrorType);
  v7 = swift_allocError();
  sub_251C17EA8(v3, v8, type metadata accessor for WebRequestResponseError);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v9 = v0[50];
  v10 = v7;
  v11 = sub_251C70744();
  v12 = sub_251C713D4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v65 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v15 = v0[7];
    v16 = v0[9];
    v17 = sub_251BBFFA4(v0[8]);
    v19 = sub_251B10780(v17, v18, &v65);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_251A6C000, v11, v12, "WebRequestResponseError.catchAndRefreshToken: final error: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x25308E2B0](v14, -1, -1);
    MEMORY[0x25308E2B0](v13, -1, -1);
  }

  v20 = v0[40];
  v21 = v0[41];
  v22 = v0[24];
  v0[14] = v7;
  v23 = v7;
  sub_251A82284();
  v24 = swift_dynamicCast();
  v25 = *(v21 + 56);
  if (v24)
  {
    v26 = v0[49];
    v27 = v0[42];
    v28 = v0[30];
    v29 = v0[24];
    v30 = v0[22];
    v25(v29, 0, 1, v0[40]);
    sub_251C17EA8(v29, v27, type metadata accessor for WebRequestResponseError);
    sub_251C17F10(v27, v30, type metadata accessor for WebRequestResponseError);
    swift_willThrowTypedImpl();

    v31 = type metadata accessor for WebRequestResponseError;
    v32 = v27;
  }

  else
  {
    v33 = v0[31];
    v34 = v0[32];
    v35 = v0[24];
    v25(v35, 1, 1, v0[40]);
    sub_251C17F78(v35);
    v0[15] = v7;
    v36 = v7;
    v37 = swift_dynamicCast();
    v38 = *(v34 + 56);
    v39 = v0[33];
    v40 = v0[31];
    v41 = v0[23];
    if (v37)
    {
      v38(v0[23], 0, 1, v0[31]);
      sub_251C17EA8(v41, v39, type metadata accessor for WebRequestResponseError.ErrorType);
    }

    else
    {
      v38(v0[23], 1, 1, v0[31]);
      *v39 = v7;
      swift_storeEnumTagMultiPayload();
      v42 = v7;
    }

    v43 = v0[49];
    v44 = v0[40];
    v45 = v0[33];
    v28 = v0[30];
    v46 = v0[22];
    sub_251A823B4(v0[18], v46);
    sub_251C17F10(v45, v46 + *(v44 + 20), type metadata accessor for WebRequestResponseError.ErrorType);
    swift_willThrowTypedImpl();

    v31 = type metadata accessor for WebRequestResponseError.ErrorType;
    v32 = v45;
  }

  sub_251C17E48(v32, v31);
  sub_251C17E48(v28, type metadata accessor for HTTPError);
  v48 = v0[45];
  v47 = v0[46];
  v49 = v0[43];
  v50 = v0[42];
  v52 = v0[38];
  v51 = v0[39];
  v54 = v0[36];
  v53 = v0[37];
  v57 = v0[35];
  v58 = v0[34];
  v59 = v0[33];
  v60 = v0[30];
  v61 = v0[29];
  v62 = v0[27];
  v63 = v0[24];
  v64 = v0[23];
  sub_251C17E48(v0[44], type metadata accessor for WebRequestResponseError);

  v55 = v0[1];

  return v55();
}

uint64_t sub_251C17868()
{
  v59 = v0;
  v1 = v0[53];
  v2 = v0[50];
  v3 = v1;
  v4 = sub_251C70744();
  v5 = sub_251C713D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v58 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = v0[7];
    v9 = v0[9];
    v10 = sub_251BBFFA4(v0[8]);
    v12 = sub_251B10780(v10, v11, &v58);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_251A6C000, v4, v5, "WebRequestResponseError.catchAndRefreshToken: final error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25308E2B0](v7, -1, -1);
    MEMORY[0x25308E2B0](v6, -1, -1);
  }

  v13 = v0[40];
  v14 = v0[41];
  v15 = v0[24];
  v0[14] = v1;
  v16 = v1;
  sub_251A82284();
  v17 = swift_dynamicCast();
  v18 = *(v14 + 56);
  if (v17)
  {
    v19 = v0[49];
    v20 = v0[42];
    v21 = v0[30];
    v22 = v0[24];
    v23 = v0[22];
    v18(v22, 0, 1, v0[40]);
    sub_251C17EA8(v22, v20, type metadata accessor for WebRequestResponseError);
    sub_251C17F10(v20, v23, type metadata accessor for WebRequestResponseError);
    swift_willThrowTypedImpl();

    v24 = type metadata accessor for WebRequestResponseError;
    v25 = v20;
  }

  else
  {
    v26 = v0[31];
    v27 = v0[32];
    v28 = v0[24];
    v18(v28, 1, 1, v0[40]);
    sub_251C17F78(v28);
    v0[15] = v1;
    v29 = v1;
    v30 = swift_dynamicCast();
    v31 = *(v27 + 56);
    v32 = v0[33];
    v33 = v0[31];
    v34 = v0[23];
    if (v30)
    {
      v31(v0[23], 0, 1, v0[31]);
      sub_251C17EA8(v34, v32, type metadata accessor for WebRequestResponseError.ErrorType);
    }

    else
    {
      v31(v0[23], 1, 1, v0[31]);
      *v32 = v1;
      swift_storeEnumTagMultiPayload();
      v35 = v1;
    }

    v36 = v0[49];
    v37 = v0[40];
    v38 = v0[33];
    v21 = v0[30];
    v39 = v0[22];
    sub_251A823B4(v0[18], v39);
    sub_251C17F10(v38, v39 + *(v37 + 20), type metadata accessor for WebRequestResponseError.ErrorType);
    swift_willThrowTypedImpl();

    v24 = type metadata accessor for WebRequestResponseError.ErrorType;
    v25 = v38;
  }

  sub_251C17E48(v25, v24);
  sub_251C17E48(v21, type metadata accessor for HTTPError);
  v41 = v0[45];
  v40 = v0[46];
  v42 = v0[43];
  v43 = v0[42];
  v45 = v0[38];
  v44 = v0[39];
  v47 = v0[36];
  v46 = v0[37];
  v50 = v0[35];
  v51 = v0[34];
  v52 = v0[33];
  v53 = v0[30];
  v54 = v0[29];
  v55 = v0[27];
  v56 = v0[24];
  v57 = v0[23];
  sub_251C17E48(v0[44], type metadata accessor for WebRequestResponseError);

  v48 = v0[1];

  return v48();
}

void sub_251C17CFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251C17D50(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a1 - 1) + 16))(a3, v3, a1);
  HKFHIRCredential.asAuthorizationHeader()(&v11);
  object = v11.value.name._object;
  if (v11.value.name._object)
  {
    countAndFlagsBits = v11.value.value._countAndFlagsBits;
    v7 = v11.value.value._object;
    v9 = v11.value.name._countAndFlagsBits;
    v10._countAndFlagsBits = 0x7A69726F68747541;
    v10._object = 0xED00006E6F697461;
    WebRequest.removeHeader(name:)(v10);
    v11.value.name._countAndFlagsBits = v9;
    v11.value.name._object = object;
    v11.value.value._countAndFlagsBits = countAndFlagsBits;
    v11.value.value._object = v7;
    v12.name._countAndFlagsBits = &v11;
    v12.name._object = a1;
    v12.value._countAndFlagsBits = a2;
    WebRequest.add(header:)(v12);
    sub_251B220A8(v9, object);
  }
}

uint64_t sub_251C17E48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251C17EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C17F10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C17F78(uint64_t a1)
{
  sub_251C17CFC(0, &qword_27F47C638, type metadata accessor for WebRequestResponseError);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251C17FF0(unint64_t *a1, void (*a2)(uint64_t))
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

void *HKClinicalGatewayFeature.webRequestsForInteraction(_:substitutions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [v3 interactions];
  sub_251A82AA4();
  v6 = sub_251C71154();

  *&v34[0] = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x25308D460](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v13 = [v10 name];
      v14 = sub_251C70F14();
      v16 = v15;

      if (v14 == a1 && v16 == a2)
      {
      }

      else
      {
        v18 = sub_251C719D4();

        if ((v18 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      sub_251C71734();
      v9 = *(*&v34[0] + 16);
      sub_251C71774();
      sub_251C71784();
      sub_251C71744();
LABEL_6:
      ++v8;
      if (v12 == i)
      {
        v19 = *&v34[0];
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_23:

  if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
  {
    goto LABEL_44;
  }

  for (j = *(v19 + 16); j; j = sub_251C717F4())
  {
    v21 = 0;
    v22 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x25308D460](v21, v19);
      }

      else
      {
        if (v21 >= *(v19 + 16))
        {
          goto LABEL_43;
        }

        v23 = *(v19 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v26 = v35;
      HKClinicalGatewayEndpointSchema.asWebRequest(substitutions:)(a3, &v32);
      v35 = v26;
      if (v26)
      {

        goto LABEL_46;
      }

      if (v33)
      {
        sub_251A7E8D8(&v32, v34);
        sub_251A7E8D8(v34, &v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_251C395B4(0, v22[2] + 1, 1, v22);
        }

        v28 = v22[2];
        v27 = v22[3];
        if (v28 >= v27 >> 1)
        {
          v22 = sub_251C395B4((v27 > 1), v28 + 1, 1, v22);
        }

        v22[2] = v28 + 1;
        sub_251A7E8D8(&v32, &v22[5 * v28 + 4]);
      }

      else
      {
        sub_251C18384(&v32);
      }

      ++v21;
      if (v25 == j)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_46:

  return v22;
}

uint64_t sub_251C18384(uint64_t a1)
{
  sub_251C183E0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251C183E0()
{
  if (!qword_27F47C640)
  {
    sub_251C18438();
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C640);
    }
  }
}

unint64_t sub_251C18438()
{
  result = qword_27F4798E0;
  if (!qword_27F4798E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F4798E0);
  }

  return result;
}

unint64_t sub_251C1849C()
{
  v1 = v0;
  v2 = sub_251C4C024(MEMORY[0x277D84F90]);
  v3 = *v1;
  if (*v1)
  {
    v4 = *MEMORY[0x277D04948];
    sub_251C70F14();
    *(&v34 + 1) = v5;
    v6 = v3;
    sub_251C71644();
    v35 = sub_251AB6108();
    *&v34 = v6;
    sub_251ACFB54(&v34, v33);
    v7 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_251ACD354(v33, v36, isUniquelyReferenced_nonNull_native);

    sub_251ACFB64(v36);
  }

  v9 = *(v1 + 8);
  if (v9)
  {
    v10 = *MEMORY[0x277D04950];
    *&v34 = sub_251C70F14();
    *(&v34 + 1) = v11;
    v12 = v9;
    sub_251C71644();
    v35 = sub_251AB6108();
    *&v34 = v12;
    sub_251ACFB54(&v34, v33);
    v13 = v12;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_251ACD354(v33, v36, v14);

    sub_251ACFB64(v36);
  }

  v15 = *(v1 + 16);
  if (v15)
  {
    v16 = *MEMORY[0x277D048B0];
    *&v34 = sub_251C70F14();
    *(&v34 + 1) = v17;
    v18 = v15;
    sub_251C71644();
    v35 = sub_251AB6108();
    *&v34 = v18;
    sub_251ACFB54(&v34, v33);
    v19 = v18;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_251ACD354(v33, v36, v20);

    sub_251ACFB64(v36);
  }

  v21 = MEMORY[0x277D837D0];
  v22 = *(v1 + 32);
  if (v22)
  {
    v23 = *(v1 + 24);
    v24 = *MEMORY[0x277D048D8];
    *&v34 = sub_251C70F14();
    *(&v34 + 1) = v25;

    sub_251C71644();
    v35 = v21;
    *&v34 = v23;
    *(&v34 + 1) = v22;
    sub_251ACFB54(&v34, v33);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_251ACD354(v33, v36, v26);
    sub_251ACFB64(v36);
  }

  v27 = *(v1 + 48);
  if (v27)
  {
    v28 = *(v1 + 40);
    v29 = *MEMORY[0x277D048E0];
    *&v34 = sub_251C70F14();
    *(&v34 + 1) = v30;

    sub_251C71644();
    v35 = v21;
    *&v34 = v28;
    *(&v34 + 1) = v27;
    sub_251ACFB54(&v34, v33);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_251ACD354(v33, v36, v31);
    sub_251ACFB64(v36);
  }

  return v2;
}

uint64_t sub_251C187AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_251C70404();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *(v1 + 32);
  if (v6)
  {
    v7 = (v6 + 56);
    v8 = *(v6 + 16) + 1;
    while (--v8)
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      if (*(v7 - 3) != 0xD000000000000016 || 0x8000000251C90B20 != *(v7 - 2))
      {
        v7 += 4;
        if ((sub_251C719D4() & 1) == 0)
        {
          continue;
        }
      }

      if (v9)
      {

        v12 = sub_251C6FE84();
        v14 = v13;

        if (v14 >> 60 != 15)
        {
          v37 = type metadata accessor for PBLookupInfo(0);
          v38[0] = v12;
          v38[1] = v14;
          v40 = 0;
          memset(v39, 0, sizeof(v39));
          sub_251A858C4(v12, v14);
          sub_251C703F4();
          sub_251C18F40();
          sub_251C705A4();
          sub_251A8596C(v12, v14);
          v33 = *(*(v37 - 8) + 56);
          v34 = a1;
          v35 = 0;
          v32 = v37;
          return v33(v34, v35, 1, v32);
        }
      }

      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v15 = sub_251C70764();
      __swift_project_value_buffer(v15, qword_2813E8130);
      sub_251C18E90(v1, v39);
      v16 = sub_251C70744();
      v17 = sub_251C713D4();
      sub_251C18EEC(v2);
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v38[0] = v19;
        *v18 = 136315138;
        v20 = v2[1];
        *&v39[0] = *v2;
        *(&v39[0] + 1) = v20;

        sub_251C719F4();
        v21 = HKSensitiveLogItem();
        swift_unknownObjectRelease();
        sub_251C715C4();
        swift_unknownObjectRelease();
        v22 = sub_251C70F74();
        v24 = sub_251B10780(v22, v23, v38);

        *(v18 + 4) = v24;
        v25 = "Could not get data bytes of PBLookupInfo from docRef. ID: %s.";
        goto LABEL_19;
      }

      goto LABEL_20;
    }
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v26 = sub_251C70764();
  __swift_project_value_buffer(v26, qword_2813E8130);
  sub_251C18E90(v1, v39);
  v16 = sub_251C70744();
  v17 = sub_251C713C4();
  sub_251C18EEC(v2);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v38[0] = v19;
    *v18 = 136315138;
    v27 = v2[1];
    *&v39[0] = *v2;
    *(&v39[0] + 1) = v27;

    sub_251C719F4();
    v28 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v29 = sub_251C70F74();
    v31 = sub_251B10780(v29, v30, v38);

    *(v18 + 4) = v31;
    v25 = "No attachment with contentType of application/x-protobuf found for docRef. ID: %s";
LABEL_19:
    _os_log_impl(&dword_251A6C000, v16, v17, v25, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x25308E2B0](v19, -1, -1);
    MEMORY[0x25308E2B0](v18, -1, -1);
  }

LABEL_20:

  v32 = type metadata accessor for PBLookupInfo(0);
  v33 = *(*(v32 - 8) + 56);
  v34 = a1;
  v35 = 1;
  return v33(v34, v35, 1, v32);
}

unint64_t sub_251C18F40()
{
  result = qword_27F4795D0;
  if (!qword_27F4795D0)
  {
    type metadata accessor for PBLookupInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4795D0);
  }

  return result;
}

uint64_t sub_251C18F98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v59 = type metadata accessor for PBNode(0);
  v4 = *(v59 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v59);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for PBBlob(0);
  v53 = *(v57 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v57);
  v10 = (&v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  v12 = a2 + *(type metadata accessor for PBBlobs(0) + 20);
  sub_251C703A4();
  v13 = *(a1 + 16);
  if (v13)
  {
    v49 = a2;
    v50 = v13;
    v62 = v11;
    sub_251C0BBEC(0, v13, 0);
    v14 = 0;
    v15 = v62;
    v55 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v54 = xmmword_251C745D0;
    v51 = v4;
    v52 = a1;
    v56 = v7;
    while (1)
    {
      if (v14 >= *(a1 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v58 = v15;
      sub_251C19500(v55 + *(v4 + 72) * v14, v7);
      *v10 = 0;
      v10[1] = 0xE000000000000000;
      *(v10 + 1) = v54;
      v10[4] = v11;
      v16 = v57;
      v17 = v10 + *(v57 + 28);
      sub_251C703A4();
      v18 = *(v16 + 32);
      v19 = sub_251C70384();
      (*(*(v19 - 8) + 56))(v10 + v18, 1, 1, v19);
      sub_251C19564();
      v20 = v60;
      v21 = sub_251C70594();
      if (v20)
      {
        v60 = v20;
        v36 = v49;
        v7 = v56;
        goto LABEL_16;
      }

      v23 = v21;
      v24 = v22;
      v25 = sub_251B1C34C(v21, v22);
      v60 = 0;
      v26 = v25;
      v28 = v27;
      sub_251A83028(v23, v24);
      *v10 = v26;
      v10[1] = v28;
      v29 = v60;
      v7 = v56;
      v30 = sub_251C70594();
      v60 = v29;
      if (v29)
      {
        break;
      }

      v32 = v30;
      v33 = v31;
      sub_251A83028(v10[2], v10[3]);
      v10[2] = v32;
      v10[3] = v33;
      sub_251C195BC(v7, type metadata accessor for PBNode);
      v15 = v58;
      v62 = v58;
      v35 = *(v58 + 16);
      v34 = *(v58 + 24);
      a1 = v52;
      if (v35 >= v34 >> 1)
      {
        sub_251C0BBEC(v34 > 1, v35 + 1, 1);
        v15 = v62;
      }

      ++v14;
      *(v15 + 16) = v35 + 1;
      sub_251C1961C(v10, v15 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v35);
      v4 = v51;
      if (v50 == v14)
      {

        *v49 = v15;
        return result;
      }
    }

    if (qword_2813E26F8 == -1)
    {
      goto LABEL_13;
    }

LABEL_18:
    swift_once();
LABEL_13:
    v37 = sub_251C70764();
    __swift_project_value_buffer(v37, qword_2813E8130);
    v38 = v60;
    v39 = v60;
    v40 = sub_251C70744();
    v41 = sub_251C713D4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v61 = v43;
      *v42 = 136315138;
      swift_getErrorValue();
      v44 = sub_251C71A44();
      v46 = sub_251B10780(v44, v45, &v61);

      *(v42 + 4) = v46;
      v7 = v56;
      _os_log_impl(&dword_251A6C000, v40, v41, "Could not get serialized data from PBPushBlobsRequest. Error: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x25308E2B0](v43, -1, -1);
      MEMORY[0x25308E2B0](v42, -1, -1);
    }

    v36 = v49;
    swift_willThrow();
LABEL_16:
    sub_251C195BC(v10, type metadata accessor for PBBlob);

    sub_251C195BC(v7, type metadata accessor for PBNode);

    return sub_251C195BC(v36, type metadata accessor for PBBlobs);
  }

  else
  {

    *a2 = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_251C19500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBNode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_251C19564()
{
  result = qword_27F47B948;
  if (!qword_27F47B948)
  {
    type metadata accessor for PBNode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B948);
  }

  return result;
}

uint64_t sub_251C195BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251C1961C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBBlob(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C19680@<X0>(void **a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v152 = a3;
  v161 = a2;
  v154 = a4;
  sub_251C1A2E8(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v153 = &v137 - v7;
  v8 = type metadata accessor for PBHKConcept(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v158 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_251C70014();
  v160 = *(v156 - 8);
  v12 = *(v160 + 64);
  MEMORY[0x28223BE20](v156);
  v155 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_251C701E4();
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14);
  v18 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PBHKVaccinationRecord(0);
  v20 = (v19 - 8);
  v21 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v151 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v137 - v24;
  v26 = *a1;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0xE000000000000000;
  *(v25 + 32) = 0;
  *(v25 + 40) = 0xE000000000000000;
  *(v25 + 48) = 0;
  *(v25 + 56) = 0xE000000000000000;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 80) = 0xE000000000000000;
  *(v25 + 88) = 0;
  *(v25 + 96) = 0xE000000000000000;
  v27 = MEMORY[0x277D84F90];
  *(v25 + 104) = MEMORY[0x277D84F90];
  *(v25 + 112) = v27;
  v28 = &v137 + v20[16] - v24;
  sub_251C703A4();
  v29 = *(v9 + 56);
  v157 = v20[17];
  v159 = v8;
  v29(&v157[v25], 1, 1, v8);
  v148 = v20[18];
  v29((v25 + v148), 1, 1, v8);
  v149 = v20[19];
  v29((v25 + v149), 1, 1, v8);
  v150 = v20[20];
  v29((v25 + v150), 1, 1, v8);
  v30 = [v26 administrationDate];
  v31 = *v161;
  v32 = v15[2];
  v141 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
  v143 = v15 + 2;
  v142 = v32;
  v32(v18, v31 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v14);
  v33 = sub_251C70114();
  v34 = v15[1];
  v145 = v18;
  v146 = v15 + 1;
  v147 = v14;
  v140 = v34;
  v34(v18, v14);
  v35 = v26;
  v36 = [v30 adjustedDateForCalendar_];

  v37 = v155;
  sub_251C6FFE4();

  v144 = v31;
  v138 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter;
  v38 = *(v31 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v39 = v37;
  v40 = sub_251C6FF94();
  v41 = [v38 stringFromDate_];

  v42 = sub_251C70F14();
  v44 = v43;

  v45 = *(v160 + 8);
  v46 = v39;
  v47 = v159;
  v160 += 8;
  v139 = v45;
  v45(v46, v156);
  *v25 = v42;
  *(v25 + 8) = v44;
  v48 = v158;
  v49 = [v26 bodySite];
  if (v49)
  {
    v50 = v49;
    sub_251AF0ACC(v49, 1, v48);

    v51 = v157;
    sub_251C1A270(&v157[v25]);
    sub_251C1A3A0(v48, &v51[v25], type metadata accessor for PBHKConcept);
    v29(&v51[v25], 0, 1, v47);
  }

  v157 = v29;
  v52 = [v26 doseNumber];
  if (v52)
  {
    v53 = v52;
    v54 = sub_251C70F14();
    v56 = v55;

    *(v25 + 16) = v54;
    *(v25 + 24) = v56;
  }

  v57 = [v26 doseQuantity];
  v58 = v154;
  if (v57)
  {
    v59 = v57;
    v60 = sub_251C70F14();
    v62 = v61;

    *(v25 + 32) = v60;
    *(v25 + 40) = v62;
  }

  v63 = [v35 expirationDate];
  if (v63)
  {
    v64 = v63;
    v65 = v144;
    v66 = v145;
    v67 = v147;
    v142(v145, v144 + v141, v147);
    v68 = sub_251C70114();
    v140(v66, v67);
    v69 = [v64 adjustedDateForCalendar_];

    v70 = v155;
    sub_251C6FFE4();

    v71 = *(v65 + v138);
    v72 = sub_251C6FF94();
    v73 = [v71 stringFromDate_];

    v74 = sub_251C70F14();
    v76 = v75;

    v139(v70, v156);
    *(v25 + 48) = v74;
    *(v25 + 56) = v76;
  }

  *(v25 + 64) = [v35 notGiven];
  *(v25 + 65) = [v35 patientReported];
  v77 = [v35 performer];
  if (v77)
  {
    v78 = v77;
    v79 = sub_251C70F14();
    v81 = v80;

    *(v25 + 72) = v79;
    *(v25 + 80) = v81;
  }

  v82 = [v35 reaction];
  v83 = v161;
  if (v82)
  {
    v84 = v82;
    v85 = sub_251C70F14();
    v87 = v86;

    *(v25 + 88) = v85;
    *(v25 + 96) = v87;
  }

  v88 = [v35 reasons];
  v89 = v158;
  if (v88)
  {
    v90 = v88;
    sub_251BBC230();
    v91 = sub_251C71154();

    MEMORY[0x28223BE20](v92);
    *(&v137 - 2) = v83;
    sub_251C4FA0C(sub_251B3B7B8, (&v137 - 4), v91);
    v94 = v93;

    *(v25 + 104) = v94;
  }

  v95 = v157;
  v96 = [v35 reasonsNotGiven];
  if (v96)
  {
    v97 = v96;
    sub_251BBC230();
    v98 = sub_251C71154();

    MEMORY[0x28223BE20](v99);
    *(&v137 - 2) = v83;
    sub_251C4FA0C(sub_251B18000, (&v137 - 4), v98);
    v101 = v100;

    v95 = v157;
    *(v25 + 112) = v101;
  }

  v102 = [v35 route];
  v103 = v159;
  if (v102)
  {
    v104 = v102;
    sub_251AF0ACC(v102, 1, v89);

    v105 = v148;
    sub_251C1A270(v25 + v148);
    sub_251C1A3A0(v89, v25 + v105, type metadata accessor for PBHKConcept);
    v95(v25 + v105, 0, 1, v103);
  }

  v106 = [v35 status];
  if (v106)
  {
    v107 = v106;
    sub_251AF0ACC(v106, 1, v89);

    v108 = v149;
    sub_251C1A270(v25 + v149);
    sub_251C1A3A0(v89, v25 + v108, type metadata accessor for PBHKConcept);
    v95(v25 + v108, 0, 1, v103);
  }

  v109 = [v35 vaccination];
  sub_251AF0ACC(v109, 1, v89);

  v110 = v150;
  sub_251C1A270(v25 + v150);
  sub_251C1A3A0(v89, v25 + v110, type metadata accessor for PBHKConcept);
  v95(v25 + v110, 0, 1, v103);
  sub_251AF11B4(v35, v152, v58);
  v111 = v151;
  sub_251C1A33C(v25, v151);
  v112 = *(type metadata accessor for PBClinicalRecord(0) + 20);
  v113 = *(v58 + v112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v115 = *(v58 + v112);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v116 = type metadata accessor for PBClinicalRecord._StorageClass(0);
    v117 = *(v116 + 48);
    v118 = *(v116 + 52);
    swift_allocObject();
    v119 = sub_251BB2A8C(v115);

    *(v58 + v112) = v119;
    v115 = v119;
  }

  v120 = v111;
  v121 = v153;
  sub_251C1A3A0(v120, v153, type metadata accessor for PBHKVaccinationRecord);
  v122 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v122 - 8) + 56))(v121, 0, 1, v122);
  v123 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251B3B5EC(v121, &v115[v123]);
  swift_endAccess();
  v124 = sub_251C6CC54();
  v126 = v125;
  v127 = *(v58 + v112);
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v129 = *(v58 + v112);
  if ((v128 & 1) == 0)
  {
    v130 = type metadata accessor for PBClinicalRecord._StorageClass(0);
    v131 = *(v130 + 48);
    v132 = *(v130 + 52);
    swift_allocObject();
    v133 = sub_251BB2A8C(v129);

    *(v58 + v112) = v133;
    v129 = v133;
  }

  v134 = (v129 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName);
  swift_beginAccess();
  v135 = v134[1];
  *v134 = v124;
  v134[1] = v126;

  return sub_251C1A408(v25);
}

uint64_t sub_251C1A270(uint64_t a1)
{
  sub_251C1A2E8(0, qword_2813E6D28, type metadata accessor for PBHKConcept);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251C1A2E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251C1A33C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBHKVaccinationRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C1A3A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C1A408(uint64_t a1)
{
  v2 = type metadata accessor for PBHKVaccinationRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251C1A464(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0x7D6C696E7BLL;
  }

  sub_251A8223C(0, &qword_27F47C678, 0x277CCA9B8);

  if (swift_dynamicCast())
  {
    v2 = [v6 hrs_safelyLoggableDescription];
    v3 = sub_251C70F14();

    return v3;
  }

  else
  {

    sub_251C719F4();
    v5 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    return sub_251C70F74();
  }
}

uint64_t sub_251C1A59C(void *a1)
{
  if (!a1)
  {
    return 0x7D6C696E7BLL;
  }

  v2 = a1;
  sub_251AA98B0(0, &qword_2813E1C30);
  sub_251A8223C(0, &qword_27F47C678, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v3 = [v8 hrs_safelyLoggableDescription];
    v4 = sub_251C70F14();

    return v4;
  }

  else
  {
    v6 = a1;
    sub_251C719F4();
    v7 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    return sub_251C70F74();
  }
}

uint64_t sub_251C1A6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = sub_251C70014();
  v5[18] = v6;
  v7 = *(v6 - 8);
  v5[19] = v7;
  v8 = *(v7 + 64) + 15;
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251C1A7A4, 0, 0);
}

uint64_t sub_251C1A7A4()
{
  if (([*(v0 + 104) options] & 1) != 0 || ((v1 = objc_msgSend(*(v0 + 104), sel_contextItems), *(v0 + 168) = sub_251A8223C(0, &qword_27F47C650, 0x277D123A0), v2 = sub_251C71154(), v1, v2 >> 62) ? (v3 = sub_251C717F4()) : (v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v3))
  {
    v19 = *(v0 + 160);
    v20 = *(v0 + 104);

    v21 = *(v0 + 8);

    return v21(v20);
  }

  else
  {
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    v8 = *(v0 + 104);
    v9 = [v8 contextItems];
    v10 = sub_251C71154();
    *(v0 + 176) = v10;

    v11 = swift_allocObject();
    *(v0 + 184) = v11;
    v11[2] = v8;
    v11[3] = v6;
    v11[4] = v7;
    v11[5] = v5;
    v11[6] = v4;
    *(v0 + 88) = v10;
    v12 = v7;

    v13 = v8;

    sub_251C1EC98();
    v15 = v14;
    v16 = swift_task_alloc();
    *(v0 + 192) = v16;
    v16[2] = v0 + 88;
    v16[3] = &unk_251C867C0;
    v16[4] = v11;
    v17 = *(MEMORY[0x277D859B8] + 4);
    v18 = swift_task_alloc();
    *(v0 + 200) = v18;
    *v18 = v0;
    v18[1] = sub_251C1AA34;

    return MEMORY[0x282200740](v0 + 96, &type metadata for WellKnownJWKSProcessingContext, v15, 0, 0, &unk_251C867D0, v16, &type metadata for WellKnownJWKSProcessingContext);
  }
}

uint64_t sub_251C1AA34()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_251C1AE40;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_251C1AB50;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251C1AB50()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);

  v3 = *(v0 + 96);
  if (*(v3 + 16))
  {
    v4 = *(v0 + 160);
    v6 = v3 + 32;
    v5 = *(v3 + 32);
    v7 = [v5 receivedDate];
    sub_251C6FFE4();

    v8 = [v5 countryCode];
    if (v8)
    {
      v9 = v8;
      sub_251C70F14();
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v17 = [v5 options];
    v18 = *(v3 + 16);
    if (v18)
    {
      v33 = MEMORY[0x277D84F90];
      sub_251C71764();
      do
      {
        sub_251C1EE70(v6, v0 + 16);
        v19 = *(v0 + 24);
        sub_251C1EEA8(v0 + 16);
        sub_251C71734();
        v20 = *(v33 + 16);
        sub_251C71774();
        sub_251C71784();
        sub_251C71744();
        v6 += 72;
        --v18;
      }

      while (v18);
    }

    v21 = *(v0 + 160);
    v22 = sub_251C6FF94();
    if (v11)
    {
      v23 = sub_251C70EE4();
    }

    else
    {
      v23 = 0;
    }

    v25 = *(v0 + 160);
    v24 = *(v0 + 168);
    v26 = *(v0 + 144);
    v27 = *(v0 + 152);
    v28 = objc_allocWithZone(MEMORY[0x277D123A8]);
    v29 = sub_251C71144();

    v30 = [v28 initWithReceivedDate:v22 countryCode:v23 options:v17 contextItems:v29];

    (*(v27 + 8))(v25, v26);
    v31 = *(v0 + 160);

    v32 = *(v0 + 8);

    return v32(v30);
  }

  else
  {
    v12 = *(v0 + 96);

    sub_251C1EED8();
    swift_allocError();
    *v13 = 3;
    swift_willThrow();
    v14 = *(v0 + 160);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_251C1AE40()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];

  v4 = v0[26];
  v5 = v0[20];

  v6 = v0[1];

  return v6();
}

uint64_t sub_251C1AEC0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[59] = a6;
  v7[60] = a7;
  v7[57] = a4;
  v7[58] = a5;
  v7[55] = a1;
  v7[56] = a3;
  v7[61] = *a2;
  return MEMORY[0x2822009F8](sub_251C1AEF0, 0, 0);
}

uint64_t sub_251C1AEF0()
{
  v1 = *(v0 + 448);
  *(v0 + 16) = v1;
  v2 = *(v0 + 488);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 24) = v2;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 64) = 0;
  v3 = v2;
  v4 = v1;
  sub_251C1B4A8((v0 + 88));
  v5 = swift_task_alloc();
  *(v0 + 496) = v5;
  *v5 = v0;
  v5[1] = sub_251C1B014;
  v6 = *(v0 + 472);
  v7 = *(v0 + 480);
  v8 = *(v0 + 456);
  v9 = *(v0 + 464);
  v10 = *(v0 + 440);

  return sub_251C1BAB4(v10, v0 + 88, v8, v9, v6, v7);
}

uint64_t sub_251C1B014()
{
  v2 = *(*v1 + 496);
  v5 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_251C1B194;
  }

  else
  {
    v3 = sub_251C1B128;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251C1B128()
{
  sub_251C1EEA8(v0 + 88);
  sub_251C1EEA8(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251C1B194()
{
  v33 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 504);
  v2 = *(v0 + 480);
  v4 = *(v0 + 456);
  v3 = *(v0 + 464);
  v5 = sub_251C70764();
  __swift_project_value_buffer(v5, qword_2813E8130);
  sub_251C1EE70(v0 + 88, v0 + 160);
  v6 = v3;

  v7 = v1;
  v8 = sub_251C70744();
  v9 = sub_251C713D4();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 504);
  if (v10)
  {
    v13 = *(v0 + 472);
    v12 = *(v0 + 480);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_251B10780(v13, v12, &v32);
    *(v14 + 12) = 2080;
    sub_251C1EE70(v0 + 160, v0 + 232);
    sub_251C1EE70(v0 + 232, v0 + 304);
    sub_251C719F4();
    v16 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v17 = sub_251C70F74();
    v19 = v18;
    sub_251C1EEA8(v0 + 232);
    sub_251C1EEA8(v0 + 160);
    v20 = sub_251B10780(v17, v19, &v32);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    swift_getErrorValue();
    v21 = *(v0 + 408);
    v22 = *(v0 + 424);
    v23 = Error.sensitiveLogString.getter(*(v0 + 416));
    v25 = sub_251B10780(v23, v24, &v32);

    *(v14 + 24) = v25;
    _os_log_impl(&dword_251A6C000, v8, v9, "%s: Failed to load Well-Known JWKS for %s, will return context without JWKS data. Error: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v15, -1, -1);
    MEMORY[0x25308E2B0](v14, -1, -1);
  }

  else
  {

    sub_251C1EEA8(v0 + 160);
  }

  sub_251C1EEA8(v0 + 16);
  v26 = *(v0 + 440);
  *v26 = *(v0 + 88);
  v27 = *(v0 + 104);
  v28 = *(v0 + 120);
  v29 = *(v0 + 136);
  *(v26 + 64) = *(v0 + 152);
  *(v26 + 32) = v28;
  *(v26 + 48) = v29;
  *(v26 + 16) = v27;
  v30 = *(v0 + 8);

  return v30();
}

void sub_251C1B4A8(uint64_t *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for WellKnownJWKSRequest();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[1];
  v11 = [v10 issuerIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_251C70F14();
    v15 = v14;

    v16 = [v10 sourceType];
    if (v16 == 2)
    {

      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v32 = sub_251C70764();
      __swift_project_value_buffer(v32, qword_2813E8130);
      sub_251C1EE70(v4, &v69);
      v33 = sub_251C70744();
      v34 = sub_251C713B4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v71 = v67;
        v68 = v35;
        *v35 = 136315138;
        v36 = [v70 signingKeyID];
        if (v36)
        {
          v37 = v36;
          v38 = sub_251C70F14();
          v40 = v39;
        }

        else
        {
          v38 = 0;
          v40 = 0;
        }

        v50 = sub_251C1A464(v38, v40);
        v52 = v51;

        sub_251C1EEA8(&v69);
        v53 = sub_251B10780(v50, v52, &v71);

        v54 = v68;
        *(v68 + 4) = v53;
        _os_log_impl(&dword_251A6C000, v33, v34, "WellKnownJWKSProcessingContext: preparing %s for lookup in public key registry", v54, 0xCu);
        v55 = v67;
        __swift_destroy_boxed_opaque_existential_1(v67);
        MEMORY[0x25308E2B0](v55, -1, -1);
        MEMORY[0x25308E2B0](v54, -1, -1);
      }

      else
      {

        sub_251C1EEA8(&v69);
      }

      v56 = *v4;
      v57 = v10;
      v58 = v56;
      v59 = [v57 signingKeyID];
      if (v59)
      {
        v60 = v59;
        v61 = sub_251C70F14();
        v63 = v62;
      }

      else
      {
        v61 = 0;
        v63 = 0;
      }

      *a1 = v58;
      a1[1] = v57;
      *(a1 + 1) = 0u;
      *(a1 + 2) = 0u;
      a1[6] = 0;
      a1[7] = v61;
      a1[8] = v63;
    }

    else if (v16 == 1)
    {
      v68 = v4;
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v17 = sub_251C70764();
      __swift_project_value_buffer(v17, qword_2813E8130);

      v18 = sub_251C70744();
      v19 = sub_251C713B4();

      LODWORD(v67) = v19;
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v71 = v65;
        *v20 = 136315138;
        v69 = v13;
        v70 = v15;

        sub_251C719F4();
        v66 = v13;
        v21 = HKSensitiveLogItem();
        v64 = v18;
        swift_unknownObjectRelease();
        sub_251C715C4();
        swift_unknownObjectRelease();
        v22 = sub_251C70F74();
        v24 = sub_251B10780(v22, v23, &v71);

        v25 = v20;
        *(v20 + 4) = v24;
        v13 = v66;
        v26 = v67;
        v27 = v64;
        v67 = a1;
        v28 = v25;
        _os_log_impl(&dword_251A6C000, v64, v26, "WellKnownJWKSProcessingContext: instantiating WellKnownJWKSRequest for issuer %s", v25, 0xCu);
        v29 = v65;
        __swift_destroy_boxed_opaque_existential_1(v65);
        MEMORY[0x25308E2B0](v29, -1, -1);
        v30 = v28;
        v3 = v2;
        a1 = v67;
        MEMORY[0x25308E2B0](v30, -1, -1);
      }

      else
      {
      }

      v45 = v68;
      WellKnownJWKSRequest.init(baseURLString:)(v13, v15, v9);
      if (!v3)
      {
        v46 = *v45;
        a1[5] = v6;
        a1[6] = &protocol witness table for WellKnownJWKSRequest;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1 + 2);
        sub_251C1F2D8(v9, boxed_opaque_existential_1, type metadata accessor for WellKnownJWKSRequest);
        *a1 = v46;
        a1[1] = v10;
        a1[7] = 0;
        a1[8] = 0;
        v48 = v46;
        v49 = v10;
      }
    }

    else
    {

      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v41 = sub_251C70764();
      __swift_project_value_buffer(v41, qword_2813E8130);
      v42 = sub_251C70744();
      v43 = sub_251C713E4();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_251A6C000, v42, v43, "WellKnownJWKSProcessingContext.contextByCreatingJWKSRequest got unsupported source type", v44, 2u);
        MEMORY[0x25308E2B0](v44, -1, -1);
      }

      sub_251C1EE70(v4, a1);
    }
  }

  else
  {
    sub_251C1EED8();
    swift_allocError();
    *v31 = 1;
    swift_willThrow();
  }
}

uint64_t sub_251C1BAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  return MEMORY[0x2822009F8](sub_251C1BADC, 0, 0);
}

uint64_t sub_251C1BADC()
{
  sub_251C1EF2C(v0[26] + 16, (v0 + 20), sub_251C183E0);
  v1 = v0[23];
  sub_251C1EF94((v0 + 20), sub_251C183E0);
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[31] = v2;
    *v2 = v0;
    v2[1] = sub_251C1BCA8;
    v3 = v0[29];
    v4 = v0[30];
    v5 = v0[27];
    v6 = v0[28];
    v7 = v0[25];
    v8 = v0[26];

    return sub_251C1C370(v7, v8, v5, v6, v3, v4);
  }

  else if (*(v0[26] + 64))
  {
    v10 = swift_task_alloc();
    v0[32] = v10;
    *v10 = v0;
    v10[1] = sub_251C1BD9C;
    v11 = v0[29];
    v12 = v0[30];
    v13 = v0[27];
    v14 = v0[28];
    v15 = v0[26];

    return sub_251C1CB84((v0 + 2), v15, v13, v14, v11, v12);
  }

  else
  {
    sub_251C1EED8();
    swift_allocError();
    *v16 = 5;
    swift_willThrow();
    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_251C1BCA8()
{
  v1 = *(*v0 + 248);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_251C1BD9C()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_251C1C2F4;
  }

  else
  {
    v3 = sub_251C1BEB0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251C1BEB0()
{
  if ([*(v0 + 24) JWKSOutcome] == 2)
  {
    v1 = swift_task_alloc();
    *(v0 + 272) = v1;
    *v1 = v0;
    v1[1] = sub_251C1BFB4;
    v2 = *(v0 + 232);
    v3 = *(v0 + 240);
    v4 = *(v0 + 216);
    v5 = *(v0 + 224);

    return sub_251C1D1B8(v1, v4, v5, v2, v3);
  }

  else
  {
    v7 = *(v0 + 200);
    *v7 = *(v0 + 16);
    v8 = *(v0 + 32);
    v9 = *(v0 + 48);
    v10 = *(v0 + 64);
    *(v7 + 64) = *(v0 + 80);
    *(v7 + 32) = v9;
    *(v7 + 48) = v10;
    *(v7 + 16) = v8;
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_251C1BFB4()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[35] = v4;
  *v4 = v3;
  v4[1] = sub_251C1C14C;
  v5 = v1[30];
  v6 = v1[29];
  v7 = v1[28];
  v8 = v1[27];
  v9 = v1[26];

  return sub_251C1CB84((v1 + 11), v9, v8, v7, v6, v5);
}

uint64_t sub_251C1C14C()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_251C1C30C;
  }

  else
  {
    v3 = sub_251C1C260;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251C1C260()
{
  sub_251C1EEA8(v0 + 16);
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  *(v0 + 16) = v2;
  *(v0 + 32) = v1;
  v3 = *(v0 + 120);
  v4 = *(v0 + 136);
  *(v0 + 48) = v3;
  *(v0 + 64) = v4;
  v5 = *(v0 + 152);
  *(v0 + 80) = v5;
  v6 = *(v0 + 200);
  *(v6 + 64) = v5;
  *(v6 + 32) = v3;
  *(v6 + 48) = v4;
  *v6 = v2;
  *(v6 + 16) = v1;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_251C1C30C()
{
  sub_251C1EEA8(v0 + 16);
  v1 = *(v0 + 288);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_251C1C370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  v7 = *(*(type metadata accessor for WebRequestResponseError.ErrorType(0) - 8) + 64) + 15;
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v8 = type metadata accessor for WebRequestResponseError(0);
  v6[34] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251C1C450, 0, 0);
}

uint64_t sub_251C1C450()
{
  v24 = v0;
  sub_251C1EF2C(*(v0 + 208) + 16, v0 + 120, sub_251C183E0);
  if (*(v0 + 144))
  {
    sub_251A7E8D8((v0 + 120), v0 + 80);
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 240);
    v3 = *(v0 + 216);
    v2 = *(v0 + 224);
    v4 = sub_251C70764();
    __swift_project_value_buffer(v4, qword_2813E8130);
    v5 = v2;

    v6 = sub_251C70744();
    v7 = sub_251C713F4();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 232);
      v8 = *(v0 + 240);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_251B10780(v9, v8, &v23);
      _os_log_impl(&dword_251A6C000, v6, v7, "%s: preparing to download well-known JWKS", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x25308E2B0](v11, -1, -1);
      MEMORY[0x25308E2B0](v10, -1, -1);
    }

    v12 = *(v0 + 216);
    v13 = **(v0 + 208);
    *(v0 + 288) = v13;
    [v13 options];

    v14 = swift_task_alloc();
    *(v0 + 296) = v14;
    *v14 = v0;
    v14[1] = sub_251C1C78C;
    v15 = *(v0 + 216);
    v26 = *(v0 + 256);

    JUMPOUT(0x251C695F4);
  }

  sub_251C1EF94(v0 + 120, sub_251C183E0);
  sub_251C1EED8();
  swift_allocError();
  *v16 = 2;
  swift_willThrow();
  v17 = *(v0 + 280);
  v19 = *(v0 + 256);
  v18 = *(v0 + 264);
  v20 = *(v0 + 248);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_251C1C78C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[20] = v2;
  v4[21] = a1;
  v4[22] = v1;
  v5 = v3[37];
  v8 = *v2;

  if (v1)
  {
    v6 = sub_251C1CA20;
  }

  else
  {
    v6 = sub_251C1C8A4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_251C1C8A4()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v3)
    {
      if ((v1 & 0xFF000000000000) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v4 = v2;
    v5 = v2 >> 32;
LABEL_8:
    if (v4 != v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v3 == 2)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    goto LABEL_8;
  }

LABEL_9:
  sub_251A83028(v0[23], v0[24]);
  v2 = 0;
  v1 = 0xF000000000000000;
LABEL_10:
  v6 = v0[21];
  v7 = v0[35];
  v8 = v0[36];
  v9 = v0[32];
  v10 = v0[33];
  v20 = v0[31];
  v11 = v0[25];
  v12 = v0[26];
  sub_251A823B4((v0 + 10), (v0 + 2));
  v0[7] = v2;
  v0[8] = v1;
  v0[9] = v6;
  v13 = v12[1];
  v14 = v8;
  v15 = sub_251C1E7D0(v2, v1, 0);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  sub_251C1EF2C((v12 + 2), (v11 + 2), sub_251C183E0);
  v17 = v12[7];
  v16 = v12[8];
  *v11 = v14;
  v11[1] = v15;
  v11[7] = v17;
  v11[8] = v16;

  sub_251A857E0((v0 + 2));

  v18 = v0[1];

  return v18();
}

uint64_t sub_251C1CA20()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[31];
  sub_251C1F2D8(v0[32], v3, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251C1F2D8(v3, v4, type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251A823B4((v0 + 10), v2);
  sub_251C1EF2C(v4, v2 + *(v1 + 20), type metadata accessor for WebRequestResponseError.ErrorType);
  sub_251B21D94();
  swift_willThrowTypedImpl();
  sub_251C1EF94(v4, type metadata accessor for WebRequestResponseError.ErrorType);
  swift_allocError();
  sub_251C1F2D8(v2, v5, type metadata accessor for WebRequestResponseError);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  v6 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[31];

  v10 = v0[1];

  return v10();
}

uint64_t sub_251C1CB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  return MEMORY[0x2822009F8](sub_251C1CBAC, 0, 0);
}

uint64_t sub_251C1CBAC()
{
  v37 = v0;
  v1 = v0[11];
  if (v1)
  {
    v2 = *(v0[9] + 8);
    v3 = v1;
    v4 = [v2 signingKeyID];
    if (v4)
    {
      v5 = v4;
      v6 = sub_251C70F14();
      v8 = v7;

      v0[14] = v8;
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v9 = v0[13];
      v10 = v0[10];
      v11 = sub_251C70764();
      __swift_project_value_buffer(v11, qword_2813E8130);
      v12 = v3;

      v13 = sub_251C70744();
      v14 = sub_251C713F4();

      if (os_log_type_enabled(v13, v14))
      {
        v34 = v12;
        v16 = v0[12];
        v15 = v0[13];
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v36[0] = v18;
        *v17 = 136315394;
        *(v17 + 4) = sub_251B10780(v16, v15, v36);
        *(v17 + 12) = 2080;
        v0[6] = v6;
        v0[7] = v8;

        sub_251C719F4();
        v19 = HKSensitiveLogItem();
        swift_unknownObjectRelease();
        sub_251C715C4();
        swift_unknownObjectRelease();
        v20 = v6;
        v21 = sub_251C70F74();
        v23 = sub_251B10780(v21, v22, v36);
        v12 = v34;

        *(v17 + 14) = v23;
        _os_log_impl(&dword_251A6C000, v13, v14, "%s: about to fetch public key “%s” from registry", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25308E2B0](v18, -1, -1);
        MEMORY[0x25308E2B0](v17, -1, -1);
      }

      else
      {

        v20 = v6;
      }

      v33 = *(v0 + 5);
      v35 = *(v0 + 6);
      v28 = v0[9];
      v29 = swift_task_alloc();
      v0[15] = v29;
      *(v29 + 16) = v12;
      *(v29 + 24) = v20;
      *(v29 + 32) = v8;
      *(v29 + 40) = v33;
      *(v29 + 56) = v35;
      *(v29 + 72) = v28;
      v30 = *(MEMORY[0x277D85A40] + 4);
      v31 = swift_task_alloc();
      v0[16] = v31;
      *v31 = v0;
      v31[1] = sub_251C1CFBC;
      v32 = v0[8];

      return MEMORY[0x2822008A0](v32, 0, 0, 0xD000000000000026, 0x8000000251C90B40, sub_251C1F15C, v29, &type metadata for WellKnownJWKSProcessingContext);
    }

    sub_251C1EED8();
    swift_allocError();
    *v25 = 6;
    swift_willThrow();
  }

  else
  {
    sub_251C1EED8();
    swift_allocError();
    *v24 = 4;
    swift_willThrow();
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_251C1CFBC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_251C1D144;
  }

  else
  {
    v5 = *(v2 + 112);
    v6 = *(v2 + 120);

    v4 = sub_251C1D0E0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251C1D0E0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251C1D144()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];

  v4 = v0[17];
  v5 = v0[1];

  return v5();
}

uint64_t sub_251C1D1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  return MEMORY[0x2822009F8](sub_251C1D1DC, 0, 0);
}

uint64_t sub_251C1D1DC()
{
  v19 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = sub_251C70764();
  v0[10] = __swift_project_value_buffer(v4, qword_2813E8130);
  v5 = v2;

  v6 = sub_251C70744();
  v7 = sub_251C713F4();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[8];
    v8 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_251B10780(v9, v8, &v18);
    _os_log_impl(&dword_251A6C000, v6, v7, "%s: triggering public key OTA download", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x25308E2B0](v11, -1, -1);
    MEMORY[0x25308E2B0](v10, -1, -1);
  }

  v13 = v0[6];
  v12 = v0[7];
  type metadata accessor for IssuerDirectoryDownloadTaskManager();
  v14 = swift_allocObject();

  v15 = v5;
  v0[11] = sub_251C1F04C(v13, v12, v14);
  v16 = swift_task_alloc();
  v0[12] = v16;
  *v16 = v0;
  v16[1] = sub_251C1D3FC;

  return sub_251B11608(0);
}

uint64_t sub_251C1D3FC()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_251C1D684;
  }

  else
  {

    v3 = sub_251C1D51C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251C1D51C()
{
  v17 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v3;

  v6 = sub_251C70744();
  v7 = sub_251C713F4();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[11];
  if (v8)
  {
    v11 = v0[8];
    v10 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_251B10780(v11, v10, &v16);
    _os_log_impl(&dword_251A6C000, v6, v7, "%s: public key OTA download completed", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x25308E2B0](v13, -1, -1);
    MEMORY[0x25308E2B0](v12, -1, -1);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_251C1D684()
{
  v25 = v0;
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v5;

  v8 = v1;
  v9 = sub_251C70744();
  v10 = sub_251C713D4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[13];
    v13 = v0[8];
    v12 = v0[9];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_251B10780(v13, v12, &v24);
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v16 = v0[2];
    v17 = v0[4];
    v18 = Error.sensitiveLogString.getter(v0[3]);
    v20 = sub_251B10780(v18, v19, &v24);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_251A6C000, v9, v10, "%s: public key OTA download failed: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v15, -1, -1);
    MEMORY[0x25308E2B0](v14, -1, -1);
  }

  else
  {
    v21 = v0[13];
  }

  v22 = v0[1];

  return v22();
}

void sub_251C1D86C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a7;
  v29 = a8;
  v27[1] = a5;
  v31 = a2;
  sub_251C1F190();
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v30 = sub_251C70EE4();
  (*(v16 + 16))(v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  sub_251C1EE70(a9, v33);
  v18 = (*(v16 + 80) + 64) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a5;
  *(v19 + 3) = a6;
  v20 = v29;
  *(v19 + 4) = v28;
  *(v19 + 5) = v20;
  *(v19 + 6) = a3;
  *(v19 + 7) = a4;
  (*(v16 + 32))(&v19[v18], v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v21 = &v19[(v17 + v18 + 7) & 0xFFFFFFFFFFFFFFF8];
  v22 = v33[3];
  *(v21 + 2) = v33[2];
  *(v21 + 3) = v22;
  *(v21 + 8) = v34;
  v23 = v33[1];
  *v21 = v33[0];
  *(v21 + 1) = v23;
  aBlock[4] = sub_251C1F208;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251C1E654;
  aBlock[3] = &block_descriptor_19;
  v24 = _Block_copy(aBlock);
  v25 = a6;

  v26 = v30;
  [v31 fetchPublicKeyWithKeyID:v30 completion:v24];
  _Block_release(v24);
}

uint64_t sub_251C1DAB0(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v97 = a5;
  v98 = a7;
  v99 = a10;
  v15 = sub_251C70F64();
  v96 = *(v15 - 8);
  v16 = *(v96 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 outcome];
  v100 = a9;
  if (v19 == 3)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v59 = sub_251C70764();
    __swift_project_value_buffer(v59, qword_2813E8130);
    v60 = a4;

    v50 = sub_251C70744();
    v51 = sub_251C713F4();

    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_22;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v106 = v53;
    *v52 = 136315394;
    *(v52 + 4) = sub_251B10780(v97, a6, &v106);
    *(v52 + 12) = 2080;
    v101 = v98;
    v102 = a8;

    sub_251C719F4();
    v61 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v62 = sub_251C70F74();
    v64 = sub_251B10780(v62, v63, &v106);

    *(v52 + 14) = v64;
    v58 = "%s: key with ID “%s” has been removed";
    goto LABEL_21;
  }

  if (v19 == 2)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v48 = sub_251C70764();
    __swift_project_value_buffer(v48, qword_2813E8130);
    v49 = a4;

    v50 = sub_251C70744();
    v51 = sub_251C713F4();

    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_22;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v106 = v53;
    *v52 = 136315394;
    *(v52 + 4) = sub_251B10780(v97, a6, &v106);
    *(v52 + 12) = 2080;
    v101 = v98;
    v102 = a8;

    sub_251C719F4();
    v54 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v55 = sub_251C70F74();
    v57 = sub_251B10780(v55, v56, &v106);

    *(v52 + 14) = v57;
    v58 = "%s: key with ID “%s” not found";
LABEL_21:
    _os_log_impl(&dword_251A6C000, v50, v51, v58, v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v53, -1, -1);
    MEMORY[0x25308E2B0](v52, -1, -1);
LABEL_22:

    v65 = [a1 outcome];
    v66 = v99;
    v67 = *(v99 + 8);
    v68 = *v99;
    v69 = sub_251C1E7D0(0, 0xF000000000000000, v65);
    sub_251C1EF2C(v66 + 16, v103, sub_251C183E0);
    v70 = *(v66 + 56);
    v71 = *(v66 + 64);
    v101 = v68;
    v102 = v69;
    v104 = v70;
    v105 = v71;
    sub_251C1F190();

    return sub_251C711E4();
  }

  if (v19 != 1)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v72 = sub_251C70764();
    __swift_project_value_buffer(v72, qword_2813E8130);

    v73 = a4;

    v74 = a2;
    v75 = sub_251C70744();
    v76 = sub_251C713F4();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v106 = v78;
      *v77 = 136315650;
      *(v77 + 4) = sub_251B10780(v97, a6, &v106);
      *(v77 + 12) = 2080;
      v101 = v98;
      v102 = a8;

      sub_251C719F4();
      v79 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v80 = sub_251C70F74();
      v82 = sub_251B10780(v80, v81, &v106);

      *(v77 + 14) = v82;
      *(v77 + 22) = 2080;
      v83 = sub_251C1A59C(a2);
      v85 = sub_251B10780(v83, v84, &v106);

      *(v77 + 24) = v85;
      _os_log_impl(&dword_251A6C000, v75, v76, "%s: error retrieving key with ID “%s”: %s", v77, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v78, -1, -1);
      MEMORY[0x25308E2B0](v77, -1, -1);
    }

    v86 = a2;
    if (!a2)
    {
      sub_251C1EED8();
      v86 = swift_allocError();
      *v87 = 0;
    }

    v101 = v86;
    v88 = a2;
    sub_251C1F190();
    return sub_251C711D4();
  }

  v20 = [a1 jwkData];
  if (!v20)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v89 = sub_251C70764();
    __swift_project_value_buffer(v89, qword_2813E8130);
    v90 = sub_251C70744();
    v91 = sub_251C713E4();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_251A6C000, v90, v91, "WellKnownJWKSHandler.retrieveJWKFromPublicKeyRegistry got a retrieved result but no JWK data", v92, 2u);
      MEMORY[0x25308E2B0](v92, -1, -1);
    }

    sub_251C1EED8();
    v93 = swift_allocError();
    *v94 = 7;
    v101 = v93;
    sub_251C1F190();
    return sub_251C711D4();
  }

  v21 = v20;
  v22 = sub_251C6FEE4();
  v24 = v23;

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v25 = sub_251C70764();
  __swift_project_value_buffer(v25, qword_2813E8130);
  v26 = a4;

  v27 = sub_251C70744();
  v28 = sub_251C713F4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v106 = v30;
    *v29 = 136315394;
    *(v29 + 4) = sub_251B10780(v97, a6, &v106);
    *(v29 + 12) = 2080;
    v101 = v98;
    v102 = a8;

    sub_251C719F4();
    v31 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v32 = sub_251C70F74();
    v34 = sub_251B10780(v32, v33, &v106);

    *(v29 + 14) = v34;
    _os_log_impl(&dword_251A6C000, v27, v28, "%s: key with ID “%s” found", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v30, -1, -1);
    MEMORY[0x25308E2B0](v29, -1, -1);
  }

  sub_251A858C4(v22, v24);
  sub_251A858C4(v22, v24);
  sub_251C70F54();
  v35 = sub_251C70F34();
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0xE000000000000000;
  }

  v101 = 0x3A227379656B227BLL;
  v102 = 0xE90000000000005BLL;
  MEMORY[0x25308CDA0](v35, v37);

  MEMORY[0x25308CDA0](32093, 0xE200000000000000);
  sub_251C70F54();
  v38 = sub_251C70F24();
  v40 = v39;

  (*(v96 + 8))(v18, v15);
  v41 = v99;
  v42 = *(v99 + 8);
  v43 = *v99;
  v44 = sub_251C1E7D0(v38, v40, 1);
  sub_251A8596C(v38, v40);
  sub_251A83028(v22, v24);
  sub_251C1EF2C(v41 + 16, v103, sub_251C183E0);
  v46 = *(v41 + 56);
  v45 = *(v41 + 64);
  v101 = v43;
  v102 = v44;
  v104 = v46;
  v105 = v45;

  sub_251A83028(v22, v24);
  sub_251C1F190();
  sub_251C711E4();
  return sub_251A83028(v22, v24);
}

void sub_251C1E654(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t WellKnownJWKSHandlerError.hashValue.getter()
{
  v1 = *v0;
  sub_251C71AA4();
  MEMORY[0x25308D860](v1);
  return sub_251C71AD4();
}

unint64_t sub_251C1E76C()
{
  result = qword_27F47C648;
  if (!qword_27F47C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C648);
  }

  return result;
}

id sub_251C1E7D0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45 = a3;
  v42 = a2;
  v40 = a1;
  sub_251AF3A84();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v4 rawData];
  v10 = sub_251C6FEE4();
  v12 = v11;

  v43 = [v4 sourceType];
  v13 = [v4 sourceURL];
  if (v13)
  {
    v14 = v13;
    sub_251C6FE14();

    v15 = sub_251C6FE64();
    (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  }

  else
  {
    v16 = sub_251C6FE64();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  }

  v17 = [v4 issuerIdentifier];
  if (v17)
  {
    v18 = v17;
    v41 = sub_251C70F14();
    v20 = v19;
  }

  else
  {
    v41 = 0;
    v20 = 0;
  }

  v21 = [v4 signingKeyID];
  if (v21)
  {
    v22 = v21;
    sub_251C70F14();
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = [v4 metadata];
  if (v25)
  {
    v26 = v25;
    sub_251C1EFF4();
    v27 = sub_251C70E54();
  }

  else
  {
    v27 = 0;
  }

  v28 = v10;
  v44 = v12;
  v29 = sub_251C6FEC4();
  v30 = sub_251C6FE64();
  v31 = *(v30 - 8);
  v32 = 0;
  if ((*(v31 + 48))(v8, 1, v30) != 1)
  {
    v32 = sub_251C6FDD4();
    (*(v31 + 8))(v8, v30);
  }

  if (v20)
  {
    v33 = sub_251C70EE4();

    if (v24)
    {
LABEL_17:
      v34 = sub_251C70EE4();

      goto LABEL_20;
    }
  }

  else
  {
    v33 = 0;
    if (v24)
    {
      goto LABEL_17;
    }
  }

  v34 = 0;
LABEL_20:
  if (v42 >> 60 != 15)
  {
    v35 = sub_251C6FEC4();
    if (v27)
    {
      goto LABEL_22;
    }

LABEL_24:
    v36 = 0;
    goto LABEL_25;
  }

  v35 = 0;
  if (!v27)
  {
    goto LABEL_24;
  }

LABEL_22:
  sub_251C1EFF4();
  v36 = sub_251C70E44();

LABEL_25:
  v37 = objc_allocWithZone(MEMORY[0x277D123A0]);
  v38 = [v37 initWithRawData:v29 sourceType:v43 sourceURL:v32 issuerIdentifier:v33 signingKeyID:v34 JWKSData:v35 JWKSOutcome:v45 metadata:v36];

  sub_251A83028(v28, v44);
  return v38;
}

uint64_t sub_251C1EBC0(uint64_t a1, void *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_251AF4F78;

  return sub_251C1AEC0(a1, a2, v6, v7, v8, v9, v10);
}

void sub_251C1EC98()
{
  if (!qword_27F47C658)
  {
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C658);
    }
  }
}

uint64_t sub_251C1ECE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *a3;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_251BD1064;

  return sub_251BCB5DC(a2, v9, a4, a5);
}

uint64_t sub_251C1EDA0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_251B14FE8;

  return sub_251C1ECE8(a1, a2, v6, v7, v8);
}

unint64_t sub_251C1EED8()
{
  result = qword_27F47C660;
  if (!qword_27F47C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C660);
  }

  return result;
}

uint64_t sub_251C1EF2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C1EF94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_251C1EFF4()
{
  result = qword_27F47C668;
  if (!qword_27F47C668)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F47C668);
  }

  return result;
}

uint64_t *sub_251C1F04C(uint64_t a1, id a2, uint64_t *a3)
{
  v6 = (a3 + 16);
  v7 = *a3;
  v13[3] = type metadata accessor for WebRequestPerformer();
  v13[4] = &protocol witness table for WebRequestPerformer;
  v13[0] = a1;
  swift_defaultActor_initialize();
  sub_251A823B4(v13, v6);
  if (!a2)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    a2 = [objc_allocWithZone(MEMORY[0x277D124A8]) initWithHealthStore_];
  }

  a3[21] = a2;
  swift_getMetatypeMetadata();
  v9 = sub_251C70F74();
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1(v13);
  a3[14] = v9;
  a3[15] = v11;
  return a3;
}

void sub_251C1F190()
{
  if (!qword_27F47C670)
  {
    sub_251AA98B0(255, &qword_2813E1C30);
    v0 = sub_251C711F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C670);
    }
  }
}

uint64_t sub_251C1F208(void *a1, void *a2)
{
  sub_251C1F190();
  v6 = (*(*(v5 - 8) + 80) + 64) & ~*(*(v5 - 8) + 80);
  return sub_251C1DAB0(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, v2 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251C1F2D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_19HealthRecordsDaemon10WebRequest_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_251C1F37C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_251C1F3C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_251C1F434(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = sub_251C703C4();
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v29 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  v15 = sub_251C70404();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  type metadata accessor for PBPushBlobsResponse(0);
  v33 = a1;
  v34 = a2;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_251A858C4(a1, a2);
  sub_251C703F4();
  sub_251C1FB64(&qword_27F47A880, type metadata accessor for PBPushBlobsResponse);
  sub_251C705A4();
  v17 = v4;
  if (!v4)
  {
    if ([v5 statusCode] != 207)
    {
      return;
    }

    if (sub_251B4672C())
    {
      sub_251AC1148();
      v17 = swift_allocError();
      *v18 = 1;
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      v19 = 6;
    }

    else
    {
      v20 = [v5 statusCode];
      sub_251AC1148();
      v17 = swift_allocError();
      *v18 = v20;
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      v19 = 1;
    }

    *(v18 + 32) = v19;
    swift_willThrow();
    sub_251C1FBAC(a3, type metadata accessor for PBPushBlobsResponse);
  }

  *&v30 = v17;
  v21 = v17;
  sub_251A82284();
  if (swift_dynamicCast())
  {

    v22 = v35;
    v23 = v29;
    (*(v35 + 32))(v29, v14, v9);
    sub_251C1FB64(&qword_27F47C680, MEMORY[0x277D21700]);
    v24 = sub_251C71A44();
    v26 = v25;
    sub_251AC1148();
    swift_allocError();
    *v27 = v24;
    *(v27 + 8) = v26;
    *(v27 + 16) = 0xD000000000000013;
    *(v27 + 24) = 0x8000000251C90BE0;
    *(v27 + 32) = 4;
    swift_willThrow();
    (*(v22 + 8))(v23, v9);
  }
}

void sub_251C1F7E8(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v27 = a3;
  v9 = sub_251C703C4();
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = sub_251C70404();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  type metadata accessor for PBDeleteBlobsResponse(0);
  v31 = a1;
  v32 = a2;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_251A858C4(a1, a2);
  sub_251C703F4();
  sub_251C1FB64(&qword_27F47A788, type metadata accessor for PBDeleteBlobsResponse);
  sub_251C705A4();
  if (!v4)
  {
    v24 = v27;
    if ([v33 statusCode] != 207 || (v24 & 1) == 0 || (sub_251C650F8() & 1) == 0)
    {
      return;
    }

    sub_251AC1148();
    v5 = swift_allocError();
    *v25 = 1;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = 6;
    swift_willThrow();
    sub_251C1FBAC(a4, type metadata accessor for PBDeleteBlobsResponse);
  }

  *&v28 = v5;
  v18 = v5;
  sub_251A82284();
  if (swift_dynamicCast())
  {

    v19 = v26;
    (*(v26 + 32))(v13, v15, v9);
    sub_251C1FB64(&qword_27F47C680, MEMORY[0x277D21700]);
    v20 = sub_251C71A44();
    v22 = v21;
    sub_251AC1148();
    swift_allocError();
    *v23 = v20;
    *(v23 + 8) = v22;
    *(v23 + 16) = 0xD000000000000015;
    *(v23 + 24) = 0x8000000251C90BC0;
    *(v23 + 32) = 4;
    swift_willThrow();
    (*(v19 + 8))(v13, v9);
  }
}

uint64_t sub_251C1FB64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251C1FBAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_251C1FC20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_251C1FC68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_251C1FCBC@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v20[1] = a2;
  v21 = a1;
  v7 = sub_251C6FAE4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D83D88];
  sub_251C22278(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v20 - v15;
  sub_251C224C0(v5, v20 - v15, &qword_27F478D90, v12);
  v17 = 1;
  if ((*(v8 + 48))(v16, 1, v7) == 1)
  {
    v18 = a3;
    return (*(v8 + 56))(v18, v17, 1, v7);
  }

  (*(v8 + 32))(v11, v16, v7);
  v18 = a3;
  v21(v11);
  if (!v4)
  {
    (*(v8 + 8))(v11, v7);
    v17 = 0;
    return (*(v8 + 56))(v18, v17, 1, v7);
  }

  result = (*(v8 + 8))(v11, v7);
  __break(1u);
  return result;
}

uint64_t sub_251C1FEF4()
{
  v1 = v0;
  sub_251AF2868();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C22278(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v98 = &v87 - v10;
  v99 = sub_251C6FC94();
  v97 = *(v99 - 8);
  v11 = *(v97 + 64);
  MEMORY[0x28223BE20](v99);
  v96 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_251C701E4();
  v94 = *(v95 - 8);
  v13 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C2210C(0, &qword_27F47C688, type metadata accessor for PBTypedData);
  v16 = v15;
  v102 = *(v15 - 8);
  v17 = *(v102 + 64);
  MEMORY[0x28223BE20](v15);
  v100 = &v87 - v18;
  sub_251C220EC(0);
  v20 = v19;
  v21 = *(v19 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  v101 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_251C70014();
  v104 = *(v112 - 8);
  v24 = *(v104 + 64);
  v25 = MEMORY[0x28223BE20](v112);
  v92 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v87 - v27;
  v29 = sub_251C6FAE4();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v34 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v1 + 1);
  v36 = *(v35 + 16);
  if (!v36)
  {
    type metadata accessor for ClinicalSharingQueryOutput(0);
    sub_251A82284();
    sub_251C70A34();
    sub_251C22230(&qword_27F479B00, sub_251AF2868);
    v43 = sub_251C70A94();
    (*(v4 + 8))(v7, v3);
    return v43;
  }

  v89 = v16;
  v90 = v21;
  v91 = v20;
  v103 = v1;
  v88 = v35;
  v111 = v31;
  if (v36 == 1)
  {
    v37 = v32;
    (*(v32 + 16))(v34, v35 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v31);
    v109 = objc_opt_self();
    sub_251C6FAB4();
    v38 = sub_251C6FF94();
    v39 = *(v104 + 8);
    v40 = v112;
    v39(v28, v112);
    sub_251C6FA84();
    v41 = sub_251C6FF94();
    v110 = v39;
    v39(v28, v40);
    v42 = [v109 predicateForSamplesWithStartDate:v38 endDate:v41 options:0];

    (*(v37 + 8))(v34, v111);
  }

  else
  {
    v114[0] = MEMORY[0x277D84F90];
    v44 = v35;
    v45 = v32;
    sub_251C71764();
    v46 = objc_opt_self();
    v109 = *(v45 + 16);
    v110 = v46;
    v47 = v44 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v48 = *(v45 + 72);
    v105 = v45 + 16;
    v106 = (v104 + 8);
    v107 = (v45 + 8);
    v108 = v48;
    v49 = v34;
    v50 = v111;
    do
    {
      (v109)(v49, v47, v50);
      sub_251C6FAB4();
      v51 = sub_251C6FF94();
      v52 = *v106;
      v53 = v112;
      (*v106)(v28, v112);
      sub_251C6FA84();
      v54 = sub_251C6FF94();
      v52(v28, v53);
      v55 = [v110 predicateForSamplesWithStartDate:v51 endDate:v54 options:0];

      (*v107)(v49, v50);
      sub_251C71734();
      v56 = *(v114[0] + 16);
      sub_251C71774();
      sub_251C71784();
      sub_251C71744();
      v47 += v108;
      --v36;
    }

    while (v36);
    v110 = v52;
    sub_251A8223C(0, &qword_27F479AF8, 0x277CCAC30);
    v57 = sub_251C71144();

    v42 = [objc_opt_self() orPredicateWithSubpredicates_];

    v1 = v103;
  }

  v58 = *(v1 + 32);
  v59 = *(v1 + 2);
  v60 = *(v1 + 3);
  v61 = v59;
  v107 = sub_251BFC460(0x7374617473, 0xE500000000000000, v59, v60, v58);
  v108 = v62;
  v63 = *v1;
  sub_251A823B4(*v1 + 16, v114);
  v106 = __swift_project_boxed_opaque_existential_1(v114, v114[3]);
  objc_opt_self();
  v64 = swift_dynamicCastObjCClass();
  v111 = v42;
  v65 = v95;
  v66 = v94;
  v67 = v93;
  if (v64)
  {
    v68 = [v64 aggregationStyle];

    if (v68 < 3)
    {
      v69 = qword_251C86938[v68];
      goto LABEL_13;
    }
  }

  else
  {
  }

  v69 = 0;
LABEL_13:
  (*(v66 + 16))(v67, v63 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v65);
  v70 = v92;
  v109 = v63;
  if (v58 && ((1 << v60) & 0x67) == 0)
  {
    if (v60 == 3)
    {
      sub_251B1C960(0, v63 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date, v92);
    }

    else
    {
      sub_251B1D048(v63 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date, v92);
    }
  }

  else
  {
    sub_251C700C4();
  }

  (*(v66 + 8))(v67, v65);
  v71 = v96;
  sub_251AFC81C(v60, v58);
  v72 = v98;
  sub_251BF1170(v88, v98);
  v73 = v111;
  v74 = off_2863FD778(v61, v111, v69, v70, v71, v72, 0, v107);
  v107 = v74;

  sub_251C22350(v72, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  (*(v97 + 8))(v71, v99);
  v110(v70, v112);
  v113 = v74;
  v75 = swift_allocObject();
  v76 = v103;
  v77 = v103[1];
  *(v75 + 16) = *v103;
  *(v75 + 32) = v77;
  *(v75 + 48) = *(v76 + 16);
  sub_251B0DD74();
  type metadata accessor for PBTypedData(0);
  sub_251C22230(&qword_27F479E30, sub_251B0DD74);
  v78 = v61;

  v79 = v100;
  sub_251C70AA4();

  __swift_destroy_boxed_opaque_existential_1(v114);
  v80 = swift_allocObject();
  v81 = v76[1];
  *(v80 + 16) = *v76;
  *(v80 + 32) = v81;
  *(v80 + 48) = *(v76 + 16);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  v82 = v78;

  v83 = v101;
  v84 = v89;
  sub_251C70774();

  (*(v102 + 8))(v79, v84);
  sub_251C22230(&qword_27F47C698, sub_251C220EC);
  v85 = v91;
  v43 = sub_251C70A94();

  (*(v90 + 8))(v83, v85);
  return v43;
}

void sub_251C20BA4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v72 = a2;
  v5 = MEMORY[0x277D83D88];
  sub_251C22278(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v67 - v8;
  v10 = type metadata accessor for PBDateRange(0);
  v68 = *(v10 - 8);
  v11 = *(v68 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBTimeSeries(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v69 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = (&v67 - v18);
  sub_251C22278(0, &qword_27F478D90, MEMORY[0x277CC88A8], v5);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v67 - v22;
  v24 = *(v3 + 2);
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    v70 = v24;
    v27 = sub_251C2C490();
    if (v27)
    {
      v71 = v27;
      if ([a1 statisticsCount] < 1)
      {
        v65 = type metadata accessor for PBTypedData(0);
        (*(*(v65 - 8) + 56))(v72, 1, 1, v65);

        v66 = v71;
      }

      else
      {
        v28 = sub_251C6FAE4();
        (*(*(v28 - 8) + 56))(v23, 1, 1, v28);
        *v19 = 0;
        v19[1] = 0xE000000000000000;
        v29 = v19 + *(v14 + 28);
        sub_251C703A4();
        v30 = *(v14 + 32);
        v67 = v23;
        v68 = *(v68 + 56);
        (v68)(v19 + v30, 1, 1, v10);
        v31 = [v71 unitString];
        v32 = sub_251C70F14();
        v34 = v33;

        v19[2] = v32;
        v19[3] = v34;
        MEMORY[0x28223BE20](v35);
        v36 = v67;
        *(&v67 - 4) = v67;
        *(&v67 - 3) = v3;
        *(&v67 - 2) = v71;
        v19[4] = sub_251C21D7C(sub_251C222DC, (&v67 - 6));
        v37 = v36;
        sub_251BF0DF0(*(v3 + 3), v3[32], v36, v13);
        sub_251C222E8(v13, v9, type metadata accessor for PBDateRange);
        (v68)(v9, 0, 1, v10);
        v38 = v72;
        sub_251BF1AE0(v9, v72);

        v39 = MEMORY[0x277D83D88];
        sub_251C22350(v9, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
        sub_251C223AC(v13, type metadata accessor for PBDateRange);
        v40 = v69;
        sub_251C222E8(v19, v69, type metadata accessor for PBTimeSeries);
        v41 = type metadata accessor for PBTypedData(0);
        v42 = *(v41 + 20);
        sub_251C22350(v38 + v42, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, v39);
        sub_251C22458(v40, v38 + v42, type metadata accessor for PBTimeSeries);
        v43 = type metadata accessor for PBTypedData.OneOf_Raw(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v43 - 8) + 56))(v38 + v42, 0, 1, v43);
        (*(*(v41 - 8) + 56))(v38, 0, 1, v41);
        sub_251C223AC(v19, type metadata accessor for PBTimeSeries);
        sub_251C22350(v37, &qword_27F478D90, MEMORY[0x277CC88A8], v39);
      }
    }

    else
    {
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v54 = sub_251C70764();
      __swift_project_value_buffer(v54, qword_2813E8130);
      v55 = v70;
      v56 = sub_251C70744();
      v57 = sub_251C713E4();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 138412290;
        *(v58 + 4) = v26;
        *v59 = v26;
        v60 = v55;
        _os_log_impl(&dword_251A6C000, v56, v57, "Missing encoding unit for %@", v58, 0xCu);
        sub_251C223AC(v59, sub_251B32AF4);
        MEMORY[0x25308E2B0](v59, -1, -1);
        MEMORY[0x25308E2B0](v58, -1, -1);
        v55 = v56;
        v56 = v60;
      }

      v61 = type metadata accessor for PBTypedData(0);
      v62 = *(*(v61 - 8) + 56);
      v63 = v61;
      v64 = v72;

      v62(v64, 1, 1, v63);
    }
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v44 = sub_251C70764();
    __swift_project_value_buffer(v44, qword_2813E8130);
    v45 = *v3;
    v74 = *(v3 + 1);
    v46 = v24;

    v47 = MEMORY[0x277D83940];
    sub_251C224C0(&v74, v73, &qword_27F479690, MEMORY[0x277D83940]);
    v48 = sub_251C70744();
    v49 = sub_251C713E4();

    sub_251C22350(&v74, &qword_27F479690, MEMORY[0x277CC88A8], v47);

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      *(v50 + 4) = v46;
      *v51 = v46;
      v52 = v46;
      _os_log_impl(&dword_251A6C000, v48, v49, "%@ is not a quantity type", v50, 0xCu);
      sub_251C223AC(v51, sub_251B32AF4);
      MEMORY[0x25308E2B0](v51, -1, -1);
      MEMORY[0x25308E2B0](v50, -1, -1);
    }

    v53 = type metadata accessor for PBTypedData(0);
    (*(*(v53 - 8) + 56))(v72, 1, 1, v53);
  }
}

uint64_t sub_251C21500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_251C702E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(*a2 + 56);
  sub_251BF2844(v10);
  v19 = v10;
  v12 = sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, v18, v11);
  (*(v7 + 8))(v10, v6);
  if (*(v12 + 16))
  {
    sub_251C222E8(a1, a3, type metadata accessor for PBTypedData);
    v13 = sub_251BFAE40(v12);

    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    *(a3 + *(Output + 20)) = v13;
    v15 = (a3 + *(Output + 24));
    *v15 = 0;
    v15[1] = 0;
    return (*(*(Output - 8) + 56))(a3, 0, 1, Output);
  }

  else
  {

    v17 = type metadata accessor for ClinicalSharingQueryOutput(0);
    return (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }
}

uint64_t sub_251C216E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a4;
  v37 = a3;
  v32 = a2;
  v33 = MEMORY[0x277CC88A8];
  v34 = a5;
  v31 = MEMORY[0x277D83D88];
  sub_251C22278(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = sub_251C70014();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  MEMORY[0x28223BE20](v18);
  v19 = sub_251C6FAE4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [a1 startDate];
  sub_251C6FFE4();

  v35 = a1;
  v25 = [a1 endDate];
  sub_251C6FFE4();

  v26 = v32;
  sub_251C6FA94();
  v27 = v31;
  sub_251C224C0(v26, v10, &qword_27F478D90, v31);
  v39 = v23;
  sub_251C1FCBC(sub_251C2253C, v38, v13);
  sub_251C22350(v10, &qword_27F478D90, v33, v27);
  v28 = *(v20 + 48);
  if (v28(v13, 1, v19) == 1)
  {
    (*(v20 + 16))(v15, v23, v19);
    if (v28(v13, 1, v19) != 1)
    {
      sub_251C22350(v13, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
    }
  }

  else
  {
    (*(v20 + 32))(v15, v13, v19);
  }

  (*(v20 + 56))(v15, 0, 1, v19);
  sub_251C22568(v15, v26);
  sub_251C21AAC(v35, v36, v34);
  return (*(v20 + 8))(v23, v19);
}

uint64_t sub_251C21AAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_251C70014();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0xE000000000000000;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0xE000000000000000;
  *(a3 + 80) = 0u;
  v12 = MEMORY[0x277D84F90];
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0;
  *(a3 + 120) = v12;
  *(a3 + 128) = 0;
  *(a3 + 136) = 256;
  v13 = a3 + *(type metadata accessor for PBTimeSeries.Value(0) + 80);
  sub_251C703A4();
  v14 = [a1 minimumQuantity];
  if (v14)
  {
    v15 = v14;
    [v14 doubleValueForUnit_];
    v17 = v16;

    *(a3 + 80) = v17;
  }

  v18 = [a1 maximumQuantity];
  if (v18)
  {
    v19 = v18;
    [v18 doubleValueForUnit_];
    v21 = v20;

    *(a3 + 88) = v21;
  }

  v22 = [a1 averageQuantity];
  if (v22)
  {
    v23 = v22;
    [v22 doubleValueForUnit_];
    v25 = v24;

    *(a3 + 96) = v25;
  }

  v26 = [a1 sumQuantity];
  if (v26)
  {
    v27 = v26;
    [v26 doubleValueForUnit_];
    v29 = v28;

    *(a3 + 104) = v29;
  }

  result = [a1 dataCount];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *(a3 + 40) = result;
    v31 = [a1 startDate];
    sub_251C6FFE4();

    v32 = *(*v3 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v33 = sub_251C6FF94();
    v34 = [v32 stringFromDate_];

    v35 = sub_251C70F14();
    v37 = v36;

    result = (*(v8 + 8))(v11, v7);
    *(a3 + 24) = v35;
    *(a3 + 32) = v37;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_251C21D7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 statisticsCount];
  v7 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v7;
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v7 + 24) >> 1)
  {
    if (*(v7 + 16) <= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = *(v7 + 16);
    }

    sub_251C0B6CC(isUniquelyReferenced_nonNull_native, v9, 0);
  }

  v10 = swift_allocObject();
  v10[2] = &v17;
  v10[3] = a1;
  v10[4] = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_251C2240C;
  *(v11 + 24) = v10;
  aBlock[4] = sub_251C22418;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251C22090;
  aBlock[3] = &block_descriptor_20;
  v12 = _Block_copy(aBlock);

  [v3 enumeratePopulatedStatisticsWithBlock_];
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v15 = v17;

    return v15;
  }

  return result;
}

uint64_t sub_251C21F38(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v7 = type metadata accessor for PBTimeSeries.Value(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(a1);
  v12 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_251C0B6CC(0, *(v12 + 16) + 1, 1);
    v12 = *a3;
  }

  v15 = *(v12 + 16);
  v14 = *(v12 + 24);
  if (v15 >= v14 >> 1)
  {
    sub_251C0B6CC(v14 > 1, v15 + 1, 1);
    v12 = *a3;
  }

  *(v12 + 16) = v15 + 1;
  return sub_251C22458(v11, v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, type metadata accessor for PBTimeSeries.Value);
}

void sub_251C22090(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

void sub_251C2210C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_251B0DD74();
    a3(255);
    sub_251C22230(&qword_27F479E30, sub_251B0DD74);
    v5 = sub_251C70784();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t objectdestroyTm_10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_251C22230(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251C22278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251C222E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C22350(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_251C22278(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_251C223AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251C22418()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251C22458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251C224C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_251C22278(0, a3, MEMORY[0x277CC88A8], a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251C22568(uint64_t a1, uint64_t a2)
{
  sub_251C22278(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_251C225FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C4C774(MEMORY[0x277D84F90]);
  v45 = a1;
  v5 = (*(a2 + 16))(a1, a2);
  v6 = 0;
  v7 = v5 + 64;
  v47 = v5 + 64;
  v48 = v5;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  v46 = a2;
  while (v10)
  {
    v15 = v6;
LABEL_17:
    v18 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v19 = v18 | (v15 << 6);
    v20 = (*(v48 + 48) + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    sub_251A823B4(*(v48 + 56) + 40 * v19, v49);
    *&v50 = v22;
    *(&v50 + 1) = v21;
    sub_251A7E8D8(v49, &v51);

LABEL_18:
    v54 = v50;
    v55[0] = v51;
    v55[1] = v52;
    v56 = v53;
    v23 = *(&v50 + 1);
    if (!*(&v50 + 1))
    {

      return v4;
    }

    v24 = v54;
    sub_251A7E8D8(v55, &v50);
    v25 = *(&v51 + 1);
    v26 = v52;
    __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
    if ((*(v26 + 16))(v25, v26) & 1) == 0 || ((*(v46 + 24))(v45))
    {
      v27 = *(&v51 + 1);
      v28 = v52;
      __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
      v29 = (*(v28 + 8))(v27, v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v49[0] = v4;
      v31 = v24;
      v32 = sub_251AC8C58(v24, v23);
      v34 = v4[2];
      v35 = (v33 & 1) == 0;
      v36 = __OFADD__(v34, v35);
      v37 = v34 + v35;
      if (v36)
      {
        goto LABEL_35;
      }

      v38 = v33;
      if (v4[3] >= v37)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_26;
        }

        v43 = v32;
        sub_251ACF864();
        v32 = v43;
        if (v38)
        {
          goto LABEL_4;
        }

LABEL_27:
        v4 = *&v49[0];
        *(*&v49[0] + 8 * (v32 >> 6) + 64) |= 1 << v32;
        v40 = (v4[6] + 16 * v32);
        *v40 = v31;
        v40[1] = v23;
        *(v4[7] + 8 * v32) = v29;
        v41 = v4[2];
        v36 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v36)
        {
          goto LABEL_36;
        }

        v4[2] = v42;
      }

      else
      {
        sub_251ACC740(v37, isUniquelyReferenced_nonNull_native);
        v32 = sub_251AC8C58(v31, v23);
        if ((v38 & 1) != (v39 & 1))
        {
          goto LABEL_37;
        }

LABEL_26:
        if ((v38 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_4:
        v12 = v32;

        v4 = *&v49[0];
        v13 = *(*&v49[0] + 56);
        v14 = *(v13 + 8 * v12);
        *(v13 + 8 * v12) = v29;
      }

      v7 = v47;
      goto LABEL_6;
    }

LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(&v50);
  }

  if (v11 <= v6 + 1)
  {
    v16 = v6 + 1;
  }

  else
  {
    v16 = v11;
  }

  v17 = v16 - 1;
  while (1)
  {
    v15 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      v10 = 0;
      v53 = 0;
      v51 = 0u;
      v52 = 0u;
      v6 = v17;
      v50 = 0u;
      goto LABEL_18;
    }

    v10 = *(v7 + 8 * v15);
    ++v6;
    if (v10)
    {
      v6 = v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_251C71A14();
  __break(1u);
  return result;
}