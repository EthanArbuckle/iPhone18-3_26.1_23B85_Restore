uint64_t sub_21A0611A0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_21A061864;
  }

  else
  {
    v2 = sub_21A0612B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A0612B4()
{
  v25 = v0;
  sub_21A063430(v0[3], v0[12], type metadata accessor for ActivityAsset);

  v1 = sub_21A0E514C();
  v2 = sub_21A0E66BC();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[12];
  v7 = v0[10];
  if (v3)
  {
    v21 = v0[4];
    v22 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136446466;
    v23 = v7;
    v10 = ActivityAsset.description.getter();
    v12 = v11;
    sub_21A063014(v6, type metadata accessor for ActivityAsset);
    v13 = sub_219F50144(v10, v12, &v24);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_219F50144(v21, v22, &v24);
    _os_log_impl(&dword_219F39000, v1, v2, "Store persisted asset: %{public}s. Activity ID=%{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v8, -1, -1);
    sub_219F49008(v5, v4);

    v14 = v23;
  }

  else
  {
    sub_219F49008(v0[18], v0[19]);

    sub_21A063014(v6, type metadata accessor for ActivityAsset);
    v14 = v7;
  }

  sub_21A063014(v14, type metadata accessor for RemoteAssetKey);
  v15 = v0[2];
  v16 = v0[3];
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC980) + 48);
  sub_21A063430(v16, v15, type metadata accessor for ActivityAsset);
  v18 = v0[2] + v17;
  *v18 = 0;
  *(v18 + 8) = 0;

  v19 = v0[1];

  return v19();
}

uint64_t sub_21A061580()
{
  v25 = v0;
  v1 = v0[20];
  sub_21A063430(v0[3], v0[11], type metadata accessor for ActivityAsset);

  v2 = v1;
  v3 = sub_21A0E514C();
  v4 = sub_21A0E669C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  if (v5)
  {
    v22 = v0[4];
    v23 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v7 = 136446722;
    v10 = ActivityAsset.description.getter();
    v12 = v11;
    sub_21A063014(v6, type metadata accessor for ActivityAsset);
    v13 = sub_219F50144(v10, v12, &v24);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_219F50144(v22, v23, &v24);
    *(v7 + 22) = 2114;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v15;
    *v8 = v15;
    _os_log_impl(&dword_219F39000, v3, v4, "Failed to fetch activity asset: %{public}s. Activity ID=%{public}s, Error=%{public}@", v7, 0x20u);
    sub_219F6409C(v8, &qword_27CCD9E28);
    MEMORY[0x21CED2D30](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v7, -1, -1);
  }

  else
  {

    sub_21A063014(v6, type metadata accessor for ActivityAsset);
  }

  v17 = v0[2];
  v16 = v0[3];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC980) + 48);
  sub_21A063430(v16, v17, type metadata accessor for ActivityAsset);
  v19 = v0[2] + v18;
  *v19 = v1;
  *(v19 + 8) = 1;

  v20 = v0[1];

  return v20();
}

uint64_t sub_21A061864()
{
  v26 = v0;
  v1 = v0[10];
  sub_219F49008(v0[18], v0[19]);
  sub_21A063014(v1, type metadata accessor for RemoteAssetKey);
  v2 = v0[22];
  sub_21A063430(v0[3], v0[11], type metadata accessor for ActivityAsset);

  v3 = v2;
  v4 = sub_21A0E514C();
  v5 = sub_21A0E669C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v23 = v0[4];
    v24 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v8 = 136446722;
    v11 = ActivityAsset.description.getter();
    v13 = v12;
    sub_21A063014(v7, type metadata accessor for ActivityAsset);
    v14 = sub_219F50144(v11, v13, &v25);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_219F50144(v23, v24, &v25);
    *(v8 + 22) = 2114;
    v15 = v2;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v16;
    *v9 = v16;
    _os_log_impl(&dword_219F39000, v4, v5, "Failed to fetch activity asset: %{public}s. Activity ID=%{public}s, Error=%{public}@", v8, 0x20u);
    sub_219F6409C(v9, &qword_27CCD9E28);
    MEMORY[0x21CED2D30](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v10, -1, -1);
    MEMORY[0x21CED2D30](v8, -1, -1);
  }

  else
  {

    sub_21A063014(v7, type metadata accessor for ActivityAsset);
  }

  v18 = v0[2];
  v17 = v0[3];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC980) + 48);
  sub_21A063430(v17, v18, type metadata accessor for ActivityAsset);
  v20 = v0[2] + v19;
  *v20 = v2;
  *(v20 + 8) = 1;

  v21 = v0[1];

  return v21();
}

size_t sub_21A061BC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21A061CBC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA600);
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

uint64_t type metadata accessor for ActivityDownloadResult()
{
  result = qword_27CCDC9B0;
  if (!qword_27CCDC9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A061D8C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_219F49B18;

  return sub_21A05F650(a1, a2, v6, v7, v8, v9, v10);
}

unint64_t *sub_21A061E64(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_21A06203C(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_21A061EDC(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x28223BE20](a1, v8);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_21A06203C(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_21A061E64(v13, v7, v3);
  result = MEMORY[0x21CED2D30](v13, -1, -1);
  if (!v14)
  {
    return v15;
  }

  return result;
}

unint64_t *sub_21A06203C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if ((*(*(a3 + 56) + 16 * v11 + 8) & 1) == 0)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_21A062128(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_21A062128(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A062128(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = a1;
  v7 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21A0E481C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v80 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URLAssetConfiguration.Format(0);
  MEMORY[0x28223BE20](v15, v16);
  v83 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ActivityAsset();
  v87 = *(v22 - 8);
  v88 = v22;
  v24 = MEMORY[0x28223BE20](v22, v23);
  v85 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v91 = &v69 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v86 = &v69 - v30;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (*(a4 + 16) == a3)
  {

    return a4;
  }

  v75 = v15;
  v72 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC990);
  result = sub_21A0E69CC();
  v92 = result;
  v74 = v7;
  v73 = v10;
  if (a2 < 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = *v84;
  }

  v33 = 0;
  v71 = (v12 + 32);
  v70 = (v12 + 8);
  v34 = v92 + 64;
  v79 = v21;
  v81 = a2;
  v82 = a4;
  while (v32)
  {
    v35 = v21;
    v36 = __clz(__rbit64(v32));
    v89 = (v32 - 1) & v32;
LABEL_16:
    v39 = v36 | (v33 << 6);
    v40 = *(a4 + 48);
    v90 = *(v87 + 72);
    v41 = a4;
    v42 = v86;
    sub_21A063430(v40 + v90 * v39, v86, type metadata accessor for ActivityAsset);
    v43 = *(v41 + 56) + 16 * v39;
    v44 = *v43;
    v45 = *(v43 + 8);
    v46 = v91;
    sub_21A063498(v42, v91, type metadata accessor for ActivityAsset);
    sub_21A0E6DAC();
    v47 = v85;
    sub_21A063430(v46, v85, type metadata accessor for ActivityAsset);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v35;
      sub_21A063498(v47, v35, type metadata accessor for URLAssetConfiguration);
      MEMORY[0x21CED2490](1);
      v48 = v83;
      sub_21A063430(v35, v83, type metadata accessor for URLAssetConfiguration.Format);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v49 = v73;
        sub_21A063498(v48, v73, type metadata accessor for URLAssetConfiguration.Recipe);
        MEMORY[0x21CED2490](1);
        sub_21A062D08(v44, v45);
        sub_219FAB2D0(v93);
        sub_219F7CB6C(v93, *(v49 + *(v74 + 20)));
        sub_21A063014(v35, type metadata accessor for URLAssetConfiguration);
        v50 = type metadata accessor for URLAssetConfiguration.Recipe;
        v51 = v49;
      }

      else
      {
        v55 = v80;
        v56 = v72;
        (*v71)(v80, v48, v72);
        MEMORY[0x21CED2490](0);
        sub_21A062D08(v44, v45);
        sub_21A062D20(&qword_27CCD99F8, MEMORY[0x277CC9260]);
        sub_21A0E615C();
        v21 = v79;
        (*v70)(v55, v56);
        v50 = type metadata accessor for URLAssetConfiguration;
        v51 = v21;
      }

      sub_21A063014(v51, v50);
      a4 = v82;
    }

    else
    {
      v77 = a3;
      v52 = *v47;
      v53 = *(v47 + 16);
      v54 = *(v47 + 17);
      v76 = *(v47 + 18);
      MEMORY[0x21CED2490](0);
      MEMORY[0x21CED2490](v53);
      sub_21A062D08(v44, v45);
      v78 = v52;
      sub_21A0E626C();
      sub_21A0E6DCC();
      a3 = v77;
      if (v54 != 9)
      {
        sub_21A0E626C();
      }

      if (v76 == 3)
      {
        sub_21A0E6DCC();
        sub_219F79CD8();
      }

      else
      {
        sub_21A0E6DCC();
        sub_21A0E626C();
        sub_219F79CD8();
      }

      a4 = v82;
      v21 = v79;
    }

    result = sub_21A0E6DFC();
    v57 = -1 << *(v92 + 32);
    v58 = result & ~v57;
    v59 = v58 >> 6;
    if (((-1 << v58) & ~*(v34 + 8 * (v58 >> 6))) == 0)
    {
      v62 = 0;
      v63 = (63 - v57) >> 6;
      while (++v59 != v63 || (v62 & 1) == 0)
      {
        v64 = v59 == v63;
        if (v59 == v63)
        {
          v59 = 0;
        }

        v62 |= v64;
        v65 = *(v34 + 8 * v59);
        if (v65 != -1)
        {
          v60 = v45;
          v61 = __clz(__rbit64(~v65)) + (v59 << 6);
          goto LABEL_38;
        }
      }

      goto LABEL_43;
    }

    v60 = v45;
    v61 = __clz(__rbit64((-1 << v58) & ~*(v34 + 8 * (v58 >> 6)))) | v58 & 0x7FFFFFFFFFFFFFC0;
LABEL_38:
    *(v34 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
    v66 = v92;
    result = sub_21A063498(v91, *(v92 + 48) + v61 * v90, type metadata accessor for ActivityAsset);
    v67 = *(v66 + 56) + 16 * v61;
    *v67 = v44;
    *(v67 + 8) = v60;
    ++*(v66 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_44;
    }

    v32 = v89;
    a2 = v81;
    if (!a3)
    {
      return v92;
    }
  }

  v37 = v33;
  while (1)
  {
    v33 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v33 >= a2)
    {
      return v92;
    }

    v38 = v84[v33];
    ++v37;
    if (v38)
    {
      v35 = v21;
      v36 = __clz(__rbit64(v38));
      v89 = (v38 - 1) & v38;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_21A062AA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ActivityAsset();
  v35 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10, v12);
  v33 = &v30 - v14;
  v15 = a4 + 64;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v19 = 0;
    v30 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v34;
      a1 = *(v35 + 72);
      sub_21A063430(*(a4 + 48) + a1 * (v24 | (v19 << 6)), v34, type metadata accessor for ActivityAsset);
      v26 = v25;
      v27 = v33;
      sub_21A063498(v26, v33, type metadata accessor for ActivityAsset);
      sub_21A063498(v27, a2, type metadata accessor for ActivityAsset);
      if (v21 == v32)
      {
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += a1;
      result = v21;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v29 = v19 + 1;
    }

    else
    {
      v29 = v20;
    }

    v19 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v16 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

id sub_21A062D08(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_21A062D14(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_21A062D20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A062DA0(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityAsset() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_21A0E481C() - 8);
  v8 = (v6 + *(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = v1 + v5;
  v12 = *(v1 + v5);
  v13 = *(v11 + 8);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_219F4996C;

  return sub_21A0607E0(a1, v9, v10, v1 + v4, v12, v13, v1 + v6, v1 + v8);
}

uint64_t sub_21A062F5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_219F49B18;

  return sub_219F49B1C(a1, v4);
}

uint64_t sub_21A063014(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A063074(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for NewsLiveActivity(0);
  v35 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10, v12);
  v33 = &v30 - v14;
  v15 = a4 + 64;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v19 = 0;
    v30 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v34;
      a1 = *(v35 + 72);
      sub_21A063430(*(a4 + 56) + a1 * (v24 | (v19 << 6)), v34, type metadata accessor for NewsLiveActivity);
      v26 = v25;
      v27 = v33;
      sub_21A063498(v26, v33, type metadata accessor for NewsLiveActivity);
      sub_21A063498(v27, a2, type metadata accessor for NewsLiveActivity);
      if (v21 == v32)
      {
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += a1;
      result = v21;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v29 = v19 + 1;
    }

    else
    {
      v29 = v20;
    }

    v19 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v16 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_21A0632D8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21A063430(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A063498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A063500(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_21A063548(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21A0635C0()
{
  sub_21A06367C(319, &qword_27CCDC9C0, type metadata accessor for NewsLiveActivityContent);
  if (v0 <= 0x3F)
  {
    sub_21A06367C(319, &qword_27CCDC9C8, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21A06367C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for NewsLiveActivityAttributes(255);
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

double sub_21A0637B8@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = xmmword_21A0EB370;
  *(a1 + 64) = 0;
  *(a1 + 68) = 2;
  return result;
}

__n128 static ActivityMinimalAppearanceTheme.newsLogo(with:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ActivityAsset();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[9];
  v59 = a1[8];
  v60 = v8;
  v61 = a1[10];
  v9 = a1[5];
  v55 = a1[4];
  v56 = v9;
  v10 = a1[7];
  v57 = a1[6];
  v58 = v10;
  v11 = a1[1];
  v51 = *a1;
  v52 = v11;
  v12 = a1[3];
  v53 = a1[2];
  v54 = v12;
  if (qword_27CCD9208 != -1)
  {
    swift_once();
  }

  v13 = *(&xmmword_27CCDD760 + 1);
  v14 = byte_27CCDD770;
  v15 = *&byte_27CCDD771;
  *v7 = xmmword_27CCDD760;
  *(v7 + 1) = v13;
  v7[16] = v14;
  *(v7 + 17) = v15;
  swift_storeEnumTagMultiPayload();
  sub_21A066224(v7, a2, type metadata accessor for ActivityAsset);
  sub_219F79C1C();
  if (qword_27CCD9198 != -1)
  {
    swift_once();
  }

  v16 = qword_27CCDBDB0;

  sub_21A06628C(v7, type metadata accessor for ActivityAsset);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);
  *(a2 + *(v17 + 28)) = v16;
  *(a2 + *(v17 + 32)) = MEMORY[0x277D84F90];
  sub_219F5EC1C(&v62);
  v18 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v19 = (a2 + *(v18 + 20));
  sub_219F5EC1C(v73);
  v20 = v73[5];
  v19[4] = v73[4];
  v19[5] = v20;
  v21 = v73[10];
  v19[9] = v73[9];
  v19[10] = v21;
  v22 = v73[8];
  v19[7] = v73[7];
  v19[8] = v22;
  v19[6] = v73[6];
  v23 = v73[1];
  *v19 = v73[0];
  v19[1] = v23;
  v24 = v73[3];
  v19[2] = v73[2];
  v19[3] = v24;
  v25 = (a2 + *(v18 + 24));
  v26 = v63;
  *v25 = v62;
  v25[1] = v26;
  v27 = v67;
  v25[4] = v66;
  v25[5] = v27;
  v28 = v65;
  v25[2] = v64;
  v25[3] = v28;
  v29 = v72;
  v25[9] = v71;
  v25[10] = v29;
  v30 = v70;
  v25[7] = v69;
  v25[8] = v30;
  v25[6] = v68;
  v31 = v19[9];
  v74[8] = v19[8];
  v74[9] = v31;
  v74[10] = v19[10];
  v32 = v19[5];
  v74[4] = v19[4];
  v74[5] = v32;
  v33 = v19[7];
  v74[6] = v19[6];
  v74[7] = v33;
  v34 = v19[1];
  v74[0] = *v19;
  v74[1] = v34;
  v35 = v19[3];
  v74[2] = v19[2];
  v74[3] = v35;
  sub_219F45500(&v51, v75, &qword_27CCD9B40);
  sub_219F6409C(v74, &qword_27CCD9B40);
  v36 = v56;
  v19[4] = v55;
  v19[5] = v36;
  v37 = v61;
  v19[9] = v60;
  v19[10] = v37;
  v38 = v59;
  v19[7] = v58;
  v19[8] = v38;
  v19[6] = v57;
  v39 = v52;
  *v19 = v51;
  v19[1] = v39;
  v40 = v54;
  v19[2] = v53;
  v19[3] = v40;
  v41 = v25[9];
  v75[8] = v25[8];
  v75[9] = v41;
  v75[10] = v25[10];
  v42 = v25[5];
  v75[4] = v25[4];
  v75[5] = v42;
  v43 = v25[7];
  v75[6] = v25[6];
  v75[7] = v43;
  v44 = v25[1];
  v75[0] = *v25;
  v75[1] = v44;
  v45 = v25[3];
  v75[2] = v25[2];
  v75[3] = v45;
  sub_219F6409C(v75, &qword_27CCDA4A8);
  v46 = v71;
  v25[8] = v70;
  v25[9] = v46;
  v25[10] = v72;
  v47 = v67;
  v25[4] = v66;
  v25[5] = v47;
  v48 = v69;
  v25[6] = v68;
  v25[7] = v48;
  v49 = v63;
  *v25 = v62;
  v25[1] = v49;
  result = v65;
  v25[2] = v64;
  v25[3] = result;
  return result;
}

__n128 static ActivityMinimalAppearanceTheme.defaultValue.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ActivityAsset();
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27CCD9208 != -1)
  {
    swift_once();
  }

  v6 = *(&xmmword_27CCDD760 + 1);
  v7 = byte_27CCDD770;
  v8 = *&byte_27CCDD771;
  *v5 = xmmword_27CCDD760;
  *(v5 + 1) = v6;
  v5[16] = v7;
  *(v5 + 17) = v8;
  swift_storeEnumTagMultiPayload();
  sub_21A066224(v5, a1, type metadata accessor for ActivityAsset);
  sub_219F79C1C();
  if (qword_27CCD9198 != -1)
  {
    swift_once();
  }

  v9 = qword_27CCDBDB0;

  sub_21A06628C(v5, type metadata accessor for ActivityAsset);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);
  *(a1 + *(v10 + 28)) = v9;
  v11 = MEMORY[0x277D84F90];
  *(a1 + *(v10 + 32)) = MEMORY[0x277D84F90];
  v12 = qword_27CCDBDB0;
  memset(v47, 0, sizeof(v47));
  v48 = 0;

  sub_219F6409C(v47, &qword_27CCD9F78);
  memset(v49, 0, sizeof(v49));
  v50 = 0;
  sub_219F6409C(v49, &qword_27CCD9F78);
  *&v51[0] = 14;
  *&v52 = 0;
  BYTE4(v53) = 0x80;
  LODWORD(v53) = 0;
  *(&v53 + 1) = v12;
  *&v54[0] = v11;
  *(v54 + 8) = 0u;
  *(&v54[1] + 8) = 0u;
  *(&v54[2] + 8) = 0u;
  *(&v54[3] + 8) = 0u;
  *(&v54[4] + 8) = 0u;
  *(&v54[5] + 1) = 0;
  nullsub_1(v51, v13);
  sub_219F5EC1C(&v55);
  v14 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v15 = (a1 + *(v14 + 20));
  sub_219F5EC1C(v66);
  v16 = v66[5];
  v15[4] = v66[4];
  v15[5] = v16;
  v17 = v66[10];
  v15[9] = v66[9];
  v15[10] = v17;
  v18 = v66[8];
  v15[7] = v66[7];
  v15[8] = v18;
  v15[6] = v66[6];
  v19 = v66[1];
  *v15 = v66[0];
  v15[1] = v19;
  v20 = v66[3];
  v15[2] = v66[2];
  v15[3] = v20;
  v21 = (a1 + *(v14 + 24));
  v22 = v56;
  *v21 = v55;
  v21[1] = v22;
  v23 = v60;
  v21[4] = v59;
  v21[5] = v23;
  v24 = v58;
  v21[2] = v57;
  v21[3] = v24;
  v25 = v65;
  v21[9] = v64;
  v21[10] = v25;
  v26 = v63;
  v21[7] = v62;
  v21[8] = v26;
  v21[6] = v61;
  v27 = v15[9];
  v67[8] = v15[8];
  v67[9] = v27;
  v67[10] = v15[10];
  v28 = v15[5];
  v67[4] = v15[4];
  v67[5] = v28;
  v29 = v15[7];
  v67[6] = v15[6];
  v67[7] = v29;
  v30 = v15[1];
  v67[0] = *v15;
  v67[1] = v30;
  v31 = v15[3];
  v67[2] = v15[2];
  v67[3] = v31;
  sub_219F6409C(v67, &qword_27CCD9B40);
  v32 = v54[0];
  v15[4] = v53;
  v15[5] = v32;
  v33 = v54[5];
  v15[9] = v54[4];
  v15[10] = v33;
  v34 = v54[3];
  v15[7] = v54[2];
  v15[8] = v34;
  v15[6] = v54[1];
  v35 = v51[1];
  *v15 = v51[0];
  v15[1] = v35;
  v36 = v52;
  v15[2] = v51[2];
  v15[3] = v36;
  v37 = v21[9];
  v68[8] = v21[8];
  v68[9] = v37;
  v68[10] = v21[10];
  v38 = v21[5];
  v68[4] = v21[4];
  v68[5] = v38;
  v39 = v21[7];
  v68[6] = v21[6];
  v68[7] = v39;
  v40 = v21[1];
  v68[0] = *v21;
  v68[1] = v40;
  v41 = v21[3];
  v68[2] = v21[2];
  v68[3] = v41;
  sub_219F6409C(v68, &qword_27CCDA4A8);
  v42 = v64;
  v21[8] = v63;
  v21[9] = v42;
  v21[10] = v65;
  v43 = v60;
  v21[4] = v59;
  v21[5] = v43;
  v44 = v62;
  v21[6] = v61;
  v21[7] = v44;
  v45 = v56;
  *v21 = v55;
  v21[1] = v45;
  result = v58;
  v21[2] = v57;
  v21[3] = result;
  return result;
}

uint64_t ActivityMinimalAppearanceTheme.symbolTheme.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ActivityMinimalAppearanceTheme() + 20));
  v4 = v3[7];
  v5 = v3[9];
  v27 = v3[8];
  v28 = v5;
  v6 = v3[9];
  v29 = v3[10];
  v7 = v3[3];
  v8 = v3[5];
  v23 = v3[4];
  v9 = v23;
  v24 = v8;
  v10 = v3[5];
  v11 = v3[7];
  v25 = v3[6];
  v12 = v25;
  v26 = v11;
  v13 = v3[1];
  v14 = v3[3];
  v21 = v3[2];
  v15 = v21;
  v22 = v14;
  v16 = v3[1];
  v20[0] = *v3;
  v17 = v20[0];
  v20[1] = v16;
  a1[8] = v27;
  a1[9] = v6;
  a1[10] = v3[10];
  a1[4] = v9;
  a1[5] = v10;
  a1[6] = v12;
  a1[7] = v4;
  *a1 = v17;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v7;
  return sub_219F45500(v20, &v19, &qword_27CCD9B40);
}

__n128 ActivityMinimalAppearanceTheme.symbolTheme.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for ActivityMinimalAppearanceTheme() + 20));
  v4 = v3[9];
  v14[8] = v3[8];
  v14[9] = v4;
  v14[10] = v3[10];
  v5 = v3[5];
  v14[4] = v3[4];
  v14[5] = v5;
  v6 = v3[7];
  v14[6] = v3[6];
  v14[7] = v6;
  v7 = v3[3];
  v14[2] = v3[2];
  v14[3] = v7;
  v8 = v3[1];
  v14[0] = *v3;
  v14[1] = v8;
  sub_219F6409C(v14, &qword_27CCD9B40);
  v9 = *(a1 + 144);
  v3[8] = *(a1 + 128);
  v3[9] = v9;
  v3[10] = *(a1 + 160);
  v10 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v10;
  v11 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v11;
  v12 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v12;
  result = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = result;
  return result;
}

uint64_t ActivityMinimalAppearanceTheme.photoTheme.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ActivityMinimalAppearanceTheme() + 24));
  v4 = v3[7];
  v5 = v3[9];
  v27 = v3[8];
  v28 = v5;
  v6 = v3[9];
  v29 = v3[10];
  v7 = v3[3];
  v8 = v3[5];
  v23 = v3[4];
  v9 = v23;
  v24 = v8;
  v10 = v3[5];
  v11 = v3[7];
  v25 = v3[6];
  v12 = v25;
  v26 = v11;
  v13 = v3[1];
  v14 = v3[3];
  v21 = v3[2];
  v15 = v21;
  v22 = v14;
  v16 = v3[1];
  v20[0] = *v3;
  v17 = v20[0];
  v20[1] = v16;
  a1[8] = v27;
  a1[9] = v6;
  a1[10] = v3[10];
  a1[4] = v9;
  a1[5] = v10;
  a1[6] = v12;
  a1[7] = v4;
  *a1 = v17;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v7;
  return sub_219F45500(v20, &v19, &qword_27CCDA4A8);
}

__n128 ActivityMinimalAppearanceTheme.photoTheme.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for ActivityMinimalAppearanceTheme() + 24));
  v4 = v3[9];
  v14[8] = v3[8];
  v14[9] = v4;
  v14[10] = v3[10];
  v5 = v3[5];
  v14[4] = v3[4];
  v14[5] = v5;
  v6 = v3[7];
  v14[6] = v3[6];
  v14[7] = v6;
  v7 = v3[3];
  v14[2] = v3[2];
  v14[3] = v7;
  v8 = v3[1];
  v14[0] = *v3;
  v14[1] = v8;
  sub_219F6409C(v14, &qword_27CCDA4A8);
  v9 = *(a1 + 144);
  v3[8] = *(a1 + 128);
  v3[9] = v9;
  v3[10] = *(a1 + 160);
  v10 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v10;
  v11 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v11;
  v12 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v12;
  result = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = result;
  return result;
}

__n128 ActivityMinimalAppearanceTheme.init(image:symbolTheme:photoTheme:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v9 = (a4 + *(v8 + 20));
  sub_219F5EC1C(v41);
  v10 = v41[9];
  v9[8] = v41[8];
  v9[9] = v10;
  v9[10] = v41[10];
  v11 = v41[5];
  v9[4] = v41[4];
  v9[5] = v11;
  v12 = v41[7];
  v9[6] = v41[6];
  v9[7] = v12;
  v13 = v41[1];
  *v9 = v41[0];
  v9[1] = v13;
  v14 = v41[3];
  v9[2] = v41[2];
  v9[3] = v14;
  v15 = (a4 + *(v8 + 24));
  sub_219F5EC1C(v42);
  v16 = v42[9];
  v15[8] = v42[8];
  v15[9] = v16;
  v15[10] = v42[10];
  v17 = v42[5];
  v15[4] = v42[4];
  v15[5] = v17;
  v18 = v42[7];
  v15[6] = v42[6];
  v15[7] = v18;
  v19 = v42[1];
  *v15 = v42[0];
  v15[1] = v19;
  v20 = v42[3];
  v15[2] = v42[2];
  v15[3] = v20;
  sub_219F73094(a1, a4);
  v21 = v9[9];
  v43[8] = v9[8];
  v43[9] = v21;
  v43[10] = v9[10];
  v22 = v9[5];
  v43[4] = v9[4];
  v43[5] = v22;
  v23 = v9[7];
  v43[6] = v9[6];
  v43[7] = v23;
  v24 = v9[1];
  v43[0] = *v9;
  v43[1] = v24;
  v25 = v9[3];
  v43[2] = v9[2];
  v43[3] = v25;
  sub_219F6409C(v43, &qword_27CCD9B40);
  v26 = a2[5];
  v9[4] = a2[4];
  v9[5] = v26;
  v27 = a2[10];
  v9[9] = a2[9];
  v9[10] = v27;
  v28 = a2[8];
  v9[7] = a2[7];
  v9[8] = v28;
  v9[6] = a2[6];
  v29 = a2[1];
  *v9 = *a2;
  v9[1] = v29;
  v30 = a2[3];
  v9[2] = a2[2];
  v9[3] = v30;
  v31 = v15[9];
  v44[8] = v15[8];
  v44[9] = v31;
  v44[10] = v15[10];
  v32 = v15[5];
  v44[4] = v15[4];
  v44[5] = v32;
  v33 = v15[7];
  v44[6] = v15[6];
  v44[7] = v33;
  v34 = v15[1];
  v44[0] = *v15;
  v44[1] = v34;
  v35 = v15[3];
  v44[2] = v15[2];
  v44[3] = v35;
  sub_219F6409C(v44, &qword_27CCDA4A8);
  v36 = *(a3 + 144);
  v15[8] = *(a3 + 128);
  v15[9] = v36;
  v15[10] = *(a3 + 160);
  v37 = *(a3 + 80);
  v15[4] = *(a3 + 64);
  v15[5] = v37;
  v38 = *(a3 + 112);
  v15[6] = *(a3 + 96);
  v15[7] = v38;
  v39 = *(a3 + 16);
  *v15 = *a3;
  v15[1] = v39;
  result = *(a3 + 48);
  v15[2] = *(a3 + 32);
  v15[3] = result;
  return result;
}

uint64_t sub_21A0644B0()
{
  v1 = 0x68546C6F626D7973;
  if (*v0 != 1)
  {
    v1 = 0x6568546F746F6870;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_21A064514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A0664BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A06453C(uint64_t a1)
{
  v2 = sub_21A0660FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A064578(uint64_t a1)
{
  v2 = sub_21A0660FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityMinimalAppearanceTheme.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC9D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v34 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0660FC();
  sub_21A0E6EAC();
  v80 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  sub_21A066150(&qword_27CCDAF48);
  sub_21A0E6BBC();
  if (!v2)
  {
    v10 = type metadata accessor for ActivityMinimalAppearanceTheme();
    v11 = (v3 + *(v10 + 20));
    v12 = v11[7];
    v13 = v11[9];
    v75 = v11[8];
    v76 = v13;
    v14 = v11[9];
    v77 = v11[10];
    v15 = v11[3];
    v16 = v11[5];
    v71 = v11[4];
    v72 = v16;
    v17 = v11[5];
    v18 = v11[7];
    v73 = v11[6];
    v74 = v18;
    v19 = v11[1];
    v20 = v11[3];
    v69 = v11[2];
    v70 = v20;
    v21 = v11[1];
    v68[0] = *v11;
    v68[1] = v21;
    v65 = v75;
    v66 = v14;
    v67 = v11[10];
    v61 = v71;
    v62 = v17;
    v63 = v73;
    v64 = v12;
    v57 = v68[0];
    v58 = v19;
    v59 = v69;
    v60 = v15;
    v79 = 1;
    sub_219F45500(v68, v47, &qword_27CCD9B40);
    sub_21A02F868();
    sub_21A0E6B6C();
    v46[8] = v65;
    v46[9] = v66;
    v46[10] = v67;
    v46[4] = v61;
    v46[5] = v62;
    v46[6] = v63;
    v46[7] = v64;
    v46[0] = v57;
    v46[1] = v58;
    v46[2] = v59;
    v46[3] = v60;
    sub_219F6409C(v46, &qword_27CCD9B40);
    v22 = (v3 + *(v10 + 24));
    v23 = v22[7];
    v24 = v22[9];
    v54 = v22[8];
    v55 = v24;
    v25 = v22[9];
    v56 = v22[10];
    v26 = v22[3];
    v27 = v22[5];
    v50 = v22[4];
    v51 = v27;
    v28 = v22[5];
    v29 = v22[7];
    v52 = v22[6];
    v53 = v29;
    v30 = v22[1];
    v31 = v22[3];
    v48 = v22[2];
    v49 = v31;
    v32 = v22[1];
    v47[0] = *v22;
    v47[1] = v32;
    v43 = v54;
    v44 = v25;
    v45 = v22[10];
    v39 = v50;
    v40 = v28;
    v41 = v52;
    v42 = v23;
    v35 = v47[0];
    v36 = v30;
    v37 = v48;
    v38 = v26;
    v78 = 2;
    sub_219F45500(v47, v34, &qword_27CCDA4A8);
    sub_21A02F814();
    sub_21A0E6B6C();
    v34[8] = v43;
    v34[9] = v44;
    v34[10] = v45;
    v34[4] = v39;
    v34[5] = v40;
    v34[6] = v41;
    v34[7] = v42;
    v34[0] = v35;
    v34[1] = v36;
    v34[2] = v37;
    v34[3] = v38;
    sub_219F6409C(v34, &qword_27CCDA4A8);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ActivityMinimalAppearanceTheme.hash(into:)(uint64_t a1)
{
  sub_219FAB16C(a1);
  type metadata accessor for ActivityMinimalAppearanceTheme();
  sub_21A02EB6C(a1);
  return sub_21A02EB6C(a1);
}

uint64_t ActivityMinimalAppearanceTheme.hashValue.getter()
{
  sub_21A0E6DAC();
  sub_219FAB16C(v15);
  v1 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v2 = (v0 + *(v1 + 20));
  v3 = v2[9];
  v35 = v2[8];
  v36 = v3;
  v37 = v2[10];
  v4 = v2[5];
  v31 = v2[4];
  v32 = v4;
  v5 = v2[7];
  v33 = v2[6];
  v34 = v5;
  v6 = v2[3];
  v29 = v2[2];
  v30 = v6;
  v7 = v2[1];
  v27 = *v2;
  v28 = v7;
  sub_21A02EB6C(v15);
  v8 = (v0 + *(v1 + 24));
  v9 = v8[9];
  v24 = v8[8];
  v25 = v9;
  v26 = v8[10];
  v10 = v8[5];
  v20 = v8[4];
  v21 = v10;
  v11 = v8[7];
  v22 = v8[6];
  v23 = v11;
  v12 = v8[1];
  v16 = *v8;
  v17 = v12;
  v13 = v8[3];
  v18 = v8[2];
  v19 = v13;
  sub_21A02EB6C(v15);
  return sub_21A0E6DFC();
}

uint64_t ActivityMinimalAppearanceTheme.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  MEMORY[0x28223BE20](v63, v3);
  v64 = &v61 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC9E0);
  v62 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v5);
  v7 = &v61 - v6;
  v8 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v12[*(v9 + 28)];
  sub_219F5EC1C(v114);
  v14 = v114[9];
  *(v13 + 8) = v114[8];
  *(v13 + 9) = v14;
  *(v13 + 10) = v114[10];
  v15 = v114[5];
  *(v13 + 4) = v114[4];
  *(v13 + 5) = v15;
  v16 = v114[7];
  *(v13 + 6) = v114[6];
  *(v13 + 7) = v16;
  v17 = v114[1];
  *v13 = v114[0];
  *(v13 + 1) = v17;
  v18 = v114[3];
  *(v13 + 2) = v114[2];
  *(v13 + 3) = v18;
  v19 = &v12[*(v9 + 32)];
  sub_219F5EC1C(v115);
  v20 = v115[9];
  *(v19 + 8) = v115[8];
  *(v19 + 9) = v20;
  *(v19 + 10) = v115[10];
  v21 = v115[5];
  *(v19 + 4) = v115[4];
  *(v19 + 5) = v21;
  v22 = v115[7];
  *(v19 + 6) = v115[6];
  *(v19 + 7) = v22;
  v23 = v115[1];
  *v19 = v115[0];
  *(v19 + 1) = v23;
  v24 = v115[3];
  *(v19 + 2) = v115[2];
  *(v19 + 3) = v24;
  v25 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_21A0660FC();
  v66 = v7;
  v26 = v67;
  sub_21A0E6E7C();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(v68);
    v30 = *(v13 + 9);
    v100 = *(v13 + 8);
    v101 = v30;
    v102 = *(v13 + 10);
    v31 = *(v13 + 5);
    v96 = *(v13 + 4);
    v97 = v31;
    v32 = *(v13 + 7);
    v98 = *(v13 + 6);
    v99 = v32;
    v33 = *(v13 + 1);
    v92 = *v13;
    v93 = v33;
    v34 = *(v13 + 3);
    v94 = *(v13 + 2);
    v95 = v34;
    sub_219F6409C(&v92, &qword_27CCD9B40);
    v35 = *(v19 + 9);
    v111 = *(v19 + 8);
    v112 = v35;
    v113 = *(v19 + 10);
    v36 = *(v19 + 5);
    v107 = *(v19 + 4);
    v108 = v36;
    v37 = *(v19 + 6);
    v110 = *(v19 + 7);
    v109 = v37;
    v38 = *(v19 + 1);
    v103 = *v19;
    v104 = v38;
    v39 = *(v19 + 3);
    v105 = *(v19 + 2);
    v106 = v39;
    return sub_219F6409C(&v103, &qword_27CCDA4A8);
  }

  else
  {
    v27 = v62;
    LOBYTE(v103) = 0;
    sub_21A066150(&qword_27CCDAF70);
    v28 = v64;
    v29 = v65;
    sub_21A0E6ADC();
    sub_219F73094(v28, v12);
    v117 = 1;
    sub_21A02F940();
    sub_21A0E6A8C();
    v89 = v111;
    v90 = v112;
    v91 = v113;
    v85 = v107;
    v86 = v108;
    v87 = v109;
    v88 = v110;
    v81 = v103;
    v82 = v104;
    v83 = v105;
    v84 = v106;
    v40 = *(v13 + 9);
    v100 = *(v13 + 8);
    v101 = v40;
    v102 = *(v13 + 10);
    v41 = *(v13 + 5);
    v96 = *(v13 + 4);
    v97 = v41;
    v42 = *(v13 + 7);
    v98 = *(v13 + 6);
    v99 = v42;
    v43 = *(v13 + 1);
    v92 = *v13;
    v93 = v43;
    v44 = *(v13 + 3);
    v94 = *(v13 + 2);
    v95 = v44;
    sub_219F6409C(&v92, &qword_27CCD9B40);
    v45 = v90;
    *(v13 + 8) = v89;
    *(v13 + 9) = v45;
    *(v13 + 10) = v91;
    v46 = v86;
    *(v13 + 4) = v85;
    *(v13 + 5) = v46;
    v47 = v88;
    *(v13 + 6) = v87;
    *(v13 + 7) = v47;
    v48 = v82;
    *v13 = v81;
    *(v13 + 1) = v48;
    v49 = v84;
    *(v13 + 2) = v83;
    *(v13 + 3) = v49;
    v116 = 2;
    sub_21A02F8EC();
    sub_21A0E6A8C();
    (*(v27 + 8))(v66, v29);
    v77 = v80[19];
    v78 = v80[20];
    v79 = v80[21];
    v73 = v80[15];
    v74 = v80[16];
    v75 = v80[17];
    v76 = v80[18];
    v69 = v80[11];
    v70 = v80[12];
    v71 = v80[13];
    v72 = v80[14];
    v50 = *(v19 + 9);
    v80[8] = *(v19 + 8);
    v80[9] = v50;
    v80[10] = *(v19 + 10);
    v51 = *(v19 + 5);
    v80[4] = *(v19 + 4);
    v80[5] = v51;
    v52 = *(v19 + 7);
    v80[6] = *(v19 + 6);
    v80[7] = v52;
    v53 = *(v19 + 1);
    v80[0] = *v19;
    v80[1] = v53;
    v54 = *(v19 + 3);
    v80[2] = *(v19 + 2);
    v80[3] = v54;
    sub_219F6409C(v80, &qword_27CCDA4A8);
    v55 = v78;
    *(v19 + 8) = v77;
    *(v19 + 9) = v55;
    *(v19 + 10) = v79;
    v56 = v74;
    *(v19 + 4) = v73;
    *(v19 + 5) = v56;
    v57 = v76;
    *(v19 + 6) = v75;
    *(v19 + 7) = v57;
    v58 = v70;
    *v19 = v69;
    *(v19 + 1) = v58;
    v59 = v72;
    *(v19 + 2) = v71;
    *(v19 + 3) = v59;
    sub_21A066224(v12, v61, type metadata accessor for ActivityMinimalAppearanceTheme);
    __swift_destroy_boxed_opaque_existential_1(v68);
    return sub_21A06628C(v12, type metadata accessor for ActivityMinimalAppearanceTheme);
  }
}

uint64_t sub_21A0651B4(uint64_t a1)
{
  sub_21A0E6DAC();
  sub_219FAB16C(v16);
  v3 = (v1 + *(a1 + 20));
  v4 = v3[9];
  v36 = v3[8];
  v37 = v4;
  v38 = v3[10];
  v5 = v3[5];
  v32 = v3[4];
  v33 = v5;
  v6 = v3[7];
  v34 = v3[6];
  v35 = v6;
  v7 = v3[1];
  v28 = *v3;
  v29 = v7;
  v8 = v3[3];
  v30 = v3[2];
  v31 = v8;
  sub_21A02EB6C(v16);
  v9 = (v1 + *(a1 + 24));
  v10 = v9[9];
  v25 = v9[8];
  v26 = v10;
  v27 = v9[10];
  v11 = v9[5];
  v21 = v9[4];
  v22 = v11;
  v12 = v9[7];
  v23 = v9[6];
  v24 = v12;
  v13 = v9[1];
  v17 = *v9;
  v18 = v13;
  v14 = v9[3];
  v19 = v9[2];
  v20 = v14;
  sub_21A02EB6C(v16);
  return sub_21A0E6DFC();
}

uint64_t sub_21A065298(uint64_t a1)
{
  sub_219FAB16C(a1);
  sub_21A02EB6C(a1);
  return sub_21A02EB6C(a1);
}

uint64_t sub_21A065364(uint64_t a1, uint64_t a2)
{
  sub_21A0E6DAC();
  sub_219FAB16C(v17);
  v4 = (v2 + *(a2 + 20));
  v5 = v4[9];
  v37 = v4[8];
  v38 = v5;
  v39 = v4[10];
  v6 = v4[5];
  v33 = v4[4];
  v34 = v6;
  v7 = v4[7];
  v35 = v4[6];
  v36 = v7;
  v8 = v4[1];
  v29 = *v4;
  v30 = v8;
  v9 = v4[3];
  v31 = v4[2];
  v32 = v9;
  sub_21A02EB6C(v17);
  v10 = (v2 + *(a2 + 24));
  v11 = v10[9];
  v26 = v10[8];
  v27 = v11;
  v28 = v10[10];
  v12 = v10[5];
  v22 = v10[4];
  v23 = v12;
  v13 = v10[7];
  v24 = v10[6];
  v25 = v13;
  v14 = v10[1];
  v18 = *v10;
  v19 = v14;
  v15 = v10[3];
  v20 = v10[2];
  v21 = v15;
  sub_21A02EB6C(v17);
  return sub_21A0E6DFC();
}

uint64_t sub_21A065478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL _s22NewsLiveActivitiesCore30ActivityMinimalAppearanceThemeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static ActivityAsset.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);
  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  v8 = sub_219FAAA00(v6, v7);

  if ((v8 & 1) == 0 || (sub_219F75DC0(*(a1 + *(v4 + 32)), *(a2 + *(v4 + 32))) & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v10 = (a1 + *(v9 + 20));
  v11 = v10[3];
  v12 = v10[4];
  v13 = v12;
  v157 = v10[5];
  v156 = v12;
  v14 = v10[1];
  v15 = v10[3];
  v154 = v10[2];
  v155 = v15;
  v16 = v10[9];
  v162 = v10[10];
  v17 = v10[7];
  v18 = v10[8];
  v19 = v18;
  v161 = v10[9];
  v160 = v18;
  v20 = v10[5];
  v21 = v10[7];
  v158 = v10[6];
  v159 = v21;
  v22 = *v10;
  v23 = *v10;
  v153[1] = v10[1];
  v153[0] = v22;
  v24 = (a2 + *(v9 + 20));
  v25 = v24[7];
  v26 = v24[9];
  v168 = v24[8];
  v169 = v26;
  v27 = v24[9];
  v170 = v24[10];
  v28 = v24[3];
  v29 = v24[5];
  v164 = v24[4];
  v165 = v29;
  v31 = v24[5];
  v30 = v24[6];
  v32 = v30;
  v167 = v24[7];
  v166 = v30;
  v33 = v24[1];
  v163[0] = *v24;
  v163[1] = v33;
  v34 = v24[2];
  v36 = *v24;
  v35 = v24[1];
  v37 = v34;
  v163[3] = v24[3];
  v163[2] = v34;
  v38 = v10[7];
  v39 = v10[9];
  __src[8] = v10[8];
  __src[9] = v39;
  v40 = v10[3];
  v41 = v10[5];
  __src[4] = v10[4];
  __src[5] = v41;
  v42 = v10[6];
  __src[7] = v38;
  __src[6] = v42;
  v43 = v10[1];
  __src[0] = *v10;
  __src[1] = v43;
  v44 = v10[2];
  __src[3] = v40;
  __src[2] = v44;
  __src[18] = v25;
  __src[19] = v168;
  v45 = v24[10];
  __src[20] = v27;
  __src[21] = v45;
  __src[14] = v28;
  __src[15] = v164;
  __src[16] = v31;
  __src[17] = v32;
  __src[10] = v10[10];
  __src[11] = v36;
  __src[12] = v35;
  __src[13] = v37;
  v171[8] = v19;
  v171[9] = v16;
  v171[10] = v10[10];
  v171[4] = v13;
  v171[5] = v20;
  v171[6] = v158;
  v171[7] = v17;
  v171[0] = v23;
  v171[1] = v14;
  v171[2] = v154;
  v171[3] = v11;
  if (sub_219F5EBE4(v171) != 1)
  {
    v149 = __src[8];
    v150 = __src[9];
    v151 = __src[10];
    v145 = __src[4];
    v146 = __src[5];
    v148 = __src[7];
    v147 = __src[6];
    v141 = __src[0];
    v142 = __src[1];
    v144 = __src[3];
    v143 = __src[2];
    v137 = __src[8];
    v138 = __src[9];
    v139 = __src[10];
    v133 = __src[4];
    v134 = __src[5];
    v136 = __src[7];
    v135 = __src[6];
    v129 = __src[0];
    v130 = __src[1];
    v132 = __src[3];
    v131 = __src[2];
    __dst[8] = __src[19];
    __dst[9] = __src[20];
    __dst[10] = __src[21];
    __dst[4] = __src[15];
    __dst[5] = __src[16];
    __dst[7] = __src[18];
    __dst[6] = __src[17];
    __dst[0] = __src[11];
    __dst[1] = __src[12];
    __dst[3] = __src[14];
    __dst[2] = __src[13];
    if (sub_219F5EBE4(__dst) != 1)
    {
      v126 = __src[19];
      v127 = __src[20];
      v128 = __src[21];
      v122 = __src[15];
      v123 = __src[16];
      v124 = __src[17];
      v125 = __src[18];
      v118 = __src[11];
      v119 = __src[12];
      v120 = __src[13];
      v121 = __src[14];
      sub_219F45500(v153, &v107, &qword_27CCD9B40);
      sub_219F45500(v163, &v107, &qword_27CCD9B40);
      sub_219F45500(&v141, &v107, &qword_27CCD9B40);
      v47 = _s22NewsLiveActivitiesCore19ActivitySymbolThemeV2eeoiySbAC_ACtFZ_0(&v129, &v118);
      v104 = v126;
      v105 = v127;
      v106 = v128;
      v100 = v122;
      v101 = v123;
      v102 = v124;
      v103 = v125;
      v96 = v118;
      v97 = v119;
      v98 = v120;
      v99 = v121;
      sub_21A02FC68(&v96);
      v115 = v137;
      v116 = v138;
      v117 = v139;
      v111 = v133;
      v112 = v134;
      v113 = v135;
      v114 = v136;
      v107 = v129;
      v108 = v130;
      v109 = v131;
      v110 = v132;
      sub_21A02FC68(&v107);
      v126 = __src[8];
      v127 = __src[9];
      v128 = __src[10];
      v122 = __src[4];
      v123 = __src[5];
      v124 = __src[6];
      v125 = __src[7];
      v118 = __src[0];
      v119 = __src[1];
      v120 = __src[2];
      v121 = __src[3];
      sub_219F6409C(&v118, &qword_27CCD9B40);
      if ((v47 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_12;
    }

    v126 = __src[8];
    v127 = __src[9];
    v128 = __src[10];
    v122 = __src[4];
    v123 = __src[5];
    v124 = __src[6];
    v125 = __src[7];
    v118 = __src[0];
    v119 = __src[1];
    v120 = __src[2];
    v121 = __src[3];
    sub_219F45500(v153, &v107, &qword_27CCD9B40);
    sub_219F45500(v163, &v107, &qword_27CCD9B40);
    sub_219F45500(&v141, &v107, &qword_27CCD9B40);
    sub_21A02FC68(&v118);
LABEL_10:
    memcpy(__dst, __src, sizeof(__dst));
    v46 = &unk_27CCDBD28;
LABEL_19:
    sub_219F6409C(__dst, v46);
    return 0;
  }

  __dst[8] = __src[19];
  __dst[9] = __src[20];
  __dst[10] = __src[21];
  __dst[4] = __src[15];
  __dst[5] = __src[16];
  __dst[7] = __src[18];
  __dst[6] = __src[17];
  __dst[0] = __src[11];
  __dst[1] = __src[12];
  __dst[3] = __src[14];
  __dst[2] = __src[13];
  if (sub_219F5EBE4(__dst) != 1)
  {
    sub_219F45500(v153, &v141, &qword_27CCD9B40);
    sub_219F45500(v163, &v141, &qword_27CCD9B40);
    goto LABEL_10;
  }

  v149 = __src[8];
  v150 = __src[9];
  v151 = __src[10];
  v145 = __src[4];
  v146 = __src[5];
  v148 = __src[7];
  v147 = __src[6];
  v141 = __src[0];
  v142 = __src[1];
  v144 = __src[3];
  v143 = __src[2];
  sub_219F45500(v153, &v129, &qword_27CCD9B40);
  sub_219F45500(v163, &v129, &qword_27CCD9B40);
  sub_219F6409C(&v141, &qword_27CCD9B40);
LABEL_12:
  v48 = (a1 + *(v9 + 24));
  v49 = v48[3];
  v50 = v48[5];
  v122 = v48[4];
  v123 = v50;
  v51 = v48[1];
  v52 = v48[3];
  v120 = v48[2];
  v121 = v52;
  v53 = v48[9];
  v128 = v48[10];
  v54 = v48[7];
  v55 = v48[9];
  v126 = v48[8];
  v127 = v55;
  v56 = v48[5];
  v57 = v48[7];
  v124 = v48[6];
  v125 = v57;
  v58 = v48[1];
  v118 = *v48;
  v119 = v58;
  v59 = (a2 + *(v9 + 24));
  v60 = v59[7];
  v61 = v59[9];
  v137 = v59[8];
  v138 = v61;
  v62 = v59[9];
  v139 = v59[10];
  v63 = v59[3];
  v64 = v59[5];
  v133 = v59[4];
  v134 = v64;
  v66 = v59[5];
  v65 = v59[6];
  v67 = v65;
  v136 = v59[7];
  v135 = v65;
  v68 = v59[1];
  v129 = *v59;
  v130 = v68;
  v69 = v59[2];
  v71 = *v59;
  v70 = v59[1];
  v72 = v69;
  v132 = v59[3];
  v131 = v69;
  v73 = v48[7];
  v74 = v48[9];
  __src[8] = v48[8];
  __src[9] = v74;
  v75 = v48[3];
  v76 = v48[5];
  __src[4] = v48[4];
  __src[5] = v76;
  v77 = v48[6];
  __src[7] = v73;
  __src[6] = v77;
  v78 = v48[1];
  __src[0] = *v48;
  __src[1] = v78;
  v79 = v48[2];
  __src[3] = v75;
  __src[2] = v79;
  __src[18] = v60;
  __src[19] = v137;
  v80 = v59[10];
  __src[20] = v62;
  __src[21] = v80;
  __src[14] = v63;
  __src[15] = v133;
  __src[16] = v66;
  __src[17] = v67;
  __src[10] = v48[10];
  __src[11] = v71;
  __src[12] = v70;
  __src[13] = v72;
  v149 = v126;
  v150 = v53;
  v151 = v48[10];
  v145 = v122;
  v146 = v56;
  v148 = v54;
  v147 = v124;
  v141 = v118;
  v142 = v51;
  v144 = v49;
  v143 = v120;
  if (sub_219F5EBE4(&v141) == 1)
  {
    __dst[8] = __src[19];
    __dst[9] = __src[20];
    __dst[10] = __src[21];
    __dst[4] = __src[15];
    __dst[5] = __src[16];
    __dst[7] = __src[18];
    __dst[6] = __src[17];
    __dst[0] = __src[11];
    __dst[1] = __src[12];
    __dst[3] = __src[14];
    __dst[2] = __src[13];
    if (sub_219F5EBE4(__dst) == 1)
    {
      v115 = __src[8];
      v116 = __src[9];
      v117 = __src[10];
      v111 = __src[4];
      v112 = __src[5];
      v113 = __src[6];
      v114 = __src[7];
      v107 = __src[0];
      v108 = __src[1];
      v109 = __src[2];
      v110 = __src[3];
      sub_219F45500(&v118, &v96, &qword_27CCDA4A8);
      sub_219F45500(&v129, &v96, &qword_27CCDA4A8);
      sub_219F6409C(&v107, &qword_27CCDA4A8);
      return 1;
    }

    sub_219F45500(&v118, &v107, &qword_27CCDA4A8);
    sub_219F45500(&v129, &v107, &qword_27CCDA4A8);
    goto LABEL_18;
  }

  v115 = __src[8];
  v116 = __src[9];
  v117 = __src[10];
  v111 = __src[4];
  v112 = __src[5];
  v113 = __src[6];
  v114 = __src[7];
  v107 = __src[0];
  v108 = __src[1];
  v109 = __src[2];
  v110 = __src[3];
  v104 = __src[8];
  v105 = __src[9];
  v106 = __src[10];
  v100 = __src[4];
  v101 = __src[5];
  v102 = __src[6];
  v103 = __src[7];
  v96 = __src[0];
  v97 = __src[1];
  v98 = __src[2];
  v99 = __src[3];
  __dst[8] = __src[19];
  __dst[9] = __src[20];
  __dst[10] = __src[21];
  __dst[4] = __src[15];
  __dst[5] = __src[16];
  __dst[7] = __src[18];
  __dst[6] = __src[17];
  __dst[0] = __src[11];
  __dst[1] = __src[12];
  __dst[3] = __src[14];
  __dst[2] = __src[13];
  if (sub_219F5EBE4(__dst) == 1)
  {
    v93 = __src[8];
    v94 = __src[9];
    v95 = __src[10];
    v89 = __src[4];
    v90 = __src[5];
    v91 = __src[6];
    v92 = __src[7];
    v85 = __src[0];
    v86 = __src[1];
    v87 = __src[2];
    v88 = __src[3];
    sub_219F45500(&v118, v84, &qword_27CCDA4A8);
    sub_219F45500(&v129, v84, &qword_27CCDA4A8);
    sub_219F45500(&v107, v84, &qword_27CCDA4A8);
    sub_21A02FCBC(&v85);
LABEL_18:
    memcpy(__dst, __src, sizeof(__dst));
    v46 = &unk_27CCDBD20;
    goto LABEL_19;
  }

  v93 = __src[19];
  v94 = __src[20];
  v95 = __src[21];
  v89 = __src[15];
  v90 = __src[16];
  v91 = __src[17];
  v92 = __src[18];
  v85 = __src[11];
  v86 = __src[12];
  v87 = __src[13];
  v88 = __src[14];
  sub_219F45500(&v118, v84, &qword_27CCDA4A8);
  sub_219F45500(&v129, v84, &qword_27CCDA4A8);
  sub_219F45500(&v107, v84, &qword_27CCDA4A8);
  v82 = _s22NewsLiveActivitiesCore19ActivitySymbolThemeV2eeoiySbAC_ACtFZ_0(&v96, &v85);
  v83[8] = v93;
  v83[9] = v94;
  v83[10] = v95;
  v83[4] = v89;
  v83[5] = v90;
  v83[6] = v91;
  v83[7] = v92;
  v83[0] = v85;
  v83[1] = v86;
  v83[2] = v87;
  v83[3] = v88;
  sub_21A02FCBC(v83);
  v84[8] = v104;
  v84[9] = v105;
  v84[10] = v106;
  v84[4] = v100;
  v84[5] = v101;
  v84[6] = v102;
  v84[7] = v103;
  v84[0] = v96;
  v84[1] = v97;
  v84[2] = v98;
  v84[3] = v99;
  sub_21A02FCBC(v84);
  v93 = __src[8];
  v94 = __src[9];
  v95 = __src[10];
  v89 = __src[4];
  v90 = __src[5];
  v91 = __src[6];
  v92 = __src[7];
  v85 = __src[0];
  v86 = __src[1];
  v87 = __src[2];
  v88 = __src[3];
  sub_219F6409C(&v85, &qword_27CCDA4A8);
  return (v82 & 1) != 0;
}

unint64_t sub_21A0660FC()
{
  result = qword_27CCDC9D8;
  if (!qword_27CCDC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC9D8);
  }

  return result;
}

uint64_t sub_21A066150(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD98D0);
    sub_21A066334(&qword_27CCDAF50, type metadata accessor for ActivityAsset);
    sub_21A066334(&qword_27CCDAF58, type metadata accessor for ActivityAsset);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A066224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A06628C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A066334(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21A0663B8()
{
  result = qword_27CCDC9F0;
  if (!qword_27CCDC9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC9F0);
  }

  return result;
}

unint64_t sub_21A066410()
{
  result = qword_27CCDC9F8;
  if (!qword_27CCDC9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDC9F8);
  }

  return result;
}

unint64_t sub_21A066468()
{
  result = qword_27CCDCA00;
  if (!qword_27CCDCA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCA00);
  }

  return result;
}

uint64_t sub_21A0664BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68546C6F626D7973 && a2 == 0xEB00000000656D65 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6568546F746F6870 && a2 == 0xEA0000000000656DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_21A0E6C5C();

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

uint64_t sub_21A0665DC(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9608);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v42 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v41 = &v38 - v17;
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0;
  sub_219F87E24(v45);
  memcpy((v7 + 48), v45, 0x9E9uLL);
  v18 = type metadata accessor for LiveBlogWatchContentView();
  v19 = v18[6];
  v40 = v19;
  v20 = type metadata accessor for ActivityHeaderViewModel();
  (*(*(v20 - 8) + 56))(v7 + v19, 1, 1, v20);
  v39 = type metadata accessor for LiveBlogStaticAttributes();
  v21 = *(v39 + 32);
  memcpy(v46, (v5 + v21), 0x9E9uLL);
  memcpy(v49, (v5 + v21), 0x9E9uLL);
  v22 = type metadata accessor for LiveBlogContentState();
  v23 = v22[7];
  memcpy(v47, (v4 + v23), 0x9E9uLL);
  memcpy(v44, (v4 + v23), 0x9E9uLL);
  sub_219F45500(v46, v48, &qword_27CCD9EB0);
  sub_219F45500(v47, v48, &qword_27CCD9EB0);
  sub_21A0B36AC(v49, v44);
  memcpy(v49, (v7 + 48), 0x9E9uLL);
  sub_219F6409C(v49, &qword_27CCD9EB0);
  memcpy((v7 + 48), v48, 0x9E9uLL);
  v24 = (v4 + v22[5]);
  v25 = v24[2];
  v27 = v24[4];
  v44[3] = v24[3];
  v26 = v44[3];
  v44[4] = v27;
  v29 = *v24;
  v44[1] = v24[1];
  v28 = v44[1];
  v44[2] = v25;
  v44[0] = v29;
  v30 = (v7 + v18[7]);
  v30[2] = v25;
  v30[3] = v26;
  v30[4] = v27;
  *v30 = v29;
  v30[1] = v28;
  v31 = v14;
  sub_219F45500(v5, v14, &qword_27CCD9608);
  v32 = v42;
  sub_219F45500(v4, v42, &qword_27CCD9608);
  sub_219F87ED4(v44, v43);
  v33 = v41;
  ActivityHeaderViewModel.init(from:override:)(v31, v32, v41);
  sub_219F87FB8(v33, v7 + v40);
  v34 = *(v5 + *(v39 + 36));
  v35 = *(v4 + v22[8]);
  if (v34)
  {
    if (!v35)
    {

      sub_21A066AA0(v4, type metadata accessor for LiveBlogContentState);
      result = sub_21A066AA0(v5, type metadata accessor for LiveBlogStaticAttributes);
      v35 = v34;
      goto LABEL_7;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43[0] = v34;
    sub_219F881A0(v35, sub_219F880E0, 0, isUniquelyReferenced_nonNull_native, v43);

    v35 = v43[0];
  }

  else
  {
  }

  sub_21A066AA0(v4, type metadata accessor for LiveBlogContentState);
  result = sub_21A066AA0(v5, type metadata accessor for LiveBlogStaticAttributes);
LABEL_7:
  *(v7 + v18[8]) = v35;
  return result;
}

uint64_t type metadata accessor for LiveBlogWatchContentView()
{
  result = qword_27CCDCA60;
  if (!qword_27CCDCA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A066AA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A066B00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NewsWatchContentViewModifier();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCA70);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v26 - v11;
  *v12 = sub_21A0E567C();
  *(v12 + 1) = 0;
  v12[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCA78);
  sub_21A066D64(v2, v13);
  KeyPath = swift_getKeyPath();
  v15 = &v12[*(v9 + 44)];
  *v15 = KeyPath;
  v15[1] = 0xC024000000000000;
  memcpy(v28, (v2 + 48), 0x9E9uLL);
  if (sub_219F88A28(v28) == 1)
  {
    v16 = 0;
    v17 = xmmword_21A0FD1D0;
    v18 = xmmword_21A0EB370;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
  }

  else
  {
    sub_219F45500(&v28[142], &v27, &qword_27CCDAB00);
    v19 = v28[142];
    v20 = v28[143];
    v21 = v28[144];
    v18 = v28[145];
    v17 = v28[146];
    v16 = *&v28[147];
  }

  *v7 = v19;
  *(v7 + 1) = v20;
  *(v7 + 2) = v21;
  *(v7 + 3) = v18;
  *(v7 + 4) = v17;
  *(v7 + 10) = v16;
  v22 = *(v4 + 20);
  *&v7[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAAF0);
  swift_storeEnumTagMultiPayload();
  v23 = &v7[*(v4 + 24)];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  v23[40] = 0;
  sub_219F4D494(v12, a1, &qword_27CCDCA70);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCA80);
  return sub_21A067C98(v7, a1 + *(v24 + 36));
}

uint64_t sub_21A066D64(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v113 = v3;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCA88);
  MEMORY[0x28223BE20](v104, v4);
  v106 = &v94 - v5;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCA90);
  v109 = *(v107 - 8);
  v7 = MEMORY[0x28223BE20](v107, v6);
  v105 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v94 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCA98);
  MEMORY[0x28223BE20](v12, v13);
  v110 = (&v94 - v14);
  v15 = sub_21A0E554C();
  v108 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCAA0);
  MEMORY[0x28223BE20](v111, v19);
  v21 = &v94 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCAA8);
  v24 = MEMORY[0x28223BE20](v22 - 8, v23);
  v26 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v112 = &v94 - v28;
  v29 = type metadata accessor for LiveBlogWatchContentView();
  v30 = v29;
  v31 = v2 + *(v29 + 28);
  if (*(v31 + 40))
  {
    memcpy(v148, (v2 + 48), 0x9E9uLL);
    if (sub_219F88A28(v148) == 1)
    {
      sub_219F638CC(v117);
    }

    else
    {
      sub_219F45500(&v148[50], v117, &qword_27CCD9578);
      memcpy(v117, &v148[50], 0x3E8uLL);
    }

    v45 = *(v31 + 48);
    v125 = *(v31 + 32);
    v126 = v45;
    v127 = *(v31 + 64);
    v46 = *v31;
    v124 = *(v31 + 16);
    v123 = v46;
    v47 = *(v2 + *(v30 + 32));
    KeyPath = swift_getKeyPath();
    LOBYTE(v131) = 0;
    sub_219F638CC(v114);
    memcpy(&v116[7], v114, 0x3E8uLL);
    *&v149 = 1;
    sub_219F87ED4(&v123, v115);

    sub_21A0E5D7C();
    v50 = *(&v115[0] + 1);
    v49 = *&v115[0];
    memcpy(v115, &v116[7], 0x3E8uLL);
    sub_219F6409C(v115, &qword_27CCD9578);
    memcpy(&v116[7], v117, 0x3E8uLL);
    v51 = v131;
    v52 = v110;
    *v110 = KeyPath;
    *(v52 + 1) = 0u;
    *(v52 + 3) = 0u;
    *(v52 + 40) = v51;
    memcpy(v52 + 41, v116, 0x3EFuLL);
    v53 = v126;
    *(v52 + 135) = v125;
    *(v52 + 137) = v53;
    *(v52 + 139) = v127;
    v54 = v124;
    *(v52 + 131) = v123;
    *(v52 + 133) = v54;
    v52[141] = v47;
    *(v52 + 71) = __PAIR128__(v50, v49);
    swift_storeEnumTagMultiPayload();
    sub_21A067CFC();
    sub_21A067D50();
    v55 = v112;
    sub_21A0E56BC();
    v56 = v113;
  }

  else
  {
    v97 = v18;
    v98 = v15;
    v101 = v21;
    v102 = v12;
    v96 = v11;
    v103 = v26;
    v32 = *(v31 + 48);
    v33 = *(v31 + 56);
    v99 = v2;
    v100 = v32;
    v34 = *(v2 + *(v29 + 32));
    v35 = *v2;
    v36 = *(v2 + 8);
    v38 = *(v2 + 16);
    v37 = *(v2 + 24);
    v39 = *(v2 + 32);
    if (*(v2 + 40) == 1)
    {
      *&v149 = *v2;
      *(&v149 + 1) = v36;
      *&v150 = v38;
      *(&v150 + 1) = v37;
      v151 = v39;
      v40 = v34;

      v41 = v33;

      sub_219F7F800(v35, v36, v38, v37, v39, 1);
      v42 = v109;
      v43 = v101;
      v44 = v98;
    }

    else
    {
      v40 = v34;

      v41 = v33;

      sub_219F7F800(v35, v36, v38, v37, v39, 0);
      sub_21A0E66AC();
      v57 = sub_21A0E575C();
      sub_21A0E512C();

      v58 = v97;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v35, v36, v38, v37, v39, 0);
      v44 = v98;
      (*(v108 + 8))(v58, v98);
      v42 = v109;
      v43 = v101;
    }

    v148[0] = v149;
    v148[1] = v150;
    *&v148[2] = v151;
    v59 = sub_21A0B892C(v100, v41, v40, v148);
    v56 = v113;
    v26 = v103;
    v63 = v99;
    if (v62)
    {
      v94 = v61;
      v95 = v60;
      v98 = v59;
      v100 = v62;
      memcpy(v148, (v99 + 48), 0x9E9uLL);
      v64 = sub_219F88A28(v148);
      v65 = v108;
      if (v64 == 1 || (memcpy(v117, &v148[50], 0x3E8uLL), get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v117) == 1))
      {
        sub_219F639B0(&v135);
      }

      else
      {
        sub_219F45500(&v117[37] + 8, v115, &qword_27CCD95B8);
        v145 = *(&v117[47] + 8);
        v146 = *(&v117[48] + 8);
        v147 = *(&v117[49] + 1);
        v141 = *(&v117[43] + 8);
        v142 = *(&v117[44] + 8);
        v144 = *(&v117[46] + 8);
        v143 = *(&v117[45] + 8);
        v137 = *(&v117[39] + 8);
        v138 = *(&v117[40] + 8);
        v140 = *(&v117[42] + 8);
        v139 = *(&v117[41] + 8);
        v136 = *(&v117[38] + 8);
        v135 = *(&v117[37] + 8);
      }

      if (qword_27CCD91F8 != -1)
      {
        swift_once();
      }

      v115[2] = xmmword_27CCDCA28;
      v115[3] = unk_27CCDCA38;
      v115[4] = xmmword_27CCDCA48;
      LODWORD(v115[5]) = dword_27CCDCA58;
      v115[0] = xmmword_27CCDCA08;
      v115[1] = unk_27CCDCA18;
      v114[2] = xmmword_27CCDCA28;
      v114[3] = unk_27CCDCA38;
      v114[4] = xmmword_27CCDCA48;
      LODWORD(v114[5]) = dword_27CCDCA58;
      v114[0] = xmmword_27CCDCA08;
      v114[1] = unk_27CCDCA18;
      v134 = 9;
      v67 = *v63;
      v66 = *(v63 + 8);
      v69 = *(v63 + 16);
      v68 = *(v63 + 24);
      v70 = *(v63 + 32);
      if (*(v63 + 40) == 1)
      {
        *&v131 = *v63;
        *(&v131 + 1) = v66;
        *&v132 = v69;
        *(&v132 + 1) = v68;
        v133 = v70;
        sub_219F639D4(v115, v117);
        sub_219F7F800(v67, v66, v69, v68, v70, 1);
      }

      else
      {
        sub_219F639D4(v115, v117);
        sub_219F7F800(v67, v66, v69, v68, v70, 0);
        sub_21A0E66AC();
        v71 = sub_21A0E575C();
        sub_21A0E512C();

        v56 = v113;
        v72 = v97;
        sub_21A0E553C();
        swift_getAtKeyPath();
        sub_219F63A50(v67, v66, v69, v68, v70, 0);
        (*(v65 + 8))(v72, v44);
      }

      v118 = v131;
      v119 = v132;
      v120 = v133;
      v74 = v94;
      v73 = v95;
      v75 = v98;
      v108 = Text.activityTextModifier(_:fallback:font:environment:)(&v135, v114, &v134, &v118, v98, v95, v94 & 1);
      v77 = v76;
      v79 = v78;
      v113 = v80;
      sub_219F63A30(v75, v73, v74 & 1);

      v121[0] = v118;
      v121[1] = v119;
      v122 = v120;
      sub_219F5ED9C(v121);
      v125 = v114[2];
      v126 = v114[3];
      v127 = v114[4];
      v128 = v114[5];
      v123 = v114[0];
      v124 = v114[1];
      sub_219F6409C(&v123, &qword_27CCD95B0);
      v117[10] = v145;
      v117[11] = v146;
      *&v117[12] = v147;
      v117[6] = v141;
      v117[7] = v142;
      v117[9] = v144;
      v117[8] = v143;
      v117[2] = v137;
      v117[3] = v138;
      v117[5] = v140;
      v117[4] = v139;
      v117[1] = v136;
      v117[0] = v135;
      sub_219F6409C(v117, &qword_27CCD95B8);
      v81 = swift_getKeyPath();
      v130 = v79 & 1;
      v129 = 0;
      v82 = v106;
      v83 = &v106[*(v104 + 36)];
      v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD95C0) + 28);
      v85 = *MEMORY[0x277CE1050];
      v86 = sub_21A0E5CEC();
      (*(*(v86 - 8) + 104))(v83 + v84, v85, v86);
      *v83 = swift_getKeyPath();
      *v82 = v108;
      *(v82 + 8) = v77;
      *(v82 + 16) = v130;
      *(v82 + 17) = v118;
      *(v82 + 20) = *(&v118 + 3);
      *(v82 + 24) = v113;
      *(v82 + 32) = 0x3FF0000000000000;
      *(v82 + 40) = v81;
      *(v82 + 48) = 3;
      *(v82 + 56) = v129;
      v87 = v105;
      sub_219F4D494(v82, v105, &qword_27CCDCA88);
      v88 = v107;
      *(v87 + *(v107 + 36)) = 256;
      v89 = v87;
      v90 = v96;
      sub_219F4D494(v89, v96, &qword_27CCDCA90);
      v43 = v101;
      sub_219F4D494(v90, v101, &qword_27CCDCA90);
      (*(v109 + 56))(v43, 0, 1, v88);
      v26 = v103;
    }

    else
    {
      (*(v42 + 56))(v43, 1, 1, v107);
    }

    sub_219F45500(v43, v110, &qword_27CCDCAA0);
    swift_storeEnumTagMultiPayload();
    sub_21A067CFC();
    sub_21A067D50();
    v55 = v112;
    sub_21A0E56BC();
    sub_219F6409C(v43, &qword_27CCDCAA0);
  }

  sub_219F45500(v55, v26, &qword_27CCDCAA8);
  *v56 = 0;
  *(v56 + 8) = 1;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCB00);
  sub_219F45500(v26, v56 + *(v91 + 48), &qword_27CCDCAA8);
  v92 = v56 + *(v91 + 64);
  *v92 = 0;
  *(v92 + 8) = 1;
  sub_219F6409C(v55, &qword_27CCDCAA8);
  return sub_219F6409C(v26, &qword_27CCDCAA8);
}

double sub_21A067A80()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCDCA08 = v0;
  BYTE4(xmmword_27CCDCA48) = 32;
  LODWORD(xmmword_27CCDCA48) = 0;
  *(&xmmword_27CCDCA48 + 1) = 0;
  dword_27CCDCA58 = 393729;
  return result;
}

uint64_t sub_21A067AFC@<X0>(void *a1@<X8>)
{
  result = sub_21A0E543C();
  *a1 = v3;
  return result;
}

void sub_21A067B78()
{
  sub_21A01B65C(319, &qword_27CCD9B18, &type metadata for DynamicValueConditionEnvironment, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21A01B65C(319, &qword_280C88F20, &type metadata for LiveBlogTheme, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_219F888D8();
      if (v2 <= 0x3F)
      {
        sub_219F419CC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21A067C98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsWatchContentViewModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A067CFC()
{
  result = qword_27CCDCAB0;
  if (!qword_27CCDCAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCAB0);
  }

  return result;
}

unint64_t sub_21A067D50()
{
  result = qword_27CCDCAB8;
  if (!qword_27CCDCAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCAA0);
    sub_21A067DD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCAB8);
  }

  return result;
}

unint64_t sub_21A067DD4()
{
  result = qword_27CCDCAC0;
  if (!qword_27CCDCAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCA90);
    sub_21A067E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCAC0);
  }

  return result;
}

unint64_t sub_21A067E60()
{
  result = qword_27CCDCAC8;
  if (!qword_27CCDCAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCA88);
    sub_21A067F18();
    sub_219F3E490(&qword_27CCDA9F0, &qword_27CCD95C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCAC8);
  }

  return result;
}

unint64_t sub_21A067F18()
{
  result = qword_27CCDCAD0;
  if (!qword_27CCDCAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCAD8);
    sub_21A067FD0();
    sub_219F3E490(&qword_27CCD9F10, &qword_27CCD9F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCAD0);
  }

  return result;
}

unint64_t sub_21A067FD0()
{
  result = qword_27CCDCAE0;
  if (!qword_27CCDCAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCAE8);
    sub_219F3E490(&qword_27CCDCAF0, &qword_27CCDCAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCAE0);
  }

  return result;
}

unint64_t sub_21A068088()
{
  result = qword_27CCDCB08;
  if (!qword_27CCDCB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCA80);
    sub_21A068114();
    sub_219FB4FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCB08);
  }

  return result;
}

unint64_t sub_21A068114()
{
  result = qword_27CCDCB10;
  if (!qword_27CCDCB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCA70);
    sub_219F3E490(&qword_27CCDCB18, &qword_27CCDCB20);
    sub_219F3E490(&qword_27CCD9CB8, &qword_27CCD9CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCB10);
  }

  return result;
}

uint64_t static Placement.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 6:
      return v3 == 6;
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 4) < 3)
  {
    return 0;
  }

  return sub_21A0AA1DC(v2, v3);
}

uint64_t Placement.hash(into:)()
{
  v1 = *v0;
  switch(v1)
  {
    case 6:
      v2 = 3;
      return MEMORY[0x21CED2490](v2);
    case 5:
      v2 = 1;
      return MEMORY[0x21CED2490](v2);
    case 4:
      v2 = 0;
      return MEMORY[0x21CED2490](v2);
  }

  MEMORY[0x21CED2490](2);
  sub_21A0E626C();
}

uint64_t Placement.hashValue.getter()
{
  v1 = *v0;
  sub_21A0E6DAC();
  switch(v1)
  {
    case 6:
      v2 = 3;
      break;
    case 5:
      v2 = 1;
      break;
    case 4:
      v2 = 0;
      break;
    default:
      MEMORY[0x21CED2490](2);
      sub_21A0E626C();

      return sub_21A0E6DFC();
  }

  MEMORY[0x21CED2490](v2);
  return sub_21A0E6DFC();
}

uint64_t sub_21A06849C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 6:
      return v3 == 6;
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 4) < 3)
  {
    return 0;
  }

  return sub_21A0AA1DC(v2, v3);
}

uint64_t sub_21A068504()
{
  v1 = *v0;
  sub_21A0E6DAC();
  switch(v1)
  {
    case 6:
      v2 = 3;
      break;
    case 5:
      v2 = 1;
      break;
    case 4:
      v2 = 0;
      break;
    default:
      MEMORY[0x21CED2490](2);
      sub_21A0E626C();

      return sub_21A0E6DFC();
  }

  MEMORY[0x21CED2490](v2);
  return sub_21A0E6DFC();
}

NewsLiveActivitiesCore::Placement::DynamicIsland_optional __swiftcall Placement.DynamicIsland.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21A0E6A0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t Placement.DynamicIsland.rawValue.getter()
{
  v1 = 0x6174537472616D73;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000014;
  }

  else
  {
    return v1;
  }
}

void sub_21A068710(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006B63;
  v3 = 0x6174537472616D73;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000015;
    v2 = 0x800000021A1096B0;
  }

  v4 = 0x800000021A109670;
  if (*v1)
  {
    v4 = 0x800000021A109690;
  }

  if (*v1 <= 1u)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_21A068860()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A068938()
{
  sub_21A0E626C();
}

uint64_t sub_21A0689FC()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t Placement.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0E6E6C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_21A0E6C6C();
    v5 = sub_21A0E623C();
    v7 = v6;

    v8 = v5 == 0x657263736B636F6CLL && v7 == 0xEA00000000006E65;
    if (v8 || (sub_21A0E6C5C() & 1) != 0)
    {

      v9 = 4;
    }

    else if (v5 == 0x7962646E617473 && v7 == 0xE700000000000000 || (sub_21A0E6C5C() & 1) != 0)
    {

      v9 = 5;
    }

    else if (v5 == 0x6174737472616D73 && v7 == 0xEA00000000006B63)
    {

      v9 = 6;
    }

    else
    {
      v11 = sub_21A0E6C5C();

      if (v11)
      {
        v9 = 6;
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v13, v14);
        sub_21A068D00();
        sub_21A0E6C8C();
        v9 = v12;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v13);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_21A068D00()
{
  result = qword_27CCDCB28;
  if (!qword_27CCDCB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCB28);
  }

  return result;
}

uint64_t Placement.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0E6E9C();
  if (v2 == 6 || v2 == 5 || v2 == 4)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    sub_21A0E6C9C();
  }

  else
  {
    v6 = v2;
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    sub_21A068EB4();
    sub_21A0E6CBC();
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

unint64_t sub_21A068EB4()
{
  result = qword_27CCDCB30;
  if (!qword_27CCDCB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCB30);
  }

  return result;
}

uint64_t Placement.description.getter()
{
  v1 = *v0;
  switch(v1)
  {
    case 4:
      return 0x657263536B636F6CLL;
    case 6:
      return 0x6174537472616D73;
    case 5:
      return 0x7962646E617473;
  }

  sub_21A0E686C();

  strcpy(v8, "dynamicIsland(");
  HIBYTE(v8[1]) = -18;
  v3 = 0x746361706D6F63;
  v4 = 0xE800000000000000;
  v5 = 0x6465646E61707865;
  if (v1 != 2)
  {
    v5 = 0x6174537472616D73;
    v4 = 0xEA00000000006B63;
  }

  if (v1)
  {
    v3 = 0x6C616D696E696DLL;
  }

  if (v1 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (v1 <= 1)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x21CED1980](v6, v7);

  MEMORY[0x21CED1980](41, 0xE100000000000000);
  return v8[0];
}

uint64_t Placement.DynamicIsland.description.getter()
{
  v1 = 0x746361706D6F63;
  v2 = 0x6465646E61707865;
  if (*v0 != 2)
  {
    v2 = 0x6174537472616D73;
  }

  if (*v0)
  {
    v1 = 0x6C616D696E696DLL;
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

unint64_t sub_21A069134()
{
  result = qword_27CCDCB38;
  if (!qword_27CCDCB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCB38);
  }

  return result;
}

uint64_t sub_21A06918C()
{
  v1 = 0x746361706D6F63;
  v2 = 0x6465646E61707865;
  if (*v0 != 2)
  {
    v2 = 0x6174537472616D73;
  }

  if (*v0)
  {
    v1 = 0x6C616D696E696DLL;
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

uint64_t getEnumTagSinglePayload for Placement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Placement(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_21A069364(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_21A069378(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_21A0693A8()
{
  result = qword_27CCDCB40;
  if (!qword_27CCDCB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCB40);
  }

  return result;
}

uint64_t sub_21A069428@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A0E558C();
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A0E534C();
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCB80);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v31 - v19;
  v21 = a1[9];
  v39[8] = a1[8];
  v39[9] = v21;
  v40[0] = a1[10];
  *(v40 + 11) = *(a1 + 171);
  v22 = a1[5];
  v39[4] = a1[4];
  v39[5] = v22;
  v23 = a1[7];
  v39[6] = a1[6];
  v39[7] = v23;
  v24 = a1[1];
  v39[0] = *a1;
  v39[1] = v24;
  v25 = a1[3];
  v39[2] = a1[2];
  v39[3] = v25;
  *a2 = 0;
  *(a2 + 8) = 1;
  v32 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCB68);
  sub_21A06981C(v39, a2 + *(v26 + 36));
  sub_21A0E533C();
  sub_21A0E557C();
  v27 = sub_21A06AB44(&qword_27CCDCB88, MEMORY[0x277CDF858]);
  v28 = sub_21A06AB44(&qword_27CCDB2A0, MEMORY[0x277CE0068]);
  sub_21A0E522C();
  (*(v34 + 8))(v7, v4);
  (*(v33 + 8))(v11, v8);
  (*(v13 + 16))(v17, v20, v12);
  v35 = v8;
  v36 = v4;
  v37 = v27;
  v38 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = sub_21A0E52CC();
  (*(v13 + 8))(v20, v12);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCB50);
  *(v32 + *(result + 36)) = v29;
  return result;
}

uint64_t sub_21A06981C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v157 = a2;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCB90);
  MEMORY[0x28223BE20](v168, v3);
  v153 = &v142 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCB98);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v156 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v155 = &v142 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v154 = &v142 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v169 = &v142 - v16;
  v167 = sub_21A0E468C();
  v171 = *(v167 - 8);
  MEMORY[0x28223BE20](v167, v17);
  v165 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB9C8);
  v170 = *(v166 - 8);
  v20 = MEMORY[0x28223BE20](v166, v19);
  v163 = &v142 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v162 = &v142 - v23;
  v24 = sub_21A0E49AC();
  MEMORY[0x28223BE20](v24 - 8, v25);
  v161 = &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA480);
  MEMORY[0x28223BE20](v160, v27);
  v151 = &v142 - v28;
  v29 = sub_21A0E561C();
  v31 = MEMORY[0x28223BE20](v29 - 8, v30);
  v142 = &v142 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v149 = &v142 - v34;
  v35 = sub_21A0E573C();
  v145 = *(v35 - 8);
  v146 = v35;
  MEMORY[0x28223BE20](v35, v36);
  v144 = &v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_21A0E58DC();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v40);
  v42 = &v142 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCBA0);
  v44 = *(v43 - 8);
  v147 = v43;
  v148 = v44;
  MEMORY[0x28223BE20](v43, v45);
  v143 = &v142 - v46;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCBA8);
  v48 = MEMORY[0x28223BE20](v150, v47);
  v152 = &v142 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v48, v50);
  v159 = &v142 - v52;
  MEMORY[0x28223BE20](v51, v53);
  v164 = &v142 - v54;
  v55 = *(a1 + 144);
  v199 = *(a1 + 128);
  v200 = v55;
  v201[0] = *(a1 + 160);
  *(v201 + 11) = *(a1 + 171);
  v56 = *(a1 + 80);
  v195 = *(a1 + 64);
  v196 = v56;
  v57 = *(a1 + 112);
  v197 = *(a1 + 96);
  v198 = v57;
  v58 = *(a1 + 16);
  v191 = *a1;
  v192 = v58;
  v59 = *(a1 + 48);
  v193 = *(a1 + 32);
  v194 = v59;
  sub_21A0E592C();
  sub_21A0E57EC();

  (*(v39 + 104))(v42, *MEMORY[0x277CE0A10], v38);
  v60 = sub_21A0E590C();

  (*(v39 + 8))(v42, v38);
  KeyPath = swift_getKeyPath();
  v186 = v199;
  v187 = v200;
  v188[0] = v201[0];
  *(v188 + 11) = *(v201 + 11);
  v182 = v195;
  v183 = v196;
  v184 = v197;
  v185 = v198;
  v178 = v191;
  v179 = v192;
  v180 = v193;
  v181 = v194;
  v62 = *(a1 + 64);
  v63 = *(a1 + 96);
  v203 = *(a1 + 80);
  v204[0] = v63;
  v64 = *(a1 + 64);
  v202[0] = *(a1 + 48);
  v202[1] = v64;
  v175 = v62;
  v176 = v203;
  v177[0] = *(a1 + 96);
  *(v204 + 13) = *(a1 + 109);
  *(v177 + 13) = *(a1 + 109);
  v174 = v202[0];
  sub_219F73218(a1, v189);
  sub_219F72F28(v202, v189);
  v65 = sub_21A0E567C();
  sub_21A0E5E4C();
  sub_21A0E53BC();
  v173[8] = v186;
  v173[9] = v187;
  v173[10] = v188[0];
  v173[11] = v188[1];
  v173[4] = v182;
  v173[5] = v183;
  v173[6] = v184;
  v173[7] = v185;
  v173[0] = v178;
  v173[1] = v179;
  v173[2] = v180;
  v173[3] = v181;
  *&v173[12] = KeyPath;
  *(&v173[12] + 1) = v60;
  *(&v173[16] + 13) = *(v177 + 13);
  v173[15] = v176;
  v173[16] = v177[0];
  v173[13] = v174;
  v173[14] = v175;
  *(&v173[17] + 1) = v65;
  v66 = v144;
  sub_21A0E571C();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCBB0);
  v68 = sub_21A06AE54();
  v69 = v143;
  sub_21A0E5AFC();
  (*(v145 + 8))(v66, v146);
  memcpy(v189, v173, sizeof(v189));
  sub_219F6409C(v189, &qword_27CCDCBB0);
  v70 = *(a1 + 24);
  *&v173[0] = *(a1 + 16);
  *(&v173[0] + 1) = v70;
  sub_219F3F130();

  v71 = sub_21A0E59EC();
  v73 = v72;
  LOBYTE(v66) = v74;
  *&v173[0] = v67;
  *(&v173[0] + 1) = v68;
  swift_getOpaqueTypeConformance2();
  v75 = v147;
  sub_21A0E5ABC();
  sub_219F63A30(v71, v73, v66 & 1);

  (*(v148 + 8))(v69, v75);
  sub_21A0E560C();
  sub_21A0E55FC();
  if (*(a1 + 160))
  {
    sub_21A0E560C();
    sub_21A0E55FC();
    sub_21A0E55EC();
    sub_21A0E55FC();
    sub_21A0E563C();
  }

  else
  {
    sub_21A0E562C();
  }

  v76 = sub_21A0E59DC();
  v78 = v77;
  v80 = v79;
  sub_21A0E55CC();
  sub_219F63A30(v76, v78, v80 & 1);

  sub_21A0E55FC();
  v144 = *(a1 + 120);
  *&v173[0] = v144;
  sub_21A0E499C();
  v143 = sub_219F9DCCC();
  sub_21A0E463C();
  v142 = sub_219F3E490(&qword_27CCDA490, &qword_27CCDA480);
  v81 = sub_21A0E59CC();
  v83 = v82;
  v158 = a1;
  v85 = v84;
  sub_21A0E55CC();
  sub_219F63A30(v81, v83, v85 & 1);

  sub_21A0E55FC();
  *&v173[0] = *(a1 + 136);
  v86 = *&v173[0];
  sub_21A0E499C();
  v148 = sub_21A021038();
  v87 = v163;
  sub_21A0E465C();
  v88 = v165;
  sub_21A0E467C();
  v89 = v166;
  MEMORY[0x21CECFD40](v88, v166);
  v90 = *(v171 + 8);
  v171 += 8;
  v147 = v90;
  v90(v88, v167);
  v91 = *(v170 + 8);
  v170 += 8;
  v146 = v91;
  v91(v87, v89);
  v145 = sub_219F3E490(&qword_27CCDBF18, &qword_27CCDB9C8);
  v92 = sub_21A0E59CC();
  v94 = v93;
  LOBYTE(v89) = v95;
  sub_21A0E55CC();
  sub_219F63A30(v92, v94, v89 & 1);

  sub_21A0E55FC();
  sub_21A0E563C();
  v96 = v159;
  sub_21A0E539C();

  sub_219F5B7D8(v96);
  *&v173[0] = v144;
  sub_21A0E499C();
  sub_21A0E463C();
  v97 = sub_21A0E59CC();
  v99 = v98;
  LOBYTE(v92) = v100;
  sub_21A0E592C();
  sub_21A0E587C();
  sub_21A0E58CC();

  v101 = sub_21A0E599C();
  v103 = v102;
  LOBYTE(v89) = v104;

  sub_219F63A30(v97, v99, v92 & 1);

  *&v173[0] = *(v158 + 128);
  v190 = *&v173[0];

  v105 = sub_21A0E597C();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  sub_219F63A30(v101, v103, v89 & 1);

  sub_21A03DCB8(v173);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA498);
  v112 = v153;
  v113 = &v153[*(v160 + 36)];
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA4A0);
  sub_21A0E53CC();
  *v113 = swift_getKeyPath();
  *v112 = v105;
  *(v112 + 8) = v107;
  *(v112 + 16) = v109 & 1;
  *(v112 + 24) = v111;
  *(v112 + *(v168 + 36)) = sub_21A0E568C();
  v151 = sub_21A06AF0C(&qword_27CCDCC10, &qword_27CCDCB90, &unk_21A0FD6E8, sub_21A06B1A8);
  sub_21A0E5AEC();
  sub_219F6409C(v112, &qword_27CCDCB90);
  v190 = v86;
  sub_21A0E499C();
  v114 = v163;
  sub_21A0E465C();
  v115 = v165;
  sub_21A0E467C();
  v116 = v166;
  MEMORY[0x21CECFD40](v115, v166);
  v147(v115, v167);
  v146(v114, v116);
  v117 = sub_21A0E59CC();
  v119 = v118;
  LOBYTE(v89) = v120;
  sub_21A0E592C();
  sub_21A0E57EC();

  v121 = sub_21A0E599C();
  v123 = v122;
  LOBYTE(v113) = v124;
  v171 = v125;

  sub_219F63A30(v117, v119, v89 & 1);

  v190 = *(v158 + 144);
  v172 = v190;

  v126 = sub_21A0E597C();
  v128 = v127;
  LOBYTE(v119) = v129;
  v131 = v130;
  sub_219F63A30(v121, v123, v113 & 1);

  sub_21A03DCB8(&v190);
  v132 = (v112 + *(v160 + 36));
  sub_21A0E53CC();
  *v132 = swift_getKeyPath();
  *v112 = v126;
  *(v112 + 8) = v128;
  *(v112 + 16) = v119 & 1;
  *(v112 + 24) = v131;
  *(v112 + *(v168 + 36)) = sub_21A0E568C();
  v133 = v154;
  sub_21A0E5AEC();
  sub_219F6409C(v112, &qword_27CCDCB90);
  v134 = v164;
  v135 = v152;
  sub_219F5B868(v164, v152);
  v136 = v169;
  v137 = v155;
  sub_21A06B260(v169, v155);
  v138 = v156;
  sub_21A06B260(v133, v156);
  v139 = v157;
  sub_219F5B868(v135, v157);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCC28);
  sub_21A06B260(v137, v139 + *(v140 + 48));
  sub_21A06B260(v138, v139 + *(v140 + 64));
  sub_219F6409C(v133, &qword_27CCDCB98);
  sub_219F6409C(v136, &qword_27CCDCB98);
  sub_219F5B7D8(v134);
  sub_219F6409C(v138, &qword_27CCDCB98);
  sub_219F6409C(v137, &qword_27CCDCB98);
  return sub_219F5B7D8(v135);
}

uint64_t sub_21A06A930@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21A0E5E3C();
  *(a1 + 8) = v2;
  *(a1 + 16) = 0x4028000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x4000000000000000;
  *(a1 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCB48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBED8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCB50);
  sub_219F3E490(&qword_27CCDBEE8, &qword_27CCDBED8);
  sub_21A06AA60();
  sub_21A03DACC();
  return sub_21A0E5DEC();
}

unint64_t sub_21A06AA60()
{
  result = qword_27CCDCB58;
  if (!qword_27CCDCB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCB50);
    sub_219F3E490(&qword_27CCDCB60, &qword_27CCDCB68);
    sub_219F3E490(&qword_27CCDCB70, &qword_27CCDCB78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCB58);
  }

  return result;
}

uint64_t sub_21A06AB44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A06AB8C()
{
  v1 = sub_21A0E561C();
  MEMORY[0x28223BE20](v1 - 8, v2);
  if (*(v0 + 160))
  {
    v3 = *(v0 + 184);
    sub_21A0E560C();
    sub_21A0E55FC();
    sub_21A0E55EC();
    sub_21A0E55FC();
    sub_219F79C1C();
    if (v3)
    {
      sub_21A0E5CDC();
    }

    else
    {
      sub_21A0E5CBC();
    }

    sub_21A0E55DC();

    sub_21A0E55FC();
    sub_21A0E55EC();
    sub_21A0E55FC();
    sub_21A0E563C();
    return sub_21A0E59DC();
  }

  else
  {
    sub_219F3F130();

    return sub_21A0E59EC();
  }
}

uint64_t sub_21A06AD34@<X0>(uint64_t a1@<X8>)
{
  result = sub_21A06AB8C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_21A06AD8C(uint64_t a1)
{
  v2 = sub_21A0E53EC();
  MEMORY[0x28223BE20](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21A0E547C();
}

unint64_t sub_21A06AE54()
{
  result = qword_27CCDCBB8;
  if (!qword_27CCDCBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCBB0);
    sub_21A06AF0C(&qword_27CCDCBC0, &qword_27CCDCBC8, &unk_21A0FD740, sub_21A06AF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCBB8);
  }

  return result;
}

uint64_t sub_21A06AF0C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_21A06B154();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A06AF90()
{
  result = qword_27CCDCBD0;
  if (!qword_27CCDCBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCBD8);
    sub_21A06B048();
    sub_219F3E490(&qword_27CCDCBF8, &qword_27CCDCC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCBD0);
  }

  return result;
}

unint64_t sub_21A06B048()
{
  result = qword_27CCDCBE0;
  if (!qword_27CCDCBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCBE8);
    sub_21A06B100();
    sub_219F3E490(&qword_27CCDB188, &qword_27CCDB190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCBE0);
  }

  return result;
}

unint64_t sub_21A06B100()
{
  result = qword_27CCDCBF0;
  if (!qword_27CCDCBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCBF0);
  }

  return result;
}

unint64_t sub_21A06B154()
{
  result = qword_27CCDCC08;
  if (!qword_27CCDCC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCC08);
  }

  return result;
}

unint64_t sub_21A06B1A8()
{
  result = qword_27CCDCC18;
  if (!qword_27CCDCC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDA498);
    sub_219F3E490(&qword_27CCDCC20, &qword_27CCDA4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCC18);
  }

  return result;
}

uint64_t sub_21A06B260(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCB98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy165_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 157) = *(a2 + 157);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_21A06B338(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 165))
  {
    return (*a1 + 30);
  }

  v3 = ((4 * ((*(a1 + 92) >> 1) & 7)) | (*(a1 + 92) >> 4) & 3) ^ 0x1F;
  if (v3 >= 0x1D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21A06B38C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 164) = 0;
    *(result + 160) = 0;
    *result = a2 - 30;
    if (a3 >= 0x1E)
    {
      *(result + 165) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 165) = 0;
    }

    if (a2)
    {
      *(result + 72) = 0u;
      *(result + 56) = 0u;
      *(result + 40) = 0u;
      *(result + 24) = 0u;
      *(result + 92) = 2 * ((((-a2 >> 2) & 7) - 8 * a2) & 0x1F);
      *(result + 88) = 0;
    }
  }

  return result;
}

double sub_21A06B454@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CGRectGetMinX(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetWidth(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMinY(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetWidth(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetHeight(v17);
  sub_21A0E5D0C();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double sub_21A06B564@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_21A06B454(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_21A06B5D4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21A0E51CC();
  return sub_21A06B65C;
}

void sub_21A06B65C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_21A06B6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282133768](a1, a2, a3, WitnessTable);
}

uint64_t sub_21A06B724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282133720](a1, a2, a3, WitnessTable);
}

uint64_t sub_21A06B7A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282133738](a1, WitnessTable);
}

__n128 sub_21A06B804@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCC40);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = (v18 - v5);
  v7 = *(v1 + 144);
  v19[8] = *(v1 + 128);
  v20[0] = v7;
  *(v20 + 13) = *(v1 + 157);
  v8 = *(v1 + 80);
  v19[4] = *(v1 + 64);
  v19[5] = v8;
  v9 = *(v1 + 112);
  v19[6] = *(v1 + 96);
  v19[7] = v9;
  v10 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v10;
  v11 = *(v1 + 48);
  v19[2] = *(v1 + 32);
  v19[3] = v11;
  *v6 = sub_21A0E5E3C();
  v6[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCC48);
  sub_21A06B97C(v19, v6 + *(v13 + 44));
  sub_21A0E5E3C();
  sub_21A0E53BC();
  sub_21A06BF9C(v6, a1);
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCC50) + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_21A06B97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCC58);
  v4 = MEMORY[0x28223BE20](v72, v3);
  v71 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v70 = &v63 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v75 = &v63 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v63 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCC60);
  v16 = v15 - 8;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v68 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v63 - v21;
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_21A0E564C();
  v25 = *(*(v24 - 8) + 104);
  v25(v22, v23, v24);
  v67 = objc_opt_self();
  v26 = [v67 systemFillColor];
  *&v22[*(v16 + 60)] = sub_21A0E5C9C();
  v27 = *(v16 + 64);
  v73 = v22;
  *&v22[v27] = 256;
  v25(v14, v23, v24);
  v28 = *(a1 + 40);
  v29 = *(a1 + 72);
  v86[2] = *(a1 + 56);
  *v87 = v29;
  *&v87[13] = *(a1 + 85);
  v86[0] = *(a1 + 24);
  v86[1] = v28;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCC68);
  v31 = &v14[*(result + 52)];
  v32 = *(a1 + 40);
  v33 = *(a1 + 72);
  *(v31 + 2) = *(a1 + 56);
  *(v31 + 3) = v33;
  *(v31 + 61) = *(a1 + 85);
  *v31 = *(a1 + 24);
  *(v31 + 1) = v32;
  v34 = *(result + 56);
  v74 = v14;
  *&v14[v34] = 256;
  if (*a1 < 0.0 || (v35 = *(a1 + 16), v36 = *a1 / v35, 0.0 / v35 > v36))
  {
    __break(1u);
  }

  else
  {
    v37 = result;
    v38 = v72;
    v39 = &v74[*(v72 + 36)];
    *v39 = 0.0 / v35;
    *(v39 + 1) = v36;
    *(v39 + 8) = 256;
    v40 = v75;
    result = (v25)(v75, v23, v24);
    v41 = *(a1 + 157);
    v42 = *(a1 + 144);
    v84 = *(a1 + 128);
    v43 = v84;
    v85[0] = v42;
    *(v85 + 13) = v41;
    v45 = *(a1 + 96);
    v83 = *(a1 + 112);
    v44 = v83;
    v82 = v45;
    v46 = v40 + *(v37 + 52);
    *(v46 + 61) = v41;
    *(v46 + 32) = v43;
    *(v46 + 48) = v42;
    *v46 = v45;
    *(v46 + 16) = v44;
    *(v40 + *(v37 + 56)) = 256;
    v47 = v35 - *(a1 + 8);
    if (v47 <= v35)
    {
      v48 = v47 / v35;
      if (v48 <= v35 / v35)
      {
        v49 = v75;
        v50 = v75 + *(v38 + 36);
        *v50 = v48;
        *(v50 + 8) = v35 / v35;
        *(v50 + 16) = 256;
        sub_219F72F28(v86, &v76);
        sub_219F72F28(&v82, &v76);
        v51 = [v67 tertiaryLabelColor];
        v52 = sub_21A0E5C9C();
        sub_21A0E5E3C();
        sub_21A0E52AC();
        v72 = v76;
        LODWORD(v67) = v77;
        v66 = v78;
        v65 = v79;
        v64 = v80;
        v63 = v81;
        v53 = v68;
        sub_219F45500(v73, v68, &qword_27CCDCC60);
        v54 = v74;
        v55 = v70;
        sub_219F45500(v74, v70, &qword_27CCDCC58);
        v56 = v49;
        v57 = v71;
        sub_219F45500(v56, v71, &qword_27CCDCC58);
        v58 = v69;
        sub_219F45500(v53, v69, &qword_27CCDCC60);
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CCDCC70);
        sub_219F45500(v55, v58 + v59[12], &qword_27CCDCC58);
        sub_219F45500(v57, v58 + v59[16], &qword_27CCDCC58);
        v60 = v58 + v59[20];
        v61 = v72;
        *v60 = v52;
        *(v60 + 8) = v61;
        *(v60 + 16) = v67;
        *(v60 + 24) = v66;
        *(v60 + 32) = v65;
        v62 = v63;
        *(v60 + 40) = v64;
        *(v60 + 48) = v62;

        sub_219F6409C(v75, &qword_27CCDCC58);
        sub_219F6409C(v54, &qword_27CCDCC58);
        sub_219F6409C(v73, &qword_27CCDCC60);

        sub_219F6409C(v57, &qword_27CCDCC58);
        sub_219F6409C(v55, &qword_27CCDCC58);
        return sub_219F6409C(v53, &qword_27CCDCC60);
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A06BF9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCC40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21A06C00C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_21A06C334();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21A06C094(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_21A06C198(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

void sub_21A06C334()
{
  if (!qword_27CCDCCF8)
  {
    v0 = sub_21A0E667C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CCDCCF8);
    }
  }
}

unint64_t sub_21A06C38C()
{
  result = qword_27CCDCD00;
  if (!qword_27CCDCD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCC50);
    sub_21A06C418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCD00);
  }

  return result;
}

unint64_t sub_21A06C418()
{
  result = qword_27CCDCD08;
  if (!qword_27CCDCD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCD08);
  }

  return result;
}

unint64_t sub_21A06C49C()
{
  result = qword_27CCDCD10;
  if (!qword_27CCDCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCD10);
  }

  return result;
}

uint64_t type metadata accessor for NewsWatchContentViewModifier()
{
  result = qword_27CCDCD18;
  if (!qword_27CCDCD18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A06C59C()
{
  sub_219F44398();
  if (v0 <= 0x3F)
  {
    sub_21A0267CC();
    if (v1 <= 0x3F)
    {
      sub_21A06C638();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21A06C638()
{
  if (!qword_27CCD9B18)
  {
    v0 = sub_21A0E525C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CCD9B18);
    }
  }
}

uint64_t sub_21A06C6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = a2;
  v5 = type metadata accessor for ActivityColorEnvironment();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A0E554C();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v49 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCD28);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v43 - v14;
  v16 = sub_21A0E576C();
  v17 = sub_21A0E57AC();
  sub_21A0E57AC();
  if (sub_21A0E57AC() != v16)
  {
    v17 = sub_21A0E57AC();
  }

  sub_21A0E51EC();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCD30);
  (*(*(v26 - 8) + 16))(v15, a1, v26);
  v27 = &v15[*(v12 + 36)];
  *v27 = v17;
  *(v27 + 1) = v19;
  *(v27 + 2) = v21;
  *(v27 + 3) = v23;
  *(v27 + 4) = v25;
  v27[40] = 0;
  v28 = v3[1];
  v73 = *v3;
  v74 = v28;
  v75 = v3[2];
  v30 = *(v3 + 6);
  v29 = *(v3 + 7);
  LODWORD(v27) = ~*(v3 + 12);
  v31 = *(v3 + 8);
  v72 = *(v3 + 72);
  if ((v27 & 0xFFFFFFFE) != 0 || (v31 & 0xFE00000000) != 0x200000000)
  {
    v48 = v12;
    v47 = type metadata accessor for NewsWatchContentViewModifier();
    v32 = v3 + *(v47 + 24);
    v33 = *v32;
    v34 = *(v32 + 8);
    v36 = *(v32 + 16);
    v35 = *(v32 + 24);
    v37 = *(v32 + 32);
    if (*(v32 + 40) == 1)
    {
      *&v69 = *v32;
      *(&v69 + 1) = v34;
      *&v70 = v36;
      *(&v70 + 1) = v35;
      v71 = v37;
      *&v61 = v33;
      *(&v61 + 1) = v34;
      *&v62 = v36;
      *(&v62 + 1) = v35;
      *&v63 = v37;
      BYTE8(v63) = 1;
      sub_219F63900(&v61, &v57);
    }

    else
    {
      v43 = *(v32 + 24);
      v44 = v37;

      sub_21A0E66AC();
      v45 = v29;
      v38 = sub_21A0E575C();
      v46 = v8;
      v39 = v38;
      sub_21A0E512C();

      v8 = v46;
      v40 = v49;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v33, v34, v36, v43, v44, 0);
      v41 = v40;
      v29 = v45;
      (*(v50 + 8))(v41, v51);
    }

    v57 = v69;
    v58 = v70;
    v76 = v73;
    v77 = v74;
    v78 = v75;
    v79 = v30;
    v80 = v29;
    v81 = v31;
    v82 = v72;
    *&v59[0] = v71;
    *(&v60 + 1) = MEMORY[0x277D84F90];
    if (qword_27CCD9198 != -1)
    {
      swift_once();
    }

    *(v59 + 8) = v73;
    *(&v59[1] + 8) = v74;
    *(&v59[2] + 8) = v75;
    *(&v59[3] + 1) = v30;
    *&v59[4] = v29;
    DWORD2(v59[4]) = v31;
    BYTE12(v59[4]) = BYTE4(v31);
    *&v60 = qword_27CCDBDB0;

    sub_219F8B64C(&v57);
    v55 = *(&v59[2] + 8);
    v56[0] = *(&v59[3] + 8);
    *(v56 + 13) = *(&v59[4] + 5);
    v53 = *(v59 + 8);
    v54 = *(&v59[1] + 8);
    v65 = v59[2];
    v66 = v59[3];
    v67 = v59[4];
    v68 = v60;
    v61 = v57;
    v62 = v58;
    v63 = v59[0];
    v64 = v59[1];
    sub_219F6409C(&v61, &qword_27CCDBB28);
    sub_21A003E48(v8);
    sub_219F89010(v8);
    sub_219F894D4(v8);
  }

  sub_21A06CB90();
  sub_21A0E59FC();

  return sub_219F6409C(v15, &qword_27CCDCD28);
}

unint64_t sub_21A06CB90()
{
  result = qword_27CCDCD38;
  if (!qword_27CCDCD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCD28);
    sub_21A06CC1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCD38);
  }

  return result;
}

unint64_t sub_21A06CC1C()
{
  result = qword_27CCDCD40;
  if (!qword_27CCDCD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCD30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCD40);
  }

  return result;
}

uint64_t NewsLiveActivityReconciliationResult.init(startedActivities:endedActivities:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t NewsLiveActivityReconciliationResult.startedActivities.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t NewsLiveActivityReconciliationResult.endedActivities.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t static NewsLiveActivityReconciliationResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_219FAAFB4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_219FAAFB4(v2, v3);
}

uint64_t NewsLiveActivityReconciliationResult.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_219F917EC(a1, v3);

  return sub_219F917EC(a1, v4);
}

uint64_t NewsLiveActivityReconciliationResult.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21A0E6DAC();
  sub_219F917EC(v4, v1);
  sub_219F917EC(v4, v2);
  return sub_21A0E6DFC();
}

uint64_t sub_21A06CE5C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_219FAAFB4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_219FAAFB4(v2, v3);
}

uint64_t sub_21A06CEB8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21A0E6DAC();
  sub_219F917EC(v4, v1);
  sub_219F917EC(v4, v2);
  return sub_21A0E6DFC();
}

uint64_t sub_21A06CF0C(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_219F917EC(a1, v3);

  return sub_219F917EC(a1, v4);
}

uint64_t sub_21A06CF4C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21A0E6DAC();
  sub_219F917EC(v4, v1);
  sub_219F917EC(v4, v2);
  return sub_21A0E6DFC();
}

uint64_t NewsLiveActivityReconciliationResult.customMirror.getter()
{
  v1 = sub_21A0E6E2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v14 - v8;
  v11 = *v0;
  v10 = v0[1];
  v14[2] = v11;
  v14[3] = v10;
  v14[1] = MEMORY[0x277D84F90];
  v12 = sub_21A0E6E1C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758);
  sub_219FC293C();
  return sub_21A0E6E3C();
}

uint64_t sub_21A06D16C()
{
  v1 = sub_21A0E6E2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v14 - v8;
  v11 = *v0;
  v10 = v0[1];
  v14[2] = v11;
  v14[3] = v10;
  v14[1] = MEMORY[0x277D84F90];
  v12 = sub_21A0E6E1C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758);
  sub_219FC293C();
  return sub_21A0E6E3C();
}

uint64_t NewsLiveActivityReconciliationResult.description.getter()
{
  sub_21A0E686C();

  sub_219F4DBDC();
  v0 = sub_21A0E65EC();
  MEMORY[0x21CED1980](v0);

  MEMORY[0x21CED1980](0x3D6465646E45202CLL, 0xE800000000000000);
  v1 = sub_21A0E65EC();
  MEMORY[0x21CED1980](v1);

  return 0x3D64657472617453;
}

unint64_t sub_21A06D428()
{
  result = qword_27CCDCD48;
  if (!qword_27CCDCD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCD48);
  }

  return result;
}

uint64_t dispatch thunk of NewsLiveActivityManagerObserver.liveActivityManager(_:willSubscribeToActivity:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_219F49B18;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of NewsLiveActivityManagerObserver.liveActivityManager(_:didScheduleActivity:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_219F4996C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of NewsLiveActivityManagerObserver.liveActivityManager(_:didSubscribeToActivity:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_219F49B18;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of NewsLiveActivityManagerObserver.liveActivityManager(_:failedSubscribingToActivity:source:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 32) + **(a6 + 32));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_219F49B18;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of NewsLiveActivityManagerObserver.liveActivityManager(_:willUnsubscribeFromActivity:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_219F49B18;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of NewsLiveActivityManagerObserver.liveActivityManager(_:didUnsubscribeFromActivity:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 48) + **(a5 + 48));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_219F49B18;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of NewsLiveActivityManagerObserver.liveActivityManager(_:didReconcileLiveActivities:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 56) + **(a5 + 56));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_219F49B18;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of NewsLiveActivityManagerObserver.liveActivityManager(_:didUpdateLiveActivity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_219F49B18;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_21A06DE74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21A06DEBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21A06DF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA0D0);
  MEMORY[0x28223BE20]();
  v10 = v24 - v9;
  sub_21A06E64C(a3, v24 - v9);
  v11 = sub_21A0E652C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_219F3FE68(v10);
  }

  else
  {
    sub_21A0E651C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21A0E647C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21A0E624C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_219F3FE68(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_219F3FE68(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_21A06E1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA0D0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v13 - v8;
  v10 = sub_21A0E652C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;

  sub_21A06DF08(0, 0, v9, &unk_21A0FE058, v11);
}

uint64_t sub_21A06E2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_21A06E314, 0, 0);
}

uint64_t sub_21A06E314()
{
  v1 = v0[2];
  os_unfair_lock_lock((v1 + 24));
  sub_21A06E454((v1 + 16));
  v2 = v0[3];
  os_unfair_lock_unlock((v1 + 24));
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_219FB0158;

  return v5();
}

void sub_21A06E454(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27CCD90E0 != -1)
  {
    swift_once();
  }

  v2 = sub_21A0E516C();
  __swift_project_value_buffer(v2, qword_27CCFE5D0);
  v3 = sub_21A0E514C();
  v4 = sub_21A0E66BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_219F39000, v3, v4, "Notified background task is expiring; calling into expiration handler. ID=%ld", v5, 0xCu);
    MEMORY[0x21CED2D30](v5, -1, -1);
  }
}

uint64_t sub_21A06E54C()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_21A06E584(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_219F49B18;

  return sub_21A06E2F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21A06E64C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA0D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A06E6BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_219F4996C;

  return sub_219F413E4(a1, v4);
}

uint64_t sub_21A06E774()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock((v1 + 24));
  if (*(v1 + 16))
  {
    sub_21A0E659C();
  }

  os_unfair_lock_unlock((v1 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_21A06E808()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21A06E918()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_21A06F190;
  }

  else
  {
    v2 = sub_21A06EA2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A06EA50()
{
  v1 = *(v0 + 408);
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + 16);
      os_unfair_lock_lock(v3 + 14);
      sub_219F45500(&v3[4], v0 + 16, &qword_27CCDA410);
      os_unfair_lock_unlock(v3 + 14);
      if (*(v0 + 40))
      {
        sub_219F3FDF4(v0 + 16, v0 + 56);
        sub_219F6409C(v0 + 16, &qword_27CCDA410);
        __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
        sub_219F4585C();

        __swift_destroy_boxed_opaque_existential_1(v0 + 56);
      }

      else
      {

        sub_219F6409C(v0 + 16, &qword_27CCDA410);
      }
    }

    v6 = *(v0 + 328);
    v7 = *(v0 + 336);
    v8 = sub_21A0E652C();
    v9 = *(v8 - 8);
    v35 = *(v9 + 56);
    v35(v7, 1, 1, v8);
    v10 = swift_allocObject();
    swift_weakLoadStrong();
    swift_weakInit();

    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v1;
    v11[5] = v10;
    sub_219F45500(v7, v6, &qword_27CCDA0D0);
    v34 = *(v9 + 48);
    LODWORD(v7) = v34(v6, 1, v8);

    v12 = *(v0 + 328);
    v36 = v1;
    if (v7 == 1)
    {
      sub_219F6409C(v12, &qword_27CCDA0D0);
      v13 = 0;
      v14 = 0;
    }

    else
    {
      sub_21A0E651C();
      (*(v9 + 8))(v12, v8);
      if (v11[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v13 = sub_21A0E647C();
        v14 = v15;
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }
    }

    v37 = **(v0 + 296);
    v16 = swift_allocObject();
    *(v16 + 16) = &unk_21A0FE110;
    *(v16 + 24) = v11;

    if (v14 | v13)
    {
      v17 = v0 + 96;
      *(v0 + 96) = 0;
      *(v0 + 104) = 0;
      *(v0 + 112) = v13;
      *(v0 + 120) = v14;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(v0 + 336);
    v19 = *(v0 + 312);
    v20 = *(v0 + 320);
    *(v0 + 232) = 1;
    *(v0 + 240) = v17;
    *(v0 + 248) = v37;
    swift_task_create();

    sub_219F6409C(v18, &qword_27CCDA0D0);

    v35(v20, 1, 1, v8);
    v21 = swift_allocObject();
    swift_weakLoadStrong();
    swift_weakInit();

    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v36;
    v22[5] = v21;
    sub_219F45500(v20, v19, &qword_27CCDA0D0);
    v23 = v34(v19, 1, v8);

    v24 = *(v0 + 312);
    if (v23 == 1)
    {
      sub_219F6409C(*(v0 + 312), &qword_27CCDA0D0);
      v25 = 0;
      v26 = 0;
    }

    else
    {
      sub_21A0E651C();
      (*(v9 + 8))(v24, v8);
      if (v22[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v25 = sub_21A0E647C();
        v26 = v27;
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }
    }

    v28 = swift_allocObject();
    *(v28 + 16) = &unk_21A0FE130;
    *(v28 + 24) = v22;

    if (v26 | v25)
    {
      v29 = v0 + 128;
      *(v0 + 128) = 0;
      *(v0 + 136) = 0;
      *(v0 + 144) = v25;
      *(v0 + 152) = v26;
    }

    else
    {
      v29 = 0;
    }

    v30 = *(v0 + 320);
    *(v0 + 256) = 1;
    *(v0 + 264) = v29;
    *(v0 + 272) = v37;
    swift_task_create();

    sub_219F6409C(v30, &qword_27CCDA0D0);

    v31 = sub_219F3E490(&qword_280C89478, &qword_27CCDB458);
    v32 = swift_task_alloc();
    *(v0 + 392) = v32;
    *v32 = v0;
    v32[1] = sub_21A06E918;
    v33 = *(v0 + 368);

    return MEMORY[0x282200308](v0 + 280, v33, v31);
  }

  else
  {
    (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_21A06F190()
{
  *(v0 + 288) = *(v0 + 400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E48);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_21A06F21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB460);
  v4[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB468);
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB470);
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A06F388, 0, 0);
}

uint64_t sub_21A06F388()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  sub_21A0E4B8C();
  sub_21A0E4B0C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = sub_219F3E490(&qword_27CCDB478, &qword_27CCDB470);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_21A06F4C4;
  v6 = v0[22];
  v7 = v0[18];

  return MEMORY[0x282200308](v7, v6, v4);
}

uint64_t sub_21A06F4C4()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_21A070E50;
  }

  else
  {
    v2 = sub_21A06F5D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A06F5F4()
{
  v1 = v0[18];
  v2 = sub_21A0E4C8C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + 16);
      os_unfair_lock_lock(v6 + 14);
      sub_219F45500(&v6[4], (v0 + 2), &qword_27CCDA410);
      os_unfair_lock_unlock(v6 + 14);
      if (v0[5])
      {
        sub_219F3FDF4((v0 + 2), (v0 + 7));
        sub_219F6409C((v0 + 2), &qword_27CCDA410);
        __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
        sub_219F4585C();

        __swift_destroy_boxed_opaque_existential_1((v0 + 7));
      }

      else
      {

        sub_219F6409C((v0 + 2), &qword_27CCDA410);
      }
    }

    sub_219F6409C(v0[18], &qword_27CCDB460);
    v7 = sub_219F3E490(&qword_27CCDB478, &qword_27CCDB470);
    v8 = swift_task_alloc();
    v0[25] = v8;
    *v8 = v0;
    v8[1] = sub_21A06F4C4;
    v9 = v0[22];
    v10 = v0[18];

    return MEMORY[0x282200308](v10, v9, v7);
  }
}

uint64_t sub_21A06F854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB400);
  v4[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB480);
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB488);
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A06F9C0, 0, 0);
}

uint64_t sub_21A06F9C0()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  sub_21A0E4B6C();
  sub_21A0E4B5C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = sub_219F3E490(&qword_27CCDB490, &qword_27CCDB488);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_21A06FAFC;
  v6 = v0[22];
  v7 = v0[18];

  return MEMORY[0x282200308](v7, v6, v4);
}

uint64_t sub_21A06FAFC()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_21A06FE98;
  }

  else
  {
    v2 = sub_21A06FC10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A06FC2C()
{
  v1 = v0[18];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB408);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + 16);
      os_unfair_lock_lock(v6 + 14);
      sub_219F45500(&v6[4], (v0 + 2), &qword_27CCDA410);
      os_unfair_lock_unlock(v6 + 14);
      if (v0[5])
      {
        sub_219F3FDF4((v0 + 2), (v0 + 7));
        sub_219F6409C((v0 + 2), &qword_27CCDA410);
        __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
        sub_219F4585C();

        __swift_destroy_boxed_opaque_existential_1((v0 + 7));
      }

      else
      {

        sub_219F6409C((v0 + 2), &qword_27CCDA410);
      }
    }

    sub_219F6409C(v0[18], &qword_27CCDB400);
    v7 = sub_219F3E490(&qword_27CCDB490, &qword_27CCDB488);
    v8 = swift_task_alloc();
    v0[25] = v8;
    *v8 = v0;
    v8[1] = sub_21A06FAFC;
    v9 = v0[22];
    v10 = v0[18];

    return MEMORY[0x282200308](v10, v9, v7);
  }
}

uint64_t sub_21A06FE98()
{
  *(v0 + 120) = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E48);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_21A06FF24(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCD60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A070A90();
  sub_21A0E6EAC();
  v16 = 0;
  sub_21A0E6B7C();
  if (!v2)
  {
    v15 = *(v3 + 16);
    v14 = 1;
    sub_21A070AE4();
    sub_21A0E6BBC();
    type metadata accessor for ActivityDiagnostic();
    v13 = 2;
    type metadata accessor for NewsLiveActivityAttributes(0);
    sub_219F476B8(&qword_280C89F58, type metadata accessor for NewsLiveActivityAttributes);
    sub_21A0E6BBC();
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB408);
    sub_219F3E490(&qword_27CCDCD78, &qword_27CCDB408);
    sub_21A0E6BBC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21A0701AC()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A070288()
{
  sub_21A0E626C();
}

uint64_t sub_21A070350()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A070428@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A070B38();
  *a1 = result;
  return result;
}

void sub_21A070458(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x657669746361;
  v5 = 0xE900000000000064;
  v6 = 0x657373696D736964;
  v7 = 0xE500000000000000;
  v8 = 0x656C617473;
  if (v2 != 3)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6465646E65;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_21A070540()
{
  v1 = 25705;
  v2 = 0x7475626972747461;
  if (*v0 != 2)
  {
    v2 = 0x746E65746E6F63;
  }

  if (*v0)
  {
    v1 = 0x6574617473;
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

uint64_t sub_21A0705B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A070CF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A0705D8(uint64_t a1)
{
  v2 = sub_21A070A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A070614(uint64_t a1)
{
  v2 = sub_21A070A90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A070668(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_219F52D74;

  return v4();
}

uint64_t sub_21A070750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDiagnostic();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A0707B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_219F49B18;

  return sub_21A06F21C(v2, v3, v5, v4);
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21A0708A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_219F49B18;

  return sub_21A06F854(v2, v3, v5, v4);
}

uint64_t sub_21A070954()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_219F4996C;

  return sub_21A070668(v2);
}

unint64_t sub_21A070A3C()
{
  result = qword_27CCDCD58;
  if (!qword_27CCDCD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCD58);
  }

  return result;
}

unint64_t sub_21A070A90()
{
  result = qword_27CCDCD68;
  if (!qword_27CCDCD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCD68);
  }

  return result;
}

unint64_t sub_21A070AE4()
{
  result = qword_27CCDCD70;
  if (!qword_27CCDCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCD70);
  }

  return result;
}

uint64_t sub_21A070B38()
{
  v0 = sub_21A0E6A0C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_21A070B84()
{
  result = qword_27CCDCD80;
  if (!qword_27CCDCD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCD80);
  }

  return result;
}

unint64_t sub_21A070BEC()
{
  result = qword_27CCDCD88;
  if (!qword_27CCDCD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCD88);
  }

  return result;
}

unint64_t sub_21A070C44()
{
  result = qword_27CCDCD90;
  if (!qword_27CCDCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCD90);
  }

  return result;
}

unint64_t sub_21A070C9C()
{
  result = qword_27CCDCD98;
  if (!qword_27CCDCD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCD98);
  }

  return result;
}

uint64_t sub_21A070CF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_21A0E6C5C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

NewsLiveActivitiesCore::ColorScheme_optional __swiftcall ColorScheme.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21A0E6A0C();

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

uint64_t ColorScheme.rawValue.getter()
{
  if (*v0)
  {
    return 1802658148;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_21A070EE8@<X0>(char *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

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

void sub_21A070F48(uint64_t *a1@<X8>)
{
  v2 = 1802658148;
  if (!*v1)
  {
    v2 = 0x746867696CLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21A07102C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1802658148;
  }

  else
  {
    v3 = 0x746867696CLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1802658148;
  }

  else
  {
    v5 = 0x746867696CLL;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21A0E6C5C();
  }

  return v8 & 1;
}

unint64_t sub_21A0710CC()
{
  result = qword_27CCDCDA0;
  if (!qword_27CCDCDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCDA0);
  }

  return result;
}

uint64_t sub_21A071120()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A071198()
{
  sub_21A0E626C();
}

uint64_t sub_21A0711FC()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

unint64_t sub_21A071280()
{
  result = qword_27CCDCDA8;
  if (!qword_27CCDCDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCDA8);
  }

  return result;
}

uint64_t sub_21A0712D4(uint64_t a1, void *a2)
{
  v3[12] = a1;
  v3[13] = v2;
  v4 = a2[1];
  v3[14] = *a2;
  v3[15] = v4;
  return MEMORY[0x2822009F8](sub_21A0712FC, 0, 0);
}

uint64_t sub_21A0712FC()
{
  v17 = v0[14];
  v18 = v0[15];
  v2 = v0[12];
  v1 = v0[13];
  sub_219F3FDF4(v1, (v0 + 2));
  v16 = *(v1 + 40);
  v3 = v0[5];
  v4 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v3);
  v5 = *(v3 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v3);
  v7 = *v6;
  v0[10] = &type metadata for NewsCoreNetworkingType;
  v0[11] = &off_282B24B18;
  v0[7] = v7;
  v8 = type metadata accessor for DebugServerActivityContentService();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), &type metadata for NewsCoreNetworkingType);
  v11 = qword_282B24A78;
  v12 = swift_task_alloc();
  (*(v11 + 16))(v12, v10, &type metadata for NewsCoreNetworkingType);
  v13 = *v12;
  v9[5] = &type metadata for NewsCoreNetworkingType;
  v9[2] = v13;
  v9[6] = &off_282B24B18;
  v9[7] = v16;
  v9[8] = v17;
  v9[9] = v18;

  __swift_destroy_boxed_opaque_existential_1((v0 + 7));

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v2[3] = v8;
  v2[4] = &off_282B22E18;
  *v2 = v9;
  v14 = v0[1];

  return v14();
}

uint64_t sub_21A07152C(uint64_t a1, char a2)
{
  *(v3 + 49) = a2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v2;
  type metadata accessor for NewsLiveActivityAttributes(0);
  *(v3 + 120) = swift_task_alloc();
  v4 = sub_21A0E46CC();
  *(v3 + 128) = v4;
  *(v3 + 136) = *(v4 - 8);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA100);
  *(v3 + 160) = swift_task_alloc();
  v5 = sub_21A0E481C();
  *(v3 + 168) = v5;
  *(v3 + 176) = *(v5 - 8);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A0716C0, 0, 0);
}

uint64_t sub_21A0716C0()
{
  sub_21A0E50AC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *(v0 + 96) = **(v0 + 160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E48);
    swift_willThrowTypedImpl();

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 49);
    (*(*(v0 + 176) + 32))(*(v0 + 184), *(v0 + 160), *(v0 + 168));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA678);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_21A0FBC80;
    v5 = *&aMetadataelecti[8 * v3];
    v6 = *(v0 + 184);
    v7 = *(v0 + 176);
    v16 = *(v0 + 168);
    v8 = *(v0 + 136);
    v9 = *(v0 + 144);
    v10 = *(v0 + 128);
    v11 = *(v0 + 112);
    *(v4 + 32) = v5;
    *(v4 + 40) = 0xE800000000000000;
    v12 = *(v11 + 72);
    *(v4 + 48) = *(v11 + 64);
    *(v4 + 56) = v12;
    (*(v8 + 104))(v9, *MEMORY[0x277CC91D8], v10);
    sub_219F3F130();

    sub_21A0E47EC();

    (*(v8 + 8))(v9, v10);
    v13 = *(v7 + 8);
    *(v0 + 200) = v13;
    *(v0 + 208) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v6, v16);
    v14 = swift_task_alloc();
    *(v0 + 216) = v14;
    *v14 = v0;
    v14[1] = sub_21A071964;
    v15 = *(v0 + 192);

    return sub_21A0728A0(v0 + 16, v15);
  }
}

uint64_t sub_21A071964()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_21A071C2C;
  }

  else
  {
    v2 = sub_21A071A78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A071A78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 224);
  v3 = *(v0 + 192);
  v4 = *(v0 + 120);
  v5 = *(v0 + 24);
  sub_21A0749C4(v0 + 16, v0 + 56);
  sub_21A0732AC(v1, v5, v3, v4);
  v6 = *(v0 + 200);
  if (v2)
  {
    (v6)(*(v0 + 192), *(v0 + 168));
    sub_21A074A20(v0 + 16);
    sub_21A074A20(v0 + 16);
  }

  else
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 104);
    v6();
    sub_21A074A20(v0 + 16);
    sub_21A074A74(v8, v9, type metadata accessor for NewsLiveActivityAttributes);
    sub_21A074A20(v0 + 16);
    v10 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCDC0) + 28);
    v11 = *(v0 + 48);
    *v10 = *(v0 + 32);
    *(v10 + 16) = v11;
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_21A071C2C()
{
  (*(v0 + 200))(*(v0 + 192), *(v0 + 168));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A071CDC(uint64_t a1, char a2)
{
  *(v3 + 49) = a2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v2;
  type metadata accessor for NewsLiveActivityPushPayload(0);
  *(v3 + 120) = swift_task_alloc();
  v4 = sub_21A0E46CC();
  *(v3 + 128) = v4;
  *(v3 + 136) = *(v4 - 8);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA100);
  *(v3 + 160) = swift_task_alloc();
  v5 = sub_21A0E481C();
  *(v3 + 168) = v5;
  *(v3 + 176) = *(v5 - 8);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A071E70, 0, 0);
}

uint64_t sub_21A071E70()
{
  sub_21A0E50AC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *(v0 + 96) = **(v0 + 160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E48);
    swift_willThrowTypedImpl();

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 49);
    (*(*(v0 + 176) + 32))(*(v0 + 184), *(v0 + 160), *(v0 + 168));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA678);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_21A0FBC80;
    v5 = *&aMetadataelecti[8 * v3];
    v6 = *(v0 + 184);
    v7 = *(v0 + 176);
    v16 = *(v0 + 168);
    v8 = *(v0 + 136);
    v9 = *(v0 + 144);
    v10 = *(v0 + 128);
    v11 = *(v0 + 112);
    *(v4 + 32) = v5;
    *(v4 + 40) = 0xE800000000000000;
    v12 = *(v11 + 72);
    *(v4 + 48) = *(v11 + 64);
    *(v4 + 56) = v12;
    (*(v8 + 104))(v9, *MEMORY[0x277CC91D8], v10);
    sub_219F3F130();

    sub_21A0E47EC();

    (*(v8 + 8))(v9, v10);
    v13 = *(v7 + 8);
    *(v0 + 200) = v13;
    *(v0 + 208) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v6, v16);
    v14 = swift_task_alloc();
    *(v0 + 216) = v14;
    *v14 = v0;
    v14[1] = sub_21A072114;
    v15 = *(v0 + 192);

    return sub_21A0728A0(v0 + 16, v15);
  }
}

uint64_t sub_21A072114()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_21A074BDC;
  }

  else
  {
    v2 = sub_21A072228;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A072228()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 224);
  v3 = *(v0 + 192);
  v4 = *(v0 + 120);
  v5 = *(v0 + 24);
  sub_21A0749C4(v0 + 16, v0 + 56);
  sub_21A073A10(v1, v5, v3, v4);
  v6 = *(v0 + 200);
  if (v2)
  {
    (v6)(*(v0 + 192), *(v0 + 168));
    sub_21A074A20(v0 + 16);
    sub_21A074A20(v0 + 16);
  }

  else
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 104);
    v6();
    sub_21A074A20(v0 + 16);
    sub_21A074A74(v8, v9, type metadata accessor for NewsLiveActivityPushPayload);
    sub_21A074A20(v0 + 16);
    v10 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCDB0) + 28);
    v11 = *(v0 + 48);
    *v10 = *(v0 + 32);
    *(v10 + 16) = v11;
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_21A0723DC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for NewsLiveActivityPushPayload(0);
  v3[5] = swift_task_alloc();
  v3[6] = type metadata accessor for NewsLiveActivityAttributes.ActivityType(0);
  v3[7] = swift_task_alloc();
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCDB0);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A0724DC, 0, 0);
}

uint64_t sub_21A0724DC()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = type metadata accessor for NewsLiveActivityAttributes(0);
  sub_21A07495C(v2 + *(v3 + 28), v1, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_21A0748FC(v1, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_21A0725E8;
  v6 = v0[9];
  if (EnumCaseMultiPayload < 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  return sub_21A071CDC(v6, v7);
}

uint64_t sub_21A0725E8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_21A072824;
  }

  else
  {
    v2 = sub_21A0726FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A0726FC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];
  v4 = v0[2];
  sub_21A07495C(v1, v3, type metadata accessor for NewsLiveActivityPushPayload);
  sub_21A074A74(v3, v4, type metadata accessor for NewsLiveActivityContent);
  v5 = v1 + *(v2 + 28);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  sub_219F6409C(v1, &qword_27CCDCDB0);
  v9 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC970) + 28);
  *v9 = v6;
  *(v9 + 8) = v7;
  *(v9 + 16) = v8;

  v10 = v0[1];

  return v10();
}

uint64_t sub_21A072824()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A0728A0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = type metadata accessor for NetworkRequest();
  v3[11] = swift_task_alloc();
  v4 = sub_21A0E481C();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A0729AC, 0, 0);
}

uint64_t sub_21A0729AC()
{
  v33 = v0;
  if (qword_27CCD90F0 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[8];
  v5 = sub_21A0E516C();
  v0[17] = __swift_project_value_buffer(v5, qword_27CCFE5E8);
  v6 = *(v3 + 16);
  v0[18] = v6;
  v0[19] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_21A0E514C();
  v8 = sub_21A0E66BC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[16];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    buf = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *buf = 136315138;
    sub_21A074ADC(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
    v13 = v6;
    v14 = sub_21A0E6BFC();
    v16 = v15;
    v29 = v8;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = v14;
    v6 = v13;
    v19 = sub_219F50144(v18, v16, &v32);

    *(buf + 4) = v19;
    _os_log_impl(&dword_219F39000, v7, v29, "Requesting contents of %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x21CED2D30](v31, -1, -1);
    MEMORY[0x21CED2D30](buf, -1, -1);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[20] = v17;
  v20 = v0[11];
  v21 = v0[12];
  v22 = v0[10];
  v23 = v0[8];
  v24 = __swift_project_boxed_opaque_existential_1((v0[9] + 16), *(v0[9] + 40));
  v6(v20, v23, v21);
  *(v20 + *(v22 + 20)) = 0;
  *(v20 + *(v22 + 24)) = xmmword_21A0FE4D0;
  v25 = *v24;
  v26 = swift_task_alloc();
  v0[21] = v26;
  *v26 = v0;
  v26[1] = sub_21A072CA0;
  v27 = v0[11];

  return sub_21A0BECC0((v0 + 2), v27, v25);
}

uint64_t sub_21A072CA0()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  sub_21A0748FC(*(v2 + 88), type metadata accessor for NetworkRequest);
  if (v0)
  {
    v3 = sub_21A07300C;
  }

  else
  {
    v3 = sub_21A072DE8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A072DE8()
{
  v20 = v0;
  (*(v0 + 144))(*(v0 + 120), *(v0 + 64), *(v0 + 96));
  v1 = sub_21A0E514C();
  v2 = sub_21A0E66BC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 160);
  v5 = *(v0 + 120);
  v6 = *(v0 + 96);
  if (v3)
  {
    v18 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    sub_21A074ADC(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
    v9 = sub_21A0E6BFC();
    v11 = v10;
    v18(v5, v6);
    v12 = sub_219F50144(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_219F39000, v1, v2, "Successfully loaded contents of %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x21CED2D30](v8, -1, -1);
    MEMORY[0x21CED2D30](v7, -1, -1);
  }

  else
  {

    v4(v5, v6);
  }

  v13 = *(v0 + 56);
  v14 = *(v0 + 16);
  v15 = *(v0 + 32);
  *(v13 + 32) = *(v0 + 48);
  *v13 = v14;
  *(v13 + 16) = v15;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_21A07300C()
{
  v24 = v0;
  v1 = *(v0 + 176);
  (*(v0 + 144))(*(v0 + 112), *(v0 + 64), *(v0 + 96));
  v2 = v1;
  v3 = sub_21A0E514C();
  v4 = sub_21A0E669C();

  if (os_log_type_enabled(v3, v4))
  {
    v21 = *(v0 + 160);
    v22 = *(v0 + 176);
    v5 = *(v0 + 112);
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v7 = 136315394;
    sub_21A074ADC(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
    v10 = sub_21A0E6BFC();
    v12 = v11;
    v21(v5, v6);
    v13 = sub_219F50144(v10, v12, &v23);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    v14 = v22;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_219F39000, v3, v4, "Failed to load contents of %s. Error=%@", v7, 0x16u);
    sub_219F6409C(v8, &qword_27CCD9E28);
    MEMORY[0x21CED2D30](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 160);
    v17 = *(v0 + 112);
    v18 = *(v0 + 96);

    v16(v17, v18);
  }

  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_21A0732AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a2;
  v68 = a4;
  v69 = a1;
  v5 = sub_21A0E481C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v61[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v61[-v13];
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v61[-v16];
  if (qword_27CCD90F0 != -1)
  {
    swift_once();
  }

  v18 = sub_21A0E516C();
  v19 = __swift_project_value_buffer(v18, qword_27CCFE5E8);
  v65 = *(v6 + 16);
  v66 = v6 + 16;
  v65(v17, a3, v5);
  v67 = v19;
  v20 = sub_21A0E514C();
  v21 = sub_21A0E66BC();
  v22 = os_log_type_enabled(v20, v21);
  v72 = v6;
  if (v22)
  {
    v23 = v5;
    v24 = v6;
    v25 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v73 = v63;
    *v25 = 136315394;
    sub_21A074ADC(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
    v62 = v21;
    v26 = sub_21A0E6BFC();
    v64 = a3;
    v27 = v14;
    v28 = v10;
    v30 = v29;
    v31 = v24;
    v5 = v23;
    v32 = *(v31 + 8);
    v32(v17, v5);
    v33 = sub_219F50144(v26, v30, &v73);
    v10 = v28;
    v14 = v27;
    a3 = v64;

    *(v25 + 4) = v33;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_219F50144(0xD00000000000001ALL, 0x800000021A10AE00, &v73);
    _os_log_impl(&dword_219F39000, v20, v62, "Attempting to decode response from %s into %s", v25, 0x16u);
    v34 = v63;
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v34, -1, -1);
    MEMORY[0x21CED2D30](v25, -1, -1);
  }

  else
  {

    v32 = *(v6 + 8);
    v32(v17, v5);
  }

  sub_21A0E449C();
  swift_allocObject();
  sub_21A0E448C();
  type metadata accessor for NewsLiveActivityAttributes(0);
  sub_21A074ADC(&qword_280C89F50, type metadata accessor for NewsLiveActivityAttributes);
  v35 = v71;
  sub_21A0E447C();
  if (v35)
  {

    v65(v10, a3, v5);
    v36 = v35;
    v37 = sub_21A0E514C();
    v38 = sub_21A0E669C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v71 = v32;
      v40 = v39;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v73 = v42;
      *v40 = 136315650;
      sub_21A074ADC(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
      v43 = sub_21A0E6BFC();
      v44 = v10;
      v46 = v45;
      v71(v44, v5);
      v47 = sub_219F50144(v43, v46, &v73);

      *(v40 + 4) = v47;
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_219F50144(0xD00000000000001ALL, 0x800000021A10AE00, &v73);
      *(v40 + 22) = 2112;
      v48 = v35;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 24) = v49;
      *v41 = v49;
      _os_log_impl(&dword_219F39000, v37, v38, "Failed to decode contents of %s into %s. Error=%@", v40, 0x20u);
      sub_219F6409C(v41, &qword_27CCD9E28);
      MEMORY[0x21CED2D30](v41, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CED2D30](v42, -1, -1);
      MEMORY[0x21CED2D30](v40, -1, -1);
    }

    else
    {

      v32(v10, v5);
    }

    return swift_willThrow();
  }

  else
  {
    v65(v14, a3, v5);
    v50 = sub_21A0E514C();
    v51 = sub_21A0E66BC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v71 = v32;
      v54 = v53;
      v73 = v53;
      *v52 = 136315138;
      sub_21A074ADC(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
      v55 = sub_21A0E6BFC();
      v56 = v14;
      v58 = v57;
      v71(v56, v5);
      v59 = sub_219F50144(v55, v58, &v73);

      *(v52 + 4) = v59;
      _os_log_impl(&dword_219F39000, v50, v51, "Successfully decoded response from %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x21CED2D30](v54, -1, -1);
      MEMORY[0x21CED2D30](v52, -1, -1);
    }

    else
    {

      return (v32)(v14, v5);
    }
  }
}

uint64_t sub_21A073A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a2;
  v68 = a4;
  v69 = a1;
  v5 = sub_21A0E481C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v61[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v61[-v13];
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v61[-v16];
  if (qword_27CCD90F0 != -1)
  {
    swift_once();
  }

  v18 = sub_21A0E516C();
  v19 = __swift_project_value_buffer(v18, qword_27CCFE5E8);
  v65 = *(v6 + 16);
  v66 = v6 + 16;
  v65(v17, a3, v5);
  v67 = v19;
  v20 = sub_21A0E514C();
  v21 = sub_21A0E66BC();
  v22 = os_log_type_enabled(v20, v21);
  v72 = v6;
  if (v22)
  {
    v23 = v5;
    v24 = v6;
    v25 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v73 = v63;
    *v25 = 136315394;
    sub_21A074ADC(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
    v62 = v21;
    v26 = sub_21A0E6BFC();
    v64 = a3;
    v27 = v14;
    v28 = v10;
    v30 = v29;
    v31 = v24;
    v5 = v23;
    v32 = *(v31 + 8);
    v32(v17, v5);
    v33 = sub_219F50144(v26, v30, &v73);
    v10 = v28;
    v14 = v27;
    a3 = v64;

    *(v25 + 4) = v33;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_219F50144(0xD00000000000001BLL, 0x800000021A10ADE0, &v73);
    _os_log_impl(&dword_219F39000, v20, v62, "Attempting to decode response from %s into %s", v25, 0x16u);
    v34 = v63;
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v34, -1, -1);
    MEMORY[0x21CED2D30](v25, -1, -1);
  }

  else
  {

    v32 = *(v6 + 8);
    v32(v17, v5);
  }

  sub_21A0E449C();
  swift_allocObject();
  sub_21A0E448C();
  type metadata accessor for NewsLiveActivityPushPayload(0);
  sub_21A074ADC(&qword_27CCDCDB8, type metadata accessor for NewsLiveActivityPushPayload);
  v35 = v71;
  sub_21A0E447C();
  if (v35)
  {

    v65(v10, a3, v5);
    v36 = v35;
    v37 = sub_21A0E514C();
    v38 = sub_21A0E669C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v71 = v32;
      v40 = v39;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v73 = v42;
      *v40 = 136315650;
      sub_21A074ADC(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
      v43 = sub_21A0E6BFC();
      v44 = v10;
      v46 = v45;
      v71(v44, v5);
      v47 = sub_219F50144(v43, v46, &v73);

      *(v40 + 4) = v47;
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_219F50144(0xD00000000000001BLL, 0x800000021A10ADE0, &v73);
      *(v40 + 22) = 2112;
      v48 = v35;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 24) = v49;
      *v41 = v49;
      _os_log_impl(&dword_219F39000, v37, v38, "Failed to decode contents of %s into %s. Error=%@", v40, 0x20u);
      sub_219F6409C(v41, &qword_27CCD9E28);
      MEMORY[0x21CED2D30](v41, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CED2D30](v42, -1, -1);
      MEMORY[0x21CED2D30](v40, -1, -1);
    }

    else
    {

      v32(v10, v5);
    }

    return swift_willThrow();
  }

  else
  {
    v65(v14, a3, v5);
    v50 = sub_21A0E514C();
    v51 = sub_21A0E66BC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v71 = v32;
      v54 = v53;
      v73 = v53;
      *v52 = 136315138;
      sub_21A074ADC(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
      v55 = sub_21A0E6BFC();
      v56 = v14;
      v58 = v57;
      v71(v56, v5);
      v59 = sub_219F50144(v55, v58, &v73);

      *(v52 + 4) = v59;
      _os_log_impl(&dword_219F39000, v50, v51, "Successfully decoded response from %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x21CED2D30](v54, -1, -1);
      MEMORY[0x21CED2D30](v52, -1, -1);
    }

    else
    {

      return (v32)(v14, v5);
    }
  }
}

uint64_t sub_21A074174()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21A0741E0(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCDC0);
  v2 = swift_task_alloc();
  v1[3] = v2;
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_21A0742BC;

  return sub_21A07152C(v2, 0);
}

uint64_t sub_21A0742BC()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_21A074454;
  }

  else
  {
    v2 = sub_21A0743D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A0743D0()
{
  sub_21A074A74(v0[3], v0[2], type metadata accessor for NewsLiveActivityAttributes);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21A074454()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A0744B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_219F4996C;

  return sub_21A0723DC(a1, a2);
}

uint64_t sub_21A074564(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = type metadata accessor for NetworkRequest();
  v3 = swift_task_alloc();
  v4 = *v1;
  v2[9] = v3;
  v2[10] = v4;

  return MEMORY[0x2822009F8](sub_21A0745FC, 0, 0);
}

uint64_t sub_21A0745FC()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  v4 = __swift_project_boxed_opaque_existential_1((v0[10] + 16), *(v0[10] + 40));
  v5 = sub_21A0E481C();
  (*(*(v5 - 8) + 16))(v1, v2, v5);
  *(v1 + *(v3 + 20)) = 0;
  *(v1 + *(v3 + 24)) = xmmword_21A0FE4D0;
  v6 = *v4;
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_21A074710;
  v8 = v0[9];

  return sub_21A0BECC0((v0 + 2), v8, v6);
}

uint64_t sub_21A074710()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[12] = v0;

  sub_21A0748FC(v2, type metadata accessor for NetworkRequest);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21A074898, 0, 0);
  }

  else
  {
    v5 = v3[2];
    v4 = v3[3];

    v6 = v3[1];

    return v6(v5, v4);
  }
}

uint64_t sub_21A074898()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A0748FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A07495C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A074A74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A074ADC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21A074B38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21A074B80(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_21A074BE0(void (*a1)(uint64_t *__return_ptr, _OWORD *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v15 = MEMORY[0x277D84F90];
    sub_21A0E690C();
    for (i = a3 + 32; ; i += 72)
    {
      v10 = *(i + 48);
      v12[2] = *(i + 32);
      v13[0] = v10;
      *(v13 + 13) = *(i + 61);
      v11 = *(i + 16);
      v12[0] = *i;
      v12[1] = v11;
      a1(&v14, v12);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_21A0E68EC();
      sub_21A0E691C();
      sub_21A0E692C();
      sub_21A0E68FC();
      if (!--v6)
      {
        return v15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21A074CD4(void (*a1)(void *__return_ptr, _OWORD *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v20 = MEMORY[0x277D84F90];
  sub_219FBE970(0, v4, 0);
  v5 = v20;
  for (i = (a3 + 32); ; i += 5)
  {
    v9 = i[3];
    v17[2] = i[2];
    v18[0] = v9;
    *(v18 + 13) = *(i + 61);
    v10 = i[1];
    v17[0] = *i;
    v17[1] = v10;
    a1(v19, v17);
    if (v3)
    {
      break;
    }

    v11 = v19[0];
    v12 = v19[1];
    v20 = v5;
    v14 = *(v5 + 16);
    v13 = *(v5 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_219FBE970((v13 > 1), v14 + 1, 1);
      v5 = v20;
    }

    *(v5 + 16) = v14 + 1;
    v15 = v5 + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A074E28()
{
  v1 = v0[4];
  v3 = v1[17];
  v2 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v3);
  v0[5] = NewsLiveActivityManagerType.subscriptions.getter(v3, v2);
  v4 = v1[22];
  v5 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v4);
  v8 = (*(v5 + 8) + **(v5 + 8));
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_21A074F80;

  return v8(v4, v5);
}

uint64_t sub_21A074F80(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_21A075098, v2, 0);
}

uint64_t sub_21A075098()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  if (*(v2 + 16) <= *(v1 + 16) >> 3)
  {
    v17 = *(v0 + 56);
    sub_21A0783B4(v2);

    v3 = v17;
  }

  else
  {
    v3 = sub_21A0784EC(*(v0 + 40), v1);
  }

  *(v0 + 64) = v3;
  v4 = *(v3 + 32);
  *(v0 + 104) = v4;
  v5 = -1;
  v6 = -1 << v4;
  if (-(-1 << v4) < 64)
  {
    v5 = ~(-1 << -(-1 << v4));
  }

  v7 = v5 & *(v3 + 56);
  if (v7)
  {
    v8 = 0;
LABEL_11:
    *(v0 + 72) = v7;
    *(v0 + 80) = v8;
    v11 = (*(v3 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v7)))));
    v13 = *v11;
    v12 = v11[1];
    *(v0 + 88) = v12;
    *(v0 + 16) = v13;
    *(v0 + 24) = v12;

    v14 = swift_task_alloc();
    *(v0 + 96) = v14;
    *v14 = v0;
    v14[1] = sub_21A07525C;

    return sub_21A0754E8((v0 + 16));
  }

  else
  {
    v9 = 0;
    v10 = ((63 - v6) >> 6) - 1;
    while (v10 != v9)
    {
      v8 = v9 + 1;
      v7 = *(v3 + 8 * v9++ + 64);
      if (v7)
      {
        goto LABEL_11;
      }
    }

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_21A07525C()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_21A075388, v1, 0);
}

void sub_21A075388()
{
  v1 = *(v0 + 80);
  v2 = (*(v0 + 72) - 1) & *(v0 + 72);
  if (v2)
  {
    v3 = *(v0 + 64);
LABEL_7:
    *(v0 + 72) = v2;
    *(v0 + 80) = v1;
    v5 = (*(v3 + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v2)))));
    v7 = *v5;
    v6 = v5[1];
    *(v0 + 88) = v6;
    *(v0 + 16) = v7;
    *(v0 + 24) = v6;

    v8 = swift_task_alloc();
    *(v0 + 96) = v8;
    *v8 = v0;
    v8[1] = sub_21A07525C;

    sub_21A0754E8((v0 + 16));
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v3 = *(v0 + 64);
      if (v4 >= (((1 << *(v0 + 104)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 56);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v9 = *(v0 + 8);

    v9();
  }
}

uint64_t sub_21A0754E8(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[4] = v1;
  v2[5] = v3;
  v2[6] = v4;
  return MEMORY[0x2822009F8](sub_21A075510, v1, 0);
}

uint64_t sub_21A075510()
{
  v17 = v0;
  if (qword_280C88468 != -1)
  {
    swift_once();
  }

  v1 = sub_21A0E516C();
  v0[7] = __swift_project_value_buffer(v1, qword_280C88470);

  v2 = sub_21A0E514C();
  v3 = sub_21A0E66BC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_219F50144(v5, v4, &v16);
    _os_log_impl(&dword_219F39000, v2, v3, "Notified activity being dismissed; purging cache. ID=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CED2D30](v7, -1, -1);
    MEMORY[0x21CED2D30](v6, -1, -1);
  }

  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];
  v11 = v10[22];
  v12 = v10[23];
  __swift_project_boxed_opaque_existential_1(v10 + 19, v11);
  v0[2] = v9;
  v0[3] = v8;
  v15 = (*(v12 + 32) + **(v12 + 32));
  v13 = swift_task_alloc();
  v0[8] = v13;
  *v13 = v0;
  v13[1] = sub_21A075774;

  return v15(v0 + 2, v11, v12);
}

uint64_t sub_21A075774()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x2822009F8](sub_21A0758A8, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_21A0758A8()
{
  v17 = v0;
  v1 = v0[9];

  v2 = v1;
  v3 = sub_21A0E514C();
  v4 = sub_21A0E669C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v8 = v0[5];
    v7 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_219F50144(v8, v7, &v16);
    *(v9 + 12) = 2112;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_219F39000, v3, v4, "Failed purging cache. ID=%{public}s, Error=%@", v9, 0x16u);
    sub_219F6409C(v10, &qword_27CCD9E28);
    MEMORY[0x21CED2D30](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x21CED2D30](v11, -1, -1);
    MEMORY[0x21CED2D30](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_21A075A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_21A075A98, 0, 0);
}

uint64_t sub_21A075A98()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_21A075B3C;
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return sub_21A05BC94(v3, v2);
}

uint64_t sub_21A075B3C(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_21A075C3C, 0, 0);
}

uint64_t sub_21A075C3C()
{
  v17 = v0;
  v1 = sub_21A061EDC(v0[9]);
  v2 = v1;
  v3 = v1[2];
  if (v3)
  {
    v4 = sub_21A061B70(v1[2], 0);
    v5 = *(type metadata accessor for ActivityAsset() - 8);
    v6 = sub_21A062AA4(&v16, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v2);
    result = sub_219F5EC40();
    if (v6 != v3)
    {
      __break(1u);
      return result;
    }
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v8 = *(v4 + 16);

  if (v8)
  {
    v9 = v0[7];
    v10 = v0[4];
    v12 = v9[3];
    v11 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v12);
    v13 = v10[1];
    v0[2] = *v10;
    v0[3] = v13;

    v14 = swift_task_alloc();
    v0[10] = v14;
    *v14 = v0;
    v14[1] = sub_21A075E1C;

    return sub_21A075F2C(v0 + 2, v12, v11);
  }

  else
  {
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_21A075E1C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21A075F2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  v4[5] = *(type metadata accessor for NewsLiveActivityContent(0) - 8);
  v4[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a1;
  v8 = a1[1];
  v4[7] = v6;
  v4[8] = v7;
  v4[9] = v8;

  return MEMORY[0x2822009F8](sub_21A076004, 0, 0);
}

uint64_t sub_21A076004()
{
  v28 = v0;
  v1 = (*(v0[3] + 32))(v0[2]);
  if (*(v1 + 16) && (v2 = sub_219F477B4(v0[8], v0[9]), (v3 & 1) != 0))
  {
    v5 = v0[6];
    v4 = v0[7];
    sub_21A079134(*(v1 + 56) + *(v0[5] + 72) * v2, v5, type metadata accessor for NewsLiveActivityContent);

    sub_21A079200(v5, v4, type metadata accessor for NewsLiveActivityContent);
    if (qword_280C88468 != -1)
    {
      swift_once();
    }

    v6 = sub_21A0E516C();
    v0[10] = __swift_project_value_buffer(v6, qword_280C88470);

    v7 = sub_21A0E514C();
    v8 = sub_21A0E66BC();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[8];
      v9 = v0[9];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_219F50144(v10, v9, &v27);
      _os_log_impl(&dword_219F39000, v7, v8, "Requesting activity to be updated with newly-downloaded assets. Activity ID=%{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x21CED2D30](v12, -1, -1);
      MEMORY[0x21CED2D30](v11, -1, -1);
    }

    v26 = (*(v0[3] + 56) + **(v0[3] + 56));
    v13 = swift_task_alloc();
    v0[11] = v13;
    *v13 = v0;
    v13[1] = sub_21A076438;
    v14 = v0[7];
    v15 = v0[3];
    v16 = v0[2];

    return v26(v14, v16, v15);
  }

  else
  {

    if (qword_280C88468 != -1)
    {
      swift_once();
    }

    v18 = sub_21A0E516C();
    __swift_project_value_buffer(v18, qword_280C88470);

    v19 = sub_21A0E514C();
    v20 = sub_21A0E669C();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = v0[8];
      v21 = v0[9];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_219F50144(v22, v21, &v27);
      _os_log_impl(&dword_219F39000, v19, v20, "Requested to reload an activity with no existing contents - was the activity ended? Activity ID=%{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x21CED2D30](v24, -1, -1);
      MEMORY[0x21CED2D30](v23, -1, -1);
    }

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_21A076438()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_21A0766C0;
  }

  else
  {
    v2 = sub_21A07654C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A07654C()
{
  v11 = v0;

  v1 = sub_21A0E514C();
  v2 = sub_21A0E66BC();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_219F50144(v4, v3, &v10);
    _os_log_impl(&dword_219F39000, v1, v2, "Requested activity to be updated with newly-downloaded assets. Activity ID=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CED2D30](v7, -1, -1);
    MEMORY[0x21CED2D30](v6, -1, -1);
  }

  else
  {
    v5 = v0[7];
  }

  sub_21A079268(v5, type metadata accessor for NewsLiveActivityContent);

  v8 = v0[1];

  return v8();
}

uint64_t sub_21A0766C0()
{
  v18 = v0;
  v1 = v0[12];

  v2 = v1;
  v3 = sub_21A0E514C();
  v4 = sub_21A0E669C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 136446466;
    *(v10 + 4) = sub_219F50144(v8, v7, &v17);
    *(v10 + 12) = 2114;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_219F39000, v3, v4, "Failed Requesting activity to be updated with newly-downloaded assets. Activity ID=%{public}s, Error=%{public}@", v10, 0x16u);
    sub_219F6409C(v11, &qword_27CCD9E28);
    MEMORY[0x21CED2D30](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21CED2D30](v12, -1, -1);
    MEMORY[0x21CED2D30](v10, -1, -1);
  }

  else
  {
    v9 = v0[7];
  }

  sub_21A079268(v9, type metadata accessor for NewsLiveActivityContent);

  v15 = v0[1];

  return v15();
}

uint64_t sub_21A0768C0(uint64_t a1, int *a2)
{
  v5 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB078) + 48));
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_219F4996C;

  return v8(a1, v5);
}

BOOL sub_21A0769E0(uint64_t a1)
{
  v2 = type metadata accessor for ScheduledLiveActivity();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v28 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB048);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for NewsLiveActivitySubscriptionState(0);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v27 - v17;
  v19 = *(type metadata accessor for NewsLiveActivity(0) + 20);
  (*(v3 + 56))(v18, 2, 3, v2);
  v20 = *(v7 + 56);
  sub_21A079134(a1 + v19, v10, type metadata accessor for NewsLiveActivitySubscriptionState);
  sub_21A079134(v18, &v10[v20], type metadata accessor for NewsLiveActivitySubscriptionState);
  v21 = *(v3 + 48);
  v22 = v21(v10, 3, v2);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      sub_21A079268(v18, type metadata accessor for NewsLiveActivitySubscriptionState);
      if (v21(&v10[v20], 3, v2) == 2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_21A079268(v18, type metadata accessor for NewsLiveActivitySubscriptionState);
      if (v21(&v10[v20], 3, v2) == 3)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    sub_219F6409C(v10, &qword_27CCDB048);
    return 0;
  }

  if (!v22)
  {
    sub_21A079134(v10, v15, type metadata accessor for NewsLiveActivitySubscriptionState);
    if (!v21(&v10[v20], 3, v2))
    {
      v25 = &v10[v20];
      v26 = v28;
      sub_21A079200(v25, v28, type metadata accessor for ScheduledLiveActivity);
      v23 = _s22NewsLiveActivitiesCore09ScheduledB8ActivityV2eeoiySbAC_ACtFZ_0(v15, v26);
      sub_21A079268(v26, type metadata accessor for ScheduledLiveActivity);
      sub_21A079268(v18, type metadata accessor for NewsLiveActivitySubscriptionState);
      sub_21A079268(v15, type metadata accessor for ScheduledLiveActivity);
      sub_21A079268(v10, type metadata accessor for NewsLiveActivitySubscriptionState);
      return v23;
    }

    sub_21A079268(v18, type metadata accessor for NewsLiveActivitySubscriptionState);
    sub_21A079268(v15, type metadata accessor for ScheduledLiveActivity);
    goto LABEL_11;
  }

  sub_21A079268(v18, type metadata accessor for NewsLiveActivitySubscriptionState);
  if (v21(&v10[v20], 3, v2) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_21A079268(v10, type metadata accessor for NewsLiveActivitySubscriptionState);
  return 1;
}

uint64_t sub_21A076DFC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1(v0 + 232);
  sub_21A0792C8(v0 + 272);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
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

uint64_t sub_21A076E70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_21A076EB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21A076F14(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = a3[1];
  *a1 = *a3;
  a1[1] = v5;
  *a2 = v4;
}

uint64_t sub_21A076F50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  *a3 = v5;
  a3[1] = v4;
  v6 = *(a2 + 41);
  v7 = *(a2 + 48);
  v9[0] = *(a2 + 40);
  v9[1] = v6;
  v10 = v7;

  result = sub_21A040858(v9);
  a3[2] = result;
  return result;
}

uint64_t sub_21A076FBC(void *a1, uint64_t *a2)
{
  v82 = a1;
  v80 = sub_21A0E481C();
  v3 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v4);
  v79 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for URLAssetConfiguration.Format(0);
  MEMORY[0x28223BE20](v84, v6);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v83 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCDD8);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v75 - v14;
  v16 = type metadata accessor for RemoteAssetKey();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v96 = (&v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19, v21);
  v88 = &v75 - v22;
  v23 = type metadata accessor for ActivityAsset();
  v93 = *(v23 - 8);
  v94 = v23;
  v25 = MEMORY[0x28223BE20](v23, v24);
  v87 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v92 = &v75 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v99 = &v75 - v32;
  MEMORY[0x28223BE20](v31, v33);
  v91 = &v75 - v34;
  v35 = a2[1];
  v36 = a2[2];
  v37 = 1 << *(v36 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v36 + 56);
  v78 = *a2;
  v40 = (v37 + 63) >> 6;
  v90 = (v17 + 56);
  v77 = (v3 + 32);
  v76 = v17;
  v89 = (v17 + 48);
  v85 = v35;

  v95 = v36;

  v41 = 0;
  v98 = v15;
  v86 = v16;
  for (i = v8; v39; v16 = v86)
  {
    while (1)
    {
LABEL_10:
      v43 = *(v95 + 48);
      v97 = *(v93 + 72);
      v44 = v91;
      sub_21A079134(v43 + v97 * (__clz(__rbit64(v39)) | (v41 << 6)), v91, type metadata accessor for ActivityAsset);
      v45 = v44;
      v46 = v99;
      sub_21A079200(v45, v99, type metadata accessor for ActivityAsset);
      v47 = v92;
      sub_21A079134(v46, v92, type metadata accessor for ActivityAsset);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v48 = v47;
        v49 = v83;
        sub_21A079200(v48, v83, type metadata accessor for URLAssetConfiguration);
        sub_21A079200(v49, v8, type metadata accessor for URLAssetConfiguration.Format);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*v90)(v15, 1, 1, v16);
          sub_21A079268(v8, type metadata accessor for URLAssetConfiguration.Format);
        }

        else
        {
          v50 = *v77;
          v52 = v79;
          v51 = v80;
          (*v77)(v79, v8, v80);
          *v98 = v78;
          *(v98 + 1) = v85;
          v53 = v52;
          v16 = v86;
          v54 = v51;
          v15 = v98;
          v50(&v98[*(v86 + 20)], v53, v54);
          (*v90)(v15, 0, 1, v16);
        }
      }

      else
      {
        sub_21A079268(v47, type metadata accessor for ActivityAsset);
        (*v90)(v15, 1, 1, v16);
      }

      v39 &= v39 - 1;
      if ((*v89)(v15, 1, v16) != 1)
      {
        break;
      }

      sub_21A079268(v99, type metadata accessor for ActivityAsset);
      sub_219F6409C(v15, &qword_27CCDCDD8);
      if (!v39)
      {
        goto LABEL_6;
      }
    }

    v55 = v88;
    sub_21A079200(v15, v88, type metadata accessor for RemoteAssetKey);
    v56 = v96;
    sub_21A079134(v55, v96, type metadata accessor for RemoteAssetKey);
    sub_21A079134(v99, v87, type metadata accessor for ActivityAsset);
    v57 = v82;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v57;
    v60 = *v57;
    v100 = v60;
    v62 = sub_219F9FE1C(v56);
    v63 = v60[2];
    v64 = (v61 & 1) == 0;
    v65 = v63 + v64;
    if (__OFADD__(v63, v64))
    {
      goto LABEL_31;
    }

    v66 = v61;
    if (v60[3] >= v65)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v69 = v100;
        if (v61)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_21A0D5940();
        v69 = v100;
        if (v66)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_21A0D3D84(v65, isUniquelyReferenced_nonNull_native);
      v67 = sub_219F9FE1C(v96);
      if ((v66 & 1) != (v68 & 1))
      {
        goto LABEL_33;
      }

      v62 = v67;
      v69 = v100;
      if (v66)
      {
LABEL_23:
        sub_21A07919C(v87, v69[7] + v62 * v97);
        sub_21A079268(v96, type metadata accessor for RemoteAssetKey);
        sub_21A079268(v88, type metadata accessor for RemoteAssetKey);
        sub_21A079268(v99, type metadata accessor for ActivityAsset);
        goto LABEL_27;
      }
    }

    v69[(v62 >> 6) + 8] |= 1 << v62;
    v70 = v96;
    sub_21A079134(v96, v69[6] + *(v76 + 72) * v62, type metadata accessor for RemoteAssetKey);
    sub_21A079200(v87, v69[7] + v62 * v97, type metadata accessor for ActivityAsset);
    sub_21A079268(v70, type metadata accessor for RemoteAssetKey);
    sub_21A079268(v88, type metadata accessor for RemoteAssetKey);
    sub_21A079268(v99, type metadata accessor for ActivityAsset);
    v71 = v69[2];
    v72 = __OFADD__(v71, 1);
    v73 = v71 + 1;
    if (v72)
    {
      goto LABEL_32;
    }

    v69[2] = v73;
LABEL_27:
    *v59 = v69;
    v8 = i;
    v15 = v98;
  }

LABEL_6:
  while (1)
  {
    v42 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v42 >= v40)
    {
    }

    v39 = *(v36 + 56 + 8 * v42);
    ++v41;
    if (v39)
    {
      v41 = v42;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_21A0E6D0C();
  __break(1u);
  return result;
}

uint64_t sub_21A0778A0(void *a1, uint64_t a2, void *a3)
{
  if (*a1 == *a3 && a1[1] == a3[1])
  {
    return 1;
  }

  else
  {
    return sub_21A0E6C5C();
  }
}

uint64_t sub_21A0778D4(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v2[2] = *a2;
  v2[3] = v3;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_21A0792F8;

  return sub_21A0754E8(v2 + 2);
}

uint64_t sub_21A077974(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v2[2] = *a2;
  v2[3] = v3;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_219FC7A90;

  return sub_21A0754E8(v2 + 2);
}

uint64_t sub_21A077A14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_219F49B18;

  return sub_21A074E08();
}

uint64_t sub_21A077AA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_219F49B18;

  return sub_219F49FA4();
}

uint64_t sub_21A077B2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v31 = a4;
  v27 = a2;
  v28 = a1;
  v6 = type metadata accessor for NewsLiveActivity(0);
  v30 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v11 = 0;
  v32 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_11:
    v22 = v19 | (v11 << 6);
    sub_21A079134(*(v32 + 48) + *(v30 + 72) * v22, v10, type metadata accessor for NewsLiveActivity);
    v23 = v31(v10);
    result = sub_21A079268(v10, type metadata accessor for NewsLiveActivity);
    if (v4)
    {
      return result;
    }

    if (v23)
    {
      *(v28 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_16:
        v25 = v32;

        return sub_219F4B9F8(v28, v27, v29, v25);
      }
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_16;
    }

    v21 = *(v13 + 8 * v11);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v17 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_21A077D70(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_219F4EFA8(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_21A077E0C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_21A077EAC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBE40);
  result = sub_21A0E684C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_21A0E6DAC();

    sub_21A0E626C();
    result = sub_21A0E6DFC();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21A0780D0(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v39 = a4;
  v32 = a2;
  v33 = a1;
  v5 = type metadata accessor for ActivityAsset();
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RemoteAssetKey();
  v36 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8 - 8, v9);
  v34 = 0;
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v40 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v41 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v12 << 6);
    v24 = v40;
    v25 = v35;
    sub_21A079134(v40[6] + *(v36 + 72) * v23, v35, type metadata accessor for RemoteAssetKey);
    v26 = v23;
    v27 = v24[7] + *(v38 + 72) * v23;
    v28 = v37;
    sub_21A079134(v27, v37, type metadata accessor for ActivityAsset);
    v29 = v42;
    v30 = v39(v25, v28);
    sub_21A079268(v28, type metadata accessor for ActivityAsset);
    result = sub_21A079268(v25, type metadata accessor for RemoteAssetKey);
    v42 = v29;
    if (v29)
    {
      return result;
    }

    v18 = v41;
    if (v30)
    {
      *(v33 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
        return sub_219F4F398(v33, v32, v34, v40);
      }
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return sub_219F4F398(v33, v32, v34, v40);
    }

    v22 = v14[v12];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v41 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}