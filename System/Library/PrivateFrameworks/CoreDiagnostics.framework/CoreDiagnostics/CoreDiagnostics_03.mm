uint64_t sub_1D9844F08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001D9854640 == a2;
  if (v4 || (sub_1D984A5F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9853FA0 == a2 || (sub_1D984A5F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C536C656E72656BLL && a2 == 0xEB00000000656469 || (sub_1D984A5F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65546C656E72656BLL && a2 == 0xEE00657361427478 || (sub_1D984A5F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726556746F6F4269 && a2 == 0xEC0000006E6F6973)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D984A5F4();

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

uint64_t sub_1D98451A0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D984A5F4() & 1;
  }
}

uint64_t sub_1D9845214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1D982799C(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1D98472B8(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1D981A4E8(a1, &qword_1ECB41A98, &qword_1D984E370);
    sub_1D9846AEC(a2, a3, v10);

    return sub_1D981A4E8(v10, &qword_1ECB41A98, &qword_1D984E370);
  }

  return result;
}

id sub_1D98452E4()
{
  result = [objc_allocWithZone(type metadata accessor for AppleIntelligenceState()) init];
  qword_1EDD00600 = result;
  return result;
}

id sub_1D9845314()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41FC0, &qword_1D984FFA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_1D984A164();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9849D54();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = sub_1D984A154();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = OBJC_IVAR____TtC15CoreDiagnostics22AppleIntelligenceState_queue;
  sub_1D9847B54(0, &qword_1EDCFE9C0, 0x1E69E9610);
  sub_1D984A144();
  sub_1D9849D44();
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8090], v6);
  *&v1[v15] = sub_1D984A1A4();
  v16 = &v1[OBJC_IVAR____TtC15CoreDiagnostics22AppleIntelligenceState_state];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v1[OBJC_IVAR____TtC15CoreDiagnostics22AppleIntelligenceState_reasons] = MEMORY[0x1E69E7CC0];
  v17 = type metadata accessor for AppleIntelligenceState();
  v23.receiver = v1;
  v23.super_class = v17;
  v18 = objc_msgSendSuper2(&v23, sel_init);
  sub_1D9845658();
  v19 = sub_1D984A084();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v20;
  sub_1D9846504(0, 0, v5, &unk_1D984FFB0, v21);

  return v18;
}

size_t sub_1D9845658()
{
  v59 = sub_1D9849D34();
  v0 = *(v59 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9849C54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v56 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v56 - v16;
  v61 = 0;
  v62 = 0;
  v60 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41A90, &qword_1D984E368);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E6158];
  *(v18 + 16) = xmmword_1D984E260;
  *(v18 + 56) = v19;
  *(v18 + 32) = 0x7474616D79657267;
  *(v18 + 40) = 0xEA00000000007265;
  sub_1D9847B54(0, &qword_1EDCFE558, 0x1E695DFD8);
  v20 = MEMORY[0x1DA737E30](v18);
  v21 = sub_1D9849B14();

  v22 = MEMORY[0x1DA7390F0](v21);
  if (v22 != sub_1D9849C74())
  {
    sub_1D9849C44();
    v23 = sub_1D9849C24();
    v24 = sub_1D984A124();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D97FA000, v23, v24, "Analytics query xpc_object is not of type dictionary", v25, 2u);
      MEMORY[0x1DA738F10](v25, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
LABEL_11:
    v32 = v58;
    v33 = *&v58[OBJC_IVAR____TtC15CoreDiagnostics22AppleIntelligenceState_queue];
    v34 = sub_1D9849D24();
    MEMORY[0x1EEE9AC00](v34);
    *(&v56 - 4) = v32;
    *(&v56 - 3) = &v61;
    *(&v56 - 2) = &v60;
    sub_1D984A174();
    swift_unknownObjectRelease();
    (*(v0 + 8))(v3, v59);
  }

  v26 = xpc_dictionary_get_dictionary(v21, "greymatter");
  if (!v26)
  {
LABEL_8:
    sub_1D9849C44();
    v29 = sub_1D9849C24();
    v30 = sub_1D984A124();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D97FA000, v29, v30, "Failed to query generative models dictionary", v31, 2u);
      MEMORY[0x1DA738F10](v31, -1, -1);
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_11;
  }

  v27 = v26;
  v28 = MEMORY[0x1DA7390F0]();
  if (v28 != sub_1D9849C74())
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  string = xpc_dictionary_get_string(v27, "availability");
  v56 = v27;
  if (string)
  {
    v61 = sub_1D9849ED4();
    v62 = v37;
  }

  else
  {
    sub_1D9849C44();
    v38 = sub_1D9849C24();
    v39 = sub_1D984A124();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1D97FA000, v38, v39, "GM availability string not found", v40, 2u);
      MEMORY[0x1DA738F10](v40, -1, -1);
    }

    (*(v5 + 8))(v17, v4);
    v27 = v56;
  }

  v41 = xpc_dictionary_get_value(v27, "reasons");
  if (!v41)
  {
LABEL_20:
    sub_1D9849C44();
    v44 = sub_1D9849C24();
    v45 = sub_1D984A124();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1D97FA000, v44, v45, "Failed to get reasons array", v46, 2u);
      MEMORY[0x1DA738F10](v46, -1, -1);
    }

    swift_unknownObjectRelease();
    (*(v5 + 8))(v15, v4);
    goto LABEL_11;
  }

  v42 = v41;
  v43 = MEMORY[0x1DA7390F0]();
  if (v43 != sub_1D9849C64())
  {
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  result = xpc_array_get_count(v42);
  if ((result & 0x8000000000000000) == 0)
  {
    v47 = result;
    if (result)
    {
      v48 = 0;
      v49 = MEMORY[0x1E69E7CC0];
      v57 = result;
      do
      {
        if (xpc_array_get_string(v42, v48))
        {
          v51 = sub_1D9849ED4();
          v53 = v52;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_1D9832DC0(0, *(v49 + 2) + 1, 1, v49);
          }

          v55 = *(v49 + 2);
          v54 = *(v49 + 3);
          if (v55 >= v54 >> 1)
          {
            v49 = sub_1D9832DC0((v54 > 1), v55 + 1, 1, v49);
          }

          *(v49 + 2) = v55 + 1;
          v50 = &v49[16 * v55];
          *(v50 + 4) = v51;
          *(v50 + 5) = v53;
          v60 = v49;
          v47 = v57;
        }

        ++v48;
      }

      while (v47 != v48);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9845D00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2[1];
  v6 = (a1 + OBJC_IVAR____TtC15CoreDiagnostics22AppleIntelligenceState_state);
  v7 = *(a1 + OBJC_IVAR____TtC15CoreDiagnostics22AppleIntelligenceState_state + 8);
  *v6 = *a2;
  v6[1] = v5;

  v8 = *(a1 + OBJC_IVAR____TtC15CoreDiagnostics22AppleIntelligenceState_reasons);
  *(a1 + OBJC_IVAR____TtC15CoreDiagnostics22AppleIntelligenceState_reasons) = *a3;
}

uint64_t sub_1D9845D98()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    if (MEMORY[0x1E69A12D8])
    {
      v3 = MEMORY[0x1E69A12E8] == 0;
    }

    else
    {
      v3 = 1;
    }

    if (!v3 && MEMORY[0x1E69A12F0] != 0)
    {
      v7 = sub_1D9849B94();
      v0[8] = v7;
      v8 = *(v7 - 8);
      v0[9] = v8;
      v9 = *(v8 + 64) + 15;
      v0[10] = swift_task_alloc();
      v10 = sub_1D9849BE4();
      v11 = *(v10 - 8);
      v12 = *(v11 + 64) + 15;
      v13 = swift_task_alloc();
      v14 = sub_1D9849B74();
      v15 = *(v14 - 8);
      v16 = *(v15 + 64) + 15;
      v17 = swift_task_alloc();
      v18 = *(sub_1D9849BB4() - 8);
      v19 = *(v18 + 64) + 15;
      swift_task_alloc();
      v20 = *MEMORY[0x1E69A12C0];
      (*(v18 + 104))();
      sub_1D9849B64();

      sub_1D9849BD4();
      (*(v15 + 8))(v17, v14);

      v21 = sub_1D9849BA4();
      v22 = *(v21 - 8);
      v23 = *(v22 + 64) + 15;
      v24 = swift_task_alloc();
      sub_1D9849BC4();
      (*(v11 + 8))(v13, v10);
      sub_1D9849B84();
      (*(v22 + 8))(v24, v21);

      v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41FC8, &unk_1D984FFD0) - 8) + 64) + 15;
      v0[11] = swift_task_alloc();
      v26 = sub_1D9847F24();
      v27 = *(MEMORY[0x1E69E85A8] + 4);
      v28 = swift_task_alloc();
      v0[12] = v28;
      *v28 = v0;
      v28[1] = sub_1D98461CC;
      v30 = v0[10];
      v29 = v0[11];
      v31 = v0[8];

      return MEMORY[0x1EEE6D8C8](v29, v31, v26);
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D98461CC()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1D9846478;
  }

  else
  {
    v3 = sub_1D98462E0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D98462FC()
{
  v1 = v0[11];
  v2 = sub_1D9849B54();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[7];
    sub_1D9845658();
    sub_1D981A4E8(v1, &qword_1ECB41FC8, &unk_1D984FFD0);
    v7 = sub_1D9847F24();
    v8 = *(MEMORY[0x1E69E85A8] + 4);
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_1D98461CC;
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[8];

    return MEMORY[0x1EEE6D8C8](v10, v12, v7);
  }
}

uint64_t sub_1D9846478()
{
  *(v0 + 40) = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41620, &unk_1D984C0A0);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1D9846504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41FC0, &qword_1D984FFA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D9847D44(a3, v27 - v11);
  v13 = sub_1D984A084();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D981A4E8(v12, &qword_1ECB41FC0, &qword_1D984FFA0);
  }

  else
  {
    sub_1D984A074();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D984A054();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D9849E54() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1D981A4E8(a3, &qword_1ECB41FC0, &qword_1D984FFA0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D981A4E8(a3, &qword_1ECB41FC0, &qword_1D984FFA0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id AppleIntelligenceState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleIntelligenceState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98468FC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D98469F4;

  return v7(a1);
}

uint64_t sub_1D98469F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

double sub_1D9846AEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1D98447E4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D98475FC();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1D982799C((*(v12 + 56) + 32 * v9), a3);
    sub_1D9847108(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1D9846B90(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AA8, &qword_1D984FFF0);
  v36 = a2;
  result = sub_1D984A3E4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1D982799C(v25, v37);
      }

      else
      {
        sub_1D981B108(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1D984A6A4();
      sub_1D9849E84();
      result = sub_1D984A6D4();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1D982799C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1D9846E48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BB0, &qword_1D984E7B0);
  v40 = a2;
  result = sub_1D984A3E4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1D984A6A4();
      sub_1D9849E84();
      result = sub_1D984A6D4();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1D9847108(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D984A2C4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1D984A6A4();

      sub_1D9849E84();
      v14 = sub_1D984A6D4();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_1D98472B8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D98447E4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D98475FC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D9846B90(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1D98447E4(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1D984A634();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_1D982799C(a1, v23);
  }

  else
  {
    sub_1D9847590(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1D9847408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D98447E4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D9846E48(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1D98447E4(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1D984A634();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1D98477A0();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

_OWORD *sub_1D9847590(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D982799C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_1D98475FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41AA8, &qword_1D984FFF0);
  v2 = *v0;
  v3 = sub_1D984A3D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1D981B108(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D982799C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1D98477A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BB0, &qword_1D984E7B0);
  v2 = *v0;
  v3 = sub_1D984A3D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t _s15CoreDiagnostics22AppleIntelligenceStateC03getcD12AvailabilitySDySSypGSgyFZ_0()
{
  v0 = sub_1D98337FC(MEMORY[0x1E69E7CC0]);
  v1 = v0;
  if (qword_1EDCFE758 != -1)
  {
    v0 = swift_once();
  }

  v2 = *(qword_1EDD00600 + OBJC_IVAR____TtC15CoreDiagnostics22AppleIntelligenceState_queue);
  MEMORY[0x1EEE9AC00](v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41FD0, &unk_1D984FFE0);
  sub_1D984A184();
  v3 = v9;
  if (*(&v8 + 1))
  {
    v10 = MEMORY[0x1E69E6158];
    sub_1D982799C(&v8, v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D98472B8(v7, 0x6574617473, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  }

  if (!*(v3 + 16))
  {

    if (*(v1 + 16))
    {
      return v1;
    }

    goto LABEL_7;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
  *&v8 = v3;
  sub_1D982799C(&v8, v7);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D98472B8(v7, 0x736E6F73616572, 0xE700000000000000, v5);
  if (!*(v1 + 16))
  {
LABEL_7:

    return 0;
  }

  return v1;
}

uint64_t sub_1D9847B54(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D9847B9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D9847C50;

  return sub_1D9845D78(a1, v4, v5, v6);
}

uint64_t sub_1D9847C50()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D9847D44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41FC0, &qword_1D984FFA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9847DB4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D9847FC0;

  return sub_1D98468FC(a1, v5);
}

uint64_t sub_1D9847E6C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D9847C50;

  return sub_1D98468FC(a1, v5);
}

unint64_t sub_1D9847F24()
{
  result = qword_1EDCFE580;
  if (!qword_1EDCFE580)
  {
    sub_1D9849B94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE580);
  }

  return result;
}

uint64_t sub_1D9847F70@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + OBJC_IVAR____TtC15CoreDiagnostics22AppleIntelligenceState_state + 8);
  *a1 = *(v2 + OBJC_IVAR____TtC15CoreDiagnostics22AppleIntelligenceState_state);
  a1[1] = v3;
  a1[2] = *(v2 + OBJC_IVAR____TtC15CoreDiagnostics22AppleIntelligenceState_reasons);
}

uint64_t sub_1D9847FD4()
{
  result = sub_1D9847FF8();
  byte_1EDCFE4D8 = result & 1;
  return result;
}

uint64_t sub_1D9847FF8()
{
  v0 = sub_1D9849DC4();
  v1 = MGCopyAnswer();

  if (v1 && (swift_dynamicCast() & 1) != 0 && (v5 & 1) != 0)
  {
    return 0;
  }

  v3 = sub_1D9849DC4();
  v4 = MGCopyAnswer();

  if (v4 && (swift_dynamicCast() & 1) != 0)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

uint64_t static DeviceState.isCustomerFused.getter()
{
  if (qword_1EDCFE4D0 != -1)
  {
    swift_once();
  }

  return byte_1EDCFE4D8;
}

id DeviceState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceState.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceState();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DeviceState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98482A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BC8, &qword_1D984E7C8);
    v2 = sub_1D984A3F4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_1D982799C(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_1D982799C(v34, v35);
    v19 = *(v2 + 40);
    result = sub_1D984A304();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
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
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_1D982799C(v35, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D9848568(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41BC8, &qword_1D984E7C8);
    v2 = sub_1D984A3F4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1D982799C(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1D982799C(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1D984A304();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1D982799C(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t static ReportViewer.textualRepresentation(_:includeFullReport:)(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41FD8, &qword_1D9850030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D984E260;
  *(inited + 32) = sub_1D9849DF4();
  *(inited + 40) = v4;
  *(inited + 48) = a2;
  v5 = sub_1D9833F70(inited);
  swift_setDeallocating();
  sub_1D9848BAC(inited + 32);
  v6 = objc_opt_self();
  v7 = sub_1D9849994();
  v8 = sub_1D9849DC4();
  sub_1D9848568(v5);

  v9 = sub_1D9849D94();

  v10 = [v6 transformURL:v7 template:v8 options:v9];

  v11 = sub_1D9849DB4();
  *&v21[0] = sub_1D9849DF4();
  *(&v21[0] + 1) = v12;
  sub_1D984A324();
  if (!*(v11 + 16) || (v13 = sub_1D984485C(v22), (v14 & 1) == 0))
  {
    sub_1D9845130(v22);
    *&v21[0] = sub_1D9849DF4();
    *(&v21[0] + 1) = v16;
    sub_1D984A324();
    if (*(v11 + 16) && (v17 = sub_1D984485C(v22), (v18 & 1) != 0))
    {
      sub_1D981B108(*(v11 + 56) + 32 * v17, v23);
      sub_1D9845130(v22);

      sub_1D9848C68();
      if (swift_dynamicCast())
      {
        return swift_willThrow();
      }
    }

    else
    {

      sub_1D9845130(v22);
    }

    sub_1D9848C14();
    swift_allocError();
    *v19 = 0;
    return swift_willThrow();
  }

  sub_1D981B108(*(v11 + 56) + 32 * v13, v21);
  sub_1D9845130(v22);

  sub_1D982799C(v21, v23);
  sub_1D981B108(v23, v22);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    return *&v21[0];
  }

  else
  {
    sub_1D9848C14();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }
}

unint64_t sub_1D9848B70()
{
  if (*v0)
  {
    result = 0xD00000000000003BLL;
  }

  else
  {
    result = 0xD00000000000001DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1D9848BAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41FE0, &qword_1D9850038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9848C14()
{
  result = qword_1ECB41FE8;
  if (!qword_1ECB41FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41FE8);
  }

  return result;
}

unint64_t sub_1D9848C68()
{
  result = qword_1ECB41FF0;
  if (!qword_1ECB41FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB41FF0);
  }

  return result;
}

unint64_t sub_1D9848CDC()
{
  result = qword_1ECB41FF8;
  if (!qword_1ECB41FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41FF8);
  }

  return result;
}

void __handleDiagnosticLog_block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void gotLoadHelper_x21__OBJC_CLASS___DiagnosticsReporterLaunchOptions(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_DiagnosticsReporterServices))
  {
    dlopenHelper_DiagnosticsReporterServices(a1);
  }
}

void gotLoadHelper_x22__OBJC_CLASS___OSADiagnosticsReporter(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_DiagnosticsReporterServices))
  {
    dlopenHelper_DiagnosticsReporterServices(a1);
  }
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_DiagnosticsReporterServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/DiagnosticsReporterServices.framework/DiagnosticsReporterServices", 0);
  atomic_store(1u, &dlopenHelperFlag_DiagnosticsReporterServices);
  return a1;
}