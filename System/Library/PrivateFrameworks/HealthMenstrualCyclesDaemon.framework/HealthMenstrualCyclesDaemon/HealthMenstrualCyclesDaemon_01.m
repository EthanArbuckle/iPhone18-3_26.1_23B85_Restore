void sub_229423280(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_2294232F8(void **a1)
{
  v2 = sub_22944F054();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = [v7 educationalStepsReviewDate];
  if (v8)
  {
    v9 = v8;
    sub_22944F014();

    v10 = sub_22944EFF4();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v11 = sub_22944F174();
    __swift_project_value_buffer(v11, qword_2813DBFB8);
    v12 = v7;
    v13 = sub_22944F154();
    v14 = sub_22944FA64();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136315394;
      v17 = sub_22944FF44();
      v19 = sub_2293D4824(v17, v18, &v26);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v20 = HKSensitiveLogItem();
      sub_22944FB34();
      swift_unknownObjectRelease();
      v21 = sub_22944F8A4();
      v23 = sub_2293D4824(v21, v22, &v26);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_2293D1000, v13, v14, "[%s] Received record with no educational steps review date: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AACCC00](v16, -1, -1);
      MEMORY[0x22AACCC00](v15, -1, -1);
    }

    v10 = 0;
  }

  return v10 & 1;
}

Swift::OpaquePointer_optional __swiftcall HDMCPregnancyFeatureAdjustmentManager.queryDeletedPregnancySamples()()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_unitTest_deletedPregnancySamplesQueryResults;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    sub_2293D30DC(0, &unk_2813DBE70, 0x277D105E8);
    Strong = swift_unknownObjectUnownedLoadStrong();
    v8 = MEMORY[0x277D84F90];
    v4 = MEMORY[0x28223BE20](Strong);
    v7[2] = &v8;
    sub_2293D5FC4(v4, 0, 1, sub_22942A950, v7);

    v2 = v8;
  }

  v6 = v2;
  result.value._rawValue = v6;
  result.is_nil = v5;
  return result;
}

id HDMedicalIDDataManager.getMedicalIDData()()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v1 = [v0 fetchMedicalIDIfSetUpWithError_];
  v2 = v7[0];
  if (!v1)
  {
    v3 = v2;
    v4 = sub_22944EF74();

    swift_willThrow();
    v1 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_2294238C4()
{
  v0 = sub_22944F054();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27D86E640);
  __swift_project_value_buffer(v0, qword_27D86E640);
  sub_22944EFA4();
  sub_22944F034();
  return (*(v1 + 8))(v5, v0);
}

uint64_t static Date.erased.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D86E1E0 != -1)
  {
    swift_once();
  }

  v2 = sub_22944F054();
  v3 = __swift_project_value_buffer(v2, qword_27D86E640);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_229423A7C(uint64_t a1, unint64_t a2)
{
  v4 = sub_229423AC8(a1, a2);
  sub_229423BF8(&unk_283CBA090);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_229423AC8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_229423CE4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22944FCC4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22944F8E4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_229423CE4(v10, 0);
        result = sub_22944FC74();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_229423BF8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_229423D5C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_229423CE4(uint64_t a1, uint64_t a2)
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

  sub_2293D3AF0(0, &qword_2813DBDA8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_229423D5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2293D3AF0(0, &qword_2813DBDA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_229423E54(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_22944FBD4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_22944FBD4();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_229426F98(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2294337FC(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_229423F68(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_22944F894();
  sub_22944FEC4();
  sub_22944F8C4();
  v8 = sub_22944FEE4();

  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_22944F894();
      v15 = v14;
      if (v13 == sub_22944F894() && v15 == v16)
      {

        goto LABEL_12;
      }

      v18 = sub_22944FE24();

      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v6 + 48) + 8 * v10);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v21 = a2;
    sub_229425554(v21, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_229424114(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22944F0B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2293D5C5C(&qword_27D86E758, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_22944F814();
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
      sub_2293D5C5C(&qword_27D86E760, MEMORY[0x277CC95F0]);
      v23 = sub_22944F854();
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
    sub_22942573C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2294243F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22944FEC4();
  sub_22944F8C4();
  v9 = sub_22944FEE4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_22944FE24() & 1) != 0)
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

    sub_2294259E0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_229424544(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_22944FEC4();
  v8 = a2 & 1;
  MEMORY[0x22AACBD40](v8);
  v9 = sub_22944FEE4();
  v10 = -1 << *(v6 + 32);
  v11 = v9 & ~v10;
  if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(v6 + 48);
      if (*(v13 + v11) == v8)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v8) = *(v13 + v11);
  }

  else
  {
LABEL_5:
    v14 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_229425B60(v8, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
    result = 1;
  }

  *a1 = v8;
  return result;
}

uint64_t sub_229424644(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_22942B1F0(0, a3, a4, a5, a6);
    v10 = sub_22944FC44();
    v24 = v10;
    sub_22944FB94();
    if (sub_22944FC04())
    {
      sub_2293D30DC(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_229424ACC(v18 + 1, a3, a4, a5, a6);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_22944FAF4();
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

      while (sub_22944FC04());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_22942485C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22942AD08();
  result = sub_22944FC34();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_22944F894();
      sub_22944FEC4();
      sub_22944F8C4();
      v20 = sub_22944FEE4();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_229424ACC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_22942B1F0(0, a2, a3, a4, a5);
  result = sub_22944FC34();
  v10 = result;
  if (*(v7 + 16))
  {
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
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(*(v7 + 48) + 8 * (v19 | (v11 << 6)));
      v23 = *(v10 + 40);
      result = sub_22944FAF4();
      v24 = -1 << *(v10 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v22;
      ++*(v10 + 16);
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

    v31 = 1 << *(v7 + 32);
    if (v31 >= 64)
    {
      bzero((v7 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v10;
  return result;
}

uint64_t sub_229424CE8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22944F0B4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_22942AF44();
  result = sub_22944FC34();
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
      sub_2293D5C5C(&qword_27D86E758, MEMORY[0x277CC95F0]);
      result = sub_22944F814();
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

uint64_t sub_229425038(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22942AB80();
  result = sub_22944FC34();
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
      sub_22944FEC4();
      sub_22944F8C4();
      result = sub_22944FEE4();
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

uint64_t sub_22942528C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22942AAD0();
  result = sub_22944FC34();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_22944FEC4();
      MEMORY[0x22AACBD40](v18);
      result = sub_22944FEE4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_2294254D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_22944FAF4();
  v5 = -1 << *(a2 + 32);
  result = sub_22944FB74();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_229425554(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_22942485C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_229425CB4();
      goto LABEL_16;
    }

    sub_2294263F8(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_22944F894();
  sub_22944FEC4();
  sub_22944F8C4();
  v11 = sub_22944FEE4();

  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = sub_22944F894();
      v17 = v16;
      if (v15 == sub_22944F894() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = sub_22944FE24();

      if (v20)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_22944FE44();
  __break(1u);
  return result;
}

uint64_t sub_22942573C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_22944F0B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_229424CE8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_229425F4C();
      goto LABEL_12;
    }

    sub_229426848(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_2293D5C5C(&qword_27D86E758, MEMORY[0x277CC95F0]);
  v15 = sub_22944F814();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_2293D5C5C(&qword_27D86E760, MEMORY[0x277CC95F0]);
      v23 = sub_22944F854();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22944FE44();
  __break(1u);
  return result;
}

uint64_t sub_2294259E0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_229425038(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_229426174();
      goto LABEL_16;
    }

    sub_229426B58(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_22944FEC4();
  sub_22944F8C4();
  result = sub_22944FEE4();
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

      result = sub_22944FE24();
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
  result = sub_22944FE44();
  __break(1u);
  return result;
}

uint64_t sub_229425B60(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22942528C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2294262C4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_229426D84(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_22944FEC4();
  MEMORY[0x22AACBD40](v4 & 1);
  result = sub_22944FEE4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4 & 1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22944FE44();
  __break(1u);
  return result;
}

id sub_229425CB4()
{
  v1 = v0;
  sub_22942AD08();
  v2 = *v0;
  v3 = sub_22944FC24();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

id sub_229425DF8(unint64_t *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v5 = v4;
  sub_22942B1F0(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_22944FC24();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_229425F4C()
{
  v1 = v0;
  v2 = sub_22944F0B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22942AF44();
  v7 = *v0;
  v8 = sub_22944FC24();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
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
LABEL_17:
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
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

void *sub_229426174()
{
  v1 = v0;
  sub_22942AB80();
  v2 = *v0;
  v3 = sub_22944FC24();
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

void *sub_2294262C4()
{
  v1 = v0;
  sub_22942AAD0();
  v2 = *v0;
  v3 = sub_22944FC24();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_2294263F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22942AD08();
  result = sub_22944FC34();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_22944F894();
      sub_22944FEC4();
      v20 = v18;
      sub_22944F8C4();
      v21 = sub_22944FEE4();

      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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

uint64_t sub_229426640(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_22942B1F0(0, a2, a3, a4, a5);
  result = sub_22944FC34();
  v10 = result;
  if (*(v7 + 16))
  {
    v30 = v6;
    v11 = 0;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(v10 + 40);
      v22 = *(*(v7 + 48) + 8 * (v18 | (v11 << 6)));
      result = sub_22944FAF4();
      v23 = -1 << *(v10 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v10 + 48) + 8 * v17) = v22;
      ++*(v10 + 16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v6 = v30;
        goto LABEL_28;
      }

      v20 = *(v7 + 56 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
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
    *v6 = v10;
  }

  return result;
}

uint64_t sub_229426848(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22944F0B4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_22942AF44();
  v10 = sub_22944FC34();
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
      sub_2293D5C5C(&qword_27D86E758, MEMORY[0x277CC95F0]);
      result = sub_22944F814();
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

uint64_t sub_229426B58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22942AB80();
  result = sub_22944FC34();
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
      sub_22944FEC4();

      sub_22944F8C4();
      result = sub_22944FEE4();
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

uint64_t sub_229426D84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22942AAD0();
  result = sub_22944FC34();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_22944FEC4();
      MEMORY[0x22AACBD40](v17);
      result = sub_22944FEE4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_229426F98(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_22944FBD4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_22944FCA4();
  *v1 = result;
  return result;
}

unint64_t sub_229427038(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_22944FEB4();

  return sub_229427110(a1, v4);
}

unint64_t sub_22942707C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22944F894();
  sub_22944FEC4();
  sub_22944F8C4();
  v4 = sub_22944FEE4();

  return sub_22942717C(a1, v4);
}

unint64_t sub_229427110(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22942717C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22944F894();
      v9 = v8;
      if (v7 == sub_22944F894() && v9 == v10)
      {
        break;
      }

      v12 = sub_22944FE24();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_229427280()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 40);
  sub_22944F894();
  sub_22944FEC4();
  sub_22944F8C4();
  v4 = sub_22944FEE4();

  v5 = -1 << *(v2 + 32);
  v6 = v4 & ~v5;
  if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (1)
  {
    v8 = *(*(v2 + 48) + 8 * v6);
    v9 = sub_22944F894();
    v11 = v10;
    if (v9 == sub_22944F894() && v11 == v12)
    {
      break;
    }

    v14 = sub_22944FE24();

    if (v14)
    {
      goto LABEL_11;
    }

    v6 = (v6 + 1) & v7;
    if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_11:
  v16 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v1;
  v20 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_229425CB4();
    v18 = v20;
  }

  v15 = *(*(v18 + 48) + 8 * v6);
  sub_229427F8C(v6);
  *v1 = v20;
  return v15;
}

uint64_t sub_229427410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_22942707C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_229427D30();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = sub_22944F054();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v8, v13);
    sub_229427910(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_22944F054();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_22942757C(uint64_t a1, int a2)
{
  v3 = v2;
  v47 = sub_22944F054();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_22942AC5C();
  v43 = a2;
  result = sub_22944FD74();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = v3;
    v40 = (v6 + 16);
    v41 = v9;
    v42 = v6;
    v44 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(v9 + 56);
      v26 = *(*(v9 + 48) + 8 * v24);
      v45 = *(v42 + 72);
      v27 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v27, v47);
      }

      else
      {
        (*v40)(v46, v27, v47);
        v28 = v26;
      }

      v29 = *(v12 + 40);
      sub_22944F894();
      sub_22944FEC4();
      sub_22944F8C4();
      v30 = sub_22944FEE4();

      v31 = -1 << *(v12 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + 8 * v20) = v26;
      result = (*v44)(*(v12 + 56) + v45 * v20, v46, v47);
      ++*(v12 + 16);
      v9 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

void sub_229427910(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22944FB64() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_22944F894();
      sub_22944FEC4();
      v11 = v10;
      sub_22944F8C4();
      v12 = sub_22944FEE4();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v13 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v14 = *(a2 + 48);
      v15 = (v14 + 8 * v3);
      v16 = (v14 + 8 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(sub_22944F054() - 8) + 72);
      v19 = v18 * v3;
      v20 = v17 + v18 * v3;
      v21 = v18 * v6;
      v22 = v17 + v18 * v6 + v18;
      if (v19 < v21 || v20 >= v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v21)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v13 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

id sub_229427B14(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_22942707C(a2);
  v10 = *(v7 + 16);
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = *(v7 + 24);
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_229427D30();
      goto LABEL_7;
    }

    sub_22942757C(v12, a3 & 1);
    v23 = *v4;
    v24 = sub_22942707C(a2);
    if ((v13 & 1) == (v25 & 1))
    {
      v9 = v24;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
    result = sub_22944FE54();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = sub_22944F054();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v9;

    return v19(v21, a1, v20);
  }

LABEL_13:
  sub_229427C84(v9, a2, a1, v15);

  return a2;
}

uint64_t sub_229427C84(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_22944F054();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

id sub_229427D30()
{
  v1 = v0;
  v31 = sub_22944F054();
  v33 = *(v31 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22942AC5C();
  v4 = *v0;
  v5 = sub_22944FD64();
  v6 = v5;
  if (*(v4 + 16))
  {
    v28[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v12;
    v13 = 1 << *(v4 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v4 + 64);
    v16 = (v13 + 63) >> 6;
    v28[1] = v33 + 32;
    v28[2] = v33 + 16;
    for (i = v4; v15; v4 = i)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = v17 | (v11 << 6);
      v21 = *(v4 + 56);
      v22 = *(*(v4 + 48) + 8 * v20);
      v23 = v33;
      v24 = *(v33 + 72) * v20;
      v26 = v30;
      v25 = v31;
      (*(v33 + 16))(v30, v21 + v24, v31);
      v27 = v32;
      *(*(v32 + 48) + 8 * v20) = v22;
      (*(v23 + 32))(*(v27 + 56) + v24, v26, v25);
      result = v22;
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v28[0];
        v6 = v32;
        goto LABEL_21;
      }

      v19 = *(v8 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

unint64_t sub_229427F8C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22944FB64();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_22944F894();
        sub_22944FEC4();
        v13 = v12;
        sub_22944F8C4();
        v14 = sub_22944FEE4();

        v15 = v14 & v7;
        if (v2 >= v10)
        {
          if (v15 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v15)
        {
LABEL_11:
          v16 = *(v3 + 48);
          v17 = (v16 + 8 * v2);
          v18 = (v16 + 8 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

char *sub_22942816C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for HDMCPregnancyFeatureAdjustmentManager();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_unitTest_deletedPregnancySamplesQueryResults] = 0;
  swift_unknownObjectUnownedInit();
  *&v14[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_pregnancyManager] = a1;
  v28 = a2;
  if (a4)
  {
    v15 = a1;
    v16 = a4;
  }

  else
  {
    v17 = objc_allocWithZone(MEMORY[0x277D10800]);
    v18 = a1;
    v19 = a2;
    v20 = sub_22944F864();
    v16 = [v17 initWithProfile:v19 debugIdentifier:v20 delegate:{0, v28}];
  }

  *&v14[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_protectedDataOperation] = v16;
  *&v14[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureStatusManager] = a5;
  *&v14[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureAvailabilityManager] = a6;
  sub_229428480(a7, &v14[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_medicalIDDataManager]);
  v30.receiver = v14;
  v30.super_class = v13;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = a4;
  v22 = objc_msgSendSuper2(&v30, sel_init);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v24 = result;

    v25 = [v24 isiPad];
    if (v25)
    {
      sub_229428944(a7, &qword_2813DC3A0, &unk_2813DC3A8, &protocol descriptor for MedicalIDDataProviding, sub_22942B194);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = *&v22[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_protectedDataOperation];
      v27 = v22;
      [v26 setDelegate_];
      [*&v27[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_pregnancyManager] registerObserver:v27 isUserInitiated:0];
      [a3 registerWithObserver_];

      sub_2293D9118(2);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_229428944(a7, &qword_2813DC3A0, &unk_2813DC3A8, &protocol descriptor for MedicalIDDataProviding, sub_22942B194);
    }

    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_229428480(uint64_t a1, uint64_t a2)
{
  sub_2294289A0(0, &qword_2813DC3A0, &unk_2813DC3A8, &protocol descriptor for MedicalIDDataProviding, sub_22942B194);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_229428510(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = objc_allocWithZone(type metadata accessor for HDMCPregnancyFeatureAdjustmentManager());

  return sub_2294285A0(a1, a2, a3, a4, a5, a6, a7, v14);
}

char *sub_2294285A0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  *&a8[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_unitTest_deletedPregnancySamplesQueryResults] = 0;
  swift_unknownObjectUnownedInit();
  *&a8[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_pregnancyManager] = a1;
  if (a4)
  {
    swift_unknownObjectRetain();
    v15 = a4;
  }

  else
  {
    v16 = objc_allocWithZone(MEMORY[0x277D10800]);
    swift_unknownObjectRetain();
    v17 = a2;
    v18 = sub_22944F864();
    v15 = [v16 initWithProfile:v17 debugIdentifier:v18 delegate:0];
  }

  *&a8[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_protectedDataOperation] = v15;
  *&a8[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureStatusManager] = a5;
  *&a8[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_cardioFitnessFeatureAvailabilityManager] = a6;
  sub_229428480(a7, &a8[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_medicalIDDataManager]);
  v27.receiver = a8;
  v27.super_class = type metadata accessor for HDMCPregnancyFeatureAdjustmentManager();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v19 = a4;
  v20 = objc_msgSendSuper2(&v27, sel_init);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v22 = result;
    swift_unknownObjectRelease();
    v23 = [v22 isiPad];

    if (v23)
    {
      sub_229428944(a7, &qword_2813DC3A0, &unk_2813DC3A8, &protocol descriptor for MedicalIDDataProviding, sub_22942B194);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = *&v20[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_protectedDataOperation];
      v25 = v20;
      [v24 setDelegate_];
      [*&v25[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManager_pregnancyManager] registerObserver:v25 isUserInitiated:0];
      [a3 registerWithObserver_];

      sub_2293D9118(2);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_229428944(a7, &qword_2813DC3A0, &unk_2813DC3A8, &protocol descriptor for MedicalIDDataProviding, sub_22942B194);
    }

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_229428884()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v9 = v0[10];
  v8 = v0[11];
  if (v1)
  {
    v10 = v0[3];
    v1();
  }

  sub_229416768(v3, v4, v5);
  if (v7)
  {
    v11 = v7();
  }

  return v9(v11);
}

uint64_t sub_229428914(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_229428924(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2294232F8(a1) & 1;
}

uint64_t sub_229428944(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_2294289A0(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_2294289A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_22944FB14();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void (*sub_2294289FC(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AACBB00](a2, a3);
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
    return sub_22942B530;
  }

  __break(1u);
  return result;
}

void (*sub_229428A7C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AACBB00](a2, a3);
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
    return sub_229428AFC;
  }

  __break(1u);
  return result;
}

uint64_t sub_229428B04(uint64_t a1, void *a2, uint64_t a3)
{
  swift_getObjectType();
  v21[3] = type metadata accessor for HDMCExperienceDaemonStore();
  v21[4] = sub_2293D5C5C(&qword_2813DC470, type metadata accessor for HDMCExperienceDaemonStore);
  v21[0] = a3;
  sub_22942B130(v21, v20);
  sub_22942B194(0, &qword_2813DC3C0);

  if (swift_dynamicCast())
  {
    v6 = v19;
  }

  else
  {
    v6 = 0;
  }

  HDCodableMenstrualCyclesExperienceModel.deleteRecords(with:)(a1);
  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v7 = sub_22944F174();
    __swift_project_value_buffer(v7, qword_2813DBFB8);

    v8 = sub_22944F154();
    v9 = sub_22944FA84();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20[0] = v11;
      *v10 = 136315394;
      v12 = sub_22944FF44();
      v14 = sub_2293D4824(v12, v13, v20);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      sub_22944F0B4();
      sub_2293D5C5C(&qword_27D86E758, MEMORY[0x277CC95F0]);
      v15 = sub_22944F9C4();
      v17 = sub_2293D4824(v15, v16, v20);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_2293D1000, v8, v9, "[%s] Deleted records with UUIDs: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AACCC00](v11, -1, -1);
      MEMORY[0x22AACCC00](v10, -1, -1);
    }
  }

  if (v6)
  {

    HDMCExperienceDaemonStore.setModel(_:)(a2);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v21);
}

uint64_t sub_2294291B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v27[3] = a5;
  v27[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a3, a5);
  sub_22942B130(v27, v26);
  sub_22942B194(0, &qword_2813DC3C0);
  type metadata accessor for HDMCExperienceDaemonStore();
  if (swift_dynamicCast())
  {
    v12 = v25;
  }

  else
  {
    v12 = 0;
  }

  HDCodableMenstrualCyclesExperienceModel.deleteRecords(with:)(a1);
  if (HKShowSensitiveLogItems())
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v13 = sub_22944F174();
    __swift_project_value_buffer(v13, qword_2813DBFB8);

    v14 = sub_22944F154();
    v15 = sub_22944FA84();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26[0] = v17;
      *v16 = 136315394;
      v18 = sub_22944FF44();
      v20 = sub_2293D4824(v18, v19, v26);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      sub_22944F0B4();
      sub_2293D5C5C(&qword_27D86E758, MEMORY[0x277CC95F0]);
      v21 = sub_22944F9C4();
      v23 = sub_2293D4824(v21, v22, v26);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_2293D1000, v14, v15, "[%s] Deleted records with UUIDs: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AACCC00](v17, -1, -1);
      MEMORY[0x22AACCC00](v16, -1, -1);
    }
  }

  if (v12)
  {

    HDMCExperienceDaemonStore.setModel(_:)(a2);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v27);
}

void sub_22942986C(int a1, id a2)
{
  v2 = [a2 pregnancyModeSetupCompletionSet];
  sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
  sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
  v3 = sub_22944F9B4();

  v36 = MEMORY[0x277D84F90];
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_22944FB94();
    sub_22944FA04();
    v3 = v37;
    v4 = v38;
    v5 = v39;
    v6 = v40;
    v7 = v41;
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);
  }

  v11 = (v5 + 64) >> 6;
  v32 = v4;
  v33 = v3;
  while (v3 < 0)
  {
    if (!sub_22944FC04() || (swift_dynamicCast(), v16 = v35, v14 = v6, v15 = v7, !v35))
    {
LABEL_30:
      sub_229429864();
      return;
    }

LABEL_18:
    v17 = [v16 pregnancyAdjustedFeaturesSet];
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
    sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
    v18 = sub_22944F9B4();

    if (*(v18 + 16))
    {
      v34 = v15;
      v19 = *(v18 + 40);
      sub_22944F894();
      sub_22944FEC4();
      sub_22944F8C4();
      v20 = sub_22944FEE4();

      v21 = -1 << *(v18 + 32);
      v22 = v20 & ~v21;
      if ((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = *(*(v18 + 48) + 8 * v22);
          v25 = sub_22944F894();
          v27 = v26;
          if (v25 == sub_22944F894() && v27 == v28)
          {
            break;
          }

          v30 = sub_22944FE24();

          if (v30)
          {
            goto LABEL_29;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

LABEL_29:

        v4 = v32;
        v3 = v33;
        sub_22944FCD4();
        v31 = *(v36 + 16);
        sub_22944FD04();
        sub_22944FD14();
        sub_22944FCE4();
        v6 = v14;
        v7 = v34;
      }

      else
      {
LABEL_27:

        v6 = v14;
        v3 = v33;
        v7 = v34;
        v4 = v32;
      }
    }

    else
    {

      v6 = v14;
      v7 = v15;
    }
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_30;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t _s27HealthMenstrualCyclesDaemon37HDMCPregnancyFeatureAdjustmentManagerC10cleanDates4fromSo38HKMCPregnancyModeSetupCompletionRecordCAG_tF_0(void *a1)
{
  sub_2293D7574(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v101 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v108 = &v98 - v7;
  MEMORY[0x28223BE20](v6);
  v103 = &v98 - v8;
  v100 = sub_22944F0B4();
  v104 = *(v100 - 8);
  v9 = *(v104 + 64);
  MEMORY[0x28223BE20](v100);
  v109 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22944F054();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v105 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v116 = &v98 - v17;
  MEMORY[0x28223BE20](v16);
  v119 = &v98 - v18;
  sub_2293D7594(0, &qword_27D86E770, sub_22942AFD8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v117 = (&v98 - v24);
  v102 = a1;
  v25 = [a1 postPregnancyFeatureAdjustmentCompletionLog];
  type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
  v27 = v26;
  v106 = sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
  v107 = v27;
  v28 = sub_22944F7F4();

  v29 = *(v28 + 64);
  v111 = v28 + 64;
  v30 = 1 << *(v28 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v33 = (v30 + 63) >> 6;
  v113 = (v12 + 16);
  v114 = v12;
  v120 = (v12 + 32);
  v118 = (v12 + 8);
  v98 = v12 + 40;

  v34 = 0;
  v112 = v28;
  v110 = v28;
  v115 = v33;
  while (1)
  {
    v35 = v117;
    if (!v32)
    {
      if (v33 <= (v34 + 1))
      {
        v37 = (v34 + 1);
      }

      else
      {
        v37 = v33;
      }

      v38 = (v37 - 1);
      while (1)
      {
        v36 = (v34 + 1);
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v36 >= v33)
        {
          sub_22942AFD8();
          v45 = v56;
          (*(*(v56 - 8) + 56))(v23, 1, 1, v56);
          v32 = 0;
          goto LABEL_14;
        }

        v32 = *(v111 + 8 * v36);
        ++v34;
        if (v32)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

    v36 = v34;
LABEL_13:
    v39 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v40 = v39 | (v36 << 6);
    v41 = *(*(v112 + 48) + 8 * v40);
    v42 = v114;
    v43 = v119;
    (*(v114 + 16))(v119, *(v112 + 56) + *(v114 + 72) * v40, v11);
    sub_22942AFD8();
    v45 = v44;
    v46 = *(v44 + 48);
    *v23 = v41;
    (*(v42 + 32))(&v23[v46], v43, v11);
    (*(*(v45 - 8) + 56))(v23, 0, 1, v45);
    v47 = v41;
    v38 = v36;
LABEL_14:
    sub_22942B04C(v23, v35);
    sub_22942AFD8();
    if ((*(*(v45 - 8) + 48))(v35, 1, v45) == 1)
    {
      break;
    }

    v121 = v38;
    v48 = *v35;
    v49 = *v120;
    v50 = v35 + *(v45 + 48);
    v51 = v11;
    v52 = v116;
    (*v120)(v116, v50, v51);
    v53 = v119;
    sub_22944EFA4();
    sub_2293D5C5C(&qword_2813DC4A8, MEMORY[0x277CC9578]);
    v54 = sub_22944F854();
    v55 = *v118;
    (*v118)(v53, v51);
    if (v54)
    {
      v55(v52, v51);

      v34 = v121;
      v11 = v51;
      v33 = v115;
    }

    else
    {
      v57 = v49;
      if (qword_27D86E1E0 != -1)
      {
        swift_once();
      }

      v11 = v51;
      v58 = __swift_project_value_buffer(v51, qword_27D86E640);
      (*v113)(v105, v58, v51);
      v59 = v110;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = v59;
      v60 = v48;
      v62 = sub_22942707C(v48);
      v63 = v59[2];
      v64 = (v61 & 1) == 0;
      v65 = v63 + v64;
      if (__OFADD__(v63, v64))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        result = sub_22944FE54();
        __break(1u);
        return result;
      }

      v66 = v61;
      if (v59[3] >= v65)
      {
        v33 = v115;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_229427D30();
        }
      }

      else
      {
        sub_22942757C(v65, isUniquelyReferenced_nonNull_native);
        v67 = sub_22942707C(v60);
        v33 = v115;
        if ((v66 & 1) != (v68 & 1))
        {
          goto LABEL_45;
        }

        v62 = v67;
      }

      v110 = v122;
      if (v66)
      {
        (*(v114 + 40))(v122[7] + *(v114 + 72) * v62, v105, v11);

        v55(v116, v11);
        v34 = v121;
      }

      else
      {
        v122[(v62 >> 6) + 8] |= 1 << v62;
        *(v110[6] + 8 * v62) = v60;
        v57(v110[7] + *(v114 + 72) * v62, v105, v11);
        v55(v116, v11);
        v69 = v110[2];
        v70 = __OFADD__(v69, 1);
        v71 = v69 + 1;
        if (v70)
        {
          goto LABEL_44;
        }

        v110[2] = v71;
        v34 = v121;
      }
    }
  }

  v32 = v102;
  v121 = [v102 version];
  v72 = [v32 sampleUUID];
  sub_22944F094();

  if (qword_27D86E1E0 == -1)
  {
    goto LABEL_31;
  }

LABEL_42:
  swift_once();
LABEL_31:
  v73 = __swift_project_value_buffer(v11, qword_27D86E640);
  v74 = v114;
  v75 = *(v114 + 16);
  v76 = v103;
  v75(v103, v73, v11);
  v77 = *(v74 + 56);
  v77(v76, 0, 1, v11);
  v78 = [v32 configurationStepsReviewDate];
  v79 = v118;
  if (v78)
  {
    v80 = v101;
    v81 = v78;
    sub_22944F014();

    v77(v80, 0, 1, v11);
    sub_2293D83E8(v80, sub_2293D7574);
    v82 = v108;
    v75(v108, v73, v11);
    v79 = v118;
    v83 = 0;
  }

  else
  {
    v83 = 1;
    v84 = v101;
    v77(v101, 1, 1, v11);
    sub_2293D83E8(v84, sub_2293D7574);
    v82 = v108;
  }

  v77(v82, v83, 1, v11);
  v85 = [v32 pregnancyAdjustedFeaturesSet];
  sub_22944F9B4();

  v86 = sub_22944F074();
  v87 = *(v114 + 48);
  if (v87(v76, 1, v11) == 1)
  {
    v88 = 0;
  }

  else
  {
    v88 = sub_22944EFD4();
    (*v79)(v76, v11);
  }

  v89 = v100;
  v90 = v108;
  if (v87(v108, 1, v11) == 1)
  {
    v91 = 0;
  }

  else
  {
    v91 = sub_22944EFD4();
    (*v79)(v90, v11);
  }

  v92 = objc_allocWithZone(MEMORY[0x277D119C0]);
  v93 = sub_22944F9A4();

  v94 = sub_22944F7E4();

  v95 = v121;
  v96 = [v92 initWithVersion:v121 sampleUUID:v86 educationalStepsReviewDate:v88 configurationStepsReviewDate:v91 pregnancyAdjustedFeaturesSet:v93 postPregnancyFeatureAdjustmentCompletionLog:v94];

  (*(v104 + 8))(v109, v89);
  return v96;
}

void sub_22942A804()
{
  if (!qword_2813DC490)
  {
    sub_2293D7574(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DC490);
    }
  }
}

uint64_t sub_22942A888(uint64_t a1, uint64_t a2)
{
  sub_2293D7574(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_22942AAD0()
{
  if (!qword_2813DBDE0)
  {
    sub_22942AB2C();
    v0 = sub_22944FC64();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DBDE0);
    }
  }
}

unint64_t sub_22942AB2C()
{
  result = qword_2813DC3B8;
  if (!qword_2813DC3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DC3B8);
  }

  return result;
}

void sub_22942AB80()
{
  if (!qword_27D86E700)
  {
    v0 = sub_22944FC64();
    if (!v1)
    {
      atomic_store(v0, &qword_27D86E700);
    }
  }
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

void sub_22942AC5C()
{
  if (!qword_27D86E738)
  {
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(255);
    sub_22944F054();
    sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
    v0 = sub_22944FD94();
    if (!v1)
    {
      atomic_store(v0, &qword_27D86E738);
    }
  }
}

void sub_22942AD08()
{
  if (!qword_27D86E740)
  {
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(255);
    sub_2293D5C5C(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
    v0 = sub_22944FC64();
    if (!v1)
    {
      atomic_store(v0, &qword_27D86E740);
    }
  }
}

uint64_t sub_22942AD9C(uint64_t a1, uint64_t a2)
{
  sub_2293D7574(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22942AE00(char a1, void *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  sub_2293D7574(0);
  v8 = (*(*(v7 - 8) + 80) + 48) & ~*(*(v7 - 8) + 80);
  v9 = (*(*(v7 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (*(*(v5 - 8) + 80) + v10 + 8) & ~*(*(v5 - 8) + 80);
  v12 = (*(*(v5 - 8) + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_229421C3C(a1, a2, v2[4], v2[5], v2 + v8, *(v2 + v9), *(v2 + v10), v2 + v11, *(v2 + v12), *(v2 + v12 + 8), *(v2 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8)), v5, v6);
}

void sub_22942AF44()
{
  if (!qword_27D86E768)
  {
    sub_22944F0B4();
    sub_2293D5C5C(&qword_27D86E758, MEMORY[0x277CC95F0]);
    v0 = sub_22944FC64();
    if (!v1)
    {
      atomic_store(v0, &qword_27D86E768);
    }
  }
}

void sub_22942AFD8()
{
  if (!qword_27D86E778)
  {
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(255);
    sub_22944F054();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D86E778);
    }
  }
}

uint64_t sub_22942B04C(uint64_t a1, uint64_t a2)
{
  sub_2293D7594(0, &qword_27D86E770, sub_22942AFD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22942B130(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22942B194(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_22942B1F0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_2293D30DC(255, a3, a4);
    sub_2293D6A34(a5, a3, a4);
    v9 = sub_22944FC64();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t objectdestroy_17Tm()
{
  sub_2293D7574(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v0 + 24);

  v9 = sub_22944F054();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = *(v0 + v6);

  if (*(v0 + v7))
  {
    v12 = *(v0 + v7 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_22942B404(char a1, void *a2)
{
  sub_2293D7574(0);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_229420620(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + v9), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_22942B554()
{
  if (!qword_2813DBF90)
  {
    v0 = sub_22944F204();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DBF90);
    }
  }
}

void sub_22942B5AC()
{
  if (!qword_2813DBFA0)
  {
    sub_22944F0B4();
    v0 = sub_22944F204();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DBFA0);
    }
  }
}

unint64_t sub_22942B62C()
{
  result = qword_2813DC2A0;
  if (!qword_2813DC2A0)
  {
    sub_22942B7C4(255, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
    sub_22942B968(&qword_2813DC2F0, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DC2A0);
  }

  return result;
}

void sub_22942B6F0()
{
  if (!qword_2813DBF58)
  {
    v0 = sub_22944F654();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DBF58);
    }
  }
}

void sub_22942B750(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    sub_22942B7C4(255, a3, a4);
    a5();
    v7 = sub_22944F204();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_22942B7C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22944FB14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22942B818()
{
  result = qword_2813DC488;
  if (!qword_2813DC488)
  {
    sub_22942B7C4(255, &unk_2813DC498, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DC488);
  }

  return result;
}

void sub_22942B8A4()
{
  if (!qword_2813DBF88)
  {
    sub_22944F054();
    sub_22942B968(&qword_2813DC4A8, MEMORY[0x277CC9578]);
    v0 = sub_22944F4C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DBF88);
    }
  }
}

uint64_t sub_22942B968(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22942B9C4()
{
  sub_22942B554();
  if (v0 <= 0x3F)
  {
    sub_22942B5AC();
    if (v1 <= 0x3F)
    {
      sub_22942B750(319, &qword_2813DBF98, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord, sub_22942B62C);
      if (v2 <= 0x3F)
      {
        sub_22942B6F0();
        if (v3 <= 0x3F)
        {
          sub_22942B750(319, &qword_2813DBFA8, &unk_2813DC498, MEMORY[0x277CC9578], sub_22942B818);
          if (v4 <= 0x3F)
          {
            sub_22942B8A4();
            if (v5 <= 0x3F)
            {
              sub_22942BC34(319, &qword_2813DBF40, MEMORY[0x277CFB730]);
              if (v6 <= 0x3F)
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

void sub_22942BB84()
{
  sub_22944F054();
  if (v0 <= 0x3F)
  {
    sub_22942BC34(319, &qword_2813DBF38, MEMORY[0x277CFB4B0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22942BC34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22944F804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22942BCA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  sub_22943F22C(0, v1, 0);
  v2 = v28;
  v4 = -1 << *(a1 + 32);
  v27 = a1 + 56;
  result = sub_22944FB54();
  v6 = result;
  v7 = 0;
  v26 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v27 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = *(*(a1 + 48) + 8 * v6);
    result = sub_22944F894();
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = v13;
      v25 = result;
      sub_22943F22C((v14 > 1), v15 + 1, 1);
      v13 = v24;
      result = v25;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = result;
    *(v16 + 40) = v13;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(v27 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v26;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v9 = v26;
      v21 = (a1 + 64 + 8 * v10);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_2294314B8(v6, v11, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_2294314B8(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_22942BEC4(void *a1@<X0>, char *a2@<X8>)
{
  sub_22942B7C4(0, &qword_27D86E770, sub_22942AFD8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v148 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v146 = (&v123 - v8);
  sub_22942B8A4();
  v147 = v9;
  v124 = *(v9 - 8);
  v10 = *(v124 + 64);
  MEMORY[0x28223BE20](v9);
  v149 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22944F054();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v142 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22942B7C4(0, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
  v152 = v16;
  v17 = *(*(v16 - 1) + 8);
  v18 = MEMORY[0x28223BE20](v16);
  v131 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v128 = &v123 - v20;
  sub_22942B750(0, &qword_2813DBF98, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord, sub_22942B62C);
  v141 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v132 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v130 = &v123 - v26;
  sub_22942B7C4(0, &unk_2813DC498, MEMORY[0x277CC9578]);
  v140 = v27;
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v145 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v133 = &v123 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v129 = &v123 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v126 = &v123 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v123 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v123 - v40;
  v42 = sub_22944F0B4();
  v136 = *(v42 - 8);
  v137 = v42;
  v43 = *(v136 + 64);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v123 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v48 = &v123 - v47;
  v49 = [a1 version];
  v139 = [v49 integerValue];

  v50 = [a1 sampleUUID];
  v135 = v48;
  sub_22944F094();

  v51 = [a1 educationalStepsReviewDate];
  if (v51)
  {
    v52 = v51;
    sub_22944F014();

    v53 = 0;
  }

  else
  {
    v53 = 1;
  }

  v144 = v13;
  v54 = v13 + 56;
  v55 = *(v13 + 56);
  v56 = 1;
  v150 = v55;
  v151 = v54;
  v55(v41, v53, 1, v12);
  v57 = [a1 configurationStepsReviewDate];
  v138 = v41;
  if (v57)
  {
    v58 = v57;
    sub_22944F014();

    v56 = 0;
  }

  v150(v39, v56, 1, v12);
  v59 = [a1 pregnancyAdjustedFeaturesSet];
  type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
  sub_22942B968(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
  v127 = sub_22944F9B4();

  v60 = [a1 postPregnancyFeatureAdjustmentCompletionLog];
  v143 = sub_22944F7F4();

  v61 = type metadata accessor for CoherentExperienceSetupRecord(0);
  *&a2[*(v61 + 44)] = MEMORY[0x277D84F98];
  v153 = v139;
  sub_22944F214();
  (*(v136 + 16))(v46, v135, v137);
  v139 = v61;
  v62 = &a2[*(v61 + 20)];
  sub_22944F214();
  v63 = v126;
  sub_22942A888(v138, v126);
  v64 = v144;
  v65 = *(v144 + 48);
  v66 = v65(v63, 1, v12);
  v134 = v39;
  if (v66 == 1)
  {
    v67 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
    (*(*(v67 - 8) + 56))(v128, 1, 1, v67);
  }

  else
  {
    v68 = v142;
    (*(v64 + 32))(v142, v63, v12);
    v69 = v128;
    (*(v64 + 16))(v128, v68, v12);
    v70 = sub_229430EF0(MEMORY[0x277D84F90]);
    v71 = v68;
    v39 = v134;
    (*(v64 + 8))(v71, v12);
    v72 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
    *&v69[*(v72 + 20)] = v70;
    (*(*(v72 - 8) + 56))(v69, 0, 1, v72);
  }

  sub_22942B62C();
  v73 = v130;
  sub_22944F214();
  v74 = *(v22 + 32);
  v74(&a2[v139[6]], v73, v141);
  v75 = v129;
  sub_22942A888(v39, v129);
  if (v65(v75, 1, v12) == 1)
  {
    v76 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
    (*(*(v76 - 8) + 56))(v131, 1, 1, v76);
  }

  else
  {
    v77 = v144;
    v78 = v142;
    (*(v144 + 32))(v142, v75, v12);
    v79 = v131;
    (*(v77 + 16))(v131, v78, v12);
    v80 = sub_229430EF0(MEMORY[0x277D84F90]);
    (*(v77 + 8))(v78, v12);
    v81 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
    *&v79[*(v81 + 20)] = v80;
    (*(*(v81 - 8) + 56))(v79, 0, 1, v81);
  }

  v82 = v132;
  sub_22944F214();
  v83 = v139;
  v74(&a2[v139[7]], v82, v141);
  v84 = sub_22942BCA0(v127);

  v153 = v84;
  v85 = v83[8];
  sub_229431298(0, &qword_2813DBF20);
  sub_22942EDEC(&qword_27D86E8A8, &qword_2813DBF20);
  sub_22944F664();
  v86 = v143;
  v87 = v143[2];
  v125 = a1;
  if (v87 && (v88 = sub_22942707C(*MEMORY[0x277D11930]), (v89 & 1) != 0))
  {
    v90 = v133;
    (*(v144 + 16))(v133, v86[7] + *(v144 + 72) * v88, v12);
    v91 = 0;
  }

  else
  {
    v91 = 1;
    v90 = v133;
  }

  v150(v90, v91, 1, v12);
  v92 = v139[9];
  sub_22942B818();
  v133 = a2;
  sub_22944F214();
  sub_22942B968(&qword_2813DC4A8, MEMORY[0x277CC9578]);
  sub_22944F4B4();
  v93 = 0;
  v96 = v86[8];
  v95 = v86 + 8;
  v94 = v96;
  v97 = 1 << *(v95 - 32);
  v98 = -1;
  if (v97 < 64)
  {
    v98 = ~(-1 << v97);
  }

  v99 = v98 & v94;
  v100 = (v97 + 63) >> 6;
  v140 = v144 + 16;
  v141 = v12;
  v152 = (v144 + 32);
  if ((v98 & v94) != 0)
  {
    while (1)
    {
      v101 = v93;
      v102 = v148;
LABEL_27:
      v105 = __clz(__rbit64(v99));
      v99 &= v99 - 1;
      v106 = v105 | (v101 << 6);
      v107 = v144;
      v108 = *(v143[6] + 8 * v106);
      v12 = v141;
      v109 = v142;
      (*(v144 + 16))(v142, v143[7] + *(v144 + 72) * v106, v141);
      sub_22942AFD8();
      v111 = v110;
      v112 = *(v110 + 48);
      *v102 = v108;
      (*(v107 + 32))(&v102[v112], v109, v12);
      (*(*(v111 - 8) + 56))(v102, 0, 1, v111);
      v113 = v108;
      v104 = v101;
LABEL_28:
      v114 = v146;
      sub_229431608(v102, v146, &qword_27D86E770, sub_22942AFD8);
      sub_22942AFD8();
      if ((*(*(v111 - 8) + 48))(v114, 1, v111) == 1)
      {
        break;
      }

      v115 = *v114;
      v116 = *(v111 + 48);
      v117 = sub_22944F894();
      v118 = v114;
      v120 = v119;
      v121 = v145;
      (*v152)(v145, v118 + v116, v12);
      v150(v121, 0, 1, v12);
      v153 = v117;
      v154 = v120;
      sub_22944F4D4();

      v93 = v104;
      if (!v99)
      {
        goto LABEL_20;
      }
    }

    sub_2294312E4(v134);
    sub_2294312E4(v138);
    (*(v136 + 8))(v135, v137);
    (*(v124 + 32))(&v133[v139[10]], v149, v147);
  }

  else
  {
LABEL_20:
    if (v100 <= v93 + 1)
    {
      v103 = v93 + 1;
    }

    else
    {
      v103 = v100;
    }

    v104 = v103 - 1;
    v102 = v148;
    while (1)
    {
      v101 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
        break;
      }

      if (v101 >= v100)
      {
        sub_22942AFD8();
        v111 = v122;
        (*(*(v122 - 8) + 56))(v102, 1, 1, v122);
        v99 = 0;
        goto LABEL_28;
      }

      v99 = v95[v101];
      ++v93;
      if (v99)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22942CDB4()
{
  strcpy(&xmmword_27D86FE60, "modelVersion");
  BYTE13(xmmword_27D86FE60) = 0;
  HIWORD(xmmword_27D86FE60) = -5120;
  qword_27D86FE70 = swift_getKeyPath();
  unk_27D86FE78 = 0x5555656C706D6173;
  *&xmmword_27D86FE80 = 0xEA00000000004449;
  *(&xmmword_27D86FE80 + 1) = swift_getKeyPath();
  unk_27D86FE90 = 0xD000000000000020;
  qword_27D86FE98 = 0x8000000229458C80;
  *&xmmword_27D86FEA0 = swift_getKeyPath();
  *(&xmmword_27D86FEA0 + 1) = 0xD000000000000022;
  qword_27D86FEB0 = 0x8000000229458CB0;
  qword_27D86FEB8 = swift_getKeyPath();
  unk_27D86FEC0 = 0xD00000000000001CLL;
  qword_27D86FEC8 = 0x8000000229458CE0;
  qword_27D86FED0 = swift_getKeyPath();
  unk_27D86FED8 = 0xD00000000000002CLL;
  *&xmmword_27D86FEE0 = 0x8000000229458D00;
  *(&xmmword_27D86FEE0 + 1) = swift_getKeyPath();
  unk_27D86FEF0 = 0xD00000000000002BLL;
  qword_27D86FEF8 = 0x8000000229458D30;
  result = swift_getKeyPath();
  qword_27D86FF00 = result;
  return result;
}

void sub_22942CF00(uint64_t a1@<X8>)
{
  v127 = a1;
  sub_22942B7C4(0, &qword_27D86E770, sub_22942AFD8);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v138 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v134 = (&v113 - v5);
  sub_22942B8A4();
  v135 = v6;
  v117 = *(v6 - 8);
  v7 = *(v117 + 64);
  MEMORY[0x28223BE20](v6);
  v139 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22944F054();
  v132 = *(v9 - 8);
  v10 = v132;
  v11 = *(v132 + 64);
  MEMORY[0x28223BE20](v9);
  v130 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22942B7C4(0, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
  v123 = v13;
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v122 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v120 = &v113 - v17;
  sub_22942B750(0, &qword_2813DBF98, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord, sub_22942B62C);
  v129 = v18;
  v140 = *(v18 - 8);
  v19 = *(v140 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v121 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v119 = &v113 - v22;
  sub_22942B7C4(0, &unk_2813DC498, MEMORY[0x277CC9578]);
  v128 = v23;
  v24 = *(*(v23 - 1) + 8);
  v25 = MEMORY[0x28223BE20](v23);
  v133 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v124 = &v113 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v118 = &v113 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v113 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v113 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v113 - v37;
  v39 = sub_22944F0B4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v113 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = &v113 - v45;
  sub_22944F0A4();
  v47 = *(v10 + 56);
  v47(v38, 1, 1, v9);
  v126 = v36;
  v136 = v47;
  v137 = v10 + 56;
  v47(v36, 1, 1, v9);
  v48 = v127;
  v131 = sub_2294310C4(MEMORY[0x277D84F90]);
  v49 = type metadata accessor for CoherentExperienceSetupRecord(0);
  *(v48 + v49[11]) = MEMORY[0x277D84F98];
  v141 = 2;
  sub_22944F214();
  v114 = v40;
  v50 = v40;
  v51 = v130;
  v52 = *(v50 + 16);
  v113 = v46;
  v52(v44, v46, v39);
  v53 = v48 + v49[5];
  v115 = v39;
  sub_22944F214();
  v116 = v38;
  sub_22942A888(v38, v33);
  v54 = *(v132 + 48);
  if (v54(v33, 1, v9) == 1)
  {
    v55 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
    (*(*(v55 - 8) + 56))(v120, 1, 1, v55);
  }

  else
  {
    v56 = v132;
    (*(v132 + 32))(v51, v33, v9);
    v57 = v120;
    (*(v56 + 16))(v120, v51, v9);
    v58 = sub_229430EF0(MEMORY[0x277D84F90]);
    (*(v56 + 8))(v51, v9);
    v59 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
    *&v57[*(v59 + 20)] = v58;
    (*(*(v59 - 8) + 56))(v57, 0, 1, v59);
  }

  v60 = v9;
  sub_22942B62C();
  v61 = v119;
  sub_22944F214();
  v62 = *(v140 + 32);
  v63 = v48 + v49[6];
  v140 += 32;
  v62(v63, v61, v129);
  v64 = v118;
  sub_22942A888(v126, v118);
  v65 = v54(v64, 1, v60);
  v66 = v122;
  v125 = v49;
  if (v65 == 1)
  {
    v67 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
    (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
  }

  else
  {
    v68 = v132;
    v69 = v130;
    (*(v132 + 32))(v130, v64, v60);
    (*(v68 + 16))(v66, v69, v60);
    v70 = sub_229430EF0(MEMORY[0x277D84F90]);
    v71 = v68;
    v49 = v125;
    (*(v71 + 8))(v69, v60);
    v72 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
    *&v66[*(v72 + 20)] = v70;
    (*(*(v72 - 8) + 56))(v66, 0, 1, v72);
  }

  v73 = v121;
  sub_22944F214();
  v62(v48 + v49[7], v73, v129);
  v141 = sub_22942BCA0(MEMORY[0x277D84FA0]);
  v74 = v49[8];
  sub_229431298(0, &qword_2813DBF20);
  sub_22942EDEC(&qword_27D86E8A8, &qword_2813DBF20);
  sub_22944F664();
  v75 = v131;
  if (v131[2])
  {
    v76 = sub_22942707C(*MEMORY[0x277D11930]);
    v77 = v124;
    if (v78)
    {
      (*(v132 + 16))(v124, v75[7] + *(v132 + 72) * v76, v60);
      v79 = 0;
    }

    else
    {
      v79 = 1;
    }
  }

  else
  {
    v79 = 1;
    v77 = v124;
  }

  v136(v77, v79, 1, v60);
  v80 = v49[9];
  sub_22942B818();
  sub_22944F214();
  sub_22942B968(&qword_2813DC4A8, MEMORY[0x277CC9578]);
  v140 = v60;
  sub_22944F4B4();
  v81 = 0;
  v82 = v75 + 8;
  v83 = 1 << *(v75 + 32);
  v84 = -1;
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  v85 = v84 & v75[8];
  v86 = (v83 + 63) >> 6;
  v87 = (v132 + 32);
  v128 = (v132 + 32);
  v129 = v132 + 16;
  if (v85)
  {
    while (1)
    {
      v88 = v81;
      v89 = v138;
LABEL_23:
      v92 = __clz(__rbit64(v85));
      v85 &= v85 - 1;
      v93 = v92 | (v88 << 6);
      v94 = v132;
      v95 = *(v131[6] + 8 * v93);
      v96 = v130;
      v97 = v140;
      (*(v132 + 16))(v130, v131[7] + *(v132 + 72) * v93, v140);
      sub_22942AFD8();
      v99 = v98;
      v100 = *(v98 + 48);
      *v89 = v95;
      v101 = v96;
      v87 = v128;
      (*(v94 + 32))(&v89[v100], v101, v97);
      (*(*(v99 - 8) + 56))(v89, 0, 1, v99);
      v102 = v95;
      v91 = v88;
LABEL_24:
      v103 = v134;
      sub_229431608(v89, v134, &qword_27D86E770, sub_22942AFD8);
      sub_22942AFD8();
      if ((*(*(v99 - 8) + 48))(v103, 1, v99) == 1)
      {
        break;
      }

      v104 = *v103;
      v105 = *(v99 + 48);
      v106 = sub_22944F894();
      v108 = v107;
      v109 = v103 + v105;
      v110 = v133;
      v111 = v140;
      (*v87)(v133, v109, v140);
      v136(v110, 0, 1, v111);
      v141 = v106;
      v142 = v108;
      sub_22944F4D4();

      v81 = v91;
      if (!v85)
      {
        goto LABEL_16;
      }
    }

    sub_2294312E4(v126);
    sub_2294312E4(v116);
    (*(v114 + 8))(v113, v115);
    (*(v117 + 32))(v127 + v125[10], v139, v135);
  }

  else
  {
LABEL_16:
    if (v86 <= v81 + 1)
    {
      v90 = v81 + 1;
    }

    else
    {
      v90 = v86;
    }

    v91 = v90 - 1;
    v89 = v138;
    while (1)
    {
      v88 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        break;
      }

      if (v88 >= v86)
      {
        sub_22942AFD8();
        v99 = v112;
        (*(*(v112 - 8) + 56))(v89, 1, 1, v112);
        v85 = 0;
        goto LABEL_24;
      }

      v85 = v82[v88];
      ++v81;
      if (v85)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22942DC7C()
{
  v1 = (*v0 << 63) >> 63;
  sub_22944FEC4();
  MEMORY[0x22AACBD40](v1);
  return sub_22944FEE4();
}

uint64_t sub_22942DCF8()
{
  v1 = (*v0 << 63) >> 63;
  sub_22944FEC4();
  MEMORY[0x22AACBD40](v1);
  return sub_22944FEE4();
}

void *sub_22942DD40@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == -1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_22942DD70()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x6974656C706D6F63;
  }

  *v0;
  return result;
}

uint64_t sub_22942DDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974656C706D6F63 && a2 == 0xEE00657461446E6FLL;
  if (v6 || (sub_22944FE24() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000229458D60 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22944FE24();

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

uint64_t sub_22942DEB8@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == -1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_22942DEE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942EC4C();
  v5 = sub_22942ECA4();

  return MEMORY[0x28214E5E0](a1, a2, v4, v5);
}

uint64_t sub_22942DF3C(uint64_t a1)
{
  v2 = sub_22942ECA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22942DF78(uint64_t a1)
{
  v2 = sub_22942ECA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22942DFB4(void *a1)
{
  v3 = v1;
  sub_2294317AC(0, &qword_27D86E910, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22942ECA4();
  sub_22944FF04();
  v15 = 0;
  sub_22944F054();
  sub_22942B968(&qword_27D86E918, MEMORY[0x277CC9578]);
  sub_22944FDC4();
  if (!v2)
  {
    v14 = *(v3 + *(type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0) + 20));
    v13[15] = 1;
    sub_22942BC34(0, &qword_2813DBF38, MEMORY[0x277CFB4B0]);
    sub_229431810();
    sub_22944FDC4();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_22942E1C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = sub_22944F054();
  v27 = *(v30 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2294317AC(0, &qword_27D86E8F0, MEMORY[0x277D844C8]);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22942ECA4();
  sub_22944FEF4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v25 = v12;
  v17 = v15;
  v18 = v27;
  v33 = 0;
  sub_22942B968(&qword_27D86E8F8, MEMORY[0x277CC9578]);
  v19 = v30;
  v20 = v28;
  sub_22944FDB4();
  v21 = *(v18 + 32);
  v24 = v17;
  v21(v17, v6, v19);
  sub_22942BC34(0, &qword_2813DBF38, MEMORY[0x277CFB4B0]);
  v32 = 1;
  sub_229431674();
  sub_22944FDB4();
  (*(v29 + 8))(v11, v20);
  v22 = v24;
  *(v24 + *(v25 + 20)) = v31;
  sub_229431534(v22, v26, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_229431750(v22);
}

uint64_t sub_22942E580(uint64_t a1)
{
  sub_22944FEC4();
  sub_22944F054();
  sub_22942B968(&qword_27D86E8C8, MEMORY[0x277CC9578]);
  sub_22944F824();
  sub_229430A9C(v4, *(v1 + *(a1 + 20)));
  return sub_22944FEE4();
}

uint64_t sub_22942E624(__int128 *a1, uint64_t a2)
{
  sub_22944F054();
  sub_22942B968(&qword_27D86E8C8, MEMORY[0x277CC9578]);
  sub_22944F824();
  v5 = *(v2 + *(a2 + 20));

  return sub_229430A9C(a1, v5);
}

uint64_t sub_22942E6BC(uint64_t a1, uint64_t a2)
{
  sub_22944FEC4();
  sub_22944F054();
  sub_22942B968(&qword_27D86E8C8, MEMORY[0x277CC9578]);
  sub_22944F824();
  sub_229430A9C(v5, *(v2 + *(a2 + 20)));
  return sub_22944FEE4();
}

uint64_t sub_22942E75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_22944F004() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_2294305D0(v7, v8);
}

uint64_t sub_22942E838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22942B968(&qword_2813DC2F0, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
  v7 = sub_22942B968(&qword_27D86E7E0, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);

  return MEMORY[0x28214E328](a1, a2, a3, v6, v7);
}

uint64_t sub_22942E9FC(uint64_t a1)
{
  v2 = sub_22942B968(&qword_27D86E930, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);

  return MEMORY[0x28214DE08](a1, v2);
}

unint64_t sub_22942EB9C()
{
  result = qword_27D86E7A0;
  if (!qword_27D86E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E7A0);
  }

  return result;
}

unint64_t sub_22942EBF4()
{
  result = qword_27D86E7A8;
  if (!qword_27D86E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E7A8);
  }

  return result;
}

unint64_t sub_22942EC4C()
{
  result = qword_27D86E7B0;
  if (!qword_27D86E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E7B0);
  }

  return result;
}

unint64_t sub_22942ECA4()
{
  result = qword_27D86E7B8;
  if (!qword_27D86E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E7B8);
  }

  return result;
}

unint64_t sub_22942ECFC()
{
  result = qword_27D86E7C0;
  if (!qword_27D86E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E7C0);
  }

  return result;
}

unint64_t sub_22942ED54()
{
  result = qword_27D86E7C8;
  if (!qword_27D86E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E7C8);
  }

  return result;
}

uint64_t sub_22942EDEC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_229431298(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22942EF70(uint64_t a1)
{
  v2 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord);

  return MEMORY[0x28214DB50](a1, v2);
}

uint64_t sub_22942EFEC(uint64_t a1, uint64_t a2, int *a3)
{
  if ((sub_22944F1D4() & 1) == 0)
  {
    return 0;
  }

  v6 = a3[5];
  sub_22944F0B4();
  if ((sub_22944F1D4() & 1) == 0)
  {
    return 0;
  }

  v7 = a3[6];
  sub_22942B7C4(0, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
  sub_22942B62C();
  if ((sub_22944F1D4() & 1) == 0)
  {
    return 0;
  }

  v8 = a3[7];
  if ((sub_22944F1D4() & 1) == 0)
  {
    return 0;
  }

  v9 = a3[8];
  if ((sub_22944F634() & 1) == 0)
  {
    return 0;
  }

  v10 = a3[10];
  v11 = sub_22944F054();
  v12 = sub_22942B968(&qword_2813DC4A8, MEMORY[0x277CC9578]);
  v13 = MEMORY[0x277D837D0];
  v14 = MEMORY[0x277CFB7D0];
  v15 = MEMORY[0x277D837E0];
  v16 = MEMORY[0x277CFB488];

  return MEMORY[0x28214DC18](a1 + v10, a2 + v10, v13, v11, v14, v15, v16, v12);
}

__n128 sub_22942F194@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27D86E1E8 != -1)
  {
    swift_once();
  }

  v23 = xmmword_27D86FEE0;
  *v24 = *&qword_27D86FEF0;
  *&v24[16] = qword_27D86FF00;
  *&v20[16] = xmmword_27D86FEA0;
  v21 = *&qword_27D86FEB0;
  *v22 = *&qword_27D86FEC0;
  *&v22[16] = *&qword_27D86FED0;
  *v18 = xmmword_27D86FE60;
  *&v18[16] = *&qword_27D86FE70;
  v19 = xmmword_27D86FE80;
  *v20 = *&qword_27D86FE90;
  v2 = xmmword_27D86FE60;
  v3 = unk_27D86FE78;
  v4 = qword_27D86FE90;
  v5 = *(&xmmword_27D86FEA0 + 1);
  v6 = qword_27D86FEC0;
  v7 = unk_27D86FED8;
  v8 = qword_27D86FEF0;
  v10 = *&v18[8];
  v11 = xmmword_27D86FE80;
  v12 = *&v20[8];
  v13 = *&qword_27D86FEB0;
  v14 = *&v22[8];
  v15 = xmmword_27D86FEE0;
  v16 = *&v24[8];
  sub_229431534(v18, v17, sub_229430234);
  *a1 = v2;
  *(a1 + 8) = v10;
  *(a1 + 24) = v3;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 56) = v12;
  *(a1 + 72) = v5;
  *(a1 + 80) = v13;
  *(a1 + 96) = v6;
  *(a1 + 104) = v14;
  *(a1 + 120) = v7;
  *(a1 + 128) = v15;
  *(a1 + 144) = v8;
  result = v16;
  *(a1 + 152) = v16;
  return result;
}

uint64_t sub_22942F2F8(uint64_t a1)
{
  v2 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord);

  return MEMORY[0x28214DBD0](a1, v2);
}

uint64_t sub_22942F370(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*sub_22942F3A8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_22942F3D4(uint64_t a1)
{
  v2 = sub_22942B968(&qword_2813DC230, type metadata accessor for CoherentExperienceSetupRecord);

  return MEMORY[0x28214E298](a1, v2);
}

uint64_t sub_22942F440(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord);

  return MEMORY[0x28214DBB8](a1, a2, v4);
}

uint64_t sub_22942F4BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord);

  return MEMORY[0x28214DB60](a1, a2, v4);
}

uint64_t sub_22942F540(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord);

  return MEMORY[0x28214DB88](a1, a2, v4);
}

uint64_t sub_22942F5BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord);

  return MEMORY[0x28214DBC8](a1, a2, v4);
}

uint64_t sub_22942F638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord);

  return MEMORY[0x28214DB90](a1, a2, a3, v6);
}

uint64_t sub_22942F6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord);

  return MEMORY[0x28214DBC0](a1, a2, v4);
}

uint64_t sub_22942F748(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord);

  return MEMORY[0x28214DB98](a1, a2, v4);
}

uint64_t sub_22942F7C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord);

  return MEMORY[0x28214DB78](a1, a2, v4);
}

uint64_t sub_22942F848(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord);

  return MEMORY[0x28214DB70](a1, a2, v4);
}

uint64_t sub_22942F8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord);

  return MEMORY[0x28214DB58](a1, a2, a3, v6);
}

uint64_t sub_22942F960(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord);

  return MEMORY[0x28214DB40](a1, a2, v4);
}

uint64_t sub_22942F9DC(uint64_t a1)
{
  v2 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord);

  return MEMORY[0x28214DB68](a1, v2);
}

uint64_t sub_22942FA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord);

  return MEMORY[0x28214DB48](a1, a2, v4);
}

uint64_t sub_22942FAC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord);

  return MEMORY[0x28214DBA0](a1, a2, v4);
}

void sub_22942FB48()
{
  sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord);

  JUMPOUT(0x22AACB290);
}

unint64_t sub_22942FE3C()
{
  result = qword_27D86E800;
  if (!qword_27D86E800)
  {
    sub_22942B750(255, &qword_2813DBF98, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord, sub_22942B62C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E800);
  }

  return result;
}

unint64_t sub_22942FF18()
{
  result = qword_27D86E810;
  if (!qword_27D86E810)
  {
    sub_22942B750(255, &qword_2813DBFA8, &unk_2813DC498, MEMORY[0x277CC9578], sub_22942B818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E810);
  }

  return result;
}

void sub_2294301A0()
{
  if (!qword_27D86E830)
  {
    type metadata accessor for CoherentExperienceSetupRecord(255);
    sub_22942B968(&qword_27D86E838, type metadata accessor for CoherentExperienceSetupRecord);
    v0 = sub_22944F5B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D86E830);
    }
  }
}

void sub_229430234()
{
  if (!qword_27D86E840)
  {
    sub_229430568(255, &qword_27D86E848, &qword_27D86E850, sub_22942B554);
    sub_229430568(255, &qword_27D86E858, &qword_27D86E860, sub_22942B5AC);
    sub_22943135C(255, &qword_27D86E868, sub_229430428);
    sub_229430568(255, &qword_27D86E878, &qword_27D86E880, sub_22942B6F0);
    sub_22943135C(255, &qword_27D86E888, sub_2294304C8);
    sub_229430568(255, &qword_27D86E898, &qword_27D86E8A0, sub_22942B8A4);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27D86E840);
    }
  }
}

void sub_2294303B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for CoherentExperienceSetupRecord(255);
    a3(255);
    v5 = sub_22944FD24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_229430428()
{
  if (!qword_27D86E870)
  {
    type metadata accessor for CoherentExperienceSetupRecord(255);
    sub_22942B750(255, &qword_2813DBF98, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord, sub_22942B62C);
    v0 = sub_22944FD24();
    if (!v1)
    {
      atomic_store(v0, &qword_27D86E870);
    }
  }
}

void sub_2294304C8()
{
  if (!qword_27D86E890)
  {
    type metadata accessor for CoherentExperienceSetupRecord(255);
    sub_22942B750(255, &qword_2813DBFA8, &unk_2813DC498, MEMORY[0x277CC9578], sub_22942B818);
    v0 = sub_22944FD24();
    if (!v1)
    {
      atomic_store(v0, &qword_27D86E890);
    }
  }
}

void sub_229430568(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2294303B8(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2294305D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22944F1C4();
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v48 - v9;
  sub_22942B7C4(0, &qword_27D86E8D0, sub_22943159C);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  result = MEMORY[0x28223BE20](v12);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v51 = (&v48 - v14);
  v52 = v15;
  v16 = 0;
  v49 = a1;
  v17 = *(a1 + 64);
  v48 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v53 = v57 + 16;
  v54 = (v57 + 32);
  v50 = (v57 + 8);
  while (1)
  {
    v22 = v52;
    if (!v20)
    {
      break;
    }

    v55 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = *(*(v49 + 48) + 8 * v23);
    v30 = v56;
    v29 = v57;
    (*(v57 + 16))(v56, *(v49 + 56) + *(v57 + 72) * v23, v4);
    sub_22943159C();
    v32 = v31;
    v33 = *(v31 + 48);
    *v22 = v28;
    (*(v29 + 32))(&v22[v33], v30, v4);
    (*(*(v32 - 8) + 56))(v22, 0, 1, v32);
LABEL_17:
    v34 = v22;
    v35 = v51;
    sub_229431608(v34, v51, &qword_27D86E8D0, sub_22943159C);
    sub_22943159C();
    v36 = (*(*(v32 - 8) + 48))(v35, 1, v32);
    v37 = v36 == 1;
    if (v36 == 1)
    {
      return v37;
    }

    v38 = *(v32 + 48);
    v39 = *v35;
    (*v54)(v8, v35 + v38, v4);
    v40 = sub_229427038(v39);
    if ((v41 & 1) == 0)
    {
      (*v50)(v8, v4);
      return 0;
    }

    v42 = v56;
    v43 = v57;
    (*(v57 + 16))(v56, *(a2 + 56) + *(v57 + 72) * v40, v4);
    sub_22942B968(&qword_27D86E8E8, MEMORY[0x277CFB4B0]);
    v44 = sub_22944F854();
    v45 = a2;
    v46 = *(v43 + 8);
    v46(v42, v4);
    result = (v46)(v8, v4);
    a2 = v45;
    v20 = v55;
    if ((v44 & 1) == 0)
    {
      return v37;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      sub_22943159C();
      v32 = v47;
      (*(*(v47 - 8) + 56))(v22, 1, 1, v47);
      v55 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v48 + 8 * v26);
    ++v16;
    if (v27)
    {
      v55 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_229430A9C(__int128 *a1, uint64_t a2)
{
  v51 = sub_22944F1C4();
  v4 = *(v51 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v51);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22942B7C4(0, &qword_27D86E8D0, sub_22943159C);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v10);
  v49 = v44 - v12;
  v13 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a2 + 64);
  v17 = (v14 + 63) >> 6;
  v44[1] = v4 + 16;
  v45 = v4;
  v50 = (v4 + 32);
  v18 = (v4 + 8);
  v19 = v11;
  v46 = a2;
  v47 = v18;

  v21 = 0;
  v48 = v19;
  v52 = 0;
  if (v16)
  {
    while (1)
    {
      v22 = v21;
LABEL_12:
      v26 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v27 = v26 | (v22 << 6);
      v28 = v45;
      v29 = *(*(v46 + 48) + 8 * v27);
      v30 = v51;
      (*(v45 + 16))(v7, *(v46 + 56) + *(v45 + 72) * v27, v51);
      sub_22943159C();
      v32 = v31;
      v33 = *(v31 + 48);
      v34 = v48;
      *v48 = v29;
      v35 = *(v28 + 32);
      v36 = v34;
      v35(&v34[v33], v7, v30);
      (*(*(v32 - 8) + 56))(v36, 0, 1, v32);
      v24 = v22;
      v37 = v36;
      v25 = v49;
LABEL_13:
      sub_229431608(v37, v25, &qword_27D86E8D0, sub_22943159C);
      sub_22943159C();
      if ((*(*(v32 - 8) + 48))(v25, 1, v32) == 1)
      {
        break;
      }

      v38 = *v25;
      v39 = v25 + *(v32 + 48);
      v40 = v51;
      (*v50)(v7, v39, v51);
      v41 = a1[3];
      v55 = a1[2];
      v56 = v41;
      v57 = *(a1 + 8);
      v42 = a1[1];
      v53 = *a1;
      v54 = v42;
      MEMORY[0x22AACBD40](v38);
      sub_22942B968(&qword_27D86E8E0, MEMORY[0x277CFB4B0]);
      sub_22944F824();
      (*v47)(v7, v40);
      result = sub_22944FEE4();
      v21 = v24;
      v52 ^= result;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x22AACBD40](v52);
  }

  else
  {
LABEL_5:
    if (v17 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v17;
    }

    v24 = v23 - 1;
    v25 = v49;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v17)
      {
        sub_22943159C();
        v32 = v43;
        v37 = v48;
        (*(*(v43 - 8) + 56))(v48, 1, 1, v43);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v13 + 8 * v22);
      ++v21;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_229430EF0(uint64_t a1)
{
  sub_22943135C(0, &qword_27D86E8B0, MEMORY[0x277CFB4B0]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = (&v22 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2294313C8();
    v9 = sub_22944FD84();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    while (1)
    {
      sub_229431430(v11, v7);
      v13 = *v7;
      result = sub_229427038(*v7);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v13;
      v17 = v9[7];
      v18 = sub_22944F1C4();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v16, v7 + v10, v18);
      v19 = v9[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v9[2] = v21;
      v11 += v12;
      if (!--v8)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2294310C4(uint64_t a1)
{
  sub_2294314C4();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_22942AC5C();
    v9 = sub_22944FD84();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_229431534(v11, v7, sub_2294314C4);
      v13 = *v7;
      result = sub_22942707C(*v7);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v13;
      v17 = v9[7];
      v18 = sub_22944F054();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v16, v7 + v10, v18);
      v19 = v9[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v9[2] = v21;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_229431298(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22944F984();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2294312E4(uint64_t a1)
{
  sub_22942B7C4(0, &unk_2813DC498, MEMORY[0x277CC9578]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22943135C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2294313C8()
{
  if (!qword_27D86E8B8)
  {
    sub_22944F1C4();
    v0 = sub_22944FD94();
    if (!v1)
    {
      atomic_store(v0, &qword_27D86E8B8);
    }
  }
}

uint64_t sub_229431430(uint64_t a1, uint64_t a2)
{
  sub_22943135C(0, &qword_27D86E8B0, MEMORY[0x277CFB4B0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2294314B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_2294314C4()
{
  if (!qword_27D86E8C0)
  {
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(255);
    sub_22944F054();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D86E8C0);
    }
  }
}

uint64_t sub_229431534(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22943159C()
{
  if (!qword_27D86E8D8)
  {
    sub_22944F1C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D86E8D8);
    }
  }
}

uint64_t sub_229431608(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_22942B7C4(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_229431674()
{
  result = qword_27D86E900;
  if (!qword_27D86E900)
  {
    sub_22942BC34(255, &qword_2813DBF38, MEMORY[0x277CFB4B0]);
    sub_22942B968(&qword_27D86E908, MEMORY[0x277CFB4B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E900);
  }

  return result;
}

uint64_t sub_229431750(uint64_t a1)
{
  v2 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2294317AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22942ECA4();
    v7 = a3(a1, &type metadata for CoherentExperienceSetupRecord.CompletionRecord.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_229431810()
{
  result = qword_27D86E920;
  if (!qword_27D86E920)
  {
    sub_22942BC34(255, &qword_2813DBF38, MEMORY[0x277CFB4B0]);
    sub_22942B968(&qword_27D86E928, MEMORY[0x277CFB4B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E920);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoherentExperienceSetupRecord.CompletionRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CoherentExperienceSetupRecord.CompletionRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_229431A60()
{
  result = qword_27D86E938;
  if (!qword_27D86E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E938);
  }

  return result;
}

uint64_t String.init<A>(describingSensitive:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2293D47B8();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t static HDCategorySampleEntity.deletedPregnancySamples(profile:predicate:)(uint64_t a1, uint64_t a2)
{
  v5[2] = &v6;
  v6 = MEMORY[0x277D84F90];
  sub_2293D5FC4(a1, a2, 1, sub_22942A950, v5);
  v3 = v6;
  if (v2)
  {
  }

  return v3;
}

uint64_t HDMCPregnancyStateFactory.init(profile:experienceDaemonStore:todayDayIndex:calendar:gregorianCalendar:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v37 = a4;
  v36 = a2;
  v35 = sub_22944F054();
  v11 = *(v35 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v35);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HDMCPregnancyStateFactory();
  v16 = v15[9];
  v34 = a6;
  *(a6 + v16) = 0x4167124000000000;
  v17 = objc_opt_self();
  v18 = sub_22944F0F4();
  v19 = [v17 hk:a3 dateOnDayIndex:12 atHour:v18 calendar:?];

  sub_22944F014();
  sub_2293D30DC(0, &unk_2813DBE70, 0x277D105E8);
  _sSo17HDSQLitePredicateC27HealthMenstrualCyclesDaemonE26predicateForOngoingSamples2onABSi_tFZ_0(a3);
  v21 = v20;
  v22 = static HDCategorySampleEntity.pregnancySamples(profile:predicate:)(a1, v20);
  if (v6)
  {

    v23 = sub_22944F134();
    v24 = *(*(v23 - 8) + 8);
    v24(a5, v23);
    v24(v37, v23);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    return (*(v11 + 8))(v14, v35);
  }

  else
  {
    v26 = v22;

    *v34 = v26;
    v27 = _sSo17HDSQLitePredicateC27HealthMenstrualCyclesDaemonE45predicateForSamplesThatEndedInTheTwelveMonths6beforeAB10Foundation4DateV_tFZ_0(v14);
    v28 = static HDCategorySampleEntity.pregnancySamples(profile:predicate:)(a1, v27);
    (*(v11 + 8))(v14, v35);

    v29 = v34;
    v34[1] = v28;
    sub_2293D78F8(v36, (v29 + 2));
    v30 = v15[7];
    v31 = sub_22944F134();
    v32 = *(*(v31 - 8) + 32);
    v32(v29 + v30, v37, v31);
    return (v32)(v29 + v15[8], a5, v31);
  }
}

uint64_t sub_229431F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_2293D7574(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22944F0B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HKShowSensitiveLogItems())
  {
    v46 = v9;
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v15 = sub_22944F174();
    __swift_project_value_buffer(v15, qword_2813DBFB8);
    v16 = *(v11 + 16);
    v45 = a1;
    v16(v14, a1, v10);
    v17 = sub_22944F154();
    v18 = sub_22944FA84();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v44 = a2;
      v20 = v19;
      v21 = swift_slowAlloc();
      v49 = v21;
      *v20 = 136315138;
      v47 = 0;
      v48 = 0xE000000000000000;
      sub_22944FC84();
      MEMORY[0x22AACB740](91, 0xE100000000000000);
      MEMORY[0x22AACB740](0xD000000000000019, 0x80000002294550D0);
      MEMORY[0x22AACB740](0xD000000000000035, 0x8000000229458DF0);
      v22 = sub_22944F064();
      MEMORY[0x22AACB740](v22);

      sub_22944FE34();
      v23 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_22944FB34();
      swift_unknownObjectRelease();
      v24 = sub_22944F8A4();
      v26 = v25;
      (*(v11 + 8))(v14, v10);
      v27 = sub_2293D4824(v24, v26, &v49);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_2293D1000, v17, v18, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x22AACCC00](v21, -1, -1);
      v28 = v20;
      a2 = v44;
      MEMORY[0x22AACCC00](v28, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    a1 = v45;
    v9 = v46;
  }

  v29 = v3[5];
  v30 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v29);
  v33 = (*(v30 + 16))(v29, v30);
  v34 = [v33 pregnancyModeSetupCompletionSet];
  sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
  sub_2293D6A34(&qword_2813DBE30, &qword_2813DBE38, 0x277D119C0);
  v35 = sub_22944F9B4();

  MEMORY[0x28223BE20](v36);
  *(&v43 - 2) = a1;
  sub_22941EDE4(sub_229433DD0, (&v43 - 4), v35);
  v38 = v37;

  if (v38)
  {
    v39 = [v38 educationalStepsReviewDate];
    if (v39)
    {
      v40 = v39;
      sub_22944F014();

      v41 = 0;
      v33 = v40;
    }

    else
    {
      v41 = 1;
    }

    v42 = sub_22944F054();
    (*(*(v42 - 8) + 56))(v9, v41, 1, v42);
    return sub_22942AD9C(v9, a2);
  }

  else
  {

    v31 = sub_22944F054();
    return (*(*(v31 - 8) + 56))(a2, 1, 1, v31);
  }
}

uint64_t sub_229432574(void *a1)
{
  v2 = v1;
  v4 = sub_22944F054();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v15 = [a1 endDate];
  sub_22944F014();

  v16 = [a1 startDate];
  sub_22944F014();

  sub_22944EFC4();
  v18 = v17;
  v19 = *(v5 + 8);
  v19(v12, v4);
  v19(v14, v4);
  if (v18 >= *(v2 + *(type metadata accessor for HDMCPregnancyStateFactory() + 36)))
  {
    v21 = 1;
  }

  else
  {
    sub_22944F044();
    sub_22944F034();
    v19(v14, v4);
    v20 = [a1 endDate];
    sub_22944F014();

    sub_229433D78();
    LOBYTE(v20) = sub_22944F844();
    v19(v14, v4);
    v19(v9, v4);
    v21 = v20 ^ 1;
  }

  return v21 & 1;
}

uint64_t sub_2294327D0(id *a1)
{
  v2 = sub_22944F0B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 sampleUUID];
  sub_22944F094();

  v8 = sub_22944F084();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_2294328DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x22AACB780](a1);
      if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22944F954();
      }

      sub_22944F974();
    }
  }

  return 1;
}

BOOL sub_22943297C(id *a1, void **a2)
{
  v4 = sub_22944F054();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = *a2;
  v13 = [*a1 _creationDate];
  sub_22944F014();

  v14 = [v12 _creationDate];
  sub_22944F014();

  v15 = sub_22944F024();
  v16 = *(v5 + 8);
  v16(v9, v4);
  v16(v11, v4);
  return v15 == 1;
}

uint64_t sub_229432AEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v6 = a2;
    MEMORY[0x22AACB780]();
    if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v8 = *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22944F954();
    }

    sub_22944F974();
  }

  return 1;
}

uint64_t sub_229432B6C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = a2;
  v12 = a3;
  LOBYTE(a5) = v10(a2, a3, a4, a5);

  return a5 & 1;
}

void *sub_229432BEC(uint64_t a1, uint64_t a2)
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

  sub_2293D65A4();
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

void sub_229432C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_229432D68(void ***a1, uint64_t a2, void **a3, uint64_t (*a4)(id *, id *), uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = v9;
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 < v10)
    {
      v97 = v10;
      v7 = *v9;
      v14 = *(*v9 + v13);
      v105 = *(*v9 + v11);
      v15 = v105;
      v106 = v14;
      v16 = v14;
      v17 = v15;
      v100 = a4(&v106, &v105);
      if (v6)
      {

        return;
      }

      v18 = 8 * v11;
      v19 = &v7[v11 + 2];
      v95 = v11;
      while (v97 - 2 != v11)
      {
        v20 = *v19;
        v105 = *(v19 - 1);
        v21 = v105;
        v106 = v20;
        v22 = v20;
        v7 = v21;
        LODWORD(v21) = a4(&v106, &v105);

        ++v11;
        ++v19;
        if ((v100 ^ v21))
        {
          v13 = v11 + 1;
          goto LABEL_11;
        }
      }

      v11 = v97 - 1;
      v13 = v97;
LABEL_11:
      v9 = a3;
      if (v100)
      {
        if (v13 < v95)
        {
          goto LABEL_124;
        }

        v23 = v95 <= v11;
        v11 = v95;
        if (v23)
        {
          v24 = 8 * v13 - 8;
          v25 = v13;
          v26 = v95;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v28 = *&v27[v18];
              *&v27[v18] = *&v27[v24];
              *&v27[v24] = v28;
            }

            ++v26;
            v24 -= 8;
            v18 += 8;
          }

          while (v26 < v25);
        }
      }

      else
      {
        v11 = v95;
      }
    }

    v29 = v9[1];
    if (v13 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_120;
    }

    if (v13 - v11 >= a6)
    {
      goto LABEL_133;
    }

    v30 = (v11 + a6);
    if (__OFADD__(v11, a6))
    {
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

    if (v30 >= v29)
    {
      v30 = v9[1];
    }

    if (v30 < v11)
    {
      goto LABEL_123;
    }

    if (v13 == v30)
    {
LABEL_133:
      if (v13 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = a5;
      v78 = *v9;
      v7 = (*v9 + 8 * v13 - 8);
      v96 = v11;
      v79 = v11 - v13;
      v92 = v30;
      do
      {
        v101 = v7;
        v103 = v13;
        v80 = v78[v13];
        v98 = v79;
        do
        {
          v105 = *v7;
          v81 = v105;
          v106 = v80;
          v82 = v80;
          v83 = v81;
          v84 = a4(&v106, &v105);
          if (v6)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v7;
          v80 = v7[1];
          *v7 = v80;
          v7[1] = v86;
          --v7;
        }

        while (!__CFADD__(v79++, 1));
        v13 = v103 + 1;
        v7 = v101 + 1;
        v79 = v98 - 1;
      }

      while ((v103 + 1) != v92);
      v13 = v92;
      a5 = v77;
      v9 = a3;
      v11 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_22943F0C8(0, *(v12 + 2) + 1, 1, v12);
    }

    v32 = *(v12 + 2);
    v31 = *(v12 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v12 = sub_22943F0C8((v31 > 1), v32 + 1, 1, v12);
    }

    *(v12 + 2) = v33;
    v34 = &v12[16 * v32];
    *(v34 + 4) = v11;
    *(v34 + 5) = v13;
    v102 = v13;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v11 = v102;
    if (v102 >= v10)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v12[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_106;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_107;
      }

      v47 = &v12[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_109;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_112;
      }

      if (v51 >= v43)
      {
        v69 = &v12[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_118;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v36 = *(v12 + 4);
      v37 = *(v12 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_49:
      if (v39)
      {
        goto LABEL_108;
      }

      v52 = &v12[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v58 = &v12[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_115;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v62 = &v12[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_63:
    if (v57)
    {
      goto LABEL_110;
    }

    v65 = &v12[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_113;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_70:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v74 = *&v12[16 * v73 + 32];
    v75 = *&v12[16 * v35 + 40];
    sub_229433434(*v9 + v74, *v9 + *&v12[16 * v35 + 32], *v9 + v75, v7, a4);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v75 < v74)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_2294401B4(v12);
    }

    if (v73 >= *(v12 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v12[16 * v73];
    *(v76 + 4) = v74;
    *(v76 + 5) = v75;
    v107 = v12;
    sub_229440128(v35);
    v12 = v107;
    v33 = *(v107 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_121:
  v12 = sub_2294401B4(v12);
LABEL_92:
  v107 = v12;
  v88 = *(v12 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v89 = *&v12[16 * v88];
      v90 = *&v12[16 * v88 + 24];
      sub_229433434(*v7 + v89, *v7 + *&v12[16 * v88 + 16], *v7 + v90, v9, a4);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2294401B4(v12);
      }

      if (v88 - 2 >= *(v12 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v12[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v107 = v12;
      sub_229440128(v88 - 1);
      v12 = v107;
      v88 = *(v107 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

uint64_t sub_229433434(id *__src, id *a2, id *a3, uint64_t __dst, uint64_t (*a5)(id *, id *))
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = __dst;
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v52 = &v14[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_51;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = v6;
      v54 = *v6;
      v17 = v14;
      v53 = *v14;
      v18 = v53;
      v19 = v54;
      v20 = v18;
      v21 = a5(&v54, &v53);
      if (__dsta)
      {

        v43 = &v52[-v17 + 7];
        if (&v52[-v17] >= 0)
        {
          v43 = &v52[-v17];
        }

        if (v7 < v17 || v7 >= v17 + (v43 & 0xFFFFFFFFFFFFFFF8) || v7 != v17)
        {
          v42 = 8 * (v43 >> 3);
          v41 = v7;
          v40 = v17;
          goto LABEL_57;
        }

        return 1;
      }

      v22 = v21;

      __dsta = 0;
      if (v22)
      {
        break;
      }

      v15 = v17;
      v14 = (v17 + 8);
      v6 = v16;
      if (v7 != v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v14 >= v52)
      {
        goto LABEL_10;
      }
    }

    v15 = v16;
    v6 = v16 + 1;
    v14 = v17;
    if (v7 == v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v13] <= __dst)
  {
    v23 = __dst;
    memmove(__dst, a2, 8 * v13);
    __dst = v23;
  }

  __srca = __dst;
  v52 = (__dst + 8 * v13);
  if (v11 < 8)
  {
    v14 = __dst;
  }

  else
  {
    v24 = __dsta;
    if (v6 <= v7)
    {
      v14 = __dst;
    }

    else
    {
      v25 = -__dst;
      v46 = -__dst;
      v47 = v7;
      while (2)
      {
        v26 = v24;
        __dstb = v6;
        v27 = v6 - 1;
        v28 = v52;
        v29 = &v52[v25];
        --v5;
        while (1)
        {
          v30 = *--v28;
          v54 = v30;
          v31 = v27;
          v53 = *v27;
          v32 = v53;
          v33 = v30;
          v34 = v32;
          v35 = a5(&v54, &v53);
          if (v26)
          {

            if (v29 >= 0)
            {
              v38 = v29;
            }

            else
            {
              v38 = v29 + 7;
            }

            v39 = v38 >> 3;
            v40 = __srca;
            v41 = __dstb;
            if (__dstb < __srca || __dstb >= (__srca + (v38 & 0xFFFFFFFFFFFFFFF8)))
            {
              memmove(__dstb, __srca, 8 * v39);
              return 1;
            }

            if (__dstb == __srca)
            {
              return 1;
            }

            v42 = 8 * v39;
            goto LABEL_57;
          }

          v36 = v35;

          v37 = (v5 + 1);
          if (v36)
          {
            break;
          }

          v27 = v31;
          if (v37 != v52)
          {
            *v5 = *v28;
          }

          v29 -= 8;
          --v5;
          v52 = v28;
          if (v28 <= __srca)
          {
            v52 = v28;
            v6 = __dstb;
            v14 = __srca;
            goto LABEL_51;
          }
        }

        v6 = v31;
        if (v37 != __dstb)
        {
          *v5 = *v31;
        }

        v14 = __srca;
        v24 = 0;
        if (v52 > __srca)
        {
          v25 = v46;
          if (v31 > v47)
          {
            continue;
          }
        }

        break;
      }
    }
  }

LABEL_51:
  v44 = v52 - v14 + 7;
  if (v52 - v14 >= 0)
  {
    v44 = v52 - v14;
  }

  if (v6 < v14 || v6 >= &v14[v44 & 0xFFFFFFFFFFFFFFF8] || v6 != v14)
  {
    v42 = 8 * (v44 >> 3);
    v41 = v6;
    v40 = v14;
LABEL_57:
    memmove(v41, v40, v42);
  }

  return 1;
}

uint64_t sub_2294337FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22944FBD4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22944FBD4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_229433CBC(0, &qword_27D86E950, &qword_2813DBE38, 0x277D119C0);
          sub_229433E1C(&qword_27D86E958, &qword_27D86E950, &qword_2813DBE38, 0x277D119C0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2294289FC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2293D30DC(0, &qword_2813DBE38, 0x277D119C0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2294339B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22944FBD4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22944FBD4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_229433CBC(0, &qword_2813DBF10, &unk_2813DBEC0, 0x277CCD0B0);
          sub_229433E1C(&qword_27D86E948, &qword_2813DBF10, &unk_2813DBEC0, 0x277CCD0B0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_229428A7C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2293D30DC(0, &unk_2813DBEC0, 0x277CCD0B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_229433B6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HDMCPregnancyStateFactory();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_229433BF8()
{
  sub_229433CBC(319, &qword_2813DBF10, &unk_2813DBEC0, 0x277CCD0B0);
  if (v0 <= 0x3F)
  {
    sub_229433D14();
    if (v1 <= 0x3F)
    {
      sub_22944F134();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_229433CBC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2293D30DC(255, a3, a4);
    v5 = sub_22944F984();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_229433D14()
{
  result = qword_2813DC3C0;
  if (!qword_2813DC3C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DC3C0);
  }

  return result;
}

unint64_t sub_229433D78()
{
  result = qword_27D86E940;
  if (!qword_27D86E940)
  {
    sub_22944F054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D86E940);
  }

  return result;
}

uint64_t sub_229433DF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_229433E1C(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  result = *a1;
  if (!result)
  {
    sub_229433CBC(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *HDMCPregnancyRequirementEvaluator.__allocating_init(pregnancyManager:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = type metadata accessor for HDMCPregnancyRequirementEvaluator();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_pregnancyManager] = a1;
  v6 = HKLogMenstrualCyclesCategory();
  v7 = objc_allocWithZone(MEMORY[0x277CCD738]);
  v8 = sub_22944F864();
  v9 = [v7 initWithName:v8 loggingCategory:v6];

  *&v5[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_observers] = v9;
  v12.receiver = v5;
  v12.super_class = v4;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  [*&v10[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_pregnancyManager] registerObserver:v10 isUserInitiated:0];
  swift_deallocPartialClassInstance();
  return v10;
}

char *HDMCPregnancyRequirementEvaluator.init(pregnancyManager:)(uint64_t a1)
{
  swift_getObjectType();
  v2 = type metadata accessor for HDMCPregnancyRequirementEvaluator();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_pregnancyManager] = a1;
  v4 = HKLogMenstrualCyclesCategory();
  v5 = objc_allocWithZone(MEMORY[0x277CCD738]);
  v6 = sub_22944F864();
  v7 = [v5 initWithName:v6 loggingCategory:v4];

  *&v3[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_observers] = v7;
  v10.receiver = v3;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  [*&v8[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_pregnancyManager] registerObserver:v8 isUserInitiated:0];
  swift_deallocPartialClassInstance();
  return v8;
}

char *HDMCPregnancyRequirementEvaluator.__allocating_init(pregnancyProvider:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_229434DD8(a1);
}

char *HDMCPregnancyRequirementEvaluator.init(pregnancyProvider:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_229434E20(a1, v1);
}

void sub_229434194(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22944F054();
  v78 = *(v5 - 8);
  v79 = v5;
  v6 = *(v78 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v77 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v75 = v74 - v10;
  MEMORY[0x28223BE20](v9);
  v76 = v74 - v11;
  if (qword_2813DBFB0 != -1)
  {
    swift_once();
  }

  v12 = sub_22944F174();
  __swift_project_value_buffer(v12, qword_2813DBFB8);
  swift_unknownObjectRetain();
  v13 = sub_22944F154();
  v14 = sub_22944FA84();
  swift_unknownObjectRelease();
  v15 = os_log_type_enabled(v13, v14);
  v80 = a1;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v74[0] = v1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v81[0] = v18;
    *v17 = 136315394;
    v19 = sub_22944FF44();
    v74[1] = ObjectType;
    v21 = sub_2293D4824(v19, v20, v81);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = [a1 description];
    v23 = sub_22944F894();
    v25 = v24;

    v26 = sub_2293D4824(v23, v25, v81);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_2293D1000, v13, v14, "[%s] Running requirement evaluation for %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AACCC00](v18, -1, -1);
    v27 = v17;
    v2 = v74[0];
    MEMORY[0x22AACCC00](v27, -1, -1);
  }

  v28 = [*(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_pregnancyManager) getCurrentPregnancyModel];
  if (v28)
  {
    v29 = v28;
    v30 = sub_22944F154();
    v31 = sub_22944FA84();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v82 = v33;
      *v32 = 136315394;
      v34 = sub_22944FF44();
      v36 = sub_2293D4824(v34, v35, &v82);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v37 = HKSensitiveLogItem();
      sub_22944FB34();
      swift_unknownObjectRelease();
      v38 = sub_22944F8A4();
      v40 = sub_2293D4824(v38, v39, &v82);

      *(v32 + 14) = v40;
      _os_log_impl(&dword_2293D1000, v30, v31, "[%s] Currently cached state: %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AACCC00](v33, -1, -1);
      MEMORY[0x22AACCC00](v32, -1, -1);
    }

    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v42 = [ObjCClassFromMetadata requirementIdentifier];
    v43 = *MEMORY[0x277CCBF68];
    v44 = sub_22944F894();
    v46 = v45;
    if (v44 == sub_22944F894() && v46 == v47)
    {

LABEL_15:
      [v29 state];
LABEL_16:
      sub_22944F994();

      return;
    }

    v55 = sub_22944FE24();

    if (v55)
    {
      goto LABEL_15;
    }

    v56 = [ObjCClassFromMetadata requirementIdentifier];
    v57 = *MEMORY[0x277CCBF78];
    v58 = sub_22944F894();
    v60 = v59;
    if (v58 == sub_22944F894() && v60 == v61)
    {

      goto LABEL_21;
    }

    v62 = sub_22944FE24();

    if (v62)
    {
LABEL_21:
      v63 = [v29 physiologicalWashoutEndDate];
      if (v63)
      {
        v64 = v75;
        v65 = v63;
        sub_22944F014();

        v67 = v78;
        v66 = v79;
        v68 = v76;
        (*(v78 + 32))(v76, v64, v79);
        v69 = v77;
        sub_22944F044();
        sub_22944EFF4();
        v70 = *(v67 + 8);
        v70(v69, v66);
        v70(v68, v66);
      }

      goto LABEL_16;
    }

    v71 = objc_opt_self();
    v81[0] = 0;
    v81[1] = 0xE000000000000000;
    sub_22944FC84();
    MEMORY[0x22AACB740](0xD000000000000048, 0x8000000229458EA0);
    v72 = [ObjCClassFromMetadata requirementIdentifier];
    v82 = v72;
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
    sub_22944FD34();

    v73 = sub_22944F864();

    [v71 hk:3 error:v73 description:?];

    swift_willThrow();
  }

  else
  {
    v48 = sub_22944F154();
    v49 = sub_22944FA64();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v81[0] = v51;
      *v50 = 136446210;
      v52 = sub_22944FF44();
      v54 = sub_2293D4824(v52, v53, v81);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_2293D1000, v48, v49, "[%{public}s] Could not get pregnancy state from pregnancy manager", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x22AACCC00](v51, -1, -1);
      MEMORY[0x22AACCC00](v50, -1, -1);
    }

    sub_229434F10();
    sub_22944FAE4();
  }
}

void sub_229434AB4(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_observers];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v8[4] = sub_2293D96A0;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2293D89A8;
  v8[3] = &block_descriptor_1;
  v5 = _Block_copy(v8);
  v6 = v1;
  v7 = a1;

  [v3 notifyObservers_];
  _Block_release(v5);
}

id HDMCPregnancyRequirementEvaluator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDMCPregnancyRequirementEvaluator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDMCPregnancyRequirementEvaluator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_229434CB8(uint64_t a1)
{
  v2 = type metadata accessor for HDMCPregnancyRequirementEvaluator();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_pregnancyManager] = a1;
  v4 = HKLogMenstrualCyclesCategory();
  v5 = objc_allocWithZone(MEMORY[0x277CCD738]);
  v6 = sub_22944F864();
  v7 = [v5 initWithName:v6 loggingCategory:v4];

  *&v3[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_observers] = v7;
  v10.receiver = v3;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  [*&v8[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_pregnancyManager] registerObserver:v8 isUserInitiated:0];
  return v8;
}

char *sub_229434DD8(uint64_t a1)
{
  v2 = objc_allocWithZone(type metadata accessor for HDMCPregnancyRequirementEvaluator());

  return sub_229434E20(a1, v2);
}

char *sub_229434E20(uint64_t a1, char *a2)
{
  *&a2[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_pregnancyManager] = a1;
  v3 = HKLogMenstrualCyclesCategory();
  v4 = objc_allocWithZone(MEMORY[0x277CCD738]);
  v5 = sub_22944F864();
  v6 = [v4 initWithName:v5 loggingCategory:v3];

  *&a2[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_observers] = v6;
  v9.receiver = a2;
  v9.super_class = type metadata accessor for HDMCPregnancyRequirementEvaluator();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [*&v7[OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon33HDMCPregnancyRequirementEvaluator_pregnancyManager] registerObserver:v7 isUserInitiated:0];
  return v7;
}

unint64_t sub_229434F10()
{
  result = qword_2813DBE10;
  if (!qword_2813DBE10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813DBE10);
  }

  return result;
}

uint64_t HDCodableMenstrualCyclesExperienceModel.getExperienceModel()()
{
  result = sub_2294364B8();
  if (!v0)
  {
    v2 = sub_22944320C();

    return v2;
  }

  return result;
}

uint64_t HDCodableMenstrualCyclesExperienceModel.insert(record:oldSampleUUID:)(void *a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v95 = a2;
  ObjectType = swift_getObjectType();
  v8 = sub_22944F5A4();
  v99 = *(v8 - 8);
  v100 = v8;
  v9 = *(v99 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DB9D8();
  v96 = *(v12 - 8);
  v97 = v12;
  v13 = *(v96 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DBB38(0);
  v93 = *(v16 - 1);
  v94 = v16;
  v17 = *(v93 + 64);
  MEMORY[0x28223BE20](v16);
  v92 = v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DB818();
  v20 = v19;
  v104 = *(v19 - 1);
  v21 = *(v104 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v98 = v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v85 - v24;
  sub_22943A094(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v91 = v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v102 = v85 - v30;
  if (HKShowSensitiveLogItems())
  {
    v90 = ObjectType;
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v31 = sub_22944F174();
    __swift_project_value_buffer(v31, qword_2813DBFB8);
    v101 = a1;
    v32 = a1;
    v33 = sub_22944F154();
    v34 = sub_22944FA84();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v87 = v3;
      v36 = v35;
      v86 = swift_slowAlloc();
      v103[0] = v86;
      *v36 = 136315394;
      v37 = sub_22944FF44();
      v88 = v20;
      v39 = sub_2293D4824(v37, v38, v103);
      v89 = v5;
      v90 = v11;
      v40 = v39;

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      v41 = v32;
      v42 = [v41 description];
      v43 = sub_22944F894();
      v45 = v44;

      v20 = v88;
      v46 = sub_2293D4824(v43, v45, v103);

      *(v36 + 14) = v46;
      v5 = v89;
      v11 = v90;
      _os_log_impl(&dword_2293D1000, v33, v34, "[%s] Inserting record: %s", v36, 0x16u);
      v47 = v86;
      swift_arrayDestroy();
      MEMORY[0x22AACCC00](v47, -1, -1);
      v48 = v36;
      v4 = v87;
      MEMORY[0x22AACCC00](v48, -1, -1);
    }

    a1 = v101;
  }

  result = sub_2294364B8();
  if (!v4)
  {
    v85[0] = v15;
    v89 = v5;
    v90 = v11;
    v50 = result;
    v51 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
    swift_beginAccess();
    v52 = a1;
    v53 = v104;
    v54 = *(v104 + 16);
    v85[1] = v51;
    v87 = v104 + 16;
    v86 = v54;
    (v54)(v25, v50 + v51, v20);
    swift_getKeyPath();
    v55 = v92;
    sub_22944F6D4();

    v56 = *(v53 + 8);
    v104 = v53 + 8;
    v88 = v56;
    v57 = (v56)(v25, v20);
    MEMORY[0x28223BE20](v57);
    v58 = v95;
    v85[-4] = v50;
    v85[-3] = v58;
    v101 = v52;
    v85[-2] = v52;
    v59 = v102;
    sub_22941F040(sub_22943A0B4, &v85[-6], v102);
    (*(v93 + 8))(v55, v94);
    v60 = v91;
    sub_22943A71C(v59, v91, sub_22943A094);
    v62 = v96;
    v61 = v97;
    if ((*(v96 + 48))(v60, 1, v97) == 1)
    {
      v95 = 0;
      v63 = v20;
      sub_22943AB80(v60, sub_22943A094);
      sub_229437D24(v101);
      v64 = v100;
    }

    else
    {
      v65 = v85[0];
      v66 = (*(v62 + 32))(v85[0], v60, v61);
      v94 = v85;
      MEMORY[0x28223BE20](v66);
      v67 = v101;
      v85[-4] = v58;
      v85[-3] = v67;
      v85[-2] = v65;
      swift_beginAccess();
      v68 = v61;
      v63 = v20;
      sub_22944F724();
      v69 = v100;
      v95 = 0;
      swift_endAccess();
      (*(v62 + 8))(v65, v68);
      v64 = v69;
    }

    sub_22944F7B4();
    v70 = sub_22944F7A4();
    v71 = v99;
    v72 = v90;
    (*(v99 + 104))(v90, *MEMORY[0x277CFB5F0], v64);
    v73 = v63;
    v74 = v98;
    v86();
    v75 = v95;
    v76 = sub_22944F6F4();
    if (v75)
    {

      v88(v74, v73);
      (*(v71 + 8))(v72, v64);
    }

    else
    {
      v78 = v76;
      v79 = v73;
      v80 = v71;
      v81 = v77;
      v88(v74, v79);
      v82 = v64;
      v83 = v72;
      v84 = sub_22944EF84();
      sub_22943A0D8(v78, v81);
      [v89 setMenstrualCyclesExperienceModelData_];

      (*(v80 + 8))(v83, v82);
    }

    return sub_22943AB80(v102, sub_22943A094);
  }

  return result;
}

uint64_t HDCodableMenstrualCyclesExperienceModel.deleteRecords(with:)(uint64_t a1)
{
  v18 = sub_22944F0B4();
  v3 = *(v18 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v18);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;
  v16 = v3 + 16;
  v17 = (v3 + 8);
  v19 = a1;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
      v15 = v18;
LABEL_9:
      (*(v3 + 16))(v6, *(v19 + 48) + *(v3 + 72) * (__clz(__rbit64(v10)) | (v14 << 6)), v15);
      HDCodableMenstrualCyclesExperienceModel.deleteRecord(with:)(v6);
      if (v1)
      {
        break;
      }

      v10 &= v10 - 1;
      result = (*v17)(v6, v15);
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    (*v17)(v6, v15);
  }

  else
  {
LABEL_5:
    v15 = v18;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_229435B90(uint64_t a1)
{
  v3 = type metadata accessor for CoherentExperienceSetupRecord(0);
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_22944FBD4();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v40 = v6;
  v46 = MEMORY[0x277D84F90];
  sub_22943F1DC(0, v7 & ~(v7 >> 63), 0);
  v8 = v46;
  if (v41)
  {
    result = sub_22944FB84();
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    result = sub_22944FB54();
    v10 = *(a1 + 36);
  }

  v12 = v40;
  v43 = result;
  v44 = v10;
  v45 = v41 != 0;
  if ((v7 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v14 = a1;
    }

    v36 = a1 + 56;
    v37 = v14;
    v34[1] = v1;
    v35 = a1 + 64;
    v38 = v7;
    while (v13 < v7)
    {
      if (__OFADD__(v13++, 1))
      {
        goto LABEL_39;
      }

      v18 = v43;
      v17 = v44;
      v19 = v45;
      v20 = a1;
      sub_22943A490(v43, v44, v45, a1);
      sub_22942BEC4(v21, v12);
      v46 = v8;
      v23 = *(v8 + 16);
      v22 = *(v8 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_22943F1DC(v22 > 1, v23 + 1, 1);
        v12 = v40;
        v8 = v46;
      }

      *(v8 + 16) = v23 + 1;
      result = sub_22943A990(v12, v8 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v23);
      if (v41)
      {
        if (!v19)
        {
          goto LABEL_44;
        }

        if (sub_22944FBA4())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v7 = v38;
        sub_22943A9F4();
        v15 = sub_22944F9E4();
        sub_22944FC14();
        result = v15(v42, 0);
      }

      else
      {
        if (v19)
        {
          goto LABEL_45;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        v24 = 1 << *(a1 + 32);
        if (v18 >= v24)
        {
          goto LABEL_40;
        }

        v25 = v18 >> 6;
        v26 = *(v36 + 8 * (v18 >> 6));
        if (((v26 >> v18) & 1) == 0)
        {
          goto LABEL_41;
        }

        if (*(a1 + 36) != v17)
        {
          goto LABEL_42;
        }

        v27 = v26 & (-2 << (v18 & 0x3F));
        if (v27)
        {
          v24 = __clz(__rbit64(v27)) | v18 & 0x7FFFFFFFFFFFFFC0;
          v7 = v38;
        }

        else
        {
          v28 = v25 << 6;
          v29 = v25 + 1;
          v30 = (v35 + 8 * v25);
          v7 = v38;
          while (v29 < (v24 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              result = sub_2294314B8(v18, v17, 0);
              v24 = __clz(__rbit64(v31)) + v28;
              goto LABEL_34;
            }
          }

          result = sub_2294314B8(v18, v17, 0);
LABEL_34:
          a1 = v20;
        }

        v33 = *(a1 + 36);
        v43 = v24;
        v44 = v33;
        v45 = 0;
      }

      v12 = v40;
      if (v13 == v7)
      {
        sub_2294314B8(v43, v44, v45);
        return v8;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t HDCodableMenstrualCyclesExperienceModel.makeCopy()()
{
  swift_getObjectType();
  [v0 copy];
  sub_22944FB34();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    return v3;
  }

  sub_22944FC84();
  MEMORY[0x22AACB740](0x742064656C696146, 0xEF2074736163206FLL);
  sub_2293D6A84(&qword_27D86E9D0, &qword_2813DBE18, 0x277D10638);
  v2 = sub_22943A6B4();
  MEMORY[0x22AACB740](v2);

  MEMORY[0x22AACB740](0xD00000000000002BLL, 0x8000000229459060);
  result = sub_22944FD44();
  __break(1u);
  return result;
}

uint64_t HDCodableMenstrualCyclesExperienceModel.merge(with:)(uint64_t a1)
{
  v52 = a1;
  v3 = sub_22944F5A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DB818();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  result = sub_2294364B8();
  if (!v2)
  {
    v48 = v1;
    v49 = v14;
    v18 = result;
    v50 = v4;
    v51 = v3;
    v19 = sub_2294364B8();
    v52 = 0;
    v20 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
    v21 = v19;
    swift_beginAccess();
    v22 = v10;
    v23 = (v10 + 16);
    v24 = *(v10 + 16);
    v46 = v23;
    v25 = v21 + v20;
    v26 = v16;
    v27 = v16;
    v28 = v18;
    v29 = v9;
    v24(v27, v25, v9);

    v30 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
    swift_beginAccess();
    type metadata accessor for CoherentExperienceSetupRecordDatabase(0);
    sub_22943ABE0(&qword_2813DC130, type metadata accessor for CoherentExperienceSetupRecordDatabase);
    v47 = v26;
    sub_22944F714();
    swift_endAccess();
    sub_22944F7B4();
    v31 = sub_22944F7A4();
    v33 = v50;
    v32 = v51;
    (*(v50 + 104))(v7, *MEMORY[0x277CFB5F0], v51);
    v34 = v28 + v30;
    v35 = v49;
    v24(v49, v34, v29);
    v46 = v31;
    v36 = v52;
    v37 = sub_22944F6F4();
    v52 = v36;
    if (v36)
    {

      v39 = *(v22 + 8);
      v39(v35, v29);
      (*(v33 + 8))(v7, v32);
      return (v39)(v47, v29);
    }

    else
    {
      v40 = *(v22 + 8);
      v41 = v37;
      v42 = v35;
      v43 = v38;
      v40(v42, v29);
      v44 = v33;
      v45 = sub_22944EF84();
      sub_22943A0D8(v41, v43);
      [v48 setMenstrualCyclesExperienceModelData_];

      (*(v44 + 8))(v7, v51);
      return (v40)(v47, v29);
    }
  }

  return result;
}

uint64_t sub_2294364B8()
{
  v2 = v1;
  v3 = v0;
  swift_getObjectType();
  sub_2293DB818();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = [v3 menstrualCyclesExperienceModelData];
  if (v13)
  {
    v14 = v13;
    sub_22944EF94();

    type metadata accessor for CoherentExperienceSetupRecordDatabase(0);
    sub_22943ABE0(&qword_2813DC130, type metadata accessor for CoherentExperienceSetupRecordDatabase);
    sub_22944F6E4();
    if (!v1)
    {
      v15 = *(v6 + 32);
      v15(v10, v12, v5);
      v16 = type metadata accessor for CoherentExperienceSetupRecordDatabaseWrapper(0);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      v2 = swift_allocObject();
      v15((v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule), v10, v5);
    }
  }

  else
  {
    if (qword_2813DBFB0 != -1)
    {
      swift_once();
    }

    v19 = sub_22944F174();
    __swift_project_value_buffer(v19, qword_2813DBFB8);
    v20 = sub_22944F154();
    v2 = sub_22944FA64();
    if (os_log_type_enabled(v20, v2))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136446466;
      v23 = sub_22944FF44();
      v25 = sub_2293D4824(v23, v24, &v28);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_2293D4824(0xD000000000000044, 0x8000000229459090, &v28);
      _os_log_impl(&dword_2293D1000, v20, v2, "[%{public}s] Underlying model data is missing, error: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AACCC00](v22, -1, -1);
      MEMORY[0x22AACCC00](v21, -1, -1);
    }

    sub_22943AC98();
    swift_allocError();
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_229436818(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v42 = a4;
  v49 = a3;
  v47 = a1;
  sub_22942A8EC(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22944F0B4();
  v46 = *(v48 - 8);
  v8 = *(v46 + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v50 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v42 - v11;
  sub_22942B5AC();
  v44 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CoherentExperienceSetupRecord(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2293DB818();
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon44CoherentExperienceSetupRecordDatabaseWrapper_capsule;
  swift_beginAccess();
  v28 = a2 + v27;
  v29 = v45;
  (*(v23 + 16))(v26, v28, v22);
  sub_22943ABE0(&qword_2813DC238, type metadata accessor for CoherentExperienceSetupRecord);
  sub_22944F754();
  v30 = v22;
  v31 = v43;
  (*(v23 + 8))(v26, v30);
  v32 = *(v17 + 20);
  v33 = v46;
  v34 = v44;
  (*(v13 + 16))(v16, &v20[v32], v44);
  sub_22943AB80(v20, type metadata accessor for CoherentExperienceSetupRecord);
  sub_22944F1E4();
  (*(v13 + 8))(v16, v34);
  v35 = v48;
  sub_22943A71C(v49, v29, sub_22942A8EC);
  v36 = *(v33 + 48);
  if (v36(v29, 1, v35) == 1)
  {
    v37 = [v42 sampleUUID];
    v38 = v50;
    sub_22944F094();

    if (v36(v29, 1, v35) != 1)
    {
      sub_22943AB80(v29, sub_22942A8EC);
    }
  }

  else
  {
    v38 = v50;
    (*(v33 + 32))(v50, v29, v35);
  }

  v39 = sub_22944F084();
  v40 = *(v33 + 8);
  v40(v38, v35);
  v40(v31, v35);
  return v39 & 1;
}

void sub_229436CCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v162 = a4;
  v153 = a1;
  v154 = a3;
  v5 = type metadata accessor for CoherentExperienceSetupRecord(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v137 = &v131[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2293D7574(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v136 = &v131[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v150 = &v131[-v12];
  sub_22943AC44(0, &qword_27D86E770, sub_22942AFD8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v131[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v144 = &v131[-v18];
  sub_22943AC44(0, qword_2813DC2A8, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v152 = &v131[-v21];
  v22 = type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord(0);
  v148 = *(v22 - 8);
  v149 = v22;
  v23 = *(v148 + 64);
  MEMORY[0x28223BE20](v22);
  v151 = &v131[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v145 = sub_22944F054();
  v25 = *(v145 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v145);
  v155 = &v131[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x28223BE20](v27);
  v138 = &v131[-v30];
  v31 = MEMORY[0x28223BE20](v29);
  v142 = &v131[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v146 = &v131[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v141 = &v131[-v36];
  MEMORY[0x28223BE20](v35);
  v147 = &v131[-v37];
  sub_22942A8EC(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v41 = &v131[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = sub_22944F0B4();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v131[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v45);
  v49 = &v131[-v48];
  sub_22943A71C(a2, v41, sub_22942A8EC);
  v50 = (*(v43 + 48))(v41, 1, v42);
  v51 = v5;
  v156 = v5;
  v143 = v17;
  v140 = v25;
  if (v50 == 1)
  {
    v52 = v154;
    sub_22943AB80(v41, sub_22942A8EC);
LABEL_5:
    v55 = v51;
    goto LABEL_7;
  }

  (*(v43 + 32))(v49, v41, v42);
  v52 = v154;
  v53 = [v154 sampleUUID];
  sub_22944F094();

  sub_22943ABE0(&qword_27D86E760, MEMORY[0x277CC95F0]);
  LOBYTE(v53) = sub_22944F854();
  v54 = *(v43 + 8);
  v54(v47, v42);
  if (v53)
  {
    v54(v49, v42);
    v17 = v143;
    v25 = v140;
    goto LABEL_5;
  }

  v56 = [v52 sampleUUID];
  sub_22944F094();

  sub_2293DB9D8();
  v57 = sub_22944F5E4();
  v58 = v156[5];
  sub_22942B5AC();
  v55 = v156;
  sub_22944F1F4();
  v57(v157, 0);
  v54(v49, v42);
  v17 = v143;
  v25 = v140;
LABEL_7:
  v59 = v52;
  v60 = [v52 educationalStepsReviewDate];
  v61 = v145;
  if (v60)
  {
    v62 = v141;
    v63 = v60;
    sub_22944F014();

    v64 = v147;
    (*(v25 + 32))(v147, v62, v61);
    v65 = sub_229430EF0(MEMORY[0x277D84F90]);
    v66 = v151;
    (*(v25 + 16))(v151, v64, v61);
    v67 = v149;
    *(v66 + *(v149 + 20)) = v65;
    v68 = v152;
    sub_22943A71C(v66, v152, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
    (*(v148 + 56))(v68, 0, 1, v67);
    sub_2293DB9D8();
    v69 = sub_22944F5E4();
    v70 = v55[6];
    sub_22943AB00();
    v59 = v154;
    sub_22944F1F4();
    v69(v157, 0);
    v25 = v140;
    sub_22943AB80(v66, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
    (*(v25 + 8))(v147, v61);
  }

  v71 = [v59 configurationStepsReviewDate];
  if (v71)
  {
    v72 = v59;
    v73 = v142;
    v74 = v71;
    sub_22944F014();

    v75 = v146;
    (*(v25 + 32))(v146, v73, v61);
    v76 = sub_229430EF0(MEMORY[0x277D84F90]);
    v77 = v151;
    (*(v25 + 16))(v151, v75, v61);
    v78 = v149;
    *(v77 + *(v149 + 20)) = v76;
    v79 = v152;
    sub_22943A71C(v77, v152, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
    (*(v148 + 56))(v79, 0, 1, v78);
    sub_2293DB9D8();
    v80 = sub_22944F5E4();
    v81 = v55[7];
    sub_22943AB00();
    v59 = v72;
    sub_22944F1F4();
    v80(v157, 0);
    v25 = v140;
    sub_22943AB80(v77, type metadata accessor for CoherentExperienceSetupRecord.CompletionRecord);
    (*(v25 + 8))(v75, v61);
  }

  v82 = [v59 postPregnancyFeatureAdjustmentCompletionLog];
  type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(0);
  sub_22943ABE0(&qword_27D86E500, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
  v83 = sub_22944F7F4();

  v84 = 0;
  v85 = *(v83 + 64);
  v133 = v83 + 64;
  v139 = v83;
  v86 = 1 << *(v83 + 32);
  v87 = -1;
  if (v86 < 64)
  {
    v87 = ~(-1 << v86);
  }

  v88 = v87 & v85;
  v132 = (v86 + 63) >> 6;
  v154 = (v25 + 16);
  v151 = (v25 + 32);
  v149 = v25 + 56;
  v142 = *MEMORY[0x277D11930];
  v141 = (v25 + 8);
  v135 = (v25 + 48);
  if ((v87 & v85) == 0)
  {
    goto LABEL_18;
  }

  do
  {
    while (1)
    {
      v89 = v84;
LABEL_25:
      v92 = __clz(__rbit64(v88));
      v88 &= v88 - 1;
      v93 = v92 | (v89 << 6);
      v94 = *(*(v139 + 48) + 8 * v93);
      v95 = v140;
      v96 = v138;
      (*(v140 + 16))(v138, *(v139 + 56) + *(v140 + 72) * v93, v61);
      sub_22942AFD8();
      v98 = v97;
      v99 = *(v97 + 48);
      *v17 = v94;
      (*(v95 + 32))(v17 + v99, v96, v61);
      (*(*(v98 - 8) + 56))(v17, 0, 1, v98);
      v100 = v94;
      v91 = v89;
LABEL_26:
      v101 = v144;
      sub_22942B04C(v17, v144);
      sub_22942AFD8();
      if ((*(*(v98 - 8) + 48))(v101, 1, v98) == 1)
      {

        return;
      }

      v152 = v91;
      v102 = *v101;
      v103 = v155;
      (*v151)(v155, v101 + *(v98 + 48), v61);
      v158 = sub_22944F894();
      v159 = v104;
      sub_2293DB9D8();
      v106 = v105;
      v107 = sub_22944F5E4();
      v108 = v156[8];
      sub_22942B6F0();
      sub_22944F644();

      v107(v157, 0);
      v109 = sub_22944F894();
      v111 = v110;
      v112 = v150;
      v148 = *v154;
      (v148)(v150, v103, v61);
      v113 = *v149;
      (*v149)(v112, 0, 1, v61);
      v160 = v109;
      v161 = v111;
      v114 = sub_22944F5E4();
      v115 = v156[10];
      sub_22942B8A4();
      v116 = v102;
      sub_22944F4D4();
      v114(v157, 0);
      v117 = sub_22944F894();
      v119 = v118;
      if (v117 == sub_22944F894() && v119 == v120)
      {

        break;
      }

      v121 = sub_22944FE24();

      if (v121)
      {
        break;
      }

      v61 = v145;
      (*v141)(v155, v145);

      v84 = v152;
      v17 = v143;
      if (!v88)
      {
        goto LABEL_18;
      }
    }

    v147 = v113;
    v122 = v137;
    v146 = v106;
    sub_22944F5F4();
    v123 = v156;
    v124 = v156[9];
    sub_22943AA9C();
    v125 = v136;
    sub_22944F1E4();
    sub_22943AB80(v122, type metadata accessor for CoherentExperienceSetupRecord);
    v61 = v145;
    LODWORD(v124) = (*v135)(v125, 1, v145);
    sub_22943AB80(v125, sub_2293D7574);
    if (v124 == 1)
    {
      v134 = v116;
      v126 = v150;
      (v148)(v150, v155, v61);
      (v147)(v126, 0, 1, v61);
      v127 = sub_22944F5E4();
      v129 = v128 + v123[9];
      sub_22944F1F4();
      v127(v157, 0);

      (*v141)(v155, v61);
    }

    else
    {
      (*v141)(v155, v61);
    }

    v84 = v152;
    v17 = v143;
  }

  while (v88);
LABEL_18:
  if (v132 <= (v84 + 1))
  {
    v90 = v84 + 1;
  }

  else
  {
    v90 = v132;
  }

  v91 = v90 - 1;
  while (1)
  {
    v89 = (v84 + 1);
    if (__OFADD__(v84, 1))
    {
      break;
    }

    if (v89 >= v132)
    {
      sub_22942AFD8();
      v98 = v130;
      (*(*(v130 - 8) + 56))(v17, 1, 1, v130);
      v88 = 0;
      goto LABEL_26;
    }

    v88 = *(v133 + 8 * v89);
    ++v84;
    if (v88)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
}