unint64_t sub_24415C66C()
{
  result = qword_280FA89E8;
  if (!qword_280FA89E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA89E8);
  }

  return result;
}

unint64_t sub_24415C6C4()
{
  result = qword_280FA89D0;
  if (!qword_280FA89D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA89D0);
  }

  return result;
}

unint64_t sub_24415C71C()
{
  result = qword_280FA89D8;
  if (!qword_280FA89D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA89D8);
  }

  return result;
}

unint64_t sub_24415C774()
{
  result = qword_280FA89E0;
  if (!qword_280FA89E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA89E0);
  }

  return result;
}

uint64_t sub_24415C7CC()
{
  v0 = sub_24415E8CC();
  __swift_allocate_value_buffer(v0, qword_27EDD4EB8);
  __swift_project_value_buffer(v0, qword_27EDD4EB8);
  return sub_24415E8BC();
}

void Logger.ifError(_:message:)(void *a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD4E38, &qword_24415EE68);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_24415EE50;
    swift_getErrorValue();
    MEMORY[0x245D593A0](a1);
    v3 = sub_24415EABC();
    v5 = v4;
    *(v2 + 56) = MEMORY[0x277D837D0];
    *(v2 + 64) = sub_24415CA50();
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    v6 = sub_24415EA1C();
    v8 = v7;
    v9 = sub_24415E8AC();
    v10 = sub_24415EA5C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      v13 = sub_24415CBE0(v6, v8, &v14);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_24415B000, v9, v10, "%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x245D59480](v12, -1, -1);
      MEMORY[0x245D59480](v11, -1, -1);
    }

    else
    {
    }
  }
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

unint64_t sub_24415CA50()
{
  result = qword_27EDD4E40;
  if (!qword_27EDD4E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD4E40);
  }

  return result;
}

void Logger.ifErrorElse(_:message:debug:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1)
  {

    Logger.ifError(_:message:)(a1);
  }

  else
  {

    oslog = sub_24415E8AC();
    v7 = sub_24415EA4C();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_24415CBE0(a4, a5, &v11);
      _os_log_impl(&dword_24415B000, oslog, v7, "%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x245D59480](v9, -1, -1);
      MEMORY[0x245D59480](v8, -1, -1);
    }
  }
}

uint64_t sub_24415CBE0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24415CCAC(v11, 0, 0, 1, a1, a2);
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
    sub_24415D270(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24415CCAC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24415CDB8(a5, a6);
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
    result = sub_24415EA7C();
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

uint64_t sub_24415CDB8(uint64_t a1, unint64_t a2)
{
  v4 = sub_24415CE04(a1, a2);
  sub_24415CF34(&unk_2857888E0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24415CE04(uint64_t a1, unint64_t a2)
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

  v6 = sub_24415D020(v5, 0);
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

  result = sub_24415EA7C();
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
        v10 = sub_24415EA2C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24415D020(v10, 0);
        result = sub_24415EA6C();
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

uint64_t sub_24415CF34(uint64_t result)
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

  result = sub_24415D094(result, v12, 1, v3);
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

void *sub_24415D020(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD4E48, &qword_24415EE70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24415D094(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD4E48, &qword_24415EE70);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
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

uint64_t sub_24415D270(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24415D2D0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v1 = sub_24415EA0C();
  v2 = [v0 initWithPath_];

  if (v2)
  {
    v3 = sub_24415EA0C();
    v4 = [v2 classNamed_];

    if (v4)
    {
      swift_getObjCClassMetadata();
      v5 = &unk_2857890A8;
      class_addProtocol(v4, v5);

      return swift_dynamicCastTypeToObjCProtocolConditional();
    }
  }

  if (qword_27EDD4E30 != -1)
  {
    swift_once();
  }

  v7 = sub_24415E8CC();
  __swift_project_value_buffer(v7, qword_27EDD4EB8);
  v8 = sub_24415E8AC();
  v9 = sub_24415EA3C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24415B000, v8, v9, "AVTContactsWidgetCoordinator not available", v10, 2u);
    MEMORY[0x245D59480](v10, -1, -1);
  }

  return 0;
}

id sub_24415D4A0()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CF04F8]) init];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor_];

  if (sub_24415D2D0())
  {
    [objc_msgSend(objc_allocWithZone(swift_getObjCClassFromMetadata()) init)];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27EDD4E30 != -1)
    {
      swift_once();
    }

    v6 = sub_24415E8CC();
    __swift_project_value_buffer(v6, qword_27EDD4EB8);
    v7 = sub_24415E8AC();
    v8 = sub_24415EA5C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24415B000, v7, v8, "No class found for AVTContactsWidgetCoordinator", v9, 2u);
      MEMORY[0x245D59480](v9, -1, -1);
    }
  }

  return v4;
}

unint64_t sub_24415D664()
{
  result = qword_27EDD4E50;
  if (!qword_27EDD4E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD4E50);
  }

  return result;
}

uint64_t sub_24415D750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24415D8FC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24415D7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24415D8FC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24415D834()
{
  sub_24415D8FC();
  sub_24415E9BC();
  __break(1u);
}

uint64_t sub_24415D868(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_24415D8B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24415D8FC()
{
  result = qword_27EDD4E58;
  if (!qword_27EDD4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD4E58);
  }

  return result;
}

id sub_24415D950()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24415E774();
  sub_24415DF60(v1, v2);
  v3 = sub_24415E7C0();
  sub_24415E05C(v1, v2);
  return v3;
}

uint64_t MemojiArchivableView.init(memojiDescriptorData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MemojiArchivableView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  sub_24415D950();
  sub_24415D664();
  result = sub_24415E9EC();
  *a1 = v4;
  *(a1 + 8) = BYTE8(v4);
  return result;
}

uint64_t sub_24415DBCC()
{
  sub_24415EACC();
  MEMORY[0x245D591B0](0);
  return sub_24415EAEC();
}

uint64_t sub_24415DC38()
{
  sub_24415EACC();
  MEMORY[0x245D591B0](0);
  return sub_24415EAEC();
}

uint64_t sub_24415DC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000024415F570 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24415EAAC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24415DD40(uint64_t a1)
{
  v2 = sub_24415DFB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24415DD7C(uint64_t a1)
{
  v2 = sub_24415DFB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MemojiArchivableView.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD4E60, &qword_24415EFC0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24415DF60(v8, v9);
  sub_24415DFB4();
  sub_24415EB0C();
  v12 = v8;
  v13 = v9;
  sub_24415E008();
  sub_24415EA9C();
  sub_24415E05C(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24415DF60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_24415DFB4()
{
  result = qword_27EDD4E68;
  if (!qword_27EDD4E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD4E68);
  }

  return result;
}

unint64_t sub_24415E008()
{
  result = qword_27EDD4E70;
  if (!qword_27EDD4E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD4E70);
  }

  return result;
}

uint64_t sub_24415E05C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t MemojiArchivableView.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDD4E78, &qword_24415EFC8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24415DFB4();
  sub_24415EAFC();
  if (!v2)
  {
    sub_24415E220();
    sub_24415EA8C();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_24415E220()
{
  result = qword_27EDD4E80;
  if (!qword_27EDD4E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD4E80);
  }

  return result;
}

uint64_t sub_24415E2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24415C66C();

  return MEMORY[0x28212D9A8](a1, a2, a3, v6);
}

uint64_t sub_24415E328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24415C66C();

  return MEMORY[0x28212D9B0](a1, a2, a3, v6);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24415E3FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24415E450(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_24415E4AC()
{
  result = qword_27EDD4E88;
  if (!qword_27EDD4E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDD4E90, &qword_24415F158);
    sub_24415D664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD4E88);
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

uint64_t getEnumTagSinglePayload for MemojiArchivableView.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MemojiArchivableView.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_24415E670()
{
  result = qword_27EDD4E98;
  if (!qword_27EDD4E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD4E98);
  }

  return result;
}

unint64_t sub_24415E6C8()
{
  result = qword_27EDD4EA0;
  if (!qword_27EDD4EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD4EA0);
  }

  return result;
}

unint64_t sub_24415E720()
{
  result = qword_27EDD4EA8;
  if (!qword_27EDD4EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDD4EA8);
  }

  return result;
}

unint64_t sub_24415E774()
{
  result = qword_27EDD4EB0;
  if (!qword_27EDD4EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDD4EB0);
  }

  return result;
}

id sub_24415E7C0()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = sub_24415E89C();
  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() descriptorWithDataRepresentation:v0 error:v6];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_24415E88C();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}