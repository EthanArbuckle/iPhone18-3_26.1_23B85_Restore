uint64_t sub_243A3558C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_243AC2A58();
  *(v4 + 24) = sub_243AC2A48();
  v6 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A35624, v6, v5);
}

uint64_t sub_243A35624()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 1;

  sub_243AC16B8();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 3;

  sub_243AC16B8();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_243A35718(uint64_t a1, char a2, char a3)
{
  sub_243A38130(a2, a3);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243AC16B8();
}

uint64_t sub_243A35794()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_243AC2A98();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_243AC2A58();

  v7 = sub_243AC2A48();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v1;
  sub_243A3306C(0, 0, v5, &unk_243AC5960, v8);

  v10 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allRecommendations);

  os_unfair_lock_lock((v10 + 24));
  v11 = *(v10 + 16);

  v12 = MEMORY[0x277D84F90];
  *(v10 + 16) = sub_243A2E2A0(MEMORY[0x277D84F90]);
  os_unfair_lock_unlock((v10 + 24));

  v13 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations);

  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);

  *(v13 + 16) = sub_243A2E2A0(v12);
  os_unfair_lock_unlock((v13 + 24));
}

uint64_t sub_243A35940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_243AC2A58();
  *(v4 + 32) = sub_243AC2A48();
  v6 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A359D8, v6, v5);
}

uint64_t sub_243A359D8()
{
  v2 = v0[3];
  v1 = v0[4];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = MEMORY[0x277D84F90];

  sub_243AC16B8();
  v3 = v0[1];

  return v3();
}

uint64_t sub_243A35A8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  if (v1 < 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  return sub_243AC2EB8();
}

void sub_243A35BA4(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - v8;
  if (a1 && !a2)
  {
    v44 = a1;
    v19 = [v44 recommendations];
    sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
    v20 = sub_243AC2998();

    if (v20 >> 62)
    {
      v21 = sub_243AC2DF8();
      if (v21)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
LABEL_10:
        v42 = v9;
        v43 = a3;
        v45 = MEMORY[0x277D84F90];
        sub_243A64F14(0, v21 & ~(v21 >> 63), 0);
        if (v21 < 0)
        {
          __break(1u);
          return;
        }

        v22 = 0;
        v23 = v45;
        do
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x245D470F0](v22, v20);
          }

          else
          {
            v24 = *(v20 + 8 * v22 + 32);
          }

          v25 = v24;
          v26 = [v25 identifier];
          v27 = sub_243AC2858();
          v29 = v28;

          v45 = v23;
          v31 = *(v23 + 16);
          v30 = *(v23 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_243A64F14((v30 > 1), v31 + 1, 1);
            v23 = v45;
          }

          ++v22;
          *(v23 + 16) = v31 + 1;
          v32 = v23 + 16 * v31;
          *(v32 + 32) = v27;
          *(v32 + 40) = v29;
        }

        while (v21 != v22);

        v9 = v42;
        a3 = v43;
LABEL_26:
        v34 = sub_243AC2A98();
        (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
        sub_243AC2A58();

        v35 = sub_243AC2A48();
        v36 = swift_allocObject();
        v37 = MEMORY[0x277D85700];
        *(v36 + 16) = v35;
        *(v36 + 24) = v37;
        *(v36 + 32) = v23;
        *(v36 + 40) = 5;
        *(v36 + 56) = 0;
        *(v36 + 64) = 0;
        *(v36 + 48) = a3;
        *(v36 + 72) = 1793;
        sub_243A3306C(0, 0, v9, &unk_243AC5910, v36);

        v39 = *(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allRecommendations);
        MEMORY[0x28223BE20](v38);
        v40 = v44;
        *(&v41 - 2) = v44;
        *(&v41 - 1) = a3;

        os_unfair_lock_lock((v39 + 24));
        sub_243A49230((v39 + 16));
        os_unfair_lock_unlock((v39 + 24));

        dispatch_group_leave(*(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup));

        return;
      }
    }

    v23 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v10 = sub_243AC1468();
  __swift_project_value_buffer(v10, qword_27EDA14A8);
  v11 = a2;
  v12 = sub_243AC1448();
  v13 = sub_243AC2B58();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    if (a2)
    {
      v16 = a2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      v18 = v17;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    *(v14 + 4) = v17;
    *v15 = v18;
    _os_log_impl(&dword_243A1B000, v12, v13, "Could not fetch recommendations from server %@", v14, 0xCu);
    sub_243A2251C(v15, &qword_27ED98BF8, &unk_243AC6150);
    MEMORY[0x245D47D20](v15, -1, -1);
    MEMORY[0x245D47D20](v14, -1, -1);
  }

  sub_243A41398(a2);
  v33 = *(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup);

  dispatch_group_leave(v33);
}

id sub_243A36078(unint64_t *a1, char *a2, unint64_t a3)
{
  v78 = a3;
  v75 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v71 - v7;
  v8 = [a2 recommendations];
  sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
  v9 = sub_243AC2998();

  if (v9 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_243AC2DF8())
  {
    v11 = 0;
    v76 = v9 & 0xC000000000000001;
    v72 = v9 & 0xFFFFFFFFFFFFFF8;
    v73 = i;
    v74 = v9;
    while (1)
    {
      if (v76)
      {
        v14 = MEMORY[0x245D470F0](v11, v9);
      }

      else
      {
        if (v11 >= *(v72 + 16))
        {
          goto LABEL_25;
        }

        v14 = *(v9 + 8 * v11 + 32);
      }

      v15 = v14;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v77 = v11 + 1;
      v16 = [v14 identifier];
      v17 = sub_243AC2858();
      v19 = v18;

      v20 = v15;
      v21 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = a1;
      v79 = *a1;
      v9 = v79;
      v25 = sub_243A2DDC0(v17, v19);
      v26 = *(v9 + 16);
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_23;
      }

      a1 = v24;
      if (*(v9 + 24) >= v28)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v24)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_243A8B978();
          if (a1)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_243A8A254(v28, isUniquelyReferenced_nonNull_native);
        v29 = sub_243A2DDC0(v17, v19);
        if ((a1 & 1) != (v30 & 1))
        {
LABEL_55:
          result = sub_243AC2F38();
          __break(1u);
          return result;
        }

        v25 = v29;
        if (a1)
        {
LABEL_4:

          v9 = v79;
          v12 = *(v79 + 56);
          v13 = *(v12 + 8 * v25);
          *(v12 + 8 * v25) = v20;

          goto LABEL_5;
        }
      }

      v9 = v79;
      *(v79 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v31 = (*(v9 + 48) + 16 * v25);
      *v31 = v17;
      v31[1] = v19;
      *(*(v9 + 56) + 8 * v25) = v20;

      v32 = *(v9 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_24;
      }

      *(v9 + 16) = v34;
LABEL_5:
      a1 = v23;
      *v23 = v9;
      ++v11;
      v9 = v74;
      if (v77 == v73)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v35 = v75;
  v36 = [v75 sections];
  sub_243A2CFF0(0, &qword_27ED98FF0, 0x277CFB1D8);
  v37 = sub_243AC2998();

  if (v37 >> 62)
  {
    goto LABEL_51;
  }

  v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v38)
  {
LABEL_29:
    v39 = 0;
    v77 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allSections;
    v73 = v37 & 0xFFFFFFFFFFFFFF8;
    v74 = v37 & 0xC000000000000001;
    v72 = v37;
    while (1)
    {
      if (v74)
      {
        v44 = MEMORY[0x245D470F0](v39, v37);
      }

      else
      {
        if (v39 >= *(v73 + 16))
        {
          goto LABEL_48;
        }

        v44 = *(v37 + 8 * v39 + 32);
      }

      v45 = v44;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        v38 = sub_243AC2DF8();
        if (!v38)
        {
          goto LABEL_52;
        }

        goto LABEL_29;
      }

      v76 = v39 + 1;
      v46 = [v44 sectionID];
      v47 = sub_243AC2858();
      v49 = v48;

      v35 = v77;
      v37 = v78;
      swift_beginAccess();
      v50 = v45;
      v51 = *&v35[v37];
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v80 = *&v35[v37];
      v53 = v80;
      *&v35[v37] = 0x8000000000000000;
      v54 = sub_243A2DDC0(v47, v49);
      v56 = v53[2];
      v57 = (v55 & 1) == 0;
      v33 = __OFADD__(v56, v57);
      v58 = v56 + v57;
      if (v33)
      {
        goto LABEL_49;
      }

      v35 = v55;
      if (v53[3] < v58)
      {
        break;
      }

      if (v52)
      {
        goto LABEL_41;
      }

      v37 = v54;
      sub_243A8B98C();
      v54 = v37;
      if (v35)
      {
LABEL_30:
        v40 = v54;

        v41 = v80;
        v42 = v80[7];
        v43 = *(v42 + 8 * v40);
        *(v42 + 8 * v40) = v50;

        goto LABEL_31;
      }

LABEL_42:
      v41 = v80;
      v80[(v54 >> 6) + 8] |= 1 << v54;
      v60 = (v41[6] + 16 * v54);
      *v60 = v47;
      v60[1] = v49;
      *(v41[7] + 8 * v54) = v50;
      v61 = v41[2];
      v33 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (v33)
      {
        goto LABEL_50;
      }

      v41[2] = v62;
LABEL_31:
      *(v78 + v77) = v41;
      swift_endAccess();

      ++v39;
      v35 = v75;
      v37 = v72;
      if (v76 == v38)
      {
        goto LABEL_52;
      }
    }

    sub_243A8A268(v58, v52);
    v54 = sub_243A2DDC0(v47, v49);
    if ((v35 & 1) != (v59 & 1))
    {
      goto LABEL_55;
    }

LABEL_41:
    if (v35)
    {
      goto LABEL_30;
    }

    goto LABEL_42;
  }

LABEL_52:

  result = [v35 page];
  if (result)
  {

    v64 = sub_243AC2A98();
    v65 = v71;
    (*(*(v64 - 8) + 56))(v71, 1, 1, v64);
    sub_243AC2A58();
    v66 = v78;

    v67 = v35;
    v68 = sub_243AC2A48();
    v69 = swift_allocObject();
    v70 = MEMORY[0x277D85700];
    v69[2] = v68;
    v69[3] = v70;
    v69[4] = v66;
    v69[5] = v67;
    sub_243A3306C(0, 0, v65, &unk_243AC5920, v69);
  }

  return result;
}

uint64_t sub_243A366C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_243AC2A58();
  v5[5] = sub_243AC2A48();
  v7 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A36760, v7, v6);
}

uint64_t sub_243A36760()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v4 = [v2 page];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v4;

  sub_243AC16B8();
  v5 = v0[1];

  return v5();
}

void sub_243A36860(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a1 || a2)
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v9 = sub_243AC1468();
    __swift_project_value_buffer(v9, qword_27EDA14A8);
    v10 = a2;
    v11 = sub_243AC1448();
    v12 = sub_243AC2B58();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      if (a2)
      {
        v15 = a2;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v13 + 4) = v16;
      *v14 = v17;
      _os_log_impl(&dword_243A1B000, v11, v12, "Could not fetch recommendation rules from server %@", v13, 0xCu);
      sub_243A2251C(v14, &qword_27ED98BF8, &unk_243AC6150);
      MEMORY[0x245D47D20](v14, -1, -1);
      MEMORY[0x245D47D20](v13, -1, -1);
    }

    sub_243A41398(a2);
    v18 = *(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup);

    dispatch_group_leave(v18);
  }

  else
  {
    v5 = *(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationRules);
    v6 = MEMORY[0x28223BE20](a1);

    os_unfair_lock_lock((v5 + 24));
    sub_243A49130((v5 + 16));
    os_unfair_lock_unlock((v5 + 24));

    v8 = *(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_rulesMap);
    MEMORY[0x28223BE20](v7);

    os_unfair_lock_lock((v8 + 24));
    sub_243A49174((v8 + 16));
    os_unfair_lock_unlock((v8 + 24));

    dispatch_group_leave(*(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup));
  }
}

uint64_t sub_243A36AF0(uint64_t *a1, id a2, uint64_t a3)
{
  v35 = a3;
  v5 = [a2 ruleset];
  sub_243A2CFF0(0, &qword_27ED98FC0, 0x277CFB1E8);
  v6 = sub_243AC2998();

  v7 = sub_243A36E34(v6);

  v36 = v7;
  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  result = sub_243AC2DF8();
  if (!result)
  {
  }

LABEL_3:
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v38 = result;
    v39 = v3;
    v9 = 0;
    v10 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_breakoutsMap;
    v11 = v36;
    v37 = v36 & 0xC000000000000001;
    do
    {
      if (v37)
      {
        v12 = MEMORY[0x245D470F0](v9, v11);
      }

      else
      {
        v12 = *(v11 + 8 * v9 + 32);
      }

      v13 = v12;
      v14 = [v12 recommendationID];
      v15 = sub_243AC2858();
      v17 = v16;

      v18 = v13;
      v19 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40[0] = *a1;
      sub_243A8B380(v18, v15, v17, isUniquelyReferenced_nonNull_native);

      *a1 = v40[0];
      v21 = [v18 context];
      v22 = sub_243AC2998();

      v40[0] = 0x74754F6B61657262;
      v40[1] = 0xE800000000000000;
      MEMORY[0x28223BE20](v23);
      v34[2] = v40;
      v24 = v39;
      LOBYTE(v21) = sub_243A451B4(sub_243A49190, v34, v22);
      v39 = v24;

      if (v21)
      {
        v25 = [v18 recommendationID];
        v26 = sub_243AC2858();
        v28 = v27;

        v29 = [v18 rankingHint];
        v30 = [v29 integerValue];

        v31 = v35;
        swift_beginAccess();
        v32 = *(v31 + v10);
        v33 = swift_isUniquelyReferenced_nonNull_native();
        v41 = *(v31 + v10);
        *(v31 + v10) = 0x8000000000000000;
        sub_243A8B21C(v30, v26, v28, v33);

        *(v31 + v10) = v41;
        v11 = v36;
        swift_endAccess();
      }

      ++v9;
    }

    while (v38 != v9);
  }

  return result;
}

unint64_t sub_243A36E34(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x245D470F0](v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject recommendationRules];
      sub_243A2CFF0(0, &qword_27ED98C40, 0x277CFB1D0);
      v8 = sub_243AC2998();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_243AC2DF8();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_243AC2DF8();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_243AC2DF8();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_243AC2D38();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_243AC2DF8();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_243A491E8(&qword_27ED98FE8, &qword_27ED98FE0, &qword_243AC5908);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98FE0, &qword_243AC5908);
              v20 = sub_243AA80F4(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

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
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_243AC2DF8();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_243A371C8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v30 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v28 = v1;
    while (1)
    {
      if (v32)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x245D470F0](v2, v27);
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v31 + 16))
        {
          goto LABEL_43;
        }

        v4 = *(v30 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_243AC16A8();

      v6 = v34[0];
      v7 = v34[0] >> 62;
      v8 = v34[0] >> 62 ? sub_243AC2DF8() : *((v34[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v9)
        {
          goto LABEL_20;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = v8;
          goto LABEL_22;
        }
      }

      else
      {
        if (v9)
        {
LABEL_20:
          sub_243AC2DF8();
          goto LABEL_21;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = *(v11 + 16);
LABEL_21:
      v12 = v8;
      isUniquelyReferenced_nonNull_bridgeObject = sub_243AC2D38();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v7)
      {
        v17 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_243AC2DF8();
        v11 = v17;
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v15 >> 1) - v14) < v12)
          {
            goto LABEL_45;
          }

          v35 = v12;
          v33 = v3;
          v18 = v11 + 8 * v14 + 32;
          v29 = v11;
          if (v7)
          {
            if (v16 < 1)
            {
              goto LABEL_47;
            }

            sub_243A491E8(&qword_27ED98FA8, &qword_27ED98F40, &qword_243AC52E0);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F40, &qword_243AC52E0);
              v20 = sub_243AA806C(v34, i, v6);
              v22 = *v21;
              (v20)(v34, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v33;
          if (v35 >= 1)
          {
            v23 = *(v29 + 16);
            v5 = __OFADD__(v23, v35);
            v24 = v23 + v35;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v29 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_26;
        }
      }

      if (v12 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_243AC2DF8();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

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
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_243AC2DF8();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_243A375B0(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t, uint64_t, uint64_t))
{
  v6 = v3;
  dispatch_group_enter(*(v3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup));
  v8 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsDataFetcher);
  v9 = *(v6 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account);

  a3(v9, a1, a2, v6);
}

void sub_243A37654(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - v8;
  if (a1 && !a2)
  {
    if (a1 >> 62)
    {
      v11 = sub_243AC2DF8();
    }

    else
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v38 = MEMORY[0x277D84F90];
      sub_243A64F14(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        __break(1u);
        return;
      }

      v36 = v9;
      v37 = a3;
      v12 = v38;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = 0;
        do
        {
          MEMORY[0x245D470F0](v13, a1);
          v14 = [swift_unknownObjectRetain() identifier];
          v15 = sub_243AC2858();
          v17 = v16;
          swift_unknownObjectRelease_n();

          v38 = v12;
          v19 = *(v12 + 16);
          v18 = *(v12 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_243A64F14((v18 > 1), v19 + 1, 1);
            v12 = v38;
          }

          ++v13;
          *(v12 + 16) = v19 + 1;
          v20 = v12 + 16 * v19;
          *(v20 + 32) = v15;
          *(v20 + 40) = v17;
        }

        while (v11 != v13);
      }

      else
      {
        v21 = (a1 + 32);
        do
        {
          v22 = *v21;
          v23 = [v22 identifier];
          v24 = sub_243AC2858();
          v26 = v25;

          v38 = v12;
          v28 = *(v12 + 16);
          v27 = *(v12 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_243A64F14((v27 > 1), v28 + 1, 1);
            v12 = v38;
          }

          *(v12 + 16) = v28 + 1;
          v29 = v12 + 16 * v28;
          *(v29 + 32) = v24;
          *(v29 + 40) = v26;
          ++v21;
          --v11;
        }

        while (v11);
      }

      v9 = v36;
      a3 = v37;
    }

    v30 = sub_243AC2A98();
    (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
    sub_243AC2A58();

    v31 = sub_243AC2A48();
    v32 = swift_allocObject();
    v33 = MEMORY[0x277D85700];
    *(v32 + 16) = v31;
    *(v32 + 24) = v33;
    *(v32 + 32) = v12;
    *(v32 + 40) = 5;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    *(v32 + 48) = a3;
    *(v32 + 72) = 1793;
    sub_243A3306C(0, 0, v9, &unk_243AC5900, v32);

    v35 = *(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allRecommendations);
    MEMORY[0x28223BE20](v34);
    *(&v36 - 2) = a1;

    os_unfair_lock_lock((v35 + 24));
    sub_243A49114((v35 + 16));
    os_unfair_lock_unlock((v35 + 24));

    dispatch_group_leave(*(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup));
    return;
  }

  v10 = *(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup);

  dispatch_group_leave(v10);
}

void sub_243A37A00(unint64_t *a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
LABEL_26:
    v4 = sub_243AC2DF8();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v31 = v2;
      v32 = v2 & 0xC000000000000001;
      v29 = v2 & 0xFFFFFFFFFFFFFF8;
      v30 = v4;
      do
      {
        if (v32)
        {
          v8 = MEMORY[0x245D470F0](v5, v2);
        }

        else
        {
          if (v5 >= *(v29 + 16))
          {
            goto LABEL_25;
          }

          v8 = *(v2 + 8 * v5 + 32);
        }

        v9 = v8;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v33 = v5 + 1;
        v10 = [v8 identifier];
        v11 = sub_243AC2858();
        v13 = v12;

        v14 = v9;
        v15 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = a1;
        v2 = *a1;
        v34 = *a1;
        v19 = sub_243A2DDC0(v11, v13);
        v20 = *(v2 + 16);
        v21 = (v18 & 1) == 0;
        v22 = v20 + v21;
        if (__OFADD__(v20, v21))
        {
          goto LABEL_23;
        }

        a1 = v18;
        if (*(v2 + 24) >= v22)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v18)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_243A8B978();
            if (a1)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_243A8A254(v22, isUniquelyReferenced_nonNull_native);
          v23 = sub_243A2DDC0(v11, v13);
          if ((a1 & 1) != (v24 & 1))
          {
            sub_243AC2F38();
            __break(1u);
            return;
          }

          v19 = v23;
          if (a1)
          {
LABEL_4:

            v2 = v34;
            v6 = v34[7];
            v7 = *(v6 + 8 * v19);
            *(v6 + 8 * v19) = v14;

            goto LABEL_5;
          }
        }

        v2 = v34;
        v34[(v19 >> 6) + 8] |= 1 << v19;
        v25 = (v34[6] + 16 * v19);
        *v25 = v11;
        v25[1] = v13;
        *(v34[7] + 8 * v19) = v14;

        v26 = v34[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_24;
        }

        v34[2] = v28;
LABEL_5:
        a1 = v17;
        *v17 = v2;
        ++v5;
        v2 = v31;
      }

      while (v33 != v30);
    }
  }
}

uint64_t sub_243A37C54(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsFilter);
    sub_243A242A0();
    v6 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController);

    sub_243AA47D8();
  }

  dispatch_group_enter(*(v3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup));
  v7 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsDataFetcher);
  v8 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account);
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = a2 & 1;
  v10 = v8;

  sub_243AC13D8();
}

void sub_243A37D58(void *a1, void *a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - v10;
  if (!a1 || a2)
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v20 = sub_243AC1468();
    __swift_project_value_buffer(v20, qword_27EDA14A8);
    v21 = a2;
    v22 = sub_243AC1448();
    v23 = sub_243AC2B58();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v24 = 136315394;
      *(v24 + 4) = sub_243AB73D8(0xD00000000000004CLL, 0x8000000243ACCA70, &v32);
      *(v24 + 12) = 2112;
      if (a2)
      {
        v27 = a2;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = v28;
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      *(v24 + 14) = v28;
      *v25 = v29;
      _os_log_impl(&dword_243A1B000, v22, v23, "%s Failed to fetch completed recommendations: %@", v24, 0x16u);
      sub_243A2251C(v25, &qword_27ED98BF8, &unk_243AC6150);
      MEMORY[0x245D47D20](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x245D47D20](v26, -1, -1);
      MEMORY[0x245D47D20](v24, -1, -1);
    }

    v30 = *(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup);

    dispatch_group_leave(v30);
  }

  else
  {
    v12 = *(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController);
    v13 = a1;

    v14 = [v13 recommendations];
    sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
    v15 = sub_243AC2998();

    v16 = *(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_rulesMap);
    v17 = swift_allocObject();
    *(v17 + 16) = a4 & 1;
    *(v17 + 24) = a3;
    v18 = sub_243AC2A98();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v15;
    v19[5] = v12;
    v19[6] = v16;
    v19[7] = sub_243A48F8C;
    v19[8] = v17;
    swift_retain_n();

    sub_243A3306C(0, 0, v11, &unk_243ACA540, v19);
  }
}

uint64_t sub_243A38130(char a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allRecommendations);

  os_unfair_lock_lock((v9 + 24));
  sub_243A382F8((v9 + 16), &v18);
  os_unfair_lock_unlock((v9 + 24));
  v10 = v18;

  v11 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsFilter);
  v12 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_rulesMap);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  *(v13 + 25) = a2;
  v14 = sub_243AC2A98();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v10;
  v15[5] = v12;
  v15[6] = v11;
  v15[7] = sub_243A493A0;
  v15[8] = v13;

  sub_243A3306C(0, 0, v8, &unk_243AC5928, v15);
}

uint64_t sub_243A382F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v4 = 1 << *(*a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  while (v6)
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(*(v2 + 56) + ((v9 << 9) | (8 * v11)));
    [v12 copy];
    sub_243AC2C68();
    swift_unknownObjectRelease();

    sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
    result = swift_dynamicCast();
    if ((result & 1) != 0 && v15)
    {
      MEMORY[0x245D46D30]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_243AC29B8();
      }

      result = sub_243AC29D8();
      v3 = v16;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      *a2 = v3;
      return result;
    }

    v6 = *(v2 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_243A384BC(unint64_t a1, uint64_t a2, int a3, int a4)
{
  v43 = a2;
  v7 = sub_243AC2178();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_243AC21A8();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v39 = v8;
  v40 = v7;
  v37 = v11;
  v38 = v14;
  v35 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v16;
  v33 = a3;
  v34 = a4;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_243AC2DF8())
  {
    v18 = 0;
    v41 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations;
    v42 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x245D470F0](v18, a1);
      }

      else
      {
        if (v18 >= *(v42 + 16))
        {
          goto LABEL_18;
        }

        v19 = *(a1 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v22 = [v19 identifier];
      sub_243AC2858();

      v23 = sub_243A5B5E4();
      if (v23 > 0xEu)
      {
        goto LABEL_16;
      }

      if (((1 << v23) & 0x6238) != 0)
      {
        sub_243A394D8(v20);
      }

      else
      {
        if (((1 << v23) & 0x140) == 0)
        {
LABEL_16:
          v24 = *(v43 + v41);
          MEMORY[0x28223BE20](v23);
          *(&v32 - 2) = v20;

          os_unfair_lock_lock((v24 + 24));
          sub_243A494E4((v24 + 16));
          os_unfair_lock_unlock((v24 + 24));

          goto LABEL_6;
        }

        sub_243A38C9C(v20);
      }

LABEL_6:
      ++v18;
      if (v21 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);
  v25 = sub_243AC2BC8();
  v26 = swift_allocObject();
  *(v26 + 16) = v43;
  *(v26 + 24) = v33 & 1;
  *(v26 + 25) = v34 & 1;
  *(v26 + 32) = a1;
  aBlock[4] = sub_243A4952C;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A71700;
  aBlock[3] = &block_descriptor_432;
  v27 = _Block_copy(aBlock);

  v28 = v35;
  sub_243AC2198();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243A484E8(&qword_27ED99860, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
  sub_243A491E8(&qword_27ED99870, &qword_27ED98F90, &qword_243AC5C20);
  v29 = v37;
  v30 = v40;
  sub_243AC2C78();
  MEMORY[0x245D46FA0](0, v28, v29, v27);
  _Block_release(v27);

  (*(v39 + 8))(v29, v30);
  return (*(v36 + 8))(v28, v38);
}

void sub_243A3898C(uint64_t a1, int a2, int a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - v10;
  sub_243A397F0(a2, a3);
  if (a2)
  {
    if (a4 >> 62)
    {
      v12 = sub_243AC2DF8();
    }

    else
    {
      v12 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      v38 = MEMORY[0x277D84F90];
      sub_243A64F14(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
        return;
      }

      v36 = v11;
      v37 = a1;
      v13 = v38;
      if ((a4 & 0xC000000000000001) != 0)
      {
        v14 = 0;
        do
        {
          MEMORY[0x245D470F0](v14, a4);
          v15 = [swift_unknownObjectRetain() identifier];
          v16 = sub_243AC2858();
          v18 = v17;
          swift_unknownObjectRelease_n();

          v38 = v13;
          v20 = *(v13 + 16);
          v19 = *(v13 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_243A64F14((v19 > 1), v20 + 1, 1);
            v13 = v38;
          }

          ++v14;
          *(v13 + 16) = v20 + 1;
          v21 = v13 + 16 * v20;
          *(v21 + 32) = v16;
          *(v21 + 40) = v18;
        }

        while (v12 != v14);
      }

      else
      {
        v22 = (a4 + 32);
        do
        {
          v23 = *v22;
          v24 = [v23 identifier];
          v25 = sub_243AC2858();
          v27 = v26;

          v38 = v13;
          v29 = *(v13 + 16);
          v28 = *(v13 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_243A64F14((v28 > 1), v29 + 1, 1);
            v13 = v38;
          }

          *(v13 + 16) = v29 + 1;
          v30 = v13 + 16 * v29;
          *(v30 + 32) = v25;
          *(v30 + 40) = v27;
          ++v22;
          --v12;
        }

        while (v12);
      }

      v11 = v36;
      a1 = v37;
    }

    v31 = sub_243AC2A98();
    (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
    sub_243AC2A58();

    v32 = sub_243AC2A48();
    v33 = swift_allocObject();
    v34 = MEMORY[0x277D85700];
    *(v33 + 16) = v32;
    *(v33 + 24) = v34;
    *(v33 + 32) = v13;
    *(v33 + 40) = 5;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    *(v33 + 48) = a1;
    *(v33 + 72) = 1;
    sub_243A3306C(0, 0, v11, &unk_243AC5930, v33);
  }
}

void sub_243A38C9C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController;
  v5 = *(*(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController) + 32);

  os_unfair_lock_lock((v5 + 24));
  sub_243A49948((v5 + 16), &v46);
  os_unfair_lock_unlock((v5 + 24));
  v6 = v46;

  if (!v6)
  {
    v19 = *(*(v1 + v4) + 24);
    MEMORY[0x28223BE20](v7);

    os_unfair_lock_lock((v19 + 24));
    sub_243A48768((v19 + 16), &v46);
    os_unfair_lock_unlock((v19 + 24));
    v20 = v46;

    if (!v20)
    {
      v34 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations);
      MEMORY[0x28223BE20](v21);

      os_unfair_lock_lock((v34 + 24));
      sub_243A49930((v34 + 16));
      os_unfair_lock_unlock((v34 + 24));
LABEL_19:

      return;
    }

    v22 = [a1 identifier];
    sub_243AC2858();

    v23 = sub_243A5B5E4();
    if (v23 == 6)
    {
      v35 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_rulesMap);

      v36 = [a1 identifier];
      sub_243AC2858();

      MEMORY[0x28223BE20](v37);
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);

      os_unfair_lock_lock((v35 + 24));
      sub_243A49894((v35 + 16), &v46);
      os_unfair_lock_unlock((v35 + 24));

      v28 = v46;

      if (!v28)
      {
LABEL_17:

        return;
      }

      v39 = [a1 storageRecoverable];
      v40 = [v39 integerValue];

      v41 = [v28 criteria];
      v42 = [v41 min];

      v43 = [v42 integerValue];
      if (v40 >= v43)
      {
LABEL_18:
        v44 = [v20 setStatus_];
        v45 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations);
        MEMORY[0x28223BE20](v44);

        os_unfair_lock_lock((v45 + 24));
        sub_243A49930((v45 + 16));
        os_unfair_lock_unlock((v45 + 24));

        goto LABEL_19;
      }
    }

    else
    {
      if (v23 != 8)
      {
        goto LABEL_17;
      }

      v24 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_rulesMap);

      v25 = [a1 identifier];
      sub_243AC2858();

      MEMORY[0x28223BE20](v26);
      v27 = swift_getKeyPath();
      MEMORY[0x28223BE20](v27);

      os_unfair_lock_lock((v24 + 24));
      sub_243A49894((v24 + 16), &v46);
      os_unfair_lock_unlock((v24 + 24));

      v28 = v46;

      if (!v28)
      {
        goto LABEL_17;
      }

      v29 = [a1 storageRecoverable];
      v30 = [v29 integerValue];

      v31 = [v28 criteria];
      v32 = [v31 min];

      v33 = [v32 integerValue];
      if (v30 >= v33)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_17;
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v8 = sub_243AC1468();
  __swift_project_value_buffer(v8, qword_27EDA14A8);
  v9 = a1;
  v10 = sub_243AC1448();
  v11 = sub_243AC2B48();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v46 = v13;
    *v12 = 136315138;
    v14 = [v9 identifier];
    v15 = sub_243AC2858();
    v17 = v16;

    v18 = sub_243AB73D8(v15, v17, &v46);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_243A1B000, v10, v11, "%s was dismissed, it will not be shown in main list.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x245D47D20](v13, -1, -1);
    MEMORY[0x245D47D20](v12, -1, -1);
  }
}

id sub_243A39370@<X0>(id a1@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v5 = [a1 identifier];
  v6 = sub_243AC2858();
  v8 = v7;

  v9 = *a2;
  if (!*(v9 + 16))
  {

    goto LABEL_5;
  }

  v10 = sub_243A2DDC0(v6, v8);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v14 = *(*(v9 + 56) + 8 * v10);
  result = v14;
LABEL_6:
  *a3 = v14;
  return result;
}

unint64_t sub_243A39428@<X0>(unint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16) && (result = sub_243A2DDC0(*a2, a2[1]), (v5 & 1) != 0))
  {
    v6 = *(*(v4 + 56) + 8 * result);
    result = v6;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_243A3947C(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(id, uint64_t, uint64_t))
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *a1;
  v9 = *a1;

  return a5(v8, v6, v7);
}

void sub_243A394D8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C38, &qword_243AC4C90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v24 - v5;
  v7 = [*(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsActionCache) lastDismissedTimestamp_];
  if (v7)
  {
    v8 = v7;
    sub_243AC1248();

    v9 = sub_243AC1268();
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
    sub_243A2251C(v6, &qword_27ED98C38, &qword_243AC4C90);
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v10 = sub_243AC1468();
    __swift_project_value_buffer(v10, qword_27EDA14A8);
    v11 = a1;
    v12 = sub_243AC1448();
    v13 = sub_243AC2B78();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[0] = v15;
      *v14 = 136315138;
      v16 = [v11 identifier];
      v17 = sub_243AC2858();
      v19 = v18;

      v20 = sub_243AB73D8(v17, v19, v24);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_243A1B000, v12, v13, "%s was dismissed, it will not be shown in main list.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x245D47D20](v15, -1, -1);
      MEMORY[0x245D47D20](v14, -1, -1);
    }
  }

  else
  {
    v21 = sub_243AC1268();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    v22 = sub_243A2251C(v6, &qword_27ED98C38, &qword_243AC4C90);
    v23 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations);
    MEMORY[0x28223BE20](v22);
    v24[-2] = a1;

    os_unfair_lock_lock((v23 + 24));
    sub_243A49930((v23 + 16));
    os_unfair_lock_unlock((v23 + 24));
  }
}

void sub_243A397F0(int a1, int a2)
{
  v3 = v2;
  v99 = a2;
  v100 = a1;
  v4 = sub_243AC2178();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v103 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_243AC21A8();
  v102 = *(v104 - 8);
  v8 = *(v102 + 64);
  MEMORY[0x28223BE20](v104);
  v101 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationRules);

  os_unfair_lock_lock((v10 + 24));
  v11 = *(v10 + 16);
  if (!v11 || ([v11 copy], sub_243AC2C68(), swift_unknownObjectRelease(), sub_243A2CFF0(0, &qword_27ED98FB8, 0x277CFB1E0), (swift_dynamicCast() & 1) == 0))
  {
    v126 = 0;
  }

  os_unfair_lock_unlock((v10 + 24));
  v12 = v126;

  if (v12)
  {
    v95 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account);
    v13 = [v12 ruleset];
    sub_243A2CFF0(0, &qword_27ED98FC0, 0x277CFB1E8);
    v14 = sub_243AC2998();

    v120 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations;
    v15 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations);

    v16 = sub_243A5C87C(v14, v15);

    v127 = MEMORY[0x277D84F90];
    v96 = v12;
    v17 = [v12 maxRecommendationsToShow];
    v107 = [v17 integerValue];

    v18 = sub_243AA9528();
    v97 = v5;
    if (v18)
    {
      if (qword_27ED98930 != -1)
      {
        swift_once();
      }

      v19 = qword_27ED9A410;
      v20 = sub_243AC2818();
      LODWORD(v19) = [v19 BOOLForKey_];

      if (v19)
      {
        if (qword_27ED98910 != -1)
        {
          swift_once();
        }

        v21 = sub_243AC1468();
        __swift_project_value_buffer(v21, qword_27EDA14A8);
        v22 = sub_243AC1448();
        v23 = sub_243AC2B48();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_243A1B000, v22, v23, "Limit bypass has been requested. Ignoring server config.", v24, 2u);
          MEMORY[0x245D47D20](v24, -1, -1);
        }

        v107 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    if (v16 >> 62)
    {
      goto LABEL_66;
    }

    v25 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:
    v98 = v4;
    v26 = MEMORY[0x277D84F90];
    if (v25)
    {
      v105 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_ranksMap;
      v116 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allSections;
      v117 = v16 & 0xC000000000000001;
      swift_beginAccess();
      v27 = 0;
      v110 = 0;
      v114 = 0;
      v111 = 0;
      v109 = v16 & 0xFFFFFFFFFFFFFF8;
      v108 = v16 + 32;
      v94 = "you title string.";
      *&v28 = 136315906;
      v93 = v28;
      v4 = v26;
      v106 = v16;
      v115 = v25;
      while (1)
      {
        if (v117)
        {
          v29 = MEMORY[0x245D470F0](v27, v16);
          v30 = __OFADD__(v27, 1);
          v31 = v27 + 1;
          if (v30)
          {
            goto LABEL_63;
          }
        }

        else
        {
          if (v27 >= *(v109 + 16))
          {
            goto LABEL_64;
          }

          v29 = *(v108 + 8 * v27);
          v30 = __OFADD__(v27, 1);
          v31 = v27 + 1;
          if (v30)
          {
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            v25 = sub_243AC2DF8();
            goto LABEL_16;
          }
        }

        v119 = v31;
        v32 = v29;
        v33 = [v29 sectionID];
        v34 = sub_243AC2858();
        v36 = v35;

        v37 = *(v3 + v116);
        if (*(v37 + 16))
        {
          v118 = v32;

          v38 = sub_243A2DDC0(v34, v36);
          v40 = v39;

          if (v40)
          {
            v41 = *(*(v37 + 56) + 8 * v38);

            v42 = type metadata accessor for RecommendationSectionViewModel();
            v43 = *(v42 + 48);
            v44 = *(v42 + 52);
            v4 = swift_allocObject();
            aBlock[0] = v26;
            v45 = v41;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F40, &qword_243AC52E0);
            sub_243AC1688();
            v112 = v45;
            *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationSectionViewModel_sectionModel) = v45;
            *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationSectionViewModel_totalSectionScore) = 0;
            v46 = [v118 recommendationRules];
            sub_243A2CFF0(0, &qword_27ED98C40, 0x277CFB1D0);
            v47 = sub_243AC2998();

            v113 = v4;
            v121 = v47 & 0xFFFFFFFFFFFFFF8;
            if (v47 >> 62)
            {
              v123 = sub_243AC2DF8();
            }

            else
            {
              v123 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v16 = 0;
            v122 = v47 & 0xC000000000000001;
            v48 = v114;
            while (1)
            {
              v114 = v48;
              if (v16 == v123)
              {
LABEL_47:

                goto LABEL_48;
              }

              while (1)
              {
                if (v122)
                {
                  v49 = MEMORY[0x245D470F0](v16, v47);
                }

                else
                {
                  if (v16 >= *(v121 + 16))
                  {
                    goto LABEL_62;
                  }

                  v49 = *(v47 + 8 * v16 + 32);
                }

                v50 = v49;
                v51 = (v16 + 1);
                if (__OFADD__(v16, 1))
                {
                  __break(1u);
LABEL_62:
                  __break(1u);
                  goto LABEL_63;
                }

                v4 = v3;
                v52 = *(v3 + v120);

                v53 = [v50 recommendationID];
                v54 = sub_243AC2858();
                v56 = v55;

                MEMORY[0x28223BE20](v57);
                *(&v93 - 2) = v54;
                *(&v93 - 1) = v56;
                KeyPath = swift_getKeyPath();
                v59 = MEMORY[0x28223BE20](KeyPath);
                *(&v93 - 2) = sub_243A499B0;
                *(&v93 - 1) = v59;

                os_unfair_lock_lock((v52 + 24));
                sub_243A49894((v52 + 16), aBlock);
                os_unfair_lock_unlock((v52 + 24));

                v60 = aBlock[0];

                if (v60)
                {
                  break;
                }

                ++v16;
                v3 = v4;
                if (v51 == v123)
                {
                  goto LABEL_47;
                }
              }

              if (v111 == v107)
              {
                break;
              }

              v61 = v4;
              sub_243A3A91C(v60, v50);
              swift_getKeyPath();
              swift_getKeyPath();
              v62 = v60;
              v114 = sub_243AC1698();
              v64 = v63;
              MEMORY[0x245D46D30]();
              if (*((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_243AC29B8();
              }

              sub_243AC29D8();
              v114(aBlock, 0);

              v65 = [v62 identifier];
              v114 = sub_243AC2858();
              v67 = v66;

              v68 = v105;
              swift_beginAccess();
              v69 = *(v4 + v68);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v124 = *(v4 + v68);
              *(v4 + v68) = 0x8000000000000000;
              v71 = v110;
              sub_243A8B21C(v110, v114, v67, isUniquelyReferenced_nonNull_native);

              *(v61 + v68) = v124;
              swift_endAccess();

              v16 = v51;
              v30 = __OFADD__(v71, 1);
              v4 = v71 + 1;
              v48 = v4;
              v110 = v4;
              v111 = v4;
              v3 = v61;
              if (v30)
              {
                goto LABEL_65;
              }
            }

            if (qword_27ED98910 != -1)
            {
              swift_once();
            }

            v73 = sub_243AC1468();
            __swift_project_value_buffer(v73, qword_27EDA14A8);

            v74 = sub_243AC1448();
            v75 = sub_243AC2B48();
            if (os_log_type_enabled(v74, v75))
            {
              LODWORD(v122) = v75;
              v123 = v74;
              v76 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              aBlock[0] = v77;
              *v76 = v93;
              *(v76 + 4) = sub_243AB73D8(0xD00000000000004FLL, v94 | 0x8000000000000000, aBlock);
              *(v76 + 12) = 2048;
              *(v76 + 14) = v114;
              *(v76 + 22) = 2048;
              v78 = *(v4 + v120);
              v79 = swift_getKeyPath();
              v80 = MEMORY[0x28223BE20](v79);
              *(&v93 - 2) = sub_243A4871C;
              *(&v93 - 1) = v80;

              os_unfair_lock_lock((v78 + 24));
              sub_243A48724((v78 + 16), &v124);
              os_unfair_lock_unlock((v78 + 24));

              v81 = v124;

              *(v76 + 24) = v81;

              *(v76 + 32) = 2048;
              v82 = v107;
              *(v76 + 34) = v107;
              v83 = v123;
              _os_log_impl(&dword_243A1B000, v123, v122, "%s Picked %ld out of max: %ld serverLimitOrBypassLimit:%ld", v76, 0x2Au);
              __swift_destroy_boxed_opaque_existential_1(v77);
              MEMORY[0x245D47D20](v77, -1, -1);
              MEMORY[0x245D47D20](v76, -1, -1);

              v111 = v82;
              v84 = v114;
              v85 = &v128;
            }

            else
            {

              v84 = v107;
              v85 = &v129;
            }

            *(v85 - 32) = v84;
            v3 = v4;
LABEL_48:
            v16 = v106;
            v26 = MEMORY[0x277D84F90];

            MEMORY[0x245D46D30](v72);
            if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v86 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_243AC29B8();
            }

            sub_243AC29D8();

            v4 = v127;
          }

          else
          {
          }
        }

        else
        {
        }

        v27 = v119;
        if (v119 == v115)
        {
          goto LABEL_59;
        }
      }
    }

    v4 = MEMORY[0x277D84F90];
LABEL_59:

    sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);
    v87 = sub_243AC2BC8();
    v88 = swift_allocObject();
    *(v88 + 16) = v3;
    *(v88 + 24) = v4;
    *(v88 + 32) = v99 & 1;
    *(v88 + 33) = v100 & 1;
    aBlock[4] = sub_243A486FC;
    aBlock[5] = v88;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243A71700;
    aBlock[3] = &block_descriptor_306;
    v89 = _Block_copy(aBlock);

    v90 = v101;
    sub_243AC2198();
    v124 = v26;
    sub_243A484E8(&qword_27ED99860, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
    sub_243A491E8(&qword_27ED99870, &qword_27ED98F90, &qword_243AC5C20);
    v91 = v103;
    v92 = v98;
    sub_243AC2C78();
    MEMORY[0x245D46FA0](0, v90, v91, v89);
    _Block_release(v89);

    (*(v97 + 8))(v91, v92);
    (*(v102 + 8))(v90, v104);

    sub_243A3AFF0();
  }
}

uint64_t sub_243A3A750()
{

  swift_getAtKeyPath();

  return v1;
}

void sub_243A3A7A0(uint64_t a1, unint64_t a2, char a3, char a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = a2;

  sub_243AC16B8();
  if (a3)
  {
    v7 = sub_243A41C58();
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v7;

    sub_243AC16B8();
  }

  if (a4)
  {
    v8 = sub_243A371C8(a2);
    LOBYTE(v10) = 0;
    sub_243A3C784(v8, &v10);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_243AC16A8();

    v9 = sub_243A371C8(v10);

    LOBYTE(v10) = 2;
    sub_243A3C784(v9, &v10);
  }

  sub_243A3BB28();
}

void sub_243A3A91C(void *a1, id a2)
{
  v3 = v2;
  v6 = [a2 templates];
  v7 = sub_243AC2818();
  v8 = [v6 titleTemplateForKey_];

  if (v8)
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v9 = sub_243AC1468();
    __swift_project_value_buffer(v9, qword_27EDA14A8);
    v10 = sub_243AC1448();
    v11 = sub_243AC2B48();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_243A1B000, v10, v11, "Using server provided active copy for recommendation title.", v12, 2u);
      MEMORY[0x245D47D20](v12, -1, -1);
    }

    [a1 setTitle_];
  }

  v13 = [a2 templates];
  v14 = sub_243AC2818();
  v15 = [v13 subTitleTemplateForKey_];

  if (v15)
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v16 = sub_243AC1468();
    __swift_project_value_buffer(v16, qword_27EDA14A8);
    v17 = sub_243AC1448();
    v18 = sub_243AC2B48();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_243A1B000, v17, v18, "Using server provided active copy for recommendation subtitle.", v19, 2u);
      MEMORY[0x245D47D20](v19, -1, -1);
    }

    [a1 setSubTitle_];
  }

  v20 = [a2 templates];
  v21 = sub_243AC2818();
  v22 = [v20 messageTemplateForKey_];

  if (v22)
  {
    v23 = sub_243AC2858();
    v25 = v24;

    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v26 = sub_243AC1468();
    __swift_project_value_buffer(v26, qword_27EDA14A8);
    v27 = sub_243AC1448();
    v28 = sub_243AC2B48();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_243A1B000, v27, v28, "Using server provided active copy for recommendation message.", v29, 2u);
      MEMORY[0x245D47D20](v29, -1, -1);
    }

    v30 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_templateHelper);

    v31 = [a1 storageRecoverable];
    [v31 integerValue];

    sub_243A59E9C(v23, v25);

    v32 = sub_243AC2818();

    [a1 setMessage_];
  }

  v33 = [a1 actions];
  sub_243A2CFF0(0, &qword_27ED98B88, 0x277CFB1B8);
  v34 = sub_243AC2998();

  if (v34 >> 62)
  {
    v35 = sub_243AC2DF8();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v35 == 1)
  {
    v36 = [a2 templates];
    v37 = sub_243AC2818();
    v46 = [v36 actionTitleTemplateForKey_];

    if (v46)
    {
      if (qword_27ED98910 != -1)
      {
        swift_once();
      }

      v38 = sub_243AC1468();
      __swift_project_value_buffer(v38, qword_27EDA14A8);
      v39 = sub_243AC1448();
      v40 = sub_243AC2B48();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_243A1B000, v39, v40, "Using server provided copy for recommendation action.", v41, 2u);
        MEMORY[0x245D47D20](v41, -1, -1);
      }

      v42 = [a1 actions];
      v43 = sub_243AC2998();

      if (v43 >> 62)
      {
        if (sub_243AC2DF8())
        {
          goto LABEL_29;
        }
      }

      else if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_29:
        if ((v43 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x245D470F0](0, v43);
        }

        else
        {
          if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v44 = *(v43 + 32);
        }

        v45 = v44;

        [v45 setActionTitle_];

        goto LABEL_37;
      }

LABEL_37:
    }
  }
}

uint64_t sub_243A3AFF0()
{
  v1 = v0;
  v2 = sub_243AC2178();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_243AC21A8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allSections;
  result = swift_beginAccess();
  v14 = *(v0 + v12);
  if (*(v14 + 16))
  {

    v15 = sub_243A2DDC0(0x4554454C504D4F43, 0xE900000000000044);
    if ((v16 & 1) == 0)
    {
    }

    v76 = v11;
    v77 = v8;
    v78 = v6;
    v79 = v7;
    v80 = v3;
    v81 = v2;
    v75 = *(*(v14 + 56) + 8 * v15);

    v82 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController;
    v17 = *(*(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController) + 32);

    os_unfair_lock_lock((v17 + 24));
    v18 = *(v17 + 16);
    v19 = *(v18 + 16);
    v83 = v1;
    if (!v19)
    {
      v20 = MEMORY[0x277D84F90];
LABEL_8:
      os_unfair_lock_unlock((v17 + 24));

      if (v20 < 0 || (v20 & 0x4000000000000000) != 0)
      {
        goto LABEL_49;
      }

      for (i = *(v20 + 16); ; i = sub_243AC2DF8())
      {
        v23 = 0x278DE1000;
        if (i)
        {
          v24 = 0;
          v84 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allRecommendations;
          v85 = v20;
          v86 = v20 & 0xC000000000000001;
          while (1)
          {
            if (v86)
            {
              v26 = MEMORY[0x245D470F0](v24, v20);
            }

            else
            {
              if (v24 >= *(v20 + 16))
              {
                goto LABEL_47;
              }

              v26 = *(v20 + 8 * v24 + 32);
            }

            v27 = v26;
            v28 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            v29 = i;
            v30 = [v26 *(v23 + 4088)];
            sub_243AC2858();

            v31 = sub_243A5B5E4();
            v32 = v31 > 0xEu || ((1 << v31) & 0x6378) == 0;
            if (!v32)
            {
              v33 = *(v1 + v84);

              v34 = [v27 *(v23 + 4088)];
              v35 = sub_243AC2858();
              v36 = v1;
              v38 = v37;

              MEMORY[0x28223BE20](v39);
              *(&v74 - 2) = v35;
              *(&v74 - 1) = v38;
              KeyPath = swift_getKeyPath();
              v41 = MEMORY[0x28223BE20](KeyPath);
              *(&v74 - 2) = sub_243A499B0;
              *(&v74 - 1) = v41;

              os_unfair_lock_lock((v33 + 24));
              sub_243A49894((v33 + 16), aBlock);
              os_unfair_lock_unlock((v33 + 24));

              v42 = aBlock[0];

              if (v42)
              {
                sub_243A47F14(v27, v42);
              }

              else
              {
                v25 = *(v36 + v82);

                sub_243AA6570(v27);
              }

              v1 = v36;
              v23 = 0x278DE1000uLL;
            }

            i = v29;

            ++v24;
            v32 = v28 == v29;
            v20 = v85;
            if (v32)
            {
              goto LABEL_27;
            }
          }

          __break(1u);
        }

        else
        {
LABEL_27:

          v43 = *(*(v1 + v82) + 24);

          os_unfair_lock_lock((v43 + 24));
          v44 = *(v43 + 16);
          v45 = *(v44 + 16);
          v20 = MEMORY[0x277D84F90];
          if (v45)
          {
            v20 = sub_243AA6A84(*(v44 + 16), 0);
            v46 = sub_243AA8424(aBlock, (v20 + 32), v45, v44);
            v86 = v88;

            result = sub_243A48354();
            if (v46 != v45)
            {
              goto LABEL_54;
            }
          }

          v47 = 0x278DE1000;
          os_unfair_lock_unlock((v43 + 24));

          if (v20 < 0 || (v20 & 0x4000000000000000) != 0)
          {
            v1 = sub_243AC2DF8();
            v48 = 0x27ED98000;
            if (!v1)
            {
LABEL_51:

              v64 = v83;
              v65 = *(v83 + v82);

              v66 = v75;
              v67 = sub_243AA4910(v75);

              sub_243A42F30();
              sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);
              v68 = sub_243AC2BC8();
              v69 = swift_allocObject();
              *(v69 + 16) = v64;
              *(v69 + 24) = v67;
              v88 = sub_243A485F4;
              v89 = v69;
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_243A71700;
              aBlock[3] = &block_descriptor_292;
              v70 = _Block_copy(aBlock);

              v71 = v76;
              sub_243AC2198();
              aBlock[0] = MEMORY[0x277D84F90];
              sub_243A484E8(&qword_27ED99860, MEMORY[0x277D85198]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
              sub_243A491E8(&qword_27ED99870, &qword_27ED98F90, &qword_243AC5C20);
              v72 = v78;
              v73 = v81;
              sub_243AC2C78();
              MEMORY[0x245D46FA0](0, v71, v72, v70);
              _Block_release(v70);

              (*(v80 + 8))(v72, v73);
              return (*(v77 + 8))(v71, v79);
            }
          }

          else
          {
            v1 = *(v20 + 16);
            v48 = 0x27ED98000uLL;
            if (!v1)
            {
              goto LABEL_51;
            }
          }

          v49 = 0;
          v85 = *(v48 + 3672);
          v86 = v20 & 0xC000000000000001;
          while (1)
          {
            if (v86)
            {
              v50 = MEMORY[0x245D470F0](v49, v20);
            }

            else
            {
              if (v49 >= *(v20 + 16))
              {
                goto LABEL_48;
              }

              v50 = *(v20 + 8 * v49 + 32);
            }

            v51 = v50;
            v52 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
              break;
            }

            v53 = [v50 *(v47 + 4088)];
            sub_243AC2858();

            if ((sub_243A5B5E4() - 6) <= 2u)
            {
              v54 = *(v83 + v85);

              v55 = [v51 *(v47 + 4088)];
              v56 = sub_243AC2858();
              v58 = v57;

              MEMORY[0x28223BE20](v59);
              *(&v74 - 2) = v56;
              *(&v74 - 1) = v58;
              v60 = swift_getKeyPath();
              v61 = MEMORY[0x28223BE20](v60);
              *(&v74 - 2) = sub_243A485FC;
              *(&v74 - 1) = v61;

              os_unfair_lock_lock((v54 + 24));
              sub_243A49894((v54 + 16), aBlock);
              os_unfair_lock_unlock((v54 + 24));

              v62 = aBlock[0];

              if (v62)
              {
                v63 = [v62 actions];
                v47 = 0x278DE1000uLL;
                if (!v63)
                {
                  sub_243A2CFF0(0, &qword_27ED98B88, 0x277CFB1B8);
                  sub_243AC2998();
                  v47 = 0x278DE1000;
                  v63 = sub_243AC2978();
                }

                [v51 setActions_];
              }

              else
              {
                v47 = 0x278DE1000;
              }
            }

            ++v49;
            if (v52 == v1)
            {
              goto LABEL_51;
            }
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        ;
      }
    }

    v20 = sub_243AA6A84(v19, 0);
    v21 = sub_243AA8424(aBlock, (v20 + 32), v19, v18);

    result = sub_243A48354();
    if (v21 == v19)
    {
      v1 = v83;
      goto LABEL_8;
    }

    __break(1u);
LABEL_54:
    __break(1u);
  }

  return result;
}

uint64_t sub_243A3B9A8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98EE8, &unk_243AC8050);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_243AC51A0;
  *(v3 + 32) = a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_243AC16B8();
  sub_243AC2168();
  sub_243AC17F8();
}

uint64_t sub_243A3BA9C()
{
  type metadata accessor for RecommendationsController();
  sub_243A484E8(&qword_27ED98FB0, type metadata accessor for RecommendationsController);
  sub_243AC1668();
  sub_243AC1678();
}

void sub_243A3BB28()
{
  v1 = v0;
  type metadata accessor for RecommendationsController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  v26 = sub_243AC1188();
  v6 = v5;

  v7 = [v3 bundleForClass_];
  v8 = sub_243AC1188();
  v10 = v9;

  v11 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationRules);
  swift_getKeyPath();

  os_unfair_lock_lock((v11 + 24));
  sub_243A484A4((v11 + 16), &v27);
  os_unfair_lock_unlock((v11 + 24));

  v12 = v27;

  if (v12)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_243AC16A8();

    v13 = sub_243A371C8(v27);

    v14 = v12;
    v15 = sub_243A2ED8C(v12);
    v17 = v16;
    v18 = sub_243A2F704(v13, v12, *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_isBreakoutAvailable));
    v20 = v19;

    sub_243A484E8(&qword_27ED98FB0, type metadata accessor for RecommendationsController);
    sub_243AC1668();
    sub_243AC1678();

    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v15;
    v28 = v17;

    sub_243AC16B8();
    sub_243AC1668();
    sub_243AC1678();

    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v18;
    v28 = v20;

    sub_243AC16B8();
    if (v13 >> 62)
    {
      v21 = sub_243AC2DF8();
    }

    else
    {
      v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v21;

    sub_243AC16B8();
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v22 = sub_243AC1468();
    __swift_project_value_buffer(v22, qword_27EDA14A8);
    v23 = sub_243AC1448();
    v24 = sub_243AC2B58();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_243A1B000, v23, v24, "Could not get recommendationInfo from recommendation rules. Using default strings.", v25, 2u);
      MEMORY[0x245D47D20](v25, -1, -1);
    }

    sub_243A484E8(&qword_27ED98FB0, type metadata accessor for RecommendationsController);
    sub_243AC1668();
    sub_243AC1678();

    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v26;
    v28 = v6;

    sub_243AC16B8();
    sub_243AC1668();
    sub_243AC1678();

    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v8;
    v28 = v10;

    sub_243AC16B8();
  }
}

uint64_t sub_243A3C0CC(void *a1)
{
  v1 = a1;
  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_243A3C118(void *a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19[-v8];
  v10 = *a2;
  v11 = sub_243AC2A98();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_243AC2A58();

  v12 = a1;
  v13 = sub_243AC2A48();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = v3;
  *(v14 + 40) = v12;
  *(v14 + 48) = v10;
  sub_243A3306C(0, 0, v9, &unk_243AC5210, v14);

  [*(v3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsActionCache) trackActionDismissedForRecommendation_];
  v16 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations);
  v21 = v12;

  os_unfair_lock_lock(v16 + 6);
  sub_243A46E28(v16 + 16);
  os_unfair_lock_unlock(v16 + 6);

  v17 = *(*(v3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController) + 32);
  v20 = v12;

  os_unfair_lock_lock((v17 + 24));
  sub_243A49930((v17 + 16));
  os_unfair_lock_unlock((v17 + 24));

  v22[0] = v10;
  return sub_243A3C4DC(v12, v22);
}

uint64_t sub_243A3C324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_243AC2A58();
  v5[4] = sub_243AC2A48();
  v7 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A3C3BC, v7, v6);
}

uint64_t sub_243A3C3BC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_243A3F20C(v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_243A3C42C(uint64_t *a1, id a2)
{
  v4 = [a2 identifier];
  v5 = sub_243AC2858();
  v7 = v6;

  v8 = a2;
  v9 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a1;
  sub_243A8B208(v8, v5, v7, isUniquelyReferenced_nonNull_native);

  *a1 = v12;
  return result;
}

uint64_t sub_243A3C4DC(void *a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  v10 = *a2;
  v11 = [a1 identifier];
  sub_243AC2858();

  v12 = sub_243A5B5E4();
  if (v12 > 0xEu || ((1 << v12) & 0x6238) == 0)
  {
    v25 = *MEMORY[0x277CFB150];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98EE8, &unk_243AC8050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_243AC51A0;
    *(inited + 32) = a1;
    HIBYTE(v29) = v10;
    v27 = a1;
    sub_243A3D620(v25, inited, 0, &v29 + 7);
    swift_setDeallocating();
    v28 = *(inited + 16);
    swift_arrayDestroy();
  }

  else
  {
    v14 = *MEMORY[0x277CFB150];
    sub_243A40E70();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_243AC51B0;
  v16 = [a1 identifier];
  v17 = sub_243AC2858();
  v19 = v18;

  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v20 = sub_243AC2A98();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  sub_243AC2A58();

  v21 = sub_243AC2A48();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v21;
  *(v22 + 24) = v23;
  *(v22 + 32) = v15;
  *(v22 + 40) = 5;
  *(v22 + 56) = 0;
  *(v22 + 64) = 0;
  *(v22 + 48) = v3;
  *(v22 + 72) = 2049;
  sub_243A3306C(0, 0, v9, &unk_243AC58F0, v22);
}

uint64_t sub_243A3C784(unint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v17 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_243AC2DF8())
  {
    v15 = v3;
    v5 = 0;
    v3 = a1 & 0xF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x245D470F0](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 identifier];
      sub_243AC2858();

      v10 = sub_243A5B5E4();
      if (v10 > 8)
      {
        if (v10 != 9 && v10 != 13 && v10 != 14)
        {
LABEL_18:
          sub_243AC2D68();
          v11 = *(v17 + 16);
          sub_243AC2D88();
          sub_243AC2D98();
          sub_243AC2D78();
          goto LABEL_5;
        }
      }

      else if (v10 != 3 && v10 != 4 && v10 != 5)
      {
        goto LABEL_18;
      }

LABEL_5:
      ++v5;
      if (v8 == i)
      {
        v12 = v17;
        v3 = v15;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_25:
  v13 = *MEMORY[0x277CFB158];
  v16 = v3;
  sub_243A3D620(v13, v12, 0, &v16);
}

void sub_243A3C96C(void *a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  v10 = *a2;
  v11 = *MEMORY[0x277CFB118];
  v12 = [a1 identifier];
  sub_243AC2858();

  v13 = sub_243A5B5E4();
  if (v13 > 0xEu || ((1 << v13) & 0x6238) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98EE8, &unk_243AC8050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_243AC51A0;
    *(inited + 32) = a1;
    HIBYTE(v27) = v10;
    v25 = a1;
    sub_243A3D620(v11, inited, 0, &v27 + 7);
    swift_setDeallocating();
    v26 = *(inited + 16);
    swift_arrayDestroy();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_243AC51B0;
  v16 = [a1 identifier];
  v17 = sub_243AC2858();
  v19 = v18;

  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v20 = sub_243AC2A98();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  sub_243AC2A58();

  v21 = sub_243AC2A48();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v21;
  *(v22 + 24) = v23;
  *(v22 + 32) = v15;
  *(v22 + 40) = v10;
  *(v22 + 56) = 0;
  *(v22 + 64) = 0;
  *(v22 + 48) = v3;
  *(v22 + 72) = 769;
  sub_243A3306C(0, 0, v9, &unk_243AC5220, v22);
}

uint64_t sub_243A3CC10(void *a1, uint64_t a2)
{
  v5 = [a1 category];
  v6 = sub_243AC2858();
  v8 = v7;

  v9 = *MEMORY[0x277CFB160];
  if (v6 == sub_243AC2858() && v8 == v10)
  {
  }

  else
  {
    v12 = sub_243AC2EE8();

    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allRecommendations);
      MEMORY[0x28223BE20](v13);

      os_unfair_lock_lock(v14 + 6);
      sub_243A49960(v14 + 16);
      os_unfair_lock_unlock(v14 + 6);

      v16 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations);
      MEMORY[0x28223BE20](v15);

      os_unfair_lock_lock(v16 + 6);
      sub_243A49960(v16 + 16);
      os_unfair_lock_unlock(v16 + 6);
    }
  }

  v17 = [a1 storageRecoverable];
  v18 = [v17 integerValue];

  result = v18 - a2;
  if (!__OFSUB__(v18, a2))
  {
    v20 = sub_243AC2B08();
    [a1 setStorageRecoverable_];
    v21 = [a1 storageRecoverable];
    v22 = [v21 integerValue];

    if (v22 <= 0)
    {
      v23 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allRecommendations);
    }

    else
    {
      v23 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations);
    }

    (MEMORY[0x28223BE20])();

    os_unfair_lock_lock(v23 + 6);
    sub_243A49960(v23 + 16);
    os_unfair_lock_unlock(v23 + 6);
  }

  __break(1u);
  return result;
}

uint64_t sub_243A3CEE0(int a1, id a2)
{
  v2 = [a2 identifier];
  v3 = sub_243AC2858();
  v5 = v4;

  return sub_243A8868C(0, v3, v5);
}

void sub_243A3CF58(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - v10;
  v12 = *a3;
  v13 = [a1 category];
  v14 = sub_243AC2858();
  v16 = v15;

  v17 = *MEMORY[0x277CFB160];
  if (v14 == sub_243AC2858() && v16 == v18)
  {

    if (a2 > 0)
    {
LABEL_7:
      sub_243A3F20C(a1);
      if (([a1 completed] & 1) == 0)
      {
        [*(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsActionCache) trackActionCompletedForRecommendation_];
      }

      v43 = v12;
      sub_243A3E00C(a1, a2, &v43);
      v21 = [a1 identifier];
      sub_243AC2858();

      v22 = sub_243A5B5E4();
      if (v22 <= 0xE && ((1 << v22) & 0x6238) != 0)
      {
        v23 = *MEMORY[0x277CFB120];
        sub_243A40E70();
      }

      else
      {
        v37 = *MEMORY[0x277CFB120];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98EE8, &unk_243AC8050);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_243AC51A0;
        *(inited + 32) = a1;
        v43 = v12;
        v39 = v37;
        v40 = a1;
        sub_243A3D620(v39, inited, a2, &v43);
      }

      sub_243A3CC10(a1, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_243AC51B0;
      v25 = [a1 identifier];
      v26 = sub_243AC2858();
      v28 = v27;

      *(v24 + 32) = v26;
      *(v24 + 40) = v28;
      v29 = sub_243AC2A98();
      (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
      sub_243AC2A58();

      v30 = sub_243AC2A48();
      v31 = swift_allocObject();
      v32 = MEMORY[0x277D85700];
      *(v31 + 16) = v30;
      *(v31 + 24) = v32;
      *(v31 + 32) = v24;
      *(v31 + 40) = v12;
      *(v31 + 48) = v4;
      *(v31 + 56) = 0;
      *(v31 + 64) = a2;
      *(v31 + 72) = 1280;
      sub_243A3306C(0, 0, v11, &unk_243AC5228, v31);

      return;
    }
  }

  else
  {
    v20 = sub_243AC2EE8();

    if ((v20 & 1) == 0 || a2 > 0)
    {
      goto LABEL_7;
    }
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v33 = sub_243AC1468();
  __swift_project_value_buffer(v33, qword_27EDA14A8);
  v42 = sub_243AC1448();
  v34 = sub_243AC2B58();
  if (os_log_type_enabled(v42, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_243A1B000, v42, v34, "No storage recovered from declutter recommendation. bailing.", v35, 2u);
    MEMORY[0x245D47D20](v35, -1, -1);
  }

  v36 = v42;
}

uint64_t sub_243A3D3EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  v0 = sub_243A371C8(v12);

  v12 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_243AC2DF8())
  {
    v2 = 0;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x245D470F0](v2, v0);
      }

      else
      {
        if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v3 = *(v0 + 8 * v2 + 32);
      }

      v4 = v3;
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v6 = [v3 identifier];
      sub_243AC2858();

      v7 = sub_243A5B5E4();
      if (v7 > 8)
      {
        if (v7 != 9 && v7 != 13 && v7 != 14)
        {
LABEL_18:
          sub_243AC2D68();
          v8 = *(v12 + 16);
          sub_243AC2D88();
          sub_243AC2D98();
          sub_243AC2D78();
          goto LABEL_5;
        }
      }

      else if (v7 != 3 && v7 != 4 && v7 != 5)
      {
        goto LABEL_18;
      }

LABEL_5:
      ++v2;
      if (v5 == i)
      {
        v9 = v12;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_25:

  v10 = *MEMORY[0x277CFB158];
  LOBYTE(v12) = 0;
  sub_243A3D620(v10, v9, 0, &v12);
}

void sub_243A3D620(void *a1, unint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = v4;
  v9 = *a4;
  v10 = *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationRules);

  os_unfair_lock_lock((v10 + 24));
  v11 = *(v10 + 16);
  if (!v11 || ([v11 copy], sub_243AC2C68(), swift_unknownObjectRelease(), sub_243A2CFF0(0, &qword_27ED98FB8, 0x277CFB1E0), (swift_dynamicCast() & 1) == 0))
  {
    v47 = 0;
  }

  os_unfair_lock_unlock((v10 + 24));
  v12 = v47;

  if (!v47)
  {
    if (qword_27ED98918 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

  v44 = a3;
  if (a2 >> 62)
  {
    v13 = sub_243AC2DF8();
    v45 = a1;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v45 = a1;
    if (v13)
    {
LABEL_7:
      aBlock[0] = MEMORY[0x277D84F90];
      sub_243A64F14(0, v13 & ~(v13 >> 63), 0);
      if ((v13 & 0x8000000000000000) == 0)
      {
        v43 = v9;
        v14 = 0;
        v15 = aBlock[0];
        do
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x245D470F0](v14, a2);
          }

          else
          {
            v16 = *(a2 + 8 * v14 + 32);
          }

          v17 = v16;
          v18 = [v16 identifier];
          v19 = sub_243AC2858();
          v21 = v20;

          aBlock[0] = v15;
          v23 = *(v15 + 16);
          v22 = *(v15 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_243A64F14((v22 > 1), v23 + 1, 1);
            v15 = aBlock[0];
          }

          ++v14;
          *(v15 + 16) = v23 + 1;
          v24 = v15 + 16 * v23;
          *(v24 + 32) = v19;
          *(v24 + 40) = v21;
        }

        while (v13 != v14);
        v9 = v43;
        goto LABEL_21;
      }

      __break(1u);
LABEL_35:
      swift_once();
LABEL_17:
      v25 = sub_243AC1468();
      __swift_project_value_buffer(v25, qword_27EDA14C0);
      v26 = sub_243AC1448();
      v27 = sub_243AC2B58();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_243A1B000, v26, v27, "Rule Configuration is unavailable bailing.", v28, 2u);
        MEMORY[0x245D47D20](v28, -1, -1);
      }

      goto LABEL_33;
    }
  }

  v15 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_21:
    v26 = [objc_allocWithZone(MEMORY[0x277CFB1C8]) initWithAccount_];
    if (v9 == 5)
    {

      if (qword_27ED98918 != -1)
      {
        swift_once();
      }

      v29 = sub_243AC1468();
      __swift_project_value_buffer(v29, qword_27EDA14C0);
      v30 = sub_243AC1448();
      v31 = sub_243AC2B48();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_243A1B000, v30, v31, "Context needed to send recommendation server status. Bailing", v32, 2u);
        MEMORY[0x245D47D20](v32, -1, -1);
      }
    }

    else
    {
      v33 = sub_243AC2978();
      v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v35 = sub_243AC2818();

      v36 = swift_allocObject();
      v36[2] = v45;
      v36[3] = v15;
      v36[4] = v5;
      aBlock[4] = sub_243A48F80;
      aBlock[5] = v36;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_243AB1A78;
      aBlock[3] = &block_descriptor_393;
      v37 = _Block_copy(aBlock);
      v38 = v45;

      [v26 sendRecommendationStatus:v38 configuration:v12 recommendationIdentifiers:v33 storageRecovered:v34 context:v35 completion:v37];
      _Block_release(v37);

      v26 = v35;
    }

    goto LABEL_33;
  }

  if (qword_27ED98918 != -1)
  {
    swift_once();
  }

  v39 = sub_243AC1468();
  __swift_project_value_buffer(v39, qword_27EDA14C0);
  v40 = sub_243AC1448();
  v41 = sub_243AC2B48();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_243A1B000, v40, v41, "No recommendations in the list to notify server about, bailing.", v42, 2u);
    MEMORY[0x245D47D20](v42, -1, -1);
  }

  v26 = v12;
LABEL_33:
}

void sub_243A3DC80(void *a1, void *a2, uint64_t a3)
{
  v29 = a2;
  type metadata accessor for CERecommendationStatus(0);
  v6 = a2;
  v7 = sub_243AC2878();
  v9 = v8;
  if (a1)
  {
    if (qword_27ED98918 != -1)
    {
      swift_once();
    }

    v10 = sub_243AC1468();
    __swift_project_value_buffer(v10, qword_27EDA14C0);

    v11 = a1;
    v12 = sub_243AC1448();
    v13 = sub_243AC2B58();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v14 = 136315394;
      v17 = sub_243AB73D8(v7, v9, &v29);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2112;
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v19;
      *v15 = v19;
      _os_log_impl(&dword_243A1B000, v12, v13, "Failed to send status %s to server %@", v14, 0x16u);
      sub_243A2251C(v15, &qword_27ED98BF8, &unk_243AC6150);
      MEMORY[0x245D47D20](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x245D47D20](v16, -1, -1);
      MEMORY[0x245D47D20](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_27ED98918 != -1)
    {
      swift_once();
    }

    v20 = sub_243AC1468();
    __swift_project_value_buffer(v20, qword_27EDA14C0);

    v21 = sub_243AC1448();
    v22 = sub_243AC2B48();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315394;
      v25 = sub_243AB73D8(v7, v9, &v29);

      *(v23 + 4) = v25;
      *(v23 + 12) = 2080;
      v26 = MEMORY[0x245D46D70](a3, MEMORY[0x277D837D0]);
      v28 = sub_243AB73D8(v26, v27, &v29);

      *(v23 + 14) = v28;
      _os_log_impl(&dword_243A1B000, v21, v22, "Status %s sent for recommendation %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D47D20](v24, -1, -1);
      MEMORY[0x245D47D20](v23, -1, -1);
    }

    else
    {
    }

    sub_243A40E70();
  }
}

void sub_243A3E00C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v84 - v10;
  v12 = *a3;
  v13 = *&v3[OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_rulesMap];

  v14 = [a1 identifier];
  v15 = sub_243AC2858();
  v17 = v16;

  v100 = v15;
  v101 = v17;
  KeyPath = swift_getKeyPath();
  v98 = sub_243A499B0;
  v99 = KeyPath;

  os_unfair_lock_lock((v13 + 24));
  sub_243A49894((v13 + 16), v103);
  os_unfair_lock_unlock((v13 + 24));

  v19 = v103[0];

  if (v19)
  {
    [a1 copy];
    sub_243AC2C68();
    swift_unknownObjectRelease();
    sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
    swift_dynamicCast();
    v20 = v102;
    v89 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController;
    v21 = *&v4[OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController];
    v90 = v19;

    sub_243AA8578(v20, v19);

    sub_243A2CFF0(0, &qword_27ED98B88, 0x277CFB1B8);
    v22 = sub_243AC2978();
    v95 = v20;
    [v20 setActions_];

    if (v12 == 2)
    {
LABEL_41:
    }

    else
    {
      v34 = sub_243AC2EE8();

      if ((v34 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_243AC16A8();

        v35 = v103[0];
        if (v103[0] >> 62)
        {
          v36 = sub_243AC2DF8();
          if (v36)
          {
LABEL_12:
            v85 = v19;
            v19 = a1;
            v86 = v4;
            v87 = a2;
            v88 = v11;
            v37 = 0;
            v93 = v36;
            v94 = v35 & 0xC000000000000001;
            v91 = v35 + 32;
            v92 = v35 & 0xFFFFFFFFFFFFFF8;
            v96 = v35;
            do
            {
              if (v94)
              {
                MEMORY[0x245D470F0](v37, v35);
                v38 = __OFADD__(v37, 1);
                v39 = v37 + 1;
                if (v38)
                {
                  goto LABEL_80;
                }
              }

              else
              {
                if (v37 >= *(v92 + 16))
                {
                  goto LABEL_84;
                }

                v40 = *(v91 + 8 * v37);

                v38 = __OFADD__(v37, 1);
                v39 = v37 + 1;
                if (v38)
                {
                  goto LABEL_80;
                }
              }

              swift_getKeyPath();
              swift_getKeyPath();
              sub_243AC16A8();

              v97 = v39;
              if (v103[0] >> 62)
              {
                v41 = sub_243AC2DF8();

                if (v41 < 0)
                {
                  __break(1u);
                  goto LABEL_41;
                }
              }

              else
              {
                v41 = *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              a1 = -v41;
              v42 = 4;
              while (1)
              {
                v35 = v42;
                if (a1 + v42 == 4)
                {
                  goto LABEL_13;
                }

                v44 = v42 - 4;
                if (__OFADD__(v42 - 4, 1))
                {
LABEL_77:
                  __break(1u);
LABEL_78:
                  __break(1u);
LABEL_79:
                  while (2)
                  {
                    __break(1u);
LABEL_80:
                    __break(1u);
LABEL_81:
                    __break(1u);
LABEL_82:
                    __break(1u);
                    while (1)
                    {
                      __break(1u);
LABEL_84:
                      __break(1u);
LABEL_85:
                      v57 = sub_243AC2DF8();
                      if (!v57)
                      {
                        goto LABEL_74;
                      }

LABEL_44:
                      v85 = v19;
                      v19 = a1;
                      v86 = v4;
                      v87 = a2;
                      v88 = v11;
                      v58 = 0;
                      v93 = v57;
                      v94 = v35 & 0xC000000000000001;
                      v91 = v35 + 32;
                      v92 = v35 & 0xFFFFFFFFFFFFFF8;
                      v96 = v35;
LABEL_46:
                      if (v94)
                      {
                        break;
                      }

                      if (v58 < *(v92 + 16))
                      {
                        v60 = *(v91 + 8 * v58);

                        v38 = __OFADD__(v58, 1);
                        v59 = v58 + 1;
                        if (v38)
                        {
                          goto LABEL_79;
                        }

                        goto LABEL_52;
                      }
                    }

                    MEMORY[0x245D470F0](v58, v35);
                    v38 = __OFADD__(v58, 1);
                    v59 = v58 + 1;
                    if (v38)
                    {
                      continue;
                    }

                    break;
                  }

LABEL_52:
                  swift_getKeyPath();
                  swift_getKeyPath();
                  sub_243AC16A8();

                  v97 = v59;
                  if (v103[0] >> 62)
                  {
                    v61 = sub_243AC2DF8();

                    if (v61 < 0)
                    {
                      __break(1u);
                      goto LABEL_73;
                    }
                  }

                  else
                  {
                    v61 = *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  a1 = -v61;
                  v62 = 4;
                  while (1)
                  {
                    v35 = v62;
                    if (a1 + v62 == 4)
                    {
                      goto LABEL_45;
                    }

                    v64 = v62 - 4;
                    if (__OFADD__(v62 - 4, 1))
                    {
                      __break(1u);
LABEL_76:
                      __break(1u);
                      goto LABEL_77;
                    }

                    swift_getKeyPath();
                    swift_getKeyPath();
                    sub_243AC16A8();

                    if ((v103[0] & 0xC000000000000001) != 0)
                    {
                      v65 = MEMORY[0x245D470F0](v35 - 4, v103[0]);
                    }

                    else
                    {
                      if (v64 >= *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_76;
                      }

                      v65 = *(v103[0] + 8 * v35);
                    }

                    v66 = v65;

                    v67 = [v66 identifier];

                    v11 = sub_243AC2858();
                    v69 = v68;

                    v4 = [v19 identifier];
                    v70 = sub_243AC2858();
                    a2 = v71;

                    if (v11 == v70 && v69 == a2)
                    {
                      break;
                    }

                    v63 = sub_243AC2EE8();

                    v62 = v35 + 1;
                    if (v63)
                    {
                      goto LABEL_65;
                    }
                  }

LABEL_65:
                  swift_getKeyPath();
                  a2 = swift_getKeyPath();
                  a1 = v95;
                  v4 = sub_243AC1698();
                  v73 = v72;
                  v11 = *v72;
                  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
                  *v73 = v11;
                  if (!isUniquelyReferenced_nonNull_bridgeObject || v11 < 0 || (v11 & 0x4000000000000000) != 0)
                  {
                    v11 = sub_243A4CD70(v11);
                    *v73 = v11;
                  }

                  v75 = v11 & 0xFFFFFFFFFFFFFF8;
                  if (v64 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v76 = *(v75 + 8 * v35);
                    *(v75 + 8 * v35) = a1;

                    (v4)(v103, 0);

LABEL_45:

                    v35 = v96;
                    v58 = v97;
                    if (v97 == v93)
                    {
                      goto LABEL_73;
                    }

                    goto LABEL_46;
                  }

                  goto LABEL_81;
                }

                swift_getKeyPath();
                swift_getKeyPath();
                sub_243AC16A8();

                if ((v103[0] & 0xC000000000000001) != 0)
                {
                  v45 = MEMORY[0x245D470F0](v35 - 4, v103[0]);
                }

                else
                {
                  if (v44 >= *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_78;
                  }

                  v45 = *(v103[0] + 8 * v35);
                }

                v46 = v45;

                v47 = [v46 identifier];

                v11 = sub_243AC2858();
                v49 = v48;

                v4 = [v19 identifier];
                v50 = sub_243AC2858();
                a2 = v51;

                if (v11 == v50 && v49 == a2)
                {
                  break;
                }

                v43 = sub_243AC2EE8();

                v42 = v35 + 1;
                if (v43)
                {
                  goto LABEL_33;
                }
              }

LABEL_33:
              swift_getKeyPath();
              a2 = swift_getKeyPath();
              a1 = v95;
              v4 = sub_243AC1698();
              v53 = v52;
              v11 = *v52;
              v54 = swift_isUniquelyReferenced_nonNull_bridgeObject();
              *v53 = v11;
              if (!v54 || v11 < 0 || (v11 & 0x4000000000000000) != 0)
              {
                v11 = sub_243A4CD70(v11);
                *v53 = v11;
              }

              v55 = v11 & 0xFFFFFFFFFFFFFF8;
              if (v44 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_82;
              }

              v56 = *(v55 + 8 * v35);
              *(v55 + 8 * v35) = a1;

              (v4)(v103, 0);

LABEL_13:

              v35 = v96;
              v37 = v97;
            }

            while (v97 != v93);
LABEL_73:
            v11 = v88;
            a2 = v87;
            v4 = v86;
            v19 = v85;
          }
        }

        else
        {
          v36 = *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v36)
          {
            goto LABEL_12;
          }
        }

LABEL_74:

        v77 = *&v4[v89];
        v78 = swift_allocObject();
        swift_weakInit();
        v79 = swift_allocObject();
        v80 = v95;
        *(v79 + 16) = v78;
        *(v79 + 24) = v80;
        v81 = sub_243AC2A98();
        (*(*(v81 - 8) + 56))(v11, 1, 1, v81);
        v82 = swift_allocObject();
        v82[2] = 0;
        v82[3] = 0;
        v82[4] = v80;
        v82[5] = v77;
        v82[6] = v19;
        v82[7] = a2;
        v82[8] = sub_243A48CA4;
        v82[9] = v79;
        v83 = v80;

        sub_243A3306C(0, 0, v11, &unk_243AC58C8, v82);

        return;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_243AC16A8();

    v35 = v103[0];
    if (v103[0] >> 62)
    {
      goto LABEL_85;
    }

    v57 = *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57)
    {
      goto LABEL_44;
    }

    goto LABEL_74;
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v23 = sub_243AC1468();
  __swift_project_value_buffer(v23, qword_27EDA14A8);
  v24 = a1;
  v25 = sub_243AC1448();
  v26 = sub_243AC2B58();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v103[0] = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_243AB73D8(0xD000000000000035, 0x8000000243ACC9F0, v103);
    *(v27 + 12) = 2080;
    v29 = [v24 identifier];
    v30 = sub_243AC2858();
    v32 = v31;

    v33 = sub_243AB73D8(v30, v32, v103);

    *(v27 + 14) = v33;
    _os_log_impl(&dword_243A1B000, v25, v26, "%s Rule not found for %s. Bailing.", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D47D20](v28, -1, -1);
    MEMORY[0x245D47D20](v27, -1, -1);
  }
}

uint64_t sub_243A3ED90(uint64_t a1, void *a2)
{
  v4 = sub_243AC2178();
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_243AC21A8();
  v8 = *(v15 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v15);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    [a2 setStatus_];
    [a2 setCompleted_];
  }

  sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);
  v12 = sub_243AC2BC8();
  aBlock[4] = sub_243A48DF8;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A71700;
  aBlock[3] = &block_descriptor_369;
  v13 = _Block_copy(aBlock);

  sub_243AC2198();
  v17 = MEMORY[0x277D84F90];
  sub_243A484E8(&qword_27ED99860, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
  sub_243A491E8(&qword_27ED99870, &qword_27ED98F90, &qword_243AC5C20);
  sub_243AC2C78();
  MEMORY[0x245D46FA0](0, v11, v7, v13);
  _Block_release(v13);

  (*(v16 + 8))(v7, v4);
  (*(v8 + 8))(v11, v15);
}

uint64_t sub_243A3F0C4()
{
  MEMORY[0x245D46520](0.5, 1.0, 0.0);
  sub_243AC17F8();
}

uint64_t sub_243A3F148()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for RecommendationsController();
    sub_243A484E8(&qword_27ED98FB0, type metadata accessor for RecommendationsController);
    sub_243AC1668();

    sub_243AC1678();
  }

  return result;
}

uint64_t sub_243A3F20C(void *a1)
{
  v2 = sub_243AC2178();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_243AC21A8();
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_243AC21C8();
  v26 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);
  v24 = sub_243AC2BC8();
  sub_243AC21B8();
  sub_243AC21D8();
  v25 = *(v11 + 8);
  v25(v15, v10);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a1;
  aBlock[4] = sub_243A48E5C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A71700;
  aBlock[3] = &block_descriptor_376;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  sub_243AC2198();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243A484E8(&qword_27ED99860, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
  sub_243A491E8(&qword_27ED99870, &qword_27ED98F90, &qword_243AC5C20);
  sub_243AC2C78();
  v22 = v24;
  MEMORY[0x245D46F80](v17, v9, v5, v20);
  _Block_release(v20);

  (*(v29 + 8))(v5, v2);
  (*(v27 + 8))(v9, v28);
  return (v25)(v17, v26);
}

uint64_t sub_243A3F614(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_243A3F7C4(a2);

    if (v4)
    {
      MEMORY[0x245D46520](result, 0.5, 1.0, 0.0);
      sub_243AC17F8();
    }
  }

  return result;
}

uint64_t sub_243A3F6D0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for RecommendationsController();
    sub_243A484E8(&qword_27ED98FB0, type metadata accessor for RecommendationsController);
    sub_243AC1668();

    sub_243AC1678();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_userIsCompletingRecommendation) = 0;
  }

  return result;
}

uint64_t sub_243A3F7C4(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  if (v19 >> 62)
  {
    result = sub_243AC2DF8();
    v3 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v3 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v4 = 0;
  do
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      MEMORY[0x245D470F0](v4);
    }

    else
    {
      v10 = *(v19 + 8 * v4 + 32);
    }

    ++v4;
    v5 = [a1 identifier];
    v6 = sub_243AC2858();
    v8 = v7;

    v9 = sub_243A4C808(v6, v8);
  }

  while (v3 != v4);
LABEL_11:

  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  if (v19 >> 62)
  {
    result = sub_243AC2DF8();
    v11 = result;
    if (result)
    {
LABEL_13:
      if (v11 >= 1)
      {
        LOBYTE(v12) = 0;
        v13 = 0;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            MEMORY[0x245D470F0](v13);
            if (!v12)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v14 = *(v19 + 8 * v13 + 32);

            if (!v12)
            {
LABEL_21:
              v15 = [a1 identifier];
              v16 = sub_243AC2858();
              v18 = v17;

              v12 = sub_243A4C808(v16, v18);

              goto LABEL_16;
            }
          }

          v12 = 1;
LABEL_16:
          ++v13;

          if (v11 == v13)
          {
            goto LABEL_24;
          }
        }
      }

      goto LABEL_26;
    }
  }

  else
  {
    v11 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_13;
    }
  }

  v12 = 0;
LABEL_24:

  return v9 || v12;
}

uint64_t sub_243A3FA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 209) = v14;
  *(v8 + 168) = a7;
  *(v8 + 176) = a8;
  *(v8 + 208) = a5;
  *(v8 + 152) = a4;
  *(v8 + 160) = a6;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0) - 8) + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  sub_243AC2A58();
  *(v8 + 200) = sub_243AC2A48();
  v11 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A3FB50, v11, v10);
}

id sub_243A3FB50()
{
  v84 = v0;
  v1 = *(v0 + 160);
  v2 = *(*(v0 + 152) + 16);
  v79 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_rulesMap;
  v76 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_analytics;
  v74 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_ranksMap;
  swift_beginAccess();
  v77 = v2;
  if (v2)
  {
    v3 = 0;
    v75 = *(v0 + 168);
    v78 = *(v0 + 152) + 32;
    v73 = v1;
    do
    {
      v5 = *(v0 + 208);
      v6 = (v78 + 16 * v3);
      v8 = *v6;
      v7 = v6[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98FD0, &unk_243AC58D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_243AC51B0;
      *(inited + 32) = 0x696669746E656469;
      *(inited + 40) = 0xEA00000000007265;

      *(inited + 48) = sub_243AC2818();
      v10 = sub_243A2E9D8(inited);
      swift_setDeallocating();
      sub_243A2251C(inited + 32, &qword_27ED98FD8, &unk_243AC82C0);
      v82 = v3;
      if (v5 <= 4)
      {
        v11 = sub_243AC2818();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83 = v10;
        sub_243A8B530(v11, 0x747865746E6F63, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
        v10 = v83;
      }

      v13 = *(v1 + v79);
      v14 = swift_task_alloc();
      *v14 = v8;
      v14[1] = v7;
      KeyPath = swift_getKeyPath();

      v16 = swift_task_alloc();
      *(v16 + 16) = sub_243A499B0;
      *(v16 + 24) = KeyPath;

      os_unfair_lock_lock((v13 + 24));
      sub_243A49894((v13 + 16), &v83);
      os_unfair_lock_unlock((v13 + 24));

      v17 = v83;

      if (v17)
      {
        v18 = [v17 rankingHint];
        v19 = swift_isUniquelyReferenced_nonNull_native();
        v83 = v10;
        sub_243A8B530(v18, 0x65726F6373, 0xE500000000000000, v19);

        v10 = v83;
      }

      if (v75)
      {
        v20 = v75;
        result = [v20 actionType];
        if (!result)
        {
LABEL_58:
          __break(1u);
          return result;
        }

        v22 = result;
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v83 = v10;
        sub_243A8B530(v22, 0x79546E6F69746361, 0xEA00000000006570, v23);

        v10 = v83;
      }

      v24 = *(v0 + 160);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_243AC16A8();

      v25 = *(v0 + 128);
      if (v25 >> 62)
      {
        if (v25 < 0)
        {
          v51 = *(v0 + 128);
        }

        v52 = *(v0 + 128);
        v53 = sub_243AC2DF8();

        if (!v53)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v26)
        {
          goto LABEL_41;
        }
      }

      v27 = *(v0 + 160);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_243AC16A8();

      v28 = *(v0 + 136);
      v81 = v10;
      v80 = v7;
      if (v28 >> 62)
      {
        result = sub_243AC2DF8();
        v29 = result;
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v30 = 0;
      v31 = 0;
      while (v29 != v30)
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x245D470F0](v30, v28);
          if (__OFADD__(v30, 1))
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v32 = *(v28 + 8 * v30 + 32);

          if (__OFADD__(v30, 1))
          {
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_243AC16A8();

        v33 = *(v0 + 144);
        if (v33 >> 62)
        {
          if (v33 < 0)
          {
            v36 = *(v0 + 144);
          }

          v34 = sub_243AC2DF8();
        }

        else
        {
          v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v30;
        v35 = __OFADD__(v31, v34);
        v31 += v34;
        if (v35)
        {
          goto LABEL_57;
        }
      }

      v37 = sub_243AC2B08();
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v83 = v81;
      sub_243A8B530(v37, 0xD000000000000014, 0x8000000243ACCA30, v38);
      v10 = v83;
      v1 = v73;
      v39 = *(v73 + v74);
      if (*(v39 + 16))
      {
        v40 = *(v73 + v74);

        v41 = sub_243A2DDC0(v8, v80);
        v43 = v42;

        if (v43)
        {
          v44 = *(*(v39 + 56) + 8 * v41);

          v45 = sub_243AC2B08();
          v46 = swift_isUniquelyReferenced_nonNull_native();
          v83 = v10;
          sub_243A8B530(v45, 1802396018, 0xE400000000000000, v46);
          v10 = v83;
          if (*(v0 + 209))
          {
            goto LABEL_42;
          }

          goto LABEL_35;
        }
      }

LABEL_41:

      if (*(v0 + 209))
      {
LABEL_42:
        v50 = v10;
        goto LABEL_43;
      }

LABEL_35:
      v47 = *(v0 + 176);
      v48 = sub_243AC2B08();
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v83 = v10;
      sub_243A8B530(v48, 0xD000000000000010, 0x8000000243ACBE00, v49);
      v50 = v83;
LABEL_43:
      v54 = *(v0 + 184);
      v55 = *(v0 + 192);
      v56 = *(v0 + 210);
      v57 = *(v1 + v76);
      sub_243AC2A68();
      v58 = sub_243AC2A98();
      v59 = *(v58 - 8);
      (*(v59 + 56))(v55, 0, 1, v58);
      v60 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v61 = swift_allocObject();
      *(v61 + 16) = 0;
      *(v61 + 24) = 0;
      *(v61 + 32) = v60;
      *(v61 + 40) = v50;
      *(v61 + 48) = v56;
      sub_243A47650(v55, v54);
      LODWORD(v55) = (*(v59 + 48))(v54, 1, v58);

      v62 = *(v0 + 184);
      if (v55 == 1)
      {
        sub_243A2251C(*(v0 + 184), &qword_27ED98998, &qword_243AC4FD0);
      }

      else
      {
        sub_243AC2A88();
        (*(v59 + 8))(v62, v58);
      }

      v64 = *(v61 + 16);
      v63 = *(v61 + 24);
      swift_unknownObjectRetain();

      if (v64)
      {
        swift_getObjectType();
        v65 = sub_243AC2A28();
        v67 = v66;
        swift_unknownObjectRelease();
      }

      else
      {
        v65 = 0;
        v67 = 0;
      }

      v68 = swift_allocObject();
      *(v68 + 16) = &unk_243AC58E0;
      *(v68 + 24) = v61;
      if (v67 | v65)
      {
        *(v0 + 72) = 0;
        *(v0 + 80) = 0;
        *(v0 + 88) = v65;
        *(v0 + 96) = v67;
      }

      v3 = v82 + 1;
      v4 = *(v0 + 192);
      swift_task_create();
      sub_243A2251C(v4, &qword_27ED98998, &qword_243AC4FD0);
    }

    while (v82 + 1 != v77);
  }

  v70 = *(v0 + 192);
  v69 = *(v0 + 200);
  v71 = *(v0 + 184);

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_243A40520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0) - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A405BC, 0, 0);
}

uint64_t sub_243A405BC()
{
  v1 = v0[3];
  v2 = *(v0[2] + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_analytics);
  v3 = sub_243A2E9D8(MEMORY[0x277D84F90]);
  sub_243AC2A68();
  v4 = sub_243AC2A98();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v5;
  *(v6 + 40) = v3;
  *(v6 + 48) = 2;
  sub_243A7970C(0, 0, v1, &unk_243AC59A0, v6);

  sub_243A2251C(v1, &qword_27ED98998, &qword_243AC4FD0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_243A40718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0) - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A407B4, 0, 0);
}

uint64_t sub_243A407B4()
{
  v1 = v0[3];
  v2 = *(v0[2] + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_analytics);
  v3 = sub_243A2E9D8(MEMORY[0x277D84F90]);
  sub_243AC2A68();
  v4 = sub_243AC2A98();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v5;
  *(v6 + 40) = v3;
  *(v6 + 48) = 4;
  sub_243A7970C(0, 0, v1, &unk_243AC58C0, v6);

  sub_243A2251C(v1, &qword_27ED98998, &qword_243AC4FD0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_243A40910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 74) = a7;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0) - 8) + 64) + 15;
  *(v7 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A409B4, 0, 0);
}

uint64_t sub_243A409B4()
{
  v1 = *(v0 + 74);
  *(v0 + 48) = *(*(v0 + 16) + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_analytics);
  *(v0 + 72) = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_243A40A6C;
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);

  return sub_243A79F3C(v4, v3, (v0 + 72));
}

uint64_t sub_243A40A6C(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *v1;

  if (a1)
  {
    v6 = *(v3 + 40);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    *(v3 + 73) = *(v3 + 74);
    v9 = (v3 + 73);
    v10 = swift_task_alloc();
    *(v9 - 9) = v10;
    *v10 = v5;
    v10[1] = sub_243A40BF8;
    v11 = *(v9 - 25);
    v12 = *(v9 - 41);
    v13 = *(v9 - 49);

    return sub_243A79D30(v9, v13, v12);
  }
}

uint64_t sub_243A40BF8()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_243A40CF4, 0, 0);
}

uint64_t sub_243A40CF4()
{
  v1 = *(v0 + 74);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_243AC51B0;
  *(v6 + 32) = v5;
  *(v6 + 40) = v3;
  v7 = sub_243AC2A98();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_243AC2A58();

  v8 = sub_243AC2A48();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = v6;
  *(v9 + 40) = v1;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 48) = v4;
  *(v9 + 72) = 2305;
  sub_243A3306C(0, 0, v2, &unk_243AC5330, v9);

  v11 = *(v0 + 40);

  v12 = *(v0 + 8);

  return v12();
}

void sub_243A40E70()
{
  v1 = *MEMORY[0x277CFB118];
  v54 = *MEMORY[0x277CFB120];
  v2 = sub_243AC2858();
  v4 = v3;
  if (v2 == sub_243AC2858() && v4 == v5)
  {
    v9 = v54;
    v10 = v1;

    goto LABEL_8;
  }

  v7 = sub_243AC2EE8();
  v53 = v54;
  v8 = v1;

  if (v7)
  {

LABEL_8:
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v11 = sub_243AC1468();
    __swift_project_value_buffer(v11, qword_27EDA14A8);
    v12 = sub_243AC1448();
    v13 = sub_243AC2B48();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_243A1B000, v12, v13, "Will not fetch completed recommendations for cancelled status.", v14, 2u);
      MEMORY[0x245D47D20](v14, -1, -1);
    }

    v15 = v54;
    goto LABEL_23;
  }

  v16 = sub_243AC2858();
  v18 = v17;
  v19 = sub_243AC2858();
  v21 = v20;

  if (v16 == v19 && v18 == v21)
  {
    goto LABEL_20;
  }

  v23 = sub_243AC2EE8();

  if (v23)
  {
LABEL_21:
    v29 = v0;
    v30 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsFilter);
    sub_243A242A0();
    v31 = *(v29 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController);

    sub_243AA47D8();

    dispatch_group_enter(*(v29 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup));
    v32 = *(v29 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsDataFetcher);
    v33 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account;
    v34 = *(v29 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account);
    v35 = swift_allocObject();
    *(v35 + 16) = v29;
    *(v35 + 24) = 1;
    v36 = v34;

    sub_243AC13D8();

    v37 = *(v29 + v33);
    sub_243AC13C8();

    v38 = *(v29 + v33);
    sub_243AC13B8();

LABEL_22:
    v15 = v53;
LABEL_23:

    return;
  }

  v24 = *MEMORY[0x277CFB150];
  v25 = sub_243AC2858();
  v27 = v26;
  if (v25 == sub_243AC2858() && v27 == v28)
  {
LABEL_20:

    goto LABEL_21;
  }

  v39 = sub_243AC2EE8();

  if (v39)
  {
    goto LABEL_21;
  }

  v40 = *MEMORY[0x277CFB158];
  v41 = sub_243AC2858();
  v43 = v42;
  if (v41 == sub_243AC2858() && v43 == v44)
  {
  }

  else
  {
    v45 = sub_243AC2EE8();

    if ((v45 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v46 = v0;
  v47 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsFilter);
  sub_243A242A0();
  v48 = *(v46 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController);

  sub_243AA47D8();

  dispatch_group_enter(*(v46 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup));
  v49 = *(v46 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsDataFetcher);
  v50 = *(v46 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account);
  v51 = swift_allocObject();
  *(v51 + 16) = v46;
  *(v51 + 24) = 1;

  v52 = v50;
  sub_243AC13D8();
}

uint64_t sub_243A41398(void *a1)
{
  v3 = sub_243AC2178();
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_243AC21A8();
  v7 = *(v16 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v16);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);
  v11 = sub_243AC2BC8();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_243A48384;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A71700;
  aBlock[3] = &block_descriptor_246;
  v13 = _Block_copy(aBlock);

  v14 = a1;

  sub_243AC2198();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243A484E8(&qword_27ED99860, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
  sub_243A491E8(&qword_27ED99870, &qword_27ED98F90, &qword_243AC5C20);
  sub_243AC2C78();
  MEMORY[0x245D46FA0](0, v10, v6, v13);
  _Block_release(v13);

  (*(v17 + 8))(v6, v3);
  return (*(v7 + 8))(v10, v16);
}

void sub_243A4169C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  if (v23 == 3)
  {
    if (a2)
    {
      v3 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C10, &qword_243AC4C60);
      sub_243A2CFF0(0, &qword_27ED98FA0, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v4 = [v22 code];

        if (v4 == -1009)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v24 = 1;
LABEL_13:

          sub_243AC16B8();
          if (qword_27ED98910 != -1)
          {
            swift_once();
          }

          v14 = sub_243AC1468();
          __swift_project_value_buffer(v14, qword_27EDA14A8);

          v7 = sub_243AC1448();
          v15 = sub_243AC2B48();

          if (os_log_type_enabled(v7, v15))
          {
            v9 = swift_slowAlloc();
            v10 = swift_slowAlloc();
            *v9 = 138412290;
            swift_getKeyPath();
            swift_getKeyPath();
            sub_243AC16A8();

            if (v24 == 3)
            {
              v16 = 0;
              v17 = 0;
            }

            else
            {
              sub_243A48394();
              swift_allocError();
              *v18 = v24;
              v16 = _swift_stdlib_bridgeErrorToNSError();
              v17 = v16;
            }

            *(v9 + 4) = v16;
            *v10 = v17;
            _os_log_impl(&dword_243A1B000, v7, v15, "RecommendationsController updated error state to %@", v9, 0xCu);
            sub_243A2251C(v10, &qword_27ED98BF8, &unk_243AC6150);
LABEL_25:
            MEMORY[0x245D47D20](v10, -1, -1);
            MEMORY[0x245D47D20](v9, -1, -1);
            goto LABEL_26;
          }

          goto LABEL_26;
        }

        if (v4 == -1001)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v24 = 2;
          goto LABEL_13;
        }
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v24 = 0;
    goto LABEL_13;
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v5 = sub_243AC1468();
  __swift_project_value_buffer(v5, qword_27EDA14A8);
  v6 = a2;

  v7 = sub_243AC1448();
  v8 = sub_243AC2B48();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    if (a2)
    {
      v11 = a2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v9 + 4) = v12;
    *v10 = v13;
    *(v9 + 12) = 2112;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_243AC16A8();

    if (v23 == 3)
    {
      v19 = 0;
      v20 = 0;
    }

    else
    {
      sub_243A48394();
      swift_allocError();
      *v21 = v23;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    *(v9 + 14) = v19;
    v10[1] = v20;
    _os_log_impl(&dword_243A1B000, v7, v8, "RecommendationsController skipping error %@, already have %@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98BF8, &unk_243AC6150);
    swift_arrayDestroy();
    goto LABEL_25;
  }

LABEL_26:
}

uint64_t sub_243A41BC0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_analytics);
  v2 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_seenRecommendations);
  v3 = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_seenRecommendations) = MEMORY[0x277D84FA0];

  v4 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_seenCompletedRecommendations);
  *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_seenCompletedRecommendations) = v3;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_243A41C58()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C38, &qword_243AC4C90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v45 - v5;
  v7 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_breakoutsMap;
  swift_beginAccess();
  v48 = v0;
  v8 = *(v0 + v7);
  v9 = *(v8 + 16);
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = sub_243AA69F4(*(v8 + 16), 0);
  v11 = sub_243AA82C8(v50, v10 + 4, v9, v8);
  v1 = v50[0];
  v2 = v50[1];
  swift_bridgeObjectRetain_n();
  sub_243A48354();
  if (v11 != v9)
  {
    __break(1u);
LABEL_4:

    v10 = MEMORY[0x277D84F90];
  }

  v45 = v6;
  v50[0] = v10;
  sub_243A45260(v50);

  v12 = v50[0];
  v13 = [objc_allocWithZone(MEMORY[0x277CFB1D8]) init];
  v14 = type metadata accessor for RecommendationSectionViewModel();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v50[0] = MEMORY[0x277D84F90];
  v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F40, &qword_243AC52E0);
  v19 = sub_243AC1688();
  v46 = v18;
  *(v17 + OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationSectionViewModel_sectionModel) = v18;
  v47 = v17;
  *(v17 + OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationSectionViewModel_totalSectionScore) = 0;
  v20 = v12[2];
  v21 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations;
  v49 = v12;
  v22 = (v12 + 5);
  v23 = -v20;
  v24 = -1;
  do
  {
    if (v23 + v24 == -1)
    {

      return MEMORY[0x277D84F90];
    }

    if (++v24 >= v49[2])
    {
      __break(1u);
LABEL_21:
      sub_243AC29B8();
      goto LABEL_17;
    }

    v25 = *(v22 - 1);
    v26 = *v22;
    v27 = *(v48 + v21);
    MEMORY[0x28223BE20](v19);
    *(&v45 - 2) = v28;
    *(&v45 - 1) = v26;
    KeyPath = swift_getKeyPath();
    v1 = &v45;
    v30 = MEMORY[0x28223BE20](KeyPath);
    *(&v45 - 2) = sub_243A499B0;
    *(&v45 - 1) = v30;

    os_unfair_lock_lock((v27 + 24));
    sub_243A49894((v27 + 16), v50);
    v22 += 3;
    os_unfair_lock_unlock((v27 + 24));

    v2 = v50[0];
  }

  while (!v2);

  v31 = [v2 identifier];
  sub_243AC2858();

  v32 = sub_243A5B5E4();
  if (v32 <= 0xE && ((1 << v32) & 0x6238) != 0)
  {
    v33 = [*(v48 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsActionCache) lastDismissedTimestamp_];
    v24 = v47;
    if (v33)
    {
      v34 = v45;
      v35 = v33;
      sub_243AC1248();

      v36 = sub_243AC1268();
      (*(*(v36 - 8) + 56))(v34, 0, 1, v36);
      sub_243A2251C(v34, &qword_27ED98C38, &qword_243AC4C90);
      goto LABEL_18;
    }

    v38 = sub_243AC1268();
    v39 = v45;
    (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
    sub_243A2251C(v39, &qword_27ED98C38, &qword_243AC4C90);
    swift_getKeyPath();
    swift_getKeyPath();
    v40 = v2;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = v2;
    v24 = v47;
  }

  v1 = sub_243AC1698();
  v43 = v42;
  MEMORY[0x245D46D30]();
  if (*((*v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_21;
  }

LABEL_17:
  sub_243AC29D8();
  (v1)(v50, 0);

LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98EE8, &unk_243AC8050);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_243AC51A0;
  *(v44 + 32) = v24;

  return v44;
}

uint64_t sub_243A42228(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A422C4, 0, 0);
}

uint64_t sub_243A422C4()
{
  v1 = sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F78, &qword_243AC5468);
  v3 = *(MEMORY[0x277D858E8] + 4);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_243A423C4;
  v5 = *(v0 + 32);

  return MEMORY[0x282200600](v0 + 16, v1, v2, 0, 0, &unk_243AC5478, v5, v1);
}

uint64_t sub_243A423C4()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_243A424C0, 0, 0);
}

void sub_243A424C0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v1 + 40;
    while (1)
    {
      v7 = (v6 + 16 * v5);
      v8 = v5;
      while (1)
      {
        if (v8 >= v4)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

        v5 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_17;
        }

        if (*(v2 + 16))
        {
          break;
        }

LABEL_4:
        ++v8;
        v7 += 2;
        if (v5 == v4)
        {
          goto LABEL_13;
        }
      }

      v9 = *(v7 - 1);
      v10 = *v7;

      v11 = sub_243A2DDC0(v9, v10);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = *(*(v2 + 56) + 8 * v11);

      MEMORY[0x245D46D30](v14);
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_243AC29B8();
      }

      sub_243AC29D8();
      v3 = v23;
      if (v5 == v4)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_4;
  }

LABEL_13:
  v17 = v0[4];
  v16 = v0[5];

  v18 = sub_243AC2A98();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  sub_243AC2A58();

  v19 = sub_243AC2A48();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v17;
  v20[5] = v3;
  sub_243A3306C(0, 0, v16, &unk_243AC5488, v20);

  v22 = v0[1];

  v22();
}

uint64_t sub_243A426F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_243A42718, 0, 0);
}

uint64_t sub_243A42718()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account;
  v0[4] = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsDataFetcher);
  v0[5] = v2;
  v3 = *(v1 + v2);
  v4 = *(MEMORY[0x277CFB0E8] + 4);
  v8 = (*MEMORY[0x277CFB0E8] + MEMORY[0x277CFB0E8]);
  v0[6] = v3;
  v5 = v3;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_243A427F8;

  return v8(v5, 0);
}

uint64_t sub_243A427F8(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_243A42914, 0, 0);
}

uint64_t sub_243A42914()
{
  v1 = *(v0[3] + v0[5]);
  v0[9] = v1;
  v2 = *(MEMORY[0x277CFB0D8] + 4);
  v7 = (*MEMORY[0x277CFB0D8] + MEMORY[0x277CFB0D8]);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_243A429E0;
  v5 = v0[4];

  return v7(v3, 0);
}

uint64_t sub_243A429E0(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_243A42AFC, 0, 0);
}

uint64_t sub_243A42AFC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = sub_243A2E2A0(MEMORY[0x277D84F90]);
  sub_243AA34A0(v1);
  v4 = v2;
  if (v2 >> 62)
  {
LABEL_28:
    v5 = sub_243AC2DF8();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v37 = v4;
      v38 = v4 & 0xC000000000000001;
      v36 = v4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v38)
        {
          v11 = MEMORY[0x245D470F0](v6, v4);
        }

        else
        {
          if (v6 >= *(v36 + 16))
          {
            goto LABEL_27;
          }

          v11 = *(v4 + 8 * v6 + 32);
        }

        v12 = v11;
        v13 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v4 = v5;
        v14 = [v11 identifier];
        v15 = sub_243AC2858();
        v17 = v16;

        v18 = v12;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = sub_243A2DDC0(v15, v17);
        v22 = v3[2];
        v23 = (v21 & 1) == 0;
        v24 = __OFADD__(v22, v23);
        v25 = v22 + v23;
        if (v24)
        {
          goto LABEL_25;
        }

        v26 = v21;
        if (v3[3] < v25)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_16;
        }

        v31 = v20;
        sub_243A8B978();
        v20 = v31;
        if (v26)
        {
LABEL_4:
          v7 = v20;

          v8 = v3[7];
          v9 = *(v8 + 8 * v7);
          *(v8 + 8 * v7) = v18;

          goto LABEL_5;
        }

LABEL_17:
        v3[(v20 >> 6) + 8] |= 1 << v20;
        v28 = (v3[6] + 16 * v20);
        *v28 = v15;
        v28[1] = v17;
        *(v3[7] + 8 * v20) = v18;

        v29 = v3[2];
        v24 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v24)
        {
          goto LABEL_26;
        }

        v3[2] = v30;
LABEL_5:
        ++v6;
        v5 = v4;
        v10 = v13 == v4;
        v4 = v37;
        if (v10)
        {
          goto LABEL_29;
        }
      }

      sub_243A8A254(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_243A2DDC0(v15, v17);
      if ((v26 & 1) != (v27 & 1))
      {

        return sub_243AC2F38();
      }

LABEL_16:
      if (v26)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

LABEL_29:
  v33 = *(v35 + 16);

  *v33 = v3;
  v34 = *(v35 + 8);

  return v34();
}

uint64_t sub_243A42DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_243AC2A58();
  v5[5] = sub_243AC2A48();
  v7 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A42E70, v7, v6);
}

uint64_t sub_243A42E70()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v2;

  sub_243AC16B8();
  v4 = v0[1];

  return v4();
}

void sub_243A42F30()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v41 - v4;
  v6 = *(*(v0 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController) + 32);
  v45 = 0xD000000000000023;
  v46 = 0x8000000243ACB660;
  KeyPath = swift_getKeyPath();
  v43 = sub_243A499B0;
  v44 = KeyPath;

  os_unfair_lock_lock((v6 + 24));
  sub_243A47E1C((v6 + 16), &v47);
  os_unfair_lock_unlock((v6 + 24));

  v8 = v47;

  if (v8)
  {

    v9 = sub_243AC2A98();
    v42 = *(*(v9 - 8) + 56);
    v42(v5, 1, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    sub_243AC2A58();

    v11 = sub_243AC2A48();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v10;

    sub_243A3335C(0, 0, v5, &unk_243AC5408, v12);

    v14 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account;
    v15 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_243AC4AC0;
    v17 = *MEMORY[0x277CB8960];
    *(inited + 32) = sub_243AC2858();
    *(inited + 40) = v18;
    v19 = *MEMORY[0x277CB8920];
    *(inited + 48) = sub_243AC2858();
    *(inited + 56) = v20;
    v21 = *MEMORY[0x277CB8980];
    *(inited + 64) = sub_243AC2858();
    *(inited + 72) = v22;
    v23 = v15;
    sub_243A9CBC8(v23, inited);
    v25 = v24;

    swift_setDeallocating();
    v26 = *(inited + 16);
    swift_arrayDestroy();
    v27 = *(v25 + 16);
    if (v27 >= 2)
    {
      v32 = sub_243AA6970(*(v25 + 16), 0);
      v33 = sub_243AA8174(&v47, v32 + 4, v27, v25);
      sub_243A48354();
      if (v33 == v27)
      {
        v34 = *(v1 + v14);
        v35 = sub_243A9CEB0(v32);
        v37 = v36;

        v42(v5, 1, 1, v9);
        v38 = swift_allocObject();
        swift_weakInit();

        v39 = sub_243AC2A48();
        v40 = swift_allocObject();
        v40[2] = v39;
        v40[3] = MEMORY[0x277D85700];
        v40[4] = v38;
        v40[5] = v35;
        v40[6] = v37;

        sub_243A3335C(0, 0, v5, &unk_243AC5418, v40);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v28 = sub_243AC1468();
    __swift_project_value_buffer(v28, qword_27EDA14A8);
    v29 = sub_243AC1448();
    v30 = sub_243AC2B48();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_243A1B000, v29, v30, "Turn on more apps recommendations wasn't dismissed. Banner unavailable.", v31, 2u);
      MEMORY[0x245D47D20](v31, -1, -1);
    }
  }
}

uint64_t sub_243A433F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a1;
  v4[8] = a4;
  sub_243AC2A58();
  v4[9] = sub_243AC2A48();
  v6 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A43490, v6, v5);
}

uint64_t sub_243A43490()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    sub_243AC16B8();
  }

  **(v0 + 56) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_243A43558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  sub_243AC2A58();
  v6[11] = sub_243AC2A48();
  v8 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A435F4, v8, v7);
}

uint64_t sub_243A435F4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 40) = v5;
    *(v0 + 48) = v4;

    sub_243AC16B8();
  }

  **(v0 + 56) = Strong == 0;
  v6 = *(v0 + 8);

  return v6();
}

void sub_243A436E4(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_243A487BC(a2, a3);
}

void sub_243A43764(const void *a1, uint64_t a2, unint64_t a3, void (__cdecl *a4)(CFNotificationCenterRef, void *, CFNotificationName, const void *, CFDictionaryRef))
{
  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v8)
  {
    v9 = v8;
    oslog = sub_243AC2818();
    CFNotificationCenterAddObserver(v9, a1, a4, oslog, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v10 = sub_243AC1468();
    __swift_project_value_buffer(v10, qword_27EDA14A8);

    oslog = sub_243AC1448();
    v11 = sub_243AC2B58();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_243AB73D8(a2, a3, &v15);
      _os_log_impl(&dword_243A1B000, oslog, v11, "Could not get darwin notification center, failed to register object for notification %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x245D47D20](v13, -1, -1);
      MEMORY[0x245D47D20](v12, -1, -1);
    }
  }
}

void sub_243A43914(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_243A48950(a2, a3, "Private relay status change notification received.");
}

void sub_243A4399C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_243A48950(a2, a3, "Private relay config change notification received.");
}

void sub_243A43A24()
{
  v1 = v0;
  v2 = sub_243AC2188();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *MEMORY[0x277CDBDA0];
  sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);
  v7 = *MEMORY[0x277D851A8];
  v22 = v3[13];
  HIDWORD(v20) = v7;
  v22(v6, v7, v2);
  v8 = sub_243AC2BE8();
  v23 = v3[1];
  v23(v6, v2);
  v9 = swift_allocObject();
  swift_weakInit();
  v28 = sub_243A47A60;
  v29 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_243A43E88;
  v27 = &block_descriptor_178;
  v10 = _Block_copy(&aBlock);

  v11 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_keychainSyncNotificationToken;
  swift_beginAccess();
  notify_register_dispatch(v21, (v0 + v11), v8, v10);
  swift_endAccess();
  _Block_release(v10);

  v21 = *MEMORY[0x277CDBE68];
  v12 = v22;
  v22(v6, v7, v2);
  v13 = sub_243AC2BE8();
  v23(v6, v2);
  v14 = swift_allocObject();
  swift_weakInit();
  v28 = sub_243A47AA0;
  v29 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_243A43E88;
  v27 = &block_descriptor_182;
  v15 = _Block_copy(&aBlock);

  swift_beginAccess();
  notify_register_dispatch(v21, (v0 + v11), v13, v15);
  swift_endAccess();
  _Block_release(v15);

  v16 = *MEMORY[0x277CDBE78];
  v12(v6, HIDWORD(v20), v2);
  v17 = sub_243AC2BE8();
  v23(v6, v2);
  v18 = swift_allocObject();
  swift_weakInit();
  v28 = sub_243A47AE0;
  v29 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_243A43E88;
  v27 = &block_descriptor_186;
  v19 = _Block_copy(&aBlock);

  swift_beginAccess();
  notify_register_dispatch(v16, (v1 + v11), v17, v19);
  swift_endAccess();
  _Block_release(v19);
}

uint64_t sub_243A43E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_243A499AC, 0, 0);
}

uint64_t sub_243A43E88(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_243A43EDC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v47 - v6;
  v8 = sub_243AC10C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v13 = sub_243AC1468();
  v14 = __swift_project_value_buffer(v13, qword_27EDA14A8);
  (*(v9 + 16))(v12, a1, v8);
  v49 = v14;
  v15 = sub_243AC1448();
  v16 = sub_243AC2B78();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v47 = v2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v48 = v7;
    v20 = v19;
    v52[0] = v19;
    *v18 = 136315138;
    v21 = sub_243AC1098();
    v23 = v22;
    (*(v9 + 8))(v12, v8);
    v24 = sub_243AB73D8(v21, v23, v52);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_243A1B000, v15, v16, "Reacting to Account did change notification. %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v25 = v20;
    v7 = v48;
    MEMORY[0x245D47D20](v25, -1, -1);
    v26 = v18;
    v2 = v47;
    MEMORY[0x245D47D20](v26, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v27 = sub_243AC10B8();
  if (!v27)
  {
    goto LABEL_16;
  }

  v28 = v27;
  v29 = *MEMORY[0x277CB8A60];
  v50 = sub_243AC2858();
  v51 = v30;
  sub_243AC2CB8();
  if (!*(v28 + 16) || (v31 = sub_243A2DD7C(v52), (v32 & 1) == 0))
  {

    sub_243A1FF9C(v52);
LABEL_16:
    v53 = 0u;
    v54 = 0u;
    return sub_243A2251C(&v53, &qword_27ED989A0, &qword_243AC4470);
  }

  sub_243A20058(*(v28 + 56) + 32 * v31, &v53);
  sub_243A1FF9C(v52);

  if (!*(&v54 + 1))
  {
    return sub_243A2251C(&v53, &qword_27ED989A0, &qword_243AC4470);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v35 = v52[0];
  v34 = v52[1];
  result = [*(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account) identifier];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v36 = result;
  v37 = sub_243AC2858();
  v39 = v38;

  if (v37 == v35 && v39 == v34)
  {
  }

  else
  {
    v40 = sub_243AC2EE8();

    if ((v40 & 1) == 0)
    {
      return result;
    }
  }

  v41 = sub_243AC1448();
  v42 = sub_243AC2B48();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_243A1B000, v41, v42, "Refreshing eligible recommendations for account.", v43, 2u);
    MEMORY[0x245D47D20](v43, -1, -1);
  }

  v44 = sub_243AC2A98();
  (*(*(v44 - 8) + 56))(v7, 1, 1, v44);
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = swift_allocObject();
  v46[2] = 0;
  v46[3] = 0;
  v46[4] = v45;
  sub_243A3335C(0, 0, v7, &unk_243AC5380, v46);
}

uint64_t sub_243A443F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_243A44418, 0, 0);
}

uint64_t sub_243A44418()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_243A34E44(0, 1);
  }

  **(v0 + 40) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

void sub_243A445A8()
{
  v1 = v0;
  v2 = sub_243AC2188();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *MEMORY[0x277D080E0];
  sub_243AC2858();
  sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);
  (*(v3 + 104))(v6, *MEMORY[0x277D851A8], v2);
  v8 = sub_243AC2BE8();
  (*(v3 + 8))(v6, v2);
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_243A478A0;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A43E88;
  aBlock[3] = &block_descriptor_0;
  v10 = _Block_copy(aBlock);

  v11 = sub_243AC2888();

  v12 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_familySyncNotificationToken;
  swift_beginAccess();
  notify_register_dispatch((v11 + 32), (v1 + v12), v8, v10);
  swift_endAccess();
  _Block_release(v10);
}

uint64_t sub_243A447D4(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v11 = sub_243AC1468();
  __swift_project_value_buffer(v11, qword_27EDA14A8);
  v12 = sub_243AC1448();
  v13 = sub_243AC2B78();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_243A1B000, v12, v13, a3, v14, 2u);
    MEMORY[0x245D47D20](v14, -1, -1);
  }

  v15 = sub_243AC2A98();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_243A3335C(0, 0, v10, a5, v17);
}

uint64_t sub_243A449DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_243A449FC, 0, 0);
}

uint64_t sub_243A449FC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_243A34E44(1, 0);
  }

  **(v0 + 40) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_243A44AA0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RecommendationsController();
  result = sub_243AC1668();
  *a1 = result;
  return result;
}

uint64_t sub_243A44B08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  *a2 = v5;
  return result;
}

uint64_t sub_243A44B88(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_243AC16B8();
}

uint64_t sub_243A44C14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  *a2 = v5;
  return result;
}

uint64_t sub_243A44CA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243AC16B8();
}

uint64_t sub_243A44D1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  *a2 = v5;
  return result;
}

uint64_t sub_243A44D9C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243AC16B8();
}

uint64_t sub_243A44E10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  *a2 = v5;
  return result;
}

uint64_t sub_243A44E90(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243AC16B8();
}

uint64_t sub_243A44F40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_243A44FD0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  type metadata accessor for RecommendationsController();
  sub_243A484E8(&qword_27ED98FB0, type metadata accessor for RecommendationsController);

  sub_243AC1668();
  sub_243AC1678();

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243AC16B8();
}

uint64_t sub_243A450C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  *a2 = v5;
  return result;
}

uint64_t sub_243A45140(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243AC16B8();
}

uint64_t sub_243A451B4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_243A45260(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_243A45F74(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_243AC2EA8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 8;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 2) >= v11)
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 3;
          v16 = v13[2];
          v13[4] = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          v13[1] = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F80, &qword_243AC5528);
      v7 = sub_243AC29C8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_243A453D0(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_243A453D0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_243A45C54(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_243A4598C((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = (v12 < v9) ^ (v15 >= v16);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v26 + v10);
            v22 = (v26 + v18);
            v23 = *v21;
            v24 = *(v21 + 2);
            v25 = *v22;
            *v21 = *(v22 - 1);
            *(v21 + 2) = v25;
            *(v22 - 1) = v23;
            *v22 = v24;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_243A45C68(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_243A45C68((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        sub_243A4598C((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6;
  v29 = v8 - v6;
LABEL_30:
  v30 = *(v27 + 24 * v6 + 16);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    v34 = v32[1];
    *v32 = *(v32 - 3);
    v32[2] = *(v32 - 1);
    *(v32 - 2) = v34;
    *(v32 - 1) = v30;
    *(v32 - 3) = v33;
    v32 -= 3;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_243A4598C(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v4 + 2) < *(v6 + 2))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_243A45BC8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_243A45C54(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_243A45C68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F88, &unk_243AC5530);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_243A45D6C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_243A45E60;

  return v6(v2 + 32);
}

uint64_t sub_243A45E60()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_243A45F9C(void *a1, void *a2, int a3)
{
  v4 = v3;
  v122 = a3;
  v123 = a2;
  v121 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v124 = &v98 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98ED8, &qword_243AC51F8);
  v119 = *(v8 - 8);
  v120 = v8;
  v9 = *(v119 + 64);
  MEMORY[0x28223BE20](v8);
  v118 = &v98 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98EC0, &qword_243AC51F0);
  v116 = *(v11 - 8);
  v117 = v11;
  v12 = *(v116 + 64);
  MEMORY[0x28223BE20](v11);
  v115 = &v98 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98E30, &qword_243AC51E8);
  v108 = *(v14 - 8);
  v109 = v14;
  v15 = *(v108 + 64);
  MEMORY[0x28223BE20](v14);
  v107 = &v98 - v16;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98E20, &qword_243AC51E0);
  v105 = *(v106 - 8);
  v17 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v104 = &v98 - v18;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98E10, &qword_243AC51D8);
  v102 = *(v103 - 8);
  v19 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v101 = &v98 - v20;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98E00, &qword_243AC51D0);
  v99 = *(v100 - 8);
  v21 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v98 = &v98 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98DE8, &qword_243AC51C8);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v98 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98DD8, &qword_243AC51C0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v98 - v31;
  v33 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__recommendationSections;
  v125 = MEMORY[0x277D84F90];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F08, &qword_243AC5DF0);
  sub_243AC1688();
  v34 = *(v29 + 32);
  v111 = v28;
  v34(v4 + v33, v32, v28);
  v112 = v34;
  v114 = v29 + 32;
  v35 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__recommendationPage;
  v125 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F18, &qword_243AC52D0);
  sub_243AC1688();
  (*(v24 + 32))(v4 + v35, v27, v23);
  v36 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__completedRecommendationsSection;
  v37 = MEMORY[0x277D84F90];
  v125 = MEMORY[0x277D84F90];
  v110 = v32;
  sub_243AC1688();
  v34(v4 + v36, v32, v28);
  v38 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__stillFetchingData;
  LOBYTE(v125) = 1;
  v39 = v98;
  sub_243AC1688();
  (*(v99 + 32))(v4 + v38, v39, v100);
  v40 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__loadingError;
  LOBYTE(v125) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F30, &qword_243AC52D8);
  v41 = v101;
  sub_243AC1688();
  (*(v102 + 32))(v4 + v40, v41, v103);
  v42 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__contextualRecommendations;
  v125 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F40, &qword_243AC52E0);
  v43 = v104;
  sub_243AC1688();
  (*(v105 + 32))(v4 + v42, v43, v106);
  v44 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__turnOnMoreAppsFooter;
  v125 = 0;
  v126 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F50, &qword_243AC52E8);
  v45 = v107;
  sub_243AC1688();
  (*(v108 + 32))(v4 + v44, v45, v109);
  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_keychainSyncNotificationToken) = 0;
  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_familySyncNotificationToken) = 1;
  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_userIsCompletingRecommendation) = 0;
  v46 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup;
  *(v4 + v46) = dispatch_group_create();
  v47 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allRecommendations;
  v48 = sub_243A2E2A0(v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98FF8, qword_243ACA6D0);
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  *(v49 + 16) = v48;
  *(v4 + v47) = v49;
  v50 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allSections;
  *(v4 + v50) = sub_243A2E8B4(v37);
  v51 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations;
  v52 = sub_243A2E2A0(v37);
  v53 = swift_allocObject();
  *(v53 + 24) = 0;
  *(v53 + 16) = v52;
  *(v4 + v51) = v53;
  v54 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationRules;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99000, &qword_243AC5970);
  v55 = swift_allocObject();
  *(v55 + 24) = 0;
  *(v55 + 16) = 0;
  *(v4 + v54) = v55;
  v56 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_rulesMap;
  v57 = sub_243A2E8C8(v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99008, &qword_243AC5978);
  v58 = swift_allocObject();
  *(v58 + 24) = 0;
  *(v58 + 16) = v57;
  *(v4 + v56) = v58;
  v59 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_ranksMap;
  *(v4 + v59) = sub_243A2E8DC(v37);
  v60 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_breakoutsMap;
  *(v4 + v60) = sub_243A2E8DC(v37);
  swift_unknownObjectWeakInit();
  v61 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__recommendationsSpecifierTitle;
  type metadata accessor for RecommendationsController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v63 = objc_opt_self();
  v64 = [v63 bundleForClass_];
  v65 = sub_243AC1188();
  v67 = v66;

  v125 = v65;
  v126 = v67;
  v68 = v115;
  sub_243AC1688();
  v69 = *(v116 + 32);
  v70 = v4 + v61;
  v71 = v117;
  v69(v70, v68, v117);
  v72 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__recommendationsSpecifierSubtitle;
  v73 = [v63 bundleForClass_];
  v74 = sub_243AC1188();
  v76 = v75;

  v125 = v74;
  v126 = v76;
  sub_243AC1688();
  v69(v4 + v72, v68, v71);
  v77 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__recommendationsCount;
  v125 = -1;
  v78 = v118;
  sub_243AC1688();
  (*(v119 + 32))(v4 + v77, v78, v120);
  v79 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__breakoutSection;
  v125 = MEMORY[0x277D84F90];
  v80 = v110;
  sub_243AC1688();
  v112(v4 + v79, v80, v111);
  v81 = v121;
  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account) = v121;
  type metadata accessor for RecommendationFilter();
  swift_allocObject();
  v82 = v81;
  v83 = sub_243A23C4C(v82);
  v84 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsFilter;
  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsFilter) = v83;
  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_isBreakoutAvailable) = v122;
  v85 = [objc_allocWithZone(MEMORY[0x277CFB1C0]) init];
  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsActionCache) = v85;
  v86 = v123;
  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsDataFetcher) = v123;
  v87 = objc_allocWithZone(type metadata accessor for RecommendationAnalytics());
  v88 = v82;
  v89 = v86;
  v90 = sub_243A7A32C(v88);

  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_analytics) = v90;
  v91 = *(v4 + v84);
  type metadata accessor for CompletedRecommendationController();
  swift_allocObject();
  v92 = v88;

  v93 = sub_243AA8948(v92, v91);

  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController) = v93;
  type metadata accessor for RecommendationTemplate();
  swift_allocObject();
  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_templateHelper) = sub_243A59CDC(v92);
  type metadata accessor for SubtitleComposer();
  *(v4 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_subtitleComposer) = swift_allocObject();
  v94 = v124;
  sub_243AC2A78();
  v95 = sub_243AC2A98();
  (*(*(v95 - 8) + 56))(v94, 0, 1, v95);
  v96 = swift_allocObject();
  v96[2] = 0;
  v96[3] = 0;
  v96[4] = v4;

  sub_243A3306C(0, 0, v94, &unk_243AC5988, v96);

  sub_243A343F0();
  return v4;
}

uint64_t sub_243A46C80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A23CBC(a1, v4, v5, v6);
}

uint64_t sub_243A46D60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_243A33068;

  return sub_243A3C324(a1, v4, v5, v6, v7);
}

uint64_t sub_243A46E44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 56);
  v15 = *(v1 + 48);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  v10 = *(v1 + 73);
  v11 = *(v1 + 40);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_243A33068;

  return sub_243A3FA60(a1, v4, v5, v6, v11, v15, v7, v8);
}

uint64_t sub_243A46F50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_243A46FAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

void sub_243A47010()
{
  sub_243A475AC(319, &qword_27ED98F00, &qword_27ED98F08, &qword_243AC5DF0);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_243A475AC(319, &qword_27ED98F10, &qword_27ED98F18, &qword_243AC52D0);
    if (v4 <= 0x3F)
    {
      v17 = *(v3 - 8) + 64;
      sub_243A47600(319, &qword_27ED98F20);
      if (v6 <= 0x3F)
      {
        v18 = *(v5 - 8) + 64;
        sub_243A475AC(319, &qword_27ED98F28, &qword_27ED98F30, &qword_243AC52D8);
        if (v8 <= 0x3F)
        {
          v19 = *(v7 - 8) + 64;
          sub_243A475AC(319, &qword_27ED98F38, &qword_27ED98F40, &qword_243AC52E0);
          if (v10 <= 0x3F)
          {
            v20 = *(v9 - 8) + 64;
            sub_243A475AC(319, &qword_27ED98F48, &qword_27ED98F50, &qword_243AC52E8);
            if (v12 <= 0x3F)
            {
              v21 = *(v11 - 8) + 64;
              sub_243A47600(319, &qword_27ED98F58);
              if (v14 <= 0x3F)
              {
                v22 = *(v13 - 8) + 64;
                sub_243A47600(319, &qword_27ED98F60);
                if (v16 <= 0x3F)
                {
                  v23 = *(v15 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_243A475AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_243AC16C8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_243A47600(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_243AC16C8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_243A47650(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A476C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243A476F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A33068;

  return sub_243A45D6C(a1, v5);
}

uint64_t sub_243A477B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A1FEA8;

  return sub_243A45D6C(a1, v5);
}

uint64_t sub_243A47868()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243A478F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A449DC(a1, v4, v5, v6);
}

uint64_t sub_243A479AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A443F8(a1, v4, v5, v6);
}

uint64_t sub_243A47B20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A43E68(a1, v4, v5, v6);
}

uint64_t sub_243A47BD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A43E68(a1, v4, v5, v6);
}

uint64_t sub_243A47C88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A43E68(a1, v4, v5, v6);
}

void sub_243A47E04(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  JUMPOUT(0x245D46CF0);
}

__n128 sub_243A47E10(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_243A47E1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_243A47E60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A433F8(a1, v4, v5, v6);
}

void sub_243A47F14(void *a1, id a2)
{
  v4 = [a2 title];
  if (!v4)
  {
    sub_243AC2858();
    v4 = sub_243AC2818();
  }

  [a1 setTitle_];

  v5 = [a2 subTitle];
  if (!v5)
  {
    sub_243AC2858();
    v5 = sub_243AC2818();
  }

  [a1 setSubTitle_];

  v6 = [a2 message];
  if (!v6)
  {
    sub_243AC2858();
    v6 = sub_243AC2818();
  }

  [a1 setMessage_];

  v7 = [a2 actions];
  if (!v7)
  {
    sub_243A2CFF0(0, &qword_27ED98B88, 0x277CFB1B8);
    sub_243AC2998();
    v8 = sub_243AC2978();

    v7 = v8;
  }

  v9 = v7;
  [a1 setActions_];
}

uint64_t sub_243A480C0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243A48108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_243A33068;

  return sub_243A43558(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_243A481D8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_243A33068;

  return sub_243A426F8(a1, a2, v2);
}

uint64_t sub_243A4828C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_243A33068;

  return sub_243A42DD8(a1, v4, v5, v7, v6);
}

unint64_t sub_243A48394()
{
  result = qword_27ED98F98;
  if (!qword_27ED98F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98F98);
  }

  return result;
}

id sub_243A4844C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 recommendationInfo];
  *a2 = result;
  return result;
}

uint64_t sub_243A484A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_243A484E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_242Tm(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);

  a1(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_243A48724@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_243A487BC(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = qword_27ED98910;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_243AC1468();
    __swift_project_value_buffer(v4, qword_27EDA14A8);
    v5 = a2;
    v6 = sub_243AC1448();
    v7 = sub_243AC2B78();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98FC8, &qword_243AC5810);
      v10 = sub_243AC2C28();
      v12 = sub_243AB73D8(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_243A1B000, v6, v7, "Handling backup state change notification: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x245D47D20](v9, -1, -1);
      MEMORY[0x245D47D20](v8, -1, -1);
    }

    sub_243A34E44(0, 1);
  }

  return result;
}

void sub_243A48950(uint64_t a1, void *a2, const char *a3)
{
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v6 = sub_243AC1468();
  __swift_project_value_buffer(v6, qword_27EDA14A8);
  v7 = sub_243AC1448();
  v8 = sub_243AC2B78();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_243A1B000, v7, v8, a3, v9, 2u);
    MEMORY[0x245D47D20](v9, -1, -1);
  }

  if (a1)
  {
    v10 = a2;

    v11 = sub_243AC1448();
    v12 = sub_243AC2B78();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98FC8, &qword_243AC5810);
      v15 = sub_243AC2C28();
      v17 = sub_243AB73D8(v15, v16, &v18);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_243A1B000, v11, v12, "Handling private relay status change notification: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x245D47D20](v14, -1, -1);
      MEMORY[0x245D47D20](v13, -1, -1);
    }

    sub_243A34E44(0, 1);
  }
}

uint64_t sub_243A48B60()
{
  MEMORY[0x245D47DE0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243A48BA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_243A33068;

  return sub_243A77CD0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_243A48C68()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_243A48CAC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  if (*(v0 + 64))
  {
    v3 = *(v0 + 72);
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_243A48D0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_243A1FEA8;

  return sub_243AA4C94(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t objectdestroy_361Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243A48E80(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A33068;

  return sub_243A6AC64(a1, v5);
}

uint64_t sub_243A48F38()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_243A48F8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 == 1)
  {
    sub_243A3AFF0();
  }

  v3 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup);

  dispatch_group_leave(v3);
}

uint64_t sub_243A48FD8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  if (v0[7])
  {
    v5 = v0[8];
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_243A49038(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_243A33068;

  return sub_243AA37A0(a1, v4, v5, v6, v7, v8, v9, v10);
}

id sub_243A49130(id *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return v3;
}

uint64_t sub_243A49190(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_243AC2EE8() & 1;
  }
}

uint64_t sub_243A491E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_11Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_243A492A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_243A33068;

  return sub_243A366C8(a1, v4, v5, v7, v6);
}

uint64_t sub_243A49368()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_243A493B0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_243A49408(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_243A33068;

  return sub_243A242D4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 74, 7);
}

uint64_t sub_243A49590(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A3558C(a1, v4, v5, v6);
}

uint64_t sub_243A49654(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A35940(a1, v4, v5, v6);
}

uint64_t sub_243A49708(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A347BC(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

uint64_t objectdestroy_222Tm(uint64_t a1)
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  v5 = v1[5];

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void sub_243A499E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v109 = *(v4 - 8);
  v5 = *(v109 + 64);
  MEMORY[0x28223BE20](v4);
  v110 = &v95 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99080, &qword_243AC5C28);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v95 - v9;
  v11 = sub_243AC1528();
  v111 = *(v11 - 8);
  v112 = v11;
  v12 = *(v111 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v108 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v95 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v95 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v95 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v95 - v24;
  v26 = v4;
  sub_243AC14D8();
  v103 = v20;
  v104 = v23;
  v27 = a1;
  v102 = v17;
  v105 = a2;
  v106 = v26;
  v29 = v111;
  v28 = v112;
  (*(v111 + 56))(v10, 0, 1, v112);
  v30 = *(v29 + 32);
  v30(v25, v10, v28);
  static AccountEmailAddress.create(with:)(v25, v113);
  v107 = v30;
  v31 = v113[1];
  v101 = v113[2];
  v32 = *(type metadata accessor for ToggleEmailAddressAction() + 24);
  v33 = v27;
  v34 = v104;
  sub_243AC14D8();
  v35 = 0x27ED98000;
  v100 = v31;
  v96 = v33;
  v97 = v32;
  v98 = v25;
  v99 = 0;
  v36 = *(v29 + 16);
  v37 = v103;
  v38 = v112;
  v36(v103, v34, v112);
  if ((*(v29 + 88))(v37, v38) != *MEMORY[0x277D23278])
  {

    v46 = *(v29 + 8);
    v46(v37, v38);
    type metadata accessor for DecodableStateError();
    sub_243A4C740(&qword_27ED98D50, type metadata accessor for DecodableStateError);
    v47 = swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
    v36(v49, v34, v38);
    v51 = v47;
    *&v49[v50] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D18, &unk_243AC4ED0);
    swift_willThrow();
    v46(v34, v38);
    v46(v98, v38);
    goto LABEL_26;
  }

  v39 = *(v29 + 8);
  v104 = (v29 + 8);
  v95 = v39;
  v39(v34, v38);
  (*(v29 + 96))(v37, v38);
  v40 = *(*v37 + 16);

  v41 = *(v40 + 16);
  if (v41)
  {
    v113[0] = MEMORY[0x277D84F90];
    sub_243A64F74(0, v41, 0);
    v42 = v113[0];
    v43 = *(v113[0] + 16);
    v44 = v96;
    do
    {
      v113[0] = v42;
      v45 = *(v42 + 3);
      if (v43 >= v45 >> 1)
      {
        sub_243A64F74((v45 > 1), v43 + 1, 1);
        v42 = v113[0];
      }

      *(v42 + 2) = v43 + 1;
      v42[v43++ + 32] = 0;
      --v41;
    }

    while (v41);
  }

  else
  {

    v42 = MEMORY[0x277D84F90];
    v44 = v96;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v99;
  v54 = v97;
  if (isUniquelyReferenced_nonNull_native)
  {
    v55 = v101;
    if ((v101 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v42 = sub_243A4CDD4(v42);
  v55 = v101;
  if (v101 < 0)
  {
    goto LABEL_33;
  }

LABEL_12:
  if (v55 >= *(v42 + 2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v41 = (v42 + 32);
  v42[v55 + 32] = (v42[v55 + 32] & 1) == 0;
  if (qword_27ED98910 != -1)
  {
LABEL_35:
    swift_once();
  }

  v56 = sub_243AC1468();
  __swift_project_value_buffer(v56, qword_27EDA14A8);

  v57 = sub_243AC1448();
  v58 = sub_243AC2B48();
  if (os_log_type_enabled(v57, v58))
  {
    LODWORD(v103) = v58;
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v113[0] = v60;
    *v59 = 134218498;
    v61 = v101;
    *(v59 + 4) = v101;
    *(v59 + 12) = 1024;
    if (v61 >= *(v42 + 2))
    {
      __break(1u);
      return;
    }

    v62 = v60;
    v63 = *(v41 + v61);

    *(v59 + 14) = v63;

    *(v59 + 18) = 2080;

    v65 = MEMORY[0x245D46D70](v64, MEMORY[0x277D839B0]);
    v67 = v66;

    v68 = sub_243AB73D8(v65, v67, v113);

    *(v59 + 20) = v68;
    _os_log_impl(&dword_243A1B000, v57, v103, "Toggle Account, setting selected account idx %ld selected: %{BOOL}d. New list: %s", v59, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    MEMORY[0x245D47D20](v62, -1, -1);
    MEMORY[0x245D47D20](v59, -1, -1);

    v53 = v99;
    v54 = v97;
    v44 = v96;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v69 = v109;
  v70 = v44 + v54;
  v71 = v106;
  (*(v109 + 16))(v110, v70, v106);
  v72 = *(v42 + 2);
  v73 = v112;
  if (v72)
  {
    v113[0] = MEMORY[0x277D84F90];

    sub_243A64F54(0, v72, 0);
    v74 = 32;
    v75 = v113[0];
    v76 = v108;
    do
    {
      v77 = v42[v74];
      sub_243AC2A18();
      v113[0] = v75;
      v79 = *(v75 + 16);
      v78 = *(v75 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_243A64F54(v78 > 1, v79 + 1, 1);
        v75 = v113[0];
      }

      *(v75 + 16) = v79 + 1;
      v107(v75 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v79, v76, v73);
      ++v74;
      --v72;
    }

    while (v72);

    v53 = v99;
    v71 = v106;
    v69 = v109;
  }

  v80 = v102;
  sub_243AC29E8();

  v81 = v110;
  sub_243AC15D8();
  v82 = v98;
  if (!v53)
  {
    v93 = v80;
    v94 = v95;
    v95(v93, v73);
    (*(v69 + 8))(v81, v71);
    v94(v82, v73);

    return;
  }

  v51 = v53;
  v83 = v80;
  v84 = v95;
  v95(v83, v73);
  (*(v69 + 8))(v81, v71);
  v84(v82, v73);

  v35 = 0x27ED98000uLL;
LABEL_26:
  if (*(v35 + 2320) != -1)
  {
    swift_once();
  }

  v85 = sub_243AC1468();
  __swift_project_value_buffer(v85, qword_27EDA14A8);
  v86 = v51;
  v87 = sub_243AC1448();
  v88 = sub_243AC2B58();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v89 = 138412290;
    v91 = v51;
    v92 = _swift_stdlib_bridgeErrorToNSError();
    *(v89 + 4) = v92;
    *v90 = v92;
    _os_log_impl(&dword_243A1B000, v87, v88, "Toggle Account: Error while toggling account, %@", v89, 0xCu);
    sub_243A2251C(v90, &qword_27ED98BF8, &unk_243AC6150);
    MEMORY[0x245D47D20](v90, -1, -1);
    MEMORY[0x245D47D20](v89, -1, -1);
  }

  else
  {
  }
}

uint64_t ToggleEmailAddressAction.modifyView(_:with:localStore:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for ToggleEmailAddressAction();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A4BED8(v4, v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_243A4BF40(v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  a3[3] = sub_243AC1878();
  v15[0] = v11;
  v15[1] = MEMORY[0x277CE0790];
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);

  sub_243AC1F58();
}

void sub_243A4A6B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_243AC1528();
  v81 = *(v4 - 8);
  v5 = *(v81 + 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v70 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v70 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v70 - v15;
  v17 = *(type metadata accessor for ToggleEmailAddressAction() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  sub_243AC14D8();
  v82 = 0;
  v18 = a1;
  v80 = v17;
  v72 = v8;
  v19 = v81;
  v21 = v81 + 16;
  v20 = *(v81 + 2);
  v20(v14, v16, v4);
  v22 = (*(v19 + 11))(v14, v4);
  v25 = *(v19 + 1);
  v24 = v19 + 8;
  v23 = v25;
  if (v22 != *MEMORY[0x277D23278])
  {
    v41 = v23;
    v23(v14, v4);
    type metadata accessor for DecodableStateError();
    sub_243A4C740(&qword_27ED98D50, type metadata accessor for DecodableStateError);
    v82 = swift_allocError();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
    v20(v43, v16, v4);
    *&v43[v44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D18, &unk_243AC4ED0);
    swift_willThrow();
    v41(v16, v4);
    goto LABEL_27;
  }

  v76 = v20;
  v77 = v21;
  v79 = v23;
  v23(v16, v4);
  (*(v81 + 12))(v14, v4);
  v26 = *(*v14 + 16);

  v27 = *(v26 + 16);
  v73 = v18;
  v74 = a2;
  v75 = v24;
  if (v27)
  {
    v28 = v81[80];
    v71 = v26;
    v29 = v26 + ((v28 + 32) & ~v28);
    v78 = *(v81 + 9);
    v81 = MEMORY[0x277D84F90];
    v30 = v76;
    (v76)(v11, v29, v4);
    while (1)
    {
      v31 = v82;
      static AccountEmailAddress.create(with:)(v11, v83);
      v82 = v31;
      if (v31)
      {

        v79(v11, v4);
        v82 = 0;
      }

      else
      {
        v32 = v4;
        v79(v11, v4);
        v33 = v83[0];
        v34 = v83[1];
        v35 = v83[2];
        v36 = v84;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_243AA0428(0, *(v81 + 2) + 1, 1, v81);
        }

        v38 = *(v81 + 2);
        v37 = *(v81 + 3);
        if (v38 >= v37 >> 1)
        {
          v81 = sub_243AA0428((v37 > 1), v38 + 1, 1, v81);
        }

        v39 = v81;
        *(v81 + 2) = v38 + 1;
        v40 = &v39[32 * v38];
        *(v40 + 4) = v33;
        *(v40 + 5) = v34;
        *(v40 + 6) = v35;
        v40[56] = v36;
        v4 = v32;
        v30 = v76;
      }

      v29 += v78;
      if (!--v27)
      {
        break;
      }

      v30(v11, v29, v4);
    }

    v45 = v81;
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
  }

  v46 = *(v45 + 2);
  if (!v46)
  {

LABEL_25:
    sub_243A4C480();
    v58 = v72;
    sub_243AC29E8();

    v59 = v82;
    sub_243AC15D8();
    v82 = v59;
    if (!v59)
    {
      v79(v58, v4);
      return;
    }

    v79(v58, v4);
LABEL_27:
    if (qword_27ED98910 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_34;
  }

  v71 = v4;
  v83[0] = MEMORY[0x277D84F90];

  sub_243A64F94(0, v46, 0);
  v47 = 0;
  v48 = *(v45 + 2);
  v49 = v83[0];
  v50 = (v45 + 48);
  v77 = v46;
  v78 = v48;
  v76 = v48 - 1;
  v51 = v45;
  while (v78 != v47)
  {
    if (v47 >= *(v51 + 2))
    {
      goto LABEL_33;
    }

    v52 = *(v50 - 1);
    v81 = *(v50 - 2);
    v53 = *v50;
    v54 = v76 != v47;
    v83[0] = v49;
    v56 = *(v49 + 16);
    v55 = *(v49 + 24);

    if (v56 >= v55 >> 1)
    {
      sub_243A64F94((v55 > 1), v56 + 1, 1);
      v49 = v83[0];
    }

    ++v47;
    *(v49 + 16) = v56 + 1;
    v57 = v49 + 32 * v56;
    *(v57 + 32) = v81;
    *(v57 + 40) = v52;
    *(v57 + 48) = v53;
    *(v57 + 56) = v54;
    v50 += 4;
    if (v77 == v47)
    {
      swift_bridgeObjectRelease_n();
      v4 = v71;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  swift_once();
LABEL_28:
  v60 = sub_243AC1468();
  __swift_project_value_buffer(v60, qword_27EDA14A8);
  v61 = v82;
  v62 = v82;
  v63 = sub_243AC1448();
  v64 = sub_243AC2B58();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v65 = 138412290;
    v67 = v82;
    v68 = v82;
    v69 = _swift_stdlib_bridgeErrorToNSError();
    *(v65 + 4) = v69;
    *v66 = v69;
    _os_log_impl(&dword_243A1B000, v63, v64, "Toggle Account: Error while updating store on appear, %@", v65, 0xCu);
    sub_243A2251C(v66, &qword_27ED98BF8, &unk_243AC6150);
    MEMORY[0x245D47D20](v66, -1, -1);
    MEMORY[0x245D47D20](v65, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_243A4AE20()
{
  v1 = *v0;
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A4AEE8()
{
  *v0;
  *v0;
  *v0;
  sub_243AC28A8();
}

uint64_t sub_243A4AF9C()
{
  v1 = *v0;
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A4B060@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_243A4C434();
  *a2 = result;
  return result;
}

void sub_243A4B090(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746E756F636361;
  v4 = 0xD000000000000011;
  v5 = 0x8000000243ACBA40;
  if (*v1 != 2)
  {
    v4 = 0xD00000000000001CLL;
    v5 = 0x8000000243ACBA60;
  }

  if (*v1)
  {
    v3 = 0x73746E756F636361;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_243A4B114()
{
  v1 = 0x746E756F636361;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v1 = 0x73746E756F636361;
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

uint64_t sub_243A4B194@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243A4C434();
  *a1 = result;
  return result;
}