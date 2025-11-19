Swift::Void __swiftcall SleepingSampleAnalysisFeatureStatusManager.startObserving()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_lockedState);
  v3 = v2 + *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  v5 = *(type metadata accessor for SleepingSampleAnalysisFeatureStatusManager.State(0) + 20);
  if (*(v3 + v5))
  {
    os_unfair_lock_unlock((v2 + v4));
    if (qword_1EDC32570 != -1)
    {
      swift_once();
    }

    v6 = sub_1CFE30624();
    __swift_project_value_buffer(v6, qword_1EDC32578);
    v36 = sub_1CFE30604();
    v7 = sub_1CFE30C04();
    if (os_log_type_enabled(v36, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v37 = v9;
      *v8 = 136446210;
      v10 = sub_1CFE31294();
      v12 = sub_1CFDAAF6C(v10, v11, &v37);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1CFDA3000, v36, v7, "[%{public}s] Already observing", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1D3876FF0](v9, -1, -1);
      MEMORY[0x1D3876FF0](v8, -1, -1);
    }

    else
    {
    }

    return;
  }

  *(v3 + v5) = 1;
  os_unfair_lock_unlock((v2 + v4));
  if (qword_1EDC32570 != -1)
  {
    swift_once();
  }

  v13 = sub_1CFE30624();
  __swift_project_value_buffer(v13, qword_1EDC32578);
  v14 = sub_1CFE30604();
  v15 = sub_1CFE30C04();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v37 = v17;
    *v16 = 136446210;
    v18 = sub_1CFE31294();
    v20 = sub_1CFDAAF6C(v18, v19, &v37);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1CFDA3000, v14, v15, "[%{public}s] Beginning observation", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1D3876FF0](v17, -1, -1);
    MEMORY[0x1D3876FF0](v16, -1, -1);
  }

  v21 = sub_1CFDA5DE4();
  v22 = v21;
  if (v21 >> 62)
  {
    v23 = sub_1CFE30EE4();
    if (v23)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_12:
      if (v23 < 1)
      {
        __break(1u);
        return;
      }

      v24 = 0;
      v25 = *(v1 + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_observationQueue);
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x1D3876480](v24, v22);
        }

        else
        {
          v26 = *(v22 + 8 * v24 + 32);
          swift_unknownObjectRetain();
        }

        ++v24;
        [v26 registerObserver:v1 queue:v25];
        swift_unknownObjectRelease();
      }

      while (v23 != v24);
    }
  }

  MEMORY[0x1EEE9AC00](v27);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v37 = v1;
  sub_1CFDA5A24(&qword_1EDC318F8, type metadata accessor for SleepingSampleAnalysisFeatureStatusManager);
  sub_1CFE304F4();

  v29 = sub_1CFE30604();
  v30 = sub_1CFE30C04();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37 = v32;
    *v31 = 136446210;
    v33 = sub_1CFE31294();
    v35 = sub_1CFDAAF6C(v33, v34, &v37);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_1CFDA3000, v29, v30, "[%{public}s] Retrieved initial feature status", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1D3876FF0](v32, -1, -1);
    MEMORY[0x1D3876FF0](v31, -1, -1);
  }
}

uint64_t sub_1CFDA4F74(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SleepingSampleAnalysisFeatureStatus()
{
  result = qword_1EDC325F8;
  if (!qword_1EDC325F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFDA4FF8()
{
  v1 = *v0;
  sub_1CFE30924();
  sub_1CFE31144();
  sub_1CFE30984();
  v2 = sub_1CFE31184();

  return v2;
}

uint64_t sub_1CFDA506C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1CFE30924();
  v6 = v5;
  if (v4 == sub_1CFE30924() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1CFE310B4();
  }

  return v9 & 1;
}

uint64_t SleepingSampleAnalysisFeatureStatusManager.currentStatus()()
{
  v32[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1CFDA5CF8(MEMORY[0x1E69E7CC0], &unk_1EDC317D8, &qword_1EDC32528, 0x1E696C170);
  v1 = sub_1CFDA5DE4();
  v2 = v1;
  if (v1 >> 62)
  {
LABEL_29:
    v3 = sub_1CFE30EE4();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v30 = v2 & 0xFFFFFFFFFFFFFF8;
      v31 = v2 & 0xC000000000000001;
      v28 = v3;
      v29 = v2;
      do
      {
        if (v31)
        {
          v7 = MEMORY[0x1D3876480](v4, v2);
          v8 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v4 >= *(v30 + 16))
          {
            goto LABEL_26;
          }

          v7 = *(v2 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v8 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }
        }

        v32[0] = 0;
        v9 = [v7 featureStatusWithError_];
        if (!v9)
        {
          v25 = v32[0];

          sub_1CFE30184();

          swift_willThrow();
          result = swift_unknownObjectRelease();
          goto LABEL_31;
        }

        v10 = v9;
        v11 = v32[0];
        v12 = [v7 featureIdentifier];
        v2 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32[0] = v0;
        v15 = sub_1CFDA54DC(v12);
        v16 = v0[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_27;
        }

        v19 = v14;
        if (v0[3] >= v18)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v0 = v32[0];
            if (v14)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1CFDFCCA0();
            v0 = v32[0];
            if (v19)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1CFDA5674(v18, isUniquelyReferenced_nonNull_native);
          v20 = sub_1CFDA54DC(v12);
          if ((v19 & 1) != (v21 & 1))
          {
            type metadata accessor for HKFeatureIdentifier(0);
            result = sub_1CFE310F4();
            __break(1u);
            return result;
          }

          v15 = v20;
          v0 = v32[0];
          if (v19)
          {
LABEL_4:
            v5 = v0[7];
            v6 = *(v5 + 8 * v15);
            *(v5 + 8 * v15) = v2;

            swift_unknownObjectRelease();
            goto LABEL_5;
          }
        }

        v0[(v15 >> 6) + 8] |= 1 << v15;
        *(v0[6] + 8 * v15) = v12;
        *(v0[7] + 8 * v15) = v2;

        swift_unknownObjectRelease();
        v22 = v0[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_28;
        }

        v0[2] = v24;
LABEL_5:
        ++v4;
        v2 = v29;
      }

      while (v8 != v28);
    }
  }

  type metadata accessor for HKFeatureIdentifier(0);
  sub_1CFDA6E64(0, &qword_1EDC32528, 0x1E696C170);
  sub_1CFDA5A24(&qword_1EDC32500, type metadata accessor for HKFeatureIdentifier);
  sub_1CFDA5A24(&unk_1EDC32518, type metadata accessor for HKFeatureIdentifier);
  sub_1CFDA5A24(&qword_1EDC32510, type metadata accessor for HKFeatureIdentifier);
  result = sub_1CFE30724();
LABEL_31:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1CFDA54DC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1CFE30924();
  sub_1CFE31144();
  sub_1CFE30984();
  v4 = sub_1CFE31184();

  return sub_1CFDA5570(a1, v4);
}

unint64_t sub_1CFDA5570(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1CFE30924();
      v9 = v8;
      if (v7 == sub_1CFE30924() && v9 == v10)
      {
        break;
      }

      v12 = sub_1CFE310B4();

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

uint64_t sub_1CFDA5674(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1CFDA5944(0, &unk_1EDC317D8, &qword_1EDC32528, 0x1E696C170);
  v38 = a2;
  result = sub_1CFE30F04();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v17 = __clz(__rbit64(v13));
      v39 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      v26 = *(v8 + 40);
      sub_1CFE30924();
      sub_1CFE31144();
      sub_1CFE30984();
      v27 = sub_1CFE31184();

      v28 = -1 << *(v8 + 32);
      v29 = v27 & ~v28;
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
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v37;
      v13 = v39;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        v39 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

void sub_1CFDA5944(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_1CFDA6E64(255, a3, a4);
    sub_1CFDA5A24(&qword_1EDC32510, type metadata accessor for HKFeatureIdentifier);
    v7 = sub_1CFE30F24();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1CFDA5A24(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1CFDA5A6C()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1CFDA5AD0(v0[2]);
}

uint64_t sub_1CFDA5AA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1CFDA5AD0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_lockedState);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1CFDA5AA8();
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1CFDA5B8C(uint64_t a1)
{
  sub_1CFDA5C94(0, qword_1EDC31C98, type metadata accessor for SleepingSampleAnalysisFeatureStatus, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  result = SleepingSampleAnalysisFeatureStatusManager.currentStatus()();
  if (!v1)
  {
    v8 = type metadata accessor for SleepingSampleAnalysisFeatureStatus();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    return sub_1CFDFDD60(v6, a1);
  }

  return result;
}

void sub_1CFDA5C94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1CFDA5CF8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1CFDA5944(0, a2, a3, a4);
    v6 = sub_1CFE30F14();

    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *i;
      v9 = *(i - 1);
      v10 = v8;
      result = sub_1CFDA54DC(v9);
      if (v12)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v6[6] + 8 * result) = v9;
      *(v6[7] + 8 * result) = v10;
      v13 = v6[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v6[2] = v15;
      if (!--v4)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1CFDA5DE4()
{
  v1 = *MEMORY[0x1E696B8B8];
  v2 = *MEMORY[0x1E696B8B0];
  v3 = *MEMORY[0x1E696B8C8];
  v4 = *MEMORY[0x1E696B8A8];
  v6 = *(v0 + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_featureStatusProviderForFeatureIdentifier);
  v5 = *(v0 + OBJC_IVAR____TtC13HealthBalance42SleepingSampleAnalysisFeatureStatusManager_featureStatusProviderForFeatureIdentifier + 8);
  v23 = MEMORY[0x1E69E7CC0];
  v7 = *MEMORY[0x1E696B8C0];
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_1CFE30E54();
  v12 = v7;
  v6();

  sub_1CFE30E24();
  v13 = *(v23 + 16);
  sub_1CFE30E64();
  sub_1CFE30E74();
  sub_1CFE30E34();
  v14 = v8;
  v6();

  sub_1CFE30E24();
  v15 = *(v23 + 16);
  sub_1CFE30E64();
  sub_1CFE30E74();
  sub_1CFE30E34();
  v16 = v9;
  v6();

  sub_1CFE30E24();
  v17 = *(v23 + 16);
  sub_1CFE30E64();
  sub_1CFE30E74();
  sub_1CFE30E34();
  v18 = v10;
  v6();

  sub_1CFE30E24();
  v19 = *(v23 + 16);
  sub_1CFE30E64();
  sub_1CFE30E74();
  sub_1CFE30E34();
  v20 = v11;
  v6();

  sub_1CFE30E24();
  v21 = *(v23 + 16);
  sub_1CFE30E64();
  sub_1CFE30E74();
  sub_1CFE30E34();

  return v23;
}

void sub_1CFDA605C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_1CFDA6B7C(a1, *(v2 + 16), a2);
}

uint64_t sub_1CFDA6068(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v2(&v5, &v6);
  return v5;
}

uint64_t static Logger.balance.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDC32570 != -1)
  {
    swift_once();
  }

  v2 = sub_1CFE30624();
  v3 = __swift_project_value_buffer(v2, qword_1EDC32578);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1CFDA6188(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFDB6C90(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CFDA6208(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFDA631C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CFDA6288@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1CFDA6208(v4 + v8, a4, a2, a3);
}

void sub_1CFDA631C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t GregorianDayRange.init(dayIndexRange:gregorianCalendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CFDA6444(a1, a3, sub_1CFDA68BC);
  v5 = *(type metadata accessor for GregorianDayRange() + 20);
  v6 = sub_1CFE304B4();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t sub_1CFDA6444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SleepingSampleQueryRange.init(morningIndexRange:baselineWindowDays:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CFDA6634(a1, a3, type metadata accessor for GregorianDayRange);
  result = type metadata accessor for SleepingSampleQueryRange();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1CFDA64FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDA6564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDA65CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDA6634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for SleepingSampleQueryRange()
{
  result = qword_1EDC31DD8;
  if (!qword_1EDC31DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFDA66E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDA6750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDA67B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDA6820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1CFDA68BC()
{
  if (!qword_1EDC32CA0)
  {
    sub_1CFE307E4();
    sub_1CFDC53F4(&qword_1EDC32CA8, MEMORY[0x1E696B418]);
    v0 = sub_1CFE30894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC32CA0);
    }
  }
}

uint64_t type metadata accessor for GregorianDayRange()
{
  result = qword_1EDC32D40;
  if (!qword_1EDC32D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFDA699C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDA6A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1CFDA6A74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDA6ADC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1CFDA7600(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1CFDA6B7C(uint64_t *a1@<X0>, os_unfair_lock_s *a2@<X1>, void *a3@<X8>)
{
  v5[1] = *a1;
  os_unfair_lock_lock(a2 + 6);
  sub_1CFDA6BF0(v5);
  os_unfair_lock_unlock(a2 + 6);
  *a3 = v5[0];
}

uint64_t sub_1CFDA6BF0@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 24);
  result = sub_1CFDA6C6C(**(v1 + 16), sub_1CFDB00B0);
  *a1 = result;
  return result;
}

uint64_t sub_1CFDA6C6C(void *a1, void (*a2)(void **__return_ptr))
{
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v2;
  v8 = v22;
  v10 = sub_1CFDA54DC(a1);
  v11 = v22[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v9;
  if (v22[3] < v13)
  {
    sub_1CFDAF754(v13, isUniquelyReferenced_nonNull_native);
    v8 = v22;
    v14 = sub_1CFDA54DC(a1);
    if ((v3 & 1) != (v15 & 1))
    {
      goto LABEL_17;
    }

    v10 = v14;
    *v2 = v22;
    if (v3)
    {
      goto LABEL_10;
    }

LABEL_8:
    a2(&v22);
    v8[(v10 >> 6) + 8] |= 1 << v10;
    *(v8[6] + 8 * v10) = a1;
    *(v8[7] + 8 * v10) = v22;
    v16 = v8[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (!v17)
    {
      v8[2] = v18;
      v19 = a1;
      goto LABEL_10;
    }

    __break(1u);
LABEL_17:
    type metadata accessor for HKFeatureIdentifier(0);
    result = sub_1CFE310F4();
    __break(1u);
    return result;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    sub_1CFDFCB2C();
    v8 = v22;
    *v2 = v22;
    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  *v2 = v22;
  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  v20 = *(v8[7] + 8 * v10);

  return swift_unknownObjectRetain();
}

void sub_1CFDA6E14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1CFDA6E64(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t GregorianDayRange.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GregorianDayRange() + 20);
  v4 = sub_1CFE304B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SleepingSampleQueryRange.expandedBaselineRange(forTarget:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  sub_1CFDA7460();
  v6 = v5;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - v11;
  v13 = sub_1CFE307E4();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v37 - v19;
  sub_1CFDA7880(&qword_1EDC32CA8, MEMORY[0x1E696B418]);
  if (sub_1CFE30864())
  {
    sub_1CFDA7564(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
    v22 = *(v21 + 36);
    if (sub_1CFE30874())
    {
      v23 = *(v3 + *(type metadata accessor for SleepingSampleQueryRange() + 20));
      sub_1CFE30774();
      sub_1CFE30754();
      result = sub_1CFE30874();
      if (result)
      {
        v25 = v14[4];
        v25(v12, v20, v13);
        v25(&v12[*(v6 + 48)], v18, v13);
        sub_1CFDA6820(v12, v10, sub_1CFDA7460);
        v26 = *(v6 + 48);
        v25(v38, v10, v13);
        v27 = v14[1];
        v27(&v10[v26], v13);
        sub_1CFDA6634(v12, v10, sub_1CFDA7460);
        v28 = *(v6 + 48);
        sub_1CFDA7564(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
        v25(&v38[*(v29 + 36)], &v10[v28], v13);
        return (v27)(v10, v13);
      }

      goto LABEL_9;
    }
  }

  result = sub_1CFE30874();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v30 = v14[2];
  v30(v12, a1, v13);
  v30(&v12[*(v6 + 48)], a1, v13);
  sub_1CFDA6820(v12, v10, sub_1CFDA7460);
  v31 = *(v6 + 48);
  v32 = v14[4];
  v37 = v6;
  v33 = v38;
  v32(v38, v10, v13);
  v34 = v14[1];
  v34(&v10[v31], v13);
  sub_1CFDA6634(v12, v10, sub_1CFDA7460);
  v35 = *(v37 + 48);
  sub_1CFDA7564(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  v32(&v33[*(v36 + 36)], &v10[v35], v13);
  return (v34)(v10, v13);
}

uint64_t SleepingSampleQueryRange.earliestBaselineMorningIndex.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1CFDA7564(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  SleepingSampleQueryRange.expandedBaselineRange(forTarget:)(v1, &v9 - v5);
  v7 = sub_1CFE307E4();
  (*(*(v7 - 8) + 16))(a1, v6, v7);
  return sub_1CFDA7A74(v6);
}

void sub_1CFDA7460()
{
  if (!qword_1EDC32548)
  {
    sub_1CFE307E4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC32548);
    }
  }
}

void sub_1CFDA74C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFE307E4();
    v7 = sub_1CFDA7760(&qword_1EDC32CA8, MEMORY[0x1E696B418]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1CFDA7564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFE307E4();
    v7 = sub_1CFDA7880(&qword_1EDC32CA8, MEMORY[0x1E696B418]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1CFDA7600(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFE307E4();
    v7 = sub_1CFDA78C8(&qword_1EDC32CA8);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1CFDA7688(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFDA76D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFDA7718(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFDA7760(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFDA77A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFDA77F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFDA7838(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFDA7880(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFDA78C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CFE307E4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFDA790C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFDA7954(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFDA799C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFDA79E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFDA7A2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFDA7A74(uint64_t a1)
{
  sub_1CFDA7AD0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CFDA7AD0()
{
  if (!qword_1EDC32C90)
  {
    sub_1CFE307E4();
    sub_1CFDAEB0C(&qword_1EDC32CA8, MEMORY[0x1E696B418]);
    v0 = sub_1CFE30BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC32C90);
    }
  }
}

uint64_t SleepingSampleQueryRange.latestBaselineMorningIndex.getter()
{
  v1 = sub_1CFE307E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  sub_1CFDA7564(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  sub_1CFDA7564(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  SleepingSampleQueryRange.expandedBaselineRange(forTarget:)(v0 + *(v14 + 36), v13);
  (*(v2 + 16))(v8, &v13[*(v10 + 44)], v1);
  sub_1CFDA7A74(v13);
  sub_1CFE30744();
  sub_1CFE30764();
  v15 = *(v2 + 8);
  v15(v6, v1);
  return (v15)(v8, v1);
}

uint64_t SleepingSampleSummaryDemoDatasetManager.isDemoDatasetEnabled.getter()
{
  v1 = *(v0 + 16);
  if (sub_1CFE305B4())
  {
    return 1;
  }

  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v3 = result;
    v4 = [result runningInStoreDemoModeF201];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFDA7DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GregorianDayRange();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CFDA7E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFDA68BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1CFE304B4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1CFDA7F5C()
{
  v1 = v0;
  v2 = sub_1CFE30664();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = [v0 queue];
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v7 = sub_1CFE30674();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = *&v0[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsPendingDelivery];
    *&v0[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsPendingDelivery] = MEMORY[0x1E69E7CC0];
    v10 = *&v0[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler];
    if (v10)
    {
      v11 = *&v0[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler + 8];

      v12 = sub_1CFE30334();
      v13 = v1[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_continueAfterInitialResults];
      v14 = swift_allocObject();
      v14[2] = v10;
      v14[3] = v11;
      v14[4] = v1;
      v14[5] = v9;
      aBlock[4] = sub_1CFDAAAA0;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CFDAA484;
      aBlock[3] = &block_descriptor_14;
      v15 = _Block_copy(aBlock);
      sub_1CFDA81D0(v10);
      v16 = v1;

      [v16 queue:v12 dispatchToClientForUUID:(v13 & 1) == 0 shouldDeactivate:v15 block:?];
      _Block_release(v15);

      return sub_1CFDAC3D4(v10);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFDA81D0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CFDA821C(void *a1, void *a2, char a3)
{
  v7 = *(type metadata accessor for TrainingLoadSummaryQueryDescriptor() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  sub_1CFDAC46C(0, &qword_1EDC31888, MEMORY[0x1E69E87A0]);
  v11 = *(*(v10 - 8) + 80);

  return sub_1CFDAAAF8(a1, a2, a3 & 1, v3 + v8);
}

uint64_t SleepingSampleDaySummary.morningIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFE307E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SleepingSampleSummaryDemoDatasetManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t SleepingSampleDaySummary.latestSampleEnd.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_1CFE30314();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v44 - v8;
  sub_1CFDA887C(0);
  v10 = v9;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E6720];
  sub_1CFDA97E8(0, &qword_1EDC32C78, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v44 - v17;
  sub_1CFDA97E8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], v14);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v44 - v21;
  sub_1CFDA88FC(v18);
  v23 = sub_1CFE30014();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v18, 1, v23) == 1)
  {
    sub_1CFDA9B74(v18, &qword_1EDC32C78, MEMORY[0x1E6968130]);
    v25 = 1;
  }

  else
  {
    sub_1CFE2FFD4();
    (*(v24 + 8))(v18, v23);
    v25 = 0;
  }

  v26 = *(v4 + 56);
  v26(v22, v25, 1, v3);
  v27 = type metadata accessor for SleepingSampleDaySummary();
  v28 = *(v10 + 48);
  sub_1CFDA9A94(v2 + *(v27 + 24), v13, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  sub_1CFDA9CFC(v22, &v13[v28]);
  v29 = *(v4 + 48);
  v30 = v29(v13, 1, v3);
  v31 = v29(&v13[v28], 1, v3);
  if (v30 != 1)
  {
    v34 = *(v4 + 32);
    if (v31 == 1)
    {
      v33 = v47;
      v35 = v47;
      v36 = v13;
    }

    else
    {
      v38 = v45;
      v34(v45, v13, v3);
      v39 = v46;
      v34(v46, &v13[v28], v3);
      sub_1CFDA7A2C(&qword_1EDC32030, MEMORY[0x1E6969530]);
      v40 = sub_1CFE30864();
      v41 = (v40 & 1) == 0;
      if (v40)
      {
        v42 = v38;
      }

      else
      {
        v42 = v39;
      }

      if (v41)
      {
        v39 = v38;
      }

      (*(v4 + 8))(v42, v3);
      v33 = v47;
      v35 = v47;
      v36 = v39;
    }

    v34(v35, v36, v3);
    goto LABEL_18;
  }

  if (v31 != 1)
  {
    v37 = &v13[v28];
    v33 = v47;
    (*(v4 + 32))(v47, v37, v3);
LABEL_18:
    v32 = 0;
    return (v26)(v33, v32, 1, v3);
  }

  v32 = 1;
  v33 = v47;
  return (v26)(v33, v32, 1, v3);
}

void sub_1CFDA889C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1CFDA88FC@<X0>(uint64_t a1@<X8>)
{
  v112 = a1;
  v2 = MEMORY[0x1E69E6720];
  sub_1CFDA97E8(0, &qword_1EDC32C78, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v126 = &v103 - v5;
  v140 = type metadata accessor for SleepingSampleAggregate();
  v6 = *(*(v140 - 8) + 64);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFE30014();
  v114 = *(v8 - 8);
  v9 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v138 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CFE30314();
  v113 = *(v11 - 8);
  v12 = v113;
  v13 = *(v113 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v124 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v122 = &v103 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v121 = &v103 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v120 = &v103 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v105 = &v103 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v104 = &v103 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v103 = &v103 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v107 = &v103 - v28;
  v111 = type metadata accessor for SleepingSampleBaselineComparison();
  v29 = *(v111 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v137 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA97E8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], v2);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v128 = &v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v119 = &v103 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v118 = &v103 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v117 = &v103 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v106 = &v103 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v110 = &v103 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v48 = &v103 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v103 - v49;
  v51 = *(v12 + 56);
  v51(&v103 - v49, 1, 1, v11);
  v127 = v48;
  v135 = v51;
  v136 = v12 + 56;
  v51(v48, 1, 1, v11);
  sub_1CFDA97E8(0, &qword_1EDC32038, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6F90]);
  v52 = *(v29 + 72);
  v53 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v109 = swift_allocObject();
  v54 = v109 + v53;
  v55 = type metadata accessor for SleepingSampleDaySummary();
  sub_1CFDA9900(v1 + v55[8], v54, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v1 + v55[9], v54 + v52, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v1 + v55[10], v54 + 2 * v52, type metadata accessor for SleepingSampleBaselineComparison);
  v134 = v52;
  sub_1CFDA9900(v1 + v55[11], v54 + 3 * v52, type metadata accessor for SleepingSampleBaselineComparison);
  v56 = v1 + v55[12];
  v57 = v126;
  sub_1CFDA9900(v56, v54 + 4 * v52, type metadata accessor for SleepingSampleBaselineComparison);
  v133 = (v114 + 48);
  v116 = (v114 + 32);
  v142 = (v113 + 48);
  v143 = (v113 + 32);
  v141 = (v113 + 8);
  v115 = (v114 + 8);
  v58 = v50;
  v59 = 5;
  v108 = v54;
  v60 = v54;
  v125 = v8;
  v123 = v58;
  do
  {
    v61 = v137;
    sub_1CFDA9900(v60, v137, type metadata accessor for SleepingSampleBaselineComparison);
    v62 = v139;
    sub_1CFDA9900(v61, v139, type metadata accessor for SleepingSampleAggregate);
    sub_1CFDA99B4(v61, type metadata accessor for SleepingSampleBaselineComparison);
    sub_1CFDA9A94(v62 + *(v140 + 28), v57, &qword_1EDC32C78, MEMORY[0x1E6968130]);
    sub_1CFDA99B4(v62, type metadata accessor for SleepingSampleAggregate);
    if ((*v133)(v57, 1, v8) == 1)
    {
      sub_1CFDA9B74(v57, &qword_1EDC32C78, MEMORY[0x1E6968130]);
    }

    else
    {
      (*v116)(v138, v57, v8);
      v63 = v118;
      sub_1CFDA9A94(v58, v118, &qword_1EDC32C70, MEMORY[0x1E6969530]);
      v64 = *v142;
      v65 = (*v142)(v63, 1, v11);
      v66 = v120;
      v132 = v64;
      v130 = v59;
      if (v65 == 1)
      {
        sub_1CFE30004();
        if (v64(v63, 1, v11) != 1)
        {
          sub_1CFDA9B74(v63, &qword_1EDC32C70, MEMORY[0x1E6969530]);
        }
      }

      else
      {
        (*v143)(v120, v63, v11);
      }

      v67 = v121;
      sub_1CFE30004();
      v129 = sub_1CFDA7A2C(&qword_1EDC32030, MEMORY[0x1E6969530]);
      v68 = sub_1CFE30854();
      v69 = MEMORY[0x1E6969530];
      sub_1CFDA9B74(v58, &qword_1EDC32C70, MEMORY[0x1E6969530]);
      v70 = *v141;
      if (v68)
      {
        v71 = v66;
      }

      else
      {
        v71 = v67;
      }

      if (v68)
      {
        v72 = v67;
      }

      else
      {
        v72 = v66;
      }

      v131 = *v141;
      v70(v71, v11);
      v73 = *v143;
      v74 = v117;
      (*v143)(v117, v72, v11);
      v135(v74, 0, 1, v11);
      sub_1CFDA9CFC(v74, v58);
      v75 = v127;
      v76 = v128;
      sub_1CFDA9A94(v127, v128, &qword_1EDC32C70, v69);
      v77 = v132;
      if (v132(v76, 1, v11) == 1)
      {
        v78 = v122;
        v79 = v138;
        sub_1CFE2FFD4();
        v80 = v77(v76, 1, v11);
        v81 = v78;
        v82 = v79;
        if (v80 != 1)
        {
          sub_1CFDA9B74(v128, &qword_1EDC32C70, MEMORY[0x1E6969530]);
        }
      }

      else
      {
        v81 = v122;
        v73(v122, v76, v11);
        v82 = v138;
      }

      v83 = v124;
      sub_1CFE2FFD4();
      v84 = sub_1CFE30864();
      v85 = v81;
      v8 = v125;
      (*v115)(v82, v125);
      sub_1CFDA9B74(v75, &qword_1EDC32C70, MEMORY[0x1E6969530]);
      if (v84)
      {
        v86 = v85;
      }

      else
      {
        v86 = v83;
      }

      if (v84)
      {
        v87 = v83;
      }

      else
      {
        v87 = v85;
      }

      v131(v86, v11);
      v88 = v119;
      v73(v119, v87, v11);
      v135(v88, 0, 1, v11);
      sub_1CFDA9CFC(v88, v75);
      v57 = v126;
      v58 = v123;
      v59 = v130;
    }

    v60 += v134;
    --v59;
  }

  while (v59);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v89 = v110;
  sub_1CFDA9A94(v58, v110, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v90 = *v142;
  v91 = (*v142)(v89, 1, v11);
  v92 = v112;
  if (v91 != 1)
  {
    v93 = *v143;
    v94 = v107;
    (*v143)(v107, v89, v11);
    v89 = v106;
    sub_1CFDA9A94(v127, v106, &qword_1EDC32C70, MEMORY[0x1E6969530]);
    if (v90(v89, 1, v11) != 1)
    {
      v97 = v103;
      v93(v103, v89, v11);
      v99 = v113 + 16;
      v98 = *(v113 + 16);
      v98(v104, v94, v11);
      v98(v105, v97, v11);
      sub_1CFE2FFE4();
      v100 = *(v99 - 8);
      v100(v97, v11);
      v100(v94, v11);
      v95 = 0;
      v96 = v127;
      goto LABEL_31;
    }

    (*v141)(v94, v11);
  }

  sub_1CFDA9B74(v127, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v95 = 1;
  v96 = v58;
  v58 = v89;
LABEL_31:
  v101 = MEMORY[0x1E6969530];
  sub_1CFDA9B74(v96, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  sub_1CFDA9B74(v58, &qword_1EDC32C70, v101);
  return (*(v114 + 56))(v92, v95, 1, v8);
}

uint64_t type metadata accessor for SleepingSampleAggregate()
{
  result = qword_1EDC32BC0;
  if (!qword_1EDC32BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFDA9784(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CFDA97E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for SleepingSampleBaselineComparison()
{
  result = qword_1EDC32A68;
  if (!qword_1EDC32A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFDA9898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDA9900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for SleepingSampleDaySummary()
{
  result = qword_1EDC32B18;
  if (!qword_1EDC32B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFDA99B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFDA9A14(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFE0C7E4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CFDA9A94(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFDA97E8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CFDA9B14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFDA9B74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1CFDA97E8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CFDA9CFC(uint64_t a1, uint64_t a2)
{
  sub_1CFDA9D60(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TrainingLoadSummaryQuery.client_deliverTrainingLoadSampleDaySummaries(_:queryUUID:)(unint64_t a1, uint64_t a2)
{
  v5 = sub_1CFE30634();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFE30654();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CFE30354();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  result = sub_1CFDAA930(a1);
  if (result)
  {
    v17 = result;
    v24 = [v2 queue];
    (*(v14 + 16))(&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v13);
    v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v2;
    (*(v14 + 32))(v19 + v18, &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    aBlock[4] = sub_1CFDAA4C8;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CFDAA484;
    aBlock[3] = &block_descriptor_6;
    v20 = _Block_copy(aBlock);
    v21 = v2;
    sub_1CFE30644();
    v29 = MEMORY[0x1E69E7CC0];
    sub_1CFDA77F0(qword_1EDC32128, MEMORY[0x1E69E7F60]);
    sub_1CFDAA398(0, &qword_1EDC32100, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1CFDAA3FC();
    v22 = v28;
    sub_1CFE30D04();
    v23 = v24;
    MEMORY[0x1D38762F0](0, v12, v8, v20);
    _Block_release(v20);

    (*(v27 + 8))(v8, v22);
    (*(v25 + 8))(v12, v26);
  }

  return result;
}

uint64_t sub_1CFDAA148()
{
  v1 = sub_1CFE30354();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1CFDAA214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CFDAA278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CFDAA2DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_1CFDAC5F0(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1CFDAA398(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1CFDAA3FC()
{
  result = qword_1EDC320F8;
  if (!qword_1EDC320F8)
  {
    sub_1CFDAA398(255, &qword_1EDC32100, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC320F8);
  }

  return result;
}

uint64_t sub_1CFDAA484(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

size_t sub_1CFDAA4C8()
{
  v1 = *(sub_1CFE30354() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1CFDAA52C(v2, v3, v4);
}

size_t sub_1CFDAA52C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v7 = *(SampleDaySummary - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](SampleDaySummary - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  if (a1 >> 62)
  {
    v14 = sub_1CFE30EE4();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
LABEL_15:
    v24 = *(a2 + OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsPendingDelivery);
    *(a2 + OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsPendingDelivery) = v15;

    return sub_1CFDA7F5C();
  }

  v26 = MEMORY[0x1E69E7CC0];
  result = sub_1CFDC48C8(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v25 = a3;
    v15 = v26;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v14; ++i)
      {
        MEMORY[0x1D3876480](i, a1);
        sub_1CFE306C4();
        swift_unknownObjectRelease();
        v26 = v15;
        v19 = *(v15 + 16);
        v18 = *(v15 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1CFDC48C8(v18 > 1, v19 + 1, 1);
          v15 = v26;
        }

        *(v15 + 16) = v19 + 1;
        sub_1CFDEAA1C(v13, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19);
      }
    }

    else
    {
      v20 = (a1 + 32);
      do
      {
        v21 = *v20;
        sub_1CFE306C4();

        v26 = v15;
        v23 = *(v15 + 16);
        v22 = *(v15 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1CFDC48C8(v22 > 1, v23 + 1, 1);
          v15 = v26;
        }

        *(v15 + 16) = v23 + 1;
        sub_1CFDEAA1C(v11, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23);
        ++v20;
        --v14;
      }

      while (v14);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFDAA7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFDAA8D8(0, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1CFDAA8D8(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

void sub_1CFDAA8D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1CFDA6E64(255, a3, a4);
    v5 = sub_1CFE306A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1CFDAA930(unint64_t a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1CFE30EE4();
    sub_1CFE30E54();
    v3 = sub_1CFE30EE4();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1CFE30E54();
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1D3876480](v4, a1);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(a1 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        sub_1CFDE9DF4();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_1CFE30E24();
        v7 = *(v9 + 16);
        sub_1CFE30E64();
        sub_1CFE30E74();
        sub_1CFE30E34();
        ++v4;
      }

      while (v6 != v3);
    }
  }

  return v9;
}

uint64_t type metadata accessor for TrainingLoadSampleDaySummary()
{
  result = qword_1EDC32300;
  if (!qword_1EDC32300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFDAAAF8(void *a1, void *a2, int a3, uint64_t a4)
{
  v34 = a4;
  LODWORD(v4) = a3;
  sub_1CFDAC46C(0, &qword_1EDC318A8, MEMORY[0x1E69E8780]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v30[-v11];
  sub_1CFDAC46C(0, &qword_1EDC31A00, MEMORY[0x1E69E75F0]);
  v35 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30[-v15];
  if (qword_1EDC32570 != -1)
  {
    swift_once();
  }

  v17 = sub_1CFE30624();
  __swift_project_value_buffer(v17, qword_1EDC32578);
  v18 = a1;
  v19 = sub_1CFE30604();
  v20 = sub_1CFE30C04();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v31 = v4;
    v4 = v21;
    v22 = swift_slowAlloc();
    v32 = a2;
    v23 = v22;
    v24 = swift_slowAlloc();
    v33 = v8;
    v25 = v24;
    v36 = v24;
    *v4 = 136446466;
    *(v4 + 4) = sub_1CFDAAF6C(0xD000000000000022, 0x80000001CFE35CF0, &v36);
    *(v4 + 12) = 2112;
    *(v4 + 14) = v18;
    *v23 = v18;
    v26 = v18;
    _os_log_impl(&dword_1CFDA3000, v19, v20, "[%{public}s] Yielding query results to stream: %@", v4, 0x16u);
    sub_1CFDAB090(v23);
    a2 = v32;
    MEMORY[0x1D3876FF0](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v27 = v25;
    v8 = v33;
    MEMORY[0x1D3876FF0](v27, -1, -1);
    v28 = v4;
    LOBYTE(v4) = v31;
    MEMORY[0x1D3876FF0](v28, -1, -1);
  }

  if (v4)
  {
    *v16 = a2;
  }

  else
  {
    sub_1CFDAB1D0(v34, v16, &qword_1EDC32CA0, MEMORY[0x1E69E5F90], sub_1CFDA7600);
    *(v16 + *(type metadata accessor for TrainingLoadSampleDaySummaryCollection() + 20)) = a2;
  }

  swift_storeEnumTagMultiPayload();
  sub_1CFDAB240(a2, v4 & 1);
  sub_1CFDAC46C(0, &qword_1EDC31888, MEMORY[0x1E69E87A0]);
  sub_1CFE30B64();
  (*(v9 + 8))(v12, v8);
  return sub_1CFDAB334(v16, &qword_1EDC31A00, MEMORY[0x1E69E75F0], sub_1CFDAC46C);
}

uint64_t type metadata accessor for TrainingLoadSampleDaySummaryCollection()
{
  result = qword_1EDC31C88;
  if (!qword_1EDC31C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1CFDAAF08()
{
  result = qword_1EDC31E60;
  if (!qword_1EDC31E60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC31E60);
  }

  return result;
}

uint64_t sub_1CFDAAF6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1CFDAC4E4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1CFDAC5F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void sub_1CFDAB038()
{
  if (!qword_1EDC31820)
  {
    sub_1CFDAB0EC();
    v0 = sub_1CFE30C74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC31820);
    }
  }
}

uint64_t sub_1CFDAB090(uint64_t a1)
{
  sub_1CFDAB038();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CFDAB0EC()
{
  result = qword_1EDC324E8;
  if (!qword_1EDC324E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC324E8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1CFDAB17C()
{
  result = qword_1EDC32848;
  if (!qword_1EDC32848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32848);
  }

  return result;
}

uint64_t sub_1CFDAB1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

id sub_1CFDAB240(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_1CFDAB260(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1CFDAB334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for GregorianDayRange() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1CFE307E4();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  sub_1CFDA68BC();
  v6(v0 + v3 + *(v7 + 36), v5);
  v8 = v1[7];
  v9 = sub_1CFE304B4();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_0(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 40));

  return MEMORY[0x1EEE6BDD0](v1, 48, 7);
}

uint64_t storeEnumTagSinglePayload for SleepingSampleDaySummary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepingSampleDaySummary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1CFDAB694(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x49676E696E726F6DLL;
    v6 = 0xD000000000000017;
    if (a1 != 2)
    {
      v6 = 0x437265696C74756FLL;
    }

    if (a1)
    {
      v5 = 0x656E696C65736162;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7461726970736572;
    v2 = 0xD000000000000010;
    if (a1 != 7)
    {
      v2 = 0x656C7341656D6974;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7461527472616568;
    if (a1 != 4)
    {
      v3 = 0x79784F646F6F6C62;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1CFDAB7F8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDA7AD0();
    sub_1CFDA7688(a2, MEMORY[0x1E696B418]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFDAB888(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDA7AD0();
    sub_1CFDA790C(a2, MEMORY[0x1E696B418]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFDAB918(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDAB9C4(255, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
    sub_1CFDA7A2C(a2, MEMORY[0x1E696B418]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CFDAB9C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFE307E4();
    v7 = sub_1CFDA7A2C(&qword_1EDC32CA8, MEMORY[0x1E696B418]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1CFDABA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
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

unint64_t sub_1CFDABB4C()
{
  result = qword_1EDC31948;
  if (!qword_1EDC31948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31948);
  }

  return result;
}

uint64_t sub_1CFDABBA0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1CFDABC10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1CFDABC78()
{
  if (!qword_1EDC318C0)
  {
    sub_1CFE307E4();
    v0 = sub_1CFE30C74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC318C0);
    }
  }
}

uint64_t TrainingLoadBaselineComparison.init(acuteBaseline:chronicBaseline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CFDAD280();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline();
  v11 = *(*(ChronicBaseline - 8) + 64);
  MEMORY[0x1EEE9AC00](ChronicBaseline);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison();
  v15 = a3 + *(BaselineComparison + 24);
  sub_1CFDAC088(a1, a3, type metadata accessor for TrainingLoadAcuteBaseline);
  sub_1CFDAC088(a2, a3 + *(BaselineComparison + 20), type metadata accessor for TrainingLoadChronicBaseline);
  sub_1CFDAC088(a2, v13, type metadata accessor for TrainingLoadChronicBaseline);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v13;
    if (*v13 == 0.0)
    {
      sub_1CFDAC13C(a2, type metadata accessor for TrainingLoadChronicBaseline);
      result = sub_1CFDAC13C(a1, type metadata accessor for TrainingLoadAcuteBaseline);
      *v15 = 0;
      *(v15 + 8) = 1;
    }

    else
    {
      sub_1CFDAC088(a1, v9, sub_1CFDAD280);
      sub_1CFDAC3A0(0);
      v19 = v18;
      v20 = *(v18 - 8);
      if ((*(v20 + 48))(v9, 1, v18) == 1)
      {
        sub_1CFDAC13C(v9, sub_1CFDAD280);
        sub_1CFDAC13C(a2, type metadata accessor for TrainingLoadChronicBaseline);
        result = sub_1CFDAC13C(a1, type metadata accessor for TrainingLoadAcuteBaseline);
        *v15 = 0;
        *(v15 + 8) = 1;
      }

      else
      {
        v21 = sub_1CFE30684();
        (*(v20 + 8))(v9, v19);
        [v21 _value];
        v23 = v22;

        sub_1CFDAC13C(a2, type metadata accessor for TrainingLoadChronicBaseline);
        result = sub_1CFDAC13C(a1, type metadata accessor for TrainingLoadAcuteBaseline);
        *v15 = (v23 - v16) / v16;
        *(v15 + 8) = 0;
      }
    }
  }

  else
  {
    sub_1CFDAC13C(a2, type metadata accessor for TrainingLoadChronicBaseline);
    sub_1CFDAC13C(a1, type metadata accessor for TrainingLoadAcuteBaseline);
    *v15 = 0;
    *(v15 + 8) = 1;
    return sub_1CFDAC13C(v13, type metadata accessor for TrainingLoadChronicBaseline);
  }

  return result;
}

uint64_t type metadata accessor for TrainingLoadChronicBaseline()
{
  result = qword_1EDC323A8;
  if (!qword_1EDC323A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFDAC088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for TrainingLoadAcuteBaseline()
{
  result = qword_1EDC32410;
  if (!qword_1EDC32410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFDAC13C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFDAC19C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDAC204(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TrainingLoadAcuteBaseline.init(quantity:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CFDAD280();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1CFDAD5CC();
    v8 = a1;
    sub_1CFE306B4();
    sub_1CFDAC3A0(0);
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  }

  else
  {
    sub_1CFDAC3A0(0);
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  }

  return sub_1CFDAD4FC(v7, a2, sub_1CFDAD280);
}

uint64_t sub_1CFDAC3D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_destroy_helper_3(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

uint64_t type metadata accessor for TrainingLoadSummaryQueryDescriptor()
{
  result = qword_1EDC31D28;
  if (!qword_1EDC31D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFDAC46C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    SampleDaySummaryCollection = type metadata accessor for TrainingLoadSampleDaySummaryCollection();
    v7 = sub_1CFDAAF08();
    v8 = a3(a1, SampleDaySummaryCollection, v7, MEMORY[0x1E69E7288]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1CFDAC4E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1CFDFC03C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1CFE30E14();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1CFDAC5F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t SleepingSampleDaySummary.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1CFDACAFC(0, &qword_1EDC31790, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDAB17C();
  sub_1CFE311A4();
  LOBYTE(v23) = 0;
  sub_1CFE307E4();
  sub_1CFDA7A2C(&qword_1EDC318C8, MEMORY[0x1E696B418]);
  sub_1CFE31054();
  if (!v2)
  {
    v12 = type metadata accessor for SleepingSampleDaySummary();
    v13 = v12[5];
    LOBYTE(v23) = 1;
    sub_1CFDAB9C4(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
    sub_1CFDAB918(&qword_1EDC31880, &qword_1EDC318C8);
    sub_1CFE31054();
    v14 = v12[6];
    LOBYTE(v23) = 2;
    sub_1CFE30314();
    sub_1CFDA7A2C(&qword_1EDC319A0, MEMORY[0x1E6969530]);
    sub_1CFE31014();
    v15 = (v3 + v12[7]);
    v16 = *v15;
    LOBYTE(v15) = *(v15 + 8);
    v23 = v16;
    v24 = v15;
    v25 = 3;
    sub_1CFDABB4C();
    sub_1CFE31014();
    v17 = v12[8];
    LOBYTE(v23) = 4;
    type metadata accessor for SleepingSampleBaselineComparison();
    sub_1CFDA7A2C(&qword_1EDC31910, type metadata accessor for SleepingSampleBaselineComparison);
    sub_1CFE31054();
    v18 = v12[9];
    LOBYTE(v23) = 5;
    sub_1CFE31054();
    v19 = v12[10];
    LOBYTE(v23) = 6;
    sub_1CFE31054();
    v20 = v12[11];
    LOBYTE(v23) = 7;
    sub_1CFE31054();
    v21 = v12[12];
    LOBYTE(v23) = 8;
    sub_1CFE31054();
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_1CFDACAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFDAB17C();
    v7 = a3(a1, &type metadata for SleepingSampleDaySummary.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1CFDACB60()
{
  result = qword_1EDC32830;
  if (!qword_1EDC32830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32830);
  }

  return result;
}

uint64_t TrainingLoadChronicBaseline.init(target:firstDayWithData:minConsecutiveDaysOfDataRequired:chronicBaselineCandidate:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v49 = a4;
  v54 = a3;
  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline();
  v10 = *(*(ChronicBaseline - 8) + 64);
  MEMORY[0x1EEE9AC00](ChronicBaseline);
  v48 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CFDA7460();
  v53 = v12;
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - v17;
  sub_1CFDA7AD0();
  v52 = v19;
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDABC78();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1CFE307E4();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v55 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDABC10(a2, v26, sub_1CFDABC78);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_1CFDAD1D4(a2, sub_1CFDABC78);
    (*(v28 + 8))(a1, v27);
    sub_1CFDAD1D4(v26, sub_1CFDABC78);
    return swift_storeEnumTagMultiPayload();
  }

  v46 = a2;
  v47 = ChronicBaseline;
  v45 = *(v28 + 32);
  v45(v55, v26, v27);
  sub_1CFDA7688(&qword_1EDC32CA8, MEMORY[0x1E696B418]);
  v51 = a1;
  result = sub_1CFE30874();
  if (result)
  {
    v44 = a6;
    v32 = *(v28 + 16);
    v32(v18, v55, v27);
    v33 = v53;
    v32(&v18[*(v53 + 48)], v51, v27);
    sub_1CFDABC10(v18, v16, sub_1CFDA7460);
    v34 = *(v33 + 48);
    v35 = v45;
    v45(v22, v16, v27);
    v36 = *(v28 + 8);
    v36(&v16[v34], v27);
    sub_1CFDAD618(v18, v16, sub_1CFDA7460);
    v35(&v22[*(v52 + 36)], &v16[*(v33 + 48)], v27);
    v36(v16, v27);
    sub_1CFDA7688(&unk_1EDC31E78, MEMORY[0x1E696B418]);
    sub_1CFE30CA4();
    v37 = v54;
    if (v56 < v54)
    {
      sub_1CFDAD680();
      v39 = *(v38 + 48);
      v53 = *(v38 + 64);
      v40 = v44;
      sub_1CFDABC10(v22, v44, sub_1CFDA7AD0);
      sub_1CFE30CA4();
      sub_1CFDAD1D4(v46, sub_1CFDABC78);
      v36(v51, v27);
      sub_1CFDAD1D4(v22, sub_1CFDA7AD0);
      v36(v55, v27);
      *(v40 + v39) = v56;
      *(v40 + v53) = v37;
      return swift_storeEnumTagMultiPayload();
    }

    sub_1CFDAD1D4(v46, sub_1CFDABC78);
    v36(v51, v27);
    sub_1CFDAD1D4(v22, sub_1CFDA7AD0);
    v36(v55, v27);
    v41 = v49;
    if (v50)
    {
      v41 = 0.0;
    }

    v42 = v48;
    *v48 = v41;
    swift_storeEnumTagMultiPayload();
    return sub_1CFDAD618(v42, v44, type metadata accessor for TrainingLoadChronicBaseline);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFDAD1D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for TrainingLoadBaselineComparison()
{
  result = qword_1EDC32260;
  if (!qword_1EDC32260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFDAD280()
{
  if (!qword_1EDC32CB0)
  {
    sub_1CFDBCB98(255, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348, MEMORY[0x1E696B370]);
    v0 = sub_1CFE30C74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC32CB0);
    }
  }
}

uint64_t TrainingLoadSampleDaySummary.init(morningIndex:baselineRange:trainingLoad:activityType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v13 = SampleDaySummary[7];
  *(a6 + v13) = 5;
  v14 = sub_1CFE307E4();
  v15 = *(v14 - 8);
  (*(v15 + 16))(a6, a1, v14);
  sub_1CFDAC19C(a2, a6 + SampleDaySummary[5], sub_1CFDA7AD0);
  sub_1CFDAC19C(a3, a6 + SampleDaySummary[8], type metadata accessor for TrainingLoadBaselineComparison);
  v16 = a3 + *(type metadata accessor for TrainingLoadBaselineComparison() + 24);
  if (*(v16 + 8))
  {
    sub_1CFDAC204(a3, type metadata accessor for TrainingLoadBaselineComparison);
    sub_1CFDAC204(a2, sub_1CFDA7AD0);
    result = (*(v15 + 8))(a1, v14);
    v18 = 5;
  }

  else
  {
    TrainingLoadBand.init(fractionalDifferenceFromChronicBaseline:)(*v16);
    sub_1CFDAC204(a3, type metadata accessor for TrainingLoadBaselineComparison);
    sub_1CFDAC204(a2, sub_1CFDA7AD0);
    result = (*(v15 + 8))(a1, v14);
    v18 = v20;
  }

  *(a6 + v13) = v18;
  v19 = a6 + SampleDaySummary[6];
  *v19 = a4;
  *(v19 + 8) = a5 & 1;
  return result;
}

uint64_t sub_1CFDAD4FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDAD564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CFDAD5CC()
{
  result = qword_1EDC32C80;
  if (!qword_1EDC32C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC32C80);
  }

  return result;
}

uint64_t sub_1CFDAD618(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1CFDAD680()
{
  if (!qword_1EDC32C98)
  {
    sub_1CFDA7AD0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDC32C98);
    }
  }
}

uint64_t getEnumTagSinglePayload for BalanceURLBuilder.RoutingKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1CFDAD780()
{
  v1 = *v0;
  v2 = 0x49676E696E726F6DLL;
  v3 = 0xD000000000000018;
  if (v1 != 4)
  {
    v3 = 0x6962616C69617661;
  }

  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = v3;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x797469746E617571;
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
    return v4;
  }
}

uint64_t SleepingSampleAggregate.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1CFDAE3E8(0, &qword_1EDC317C8, sub_1CFDAF700, &type metadata for SleepingSampleAggregate.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDAF700();
  sub_1CFE311A4();
  v25 = 0;
  sub_1CFE307E4();
  sub_1CFDADC34(&qword_1EDC318C8, MEMORY[0x1E696B418]);
  sub_1CFE31054();
  if (!v2)
  {
    v12 = type metadata accessor for SleepingSampleAggregate();
    v13 = v12[5];
    v24 = 1;
    sub_1CFE304B4();
    sub_1CFDADC34(&qword_1EDC31990, MEMORY[0x1E6969AE8]);
    sub_1CFE31054();
    v14 = v12[6];
    v23 = 2;
    sub_1CFDAC3A0(0);
    sub_1CFDADC34(&unk_1EDC318E8, sub_1CFDAC3A0);
    sub_1CFE31014();
    v15 = v12[7];
    v22 = 3;
    sub_1CFE30014();
    sub_1CFDADC34(&qword_1EDC319B8, MEMORY[0x1E6968130]);
    sub_1CFE31014();
    v16 = v12[8];
    v21 = 4;
    sub_1CFE30314();
    sub_1CFDADC34(&qword_1EDC319A0, MEMORY[0x1E6969530]);
    sub_1CFE31014();
    v20 = *(v3 + v12[9]);
    v19 = 5;
    sub_1CFDADCC4();
    sub_1CFE31054();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1CFDADC34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFDADC7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CFDADCC4()
{
  result = qword_1EDC31958;
  if (!qword_1EDC31958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31958);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for BalanceURLBuilder.RoutingKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t SleepingSampleAggregate.Availability.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6F58];
  sub_1CFDAE3E8(0, &qword_1EDC317B0, sub_1CFDB2C64, &type metadata for SleepingSampleAggregate.Availability.AvailableCodingKeys, MEMORY[0x1E69E6F58]);
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v39 - v7;
  sub_1CFDAE3E8(0, &qword_1EDC317A0, sub_1CFDB2D68, &type metadata for SleepingSampleAggregate.Availability.EstablishingBaselineDataCodingKeys, v4);
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v39 - v10;
  sub_1CFDAE3E8(0, &qword_1EDC31798, sub_1CFDB2E6C, &type metadata for SleepingSampleAggregate.Availability.InsufficientBaselineDataCodingKeys, v4);
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v39 - v13;
  sub_1CFDAE3E8(0, &qword_1EDC317A8, sub_1CFDB2F70, &type metadata for SleepingSampleAggregate.Availability.InsufficientDataCodingKeys, v4);
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v39 - v16;
  sub_1CFDAE3E8(0, &qword_1EDC317B8, sub_1CFDAE4A4, &type metadata for SleepingSampleAggregate.Availability.NoDataCodingKeys, v4);
  v18 = v17;
  v40 = *(v17 - 8);
  v19 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v39 - v20;
  sub_1CFDAE3E8(0, &qword_1EDC317C0, sub_1CFDAE450, &type metadata for SleepingSampleAggregate.Availability.CodingKeys, v4);
  v53 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v39 - v25;
  v27 = *v2;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDAE450();
  sub_1CFE311A4();
  v29 = (v23 + 8);
  if (v27 <= 1)
  {
    v35 = v50;
    v34 = v51;
    v36 = v52;
    if (!v27)
    {
      v54 = 0;
      sub_1CFDAE4A4();
      v37 = v53;
      sub_1CFE30FF4();
      (*(v40 + 8))(v21, v18);
      return (*v29)(v26, v37);
    }

    v55 = 1;
    sub_1CFDB2F70();
    v31 = v53;
    sub_1CFE30FF4();
    (*(v34 + 8))(v35, v36);
  }

  else
  {
    if (v27 == 2)
    {
      v56 = 2;
      sub_1CFDB2E6C();
      v30 = v41;
      v31 = v53;
      sub_1CFE30FF4();
      v33 = v42;
      v32 = v43;
    }

    else if (v27 == 3)
    {
      v57 = 3;
      sub_1CFDB2D68();
      v30 = v44;
      v31 = v53;
      sub_1CFE30FF4();
      v33 = v45;
      v32 = v46;
    }

    else
    {
      v58 = 4;
      sub_1CFDB2C64();
      v30 = v47;
      v31 = v53;
      sub_1CFE30FF4();
      v33 = v48;
      v32 = v49;
    }

    (*(v33 + 8))(v30, v32);
  }

  return (*v29)(v26, v31);
}

void sub_1CFDAE3E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1CFDAE450()
{
  result = qword_1EDC328D8;
  if (!qword_1EDC328D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328D8);
  }

  return result;
}

unint64_t sub_1CFDAE4A4()
{
  result = qword_1EDC328C0;
  if (!qword_1EDC328C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328C0);
  }

  return result;
}

unint64_t sub_1CFDAE4F8()
{
  v1 = *v0;
  v2 = 0x617461446F6ELL;
  v3 = 0xD000000000000018;
  v4 = 0x6C62616C69617661;
  if (v1 == 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1CFDAE5A4()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6C62616C69617661;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x617461446F6ELL;
  }
}

uint64_t storeEnumTagSinglePayload for TrainingLoadBand(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t storeEnumTagSinglePayload for PlatformSpecificAppBundleProvider(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TrainingLoadBand(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1CFDAE7FC()
{
  v1 = 0x6962616C69617661;
  if (*v0 != 1)
  {
    v1 = 0x656E696C65736162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461676572676761;
  }
}

uint64_t SleepingSampleBaselineComparison.encode(to:)(void *a1)
{
  sub_1CFDAF62C(0, &qword_1EDC31750, sub_1CFDAF694, &type metadata for SleepingSampleBaselineComparison.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v14 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDAF694();
  sub_1CFE311A4();
  v17 = 0;
  type metadata accessor for SleepingSampleAggregate();
  sub_1CFDAEB0C(&qword_1EDC31950, type metadata accessor for SleepingSampleAggregate);
  sub_1CFE31054();
  if (!v1)
  {
    v10 = type metadata accessor for SleepingSampleBaselineComparison();
    v11 = *(v10 + 20);
    v16 = 1;
    type metadata accessor for SleepingSampleBaselineAvailability();
    sub_1CFDAEB0C(&qword_1EDC31908, type metadata accessor for SleepingSampleBaselineAvailability);
    sub_1CFE31054();
    v12 = *(v10 + 24);
    v15 = 2;
    type metadata accessor for SleepingSampleBaseline();
    sub_1CFDAEB0C(&qword_1EDC31970, type metadata accessor for SleepingSampleBaseline);
    sub_1CFE31014();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1CFDAEB0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SleepingSampleBaselineAvailability()
{
  result = qword_1EDC329D0;
  if (!qword_1EDC329D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for SleepingSampleBaselineComparison.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepingSampleBaselineComparison.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t SleepingSampleBaselineAvailability.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1CFDAF41C(0, &qword_1EDC31738, sub_1CFDB415C, &type metadata for SleepingSampleBaselineAvailability.AvailableCodingKeys, MEMORY[0x1E69E6F58]);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v49 - v5;
  sub_1CFDAF41C(0, &qword_1EDC31730, sub_1CFDB4260, &type metadata for SleepingSampleBaselineAvailability.InsufficientDataCodingKeys, v2);
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v49 - v8;
  sub_1CFDA7AD0();
  v59 = v9;
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v51 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v49 - v13;
  sub_1CFDAF41C(0, &qword_1EDC31740, sub_1CFDAF53C, &type metadata for SleepingSampleBaselineAvailability.NoDataCodingKeys, v2);
  v15 = v14;
  v50 = *(v14 - 8);
  v16 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v49 - v17;
  v19 = type metadata accessor for SleepingSampleBaselineAvailability();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CFDAF41C(0, &qword_1EDC31748, sub_1CFDAF484, &type metadata for SleepingSampleBaselineAvailability.CodingKeys, v2);
  v24 = *(v23 - 8);
  v63 = v23;
  v64 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v49 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDAF484();
  v62 = v27;
  sub_1CFE311A4();
  sub_1CFDAF4D8(v60, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v38 = v50;
    v39 = *v22;
    v65 = 0;
    sub_1CFDAF53C();
    v34 = v62;
    v35 = v63;
    sub_1CFE30FF4();
    sub_1CFE31044();
    (*(v38 + 8))(v18, v15);
    return (*(v64 + 8))(v34, v35);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1CFDAD680();
    v60 = *(v22 + *(v30 + 48));
    v31 = *(v22 + *(v30 + 64));
    v32 = v54;
    sub_1CFDB46C8(v22, v54, sub_1CFDA7AD0);
    v69 = 1;
    sub_1CFDB4260();
    v33 = v52;
    v34 = v62;
    v35 = v63;
    sub_1CFE30FF4();
    v68 = 0;
    sub_1CFDAB888(&qword_1EDC31880, &qword_1EDC318C8);
    v36 = v56;
    v37 = v61;
    sub_1CFE31054();
    if (!v37)
    {
      v61 = v31;
      v67 = 1;
      sub_1CFE31044();
      v66 = 2;
      sub_1CFE31044();
    }

    (*(v55 + 8))(v33, v36);
    sub_1CFE0E6B8(v32, sub_1CFDA7AD0);
    return (*(v64 + 8))(v34, v35);
  }

  sub_1CFDCB868();
  v42 = *(v22 + *(v41 + 48));
  v43 = v51;
  sub_1CFDB46C8(v22, v51, sub_1CFDA7AD0);
  v72 = 2;
  sub_1CFDB415C();
  v44 = v53;
  v46 = v62;
  v45 = v63;
  sub_1CFE30FF4();
  v71 = 0;
  sub_1CFDAB888(&qword_1EDC31880, &qword_1EDC318C8);
  v47 = v58;
  v48 = v61;
  sub_1CFE31054();
  if (!v48)
  {
    v70 = 1;
    sub_1CFE31044();
  }

  (*(v57 + 8))(v44, v47);
  sub_1CFE0E6B8(v43, sub_1CFDA7AD0);
  return (*(v64 + 8))(v46, v45);
}

void sub_1CFDAF41C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1CFDAF484()
{
  result = qword_1EDC32688[0];
  if (!qword_1EDC32688[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC32688);
  }

  return result;
}

uint64_t sub_1CFDAF4D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleBaselineAvailability();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CFDAF53C()
{
  result = qword_1EDC32670;
  if (!qword_1EDC32670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32670);
  }

  return result;
}

uint64_t type metadata accessor for SleepingSampleBaseline()
{
  result = qword_1EDC32C60;
  if (!qword_1EDC32C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFDAF62C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1CFDAF694()
{
  result = qword_1EDC32760[0];
  if (!qword_1EDC32760[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC32760);
  }

  return result;
}

unint64_t sub_1CFDAF700()
{
  result = qword_1EDC328F0;
  if (!qword_1EDC328F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328F0);
  }

  return result;
}

uint64_t sub_1CFDAF754(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1CFDAFA2C(0, &qword_1EDC317F8, MEMORY[0x1E69E6EC8]);
  v37 = a2;
  result = sub_1CFE30F04();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v17 = __clz(__rbit64(v13));
      v38 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {
        v24 = v22;
        swift_unknownObjectRetain();
      }

      v25 = *(v8 + 40);
      sub_1CFE30924();
      sub_1CFE31144();
      sub_1CFE30984();
      v26 = sub_1CFE31184();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v36;
      v13 = v38;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        v38 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void sub_1CFDAFA2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    v7 = v6;
    v8 = sub_1CFDFE0B8();
    v9 = sub_1CFDA5A24(&qword_1EDC32510, type metadata accessor for HKFeatureIdentifier);
    v10 = a3(a1, v7, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

id sub_1CFDAFAE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFDAFB4C(a1);
  v5 = [objc_allocWithZone(MEMORY[0x1E696C178]) initWithFeatureIdentifier:a1 healthStore:a2 contextConstraint:v4];

  return v5;
}

id sub_1CFDAFB4C(uint64_t a1)
{
  v1 = MEMORY[0x1E69E6F90];
  sub_1CFDA5C94(0, &qword_1EDC31710, sub_1CFDB0404, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFE33E10;
  v3 = *MEMORY[0x1E696B8C0];
  *(inited + 32) = *MEMORY[0x1E696B8C0];
  v4 = objc_opt_self();
  sub_1CFDA5C94(0, &qword_1EDC31708, type metadata accessor for HKFeatureAvailabilityContext, v1);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1CFE35FE0;
  v6 = *MEMORY[0x1E696B7D8];
  *(v5 + 32) = *MEMORY[0x1E696B7D8];
  v7 = v3;
  v8 = v6;
  v9 = sub_1CFE308F4();
  v10 = *MEMORY[0x1E696B808];
  *(v5 + 40) = v9;
  *(v5 + 48) = v10;
  v11 = v10;
  sub_1CFDB0104(v5);
  swift_setDeallocating();
  type metadata accessor for HKFeatureAvailabilityContext(0);
  swift_arrayDestroy();
  sub_1CFDA5A24(&qword_1EDC31850, type metadata accessor for HKFeatureAvailabilityContext);
  v12 = sub_1CFE30B74();

  v13 = [v4 onlySomeContexts_];

  v14 = *MEMORY[0x1E696B8B8];
  *(inited + 40) = v13;
  *(inited + 48) = v14;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1CFE324E0;
  v16 = *MEMORY[0x1E696B800];
  *(v15 + 32) = *MEMORY[0x1E696B800];
  v17 = v16;
  v18 = v14;
  sub_1CFDB0104(v15);
  swift_setDeallocating();
  sub_1CFDB03A8(v15 + 32);
  v19 = sub_1CFE30B74();

  v20 = [v4 onlySomeContexts_];

  v21 = *MEMORY[0x1E696B8B0];
  *(inited + 56) = v20;
  *(inited + 64) = v21;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1CFE324E0;
  *(v22 + 32) = v17;
  v23 = v17;
  v24 = v21;
  sub_1CFDB0104(v22);
  swift_setDeallocating();
  sub_1CFDB03A8(v22 + 32);
  v25 = sub_1CFE30B74();

  v26 = [v4 onlySomeContexts_];

  v27 = *MEMORY[0x1E696B8C8];
  *(inited + 72) = v26;
  *(inited + 80) = v27;
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_1CFE324E0;
  *(v28 + 32) = v23;
  v29 = v27;
  sub_1CFDB0104(v28);
  swift_setDeallocating();
  sub_1CFDB03A8(v28 + 32);
  v30 = sub_1CFE30B74();

  v31 = [v4 onlySomeContexts_];

  v32 = *MEMORY[0x1E696B8A8];
  *(inited + 88) = v31;
  *(inited + 96) = v32;
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_1CFE324E0;
  v34 = *MEMORY[0x1E696B7F8];
  *(v33 + 32) = *MEMORY[0x1E696B7F8];
  v35 = v32;
  v36 = v34;
  sub_1CFDB0104(v33);
  swift_setDeallocating();
  sub_1CFDB03A8(v33 + 32);
  v37 = sub_1CFE30B74();

  v38 = [v4 onlySomeContexts_];

  *(inited + 104) = v38;
  v39 = sub_1CFDA5CF8(inited, &unk_1EDC317E8, &qword_1EDC31830, 0x1E696C140);
  swift_setDeallocating();
  sub_1CFDB0404();
  swift_arrayDestroy();
  if (*(v39 + 16) && (v40 = sub_1CFDA54DC(a1), (v41 & 1) != 0))
  {
    v42 = *(*(v39 + 56) + 8 * v40);

    return v42;
  }

  else
  {

    v44 = [v4 allContexts];

    return v44;
  }
}

uint64_t sub_1CFDB007C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

void *sub_1CFDB00B0@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = **(v1 + 32);
  result = v4(&v7, &v6);
  *a1 = v7;
  return result;
}

uint64_t sub_1CFDB0104(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1CFDB02EC();
    v3 = sub_1CFE30D84();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_1CFE30924();
      sub_1CFE31144();
      v29 = v7;
      sub_1CFE30984();
      v9 = sub_1CFE31184();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_1CFE30924();
        v20 = v19;
        if (v18 == sub_1CFE30924() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_1CFE310B4();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1CFDB02EC()
{
  if (!qword_1EDC31800)
  {
    type metadata accessor for HKFeatureAvailabilityContext(255);
    sub_1CFE2F770(&qword_1EDC31850, type metadata accessor for HKFeatureAvailabilityContext);
    v0 = sub_1CFE30D94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC31800);
    }
  }
}

uint64_t sub_1CFDB03A8(uint64_t a1)
{
  type metadata accessor for HKFeatureAvailabilityContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CFDB0404()
{
  if (!qword_1EDC31858)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_1CFDA6E64(255, &qword_1EDC31830, 0x1E696C140);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC31858);
    }
  }
}

uint64_t SleepingSampleDaySummary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v59 = type metadata accessor for SleepingSampleBaselineComparison();
  v3 = *(*(v59 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v59);
  v54 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v50 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v56 = &v50 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v57 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v50 - v12;
  sub_1CFDA97E8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v60 = &v50 - v15;
  sub_1CFDAB9C4(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  v63 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v50 - v18;
  v65 = sub_1CFE307E4();
  v61 = *(v65 - 8);
  v19 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDACAFC(0, &qword_1EDC32068, MEMORY[0x1E69E6F48]);
  v67 = v21;
  v64 = *(v21 - 8);
  v22 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v50 - v23;
  v25 = type metadata accessor for SleepingSampleDaySummary();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v27 + 24);
  v70 = v30;
  v31 = sub_1CFE30314();
  (*(*(v31 - 8) + 56))(&v29[v30], 1, 1, v31);
  v32 = &v29[*(v25 + 28)];
  *v32 = 0;
  v32[8] = 1;
  v33 = a1;
  v35 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(v33, v35);
  sub_1CFDAB17C();
  v68 = v24;
  v36 = v69;
  sub_1CFE31194();
  v37 = v70;
  if (v36)
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
    return sub_1CFDA9B74(&v29[v37], &qword_1EDC32C70, MEMORY[0x1E6969530]);
  }

  else
  {
    v69 = v31;
    v52 = v32;
    v38 = v62;
    v39 = v33;
    LOBYTE(v71) = 0;
    sub_1CFDA7A2C(&qword_1EDC32108, MEMORY[0x1E696B418]);
    v40 = v65;
    sub_1CFE30FD4();
    (*(v61 + 32))(v29, v66, v40);
    LOBYTE(v71) = 1;
    sub_1CFDAB918(&unk_1EDC320C8, &qword_1EDC32108);
    sub_1CFE30FD4();
    v51 = v25;
    sub_1CFDF72E0(v38, &v29[*(v25 + 20)]);
    LOBYTE(v71) = 2;
    sub_1CFDA7A2C(&qword_1EDC32480, MEMORY[0x1E6969530]);
    v41 = v60;
    sub_1CFE30F94();
    sub_1CFDB1078(v41, &v29[v70]);
    v73 = 3;
    sub_1CFDB110C();
    sub_1CFE30F94();
    v43 = v72;
    v44 = v52;
    *v52 = v71;
    v44[8] = v43;
    LOBYTE(v71) = 4;
    sub_1CFDA7A2C(&qword_1EDC321C8, type metadata accessor for SleepingSampleBaselineComparison);
    v45 = v58;
    sub_1CFE30FD4();
    sub_1CFDB4880(v45, &v29[v51[8]], type metadata accessor for SleepingSampleBaselineComparison);
    LOBYTE(v71) = 5;
    v46 = v57;
    sub_1CFE30FD4();
    sub_1CFDB4880(v46, &v29[v51[9]], type metadata accessor for SleepingSampleBaselineComparison);
    LOBYTE(v71) = 6;
    v47 = v56;
    sub_1CFE30FD4();
    sub_1CFDB4880(v47, &v29[v51[10]], type metadata accessor for SleepingSampleBaselineComparison);
    LOBYTE(v71) = 7;
    v48 = v55;
    sub_1CFE30FD4();
    sub_1CFDB4880(v48, &v29[v51[11]], type metadata accessor for SleepingSampleBaselineComparison);
    LOBYTE(v71) = 8;
    v49 = v54;
    sub_1CFE30FD4();
    (*(v64 + 8))(v68, v67);
    sub_1CFDB4880(v49, &v29[v51[12]], type metadata accessor for SleepingSampleBaselineComparison);
    sub_1CFDA9900(v29, v53, type metadata accessor for SleepingSampleDaySummary);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return sub_1CFDA99B4(v29, type metadata accessor for SleepingSampleDaySummary);
  }
}

unint64_t sub_1CFDB0FCC()
{
  result = qword_1EDC32838;
  if (!qword_1EDC32838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32838);
  }

  return result;
}

unint64_t sub_1CFDB1024()
{
  result = qword_1EDC32840;
  if (!qword_1EDC32840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32840);
  }

  return result;
}

uint64_t sub_1CFDB1078(uint64_t a1, uint64_t a2)
{
  sub_1CFDA97E8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CFDB110C()
{
  result = qword_1EDC32448;
  if (!qword_1EDC32448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32448);
  }

  return result;
}

void *sub_1CFDB11C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t SleepingSampleBaselineComparison.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  sub_1CFDB177C(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v29 - v5;
  v32 = type metadata accessor for SleepingSampleBaselineAvailability();
  v6 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for SleepingSampleAggregate();
  v9 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAF62C(0, &qword_1EDC32060, sub_1CFDAF694, &type metadata for SleepingSampleBaselineComparison.CodingKeys, MEMORY[0x1E69E6F48]);
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = type metadata accessor for SleepingSampleBaselineComparison();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 24);
  v21 = type metadata accessor for SleepingSampleBaseline();
  v22 = *(*(v21 - 8) + 56);
  v39 = v19;
  v40 = v20;
  v22(&v19[v20], 1, 1, v21);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDAF694();
  v37 = v14;
  v24 = v38;
  sub_1CFE31194();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1CFDC87EC(&v39[v40]);
  }

  else
  {
    v29 = v21;
    v38 = v15;
    v43 = 0;
    sub_1CFDAEB0C(&qword_1EDC32450, type metadata accessor for SleepingSampleAggregate);
    v25 = v34;
    sub_1CFE30FD4();
    v26 = v39;
    sub_1CFDB3634(v25, v39, type metadata accessor for SleepingSampleAggregate);
    v42 = 1;
    sub_1CFDAEB0C(&qword_1EDC321C0, type metadata accessor for SleepingSampleBaselineAvailability);
    sub_1CFE30FD4();
    sub_1CFDB3634(v8, v26 + *(v38 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
    v41 = 2;
    sub_1CFDAEB0C(&qword_1EDC32468, type metadata accessor for SleepingSampleBaseline);
    v27 = v31;
    sub_1CFE30F94();
    (*(v35 + 8))(v37, v36);
    sub_1CFDB4730(v27, v26 + v40);
    sub_1CFDB47B0(v26, v30, type metadata accessor for SleepingSampleBaselineComparison);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1CFDB34A4(v26, type metadata accessor for SleepingSampleBaselineComparison);
  }
}

void sub_1CFDB177C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFE30C74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CFDB17D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFE30C74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CFDB1824(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFE30C74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1CFDB187C()
{
  result = qword_1EDC32750;
  if (!qword_1EDC32750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32750);
  }

  return result;
}

unint64_t sub_1CFDB18D4()
{
  result = qword_1EDC32758;
  if (!qword_1EDC32758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32758);
  }

  return result;
}

uint64_t sub_1CFDB193C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1CFDAA8D8(0, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1CFDAA8D8(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t SleepingSampleAggregate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  sub_1CFDA9D60(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB2328(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v42 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1CFE304B4();
  v43 = *(v48 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CFE307E4();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAE3E8(0, &qword_1EDC320A0, sub_1CFDAF700, &type metadata for SleepingSampleAggregate.CodingKeys, MEMORY[0x1E69E6F48]);
  v50 = v17;
  v47 = *(v17 - 8);
  v18 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v38 - v19;
  v21 = type metadata accessor for SleepingSampleAggregate();
  v22 = *(*(v21 - 1) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDAF700();
  v49 = v20;
  v26 = v51;
  sub_1CFE31194();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v45;
  v28 = a1;
  v29 = v48;
  v58 = 0;
  sub_1CFDADC34(&qword_1EDC32108, MEMORY[0x1E696B418]);
  v30 = v46;
  sub_1CFE30FD4();
  (*(v44 + 32))(v24, v30, v14);
  v57 = 1;
  sub_1CFDADC34(&qword_1EDC32478, MEMORY[0x1E6969AE8]);
  sub_1CFE30FD4();
  v38 = v14;
  (*(v43 + 32))(&v24[v21[5]], v27, v29);
  sub_1CFDAC3A0(0);
  v56 = 2;
  sub_1CFDADC34(&unk_1EDC32118, sub_1CFDAC3A0);
  v31 = v42;
  v46 = 0;
  sub_1CFE30F94();
  v51 = v28;
  v32 = v24;
  sub_1CFDAD564(v31, &v24[v21[6]], sub_1CFDAD280);
  sub_1CFE30014();
  v55 = 3;
  sub_1CFDADC34(&unk_1EDC32488, MEMORY[0x1E6968130]);
  v33 = v41;
  sub_1CFE30F94();
  v34 = v21;
  sub_1CFDAD564(v33, v32 + v21[7], sub_1CFDB2328);
  sub_1CFE30314();
  v54 = 4;
  sub_1CFDADC34(&qword_1EDC32480, MEMORY[0x1E6969530]);
  v35 = v40;
  sub_1CFE30F94();
  v36 = v47;
  sub_1CFDAD564(v35, v32 + v34[8], sub_1CFDA9D60);
  v52 = 5;
  sub_1CFDB2424();
  sub_1CFE30FD4();
  (*(v36 + 8))(v49, v50);
  *(v32 + v34[9]) = v53;
  sub_1CFDB343C(v32, v39, type metadata accessor for SleepingSampleAggregate);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return sub_1CFDB35D4(v32, type metadata accessor for SleepingSampleAggregate);
}

unint64_t sub_1CFDB2378()
{
  result = qword_1EDC328E0;
  if (!qword_1EDC328E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328E0);
  }

  return result;
}

unint64_t sub_1CFDB23D0()
{
  result = qword_1EDC328E8;
  if (!qword_1EDC328E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328E8);
  }

  return result;
}

unint64_t sub_1CFDB2424()
{
  result = qword_1EDC32458;
  if (!qword_1EDC32458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32458);
  }

  return result;
}

uint64_t SleepingSampleAggregate.Availability.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v55 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1CFDAE3E8(0, &qword_1EDC32088, sub_1CFDB2C64, &type metadata for SleepingSampleAggregate.Availability.AvailableCodingKeys, MEMORY[0x1E69E6F48]);
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v46 - v6;
  sub_1CFDAE3E8(0, &qword_1EDC32078, sub_1CFDB2D68, &type metadata for SleepingSampleAggregate.Availability.EstablishingBaselineDataCodingKeys, v3);
  v54 = v7;
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v46 - v9;
  sub_1CFDAE3E8(0, &qword_1EDC32070, sub_1CFDB2E6C, &type metadata for SleepingSampleAggregate.Availability.InsufficientBaselineDataCodingKeys, v3);
  v50 = v10;
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v46 - v12;
  sub_1CFDAE3E8(0, &qword_1EDC32080, sub_1CFDB2F70, &type metadata for SleepingSampleAggregate.Availability.InsufficientDataCodingKeys, v3);
  v49 = v13;
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v46 - v15;
  sub_1CFDAE3E8(0, &qword_1EDC32090, sub_1CFDAE4A4, &type metadata for SleepingSampleAggregate.Availability.NoDataCodingKeys, v3);
  v17 = v16;
  v46 = *(v16 - 8);
  v18 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - v19;
  sub_1CFDAE3E8(0, &qword_1EDC32098, sub_1CFDAE450, &type metadata for SleepingSampleAggregate.Availability.CodingKeys, v3);
  v22 = v21;
  v56 = *(v21 - 8);
  v23 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v46 - v24;
  v26 = a1[3];
  v27 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1CFDAE450();
  v28 = v62;
  sub_1CFE31194();
  if (v28)
  {
    goto LABEL_9;
  }

  v62 = v17;
  v30 = v57;
  v29 = v58;
  v31 = v59;
  v32 = v60;
  v33 = sub_1CFE30FE4();
  v34 = (2 * *(v33 + 16)) | 1;
  v63 = v33;
  v64 = v33 + 32;
  v65 = 0;
  v66 = v34;
  v35 = sub_1CFDB48E8();
  v36 = v25;
  if (v35 == 5 || v65 != v66 >> 1)
  {
    v39 = sub_1CFE30DF4();
    swift_allocError();
    v41 = v40;
    sub_1CFDCB7AC();
    v43 = *(v42 + 48);
    *v41 = &type metadata for SleepingSampleAggregate.Availability;
    sub_1CFE30F74();
    sub_1CFE30DD4();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
    (*(v56 + 8))(v36, v22);
    swift_unknownObjectRelease();
LABEL_9:
    v44 = v61;
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v67 = v35;
  if (v35 <= 1u)
  {
    if (v35)
    {
      v68 = 1;
      sub_1CFDB2F70();
      sub_1CFE30F64();
      (*(v47 + 8))(v30, v49);
    }

    else
    {
      v68 = 0;
      sub_1CFDAE4A4();
      sub_1CFE30F64();
      (*(v46 + 8))(v20, v62);
    }

    (*(v56 + 8))(v25, v22);
    swift_unknownObjectRelease();
    v44 = v61;
    v37 = v55;
  }

  else
  {
    v37 = v55;
    if (v35 == 2)
    {
      v68 = 2;
      sub_1CFDB2E6C();
      sub_1CFE30F64();
      v38 = v56;
      (*(v48 + 8))(v29, v50);
    }

    else
    {
      v38 = v56;
      if (v35 == 3)
      {
        v68 = 3;
        sub_1CFDB2D68();
        sub_1CFE30F64();
        (*(v51 + 8))(v31, v54);
      }

      else
      {
        v68 = 4;
        sub_1CFDB2C64();
        sub_1CFE30F64();
        (*(v52 + 8))(v32, v53);
      }
    }

    (*(v38 + 8))(v36, v22);
    swift_unknownObjectRelease();
    v44 = v61;
  }

  *v37 = v67;
  return __swift_destroy_boxed_opaque_existential_1(v44);
}

unint64_t sub_1CFDB2C64()
{
  result = qword_1EDC328A8;
  if (!qword_1EDC328A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328A8);
  }

  return result;
}

unint64_t sub_1CFDB2CBC()
{
  result = qword_1EDC32898;
  if (!qword_1EDC32898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32898);
  }

  return result;
}

unint64_t sub_1CFDB2D14()
{
  result = qword_1EDC328A0;
  if (!qword_1EDC328A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328A0);
  }

  return result;
}

unint64_t sub_1CFDB2D68()
{
  result = qword_1EDC32878;
  if (!qword_1EDC32878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32878);
  }

  return result;
}

unint64_t sub_1CFDB2DC0()
{
  result = qword_1EDC32868;
  if (!qword_1EDC32868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32868);
  }

  return result;
}

unint64_t sub_1CFDB2E18()
{
  result = qword_1EDC32870;
  if (!qword_1EDC32870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32870);
  }

  return result;
}

unint64_t sub_1CFDB2E6C()
{
  result = qword_1EDC32860;
  if (!qword_1EDC32860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32860);
  }

  return result;
}

unint64_t sub_1CFDB2EC4()
{
  result = qword_1EDC32850;
  if (!qword_1EDC32850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32850);
  }

  return result;
}

unint64_t sub_1CFDB2F1C()
{
  result = qword_1EDC32858;
  if (!qword_1EDC32858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32858);
  }

  return result;
}

unint64_t sub_1CFDB2F70()
{
  result = qword_1EDC32890;
  if (!qword_1EDC32890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32890);
  }

  return result;
}

unint64_t sub_1CFDB2FC8()
{
  result = qword_1EDC32880;
  if (!qword_1EDC32880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32880);
  }

  return result;
}

unint64_t sub_1CFDB3020()
{
  result = qword_1EDC32888;
  if (!qword_1EDC32888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32888);
  }

  return result;
}

unint64_t sub_1CFDB3078()
{
  result = qword_1EDC328B0;
  if (!qword_1EDC328B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328B0);
  }

  return result;
}

unint64_t sub_1CFDB30D0()
{
  result = qword_1EDC328B8;
  if (!qword_1EDC328B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328B8);
  }

  return result;
}

unint64_t sub_1CFDB3128()
{
  result = qword_1EDC328C8;
  if (!qword_1EDC328C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328C8);
  }

  return result;
}

unint64_t sub_1CFDB3180()
{
  result = qword_1EDC328D0;
  if (!qword_1EDC328D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328D0);
  }

  return result;
}

uint64_t sub_1CFDB31D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFDB31FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFDB31FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461446F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CFE38D80 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001CFE38F80 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001CFE38FA0 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v6 = sub_1CFE310B4();

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

uint64_t sub_1CFDB33BC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFDA9784(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CFDB343C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDB34A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFDB3504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFDB3564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1CFDA9784(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CFDB35D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFDB3634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDB369C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SleepingSampleBaselineAvailability.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1CFDAF41C(0, &qword_1EDC32048, sub_1CFDB415C, &type metadata for SleepingSampleBaselineAvailability.AvailableCodingKeys, MEMORY[0x1E69E6F48]);
  v80 = v4;
  v82 = *(v4 - 8);
  v5 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v87 = &v73 - v6;
  sub_1CFDAF41C(0, &qword_1EDC32040, sub_1CFDB4260, &type metadata for SleepingSampleBaselineAvailability.InsufficientDataCodingKeys, v3);
  v81 = v7;
  v83 = *(v7 - 8);
  v8 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v73 - v9;
  sub_1CFDAF41C(0, &qword_1EDC32050, sub_1CFDAF53C, &type metadata for SleepingSampleBaselineAvailability.NoDataCodingKeys, v3);
  v11 = *(v10 - 8);
  v78 = v10;
  v79 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v73 - v13;
  sub_1CFDAF41C(0, &qword_1EDC32058, sub_1CFDAF484, &type metadata for SleepingSampleBaselineAvailability.CodingKeys, v3);
  v85 = v14;
  v89 = *(v14 - 8);
  v15 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v73 - v16;
  v18 = type metadata accessor for SleepingSampleBaselineAvailability();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v73 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v73 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v73 - v29;
  v31 = a1[3];
  v32 = a1[4];
  v91 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1CFDAF484();
  v33 = v90;
  sub_1CFE31194();
  if (!v33)
  {
    v74 = v28;
    v34 = v84;
    v35 = v85;
    v75 = v22;
    v76 = v25;
    v36 = v86;
    v37 = v87;
    v77 = v30;
    v90 = v18;
    v38 = v88;
    v39 = sub_1CFE30FE4();
    v40 = (2 * *(v39 + 16)) | 1;
    v92 = v39;
    v93 = v39 + 32;
    v94 = 0;
    v95 = v40;
    v41 = sub_1CFDB4610();
    if (v41 == 3 || v94 != v95 >> 1)
    {
      v46 = sub_1CFE30DF4();
      swift_allocError();
      v48 = v47;
      sub_1CFDCB7AC();
      v49 = v17;
      v51 = *(v50 + 48);
      *v48 = v90;
      sub_1CFE30F74();
      sub_1CFE30DD4();
      (*(*(v46 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v46);
      swift_willThrow();
      (*(v89 + 8))(v49, v35);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v41)
      {
        if (v41 == 1)
        {
          v96 = 1;
          sub_1CFDB4260();
          v42 = v36;
          sub_1CFE30F64();
          v43 = v38;
          sub_1CFDA7AD0();
          v96 = 0;
          sub_1CFDAB888(&unk_1EDC320C8, &qword_1EDC32108);
          v44 = v81;
          sub_1CFE30FD4();
          v45 = v89;
          v96 = 1;
          v60 = sub_1CFE30FC4();
          sub_1CFDAD680();
          v61 = v42;
          v63 = v62;
          *&v76[*(v62 + 48)] = v60;
          v96 = 2;
          v68 = sub_1CFE30FC4();
          v69 = *(v63 + 64);
          (*(v83 + 8))(v61, v44);
          (*(v45 + 8))(v17, v35);
          swift_unknownObjectRelease();
          v70 = v76;
          *&v76[v69] = v68;
          swift_storeEnumTagMultiPayload();
          v71 = v77;
          v72 = v70;
        }

        else
        {
          v96 = 2;
          sub_1CFDB415C();
          v56 = v37;
          sub_1CFE30F64();
          v43 = v38;
          sub_1CFDA7AD0();
          v96 = 0;
          sub_1CFDAB888(&unk_1EDC320C8, &qword_1EDC32108);
          v57 = v80;
          sub_1CFE30FD4();
          v96 = 1;
          v64 = sub_1CFE30FC4();
          sub_1CFDCB868();
          v66 = *(v65 + 48);
          (*(v82 + 8))(v56, v57);
          (*(v89 + 8))(v17, v35);
          swift_unknownObjectRelease();
          v67 = v75;
          *&v75[v66] = v64;
          swift_storeEnumTagMultiPayload();
          v72 = v67;
          v71 = v77;
        }
      }

      else
      {
        v96 = 0;
        sub_1CFDAF53C();
        sub_1CFE30F64();
        v71 = v77;
        v53 = v78;
        v54 = sub_1CFE30FC4();
        v55 = v89;
        v58 = v54;
        (*(v79 + 8))(v34, v53);
        (*(v55 + 8))(v17, v35);
        swift_unknownObjectRelease();
        v59 = v74;
        *v74 = v58;
        swift_storeEnumTagMultiPayload();
        v72 = v59;
        v43 = v38;
      }

      sub_1CFDB46C8(v72, v71, type metadata accessor for SleepingSampleBaselineAvailability);
      sub_1CFDB46C8(v71, v43, type metadata accessor for SleepingSampleBaselineAvailability);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v91);
}

unint64_t sub_1CFDB415C()
{
  result = qword_1EDC32658;
  if (!qword_1EDC32658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32658);
  }

  return result;
}

unint64_t sub_1CFDB41B4()
{
  result = qword_1EDC32648;
  if (!qword_1EDC32648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32648);
  }

  return result;
}

unint64_t sub_1CFDB420C()
{
  result = qword_1EDC32650;
  if (!qword_1EDC32650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32650);
  }

  return result;
}

unint64_t sub_1CFDB4260()
{
  result = qword_1EDC32640;
  if (!qword_1EDC32640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32640);
  }

  return result;
}

unint64_t sub_1CFDB42B8()
{
  result = qword_1EDC32630;
  if (!qword_1EDC32630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32630);
  }

  return result;
}

unint64_t sub_1CFDB4310()
{
  result = qword_1EDC32638;
  if (!qword_1EDC32638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32638);
  }

  return result;
}

unint64_t sub_1CFDB4368()
{
  result = qword_1EDC32660;
  if (!qword_1EDC32660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32660);
  }

  return result;
}

unint64_t sub_1CFDB43C0()
{
  result = qword_1EDC32668;
  if (!qword_1EDC32668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32668);
  }

  return result;
}

unint64_t sub_1CFDB4418()
{
  result = qword_1EDC32678;
  if (!qword_1EDC32678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32678);
  }

  return result;
}

unint64_t sub_1CFDB4470()
{
  result = qword_1EDC32680;
  if (!qword_1EDC32680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32680);
  }

  return result;
}

uint64_t sub_1CFDB44C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFDB44EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFDB44EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461446F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CFE38D80 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CFE310B4();

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

uint64_t sub_1CFDB4618()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for TrainingLoadChronicBaseline.AvailableCodingKeys(_WORD *result, int a2, int a3)
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

uint64_t sub_1CFDB46C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDB4730(uint64_t a1, uint64_t a2)
{
  sub_1CFDB177C(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFDB47B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDB4818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDB4880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDB48E8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFDB491C(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v8 = sub_1CFE30354();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CFE30A84();
  sub_1CFE30344();
  v14 = a1;
  SleepingSampleDaySummaryQuery.client_deliverSleepingSampleDaySummaries(_:clearPending:isFinalBatch:queryUUID:)(v13, a4, a5, v12);

  return (*(v9 + 8))(v12, v8);
}

uint64_t SleepingSampleDaySummaryQuery.client_deliverSleepingSampleDaySummaries(_:clearPending:isFinalBatch:queryUUID:)(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v29 = a2;
  v30 = a3;
  ObjectType = swift_getObjectType();
  v27 = *v4;
  v26 = *MEMORY[0x1E69E7D40];
  v32 = sub_1CFE30634();
  v35 = *(v32 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFE30654();
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CFE30354();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);

  v28 = [v4 queue];
  (*(v15 + 16))(&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v14);
  v17 = (*(v15 + 80) + 57) & ~*(v15 + 80);
  v18 = swift_allocObject();
  v19 = v26 & v27;
  *(v18 + 16) = *((v26 & v27) + 0x50);
  *(v18 + 24) = *(v19 + 88);
  *(v18 + 32) = a1;
  v20 = v30;
  *(v18 + 40) = v29;
  *(v18 + 48) = v4;
  *(v18 + 56) = v20;
  (*(v15 + 32))(v18 + v17, &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  *(v18 + ((v16 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  aBlock[4] = sub_1CFDB4F4C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFDAA484;
  aBlock[3] = &block_descriptor_6_0;
  v21 = _Block_copy(aBlock);
  v22 = v4;
  sub_1CFE30644();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1CFDA7954(qword_1EDC32128, MEMORY[0x1E69E7F60]);
  sub_1CFDA631C(0, &qword_1EDC32100, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1CFDAA3FC();
  v23 = v32;
  sub_1CFE30D04();
  v24 = v28;
  MEMORY[0x1D38762F0](0, v13, v9, v21);
  _Block_release(v21);

  (*(v35 + 8))(v9, v23);
  (*(v33 + 8))(v13, v34);
}

uint64_t sub_1CFDB4E74()
{
  v1 = sub_1CFE30354();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

void sub_1CFDB4F4C()
{
  v1 = *(sub_1CFE30354() - 8);
  v2 = (*(v1 + 80) + 57) & ~*(v1 + 80);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1CFDB4FE8(v3, v4, v5, v6, v0 + v2, v7);
}

void sub_1CFDB4FE8(uint64_t a1, char a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6)
{
  v55 = a6;
  v57 = a5;
  v56 = a4;
  v9 = *a3;
  v10 = *MEMORY[0x1E69E7D40];
  v11 = sub_1CFE30354();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v54 - v17;
  v64 = a1;
  v19 = *((v10 & v9) + 0x50);
  v59 = v19;
  v60 = *((v10 & v9) + 0x58);
  v20 = *(v60 + 24);
  v21 = *(v60 + 8);
  v61[1] = v19;
  v62 = v21;
  v63 = v20;
  sub_1CFE306D4();
  v22 = sub_1CFE30AE4();
  WitnessTable = swift_getWitnessTable();
  v25 = sub_1CFDB55DC(sub_1CFDB59FC, v58, v22, v19, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v24);
  v26 = v25;
  if (a2)
  {
    v27 = qword_1EDC327F0;
    swift_beginAccess();
    v28 = *(a3 + v27);
    *(a3 + v27) = v26;
  }

  else
  {
    v64 = v25;
    swift_beginAccess();
    sub_1CFE30AE4();
    swift_getWitnessTable();
    sub_1CFE30AD4();
    swift_endAccess();
  }

  v29 = v11;
  if (v56)
  {
    if (qword_1EDC32570 != -1)
    {
      swift_once();
    }

    v30 = sub_1CFE30624();
    __swift_project_value_buffer(v30, qword_1EDC32578);
    (*(v12 + 16))(v18, v57, v11);
    v31 = sub_1CFE30604();
    v32 = sub_1CFE30C04();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v61[0] = v34;
      *v33 = 136446466;
      v64 = v55;
      swift_getMetatypeMetadata();
      v35 = sub_1CFE30944();
      v37 = sub_1CFDAAF6C(v35, v36, v61);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = sub_1CFE30324();
      v40 = v39;
      (*(v12 + 8))(v18, v29);
      v41 = sub_1CFDAAF6C(v38, v40, v61);

      *(v33 + 14) = v41;
      _os_log_impl(&dword_1CFDA3000, v31, v32, "[%{public}s] Delivering results %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3876FF0](v34, -1, -1);
      MEMORY[0x1D3876FF0](v33, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v18, v29);
    }

    sub_1CFDB5A28(v57);
  }

  else
  {
    if (qword_1EDC32570 != -1)
    {
      swift_once();
    }

    v42 = sub_1CFE30624();
    __swift_project_value_buffer(v42, qword_1EDC32578);
    (*(v12 + 16))(v16, v57, v11);
    v43 = sub_1CFE30604();
    v44 = sub_1CFE30C04();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v61[0] = v46;
      *v45 = 136446466;
      v64 = v55;
      swift_getMetatypeMetadata();
      v47 = sub_1CFE30944();
      v49 = sub_1CFDAAF6C(v47, v48, v61);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      v50 = sub_1CFE30324();
      v52 = v51;
      (*(v12 + 8))(v16, v11);
      v53 = sub_1CFDAAF6C(v50, v52, v61);

      *(v45 + 14) = v53;
      _os_log_impl(&dword_1CFDA3000, v43, v44, "[%{public}s] Deferring result delivery %s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3876FF0](v46, -1, -1);
      MEMORY[0x1D3876FF0](v45, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v16, v11);
    }
  }
}

uint64_t sub_1CFDB55DC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1CFE30BA4();
  if (!v26)
  {
    return sub_1CFE30AA4();
  }

  v48 = v26;
  v52 = sub_1CFE30E94();
  v39 = sub_1CFE30EA4();
  sub_1CFE30E44();
  result = sub_1CFE30B94();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1CFE30BC4();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1CFE30E84();
      result = sub_1CFE30BB4();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1CFDB5A28(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v55 = *MEMORY[0x1E69E7D40] & *v2;
  v4 = sub_1CFE30354();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v47 - v9;
  v10 = sub_1CFE30664();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = [v2 queue];
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v15 = sub_1CFE30674();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v16 = qword_1EDC327F0;
  swift_beginAccess();
  v17 = *(v2 + v16);
  v18 = *(v55 + 80);

  v19 = sub_1CFE30AA4();
  v20 = *(v2 + v16);
  *(v2 + v16) = v19;

  v21 = *(v2 + qword_1EDC32800);
  if (v21)
  {
    v49 = *(v2 + qword_1EDC32800 + 8);
    v50 = v21;

    v52 = sub_1CFE30334();
    v51 = *(v2 + qword_1EDC36C18);
    v22 = v53;
    (*(v5 + 16))(v53, a1, v4);
    v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v24 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = v4;
    v48 = v17;
    v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = v18;
    *(v27 + 24) = *(v55 + 88);
    (*(v5 + 32))(v27 + v23, v22, v47);
    v28 = (v27 + v24);
    v30 = v49;
    v29 = v50;
    *v28 = v50;
    v28[1] = v30;
    *(v27 + v25) = v2;
    *(v27 + v26) = v48;
    *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
    aBlock[4] = sub_1CFDB60E4;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CFDAA484;
    aBlock[3] = &block_descriptor_21;
    v31 = _Block_copy(aBlock);
    sub_1CFDA81D0(v29);
    v32 = v2;

    v33 = v52;
    [v32 queue:v52 dispatchToClientForUUID:(v51 & 1) == 0 shouldDeactivate:v31 block:?];
    _Block_release(v31);

    sub_1CFDAC3D4(v29);
    return;
  }

  if (qword_1EDC32570 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v34 = sub_1CFE30624();
  __swift_project_value_buffer(v34, qword_1EDC32578);
  (*(v5 + 16))(v8, a1, v4);
  v35 = sub_1CFE30604();
  v36 = v5;
  v37 = sub_1CFE30BF4();
  if (os_log_type_enabled(v35, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v57 = v39;
    *v38 = 136446466;
    aBlock[0] = ObjectType;
    swift_getMetatypeMetadata();
    v40 = sub_1CFE30944();
    v42 = sub_1CFDAAF6C(v40, v41, &v57);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    v43 = sub_1CFE30324();
    v45 = v44;
    (*(v36 + 8))(v8, v4);
    v46 = sub_1CFDAAF6C(v43, v45, &v57);

    *(v38 + 14) = v46;
    _os_log_impl(&dword_1CFDA3000, v35, v37, "[%{public}s] Missing results handler! %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3876FF0](v39, -1, -1);
    MEMORY[0x1D3876FF0](v38, -1, -1);
  }

  else
  {

    (*(v36 + 8))(v8, v4);
  }
}

uint64_t sub_1CFDB6010()
{
  v1 = sub_1CFE30354();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v7);

  return MEMORY[0x1EEE6BDD0](v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1CFDB60E4()
{
  v1 = *(sub_1CFE30354() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CFDB6198(v0 + v2, v7, v8, v9, v10, v11);
}

uint64_t sub_1CFDB6198(uint64_t a1, uint64_t (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a4;
  v11 = sub_1CFE30354();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC32570 != -1)
  {
    swift_once();
  }

  v16 = sub_1CFE30624();
  __swift_project_value_buffer(v16, qword_1EDC32578);
  (*(v12 + 16))(v15, a1, v11);
  v17 = sub_1CFE30604();
  v18 = sub_1CFE30C04();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = a5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v36 = a3;
    v22 = a2;
    v23 = v21;
    v38[0] = v21;
    v38[1] = a6;
    *v20 = 136446466;
    swift_getMetatypeMetadata();
    v24 = sub_1CFE30944();
    v26 = sub_1CFDAAF6C(v24, v25, v38);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = sub_1CFE30324();
    v29 = v28;
    (*(v12 + 8))(v15, v11);
    v30 = sub_1CFDAAF6C(v27, v29, v38);

    *(v20 + 14) = v30;
    _os_log_impl(&dword_1CFDA3000, v17, v18, "[%{public}s] Calling results with final results %s", v20, 0x16u);
    swift_arrayDestroy();
    v31 = v23;
    a2 = v22;
    MEMORY[0x1D3876FF0](v31, -1, -1);
    v32 = v20;
    a5 = v35;
    MEMORY[0x1D3876FF0](v32, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  return a2(v37, a5, 0);
}

uint64_t sub_1CFDB6454(void *a1, void *a2, char a3)
{
  v7 = *(type metadata accessor for SleepingSampleDaySummaryQueryDescriptor() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  sub_1CFDB65A8(0, &qword_1EDC31890, MEMORY[0x1E69E87A0]);
  v11 = *(*(v10 - 8) + 80);

  return sub_1CFDB6620(a1, a2, a3 & 1, v3 + v8);
}

uint64_t type metadata accessor for SleepingSampleDaySummaryQueryDescriptor()
{
  result = qword_1EDC31EF8;
  if (!qword_1EDC31EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFDB65A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SleepingSampleDaySummaryCollection();
    v7 = sub_1CFDAAF08();
    v8 = a3(a1, v6, v7, MEMORY[0x1E69E7288]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1CFDB6620(void *a1, void *a2, int a3, uint64_t a4)
{
  v34 = a4;
  LODWORD(v4) = a3;
  sub_1CFDB65A8(0, &qword_1EDC318B0, MEMORY[0x1E69E8780]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v30[-v11];
  sub_1CFDB65A8(0, &qword_1EDC31E58, MEMORY[0x1E69E75F0]);
  v35 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30[-v15];
  if (qword_1EDC32570 != -1)
  {
    swift_once();
  }

  v17 = sub_1CFE30624();
  __swift_project_value_buffer(v17, qword_1EDC32578);
  v18 = a1;
  v19 = sub_1CFE30604();
  v20 = sub_1CFE30C04();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v31 = v4;
    v4 = v21;
    v22 = swift_slowAlloc();
    v32 = a2;
    v23 = v22;
    v24 = swift_slowAlloc();
    v33 = v8;
    v25 = v24;
    v36 = v24;
    *v4 = 136446466;
    *(v4 + 4) = sub_1CFDAAF6C(0xD000000000000027, 0x80000001CFE35B80, &v36);
    *(v4 + 12) = 2112;
    *(v4 + 14) = v18;
    *v23 = v18;
    v26 = v18;
    _os_log_impl(&dword_1CFDA3000, v19, v20, "[%{public}s] Yielding query results to stream: %@", v4, 0x16u);
    sub_1CFDAB090(v23);
    a2 = v32;
    MEMORY[0x1D3876FF0](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v27 = v25;
    v8 = v33;
    MEMORY[0x1D3876FF0](v27, -1, -1);
    v28 = v4;
    LOBYTE(v4) = v31;
    MEMORY[0x1D3876FF0](v28, -1, -1);
  }

  if (v4)
  {
    *v16 = a2;
  }

  else
  {
    sub_1CFDA67B8(v34, v16, type metadata accessor for GregorianDayRange);
    *(v16 + *(type metadata accessor for SleepingSampleDaySummaryCollection() + 20)) = a2;
  }

  swift_storeEnumTagMultiPayload();
  sub_1CFDAB240(a2, v4 & 1);
  sub_1CFDB65A8(0, &qword_1EDC31890, MEMORY[0x1E69E87A0]);
  sub_1CFE30B64();
  (*(v9 + 8))(v12, v8);
  return sub_1CFDB6B80(v16);
}

uint64_t type metadata accessor for SleepingSampleDaySummaryCollection()
{
  result = qword_1EDC321B0;
  if (!qword_1EDC321B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFDB69F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GregorianDayRange();
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

uint64_t sub_1CFDB6AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GregorianDayRange();
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

uint64_t sub_1CFDB6B80(uint64_t a1)
{
  sub_1CFDB65A8(0, &qword_1EDC31E58, MEMORY[0x1E69E75F0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFDB6C24@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1CFDA6188(v4 + v8, a4, a2, a3);
}

void sub_1CFDB6C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t TrainingLoadSampleDaySummary.morningIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFE307E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TrainingLoadSampleDaySummary.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1CFDB7110(0, &qword_1EDC31760, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v19[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDB718C();
  sub_1CFE311A4();
  v23 = 0;
  sub_1CFE307E4();
  sub_1CFDA76D0(&qword_1EDC318C8, MEMORY[0x1E696B418]);
  sub_1CFE31054();
  if (!v2)
  {
    SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
    v13 = SampleDaySummary[5];
    v22 = 1;
    sub_1CFDA7AD0();
    sub_1CFDB7348(&qword_1EDC31880, &qword_1EDC318C8);
    sub_1CFE31054();
    v14 = (v3 + SampleDaySummary[6]);
    v15 = *(v14 + 8);
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = *v14;
    }

    v20 = v16;
    v21 = v15;
    v19[15] = 2;
    sub_1CFDB73D8(0, &qword_1EDC31E68);
    sub_1CFDB7424(&qword_1EDC31808);
    sub_1CFE31054();
    v19[14] = *(v3 + SampleDaySummary[7]);
    v19[13] = 3;
    sub_1CFDB73D8(0, &qword_1EDC32470);
    sub_1CFDB7494(&qword_1EDC31978, sub_1CFDB7510);
    sub_1CFE31054();
    v17 = SampleDaySummary[8];
    v19[12] = 4;
    type metadata accessor for TrainingLoadBaselineComparison();
    sub_1CFDA76D0(&qword_1EDC31918, type metadata accessor for TrainingLoadBaselineComparison);
    sub_1CFE31054();
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_1CFDB7110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFDB718C();
    v7 = a3(a1, &type metadata for TrainingLoadSampleDaySummary.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1CFDB718C()
{
  result = qword_1EDC31F80;
  if (!qword_1EDC31F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31F80);
  }

  return result;
}

unint64_t sub_1CFDB71E4()
{
  result = qword_1EDC31F70;
  if (!qword_1EDC31F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31F70);
  }

  return result;
}

unint64_t sub_1CFDB723C()
{
  result = qword_1EDC31F78;
  if (!qword_1EDC31F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31F78);
  }

  return result;
}

uint64_t sub_1CFDB7290()
{
  v1 = *v0;
  v2 = 0x49676E696E726F6DLL;
  v3 = 0x7974697669746361;
  v4 = 1684955490;
  if (v1 != 3)
  {
    v4 = 0x676E696E69617274;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656E696C65736162;
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

uint64_t sub_1CFDB7348(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDA7AD0();
    sub_1CFDA76D0(a2, MEMORY[0x1E696B418]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CFDB73D8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1CFE30C74();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1CFDB7424(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDB73D8(255, &qword_1EDC31E68);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFDB7494(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1CFDB73D8(255, &qword_1EDC32470);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFDB7510()
{
  result = qword_1EDC31980;
  if (!qword_1EDC31980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31980);
  }

  return result;
}

uint64_t TrainingLoadBaselineComparison.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1CFDB77AC(0, &qword_1EDC31758, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDB7828();
  sub_1CFE311A4();
  v18[15] = 0;
  type metadata accessor for TrainingLoadAcuteBaseline();
  sub_1CFDB792C(&qword_1EDC31930, type metadata accessor for TrainingLoadAcuteBaseline);
  sub_1CFE31054();
  if (!v2)
  {
    BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison();
    v13 = *(BaselineComparison + 20);
    v18[14] = 1;
    type metadata accessor for TrainingLoadChronicBaseline();
    sub_1CFDB792C(&qword_1EDC31928, type metadata accessor for TrainingLoadChronicBaseline);
    sub_1CFE31054();
    v14 = (v3 + *(BaselineComparison + 24));
    v15 = *v14;
    v16 = *(v14 + 8);
    v18[13] = 2;
    sub_1CFE31004();
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_1CFDB77AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFDB7828();
    v7 = a3(a1, &type metadata for TrainingLoadBaselineComparison.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1CFDB7828()
{
  result = qword_1EDC31F40;
  if (!qword_1EDC31F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31F40);
  }

  return result;
}

unint64_t sub_1CFDB7880()
{
  result = qword_1EDC31F30;
  if (!qword_1EDC31F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31F30);
  }

  return result;
}

unint64_t sub_1CFDB78D8()
{
  result = qword_1EDC31F38;
  if (!qword_1EDC31F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31F38);
  }

  return result;
}

uint64_t sub_1CFDB792C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFDB7974(void *a1)
{
  sub_1CFDB7AFC(0, &qword_1EDC31788, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDB7B60();
  sub_1CFE311A4();
  sub_1CFDAC3A0(0);
  sub_1CFDB7CC0(&unk_1EDC318E8, sub_1CFDAC3A0);
  sub_1CFE31014();
  return (*(v4 + 8))(v7, v3);
}

void sub_1CFDB7AFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFDB7B60();
    v7 = a3(a1, &type metadata for TrainingLoadAcuteBaseline.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1CFDB7B60()
{
  result = qword_1EDC31FF8;
  if (!qword_1EDC31FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FF8);
  }

  return result;
}

unint64_t sub_1CFDB7BB8()
{
  result = qword_1EDC31FE8;
  if (!qword_1EDC31FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FE8);
  }

  return result;
}

unint64_t sub_1CFDB7C10()
{
  result = qword_1EDC31FF0;
  if (!qword_1EDC31FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FF0);
  }

  return result;
}

uint64_t sub_1CFDB7C64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDAA8D8(255, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFDB7CC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFDB7D08()
{
  v1 = 0x4263696E6F726863;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000027;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7361426574756361;
  }
}

uint64_t TrainingLoadChronicBaseline.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1CFDB83EC(0, &qword_1EDC31770, sub_1CFDB846C, &type metadata for TrainingLoadChronicBaseline.AvailableCodingKeys, MEMORY[0x1E69E6F58]);
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v40 - v5;
  sub_1CFDB83EC(0, &qword_1EDC31768, sub_1CFDB8570, &type metadata for TrainingLoadChronicBaseline.InsufficientDataCodingKeys, v2);
  v47 = v6;
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v40 - v8;
  sub_1CFDA7AD0();
  v43 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB83EC(0, &qword_1EDC31778, sub_1CFDB8674, &type metadata for TrainingLoadChronicBaseline.NoDataCodingKeys, v2);
  v13 = v12;
  v40 = *(v12 - 8);
  v14 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline();
  v18 = *(*(ChronicBaseline - 8) + 64);
  MEMORY[0x1EEE9AC00](ChronicBaseline);
  v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CFDB83EC(0, &qword_1EDC31780, sub_1CFDB8778, &type metadata for TrainingLoadChronicBaseline.CodingKeys, v2);
  v50 = *(v21 - 8);
  v51 = v21;
  v22 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v40 - v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDB8778();
  sub_1CFE311A4();
  sub_1CFDABC10(v49, v20, type metadata accessor for TrainingLoadChronicBaseline);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = *v20;
      v58 = 2;
      sub_1CFDB846C();
      v28 = v44;
      v29 = v51;
      sub_1CFE30FF4();
      v30 = v46;
      sub_1CFE31034();
      (*(v45 + 8))(v28, v30);
      return (*(v50 + 8))(v24, v29);
    }

    else
    {
      v53 = 0;
      sub_1CFDB8674();
      v39 = v51;
      sub_1CFE30FF4();
      (*(v40 + 8))(v16, v13);
      return (*(v50 + 8))(v24, v39);
    }
  }

  else
  {
    sub_1CFDAD680();
    v33 = *(v20 + *(v32 + 48));
    v34 = *(v20 + *(v32 + 64));
    v35 = v42;
    sub_1CFDAD618(v20, v42, sub_1CFDA7AD0);
    v57 = 1;
    sub_1CFDB8570();
    v36 = v51;
    sub_1CFE30FF4();
    v56 = 0;
    sub_1CFDAB7F8(&qword_1EDC31880, &qword_1EDC318C8);
    v37 = v47;
    v38 = v52;
    sub_1CFE31054();
    if (!v38)
    {
      v55 = 1;
      sub_1CFE31044();
      v54 = 2;
      sub_1CFE31044();
    }

    (*(v41 + 8))(v48, v37);
    sub_1CFDAD1D4(v35, sub_1CFDA7AD0);
    return (*(v50 + 8))(v24, v36);
  }
}

void sub_1CFDB83EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1CFDB846C()
{
  result = qword_1EDC31FB0;
  if (!qword_1EDC31FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FB0);
  }

  return result;
}

unint64_t sub_1CFDB84C4()
{
  result = qword_1EDC31FA0;
  if (!qword_1EDC31FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FA0);
  }

  return result;
}

unint64_t sub_1CFDB851C()
{
  result = qword_1EDC31FA8;
  if (!qword_1EDC31FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FA8);
  }

  return result;
}

unint64_t sub_1CFDB8570()
{
  result = qword_1EDC31F98;
  if (!qword_1EDC31F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31F98);
  }

  return result;
}

unint64_t sub_1CFDB85C8()
{
  result = qword_1EDC31F88;
  if (!qword_1EDC31F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31F88);
  }

  return result;
}

unint64_t sub_1CFDB8620()
{
  result = qword_1EDC31F90;
  if (!qword_1EDC31F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31F90);
  }

  return result;
}

unint64_t sub_1CFDB8674()
{
  result = qword_1EDC31FC8;
  if (!qword_1EDC31FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FC8);
  }

  return result;
}

unint64_t sub_1CFDB86CC()
{
  result = qword_1EDC31FB8;
  if (!qword_1EDC31FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FB8);
  }

  return result;
}

unint64_t sub_1CFDB8724()
{
  result = qword_1EDC31FC0;
  if (!qword_1EDC31FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FC0);
  }

  return result;
}

unint64_t sub_1CFDB8778()
{
  result = qword_1EDC31FE0;
  if (!qword_1EDC31FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FE0);
  }

  return result;
}

unint64_t sub_1CFDB87D0()
{
  result = qword_1EDC31FD0;
  if (!qword_1EDC31FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FD0);
  }

  return result;
}

unint64_t sub_1CFDB8828()
{
  result = qword_1EDC31FD8;
  if (!qword_1EDC31FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31FD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrainingLoadChronicBaseline.AvailableCodingKeys(unsigned int *a1, int a2)
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

uint64_t sub_1CFDB88EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1CFE30924();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1CFDB8978@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1CFDB89A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepingSampleAggregate();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SleepingSampleBaselineAvailability();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_1CFDB177C(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_1CFDB8B04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SleepingSampleAggregate();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for SleepingSampleBaselineAvailability();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_1CFDB177C(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1CFDB8C74(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1CFE307E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1CFDA7AD0();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 250)
  {
    v14 = *(a1 + a3[7]);
    if (v14 <= 5)
    {
      v15 = 5;
    }

    else
    {
      v15 = *(a1 + a3[7]);
    }

    v16 = v15 - 5;
    if (v14 >= 5)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison();
    v18 = *(*(BaselineComparison - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, BaselineComparison);
  }
}

void sub_1CFDB8DEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1CFE307E4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_1CFDA7AD0();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 250)
  {
    *(a1 + a4[7]) = a2 + 5;
  }

  else
  {
    BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison();
    v16 = *(*(BaselineComparison - 8) + 56);
    v17 = a1 + a4[8];

    v16(v17, a2, a2, BaselineComparison);
  }
}

uint64_t sub_1CFDB8F6C(uint64_t a1, uint64_t a2)
{
  sub_1CFDAD280();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CFDB8FD8(uint64_t a1, uint64_t a2)
{
  sub_1CFDAD280();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CFDB9058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AcuteBaseline = type metadata accessor for TrainingLoadAcuteBaseline();
  v7 = *(AcuteBaseline - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, AcuteBaseline);
  }

  else
  {
    ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline();
    v11 = *(*(ChronicBaseline - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, ChronicBaseline);
  }
}

uint64_t sub_1CFDB9148(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  AcuteBaseline = type metadata accessor for TrainingLoadAcuteBaseline();
  v9 = *(AcuteBaseline - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, AcuteBaseline);
  }

  else
  {
    ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline();
    v13 = *(*(ChronicBaseline - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, ChronicBaseline);
  }
}

uint64_t sub_1CFDB9254(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1CFE307E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1CFE304B4();
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      sub_1CFDAD280();
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[6];
      }

      else
      {
        sub_1CFDB2328(0);
        if (*(*(v15 - 8) + 84) == a2)
        {
          v8 = v15;
          v12 = *(v15 - 8);
          v13 = a3[7];
        }

        else
        {
          sub_1CFDA9D60(0);
          if (*(*(v16 - 8) + 84) != a2)
          {
            v18 = *(a1 + a3[9]);
            if (v18 >= 5)
            {
              return v18 - 4;
            }

            else
            {
              return 0;
            }
          }

          v8 = v16;
          v12 = *(v16 - 8);
          v13 = a3[8];
        }
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

void sub_1CFDB9434(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1CFE307E4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1CFE304B4();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_1CFDAD280();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        sub_1CFDB2328(0);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[7];
        }

        else
        {
          sub_1CFDA9D60(0);
          if (*(*(v18 - 8) + 84) != a3)
          {
            *(a1 + a4[9]) = a2 + 4;
            return;
          }

          v10 = v18;
          v14 = *(v18 - 8);
          v15 = a4[8];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_1CFDB9660(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1CFDA68BC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1CFE304B4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1CFDB975C()
{
  v1 = *(type metadata accessor for SleepingSampleDaySummaryQueryDescriptor() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(v1 + 64);
  sub_1CFDB65A8(0, &qword_1EDC31890, MEMORY[0x1E69E87A0]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v2 | v8;
  v12 = v0 + v3;
  v13 = sub_1CFE307E4();
  v14 = *(*(v13 - 8) + 8);
  v14(v12, v13);
  sub_1CFDA68BC();
  v14(v12 + *(v15 + 36), v13);
  v16 = *(type metadata accessor for GregorianDayRange() + 20);
  v17 = sub_1CFE304B4();
  (*(*(v17 - 8) + 8))(v12 + v16, v17);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1CFDB9944()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFDB9984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GregorianDayRange();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CFDB99F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GregorianDayRange();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CFDB9A60()
{
  v1 = *(type metadata accessor for SleepingSampleDaySummaryQueryDescriptor() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = v3 + *(v1 + 64);
  sub_1CFDB65A8(0, &qword_1EDC31A90, MEMORY[0x1E69E8548]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v2 | v8;

  v12 = v0 + v3;
  v13 = sub_1CFE307E4();
  v14 = *(*(v13 - 8) + 8);
  v14(v12, v13);
  sub_1CFDA68BC();
  v14(v12 + *(v15 + 36), v13);
  v16 = *(type metadata accessor for GregorianDayRange() + 20);
  v17 = sub_1CFE304B4();
  (*(*(v17 - 8) + 8))(v12 + v16, v17);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1CFDB9C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GregorianDayRange();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1CFDB9CC0()
{
  v1 = (type metadata accessor for TrainingLoadSummaryQueryDescriptor() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(*v1 + 64);
  sub_1CFDAC46C(0, &qword_1EDC31888, MEMORY[0x1E69E87A0]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v8) & ~v8;
  v18 = *(v7 + 64);
  v10 = v2 | v8;
  v11 = v0 + v3;
  v12 = sub_1CFE307E4();
  v13 = *(*(v12 - 8) + 8);
  v13(v11, v12);
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v13(v11 + *(v14 + 36), v12);
  v15 = v1[7];
  v16 = sub_1CFE304B4();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v18, v10 | 7);
}

uint64_t sub_1CFDB9ED0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFDB9F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1CFE304B4();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 3)
      {
        return v14 - 2;
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

uint64_t sub_1CFDBA034(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1CFE304B4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CFDBA158()
{
  v1 = (type metadata accessor for TrainingLoadSummaryQueryDescriptor() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = v3 + *(*v1 + 64);
  sub_1CFDAC46C(0, &qword_1EDC318B8, MEMORY[0x1E69E8548]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v8) & ~v8;
  v18 = *(v7 + 64);
  v10 = v2 | v8;

  v11 = v0 + v3;
  v12 = sub_1CFE307E4();
  v13 = *(*(v12 - 8) + 8);
  v13(v11, v12);
  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v13(v11 + *(v14 + 36), v12);
  v15 = v1[7];
  v16 = sub_1CFE304B4();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v18, v10 | 7);
}

uint64_t sub_1CFDBA37C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFDBA3B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFDBA3EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFDBA434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFDA5C94(0, qword_1EDC31C98, type metadata accessor for SleepingSampleAnalysisFeatureStatus, MEMORY[0x1E69E6720]);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_1CFDBA52C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1CFDA5C94(0, qword_1EDC31C98, type metadata accessor for SleepingSampleAnalysisFeatureStatus, MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }
}

uint64_t sub_1CFDBA614()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFDBA674(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1CFE307E4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1CFDBA720(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1CFE307E4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CFDBA804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFE307E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SleepingSampleAggregate();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1CFDBA8F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1CFE307E4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SleepingSampleAggregate();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1CFDBA9F0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CFDBAA38()
{
  v1 = sub_1CFE30354();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1CFDBAB28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1CFE307E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_1CFDAB9C4(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
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

  sub_1CFDA97E8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = type metadata accessor for SleepingSampleBaselineComparison();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_1CFDBACFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1CFE307E4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  sub_1CFDAB9C4(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
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

  sub_1CFDA97E8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = type metadata accessor for SleepingSampleBaselineComparison();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1CFDBAEDC(uint64_t a1, uint64_t a2)
{
  sub_1CFDFDDF4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1CFDBAF48(uint64_t a1, uint64_t a2)
{
  sub_1CFDFDDF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id HKTableFormatter.init(_:gregorianCalendar:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleAggregateDaySummary();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = sub_1CFE30A74();
  v11 = [v9 initWithColumnTitles_];

  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    v15 = v11;
    do
    {
      sub_1CFDBCDA0(v13, v8, type metadata accessor for SleepingSampleAggregateDaySummary);
      sub_1CFDBB21C(v8);
      sub_1CFDBCE08(v8, type metadata accessor for SleepingSampleAggregateDaySummary);
      v13 += v14;
      --v12;
    }

    while (v12);
  }

  else
  {
  }

  v16 = sub_1CFE304B4();
  (*(*(v16 - 8) + 8))(a2, v16);
  return v11;
}

void sub_1CFDBB21C(uint64_t a1)
{
  v131 = sub_1CFE31244();
  v130 = *(v131 - 8);
  v2 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDBCB98(0, &qword_1EC5094F0, &qword_1EC5094F8, 0x1E696B080, MEMORY[0x1E6968048]);
  v128 = v4;
  v127 = *(v4 - 8);
  v5 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v126 = &v122 - v6;
  sub_1CFDBCB98(0, &qword_1EC509500, &qword_1EC5094F8, 0x1E696B080, MEMORY[0x1E6968070]);
  v125 = v7;
  v124 = *(v7 - 8);
  v8 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v123 = &v122 - v9;
  v149 = sub_1CFE30234();
  v142 = *(v149 - 8);
  v10 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v141 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDBCC54(0, &qword_1EC509508, sub_1CFDBCC00, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E78]);
  v147 = v12;
  v143 = *(v12 - 8);
  v13 = *(v143 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v148 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v140 = &v122 - v16;
  sub_1CFDAD280();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v145 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v144 = &v122 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v139 = &v122 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v138 = &v122 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v137 = &v122 - v27;
  v28 = sub_1CFE30204();
  v154 = *(v28 - 8);
  v155 = v28;
  v29 = *(v154 + 8);
  MEMORY[0x1EEE9AC00](v28);
  v153 = &v122 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1CFE303F4();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v136 = &v122 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDBCC54(0, &qword_1EC509518, sub_1CFDBCCBC, MEMORY[0x1E69E6530], MEMORY[0x1E6968900]);
  v35 = *(v34 - 1);
  v151 = v34;
  v152 = v35;
  v36 = *(v35 + 64);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v135 = &v122 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v150 = &v122 - v39;
  v134 = sub_1CFE30284();
  v40 = *(v134 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v43 = &v122 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1CFE30314();
  v44 = *(v133 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v47 = &v122 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1CFE302B4();
  v48 = *(v132 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v51 = &v122 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA6E14(0, &qword_1EC509528, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1CFE31EE0;
  sub_1CFE30274();
  v53 = a1;
  sub_1CFE307D4();
  sub_1CFE30264();
  v54 = sub_1CFE30304();
  v56 = v55;
  (*(v40 + 8))(v43, v134);
  (*(v44 + 8))(v47, v133);
  (*(v48 + 8))(v51, v132);
  *(v52 + 32) = v54;
  *(v52 + 40) = v56;
  v157 = sub_1CFE307A4();
  sub_1CFE303D4();
  sub_1CFDBCCBC();
  v57 = v135;
  sub_1CFE30144();
  v58 = v153;
  sub_1CFE301F4();
  v60 = v150;
  v59 = v151;
  MEMORY[0x1D3875810](v58, v151);
  (*(v154 + 1))(v58, v155);
  v61 = *(v152 + 8);
  v61(v57, v59);
  sub_1CFDBCD10();
  sub_1CFE30CD4();
  v61(v60, v59);
  v62 = type metadata accessor for SleepingSampleAggregateDaySummary();
  v63 = v62[5];
  v152 = v53;
  v64 = v53 + v63;
  v65 = v137;
  v155 = type metadata accessor for SleepingSampleAggregate();
  sub_1CFDBCDA0(v64 + *(v155 + 24), v65, sub_1CFDAD280);
  sub_1CFDBCB98(0, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348, MEMORY[0x1E696B370]);
  v67 = v66;
  v68 = *(v66 - 8);
  v153 = *(v68 + 6);
  v154 = v68 + 48;
  v69 = (v153)(v65, 1, v66);
  v150 = v68;
  v151 = v62;
  if (v69 == 1)
  {
    sub_1CFDBCE08(v65, sub_1CFDAD280);
    v70 = 0xA600000000000000;
    v71 = 0x9380E29380E2;
  }

  else
  {
    v73 = sub_1CFE30684();
    v135 = v73;
    (*(v68 + 1))(v65, v67);
    v74 = [objc_opt_self() _countPerMinuteUnit];
    [v73 doubleValueForUnit_];
    v156 = v75;
    sub_1CFE303D4();
    sub_1CFDBCC00();
    v76 = v148;
    sub_1CFE301A4();
    v77 = v141;
    sub_1CFE30214();
    v78 = v140;
    v79 = v147;
    MEMORY[0x1D3875870](v77, v147);
    (*(v142 + 8))(v77, v149);
    v80 = *(v143 + 8);
    v80(v76, v79);
    sub_1CFDBCF44();
    sub_1CFE307F4();

    v80(v78, v79);
    v62 = v151;
    v71 = v157;
    v70 = v158;
  }

  v72 = 0x9380E29380E2;
  *(v52 + 64) = v71;
  *(v52 + 72) = v70;
  v81 = v138;
  sub_1CFDBCDA0(v152 + v62[6] + *(v155 + 24), v138, sub_1CFDAD280);
  if ((v153)(v81, 1, v67) == 1)
  {
    sub_1CFDBCE08(v81, sub_1CFDAD280);
    object = 0xA600000000000000;
    countAndFlagsBits = 0x9380E29380E2;
  }

  else
  {
    v84 = sub_1CFE30684();
    (*(v150 + 1))(v81, v67);
    LOBYTE(v157) = 2;
    v85 = [objc_opt_self() percentUnit];
    v86 = HKQuantity.formattedValue(for:unit:)(&v157, v85);
    countAndFlagsBits = v86._countAndFlagsBits;
    object = v86._object;

    v62 = v151;
  }

  v88 = v147;
  v87 = v148;
  *(v52 + 80) = countAndFlagsBits;
  *(v52 + 88) = object;
  v89 = v139;
  sub_1CFDBCDA0(v152 + v62[7] + *(v155 + 24), v139, sub_1CFDAD280);
  v90 = (v153)(v89, 1, v67);
  v91 = v149;
  if (v90 == 1)
  {
    sub_1CFDBCE08(v89, sub_1CFDAD280);
    v92 = 0xA600000000000000;
    v93 = 0x9380E29380E2;
  }

  else
  {
    v94 = sub_1CFE30684();
    (*(v150 + 1))(v89, v67);
    v95 = [objc_opt_self() _countPerMinuteUnit];
    [v94 doubleValueForUnit_];
    v156 = v96;
    sub_1CFE303D4();
    sub_1CFDBCC00();
    sub_1CFE301A4();
    v157 = 1;
    sub_1CFDBCEEC();
    sub_1CFDBD128(&qword_1EC509550, sub_1CFDBCEEC);
    v97 = v141;
    sub_1CFE30224();
    v98 = v87;
    v99 = v140;
    MEMORY[0x1D3875870](v97, v88);
    (*(v142 + 8))(v97, v91);
    v100 = *(v143 + 8);
    v100(v98, v88);
    sub_1CFDBCF44();
    sub_1CFE307F4();

    v62 = v151;
    v72 = 0x9380E29380E2;
    v100(v99, v88);
    v93 = v157;
    v92 = v158;
  }

  v101 = v144;
  *(v52 + 96) = v93;
  *(v52 + 104) = v92;
  sub_1CFDBCDA0(v152 + v62[8] + *(v155 + 24), v101, sub_1CFDAD280);
  if ((v153)(v101, 1, v67) == 1)
  {
    sub_1CFDBCE08(v101, sub_1CFDAD280);
    v102 = 0xA600000000000000;
    v103 = 0x9380E29380E2;
  }

  else
  {
    v104 = sub_1CFE30684();
    (*(v150 + 1))(v101, v67);
    v105 = [objc_opt_self() _changeInDegreeFahrenheitUnit];
    v106 = v104;
    v107 = v105;
    v108 = v123;
    Measurement<>.init(wristTemperatureForFormatting:unit:)(v106, v107);
    v109 = v126;
    static FormatStyle<>.wristTemperature(unit:)(v107, v126);
    sub_1CFDBCE68();
    v110 = v52;
    v111 = v125;
    v112 = v128;
    sub_1CFE2FFC4();

    v113 = v112;
    v62 = v151;
    (*(v127 + 8))(v109, v113);
    v114 = v111;
    v52 = v110;
    (*(v124 + 8))(v108, v114);
    v103 = v157;
    v102 = v158;
  }

  v115 = v145;
  *(v52 + 112) = v103;
  *(v52 + 120) = v102;
  sub_1CFDBCDA0(v152 + v62[9] + *(v155 + 24), v115, sub_1CFDAD280);
  if ((v153)(v115, 1, v67) == 1)
  {
    sub_1CFDBCE08(v115, sub_1CFDAD280);
    v116 = 0xA600000000000000;
  }

  else
  {
    v117 = sub_1CFE30684();
    (*(v150 + 1))(v115, v67);

    v118 = v117;
    sub_1CFE2F0F4(v118);

    v119 = v129;
    static FormatStyle<>.sleepDuration.getter(v129);
    sub_1CFDBD128(&qword_1EC509538, MEMORY[0x1E696A218]);
    v120 = v131;
    sub_1CFE31254();

    (*(v130 + 8))(v119, v120);
    v72 = v157;
    v116 = v158;
  }

  *(v52 + 128) = v72;
  *(v52 + 136) = v116;
  v121 = sub_1CFE30A74();

  [v146 appendRow_];
}

uint64_t sub_1CFDBC4A0()
{
  v1 = *v0;
  sub_1CFE31144();
  MEMORY[0x1D3876810](v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFDBC514()
{
  v1 = *v0;
  sub_1CFE31144();
  MEMORY[0x1D3876810](v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFDBC558(uint64_t a1, id *a2)
{
  result = sub_1CFE30904();
  *a2 = 0;
  return result;
}

uint64_t sub_1CFDBC5D0(uint64_t a1, id *a2)
{
  v3 = sub_1CFE30914();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1CFDBC650@<X0>(uint64_t *a1@<X8>)
{
  sub_1CFE30924();
  v2 = sub_1CFE308F4();

  *a1 = v2;
  return result;
}

uint64_t sub_1CFDBC694(uint64_t a1)
{
  v2 = sub_1CFDBD128(&qword_1EC5094E0, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
  v3 = sub_1CFDBD128(&qword_1EC5094E8, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CFDBC828(uint64_t a1)
{
  v2 = sub_1CFDBD128(&qword_1EDC32510, type metadata accessor for HKFeatureIdentifier);
  v3 = sub_1CFDBD128(&qword_1EC5094D8, type metadata accessor for HKFeatureIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CFDBC8E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1CFE308F4();

  *a2 = v5;
  return result;
}

uint64_t sub_1CFDBC92C(uint64_t a1)
{
  v2 = sub_1CFDBD128(&qword_1EDC31850, type metadata accessor for HKFeatureAvailabilityContext);
  v3 = sub_1CFDBD128(&qword_1EC509570, type metadata accessor for HKFeatureAvailabilityContext);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1CFDBC9E8()
{
  v1 = *v0;
  v2 = sub_1CFE30924();
  v3 = MEMORY[0x1D38760C0](v2);

  return v3;
}

uint64_t sub_1CFDBCA24()
{
  v1 = *v0;
  sub_1CFE30924();
  sub_1CFE30984();
}

void sub_1CFDBCB98(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1CFDA6E64(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1CFDBCC00()
{
  result = qword_1EC509510;
  if (!qword_1EC509510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509510);
  }

  return result;
}

void sub_1CFDBCC54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1CFDBCCBC()
{
  result = qword_1EC509520;
  if (!qword_1EC509520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509520);
  }

  return result;
}

unint64_t sub_1CFDBCD10()
{
  result = qword_1EC509530;
  if (!qword_1EC509530)
  {
    sub_1CFDBCC54(255, &qword_1EC509518, sub_1CFDBCCBC, MEMORY[0x1E69E6530], MEMORY[0x1E6968900]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509530);
  }

  return result;
}

uint64_t sub_1CFDBCDA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDBCE08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1CFDBCE68()
{
  result = qword_1EC509540;
  if (!qword_1EC509540)
  {
    sub_1CFDBCB98(255, &qword_1EC5094F0, &qword_1EC5094F8, 0x1E696B080, MEMORY[0x1E6968048]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509540);
  }

  return result;
}

void sub_1CFDBCEEC()
{
  if (!qword_1EC509548)
  {
    v0 = sub_1CFE30F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509548);
    }
  }
}

unint64_t sub_1CFDBCF44()
{
  result = qword_1EC509558;
  if (!qword_1EC509558)
  {
    sub_1CFDBCC54(255, &qword_1EC509508, sub_1CFDBCC00, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509558);
  }

  return result;
}

uint64_t sub_1CFDBCFE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CFDBD000(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1CFDBD128(unint64_t *a1, void (*a2)(uint64_t))
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

HealthBalance::BalanceURLBuilder::Route_optional __swiftcall BalanceURLBuilder.Route.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CFE30F54();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t BalanceURLBuilder.Route.rawValue.getter()
{
  v1 = 0x5265636E616C6162;
  v2 = 0x7961446E65766573;
  if (*v0 != 2)
  {
    v2 = 0x654D796144656E6FLL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1CFDBD2A0()
{
  v1 = *v0;
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

uint64_t sub_1CFDBD388()
{
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

uint64_t sub_1CFDBD4A4()
{
  *v0;
  *v0;
  sub_1CFE30984();
}

uint64_t sub_1CFDBD578()
{
  v1 = *v0;
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

uint64_t sub_1CFDBD65C()
{
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

void sub_1CFDBD780(unint64_t *a1@<X8>)
{
  v2 = 0xEB000000006D6F6FLL;
  v3 = 0x5265636E616C6162;
  v4 = 0xEF7363697274654DLL;
  v5 = 0x7961446E65766573;
  if (*v1 != 2)
  {
    v5 = 0x654D796144656E6FLL;
    v4 = 0xED00007363697274;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001CFE38470;
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

HealthBalance::BalanceURLBuilder::Source_optional __swiftcall BalanceURLBuilder.Source.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CFE30F54();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}