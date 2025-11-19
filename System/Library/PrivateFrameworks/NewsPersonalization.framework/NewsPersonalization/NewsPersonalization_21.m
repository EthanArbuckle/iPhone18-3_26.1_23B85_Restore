id XavierScoringService.__allocating_init(aggregateStore:configurationManager:translationProvider:todayPrivateData:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  (*(v11 + 8))(v89, v10, v11);
  if (v90 == 1)
  {
    v12 = a1;
  }

  else
  {
    v13 = [objc_allocWithZone(type metadata accessor for EmptyPersonalizationDataGenerator()) init];
    v12 = [objc_allocWithZone(MEMORY[0x1E69B5568]) initWithGenerator_];
  }

  v66 = a1;
  if (v91 == 1)
  {
    if (qword_1EDCE2918 != -1)
    {
      swift_once();
    }

    v14 = qword_1EDCE2920;
    *(&v87 + 1) = type metadata accessor for ComputeServiceProxyScoringService();
    v88 = &protocol witness table for ComputeServiceProxyScoringService;
    *&v86 = v14;
    v15 = v14;
  }

  else
  {
    v88 = 0;
    v86 = 0u;
    v87 = 0u;
  }

  v16 = type metadata accessor for ExtensionUserContextProvider();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  sub_1C6B16F28(a2, v74);
  sub_1C6B15028(&v86, v73, sub_1C6D1A758);
  v72 = 0;
  memset(v71, 0, sizeof(v71));
  v65 = v5;
  v18 = objc_allocWithZone(v5);
  v70[3] = v16;
  v70[4] = &off_1F4674958;
  v70[0] = v17;
  v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_disableArticleScoring] = 0;
  *&v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateStore] = v12;
  sub_1C6B16F28(v74, v84);
  v19 = swift_allocObject();
  sub_1C6B15E34(v84, v19 + 16);
  sub_1C6B16F28(v74, v82);
  v20 = swift_allocObject();
  sub_1C6B15E34(v82, v20 + 16);
  v80 = v12;
  sub_1C6B14DC0();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v64 = v12;
  swift_unknownObjectRetain();

  *&v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateContext] = sub_1C6D762F0();
  sub_1C6B16F28(v74, &v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager]);
  v24 = v75;
  v25 = v76;
  __swift_project_boxed_opaque_existential_1(v74, v75);
  (*(v25 + 8))(v77, v24, v25);
  v26 = v77[3];
  sub_1C6B11190(v77);
  v27 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__personalizationTreatment;
  swift_beginAccess();
  *&v82[0] = v26;
  sub_1C6D1B5C8();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *&v18[v27] = sub_1C6D78220();
  swift_endAccess();
  v31 = v75;
  v32 = v76;
  __swift_project_boxed_opaque_existential_1(v74, v75);
  (*(v32 + 8))(&v78, v31, v32);
  sub_1C6B11190(&v78);
  LOBYTE(v26) = v79;
  v33 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__clientSideEngagementBoostEnabled;
  swift_beginAccess();
  LOBYTE(v82[0]) = v26;
  sub_1C6B1B44C(0, &unk_1EDCEA7A0, MEMORY[0x1E69E6370], MEMORY[0x1E69D6AF0]);
  v35 = v34;
  v36 = *(v34 + 48);
  v37 = *(v34 + 52);
  swift_allocObject();
  *&v18[v33] = sub_1C6D78220();
  swift_endAccess();
  v38 = v75;
  v39 = v76;
  __swift_project_boxed_opaque_existential_1(v74, v75);
  (*(v39 + 8))(&v80, v38, v39);
  sub_1C6B11190(&v80);
  LOBYTE(v26) = v81;
  v40 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__fallbackToReverseChronSorting;
  swift_beginAccess();
  LOBYTE(v82[0]) = v26;
  v41 = *(v35 + 48);
  v42 = *(v35 + 52);
  swift_allocObject();
  *&v18[v40] = sub_1C6D78220();
  swift_endAccess();
  v43 = v75;
  v44 = v76;
  __swift_project_boxed_opaque_existential_1(v74, v75);
  (*(v44 + 8))(v82, v43, v44);
  v45 = v83;
  sub_1C6B11190(v82);
  v46 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__publisherDampeningConfig;
  swift_beginAccess();
  v69 = v45;
  sub_1C6D1B630();
  v48 = v47;
  v49 = *(v47 + 48);
  v50 = *(v47 + 52);
  swift_allocObject();
  *&v18[v46] = sub_1C6D78220();
  swift_endAccess();
  v51 = v75;
  v52 = v76;
  __swift_project_boxed_opaque_existential_1(v74, v75);
  (*(v52 + 8))(v84, v51, v52);
  v53 = v85;
  sub_1C6B11190(v84);
  v54 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__shadowPublisherDampeningConfig;
  swift_beginAccess();
  v68 = v53;
  v55 = *(v48 + 48);
  v56 = *(v48 + 52);
  swift_allocObject();
  *&v18[v54] = sub_1C6D78220();
  swift_endAccess();
  *&v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_translationProvider] = a3;
  sub_1C6B16F28(v70, &v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider]);
  sub_1C6B15028(v73, &v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_computeServiceScoringService], sub_1C6D1A758);
  *&v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_computeServiceCohortMembershipService] = 0;
  *&v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_tracker] = 0;
  sub_1C6B15028(v71, &v18[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_recipeScoringService], sub_1C6D1AEF4);
  v67.receiver = v18;
  v67.super_class = v65;
  swift_unknownObjectRetain();
  v57 = objc_msgSendSuper2(&v67, sel_init);
  v58 = v75;
  v59 = v76;
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = *(v59 + 32);
  v62 = v57;

  v61(sub_1C6B3807C, v60, v58, v59);

  sub_1C6B11190(v89);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1C6D1BEDC(v71, sub_1C6D1AEF4);
  sub_1C6D1BEDC(v73, sub_1C6D1A758);
  __swift_destroy_boxed_opaque_existential_1(v70);

  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_1C6D1BEDC(&v86, sub_1C6D1A758);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v62;
}

uint64_t sub_1C6D11840(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v3 = (v1 - 1) >> 1;
    if (v3 < v1)
    {
      v4 = *(result + 8 * v3 + 32);
      return result;
    }
  }

  else
  {
    if (v1)
    {
      v2 = (*(result + 4 * v1 + 32) + *(result + 4 * v1 + 24)) * 0.5;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t XavierScoringService.scoreRecipeItems(_:)(unint64_t a1)
{
  sub_1C6C74F64();
  v4 = v3;
  v47 = *(v3 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C6D79170();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *MEMORY[0x1E69B5CA0];
  v14 = sub_1C6D791B0();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  (*(v9 + 104))(v12, *MEMORY[0x1E69B5A18], v8);
  v15 = sub_1C6D0ACDC(a1, v12);
  if (v1)
  {
    (*(v9 + 8))(v12, v8);
    return v8;
  }

  v45 = v7;
  v46 = v4;
  v40[1] = 0;
  v16 = v15;
  (*(v9 + 8))(v12, v8);
  v44 = v16[2];
  if (!v44)
  {
    v8 = MEMORY[0x1E69E7CC8];
LABEL_20:

    return v8;
  }

  v17 = 0;
  v19 = v46;
  v18 = v47;
  v43 = v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v41 = (v47 + 8);
  v42 = v47 + 16;
  v8 = MEMORY[0x1E69E7CC8];
  v20 = v45;
  while (v17 < v16[2])
  {
    (*(v18 + 16))(v20, &v43[*(v18 + 72) * v17], v19);
    v21 = sub_1C6D79070();
    v23 = v22;
    sub_1C6D79090();
    v25 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v8;
    v28 = sub_1C6B5DEA8(v21, v23);
    v29 = v8[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_23;
    }

    v32 = v27;
    if (v8[3] >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v19 = v46;
        if (v27)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_1C6B72BD8();
        v19 = v46;
        if (v32)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_1C6B6E868(v31, isUniquelyReferenced_nonNull_native);
      v33 = sub_1C6B5DEA8(v21, v23);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_25;
      }

      v28 = v33;
      v19 = v46;
      if (v32)
      {
LABEL_5:

        v8 = v48;
        *(v48[7] + 8 * v28) = v25;
        v20 = v45;
        (*v41)(v45, v19);
        goto LABEL_6;
      }
    }

    v8 = v48;
    v48[(v28 >> 6) + 8] |= 1 << v28;
    v35 = (v8[6] + 16 * v28);
    *v35 = v21;
    v35[1] = v23;
    *(v8[7] + 8 * v28) = v25;
    v20 = v45;
    (*v41)(v45, v19);
    v36 = v8[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_24;
    }

    v8[2] = v38;
LABEL_6:
    ++v17;
    v18 = v47;
    if (v44 == v17)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6D11CD4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1C6B7568C();
    v2 = sub_1C6D79F10();
    v20 = v2;
    sub_1C6D79E80();
    v3 = sub_1C6D79EA0();
    if (v3)
    {
      v4 = v3;
      sub_1C6B0C69C(0, &qword_1EDCDF860, 0x1E69B5450);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_1C6B0F7A8(0, &qword_1EDCDF840, &protocolRef_FCPersonalizationAggregate);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_1C6B72614(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_1C6D79BB0();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_1C6D79EA0();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

unint64_t sub_1C6D11F58(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C6D79CD0() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48) + 56 * v6;
      v12 = *(v10 + 16);
      v11 = *(v10 + 32);
      v13 = *v10;
      v33 = *(v10 + 48);
      v32[1] = v12;
      v32[2] = v11;
      v32[0] = v13;
      sub_1C6D7A260();
      sub_1C6BC62A0(v32, &v31);
      sub_1C6BFDBDC();
      v14 = sub_1C6D7A2B0();
      result = sub_1C6BC624C(v32);
      v15 = v14 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v15 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v16 = *(a2 + 48);
      v17 = v16 + 56 * v3;
      v18 = (v16 + 56 * v6);
      if (v3 != v6 || v17 >= v18 + 56)
      {
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        *(v17 + 48) = *(v18 + 6);
        *(v17 + 16) = v20;
        *(v17 + 32) = v21;
        *v17 = v19;
      }

      v22 = *(a2 + 56);
      v23 = *(*(sub_1C6D78810() - 8) + 72);
      v24 = v23 * v3;
      result = v22 + v23 * v3;
      v25 = v23 * v6;
      v26 = v22 + v23 * v6 + v23;
      if (v24 < v25 || result >= v26)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v24 == v25)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v15 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v15)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1C6D1216C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C6D79CD0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x1CCA56710](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 4 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C6D1231C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C6D79CD0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1C6D7A260();

      sub_1C6D79610();
      v13 = sub_1C6D7A2B0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1C6D124E4(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1C6D79CD0() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_1C6D7A260();

      sub_1C6D79610();
      v15 = sub_1C6D7A2B0();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C6D126D8(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1C6D7A0C0();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1C6D797F0();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

void sub_1C6D12828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1C6D1BE00(0, &qword_1EDCEA960, MEMORY[0x1E6969530]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v87 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v69 - v12;
  v13 = sub_1C6D75F50();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v85 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v89 = &v69 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v69 - v20;
  v22 = sub_1C6D79040();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v80 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v94 = &v69 - v26;
  v29.n128_f64[0] = MEMORY[0x1EEE9AC00](v27);
  v93 = &v69 - v30;
  v71 = a2;
  if (a3 != a2)
  {
    v31 = v21;
    v32 = v13;
    v33 = *a4;
    v35 = *(v28 + 16);
    v34 = v28 + 16;
    v36 = *(v34 + 56);
    v88 = (v14 + 32);
    v92 = (v14 + 56);
    v76 = (v14 + 48);
    v82 = (v14 + 8);
    v83 = v35;
    v81 = (v34 - 8);
    v84 = v34;
    v37 = (v33 + v36 * (a3 - 1));
    v77 = -v36;
    v78 = (v34 + 16);
    v38 = a1 - a3;
    v79 = v33;
    v70 = v36;
    v39 = v33 + v36 * a3;
LABEL_5:
    v75 = a3;
    v72 = v39;
    v73 = v38;
    v74 = v37;
    v40 = v38;
    while (1)
    {
      v91 = v39;
      v41 = v39;
      v42 = v83;
      (v83)(v93, v41, v22, v29);
      v42(v94, v37, v22);
      v43 = [sub_1C6D79030() publishDate];
      swift_unknownObjectRelease();
      v90 = v40;
      if (v43)
      {
        v44 = v89;
        sub_1C6D75F20();

        v45 = *v88;
        v46 = v86;
        (*v88)(v86, v44, v32);
        v47 = *v92;
        (*v92)(v46, 0, 1, v32);
        v45(v31, v46, v32);
      }

      else
      {
        v47 = *v92;
        v48 = v86;
        (*v92)(v86, 1, 1, v32);
        sub_1C6D75F00();
        if ((*v76)(v48, 1, v32) != 1)
        {
          sub_1C6D1A8AC(v48, &qword_1EDCEA960, MEMORY[0x1E6969530]);
        }
      }

      v49 = [sub_1C6D79030() publishDate];
      swift_unknownObjectRelease();
      if (v49)
      {
        v50 = v22;
        v51 = v32;
        v52 = v31;
        v53 = v89;
        sub_1C6D75F20();

        v54 = v87;
        v55 = *v88;
        v56 = v53;
        v31 = v52;
        v32 = v51;
        v22 = v50;
        (*v88)(v87, v56, v32);
        v47(v54, 0, 1, v32);
        v57 = v85;
        v55(v85, v54, v32);
        v59 = v90;
        v58 = v91;
      }

      else
      {
        v60 = v87;
        v47(v87, 1, 1, v32);
        v57 = v85;
        sub_1C6D75F00();
        v61 = (*v76)(v60, 1, v32);
        v59 = v90;
        v58 = v91;
        if (v61 != 1)
        {
          sub_1C6D1A8AC(v87, &qword_1EDCEA960, MEMORY[0x1E6969530]);
        }
      }

      v62 = sub_1C6D75EE0();
      v63 = v57;
      v64 = *v82;
      (*v82)(v63, v32);
      v64(v31, v32);
      v65 = *v81;
      (*v81)(v94, v22);
      v65(v93, v22);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v75 + 1;
        v37 = &v74[v70];
        v38 = v73 - 1;
        v39 = v72 + v70;
        if (v75 + 1 == v71)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v79)
      {
        break;
      }

      v66 = *v78;
      v67 = v80;
      (*v78)(v80, v58, v22);
      swift_arrayInitWithTakeFrontToBack();
      v66(v37, v67, v22);
      v37 += v77;
      v39 = v58 + v77;
      v68 = __CFADD__(v59, 1);
      v40 = v59 + 1;
      if (v68)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1C6D12EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C6D79040();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v40 - v12;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v54 = &v40 - v16;
  v42 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v19 = *(v14 + 16);
    v18 = v14 + 16;
    v20 = *(v18 + 56);
    v51 = (v18 - 8);
    v52 = v19;
    v53 = v18;
    v48 = (v18 + 16);
    v49 = v17;
    v21 = (v17 + v20 * (a3 - 1));
    v47 = -v20;
    v22 = a1 - a3;
    v41 = v20;
    v23 = v17 + v20 * a3;
LABEL_5:
    v45 = v21;
    v46 = a3;
    v43 = v23;
    v44 = v22;
    v24 = v21;
    while (1)
    {
      v25 = v54;
      v26 = v52;
      (v52)(v54, v23, v8, v15);
      v27 = v55;
      v28 = v26(v55, v24, v8);
      v29 = MEMORY[0x1CCA568F0](v28);
      v30 = sub_1C6D79010();
      [v30 sortingScore];
      v32 = v31;

      v33 = sub_1C6D79010();
      [v33 sortingScore];
      v35 = v34;

      objc_autoreleasePoolPop(v29);
      v36 = *v51;
      (*v51)(v27, v8);
      v36(v25, v8);
      if (v35 >= v32)
      {
LABEL_4:
        a3 = v46 + 1;
        v21 = &v45[v41];
        v22 = v44 - 1;
        v23 = v43 + v41;
        if (v46 + 1 == v42)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v49)
      {
        break;
      }

      v37 = *v48;
      v38 = v50;
      (*v48)(v50, v23, v8);
      swift_arrayInitWithTakeFrontToBack();
      v37(v24, v38, v8);
      v24 += v47;
      v23 += v47;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1C6D131CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C6D79040();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v38 - v12;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v51 = &v38 - v16;
  v40 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v49 = *(v14 + 16);
    v50 = v14 + 16;
    v18 = *(v14 + 72);
    v19 = (v14 + 8);
    v46 = (v14 + 32);
    v47 = v17;
    v20 = (v17 + v18 * (a3 - 1));
    v45 = -v18;
    v21 = a1 - a3;
    v39 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v43 = v20;
    v44 = a3;
    v41 = v22;
    v42 = v21;
    v23 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v51;
      v26 = v49;
      (v49)(v51, v22, v8, v15);
      v27 = v52;
      v26(v52, v24, v8);
      v28 = sub_1C6D79010();
      [v28 personalizationScore];
      v30 = v29;

      v31 = sub_1C6D79010();
      [v31 personalizationScore];
      v33 = v32;

      v34 = *v19;
      (*v19)(v27, v8);
      v34(v25, v8);
      if (v33 >= v30)
      {
LABEL_4:
        a3 = v44 + 1;
        v20 = &v43[v39];
        v21 = v42 - 1;
        v22 = v41 + v39;
        if (v44 + 1 == v40)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v47)
      {
        break;
      }

      v35 = *v46;
      v36 = v48;
      (*v46)(v48, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v35(v24, v36, v8);
      v24 += v45;
      v22 += v45;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1C6D13490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C6D79300();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v36 - v12;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v49 = &v36 - v16;
  v38 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v47 = *(v14 + 16);
    v48 = v14 + 16;
    v18 = *(v14 + 72);
    v19 = (v14 + 8);
    v44 = (v14 + 32);
    v45 = v17;
    v20 = (v17 + v18 * (a3 - 1));
    v43 = -v18;
    v21 = a1 - a3;
    v37 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v41 = v20;
    v42 = a3;
    v39 = v22;
    v40 = v21;
    v23 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v49;
      v26 = v47;
      (v47)(v49, v22, v8, v15);
      v27 = v50;
      v26(v50, v24, v8);
      sub_1C6D792D0();
      v29 = v28;
      sub_1C6D792D0();
      v31 = v30;
      v32 = *v19;
      (*v19)(v27, v8);
      v32(v25, v8);
      if (v31 >= v29)
      {
LABEL_4:
        a3 = v42 + 1;
        v20 = &v41[v37];
        v21 = v40 - 1;
        v22 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v33 = *v44;
      v34 = v46;
      (*v44)(v46, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v33(v24, v34, v8);
      v24 += v43;
      v22 += v43;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1C6D13730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1C6C74F64();
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v37 - v13;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v50 = &v37 - v17;
  v39 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v48 = *(v15 + 16);
    v49 = v15 + 16;
    v19 = *(v15 + 72);
    v20 = (v15 + 8);
    v45 = (v15 + 32);
    v46 = v18;
    v21 = (v18 + v19 * (a3 - 1));
    v44 = -v19;
    v22 = a1 - a3;
    v38 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v42 = v21;
    v43 = a3;
    v40 = v23;
    v41 = v22;
    v24 = v22;
    v25 = v21;
    while (1)
    {
      v26 = v50;
      v27 = v48;
      (v48)(v50, v23, v9, v16);
      v28 = v51;
      v27(v51, v25, v9);
      sub_1C6D79090();
      v30 = v29;
      sub_1C6D79090();
      v32 = v31;
      v33 = *v20;
      (*v20)(v28, v9);
      v33(v26, v9);
      if (v32 >= v30)
      {
LABEL_4:
        a3 = v43 + 1;
        v21 = &v42[v38];
        v22 = v41 - 1;
        v23 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      v34 = *v45;
      v35 = v47;
      (*v45)(v47, v23, v9);
      swift_arrayInitWithTakeFrontToBack();
      v34(v25, v35, v9);
      v25 += v44;
      v23 += v44;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1C6D139D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v180 = a4;
  v178 = a1;
  sub_1C6D1BE00(0, &qword_1EDCEA960, MEMORY[0x1E6969530]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v210 = &v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v204 = &v175 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v193 = &v175 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v190 = &v175 - v15;
  v16 = sub_1C6D75F50();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v175 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v214 = &v175 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v189 = &v175 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v212 = &v175 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v185 = &v175 - v28;
  v29 = sub_1C6D79040();
  v30 = *(v29 - 8);
  v31 = v30[8];
  MEMORY[0x1EEE9AC00](v29);
  v183 = &v175 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v200 = &v175 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v175 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v213 = &v175 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v196 = &v175 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v194 = &v175 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v176 = &v175 - v45;
  v47.n128_f64[0] = MEMORY[0x1EEE9AC00](v46);
  v175 = &v175 - v48;
  v49 = *(a3 + 8);
  if (v49 < 1)
  {
    v51 = MEMORY[0x1E69E7CC0];
LABEL_113:
    v29 = *v178;
    if (!*v178)
    {
      goto LABEL_153;
    }

    v17 = v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_147;
    }

    v168 = v17;
LABEL_116:
    v216 = v168;
    v17 = *(v168 + 2);
    if (v17 >= 2)
    {
      do
      {
        v169 = *a3;
        if (!*a3)
        {
          goto LABEL_151;
        }

        v170 = a3;
        a3 = *&v168[16 * v17];
        v171 = v168;
        v172 = *&v168[16 * v17 + 24];
        sub_1C6D17B88(v169 + v30[9] * a3, v169 + v30[9] * *&v168[16 * v17 + 16], v169 + v30[9] * v172, v29);
        if (v5)
        {
          break;
        }

        if (v172 < a3)
        {
          goto LABEL_140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v171 = sub_1C6C73C90(v171);
        }

        if (v17 - 2 >= *(v171 + 2))
        {
          goto LABEL_141;
        }

        v173 = &v171[16 * v17];
        *v173 = a3;
        *(v173 + 1) = v172;
        v216 = v171;
        sub_1C6C73C04(v17 - 1);
        v168 = v216;
        v17 = *(v216 + 2);
        a3 = v170;
      }

      while (v17 > 1);
    }

LABEL_124:

    return;
  }

  v50 = 0;
  v208 = v30 + 2;
  v209 = (v30 + 1);
  v211 = (v17 + 32);
  v215 = (v17 + 56);
  v197 = (v17 + 48);
  v205 = (v30 + 4);
  v206 = (v17 + 8);
  v51 = MEMORY[0x1E69E7CC0];
  v179 = a3;
  v192 = v30;
  v202 = v29;
  v203 = v20;
  v207 = v37;
  while (1)
  {
    v184 = v51;
    v181 = v50;
    if (v50 + 1 >= v49)
    {
      v74 = v50 + 1;
      v86 = v180;
      goto LABEL_33;
    }

    v195 = v49;
    v17 = *a3;
    v52 = v30;
    v53 = v30[9];
    v54 = (*a3 + v53 * (v50 + 1));
    v55 = v50;
    v56 = v52[2];
    v57 = v175;
    v201 = v54;
    (v56)(v175, v47);
    v58 = v17 + v53 * v55;
    v59 = v176;
    v191 = v56;
    (v56)(v176, v58, v29);
    LODWORD(v198) = sub_1C6D09028(v57, v59);
    if (v5)
    {
      v174 = *v209;
      (*v209)(v59, v29);
      v174(v57, v29);
      goto LABEL_124;
    }

    v177 = 0;
    v60 = *v209;
    (*v209)(v59, v29);
    v188 = v60;
    v60(v57, v29);
    v61 = v181 + 2;
    v62 = v17 + v53 * (v181 + 2);
    v63 = v185;
    v199 = v53;
    v64 = v201;
    while (1)
    {
      v74 = v195;
      if (v195 == v61)
      {
        break;
      }

      v75 = v63;
      v76 = v191;
      (v191)(v194, v62, v29);
      v201 = v64;
      v76(v196, v64, v29);
      v77 = [sub_1C6D79030() publishDate];
      swift_unknownObjectRelease();
      if (v77)
      {
        v78 = v212;
        sub_1C6D75F20();

        v79 = *v211;
        v80 = v190;
        (*v211)(v190, v78, v16);
        v81 = *v215;
        (*v215)(v80, 0, 1, v16);
        (v79)(v75, v80, v16);
      }

      else
      {
        v81 = *v215;
        v82 = v190;
        (*v215)(v190, 1, 1, v16);
        sub_1C6D75F00();
        if ((*v197)(v82, 1, v16) != 1)
        {
          sub_1C6D1A8AC(v82, &qword_1EDCEA960, MEMORY[0x1E6969530]);
        }
      }

      v83 = [sub_1C6D79030() publishDate];
      swift_unknownObjectRelease();
      if (v83)
      {
        v65 = v212;
        sub_1C6D75F20();

        v66 = *v211;
        v67 = v193;
        v68 = v65;
        v63 = v185;
        (*v211)(v193, v68, v16);
        v81(v67, 0, 1, v16);
        v69 = v189;
        (v66)(v189, v67, v16);
        v70 = v199;
      }

      else
      {
        v84 = v193;
        v81(v193, 1, 1, v16);
        v69 = v189;
        sub_1C6D75F00();
        v85 = (*v197)(v84, 1, v16);
        v63 = v75;
        v70 = v199;
        if (v85 != 1)
        {
          sub_1C6D1A8AC(v193, &qword_1EDCEA960, MEMORY[0x1E6969530]);
        }
      }

      v17 = sub_1C6D75EE0();
      v71 = v69;
      v72 = *v206;
      (*v206)(v71, v16);
      v72(v63, v16);
      v73 = v188;
      (v188)(v196, v29);
      v73(v194, v29);
      ++v61;
      v62 += v70;
      v64 = &v201[v70];
      if ((v198 ^ v17))
      {
        v74 = v61 - 1;
        break;
      }
    }

    v5 = v177;
    a3 = v179;
    v30 = v192;
    v86 = v180;
    v87 = v184;
    v37 = v207;
    v50 = v181;
    if (v198)
    {
      if (v74 < v181)
      {
        goto LABEL_146;
      }

      if (v181 < v74)
      {
        v88 = v199 * (v74 - 1);
        v89 = v74;
        v90 = v74 * v199;
        v195 = v74;
        v91 = v181;
        v92 = v181 * v199;
        do
        {
          if (v91 != --v89)
          {
            v93 = *v179;
            if (!*v179)
            {
              goto LABEL_150;
            }

            v17 = v93 + v92;
            v201 = *v205;
            (v201)(v183, v93 + v92, v29, v87);
            if (v92 < v88 || v17 >= v93 + v90)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v92 != v88)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v201)(v93 + v88, v183, v29);
            v86 = v180;
            v87 = v184;
            v50 = v181;
          }

          ++v91;
          v88 -= v199;
          v90 -= v199;
          v92 += v199;
        }

        while (v91 < v89);
        v5 = v177;
        a3 = v179;
        v30 = v192;
        v37 = v207;
        v74 = v195;
      }
    }

LABEL_33:
    v94 = *(a3 + 8);
    if (v74 >= v94)
    {
      goto LABEL_42;
    }

    if (__OFSUB__(v74, v50))
    {
      goto LABEL_143;
    }

    if (v74 - v50 >= v86)
    {
      goto LABEL_42;
    }

    if (__OFADD__(v50, v86))
    {
      goto LABEL_144;
    }

    if (v50 + v86 >= v94)
    {
      v17 = *(a3 + 8);
    }

    else
    {
      v17 = v50 + v86;
    }

    if (v17 < v50)
    {
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      v168 = sub_1C6C73C90(v17);
      goto LABEL_116;
    }

    if (v74 == v17)
    {
LABEL_42:
      v17 = v74;
      if (v74 < v50)
      {
        goto LABEL_142;
      }

      goto LABEL_43;
    }

    v177 = v5;
    v143 = *a3;
    v144 = v30[9];
    v201 = v30[2];
    v145 = (v143 + v144 * (v74 - 1));
    v198 = -v144;
    v199 = v143;
    v146 = (v50 - v74);
    v182 = v144;
    v30 = (v143 + v74 * v144);
    v186 = v17;
LABEL_95:
    v195 = v74;
    v187 = v30;
    v188 = v146;
    v191 = v145;
    v147 = v145;
LABEL_96:
    v148 = v201;
    (v201)(v213, v30, v29, v47);
    v148(v37, v147, v29);
    v149 = [sub_1C6D79030() publishDate];
    swift_unknownObjectRelease();
    if (v149)
    {
      v150 = v212;
      sub_1C6D75F20();

      v151 = *v211;
      v152 = v204;
      (*v211)(v204, v150, v16);
      v153 = *v215;
      (*v215)(v152, 0, 1, v16);
      (v151)(v214, v152, v16);
    }

    else
    {
      v153 = *v215;
      v154 = v204;
      (*v215)(v204, 1, 1, v16);
      sub_1C6D75F00();
      if ((*v197)(v154, 1, v16) != 1)
      {
        sub_1C6D1A8AC(v154, &qword_1EDCEA960, MEMORY[0x1E6969530]);
      }
    }

    v155 = [sub_1C6D79030() publishDate];
    swift_unknownObjectRelease();
    if (v155)
    {
      v156 = v212;
      sub_1C6D75F20();

      v157 = v210;
      v158 = *v211;
      (*v211)(v210, v156, v16);
      v153(v157, 0, 1, v16);
      v159 = v203;
      v158();
    }

    else
    {
      v160 = v210;
      v153(v210, 1, 1, v16);
      v159 = v203;
      sub_1C6D75F00();
      if ((*v197)(v160, 1, v16) != 1)
      {
        sub_1C6D1A8AC(v210, &qword_1EDCEA960, MEMORY[0x1E6969530]);
      }
    }

    v161 = v214;
    v162 = sub_1C6D75EE0();
    v163 = *v206;
    (*v206)(v159, v16);
    v163(v161, v16);
    v164 = *v209;
    v37 = v207;
    v29 = v202;
    (*v209)(v207, v202);
    v164(v213, v29);
    if (v162)
    {
      break;
    }

LABEL_94:
    v74 = v195 + 1;
    v145 = &v191[v182];
    v146 = v188 - 1;
    v30 = (v187 + v182);
    v17 = v186;
    if (v195 + 1 != v186)
    {
      goto LABEL_95;
    }

    v5 = v177;
    a3 = v179;
    v50 = v181;
    if (v186 < v181)
    {
      goto LABEL_142;
    }

LABEL_43:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v186 = v17;
    if (isUniquelyReferenced_nonNull_native)
    {
      v51 = v184;
    }

    else
    {
      v51 = sub_1C6B657D0(0, *(v184 + 2) + 1, 1, v184);
    }

    v97 = *(v51 + 2);
    v96 = *(v51 + 3);
    v17 = v97 + 1;
    if (v97 >= v96 >> 1)
    {
      v51 = sub_1C6B657D0((v96 > 1), v97 + 1, 1, v51);
    }

    *(v51 + 2) = v17;
    v98 = &v51[16 * v97];
    v99 = v186;
    *(v98 + 4) = v50;
    *(v98 + 5) = v99;
    v201 = *v178;
    if (!v201)
    {
      goto LABEL_152;
    }

    if (v97)
    {
      while (1)
      {
        v100 = v17 - 1;
        if (v17 >= 4)
        {
          break;
        }

        if (v17 == 3)
        {
          v101 = *(v51 + 4);
          v102 = *(v51 + 5);
          v111 = __OFSUB__(v102, v101);
          v103 = v102 - v101;
          v104 = v111;
LABEL_62:
          if (v104)
          {
            goto LABEL_131;
          }

          v117 = &v51[16 * v17];
          v119 = *v117;
          v118 = *(v117 + 1);
          v120 = __OFSUB__(v118, v119);
          v121 = v118 - v119;
          v122 = v120;
          if (v120)
          {
            goto LABEL_134;
          }

          v123 = &v51[16 * v100 + 32];
          v125 = *v123;
          v124 = *(v123 + 1);
          v111 = __OFSUB__(v124, v125);
          v126 = v124 - v125;
          if (v111)
          {
            goto LABEL_137;
          }

          if (__OFADD__(v121, v126))
          {
            goto LABEL_138;
          }

          if (v121 + v126 >= v103)
          {
            if (v103 < v126)
            {
              v100 = v17 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v127 = &v51[16 * v17];
        v129 = *v127;
        v128 = *(v127 + 1);
        v111 = __OFSUB__(v128, v129);
        v121 = v128 - v129;
        v122 = v111;
LABEL_76:
        if (v122)
        {
          goto LABEL_133;
        }

        v130 = &v51[16 * v100];
        v132 = *(v130 + 4);
        v131 = *(v130 + 5);
        v111 = __OFSUB__(v131, v132);
        v133 = v131 - v132;
        if (v111)
        {
          goto LABEL_136;
        }

        if (v133 < v121)
        {
          goto LABEL_3;
        }

LABEL_83:
        v138 = v100 - 1;
        if (v100 - 1 >= v17)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        v139 = *a3;
        if (!*a3)
        {
          goto LABEL_149;
        }

        v30 = a3;
        v140 = v51;
        v17 = *&v51[16 * v138 + 32];
        a3 = *&v51[16 * v100 + 40];
        sub_1C6D17B88(v139 + v192[9] * v17, v139 + v192[9] * *&v51[16 * v100 + 32], v139 + v192[9] * a3, v201);
        if (v5)
        {
          goto LABEL_124;
        }

        if (a3 < v17)
        {
          goto LABEL_127;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v141 = v140;
        }

        else
        {
          v141 = sub_1C6C73C90(v140);
        }

        v37 = v207;
        if (v138 >= *(v141 + 2))
        {
          goto LABEL_128;
        }

        v142 = &v141[16 * v138];
        *(v142 + 4) = v17;
        *(v142 + 5) = a3;
        v216 = v141;
        sub_1C6C73C04(v100);
        v51 = v216;
        v17 = *(v216 + 2);
        a3 = v30;
        if (v17 <= 1)
        {
          goto LABEL_3;
        }
      }

      v105 = &v51[16 * v17 + 32];
      v106 = *(v105 - 64);
      v107 = *(v105 - 56);
      v111 = __OFSUB__(v107, v106);
      v108 = v107 - v106;
      if (v111)
      {
        goto LABEL_129;
      }

      v110 = *(v105 - 48);
      v109 = *(v105 - 40);
      v111 = __OFSUB__(v109, v110);
      v103 = v109 - v110;
      v104 = v111;
      if (v111)
      {
        goto LABEL_130;
      }

      v112 = &v51[16 * v17];
      v114 = *v112;
      v113 = *(v112 + 1);
      v111 = __OFSUB__(v113, v114);
      v115 = v113 - v114;
      if (v111)
      {
        goto LABEL_132;
      }

      v111 = __OFADD__(v103, v115);
      v116 = v103 + v115;
      if (v111)
      {
        goto LABEL_135;
      }

      if (v116 >= v108)
      {
        v134 = &v51[16 * v100 + 32];
        v136 = *v134;
        v135 = *(v134 + 1);
        v111 = __OFSUB__(v135, v136);
        v137 = v135 - v136;
        if (v111)
        {
          goto LABEL_139;
        }

        if (v103 < v137)
        {
          v100 = v17 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_3:
    v49 = *(a3 + 8);
    v50 = v186;
    v30 = v192;
    if (v186 >= v49)
    {
      goto LABEL_113;
    }
  }

  if (v199)
  {
    v165 = *v205;
    v166 = v200;
    (*v205)(v200, v30, v29);
    swift_arrayInitWithTakeFrontToBack();
    (v165)(v147, v166, v29);
    v147 += v198;
    v30 = (v30 + v198);
    if (__CFADD__(v146++, 1))
    {
      goto LABEL_94;
    }

    goto LABEL_96;
  }

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
}

void sub_1C6D14CA8(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v5 = v4;
  v141 = a1;
  v8 = sub_1C6D79040();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v8);
  v144 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v152 = &v137 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v158 = &v137 - v15;
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v157 = &v137 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v20 = *v141;
    if (!*v141)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_125:
      v21 = sub_1C6C73C90(v21);
    }

    v160 = v21;
    v133 = *(v21 + 2);
    if (v133 >= 2)
    {
      while (*a3)
      {
        v134 = *&v21[16 * v133];
        v135 = *&v21[16 * v133 + 24];
        sub_1C6D18224(*a3 + v9[9] * v134, *a3 + v9[9] * *&v21[16 * v133 + 16], *a3 + v9[9] * v135, v20);
        if (v5)
        {
          goto LABEL_103;
        }

        if (v135 < v134)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1C6C73C90(v21);
        }

        if (v133 - 2 >= *(v21 + 2))
        {
          goto LABEL_119;
        }

        v136 = &v21[16 * v133];
        *v136 = v134;
        *(v136 + 1) = v135;
        v160 = v21;
        sub_1C6C73C04(v133 - 1);
        v21 = v160;
        v133 = *(v160 + 2);
        if (v133 <= 1)
        {
          goto LABEL_103;
        }
      }

      goto LABEL_129;
    }

LABEL_103:

    return;
  }

  v137 = a4;
  v20 = 0;
  v155 = (v9 + 1);
  v156 = v9 + 2;
  v154 = (v9 + 4);
  v21 = MEMORY[0x1E69E7CC0];
  v142 = v9;
  v159 = v8;
  v138 = a3;
  while (1)
  {
    v149 = v21;
    if (v20 + 1 >= v19)
    {
      v55 = v20 + 1;
    }

    else
    {
      v150 = v19;
      v140 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v20;
      v25 = &v22[v23 * (v20 + 1)];
      v26 = v22;
      v147 = v22;
      v27 = v9[2];
      v28 = v157;
      (v27)(v157, v25, v8, v17);
      v29 = &v26[v23 * v24];
      v30 = v158;
      v151 = v27;
      v31 = (v27)(v158, v29, v8);
      v32 = MEMORY[0x1CCA568F0](v31);
      v33 = sub_1C6D79010();
      [v33 sortingScore];
      v35 = v34;

      v36 = sub_1C6D79010();
      [v36 sortingScore];
      v38 = v37;

      objc_autoreleasePoolPop(v32);
      v39 = v142[1];
      v39(v30, v8);
      v148 = v39;
      v39(v28, v8);
      v139 = v24;
      v40 = v24 + 2;
      v153 = v23;
      v41 = (v147 + v23 * (v24 + 2));
      while (v150 != v40)
      {
        v42 = v157;
        v43 = v151;
        v151(v157, v41, v159);
        v44 = v158;
        v45 = (v43)(v158, v25, v159);
        v46 = MEMORY[0x1CCA568F0](v45);
        v47 = sub_1C6D79010();
        [v47 sortingScore];
        v49 = v48;

        v50 = sub_1C6D79010();
        [v50 sortingScore];
        v52 = v51;

        objc_autoreleasePoolPop(v46);
        v53 = v148;
        (v148)(v44, v159);
        v54 = v42;
        v8 = v159;
        v53(v54, v159);
        v21 = v149;
        ++v40;
        v41 += v153;
        v25 += v153;
        if (v38 < v35 == v52 >= v49)
        {
          v55 = v40 - 1;
          goto LABEL_11;
        }
      }

      v55 = v150;
LABEL_11:
      v5 = v140;
      a3 = v138;
      v9 = v142;
      v20 = v139;
      if (v38 < v35)
      {
        if (v55 < v139)
        {
          goto LABEL_122;
        }

        if (v139 < v55)
        {
          v56 = v153 * (v55 - 1);
          v57 = v55 * v153;
          v150 = v55;
          v58 = v139;
          v59 = v139 * v153;
          do
          {
            if (v58 != --v55)
            {
              v61 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v62 = a3;
              v151 = *v154;
              v151(v144, &v61[v59], v159);
              if (v59 < v56 || &v61[v59] >= &v61[v57])
              {
                v60 = v159;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v60 = v159;
                if (v59 != v56)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v151(&v61[v56], v144, v60);
              a3 = v62;
              v9 = v142;
              v21 = v149;
            }

            ++v58;
            v56 -= v153;
            v57 -= v153;
            v59 += v153;
          }

          while (v58 < v55);
          v5 = v140;
          v8 = v159;
          v20 = v139;
          v55 = v150;
        }
      }
    }

    v63 = a3[1];
    if (v55 < v63)
    {
      if (__OFSUB__(v55, v20))
      {
        goto LABEL_121;
      }

      if (v55 - v20 < v137)
      {
        if (__OFADD__(v20, v137))
        {
          goto LABEL_123;
        }

        if (v20 + v137 < v63)
        {
          v63 = v20 + v137;
        }

        if (v63 < v20)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v145 = v63;
        if (v55 != v63)
        {
          break;
        }
      }
    }

LABEL_42:
    if (v55 < v20)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1C6B657D0(0, *(v21 + 2) + 1, 1, v21);
    }

    v88 = *(v21 + 2);
    v87 = *(v21 + 3);
    v89 = v88 + 1;
    if (v88 >= v87 >> 1)
    {
      v21 = sub_1C6B657D0((v87 > 1), v88 + 1, 1, v21);
    }

    *(v21 + 2) = v89;
    v90 = &v21[16 * v88];
    *(v90 + 4) = v20;
    *(v90 + 5) = v55;
    v145 = v55;
    v91 = *v141;
    if (!*v141)
    {
      goto LABEL_130;
    }

    if (v88)
    {
      while (1)
      {
        v20 = v89 - 1;
        if (v89 >= 4)
        {
          break;
        }

        if (v89 == 3)
        {
          v92 = *(v21 + 4);
          v93 = *(v21 + 5);
          v102 = __OFSUB__(v93, v92);
          v94 = v93 - v92;
          v95 = v102;
LABEL_62:
          if (v95)
          {
            goto LABEL_109;
          }

          v108 = &v21[16 * v89];
          v110 = *v108;
          v109 = *(v108 + 1);
          v111 = __OFSUB__(v109, v110);
          v112 = v109 - v110;
          v113 = v111;
          if (v111)
          {
            goto LABEL_112;
          }

          v114 = &v21[16 * v20 + 32];
          v116 = *v114;
          v115 = *(v114 + 1);
          v102 = __OFSUB__(v115, v116);
          v117 = v115 - v116;
          if (v102)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v112, v117))
          {
            goto LABEL_116;
          }

          if (v112 + v117 >= v94)
          {
            if (v94 < v117)
            {
              v20 = v89 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v118 = &v21[16 * v89];
        v120 = *v118;
        v119 = *(v118 + 1);
        v102 = __OFSUB__(v119, v120);
        v112 = v119 - v120;
        v113 = v102;
LABEL_76:
        if (v113)
        {
          goto LABEL_111;
        }

        v121 = &v21[16 * v20];
        v123 = *(v121 + 4);
        v122 = *(v121 + 5);
        v102 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v102)
        {
          goto LABEL_114;
        }

        if (v124 < v112)
        {
          goto LABEL_3;
        }

LABEL_83:
        v129 = v20 - 1;
        if (v20 - 1 >= v89)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v130 = *&v21[16 * v129 + 32];
        v131 = *&v21[16 * v20 + 40];
        sub_1C6D18224(*a3 + v9[9] * v130, *a3 + v9[9] * *&v21[16 * v20 + 32], *a3 + v9[9] * v131, v91);
        if (v5)
        {
          goto LABEL_103;
        }

        if (v131 < v130)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1C6C73C90(v21);
        }

        if (v129 >= *(v21 + 2))
        {
          goto LABEL_106;
        }

        v132 = &v21[16 * v129];
        *(v132 + 4) = v130;
        *(v132 + 5) = v131;
        v160 = v21;
        sub_1C6C73C04(v20);
        v21 = v160;
        v89 = *(v160 + 2);
        v8 = v159;
        if (v89 <= 1)
        {
          goto LABEL_3;
        }
      }

      v96 = &v21[16 * v89 + 32];
      v97 = *(v96 - 64);
      v98 = *(v96 - 56);
      v102 = __OFSUB__(v98, v97);
      v99 = v98 - v97;
      if (v102)
      {
        goto LABEL_107;
      }

      v101 = *(v96 - 48);
      v100 = *(v96 - 40);
      v102 = __OFSUB__(v100, v101);
      v94 = v100 - v101;
      v95 = v102;
      if (v102)
      {
        goto LABEL_108;
      }

      v103 = &v21[16 * v89];
      v105 = *v103;
      v104 = *(v103 + 1);
      v102 = __OFSUB__(v104, v105);
      v106 = v104 - v105;
      if (v102)
      {
        goto LABEL_110;
      }

      v102 = __OFADD__(v94, v106);
      v107 = v94 + v106;
      if (v102)
      {
        goto LABEL_113;
      }

      if (v107 >= v99)
      {
        v125 = &v21[16 * v20 + 32];
        v127 = *v125;
        v126 = *(v125 + 1);
        v102 = __OFSUB__(v126, v127);
        v128 = v126 - v127;
        if (v102)
        {
          goto LABEL_117;
        }

        if (v94 < v128)
        {
          v20 = v89 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v145;
    if (v145 >= v19)
    {
      goto LABEL_93;
    }
  }

  v140 = v5;
  v64 = *a3;
  v65 = v9[9];
  v153 = v9[2];
  v66 = v64 + v65 * (v55 - 1);
  v67 = -v65;
  v139 = v20;
  v68 = v20 - v55;
  v151 = v64;
  v143 = v65;
  v69 = v64 + v55 * v65;
LABEL_35:
  v150 = v55;
  v146 = v69;
  v147 = v68;
  v148 = v66;
  v70 = v66;
  while (1)
  {
    v71 = v157;
    v72 = v153;
    (v153)(v157, v69, v8, v17);
    v73 = v158;
    v74 = v72(v158, v70, v159);
    v75 = MEMORY[0x1CCA568F0](v74);
    v76 = sub_1C6D79010();
    [v76 sortingScore];
    v78 = v77;

    v79 = sub_1C6D79010();
    [v79 sortingScore];
    v81 = v80;

    objc_autoreleasePoolPop(v75);
    v82 = *v155;
    v83 = v73;
    v8 = v159;
    (*v155)(v83, v159);
    v82(v71, v8);
    if (v81 >= v78)
    {
LABEL_34:
      v55 = v150 + 1;
      v66 = &v148[v143];
      v68 = v147 - 1;
      v69 = &v146[v143];
      if (v150 + 1 != v145)
      {
        goto LABEL_35;
      }

      v5 = v140;
      a3 = v138;
      v9 = v142;
      v21 = v149;
      v20 = v139;
      v55 = v145;
      goto LABEL_42;
    }

    if (!v151)
    {
      break;
    }

    v84 = *v154;
    v85 = v152;
    (*v154)(v152, v69, v8);
    swift_arrayInitWithTakeFrontToBack();
    v84(v70, v85, v8);
    v70 += v67;
    v69 += v67;
    if (__CFADD__(v68++, 1))
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
}

void sub_1C6D15768(int64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v134 = a1;
  v8 = sub_1C6D79040();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v137 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v146 = &v130 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v152 = &v130 - v14;
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v151 = &v130 - v18;
  v143 = a3;
  v19 = a3[1];
  v141 = v16;
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v22 = *v134;
    if (!*v134)
    {
      goto LABEL_132;
    }

    v8 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v141;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v8 = sub_1C6C73C90(v8);
    }

    v153 = v8;
    v126 = *(v8 + 16);
    if (v126 >= 2)
    {
      while (*v143)
      {
        v127 = *(v8 + 16 * v126);
        v128 = *(v8 + 16 * (v126 - 1) + 40);
        sub_1C6D18840(&(*v143)[*(v21 + 9) * v127], &(*v143)[*(v21 + 9) * *(v8 + 16 * (v126 - 1) + 32)], &(*v143)[*(v21 + 9) * v128], v22);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v128 < v127)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1C6C73C90(v8);
        }

        if (v126 - 2 >= *(v8 + 16))
        {
          goto LABEL_120;
        }

        v129 = (v8 + 16 * v126);
        *v129 = v127;
        v129[1] = v128;
        v153 = v8;
        sub_1C6C73C04(v126 - 1);
        v8 = v153;
        v126 = *(v153 + 16);
        if (v126 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v131 = a4;
  v20 = 0;
  v149 = (v16 + 8);
  v150 = v16 + 16;
  v148 = (v16 + 32);
  v21 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v142 = v21;
    if (v20 + 1 >= v19)
    {
      v40 = v20 + 1;
    }

    else
    {
      v144 = v19;
      v133 = v5;
      v24 = *(v141 + 9);
      v25 = &(*v143)[v24 * v23];
      v139 = *v143;
      v26 = v139;
      v27 = *(v141 + 2);
      v28 = v151;
      v27(v151, &v139[v24 * v23], v8, v17);
      v29 = &v26[v24 * v20];
      v30 = v152;
      v145 = v27;
      (v27)(v152, v29, v8);
      v31 = sub_1C6D79010();
      [v31 personalizationScore];
      v33 = v32;

      v34 = sub_1C6D79010();
      [v34 personalizationScore];
      v36 = v35;

      v37 = *(v141 + 1);
      v37(v30, v8);
      v140 = v37;
      v37(v28, v8);
      v132 = v20;
      v38 = v20 + 2;
      v147 = v24;
      v39 = &v139[v24 * (v20 + 2)];
      while (1)
      {
        v40 = v144;
        if (v144 == v38)
        {
          break;
        }

        v41 = v151;
        v42 = v145;
        v145(v151, v39, v8);
        v43 = v152;
        v42(v152, v25, v8);
        v44 = sub_1C6D79010();
        [v44 personalizationScore];
        v46 = v45;

        v47 = sub_1C6D79010();
        [v47 personalizationScore];
        v49 = v48;

        v50 = v140;
        (v140)(v43, v8);
        v50(v41, v8);
        v21 = v142;
        ++v38;
        v39 += v147;
        v25 += v147;
        if (v36 < v33 == v49 >= v46)
        {
          v40 = v38 - 1;
          break;
        }
      }

      v5 = v133;
      v22 = v132;
      if (v36 < v33)
      {
        if (v40 < v132)
        {
          goto LABEL_123;
        }

        if (v132 < v40)
        {
          v51 = v40;
          v52 = v147 * (v40 - 1);
          v53 = v40 * v147;
          v144 = v40;
          v54 = v132;
          v55 = v132 * v147;
          do
          {
            if (v54 != --v51)
            {
              v56 = *v143;
              if (!*v143)
              {
                goto LABEL_129;
              }

              v57 = *v148;
              (*v148)(v137, &v56[v55], v8);
              if (v55 < v52 || &v56[v55] >= &v56[v53])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v52)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v57(&v56[v52], v137, v8);
              v21 = v142;
            }

            ++v54;
            v52 -= v147;
            v53 -= v147;
            v55 += v147;
          }

          while (v54 < v51);
          v5 = v133;
          v22 = v132;
          v40 = v144;
        }
      }
    }

    v58 = v143[1];
    if (v40 < v58)
    {
      if (__OFSUB__(v40, v22))
      {
        goto LABEL_122;
      }

      if (v40 - v22 < v131)
      {
        if (__OFADD__(v22, v131))
        {
          goto LABEL_124;
        }

        if (v22 + v131 >= v58)
        {
          v59 = v143[1];
        }

        else
        {
          v59 = v22 + v131;
        }

        if (v59 < v22)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v40 != v59)
        {
          break;
        }
      }
    }

    v20 = v40;
    if (v40 < v22)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1C6B657D0(0, *(v21 + 2) + 1, 1, v21);
    }

    v61 = *(v21 + 2);
    v60 = *(v21 + 3);
    v62 = v61 + 1;
    if (v61 >= v60 >> 1)
    {
      v21 = sub_1C6B657D0((v60 > 1), v61 + 1, 1, v21);
    }

    *(v21 + 2) = v62;
    v63 = &v21[16 * v61];
    *(v63 + 4) = v22;
    *(v63 + 5) = v20;
    v64 = *v134;
    if (!*v134)
    {
      goto LABEL_131;
    }

    if (v61)
    {
      while (1)
      {
        v22 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v65 = *(v21 + 4);
          v66 = *(v21 + 5);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_52:
          if (v68)
          {
            goto LABEL_110;
          }

          v81 = &v21[16 * v62];
          v83 = *v81;
          v82 = *(v81 + 1);
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_113;
          }

          v87 = &v21[16 * v22 + 32];
          v89 = *v87;
          v88 = *(v87 + 1);
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_117;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v22 = v62 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v91 = &v21[16 * v62];
        v93 = *v91;
        v92 = *(v91 + 1);
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_66:
        if (v86)
        {
          goto LABEL_112;
        }

        v94 = &v21[16 * v22];
        v96 = *(v94 + 4);
        v95 = *(v94 + 5);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_115;
        }

        if (v97 < v85)
        {
          goto LABEL_3;
        }

LABEL_73:
        v102 = v22 - 1;
        if (v22 - 1 >= v62)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*v143)
        {
          goto LABEL_128;
        }

        v103 = *&v21[16 * v102 + 32];
        v104 = *&v21[16 * v22 + 40];
        sub_1C6D18840(&(*v143)[*(v141 + 9) * v103], &(*v143)[*(v141 + 9) * *&v21[16 * v22 + 32]], &(*v143)[*(v141 + 9) * v104], v64);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v104 < v103)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1C6C73C90(v21);
        }

        if (v102 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v105 = &v21[16 * v102];
        *(v105 + 4) = v103;
        *(v105 + 5) = v104;
        v153 = v21;
        sub_1C6C73C04(v22);
        v21 = v153;
        v62 = *(v153 + 16);
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v69 = &v21[16 * v62 + 32];
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_108;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_109;
      }

      v76 = &v21[16 * v62];
      v78 = *v76;
      v77 = *(v76 + 1);
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_111;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_114;
      }

      if (v80 >= v72)
      {
        v98 = &v21[16 * v22 + 32];
        v100 = *v98;
        v99 = *(v98 + 1);
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_118;
        }

        if (v67 < v101)
        {
          v22 = v62 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v143[1];
    if (v20 >= v19)
    {
      goto LABEL_94;
    }
  }

  v133 = v5;
  v106 = *v143;
  v107 = *(v141 + 9);
  v147 = *(v141 + 2);
  v108 = &v106[v107 * (v40 - 1)];
  v109 = -v107;
  v132 = v22;
  v110 = (v22 - v40);
  v145 = v106;
  v135 = v107;
  v111 = &v106[v40 * v107];
  v136 = v59;
LABEL_85:
  v144 = v40;
  v138 = v111;
  v139 = v110;
  v140 = v108;
  while (1)
  {
    v112 = v151;
    v113 = v147;
    (v147)(v151, v111, v8, v17);
    v114 = v152;
    v113(v152, v108, v8);
    v115 = sub_1C6D79010();
    [v115 personalizationScore];
    v117 = v116;

    v118 = sub_1C6D79010();
    [v118 personalizationScore];
    v120 = v119;

    v121 = *v149;
    (*v149)(v114, v8);
    v121(v112, v8);
    if (v120 >= v117)
    {
LABEL_84:
      v40 = v144 + 1;
      v108 = &v140[v135];
      v110 = v139 - 1;
      v111 = &v138[v135];
      v20 = v136;
      if (v144 + 1 != v136)
      {
        goto LABEL_85;
      }

      v5 = v133;
      v21 = v142;
      v22 = v132;
      if (v136 < v132)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v145)
    {
      break;
    }

    v122 = *v148;
    v123 = v146;
    (*v148)(v146, v111, v8);
    swift_arrayInitWithTakeFrontToBack();
    v122(v108, v123, v8);
    v108 += v109;
    v111 += v109;
    if (__CFADD__(v110++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

uint64_t sub_1C6D161F4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C6C73C90(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1C6D18E30((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C6B657D0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_1C6B657D0((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
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

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_1C6D18E30((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
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

void sub_1C6D16750(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v6 = v4;
  v126 = a1;
  v9 = sub_1C6D79300();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9);
  v128 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v139 = &v123 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v145 = &v123 - v16;
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v144 = &v123 - v19;
  v136 = a3;
  v20 = *(a3 + 8);
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v126;
    if (!*v126)
    {
      goto LABEL_134;
    }

    a3 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v118 = a3;
    }

    else
    {
LABEL_128:
      v118 = sub_1C6C73C90(a3);
    }

    v146 = v118;
    a3 = *(v118 + 2);
    if (a3 >= 2)
    {
      while (*v136)
      {
        v119 = *&v118[16 * a3];
        v120 = v118;
        v121 = *&v118[16 * a3 + 24];
        sub_1C6D19024(&(*v136)[v10[9] * v119], &(*v136)[v10[9] * *&v118[16 * a3 + 16]], &(*v136)[v10[9] * v121], v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v121 < v119)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v120 = sub_1C6C73C90(v120);
        }

        if (a3 - 2 >= *(v120 + 2))
        {
          goto LABEL_122;
        }

        v122 = &v120[16 * a3];
        *v122 = v119;
        *(v122 + 1) = v121;
        v146 = v120;
        sub_1C6C73C04(a3 - 1);
        v118 = v146;
        a3 = *(v146 + 2);
        if (a3 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v21 = 0;
  v142 = (v10 + 1);
  v143 = v10 + 2;
  v141 = (v10 + 4);
  v22 = MEMORY[0x1E69E7CC0];
  v135 = v10;
  v125 = a4;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v129 = v22;
    if (v21 + 1 >= v20)
    {
      v39 = v21 + 1;
    }

    else
    {
      v137 = v20;
      v130 = v6;
      v25 = v10[9];
      v5 = &(*v136)[v25 * v24];
      v133 = *v136;
      v26 = v133;
      v27 = v10[2];
      v28 = v144;
      v27(v144, &v133[v25 * v24], v9, v18);
      v29 = &v26[v25 * v23];
      v30 = v145;
      v138 = v27;
      (v27)(v145, v29, v9);
      sub_1C6D792D0();
      v32 = v31;
      sub_1C6D792D0();
      v34 = v33;
      v35 = v23;
      v36 = v10[1];
      a3 = v142;
      v36(v30, v9);
      v134 = v36;
      v36(v28, v9);
      v124 = v35;
      v37 = v35 + 2;
      v140 = v25;
      v38 = &v133[v25 * (v35 + 2)];
      while (1)
      {
        v39 = v137;
        if (v137 == v37)
        {
          break;
        }

        a3 = v144;
        v40 = v138;
        v138(v144, v38, v9);
        v41 = v145;
        v40(v145, v5, v9);
        sub_1C6D792D0();
        v43 = v42;
        sub_1C6D792D0();
        v45 = v44;
        v46 = v134;
        (v134)(v41, v9);
        v46(a3, v9);
        v10 = v135;
        ++v37;
        v38 += v140;
        v5 += v140;
        if (v34 < v32 == v45 >= v43)
        {
          v39 = v37 - 1;
          break;
        }
      }

      v47 = v129;
      v6 = v130;
      a4 = v125;
      v23 = v124;
      if (v34 < v32)
      {
        if (v39 < v124)
        {
          goto LABEL_125;
        }

        if (v124 < v39)
        {
          v48 = v39;
          a3 = v140 * (v39 - 1);
          v5 = v39 * v140;
          v137 = v39;
          v49 = v124 * v140;
          do
          {
            if (v23 != --v48)
            {
              v130 = v6;
              v50 = *v136;
              if (!*v136)
              {
                goto LABEL_131;
              }

              v51 = *v141;
              (*v141)(v128, &v50[v49], v9, v47);
              if (v49 < a3 || &v50[v49] >= &v50[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v49 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v51(&v50[a3], v128, v9);
              v47 = v129;
              v6 = v130;
            }

            ++v23;
            a3 -= v140;
            v5 -= v140;
            v49 += v140;
          }

          while (v23 < v48);
          v10 = v135;
          a4 = v125;
          v23 = v124;
          v39 = v137;
        }
      }
    }

    v52 = v136[1];
    if (v39 < v52)
    {
      if (__OFSUB__(v39, v23))
      {
        goto LABEL_124;
      }

      if (v39 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_126;
        }

        if (v23 + a4 >= v52)
        {
          v5 = v136[1];
        }

        else
        {
          v5 = v23 + a4;
        }

        if (v5 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v39 != v5)
        {
          break;
        }
      }
    }

    v5 = v39;
    if (v39 < v23)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v22 = v129;
    }

    else
    {
      v22 = sub_1C6B657D0(0, *(v129 + 2) + 1, 1, v129);
    }

    a3 = *(v22 + 2);
    v53 = *(v22 + 3);
    v54 = a3 + 1;
    if (a3 >= v53 >> 1)
    {
      v22 = sub_1C6B657D0((v53 > 1), a3 + 1, 1, v22);
    }

    *(v22 + 2) = v54;
    v55 = &v22[16 * a3];
    *(v55 + 4) = v23;
    *(v55 + 5) = v5;
    v56 = *v126;
    if (!*v126)
    {
      goto LABEL_133;
    }

    v131 = v5;
    if (a3)
    {
      while (1)
      {
        v5 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v57 = *(v22 + 4);
          v58 = *(v22 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_112;
          }

          v73 = &v22[16 * v54];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_115;
          }

          v79 = &v22[16 * v5 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_119;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v5 = v54 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v22[16 * v54];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_114;
        }

        v86 = &v22[16 * v5];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_117;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v5 - 1;
        if (v5 - 1 >= v54)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v136)
        {
          goto LABEL_130;
        }

        v94 = v22;
        v95 = *&v22[16 * a3 + 32];
        v96 = *&v22[16 * v5 + 40];
        sub_1C6D19024(&(*v136)[v10[9] * v95], &(*v136)[v10[9] * *&v22[16 * v5 + 32]], &(*v136)[v10[9] * v96], v56);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v96 < v95)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_1C6C73C90(v94);
        }

        if (a3 >= *(v94 + 2))
        {
          goto LABEL_109;
        }

        v97 = &v94[16 * a3];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        v146 = v94;
        sub_1C6C73C04(v5);
        v22 = v146;
        v54 = *(v146 + 2);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v22[16 * v54 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_110;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_111;
      }

      v68 = &v22[16 * v54];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_113;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_116;
      }

      if (v72 >= v64)
      {
        v90 = &v22[16 * v5 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_120;
        }

        if (v59 < v93)
        {
          v5 = v54 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v136[1];
    v21 = v131;
    a4 = v125;
    if (v131 >= v20)
    {
      goto LABEL_95;
    }
  }

  v130 = v6;
  v98 = *v136;
  v99 = v10[9];
  v140 = v10[2];
  v100 = &v98[v99 * (v39 - 1)];
  v101 = v23;
  v102 = -v99;
  v124 = v101;
  v103 = (v101 - v39);
  v138 = v98;
  v127 = v99;
  v104 = &v98[v39 * v99];
  v131 = v5;
LABEL_85:
  v137 = v39;
  v132 = v104;
  v133 = v103;
  v105 = v104;
  v134 = v100;
  while (1)
  {
    v106 = v144;
    v107 = v140;
    (v140)(v144, v105, v9, v18);
    v108 = v145;
    v107(v145, v100, v9);
    sub_1C6D792D0();
    v110 = v109;
    sub_1C6D792D0();
    v112 = v111;
    v113 = *v142;
    (*v142)(v108, v9);
    v114 = v106;
    a3 = v9;
    v113(v114, v9);
    if (v112 >= v110)
    {
LABEL_84:
      v39 = v137 + 1;
      v100 = &v134[v127];
      v103 = v133 - 1;
      v5 = v131;
      v104 = &v132[v127];
      if (v137 + 1 != v131)
      {
        goto LABEL_85;
      }

      v6 = v130;
      v10 = v135;
      v23 = v124;
      if (v131 < v124)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v138)
    {
      break;
    }

    v115 = *v141;
    v116 = v139;
    (*v141)(v139, v105, v9);
    swift_arrayInitWithTakeFrontToBack();
    v115(v100, v116, v9);
    v100 += v102;
    v105 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_1C6D17160(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v6 = v4;
  v127 = a1;
  sub_1C6C74F64();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v9);
  v129 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v140 = &v124 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v146 = &v124 - v17;
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v145 = &v124 - v20;
  v137 = a3;
  v21 = *(a3 + 8);
  if (v21 < 1)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v127;
    if (!*v127)
    {
      goto LABEL_134;
    }

    a3 = v23;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v119 = a3;
    }

    else
    {
LABEL_128:
      v119 = sub_1C6C73C90(a3);
    }

    v147 = v119;
    a3 = *(v119 + 2);
    if (a3 >= 2)
    {
      while (*v137)
      {
        v120 = *&v119[16 * a3];
        v121 = v119;
        v122 = *&v119[16 * a3 + 24];
        sub_1C6D195C4(&(*v137)[v11[9] * v120], &(*v137)[v11[9] * *&v119[16 * a3 + 16]], &(*v137)[v11[9] * v122], v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v122 < v120)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = sub_1C6C73C90(v121);
        }

        if (a3 - 2 >= *(v121 + 2))
        {
          goto LABEL_122;
        }

        v123 = &v121[16 * a3];
        *v123 = v120;
        *(v123 + 1) = v122;
        v147 = v121;
        sub_1C6C73C04(a3 - 1);
        v119 = v147;
        a3 = *(v147 + 2);
        if (a3 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v22 = 0;
  v143 = (v11 + 1);
  v144 = v11 + 2;
  v142 = (v11 + 4);
  v23 = MEMORY[0x1E69E7CC0];
  v136 = v11;
  v126 = a4;
  while (1)
  {
    v24 = v22;
    v25 = v22 + 1;
    v130 = v23;
    if (v22 + 1 >= v21)
    {
      v40 = v22 + 1;
    }

    else
    {
      v138 = v21;
      v131 = v6;
      v26 = v11[9];
      v5 = &(*v137)[v26 * v25];
      v134 = *v137;
      v27 = v134;
      v28 = v11[2];
      v29 = v145;
      v28(v145, &v134[v26 * v25], v10, v19);
      v30 = &v27[v26 * v24];
      v31 = v146;
      v139 = v28;
      (v28)(v146, v30, v10);
      sub_1C6D79090();
      v33 = v32;
      sub_1C6D79090();
      v35 = v34;
      v36 = v24;
      v37 = v11[1];
      a3 = v143;
      v37(v31, v10);
      v135 = v37;
      v37(v29, v10);
      v125 = v36;
      v38 = v36 + 2;
      v141 = v26;
      v39 = &v134[v26 * (v36 + 2)];
      while (1)
      {
        v40 = v138;
        if (v138 == v38)
        {
          break;
        }

        a3 = v145;
        v41 = v139;
        v139(v145, v39, v10);
        v42 = v146;
        v41(v146, v5, v10);
        sub_1C6D79090();
        v44 = v43;
        sub_1C6D79090();
        v46 = v45;
        v47 = v135;
        (v135)(v42, v10);
        v47(a3, v10);
        v11 = v136;
        ++v38;
        v39 += v141;
        v5 += v141;
        if (v35 < v33 == v46 >= v44)
        {
          v40 = v38 - 1;
          break;
        }
      }

      v48 = v130;
      v6 = v131;
      a4 = v126;
      v24 = v125;
      if (v35 < v33)
      {
        if (v40 < v125)
        {
          goto LABEL_125;
        }

        if (v125 < v40)
        {
          v49 = v40;
          a3 = v141 * (v40 - 1);
          v5 = v40 * v141;
          v138 = v40;
          v50 = v125 * v141;
          do
          {
            if (v24 != --v49)
            {
              v131 = v6;
              v51 = *v137;
              if (!*v137)
              {
                goto LABEL_131;
              }

              v52 = *v142;
              (*v142)(v129, &v51[v50], v10, v48);
              if (v50 < a3 || &v51[v50] >= &v51[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v50 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v52(&v51[a3], v129, v10);
              v48 = v130;
              v6 = v131;
            }

            ++v24;
            a3 -= v141;
            v5 -= v141;
            v50 += v141;
          }

          while (v24 < v49);
          v11 = v136;
          a4 = v126;
          v24 = v125;
          v40 = v138;
        }
      }
    }

    v53 = v137[1];
    if (v40 < v53)
    {
      if (__OFSUB__(v40, v24))
      {
        goto LABEL_124;
      }

      if (v40 - v24 < a4)
      {
        if (__OFADD__(v24, a4))
        {
          goto LABEL_126;
        }

        if (v24 + a4 >= v53)
        {
          v5 = v137[1];
        }

        else
        {
          v5 = v24 + a4;
        }

        if (v5 < v24)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v40 != v5)
        {
          break;
        }
      }
    }

    v5 = v40;
    if (v40 < v24)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v23 = v130;
    }

    else
    {
      v23 = sub_1C6B657D0(0, *(v130 + 2) + 1, 1, v130);
    }

    a3 = *(v23 + 2);
    v54 = *(v23 + 3);
    v55 = a3 + 1;
    if (a3 >= v54 >> 1)
    {
      v23 = sub_1C6B657D0((v54 > 1), a3 + 1, 1, v23);
    }

    *(v23 + 2) = v55;
    v56 = &v23[16 * a3];
    *(v56 + 4) = v24;
    *(v56 + 5) = v5;
    v57 = *v127;
    if (!*v127)
    {
      goto LABEL_133;
    }

    v132 = v5;
    if (a3)
    {
      while (1)
      {
        v5 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v23 + 4);
          v59 = *(v23 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_112;
          }

          v74 = &v23[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_115;
          }

          v80 = &v23[16 * v5 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_119;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v5 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v23[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_114;
        }

        v87 = &v23[16 * v5];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_117;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v5 - 1;
        if (v5 - 1 >= v55)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v137)
        {
          goto LABEL_130;
        }

        v95 = v23;
        v96 = *&v23[16 * a3 + 32];
        v97 = *&v23[16 * v5 + 40];
        sub_1C6D195C4(&(*v137)[v11[9] * v96], &(*v137)[v11[9] * *&v23[16 * v5 + 32]], &(*v137)[v11[9] * v97], v57);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v97 < v96)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_1C6C73C90(v95);
        }

        if (a3 >= *(v95 + 2))
        {
          goto LABEL_109;
        }

        v98 = &v95[16 * a3];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v147 = v95;
        sub_1C6C73C04(v5);
        v23 = v147;
        v55 = *(v147 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v23[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_110;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_111;
      }

      v69 = &v23[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_113;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_116;
      }

      if (v73 >= v65)
      {
        v91 = &v23[16 * v5 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_120;
        }

        if (v60 < v94)
        {
          v5 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v21 = v137[1];
    v22 = v132;
    a4 = v126;
    if (v132 >= v21)
    {
      goto LABEL_95;
    }
  }

  v131 = v6;
  v99 = *v137;
  v100 = v11[9];
  v141 = v11[2];
  v101 = &v99[v100 * (v40 - 1)];
  v102 = v24;
  v103 = -v100;
  v125 = v102;
  v104 = (v102 - v40);
  v139 = v99;
  v128 = v100;
  v105 = &v99[v40 * v100];
  v132 = v5;
LABEL_85:
  v138 = v40;
  v133 = v105;
  v134 = v104;
  v106 = v105;
  v135 = v101;
  while (1)
  {
    v107 = v145;
    v108 = v141;
    (v141)(v145, v106, v10, v19);
    v109 = v146;
    v108(v146, v101, v10);
    sub_1C6D79090();
    v111 = v110;
    sub_1C6D79090();
    v113 = v112;
    v114 = *v143;
    (*v143)(v109, v10);
    v115 = v107;
    a3 = v10;
    v114(v115, v10);
    if (v113 >= v111)
    {
LABEL_84:
      v40 = v138 + 1;
      v101 = &v135[v128];
      v104 = v134 - 1;
      v5 = v132;
      v105 = &v133[v128];
      if (v138 + 1 != v132)
      {
        goto LABEL_85;
      }

      v6 = v131;
      v11 = v136;
      v24 = v125;
      if (v132 < v125)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v139)
    {
      break;
    }

    v116 = *v142;
    v117 = v140;
    (*v142)(v140, v106, v10);
    swift_arrayInitWithTakeFrontToBack();
    v116(v101, v117, v10);
    v101 += v103;
    v106 += v103;
    if (__CFADD__(v104++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_1C6D17B88(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v77 = a3;
  v9 = sub_1C6D79040();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - v13;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](&v62 - v16);
  v20 = &v62 - v19;
  v73 = *(v21 + 72);
  if (!v73)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v73 == -1)
  {
    goto LABEL_66;
  }

  v22 = v77 - a2;
  if (v77 - a2 == 0x8000000000000000 && v73 == -1)
  {
    goto LABEL_67;
  }

  v23 = (a2 - a1) / v73;
  v80 = a1;
  v79 = a4;
  v75 = v9;
  if (v23 >= v22 / v73)
  {
    v71 = v18;
    v72 = v14;
    v25 = v22 / v73 * v73;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v25;
    if (v25 >= 1)
    {
      v38 = v72;
      v39 = -v73;
      v68 = (v10 + 16);
      v69 = (v10 + 8);
      v40 = v37;
      v74 = a4;
      v65 = a1;
      v66 = -v73;
      do
      {
        v76 = v5;
        v63 = v37;
        v41 = a2;
        v42 = a2 + v39;
        v67 = v42;
        v70 = v41;
        while (1)
        {
          v45 = v77;
          if (v41 <= a1)
          {
            v80 = v41;
            v60 = v63;
LABEL_62:
            v78 = v60;
            goto LABEL_64;
          }

          v64 = v37;
          v73 = v40;
          v46 = v40 + v39;
          v47 = *v68;
          v48 = v75;
          (*v68)(v38, v40 + v39, v75);
          v49 = v42;
          v50 = v39;
          v51 = v71;
          v47(v71, v49, v48);
          v52 = v76;
          v53 = sub_1C6D09028(v38, v51);
          v76 = v52;
          if (v52)
          {
            v61 = *v69;
            (*v69)(v51, v48);
            v61(v38, v48);
            v80 = v70;
            v60 = v64;
            goto LABEL_62;
          }

          v54 = v53;
          v77 = v45 + v50;
          v55 = *v69;
          (*v69)(v51, v48);
          v55(v38, v48);
          if (v54)
          {
            break;
          }

          v37 = v46;
          v56 = v65;
          if (v45 < v73 || v77 >= v73)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v66;
            v42 = v67;
            v43 = v74;
          }

          else
          {
            v39 = v66;
            v42 = v67;
            v43 = v74;
            if (v45 != v73)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v40 = v46;
          v44 = v46 > v43;
          v38 = v72;
          a1 = v56;
          v41 = v70;
          if (!v44)
          {
            a2 = v70;
            goto LABEL_63;
          }
        }

        a1 = v65;
        if (v45 < v70 || v77 >= v70)
        {
          a2 = v67;
          swift_arrayInitWithTakeFrontToBack();
          v58 = v74;
          v5 = v76;
          v37 = v64;
          v39 = v66;
        }

        else
        {
          v57 = v45 == v70;
          v39 = v66;
          a2 = v67;
          v58 = v74;
          v5 = v76;
          v37 = v64;
          if (!v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v38 = v72;
        v40 = v73;
      }

      while (v73 > v58);
    }

LABEL_63:
    v80 = a2;
    v78 = v37;
  }

  else
  {
    v24 = v23 * v73;
    v72 = v17;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v71 = a4 + v24;
    v78 = a4 + v24;
    if (v24 >= 1 && a2 < v77)
    {
      v27 = *(v10 + 16);
      v70 = v10 + 16;
      v68 = v27;
      v69 = (v10 + 8);
      while (1)
      {
        v28 = a2;
        v29 = a4;
        v30 = v68;
        (v68)(v20, a2, v9);
        v31 = v20;
        v32 = v72;
        v74 = v29;
        (v30)(v72, v29, v9);
        v33 = sub_1C6D09028(v31, v32);
        if (v5)
        {
          break;
        }

        v34 = v33;
        v76 = 0;
        v35 = *v69;
        (*v69)(v32, v9);
        v35(v31, v9);
        v20 = v31;
        if (v34)
        {
          v36 = v73;
          a2 = v28 + v73;
          if (a1 < v28 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v74;
        }

        else
        {
          v36 = v73;
          a4 = v74 + v73;
          a2 = v28;
          if (a1 < v74 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v74)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v79 = a4;
        }

        a1 += v36;
        v80 = a1;
        v5 = v76;
        if (a4 < v71)
        {
          v9 = v75;
          if (a2 < v77)
          {
            continue;
          }
        }

        goto LABEL_64;
      }

      v59 = *v69;
      (*v69)(v32, v9);
      v59(v31, v9);
    }
  }

LABEL_64:
  sub_1C6C73CA4(&v80, &v79, &v78);
}

void sub_1C6D18224(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v68 = sub_1C6D79040();
  v8 = *(v68 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v56 - v12;
  v64 = *(v13 + 72);
  if (!v64)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v64 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v64 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v64;
  v71 = a1;
  v70 = a4;
  if (v15 >= v14 / v64)
  {
    v17 = v14 / v64 * v64;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35 = a4 + v17;
    if (v17 >= 1)
    {
      v36 = -v64;
      v60 = (v8 + 8);
      v61 = (v8 + 16);
      v37 = v35;
      v58 = a1;
      v59 = a4;
      v62 = -v64;
      do
      {
        v56 = v35;
        v38 = a2;
        v39 = a2 + v36;
        v63 = a2;
        v64 = a2 + v36;
        while (1)
        {
          if (v38 <= a1)
          {
            v71 = v38;
            v69 = v56;
            goto LABEL_59;
          }

          v40 = a3;
          v57 = v35;
          v67 = a3 + v36;
          v41 = v37 + v36;
          v42 = *v61;
          v43 = v65;
          v44 = v68;
          (*v61)(v65, v37 + v36, v68);
          v45 = v66;
          v46 = (v42)(v66, v39, v44);
          v47 = MEMORY[0x1CCA568F0](v46);
          v48 = sub_1C6D79010();
          [v48 sortingScore];
          v50 = v49;

          v51 = sub_1C6D79010();
          [v51 sortingScore];
          v53 = v52;

          objc_autoreleasePoolPop(v47);
          v54 = *v60;
          (*v60)(v45, v44);
          v54(v43, v44);
          if (v53 < v50)
          {
            break;
          }

          v35 = v41;
          a3 = v67;
          if (v40 < v37 || v67 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v64;
            a1 = v58;
          }

          else
          {
            v39 = v64;
            a1 = v58;
            if (v40 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v37 = v41;
          v36 = v62;
          v38 = v63;
          if (v41 <= v59)
          {
            a2 = v63;
            goto LABEL_58;
          }
        }

        a3 = v67;
        if (v40 < v63 || v67 >= v63)
        {
          a2 = v64;
          swift_arrayInitWithTakeFrontToBack();
          v35 = v57;
          a1 = v58;
          v36 = v62;
        }

        else
        {
          v55 = v40 == v63;
          a2 = v64;
          v35 = v57;
          a1 = v58;
          v36 = v62;
          if (!v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v37 > v59);
    }

LABEL_58:
    v71 = a2;
    v69 = v35;
  }

  else
  {
    v16 = v15 * v64;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v16;
    v69 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v61 = *(v8 + 16);
      v62 = v8 + 16;
      v60 = (v8 + 8);
      v67 = a3;
      do
      {
        v19 = v65;
        v20 = v68;
        v21 = v61;
        (v61)(v65, a2, v68);
        v22 = v66;
        v23 = (v21)(v66, a4, v20);
        v24 = MEMORY[0x1CCA568F0](v23);
        v25 = sub_1C6D79010();
        [v25 sortingScore];
        v27 = v26;

        v28 = sub_1C6D79010();
        [v28 sortingScore];
        v30 = v29;

        objc_autoreleasePoolPop(v24);
        v31 = *v60;
        (*v60)(v22, v20);
        v31(v19, v20);
        if (v30 >= v27)
        {
          v32 = v64;
          v34 = a4 + v64;
          if (a1 < a4 || a1 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
            v33 = v67;
          }

          else
          {
            v33 = v67;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v70 = v34;
          a4 += v32;
        }

        else
        {
          v32 = v64;
          if (a1 < a2 || a1 >= a2 + v64)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v32;
            v33 = v67;
          }

          else
          {
            v33 = v67;
            if (a1 == a2)
            {
              a2 += v64;
            }

            else
            {
              swift_arrayInitWithTakeBackToFront();
              a2 += v32;
            }
          }
        }

        a1 += v32;
        v71 = a1;
      }

      while (a4 < v63 && a2 < v33);
    }
  }

LABEL_59:
  sub_1C6C73CA4(&v71, &v70, &v69);
}

void sub_1C6D18840(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v69 = sub_1C6D79040();
  v8 = *(v69 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v57 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_64;
  }

  v16 = (a2 - a1) / v14;
  v72 = a1;
  v71 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35 = a4 + v18;
    if (v18 >= 1)
    {
      v36 = -v14;
      v61 = (v8 + 8);
      v62 = (v8 + 16);
      v37 = v35;
      v59 = a1;
      v60 = a4;
      v63 = -v14;
      do
      {
        v58 = v35;
        v38 = a2 + v36;
        v39 = v35;
        v65 = a2;
        v66 = a2 + v36;
        while (1)
        {
          if (a2 <= a1)
          {
            v72 = a2;
            v35 = v58;
            goto LABEL_60;
          }

          v41 = a3;
          v64 = v39;
          v42 = a3 + v36;
          v43 = v37 + v36;
          v44 = *v62;
          v45 = v38;
          v46 = v69;
          v47 = v67;
          (*v62)(v67, v43, v69);
          v48 = v45;
          v49 = v68;
          v44(v68, v48, v46);
          v50 = sub_1C6D79010();
          [v50 personalizationScore];
          v52 = v51;

          v53 = sub_1C6D79010();
          [v53 personalizationScore];
          v55 = v54;

          v56 = *v61;
          (*v61)(v49, v46);
          v56(v47, v46);
          if (v55 < v52)
          {
            break;
          }

          v39 = v43;
          a3 = v42;
          if (v41 < v37 || v42 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v66;
            a1 = v59;
          }

          else
          {
            v38 = v66;
            a1 = v59;
            if (v41 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v37 = v43;
          v40 = v43 > v60;
          v36 = v63;
          a2 = v65;
          if (!v40)
          {
            v35 = v39;
            goto LABEL_59;
          }
        }

        a3 = v42;
        if (v41 < v65 || v42 >= v65)
        {
          a2 = v66;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v59;
          v36 = v63;
        }

        else
        {
          a2 = v66;
          a1 = v59;
          v36 = v63;
          if (v41 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v35 = v64;
      }

      while (v37 > v60);
    }

LABEL_59:
    v72 = a2;
LABEL_60:
    v70 = v35;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v65 = a4 + v17;
    v70 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v62 = *(v8 + 16);
      v63 = v8 + 16;
      v61 = (v8 + 8);
      v64 = a3;
      v66 = v14;
      do
      {
        v20 = a4;
        v21 = v67;
        v22 = v69;
        v23 = v62;
        (v62)(v67, a2, v69);
        v24 = v68;
        (v23)(v68, v20, v22);
        v25 = sub_1C6D79010();
        [v25 personalizationScore];
        v27 = v26;

        v28 = sub_1C6D79010();
        [v28 personalizationScore];
        v30 = v29;

        v31 = *v61;
        (*v61)(v24, v22);
        v31(v21, v22);
        if (v30 >= v27)
        {
          v34 = v66;
          a4 = v20 + v66;
          if (a1 < v20 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v33 = v64;
          }

          else
          {
            v33 = v64;
            if (a1 != v20)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v71 = a4;
        }

        else
        {
          v32 = a2 + v66;
          a4 = v20;
          if (a1 < a2 || a1 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v32;
            v33 = v64;
          }

          else
          {
            v33 = v64;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v32;
          }

          v34 = v66;
        }

        a1 += v34;
        v72 = a1;
      }

      while (a4 < v65 && a2 < v33);
    }
  }

  sub_1C6C73CA4(&v72, &v71, &v70);
}

uint64_t sub_1C6D18E30(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void sub_1C6D19024(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v65 = sub_1C6D79300();
  v8 = *(v65 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v53 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v68 = a1;
  v67 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v34 = a4 + v18;
    if (v18 >= 1)
    {
      v35 = -v14;
      v57 = a4;
      v58 = (v8 + 16);
      v55 = (v8 + 8);
      v56 = a1;
      v36 = v34;
      v59 = -v14;
      do
      {
        v54 = v34;
        v37 = a2;
        v38 = a2 + v35;
        v61 = v37;
        v62 = v38;
        while (1)
        {
          if (v37 <= a1)
          {
            v68 = v37;
            v66 = v54;
            goto LABEL_58;
          }

          v40 = a3;
          v60 = v34;
          v41 = a3 + v35;
          v42 = v36 + v35;
          v43 = *v58;
          v44 = v63;
          v45 = v65;
          (*v58)(v63, v42, v65);
          v46 = v38;
          v47 = v64;
          (v43)(v64, v46, v45);
          sub_1C6D792D0();
          v49 = v48;
          sub_1C6D792D0();
          v51 = v50;
          v52 = *v55;
          (*v55)(v47, v45);
          v52(v44, v45);
          if (v51 < v49)
          {
            break;
          }

          v34 = v42;
          a3 = v41;
          if (v40 < v36 || v41 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v62;
            a1 = v56;
          }

          else
          {
            v38 = v62;
            a1 = v56;
            if (v40 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v36 = v42;
          v39 = v42 > v57;
          v35 = v59;
          v37 = v61;
          if (!v39)
          {
            a2 = v61;
            goto LABEL_57;
          }
        }

        a3 = v41;
        if (v40 < v61 || v41 >= v61)
        {
          a2 = v62;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v56;
          v35 = v59;
          v34 = v60;
        }

        else
        {
          a2 = v62;
          a1 = v56;
          v35 = v59;
          v34 = v60;
          if (v40 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v36 > v57);
    }

LABEL_57:
    v68 = a2;
    v66 = v34;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v62 = a4 + v17;
    v66 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = *(v8 + 16);
      v60 = a3;
      v61 = v8 + 16;
      v58 = (v8 + 8);
      v59 = v20;
      v21 = v64;
      do
      {
        v22 = a1;
        v23 = v63;
        v24 = a2;
        v25 = v65;
        v26 = a2;
        v27 = v59;
        (v59)(v63, v24, v65);
        v27(v21, a4, v25);
        sub_1C6D792D0();
        v29 = v28;
        sub_1C6D792D0();
        v31 = v30;
        v32 = *v58;
        (*v58)(v21, v25);
        v32(v23, v25);
        if (v31 >= v29)
        {
          v33 = v22;
          if (v22 < a4 || v22 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v26;
          }

          else
          {
            a2 = v26;
            if (v22 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v67 = a4 + v14;
          a4 += v14;
        }

        else
        {
          a2 = v26 + v14;
          v33 = v22;
          if (v22 < v26 || v22 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v22 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v33 + v14;
        v68 = a1;
      }

      while (a4 < v62 && a2 < v60);
    }
  }

LABEL_58:
  sub_1C6C73DBC(&v68, &v67, &v66);
}

void sub_1C6D195C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  sub_1C6C74F64();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v52 - v14;
  v60 = *(v15 + 72);
  if (!v60)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v60 == -1)
  {
    goto LABEL_61;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v60 == -1)
  {
    goto LABEL_62;
  }

  v17 = (a2 - a1) / v60;
  v65 = a1;
  v64 = a4;
  if (v17 >= v16 / v60)
  {
    v19 = v16 / v60 * v60;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v34 = a4 + v19;
    if (v19 >= 1)
    {
      v35 = -v60;
      v57 = (v10 + 16);
      v58 = -v60;
      v53 = (v10 + 8);
      v54 = a1;
      v36 = v34;
      v55 = a4;
      do
      {
        v52 = v34;
        v37 = a2;
        v38 = a2 + v35;
        v59 = v37;
        v60 = v38;
        while (1)
        {
          if (v37 <= a1)
          {
            v65 = v37;
            v63 = v52;
            goto LABEL_59;
          }

          v40 = a3;
          v56 = v34;
          v41 = a3 + v35;
          v42 = v36 + v35;
          v43 = *v57;
          v44 = v61;
          (*v57)(v61, v42, v9);
          v45 = v38;
          v46 = v62;
          v43(v62, v45, v9);
          sub_1C6D79090();
          v48 = v47;
          sub_1C6D79090();
          v50 = v49;
          v51 = *v53;
          (*v53)(v46, v9);
          v51(v44, v9);
          if (v50 < v48)
          {
            break;
          }

          v34 = v42;
          a3 = v41;
          if (v40 < v36 || v41 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v60;
            a1 = v54;
          }

          else
          {
            v38 = v60;
            a1 = v54;
            if (v40 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v36 = v42;
          v39 = v42 > v55;
          v35 = v58;
          v37 = v59;
          if (!v39)
          {
            a2 = v59;
            goto LABEL_58;
          }
        }

        a3 = v41;
        if (v40 < v59 || v41 >= v59)
        {
          a2 = v60;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v54;
          v34 = v56;
          v35 = v58;
        }

        else
        {
          a2 = v60;
          a1 = v54;
          v34 = v56;
          v35 = v58;
          if (v40 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v36 > v55);
    }

LABEL_58:
    v65 = a2;
    v63 = v34;
  }

  else
  {
    v18 = v17 * v60;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v59 = a4 + v18;
    v63 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      v57 = *(v10 + 16);
      v58 = v10 + 16;
      v21 = (v10 + 8);
      v56 = a3;
      do
      {
        v22 = a1;
        v23 = v61;
        v24 = v57;
        (v57)(v61, a2, v9);
        v25 = v62;
        (v24)(v62, a4, v9);
        sub_1C6D79090();
        v27 = v26;
        sub_1C6D79090();
        v29 = v28;
        v30 = *v21;
        (*v21)(v25, v9);
        v30(v23, v9);
        if (v29 >= v27)
        {
          v31 = v60;
          v33 = a4 + v60;
          v32 = v22;
          if (v22 < a4 || v22 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v22 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v64 = v33;
          a4 += v31;
        }

        else
        {
          v31 = v60;
          v32 = v22;
          if (v22 < a2 || v22 >= a2 + v60)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v22 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v31;
        }

        a1 = v32 + v31;
        v65 = a1;
      }

      while (a4 < v59 && a2 < v56);
    }
  }

LABEL_59:
  sub_1C6C73DD4(&v65, &v64, &v63);
}

void *sub_1C6D19B84(uint64_t a1)
{
  sub_1C6C2C290();
  result = sub_1C6D79EF0();
  v3 = result;
  v4 = 0;
  v26 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v25 = (result + 8);
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v26 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v26 + 56) + 8 * v15);

      result = [v19 doubleValue];
      *&v25[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
      v20 = (v3[6] + 16 * v15);
      *v20 = v18;
      v20[1] = v17;
      *(v3[7] + 8 * v15) = v21;
      v22 = v3[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v3[2] = v24;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C6D19CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_1C6B672F8(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  sub_1C6D19DD0(a1, a2, 1, a3);
  *v3 = v5;
}

void sub_1C6D19DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  sub_1C6D1BE54(0, &qword_1EDCE7B20, MEMORY[0x1E6968FB0], sub_1C6B68D1C);
  v12 = *(*(v10 - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(v10 - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      v19 = v15 + v17;
      v20 = v14 + v12 * a2;
      if (v15 + v17 < v20 || v19 >= v20 + (v18 - a2) * v12)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v19 != v20)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v16);
      v24 = v22 + v16;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1 || v17 < 1 || (sub_1C6D1BFCC(a4, v15, &qword_1EDCE7B20, MEMORY[0x1E6968FB0], sub_1C6B68D1C), v12 >= v17))
  {
    sub_1C6D1BEDC(a4, sub_1C6D1BF3C);
    return;
  }

LABEL_23:
  __break(1u);
}

id sub_1C6D19FBC(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, uint64_t a10, uint64_t a11)
{
  ObjectType = swift_getObjectType();
  v71[3] = a10;
  v71[4] = a11;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v71);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_2, a4, a10);
  a9[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_disableArticleScoring] = 0;
  *&a9[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateStore] = a1;
  sub_1C6B16F28(a2, v79);
  v19 = swift_allocObject();
  sub_1C6B15E34(v79, v19 + 16);
  sub_1C6B16F28(a2, v77);
  v20 = swift_allocObject();
  sub_1C6B15E34(v77, v20 + 16);
  v75 = a1;
  sub_1C6B14DC0();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v65 = a1;
  *&a9[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateContext] = sub_1C6D762F0();
  sub_1C6B16F28(a2, &a9[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_configurationManager]);
  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  (*(v25 + 8))(v72, v24, v25);
  v26 = v72[3];
  sub_1C6B11190(v72);
  v27 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__personalizationTreatment;
  swift_beginAccess();
  *&v77[0] = v26;
  sub_1C6D1B5C8();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *&a9[v27] = sub_1C6D78220();
  swift_endAccess();
  v31 = a2[3];
  v32 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v31);
  (*(v32 + 8))(&v73, v31, v32);
  sub_1C6B11190(&v73);
  LOBYTE(v26) = v74;
  v33 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__clientSideEngagementBoostEnabled;
  swift_beginAccess();
  LOBYTE(v77[0]) = v26;
  sub_1C6B1B44C(0, &unk_1EDCEA7A0, MEMORY[0x1E69E6370], MEMORY[0x1E69D6AF0]);
  v35 = v34;
  v36 = *(v34 + 48);
  v37 = *(v34 + 52);
  swift_allocObject();
  *&a9[v33] = sub_1C6D78220();
  swift_endAccess();
  v38 = a2[3];
  v39 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v38);
  (*(v39 + 8))(&v75, v38, v39);
  sub_1C6B11190(&v75);
  LOBYTE(v26) = v76;
  v40 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__fallbackToReverseChronSorting;
  swift_beginAccess();
  LOBYTE(v77[0]) = v26;
  v41 = *(v35 + 48);
  v42 = *(v35 + 52);
  swift_allocObject();
  *&a9[v40] = sub_1C6D78220();
  swift_endAccess();
  v43 = a2[3];
  v44 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v43);
  (*(v44 + 8))(v77, v43, v44);
  v45 = v78;
  sub_1C6B11190(v77);
  v46 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__publisherDampeningConfig;
  swift_beginAccess();
  v70 = v45;
  sub_1C6D1B630();
  v48 = v47;
  v49 = *(v47 + 48);
  v50 = *(v47 + 52);
  swift_allocObject();
  *&a9[v46] = sub_1C6D78220();
  swift_endAccess();
  v51 = a2[3];
  v52 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v51);
  (*(v52 + 8))(v79, v51, v52);
  v53 = v80;
  sub_1C6B11190(v79);
  v54 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__shadowPublisherDampeningConfig;
  swift_beginAccess();
  v69 = v53;
  v55 = *(v48 + 48);
  v56 = *(v48 + 52);
  swift_allocObject();
  *&a9[v54] = sub_1C6D78220();
  swift_endAccess();
  *&a9[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_translationProvider] = a3;
  sub_1C6B16F28(v71, &a9[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_userContextProvider]);
  sub_1C6B15028(a5, &a9[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_computeServiceScoringService], sub_1C6D1A758);
  *&a9[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_computeServiceCohortMembershipService] = a6;
  *&a9[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_tracker] = a7;
  sub_1C6B15028(a8, &a9[OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_recipeScoringService], sub_1C6D1AEF4);
  v68.receiver = a9;
  v68.super_class = ObjectType;
  swift_unknownObjectRetain();

  v57 = objc_msgSendSuper2(&v68, sel_init);
  v58 = a2[3];
  v59 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v58);
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = *(v59 + 32);
  v62 = v57;

  v61(sub_1C6D1C0FC, v60, v58, v59);

  swift_unknownObjectRelease();

  sub_1C6D1BEDC(a8, sub_1C6D1AEF4);
  sub_1C6D1BEDC(a5, sub_1C6D1A758);
  __swift_destroy_boxed_opaque_existential_1(v71);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v62;
}

id sub_1C6D1A630(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = a7;
  v26 = a8;
  v24 = a6;
  v16 = *(a10 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](a9);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = objc_allocWithZone(v20);
  (*(v16 + 16))(v19, a4, a10);
  return sub_1C6D19FBC(a1, a2, a3, v19, a5, v24, v25, v26, v21, a10, a11);
}

void sub_1C6D1A758()
{
  if (!qword_1EDCEA6B0[0])
  {
    sub_1C6B10A98(255, &unk_1EDCEA940);
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, qword_1EDCEA6B0);
    }
  }
}

void sub_1C6D1A7C0()
{
  if (!qword_1EDCEA950)
  {
    v0 = sub_1C6D77220();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA950);
    }
  }
}

uint64_t sub_1C6D1A818(uint64_t a1)
{
  sub_1C6D1BE54(0, &unk_1EDCEA850, MEMORY[0x1E69E31C8], MEMORY[0x1E69E35A8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6D1A8AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C6D1BE00(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6D1A908(uint64_t a1)
{
  v3 = *(sub_1C6D75F50() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1C6D77D80() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_1C6D09F54(a1, (v1 + v4), v7, v8);
}

void sub_1C6D1A9EC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = sub_1C6B673B4((a3 >> 1) - a2, (a3 >> 1) - a2);
  if (v3 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = *(sub_1C6D79040() - 8);
  v8 = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  swift_arrayInitWithCopy();
  if (__OFSUB__(0, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = *(v6 + 16);
  v11 = __OFADD__(a2, v10);
  v12 = a2 + v10;
  if (v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v12 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v12 < 0)
  {
LABEL_13:
    __break(1u);
  }
}

unint64_t sub_1C6D1AB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v13 = *v7;
  result = sub_1C6D79040();
  v16 = *(*(result - 8) + 72);
  v17 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v15 = *(*(result - 8) + 80);
  v18 = v13 + ((v15 + 32) & ~v15);
  v19 = v18 + v16 * a1;
  result = swift_arrayDestroy();
  v20 = __OFSUB__(a3, v17);
  v21 = a3 - v17;
  if (v20)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!v21)
  {
    goto LABEL_15;
  }

  v22 = *(v13 + 16);
  if (__OFSUB__(v22, a2))
  {
    goto LABEL_24;
  }

  result = v19 + v16 * a3;
  v23 = v18 + v16 * a2;
  if (result < v23 || result >= v23 + (v22 - a2) * v16)
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v23)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v25 = *(v13 + 16);
  v20 = __OFADD__(v25, v21);
  v26 = v25 + v21;
  if (v20)
  {
    goto LABEL_25;
  }

  *(v13 + 16) = v26;
LABEL_15:
  if (a3 < 1)
  {
    return result;
  }

  if (__OFSUB__(a7 >> 1, a6))
  {
    goto LABEL_26;
  }

  if ((a7 >> 1) - a6 != a3)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_1C6D1ACB0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = *v6;
  v9 = *(*v6 + 16);
  if (v9 < a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = __OFSUB__(v13, v11);
  v15 = v13 - v11;
  if (v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v9 + v15;
  if (__OFADD__(v9, v15))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v16 > v8[3] >> 1)
  {
    if (v9 <= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v9;
    }

    v8 = sub_1C6B658F8(isUniquelyReferenced_nonNull_native, v20, 1, v8);
    *v6 = v8;
  }

  result = sub_1C6D1AB00(v10, a2, v13, a3, a4, a5, a6);
  *v6 = v8;
  return result;
}

unint64_t sub_1C6D1ADB8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v6;
  v10 = *(*v6 + 16);
  if (v10 < a5 || v10 < a6)
  {
    goto LABEL_16;
  }

  if (a6 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = result;
  v16 = sub_1C6D79040();
  v17 = *(v16 - 8);
  result = v16 - 8;
  if (v9 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * a5 == a2 + *(v17 + 72) * a3)
  {
    if ((a4 >> 1) >= a3)
    {
      if (a5 == a3 && a4 >> 1 == a6)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_18:
    __break(1u);
    return result;
  }

LABEL_8:

  return sub_1C6D1ACB0(a5, a6, v15, a2, a3, a4);
}

void sub_1C6D1AEF4()
{
  if (!qword_1EDCEA548[0])
  {
    sub_1C6B10A98(255, &unk_1EDCEA930);
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, qword_1EDCEA548);
    }
  }
}

void sub_1C6D1AF5C(void **a1)
{
  v2 = v1[2];
  v3 = v1[4];
  sub_1C6D0BA9C(a1, v1[3]);
}

BOOL sub_1C6D1AF80()
{
  v1 = *(v0 + 16);
  sub_1C6D790C0();
  sub_1C6D79090();
  v3 = v2;
  sub_1C6D79090();
  return v4 < v3;
}

double _s19NewsPersonalization20XavierScoringServiceC10groupScore7recipesSdSay0A4Feed0I12ScoredRecipeVyxGG_tSo16FCRecipeScorableRzlF_0(uint64_t a1, uint64_t a2)
{
  v7 = *&a1;
  v6[2] = a2;
  sub_1C6D790C0();
  v2 = sub_1C6D79820();
  WitnessTable = swift_getWitnessTable();
  sub_1C6D04140(sub_1C6D1BD8C, v6, v2, MEMORY[0x1E69E63B0], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v4);
  sub_1C6D1BDAC();
  sub_1C6D797B0();

  return v7;
}

double sub_1C6D1B0CC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v23 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1C6B39260(0, v9, 0);
    v10 = v24;
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v21 = *(v11 + 56);
    v22 = v12;
    do
    {
      v14 = v22(v8, v13, v4);
      v15 = v23(v14);
      [v15 sortingScore];
      v17 = v16;

      (*(v11 - 8))(v8, v4);
      v24 = v10;
      v19 = *(*&v10 + 16);
      v18 = *(*&v10 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1C6B39260((v18 > 1), v19 + 1, 1);
        v10 = v24;
      }

      *(*&v10 + 16) = v19 + 1;
      *(*&v10 + 8 * v19 + 32) = v17;
      v13 += v21;
      --v9;
    }

    while (v9);
  }

  sub_1C6D1BDAC();
  sub_1C6D797B0();

  return v24;
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1C6D1B320()
{
  if (!qword_1EDCEA528)
  {
    sub_1C6D791C0();
    sub_1C6D791A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCEA528);
    }
  }
}

void sub_1C6D1B398()
{
  if (!qword_1EDCE6370)
  {
    sub_1C6D75F90();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE6370);
    }
  }
}

void sub_1C6D1B400()
{
  if (!qword_1EDCDF908)
  {
    sub_1C6D75F90();
    sub_1C6D1C040(&unk_1EDCE6360, 255, MEMORY[0x1E6969B18]);
    v0 = sub_1C6D79A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF908);
    }
  }
}

void sub_1C6D1B498()
{
  if (!qword_1EDCDF758)
  {
    sub_1C6D1B530();
    sub_1C6D1C040(&qword_1EDCDF3D0, 255, sub_1C6D1B530);
    v0 = sub_1C6D79E70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF758);
    }
  }
}

void sub_1C6D1B530()
{
  if (!qword_1EDCDF3C0)
  {
    sub_1C6D75FF0();
    sub_1C6D1C040(&unk_1EDCE6328, 255, MEMORY[0x1E6969B50]);
    v0 = sub_1C6D7A230();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF3C0);
    }
  }
}

void sub_1C6D1B5C8()
{
  if (!qword_1EDCEA790)
  {
    sub_1C6B0C69C(255, &qword_1EDCEA500, 0x1E69B5480);
    v0 = sub_1C6D78250();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA790);
    }
  }
}

void sub_1C6D1B630()
{
  if (!qword_1EDCEA780)
  {
    sub_1C6B0C69C(255, &qword_1EDCEA4B0, 0x1E69B5460);
    v0 = sub_1C6D78250();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA780);
    }
  }
}

void sub_1C6D1B6D4(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v47 = a3;
  sub_1C6BAB388();
  v56 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v55 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService__personalizationTreatment;
  swift_beginAccess();
  v57 = a2;
  v11 = *(a2 + v10);

  sub_1C6D78230();

  v12 = v61;
  v13 = [v9 featuresFromPersonalizingItem:a1 personalizationTreatment:v61];

  v46[1] = sub_1C6B0C69C(0, &qword_1EDCDF860, 0x1E69B5450);
  v14 = sub_1C6D79780();

  sub_1C6B1B44C(0, &qword_1EDCEA420, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6D839E0;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69B51E0]) init];
  v61 = v14;
  sub_1C6B39044(inited);
  v16 = v61;
  if (!(v61 >> 62))
  {
    v58 = v61 & 0xFFFFFFFFFFFFFF8;
    v17 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_34:

    sub_1C6B0F7A8(0, &qword_1EDCDF840, &protocolRef_FCPersonalizationAggregate);
    sub_1C6B0C790(&qword_1EDCDF850, &qword_1EDCDF860, 0x1E69B5450);
    v45 = sub_1C6D79480();
    (v47)[2](v47, v45);

    return;
  }

LABEL_33:
  v58 = v16 & 0xFFFFFFFFFFFFFF8;
  v17 = sub_1C6D79E90();
  if (!v17)
  {
    goto LABEL_34;
  }

LABEL_3:
  v18 = 0;
  v53 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateContext;
  v54 = v16 & 0xC000000000000001;
  v52 = *MEMORY[0x1E69E3228];
  v50 = (v6 + 8);
  v51 = (v6 + 104);
  v19 = MEMORY[0x1E69E7CC8];
  v49 = v16;
  while (2)
  {
    v48 = v19;
    while (1)
    {
      if (v54)
      {
        v20 = MEMORY[0x1CCA56240](v18, v16);
      }

      else
      {
        if (v18 >= *(v58 + 16))
        {
          goto LABEL_32;
        }

        v20 = *(v16 + 8 * v18 + 32);
      }

      v21 = v20;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v59 = v18 + 1;
      v22 = v17;
      v6 = *(v57 + v53);
      v60 = v6;

      v23 = [v21 personalizationIdentifier];
      sub_1C6D795A0();

      v24 = v55;
      v25 = v56;
      (*v51)(v55, v52, v56);
      sub_1C6B14DC0();
      sub_1C6D1C040(&qword_1EC1D96B8, 255, sub_1C6B14DC0);
      sub_1C6D761E0();

      (*v50)(v24, v25);

      v26 = v61;
      if (v61)
      {
        break;
      }

      ++v18;
      v17 = v22;
      v16 = v49;
      if (v59 == v22)
      {
        goto LABEL_34;
      }
    }

    v27 = v48;
    v28 = v21;
    if ((v48 & 0xC000000000000001) != 0)
    {
      if (v48 >= 0)
      {
        v27 = (v48 & 0xFFFFFFFFFFFFFF8);
      }

      v29 = v61;
      v30 = sub_1C6D79E90();
      if (__OFADD__(v30, 1))
      {
        goto LABEL_36;
      }

      v27 = sub_1C6D11CD4(v27, v30 + 1);
    }

    else
    {
      v31 = v61;
    }

    v32 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v27;
    v34 = sub_1C6B650DC(v21);
    v36 = v27[2];
    v37 = (v35 & 1) == 0;
    v38 = __OFADD__(v36, v37);
    v39 = v36 + v37;
    if (v38)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      break;
    }

    v6 = v35;
    if (v32[3] < v39)
    {
      sub_1C6B72614(v39, isUniquelyReferenced_nonNull_native);
      v34 = sub_1C6B650DC(v21);
      if ((v6 & 1) != (v40 & 1))
      {
        goto LABEL_38;
      }

LABEL_24:
      v19 = v61;
      if (v6)
      {
LABEL_25:
        v41 = v19[7];
        v6 = *(v41 + 8 * v34);
        *(v41 + 8 * v34) = v26;

        swift_unknownObjectRelease();
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    v42 = v34;
    sub_1C6B75060();
    v34 = v42;
    v19 = v61;
    if (v6)
    {
      goto LABEL_25;
    }

LABEL_27:
    v19[(v34 >> 6) + 8] |= 1 << v34;
    *(v19[6] + 8 * v34) = v28;
    *(v19[7] + 8 * v34) = v26;

    v43 = v19[2];
    v38 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (!v38)
    {
      v19[2] = v44;
LABEL_29:
      v17 = v22;
      v18 = v59;
      v16 = v49;
      if (v59 != v22)
      {
        continue;
      }

      goto LABEL_34;
    }

    break;
  }

  __break(1u);
LABEL_38:
  _Block_release(v47);
  sub_1C6D7A1C0();
  __break(1u);
}

uint64_t sub_1C6D1BD0C(uint64_t a1, uint64_t a2)
{
  sub_1C6D1BE00(0, &unk_1EDCE6340, MEMORY[0x1E6969B18]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C6D1BDAC()
{
  result = qword_1EDCDFC58;
  if (!qword_1EDCDFC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFC58);
  }

  return result;
}

void sub_1C6D1BE00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6D1BE54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

uint64_t sub_1C6D1BEDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C6D1BF3C()
{
  if (!qword_1EDCE64F8)
  {
    sub_1C6D1BE54(255, &qword_1EDCE7B20, MEMORY[0x1E6968FB0], sub_1C6B68D1C);
    v0 = sub_1C6D79DB0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE64F8);
    }
  }
}

uint64_t sub_1C6D1BFCC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  sub_1C6D1BE54(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1C6D1C040(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C6D1C088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6D1C108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  sub_1C6B1ABB8();
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6D1C1A4, 0, 0);
}

void sub_1C6D1C1A4()
{
  v1 = *(*(v0 + 80) + 16);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v19 = *(*(v0 + 80) + 16);
    }

    v20 = *(*(v0 + 80) + 16);
    v21 = sub_1C6D79E90();
    v1 = v20;
    v2 = v21;
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_20:
    v23 = *(v0 + 88);
    v22 = *(v0 + 96);

    v24 = *(v0 + 8);

    v24();
    return;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v26 = **(v0 + 72);
    v27 = v1;
    v25 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v25)
      {
        v6 = MEMORY[0x1CCA56240](v3);
      }

      else
      {
        v6 = *(v1 + 8 * v3 + 32);
        swift_unknownObjectRetain();
      }

      v8 = *(v0 + 88);
      v7 = *(v0 + 96);
      v9 = sub_1C6D79880();
      v10 = *(v9 - 8);
      (*(v10 + 56))(v7, 1, 1, v9);
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = 0;
      v11[4] = v6;
      sub_1C6BE15F4(v7, v8);
      LODWORD(v8) = (*(v10 + 48))(v8, 1, v9);
      swift_unknownObjectRetain();
      v13 = *(v0 + 88);
      if (v8 == 1)
      {
        sub_1C6B1AB5C(*(v0 + 88));
        if (!*v12)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1C6D79870();
        (*(v10 + 8))(v13, v9);
        if (!*v12)
        {
LABEL_14:
          v15 = 0;
          v17 = 0;
          goto LABEL_15;
        }
      }

      v14 = v11[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_1C6D79840();
      v17 = v16;
      swift_unknownObjectRelease();
LABEL_15:
      v18 = swift_allocObject();
      *(v18 + 16) = &unk_1C6D947A0;
      *(v18 + 24) = v11;

      if (v17 | v15)
      {
        v4 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v17;
      }

      else
      {
        v4 = 0;
      }

      ++v3;
      v5 = *(v0 + 96);
      *(v0 + 48) = 1;
      *(v0 + 56) = v4;
      *(v0 + 64) = v26;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_1C6B1AB5C(v5);
      v1 = v27;
      if (v2 == v3)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1C6D1C504()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1C6D1C608;
  v2 = swift_continuation_init();
  sub_1C6D1CDEC();
  v0[17] = v3;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C6D2FAFC;
  v0[13] = &block_descriptor_13;
  v0[14] = v2;
  [v1 prepareFavorites_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C6D1C608()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C6D1C6E8, 0, 0);
}

uint64_t sub_1C6D1C86C(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return MEMORY[0x1EEE6DFA0](sub_1C6D1C8E8, 0, 0);
}

uint64_t sub_1C6D1C8E8()
{
  v1 = *(MEMORY[0x1E69E87D8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1C6D1C9B4;
  v3 = *(v0 + 16);

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1C6D1C9B4()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C6D1CAB0, 0, 0);
}

uint64_t sub_1C6D1CAB0()
{
  v1 = v0[2];
  v2 = v0[3];

  v2[2](v2);
  _Block_release(v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1C6D1CB28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C6BE1AB0;

  return sub_1C6D1C86C(v2, v3);
}

uint64_t sub_1C6D1CBD4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C6BB6A40;

  return sub_1C6D1C108(a1, a2, v2);
}

uint64_t sub_1C6D1CC80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C6BE1AB0;

  return sub_1C6D1C4E4(a1, v4, v5, v6);
}

uint64_t sub_1C6D1CD34(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C6BB6A40;

  return sub_1C6BE1658(a1, v5);
}

void sub_1C6D1CDEC()
{
  if (!qword_1EDCDF940)
  {
    v0 = sub_1C6D79890();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF940);
    }
  }
}

void sub_1C6D1CE50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v31[1] = a2;
  v6 = sub_1C6D77990();
  v31[0] = *(v6 - 8);
  v7 = *(v31[0] + 64);
  MEMORY[0x1EEE9AC00](v6);
  v32 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D1D2A8();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C6D77290();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  (*(v19 + 16))(v31 - v18, a1, v15, v17);
  if (swift_dynamicCast())
  {
    (*(v11 + 8))(v14, v10);
    v20 = sub_1C6D77270();
    v21 = sub_1C6D77330();
    v23 = v22;

    if (!v3)
    {
      sub_1C6D1D33C(&qword_1EC1D6A40, MEMORY[0x1E69B4840]);
      v24 = v32;
      sub_1C6D75AF0();
      a3[3] = v6;
      v26 = MEMORY[0x1E69B4840];
      a3[4] = sub_1C6D1D33C(&qword_1EC1D96D8, MEMORY[0x1E69B4840]);
      a3[5] = sub_1C6D1D33C(&qword_1EC1D96E0, v26);
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(a3);
      (*(v31[0] + 32))(boxed_opaque_existential_2, v24, v6);
      sub_1C6B1C9F0(v21, v23);
      v28 = *MEMORY[0x1E69E3648];
      v29 = sub_1C6D76F90();
      v30 = *(v29 - 8);
      (*(v30 + 104))(a3, v28, v29);
      (*(v30 + 56))(a3, 0, 1, v29);
    }
  }

  else
  {
    v25 = sub_1C6D76F90();
    (*(*(v25 - 8) + 56))(a3, 1, 1, v25);
  }
}

void sub_1C6D1D2A8()
{
  if (!qword_1EDCE6080)
  {
    sub_1C6D779A0();
    sub_1C6D1D33C(&qword_1EDCE5F18, MEMORY[0x1E69B4858]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6080);
    }
  }
}

uint64_t sub_1C6D1D33C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t Com_Apple_News_Personalization_ViewActionType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xD;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6D1D3DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C0FC3C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6D1D428()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE5240);
  __swift_project_value_buffer(v0, qword_1EDCE5240);
  sub_1C6B4A290();
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1C6D947E0;
  v5 = v33 + v4;
  v6 = v33 + v4 + *(v2 + 56);
  *(v33 + v4) = 0;
  *v6 = "VIEW_ACTION_TYPE_UNKNOWN";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v33 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "VIEW_ACTION_TYPE_APP_LAUNCH";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v33 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "VIEW_ACTION_TYPE_SWIPE";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v33 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "VIEW_ACTION_TYPE_HEADLINE_TAP";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  v15 = (v33 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "VIEW_ACTION_TYPE_ISSUE_TAP";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v33 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "VIEW_ACTION_TYPE_DEEPLINK";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v33 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "VIEW_ACTION_TYPE_AFFORDANCE_TAP";
  *(v20 + 1) = 31;
  v20[16] = 2;
  v9();
  v21 = (v33 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "VIEW_ACTION_TYPE_RETURN_FROM_ARTICLE";
  *(v22 + 1) = 36;
  v22[16] = 2;
  v9();
  v23 = v33 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "VIEW_ACTION_TYPE_USER_NAVIGATION";
  *(v23 + 8) = 32;
  *(v23 + 16) = 2;
  v9();
  v24 = (v33 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "VIEW_ACTION_TYPE_OPEN_MODAL_TOC";
  *(v25 + 1) = 31;
  v25[16] = 2;
  v9();
  v26 = (v33 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "VIEW_ACTION_TYPE_TOC_ARTICLE_TAP";
  *(v27 + 1) = 32;
  v27[16] = 2;
  v9();
  v28 = (v33 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "VIEW_ACTION_TYPE_NOTIFICATION";
  *(v29 + 1) = 29;
  v29[16] = 2;
  v9();
  v30 = (v33 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "VIEW_ACTION_TYPE_RECIPE";
  *(v31 + 1) = 23;
  v31[16] = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_ViewActionType._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE5238 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE5240);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1C6D1D92C()
{
  result = qword_1EDCE5228;
  if (!qword_1EDCE5228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE5228);
  }

  return result;
}

unint64_t sub_1C6D1D984()
{
  result = qword_1EDCE5218;
  if (!qword_1EDCE5218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE5218);
  }

  return result;
}

unint64_t sub_1C6D1D9DC()
{
  result = qword_1EC1D96E8;
  if (!qword_1EC1D96E8)
  {
    sub_1C6D1DA34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D96E8);
  }

  return result;
}

void sub_1C6D1DA34()
{
  if (!qword_1EC1D96F0)
  {
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D96F0);
    }
  }
}

unint64_t sub_1C6D1DA88()
{
  result = qword_1EDCE5220;
  if (!qword_1EDCE5220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE5220);
  }

  return result;
}

uint64_t sub_1C6D1DADC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE5238 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE5240);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id NewsAppPersonalizationAssembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NewsAppPersonalizationAssembly.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___NAPAssembly_assemblies;
  sub_1C6B0BE1C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6D7EB10;
  v4 = type metadata accessor for SuggestionsAssembly();
  v5 = swift_allocObject();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_1C6B0C47C(qword_1EDCE7428, type metadata accessor for SuggestionsAssembly);
  *(v3 + 32) = v5;
  v6 = type metadata accessor for ComputeServiceAssembly();
  v7 = swift_allocObject();
  *(v3 + 96) = v6;
  *(v3 + 104) = sub_1C6B0C47C(&qword_1EDCE7168, type metadata accessor for ComputeServiceAssembly);
  *(v3 + 72) = v7;
  *&v0[v2] = v3;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id NewsAppPersonalizationAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Com_Apple_News_Personalization_Session.startedAt.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_Session();
  sub_1C6B823A4(v1 + *(v7 + 36), v6);
  v8 = sub_1C6D789A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C6D78990();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B82438(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_Session()
{
  result = qword_1EDCE79B0;
  if (!qword_1EDCE79B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL Com_Apple_News_Personalization_Session.hasStartedAt.getter()
{
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_Session();
  sub_1C6B823A4(v0 + *(v5 + 36), v4);
  v6 = sub_1C6D789A0();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B82438(v4);
  return v7;
}

uint64_t Com_Apple_News_Personalization_Session.startedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_Session() + 36);
  sub_1C6B82438(v1 + v3);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

BOOL Com_Apple_News_Personalization_Session.hasEndedAt.getter()
{
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_Session();
  sub_1C6B823A4(v0 + *(v5 + 40), v4);
  v6 = sub_1C6D789A0();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B82438(v4);
  return v7;
}

uint64_t Com_Apple_News_Personalization_Session.endedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_Session() + 40);
  sub_1C6B82438(v1 + v3);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_Session.endedAt.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_Session();
  sub_1C6B823A4(v1 + *(v7 + 40), v6);
  v8 = sub_1C6D789A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C6D78990();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B82438(v6);
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_Session.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Com_Apple_News_Personalization_Session.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1C6D1E4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_Session();
  sub_1C6B823A4(a1 + *(v8 + 36), v7);
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C6D78990();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B82438(v7);
  }

  return result;
}

uint64_t sub_1C6D1E638(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_Session() + 36);
  sub_1C6B82438(a2 + v10);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t (*Com_Apple_News_Personalization_Session.startedAt.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D789A0();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_Session() + 36);
  *(v5 + 12) = v16;
  sub_1C6B823A4(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D78990();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B82438(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6B857BC;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_Session.clearStartedAt()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_Session() + 36);
  sub_1C6B82438(v0 + v1);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1C6D1E9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_Session();
  sub_1C6B823A4(a1 + *(v8 + 40), v7);
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C6D78990();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B82438(v7);
  }

  return result;
}

uint64_t sub_1C6D1EB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_Session() + 40);
  sub_1C6B82438(a2 + v10);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t (*Com_Apple_News_Personalization_Session.endedAt.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D789A0();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_Session() + 40);
  *(v5 + 12) = v16;
  sub_1C6B823A4(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D78990();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B82438(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6B83270;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_Session.clearEndedAt()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_Session() + 40);
  sub_1C6B82438(v0 + v1);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_Session.events.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Com_Apple_News_Personalization_Session.clientVersion.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Com_Apple_News_Personalization_Session.clientVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void Com_Apple_News_Personalization_Session.messageVersion.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_Personalization_Session.messageVersion.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Com_Apple_News_Personalization_Session.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_Session() + 32);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_Session.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_Session() + 32);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_Session.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v2 = type metadata accessor for Com_Apple_News_Personalization_Session();
  v3 = a1 + v2[8];
  sub_1C6D78A30();
  v4 = v2[9];
  v5 = sub_1C6D789A0();
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a1 + v4, 1, 1, v5);
  v6 = a1 + v2[10];

  return v8(v6, 1, 1, v5);
}

uint64_t sub_1C6D1F26C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D9700);
  __swift_project_value_buffer(v0, qword_1EC1D9700);
  sub_1C6D20ABC(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C6D80220;
  v5 = v21 + v4;
  v6 = v21 + v4 + *(v2 + 56);
  *(v21 + v4) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "started_at";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "ended_at";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "events";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "client_version";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "message_version";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_Session._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9700);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_Session.decodeMessage<A>(decoder:)()
{
  result = sub_1C6D78AD0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
            sub_1C6D20A74(&qword_1EDCE55C8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
            sub_1C6D78BA0();
            break;
          case 5:
LABEL_18:
            sub_1C6D78B80();
            break;
          case 6:
            sub_1C6B84C68();
            sub_1C6D78B00();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            goto LABEL_18;
          case 2:
            sub_1C6D1F79C();
            break;
          case 3:
            sub_1C6D1F850();
            break;
        }
      }

      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t sub_1C6D1F79C()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_Session() + 36);
  sub_1C6D789A0();
  sub_1C6D20A74(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6D1F850()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_Session() + 40);
  sub_1C6D789A0();
  sub_1C6D20A74(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_Session.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1C6D78CC0(), !v1))
  {
    result = sub_1C6D1FACC(v0);
    if (!v1)
    {
      sub_1C6D1FCE8(v0);
      if (*(*(v0 + 16) + 16))
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
        sub_1C6D20A74(&qword_1EDCE55C8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        sub_1C6D78CE0();
      }

      v6 = *(v0 + 32);
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = *(v0 + 24) & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        sub_1C6D78CC0();
      }

      if (*(v0 + 40))
      {
        v9 = *(v0 + 40);
        v10 = *(v0 + 48);
        sub_1C6B84C68();
        sub_1C6D78C70();
      }

      v8 = v0 + *(type metadata accessor for Com_Apple_News_Personalization_Session() + 32);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6D1FACC(uint64_t a1)
{
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_1C6D789A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Personalization_Session();
  sub_1C6B823A4(a1 + *(v11 + 36), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B82438(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1C6D20A74(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  sub_1C6D78CF0();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1C6D1FCE8(uint64_t a1)
{
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_1C6D789A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Personalization_Session();
  sub_1C6B823A4(a1 + *(v11 + 40), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B82438(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1C6D20A74(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  sub_1C6D78CF0();
  return (*(v7 + 8))(v10, v6);
}

uint64_t Com_Apple_News_Personalization_Session.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_Session();
  sub_1C6D20A74(&qword_1EC1D9718, type metadata accessor for Com_Apple_News_Personalization_Session);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6D1FFDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D20A74(&qword_1EC1D9728, type metadata accessor for Com_Apple_News_Personalization_Session);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6D20058@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9700);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6D20100(uint64_t a1)
{
  v2 = sub_1C6D20A74(&qword_1EDCE2AE0, type metadata accessor for Com_Apple_News_Personalization_Session);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6D2016C()
{
  sub_1C6D20A74(&qword_1EDCE2AE0, type metadata accessor for Com_Apple_News_Personalization_Session);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B8_SessionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1C6D789A0();
  v52 = *(v4 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45[-v12];
  sub_1C6B85620();
  v15 = v14;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v45[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45[-v20];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1C6D7A130() & 1) == 0)
  {
    goto LABEL_18;
  }

  v48 = v7;
  v49 = type metadata accessor for Com_Apple_News_Personalization_Session();
  v50 = a1;
  v22 = *(v49 + 36);
  v23 = *(v15 + 48);
  sub_1C6B823A4(a1 + v22, v21);
  sub_1C6B823A4(a2 + v22, &v21[v23]);
  v24 = *(v52 + 48);
  if (v24(v21, 1, v4) == 1)
  {
    if (v24(&v21[v23], 1, v4) == 1)
    {
      v47 = a2;
      sub_1C6B82438(v21);
      goto LABEL_11;
    }

LABEL_9:
    v25 = v21;
LABEL_17:
    sub_1C6B856B4(v25);
    goto LABEL_18;
  }

  sub_1C6B823A4(v21, v13);
  if (v24(&v21[v23], 1, v4) == 1)
  {
    (*(v52 + 8))(v13, v4);
    goto LABEL_9;
  }

  v47 = a2;
  v26 = v52;
  v27 = v48;
  (*(v52 + 32))(v48, &v21[v23], v4);
  sub_1C6D20A74(&qword_1EC1D6C58, MEMORY[0x1E69AA900]);
  v46 = sub_1C6D79560();
  v28 = *(v26 + 8);
  v28(v27, v4);
  v28(v13, v4);
  sub_1C6B82438(v21);
  if ((v46 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  v29 = v49;
  v30 = *(v49 + 40);
  v31 = *(v15 + 48);
  sub_1C6B823A4(v50 + v30, v18);
  v32 = v47 + v30;
  v33 = v47;
  sub_1C6B823A4(v32, &v18[v31]);
  if (v24(v18, 1, v4) != 1)
  {
    v34 = v51;
    sub_1C6B823A4(v18, v51);
    if (v24(&v18[v31], 1, v4) != 1)
    {
      v37 = v52;
      v38 = v48;
      (*(v52 + 32))(v48, &v18[v31], v4);
      sub_1C6D20A74(&qword_1EC1D6C58, MEMORY[0x1E69AA900]);
      v39 = sub_1C6D79560();
      v40 = *(v37 + 8);
      v40(v38, v4);
      v40(v34, v4);
      sub_1C6B82438(v18);
      if ((v39 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    (*(v52 + 8))(v34, v4);
    goto LABEL_16;
  }

  if (v24(&v18[v31], 1, v4) != 1)
  {
LABEL_16:
    v25 = v18;
    goto LABEL_17;
  }

  sub_1C6B82438(v18);
LABEL_21:
  v41 = v50;
  if (sub_1C6B5A06C(v50[2], v33[2]) & 1) != 0 && (v41[3] == v33[3] && v41[4] == v33[4] || (sub_1C6D7A130()))
  {
    v42 = v41[5];
    v43 = v33[5];
    if (*(v33 + 48) == 1)
    {
      if (v43 <= 2)
      {
        if (v43)
        {
          if (v43 == 1)
          {
            if (v42 == 1)
            {
              goto LABEL_32;
            }
          }

          else if (v42 == 2)
          {
            goto LABEL_32;
          }
        }

        else if (!v42)
        {
          goto LABEL_32;
        }
      }

      else if (v43 > 4)
      {
        if (v43 == 5)
        {
          if (v42 == 5)
          {
            goto LABEL_32;
          }
        }

        else if (v42 == 6)
        {
          goto LABEL_32;
        }
      }

      else if (v43 == 3)
      {
        if (v42 == 3)
        {
          goto LABEL_32;
        }
      }

      else if (v42 == 4)
      {
        goto LABEL_32;
      }
    }

    else if (v42 == v43)
    {
LABEL_32:
      v44 = *(v29 + 32);
      sub_1C6D78A40();
      sub_1C6D20A74(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v35 = sub_1C6D79560();
      return v35 & 1;
    }
  }

LABEL_18:
  v35 = 0;
  return v35 & 1;
}

void sub_1C6D20958()
{
  sub_1C6D20ABC(319, &qword_1EDCDFA80, type metadata accessor for Com_Apple_News_Personalization_SessionEvent, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v1 <= 0x3F)
    {
      sub_1C6D20ABC(319, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C6D20A74(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6D20ABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t static Features.fromProtoFeatureMap(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v88 = (v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v87 = (v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v86 = (v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v85 = (v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v84 = (v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v19 = *(v100 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v96 = v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D21480(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v99 = v81 - v24;
  sub_1C6D21480(0, &qword_1EDCEA320, MEMORY[0x1E6996150]);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v101 = (v81 - v27);
  v28 = sub_1C6D783E0();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v103 = v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v95 = *(v31 - 8);
  v32 = *(v95 + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v94 = v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v102 = v81 - v35;
  sub_1C6D214D4();
  v93 = v36;
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v92 = v81 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v41 = (v81 - v40);
  v97 = a2;
  sub_1C6D78800();
  v42 = a1 + 64;
  v43 = 1 << *(a1 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(a1 + 64);
  v46 = (v43 + 63) >> 6;
  v90 = (v19 + 48);
  v83 = *MEMORY[0x1E6996120];
  v82 = *MEMORY[0x1E6996130];
  v81[3] = *MEMORY[0x1E6996148];
  v81[2] = *MEMORY[0x1E6996140];
  v81[1] = *MEMORY[0x1E6996138];
  v89 = *MEMORY[0x1E6996128];
  v98 = a1;

  v48 = 0;
  v91 = v41;
  v49 = v92;
  while (v45)
  {
LABEL_12:
    v58 = __clz(__rbit64(v45)) | (v48 << 6);
    v59 = (*(v98 + 48) + 16 * v58);
    v61 = *v59;
    v60 = v59[1];
    v62 = v93;
    sub_1C6D21540(*(v98 + 56) + *(v95 + 72) * v58, v41 + *(v93 + 48), type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    *v41 = v61;
    v41[1] = v60;
    sub_1C6D21540(v41, v49, sub_1C6D214D4);
    v63 = *v49;
    v64 = v49[1];
    v65 = v49 + *(v62 + 48);
    v66 = v102;
    sub_1C6D21628(v65, v102, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);

    sub_1C6D783C0();
    v67 = v94;
    sub_1C6D21540(v66, v94, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v68 = v99;
    sub_1C6D215A8(v67, v99);
    sub_1C6D21690(v67, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v69 = (*v90)(v68, 1, v100);
    v53 = v89;
    if (v69 != 1)
    {
      sub_1C6D21628(v99, v96, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v79 = v85;
          sub_1C6D21628(v96, v85, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
          v80 = *v79;

          sub_1C6D21690(v79, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
          *v101 = v80;
          v52 = &v105;
        }

        else
        {
          v73 = v84;
          sub_1C6D21628(v96, v84, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
          v74 = *v73;

          sub_1C6D21690(v73, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
          *v101 = v74;
          v52 = &v104 + 4;
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v50 = v86;
        sub_1C6D21628(v96, v86, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        v51 = *v50;

        sub_1C6D21690(v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        *v101 = v51;
        v52 = &v105 + 4;
LABEL_5:
        v53 = *(v52 - 64);
        goto LABEL_6;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v71 = v87;
        sub_1C6D21628(v96, v87, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
        v72 = *v71;

        sub_1C6D21690(v71, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
        *v101 = v72;
        v53 = v82;
      }

      else
      {
        v75 = v88;
        sub_1C6D21628(v96, v88, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v76 = *v75;
        v77 = v75[1];
        sub_1C6B1CD10(*v75, v77);
        sub_1C6D21690(v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v78 = v101;
        *v101 = v76;
        v78[1] = v77;
        v53 = v83;
      }
    }

LABEL_6:
    v45 &= v45 - 1;
    v54 = sub_1C6D78760();
    v55 = *(v54 - 8);
    v56 = v101;
    (*(v55 + 104))(v101, v53, v54);
    (*(v55 + 56))(v56, 0, 1, v54);
    sub_1C6D78830();
    sub_1C6D21690(v102, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v41 = v91;
    result = sub_1C6D21690(v91, sub_1C6D214D4);
  }

  while (1)
  {
    v57 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v57 >= v46)
    {
    }

    v45 = *(v42 + 8 * v57);
    ++v48;
    if (v45)
    {
      v48 = v57;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1C6D21480(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6D214D4()
{
  if (!qword_1EDCDFB70)
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDFB70);
    }
  }
}

uint64_t sub_1C6D21540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6D215A8(uint64_t a1, uint64_t a2)
{
  sub_1C6D21480(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6D21628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6D21690(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Features.getDoubleList(_:)()
{
  v2 = sub_1C6D783E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1C6D783C0();
  sub_1C6D78810();
  sub_1C6C2C090();
  v7 = sub_1C6D786D0();
  if (v1)
  {
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v8 = v7;
    (*(v3 + 8))(v6, v2);
    v9 = *(v8 + 16);
    if (v9)
    {
      v16 = MEMORY[0x1E69E7CC0];
      sub_1C6B39260(0, v9, 0);
      v0 = v16;
      v10 = *(v16 + 16);
      v11 = 32;
      do
      {
        v12 = *(v8 + v11);
        v16 = v0;
        v13 = *(v0 + 24);
        if (v10 >= v13 >> 1)
        {
          sub_1C6B39260((v13 > 1), v10 + 1, 1);
          v0 = v16;
        }

        *(v0 + 16) = v10 + 1;
        *(v0 + 8 * v10 + 32) = v12;
        v11 += 4;
        ++v10;
        --v9;
      }

      while (v9);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v0;
}