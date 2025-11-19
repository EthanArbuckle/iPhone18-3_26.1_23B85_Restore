uint64_t MemorySubsystem.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MemorySubsystem.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MemorySubsystem.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_2588F001C();
  MEMORY[0x259C8DDD0](0x203A656D614ELL, 0xE600000000000000);
  MEMORY[0x259C8DDD0](v1, v2);
  MEMORY[0x259C8DDD0](0x7461636F6C6C410ALL, 0xEC000000203A6465);
  v7 = sub_2588F006C();
  MEMORY[0x259C8DDD0](v7);

  MEMORY[0x259C8DDD0](0x500A736574796220, 0xED0000203A6B6165);
  v8 = sub_2588F006C();
  MEMORY[0x259C8DDD0](v8);

  MEMORY[0x259C8DDD0](0xD000000000000018, 0x80000002588F0360);
  v9 = sub_2588F006C();
  MEMORY[0x259C8DDD0](v9);

  MEMORY[0x259C8DDD0](2109216, 0xE300000000000000);
  v10 = sub_2588F006C();
  MEMORY[0x259C8DDD0](v10);

  MEMORY[0x259C8DDD0](0x736574796220, 0xE600000000000000);
  return 0;
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

uint64_t sub_2588E92A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2588E92EC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2588E934C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2588E936C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

void type metadata accessor for memacct_statistics()
{
  if (!qword_27F969988)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F969988);
    }
  }
}

uint64_t sub_2588E93F4()
{
  v0 = sub_2588EFEFC();
  __swift_allocate_value_buffer(v0, qword_27F969B50);
  __swift_project_value_buffer(v0, qword_27F969B50);
  return sub_2588EFEEC();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2588E9540(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memAcctSubsystems;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_2588E95A8()
{
  v1 = OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memAcctSubsystems;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2588E95F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memAcctSubsystems;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MemoryAccountingManager.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memacctlog;
  if (qword_27F969980 != -1)
  {
    swift_once();
  }

  v5 = sub_2588EFEFC();
  v6 = __swift_project_value_buffer(v5, qword_27F969B50);
  v7 = *(*(v5 - 8) + 16);
  v7(v3 + v4, v6, v5);
  *(v3 + OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memAcctSubsystems) = 0;
  v8 = type metadata accessor for SysctlManager();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v7(v11 + OBJC_IVAR____TtC16MemoryAccounting13SysctlManager_memacctlog, v6, v5);
  *(v11 + OBJC_IVAR____TtC16MemoryAccounting13SysctlManager_lookupCache) = MEMORY[0x277D84F98];
  *(v3 + 16) = v11;
  v12 = sub_2588E9960();
  v13 = OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memAcctSubsystems;
  swift_beginAccess();
  v14 = *(v3 + v13);
  *(v3 + v13) = v12;

  return v3;
}

uint64_t MemoryAccountingManager.init()()
{
  v1 = OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memacctlog;
  if (qword_27F969980 != -1)
  {
    swift_once();
  }

  v2 = sub_2588EFEFC();
  v3 = __swift_project_value_buffer(v2, qword_27F969B50);
  v4 = *(*(v2 - 8) + 16);
  v4(v0 + v1, v3, v2);
  *(v0 + OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memAcctSubsystems) = 0;
  v5 = type metadata accessor for SysctlManager();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v4(v8 + OBJC_IVAR____TtC16MemoryAccounting13SysctlManager_memacctlog, v3, v2);
  *(v8 + OBJC_IVAR____TtC16MemoryAccounting13SysctlManager_lookupCache) = MEMORY[0x277D84F98];
  *(v0 + 16) = v8;
  v9 = sub_2588E9960();
  v10 = OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memAcctSubsystems;
  swift_beginAccess();
  v11 = *(v0 + v10);
  *(v0 + v10) = v9;

  return v0;
}

unint64_t sub_2588E9960()
{
  v1 = v0;
  result = sub_2588E9FBC();
  if (result)
  {
    v3 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_2588EC578(0, *(v3 + 2) + 1, 1, v3);
    }

    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    v6 = v4 >> 1;
    v7 = v5 + 1;
    if (v4 >> 1 <= v5)
    {
      v3 = sub_2588EC578((v4 > 1), v5 + 1, 1, v3);
      v4 = *(v3 + 3);
      v6 = v4 >> 1;
    }

    *(v3 + 2) = v7;
    *&v3[4 * v5 + 32] = 5;
    v8 = v5 + 2;
    if (v6 < v8)
    {
      v3 = sub_2588EC578((v4 > 1), v8, 1, v3);
    }

    *(v3 + 2) = v8;
    *&v3[4 * v7 + 32] = 0;
    v9 = *(v1 + 16);
    v10 = sub_2588EE720(v3);

    return v10;
  }

  return result;
}

char *sub_2588E9B64()
{
  v1 = v0;
  v45 = *MEMORY[0x277D85DE8];
  v40 = sub_2588EFEBC();
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  v4 = (MEMORY[0x28223BE20])();
  v39 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v38 - v6;
  v8 = sub_2588E9FBC();
  if (v8)
  {
    v9 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_2588EC578(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    v12 = v10 >> 1;
    v13 = v11 + 1;
    if (v10 >> 1 <= v11)
    {
      v9 = sub_2588EC578((v10 > 1), v11 + 1, 1, v9);
      v10 = *(v9 + 3);
      v12 = v10 >> 1;
    }

    *(v9 + 2) = v13;
    *&v9[4 * v11 + 32] = 7;
    v14 = v11 + 2;
    if (v12 < v14)
    {
      v9 = sub_2588EC578((v10 > 1), v14, 1, v9);
    }

    *(v9 + 2) = v14;
    *&v9[4 * v13 + 32] = 0;
    v15 = *(v1 + 16);
    v16 = sub_2588EF010(v9);

    v18 = *(v16 + 2);
    if (v18)
    {
      v19 = (v2 + 8);
      v20 = v18 - 1;
      v38[1] = v16;
      v21 = (v16 + 64);
      v17 = MEMORY[0x277D84F90];
      while (1)
      {
        v22 = v21[-2];
        v41 = v21[-1];
        v42 = v22;
        v43 = *v21;
        v44 = v43;
        v23 = sub_2588EFF7C();
        v25 = v24;
        sub_2588EFE9C();
        v43.i64[0] = v23;
        v43.i64[1] = v25;
        v26 = v39;
        sub_2588EFEAC();
        sub_2588ED01C();
        sub_2588EFFEC();
        v28 = v27;
        v29 = *v19;
        v30 = v26;
        v31 = v40;
        (*v19)(v30, v40);
        v29(v7, v31);
        if ((v28 & 1) == 0)
        {

          v23 = 0;
          v25 = 0xE000000000000000;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_2588EC8A4(0, *(v17 + 2) + 1, 1, v17);
        }

        v33 = *(v17 + 2);
        v32 = *(v17 + 3);
        if (v33 >= v32 >> 1)
        {
          v17 = sub_2588EC8A4((v32 > 1), v33 + 1, 1, v17);
        }

        *(v17 + 2) = v33 + 1;
        v34 = &v17[48 * v33];
        v34[2].i64[0] = v23;
        v34[2].i64[1] = v25;
        v35 = vextq_s8(v42, v42, 8uLL);
        v34[3] = vextq_s8(v41, v41, 8uLL);
        v34[4] = v35;
        if (!v20)
        {
          break;
        }

        --v20;
        v21 += 3;
      }
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v17 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t sub_2588EA14C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v36 = *MEMORY[0x277D85DE8];
  v8 = sub_2588EFEBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v32.i8[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v32.i8[-v14];
  result = sub_2588EA510(a1, a2);
  if ((result & 0x100000000) != 0 || (v17 = result, (result = sub_2588E9FBC()) == 0))
  {
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  else
  {
    v18 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_2588EC578(0, *(v18 + 2) + 1, 1, v18);
    }

    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    v21 = v19 >> 1;
    v22 = v20 + 1;
    if (v19 >> 1 <= v20)
    {
      v18 = sub_2588EC578((v19 > 1), v20 + 1, 1, v18);
      v19 = *(v18 + 3);
      v21 = v19 >> 1;
    }

    *(v18 + 2) = v22;
    *&v18[4 * v20 + 32] = 6;
    v23 = v20 + 2;
    if (v21 < v23)
    {
      v18 = sub_2588EC578((v19 > 1), v23, 1, v18);
    }

    *(v18 + 2) = v23;
    *&v18[4 * v22 + 32] = v17;
    v24 = *(v4 + 16);
    sub_2588EF490(v18, v35);

    v32 = v35[1];
    v33 = v35[0];
    v34 = v35[2];
    v25 = sub_2588EFF7C();
    v27 = v26;
    sub_2588EFE9C();
    *&v34 = v25;
    *(&v34 + 1) = v27;
    sub_2588EFEAC();
    sub_2588ED01C();
    sub_2588EFFEC();
    LOBYTE(v24) = v28;
    v29 = *(v9 + 8);
    v29(v13, v8);
    result = (v29)(v15, v8);
    if ((v24 & 1) == 0)
    {

      v25 = 0;
      v27 = 0xE000000000000000;
    }

    *a3 = v25;
    *(a3 + 8) = v27;
    v30 = vextq_s8(v33, v33, 8uLL);
    *(a3 + 16) = vextq_s8(v32, v32, 8uLL);
    *(a3 + 32) = v30;
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2588EA510(uint64_t a1, unint64_t a2)
{
  v5 = OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memAcctSubsystems;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(v7 + 16);
    v11 = 1;
LABEL_3:
    v29 = v8;
    v12 = (v7 + 40 + 16 * v9);
    v13 = v9;
    while (v10 != v13)
    {
      v14 = v13;
      if (v13 >= v10)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      v9 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_26;
      }

      if (*(v12 - 1) != a1 || *v12 != a2)
      {
        result = sub_2588F007C();
        v13 = v14 + 1;
        v12 += 2;
        if ((result & 1) == 0)
        {
          continue;
        }
      }

      v11 = 0;
      v8 = v14;
      if (v14 <= 0x7FFFFFFF)
      {
        goto LABEL_3;
      }

      __break(1u);
      break;
    }

    if (v11)
    {

      v16 = sub_2588EFEDC();
      v17 = sub_2588EFFCC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v30 = v19;
        *v18 = 136315394;
        *(v18 + 4) = sub_2588EC9C4(a1, a2, &v30);
        *(v18 + 12) = 2080;
        v20 = MEMORY[0x259C8DE00](v7, MEMORY[0x277D837D0]);
        v22 = v21;

        v23 = sub_2588EC9C4(v20, v22, &v30);

        *(v18 + 14) = v23;
        _os_log_impl(&dword_2588E8000, v16, v17, "No matching subsystem found for: %s\n Available subsystems are: %s", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C8E180](v19, -1, -1);
        MEMORY[0x259C8E180](v18, -1, -1);
      }

      else
      {
      }

      v28 = 1;
    }

    else
    {
      v28 = 0;
    }

    v27 = v29;
  }

  else
  {
    v24 = sub_2588EFEDC();
    v25 = sub_2588EFFCC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2588E8000, v24, v25, "No subsystems currently active", v26, 2u);
      MEMORY[0x259C8E180](v26, -1, -1);
    }

    v27 = 0;
    v28 = 1;
  }

  LOBYTE(v30) = v28;
  return v27 | (v28 << 32);
}

uint64_t sub_2588EA7FC()
{
  v1 = v0;
  v52 = *MEMORY[0x277D85DE8];
  v48 = sub_2588EFEBC();
  v2 = *(v48 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v48);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = &v42 - v6;
  v7 = sub_2588E9FBC();
  if (!v7)
  {
    goto LABEL_28;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_31:
    v7 = sub_2588EC578(0, *(v7 + 16) + 1, 1, v7);
  }

  v9 = *(v7 + 16);
  v8 = *(v7 + 24);
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    v7 = sub_2588EC578((v8 > 1), v9 + 1, 1, v7);
    v8 = *(v7 + 24);
    v10 = v8 >> 1;
  }

  *(v7 + 16) = v11;
  *(v7 + 4 * v9 + 32) = 7;
  if (v10 < (v9 + 2))
  {
    v7 = sub_2588EC578((v8 > 1), v9 + 2, 1, v7);
  }

  *(v7 + 16) = v9 + 2;
  *(v7 + 4 * v11 + 32) = 0;
  v12 = *(v1 + 16);
  v13 = sub_2588EF010(v7);

  v14 = *(v13 + 2);
  if (!v14)
  {

    v7 = MEMORY[0x277D84F98];
LABEL_28:
    v40 = *MEMORY[0x277D85DE8];
    return v7;
  }

  v15 = 0;
  v45 = (v2 + 8);
  v16 = v13 + 64;
  v7 = MEMORY[0x277D84F98];
  v43 = (v14 - 1);
  v44 = v13;
  while (1)
  {
    v49 = *(v16 - 4);
    v50 = *v16;
    v51 = v50;
    v17 = sub_2588EFF7C();
    v19 = v18;
    v20 = v46;
    sub_2588EFE9C();
    v21 = v17;
    *&v50 = v17;
    *(&v50 + 1) = v19;
    v22 = v47;
    sub_2588EFEAC();
    sub_2588ED01C();
    sub_2588EFFEC();
    LOBYTE(v17) = v23;
    v24 = *v45;
    v25 = v22;
    v26 = v48;
    (*v45)(v25, v48);
    v24(v20, v26);
    if (v17)
    {
      v1 = v21;
    }

    else
    {

      v1 = 0;
      v19 = 0xE000000000000000;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v50 = v7;
    v2 = sub_2588ED0BC(v1, v19);
    v29 = *(v7 + 16);
    v30 = (v28 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v32 = v28;
    if (*(v7 + 24) < v31)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v35 = v49;
      if (v28)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_2588ED89C(&qword_27F9699E8, &qword_2588F06D0);
      v35 = v49;
      if (v32)
      {
LABEL_19:

        v7 = v50;
        *(*(v50 + 56) + 8 * v2) = v35;

        goto LABEL_23;
      }
    }

LABEL_21:
    v7 = v50;
    *(v50 + 8 * (v2 >> 6) + 64) |= 1 << v2;
    v36 = (*(v7 + 48) + 16 * v2);
    *v36 = v1;
    v36[1] = v19;
    *(*(v7 + 56) + 8 * v2) = v35;

    v37 = *(v7 + 16);
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_30;
    }

    *(v7 + 16) = v39;
LABEL_23:
    if (v43 == v15)
    {

      goto LABEL_28;
    }

    ++v15;
    v16 += 3;
    if (v15 >= *(v44 + 2))
    {
      __break(1u);

      MEMORY[0x259C8E0B0](v32);
      v7 = 0;
      goto LABEL_28;
    }
  }

  sub_2588ED3DC(v31, isUniquelyReferenced_nonNull_native, &qword_27F9699E8, &qword_2588F06D0);
  v33 = sub_2588ED0BC(v1, v19);
  if ((v32 & 1) == (v34 & 1))
  {
    v2 = v33;
    v35 = v49;
    if (v32)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  result = sub_2588F008C();
  __break(1u);
  return result;
}

unint64_t sub_2588EAD6C(uint64_t a1, unint64_t a2, int a3)
{
  v5 = v3;
  v6 = sub_2588EA510(a1, a2);
  if ((v6 & 0x100000000) != 0)
  {
    return 0;
  }

  v7 = v6;
  result = sub_2588E9FBC();
  if (result)
  {
    v9 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_2588EC578(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    v12 = v10 >> 1;
    v13 = v11 + 1;
    if (v10 >> 1 <= v11)
    {
      v9 = sub_2588EC578((v10 > 1), v11 + 1, 1, v9);
      v10 = *(v9 + 3);
      v12 = v10 >> 1;
    }

    *(v9 + 2) = v13;
    *&v9[4 * v11 + 32] = a3;
    if (v12 < (v11 + 2))
    {
      v9 = sub_2588EC578((v10 > 1), v11 + 2, 1, v9);
    }

    *(v9 + 2) = v11 + 2;
    *&v9[4 * v13 + 32] = v7;
    v14 = *(v5 + 16);
    v15 = sub_2588EBFBC(v9);

    return v15;
  }

  return result;
}

uint64_t sub_2588EAFF8()
{
  v1 = v0;
  v52 = *MEMORY[0x277D85DE8];
  v48 = sub_2588EFEBC();
  v2 = *(v48 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v48);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = &v42 - v6;
  v7 = sub_2588E9FBC();
  if (!v7)
  {
    goto LABEL_28;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_31:
    v7 = sub_2588EC578(0, *(v7 + 16) + 1, 1, v7);
  }

  v9 = *(v7 + 16);
  v8 = *(v7 + 24);
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    v7 = sub_2588EC578((v8 > 1), v9 + 1, 1, v7);
    v8 = *(v7 + 24);
    v10 = v8 >> 1;
  }

  *(v7 + 16) = v11;
  *(v7 + 4 * v9 + 32) = 7;
  if (v10 < (v9 + 2))
  {
    v7 = sub_2588EC578((v8 > 1), v9 + 2, 1, v7);
  }

  *(v7 + 16) = v9 + 2;
  *(v7 + 4 * v11 + 32) = 0;
  v12 = *(v1 + 16);
  v13 = sub_2588EF010(v7);

  v14 = *(v13 + 2);
  if (!v14)
  {

    v7 = MEMORY[0x277D84F98];
LABEL_28:
    v40 = *MEMORY[0x277D85DE8];
    return v7;
  }

  v15 = 0;
  v45 = (v2 + 8);
  v16 = v13 + 64;
  v7 = MEMORY[0x277D84F98];
  v43 = (v14 - 1);
  v44 = v13;
  while (1)
  {
    v49 = *(v16 - 3);
    v50 = *v16;
    v51 = v50;
    v17 = sub_2588EFF7C();
    v19 = v18;
    v20 = v46;
    sub_2588EFE9C();
    v21 = v17;
    *&v50 = v17;
    *(&v50 + 1) = v19;
    v22 = v47;
    sub_2588EFEAC();
    sub_2588ED01C();
    sub_2588EFFEC();
    LOBYTE(v17) = v23;
    v24 = *v45;
    v25 = v22;
    v26 = v48;
    (*v45)(v25, v48);
    v24(v20, v26);
    if (v17)
    {
      v1 = v21;
    }

    else
    {

      v1 = 0;
      v19 = 0xE000000000000000;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v50 = v7;
    v2 = sub_2588ED0BC(v1, v19);
    v29 = *(v7 + 16);
    v30 = (v28 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v32 = v28;
    if (*(v7 + 24) < v31)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v35 = v49;
      if (v28)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_2588ED89C(&qword_27F9699E0, &qword_2588F06C8);
      v35 = v49;
      if (v32)
      {
LABEL_19:

        v7 = v50;
        *(*(v50 + 56) + 8 * v2) = v35;

        goto LABEL_23;
      }
    }

LABEL_21:
    v7 = v50;
    *(v50 + 8 * (v2 >> 6) + 64) |= 1 << v2;
    v36 = (*(v7 + 48) + 16 * v2);
    *v36 = v1;
    v36[1] = v19;
    *(*(v7 + 56) + 8 * v2) = v35;

    v37 = *(v7 + 16);
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_30;
    }

    *(v7 + 16) = v39;
LABEL_23:
    if (v43 == v15)
    {

      goto LABEL_28;
    }

    ++v15;
    v16 += 3;
    if (v15 >= *(v44 + 2))
    {
      __break(1u);

      MEMORY[0x259C8E0B0](v32);
      v7 = 0;
      goto LABEL_28;
    }
  }

  sub_2588ED3DC(v31, isUniquelyReferenced_nonNull_native, &qword_27F9699E0, &qword_2588F06C8);
  v33 = sub_2588ED0BC(v1, v19);
  if ((v32 & 1) == (v34 & 1))
  {
    v2 = v33;
    v35 = v49;
    if (v32)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  result = sub_2588F008C();
  __break(1u);
  return result;
}

void sub_2588EB558(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = sub_2588EA510(a1, a2);
  if ((v7 & 0x100000000) != 0)
  {
    sub_2588ED9F4();
    swift_allocError();
    *v27 = a1;
    *(v27 + 8) = a2;
    *(v27 + 16) = 3;

LABEL_17:
    swift_willThrow();
    return;
  }

  v8 = v7;
  v9 = sub_2588E9FBC();
  if (!v9)
  {
    sub_2588ED9F4();
    swift_allocError();
    *v28 = xmmword_2588F0650;
    *(v28 + 16) = 2;
    goto LABEL_17;
  }

  v10 = v9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_2588EC578(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  v13 = v11 >> 1;
  v14 = v12 + 1;
  if (v11 >> 1 <= v12)
  {
    v10 = sub_2588EC578((v11 > 1), v12 + 1, 1, v10);
    v11 = *(v10 + 3);
    v13 = v11 >> 1;
  }

  *(v10 + 2) = v14;
  *&v10[4 * v12 + 32] = 1;
  v15 = v12 + 2;
  if (v13 < v15)
  {
    v10 = sub_2588EC578((v11 > 1), v15, 1, v10);
  }

  *(v10 + 2) = v15;
  *&v10[4 * v14 + 32] = v8;

  v16 = sub_2588EFEDC();
  v17 = sub_2588EFFBC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_2588EC9C4(a1, a2, &v33);
    _os_log_impl(&dword_2588E8000, v16, v17, "Attempting to reset peak value for %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x259C8E180](v19, -1, -1);
    MEMORY[0x259C8E180](v18, -1, -1);
  }

  v20 = *(v4 + 16);
  sub_2588EC2A4(v10, 0);
  if (v3)
  {

    MEMORY[0x259C8E0C0](v3);
    v21 = sub_2588EFEDC();
    v22 = sub_2588EFFCC();

    MEMORY[0x259C8E0B0](v3);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v23 = 136315394;
      *(v23 + 4) = sub_2588EC9C4(a1, a2, &v33);
      *(v23 + 12) = 2112;
      MEMORY[0x259C8E0C0](v3);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v26;
      *v24 = v26;
      _os_log_impl(&dword_2588E8000, v21, v22, "Error trying to reset peak memory value for %s:\n%@", v23, 0x16u);
      sub_2588ECF6C(v24);
      MEMORY[0x259C8E180](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x259C8E180](v25, -1, -1);
      MEMORY[0x259C8E180](v23, -1, -1);
    }

    goto LABEL_17;
  }

  v29 = sub_2588EFEDC();
  v30 = sub_2588EFFDC();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_2588EC9C4(a1, a2, &v33);
    _os_log_impl(&dword_2588E8000, v29, v30, "Successfuly reset peak memory accounting value to 0 for %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x259C8E180](v32, -1, -1);
    MEMORY[0x259C8E180](v31, -1, -1);
  }
}

void sub_2588EB9DC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_2588EA510(a1, a2);
  if ((v9 & 0x100000000) != 0)
  {
    sub_2588ED9F4();
    swift_allocError();
    *v29 = a1;
    *(v29 + 8) = a2;
    *(v29 + 16) = 3;

LABEL_17:
    swift_willThrow();
    return;
  }

  v10 = v9;
  v11 = sub_2588E9FBC();
  if (!v11)
  {
    sub_2588ED9F4();
    swift_allocError();
    *v30 = xmmword_2588F0650;
    *(v30 + 16) = 2;
    goto LABEL_17;
  }

  v12 = v11;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_2588EC578(0, *(v12 + 2) + 1, 1, v12);
  }

  v35 = a1;
  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  v15 = v13 >> 1;
  v16 = v14 + 1;
  v17 = a3;
  if (v13 >> 1 <= v14)
  {
    v12 = sub_2588EC578((v13 > 1), v14 + 1, 1, v12);
    v13 = *(v12 + 3);
    v15 = v13 >> 1;
  }

  *(v12 + 2) = v16;
  *&v12[4 * v14 + 32] = 3;
  if (v15 < (v14 + 2))
  {
    v12 = sub_2588EC578((v13 > 1), v14 + 2, 1, v12);
  }

  *(v12 + 2) = v14 + 2;
  *&v12[4 * v16 + 32] = v10;

  v18 = sub_2588EFEDC();
  v19 = sub_2588EFFDC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_2588EC9C4(v35, a2, &v36);
    *(v20 + 12) = 2048;
    *(v20 + 14) = v17;
    _os_log_impl(&dword_2588E8000, v18, v19, "Attempting to set hard limit for %s to %llu", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x259C8E180](v21, -1, -1);
    MEMORY[0x259C8E180](v20, -1, -1);
  }

  v22 = *(v5 + 16);
  sub_2588EC2A4(v12, v17);
  if (v4)
  {

    MEMORY[0x259C8E0C0](v4);
    v23 = sub_2588EFEDC();
    v24 = sub_2588EFFCC();

    MEMORY[0x259C8E0B0](v4);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36 = v27;
      *v25 = 136315650;
      *(v25 + 4) = sub_2588EC9C4(v35, a2, &v36);
      *(v25 + 12) = 2048;
      *(v25 + 14) = v17;
      *(v25 + 22) = 2112;
      MEMORY[0x259C8E0C0](v4);
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 24) = v28;
      *v26 = v28;
      _os_log_impl(&dword_2588E8000, v23, v24, "Error trying to set hard-limit for %s to %llu:\n%@", v25, 0x20u);
      sub_2588ECF6C(v26);
      MEMORY[0x259C8E180](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x259C8E180](v27, -1, -1);
      MEMORY[0x259C8E180](v25, -1, -1);
    }

    goto LABEL_17;
  }

  v31 = sub_2588EFEDC();
  v32 = sub_2588EFFDC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v33 = 136315394;
    *(v33 + 4) = sub_2588EC9C4(v35, a2, &v36);
    *(v33 + 12) = 2048;
    *(v33 + 14) = v17;
    _os_log_impl(&dword_2588E8000, v31, v32, "Successfuly set hard-limit for %s to %llu", v33, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x259C8E180](v34, -1, -1);
    MEMORY[0x259C8E180](v33, -1, -1);
  }
}

uint64_t MemoryAccountingManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memacctlog;
  v3 = sub_2588EFEFC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memAcctSubsystems);

  return v0;
}

uint64_t MemoryAccountingManager.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memacctlog;
  v3 = sub_2588EFEFC();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memAcctSubsystems];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

char *sub_2588EBFBC(char *a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2588EFE8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 2);
  if (HIDWORD(v7))
  {
    __break(1u);
  }

  v25 = 8;
  v26 = 0;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_2588EC578(0, v7, 0, a1);
  }

  if (sysctl(a1 + 8, v7, &v26, &v25, 0, 0))
  {
    v8 = sub_2588EFEDC();
    v9 = sub_2588EFFCC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v3;
      v12 = v11;
      v27[0] = v11;
      *v10 = 67109378;
      *(v10 + 4) = MEMORY[0x259C8DD80]();
      *(v10 + 8) = 2080;

      v14 = MEMORY[0x259C8DE00](v13, MEMORY[0x277D849A8]);
      v16 = v15;

      v17 = sub_2588EC9C4(v14, v16, v27);

      *(v10 + 10) = v17;
      _os_log_impl(&dword_2588E8000, v8, v9, "Failed to call sysctl with error: %d\n using mib: %s", v10, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v12);
      v18 = v12;
      v3 = v24;
      MEMORY[0x259C8E180](v18, -1, -1);
      MEMORY[0x259C8E180](v10, -1, -1);
    }

    MEMORY[0x259C8DD80]();
    v19 = sub_2588EFF0C();
    if ((v19 & 0x100000000) != 0)
    {
      LODWORD(v19) = sub_2588EFE6C();
    }

    LODWORD(v27[0]) = v19;
    sub_2588EFCDC(MEMORY[0x277D84F90]);
    sub_2588EDDC8();
    sub_2588EFECC();
    v20 = v6;
    sub_2588EFE7C();
    (*(v3 + 8))(v6, v2);
    swift_willThrow();
  }

  else
  {
    v20 = v26;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t sub_2588EC2A4(char *a1, uint64_t a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2588EFE8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2;
  v9 = *(a1 + 2);
  if (HIDWORD(v9))
  {
    __break(1u);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_2588EC578(0, v9, 0, a1);
  }

  if (sysctl(a1 + 8, v9, 0, 0, &v25, 8uLL))
  {
    v10 = sub_2588EFEDC();
    v11 = sub_2588EFFCC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v5;
      v14 = v13;
      v26[0] = v13;
      *v12 = 67109378;
      *(v12 + 4) = MEMORY[0x259C8DD80]();
      *(v12 + 8) = 2080;

      v16 = MEMORY[0x259C8DE00](v15, MEMORY[0x277D849A8]);
      v18 = v17;

      v19 = sub_2588EC9C4(v16, v18, v26);

      *(v12 + 10) = v19;
      _os_log_impl(&dword_2588E8000, v10, v11, "Failed to call sysctl with error: %d\n using mib: %s", v12, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v14);
      v20 = v14;
      v5 = v24;
      MEMORY[0x259C8E180](v20, -1, -1);
      MEMORY[0x259C8E180](v12, -1, -1);
    }

    MEMORY[0x259C8DD80]();
    v21 = sub_2588EFF0C();
    if ((v21 & 0x100000000) != 0)
    {
      LODWORD(v21) = sub_2588EFE6C();
    }

    LODWORD(v26[0]) = v21;
    sub_2588EFCDC(MEMORY[0x277D84F90]);
    sub_2588EDDC8();
    sub_2588EFECC();
    sub_2588EFE7C();
    (*(v5 + 8))(v8, v4);
    swift_willThrow();
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_2588EC578(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F969A08, &qword_2588F06F0);
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

char *sub_2588EC67C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9699C8, &qword_2588F06B8);
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

char *sub_2588EC788(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F969A00, &qword_2588F06E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

char *sub_2588EC8A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9699F8, &qword_2588F06E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2588EC9C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2588ECA90(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_2588EDE20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2588ECA90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2588ECB9C(a5, a6);
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
    result = sub_2588F002C();
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

uint64_t sub_2588ECB9C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2588ECBE8(a1, a2);
  sub_2588ECD18(&unk_2869C5270);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2588ECBE8(uint64_t a1, unint64_t a2)
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

  v6 = sub_2588ECE04(v5, 0);
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

  result = sub_2588F002C();
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
        v10 = sub_2588EFF8C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2588ECE04(v10, 0);
        result = sub_2588F000C();
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

uint64_t sub_2588ECD18(uint64_t result)
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

  result = sub_2588ECE78(result, v12, 1, v3);
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

void *sub_2588ECE04(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9699F0, &qword_2588F06D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2588ECE78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9699F0, &qword_2588F06D8);
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

uint64_t sub_2588ECF6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F969998, &qword_2588F0660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2588ED01C()
{
  result = qword_27F9699A0;
  if (!qword_27F9699A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9699A0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_2588ED0BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2588F00DC();
  sub_2588EFF5C();
  v6 = sub_2588F00EC();

  return sub_2588ED674(a1, a2, v6);
}

uint64_t sub_2588ED134(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9699D0, &qword_2588F06C0);
  v38 = a2;
  result = sub_2588F004C();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_2588F00DC();
      sub_2588EFF5C();
      result = sub_2588F00EC();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

uint64_t sub_2588ED3DC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_2588F004C();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_2588F00DC();
      sub_2588EFF5C();
      result = sub_2588F00EC();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

unint64_t sub_2588ED674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2588F007C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_2588ED72C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9699D0, &qword_2588F06C0);
  v2 = *v0;
  v3 = sub_2588F003C();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_2588ED89C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2588F003C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + 8 * v19);
        v24 = (*(v6 + 48) + 16 * v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v23;
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

      v18 = *(v4 + 64 + 8 * v10);
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

unint64_t sub_2588ED9F4()
{
  result = qword_27F9699A8;
  if (!qword_27F9699A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9699A8);
  }

  return result;
}

uint64_t sub_2588EDA48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16MemoryAccounting23MemoryAccountingManager_memAcctSubsystems;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t type metadata accessor for MemoryAccountingManager()
{
  result = qword_27F9699B0;
  if (!qword_27F9699B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2588EDAFC()
{
  result = sub_2588EFEFC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_2588EDDC8()
{
  result = qword_27F9699D8;
  if (!qword_27F9699D8)
  {
    sub_2588EFE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9699D8);
  }

  return result;
}

uint64_t sub_2588EDE20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t SysctlManagerError.errorDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      sub_2588F001C();

      v3 = 0xD000000000000019;
    }

    else
    {
      sub_2588F001C();

      v3 = 0xD00000000000001CLL;
    }
  }

  else if (*(v0 + 16))
  {
    sub_2588F001C();

    v3 = 0xD00000000000001FLL;
  }

  else
  {
    sub_2588F001C();

    v3 = 0xD000000000000029;
  }

  v5 = v3;
  MEMORY[0x259C8DDD0](v2, v1);
  return v5;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2588EDFF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2588EE03C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_2588EE098()
{
  v2 = v0;
  v50[4] = *MEMORY[0x277D85DE8];
  v3 = 0xEC00000074636361;
  v4 = sub_2588EFE8C();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20]();
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2588EFF3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC16MemoryAccounting13SysctlManager_lookupCache;
  swift_beginAccess();
  v13 = *(v0 + v12);
  if (*(v13 + 16))
  {

    v14 = sub_2588ED0BC(0x6D656D2E6E72656BLL, 0xEC00000074636361);
    if (v15)
    {
      v3 = *(*(v13 + 56) + 8 * v14);

      v16 = sub_2588EFEDC();
      v17 = sub_2588EFFDC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v49[0] = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_2588EC9C4(0x6D656D2E6E72656BLL, 0xEC00000074636361, v49);
        _os_log_impl(&dword_2588E8000, v16, v17, "Cache hit for %s mib.", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x259C8E180](v19, -1, -1);
        MEMORY[0x259C8E180](v18, -1, -1);
      }

      goto LABEL_26;
    }
  }

  v43 = v1;
  v48 = 12;
  v20 = sub_2588EFFAC();
  *(v20 + 16) = 12;
  *(v20 + 32) = 0u;
  v21 = (v20 + 32);
  *(v20 + 48) = 0u;
  *(v20 + 64) = 0u;
  v44 = v20;
  strcpy(v49, "kern.memacct");
  BYTE5(v49[1]) = 0;
  HIWORD(v49[1]) = -5120;
  sub_2588EFF2C();
  sub_2588ED01C();
  v22 = sub_2588EFFFC();
  (*(v8 + 8))(v11, v7);
  if (v22)
  {
    v23 = (v22 + 32);
  }

  else
  {
    v23 = 0;
  }

  v24 = sysctlnametomib(v23, v21, &v48);

  if (v24)
  {
    v25 = sub_2588EFEDC();
    v26 = sub_2588EFFCC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 67109120;
      *(v27 + 4) = MEMORY[0x259C8DD80]();
      _os_log_impl(&dword_2588E8000, v25, v26, "Failed to lookup sysctl by name with error: %d", v27, 8u);
      MEMORY[0x259C8E180](v27, -1, -1);
    }

    MEMORY[0x259C8DD80]();
    v28 = sub_2588EFF0C();
    if ((v28 & 0x100000000) != 0)
    {
      LODWORD(v28) = sub_2588EFE6C();
    }

    LODWORD(v49[0]) = v28;
    sub_2588EFCDC(MEMORY[0x277D84F90]);
    sub_2588EDDC8();
    v29 = v45;
    v30 = v47;
    sub_2588EFECC();
    sub_2588EFE7C();
    (*(v46 + 8))(v29, v30);
LABEL_16:
    swift_willThrow();

    goto LABEL_26;
  }

  if (v48 < 1)
  {
    v34 = sub_2588EFEDC();
    v35 = sub_2588EFFCC();
    if (os_log_type_enabled(v34, v35))
    {
      v3 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v50[0] = v36;
      *v3 = 136315138;
      v49[0] = 0;
      v49[1] = 0xE000000000000000;
      sub_2588F001C();

      v49[0] = 0xD000000000000029;
      v49[1] = 0x80000002588F04A0;
      MEMORY[0x259C8DDD0](0x6D656D2E6E72656BLL, 0xEC00000074636361);
      v37 = sub_2588EC9C4(v49[0], v49[1], v50);

      *(v3 + 4) = v37;
      _os_log_impl(&dword_2588E8000, v34, v35, "%s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x259C8E180](v36, -1, -1);
      MEMORY[0x259C8E180](v3, -1, -1);
    }

    sub_2588ED9F4();
    swift_allocError();
    *v38 = xmmword_2588F0650;
    *(v38 + 16) = 0;
    goto LABEL_16;
  }

  v31 = v44;
  v32 = *(v44 + 16);
  if (v32 < v48)
  {
    __break(1u);
  }

  if (v32 == v48)
  {

    v3 = v31;
  }

  else
  {
    sub_2588EFC0C(v44, v21, 0, (2 * v48) | 1);
    v3 = v33;
  }

  swift_beginAccess();

  v39 = *(v2 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50[0] = *(v2 + v12);
  *(v2 + v12) = 0x8000000000000000;
  sub_2588EF93C(v3, 0x6D656D2E6E72656BLL, 0xEC00000074636361, isUniquelyReferenced_nonNull_native);
  *(v2 + v12) = v50[0];
  swift_endAccess();

LABEL_26:
  v41 = *MEMORY[0x277D85DE8];
  return v3;
}

char *sub_2588EE720(char *a1)
{
  v87[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2588EFE8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 2);
  if (HIDWORD(v8))
  {
    goto LABEL_95;
  }

  v84 = 128;

  v9 = sub_2588EFFAC();
  *(v9 + 16) = 128;
  *(v9 + 32) = 0u;
  v10 = (v9 + 32);
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0u;
  v81 = v9;
  *(v9 + 144) = 0u;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_2588EC578(0, *(a1 + 2), 0, a1);
  }

  v11 = sysctl(a1 + 8, v8, v10, &v84, 0, 0);

  if (!v11)
  {
    if (v84 < 1)
    {

      v32 = sub_2588EFEDC();
      v33 = sub_2588EFFCC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = a1;
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 136315138;
        v85 = 0;
        v86 = 0xE000000000000000;
        v87[0] = v36;
        sub_2588F001C();

        v85 = 0xD000000000000029;
        v86 = 0x80000002588F04A0;
        MEMORY[0x259C8DDD0](0x6D656D2E6E72656BLL, 0xEC00000074636361);
        v37 = sub_2588EC9C4(v85, v86, v87);

        *(v35 + 4) = v37;
        _os_log_impl(&dword_2588E8000, v32, v33, "%s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x259C8E180](v36, -1, -1);
        v38 = v35;
        a1 = v34;
        MEMORY[0x259C8E180](v38, -1, -1);
      }

      sub_2588ED9F4();
      swift_allocError();
      *v39 = xmmword_2588F0650;
      *(v39 + 16) = 0;
      goto LABEL_19;
    }

    v83 = *(v81 + 16);
    if (v83)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        v28 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_86;
        }

        v29 = __OFADD__(v27, 16);
        v27 += 16;
        if (v29)
        {
          v27 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v26;
      }

      while (v27 < v83);
    }

    else
    {
      v28 = 0;
    }

    v85 = MEMORY[0x277D84F90];
    sub_2588EFAB8(0, v28 & ~(v28 >> 63), 0);
    if (v28 < 0)
    {
LABEL_96:
      __break(1u);
    }

    v80[0] = v1;
    v80[1] = a1;
    v40 = v85;
    v41 = v81;
    if (v28)
    {
      v42 = 0;
      v43 = *(v81 + 16);
      v44 = 16;
      v45 = 32;
      while (1)
      {
        if (v43 >= v44)
        {
          v46 = v44;
        }

        else
        {
          v46 = v43;
        }

        if (v42 >= v83)
        {
          goto LABEL_87;
        }

        if (v42 == 0x7FFFFFFFFFFFFFF0)
        {
          break;
        }

        if (v43 >= (v42 + 16))
        {
          v47 = v42 + 16;
        }

        else
        {
          v47 = v43;
        }

        if (v47 < v42)
        {
          goto LABEL_89;
        }

        v82 = v42 + 16;
        v48 = v46 + v45 - 32;
        if (v48 == v41[2])
        {

          v49 = v41;
        }

        else
        {
          v49 = MEMORY[0x277D84F90];
          if (v42 != v47)
          {
            if (v48 >= 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9699C0, &qword_2588F06B0);
              v49 = swift_allocObject();
              v53 = _swift_stdlib_malloc_size(v49);
              v41 = v81;
              v49[2] = v48;
              v49[3] = 2 * v53 - 64;
            }

            memcpy(v49 + 4, v41 + v42 + 32, v48);
            v41 = v81;
          }
        }

        v85 = v40;
        v51 = *(v40 + 16);
        v50 = *(v40 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_2588EFAB8((v50 > 1), v51 + 1, 1);
          v41 = v81;
          v40 = v85;
        }

        *(v40 + 16) = v51 + 1;
        *(v40 + 8 * v51 + 32) = v49;
        v44 += 16;
        v45 -= 16;
        v52 = v82;
        v42 = v82;
        if (!--v28)
        {
          goto LABEL_48;
        }
      }

LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
    }

    else
    {
      v52 = 0;
LABEL_48:
      if (v52 >= v83)
      {
LABEL_69:

        v67 = *(v40 + 16);
        if (!v67)
        {
          a1 = MEMORY[0x277D84F90];
          goto LABEL_84;
        }

        v68 = 0;
        a1 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v68 >= *(v40 + 16))
          {
            goto LABEL_93;
          }

          v69 = *(v40 + 32 + 8 * v68);
          v70 = *(v69 + 16);
          if (!v70)
          {
            goto LABEL_94;
          }

          if (!*(v69 + 32))
          {
            goto LABEL_84;
          }

          v71 = 0;
          ++v68;
          v72 = v70 - 1;
          do
          {
            if (v72 == v71)
            {
              __break(1u);
LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
              goto LABEL_88;
            }
          }

          while (*(v69 + v71++ + 33));

          v74 = sub_2588EFF4C();
          v76 = v75;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_2588EC67C(0, *(a1 + 2) + 1, 1, a1);
          }

          v78 = *(a1 + 2);
          v77 = *(a1 + 3);
          if (v78 >= v77 >> 1)
          {
            a1 = sub_2588EC67C((v77 > 1), v78 + 1, 1, a1);
          }

          *(a1 + 2) = v78 + 1;
          v79 = &a1[16 * v78];
          *(v79 + 4) = v74;
          *(v79 + 5) = v76;
          if (v68 == v67)
          {
LABEL_84:

            goto LABEL_20;
          }
        }
      }

      v54 = -v52;
      v55 = v52 + 16;
      v56 = v52;
      while (1)
      {
        v57 = v56 + 16;
        if (__OFADD__(v56, 16))
        {
          break;
        }

        v58 = v41[2];
        if (v58 >= v57)
        {
          v59 = v56 + 16;
        }

        else
        {
          v59 = v41[2];
        }

        if (v59 < v56)
        {
          goto LABEL_91;
        }

        if (v52 < 0)
        {
          goto LABEL_92;
        }

        v60 = v52;
        if (v58 >= v55)
        {
          v61 = v55;
        }

        else
        {
          v61 = v41[2];
        }

        v62 = v61 + v54;
        if (v61 + v54 == v58)
        {

          v63 = v41;
        }

        else
        {
          v63 = MEMORY[0x277D84F90];
          if (v56 != v59)
          {
            if (v62 >= 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9699C0, &qword_2588F06B0);
              v63 = swift_allocObject();
              v66 = _swift_stdlib_malloc_size(v63);
              v41 = v81;
              v63[2] = v62;
              v63[3] = 2 * v66 - 64;
            }

            memcpy(v63 + 4, v41 + v56 + 32, v62);
            v41 = v81;
          }
        }

        v85 = v40;
        v65 = *(v40 + 16);
        v64 = *(v40 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_2588EFAB8((v64 > 1), v65 + 1, 1);
          v41 = v81;
          v40 = v85;
        }

        *(v40 + 16) = v65 + 1;
        *(v40 + 8 * v65 + 32) = v63;
        v56 += 16;
        v54 -= 16;
        v55 += 16;
        v52 = v60;
        if (v57 >= v83)
        {
          goto LABEL_69;
        }
      }
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v12 = sub_2588EFEDC();
  v13 = sub_2588EFFCC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v85 = v15;
    *v14 = 67109378;
    *(v14 + 4) = MEMORY[0x259C8DD80]();
    *(v14 + 8) = 2080;

    v17 = MEMORY[0x259C8DE00](v16, MEMORY[0x277D849A8]);
    v83 = v7;
    v18 = v3;
    v19 = v4;
    v20 = v17;
    v22 = v21;

    v23 = sub_2588EC9C4(v20, v22, &v85);

    *(v14 + 10) = v23;
    v4 = v19;
    v3 = v18;
    v7 = v83;
    _os_log_impl(&dword_2588E8000, v12, v13, "Failed to call sysctl with error: %d\n using mib: %s", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x259C8E180](v15, -1, -1);
    MEMORY[0x259C8E180](v14, -1, -1);
  }

  MEMORY[0x259C8DD80]();
  v24 = sub_2588EFF0C();
  if ((v24 & 0x100000000) != 0)
  {
    v25 = sub_2588EFE6C();
  }

  else
  {
    v25 = v24;
  }

  LODWORD(v85) = v25;
  sub_2588EFCDC(MEMORY[0x277D84F90]);
  sub_2588EDDC8();
  sub_2588EFECC();
  sub_2588EFE7C();
  (*(v4 + 8))(v7, v3);
LABEL_19:
  swift_willThrow();

LABEL_20:
  v30 = *MEMORY[0x277D85DE8];
  return a1;
}

char *sub_2588EF010(char *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = sub_2588EFE8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = *(a1 + 2);
  if (HIDWORD(v7))
  {
    __break(1u);
  }

  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = 384;
  type metadata accessor for memacct_statistics();

  v8 = sub_2588EFFAC();
  *(v8 + 32) = 0u;
  *(v8 + 16) = 8;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0u;
  *(v8 + 144) = 0u;
  *(v8 + 160) = 0u;
  *(v8 + 176) = 0u;
  *(v8 + 192) = 0u;
  *(v8 + 208) = 0u;
  *(v8 + 224) = 0u;
  *(v8 + 240) = 0u;
  *(v8 + 256) = 0u;
  *(v8 + 272) = 0u;
  *(v8 + 288) = 0u;
  *(v8 + 304) = 0u;
  *(v8 + 320) = 0u;
  *(v8 + 336) = 0u;
  *(v8 + 352) = 0u;
  *(v8 + 368) = 0u;
  *(v8 + 384) = 0u;
  *(v8 + 400) = 0u;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_2588EC578(0, *(a1 + 2), 0, a1);
  }

  v9 = sysctl(a1 + 8, v7, (v8 + 32), &v41, 0, 0);

  if (v9)
  {
    v10 = sub_2588EFEDC();
    v11 = sub_2588EFFCC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v38 = v3;
      v13 = v12;
      v14 = swift_slowAlloc();
      *&v42 = v14;
      *v13 = 67109378;
      *(v13 + 4) = MEMORY[0x259C8DD80]();
      *(v13 + 8) = 2080;

      v16 = v4;
      v17 = MEMORY[0x259C8DE00](v15, MEMORY[0x277D849A8]);
      v19 = v18;

      v20 = sub_2588EC9C4(v17, v19, &v42);

      *(v13 + 10) = v20;
      v4 = v16;
      _os_log_impl(&dword_2588E8000, v10, v11, "Failed to call sysctl with error: %d\n using mib: %s", v13, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x259C8E180](v14, -1, -1);
      v21 = v13;
      v3 = v38;
      MEMORY[0x259C8E180](v21, -1, -1);
    }

    v22 = v39;
    MEMORY[0x259C8DD80]();
    v23 = sub_2588EFF0C();
    if ((v23 & 0x100000000) != 0)
    {
      v24 = sub_2588EFE6C();
    }

    else
    {
      v24 = v23;
    }

    LODWORD(v42) = v24;
    sub_2588EFCDC(MEMORY[0x277D84F90]);
    sub_2588EDDC8();
    sub_2588EFECC();
    v28 = v22;
    sub_2588EFE7C();
    (*(v4 + 8))(v22, v3);
    swift_willThrow();
  }

  else
  {
    v25 = *(v8 + 16);
    if (v25)
    {
      v39 = v1;
      v26 = v25 - 1;
      v27 = (v8 + 65);
      v28 = MEMORY[0x277D84F90];
      while (1)
      {
        v42 = *(v27 - 33);
        v43 = *(v27 - 17);
        v29 = *(v27 - 1);
        v40[0] = *v27;
        *(v40 + 7) = *(v27 + 7);
        if (v29)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_2588EC788(0, *(v28 + 2) + 1, 1, v28);
          }

          v31 = *(v28 + 2);
          v30 = *(v28 + 3);
          if (v31 >= v30 >> 1)
          {
            v28 = sub_2588EC788((v30 > 1), v31 + 1, 1, v28);
          }

          *(v28 + 2) = v31 + 1;
          v32 = &v28[48 * v31];
          v33 = v43;
          *(v32 + 2) = v42;
          *(v32 + 3) = v33;
          v32[64] = v29;
          v34 = v40[0];
          *(v32 + 9) = *(v40 + 7);
          *(v32 + 65) = v34;
        }

        if (!v26)
        {
          break;
        }

        --v26;
        v27 += 6;
      }
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
    }
  }

  v35 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t sub_2588EF490@<X0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = sub_2588EFE8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 2);
  if (HIDWORD(v9))
  {
    __break(1u);
  }

  v29 = 48;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_2588EC578(0, v9, 0, a1);
  }

  if (sysctl(a1 + 8, v9, &v26, &v29, 0, 0))
  {
    v10 = sub_2588EFEDC();
    v11 = sub_2588EFFCC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v30 = v13;
      *v12 = 67109378;
      *(v12 + 4) = MEMORY[0x259C8DD80]();
      *(v12 + 8) = 2080;

      v15 = MEMORY[0x259C8DE00](v14, MEMORY[0x277D849A8]);
      v25 = v5;
      v16 = v15;
      v18 = v17;

      v19 = sub_2588EC9C4(v16, v18, &v30);

      *(v12 + 10) = v19;
      v5 = v25;
      _os_log_impl(&dword_2588E8000, v10, v11, "Failed to call sysctl with error: %d\n using mib: %s", v12, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x259C8E180](v13, -1, -1);
      MEMORY[0x259C8E180](v12, -1, -1);
    }

    MEMORY[0x259C8DD80]();
    v20 = sub_2588EFF0C();
    if ((v20 & 0x100000000) != 0)
    {
      LODWORD(v20) = sub_2588EFE6C();
    }

    LODWORD(v30) = v20;
    sub_2588EFCDC(MEMORY[0x277D84F90]);
    sub_2588EDDC8();
    sub_2588EFECC();
    sub_2588EFE7C();
    (*(v5 + 8))(v8, v4);
    swift_willThrow();
  }

  else
  {
    v30 = v26;
    v31 = v27;
    v32 = v28;

    v22 = v31;
    *a2 = v30;
    a2[1] = v22;
    a2[2] = v32;
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2588EF7A0()
{
  v1 = OBJC_IVAR____TtC16MemoryAccounting13SysctlManager_memacctlog;
  v2 = sub_2588EFEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MemoryAccounting13SysctlManager_lookupCache);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for SysctlManager()
{
  result = qword_27F969A20;
  if (!qword_27F969A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2588EF8A0()
{
  result = sub_2588EFEFC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2588EF93C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2588ED0BC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2588ED134(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2588ED0BC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2588F008C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2588ED72C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_2588EFAB8(void *a1, int64_t a2, char a3)
{
  result = sub_2588EFAD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2588EFAD8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F969A30, &qword_2588F0890);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F969A38, &qword_2588F0898);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2588EFC0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F969A08, &qword_2588F06F0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_2588EFCDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F969A40, &qword_2588F08A0);
    v3 = sub_2588F005C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2588EFDEC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2588ED0BC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2588EFE5C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_2588EFDEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F969A48, &qword_2588F08A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2588EFE5C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}