void sub_22B326940(void (*a1)(char *, char *, uint64_t)@<X8>)
{
  v53 = a1;
  v49 = sub_22B36052C();
  v1 = *(v49 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22B3603FC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B35F7CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  sub_22B128014(0, &qword_27D8BA690, 0x277CBEA60);
  v19 = v59;
  v20 = sub_22B360F7C();
  if (v19)
  {
    v21 = v19;
    v22 = v53;
    v23 = v49;
LABEL_3:
    v24 = v52;
    if (qword_28140A0C8 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_27;
  }

  v50 = v18;
  v51 = v15;
  v55 = v12;
  if (!v20)
  {
    v24 = MEMORY[0x277D84F90];
    v22 = v53;
    goto LABEL_24;
  }

  v59 = 0;
  *&v56 = 0;
  v36 = v20;
  sub_22B360A4C();

  v23 = v56;
  v22 = v53;
  if (!v56)
  {
    v24 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v48 = *(v56 + 16);
  if (v48)
  {
    v45 = v1;
    v46 = v9;
    v1 = 0;
    v54 = (v9 + 32);
    v21 = (v56 + 40);
    v24 = MEMORY[0x277D84F90];
    v47 = v7;
    while (v1 < *(v23 + 16))
    {
      v38 = *(v21 - 1);
      v37 = *v21;
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      sub_22B144B30(v38, v37);
      sub_22B3603EC();
      sub_22B332F4C(&qword_27D8BAF28, MEMORY[0x277D07438]);
      v39 = v51;
      v40 = v59;
      sub_22B36041C();
      v59 = v40;
      if (v40)
      {

        v21 = v59;
        v22 = v53;
        v23 = v49;
        v1 = v45;
        goto LABEL_3;
      }

      v22 = *v54;
      v41 = v50;
      (*v54)(v50, v39, v8);
      v22(v55, v41, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_22B32DAC8(0, *(v24 + 2) + 1, 1, v24, &qword_27D8BABB0, &qword_22B3669B8, MEMORY[0x277D07438]);
      }

      v43 = *(v24 + 2);
      v42 = *(v24 + 3);
      if (v43 >= v42 >> 1)
      {
        v24 = sub_22B32DAC8(v42 > 1, v43 + 1, 1, v24, &qword_27D8BABB0, &qword_22B3669B8, MEMORY[0x277D07438]);
      }

      ++v1;
      *(v24 + 2) = v43 + 1;
      v22(&v24[((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v43], v55, v8);
      v21 += 2;
      if (v48 == v1)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
LABEL_4:
    v25 = __swift_project_value_buffer(v23, qword_28140BD10);
    swift_beginAccess();
    (*(v1 + 16))(v24, v25, v23);
    v26 = v21;
    v27 = sub_22B36050C();
    v28 = sub_22B360D1C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = v1;
      v31 = swift_slowAlloc();
      *v29 = 138412290;
      v32 = v21;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_22B116000, v27, v28, "Failed to unarchive TariffProfile %@", v29, 0xCu);
      sub_22B123284(v31, &unk_27D8BAA90, &unk_22B362BC0);
      v34 = v31;
      v1 = v30;
      MEMORY[0x23188F650](v34, -1, -1);
      v35 = v29;
      v24 = v52;
      MEMORY[0x23188F650](v35, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v24, v23);
    v24 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_23:

  v22 = v53;
LABEL_24:
  *v22 = v24;
}

void sub_22B326F7C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  sub_22B35F86C();
  v9 = sub_22B35F85C();
  [v9 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22B3634C0;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = sub_22B1280E4();
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 64) = v12;
  *(v10 + 72) = a3;
  *(v10 + 80) = a4;

  v13 = sub_22B360CCC();
  [v9 setPredicate_];
  v14 = sub_22B360E8C();
  if (v19)
  {
  }

  else
  {
    v15 = v14;
    [a5 reset];

    *a6 = v15;
  }
}

void sub_22B327108(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  sub_22B35F86C();
  v11 = sub_22B35F85C();
  [v11 setResultType_];
  v12 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v13 = sub_22B36081C();
  v14 = [v12 initWithKey:v13 ascending:0];

  v15 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v16 = sub_22B36081C();
  v17 = [v15 initWithKey:v16 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22B363950;
  *(v18 + 32) = v14;
  *(v18 + 40) = v17;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v19 = v14;
  v36 = v17;
  v20 = sub_22B360A3C();

  [v11 setSortDescriptors_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v21 = swift_allocObject();
  if (a2)
  {
    *(v21 + 16) = xmmword_22B364620;
    v22 = MEMORY[0x277D837D0];
    *(v21 + 56) = MEMORY[0x277D837D0];
    v23 = sub_22B1280E4();
    *(v21 + 32) = a3;
    *(v21 + 40) = a4;
    *(v21 + 96) = v22;
    *(v21 + 104) = v23;
    *(v21 + 64) = v23;
    *(v21 + 72) = a5;
    *(v21 + 80) = a6;
    *(v21 + 136) = v22;
    *(v21 + 144) = v23;
    *(v21 + 112) = a1;
    *(v21 + 120) = a2;
  }

  else
  {
    *(v21 + 16) = xmmword_22B3634C0;
    v24 = MEMORY[0x277D837D0];
    *(v21 + 56) = MEMORY[0x277D837D0];
    v25 = sub_22B1280E4();
    *(v21 + 32) = a3;
    *(v21 + 40) = a4;
    *(v21 + 96) = v24;
    *(v21 + 104) = v25;
    *(v21 + 64) = v25;
    *(v21 + 72) = a5;
    *(v21 + 80) = a6;
  }

  v26 = sub_22B360CCC();
  [v11 setPredicate_];

  v27 = sub_22B360E9C();
  if (v35)
  {
  }

  else
  {
    if (v27 >> 62)
    {
      v28 = sub_22B36109C();
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v28 < 1)
    {
      [a7 reset];

      *a8 = 0;
    }

    else
    {
      v38 = MEMORY[0x23188E590](v28, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
      v29 = sub_22B360E9C();
      v30 = sub_22B325594(v29, &v38);

      [a7 reset];

      *a8 = v30;
    }
  }
}

void sub_22B32755C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  sub_22B35F86C();
  v8 = sub_22B35F85C();
  [v8 setResultType_];
  v9 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v10 = sub_22B36081C();
  v11 = [v9 initWithKey:v10 ascending:0];

  v12 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v13 = sub_22B36081C();
  v14 = [v12 initWithKey:v13 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22B363950;
  *(v15 + 32) = v11;
  *(v15 + 40) = v14;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v16 = v11;
  v17 = v14;
  v18 = sub_22B360A3C();

  [v8 setSortDescriptors_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22B3634C0;
  v20 = MEMORY[0x277D837D0];
  *(v19 + 56) = MEMORY[0x277D837D0];
  v21 = sub_22B1280E4();
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  *(v19 + 96) = v20;
  *(v19 + 104) = v21;
  *(v19 + 64) = v21;
  *(v19 + 72) = a3;
  *(v19 + 80) = a4;

  v22 = sub_22B360CCC();
  [v8 setPredicate_];
  [v8 setFetchLimit_];
  v23 = sub_22B360E9C();
  if (v36)
  {

    return;
  }

  if (v23 >> 62)
  {
    v29 = v23;
    v30 = sub_22B36109C();
    v23 = v29;
    v24 = v17;
    if (v30)
    {
      goto LABEL_5;
    }

LABEL_10:

    [a5 reset];

    v31 = type metadata accessor for CDUsagePointRecords();
    (*(*(v31 - 8) + 56))(a6, 1, 1, v31);
    return;
  }

  v24 = v17;
  if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x23188EAC0](0);
    goto LABEL_8;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v23 + 32);
LABEL_8:
    v26 = v25;

    v27 = v26;
    sub_22B326094(v27, a6);
    [a5 reset];

    v28 = type metadata accessor for CDUsagePointRecords();
    (*(*(v28 - 8) + 56))(a6, 0, 1, v28);
    return;
  }

  __break(1u);
}

void sub_22B327958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, void **a9)
{
  v46 = a8;
  v47 = a1;
  v51 = a6;
  v52 = a7;
  v48 = a3;
  v49 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6E8, &qword_22B365990);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v45 = (&v45 - v13);
  v50 = sub_22B35F86C();
  v14 = sub_22B35F85C();
  [v14 setResultType_];
  v15 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v16 = sub_22B36081C();
  v17 = [v15 initWithKey:v16 ascending:0];

  v18 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v19 = sub_22B36081C();
  v20 = [v18 initWithKey:v19 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22B363950;
  *(v21 + 32) = v17;
  *(v21 + 40) = v20;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v22 = v17;
  v23 = v20;
  v24 = sub_22B360A3C();

  [v14 setSortDescriptors_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_22B364620;
  v26 = MEMORY[0x277D837D0];
  *(v25 + 56) = MEMORY[0x277D837D0];
  v27 = sub_22B1280E4();
  v28 = v48;
  *(v25 + 32) = v47;
  *(v25 + 40) = a2;
  *(v25 + 96) = v26;
  *(v25 + 104) = v27;
  *(v25 + 64) = v27;
  *(v25 + 72) = v28;
  *(v25 + 80) = a4;
  *(v25 + 136) = v26;
  *(v25 + 144) = v27;
  v29 = v51;
  *(v25 + 112) = v49;
  *(v25 + 120) = v29;

  v30 = v52;
  v31 = sub_22B360CCC();
  [v14 setPredicate_];
  v32 = v53;
  v33 = sub_22B360E9C();
  if (v32)
  {

LABEL_12:
    return;
  }

  v53 = v22;
  v51 = v23;
  v35 = v45;
  v34 = v46;
  if (!(v33 >> 62))
  {
    v36 = v53;
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    goto LABEL_11;
  }

  v43 = v33;
  v44 = sub_22B36109C();
  v33 = v43;
  v36 = v53;
  if (!v44)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v33 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x23188EAC0](0);
    goto LABEL_8;
  }

  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v33 + 32);
LABEL_8:
    v38 = v37;

    v39 = v38;
    sub_22B326094(v39, v35);
    v40 = type metadata accessor for CDUsagePointRecords();
    (*(*(v40 - 8) + 56))(v35, 0, 1, v40);
    sub_22B332EDC(v35, v34);
    v41 = [v39 objectID];

    v42 = *a9;
    *a9 = v41;

    v36 = v53;
LABEL_11:
    [v30 refreshAllObjects];

    goto LABEL_12;
  }

  __break(1u);
}

void sub_22B327DA8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v70 = a5;
  v71 = a6;
  v69 = a4;
  v66 = a3;
  v75[3] = *MEMORY[0x277D85DE8];
  v12 = sub_22B35DE9C();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = *(v67 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22B36052C();
  v74 = *(v16 - 8);
  v17 = *(v74 + 64);
  MEMORY[0x28223BE20](v16);
  v72 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v63 - v20;
  *&v23 = MEMORY[0x28223BE20](v22).n128_u64[0];
  v25 = v63 - v24;
  v75[0] = 0;
  v73 = a1;
  v26 = [a1 existingObjectWithID:a2 error:{v75, v23}];
  v27 = v75[0];
  if (!v26)
  {
    v65 = a2;
    v44 = v75[0];
    v45 = sub_22B35DB9C();

    swift_willThrow();
    v46 = v74;
    v21 = v72;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v16, qword_28140BD10);
    swift_beginAccess();
    (*(v46 + 16))(v21, v47, v16);
    v48 = v65;
    v49 = sub_22B36050C();
    v50 = sub_22B360D0C();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      *(v51 + 4) = v48;
      *v52 = v48;
      v53 = v48;
      _os_log_impl(&dword_22B116000, v49, v50, "[UsagePointRecords] No object to update for %@", v51, 0xCu);
      sub_22B123284(v52, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v52, -1, -1);
      v54 = v51;
      v21 = v72;
      MEMORY[0x23188F650](v54, -1, -1);
    }

    goto LABEL_19;
  }

  v28 = v26;
  v63[1] = a7;
  v64 = a8;
  sub_22B35F86C();
  v29 = swift_dynamicCastClass();
  v30 = qword_28140A0C8;
  v31 = v27;
  if (!v29)
  {
    if (v30 != -1)
    {
      swift_once();
    }

    v55 = __swift_project_value_buffer(v16, qword_28140BD10);
    swift_beginAccess();
    (*(v74 + 16))(v21, v55, v16);
    v56 = a2;
    v49 = sub_22B36050C();
    v57 = sub_22B360D0C();

    v58 = os_log_type_enabled(v49, v57);
    a8 = v64;
    if (v58)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      *(v59 + 4) = v56;
      *v60 = v56;
      v61 = v56;
      _os_log_impl(&dword_22B116000, v49, v57, "[UsagePointRecords] No object to update for %@", v59, 0xCu);
      sub_22B123284(v60, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v60, -1, -1);
      MEMORY[0x23188F650](v59, -1, -1);
    }

    else
    {

      v49 = v28;
    }

    v46 = v74;
LABEL_19:

    (*(v46 + 8))(v21, v16);
    *a8 = 1;
    [v73 refreshAllObjects];
    goto LABEL_20;
  }

  v65 = a2;
  v32 = v28;
  if (v30 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v16, qword_28140BD10);
  swift_beginAccess();
  (*(v74 + 16))(v25, v33, v16);
  v34 = v32;
  v35 = sub_22B36050C();
  v36 = sub_22B360D0C();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    *(v37 + 4) = v34;
    *v38 = v28;
    v39 = v34;
    _os_log_impl(&dword_22B116000, v35, v36, "[UsagePointRecords] Got back object to update %@", v37, 0xCu);
    sub_22B123284(v38, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v38, -1, -1);
    MEMORY[0x23188F650](v37, -1, -1);
  }

  (*(v74 + 8))(v25, v16);
  v40 = sub_22B35DDDC();
  [v29 setSourceTime_];

  sub_22B35DE8C();
  v41 = sub_22B35DDDC();
  (*(v67 + 8))(v15, v68);
  [v29 setCreationDate_];

  v42 = sub_22B35DCCC();
  [v29 setTariffRiders_];

  v43 = sub_22B35DCCC();
  [v29 setTariffProfiles_];

  sub_22B207390(8);
LABEL_20:
  v62 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B3284FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 232) = v22;
  *(v8 + 240) = v23;
  *(v8 + 216) = v21;
  *(v8 + 200) = v20;
  *(v8 + 184) = v19;
  *(v8 + 168) = v18;
  *(v8 + 152) = v17;
  *(v8 + 136) = v16;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 96) = a4;
  v9 = sub_22B36052C();
  *(v8 + 248) = v9;
  v10 = *(v9 - 8);
  *(v8 + 256) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v12 = sub_22B35DE9C();
  *(v8 + 272) = v12;
  v13 = *(v12 - 8);
  *(v8 + 280) = v13;
  *(v8 + 288) = *(v13 + 64);
  *(v8 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B328658, 0, 0);
}

uint64_t sub_22B328658()
{
  v1 = v0;
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[35];
  v34 = v3;
  v35 = v2;
  v36 = v0[29];
  v49 = v0[28];
  v42 = v0[27];
  v48 = v0[26];
  v41 = v0[25];
  v47 = v0[24];
  v39 = v0[23];
  v45 = v0[21];
  v46 = v0[22];
  v5 = v0[18];
  v43 = v0[19];
  v44 = v0[20];
  v6 = v0[16];
  v7 = v0[14];
  v37 = v0[15];
  v38 = v0[17];
  v40 = v7;
  v9 = v0[12];
  v8 = v0[13];
  sub_22B35F86C();
  v0[11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = v0 + 11;
  (*(v4 + 16))(v2, v36, v3);
  v11 = (*(v4 + 80) + 160) & ~*(v4 + 80);
  v12 = swift_allocObject();
  v10[27] = v12;
  *(v12 + 2) = v10;
  *(v12 + 3) = v9;
  *(v12 + 4) = v8;
  *(v12 + 5) = v7;
  *(v12 + 6) = v37;
  *(v12 + 7) = v6;
  *(v12 + 8) = v38;
  *(v12 + 9) = v5;
  *(v12 + 10) = v43;
  *(v12 + 11) = v44;
  *(v12 + 12) = v45;
  *(v12 + 13) = v46;
  *(v12 + 14) = v39;
  *(v12 + 15) = v47;
  *(v12 + 16) = v41;
  *(v12 + 17) = v48;
  *(v12 + 18) = v42;
  *(v12 + 19) = v49;
  (*(v4 + 32))(&v12[v11], v35, v34);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_22B332E2C;
  *(v13 + 24) = v12;
  *(v10 - 5) = sub_22B333230;
  *(v10 - 4) = v13;
  *(v10 - 9) = MEMORY[0x277D85DD0];
  *(v10 - 8) = 1107296256;
  *(v10 - 7) = sub_22B32556C;
  *(v10 - 6) = &block_descriptor_28_0;
  v14 = _Block_copy(v10 - 9);
  v15 = *(v10 - 4);
  v16 = v9;

  v17 = v40;

  sub_22B144B30(v43, v44);
  sub_22B144B30(v45, v46);

  [v16 performBlockAndWait_];
  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    v26 = v1[30];
    v28 = v1[12];
    v27 = v1[13];
    v29 = sub_22B207EFC();
    v1[39] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v30 = swift_allocObject();
    v1[40] = v30;
    *(v30 + 16) = xmmword_22B363650;
    *(v30 + 32) = [v1[11] objectID];
    v31 = swift_task_alloc();
    v1[41] = v31;
    v31[2] = v28;
    v31[3] = v30;
    v31[4] = v29;
    v31[5] = v26;
    v32 = *(MEMORY[0x277D85A40] + 4);
    v18 = swift_task_alloc();
    v1[42] = v18;
    *v18 = v1;
    v18[1] = sub_22B328A4C;
    v23 = sub_22B1D820C;
    v22 = 0x800000022B36C2C0;
    v25 = MEMORY[0x277D84F78] + 8;
    v19 = 0;
    v20 = 0;
    v21 = 0xD000000000000044;
    v24 = v31;
  }

  return MEMORY[0x2822008A0](v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_22B328A4C()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v8 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = sub_22B328B70;
  }

  else
  {
    v5 = *(v2 + 320);
    v6 = *(v2 + 328);

    v4 = sub_22B328C10;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B328B70()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);

  v3 = *(v0 + 344);
  v4 = *(v0 + 328);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);
  v7 = *(v0 + 264);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22B328C10()
{
  v24 = v0;

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 192);
  v5 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 256);
  v9 = *(v0 + 264);
  v11 = *(v0 + 248);
  if (v8)
  {
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_22B1A7B20(v13, v12, &v23);
    _os_log_impl(&dword_22B116000, v6, v7, "[UsagePointRecords] Added to share for %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  (*(v10 + 8))(v9, v11);
  v16 = *(v0 + 344);
  v17 = *(v0 + 96);
  *(swift_task_alloc() + 16) = v17;
  sub_22B360E7C();
  v19 = *(v0 + 296);
  v18 = *(v0 + 304);
  v20 = *(v0 + 264);

  v21 = *(v0 + 8);

  return v21();
}

void sub_22B328E74(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v48 = a7;
  v49 = a8;
  v50 = sub_22B35DE9C();
  v22 = *(v50 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v50);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35F86C();
  v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v27 = *a1;
  *a1 = v26;
  v28 = v26;

  if (*(a3 + 112))
  {
    [a2 assignObject:v28 toPersistentStore:{a12, a13, a14, a15, a16, a17, a18, a19, v48, v49}];

    v29 = *a1;
    v30 = sub_22B36081C();
    [v29 setRecordID_];

    v31 = *a1;
    v32 = sub_22B36081C();
    [v31 setUsagePointID_];

    v33 = *a1;
    v34 = sub_22B35DCCC();
    [v33 setTariffProfiles_];

    v35 = *a1;
    v36 = sub_22B35DCCC();
    [v35 setTariffRiders_];

    v37 = *a1;
    v38 = sub_22B36081C();
    [v37 setZoneName_];

    v39 = *a1;
    sub_22B35DE8C();
    v40 = sub_22B35DDDC();
    (*(v22 + 8))(v25, v50);
    [v39 setCreationDate_];

    v41 = *a1;
    v42 = sub_22B36081C();
    [v41 setSubscriptionID_];

    v43 = *a1;
    v44 = sub_22B36081C();
    [v43 setUtilityID_];

    v45 = *a1;
    v46 = sub_22B35DDDC();
    [v45 setSourceTime_];
  }

  else
  {
    __break(1u);
  }
}

void sub_22B3291C4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v51 = a1;
  v52 = a3;
  v10 = sub_22B36052C();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v10);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  sub_22B35F86C();
  v16 = sub_22B35F85C();
  [v16 setResultType_];
  v53 = a2;
  if (a2 && a4)
  {
    v47 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22B3634C0;
    v17 = MEMORY[0x277D837D0];
    *(v6 + 56) = MEMORY[0x277D837D0];
    v18 = sub_22B1280E4();
    v19 = v52;
    v20 = v53;
    *(v6 + 32) = v51;
    *(v6 + 40) = v20;
    *(v6 + 96) = v17;
    *(v6 + 104) = v18;
    *(v6 + 64) = v18;
    *(v6 + 72) = v19;
    *(v6 + 80) = a4;

    v21 = sub_22B360CCC();
    [v16 setPredicate_];
  }

  v22 = sub_22B360E9C();
  if (v5)
  {

    return;
  }

  v23 = v22;
  v45 = v15;
  v46 = v16;
  if (v22 >> 62)
  {
    v24 = sub_22B36109C();
    if (!v24)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_14;
    }
  }

  if (v24 < 1)
  {
    __break(1u);
    goto LABEL_29;
  }

  for (i = 0; i != v24; ++i)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x23188EAC0](i, v23);
    }

    else
    {
      v26 = *(v23 + 8 * i + 32);
    }

    v27 = v26;
    [a5 deleteObject_];
  }

LABEL_14:

  sub_22B207390(4);
  v6 = v46;
  v28 = v53;
  if (!v53 || !a4)
  {
    v16 = v49;
    v15 = v50;
    if (qword_28140A0C8 == -1)
    {
LABEL_23:
      v38 = __swift_project_value_buffer(v15, qword_28140BD10);
      swift_beginAccess();
      v39 = v48;
      (*(v16 + 16))(v48, v38, v15);
      v40 = sub_22B36050C();
      v41 = sub_22B360D0C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = v6;
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_22B116000, v40, v41, "[UsagePointRecords] Deleted All", v43, 2u);
        v44 = v43;
        v6 = v42;
        MEMORY[0x23188F650](v44, -1, -1);
      }

      (*(v16 + 8))(v39, v15);
      goto LABEL_27;
    }

LABEL_29:
    swift_once();
    goto LABEL_23;
  }

  v30 = v49;
  v29 = v50;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v29, qword_28140BD10);
  swift_beginAccess();
  v32 = v45;
  (*(v30 + 16))(v45, v31, v29);

  v33 = sub_22B36050C();
  v34 = sub_22B360D0C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = v30;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v54 = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_22B1A7B20(v51, v28, &v54);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_22B1A7B20(v52, a4, &v54);
    _os_log_impl(&dword_22B116000, v33, v34, "[UsagePointRecords] Deleted %s for utility %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v37, -1, -1);
    v6 = v46;
    MEMORY[0x23188F650](v36, -1, -1);

    (*(v35 + 8))(v45, v50);
  }

  else
  {

    (*(v30 + 8))(v32, v29);
    v6 = v46;
  }

LABEL_27:
  [a5 refreshAllObjects];
}

void *sub_22B329784()
{
  type metadata accessor for UsagePointRecordsManager();
  v0 = swift_allocObject();
  result = sub_22B1D5830();
  qword_28140BCE8 = v0;
  return result;
}

uint64_t sub_22B3297C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[37] = a6;
  v7[38] = v6;
  v7[35] = a4;
  v7[36] = a5;
  v7[33] = a2;
  v7[34] = a3;
  v7[32] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610) - 8) + 64) + 15;
  v7[39] = swift_task_alloc();
  v9 = sub_22B36052C();
  v7[40] = v9;
  v10 = *(v9 - 8);
  v7[41] = v10;
  v11 = *(v10 + 64) + 15;
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v7[47] = swift_task_alloc();
  v12 = type metadata accessor for CDUsagePointRecords();
  v7[48] = v12;
  v13 = *(v12 - 8);
  v7[49] = v13;
  v14 = *(v13 + 64) + 15;
  v7[50] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF38, &qword_22B367598) - 8) + 64) + 15;
  v7[51] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6E8, &qword_22B365990) - 8) + 64) + 15;
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();
  v17 = sub_22B35DE9C();
  v7[55] = v17;
  v18 = *(v17 - 8);
  v7[56] = v18;
  v7[57] = *(v18 + 64);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v19 = sub_22B3603AC();
  v7[60] = v19;
  v20 = *(v19 - 8);
  v7[61] = v20;
  v21 = *(v20 + 64) + 15;
  v7[62] = swift_task_alloc();
  v22 = *(*(sub_22B3603FC() - 8) + 64) + 15;
  v7[63] = swift_task_alloc();
  v23 = sub_22B35F84C();
  v7[64] = v23;
  v24 = *(v23 - 8);
  v7[65] = v24;
  v25 = *(v24 + 64) + 15;
  v7[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B329B38, v6, 0);
}

uint64_t sub_22B329B38()
{
  v135 = v0;
  v1 = v0;
  v2 = v0[32];
  if (sub_22B360F5C() == 0x696F506567617355 && v3 == 0xEA0000000000746ELL)
  {
  }

  else
  {
    v5 = sub_22B36134C();

    if ((v5 & 1) == 0)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v6 = v0[43];
      v7 = v0[40];
      v8 = v0[41];
      v9 = __swift_project_value_buffer(v1[40], qword_28140BD10);
      swift_beginAccess();
      (*(v8 + 16))(v6, v9, v7);
      v10 = sub_22B36050C();
      v11 = sub_22B360D1C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_22B116000, v10, v11, "[Dropbox Bridge] Record is not of type UsagePoint!", v12, 2u);
        MEMORY[0x23188F650](v12, -1, -1);
      }

      v13 = v1[43];
      v14 = v1[40];
      v15 = v1[41];

      (*(v15 + 8))(v13, v14);
      sub_22B134CDC();
      swift_allocError();
      v17 = 20;
LABEL_22:
      *v16 = v17;
      swift_willThrow();
LABEL_45:
      v105 = v1[66];
      v107 = v1[62];
      v106 = v1[63];
      v109 = v1[58];
      v108 = v1[59];
      v110 = v1;
      v111 = v1[54];
      v113 = v110[52];
      v112 = v110[53];
      v115 = v110[50];
      v114 = v110[51];
      v124 = v110[47];
      v125 = v110[46];
      v126 = v110[45];
      v127 = v110[44];
      v128 = v110[43];
      v129 = v110[42];
      v130 = v110[39];

      v116 = v110[1];

      return v116();
    }
  }

  v18 = v0[38];
  v19 = v18[14];
  v1[67] = v19;
  if (!v19)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v27 = v1[44];
    v28 = v1[40];
    v29 = v1[41];
    v30 = __swift_project_value_buffer(v28, qword_28140BD10);
    swift_beginAccess();
    (*(v29 + 16))(v27, v30, v28);
    v31 = sub_22B36050C();
    v32 = sub_22B360D1C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22B116000, v31, v32, "[Dropbox Bridge] failed to get coredata model instance", v33, 2u);
      MEMORY[0x23188F650](v33, -1, -1);
    }

    v34 = v1[44];
    v35 = v1[40];
    v36 = v1[41];

    (*(v36 + 8))(v34, v35);
    sub_22B134CDC();
    swift_allocError();
    v17 = 13;
    goto LABEL_22;
  }

  v20 = v1[32];
  v21 = v18[15];
  v1[68] = v21;

  v22 = v21;
  sub_22B1CA368(v20, &v132);
  v23 = *(&v132 + 1);
  v1[69] = v132;
  v1[70] = v23;
  v24 = v133;
  *(v1 + 71) = v133;

  v25 = v18[16];
  v1[73] = v25;
  if (!v25)
  {

    sub_22B134CDC();
    swift_allocError();
    *v37 = 7;
    swift_willThrow();
    sub_22B11EDC0(v24, *(&v24 + 1));

    goto LABEL_45;
  }

  if (!v23)
  {
    v38 = v25;
    goto LABEL_25;
  }

  if (*(&v24 + 1) >> 60 == 15)
  {
    v26 = v25;

LABEL_25:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v39 = v1[45];
    v40 = v1[40];
    v41 = v1[41];
    v42 = __swift_project_value_buffer(v40, qword_28140BD10);
    swift_beginAccess();
    (*(v41 + 16))(v39, v42, v40);
    v43 = sub_22B36050C();
    v44 = sub_22B360D1C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_22B116000, v43, v44, "[Dropbox Bridge] UsagePoint Record is corrupted", v45, 2u);
      MEMORY[0x23188F650](v45, -1, -1);
    }

    v46 = v1[45];
    v47 = v1[40];
    v48 = v1[41];

    (*(v48 + 8))(v46, v47);
    sub_22B134CDC();
    v49 = swift_allocError();
    *v50 = 21;
    swift_willThrow();
LABEL_40:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v86 = v1[41];
    v85 = v1[42];
    v87 = v1[40];
    v88 = __swift_project_value_buffer(v87, qword_28140BD10);
    swift_beginAccess();
    (*(v86 + 16))(v85, v88, v87);
    v89 = v49;
    v90 = sub_22B36050C();
    v91 = sub_22B360D1C();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v92 = 138412290;
      v94 = v49;
      v95 = _swift_stdlib_bridgeErrorToNSError();
      *(v92 + 4) = v95;
      *v93 = v95;
      _os_log_impl(&dword_22B116000, v90, v91, "[Dropbox Bridge] Failed handle UsagePoint payload %@", v92, 0xCu);
      sub_22B123284(v93, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v93, -1, -1);
      MEMORY[0x23188F650](v92, -1, -1);
    }

    v96 = v1[73];
    v97 = v1[72];
    v98 = v1[71];
    v99 = v1[68];
    v100 = v1[67];
    v101 = v90;
    v103 = v1[41];
    v102 = v1[42];
    v104 = v1[40];

    (*(v103 + 8))(v102, v104);
    swift_willThrow();

    sub_22B11EDC0(v98, v97);

    goto LABEL_45;
  }

  v51 = v1[66];
  v53 = v1[63];
  v52 = v1[64];
  v134 = 0;
  v132 = 0u;
  v133 = 0u;
  sub_22B1D825C(v24, *(&v24 + 1));
  v54 = v25;
  sub_22B1D825C(v24, *(&v24 + 1));
  sub_22B3603EC();
  sub_22B332F4C(&qword_27D8BABB8, MEMORY[0x277D07448]);
  sub_22B36041C();
  v55 = v1[66];
  v56 = sub_22B35F70C();
  v58 = v57;

  v59 = HIBYTE(v58) & 0xF;
  if ((v58 & 0x2000000000000000) == 0)
  {
    v59 = v56 & 0xFFFFFFFFFFFFLL;
  }

  if (!v59 || (v60 = v1[66], v61 = *(sub_22B35F7EC() + 16), , !v61))
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v71 = v1[46];
    v72 = v1[40];
    v73 = v1[41];
    v74 = __swift_project_value_buffer(v72, qword_28140BD10);
    swift_beginAccess();
    (*(v73 + 16))(v71, v74, v72);
    v75 = sub_22B36050C();
    v76 = sub_22B360D1C();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_22B116000, v75, v76, "[Dropbox Bridge] UsagePoint Record Payload is corrupted", v77, 2u);
      MEMORY[0x23188F650](v77, -1, -1);
    }

    v131 = v1[66];
    v78 = v1[65];
    v79 = v1[64];
    v80 = v1[46];
    v81 = v1;
    v82 = v1[41];
    v83 = v81[40];

    (*(v82 + 8))(v80, v83);
    v1 = v81;
    sub_22B134CDC();
    v49 = swift_allocError();
    *v84 = 21;
    swift_willThrow();
    sub_22B11EDC0(v24, *(&v24 + 1));
    (*(v78 + 8))(v131, v79);
    goto LABEL_40;
  }

  v62 = v1[66];
  v63 = [v1[37] recordID];
  v64 = [v63 zoneID];

  v65 = [v64 zoneName];
  v66 = sub_22B36084C();
  v68 = v67;

  v1[74] = v66;
  v1[75] = v68;
  *(v1 + 13) = xmmword_22B366E20;
  *(v1 + 14) = xmmword_22B366E20;
  v69 = MEMORY[0x23188EEB0]();
  sub_22B32B924(v62, v1 + 28, v1 + 26, v1 + 30);
  v1[76] = 0;
  v70 = v1[66];
  v119 = v1[61];
  v118 = v1[62];
  v121 = v1[59];
  v120 = v1[60];
  objc_autoreleasePoolPop(v69);
  v1[77] = sub_22B35F70C();
  v1[78] = v122;
  v123 = *(v1 + 13);
  *(v1 + 79) = *(v1 + 14);
  *(v1 + 81) = v123;
  sub_22B35F72C();
  sub_22B36038C();
  (*(v119 + 8))(v118, v120);

  return MEMORY[0x2822009F8](sub_22B32A710, 0, 0);
}

uint64_t sub_22B32A710()
{
  v124 = v0;
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 584);
  v5 = *(v0 + 424);
  v7 = *(v0 + 384);
  v6 = *(v0 + 392);
  v8 = *(v0 + 264);
  v117 = v8;
  v120 = *(v0 + 280);
  *(v0 + 696) = 0;
  v9 = MEMORY[0x23188EEB0]();
  v10 = MEMORY[0x23188EEB0]();
  (*(v6 + 56))(v5, 1, 1, v7);
  *(v0 + 248) = 0;
  v11 = swift_task_alloc();
  *(v11 + 16) = v117;
  *(v11 + 32) = v120;
  *(v11 + 48) = v2;
  *(v11 + 56) = v1;
  *(v11 + 64) = v4;
  *(v11 + 72) = v5;
  *(v11 + 80) = v0 + 248;
  sub_22B360E7C();
  if (v3)
  {
    v12 = *(v0 + 624);
    v13 = *(v0 + 600);
    v14 = *(v0 + 560);
    v15 = *(v0 + 448);
    v16 = *(v0 + 424);

    sub_22B123284(v16, &qword_27D8BA6E8, &qword_22B365990);
    objc_autoreleasePoolPop(v10);
    objc_autoreleasePoolPop(v9);
    *(v0 + 688) = v3;
    v17 = *(v0 + 304);
    (*(v15 + 8))(*(v0 + 472), *(v0 + 440));
    v18 = sub_22B32B5FC;
LABEL_16:

    return MEMORY[0x2822009F8](v18, v17, 0);
  }

  v121 = v9;
  v118 = (v0 + 696);
  v20 = *(v0 + 424);
  v19 = *(v0 + 432);
  v22 = *(v0 + 408);
  v21 = *(v0 + 416);
  v23 = *(v0 + 392);
  v106 = *(v0 + 384);

  sub_22B170BE0(v20, v22, &qword_27D8BA6E8, &qword_22B365990);
  v113 = *(v0 + 248);
  sub_22B123284(v20, &qword_27D8BA6E8, &qword_22B365990);
  objc_autoreleasePoolPop(v10);
  sub_22B332B38(v22, v19);
  sub_22B170BE0(v19, v21, &qword_27D8BA6E8, &qword_22B365990);
  if ((*(v23 + 48))(v21, 1, v106) == 1)
  {
    v24 = (v0 + 416);
    sub_22B123284(*(v0 + 432), &qword_27D8BA6E8, &qword_22B365990);

LABEL_10:
    sub_22B123284(*v24, &qword_27D8BA6E8, &qword_22B365990);
    v41 = (v0 + 696);
    *v118 = 1;
    v46 = v121;
    goto LABEL_11;
  }

  v24 = (v0 + 432);
  sub_22B333058(*(v0 + 416), *(v0 + 400), type metadata accessor for CDUsagePointRecords);
  if (!v113)
  {
LABEL_9:
    sub_22B332FF8(*(v0 + 400), type metadata accessor for CDUsagePointRecords);
    goto LABEL_10;
  }

  v25 = *(v0 + 472);
  v26 = *(v0 + 440);
  v27 = *(v0 + 400);
  v28 = *(*(v0 + 384) + 32);
  sub_22B332F4C(&qword_28140B490, MEMORY[0x277CC9578]);
  v29 = v113;
  if (sub_22B36074C())
  {
    v110 = *(v0 + 656);
    v114 = *(v0 + 648);
    v97 = *(v0 + 632);
    v99 = *(v0 + 640);
    v30 = *(v0 + 584);
    v101 = v30;
    v31 = *(v0 + 472);
    v95 = *(v0 + 464);
    v33 = *(v0 + 448);
    v32 = *(v0 + 456);
    v34 = *(v0 + 440);
    v104 = *(v0 + 400);
    v107 = *(v0 + 432);
    (*(v33 + 16))();
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v36 = (v32 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    *(v38 + 16) = v30;
    *(v38 + 24) = v29;
    (*(v33 + 32))(v38 + v35, v95, v34);
    v39 = (v38 + v36);
    *v39 = v114;
    v39[1] = v110;
    v40 = (v38 + v37);
    *v40 = v97;
    v40[1] = v99;
    *(v38 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8)) = v118;
    v41 = (v0 + 696);
    v24 = swift_allocObject();
    v24[2] = sub_22B332D54;
    v24[3] = v38;
    *(v0 + 48) = sub_22B332E04;
    *(v0 + 56) = v24;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22B32556C;
    *(v0 + 40) = &block_descriptor_29;
    v42 = _Block_copy((v0 + 16));
    v43 = *(v0 + 56);
    v44 = v101;
    v45 = v29;
    sub_22B144B30(v114, v110);
    sub_22B144B30(v97, v99);

    [v44 performBlockAndWait_];
    _Block_release(v42);

    sub_22B332FF8(v104, type metadata accessor for CDUsagePointRecords);
    sub_22B123284(v107, &qword_27D8BA6E8, &qword_22B365990);
    LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

    v46 = v121;
    if ((v42 & 1) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v72 = *(v0 + 560);
  v73 = *(v0 + 376);
  v75 = *(v0 + 320);
  v74 = *(v0 + 328);
  v76 = __swift_project_value_buffer(v75, qword_28140BD10);
  swift_beginAccess();
  (*(v74 + 16))(v73, v76, v75);

  v77 = sub_22B36050C();
  v78 = sub_22B360D2C();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = *(v0 + 560);
    v80 = *(v0 + 552);
    v112 = *(v0 + 400);
    v116 = *(v0 + 432);
    v109 = *(v0 + 376);
    v82 = *(v0 + 320);
    v81 = *(v0 + 328);
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v123 = v84;
    *v83 = 136315138;
    *(v83 + 4) = sub_22B1A7B20(v80, v79, &v123);
    _os_log_impl(&dword_22B116000, v77, v78, "[UsagePointRecords] Newer record exists for %s. Skip insert", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v84);
    MEMORY[0x23188F650](v84, -1, -1);
    MEMORY[0x23188F650](v83, -1, -1);

    (*(v81 + 8))(v109, v82);
    sub_22B332FF8(v112, type metadata accessor for CDUsagePointRecords);
    v85 = v116;
  }

  else
  {
    v86 = *(v0 + 432);
    v87 = *(v0 + 400);
    v88 = *(v0 + 376);
    v90 = *(v0 + 320);
    v89 = *(v0 + 328);

    (*(v89 + 8))(v88, v90);
    sub_22B332FF8(v87, type metadata accessor for CDUsagePointRecords);
    v85 = v86;
  }

  sub_22B123284(v85, &qword_27D8BA6E8, &qword_22B365990);
  v46 = v121;
  v41 = (v0 + 696);
LABEL_11:
  objc_autoreleasePoolPop(v46);
  if (*v41 != 1)
  {
    v68 = *(v0 + 624);
    v69 = *(v0 + 600);
    v70 = *(v0 + 560);
    v71 = *(v0 + 448);
    sub_22B11EDC0(*(v0 + 568), *(v0 + 576));

    v17 = *(v0 + 304);
    (*(v71 + 8))(*(v0 + 472), *(v0 + 440));
    v18 = sub_22B32B450;
    goto LABEL_16;
  }

  v111 = *(v0 + 648);
  v115 = *(v0 + 656);
  v105 = *(v0 + 640);
  v100 = *(v0 + 624);
  v102 = *(v0 + 632);
  v98 = *(v0 + 616);
  *aBlock = *(v0 + 592);
  v47 = *(v0 + 584);
  v96 = *(v0 + 552);
  v48 = *(v0 + 544);
  v49 = *(v0 + 536);
  v51 = *(v0 + 464);
  v50 = *(v0 + 472);
  v52 = *(v0 + 448);
  v92 = *(v0 + 456);
  v53 = *(v0 + 440);
  v54 = *(v0 + 312);
  v119 = v54;
  v108 = *(v0 + 296);
  v122 = *(v0 + 288);
  v55 = *(v0 + 272);
  v93 = *(v0 + 264);
  v94 = *(v0 + 280);
  v56 = sub_22B360B6C();
  (*(*(v56 - 8) + 56))(v54, 1, 1, v56);
  (*(v52 + 16))(v51, v50, v53);
  v57 = (*(v52 + 80) + 168) & ~*(v52 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  *(v58 + 32) = v47;
  *(v58 + 40) = v49;
  *(v58 + 48) = v48;
  *(v58 + 56) = v96;
  *(v58 + 72) = v98;
  *(v58 + 80) = v100;
  *(v58 + 88) = v102;
  *(v58 + 96) = v105;
  *(v58 + 104) = v111;
  *(v58 + 112) = v115;
  *(v58 + 120) = *aBlock;
  *(v58 + 136) = v93;
  *(v58 + 144) = v55;
  *(v58 + 152) = v94;
  *(v58 + 160) = v122;
  (*(v52 + 32))(v58 + v57, v51, v53);
  *(v58 + ((v92 + v57 + 7) & 0xFFFFFFFFFFFFFFF8)) = v108;
  v59 = v47;
  sub_22B144B30(v111, v115);
  sub_22B144B30(v102, v105);

  v60 = v48;

  v61 = v108;
  v62 = sub_22B325DE8(0, 0, v119, &unk_22B3675A8, v58);
  *(v0 + 664) = v62;
  v63 = *(MEMORY[0x277D857C8] + 4);
  v64 = swift_task_alloc();
  *(v0 + 672) = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  *v64 = v0;
  v64[1] = sub_22B32B204;
  v66 = MEMORY[0x277D84950];
  v67 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v65, v62, v67, v65, v66);
}

uint64_t sub_22B32B204()
{
  v2 = *v1;
  v3 = *(*v1 + 672);
  v4 = *v1;
  v2[85] = v0;

  v5 = v2[83];
  if (v0)
  {

    v6 = sub_22B32B3CC;
  }

  else
  {
    sub_22B11EDC0(v2[71], v2[72]);

    v6 = sub_22B32B350;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B32B350()
{
  v1 = v0[38];
  (*(v0[56] + 8))(v0[59], v0[55]);

  return MEMORY[0x2822009F8](sub_22B32B450, v1, 0);
}

uint64_t sub_22B32B3CC()
{
  v0[86] = v0[85];
  v1 = v0[38];
  (*(v0[56] + 8))(v0[59], v0[55]);

  return MEMORY[0x2822009F8](sub_22B32B5FC, v1, 0);
}

uint64_t sub_22B32B450()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v8 = *(v0 + 504);
  v7 = *(v0 + 512);
  v9 = *(v0 + 496);
  v12 = *(v0 + 472);
  v13 = *(v0 + 464);
  v14 = *(v0 + 432);
  v15 = *(v0 + 424);
  v16 = *(v0 + 416);
  v17 = *(v0 + 408);
  v18 = *(v0 + 400);
  v19 = *(v0 + 376);
  v20 = *(v0 + 368);
  v21 = *(v0 + 360);
  v22 = *(v0 + 352);
  v23 = *(v0 + 344);
  v24 = *(v0 + 336);
  v25 = *(v0 + 312);

  sub_22B11EDC0(v2, v1);
  (*(v6 + 8))(v5, v7);
  sub_22B12F174(*(v0 + 224), *(v0 + 232));
  sub_22B12F174(*(v0 + 208), *(v0 + 216));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22B32B5FC()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  sub_22B11EDC0(v0[71], v0[72]);
  (*(v2 + 8))(v1, v3);
  sub_22B12F174(v0[28], v0[29]);
  sub_22B12F174(v0[26], v0[27]);
  v4 = v0[86];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = v0[41];
  v6 = v0[42];
  v7 = v0[40];
  v8 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  (*(v5 + 16))(v6, v8, v7);
  v9 = v4;
  v10 = sub_22B36050C();
  v11 = sub_22B360D1C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v4;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_22B116000, v10, v11, "[Dropbox Bridge] Failed handle UsagePoint payload %@", v12, 0xCu);
    sub_22B123284(v13, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  v16 = v0[73];
  v17 = v0[72];
  v18 = v0[71];
  v19 = v0[68];
  v20 = v0[67];
  v21 = v10;
  v23 = v0[41];
  v22 = v0[42];
  v24 = v0[40];

  (*(v23 + 8))(v22, v24);
  swift_willThrow();

  sub_22B11EDC0(v18, v17);

  v25 = v0[66];
  v27 = v0[62];
  v26 = v0[63];
  v29 = v0[58];
  v28 = v0[59];
  v30 = v0[53];
  v31 = v0[54];
  v33 = v0[51];
  v32 = v0[52];
  v34 = v0[50];
  v37 = v0[47];
  v38 = v0[46];
  v39 = v0[45];
  v40 = v0[44];
  v41 = v0[43];
  v42 = v0[42];
  v43 = v0[39];

  v35 = v0[1];

  return v35();
}

uint64_t sub_22B32B924(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v65 = a4;
  v5 = v4;
  v62 = a3;
  v63 = a2;
  v74[1] = *MEMORY[0x277D85DE8];
  v7 = sub_22B35F74C();
  v8 = *(v7 - 8);
  v67 = v7;
  v68 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v66 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B35F7CC();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1;
  v16 = sub_22B35F7EC();
  v17 = v16;
  v73 = *(v16 + 16);
  if (v73)
  {
    v18 = 0;
    v71 = v12 + 16;
    v72 = (v12 + 8);
    v19 = MEMORY[0x277D84F90];
    v69 = v16;
    v70 = v11;
    while (1)
    {
      if (v18 >= *(v17 + 16))
      {
        __break(1u);
LABEL_29:
        __break(1u);
      }

      (*(v12 + 16))(v15, v17 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v18, v11);
      sub_22B332F4C(&qword_27D8BAF28, MEMORY[0x277D07438]);
      v20 = sub_22B36042C();
      if (v5)
      {
        break;
      }

      v22 = v20;
      v23 = v21;
      (*v72)(v15, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_22B32D0BC(0, *(v19 + 2) + 1, 1, v19);
      }

      v25 = *(v19 + 2);
      v24 = *(v19 + 3);
      if (v25 >= v24 >> 1)
      {
        v19 = sub_22B32D0BC((v24 > 1), v25 + 1, 1, v19);
      }

      ++v18;
      *(v19 + 2) = v25 + 1;
      v26 = &v19[16 * v25];
      *(v26 + 4) = v22;
      *(v26 + 5) = v23;
      v5 = 0;
      v17 = v69;
      v11 = v70;
      if (v73 == v18)
      {
        goto LABEL_10;
      }
    }

    (*v72)(v15, v11);

    v45 = v5;
    goto LABEL_26;
  }

LABEL_10:

  v27 = objc_opt_self();
  v28 = sub_22B360A3C();

  v74[0] = 0;
  v29 = [v27 archivedDataWithRootObject:v28 requiringSecureCoding:0 error:v74];

  v30 = v74[0];
  if (!v29)
  {
    goto LABEL_24;
  }

  v70 = v27;
  v31 = sub_22B35DCDC();
  v33 = v32;

  v34 = v63;
  v35 = *v63;
  v36 = v63[1];
  *v63 = v31;
  v34[1] = v33;
  sub_22B12F174(v35, v36);
  v37 = sub_22B35F80C();
  v73 = *(v37 + 16);
  if (v73)
  {
    v38 = 0;
    v71 = v68 + 16;
    v72 = (v68 + 8);
    v39 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v38 >= *(v37 + 16))
      {
        goto LABEL_29;
      }

      v40 = v67;
      v41 = v37;
      v42 = v66;
      (*(v68 + 16))(v66, v37 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v38, v67);
      sub_22B332F4C(&qword_27D8BAF18, MEMORY[0x277D07428]);
      v43 = sub_22B36042C();
      v45 = v5;
      if (v5)
      {
        break;
      }

      v46 = v43;
      v47 = v44;
      (*v72)(v42, v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_22B32D0BC(0, *(v39 + 2) + 1, 1, v39);
      }

      v37 = v41;
      v49 = *(v39 + 2);
      v48 = *(v39 + 3);
      if (v49 >= v48 >> 1)
      {
        v39 = sub_22B32D0BC((v48 > 1), v49 + 1, 1, v39);
        v37 = v41;
      }

      ++v38;
      *(v39 + 2) = v49 + 1;
      v50 = &v39[16 * v49];
      *(v50 + 4) = v46;
      *(v50 + 5) = v47;
      v5 = 0;
      if (v73 == v38)
      {
        goto LABEL_22;
      }
    }

    (*v72)(v42, v40);

    goto LABEL_26;
  }

LABEL_22:

  v52 = sub_22B360A3C();

  v74[0] = 0;
  v53 = [v70 archivedDataWithRootObject:v52 requiringSecureCoding:0 error:v74];

  v30 = v74[0];
  if (!v53)
  {
LABEL_24:
    v60 = v30;
    v45 = sub_22B35DB9C();

    result = swift_willThrow();
LABEL_26:
    *v65 = v45;
    goto LABEL_27;
  }

  v54 = sub_22B35DCDC();
  v56 = v55;

  v57 = v62;
  v58 = *v62;
  v59 = v62[1];
  *v62 = v54;
  v57[1] = v56;
  result = sub_22B12F174(v58, v59);
LABEL_27:
  v61 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22B32BF44(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v5;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a1;
  v9 = sub_22B36052C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_28140BD10);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);

  v15 = sub_22B36050C();
  v16 = sub_22B360D2C();

  v17 = os_log_type_enabled(v15, v16);
  v31 = a2;
  if (v17)
  {
    v18 = a2;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30[1] = v6;
    v21 = v20;
    v36 = v20;
    *v19 = 136380675;
    *(v19 + 4) = sub_22B1A7B20(v35, v18, &v36);
    _os_log_impl(&dword_22B116000, v15, v16, "Get usagepoint for %{private}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x23188F650](v21, -1, -1);
    MEMORY[0x23188F650](v19, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  if (*(v7 + 112))
  {
    v22 = *(v7 + 128);
    if (v22)
    {
      v23 = *(v7 + 120);
      sub_22B1231A0(*(v7 + 112), v23);
      v24 = v22;
      v25 = MEMORY[0x23188EEB0]();
      MEMORY[0x28223BE20](v25);
      v27 = v31;
      v26 = v32;
      v30[-6] = v35;
      v30[-5] = v27;
      v30[-4] = v26;
      v30[-3] = v33;
      v30[-2] = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6E8, &qword_22B365990);
      sub_22B360E7C();
      objc_autoreleasePoolPop(v25);
    }

    else
    {
      sub_22B134CDC();
      swift_allocError();
      *v29 = 7;
      swift_willThrow();
    }
  }

  else
  {
    v28 = type metadata accessor for CDUsagePointRecords();
    (*(*(v28 - 8) + 56))(v34, 1, 1, v28);
  }
}

void sub_22B32C2B8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v35 = a5;
  v36 = a6;
  v37 = a3;
  v38 = a1;
  v11 = sub_22B36052C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_28140BD10);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);

  v17 = sub_22B36050C();
  v18 = sub_22B360D2C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = v7;
    v20 = v19;
    v21 = swift_slowAlloc();
    v33 = v8;
    v22 = a4;
    v23 = v21;
    v39 = v21;
    *v20 = 136380675;
    *(v20 + 4) = sub_22B1A7B20(v38, a2, &v39);
    _os_log_impl(&dword_22B116000, v17, v18, "Get usagepoint for %{private}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v24 = v23;
    a4 = v22;
    v8 = v33;
    MEMORY[0x23188F650](v24, -1, -1);
    MEMORY[0x23188F650](v20, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  if (*(v8 + 112))
  {
    v25 = *(v8 + 128);
    if (v25)
    {
      v26 = *(v8 + 120);
      sub_22B1231A0(*(v8 + 112), v26);
      v27 = v25;
      v28 = MEMORY[0x23188EEB0]();
      MEMORY[0x28223BE20](v28);
      v29 = v36;
      *(&v32 - 8) = v35;
      *(&v32 - 7) = v29;
      v30 = v37;
      *(&v32 - 6) = v38;
      *(&v32 - 5) = a2;
      *(&v32 - 4) = v30;
      *(&v32 - 3) = a4;
      *(&v32 - 2) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF10, &unk_22B367570);
      sub_22B360E7C();
      objc_autoreleasePoolPop(v28);
    }

    else
    {
      sub_22B134CDC();
      swift_allocError();
      *v31 = 7;
      swift_willThrow();
    }
  }
}

uint64_t sub_22B32C61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_22B36052C();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B32C6E4, v4, 0);
}

uint64_t sub_22B32C6E4()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Delete usage point", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);

  (*(v9 + 8))(v8, v10);
  v12 = *(v11 + 112);
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = *(*(v0 + 72) + 128);
  if (v13)
  {
    v14 = *(v11 + 120);
    v16 = *(v0 + 56);
    v15 = *(v0 + 64);
    v25 = *(v0 + 40);
    sub_22B1231A0(v12, v14);
    v17 = v13;
    v18 = MEMORY[0x23188EEB0]();
    v19 = swift_task_alloc();
    *(v19 + 16) = v25;
    *(v19 + 32) = v16;
    *(v19 + 40) = v15;
    *(v19 + 48) = v17;
    sub_22B360E7C();

    objc_autoreleasePoolPop(v18);

LABEL_8:
    v20 = *(v0 + 96);

    v21 = *(v0 + 8);
    goto LABEL_10;
  }

  sub_22B134CDC();
  swift_allocError();
  *v22 = 7;
  swift_willThrow();
  v23 = *(v0 + 96);

  v21 = *(v0 + 8);
LABEL_10:

  return v21();
}

uint64_t sub_22B32C964(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a1;
  v9 = sub_22B36052C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_28140BD10);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);

  v15 = sub_22B36050C();
  v16 = sub_22B360D2C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a3;
    v18 = a4;
    v19 = v17;
    v20 = swift_slowAlloc();
    v31 = v20;
    *v19 = 136380675;
    *(v19 + 4) = sub_22B1A7B20(v30, a2, &v31);
    _os_log_impl(&dword_22B116000, v15, v16, "Get usagepoint count for %{private}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x23188F650](v20, -1, -1);
    v21 = v19;
    a4 = v18;
    a3 = v29;
    MEMORY[0x23188F650](v21, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v22 = v5[14];
  if (!v22)
  {
    return 0;
  }

  v23 = v5[16];
  if (!v23)
  {
    return 0;
  }

  v24 = v5[15];
  sub_22B1231A0(v22, v24);
  v25 = v23;
  v26 = MEMORY[0x23188EEB0]();
  MEMORY[0x28223BE20](v26);
  *(&v28 - 6) = v30;
  *(&v28 - 5) = a2;
  *(&v28 - 4) = a3;
  *(&v28 - 3) = a4;
  *(&v28 - 2) = v25;
  sub_22B360E7C();
  objc_autoreleasePoolPop(v26);

  return v31;
}

char *sub_22B32CD20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA228, &qword_22B367FF0);
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

char *sub_22B32CE54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAFD8, &qword_22B367698);
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

void *sub_22B32CF60(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB028, &qword_22B3676F8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB030, &unk_22B367700);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B32D0BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF40, &unk_22B3675B8);
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

size_t sub_22B32D254(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF58, &qword_22B3675D8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA828, qword_22B365C20) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA828, qword_22B365C20) - 8);
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

char *sub_22B32D584(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAFE8, &unk_22B3676A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_22B32D69C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_22B32D838(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF90, &unk_22B367630);
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

char *sub_22B32D944(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF68, &qword_22B3675F0);
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

size_t sub_22B32DAC8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_22B32DCA4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA228, &qword_22B367FF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

size_t sub_22B32DD28(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF80, &unk_22B367618);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA870, &unk_22B366480) - 8);
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

void *sub_22B32DE30(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t type metadata accessor for CDUsagePointRecords()
{
  result = qword_27D8BB038;
  if (!qword_27D8BB038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B32DF50(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22B36149C();
  sub_22B3608FC();
  v9 = sub_22B3614DC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_22B36134C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_22B3302AC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22B32E0A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v43 = *v2;
  v5 = *(*v2 + 40);
  sub_22B36149C();
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v41 = a2;
  v13 = *(a2 + 56);
  v12 = *(a2 + 64);
  sub_22B3608FC();
  v50 = v4;
  sub_22B3614CC();
  v48 = v9;
  v49 = v8;
  sub_22B3608FC();
  v46 = v11;
  v47 = v10;
  sub_22B3608FC();
  v44 = v12;
  v45 = v13;
  sub_22B3608FC();
  v14 = sub_22B3614DC();
  v15 = -1 << *(v43 + 32);
  v16 = v14 & ~v15;
  if ((*(v43 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v51 = ~v15;
    v52 = *(v43 + 48);
    while (1)
    {
      v17 = v52 + 72 * v16;
      v18 = *(v17 + 16);
      v20 = *(v17 + 24);
      v19 = *(v17 + 32);
      v21 = *(v17 + 40);
      v22 = *(v17 + 48);
      v24 = *(v17 + 56);
      v23 = *(v17 + 64);
      v25 = *v17 == v6 && *(v17 + 8) == v7;
      if (v25 || (sub_22B36134C()) && v18 == v50)
      {
        v26 = v20 == v49 && v19 == v48;
        if (v26 || (sub_22B36134C() & 1) != 0)
        {
          v27 = v21 == v47 && v22 == v46;
          if (v27 || (sub_22B36134C() & 1) != 0)
          {
            v28 = v24 == v45 && v23 == v44;
            if (v28 || (sub_22B36134C() & 1) != 0)
            {
              break;
            }
          }
        }
      }

      v16 = (v16 + 1) & v51;
      if (((*(v43 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    sub_22B172074(v41);
    v29 = *(v43 + 48) + 72 * v16;
    v54[0] = *v29;
    v31 = *(v29 + 32);
    v30 = *(v29 + 48);
    v32 = *(v29 + 64);
    v54[1] = *(v29 + 16);
    v54[2] = v31;
    v55 = v32;
    v54[3] = v30;
    v33 = *(v29 + 48);
    *(a1 + 32) = *(v29 + 32);
    *(a1 + 48) = v33;
    *(a1 + 64) = *(v29 + 64);
    v34 = *(v29 + 16);
    *a1 = *v29;
    *(a1 + 16) = v34;
    sub_22B2020A4(v54, v53);
    return 0;
  }

  else
  {
LABEL_26:
    v36 = *v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53[0] = *v40;
    sub_22B2020A4(v41, v54);
    sub_22B33042C(v41, v16, isUniquelyReferenced_nonNull_native);
    *v40 = v53[0];
    v38 = *(v41 + 48);
    *(a1 + 32) = *(v41 + 32);
    *(a1 + 48) = v38;
    *(a1 + 64) = *(v41 + 64);
    v39 = *(v41 + 16);
    result = 1;
    *a1 = *v41;
    *(a1 + 16) = v39;
  }

  return result;
}

uint64_t sub_22B32E3B4(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_22B3610AC();

    if (v17)
    {

      sub_22B128014(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_22B36109C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_22B32EEC8(v15, result + 1, a5, a6, a3, a4);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_22B32F640(v30 + 1, a5, a6);
        }

        v31 = v16;
        sub_22B330228(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_22B128014(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_22B360FAC();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_22B360FBC();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_22B3306DC(v28, v22, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_22B32E628(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22B35DF1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22B332F4C(&unk_27D8BA320, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_22B36071C();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_22B332F4C(&qword_27D8BA718, MEMORY[0x277CC95F0]);
      v23 = sub_22B36078C();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_22B33086C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_22B32E908(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v4 = type metadata accessor for SessionKey(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v38 = &v38 - v10;
  v39 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22B36149C();
  sub_22B35DF1C();
  sub_22B332F4C(&unk_27D8BA320, MEMORY[0x277CC95F0]);
  sub_22B36072C();
  v13 = v4[5];
  sub_22B36072C();
  v14 = (a2 + v4[6]);
  v15 = *v14;
  v46 = v14[1];
  v47 = v15;
  sub_22B3608FC();
  v16 = (a2 + v4[7]);
  v17 = *v16;
  v44 = v16[1];
  v45 = v17;
  sub_22B3608FC();
  v18 = (a2 + v4[8]);
  v19 = *v18;
  v42 = v18[1];
  v43 = v19;
  sub_22B3608FC();
  v41 = v4[9];
  sub_22B36072C();
  v20 = sub_22B3614DC();
  v21 = -1 << *(v11 + 32);
  v22 = v20 & ~v21;
  if ((*(v11 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
  {
    v23 = ~v21;
    v24 = *(v5 + 72);
    while (1)
    {
      sub_22B332F94(*(v11 + 48) + v24 * v22, v8);
      if (sub_22B35DEEC())
      {
        v26 = v4[5];
        if (sub_22B35DEEC())
        {
          v27 = &v8[v4[6]];
          v28 = *v27 == v47 && *(v27 + 1) == v46;
          if (v28 || (sub_22B36134C() & 1) != 0)
          {
            v29 = &v8[v4[7]];
            v30 = *v29 == v45 && *(v29 + 1) == v44;
            if (v30 || (sub_22B36134C() & 1) != 0)
            {
              v31 = &v8[v4[8]];
              v32 = *v31 == v43 && *(v31 + 1) == v42;
              if (v32 || (sub_22B36134C() & 1) != 0)
              {
                v25 = &v8[v4[9]];
                if (sub_22B35DEEC())
                {
                  break;
                }
              }
            }
          }
        }
      }

      sub_22B332FF8(v8, type metadata accessor for SessionKey);
      v22 = (v22 + 1) & v23;
      if (((*(v11 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    sub_22B332FF8(v8, type metadata accessor for SessionKey);
    sub_22B332FF8(a2, type metadata accessor for SessionKey);
    sub_22B332F94(*(v11 + 48) + v24 * v22, v40);
    return 0;
  }

  else
  {
LABEL_23:
    v33 = v39;
    v34 = *v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v38;
    sub_22B332F94(a2, v38);
    v48 = *v33;
    sub_22B330B10(v36, v22, isUniquelyReferenced_nonNull_native);
    *v33 = v48;
    sub_22B333058(a2, v40, type metadata accessor for SessionKey);
    return 1;
  }
}

uint64_t sub_22B32ECCC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_22B36149C();
  sub_22B3608FC();
  sub_22B3608FC();
  v12 = sub_22B3614DC();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v30 = v10;
    v17 = *(v10 + 48);
    while (1)
    {
      v18 = (v17 + 32 * v15);
      v19 = v18[2];
      v20 = v18[3];
      v21 = *v18 == a2 && v18[1] == a3;
      if (v21 || (sub_22B36134C() & 1) != 0)
      {
        v22 = v19 == a4 && v20 == a5;
        if (v22 || (sub_22B36134C() & 1) != 0)
        {
          break;
        }
      }

      v15 = (v15 + 1) & v16;
      if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v23 = (*(v30 + 48) + 32 * v15);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    *a1 = *v23;
    a1[1] = v24;
    a1[2] = v25;
    a1[3] = v26;

    return 0;
  }

  else
  {
LABEL_15:
    v28 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v31;

    sub_22B330ED8(a2, a3, a4, a5, v15, isUniquelyReferenced_nonNull_native);
    *v31 = v33;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_22B32EEC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_22B36113C();
    v24 = v10;
    sub_22B36108C();
    if (sub_22B3610BC())
    {
      sub_22B128014(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_22B32F640(v18 + 1, a3, a4);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_22B360FAC();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_22B3610BC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_22B32F0C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE28, &unk_22B367090);
  result = sub_22B36112C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_22B36149C();
      sub_22B3608FC();
      result = sub_22B3614DC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22B32F328(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAFD0, &qword_22B367690);
  v5 = sub_22B36112C();
  v6 = v5;
  if (*(v3 + 16))
  {
    v7 = 0;
    v40 = (v3 + 56);
    v41 = v3;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v38 = v1;
    v39 = (v8 + 63) >> 6;
    v11 = v5 + 56;
    v42 = v5;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v43 = (v10 - 1) & v10;
LABEL_17:
      v18 = *(v3 + 48) + 72 * (v14 | (v7 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v44 = *(v18 + 16);
      v45 = *(v18 + 18);
      v46 = *(v18 + 22);
      v21 = *(v18 + 24);
      v22 = *(v18 + 32);
      v23 = *(v18 + 40);
      v24 = *(v18 + 48);
      v25 = *(v18 + 56);
      v26 = *(v18 + 64);
      v27 = *(v6 + 40);
      sub_22B36149C();
      sub_22B3608FC();
      sub_22B3614CC();
      sub_22B3608FC();
      sub_22B3608FC();
      sub_22B3608FC();
      result = sub_22B3614DC();
      v6 = v42;
      v28 = -1 << *(v42 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v11 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v11 + 8 * v30);
          if (v34 != -1)
          {
            v12 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v29) & ~*(v11 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v42 + 48) + 72 * v12;
      *v13 = v19;
      *(v13 + 8) = v20;
      *(v13 + 16) = v44;
      *(v13 + 18) = v45;
      *(v13 + 22) = v46;
      *(v13 + 24) = v21;
      *(v13 + 32) = v22;
      *(v13 + 40) = v23;
      *(v13 + 48) = v24;
      *(v13 + 56) = v25;
      *(v13 + 64) = v26;
      ++*(v42 + 16);
      v3 = v41;
      v10 = v43;
    }

    v15 = v7;
    result = v40;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v39)
      {
        break;
      }

      v17 = v40[v7];
      ++v15;
      if (v17)
      {
        v14 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v35 = 1 << *(v3 + 32);
    if (v35 >= 64)
    {
      v36 = v6;
      bzero(v40, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v6 = v36;
    }

    else
    {
      *v40 = -1 << v35;
    }

    v2 = v38;
    *(v3 + 16) = 0;
  }

  v37 = v6;

  *v2 = v37;
  return result;
}

uint64_t sub_22B32F640(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22B36112C();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_22B360FAC();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_22B32F860(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22B35DF1C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA728, &unk_22B3659C0);
  result = sub_22B36112C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_22B332F4C(&unk_27D8BA320, MEMORY[0x277CC95F0]);
      result = sub_22B36071C();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_22B32FBBC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SessionKey(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAFF0, &qword_22B3676B8);
  result = sub_22B36112C();
  v11 = result;
  if (*(v8 + 16))
  {
    v46 = v2;
    v47 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v51 = (v16 - 1) & v16;
LABEL_17:
      v23 = *(v8 + 48);
      v50 = *(v48 + 72);
      sub_22B333058(v23 + v50 * (v20 | (v12 << 6)), v7, type metadata accessor for SessionKey);
      v24 = *(v11 + 40);
      sub_22B36149C();
      sub_22B35DF1C();
      sub_22B332F4C(&unk_27D8BA320, MEMORY[0x277CC95F0]);
      sub_22B36072C();
      v25 = v49;
      v26 = &v7[v49[5]];
      sub_22B36072C();
      v27 = &v7[v25[6]];
      v28 = *v27;
      v29 = *(v27 + 1);
      sub_22B3608FC();
      v30 = &v7[v25[7]];
      v31 = *v30;
      v32 = *(v30 + 1);
      sub_22B3608FC();
      v33 = &v7[v25[8]];
      v34 = *v33;
      v35 = *(v33 + 1);
      sub_22B3608FC();
      v36 = &v7[v25[9]];
      sub_22B36072C();
      result = sub_22B3614DC();
      v37 = -1 << *(v11 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v18 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v8 = v47;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v18 + 8 * v39);
          if (v43 != -1)
          {
            v19 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v38) & ~*(v18 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v8 = v47;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_22B333058(v7, *(v11 + 48) + v19 * v50, type metadata accessor for SessionKey);
      ++*(v11 + 16);
      v16 = v51;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v51 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v44 = 1 << *(v8 + 32);
    if (v44 >= 64)
    {
      bzero(v13, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v44;
    }

    v2 = v46;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_22B32FFA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF88, &qword_22B367628);
  result = sub_22B36112C();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_22B36149C();
      sub_22B3608FC();
      sub_22B3608FC();
      result = sub_22B3614DC();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_22B330228(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_22B360FAC();
  v5 = -1 << *(a2 + 32);
  result = sub_22B36107C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_22B3302AC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22B32F0C8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22B3310A4();
      goto LABEL_16;
    }

    sub_22B331A80(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_22B36149C();
  sub_22B3608FC();
  result = sub_22B3614DC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22B36134C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22B3613AC();
  __break(1u);
  return result;
}

uint64_t sub_22B33042C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v39 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_33;
  }

  if (a3)
  {
    sub_22B32F328(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_22B331200();
      goto LABEL_33;
    }

    sub_22B331CDC(v6 + 1);
  }

  v8 = *(v5 + 16);
  v47 = *v3;
  v9 = *(*v3 + 40);
  sub_22B36149C();
  v10 = *v5;
  v11 = *(v5 + 8);
  v12 = *(v5 + 24);
  v13 = *(v5 + 32);
  v14 = *(v5 + 40);
  v15 = *(v5 + 48);
  v16 = *(v5 + 56);
  v17 = *(v5 + 64);
  sub_22B3608FC();
  v46 = v8;
  sub_22B3614CC();
  v44 = v13;
  v45 = v12;
  sub_22B3608FC();
  v42 = v15;
  v43 = v14;
  sub_22B3608FC();
  v40 = v17;
  v41 = v16;
  sub_22B3608FC();
  result = sub_22B3614DC();
  v18 = -1 << *(v47 + 32);
  a2 = result & ~v18;
  v50 = v47 + 56;
  if ((*(v47 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v49 = ~v18;
    v48 = *(v47 + 48);
    while (1)
    {
      v19 = v48 + 72 * a2;
      result = *v19;
      v20 = *(v19 + 16);
      v22 = *(v19 + 24);
      v21 = *(v19 + 32);
      v23 = *(v19 + 40);
      v24 = *(v19 + 48);
      v25 = *(v19 + 56);
      v26 = *(v19 + 64);
      v27 = *v19 == v10 && *(v19 + 8) == v11;
      if (v27 || (result = sub_22B36134C(), (result & 1) != 0))
      {
        if (v20 == v46)
        {
          v28 = v22 == v45 && v21 == v44;
          if (v28 || (result = sub_22B36134C(), (result & 1) != 0))
          {
            v29 = v23 == v43 && v24 == v42;
            if (v29 || (result = sub_22B36134C(), (result & 1) != 0))
            {
              if (v25 == v41 && v26 == v40)
              {
                break;
              }

              result = sub_22B36134C();
              if (result)
              {
                break;
              }
            }
          }
        }
      }

      a2 = (a2 + 1) & v49;
      if (((*(v50 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    result = sub_22B3613AC();
    __break(1u);
  }

LABEL_33:
  v31 = *v38;
  *(*v38 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v32 = *(v31 + 48) + 72 * a2;
  *(v32 + 64) = *(v39 + 64);
  v33 = *(v39 + 48);
  *(v32 + 32) = *(v39 + 32);
  *(v32 + 48) = v33;
  v34 = *(v39 + 16);
  *v32 = *v39;
  *(v32 + 16) = v34;
  v35 = *(v31 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v31 + 16) = v37;
  }

  return result;
}

void sub_22B3306DC(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_22B32F640(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_22B3313A4(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_22B331FD4(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_22B360FAC();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_22B128014(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_22B360FBC();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22B3613AC();
  __break(1u);
}

uint64_t sub_22B33086C(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_22B35DF1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22B32F860(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_22B3314E4();
      goto LABEL_12;
    }

    sub_22B3321E0(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_22B332F4C(&unk_27D8BA320, MEMORY[0x277CC95F0]);
  v16 = sub_22B36071C();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_22B332F4C(&qword_27D8BA718, MEMORY[0x277CC95F0]);
      v24 = sub_22B36078C();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22B3613AC();
  __break(1u);
  return result;
}

uint64_t sub_22B330B10(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for SessionKey(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v43 = v8;
  v44 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_30;
  }

  if (a3)
  {
    sub_22B32FBBC(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_22B33171C();
      goto LABEL_30;
    }

    sub_22B3324FC(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_22B36149C();
  sub_22B35DF1C();
  sub_22B332F4C(&unk_27D8BA320, MEMORY[0x277CC95F0]);
  sub_22B36072C();
  v16 = v7[5];
  sub_22B36072C();
  v17 = (a1 + v7[6]);
  v18 = v17[1];
  v47 = *v17;
  sub_22B3608FC();
  v19 = (a1 + v7[7]);
  v20 = *v19;
  v45 = v19[1];
  v46 = v20;
  sub_22B3608FC();
  v21 = (a1 + v7[8]);
  v22 = *v21;
  v41 = v21[1];
  v42 = v22;
  sub_22B3608FC();
  v40[1] = v7[9];
  sub_22B36072C();
  v23 = sub_22B3614DC();
  v24 = -1 << *(v14 + 32);
  a2 = v23 & ~v24;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v25 = ~v24;
    v26 = *(v8 + 72);
    do
    {
      sub_22B332F94(*(v14 + 48) + v26 * a2, v11);
      if (sub_22B35DEEC())
      {
        v28 = v7[5];
        if (sub_22B35DEEC())
        {
          v29 = &v11[v7[6]];
          v30 = *v29 == v47 && *(v29 + 1) == v18;
          if (v30 || (sub_22B36134C() & 1) != 0)
          {
            v31 = &v11[v7[7]];
            v32 = *v31 == v46 && *(v31 + 1) == v45;
            if (v32 || (sub_22B36134C() & 1) != 0)
            {
              v33 = &v11[v7[8]];
              v34 = *v33 == v42 && *(v33 + 1) == v41;
              if (v34 || (sub_22B36134C() & 1) != 0)
              {
                v27 = &v11[v7[9]];
                if (sub_22B35DEEC())
                {
                  goto LABEL_33;
                }
              }
            }
          }
        }
      }

      sub_22B332FF8(v11, type metadata accessor for SessionKey);
      a2 = (a2 + 1) & v25;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_30:
  v35 = *v44;
  *(*v44 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22B333058(a1, *(v35 + 48) + *(v43 + 72) * a2, type metadata accessor for SessionKey);
  v37 = *(v35 + 16);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (!v38)
  {
    *(v35 + 16) = v39;
    return result;
  }

  __break(1u);
LABEL_33:
  sub_22B332FF8(v11, type metadata accessor for SessionKey);
  result = sub_22B3613AC();
  __break(1u);
  return result;
}

uint64_t sub_22B330ED8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    sub_22B32FFA0(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_22B331914();
      goto LABEL_22;
    }

    sub_22B33289C(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  sub_22B36149C();
  sub_22B3608FC();
  sub_22B3608FC();
  result = sub_22B3614DC();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = result & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    while (1)
    {
      v20 = (v19 + 32 * a5);
      v21 = v20[2];
      v22 = v20[3];
      v23 = *v20 == v11 && v20[1] == a2;
      if (v23 || (result = sub_22B36134C(), (result & 1) != 0))
      {
        if (v21 == a3 && v22 == a4)
        {
          break;
        }

        result = sub_22B36134C();
        if (result)
        {
          break;
        }
      }

      a5 = (a5 + 1) & v18;
      if (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_22B3613AC();
    __break(1u);
  }

LABEL_22:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = v11;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

void *sub_22B3310A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE28, &unk_22B367090);
  v2 = *v0;
  v3 = sub_22B36111C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22B331200()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAFD0, &qword_22B367690);
  v2 = *v0;
  v3 = sub_22B36111C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 72 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[3];
        v24 = *(v18 + 8);
        v23[3] = v21;
        v23[0] = *v18;
        v23[1] = v20;
        v23[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x48uLL);
        result = sub_22B2020A4(v23, v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_22B3313A4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22B36111C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_22B3314E4()
{
  v1 = v0;
  v2 = sub_22B35DF1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA728, &unk_22B3659C0);
  v7 = *v0;
  v8 = sub_22B36111C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_22B33171C()
{
  v1 = v0;
  v2 = type metadata accessor for SessionKey(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAFF0, &qword_22B3676B8);
  v7 = *v0;
  v8 = sub_22B36111C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_22B332F94(*(v7 + 48) + v22, v6);
        result = sub_22B333058(v6, *(v9 + 48) + v22, type metadata accessor for SessionKey);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_22B331914()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF88, &qword_22B367628);
  v2 = *v0;
  v3 = sub_22B36111C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_22B331A80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE28, &unk_22B367090);
  result = sub_22B36112C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_22B36149C();

      sub_22B3608FC();
      result = sub_22B3614DC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22B331CDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAFD0, &qword_22B367690);
  result = sub_22B36112C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v33 = v2;
    v34 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v35 = v11;
    v36 = result;
    v37 = v3;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_17:
      v21 = *(v3 + 48) + 72 * (v18 | (v7 << 6));
      v23 = *(v21 + 32);
      v22 = *(v21 + 48);
      v24 = *(v21 + 16);
      v44 = *(v21 + 64);
      v42 = v23;
      v43 = v22;
      v40 = *v21;
      v41 = v24;
      v25 = *(v6 + 40);
      sub_22B36149C();
      sub_22B2020A4(&v40, v39);
      sub_22B3608FC();
      sub_22B3614CC();
      sub_22B3608FC();
      sub_22B3608FC();
      sub_22B3608FC();
      result = sub_22B3614DC();
      v6 = v36;
      v26 = -1 << *(v36 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v3 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v3 = v37;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v36 + 48) + 72 * v13;
      v15 = v41;
      v16 = v42;
      v17 = v43;
      *(v14 + 64) = v44;
      *(v14 + 32) = v16;
      *(v14 + 48) = v17;
      *(v14 + 16) = v15;
      *v14 = v40;
      ++*(v36 + 16);
      v11 = v35;
      v10 = v38;
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v20 = *(v34 + 8 * v7);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v38 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22B331FD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22B36112C();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_22B360FAC();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_22B3321E0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22B35DF1C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA728, &unk_22B3659C0);
  v10 = sub_22B36112C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_22B332F4C(&unk_27D8BA320, MEMORY[0x277CC95F0]);
      result = sub_22B36071C();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_22B3324FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SessionKey(0);
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAFF0, &qword_22B3676B8);
  result = sub_22B36112C();
  v11 = result;
  if (*(v8 + 16))
  {
    v45 = v2;
    v46 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v50 = (v16 - 1) & v16;
LABEL_17:
      v23 = *(v8 + 48);
      v49 = *(v47 + 72);
      sub_22B332F94(v23 + v49 * (v20 | (v12 << 6)), v7);
      v24 = *(v11 + 40);
      sub_22B36149C();
      sub_22B35DF1C();
      sub_22B332F4C(&unk_27D8BA320, MEMORY[0x277CC95F0]);
      sub_22B36072C();
      v25 = v48;
      v26 = &v7[v48[5]];
      sub_22B36072C();
      v27 = &v7[v25[6]];
      v28 = *v27;
      v29 = *(v27 + 1);
      sub_22B3608FC();
      v30 = &v7[v25[7]];
      v31 = *v30;
      v32 = *(v30 + 1);
      sub_22B3608FC();
      v33 = &v7[v25[8]];
      v34 = *v33;
      v35 = *(v33 + 1);
      sub_22B3608FC();
      v36 = &v7[v25[9]];
      sub_22B36072C();
      result = sub_22B3614DC();
      v37 = -1 << *(v11 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v18 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v8 = v46;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v18 + 8 * v39);
          if (v43 != -1)
          {
            v19 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v38) & ~*(v18 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v8 = v46;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_22B333058(v7, *(v11 + 48) + v19 * v49, type metadata accessor for SessionKey);
      ++*(v11 + 16);
      v16 = v50;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v45;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v50 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_22B33289C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAF88, &qword_22B367628);
  result = sub_22B36112C();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_22B36149C();

      sub_22B3608FC();
      sub_22B3608FC();
      result = sub_22B3614DC();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22B332B38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6E8, &qword_22B365990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B332BA8(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_22B35DE9C() - 8);
  v21 = *(v1 + 16);
  v20 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v18 = *(v1 + 88);
  v19 = *(v1 + 72);
  v16 = *(v1 + 120);
  v17 = *(v1 + 104);
  v15 = *(v1 + 136);
  v11 = *(v1 + 152);
  v10 = *(v1 + 160);
  v12 = *(v1 + ((*(v4 + 64) + ((*(v4 + 80) + 168) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22B119A60;

  return sub_22B3284FC(a1, v21, v20, v5, v6, v7, v8, v9);
}

void sub_22B332D54()
{
  v1 = *(sub_22B35DE9C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = (v0 + v3);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v4);
  v11 = *(v0 + v4 + 8);
  v12 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_22B327DA8(v5, v6, v0 + v2, v8, v9, v10, v11, v12);
}

uint64_t sub_22B332E04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22B332EDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6E8, &qword_22B365990);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B332F4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B332F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B332FF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B333058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22B3330E8()
{
  sub_22B3331D8(319, &qword_27D8BB048, MEMORY[0x277D07438]);
  if (v0 <= 0x3F)
  {
    sub_22B3331D8(319, &qword_27D8BB050, MEMORY[0x277D07428]);
    if (v1 <= 0x3F)
    {
      sub_22B35DE9C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22B3331D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22B360AAC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22B333238(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    sub_22B128014(0, &qword_281408590, 0x277CBE448);
    sub_22B338B80();
    v8 = sub_22B360C4C();
  }

  v11 = a3;
  v12 = a4;
  v13 = a5;
  v10(v8, a3, a4, a5);
}

void sub_22B333320()
{
  [v0 setQualityOfService_];
  v1 = [v0 configuration];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  [v1 setQualityOfService_];

  v3 = [v0 configuration];
  if (!v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = v3;
  [v3 setAutomaticallyRetryNetworkFailures_];

  v5 = [v0 configuration];
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  [v5 setTimeoutIntervalForResource_];

  v7 = [v0 configuration];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  [v7 setTimeoutIntervalForRequest_];

  v9 = [v0 configuration];
  if (!v9)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 setDiscretionaryNetworkBehavior_];
}

uint64_t sub_22B33347C()
{
  type metadata accessor for CloudKitContainerHelper();
  swift_allocObject();
  result = sub_22B3334BC(0);
  qword_28140BCF0 = result;
  return result;
}

uint64_t sub_22B3334BC(void *a1)
{
  v35 = a1;
  v1 = sub_22B36052C();
  v32 = *(v1 - 8);
  v33 = v1;
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v1);
  v31 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22B360EFC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_22B36062C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_22B360D8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B128014(0, &qword_281409290, 0x277D85C90);
  (*(v9 + 104))(v12, *MEMORY[0x277D85268], v8);
  sub_22B36060C();
  v36 = MEMORY[0x277D84F90];
  sub_22B338E08(&qword_281409298, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BACB0, &unk_22B366C20);
  sub_22B118A18(&qword_281409338, &qword_27D8BACB0, &unk_22B366C20);
  v13 = v34;
  sub_22B36104C();
  *(v13 + 24) = sub_22B360F0C();
  if (sub_22B35EEBC())
  {
    v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v15 = sub_22B36081C();
    v16 = [v14 initWithSuiteName_];

    if (v16)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v17 = v33;
      v18 = __swift_project_value_buffer(v33, qword_28140BD10);
      swift_beginAccess();
      v20 = v31;
      v19 = v32;
      (*(v32 + 16))(v31, v18, v17);
      v21 = sub_22B36050C();
      v22 = sub_22B360D2C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 67109376;
        *(v23 + 4) = 1;
        *(v23 + 8) = 1024;
        *(v23 + 10) = 0;
        _os_log_impl(&dword_22B116000, v21, v22, "[CloudKitHelper] Production: %{BOOL}d. Offline: %{BOOL}d", v23, 0xEu);
        MEMORY[0x23188F650](v23, -1, -1);
      }

      (*(v19 + 8))(v20, v17);
    }
  }

  v24 = v35;
  if (!v35)
  {
    v25 = objc_allocWithZone(MEMORY[0x277CBC220]);
    v26 = sub_22B36081C();
    v27 = [v25 initWithContainerIdentifier:v26 environment:1];

    v28 = [objc_allocWithZone(MEMORY[0x277CBC230]) init];
    [v28 setUseZoneWidePCS_];
    v29 = sub_22B36081C();
    [v28 setEncryptionServiceName_];

    [v28 setBypassPCSEncryption_];
    v24 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID:v27 options:v28];
  }

  *(v13 + 16) = v24;
  return v13;
}

void sub_22B333A14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB068, &unk_22B3677A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = aBlock - v8;
  v10 = *(a2 + 16);
  (*(v5 + 16))(aBlock - v8, a1, v4, v7);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);
  aBlock[4] = sub_22B3388D4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B333E4C;
  aBlock[3] = &block_descriptor_30;
  v13 = _Block_copy(aBlock);
  v14 = v10;

  [v14 accountInfoWithCompletionHandler_];
  _Block_release(v13);
}

uint64_t sub_22B333BD8(void *a1, void *a2)
{
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v24 = a2;
    v10 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB068, &unk_22B3677A0);
    return sub_22B360ADC();
  }

  if (!a1)
  {
    if (qword_28140A0C8 != -1)
    {
      v22 = v7;
      swift_once();
      v7 = v22;
    }

    v13 = v7;
    v14 = __swift_project_value_buffer(v7, qword_28140BD10);
    swift_beginAccess();
    v15 = v14;
    v16 = v13;
    (*(v5 + 16))(v9, v15, v13);
    v17 = sub_22B36050C();
    v18 = sub_22B360D1C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22B116000, v17, v18, "accountInfo didn't have a result or an error!", v19, 2u);
      MEMORY[0x23188F650](v19, -1, -1);
    }

    (*(v5 + 8))(v9, v16);
    sub_22B134CDC();
    v20 = swift_allocError();
    *v21 = 13;
    v23 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB068, &unk_22B3677A0);
    return sub_22B360ADC();
  }

  v24 = a1;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB068, &unk_22B3677A0);
  return sub_22B360AEC();
}

void sub_22B333E4C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_22B333ED8()
{
  v1[9] = v0;
  v2 = sub_22B36052C();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B333FA4, 0, 0);
}

uint64_t sub_22B333FA4()
{
  v1 = v0[9];
  v2 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
  v3 = sub_22B36081C();
  v4 = [v2 initWithZoneName_];
  v0[14] = v4;

  v0[15] = [*(v1 + 16) privateCloudDatabase];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v5 = swift_allocObject();
  v0[16] = v5;
  *(v5 + 16) = xmmword_22B363650;
  *(v5 + 32) = [v4 zoneID];
  v6 = *(MEMORY[0x277CBBE28] + 4);
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_22B33410C;

  return MEMORY[0x28210DE68](v5);
}

uint64_t sub_22B33410C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v9 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v5 = sub_22B334848;
  }

  else
  {
    v7 = v3[15];
    v6 = v3[16];

    v5 = sub_22B33422C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B33422C()
{
  v1 = *(v0 + 144);
  if (!*(v1 + 16))
  {
    v20 = *(v0 + 144);

LABEL_13:
    v23 = *(v0 + 112);
    v24 = *(v0 + 72);
    v25 = swift_task_alloc();
    *(v0 + 160) = v25;
    *(v25 + 16) = v23;
    *(v25 + 24) = v24;
    v26 = *(MEMORY[0x277D859E0] + 4);
    v27 = swift_task_alloc();
    *(v0 + 168) = v27;
    *v27 = v0;
    v27[1] = sub_22B3346C0;
    v28 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v27, 0, 0, 0xD000000000000015, 0x800000022B36EBA0, sub_22B338960, v25, v28);
  }

  v2 = [*(v0 + 112) zoneID];
  v3 = v2;
  if (!*(v1 + 16))
  {
    v21 = *(v0 + 144);
LABEL_12:

    goto LABEL_13;
  }

  v4 = sub_22B33B304(v2);
  if ((v5 & 1) == 0)
  {
    v22 = *(v0 + 144);
    goto LABEL_12;
  }

  v6 = *(*(v0 + 144) + 56) + 16 * v4;
  v7 = *v6;
  v8 = *(v6 + 8);
  sub_22B338968(*v6);

  if (v8)
  {
    *(v0 + 64) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    swift_willThrowTypedImpl();
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 88);
    v9 = *(v0 + 96);
    v11 = *(v0 + 80);
    v12 = __swift_project_value_buffer(v11, qword_28140BD10);
    swift_beginAccess();
    (*(v10 + 16))(v9, v12, v11);
    v13 = v7;
    v14 = sub_22B36050C();
    v15 = sub_22B360D1C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v7;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_22B116000, v14, v15, "Error fetching existing zones. %@", v16, 0xCu);
      sub_22B12F10C(v17);
      MEMORY[0x23188F650](v17, -1, -1);
      MEMORY[0x23188F650](v16, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    goto LABEL_13;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 104);
  v30 = *(v0 + 80);
  v31 = *(v0 + 88);
  v32 = __swift_project_value_buffer(v30, qword_28140BD10);
  swift_beginAccess();
  (*(v31 + 16))(v29, v32, v30);
  v33 = sub_22B36050C();
  v34 = sub_22B360D1C();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 104);
  v37 = *(v0 + 112);
  v38 = *(v0 + 80);
  v39 = *(v0 + 88);
  if (v35)
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_22B116000, v33, v34, "Bootstrap zone already exists", v40, 2u);
    MEMORY[0x23188F650](v40, -1, -1);
  }

  sub_22B1CCC58(v7);

  (*(v39 + 8))(v36, v38);
  v42 = *(v0 + 96);
  v41 = *(v0 + 104);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_22B3346C0()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B3347D8, 0, 0);
}

uint64_t sub_22B3347D8()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22B334848()
{
  v2 = v0[15];
  v1 = v0[16];

  v3 = v0[19];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = __swift_project_value_buffer(v6, qword_28140BD10);
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);
  v8 = v3;
  v9 = sub_22B36050C();
  v10 = sub_22B360D1C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v3;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_22B116000, v9, v10, "Error fetching existing zones. %@", v11, 0xCu);
    sub_22B12F10C(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[11] + 8))(v0[12], v0[10]);
  v15 = v0[14];
  v16 = v0[9];
  v17 = swift_task_alloc();
  v0[20] = v17;
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  v18 = *(MEMORY[0x277D859E0] + 4);
  v19 = swift_task_alloc();
  v0[21] = v19;
  *v19 = v0;
  v19[1] = sub_22B3346C0;
  v20 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v19, 0, 0, 0xD000000000000015, 0x800000022B36EBA0, sub_22B338960, v17, v20);
}

void sub_22B334AC4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA288, &unk_22B363A10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  sub_22B128014(0, &qword_281408570, 0x277CBC490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22B363650;
  *(v11 + 32) = a2;
  v12 = a2;
  v13 = sub_22B360F1C();
  sub_22B333320();
  (*(v7 + 16))(v10, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v10, v6);
  aBlock[4] = sub_22B338974;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B335120;
  aBlock[3] = &block_descriptor_15_0;
  v16 = _Block_copy(aBlock);

  [v13 setModifyRecordZonesCompletionBlock_];
  _Block_release(v16);
  v17 = [*(a3 + 16) privateCloudDatabase];
  [v17 addOperation_];
}

uint64_t sub_22B334D20(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33[-1] - v10;
  if (a3)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v8, v12, v4);
    v13 = a3;
    v14 = sub_22B36050C();
    v15 = sub_22B360D1C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = a3;
      v33[0] = v17;
      *v16 = 136315138;
      v18 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB070, &qword_22B3677B0);
      v19 = sub_22B3608BC();
      v21 = sub_22B1A7B20(v19, v20, v33);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_22B116000, v14, v15, "[CloudKitHelper] Error creating bootstrap zone - %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x23188F650](v17, -1, -1);
      MEMORY[0x23188F650](v16, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v22 = [objc_opt_self() processInfo];
    v23 = [v22 processName];

    v24 = sub_22B36084C();
    v26 = v25;

    LOWORD(v33[0]) = 259;
    BYTE2(v33[0]) = 11;
    v33[1] = v24;
    v33[2] = v26;
    v33[3] = 0;
    static AutoBugCaptureManager.sendIssue(_:)(v33);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v11, v27, v4);
    v28 = sub_22B36050C();
    v29 = sub_22B360D2C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22B116000, v28, v29, "[CloudKitHelper] Bootstrap record zone is created.", v30, 2u);
      MEMORY[0x23188F650](v30, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA288, &unk_22B363A10);
  return sub_22B360AEC();
}

uint64_t sub_22B335120(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_22B128014(0, &qword_281409328, 0x277CBC5E8);
    v6 = sub_22B360A5C();
  }

  if (a3)
  {
    sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
    a3 = sub_22B360A5C();
  }

  v9 = a4;
  v8(v6, a3, a4);
}

uint64_t sub_22B335200()
{
  v1[7] = v0;
  v2 = sub_22B36052C();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B3352C0, 0, 0);
}

uint64_t sub_22B3352C0()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  v3 = sub_22B128014(0, &qword_281409320, 0x277CBC160);
  *v2 = v0;
  v2[1] = sub_22B3353B4;
  v4 = *(v0 + 56);

  return MEMORY[0x2822008A0](v0 + 40, 0, 0, 0x49746E756F636361, 0xED000029286F666ELL, sub_22B3388CC, v4, v3);
}

uint64_t sub_22B3353B4()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_22B335548;
  }

  else
  {
    v3 = sub_22B3354C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B3354C8()
{
  v1 = v0[5];
  v2 = [v1 supportsDeviceToDeviceEncryption];

  v3 = v0[10];

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_22B335548()
{
  v25 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[8];
  if (v9)
  {
    v23 = v0[10];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_22B1A7B20(0xD000000000000014, 0x800000022B36EB50, &v24);
    *(v14 + 12) = 2082;
    v0[6] = v10;
    v16 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    v17 = sub_22B3608BC();
    v19 = sub_22B1A7B20(v17, v18, &v24);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_22B116000, v7, v8, "%{public}s error: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);

    (*(v11 + 8))(v23, v13);
  }

  else
  {

    (*(v11 + 8))(v12, v13);
  }

  v20 = v0[10];

  v21 = v0[1];

  return v21(0);
}

uint64_t sub_22B3357C4(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_22B36052C();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B335894, 0, 0);
}

uint64_t sub_22B335894()
{
  v1 = v0[12];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0[11] & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = v0[13];
    v4 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
    v5 = sub_22B36081C();
    v6 = [v4 initWithZoneName_];
    v0[18] = v6;

    v0[19] = [*(v3 + 16) privateCloudDatabase];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v7 = swift_allocObject();
    v0[20] = v7;
    *(v7 + 16) = xmmword_22B363650;
    *(v7 + 32) = [v6 zoneID];
    v8 = *(MEMORY[0x277CBBE28] + 4);
    v9 = swift_task_alloc();
    v0[21] = v9;
    *v9 = v0;
    v9[1] = sub_22B335B80;

    return MEMORY[0x28210DE68](v7);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v10 = v0[17];
    v11 = v0[14];
    v12 = v0[15];
    v13 = __swift_project_value_buffer(v11, qword_28140BD10);
    swift_beginAccess();
    (*(v12 + 16))(v10, v13, v11);
    v14 = sub_22B36050C();
    v15 = sub_22B360D1C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22B116000, v14, v15, "Received empty zone name", v16, 2u);
      MEMORY[0x23188F650](v16, -1, -1);
    }

    v17 = v0[17];
    v18 = v0[14];
    v19 = v0[15];

    (*(v19 + 8))(v17, v18);
    sub_22B134CDC();
    swift_allocError();
    *v20 = 13;
    swift_willThrow();
    v22 = v0[16];
    v21 = v0[17];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_22B335B80(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v9 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v5 = sub_22B33625C;
  }

  else
  {
    v7 = v3[19];
    v6 = v3[20];

    v5 = sub_22B335CA0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B335CA0()
{
  v1 = *(v0 + 176);
  if (!*(v1 + 16))
  {
    v17 = *(v0 + 176);

LABEL_13:
    v20 = *(v0 + 144);
    v21 = *(v0 + 104);
    v22 = swift_task_alloc();
    *(v0 + 192) = v22;
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    v23 = *(MEMORY[0x277D85A40] + 4);
    v24 = swift_task_alloc();
    *(v0 + 200) = v24;
    v25 = sub_22B128014(0, &qword_281409328, 0x277CBC5E8);
    *v24 = v0;
    v24[1] = sub_22B3360C4;

    return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD00000000000001BLL, 0x800000022B36EC10, sub_22B338D40, v22, v25);
  }

  v2 = [*(v0 + 144) zoneID];
  v3 = v2;
  if (!*(v1 + 16))
  {
    v18 = *(v0 + 176);
LABEL_12:

    goto LABEL_13;
  }

  v4 = sub_22B33B304(v2);
  if ((v5 & 1) == 0)
  {
    v19 = *(v0 + 176);
    goto LABEL_12;
  }

  v6 = *(*(v0 + 176) + 56) + 16 * v4;
  v7 = *v6;
  v8 = *(v6 + 8);
  sub_22B338968(*v6);

  if (v8)
  {
    *(v0 + 80) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    swift_willThrowTypedImpl();
    *(v0 + 64) = v7;
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    if (swift_dynamicCast())
    {
      v10 = *(v0 + 144);
      v11 = *(v0 + 216);
      sub_22B134CDC();
      swift_allocError();
      *v12 = v11;
      swift_willThrow();

      v14 = *(v0 + 128);
      v13 = *(v0 + 136);

      v15 = *(v0 + 8);

      return v15();
    }

    goto LABEL_13;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 120);
  v26 = *(v0 + 128);
  v28 = *(v0 + 112);
  v29 = __swift_project_value_buffer(v28, qword_28140BD10);
  swift_beginAccess();
  (*(v27 + 16))(v26, v29, v28);
  v30 = sub_22B36050C();
  v31 = sub_22B360D1C();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 144);
  v35 = *(v0 + 120);
  v34 = *(v0 + 128);
  v36 = *(v0 + 112);
  if (v32)
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_22B116000, v30, v31, "Zone already exists. Possible the site exists too. Halt.", v37, 2u);
    MEMORY[0x23188F650](v37, -1, -1);
  }

  (*(v35 + 8))(v34, v36);
  v39 = *(v0 + 128);
  v38 = *(v0 + 136);

  v40 = *(v0 + 8);

  return v40(v7);
}

uint64_t sub_22B3360C4()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_22B33645C;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_22B3361E0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B3361E0()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);

  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_22B33625C()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);

  v3 = *(v0 + 184);
  *(v0 + 64) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 144);
    v6 = *(v0 + 216);
    sub_22B134CDC();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();

    v9 = *(v0 + 128);
    v8 = *(v0 + 136);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {

    v12 = *(v0 + 144);
    v13 = *(v0 + 104);
    v14 = swift_task_alloc();
    *(v0 + 192) = v14;
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    v15 = *(MEMORY[0x277D85A40] + 4);
    v16 = swift_task_alloc();
    *(v0 + 200) = v16;
    v17 = sub_22B128014(0, &qword_281409328, 0x277CBC5E8);
    *v16 = v0;
    v16[1] = sub_22B3360C4;

    return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD00000000000001BLL, 0x800000022B36EC10, sub_22B338D40, v14, v17);
  }
}

uint64_t sub_22B33645C()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 208);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);

  v5 = *(v0 + 8);

  return v5();
}

void sub_22B3364DC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB078, &qword_22B3677B8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  sub_22B128014(0, &qword_281408570, 0x277CBC490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22B363650;
  *(v11 + 32) = a2;
  v12 = a2;
  v13 = sub_22B360F1C();
  sub_22B333320();
  (*(v7 + 16))(v10, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v10, v6);
  *(v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  aBlock[4] = sub_22B338D48;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B335120;
  aBlock[3] = &block_descriptor_53;
  v16 = _Block_copy(aBlock);
  v17 = v12;

  [v13 setModifyRecordZonesCompletionBlock_];
  _Block_release(v16);
  v18 = [*(a3 + 16) privateCloudDatabase];
  [v18 addOperation_];
}

uint64_t sub_22B336754(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = sub_22B36052C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v39 - v14;
  if (a3)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v8, qword_28140BD10);
    swift_beginAccess();
    (*(v9 + 16))(v12, v16, v8);
    v17 = a3;
    v18 = sub_22B36050C();
    v19 = sub_22B360D1C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39[1] = a4;
      v39[2] = a3;
      v22 = v21;
      v40[0] = v21;
      *v20 = 136315138;
      v23 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB070, &qword_22B3677B0);
      v24 = sub_22B3608BC();
      v26 = sub_22B1A7B20(v24, v25, v40);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_22B116000, v18, v19, "[CloudKitHelper] Error creating zone - %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x23188F650](v22, -1, -1);
      MEMORY[0x23188F650](v20, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    v27 = [objc_opt_self() processInfo];
    v28 = [v27 processName];

    v29 = sub_22B36084C();
    v31 = v30;

    LOWORD(v40[0]) = 259;
    BYTE2(v40[0]) = 14;
    v40[1] = v29;
    v40[2] = v31;
    v40[3] = 0;
    static AutoBugCaptureManager.sendIssue(_:)(v40);

    v40[0] = a3;
    v32 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB078, &qword_22B3677B8);
    return sub_22B360ADC();
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v8, qword_28140BD10);
    swift_beginAccess();
    (*(v9 + 16))(v15, v34, v8);
    v35 = sub_22B36050C();
    v36 = sub_22B360D2C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_22B116000, v35, v36, "[CloudKitHelper] Record zone is created.", v37, 2u);
      MEMORY[0x23188F650](v37, -1, -1);
    }

    (*(v9 + 8))(v15, v8);
    v40[4] = a5;
    v38 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB078, &qword_22B3677B8);
    return sub_22B360AEC();
  }
}

uint64_t sub_22B336B9C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22B36052C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B336C60, 0, 0);
}

uint64_t sub_22B336C60()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = v0[7];
    v5 = swift_task_alloc();
    v0[11] = v5;
    v5[2] = v2;
    v5[3] = v1;
    v5[4] = v4;
    v6 = *(MEMORY[0x277D85A40] + 4);
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_22B336EEC;

    return MEMORY[0x2822008A0]();
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];
    v11 = __swift_project_value_buffer(v10, qword_28140BD10);
    swift_beginAccess();
    (*(v9 + 16))(v8, v11, v10);
    v12 = sub_22B36050C();
    v13 = sub_22B360D1C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22B116000, v12, v13, "Received empty zone name", v14, 2u);
      MEMORY[0x23188F650](v14, -1, -1);
    }

    v16 = v0[9];
    v15 = v0[10];
    v17 = v0[8];

    (*(v16 + 8))(v15, v17);
    sub_22B134CDC();
    swift_allocError();
    *v18 = 13;
    swift_willThrow();
    v19 = v0[10];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_22B336EEC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_22B33706C;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_22B337008;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B337008()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B33706C()
{
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

void sub_22B3370D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
  v12 = sub_22B36081C();
  v13 = [v11 initWithZoneName_];

  sub_22B128014(0, &qword_281408570, 0x277CBC490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22B363650;
  *(v14 + 32) = [v13 zoneID];
  v15 = sub_22B360F1C();
  sub_22B333320();
  [v15 setMarkZonesAsUserPurged_];
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v16, v10, v6);
  aBlock[4] = sub_22B338C78;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B335120;
  aBlock[3] = &block_descriptor_44_1;
  v18 = _Block_copy(aBlock);

  [v15 setModifyRecordZonesCompletionBlock_];
  _Block_release(v18);
  v19 = [*(a4 + 16) privateCloudDatabase];
  [v19 addOperation_];
}

uint64_t sub_22B33739C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_22B36052C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v36 - v12;
  if (a3)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v6, qword_28140BD10);
    swift_beginAccess();
    (*(v7 + 16))(v10, v14, v6);
    v15 = a3;
    v16 = sub_22B36050C();
    v17 = sub_22B360D1C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v36[1] = a4;
      v19 = v18;
      v20 = swift_slowAlloc();
      v36[2] = a3;
      v37[0] = v20;
      *v19 = 136315138;
      v21 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB070, &qword_22B3677B0);
      v22 = sub_22B3608BC();
      v24 = sub_22B1A7B20(v22, v23, v37);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_22B116000, v16, v17, "[CloudKitHelper] Error deleting zone - %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23188F650](v20, -1, -1);
      MEMORY[0x23188F650](v19, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v25 = [objc_opt_self() processInfo];
    v26 = [v25 processName];

    v27 = sub_22B36084C();
    v29 = v28;

    LOWORD(v37[0]) = 259;
    BYTE2(v37[0]) = 13;
    v37[1] = v27;
    v37[2] = v29;
    v37[3] = 0;
    static AutoBugCaptureManager.sendIssue(_:)(v37);

    v37[0] = a3;
    v30 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
    return sub_22B360ADC();
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v6, qword_28140BD10);
    swift_beginAccess();
    (*(v7 + 16))(v13, v32, v6);
    v33 = sub_22B36050C();
    v34 = sub_22B360D2C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_22B116000, v33, v34, "[CloudKitHelper] Record zone is deleted.", v35, 2u);
      MEMORY[0x23188F650](v35, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
    return sub_22B360AEC();
  }
}

uint64_t sub_22B3377D4(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v36 = a5;
  v34 = sub_22B3605EC();
  v38 = *(v34 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22B36062C();
  v35 = *(v37 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v32 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v18 = *(qword_28140BCF0 + 24);
  (*(v14 + 16))(v17, a1, v13);
  v19 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  *(v20 + 4) = a4;
  v21 = a4;
  v22 = v36;
  *(v20 + 5) = v36;
  (*(v14 + 32))(&v20[v19], v17, v13);
  aBlock[4] = sub_22B33899C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B118A6C;
  aBlock[3] = &block_descriptor_21_0;
  v23 = _Block_copy(aBlock);
  v24 = v18;
  v25 = a2;

  v26 = v21;
  v27 = v22;
  v28 = v32;
  sub_22B36060C();
  v39 = MEMORY[0x277D84F90];
  sub_22B338E08(&qword_281409370, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
  sub_22B118A18(&qword_281409350, &unk_27D8BA330, &unk_22B363330);
  v30 = v33;
  v29 = v34;
  sub_22B36104C();
  MEMORY[0x23188E6D0](0, v28, v30, v23);
  _Block_release(v23);

  (*(v38 + 8))(v30, v29);
  (*(v35 + 8))(v28, v37);
}

uint64_t sub_22B337BE4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = aBlock - v14;
  (*(v11 + 16))(aBlock - v14, a5, v10, v13);
  v16 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a1;
  *(v17 + 4) = a3;
  *(v17 + 5) = a4;
  (*(v11 + 32))(&v17[v16], v15, v10);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_22B3389B4;
  *(v18 + 24) = v17;
  aBlock[4] = sub_22B12819C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_30;
  v19 = _Block_copy(aBlock);

  v20 = a1;
  v21 = a3;
  v22 = a4;

  [v20 performBlockAndWait_];
  _Block_release(v19);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }

  return result;
}

void sub_22B337E3C(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v44 = a4;
  v43 = a3;
  v51 = a2;
  v55[4] = *MEMORY[0x277D85DE8];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v40 = *(v41 - 8);
  v37[2] = *(v40 + 64);
  MEMORY[0x28223BE20](v41);
  v38 = v37 - v6;
  v7 = sub_22B36052C();
  v8 = *(v7 - 8);
  isa = v8[8].isa;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x23188EEB0](v10);
  v53 = a1;
  aBlock[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_23:
    v52 = v53 & 0xFFFFFFFFFFFFFF8;
    v14 = sub_22B36109C();
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v52 = v53 & 0xFFFFFFFFFFFFFF8;
    v14 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  v15 = 0;
  v50 = v53 & 0xC000000000000001;
  v47 = &v8[1];
  v48 = &v8[2];
  v8 = MEMORY[0x277D84F90];
  *&v13 = 138412290;
  v45 = v13;
  v46 = v12;
  v49 = v14;
  do
  {
    v37[1] = v8;
    while (1)
    {
      if (v50)
      {
        v16 = MEMORY[0x23188EAC0](v15, v53);
      }

      else
      {
        if (v15 >= *(v52 + 16))
        {
          goto LABEL_22;
        }

        v16 = *(v53 + 8 * v15 + 32);
      }

      v8 = v16;
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v55[0] = 0;
      if ([v51 existingObjectWithID:v16 error:v55])
      {
        break;
      }

      v18 = v55[0];
      v19 = sub_22B35DB9C();

      swift_willThrow();
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v20 = __swift_project_value_buffer(v7, qword_28140BD10);
      swift_beginAccess();
      (*v48)(v12, v20, v7);
      v21 = v8;
      v8 = sub_22B36050C();
      v22 = sub_22B360D1C();

      if (os_log_type_enabled(v8, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = v45;
        *(v23 + 4) = v21;
        *v24 = v21;
        v25 = v21;
        _os_log_impl(&dword_22B116000, v8, v22, "[CloudKitHelper] Failed to get object for objectID %@ to add to share", v23, 0xCu);
        sub_22B12F10C(v24);
        MEMORY[0x23188F650](v24, -1, -1);
        v26 = v23;
        v12 = v46;
        MEMORY[0x23188F650](v26, -1, -1);
      }

      (*v47)(v12, v7);
      ++v15;
      v14 = v49;
      if (v17 == v49)
      {
        goto LABEL_24;
      }
    }

    v27 = v55[0];

    MEMORY[0x23188E350]();
    if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v28 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22B360A7C();
    }

    sub_22B360A9C();
    v8 = aBlock[0];
    ++v15;
  }

  while (v17 != v14);
LABEL_24:
  sub_22B128014(0, &unk_281408598, 0x277CBE438);
  v29 = sub_22B360A3C();

  v30 = v40;
  v31 = v38;
  v32 = v41;
  (*(v40 + 16))(v38, v39, v41);
  v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v34 = swift_allocObject();
  (*(v30 + 32))(v34 + v33, v31, v32);
  aBlock[4] = sub_22B338ADC;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B333238;
  aBlock[3] = &block_descriptor_36_1;
  v35 = _Block_copy(aBlock);

  [v43 shareManagedObjects:v29 toShare:v44 completion:v35];
  _Block_release(v35);

  objc_autoreleasePoolPop(v42);
  v36 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B33845C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_22B36052C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33[-1] - v11;
  if (a4)
  {
    v13 = a4;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v5, qword_28140BD10);
    swift_beginAccess();
    (*(v6 + 16))(v9, v14, v5);
    v15 = a4;
    v16 = sub_22B36050C();
    v17 = sub_22B360D1C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = a4;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_22B116000, v16, v17, "[CloudKitHelper] Failed to add records to share. error %@", v18, 0xCu);
      sub_22B12F10C(v19);
      MEMORY[0x23188F650](v19, -1, -1);
      MEMORY[0x23188F650](v18, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    v22 = [objc_opt_self() processInfo];
    v23 = [v22 processName];

    v24 = sub_22B36084C();
    v26 = v25;

    LOWORD(v33[0]) = 259;
    BYTE2(v33[0]) = 12;
    v33[1] = v24;
    v33[2] = v26;
    v33[3] = 0;
    static AutoBugCaptureManager.sendIssue(_:)(v33);

    v33[0] = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
    return sub_22B360ADC();
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v5, qword_28140BD10);
    swift_beginAccess();
    (*(v6 + 16))(v12, v28, v5);
    v29 = sub_22B36050C();
    v30 = sub_22B360D1C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22B116000, v29, v30, "[CloudKitHelper] Successfully added records to share", v31, 2u);
      MEMORY[0x23188F650](v31, -1, -1);
    }

    (*(v6 + 8))(v12, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
    return sub_22B360AEC();
  }
}

uint64_t sub_22B338868()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22B3388D4(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB068, &unk_22B3677A0) - 8) + 80);

  return sub_22B333BD8(a1, a2);
}

uint64_t sub_22B3389CC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50) - 8);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  return a1(v3, v4, v5, v6, v7);
}

void (*sub_22B338A54(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23188EAC0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_22B338AD4;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B338ADC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50) - 8) + 80);

  return sub_22B33845C(a1, a2, a3, a4);
}

unint64_t sub_22B338B80()
{
  result = qword_281408588;
  if (!qword_281408588)
  {
    sub_22B128014(255, &qword_281408590, 0x277CBE448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281408588);
  }

  return result;
}

uint64_t objectdestroyTm_2(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_22B338CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) - 8);
  v11 = v6 + ((*(v10 + 80) + 16) & ~*(v10 + 80));

  return a6(a1, a2, a3, v11);
}

uint64_t sub_22B338D48(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB078, &qword_22B3677B8) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22B336754(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_22B338E08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B338E80@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v127 = a1;
  v117 = a2;
  v2 = sub_22B36052C();
  v129 = *(v2 - 1);
  v130 = v2;
  v3 = *(v129 + 64);
  MEMORY[0x28223BE20](v2);
  v132 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v128 = &v106 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v109 = &v106 - v9;
  v116 = sub_22B35E1DC();
  v115 = *(v116 - 8);
  v10 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v110 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_22B36089C();
  v112 = *(v113 - 8);
  v12 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_22B35DDBC();
  v118 = *(v125 - 8);
  v14 = *(v118 + 64);
  MEMORY[0x28223BE20](v125);
  v16 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_22B35DE9C();
  v114 = *(v126 - 8);
  v17 = v114[8];
  MEMORY[0x28223BE20](v126);
  v124 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v106 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v106 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v106 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v106 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v106 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v106 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v106 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v106 - v41;
  sub_22B35D8AC();
  if (v43 == 0.0)
  {
    if (qword_27D8B9FD0 != -1)
    {
      swift_once();
    }

    v44 = v130;
    v45 = __swift_project_value_buffer(v130, qword_27D8BB1F0);
    swift_beginAccess();
    v46 = v129;
    v47 = v132;
    (*(v129 + 16))(v132, v45, v44);
    v48 = sub_22B36050C();
    v49 = sub_22B360D1C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v135[0] = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_22B1A7B20(0xD000000000000027, 0x800000022B36EC80, v135);
      _os_log_impl(&dword_22B116000, v48, v49, "%s failed with empty dateInterval", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x23188F650](v51, -1, -1);
      MEMORY[0x23188F650](v50, -1, -1);
    }

    (*(v46 + 8))(v47, v44);
    return (*(v115 + 56))(v117, 1, 1, v116);
  }

  v107 = v30;
  v120 = v21;
  v121 = v33;
  v108 = v36;
  v131 = v24;
  v132 = v27;
  sub_22B35DE6C();
  sub_22B35D89C();
  v52 = sub_22B35DDFC();
  v53 = v114;
  v54 = v114 + 1;
  v55 = v114[1];
  v56 = v126;
  v55(v39, v126);
  v122 = v55;
  v123 = v54;
  if ((v52 & 1) == 0)
  {
    v62 = v42;
    if (qword_27D8B9FD0 != -1)
    {
      swift_once();
    }

    v63 = v130;
    v64 = __swift_project_value_buffer(v130, qword_27D8BB1F0);
    swift_beginAccess();
    v66 = v128;
    v65 = v129;
    (*(v129 + 16))(v128, v64, v63);
    v67 = sub_22B36050C();
    v68 = sub_22B360D1C();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v135[0] = v70;
      *v69 = 136315138;
      *(v69 + 4) = sub_22B1A7B20(0xD000000000000027, 0x800000022B36EC80, v135);
      _os_log_impl(&dword_22B116000, v67, v68, "%s failed because date is not in the past.", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x23188F650](v70, -1, -1);
      MEMORY[0x23188F650](v69, -1, -1);
    }

    (*(v65 + 8))(v66, v63);
    v122(v62, v56);
    return (*(v115 + 56))(v117, 1, 1, v116);
  }

  strcpy(v136, "{ windows :[");
  v136[15] = -18;
  sub_22B35D89C();
  sub_22B35F50C();
  v55(v39, v56);
  v57 = v107;
  sub_22B35D86C();
  v119 = sub_22B339EA8(&qword_28140B490, MEMORY[0x277CC9578]);
  v58 = sub_22B36074C();
  v106 = v42;
  if (v58)
  {
    v59 = v121;
    (v53[4])(v121, v57, v56);
    v60 = v53[2];
    v61 = (v53 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  else
  {
    v55(v57, v56);
    v60 = v53[2];
    v61 = (v53 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v59 = v121;
    v60();
  }

  v72 = v118;
  v129 = v61;
  v130 = v60;
  (v60)(v131, v108, v56);
  LODWORD(v107) = sub_22B35DDFC();
  if (v107)
  {
    v74 = 0;
    v75 = 0;
    v128 = (v114 + 4);
    v118 = v72 + 8;
    while (1)
    {
      sub_22B35F62C();
      v78 = v124;
      sub_22B35DDCC();
      if (sub_22B36074C())
      {
        break;
      }

      v55(v78, v56);
      v79 = v120;
      (v130)(v120, v59, v56);
      v80 = v125;
      if (v74)
      {
        goto LABEL_25;
      }

LABEL_26:
      (*v128)(v132, v79, v56);
      v135[0] = 0;
      v135[1] = 0xE000000000000000;
      sub_22B36116C();

      strcpy(v135, "{ rating : ");
      HIBYTE(v135[1]) = -18;
      if (v75)
      {
        v81 = 1414743362;
      }

      else
      {
        v81 = 0x5453524F57;
      }

      if (v75)
      {
        v82 = 0xE400000000000000;
      }

      else
      {
        v82 = 0xE500000000000000;
      }

      MEMORY[0x23188E270](v81, v82);

      v83 = MEMORY[0x23188E270](0x7261747322202C22, 0xED000022203A2274);
      MEMORY[0x23188B0F0](v83);
      sub_22B339EA8(&qword_27D8BB080, MEMORY[0x277CC94A0]);
      sub_22B35DE7C();
      v84 = *v118;
      (*v118)(v16, v80);
      v85 = v80;
      MEMORY[0x23188E270](v133, v134);

      v86 = MEMORY[0x23188E270](0x22646E6522202C22, 0xEB0000000022203ALL);
      MEMORY[0x23188B0F0](v86);
      sub_22B35DE7C();
      v87 = v16;
      v84(v16, v85);
      MEMORY[0x23188E270](v133, v134);

      MEMORY[0x23188E270](8200226, 0xE300000000000000);
      v89 = v135[0];
      v88 = v135[1];
      if (v74)
      {
      }

      MEMORY[0x23188E270](v89, v88);

      sub_22B339EA8(&qword_27D8BA430, MEMORY[0x277CC9578]);
      v90 = v132;
      v59 = v121;
      v56 = v126;
      v91 = sub_22B36078C();
      v55 = v122;
      if ((v91 & 1) == 0)
      {
        MEMORY[0x23188E270](44, 0xE100000000000000);
      }

      v76 = v131;
      v55(v131, v56);
      v75 ^= 1u;
      (v130)(v76, v90, v56);
      v77 = sub_22B35DDFC();
      v74 = 1;
      v127 = v88;
      v73 = v88;
      v16 = v87;
      if ((v77 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v79 = v120;
    (*v128)(v120, v78, v56);
    v80 = v125;
    if ((v74 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_25:
    v55(v132, v56);
    goto LABEL_26;
  }

LABEL_36:
  v130 = v73;
  MEMORY[0x23188E270](8200285, 0xE300000000000000);
  v92 = v111;
  sub_22B36088C();
  v93 = sub_22B36085C();
  v95 = v94;
  result = (*(v112 + 8))(v92, v113);
  if (v95 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    v96 = sub_22B35D7FC();
    v97 = *(v96 + 48);
    v98 = *(v96 + 52);
    swift_allocObject();
    sub_22B35D7EC();
    sub_22B339EA8(&unk_2814091B0, MEMORY[0x277D17ED0]);
    v99 = v110;
    v100 = v116;
    sub_22B35D7DC();
    v101 = v115;

    sub_22B35F62C();
    v102 = v109;
    sub_22B35DDCC();
    v103 = v114[7];
    v103(v102, 0, 1, v56);
    sub_22B35E19C();
    sub_22B35DE6C();
    v103(v102, 0, 1, v56);
    sub_22B35E1CC();
    sub_22B11EDC0(v93, v95);
    v104 = v122;
    v122(v131, v56);
    v104(v121, v56);
    v104(v108, v56);
    v104(v106, v56);
    v105 = v117;
    (*(v101 + 32))(v117, v99, v100);
    result = (*(v101 + 56))(v105, 0, 1, v100);
    if (v107)
    {
      v104(v132, v56);
    }
  }

  return result;
}

uint64_t sub_22B339EA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B339EF0()
{
  type metadata accessor for BackgroundTaskSchedulerDriver();
  result = swift_initStaticObject();
  qword_28140BCD8 = result;
  return result;
}

void sub_22B339F64(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v89 = *MEMORY[0x277D85DE8];
  v79 = sub_22B36052C();
  v78 = *(v79 - 8);
  v8 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v73 - v12;
  v14 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v15 = sub_22B36081C();
  v16 = [v14 initWithEntityName_];

  v17 = objc_allocWithZone(MEMORY[0x277CBE360]);
  v80 = v16;
  v18 = [v17 initWithFetchRequest_];
  [v18 setResultType_];
  v19 = *(a3 + 48);
  *&aBlock = 0;
  v20 = [v19 executeRequest:v18 error:&aBlock];
  v21 = aBlock;
  if (v20)
  {
    v22 = v20;
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    v24 = v21;
    if (v23)
    {
      if ([v23 result])
      {
        sub_22B36102C();
        swift_unknownObjectRelease();
      }

      else
      {
        v87 = 0u;
        v88 = 0u;
      }

      v84 = v88;
      aBlock = v87;
      if (*(&v88 + 1))
      {
        v76 = v18;
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA858, &qword_22B365EF8);
        if (swift_dynamicCast())
        {
          v75 = v23;
          v74 = a4;
          v48 = v87;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA960, &qword_22B365F00);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22B3634B0;
          v50 = *MEMORY[0x277CBE150];
          *&aBlock = sub_22B36084C();
          *(&aBlock + 1) = v51;
          sub_22B36110C();
          *(inited + 96) = v47;
          *(inited + 72) = v48;
          sub_22B321BDC(inited);
          swift_setDeallocating();
          sub_22B123284(inited + 32, &unk_27D8BACC0, &unk_22B3662C0);
          v52 = objc_opt_self();
          v53 = sub_22B3606CC();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
          v54 = swift_allocObject();
          *(v54 + 16) = xmmword_22B363650;
          v55 = *(a3 + 48);
          *(v54 + 32) = v55;
          sub_22B128014(0, &qword_281408580, 0x277CBE440);
          v56 = v55;
          v57 = sub_22B360A3C();

          [v52 mergeChangesFromRemoteContextSave:v53 intoContexts:v57];

          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v58 = v79;
          v59 = __swift_project_value_buffer(v79, qword_28140BD10);
          swift_beginAccess();
          v60 = v78;
          (*(v78 + 16))(v13, v59, v58);

          v61 = sub_22B36050C();
          v62 = sub_22B360D2C();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v73 = v61;
            v65 = v64;
            *&aBlock = v64;
            *v63 = 136446210;
            *(v63 + 4) = sub_22B1A7B20(a1, a2, &aBlock);
            v66 = v73;
            _os_log_impl(&dword_22B116000, v73, v62, "Sucessfully deleted all data for %{public}s", v63, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v65);
            MEMORY[0x23188F650](v65, -1, -1);
            MEMORY[0x23188F650](v63, -1, -1);
          }

          else
          {
          }

          (*(v60 + 8))(v13, v58);
          v67 = v75;
          v68 = *(a3 + 48);
          v69 = swift_allocObject();
          *(v69 + 16) = sub_22B1281A4;
          *(v69 + 24) = a3;
          v85 = sub_22B12819C;
          v86 = v69;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v84 = sub_22B32556C;
          *(&v84 + 1) = &block_descriptor_31;
          v70 = _Block_copy(&aBlock);
          v71 = v68;

          [v71 performBlockAndWait_];

          _Block_release(v70);
          LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

          if (v70)
          {
            __break(1u);
          }

          *v74 = 1;
        }

        else
        {

          *a4 = 0;
        }

        goto LABEL_25;
      }
    }

    else
    {

      v84 = 0u;
      aBlock = 0u;
    }

    sub_22B123284(&aBlock, &unk_27D8BA950, &qword_22B364940);
    *a4 = 0;
    goto LABEL_25;
  }

  v25 = aBlock;
  v26 = sub_22B35DB9C();

  swift_willThrow();
  v82 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  sub_22B128014(0, &qword_281408530, 0x277CCA9B8);
  swift_dynamicCast();
  v27 = v81;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v76 = v18;
  v28 = v79;
  v29 = __swift_project_value_buffer(v79, qword_28140BD10);
  swift_beginAccess();
  v30 = v78;
  (*(v78 + 16))(v10, v29, v28);
  v31 = v27;
  v32 = sub_22B36050C();
  v33 = sub_22B360D1C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *&aBlock = v77;
    *v34 = 136446210;
    v35 = [v31 localizedDescription];
    v36 = sub_22B36084C();
    v37 = a4;
    v39 = v38;

    v40 = sub_22B1A7B20(v36, v39, &aBlock);
    a4 = v37;

    *(v34 + 4) = v40;
    _os_log_impl(&dword_22B116000, v32, v33, "Failed to batch delete data %{public}s", v34, 0xCu);
    v41 = v77;
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x23188F650](v41, -1, -1);
    MEMORY[0x23188F650](v34, -1, -1);

    (*(v78 + 8))(v10, v79);
  }

  else
  {

    (*(v30 + 8))(v10, v28);
  }

  v42 = [objc_opt_self() processInfo];
  v43 = [v42 processName];

  v44 = sub_22B36084C();
  v46 = v45;

  LOWORD(aBlock) = 513;
  BYTE2(aBlock) = 8;
  *(&aBlock + 1) = v44;
  v84 = v46;
  static AutoBugCaptureManager.sendIssue(_:)(&aBlock);

  *a4 = 0;
LABEL_25:
  v72 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B33AA04()
{
  type metadata accessor for HomeEnergyDataManager();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  qword_28140BDB0 = result;
  return result;
}

uint64_t sub_22B33AA3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_22B36052C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!*(*(v4 + 16) + 16) || (, sub_22B33B28C(a3, a4), v16 = v15, result = , (v16 & 1) == 0))
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v10, qword_28140BD10);
    swift_beginAccess();
    (*(v11 + 16))(v14, v18, v10);

    v19 = sub_22B36050C();
    v20 = sub_22B360D2C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v31 = a1;
      v22 = v21;
      v23 = swift_slowAlloc();
      v32 = a2;
      v24 = v23;
      v34[0] = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_22B1A7B20(a3, a4, v34);
      _os_log_impl(&dword_22B116000, v19, v20, "Creating model %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      v25 = v24;
      a2 = v32;
      MEMORY[0x23188F650](v25, -1, -1);
      v26 = v22;
      a1 = v31;
      MEMORY[0x23188F650](v26, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    type metadata accessor for CoreDataStack();
    swift_allocObject();
    swift_bridgeObjectRetain_n();

    v27 = sub_22B2A7F0C(a1, a2, a3, a4);

    v28 = v27[6];

    [v28 setShouldRefreshAfterSave_];

    swift_beginAccess();
    v29 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v5 + 16);
    *(v5 + 16) = 0x8000000000000000;
    sub_22B33F11C(v27, a3, a4, isUniquelyReferenced_nonNull_native);

    *(v5 + 16) = v33;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_22B33AD90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v42 = a1;
  v9 = sub_22B36052C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  swift_beginAccess();
  if (*(*(v4 + 16) + 16) && (, sub_22B33B28C(a3, a4), v18 = v17, , (v18 & 1) != 0))
  {
    v19 = a3;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v9, qword_28140BD10);
    swift_beginAccess();
    (*(v10 + 16))(v16, v20, v9);

    v21 = sub_22B36050C();
    v22 = sub_22B360D2C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v43 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_22B1A7B20(v19, a4, &v43);
      v25 = v22;
      a3 = v19;
      _os_log_impl(&dword_22B116000, v21, v25, "Model %{public}s already exists", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x23188F650](v24, -1, -1);
      MEMORY[0x23188F650](v23, -1, -1);

      (*(v10 + 8))(v16, v9);
    }

    else
    {

      (*(v10 + 8))(v16, v9);
      a3 = v19;
    }
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v9, qword_28140BD10);
    swift_beginAccess();
    (*(v10 + 16))(v14, v26, v9);

    v27 = sub_22B36050C();
    v28 = sub_22B360D2C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v41 = a2;
      v31 = a3;
      v32 = v30;
      v43 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_22B1A7B20(v31, a4, &v43);
      _os_log_impl(&dword_22B116000, v27, v28, "Creating model %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v33 = v32;
      a3 = v31;
      a2 = v41;
      MEMORY[0x23188F650](v33, -1, -1);
      MEMORY[0x23188F650](v29, -1, -1);
    }

    (*(v10 + 8))(v14, v9);
    sub_22B33AA3C(v42, a2, a3, a4);
  }

  v34 = *(v5 + 16);
  if (!*(v34 + 16))
  {
    return 0;
  }

  v35 = *(v5 + 16);

  v36 = sub_22B33B28C(a3, a4);
  if (v37)
  {
    v38 = *(*(v34 + 56) + 8 * v36);
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

unint64_t sub_22B33B248(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22B3610EC();

  return sub_22B3401C0(a1, v5);
}

unint64_t sub_22B33B28C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22B36149C();
  sub_22B3608FC();
  v6 = sub_22B3614DC();

  return sub_22B340288(a1, a2, v6);
}

unint64_t sub_22B33B304(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22B360FAC();

  return sub_22B340340(a1, v5);
}

unint64_t sub_22B33B348(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22B35DE9C();
  v5 = MEMORY[0x277CC9578];
  sub_22B342F58(&qword_27D8BA348, MEMORY[0x277CC9578]);
  v6 = sub_22B36071C();
  return sub_22B3409B8(a1, v6, MEMORY[0x277CC9578], &qword_27D8BA430, v5, MEMORY[0x277CC9598]);
}

unint64_t sub_22B33B41C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_22B36148C();

  return sub_22B340414(a1, v4);
}

unint64_t sub_22B33B460(uint64_t *a1)
{
  v3 = sub_22B35DE9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  v21 = v1;
  v12 = *(v1 + 40);
  sub_22B36149C();
  v13 = *a1;
  v14 = a1[1];
  sub_22B3608FC();
  v15 = a1[2];
  v16 = a1[3];
  sub_22B3608FC();
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod();
  v18 = *(Events + 24);
  sub_22B342F58(&qword_27D8BA348, MEMORY[0x277CC9578]);
  sub_22B36072C();
  sub_22B170BE0(a1 + *(Events + 28), v11, &qword_27D8BA340, &qword_22B363FB0);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_22B3614BC();
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    sub_22B3614BC();
    sub_22B36072C();
    (*(v4 + 8))(v7, v3);
  }

  v19 = sub_22B3614DC();
  return sub_22B340480(a1, v19);
}

unint64_t sub_22B33B6BC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22B35DF1C();
  v5 = MEMORY[0x277CC95F0];
  sub_22B342F58(&unk_27D8BA320, MEMORY[0x277CC95F0]);
  v6 = sub_22B36071C();
  return sub_22B3409B8(a1, v6, MEMORY[0x277CC95F0], &qword_27D8BA718, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_22B33B790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_22B36149C();
  sub_22B3608FC();
  sub_22B3608FC();
  v10 = sub_22B3614DC();

  return sub_22B340B58(a1, a2, a3, a4, v10);
}

unint64_t sub_22B33B830(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22B36149C();
  sub_22B35DF1C();
  sub_22B342F58(&unk_27D8BA320, MEMORY[0x277CC95F0]);
  sub_22B36072C();
  v4 = type metadata accessor for SessionKey(0);
  v5 = a1 + v4[5];
  sub_22B36072C();
  v6 = (a1 + v4[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_22B3608FC();
  v9 = (a1 + v4[7]);
  v10 = *v9;
  v11 = v9[1];
  sub_22B3608FC();
  v12 = (a1 + v4[8]);
  v13 = *v12;
  v14 = v12[1];
  sub_22B3608FC();
  v15 = a1 + v4[9];
  sub_22B36072C();
  v16 = sub_22B3614DC();

  return sub_22B340C58(a1, v16);
}

unint64_t sub_22B33B968(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22B35DC4C();
  v5 = MEMORY[0x277CC9260];
  sub_22B342F58(&qword_27D8BA668, MEMORY[0x277CC9260]);
  v6 = sub_22B36071C();
  return sub_22B3409B8(a1, v6, MEMORY[0x277CC9260], &qword_27D8BB0B8, v5, MEMORY[0x277CC9278]);
}

unint64_t sub_22B33BA3C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22B36084C();
  sub_22B36149C();
  sub_22B3608FC();
  v4 = sub_22B3614DC();

  return sub_22B340E8C(a1, v4);
}

uint64_t sub_22B33BAD0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB098, &qword_22B3678E8);
  v37 = a2;
  result = sub_22B3612AC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v38 = *(*(v5 + 56) + v22);
      if ((v37 & 1) == 0)
      {

        v26 = *(&v38 + 1);
      }

      v27 = *(v8 + 40);
      sub_22B36149C();
      sub_22B3608FC();
      result = sub_22B3614DC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v38;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}