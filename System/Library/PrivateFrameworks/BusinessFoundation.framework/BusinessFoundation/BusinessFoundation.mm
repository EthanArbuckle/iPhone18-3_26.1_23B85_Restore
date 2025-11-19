uint64_t sub_242111790()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2421117D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_242111810()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  v2 = sub_242128CD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5, v2);
  v7 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v4 | 7);
}

uint64_t sub_2421118D8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242111910()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EC80C10, &unk_24212ABA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2421119A4()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  v2 = sub_242128CD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v2);
  v7 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v4 | 7);
}

uint64_t sub_242111AA8()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  v2 = sub_242128CD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v2);
  v8 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v4 | 7);
}

uint64_t sub_242111BB4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t LocalDatabase.Error.hashValue.getter()
{
  v1 = *v0;
  sub_242128EF0();
  MEMORY[0x245D078C0](v1);
  return sub_242128F10();
}

uint64_t sub_242111C8C()
{
  v1 = *v0;
  sub_242128EF0();
  MEMORY[0x245D078C0](v1);
  return sub_242128F10();
}

uint64_t sub_242111D00()
{
  v1 = *v0;
  sub_242128EF0();
  MEMORY[0x245D078C0](v1);
  return sub_242128F10();
}

uint64_t LocalDatabase.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  LocalDatabase.init(_:)(a1);
  return v5;
}

uint64_t LocalDatabase.init(_:)(uint64_t a1)
{
  v2 = v1;
  v15 = a1;
  v16 = sub_242128D60();
  v3 = *(v16 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_242128D90() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = *(*(sub_242128BB0() - 8) + 64);
  MEMORY[0x28223BE20]();
  v14 = OBJC_IVAR____TtC18BusinessFoundation13LocalDatabase_queue;
  v13[1] = sub_2421120B8();
  sub_242128BA0();
  v17 = MEMORY[0x277D84F90];
  sub_2421155E0(&qword_27EC80AD8, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80AE0, &qword_24212A7A0);
  v9 = v15;
  sub_242112540(&qword_27EC80AE8, &qword_27EC80AE0, &qword_24212A7A0);
  sub_242128DD0();
  (*(v3 + 104))(v6, *MEMORY[0x277D85268], v16);
  *(v1 + v14) = sub_242128DA0();
  *(v1 + OBJC_IVAR____TtC18BusinessFoundation13LocalDatabase_database) = 0;
  if (sub_242128B10())
  {
    v10 = OBJC_IVAR____TtC18BusinessFoundation13LocalDatabase_url;
    v11 = sub_242128B30();
    (*(*(v11 - 8) + 32))(v2 + v10, v9, v11);
    return v2;
  }

  else
  {
    result = sub_242128E00();
    __break(1u);
  }

  return result;
}

unint64_t sub_2421120B8()
{
  result = qword_27EC80AD0;
  if (!qword_27EC80AD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC80AD0);
  }

  return result;
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t LocalDatabase.deinit()
{
  v1 = v0;
  v2 = sub_242128B90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_242128BB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC18BusinessFoundation13LocalDatabase_database;
  swift_beginAccess();
  v13 = *(v1 + v12);
  if (v13)
  {
    v24 = v3;
    v14 = *(v1 + OBJC_IVAR____TtC18BusinessFoundation13LocalDatabase_queue);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    aBlock[4] = sub_2421124DC;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2421124E4;
    aBlock[3] = &block_descriptor;
    v16 = _Block_copy(aBlock);
    v22 = v14;
    v23 = v7;
    sub_242128BA0();
    v25 = MEMORY[0x277D84F90];
    sub_2421155E0(&qword_27EC80B00, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80B08, &unk_24212A7A8);
    sub_242112540(&qword_27EC80B10, &qword_27EC80B08, &unk_24212A7A8);
    sub_242128DD0();
    v17 = v22;
    MEMORY[0x245D07730](0, v11, v6, v16);
    _Block_release(v16);

    (*(v24 + 8))(v6, v2);
    (*(v8 + 8))(v11, v23);
  }

  v18 = OBJC_IVAR____TtC18BusinessFoundation13LocalDatabase_url;
  v19 = sub_242128B30();
  (*(*(v19 - 8) + 8))(v1 + v18, v19);

  return v1;
}

uint64_t sub_2421124E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_242112540(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t LocalDatabase.__deallocating_deinit()
{
  LocalDatabase.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2421125EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_242112614, 0, 0);
}

uint64_t sub_242112614()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_242114828();
  v3 = *(v0 + 56);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = swift_allocObject();
  *(v0 + 64) = v6;
  *(v6 + 16) = *(v0 + 40);
  *(v6 + 32) = v5;
  *(v6 + 40) = v4;
  *(v6 + 48) = v3;

  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  v8 = sub_242128C90();
  *v7 = v0;
  v7[1] = sub_242112780;
  v9 = *(v0 + 56);

  return sub_242112BEC(v0 + 16, sub_242114A28, v6, v8);
}

uint64_t sub_242112780()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_2421128B8;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_24211289C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2421128B8()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24211291C@<X0>(sqlite3 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  v10 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_242128DE0();

  MEMORY[0x245D075C0](a2, a3);
  ppStmt[0] = 0;
  v11 = sub_242128BE0();

  v12 = sqlite3_prepare_v2(a1, (v11 + 32), -1, ppStmt, 0);

  if (v12 || (v15 = ppStmt[0]) == 0)
  {
    sub_242115030();
    swift_allocError();
    *v13 = 3;
    result = swift_willThrow();
  }

  else
  {
    v16 = sub_242128C60();
    v17 = sub_242115084(v15);
    type metadata accessor for LocalDatabase.SQLiteStatementRowDecoder();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D84F90];
    v18[4] = MEMORY[0x277D84F90];
    v18[5] = sub_242115234(v19);
    v18[2] = v15;
    v18[3] = v17;
    if (sqlite3_step(v15) == 100)
    {
      sub_2421155E0(&qword_27EC80BB8, type metadata accessor for LocalDatabase.SQLiteStatementRowDecoder);
      while (1)
      {

        sub_242128D00();
        if (v5)
        {
          break;
        }

        sub_242128C90();
        sub_242128C80();
        if (sqlite3_step(v15) != 100)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:

      *a5 = v16;
    }

    result = sqlite3_finalize(v15);
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_242112BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_242112C14, 0, 0);
}

uint64_t sub_242112C14()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v1 + OBJC_IVAR____TtC18BusinessFoundation13LocalDatabase_queue);
  v0[7] = v5;
  v6 = swift_allocObject();
  v0[8] = v6;
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v4;
  v6[5] = v3;
  v5;

  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_242112D34;
  v8 = v0[5];
  v9 = v0[2];

  return OS_dispatch_queue.bf_async<A>(execute:)(v9, sub_2421155C0, v6, v8);
}

uint64_t sub_242112D34()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_242112E78, 0, 0);
  }

  else
  {
    v5 = v3[7];
    v4 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_242112E78()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_242112EE0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = OBJC_IVAR____TtC18BusinessFoundation13LocalDatabase_database;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    return a2();
  }

  sub_242128B20();
  v6 = sub_242128BE0();

  swift_beginAccess();
  v7 = sqlite3_open_v2((v6 + 32), (a1 + v4), 1, 0);
  swift_endAccess();

  if (!v7)
  {
    v9 = *(a1 + v4);
    return a2();
  }

  sub_242115030();
  swift_allocError();
  *v8 = 0;
  return swift_willThrow();
}

uint64_t sub_242113008()
{
  type metadata accessor for LocalDatabase.SQLiteKeyedContainer();
  v1 = *(v0 + 16);
  v4 = v0 + 24;
  v2 = *(v0 + 24);
  v3 = *(v4 + 8);
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = v2;

  swift_getWitnessTable();
  return sub_242128E40();
}

void *sub_2421130BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  return result;
}

uint64_t sub_242113104()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_242113188()
{
  sub_242115030();
  swift_allocError();
  *v0 = 6;
  return swift_willThrow();
}

uint64_t sub_2421131D8()
{
  v1 = v0;
  v2 = *v0;
  if (swift_dynamicCastMetatype())
  {
    v3 = v0[4];
    v4 = *(v2 + 80);
    v5 = *(v2 + 88);
    v6 = sub_242128F20();
    if (*(v3 + 16))
    {
      v8 = sub_2421140F4(v6, v7);
      v10 = v9;

      if (v10)
      {
        if (sqlite3_column_text(v1[3], *(*(v3 + 56) + 4 * v8)))
        {
          sub_242128C20();
          return swift_dynamicCast();
        }

LABEL_15:
        v25 = 5;
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (swift_dynamicCastMetatype())
  {
    v11 = v0[4];
    v12 = *(v2 + 80);
    v13 = *(v2 + 88);
    v14 = sub_242128F20();
    if (*(v11 + 16))
    {
      v16 = sub_2421140F4(v14, v15);
      v18 = v17;

      if (v18)
      {
        v19 = *(*(v11 + 56) + 4 * v16);
        v20 = v1[3];
        v21 = sqlite3_column_blob(v20, v19);
        if (v21)
        {
          v22 = v21;
          v23 = sqlite3_column_bytes(v20, v19);
          sub_242115510(v22, v23);
          return swift_dynamicCast();
        }

        goto LABEL_15;
      }

LABEL_13:
      v25 = 4;
LABEL_14:
      sub_242115030();
      swift_allocError();
      *v26 = v25;
      return swift_willThrow();
    }

LABEL_12:

    goto LABEL_13;
  }

  result = sub_242128E00();
  __break(1u);
  return result;
}

uint64_t sub_242113560()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void sub_2421135AC(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  sub_24211540C();
}

uint64_t sub_242113650()
{
  v2 = *v0;
  sub_2421131D8();
  if (!v1)
  {
    v3 = v5;
  }

  return v3 & 1;
}

uint64_t sub_2421136A0()
{
  v2 = *v0;
  result = sub_2421131D8();
  if (!v1)
  {
    return v4;
  }

  return result;
}

double sub_2421136F4()
{
  v2 = *v0;
  sub_2421131D8();
  if (!v1)
  {
    return v4;
  }

  return result;
}

float sub_242113740()
{
  v2 = *v0;
  sub_2421131D8();
  if (!v1)
  {
    return v4;
  }

  return result;
}

uint64_t sub_2421138D0()
{
  v2 = *v0;
  result = sub_2421131D8();
  if (!v1)
  {
    return v4;
  }

  return result;
}

uint64_t sub_24211393C()
{
  v2 = *v0;
  result = sub_2421131D8();
  if (!v1)
  {
    return v4;
  }

  return result;
}

uint64_t sub_2421139A8()
{
  v2 = *v0;
  result = sub_2421131D8();
  if (!v1)
  {
    return v4;
  }

  return result;
}

uint64_t sub_242113A14()
{
  v2 = *v0;
  result = sub_2421131D8();
  if (!v1)
  {
    return v4;
  }

  return result;
}

uint64_t sub_242113A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for LocalDatabase.SQLiteKeyedContainer();
  return a4(a1, v9, a3);
}

uint64_t sub_242113B04(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  type metadata accessor for LocalDatabase.SQLiteKeyedContainer();
  return sub_242128E80();
}

uint64_t sub_242113B58(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  type metadata accessor for LocalDatabase.SQLiteKeyedContainer();
  return sub_242128E70();
}

uint64_t sub_242113D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for LocalDatabase.SQLiteKeyedContainer();
  return a4(a1, v9, a3) & 0x1FF;
}

uint64_t sub_242113E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for LocalDatabase.SQLiteKeyedContainer();
  return a4(a1, v9, a3) & 0x1FFFF;
}

uint64_t sub_242113E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for LocalDatabase.SQLiteKeyedContainer();
  v10 = a4(a1, v9, a3);
  return v10 | ((HIDWORD(v10) & 1) << 32);
}

uint64_t sub_242113F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(a2 + 80);
  v8 = *(a2 + 88);
  v10 = type metadata accessor for LocalDatabase.SQLiteKeyedContainer();
  result = a4(a1, v10, a3);
  if (v4)
  {
    return v12;
  }

  return result;
}

uint64_t sub_242113FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(a2 + 80);
  v8 = *(a2 + 88);
  v10 = type metadata accessor for LocalDatabase.SQLiteKeyedContainer();
  result = a4(a1, v10, a3);
  if (v4)
  {
    return v12;
  }

  return result;
}

unint64_t sub_2421140F4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_242128EF0();
  sub_242128BF0();
  v6 = sub_242128F10();

  return sub_242114470(a1, a2, v6);
}

unint64_t sub_24211416C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_242128DF0();
  v5 = sub_242128BC0();

  return sub_242114528(a1, v5);
}

uint64_t sub_2421141D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80BD0, &qword_24212AB58);
  v38 = a2;
  result = sub_242128E20();
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
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_242128EF0();
      sub_242128BF0();
      result = sub_242128F10();
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
      *(*(v8 + 56) + 4 * v16) = v25;
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

unint64_t sub_242114470(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_242128E60())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_242114528(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_242128DF0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_242128BD0();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void *sub_2421146C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80BD0, &qword_24212AB58);
  v2 = *v0;
  v3 = sub_242128E10();
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
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

uint64_t sub_242114828()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80BD8, &qword_24212AB60) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80BE0, &qword_24212AB68);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = v13 - v7;
  result = sub_242128B80();
  if (!v0)
  {
    sub_242128B70();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80BE8, &qword_24212AB70);
    v11 = (*(*(v10 - 8) + 48))(v3, 1, v10);
    sub_2421156A8(v3);
    if (v11 == 1)
    {
      sub_242115030();
      swift_allocError();
      *v12 = 2;
      swift_willThrow();
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_242114A28@<X0>(sqlite3 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[6];
  return sub_24211291C(a1, v2[4], v2[5], v2[2], a2);
}

unint64_t sub_242114A50()
{
  result = qword_27EC80B18;
  if (!qword_27EC80B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC80B18);
  }

  return result;
}

uint64_t type metadata accessor for LocalDatabase()
{
  result = qword_27EC80B20;
  if (!qword_27EC80B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242114AF8()
{
  result = sub_242128B30();
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

uint64_t dispatch thunk of LocalDatabase.select<A>(all:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 160);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_242114D20;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t sub_242114D20(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t getEnumTagSinglePayload for LocalDatabase.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocalDatabase.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242115030()
{
  result = qword_27EC80BB0;
  if (!qword_27EC80BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC80BB0);
  }

  return result;
}

uint64_t sub_242115084(sqlite3_stmt *a1)
{
  v2 = sqlite3_column_count(a1);
  if (v2 < 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_242128EA0();
    __break(1u);
  }

  else
  {
    v3 = v2;
    if (v2)
    {
      v4 = 0;
      v5 = MEMORY[0x277D84F98];
      while (1)
      {
        if (!sqlite3_column_name(a1, v4))
        {
          goto LABEL_22;
        }

        v7 = sub_242128C10();
        v9 = v8;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = sub_2421140F4(v7, v9);
        v13 = v5[2];
        v14 = (v12 & 1) == 0;
        v15 = __OFADD__(v13, v14);
        v16 = v13 + v14;
        if (v15)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v17 = v12;
        if (v5[3] < v16)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_12;
        }

        v22 = v11;
        sub_2421146C0();
        v11 = v22;
        if (v17)
        {
LABEL_4:
          v6 = v11;

          *(v5[7] + 4 * v6) = v4;
          goto LABEL_5;
        }

LABEL_13:
        v5[(v11 >> 6) + 8] |= 1 << v11;
        v19 = (v5[6] + 16 * v11);
        *v19 = v7;
        v19[1] = v9;
        *(v5[7] + 4 * v11) = v4;
        v20 = v5[2];
        v15 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v15)
        {
          goto LABEL_20;
        }

        v5[2] = v21;
LABEL_5:
        if (v3 == ++v4)
        {
          return v5;
        }
      }

      sub_2421141D0(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_2421140F4(v7, v9);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_23;
      }

LABEL_12:
      if (v17)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242115234(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80BC0, &qword_24212AB48);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80BC8, &qword_24212AB50);
    v8 = sub_242128E30();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_242115628(v10, v6);
      result = sub_24211416C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_242128DF0();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_242115698(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_242115458(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_242115510(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_242115458(a1, &a1[a2]);
  }

  v3 = sub_242128AF0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_242128AE0();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_242128B40();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_2421155C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  return sub_242112EE0(*(v0 + 24), *(v0 + 32));
}

uint64_t sub_2421155E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_242115628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80BC0, &qword_24212AB48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_242115698(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2421156A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80BD8, &qword_24212AB60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OS_dispatch_queue.bf_async<A>(execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_242115780, 0, 0);
}

uint64_t sub_242115780()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_242115870;
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000012, 0x800000024212AF90, sub_242115D88, v1, v5);
}

uint64_t sub_242115870()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2421159AC, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2421159AC()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_242115A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a3;
  v29 = a4;
  v33 = a2;
  v7 = sub_242128B90();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_242128BB0();
  v30 = *(v11 - 8);
  v31 = v11;
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  v15 = sub_242128CD0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20]();
  v19 = &v27 - v18;
  (*(v16 + 16))(&v27 - v18, a1, v15);
  v20 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v21 = (v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  (*(v16 + 32))(v22 + v20, v19, v15);
  v23 = (v22 + v21);
  v24 = v29;
  *v23 = v28;
  v23[1] = v24;
  aBlock[4] = sub_242115EA8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2421124E4;
  aBlock[3] = &block_descriptor_0;
  v25 = _Block_copy(aBlock);

  sub_242128BA0();
  v34 = MEMORY[0x277D84F90];
  sub_242115F84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80B08, &unk_24212A7A8);
  sub_242115FDC();
  sub_242128DD0();
  MEMORY[0x245D07730](0, v14, v10, v25);
  _Block_release(v25);
  (*(v32 + 8))(v10, v7);
  (*(v30 + 8))(v14, v31);
}

uint64_t sub_242115D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 - 8) + 64);
  v5 = MEMORY[0x28223BE20]();
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  sub_242128CD0();
  return sub_242128CC0();
}

uint64_t sub_242115EA8()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  v2 = *(sub_242128CD0() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_242115D94(v0 + v3, v5, v6, v1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_242115F84()
{
  result = qword_27EC80B00;
  if (!qword_27EC80B00)
  {
    sub_242128B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC80B00);
  }

  return result;
}

unint64_t sub_242115FDC()
{
  result = qword_27EC80B10;
  if (!qword_27EC80B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80B08, &unk_24212A7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC80B10);
  }

  return result;
}

uint64_t CKDatabase.bf_performQuery(recordType:predicate:sortDescriptors:desiredKeys:resultsLimit:zone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 96) = a8;
  *(v9 + 104) = v8;
  *(v9 + 160) = a7;
  *(v9 + 80) = a5;
  *(v9 + 88) = a6;
  *(v9 + 64) = a3;
  *(v9 + 72) = a4;
  *(v9 + 48) = a1;
  *(v9 + 56) = a2;
  return MEMORY[0x2822009F8](sub_242116070, 0, 0);
}

uint64_t sub_242116070()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_2421166B0(0, &qword_27EC80BF8, 0x277CBC578);

  v5 = v2;
  v6 = sub_242128DB0();
  *(v0 + 112) = v6;
  if (v1)
  {
    v7 = *(v0 + 72);
    sub_2421166B0(0, &qword_27EC80C08, 0x277CCAC98);
    v8 = sub_242128C40();
    [v6 setSortDescriptors_];
  }

  v9 = *(v0 + 80);
  v10 = [objc_allocWithZone(MEMORY[0x277CBC590]) initWithQuery_];
  *(v0 + 120) = v10;
  if (v9)
  {
    v11 = *(v0 + 80);

    sub_242128D10();
  }

  if ((*(v0 + 160) & 1) == 0)
  {
    [v10 setResultsLimit_];
  }

  v12 = *(v0 + 96);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 zoneID];
    [v10 setZoneID_];
  }

  v15 = *(v0 + 104);
  v16 = swift_allocObject();
  *(v0 + 128) = v16;
  *(v16 + 16) = MEMORY[0x277D84F90];
  v17 = swift_task_alloc();
  *(v0 + 136) = v17;
  v17[2] = v10;
  v17[3] = v16;
  v17[4] = v15;
  v18 = *(MEMORY[0x277D85A40] + 4);
  v19 = swift_task_alloc();
  *(v0 + 144) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80C00, &qword_24212AB98);
  *v19 = v0;
  v19[1] = sub_2421162D8;

  return MEMORY[0x2822008A0](v0 + 40, 0, 0, 0xD000000000000054, 0x800000024212AFB0, sub_2421166A4, v17, v20);
}

uint64_t sub_2421162D8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_242116498;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_242116400;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_242116400()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  swift_beginAccess();
  v3 = *(v2 + 16);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_242116498()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);

  v4 = *(v0 + 8);
  v5 = *(v0 + 152);

  return v4();
}

id sub_24211651C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EC80C10, &unk_24212ABA0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_242128D20();

  sub_242128D30();
  return [a4 addOperation_];
}

uint64_t sub_2421166B0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2421166F8(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EC80C10, &unk_24212ABA0);
    return sub_242128CB0();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EC80C10, &unk_24212ABA0);
    return sub_242128CC0();
  }
}

uint64_t sub_242116778(void *a1, char a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27EC80C10, &unk_24212ABA0) - 8) + 80);

  return sub_2421166F8(a1, a2 & 1);
}

uint64_t sub_242116804(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    swift_beginAccess();
    v6 = a2;
    MEMORY[0x245D075F0]();
    if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v8 = *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_242128C50();
    }

    sub_242128C70();
    return swift_endAccess();
  }

  return result;
}

uint64_t static DictionarySerialization.encode(_:)()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v1 = sub_242128AD0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_242128AC0();
  v4 = sub_242128AB0();
  v6 = v5;

  if (!v0)
  {
    v8 = objc_opt_self();
    v9 = sub_242128B50();
    sub_242116A28(v4, v6);
    v14[0] = 0;
    v10 = [v8 JSONObjectWithData:v9 options:0 error:v14];

    v11 = v14[0];
    if (v10)
    {
      sub_242128DC0();
      result = swift_unknownObjectRelease();
    }

    else
    {
      v12 = v11;
      sub_242128B00();

      result = swift_willThrow();
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_242116A28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t static DictionarySerialization.decode(_:from:)(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = sub_242128AA0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_242128A90();
  v6 = objc_opt_self();
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v15[0] = 0;
  v7 = [v6 dataWithJSONObject:sub_242128E50() options:0 error:v15];
  swift_unknownObjectRelease();
  v8 = v15[0];
  if (v7)
  {
    v9 = sub_242128B60();
    v11 = v10;

    sub_242128A80();

    result = sub_242116A28(v9, v11);
  }

  else
  {
    v13 = v8;

    sub_242128B00();

    result = swift_willThrow();
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_242116C4C(unsigned int *a1, int a2)
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

_WORD *sub_242116C9C(_WORD *result, int a2, int a3)
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

uint64_t AsyncMutex.__allocating_init(label:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AsyncMutex.init(label:)(a1, a2);
  return v4;
}

uint64_t AsyncMutex.init(label:)(uint64_t a1, uint64_t a2)
{
  v11[1] = a1;
  v11[2] = a2;
  v3 = sub_242128D60();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_242128D50() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = *(*(sub_242128BB0() - 8) + 64);
  MEMORY[0x28223BE20]();
  *(v2 + 24) = dispatch_group_create();
  sub_242116F84();
  sub_242128BA0();
  v11[3] = MEMORY[0x277D84F90];
  sub_242116FD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80CA8, &unk_24212ABE0);
  sub_242117028();
  sub_242128DD0();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v3);
  *(v2 + 16) = sub_242128D80();
  return v2;
}

unint64_t sub_242116F84()
{
  result = qword_27EC80C98;
  if (!qword_27EC80C98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC80C98);
  }

  return result;
}

unint64_t sub_242116FD0()
{
  result = qword_27EC80CA0;
  if (!qword_27EC80CA0)
  {
    sub_242128D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC80CA0);
  }

  return result;
}

unint64_t sub_242117028()
{
  result = qword_27EC80CB0;
  if (!qword_27EC80CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80CA8, &unk_24212ABE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC80CB0);
  }

  return result;
}

uint64_t sub_24211708C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2421170B4, 0, 0);
}

uint64_t sub_2421170B4()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_24211715C;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return OS_dispatch_group.bf_notify<A>(queue:execute:)(v7, v2, v8, v5, v6);
}

uint64_t sub_24211715C()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t AsyncMutex.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t dispatch thunk of AsyncMutex.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 104);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_24211744C;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_24211744C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t OS_dispatch_group.bf_notify<A>(queue:execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_242117568, 0, 0);
}

uint64_t sub_242117568()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 48);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_242117668;
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000019, 0x800000024212B050, sub_242117B94, v2, v6);
}

uint64_t sub_242117668()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2421177A4, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2421177A4()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_242117808(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a4;
  v31 = a5;
  v35 = a3;
  v29 = a2;
  v8 = sub_242128B90();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_242128BB0();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  v16 = sub_242128CD0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20]();
  v20 = &v29 - v19;
  (*(v17 + 16))(&v29 - v19, a1, v16);
  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = (v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = a6;
  v24 = v29;
  *(v23 + 24) = v29;
  (*(v17 + 32))(v23 + v21, v20, v16);
  v25 = (v23 + v22);
  v26 = v31;
  *v25 = v30;
  v25[1] = v26;
  aBlock[4] = sub_242117DE4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2421124E4;
  aBlock[3] = &block_descriptor_1;
  v27 = _Block_copy(aBlock);
  v24;

  sub_242128BA0();
  v36 = MEMORY[0x277D84F90];
  sub_242115F84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80B08, &unk_24212A7A8);
  sub_242115FDC();
  sub_242128DD0();
  sub_242128D40();
  _Block_release(v27);
  (*(v34 + 8))(v11, v8);
  (*(v32 + 8))(v15, v33);
}

uint64_t sub_242117BA4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  v9 = sub_242128CD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v23 - v12;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80CB8, &qword_24212AC30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v16 = &v23 - v15;
  dispatch_group_enter(a1);
  v17 = sub_242128CF0();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v13, a2, v9);
  v18 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a5;
  *(v19 + 5) = a1;
  (*(v10 + 32))(&v19[v18], v13, v9);
  v20 = &v19[(v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v20 = v24;
  *(v20 + 1) = a4;
  v21 = a1;

  sub_24211825C(0, 0, v16, &unk_24212AC40, v19);
}

uint64_t sub_242117DE4()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  v2 = *(sub_242128CD0() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_242117BA4(v4, v0 + v3, v6, v7, v1);
}

uint64_t sub_242117EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a5;
  v8[5] = a8;
  v8[3] = a4;
  v10 = *(*(a8 - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v8[6] = v11;
  v15 = (a6 + *a6);
  v12 = a6[1];
  v13 = swift_task_alloc();
  v8[7] = v13;
  *v13 = v8;
  v13[1] = sub_242117FD8;

  return v15(v11);
}

uint64_t sub_242117FD8()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_2421181A0;
  }

  else
  {
    v3 = sub_2421180EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2421180EC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  sub_242128CD0();
  sub_242128CC0();
  v4 = *(v0 + 48);
  dispatch_group_leave(*(v0 + 24));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2421181A0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  sub_242128CD0();
  sub_242128CB0();
  v3 = *(v0 + 48);
  dispatch_group_leave(*(v0 + 24));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24211825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80CB8, &qword_24212AC30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_2421186A4(a3, v26 - v10);
  v12 = sub_242128CF0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_242118714(v11);
  }

  else
  {
    sub_242128CE0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_242128CA0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_242128BE0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_242118714(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_242118714(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_242118534(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC80BF0, &qword_24212AB88);
  v6 = *(sub_242128CD0() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v11 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24211744C;

  return sub_242117EAC(a1, v8, v9, v10, v1 + v7, v12, v13, v5);
}

uint64_t sub_2421186A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80CB8, &qword_24212AC30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242118714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC80CB8, &qword_24212AC30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24211877C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_242118874;

  return v7(a1);
}

uint64_t sub_242118874()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24211896C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_242118ADC;

  return sub_24211877C(a1, v5);
}

uint64_t sub_242118A24(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24211744C;

  return sub_24211877C(a1, v5);
}

id StringByTrimming(void *a1)
{
  v1 = qword_281346958;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_281346958, &__block_literal_global);
  }

  v3 = [v2 stringByTrimmingCharactersInSet:qword_281346960];

  return v3;
}

void __StringByTrimming_block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] characterSetWithCharactersInString:0x285461648];
  v1 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  [v0 formUnionWithCharacterSet:v1];

  v2 = qword_281346960;
  qword_281346960 = v0;
}

BOOL isNan(void *a1)
{
  v1 = qword_2813469F0;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_2813469F0, &__block_literal_global_825);
  }

  v3 = [v2 rangeOfCharacterFromSet:qword_2813469F8];

  return v3 != 0x7FFFFFFFFFFFFFFFLL;
}

void __isNan_block_invoke()
{
  v2 = [MEMORY[0x277CCAB50] decimalDigitCharacterSet];
  v0 = [v2 invertedSet];
  v1 = qword_2813469F8;
  qword_2813469F8 = v0;
}