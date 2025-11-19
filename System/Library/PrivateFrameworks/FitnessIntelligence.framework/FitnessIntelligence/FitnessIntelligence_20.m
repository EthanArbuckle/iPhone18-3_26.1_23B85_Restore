uint64_t _s19FitnessIntelligence06Apple_a1_b1_A25PlusPropertiesQueryResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v69 = *(Metrics - 8);
  v70 = Metrics;
  v4 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](Metrics);
  v65 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v64 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAEF0, &qword_1B4D32518);
  v9 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v64 - v10;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  v75 = *(v11 - 8);
  v76 = v11;
  v12 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v67 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6650, &unk_1B4D2FDC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v72 = (&v64 - v16);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAEF8, &qword_1B4D32520);
  v17 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v77 = &v64 - v18;
  v19 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6658, &qword_1B4D1A650);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = (&v64 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF00, &qword_1B4D32528);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v64 - v31;
  v74 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  v33 = *(v74 + 20);
  v34 = *(v29 + 56);
  v78 = a1;
  sub_1B4974FBC(a1 + v33, v32, &qword_1EB8A6658, &qword_1B4D1A650);
  sub_1B4974FBC(v79 + v33, &v32[v34], &qword_1EB8A6658, &qword_1B4D1A650);
  v35 = *(v20 + 48);
  if (v35(v32, 1, v19) == 1)
  {
    if (v35(&v32[v34], 1, v19) == 1)
    {
      sub_1B4975024(v32, &qword_1EB8A6658, &qword_1B4D1A650);
      goto LABEL_8;
    }

LABEL_6:
    v36 = &qword_1EB8AAF00;
    v37 = &qword_1B4D32528;
LABEL_23:
    v58 = v32;
LABEL_24:
    sub_1B4975024(v58, v36, v37);
    goto LABEL_25;
  }

  sub_1B4974FBC(v32, v27, &qword_1EB8A6658, &qword_1B4D1A650);
  if (v35(&v32[v34], 1, v19) == 1)
  {
    sub_1B4B327BC(v27, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    goto LABEL_6;
  }

  sub_1B4B2C598(&v32[v34], v23, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  V2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence06Apple_a1_b1_A19PlusPropertiesQueryV2eeoiySbAC_ACtFZ_0(v27, v23);
  sub_1B4B327BC(v23, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  sub_1B4B327BC(v27, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  sub_1B4975024(v32, &qword_1EB8A6658, &qword_1B4D1A650);
  if ((V2eeoiySbAC_ACtFZ_0 & 1) == 0)
  {
LABEL_25:
    v53 = 0;
    return v53 & 1;
  }

LABEL_8:
  v39 = v74;
  v40 = *(v74 + 24);
  v41 = *(v73 + 48);
  v32 = v77;
  v42 = v78;
  sub_1B4974FBC(v78 + v40, v77, &qword_1EB8A6650, &unk_1B4D2FDC0);
  v43 = v79;
  sub_1B4974FBC(v79 + v40, &v32[v41], &qword_1EB8A6650, &unk_1B4D2FDC0);
  v44 = v76;
  v45 = *(v75 + 48);
  if (v45(v32, 1, v76) == 1)
  {
    if (v45(&v32[v41], 1, v44) == 1)
    {
      sub_1B4975024(v32, &qword_1EB8A6650, &unk_1B4D2FDC0);
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v54 = v72;
  sub_1B4974FBC(v32, v72, &qword_1EB8A6650, &unk_1B4D2FDC0);
  if (v45(&v32[v41], 1, v44) == 1)
  {
    sub_1B4B327BC(v54, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
LABEL_16:
    v36 = &qword_1EB8AAEF8;
    v37 = &qword_1B4D32520;
    goto LABEL_23;
  }

  v55 = &v32[v41];
  v56 = v67;
  sub_1B4B2C598(v55, v67, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  if (*v54 != *v56 || v54[1] != v56[1] || (sub_1B4A0E980(v54[2], v56[2]) & 1) == 0)
  {
    sub_1B4B327BC(v56, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
    sub_1B4B327BC(v54, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
    v36 = &qword_1EB8A6650;
    v37 = &unk_1B4D2FDC0;
    goto LABEL_23;
  }

  v57 = *(v44 + 28);
  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  LOBYTE(v57) = sub_1B4D1816C();
  sub_1B4B327BC(v56, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  sub_1B4B327BC(v54, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  sub_1B4975024(v32, &qword_1EB8A6650, &unk_1B4D2FDC0);
  if ((v57 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_11:
  v46 = *(v39 + 28);
  v47 = *(v68 + 48);
  v48 = v71;
  sub_1B4974FBC(v42 + v46, v71, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v49 = v43 + v46;
  v50 = v48;
  sub_1B4974FBC(v49, v48 + v47, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v51 = v70;
  v52 = *(v69 + 48);
  if (v52(v48, 1, v70) != 1)
  {
    v60 = v66;
    sub_1B4974FBC(v50, v66, &qword_1EB8A6670, &unk_1B4D2FDA0);
    if (v52(v50 + v47, 1, v51) != 1)
    {
      v61 = v50 + v47;
      v62 = v65;
      sub_1B4B2C598(v61, v65, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      if (*v60 == *v62 && *(v60 + 8) == *(v62 + 8) && *(v60 + 16) == *(v62 + 16))
      {
        v63 = *(v51 + 28);
        sub_1B4D17BCC();
        sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        LOBYTE(v63) = sub_1B4D1816C();
        sub_1B4B327BC(v62, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
        if (v63)
        {
          sub_1B4B327BC(v60, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
          goto LABEL_13;
        }
      }

      else
      {
        sub_1B4B327BC(v62, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      }

      sub_1B4B327BC(v60, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      v36 = &qword_1EB8A6670;
      v37 = &unk_1B4D2FDA0;
      v58 = v50;
      goto LABEL_24;
    }

    sub_1B4B327BC(v60, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    goto LABEL_29;
  }

  if (v52(v48 + v47, 1, v51) != 1)
  {
LABEL_29:
    v36 = &qword_1EB8AAEF0;
    v37 = &qword_1B4D32518;
    v58 = v50;
    goto LABEL_24;
  }

LABEL_13:
  sub_1B4975024(v50, &qword_1EB8A6670, &unk_1B4D2FDA0);
  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v53 = sub_1B4D1816C();
  return v53 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B27_RingsPropertiesQueryResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v69 = *(Metrics - 8);
  v70 = Metrics;
  v4 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](Metrics);
  v65 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v64 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAEF0, &qword_1B4D32518);
  v9 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v64 - v10;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v75 = *(v11 - 8);
  v76 = v11;
  v12 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v67 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v72 = (&v64 - v16);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF08, &unk_1B4D32530);
  v17 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v77 = &v64 - v18;
  v19 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = (&v64 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF10, &unk_1B4D3F9A0);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v64 - v31;
  v74 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  v33 = *(v74 + 20);
  v34 = *(v29 + 56);
  v78 = a1;
  sub_1B4974FBC(a1 + v33, v32, &qword_1EB8A6680, &unk_1B4D2FD90);
  sub_1B4974FBC(v79 + v33, &v32[v34], &qword_1EB8A6680, &unk_1B4D2FD90);
  v35 = *(v20 + 48);
  if (v35(v32, 1, v19) == 1)
  {
    if (v35(&v32[v34], 1, v19) == 1)
    {
      sub_1B4975024(v32, &qword_1EB8A6680, &unk_1B4D2FD90);
      goto LABEL_8;
    }

LABEL_6:
    v36 = &qword_1EB8AAF10;
    v37 = &unk_1B4D3F9A0;
LABEL_23:
    v58 = v32;
LABEL_24:
    sub_1B4975024(v58, v36, v37);
    goto LABEL_25;
  }

  sub_1B4974FBC(v32, v27, &qword_1EB8A6680, &unk_1B4D2FD90);
  if (v35(&v32[v34], 1, v19) == 1)
  {
    sub_1B4B327BC(v27, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    goto LABEL_6;
  }

  sub_1B4B2C598(&v32[v34], v23, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  V2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence06Apple_a1_B21_RingsPropertiesQueryV2eeoiySbAC_ACtFZ_0(v27, v23);
  sub_1B4B327BC(v23, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  sub_1B4B327BC(v27, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  sub_1B4975024(v32, &qword_1EB8A6680, &unk_1B4D2FD90);
  if ((V2eeoiySbAC_ACtFZ_0 & 1) == 0)
  {
LABEL_25:
    v53 = 0;
    return v53 & 1;
  }

LABEL_8:
  v39 = v74;
  v40 = *(v74 + 24);
  v41 = *(v73 + 48);
  v32 = v77;
  v42 = v78;
  sub_1B4974FBC(v78 + v40, v77, &qword_1EB8A6678, &qword_1B4D3CE20);
  v43 = v79;
  sub_1B4974FBC(v79 + v40, &v32[v41], &qword_1EB8A6678, &qword_1B4D3CE20);
  v44 = v76;
  v45 = *(v75 + 48);
  if (v45(v32, 1, v76) == 1)
  {
    if (v45(&v32[v41], 1, v44) == 1)
    {
      sub_1B4975024(v32, &qword_1EB8A6678, &qword_1B4D3CE20);
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v54 = v72;
  sub_1B4974FBC(v32, v72, &qword_1EB8A6678, &qword_1B4D3CE20);
  if (v45(&v32[v41], 1, v44) == 1)
  {
    sub_1B4B327BC(v54, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
LABEL_16:
    v36 = &qword_1EB8AAF08;
    v37 = &unk_1B4D32530;
    goto LABEL_23;
  }

  v55 = &v32[v41];
  v56 = v67;
  sub_1B4B2C598(v55, v67, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  if (*v54 != *v56 || v54[1] != v56[1] || (sub_1B4A1A2C8(v54[2], v56[2]) & 1) == 0)
  {
    sub_1B4B327BC(v56, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
    sub_1B4B327BC(v54, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
    v36 = &qword_1EB8A6678;
    v37 = &qword_1B4D3CE20;
    goto LABEL_23;
  }

  v57 = *(v44 + 28);
  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  LOBYTE(v57) = sub_1B4D1816C();
  sub_1B4B327BC(v56, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  sub_1B4B327BC(v54, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  sub_1B4975024(v32, &qword_1EB8A6678, &qword_1B4D3CE20);
  if ((v57 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_11:
  v46 = *(v39 + 28);
  v47 = *(v68 + 48);
  v48 = v71;
  sub_1B4974FBC(v42 + v46, v71, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v49 = v43 + v46;
  v50 = v48;
  sub_1B4974FBC(v49, v48 + v47, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v51 = v70;
  v52 = *(v69 + 48);
  if (v52(v48, 1, v70) != 1)
  {
    v60 = v66;
    sub_1B4974FBC(v50, v66, &qword_1EB8A6670, &unk_1B4D2FDA0);
    if (v52(v50 + v47, 1, v51) != 1)
    {
      v61 = v50 + v47;
      v62 = v65;
      sub_1B4B2C598(v61, v65, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      if (*v60 == *v62 && *(v60 + 8) == *(v62 + 8) && *(v60 + 16) == *(v62 + 16))
      {
        v63 = *(v51 + 28);
        sub_1B4D17BCC();
        sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        LOBYTE(v63) = sub_1B4D1816C();
        sub_1B4B327BC(v62, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
        if (v63)
        {
          sub_1B4B327BC(v60, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
          goto LABEL_13;
        }
      }

      else
      {
        sub_1B4B327BC(v62, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      }

      sub_1B4B327BC(v60, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      v36 = &qword_1EB8A6670;
      v37 = &unk_1B4D2FDA0;
      v58 = v50;
      goto LABEL_24;
    }

    sub_1B4B327BC(v60, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    goto LABEL_29;
  }

  if (v52(v48 + v47, 1, v51) != 1)
  {
LABEL_29:
    v36 = &qword_1EB8AAEF0;
    v37 = &qword_1B4D32518;
    v58 = v50;
    goto LABEL_24;
  }

LABEL_13:
  sub_1B4975024(v50, &qword_1EB8A6670, &unk_1B4D2FDA0);
  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v53 = sub_1B4D1816C();
  return v53 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B25_PropertyRecordCheckpointV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2] || a1[3] != a2[3])
  {
    v3 = a1[2];
    if ((sub_1B4D18DCC() & 1) == 0)
    {
      return 0;
    }
  }

  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint(0) + 28);
  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B23_DatabasePropertyRecordV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DA0, &unk_1B4D20280);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - v16;
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    goto LABEL_13;
  }

  v18 = v15;
  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1B4D18DCC() & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((sub_1B4BDD628(a1[4], a1[5], a2[4], a2[5]) & 1) == 0)
  {
    goto LABEL_13;
  }

  v32 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
  v19 = v32[8];
  v20 = *(v18 + 48);
  sub_1B4974FBC(a1 + v19, v17, &qword_1EB8A7D98, &qword_1B4D20278);
  v33 = v20;
  sub_1B4974FBC(a2 + v19, &v17[v20], &qword_1EB8A7D98, &qword_1B4D20278);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) != 1)
  {
    sub_1B4974FBC(v17, v12, &qword_1EB8A7D98, &qword_1B4D20278);
    v22 = v33;
    if (v21(&v17[v33], 1, v4) != 1)
    {
      sub_1B4B2C598(&v17[v22], v8, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
      v25 = _s19FitnessIntelligence06Apple_a1_B23_DatabasePropertyRecordV19OneOf_DimensionTypeO2eeoiySbAE_AEtFZ_0(v12, v8);
      sub_1B4B327BC(v8, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
      sub_1B4B327BC(v12, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
      sub_1B4975024(v17, &qword_1EB8A7D98, &qword_1B4D20278);
      if ((v25 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    sub_1B4B327BC(v12, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
LABEL_12:
    sub_1B4975024(v17, &qword_1EB8A7DA0, &unk_1B4D20280);
    goto LABEL_13;
  }

  if (v21(&v17[v33], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_1B4975024(v17, &qword_1EB8A7D98, &qword_1B4D20278);
LABEL_16:
  v26 = v32[10];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (v30)
    {
LABEL_22:
      v31 = v32[9];
      sub_1B4D17BCC();
      sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v23 = sub_1B4D1816C();
      return v23 & 1;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if ((v30 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_13:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B23_DatabasePropertyRecordV19OneOf_DimensionTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v38 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAEE0, &qword_1B4D32508);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v38 - v26;
  v29 = *(v28 + 56);
  sub_1B4B3281C(a1, &v38 - v26, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
  sub_1B4B3281C(v39, &v27[v29], type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B4B3281C(v27, v20, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B4B2C598(&v27[v29], v9, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
        v31 = static Apple_Fitness_Intelligence_RingsPropertyDimensions.== infix(_:_:)(v20, v9);
        v32 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions;
        sub_1B4B327BC(v9, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
        v33 = v20;
LABEL_13:
        sub_1B4B327BC(v33, v32);
        sub_1B4B327BC(v27, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
        return v31 & 1;
      }

      v34 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions;
      v35 = v20;
    }

    else
    {
      sub_1B4B3281C(v27, v17, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v36 = v38;
        sub_1B4B2C598(&v27[v29], v38, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
        v31 = _s19FitnessIntelligence06Apple_a1_b1_A22PlusPropertyDimensionsV2eeoiySbAC_ACtFZ_0(v17, v36);
        v32 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions;
        sub_1B4B327BC(v36, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
        v33 = v17;
        goto LABEL_13;
      }

      v34 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions;
      v35 = v17;
    }
  }

  else
  {
    sub_1B4B3281C(v27, v23, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B4B2C598(&v27[v29], v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      v31 = static Apple_Fitness_Intelligence_WorkoutPropertyDimensions.== infix(_:_:)(v23, v13);
      v32 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions;
      sub_1B4B327BC(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      v33 = v23;
      goto LABEL_13;
    }

    v34 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions;
    v35 = v23;
  }

  sub_1B4B327BC(v35, v34);
  sub_1B4975024(v27, &qword_1EB8AAEE0, &qword_1B4D32508);
  v31 = 0;
  return v31 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B22_DatabasePropertyBatchV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (sub_1B4A14B88(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyBatch(0) + 28);
  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B21_SnapshotQueryResultsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA58, &unk_1B4D2FDF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAE80, &qword_1B4D324A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_1B4974FBC(a1, &v24 - v15, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  sub_1B4974FBC(a2, &v16[v18], &qword_1EB8AAA58, &unk_1B4D2FDF0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8AAA58, &unk_1B4D2FDF0);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults(0) + 20);
      sub_1B4D17BCC();
      sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v20 = sub_1B4D1816C();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1B4B327BC(v12, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
LABEL_6:
    sub_1B4975024(v16, &qword_1EB8AAE80, &qword_1B4D324A0);
    goto LABEL_7;
  }

  sub_1B4B2C598(&v16[v18], v8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
  ResultsV06OneOf_eF0O2eeoiySbAE_AEtFZ_0 = _s19FitnessIntelligence06Apple_a1_B21_SnapshotQueryResultsV06OneOf_eF0O2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_1B4B327BC(v8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
  sub_1B4B327BC(v12, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
  sub_1B4975024(v16, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  if (ResultsV06OneOf_eF0O2eeoiySbAE_AEtFZ_0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B21_SnapshotQueryResultsV06OneOf_eF0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v45 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults(0);
  v3 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v47 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults(0);
  v5 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v46 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v43 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v43 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAEE8, &qword_1B4D32510);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v43 - v23;
  v26 = *(v25 + 56);
  sub_1B4B3281C(a1, &v43 - v23, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
  sub_1B4B3281C(v48, &v24[v26], type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B4B3281C(v24, v17, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = v46;
        sub_1B4B2C598(&v24[v26], v46, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
        if (sub_1B4A15444(*v17, *v28))
        {
          v29 = *(v44 + 20);
          sub_1B4D17BCC();
          sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
          v30 = sub_1B4D1816C();
          sub_1B4B327BC(v28, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
          if (v30)
          {
            v31 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults;
            v32 = v17;
LABEL_19:
            sub_1B4B327BC(v32, v31);
            sub_1B4B327BC(v24, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
            return 1;
          }
        }

        else
        {
          sub_1B4B327BC(v28, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
        }

        v42 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults;
        v41 = v17;
        goto LABEL_25;
      }

      v33 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults;
      v34 = v17;
    }

    else
    {
      sub_1B4B3281C(v24, v14, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v35 = v47;
        sub_1B4B2C598(&v24[v26], v47, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
        if (sub_1B4A15444(*v14, *v35))
        {
          v36 = *(v45 + 20);
          sub_1B4D17BCC();
          sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
          if (sub_1B4D1816C())
          {
            sub_1B4B327BC(v35, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
            v32 = v14;
            v31 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults;
            goto LABEL_19;
          }
        }

        sub_1B4B327BC(v35, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
        v41 = v14;
        v42 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults;
        goto LABEL_25;
      }

      v33 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults;
      v34 = v14;
    }
  }

  else
  {
    sub_1B4B3281C(v24, v20, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
    if (!swift_getEnumCaseMultiPayload())
    {
      v37 = v10;
      sub_1B4B2C598(&v24[v26], v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
      if (sub_1B4A15444(*v20, *v10))
      {
        v38 = *(v7 + 20);
        sub_1B4D17BCC();
        sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        v39 = sub_1B4D1816C();
        sub_1B4B327BC(v37, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
        if (v39)
        {
          v31 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults;
          v32 = v20;
          goto LABEL_19;
        }
      }

      else
      {
        sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
      }

      v42 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults;
      v41 = v20;
LABEL_25:
      sub_1B4B327BC(v41, v42);
      sub_1B4B327BC(v24, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
      return 0;
    }

    v33 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults;
    v34 = v20;
  }

  sub_1B4B327BC(v34, v33);
  sub_1B4975024(v24, &qword_1EB8AAEE8, &qword_1B4D32510);
  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B20_SnapshotQueryResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DA8, &unk_1B4D20290);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_1B4974FBC(a1, &v24 - v15, &qword_1EB8A6688, &qword_1B4D1A660);
  sub_1B4974FBC(a2, &v16[v18], &qword_1EB8A6688, &qword_1B4D1A660);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A6688, &qword_1B4D1A660);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult(0) + 20);
      sub_1B4D17BCC();
      sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v20 = sub_1B4D1816C();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8A6688, &qword_1B4D1A660);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1B4B327BC(v12, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
LABEL_6:
    sub_1B4975024(v16, &qword_1EB8A7DA8, &unk_1B4D20290);
    goto LABEL_7;
  }

  sub_1B4B2C598(&v16[v18], v8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
  ResultV06OneOf_eF0O2eeoiySbAE_AEtFZ_0 = _s19FitnessIntelligence06Apple_a1_B20_SnapshotQueryResultV06OneOf_eF0O2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_1B4B327BC(v8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
  sub_1B4B327BC(v12, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
  sub_1B4975024(v16, &qword_1EB8A6688, &qword_1B4D1A660);
  if (ResultV06OneOf_eF0O2eeoiySbAE_AEtFZ_0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B29_WorkoutPropertiesQueryResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v69 = *(Metrics - 8);
  v70 = Metrics;
  v4 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](Metrics);
  v65 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v64 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAEF0, &qword_1B4D32518);
  v9 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v64 - v10;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v75 = *(v11 - 8);
  v76 = v11;
  v12 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v67 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v72 = (&v64 - v16);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF18, &qword_1B4D32540);
  v17 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v77 = &v64 - v18;
  v19 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = (&v64 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF20, &qword_1B4D32548);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v64 - v31;
  v74 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  v33 = *(v74 + 20);
  v34 = *(v29 + 56);
  v78 = a1;
  sub_1B4974FBC(a1 + v33, v32, &qword_1EB8A6668, &qword_1B4D1A658);
  sub_1B4974FBC(v79 + v33, &v32[v34], &qword_1EB8A6668, &qword_1B4D1A658);
  v35 = *(v20 + 48);
  if (v35(v32, 1, v19) == 1)
  {
    if (v35(&v32[v34], 1, v19) == 1)
    {
      sub_1B4975024(v32, &qword_1EB8A6668, &qword_1B4D1A658);
      goto LABEL_8;
    }

LABEL_6:
    v36 = &qword_1EB8AAF20;
    v37 = &qword_1B4D32548;
LABEL_23:
    v58 = v32;
LABEL_24:
    sub_1B4975024(v58, v36, v37);
    goto LABEL_25;
  }

  sub_1B4974FBC(v32, v27, &qword_1EB8A6668, &qword_1B4D1A658);
  if (v35(&v32[v34], 1, v19) == 1)
  {
    sub_1B4B327BC(v27, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    goto LABEL_6;
  }

  sub_1B4B2C598(&v32[v34], v23, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  V2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence06Apple_a1_B23_WorkoutPropertiesQueryV2eeoiySbAC_ACtFZ_0(v27, v23);
  sub_1B4B327BC(v23, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  sub_1B4B327BC(v27, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  sub_1B4975024(v32, &qword_1EB8A6668, &qword_1B4D1A658);
  if ((V2eeoiySbAC_ACtFZ_0 & 1) == 0)
  {
LABEL_25:
    v53 = 0;
    return v53 & 1;
  }

LABEL_8:
  v39 = v74;
  v40 = *(v74 + 24);
  v41 = *(v73 + 48);
  v32 = v77;
  v42 = v78;
  sub_1B4974FBC(v78 + v40, v77, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v43 = v79;
  sub_1B4974FBC(v79 + v40, &v32[v41], &qword_1EB8A6660, &unk_1B4D2FDB0);
  v44 = v76;
  v45 = *(v75 + 48);
  if (v45(v32, 1, v76) == 1)
  {
    if (v45(&v32[v41], 1, v44) == 1)
    {
      sub_1B4975024(v32, &qword_1EB8A6660, &unk_1B4D2FDB0);
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v54 = v72;
  sub_1B4974FBC(v32, v72, &qword_1EB8A6660, &unk_1B4D2FDB0);
  if (v45(&v32[v41], 1, v44) == 1)
  {
    sub_1B4B327BC(v54, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
LABEL_16:
    v36 = &qword_1EB8AAF18;
    v37 = &qword_1B4D32540;
    goto LABEL_23;
  }

  v55 = &v32[v41];
  v56 = v67;
  sub_1B4B2C598(v55, v67, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  if (*v54 != *v56 || v54[1] != v56[1] || (sub_1B4A185B4(v54[2], v56[2]) & 1) == 0)
  {
    sub_1B4B327BC(v56, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
    sub_1B4B327BC(v54, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
    v36 = &qword_1EB8A6660;
    v37 = &unk_1B4D2FDB0;
    goto LABEL_23;
  }

  v57 = *(v44 + 28);
  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  LOBYTE(v57) = sub_1B4D1816C();
  sub_1B4B327BC(v56, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  sub_1B4B327BC(v54, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  sub_1B4975024(v32, &qword_1EB8A6660, &unk_1B4D2FDB0);
  if ((v57 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_11:
  v46 = *(v39 + 28);
  v47 = *(v68 + 48);
  v48 = v71;
  sub_1B4974FBC(v42 + v46, v71, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v49 = v43 + v46;
  v50 = v48;
  sub_1B4974FBC(v49, v48 + v47, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v51 = v70;
  v52 = *(v69 + 48);
  if (v52(v48, 1, v70) != 1)
  {
    v60 = v66;
    sub_1B4974FBC(v50, v66, &qword_1EB8A6670, &unk_1B4D2FDA0);
    if (v52(v50 + v47, 1, v51) != 1)
    {
      v61 = v50 + v47;
      v62 = v65;
      sub_1B4B2C598(v61, v65, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      if (*v60 == *v62 && *(v60 + 8) == *(v62 + 8) && *(v60 + 16) == *(v62 + 16))
      {
        v63 = *(v51 + 28);
        sub_1B4D17BCC();
        sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        LOBYTE(v63) = sub_1B4D1816C();
        sub_1B4B327BC(v62, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
        if (v63)
        {
          sub_1B4B327BC(v60, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
          goto LABEL_13;
        }
      }

      else
      {
        sub_1B4B327BC(v62, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      }

      sub_1B4B327BC(v60, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      v36 = &qword_1EB8A6670;
      v37 = &unk_1B4D2FDA0;
      v58 = v50;
      goto LABEL_24;
    }

    sub_1B4B327BC(v60, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    goto LABEL_29;
  }

  if (v52(v48 + v47, 1, v51) != 1)
  {
LABEL_29:
    v36 = &qword_1EB8AAEF0;
    v37 = &qword_1B4D32518;
    v58 = v50;
    goto LABEL_24;
  }

LABEL_13:
  sub_1B4975024(v50, &qword_1EB8A6670, &unk_1B4D2FDA0);
  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v53 = sub_1B4D1816C();
  return v53 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B20_SnapshotQueryResultV06OneOf_eF0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v38 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF28, &qword_1B4D32550);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v38 - v26;
  v29 = *(v28 + 56);
  sub_1B4B3281C(a1, &v38 - v26, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
  sub_1B4B3281C(v39, &v27[v29], type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B4B3281C(v27, v20, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B4B2C598(&v27[v29], v9, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
        ResultV2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence06Apple_a1_B27_RingsPropertiesQueryResultV2eeoiySbAC_ACtFZ_0(v20, v9);
        v32 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult;
        sub_1B4B327BC(v9, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
        v33 = v20;
LABEL_13:
        sub_1B4B327BC(v33, v32);
        sub_1B4B327BC(v27, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
        return ResultV2eeoiySbAC_ACtFZ_0 & 1;
      }

      v34 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult;
      v35 = v20;
    }

    else
    {
      sub_1B4B3281C(v27, v17, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v36 = v38;
        sub_1B4B2C598(&v27[v29], v38, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
        ResultV2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence06Apple_a1_b1_A25PlusPropertiesQueryResultV2eeoiySbAC_ACtFZ_0(v17, v36);
        v32 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult;
        sub_1B4B327BC(v36, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
        v33 = v17;
        goto LABEL_13;
      }

      v34 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult;
      v35 = v17;
    }
  }

  else
  {
    sub_1B4B3281C(v27, v23, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B4B2C598(&v27[v29], v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
      ResultV2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence06Apple_a1_B29_WorkoutPropertiesQueryResultV2eeoiySbAC_ACtFZ_0(v23, v13);
      v32 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult;
      sub_1B4B327BC(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
      v33 = v23;
      goto LABEL_13;
    }

    v34 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult;
    v35 = v23;
  }

  sub_1B4B327BC(v35, v34);
  sub_1B4975024(v27, &qword_1EB8AAF28, &qword_1B4D32550);
  ResultV2eeoiySbAC_ACtFZ_0 = 0;
  return ResultV2eeoiySbAC_ACtFZ_0 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B19_SnapshotQueryBatchV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAEB8, &qword_1B4D324E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_1B4974FBC(a1, &v24 - v15, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  sub_1B4974FBC(a2, &v16[v18], &qword_1EB8AAA50, &unk_1B4D2FDE0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8AAA50, &unk_1B4D2FDE0);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch(0) + 20);
      sub_1B4D17BCC();
      sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v20 = sub_1B4D1816C();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1B4B327BC(v12, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
LABEL_6:
    sub_1B4975024(v16, &qword_1EB8AAEB8, &qword_1B4D324E0);
    goto LABEL_7;
  }

  sub_1B4B2C598(&v16[v18], v8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
  BatchV06OneOf_eF0O2eeoiySbAE_AEtFZ_0 = _s19FitnessIntelligence06Apple_a1_B19_SnapshotQueryBatchV06OneOf_eF0O2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_1B4B327BC(v8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
  sub_1B4B327BC(v12, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
  sub_1B4975024(v16, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  if (BatchV06OneOf_eF0O2eeoiySbAE_AEtFZ_0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A19PlusPropertiesQueryV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v56 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v48 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DD8, &unk_1B4D2F8E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = (&v47 - v8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DE0, &qword_1B4D202D0);
  v9 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v47 - v10;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v47 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DE8, &qword_1B4D202D8);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v25 = *(v51 + 28);
  v26 = *(v21 + 56);
  v55 = a1;
  sub_1B4974FBC(a1 + v25, v24, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  v27 = v56;
  sub_1B4974FBC(v56 + v25, &v24[v26], &qword_1EB8A7BE8, &qword_1B4D1FE98);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) == 1)
  {
    if (v28(&v24[v26], 1, v11) == 1)
    {
      sub_1B4975024(v24, &qword_1EB8A7BE8, &qword_1B4D1FE98);
      goto LABEL_8;
    }

LABEL_6:
    v29 = &qword_1EB8A7DE8;
    v30 = &qword_1B4D202D8;
    v31 = v24;
LABEL_14:
    sub_1B4975024(v31, v29, v30);
    goto LABEL_15;
  }

  sub_1B4974FBC(v24, v19, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  if (v28(&v24[v26], 1, v11) == 1)
  {
    sub_1B4B327BC(v19, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
    goto LABEL_6;
  }

  sub_1B4B2C598(&v24[v26], v15, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  v32 = _s19FitnessIntelligence06Apple_a1_B20_DateRangeDescriptorV2eeoiySbAC_ACtFZ_0(v19, v15);
  sub_1B4B327BC(v15, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  sub_1B4B327BC(v19, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  sub_1B4975024(v24, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  if ((v32 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v33 = v51;
  v34 = *(v51 + 32);
  v35 = *(v50 + 48);
  v37 = v54;
  v36 = v55;
  sub_1B4974FBC(v55 + v34, v54, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
  sub_1B4974FBC(v27 + v34, v37 + v35, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
  v38 = v53;
  v39 = *(v52 + 48);
  if (v39(v37, 1, v53) != 1)
  {
    v40 = v49;
    sub_1B4974FBC(v37, v49, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
    if (v39(v37 + v35, 1, v38) != 1)
    {
      v43 = v37 + v35;
      v44 = v48;
      sub_1B4B2C598(v43, v48, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
      v45 = _s19FitnessIntelligence06Apple_a1_b1_A29PlusPropertyDimensionsFiltersV2eeoiySbAC_ACtFZ_0(v40, v44);
      sub_1B4B327BC(v44, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
      sub_1B4B327BC(v40, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
      sub_1B4975024(v37, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
      if ((v45 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    sub_1B4B327BC(v40, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
    goto LABEL_13;
  }

  if (v39(v37 + v35, 1, v38) != 1)
  {
LABEL_13:
    v29 = &qword_1EB8A7DE0;
    v30 = &qword_1B4D202D0;
    v31 = v37;
    goto LABEL_14;
  }

  sub_1B4975024(v37, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
LABEL_18:
  if (sub_1B4A0C158(*v36, *v27) & 1) != 0 && (sub_1B4A0C158(v36[1], v27[1]))
  {
    v46 = *(v33 + 24);
    sub_1B4D17BCC();
    sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v41 = sub_1B4D1816C();
    return v41 & 1;
  }

LABEL_15:
  v41 = 0;
  return v41 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B19_SnapshotQueryBatchV06OneOf_eF0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v45 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch(0);
  v3 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v47 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch(0);
  v5 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v46 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v43 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v43 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF30, &qword_1B4D32558);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v43 - v23;
  v26 = *(v25 + 56);
  sub_1B4B3281C(a1, &v43 - v23, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
  sub_1B4B3281C(v48, &v24[v26], type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B4B3281C(v24, v17, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = v46;
        sub_1B4B2C598(&v24[v26], v46, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
        if (sub_1B4A18560(*v17, *v28))
        {
          v29 = *(v44 + 20);
          sub_1B4D17BCC();
          sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
          v30 = sub_1B4D1816C();
          sub_1B4B327BC(v28, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
          if (v30)
          {
            v31 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch;
            v32 = v17;
LABEL_19:
            sub_1B4B327BC(v32, v31);
            sub_1B4B327BC(v24, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
            return 1;
          }
        }

        else
        {
          sub_1B4B327BC(v28, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
        }

        v42 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch;
        v41 = v17;
        goto LABEL_25;
      }

      v33 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch;
      v34 = v17;
    }

    else
    {
      sub_1B4B3281C(v24, v14, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v35 = v47;
        sub_1B4B2C598(&v24[v26], v47, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
        if (sub_1B4A16B30(*v14, *v35))
        {
          v36 = *(v45 + 20);
          sub_1B4D17BCC();
          sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
          if (sub_1B4D1816C())
          {
            sub_1B4B327BC(v35, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
            v32 = v14;
            v31 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch;
            goto LABEL_19;
          }
        }

        sub_1B4B327BC(v35, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
        v41 = v14;
        v42 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch;
        goto LABEL_25;
      }

      v33 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch;
      v34 = v14;
    }
  }

  else
  {
    sub_1B4B3281C(v24, v20, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
    if (!swift_getEnumCaseMultiPayload())
    {
      v37 = v10;
      sub_1B4B2C598(&v24[v26], v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
      if (sub_1B4A177EC(*v20, *v10))
      {
        v38 = *(v7 + 20);
        sub_1B4D17BCC();
        sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        v39 = sub_1B4D1816C();
        sub_1B4B327BC(v37, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
        if (v39)
        {
          v31 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch;
          v32 = v20;
          goto LABEL_19;
        }
      }

      else
      {
        sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
      }

      v42 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch;
      v41 = v20;
LABEL_25:
      sub_1B4B327BC(v41, v42);
      sub_1B4B327BC(v24, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
      return 0;
    }

    v33 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch;
    v34 = v20;
  }

  sub_1B4B327BC(v34, v33);
  sub_1B4975024(v24, &qword_1EB8AAF30, &qword_1B4D32558);
  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B21_RingsPropertiesQueryV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v54 = a2;
  v51 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  v49 = *(v51 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v46 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE0, &qword_1B4D1FE90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = (&v45 - v7);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF38, &unk_1B4D32560);
  v8 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v45 - v9;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = (&v45 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DE8, &qword_1B4D202D8);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v45 - v22;
  v50 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v24 = *(v50 + 28);
  v25 = *(v20 + 56);
  v53 = a1;
  sub_1B4974FBC(a1 + v24, v23, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  sub_1B4974FBC(v54 + v24, &v23[v25], &qword_1EB8A7BE8, &qword_1B4D1FE98);
  v26 = *(v11 + 48);
  if (v26(v23, 1, v10) == 1)
  {
    if (v26(&v23[v25], 1, v10) == 1)
    {
      sub_1B4975024(v23, &qword_1EB8A7BE8, &qword_1B4D1FE98);
      goto LABEL_8;
    }

LABEL_6:
    v27 = &qword_1EB8A7DE8;
    v28 = &qword_1B4D202D8;
    v29 = v23;
LABEL_24:
    sub_1B4975024(v29, v27, v28);
    goto LABEL_25;
  }

  sub_1B4974FBC(v23, v18, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  if (v26(&v23[v25], 1, v10) == 1)
  {
    sub_1B4B327BC(v18, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
    goto LABEL_6;
  }

  sub_1B4B2C598(&v23[v25], v14, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  v30 = _s19FitnessIntelligence06Apple_a1_B20_DateRangeDescriptorV2eeoiySbAC_ACtFZ_0(v18, v14);
  sub_1B4B327BC(v14, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  sub_1B4B327BC(v18, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  sub_1B4975024(v23, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  if ((v30 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  v31 = v50;
  v32 = *(v50 + 32);
  v33 = *(v48 + 48);
  v35 = v52;
  v34 = v53;
  sub_1B4974FBC(v53 + v32, v52, &qword_1EB8A7BE0, &qword_1B4D1FE90);
  v36 = v54;
  sub_1B4974FBC(v54 + v32, v35 + v33, &qword_1EB8A7BE0, &qword_1B4D1FE90);
  v37 = *(v49 + 48);
  v38 = v51;
  if (v37(v35, 1, v51) != 1)
  {
    v41 = v47;
    sub_1B4974FBC(v35, v47, &qword_1EB8A7BE0, &qword_1B4D1FE90);
    if (v37(v35 + v33, 1, v38) == 1)
    {
      sub_1B4B327BC(v41, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
      goto LABEL_16;
    }

    v42 = v46;
    sub_1B4B2C598(v35 + v33, v46, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
    if ((sub_1B4A0C158(*v41, *v42) & 1) == 0 || (sub_1B4A0C158(v41[1], v42[1]) & 1) == 0 || (sub_1B4A15970(v41[2], v42[2]) & 1) == 0)
    {
      sub_1B4B327BC(v42, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
      sub_1B4B327BC(v41, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
      v27 = &qword_1EB8A7BE0;
      v28 = &qword_1B4D1FE90;
      goto LABEL_23;
    }

    v43 = *(v38 + 28);
    sub_1B4D17BCC();
    sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    LOBYTE(v43) = sub_1B4D1816C();
    sub_1B4B327BC(v42, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
    sub_1B4B327BC(v41, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
    sub_1B4975024(v35, &qword_1EB8A7BE0, &qword_1B4D1FE90);
    if (v43)
    {
      goto LABEL_11;
    }

LABEL_25:
    v40 = 0;
    return v40 & 1;
  }

  if (v37(v35 + v33, 1, v38) != 1)
  {
LABEL_16:
    v27 = &qword_1EB8AAF38;
    v28 = &unk_1B4D32560;
LABEL_23:
    v29 = v35;
    goto LABEL_24;
  }

  sub_1B4975024(v35, &qword_1EB8A7BE0, &qword_1B4D1FE90);
LABEL_11:
  if ((sub_1B4A0C158(*v34, *v36) & 1) == 0 || (sub_1B4A0C158(v34[1], v36[1]) & 1) == 0)
  {
    goto LABEL_25;
  }

  v39 = *(v31 + 24);
  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v40 = sub_1B4D1816C();
  return v40 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B19_SanityTaskMismatchV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2] || a1[3] != a2[3])
  {
    v3 = a1;
    v4 = a1[2];
    v5 = a2;
    v6 = sub_1B4D18DCC();
    a2 = v5;
    v7 = v6;
    a1 = v3;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[4] != a2[4] || a1[5] != a2[5])
  {
    return 0;
  }

  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch(0) + 36);
  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B13_QueryMetricsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0) + 28);
  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B10_QueryPlanV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAED8, &qword_1B4D32500);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v27 - v15;
  if ((sub_1B4A1A80C(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  Plan = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0);
  v18 = a1;
  v19 = a2;
  v27[0] = Plan;
  v27[1] = v18;
  v20 = *(Plan + 20);
  v21 = *(v13 + 48);
  sub_1B4974FBC(v18 + v20, v16, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  sub_1B4974FBC(v19 + v20, &v16[v21], &qword_1EB8A81E0, &unk_1B4D2FDD0);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A81E0, &unk_1B4D2FDD0);
LABEL_11:
      v26 = *(v27[0] + 24);
      sub_1B4D17BCC();
      sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v23 = sub_1B4D1816C();
      return v23 & 1;
    }

    goto LABEL_7;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_1B4B327BC(v12, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
LABEL_7:
    sub_1B4975024(v16, &qword_1EB8AAED8, &qword_1B4D32500);
    goto LABEL_8;
  }

  sub_1B4B2C598(&v16[v21], v8, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  PlanV06OneOf_D4TypeO2eeoiySbAE_AEtFZ_0 = _s19FitnessIntelligence06Apple_a1_B10_QueryPlanV06OneOf_D4TypeO2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_1B4B327BC(v8, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  sub_1B4B327BC(v12, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  sub_1B4975024(v16, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  if (PlanV06OneOf_D4TypeO2eeoiySbAE_AEtFZ_0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B20_DateRangeDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v10 = *a1;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  if (v3 == 255)
  {
    if (v5 != 255)
    {
      return 0;
    }
  }

  else
  {
    v8 = v2;
    v9 = v3;
    if (v5 == 255 || (_s19FitnessIntelligence06Apple_a1_B20_DateRangeDescriptorV06OneOf_deF4TypeO2eeoiySbAE_AEtFZ_0(&v8, &v12) & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0) + 20);
  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B23_WorkoutPropertiesQueryV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v56 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v48 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DF0, &qword_1B4D202E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = (&v47 - v8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DF8, &qword_1B4D202E8);
  v9 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v47 - v10;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v47 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DE8, &qword_1B4D202D8);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v25 = *(v51 + 28);
  v26 = *(v21 + 56);
  v55 = a1;
  sub_1B4974FBC(a1 + v25, v24, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  v27 = v56;
  sub_1B4974FBC(v56 + v25, &v24[v26], &qword_1EB8A7BE8, &qword_1B4D1FE98);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) == 1)
  {
    if (v28(&v24[v26], 1, v11) == 1)
    {
      sub_1B4975024(v24, &qword_1EB8A7BE8, &qword_1B4D1FE98);
      goto LABEL_8;
    }

LABEL_6:
    v29 = &qword_1EB8A7DE8;
    v30 = &qword_1B4D202D8;
    v31 = v24;
LABEL_14:
    sub_1B4975024(v31, v29, v30);
    goto LABEL_15;
  }

  sub_1B4974FBC(v24, v19, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  if (v28(&v24[v26], 1, v11) == 1)
  {
    sub_1B4B327BC(v19, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
    goto LABEL_6;
  }

  sub_1B4B2C598(&v24[v26], v15, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  v32 = _s19FitnessIntelligence06Apple_a1_B20_DateRangeDescriptorV2eeoiySbAC_ACtFZ_0(v19, v15);
  sub_1B4B327BC(v15, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  sub_1B4B327BC(v19, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  sub_1B4975024(v24, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  if ((v32 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v33 = v51;
  v34 = *(v51 + 32);
  v35 = *(v50 + 48);
  v37 = v54;
  v36 = v55;
  sub_1B4974FBC(v55 + v34, v54, &qword_1EB8A7DF0, &qword_1B4D202E0);
  sub_1B4974FBC(v27 + v34, v37 + v35, &qword_1EB8A7DF0, &qword_1B4D202E0);
  v38 = v53;
  v39 = *(v52 + 48);
  if (v39(v37, 1, v53) != 1)
  {
    v40 = v49;
    sub_1B4974FBC(v37, v49, &qword_1EB8A7DF0, &qword_1B4D202E0);
    if (v39(v37 + v35, 1, v38) != 1)
    {
      v43 = v37 + v35;
      v44 = v48;
      sub_1B4B2C598(v43, v48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
      v45 = _s19FitnessIntelligence06Apple_a1_B33_WorkoutPropertyDimensionsFiltersV2eeoiySbAC_ACtFZ_0(v40, v44);
      sub_1B4B327BC(v44, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
      sub_1B4B327BC(v40, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
      sub_1B4975024(v37, &qword_1EB8A7DF0, &qword_1B4D202E0);
      if ((v45 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    sub_1B4B327BC(v40, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
    goto LABEL_13;
  }

  if (v39(v37 + v35, 1, v38) != 1)
  {
LABEL_13:
    v29 = &qword_1EB8A7DF8;
    v30 = &qword_1B4D202E8;
    v31 = v37;
    goto LABEL_14;
  }

  sub_1B4975024(v37, &qword_1EB8A7DF0, &qword_1B4D202E0);
LABEL_18:
  if (sub_1B4A0C158(*v36, *v27) & 1) != 0 && (sub_1B4A0C158(v36[1], v27[1]))
  {
    v46 = *(v33 + 24);
    sub_1B4D17BCC();
    sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v41 = sub_1B4D1816C();
    return v41 & 1;
  }

LABEL_15:
  v41 = 0;
  return v41 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B10_QueryPlanV06OneOf_D4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v38 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v38 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF40, &unk_1B4D32570);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v38 - v26;
  v29 = *(v28 + 56);
  sub_1B4B3281C(a1, &v38 - v26, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  sub_1B4B3281C(v39, &v27[v29], type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B4B3281C(v27, v20, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B4B2C598(&v27[v29], v9, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
        V2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence06Apple_a1_B21_RingsPropertiesQueryV2eeoiySbAC_ACtFZ_0(v20, v9);
        v32 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery;
        sub_1B4B327BC(v9, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
        v33 = v20;
LABEL_13:
        sub_1B4B327BC(v33, v32);
        sub_1B4B327BC(v27, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
        return V2eeoiySbAC_ACtFZ_0 & 1;
      }

      v34 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery;
      v35 = v20;
    }

    else
    {
      sub_1B4B3281C(v27, v17, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v36 = v38;
        sub_1B4B2C598(&v27[v29], v38, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
        V2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence06Apple_a1_b1_A19PlusPropertiesQueryV2eeoiySbAC_ACtFZ_0(v17, v36);
        v32 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery;
        sub_1B4B327BC(v36, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
        v33 = v17;
        goto LABEL_13;
      }

      v34 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery;
      v35 = v17;
    }
  }

  else
  {
    sub_1B4B3281C(v27, v23, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B4B2C598(&v27[v29], v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      V2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence06Apple_a1_B23_WorkoutPropertiesQueryV2eeoiySbAC_ACtFZ_0(v23, v13);
      v32 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery;
      sub_1B4B327BC(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      v33 = v23;
      goto LABEL_13;
    }

    v34 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery;
    v35 = v23;
  }

  sub_1B4B327BC(v35, v34);
  sub_1B4975024(v27, &qword_1EB8AAF40, &unk_1B4D32570);
  V2eeoiySbAC_ACtFZ_0 = 0;
  return V2eeoiySbAC_ACtFZ_0 & 1;
}

uint64_t sub_1B4B54918(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B4B56284()
{
  sub_1B4B56380(319, &qword_1EDC37960, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4B56380(319, qword_1EDC3CAD0, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B4D17BCC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4B56380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for Apple_Fitness_Intelligence_DateRangeDescriptor.OneOf_DateRangeDescriptorType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF1 && *(a1 + 9))
  {
    return (*a1 + 241);
  }

  v3 = *(a1 + 8);
  if (v3 <= 0xF)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Apple_Fitness_Intelligence_DateRangeDescriptor.OneOf_DateRangeDescriptorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF0)
  {
    *(result + 8) = 0;
    *result = a2 - 241;
    if (a3 >= 0xF1)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF1)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_155Tm(char *a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  v12 = sub_1B4D17BCC();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v13 = v12;
    v14 = *(v12 - 8);
    v15 = a3[6];
LABEL_9:
    v17 = *(v14 + 48);

    return v17(&a1[v15], a2, v13);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v13 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_9;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v19 = *(*(v18 - 8) + 48);
  v20 = &a1[a3[8]];

  return v19(v20, a2, v18);
}

char *__swift_store_extra_inhabitant_index_156Tm(char *result, uint64_t a2, int a3, int *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v12 = sub_1B4D17BCC();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v13 = v12;
    v14 = *(v12 - 8);
    v15 = a4[6];
LABEL_7:
    v17 = *(v14 + 56);

    return v17(&v7[v15], a2, a2, v13);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v13 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v19 = *(*(v18 - 8) + 56);
  v20 = &v7[a4[8]];

  return v19(v20, a2, a2, v18);
}

void sub_1B4B56934(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B4B57768(319, &qword_1EDC3CEB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v7 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v8 <= 0x3F)
    {
      sub_1B4B56380(319, qword_1EDC3C220, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor, MEMORY[0x1E69E6720]);
      if (v9 <= 0x3F)
      {
        sub_1B4B56380(319, a4, a5, MEMORY[0x1E69E6720]);
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1B4B56B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B4B56D48()
{
  result = sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_236Tm(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v14 = sub_1B4D17BCC();
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a2)
  {
    v16 = v14;
    v17 = *(v15 + 48);
    v18 = a1;
LABEL_8:

    return v17(v18, a2, v16);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v16 = v19;
    v20 = *(v19 - 8);
    v21 = a3[5];
LABEL_7:
    v17 = *(v20 + 48);
    v18 = a1 + v21;
    goto LABEL_8;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v16 = v22;
    v20 = *(v22 - 8);
    v21 = a3[6];
    goto LABEL_7;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  v25 = *(*(v24 - 8) + 48);
  v26 = a1 + a3[7];

  return v25(v26, a2, v24);
}

uint64_t __swift_store_extra_inhabitant_index_237Tm(uint64_t a1, uint64_t a2, int a3, int *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = sub_1B4D17BCC();
  v17 = *(v16 - 8);
  if (*(v17 + 84) == a3)
  {
    v18 = v16;
    v19 = *(v17 + 56);
    v20 = a1;
LABEL_8:

    return v19(v20, a2, a2, v18);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v18 = v21;
    v22 = *(v21 - 8);
    v23 = a4[5];
LABEL_7:
    v19 = *(v22 + 56);
    v20 = a1 + v23;
    goto LABEL_8;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v18 = v24;
    v22 = *(v24 - 8);
    v23 = a4[6];
    goto LABEL_7;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  v27 = *(*(v26 - 8) + 56);
  v28 = a1 + a4[7];

  return v27(v28, a2, a2, v26);
}

void sub_1B4B57284(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_1B4D17BCC();
  if (v11 <= 0x3F)
  {
    sub_1B4B56380(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v12 <= 0x3F)
    {
      sub_1B4B56380(319, a6, a7, MEMORY[0x1E69E6720]);
      if (v13 <= 0x3F)
      {
        sub_1B4B56380(319, &qword_1EB8AACF0, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics, MEMORY[0x1E69E6720]);
        if (v14 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1B4B57570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_1B4D17BCC();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B4B57654()
{
  sub_1B4B56380(319, qword_1EDC3BA30, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v1 <= 0x3F)
    {
      sub_1B4B57768(319, &qword_1EDC37890, MEMORY[0x1E69E7360], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4B57768(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B4B57820()
{
  sub_1B4B56380(319, &qword_1EDC37968, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4B5790C()
{
  result = sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4B57AB8()
{
  result = qword_1EB8AAF48;
  if (!qword_1EB8AAF48)
  {
    type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAF48);
  }

  return result;
}

unint64_t sub_1B4B57B14()
{
  result = qword_1EB8AAF50;
  if (!qword_1EB8AAF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAF50);
  }

  return result;
}

uint64_t sub_1B4B57B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B57C0C, 0, 0);
}

uint64_t sub_1B4B57C0C()
{
  v1 = v0[6];
  sub_1B4B58794(v0[4], v1, type metadata accessor for WorkoutState);
  v2 = type metadata accessor for WorkoutState();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1B49BF4D4;
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[2];
  v6 = v0[3];

  return sub_1B4B933AC(v7, v6, v4, v5);
}

unint64_t sub_1B4B57D1C(uint64_t a1)
{
  v2 = type metadata accessor for DateRangeDescriptor();
  v104 = *(v2 - 8);
  v3 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v99 = v85 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v100 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v85 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v85 - v15;
  MEMORY[0x1EEE9AC00](v17);
  Descriptor = v85 - v18;
  v103 = type metadata accessor for WorkoutPropertiesQuery();
  v19 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v21 = v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B4D1777C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v105 = v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for WorkoutState();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B58794(a1, v29, type metadata accessor for WorkoutState);
  v30 = sub_1B4CAC70C(v29);
  v31 = *(v30 + 2);
  v32 = 32;
  while (v31)
  {
    v33 = *&v30[v32];
    v32 += 8;
    --v31;
    if (v33 == 1)
    {
      v97 = v13;
      v93 = v5;

      v34 = *(v26 + 36);
      v92 = v23;
      v88 = v16;
      v35 = *(v23 + 16);
      v101 = v2;
      v36 = v105;
      v35(v105, &v29[v34], v22);
      v35(v21, v36, v22);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1B4D1A800;
      v38 = *&v29[*(v26 + 24)];
      sub_1B49BFEC0(v29, type metadata accessor for WorkoutState);
      v39 = [v38 effectiveTypeIdentifier];

      *(v37 + 32) = v39;
      v40 = v103;
      v41 = MEMORY[0x1E69E7CC0];
      v42 = &v21[*(v103 + 20)];
      *v42 = MEMORY[0x1E69E7CC0];
      *(v42 + 1) = v41;
      *(v42 + 2) = v41;
      *(v42 + 3) = v37;
      *(v42 + 4) = v41;
      *(v42 + 5) = v41;
      *&v21[*(v40 + 24)] = &unk_1F2CB9718;
      *&v21[*(v40 + 28)] = &unk_1F2CB9740;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF58, &qword_1B4D325E8);
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF60, &qword_1B4D325F0);
      v43 = (*(*(v96 - 8) + 80) + 32) & ~*(*(v96 - 8) + 80);
      v86 = *(*(v96 - 8) + 72);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1B4D1AA70;
      v90 = v23 + 16;
      v91 = v44;
      v95 = v44 + v43;
      *(v44 + v43) = 2;
      v45 = v101;
      v46 = Descriptor;
      v98 = v22;
      v89 = v35;
      v35(Descriptor, v36, v22);
      v47 = v88;
      swift_storeEnumTagMultiPayload();
      v48 = v104;
      v49 = *(v104 + 56);
      v85[1] = v104 + 56;
      v85[0] = v49;
      v49(v46, 0, 1, v45);
      sub_1B49BFDE8(v46, v47);
      v50 = *(v48 + 48);
      v51 = v50(v47, 1, v45);
      v94 = v21;
      v104 = v48 + 48;
      v87 = v50;
      if (v51 == 1)
      {
        v52 = v99;
        sub_1B4B58794(v21, v99, type metadata accessor for DateRangeDescriptor);
        if (v50(v47, 1, v45) != 1)
        {
          sub_1B4975024(v47, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v52 = v99;
        sub_1B4993450(v47, v99);
      }

      v59 = v95;
      v60 = v95 + *(v96 + 48);
      v61 = *v42;
      v62 = *(v42 + 1);
      v63 = *(v42 + 2);
      v64 = *(v42 + 3);
      v65 = *(v42 + 4);
      v66 = *(v42 + 5);
      sub_1B4B58794(v52, v60, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v52, type metadata accessor for DateRangeDescriptor);
      v67 = v103;
      v68 = (v60 + *(v103 + 20));
      *v68 = v61;
      v68[1] = v62;
      v68[2] = v63;
      v68[3] = v64;
      v68[4] = v65;
      v68[5] = v66;
      *(v60 + *(v67 + 24)) = &unk_1F2CB9718;
      *(v60 + *(v67 + 28)) = &unk_1F2CB9740;
      sub_1B4975024(Descriptor, &qword_1EB8A67A8, &qword_1B4D1E060);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      swift_storeEnumTagMultiPayload();
      v69 = v59 + v86;
      *(v59 + v86) = 3;
      v70 = v97;
      v89(v97, v105, v98);
      v71 = v101;
      swift_storeEnumTagMultiPayload();
      (v85[0])(v70, 0, 1, v71);
      v72 = v100;
      sub_1B49BFDE8(v70, v100);
      v73 = v87;
      if (v87(v72, 1, v71) == 1)
      {
        v74 = v93;
        sub_1B4B58794(v94, v93, type metadata accessor for DateRangeDescriptor);
        if (v73(v72, 1, v71) != 1)
        {
          sub_1B4975024(v72, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v74 = v93;
        sub_1B4993450(v72, v93);
      }

      v75 = v69 + *(v96 + 48);
      v76 = *v42;
      v77 = *(v42 + 1);
      v78 = *(v42 + 2);
      v79 = *(v42 + 3);
      v80 = *(v42 + 4);
      v81 = *(v42 + 5);
      sub_1B4B58794(v74, v75, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v74, type metadata accessor for DateRangeDescriptor);
      v82 = v103;
      v83 = (v75 + *(v103 + 20));
      *v83 = v76;
      v83[1] = v77;
      v83[2] = v78;
      v83[3] = v79;
      v83[4] = v80;
      v83[5] = v81;
      *(v75 + *(v82 + 24)) = &unk_1F2CB9718;
      *(v75 + *(v82 + 28)) = &unk_1F2CB9740;
      sub_1B4975024(v97, &qword_1EB8A67A8, &qword_1B4D1E060);
      swift_storeEnumTagMultiPayload();
      v84 = sub_1B4C95FE8(v91);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1B49BFEC0(v94, type metadata accessor for WorkoutPropertiesQuery);
      (*(v92 + 8))(v105, v98);
      return v84;
    }
  }

  sub_1B49BFEC0(v29, type metadata accessor for WorkoutState);
  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v53 = sub_1B4D17F6C();
  __swift_project_value_buffer(v53, qword_1EDC36F00);
  v54 = sub_1B4D17F5C();
  v55 = sub_1B4D1873C();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v106 = v57;
    *v56 = 136315138;
    *(v56 + 4) = sub_1B49558AC(0xD000000000000028, 0x80000001B4D62220, &v106);
    _os_log_impl(&dword_1B4953000, v54, v55, "%s does not support this workout state", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x1B8C7DDA0](v57, -1, -1);
    MEMORY[0x1B8C7DDA0](v56, -1, -1);
  }

  return sub_1B4C95FE8(MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1B4B58794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t HeartRateZonesFact.TemplateString.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4B5887C()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B588F0()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B58944@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

uint64_t HeartRateZonesFact.placeholders()()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B4D1AA70;
  v4 = sub_1B4D18D5C();
  v6 = v5;
  *(v3 + 32) = 0xD000000000000010;
  *(v3 + 40) = 0x80000001B4D62250;
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  *(v3 + 48) = sub_1B4993DFC;
  *(v3 + 56) = v7;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74F0, &unk_1B4D35700);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E63B0];
  *(v8 + 16) = xmmword_1B4D1A800;
  v10 = MEMORY[0x1E69E6438];
  *(v8 + 56) = v9;
  *(v8 + 64) = v10;
  *(v8 + 32) = v2;
  v11 = sub_1B4D1819C();
  v13 = v12;
  *(v3 + 80) = 0x61746E6563726570;
  *(v3 + 88) = 0xEA00000000006567;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;
  *(v3 + 96) = sub_1B4994004;
  *(v3 + 104) = v14;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  return v3;
}

unint64_t sub_1B4B58B64()
{
  result = qword_1EB8AAF68;
  if (!qword_1EB8AAF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAF68);
  }

  return result;
}

unint64_t sub_1B4B58BBC()
{
  result = qword_1EB8AAF70;
  if (!qword_1EB8AAF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AAF78, &qword_1B4D32698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAF70);
  }

  return result;
}

unint64_t sub_1B4B58C24()
{
  result = qword_1EB8AAF80;
  if (!qword_1EB8AAF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAF80);
  }

  return result;
}

unint64_t sub_1B4B58C7C()
{
  result = qword_1EB8AAF88;
  if (!qword_1EB8AAF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAF88);
  }

  return result;
}

unint64_t sub_1B4B58CD0(uint64_t a1)
{
  result = sub_1B4B58CF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4B58CF8()
{
  result = qword_1EB8AAF90;
  if (!qword_1EB8AAF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAF90);
  }

  return result;
}

uint64_t WorkoutVoiceGreatestElevationGainFact.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutVoiceGreatestElevationGainFact() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WorkoutVoiceGreatestElevationGainFact()
{
  result = qword_1EB8AAFE0;
  if (!qword_1EB8AAFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutVoiceGreatestElevationGainFact.timescale.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WorkoutVoiceGreatestElevationGainFact();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t WorkoutVoiceGreatestElevationGainFact.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutVoiceGreatestElevationGainFact() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WorkoutVoiceGreatestElevationGainFact.init(value:timescale:workoutActivityType:identifier:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v11 = *a2;
  *a6 = 18;
  v12 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact();
  v13 = v12[5];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  result = (*(*(v14 - 8) + 32))(&a6[v13], a1, v14);
  a6[v12[6]] = v11;
  *&a6[v12[7]] = a3;
  v16 = &a6[v12[8]];
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t sub_1B4B58FA0()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x6C616373656D6974;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x696669746E656469;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65756C6176;
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

uint64_t sub_1B4B5903C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4B59EFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4B59064(uint64_t a1)
{
  v2 = sub_1B4B59A7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B590A0(uint64_t a1)
{
  v2 = sub_1B4B59A7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutVoiceGreatestElevationGainFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF98, &qword_1B4D32718);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B59A7C();
  sub_1B4D18EFC();
  v23 = *v3;
  v22 = 0;
  sub_1B4B59AD0();
  sub_1B4D18D0C();
  if (!v2)
  {
    v11 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact();
    v12 = v11[5];
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B4B5A0C0(&qword_1EB8A6EE8);
    sub_1B4D18D0C();
    v20 = v3[v11[6]];
    v19 = 2;
    sub_1B4B59B24();
    sub_1B4D18D0C();
    v18 = *&v3[v11[7]];
    v17[15] = 3;
    type metadata accessor for HKWorkoutActivityType(0);
    sub_1B4B59C20(&qword_1EB8AAFB8);
    sub_1B4D18D0C();
    v13 = &v3[v11[8]];
    v14 = *v13;
    v15 = v13[1];
    v17[14] = 4;
    sub_1B4D18CBC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t WorkoutVoiceGreatestElevationGainFact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAFC0, &qword_1B4D32720);
  v26 = *(v29 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v10 = &v24 - v9;
  v11 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1B4B59A7C();
  v28 = v10;
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  v18 = v26;
  v17 = v27;
  v37 = 0;
  sub_1B4B59B78();
  sub_1B4D18C0C();
  *v14 = v38;
  v36 = 1;
  sub_1B4B5A0C0(&qword_1EB8A6F28);
  sub_1B4D18C0C();
  (*(v17 + 32))(&v14[v11[5]], v7, v4);
  v34 = 2;
  sub_1B4B59BCC();
  sub_1B4D18C0C();
  v14[v11[6]] = v35;
  type metadata accessor for HKWorkoutActivityType(0);
  v33 = 3;
  sub_1B4B59C20(&qword_1EB8AAFD8);
  sub_1B4D18C0C();
  *&v14[v11[7]] = v31;
  v32 = 4;
  v19 = sub_1B4D18BBC();
  v21 = v20;
  (*(v18 + 8))(v28, v29);
  v22 = &v14[v11[8]];
  *v22 = v19;
  v22[1] = v21;
  sub_1B4AFA798(v14, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  return sub_1B4B59C64(v14);
}

uint64_t _s19FitnessIntelligence37WorkoutVoiceGreatestElevationGainFactV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24[-v10];
  v12 = *a1;
  v13 = *a2;
  if (v12 > 0x11)
  {
    if (v12 == 18)
    {
      if (v13 == 18)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v12 != 19)
      {
        goto LABEL_10;
      }

      if (v13 == 19)
      {
        goto LABEL_16;
      }
    }

LABEL_22:
    v22 = 0;
    return v22 & 1;
  }

  if (v12 == 16)
  {
    if (v13 == 16)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  if (v12 != 17)
  {
LABEL_10:
    if ((v13 & 0xFC) == 0x10)
    {
      goto LABEL_22;
    }

    v24[15] = v12;
    v24[14] = v13;
    DistanceReference.rawValue.getter();
    DistanceReference.rawValue.getter();
    sub_1B4B5A0C0(&qword_1EDC3CB38);
    v14 = sub_1B4D1816C();
    v15 = *(v5 + 8);
    v15(v8, v4);
    v15(v11, v4);
    if ((v14 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (v13 != 17)
  {
    goto LABEL_22;
  }

LABEL_16:
  v16 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact();
  v17 = v16[5];
  sub_1B4B5A0C0(&qword_1EDC3CB38);
  if ((sub_1B4D1816C() & 1) == 0 || (sub_1B4975E34(a1[v16[6]], a2[v16[6]]) & 1) == 0 || *&a1[v16[7]] != *&a2[v16[7]])
  {
    goto LABEL_22;
  }

  v18 = v16[8];
  v19 = *&a1[v18];
  v20 = *&a1[v18 + 8];
  v21 = &a2[v18];
  if (v19 == *v21 && v20 == *(v21 + 1))
  {
    v22 = 1;
  }

  else
  {
    v22 = sub_1B4D18DCC();
  }

  return v22 & 1;
}

unint64_t sub_1B4B59A7C()
{
  result = qword_1EB8AAFA0;
  if (!qword_1EB8AAFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAFA0);
  }

  return result;
}

unint64_t sub_1B4B59AD0()
{
  result = qword_1EB8AAFA8;
  if (!qword_1EB8AAFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAFA8);
  }

  return result;
}

unint64_t sub_1B4B59B24()
{
  result = qword_1EB8AAFB0;
  if (!qword_1EB8AAFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAFB0);
  }

  return result;
}

unint64_t sub_1B4B59B78()
{
  result = qword_1EB8AAFC8;
  if (!qword_1EB8AAFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAFC8);
  }

  return result;
}

unint64_t sub_1B4B59BCC()
{
  result = qword_1EB8AAFD0;
  if (!qword_1EB8AAFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAFD0);
  }

  return result;
}

uint64_t sub_1B4B59C20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKWorkoutActivityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B59C64(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4B59CE8()
{
  sub_1B4B59D8C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKWorkoutActivityType(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4B59D8C()
{
  if (!qword_1EDC3CE78)
  {
    sub_1B499221C();
    v0 = sub_1B4D1746C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC3CE78);
    }
  }
}

unint64_t sub_1B4B59DF8()
{
  result = qword_1EB8AAFF0;
  if (!qword_1EB8AAFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAFF0);
  }

  return result;
}

unint64_t sub_1B4B59E50()
{
  result = qword_1EB8AAFF8;
  if (!qword_1EB8AAFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AAFF8);
  }

  return result;
}

unint64_t sub_1B4B59EA8()
{
  result = qword_1EB8AB000;
  if (!qword_1EB8AB000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB000);
  }

  return result;
}

uint64_t sub_1B4B59EFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616373656D6974 && a2 == 0xE900000000000065 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4D62270 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

uint64_t sub_1B4B5A0C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B5A114(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v75 = &v64[-v6];
  v74 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  *&v77 = *(v74 - 8);
  v7 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v9 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B4D17BEC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v64[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64[-v19];
  v21 = sub_1B4D173AC();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_1B4D1739C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB018, &unk_1B4D463D0);
  sub_1B4B5B4E0(&qword_1EDC36E48, sub_1B49DDFEC);
  v25 = v80;
  sub_1B4D1738C();
  v80 = v25;
  if (v25)
  {
    sub_1B49DDD2C(a1, a2);

    return v24;
  }

  v72 = v14;
  v73 = v13;
  v79 = v20;
  v71 = v9;

  v26 = v82;
  v27 = *(v82 + 16);
  if (!v27)
  {

    sub_1B49DDD2C(a1, a2);
    return MEMORY[0x1E69E7CC0];
  }

  v78 = v17;
  v66 = a1;
  v67 = a2;
  v86 = MEMORY[0x1E69E7CC0];
  result = sub_1B4BCF61C(0, v27, 0);
  if (!*(v26 + 16))
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v29 = 0;
  v30 = (v77 + 48);
  v24 = v86;
  v69 = v27 - 1;
  v68 = (v77 + 48);
  v70 = v26;
  while (1)
  {
    *&v77 = v24;
    v85 = *(v26 + 16 * v29 + 32);
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    v31 = *(&v85 + 1);
    v32 = v85;
    sub_1B498FC0C(v85, *(&v85 + 1));
    sub_1B498FC0C(v32, v31);
    sub_1B498FC0C(v32, v31);
    sub_1B498FC0C(v32, v31);
    sub_1B4D17BDC();
    sub_1B4B5B488();
    v34 = v79;
    v33 = v80;
    v35 = v72;
    v24 = v72;
    sub_1B4D17D7C();
    v80 = v33;
    if (v33)
    {

      sub_1B49DDD2C(v66, v67);
      sub_1B49DDD2C(v32, v31);
      sub_1B49DDD2C(v32, v31);
      sub_1B49DDD2C(v32, v31);

      return v24;
    }

    v36 = v78;
    sub_1B4B5B558(v34, v78);
    v37 = &v36[*(v35 + 28)];
    v38 = v75;
    sub_1B4B5B5BC(v37, v75);
    v39 = *v30;
    v40 = v74;
    if ((*v30)(v38, 1, v74) == 1)
    {
      v41 = v71;
      sub_1B4D17BBC();
      v42 = (v41 + *(v40 + 20));
      *v42 = 0;
      v42[1] = 0;
      v43 = (v41 + *(v40 + 24));
      *v43 = 0;
      v43[1] = 0;
      if (v39(v38, 1, v40) != 1)
      {
        sub_1B4975024(v38, &qword_1EB8A6938, &qword_1B4D1ACF8);
      }
    }

    else
    {
      v41 = v71;
      sub_1B4B5B68C(v38, v71);
    }

    v44 = (v41 + *(v40 + 20));
    v45 = v44[1];
    if (!v45)
    {
      v60 = 0;
LABEL_23:

      sub_1B498C3D8();
      v24 = swift_allocError();
      *v61 = v60;
      swift_willThrow();
      sub_1B49DDD2C(v66, v67);
      sub_1B49DDD2C(v32, v31);
      sub_1B49DDD2C(v32, v31);
      sub_1B49DDD2C(v32, v31);
      sub_1B4B5B62C(v78, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
      sub_1B4B5B62C(v79, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
      v62 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice;
      v63 = v41;
LABEL_25:
      sub_1B4B5B62C(v63, v62);

      return v24;
    }

    v76 = v29;
    v46 = (v41 + *(v40 + 24));
    v47 = v46[1];
    if (!v47)
    {
      v60 = 1;
      goto LABEL_23;
    }

    v48 = *v44;
    v49 = *v46;

    sub_1B4B5B62C(v41, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    v50 = v78;
    v51 = *v78;
    v52 = v80;
    sub_1B4B81578(v78, &v82);
    if (v52)
    {
      v24 = v52;

      sub_1B49DDD2C(v66, v67);
      sub_1B49DDD2C(v32, v31);
      sub_1B49DDD2C(v32, v31);
      sub_1B49DDD2C(v32, v31);
      sub_1B4B5B62C(v50, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
      v63 = v79;
      v62 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset;
      goto LABEL_25;
    }

    v80 = 0;
    sub_1B49DDD2C(v32, v31);
    sub_1B49DDD2C(v32, v31);
    sub_1B49DDD2C(v32, v31);
    sub_1B4B5B62C(v50, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
    result = sub_1B4B5B62C(v79, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
    v53 = v82;
    v54 = v83;
    v55 = BYTE1(v83);
    v81 = BYTE1(v83);
    v24 = v77;
    v86 = v77;
    v57 = *(v77 + 16);
    v56 = *(v77 + 24);
    if (v57 >= v56 >> 1)
    {
      v77 = v82;
      v65 = v83;
      result = sub_1B4BCF61C((v56 > 1), v57 + 1, 1);
      v54 = v65;
      v53 = v77;
      v24 = v86;
    }

    *(v24 + 16) = v57 + 1;
    v58 = v24 + (v57 << 6);
    *(v58 + 32) = v48;
    *(v58 + 40) = v45;
    *(v58 + 48) = v49;
    *(v58 + 56) = v47;
    *(v58 + 64) = v51;
    v59 = *(&v85 + 3);
    *(v58 + 65) = v85;
    *(v58 + 68) = v59;
    *(v58 + 72) = v53;
    *(v58 + 88) = v54;
    *(v58 + 89) = v55;
    if (v69 == v76)
    {
      break;
    }

    v26 = v70;
    v29 = v76 + 1;
    v30 = v68;
    if ((v76 + 1) >= *(v70 + 16))
    {
      goto LABEL_28;
    }
  }

  sub_1B49DDD2C(v66, v67);
  return v24;
}

void static VoiceAssetCache.writeCachedAssets(_:)(uint64_t a1)
{
  v2 = sub_1B4B5ABA0(a1);
  if (!v1)
  {
    v4 = v2;
    v5 = v3;
    v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v7 = sub_1B4D1817C();
    v8 = [v6 initWithSuiteName_];

    if (v8)
    {
      v9 = sub_1B4D176AC();
      v10 = sub_1B4D1817C();
      [v8 setValue:v9 forKey:v10];

      v11 = sub_1B4D1817C();
      CFPreferencesAppSynchronize(v11);

      v12 = [objc_allocWithZone(NPSManagerBridge) init];
      v13 = sub_1B4D1817C();
      sub_1B49B554C(&unk_1F2CBB138);
      sub_1B497CBA8(&unk_1F2CBB158);
      v14 = sub_1B4D185FC();

      [v12 synchronizeUserDefaultsDomain:v13 keys:v14];

      if (qword_1EDC3CEC8 != -1)
      {
        swift_once();
      }

      v15 = sub_1B4D17F6C();
      __swift_project_value_buffer(v15, qword_1EDC3CED0);
      v16 = sub_1B4D17F5C();
      v17 = sub_1B4D1873C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1B4953000, v16, v17, "Wrote assets to cache", v18, 2u);
        MEMORY[0x1B8C7DDA0](v18, -1, -1);
      }

      sub_1B49DDD2C(v4, v5);
    }

    else
    {
      sub_1B4B5B2B8();
      swift_allocError();
      swift_willThrow();
      sub_1B49DDD2C(v4, v5);
    }
  }
}

_OWORD *sub_1B4B5ABA0(uint64_t a1)
{
  v29 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  v3 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF63C(0, v6, 0);
    v30 = v37;
    v28 = sub_1B4B5B384();
    v26 = *(v28 + 32);
    v27 = v28 + 32;
    v7 = (a1 + 32);
    for (i = v6 - 1; ; --i)
    {
      v9 = v7[1];
      v35[0] = *v7;
      v35[1] = v9;
      v11 = *v7;
      v10 = v7[1];
      v36[0] = v7[2];
      *(v36 + 10) = *(v7 + 42);
      v32 = v11;
      v33 = v10;
      v34[0] = v7[2];
      *(v34 + 10) = *(v7 + 42);
      sub_1B4B5B3D8(v35, v31);
      v26(&type metadata for AudioSynthesisVoiceAsset, v28);
      if (v1)
      {
        break;
      }

      sub_1B4B5B488();
      v12 = sub_1B4D17D6C();
      v14 = v13;
      sub_1B4B5B434(v35);
      v15 = v5;
      sub_1B4B5B62C(v5, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
      v16 = v30;
      v37 = v30;
      v18 = *(v30 + 16);
      v17 = *(v30 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B4BCF63C((v17 > 1), v18 + 1, 1);
        v16 = v37;
      }

      *(v16 + 16) = v18 + 1;
      v30 = v16;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v12;
      *(v19 + 40) = v14;
      if (!i)
      {
        goto LABEL_9;
      }

      v7 += 4;
      v5 = v15;
    }

    sub_1B4B5B434(v35);
    goto LABEL_13;
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_9:
  v20 = sub_1B4D173DC();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_1B4D173CC();
  *&v35[0] = v30;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB018, &unk_1B4D463D0);
  sub_1B4B5B4E0(&qword_1EDC36E50, sub_1B49DDCD8);
  v23 = sub_1B4D173BC();
  if (v1)
  {

LABEL_13:

    return v7;
  }

  v7 = v23;

  return v7;
}

uint64_t _s19FitnessIntelligence15VoiceAssetCacheV16readCachedAssetsSayAA014AudioSynthesiscD0VGyFZ_0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1B4D1817C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_1B4D1817C();
    v4 = [v2 dataForKey_];

    if (v4)
    {
      v5 = sub_1B4D176BC();
      v7 = v6;

      sub_1B498FC0C(v5, v7);
      v16 = sub_1B4B5A114(v5, v7);
      sub_1B49DDD2C(v5, v7);

      return v16;
    }

    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v12 = sub_1B4D17F6C();
    __swift_project_value_buffer(v12, qword_1EDC3CED0);
    v13 = sub_1B4D17F5C();
    v14 = sub_1B4D1873C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B4953000, v13, v14, "No assets found in defaults", v15, 2u);
      MEMORY[0x1B8C7DDA0](v15, -1, -1);
    }
  }

  else
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v8 = sub_1B4D17F6C();
    __swift_project_value_buffer(v8, qword_1EDC3CED0);
    v9 = sub_1B4D17F5C();
    v10 = sub_1B4D1871C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B4953000, v9, v10, "Voice asset cache defaults unavailable", v11, 2u);
      MEMORY[0x1B8C7DDA0](v11, -1, -1);
    }
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1B4B5B2B8()
{
  result = qword_1EB8AB008;
  if (!qword_1EB8AB008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB008);
  }

  return result;
}

unint64_t sub_1B4B5B330()
{
  result = qword_1EB8AB010;
  if (!qword_1EB8AB010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB010);
  }

  return result;
}

unint64_t sub_1B4B5B384()
{
  result = qword_1EDC36FF8[0];
  if (!qword_1EDC36FF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC36FF8);
  }

  return result;
}

unint64_t sub_1B4B5B488()
{
  result = qword_1EDC3B640[0];
  if (!qword_1EDC3B640[0])
  {
    type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC3B640);
  }

  return result;
}

uint64_t sub_1B4B5B4E0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AB018, &unk_1B4D463D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B5B558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B5B5BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B5B62C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4B5B68C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *WorkoutPropertyDimensions.init(monthOfYear:dayOfWeek:hourOfDay:activityType:locationType:sourceIdentifier:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a2;
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a6;
  *a9 = *result;
  *(a9 + 1) = v9;
  *(a9 + 8) = v10;
  *(a9 + 16) = v11;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 33) = v12;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  return result;
}

Swift::Bool __swiftcall WorkoutPropertyDimensions.matches(_:)(FitnessIntelligence::WorkoutPropertyDimensionsFilters_optional *a1)
{
  rawValue = a1->value.monthOfYear._rawValue;
  if (!a1->value.monthOfYear._rawValue)
  {
    return 1;
  }

  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 1);
  v7 = v1[16];
  v8 = *(v1 + 3);
  v9 = v1[32];
  v10 = v1[33];
  v11 = *(v1 + 5);
  v12 = *(v1 + 6);
  v13 = a1->value.sourceIdentifier._rawValue;
  v14 = a1->value.hourOfDay._rawValue;
  v15 = a1->value.activityType._rawValue;
  v54 = a1->value.locationType._rawValue;
  v55 = v15;
  v59 = v14;
  v16 = a1->value.dayOfWeek._rawValue;
  if (v4 != 12)
  {
    if (rawValue[2])
    {
      v4 = sub_1B4978C4C(v4, rawValue);
      if ((v4 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v56 = v8;
  v57 = v7;
  v58 = v9;
  v51 = v11;
  v52 = v12;
  v53 = v13;
  if (v5 != 7)
  {
    v17 = *(v16 + 2);
    if (v17)
    {
      v18 = v16 + 32;
      do
      {
        if (!v17)
        {
          return 0;
        }

        v22 = *v18;
        if (v22 <= 2)
        {
          v26 = 0xE900000000000079;
          v27 = 0x616473656E646577;
          if (v22 == 1)
          {
            v27 = 0x79616473657574;
            v26 = 0xE700000000000000;
          }

          if (*v18)
          {
            v23 = v27;
          }

          else
          {
            v23 = 0x7961646E6F6DLL;
          }

          if (*v18)
          {
            v24 = v26;
          }

          else
          {
            v24 = 0xE600000000000000;
          }

          if (v5 > 2)
          {
LABEL_40:
            v28 = 0x7961646E7573;
            if (v5 == 5)
            {
              v28 = 0x7961647275746173;
              v29 = 0xE800000000000000;
            }

            else
            {
              v29 = 0xE600000000000000;
            }

            v30 = 0x7961647372756874;
            if (v5 == 3)
            {
              v31 = 0xE800000000000000;
            }

            else
            {
              v30 = 0x796164697266;
              v31 = 0xE600000000000000;
            }

            if (v5 <= 4)
            {
              v32 = v30;
            }

            else
            {
              v32 = v28;
            }

            if (v5 <= 4)
            {
              v20 = v31;
            }

            else
            {
              v20 = v29;
            }

            if (v23 != v32)
            {
              goto LABEL_11;
            }

            goto LABEL_10;
          }
        }

        else if (*v18 > 4u)
        {
          if (v22 == 5)
          {
            v24 = 0xE800000000000000;
            v23 = 0x7961647275746173;
            if (v5 > 2)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v23 = 0x7961646E7573;
            v24 = 0xE600000000000000;
            if (v5 > 2)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
          if (v22 == 3)
          {
            v23 = 0x7961647372756874;
          }

          else
          {
            v23 = 0x796164697266;
          }

          if (v22 == 3)
          {
            v24 = 0xE800000000000000;
          }

          else
          {
            v24 = 0xE600000000000000;
          }

          if (v5 > 2)
          {
            goto LABEL_40;
          }
        }

        if (v5)
        {
          if (v5 == 1)
          {
            v25 = 0x79616473657574;
          }

          else
          {
            v25 = 0x616473656E646577;
          }

          if (v5 == 1)
          {
            v20 = 0xE700000000000000;
          }

          else
          {
            v20 = 0xE900000000000079;
          }

          if (v23 != v25)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v20 = 0xE600000000000000;
          if (v23 != 0x7961646E6F6DLL)
          {
            goto LABEL_11;
          }
        }

LABEL_10:
        if (v24 == v20)
        {

          break;
        }

LABEL_11:
        v21 = sub_1B4D18DCC();

        ++v18;
        --v17;
      }

      while ((v21 & 1) == 0);
    }
  }

  if ((v57 & 1) == 0)
  {
    v33 = v59[2];
    if (v33)
    {
      v34 = v59 + 4;
      while (v33)
      {
        v35 = *v34++;
        --v33;
        if (v35 == v6)
        {
          goto LABEL_65;
        }
      }

      return 0;
    }
  }

LABEL_65:
  if ((v58 & 1) == 0)
  {
    v36 = v55[2];
    if (v36)
    {
      v37 = v55 + 4;
      while (v36)
      {
        v38 = *v37++;
        --v36;
        if (v38 == v56)
        {
          goto LABEL_70;
        }
      }

      return 0;
    }
  }

LABEL_70:
  if (v10 != 5)
  {
    v39 = *(v54 + 2);
    if (v39)
    {
      v40 = v54 + 32;
      do
      {
        if (!v39)
        {
          return 0;
        }

        v43 = *v40;
        if (v43 <= 1)
        {
          if (*v40)
          {
            v44 = 0x726F6F646E69;
          }

          else
          {
            v44 = 0x6E776F6E6B6E75;
          }

          if (*v40)
          {
            v45 = 0xE600000000000000;
          }

          else
          {
            v45 = 0xE700000000000000;
          }

          if (v10 > 1)
          {
LABEL_86:
            if (v10 == 3)
            {
              v46 = 0x657461576E65706FLL;
            }

            else
            {
              v46 = 0x676E696D6D697773;
            }

            v47 = 0xEC0000006C6F6F50;
            if (v10 == 3)
            {
              v47 = 0xE900000000000072;
            }

            if (v10 == 2)
            {
              v48 = 0x726F6F6474756FLL;
            }

            else
            {
              v48 = v46;
            }

            if (v10 == 2)
            {
              v41 = 0xE700000000000000;
            }

            else
            {
              v41 = v47;
            }

            if (v44 != v48)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          }
        }

        else if (v43 == 2)
        {
          v45 = 0xE700000000000000;
          v44 = 0x726F6F6474756FLL;
          if (v10 > 1)
          {
            goto LABEL_86;
          }
        }

        else
        {
          if (v43 == 3)
          {
            v44 = 0x657461576E65706FLL;
          }

          else
          {
            v44 = 0x676E696D6D697773;
          }

          if (v43 == 3)
          {
            v45 = 0xE900000000000072;
          }

          else
          {
            v45 = 0xEC0000006C6F6F50;
          }

          if (v10 > 1)
          {
            goto LABEL_86;
          }
        }

        if (v10)
        {
          v41 = 0xE600000000000000;
          if (v44 != 0x726F6F646E69)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v41 = 0xE700000000000000;
          if (v44 != 0x6E776F6E6B6E75)
          {
            goto LABEL_75;
          }
        }

LABEL_74:
        if (v45 == v41)
        {

          break;
        }

LABEL_75:
        v42 = sub_1B4D18DCC();

        ++v40;
        --v39;
      }

      while ((v42 & 1) == 0);
    }
  }

  if (!v52)
  {
    return 1;
  }

  if (!v53[2])
  {
    return 1;
  }

  v60[0] = v51;
  v60[1] = v52;
  MEMORY[0x1EEE9AC00](v4);
  v50[2] = v60;
  return (sub_1B49B1748(sub_1B4B5CED0, v50, v49) & 1) != 0;
}

uint64_t static WorkoutPropertyDimensions.dimensions(from:for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4D1794C();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4D1777C();
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = *(v13 + 80);
  v14(v12, v13);
  result = DayOfWeek.init(from:)(v11, &v36);
  if (v36 == 7 || (v30 = v36, v14(v12, v13), result = MonthOfYear.init(from:)(v11, &v35), v35 == 12))
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 48) = 1;
  }

  else
  {
    v29 = v35;
    v14(v12, v13);
    if (qword_1EDC3CE40 != -1)
    {
      swift_once();
    }

    v16 = sub_1B4D1796C();
    __swift_project_value_buffer(v16, qword_1EDC3CE48);
    v17 = v33;
    (*(v33 + 104))(v7, *MEMORY[0x1E6969A58], v4);
    v18 = sub_1B4D1795C();
    (*(v17 + 8))(v7, v4);
    (*(v31 + 8))(v11, v32);
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    v21 = (*(v20 + 56))(v19, v20);
    v22 = [v21 effectiveTypeIdentifier];

    v23 = a1[3];
    v24 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v23);
    (*(v24 + 40))(&v34, v23, v24);
    v25 = v34;
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    result = (*(v27 + 48))(v26, v27);
    *a2 = v29 | (v30 << 8);
    *(a2 + 8) = v18;
    *(a2 + 16) = 0;
    *(a2 + 24) = v22;
    *(a2 + 32) = v25 << 8;
    *(a2 + 40) = result;
    *(a2 + 48) = v28;
  }

  return result;
}

uint64_t WorkoutPropertyDimensions.mask(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[1];
  v42 = *v2;
  v43 = v3;
  v44 = v2[2];
  v45 = *(v2 + 6);
  if (a1)
  {
    v4 = *(a1 + 16);
    v5 = (a1 + 32);
    v6 = v4;
    v7 = (a1 + 32);
    while (1)
    {
      if (!v6)
      {
        v12 = 12;
        goto LABEL_13;
      }

      v9 = *v7;
      if (v9 <= 2 && v9 != 1 && v9 != 2)
      {
        break;
      }

      v8 = sub_1B4D18DCC();

      ++v7;
      --v6;
      if (v8)
      {
        goto LABEL_12;
      }
    }

LABEL_12:
    v12 = v42;
LABEL_13:
    v39 = v12;
    v13 = v4;
    v14 = v5;
    while (1)
    {
      if (!v13)
      {
        v16 = 7;
        goto LABEL_23;
      }

      if (*v14 <= 2u && *v14 && *v14 != 2)
      {
        break;
      }

      v15 = sub_1B4D18DCC();

      ++v14;
      --v13;
      if (v15)
      {
        goto LABEL_22;
      }
    }

LABEL_22:
    v16 = BYTE1(v42);
LABEL_23:
    v38 = v16;
    v17 = v4;
    v18 = v5;
    while (1)
    {
      if (!v17)
      {
        v37 = 0;
        v20 = 1;
        goto LABEL_31;
      }

      if (*v18 == 2)
      {
        break;
      }

      v19 = sub_1B4D18DCC();

      ++v18;
      --v17;
      if (v19)
      {
        goto LABEL_30;
      }
    }

LABEL_30:
    v37 = *(&v42 + 1);
    v20 = v43;
LABEL_31:
    v36 = v20;
    v21 = v4;
    v22 = v5;
    while (1)
    {
      if (!v21)
      {
        v35 = 0;
        v25 = 1;
        goto LABEL_42;
      }

      v24 = *v22;
      if (v24 > 2 && v24 != 4 && v24 != 5)
      {
        break;
      }

      v23 = sub_1B4D18DCC();

      ++v22;
      --v21;
      if (v23)
      {
        goto LABEL_41;
      }
    }

LABEL_41:
    v35 = *(&v43 + 1);
    v25 = v44;
LABEL_42:
    v34 = v25;
    v26 = v4;
    v27 = v5;
    while (1)
    {
      if (!v26)
      {
        v30 = 5;
        goto LABEL_52;
      }

      v29 = *v27;
      if (v29 >= 4 && v29 != 5)
      {
        break;
      }

      v28 = sub_1B4D18DCC();

      ++v27;
      --v26;
      if (v28)
      {
        goto LABEL_50;
      }
    }

LABEL_50:
    v30 = BYTE1(v44);
    while (1)
    {
LABEL_52:
      if (!v4)
      {
        v33 = 0;
        result = 0;
        goto LABEL_58;
      }

      v32 = *v5;
      if (v32 > 4)
      {
        break;
      }

      v31 = sub_1B4D18DCC();

      ++v5;
      --v4;
      if (v31)
      {
        goto LABEL_57;
      }
    }

LABEL_57:
    v33 = *(&v44 + 1);

LABEL_58:
    *a2 = v39;
    *(a2 + 1) = v38;
    *(a2 + 8) = v37;
    *(a2 + 16) = v36;
    *(a2 + 24) = v35;
    *(a2 + 32) = v34;
    *(a2 + 33) = v30;
    *(a2 + 40) = v33;
    *(a2 + 48) = result;
  }

  else
  {
    v10 = v2[1];
    *a2 = *v2;
    *(a2 + 16) = v10;
    *(a2 + 32) = v2[2];
    *(a2 + 48) = *(v2 + 6);
    return sub_1B498B0D4(&v42, v41);
  }

  return result;
}

FitnessIntelligence::WorkoutPropertyDimensionsField_optional __swiftcall WorkoutPropertyDimensionsField.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WorkoutPropertyDimensionsField.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x59664F68746E6F6DLL;
  v3 = 0x7974697669746361;
  v4 = 0x6E6F697461636F6CLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656557664F796164;
  if (v1 != 1)
  {
    v5 = 0x6144664F72756F68;
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

uint64_t sub_1B4B5C7E4()
{
  *v0;
  *v0;
  *v0;
  sub_1B4D1820C();
}

void sub_1B4B5C908(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726165;
  v4 = 0x59664F68746E6F6DLL;
  v5 = 0x7974697669746361;
  v6 = 0xEC00000065707954;
  v7 = 0x6E6F697461636F6CLL;
  v8 = 0xEC00000065707954;
  if (v2 != 4)
  {
    v7 = 0xD000000000000010;
    v8 = 0x80000001B4D48D10;
  }

  if (v2 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x656557664F796164;
  v10 = 0xE90000000000006BLL;
  if (v2 != 1)
  {
    v9 = 0x6144664F72756F68;
    v10 = 0xE900000000000079;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

void WorkoutPropertyDimensions.hourOfDay.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t WorkoutPropertyDimensions.activityType.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t WorkoutPropertyDimensions.sourceIdentifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t WorkoutPropertyDimensions.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  v7 = *(v0 + 48);
  v9 = *(v0 + 40);
  if (*v0 == 12)
  {
    sub_1B4D18EAC();
    if (v1 != 7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B4D18EAC();
    MonthOfYear.rawValue.getter();
    sub_1B4D1820C();

    if (v1 != 7)
    {
LABEL_3:
      sub_1B4D18EAC();
      sub_1B4D1820C();

      if ((v3 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  sub_1B4D18EAC();
  if ((v3 & 1) == 0)
  {
LABEL_4:
    sub_1B4D18EAC();
    MEMORY[0x1B8C7D2C0](v2);
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_1B4D18EAC();
    if (v6 != 5)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  sub_1B4D18EAC();
  if (v5)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_1B4D18EAC();
  MEMORY[0x1B8C7D290](v4);
  if (v6 != 5)
  {
LABEL_6:
    sub_1B4D18EAC();
    sub_1B4D1820C();

    if (!v7)
    {
      return sub_1B4D18EAC();
    }

    goto LABEL_12;
  }

LABEL_11:
  sub_1B4D18EAC();
  if (!v7)
  {
    return sub_1B4D18EAC();
  }

LABEL_12:
  sub_1B4D18EAC();

  return sub_1B4D1820C();
}

uint64_t WorkoutPropertyDimensions.hashValue.getter()
{
  sub_1B4D18E8C();
  WorkoutPropertyDimensions.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B5CDF4()
{
  sub_1B4D18E8C();
  WorkoutPropertyDimensions.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B5CE38()
{
  sub_1B4D18E8C();
  WorkoutPropertyDimensions.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B5CE78(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B4D18DCC() & 1;
  }
}

uint64_t sub_1B4B5CED0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B4D18DCC() & 1;
  }
}

BOOL _s19FitnessIntelligence25WorkoutPropertyDimensionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 1);
  v13 = a2[16];
  v14 = *(a2 + 3);
  v15 = a2[32];
  v16 = a2[33];
  v17 = *(a2 + 5);
  v18 = *(a2 + 6);
  if (*a1 == 12)
  {
    if (v10 != 12)
    {
      return 0;
    }

LABEL_3:
    if (v2 == 7)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (v10 == 12)
  {
    return 0;
  }

  v38 = *(a2 + 3);
  v39 = *(a1 + 8);
  v46 = a2[32];
  v40 = a2[33];
  v41 = *(a1 + 33);
  v42 = *(a2 + 5);
  v43 = *(a1 + 48);
  v48 = *(a2 + 6);
  v19 = MonthOfYear.rawValue.getter();
  v21 = v20;
  if (v19 != MonthOfYear.rawValue.getter() || v21 != v22)
  {
    v31 = sub_1B4D18DCC();

    v9 = v43;
    v18 = v48;
    v17 = v42;
    v16 = v40;
    v7 = v41;
    v14 = v38;
    v3 = v39;
    v15 = v46;
    if ((v31 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_3;
  }

  v9 = v43;
  v18 = v48;
  v17 = v42;
  v16 = v40;
  v7 = v41;
  v14 = v38;
  v3 = v39;
  v15 = v46;
  if (v2 == 7)
  {
LABEL_4:
    if (v11 != 7)
    {
      return 0;
    }

    goto LABEL_12;
  }

LABEL_10:
  if (v11 == 7)
  {
    return 0;
  }

  v23 = v2;
  v24 = v11;
  v49 = v18;
  v25 = v17;
  v26 = v7;
  v45 = v6;
  v44 = v5;
  v27 = v16;
  v28 = v3;
  v47 = v15;
  v29 = v14;
  v30 = sub_1B49767B8(v23, v24);
  v14 = v29;
  v15 = v47;
  v3 = v28;
  v16 = v27;
  v5 = v44;
  v6 = v45;
  v7 = v26;
  v17 = v25;
  v18 = v49;
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  if (v4)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v12)
    {
      v32 = v13;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v14)
    {
      v33 = v15;
    }

    else
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  if (v7 == 5)
  {
    if (v16 != 5)
    {
      return 0;
    }
  }

  else
  {
    if (v16 == 5)
    {
      return 0;
    }

    v34 = v18;
    v35 = v17;
    v36 = sub_1B4976C84(v7, v16);
    v17 = v35;
    v18 = v34;
    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  if (v9)
  {
    return v18 && (v8 == v17 && v9 == v18 || (sub_1B4D18DCC() & 1) != 0);
  }

  return !v18;
}

unint64_t sub_1B4B5D1AC()
{
  result = qword_1EB8AB020;
  if (!qword_1EB8AB020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB020);
  }

  return result;
}

unint64_t sub_1B4B5D200(void *a1)
{
  a1[1] = sub_1B4B5D238();
  a1[2] = sub_1B4B5D1AC();
  result = sub_1B4B5D28C();
  a1[3] = result;
  return result;
}

unint64_t sub_1B4B5D238()
{
  result = qword_1EB8AB028;
  if (!qword_1EB8AB028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB028);
  }

  return result;
}

unint64_t sub_1B4B5D28C()
{
  result = qword_1EB8AB030;
  if (!qword_1EB8AB030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB030);
  }

  return result;
}

unint64_t sub_1B4B5D2E4()
{
  result = qword_1EB8AB038;
  if (!qword_1EB8AB038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AB040, &qword_1B4D32AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB038);
  }

  return result;
}

unint64_t sub_1B4B5D34C()
{
  result = qword_1EB8AB048[0];
  if (!qword_1EB8AB048[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB8AB048);
  }

  return result;
}

unint64_t sub_1B4B5D3A4()
{
  result = qword_1EDC36F58;
  if (!qword_1EDC36F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC36F58);
  }

  return result;
}

unint64_t sub_1B4B5D3F8(uint64_t a1)
{
  *(a1 + 8) = sub_1B4B5D428();
  result = sub_1B4B5D47C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4B5D428()
{
  result = qword_1EDC38CE0;
  if (!qword_1EDC38CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CE0);
  }

  return result;
}

unint64_t sub_1B4B5D47C()
{
  result = qword_1EDC38CF8[0];
  if (!qword_1EDC38CF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC38CF8);
  }

  return result;
}

unint64_t sub_1B4B5D4D4()
{
  result = qword_1EDC38CF0;
  if (!qword_1EDC38CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CF0);
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

uint64_t sub_1B4B5D554(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B4B5D5B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t MaxPropertyValue.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1B4D1746C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t MaxPropertyValue.identifier.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t MaxPropertyValue.init(value:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = [swift_getObjCClassFromMetadata() baseUnit];
  v9 = sub_1B4D1746C();
  sub_1B4D1745C();

  (*(*(v9 - 8) + 8))(a1, v9);
  result = type metadata accessor for MaxPropertyValue();
  v11 = (a4 + *(result + 28));
  *v11 = a2;
  v11[1] = a3;
  return result;
}

uint64_t static MaxPropertyValue.add(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B4D1746C();
  swift_getWitnessTable();
  v6 = sub_1B4D1810C();
  v7 = type metadata accessor for MaxPropertyValue();
  if (v6)
  {
    v8 = a1;
  }

  else
  {
    v8 = a2;
  }

  return (*(*(v7 - 8) + 16))(a3, v8, v7);
}

uint64_t static MaxPropertyValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1B4D1746C();
  swift_getWitnessTable();
  if ((sub_1B4D1816C() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MaxPropertyValue() + 28);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_1B4D18DCC();
}

uint64_t MaxPropertyValue.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_1B4D1746C();
  swift_getWitnessTable();
  sub_1B4D1808C();
  v5 = (v2 + *(a2 + 28));
  v6 = *v5;
  v7 = v5[1];

  return sub_1B4D1820C();
}

uint64_t MaxPropertyValue.hashValue.getter(uint64_t a1)
{
  sub_1B4D18E8C();
  MaxPropertyValue.hash(into:)(v3, a1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B5DA40(uint64_t a1, uint64_t a2)
{
  sub_1B4D18E8C();
  MaxPropertyValue.hash(into:)(v4, a2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B5DA84(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4B5DAC0(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4B5DB44(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1B4D1746C();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t WorkoutAwardsFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 15;
  if (v2 < 0xF)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t WorkoutAwardsFact.TemplateString.rawValue.getter()
{
  result = 0xD00000000000008BLL;
  switch(*v0)
  {
    case 1:
    case 0xB:
      result = 0xD000000000000055;
      break;
    case 2:
      result = 0xD00000000000006FLL;
      break;
    case 3:
      result = 0xD0000000000000A0;
      break;
    case 4:
      result = 0xD000000000000063;
      break;
    case 5:
      result = 0xD000000000000084;
      break;
    case 6:
      result = 0xD000000000000040;
      break;
    case 7:
      result = 0xD000000000000038;
      break;
    case 8:
      result = 0xD000000000000066;
      break;
    case 9:
      result = 0xD000000000000058;
      break;
    case 0xA:
    case 0xC:
      result = 0xD000000000000075;
      break;
    case 0xD:
      result = 0xD00000000000005ALL;
      break;
    case 0xE:
      result = 0xD00000000000006CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B4B5DDC4(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = WorkoutAwardsFact.TemplateString.rawValue.getter();
  v4 = v3;
  if (v2 == WorkoutAwardsFact.TemplateString.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B4D18DCC();
  }

  return v7 & 1;
}

uint64_t sub_1B4B5DE60()
{
  v1 = *v0;
  sub_1B4D18E8C();
  WorkoutAwardsFact.TemplateString.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B5DEC8()
{
  v2 = *v0;
  WorkoutAwardsFact.TemplateString.rawValue.getter();
  sub_1B4D1820C();
}

uint64_t sub_1B4B5DF2C()
{
  v1 = *v0;
  sub_1B4D18E8C();
  WorkoutAwardsFact.TemplateString.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B5DF90@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return WorkoutAwardsFact.TemplateString.init(rawValue:)(a1);
}

unint64_t sub_1B4B5DF9C@<X0>(unint64_t *a1@<X8>)
{
  result = WorkoutAwardsFact.TemplateString.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t WorkoutAwardsFact.placeholders()()
{
  v1 = type metadata accessor for WorkoutAwardsFact(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D32CF0;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for WorkoutAwardsFact);
  v26 = 0xD000000000000015;
  *(v4 + 32) = 0xD000000000000015;
  *(v4 + 40) = 0x80000001B4D622C0;
  *(v4 + 48) = sub_1B4B5E8FC;
  *(v4 + 56) = v6;
  *(v4 + 64) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v7 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v5, type metadata accessor for WorkoutAwardsFact);
  strcpy((v4 + 80), "energy_units");
  *(v4 + 93) = 0;
  *(v4 + 94) = -5120;
  *(v4 + 96) = sub_1B4B5E914;
  *(v4 + 104) = v7;
  *(v4 + 112) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v8 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v5, type metadata accessor for WorkoutAwardsFact);
  strcpy((v4 + 128), "activity_type");
  *(v4 + 142) = -4864;
  *(v4 + 144) = sub_1B4B5EB38;
  *(v4 + 152) = v8;
  *(v4 + 160) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v9 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 176) = 0xD000000000000017;
  *(v4 + 184) = 0x80000001B4D622E0;
  *(v4 + 192) = sub_1B4B5EDB8;
  *(v4 + 200) = v9;
  *(v4 + 208) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v10 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 224) = 0xD000000000000011;
  *(v4 + 232) = 0x80000001B4D62300;
  *(v4 + 240) = sub_1B4B5EED4;
  *(v4 + 248) = v10;
  *(v4 + 256) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v11 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v5, type metadata accessor for WorkoutAwardsFact);
  v25 = 0xD000000000000018;
  *(v4 + 272) = 0xD000000000000018;
  *(v4 + 280) = 0x80000001B4D62320;
  *(v4 + 288) = sub_1B4B5F044;
  *(v4 + 296) = v11;
  *(v4 + 304) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v12 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 320) = 0xD000000000000012;
  *(v4 + 328) = 0x80000001B4D62340;
  *(v4 + 336) = sub_1B4B5F334;
  *(v4 + 344) = v12;
  *(v4 + 352) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v13 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 368) = 0xD000000000000012;
  *(v4 + 376) = 0x80000001B4D62360;
  *(v4 + 384) = sub_1B4B5F53C;
  *(v4 + 392) = v13;
  *(v4 + 400) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v14 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 416) = v25;
  *(v4 + 424) = 0x80000001B4D62380;
  *(v4 + 432) = sub_1B4B5F7AC;
  *(v4 + 440) = v14;
  *(v4 + 448) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v15 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v5, type metadata accessor for WorkoutAwardsFact);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1B4B5F96C;
  *(v16 + 24) = v15;
  strcpy((v4 + 464), "formatted_week");
  *(v4 + 479) = -18;
  *(v4 + 480) = sub_1B4AF87E4;
  *(v4 + 488) = v16;
  *(v4 + 496) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v17 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 512) = 0x7079745F676E6972;
  *(v4 + 520) = 0xE900000000000065;
  *(v4 + 528) = sub_1B4B5FCA4;
  *(v4 + 536) = v17;
  *(v4 + 544) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v18 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 560) = 0xD000000000000013;
  *(v4 + 568) = 0x80000001B4D623A0;
  *(v4 + 576) = sub_1B4B5FCBC;
  *(v4 + 584) = v18;
  *(v4 + 592) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v19 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 608) = 0xD000000000000014;
  *(v4 + 616) = 0x80000001B4D623C0;
  *(v4 + 624) = sub_1B4B5FD38;
  *(v4 + 632) = v19;
  *(v4 + 640) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v20 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 656) = 0xD00000000000001DLL;
  *(v4 + 664) = 0x80000001B4D623E0;
  *(v4 + 672) = sub_1B4B603D8;
  *(v4 + 680) = v20;
  *(v4 + 688) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v21 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 704) = v26;
  *(v4 + 712) = 0x80000001B4D62400;
  *(v4 + 720) = sub_1B4B606B4;
  *(v4 + 728) = v21;
  *(v4 + 736) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v22 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 752) = 0xD000000000000019;
  *(v4 + 760) = 0x80000001B4D62420;
  *(v4 + 768) = sub_1B4B607D0;
  *(v4 + 776) = v22;
  *(v4 + 784) = 0u;
  sub_1B4B61C64(v0, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutAwardsFact);
  v23 = swift_allocObject();
  sub_1B4B61320(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v5, type metadata accessor for WorkoutAwardsFact);
  *(v4 + 800) = 0xD00000000000001ALL;
  *(v4 + 808) = 0x80000001B4D62440;
  *(v4 + 816) = sub_1B4B60C90;
  *(v4 + 824) = v23;
  *(v4 + 832) = 0u;
  return v4;
}

id sub_1B4B5E940(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v7 + 24), v6, type metadata accessor for WorkoutAwardsFact.AwardType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v9 = *v6;
      v10 = &qword_1EB8A8E88;
      v11 = &unk_1B4D25A30;
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v9 = *v6;
      goto LABEL_13;
    }

LABEL_8:
    sub_1B4AF3D58(v6, type metadata accessor for WorkoutAwardsFact.AwardType);
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v9 = *v6;
      v10 = &qword_1EB8A8E90;
      v11 = &unk_1B4D2C9E0;
LABEL_11:
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v10, v11) + 48);
      v14 = &qword_1EB8A6830;
      v15 = &unk_1B4D1AB40;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v9 = *v6;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EA8, &unk_1B4D25A50) + 48);
  v14 = &qword_1EB8A6868;
  v15 = &unk_1B4D1AB80;
LABEL_12:
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  (*(*(v16 - 8) + 8))(v6 + v13, v16);
LABEL_13:
  [v9 effectiveTypeIdentifier];

  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v18 = result;
    v12 = sub_1B4D1818C();

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4B5EB50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v16 + 24), v7, type metadata accessor for WorkoutAwardsFact.AwardType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v18 = &qword_1EB8A8E98;
    v19 = &unk_1B4D25A40;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1B4AF3D58(v7, type metadata accessor for WorkoutAwardsFact.AwardType);
      return 0;
    }

    v18 = &qword_1EB8A8EA8;
    v19 = &unk_1B4D25A50;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  (*(v9 + 32))(v15, v7 + *(v20 + 48), v8);
  v21 = *(a1 + 16);
  FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v22);
  v24 = v23;
  sub_1B4D1745C();
  v25 = sub_1B4D12160();
  v26 = sub_1B4D12A28();

  v27 = *(v9 + 8);
  v27(v12, v8);
  v27(v15, v8);
  return v26;
}

uint64_t sub_1B4B5EDD0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v7 + 24), v6, type metadata accessor for WorkoutAwardsFact.AwardType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9[1] = *v6;
    return sub_1B4D18D5C();
  }

  else
  {
    sub_1B4AF3D58(v6, type metadata accessor for WorkoutAwardsFact.AwardType);
    return 0;
  }
}

uint64_t sub_1B4B5EEEC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v7 + 24), v6, type metadata accessor for WorkoutAwardsFact.AwardType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v8 = *v6;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EA0, &unk_1B4D2C9F0) + 48);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    (*(*(v10 - 8) + 8))(&v6[v9], v10);
    result = qword_1B4D32E50[v8];
    v12 = qword_1B4D32E70[v8];
  }

  else
  {
    sub_1B4AF3D58(v6, type metadata accessor for WorkoutAwardsFact.AwardType);
    return 0;
  }

  return result;
}

uint64_t sub_1B4B5F05C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v12 + 24), v6, type metadata accessor for WorkoutAwardsFact.AwardType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EA0, &unk_1B4D2C9F0);
    (*(v8 + 32))(v11, &v6[*(v13 + 48)], v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    v14 = *(sub_1B4D18F8C() - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v18 = sub_1B4BCA7BC(v17);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v19 = sub_1B4D15F5C(v11, v18);

    (*(v8 + 8))(v11, v7);
    return v19;
  }

  else
  {
    sub_1B4AF3D58(v6, type metadata accessor for WorkoutAwardsFact.AwardType);
    return 0;
  }
}

uint64_t sub_1B4B5F34C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v12 + 24), v6, type metadata accessor for WorkoutAwardsFact.AwardType);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v13 = *v6;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E90, &unk_1B4D2C9E0);
    (*(v8 + 32))(v11, v6 + *(v14 + 48), v7);
    v15 = sub_1B4D133E8(v11, v13, 0, 1);

    (*(v8 + 8))(v11, v7);
    return v15;
  }

  else
  {
    sub_1B4AF3D58(v6, type metadata accessor for WorkoutAwardsFact.AwardType);
    return 0;
  }
}

uint64_t sub_1B4B5F554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v16 + 24), v7, type metadata accessor for WorkoutAwardsFact.AwardType);
  if (swift_getEnumCaseMultiPayload() == 5)
  {

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E88, &unk_1B4D25A30);
    (*(v9 + 32))(v15, v7 + *(v17 + 48), v8);
    v18 = *(a1 + 16);
    FIUnitManager.userMeasurementUnitForElevation()(v19);
    v21 = v20;
    sub_1B4D1745C();
    v22 = sub_1B4D12160();
    sub_1B499221C();
    v23 = sub_1B4D1878C();

    v24 = *(v9 + 8);
    v24(v12, v8);
    v24(v15, v8);
    return v23;
  }

  else
  {
    sub_1B4AF3D58(v7, type metadata accessor for WorkoutAwardsFact.AwardType);
    return 0;
  }
}

uint64_t sub_1B4B5F7C4()
{
  v0 = sub_1B4D1794C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4D1796C();
  __swift_project_value_buffer(v5, qword_1EDC3CE48);
  v6 = *(type metadata accessor for WorkoutAwardsFact(0) + 20);
  (*(v1 + 104))(v4, *MEMORY[0x1E6969A10], v0);
  v7 = sub_1B4D1792C();
  (*(v1 + 8))(v4, v0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  if (v7)
  {
    v8 = 1936287828;
  }

  else
  {
    v8 = 1953718604;
  }

  MEMORY[0x1B8C7C620](v8, 0xE400000000000000);

  MEMORY[0x1B8C7C620](0x6B65657720, 0xE500000000000000);
  return v10[0];
}

uint64_t sub_1B4B5F984(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WorkoutAwardsFact.RingValue(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v14 + 24), v6, type metadata accessor for WorkoutAwardsFact.AwardType);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1B4B61320(v6, v13, type metadata accessor for WorkoutAwardsFact.RingValue);
    sub_1B4B61C64(v13, v10, type metadata accessor for WorkoutAwardsFact.RingValue);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1B4AF3D58(v13, type metadata accessor for WorkoutAwardsFact.RingValue);
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
        (*(*(v19 - 8) + 8))(v10, v19);
        return 0x6573696372657845;
      }

      else
      {
        sub_1B4AF3D58(v13, type metadata accessor for WorkoutAwardsFact.RingValue);
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
        (*(*(v21 - 8) + 8))(v10, v21);
        return 0x646E617453;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v16 = &qword_1EB8A6850;
        v17 = &unk_1B4D1BC10;
      }

      else
      {
        v16 = &qword_1EB8A6868;
        v17 = &unk_1B4D1AB80;
      }

      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
      (*(*(v20 - 8) + 8))(v10, v20);
      sub_1B4AF3D58(v13, type metadata accessor for WorkoutAwardsFact.RingValue);
      return 1702260557;
    }
  }

  else
  {
    sub_1B4AF3D58(v6, type metadata accessor for WorkoutAwardsFact.AwardType);
    return 0;
  }
}

uint64_t sub_1B4B5FD38(uint64_t a1)
{
  v3 = *(type metadata accessor for WorkoutAwardsFact(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_1B4B5FD9C(a1);
}

uint64_t sub_1B4B5FD9C(uint64_t a1)
{
  v45 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v46 = *(v2 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - v11;
  v13 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WorkoutAwardsFact.RingValue(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  v24 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(v1 + *(v24 + 24), v16, type metadata accessor for WorkoutAwardsFact.AwardType);
  if (swift_getEnumCaseMultiPayload() - 7 > 1)
  {
    v35 = type metadata accessor for WorkoutAwardsFact.AwardType;
    v36 = v16;
  }

  else
  {
    sub_1B4B61320(v16, v23, type metadata accessor for WorkoutAwardsFact.RingValue);
    sub_1B4B61320(v23, v20, type metadata accessor for WorkoutAwardsFact.RingValue);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 1) < 2)
    {
      v27 = v47;
      v26 = v48;
      (*(v47 + 32))(v12, v20, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
      v28 = *(sub_1B4D18F8C() - 8);
      v29 = *(v28 + 72);
      v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1B4D1B2D0;
      sub_1B4D18F4C();
      sub_1B4D18F5C();
      sub_1B4D18F6C();
      sub_1B4D18F7C();
      v32 = sub_1B4BCA7BC(v31);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v33 = sub_1B4D15F5C(v12, v32);

      (*(v27 + 8))(v12, v26);
      return v33;
    }

    if (!EnumCaseMultiPayload)
    {
      v37 = v46;
      (*(v46 + 32))(v8, v20, v2);
      v38 = *(v45 + 16);
      FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v39);
      v41 = v40;
      sub_1B4D1745C();
      v42 = sub_1B4D12160();
      v43 = sub_1B4D12A28();

      v44 = *(v37 + 8);
      v44(v5, v2);
      v44(v8, v2);
      return v43;
    }

    v35 = type metadata accessor for WorkoutAwardsFact.RingValue;
    v36 = v20;
  }

  sub_1B4AF3D58(v36, v35);
  return 0;
}

uint64_t sub_1B4B60288(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v7 + 24), v6, type metadata accessor for WorkoutAwardsFact.AwardType);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v8 = *(v6 + 1);
    v9 = sub_1B4D125A4();
    v10 = sub_1B4D1863C();
    v11 = [v9 stringFromNumber_];

    if (v11)
    {
      v12 = sub_1B4D1818C();

      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B4AF3D58(v6, type metadata accessor for WorkoutAwardsFact.AwardType);
    return 0;
  }
}

unint64_t sub_1B4B603F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v7 + 24), v6, type metadata accessor for WorkoutAwardsFact.AwardType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 13 || EnumCaseMultiPayload == 10)
  {
    v9 = *v6;
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      sub_1B4AF3D58(v6, type metadata accessor for WorkoutAwardsFact.AwardType);
      return 0;
    }

    v9 = *v6;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E98, &unk_1B4D25A40) + 48);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    (*(*(v11 - 8) + 8))(&v6[v10], v11);
  }

  result = 1701998403;
  switch(v9)
  {
    case 1:
      return result;
    case 2:
      result = 0x676E696C637943;
      break;
    case 3:
      result = 0x65636E6144;
      break;
    case 4:
    case 5:
      result = 0x206F7420656D6954;
      break;
    case 6:
      result = 1414089032;
      break;
    case 7:
      result = 0x69786F626B63694BLL;
      break;
    case 8:
      result = 0x697461746964654DLL;
      break;
    case 9:
      result = 0x736574616C6950;
      break;
    case 10:
      result = 0x676E69776F52;
      break;
    case 11:
      result = 0x6874676E65727453;
      break;
    case 12:
      result = 0x6C696D6461657254;
      break;
    case 13:
      result = 1634168665;
      break;
    case 14:
      result = 0x726568744FLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1B4B606CC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v7 + 24), v6, type metadata accessor for WorkoutAwardsFact.AwardType);
  if (swift_getEnumCaseMultiPayload() == 11)
  {
    v9[1] = *v6;
    return sub_1B4D18D5C();
  }

  else
  {
    sub_1B4AF3D58(v6, type metadata accessor for WorkoutAwardsFact.AwardType);
    return 0;
  }
}

uint64_t sub_1B4B607E8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(a2 + *(v7 + 24), v6, type metadata accessor for WorkoutAwardsFact.AwardType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 12)
  {
    if (EnumCaseMultiPayload != 13)
    {
      sub_1B4AF3D58(v6, type metadata accessor for WorkoutAwardsFact.AwardType);
      return 0;
    }

    ++v6;
  }

  v9 = *v6;
  v10 = sub_1B4D125A4();
  v11 = sub_1B4D1863C();
  v12 = [v10 stringFromNumber_];

  if (!v12)
  {
    return 0;
  }

  v13 = sub_1B4D1818C();

  return v13;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for WorkoutAwardsFact(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_1B4D1777C();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v6(v0 + v3 + v1[5], v5);
  v7 = (v0 + v3 + v1[6]);
  type metadata accessor for WorkoutAwardsFact.AwardType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_31;
        }

        v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EA0, &unk_1B4D2C9F0) + 48);
        v10 = &qword_1EB8A6850;
        v11 = &unk_1B4D1BC10;
        goto LABEL_21;
      }

      v17 = &qword_1EB8A8EA8;
      v18 = &unk_1B4D25A50;
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v17 = &qword_1EB8A8E98;
      v18 = &unk_1B4D25A40;
LABEL_20:
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v17, v18) + 48);
      v10 = &qword_1EB8A6868;
      v11 = &unk_1B4D1AB80;
      goto LABEL_21;
    }

    v12 = &qword_1EB8A8E90;
    v13 = &unk_1B4D2C9E0;
LABEL_18:
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v12, v13) + 48);
    v10 = &qword_1EB8A6830;
    v11 = &unk_1B4D1AB40;
LABEL_21:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    (*(*(v19 - 8) + 8))(v7 + v9, v19);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload != 5)
    {

      goto LABEL_31;
    }

    v12 = &qword_1EB8A8E88;
    v13 = &unk_1B4D25A30;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 7)
  {
    type metadata accessor for WorkoutAwardsFact.RingValue(0);
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }

LABEL_26:
    if (v14 != 2)
    {
      if (v14 != 3)
      {
        goto LABEL_31;
      }

      v15 = &qword_1EB8A6870;
      v16 = &unk_1B4D1C2C0;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload != 8)
  {
    goto LABEL_31;
  }

  type metadata accessor for WorkoutAwardsFact.RingValue(0);
  v14 = swift_getEnumCaseMultiPayload();
  if (v14 > 1)
  {
    goto LABEL_26;
  }

  if (!v14)
  {
LABEL_15:
    v15 = &qword_1EB8A6868;
    v16 = &unk_1B4D1AB80;
LABEL_30:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
    (*(*(v20 - 8) + 8))(v7, v20);
    goto LABEL_31;
  }

LABEL_24:
  if (v14 == 1)
  {
LABEL_29:
    v15 = &qword_1EB8A6850;
    v16 = &unk_1B4D1BC10;
    goto LABEL_30;
  }

LABEL_31:
  v21 = *(v0 + v3 + v1[7] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B4B60CA8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for WorkoutAwardsFact(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t WorkoutAwardsFact.selectTemplate(formatter:)@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for WorkoutAwardsFact(0);
  sub_1B4B61C64(v1 + *(v7 + 24), v6, type metadata accessor for WorkoutAwardsFact.AwardType);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v10 = 1;
      goto LABEL_19;
    case 2:
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EA0, &unk_1B4D2C9F0) + 48);
      *a1 = 2;
      v12 = &qword_1EB8A6850;
      v13 = &unk_1B4D1BC10;
      goto LABEL_15;
    case 3:
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E98, &unk_1B4D25A40) + 48);
      *a1 = 3;
      goto LABEL_10;
    case 4:

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E90, &unk_1B4D2C9E0) + 48);
      v11 = 4;
      goto LABEL_14;
    case 5:

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E88, &unk_1B4D25A30) + 48);
      v11 = 5;
LABEL_14:
      *a1 = v11;
      v12 = &qword_1EB8A6830;
      v13 = &unk_1B4D1AB40;
      goto LABEL_15;
    case 6:
      result = sub_1B4AF3D58(v6, type metadata accessor for WorkoutAwardsFact.AwardType);
      v10 = 6;
      goto LABEL_19;
    case 7:
      v14 = 8;
      goto LABEL_22;
    case 8:
      v14 = 9;
LABEL_22:
      *a1 = v14;
      return sub_1B4AF3D58(v6, type metadata accessor for WorkoutAwardsFact.RingValue);
    case 9:
      v10 = 10;
      goto LABEL_19;
    case 10:
      v10 = 11;
      goto LABEL_19;
    case 11:
      v10 = 12;
      goto LABEL_19;
    case 12:
      v10 = 13;
      goto LABEL_19;
    case 13:
      v10 = 14;
      goto LABEL_19;
    case 14:
      v10 = 7;
LABEL_19:
      *a1 = v10;
      break;
    default:

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EA8, &unk_1B4D25A50) + 48);
      *a1 = 0;
LABEL_10:
      v12 = &qword_1EB8A6868;
      v13 = &unk_1B4D1AB80;
LABEL_15:
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
      result = (*(*(v15 - 8) + 8))(v6 + v9, v15);
      break;
  }

  return result;
}

unint64_t sub_1B4B60FC8()
{
  result = qword_1EB8AB0D0;
  if (!qword_1EB8AB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB0D0);
  }

  return result;
}

unint64_t sub_1B4B61020()
{
  result = qword_1EB8AB0D8;
  if (!qword_1EB8AB0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AB0E0, &qword_1B4D32DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB0D8);
  }

  return result;
}

unint64_t sub_1B4B61088()
{
  result = qword_1EB8AB0E8;
  if (!qword_1EB8AB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB0E8);
  }

  return result;
}

unint64_t sub_1B4B610E0()
{
  result = qword_1EB8AB0F0;
  if (!qword_1EB8AB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB0F0);
  }

  return result;
}

unint64_t sub_1B4B61150(uint64_t a1)
{
  result = sub_1B4B61178();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4B61178()
{
  result = qword_1EB8AB0F8;
  if (!qword_1EB8AB0F8)
  {
    type metadata accessor for WorkoutAwardsFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB0F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FitnessPlusModalityKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FitnessPlusModalityKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B4B61320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B61388()
{
  v41 = sub_1B4D1794C();
  v1 = *(v41 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v41);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v37 - v7;
  v9 = sub_1B4D1777C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v37 - v15;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v17 = sub_1B4D1796C();
  __swift_project_value_buffer(v17, qword_1EDC3CE48);
  v18 = *(type metadata accessor for WorkoutAwardsFact(0) + 20);
  if (sub_1B4D1791C())
  {
    return 0x7961646F54;
  }

  v40 = v13;
  v20 = *MEMORY[0x1E6969A48];
  v21 = v41;
  v37[0] = v1[13];
  v37[1] = v1 + 13;
  (v37[0])(v4, v20, v41);
  sub_1B4D1790C();
  v22 = v1[1];
  v38 = v4;
  v39 = v1 + 1;
  v23 = v21;
  v24 = v22;
  v22(v4, v23);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B497A590(v8);
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
    v25 = sub_1B4D1791C();
    (*(v10 + 8))(v16, v9);
    if (v25)
    {
      return 0x6164726574736559;
    }
  }

  v26 = v40;
  (*(v10 + 16))(v40, v0 + v18, v9);
  DayOfWeek.init(from:)(v26, v44);
  v27 = LOBYTE(v44[0]);
  if (LOBYTE(v44[0]) == 7)
  {
    return 0;
  }

  v28 = 0x7961646E6F6DLL;
  v29 = v38;
  v30 = v41;
  (v37[0])(v38, *MEMORY[0x1E6969A10], v41);
  v31 = sub_1B4D1792C();
  v24(v29, v30);
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  if (v31)
  {
    v32 = 1936287828;
  }

  else
  {
    v32 = 1953718604;
  }

  MEMORY[0x1B8C7C620](v32, 0xE400000000000000);

  MEMORY[0x1B8C7C620](32, 0xE100000000000000);
  if (v27 <= 2)
  {
    if (v27)
    {
      if (v27 == 1)
      {
        v33 = 0xE700000000000000;
        v28 = 0x79616473657574;
      }

      else
      {
        v28 = 0x616473656E646577;
        v33 = 0xE900000000000079;
      }

      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v27 <= 4)
  {
    if (v27 == 3)
    {
      v33 = 0xE800000000000000;
      v28 = 0x7961647372756874;
    }

    else
    {
      v33 = 0xE600000000000000;
      v28 = 0x796164697266;
    }

    goto LABEL_27;
  }

  if (v27 != 5)
  {
    v28 = 0x7961646E7573;
LABEL_26:
    v33 = 0xE600000000000000;
    goto LABEL_27;
  }

  v33 = 0xE800000000000000;
  v28 = 0x7961647275746173;
LABEL_27:
  v42 = v28;
  v43 = v33;
  sub_1B4955758();
  v34 = sub_1B4D1885C();
  v36 = v35;

  MEMORY[0x1B8C7C620](v34, v36);

  return v44[0];
}

uint64_t sub_1B4B61890()
{
  v1 = type metadata accessor for WorkoutAwardsFact.RingValue(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v15 = *(type metadata accessor for WorkoutAwardsFact(0) + 24);
  sub_1B4B61C64(v0 + v15, v14, type metadata accessor for WorkoutAwardsFact.AwardType);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v16 = *v14;
    result = *&aMoveRinexercis[8 * v16];
    v18 = *&aMoveRinexercis[8 * v16 + 32];
  }

  else
  {
    sub_1B4AF3D58(v14, type metadata accessor for WorkoutAwardsFact.AwardType);
    sub_1B4B61C64(v0 + v15, v11, type metadata accessor for WorkoutAwardsFact.AwardType);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B4B61320(v11, v7, type metadata accessor for WorkoutAwardsFact.RingValue);
      sub_1B4B61C64(v7, v4, type metadata accessor for WorkoutAwardsFact.RingValue);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_1B4AF3D58(v7, type metadata accessor for WorkoutAwardsFact.RingValue);
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
          (*(*(v22 - 8) + 8))(v4, v22);
          return 0x6573696372657845;
        }

        else
        {
          sub_1B4AF3D58(v7, type metadata accessor for WorkoutAwardsFact.RingValue);
          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
          (*(*(v24 - 8) + 8))(v4, v24);
          return 0x697220646E617453;
        }
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          v20 = &qword_1EB8A6850;
          v21 = &unk_1B4D1BC10;
        }

        else
        {
          v20 = &qword_1EB8A6868;
          v21 = &unk_1B4D1AB80;
        }

        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
        (*(*(v23 - 8) + 8))(v4, v23);
        sub_1B4AF3D58(v7, type metadata accessor for WorkoutAwardsFact.RingValue);
        return 0x6E69722065766F4DLL;
      }
    }

    else
    {
      sub_1B4AF3D58(v11, type metadata accessor for WorkoutAwardsFact.AwardType);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B4B61C64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t AudioSynthesisVoiceSelection.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    if (!*a1)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
LABEL_12:
      result = sub_1B4B62068(a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
      *a2 = v17;
      a2[1] = v18;
      a2[2] = v19;
      a2[3] = v20;
      return result;
    }

    v13 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
    sub_1B4B5B5BC(a1 + *(v13 + 24), v7);
    v14 = *(v9 + 48);
    if (v14(v7, 1, v8) == 1)
    {
      sub_1B4D17BBC();
      v15 = &v12[*(v8 + 20)];
      *v15 = 0;
      *(v15 + 1) = 0;
      v16 = &v12[*(v8 + 24)];
      *v16 = 0;
      *(v16 + 1) = 0;
      if (v14(v7, 1, v8) != 1)
      {
        sub_1B4B62000(v7);
      }
    }

    else
    {
      sub_1B4B5B68C(v7, v12);
    }

    v21 = &v12[*(v8 + 20)];
    v18 = *(v21 + 1);
    if (v18)
    {
      v22 = &v12[*(v8 + 24)];
      v20 = *(v22 + 1);
      if (v20)
      {
        v17 = *v21;
        v19 = *v22;
        v23 = *(v21 + 1);

        sub_1B4B62068(v12, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
        goto LABEL_12;
      }

      v25 = 1;
    }

    else
    {
      v25 = 0;
    }

    sub_1B498C3D8();
    swift_allocError();
    *v26 = v25;
    swift_willThrow();
    sub_1B4B62068(v12, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  else
  {
    sub_1B4B61FAC();
    swift_allocError();
    swift_willThrow();
  }

  return sub_1B4B62068(a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
}

unint64_t sub_1B4B61FAC()
{
  result = qword_1EB8AB108;
  if (!qword_1EB8AB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB108);
  }

  return result;
}

uint64_t sub_1B4B62000(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4B62068(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AudioSynthesisVoiceSelection.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v2 = *v0;
  v3 = v0[1];
  sub_1B4B626FC(&qword_1EB8A89B8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  return sub_1B4D17DAC();
}

void sub_1B4B62174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v17[1] = v17;
    *a1 = 1;
    *(a1 + 8) = 1;
    MEMORY[0x1EEE9AC00](v13);
    v17[-4] = a2;
    v17[-3] = a3;
    v17[-2] = a4;
    v17[-1] = a5;
    sub_1B4B626FC(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    sub_1B4D17DAC();
    v16 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0) + 24);
    sub_1B4B62000(a1 + v16);
    sub_1B4B5B68C(v15, a1 + v16);
    (*(v11 + 56))(a1 + v16, 0, 1, v10);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 1;
  }
}

_OWORD *sub_1B4B62348(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[1];
  v12[0] = *v1;
  v12[1] = v8;
  v9 = sub_1B4B626A8();
  v10 = v12;
  (*(v9 + 32))(a1, v9);
  if (!v2)
  {
    sub_1B4B626FC(&qword_1EB8A89B8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
    v10 = sub_1B4D17D6C();
    sub_1B4B62068(v7, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  }

  return v10;
}

double sub_1B4B62490@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1B4B28F94(a1, a2, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a3 = v7[0];
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_1B4B624CC()
{
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v2 = *v0;
  v3 = v0[1];
  sub_1B4B626FC(&qword_1EB8A89B8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4B62654()
{
  result = qword_1EB8AB110;
  if (!qword_1EB8AB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB110);
  }

  return result;
}

unint64_t sub_1B4B626A8()
{
  result = qword_1EB8AB118;
  if (!qword_1EB8AB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB118);
  }

  return result;
}

uint64_t sub_1B4B626FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ActivitySharingFriendWorkout.init(_:)@<X0>(uint64_t *a1@<X0>, unsigned int **a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB8, &unk_1B4D20170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  sub_1B4974FBC(a1 + *(v14 + 28), v8, &qword_1EB8A7CB8, &unk_1B4D20170);
  v15 = *(v10 + 48);
  if (v15(v8, 1, v9) == 1)
  {
    *v13 = 0;
    v13[4] = 0;
    *(v13 + 2) = 0;
    v16 = &v13[*(v9 + 28)];
    sub_1B4D17BBC();
    if (v15(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7CB8, &unk_1B4D20170);
    }
  }

  else
  {
    sub_1B4B65778(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
  }

  sub_1B4B29E60();
  v17 = FIWorkoutActivityType.init(_:)(v13);
  if (v2)
  {
    return sub_1B4B65718(a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
  }

  v19 = v17;
  v20 = *a1;
  v21 = type metadata accessor for ActivitySharingFriendWorkout();
  v22 = a2 + *(v21 + 20);
  sub_1B4D176CC();
  v23 = a1[1];
  v24 = a2 + *(v21 + 24);
  sub_1B4D176CC();
  result = sub_1B4B65718(a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
  *a2 = v19;
  return result;
}

uint64_t ActivitySharingFriendWorkout.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  sub_1B4B657FC(&qword_1EB8AA740, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B62A74(char *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *a2;
  sub_1B4B657FC(&qword_1EB8AB158, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
  sub_1B4D17DAC();
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0) + 28);
  sub_1B4975024(&a1[v9], &qword_1EB8A7CB8, &unk_1B4D20170);
  sub_1B4B65778(v8, &a1[v9], type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
  (*(v5 + 56))(&a1[v9], 0, 1, v4);
  v10 = type metadata accessor for ActivitySharingFriendWorkout();
  v11 = a2 + *(v10 + 20);
  sub_1B4D176DC();
  *a1 = v12;
  v13 = a2 + *(v10 + 24);
  result = sub_1B4D176DC();
  *(a1 + 1) = v15;
  return result;
}

uint64_t sub_1B4B62C34(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4B657FC(&qword_1EB8AB150, type metadata accessor for ActivitySharingFriendWorkout);
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4B657FC(&qword_1EB8AA740, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
    v1 = sub_1B4D17D6C();
    sub_1B4B65718(v7, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
  }

  return v1;
}

uint64_t sub_1B4B62DB4()
{
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  sub_1B4B657FC(&qword_1EB8AA740, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
  return sub_1B4D17DAC();
}

unint64_t ActivitySharingFriend.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v137 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v144 = *(v3 - 8);
  v4 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v142 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v143 = &v122 - v7;
  v8 = type metadata accessor for HKActivitySummaryRepresentable();
  v141 = *(v8 - 8);
  v9 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v154 = (&v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB8, &unk_1B4D20170);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v153 = &v122 - v13;
  v152 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v135 = *(v152 - 8);
  v14 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v156 = (&v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v151 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  v145 = *(v151 - 8);
  v16 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v158 = (&v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v157 = &v122 - v19;
  v150 = type metadata accessor for ActivitySharingFriendWorkout();
  v149 = *(v150 - 8);
  v20 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v148 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B4D1777C();
  v138 = *(v22 - 8);
  v23 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v139 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v140 = &v122 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v136 = &v122 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v122 - v32;
  v34 = sub_1B4D177CC();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v122 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v122 - v40;
  v42 = *a1;
  v43 = *(a1 + 8);
  sub_1B4D1778C();
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_1B4975024(v33, &qword_1EB8A6A30, &unk_1B4D1FC00);
    sub_1B49BA334();
    swift_allocError();
    *v44 = 1;
    swift_willThrow();
    return sub_1B4B65718(a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
  }

  v125 = *(v35 + 32);
  v125(v41, v33, v34);
  v45 = *(v35 + 16);
  v131 = v34;
  v45(v38, v41, v34);
  v46 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  v47 = v46[12];
  v48 = (a1 + v46[11]);
  v49 = v48[1];
  v123 = *v48;
  v51 = *(a1 + v47);
  v50 = *(a1 + v47 + 8);
  v124 = v51;
  v122 = v46;
  v52 = (a1 + v46[13]);
  v53 = v52[1];
  v129 = v35;
  v128 = v38;
  v130 = v41;
  v126 = v35 + 32;
  v127 = v50;
  if (v53)
  {
    v54 = *v52;

    sub_1B4D1797C();
  }

  else
  {
    v55 = sub_1B4D179BC();
    (*(*(v55 - 8) + 56))(v140, 1, 1, v55);
  }

  v56 = v49;
  v57 = *(a1 + 16);
  v58 = *(v57 + 16);
  v59 = MEMORY[0x1E69E7CC0];
  v134 = a1;
  v133 = v22;
  v132 = v49;
  if (v58)
  {
    v163 = MEMORY[0x1E69E7CC0];
    sub_1B4BCEEDC(0, v58, 0);
    v60 = v163;
    v147 = *MEMORY[0x1E699C9A0];
    v61 = v145;
    v62 = v57 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6890, &qword_1B4D1ABA8);
    v145 = *(v61 + 72);
    v63 = (v135 + 48);
    while (1)
    {
      v64 = v157;
      sub_1B4B656B0(v62, v157, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
      v65 = v64;
      v66 = v158;
      sub_1B4B656B0(v65, v158, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
      v67 = v66 + *(v151 + 28);
      v68 = v153;
      sub_1B4974FBC(v67, v153, &qword_1EB8A7CB8, &unk_1B4D20170);
      v69 = *v63;
      v70 = v152;
      if ((*v63)(v68, 1, v152) == 1)
      {
        v71 = v156;
        *v156 = 0;
        *(v71 + 4) = 0;
        v71[2] = 0;
        v72 = v71 + *(v70 + 28);
        sub_1B4D17BBC();
        result = (v69)(v68, 1, v70);
        if (result != 1)
        {
          result = sub_1B4975024(v68, &qword_1EB8A7CB8, &unk_1B4D20170);
        }
      }

      else
      {
        v71 = v156;
        result = sub_1B4B65778(v68, v156, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
      }

      v74 = *v71;
      if ((v74 & 0x80000000) != 0)
      {
        break;
      }

      v75 = *(v71 + 4);
      v162[0] = sub_1B4D1818C();
      v162[1] = v76;
      v77 = v71[2];
      v162[5] = MEMORY[0x1E69E6530];
      v162[2] = v77;
      v78 = sub_1B4D18AEC();
      sub_1B4974FBC(v162, &v159, &qword_1EB8AB120, &qword_1B4D32FD0);
      v79 = v159;
      v80 = v160;
      result = sub_1B49E9EC4(v159, v160);
      if (v81)
      {
        goto LABEL_34;
      }

      v78[(result >> 6) + 8] |= 1 << result;
      v82 = (v78[6] + 16 * result);
      *v82 = v79;
      v82[1] = v80;
      result = sub_1B498B060(&v161, (v78[7] + 32 * result));
      v83 = v78[2];
      v84 = __OFADD__(v83, 1);
      v85 = v83 + 1;
      if (v84)
      {
        goto LABEL_35;
      }

      v78[2] = v85;
      v86 = objc_allocWithZone(MEMORY[0x1E699C9F0]);
      sub_1B4975024(v162, &qword_1EB8AB120, &qword_1B4D32FD0);
      v87 = sub_1B4D17FAC();

      v88 = [v86 initWithActivityTypeIdentifier:v74 isIndoor:v75 metadata:v87];

      sub_1B4B65718(v156, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
      v89 = v158;
      v90 = *v158;
      v91 = v150;
      v92 = v148;
      v93 = &v148[*(v150 + 20)];
      sub_1B4D176CC();
      v94 = v89[1];
      v95 = v92 + *(v91 + 24);
      sub_1B4D176CC();
      sub_1B4B65718(v89, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
      sub_1B4B65718(v157, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
      *v92 = v88;
      v163 = v60;
      v97 = *(v60 + 16);
      v96 = *(v60 + 24);
      if (v97 >= v96 >> 1)
      {
        sub_1B4BCEEDC(v96 > 1, v97 + 1, 1);
        v60 = v163;
      }

      *(v60 + 16) = v97 + 1;
      sub_1B4B65778(v92, v60 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v97, type metadata accessor for ActivitySharingFriendWorkout);
      v62 += v145;
      if (!--v58)
      {
        v59 = v60;
        a1 = v134;
        v22 = v133;
        v56 = v132;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_19:
    v98 = *(a1 + 24);
    sub_1B4D176CC();
    LODWORD(v157) = *(a1 + 32);
    LODWORD(v158) = *(a1 + 33);
    v99 = *(a1 + 40);
    v100 = *(v99 + 16);
    v101 = MEMORY[0x1E69E7CC0];
    if (!v100)
    {
LABEL_28:
      v111 = (a1 + v122[14]);
      v112 = v136;
      v113 = v129;
      if (v111[1])
      {
        v114 = *v111;
        v115 = v111[1];

        sub_1B4D1778C();

        v116 = v131;
        (*(v113 + 8))(v130, v131);
      }

      else
      {
        v116 = v131;
        (*(v129 + 8))(v130, v131);
        (*(v113 + 56))(v112, 1, 1, v116);
      }

      v117 = v137;
      v125(v137, v128, v116);
      v118 = type metadata accessor for ActivitySharingFriend();
      v119 = &v117[v118[5]];
      *v119 = v123;
      *(v119 + 1) = v56;
      v120 = &v117[v118[6]];
      v121 = v127;
      *v120 = v124;
      *(v120 + 1) = v121;
      sub_1B498B270(v140, &v117[v118[7]], &qword_1EB8A6C20, &unk_1B4D1FBF0);
      *&v117[v118[8]] = v59;
      (*(v138 + 32))(&v117[v118[9]], v139, v22);
      v117[v118[10]] = v157;
      v117[v118[11]] = v158;
      *&v117[v118[12]] = v101;
      sub_1B498B270(v112, &v117[v118[13]], &qword_1EB8A6A30, &unk_1B4D1FC00);
      return sub_1B4B65718(a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
    }

    v159 = MEMORY[0x1E69E7CC0];
    result = sub_1B4BCED7C(0, v100, 0);
    v102 = 0;
    v101 = v159;
    v103 = v99 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
    while (v102 < *(v99 + 16))
    {
      v104 = v143;
      sub_1B4B656B0(v103 + *(v144 + 72) * v102, v143, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      v105 = v142;
      sub_1B4B656B0(v104, v142, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      v106 = v155;
      HKActivitySummaryRepresentable.init(_:)(v105, v154);
      v155 = v106;
      if (v106)
      {

        sub_1B4B65718(v104, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
        (*(v138 + 8))(v139, v133);
        sub_1B4975024(v140, &qword_1EB8A6C20, &unk_1B4D1FBF0);
        v109 = *(v129 + 8);
        v110 = v131;
        v109(v128, v131);
        v109(v130, v110);

        a1 = v134;
        return sub_1B4B65718(a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
      }

      sub_1B4B65718(v104, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      v159 = v101;
      v108 = *(v101 + 16);
      v107 = *(v101 + 24);
      if (v108 >= v107 >> 1)
      {
        sub_1B4BCED7C(v107 > 1, v108 + 1, 1);
        v101 = v159;
      }

      ++v102;
      *(v101 + 16) = v108 + 1;
      result = sub_1B4B65778(v154, v101 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v108, type metadata accessor for HKActivitySummaryRepresentable);
      if (v100 == v102)
      {
        a1 = v134;
        v22 = v133;
        v56 = v132;
        goto LABEL_28;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ActivitySharingFriend.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  sub_1B4B657FC(&qword_1EB8AA738, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B63EE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for HKActivitySummaryRepresentable();
  v90 = *(v6 - 8);
  v7 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v104 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v102 = *(v9 - 8);
  v103 = v9;
  v10 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v93 = &v88 - v14;
  v94 = sub_1B4D177CC();
  v92 = *(v94 - 8);
  v15 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v89 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ActivitySharingFriendWorkout();
  v101 = *(v17 - 8);
  v18 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  v99 = *(v21 - 8);
  v100 = v21;
  v22 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v105 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v88 - v26;
  v28 = sub_1B4D179BC();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v98 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1B4D1779C();
  v34 = v33;
  v35 = *(a1 + 8);

  *a1 = v32;
  *(a1 + 8) = v34;
  v36 = type metadata accessor for ActivitySharingFriend();
  v96 = a2;
  v97 = v36;
  v37 = (a2 + *(v36 + 20));
  v38 = v37[1];
  if (v38)
  {
    v39 = *v37;
    v40 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 44));
    v41 = v40[1];

    *v40 = v39;
    v40[1] = v38;
    a2 = v96;
  }

  v42 = (a2 + v97[6]);
  v43 = v42[1];
  if (v43)
  {
    v44 = *v42;
    v45 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 48));
    v46 = v45[1];

    *v45 = v44;
    v45[1] = v43;
    a2 = v96;
  }

  sub_1B4974FBC(a2 + v97[7], v27, &qword_1EB8A6C20, &unk_1B4D1FBF0);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_1B4975024(v27, &qword_1EB8A6C20, &unk_1B4D1FBF0);
  }

  else
  {
    v47 = v98;
    (*(v29 + 32))(v98, v27, v28);
    v48 = sub_1B4D1798C();
    v50 = v49;
    (*(v29 + 8))(v47, v28);
    v51 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 52));
    v52 = v51[1];

    *v51 = v48;
    v51[1] = v50;
  }

  v53 = *(a2 + v97[8]);
  v54 = *(v53 + 16);
  v55 = MEMORY[0x1E69E7CC0];
  v95 = a1;
  if (v54)
  {
    v106 = MEMORY[0x1E69E7CC0];
    result = sub_1B4BCF67C(0, v54, 0);
    v57 = 0;
    v55 = v106;
    v98 = (v53 + ((*(v101 + 80) + 32) & ~*(v101 + 80)));
    while (v57 < *(v53 + 16))
    {
      v58 = sub_1B4B656B0(&v98[*(v101 + 72) * v57], v20, type metadata accessor for ActivitySharingFriendWorkout);
      MEMORY[0x1EEE9AC00](v58);
      *(&v88 - 2) = v20;
      sub_1B4B657FC(&qword_1EB8AA740, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
      sub_1B4D17DAC();
      if (v3)
      {
        sub_1B4B65718(v20, type metadata accessor for ActivitySharingFriendWorkout);
      }

      v59 = v53;
      v60 = v54;
      sub_1B4B65718(v20, type metadata accessor for ActivitySharingFriendWorkout);
      v106 = v55;
      v62 = *(v55 + 16);
      v61 = *(v55 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1B4BCF67C(v61 > 1, v62 + 1, 1);
        v55 = v106;
      }

      ++v57;
      *(v55 + 16) = v62 + 1;
      result = sub_1B4B65778(v105, v55 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v62, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
      v54 = v60;
      v63 = v60 == v57;
      v53 = v59;
      if (v63)
      {
        a1 = v95;
        a2 = v96;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    v64 = *(a1 + 16);

    *(a1 + 16) = v55;
    v65 = v97;
    v66 = a2 + v97[9];
    sub_1B4D176DC();
    *(a1 + 24) = v67;
    *(a1 + 32) = *(a2 + v65[10]);
    *(a1 + 33) = *(a2 + v65[11]);
    v68 = *(a2 + v65[12]);
    v69 = *(v68 + 16);
    v70 = MEMORY[0x1E69E7CC0];
    if (v69)
    {
      v106 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF65C(0, v69, 0);
      v70 = v106;
      v71 = v91;
      v72 = v68 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
      v73 = *(v90 + 72);
      do
      {
        v74 = v104;
        v75 = sub_1B4B656B0(v72, v104, type metadata accessor for HKActivitySummaryRepresentable);
        MEMORY[0x1EEE9AC00](v75);
        *(&v88 - 2) = v74;
        sub_1B4B657FC(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
        sub_1B4D17DAC();
        sub_1B4B65718(v74, type metadata accessor for HKActivitySummaryRepresentable);
        v106 = v70;
        v77 = *(v70 + 16);
        v76 = *(v70 + 24);
        if (v77 >= v76 >> 1)
        {
          sub_1B4BCF65C(v76 > 1, v77 + 1, 1);
          v70 = v106;
        }

        *(v70 + 16) = v77 + 1;
        sub_1B4B65778(v71, v70 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v77, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
        v72 += v73;
        --v69;
      }

      while (v69);
      a1 = v95;
      a2 = v96;
    }

    v78 = *(a1 + 40);

    *(a1 + 40) = v70;
    v79 = v93;
    sub_1B4974FBC(a2 + v97[13], v93, &qword_1EB8A6A30, &unk_1B4D1FC00);
    v80 = v92;
    v81 = v94;
    if ((*(v92 + 48))(v79, 1, v94) == 1)
    {
      return sub_1B4975024(v79, &qword_1EB8A6A30, &unk_1B4D1FC00);
    }

    else
    {
      v82 = v89;
      (*(v80 + 32))(v89, v79, v81);
      v83 = sub_1B4D1779C();
      v85 = v84;
      (*(v80 + 8))(v82, v81);
      v86 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 56));
      v87 = v86[1];

      *v86 = v83;
      v86[1] = v85;
    }
  }

  return result;
}

uint64_t sub_1B4B648E0(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4B657FC(&qword_1EB8AB148, type metadata accessor for ActivitySharingFriend);
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4B657FC(&qword_1EB8AA738, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
    v1 = sub_1B4D17D6C();
    sub_1B4B65718(v7, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
  }

  return v1;
}

uint64_t sub_1B4B64A60()
{
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  sub_1B4B657FC(&qword_1EB8AA738, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
  return sub_1B4D17DAC();
}

uint64_t ActivitySharingContext.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for ActivitySharingFriend();
  v29 = *(v12 - 8);
  v13 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *(*a1 + 16);
  if (v17)
  {
    v25 = a2;
    v26 = a1;
    v31 = MEMORY[0x1E69E7CC0];
    v27 = v17;
    result = sub_1B4BCED3C(0, v17, 0);
    v19 = 0;
    v20 = v31;
    v28 = v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    while (v19 < *(v16 + 16))
    {
      sub_1B4B656B0(v28 + *(v6 + 72) * v19, v11, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
      v21 = v30;
      sub_1B4B656B0(v11, v30, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
      ActivitySharingFriend.init(_:)(v21, v15);
      if (v2)
      {
        sub_1B4B65718(v11, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
        sub_1B4B65718(v26, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
      }

      v22 = v6;
      sub_1B4B65718(v11, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
      v31 = v20;
      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B4BCED3C(v23 > 1, v24 + 1, 1);
        v20 = v31;
      }

      ++v19;
      *(v20 + 16) = v24 + 1;
      result = sub_1B4B65778(v15, v20 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24, type metadata accessor for ActivitySharingFriend);
      v6 = v22;
      if (v27 == v19)
      {
        result = sub_1B4B65718(v26, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
        *v25 = v20;
        return result;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_1B4B65718(a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
    *a2 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t ActivitySharingContext.protobuf()()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  sub_1B4B657FC(&qword_1EB8AA730, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B64F10(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for ActivitySharingFriend();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  v24 = *(v10 - 8);
  v25 = v10;
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v22 = a1;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF69C(0, v14, 0);
    v15 = v26;
    v16 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v23 = *(v6 + 72);
    while (1)
    {
      v17 = sub_1B4B656B0(v16, v9, type metadata accessor for ActivitySharingFriend);
      MEMORY[0x1EEE9AC00](v17);
      *(&v22 - 2) = v9;
      sub_1B4B657FC(&qword_1EB8AA738, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
      sub_1B4D17DAC();
      if (v2)
      {
        break;
      }

      sub_1B4B65718(v9, type metadata accessor for ActivitySharingFriend);
      v26 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B4BCF69C(v18 > 1, v19 + 1, 1);
        v15 = v26;
      }

      *(v15 + 16) = v19 + 1;
      sub_1B4B65778(v13, v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
      v16 += v23;
      if (!--v14)
      {
        a1 = v22;
        goto LABEL_9;
      }
    }

    sub_1B4B65718(v9, type metadata accessor for ActivitySharingFriend);
  }

  else
  {
LABEL_9:
    v21 = *a1;

    *a1 = v15;
  }

  return result;
}

uint64_t *sub_1B4B65220(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v8 = sub_1B4B6565C();
  v9 = &v12;
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4B657FC(&qword_1EB8AA730, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
    v9 = sub_1B4D17D6C();
    sub_1B4B65718(v7, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  }

  return v9;
}

uint64_t sub_1B4B65364@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1B4B23B78(a1, a2, &v6);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1B4B65398()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  sub_1B4B657FC(&qword_1EB8AA730, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4B6565C()
{
  result = qword_1EB8AB140;
  if (!qword_1EB8AB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB140);
  }

  return result;
}

uint64_t sub_1B4B656B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B65718(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4B65778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B657FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static OrderAgnosticPropertyValue.prepareForReduce(_:)(uint64_t a1)
{
  result = nullsub_1(a1);
  if (!v1)
  {
  }

  return result;
}

uint64_t sub_1B4B659D4(uint64_t a1)
{
  swift_getWitnessTable();
  result = nullsub_1(a1);
  if (!v1)
  {
  }

  return result;
}

uint64_t sub_1B4B65A78()
{
  v0 = objc_opt_self();
  v1 = [v0 meters];
  sub_1B499221C();
  v2 = sub_1B4D187AC();

  if (v2)
  {
    return 1;
  }

  v3 = [v0 kilometers];
  v4 = sub_1B4D187AC();

  if (v4)
  {
    return 1;
  }

  v5 = [v0 centimeters];
  v6 = sub_1B4D187AC();

  if (v6)
  {
    return 1;
  }

  v7 = [v0 decameters];
  v8 = sub_1B4D187AC();

  if (v8)
  {
    return 1;
  }

  v9 = [v0 decimeters];
  v10 = sub_1B4D187AC();

  if (v10)
  {
    return 1;
  }

  v11 = [v0 hectometers];
  v12 = sub_1B4D187AC();

  if (v12)
  {
    return 1;
  }

  v13 = [v0 megameters];
  v14 = sub_1B4D187AC();

  if (v14)
  {
    return 1;
  }

  v16 = [v0 micrometers];
  v17 = sub_1B4D187AC();

  return v17 & 1;
}

uint64_t WorkoutVoiceMostCaloriesFact.QueryIdentifier.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

unint64_t WorkoutVoiceMostCaloriesFact.QueryIdentifier.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0xD000000000000019;
  }

  *v0;
  return result;
}

uint64_t sub_1B4B65CF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000015;
  }

  else
  {
    v4 = 0xD000000000000019;
  }

  if (v3)
  {
    v5 = "lastSixWeeksWorkoutProperties";
  }

  else
  {
    v5 = "ness_plus_modality> workout.";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (*a2)
  {
    v8 = "ness_plus_modality> workout.";
  }

  else
  {
    v8 = "lastSixWeeksWorkoutProperties";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B4B65DA4()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B65E24()
{
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4B65E90()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B65F0C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1B4B65F6C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v1)
  {
    v3 = "ness_plus_modality> workout.";
  }

  else
  {
    v3 = "lastSixWeeksWorkoutProperties";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t static WorkoutVoiceMostCaloriesFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4B66470(v3, v1, v2);
}

uint64_t static WorkoutVoiceMostCaloriesFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49AA274;

  return sub_1B4B66D04(a1, a3, a4);
}

id WorkoutVoiceMostCaloriesFact.makePrompt(promptFormatter:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v34 - v7;
  v9 = type metadata accessor for WorkoutVoiceMostCaloriesFact();
  v10 = v9[5];
  v11 = *(a1 + 16);
  FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v12);
  v14 = v13;
  sub_1B4D1745C();
  v15 = sub_1B4D12160();
  v16 = sub_1B4D12A28();
  v18 = v17;

  (*(v5 + 8))(v8, v4);
  v19 = *(v2 + v9[7]);
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v21 = result;
    v22 = sub_1B4D1818C();
    v24 = v23;

    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD00000000000002DLL, 0x80000001B4D62480);
    MEMORY[0x1B8C7C620](v22, v24);

    MEMORY[0x1B8C7C620](0x74756F6B726F7720, 0xE900000000000020);
    v25 = *(v2 + v9[6]);
    v26 = 0xE800000000000000;
    v27 = 0x7961642073696874;
    v28 = 0xEA00000000006874;
    v29 = 0x6E6F6D2073696874;
    v30 = 0xE900000000000072;
    v31 = 0x6165792073696874;
    if (v25 != 3)
    {
      v31 = 1919252069;
      v30 = 0xE400000000000000;
    }

    if (v25 != 2)
    {
      v29 = v31;
      v28 = v30;
    }

    if (*(v2 + v9[6]))
    {
      v27 = 0x6565772073696874;
      v26 = 0xE90000000000006BLL;
    }

    if (*(v2 + v9[6]) <= 1u)
    {
      v32 = v27;
    }

    else
    {
      v32 = v29;
    }

    if (*(v2 + v9[6]) <= 1u)
    {
      v33 = v26;
    }

    else
    {
      v33 = v28;
    }

    MEMORY[0x1B8C7C620](v32, v33);

    MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D624B0);
    MEMORY[0x1B8C7C620](v16, v18);

    return v34[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B4B6636C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4B66470(v3, v1, v2);
}

uint64_t sub_1B4B663AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49DD034;

  return sub_1B4B66D04(a1, a3, a4);
}

unint64_t sub_1B4B66470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateRangeDescriptor();
  v84 = *(v6 - 8);
  v7 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v74 - v14;
  v86 = type metadata accessor for WorkoutPropertiesQuery();
  v15 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B4D1777C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v27, a1, a2, v25);
  v28 = sub_1B4B682E4();
  sub_1B49A79FC(v27, v28, a2, a3);
  v30 = *(v29 + 16);
  v31 = 32;
  do
  {
    if (!v30)
    {

      goto LABEL_9;
    }

    v32 = *(v29 + v31);
    v31 += 8;
    --v30;
  }

  while (v32 != 2);

  if (FIActivityMoveModeUserDefault() == 1)
  {
    (*(a3 + 80))(a2, a3);
    v79 = v18;
    v33 = *(v18 + 16);
    v74 = v18 + 16;
    v75 = v33;
    v34 = v21;
    v82 = v21;
    v35 = v88;
    v33(v88, v34, v17);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
    v36 = swift_allocObject();
    v37 = a2;
    v38 = v36;
    *(v36 + 16) = xmmword_1B4D1A800;
    v39 = *(a3 + 56);
    v80 = v37;
    v40 = v39(v37, a3);
    v41 = [v40 effectiveTypeIdentifier];

    *(v38 + 32) = v41;
    v42 = v86;
    v43 = *(v86 + 20);
    v83 = v17;
    v44 = (v35 + v43);
    v45 = MEMORY[0x1E69E7CC0];
    *v44 = MEMORY[0x1E69E7CC0];
    v44[1] = v45;
    v44[2] = v45;
    v44[3] = v38;
    v44[4] = v45;
    v44[5] = v45;
    *(v35 + *(v42 + 24)) = v45;
    *(v35 + *(v42 + 28)) = &unk_1F2CBB3F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB1A8, &qword_1B4D33248);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB1B0, &unk_1B4D364C0);
    v47 = *(*(v46 - 8) + 72);
    v48 = (*(*(v46 - 8) + 80) + 32) & ~*(*(v46 - 8) + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1B4D1AA70;
    v78 = v49;
    v50 = (v49 + v48);
    v81 = v46;
    v51 = *(v46 + 48);
    *v50 = 0;
    sub_1B49BFE58(v35, &v50[v51], type metadata accessor for WorkoutPropertiesQuery);
    Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
    swift_storeEnumTagMultiPayload();
    v77 = v50;
    v52 = &v50[v47];
    v50[v47] = 1;
    v53 = v87;
    v75(v87, v82, v83);
    swift_storeEnumTagMultiPayload();
    v54 = v84;
    (*(v84 + 56))(v53, 0, 1, v6);
    sub_1B4974FBC(v53, v12, &qword_1EB8A67A8, &qword_1B4D1E060);
    v55 = *(v54 + 48);
    if (v55(v12, 1, v6) == 1)
    {
      v56 = v35;
      v57 = v85;
      sub_1B49BFE58(v56, v85, type metadata accessor for DateRangeDescriptor);
      if (v55(v12, 1, v6) != 1)
      {
        sub_1B4975024(v12, &qword_1EB8A67A8, &qword_1B4D1E060);
      }
    }

    else
    {
      v57 = v85;
      sub_1B4B68330(v12, v85, type metadata accessor for DateRangeDescriptor);
    }

    v64 = &v52[*(v81 + 48)];
    v65 = *v44;
    v66 = v44[1];
    v68 = v44[2];
    v67 = v44[3];
    v70 = v44[4];
    v69 = v44[5];
    sub_1B49BFE58(v57, v64, type metadata accessor for DateRangeDescriptor);

    sub_1B49BFEC0(v57, type metadata accessor for DateRangeDescriptor);
    v71 = v86;
    v72 = (v64 + *(v86 + 20));
    *v72 = v65;
    v72[1] = v66;
    v72[2] = v68;
    v72[3] = v67;
    v72[4] = v70;
    v72[5] = v69;
    *(v64 + *(v71 + 24)) = MEMORY[0x1E69E7CC0];
    *(v64 + *(v71 + 28)) = &unk_1F2CBB3F0;
    sub_1B4975024(v87, &qword_1EB8A67A8, &qword_1B4D1E060);
    swift_storeEnumTagMultiPayload();
    v63 = sub_1B4C9779C(v78);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1B49BFEC0(v88, type metadata accessor for WorkoutPropertiesQuery);
    (*(v79 + 8))(v82, v83);
    a2 = v80;
    goto LABEL_16;
  }

LABEL_9:
  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v58 = sub_1B4D17F6C();
  __swift_project_value_buffer(v58, qword_1EDC36F00);
  v59 = sub_1B4D17F5C();
  v60 = sub_1B4D1873C();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v89 = v62;
    *v61 = 136315138;
    *(v61 + 4) = sub_1B49558AC(0xD00000000000001CLL, 0x80000001B4D624D0, &v89);
    _os_log_impl(&dword_1B4953000, v59, v60, "%s does not support this workout state", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    MEMORY[0x1B8C7DDA0](v62, -1, -1);
    MEMORY[0x1B8C7DDA0](v61, -1, -1);
  }

  v63 = sub_1B4C9779C(MEMORY[0x1E69E7CC0]);
LABEL_16:
  (*(v22 + 8))(v27, a2);
  return v63;
}

uint64_t sub_1B4B66D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[321] = a3;
  v3[320] = a2;
  v3[319] = a1;
  v4 = type metadata accessor for WorkoutVoiceMostCaloriesFact();
  v3[322] = v4;
  v5 = *(v4 - 8);
  v3[323] = v5;
  v6 = *(v5 + 64) + 15;
  v3[324] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB190, &qword_1B4D33230);
  v3[325] = v7;
  v8 = *(v7 - 8);
  v3[326] = v8;
  v9 = *(v8 + 64) + 15;
  v3[327] = swift_task_alloc();
  v3[328] = swift_task_alloc();
  v10 = sub_1B4D1777C();
  v3[329] = v10;
  v11 = *(v10 - 8);
  v3[330] = v11;
  v12 = *(v11 + 64) + 15;
  v3[331] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v3[332] = swift_task_alloc();
  v3[333] = swift_task_alloc();
  v14 = type metadata accessor for WorkoutState();
  v3[334] = v14;
  v15 = *(v14 - 8);
  v3[335] = v15;
  v16 = *(v15 + 64) + 15;
  v3[336] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B66F3C, 0, 0);
}

uint64_t sub_1B4B66F3C()
{
  v112 = v0;
  v1 = *(v0 + 2680);
  v2 = *(v0 + 2672);
  v3 = *(v0 + 2664);
  sub_1B4974FBC(*(v0 + 2560), v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    sub_1B4975024(*(v0 + 2664), &qword_1EB8A6A98, &unk_1B4D1CBE0);
LABEL_8:
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v16 = sub_1B4D17F6C();
    __swift_project_value_buffer(v16, qword_1EDC36F00);
    v17 = sub_1B4D17F5C();
    v18 = sub_1B4D1873C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      __dst[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1B49558AC(0xD00000000000001CLL, 0x80000001B4D624D0, __dst);
      _os_log_impl(&dword_1B4953000, v17, v18, "Context or snapshots don't exist for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1B8C7DDA0](v20, -1, -1);
      MEMORY[0x1B8C7DDA0](v19, -1, -1);
    }

LABEL_13:
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v109 = v4;
  v5 = *(v0 + 2552);
  sub_1B4B68330(*(v0 + 2664), *(v0 + 2688), type metadata accessor for WorkoutState);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  *(v0 + 2536) = &type metadata for WorkoutVoiceMostCaloriesFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB198, &qword_1B4D33238);
  __dst[0] = sub_1B4D181CC();
  __dst[1] = v8;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4AB10);

  (*(v7 + 8))(__dst[0], __dst[1], &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v6, v7);

  v9 = *(v0 + 2504);
  if (!v9)
  {
    sub_1B49BFEC0(*(v0 + 2688), type metadata accessor for WorkoutState);
    goto LABEL_8;
  }

  v107 = *(v0 + 2496);
  v108 = *(v0 + 2488);
  v11 = v5[3];
  v10 = v5[4];
  __swift_project_boxed_opaque_existential_1(*(v0 + 2552), v11);
  *(v0 + 2544) = &type metadata for WorkoutVoiceMostCaloriesFact.QueryIdentifier;
  __dst[0] = sub_1B4D181CC();
  __dst[1] = v12;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000015, 0x80000001B4D4BED0);

  (*(v10 + 8))(__dst[0], __dst[1], &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v11, v10);

  v13 = *(v0 + 2528);
  if (!v13)
  {
    sub_1B49BFEC0(*(v0 + 2688), type metadata accessor for WorkoutState);

    goto LABEL_8;
  }

  v14 = *(v0 + 2512);
  v15 = *(v0 + 2520);
  *(v0 + 2376) = 0u;
  *(v0 + 2392) = 0u;
  *(v0 + 2360) = 0u;
  sub_1B4CE3B10((v0 + 2360), v13, __dst);
  if (LOBYTE(__dst[1]))
  {
    v31 = 0;
  }

  else
  {
    v31 = __dst[0];
  }

  sub_1B4CE3B10((v0 + 2360), v9, __dst);
  if (LOBYTE(__dst[1]))
  {
    v32 = 0;
  }

  else
  {
    v32 = __dst[0];
  }

  v33 = MEMORY[0x1E69E7CC0];
  if (v31 >= 20)
  {
    v33 = sub_1B4A1E07C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = sub_1B4A1E07C((v34 > 1), v35 + 1, 1, v33);
    }

    *(v33 + 2) = v35 + 1;
    v33[v35 + 32] = 4;
  }

  if (v32 >= 10)
  {
    v36 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1B4A1E07C(0, *(v36 + 2) + 1, 1, v36);
    }

    v37 = v36;
    v39 = *(v36 + 2);
    v38 = *(v36 + 3);
    if (v39 >= v38 >> 1)
    {
      v37 = sub_1B4A1E07C((v38 > 1), v39 + 1, 1, v36);
    }

    *(v37 + 2) = v39 + 1;
    v106 = v37;
    v37[v39 + 32] = 3;
  }

  else
  {
    if (!*(v33 + 2))
    {

      if (qword_1EDC36EF8 != -1)
      {
        swift_once();
      }

      v72 = sub_1B4D17F6C();
      __swift_project_value_buffer(v72, qword_1EDC36F00);
      v73 = sub_1B4D17F5C();
      v74 = sub_1B4D1873C();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        __dst[0] = v76;
        *v75 = 136315650;
        *(v75 + 4) = sub_1B49558AC(0xD00000000000001CLL, 0x80000001B4D624D0, __dst);
        *(v75 + 12) = 2048;
        *(v75 + 14) = v31;
        *(v75 + 22) = 2048;
        *(v75 + 24) = v32;
        _os_log_impl(&dword_1B4953000, v73, v74, "didn't meet min workouts requirement for %s. Number for ever %ld, this year %ld", v75, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v76);
        MEMORY[0x1B8C7DDA0](v76, -1, -1);
        MEMORY[0x1B8C7DDA0](v75, -1, -1);
      }

      sub_1B49BFEC0(*(v0 + 2688), type metadata accessor for WorkoutState);
      goto LABEL_13;
    }

    v106 = v33;
  }

  v104 = (v0 + 2104);
  v100 = (v0 + 2232);
  v40 = *(v0 + 2688);
  v41 = *(v0 + 2672);
  v42 = *(v0 + 2648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1B4D1A800;
  *(v43 + 32) = sub_1B4D1779C();
  v97 = v43 + 32;
  v105 = v43;
  *(v43 + 40) = v44;
  v45 = *(v40 + *(v41 + 48));
  v46 = v40 + *(v41 + 36);
  sub_1B4D1770C();
  v101 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v102 = *(v0 + 2672);
  v103 = *(v0 + 2688);
  v47 = *(v0 + 2640);
  v98 = *(v0 + 2632);
  v99 = *(v0 + 2648);
  v48 = sub_1B4D1796C();
  __swift_project_value_buffer(v48, qword_1EDC3CE48);
  v49 = sub_1B4D178CC();
  v50 = _HKCacheIndexFromDate();

  (*(v47 + 8))(v99, v98);
  sub_1B496F4FC(v100);
  *(v0 + 2104) = v50;
  *(v0 + 2112) = v14;
  *(v0 + 2120) = v15;
  *(v0 + 2128) = v13;
  *(v0 + 2136) = v108;
  *(v0 + 2144) = v107;
  *(v0 + 2152) = v9;
  *(v0 + 2160) = v50;
  *(v0 + 2168) = v50;
  v51 = MEMORY[0x1E69E7CC0];
  *(v0 + 2176) = MEMORY[0x1E69E7CC0];
  *(v0 + 2184) = v50;
  *(v0 + 2192) = v50;
  *(v0 + 2200) = v51;
  *(v0 + 2208) = v50;
  *(v0 + 2216) = v50;
  *(v0 + 2224) = v51;
  nullsub_1(v104);
  sub_1B496F4FC((v0 + 1976));
  v52 = *(v0 + 2056);
  *(v0 + 1128) = *(v0 + 2040);
  *(v0 + 1144) = v52;
  v53 = *(v0 + 2088);
  *(v0 + 1160) = *(v0 + 2072);
  *(v0 + 1176) = v53;
  v54 = *(v0 + 1992);
  *(v0 + 1064) = *(v0 + 1976);
  *(v0 + 1080) = v54;
  v55 = *(v0 + 2024);
  *(v0 + 1096) = *(v0 + 2008);
  *(v0 + 1112) = v55;
  v56 = *v100;
  v57 = *(v0 + 2248);
  v58 = *(v0 + 2280);
  *(v0 + 840) = *(v0 + 2264);
  *(v0 + 856) = v58;
  *(v0 + 808) = v56;
  *(v0 + 824) = v57;
  v59 = *(v0 + 2296);
  v60 = *(v0 + 2312);
  v61 = *(v0 + 2344);
  *(v0 + 904) = *(v0 + 2328);
  *(v0 + 920) = v61;
  *(v0 + 872) = v59;
  *(v0 + 888) = v60;
  v62 = *v104;
  v63 = *(v0 + 2120);
  v64 = *(v0 + 2152);
  *(v0 + 968) = *(v0 + 2136);
  *(v0 + 984) = v64;
  *(v0 + 936) = v62;
  *(v0 + 952) = v63;
  v65 = *(v0 + 2168);
  v66 = *(v0 + 2184);
  v67 = *(v0 + 2216);
  *(v0 + 1032) = *(v0 + 2200);
  *(v0 + 1048) = v67;
  *(v0 + 1000) = v65;
  *(v0 + 1016) = v66;
  *(v0 + 800) = v50;
  *(v0 + 2432) = v102;
  *(v0 + 2440) = &protocol witness table for WorkoutState;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2408));
  sub_1B49BFE58(v103, boxed_opaque_existential_1, type metadata accessor for WorkoutState);
  memcpy(__dst, (v0 + 800), 0x188uLL);
  static LegacySnapshot.make(from:snapshot:)(v0 + 2408, __dst, __src);
  v69 = *(v0 + 2672);
  v70 = *(v0 + 2656);
  v71 = *(v0 + 2568);
  sub_1B4975024(v0 + 2408, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
  memcpy((v0 + 408), __src, 0x188uLL);
  sub_1B4974FBC(v71, v70, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  if (v109(v70, 1, v69) == 1)
  {
    sub_1B4975024(*(v0 + 2656), &qword_1EB8A6A98, &unk_1B4D1CBE0);
    *(v0 + 2448) = 0u;
    *(v0 + 2464) = 0u;
    *(v0 + 2480) = 0;
  }

  else
  {
    v77 = *(v0 + 2656);
    *(v0 + 2472) = *(v0 + 2672);
    *(v0 + 2480) = &protocol witness table for WorkoutState;
    v78 = __swift_allocate_boxed_opaque_existential_1((v0 + 2448));
    sub_1B4B68330(v77, v78, type metadata accessor for WorkoutState);
  }

  memcpy(__dst, (v0 + 800), 0x188uLL);
  static LegacySnapshot.make(from:snapshot:)(v0 + 2448, __dst, __src);
  v79 = *(v0 + 2688);
  v80 = *(v0 + 2672);
  sub_1B4B68220(v0 + 800);
  sub_1B4975024(v0 + 2448, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
  memcpy((v0 + 1584), __src, 0x188uLL);
  v81 = [*(v79 + *(v80 + 24)) effectiveTypeIdentifier];
  memcpy((v0 + 1192), (v0 + 1584), 0x188uLL);
  nullsub_1(v0 + 1192);
  memcpy((v0 + 16), (v0 + 1192), 0x188uLL);
  v82 = vdupq_n_s64(v81);
  if ((vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_1F2CB8B70, v82), vceqq_s64(unk_1F2CB8B80, v82)), vuzp1q_s32(vceqq_s64(xmmword_1F2CB8B90, v82), vceqq_s64(unk_1F2CB8BA0, v82))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_1F2CB8BB0, v82), vceqq_s64(unk_1F2CB8BC0, v82)), vuzp1q_s32(vceqq_s64(xmmword_1F2CB8BD0, v82), vceqq_s64(unk_1F2CB8BE0, v82))))) & 1) != 0 || vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_1F2CB8BF0, v82), vceqq_s64(unk_1F2CB8C00, v82)), vuzp1q_s32(vceqq_s64(xmmword_1F2CB8C10, v82), vceqq_s64(unk_1F2CB8C20, v82))), xmmword_1B4D33100)) || (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_s64(xmmword_1F2CB8C30, v82), vceqq_s64(unk_1F2CB8C40, v82)), xmmword_1B4D33110)) & 0xF) != 0 || qword_1F2CB8C50 == v81 || unk_1F2CB8C58 == v81 || qword_1F2CB8C60 == v81)
  {
    v83 = *(v0 + 2608);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB1A0, &qword_1B4D33240);
    v84 = *(v83 + 72);
    v85 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v86 = swift_allocObject();
    sub_1B4C8EB54(v105, v106, v81, 16, (v0 + 408), (v0 + 16), (v86 + v85));
    v87 = *(v0 + 2624);
    v88 = *(v0 + 2616);
    v89 = *(v0 + 2584);
    v90 = *(v0 + 2576);

    sub_1B4B68220(v0 + 1584);
    sub_1B4B68220(v0 + 408);

    sub_1B4974FBC(v86 + v85, v87, &qword_1EB8AB190, &qword_1B4D33230);
    sub_1B4B68274(v87, v88);
    v91 = (*(v89 + 48))(v88, 1, v90);
    v92 = *(v0 + 2616);
    if (v91 == 1)
    {
      sub_1B4975024(v92, &qword_1EB8AB190, &qword_1B4D33230);
      v21 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1B4B68330(v92, *(v0 + 2592), type metadata accessor for WorkoutVoiceMostCaloriesFact);
      v21 = MEMORY[0x1E69E7CC0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1B4A1E054(0, v21[2] + 1, 1, v21);
      }

      v94 = v21[2];
      v93 = v21[3];
      if (v94 >= v93 >> 1)
      {
        v21 = sub_1B4A1E054(v93 > 1, v94 + 1, 1, v21);
      }

      v95 = *(v0 + 2592);
      v96 = *(v0 + 2584);
      v21[2] = v94 + 1;
      sub_1B4B68330(v95, v21 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v94, type metadata accessor for WorkoutVoiceMostCaloriesFact);
    }

    swift_setDeallocating();
    sub_1B4975024(v86 + v85, &qword_1EB8AB190, &qword_1B4D33230);
    swift_deallocClassInstance();
  }

  else
  {
    sub_1B4B68220(v0 + 1584);
    sub_1B4B68220(v0 + 408);

    swift_setDeallocating();
    sub_1B497CBA8(v97);
    swift_deallocClassInstance();
    v21 = MEMORY[0x1E69E7CC0];
  }

  sub_1B49BFEC0(*(v0 + 2688), type metadata accessor for WorkoutState);
LABEL_14:
  v22 = *(v0 + 2688);
  v23 = *(v0 + 2664);
  v24 = *(v0 + 2656);
  v25 = *(v0 + 2648);
  v26 = *(v0 + 2624);
  v27 = *(v0 + 2616);
  v28 = *(v0 + 2592);

  v29 = *(v0 + 8);

  return v29(v21);
}

unint64_t sub_1B4B67FE0()
{
  result = qword_1EB8AB160;
  if (!qword_1EB8AB160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB160);
  }

  return result;
}

unint64_t sub_1B4B68034(uint64_t a1)
{
  *(a1 + 8) = sub_1B4B68064();
  result = sub_1B4B680B8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4B68064()
{
  result = qword_1EB8AB168;
  if (!qword_1EB8AB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB168);
  }

  return result;
}

unint64_t sub_1B4B680B8()
{
  result = qword_1EB8AB170;
  if (!qword_1EB8AB170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB170);
  }

  return result;
}

unint64_t sub_1B4B68110()
{
  result = qword_1EB8AB178;
  if (!qword_1EB8AB178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB178);
  }

  return result;
}

uint64_t sub_1B4B68164(uint64_t a1)
{
  *(a1 + 8) = sub_1B4B681CC(&qword_1EB8AB180);
  result = sub_1B4B681CC(&qword_1EB8AB188);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4B681CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutVoiceMostCaloriesFact();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B68274(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB190, &qword_1B4D33230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4B682E4()
{
  result = qword_1EB8A6C80;
  if (!qword_1EB8A6C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB8A6C80);
  }

  return result;
}

uint64_t sub_1B4B68330(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B6848C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7930, &unk_1B4D1F280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B68504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7930, &unk_1B4D1F280);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for WeatherCondition()
{
  result = qword_1EDC397B8;
  if (!qword_1EDC397B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WeatherCondition.condition.setter(uint64_t a1)
{
  result = type metadata accessor for WeatherCondition();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t WeatherCondition.init(temperature:condition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  sub_1B4B68504(a1, a3);
  result = type metadata accessor for WeatherCondition();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1B4B68718()
{
  if (*v0)
  {
    result = 0x6F697469646E6F63;
  }

  else
  {
    result = 0x74617265706D6574;
  }

  *v0;
  return result;
}

uint64_t sub_1B4B68760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
  if (v6 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();

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

uint64_t sub_1B4B68848(uint64_t a1)
{
  v2 = sub_1B4B69120();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B68884(uint64_t a1)
{
  v2 = sub_1B4B69120();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WeatherCondition.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB1B8, &qword_1B4D33250);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B69120();
  sub_1B4D18EFC();
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  sub_1B4B69444(&qword_1EB8AB1C8);
  sub_1B4D18CAC();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for WeatherCondition() + 20));
    v12[15] = 1;
    type metadata accessor for _HKPrivateWeatherCondition(0);
    sub_1B4B69400(&qword_1EB8AB1D0);
    sub_1B4D18D0C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t WeatherCondition.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7930, &unk_1B4D1F280);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v24 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB1D8, &qword_1B4D33258);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for WeatherCondition();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B69120();
  sub_1B4D18EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_1B4975024(v14, &qword_1EB8A7930, &unk_1B4D1F280);
  }

  else
  {
    v17 = v22;
    v27 = 0;
    sub_1B4B69444(&qword_1EB8AB1E0);
    v18 = v23;
    sub_1B4D18BAC();
    sub_1B4B68504(v24, v14);
    type metadata accessor for _HKPrivateWeatherCondition(0);
    v26 = 1;
    sub_1B4B69400(&qword_1EB8AB1E8);
    sub_1B4D18C0C();
    (*(v17 + 8))(v10, v18);
    *&v14[*(v11 + 20)] = v25;
    sub_1B4B69174(v14, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_1B49E5600(v14);
  }
}

BOOL _s19FitnessIntelligence16WeatherConditionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7930, &unk_1B4D1F280);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB210, &qword_1B4D33478);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_1B4B6848C(a1, &v24 - v15);
  sub_1B4B6848C(a2, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1B4B6848C(v16, v12);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_1B4B69444(&qword_1EB8A8288);
      v21 = sub_1B4D1816C();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1B4975024(v16, &qword_1EB8A7930, &unk_1B4D1F280);
      if (v21)
      {
        goto LABEL_9;
      }

      return 0;
    }

    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_1B4975024(v16, &qword_1EB8AB210, &qword_1B4D33478);
    return 0;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4975024(v16, &qword_1EB8A7930, &unk_1B4D1F280);
LABEL_9:
  v23 = type metadata accessor for WeatherCondition();
  return *(a1 + *(v23 + 20)) == *(a2 + *(v23 + 20));
}

unint64_t sub_1B4B69120()
{
  result = qword_1EB8AB1C0;
  if (!qword_1EB8AB1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB1C0);
  }

  return result;
}

uint64_t sub_1B4B69174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherCondition();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B4B69200()
{
  sub_1B4B69284();
  if (v0 <= 0x3F)
  {
    type metadata accessor for _HKPrivateWeatherCondition(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4B69284()
{
  if (!qword_1EDC3CB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A7470, &qword_1B4D1F290);
    v0 = sub_1B4D1880C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC3CB18);
    }
  }
}

unint64_t sub_1B4B692FC()
{
  result = qword_1EB8AB1F0;
  if (!qword_1EB8AB1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB1F0);
  }

  return result;
}

unint64_t sub_1B4B69354()
{
  result = qword_1EB8AB1F8;
  if (!qword_1EB8AB1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB1F8);
  }

  return result;
}

unint64_t sub_1B4B693AC()
{
  result = qword_1EB8AB200;
  if (!qword_1EB8AB200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB200);
  }

  return result;
}

uint64_t sub_1B4B69400(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _HKPrivateWeatherCondition(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}