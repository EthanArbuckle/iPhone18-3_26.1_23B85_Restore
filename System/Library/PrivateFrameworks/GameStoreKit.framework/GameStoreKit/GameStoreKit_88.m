unint64_t sub_24EF01BE0()
{
  result = qword_27F221898;
  if (!qword_27F221898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F221898);
  }

  return result;
}

uint64_t SearchActionCalculator.searchAction(modifying:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = sub_24F91F6B8();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_24F928AD8();
  v7 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v9 - 8);
  v71 = &v60 - v10;
  v11 = *(a2 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_targetToken);
  v12 = *(a2 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_targetToken + 8);
  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchTokens))
  {
    v13 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchTokens);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  *&v79[0] = *(a2 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_targetToken);
  *(&v79[0] + 1) = v12;
  v73 = v79;
  swift_bridgeObjectRetain_n();

  v14 = sub_24E6159B8(sub_24E7FA94C, v72, v13);

  v67 = v7;
  if ((v14 & 1) == 0)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_8:
      v20 = *(v13 + 2);
      v19 = *(v13 + 3);
      if (v20 >= v19 >> 1)
      {
        v13 = sub_24E615CF4((v19 > 1), v20 + 1, 1, v13);
      }

      *(v13 + 2) = v20 + 1;
      v21 = &v13[16 * v20];
      *(v21 + 4) = v11;
      *(v21 + 5) = v12;
      goto LABEL_23;
    }

LABEL_51:
    v13 = sub_24E615CF4(0, *(v13 + 2) + 1, 1, v13);
    goto LABEL_8;
  }

  result = sub_24E8BDF64(v13, v11, v12);
  if (v16)
  {
    v17 = *(v13 + 2);
    v18 = v17;
    goto LABEL_15;
  }

  v18 = result;
  v66 = v3;
  v3 = (result + 1);
  if (__OFADD__(result, 1))
  {
LABEL_57:
    __break(1u);
    return result;
  }

  v70 = a1;
  v22 = *(v13 + 2);

  if (v3 != v22)
  {
    a1 = 16 * v18;
    v61 = a2;
    while (v3 < v22)
    {
      v54 = *&v13[a1 + 48];
      v7 = *&v13[a1 + 56];
      if (v54 != v11 || v7 != v12)
      {
        result = sub_24F92CE08();
        if ((result & 1) == 0)
        {
          if (v3 != v18)
          {
            if (v18 >= v22)
            {
              goto LABEL_55;
            }

            v56 = &v13[16 * v18 + 32];
            v58 = *v56;
            v57 = *(v56 + 1);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_24ECDE200(v13);
            }

            v59 = &v13[16 * v18];
            *(v59 + 4) = v54;
            *(v59 + 5) = v7;

            if (v3 >= *(v13 + 2))
            {
              goto LABEL_56;
            }

            v53 = &v13[a1];
            *(v53 + 6) = v58;
            *(v53 + 7) = v57;

            a2 = v61;
          }

          ++v18;
        }
      }

      v3 = (v3 + 1);
      v22 = *(v13 + 2);
      a1 += 16;
      if (v3 == v22)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

LABEL_13:

  v17 = *(v13 + 2);
  v7 = v67;
  a1 = v70;
  if (v17 < v18)
  {
    __break(1u);
    goto LABEL_53;
  }

  v3 = v66;
  if (v18 < 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_15:
  if (__OFADD__(v17, v18 - v17))
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v18 > *(v13 + 3) >> 1)
  {
    if (v17 <= v18)
    {
      v24 = v18;
    }

    else
    {
      v24 = v17;
    }

    v13 = sub_24E615CF4(isUniquelyReferenced_nonNull_native, v24, 1, v13);
    v81 = v13;
  }

  sub_24EDAB0D8(v18, v17, 0);

LABEL_23:
  v25 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term + 8);
  v70 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term);
  if (v25 && *(v13 + 2))
  {
    v26 = v3[3];
    v27 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v26);
    v66 = (*(v27 + 8))(v70, v25, v13, v26, v27);
    v65 = v28;
  }

  else
  {
    v66 = 0;
    v65 = 0;
  }

  v29 = sub_24F91F4A8();
  (*(*(v29 - 8) + 56))(v71, 1, 1, v29);
  v30 = *(a2 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_searchOrigin);
  v31 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_entity);
  if (*(v13 + 2))
  {
  }

  else
  {

    v13 = 0;
  }

  v32 = *(v7 + 16);
  v33 = a2 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v35 = v68;
  v34 = v69;
  v32(v68, v33, v69);
  type metadata accessor for SearchAction();
  v36 = swift_allocObject();
  v37 = (v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term);
  *v37 = v70;
  v37[1] = v25;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_origin) = v30;
  v38 = (v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_source);
  *v38 = 0;
  v38[1] = 0;
  sub_24E60169C(v71, v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_url, &qword_27F228530);
  *(v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_entity) = v31;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_spellCheckEnabled) = 1;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_excludedTerms) = 0;
  v39 = (v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_originatingTerm);
  *v39 = 0;
  v39[1] = 0;
  v40 = (v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_prefixTerm);
  *v40 = 0;
  v40[1] = 0;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchTokens) = v13;
  v41 = (v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchOptimizationTerm);
  v42 = v65;
  *v41 = v66;
  v41[1] = v42;
  v43 = v36 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData;
  *v43 = xmmword_24F9406F0;
  *(v43 + 3) = 0;
  *(v43 + 4) = 0;
  *(v43 + 2) = 0;
  v43[40] = 0;
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  v32(v36 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v35, v34);
  v44 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v45 = sub_24F929608();
  (*(*(v45 - 8) + 56))(v36 + v44, 1, 1, v45);
  v46 = (v36 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v46 = 0u;
  v46[1] = 0u;
  v47 = v36 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v79, &v76, &qword_27F235830);
  if (*(&v77 + 1))
  {
    v48 = v77;
    *v47 = v76;
    *(v47 + 1) = v48;
    *(v47 + 4) = v78;
  }

  else
  {

    v49 = v62;
    sub_24F91F6A8();
    v50 = sub_24F91F668();
    v52 = v51;
    (*(v63 + 8))(v49, v64);
    v74 = v50;
    v75 = v52;
    sub_24F92C7F8();
    sub_24E601704(&v76, &qword_27F235830);
  }

  sub_24E601704(v79, &qword_27F235830);
  (*(v67 + 8))(v68, v69);
  sub_24E601704(v71, &qword_27F228530);
  v36[2] = v70;
  v36[3] = v25;
  v36[4] = 0;
  v36[5] = 0;
  return v36;
}

void *SearchActionCalculator.searchAction(modifying:with:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F6B8();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928AD8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v14 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term);
  v13 = *(a1 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term + 8);
  v15 = sub_24F91F4A8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = *(a2 + OBJC_IVAR____TtC12GameStoreKit24SearchEntityChangeAction_searchOrigin);
  LOBYTE(a1) = *(a2 + OBJC_IVAR____TtC12GameStoreKit24SearchEntityChangeAction_entity);
  v40 = v7;
  v17 = *(v7 + 16);
  v17(v9, a2 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v6);
  type metadata accessor for SearchAction();
  v18 = swift_allocObject();
  v19 = (v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term);
  *v19 = v14;
  v19[1] = v13;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_origin) = v16;
  v20 = (v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_source);
  *v20 = 0;
  v20[1] = 0;
  sub_24E60169C(v12, v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_url, &qword_27F228530);
  *(v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_entity) = a1;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_spellCheckEnabled) = 1;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_excludedTerms) = 0;
  v21 = (v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_originatingTerm);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_prefixTerm);
  *v22 = 0;
  v22[1] = 0;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchTokens) = 0;
  v23 = (v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchOptimizationTerm);
  *v23 = 0;
  v23[1] = 0;
  v24 = v18 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData;
  *v24 = xmmword_24F9406F0;
  *(v24 + 3) = 0;
  *(v24 + 4) = 0;
  *(v24 + 2) = 0;
  v24[40] = 0;
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v17(v18 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v9, v6);
  v25 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v26 = sub_24F929608();
  (*(*(v26 - 8) + 56))(v18 + v25, 1, 1, v26);
  v27 = (v18 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v27 = 0u;
  v27[1] = 0u;
  v28 = v18 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v46, &v43, &qword_27F235830);
  if (*(&v44 + 1))
  {
    v29 = v44;
    *v28 = v43;
    *(v28 + 1) = v29;
    *(v28 + 4) = v45;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v30 = v37;
    sub_24F91F6A8();
    v31 = v14;
    v32 = sub_24F91F668();
    v34 = v33;
    (*(v38 + 8))(v30, v39);
    v41 = v32;
    v42 = v34;
    v14 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v43, &qword_27F235830);
  }

  sub_24E601704(v46, &qword_27F235830);
  (*(v40 + 8))(v9, v6);
  sub_24E601704(v12, &qword_27F228530);
  v18[2] = v14;
  v18[3] = v13;
  v18[4] = 0;
  v18[5] = 0;
  return v18;
}

uint64_t PageHeader.init(id:badge:title:subtitle:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v34 = a2;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v37, &qword_27F235830);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v32 = a3;
    v33 = a4;
    v20 = a5;
    v21 = a7;
    v22 = v19;
    v23 = a6;
    v25 = v24;
    (*(v16 + 8))(v18, v15);
    v35 = v22;
    v36 = v25;
    a7 = v21;
    a5 = v20;
    a6 = v23;
    a3 = v32;
    a4 = v33;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v26 = v8 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_id;
  v27 = v41;
  *v26 = v40;
  *(v26 + 16) = v27;
  *(v26 + 32) = v42;
  *(v8 + 16) = v34;
  *(v8 + 24) = a3;
  v28 = OBJC_IVAR____TtC12GameStoreKit10PageHeader_title;
  v29 = sub_24F91F008();
  (*(*(v29 - 8) + 32))(v8 + v28, a4, v29);
  v30 = (v8 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_subtitle);
  *v30 = a5;
  v30[1] = a6;
  sub_24E65E0D4(a7, v8 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_impressionMetrics);
  return v8;
}

uint64_t PageHeader.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit10PageHeader_title;
  v2 = sub_24F91F008();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t PageHeader.__allocating_init(id:badge:title:subtitle:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a2;
  v34 = a3;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = v16 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_id;
  sub_24E60169C(a1, &v37, &qword_27F235830);
  if (*(&v38 + 1))
  {
    v18 = v38;
    *v17 = v37;
    *(v17 + 16) = v18;
    *(v17 + 32) = v39;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v31 = a4;
    v32 = a5;
    v20 = a7;
    v21 = v19;
    v22 = a6;
    v24 = v23;
    (*(v13 + 8))(v15, v12);
    v35 = v21;
    v36 = v24;
    a7 = v20;
    a6 = v22;
    a4 = v31;
    a5 = v32;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v25 = v34;
  *(v16 + 16) = v33;
  *(v16 + 24) = v25;
  v26 = OBJC_IVAR____TtC12GameStoreKit10PageHeader_title;
  v27 = sub_24F91F008();
  (*(*(v27 - 8) + 32))(v16 + v26, a4, v27);
  v28 = (v16 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_subtitle);
  *v28 = a5;
  v28[1] = a6;
  sub_24E65E0D4(a7, v16 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_impressionMetrics);
  return v16;
}

uint64_t PageHeader.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v69 = a2;
  v68 = sub_24F9285B8();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v63 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = v54 - v5;
  v57 = sub_24F91F6B8();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F91F0C8();
  MEMORY[0x28223BE20](v7 - 8);
  v58 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_24F91F008();
  v61 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v54 - v11;
  v13 = sub_24F928388();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v60 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v59 = v54 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v54 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v54 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v54 - v25;
  v75 = a1;
  sub_24F928398();
  sub_24F928348();
  v28 = v27;
  v31 = *(v14 + 8);
  v30 = v14 + 8;
  v29 = v31;
  v31(v26, v13);
  if (v28)
  {
    v64 = v29;
    sub_24F91F0B8();
    v65 = v12;
    sub_24F91F018();
    sub_24F928398();
    v32 = sub_24F928348();
    if (v33)
    {
      v72 = v32;
      v73 = v33;
    }

    else
    {
      v37 = v55;
      sub_24F91F6A8();
      v38 = sub_24F91F668();
      v40 = v39;
      (*(v56 + 8))(v37, v57);
      v72 = v38;
      v73 = v40;
    }

    sub_24F92C7F8();
    v41 = v23;
    v42 = v13;
    v43 = v64;
    v64(v41, v13);
    v54[1] = v30;
    sub_24F928398();
    v58 = sub_24F928348();
    v57 = v44;
    v43(v20, v13);
    v45 = v61;
    (*(v61 + 16))(v70, v65, v71);
    v46 = v59;
    sub_24F928398();
    v56 = sub_24F928348();
    v55 = v47;
    v43(v46, v13);
    sub_24F929608();
    sub_24F928398();
    v48 = v66;
    v50 = v68;
    v49 = v69;
    (*(v66 + 16))(v63, v69, v68);
    v51 = v42;
    v52 = v62;
    sub_24F929548();
    v34 = (*(v67 + 120))(v74, v58, v57, v70, v56, v55, v52);
    (*(v48 + 8))(v49, v50);
    v64(v75, v51);
    (*(v45 + 8))(v65, v71);
  }

  else
  {
    v34 = sub_24F92AC38();
    sub_24EF0391C(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v35 = 0x656C746974;
    v36 = v67;
    v35[1] = 0xE500000000000000;
    v35[2] = v36;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D22530], v34);
    swift_willThrow();
    (*(v66 + 8))(v69, v68);
    v29(v75, v13);
  }

  return v34;
}

uint64_t PageHeader.badge.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PageHeader.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10PageHeader_title;
  v4 = sub_24F91F008();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageHeader.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_subtitle);

  return v1;
}

uint64_t PageHeader.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit10PageHeader_title;
  v2 = sub_24F91F008();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t sub_24EF0391C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PageHeader()
{
  result = qword_27F233778;
  if (!qword_27F233778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF039D8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_24EF03A58()
{
  sub_24F91F008();
  if (v0 <= 0x3F)
  {
    sub_24E61C938();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24EF03B90()
{
  result = sub_24F92B098();
  qword_27F233788 = result;
  return result;
}

uint64_t sub_24EF03BEC()
{
  result = sub_24F92B098();
  qword_27F233790 = result;
  return result;
}

uint64_t sub_24EF03C44()
{
  result = sub_24F92B098();
  qword_27F233798 = result;
  return result;
}

uint64_t sub_24EF03CA4()
{
  result = sub_24F92B098();
  qword_27F2337A0 = result;
  return result;
}

uint64_t sub_24EF03D08()
{
  result = sub_24F92B098();
  qword_27F2337A8 = result;
  return result;
}

uint64_t sub_24EF03D64()
{
  result = sub_24F92B098();
  qword_27F2337B0 = result;
  return result;
}

uint64_t sub_24EF03DC0()
{
  result = sub_24F92B098();
  qword_27F2337B8 = result;
  return result;
}

uint64_t sub_24EF03E1C()
{
  result = sub_24F92B098();
  qword_27F2337C0 = result;
  return result;
}

uint64_t sub_24EF03E78()
{
  result = sub_24F92B098();
  qword_27F2337C8 = result;
  return result;
}

uint64_t sub_24EF03EDC()
{
  result = sub_24F92B098();
  qword_27F2337D0 = result;
  return result;
}

uint64_t sub_24EF03F3C()
{
  result = sub_24F92B098();
  qword_27F2337D8 = result;
  return result;
}

uint64_t sub_24EF03F8C()
{
  result = sub_24F92B098();
  qword_27F2337E0 = result;
  return result;
}

uint64_t sub_24EF03FEC()
{
  result = sub_24F92B098();
  qword_27F2337E8 = result;
  return result;
}

uint64_t sub_24EF04048()
{
  result = sub_24F92B098();
  qword_27F2337F0 = result;
  return result;
}

uint64_t sub_24EF040A4()
{
  result = sub_24F92B098();
  qword_27F2337F8 = result;
  return result;
}

uint64_t sub_24EF04100()
{
  result = sub_24F92B098();
  qword_27F233800 = result;
  return result;
}

uint64_t sub_24EF04158()
{
  result = sub_24F92B098();
  qword_27F233808 = result;
  return result;
}

uint64_t sub_24EF041B4()
{
  result = sub_24F92B098();
  qword_27F233810 = result;
  return result;
}

uint64_t sub_24EF04210()
{
  result = sub_24F92B098();
  qword_27F233818 = result;
  return result;
}

uint64_t sub_24EF0426C()
{
  result = sub_24F92B098();
  qword_27F233820 = result;
  return result;
}

uint64_t sub_24EF042C8()
{
  result = sub_24F92B098();
  qword_27F233828 = result;
  return result;
}

uint64_t sub_24EF04324()
{
  result = sub_24F92B098();
  qword_27F233830 = result;
  return result;
}

uint64_t sub_24EF04380()
{
  result = sub_24F92B098();
  qword_27F233838 = result;
  return result;
}

uint64_t sub_24EF043DC()
{
  result = sub_24F92B098();
  qword_27F233840 = result;
  return result;
}

uint64_t sub_24EF04438()
{
  result = sub_24F92B098();
  qword_27F233848 = result;
  return result;
}

uint64_t sub_24EF04494()
{
  result = sub_24F92B098();
  qword_27F233850 = result;
  return result;
}

uint64_t sub_24EF044F0()
{
  result = sub_24F92B098();
  qword_27F233858 = result;
  return result;
}

uint64_t sub_24EF0454C()
{
  result = sub_24F92B098();
  qword_27F233860 = result;
  return result;
}

uint64_t sub_24EF045A8()
{
  result = sub_24F92B098();
  qword_27F233868 = result;
  return result;
}

uint64_t sub_24EF04604()
{
  result = sub_24F92B098();
  qword_27F233870 = result;
  return result;
}

uint64_t sub_24EF04660()
{
  result = sub_24F92B098();
  qword_27F233878 = result;
  return result;
}

uint64_t sub_24EF046C0()
{
  result = sub_24F92B098();
  qword_27F233880 = result;
  return result;
}

uint64_t sub_24EF0471C()
{
  result = sub_24F92B098();
  qword_27F233888 = result;
  return result;
}

uint64_t sub_24EF04778()
{
  result = sub_24F92B098();
  qword_27F233890 = result;
  return result;
}

uint64_t sub_24EF047D4()
{
  result = sub_24F92B098();
  qword_27F233898 = result;
  return result;
}

uint64_t sub_24EF04830()
{
  result = sub_24F92B098();
  qword_27F2338A0 = result;
  return result;
}

uint64_t sub_24EF0488C()
{
  result = sub_24F92B098();
  qword_27F2338A8 = result;
  return result;
}

uint64_t sub_24EF048E8()
{
  result = sub_24F92B098();
  qword_27F2338B0 = result;
  return result;
}

uint64_t sub_24EF04944()
{
  result = sub_24F92B098();
  qword_27F2338B8 = result;
  return result;
}

uint64_t sub_24EF049A0()
{
  result = sub_24F92B098();
  qword_27F2338C0 = result;
  return result;
}

uint64_t sub_24EF04A00()
{
  result = sub_24F92B098();
  qword_27F2338C8 = result;
  return result;
}

uint64_t sub_24EF04A5C()
{
  result = sub_24F92B098();
  qword_27F2338D0 = result;
  return result;
}

uint64_t sub_24EF04AB8()
{
  result = sub_24F92B098();
  qword_27F2338D8 = result;
  return result;
}

uint64_t sub_24EF04B14()
{
  result = sub_24F92B098();
  qword_27F2338E0 = result;
  return result;
}

uint64_t sub_24EF04B70()
{
  result = sub_24F92B098();
  qword_27F2338E8 = result;
  return result;
}

uint64_t sub_24EF04BCC()
{
  result = sub_24F92B098();
  qword_27F2338F0 = result;
  return result;
}

uint64_t sub_24EF04C28()
{
  result = sub_24F92B098();
  qword_27F2338F8 = result;
  return result;
}

uint64_t sub_24EF04C84()
{
  result = sub_24F92B098();
  qword_27F233900 = result;
  return result;
}

uint64_t sub_24EF04CE0()
{
  result = sub_24F92B098();
  qword_27F233908 = result;
  return result;
}

uint64_t sub_24EF04D3C()
{
  result = sub_24F92B098();
  qword_27F233910 = result;
  return result;
}

uint64_t sub_24EF04D98()
{
  result = sub_24F92B098();
  qword_27F233918 = result;
  return result;
}

uint64_t sub_24EF04DF4()
{
  result = sub_24F92B098();
  qword_27F233920 = result;
  return result;
}

uint64_t sub_24EF04E50()
{
  result = sub_24F92B098();
  qword_27F233928 = result;
  return result;
}

uint64_t sub_24EF04EAC()
{
  result = sub_24F92B098();
  qword_27F233930 = result;
  return result;
}

uint64_t sub_24EF04F10()
{
  result = sub_24F92B098();
  qword_27F233938 = result;
  return result;
}

uint64_t sub_24EF04F6C()
{
  result = sub_24F92B098();
  qword_27F233940 = result;
  return result;
}

uint64_t sub_24EF04FC8()
{
  result = sub_24F92B098();
  qword_27F233948 = result;
  return result;
}

uint64_t sub_24EF05024()
{
  result = sub_24F92B098();
  qword_27F233950 = result;
  return result;
}

uint64_t sub_24EF05080()
{
  result = sub_24F92B098();
  qword_27F233958 = result;
  return result;
}

uint64_t sub_24EF050E4()
{
  result = sub_24F92B098();
  qword_27F233960 = result;
  return result;
}

uint64_t sub_24EF05140()
{
  result = sub_24F92B098();
  qword_27F233968 = result;
  return result;
}

uint64_t sub_24EF0519C()
{
  result = sub_24F92B098();
  qword_27F233970 = result;
  return result;
}

uint64_t sub_24EF051F8()
{
  result = sub_24F92B098();
  qword_27F233978 = result;
  return result;
}

uint64_t sub_24EF05254()
{
  result = sub_24F92B098();
  qword_27F233980 = result;
  return result;
}

uint64_t sub_24EF052B0()
{
  result = sub_24F92B098();
  qword_27F233988 = result;
  return result;
}

uint64_t sub_24EF0530C()
{
  result = sub_24F92B098();
  qword_27F233990 = result;
  return result;
}

uint64_t sub_24EF05368()
{
  result = sub_24F92B098();
  qword_27F233998 = result;
  return result;
}

uint64_t sub_24EF053C4()
{
  result = sub_24F92B098();
  qword_27F2339A0 = result;
  return result;
}

uint64_t sub_24EF05420()
{
  result = sub_24F92B098();
  qword_27F2339A8 = result;
  return result;
}

uint64_t sub_24EF0547C()
{
  result = sub_24F92B098();
  qword_27F2339B0 = result;
  return result;
}

uint64_t sub_24EF054D8()
{
  result = sub_24F92B098();
  qword_27F2339B8 = result;
  return result;
}

uint64_t sub_24EF05534()
{
  result = sub_24F92B098();
  qword_27F2339C0 = result;
  return result;
}

uint64_t sub_24EF05590()
{
  result = sub_24F92B098();
  qword_27F2339C8 = result;
  return result;
}

uint64_t sub_24EF055EC()
{
  result = sub_24F92B098();
  qword_27F2339D0 = result;
  return result;
}

uint64_t sub_24EF05648()
{
  result = sub_24F92B098();
  qword_27F2339D8 = result;
  return result;
}

uint64_t sub_24EF056A4()
{
  result = sub_24F92B098();
  qword_27F2339E0 = result;
  return result;
}

uint64_t sub_24EF05700()
{
  result = sub_24F92B098();
  qword_27F2339E8 = result;
  return result;
}

uint64_t sub_24EF0575C()
{
  result = sub_24F92B098();
  qword_27F2339F0 = result;
  return result;
}

uint64_t sub_24EF057B8()
{
  result = sub_24F92B098();
  qword_27F2339F8 = result;
  return result;
}

uint64_t sub_24EF05814()
{
  result = sub_24F92B098();
  qword_27F233A00 = result;
  return result;
}

uint64_t sub_24EF05870()
{
  result = sub_24F92B098();
  qword_27F233A08 = result;
  return result;
}

uint64_t sub_24EF058CC()
{
  result = sub_24F92B098();
  qword_27F233A10 = result;
  return result;
}

uint64_t sub_24EF05928()
{
  result = sub_24F92B098();
  qword_27F233A18 = result;
  return result;
}

uint64_t sub_24EF05984()
{
  result = sub_24F92B098();
  qword_27F233A20 = result;
  return result;
}

uint64_t sub_24EF059E0()
{
  result = sub_24F92B098();
  qword_27F233A28 = result;
  return result;
}

uint64_t sub_24EF05A3C()
{
  result = sub_24F92B098();
  qword_27F233A30 = result;
  return result;
}

uint64_t sub_24EF05A98()
{
  result = sub_24F92B098();
  qword_27F233A38 = result;
  return result;
}

uint64_t sub_24EF05AF4()
{
  result = sub_24F92B098();
  qword_27F233A40 = result;
  return result;
}

uint64_t sub_24EF05B50()
{
  result = sub_24F92B098();
  qword_27F233A48 = result;
  return result;
}

uint64_t sub_24EF05BAC()
{
  result = sub_24F92B098();
  qword_27F233A50 = result;
  return result;
}

uint64_t sub_24EF05C08()
{
  result = sub_24F92B098();
  qword_27F233A58 = result;
  return result;
}

uint64_t sub_24EF05C64()
{
  result = sub_24F92B098();
  qword_27F233A60 = result;
  return result;
}

uint64_t sub_24EF05CC0()
{
  result = sub_24F92B098();
  qword_27F233A68 = result;
  return result;
}

uint64_t sub_24EF05D1C()
{
  result = sub_24F92B098();
  qword_27F233A70 = result;
  return result;
}

uint64_t sub_24EF05D78()
{
  result = sub_24F92B098();
  qword_27F233A78 = result;
  return result;
}

uint64_t sub_24EF05DD4()
{
  result = sub_24F92B098();
  qword_27F233A80 = result;
  return result;
}

uint64_t sub_24EF05E30()
{
  result = sub_24F92B098();
  qword_27F233A88 = result;
  return result;
}

uint64_t sub_24EF05E8C()
{
  result = sub_24F92B098();
  qword_27F233A90 = result;
  return result;
}

uint64_t sub_24EF05EE8()
{
  result = sub_24F92B098();
  qword_27F233A98 = result;
  return result;
}

uint64_t sub_24EF05F44()
{
  result = sub_24F92B098();
  qword_27F233AA0 = result;
  return result;
}

uint64_t sub_24EF05FA0()
{
  result = sub_24F92B098();
  qword_27F233AA8 = result;
  return result;
}

uint64_t sub_24EF05FFC()
{
  result = sub_24F92B098();
  qword_27F233AB0 = result;
  return result;
}

uint64_t sub_24EF06058()
{
  result = sub_24F92B098();
  qword_27F233AB8 = result;
  return result;
}

uint64_t sub_24EF060B4()
{
  result = sub_24F92B098();
  qword_27F233AC0 = result;
  return result;
}

uint64_t sub_24EF06110()
{
  result = sub_24F92B098();
  qword_27F233AC8 = result;
  return result;
}

uint64_t sub_24EF0616C()
{
  result = sub_24F92B098();
  qword_27F233AD0 = result;
  return result;
}

uint64_t sub_24EF061C8()
{
  result = sub_24F92B098();
  qword_27F233AD8 = result;
  return result;
}

uint64_t sub_24EF06224()
{
  result = sub_24F92B098();
  qword_27F233AE0 = result;
  return result;
}

uint64_t sub_24EF06280()
{
  result = sub_24F92B098();
  qword_27F233AE8 = result;
  return result;
}

uint64_t sub_24EF062DC()
{
  result = sub_24F92B098();
  qword_27F233AF0 = result;
  return result;
}

uint64_t sub_24EF06338()
{
  result = sub_24F92B098();
  qword_27F233AF8 = result;
  return result;
}

uint64_t sub_24EF06394()
{
  result = sub_24F92B098();
  qword_27F233B00 = result;
  return result;
}

uint64_t sub_24EF063F0()
{
  result = sub_24F92B098();
  qword_27F233B08 = result;
  return result;
}

uint64_t sub_24EF0644C()
{
  result = sub_24F92B098();
  qword_27F233B10 = result;
  return result;
}

uint64_t sub_24EF064A8()
{
  result = sub_24F92B098();
  qword_27F233B18 = result;
  return result;
}

uint64_t sub_24EF06504()
{
  result = sub_24F92B098();
  qword_27F233B20 = result;
  return result;
}

uint64_t sub_24EF06560()
{
  result = sub_24F92B098();
  qword_27F233B28 = result;
  return result;
}

uint64_t sub_24EF065BC()
{
  result = sub_24F92B098();
  qword_27F233B30 = result;
  return result;
}

uint64_t sub_24EF06618()
{
  result = sub_24F92B098();
  qword_27F233B38 = result;
  return result;
}

uint64_t sub_24EF06674()
{
  result = sub_24F92B098();
  qword_27F233B40 = result;
  return result;
}

uint64_t sub_24EF066D0()
{
  result = sub_24F92B098();
  qword_27F233B48 = result;
  return result;
}

uint64_t sub_24EF0672C()
{
  result = sub_24F92B098();
  qword_27F233B50 = result;
  return result;
}

uint64_t sub_24EF06788()
{
  result = sub_24F92B098();
  qword_27F233B58 = result;
  return result;
}

uint64_t sub_24EF067E4()
{
  result = sub_24F92B098();
  qword_27F233B60 = result;
  return result;
}

uint64_t sub_24EF06840()
{
  result = sub_24F92B098();
  qword_27F233B68 = result;
  return result;
}

uint64_t sub_24EF0689C()
{
  result = sub_24F92B098();
  qword_27F233B70 = result;
  return result;
}

uint64_t sub_24EF068F8()
{
  result = sub_24F92B098();
  qword_27F233B78 = result;
  return result;
}

uint64_t sub_24EF06954()
{
  result = sub_24F92B098();
  qword_27F233B80 = result;
  return result;
}

uint64_t sub_24EF069B0()
{
  result = sub_24F92B098();
  qword_27F233B88 = result;
  return result;
}

uint64_t sub_24EF06A0C()
{
  result = sub_24F92B098();
  qword_27F233B90 = result;
  return result;
}

void *ShareSheetGenericMetadata.__allocating_init(text:subtitle:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

uint64_t ShareSheetGenericMetadata.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ShareSheetGenericMetadata.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *ShareSheetGenericMetadata.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v31 = *v3;
  v33 = sub_24F9285B8();
  v5 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v35 = a1;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v17 = *(v8 + 8);
  v17(v13, v7);
  if (v16)
  {
    v3[2] = v14;
    v3[3] = v16;
    v18 = v35;
    sub_24F928398();
    v19 = sub_24F928348();
    v21 = v20;
    v30 = v17;
    v17(v11, v7);
    v3[4] = v19;
    v3[5] = v21;
    type metadata accessor for Artwork();
    sub_24F928398();
    v22 = *(v5 + 16);
    v31 = v7;
    v24 = v33;
    v23 = v34;
    v22(v32, v34, v33);
    sub_24EA864C0(&qword_27F219660, type metadata accessor for Artwork);
    sub_24F929548();
    (*(v5 + 8))(v23, v24);
    v30(v18, v31);
    v3[6] = v36;
  }

  else
  {
    v25 = sub_24F92AC38();
    sub_24EA864C0(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v26 = 1954047348;
    v27 = v31;
    v26[1] = 0xE400000000000000;
    v26[2] = v27;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D22530], v25);
    swift_willThrow();
    (*(v5 + 8))(v34, v33);
    v17(v35, v7);
    type metadata accessor for ShareSheetGenericMetadata();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

void *ShareSheetGenericMetadata.init(text:subtitle:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t ShareSheetGenericMetadata.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ShareSheetGenericMetadata.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ShareSheetGenericMetadata.deinit()
{

  return v0;
}

uint64_t ShareSheetGenericMetadata.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_24EF07040@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ShareSheetGenericMetadata();
  v7 = swift_allocObject();
  result = ShareSheetGenericMetadata.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t StringBasedShelfOrderingId.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

GameStoreKit::StringBasedShelfOrderingId_optional __swiftcall StringBasedShelfOrderingId.init(rawValue:)(Swift::String rawValue)
{
  *v1 = rawValue;
  result.value.rawValue = rawValue;
  return result;
}

uint64_t sub_24EF07194()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EF071E8()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

void *sub_24EF07230@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t SearchChartsAndCategoriesPage.title.getter()
{
  v1 = *(v0 + qword_27F39CED8);

  return v1;
}

uint64_t *SearchChartsAndCategoriesPage.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v43 = *v3;
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v46 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v40 - v10;
  v52 = sub_24F928388();
  v48 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v45 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v40 - v14;
  type metadata accessor for PageTabs();
  v49 = a1;
  sub_24F928398();
  v17 = v7 + 16;
  v16 = *(v7 + 16);
  v50 = v6;
  v51 = a2;
  v44 = v16;
  v16(v11, a2, v6);
  sub_24EF0784C(&qword_27F232AC0, type metadata accessor for PageTabs);
  sub_24F929548();
  if (v53)
  {
    v43 = v7;
    v41 = v53;
    v18 = v49;
    sub_24F928398();
    v19 = sub_24F928348();
    v21 = v20;
    v22 = v48;
    v40[1] = v17;
    v23 = v48 + 8;
    v24 = *(v48 + 8);
    v25 = v52;
    v24(v15, v52);
    v26 = (v3 + qword_27F39CED8);
    *v26 = v19;
    v26[1] = v21;
    sub_24F928398();
    v27 = sub_24F928258();
    LOBYTE(v21) = v28;
    v42 = v23;
    v24(v15, v25);
    v29 = v3 + qword_27F39CEE0;
    *v29 = v27;
    v29[8] = v21 & 1;
    *(v3 + qword_27F39CEE8) = v41;
    v30 = v45;
    v31 = v18;
    (*(v22 + 16))(v45, v18, v25);
    v32 = v46;
    v34 = v50;
    v33 = v51;
    v44(v46, v51, v50);
    v35 = v47;
    v36 = sub_24EA8B1BC(v30, v32);
    if (!v35)
    {
      v3 = v36;
    }

    (*(v43 + 8))(v33, v34);
    v24(v31, v52);
  }

  else
  {
    v37 = sub_24F92AC38();
    sub_24EF0784C(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v38 = 0xD000000000000011;
    v38[1] = 0x800000024FA63C70;
    v38[2] = v43;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D22530], v37);
    swift_willThrow();
    (*(v7 + 8))(v51, v50);
    (*(v48 + 8))(v49, v52);
    type metadata accessor for SearchChartsAndCategoriesPage();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t sub_24EF0784C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SearchChartsAndCategoriesPage()
{
  result = qword_27F233BA8;
  if (!qword_27F233BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF078E0()
{
}

uint64_t SearchChartsAndCategoriesPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E857CC8(v0 + *(*v0 + 192));

  return v0;
}

uint64_t SearchChartsAndCategoriesPage.__deallocating_deinit()
{
  SearchChartsAndCategoriesPage.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24EF07A84(uint64_t a1)
{
  *(a1 + 8) = sub_24EA909C8();
  result = sub_24EF07AB4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24EF07AB4()
{
  result = qword_27F233B98;
  if (!qword_27F233B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233B98);
  }

  return result;
}

unint64_t sub_24EF07B0C()
{
  result = qword_27F233BA0;
  if (!qword_27F233BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233BA0);
  }

  return result;
}

uint64_t sub_24EF07C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v47 = a2;
  v44 = sub_24F91F6B8();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41 - v6;
  v8 = sub_24F928AD8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v41 - v16;
  v18 = sub_24F91F4A8();
  v58 = 0u;
  v59 = 0u;
  v60 = 0;
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v57[3] = type metadata accessor for ShareSheetAction();
  v57[0] = a1;

  sub_24F928A98();
  v19 = sub_24F929CF8();
  v21 = v20;
  v22 = type metadata accessor for FlowAction();
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v24 = v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v25 = 0;
  v25[1] = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 40;
  sub_24E60169C(v17, v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
  v26 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v26 = 0;
  v26[1] = 0;
  v27 = v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v27 = xmmword_24F9406F0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 16) = 0;
  *(v27 + 40) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v28 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v28 = v19;
  v28[1] = v21;
  sub_24E60169C(&v58, v56, &qword_27F235830);
  v29 = *(v9 + 16);
  v45 = v11;
  v29(v11, v14, v8);
  v30 = sub_24F929608();
  v31 = v7;
  (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
  v32 = (v23 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v32 = 0u;
  v32[1] = 0u;
  sub_24E60169C(v56, &v50, &qword_27F235830);
  if (*(&v51 + 1))
  {
    v53 = v50;
    v54 = v51;
    v55 = v52;
  }

  else
  {
    v33 = v42;
    sub_24F91F6A8();
    v34 = sub_24F91F668();
    v36 = v35;
    (*(v43 + 8))(v33, v44);
    v48 = v34;
    v49 = v36;
    sub_24F92C7F8();
    sub_24E601704(&v50, &qword_27F235830);
  }

  sub_24E601704(v56, &qword_27F235830);
  v37 = v23 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v38 = v54;
  *v37 = v53;
  *(v37 + 16) = v38;
  *(v37 + 32) = v55;
  sub_24E65E0D4(v31, v23 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  (*(v9 + 32))(v23 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v45, v8);

  FlowAction.setPageData(_:)(v57);

  (*(v9 + 8))(v14, v8);
  sub_24E601704(v17, &qword_27F228530);
  sub_24E601704(&v58, &qword_27F235830);
  sub_24E601704(v57, &qword_27F2129B0);
  *(&v59 + 1) = v22;
  v60 = sub_24EF082D0(&qword_27F216400, type metadata accessor for FlowAction);
  *&v58 = v23;
  type metadata accessor for ShareSheetActionImplementation();

  swift_getWitnessTable();
  v39 = sub_24F1489C4(&v58);

  __swift_destroy_boxed_opaque_existential_1(&v58);
  return v39;
}

uint64_t sub_24EF082D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EF08334@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>)
{
  v27 = a8;
  v28 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v26 - v18;
  sub_24EB035C0(a1, &v26 - v18);
  sub_24EB035C0(a2, &v19[*(v17 + 56)]);
  v29 = 1;
  if (qword_27F210C38 != -1)
  {
    swift_once();
  }

  v20 = qword_27F233C40;
  v21 = *MEMORY[0x277D768C8];
  v22 = *(MEMORY[0x277D768C8] + 8);
  v23 = *(MEMORY[0x277D768C8] + 16);
  v24 = *(MEMORY[0x277D768C8] + 24);

  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x6972477974706D65, 0xE900000000000064, &v29, 0, v20, a3, a4, a5, a6, a7, v27, v28, v21, v22, v23, v24);
  return sub_24EB03630(v19);
}

__n128 sub_24EF084D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F93DE60;
  if (qword_27F210640 != -1)
  {
    v9 = v0;
    swift_once();
    v0 = v9;
  }

  *(v0 + 32) = xmmword_24F944DE0;
  *(v0 + 48) = vdupq_n_s64(0xC0C81C8000000000);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 88) = _Q0;
  v6 = xmmword_27F22E220;
  *(v0 + 120) = xmmword_27F22E220;
  *(v0 + 104) = v6;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  result = *MEMORY[0x277D768C8];
  v8 = *(MEMORY[0x277D768C8] + 16);
  *(v0 + 160) = *MEMORY[0x277D768C8];
  *(v0 + 176) = v8;
  qword_27F233C40 = v0;
  return result;
}

uint64_t LegacyAppState.hasBeenPurchased.getter()
{
  v1 = *v0;
  v2 = v0[6];
  if (v2 >> 60)
  {
    if (v2 >> 60 == 8)
    {
      v3 = v0[4];
      v4 = v0[5] | v0[7];
      v5 = v0[3] | v0[2] | v0[1];
      v6 = v2 == 0x8000000000000000 && (v4 | v1 | v3 | v5) == 0;
      if (v6 || v2 == 0x8000000000000000 && v1 == 4 && !(v4 | v3 | v5))
      {
        return 0;
      }
    }
  }

  else if (*v0 == 1)
  {
    return 0;
  }

  return 1;
}

uint64_t LegacyAppState.isLocalApplication.getter()
{
  v1 = v0[3].u64[0];
  v2 = v1 >> 60;
  if (v1 >> 60 == 2 || v2 == 7)
  {
    return 1;
  }

  if (v2 == 8 && !v0[3].i64[1])
  {
    v5 = vorrq_s8(v0[1], v0[2]);
    v6 = *&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | v0->i64[1];
    v7 = v1 == 0x8000000000000000 && v0->i64[0] == 1;
    if (v7 && v6 == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t LegacyAppStateMachine.__allocating_init(adamId:initialState:initialBetaState:rules:appStateController:)(uint64_t *a1, _OWORD *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v13 = *a1;
  v12 = a1[1];
  *(v11 + 160) = MEMORY[0x277D84F90];
  *(v11 + 184) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 192) = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  v14 = OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine__startDownloadTime;
  v15 = sub_24F91F648();
  (*(*(v15 - 8) + 56))(v11 + v14, 1, 1, v15);
  v16 = (v11 + OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine_redownloadBuyParams);
  *v16 = 0;
  v16[1] = 0;
  *(v11 + 16) = v13;
  *(v11 + 24) = v12;
  v17 = a2[1];
  *(v11 + 32) = *a2;
  *(v11 + 48) = v17;
  v18 = a2[3];
  *(v11 + 64) = a2[2];
  *(v11 + 80) = v18;
  v19 = a3[1];
  *(v11 + 96) = *a3;
  *(v11 + 112) = v19;
  v20 = a3[3];
  *(v11 + 128) = a3[2];
  *(v11 + 144) = v20;
  *(v11 + 168) = a4;
  swift_beginAccess();
  *(v11 + 184) = a6;
  swift_unknownObjectWeakAssign();
  v21 = qword_27F210C50;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_24F92AAE8();
  __swift_project_value_buffer(v22, qword_27F39CF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  v28 = &type metadata for AdamId;
  v26 = v13;
  v27 = v12;
  sub_24F9283B8();
  sub_24E601704(&v26, &qword_27F2129B0);
  sub_24F9283A8();
  v23 = LegacyAppState.dictionaryKey.getter();
  v28 = MEMORY[0x277D837D0];
  v26 = v23;
  v27 = v24;
  sub_24F928438();
  sub_24E601704(&v26, &qword_27F2129B0);
  sub_24F92A598();
  swift_unknownObjectRelease();

  return v11;
}

uint64_t sub_24EF08A14(_OWORD *a1, void (*a2)(unsigned __int8 *__return_ptr, uint64_t *, _OWORD *, uint64_t))
{
  v4 = *v2;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a1[3];
  v11[2] = a1[2];
  v11[3] = v6;
  v7 = v2[24];
  v8 = v4;
  [v7 lock];
  a2(&v10, v2, v11, v8);
  [v7 unlock];
  return v10;
}

uint64_t LegacyAppState.dictionaryKey.getter()
{
  v1 = v0[6];
  v2 = v1 >> 60;
  if ((v1 >> 60) <= 3)
  {
    v4 = 0x676E6974696177;
    v5 = 0x6C62617461647075;
    if (v2 != 2)
    {
      v5 = 0x64616F6C6E776F64;
    }

    if (v2)
    {
      v4 = 0x6573616863727570;
    }

    if (v2 <= 1)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else if (v2 <= 5)
  {
    if (v2 == 4)
    {
      return 0x646573756170;
    }

    else
    {
      return 0x64616F6C6E776F64;
    }
  }

  else if (v2 == 6)
  {
    return 0x696C6C6174736E69;
  }

  else if (v2 == 7)
  {
    return 0x656C62616E65706FLL;
  }

  else
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = v0[7];
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4] | v0[5];
    if (v1 != 0x8000000000000000 || v11 | v6 | v8 | v9 | v10 | v7)
    {
      v12 = v11 | v9 | v10 | v7;
      if (v8 || v1 != 0x8000000000000000 || v6 != 1 || v12)
      {
        if (v8 || v1 != 0x8000000000000000 || v6 != 2 || v12)
        {
          v13 = v8 == 0;
          v16 = v6 == 3 && v12 == 0 && v1 == 0x8000000000000000;
          if (v13 && v16)
          {
            return 0x7463697274736572;
          }

          else
          {
            return 0x6E776F6E6B6E75;
          }
        }

        else
        {
          return 0x6E4965746F6D6572;
        }
      }

      else
      {
        return 0x656C6C6174736E69;
      }
    }

    else
    {
      return 0x656C6261797562;
    }
  }
}

id LegacyAppStateMachine.currentState.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 192);
  [v3 lock];
  v4 = *(v1 + 48);
  v9[0] = *(v1 + 32);
  v9[1] = v4;
  v6 = *(v1 + 80);
  v10 = *(v1 + 64);
  v5 = v10;
  v11 = v6;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  sub_24E8B9478(v9, &v8);
  return [v3 unlock];
}

BOOL LegacyAppState.isBuyable.getter()
{
  v1 = v0[6];
  result = 0;
  if (v1 >> 60 == 8)
  {
    v2 = v0[4];
    v3 = v0[5] | v0[7];
    v4 = v0[3] | v0[2] | v0[1];
    v5 = v1 == 0x8000000000000000 && (v3 | *v0 | v2 | v4) == 0;
    if (v5 || v1 == 0x8000000000000000 && *v0 == 4 && !(v3 | v2 | v4))
    {
      return 1;
    }
  }

  return result;
}

uint64_t InstallationType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x657461647075;
  if (*v0 != 2)
  {
    v2 = 0x6F6C6E776F646572;
  }

  if (*v0)
  {
    v1 = 0x6573616863727570;
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

double sub_24EF08ECC()
{
  qword_27F39CF28 = 0;
  result = 0.0;
  xmmword_27F39CEF0 = 0u;
  unk_27F39CF00 = 0u;
  xmmword_27F39CF10 = 0u;
  word_27F39CF20 = 0;
  return result;
}

void *LegacyAppState.AppInstallationDetails.progress.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *LegacyAppState.AppInstallationDetails.downloadingPhaseProgress.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *LegacyAppState.AppInstallationDetails.installingPhaseProgress.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *LegacyAppState.AppInstallationDetails.postProcessingPhaseProgress.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id sub_24EF08FBC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v0 setAllowedUnits_];
  [v0 setUnitsStyle_];
  result = [v0 setMaximumUnitCount_];
  qword_27F233C48 = v0;
  return result;
}

uint64_t LegacyAppState.estimatedTimeRemaining.getter()
{
  if (v0[6] >> 60 != 5)
  {
    return 0;
  }

  v2 = v0[1];
  v1 = v0[2];
  v3 = v0[4];
  if (v1)
  {
    v4 = v1;
    v5 = [v4 completedUnitCount];
    if (v5 < [v4 totalUnitCount])
    {
      goto LABEL_10;
    }
  }

  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v6 = [v4 completedUnitCount];
  if (v6 < [v4 totalUnitCount])
  {
LABEL_10:
    v7 = sub_24F92BD18();

    return v7;
  }

LABEL_8:
  if (v2)
  {
    v4 = v2;
    goto LABEL_10;
  }

  return 0;
}

id LegacyAppState.estimatedTimeRemainingText.getter()
{
  if (v0[6] >> 60 != 5)
  {
    return 0;
  }

  v2 = v0[1];
  v1 = v0[2];
  v3 = v0[4];
  if (v1)
  {
    v4 = v1;
    v5 = [v4 completedUnitCount];
    if (v5 < [v4 totalUnitCount])
    {
      goto LABEL_10;
    }
  }

  if (v3)
  {
    v4 = v3;
    v6 = [v4 completedUnitCount];
    if (v6 < [v4 totalUnitCount])
    {
      goto LABEL_10;
    }
  }

  if (!v2)
  {
    return 0;
  }

  v4 = v2;
LABEL_10:
  sub_24F92BD18();
  v8 = v7;

  if (v8)
  {
    return 0;
  }

  if (qword_27F210C48 != -1)
  {
    swift_once();
  }

  result = [qword_27F233C48 stringFromTimeInterval_];
  if (result)
  {
    v10 = result;
    v11 = sub_24F92B0D8();

    return v11;
  }

  return result;
}

GameStoreKit::InstallationType_optional __swiftcall InstallationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24EF09358()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EF0941C()
{
  sub_24F92B218();
}

uint64_t sub_24EF094CC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EF09598(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE600000000000000;
  v5 = 0x657461647075;
  if (*v1 != 2)
  {
    v5 = 0x6F6C6E776F646572;
    v4 = 0xEA00000000006461;
  }

  if (*v1)
  {
    v3 = 0x6573616863727570;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t PurchaseType.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

GameStoreKit::OpenableDestination_optional __swiftcall OpenableDestination.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t OpenableDestination.rawValue.getter()
{
  if (*v0)
  {
    return 0x736567617373656DLL;
  }

  else
  {
    return 7368801;
  }
}

uint64_t sub_24EF09724(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736567617373656DLL;
  }

  else
  {
    v3 = 7368801;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x736567617373656DLL;
  }

  else
  {
    v5 = 7368801;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24EF097C4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EF09840()
{
  sub_24F92B218();
}

uint64_t sub_24EF098A8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EF09920@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

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

void sub_24EF09980(uint64_t *a1@<X8>)
{
  v2 = 7368801;
  if (*v1)
  {
    v2 = 0x736567617373656DLL;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24EF099B8()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39CF30);
  __swift_project_value_buffer(v4, qword_27F39CF30);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t LegacyAppStateMachine.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

id LegacyAppStateMachine.startDownloadTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 192);
  [v3 lock];
  v4 = OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine__startDownloadTime;
  swift_beginAccess();
  sub_24E60169C(v1 + v4, a1, &unk_27F22EC30);
  return [v3 unlock];
}

uint64_t LegacyAppStateMachine.appStateController.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 184) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*LegacyAppStateMachine.appStateController.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 184);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24EF09CDC;
}

void sub_24EF09CDC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 184) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t LegacyAppStateMachine.init(adamId:initialState:initialBetaState:rules:appStateController:)(uint64_t *a1, _OWORD *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *a1;
  v12 = a1[1];
  *(v7 + 160) = MEMORY[0x277D84F90];
  *(v7 + 184) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 192) = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  v14 = OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine__startDownloadTime;
  v15 = sub_24F91F648();
  (*(*(v15 - 8) + 56))(v7 + v14, 1, 1, v15);
  v16 = (v7 + OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine_redownloadBuyParams);
  *v16 = 0;
  v16[1] = 0;
  *(v7 + 16) = v13;
  *(v7 + 24) = v12;
  v17 = a2[1];
  *(v7 + 32) = *a2;
  *(v7 + 48) = v17;
  v18 = a2[3];
  *(v7 + 64) = a2[2];
  *(v7 + 80) = v18;
  v19 = a3[1];
  *(v7 + 96) = *a3;
  *(v7 + 112) = v19;
  v20 = a3[3];
  *(v7 + 128) = a3[2];
  *(v7 + 144) = v20;
  *(v7 + 168) = a4;
  swift_beginAccess();
  *(v7 + 184) = a6;
  swift_unknownObjectWeakAssign();
  v21 = qword_27F210C50;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_24F92AAE8();
  __swift_project_value_buffer(v22, qword_27F39CF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  v28 = &type metadata for AdamId;
  v26 = v13;
  v27 = v12;
  sub_24F9283B8();
  sub_24E601704(&v26, &qword_27F2129B0);
  sub_24F9283A8();
  v23 = LegacyAppState.dictionaryKey.getter();
  v28 = MEMORY[0x277D837D0];
  v26 = v23;
  v27 = v24;
  sub_24F928438();
  sub_24E601704(&v26, &qword_27F2129B0);
  sub_24F92A598();
  swift_unknownObjectRelease();

  return v7;
}

id LegacyAppStateMachine.currentStateIncludingBeta(_:)@<X0>(char a1@<W0>, __int128 *a2@<X8>)
{
  v5 = *(v2 + 192);
  [v5 lock];
  if ((a1 & 1) != 0 && (v6 = *(v2 + 112), v31[0] = *(v2 + 96), v31[1] = v6, v7 = *(v2 + 144), v9 = *(v2 + 96), v8 = *(v2 + 112), v31[2] = *(v2 + 128), v31[3] = v7, v27 = v9, v28 = v8, v10 = *(v2 + 144), v29 = *(v2 + 128), v30 = v10, v22 = 4, v23 = 0u, v24 = 0u, v25 = 0, v26 = xmmword_24F966510, sub_24E8B9478(v31, &v21), v11 = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v27, &v22), v32 = v27, v33 = v28, v34 = v29, v35 = v30, sub_24E88D2AC(&v32), (v11 & 1) == 0))
  {
    v17 = *(v2 + 112);
    v27 = *(v2 + 96);
    v28 = v17;
    v19 = *(v2 + 144);
    v29 = *(v2 + 128);
    v18 = v29;
    v30 = v19;
    *a2 = v27;
    a2[1] = v17;
    a2[2] = v18;
    a2[3] = v19;
    v15 = &v27;
    v16 = &v22;
  }

  else
  {
    v12 = *(v2 + 48);
    v32 = *(v2 + 32);
    v33 = v12;
    v14 = *(v2 + 80);
    v34 = *(v2 + 64);
    v13 = v34;
    v35 = v14;
    *a2 = v32;
    a2[1] = v12;
    a2[2] = v13;
    a2[3] = v14;
    v15 = &v32;
    v16 = v31;
  }

  sub_24E8B9478(v15, v16);
  return [v5 unlock];
}

uint64_t sub_24EF0A168@<X0>(char a1@<W0>, _OWORD *a2@<X1>, __int128 *a3@<X8>)
{
  if ((a1 & 1) != 0 && (v5 = a2[7], v30[0] = a2[6], v30[1] = v5, v6 = a2[9], v8 = a2[6], v7 = a2[7], v30[2] = a2[8], v30[3] = v6, v26 = v8, v27 = v7, v9 = a2[9], v28 = a2[8], v29 = v9, v21 = 4, v22 = 0u, v23 = 0u, v24 = 0, v25 = xmmword_24F966510, sub_24E8B9478(v30, &v20), v10 = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v26, &v21), v31 = v26, v32 = v27, v33 = v28, v34 = v29, sub_24E88D2AC(&v31), (v10 & 1) == 0))
  {
    v16 = a2[7];
    v26 = a2[6];
    v27 = v16;
    v18 = a2[9];
    v28 = a2[8];
    v17 = v28;
    v29 = v18;
    *a3 = v26;
    a3[1] = v16;
    a3[2] = v17;
    a3[3] = v18;
    v14 = &v26;
    v15 = &v21;
  }

  else
  {
    v11 = a2[3];
    v31 = a2[2];
    v32 = v11;
    v13 = a2[5];
    v33 = a2[4];
    v12 = v33;
    v34 = v13;
    *a3 = v31;
    a3[1] = v11;
    a3[2] = v12;
    a3[3] = v13;
    v14 = &v31;
    v15 = v30;
  }

  return sub_24E8B9478(v14, v15);
}

BOOL LegacyAppStateMachine.hasCurrentBetaState.getter()
{
  v1 = *(v0 + 192);
  [v1 lock];
  v2 = *(v0 + 112);
  v18[0] = *(v0 + 96);
  v18[1] = v2;
  v3 = *(v0 + 144);
  v5 = *(v0 + 96);
  v4 = *(v0 + 112);
  v18[2] = *(v0 + 128);
  v18[3] = v3;
  v14 = v5;
  v15 = v4;
  v6 = *(v0 + 144);
  v16 = *(v0 + 128);
  v17 = v6;
  v9 = 4;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v13 = xmmword_24F966510;
  sub_24E8B9478(v18, v19);
  v7 = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v14, &v9);
  v19[0] = v14;
  v19[1] = v15;
  v19[2] = v16;
  v19[3] = v17;
  sub_24E88D2AC(v19);
  [v1 unlock];
  return (v7 & 1) == 0;
}

uint64_t LegacyAppStateMachine.redownloadBuyParams.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine_redownloadBuyParams);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t LegacyAppStateMachine.redownloadBuyParams.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine_redownloadBuyParams);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_24EF0A45C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v65 - v11;
  v13 = *(a1 + 48);
  v89[0] = *(a1 + 32);
  v89[1] = v13;
  v14 = *(a1 + 80);
  v16 = *(a1 + 32);
  v15 = *(a1 + 48);
  v89[2] = *(a1 + 64);
  v89[3] = v14;
  v85 = v16;
  v86 = v15;
  v17 = *(a1 + 80);
  v87 = *(a1 + 64);
  v88 = v17;
  v18 = a2[1];
  v81 = *a2;
  v82 = v18;
  v19 = a2[3];
  v83 = a2[2];
  v84 = v19;
  sub_24E8B9478(v89, v90);
  v20 = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v85, &v81);
  v90[0] = v85;
  v90[1] = v86;
  v90[2] = v87;
  v90[3] = v88;
  result = sub_24E88D2AC(v90);
  if (v20)
  {
LABEL_14:
    *a3 = 1;
    return result;
  }

  v66 = v12;
  v70 = a3;
  v91 = v3;
  v22 = *(a1 + 168);
  v23 = LegacyAppState.dictionaryKey.getter();
  if (!*(v22 + 16))
  {

    goto LABEL_7;
  }

  v25 = sub_24E76D644(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_7:
    v65 = v9;
    if (qword_27F210C50 != -1)
    {
      swift_once();
    }

    v69 = sub_24F92AAE8();
    v68 = __swift_project_value_buffer(v69, qword_27F39CF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    v67 = 4 * *(*(sub_24F928468() - 8) + 72);
    *(swift_allocObject() + 16) = xmmword_24F942000;
    v40 = *(a1 + 16);
    v39 = *(a1 + 24);
    *(&v86 + 1) = &type metadata for AdamId;
    *&v85 = v40;
    *(&v85 + 1) = v39;

    sub_24F9283B8();
    sub_24E601704(&v85, &qword_27F2129B0);
    sub_24F9283A8();
    v41 = LegacyAppState.dictionaryKey.getter();
    *(&v86 + 1) = MEMORY[0x277D837D0];
    *&v85 = v41;
    *(&v85 + 1) = v42;
    sub_24F928438();
    sub_24E601704(&v85, &qword_27F2129B0);
    sub_24F9283A8();
    v43 = LegacyAppState.dictionaryKey.getter();
    *(&v86 + 1) = MEMORY[0x277D837D0];
    *&v85 = v43;
    *(&v85 + 1) = v44;
    sub_24F928438();
    sub_24E601704(&v85, &qword_27F2129B0);
    sub_24F92A598();

    v45 = *(a1 + 48);
    v85 = *(a1 + 32);
    v86 = v45;
    v46 = *(a1 + 80);
    v87 = *(a1 + 64);
    v88 = v46;
    v47 = a2[1];
    *(a1 + 32) = *a2;
    *(a1 + 48) = v47;
    v48 = a2[3];
    *(a1 + 64) = a2[2];
    *(a1 + 80) = v48;
    sub_24E8B9478(a2, &v81);
    sub_24E88D2AC(&v85);
    if (*(a2 + 6) >> 60 == 5)
    {
      v49 = OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine__startDownloadTime;
      swift_beginAccess();
      v50 = v65;
      sub_24E60169C(a1 + v49, v65, &unk_27F22EC30);
      v51 = sub_24F91F648();
      v52 = *(v51 - 8);
      v53 = (*(v52 + 48))(v50, 1, v51);
      sub_24E601704(v50, &unk_27F22EC30);
      a3 = v70;
      if (v53 == 1)
      {
        v54 = v66;
        sub_24F91F638();
        (*(v52 + 56))(v54, 0, 1, v51);
        swift_beginAccess();
        sub_24E728A70(v54, a1 + v49);
        swift_endAccess();
      }
    }

    else
    {
      v55 = sub_24F91F648();
      v56 = v66;
      (*(*(v55 - 8) + 56))(v66, 1, 1, v55);
      v57 = OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine__startDownloadTime;
      swift_beginAccess();
      sub_24E728A70(v56, a1 + v57);
      swift_endAccess();
      a3 = v70;
    }

    result = sub_24EF0ACE8();
    goto LABEL_14;
  }

  sub_24E615E00(*(v22 + 56) + 40 * v25, v77);
  sub_24E612E28(v77, v78);
  v28 = v79;
  v29 = v80;
  __swift_project_boxed_opaque_existential_1(v78, v79);
  v30 = *(a1 + 48);
  v81 = *(a1 + 32);
  v82 = v30;
  v31 = *(a1 + 80);
  v33 = *(a1 + 32);
  v32 = *(a1 + 48);
  v83 = *(a1 + 64);
  v84 = v31;
  v73 = v33;
  v74 = v32;
  v34 = *(a1 + 80);
  v75 = *(a1 + 64);
  v76 = v34;
  v35 = a2[1];
  v72[0] = *a2;
  v72[1] = v35;
  v36 = a2[3];
  v72[2] = a2[2];
  v72[3] = v36;
  v37 = *(v29 + 8);
  sub_24E8B9478(&v81, &v71);
  v38 = v37(&v73, v72, v28, v29);
  v85 = v73;
  v86 = v74;
  v87 = v75;
  v88 = v76;
  sub_24E88D2AC(&v85);
  if (v38)
  {
    __swift_destroy_boxed_opaque_existential_1(v78);
    goto LABEL_7;
  }

  if (qword_27F210C50 != -1)
  {
    swift_once();
  }

  v69 = sub_24F92AAE8();
  v68 = __swift_project_value_buffer(v69, qword_27F39CF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9AF330;
  v59 = *(a1 + 16);
  v58 = *(a1 + 24);
  *(&v74 + 1) = &type metadata for AdamId;
  *&v73 = v59;
  *(&v73 + 1) = v58;

  sub_24F9283B8();
  sub_24E601704(&v73, &qword_27F2129B0);
  sub_24F9283A8();
  v60 = LegacyAppState.dictionaryKey.getter();
  *(&v74 + 1) = MEMORY[0x277D837D0];
  *&v73 = v60;
  *(&v73 + 1) = v61;
  sub_24F928438();
  sub_24E601704(&v73, &qword_27F2129B0);
  sub_24F9283A8();
  v62 = LegacyAppState.dictionaryKey.getter();
  *(&v74 + 1) = MEMORY[0x277D837D0];
  *&v73 = v62;
  *(&v73 + 1) = v63;
  sub_24F928438();
  sub_24E601704(&v73, &qword_27F2129B0);
  sub_24F9283A8();
  __swift_project_boxed_opaque_existential_1(v78, v79);
  DynamicType = swift_getDynamicType();
  *(&v74 + 1) = swift_getMetatypeMetadata();
  *&v73 = DynamicType;
  sub_24F928438();
  sub_24E601704(&v73, &qword_27F2129B0);
  sub_24F92A5A8();

  *v70 = 0;
  return __swift_destroy_boxed_opaque_existential_1(v78);
}

uint64_t sub_24EF0ACE8()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927DC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E69A5C4(0, &qword_27F222300);
  v9 = sub_24F92BEF8();
  aBlock[4] = sub_24EF0C9EC;
  v13 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_91;
  v10 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v8, v4, v10);
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24EF0AF68@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *(a1 + 112);
  v33[0] = *(a1 + 96);
  v33[1] = v7;
  v8 = *(a1 + 144);
  v10 = *(a1 + 96);
  v9 = *(a1 + 112);
  v33[2] = *(a1 + 128);
  v33[3] = v8;
  v29 = v10;
  v30 = v9;
  v11 = *(a1 + 144);
  v31 = *(a1 + 128);
  v32 = v11;
  v12 = a2[1];
  v28[0] = *a2;
  v28[1] = v12;
  v13 = a2[3];
  v28[2] = a2[2];
  v28[3] = v13;
  sub_24E8B9478(v33, v34);
  v14 = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v29, v28);
  v34[0] = v29;
  v34[1] = v30;
  v34[2] = v31;
  v34[3] = v32;
  result = sub_24E88D2AC(v34);
  if (v14)
  {
    *a3 = 1;
  }

  else
  {
    v35 = v3;
    if (qword_27F210C50 != -1)
    {
      swift_once();
    }

    v27 = sub_24F92AAE8();
    __swift_project_value_buffer(v27, qword_27F39CF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F942000;
    v17 = *(a1 + 16);
    v16 = *(a1 + 24);
    *(&v30 + 1) = &type metadata for AdamId;
    *&v29 = v17;
    *(&v29 + 1) = v16;

    sub_24F9283B8();
    sub_24E601704(&v29, &qword_27F2129B0);
    sub_24F9283A8();
    v18 = LegacyAppState.dictionaryKey.getter();
    v19 = MEMORY[0x277D837D0];
    *(&v30 + 1) = MEMORY[0x277D837D0];
    *&v29 = v18;
    *(&v29 + 1) = v20;
    sub_24F928438();
    sub_24E601704(&v29, &qword_27F2129B0);
    sub_24F9283A8();
    v21 = LegacyAppState.dictionaryKey.getter();
    *(&v30 + 1) = v19;
    *&v29 = v21;
    *(&v29 + 1) = v22;
    sub_24F928438();
    sub_24E601704(&v29, &qword_27F2129B0);
    sub_24F92A598();

    v23 = *(a1 + 112);
    v29 = *(a1 + 96);
    v30 = v23;
    v24 = *(a1 + 144);
    v31 = *(a1 + 128);
    v32 = v24;
    v25 = a2[1];
    *(a1 + 96) = *a2;
    *(a1 + 112) = v25;
    v26 = a2[3];
    *(a1 + 128) = a2[2];
    *(a1 + 144) = v26;
    sub_24E8B9478(a2, v28);
    sub_24E88D2AC(&v29);
    result = sub_24EF0ACE8();
    *a3 = 1;
  }

  return result;
}

id LegacyAppStateMachine.addStateTransitionObserver(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 192);
  [v6 lock];
  swift_unknownObjectWeakInit();
  v14 = a2;
  v15 = a3;
  sub_24EF0C3F8(v13, v12);
  swift_beginAccess();
  v7 = *(v3 + 160);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 160) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_24E616834(0, v7[2] + 1, 1, v7);
    *(v3 + 160) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_24E616834((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  sub_24EF0C430(v12, &v7[3 * v10 + 4]);
  *(v3 + 160) = v7;
  swift_endAccess();
  sub_24EF0C468(v13);
  return [v6 unlock];
}

id LegacyAppStateMachine.removeStateTransitionActions(for:)(uint64_t a1)
{
  v2 = v1;
  v15 = *(v1 + 192);
  [v15 lock];
  swift_beginAccess();
  v4 = *(v1 + 160);
  v5 = *(v4 + 16);

  if (v5)
  {
    v7 = 0;
    v8 = v4 + 32;
    v9 = MEMORY[0x277D84F90];
    while (v7 < *(v4 + 16))
    {
      sub_24EF0C3F8(v8, v17);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v11 = Strong, swift_unknownObjectRelease(), v11 == a1))
      {
        result = sub_24EF0C468(v17);
      }

      else
      {
        sub_24EF0C430(v17, v16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F457B5C(0, *(v9 + 16) + 1, 1);
          v9 = v18;
        }

        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_24F457B5C((v13 > 1), v14 + 1, 1);
          v9 = v18;
        }

        *(v9 + 16) = v14 + 1;
        result = sub_24EF0C430(v16, v9 + 24 * v14 + 32);
      }

      ++v7;
      v8 += 24;
      if (v5 == v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_14:

    *(v2 + 160) = v9;

    return [v15 unlock];
  }

  return result;
}

id sub_24EF0B53C(uint64_t a1)
{
  v2 = *(a1 + 192);
  [v2 lock];
  sub_24EF0B5C8(a1);

  return [v2 unlock];
}

uint64_t sub_24EF0B5C8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 160);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;

    do
    {
      sub_24EF0C3F8(v4, v15);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v16(a1, &protocol witness table for LegacyAppStateMachine);
      }

      sub_24EF0C468(v15);
      v4 += 24;
      --v3;
    }

    while (v3);

    v5 = *(a1 + 160);
    v6 = *(v5 + 16);

    if (v6)
    {
      v8 = 0;
      v9 = v5 + 32;
      v10 = MEMORY[0x277D84F90];
      while (v8 < *(v5 + 16))
      {
        sub_24EF0C3F8(v9, v15);
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_24EF0C430(v15, v14);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v17 = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24F457B5C(0, *(v10 + 16) + 1, 1);
            v10 = v17;
          }

          v13 = *(v10 + 16);
          v12 = *(v10 + 24);
          if (v13 >= v12 >> 1)
          {
            sub_24F457B5C((v12 > 1), v13 + 1, 1);
            v10 = v17;
          }

          *(v10 + 16) = v13 + 1;
          result = sub_24EF0C430(v14, v10 + 24 * v13 + 32);
        }

        else
        {
          result = sub_24EF0C468(v15);
        }

        ++v8;
        v9 += 24;
        if (v6 == v8)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {
  }

  v10 = MEMORY[0x277D84F90];
LABEL_20:

  *(a1 + 160) = v10;
}

uint64_t LegacyAppStateMachine.deinit()
{

  sub_24EC36E00(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  sub_24EC36E00(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));

  sub_24E883630(v0 + 176);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine__startDownloadTime, &unk_27F22EC30);

  return v0;
}

uint64_t LegacyAppStateMachine.__deallocating_deinit()
{
  LegacyAppStateMachine.deinit();

  return swift_deallocClassInstance();
}

id sub_24EF0B8B4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 192);
  [v3 lock];
  v4 = *(v1 + 48);
  v9[0] = *(v1 + 32);
  v9[1] = v4;
  v6 = *(v1 + 80);
  v10 = *(v1 + 64);
  v5 = v10;
  v11 = v6;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  sub_24E8B9478(v9, &v8);
  return [v3 unlock];
}

uint64_t sub_24EF0B930()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine_redownloadBuyParams);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id sub_24EF0B988@<X0>(char a1@<W0>, __int128 *a2@<X8>)
{
  v5 = *(v2 + 192);
  [v5 lock];
  sub_24EF0A168(a1, v2, a2);

  return [v5 unlock];
}

id sub_24EF0BA20@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 192);
  [v3 lock];
  v4 = OBJC_IVAR____TtC12GameStoreKit21LegacyAppStateMachine__startDownloadTime;
  swift_beginAccess();
  sub_24E60169C(v1 + v4, a1, &unk_27F22EC30);
  return [v3 unlock];
}

uint64_t sub_24EF0BAE8(_OWORD *a1)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = *(v1 + 192);
  [v4 lock];
  sub_24EF0A45C(v1, v7, &v6);
  [v4 unlock];
  return v6;
}

BOOL _s12GameStoreKit14LegacyAppStateO0E19InstallationDetailsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  if (v2)
  {
    if (!v6)
    {
      return 0;
    }

    v28 = *(a2 + 48);
    v29 = *(a1 + 48);
    v30 = *(a1 + 40);
    v26 = *(a2 + 49);
    v27 = *(a1 + 49);
    v24 = *(a2 + 56);
    v25 = *(a1 + 56);
    sub_24E69A5C4(0, &qword_27F22E980);
    v11 = v6;
    v12 = v2;
    v13 = sub_24F92C408();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v28 = *(a2 + 48);
    v29 = *(a1 + 48);
    v30 = *(a1 + 40);
    v26 = *(a2 + 49);
    v27 = *(a1 + 49);
    v24 = *(a2 + 56);
    v25 = *(a1 + 56);
    if (v6)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    sub_24E69A5C4(0, &qword_27F22E980);
    v15 = v7;
    v16 = v3;
    v17 = sub_24F92C408();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    sub_24E69A5C4(0, &qword_27F22E980);
    v18 = v9;
    v19 = v5;
    v20 = sub_24F92C408();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (!v4)
  {
    result = 0;
    if (v8)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (!v8)
  {
    return 0;
  }

  sub_24E69A5C4(0, &qword_27F22E980);
  v21 = v8;
  v22 = v4;
  v23 = sub_24F92C408();

  result = 0;
  if ((v23 & 1) == 0)
  {
    return result;
  }

LABEL_25:
  if (v30 == v10 && ((v29 ^ v28) & 1) == 0 && ((v27 ^ v26) & 1) == 0)
  {
    return v25 == v24;
  }

  return result;
}

uint64_t _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(__int128 *a1, _OWORD *a2)
{
  v2 = a2[1];
  *v42 = *a2;
  *&v42[16] = v2;
  v3 = a2[3];
  v5 = *a2;
  v4 = a2[1];
  *&v42[32] = a2[2];
  v43 = v3;
  v6 = a1[1];
  v38 = *a1;
  v39 = v6;
  v44[0] = v38;
  v44[1] = v6;
  v7 = a1[3];
  v40 = a1[2];
  v41 = v7;
  v44[2] = v40;
  v44[3] = v7;
  v44[4] = v5;
  v44[5] = v4;
  v8 = a2[3];
  v9 = v38 | ((*(&v38 + 1) | ((*(&v38 + 5) | (BYTE7(v38) << 16)) << 32)) << 8);
  v10 = v7 >> 60;
  v44[6] = a2[2];
  v44[7] = v8;
  if ((v7 >> 60) > 3)
  {
    if (v10 > 5)
    {
      if (v10 != 6)
      {
        if (v10 == 7)
        {
          if (v43 >> 60 == 7)
          {
            if (v38)
            {
              v11 = 0x736567617373656DLL;
            }

            else
            {
              v11 = 7368801;
            }

            if (v38)
            {
              v12 = 0xE800000000000000;
            }

            else
            {
              v12 = 0xE300000000000000;
            }

            if (v42[0])
            {
              v13 = 0x736567617373656DLL;
            }

            else
            {
              v13 = 7368801;
            }

            if (v42[0])
            {
              v14 = 0xE800000000000000;
            }

            else
            {
              v14 = 0xE300000000000000;
            }

            if (v11 == v13 && v12 == v14)
            {
              sub_24E8B9478(v42, &v33);
              sub_24E8B9478(&v38, &v33);

LABEL_58:
              sub_24E69A5C4(0, &qword_27F21BCB0);
              v15 = sub_24F92C408();
              goto LABEL_59;
            }

            v26 = sub_24F92CE08();
            sub_24E8B9478(v42, &v33);
            sub_24E8B9478(&v38, &v33);

            if (v26)
            {
              goto LABEL_58;
            }

            goto LABEL_56;
          }

          v25 = *(&v38 + 1);
          goto LABEL_55;
        }

        v20 = v39 | *(&v38 + 1) | *(&v39 + 1);
        if (v7 != 0x8000000000000000 || v20 | v40 | *(&v40 + 1) | *(&v41 + 1) | v9)
        {
          v24 = v20 | v40 | *(&v40 + 1);
          if (*(&v41 + 1) || v7 != 0x8000000000000000 || v9 != 1 || v24)
          {
            if (*(&v41 + 1) || v7 != 0x8000000000000000 || v9 != 2 || v24)
            {
              if (*(&v41 + 1) || v7 != 0x8000000000000000 || v9 != 3 || v24)
              {
                if (v43 >> 60 != 8 || v43 != 0x8000000000000000 || *v42 != 4)
                {
                  goto LABEL_55;
                }
              }

              else if (v43 >> 60 != 8 || v43 != 0x8000000000000000 || *v42 != 3)
              {
                goto LABEL_55;
              }
            }

            else if (v43 >> 60 != 8 || v43 != 0x8000000000000000 || *v42 != 2)
            {
              goto LABEL_55;
            }
          }

          else if (v43 >> 60 != 8 || v43 != 0x8000000000000000 || *v42 != 1)
          {
            goto LABEL_55;
          }

          v23 = *&v42[8];
          v27 = vorrq_s8(*&v42[16], *&v42[32]);
          v22 = vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
        }

        else
        {
          if (v43 >> 60 != 8 || v43 != 0x8000000000000000)
          {
            goto LABEL_55;
          }

          v21 = vorrq_s8(*&v42[8], *&v42[24]);
          v22 = (*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | *&v42[40]);
          v23 = *(&v43 + 1) | *v42;
        }

        if (!(*&v22 | v23))
        {
LABEL_82:
          sub_24E601704(v44, &qword_27F233C80);
          v19 = 1;
          return v19 & 1;
        }

LABEL_55:
        sub_24E8B9478(v42, &v33);
LABEL_56:
        sub_24E601704(v44, &qword_27F233C80);
        v19 = 0;
        return v19 & 1;
      }

      v16 = v43;
      if (v43 >> 60 == 6)
      {
        goto LABEL_33;
      }

LABEL_31:
      v17 = a1[1];
      v33 = *a1;
      v34 = v17;
      v18 = a1[3];
      v35 = a1[2];
      v37 = *(&v18 + 1);
      v36 = v18 & 0xFFFFFFFFFFFFFFFLL;
      sub_24E60169C(&v33, v30, &qword_27F233C88);
      goto LABEL_55;
    }

    if (v10 == 4)
    {
      v16 = v43;
      if (v43 >> 60 != 4)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = v43;
      if (v43 >> 60 != 5)
      {
        goto LABEL_31;
      }
    }

LABEL_33:
    LOBYTE(v33) = v38;
    *(&v33 + 1) = *(&v38 + 1);
    BYTE7(v33) = (*(&v38 + 1) | ((*(&v38 + 5) | (BYTE7(v38) << 16)) << 32)) >> 48;
    *(&v33 + 5) = *(&v38 + 5);
    *(&v33 + 1) = *(&v38 + 1);
    v34 = v39;
    v35 = v40;
    v36 = v7 & 0xFFFFFFFFFFFFFFFLL;
    v37 = *(&v41 + 1);
    v30[0] = *v42;
    v30[1] = *&v42[16];
    v30[2] = *&v42[32];
    v31 = v16 & 0xFFFFFFFFFFFFFFFLL;
    v32 = *(&v43 + 1);
    sub_24E8B9478(v42, v29);
    sub_24E8B9478(&v38, v29);
    sub_24E8B9478(v42, v29);
    sub_24E8B9478(&v38, v29);
    v19 = _s12GameStoreKit14LegacyAppStateO0E19InstallationDetailsV2eeoiySbAE_AEtFZ_0(&v33, v30);
    sub_24E601704(v44, &qword_27F233C80);
    sub_24E88D2AC(v42);
    sub_24E88D2AC(&v38);
    return v19 & 1;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      if (v43 >> 60 == 2)
      {
LABEL_27:
        if (__PAIR128__(*(&v38 + 1), v9) != *v42)
        {
          v19 = sub_24F92CE08();
          sub_24E8B9478(v42, &v33);
          sub_24E8B9478(&v38, &v33);
LABEL_60:
          sub_24E601704(v44, &qword_27F233C80);
          return v19 & 1;
        }

        sub_24E8B9478(v42, &v33);
        sub_24E8B9478(&v38, &v33);
        goto LABEL_82;
      }
    }

    else if (v43 >> 60 == 3)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

  if (!v10)
  {
    if (!(v43 >> 60))
    {
      v15 = sub_24F0CF7C0(v38, v42[0]);
LABEL_59:
      v19 = v15;
      goto LABEL_60;
    }

    goto LABEL_55;
  }

  if (v43 >> 60 != 1)
  {
    goto LABEL_55;
  }

  sub_24E601704(v44, &qword_27F233C80);
  v19 = v38 ^ v42[0] ^ 1;
  return v19 & 1;
}

unint64_t sub_24EF0C49C()
{
  result = qword_27F233C58;
  if (!qword_27F233C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233C58);
  }

  return result;
}

unint64_t sub_24EF0C4F4()
{
  result = qword_27F233C60;
  if (!qword_27F233C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233C60);
  }

  return result;
}

unint64_t sub_24EF0C54C()
{
  result = qword_27F233C68;
  if (!qword_27F233C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233C68);
  }

  return result;
}

uint64_t sub_24EF0C5A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 184);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EF0C5F0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 184) = v2;
  return swift_unknownObjectWeakAssign();
}

unint64_t get_enum_tag_for_layout_string_12GameStoreKit14LegacyAppStateO(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0)
  {
    return v1 >> 60;
  }

  else
  {
    return (*a1 + 8);
  }
}

uint64_t sub_24EF0C664(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 2) & 0xFFFFFF80 | (*(a1 + 48) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_24EF0C6B8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EF0C730(uint64_t result, uint64_t a2)
{
  if (a2 < 8)
  {
    *(result + 48) = *(result + 48) & 0x101 | (a2 << 60);
  }

  else
  {
    *result = (a2 - 8);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = xmmword_24F966510;
  }

  return result;
}

uint64_t sub_24EF0C784(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24EF0C7E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for LegacyAppStateMachine()
{
  result = qword_27F233C70;
  if (!qword_27F233C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EF0C8D8()
{
  sub_24E728940();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t block_copy_helper_91(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 ProductReviewLayout.init(metrics:titleText:ratingView:dateText:authorText:bodyText:responseTitleText:responseDateText:responseBodyText:badgeText:actionViews:)@<Q0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12)
{
  memcpy((a9 + 368), __src, 0x260uLL);
  sub_24E612C80(a2, a9);
  sub_24E612C80(a3, a9 + 40);
  sub_24E612C80(a4, a9 + 80);
  sub_24E612C80(a5, a9 + 120);
  sub_24E612C80(a6, a9 + 200);
  sub_24E612C80(a7, a9 + 240);
  sub_24E612C80(a8, a9 + 280);
  sub_24E612C80(a10, a9 + 320);
  result = *a11;
  v21 = *(a11 + 16);
  *(a9 + 160) = *a11;
  *(a9 + 176) = v21;
  *(a9 + 192) = *(a11 + 32);
  *(a9 + 360) = a12;
  return result;
}

uint64_t ProductReviewLayout.Metrics.init(titleSpace:ratingSpace:dateSpace:authorSpace:bodyFirstLineSpace:bodySubsequentLineSpace:bodyEstimatedNumberOfLines:responseTitleSpace:responseDateSpace:responseBodyFirstLineSpace:horizontalInterViewSpace:horizontalEdgeSpace:bottomEdgeSpace:badgeSpace:actionsSpace:actionsInterItemSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, __int128 *a11, __int128 *a12, __int128 *a13, __int128 *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(a9 + 600) = 0;
  *(a9 + 568) = 0u;
  *(a9 + 584) = 0u;
  *(a9 + 536) = 0u;
  *(a9 + 552) = 0u;
  *(a9 + 504) = 0u;
  *(a9 + 520) = 0u;
  *(a9 + 488) = 0u;
  sub_24E612C80(a1, a9);
  sub_24E612C80(a2, a9 + 40);
  sub_24E612C80(a3, a9 + 80);
  sub_24E612C80(a4, a9 + 120);
  sub_24E612C80(a5, a9 + 160);
  sub_24E612C80(a6, a9 + 200);
  *(a9 + 240) = a7;
  sub_24E612C80(a8, a9 + 248);
  sub_24E612C80(a10, a9 + 288);
  sub_24E612C80(a11, a9 + 328);
  sub_24E612C80(a12, a9 + 368);
  sub_24E612C80(a13, a9 + 408);
  sub_24E612C80(a14, a9 + 448);
  sub_24EA63A70(a15, a9 + 488);
  sub_24EA63A70(a16, a9 + 528);

  return sub_24EA63A70(a17, a9 + 568);
}

uint64_t ProductReviewLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t ProductReviewLayout.Metrics.ratingSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t ProductReviewLayout.Metrics.dateSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_24E612C80(a1, v1 + 80);
}

uint64_t ProductReviewLayout.Metrics.authorSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_24E612C80(a1, v1 + 120);
}

uint64_t ProductReviewLayout.Metrics.bodyFirstLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 160);

  return sub_24E612C80(a1, v1 + 160);
}

uint64_t ProductReviewLayout.Metrics.bodySubsequentLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 200);

  return sub_24E612C80(a1, v1 + 200);
}

uint64_t ProductReviewLayout.Metrics.responseTitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 248);

  return sub_24E612C80(a1, v1 + 248);
}

uint64_t ProductReviewLayout.Metrics.responseDateSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 288);

  return sub_24E612C80(a1, v1 + 288);
}

uint64_t ProductReviewLayout.Metrics.responseBodyFirstLineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 328);

  return sub_24E612C80(a1, v1 + 328);
}

uint64_t ProductReviewLayout.Metrics.horizontalInterViewSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 368);

  return sub_24E612C80(a1, v1 + 368);
}

uint64_t ProductReviewLayout.Metrics.horizontalEdgeSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 408);

  return sub_24E612C80(a1, v1 + 408);
}

uint64_t ProductReviewLayout.Metrics.bottomEdgeSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 448);

  return sub_24E612C80(a1, v1 + 448);
}

double ProductReviewLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v3 = v2;
  v158 = sub_24F9225E8();
  v156 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v155 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_24F922618();
  v157 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v154 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F9229A8();
  v162 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v148 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v153 = &v141 - v11;
  MEMORY[0x28223BE20](v12);
  v144 = &v141 - v13;
  MEMORY[0x28223BE20](v14);
  v142 = &v141 - v15;
  MEMORY[0x28223BE20](v16);
  v164 = &v141 - v17;
  MEMORY[0x28223BE20](v18);
  v163 = &v141 - v19;
  v165 = sub_24F9229F8();
  v167 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v152 = &v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v143 = &v141 - v22;
  MEMORY[0x28223BE20](v23);
  v151 = &v141 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v141 - v26;
  v28 = sub_24F92CDB8();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v141 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v2 + 97, v2[100]);
  sub_24E8ED7D8();
  v166 = a1;
  sub_24F9223A8();
  v32 = *(v29 + 8);
  v145 = v31;
  v147 = v28;
  v146 = v29 + 8;
  v32(v31, v28);
  sub_24E60169C((v2 + 20), &v175, &unk_27F22B200);
  v33 = MEMORY[0x277D226F0];
  v161 = v8;
  v141 = v32;
  if (v176)
  {
    __swift_project_boxed_opaque_existential_1(&v175, v176);
    v34 = sub_24F922238();
    __swift_destroy_boxed_opaque_existential_1(&v175);
    if ((v34 & 1) == 0)
    {
      v35 = 1;
LABEL_7:
      v38 = v3[3];
      v39 = v3[4];
      v40 = __swift_project_boxed_opaque_existential_1(v3, v38);
      v176 = v38;
      v177 = *(*(v39 + 8) + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v175);
      (*(*(v38 - 8) + 16))(boxed_opaque_existential_1, v40, v38);
      sub_24E615E00((v3 + 46), &v171);
      v169 = sub_24F922418();
      v170 = v33;
      __swift_allocate_boxed_opaque_existential_1(v168);
      sub_24F922408();
      sub_24F9229E8();
      v42 = sub_24E617A00(0, 1, 1, MEMORY[0x277D84F90]);
      v44 = v42[2];
      v43 = v42[3];
      v45 = v162;
      if (v44 >= v43 >> 1)
      {
        v42 = sub_24E617A00((v43 > 1), v44 + 1, 1, v42);
      }

      v46 = v165;
      v176 = v165;
      v177 = MEMORY[0x277D22900];
      v47 = __swift_allocate_boxed_opaque_existential_1(&v175);
      v48 = v167;
      (*(v167 + 16))(v47, v27, v46);
      v42[2] = v44 + 1;
      sub_24E612C80(&v175, &v42[5 * v44 + 4]);
      (*(v48 + 8))(v27, v46);
      v8 = v161;
      v49 = v164;
      goto LABEL_13;
    }
  }

  else
  {
    sub_24E601704(&v175, &unk_27F22B200);
  }

  v36 = [v166 traitCollection];
  v37 = sub_24F92BF98();

  if (v37)
  {
    v35 = 0;
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(v3 + 92, v3[95]);
  v50 = v145;
  sub_24E8ED7D8();
  sub_24F9223A8();
  v32(v50, v147);
  __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_24F922288();
  v52 = v51;
  v54 = v53;
  __swift_project_boxed_opaque_existential_1(v3 + 46, v3[49]);
  sub_24F9223C8();
  v176 = MEMORY[0x277D85048];
  v177 = MEMORY[0x277D225F8];
  *&v175 = v52 - v54 + v55;
  v56 = v163;
  sub_24F9229B8();
  v42 = sub_24E617A00(0, 1, 1, MEMORY[0x277D84F90]);
  v58 = v42[2];
  v57 = v42[3];
  if (v58 >= v57 >> 1)
  {
    v42 = sub_24E617A00((v57 > 1), v58 + 1, 1, v42);
  }

  v45 = v162;
  v49 = v164;
  v176 = v8;
  v177 = MEMORY[0x277D228E0];
  v59 = __swift_allocate_boxed_opaque_existential_1(&v175);
  (*(v45 + 16))(v59, v56, v8);
  v42[2] = v58 + 1;
  sub_24E612C80(&v175, &v42[5 * v58 + 4]);
  (*(v45 + 8))(v56, v8);
  v35 = 0;
LABEL_13:
  sub_24E615E00((v3 + 51), &v175);
  sub_24F9229B8();
  v61 = v42[2];
  v60 = v42[3];
  if (v61 >= v60 >> 1)
  {
    v42 = sub_24E617A00((v60 > 1), v61 + 1, 1, v42);
  }

  v62 = MEMORY[0x277D226F0];
  v176 = v8;
  v177 = MEMORY[0x277D228E0];
  v63 = __swift_allocate_boxed_opaque_existential_1(&v175);
  v64 = *(v45 + 16);
  v160 = v45 + 16;
  v164 = v64;
  (v64)(v63, v49, v8);
  v42[2] = v61 + 1;
  sub_24E612C80(&v175, &v42[5 * v61 + 4]);
  v66 = *(v45 + 8);
  v65 = v45 + 8;
  v163 = v66;
  (v66)(v49, v8);
  v174 = v42;
  if (v35)
  {
    sub_24E60169C((v3 + 107), &v175, &qword_27F22F780);
    if (v176)
    {
      sub_24E612C80(&v175, &v171);
    }

    else
    {
      sub_24E615E00((v3 + 61), &v171);
      if (v176)
      {
        sub_24E601704(&v175, &qword_27F22F780);
      }
    }

    v176 = v8;
    v177 = MEMORY[0x277D228E0];
    __swift_allocate_boxed_opaque_existential_1(&v175);
    sub_24F9229B8();
    v174 = v42;
    v68 = v42[2];
    v67 = v42[3];
    if (v68 >= v67 >> 1)
    {
      v42 = sub_24E617A00((v67 > 1), v68 + 1, 1, v42);
      v174 = v42;
    }

    v69 = v176;
    v70 = v177;
    v71 = __swift_mutable_project_boxed_opaque_existential_1(&v175, v176);
    v72 = MEMORY[0x28223BE20](v71);
    v74 = &v141 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v75 + 16))(v74, v72);
    sub_24ED43E20(v68, v74, &v174, v69, v70);
    __swift_destroy_boxed_opaque_existential_1(&v175);
    v174 = v42;
  }

  v76 = MEMORY[0x277D22900];
  v77 = [v166 traitCollection];
  v78 = sub_24F92BF98();

  v79 = v151;
  if (v78)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_24F93A400;
    sub_24E615E00((v3 + 56), &v175);
    *(v80 + 56) = v8;
    v81 = MEMORY[0x277D228E0];
    *(v80 + 64) = MEMORY[0x277D228E0];
    __swift_allocate_boxed_opaque_existential_1((v80 + 32));
    sub_24F9229B8();
    sub_24E615E00((v3 + 61), &v175);
    *(v80 + 96) = v8;
    *(v80 + 104) = v81;
    __swift_allocate_boxed_opaque_existential_1((v80 + 72));
    sub_24F9229B8();
    sub_24EA0ACCC(v80);
    v42 = v174;
  }

  v82 = v3[28];
  v83 = v3[29];
  v84 = __swift_project_boxed_opaque_existential_1(v3 + 25, v82);
  v176 = v82;
  v177 = *(*(v83 + 8) + 8);
  v85 = __swift_allocate_boxed_opaque_existential_1(&v175);
  (*(*(v82 - 8) + 16))(v85, v84, v82);
  sub_24E615E00((v3 + 66), &v171);
  v150 = sub_24F922418();
  v169 = v150;
  v170 = v62;
  __swift_allocate_boxed_opaque_existential_1(v168);
  sub_24F922408();
  sub_24F9229E8();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v42 = sub_24E617A00(0, v42[2] + 1, 1, v42);
  }

  v87 = v42[2];
  v86 = v42[3];
  if (v87 >= v86 >> 1)
  {
    v42 = sub_24E617A00((v86 > 1), v87 + 1, 1, v42);
  }

  v88 = v165;
  v176 = v165;
  v177 = v76;
  v89 = __swift_allocate_boxed_opaque_existential_1(&v175);
  v90 = v167;
  v149 = *(v167 + 16);
  v149(v89, v79, v88);
  v42[2] = v87 + 1;
  sub_24E612C80(&v175, &v42[5 * v87 + 4]);
  v91 = *(v90 + 8);
  v167 = v90 + 8;
  v151 = v91;
  (v91)(v79, v88);
  __swift_project_boxed_opaque_existential_1(v3 + 40, v3[43]);
  if (sub_24F922238())
  {
    v92 = v161;
  }

  else
  {
    v162 = v65;
    v93 = v166;
    v94 = [v166 traitCollection];
    v95 = sub_24F92BF98();

    v92 = v161;
    if (v95)
    {
      v96 = v3[33];
      v97 = v3[34];
      v98 = __swift_project_boxed_opaque_existential_1(v3 + 30, v96);
      v176 = v96;
      v177 = *(*(v97 + 8) + 8);
      v99 = __swift_allocate_boxed_opaque_existential_1(&v175);
      (*(*(v96 - 8) + 16))(v99, v98, v96);
      sub_24E615E00((v3 + 77), &v171);
      v169 = v150;
      v170 = v62;
      __swift_allocate_boxed_opaque_existential_1(v168);
      sub_24F922408();
      sub_24F9229E8();
      v101 = v42[2];
      v100 = v42[3];
      if (v101 >= v100 >> 1)
      {
        v42 = sub_24E617A00((v100 > 1), v101 + 1, 1, v42);
      }

      v102 = v166;
      v103 = v165;
      v176 = v165;
      v177 = MEMORY[0x277D22900];
      v104 = __swift_allocate_boxed_opaque_existential_1(&v175);
      v105 = v143;
      v149(v104, v143, v103);
      v42[2] = v101 + 1;
      sub_24E612C80(&v175, &v42[5 * v101 + 4]);
      (v151)(v105, v103);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v3 + 92, v3[95]);
      v106 = v145;
      sub_24E8ED7D8();
      sub_24F9223A8();
      v141(v106, v147);
      __swift_project_boxed_opaque_existential_1(v3 + 35, v3[38]);
      sub_24F922288();
      __swift_project_boxed_opaque_existential_1(v3 + 30, v3[33]);
      sub_24F922288();
      v108 = v107;
      v110 = v109;
      __swift_project_boxed_opaque_existential_1(v3 + 77, v3[80]);
      sub_24F9223C8();
      v176 = MEMORY[0x277D85048];
      v177 = MEMORY[0x277D225F8];
      *&v175 = v108 - v110 + v111;
      v112 = v142;
      sub_24F9229B8();
      v114 = v42[2];
      v113 = v42[3];
      v102 = v93;
      if (v114 >= v113 >> 1)
      {
        v42 = sub_24E617A00((v113 > 1), v114 + 1, 1, v42);
      }

      v176 = v92;
      v177 = MEMORY[0x277D228E0];
      v115 = __swift_allocate_boxed_opaque_existential_1(&v175);
      (v164)(v115, v112, v92);
      v42[2] = v114 + 1;
      sub_24E612C80(&v175, &v42[5 * v114 + 4]);
      (v163)(v112, v92);
    }

    v116 = [v102 traitCollection];
    v117 = sub_24F92BF98();

    if (v117)
    {
      sub_24E615E00((v3 + 82), &v175);
      sub_24F9229B8();
      v119 = v42[2];
      v118 = v42[3];
      if (v119 >= v118 >> 1)
      {
        v42 = sub_24E617A00((v118 > 1), v119 + 1, 1, v42);
      }

      v176 = v92;
      v177 = MEMORY[0x277D228E0];
      v120 = __swift_allocate_boxed_opaque_existential_1(&v175);
      v121 = v144;
      (v164)(v120, v144, v92);
      v42[2] = v119 + 1;
      sub_24E612C80(&v175, &v42[5 * v119 + 4]);
      (v163)(v121, v92);
    }

    v122 = v3[43];
    v123 = v3[44];
    v124 = __swift_project_boxed_opaque_existential_1(v3 + 40, v122);
    v176 = v122;
    v177 = *(*(v123 + 8) + 8);
    v125 = __swift_allocate_boxed_opaque_existential_1(&v175);
    (*(*(v122 - 8) + 16))(v125, v124, v122);
    sub_24E615E00((v3 + 87), &v171);
    v169 = v150;
    v170 = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(v168);
    sub_24F922408();
    sub_24F9229E8();
    v127 = v42[2];
    v126 = v42[3];
    if (v127 >= v126 >> 1)
    {
      v42 = sub_24E617A00((v126 > 1), v127 + 1, 1, v42);
    }

    v128 = v165;
    v176 = v165;
    v177 = MEMORY[0x277D22900];
    v129 = __swift_allocate_boxed_opaque_existential_1(&v175);
    v130 = v152;
    v149(v129, v152, v128);
    v42[2] = v127 + 1;
    sub_24E612C80(&v175, &v42[5 * v127 + 4]);
    (v151)(v130, v128);
  }

  sub_24E615E00((v3 + 102), &v175);
  v131 = v153;
  sub_24F9229B8();
  v133 = v42[2];
  v132 = v42[3];
  if (v133 >= v132 >> 1)
  {
    v42 = sub_24E617A00((v132 > 1), v133 + 1, 1, v42);
  }

  v176 = v92;
  v177 = MEMORY[0x277D228E0];
  v134 = __swift_allocate_boxed_opaque_existential_1(&v175);
  (v164)(v134, v131, v92);
  v42[2] = v133 + 1;
  sub_24E612C80(&v175, &v42[5 * v133 + 4]);
  (v163)(v131, v92);
  sub_24E60169C((v3 + 112), &v171, &qword_27F22F780);
  if (v172)
  {
    sub_24E612C80(&v171, &v175);
    sub_24E615E00(&v175, &v171);
    v135 = v148;
    sub_24F9229B8();
    v137 = v42[2];
    v136 = v42[3];
    if (v137 >= v136 >> 1)
    {
      v42 = sub_24E617A00((v136 > 1), v137 + 1, 1, v42);
    }

    __swift_destroy_boxed_opaque_existential_1(&v175);
    v172 = v92;
    v173 = MEMORY[0x277D228E0];
    v138 = __swift_allocate_boxed_opaque_existential_1(&v171);
    (v164)(v138, v135, v92);
    v42[2] = v137 + 1;
    sub_24E612C80(&v171, &v42[5 * v137 + 4]);
    (v163)(v135, v92);
  }

  else
  {
    sub_24E601704(&v171, &qword_27F22F780);
  }

  (*(v156 + 104))(v155, *MEMORY[0x277D22788], v158);
  v139 = v154;
  sub_24F9225F8();
  sub_24F9225D8();
  (*(v157 + 8))(v139, v159);
  return a2;
}

uint64_t ProductReviewLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v39 = a2;
  v38 = sub_24F922C28();
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F9221D8();
  v36 = *(v14 - 8);
  v37 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F92CDB8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v6 + 776), *(v6 + 800));
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v18 + 8))(v20, v17);
  sub_24F92C1C8();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [a1 traitCollection];
  v30 = sub_24F92BF98();

  if (v30)
  {
    sub_24EF0EF8C(a1, v16);
  }

  else
  {
    sub_24EF100FC(a1, v16, v22, v24, v26, v28);
  }

  sub_24F9221A8();
  sub_24F9221A8();
  v40.origin.x = a3;
  v40.origin.y = a4;
  v40.size.width = a5;
  v40.size.height = a6;
  CGRectGetWidth(v40);
  sub_24F922158();
  sub_24F9221C8();
  sub_24F922BE8();
  v31 = *(v35 + 8);
  v32 = v38;
  v31(v13, v38);
  sub_24F9221C8();
  sub_24F922BB8();
  v31(v13, v32);
  sub_24F922138();
  return (*(v36 + 8))(v16, v37);
}

uint64_t sub_24EF0EF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a1;
  v103 = a2;
  v99 = sub_24F922868();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v100 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_24F922888();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v98 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_24F922848();
  v5 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_24F9227F8();
  v119 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_24F922838();
  v9 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235740);
  v112 = *(v5 + 72);
  v90 = v5;
  v13 = *(v5 + 80);
  v14 = (v13 + 32) & ~v13;
  v96 = 2 * v112;
  v94 = v13;
  v95 = v12;
  v15 = swift_allocObject();
  v93 = v15;
  *(v15 + 16) = xmmword_24F93A400;
  v108 = v14;
  v110 = (v15 + v14);
  v16 = v2;
  v17 = v2[3];
  v18 = v16[4];
  v92 = v16;
  v19 = __swift_project_boxed_opaque_existential_1(v16, v17);
  v127 = v17;
  v128 = *(v18 + 8);
  v20 = __swift_allocate_boxed_opaque_existential_1(&v126);
  (*(*(v17 - 8) + 16))(v20, v19, v17);
  v118 = *MEMORY[0x277D22848];
  v111 = *(v9 + 104);
  v111(v11);
  *&v123 = MEMORY[0x277D84F90];
  v117 = sub_24E8EF510();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750);
  v115 = sub_24E8EF568();
  v22 = v106;
  sub_24F92C6A8();
  sub_24F922818();
  v24 = v119 + 8;
  v23 = *(v119 + 8);
  v23(v8, v22);
  v25 = *(v9 + 8);
  v26 = v107;
  v25(v11, v107);
  __swift_destroy_boxed_opaque_existential_1(&v126);
  v113 = v9 + 104;
  (v111)(v11, v118, v26);
  v126 = MEMORY[0x277D84F90];
  v109 = v21;
  v27 = v22;
  v28 = v92;
  sub_24F92C6A8();
  sub_24F922818();
  v105 = v8;
  v29 = v8;
  v30 = v93;
  v119 = v24;
  v116 = v23;
  v23(v29, v27);
  v31 = v107;
  v114 = v9 + 8;
  v110 = v25;
  (v25)(v11);
  v129 = v30;
  sub_24E60169C((v28 + 20), &v123, &unk_27F22B200);
  if (!v124)
  {
    sub_24E601704(&v123, &unk_27F22B200);
    v32 = v31;
    goto LABEL_5;
  }

  sub_24E612C80(&v123, &v126);
  __swift_project_boxed_opaque_existential_1(&v126, v127);
  v32 = v31;
  if (sub_24F922238())
  {
    __swift_destroy_boxed_opaque_existential_1(&v126);
LABEL_5:
    v33 = v108;
    goto LABEL_13;
  }

  v34 = v127;
  v35 = v128;
  v36 = __swift_project_boxed_opaque_existential_1(&v126, v127);
  v124 = v34;
  v125 = *(v35 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v123);
  (*(*(v34 - 8) + 16))(boxed_opaque_existential_1, v36, v34);
  sub_24E60169C((v28 + 107), &v120, &qword_27F22F780);
  v33 = v108;
  if (v121)
  {
    sub_24E612C80(&v120, v122);
    v38 = v89;
  }

  else
  {
    sub_24E615E00((v28 + 61), v122);
    v38 = v89;
    if (v121)
    {
      sub_24E601704(&v120, &qword_27F22F780);
    }
  }

  (v111)(v11, v118, v31);
  *&v120 = MEMORY[0x277D84F90];
  v39 = v105;
  v40 = v106;
  sub_24F92C6A8();
  sub_24F922818();
  v116(v39, v40);
  v110(v11, v32);
  __swift_destroy_boxed_opaque_existential_1(v122);
  __swift_destroy_boxed_opaque_existential_1(&v123);
  v42 = v30[2];
  v41 = v30[3];
  if (v42 >= v41 >> 1)
  {
    v30 = sub_24E6179D8(v41 > 1, v42 + 1, 1, v30);
  }

  v30[2] = v42 + 1;
  (*(v90 + 32))(v30 + v33 + v42 * v112, v38, v91);
  v129 = v30;
  __swift_destroy_boxed_opaque_existential_1(&v126);
LABEL_13:
  v43 = swift_allocObject();
  v95 = v43;
  *(v43 + 16) = xmmword_24F93A070;
  v108 = v43 + v33;
  v44 = v28[13];
  v45 = v28[14];
  v46 = __swift_project_boxed_opaque_existential_1(v28 + 10, v44);
  v127 = v44;
  v128 = *(v45 + 8);
  v47 = __swift_allocate_boxed_opaque_existential_1(&v126);
  (*(*(v44 - 8) + 16))(v47, v46, v44);
  v48 = v11;
  v49 = v11;
  v50 = v32;
  v51 = v32;
  v52 = v111;
  (v111)(v49, v118, v51);
  *&v123 = MEMORY[0x277D84F90];
  v53 = v105;
  v54 = v106;
  sub_24F92C6A8();
  sub_24F922818();
  v55 = v48;
  v116(v53, v54);
  v110(v48, v50);
  __swift_destroy_boxed_opaque_existential_1(&v126);
  v56 = v28[18];
  v57 = v28[19];
  v58 = __swift_project_boxed_opaque_existential_1(v28 + 15, v56);
  v127 = v56;
  v128 = *(v57 + 8);
  v59 = __swift_allocate_boxed_opaque_existential_1(&v126);
  (*(*(v56 - 8) + 16))(v59, v58, v56);
  (v52)(v55, v118, v50);
  *&v123 = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  sub_24F922818();
  v116(v53, v54);
  v110(v55, v50);
  __swift_destroy_boxed_opaque_existential_1(&v126);
  v60 = v28[28];
  v61 = v28[29];
  v62 = __swift_project_boxed_opaque_existential_1(v28 + 25, v60);
  v127 = v60;
  v128 = *(v61 + 8);
  v63 = __swift_allocate_boxed_opaque_existential_1(&v126);
  (*(*(v60 - 8) + 16))(v63, v62, v60);
  v64 = v118;
  v65 = v107;
  (v111)(v55, v118, v107);
  *&v123 = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  sub_24F922818();
  v116(v53, v54);
  v110(v55, v65);
  __swift_destroy_boxed_opaque_existential_1(&v126);
  v96 = 3 * v112;
  v66 = v28[33];
  v67 = v28[34];
  v68 = v65;
  v69 = __swift_project_boxed_opaque_existential_1(v28 + 30, v66);
  v127 = v66;
  v128 = *(v67 + 8);
  v70 = __swift_allocate_boxed_opaque_existential_1(&v126);
  (*(*(v66 - 8) + 16))(v70, v69, v66);
  v71 = v68;
  v72 = v68;
  v73 = v111;
  (v111)(v55, v64, v72);
  *&v123 = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  sub_24F922818();
  v116(v53, v54);
  v110(v55, v71);
  __swift_destroy_boxed_opaque_existential_1(&v126);
  v96 = 4 * v112;
  v74 = v28[38];
  v75 = v28[39];
  v76 = __swift_project_boxed_opaque_existential_1(v28 + 35, v74);
  v127 = v74;
  v128 = *(v75 + 8);
  v77 = __swift_allocate_boxed_opaque_existential_1(&v126);
  (*(*(v74 - 8) + 16))(v77, v76, v74);
  v78 = v107;
  (v73)(v55, v118, v107);
  *&v123 = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  v79 = v96;
  sub_24F922818();
  v116(v53, v54);
  v80 = v78;
  v81 = v110;
  v110(v55, v78);
  __swift_destroy_boxed_opaque_existential_1(&v126);
  v112 += v79;
  v82 = v28[43];
  v83 = v28[44];
  v84 = __swift_project_boxed_opaque_existential_1(v28 + 40, v82);
  v127 = v82;
  v128 = *(v83 + 8);
  v85 = __swift_allocate_boxed_opaque_existential_1(&v126);
  (*(*(v82 - 8) + 16))(v85, v84, v82);
  (v111)(v55, v118, v80);
  *&v123 = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  sub_24F922818();
  v116(v53, v54);
  v81(v55, v80);
  __swift_destroy_boxed_opaque_existential_1(&v126);
  sub_24EA0B808(v95);
  (*(v97 + 104))(v100, *MEMORY[0x277D22868], v99);
  v127 = sub_24F922418();
  v128 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(&v126);
  sub_24F922408();
  v86 = v98;
  sub_24F922878();
  sub_24F9227D8();
  return (*(v101 + 8))(v86, v102);
}

void sub_24EF100FC(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v230 = a6;
  v221 = COERCE_DOUBLE(sub_24F922C28());
  v214 = *(*&v221 - 8);
  MEMORY[0x28223BE20](*&v221);
  v218 = &v199 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_24F9221D8();
  v216 = *(v217 - 8);
  MEMORY[0x28223BE20](v217);
  v204 = &v199 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  *&v227 = &v199 - v16;
  MEMORY[0x28223BE20](v17);
  *&MinX = &v199 - v18;
  MEMORY[0x28223BE20](v19);
  *&v206 = &v199 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v199 - v22;
  v219 = sub_24F922B68();
  v24 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v201 = &v199 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v212 = &v199 - v27;
  v215 = sub_24F922B78();
  v213 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v203 = &v199 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v224 = &v199 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v199 - v32;
  MEMORY[0x28223BE20](v34);
  v202 = &v199 - v35;
  MEMORY[0x28223BE20](v36);
  v209 = (&v199 - v37);
  v222 = sub_24F92CDB8();
  v38 = *(v222 - 8);
  MEMORY[0x28223BE20](v222 - 8);
  v211 = &v199 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v228 = &v199 - v41;
  sub_24E60169C(v7 + 160, &v237, &unk_27F22B200);
  v42 = MEMORY[0x277D84688];
  v43 = MEMORY[0x277D84680];
  v44 = MEMORY[0x277D229E0];
  v223 = a5;
  v207 = a2;
  v226 = *&v38;
  v205 = v24;
  v220 = a1;
  v229 = a4;
  if (!v238)
  {
    sub_24E601704(&v237, &unk_27F22B200);
    goto LABEL_5;
  }

  v200 = v23;
  sub_24E612C80(&v237, &v240);
  __swift_project_boxed_opaque_existential_1(&v240, v241);
  if (sub_24F922238())
  {
    __swift_destroy_boxed_opaque_existential_1(&v240);
LABEL_5:
    v45 = *(v7 + 24);
    v46 = *(v7 + 32);
    v47 = __swift_project_boxed_opaque_existential_1(v7, v45);
    v241 = v45;
    v242 = *(v46 + 8);
    v48 = __swift_allocate_boxed_opaque_existential_1(&v240);
    (*(*(v45 - 8) + 16))(v48, v47, v45);
    v49 = *(v7 + 104);
    v50 = *(v7 + 112);
    v51 = __swift_project_boxed_opaque_existential_1((v7 + 80), v49);
    v238 = v49;
    v239 = *(v50 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v237);
    (*(*(v49 - 8) + 16))(boxed_opaque_existential_1, v51, v49);
    v53 = *v44;
    v209 = *(v24 + 104);
    v54 = v212;
    v209(v212, v53, v219);
    sub_24E615E00(v7 + 368, &v234);
    sub_24E615E00(v7 + 736, v233);
    v208 = v33;
    sub_24F922B48();
    v55 = MinX;
    sub_24F922B58();
    sub_24F9221A8();
    sub_24F922158();
    v56 = v218;
    sub_24F9221C8();
    sub_24F922BB8();
    v202 = *(v214 + 8);
    (v202)(v56, *&v221);
    sub_24E615E00(v7 + 40, &v240);
    v57 = *(v7 + 144);
    v58 = *(v7 + 152);
    v59 = __swift_project_boxed_opaque_existential_1((v7 + 120), v57);
    v238 = v57;
    v239 = *(v58 + 8);
    v60 = __swift_allocate_boxed_opaque_existential_1(&v237);
    (*(*(v57 - 8) + 16))(v60, v59, v57);
    v209(v54, *MEMORY[0x277D229D8], v219);
    sub_24E615E00(v7 + 408, &v234);
    sub_24E615E00(v7 + 736, v233);
    v61 = v224;
    sub_24F922B48();
    v62 = v227;
    sub_24F922B58();
    sub_24F9221C8();
    sub_24F922BE8();
    v206 = v63;
    v64 = v221;
    v65 = v202;
    (v202)(v56, *&v221);
    sub_24F9221A8();
    sub_24F922158();
    sub_24F9221C8();
    sub_24F922BB8();
    v65(v56, *&v64);
    v66 = *(v216 + 8);
    v67 = v62;
    v68 = v217;
    v66(*&v67, v217);
    v69 = *(v213 + 8);
    v70 = v61;
    v71 = v215;
    v69(v70, v215);
    v66(*&v55, v68);
    v69(v208, v71);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(v7, *(v7 + 24));
  v72 = v230;
  sub_24F922288();
  v224 = v73;
  v75 = v74;
  v243.origin.x = a3;
  v243.origin.y = a4;
  v243.size.width = a5;
  v243.size.height = v72;
  MinX = CGRectGetMinX(v243);
  v244.origin.x = a3;
  v244.origin.y = a4;
  v244.size.width = a5;
  v244.size.height = v72;
  CGRectGetMinY(v244);
  __swift_project_boxed_opaque_existential_1((v7 + 368), *(v7 + 392));
  v227 = v75;
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1(v7, *(v7 + 24));
  sub_24F92C1D8();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = *v42;
  v85 = *(v38 + 104);
  v86 = v228;
  v87 = v222;
  v85(v228, v84, v222);
  v88 = *v43;
  v89 = v211;
  v85(v211, v88, v87);
  CGPoint.rounded(_:)(v86, v77, v79);
  CGSize.rounded(_:)(v89, v81, v83);
  v90 = *(v38 + 8);
  v90(v89, v87);
  v90(v86, v87);
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v7, *(v7 + 24));
  sub_24F922218();
  CGRectGetMaxY(v245);
  sub_24E615E00(v7 + 40, &v237);
  v91 = *(v7 + 104);
  v92 = *(v7 + 112);
  v93 = __swift_project_boxed_opaque_existential_1((v7 + 80), v91);
  v235 = v91;
  v236 = *(v92 + 8);
  v94 = __swift_allocate_boxed_opaque_existential_1(&v234);
  (*(*(v91 - 8) + 16))(v94, v93, v91);
  v95 = *MEMORY[0x277D229D8];
  v96 = *(v205 + 104);
  v97 = v219;
  v96(v212, v95, v219);
  sub_24E615E00(v7 + 408, v233);
  sub_24E615E00(v7 + 736, &v231);
  sub_24F922B48();
  sub_24F922B58();
  sub_24F9221A8();
  sub_24F922158();
  v98 = v218;
  sub_24F9221C8();
  sub_24F922BB8();
  v99 = *(v214 + 8);
  v99(v98, *&v221);
  v100 = v241;
  v101 = v242;
  v102 = __swift_project_boxed_opaque_existential_1(&v240, v241);
  v238 = v100;
  v239 = *(v101 + 8);
  v103 = __swift_allocate_boxed_opaque_existential_1(&v237);
  (*(*(v100 - 8) + 16))(v103, v102, v100);
  v104 = *(v7 + 144);
  v105 = *(v7 + 152);
  v106 = __swift_project_boxed_opaque_existential_1((v7 + 120), v104);
  v235 = v104;
  v236 = *(v105 + 8);
  v107 = __swift_allocate_boxed_opaque_existential_1(&v234);
  (*(*(v104 - 8) + 16))(v107, v106, v104);
  v96(v201, v95, v97);
  sub_24E60169C(v7 + 856, &v231, &qword_27F22F780);
  if (v232)
  {
    sub_24E612C80(&v231, v233);
    v108 = v206;
    v109 = v202;
  }

  else
  {
    sub_24E615E00(v7 + 488, v233);
    v108 = v206;
    v109 = v202;
    if (v232)
    {
      sub_24E601704(&v231, &qword_27F22F780);
    }
  }

  sub_24E615E00(v7 + 736, &v231);
  sub_24F922B48();
  v110 = v230;
  v111 = a4;
  v112 = v223;
  sub_24F922B58();
  v246.origin.x = a3;
  v246.origin.y = v111;
  v246.size.width = v112;
  v246.size.height = v110;
  v206 = v227 + CGRectGetMinY(v246);
  sub_24F9221A8();
  sub_24F922158();
  v113 = v218;
  sub_24F9221C8();
  sub_24F922BB8();
  v99(v113, *&v221);
  v114 = *(v216 + 8);
  v115 = v217;
  v114(*&v108, v217);
  v116 = *(v213 + 8);
  v117 = v215;
  v116(v109, v215);
  v114(v200, v115);
  v116(v209, v117);
  __swift_destroy_boxed_opaque_existential_1(&v240);
LABEL_11:
  v209 = *(v7 + 64);
  v227 = *(v7 + 72);
  __swift_project_boxed_opaque_existential_1((v7 + 40), v209);
  __swift_project_boxed_opaque_existential_1((v7 + 40), *(v7 + 64));
  sub_24F922218();
  v119 = v118;
  v121 = v120;
  v123 = v122;
  v125 = v124;
  LODWORD(MinX) = *MEMORY[0x277D84688];
  v126 = *&v226;
  v127 = *&v226 + 104;
  v128 = *(*&v226 + 104);
  v129 = v228;
  v130 = v222;
  v128(v228);
  LODWORD(v224) = *MEMORY[0x277D84680];
  v131 = v211;
  v128(v211);
  CGPoint.rounded(_:)(v129, v119, v121);
  CGSize.rounded(_:)(v131, v123, v125);
  v132 = *(v126 + 8);
  v132(v131, v130);
  v132(v129, v130);
  sub_24F922228();
  v226 = *(v7 + 144);
  v209 = *(v7 + 152);
  v208 = __swift_project_boxed_opaque_existential_1((v7 + 120), *&v226);
  __swift_project_boxed_opaque_existential_1((v7 + 120), *(v7 + 144));
  sub_24F922218();
  v134 = v133;
  v136 = v135;
  v138 = v137;
  v140 = v139;
  (v128)(v129, LODWORD(MinX), v130);
  (v128)(v131, v224, v130);
  CGPoint.rounded(_:)(v129, v134, v136);
  CGSize.rounded(_:)(v131, v138, v140);
  v141 = v131;
  v142 = v126 + 8;
  v132(v141, v130);
  v227 = *&v132;
  v132(v129, v130);
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1((v7 + 200), *(v7 + 224));
  v143 = v223;
  v144 = v230;
  sub_24F922288();
  v146 = v145;
  __swift_project_boxed_opaque_existential_1((v7 + 528), *(v7 + 552));
  v226 = *&v146;
  sub_24F9223C8();
  v247.origin.x = a3;
  v147 = a3;
  v247.origin.y = v229;
  v247.size.width = v143;
  v247.size.height = v144;
  CGRectGetMinX(v247);
  __swift_project_boxed_opaque_existential_1((v7 + 200), *(v7 + 224));
  sub_24F92C1D8();
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1((v7 + 320), *(v7 + 344));
  LOBYTE(v130) = sub_24F922238();
  __swift_project_boxed_opaque_existential_1((v7 + 200), *(v7 + 224));
  sub_24F922218();
  MaxY = CGRectGetMaxY(v248);
  v210 = a3;
  if (v130)
  {
    v149 = v229;
  }

  else
  {
    v150 = *(v7 + 264);
    v151 = *(v7 + 272);
    v152 = __swift_project_boxed_opaque_existential_1((v7 + 240), v150);
    v241 = v150;
    v242 = *(v151 + 8);
    v153 = __swift_allocate_boxed_opaque_existential_1(&v240);
    (*(*(v150 - 8) + 16))(v153, v152, v150);
    v154 = *(v7 + 304);
    v155 = *(v7 + 312);
    v156 = __swift_project_boxed_opaque_existential_1((v7 + 280), v154);
    v238 = v154;
    v239 = *(v155 + 8);
    v157 = __swift_allocate_boxed_opaque_existential_1(&v237);
    (*(*(v154 - 8) + 16))(v157, v156, v154);
    (*(v205 + 104))(v212, *MEMORY[0x277D229E0], v219);
    sub_24E615E00(v7 + 616, &v234);
    sub_24E615E00(v7 + 736, v233);
    v158 = v203;
    sub_24F922B48();
    v159 = v229;
    v160 = v204;
    v161 = v223;
    sub_24F922B58();
    __swift_project_boxed_opaque_existential_1((v7 + 320), *(v7 + 344));
    sub_24F922288();
    v219 = v162;
    v226 = *&v163;
    v164 = v147;
    v166 = v165;
    sub_24F9221A8();
    sub_24F922158();
    v167 = v218;
    sub_24F9221C8();
    sub_24F922BB8();
    (*(v214 + 8))(v167, COERCE_DOUBLE(*&v221));
    __swift_project_boxed_opaque_existential_1((v7 + 696), *(v7 + 720));
    v226 = *&v166;
    sub_24F9223C8();
    v249.origin.x = v164;
    v249.origin.y = v159;
    v249.size.width = v161;
    v249.size.height = v230;
    CGRectGetMinX(v249);
    __swift_project_boxed_opaque_existential_1((v7 + 320), *(v7 + 344));
    v149 = v159;
    sub_24F92C1D8();
    sub_24F922228();
    __swift_project_boxed_opaque_existential_1((v7 + 320), *(v7 + 344));
    sub_24F922218();
    MaxY = CGRectGetMaxY(v250);
    (*(v216 + 8))(v160, v217);
    v168 = v158;
    v142 = v126 + 8;
    v129 = v228;
    (*(v213 + 8))(v168, v215);
  }

  sub_24E60169C(v7 + 896, &v237, &qword_27F22F780);
  v169 = v223;
  v170 = v226;
  if (!v238)
  {
    sub_24E601704(&v237, &qword_27F22F780);
    v171 = v210;
LABEL_26:
    v254.origin.x = v171;
    v254.origin.y = v149;
    v254.size.width = v169;
    v198 = v230;
    v254.size.height = v230;
    CGRectGetMinY(v254);
    __swift_project_boxed_opaque_existential_1((v7 + 816), *(v7 + 840));
    sub_24E8ED7D8();
    sub_24F9223A8();
    (*&v227)(v129, v222);
    v255.origin.x = v171;
    v255.origin.y = v149;
    v255.size.width = v169;
    v255.size.height = v198;
    CGRectGetWidth(v255);
    sub_24F922138();
    return;
  }

  sub_24E612C80(&v237, &v240);
  sub_24E60169C(v7 + 936, &v237, &qword_27F22F780);
  v171 = v210;
  if (!v238)
  {
    sub_24E601704(&v237, &qword_27F22F780);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(&v237, v238);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v173 = v172;
  (*&v227)(v129, v222);
  __swift_destroy_boxed_opaque_existential_1(&v237);
  v174 = *(v7 + 360);
  if (!v174)
  {
    goto LABEL_25;
  }

  if (!*(v174 + 16))
  {
    goto LABEL_25;
  }

  v251.origin.x = v171;
  v251.origin.y = v149;
  v251.size.width = v169;
  v251.size.height = v230;
  v175 = CGRectGetMinX(v251);
  v176 = *(v174 + 16);
  if (!v176)
  {
    goto LABEL_25;
  }

  v177 = v175;
  v215 = v7;
  v221 = MaxY - v170;
  v217 = v174;
  v178 = v174 + 32;
  v219 = v127;
  v179 = v222;
  v226 = *&v142;
  v218 = v128;
  v216 = v176;
  v180 = v176;
  v181 = v211;
  do
  {
    sub_24E615E00(v178, &v237);
    __swift_project_boxed_opaque_existential_1(&v237, v238);
    sub_24F922288();
    v182 = v173;
    v184 = v183;
    v186 = v185;
    __swift_project_boxed_opaque_existential_1(&v240, v241);
    sub_24F9223C8();
    v188 = v221 + v187;
    v189 = v228;
    v190 = v218;
    (v218)(v228, LODWORD(MinX), v179);
    v190(v181, v224, v179);
    v191 = CGPoint.rounded(_:)(v189, v177, v188);
    v193 = v192;
    v194 = CGSize.rounded(_:)(v181, v184, v186);
    v196 = v195;
    v197 = v227;
    (*&v227)(v181, v179);
    (*&v197)(v189, v179);
    __swift_project_boxed_opaque_existential_1(&v237, v238);
    sub_24F92C1D8();
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(&v237);
    v252.origin.x = v191;
    v252.origin.y = v193;
    v252.size.width = v194;
    v173 = v182;
    v252.size.height = v196;
    v177 = floor(v182 + CGRectGetMaxX(v252));
    v178 += 40;
    --v180;
  }

  while (v180);
  v149 = v229;
  if (v216 <= *(v217 + 16))
  {
    sub_24E615E00(v217 + 40 * v216 - 8, &v237);
    __swift_project_boxed_opaque_existential_1(&v237, v238);
    sub_24F922218();
    CGRectGetMaxY(v253);
    __swift_destroy_boxed_opaque_existential_1(&v237);
    v169 = v223;
    v7 = v215;
    v129 = v228;
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1(&v240);
    goto LABEL_26;
  }

  __break(1u);
}

double _s12GameStoreKit19ProductReviewLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(void *a1, void *a2, double a3)
{
  v34 = sub_24F9225E8();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_24F922618();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9229A8();
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F92CDB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1 + 51, a1[54]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v16 = *(v12 + 8);
  v15 = (v12 + 8);
  v16(v14, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24F942000;
  sub_24E615E00(a1, v38);
  v18 = MEMORY[0x277D228E0];
  *(v17 + 56) = v9;
  *(v17 + 64) = v18;
  __swift_allocate_boxed_opaque_existential_1((v17 + 32));
  sub_24F9229B8();
  sub_24E615E00((a1 + 5), v38);
  *(v17 + 96) = v9;
  *(v17 + 104) = v18;
  __swift_allocate_boxed_opaque_existential_1((v17 + 72));
  sub_24F9229B8();
  sub_24E615E00((a1 + 20), v38);
  *(v17 + 136) = v9;
  *(v17 + 144) = v18;
  __swift_allocate_boxed_opaque_existential_1((v17 + 112));
  sub_24F9229B8();
  sub_24E615E00((a1 + 25), v38);
  if (__OFSUB__(a1[30], 1))
  {
    __break(1u);
LABEL_12:
    v17 = sub_24E617A00(0, *(v17 + 16) + 1, 1, v17);
    goto LABEL_6;
  }

  *(v17 + 176) = v9;
  *(v17 + 184) = v18;
  __swift_allocate_boxed_opaque_existential_1((v17 + 152));
  sub_24F9229B8();
  sub_24E615E00((a1 + 56), v38);
  *(v17 + 216) = v9;
  *(v17 + 224) = v18;
  __swift_allocate_boxed_opaque_existential_1((v17 + 192));
  sub_24F9229B8();
  v39 = v17;
  v19 = [a2 traitCollection];
  v20 = sub_24F92BF98();

  if (v20)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    sub_24E615E00((a1 + 10), v38);
    *(inited + 56) = v9;
    *(inited + 64) = v18;
    __swift_allocate_boxed_opaque_existential_1((inited + 32));
    sub_24F9229B8();
    sub_24E615E00((a1 + 15), v38);
    *(inited + 96) = v9;
    *(inited + 104) = v18;
    __swift_allocate_boxed_opaque_existential_1((inited + 72));
    sub_24F9229B8();
    sub_24EA0ACCC(inited);
  }

  sub_24E60169C((a1 + 66), &v35, &qword_27F22F780);
  if (!v36)
  {
    sub_24E601704(&v35, &qword_27F22F780);
    goto LABEL_10;
  }

  sub_24E612C80(&v35, v38);
  sub_24E615E00(v38, &v35);
  v15 = v28;
  sub_24F9229B8();
  v17 = v39;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v22 = v29;
  v24 = *(v17 + 16);
  v23 = *(v17 + 24);
  if (v24 >= v23 >> 1)
  {
    v17 = sub_24E617A00((v23 > 1), v24 + 1, 1, v17);
  }

  __swift_destroy_boxed_opaque_existential_1(v38);
  v36 = v9;
  v37 = v18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
  (*(v22 + 16))(boxed_opaque_existential_1, v15, v9);
  *(v17 + 16) = v24 + 1;
  sub_24E612C80(&v35, v17 + 40 * v24 + 32);
  (*(v22 + 8))(v15, v9);
  v39 = v17;
LABEL_10:
  (*(v32 + 104))(v30, *MEMORY[0x277D22788], v34);
  sub_24F9225F8();
  sub_24F9225D8();
  (*(v31 + 8))(v8, v33);
  return a3;
}

unint64_t sub_24EF12378()
{
  result = qword_27F233C90;
  if (!qword_27F233C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233C90);
  }

  return result;
}

uint64_t sub_24EF123D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 976))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EF1241C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 968) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 976) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 976) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EF12574(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 608))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EF125BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 600) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 608) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 608) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t EditorialStoryCardLayout.init(metrics:artworkView:headerLabel:titleLabel:descriptionLabel:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *(a1 + 112);
  *(a6 + 96) = *(a1 + 96);
  *(a6 + 112) = v10;
  *(a6 + 128) = *(a1 + 128);
  *(a6 + 144) = *(a1 + 144);
  v11 = *(a1 + 48);
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = v11;
  v12 = *(a1 + 80);
  *(a6 + 64) = *(a1 + 64);
  *(a6 + 80) = v12;
  v13 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v13;
  sub_24E612C80(a2, a6 + 152);
  sub_24E612C80(a3, a6 + 192);
  sub_24E612C80(a4, a6 + 232);

  return sub_24E612C80(a5, a6 + 272);
}

uint64_t EditorialStoryCardLayout.Metrics.init(headerSpace:titleSpace:descriptionSpace:layoutMargins:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  sub_24E612C80(a1, a4);
  sub_24E612C80(a2, (a4 + 5));
  result = sub_24E612C80(a3, (a4 + 10));
  a4[15] = a5;
  a4[16] = a6;
  a4[17] = a7;
  a4[18] = a8;
  return result;
}

uint64_t EditorialStoryCardLayout.Metrics.headerSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t EditorialStoryCardLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t EditorialStoryCardLayout.Metrics.descriptionSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_24E612C80(a1, v1 + 80);
}

void EditorialStoryCardLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = a3;
  v4[18] = a4;
}

__n128 EditorialStoryCardLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = *(a1 + 144);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *a1;
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  return result;
}

__n128 sub_24EF12A58@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = *(a1 + 144);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *a1;
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  return result;
}

uint64_t EditorialStoryCardLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v38 = a2;
  v13 = sub_24F9221D8();
  v36 = *(v13 - 8);
  v37 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v6 + 19, v6[22]);
  sub_24F922228();
  v16 = [a1 traitCollection];
  [v16 layoutDirection];

  *&v35[1] = a3;
  *&v35[2] = a4;
  *&v35[3] = a5;
  *&v35[4] = a6;
  sub_24F92C1C8();
  sub_24F92C1D8();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v26 = v7[27];
  v27 = v7[28];
  v28 = __swift_project_boxed_opaque_existential_1(v7 + 24, v26);
  v43 = v26;
  v44 = *(v27 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  (*(*(v26 - 8) + 16))(boxed_opaque_existential_1, v28, v26);
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_24E615E00(v42, inited + 32);
  sub_24E615E00(v7, inited + 80);
  sub_24E930DFC(&v39, inited + 120);
  *(inited + 72) = 1;
  *(inited + 160) = 8;
  sub_24E930E6C(&v39);
  __swift_destroy_boxed_opaque_existential_1(v42);
  v30 = v7[32];
  v31 = v7[33];
  v32 = __swift_project_boxed_opaque_existential_1(v7 + 29, v30);
  v43 = v30;
  v44 = *(v31 + 8);
  v33 = __swift_allocate_boxed_opaque_existential_1(v42);
  (*(*(v30 - 8) + 16))(v33, v32, v30);
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_24E615E00(v42, inited + 168);
  sub_24E615E00((v7 + 5), inited + 216);
  sub_24E930DFC(&v39, inited + 256);
  *(inited + 208) = 1;
  *(inited + 296) = 8;
  sub_24E930E6C(&v39);
  __swift_destroy_boxed_opaque_existential_1(v42);
  LOBYTE(v42[0]) = 1;
  v42[1] = inited;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(v15, v18, v20, v22, v24);
  (*(v36 + 8))(v15, v37);

  __swift_project_boxed_opaque_existential_1(v7 + 34, v7[37]);
  sub_24F922288();
  v45.origin.x = v18;
  v45.origin.y = v20;
  v45.size.width = v22;
  v45.size.height = v24;
  CGRectGetMinX(v45);
  v46.origin.x = v18;
  v46.origin.y = v20;
  v46.size.width = v22;
  v46.size.height = v24;
  CGRectGetMaxY(v46);
  __swift_project_boxed_opaque_existential_1(v7 + 34, v7[37]);
  sub_24F922228();
  return sub_24F922128();
}

uint64_t sub_24EF12ED0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24EF130A0();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, v10, a3, v11, v12);
}

unint64_t sub_24EF12F4C()
{
  result = qword_27F233C98;
  if (!qword_27F233C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233C98);
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_24EF12FE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EF1302C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EF130A0()
{
  result = qword_27F233CA0;
  if (!qword_27F233CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233CA0);
  }

  return result;
}

__n128 ProductTextBadgeStackLayout.init(metrics:badges:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  *(a3 + 24) = a1[1];
  v4 = a1[3];
  *(a3 + 40) = a1[2];
  *(a3 + 56) = v4;
  result = a1[4];
  *(a3 + 72) = result;
  *(a3 + 8) = v3;
  *a3 = a2;
  return result;
}

uint64_t ProductTextBadgeStackLayout.Metrics.init(interItemSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_24E612C80(a1, a3);

  return sub_24E612C80(a2, a3 + 40);
}

uint64_t ProductTextBadgeStackLayout.Metrics.interItemSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t ProductTextBadgeStackLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_24E612C80(a1, v1 + 40);
}

double ProductTextBadgeStackLayout.measurements(fitting:in:)(uint64_t a1)
{
  v49 = a1;
  v48 = sub_24F9225E8();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v44 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_24F922618();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_24F9229A8();
  MEMORY[0x28223BE20](v55);
  v50 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v42 - v6;
  v7 = 0;
  v42 = v1;
  v8 = *v1;
  v51 = v1 + 1;
  v9 = *(v8 + 16);
  v58 = v8;
  v52 = v8 + 32;
  v53 = (v10 + 16);
  v54 = (v10 + 8);
  v61 = MEMORY[0x277D84F90];
  v57 = v9;
  while (1)
  {
    if (v7 == v9)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0uLL;
      v14 = v9;
      v15 = 0uLL;
    }

    else
    {
      if (v7 >= *(v58 + 16))
      {
        __break(1u);
LABEL_22:
        v7 = sub_24E617A00(0, *(v7 + 16) + 1, 1, v7);
        goto LABEL_17;
      }

      v14 = v7 + 1;
      *&v62 = v7;
      sub_24E615E00(v52 + 40 * v7, &v62 + 8);
      v13 = v62;
      v15 = v63;
      v12 = v64;
      v11 = v65;
    }

    v66 = v13;
    v67 = v15;
    v68 = v12;
    v69 = v11;
    v7 = v61;
    if (!v12)
    {
      break;
    }

    v60 = v13;
    v16 = __swift_project_boxed_opaque_existential_1(&v66 + 1, v12);
    v59 = &v42;
    v17 = *(v12 - 8);
    v18 = *(v17 + 64);
    v19 = MEMORY[0x28223BE20](v16);
    v20 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *(v17 + 16);
    v21(v20, v19);
    __swift_destroy_boxed_opaque_existential_1(&v66 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_24E617A00(0, *(v7 + 16) + 1, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v70 = isUniquelyReferenced_nonNull_native;
    }

    v24 = *(v7 + 16);
    v23 = *(v7 + 24);
    v61 = v7;
    v7 = v14;
    if (v24 >= v23 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_24E617A00((v23 > 1), v24 + 1, 1, v61);
      v61 = isUniquelyReferenced_nonNull_native;
      v70 = isUniquelyReferenced_nonNull_native;
    }

    v25 = MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    v26 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (v21)(v26, v20, v12, v25);
    sub_24ED43E20(v24, v26, &v70, v12, *(v11 + 8));
    (*(v17 + 8))(v20, v12);
    v9 = v57;
    if (v60 < *(v58 + 16) - 1)
    {
      sub_24E615E00(v51, &v62);
      sub_24F9229B8();
      v28 = v61[2];
      v27 = v61[3];
      if (v28 >= v27 >> 1)
      {
        v61 = sub_24E617A00((v27 > 1), v28 + 1, 1, v61);
      }

      v29 = v55;
      *(&v63 + 1) = v55;
      v64 = MEMORY[0x277D228E0];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v62);
      v31 = v56;
      (*v53)(boxed_opaque_existential_1, v56, v29);
      v32 = v61;
      v61[2] = v28 + 1;
      sub_24E612C80(&v62, &v32[5 * v28 + 4]);
      (*v54)(v31, v29);
    }
  }

  if (!*(v58 + 16))
  {
    goto LABEL_20;
  }

  sub_24E615E00((v42 + 6), &v66);
  sub_24F9229B8();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_17:
  v34 = *(v7 + 16);
  v33 = *(v7 + 24);
  if (v34 >= v33 >> 1)
  {
    v7 = sub_24E617A00((v33 > 1), v34 + 1, 1, v7);
  }

  v35 = v55;
  *(&v67 + 1) = v55;
  v68 = MEMORY[0x277D228E0];
  v36 = __swift_allocate_boxed_opaque_existential_1(&v66);
  v37 = v50;
  (*v53)(v36, v50, v35);
  *(v7 + 16) = v34 + 1;
  sub_24E612C80(&v66, v7 + 40 * v34 + 32);
  (*v54)(v37, v35);
LABEL_20:
  (*(v46 + 104))(v44, *MEMORY[0x277D22788], v48);
  v38 = v43;
  sub_24F9225F8();
  sub_24F9225D8();
  v40 = v39;
  (*(v45 + 8))(v38, v47);
  return v40;
}

uint64_t ProductTextBadgeStackLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_24E615E00((v5 + 1), v52);
  result = sub_24E615E00((v5 + 6), v51);
  v11 = 0;
  v12 = *v5;
  v13 = *v5 + 32;
  v14 = MEMORY[0x277D84F90];
  v15 = *(*v5 + 16);
  while (1)
  {
    v16 = 0uLL;
    v17 = v15;
    v18 = 0uLL;
    v19 = 0uLL;
    if (v11 == v15)
    {
      goto LABEL_5;
    }

    if (v11 >= *(v12 + 16))
    {
      break;
    }

    v17 = v11 + 1;
    *&v44[0] = v11;
    sub_24E615E00(v13 + 40 * v11, v44 + 8);
    v16 = v44[0];
    v18 = v44[1];
    v19 = v45;
LABEL_5:
    v50[0] = v16;
    v50[1] = v18;
    v50[2] = v19;
    if (!v19)
    {
      LOBYTE(v44[0]) = 0;
      *(&v44[0] + 1) = v14;
      _VerticalFlowLayout.placeChildren(relativeTo:in:)(a1, a2, a3, a4, a5);

      v53.origin.x = a2;
      v53.origin.y = a3;
      v53.size.width = a4;
      v53.size.height = a5;
      Width = CGRectGetWidth(v53);
      v31 = sub_24F922148();
      *v32 = Width;
      v31(v44, 0);
      __swift_destroy_boxed_opaque_existential_1(v51);
      return __swift_destroy_boxed_opaque_existential_1(v52);
    }

    v34 = v16;
    sub_24E612C80((v50 + 8), v49);
    if (v34 >= *(v12 + 16) - 1)
    {
      v20 = v51;
    }

    else
    {
      v20 = v52;
    }

    sub_24E615E00(v20, v48);
    *(&v36 + 1) = sub_24F922418();
    *&v37 = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(&v35);
    sub_24F922408();
    sub_24E615E00(v48, v47);
    sub_24E615E00(v49, v44);
    sub_24E615E00(&v35, &v46);
    WORD4(v45) = 1;
    v47[5] = 8;
    __swift_destroy_boxed_opaque_existential_1(&v35);
    sub_24E9D682C(v44, &v35);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_24E617A24(0, *(v14 + 2) + 1, 1, v14);
    }

    v22 = *(v14 + 2);
    v21 = *(v14 + 3);
    if (v22 >= v21 >> 1)
    {
      v14 = sub_24E617A24((v21 > 1), v22 + 1, 1, v14);
    }

    sub_24E9D6888(v44);
    __swift_destroy_boxed_opaque_existential_1(v48);
    result = __swift_destroy_boxed_opaque_existential_1(v49);
    *(v14 + 2) = v22 + 1;
    v23 = &v14[136 * v22];
    *(v23 + 2) = v35;
    v24 = v36;
    v25 = v37;
    v26 = v39;
    *(v23 + 5) = v38;
    *(v23 + 6) = v26;
    *(v23 + 3) = v24;
    *(v23 + 4) = v25;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    *(v23 + 20) = v43;
    *(v23 + 8) = v28;
    *(v23 + 9) = v29;
    *(v23 + 7) = v27;
    v11 = v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EF13D04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_24EF13D4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_24EF13DC0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = sub_24F922118();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v63 = (&v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v59 = &v53 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v53 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - v14;
  v16 = sub_24F923E98();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v55 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v61 = &v53 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v56 = &v53 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v53 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v53 - v27;
  v60 = a1;
  sub_24EF14440(a1, v15);
  v29 = *(v17 + 48);
  if (v29(v15, 1, v16) == 1)
  {
    sub_24EF144B0(v15);
    v30 = v58;
  }

  else
  {
    v53 = v4;
    v54 = v3;
    v31 = *(v17 + 32);
    v31(v28, v15, v16);
    v30 = v58;
    sub_24EF14440(v58, v13);
    if (v29(v13, 1, v16) == 1)
    {
      (*(v17 + 8))(v28, v16);
      sub_24EF144B0(v13);
    }

    else
    {
      v31(v26, v13, v16);
      sub_24EF147AC();
      sub_24F92AF78();
      v32 = *(v17 + 8);
      v32(v26, v16);
      v32(v28, v16);
    }

    v4 = v53;
    v3 = v54;
  }

  v33 = *MEMORY[0x277D76918];
  v34 = v63;
  *v63 = *MEMORY[0x277D76918];
  (*(v4 + 104))(v34, *MEMORY[0x277D22620], v3);
  v35 = v59;
  sub_24EF14440(v60, v59);
  if (v29(v35, 1, v16) == 1)
  {
    v36 = v33;
    sub_24EF144B0(v35);
    v37 = v62;
  }

  else
  {
    v38 = v56;
    (*(v17 + 32))();
    v39 = v33;
    v37 = v62;
    if (sub_24F923E88())
    {
      v40 = v61;
      (*(v17 + 16))(v61, v38, v16);
      v41 = sub_24EF14518(v40);
      (*(v17 + 8))(v38, v16);
      goto LABEL_19;
    }

    (*(v17 + 8))(v38, v16);
  }

  v42 = v57;
  sub_24EF14440(v30, v57);
  if (v29(v42, 1, v16) == 1)
  {
    sub_24EF144B0(v42);
  }

  else
  {
    v43 = v55;
    (*(v17 + 32))(v55, v42, v16);
    sub_24EF147AC();
    if (sub_24F92AF78())
    {
      v44 = v61;
      (*(v17 + 16))(v61, v43, v16);
      v41 = sub_24EF14518(v44);
      (*(v17 + 8))(v43, v16);
      goto LABEL_19;
    }

    (*(v17 + 8))(v43, v16);
  }

  v45 = v61;
  (*(v17 + 16))(v61, v37, v16);
  v41 = sub_24EF14518(v45);
LABEL_19:
  v46 = objc_opt_self();
  v47 = v41;
  v48 = [v46 traitCollectionWithPreferredContentSizeCategory_];

  v64[3] = v3;
  v64[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
  (*(v4 + 16))(boxed_opaque_existential_1, v34, v3);
  sub_24F91FE48();
  v51 = v50;

  (*(v4 + 8))(v34, v3);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return v51;
}

uint64_t sub_24EF14440(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF144B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EF14518(uint64_t a1)
{
  v2 = sub_24F923E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CDF9F8])
  {
    v7 = MEMORY[0x277D76830];
LABEL_25:
    v8 = *v7;
    (*(v3 + 8))(a1, v2);
    return v8;
  }

  if (v6 == *MEMORY[0x277CDF9E0])
  {
    v7 = MEMORY[0x277D76858];
    goto LABEL_25;
  }

  if (v6 == *MEMORY[0x277CDF9E8])
  {
    v7 = MEMORY[0x277D76840];
    goto LABEL_25;
  }

  if (v6 == *MEMORY[0x277CDF9D8])
  {
    v7 = MEMORY[0x277D76838];
    goto LABEL_25;
  }

  if (v6 == *MEMORY[0x277CDF9F0])
  {
    v7 = MEMORY[0x277D76828];
    goto LABEL_25;
  }

  if (v6 == *MEMORY[0x277CDFA00])
  {
    v7 = MEMORY[0x277D76820];
    goto LABEL_25;
  }

  if (v6 == *MEMORY[0x277CDFA10])
  {
    v7 = MEMORY[0x277D76818];
    goto LABEL_25;
  }

  if (v6 == *MEMORY[0x277CDF988])
  {
    v7 = MEMORY[0x277D76808];
    goto LABEL_25;
  }

  if (v6 == *MEMORY[0x277CDF998])
  {
    v7 = MEMORY[0x277D76800];
    goto LABEL_25;
  }

  if (v6 == *MEMORY[0x277CDF9A8])
  {
    v7 = MEMORY[0x277D767F8];
    goto LABEL_25;
  }

  if (v6 == *MEMORY[0x277CDF9B8])
  {
    v7 = MEMORY[0x277D767F0];
    goto LABEL_25;
  }

  if (v6 == *MEMORY[0x277CDF9D0])
  {
    v7 = MEMORY[0x277D767E8];
    goto LABEL_25;
  }

  result = sub_24F92CDF8();
  __break(1u);
  return result;
}

unint64_t sub_24EF147AC()
{
  result = qword_27F233178;
  if (!qword_27F233178)
  {
    sub_24F923E98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233178);
  }

  return result;
}

uint64_t InstallPageInstallingViewLayout.init(metrics:iconView:progressView:titleText:subtitleText:descriptionText:ageRatingView:offerButton:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  memcpy((a9 + 280), __src, 0x150uLL);
  sub_24E612C80(a2, a9);
  v17 = *(a3 + 16);
  *(a9 + 40) = *a3;
  *(a9 + 56) = v17;
  *(a9 + 72) = *(a3 + 32);
  sub_24E612C80(a4, a9 + 80);
  sub_24E612C80(a5, a9 + 120);
  sub_24E612C80(a6, a9 + 160);
  sub_24E612C80(a7, a9 + 200);

  return sub_24E612C80(a8, a9 + 240);
}

uint64_t InstallPageInstallingViewLayout.Metrics.init(iconSize:ageRatingMargin:ageRatingBaselineOffset:titleSpace:titleHorizontalMargin:subtitleSpace:subtitleHorizontalMargin:descriptionSpace:descriptionHorizontalMargin:offerButtonMargin:offerButtonSize:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X5>, __int128 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 *a14, __int128 *a15)
{
  v22 = *a4;
  v23 = *a6;
  v24 = *a8;
  *a9 = a10;
  *(a9 + 8) = a11;
  sub_24E612C80(a1, a9 + 16);
  sub_24E612C80(a2, a9 + 56);
  sub_24E612C80(a3, a9 + 96);
  *(a9 + 136) = v22;
  sub_24E612C80(a5, a9 + 144);
  *(a9 + 184) = v23;
  sub_24E612C80(a7, a9 + 192);
  *(a9 + 232) = v24;
  sub_24E612C80(a14, a9 + 240);
  *(a9 + 280) = a12;
  *(a9 + 288) = a13;

  return sub_24E612C80(a15, a9 + 296);
}

uint64_t InstallPageInstallingViewLayout.Metrics.ageRatingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);

  return sub_24E612C80(a1, v1 + 16);
}

uint64_t InstallPageInstallingViewLayout.Metrics.ageRatingBaselineOffset.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 56);

  return sub_24E612C80(a1, v1 + 56);
}

uint64_t InstallPageInstallingViewLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 96);

  return sub_24E612C80(a1, v1 + 96);
}

uint64_t InstallPageInstallingViewLayout.Metrics.titleHorizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 136) = v2;
  return result;
}

uint64_t InstallPageInstallingViewLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 144);

  return sub_24E612C80(a1, v1 + 144);
}

uint64_t InstallPageInstallingViewLayout.Metrics.subtitleHorizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 184) = v2;
  return result;
}

uint64_t InstallPageInstallingViewLayout.Metrics.descriptionSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 192);

  return sub_24E612C80(a1, v1 + 192);
}

uint64_t InstallPageInstallingViewLayout.Metrics.descriptionHorizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 232) = v2;
  return result;
}

uint64_t InstallPageInstallingViewLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 240);

  return sub_24E612C80(a1, v1 + 240);
}

uint64_t InstallPageInstallingViewLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 296);

  return sub_24E612C80(a1, v1 + 296);
}

double InstallPageInstallingViewLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v2 + 25, v2[28]);
  sub_24F922298();
  __swift_project_boxed_opaque_existential_1(v3 + 37, v3[40]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v10 = *(v7 + 8);
  v10(v9, v6);
  __swift_project_boxed_opaque_existential_1(v3 + 25, v3[28]);
  sub_24F922238();
  v13 = v2[52];

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v9);
  v10(v9, v6);

  v13 = v2[58];

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v9);
  v10(v9, v6);

  v13 = v2[64];

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v9);
  v10(v9, v6);

  __swift_project_boxed_opaque_existential_1(v2 + 10, v2[13]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v2 + 47, v2[50]);
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1(v2 + 15, v2[18]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v2 + 53, v2[56]);
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1(v2 + 20, v2[23]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v2 + 59, v2[62]);
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1(v2 + 65, v2[68]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v10(v9, v6);
  __swift_project_boxed_opaque_existential_1(v2 + 72, v2[75]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v10(v9, v6);
  return a2;
}

uint64_t InstallPageInstallingViewLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_24F92CDB8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v5 + 296), *(v5 + 320));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v17 = v16;
  v18 = *(v13 + 8);
  v18(v15, v12);
  __swift_project_boxed_opaque_existential_1((v6 + 200), *(v6 + 224));
  sub_24F922298();
  v20 = v19;
  v79[1] = v21;
  __swift_project_boxed_opaque_existential_1((v6 + 200), *(v6 + 224));
  v22 = sub_24F922238();
  *&v79[2] = v20;
  if (v22)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v17 + v20;
  }

  v96.origin.x = a2;
  v96.origin.y = a3;
  v96.size.width = a4;
  v96.size.height = a5;
  Width = CGRectGetWidth(v96);
  v95[0] = *(v5 + 416);

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v15);
  v26 = v25;
  v18(v15, v12);

  v27 = v26 + v26;
  v28 = a2;
  v29 = Width - v27;
  v30 = a3;
  v83 = v23;
  v81 = v29 - v23;
  v97.origin.x = a2;
  v97.origin.y = a3;
  v97.size.width = a4;
  v97.size.height = a5;
  MinX = CGRectGetWidth(v97);
  v95[0] = *(v5 + 464);

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v15);
  v85 = v31;
  v18(v15, v12);

  v98.origin.x = a2;
  v98.origin.y = a3;
  v98.size.width = a4;
  v98.size.height = a5;
  v84 = CGRectGetWidth(v98);
  v95[0] = *(v5 + 512);

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v15);
  v82 = v32;
  v18(v15, v12);

  v99.origin.x = a2;
  v99.origin.y = a3;
  v99.size.width = a4;
  v99.size.height = a5;
  MinY = CGRectGetMinY(v99);
  v35 = *(v5 + 280);
  v34 = *(v5 + 288);
  __swift_project_boxed_opaque_existential_1(v5, *(v5 + 24));
  sub_24F922268();
  v100.origin.x = v28;
  v100.origin.y = v30;
  v100.size.width = a4;
  v100.size.height = a5;
  v36 = CGRectGetMidX(v100) + v35 * -0.5;
  __swift_project_boxed_opaque_existential_1(v95, v95[3]);
  sub_24F922228();
  sub_24E94275C(v5 + 40, &v91);
  if (v92)
  {
    sub_24E612C80(&v91, v93);
    __swift_project_boxed_opaque_existential_1(v93, v94);
    if ((sub_24F922238() & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v93, v94);
      sub_24F922228();
    }

    __swift_destroy_boxed_opaque_existential_1(v93);
  }

  else
  {
    sub_24E942EA8(&v91);
  }

  v101.origin.x = v36;
  v101.origin.y = MinY;
  v101.size.width = v35;
  v101.size.height = v34;
  v80 = MinY + CGRectGetMaxY(v101);
  __swift_project_boxed_opaque_existential_1((v5 + 376), *(v5 + 400));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v79[0] = v37;
  v18(v15, v12);
  __swift_project_boxed_opaque_existential_1((v5 + 80), *(v5 + 104));
  v102.origin.x = v28;
  v102.origin.y = v30;
  v102.size.width = a4;
  v102.size.height = a5;
  CGRectGetHeight(v102);
  sub_24F922288();
  v39 = v38;
  v41 = v40;
  __swift_project_boxed_opaque_existential_1((v5 + 376), *(v5 + 400));
  v81 = v41;
  sub_24F9223C8();
  v103.size.height = a5;
  v43 = v42;
  v103.size.width = a4;
  v88 = v28;
  v103.origin.x = v28;
  v90 = v30;
  v103.origin.y = v30;
  v87 = a4;
  height = v103.size.height;
  CGRectGetMidX(v103);
  v44 = v80;
  v83 = v43;
  __swift_project_boxed_opaque_existential_1((v5 + 80), *(v5 + 104));
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1((v5 + 200), *(v5 + 224));
  if ((sub_24F922238() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v5 + 336), *(v5 + 360));
    sub_24E8ED7D8();
    sub_24F9223A8();
    v18(v15, v12);
    v104.origin.x = v88;
    v104.origin.y = v90;
    v104.size.width = v87;
    v104.size.height = height;
    CGRectGetMidX(v104);
  }

  v84 = v84 - (v82 + v82);
  v85 = MinX - (v85 + v85);
  __swift_project_boxed_opaque_existential_1((v5 + 200), *(v5 + 224));
  sub_24F922228();
  MinX = v44 + v39 - v81 + v83;
  __swift_project_boxed_opaque_existential_1((v5 + 120), *(v5 + 144));
  v45 = v88;
  v105.origin.x = v88;
  v46 = v90;
  v105.origin.y = v90;
  v47 = v87;
  v105.size.width = v87;
  v48 = height;
  v105.size.height = height;
  CGRectGetHeight(v105);
  sub_24F922288();
  v50 = v49;
  v52 = v51;
  __swift_project_boxed_opaque_existential_1((v5 + 424), *(v5 + 448));
  sub_24F9223C8();
  v54 = v53;
  v106.origin.x = v45;
  v106.origin.y = v46;
  v106.size.width = v47;
  v106.size.height = v48;
  CGRectGetMidX(v106);
  v55 = MinX;
  __swift_project_boxed_opaque_existential_1((v5 + 120), *(v5 + 144));
  sub_24F922228();
  MinX = v55 + v50 - v52 + v54;
  __swift_project_boxed_opaque_existential_1((v5 + 160), *(v5 + 184));
  v56 = v88;
  v107.origin.x = v88;
  v57 = v90;
  v107.origin.y = v90;
  v58 = v87;
  v107.size.width = v87;
  v59 = height;
  v107.size.height = height;
  CGRectGetHeight(v107);
  sub_24F922288();
  v61 = v60;
  v63 = v62;
  __swift_project_boxed_opaque_existential_1((v5 + 472), *(v5 + 496));
  sub_24F9223C8();
  v65 = v64;
  v108.origin.x = v56;
  v108.origin.y = v57;
  v108.size.width = v58;
  v108.size.height = v59;
  CGRectGetMidX(v108);
  v66 = MinX;
  __swift_project_boxed_opaque_existential_1((v5 + 160), *(v5 + 184));
  sub_24F922228();
  MinX = v66 + v61 - v63 + v65;
  __swift_project_boxed_opaque_existential_1((v5 + 240), *(v5 + 264));
  v67 = height;
  sub_24F922298();
  v69 = v68;
  v71 = v70;
  v72 = v88;
  v109.origin.x = v88;
  v73 = v90;
  v109.origin.y = v90;
  v109.size.width = v58;
  v109.size.height = v67;
  v74 = CGRectGetMidX(v109) - v69 * 0.5;
  __swift_project_boxed_opaque_existential_1((v5 + 520), *(v5 + 544));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v76 = v75;
  v18(v15, v12);
  v77 = MinX + v76;
  __swift_project_boxed_opaque_existential_1((v5 + 240), *(v5 + 264));
  sub_24F922228();
  v110.origin.x = v72;
  v110.origin.y = v73;
  v110.size.width = v58;
  v110.size.height = v67;
  MinX = CGRectGetMinX(v110);
  v111.origin.x = v72;
  v111.origin.y = v73;
  v111.size.width = v58;
  v111.size.height = v67;
  v85 = CGRectGetMinY(v111);
  v112.origin.x = v72;
  v112.origin.y = v73;
  v112.size.width = v58;
  v112.size.height = v67;
  CGRectGetWidth(v112);
  v113.origin.x = v74;
  v113.origin.y = v77;
  v113.size.width = v69;
  v113.size.height = v71;
  CGRectGetMaxY(v113);
  __swift_project_boxed_opaque_existential_1((v5 + 576), *(v5 + 600));
  sub_24E8ED7D8();
  sub_24F9223A8();
  v18(v15, v12);
  sub_24F922128();
  return __swift_destroy_boxed_opaque_existential_1(v95);
}

uint64_t sub_24EF16040(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 616))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EF16088(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 584) = 0u;
    *(result + 600) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 616) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 616) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EF16178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 336))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EF161C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t linearInterpolate<A>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v18[1] = a1;
  v18[2] = a2;
  v18[3] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v18 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v18 - v14;
  swift_getAssociatedConformanceWitness();
  sub_24F92CF58();
  sub_24F92CDD8();
  sub_24F92CAB8();
  v16 = *(v6 + 8);
  v16(v12, a3);
  sub_24F92BB18();
  sub_24F92BB18();
  sub_24F92CAA8();
  v16(v9, a3);
  v16(v12, a3);
  return (v16)(v15, a3);
}

double sub_24EF16514@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  result = (1.0 - a4) * *a1 + *a2 * a4;
  *a3 = result;
  return result;
}

float sub_24EF1656C@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>, double a4@<D0>)
{
  v4 = a4;
  result = ((1.0 - v4) * *a1) + (*a2 * v4);
  *a3 = result;
  return result;
}

float64x2_t sub_24EF165B8@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>, double a4@<D0>)
{
  result = vaddq_f64(vmulq_n_f64(*a1, 1.0 - a4), vmulq_n_f64(*a2, a4));
  *a3 = result;
  return result;
}

void sub_24EF165E8(CGFloat *a1@<X0>, CGFloat *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = sub_24EF16634(*a1, a1[1], a1[2], a1[3], *a2, a2[1], a2[2], a2[3], a4);
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
}

double sub_24EF16634(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  MinX = CGRectGetMinX(*&a1);
  v29.origin.x = a5;
  v29.origin.y = a6;
  v29.size.width = a7;
  v29.size.height = a8;
  v24 = (1.0 - a9) * MinX + CGRectGetMinX(v29) * a9;
  v30.origin.x = a1;
  v30.origin.y = a2;
  v30.size.width = a3;
  v30.size.height = a4;
  CGRectGetMinY(v30);
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v31.size.height = a8;
  CGRectGetMinY(v31);
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  CGRectGetWidth(v32);
  v33.origin.x = a5;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  CGRectGetWidth(v33);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  CGRectGetHeight(v34);
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = a7;
  v35.size.height = a8;
  CGRectGetHeight(v35);
  return v24;
}

uint64_t DynamicShelfBasedPage.shelfOrdering.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v10 - v7;
  (*(a2 + 56))(a1, a2, v6);
  (*(a2 + 32))(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214E0);
  swift_getAssociatedConformanceWitness();
  sub_24F92AEC8();

  (*(v5 + 8))(v8, AssociatedTypeWitness);
  if (v11)
  {
    return v11;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_24EF169C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return DynamicShelfBasedPage.shelfOrdering.getter(a1, WitnessTable);
}

id sub_24EF16A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_24F92B098();

  if (!a4)
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = sub_24F92B098();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_24F92B098();

LABEL_6:
  v16.receiver = v7;
  v16.super_class = type metadata accessor for BackgroundAssetConsentViewController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithTitle_detailText_symbolName_contentLayout_, v11, v12, v13, a7);

  return v14;
}

id sub_24EF16CC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundAssetConsentViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24EF16D34()
{
  result = qword_27F233CA8;
  if (!qword_27F233CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233CA8);
  }

  return result;
}

uint64_t PrefetchMarkerItem.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_24EF16DF0()
{
  result = qword_27F233CB0;
  if (!qword_27F233CB0)
  {
    type metadata accessor for PrefetchMarkerItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233CB0);
  }

  return result;
}

uint64_t sub_24EF16E80(uint64_t a1)
{
  v2 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - v4;
  v6 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot();
  v7 = sub_24F92C4A8();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v12 - v9;
  (*(v3 + 16))(v5, a1, v2, v8);
  (*(v3 + 32))(v10, v5, v2);
  (*(*(v6 - 8) + 56))(v10, 0, 1, v6);
  return sub_24EF17214(v10);
}

uint64_t sub_24EF17050@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + class metadata base offset for ModelMappedDiffableDataSource + 16);
  swift_beginAccess();
  v4 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_24EF1712C@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + class metadata base offset for ModelMappedDiffableDataSource + 24);
  swift_beginAccess();
  type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot();
  v4 = sub_24F92C4A8();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_24EF17214(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + class metadata base offset for ModelMappedDiffableDataSource + 24);
  swift_beginAccess();
  type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot();
  v4 = sub_24F92C4A8();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

uint64_t sub_24EF17360(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v24 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = &v23[-v6];
  v7 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23[-v9];
  sub_24EF1B358(a1);
  if (qword_27F2105A8 != -1)
  {
    swift_once();
  }

  v26 = sub_24F92AAE8();
  v25 = __swift_project_value_buffer(v26, qword_27F39C458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  v34 = MEMORY[0x277D837D0];
  v32 = 0xD00000000000002DLL;
  v33 = 0x800000024FA63F60;
  sub_24F928438();
  sub_24E601704(&v32, &qword_27F2129B0);
  sub_24EF17050(v10);
  v11 = &v10[*(v7 + 52)];
  v13 = *v11;
  v12 = v11[1];
  v14 = *(v8 + 8);

  v14(v10, v7);
  v34 = MEMORY[0x277D837D0];
  v32 = v13;
  v33 = v12;
  sub_24F928438();
  sub_24E601704(&v32, &qword_27F2129B0);
  sub_24F92A588();

  sub_24EF17050(v10);
  v15 = v27;
  v16 = v28;
  v17 = v29;
  (*(v28 + 16))(v27, v10, v29);
  v14(v10, v7);
  v18 = *(sub_24F922E18() + 16);

  if (v18 || (v19 = *(sub_24F922DE8() + 16), , v19))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F233CB8);
    v20 = sub_24F922E78();
    v20(v15, v24 & 1, v30, v31);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F233CB8);
    v22 = sub_24F922E78();
    v22(v15, v30, v31);
  }

  (*(v16 + 8))(v15, v17);
  return sub_24EF17BC0();
}

uint64_t sub_24EF177D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v5);
  v22 = v20 - v6;
  v7 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - v9;
  sub_24EF1B358(a1);
  if (qword_27F2105A8 != -1)
  {
    swift_once();
  }

  v21 = sub_24F92AAE8();
  v20[1] = __swift_project_value_buffer(v21, qword_27F39C458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  v29 = MEMORY[0x277D837D0];
  v27 = 0xD00000000000002DLL;
  v28 = 0x800000024FA63F60;
  sub_24F928438();
  sub_24E601704(&v27, &qword_27F2129B0);
  sub_24EF17050(v10);
  v11 = &v10[*(v7 + 52)];
  v13 = *v11;
  v12 = v11[1];
  v14 = *(v8 + 8);

  v14(v10, v7);
  v29 = MEMORY[0x277D837D0];
  v27 = v13;
  v28 = v12;
  sub_24F928438();
  sub_24E601704(&v27, &qword_27F2129B0);
  sub_24F92A588();

  sub_24EF17050(v10);
  v16 = v22;
  v15 = v23;
  v17 = v24;
  (*(v23 + 16))(v22, v10, v24);
  v14(v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F233CB8);
  v18 = sub_24F922E78();
  v18(v16, v25, v26);
  (*(v15 + 8))(v16, v17);
  return sub_24EF17BC0();
}

uint64_t sub_24EF17BC0()
{
  v0 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot();
  v1 = sub_24F92C4A8();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v6 - v3;
  (*(*(v0 - 8) + 56))(&v6 - v3, 1, 1, v0, v2);
  return sub_24EF17214(v4);
}

uint64_t sub_24EF17CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot();
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v34 = &v29 - v5;
  v40 = v6;
  v7 = sub_24F92C4A8();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = &v29 - v8;
  v9 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = sub_24F928A68();
  v14 = sub_24F92C4A8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - v16;
  v35 = v2;
  sub_24EF17050(v12);
  v41 = a1;
  ModelMappedDiffableDataSourceContentSnapshot.sectionModel(at:)(a1, v9, v17);
  v18 = *(v10 + 8);
  v18(v12, v9);
  v19 = *(v13 - 8);
  if ((*(v19 + 48))(v17, 1, v13) == 1)
  {
    v33 = v18;
    v30 = v13;
    (*(v15 + 8))(v17, v14);
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v32 = sub_24F92AAE8();
    v31 = __swift_project_value_buffer(v32, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    v45 = MEMORY[0x277D837D0];
    v43 = 0xD00000000000002ELL;
    v44 = 0x800000024FA60750;
    sub_24F928438();
    sub_24E601704(&v43, &qword_27F2129B0);
    v45 = MEMORY[0x277D83B88];
    v43 = v41;
    sub_24F928438();
    sub_24E601704(&v43, &qword_27F2129B0);
    v45 = MEMORY[0x277D837D0];
    v43 = 0xD000000000000033;
    v44 = 0x800000024FA60780;
    sub_24F928438();
    sub_24E601704(&v43, &qword_27F2129B0);
    sub_24EF17050(v12);
    v20 = &v12[*(v9 + 52)];
    v22 = *v20;
    v21 = v20[1];

    v33(v12, v9);
    v45 = MEMORY[0x277D837D0];
    v43 = v22;
    v44 = v21;
    sub_24F928438();
    sub_24E601704(&v43, &qword_27F2129B0);
    sub_24F92A5B8();

    v23 = v36;
    sub_24EF1712C(v36);
    v25 = v39;
    v24 = v40;
    if ((*(v39 + 48))(v23, 1, v40))
    {
      (*(v37 + 8))(v23, v38);
      return (*(v19 + 56))(v42, 1, 1, v30);
    }

    else
    {
      v28 = v34;
      (*(v25 + 16))(v34, v23, v24);
      (*(v37 + 8))(v23, v38);
      sub_24EF18348(v41, v42);
      return (*(v25 + 8))(v28, v24);
    }
  }

  else
  {
    v27 = v42;
    (*(v19 + 32))(v42, v17, v13);
    return (*(v19 + 56))(v27, 0, 1, v13);
  }
}

uint64_t sub_24EF18348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F928A68();
  v6 = sub_24F92C4A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - v8;
  v10 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  ModelMappedDiffableDataSourceContentSnapshot.sectionModel(at:)(a1, v10, v9);
  v11 = *(v5 - 8);
  if ((*(v11 + 48))(v9, 1, v5) == 1)
  {
    v20 = a1;
    v21 = a2;
    (*(v7 + 8))(v9, v6);
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v19 = sub_24F92AAE8();
    v18[2] = __swift_project_value_buffer(v19, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    v18[1] = 4 * *(*(sub_24F928468() - 8) + 72);
    *(swift_allocObject() + 16) = xmmword_24F942000;
    v12 = MEMORY[0x277D837D0];
    v24 = MEMORY[0x277D837D0];
    v22 = 0xD000000000000019;
    v23 = 0x800000024FA60520;
    sub_24F928438();
    sub_24E601704(&v22, &qword_27F2129B0);
    v13 = (v2 + *(v10 + 52));
    v15 = *v13;
    v14 = v13[1];
    v24 = v12;
    v22 = v15;
    v23 = v14;

    sub_24F928438();
    sub_24E601704(&v22, &qword_27F2129B0);
    v24 = v12;
    v22 = 0xD00000000000002FLL;
    v23 = 0x800000024FA607C0;
    sub_24F928438();
    sub_24E601704(&v22, &qword_27F2129B0);
    v24 = MEMORY[0x277D83B88];
    v22 = v20;
    sub_24F928438();
    sub_24E601704(&v22, &qword_27F2129B0);
    v24 = v12;
    v22 = 0xD00000000000001CLL;
    v23 = 0x800000024FA607F0;
    sub_24F928438();
    sub_24E601704(&v22, &qword_27F2129B0);
    sub_24F92A5B8();

    v16 = 1;
    a2 = v21;
  }

  else
  {
    (*(v11 + 32))(a2, v9, v5);
    v16 = 0;
  }

  return (*(v11 + 56))(a2, v16, 1, v5);
}

uint64_t sub_24EF18748(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v33 = &v25 - v6;
  v7 = sub_24F92C4A8();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v34 = &v25 - v8;
  v9 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  sub_24EF17050(&v25 - v11);
  v13 = ModelMappedDiffableDataSourceContentSnapshot.sectionIndex(for:)(a1, v9);
  v15 = v14;
  v16 = *(v10 + 8);
  v16(v12, v9);
  if (v15)
  {
    v27 = v2;
    v28 = v16;
    v31 = v5;
    v32 = v4;
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v30 = sub_24F92AAE8();
    v29 = __swift_project_value_buffer(v30, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    v39 = MEMORY[0x277D837D0];
    v37 = 0xD00000000000003ALL;
    v38 = 0x800000024FA63F90;
    sub_24F928438();
    sub_24E601704(&v37, &qword_27F2129B0);
    v39 = &type metadata for DiffablePageContentIdentifier;
    v37 = swift_allocObject();
    sub_24E772724(a1, v37 + 16);
    sub_24F928438();
    sub_24E601704(&v37, &qword_27F2129B0);
    v26 = a1;
    v39 = MEMORY[0x277D837D0];
    v37 = 0xD00000000000002DLL;
    v38 = 0x800000024FA63FD0;
    sub_24F928438();
    sub_24E601704(&v37, &qword_27F2129B0);
    sub_24EF17050(v12);
    v17 = &v12[*(v9 + 52)];
    v19 = *v17;
    v18 = v17[1];

    v28(v12, v9);
    v39 = MEMORY[0x277D837D0];
    v37 = v19;
    v38 = v18;
    sub_24F928438();
    sub_24E601704(&v37, &qword_27F2129B0);
    sub_24F92A5B8();

    v20 = v34;
    sub_24EF1712C(v34);
    v22 = v31;
    v21 = v32;
    if ((*(v31 + 48))(v20, 1, v32))
    {
      (*(v35 + 8))(v20, v36);
      return 0;
    }

    else
    {
      v23 = v33;
      (*(v22 + 16))(v33, v20, v21);
      (*(v35 + 8))(v20, v36);
      v13 = sub_24EF18CCC(v26);
      (*(v22 + 8))(v23, v21);
    }
  }

  return v13;
}

uint64_t sub_24EF18CCC(uint64_t a1)
{
  v3 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  result = ModelMappedDiffableDataSourceContentSnapshot.sectionIndex(for:)(a1, v3);
  if (v5)
  {
    v11 = result;
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v10 = sub_24F92AAE8();
    __swift_project_value_buffer(v10, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F942000;
    v6 = MEMORY[0x277D837D0];
    v14 = MEMORY[0x277D837D0];
    v12 = 0xD000000000000019;
    v13 = 0x800000024FA60520;
    sub_24F928438();
    sub_24E601704(&v12, &qword_27F2129B0);
    v7 = (v1 + *(v3 + 52));
    v9 = *v7;
    v8 = v7[1];
    v14 = v6;
    v12 = v9;
    v13 = v8;

    sub_24F928438();
    sub_24E601704(&v12, &qword_27F2129B0);
    v14 = v6;
    v12 = 0xD00000000000003BLL;
    v13 = 0x800000024FA64070;
    sub_24F928438();
    sub_24E601704(&v12, &qword_27F2129B0);
    v14 = &type metadata for DiffablePageContentIdentifier;
    v12 = swift_allocObject();
    sub_24E772724(a1, v12 + 16);
    sub_24F928438();
    sub_24E601704(&v12, &qword_27F2129B0);
    v14 = v6;
    v12 = 0xD00000000000001CLL;
    v13 = 0x800000024FA607F0;
    sub_24F928438();
    sub_24E601704(&v12, &qword_27F2129B0);
    sub_24F92A5B8();

    return v11;
  }

  return result;
}

uint64_t sub_24EF18FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot();
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v7 = sub_24F92C4A8();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v43 = &v32 - v8;
  v9 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228650);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v32 - v14;
  v42 = a1;
  sub_24F922E58();
  if (*(&v48 + 1))
  {
    v41 = v6;
    v50[0] = v47;
    v50[1] = v48;
    v51 = v49;
    sub_24EF17050(v12);
    ModelMappedDiffableDataSourceContentSnapshot.itemModel(for:)(v15);
    v16 = *(v10 + 8);
    v16(v12, v9);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v15, 1, v17) == 1)
    {
      v33 = v18;
      v38 = v16;
      v34 = v17;
      v39 = v4;
      v40 = a2;
      sub_24E601704(v15, &qword_27F228650);
      if (qword_27F2105A8 != -1)
      {
        swift_once();
      }

      v37 = sub_24F92AAE8();
      v36 = __swift_project_value_buffer(v37, qword_27F39C458);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_24F93A070;
      *(&v48 + 1) = MEMORY[0x277D837D0];
      v19 = MEMORY[0x277D837D0];
      *&v47 = 0xD000000000000034;
      *(&v47 + 1) = 0x800000024FA604B0;
      sub_24F928438();
      sub_24E601704(&v47, &qword_27F2129B0);
      *(&v48 + 1) = &type metadata for DiffablePageContentIdentifier;
      *&v47 = swift_allocObject();
      sub_24E772724(v50, v47 + 16);
      sub_24F928438();
      sub_24E601704(&v47, &qword_27F2129B0);
      *(&v48 + 1) = v19;
      strcpy(&v47, "at indexPath:");
      HIWORD(v47) = -4864;
      sub_24F928438();
      sub_24E601704(&v47, &qword_27F2129B0);
      v20 = sub_24F91FA78();
      *(&v48 + 1) = v20;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v47);
      (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v42, v20);
      sub_24F928438();
      sub_24E601704(&v47, &qword_27F2129B0);
      v22 = MEMORY[0x277D837D0];
      *(&v48 + 1) = MEMORY[0x277D837D0];
      *&v47 = 0xD00000000000002BLL;
      *(&v47 + 1) = 0x800000024FA604F0;
      sub_24F928438();
      sub_24E601704(&v47, &qword_27F2129B0);
      sub_24EF17050(v12);
      v23 = &v12[*(v9 + 52)];
      v25 = *v23;
      v24 = *(v23 + 1);

      v38(v12, v9);
      *(&v48 + 1) = v22;
      *&v47 = v25;
      *(&v47 + 1) = v24;
      sub_24F928438();
      sub_24E601704(&v47, &qword_27F2129B0);
      sub_24F92A5B8();

      v26 = v43;
      sub_24EF1712C(v43);
      v27 = v46;
      v28 = v39;
      if ((*(v46 + 48))(v26, 1, v39))
      {
        sub_24E772780(v50);
        (*(v44 + 8))(v26, v45);
        return (*(v33 + 56))(v40, 1, 1, v34);
      }

      else
      {
        v31 = v41;
        (*(v27 + 16))(v41, v26, v28);
        (*(v44 + 8))(v26, v45);
        sub_24EF197C0(v50, v40);
        (*(v27 + 8))(v31, v28);
        return sub_24E772780(v50);
      }
    }

    else
    {
      sub_24E772780(v50);
      (*(v18 + 32))(a2, v15, v17);
      return (*(v18 + 56))(a2, 0, 1, v17);
    }
  }

  else
  {
    sub_24E601704(&v47, &qword_27F228658);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
    return (*(*(v30 - 8) + 56))(a2, 1, 1, v30);
  }
}

uint64_t sub_24EF197C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228650);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  v8 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  ModelMappedDiffableDataSourceContentSnapshot.itemModel(for:)(v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    v19 = a1;
    v20 = a2;
    sub_24E601704(v7, &qword_27F228650);
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v18 = sub_24F92AAE8();
    v17[2] = __swift_project_value_buffer(v18, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    v17[1] = 4 * *(*(sub_24F928468() - 8) + 72);
    *(swift_allocObject() + 16) = xmmword_24F942000;
    v11 = MEMORY[0x277D837D0];
    v23 = MEMORY[0x277D837D0];
    v21 = 0xD000000000000019;
    v22 = 0x800000024FA60520;
    sub_24F928438();
    sub_24E601704(&v21, &qword_27F2129B0);
    v12 = (v2 + *(v8 + 52));
    v14 = *v12;
    v13 = v12[1];
    v23 = v11;
    v21 = v14;
    v22 = v13;

    sub_24F928438();
    sub_24E601704(&v21, &qword_27F2129B0);
    v23 = v11;
    v21 = 0xD000000000000031;
    v22 = 0x800000024FA60540;
    sub_24F928438();
    sub_24E601704(&v21, &qword_27F2129B0);
    v23 = &type metadata for DiffablePageContentIdentifier;
    v21 = swift_allocObject();
    sub_24E772724(v19, v21 + 16);
    sub_24F928438();
    sub_24E601704(&v21, &qword_27F2129B0);
    v23 = v11;
    v21 = 0xD000000000000019;
    v22 = 0x800000024FA60580;
    sub_24F928438();
    sub_24E601704(&v21, &qword_27F2129B0);
    sub_24F92A5B8();

    v15 = 1;
    a2 = v20;
  }

  else
  {
    (*(v10 + 32))(a2, v7, v9);
    v15 = 0;
  }

  return (*(v10 + 56))(a2, v15, 1, v9);
}

uint64_t sub_24EF19BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v32 = &v26 - v6;
  v7 = sub_24F92C4A8();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = &v26 - v8;
  v9 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228650);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  v34 = v2;
  sub_24EF17050(v12);
  ModelMappedDiffableDataSourceContentSnapshot.itemModel(for:)(v15);
  v35 = *(v10 + 8);
  v35(v12, v9);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v27 = v16;
    v30 = v5;
    v31 = a2;
    v33 = a1;
    sub_24E601704(v15, &qword_27F228650);
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v29 = sub_24F92AAE8();
    v28 = __swift_project_value_buffer(v29, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    v42 = MEMORY[0x277D837D0];
    v40 = 0xD00000000000001BLL;
    v41 = 0x800000024FA64000;
    sub_24F928438();
    sub_24E601704(&v40, &qword_27F2129B0);
    v42 = &type metadata for DiffablePageContentIdentifier;
    v40 = swift_allocObject();
    sub_24E772724(v33, v40 + 16);
    sub_24F928438();
    sub_24E601704(&v40, &qword_27F2129B0);
    v42 = MEMORY[0x277D837D0];
    v40 = 0xD000000000000027;
    v41 = 0x800000024FA64020;
    sub_24F928438();
    sub_24E601704(&v40, &qword_27F2129B0);
    sub_24EF17050(v12);
    v18 = &v12[*(v9 + 52)];
    v20 = *v18;
    v19 = v18[1];

    v35(v12, v9);
    v42 = MEMORY[0x277D837D0];
    v40 = v20;
    v41 = v19;
    sub_24F928438();
    sub_24E601704(&v40, &qword_27F2129B0);
    sub_24F92A5B8();

    v21 = v36;
    sub_24EF1712C(v36);
    v22 = v39;
    v23 = v30;
    if ((*(v39 + 48))(v21, 1, v30))
    {
      (*(v37 + 8))(v21, v38);
      return (*(v17 + 56))(v31, 1, 1, v27);
    }

    else
    {
      v25 = v32;
      (*(v22 + 16))(v32, v21, v23);
      (*(v37 + 8))(v21, v38);
      sub_24EF197C0(v33, v31);
      return (*(v22 + 8))(v25, v23);
    }
  }

  else
  {
    (*(v17 + 32))(a2, v15, v16);
    return (*(v17 + 56))(a2, 0, 1, v16);
  }
}

char *sub_24EF1A230(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + class metadata base offset for ModelMappedDiffableDataSource + 8);
  v4 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot();
  v44 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = v32 - v5;
  v45 = v6;
  v7 = sub_24F92C4A8();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  v41 = v32 - v8;
  v9 = sub_24F928A68();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v32 - v11;
  v13 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v32 - v15;
  v46 = v1;
  sub_24EF17050(v32 - v15);
  v17 = *(v10 + 16);
  v39 = v9;
  v37 = v17;
  v17(v12, a1, v9);
  v38 = v12;
  v40 = v3;
  DiffablePageContentIdentifier.init<A>(_:)(v12);
  v18 = ModelMappedDiffableDataSourceContentSnapshot.doesSectionExist(for:)(&v47, v13);
  sub_24E772780(&v47);
  v19 = *(v14 + 8);
  v19(v16, v13);
  if (v18)
  {
    sub_24EF17050(v16);
    v20 = ModelMappedDiffableDataSourceContentSnapshot.itemModels(in:)(a1, v13);
    v21 = v19;
    v22 = v20;
    v21(v16, v13);
  }

  else
  {
    v34 = v19;
    v36 = a1;
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v33 = sub_24F92AAE8();
    v32[1] = __swift_project_value_buffer(v33, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    v49 = MEMORY[0x277D837D0];
    v47 = 0xD00000000000003BLL;
    v48 = 0x800000024FA605A0;
    sub_24F928438();
    sub_24E601704(&v47, &qword_27F2129B0);
    v23 = v38;
    v37(v38, v36, v39);
    v49 = &type metadata for DiffablePageContentIdentifier;
    v47 = swift_allocObject();
    DiffablePageContentIdentifier.init<A>(_:)(v23);
    sub_24F928438();
    sub_24E601704(&v47, &qword_27F2129B0);
    v49 = MEMORY[0x277D837D0];
    v47 = 0xD000000000000044;
    v48 = 0x800000024FA605E0;
    sub_24F928438();
    sub_24E601704(&v47, &qword_27F2129B0);
    sub_24EF17050(v16);
    v24 = &v16[*(v13 + 52)];
    v26 = *v24;
    v25 = v24[1];

    v34(v16, v13);
    v49 = MEMORY[0x277D837D0];
    v47 = v26;
    v48 = v25;
    sub_24F928438();
    sub_24E601704(&v47, &qword_27F2129B0);
    sub_24F92A5B8();

    v27 = v41;
    sub_24EF1712C(v41);
    v29 = v44;
    v28 = v45;
    if ((*(v44 + 48))(v27, 1, v45))
    {
      (*(v42 + 8))(v27, v43);
      return 0;
    }

    else
    {
      v30 = v35;
      (*(v29 + 16))(v35, v27, v28);
      (*(v42 + 8))(v27, v43);
      v22 = sub_24EF1A8A8(v36, v28);
      (*(v29 + 8))(v30, v28);
    }
  }

  return v22;
}

char *sub_24EF1A8A8(uint64_t a1, uint64_t a2)
{
  v5 = sub_24F928A68();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  v10 = *(v6 + 16);
  v10(v19 - v8, a1, v5, v7);
  v11 = *(a2 + 24);
  DiffablePageContentIdentifier.init<A>(_:)(v9);
  v12 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v13 = ModelMappedDiffableDataSourceContentSnapshot.doesSectionExist(for:)(&v27, v12);
  sub_24E772780(&v27);
  if (v13)
  {
    return ModelMappedDiffableDataSourceContentSnapshot.itemModels(in:)(a1, v12);
  }

  v19[1] = v11;
  v20 = v5;
  v25 = v10;
  v26 = a1;
  if (qword_27F2105A8 != -1)
  {
    swift_once();
  }

  v24 = sub_24F92AAE8();
  v23 = __swift_project_value_buffer(v24, qword_27F39C458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  v22 = 4 * *(*(sub_24F928468() - 8) + 72);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_24F942000;
  v15 = MEMORY[0x277D837D0];
  v29 = MEMORY[0x277D837D0];
  v27 = 0xD000000000000019;
  v28 = 0x800000024FA60520;
  sub_24F928438();
  sub_24E601704(&v27, &qword_27F2129B0);
  v16 = (v2 + *(v12 + 52));
  v18 = *v16;
  v17 = v16[1];
  v29 = v15;
  v27 = v18;
  v28 = v17;

  sub_24F928438();
  sub_24E601704(&v27, &qword_27F2129B0);
  v29 = v15;
  v27 = 0xD00000000000003BLL;
  v28 = 0x800000024FA605A0;
  sub_24F928438();
  sub_24E601704(&v27, &qword_27F2129B0);
  v25(v9, v26, v20);
  v29 = &type metadata for DiffablePageContentIdentifier;
  v27 = swift_allocObject();
  DiffablePageContentIdentifier.init<A>(_:)(v9);
  sub_24F928438();
  sub_24E601704(&v27, &qword_27F2129B0);
  v29 = v15;
  v27 = 0xD00000000000002DLL;
  v28 = 0x800000024FA60630;
  sub_24F928438();
  sub_24E601704(&v27, &qword_27F2129B0);
  sub_24F92A5B8();

  return 0;
}

uint64_t sub_24EF1AC84()
{
  v0 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  sub_24EF17050(&v7 - v2);
  v4 = *&v3[*(v0 + 52)];
  v5 = *(v1 + 8);

  v5(v3, v0);
  return v4;
}

uint64_t sub_24EF1ADA8()
{
  v0 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  sub_24EF17050(&v6 - v2);
  v4 = ModelMappedDiffableDataSourceContentSnapshot.debugModelDescription.getter(v0);
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t ModelMappedDiffableDataSource.init(collectionView:cellProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x277D85000];
  ModelMappedDiffableDataSourceContentSnapshot.init()(*((*MEMORY[0x277D85000] & *v3) + class metadata base offset for ModelMappedDiffableDataSource), &v3[*((*MEMORY[0x277D85000] & *v3) + class metadata base offset for ModelMappedDiffableDataSource + 16)]);
  v8 = *((*v7 & *v3) + class metadata base offset for ModelMappedDiffableDataSource + 24);
  v9 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot();
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);

  return MEMORY[0x2821DD7B0](a1, a2, a3);
}

uint64_t sub_24EF1B04C()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + class metadata base offset for ModelMappedDiffableDataSource + 16);
  v3 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *((*v1 & *v0) + class metadata base offset for ModelMappedDiffableDataSource + 24);
  type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot();
  v5 = sub_24F92C4A8();
  v6 = *(*(v5 - 8) + 8);

  return v6(&v0[v4], v5);
}

id ModelMappedDiffableDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModelMappedDiffableDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24EF1B20C(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *a1) + class metadata base offset for ModelMappedDiffableDataSource + 16);
  v4 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  v5 = *((*v2 & *a1) + class metadata base offset for ModelMappedDiffableDataSource + 24);
  type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot();
  v6 = sub_24F92C4A8();
  v7 = *(*(v6 - 8) + 8);

  return v7(&a1[v5], v6);
}

uint64_t sub_24EF1B358(uint64_t a1)
{
  v3 = (*MEMORY[0x277D85000] & *v1) + class metadata base offset for ModelMappedDiffableDataSource;
  v4 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v8 = *(v3 + 16);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v8], v4);
  swift_beginAccess();
  (*(v5 + 24))(&v1[v8], a1, v4);
  swift_endAccess();
  sub_24EF16E80(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24EF1B4F4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24EF1B544()
{
  result = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot();
    result = sub_24F92C4A8();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + class metadata base offset for ModelMappedDiffableDataSource + 128))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + class metadata base offset for ModelMappedDiffableDataSource + 136))();
}

uint64_t sub_24EF1B94C()
{
  result = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EF1B9D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EF1BA54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24EF1BADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EF1BB5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for RefreshFeedsAction()
{
  result = qword_27F233DC0;
  if (!qword_27F233DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF1BC18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233DD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  refreshed = type metadata accessor for RefreshFeedsAction();
  MEMORY[0x28223BE20](refreshed - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EF1C078();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24EF1C0CC(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24EF1BE84(uint64_t a1)
{
  v2 = sub_24EF1C078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF1BEC0(uint64_t a1)
{
  v2 = sub_24EF1C078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF1BF14(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233DE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EF1C078();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24EF1C078()
{
  result = qword_27F233DD8;
  if (!qword_27F233DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233DD8);
  }

  return result;
}

uint64_t sub_24EF1C0CC(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for RefreshFeedsAction();
  (*(*(refreshed - 8) + 32))(a2, a1, refreshed);
  return a2;
}

unint64_t sub_24EF1C144()
{
  result = qword_27F233DE8;
  if (!qword_27F233DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233DE8);
  }

  return result;
}

unint64_t sub_24EF1C19C()
{
  result = qword_27F233DF0;
  if (!qword_27F233DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233DF0);
  }

  return result;
}

unint64_t sub_24EF1C1F4()
{
  result = qword_27F233DF8;
  if (!qword_27F233DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233DF8);
  }

  return result;
}

uint64_t sub_24EF1C248(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 40 * v2 - 8;
  for (i = 4; ; i += 5)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v8 = v1[2];
    if (v3 >= v8)
    {
      break;
    }

    result = sub_24E615E00(&v1[i], v10);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    sub_24E615E00(v1 + v6, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_24ECDE214(v1);
    }

    __swift_destroy_boxed_opaque_existential_1(&v1[i]);
    result = sub_24E612E28(v9, &v1[i]);
    if (v5 >= v1[2])
    {
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1(v1 + v6);
    result = sub_24E612E28(v10, v1 + v6);
LABEL_5:
    ++v3;
    --v5;
    v6 -= 40;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_24EF1C364(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_24F92C738();
    if (v19)
    {
      v20 = v19;
      v1 = sub_24EAEACA0(v19, 0);
      sub_24EA105D4(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_24F92C738();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x253052270]();
          v11 = MEMORY[0x253052270](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_24ECDE964(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_24ECDE964(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_24EF1C574(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = v1[2];
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_14;
    }

    v7 = v1[i];
    v8 = v1[v4];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_24ECDE2F4(v1);
    }

    v1[i] = v8;

    if (v4 - 4 >= v1[2])
    {
      goto LABEL_15;
    }

    v1[v4] = v7;

LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_24EF1C668(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = (32 * v2) | 0x18;
  v7 = 56;
  v22 = v2 >> 1;
  while (1)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v12 = *(v1 + 2);
    if (v3 >= v12)
    {
      break;
    }

    if (v5 >= v12)
    {
      goto LABEL_14;
    }

    v13 = *&v1[v7];
    v14 = *&v1[v6 - 24];
    v15 = *&v1[v6 - 16];
    v16 = v1[v6 - 8];
    v17 = *&v1[v6];
    v24 = *&v1[v7 - 16];
    v25 = *&v1[v7 - 24];
    v23 = v1[v7 - 8];
    sub_24E5FD138(v25, v24, v23);

    sub_24E5FD138(v14, v15, v16);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_24ECDE40C(v1);
    }

    v18 = &v1[v7];
    v19 = *&v1[v7 - 24];
    v20 = *&v1[v7 - 16];
    v21 = v1[v7 - 8];
    *(v18 - 3) = v14;
    *(v18 - 2) = v15;
    *(v18 - 8) = v16;
    *v18 = v17;
    sub_24E600B40(v19, v20, v21);

    if (v5 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[v6];
    v9 = *&v1[v6 - 24];
    v10 = *&v1[v6 - 16];
    v11 = v1[v6 - 8];
    *(v8 - 3) = v25;
    *(v8 - 2) = v24;
    *(v8 - 8) = v23;
    *v8 = v13;
    sub_24E600B40(v9, v10, v11);

    v4 = v22;
LABEL_5:
    ++v3;
    --v5;
    v6 -= 32;
    v7 += 32;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_24EF1C7FC(void *a1)
{
  v2 = type metadata accessor for GSKDebugMetricsEvent();
  v14 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v15 = &v14 - v6;
  v7 = a1[2];
  if (v7 < 2)
  {
    return;
  }

  v8 = 0;
  v9 = v7 >> 1;
  for (i = v7 - 1; ; --i)
  {
    if (v8 == i)
    {
      goto LABEL_5;
    }

    v11 = a1[2];
    if (v8 >= v11)
    {
      break;
    }

    v12 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v13 = *(v14 + 72);
    sub_24EF1DC78(a1 + v12 + v13 * v8, v15, type metadata accessor for GSKDebugMetricsEvent);
    if (i >= v11)
    {
      goto LABEL_14;
    }

    sub_24EF1DC78(a1 + v12 + v13 * i, v4, type metadata accessor for GSKDebugMetricsEvent);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_24ECDE420(a1);
    }

    sub_24EF1DCE0(v4, a1 + v12 + v13 * v8);
    if (i >= a1[2])
    {
      goto LABEL_15;
    }

    sub_24EF1DCE0(v15, a1 + v12 + v13 * i);
LABEL_5:
    if (v9 == ++v8)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t IconRowViewLayout.init(metrics:iconViews:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24EF1CA10(a1, a3);
  result = type metadata accessor for IconRowViewLayout(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_24EF1CA10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconRowViewLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t IconRowViewLayout.iconViews.getter()
{
  type metadata accessor for IconRowViewLayout(0);
}

uint64_t IconRowViewLayout.Alignment.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t IconRowViewLayout.Metrics.init(iconAspectRatio:interItemSpacing:alignment:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = *a2;
  v8 = sub_24F922348();
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  result = type metadata accessor for IconRowViewLayout.Metrics(0);
  *(a3 + *(result + 20)) = a4;
  *(a3 + *(result + 24)) = v7;
  return result;
}

uint64_t IconRowViewLayout.Metrics.iconAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F922348();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t IconRowViewLayout.Metrics.iconAspectRatio.setter(uint64_t a1)
{
  v3 = sub_24F922348();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t IconRowViewLayout.Metrics.interItemSpacing.setter(double a1)
{
  result = type metadata accessor for IconRowViewLayout.Metrics(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t IconRowViewLayout.Metrics.alignment.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IconRowViewLayout.Metrics(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t IconRowViewLayout.Metrics.alignment.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for IconRowViewLayout.Metrics(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

CGSize __swiftcall IconRowViewLayout.iconSize(fitting:)(CGSize fitting)
{
  height = fitting.height;
  v3 = type metadata accessor for IconRowViewLayout.Metrics(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(sub_24EF1CF74() + 16);

  if (v6)
  {
    sub_24EF1DC78(v1, v5, type metadata accessor for IconRowViewLayout.Metrics);
    sub_24F9222F8();
    v8 = v7;
    v9 = sub_24F922348();
    (*(*(v9 - 8) + 8))(v5, v9);
  }

  else
  {
    v8 = 0.0;
    height = 0.0;
  }

  v10 = v8;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

uint64_t sub_24EF1CF74()
{
  result = type metadata accessor for IconRowViewLayout(0);
  v2 = *(v0 + *(result + 20));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    v6 = MEMORY[0x277D84F90];
    while (v4 < *(v2 + 16))
    {
      sub_24E615E00(v5, &v21);
      __swift_project_boxed_opaque_existential_1(&v21, v22);
      if ((sub_24F922238() & 1) != 0 || (__swift_project_boxed_opaque_existential_1(&v21, v22), (sub_24F9221E8() & 1) == 0))
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v21);
      }

      else
      {
        sub_24E612E28(&v21, v18);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F4581AC(0, *(v6 + 16) + 1, 1);
          v6 = v23;
        }

        v9 = *(v6 + 16);
        v8 = *(v6 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_24F4581AC((v8 > 1), v9 + 1, 1);
        }

        v10 = v19;
        v11 = v20;
        v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
        v13 = MEMORY[0x28223BE20](v12);
        v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        (*(v16 + 16))(v15, v13);
        sub_24EF1D56C(v9, v15, &v23, v10, v11);
        result = __swift_destroy_boxed_opaque_existential_1(v18);
        v6 = v23;
      }

      ++v4;
      v5 += 40;
      if (v3 == v4)
      {
        return v6;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t IconRowViewLayout.placeChildren(relativeTo:in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = type metadata accessor for IconRowViewLayout.Metrics(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(sub_24EF1CF74() + 16);

  if (v15)
  {
    v16 = *(sub_24EF1CF74() + 16);

    if (v16)
    {
      sub_24EF1DC78(v6, v14, type metadata accessor for IconRowViewLayout.Metrics);
      sub_24F9222F8();
      v18 = v17;
      v19 = sub_24F922348();
      (*(*(v19 - 8) + 8))(v14, v19);
    }

    else
    {
      v18 = 0.0;
    }

    if (*(v6 + *(v12 + 24)))
    {
      _s12GameStoreKit17IconRowViewLayoutV12measurements7fitting2inSo14JUMeasurementsVSo6CGSizeV_So18UITraitEnvironment_ptF_0();
      v22 = v21;
      v34.origin.x = a2;
      v34.origin.y = a3;
      v34.size.width = a4;
      v34.size.height = a5;
      MinX = CGRectGetMinX(v34);
      v35.origin.x = a2;
      v35.origin.y = a3;
      v35.size.width = a4;
      v35.size.height = a5;
      v24 = MinX + (v22 - CGRectGetWidth(v35)) * -0.5;
    }

    else
    {
      v36.origin.x = a2;
      v36.origin.y = a3;
      v36.size.width = a4;
      v36.size.height = a5;
      v24 = CGRectGetMinX(v36);
    }

    v25 = [a1 traitCollection];
    v26 = sub_24F92BF88();

    v27 = *(v6 + *(type metadata accessor for IconRowViewLayout(0) + 20));

    if (v26)
    {
      v27 = sub_24EF1C248(v27);
    }

    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = v27 + 32;
      do
      {
        sub_24E615E00(v29, v31);
        __swift_project_boxed_opaque_existential_1(v31, v32);
        if ((sub_24F922238() & 1) != 0 || (__swift_project_boxed_opaque_existential_1(v31, v32), (sub_24F9221E8() & 1) == 0))
        {
          __swift_project_boxed_opaque_existential_1(v31, v32);
          sub_24F922228();
        }

        else
        {
          v37.origin.x = a2;
          v37.origin.y = a3;
          v37.size.width = a4;
          v37.size.height = a5;
          CGRectGetMinY(v37);
          __swift_project_boxed_opaque_existential_1(v31, v32);
          sub_24F922228();
          v24 = v24 + v18 + *(v6 + *(v12 + 20));
        }

        __swift_destroy_boxed_opaque_existential_1(v31);
        v29 += 40;
        --v28;
      }

      while (v28);
    }

    v38.origin.x = a2;
    v38.origin.y = a3;
    v38.size.width = a4;
    v38.size.height = a5;
    CGRectGetMinX(v38);
    v39.origin.x = a2;
    v39.origin.y = a3;
    v39.size.width = a4;
    v39.size.height = a5;
    CGRectGetMinY(v39);
    return sub_24F922128();
  }

  else
  {

    return sub_24F922168();
  }
}