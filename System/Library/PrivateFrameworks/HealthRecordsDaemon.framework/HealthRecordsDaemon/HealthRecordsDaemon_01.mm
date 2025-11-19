void sub_251A86338()
{
  sub_251A85F5C(319, &qword_27F478ED0, type metadata accessor for PBReference, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_251A86440(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251A8648C()
{
  sub_251A85F5C(319, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      sub_251A85F5C(319, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_251A865B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBECGMeta(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_251A6F070);
}

uint64_t sub_251A86608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PBECGMeta(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_251A6F11C);
}

uint64_t sub_251A86678(uint64_t a1)
{
  result = type metadata accessor for PBECGMeta(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_251A86720(uint64_t a1, uint64_t a2)
{
  sub_251A9FE94(0, &qword_27F479118, type metadata accessor for PBReference.OneOf_Metadata);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v11 - v7;
  v9 = *(v6 + 56);
  sub_251AA005C(a1, &v11 - v7, type metadata accessor for PBReference.OneOf_Metadata);
  sub_251AA005C(a2, &v8[v9], type metadata accessor for PBReference.OneOf_Metadata);
  LOBYTE(a2) = sub_251B8DAA4(v8, &v8[v9]);
  sub_251A9D3AC(&v8[v9], type metadata accessor for PBECGMeta);
  sub_251A9D3AC(v8, type metadata accessor for PBECGMeta);
  return a2 & 1;
}

uint64_t sub_251A86844()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_251C704D4();
    }
  }

  return result;
}

uint64_t sub_251A868B4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    if (v2 == v2 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_251C70624();
    if (v1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v6 = v0 + *(type metadata accessor for PBRawData(0) + 20);
  return sub_251C70394();
}

uint64_t (*sub_251A8699C(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_251A869D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251A932D4(&qword_27F478F80, type metadata accessor for PBRawData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251A86A78(uint64_t a1)
{
  v2 = sub_251A932D4(&qword_27F478F68, type metadata accessor for PBRawData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251A86AE4()
{
  sub_251A932D4(&qword_27F478F68, type metadata accessor for PBRawData);

  return sub_251C705C4();
}

uint64_t sub_251A86B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_251A9D1F0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_251C703B4();
  sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251A86C0C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1B08);
  __swift_project_value_buffer(v0, qword_27F4A1B08);
  sub_251A85F5C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_251C747E0;
  v5 = v45 + v4;
  v6 = v45 + v4 + *(v2 + 56);
  *(v45 + v4) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v45 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "date_range";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v45 + v4 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "time_series";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v9();
  v14 = (v45 + v4 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "category_series";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v9();
  v16 = (v45 + v4 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "workout";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v9();
  v18 = (v45 + v4 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "characteristics";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v9();
  v20 = (v45 + v4 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 7;
  *v21 = "record";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v9();
  v22 = (v45 + v4 + 7 * v3);
  v23 = v22 + *(v2 + 56);
  *v22 = 13;
  *v23 = "ecgs";
  *(v23 + 1) = 4;
  v23[16] = 2;
  v9();
  v24 = v45 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 14;
  *v24 = "cycleTracking";
  *(v24 + 8) = 13;
  *(v24 + 16) = 2;
  v9();
  v25 = (v45 + v4 + 9 * v3);
  v26 = v25 + *(v2 + 56);
  *v25 = 15;
  *v26 = "ecg";
  *(v26 + 1) = 3;
  v26[16] = 2;
  v9();
  v27 = (v45 + v4 + 10 * v3);
  v28 = v27 + *(v2 + 56);
  *v27 = 16;
  *v28 = "activitySummaries";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v9();
  v29 = (v45 + v4 + 11 * v3);
  v30 = v29 + *(v2 + 56);
  *v29 = 17;
  *v30 = "patient_meta";
  *(v30 + 1) = 12;
  v30[16] = 2;
  v9();
  v31 = (v45 + v4 + 12 * v3);
  v32 = v31 + *(v2 + 56);
  *v31 = 18;
  *v32 = "sleep_summary";
  *(v32 + 1) = 13;
  v32[16] = 2;
  v9();
  v33 = (v45 + v4 + 13 * v3);
  v34 = v33 + *(v2 + 56);
  *v33 = 19;
  *v34 = "sleep_series";
  *(v34 + 1) = 12;
  v34[16] = 2;
  v9();
  v35 = (v45 + v4 + 14 * v3);
  v36 = v35 + *(v2 + 56);
  *v35 = 20;
  *v36 = "histogram_series";
  *(v36 + 1) = 16;
  v36[16] = 2;
  v9();
  v37 = (v45 + v4 + 15 * v3);
  v38 = v37 + *(v2 + 56);
  *v37 = 21;
  *v38 = "medication_trackings";
  *(v38 + 1) = 20;
  v38[16] = 2;
  v9();
  v39 = v45 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 22;
  *v39 = "medication_tracking_dose_events";
  *(v39 + 8) = 31;
  *(v39 + 16) = 2;
  v9();
  v40 = (v45 + v4 + 17 * v3);
  v41 = v40 + *(v2 + 56);
  *v40 = 23;
  *v41 = "medication_tracking_schedules";
  *(v41 + 1) = 29;
  v41[16] = 2;
  v9();
  v42 = (v45 + v4 + 18 * v3);
  v43 = v42 + *(v2 + 56);
  *v42 = 24;
  *v43 = "active_medications";
  *(v43 + 1) = 18;
  v43[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251A87218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_251A9D358();
          sub_251C70494();
          break;
        case 2:
          sub_251A874D0();
          break;
        case 3:
          sub_251A87584(v5, a1, a2, a3);
          break;
        case 4:
          sub_251A87BD0(v5, a1, a2, a3);
          break;
        case 5:
          sub_251A8822C(v5, a1, a2, a3);
          break;
        case 6:
          sub_251A88888(v5, a1, a2, a3);
          break;
        case 7:
          sub_251A88EE4(v5, a1, a2, a3);
          break;
        case 13:
          sub_251A89540(v5, a1, a2, a3);
          break;
        case 14:
          sub_251A89B9C(v5, a1, a2, a3);
          break;
        case 15:
          sub_251A8A1F8(v5, a1, a2, a3);
          break;
        case 16:
          sub_251A8A854(v5, a1, a2, a3);
          break;
        case 17:
          sub_251A8AEB0(v5, a1, a2, a3);
          break;
        case 18:
          sub_251A8B50C(v5, a1, a2, a3);
          break;
        case 19:
          sub_251A8BB68(v5, a1, a2, a3);
          break;
        case 20:
          sub_251A8C1C4(v5, a1, a2, a3);
          break;
        case 21:
          sub_251A8C820(v5, a1, a2, a3);
          break;
        case 22:
          sub_251A8CE7C(v5, a1, a2, a3);
          break;
        case 23:
          sub_251A8D4D8(v5, a1, a2, a3);
          break;
        case 24:
          sub_251A8DB34(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251A874D0()
{
  v0 = *(type metadata accessor for PBTypedData(0) + 28);
  type metadata accessor for PBDateRange(0);
  sub_251A932D4(&qword_27F479038, type metadata accessor for PBDateRange);
  return sub_251C70564();
}

uint64_t sub_251A87584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for PBTimeSeries(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v10 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_251A85F5C(0, &qword_27F479040, type metadata accessor for PBTimeSeries, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v45 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v30 = v4;
  v31 = v29;
  v29(&v40 - v27, 1, 1, v30);
  v40 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v52 + v40, v14, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v41 = v16;
  v42 = (*(v16 + 48))(v14, 1, v15);
  if (v42 == 1)
  {
    sub_251A9FFEC(v14, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
LABEL_5:
    v32 = v48;
    goto LABEL_6;
  }

  sub_251A9D40C(v14, v22, type metadata accessor for PBTypedData.OneOf_Raw);
  sub_251A9D40C(v22, v20, type metadata accessor for PBTypedData.OneOf_Raw);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_251A9D3AC(v20, type metadata accessor for PBTypedData.OneOf_Raw);
    goto LABEL_5;
  }

  sub_251A9FFEC(v28, &qword_27F479040, type metadata accessor for PBTimeSeries);
  v36 = v43;
  sub_251A9D40C(v20, v43, type metadata accessor for PBTimeSeries);
  sub_251A9D40C(v36, v28, type metadata accessor for PBTimeSeries);
  v32 = v48;
  v31(v28, 0, 1, v48);
LABEL_6:
  v33 = v46;
  sub_251A932D4(&qword_27F478FB0, type metadata accessor for PBTimeSeries);
  v34 = v47;
  sub_251C70564();
  if (v34)
  {
    return sub_251A9FFEC(v28, &qword_27F479040, type metadata accessor for PBTimeSeries);
  }

  sub_251A9FF6C(v28, v33, &qword_27F479040, type metadata accessor for PBTimeSeries);
  if ((*(v45 + 48))(v33, 1, v32) == 1)
  {
    sub_251A9FFEC(v28, &qword_27F479040, type metadata accessor for PBTimeSeries);
    return sub_251A9FFEC(v33, &qword_27F479040, type metadata accessor for PBTimeSeries);
  }

  else
  {
    v37 = v44;
    sub_251A9D40C(v33, v44, type metadata accessor for PBTimeSeries);
    if (v42 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v28, &qword_27F479040, type metadata accessor for PBTimeSeries);
    v38 = v52;
    v39 = v40;
    sub_251A9FFEC(v52 + v40, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v37, v38 + v39, type metadata accessor for PBTimeSeries);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v38 + v39, 0, 1, v15);
  }
}

uint64_t sub_251A87BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for PBCategorySeries(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for PBTypedData.OneOf_Raw;
  v10 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_251A85F5C(0, &qword_27F479048, type metadata accessor for PBCategorySeries, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v52 + v41, v14, qword_2813E6C90, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251A9FFEC(v14, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_251A9D40C(v14, v22, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v22, v20, type metadata accessor for PBTypedData.OneOf_Raw);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_251A9FFEC(v28, &qword_27F479048, type metadata accessor for PBCategorySeries);
      v33 = v43;
      sub_251A9D40C(v20, v43, type metadata accessor for PBCategorySeries);
      sub_251A9D40C(v33, v28, type metadata accessor for PBCategorySeries);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_251A9D3AC(v20, type metadata accessor for PBTypedData.OneOf_Raw);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_251A932D4(&qword_27F478FB8, type metadata accessor for PBCategorySeries);
  v35 = v47;
  sub_251C70564();
  if (v35)
  {
    return sub_251A9FFEC(v28, &qword_27F479048, type metadata accessor for PBCategorySeries);
  }

  sub_251A9FF6C(v28, v34, &qword_27F479048, type metadata accessor for PBCategorySeries);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251A9FFEC(v28, &qword_27F479048, type metadata accessor for PBCategorySeries);
    return sub_251A9FFEC(v34, &qword_27F479048, type metadata accessor for PBCategorySeries);
  }

  else
  {
    v37 = v42;
    sub_251A9D40C(v34, v42, type metadata accessor for PBCategorySeries);
    if (v30 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v28, &qword_27F479048, type metadata accessor for PBCategorySeries);
    v38 = v52;
    v39 = v41;
    sub_251A9FFEC(v52 + v41, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v37, v38 + v39, type metadata accessor for PBCategorySeries);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251A8822C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for PBWorkout(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for PBTypedData.OneOf_Raw;
  v10 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_251A85F5C(0, &qword_27F479050, type metadata accessor for PBWorkout, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v52 + v41, v14, qword_2813E6C90, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251A9FFEC(v14, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_251A9D40C(v14, v22, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v22, v20, type metadata accessor for PBTypedData.OneOf_Raw);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_251A9FFEC(v28, &qword_27F479050, type metadata accessor for PBWorkout);
      v33 = v43;
      sub_251A9D40C(v20, v43, type metadata accessor for PBWorkout);
      sub_251A9D40C(v33, v28, type metadata accessor for PBWorkout);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_251A9D3AC(v20, type metadata accessor for PBTypedData.OneOf_Raw);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_251A932D4(&qword_27F478FC0, type metadata accessor for PBWorkout);
  v35 = v47;
  sub_251C70564();
  if (v35)
  {
    return sub_251A9FFEC(v28, &qword_27F479050, type metadata accessor for PBWorkout);
  }

  sub_251A9FF6C(v28, v34, &qword_27F479050, type metadata accessor for PBWorkout);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251A9FFEC(v28, &qword_27F479050, type metadata accessor for PBWorkout);
    return sub_251A9FFEC(v34, &qword_27F479050, type metadata accessor for PBWorkout);
  }

  else
  {
    v37 = v42;
    sub_251A9D40C(v34, v42, type metadata accessor for PBWorkout);
    if (v30 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v28, &qword_27F479050, type metadata accessor for PBWorkout);
    v38 = v52;
    v39 = v41;
    sub_251A9FFEC(v52 + v41, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v37, v38 + v39, type metadata accessor for PBWorkout);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251A88888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for PBCharacteristics(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for PBTypedData.OneOf_Raw;
  v10 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_251A85F5C(0, &qword_27F479058, type metadata accessor for PBCharacteristics, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v52 + v41, v14, qword_2813E6C90, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251A9FFEC(v14, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_251A9D40C(v14, v22, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v22, v20, type metadata accessor for PBTypedData.OneOf_Raw);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_251A9FFEC(v28, &qword_27F479058, type metadata accessor for PBCharacteristics);
      v33 = v43;
      sub_251A9D40C(v20, v43, type metadata accessor for PBCharacteristics);
      sub_251A9D40C(v33, v28, type metadata accessor for PBCharacteristics);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_251A9D3AC(v20, type metadata accessor for PBTypedData.OneOf_Raw);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_251A932D4(&qword_27F478FC8, type metadata accessor for PBCharacteristics);
  v35 = v47;
  sub_251C70564();
  if (v35)
  {
    return sub_251A9FFEC(v28, &qword_27F479058, type metadata accessor for PBCharacteristics);
  }

  sub_251A9FF6C(v28, v34, &qword_27F479058, type metadata accessor for PBCharacteristics);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251A9FFEC(v28, &qword_27F479058, type metadata accessor for PBCharacteristics);
    return sub_251A9FFEC(v34, &qword_27F479058, type metadata accessor for PBCharacteristics);
  }

  else
  {
    v37 = v42;
    sub_251A9D40C(v34, v42, type metadata accessor for PBCharacteristics);
    if (v30 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v28, &qword_27F479058, type metadata accessor for PBCharacteristics);
    v38 = v52;
    v39 = v41;
    sub_251A9FFEC(v52 + v41, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v37, v38 + v39, type metadata accessor for PBCharacteristics);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251A88EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for PBAllClinicalRecords(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for PBTypedData.OneOf_Raw;
  v10 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_251A85F5C(0, &qword_27F479060, type metadata accessor for PBAllClinicalRecords, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v52 + v41, v14, qword_2813E6C90, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251A9FFEC(v14, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_251A9D40C(v14, v22, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v22, v20, type metadata accessor for PBTypedData.OneOf_Raw);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_251A9FFEC(v28, &qword_27F479060, type metadata accessor for PBAllClinicalRecords);
      v33 = v43;
      sub_251A9D40C(v20, v43, type metadata accessor for PBAllClinicalRecords);
      sub_251A9D40C(v33, v28, type metadata accessor for PBAllClinicalRecords);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_251A9D3AC(v20, type metadata accessor for PBTypedData.OneOf_Raw);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_251A932D4(&qword_27F478FD0, type metadata accessor for PBAllClinicalRecords);
  v35 = v47;
  sub_251C70564();
  if (v35)
  {
    return sub_251A9FFEC(v28, &qword_27F479060, type metadata accessor for PBAllClinicalRecords);
  }

  sub_251A9FF6C(v28, v34, &qword_27F479060, type metadata accessor for PBAllClinicalRecords);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251A9FFEC(v28, &qword_27F479060, type metadata accessor for PBAllClinicalRecords);
    return sub_251A9FFEC(v34, &qword_27F479060, type metadata accessor for PBAllClinicalRecords);
  }

  else
  {
    v37 = v42;
    sub_251A9D40C(v34, v42, type metadata accessor for PBAllClinicalRecords);
    if (v30 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v28, &qword_27F479060, type metadata accessor for PBAllClinicalRecords);
    v38 = v52;
    v39 = v41;
    sub_251A9FFEC(v52 + v41, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v37, v38 + v39, type metadata accessor for PBAllClinicalRecords);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251A89540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for PBECGs(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for PBTypedData.OneOf_Raw;
  v10 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_251A85F5C(0, &qword_27F479068, type metadata accessor for PBECGs, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v52 + v41, v14, qword_2813E6C90, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251A9FFEC(v14, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_251A9D40C(v14, v22, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v22, v20, type metadata accessor for PBTypedData.OneOf_Raw);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_251A9FFEC(v28, &qword_27F479068, type metadata accessor for PBECGs);
      v33 = v43;
      sub_251A9D40C(v20, v43, type metadata accessor for PBECGs);
      sub_251A9D40C(v33, v28, type metadata accessor for PBECGs);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_251A9D3AC(v20, type metadata accessor for PBTypedData.OneOf_Raw);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_251A932D4(&qword_27F478FD8, type metadata accessor for PBECGs);
  v35 = v47;
  sub_251C70564();
  if (v35)
  {
    return sub_251A9FFEC(v28, &qword_27F479068, type metadata accessor for PBECGs);
  }

  sub_251A9FF6C(v28, v34, &qword_27F479068, type metadata accessor for PBECGs);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251A9FFEC(v28, &qword_27F479068, type metadata accessor for PBECGs);
    return sub_251A9FFEC(v34, &qword_27F479068, type metadata accessor for PBECGs);
  }

  else
  {
    v37 = v42;
    sub_251A9D40C(v34, v42, type metadata accessor for PBECGs);
    if (v30 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v28, &qword_27F479068, type metadata accessor for PBECGs);
    v38 = v52;
    v39 = v41;
    sub_251A9FFEC(v52 + v41, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v37, v38 + v39, type metadata accessor for PBECGs);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251A89B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for PBCycleTracking(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for PBTypedData.OneOf_Raw;
  v10 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_251A85F5C(0, &qword_27F479070, type metadata accessor for PBCycleTracking, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v52 + v41, v14, qword_2813E6C90, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251A9FFEC(v14, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_251A9D40C(v14, v22, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v22, v20, type metadata accessor for PBTypedData.OneOf_Raw);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_251A9FFEC(v28, &qword_27F479070, type metadata accessor for PBCycleTracking);
      v33 = v43;
      sub_251A9D40C(v20, v43, type metadata accessor for PBCycleTracking);
      sub_251A9D40C(v33, v28, type metadata accessor for PBCycleTracking);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_251A9D3AC(v20, type metadata accessor for PBTypedData.OneOf_Raw);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_251A932D4(&qword_27F478FE0, type metadata accessor for PBCycleTracking);
  v35 = v47;
  sub_251C70564();
  if (v35)
  {
    return sub_251A9FFEC(v28, &qword_27F479070, type metadata accessor for PBCycleTracking);
  }

  sub_251A9FF6C(v28, v34, &qword_27F479070, type metadata accessor for PBCycleTracking);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251A9FFEC(v28, &qword_27F479070, type metadata accessor for PBCycleTracking);
    return sub_251A9FFEC(v34, &qword_27F479070, type metadata accessor for PBCycleTracking);
  }

  else
  {
    v37 = v42;
    sub_251A9D40C(v34, v42, type metadata accessor for PBCycleTracking);
    if (v30 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v28, &qword_27F479070, type metadata accessor for PBCycleTracking);
    v38 = v52;
    v39 = v41;
    sub_251A9FFEC(v52 + v41, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v37, v38 + v39, type metadata accessor for PBCycleTracking);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251A8A1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for PBECGMeasurement(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for PBTypedData.OneOf_Raw;
  v10 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_251A85F5C(0, &qword_27F479078, type metadata accessor for PBECGMeasurement, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v52 + v41, v14, qword_2813E6C90, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251A9FFEC(v14, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_251A9D40C(v14, v22, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v22, v20, type metadata accessor for PBTypedData.OneOf_Raw);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_251A9FFEC(v28, &qword_27F479078, type metadata accessor for PBECGMeasurement);
      v33 = v43;
      sub_251A9D40C(v20, v43, type metadata accessor for PBECGMeasurement);
      sub_251A9D40C(v33, v28, type metadata accessor for PBECGMeasurement);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_251A9D3AC(v20, type metadata accessor for PBTypedData.OneOf_Raw);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_251A932D4(&qword_27F478FE8, type metadata accessor for PBECGMeasurement);
  v35 = v47;
  sub_251C70564();
  if (v35)
  {
    return sub_251A9FFEC(v28, &qword_27F479078, type metadata accessor for PBECGMeasurement);
  }

  sub_251A9FF6C(v28, v34, &qword_27F479078, type metadata accessor for PBECGMeasurement);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251A9FFEC(v28, &qword_27F479078, type metadata accessor for PBECGMeasurement);
    return sub_251A9FFEC(v34, &qword_27F479078, type metadata accessor for PBECGMeasurement);
  }

  else
  {
    v37 = v42;
    sub_251A9D40C(v34, v42, type metadata accessor for PBECGMeasurement);
    if (v30 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v28, &qword_27F479078, type metadata accessor for PBECGMeasurement);
    v38 = v52;
    v39 = v41;
    sub_251A9FFEC(v52 + v41, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v37, v38 + v39, type metadata accessor for PBECGMeasurement);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251A8A854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for PBActivitySummarySeries(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for PBTypedData.OneOf_Raw;
  v10 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_251A85F5C(0, &qword_27F479080, type metadata accessor for PBActivitySummarySeries, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v52 + v41, v14, qword_2813E6C90, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251A9FFEC(v14, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_251A9D40C(v14, v22, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v22, v20, type metadata accessor for PBTypedData.OneOf_Raw);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_251A9FFEC(v28, &qword_27F479080, type metadata accessor for PBActivitySummarySeries);
      v33 = v43;
      sub_251A9D40C(v20, v43, type metadata accessor for PBActivitySummarySeries);
      sub_251A9D40C(v33, v28, type metadata accessor for PBActivitySummarySeries);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_251A9D3AC(v20, type metadata accessor for PBTypedData.OneOf_Raw);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_251A932D4(&qword_27F478FF0, type metadata accessor for PBActivitySummarySeries);
  v35 = v47;
  sub_251C70564();
  if (v35)
  {
    return sub_251A9FFEC(v28, &qword_27F479080, type metadata accessor for PBActivitySummarySeries);
  }

  sub_251A9FF6C(v28, v34, &qword_27F479080, type metadata accessor for PBActivitySummarySeries);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251A9FFEC(v28, &qword_27F479080, type metadata accessor for PBActivitySummarySeries);
    return sub_251A9FFEC(v34, &qword_27F479080, type metadata accessor for PBActivitySummarySeries);
  }

  else
  {
    v37 = v42;
    sub_251A9D40C(v34, v42, type metadata accessor for PBActivitySummarySeries);
    if (v30 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v28, &qword_27F479080, type metadata accessor for PBActivitySummarySeries);
    v38 = v52;
    v39 = v41;
    sub_251A9FFEC(v52 + v41, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v37, v38 + v39, type metadata accessor for PBActivitySummarySeries);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251A8AEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for PBPatientMeta(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for PBTypedData.OneOf_Raw;
  v10 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_251A85F5C(0, &qword_27F479088, type metadata accessor for PBPatientMeta, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v52 + v41, v14, qword_2813E6C90, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251A9FFEC(v14, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_251A9D40C(v14, v22, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v22, v20, type metadata accessor for PBTypedData.OneOf_Raw);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_251A9FFEC(v28, &qword_27F479088, type metadata accessor for PBPatientMeta);
      v33 = v43;
      sub_251A9D40C(v20, v43, type metadata accessor for PBPatientMeta);
      sub_251A9D40C(v33, v28, type metadata accessor for PBPatientMeta);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_251A9D3AC(v20, type metadata accessor for PBTypedData.OneOf_Raw);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_251A932D4(&qword_27F478FF8, type metadata accessor for PBPatientMeta);
  v35 = v47;
  sub_251C70564();
  if (v35)
  {
    return sub_251A9FFEC(v28, &qword_27F479088, type metadata accessor for PBPatientMeta);
  }

  sub_251A9FF6C(v28, v34, &qword_27F479088, type metadata accessor for PBPatientMeta);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251A9FFEC(v28, &qword_27F479088, type metadata accessor for PBPatientMeta);
    return sub_251A9FFEC(v34, &qword_27F479088, type metadata accessor for PBPatientMeta);
  }

  else
  {
    v37 = v42;
    sub_251A9D40C(v34, v42, type metadata accessor for PBPatientMeta);
    if (v30 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v28, &qword_27F479088, type metadata accessor for PBPatientMeta);
    v38 = v52;
    v39 = v41;
    sub_251A9FFEC(v52 + v41, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v37, v38 + v39, type metadata accessor for PBPatientMeta);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251A8B50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for PBSleepSummary(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for PBTypedData.OneOf_Raw;
  v10 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_251A85F5C(0, &qword_27F479090, type metadata accessor for PBSleepSummary, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v52 + v41, v14, qword_2813E6C90, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251A9FFEC(v14, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_251A9D40C(v14, v22, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v22, v20, type metadata accessor for PBTypedData.OneOf_Raw);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_251A9FFEC(v28, &qword_27F479090, type metadata accessor for PBSleepSummary);
      v33 = v43;
      sub_251A9D40C(v20, v43, type metadata accessor for PBSleepSummary);
      sub_251A9D40C(v33, v28, type metadata accessor for PBSleepSummary);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_251A9D3AC(v20, type metadata accessor for PBTypedData.OneOf_Raw);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_251A932D4(&qword_27F479000, type metadata accessor for PBSleepSummary);
  v35 = v47;
  sub_251C70564();
  if (v35)
  {
    return sub_251A9FFEC(v28, &qword_27F479090, type metadata accessor for PBSleepSummary);
  }

  sub_251A9FF6C(v28, v34, &qword_27F479090, type metadata accessor for PBSleepSummary);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251A9FFEC(v28, &qword_27F479090, type metadata accessor for PBSleepSummary);
    return sub_251A9FFEC(v34, &qword_27F479090, type metadata accessor for PBSleepSummary);
  }

  else
  {
    v37 = v42;
    sub_251A9D40C(v34, v42, type metadata accessor for PBSleepSummary);
    if (v30 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v28, &qword_27F479090, type metadata accessor for PBSleepSummary);
    v38 = v52;
    v39 = v41;
    sub_251A9FFEC(v52 + v41, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v37, v38 + v39, type metadata accessor for PBSleepSummary);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251A8BB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for PBSleepSeries(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for PBTypedData.OneOf_Raw;
  v10 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_251A85F5C(0, &qword_27F479098, type metadata accessor for PBSleepSeries, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v52 + v41, v14, qword_2813E6C90, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251A9FFEC(v14, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_251A9D40C(v14, v22, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v22, v20, type metadata accessor for PBTypedData.OneOf_Raw);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_251A9FFEC(v28, &qword_27F479098, type metadata accessor for PBSleepSeries);
      v33 = v43;
      sub_251A9D40C(v20, v43, type metadata accessor for PBSleepSeries);
      sub_251A9D40C(v33, v28, type metadata accessor for PBSleepSeries);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_251A9D3AC(v20, type metadata accessor for PBTypedData.OneOf_Raw);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_251A932D4(&qword_27F479008, type metadata accessor for PBSleepSeries);
  v35 = v47;
  sub_251C70564();
  if (v35)
  {
    return sub_251A9FFEC(v28, &qword_27F479098, type metadata accessor for PBSleepSeries);
  }

  sub_251A9FF6C(v28, v34, &qword_27F479098, type metadata accessor for PBSleepSeries);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251A9FFEC(v28, &qword_27F479098, type metadata accessor for PBSleepSeries);
    return sub_251A9FFEC(v34, &qword_27F479098, type metadata accessor for PBSleepSeries);
  }

  else
  {
    v37 = v42;
    sub_251A9D40C(v34, v42, type metadata accessor for PBSleepSeries);
    if (v30 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v28, &qword_27F479098, type metadata accessor for PBSleepSeries);
    v38 = v52;
    v39 = v41;
    sub_251A9FFEC(v52 + v41, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v37, v38 + v39, type metadata accessor for PBSleepSeries);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251A8C1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for PBHistogramSeries(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for PBTypedData.OneOf_Raw;
  v10 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_251A85F5C(0, &qword_27F4790A0, type metadata accessor for PBHistogramSeries, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v52 + v41, v14, qword_2813E6C90, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251A9FFEC(v14, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_251A9D40C(v14, v22, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v22, v20, type metadata accessor for PBTypedData.OneOf_Raw);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_251A9FFEC(v28, &qword_27F4790A0, type metadata accessor for PBHistogramSeries);
      v33 = v43;
      sub_251A9D40C(v20, v43, type metadata accessor for PBHistogramSeries);
      sub_251A9D40C(v33, v28, type metadata accessor for PBHistogramSeries);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_251A9D3AC(v20, type metadata accessor for PBTypedData.OneOf_Raw);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_251A932D4(&qword_27F479010, type metadata accessor for PBHistogramSeries);
  v35 = v47;
  sub_251C70564();
  if (v35)
  {
    return sub_251A9FFEC(v28, &qword_27F4790A0, type metadata accessor for PBHistogramSeries);
  }

  sub_251A9FF6C(v28, v34, &qword_27F4790A0, type metadata accessor for PBHistogramSeries);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251A9FFEC(v28, &qword_27F4790A0, type metadata accessor for PBHistogramSeries);
    return sub_251A9FFEC(v34, &qword_27F4790A0, type metadata accessor for PBHistogramSeries);
  }

  else
  {
    v37 = v42;
    sub_251A9D40C(v34, v42, type metadata accessor for PBHistogramSeries);
    if (v30 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v28, &qword_27F4790A0, type metadata accessor for PBHistogramSeries);
    v38 = v52;
    v39 = v41;
    sub_251A9FFEC(v52 + v41, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v37, v38 + v39, type metadata accessor for PBHistogramSeries);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251A8C820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for PBMedicationTrackings(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for PBTypedData.OneOf_Raw;
  v10 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_251A85F5C(0, &qword_27F4790A8, type metadata accessor for PBMedicationTrackings, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v52 + v41, v14, qword_2813E6C90, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251A9FFEC(v14, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_251A9D40C(v14, v22, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v22, v20, type metadata accessor for PBTypedData.OneOf_Raw);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_251A9FFEC(v28, &qword_27F4790A8, type metadata accessor for PBMedicationTrackings);
      v33 = v43;
      sub_251A9D40C(v20, v43, type metadata accessor for PBMedicationTrackings);
      sub_251A9D40C(v33, v28, type metadata accessor for PBMedicationTrackings);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_251A9D3AC(v20, type metadata accessor for PBTypedData.OneOf_Raw);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_251A932D4(&qword_27F479018, type metadata accessor for PBMedicationTrackings);
  v35 = v47;
  sub_251C70564();
  if (v35)
  {
    return sub_251A9FFEC(v28, &qword_27F4790A8, type metadata accessor for PBMedicationTrackings);
  }

  sub_251A9FF6C(v28, v34, &qword_27F4790A8, type metadata accessor for PBMedicationTrackings);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251A9FFEC(v28, &qword_27F4790A8, type metadata accessor for PBMedicationTrackings);
    return sub_251A9FFEC(v34, &qword_27F4790A8, type metadata accessor for PBMedicationTrackings);
  }

  else
  {
    v37 = v42;
    sub_251A9D40C(v34, v42, type metadata accessor for PBMedicationTrackings);
    if (v30 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v28, &qword_27F4790A8, type metadata accessor for PBMedicationTrackings);
    v38 = v52;
    v39 = v41;
    sub_251A9FFEC(v52 + v41, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v37, v38 + v39, type metadata accessor for PBMedicationTrackings);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251A8CE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for PBMedicationTrackingDoseEvents(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for PBTypedData.OneOf_Raw;
  v10 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_251A85F5C(0, &qword_27F4790B0, type metadata accessor for PBMedicationTrackingDoseEvents, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v52 + v41, v14, qword_2813E6C90, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251A9FFEC(v14, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_251A9D40C(v14, v22, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v22, v20, type metadata accessor for PBTypedData.OneOf_Raw);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_251A9FFEC(v28, &qword_27F4790B0, type metadata accessor for PBMedicationTrackingDoseEvents);
      v33 = v43;
      sub_251A9D40C(v20, v43, type metadata accessor for PBMedicationTrackingDoseEvents);
      sub_251A9D40C(v33, v28, type metadata accessor for PBMedicationTrackingDoseEvents);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_251A9D3AC(v20, type metadata accessor for PBTypedData.OneOf_Raw);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_251A932D4(&qword_27F479020, type metadata accessor for PBMedicationTrackingDoseEvents);
  v35 = v47;
  sub_251C70564();
  if (v35)
  {
    return sub_251A9FFEC(v28, &qword_27F4790B0, type metadata accessor for PBMedicationTrackingDoseEvents);
  }

  sub_251A9FF6C(v28, v34, &qword_27F4790B0, type metadata accessor for PBMedicationTrackingDoseEvents);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251A9FFEC(v28, &qword_27F4790B0, type metadata accessor for PBMedicationTrackingDoseEvents);
    return sub_251A9FFEC(v34, &qword_27F4790B0, type metadata accessor for PBMedicationTrackingDoseEvents);
  }

  else
  {
    v37 = v42;
    sub_251A9D40C(v34, v42, type metadata accessor for PBMedicationTrackingDoseEvents);
    if (v30 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v28, &qword_27F4790B0, type metadata accessor for PBMedicationTrackingDoseEvents);
    v38 = v52;
    v39 = v41;
    sub_251A9FFEC(v52 + v41, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v37, v38 + v39, type metadata accessor for PBMedicationTrackingDoseEvents);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251A8D4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for PBMedicationTrackingSchedules(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for PBTypedData.OneOf_Raw;
  v10 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_251A85F5C(0, &qword_27F4790B8, type metadata accessor for PBMedicationTrackingSchedules, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v52 + v41, v14, qword_2813E6C90, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251A9FFEC(v14, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_251A9D40C(v14, v22, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v22, v20, type metadata accessor for PBTypedData.OneOf_Raw);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_251A9FFEC(v28, &qword_27F4790B8, type metadata accessor for PBMedicationTrackingSchedules);
      v33 = v43;
      sub_251A9D40C(v20, v43, type metadata accessor for PBMedicationTrackingSchedules);
      sub_251A9D40C(v33, v28, type metadata accessor for PBMedicationTrackingSchedules);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_251A9D3AC(v20, type metadata accessor for PBTypedData.OneOf_Raw);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_251A932D4(&qword_27F479028, type metadata accessor for PBMedicationTrackingSchedules);
  v35 = v47;
  sub_251C70564();
  if (v35)
  {
    return sub_251A9FFEC(v28, &qword_27F4790B8, type metadata accessor for PBMedicationTrackingSchedules);
  }

  sub_251A9FF6C(v28, v34, &qword_27F4790B8, type metadata accessor for PBMedicationTrackingSchedules);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251A9FFEC(v28, &qword_27F4790B8, type metadata accessor for PBMedicationTrackingSchedules);
    return sub_251A9FFEC(v34, &qword_27F4790B8, type metadata accessor for PBMedicationTrackingSchedules);
  }

  else
  {
    v37 = v42;
    sub_251A9D40C(v34, v42, type metadata accessor for PBMedicationTrackingSchedules);
    if (v30 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v28, &qword_27F4790B8, type metadata accessor for PBMedicationTrackingSchedules);
    v38 = v52;
    v39 = v41;
    sub_251A9FFEC(v52 + v41, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v37, v38 + v39, type metadata accessor for PBMedicationTrackingSchedules);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251A8DB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for PBActiveMedications(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for PBTypedData.OneOf_Raw;
  v10 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_251A85F5C(0, &qword_27F4790C0, type metadata accessor for PBActiveMedications, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251A9FF6C(v52 + v41, v14, qword_2813E6C90, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251A9FFEC(v14, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_251A9D40C(v14, v22, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v22, v20, type metadata accessor for PBTypedData.OneOf_Raw);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_251A9FFEC(v28, &qword_27F4790C0, type metadata accessor for PBActiveMedications);
      v33 = v43;
      sub_251A9D40C(v20, v43, type metadata accessor for PBActiveMedications);
      sub_251A9D40C(v33, v28, type metadata accessor for PBActiveMedications);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_251A9D3AC(v20, type metadata accessor for PBTypedData.OneOf_Raw);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_251A932D4(&qword_27F479030, type metadata accessor for PBActiveMedications);
  v35 = v47;
  sub_251C70564();
  if (v35)
  {
    return sub_251A9FFEC(v28, &qword_27F4790C0, type metadata accessor for PBActiveMedications);
  }

  sub_251A9FF6C(v28, v34, &qword_27F4790C0, type metadata accessor for PBActiveMedications);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251A9FFEC(v28, &qword_27F4790C0, type metadata accessor for PBActiveMedications);
    return sub_251A9FFEC(v34, &qword_27F4790C0, type metadata accessor for PBActiveMedications);
  }

  else
  {
    v37 = v42;
    sub_251A9D40C(v34, v42, type metadata accessor for PBActiveMedications);
    if (v30 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v28, &qword_27F4790C0, type metadata accessor for PBActiveMedications);
    v38 = v52;
    v39 = v41;
    sub_251A9FFEC(v52 + v41, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251A9D40C(v37, v38 + v39, type metadata accessor for PBActiveMedications);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251A8E190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = *v3;
  v14 = *(v5 + 8);
  if (!nullsub_1(v13, v14) || (v19 = v13, v20 = v14, sub_251A9D358(), result = sub_251C70604(), !v4))
  {
    result = sub_251A8E5C0(v5, a1, a2, a3);
    if (!v4)
    {
      v16 = type metadata accessor for PBTypedData(0);
      sub_251A9FF6C(v5 + *(v16 + 20), v12, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
      v17 = type metadata accessor for PBTypedData.OneOf_Raw(0);
      if ((*(*(v17 - 8) + 48))(v12, 1, v17) != 1)
      {
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            sub_251A8EA7C(v5, a1, a2, a3);
            break;
          case 2u:
            sub_251A8ECF0(v5, a1, a2, a3);
            break;
          case 3u:
            sub_251A8EF64(v5, a1, a2, a3);
            break;
          case 4u:
            sub_251A8F1D8(v5, a1, a2, a3);
            break;
          case 5u:
            sub_251A8F44C(v5, a1, a2, a3);
            break;
          case 6u:
            sub_251A8F6C0(v5, a1, a2, a3);
            break;
          case 7u:
            sub_251A8F934(v5, a1, a2, a3);
            break;
          case 8u:
            sub_251A8FBA8(v5, a1, a2, a3);
            break;
          case 9u:
            sub_251A8FE1C(v5, a1, a2, a3);
            break;
          case 0xAu:
            sub_251A90090(v5, a1, a2, a3);
            break;
          case 0xBu:
            sub_251A90304(v5, a1, a2, a3);
            break;
          case 0xCu:
            sub_251A90578(v5, a1, a2, a3);
            break;
          case 0xDu:
            sub_251A907EC(v5, a1, a2, a3);
            break;
          case 0xEu:
            sub_251A90A60(v5, a1, a2, a3);
            break;
          case 0xFu:
            sub_251A90CD4(v5, a1, a2, a3);
            break;
          case 0x10u:
            sub_251A90F48(v5, a1, a2, a3);
            break;
          default:
            sub_251A8E80C(v5, a1, a2, a3);
            break;
        }

        sub_251A9D3AC(v12, type metadata accessor for PBTypedData.OneOf_Raw);
      }

      v18 = v5 + *(v16 + 24);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251A8E5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251A85F5C(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBDateRange(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v14 + 28), v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251A9FFEC(v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251A9D40C(v8, v13, type metadata accessor for PBDateRange);
  sub_251A932D4(&qword_27F479038, type metadata accessor for PBDateRange);
  sub_251C706A4();
  return sub_251A9D3AC(v13, type metadata accessor for PBDateRange);
}

uint64_t sub_251A8E80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBTimeSeries(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v13 + 20), v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v14 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251A9FFEC(v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_251A9D40C(v8, v12, type metadata accessor for PBTimeSeries);
    sub_251A932D4(&qword_27F478FB0, type metadata accessor for PBTimeSeries);
    sub_251C706A4();
    return sub_251A9D3AC(v12, type metadata accessor for PBTimeSeries);
  }

  result = sub_251A9D3AC(v8, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A8EA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBCategorySeries(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v13 + 20), v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v14 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251A9FFEC(v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_251A9D40C(v8, v12, type metadata accessor for PBCategorySeries);
    sub_251A932D4(&qword_27F478FB8, type metadata accessor for PBCategorySeries);
    sub_251C706A4();
    return sub_251A9D3AC(v12, type metadata accessor for PBCategorySeries);
  }

  result = sub_251A9D3AC(v8, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A8ECF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBWorkout(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v13 + 20), v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v14 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251A9FFEC(v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_251A9D40C(v8, v12, type metadata accessor for PBWorkout);
    sub_251A932D4(&qword_27F478FC0, type metadata accessor for PBWorkout);
    sub_251C706A4();
    return sub_251A9D3AC(v12, type metadata accessor for PBWorkout);
  }

  result = sub_251A9D3AC(v8, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A8EF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBCharacteristics(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v13 + 20), v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v14 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251A9FFEC(v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_251A9D40C(v8, v12, type metadata accessor for PBCharacteristics);
    sub_251A932D4(&qword_27F478FC8, type metadata accessor for PBCharacteristics);
    sub_251C706A4();
    return sub_251A9D3AC(v12, type metadata accessor for PBCharacteristics);
  }

  result = sub_251A9D3AC(v8, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A8F1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBAllClinicalRecords(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v13 + 20), v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v14 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251A9FFEC(v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_251A9D40C(v8, v12, type metadata accessor for PBAllClinicalRecords);
    sub_251A932D4(&qword_27F478FD0, type metadata accessor for PBAllClinicalRecords);
    sub_251C706A4();
    return sub_251A9D3AC(v12, type metadata accessor for PBAllClinicalRecords);
  }

  result = sub_251A9D3AC(v8, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A8F44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBECGs(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v13 + 20), v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v14 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251A9FFEC(v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_251A9D40C(v8, v12, type metadata accessor for PBECGs);
    sub_251A932D4(&qword_27F478FD8, type metadata accessor for PBECGs);
    sub_251C706A4();
    return sub_251A9D3AC(v12, type metadata accessor for PBECGs);
  }

  result = sub_251A9D3AC(v8, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A8F6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBCycleTracking(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v13 + 20), v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v14 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251A9FFEC(v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_251A9D40C(v8, v12, type metadata accessor for PBCycleTracking);
    sub_251A932D4(&qword_27F478FE0, type metadata accessor for PBCycleTracking);
    sub_251C706A4();
    return sub_251A9D3AC(v12, type metadata accessor for PBCycleTracking);
  }

  result = sub_251A9D3AC(v8, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A8F934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBECGMeasurement(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v13 + 20), v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v14 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251A9FFEC(v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_251A9D40C(v8, v12, type metadata accessor for PBECGMeasurement);
    sub_251A932D4(&qword_27F478FE8, type metadata accessor for PBECGMeasurement);
    sub_251C706A4();
    return sub_251A9D3AC(v12, type metadata accessor for PBECGMeasurement);
  }

  result = sub_251A9D3AC(v8, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A8FBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBActivitySummarySeries(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v13 + 20), v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v14 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251A9FFEC(v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_251A9D40C(v8, v12, type metadata accessor for PBActivitySummarySeries);
    sub_251A932D4(&qword_27F478FF0, type metadata accessor for PBActivitySummarySeries);
    sub_251C706A4();
    return sub_251A9D3AC(v12, type metadata accessor for PBActivitySummarySeries);
  }

  result = sub_251A9D3AC(v8, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A8FE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBPatientMeta(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v13 + 20), v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v14 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251A9FFEC(v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_251A9D40C(v8, v12, type metadata accessor for PBPatientMeta);
    sub_251A932D4(&qword_27F478FF8, type metadata accessor for PBPatientMeta);
    sub_251C706A4();
    return sub_251A9D3AC(v12, type metadata accessor for PBPatientMeta);
  }

  result = sub_251A9D3AC(v8, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A90090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBSleepSummary(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v13 + 20), v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v14 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251A9FFEC(v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_251A9D40C(v8, v12, type metadata accessor for PBSleepSummary);
    sub_251A932D4(&qword_27F479000, type metadata accessor for PBSleepSummary);
    sub_251C706A4();
    return sub_251A9D3AC(v12, type metadata accessor for PBSleepSummary);
  }

  result = sub_251A9D3AC(v8, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A90304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBSleepSeries(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v13 + 20), v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v14 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251A9FFEC(v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_251A9D40C(v8, v12, type metadata accessor for PBSleepSeries);
    sub_251A932D4(&qword_27F479008, type metadata accessor for PBSleepSeries);
    sub_251C706A4();
    return sub_251A9D3AC(v12, type metadata accessor for PBSleepSeries);
  }

  result = sub_251A9D3AC(v8, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A90578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBHistogramSeries(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v13 + 20), v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v14 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251A9FFEC(v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_251A9D40C(v8, v12, type metadata accessor for PBHistogramSeries);
    sub_251A932D4(&qword_27F479010, type metadata accessor for PBHistogramSeries);
    sub_251C706A4();
    return sub_251A9D3AC(v12, type metadata accessor for PBHistogramSeries);
  }

  result = sub_251A9D3AC(v8, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A907EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBMedicationTrackings(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v13 + 20), v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v14 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251A9FFEC(v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_251A9D40C(v8, v12, type metadata accessor for PBMedicationTrackings);
    sub_251A932D4(&qword_27F479018, type metadata accessor for PBMedicationTrackings);
    sub_251C706A4();
    return sub_251A9D3AC(v12, type metadata accessor for PBMedicationTrackings);
  }

  result = sub_251A9D3AC(v8, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A90A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBMedicationTrackingDoseEvents(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v13 + 20), v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v14 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251A9FFEC(v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_251A9D40C(v8, v12, type metadata accessor for PBMedicationTrackingDoseEvents);
    sub_251A932D4(&qword_27F479020, type metadata accessor for PBMedicationTrackingDoseEvents);
    sub_251C706A4();
    return sub_251A9D3AC(v12, type metadata accessor for PBMedicationTrackingDoseEvents);
  }

  result = sub_251A9D3AC(v8, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A90CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBMedicationTrackingSchedules(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v13 + 20), v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v14 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251A9FFEC(v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_251A9D40C(v8, v12, type metadata accessor for PBMedicationTrackingSchedules);
    sub_251A932D4(&qword_27F479028, type metadata accessor for PBMedicationTrackingSchedules);
    sub_251C706A4();
    return sub_251A9D3AC(v12, type metadata accessor for PBMedicationTrackingSchedules);
  }

  result = sub_251A9D3AC(v8, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A90F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBActiveMedications(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTypedData(0);
  sub_251A9FF6C(a1 + *(v13 + 20), v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v14 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_251A9FFEC(v8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_251A9D40C(v8, v12, type metadata accessor for PBActiveMedications);
    sub_251A932D4(&qword_27F479030, type metadata accessor for PBActiveMedications);
    sub_251C706A4();
    return sub_251A9D3AC(v12, type metadata accessor for PBActiveMedications);
  }

  result = sub_251A9D3AC(v8, type metadata accessor for PBTypedData.OneOf_Raw);
  __break(1u);
  return result;
}

uint64_t sub_251A911C0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a1[5];
  v5 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + a1[6];
  sub_251C703A4();
  v7 = a1[7];
  v8 = type metadata accessor for PBDateRange(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_251A912B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251A91328(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_251A9139C(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_251A913F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251A932D4(&qword_27F478FA0, type metadata accessor for PBTypedData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251A91490(uint64_t a1)
{
  v2 = sub_251A932D4(&qword_27F478F48, type metadata accessor for PBTypedData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251A914FC()
{
  sub_251A932D4(&qword_27F478F48, type metadata accessor for PBTypedData);

  return sub_251C705C4();
}

uint64_t sub_251A91578()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1B20);
  __swift_project_value_buffer(v0, qword_27F4A1B20);
  sub_251A85F5C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_251C747F0;
  v5 = v18 + v4;
  v6 = v18 + v4 + *(v2 + 56);
  *(v18 + v4) = 1;
  *v6 = "dlid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "aes_gcm_key";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "date_range";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "type";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v9();
  v16 = v5 + 4 * v3 + *(v2 + 56);
  *(v5 + 4 * v3) = 5;
  *v16 = "ecgMeta";
  *(v16 + 8) = 7;
  *(v16 + 16) = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251A91828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_251C70534();
        }

        else if (result == 2)
        {
          sub_251C704D4();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_251A91954();
            break;
          case 4:
            sub_251A9D358();
            sub_251C70494();
            break;
          case 5:
            sub_251A91A08(v5, a1, a2, a3);
            break;
        }
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251A91954()
{
  v0 = *(type metadata accessor for PBReference(0) + 36);
  type metadata accessor for PBDateRange(0);
  sub_251A932D4(&qword_27F479038, type metadata accessor for PBDateRange);
  return sub_251C70564();
}

uint64_t sub_251A91A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a2;
  v50 = a3;
  v51 = a4;
  v52 = a1;
  v4 = type metadata accessor for PBECGMeta(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v40 - v9;
  v10 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PBReference.OneOf_Metadata(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v44 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - v20;
  sub_251A85F5C(0, &qword_27F479110, type metadata accessor for PBECGMeta, v10);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v46 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v40 - v26;
  v43 = v5;
  v28 = *(v5 + 56);
  v47 = v4;
  v28(&v40 - v26, 1, 1, v4);
  v29 = *(type metadata accessor for PBReference(0) + 28);
  sub_251A9FF6C(v52 + v29, v14, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
  v40 = v16;
  v41 = v15;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251A9FFEC(v14, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
    v31 = v47;
  }

  else
  {
    sub_251A9D40C(v14, v21, type metadata accessor for PBReference.OneOf_Metadata);
    v32 = v44;
    sub_251A9D40C(v21, v44, type metadata accessor for PBReference.OneOf_Metadata);
    sub_251A9FFEC(v27, &qword_27F479110, type metadata accessor for PBECGMeta);
    v33 = v32;
    v34 = v45;
    sub_251A9D40C(v33, v45, type metadata accessor for PBECGMeta);
    sub_251A9D40C(v34, v27, type metadata accessor for PBECGMeta);
    v31 = v47;
    v28(v27, 0, 1, v47);
  }

  sub_251A932D4(&qword_27F479108, type metadata accessor for PBECGMeta);
  v35 = v48;
  sub_251C70564();
  v36 = v46;
  if (v35)
  {
    return sub_251A9FFEC(v27, &qword_27F479110, type metadata accessor for PBECGMeta);
  }

  sub_251A9FF6C(v27, v46, &qword_27F479110, type metadata accessor for PBECGMeta);
  if ((*(v43 + 48))(v36, 1, v31) == 1)
  {
    sub_251A9FFEC(v27, &qword_27F479110, type metadata accessor for PBECGMeta);
    return sub_251A9FFEC(v36, &qword_27F479110, type metadata accessor for PBECGMeta);
  }

  else
  {
    v38 = v42;
    sub_251A9D40C(v36, v42, type metadata accessor for PBECGMeta);
    if (v30 != 1)
    {
      sub_251C70454();
    }

    sub_251A9FFEC(v27, &qword_27F479110, type metadata accessor for PBECGMeta);
    v39 = v52;
    sub_251A9FFEC(v52 + v29, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
    sub_251A9D40C(v38, v39 + v29, type metadata accessor for PBECGMeta);
    return (*(v40 + 56))(v39 + v29, 0, 1, v41);
  }
}

uint64_t sub_251A92000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_251C70674(), !v4))
  {
    v12 = *(v3 + 16);
    v13 = *(v3 + 24);
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
        goto LABEL_14;
      }

      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
    }

    else
    {
      if (!v14)
      {
        if ((v13 & 0xFF000000000000) == 0)
        {
LABEL_14:
          result = sub_251A9218C(v3, a1, a2, a3);
          if (!v4)
          {
            if (nullsub_1(*(v3 + 32), *(v3 + 40)))
            {
              sub_251A9D358();
              sub_251C70604();
            }

            sub_251A923D8(v3, a1, a2, a3);
            v17 = v3 + *(type metadata accessor for PBReference(0) + 32);
            return sub_251C70394();
          }

          return result;
        }

LABEL_13:
        result = sub_251C70624();
        if (v4)
        {
          return result;
        }

        goto LABEL_14;
      }

      v15 = v12;
      v16 = v12 >> 32;
    }

    if (v15 == v16)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_251A9218C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251A85F5C(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBDateRange(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBReference(0);
  sub_251A9FF6C(a1 + *(v14 + 36), v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251A9FFEC(v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251A9D40C(v8, v13, type metadata accessor for PBDateRange);
  sub_251A932D4(&qword_27F479038, type metadata accessor for PBDateRange);
  sub_251C706A4();
  return sub_251A9D3AC(v13, type metadata accessor for PBDateRange);
}

uint64_t sub_251A923D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_251A85F5C(0, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBECGMeta(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBReference(0);
  sub_251A9FF6C(a1 + *(v13 + 28), v8, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
  v14 = type metadata accessor for PBReference.OneOf_Metadata(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    return sub_251A9FFEC(v8, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
  }

  sub_251A9D40C(v8, v12, type metadata accessor for PBECGMeta);
  sub_251A932D4(&qword_27F479108, type metadata accessor for PBECGMeta);
  sub_251C706A4();
  return sub_251A9D3AC(v12, type metadata accessor for PBECGMeta);
}

uint64_t sub_251A92618@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_251C745D0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v4 = a1[7];
  v5 = type metadata accessor for PBReference.OneOf_Metadata(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + a1[8];
  sub_251C703A4();
  v7 = a1[9];
  v8 = type metadata accessor for PBDateRange(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_251A92720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251A92794(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_251A92808(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_251A9285C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251A932D4(&qword_27F479100, type metadata accessor for PBReference);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251A928FC(uint64_t a1)
{
  v2 = sub_251A932D4(&qword_27F478F28, type metadata accessor for PBReference);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251A92968()
{
  sub_251A932D4(&qword_27F478F28, type metadata accessor for PBReference);

  return sub_251C705C4();
}

uint64_t sub_251A92A00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_251C706D4();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  sub_251A85F5C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 72);
  v11 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_251C74800;
  v13 = v12 + v11 + *(v9 + 56);
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x277D21870];
  v15 = sub_251C706B4();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return sub_251C706C4();
}

uint64_t sub_251A92B84()
{
  result = sub_251C70444();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for PBReference(0);
        sub_251A932D4(&qword_27F478F28, type metadata accessor for PBReference);
        sub_251C70554();
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251A92C64()
{
  if (!*(*v0 + 16) || (type metadata accessor for PBReference(0), sub_251A932D4(&qword_27F478F28, type metadata accessor for PBReference), result = sub_251C70694(), !v1))
  {
    v3 = v0 + *(type metadata accessor for PBReferences(0) + 20);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251A92D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251A92DD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_251A92E7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251A932D4(&qword_27F479128, type metadata accessor for PBReferences);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251A92F1C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_251C706D4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_251A92FB8(uint64_t a1)
{
  v2 = sub_251A932D4(&qword_27F478F08, type metadata accessor for PBReferences);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251A93024()
{
  sub_251C71AA4();
  sub_251C70E94();
  return sub_251C71AD4();
}

uint64_t sub_251A9307C()
{
  sub_251A932D4(&qword_27F478F08, type metadata accessor for PBReferences);

  return sub_251C705C4();
}

uint64_t sub_251A930F8()
{
  sub_251C71AA4();
  sub_251C70E94();
  return sub_251C71AD4();
}

uint64_t sub_251A9314C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_251A9CBD8(*a1, *a2, type metadata accessor for PBReference, type metadata accessor for PBReference, sub_251A9F650, type metadata accessor for PBReference) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_251C703B4();
  sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251A932D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251A93770()
{
  if (!qword_27F478F90)
  {
    sub_251C706B4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F478F90);
    }
  }
}

uint64_t sub_251A937D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBECGMeasurement(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v35 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_75:
    v34 = 0;
    return v34 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v34 = 1;
    return v34 & 1;
  }

  v13 = 0;
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = a1 + v14;
  v36 = a2 + v14;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_251AA005C(v15 + v16 * v13, v11, type metadata accessor for PBECGMeasurement);
    if (v13 == v12)
    {
      break;
    }

    sub_251AA005C(v36 + v16 * v13, v8, type metadata accessor for PBECGMeasurement);
    v18 = *v11 == *v8 && *(v11 + 1) == *(v8 + 1);
    if (!v18 && (sub_251C719D4() & 1) == 0 || *(v11 + 4) != *(v8 + 4) || (*(v11 + 3) != *(v8 + 3) || *(v11 + 4) != *(v8 + 4)) && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_74;
    }

    if ((*(v11 + 5) != *(v8 + 5) || *(v11 + 6) != *(v8 + 6)) && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_74;
    }

    if ((*(v11 + 7) != *(v8 + 7) || *(v11 + 8) != *(v8 + 8)) && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_74;
    }

    result = *(v11 + 9);
    if (result != *(v8 + 9) || *(v11 + 10) != *(v8 + 10))
    {
      result = sub_251C719D4();
      if ((result & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    v19 = *(v11 + 11);
    v20 = *(v8 + 11);
    v21 = *(v19 + 16);
    if (v21 != *(v20 + 16))
    {
      goto LABEL_74;
    }

    if (v21 && v19 != v20)
    {
      v22 = (v19 + 40);
      v23 = (v20 + 40);
      while (1)
      {
        result = *(v22 - 1);
        if (result != *(v23 - 1) || *v22 != *v23)
        {
          result = sub_251C719D4();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        v22 += 2;
        v23 += 2;
        if (!--v21)
        {
          goto LABEL_35;
        }
      }

LABEL_74:
      sub_251A9D3AC(v8, type metadata accessor for PBECGMeasurement);
      sub_251A9D3AC(v11, type metadata accessor for PBECGMeasurement);
      goto LABEL_75;
    }

LABEL_35:
    v25 = *(v11 + 12);
    v26 = *(v8 + 12);
    v27 = *(v25 + 16);
    if (v27 != *(v26 + 16))
    {
      goto LABEL_74;
    }

    if (v27)
    {
      v28 = v25 == v26;
    }

    else
    {
      v28 = 1;
    }

    if (!v28)
    {
      v29 = (v25 + 32);
      v30 = (v26 + 32);
      while (v27)
      {
        if (*v29 != *v30)
        {
          goto LABEL_74;
        }

        ++v29;
        ++v30;
        if (!--v27)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
      break;
    }

LABEL_44:
    if (*(v11 + 26) != *(v8 + 26))
    {
      goto LABEL_74;
    }

    v31 = *(v11 + 14);
    if (v11[120] == 1)
    {
      v31 = qword_251C74E50[v31];
    }

    v32 = *(v8 + 14);
    if (v8[120])
    {
      if (v32 > 3)
      {
        if (v32 > 5)
        {
          if (v32 == 6)
          {
            if (v31 != 6)
            {
              goto LABEL_74;
            }
          }

          else if (v31 != 100)
          {
            goto LABEL_74;
          }
        }

        else if (v32 == 4)
        {
          if (v31 != 4)
          {
            goto LABEL_74;
          }
        }

        else if (v31 != 5)
        {
          goto LABEL_74;
        }
      }

      else if (v32 > 1)
      {
        if (v32 == 2)
        {
          if (v31 != 2)
          {
            goto LABEL_74;
          }
        }

        else if (v31 != 3)
        {
          goto LABEL_74;
        }
      }

      else if (v32)
      {
        if (v31 != 1)
        {
          goto LABEL_74;
        }
      }

      else if (v31)
      {
        goto LABEL_74;
      }
    }

    else if (v31 != v32)
    {
      goto LABEL_74;
    }

    v33 = *(v4 + 56);
    sub_251C703B4();
    sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
    v34 = sub_251C70ED4();
    sub_251A9D3AC(v8, type metadata accessor for PBECGMeasurement);
    sub_251A9D3AC(v11, type metadata accessor for PBECGMeasurement);
    if ((v34 & 1) != 0 && ++v13 != v12)
    {
      continue;
    }

    return v34 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_251A93C70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_251A93D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBMedicationTrackingDoseEvent(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v24 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v22 = 1;
      return v22 & 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_251AA005C(v14, v11, type metadata accessor for PBMedicationTrackingDoseEvent);
      sub_251AA005C(v15, v8, type metadata accessor for PBMedicationTrackingDoseEvent);
      v17 = *v11;
      v18 = *v8;
      if (v8[8] == 1)
      {
        if (v18)
        {
          if (v18 == 1)
          {
            if (v17 != 1)
            {
              break;
            }
          }

          else if (v17 != 2)
          {
            break;
          }
        }

        else if (v17)
        {
          break;
        }
      }

      else if (v17 != v18)
      {
        break;
      }

      v19 = *(v11 + 2);
      v20 = *(v8 + 2);
      if (v8[24] == 1)
      {
        if (v20 <= 2)
        {
          if (v20)
          {
            if (v20 == 1)
            {
              if (v19 != 1)
              {
                break;
              }
            }

            else if (v19 != 2)
            {
              break;
            }
          }

          else if (v19)
          {
            break;
          }
        }

        else if (v20 > 4)
        {
          if (v20 == 5)
          {
            if (v19 != 5)
            {
              break;
            }
          }

          else if (v19 != 6)
          {
            break;
          }
        }

        else if (v20 == 3)
        {
          if (v19 != 3)
          {
            break;
          }
        }

        else if (v19 != 4)
        {
          break;
        }
      }

      else if (v19 != v20)
      {
        break;
      }

      if ((*(v11 + 4) != *(v8 + 4) || *(v11 + 5) != *(v8 + 5)) && (sub_251C719D4() & 1) == 0 || (*(v11 + 6) != *(v8 + 6) || *(v11 + 7) != *(v8 + 7)) && (sub_251C719D4() & 1) == 0 || *(v11 + 16) != *(v8 + 16) || *(v11 + 17) != *(v8 + 17) || (*(v11 + 9) != *(v8 + 9) || *(v11 + 10) != *(v8 + 10)) && (sub_251C719D4() & 1) == 0 || (*(v11 + 11) != *(v8 + 11) || *(v11 + 12) != *(v8 + 12)) && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v21 = *(v4 + 48);
      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
      v22 = sub_251C70ED4();
      sub_251A9D3AC(v8, type metadata accessor for PBMedicationTrackingDoseEvent);
      sub_251A9D3AC(v11, type metadata accessor for PBMedicationTrackingDoseEvent);
      if (v22)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v22 & 1;
    }

    sub_251A9D3AC(v8, type metadata accessor for PBMedicationTrackingDoseEvent);
    sub_251A9D3AC(v11, type metadata accessor for PBMedicationTrackingDoseEvent);
  }

  v22 = 0;
  return v22 & 1;
}

uint64_t sub_251A9416C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A85F5C(0, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v39 - v11;
  sub_251A9FEF4(0, &qword_27F4790F8, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  v45 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - v15;
  v46 = type metadata accessor for PBHKMedicationScheduleIntervalData(0);
  v17 = *(*(v46 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v46);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v23 = &v39 - v22;
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
    goto LABEL_31;
  }

  if (!v24 || a1 == a2)
  {
    v37 = 1;
    return v37 & 1;
  }

  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v26 = a1 + v25;
  v27 = a2 + v25;
  v41 = *(v21 + 72);
  v42 = (v5 + 48);
  v40 = v8;
  while (1)
  {
    sub_251AA005C(v26, v23, type metadata accessor for PBHKMedicationScheduleIntervalData);
    v43 = v27;
    v44 = v26;
    sub_251AA005C(v27, v20, type metadata accessor for PBHKMedicationScheduleIntervalData);
    v28 = v4;
    v29 = *(v46 + 36);
    v30 = *(v45 + 48);
    sub_251A9FF6C(&v23[v29], v16, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
    v31 = &v20[v29];
    v4 = v28;
    sub_251A9FF6C(v31, &v16[v30], qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
    v32 = *v42;
    if ((*v42)(v16, 1, v28) != 1)
    {
      break;
    }

    if (v32(&v16[v30], 1, v28) != 1)
    {
      goto LABEL_29;
    }

    sub_251A9FFEC(v16, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
LABEL_17:
    if (*v23 != *v20 || *(v23 + 1) != *(v20 + 1) || *(v23 + 2) != *(v20 + 2) || (*(v23 + 2) != *(v20 + 2) || *(v23 + 3) != *(v20 + 3)) && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_30;
    }

    v36 = *(v46 + 32);
    sub_251C703B4();
    sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
    v37 = sub_251C70ED4();
    sub_251A9D3AC(v20, type metadata accessor for PBHKMedicationScheduleIntervalData);
    sub_251A9D3AC(v23, type metadata accessor for PBHKMedicationScheduleIntervalData);
    if (v37)
    {
      v27 = v43 + v41;
      v26 = v44 + v41;
      if (--v24)
      {
        continue;
      }
    }

    return v37 & 1;
  }

  sub_251A9FF6C(v16, v12, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
  v33 = v32(&v16[v30], 1, v28);
  v34 = v40;
  if (v33 != 1)
  {
    sub_251A9D40C(&v16[v30], v40, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
    if (*v12 != *v34 || v12[1] != v34[1] || v12[2] != v34[2] || v12[3] != v34[3] || v12[4] != v34[4] || v12[5] != v34[5] || v12[6] != v34[6])
    {
      sub_251A9D3AC(v34, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
      sub_251A9D3AC(v12, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
      sub_251A9FFEC(v16, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
      goto LABEL_30;
    }

    v35 = *(v4 + 44);
    sub_251C703B4();
    sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
    LOBYTE(v35) = sub_251C70ED4();
    sub_251A9D3AC(v34, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
    sub_251A9D3AC(v12, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
    sub_251A9FFEC(v16, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
    if ((v35 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_17;
  }

  sub_251A9D3AC(v12, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
LABEL_29:
  sub_251A9DBA8(v16, &qword_27F4790F8, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
LABEL_30:
  sub_251A9D3AC(v20, type metadata accessor for PBHKMedicationScheduleIntervalData);
  sub_251A9D3AC(v23, type metadata accessor for PBHKMedicationScheduleIntervalData);
LABEL_31:
  v37 = 0;
  return v37 & 1;
}

uint64_t sub_251A94860(uint64_t a1, uint64_t a2)
{
  v40[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a2 + 56);
      v5 = (a1 + 56);
      while (1)
      {
        v7 = *(v5 - 1);
        v6 = *v5;
        v9 = *(v4 - 1);
        v8 = *v4;
        if (*(v5 - 3) != *(v4 - 3) || *(v5 - 2) != *(v4 - 2))
        {
          v11 = *(v5 - 2);
          v12 = *(v4 - 2);
          if ((sub_251C719D4() & 1) == 0)
          {
            goto LABEL_58;
          }
        }

        v13 = v6 >> 62;
        v14 = v8 >> 62;
        if (v6 >> 62 == 3)
        {
          break;
        }

        if (v13 > 1)
        {
          if (v13 == 2)
          {
            v21 = *(v7 + 16);
            v20 = *(v7 + 24);
            v18 = __OFSUB__(v20, v21);
            v15 = v20 - v21;
            if (v18)
            {
              goto LABEL_64;
            }

            goto LABEL_28;
          }

          v15 = 0;
          if (v14 <= 1)
          {
            goto LABEL_29;
          }
        }

        else if (v13)
        {
          LODWORD(v15) = HIDWORD(v7) - v7;
          if (__OFSUB__(HIDWORD(v7), v7))
          {
            goto LABEL_63;
          }

          v15 = v15;
          if (v14 <= 1)
          {
LABEL_29:
            if (v14)
            {
              LODWORD(v19) = HIDWORD(v9) - v9;
              if (__OFSUB__(HIDWORD(v9), v9))
              {
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
              }

              v19 = v19;
            }

            else
            {
              v19 = BYTE6(v8);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v15 = BYTE6(v6);
          if (v14 <= 1)
          {
            goto LABEL_29;
          }
        }

LABEL_22:
        if (v14 != 2)
        {
          if (v15)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        }

        v17 = *(v9 + 16);
        v16 = *(v9 + 24);
        v18 = __OFSUB__(v16, v17);
        v19 = v16 - v17;
        if (v18)
        {
          goto LABEL_62;
        }

LABEL_33:
        if (v15 != v19)
        {
          goto LABEL_58;
        }

        if (v15 < 1)
        {
          goto LABEL_6;
        }

        if (v13 > 1)
        {
          if (v13 == 2)
          {
            v38 = v3;
            v24 = *(v7 + 16);
            v35 = *(v7 + 24);

            sub_251A858C4(v7, v6);

            v36 = v9;
            sub_251A858C4(v9, v8);
            v25 = sub_251C6FB74();
            if (v25)
            {
              v26 = sub_251C6FBA4();
              if (__OFSUB__(v24, v26))
              {
                goto LABEL_67;
              }

              v25 += v24 - v26;
            }

            if (__OFSUB__(v35, v24))
            {
              goto LABEL_66;
            }

            sub_251C6FB94();
            v27 = v25;
            v28 = v36;
            v29 = v36;
            v30 = v8;
            v3 = v38;
            goto LABEL_54;
          }

          memset(v40, 0, 14);

          sub_251A858C4(v7, v6);

          sub_251A858C4(v9, v8);
          v22 = v9;
          v23 = v8;
        }

        else
        {
          if (v13)
          {
            if (v7 >> 32 < v7)
            {
              goto LABEL_65;
            }

            sub_251A858C4(v7, v6);

            v37 = v9;
            sub_251A858C4(v9, v8);
            v31 = sub_251C6FB74();
            if (v31)
            {
              v32 = sub_251C6FBA4();
              if (__OFSUB__(v7, v32))
              {
                goto LABEL_68;
              }

              v31 += v7 - v32;
            }

            v28 = v37;
            sub_251C6FB94();
            v27 = v31;
            v29 = v37;
            v30 = v8;
LABEL_54:
            sub_251A9CD78(v27, v29, v30, v40);

            sub_251A83028(v28, v8);

            sub_251A83028(v7, v6);
            if ((v40[0] & 1) == 0)
            {
              goto LABEL_58;
            }

            goto LABEL_6;
          }

          v40[0] = v7;
          LOWORD(v40[1]) = v6;
          BYTE2(v40[1]) = BYTE2(v6);
          BYTE3(v40[1]) = BYTE3(v6);
          BYTE4(v40[1]) = BYTE4(v6);
          BYTE5(v40[1]) = BYTE5(v6);

          sub_251A858C4(v7, v6);

          sub_251A858C4(v9, v8);
          v22 = v9;
          v23 = v8;
        }

        sub_251A9CD78(v40, v22, v23, &v39);

        sub_251A83028(v9, v8);

        sub_251A83028(v7, v6);
        if (!v39)
        {
          goto LABEL_58;
        }

LABEL_6:
        v4 += 4;
        v5 += 4;
        if (!--v2)
        {
          goto LABEL_59;
        }
      }

      v15 = 0;
      if (!v7 && v6 == 0xC000000000000000 && v8 >> 62 == 3)
      {
        v15 = 0;
        if (!v9 && v8 == 0xC000000000000000)
        {
          goto LABEL_6;
        }
      }

LABEL_28:
      if (v14 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

LABEL_59:
    result = 1;
  }

  else
  {
LABEL_58:
    result = 0;
  }

  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_251A94D5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v13, v19, v8);
    sub_251A932D4(v32, v33);
    v26 = sub_251C70ED4();
    v27 = *v22;
    (*v22)(v13, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_251A94F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBFHIRIdentifier(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v22 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_20:
    v20 = 0;
    return v20 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_251AA005C(v14, v11, type metadata accessor for PBFHIRIdentifier);
      sub_251AA005C(v15, v8, type metadata accessor for PBFHIRIdentifier);
      v17 = *v11 == *v8 && v11[1] == v8[1];
      if (!v17 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v18 = v11[2] == v8[2] && v11[3] == v8[3];
      if (!v18 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v19 = *(v4 + 24);
      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
      v20 = sub_251C70ED4();
      sub_251A9D3AC(v8, type metadata accessor for PBFHIRIdentifier);
      sub_251A9D3AC(v11, type metadata accessor for PBFHIRIdentifier);
      if (v20)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_251A9D3AC(v8, type metadata accessor for PBFHIRIdentifier);
    sub_251A9D3AC(v11, type metadata accessor for PBFHIRIdentifier);
    goto LABEL_20;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_251A951D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBActivitySummarySeries.ActivitySummary(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_19:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_251AA005C(v14, v11, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
      sub_251AA005C(v15, v8, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
      if (*v11 != *v8 || *(v11 + 1) != *(v8 + 1) || *(v11 + 2) != *(v8 + 2) || *(v11 + 3) != *(v8 + 3) || *(v11 + 4) != *(v8 + 4) || *(v11 + 5) != *(v8 + 5))
      {
        break;
      }

      if ((*(v11 + 3) != *(v8 + 3) || *(v11 + 4) != *(v8 + 4)) && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v17 = *(v4 + 44);
      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
      v18 = sub_251C70ED4();
      sub_251A9D3AC(v8, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
      sub_251A9D3AC(v11, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_251A9D3AC(v8, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
    sub_251A9D3AC(v11, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
    goto LABEL_19;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_251A954A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBMedicationTracking(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_251AA005C(v14, v11, type metadata accessor for PBMedicationTracking);
      sub_251AA005C(v15, v8, type metadata accessor for PBMedicationTracking);
      v17 = *(v4 + 20);
      v18 = *&v11[v17];
      v19 = *&v8[v17];
      if (v18 != v19 && !sub_251B993DC(v18, v19))
      {
        break;
      }

      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
      if ((sub_251C70ED4() & 1) == 0)
      {
        break;
      }

      sub_251A9D3AC(v8, type metadata accessor for PBMedicationTracking);
      sub_251A9D3AC(v11, type metadata accessor for PBMedicationTracking);
      v15 += v16;
      v14 += v16;
      if (!--v12)
      {
        return 1;
      }
    }

    sub_251A9D3AC(v8, type metadata accessor for PBMedicationTracking);
    sub_251A9D3AC(v11, type metadata accessor for PBMedicationTracking);
  }

  return 0;
}

uint64_t sub_251A9573C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBBlobDeleteResult(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v24 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v22 = 1;
      return v22 & 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_251AA005C(v14, v11, type metadata accessor for PBBlobDeleteResult);
      sub_251AA005C(v15, v8, type metadata accessor for PBBlobDeleteResult);
      v17 = *v11 == *v8 && *(v11 + 1) == *(v8 + 1);
      if (!v17 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v18 = *(v11 + 2) == *(v8 + 2) && *(v11 + 3) == *(v8 + 3);
      if (!v18 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v19 = *(v11 + 4);
      if (v11[40] == 1)
      {
        v19 = qword_251C74E90[v19];
      }

      v20 = *(v8 + 4);
      if (v8[40])
      {
        if (v20 <= 1)
        {
          if (v20)
          {
            if (v19 != 2)
            {
              break;
            }
          }

          else if (v19)
          {
            break;
          }
        }

        else if (v20 == 2)
        {
          if (v19 != 3)
          {
            break;
          }
        }

        else if (v20 == 3)
        {
          if (v19 != 4)
          {
            break;
          }
        }

        else if (v19 != 5)
        {
          break;
        }
      }

      else if (v19 != v20)
      {
        break;
      }

      v21 = *(v4 + 28);
      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
      v22 = sub_251C70ED4();
      sub_251A9D3AC(v8, type metadata accessor for PBBlobDeleteResult);
      sub_251A9D3AC(v11, type metadata accessor for PBBlobDeleteResult);
      if (v22)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v22 & 1;
    }

    sub_251A9D3AC(v8, type metadata accessor for PBBlobDeleteResult);
    sub_251A9D3AC(v11, type metadata accessor for PBBlobDeleteResult);
  }

  v22 = 0;
  return v22 & 1;
}

uint64_t sub_251A95A40(uint64_t a1, uint64_t a2)
{
  v54 = sub_251C70384();
  v4 = *(v54 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v54);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D21570];
  sub_251A85F5C(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v45 - v11;
  sub_251A9FEF4(0, &qword_27F479138, &qword_27F479130, v8);
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - v16;
  v55 = type metadata accessor for PBBlobTouchResult(0);
  v18 = *(*(v55 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v55);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v24 = (&v45 - v23);
  v25 = *(a1 + 16);
  if (v25 != *(a2 + 16))
  {
LABEL_35:
    v43 = 0;
    return v43 & 1;
  }

  if (v25 && a1 != a2)
  {
    v47 = v14;
    v48 = v7;
    v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v27 = a1 + v26;
    v56 = a2 + v26;
    v46 = (v4 + 32);
    v49 = (v4 + 8);
    v50 = v12;
    v52 = *(v22 + 72);
    v53 = (v4 + 48);
    v28 = v54;
    while (1)
    {
      sub_251AA005C(v27, v24, type metadata accessor for PBBlobTouchResult);
      sub_251AA005C(v56, v21, type metadata accessor for PBBlobTouchResult);
      v29 = *v24 == *v21 && v24[1] == *(v21 + 1);
      if (!v29 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v30 = v24[2];
      v31 = *(v21 + 2);
      if (v21[24] == 1)
      {
        if (v31 > 1)
        {
          if (v31 == 2)
          {
            if (v30 != 2)
            {
              break;
            }
          }

          else if (v30 != 3)
          {
            break;
          }
        }

        else if (v31)
        {
          if (v30 != 1)
          {
            break;
          }
        }

        else if (v30)
        {
          break;
        }
      }

      else if (v30 != v31)
      {
        break;
      }

      v54 = v27;
      v32 = *(v55 + 28);
      v33 = *(v14 + 48);
      v34 = MEMORY[0x277D21570];
      sub_251A9FF6C(v24 + v32, v17, &qword_27F479130, MEMORY[0x277D21570]);
      sub_251A9FF6C(&v21[v32], &v17[v33], &qword_27F479130, v34);
      v35 = *v53;
      if ((*v53)(v17, 1, v28) == 1)
      {
        if (v35(&v17[v33], 1, v28) != 1)
        {
          goto LABEL_33;
        }

        sub_251A9FFEC(v17, &qword_27F479130, MEMORY[0x277D21570]);
        v36 = v54;
      }

      else
      {
        v37 = v17;
        v38 = v17;
        v39 = v50;
        sub_251A9FF6C(v37, v50, &qword_27F479130, MEMORY[0x277D21570]);
        if (v35((v38 + v33), 1, v28) == 1)
        {
          (*v49)(v39, v28);
          v17 = v38;
LABEL_33:
          sub_251A9DBA8(v17, &qword_27F479138, &qword_27F479130, MEMORY[0x277D21570]);
          break;
        }

        v40 = v48;
        (*v46)(v48, v38 + v33, v28);
        sub_251A932D4(&qword_27F479140, MEMORY[0x277D21570]);
        v51 = sub_251C70ED4();
        v41 = *v49;
        (*v49)(v40, v28);
        v41(v39, v28);
        sub_251A9FFEC(v38, &qword_27F479130, MEMORY[0x277D21570]);
        v17 = v38;
        v14 = v47;
        v36 = v54;
        if ((v51 & 1) == 0)
        {
          break;
        }
      }

      v42 = *(v55 + 24);
      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
      v43 = sub_251C70ED4();
      sub_251A9D3AC(v21, type metadata accessor for PBBlobTouchResult);
      sub_251A9D3AC(v24, type metadata accessor for PBBlobTouchResult);
      if (v43)
      {
        v56 += v52;
        v27 = v36 + v52;
        if (--v25)
        {
          continue;
        }
      }

      return v43 & 1;
    }

    sub_251A9D3AC(v21, type metadata accessor for PBBlobTouchResult);
    sub_251A9D3AC(v24, type metadata accessor for PBBlobTouchResult);
    goto LABEL_35;
  }

  v43 = 1;
  return v43 & 1;
}

uint64_t sub_251A960BC(uint64_t a1, uint64_t a2)
{
  v108[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for PBRevocationAuthorization();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A85F5C(0, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v102 = &v94 - v11;
  sub_251A9FEF4(0, &qword_27F479158, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
  v105 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v94 - v14;
  v106 = type metadata accessor for PBDeleteBlob(0);
  v16 = *(*(v106 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v106);
  v19 = (&v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v22 = (&v94 - v21);
  v23 = *(a1 + 16);
  if (v23 == *(a2 + 16))
  {
    if (v23 && a1 != a2)
    {
      v96 = v4;
      v97 = v8;
      v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v25 = a1 + v24;
      v26 = a2 + v24;
      v100 = (v5 + 48);
      v101 = 0;
      v27 = *(v20 + 72);
      v98 = v15;
      v99 = v27;
      while (1)
      {
        sub_251AA005C(v25, v22, type metadata accessor for PBDeleteBlob);
        v103 = v26;
        v104 = v25;
        sub_251AA005C(v26, v19, type metadata accessor for PBDeleteBlob);
        v28 = *v22 == *v19 && v22[1] == v19[1];
        if (!v28 && (sub_251C719D4() & 1) == 0)
        {
LABEL_141:
          sub_251A9D3AC(v19, type metadata accessor for PBDeleteBlob);
          sub_251A9D3AC(v22, type metadata accessor for PBDeleteBlob);
          goto LABEL_142;
        }

        v29 = v22[2];
        v30 = v22[3];
        v32 = v19[2];
        v31 = v19[3];
        v33 = v30 >> 62;
        v34 = v31 >> 62;
        if (v30 >> 62 == 3)
        {
          break;
        }

        if (v33 > 1)
        {
          if (v33 == 2)
          {
            v41 = *(v29 + 16);
            v40 = *(v29 + 24);
            v38 = __OFSUB__(v40, v41);
            v35 = v40 - v41;
            if (v38)
            {
              goto LABEL_146;
            }

            goto LABEL_26;
          }

          v35 = 0;
          if (v34 <= 1)
          {
            goto LABEL_27;
          }
        }

        else if (v33)
        {
          LODWORD(v35) = HIDWORD(v29) - v29;
          if (__OFSUB__(HIDWORD(v29), v29))
          {
            goto LABEL_147;
          }

          v35 = v35;
          if (v34 <= 1)
          {
LABEL_27:
            if (v34)
            {
              LODWORD(v39) = HIDWORD(v32) - v32;
              if (__OFSUB__(HIDWORD(v32), v32))
              {
                __break(1u);
LABEL_145:
                __break(1u);
LABEL_146:
                __break(1u);
LABEL_147:
                __break(1u);
LABEL_148:
                __break(1u);
LABEL_149:
                __break(1u);
LABEL_150:
                __break(1u);
LABEL_151:
                __break(1u);
LABEL_152:
                __break(1u);
LABEL_153:
                __break(1u);
LABEL_154:
                __break(1u);
LABEL_155:
                __break(1u);
LABEL_156:
                __break(1u);
LABEL_157:
                __break(1u);
LABEL_158:
                __break(1u);
LABEL_159:
                __break(1u);
              }

              v39 = v39;
            }

            else
            {
              v39 = BYTE6(v31);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v35 = BYTE6(v30);
          if (v34 <= 1)
          {
            goto LABEL_27;
          }
        }

LABEL_20:
        if (v34 != 2)
        {
          if (v35)
          {
            goto LABEL_141;
          }

          goto LABEL_57;
        }

        v37 = *(v32 + 16);
        v36 = *(v32 + 24);
        v38 = __OFSUB__(v36, v37);
        v39 = v36 - v37;
        if (v38)
        {
          goto LABEL_145;
        }

LABEL_33:
        if (v35 != v39)
        {
          goto LABEL_141;
        }

        if (v35 < 1)
        {
          goto LABEL_57;
        }

        if (v33 > 1)
        {
          if (v33 == 2)
          {
            v43 = *(v29 + 16);
            v42 = *(v29 + 24);
            v44 = sub_251C6FB74();
            if (v44)
            {
              v45 = sub_251C6FBA4();
              if (__OFSUB__(v43, v45))
              {
                goto LABEL_152;
              }

              v44 += v43 - v45;
            }

            if (__OFSUB__(v42, v43))
            {
              goto LABEL_151;
            }

            goto LABEL_53;
          }

          memset(v108, 0, 14);
        }

        else
        {
          if (v33)
          {
            v46 = v29;
            if (v29 >> 32 < v29)
            {
              goto LABEL_150;
            }

            v44 = sub_251C6FB74();
            if (v44)
            {
              v47 = sub_251C6FBA4();
              if (__OFSUB__(v46, v47))
              {
                goto LABEL_153;
              }

              v44 += v46 - v47;
            }

LABEL_53:
            sub_251C6FB94();
            v48 = v101;
            sub_251A9CD78(v44, v32, v31, v108);
            v101 = v48;
            v4 = v96;
            v15 = v98;
            if ((v108[0] & 1) == 0)
            {
              goto LABEL_141;
            }

            goto LABEL_57;
          }

          v108[0] = v22[2];
          LOWORD(v108[1]) = v30;
          BYTE2(v108[1]) = BYTE2(v30);
          BYTE3(v108[1]) = BYTE3(v30);
          BYTE4(v108[1]) = BYTE4(v30);
          BYTE5(v108[1]) = BYTE5(v30);
        }

        v49 = v101;
        sub_251A9CD78(v108, v32, v31, &v107);
        v101 = v49;
        if (!v107)
        {
          goto LABEL_141;
        }

LABEL_57:
        v50 = *(v106 + 28);
        v51 = *(v105 + 48);
        sub_251A9FF6C(v22 + v50, v15, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
        sub_251A9FF6C(v19 + v50, &v15[v51], &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
        v52 = *v100;
        if ((*v100)(v15, 1, v4) == 1)
        {
          if (v52(&v15[v51], 1, v4) != 1)
          {
            goto LABEL_140;
          }

          sub_251A9FFEC(v15, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
          goto LABEL_128;
        }

        v53 = v102;
        sub_251A9FF6C(v15, v102, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
        if (v52(&v15[v51], 1, v4) == 1)
        {
          sub_251A9D3AC(v53, type metadata accessor for PBRevocationAuthorization);
LABEL_140:
          sub_251A9DBA8(v15, &qword_27F479158, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
          goto LABEL_141;
        }

        v54 = &v15[v51];
        v55 = v97;
        sub_251A9D40C(v54, v97, type metadata accessor for PBRevocationAuthorization);
        v56 = *v53;
        v57 = *(v53 + 8);
        v58 = *v55;
        v59 = *(v55 + 8);
        v60 = v57 >> 62;
        v61 = v59 >> 62;
        if (v57 >> 62 == 3)
        {
          v62 = 0;
          if (!v56 && v57 == 0xC000000000000000 && v59 >> 62 == 3)
          {
            v62 = 0;
            if (!v58 && v59 == 0xC000000000000000)
            {
              goto LABEL_109;
            }
          }

LABEL_77:
          if (v61 > 1)
          {
            goto LABEL_71;
          }

          goto LABEL_78;
        }

        if (v60 > 1)
        {
          if (v60 == 2)
          {
            v67 = *(v56 + 16);
            v66 = *(v56 + 24);
            v38 = __OFSUB__(v66, v67);
            v62 = v66 - v67;
            if (v38)
            {
              goto LABEL_155;
            }

            goto LABEL_77;
          }

          v62 = 0;
          if (v61 > 1)
          {
            goto LABEL_71;
          }
        }

        else if (v60)
        {
          LODWORD(v62) = HIDWORD(v56) - v56;
          if (__OFSUB__(HIDWORD(v56), v56))
          {
            goto LABEL_154;
          }

          v62 = v62;
          if (v61 > 1)
          {
LABEL_71:
            if (v61 != 2)
            {
              if (v62)
              {
                goto LABEL_137;
              }

              goto LABEL_109;
            }

            v64 = *(v58 + 16);
            v63 = *(v58 + 24);
            v38 = __OFSUB__(v63, v64);
            v65 = v63 - v64;
            if (v38)
            {
              goto LABEL_149;
            }

            goto LABEL_84;
          }
        }

        else
        {
          v62 = BYTE6(v57);
          if (v61 > 1)
          {
            goto LABEL_71;
          }
        }

LABEL_78:
        if (v61)
        {
          LODWORD(v65) = HIDWORD(v58) - v58;
          if (__OFSUB__(HIDWORD(v58), v58))
          {
            goto LABEL_148;
          }

          v65 = v65;
        }

        else
        {
          v65 = BYTE6(v59);
        }

LABEL_84:
        if (v62 != v65)
        {
          goto LABEL_137;
        }

        if (v62 >= 1)
        {
          if (v60 > 1)
          {
            if (v60 != 2)
            {
              memset(v108, 0, 14);
              v83 = v58;
              sub_251A858C4(v58, v59);
              v84 = v101;
              sub_251A9CD78(v108, v83, v59, &v107);
              v101 = v84;
              v70 = v83;
LABEL_108:
              sub_251A83028(v70, v59);
              if (!v107)
              {
                goto LABEL_137;
              }

              goto LABEL_109;
            }

            v71 = *(v56 + 16);
            v72 = *(v56 + 24);
            v95 = *v55;
            sub_251A858C4(v58, v59);
            v73 = sub_251C6FB74();
            if (v73)
            {
              v74 = sub_251C6FBA4();
              if (__OFSUB__(v71, v74))
              {
                goto LABEL_158;
              }

              v73 += v71 - v74;
            }

            if (__OFSUB__(v72, v71))
            {
              goto LABEL_157;
            }

            sub_251C6FB94();
            v75 = v95;
            v76 = v101;
            sub_251A9CD78(v73, v95, v59, v108);
            v101 = v76;
            sub_251A83028(v75, v59);
            v77 = v108[0];
            v4 = v96;
          }

          else
          {
            if (!v60)
            {
              v108[0] = *v53;
              LOWORD(v108[1]) = v57;
              BYTE2(v108[1]) = BYTE2(v57);
              BYTE3(v108[1]) = BYTE3(v57);
              BYTE4(v108[1]) = BYTE4(v57);
              BYTE5(v108[1]) = BYTE5(v57);
              v68 = v58;
              sub_251A858C4(v58, v59);
              v69 = v101;
              sub_251A9CD78(v108, v68, v59, &v107);
              v101 = v69;
              v70 = v68;
              goto LABEL_108;
            }

            v78 = v56;
            if (v56 >> 32 < v56)
            {
              goto LABEL_156;
            }

            v95 = *v55;
            sub_251A858C4(v58, v59);
            v79 = sub_251C6FB74();
            if (v79)
            {
              v80 = sub_251C6FBA4();
              if (__OFSUB__(v78, v80))
              {
                goto LABEL_159;
              }

              v79 += v78 - v80;
            }

            sub_251C6FB94();
            v81 = v95;
            v82 = v101;
            sub_251A9CD78(v79, v95, v59, v108);
            v101 = v82;
            sub_251A83028(v81, v59);
            v77 = v108[0];
          }

          v55 = v97;
          v53 = v102;
          if ((v77 & 1) == 0)
          {
            goto LABEL_137;
          }
        }

LABEL_109:
        v85 = *(v53 + 16);
        v86 = *(v55 + 16);
        if (*(v53 + 24))
        {
          v85 = v85 != 0;
        }

        if (*(v55 + 24) == 1)
        {
          if (v86)
          {
            if (v85 != 1)
            {
              goto LABEL_137;
            }
          }

          else if (v85)
          {
            goto LABEL_137;
          }
        }

        else if (v85 != v86)
        {
          goto LABEL_137;
        }

        v87 = *(v53 + 32);
        v88 = *(v55 + 32);
        if (*(v55 + 40) == 1)
        {
          if (v88 > 1)
          {
            if (v88 == 2)
            {
              if (v87 != 2)
              {
                goto LABEL_137;
              }
            }

            else if (v87 != 3)
            {
              goto LABEL_137;
            }
          }

          else if (v88)
          {
            if (v87 != 1)
            {
              goto LABEL_137;
            }
          }

          else if (v87)
          {
            goto LABEL_137;
          }
        }

        else if (v87 != v88)
        {
          goto LABEL_137;
        }

        if ((*(v53 + 48) != *(v55 + 48) || *(v53 + 56) != *(v55 + 56)) && (sub_251C719D4() & 1) == 0)
        {
LABEL_137:
          sub_251A9D3AC(v55, type metadata accessor for PBRevocationAuthorization);
          sub_251A9D3AC(v53, type metadata accessor for PBRevocationAuthorization);
          sub_251A9FFEC(v98, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
          goto LABEL_141;
        }

        v89 = *(v4 + 32);
        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
        LOBYTE(v89) = sub_251C70ED4();
        sub_251A9D3AC(v55, type metadata accessor for PBRevocationAuthorization);
        sub_251A9D3AC(v53, type metadata accessor for PBRevocationAuthorization);
        v15 = v98;
        sub_251A9FFEC(v98, &qword_2813E3BF0, type metadata accessor for PBRevocationAuthorization);
        if ((v89 & 1) == 0)
        {
          goto LABEL_141;
        }

LABEL_128:
        v90 = *(v106 + 24);
        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
        v91 = sub_251C70ED4();
        sub_251A9D3AC(v19, type metadata accessor for PBDeleteBlob);
        sub_251A9D3AC(v22, type metadata accessor for PBDeleteBlob);
        if (v91)
        {
          v26 = v103 + v99;
          v25 = v104 + v99;
          if (--v23)
          {
            continue;
          }
        }

        goto LABEL_143;
      }

      v35 = 0;
      if (!v29 && v30 == 0xC000000000000000 && v31 >> 62 == 3)
      {
        v35 = 0;
        if (!v32 && v31 == 0xC000000000000000)
        {
          goto LABEL_57;
        }
      }

LABEL_26:
      if (v34 <= 1)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    v91 = 1;
  }

  else
  {
LABEL_142:
    v91 = 0;
  }

LABEL_143:
  v92 = *MEMORY[0x277D85DE8];
  return v91 & 1;
}

uint64_t sub_251A96DD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C70384();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v53 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D21570];
  sub_251A85F5C(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v47 - v11;
  sub_251A9FEF4(0, &qword_27F479138, &qword_27F479130, v8);
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  v58 = type metadata accessor for PBTouchBlob(0);
  v18 = *(*(v58 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v58);
  v21 = (&v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v56 = &v47 - v23;
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
LABEL_22:
    v45 = 0;
    return v45 & 1;
  }

  if (v24 && a1 != a2)
  {
    v51 = v21;
    v52 = v12;
    v25 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v26 = v5;
    v27 = a1 + v25;
    v28 = a2 + v25;
    v48 = (v26 + 32);
    v49 = v14;
    v50 = (v26 + 8);
    v54 = *(v22 + 72);
    v55 = (v26 + 48);
    v29 = v4;
    v30 = v56;
    while (1)
    {
      sub_251AA005C(v27, v30, type metadata accessor for PBTouchBlob);
      sub_251AA005C(v28, v21, type metadata accessor for PBTouchBlob);
      v31 = *v30 == *v21 && v30[1] == v21[1];
      if (!v31 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v57 = v24;
      v32 = v30;
      v33 = *(v58 + 24);
      v34 = *(v14 + 48);
      v35 = MEMORY[0x277D21570];
      sub_251A9FF6C(v32 + v33, v17, &qword_27F479130, MEMORY[0x277D21570]);
      sub_251A9FF6C(v21 + v33, &v17[v34], &qword_27F479130, v35);
      v36 = *v55;
      if ((*v55)(v17, 1, v29) == 1)
      {
        if (v36(&v17[v34], 1, v29) != 1)
        {
          goto LABEL_20;
        }

        sub_251A9FFEC(v17, &qword_27F479130, MEMORY[0x277D21570]);
        v30 = v56;
        v37 = v57;
      }

      else
      {
        v38 = v17;
        v39 = v17;
        v40 = v52;
        sub_251A9FF6C(v38, v52, &qword_27F479130, MEMORY[0x277D21570]);
        if (v36((v39 + v34), 1, v29) == 1)
        {
          (*v50)(v40, v29);
          v17 = v39;
          v21 = v51;
LABEL_20:
          sub_251A9DBA8(v17, &qword_27F479138, &qword_27F479130, MEMORY[0x277D21570]);
          v30 = v56;
          break;
        }

        v41 = v53;
        (*v48)(v53, v39 + v34, v29);
        sub_251A932D4(&qword_27F479140, MEMORY[0x277D21570]);
        v42 = sub_251C70ED4();
        v43 = *v50;
        (*v50)(v41, v29);
        v43(v40, v29);
        sub_251A9FFEC(v39, &qword_27F479130, MEMORY[0x277D21570]);
        v17 = v39;
        v14 = v49;
        v21 = v51;
        v30 = v56;
        v37 = v57;
        if ((v42 & 1) == 0)
        {
          break;
        }
      }

      v44 = *(v58 + 20);
      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
      v45 = sub_251C70ED4();
      sub_251A9D3AC(v21, type metadata accessor for PBTouchBlob);
      sub_251A9D3AC(v30, type metadata accessor for PBTouchBlob);
      if (v45)
      {
        v28 += v54;
        v27 += v54;
        v24 = v37 - 1;
        if (v24)
        {
          continue;
        }
      }

      return v45 & 1;
    }

    sub_251A9D3AC(v21, type metadata accessor for PBTouchBlob);
    sub_251A9D3AC(v30, type metadata accessor for PBTouchBlob);
    goto LABEL_22;
  }

  v45 = 1;
  return v45 & 1;
}

uint64_t sub_251A97450(uint64_t a1, uint64_t a2)
{
  v95 = sub_251C70384();
  v4 = *(v95 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v95);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D21570];
  v9 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v93 = &v84 - v12;
  sub_251A9FEF4(0, &qword_27F479138, &qword_27F479130, v8);
  v94 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v96 = &v84 - v15;
  v99 = type metadata accessor for PBBlob(0);
  v16 = *(v99 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v99);
  v102 = (&v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251A85F5C(0, &qword_27F479148, type metadata accessor for PBBlob, v9);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v103 = (&v84 - v21);
  sub_251A9FEF4(0, &qword_27F479150, &qword_27F479148, type metadata accessor for PBBlob);
  v98 = v22;
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v84 - v24;
  v100 = type metadata accessor for PBBlobPullResult(0);
  v26 = *(*(v100 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v100);
  v29 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v32 = &v84 - v31;
  v33 = *(a1 + 16);
  if (v33 != *(a2 + 16))
  {
LABEL_81:
    v83 = 0;
    return v83 & 1;
  }

  if (!v33 || a1 == a2)
  {
    v83 = 1;
    return v83 & 1;
  }

  v88 = 0;
  v89 = v25;
  v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v35 = a1 + v34;
  v101 = a2 + v34;
  v84 = (v4 + 32);
  v85 = v7;
  v86 = (v4 + 8);
  v36 = *(v30 + 72);
  v90 = (v4 + 48);
  v91 = v36;
  v37 = v99;
  v92 = (v16 + 48);
  while (1)
  {
    v97 = v35;
    sub_251AA005C(v35, v32, type metadata accessor for PBBlobPullResult);
    sub_251AA005C(v101, v29, type metadata accessor for PBBlobPullResult);
    v38 = *v32 == *v29 && *(v32 + 1) == *(v29 + 1);
    if (!v38 && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_80;
    }

    v39 = *(v32 + 2) == *(v29 + 2) && *(v32 + 3) == *(v29 + 3);
    if (!v39 && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_80;
    }

    v40 = *(v32 + 4);
    if (v32[40] == 1)
    {
      v40 = qword_251C74EB8[v40];
    }

    v41 = *(v29 + 4);
    if (v29[40])
    {
      if (v41 > 1)
      {
        if (v41 == 2)
        {
          if (v40 != 5)
          {
            goto LABEL_80;
          }
        }

        else if (v40 != 7)
        {
          goto LABEL_80;
        }
      }

      else if (v41)
      {
        if (v40 != 4)
        {
          goto LABEL_80;
        }
      }

      else if (v40)
      {
        goto LABEL_80;
      }
    }

    else if (v40 != v41)
    {
      goto LABEL_80;
    }

    v42 = *(v100 + 32);
    v43 = *(v98 + 48);
    sub_251A9FF6C(&v32[v42], v25, &qword_27F479148, type metadata accessor for PBBlob);
    sub_251A9FF6C(&v29[v42], &v25[v43], &qword_27F479148, type metadata accessor for PBBlob);
    v44 = *v92;
    if ((*v92)(v25, 1, v37) == 1)
    {
      if (v44(&v25[v43], 1, v37) != 1)
      {
        goto LABEL_76;
      }

      sub_251A9FFEC(v25, &qword_27F479148, type metadata accessor for PBBlob);
      goto LABEL_71;
    }

    v45 = v103;
    sub_251A9FF6C(v25, v103, &qword_27F479148, type metadata accessor for PBBlob);
    if (v44(&v25[v43], 1, v37) == 1)
    {
      sub_251A9D3AC(v45, type metadata accessor for PBBlob);
LABEL_76:
      sub_251A9DBA8(v25, &qword_27F479150, &qword_27F479148, type metadata accessor for PBBlob);
      goto LABEL_80;
    }

    v46 = v102;
    sub_251A9D40C(&v25[v43], v102, type metadata accessor for PBBlob);
    result = *v45;
    if (*v45 != *v46 || v45[1] != v46[1])
    {
      result = sub_251C719D4();
      v45 = v103;
      if ((result & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    v48 = v45[2];
    v49 = v45[3];
    v50 = v102[2];
    v51 = v102[3];
    v52 = v49 >> 62;
    v53 = v51 >> 62;
    if (v49 >> 62 != 3)
    {
      break;
    }

    v54 = 0;
    if (v48)
    {
      goto LABEL_50;
    }

    if (v49 != 0xC000000000000000)
    {
      goto LABEL_50;
    }

    if (v51 >> 62 != 3)
    {
      goto LABEL_50;
    }

    v54 = 0;
    if (v50 || v51 != 0xC000000000000000)
    {
      goto LABEL_50;
    }

LABEL_64:
    v64 = sub_251A9BEC8(v45[4], v102[4], type metadata accessor for PBBlobAttribute, type metadata accessor for PBBlobAttribute, type metadata accessor for PBBlobAttribute);
    v45 = v103;
    if ((v64 & 1) == 0)
    {
      goto LABEL_79;
    }

    v65 = *(v99 + 32);
    v66 = *(v94 + 48);
    v67 = MEMORY[0x277D21570];
    v68 = v96;
    sub_251A9FF6C(v103 + v65, v96, &qword_27F479130, MEMORY[0x277D21570]);
    sub_251A9FF6C(v102 + v65, v68 + v66, &qword_27F479130, v67);
    v69 = *v90;
    v70 = v95;
    if ((*v90)(v68, 1, v95) == 1)
    {
      if (v69(v68 + v66, 1, v70) != 1)
      {
        goto LABEL_78;
      }

      sub_251A9FFEC(v68, &qword_27F479130, MEMORY[0x277D21570]);
      v25 = v89;
    }

    else
    {
      v71 = v93;
      sub_251A9FF6C(v68, v93, &qword_27F479130, MEMORY[0x277D21570]);
      if (v69(v68 + v66, 1, v70) == 1)
      {
        (*v86)(v71, v70);
LABEL_78:
        sub_251A9DBA8(v68, &qword_27F479138, &qword_27F479130, MEMORY[0x277D21570]);
        v25 = v89;
        v45 = v103;
LABEL_79:
        sub_251A9D3AC(v102, type metadata accessor for PBBlob);
        sub_251A9D3AC(v45, type metadata accessor for PBBlob);
        sub_251A9FFEC(v25, &qword_27F479148, type metadata accessor for PBBlob);
LABEL_80:
        sub_251A9D3AC(v29, type metadata accessor for PBBlobPullResult);
        sub_251A9D3AC(v32, type metadata accessor for PBBlobPullResult);
        goto LABEL_81;
      }

      v72 = v71;
      v73 = v85;
      (*v84)(v85, v68 + v66, v70);
      sub_251A932D4(&qword_27F479140, MEMORY[0x277D21570]);
      v87 = sub_251C70ED4();
      v74 = *v86;
      (*v86)(v73, v70);
      v75 = v72;
      v76 = v103;
      v74(v75, v70);
      sub_251A9FFEC(v96, &qword_27F479130, MEMORY[0x277D21570]);
      v45 = v76;
      v25 = v89;
      if ((v87 & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    v77 = v99;
    v78 = *(v99 + 28);
    sub_251C703B4();
    sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
    v79 = v102;
    v80 = sub_251C70ED4();
    v81 = v79;
    v37 = v77;
    sub_251A9D3AC(v81, type metadata accessor for PBBlob);
    sub_251A9D3AC(v103, type metadata accessor for PBBlob);
    sub_251A9FFEC(v25, &qword_27F479148, type metadata accessor for PBBlob);
    if ((v80 & 1) == 0)
    {
      goto LABEL_80;
    }

LABEL_71:
    v82 = *(v100 + 28);
    sub_251C703B4();
    sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
    v83 = sub_251C70ED4();
    sub_251A9D3AC(v29, type metadata accessor for PBBlobPullResult);
    sub_251A9D3AC(v32, type metadata accessor for PBBlobPullResult);
    if (v83)
    {
      v101 += v91;
      v35 = v97 + v91;
      if (--v33)
      {
        continue;
      }
    }

    return v83 & 1;
  }

  if (v52)
  {
    if (v52 == 1)
    {
      LODWORD(v54) = HIDWORD(v48) - v48;
      if (__OFSUB__(HIDWORD(v48), v48))
      {
        goto LABEL_85;
      }

      v54 = v54;
    }

    else
    {
      v56 = *(v48 + 16);
      v55 = *(v48 + 24);
      v57 = __OFSUB__(v55, v56);
      v54 = v55 - v56;
      if (v57)
      {
        goto LABEL_84;
      }
    }
  }

  else
  {
    v54 = BYTE6(v49);
  }

LABEL_50:
  if (v53 <= 1)
  {
    if (v53)
    {
      LODWORD(v58) = HIDWORD(v50) - v50;
      if (__OFSUB__(HIDWORD(v50), v50))
      {
        goto LABEL_83;
      }

      v58 = v58;
    }

    else
    {
      v58 = BYTE6(v51);
    }

LABEL_59:
    if (v54 != v58)
    {
      goto LABEL_79;
    }

    if (v54 >= 1)
    {
      sub_251A858C4(v50, v51);
      v61 = v48;
      v62 = v88;
      v63 = sub_251A9CFA8(v61, v49, v50, v51);
      v45 = v103;
      v88 = v62;
      if ((v63 & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    goto LABEL_64;
  }

  if (v53 != 2)
  {
    if (v54)
    {
      goto LABEL_79;
    }

    goto LABEL_64;
  }

  v60 = *(v50 + 16);
  v59 = *(v50 + 24);
  v57 = __OFSUB__(v59, v60);
  v58 = v59 - v60;
  if (!v57)
  {
    goto LABEL_59;
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

uint64_t sub_251A98080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBDateRange(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A85F5C(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = (&v47 - v10);
  sub_251A9FEF4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v53 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - v13;
  v52 = type metadata accessor for PBMedicationDosage(0);
  v15 = *(*(v52 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v52);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v21 = (&v47 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_50:
    v45 = 0;
    return v45 & 1;
  }

  if (v22 && a1 != a2)
  {
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v50 = (v5 + 48);
    v51 = v4;
    v48 = *(v19 + 72);
    v26 = v52;
    while (1)
    {
      sub_251AA005C(v24, v21, type metadata accessor for PBMedicationDosage);
      v54 = v25;
      v55 = v24;
      sub_251AA005C(v25, v18, type metadata accessor for PBMedicationDosage);
      v27 = *v21 == *v18 && v21[1] == v18[1];
      if (!v27 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v28 = *(v26 + 24);
      v29 = *(v53 + 48);
      sub_251A9FF6C(v21 + v28, v14, qword_2813E6EE8, type metadata accessor for PBDateRange);
      sub_251A9FF6C(v18 + v28, &v14[v29], qword_2813E6EE8, type metadata accessor for PBDateRange);
      v30 = v51;
      v31 = *v50;
      if ((*v50)(v14, 1, v51) == 1)
      {
        if (v31(&v14[v29], 1, v30) != 1)
        {
          goto LABEL_48;
        }

        sub_251A9FFEC(v14, qword_2813E6EE8, type metadata accessor for PBDateRange);
      }

      else
      {
        v32 = v49;
        sub_251A9FF6C(v14, v49, qword_2813E6EE8, type metadata accessor for PBDateRange);
        if (v31(&v14[v29], 1, v30) == 1)
        {
          sub_251A9D3AC(v32, type metadata accessor for PBDateRange);
LABEL_48:
          sub_251A9DBA8(v14, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
          break;
        }

        v33 = v56;
        sub_251A9D40C(&v14[v29], v56, type metadata accessor for PBDateRange);
        if ((*v32 != *v33 || v32[1] != v33[1]) && (sub_251C719D4() & 1) == 0 || (v32[2] != *(v56 + 16) || v32[3] != *(v56 + 24)) && (sub_251C719D4() & 1) == 0)
        {
LABEL_45:
          sub_251A9D3AC(v56, type metadata accessor for PBDateRange);
          sub_251A9D3AC(v32, type metadata accessor for PBDateRange);
          sub_251A9FFEC(v14, qword_2813E6EE8, type metadata accessor for PBDateRange);
          break;
        }

        v34 = v32[4];
        v35 = *(v56 + 32);
        if (*(v56 + 40) == 1)
        {
          if (v35 <= 2)
          {
            if (v35)
            {
              if (v35 == 1)
              {
                if (v34 != 1)
                {
                  goto LABEL_45;
                }
              }

              else if (v34 != 2)
              {
                goto LABEL_45;
              }
            }

            else if (v34)
            {
              goto LABEL_45;
            }
          }

          else if (v35 > 4)
          {
            if (v35 == 5)
            {
              if (v34 != 5)
              {
                goto LABEL_45;
              }
            }

            else if (v34 != 6)
            {
              goto LABEL_45;
            }
          }

          else if (v35 == 3)
          {
            if (v34 != 3)
            {
              goto LABEL_45;
            }
          }

          else if (v34 != 4)
          {
            goto LABEL_45;
          }
        }

        else if (v34 != v35)
        {
          goto LABEL_45;
        }

        v36 = *(v30 + 28);
        sub_251C703B4();
        v37 = v32;
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
        v38 = v21;
        v39 = v18;
        v40 = v14;
        v41 = v56;
        v42 = sub_251C70ED4();
        v43 = v41;
        v14 = v40;
        v18 = v39;
        v21 = v38;
        v26 = v52;
        sub_251A9D3AC(v43, type metadata accessor for PBDateRange);
        sub_251A9D3AC(v37, type metadata accessor for PBDateRange);
        sub_251A9FFEC(v14, qword_2813E6EE8, type metadata accessor for PBDateRange);
        if ((v42 & 1) == 0)
        {
          break;
        }
      }

      v44 = *(v26 + 20);
      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
      v45 = sub_251C70ED4();
      sub_251A9D3AC(v18, type metadata accessor for PBMedicationDosage);
      sub_251A9D3AC(v21, type metadata accessor for PBMedicationDosage);
      if (v45)
      {
        v25 = v54 + v48;
        v24 = v55 + v48;
        if (--v22)
        {
          continue;
        }
      }

      return v45 & 1;
    }

    sub_251A9D3AC(v18, type metadata accessor for PBMedicationDosage);
    sub_251A9D3AC(v21, type metadata accessor for PBMedicationDosage);
    goto LABEL_50;
  }

  v45 = 1;
  return v45 & 1;
}

uint64_t sub_251A987D8(uint64_t a1, uint64_t a2)
{
  v87[3] = *MEMORY[0x277D85DE8];
  v81 = sub_251C70384();
  v4 = *(v81 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v81);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D21570];
  sub_251A85F5C(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v78 = &v70 - v11;
  sub_251A9FEF4(0, &qword_27F479138, &qword_27F479130, v8);
  v80 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v84 = &v70 - v14;
  v79 = type metadata accessor for PBBlob(0);
  v15 = *(*(v79 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v79);
  v18 = (&v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v21 = (&v70 - v20);
  v22 = *(a2 + 16);
  v85 = *(a1 + 16);
  if (v85 != v22)
  {
    goto LABEL_74;
  }

  if (!v85 || a1 == a2)
  {
    v66 = 1;
    goto LABEL_75;
  }

  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v83 = a2 + v23;
  v77 = (v4 + 48);
  v71 = (v4 + 32);
  v72 = v7;
  v73 = (v4 + 8);
  v25 = *(v19 + 72);
  v75 = 0;
  v76 = v25;
  v26 = v79;
  while (1)
  {
    sub_251AA005C(v24, v21, type metadata accessor for PBBlob);
    if (!v85)
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
    }

    v82 = v24;
    sub_251AA005C(v83, v18, type metadata accessor for PBBlob);
    v27 = *v21 == *v18 && v21[1] == v18[1];
    if (!v27 && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_73;
    }

    v28 = v21[2];
    v29 = v21[3];
    v31 = v18[2];
    v30 = v18[3];
    v32 = v29 >> 62;
    v33 = v30 >> 62;
    if (v29 >> 62 == 3)
    {
      v34 = 0;
      if (!v28 && v29 == 0xC000000000000000 && v30 >> 62 == 3)
      {
        v34 = 0;
        if (!v31 && v30 == 0xC000000000000000)
        {
          goto LABEL_61;
        }
      }

LABEL_27:
      if (v33 <= 1)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v40 = *(v28 + 16);
        v39 = *(v28 + 24);
        v37 = __OFSUB__(v39, v40);
        v34 = v39 - v40;
        if (v37)
        {
          goto LABEL_79;
        }

        goto LABEL_27;
      }

      v34 = 0;
      if (v33 <= 1)
      {
        goto LABEL_28;
      }
    }

    else if (v32)
    {
      LODWORD(v34) = HIDWORD(v28) - v28;
      if (__OFSUB__(HIDWORD(v28), v28))
      {
        goto LABEL_80;
      }

      v34 = v34;
      if (v33 <= 1)
      {
LABEL_28:
        if (v33)
        {
          LODWORD(v38) = HIDWORD(v31) - v31;
          if (__OFSUB__(HIDWORD(v31), v31))
          {
            goto LABEL_78;
          }

          v38 = v38;
        }

        else
        {
          v38 = BYTE6(v30);
        }

        goto LABEL_34;
      }
    }

    else
    {
      v34 = BYTE6(v29);
      if (v33 <= 1)
      {
        goto LABEL_28;
      }
    }

LABEL_21:
    if (v33 != 2)
    {
      if (v34)
      {
        goto LABEL_73;
      }

      goto LABEL_61;
    }

    v36 = *(v31 + 16);
    v35 = *(v31 + 24);
    v37 = __OFSUB__(v35, v36);
    v38 = v35 - v36;
    if (v37)
    {
      goto LABEL_77;
    }

LABEL_34:
    if (v34 != v38)
    {
      goto LABEL_73;
    }

    if (v34 < 1)
    {
      goto LABEL_61;
    }

    if (v32 > 1)
    {
      if (v32 != 2)
      {
        memset(v87, 0, 14);
LABEL_53:
        v50 = v75;
        sub_251A9CD78(v87, v31, v30, &v86);
        v75 = v50;
        if (!v86)
        {
          goto LABEL_73;
        }

        goto LABEL_61;
      }

      v41 = *(v28 + 16);
      v74 = *(v28 + 24);
      v42 = sub_251C6FB74();
      if (v42)
      {
        v43 = v42;
        v44 = sub_251C6FBA4();
        if (__OFSUB__(v41, v44))
        {
          goto LABEL_83;
        }

        v70 = v41 - v44 + v43;
      }

      else
      {
        v70 = 0;
      }

      if (__OFSUB__(v74, v41))
      {
        goto LABEL_82;
      }

      sub_251C6FB94();
      v51 = v70;
    }

    else
    {
      if (!v32)
      {
        v87[0] = v21[2];
        LOWORD(v87[1]) = v29;
        BYTE2(v87[1]) = BYTE2(v29);
        BYTE3(v87[1]) = BYTE3(v29);
        BYTE4(v87[1]) = BYTE4(v29);
        BYTE5(v87[1]) = BYTE5(v29);
        goto LABEL_53;
      }

      v45 = v28;
      if (v28 >> 32 < v28)
      {
        goto LABEL_81;
      }

      v46 = sub_251C6FB74();
      if (v46)
      {
        v47 = v46;
        v48 = sub_251C6FBA4();
        if (__OFSUB__(v45, v48))
        {
          goto LABEL_84;
        }

        v49 = v45 - v48 + v47;
      }

      else
      {
        v49 = 0;
      }

      sub_251C6FB94();
      v51 = v49;
    }

    v52 = v75;
    sub_251A9CD78(v51, v31, v30, v87);
    v75 = v52;
    if ((v87[0] & 1) == 0)
    {
      goto LABEL_73;
    }

LABEL_61:
    if ((sub_251A9BEC8(v21[4], v18[4], type metadata accessor for PBBlobAttribute, type metadata accessor for PBBlobAttribute, type metadata accessor for PBBlobAttribute) & 1) == 0)
    {
      goto LABEL_73;
    }

    v53 = *(v26 + 32);
    v54 = *(v80 + 48);
    v55 = MEMORY[0x277D21570];
    v56 = v84;
    sub_251A9FF6C(v21 + v53, v84, &qword_27F479130, MEMORY[0x277D21570]);
    sub_251A9FF6C(v18 + v53, v56 + v54, &qword_27F479130, v55);
    v57 = *v77;
    v58 = v81;
    if ((*v77)(v56, 1, v81) != 1)
    {
      break;
    }

    if (v57(v84 + v54, 1, v58) != 1)
    {
      goto LABEL_72;
    }

    sub_251A9FFEC(v84, &qword_27F479130, MEMORY[0x277D21570]);
LABEL_67:
    v65 = *(v26 + 28);
    sub_251C703B4();
    sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
    v66 = sub_251C70ED4();
    sub_251A9D3AC(v18, type metadata accessor for PBBlob);
    sub_251A9D3AC(v21, type metadata accessor for PBBlob);
    if (v66)
    {
      v67 = v85;
      v83 += v76;
      v24 = v82 + v76;
      --v85;
      if (v67 != 1)
      {
        continue;
      }
    }

    goto LABEL_75;
  }

  v59 = v84;
  v60 = v78;
  sub_251A9FF6C(v84, v78, &qword_27F479130, MEMORY[0x277D21570]);
  if (v57(v59 + v54, 1, v58) != 1)
  {
    v61 = v84;
    v62 = v60;
    v63 = v72;
    (*v71)(v72, v84 + v54, v58);
    sub_251A932D4(&qword_27F479140, MEMORY[0x277D21570]);
    LODWORD(v74) = sub_251C70ED4();
    v64 = *v73;
    (*v73)(v63, v58);
    v26 = v79;
    v64(v62, v58);
    sub_251A9FFEC(v61, &qword_27F479130, MEMORY[0x277D21570]);
    if ((v74 & 1) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_67;
  }

  (*v73)(v60, v58);
LABEL_72:
  sub_251A9DBA8(v84, &qword_27F479138, &qword_27F479130, MEMORY[0x277D21570]);
LABEL_73:
  sub_251A9D3AC(v18, type metadata accessor for PBBlob);
  sub_251A9D3AC(v21, type metadata accessor for PBBlob);
LABEL_74:
  v66 = 0;
LABEL_75:
  v68 = *MEMORY[0x277D85DE8];
  return v66 & 1;
}

uint64_t sub_251A991B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void))
{
  v32 = a6;
  v30 = a5;
  v31 = a3(0);
  v9 = *(*(v31 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v31);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a2 + 16))
  {
    if (!v16 || a1 == a2)
    {
      return 1;
    }

    v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v18 = a1 + v17;
    v19 = a2 + v17;
    v20 = *(v13 + 72);
    while (1)
    {
      sub_251AA005C(v18, v15, a4);
      sub_251AA005C(v19, v12, a4);
      v21 = *(v31 + 20);
      v22 = *&v15[v21];
      v23 = *&v12[v21];
      if (v22 != v23)
      {
        v24 = *&v15[v21];

        v25 = v30(v22, v23);

        if ((v25 & 1) == 0)
        {
          break;
        }
      }

      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
      if ((sub_251C70ED4() & 1) == 0)
      {
        break;
      }

      v26 = v32;
      sub_251A9D3AC(v12, v32);
      sub_251A9D3AC(v15, v26);
      v19 += v20;
      v18 += v20;
      if (!--v16)
      {
        return 1;
      }
    }

    v28 = v32;
    sub_251A9D3AC(v12, v32);
    sub_251A9D3AC(v15, v28);
  }

  return 0;
}

uint64_t sub_251A99400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBHistogramSeries.Value(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v21 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_19:
    v19 = 0;
    return v19 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_251AA005C(v14, v11, type metadata accessor for PBHistogramSeries.Value);
      sub_251AA005C(v15, v8, type metadata accessor for PBHistogramSeries.Value);
      v17 = *v11 == *v8 && v11[1] == v8[1];
      if (!v17 && (sub_251C719D4() & 1) == 0 || (sub_251A99698(v11[2], v8[2]) & 1) == 0 || (v11[3] != v8[3] || v11[4] != v8[4]) && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v18 = *(v4 + 28);
      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
      v19 = sub_251C70ED4();
      sub_251A9D3AC(v8, type metadata accessor for PBHistogramSeries.Value);
      sub_251A9D3AC(v11, type metadata accessor for PBHistogramSeries.Value);
      if (v19)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v19 & 1;
    }

    sub_251A9D3AC(v8, type metadata accessor for PBHistogramSeries.Value);
    sub_251A9D3AC(v11, type metadata accessor for PBHistogramSeries.Value);
    goto LABEL_19;
  }

  v19 = 1;
  return v19 & 1;
}

uint64_t sub_251A99698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBBucket(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_13:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_251AA005C(v14, v11, type metadata accessor for PBBucket);
      sub_251AA005C(v15, v8, type metadata accessor for PBBucket);
      if (*v11 != *v8 || v11[1] != v8[1] || *(v11 + 4) != *(v8 + 4))
      {
        break;
      }

      v17 = *(v4 + 28);
      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
      v18 = sub_251C70ED4();
      sub_251A9D3AC(v8, type metadata accessor for PBBucket);
      sub_251A9D3AC(v11, type metadata accessor for PBBucket);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_251A9D3AC(v8, type metadata accessor for PBBucket);
    sub_251A9D3AC(v11, type metadata accessor for PBBucket);
    goto LABEL_13;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_251A9990C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251A99968(uint64_t a1, uint64_t a2)
{
  sub_251A85F5C(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v68 - v6;
  sub_251A9FEF4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v68 - v11;
  v13 = type metadata accessor for PBHKConcept(0);
  v80 = *(v13 - 8);
  v14 = *(v80 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v68 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v68 - v21;
  v23 = type metadata accessor for PBHKAllergyReaction(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v31 = &v68 - v30;
  v32 = *(a1 + 16);
  if (v32 != *(a2 + 16))
  {
LABEL_31:
    v67 = 0;
    return v67 & 1;
  }

  if (!v32 || a1 == a2)
  {
    v67 = 1;
    return v67 & 1;
  }

  v77 = v28;
  v78 = v32;
  v33 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v34 = a1 + v33;
  v74 = v12;
  v75 = a2 + v33;
  v35 = 0;
  v72 = (v80 + 48);
  v73 = v9;
  v36 = *(v29 + 72);
  v68 = v17;
  v69 = v7;
  v79 = v27;
  v81 = &v68 - v30;
  v70 = v36;
  v71 = a1 + v33;
  while (1)
  {
    v37 = v36 * v35;
    v38 = v35;
    v39 = v31;
    result = sub_251AA005C(v34 + v36 * v35, v31, type metadata accessor for PBHKAllergyReaction);
    v76 = v38;
    if (v38 == v78)
    {
      break;
    }

    sub_251AA005C(v75 + v37, v27, type metadata accessor for PBHKAllergyReaction);
    v41 = *v39;
    v42 = *v27;
    v43 = *(*v39 + 16);
    if (v43 != *(*v27 + 16))
    {
      goto LABEL_30;
    }

    if (v43 && v41 != v42)
    {
      v44 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v45 = v41 + v44;
      v46 = v42 + v44;
      v47 = *(v80 + 72);
      while (1)
      {
        sub_251AA005C(v45, v22, type metadata accessor for PBHKConcept);
        sub_251AA005C(v46, v20, type metadata accessor for PBHKConcept);
        v48 = *(v13 + 20);
        v49 = *&v22[v48];
        v50 = *&v20[v48];
        if (v49 != v50)
        {
          v51 = *&v22[v48];

          v52 = sub_251B70648(v49, v50);

          if ((v52 & 1) == 0)
          {
            break;
          }
        }

        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
        v53 = sub_251C70ED4();
        sub_251A9D3AC(v20, type metadata accessor for PBHKConcept);
        sub_251A9D3AC(v22, type metadata accessor for PBHKConcept);
        if ((v53 & 1) == 0)
        {
          goto LABEL_30;
        }

        v46 += v47;
        v45 += v47;
        if (!--v43)
        {
          goto LABEL_14;
        }
      }

      sub_251A9D3AC(v20, type metadata accessor for PBHKConcept);
      sub_251A9D3AC(v22, type metadata accessor for PBHKConcept);
      goto LABEL_30;
    }

LABEL_14:
    if ((*(v81 + 1) != *(v79 + 1) || *(v81 + 2) != *(v79 + 2)) && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_30;
    }

    v54 = *(v77 + 28);
    v55 = v74;
    v56 = *(v73 + 48);
    sub_251A9FF6C(&v81[v54], v74, qword_2813E6D28, type metadata accessor for PBHKConcept);
    v27 = v79;
    sub_251A9FF6C(&v79[v54], v55 + v56, qword_2813E6D28, type metadata accessor for PBHKConcept);
    v57 = *v72;
    if ((*v72)(v55, 1, v13) == 1)
    {
      if (v57(v55 + v56, 1, v13) != 1)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v58 = v69;
      sub_251A9FF6C(v55, v69, qword_2813E6D28, type metadata accessor for PBHKConcept);
      if (v57(v55 + v56, 1, v13) == 1)
      {
        sub_251A9D3AC(v58, type metadata accessor for PBHKConcept);
LABEL_35:
        sub_251A9DBA8(v55, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_30:
        sub_251A9D3AC(v79, type metadata accessor for PBHKAllergyReaction);
        sub_251A9D3AC(v81, type metadata accessor for PBHKAllergyReaction);
        goto LABEL_31;
      }

      v59 = v68;
      sub_251A9D40C(v55 + v56, v68, type metadata accessor for PBHKConcept);
      v60 = *(v13 + 20);
      v61 = *(v58 + v60);
      v62 = *(v59 + v60);
      if (v61 != v62)
      {
        v63 = *(v58 + v60);

        v64 = sub_251B70648(v61, v62);

        if ((v64 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
      if ((sub_251C70ED4() & 1) == 0)
      {
LABEL_33:
        sub_251A9D3AC(v59, type metadata accessor for PBHKConcept);
        sub_251A9D3AC(v58, type metadata accessor for PBHKConcept);
        sub_251A9FFEC(v55, qword_2813E6D28, type metadata accessor for PBHKConcept);
        goto LABEL_30;
      }

      sub_251A9D3AC(v59, type metadata accessor for PBHKConcept);
      sub_251A9D3AC(v58, type metadata accessor for PBHKConcept);
    }

    sub_251A9FFEC(v55, qword_2813E6D28, type metadata accessor for PBHKConcept);
    v65 = *(v77 + 24);
    sub_251C703B4();
    sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
    v66 = v81;
    v67 = sub_251C70ED4();
    sub_251A9D3AC(v27, type metadata accessor for PBHKAllergyReaction);
    sub_251A9D3AC(v66, type metadata accessor for PBHKAllergyReaction);
    if (v67)
    {
      v35 = v76 + 1;
      v31 = v81;
      v36 = v70;
      v34 = v71;
      if (v76 + 1 != v78)
      {
        continue;
      }
    }

    return v67 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_251A9A1F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  v79 = *(v4 - 8);
  v5 = *(v79 + 64);
  MEMORY[0x28223BE20](v4);
  v74 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v84 = &v68 - v10;
  sub_251A9FEF4(0, &qword_27F4790E0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v80 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v81 = &v68 - v13;
  v83 = type metadata accessor for PBDateRange(0);
  v14 = *(v83 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v83);
  v75 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A85F5C(0, qword_2813E6EE8, type metadata accessor for PBDateRange, v7);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v76 = (&v68 - v19);
  sub_251A9FEF4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v82 = v20;
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v68 - v22;
  v85 = type metadata accessor for PBCategorySeries.Event(0);
  v24 = *(*(v85 - 1) + 64);
  v25 = MEMORY[0x28223BE20](v85);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v30 = &v68 - v29;
  v31 = *(a1 + 16);
  if (v31 != *(a2 + 16))
  {
LABEL_64:
    v64 = 0;
    return v64 & 1;
  }

  if (!v31 || a1 == a2)
  {
    v64 = 1;
    return v64 & 1;
  }

  v77 = v23;
  v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v33 = a1 + v32;
  v34 = a2 + v32;
  v35 = (v79 + 48);
  v70 = *(v28 + 72);
  v71 = v4;
  v72 = (v79 + 48);
  v73 = (v14 + 48);
  v69 = &v68 - v29;
  while (1)
  {
    result = sub_251AA005C(v33, v30, type metadata accessor for PBCategorySeries.Event);
    if (!v31)
    {
      break;
    }

    v78 = v33;
    sub_251AA005C(v34, v27, type metadata accessor for PBCategorySeries.Event);
    if (*v30 != *v27)
    {
      goto LABEL_63;
    }

    v37 = *(v30 + 1) == *(v27 + 1) && *(v30 + 2) == *(v27 + 2);
    if (!v37 && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_63;
    }

    v79 = v31;
    v38 = v85[9];
    v39 = *(v82 + 48);
    v40 = v77;
    sub_251A9FF6C(&v30[v38], v77, qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251A9FF6C(&v27[v38], v40 + v39, qword_2813E6EE8, type metadata accessor for PBDateRange);
    v41 = *v73;
    v42 = v83;
    if ((*v73)(v40, 1, v83) == 1)
    {
      if (v41(v40 + v39, 1, v42) != 1)
      {
        goto LABEL_59;
      }

      sub_251A9FFEC(v40, qword_2813E6EE8, type metadata accessor for PBDateRange);
      v43 = v79;
    }

    else
    {
      v44 = v76;
      sub_251A9FF6C(v40, v76, qword_2813E6EE8, type metadata accessor for PBDateRange);
      if (v41(v40 + v39, 1, v42) == 1)
      {
        sub_251A9D3AC(v44, type metadata accessor for PBDateRange);
LABEL_59:
        v65 = &qword_27F4790D0;
        v66 = qword_2813E6EE8;
        v67 = type metadata accessor for PBDateRange;
        v57 = v40;
LABEL_62:
        sub_251A9DBA8(v57, v65, v66, v67);
        goto LABEL_63;
      }

      v45 = v75;
      sub_251A9D40C(v40 + v39, v75, type metadata accessor for PBDateRange);
      v35 = v72;
      v43 = v79;
      if ((*v44 != *v45 || v44[1] != *(v45 + 8)) && (sub_251C719D4() & 1) == 0 || (v44[2] != *(v45 + 16) || v44[3] != *(v45 + 24)) && (sub_251C719D4() & 1) == 0)
      {
LABEL_56:
        sub_251A9D3AC(v45, type metadata accessor for PBDateRange);
        sub_251A9D3AC(v44, type metadata accessor for PBDateRange);
        sub_251A9FFEC(v77, qword_2813E6EE8, type metadata accessor for PBDateRange);
LABEL_63:
        sub_251A9D3AC(v27, type metadata accessor for PBCategorySeries.Event);
        sub_251A9D3AC(v30, type metadata accessor for PBCategorySeries.Event);
        goto LABEL_64;
      }

      v46 = v44[4];
      v47 = *(v45 + 32);
      if (*(v45 + 40) == 1)
      {
        if (v47 <= 2)
        {
          if (v47)
          {
            if (v47 == 1)
            {
              if (v46 != 1)
              {
                goto LABEL_56;
              }
            }

            else if (v46 != 2)
            {
              goto LABEL_56;
            }
          }

          else if (v46)
          {
            goto LABEL_56;
          }
        }

        else if (v47 > 4)
        {
          if (v47 == 5)
          {
            if (v46 != 5)
            {
              goto LABEL_56;
            }
          }

          else if (v46 != 6)
          {
            goto LABEL_56;
          }
        }

        else if (v47 == 3)
        {
          if (v46 != 3)
          {
            goto LABEL_56;
          }
        }

        else if (v46 != 4)
        {
          goto LABEL_56;
        }
      }

      else if (v46 != v47)
      {
        goto LABEL_56;
      }

      v48 = *(v42 + 28);
      sub_251C703B4();
      v49 = v44;
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
      v50 = sub_251C70ED4();
      sub_251A9D3AC(v45, type metadata accessor for PBDateRange);
      sub_251A9D3AC(v49, type metadata accessor for PBDateRange);
      sub_251A9FFEC(v77, qword_2813E6EE8, type metadata accessor for PBDateRange);
      if ((v50 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    if ((*(v30 + 3) != *(v27 + 3) || *(v30 + 4) != *(v27 + 4)) && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_63;
    }

    v51 = v85[7];
    v52 = v81;
    v53 = *(v80 + 48);
    sub_251A9FF6C(&v30[v51], v81, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    v54 = &v27[v51];
    v55 = v71;
    sub_251A9FF6C(v54, v52 + v53, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    v56 = *v35;
    if ((*v35)(v52, 1, v55) == 1)
    {
      v37 = v56(v52 + v53, 1, v55) == 1;
      v57 = v52;
      if (!v37)
      {
        goto LABEL_61;
      }

      sub_251A9FFEC(v52, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    }

    else
    {
      v58 = v43;
      v59 = v84;
      sub_251A9FF6C(v52, v84, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
      if (v56(v52 + v53, 1, v55) == 1)
      {
        sub_251A9D3AC(v59, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
        v57 = v52;
        v30 = v69;
LABEL_61:
        v65 = &qword_27F4790E0;
        v66 = qword_2813E5FC8;
        v67 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData;
        goto LABEL_62;
      }

      v60 = v74;
      sub_251A9D40C(v52 + v53, v74, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
      v61 = sub_251B5D400(v84, v60);
      v62 = v60;
      v35 = v72;
      sub_251A9D3AC(v62, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
      sub_251A9D3AC(v84, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
      sub_251A9FFEC(v52, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
      v43 = v58;
      v30 = v69;
      if ((v61 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    v63 = v85[8];
    sub_251C703B4();
    sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
    v64 = sub_251C70ED4();
    sub_251A9D3AC(v27, type metadata accessor for PBCategorySeries.Event);
    sub_251A9D3AC(v30, type metadata accessor for PBCategorySeries.Event);
    if (v64)
    {
      v31 = v43 - 1;
      v34 += v70;
      v33 = v78 + v70;
      if (v43 != 1)
      {
        continue;
      }
    }

    return v64 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_251A9AD0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBCycleTracking.Event(0);
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v11 = type metadata accessor for PBCycleTracking.Cycle(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v46 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v38 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_29:
    v37 = 0;
    return v37 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v37 = 1;
    return v37 & 1;
  }

  v19 = 0;
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v40 = v11;
  v41 = a2 + v20;
  v42 = *(v15 + 72);
  v43 = a1 + v20;
  v45 = &v38 - v16;
  v39 = v18;
  while (1)
  {
    v21 = v42 * v19;
    result = sub_251AA005C(v43 + v42 * v19, v17, type metadata accessor for PBCycleTracking.Cycle);
    if (v19 == v18)
    {
      break;
    }

    v44 = v19;
    v23 = v41 + v21;
    v24 = v46;
    sub_251AA005C(v23, v46, type metadata accessor for PBCycleTracking.Cycle);
    v25 = *v17 == *v24 && v17[1] == v24[1];
    if (!v25 && (sub_251C719D4() & 1) == 0 || ((result = *(v45 + 16), result != *(v46 + 16)) || *(v45 + 24) != *(v46 + 24)) && (result = sub_251C719D4(), (result & 1) == 0) || (v26 = *(v45 + 32), v27 = *(v46 + 32), v28 = *(v26 + 16), v28 != *(v27 + 16)))
    {
LABEL_28:
      sub_251A9D3AC(v46, type metadata accessor for PBCycleTracking.Cycle);
      sub_251A9D3AC(v45, type metadata accessor for PBCycleTracking.Cycle);
      goto LABEL_29;
    }

    if (v28 && v26 != v27)
    {
      v29 = 0;
      v30 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v31 = v26 + v30;
      v32 = v27 + v30;
      while (v29 < *(v26 + 16))
      {
        v33 = *(v47 + 72) * v29;
        result = sub_251AA005C(v31 + v33, v10, type metadata accessor for PBCycleTracking.Event);
        if (v29 >= *(v27 + 16))
        {
          goto LABEL_32;
        }

        sub_251AA005C(v32 + v33, v8, type metadata accessor for PBCycleTracking.Event);
        v34 = sub_251B8C59C(v10, v8);
        sub_251A9D3AC(v8, type metadata accessor for PBCycleTracking.Event);
        result = sub_251A9D3AC(v10, type metadata accessor for PBCycleTracking.Event);
        if ((v34 & 1) == 0)
        {
          goto LABEL_28;
        }

        if (v28 == ++v29)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      break;
    }

LABEL_22:
    if (*(v45 + 40) != *(v46 + 40) || *(v45 + 44) != *(v46 + 44))
    {
      goto LABEL_28;
    }

    v35 = *(v40 + 36);
    sub_251C703B4();
    sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
    v17 = v45;
    v36 = v46;
    v37 = sub_251C70ED4();
    sub_251A9D3AC(v36, type metadata accessor for PBCycleTracking.Cycle);
    sub_251A9D3AC(v17, type metadata accessor for PBCycleTracking.Cycle);
    if (v37)
    {
      v19 = v44 + 1;
      v18 = v39;
      if (v44 + 1 != v39)
      {
        continue;
      }
    }

    return v37 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_251A9B180(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 40); ; i += 16)
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(i - 1);
      if (*i == 1)
      {
        switch(v7)
        {
          case 1:
            if (v5 != 1)
            {
              return 0;
            }

            goto LABEL_6;
          case 2:
            if (v5 != 2)
            {
              return 0;
            }

            goto LABEL_6;
          case 3:
            if (v5 != 3)
            {
              return 0;
            }

            goto LABEL_6;
          case 4:
            if (v5 != 4)
            {
              return 0;
            }

            goto LABEL_6;
          case 5:
            if (v5 != 5)
            {
              return 0;
            }

            goto LABEL_6;
          case 6:
            if (v5 != 6)
            {
              return 0;
            }

            goto LABEL_6;
          case 7:
            if (v5 != 7)
            {
              return 0;
            }

            goto LABEL_6;
          case 8:
            if (v5 != 8)
            {
              return 0;
            }

            goto LABEL_6;
          case 9:
            if (v5 != 9)
            {
              return 0;
            }

            goto LABEL_6;
          case 10:
            if (v5 != 10)
            {
              return 0;
            }

            goto LABEL_6;
          case 11:
            if (v5 != 11)
            {
              return 0;
            }

            goto LABEL_6;
          case 12:
            if (v5 != 12)
            {
              return 0;
            }

            goto LABEL_6;
          case 13:
            if (v5 != 13)
            {
              return 0;
            }

            goto LABEL_6;
          case 14:
            if (v5 != 14)
            {
              return 0;
            }

            goto LABEL_6;
          case 15:
            if (v5 != 15)
            {
              return 0;
            }

            goto LABEL_6;
          case 16:
            if (v5 != 16)
            {
              return 0;
            }

            goto LABEL_6;
          case 17:
            if (v5 != 17)
            {
              return 0;
            }

            goto LABEL_6;
          case 18:
            if (v5 != 18)
            {
              return 0;
            }

            goto LABEL_6;
          case 19:
            if (v5 != 19)
            {
              return 0;
            }

            goto LABEL_6;
          case 20:
            if (v5 != 20)
            {
              return 0;
            }

            goto LABEL_6;
          case 21:
            if (v5 != 21)
            {
              return 0;
            }

            goto LABEL_6;
          case 22:
            if (v5 != 22)
            {
              return 0;
            }

            goto LABEL_6;
          default:
            if (v5)
            {
              return 0;
            }

            goto LABEL_6;
        }
      }

      if (v5 != v7)
      {
        break;
      }

LABEL_6:
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_251A9B368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBSleepSummary.Schedule(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_19:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_251AA005C(v14, v11, type metadata accessor for PBSleepSummary.Schedule);
      sub_251AA005C(v15, v8, type metadata accessor for PBSleepSummary.Schedule);
      if (*v11 != *v8 || v11[1] != v8[1] || v11[2] != v8[2] || v11[3] != v8[3] || v11[4] != v8[4] || v11[5] != v8[5] || v11[6] != v8[6] || *(v11 + 2) != *(v8 + 2) || *(v11 + 3) != *(v8 + 3))
      {
        break;
      }

      v17 = *(v4 + 52);
      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
      v18 = sub_251C70ED4();
      sub_251A9D3AC(v8, type metadata accessor for PBSleepSummary.Schedule);
      sub_251A9D3AC(v11, type metadata accessor for PBSleepSummary.Schedule);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_251A9D3AC(v8, type metadata accessor for PBSleepSummary.Schedule);
    sub_251A9D3AC(v11, type metadata accessor for PBSleepSummary.Schedule);
    goto LABEL_19;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_251A9B63C(uint64_t a1, uint64_t a2)
{
  v50 = type metadata accessor for PBHKInspectableValueCollection(0);
  v4 = *(v50 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v50);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A85F5C(0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v41 - v9;
  sub_251A9FEF4(0, &qword_27F4790F0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  v49 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v48 = &v41 - v13;
  v14 = type metadata accessor for PBHKReferenceRange(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v21 = (&v41 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_22:
    v39 = 0;
    return v39 & 1;
  }

  if (v22 && a1 != a2)
  {
    v42 = v10;
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v46 = v18;
    v47 = (v4 + 48);
    v44 = *(v19 + 72);
    v45 = v14;
    v26 = qword_2813E32E8;
    while (1)
    {
      sub_251AA005C(v24, v21, type metadata accessor for PBHKReferenceRange);
      sub_251AA005C(v25, v18, type metadata accessor for PBHKReferenceRange);
      v27 = *v21 == *v18 && v21[1] == v18[1];
      if (!v27 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v28 = *(v14 + 24);
      v29 = v48;
      v30 = *(v49 + 48);
      sub_251A9FF6C(v21 + v28, v48, v26, type metadata accessor for PBHKInspectableValueCollection);
      v31 = v18 + v28;
      v32 = v26;
      v33 = v50;
      sub_251A9FF6C(v31, v29 + v30, v32, type metadata accessor for PBHKInspectableValueCollection);
      v34 = *v47;
      if ((*v47)(v29, 1, v33) == 1)
      {
        if (v34(v29 + v30, 1, v50) != 1)
        {
          goto LABEL_20;
        }

        v26 = v32;
        sub_251A9FFEC(v29, v32, type metadata accessor for PBHKInspectableValueCollection);
        v14 = v45;
        v18 = v46;
      }

      else
      {
        v35 = v42;
        sub_251A9FF6C(v29, v42, v32, type metadata accessor for PBHKInspectableValueCollection);
        if (v34(v29 + v30, 1, v50) == 1)
        {
          sub_251A9D3AC(v35, type metadata accessor for PBHKInspectableValueCollection);
LABEL_20:
          sub_251A9DBA8(v29, &qword_27F4790F0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
          v18 = v46;
          break;
        }

        v36 = v43;
        sub_251A9D40C(v29 + v30, v43, type metadata accessor for PBHKInspectableValueCollection);
        v37 = sub_251B80550(v35, v36);
        sub_251A9D3AC(v36, type metadata accessor for PBHKInspectableValueCollection);
        sub_251A9D3AC(v35, type metadata accessor for PBHKInspectableValueCollection);
        sub_251A9FFEC(v29, v32, type metadata accessor for PBHKInspectableValueCollection);
        v26 = v32;
        v14 = v45;
        v18 = v46;
        if ((v37 & 1) == 0)
        {
          break;
        }
      }

      v38 = *(v14 + 20);
      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
      v39 = sub_251C70ED4();
      sub_251A9D3AC(v18, type metadata accessor for PBHKReferenceRange);
      sub_251A9D3AC(v21, type metadata accessor for PBHKReferenceRange);
      if (v39)
      {
        v25 += v44;
        v24 += v44;
        if (--v22)
        {
          continue;
        }
      }

      return v39 & 1;
    }

    sub_251A9D3AC(v18, type metadata accessor for PBHKReferenceRange);
    sub_251A9D3AC(v21, type metadata accessor for PBHKReferenceRange);
    goto LABEL_22;
  }

  v39 = 1;
  return v39 & 1;
}

uint64_t sub_251A9BBF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBSleepSeries.Value(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_18:
    v19 = 0;
    return v19 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_251AA005C(v14, v11, type metadata accessor for PBSleepSeries.Value);
      sub_251AA005C(v15, v8, type metadata accessor for PBSleepSeries.Value);
      v17 = *v11 == *v8 && *(v11 + 1) == *(v8 + 1);
      if (!v17 && (sub_251C719D4() & 1) == 0 || *(v11 + 4) != *(v8 + 4) || *(v11 + 5) != *(v8 + 5) || *(v11 + 6) != *(v8 + 6))
      {
        break;
      }

      v18 = *(v4 + 32);
      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
      v19 = sub_251C70ED4();
      sub_251A9D3AC(v8, type metadata accessor for PBSleepSeries.Value);
      sub_251A9D3AC(v11, type metadata accessor for PBSleepSeries.Value);
      if (v19)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v19 & 1;
    }

    sub_251A9D3AC(v8, type metadata accessor for PBSleepSeries.Value);
    sub_251A9D3AC(v11, type metadata accessor for PBSleepSeries.Value);
    goto LABEL_18;
  }

  v19 = 1;
  return v19 & 1;
}

uint64_t sub_251A9BEC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v27 = a3(0);
  v9 = *(*(v27 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v27);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v15 = (&v26 - v14);
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
LABEL_23:
    v24 = 0;
    return v24 & 1;
  }

  if (v16 && a1 != a2)
  {
    v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v18 = a1 + v17;
    v19 = a2 + v17;
    v20 = *(v13 + 72);
    while (1)
    {
      sub_251AA005C(v18, v15, a5);
      sub_251AA005C(v19, v12, a5);
      v21 = *v15 == *v12 && v15[1] == v12[1];
      if (!v21 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v22 = v15[2] == v12[2] && v15[3] == v12[3];
      if (!v22 && (sub_251C719D4() & 1) == 0 || (v15[4] != v12[4] || v15[5] != v12[5]) && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v23 = *(v27 + 28);
      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
      v24 = sub_251C70ED4();
      sub_251A9D3AC(v12, a4);
      sub_251A9D3AC(v15, a4);
      if (v24)
      {
        v19 += v20;
        v18 += v20;
        if (--v16)
        {
          continue;
        }
      }

      return v24 & 1;
    }

    sub_251A9D3AC(v12, a4);
    sub_251A9D3AC(v15, a4);
    goto LABEL_23;
  }

  v24 = 1;
  return v24 & 1;
}

uint64_t sub_251A9C138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBDataTypeShared(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = (&v23 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v21 = 1;
      return v21 & 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_251AA005C(v14, v11, type metadata accessor for PBDataTypeShared);
      sub_251AA005C(v15, v8, type metadata accessor for PBDataTypeShared);
      v17 = *v11 == *v8 && v11[1] == *(v8 + 1);
      if (!v17 && (sub_251C719D4() & 1) == 0)
      {
        break;
      }

      v18 = v11[2];
      v19 = *(v8 + 2);
      if (v8[24] == 1)
      {
        if (v19 > 3)
        {
          if (v19 > 5)
          {
            if (v19 == 6)
            {
              if (v18 != 6)
              {
                break;
              }
            }

            else if (v18 != 7)
            {
              break;
            }
          }

          else if (v19 == 4)
          {
            if (v18 != 4)
            {
              break;
            }
          }

          else if (v18 != 5)
          {
            break;
          }
        }

        else if (v19 > 1)
        {
          if (v19 == 2)
          {
            if (v18 != 2)
            {
              break;
            }
          }

          else if (v18 != 3)
          {
            break;
          }
        }

        else if (v19)
        {
          if (v18 != 1)
          {
            break;
          }
        }

        else if (v18)
        {
          break;
        }
      }

      else if (v18 != v19)
      {
        break;
      }

      v20 = *(v4 + 24);
      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
      v21 = sub_251C70ED4();
      sub_251A9D3AC(v8, type metadata accessor for PBDataTypeShared);
      sub_251A9D3AC(v11, type metadata accessor for PBDataTypeShared);
      if (v21)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    sub_251A9D3AC(v8, type metadata accessor for PBDataTypeShared);
    sub_251A9D3AC(v11, type metadata accessor for PBDataTypeShared);
  }

  v21 = 0;
  return v21 & 1;
}

uint64_t sub_251A9C498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBClinicalRecord(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v24 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_251AA005C(v14, v11, type metadata accessor for PBClinicalRecord);
        sub_251AA005C(v15, v8, type metadata accessor for PBClinicalRecord);
        v17 = *(v4 + 20);
        v18 = *&v11[v17];
        v19 = *&v8[v17];
        if (v18 != v19)
        {
          v20 = *&v11[v17];

          v21 = sub_251B6E49C(v18, v19);

          if (!v21)
          {
            break;
          }
        }

        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
        v22 = sub_251C70ED4();
        sub_251A9D3AC(v8, type metadata accessor for PBClinicalRecord);
        sub_251A9D3AC(v11, type metadata accessor for PBClinicalRecord);
        if (v22)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v22 & 1;
      }

      sub_251A9D3AC(v8, type metadata accessor for PBClinicalRecord);
      sub_251A9D3AC(v11, type metadata accessor for PBClinicalRecord);
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_251A9C778(uint64_t a1, uint64_t a2)
{
  v34[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a1 + 40);
      v5 = (a2 + 40);
      while (1)
      {
        v7 = *(v4 - 1);
        v6 = *v4;
        v9 = *(v5 - 1);
        v8 = *v5;
        v10 = *v4 >> 62;
        v11 = *v5 >> 62;
        if (v10 == 3)
        {
          break;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v20 = *(v7 + 16);
            v19 = *(v7 + 24);
            v17 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v17)
            {
              goto LABEL_63;
            }

            goto LABEL_28;
          }

          v13 = 0;
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

        else if (v10)
        {
          LODWORD(v13) = HIDWORD(v7) - v7;
          if (__OFSUB__(HIDWORD(v7), v7))
          {
            goto LABEL_64;
          }

          v13 = v13;
          if (v11 <= 1)
          {
LABEL_29:
            if (v11)
            {
              LODWORD(v18) = HIDWORD(v9) - v9;
              if (__OFSUB__(HIDWORD(v9), v9))
              {
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
              }

              v18 = v18;
            }

            else
            {
              v18 = BYTE6(v8);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v13 = BYTE6(v6);
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

LABEL_22:
        if (v11 != 2)
        {
          if (v13)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        }

        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        v17 = __OFSUB__(v15, v16);
        v18 = v15 - v16;
        if (v17)
        {
          goto LABEL_62;
        }

LABEL_33:
        if (v13 != v18)
        {
          goto LABEL_58;
        }

        if (v13 < 1)
        {
          goto LABEL_6;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v32 = v3;
            v21 = *(v7 + 16);
            v31 = *(v7 + 24);
            sub_251A858C4(v7, v6);
            sub_251A858C4(v9, v8);
            v22 = sub_251C6FB74();
            if (v22)
            {
              v23 = sub_251C6FBA4();
              if (__OFSUB__(v21, v23))
              {
                goto LABEL_67;
              }

              v22 += v21 - v23;
            }

            if (__OFSUB__(v31, v21))
            {
              goto LABEL_66;
            }

            sub_251C6FB94();
            v24 = v22;
            v25 = v9;
            v26 = v8;
            v3 = v32;
            goto LABEL_54;
          }

          memset(v34, 0, 14);
          sub_251A858C4(v7, v6);
          sub_251A858C4(v9, v8);
        }

        else
        {
          if (v10)
          {
            if (v7 >> 32 < v7)
            {
              goto LABEL_65;
            }

            sub_251A858C4(v7, v6);
            sub_251A858C4(v9, v8);
            v27 = sub_251C6FB74();
            if (v27)
            {
              v28 = sub_251C6FBA4();
              if (__OFSUB__(v7, v28))
              {
                goto LABEL_68;
              }

              v27 += v7 - v28;
            }

            sub_251C6FB94();
            v24 = v27;
            v25 = v9;
            v26 = v8;
LABEL_54:
            sub_251A9CD78(v24, v25, v26, v34);
            sub_251A83028(v9, v8);
            sub_251A83028(v7, v6);
            if ((v34[0] & 1) == 0)
            {
              goto LABEL_58;
            }

            goto LABEL_6;
          }

          v34[0] = *(v4 - 1);
          LOWORD(v34[1]) = v6;
          BYTE2(v34[1]) = BYTE2(v6);
          BYTE3(v34[1]) = BYTE3(v6);
          BYTE4(v34[1]) = BYTE4(v6);
          BYTE5(v34[1]) = BYTE5(v6);
          sub_251A858C4(v7, v6);
          sub_251A858C4(v9, v8);
        }

        sub_251A9CD78(v34, v9, v8, &v33);
        sub_251A83028(v9, v8);
        sub_251A83028(v7, v6);
        if (!v33)
        {
          goto LABEL_58;
        }

LABEL_6:
        v4 += 2;
        v5 += 2;
        if (!--v2)
        {
          goto LABEL_59;
        }
      }

      if (v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6 == 0xC000000000000000;
      }

      v13 = 0;
      v14 = v12 && *v5 >> 62 == 3;
      if (v14 && !v9 && v8 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v11 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

LABEL_59:
    result = 1;
  }

  else
  {
LABEL_58:
    result = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_251A9CBD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        sub_251AA005C(v21, v18, a4);
        sub_251AA005C(v22, v15, a4);
        v24 = a5(v18, v15);
        sub_251A9D3AC(v15, a6);
        sub_251A9D3AC(v18, a6);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_251A9CD78@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_251C6FB74();
    if (v10)
    {
      v11 = sub_251C6FBA4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_251C6FB94();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_251C6FB74();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_251C6FBA4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_251C6FB94();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_251A9CFA8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_251A9D138(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_251A83028(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_251A9CD78(v14, a3, a4, &v13);
  v10 = v4;
  sub_251A83028(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_251A9D138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_251C6FB74();
  v11 = result;
  if (result)
  {
    result = sub_251C6FBA4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_251C6FB94();
  sub_251A9CD78(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_251A9D1F0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_251A858C4(a3, a4);
          return sub_251A9CFA8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_251A9D358()
{
  result = qword_27F478FA8;
  if (!qword_27F478FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478FA8);
  }

  return result;
}

uint64_t sub_251A9D3AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251A9D40C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251A9D474(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v55 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v53 - v10;
  sub_251A9FEF4(0, &qword_27F4790C8, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v58 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v61 = &v53 - v13;
  v62 = type metadata accessor for PBDateRange(0);
  v14 = *(v62 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v62);
  v57 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A85F5C(0, qword_2813E6EE8, type metadata accessor for PBDateRange, v7);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v53 - v19;
  sub_251A9FEF4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v22 = v21;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v53 - v24;
  v26 = *a2;
  v27 = *(a2 + 8);
  v28 = nullsub_1(*a1, *(a1 + 8));
  if (v28 != nullsub_1(v26, v27))
  {
    goto LABEL_16;
  }

  v29 = a2;
  v54 = type metadata accessor for PBTypedData(0);
  v30 = *(v54 + 28);
  v31 = *(v22 + 48);
  sub_251A9FF6C(a1 + v30, v25, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251A9FF6C(v29 + v30, &v25[v31], qword_2813E6EE8, type metadata accessor for PBDateRange);
  v32 = *(v14 + 48);
  v33 = v62;
  if (v32(v25, 1, v62) != 1)
  {
    sub_251A9FF6C(v25, v20, qword_2813E6EE8, type metadata accessor for PBDateRange);
    if (v32(&v25[v31], 1, v33) != 1)
    {
      v38 = v57;
      sub_251A9D40C(&v25[v31], v57, type metadata accessor for PBDateRange);
      v39 = sub_251B5E420(v20, v38);
      sub_251A9D3AC(v38, type metadata accessor for PBDateRange);
      sub_251A9D3AC(v20, type metadata accessor for PBDateRange);
      sub_251A9FFEC(v25, qword_2813E6EE8, type metadata accessor for PBDateRange);
      if ((v39 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_251A9D3AC(v20, type metadata accessor for PBDateRange);
LABEL_7:
    v34 = &qword_27F4790D0;
    v35 = qword_2813E6EE8;
    v36 = type metadata accessor for PBDateRange;
    v37 = v25;
LABEL_15:
    sub_251A9DBA8(v37, v34, v35, v36);
    goto LABEL_16;
  }

  if (v32(&v25[v31], 1, v33) != 1)
  {
    goto LABEL_7;
  }

  sub_251A9FFEC(v25, qword_2813E6EE8, type metadata accessor for PBDateRange);
LABEL_9:
  v40 = v54;
  v41 = *(v54 + 20);
  v42 = *(v58 + 48);
  v43 = v61;
  sub_251A9FF6C(a1 + v41, v61, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  sub_251A9FF6C(v29 + v41, v43 + v42, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  v44 = v60;
  v45 = *(v59 + 48);
  if (v45(v43, 1, v60) == 1)
  {
    if (v45(v43 + v42, 1, v44) == 1)
    {
      sub_251A9FFEC(v43, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
LABEL_19:
      v52 = *(v40 + 24);
      sub_251C703B4();
      sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
      v47 = sub_251C70ED4();
      return v47 & 1;
    }

    goto LABEL_14;
  }

  v46 = v56;
  sub_251A9FF6C(v43, v56, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  if (v45(v43 + v42, 1, v44) == 1)
  {
    sub_251A9D3AC(v46, type metadata accessor for PBTypedData.OneOf_Raw);
LABEL_14:
    v34 = &qword_27F4790C8;
    v35 = qword_2813E6C90;
    v36 = type metadata accessor for PBTypedData.OneOf_Raw;
    v37 = v43;
    goto LABEL_15;
  }

  v49 = v43 + v42;
  v50 = v55;
  sub_251A9D40C(v49, v55, type metadata accessor for PBTypedData.OneOf_Raw);
  v51 = sub_251A9DC04(v46, v50);
  sub_251A9D3AC(v50, type metadata accessor for PBTypedData.OneOf_Raw);
  sub_251A9D3AC(v46, type metadata accessor for PBTypedData.OneOf_Raw);
  sub_251A9FFEC(v43, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
  if (v51)
  {
    goto LABEL_19;
  }

LABEL_16:
  v47 = 0;
  return v47 & 1;
}

uint64_t sub_251A9DBA8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251A9FEF4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_251A9DC04(uint64_t a1, uint64_t a2)
{
  v184 = a2;
  v185 = a1;
  v155 = type metadata accessor for PBActiveMedications(0);
  v2 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v172 = &v147 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for PBMedicationTrackingSchedules(0);
  v4 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v171 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for PBMedicationTrackingDoseEvents(0);
  v6 = *(*(v153 - 8) + 64);
  MEMORY[0x28223BE20](v153);
  v170 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for PBMedicationTrackings(0);
  v8 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v168 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for PBHistogramSeries(0);
  v10 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v169 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for PBSleepSeries(0);
  v12 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v167 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for PBSleepSummary(0);
  v14 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v166 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PBPatientMeta(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v165 = (&v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for PBActivitySummarySeries(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v164 = (&v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for PBECGMeasurement(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v162 = &v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PBCycleTracking(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v161 = &v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for PBECGs(0);
  v28 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v163 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for PBAllClinicalRecords(0);
  v30 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v160 = (&v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for PBCharacteristics(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v159 = (&v147 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for PBWorkout(0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v158 = &v147 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for PBCategorySeries(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v157 = (&v147 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = type metadata accessor for PBTimeSeries(0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v156 = (&v147 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44);
  v182 = &v147 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v183 = &v147 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v180 = &v147 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v179 = &v147 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v181 = &v147 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v178 = &v147 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v177 = &v147 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v174 = &v147 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v173 = &v147 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v66 = &v147 - v65;
  v67 = MEMORY[0x28223BE20](v64);
  v69 = &v147 - v68;
  v70 = MEMORY[0x28223BE20](v67);
  v176 = &v147 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v175 = &v147 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v76 = (&v147 - v75);
  v77 = MEMORY[0x28223BE20](v74);
  v79 = &v147 - v78;
  v80 = MEMORY[0x28223BE20](v77);
  v82 = (&v147 - v81);
  MEMORY[0x28223BE20](v80);
  v84 = (&v147 - v83);
  sub_251A9FE94(0, &qword_27F4790D8, type metadata accessor for PBTypedData.OneOf_Raw);
  v86 = *(*(v85 - 8) + 64);
  v87 = MEMORY[0x28223BE20](v85 - 8);
  v89 = &v147 - v88;
  v90 = *(v87 + 56);
  sub_251AA005C(v185, &v147 - v88, type metadata accessor for PBTypedData.OneOf_Raw);
  v185 = v90;
  sub_251AA005C(v184, &v89[v90], type metadata accessor for PBTypedData.OneOf_Raw);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_251AA005C(v89, v82, type metadata accessor for PBTypedData.OneOf_Raw);
      v127 = v185;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v128 = v157;
        sub_251A9D40C(&v89[v127], v157, type metadata accessor for PBCategorySeries);
        v122 = v89;
        v113 = sub_251BAE270(v82, v128);
        v123 = type metadata accessor for PBCategorySeries;
        sub_251A9D3AC(v128, type metadata accessor for PBCategorySeries);
        v124 = v82;
        goto LABEL_86;
      }

      v92 = type metadata accessor for PBCategorySeries;
      v93 = v82;
      goto LABEL_78;
    case 2u:
      sub_251AA005C(v89, v79, type metadata accessor for PBTypedData.OneOf_Raw);
      v116 = v185;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v117 = v158;
        sub_251A9D40C(&v89[v116], v158, type metadata accessor for PBWorkout);
        v112 = v89;
        v113 = sub_251BA3424(v79, v117);
        sub_251A9D3AC(v117, type metadata accessor for PBWorkout);
        v114 = v79;
        v115 = type metadata accessor for PBWorkout;
        goto LABEL_31;
      }

      v92 = type metadata accessor for PBWorkout;
      v93 = v79;
      goto LABEL_78;
    case 3u:
      sub_251AA005C(v89, v76, type metadata accessor for PBTypedData.OneOf_Raw);
      v120 = v185;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v121 = v159;
        sub_251A9D40C(&v89[v120], v159, type metadata accessor for PBCharacteristics);
        v122 = v89;
        v113 = sub_251BAC708(v76, v121);
        v123 = type metadata accessor for PBCharacteristics;
        sub_251A9D3AC(v121, type metadata accessor for PBCharacteristics);
        v124 = v76;
        goto LABEL_86;
      }

      v92 = type metadata accessor for PBCharacteristics;
      v93 = v76;
      goto LABEL_78;
    case 4u:
      v94 = v175;
      sub_251AA005C(v89, v175, type metadata accessor for PBTypedData.OneOf_Raw);
      v103 = v185;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v140 = type metadata accessor for PBAllClinicalRecords;
        goto LABEL_77;
      }

      v104 = v160;
      sub_251A9D40C(&v89[v103], v160, type metadata accessor for PBAllClinicalRecords);
      if (sub_251A9C498(*v94, *v104))
      {
        v105 = *(v149 + 20);
        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
        LOBYTE(v105) = sub_251C70ED4();
        sub_251A9D3AC(v104, type metadata accessor for PBAllClinicalRecords);
        if (v105)
        {
          v106 = type metadata accessor for PBAllClinicalRecords;
          v107 = v94;
          goto LABEL_58;
        }
      }

      else
      {
        sub_251A9D3AC(v104, type metadata accessor for PBAllClinicalRecords);
      }

      v145 = type metadata accessor for PBAllClinicalRecords;
      v144 = v94;
      goto LABEL_90;
    case 5u:
      v94 = v176;
      sub_251AA005C(v89, v176, type metadata accessor for PBTypedData.OneOf_Raw);
      v129 = v185;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v140 = type metadata accessor for PBECGs;
        goto LABEL_77;
      }

      v96 = v163;
      sub_251A9D40C(&v89[v129], v163, type metadata accessor for PBECGs);
      if (sub_251A937D8(*v94, *v96))
      {
        v130 = *(v150 + 20);
        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
        if (sub_251C70ED4())
        {
          v98 = type metadata accessor for PBECGs;
          goto LABEL_57;
        }
      }

      v141 = type metadata accessor for PBECGs;
      goto LABEL_89;
    case 6u:
      sub_251AA005C(v89, v69, type metadata accessor for PBTypedData.OneOf_Raw);
      v133 = v185;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v134 = v161;
        sub_251A9D40C(&v89[v133], v161, type metadata accessor for PBCycleTracking);
        v122 = v89;
        v113 = sub_251BAF44C(v69, v134);
        v123 = type metadata accessor for PBCycleTracking;
        sub_251A9D3AC(v134, type metadata accessor for PBCycleTracking);
        v124 = v69;
        goto LABEL_86;
      }

      v92 = type metadata accessor for PBCycleTracking;
      v93 = v69;
      goto LABEL_78;
    case 7u:
      sub_251AA005C(v89, v66, type metadata accessor for PBTypedData.OneOf_Raw);
      v125 = v185;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v126 = v162;
        sub_251A9D40C(&v89[v125], v162, type metadata accessor for PBECGMeasurement);
        v122 = v89;
        v113 = sub_251BAC720(v66, v126);
        v123 = type metadata accessor for PBECGMeasurement;
        sub_251A9D3AC(v126, type metadata accessor for PBECGMeasurement);
        v124 = v66;
        goto LABEL_86;
      }

      v92 = type metadata accessor for PBECGMeasurement;
      v93 = v66;
      goto LABEL_78;
    case 8u:
      v94 = v173;
      sub_251AA005C(v89, v173, type metadata accessor for PBTypedData.OneOf_Raw);
      v138 = v185;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v139 = v164;
        sub_251A9D40C(&v89[v138], v164, type metadata accessor for PBActivitySummarySeries);
        v122 = v89;
        v113 = sub_251BA5AC8(v94, v139);
        v123 = type metadata accessor for PBActivitySummarySeries;
        sub_251A9D3AC(v139, type metadata accessor for PBActivitySummarySeries);
        v124 = v94;
        goto LABEL_86;
      }

      v140 = type metadata accessor for PBActivitySummarySeries;
      goto LABEL_77;
    case 9u:
      v94 = v174;
      sub_251AA005C(v89, v174, type metadata accessor for PBTypedData.OneOf_Raw);
      v110 = v185;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v140 = type metadata accessor for PBPatientMeta;
        goto LABEL_77;
      }

      v111 = v165;
      sub_251A9D40C(&v89[v110], v165, type metadata accessor for PBPatientMeta);
      v112 = v89;
      v113 = sub_251BB0E20(v94, v111);
      sub_251A9D3AC(v111, type metadata accessor for PBPatientMeta);
      v114 = v94;
      v115 = type metadata accessor for PBPatientMeta;
LABEL_31:
      sub_251A9D3AC(v114, v115);
      sub_251A9D3AC(v112, type metadata accessor for PBTypedData.OneOf_Raw);
      return v113 & 1;
    case 0xAu:
      v94 = v177;
      sub_251AA005C(v89, v177, type metadata accessor for PBTypedData.OneOf_Raw);
      v135 = v185;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        v140 = type metadata accessor for PBSleepSummary;
        goto LABEL_77;
      }

      v96 = v166;
      sub_251A9D40C(&v89[v135], v166, type metadata accessor for PBSleepSummary);
      if ((sub_251A9B368(*v94, *v96) & 1) != 0 && *(v94 + 8) == *(v96 + 8))
      {
        v136 = *(v147 + 24);
        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
        if (sub_251C70ED4())
        {
          v98 = type metadata accessor for PBSleepSummary;
          goto LABEL_57;
        }
      }

      v141 = type metadata accessor for PBSleepSummary;
      goto LABEL_89;
    case 0xBu:
      v94 = v178;
      sub_251AA005C(v89, v178, type metadata accessor for PBTypedData.OneOf_Raw);
      v101 = v185;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        v140 = type metadata accessor for PBSleepSeries;
        goto LABEL_77;
      }

      v96 = v167;
      sub_251A9D40C(&v89[v101], v167, type metadata accessor for PBSleepSeries);
      if (sub_251A9BBF4(*v94, *v96))
      {
        v102 = *(v151 + 20);
        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
        if (sub_251C70ED4())
        {
          v98 = type metadata accessor for PBSleepSeries;
          goto LABEL_57;
        }
      }

      v141 = type metadata accessor for PBSleepSeries;
      goto LABEL_89;
    case 0xCu:
      v94 = v181;
      sub_251AA005C(v89, v181, type metadata accessor for PBTypedData.OneOf_Raw);
      v108 = v185;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v140 = type metadata accessor for PBHistogramSeries;
        goto LABEL_77;
      }

      v96 = v169;
      sub_251A9D40C(&v89[v108], v169, type metadata accessor for PBHistogramSeries);
      if (sub_251A99400(*v94, *v96) & 1) != 0 && (*(v94 + 8) == *(v96 + 8) && *(v94 + 16) == *(v96 + 16) || (sub_251C719D4()))
      {
        v109 = *(v148 + 24);
        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
        if (sub_251C70ED4())
        {
          v98 = type metadata accessor for PBHistogramSeries;
          goto LABEL_57;
        }
      }

      v141 = type metadata accessor for PBHistogramSeries;
      goto LABEL_89;
    case 0xDu:
      v94 = v179;
      sub_251AA005C(v89, v179, type metadata accessor for PBTypedData.OneOf_Raw);
      v131 = v185;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v140 = type metadata accessor for PBMedicationTrackings;
        goto LABEL_77;
      }

      v96 = v168;
      sub_251A9D40C(&v89[v131], v168, type metadata accessor for PBMedicationTrackings);
      if (sub_251A954A0(*v94, *v96))
      {
        v132 = *(v152 + 20);
        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
        if (sub_251C70ED4())
        {
          v98 = type metadata accessor for PBMedicationTrackings;
          goto LABEL_57;
        }
      }

      v141 = type metadata accessor for PBMedicationTrackings;
      goto LABEL_89;
    case 0xEu:
      v94 = v180;
      sub_251AA005C(v89, v180, type metadata accessor for PBTypedData.OneOf_Raw);
      v99 = v185;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        v140 = type metadata accessor for PBMedicationTrackingDoseEvents;
        goto LABEL_77;
      }

      v96 = v170;
      sub_251A9D40C(&v89[v99], v170, type metadata accessor for PBMedicationTrackingDoseEvents);
      if (sub_251A93D48(*v94, *v96))
      {
        v100 = *(v153 + 20);
        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
        if (sub_251C70ED4())
        {
          v98 = type metadata accessor for PBMedicationTrackingDoseEvents;
          goto LABEL_57;
        }
      }

      v141 = type metadata accessor for PBMedicationTrackingDoseEvents;
      goto LABEL_89;
    case 0xFu:
      v94 = v183;
      sub_251AA005C(v89, v183, type metadata accessor for PBTypedData.OneOf_Raw);
      v118 = v185;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        v140 = type metadata accessor for PBMedicationTrackingSchedules;
        goto LABEL_77;
      }

      v96 = v171;
      sub_251A9D40C(&v89[v118], v171, type metadata accessor for PBMedicationTrackingSchedules);
      if (sub_251A9CBD8(*v94, *v96, type metadata accessor for PBMedicationTrackingSchedule, type metadata accessor for PBMedicationTrackingSchedule, sub_251B9C94C, type metadata accessor for PBMedicationTrackingSchedule))
      {
        v119 = *(v154 + 20);
        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
        if (sub_251C70ED4())
        {
          v98 = type metadata accessor for PBMedicationTrackingSchedules;
          goto LABEL_57;
        }
      }

      v141 = type metadata accessor for PBMedicationTrackingSchedules;
      goto LABEL_89;
    case 0x10u:
      v94 = v182;
      sub_251AA005C(v89, v182, type metadata accessor for PBTypedData.OneOf_Raw);
      v95 = v185;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        v140 = type metadata accessor for PBActiveMedications;
LABEL_77:
        v92 = v140;
        v93 = v94;
        goto LABEL_78;
      }

      v96 = v172;
      sub_251A9D40C(&v89[v95], v172, type metadata accessor for PBActiveMedications);
      if (sub_251A93C70(*v94, *v96))
      {
        v97 = *(v155 + 20);
        sub_251C703B4();
        sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
        if (sub_251C70ED4())
        {
          v98 = type metadata accessor for PBActiveMedications;
LABEL_57:
          v137 = v98;
          sub_251A9D3AC(v96, v98);
          v107 = v94;
          v106 = v137;
LABEL_58:
          sub_251A9D3AC(v107, v106);
          sub_251A9D3AC(v89, type metadata accessor for PBTypedData.OneOf_Raw);
          v113 = 1;
          return v113 & 1;
        }
      }

      v141 = type metadata accessor for PBActiveMedications;
LABEL_89:
      v143 = v141;
      sub_251A9D3AC(v96, v141);
      v144 = v94;
      v145 = v143;
LABEL_90:
      sub_251A9D3AC(v144, v145);
      sub_251A9D3AC(v89, type metadata accessor for PBTypedData.OneOf_Raw);
      goto LABEL_91;
    default:
      sub_251AA005C(v89, v84, type metadata accessor for PBTypedData.OneOf_Raw);
      v91 = v185;
      if (swift_getEnumCaseMultiPayload())
      {
        v92 = type metadata accessor for PBTimeSeries;
        v93 = v84;
LABEL_78:
        sub_251A9D3AC(v93, v92);
        sub_251A9F5D8(v89);
LABEL_91:
        v113 = 0;
      }

      else
      {
        v142 = v156;
        sub_251A9D40C(&v89[v91], v156, type metadata accessor for PBTimeSeries);
        v122 = v89;
        v113 = sub_251BB1AEC(v84, v142);
        v123 = type metadata accessor for PBTimeSeries;
        sub_251A9D3AC(v142, type metadata accessor for PBTimeSeries);
        v124 = v84;
LABEL_86:
        sub_251A9D3AC(v124, v123);
        sub_251A9D3AC(v122, type metadata accessor for PBTypedData.OneOf_Raw);
      }

      return v113 & 1;
  }
}

uint64_t sub_251A9F5D8(uint64_t a1)
{
  sub_251A9FE94(0, &qword_27F4790D8, type metadata accessor for PBTypedData.OneOf_Raw);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251A9F650(uint64_t a1, void *a2)
{
  sub_251A9FE94(0, &qword_27F479118, type metadata accessor for PBReference.OneOf_Metadata);
  v64 = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v61 - v6;
  v8 = type metadata accessor for PBReference.OneOf_Metadata(0);
  v67 = *(v8 - 8);
  v68 = v8;
  v9 = *(v67 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D83D88];
  sub_251A85F5C(0, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata, MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v65 = &v61 - v15;
  sub_251A9FEF4(0, &qword_27F479120, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
  v66 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v69 = &v61 - v18;
  v19 = type metadata accessor for PBDateRange(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A85F5C(0, qword_2813E6EE8, type metadata accessor for PBDateRange, v12);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v61 - v26;
  sub_251A9FEF4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v29 = v28;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v61 - v31;
  if ((*a1 != *a2 || *(a1 + 8) != a2[1]) && (sub_251C719D4() & 1) == 0 || (sub_251A9D1F0(*(a1 + 16), *(a1 + 24), a2[2], a2[3]) & 1) == 0)
  {
    goto LABEL_22;
  }

  v61 = v11;
  v62 = v7;
  v33 = type metadata accessor for PBReference(0);
  v70 = a2;
  v63 = v33;
  v34 = *(v33 + 36);
  v35 = *(v29 + 48);
  sub_251A9FF6C(a1 + v34, v32, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v36 = v70 + v34;
  v37 = v70;
  sub_251A9FF6C(v36, &v32[v35], qword_2813E6EE8, type metadata accessor for PBDateRange);
  v38 = *(v20 + 48);
  if (v38(v32, 1, v19) == 1)
  {
    if (v38(&v32[v35], 1, v19) == 1)
    {
      sub_251A9FFEC(v32, qword_2813E6EE8, type metadata accessor for PBDateRange);
      goto LABEL_13;
    }

LABEL_10:
    v39 = &qword_27F4790D0;
    v40 = qword_2813E6EE8;
    v41 = type metadata accessor for PBDateRange;
    v42 = v32;
LABEL_11:
    sub_251A9DBA8(v42, v39, v40, v41);
    goto LABEL_22;
  }

  sub_251A9FF6C(v32, v27, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if (v38(&v32[v35], 1, v19) == 1)
  {
    sub_251A9D3AC(v27, type metadata accessor for PBDateRange);
    goto LABEL_10;
  }

  sub_251A9D40C(&v32[v35], v23, type metadata accessor for PBDateRange);
  v43 = sub_251B5E420(v27, v23);
  sub_251A9D3AC(v23, type metadata accessor for PBDateRange);
  sub_251A9D3AC(v27, type metadata accessor for PBDateRange);
  sub_251A9FFEC(v32, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((v43 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  v44 = v37[4];
  v45 = *(v37 + 40);
  v46 = nullsub_1(*(a1 + 32), *(a1 + 40));
  if (v46 != nullsub_1(v44, v45))
  {
    goto LABEL_22;
  }

  v47 = v63;
  v48 = *(v63 + 28);
  v49 = *(v66 + 48);
  v50 = v69;
  sub_251A9FF6C(a1 + v48, v69, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
  sub_251A9FF6C(v70 + v48, v50 + v49, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
  v51 = v68;
  v52 = *(v67 + 48);
  if (v52(v50, 1, v68) != 1)
  {
    v53 = v65;
    sub_251A9FF6C(v50, v65, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
    if (v52(v50 + v49, 1, v51) != 1)
    {
      v54 = v61;
      sub_251A9D40C(v50 + v49, v61, type metadata accessor for PBReference.OneOf_Metadata);
      v55 = *(v64 + 48);
      v56 = v62;
      sub_251AA005C(v53, v62, type metadata accessor for PBReference.OneOf_Metadata);
      sub_251AA005C(v54, v56 + v55, type metadata accessor for PBReference.OneOf_Metadata);
      v57 = sub_251BB1F0C(v56, v56 + v55);
      sub_251A9D3AC(v56 + v55, type metadata accessor for PBECGMeta);
      sub_251A9D3AC(v56, type metadata accessor for PBECGMeta);
      sub_251A9D3AC(v54, type metadata accessor for PBReference.OneOf_Metadata);
      sub_251A9D3AC(v53, type metadata accessor for PBReference.OneOf_Metadata);
      sub_251A9FFEC(v50, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
      if (v57)
      {
        goto LABEL_21;
      }

LABEL_22:
      v59 = 0;
      return v59 & 1;
    }

    sub_251A9D3AC(v53, type metadata accessor for PBReference.OneOf_Metadata);
    goto LABEL_19;
  }

  if (v52(v50 + v49, 1, v51) != 1)
  {
LABEL_19:
    v39 = &qword_27F479120;
    v40 = &qword_27F478ED8;
    v41 = type metadata accessor for PBReference.OneOf_Metadata;
    v42 = v50;
    goto LABEL_11;
  }

  sub_251A9FFEC(v50, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata);
LABEL_21:
  v58 = *(v47 + 32);
  sub_251C703B4();
  sub_251A932D4(&qword_27F478F98, MEMORY[0x277D216C8]);
  v59 = sub_251C70ED4();
  return v59 & 1;
}