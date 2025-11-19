BOOL sub_1C5C8F0A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C60179F0();
  sub_1C60169F0();
  v8 = sub_1C6017A20();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_1C6017860() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_1C5C8D8D8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_1C5C8F1F0()
{
  v1 = v0;
  v2 = *v0;
  sub_1C5C8FE04(0, &qword_1EC1A89C0);
  result = sub_1C60174F0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_1C60179F0();

        sub_1C60169F0();
        result = sub_1C6017A20();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

void sub_1C5C8F534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_110()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45_3()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_45_4()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_45_6()
{

  return swift_unknownObjectRetain();
}

void OUTLINED_FUNCTION_45_7()
{

  JUMPOUT(0x1C69534E0);
}

void OUTLINED_FUNCTION_45_9(uint64_t a1, void *a2)
{

  sub_1C5E00B08(0, a2);
}

uint64_t sub_1C5C8F8BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

_OWORD *OUTLINED_FUNCTION_87_1()
{
  v4 = (*(v1 + 56) + 32 * v0);

  return sub_1C5C70758(v4, (v2 - 176));
}

uint64_t OUTLINED_FUNCTION_87_2()
{

  return sub_1C6017660();
}

void OUTLINED_FUNCTION_87_3()
{
  v2 = *(v0 + 384);
}

BOOL OUTLINED_FUNCTION_127()
{
  *(v0 + 208) = v1;

  return os_log_type_enabled(v2, v1);
}

void sub_1C5C8F9EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E6158], a3, MEMORY[0x1E69E6168]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_68_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_44_1()
{

  return sub_1C60176E0();
}

void *OUTLINED_FUNCTION_44_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = 0;
  v10[1] = 0;
  v11[228] = a9;
  v11[229] = a10;
  sub_1C5D3DD34(v10);

  return memcpy(v11 + 114, v10, 0xD9uLL);
}

void OUTLINED_FUNCTION_44_7()
{
}

id OUTLINED_FUNCTION_44_10()
{

  return sub_1C5DD9388(v0, v1);
}

uint64_t OUTLINED_FUNCTION_44_11()
{
}

unint64_t OUTLINED_FUNCTION_139_0()
{

  return sub_1C5CB5808();
}

uint64_t OUTLINED_FUNCTION_35_2()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_35_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void *OUTLINED_FUNCTION_35_4()
{
  v2 = v0[2] + 1;

  return sub_1C5D0DEE4(0, v2, 1, v0);
}

unint64_t OUTLINED_FUNCTION_35_5()
{
  v2 = v1[20];
  v1[17] = *v0;
  v1[18] = v2;
  return 0xD000000000000019;
}

void OUTLINED_FUNCTION_35_9()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_35_10()
{
}

uint64_t OUTLINED_FUNCTION_35_18(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_1C6016880();
}

unint64_t sub_1C5C8FDB0()
{
  result = qword_1ED7DC290;
  if (!qword_1ED7DC290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7DC290);
  }

  return result;
}

void sub_1C5C8FE04(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C6017520();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_154_0()
{
}

void OUTLINED_FUNCTION_117_0()
{

  JUMPOUT(0x1C69534E0);
}

unint64_t OUTLINED_FUNCTION_117_1(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1C5C6AB10(v3, v4, a3);
}

uint64_t sub_1C5C8FEE4(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1C6017440();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_1C5C8FF08()
{
  if (!qword_1EC1A89C0)
  {
    v0 = sub_1C6017520();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A89C0);
    }
  }
}

uint64_t sub_1C5C906A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  return sub_1C5CB5698(a1, v4);
}

uint64_t sub_1C5C90860(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1C5C9088C(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1C5C9094C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5CB82B0();
  *a1 = result;
  return result;
}

void *sub_1C5C909BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C5C909CC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_27_1(a1);
  result = sub_1C5C90884(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1C5C90A4C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_27_1(a1);
  result = sub_1C5C908A4(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1C5C90AD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C5CAC450(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C5C90C6C()
{
  _Block_release(*(v0 + 24));

  OUTLINED_FUNCTION_178();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C90CE8()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C90D1C()
{
  sub_1C6014F20();
  OUTLINED_FUNCTION_105();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C5C90D9C()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C9127C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C912C4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C5C9130C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C91354()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C9138C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C913D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C91430()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C91470()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 104);
  if (v1 != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1C5C91528()
{
  v1 = sub_1C6015020();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  v5 = *(v0 + 56);
  if (v5 != 1)
  {
  }

  v6 = (v3 + 144) & ~v3;

  (*(v2 + 8))(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v4, v3 | 7);
}

uint64_t sub_1C5C91650()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C91688()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C9172C()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_52_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C91768()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C9179C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C917DC()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_52_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C91828()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C5C91884(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_0_12(a1, &qword_1EC1AAAA0);
    v9 = v8;
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_1C5C91910(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_0_12(result, &qword_1EC1AAAA0);
    v8 = v7;
    v9 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v9, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1C5C91994()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C5C919D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C91A0C()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C91A40()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C91AEC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C5C91B34()
{
  v1 = sub_1C6015BF0();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C5C91BFC()
{
  MEMORY[0x1C6956A70](v0 + 16);
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C91C30()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  OUTLINED_FUNCTION_178();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C91C74()
{
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C91CD0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C91D20()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C91D60()
{
  OUTLINED_FUNCTION_0_17();
  result = sub_1C6015600();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C5C91D88()
{
  OUTLINED_FUNCTION_0_17();
  result = sub_1C60155E0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C5C91DB0()
{
  OUTLINED_FUNCTION_0_17();
  result = sub_1C60155B0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C5C91DD8()
{
  OUTLINED_FUNCTION_0_17();
  result = sub_1C60155F0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C5C91E00()
{
  OUTLINED_FUNCTION_0_17();
  result = sub_1C60155A0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C5C91E28()
{
  OUTLINED_FUNCTION_0_17();
  result = sub_1C6015580();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C5C91E50()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C91EC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    OUTLINED_FUNCTION_0_19();
    sub_1C5D0A178(0, v8, v9, MEMORY[0x1E69E6720]);
    v11 = v10;
    v12 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v12, a2, v11);
  }
}

uint64_t sub_1C5C91F68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_0_19();
    sub_1C5D0A178(0, v7, v8, MEMORY[0x1E69E6720]);
    v10 = v9;
    v11 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1C5C92030@<X0>(_BYTE *a1@<X8>)
{
  result = PodcastsDefaultsHelper.playbackRateMigrationAttempted.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C5C920F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5D129A8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C5C92148@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5D12AC0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C5C92290()
{
  MEMORY[0x1C6956A70](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C922CC()
{
  sub_1C60158F0();
  OUTLINED_FUNCTION_25();
  v3 = (((*(v2 + 64) + ((*(v1 + 80) + 24) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v4 = OUTLINED_FUNCTION_55_1();
  v5(v4);

  v6 = OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6BDD0](v6, v7, v8);
}

uint64_t sub_1C5C923B0()
{
  OUTLINED_FUNCTION_70_0();
  result = sub_1C5D15C64();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C5C92404()
{
  OUTLINED_FUNCTION_70_0();
  result = sub_1C5D15D84();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C5C92458()
{
  OUTLINED_FUNCTION_70_0();
  result = sub_1C5D15EC8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C5C92484()
{
  OUTLINED_FUNCTION_70_0();
  result = sub_1C5D160A0();
  *v0 = result;
  return result;
}

uint64_t sub_1C5C924B0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C924F0()
{
  sub_1C60158F0();
  OUTLINED_FUNCTION_105();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1C5C92598()
{
  sub_1C60158F0();
  OUTLINED_FUNCTION_25();

  v1 = OUTLINED_FUNCTION_55_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1C5C92654()
{
  v1 = sub_1C60158F0();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v4 + v5) & ~v4;

  v8 = *(v3 + 8);
  v8(v0 + v5, v1);
  v8(v0 + v7, v1);
  v9 = OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

uint64_t sub_1C5C92738()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C9279C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5D2AFC8();
  *a1 = result;
  return result;
}

uint64_t sub_1C5C927D0()
{
  MEMORY[0x1C6956A70](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C92808()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C5C92880()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C5C928DC()
{
  sub_1C5D3A084();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C5C92964()
{
  sub_1C5D3A084();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

BOOL sub_1C5C92A38(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1C5C92A74()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C92AAC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C92B0C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C5C92B54()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C92B9C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 42, 7);
}

uint64_t sub_1C5C92BE4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C5C92C3C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C92C80()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C92CBC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C92D44()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C92D78()
{
  MEMORY[0x1C6956A70](v0 + 16);
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C92DAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C92DE4()
{

  v1 = *(v0 + 24);
  if (v1 >= 0xA)
  {
  }

  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {
  }

  v2 = OUTLINED_FUNCTION_54_4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C5C92E3C()
{

  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {
  }

  v1 = OUTLINED_FUNCTION_54_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C92E8C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C92EF4()
{

  v1 = OUTLINED_FUNCTION_53_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C92F34()
{
  if (*(v0 + 32))
  {
  }

  v1 = OUTLINED_FUNCTION_53_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C92F74()
{

  swift_unknownObjectRelease();

  sub_1C5D5D350(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1C5C9308C()
{

  sub_1C5D5D350(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1C5C93108()
{
  if (*(v0 + 16))
  {
  }

  v1 = OUTLINED_FUNCTION_54_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C93150()
{

  v0 = OUTLINED_FUNCTION_53_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C93190()
{
  sub_1C5D5D900();
  v2 = v1;
  OUTLINED_FUNCTION_25();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 24) & ~v5;
  v8 = *(v7 + 64);

  (*(v4 + 8))(v0 + v6, v2);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v8, v5 | 7);
}

uint64_t get_enum_tag_for_layout_string_17MediaPlaybackCore11PauseReasonO_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_1C5C93610@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isExternalContent];
  *a2 = result;
  return result;
}

id sub_1C5C936D8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) isVideoContent];
  *v1 = result;
  return result;
}

id sub_1C5C9379C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) prefersSeekOverSkip];
  *v1 = result;
  return result;
}

id sub_1C5C937E0(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) transitionPlaybackEndStateSourceTime];
  *v1 = v3;
  return result;
}

id sub_1C5C93824(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) transitionPlaybackEndStateTargetTime];
  *v1 = v3;
  return result;
}

uint64_t sub_1C5C93868()
{
  _Block_release(*(v0 + 16));

  v1 = OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C938A0()
{
  MEMORY[0x1C6956A70](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C938D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C93914()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C9394C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C93984()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C939C0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C939F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C93A30()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C93A6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C93AF8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C93B30()
{

  OUTLINED_FUNCTION_178();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

id sub_1C5C93B98(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) isPlaybackBufferEmpty];
  *v1 = result;
  return result;
}

id sub_1C5C93BC8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) isPlaybackBufferFull];
  *v1 = result;
  return result;
}

id sub_1C5C93BF8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) isPlaybackLikelyToKeepUp];
  *v1 = result;
  return result;
}

id sub_1C5C93C5C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) volume];
  *v1 = v3;
  return result;
}

id sub_1C5C93CA0(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) timeControlStatus];
  *v1 = result;
  return result;
}

id sub_1C5C93CD0(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) rate];
  *v1 = v3;
  return result;
}

id sub_1C5C93D14(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) status];
  *v1 = result;
  return result;
}

uint64_t sub_1C5C93D44()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C93D8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C9414C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C94184()
{

  sub_1C5D5D350(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1C5C945F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C94630()
{
  v1 = sub_1C60149E0();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C5C946F0()
{
  v1 = sub_1C6014AE0();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1C5C94814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24_16();
  v6 = sub_1C6014B20();
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
  }

  else
  {
    OUTLINED_FUNCTION_2_37();
    sub_1C5DB08EC(0, v9, v10, MEMORY[0x1E69E6720]);
    v7 = v11;
    v8 = v4 + *(a3 + 32);
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v7);
}

uint64_t sub_1C5C948C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_24_16();
  v8 = sub_1C6014B20();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v5;
  }

  else
  {
    OUTLINED_FUNCTION_2_37();
    sub_1C5DB08EC(0, v11, v12, MEMORY[0x1E69E6720]);
    v9 = v13;
    v10 = v5 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v9);
}

uint64_t sub_1C5C94984()
{
  OUTLINED_FUNCTION_24_16();
  v2 = sub_1C6014A60();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, v0, v2);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5C949C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1C6014A60();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_1C5C94A24()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C94A6C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  OUTLINED_FUNCTION_34_10();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C94AB0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C5C94AF8()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v0 + 48);
  OUTLINED_FUNCTION_34_10();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C94B3C()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C5C94B94()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (*(v0 + 128))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 104);
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1C5C94C4C()
{

  v1 = OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C94C84()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1C5C94CC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1C5C94CFC()
{

  v0 = OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C94D30()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C94D68()
{

  v0 = OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C94D98()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C5C94E20()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C94E58()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1C5C94EBC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C94EF4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C94F2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C5C950F4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C5C9512C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C95164()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1C5C951B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C5C951F8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C5C95240()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C95284(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_19_15(a1);
  v2 = PlayerState.init(rawValue:)(v1);
  return OUTLINED_FUNCTION_214(v2, v3);
}

uint64_t sub_1C5C952AC(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_19_15(a1);
  v2 = PlaybackBehaviorType.init(rawValue:)(v1);
  return OUTLINED_FUNCTION_214(v2, v3);
}

uint64_t sub_1C5C952D4(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_19_15(a1);
  v2 = ItemRequestReason.init(rawValue:)(v1);
  return OUTLINED_FUNCTION_214(v2, v3);
}

uint64_t sub_1C5C952FC(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_19_15(a1);
  v2 = ExternalPlaybackType.init(rawValue:)(v1);
  return OUTLINED_FUNCTION_214(v2, v3);
}

uint64_t sub_1C5C95488()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C954C4()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C954F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5DCB178();
  *a1 = result;
  return result;
}

id sub_1C5C95528@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1C5DCE440();
  *a1 = v3;
  return result;
}

id sub_1C5C9557C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5DCE570();
  *a1 = result & 1;
  return result;
}

id sub_1C5C955D4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) rate];
  *v1 = v3;
  return result;
}

id sub_1C5C95604(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) currentTime];
  *v1 = v3;
  return result;
}

id sub_1C5C95634(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_19_15(a1) currentState];
  *v1 = result;
  return result;
}

uint64_t sub_1C5C95668()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C956A0()
{
  MEMORY[0x1C6956A70](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C9579C()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C957D4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C95A34()
{

  sub_1C5D867AC(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88) | (*(v0 + 90) << 16));

  return MEMORY[0x1EEE6BDD0](v0, 91, 7);
}

uint64_t sub_1C5C95A98()
{
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C95AC8()
{
  swift_weakDestroy();
  v0 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C95AF8()
{

  v0 = OUTLINED_FUNCTION_15_23();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C95B34()
{
  v1 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C95B64()
{

  v1 = OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C95BCC()
{

  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_15_23();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C95C0C()
{
  MEMORY[0x1C6956A70](v0 + 16);
  v1 = OUTLINED_FUNCTION_22();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C95C40()
{

  v0 = OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C95C70()
{

  if (*(v0 + 24))
  {
  }

  v1 = OUTLINED_FUNCTION_15_23();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C95CFC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C95D34()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C95E20()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5C95F0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5C95EBC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C5C95F54()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1C5C95FE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C5C96050()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C9615C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C961A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C961E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5C96254()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_139_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C962A0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_139_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C962F0()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C5C96348()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  OUTLINED_FUNCTION_178();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C9638C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C5C963D4()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C5C9648C()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1C5C964D4()
{

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C5C96508@<X0>(uint64_t *a1@<X8>)
{
  result = PlaybackEngineSessionManager.lastSessionIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C5C96534()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C5C9657C(uint64_t a1)
{
  OUTLINED_FUNCTION_72_5(a1, qword_1EC1AC0A8, &unk_1EC1AC048, 0x1E69B09E8);
  OUTLINED_FUNCTION_105();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v1 + v4);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}

uint64_t sub_1C5C96610()
{
  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C9664C()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C96690()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C5C966D4()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C5C9671C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C9675C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5C96EA0()
{
  OUTLINED_FUNCTION_62_0();
  result = sub_1C5C90AD0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C5C96ED0()
{
  v0 = sub_1C60162D0();
  __swift_allocate_value_buffer(v0, qword_1EC1BE490);
  v1 = __swift_project_value_buffer(v0, qword_1EC1BE490);
  if (qword_1EC1A9798 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC1BE4E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1C5C96F98()
{
  if ([v0 isCompanion])
  {
    return 3;
  }

  if ([v0 isLocal])
  {
    return 2;
  }

  return 3;
}

uint64_t sub_1C5C96FE4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_227(0x6E55u);
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x65636F7250206E49;
      break;
    case 2:
      result = 0x6544206C61636F4CLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_152();
      break;
    default:
      OUTLINED_FUNCTION_332();

      OUTLINED_FUNCTION_11();
      v6 = v3;
      v4 = sub_1C60177D0();
      MEMORY[0x1C69534E0](v4);

      v5 = OUTLINED_FUNCTION_84();
      MEMORY[0x1C69534E0](v5);
      result = v6;
      break;
  }

  return result;
}

uint64_t sub_1C5C970F4(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      result = sub_1C60178A0();
      __break(1u);
      return result;
    }

    v1 = 0xE700000000000000;
    v2 = 0x64726177726F66;
  }

  else
  {
    v1 = 0xE800000000000000;
    v2 = 0x647261776B636162;
  }

  MEMORY[0x1C69534E0](v2, v1);
}

uint64_t sub_1C5C97190(uint64_t a1)
{
  v2 = 0xD000000000000013;
  if (a1)
  {
    if (a1 != 1)
    {
      result = sub_1C60178A0();
      __break(1u);
      return result;
    }

    v3 = ".globalPlaylist(";
    v2 = 0xD00000000000001DLL;
  }

  else
  {
    v3 = "Set Rate to Initiate Playback";
  }

  MEMORY[0x1C69534E0](v2, v3 | 0x8000000000000000);
}

uint64_t sub_1C5C9722C()
{
  OUTLINED_FUNCTION_315();
  sub_1C6014F20();
  OUTLINED_FUNCTION_1_0();
  sub_1C5CB8318(v0, v1);
  OUTLINED_FUNCTION_120();
  v2 = sub_1C60177D0();
  MEMORY[0x1C69534E0](v2);
}

uint64_t sub_1C5C972AC(char a1)
{
  v2 = 0xEC00000065756575;
  v3 = 0x7120666F20646E65;
  switch(a1)
  {
    case 1:
      v2 = 0xEC0000006E6F6974;
      v3 = 0x7075727265746E69;
      break;
    case 2:
      v2 = 0xEC00000065676E61;
      v3 = 0x6863206574756F72;
      break;
    case 3:
      v2 = 0xE700000000000000;
      v3 = OUTLINED_FUNCTION_227(0x6E75u);
      break;
    default:
      break;
  }

  MEMORY[0x1C69534E0](v3, v2);
}

void sub_1C5C97374()
{
  OUTLINED_FUNCTION_247();
  v2 = v1;
  v3 = sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_102();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_309();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_173();
  v65 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v64 - v11;
  v13 = sub_1C60167E0();
  OUTLINED_FUNCTION_25();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_146();
  (*(v15 + 104))(v18 - v17, *MEMORY[0x1E69D3960], v13);
  OUTLINED_FUNCTION_38_1();
  sub_1C5CB8318(v19, v20);
  v21 = sub_1C6015290();
  v22 = OUTLINED_FUNCTION_157();
  v23(v22);
  if (v21)
  {
    v64[1] = v5;
    v24 = *(v5 + 16);
    v24(v12, v2, v3);
    sub_1C5C97A5C(v12, v67);
    if (qword_1EC1A9730 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v45 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v45, qword_1EC1BE490);
    v24(v65, v2, v3);
    sub_1C5CB5698(v67, &v66);
    v46 = sub_1C60162B0();
    v47 = sub_1C6016F30();
    sub_1C5CB56D0(v67);
    if (os_log_type_enabled(v46, v47))
    {
      OUTLINED_FUNCTION_123();
      v48 = swift_slowAlloc();
      OUTLINED_FUNCTION_72();
      v66 = swift_slowAlloc();
      *v48 = 136446466;
      OUTLINED_FUNCTION_1_0();
      sub_1C5CB8318(v49, v50);
      sub_1C60177D0();
      v51 = OUTLINED_FUNCTION_142();
      v52(v51);
      v53 = OUTLINED_FUNCTION_157();
      v56 = sub_1C5C6AB10(v53, v54, v55);

      *(v48 + 4) = v56;
      *(v48 + 12) = 2082;
      sub_1C5CAE9DC();
      OUTLINED_FUNCTION_318();
      sub_1C5CB56D0(v67);
      v57 = OUTLINED_FUNCTION_255();
      sub_1C5C6AB10(v57, v58, v59);
      OUTLINED_FUNCTION_206();

      *(v48 + 14) = v56;
      _os_log_impl(&dword_1C5C61000, v46, v47, "[XSQ] supportsURL | supported [] url=%{public}s \ncontent=%{public}s", v48, 0x16u);
      OUTLINED_FUNCTION_160();
      swift_arrayDestroy();
      v60 = OUTLINED_FUNCTION_17();
      MEMORY[0x1C6956920](v60);
      v61 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x1C6956920](v61);
    }

    else
    {
      sub_1C5CB56D0(v67);

      v62 = OUTLINED_FUNCTION_142();
      v63(v62);
    }
  }

  else
  {
    if (qword_1EC1A9730 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v25 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v25, qword_1EC1BE490);
    v26 = v5;
    v27 = OUTLINED_FUNCTION_147();
    v28(v27);
    v29 = sub_1C60162B0();
    v30 = sub_1C6016F30();
    if (os_log_type_enabled(v29, v30))
    {
      OUTLINED_FUNCTION_68_1();
      v31 = swift_slowAlloc();
      OUTLINED_FUNCTION_64_0();
      v32 = swift_slowAlloc();
      v67[0] = v32;
      *v31 = 136446210;
      OUTLINED_FUNCTION_1_0();
      sub_1C5CB8318(v33, v34);
      sub_1C60177D0();
      (*(v26 + 8))(v0, v3);
      v35 = OUTLINED_FUNCTION_157();
      v38 = sub_1C5C6AB10(v35, v36, v37);

      *(v31 + 4) = v38;
      OUTLINED_FUNCTION_194();
      _os_log_impl(v39, v40, v41, v42, v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v43 = OUTLINED_FUNCTION_17();
      MEMORY[0x1C6956920](v43);
      v44 = OUTLINED_FUNCTION_19();
      MEMORY[0x1C6956920](v44);
    }

    else
    {

      (*(v26 + 8))(v0, v3);
    }
  }

  OUTLINED_FUNCTION_237();
}

void sub_1C5C97A5C(uint64_t a1@<X0>, NSObject **a2@<X8>)
{
  v5 = sub_1C6016990();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_146();
  v943 = v7 - v6;
  v8 = sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v1010 = v9;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = &v914 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v914 - v15;
  sub_1C6014EF0();
  v945 = a1;
  if (!v17)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_292();
  if (!v20)
  {

LABEL_10:
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_74();
    v946 = 100;
    v949 = sub_1C6017840();
    v950 = v55;
    OUTLINED_FUNCTION_21_1();
    v58 = v57 - 39;
LABEL_11:
    v59 = v56 | 0x8000000000000000;
LABEL_14:
    MEMORY[0x1C69534E0](v58, v59);
    OUTLINED_FUNCTION_1_0();
    sub_1C5CB8318(v61, v62);
LABEL_15:
    v63 = sub_1C60177D0();
    MEMORY[0x1C69534E0](v63);

LABEL_16:
    MEMORY[0x1C69534E0](0, 0xE000000000000000);
    sub_1C6016880();
    OUTLINED_FUNCTION_92();
    OUTLINED_FUNCTION_2_3();
    sub_1C5CB8318(v64, v65);
    OUTLINED_FUNCTION_26();
    sub_1C6017280();
    OUTLINED_FUNCTION_90();

LABEL_17:
    swift_willThrow();
    v66 = OUTLINED_FUNCTION_228();
    v67(v66, v8);
    return;
  }

  v939 = v18;
  v944 = v19;
  sub_1C6014ED0();
  if (!v21)
  {
LABEL_13:

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_74();
    v946 = 102;
    v949 = sub_1C6017840();
    v950 = v60;
    v58 = 0x20676E697373694DLL;
    v59 = 0xEE00203A74736F68;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_292();
  if (!v24)
  {

    goto LABEL_13;
  }

  v941 = v22;
  v942 = v8;
  v940 = v23;
  v932 = v2;
  v933 = a2;
  if (qword_1EC1A9730 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v25 = sub_1C60162D0();
  v26 = __swift_project_value_buffer(v25, qword_1EC1BE490);
  v27 = v1010;
  v28 = *(v1010 + 16);
  v29 = a1;
  v30 = v942;
  v28(v16, v29, v942);
  v31 = OUTLINED_FUNCTION_59_0();
  (v28)(v31);
  v32 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v33 = swift_allocObject();
  (*(v27 + 32))(v33 + v32, v16, v30);
  OUTLINED_FUNCTION_58();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1C5CB5DC4;
  *(v34 + 24) = v33;
  v935 = v33;

  v936 = v26;
  *&v938 = sub_1C60162B0();
  LODWORD(v27) = sub_1C6016F30();
  OUTLINED_FUNCTION_65_0();
  v35 = swift_allocObject();
  OUTLINED_FUNCTION_70(v35);
  OUTLINED_FUNCTION_65_0();
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_69(v36);
  OUTLINED_FUNCTION_58();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1C5CB5E34;
  *(v37 + 24) = v34;
  OUTLINED_FUNCTION_58();
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1C5CB5E44;
  *(v38 + 24) = v37;
  sub_1C5CB5F2C(0, &qword_1ED7DCAF8, sub_1C5CB5E54, MEMORY[0x1E69E6F90]);
  v937 = v39;
  v40 = swift_allocObject();
  v934 = xmmword_1C6031150;
  *(v40 + 16) = xmmword_1C6031150;
  *(v40 + 32) = sub_1C5CB5E3C;
  *(v40 + 40) = v35;
  *(v40 + 48) = sub_1C5CB8408;
  *(v40 + 56) = v36;
  *(v40 + 64) = sub_1C5CB5E4C;
  *(v40 + 72) = v38;
  swift_setDeallocating();

  sub_1C5D677CC();
  LODWORD(v931) = v27;
  if (os_log_type_enabled(v938, v27))
  {
    OUTLINED_FUNCTION_68_1();
    v41 = swift_slowAlloc();
    OUTLINED_FUNCTION_64_0();
    v930 = swift_slowAlloc();
    v949 = v930;
    OUTLINED_FUNCTION_13_0();

    *(v41 + 3) = 8;

    OUTLINED_FUNCTION_1_0();
    sub_1C5CB8318(v42, v43);
    v35 = v942;
    v44 = sub_1C60177D0();
    v46 = v45;
    v47 = sub_1C5C6AB10(v44, v45, &v949);

    *(v41 + 4) = v47;

    v48 = *(v1010 + 8);
    (v48)(v14, v35);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_190(v49, v50, v51, v52);
    __swift_destroy_boxed_opaque_existential_0(v930);
    v53 = OUTLINED_FUNCTION_22_0();
    MEMORY[0x1C6956920](v53);
    v54 = OUTLINED_FUNCTION_30_0();
    MEMORY[0x1C6956920](v54);
  }

  else
  {

    v48 = *(v1010 + 8);
    (v48)(v14, v942);
  }

  v68 = v939;
  v69 = v945;
  v70 = v939 == 0x2D616964656D2D78 && v944 == 0xEF7972617262696CLL;
  if (v70 || (OUTLINED_FUNCTION_153() & 1) != 0)
  {
    v71 = v941 == 0x62696C656C6F6877 && v940 == 0xEC00000079726172;
    if (v71 || (OUTLINED_FUNCTION_187() & 1) != 0)
    {
      v939 = v48;
      v72 = sub_1C6014E90();
      v73 = sub_1C5CD4534(v72);
      if (v74)
      {
        v75 = 18;
      }

      else
      {
        v75 = v73;
      }

      v951 = v75;
      v952 = 0;
      v953 = 0;
      v954 = 0;
      v955 = 0;
      OUTLINED_FUNCTION_107_0();
      v76 = swift_allocObject();
      v941 = v75;
      *(v76 + 16) = v75;
      *(v76 + 24) = 0;
      *(v76 + 32) = 0;
      *(v76 + 40) = 0;
      *(v76 + 48) = 0;
      OUTLINED_FUNCTION_58();
      v77 = swift_allocObject();
      OUTLINED_FUNCTION_264(v77);
      v943 = sub_1C60162B0();
      v78 = sub_1C6016F30();
      OUTLINED_FUNCTION_65_0();
      v79 = swift_allocObject();
      OUTLINED_FUNCTION_70(v79);
      OUTLINED_FUNCTION_65_0();
      v80 = swift_allocObject();
      OUTLINED_FUNCTION_69(v80);
      OUTLINED_FUNCTION_58();
      v81 = swift_allocObject();
      *(v81 + 16) = sub_1C5CB83DC;
      *(v81 + 24) = v77;
      OUTLINED_FUNCTION_58();
      v82 = swift_allocObject();
      v83 = OUTLINED_FUNCTION_57(v82);
      OUTLINED_FUNCTION_81(v83);
      v84[4] = sub_1C5CB8408;
      v84[5] = v79;
      v84[6] = sub_1C5CB8408;
      v84[7] = v80;
      v84[8] = sub_1C5CB837C;
      v84[9] = v82;
      swift_setDeallocating();

      sub_1C5D677CC();
      OUTLINED_FUNCTION_205();
      if (os_log_type_enabled(v943, v85))
      {
        OUTLINED_FUNCTION_68_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_45_1();
        v937 = swift_slowAlloc();
        v946 = v937;
        OUTLINED_FUNCTION_24_0();

        *(v78 + 3) = 8;

        OUTLINED_FUNCTION_4_0();
        v86 = sub_1C5CAF1A0();
        v88 = v87;
        MEMORY[0x1C69534E0](v86);

        OUTLINED_FUNCTION_75_0();
        OUTLINED_FUNCTION_82();
        OUTLINED_FUNCTION_118();

        *(v78 + 4) = v88;

        OUTLINED_FUNCTION_86_1();
        OUTLINED_FUNCTION_233(v89, v90, v91, v92);
        __swift_destroy_boxed_opaque_existential_0(v937);
        v93 = OUTLINED_FUNCTION_22_0();
        MEMORY[0x1C6956920](v93);
        v94 = OUTLINED_FUNCTION_16_1();
        MEMORY[0x1C6956920](v94);
      }

      else
      {
      }

      v95 = OUTLINED_FUNCTION_5_0();
      v96(v95);
      v97 = 0;
      OUTLINED_FUNCTION_177();
      v99 = 0;
      goto LABEL_36;
    }

    v121 = *(sub_1C6014E80() + 16);

    if (v121 == 3)
    {
      v122 = sub_1C6014E80();
      v123 = sub_1C5D3E1D0(1uLL, v122);

      v124 = sub_1C5CD4534(v123);
      v126 = v125;
      v127 = sub_1C6014E80();
      v128 = sub_1C5D3E1D0(2uLL, v127);

      v129 = sub_1C5CD4534(v128);
      LODWORD(v128) = v130;
      OUTLINED_FUNCTION_58();
      v131 = swift_allocObject();
      v132 = v940;
      *(v131 + 16) = v941;
      *(v131 + 24) = v132;
      v133 = v131;
      v931 = v131;
      OUTLINED_FUNCTION_221();
      v134 = swift_allocObject();
      v919 = v124;
      *(v134 + 16) = v124;
      v923 = v126;
      *(v134 + 24) = v126 & 1;
      v135 = v134;
      v928 = v134;
      OUTLINED_FUNCTION_221();
      v136 = swift_allocObject();
      v943 = v129;
      *(v136 + 16) = v129;
      v918 = v128;
      *(v136 + 24) = v128 & 1;
      v137 = v136;
      v935 = v136;
      swift_bridgeObjectRetain_n();
      v926 = sub_1C60162B0();
      v925 = sub_1C6016F30();
      OUTLINED_FUNCTION_65_0();
      v138 = swift_allocObject();
      *(v138 + 16) = 34;
      OUTLINED_FUNCTION_65_0();
      v139 = swift_allocObject();
      *(v139 + 16) = 8;
      v140 = v139;
      OUTLINED_FUNCTION_58();
      v141 = swift_allocObject();
      *(v141 + 16) = sub_1C5CB83D8;
      *(v141 + 24) = v133;
      v142 = v141;
      v930 = v141;
      OUTLINED_FUNCTION_58();
      v143 = swift_allocObject();
      *(v143 + 16) = sub_1C5CB83D4;
      *(v143 + 24) = v142;
      v144 = v143;
      OUTLINED_FUNCTION_65_0();
      v927 = swift_allocObject();
      *(v927 + 16) = 34;
      OUTLINED_FUNCTION_65_0();
      v939 = swift_allocObject();
      LOBYTE(v939[2].isa) = 8;
      OUTLINED_FUNCTION_58();
      v145 = swift_allocObject();
      *(v145 + 16) = sub_1C5CB614C;
      *(v145 + 24) = v135;
      v146 = v145;
      v929 = v145;
      OUTLINED_FUNCTION_58();
      v147 = swift_allocObject();
      *(v147 + 16) = sub_1C5CB83D4;
      *(v147 + 24) = v146;
      OUTLINED_FUNCTION_65_0();
      *&v938 = swift_allocObject();
      *(v938 + 16) = 34;
      OUTLINED_FUNCTION_65_0();
      v924 = swift_allocObject();
      *(v924 + 16) = 8;
      OUTLINED_FUNCTION_58();
      v148 = swift_allocObject();
      *(v148 + 16) = sub_1C5CB8394;
      *(v148 + 24) = v137;
      OUTLINED_FUNCTION_58();
      v149 = swift_allocObject();
      *(v149 + 16) = sub_1C5CB83D4;
      *(v149 + 24) = v148;
      v150 = swift_allocObject();
      *(v150 + 16) = xmmword_1C60311C0;
      *(v150 + 32) = sub_1C5CB8408;
      *(v150 + 40) = v138;
      *(v150 + 48) = sub_1C5CB8408;
      *(v150 + 56) = v140;
      *(v150 + 64) = sub_1C5CB837C;
      *(v150 + 72) = v144;
      v151 = v144;
      v152 = v927;
      *(v150 + 80) = sub_1C5CB8408;
      *(v150 + 88) = v152;
      v153 = v939;
      *(v150 + 96) = sub_1C5CB8408;
      *(v150 + 104) = v153;
      *(v150 + 112) = sub_1C5CB837C;
      *(v150 + 120) = v147;
      v154 = v938;
      *(v150 + 128) = sub_1C5CB8408;
      *(v150 + 136) = v154;
      v155 = v924;
      *(v150 + 144) = sub_1C5CB8408;
      *(v150 + 152) = v155;
      *(v150 + 160) = sub_1C5CB837C;
      *(v150 + 168) = v149;
      swift_setDeallocating();

      v922 = v148;

      v920 = v138;
      v156 = v927;

      v921 = v151;

      sub_1C5D677CC();
      v157 = v926;
      if (os_log_type_enabled(v926, v925))
      {
        v916 = v147;
        v917 = v149;
        OUTLINED_FUNCTION_64_0();
        v158 = swift_slowAlloc();
        OUTLINED_FUNCTION_112_0();
        v915 = swift_slowAlloc();
        v949 = v915;
        *v158 = 770;
        *(v158 + 2) = 34;

        *(v158 + 3) = 8;

        OUTLINED_FUNCTION_124_0();
        OUTLINED_FUNCTION_203();

        *(v158 + 4) = v157;

        *(v158 + 12) = 34;

        *(v158 + 13) = 8;

        v159 = v923;
        if (v923)
        {
          v160 = 7104878;
        }

        else
        {
          v946 = v919;
          sub_1C5CB6188();
          v160 = sub_1C6017380();
        }

        OUTLINED_FUNCTION_232(v160);
        OUTLINED_FUNCTION_136_0();

        *(v158 + 14) = v156;

        *(v158 + 22) = 34;

        *(v158 + 23) = 8;

        if (v918)
        {
          v218 = 7104878;
        }

        else
        {
          OUTLINED_FUNCTION_286();
          v218 = sub_1C6017380();
        }

        v219 = OUTLINED_FUNCTION_232(v218);

        *(v158 + 24) = v219;

        v220 = v926;
        _os_log_impl(&dword_1C5C61000, v926, v925, "[XSQ:Content] init | x-media-library | databaseID=%{public}s mediaTypeInt=%{public}s pid=%{public}s", v158, 0x20u);
        swift_arrayDestroy();
        v221 = OUTLINED_FUNCTION_19();
        MEMORY[0x1C6956920](v221);
        v222 = OUTLINED_FUNCTION_22_0();
        MEMORY[0x1C6956920](v222);
      }

      else
      {

        v159 = v923;
      }

      v8 = v942;
      if (v159 & 1) != 0 || (v223 = sub_1C5CAB4A4(), (v224))
      {

        sub_1C5C64D74(0, &qword_1ED7DCCF0);
        sub_1C6016940();
        OUTLINED_FUNCTION_74();
        v946 = 111;
        v949 = OUTLINED_FUNCTION_341();
        v950 = v225;
        v226 = OUTLINED_FUNCTION_53();
        MEMORY[0x1C69534E0](v226);
        OUTLINED_FUNCTION_1_0();
        sub_1C5CB8318(v227, v228);
        goto LABEL_15;
      }

      if (v918)
      {

        sub_1C5C64D74(0, &qword_1ED7DCCF0);
        sub_1C6016940();
        OUTLINED_FUNCTION_51();
        v949 = sub_1C6017840();
        v950 = v229;
        OUTLINED_FUNCTION_21_1();
LABEL_98:
        OUTLINED_FUNCTION_131_0();
LABEL_137:
        MEMORY[0x1C69534E0](v230);
        sub_1C5C9722C();
        goto LABEL_16;
      }

      v76 = v223;
      v305 = v940;
      v304 = v941;
      v956 = v941;
      v957 = v940;
      v306 = v943;
      v958 = v223;
      v959 = v943;
      v960 = 1;
      OUTLINED_FUNCTION_107_0();
      v307 = swift_allocObject();
      *(v307 + 16) = v304;
      *(v307 + 24) = v305;
      *(v307 + 32) = v76;
      *(v307 + 40) = v306;
      *(v307 + 48) = 1;
      OUTLINED_FUNCTION_58();
      v308 = swift_allocObject();
      *(v308 + 16) = sub_1C5CB8470;
      *(v308 + 24) = v307;
      swift_bridgeObjectRetain_n();
      v935 = v307;

      v939 = sub_1C60162B0();
      LODWORD(v936) = sub_1C6016F30();
      OUTLINED_FUNCTION_65_0();
      v309 = swift_allocObject();
      OUTLINED_FUNCTION_70(v309);
      OUTLINED_FUNCTION_65_0();
      v310 = swift_allocObject();
      OUTLINED_FUNCTION_69(v310);
      OUTLINED_FUNCTION_58();
      v311 = swift_allocObject();
      *(v311 + 16) = sub_1C5CB83DC;
      *(v311 + 24) = v308;
      OUTLINED_FUNCTION_58();
      v312 = swift_allocObject();
      *(v312 + 16) = sub_1C5CB83D4;
      *(v312 + 24) = v311;
      v313 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_81(v313);
      v314[4] = sub_1C5CB8408;
      v314[5] = v309;
      v314[6] = sub_1C5CB8408;
      v314[7] = v310;
      v314[8] = sub_1C5CB837C;
      v314[9] = v312;
      swift_setDeallocating();
      *&v938 = v308;
      v315 = v936;

      v937 = v311;

      sub_1C5D677CC();
      if (os_log_type_enabled(v939, v315))
      {
        OUTLINED_FUNCTION_68_1();
        v316 = swift_slowAlloc();
        OUTLINED_FUNCTION_64_0();
        v317 = swift_slowAlloc();
        v946 = v317;
        OUTLINED_FUNCTION_13_0();

        *(v316 + 3) = 8;

        OUTLINED_FUNCTION_4_0();
        v318 = v940;

        v319 = sub_1C5CAF1A0();
        MEMORY[0x1C69534E0](v319);

        OUTLINED_FUNCTION_75_0();

        v320 = OUTLINED_FUNCTION_82();

        *(v316 + 4) = v320;

        v321 = v939;
        OUTLINED_FUNCTION_190(&dword_1C5C61000, v939, v315, "[XSQ:Content] init | x-media-library | %{public}s");
        __swift_destroy_boxed_opaque_existential_0(v317);
        v322 = OUTLINED_FUNCTION_28_0();
        MEMORY[0x1C6956920](v322);
        v323 = OUTLINED_FUNCTION_30_0();
        MEMORY[0x1C6956920](v323);

        v324 = OUTLINED_FUNCTION_228();
        v325(v324, v942);
        v99 = 1;
        v97 = v318;
      }

      else
      {

        v97 = v940;

        v358 = OUTLINED_FUNCTION_228();
        v359(v358, v8);
        v99 = 1;
      }

      v100 = v941;
LABEL_87:
      v98 = v943;
      goto LABEL_37;
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_74();
    v946 = 110;
    v949 = OUTLINED_FUNCTION_341();
    v950 = v161;
    v162 = OUTLINED_FUNCTION_53();
    goto LABEL_56;
  }

  v102 = v971;
  v105 = v68 == (OUTLINED_FUNCTION_226() & 0xFFFFFFFFFFFFLL | 0x656D000000000000) && v104 == v103;
  v106 = 0x65726F7473;
  if (!v105 && (OUTLINED_FUNCTION_153() & 1) == 0)
  {
    OUTLINED_FUNCTION_109();
    v167 = v68 == 0xD000000000000016 && v165 == v166;
    if (v167 || (OUTLINED_FUNCTION_153() & 1) != 0)
    {
      OUTLINED_FUNCTION_310();
      v169 = v70 && v168 == 0xE600000000000000;
      if (v169 || (OUTLINED_FUNCTION_126_0() & 1) != 0)
      {
        v170 = sub_1C6014E90();
        sub_1C5CD4534(v170);
        OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_221();
        v171 = swift_allocObject();
        *&v938 = OUTLINED_FUNCTION_52_0(v171);
        LODWORD(v935) = sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v172 = swift_allocObject();
        OUTLINED_FUNCTION_70(v172);
        OUTLINED_FUNCTION_65_0();
        v173 = swift_allocObject();
        OUTLINED_FUNCTION_69(v173);
        OUTLINED_FUNCTION_58();
        v174 = swift_allocObject();
        *(v174 + 16) = sub_1C5CB6100;
        *(v174 + 24) = 0x656369766564;
        OUTLINED_FUNCTION_58();
        v175 = swift_allocObject();
        v176 = OUTLINED_FUNCTION_57(v175);
        OUTLINED_FUNCTION_81(v176);
        v177[4] = sub_1C5CB8408;
        v177[5] = v172;
        v177[6] = sub_1C5CB8408;
        v177[7] = v173;
        v177[8] = sub_1C5CB837C;
        v177[9] = v175;
        swift_setDeallocating();

        sub_1C5D677CC();
        v178 = v938;
        if (os_log_type_enabled(v938, v935))
        {
          v939 = v48;
          OUTLINED_FUNCTION_68_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_46();
          v179 = swift_slowAlloc();
          v949 = v179;
          OUTLINED_FUNCTION_42_0();

          OUTLINED_FUNCTION_193();

          if (v941)
          {
            v180 = OUTLINED_FUNCTION_78();
          }

          else
          {
            OUTLINED_FUNCTION_286();
            v180 = sub_1C6017380();
            v178 = v326;
          }

          v8 = v942;
          OUTLINED_FUNCTION_232(v180);
          OUTLINED_FUNCTION_118();

          *(&v48->isa + 4) = v173;

          OUTLINED_FUNCTION_44();
          OUTLINED_FUNCTION_339(v327, v328, v329, v330);
          __swift_destroy_boxed_opaque_existential_0(v179);
          v331 = OUTLINED_FUNCTION_16_1();
          MEMORY[0x1C6956920](v331);
          v332 = OUTLINED_FUNCTION_17();
          MEMORY[0x1C6956920](v332);

          v48 = v939;
        }

        else
        {

          v8 = v942;
        }

        if (v941)
        {

          sub_1C5C64D74(0, &qword_1ED7DCCF0);
          sub_1C6016940();
          OUTLINED_FUNCTION_51();
          v949 = OUTLINED_FUNCTION_341();
          v950 = v333;
          v230 = OUTLINED_FUNCTION_53();
          goto LABEL_137;
        }

        v975 = 0;
        v974 = 0;
        v976 = 2;
        v977 = v943;
        v978 = 1;
        OUTLINED_FUNCTION_107_0();
        v334 = swift_allocObject();
        OUTLINED_FUNCTION_218(v334);
        OUTLINED_FUNCTION_58();
        v97 = swift_allocObject();
        *(v97 + 16) = sub_1C5CB8470;
        *(v97 + 24) = v334;

        v335 = v936;
        v941 = sub_1C60162B0();
        v336 = sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v337 = swift_allocObject();
        OUTLINED_FUNCTION_23_1(v337);
        OUTLINED_FUNCTION_65_0();
        v338 = swift_allocObject();
        OUTLINED_FUNCTION_32_0(v338);
        OUTLINED_FUNCTION_58();
        v339 = swift_allocObject();
        *(v339 + 16) = sub_1C5CB83DC;
        *(v339 + 24) = v97;
        OUTLINED_FUNCTION_58();
        v340 = swift_allocObject();
        *(v340 + 16) = sub_1C5CB83D4;
        *(v340 + 24) = v339;
        v341 = OUTLINED_FUNCTION_63();
        sub_1C5E1018C(v341, 3);
        *v342 = sub_1C5CB8408;
        v342[1] = v335;
        v342[2] = sub_1C5CB8408;
        v342[3] = v8;
        v342[4] = sub_1C5CB837C;
        v342[5] = v340;

        LODWORD(v938) = v336;
        v343 = v336;
        v344 = v941;
        if (os_log_type_enabled(v941, v343))
        {
          OUTLINED_FUNCTION_68_1();
          v345 = swift_slowAlloc();
          OUTLINED_FUNCTION_64_0();
          v346 = swift_slowAlloc();
          v939 = v48;
          v347 = v346;
          OUTLINED_FUNCTION_34_0(v346);

          OUTLINED_FUNCTION_192();

          OUTLINED_FUNCTION_4_0();
          sub_1C5CAF1A0();
          OUTLINED_FUNCTION_284();

          OUTLINED_FUNCTION_75_0();
          OUTLINED_FUNCTION_82();
          OUTLINED_FUNCTION_113();

          *(v345 + 4) = v8;

          OUTLINED_FUNCTION_115();
          v348 = v941;
          OUTLINED_FUNCTION_266(v349, v941, v350, v351);
          __swift_destroy_boxed_opaque_existential_0(v347);
          v352 = OUTLINED_FUNCTION_17();
          MEMORY[0x1C6956920](v352);
          v353 = OUTLINED_FUNCTION_22_0();
          MEMORY[0x1C6956920](v353);

          v354 = OUTLINED_FUNCTION_5_0();
          v355(v354);
        }

        else
        {

          v357 = OUTLINED_FUNCTION_10_2();
          (v48)(v357);
        }

        OUTLINED_FUNCTION_217();
        v76 = 2;
        goto LABEL_87;
      }

      v274 = v941 == 0x65726F7473 && v940 == 0xE500000000000000;
      v939 = v48;
      if (v274 || (OUTLINED_FUNCTION_130_0() & 1) != 0)
      {
        v275 = OUTLINED_FUNCTION_335();
        sub_1C5CD4534(v275);
        OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_221();
        swift_allocObject();
        OUTLINED_FUNCTION_161();
        v943 = OUTLINED_FUNCTION_327(v276);
        v277 = sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v278 = swift_allocObject();
        OUTLINED_FUNCTION_23_1(v278);
        OUTLINED_FUNCTION_65_0();
        v279 = swift_allocObject();
        OUTLINED_FUNCTION_32_0(v279);
        OUTLINED_FUNCTION_58();
        v280 = swift_allocObject();
        *(v280 + 16) = sub_1C5CB8394;
        *(v280 + 24) = 0x656369766564;
        OUTLINED_FUNCTION_58();
        v281 = swift_allocObject();
        v282 = OUTLINED_FUNCTION_57(v281);
        sub_1C5E1018C(v282, 3);
        *v283 = sub_1C5CB8408;
        v283[1] = 0x65726F7473;
        v283[2] = sub_1C5CB8408;
        v283[3] = v69;
        v283[4] = sub_1C5CB837C;
        v283[5] = v281;

        OUTLINED_FUNCTION_205();
        v284 = OUTLINED_FUNCTION_125();
        if (os_log_type_enabled(v284, v285))
        {
          OUTLINED_FUNCTION_68_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_45_1();
          v286 = swift_slowAlloc();
          OUTLINED_FUNCTION_20(v286);

          OUTLINED_FUNCTION_133();
          LODWORD(v935) = v971;
          if (v971)
          {
            v287 = OUTLINED_FUNCTION_78();
          }

          else
          {
            v946 = v941;
            sub_1C5CB60AC();
            v287 = sub_1C6017380();
            v106 = v487;
          }

          OUTLINED_FUNCTION_232(v287);
          OUTLINED_FUNCTION_113();

          *(v277 + 4) = v69;

          OUTLINED_FUNCTION_86_1();
          OUTLINED_FUNCTION_233(v488, v489, v490, v491);
          __swift_destroy_boxed_opaque_existential_0(v286);
          v492 = OUTLINED_FUNCTION_17();
          MEMORY[0x1C6956920](v492);
          v493 = OUTLINED_FUNCTION_16_1();
          MEMORY[0x1C6956920](v493);

          LOBYTE(v102) = v935;
        }

        else
        {
        }

        if ((v102 & 1) == 0)
        {
          OUTLINED_FUNCTION_107_0();
          v76 = swift_allocObject();
          OUTLINED_FUNCTION_256(v76, 2);
          OUTLINED_FUNCTION_58();
          v495 = swift_allocObject();
          OUTLINED_FUNCTION_264(v495);
          v496 = v936;
          v497 = sub_1C60162B0();
          v498 = sub_1C6016F30();
          OUTLINED_FUNCTION_65_0();
          v499 = swift_allocObject();
          OUTLINED_FUNCTION_23_1(v499);
          OUTLINED_FUNCTION_65_0();
          v500 = swift_allocObject();
          OUTLINED_FUNCTION_32_0(v500);
          OUTLINED_FUNCTION_58();
          v501 = swift_allocObject();
          *(v501 + 16) = sub_1C5CB83DC;
          *(v501 + 24) = v495;
          OUTLINED_FUNCTION_58();
          v502 = swift_allocObject();
          *(v502 + 16) = sub_1C5CB83D4;
          *(v502 + 24) = v501;
          v503 = OUTLINED_FUNCTION_63();
          sub_1C5E1018C(v503, 3);
          *v504 = sub_1C5CB8408;
          v504[1] = v496;
          v504[2] = sub_1C5CB8408;
          v504[3] = v69;
          v504[4] = sub_1C5CB837C;
          v504[5] = v502;

          LODWORD(v943) = v498;
          if (os_log_type_enabled(v497, v498))
          {
            OUTLINED_FUNCTION_68_1();
            v505 = swift_slowAlloc();
            *&v938 = v495;
            v506 = v505;
            OUTLINED_FUNCTION_64_0();
            v507 = swift_slowAlloc();
            OUTLINED_FUNCTION_34_0(v507);

            OUTLINED_FUNCTION_192();

            OUTLINED_FUNCTION_33();
            v949 = v508;
            v950 = v509;
            sub_1C5CAF86C(v941, 2, 0);
            OUTLINED_FUNCTION_284();

            OUTLINED_FUNCTION_75_0();
            OUTLINED_FUNCTION_82();
            OUTLINED_FUNCTION_113();

            *(v506 + 4) = v69;

            OUTLINED_FUNCTION_266(&dword_1C5C61000, v497, v943, "[XSQ:Content] init | x-sampcollection-album / store | %{public}s");
            __swift_destroy_boxed_opaque_existential_0(v507);
            v510 = OUTLINED_FUNCTION_28_0();
            MEMORY[0x1C6956920](v510);
            v511 = OUTLINED_FUNCTION_22_0();
            MEMORY[0x1C6956920](v511);
          }

          else
          {
          }

          v514 = OUTLINED_FUNCTION_5_0();
          v515(v514);
          OUTLINED_FUNCTION_177();
          v99 = 0x80;
          v97 = 2;
          goto LABEL_36;
        }

        goto LABEL_200;
      }

      OUTLINED_FUNCTION_48();
      v416 = v70 && v415 == 0xE800000000000000;
      if (v416 || (OUTLINED_FUNCTION_187() & 1) != 0)
      {
        sub_1C6014E90();
        OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_58();
        v417 = swift_allocObject();
        *&v938 = v69;
        v417[2] = v69;
        v417[3] = v971;
        OUTLINED_FUNCTION_211();
        v941 = sub_1C60162B0();
        v418 = sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v419 = swift_allocObject();
        OUTLINED_FUNCTION_70(v419);
        OUTLINED_FUNCTION_65_0();
        v420 = swift_allocObject();
        OUTLINED_FUNCTION_32_0(v420);
        OUTLINED_FUNCTION_58();
        v421 = swift_allocObject();
        *(v421 + 16) = sub_1C5CB83D8;
        *(v421 + 24) = v417;
        OUTLINED_FUNCTION_58();
        v422 = swift_allocObject();
        *(v422 + 16) = sub_1C5CB83D4;
        *(v422 + 24) = v421;
        v423 = OUTLINED_FUNCTION_63();
        sub_1C5E1018C(v423, 3);
        *v424 = sub_1C5CB8408;
        v424[1] = v419;
        v424[2] = sub_1C5CB8408;
        v424[3] = v69;
        v424[4] = sub_1C5CB837C;
        v424[5] = v422;

        LODWORD(v935) = v418;
        if (os_log_type_enabled(v941, v418))
        {
          OUTLINED_FUNCTION_68_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_45_1();
          v425 = swift_slowAlloc();
          OUTLINED_FUNCTION_20(v425);

          OUTLINED_FUNCTION_133();

          v426 = OUTLINED_FUNCTION_321();

          *(v418 + 4) = v426;

          OUTLINED_FUNCTION_230(&dword_1C5C61000, v427, v428, "[XSQ:Content] init | x-sampcollection-album / sirisync | syncID=%{public}s");
          __swift_destroy_boxed_opaque_existential_0(v425);
          v429 = OUTLINED_FUNCTION_17();
          MEMORY[0x1C6956920](v429);
          v430 = OUTLINED_FUNCTION_16_1();
          MEMORY[0x1C6956920](v430);
        }

        else
        {
        }

        sub_1C6014F40();
        OUTLINED_FUNCTION_288();
        if (v361)
        {
        }

        else
        {
          v546 = v521;
          OUTLINED_FUNCTION_263();
          OUTLINED_FUNCTION_243();
          v547 = sub_1C6016950();
          if (v548)
          {
            v549 = v548;
            v935 = v546;
            *&v938 = v971;
            v979 = v547;
            v980 = v548;
            v982 = 0;
            v981 = 0;
            v983 = 3;
            v550 = v547;
            v551 = swift_allocObject();
            v941 = v550;
            *(v551 + 16) = v550;
            *(v551 + 24) = v549;
            *(v551 + 32) = 0;
            *(v551 + 40) = 0;
            *(v551 + 48) = 3;
            OUTLINED_FUNCTION_58();
            v552 = swift_allocObject();
            *(v552 + 16) = sub_1C5CB8470;
            *(v552 + 24) = v551;
            *&v934 = v549;
            swift_bridgeObjectRetain_n();

            v553 = v936;
            v943 = sub_1C60162B0();
            v76 = sub_1C6016F30();
            OUTLINED_FUNCTION_65_0();
            v554 = swift_allocObject();
            OUTLINED_FUNCTION_23_1(v554);
            OUTLINED_FUNCTION_65_0();
            v555 = swift_allocObject();
            OUTLINED_FUNCTION_29(v555);
            OUTLINED_FUNCTION_58();
            v556 = swift_allocObject();
            *(v556 + 16) = sub_1C5CB83DC;
            *(v556 + 24) = v552;
            OUTLINED_FUNCTION_58();
            v557 = swift_allocObject();
            v558 = OUTLINED_FUNCTION_56(v557);
            sub_1C5E1018C(v558, 3);
            *v559 = sub_1C5CB8408;
            v559[1] = v553;
            v559[2] = sub_1C5CB8408;
            v559[3] = v549;
            v559[4] = sub_1C5CB837C;
            v559[5] = v557;
            OUTLINED_FUNCTION_349();

            LODWORD(v936) = v76;
            if (os_log_type_enabled(v943, v76))
            {
              OUTLINED_FUNCTION_68_1();
              swift_slowAlloc();
              OUTLINED_FUNCTION_46();
              v931 = swift_slowAlloc();
              v946 = v931;
              OUTLINED_FUNCTION_42_0();

              OUTLINED_FUNCTION_193();

              OUTLINED_FUNCTION_4_0();
              v97 = v934;

              sub_1C5CAF1A0();
              OUTLINED_FUNCTION_234();

              OUTLINED_FUNCTION_75_0();

              OUTLINED_FUNCTION_82();
              OUTLINED_FUNCTION_95();

              OUTLINED_FUNCTION_333();

              v375 = "[XSQ:Content] init | x-sampcollection-album / sirisync | %{public}s";
              goto LABEL_154;
            }

            goto LABEL_227;
          }

          v699 = OUTLINED_FUNCTION_243();
          sub_1C5CB6098(v699, v700);
        }

        sub_1C5C64D74(0, &qword_1ED7DCCF0);
        sub_1C6016940();
        OUTLINED_FUNCTION_74();
        v946 = 150;
        v949 = sub_1C6017840();
        v950 = v701;
        OUTLINED_FUNCTION_21_1();
        goto LABEL_209;
      }

      OUTLINED_FUNCTION_320();
      v619 = v617 == v618 && v616 == 0xE400000000000000;
      if (v619 || (OUTLINED_FUNCTION_156(), (sub_1C6017860() & 1) != 0))
      {
        sub_1C6014E90();
        OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_58();
        v620 = swift_allocObject();
        OUTLINED_FUNCTION_67_0(v620);
        v621 = v936;
        sub_1C60162B0();
        sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v622 = swift_allocObject();
        OUTLINED_FUNCTION_70(v622);
        OUTLINED_FUNCTION_65_0();
        v623 = swift_allocObject();
        OUTLINED_FUNCTION_29(v623);
        OUTLINED_FUNCTION_58();
        v624 = swift_allocObject();
        *(v624 + 16) = sub_1C5CB83D8;
        *(v624 + 24) = 0x656369766564;
        OUTLINED_FUNCTION_58();
        v625 = swift_allocObject();
        *(v625 + 16) = sub_1C5CB83D4;
        *(v625 + 24) = v624;
        v626 = OUTLINED_FUNCTION_63();
        sub_1C5E1018C(v626, 3);
        *v627 = sub_1C5CB8408;
        v627[1] = v622;
        v627[2] = sub_1C5CB8408;
        v627[3] = v68;
        v627[4] = sub_1C5CB837C;
        v627[5] = v625;

        if (OUTLINED_FUNCTION_127())
        {
          OUTLINED_FUNCTION_68_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_64_0();
          v628 = swift_slowAlloc();
          v949 = v628;
          OUTLINED_FUNCTION_13_0();

          OUTLINED_FUNCTION_96();
          OUTLINED_FUNCTION_278();
          OUTLINED_FUNCTION_124_0();
          OUTLINED_FUNCTION_171();

          OUTLINED_FUNCTION_277();

          OUTLINED_FUNCTION_94_0(&dword_1C5C61000, v629, v630, "[XSQ:Content] init | x-sampcollection-album / ulid | ulid=%{public}s");
          __swift_destroy_boxed_opaque_existential_0(v628);
          v631 = OUTLINED_FUNCTION_19();
          MEMORY[0x1C6956920](v631);
          v632 = OUTLINED_FUNCTION_30_0();
          MEMORY[0x1C6956920](v632);
        }

        else
        {
        }

        v753 = HIBYTE(v943) & 0xF;
        if ((v943 & 0x2000000000000000) == 0)
        {
          v753 = v941 & 0xFFFFFFFFFFFFLL;
        }

        if (v753)
        {
          v984[0] = v941;
          v754 = v943;
          v984[1] = v943;
          v938 = xmmword_1C6031190;
          v985 = xmmword_1C6031190;
          v986 = 4;
          v755 = v941;
          v756 = swift_allocObject();
          v756[1].n128_u64[0] = v755;
          v756[1].n128_u64[1] = v754;
          OUTLINED_FUNCTION_150(v756);
          OUTLINED_FUNCTION_58();
          v757 = swift_allocObject();
          *(v757 + 16) = sub_1C5CB8470;
          *(v757 + 24) = v756;
          OUTLINED_FUNCTION_211();

          v758 = v936;
          v536 = sub_1C60162B0();
          sub_1C6016F30();
          OUTLINED_FUNCTION_65_0();
          v759 = swift_allocObject();
          OUTLINED_FUNCTION_23_1(v759);
          OUTLINED_FUNCTION_65_0();
          v760 = swift_allocObject();
          OUTLINED_FUNCTION_29(v760);
          OUTLINED_FUNCTION_58();
          v761 = swift_allocObject();
          *(v761 + 16) = sub_1C5CB83DC;
          *(v761 + 24) = v757;
          OUTLINED_FUNCTION_58();
          v762 = swift_allocObject();
          v763 = OUTLINED_FUNCTION_56(v762);
          sub_1C5E1018C(v763, 3);
          *v764 = sub_1C5CB8408;
          v764[1] = v758;
          v764[2] = sub_1C5CB8408;
          v764[3] = v68;
          v764[4] = sub_1C5CB837C;
          v764[5] = v762;

          if (OUTLINED_FUNCTION_181())
          {
            OUTLINED_FUNCTION_68_1();
            swift_slowAlloc();
            OUTLINED_FUNCTION_64_0();
            v936 = swift_slowAlloc();
            v946 = v936;
            OUTLINED_FUNCTION_13_0();

            OUTLINED_FUNCTION_96();
            OUTLINED_FUNCTION_4_0();
            OUTLINED_FUNCTION_125();

            sub_1C5CAF1A0();
            OUTLINED_FUNCTION_234();

            OUTLINED_FUNCTION_75_0();

            OUTLINED_FUNCTION_82();
            OUTLINED_FUNCTION_95();

            OUTLINED_FUNCTION_348();

            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_190(v765, v766, v767, v768);
            __swift_destroy_boxed_opaque_existential_0(v936);
            v769 = OUTLINED_FUNCTION_22_0();
            MEMORY[0x1C6956920](v769);
            v770 = OUTLINED_FUNCTION_30_0();
            MEMORY[0x1C6956920](v770);
          }

          else
          {

            OUTLINED_FUNCTION_125();
          }

          v837 = OUTLINED_FUNCTION_5_0();
          v838(v837);
          OUTLINED_FUNCTION_314();
          v76 = 2;
LABEL_267:
          v97 = v536;
          goto LABEL_36;
        }

        goto LABEL_309;
      }

LABEL_325:

      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      OUTLINED_FUNCTION_50();
      v949 = sub_1C6017840();
      v950 = v830;
      goto LABEL_326;
    }

    OUTLINED_FUNCTION_109();
    v257 = v68 == 0xD000000000000017 && v255 == v256;
    v939 = v48;
    if (v257 || (OUTLINED_FUNCTION_153() & 1) != 0)
    {
      OUTLINED_FUNCTION_310();
      v259 = v70 && v258 == 0xE600000000000000;
      if (v259 || (OUTLINED_FUNCTION_126_0() & 1) != 0)
      {
        v260 = OUTLINED_FUNCTION_335();
        sub_1C5CD4534(v260);
        OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_221();
        v261 = swift_allocObject();
        v262 = OUTLINED_FUNCTION_52_0(v261);
        sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v263 = swift_allocObject();
        OUTLINED_FUNCTION_23_1(v263);
        OUTLINED_FUNCTION_65_0();
        v264 = swift_allocObject();
        OUTLINED_FUNCTION_32_0(v264);
        OUTLINED_FUNCTION_58();
        v265 = swift_allocObject();
        *(v265 + 16) = sub_1C5CB8394;
        *(v265 + 24) = 0x656369766564;
        OUTLINED_FUNCTION_58();
        v266 = swift_allocObject();
        v267 = OUTLINED_FUNCTION_57(v266);
        sub_1C5E1018C(v267, 3);
        *v268 = sub_1C5CB8408;
        v268[1] = 0x65726F7473;
        v268[2] = sub_1C5CB8408;
        v268[3] = v69;
        v268[4] = sub_1C5CB837C;
        v268[5] = v266;

        OUTLINED_FUNCTION_205();
        if (os_log_type_enabled(v262, v269))
        {
          v935 = v262;
          OUTLINED_FUNCTION_68_1();
          v270 = swift_slowAlloc();
          OUTLINED_FUNCTION_64_0();
          v271 = swift_slowAlloc();
          v949 = v271;
          OUTLINED_FUNCTION_132();
          OUTLINED_FUNCTION_265();
          v272 = v941;
          if (v941)
          {
            v273 = OUTLINED_FUNCTION_78();
          }

          else
          {
            OUTLINED_FUNCTION_286();
            v273 = sub_1C6017380();
          }

          OUTLINED_FUNCTION_232(v273);
          OUTLINED_FUNCTION_113();

          *(v270 + 4) = v69;

          OUTLINED_FUNCTION_115();
          v455 = v935;
          OUTLINED_FUNCTION_239();
          _os_log_impl(v456, v457, v458, v459, v460, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v271);
          v461 = OUTLINED_FUNCTION_17();
          MEMORY[0x1C6956920](v461);
          v462 = OUTLINED_FUNCTION_19();
          MEMORY[0x1C6956920](v462);
        }

        else
        {
          v272 = v941;
        }

        if ((v272 & 1) == 0)
        {
          v988 = 0;
          v987 = 0;
          v989 = 3;
          v990 = v943;
          v991 = 1;
          OUTLINED_FUNCTION_107_0();
          v465 = swift_allocObject();
          OUTLINED_FUNCTION_218(v465);
          OUTLINED_FUNCTION_58();
          v466 = swift_allocObject();
          OUTLINED_FUNCTION_264(v466);
          v467 = v936;
          v468 = sub_1C60162B0();
          v469 = sub_1C6016F30();
          OUTLINED_FUNCTION_65_0();
          v470 = swift_allocObject();
          OUTLINED_FUNCTION_23_1(v470);
          OUTLINED_FUNCTION_65_0();
          v471 = swift_allocObject();
          OUTLINED_FUNCTION_32_0(v471);
          OUTLINED_FUNCTION_58();
          v97 = swift_allocObject();
          *(v97 + 16) = sub_1C5CB83DC;
          *(v97 + 24) = v466;
          OUTLINED_FUNCTION_58();
          v472 = swift_allocObject();
          v473 = OUTLINED_FUNCTION_57(v472);
          sub_1C5E1018C(v473, 3);
          *v474 = sub_1C5CB8408;
          v474[1] = v467;
          v474[2] = sub_1C5CB8408;
          v474[3] = v69;
          v474[4] = sub_1C5CB837C;
          v474[5] = v472;

          if (os_log_type_enabled(v468, v469))
          {
            OUTLINED_FUNCTION_68_1();
            v475 = swift_slowAlloc();
            v941 = v468;
            v476 = v475;
            OUTLINED_FUNCTION_64_0();
            v477 = swift_slowAlloc();
            LODWORD(v938) = v469;
            v478 = v477;
            v946 = v477;
            OUTLINED_FUNCTION_132();
            OUTLINED_FUNCTION_265();
            OUTLINED_FUNCTION_4_0();
            sub_1C5CAF1A0();
            OUTLINED_FUNCTION_284();

            OUTLINED_FUNCTION_75_0();
            OUTLINED_FUNCTION_82();
            OUTLINED_FUNCTION_113();

            *(v476 + 4) = v69;

            OUTLINED_FUNCTION_115();
            v479 = v941;
            OUTLINED_FUNCTION_239();
            _os_log_impl(v480, v481, v482, v483, v484, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v478);
            v485 = OUTLINED_FUNCTION_16_1();
            MEMORY[0x1C6956920](v485);
            v486 = OUTLINED_FUNCTION_19();
            MEMORY[0x1C6956920](v486);
          }

          else
          {
          }

          v512 = OUTLINED_FUNCTION_5_0();
          v513(v512);
          OUTLINED_FUNCTION_217();
          v76 = 3;
          goto LABEL_87;
        }

        sub_1C5C64D74(0, &qword_1ED7DCCF0);
        sub_1C6016940();
        OUTLINED_FUNCTION_51();
        v949 = OUTLINED_FUNCTION_341();
        v950 = v463;
        v464 = OUTLINED_FUNCTION_53();
        goto LABEL_210;
      }

      v401 = v941 == 0x65726F7473 && v940 == 0xE500000000000000;
      if (v401 || (OUTLINED_FUNCTION_130_0() & 1) != 0)
      {
        v402 = OUTLINED_FUNCTION_335();
        sub_1C5CD4534(v402);
        OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_221();
        swift_allocObject();
        OUTLINED_FUNCTION_161();
        v943 = OUTLINED_FUNCTION_327(v403);
        v404 = sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v405 = swift_allocObject();
        OUTLINED_FUNCTION_23_1(v405);
        OUTLINED_FUNCTION_65_0();
        v406 = swift_allocObject();
        OUTLINED_FUNCTION_32_0(v406);
        OUTLINED_FUNCTION_58();
        v407 = swift_allocObject();
        *(v407 + 16) = sub_1C5CB8394;
        *(v407 + 24) = 0x656369766564;
        OUTLINED_FUNCTION_58();
        v408 = swift_allocObject();
        v409 = OUTLINED_FUNCTION_57(v408);
        sub_1C5E1018C(v409, 3);
        *v410 = sub_1C5CB8408;
        v410[1] = 0x65726F7473;
        v410[2] = sub_1C5CB8408;
        v410[3] = v69;
        v410[4] = sub_1C5CB837C;
        v410[5] = v408;

        OUTLINED_FUNCTION_205();
        v411 = OUTLINED_FUNCTION_125();
        if (os_log_type_enabled(v411, v412))
        {
          OUTLINED_FUNCTION_68_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_45_1();
          v413 = swift_slowAlloc();
          OUTLINED_FUNCTION_20(v413);

          OUTLINED_FUNCTION_133();
          LODWORD(v935) = v971;
          if (v971)
          {
            v414 = OUTLINED_FUNCTION_78();
          }

          else
          {
            v946 = v941;
            sub_1C5CB60AC();
            v414 = sub_1C6017380();
            v106 = v663;
          }

          OUTLINED_FUNCTION_232(v414);
          OUTLINED_FUNCTION_113();

          *(v404 + 4) = v69;

          OUTLINED_FUNCTION_86_1();
          OUTLINED_FUNCTION_233(v664, v665, v666, v667);
          __swift_destroy_boxed_opaque_existential_0(v413);
          v668 = OUTLINED_FUNCTION_17();
          MEMORY[0x1C6956920](v668);
          v669 = OUTLINED_FUNCTION_16_1();
          MEMORY[0x1C6956920](v669);

          LOBYTE(v102) = v935;
        }

        else
        {
        }

        if ((v102 & 1) == 0)
        {
          OUTLINED_FUNCTION_107_0();
          v76 = swift_allocObject();
          OUTLINED_FUNCTION_256(v76, 3);
          OUTLINED_FUNCTION_58();
          v670 = swift_allocObject();
          OUTLINED_FUNCTION_264(v670);
          v671 = v936;
          v672 = sub_1C60162B0();
          v673 = sub_1C6016F30();
          OUTLINED_FUNCTION_65_0();
          v674 = swift_allocObject();
          OUTLINED_FUNCTION_23_1(v674);
          OUTLINED_FUNCTION_65_0();
          v675 = swift_allocObject();
          OUTLINED_FUNCTION_32_0(v675);
          OUTLINED_FUNCTION_58();
          v676 = swift_allocObject();
          *(v676 + 16) = sub_1C5CB83DC;
          *(v676 + 24) = v670;
          OUTLINED_FUNCTION_58();
          v677 = swift_allocObject();
          *(v677 + 16) = sub_1C5CB83D4;
          *(v677 + 24) = v676;
          v678 = OUTLINED_FUNCTION_63();
          sub_1C5E1018C(v678, 3);
          *v679 = sub_1C5CB8408;
          v679[1] = v671;
          v679[2] = sub_1C5CB8408;
          v679[3] = v69;
          v679[4] = sub_1C5CB837C;
          v679[5] = v677;

          LODWORD(v943) = v673;
          v680 = OUTLINED_FUNCTION_162();
          if (os_log_type_enabled(v680, v681))
          {
            OUTLINED_FUNCTION_68_1();
            v682 = swift_slowAlloc();
            *&v938 = v672;
            v683 = v682;
            OUTLINED_FUNCTION_64_0();
            v684 = swift_slowAlloc();
            OUTLINED_FUNCTION_34_0(v684);

            OUTLINED_FUNCTION_192();

            OUTLINED_FUNCTION_33();
            v949 = v685;
            v950 = v686;
            sub_1C5CAF86C(v941, 3, 0);
            OUTLINED_FUNCTION_284();

            OUTLINED_FUNCTION_75_0();
            OUTLINED_FUNCTION_82();
            OUTLINED_FUNCTION_113();

            *(v683 + 4) = v69;

            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_266(v687, v688, v689, v690);
            __swift_destroy_boxed_opaque_existential_0(v684);
            v691 = OUTLINED_FUNCTION_16_1();
            MEMORY[0x1C6956920](v691);
            v692 = OUTLINED_FUNCTION_22_0();
            MEMORY[0x1C6956920](v692);

            v693 = OUTLINED_FUNCTION_5_0();
            v694(v693);
            OUTLINED_FUNCTION_177();
            v99 = 0x80;
            v97 = 3;
            goto LABEL_37;
          }

          v697 = OUTLINED_FUNCTION_5_0();
          v698(v697);
          OUTLINED_FUNCTION_177();
          v99 = 0x80;
          v97 = 3;
          goto LABEL_36;
        }

LABEL_200:

        sub_1C5C64D74(0, &qword_1ED7DCCF0);
        sub_1C6016940();
        OUTLINED_FUNCTION_74();
        v946 = 200;
        v949 = sub_1C6017840();
        v950 = v494;
LABEL_209:
        OUTLINED_FUNCTION_131_0();
LABEL_210:
        MEMORY[0x1C69534E0](v464);
LABEL_211:
        sub_1C5C9722C();
        MEMORY[0x1C69534E0](0, 0xE000000000000000);
        sub_1C6016880();
        OUTLINED_FUNCTION_92();
        OUTLINED_FUNCTION_2_3();
        sub_1C5CB8318(v519, v520);
        OUTLINED_FUNCTION_26();
        sub_1C6017280();
        OUTLINED_FUNCTION_90();

        v8 = v942;
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_48();
      v597 = v70 && v596 == 0xE800000000000000;
      if (v597 || (OUTLINED_FUNCTION_187() & 1) != 0)
      {
        sub_1C6014E90();
        OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_58();
        swift_allocObject();
        OUTLINED_FUNCTION_161();
        *(v598 + 16) = v69;
        *(v598 + 24) = v971;
        OUTLINED_FUNCTION_211();
        sub_1C60162B0();
        v599 = sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v600 = swift_allocObject();
        OUTLINED_FUNCTION_70(v600);
        OUTLINED_FUNCTION_65_0();
        v601 = swift_allocObject();
        OUTLINED_FUNCTION_32_0(v601);
        OUTLINED_FUNCTION_58();
        v602 = swift_allocObject();
        *(v602 + 16) = sub_1C5CB83D8;
        *(v602 + 24) = 0x656369766564;
        OUTLINED_FUNCTION_58();
        v603 = swift_allocObject();
        *(v603 + 16) = sub_1C5CB83D4;
        *(v603 + 24) = v602;
        v604 = OUTLINED_FUNCTION_63();
        sub_1C5E1018C(v604, 3);
        *v605 = sub_1C5CB8408;
        v605[1] = v600;
        v605[2] = sub_1C5CB8408;
        v605[3] = v69;
        v605[4] = sub_1C5CB837C;
        v605[5] = v603;

        LODWORD(v935) = v599;
        v606 = OUTLINED_FUNCTION_289();
        if (os_log_type_enabled(v606, v607))
        {
          OUTLINED_FUNCTION_68_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_45_1();
          v608 = swift_slowAlloc();
          OUTLINED_FUNCTION_20(v608);

          OUTLINED_FUNCTION_133();

          v609 = sub_1C5C6AB10(v941, v971, &v949);

          *(v599 + 4) = v609;

          OUTLINED_FUNCTION_140();
          OUTLINED_FUNCTION_233(v610, v611, v612, v613);
          __swift_destroy_boxed_opaque_existential_0(v608);
          v614 = OUTLINED_FUNCTION_31_0();
          MEMORY[0x1C6956920](v614);
          v615 = OUTLINED_FUNCTION_16_1();
          MEMORY[0x1C6956920](v615);
        }

        else
        {
        }

        sub_1C6014F40();
        OUTLINED_FUNCTION_288();
        if (v361)
        {
        }

        else
        {
          v771 = v752;
          *&v938 = v971;
          sub_1C6016970();
          v935 = v771;
          OUTLINED_FUNCTION_243();
          v772 = sub_1C6016950();
          v941 = v772;
          v943 = v773;
          if (v773)
          {
            v992 = v941;
            v993 = v943;
            v995 = 0;
            v994 = 0;
            v996 = 3;
            OUTLINED_FUNCTION_107_0();
            v774 = swift_allocObject();
            OUTLINED_FUNCTION_302(v774);
            OUTLINED_FUNCTION_58();
            v775 = swift_allocObject();
            *(v775 + 16) = sub_1C5CB8470;
            *(v775 + 24) = v599;
            OUTLINED_FUNCTION_211();

            v776 = v936;
            v936 = sub_1C60162B0();
            v76 = sub_1C6016F30();
            OUTLINED_FUNCTION_65_0();
            v777 = swift_allocObject();
            OUTLINED_FUNCTION_23_1(v777);
            OUTLINED_FUNCTION_65_0();
            v778 = swift_allocObject();
            OUTLINED_FUNCTION_29(v778);
            OUTLINED_FUNCTION_58();
            v779 = swift_allocObject();
            *(v779 + 16) = sub_1C5CB83DC;
            *(v779 + 24) = v775;
            OUTLINED_FUNCTION_58();
            v780 = swift_allocObject();
            v781 = OUTLINED_FUNCTION_56(v780);
            sub_1C5E1018C(v781, 3);
            *v782 = sub_1C5CB8408;
            v782[1] = v776;
            v782[2] = sub_1C5CB8408;
            v782[3] = v603;
            v782[4] = sub_1C5CB837C;
            v782[5] = v780;
            OUTLINED_FUNCTION_349();

            LODWORD(v934) = v76;
            if (os_log_type_enabled(v936, v76))
            {
              OUTLINED_FUNCTION_68_1();
              swift_slowAlloc();
              OUTLINED_FUNCTION_46();
              v931 = swift_slowAlloc();
              v946 = v931;
              OUTLINED_FUNCTION_42_0();

              OUTLINED_FUNCTION_193();

              OUTLINED_FUNCTION_4_0();
              v97 = v943;

              sub_1C5CAF1A0();
              OUTLINED_FUNCTION_234();

              OUTLINED_FUNCTION_75_0();

              OUTLINED_FUNCTION_82();
              OUTLINED_FUNCTION_95();

              OUTLINED_FUNCTION_333();

              v375 = "[XSQ:Content] init | x-sampcollection-artist / sirisync | %{public}s";
LABEL_305:
              v376 = v934;
              v377 = v936;
              goto LABEL_155;
            }

            goto LABEL_344;
          }

          v839 = OUTLINED_FUNCTION_191();
          sub_1C5CB6098(v839, v840);
        }

        sub_1C5C64D74(0, &qword_1ED7DCCF0);
        sub_1C6016940();
        OUTLINED_FUNCTION_74();
        v946 = 150;
        v949 = sub_1C6017840();
        v950 = v841;
        OUTLINED_FUNCTION_21_1();
        goto LABEL_326;
      }

      OUTLINED_FUNCTION_320();
      v811 = v810 == v809 && v940 == 0xE400000000000000;
      if (v811 || (OUTLINED_FUNCTION_156(), (OUTLINED_FUNCTION_187() & 1) != 0))
      {
        v812 = v945;
        sub_1C6014E90();
        OUTLINED_FUNCTION_313();
        OUTLINED_FUNCTION_58();
        swift_allocObject();
        OUTLINED_FUNCTION_161();
        *(v813 + 16) = v812;
        *(v813 + 24) = v35;
        v943 = v35;
        swift_bridgeObjectRetain_n();
        sub_1C60162B0();
        v814 = sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v815 = swift_allocObject();
        OUTLINED_FUNCTION_70(v815);
        OUTLINED_FUNCTION_65_0();
        v816 = swift_allocObject();
        OUTLINED_FUNCTION_29(v816);
        OUTLINED_FUNCTION_58();
        v817 = swift_allocObject();
        *(v817 + 16) = sub_1C5CB83D8;
        *(v817 + 24) = 0x656369766564;
        OUTLINED_FUNCTION_58();
        v818 = swift_allocObject();
        *(v818 + 16) = sub_1C5CB83D4;
        *(v818 + 24) = v817;
        v819 = OUTLINED_FUNCTION_63();
        sub_1C5E1018C(v819, 3);
        *v820 = sub_1C5CB8408;
        v820[1] = v815;
        v820[2] = sub_1C5CB8408;
        v820[3] = v68;
        v820[4] = sub_1C5CB837C;
        v820[5] = v818;

        LODWORD(v935) = v814;
        v821 = OUTLINED_FUNCTION_289();
        if (os_log_type_enabled(v821, v822))
        {
          OUTLINED_FUNCTION_68_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_64_0();
          v823 = swift_slowAlloc();
          v949 = v823;
          OUTLINED_FUNCTION_13_0();

          OUTLINED_FUNCTION_96();
          OUTLINED_FUNCTION_278();
          OUTLINED_FUNCTION_124_0();
          OUTLINED_FUNCTION_171();

          OUTLINED_FUNCTION_277();

          OUTLINED_FUNCTION_140();
          OUTLINED_FUNCTION_190(v824, v825, v826, v827);
          __swift_destroy_boxed_opaque_existential_0(v823);
          v828 = OUTLINED_FUNCTION_31_0();
          MEMORY[0x1C6956920](v828);
          v829 = OUTLINED_FUNCTION_30_0();
          MEMORY[0x1C6956920](v829);
        }

        else
        {
        }

        OUTLINED_FUNCTION_201();
        if (v842)
        {
          v843 = v941;
          v844 = v943;
          v997[0] = v941;
          v997[1] = v943;
          v938 = xmmword_1C6031180;
          v998 = xmmword_1C6031180;
          v999 = 4;
          OUTLINED_FUNCTION_107_0();
          v845 = swift_allocObject();
          v845[1].n128_u64[0] = v843;
          v845[1].n128_u64[1] = v844;
          OUTLINED_FUNCTION_150(v845);
          OUTLINED_FUNCTION_58();
          v846 = swift_allocObject();
          *(v846 + 16) = sub_1C5CB8470;
          *(v846 + 24) = v845;
          swift_bridgeObjectRetain_n();

          v847 = v936;
          v536 = sub_1C60162B0();
          sub_1C6016F30();
          OUTLINED_FUNCTION_65_0();
          v848 = swift_allocObject();
          OUTLINED_FUNCTION_23_1(v848);
          OUTLINED_FUNCTION_65_0();
          v849 = swift_allocObject();
          OUTLINED_FUNCTION_29(v849);
          OUTLINED_FUNCTION_58();
          v850 = swift_allocObject();
          *(v850 + 16) = sub_1C5CB83DC;
          *(v850 + 24) = v846;
          OUTLINED_FUNCTION_58();
          v851 = swift_allocObject();
          v852 = OUTLINED_FUNCTION_56(v851);
          sub_1C5E1018C(v852, 3);
          *v853 = sub_1C5CB8408;
          v853[1] = v847;
          v853[2] = sub_1C5CB8408;
          v853[3] = v68;
          v853[4] = sub_1C5CB837C;
          v853[5] = v851;

          if (OUTLINED_FUNCTION_181())
          {
            OUTLINED_FUNCTION_68_1();
            swift_slowAlloc();
            OUTLINED_FUNCTION_64_0();
            v936 = swift_slowAlloc();
            v946 = v936;
            OUTLINED_FUNCTION_13_0();

            OUTLINED_FUNCTION_96();
            OUTLINED_FUNCTION_4_0();
            OUTLINED_FUNCTION_125();

            sub_1C5CAF1A0();
            OUTLINED_FUNCTION_234();

            OUTLINED_FUNCTION_75_0();

            OUTLINED_FUNCTION_82();
            OUTLINED_FUNCTION_95();

            OUTLINED_FUNCTION_348();

            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_190(v854, v855, v856, v857);
            __swift_destroy_boxed_opaque_existential_0(v936);
            v858 = OUTLINED_FUNCTION_22_0();
            MEMORY[0x1C6956920](v858);
            v859 = OUTLINED_FUNCTION_30_0();
            MEMORY[0x1C6956920](v859);
          }

          else
          {

            OUTLINED_FUNCTION_125();
          }

          v888 = OUTLINED_FUNCTION_5_0();
          v889(v888);
          OUTLINED_FUNCTION_314();
          v76 = 3;
          goto LABEL_267;
        }

        goto LABEL_309;
      }
    }

    else
    {
      v384 = v68 == (OUTLINED_FUNCTION_226() & 0xFFFFFFFFFFFFLL | 0x6C70000000000000) && v383 == v382;
      if (!v384 && (OUTLINED_FUNCTION_153() & 1) == 0)
      {
        v566 = v68 == (OUTLINED_FUNCTION_226() & 0xFFFFFFFFFFFFLL | 0x6172000000000000) && v565 == v564;
        if (!v566 && (OUTLINED_FUNCTION_153() & 1) == 0)
        {

          sub_1C5C64D74(0, &qword_1ED7DCCF0);
          sub_1C6016940();
          OUTLINED_FUNCTION_74();
          v946 = 0;
          v949 = sub_1C6017840();
          v950 = v783;
LABEL_326:
          OUTLINED_FUNCTION_131_0();
          MEMORY[0x1C69534E0]();
          goto LABEL_211;
        }

        v567 = v941 == 0x65726F7473 && v940 == 0xE500000000000000;
        if (v567 || (sub_1C6017860() & 1) != 0)
        {
          sub_1C6014E90();
          OUTLINED_FUNCTION_99_0();
          OUTLINED_FUNCTION_58();
          v568 = swift_allocObject();
          OUTLINED_FUNCTION_67_0(v568);
          v569 = v936;
          sub_1C60162B0();
          sub_1C6016F30();
          OUTLINED_FUNCTION_65_0();
          v570 = swift_allocObject();
          OUTLINED_FUNCTION_70(v570);
          OUTLINED_FUNCTION_65_0();
          v571 = swift_allocObject();
          OUTLINED_FUNCTION_29(v571);
          OUTLINED_FUNCTION_58();
          v572 = swift_allocObject();
          *(v572 + 16) = sub_1C5CB83D8;
          *(v572 + 24) = 0x656369766564;
          OUTLINED_FUNCTION_58();
          v573 = swift_allocObject();
          *(v573 + 16) = sub_1C5CB83D4;
          *(v573 + 24) = v572;
          v574 = OUTLINED_FUNCTION_63();
          sub_1C5E1018C(v574, 3);
          *v575 = sub_1C5CB8408;
          v575[1] = v570;
          v575[2] = sub_1C5CB8408;
          v575[3] = v68;
          v575[4] = sub_1C5CB837C;
          v575[5] = v573;

          if (OUTLINED_FUNCTION_127())
          {
            OUTLINED_FUNCTION_68_1();
            swift_slowAlloc();
            OUTLINED_FUNCTION_64_0();
            v576 = swift_slowAlloc();
            v949 = v576;
            OUTLINED_FUNCTION_13_0();

            OUTLINED_FUNCTION_96();
            OUTLINED_FUNCTION_278();
            OUTLINED_FUNCTION_124_0();
            OUTLINED_FUNCTION_171();

            OUTLINED_FUNCTION_277();

            OUTLINED_FUNCTION_94_0(&dword_1C5C61000, v577, v578, "[XSQ:Content] init | x-sampradio | stationID=%{public}s");
            __swift_destroy_boxed_opaque_existential_0(v576);
            v579 = OUTLINED_FUNCTION_19();
            MEMORY[0x1C6956920](v579);
            v580 = OUTLINED_FUNCTION_30_0();
            MEMORY[0x1C6956920](v580);
          }

          else
          {
          }

          OUTLINED_FUNCTION_200();
          if (v702)
          {
            OUTLINED_FUNCTION_107_0();
            v703 = swift_allocObject();
            *(v703 + 16) = v569;
            *(v703 + 24) = v943;
            *(v703 + 32) = 0;
            *(v703 + 40) = 0;
            *(v703 + 48) = 64;
            OUTLINED_FUNCTION_58();
            v704 = swift_allocObject();
            *(v704 + 16) = sub_1C5CB8470;
            *(v704 + 24) = v703;
            swift_bridgeObjectRetain_n();

            v705 = v936;
            v76 = sub_1C60162B0();
            v706 = sub_1C6016F30();
            OUTLINED_FUNCTION_65_0();
            v707 = swift_allocObject();
            OUTLINED_FUNCTION_23_1(v707);
            OUTLINED_FUNCTION_65_0();
            v708 = swift_allocObject();
            OUTLINED_FUNCTION_29(v708);
            OUTLINED_FUNCTION_58();
            v709 = swift_allocObject();
            *(v709 + 16) = sub_1C5CB6090;
            *(v709 + 24) = v704;
            OUTLINED_FUNCTION_58();
            v710 = swift_allocObject();
            v711 = OUTLINED_FUNCTION_56(v710);
            sub_1C5E1018C(v711, 3);
            *v712 = sub_1C5CB8408;
            v712[1] = v705;
            v712[2] = sub_1C5CB8408;
            v712[3] = v68;
            v712[4] = sub_1C5CB837C;
            v712[5] = v710;

            LODWORD(v937) = v706;
            *&v938 = v76;
            if (os_log_type_enabled(v76, v706))
            {
              OUTLINED_FUNCTION_68_1();
              v713 = swift_slowAlloc();
              OUTLINED_FUNCTION_64_0();
              v936 = swift_slowAlloc();
              v946 = v936;
              OUTLINED_FUNCTION_13_0();

              OUTLINED_FUNCTION_96();
              v949 = 0;
              v950 = 0xE000000000000000;
              v76 = v943;

              sub_1C6017540();

              OUTLINED_FUNCTION_89();
              v949 = 0xD000000000000012;
              v950 = v714;
              MEMORY[0x1C69534E0](v941, v76);
              v715 = OUTLINED_FUNCTION_246();
              MEMORY[0x1C69534E0](v715);

              OUTLINED_FUNCTION_82();
              OUTLINED_FUNCTION_95();

              *(v713 + 4) = v68;

              OUTLINED_FUNCTION_44();
              OUTLINED_FUNCTION_190(v716, v717, v718, v719);
              __swift_destroy_boxed_opaque_existential_0(v936);
              v720 = OUTLINED_FUNCTION_22_0();
              MEMORY[0x1C6956920](v720);
              v721 = OUTLINED_FUNCTION_30_0();
              MEMORY[0x1C6956920](v721);

              v722 = OUTLINED_FUNCTION_5_0();
              v723(v722);
              OUTLINED_FUNCTION_177();
              v99 = 64;
              v97 = v76;
              goto LABEL_37;
            }

            v831 = v943;

            v832 = OUTLINED_FUNCTION_5_0();
            v833(v832);
            OUTLINED_FUNCTION_177();
            v99 = 64;
            v97 = v831;
            goto LABEL_36;
          }

          sub_1C5C64D74(0, &qword_1ED7DCCF0);
          sub_1C6016940();
          OUTLINED_FUNCTION_74();
          v946 = 201;
          v949 = sub_1C6017840();
          v950 = v784;
          OUTLINED_FUNCTION_21_1();
          goto LABEL_326;
        }

        goto LABEL_325;
      }

      OUTLINED_FUNCTION_310();
      v386 = v70 && v385 == 0xE600000000000000;
      if (v386 || (OUTLINED_FUNCTION_126_0() & 1) != 0)
      {
        v387 = OUTLINED_FUNCTION_335();
        sub_1C5CD4534(v387);
        OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_221();
        v388 = swift_allocObject();
        v389 = OUTLINED_FUNCTION_52_0(v388);
        sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v390 = swift_allocObject();
        OUTLINED_FUNCTION_23_1(v390);
        OUTLINED_FUNCTION_65_0();
        v391 = swift_allocObject();
        OUTLINED_FUNCTION_32_0(v391);
        OUTLINED_FUNCTION_58();
        v392 = swift_allocObject();
        *(v392 + 16) = sub_1C5CB8394;
        *(v392 + 24) = 0x656369766564;
        OUTLINED_FUNCTION_58();
        v393 = swift_allocObject();
        v394 = OUTLINED_FUNCTION_57(v393);
        sub_1C5E1018C(v394, 3);
        *v395 = sub_1C5CB8408;
        v395[1] = 0x65726F7473;
        v395[2] = sub_1C5CB8408;
        v395[3] = v69;
        v395[4] = sub_1C5CB837C;
        v395[5] = v393;

        OUTLINED_FUNCTION_205();
        if (os_log_type_enabled(v389, v396))
        {
          v935 = v389;
          OUTLINED_FUNCTION_68_1();
          v397 = swift_slowAlloc();
          OUTLINED_FUNCTION_64_0();
          v398 = swift_slowAlloc();
          v949 = v398;
          OUTLINED_FUNCTION_132();
          OUTLINED_FUNCTION_265();
          v399 = v941;
          if (v941)
          {
            v400 = OUTLINED_FUNCTION_78();
          }

          else
          {
            OUTLINED_FUNCTION_286();
            v400 = sub_1C6017380();
          }

          OUTLINED_FUNCTION_232(v400);
          OUTLINED_FUNCTION_113();

          *(v397 + 4) = v69;

          OUTLINED_FUNCTION_115();
          v633 = v935;
          OUTLINED_FUNCTION_239();
          _os_log_impl(v634, v635, v636, v637, v638, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v398);
          v639 = OUTLINED_FUNCTION_17();
          MEMORY[0x1C6956920](v639);
          v640 = OUTLINED_FUNCTION_19();
          MEMORY[0x1C6956920](v640);
        }

        else
        {
          v399 = v941;
        }

        if ((v399 & 1) == 0)
        {
          v1000[0] = 0;
          v1000[1] = 0;
          v1000[2] = 5;
          v1000[3] = v943;
          v1001 = 1;
          OUTLINED_FUNCTION_107_0();
          v642 = swift_allocObject();
          OUTLINED_FUNCTION_218(v642);
          OUTLINED_FUNCTION_58();
          v97 = swift_allocObject();
          OUTLINED_FUNCTION_264(v97);
          v643 = v936;
          v644 = sub_1C60162B0();
          v645 = sub_1C6016F30();
          OUTLINED_FUNCTION_65_0();
          v646 = swift_allocObject();
          OUTLINED_FUNCTION_23_1(v646);
          OUTLINED_FUNCTION_65_0();
          v647 = swift_allocObject();
          OUTLINED_FUNCTION_32_0(v647);
          OUTLINED_FUNCTION_58();
          v648 = swift_allocObject();
          *(v648 + 16) = sub_1C5CB83DC;
          *(v648 + 24) = v97;
          OUTLINED_FUNCTION_58();
          v649 = swift_allocObject();
          *(v649 + 16) = sub_1C5CB83D4;
          *(v649 + 24) = v648;
          v650 = OUTLINED_FUNCTION_63();
          sub_1C5E1018C(v650, 3);
          *v651 = sub_1C5CB8408;
          v651[1] = v643;
          v651[2] = sub_1C5CB8408;
          v651[3] = v69;
          v651[4] = sub_1C5CB837C;
          v651[5] = v649;

          LODWORD(v941) = v645;
          v652 = OUTLINED_FUNCTION_162();
          if (os_log_type_enabled(v652, v653))
          {
            OUTLINED_FUNCTION_68_1();
            v654 = swift_slowAlloc();
            *&v938 = v644;
            v655 = v654;
            OUTLINED_FUNCTION_64_0();
            v656 = swift_slowAlloc();
            OUTLINED_FUNCTION_34_0(v656);

            OUTLINED_FUNCTION_192();

            OUTLINED_FUNCTION_4_0();
            sub_1C5CAF1A0();
            OUTLINED_FUNCTION_284();

            OUTLINED_FUNCTION_75_0();
            OUTLINED_FUNCTION_82();
            OUTLINED_FUNCTION_113();

            *(v655 + 4) = v69;

            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_266(v657, v658, v659, v660);
            __swift_destroy_boxed_opaque_existential_0(v656);
            v661 = OUTLINED_FUNCTION_16_1();
            MEMORY[0x1C6956920](v661);
            v662 = OUTLINED_FUNCTION_22_0();
            MEMORY[0x1C6956920](v662);
          }

          else
          {
          }

          v695 = OUTLINED_FUNCTION_5_0();
          v696(v695);
          OUTLINED_FUNCTION_217();
          v76 = 5;
          goto LABEL_87;
        }

        sub_1C5C64D74(0, &qword_1ED7DCCF0);
        sub_1C6016940();
        OUTLINED_FUNCTION_51();
        v949 = sub_1C6017840();
        v950 = v641;
        goto LABEL_209;
      }

      v582 = v941 == 0x65726F7473 && v940 == 0xE500000000000000;
      if (v582 || (OUTLINED_FUNCTION_130_0() & 1) != 0)
      {
        sub_1C6014E90();
        OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_58();
        v583 = swift_allocObject();
        OUTLINED_FUNCTION_67_0(v583);
        v584 = v936;
        sub_1C60162B0();
        sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v585 = swift_allocObject();
        OUTLINED_FUNCTION_70(v585);
        OUTLINED_FUNCTION_65_0();
        v586 = swift_allocObject();
        OUTLINED_FUNCTION_29(v586);
        OUTLINED_FUNCTION_58();
        v587 = swift_allocObject();
        *(v587 + 16) = sub_1C5CB83D8;
        *(v587 + 24) = 0x656369766564;
        OUTLINED_FUNCTION_58();
        v588 = swift_allocObject();
        *(v588 + 16) = sub_1C5CB83D4;
        *(v588 + 24) = v587;
        v589 = OUTLINED_FUNCTION_63();
        sub_1C5E1018C(v589, 3);
        *v590 = sub_1C5CB8408;
        v590[1] = v585;
        v590[2] = sub_1C5CB8408;
        v590[3] = v68;
        v590[4] = sub_1C5CB837C;
        v590[5] = v588;

        if (OUTLINED_FUNCTION_127())
        {
          OUTLINED_FUNCTION_68_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_64_0();
          v591 = swift_slowAlloc();
          v949 = v591;
          OUTLINED_FUNCTION_13_0();

          OUTLINED_FUNCTION_96();
          OUTLINED_FUNCTION_278();
          OUTLINED_FUNCTION_124_0();
          OUTLINED_FUNCTION_171();

          OUTLINED_FUNCTION_277();

          OUTLINED_FUNCTION_94_0(&dword_1C5C61000, v592, v593, "[XSQ:Content] init | x-sampplaylist / store | globalPlaylistID=%{public}s");
          __swift_destroy_boxed_opaque_existential_0(v591);
          v594 = OUTLINED_FUNCTION_19();
          MEMORY[0x1C6956920](v594);
          v595 = OUTLINED_FUNCTION_30_0();
          MEMORY[0x1C6956920](v595);
        }

        else
        {
        }

        OUTLINED_FUNCTION_200();
        if (v724)
        {
          OUTLINED_FUNCTION_107_0();
          v725 = swift_allocObject();
          *(v725 + 16) = v584;
          *(v725 + 24) = v943;
          *(v725 + 32) = xmmword_1C6031170;
          *(v725 + 48) = 0x80;
          OUTLINED_FUNCTION_58();
          v726 = swift_allocObject();
          *(v726 + 16) = sub_1C5CB8470;
          *(v726 + 24) = v725;
          swift_bridgeObjectRetain_n();

          v727 = v936;
          v728 = sub_1C60162B0();
          v729 = sub_1C6016F30();
          OUTLINED_FUNCTION_65_0();
          v730 = swift_allocObject();
          OUTLINED_FUNCTION_23_1(v730);
          OUTLINED_FUNCTION_65_0();
          v731 = swift_allocObject();
          OUTLINED_FUNCTION_29(v731);
          OUTLINED_FUNCTION_58();
          v732 = swift_allocObject();
          *(v732 + 16) = sub_1C5CB83DC;
          *(v732 + 24) = v726;
          OUTLINED_FUNCTION_58();
          v733 = swift_allocObject();
          *(v733 + 16) = sub_1C5CB83D4;
          *(v733 + 24) = v732;
          v734 = OUTLINED_FUNCTION_63();
          sub_1C5E1018C(v734, 3);
          *v735 = sub_1C5CB8408;
          v735[1] = v727;
          v735[2] = sub_1C5CB8408;
          v735[3] = v68;
          v735[4] = sub_1C5CB837C;
          v735[5] = v733;

          LODWORD(v937) = v729;
          *&v938 = v728;
          if (os_log_type_enabled(v728, v729))
          {
            OUTLINED_FUNCTION_68_1();
            v736 = swift_slowAlloc();
            OUTLINED_FUNCTION_64_0();
            v936 = swift_slowAlloc();
            v948 = v936;
            *v736 = 258;
            *(v736 + 2) = 34;

            OUTLINED_FUNCTION_192();

            OUTLINED_FUNCTION_33();
            v949 = v737;
            v950 = v738;
            v946 = 0;
            v947 = 0xE000000000000000;
            v739 = v943;

            sub_1C6017540();

            OUTLINED_FUNCTION_89();
            v946 = 0xD000000000000011;
            v947 = v740;
            MEMORY[0x1C69534E0](v941, v739);
            v741 = OUTLINED_FUNCTION_246();
            MEMORY[0x1C69534E0](v741);
            v742 = v947;
            MEMORY[0x1C69534E0](v946, v947);

            OUTLINED_FUNCTION_75_0();

            v743 = v950;
            sub_1C5C6AB10(v949, v950, &v948);
            OUTLINED_FUNCTION_95();

            *(v736 + 4) = v742;

            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_266(v744, v745, v746, v747);
            __swift_destroy_boxed_opaque_existential_0(v936);
            v748 = OUTLINED_FUNCTION_16_1();
            MEMORY[0x1C6956920](v748);
            v749 = OUTLINED_FUNCTION_22_0();
            MEMORY[0x1C6956920](v749);

            v750 = OUTLINED_FUNCTION_5_0();
            v751(v750);
            v100 = v941;
            v98 = 0;
            v76 = 128;
            v97 = v739;
            v99 = 0x80;
            goto LABEL_37;
          }

          v834 = v943;

          v835 = OUTLINED_FUNCTION_5_0();
          v836(v835);
          v98 = 0;
          v76 = 128;
          v97 = v834;
          goto LABEL_102;
        }

        sub_1C5C64D74(0, &qword_1ED7DCCF0);
        sub_1C6016940();
        OUTLINED_FUNCTION_74();
        v946 = 114;
        v949 = sub_1C6017840();
        v950 = v785;
        OUTLINED_FUNCTION_21_1();
        goto LABEL_326;
      }

      OUTLINED_FUNCTION_48();
      v787 = v70 && v940 == 0xE800000000000000;
      if (v787 || (OUTLINED_FUNCTION_187() & 1) != 0)
      {
        v788 = sub_1C6014E90();
        v790 = v789;
        OUTLINED_FUNCTION_58();
        v791 = swift_allocObject();
        v941 = v788;
        *(v791 + 16) = v788;
        *(v791 + 24) = v790;
        OUTLINED_FUNCTION_289();
        swift_bridgeObjectRetain_n();
        v792 = sub_1C60162B0();
        LODWORD(v788) = sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v793 = swift_allocObject();
        OUTLINED_FUNCTION_70(v793);
        OUTLINED_FUNCTION_65_0();
        v794 = swift_allocObject();
        OUTLINED_FUNCTION_32_0(v794);
        OUTLINED_FUNCTION_58();
        v795 = swift_allocObject();
        *(v795 + 16) = sub_1C5CB83D8;
        *(v795 + 24) = v791;
        OUTLINED_FUNCTION_58();
        v796 = swift_allocObject();
        *(v796 + 16) = sub_1C5CB83D4;
        *(v796 + 24) = v795;
        v797 = OUTLINED_FUNCTION_63();
        sub_1C5E1018C(v797, 3);
        *v798 = sub_1C5CB8408;
        v798[1] = v793;
        v798[2] = sub_1C5CB8408;
        v798[3] = v69;
        v798[4] = sub_1C5CB837C;
        v798[5] = v796;

        LODWORD(v935) = v788;
        if (os_log_type_enabled(v792, v788))
        {
          OUTLINED_FUNCTION_68_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_45_1();
          v799 = swift_slowAlloc();
          OUTLINED_FUNCTION_20(v799);

          OUTLINED_FUNCTION_133();
          v800 = v938;

          v801 = sub_1C5C6AB10(v941, v800, &v949);

          *(v792 + 4) = v801;

          OUTLINED_FUNCTION_169();
          _os_log_impl(v802, v803, v804, v805, v806, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v799);
          v807 = OUTLINED_FUNCTION_19();
          MEMORY[0x1C6956920](v807);
          v808 = OUTLINED_FUNCTION_16_1();
          MEMORY[0x1C6956920](v808);
        }

        else
        {
        }

        v935 = sub_1C6014F40();
        OUTLINED_FUNCTION_288();
        if (v361)
        {
        }

        else
        {
          OUTLINED_FUNCTION_263();
          OUTLINED_FUNCTION_191();
          v860 = sub_1C6016950();
          v941 = v860;
          v943 = v861;
          if (v861)
          {
            v1002 = v941;
            v1003 = v943;
            v1004 = 0;
            v1005 = 0;
            v1006 = 3;
            OUTLINED_FUNCTION_107_0();
            v862 = swift_allocObject();
            OUTLINED_FUNCTION_302(v862);
            OUTLINED_FUNCTION_58();
            v863 = swift_allocObject();
            *(v863 + 16) = sub_1C5CB8470;
            *(v863 + 24) = v792;
            OUTLINED_FUNCTION_211();

            v864 = v936;
            v936 = sub_1C60162B0();
            v76 = sub_1C6016F30();
            OUTLINED_FUNCTION_65_0();
            v865 = swift_allocObject();
            OUTLINED_FUNCTION_23_1(v865);
            OUTLINED_FUNCTION_65_0();
            v866 = swift_allocObject();
            OUTLINED_FUNCTION_29(v866);
            OUTLINED_FUNCTION_58();
            v867 = swift_allocObject();
            *(v867 + 16) = sub_1C5CB83DC;
            *(v867 + 24) = v863;
            OUTLINED_FUNCTION_58();
            v868 = swift_allocObject();
            v869 = OUTLINED_FUNCTION_56(v868);
            sub_1C5E1018C(v869, 3);
            *v870 = sub_1C5CB8408;
            v870[1] = v864;
            v870[2] = sub_1C5CB8408;
            v870[3] = v796;
            v870[4] = sub_1C5CB837C;
            v870[5] = v868;
            OUTLINED_FUNCTION_349();

            LODWORD(v934) = v76;
            if (os_log_type_enabled(v936, v76))
            {
              OUTLINED_FUNCTION_68_1();
              swift_slowAlloc();
              OUTLINED_FUNCTION_46();
              v931 = swift_slowAlloc();
              v946 = v931;
              OUTLINED_FUNCTION_42_0();

              OUTLINED_FUNCTION_193();

              OUTLINED_FUNCTION_4_0();
              v97 = v943;

              sub_1C5CAF1A0();
              OUTLINED_FUNCTION_234();

              OUTLINED_FUNCTION_75_0();

              OUTLINED_FUNCTION_82();
              OUTLINED_FUNCTION_95();

              OUTLINED_FUNCTION_333();

              v375 = "[XSQ:Content] init | x-sampcollection-artist / ulid | %{public}s";
              goto LABEL_305;
            }

LABEL_344:

            v871 = OUTLINED_FUNCTION_191();
            sub_1C5CB6098(v871, v872);

            v97 = v943;
            goto LABEL_228;
          }

          v890 = OUTLINED_FUNCTION_191();
          sub_1C5CB6098(v890, v891);
        }

        sub_1C5C64D74(0, &qword_1ED7DCCF0);
        sub_1C6016940();
        OUTLINED_FUNCTION_74();
        v949 = OUTLINED_FUNCTION_262(150);
        v950 = v892;
        OUTLINED_FUNCTION_21_1();
        goto LABEL_326;
      }

      OUTLINED_FUNCTION_320();
      v874 = v941 == v873 && v940 == 0xE400000000000000;
      if (v874 || (OUTLINED_FUNCTION_156(), (OUTLINED_FUNCTION_187() & 1) != 0))
      {
        sub_1C6014E90();
        OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_58();
        v875 = swift_allocObject();
        OUTLINED_FUNCTION_67_0(v875);
        v876 = v936;
        sub_1C60162B0();
        sub_1C6016F30();
        OUTLINED_FUNCTION_65_0();
        v877 = swift_allocObject();
        OUTLINED_FUNCTION_70(v877);
        OUTLINED_FUNCTION_65_0();
        v878 = swift_allocObject();
        OUTLINED_FUNCTION_29(v878);
        OUTLINED_FUNCTION_58();
        v879 = swift_allocObject();
        *(v879 + 16) = sub_1C5CB83D8;
        *(v879 + 24) = 0x656369766564;
        OUTLINED_FUNCTION_58();
        v880 = swift_allocObject();
        *(v880 + 16) = sub_1C5CB83D4;
        *(v880 + 24) = v879;
        v881 = OUTLINED_FUNCTION_63();
        sub_1C5E1018C(v881, 3);
        *v882 = sub_1C5CB8408;
        v882[1] = v877;
        v882[2] = sub_1C5CB8408;
        v882[3] = v68;
        v882[4] = sub_1C5CB837C;
        v882[5] = v880;

        if (OUTLINED_FUNCTION_127())
        {
          OUTLINED_FUNCTION_68_1();
          swift_slowAlloc();
          OUTLINED_FUNCTION_64_0();
          v883 = swift_slowAlloc();
          v949 = v883;
          OUTLINED_FUNCTION_13_0();

          OUTLINED_FUNCTION_96();
          OUTLINED_FUNCTION_278();
          OUTLINED_FUNCTION_124_0();
          OUTLINED_FUNCTION_171();

          OUTLINED_FUNCTION_277();

          OUTLINED_FUNCTION_94_0(&dword_1C5C61000, v884, v885, "[XSQ:Content] init | x-sampplaylist / ulid | ulid=%{public}s");
          __swift_destroy_boxed_opaque_existential_0(v883);
          v886 = OUTLINED_FUNCTION_19();
          MEMORY[0x1C6956920](v886);
          v887 = OUTLINED_FUNCTION_30_0();
          MEMORY[0x1C6956920](v887);
        }

        else
        {
        }

        OUTLINED_FUNCTION_201();
        if (v893)
        {
          v894 = v941;
          v895 = v943;
          v1007[0] = v941;
          v1007[1] = v943;
          v938 = xmmword_1C6031160;
          v1008 = xmmword_1C6031160;
          v1009 = 4;
          OUTLINED_FUNCTION_107_0();
          v896 = swift_allocObject();
          v896[1].n128_u64[0] = v894;
          v896[1].n128_u64[1] = v895;
          OUTLINED_FUNCTION_150(v896);
          OUTLINED_FUNCTION_58();
          v897 = swift_allocObject();
          *(v897 + 16) = sub_1C5CB8470;
          *(v897 + 24) = v896;
          OUTLINED_FUNCTION_211();

          v898 = v936;
          v536 = sub_1C60162B0();
          sub_1C6016F30();
          OUTLINED_FUNCTION_65_0();
          v899 = swift_allocObject();
          OUTLINED_FUNCTION_23_1(v899);
          OUTLINED_FUNCTION_65_0();
          v900 = swift_allocObject();
          OUTLINED_FUNCTION_29(v900);
          OUTLINED_FUNCTION_58();
          v901 = swift_allocObject();
          *(v901 + 16) = sub_1C5CB83DC;
          *(v901 + 24) = v897;
          OUTLINED_FUNCTION_58();
          v902 = swift_allocObject();
          v903 = OUTLINED_FUNCTION_56(v902);
          sub_1C5E1018C(v903, 3);
          *v904 = sub_1C5CB8408;
          v904[1] = v898;
          v904[2] = sub_1C5CB8408;
          v904[3] = v68;
          v904[4] = sub_1C5CB837C;
          v904[5] = v902;

          if (OUTLINED_FUNCTION_181())
          {
            OUTLINED_FUNCTION_68_1();
            swift_slowAlloc();
            OUTLINED_FUNCTION_64_0();
            v936 = swift_slowAlloc();
            v946 = v936;
            OUTLINED_FUNCTION_13_0();

            OUTLINED_FUNCTION_96();
            OUTLINED_FUNCTION_4_0();
            OUTLINED_FUNCTION_125();

            sub_1C5CAF1A0();
            OUTLINED_FUNCTION_234();

            OUTLINED_FUNCTION_75_0();

            OUTLINED_FUNCTION_82();
            OUTLINED_FUNCTION_95();

            OUTLINED_FUNCTION_348();

            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_190(v905, v906, v907, v908);
            __swift_destroy_boxed_opaque_existential_0(v936);
            v909 = OUTLINED_FUNCTION_22_0();
            MEMORY[0x1C6956920](v909);
            v910 = OUTLINED_FUNCTION_30_0();
            MEMORY[0x1C6956920](v910);
          }

          else
          {

            OUTLINED_FUNCTION_125();
          }

          v912 = OUTLINED_FUNCTION_5_0();
          v913(v912);
          OUTLINED_FUNCTION_314();
          v76 = 5;
          goto LABEL_267;
        }

LABEL_309:

        sub_1C5C64D74(0, &qword_1ED7DCCF0);
        sub_1C6016940();
        OUTLINED_FUNCTION_74();
        OUTLINED_FUNCTION_316();
        v949 = sub_1C6017840();
        v950 = v786;
        OUTLINED_FUNCTION_21_1();
        goto LABEL_326;
      }
    }

LABEL_363:

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_50();
    v949 = sub_1C6017840();
    v950 = v911;
    OUTLINED_FUNCTION_21_1();
    goto LABEL_326;
  }

  OUTLINED_FUNCTION_310();
  v108 = v70 && v107 == 0xE600000000000000;
  if (v108 || (OUTLINED_FUNCTION_126_0() & 1) != 0)
  {
    v939 = v48;
    v109 = sub_1C6014E90();
    sub_1C5CD4534(v109);
    OUTLINED_FUNCTION_99_0();
    OUTLINED_FUNCTION_221();
    v110 = swift_allocObject();
    v111 = OUTLINED_FUNCTION_52_0(v110);
    sub_1C6016F30();
    OUTLINED_FUNCTION_65_0();
    v112 = swift_allocObject();
    OUTLINED_FUNCTION_70(v112);
    OUTLINED_FUNCTION_65_0();
    v113 = swift_allocObject();
    OUTLINED_FUNCTION_69(v113);
    OUTLINED_FUNCTION_58();
    v114 = swift_allocObject();
    *(v114 + 16) = sub_1C5CB8394;
    *(v114 + 24) = 0x656369766564;
    OUTLINED_FUNCTION_58();
    v115 = swift_allocObject();
    v116 = OUTLINED_FUNCTION_57(v115);
    OUTLINED_FUNCTION_81(v116);
    v117[4] = sub_1C5CB8408;
    v117[5] = v112;
    v117[6] = sub_1C5CB8408;
    v117[7] = v113;
    v117[8] = sub_1C5CB837C;
    v117[9] = v115;
    swift_setDeallocating();

    sub_1C5D677CC();
    OUTLINED_FUNCTION_205();
    if (os_log_type_enabled(v111, v118))
    {
      v935 = v111;
      OUTLINED_FUNCTION_68_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_46();
      v119 = swift_slowAlloc();
      v949 = v119;
      OUTLINED_FUNCTION_42_0();

      OUTLINED_FUNCTION_193();

      if (v941)
      {
        v120 = OUTLINED_FUNCTION_78();
      }

      else
      {
        OUTLINED_FUNCTION_286();
        v120 = sub_1C6017380();
      }

      v8 = v942;
      OUTLINED_FUNCTION_232(v120);
      OUTLINED_FUNCTION_118();

      *(v111 + 4) = v113;

      OUTLINED_FUNCTION_115();
      v186 = v935;
      OUTLINED_FUNCTION_339(v187, v935, v188, v189);
      __swift_destroy_boxed_opaque_existential_0(v119);
      v190 = OUTLINED_FUNCTION_16_1();
      MEMORY[0x1C6956920](v190);
      v191 = OUTLINED_FUNCTION_17();
      MEMORY[0x1C6956920](v191);
    }

    else
    {

      v8 = v942;
    }

    if ((v941 & 1) == 0)
    {
      v961 = 0;
      v962 = 0;
      v194 = v943;
      v963 = 1;
      v964 = v943;
      v965 = 1;
      OUTLINED_FUNCTION_107_0();
      v195 = swift_allocObject();
      *(v195 + 16) = 0;
      *(v195 + 24) = 0;
      *(v195 + 32) = 1;
      *(v195 + 40) = v194;
      *(v195 + 48) = 1;
      OUTLINED_FUNCTION_58();
      v196 = swift_allocObject();
      OUTLINED_FUNCTION_264(v196);
      v941 = sub_1C60162B0();
      v197 = sub_1C6016F30();
      OUTLINED_FUNCTION_65_0();
      v198 = swift_allocObject();
      OUTLINED_FUNCTION_70(v198);
      OUTLINED_FUNCTION_65_0();
      v199 = swift_allocObject();
      OUTLINED_FUNCTION_69(v199);
      OUTLINED_FUNCTION_58();
      v200 = swift_allocObject();
      *(v200 + 16) = sub_1C5CB83DC;
      *(v200 + 24) = v196;
      OUTLINED_FUNCTION_58();
      v201 = swift_allocObject();
      v202 = OUTLINED_FUNCTION_57(v201);
      OUTLINED_FUNCTION_81(v202);
      v203[4] = sub_1C5CB8408;
      v203[5] = v198;
      v203[6] = sub_1C5CB8408;
      v203[7] = v199;
      v203[8] = sub_1C5CB837C;
      v203[9] = v201;
      swift_setDeallocating();
      *&v938 = v196;

      sub_1C5D677CC();
      LODWORD(v937) = v197;
      if (os_log_type_enabled(v941, v197))
      {
        OUTLINED_FUNCTION_68_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_45_1();
        v204 = swift_slowAlloc();
        v946 = v204;
        OUTLINED_FUNCTION_24_0();

        *(v197 + 3) = 8;

        OUTLINED_FUNCTION_4_0();
        v205 = sub_1C5CAF1A0();
        v207 = v206;
        MEMORY[0x1C69534E0](v205);

        OUTLINED_FUNCTION_75_0();
        OUTLINED_FUNCTION_82();
        OUTLINED_FUNCTION_118();

        *(v197 + 4) = v207;

        v208 = v941;
        OUTLINED_FUNCTION_169();
        _os_log_impl(v209, v210, v211, v212, v213, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v204);
        v214 = OUTLINED_FUNCTION_22_0();
        MEMORY[0x1C6956920](v214);
        v215 = OUTLINED_FUNCTION_16_1();
        MEMORY[0x1C6956920](v215);
      }

      else
      {
      }

      v216 = OUTLINED_FUNCTION_5_0();
      v217(v216);
      v100 = 0;
      v97 = 0;
      v76 = 1;
      v99 = 1;
      goto LABEL_87;
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_51();
    v949 = sub_1C6017840();
    v950 = v192;
    OUTLINED_FUNCTION_21_1();
    v58 = v193 - 9;
    goto LABEL_11;
  }

  v181 = v941 == 0x65726F7473 && v940 == 0xE500000000000000;
  if (!v181 && (OUTLINED_FUNCTION_130_0() & 1) == 0)
  {
    OUTLINED_FUNCTION_48();
    v289 = v70 && v288 == 0xE800000000000000;
    v939 = v48;
    if (v289 || (OUTLINED_FUNCTION_187() & 1) != 0)
    {
      sub_1C6014E90();
      OUTLINED_FUNCTION_99_0();
      OUTLINED_FUNCTION_58();
      v290 = swift_allocObject();
      *&v938 = v69;
      v290[2] = v69;
      v290[3] = v971;
      OUTLINED_FUNCTION_211();
      v941 = sub_1C60162B0();
      v291 = sub_1C6016F30();
      OUTLINED_FUNCTION_65_0();
      v292 = swift_allocObject();
      OUTLINED_FUNCTION_70(v292);
      OUTLINED_FUNCTION_65_0();
      v293 = swift_allocObject();
      OUTLINED_FUNCTION_32_0(v293);
      OUTLINED_FUNCTION_58();
      v294 = swift_allocObject();
      *(v294 + 16) = sub_1C5CB613C;
      *(v294 + 24) = v290;
      OUTLINED_FUNCTION_58();
      v295 = swift_allocObject();
      *(v295 + 16) = sub_1C5CB83D4;
      *(v295 + 24) = v294;
      v296 = OUTLINED_FUNCTION_63();
      sub_1C5E1018C(v296, 3);
      *v297 = sub_1C5CB8408;
      v297[1] = v292;
      v297[2] = sub_1C5CB8408;
      v297[3] = v69;
      v297[4] = sub_1C5CB837C;
      v297[5] = v295;

      LODWORD(v935) = v291;
      if (os_log_type_enabled(v941, v291))
      {
        OUTLINED_FUNCTION_68_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_45_1();
        v298 = swift_slowAlloc();
        OUTLINED_FUNCTION_20(v298);

        OUTLINED_FUNCTION_133();

        v299 = OUTLINED_FUNCTION_321();

        *(v291 + 4) = v299;

        OUTLINED_FUNCTION_230(&dword_1C5C61000, v300, v301, "[XSQ:Content] init | x-sampmeditem / sirisync | syncID=%{public}s");
        __swift_destroy_boxed_opaque_existential_0(v298);
        v302 = OUTLINED_FUNCTION_17();
        MEMORY[0x1C6956920](v302);
        v303 = OUTLINED_FUNCTION_16_1();
        MEMORY[0x1C6956920](v303);
      }

      else
      {
      }

      sub_1C6014F40();
      OUTLINED_FUNCTION_288();
      if (v361)
      {
      }

      else
      {
        v362 = v360;
        OUTLINED_FUNCTION_263();
        OUTLINED_FUNCTION_243();
        v363 = sub_1C6016950();
        if (v364)
        {
          v365 = v364;
          v935 = v362;
          *&v938 = v971;
          v966 = v363;
          v967 = v364;
          v968 = 0;
          v969 = 0;
          v970 = 3;
          v366 = v363;
          v367 = swift_allocObject();
          v941 = v366;
          *(v367 + 16) = v366;
          *(v367 + 24) = v365;
          *(v367 + 32) = 0;
          *(v367 + 40) = 0;
          *(v367 + 48) = 3;
          OUTLINED_FUNCTION_58();
          v76 = swift_allocObject();
          *(v76 + 16) = sub_1C5CB8470;
          *(v76 + 24) = v367;
          *&v934 = v365;
          swift_bridgeObjectRetain_n();

          v368 = v936;
          v943 = sub_1C60162B0();
          LODWORD(v365) = sub_1C6016F30();
          OUTLINED_FUNCTION_65_0();
          v369 = swift_allocObject();
          OUTLINED_FUNCTION_23_1(v369);
          OUTLINED_FUNCTION_65_0();
          v370 = swift_allocObject();
          OUTLINED_FUNCTION_29(v370);
          OUTLINED_FUNCTION_58();
          v371 = swift_allocObject();
          *(v371 + 16) = sub_1C5CB83DC;
          *(v371 + 24) = v76;
          OUTLINED_FUNCTION_58();
          v372 = swift_allocObject();
          v373 = OUTLINED_FUNCTION_56(v372);
          sub_1C5E1018C(v373, 3);
          *v374 = sub_1C5CB8408;
          v374[1] = v368;
          v374[2] = sub_1C5CB8408;
          v374[3] = v295;
          v374[4] = sub_1C5CB837C;
          v374[5] = v372;
          v937 = v76;

          LODWORD(v936) = v365;
          if (os_log_type_enabled(v943, v365))
          {
            OUTLINED_FUNCTION_68_1();
            swift_slowAlloc();
            OUTLINED_FUNCTION_46();
            v931 = swift_slowAlloc();
            v946 = v931;
            OUTLINED_FUNCTION_42_0();

            OUTLINED_FUNCTION_193();

            OUTLINED_FUNCTION_4_0();
            v97 = v934;

            sub_1C5CAF1A0();
            OUTLINED_FUNCTION_234();

            OUTLINED_FUNCTION_75_0();

            OUTLINED_FUNCTION_82();
            OUTLINED_FUNCTION_95();

            OUTLINED_FUNCTION_333();

            v375 = "[XSQ:Content] init | x-sampmeditem / sirisync | %{public}s";
LABEL_154:
            v376 = v936;
            v377 = v943;
LABEL_155:
            OUTLINED_FUNCTION_339(&dword_1C5C61000, v377, v376, v375);
            __swift_destroy_boxed_opaque_existential_0(v931);
            v378 = OUTLINED_FUNCTION_22_0();
            MEMORY[0x1C6956920](v378);
            v379 = OUTLINED_FUNCTION_17();
            MEMORY[0x1C6956920](v379);
            v380 = OUTLINED_FUNCTION_191();
            sub_1C5CB6098(v380, v381);

LABEL_229:
            v562 = OUTLINED_FUNCTION_5_0();
            v563(v562);
            OUTLINED_FUNCTION_177();
            v99 = 3;
            goto LABEL_36;
          }

LABEL_227:

          v560 = OUTLINED_FUNCTION_191();
          sub_1C5CB6098(v560, v561);

          v97 = v934;
LABEL_228:

          goto LABEL_229;
        }

        v516 = OUTLINED_FUNCTION_243();
        sub_1C5CB6098(v516, v517);
      }

      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      OUTLINED_FUNCTION_74();
      v949 = OUTLINED_FUNCTION_262(150);
      v950 = v518;
      OUTLINED_FUNCTION_21_1();
      goto LABEL_209;
    }

    OUTLINED_FUNCTION_320();
    v434 = v432 == v433 && v431 == 0xE400000000000000;
    if (v434 || (OUTLINED_FUNCTION_156(), (sub_1C6017860() & 1) != 0))
    {
      v435 = sub_1C6014E90();
      v437 = v436;
      OUTLINED_FUNCTION_58();
      v438 = swift_allocObject();
      v941 = v435;
      v438[2] = v435;
      v438[3] = v437;
      v943 = v437;
      swift_bridgeObjectRetain_n();
      sub_1C60162B0();
      v439 = sub_1C6016F30();
      OUTLINED_FUNCTION_65_0();
      v440 = swift_allocObject();
      OUTLINED_FUNCTION_70(v440);
      OUTLINED_FUNCTION_65_0();
      v441 = swift_allocObject();
      OUTLINED_FUNCTION_29(v441);
      OUTLINED_FUNCTION_58();
      v442 = swift_allocObject();
      *(v442 + 16) = sub_1C5CB83D8;
      *(v442 + 24) = v438;
      OUTLINED_FUNCTION_58();
      v443 = swift_allocObject();
      *(v443 + 16) = sub_1C5CB83D4;
      *(v443 + 24) = v442;
      v444 = OUTLINED_FUNCTION_63();
      sub_1C5E1018C(v444, 3);
      *v445 = sub_1C5CB8408;
      v445[1] = v440;
      v445[2] = sub_1C5CB8408;
      v445[3] = v68;
      v445[4] = sub_1C5CB837C;
      v445[5] = v443;

      v446 = OUTLINED_FUNCTION_289();
      if (os_log_type_enabled(v446, v447))
      {
        OUTLINED_FUNCTION_68_1();
        swift_slowAlloc();
        LODWORD(v935) = v439;
        OUTLINED_FUNCTION_64_0();
        v448 = swift_slowAlloc();
        v949 = v448;
        OUTLINED_FUNCTION_13_0();

        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_278();
        OUTLINED_FUNCTION_124_0();
        OUTLINED_FUNCTION_171();

        OUTLINED_FUNCTION_277();

        OUTLINED_FUNCTION_140();
        OUTLINED_FUNCTION_190(v449, v450, v451, v452);
        __swift_destroy_boxed_opaque_existential_0(v448);
        v453 = OUTLINED_FUNCTION_31_0();
        MEMORY[0x1C6956920](v453);
        v454 = OUTLINED_FUNCTION_30_0();
        MEMORY[0x1C6956920](v454);
      }

      else
      {
        v522 = v943;

        v68 = v522;
      }

      v8 = v942;
      v523 = (v68 >> 56) & 0xF;
      if ((v68 & 0x2000000000000000) == 0)
      {
        v523 = v941 & 0xFFFFFFFFFFFFLL;
      }

      if (!v523)
      {

        sub_1C5C64D74(0, &qword_1ED7DCCF0);
        sub_1C6016940();
        OUTLINED_FUNCTION_74();
        OUTLINED_FUNCTION_316();
        v949 = sub_1C6017840();
        v950 = v581;
        OUTLINED_FUNCTION_21_1();
        goto LABEL_98;
      }

      v971[0] = v941;
      v971[1] = v68;
      v938 = xmmword_1C60311A0;
      v972 = xmmword_1C60311A0;
      v973 = 4;
      v524 = v941;
      v525 = swift_allocObject();
      v525[1].n128_u64[0] = v524;
      v525[1].n128_u64[1] = v68;
      OUTLINED_FUNCTION_150(v525);
      OUTLINED_FUNCTION_58();
      v526 = swift_allocObject();
      *(v526 + 16) = sub_1C5CB8470;
      *(v526 + 24) = v525;
      swift_bridgeObjectRetain_n();

      v527 = v936;
      *&v938 = sub_1C60162B0();
      v528 = sub_1C6016F30();
      OUTLINED_FUNCTION_65_0();
      v529 = swift_allocObject();
      OUTLINED_FUNCTION_23_1(v529);
      OUTLINED_FUNCTION_65_0();
      v530 = swift_allocObject();
      OUTLINED_FUNCTION_29(v530);
      OUTLINED_FUNCTION_58();
      v531 = swift_allocObject();
      *(v531 + 16) = sub_1C5CB83DC;
      *(v531 + 24) = v526;
      OUTLINED_FUNCTION_58();
      v532 = swift_allocObject();
      v533 = OUTLINED_FUNCTION_56(v532);
      sub_1C5E1018C(v533, 3);
      *v534 = sub_1C5CB8408;
      v534[1] = v527;
      v534[2] = sub_1C5CB8408;
      v534[3] = v68;
      v534[4] = sub_1C5CB837C;
      v534[5] = v532;
      OUTLINED_FUNCTION_349();

      LODWORD(v936) = v528;
      v535 = v528;
      v536 = v938;
      if (os_log_type_enabled(v938, v535))
      {
        OUTLINED_FUNCTION_68_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_64_0();
        v537 = swift_slowAlloc();
        v946 = v537;
        OUTLINED_FUNCTION_13_0();

        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_4_0();
        OUTLINED_FUNCTION_125();

        sub_1C5CAF1A0();
        OUTLINED_FUNCTION_234();

        OUTLINED_FUNCTION_75_0();

        OUTLINED_FUNCTION_82();
        OUTLINED_FUNCTION_95();

        OUTLINED_FUNCTION_348();

        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_190(v538, v539, v540, v541);
        __swift_destroy_boxed_opaque_existential_0(v537);
        v542 = OUTLINED_FUNCTION_28_0();
        MEMORY[0x1C6956920](v542);
        v543 = OUTLINED_FUNCTION_30_0();
        MEMORY[0x1C6956920](v543);

        v544 = OUTLINED_FUNCTION_10_2();
      }

      else
      {

        OUTLINED_FUNCTION_125();

        v544 = v945;
        v545 = v8;
      }

      (v939)(v544, v545);
      OUTLINED_FUNCTION_314();
      v76 = 1;
      goto LABEL_267;
    }

    goto LABEL_363;
  }

  v182 = sub_1C6014E90();
  v183 = sub_1C5CD4534(v182);
  if (v184)
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_74();
    v949 = OUTLINED_FUNCTION_262(200);
    v950 = v185;
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_131_0();
LABEL_56:
    MEMORY[0x1C69534E0](v162);
    OUTLINED_FUNCTION_1_0();
    sub_1C5CB8318(v163, v164);
    v8 = v942;
    goto LABEL_15;
  }

  v231 = v183;
  v232 = swift_allocObject();
  v941 = v231;
  *(v232 + 16) = v231;
  *(v232 + 24) = xmmword_1C60311B0;
  *(v232 + 40) = 0;
  *(v232 + 48) = 0x80;
  OUTLINED_FUNCTION_58();
  v233 = swift_allocObject();
  *(v233 + 16) = sub_1C5CB8470;
  *(v233 + 24) = v232;

  v943 = sub_1C60162B0();
  LODWORD(v938) = sub_1C6016F30();
  OUTLINED_FUNCTION_65_0();
  v234 = swift_allocObject();
  OUTLINED_FUNCTION_70(v234);
  OUTLINED_FUNCTION_65_0();
  v235 = swift_allocObject();
  OUTLINED_FUNCTION_69(v235);
  OUTLINED_FUNCTION_58();
  v236 = swift_allocObject();
  *(v236 + 16) = sub_1C5CB83DC;
  *(v236 + 24) = v233;
  OUTLINED_FUNCTION_58();
  v237 = swift_allocObject();
  *(v237 + 16) = sub_1C5CB83D4;
  *(v237 + 24) = v236;
  v238 = OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_81(v238);
  v239[4] = sub_1C5CB8408;
  v239[5] = v234;
  v239[6] = sub_1C5CB8408;
  v239[7] = v235;
  v239[8] = sub_1C5CB837C;
  v239[9] = v237;
  swift_setDeallocating();
  v937 = v233;

  sub_1C5D677CC();
  if (!os_log_type_enabled(v943, v938))
  {

    v356 = OUTLINED_FUNCTION_10_2();
    (v48)(v356);
    v97 = 0;
    v98 = 0;
    v99 = 0x80;
    v76 = 1;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_68_1();
  v240 = swift_slowAlloc();
  v939 = v48;
  v241 = v240;
  OUTLINED_FUNCTION_64_0();
  v936 = swift_slowAlloc();
  OUTLINED_FUNCTION_34_0(v936);

  OUTLINED_FUNCTION_192();

  OUTLINED_FUNCTION_33();
  v949 = v242;
  v950 = v243;
  v76 = 1;
  v244 = sub_1C5CAF86C(v941, 0, 1);
  v246 = v245;
  MEMORY[0x1C69534E0](v244);

  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_118();

  *(v241 + 4) = v246;

  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_266(v247, v248, v249, v250);
  __swift_destroy_boxed_opaque_existential_0(v936);
  v251 = OUTLINED_FUNCTION_19();
  MEMORY[0x1C6956920](v251);
  v252 = OUTLINED_FUNCTION_22_0();
  MEMORY[0x1C6956920](v252);

  v253 = OUTLINED_FUNCTION_5_0();
  v254(v253);
  v97 = 0;
  v98 = 0;
LABEL_102:
  v99 = 0x80;
LABEL_36:
  v100 = v941;
LABEL_37:
  v101 = v933;
  *v933 = v100;
  v101[1] = v97;
  v101[2] = v76;
  v101[3] = v98;
  *(v101 + 32) = v99;
}

void sub_1C5C9F1B0()
{
  OUTLINED_FUNCTION_247();
  v171 = v2;
  OUTLINED_FUNCTION_297();
  v3 = sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_102();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_309();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v165 - v18;
  v20 = sub_1C60167E0();
  OUTLINED_FUNCTION_25();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_146();
  v26 = v25 - v24;
  (*(v22 + 104))(v25 - v24, *MEMORY[0x1E69D3960], v20);
  OUTLINED_FUNCTION_38_1();
  sub_1C5CB8318(v27, v28);
  v29 = sub_1C6015290();
  v30 = v22 + 8;
  v31 = OUTLINED_FUNCTION_116();
  v32(v31);
  v177 = v3;
  v173 = v5;
  if (v29)
  {
    v166 = v9;
    v33 = v1;
    v35 = v5 + 16;
    v34 = *(v5 + 16);
    v168 = v33;
    (v34)(v19);
    v36 = 0;
    sub_1C5C97A5C(v19, v184);
    v58 = v5;
    sub_1C5CB5698(v184, v185);
    if (qword_1EC1A9730 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v59 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v59, qword_1EC1BE490);
    v60 = v180;
    OUTLINED_FUNCTION_236();
    v34();
    v172 = v26;
    v61 = sub_1C60162B0();
    v62 = sub_1C6016F30();
    sub_1C5CB56D0(v184);
    v63 = os_log_type_enabled(v61, v62);
    v64 = v171;
    if (v63)
    {
      OUTLINED_FUNCTION_123();
      v65 = swift_slowAlloc();
      OUTLINED_FUNCTION_72();
      v181 = swift_slowAlloc();
      v183[0] = v181;
      *v65 = 136446466;
      OUTLINED_FUNCTION_1_0();
      sub_1C5CB8318(v66, v67);
      LODWORD(v178) = v62;
      sub_1C60177D0();
      OUTLINED_FUNCTION_249();
      v68 = OUTLINED_FUNCTION_168(v173);
      v69(v68);
      v70 = OUTLINED_FUNCTION_116();
      sub_1C5C6AB10(v70, v71, v72);
      OUTLINED_FUNCTION_90();

      *(v65 + 4) = v60;
      *(v65 + 12) = 2082;
      sub_1C5CB5698(v184, v185);
      sub_1C5CAE9DC();
      OUTLINED_FUNCTION_249();
      sub_1C5CB56D0(v184);
      v73 = OUTLINED_FUNCTION_116();
      sub_1C5C6AB10(v73, v74, v75);
      OUTLINED_FUNCTION_90();
      v58 = v173;

      *(v65 + 14) = v184;
      _os_log_impl(&dword_1C5C61000, v61, v178, "[XSQ] supportsContainerURL | container supported [] url=%{public}s \ncontent=%{public}s", v65, 0x16u);
      OUTLINED_FUNCTION_179();
      swift_arrayDestroy();
      v76 = OUTLINED_FUNCTION_31_0();
      MEMORY[0x1C6956920](v76);
      v77 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x1C6956920](v77);
    }

    else
    {

      v78 = OUTLINED_FUNCTION_168(v58);
      v79(v78);
    }

    v80 = v30;
    v81 = v175;
    v82 = *(v64 + 16);
    sub_1C5D0DC0C(0, v82, 0, MEMORY[0x1E69E7CC0]);
    v181 = v83;
    v84 = 0;
    *&v85 = 136446466;
    v169 = v85;
    v86 = v176;
    while (1)
    {
      if (v82 == v84)
      {
        (v34)(v167, v168, v80);
        sub_1C5CB5698(v184, v183);

        v120 = sub_1C60162B0();
        v121 = sub_1C6016F30();

        sub_1C5CB56D0(v184);
        if (os_log_type_enabled(v120, v121))
        {
          v122 = OUTLINED_FUNCTION_334();
          v183[0] = swift_slowAlloc();
          *v122 = 136446978;
          OUTLINED_FUNCTION_1_0();
          sub_1C5CB8318(v123, v124);
          v125 = sub_1C60177D0();
          v127 = v126;
          OUTLINED_FUNCTION_49_0();
          v128();
          v129 = sub_1C5C6AB10(v125, v127, v183);

          *(v122 + 4) = v129;
          *(v122 + 12) = 2082;
          v130 = MEMORY[0x1C6953600](v64, v80);
          v132 = v131;
          sub_1C5C6AB10(v130, v131, v183);
          OUTLINED_FUNCTION_73();

          *(v122 + 14) = v129;
          *(v122 + 22) = 2082;
          sub_1C5CAE9DC();
          OUTLINED_FUNCTION_318();
          sub_1C5CB56D0(v184);
          v133 = OUTLINED_FUNCTION_255();
          sub_1C5C6AB10(v133, v134, v135);
          OUTLINED_FUNCTION_206();

          *(v122 + 24) = v132;
          *(v122 + 32) = 2082;

          MEMORY[0x1C6953600](v136, &_s7ContentON);
          OUTLINED_FUNCTION_318();

          v137 = OUTLINED_FUNCTION_255();
          sub_1C5C6AB10(v137, v138, v139);
          OUTLINED_FUNCTION_206();

          *(v122 + 34) = v132;
          _os_log_impl(&dword_1C5C61000, v120, v121, "[XSQ] supportsContainerURL | supported [] url=%{public}s\nitems=%{public}s\ncontainerContent=%{public}s\nitemContent=%{public}s", v122, 0x2Au);
          OUTLINED_FUNCTION_160();
          swift_arrayDestroy();
          v140 = OUTLINED_FUNCTION_17();
          MEMORY[0x1C6956920](v140);
          v141 = OUTLINED_FUNCTION_16_1();
          MEMORY[0x1C6956920](v141);
        }

        else
        {
          sub_1C5CB56D0(v184);

          OUTLINED_FUNCTION_49_0();
          v163();
        }

        goto LABEL_29;
      }

      v87 = v64 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
      v88 = *(v58 + 72);
      v178 = v84;
      (v34)(v86, v87 + v88 * v84, v80);
      v89 = v174;
      (v34)(v174, v86, v80);
      sub_1C5C97A5C(v89, v185);
      if (v36)
      {
        break;
      }

      (v34)(v81, v86, v80);
      sub_1C5CB5698(v184, v183);
      v90 = v81;
      v91 = sub_1C60162B0();
      v92 = sub_1C6016F30();
      sub_1C5CB56D0(v184);
      v93 = OUTLINED_FUNCTION_162();
      if (os_log_type_enabled(v93, v94))
      {
        OUTLINED_FUNCTION_123();
        v95 = swift_slowAlloc();
        OUTLINED_FUNCTION_72();
        v96 = swift_slowAlloc();
        v170 = 0;
        v182 = v96;
        *v95 = v169;
        OUTLINED_FUNCTION_1_0();
        sub_1C5CB8318(&qword_1EC1A91E8, v97);
        v98 = v82;
        v99 = v35;
        v100 = v34;
        v101 = sub_1C60177D0();
        v103 = v102;
        OUTLINED_FUNCTION_49_0();
        v104();
        v105 = v101;
        v34 = v100;
        v35 = v99;
        v82 = v98;
        sub_1C5C6AB10(v105, v103, &v182);
        OUTLINED_FUNCTION_114();

        *(v95 + 4) = v90;
        *(v95 + 12) = 2082;
        sub_1C5CB5698(v184, v183);
        v106 = sub_1C5CAE9DC();
        sub_1C5CB56D0(v184);
        v107 = OUTLINED_FUNCTION_110_0();
        sub_1C5C6AB10(v107, v108, v109);
        OUTLINED_FUNCTION_114();
        v80 = v177;

        *(v95 + 14) = v106;
        _os_log_impl(&dword_1C5C61000, v91, v92, "[XSQ] supportsContainerURL | item supported [] url=%{public}s \ncontent=%{public}s", v95, 0x16u);
        swift_arrayDestroy();
        v36 = v170;
        v58 = v173;
        OUTLINED_FUNCTION_55();
        MEMORY[0x1C6956920]();
        v64 = v171;
        OUTLINED_FUNCTION_55();
        MEMORY[0x1C6956920]();
      }

      else
      {

        OUTLINED_FUNCTION_110_0();
        OUTLINED_FUNCTION_49_0();
        v110();
      }

      v112 = *(v181 + 2);
      v111 = *(v181 + 3);
      v86 = v176;
      if (v112 >= v111 >> 1)
      {
        v118 = OUTLINED_FUNCTION_128(v111);
        sub_1C5D0DC0C(v118, v112 + 1, 1, v181);
        v181 = v119;
      }

      OUTLINED_FUNCTION_49_0();
      v113();
      v114 = v181;
      *(v181 + 2) = v112 + 1;
      v115 = &v114[40 * v112];
      v116 = v185[0];
      v117 = v185[1];
      v115[64] = v186;
      *(v115 + 2) = v116;
      *(v115 + 3) = v117;
      v84 = v178 + 1;
      v81 = v175;
    }

    sub_1C5CB56D0(v184);
    v142 = v166;
    (v34)(v166, v86, v80);
    v143 = v36;
    v144 = sub_1C60162B0();
    v145 = sub_1C6016F20();

    if (os_log_type_enabled(v144, v145))
    {
      OUTLINED_FUNCTION_123();
      v146 = swift_slowAlloc();
      OUTLINED_FUNCTION_72();
      v183[0] = swift_slowAlloc();
      *v146 = v169;
      OUTLINED_FUNCTION_1_0();
      sub_1C5CB8318(v147, v148);
      v149 = sub_1C60177D0();
      v150 = v80;
      v152 = v151;
      v153 = v179;
      v179(v142, v150);
      v154 = OUTLINED_FUNCTION_110_0();
      sub_1C5C6AB10(v154, v155, v156);
      OUTLINED_FUNCTION_114();

      *(v146 + 4) = v149;
      *(v146 + 12) = 2082;
      swift_getErrorValue();
      v157 = sub_1C6017940();
      sub_1C5C6AB10(v157, v158, v183);
      OUTLINED_FUNCTION_113();

      *(v146 + 14) = v152;
      OUTLINED_FUNCTION_324(&dword_1C5C61000, v159, v160, "[XSQ] supportsContainerURL | not supported [item failed parsing] url=%{public}s error=%{public}s");
      OUTLINED_FUNCTION_77_0();
      swift_arrayDestroy();
      v161 = OUTLINED_FUNCTION_28_0();
      MEMORY[0x1C6956920](v161);
      v162 = OUTLINED_FUNCTION_16_1();
      MEMORY[0x1C6956920](v162);

      v153(v176, v150);
    }

    else
    {

      v164 = v179;
      v179(v142, v80);
      v164(v86, v80);
    }
  }

  else
  {
    if (qword_1EC1A9730 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v37 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v37, qword_1EC1BE490);
    v38 = v177;
    (*(v173 + 16))(v0, v1, v177);
    v39 = v171;

    v40 = sub_1C60162B0();
    v41 = sub_1C6016F30();

    if (os_log_type_enabled(v40, v41))
    {
      OUTLINED_FUNCTION_123();
      v42 = swift_slowAlloc();
      OUTLINED_FUNCTION_72();
      *&v185[0] = swift_slowAlloc();
      *v42 = 136446466;
      OUTLINED_FUNCTION_1_0();
      sub_1C5CB8318(v43, v44);
      sub_1C60177D0();
      v46 = v45;
      v47 = OUTLINED_FUNCTION_147();
      v48(v47);
      v49 = OUTLINED_FUNCTION_111();
      v51 = sub_1C5C6AB10(v49, v46, v50);

      *(v42 + 4) = v51;
      *(v42 + 12) = 2082;
      v52 = MEMORY[0x1C6953600](v39, v38);
      OUTLINED_FUNCTION_351(v52, v53);
      OUTLINED_FUNCTION_73();

      *(v42 + 14) = v51;
      _os_log_impl(&dword_1C5C61000, v40, v41, "[XSQ] supportsContainerURL | not supported [feature disabled] url=%{public}s \nitems=%{public}s", v42, 0x16u);
      OUTLINED_FUNCTION_160();
      swift_arrayDestroy();
      v54 = OUTLINED_FUNCTION_17();
      MEMORY[0x1C6956920](v54);
      v55 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x1C6956920](v55);
    }

    else
    {

      v56 = OUTLINED_FUNCTION_147();
      v57(v56);
    }
  }

LABEL_29:
  OUTLINED_FUNCTION_237();
}

void sub_1C5CA0250()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_102();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  *&v1[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue_repeatType] = 0;
  *&v1[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue_shuffleType] = 0;
  v18 = *(v10 + 16);
  v47 = v3;
  v18(&v45 - v16, v3, v8);
  _s8_StorageCMa();
  v19 = swift_allocObject();
  v20 = v17;
  v21 = v19;
  sub_1C5CA0BFC(v20, MEMORY[0x1E69E7CC0]);
  *&v1[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage] = v19;
  if (v5)
  {

    sub_1C6016900();
    OUTLINED_FUNCTION_250();
  }

  else
  {
    v21 = 0;
  }

  v49.receiver = v1;
  v49.super_class = MPCAssistantXSchemeURLPlaybackQueue;
  v22 = objc_msgSendSuper2(&v49, sel_initWithContextID_, v21);

  v23 = qword_1EC1A9730;
  v24 = v22;
  if (v23 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v25 = sub_1C60162D0();
  OUTLINED_FUNCTION_144(v25, qword_1EC1BE490);
  sub_1C5CB55D8();
  v26 = sub_1C5CB3604();
  v29 = OUTLINED_FUNCTION_71_0(v26, v27, v28);
  sub_1C5C74C18(v29);
  v18(v14, v47, v8);

  v30 = sub_1C60162B0();
  v31 = sub_1C6016F30();

  if (os_log_type_enabled(v30, v31))
  {
    OUTLINED_FUNCTION_103_0();
    v32 = v10;
    v33 = v14;
    v34 = swift_slowAlloc();
    OUTLINED_FUNCTION_72();
    v46 = swift_slowAlloc();
    v48 = v46;
    *v34 = 67109634;
    *(v34 + 4) = *(*&v24[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage] + 16);
    *(v34 + 8) = 2082;
    if (v5)
    {
      v35 = v7;
    }

    else
    {
      v35 = 7104878;
    }

    if (v5)
    {
      v36 = v5;
    }

    else
    {
      v36 = 0xE300000000000000;
    }

    v37 = sub_1C5C6AB10(v35, v36, &v48);

    *(v34 + 10) = v37;
    *(v34 + 18) = 2082;
    OUTLINED_FUNCTION_1_0();
    sub_1C5CB8318(v38, v39);
    sub_1C60177D0();
    OUTLINED_FUNCTION_313();
    v40 = *(v32 + 8);
    v41 = OUTLINED_FUNCTION_252();
    v40(v41);
    sub_1C5C6AB10(v33, v37, &v48);
    OUTLINED_FUNCTION_250();

    *(v34 + 20) = v33;
    _os_log_impl(&dword_1C5C61000, v30, v31, "[XSQ:%{sonic:fourCC}u] init | contextID=%{public}s url=%{public}s", v34, 0x1Cu);
    swift_arrayDestroy();
    v42 = OUTLINED_FUNCTION_47();
    MEMORY[0x1C6956920](v42);
    v43 = OUTLINED_FUNCTION_30_0();
    MEMORY[0x1C6956920](v43);

    (v40)(v47, v8);
  }

  else
  {

    v44 = *(v10 + 8);
    v44(v47, v8);
    v44(v14, v8);
  }

  OUTLINED_FUNCTION_237();
}

void sub_1C5CA06E0()
{
  OUTLINED_FUNCTION_247();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_297();
  v9 = sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_102();
  v54 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  *&v2[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue_repeatType] = 0;
  *&v2[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue_shuffleType] = 0;
  v56 = v11;
  v18 = *(v11 + 16);
  v19 = OUTLINED_FUNCTION_110_0();
  v18(v19);
  _s8_StorageCMa();
  v20 = swift_allocObject();

  v21 = v17;
  v22 = v20;
  sub_1C5CA0BFC(v21, v4);
  *&v2[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage] = v20;
  v55 = v1;
  if (v8)
  {

    sub_1C6016900();
    OUTLINED_FUNCTION_90();
  }

  else
  {
    v22 = 0;
  }

  v58.receiver = v2;
  v58.super_class = MPCAssistantXSchemeURLPlaybackQueue;
  v23 = objc_msgSendSuper2(&v58, sel_initWithContextID_, v22);

  v24 = qword_1EC1A9730;
  v25 = v23;
  v26 = v54;
  if (v24 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v27 = sub_1C60162D0();
  OUTLINED_FUNCTION_144(v27, qword_1EC1BE490);
  sub_1C5CB55D8();
  v28 = sub_1C5CB3604();
  v31 = OUTLINED_FUNCTION_71_0(v28, v29, v30);
  sub_1C5C74C18(v31);
  (v18)(v26, v6, v9);

  v32 = sub_1C60162B0();
  v33 = sub_1C6016F30();

  v34 = os_log_type_enabled(v32, v33);
  v35 = v55;
  if (v34)
  {
    OUTLINED_FUNCTION_170();
    v36 = swift_slowAlloc();
    v53 = v6;
    v37 = v36;
    OUTLINED_FUNCTION_112_0();
    v52 = swift_slowAlloc();
    v57 = v52;
    *v37 = 67109890;
    *(v37 + 4) = *(*&v25[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage] + 16);
    *(v37 + 8) = 2082;
    if (v8)
    {
      v38 = v35;
    }

    else
    {
      v38 = 7104878;
    }

    LODWORD(v55) = v33;
    if (v8)
    {
      v39 = v8;
    }

    else
    {
      v39 = 0xE300000000000000;
    }

    sub_1C5C6AB10(v38, v39, &v57);
    OUTLINED_FUNCTION_136_0();

    *(v37 + 10) = v8;
    *(v37 + 18) = 2082;
    OUTLINED_FUNCTION_1_0();
    sub_1C5CB8318(v40, v41);
    sub_1C60177D0();
    OUTLINED_FUNCTION_249();
    v56 = *(v56 + 8);
    (v56)(v26, v9);
    v42 = OUTLINED_FUNCTION_116();
    sub_1C5C6AB10(v42, v43, v44);
    OUTLINED_FUNCTION_90();

    *(v37 + 20) = v26;
    *(v37 + 28) = 2082;
    v45 = OUTLINED_FUNCTION_303();
    MEMORY[0x1C6953600](v45);
    OUTLINED_FUNCTION_99_0();

    v46 = OUTLINED_FUNCTION_159();
    sub_1C5C6AB10(v46, v47, v48);
    OUTLINED_FUNCTION_98();

    *(v37 + 30) = v26;
    _os_log_impl(&dword_1C5C61000, v32, v55, "[XSQ:%{sonic:fourCC}u] init | contextID=%{public}s url=%{public}s\nitemURLs=%{public}s", v37, 0x26u);
    swift_arrayDestroy();
    v49 = OUTLINED_FUNCTION_31_0();
    MEMORY[0x1C6956920](v49);
    v50 = OUTLINED_FUNCTION_28_0();
    MEMORY[0x1C6956920](v50);

    (v56)(v53, v9);
  }

  else
  {

    v51 = *(v56 + 8);
    v51(v6, v9);
    v51(v26, v9);
  }

  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5CA0BFC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = sub_1C6017A70();
  v5 = OBJC_IVAR____TtCE17MediaPlaybackCoreCSo35MPCAssistantXSchemeURLPlaybackQueue8_Storage_url;
  sub_1C6014F20();
  OUTLINED_FUNCTION_105();
  (*(v6 + 32))(v2 + v5, a1);
  *(v2 + OBJC_IVAR____TtCE17MediaPlaybackCoreCSo35MPCAssistantXSchemeURLPlaybackQueue8_Storage_itemURLs) = a2;
  return v2;
}

uint64_t sub_1C5CA0C7C()
{
  v1 = OBJC_IVAR____TtCE17MediaPlaybackCoreCSo35MPCAssistantXSchemeURLPlaybackQueue8_Storage_url;
  sub_1C6014F20();
  OUTLINED_FUNCTION_105();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C5CA0E04@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage);
  v4 = OBJC_IVAR____TtCE17MediaPlaybackCoreCSo35MPCAssistantXSchemeURLPlaybackQueue8_Storage_url;
  sub_1C6014F20();
  OUTLINED_FUNCTION_105();
  v7 = *(v6 + 16);

  return v7(a1, v3 + v4, v5);
}

uint64_t MPCAssistantXSchemeURLPlaybackQueue.description.getter()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_297();
  v1 = sub_1C6014F20();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_146();
  v7 = v6 - v5;
  sub_1C6017540();
  MEMORY[0x1C69534E0](60, 0xE100000000000000);
  v8 = sub_1C6017AD0();
  MEMORY[0x1C69534E0](v8);

  MEMORY[0x1C69534E0](2016419898, 0xE400000000000000);
  v17 = v0;
  sub_1C6017650();
  MEMORY[0x1C69534E0](0x3D6C727520, 0xE500000000000000);
  v9 = [v0 url];
  sub_1C6014EC0();

  OUTLINED_FUNCTION_1_0();
  sub_1C5CB8318(v10, v11);
  v12 = sub_1C60177D0();
  MEMORY[0x1C69534E0](v12);

  (*(v3 + 8))(v7, v1);
  MEMORY[0x1C69534E0](0x4C52556D65746920, 0xEA00000000003D73);
  v13 = [v17 itemURLs];
  sub_1C6016B10();

  v14 = OUTLINED_FUNCTION_147();
  MEMORY[0x1C6953600](v14);

  v15 = OUTLINED_FUNCTION_254();
  MEMORY[0x1C69534E0](v15);

  MEMORY[0x1C69534E0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C5CA1278()
{
  OUTLINED_FUNCTION_248();
  v1[144] = v0;
  v1[143] = v2;
  v3 = sub_1C6014F20();
  v1[145] = v3;
  v1[146] = *(v3 - 8);
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();
  v1[150] = swift_task_alloc();
  v1[151] = swift_task_alloc();
  v1[152] = swift_task_alloc();
  v4 = sub_1C60167E0();
  v1[153] = v4;
  v1[154] = *(v4 - 8);
  v1[155] = swift_task_alloc();
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5CA13CC()
{
  v111 = v0;
  v1 = OUTLINED_FUNCTION_319();
  v2(v1);
  OUTLINED_FUNCTION_38_1();
  sub_1C5CB8318(v3, v4);
  v5 = sub_1C6015290();
  v6 = OUTLINED_FUNCTION_108();
  v7(v6);
  if (v5)
  {
    if (qword_1EC1A9730 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v8 = v0[144];
    v9 = v0[143];
    v10 = sub_1C60162D0();
    v0[156] = __swift_project_value_buffer(v10, qword_1EC1BE490);
    v0[157] = sub_1C5CB55D8();
    v11 = v8;
    v12 = sub_1C5CB3604();
    v15 = OUTLINED_FUNCTION_71_0(v12, v13, v14);
    sub_1C5C74C18(v15);
    v16 = v9;
    v17 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_240();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[144];
    v21 = v0[143];
    if (v19)
    {
      v22 = OUTLINED_FUNCTION_220();
      OUTLINED_FUNCTION_97();
      v23 = swift_slowAlloc();
      *v22 = 67109378;
      OUTLINED_FUNCTION_199();
      *(v22 + 4) = v24;

      *(v22 + 8) = 2114;
      *(v22 + 10) = v21;
      *v23 = v21;

      OUTLINED_FUNCTION_169();
      _os_log_impl(v25, v26, v27, v28, v29, 0x12u);
      sub_1C5CB5700(v23);
      v30 = OUTLINED_FUNCTION_17();
      MEMORY[0x1C6956920](v30);
      v31 = OUTLINED_FUNCTION_16_1();
      MEMORY[0x1C6956920](v31);
      v32 = v0[144];
    }

    else
    {

      v32 = v0[144];
      v17 = v32;
    }

    v47 = [v32 userIdentity];
    v0[158] = v47;
    v48 = v0[144];
    if (v47)
    {
      v49 = v47;
      v50 = v48;
      v51 = sub_1C5CB3604();
      v54 = OUTLINED_FUNCTION_71_0(v51, v52, v53);
      sub_1C5C74C18(v54);
      v55 = v49;
      v56 = sub_1C60162B0();
      v57 = sub_1C6016F30();
      v58 = OUTLINED_FUNCTION_268(v57);
      v59 = v0[144];
      if (v58)
      {
        v60 = OUTLINED_FUNCTION_220();
        OUTLINED_FUNCTION_97();
        v61 = swift_slowAlloc();
        *v60 = 67109378;
        *(v60 + 4) = *(*&v59[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage] + 16);

        *(v60 + 8) = 2114;
        *(v60 + 10) = v55;
        *v61 = v49;

        _os_log_impl(&dword_1C5C61000, v56, v57, "[XSQ:%{sonic:fourCC}u] withDestination(_:) | [] userIdentity=%{public}@", v60, 0x12u);
        sub_1C5CB5700(v61);
        v62 = OUTLINED_FUNCTION_37();
        MEMORY[0x1C6956920](v62);
        v63 = OUTLINED_FUNCTION_28_0();
        MEMORY[0x1C6956920](v63);
        v64 = v0[144];
      }

      else
      {

        v64 = v0[144];
        v56 = v64;
      }

      v91 = v64;
      v92 = sub_1C5CB3604();
      v95 = OUTLINED_FUNCTION_71_0(v92, v93, v94);
      sub_1C5C74C18(v95);
      v96 = sub_1C60162B0();
      v97 = sub_1C6016F00();
      v98 = OUTLINED_FUNCTION_268(v97);
      v99 = v0[144];
      if (v98)
      {
        OUTLINED_FUNCTION_97();
        v100 = swift_slowAlloc();
        *v100 = 67109120;
        v100[1] = *(*&v99[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage] + 16);

        OUTLINED_FUNCTION_238();
        _os_log_impl(v101, v102, v103, v104, v105, 8u);
        OUTLINED_FUNCTION_55();
        MEMORY[0x1C6956920]();
      }

      else
      {

        v96 = v0[144];
      }

      v106 = objc_opt_self();
      v0[159] = v106;
      v107 = [v106 sharedManager];
      v0[160] = v107;
      v0[2] = v0;
      v0[3] = sub_1C5CA1CFC;
      swift_continuation_init();
      OUTLINED_FUNCTION_297();
      sub_1C5CB562C();
      v0[33] = v108;
      v0[26] = MEMORY[0x1E69E9820];
      v0[27] = 1107296256;
      v0[28] = sub_1C5E22268;
      v0[29] = &block_descriptor;
      v0[30] = v99;
      [v107 performAfterLoadingAccounts_];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    v109 = sub_1C5C64D74(0, &qword_1ED7DCCF0);
    v65 = sub_1C6016940();
    v0[140] = 1;
    v110[0] = sub_1C6017840();
    v110[1] = v66;
    OUTLINED_FUNCTION_109();
    MEMORY[0x1C69534E0](0xD000000000000017);
    v67 = [v48 description];
    sub_1C6016940();
    OUTLINED_FUNCTION_290();

    v68 = OUTLINED_FUNCTION_300();
    MEMORY[0x1C69534E0](v68);

    sub_1C6016880();
    _s3__C4CodeOMa_4(0);
    v70 = v69;
    OUTLINED_FUNCTION_2_3();
    sub_1C5CB8318(v71, v72);
    OUTLINED_FUNCTION_100();
    sub_1C6017280();
    OUTLINED_FUNCTION_90();

    v73 = v48;
    v74 = sub_1C5CB3604();
    v77 = OUTLINED_FUNCTION_71_0(v74, v75, v76);
    sub_1C5C74C18(v77);
    v78 = v109;
    v79 = sub_1C60162B0();
    v80 = sub_1C6016F20();
    v81 = OUTLINED_FUNCTION_272(v80);
    v82 = v0[144];
    if (v81)
    {
      OUTLINED_FUNCTION_220();
      OUTLINED_FUNCTION_45_1();
      v83 = swift_slowAlloc();
      v110[0] = v83;
      *v70 = 67109378;
      OUTLINED_FUNCTION_121();
      *(v70 + 4) = v84;

      *(v70 + 8) = 2082;
      swift_getErrorValue();
      v85 = sub_1C6017940();
      sub_1C5C6AB10(v85, v86, v110);
      OUTLINED_FUNCTION_261();
      *(v70 + 10) = v65;

      OUTLINED_FUNCTION_326(&dword_1C5C61000, v87, v88, "[XSQ:%{sonic:fourCC}u] withDestination(_:) | failed [missing user identity] error=%{public}s");
      __swift_destroy_boxed_opaque_existential_0(v83);
      v89 = OUTLINED_FUNCTION_17();
      MEMORY[0x1C6956920](v89);
      v90 = OUTLINED_FUNCTION_16_1();
      MEMORY[0x1C6956920](v90);
    }

    else
    {
    }
  }

  else
  {
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v0[139] = 999;
    sub_1C6016880();
    _s3__C4CodeOMa_4(0);
    OUTLINED_FUNCTION_2_3();
    sub_1C5CB8318(v33, v34);
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_100();
    sub_1C6017280();

    if (qword_1EC1A9730 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v35 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v35, qword_1EC1BE490);
    v36 = sub_1C60162B0();
    v37 = sub_1C6016F20();
    if (OUTLINED_FUNCTION_268(v37))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_238();
      _os_log_impl(v38, v39, v40, v41, v42, 2u);
      OUTLINED_FUNCTION_55();
      MEMORY[0x1C6956920](v43, v44);
    }
  }

  swift_willThrow();
  OUTLINED_FUNCTION_145();

  OUTLINED_FUNCTION_172();

  return v45();
}

uint64_t sub_1C5CA1CFC()
{
  OUTLINED_FUNCTION_248();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1C5CA1DCC()
{
  v144 = v0;
  v1 = *(v0 + 1272);
  v2 = *(v0 + 1264);

  v3 = [v1 sharedManager];
  v4 = [v3 accountForUserIdentity_];
  *(v0 + 1288) = v4;

  if (v4)
  {
    OUTLINED_FUNCTION_216();
    v6 = v5;
    v7 = sub_1C5CB3604();
    v10 = OUTLINED_FUNCTION_71_0(v7, v8, v9);
    sub_1C5C74C18(v10);
    v11 = v4;
    v12 = sub_1C60162B0();
    v13 = sub_1C6016F30();
    v14 = OUTLINED_FUNCTION_268(v13);
    v15 = *(v0 + 1152);
    v135 = v11;
    if (v14)
    {
      v16 = OUTLINED_FUNCTION_220();
      OUTLINED_FUNCTION_97();
      v17 = swift_slowAlloc();
      *v16 = 67109378;
      OUTLINED_FUNCTION_129(*&v15[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage]);

      *(v16 + 8) = 2114;
      *(v16 + 10) = v11;
      *v17 = v4;

      OUTLINED_FUNCTION_239();
      _os_log_impl(v18, v19, v20, v21, v22, 0x12u);
      sub_1C5CB5700(v17);
      v23 = OUTLINED_FUNCTION_16_1();
      MEMORY[0x1C6956920](v23);
      v24 = OUTLINED_FUNCTION_19();
      MEMORY[0x1C6956920](v24);
      v25 = *(v0 + 1152);
    }

    else
    {

      v25 = *(v0 + 1152);
      v12 = v25;
    }

    v59 = *(v0 + 1216);

    v60 = [v25 url];
    sub_1C6014EC0();

    sub_1C5C97A5C(v59, (v0 + 488));
    OUTLINED_FUNCTION_216();
    v62 = v61;
    sub_1C5CB5698(v0 + 488, v0 + 728);
    v63 = sub_1C5CB3604();
    v66 = OUTLINED_FUNCTION_71_0(v63, v64, v65);
    sub_1C5C74C18(v66);
    v67 = v62;
    sub_1C5CB5698(v0 + 488, v0 + 768);
    v68 = sub_1C60162B0();
    v69 = sub_1C6016F30();
    if (OUTLINED_FUNCTION_209(v69))
    {
      v70 = *(v0 + 1208);
      v71 = *(v0 + 1152);
      OUTLINED_FUNCTION_103_0();
      v72 = swift_slowAlloc();
      OUTLINED_FUNCTION_72();
      v143[0] = swift_slowAlloc();
      *v72 = 67109634;
      OUTLINED_FUNCTION_208(*&v71[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage]);

      OUTLINED_FUNCTION_298();
      v73 = [v71 url];
      sub_1C6014EC0();

      OUTLINED_FUNCTION_1_0();
      sub_1C5CB8318(v74, v75);
      sub_1C60177D0();
      OUTLINED_FUNCTION_290();
      v76 = OUTLINED_FUNCTION_157();
      v77(v76);
      v78 = OUTLINED_FUNCTION_300();
      sub_1C5C6AB10(v78, v79, v80);
      OUTLINED_FUNCTION_114();

      *(v72 + 10) = v70;

      OUTLINED_FUNCTION_299();
      sub_1C5CB5698(v0 + 488, v0 + 328);
      sub_1C5CAE9DC();
      OUTLINED_FUNCTION_249();
      sub_1C5CB56D0(v0 + 488);
      v81 = OUTLINED_FUNCTION_116();
      sub_1C5C6AB10(v81, v82, v83);
      OUTLINED_FUNCTION_90();

      *(v72 + 20) = v0 + 488;
      sub_1C5CB56D0(v0 + 488);
      sub_1C5CB56D0(v0 + 488);
      OUTLINED_FUNCTION_267(&dword_1C5C61000, v84, v69, "[XSQ:%{sonic:fourCC}u] withDestination(_:) | content [decoded] url=%{public}s \ncontent=%{public}s");
      OUTLINED_FUNCTION_179();
      swift_arrayDestroy();
      v85 = OUTLINED_FUNCTION_31_0();
      MEMORY[0x1C6956920](v85);
      v86 = OUTLINED_FUNCTION_47();
      MEMORY[0x1C6956920](v86);
    }

    else
    {
      v88 = *(v0 + 1152);

      sub_1C5CB56D0(v0 + 488);
      sub_1C5CB56D0(v0 + 488);
    }

    v89 = v11;
    v90 = *(v0 + 1168);
    v91 = *(v0 + 1152);
    v92 = [v91 itemURLs];
    v93 = sub_1C6016B10();

    v94 = *(v93 + 16);

    sub_1C5D0DC0C(0, v94, 0, MEMORY[0x1E69E7CC0]);
    v134 = v95;
    *(v0 + 1296) = v95;
    v96 = [v91 itemURLs];
    v97 = sub_1C6016B10();

    v98 = 0;
    v140 = v90;
    v141 = *(v97 + 16);
    v99 = v90 + 16;
    v138 = (v90 + 8);
    v137 = v90 + 16;
    v139 = v97;
    while (v141 != v98)
    {
      if (v98 >= *(v97 + 16))
      {
        __break(1u);
        return;
      }

      v100 = *(v0 + 1192);
      v101 = *(v140 + 16);
      v102 = OUTLINED_FUNCTION_87_0();
      v101(v102);
      v103 = OUTLINED_FUNCTION_255();
      v101(v103);
      sub_1C5C97A5C(v100, (v0 + 448));
      v104 = *(v0 + 1200);
      v142 = v98;
      v105 = *(v0 + 1184);
      v106 = *(v0 + 1160);
      v107 = *(v0 + 1152);
      v108 = sub_1C5CB3604();
      v111 = OUTLINED_FUNCTION_71_0(v108, v109, v110);
      sub_1C5C74C18(v111);
      (v101)(v105, v104, v106);
      sub_1C5CB5698(v0 + 448, v0 + 368);
      sub_1C5CB5698(v0 + 448, v0 + 808);
      v112 = sub_1C60162B0();
      v113 = sub_1C6016F30();
      v114 = OUTLINED_FUNCTION_167(v113);
      v115 = *(v0 + 1200);
      v116 = *(v0 + 1160);
      v117 = *(v0 + 1152);
      if (v114)
      {
        OUTLINED_FUNCTION_103_0();
        v118 = swift_slowAlloc();
        OUTLINED_FUNCTION_72();
        v143[0] = swift_slowAlloc();
        *v118 = 67109634;
        *(v118 + 4) = *(*&v117[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage] + 16);

        *(v118 + 8) = 2082;
        OUTLINED_FUNCTION_1_0();
        sub_1C5CB8318(&qword_1EC1A91E8, v119);
        v120 = sub_1C60177D0();
        v136 = v115;
        v122 = sub_1C5C6AB10(v120, v121, v143);

        *(v118 + 10) = v122;
        v123 = *v138;
        v124 = OUTLINED_FUNCTION_108();
        v123(v124);
        *(v118 + 18) = 2082;
        sub_1C5CB5698(v0 + 448, v0 + 688);
        sub_1C5CAE9DC();
        OUTLINED_FUNCTION_249();
        sub_1C5CB56D0(v0 + 448);
        v125 = OUTLINED_FUNCTION_116();
        sub_1C5C6AB10(v125, v126, v127);
        OUTLINED_FUNCTION_90();

        *(v118 + 20) = v0 + 448;
        sub_1C5CB56D0(v0 + 448);
        sub_1C5CB56D0(v0 + 448);
        sub_1C5CB56D0(v0 + 448);
        _os_log_impl(&dword_1C5C61000, v112, v99, "[XSQ:%{sonic:fourCC}u] withDestination(_:) | content [decoded item] url=%{public}s \ncontent=%{public}s", v118, 0x1Cu);
        OUTLINED_FUNCTION_196();
        v128 = OUTLINED_FUNCTION_16_1();
        MEMORY[0x1C6956920](v128);
        v89 = v135;
        OUTLINED_FUNCTION_55();
        MEMORY[0x1C6956920]();

        (v123)(v136, v116);
      }

      else
      {

        sub_1C5CB56D0(v0 + 448);
        v129 = *v138;
        v130 = OUTLINED_FUNCTION_108();
        v129(v130);
        sub_1C5CB56D0(v0 + 448);
        sub_1C5CB56D0(v0 + 448);

        (v129)(v115, v116);
      }

      v98 = v142 + 1;
      v99 = v137;
      v97 = v139;
    }

    v131 = swift_task_alloc();
    *(v0 + 1304) = v131;
    *v131 = v0;
    v131[1] = sub_1C5CA2D64;
    v132 = *(v0 + 1144);

    sub_1C5CA41D8(v0 + 272, v0 + 488, v134, v132, v89);
  }

  else
  {
    v26 = *(v0 + 1264);
    v27 = *(v0 + 1152);
    v28 = sub_1C5C64D74(0, &qword_1ED7DCCF0);
    v29 = sub_1C6016940();
    *(v0 + 1088) = 2;
    v143[0] = sub_1C6017840();
    v143[1] = v30;
    OUTLINED_FUNCTION_109();
    MEMORY[0x1C69534E0](0xD000000000000013);
    v31 = [v27 description];
    v32 = sub_1C6016940();
    v34 = v33;

    MEMORY[0x1C69534E0](v32, v34);

    MEMORY[0x1C69534E0](540945696, 0xE400000000000000);
    v35 = [v26 description];
    v36 = sub_1C6016940();
    v38 = v37;

    MEMORY[0x1C69534E0](v36, v38);

    sub_1C6016880();
    _s3__C4CodeOMa_4(0);
    OUTLINED_FUNCTION_2_3();
    sub_1C5CB8318(v39, v40);
    OUTLINED_FUNCTION_100();
    sub_1C6017280();
    OUTLINED_FUNCTION_90();

    v41 = v27;
    v42 = sub_1C5CB3604();
    v45 = OUTLINED_FUNCTION_71_0(v42, v43, v44);
    sub_1C5C74C18(v45);
    v46 = v28;
    v47 = sub_1C60162B0();
    v48 = sub_1C6016F20();
    v49 = OUTLINED_FUNCTION_272(v48);
    v50 = *(v0 + 1152);
    if (v49)
    {
      OUTLINED_FUNCTION_220();
      OUTLINED_FUNCTION_45_1();
      v51 = swift_slowAlloc();
      v143[0] = v51;
      *v28 = 67109378;
      OUTLINED_FUNCTION_121();
      v28[1] = v52;

      *(v28 + 4) = 2082;
      swift_getErrorValue();
      v53 = sub_1C6017940();
      sub_1C5C6AB10(v53, v54, v143);
      OUTLINED_FUNCTION_261();
      *(v28 + 10) = v29;

      OUTLINED_FUNCTION_326(&dword_1C5C61000, v55, v56, "[XSQ:%{sonic:fourCC}u] withDestination(_:) | failed [missing user identity] error=%{public}s");
      __swift_destroy_boxed_opaque_existential_0(v51);
      v57 = OUTLINED_FUNCTION_17();
      MEMORY[0x1C6956920](v57);
      v58 = OUTLINED_FUNCTION_16_1();
      MEMORY[0x1C6956920](v58);
    }

    else
    {
    }

    v87 = *(v0 + 1264);
    swift_willThrow();

    OUTLINED_FUNCTION_145();

    OUTLINED_FUNCTION_172();

    v133();
  }
}

uint64_t sub_1C5CA2D64()
{
  OUTLINED_FUNCTION_248();
  v2 = *v1;
  OUTLINED_FUNCTION_101();
  *v3 = v2;
  *(v2 + 1312) = v0;

  sub_1C5CB56D0(v2 + 488);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5CA2E84()
{
  OUTLINED_FUNCTION_216();
  v1 = *(v0 + 1144);
  v2 = *(v0 + 288);
  *(v0 + 848) = *(v0 + 272);
  *(v0 + 864) = v2;
  *(v0 + 880) = *(v0 + 304);
  *(v0 + 1320) = *(v0 + 312);
  v4 = v3;
  sub_1C5CB5698(v0 + 848, v0 + 648);

  v5 = sub_1C5CB3604();
  v8 = OUTLINED_FUNCTION_71_0(v5, v6, v7);
  sub_1C5C74C18(v8);
  sub_1C5CB5698(v0 + 848, v0 + 608);

  v9 = v1;
  sub_1C5CB5698(v0 + 848, v0 + 568);

  v10 = v9;
  sub_1C5CB5698(v0 + 848, v0 + 528);

  v11 = sub_1C60162B0();
  v12 = sub_1C6016F30();
  if (OUTLINED_FUNCTION_209(v12))
  {
    v13 = *(v0 + 1152);
    v14 = *(v0 + 1144);
    OUTLINED_FUNCTION_170();
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_97();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_72();
    swift_slowAlloc();
    *v15 = 67109890;
    OUTLINED_FUNCTION_83(OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage);

    *(v15 + 8) = 2114;
    *(v15 + 10) = v14;
    *v16 = v14;

    *(v15 + 18) = 2082;
    sub_1C5CB5698(v0 + 848, v0 + 408);
    sub_1C5CAE9DC();
    OUTLINED_FUNCTION_176();
    sub_1C5CB56D0(v0 + 848);
    v17 = OUTLINED_FUNCTION_158();
    sub_1C5C6AB10(v17, v18, v19);
    OUTLINED_FUNCTION_203();

    *(v15 + 20) = v0 + 848;
    sub_1C5CB56D0(v0 + 848);

    sub_1C5CB56D0(v0 + 848);

    *(v15 + 28) = 2082;

    MEMORY[0x1C6953600](v20, &_s7ContentON);
    OUTLINED_FUNCTION_176();

    v21 = OUTLINED_FUNCTION_158();
    sub_1C5C6AB10(v21, v22, v23);
    OUTLINED_FUNCTION_203();

    *(v15 + 30) = v0 + 848;
    sub_1C5CB56D0(v0 + 848);

    sub_1C5CB56D0(v0 + 848);

    _os_log_impl(&dword_1C5C61000, v11, v12, "[XSQ:%{sonic:fourCC}u] withDestination(_:) | fit content [] destination=%{public}@\ncontent=%{public}s\nitemsContent=%{public}s", v15, 0x26u);
    sub_1C5CB5700(v16);
    v24 = OUTLINED_FUNCTION_28_0();
    MEMORY[0x1C6956920](v24);
    OUTLINED_FUNCTION_160();
    swift_arrayDestroy();
    v25 = OUTLINED_FUNCTION_17();
    MEMORY[0x1C6956920](v25);
    v26 = OUTLINED_FUNCTION_19();
    MEMORY[0x1C6956920](v26);
  }

  else
  {
    v27 = *(v0 + 1152);
    v28 = *(v0 + 1144);

    sub_1C5CB56D0(v0 + 848);

    sub_1C5CB56D0(v0 + 848);

    sub_1C5CB56D0(v0 + 848);

    sub_1C5CB56D0(v0 + 848);
  }

  v29 = swift_task_alloc();
  *(v0 + 1328) = v29;
  *v29 = v0;
  v29[1] = sub_1C5CA31D0;
  v30 = *(v0 + 1264);

  return sub_1C5CA58A4(v0 + 272, v30);
}

uint64_t sub_1C5CA31D0()
{
  v2 = *v1;
  OUTLINED_FUNCTION_101();
  *v3 = v2;
  *(v2 + 1336) = v4;
  *(v2 + 1344) = v0;

  sub_1C5CB56D0(v2 + 848);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5CA332C()
{
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1336);
  if ([v2 shouldImmediatelyStartPlayback])
  {
    v4 = 20;
  }

  else
  {
    v4 = 10;
  }

  [v3 setActionAfterQueueLoad_];
  sub_1C5CB50F4(v2, &selRef_contextID);
  if (v5)
  {
    sub_1C6016900();
    OUTLINED_FUNCTION_73();
  }

  else
  {
    v2 = 0;
  }

  v6 = *(v0 + 1336);
  v7 = *(v0 + 1152);
  v8 = OUTLINED_FUNCTION_253();
  [v8 v9];

  sub_1C5CB50F4(v7, &selRef_featureName);
  OUTLINED_FUNCTION_313();

  if (v1)
  {
    v10 = v2;
  }

  else
  {
    v10 = 1769105779;
  }

  if (v1)
  {
    v11 = v1;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  sub_1C5E208F0(v10, v11, v6);
  sub_1C5CB50F4(v7, &selRef_queueGroupingID);
  if (v12)
  {
    sub_1C6016900();
    OUTLINED_FUNCTION_73();
  }

  else
  {
    v2 = 0;
  }

  v13 = *(v0 + 1152);
  [*(v0 + 1336) setQueueGroupingID_];

  sub_1C5CB50F4(v13, &selRef_siriAssetInfo);
  if (v14)
  {
    v15 = sub_1C6016900();
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v0 + 1336);
  v17 = *(v0 + 1152);
  [v16 setSiriAssetInfo_];

  v18 = v17;
  v19 = sub_1C5CB3604();
  v22 = OUTLINED_FUNCTION_71_0(v19, v20, v21);
  sub_1C5C74C18(v22);
  v23 = v16;
  v24 = sub_1C60162B0();
  v25 = sub_1C6016F30();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 1336);
  v28 = *(v0 + 1152);
  if (v26)
  {
    v29 = OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_97();
    v30 = swift_slowAlloc();
    *v29 = 67109378;
    OUTLINED_FUNCTION_207(*&v28[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage]);

    *(v29 + 8) = 2114;
    *(v29 + 10) = v27;
    *v30 = v27;

    _os_log_impl(&dword_1C5C61000, v24, v25, "[XSQ:%{sonic:fourCC}u] withDestination(_:) | intent [] playbackIntent=%{public}@", v29, 0x12u);
    sub_1C5CB5700(v30);
    v31 = OUTLINED_FUNCTION_19();
    MEMORY[0x1C6956920](v31);
    OUTLINED_FUNCTION_55();
    MEMORY[0x1C6956920]();
  }

  else
  {

    v24 = *(v0 + 1152);
  }

  v32 = *(v0 + 1336);

  v33 = sub_1C5C96F98();
  *(v0 + 1352) = v33;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 1104;
  *(v0 + 88) = sub_1C5CA36B4;
  v34 = swift_continuation_init();
  sub_1C5CB5788();
  *(v0 + 200) = v35;
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1C5CA6B88;
  *(v0 + 168) = &block_descriptor_83;
  *(v0 + 176) = v34;
  [v32 getRemotePlaybackQueueWithDestination:v33 completion:v0 + 144];

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1C5CA36B4()
{
  OUTLINED_FUNCTION_248();
  *(*v0 + 1360) = *(*v0 + 112);
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C5CA37BC()
{
  v38 = v0;
  v1 = *(v0 + 1336);
  OUTLINED_FUNCTION_311();
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1104);

  v4 = v2;
  v5 = sub_1C5CB3604();
  v8 = OUTLINED_FUNCTION_71_0(v5, v6, v7);
  sub_1C5C74C18(v8);
  v9 = v3;
  v10 = sub_1C60162B0();
  sub_1C6016F30();
  OUTLINED_FUNCTION_240();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 1352);
    v13 = *(v0 + 1336);
    v35 = *(v0 + 1264);
    v36 = *(v0 + 1288);
    v14 = *(v0 + 1152);
    OUTLINED_FUNCTION_103_0();
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_72();
    v37 = swift_slowAlloc();
    *v15 = 67109634;
    OUTLINED_FUNCTION_207(*&v14[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage]);

    *(v15 + 8) = 2082;
    if (v12 == 3)
    {
      v16 = 0x442065746F6D6552;
    }

    else
    {
      v16 = 0x6544206C61636F4CLL;
    }

    if (v12 == 3)
    {
      v17 = 0xED00006563697665;
    }

    else
    {
      v17 = 0xEC00000065636976;
    }

    v18 = sub_1C5C6AB10(v16, v17, &v37);

    *(v15 + 10) = v18;
    *(v15 + 18) = 2082;
    v19 = [v9 description];
    sub_1C6016940();

    v20 = OUTLINED_FUNCTION_88_0();
    sub_1C5C6AB10(v20, v21, v22);
    OUTLINED_FUNCTION_171();

    *(v15 + 20) = v19;

    OUTLINED_FUNCTION_238();
    _os_log_impl(v23, v24, v25, v26, v27, 0x1Cu);
    OUTLINED_FUNCTION_196();
    v28 = OUTLINED_FUNCTION_16_1();
    MEMORY[0x1C6956920](v28);
    OUTLINED_FUNCTION_55();
    MEMORY[0x1C6956920]();
  }

  else
  {
    v29 = *(v0 + 1336);
    v30 = *(v0 + 1288);
    v31 = *(v0 + 1264);
    v32 = *(v0 + 1152);
  }

  OUTLINED_FUNCTION_145();

  v33 = *(v0 + 8);

  return v33(v9);
}

uint64_t sub_1C5CA3A80()
{
  v34 = v0;
  v2 = *(v0 + 1312);
  OUTLINED_FUNCTION_311();
  v3 = *(v0 + 1144);
  v4 = *(v0 + 1152);
  v5 = sub_1C5CB3604();
  v8 = OUTLINED_FUNCTION_71_0(v5, v6, v7);
  sub_1C5C74C18(v8);
  v9 = v3;
  v10 = v2;
  v11 = v9;
  v12 = v2;
  v13 = sub_1C60162B0();
  sub_1C6016F20();
  OUTLINED_FUNCTION_240();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 1312);
    v16 = *(v0 + 1152);
    v17 = *(v0 + 1144);
    OUTLINED_FUNCTION_103_0();
    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_97();
    swift_slowAlloc();
    OUTLINED_FUNCTION_46();
    v19 = swift_slowAlloc();
    v33 = v19;
    *v18 = 67109634;
    OUTLINED_FUNCTION_121();
    *(v18 + 4) = v20;

    *(v18 + 8) = 2114;
    *(v18 + 10) = v17;
    *v1 = v17;

    *(v18 + 18) = 2082;
    swift_getErrorValue();
    v21 = sub_1C6017940();
    sub_1C5C6AB10(v21, v22, &v33);
    OUTLINED_FUNCTION_95();

    *(v18 + 20) = v17;

    _os_log_impl(&dword_1C5C61000, v13, v3, "[XSQ:%{sonic:fourCC}u] withDestination(_:) | fit content [failed] destination=%{public}@ error=%{public}s", v18, 0x1Cu);
    sub_1C5CB5700(v1);
    v23 = OUTLINED_FUNCTION_17();
    MEMORY[0x1C6956920](v23);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v24 = OUTLINED_FUNCTION_16_1();
    MEMORY[0x1C6956920](v24);
    OUTLINED_FUNCTION_55();
    MEMORY[0x1C6956920](v25);
  }

  else
  {
    v26 = *(v0 + 1312);
    v27 = *(v0 + 1152);
    v28 = *(v0 + 1144);
  }

  v29 = *(v0 + 1288);
  v30 = *(v0 + 1264);
  swift_willThrow();

  OUTLINED_FUNCTION_91();

  OUTLINED_FUNCTION_172();

  return v31();
}

uint64_t sub_1C5CA3CEC()
{
  v32 = v0;
  v2 = *(v0 + 1344);
  OUTLINED_FUNCTION_311();
  v3 = *(v0 + 1152);
  v4 = sub_1C5CB3604();
  v7 = OUTLINED_FUNCTION_71_0(v4, v5, v6);
  sub_1C5C74C18(v7);
  v8 = v2;
  v9 = v2;
  v10 = sub_1C60162B0();
  v11 = sub_1C6016F20();
  if (OUTLINED_FUNCTION_272(v11))
  {
    v12 = *(v0 + 1344);
    v13 = *(v0 + 1152);
    v14 = OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_64_0();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 67109378;
    OUTLINED_FUNCTION_83(OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage);

    *(v14 + 8) = 2082;
    swift_getErrorValue();
    v16 = sub_1C6017940();
    sub_1C5C6AB10(v16, v17, &v31);
    OUTLINED_FUNCTION_261();
    *(v14 + 10) = v1;

    OUTLINED_FUNCTION_139();
    _os_log_impl(v18, v19, v20, v21, v22, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v23 = OUTLINED_FUNCTION_16_1();
    MEMORY[0x1C6956920](v23);
    v24 = OUTLINED_FUNCTION_19();
    MEMORY[0x1C6956920](v24);
  }

  else
  {
    v25 = *(v0 + 1344);
    v26 = *(v0 + 1152);
  }

  v27 = *(v0 + 1288);
  v28 = *(v0 + 1264);
  swift_willThrow();

  OUTLINED_FUNCTION_91();

  OUTLINED_FUNCTION_172();

  return v29();
}

uint64_t sub_1C5CA3EE4()
{
  v37 = v0;
  v1 = v0[170];
  v2 = v0[167];
  OUTLINED_FUNCTION_311();
  v3 = v0[144];
  swift_willThrow();

  v4 = v3;
  v5 = sub_1C5CB3604();
  v8 = OUTLINED_FUNCTION_71_0(v5, v6, v7);
  sub_1C5C74C18(v8);
  v9 = v2;
  v10 = v1;
  v11 = v9;
  v12 = v1;
  v13 = sub_1C60162B0();
  sub_1C6016F20();
  OUTLINED_FUNCTION_240();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[170];
    v16 = v0[169];
    v17 = v0[167];
    v18 = v0[144];
    OUTLINED_FUNCTION_170();
    v19 = swift_slowAlloc();
    OUTLINED_FUNCTION_97();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_72();
    v36[0] = swift_slowAlloc();
    *v19 = 67109890;
    OUTLINED_FUNCTION_199();
    *(v19 + 4) = v21;

    *(v19 + 8) = 2082;
    if (v16 == 3)
    {
      v22 = 0x442065746F6D6552;
    }

    else
    {
      v22 = 0x6544206C61636F4CLL;
    }

    if (v16 == 3)
    {
      v23 = 0xED00006563697665;
    }

    else
    {
      v23 = 0xEC00000065636976;
    }

    sub_1C5C6AB10(v22, v23, v36);
    OUTLINED_FUNCTION_95();

    *(v19 + 10) = v18;
    *(v19 + 18) = 2114;
    *(v19 + 20) = v17;
    *v20 = v17;

    *(v19 + 28) = 2082;
    swift_getErrorValue();
    v24 = sub_1C6017940();
    sub_1C5C6AB10(v24, v25, v36);
    OUTLINED_FUNCTION_95();

    *(v19 + 30) = v18;

    _os_log_impl(&dword_1C5C61000, v13, v1, "[XSQ:%{sonic:fourCC}u] withDestination(_:) | queue [failed] \nintentDestination=%{public}s\nintent=%{public}@\nerror=%{public}s", v19, 0x26u);
    sub_1C5CB5700(v20);
    v26 = OUTLINED_FUNCTION_17();
    MEMORY[0x1C6956920](v26);
    OUTLINED_FUNCTION_196();
    v27 = OUTLINED_FUNCTION_16_1();
    MEMORY[0x1C6956920](v27);
    OUTLINED_FUNCTION_55();
    MEMORY[0x1C6956920]();
  }

  else
  {
    v28 = v0[170];
    v29 = v0[167];
    v30 = v0[144];
  }

  v31 = v0[167];
  v32 = v0[161];
  v33 = v0[158];
  swift_willThrow();

  OUTLINED_FUNCTION_91();

  OUTLINED_FUNCTION_172();

  return v34();
}

uint64_t sub_1C5CA41D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 304) = a5;
  *(v6 + 312) = v5;
  *(v6 + 288) = a3;
  *(v6 + 296) = a4;
  *(v6 + 272) = a1;
  *(v6 + 280) = a2;
  v7 = *(a2 + 16);
  *(v6 + 320) = *a2;
  *(v6 + 336) = v7;
  *(v6 + 49) = *(a2 + 32);
  return MEMORY[0x1EEE6DFA0](sub_1C5CA4210, 0, 0);
}

void sub_1C5CA4210()
{
  v425 = v0;
  v1 = v0;
  v2 = *(v0 + 280);
  v3 = *(v2 + 32);
  v5 = *v2;
  v4 = *(v2 + 16);
  *(v0 + 248) = *(v0 + 288);
  *(v0 + 96) = v5;
  *(v0 + 112) = v4;
  v412 = v0 + 136;
  v413 = v0 + 248;
  *(v0 + 128) = v3;
  sub_1C5CB5698(v2, v0 + 136);
  v6 = qword_1EC1A9730;

  if (v6 != -1)
  {
    goto LABEL_77;
  }

  while (1)
  {
    v8 = *(v1 + 304);
    v7 = *(v1 + 312);
    v9 = *(v1 + 296);
    v10 = sub_1C60162D0();
    v11 = __swift_project_value_buffer(v10, qword_1EC1BE490);
    v12 = sub_1C5CB55D8();
    v13 = v7;
    v407 = v12;
    v14 = sub_1C5CB3604();
    v17 = OUTLINED_FUNCTION_71_0(v14, v15, v16);
    sub_1C5C74C18(v17);
    v18 = v9;
    v19 = v8;
    v408 = v11;
    v20 = sub_1C60162B0();
    v21 = sub_1C6016F30();

    v411 = v1;
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v1 + 304);
      v23 = *(v1 + 312);
      v24 = *(v1 + 296);
      v25 = *(v1 + 280);
      v26 = swift_slowAlloc();
      v27 = OUTLINED_FUNCTION_259();
      OUTLINED_FUNCTION_72();
      v28 = swift_slowAlloc();
      OUTLINED_FUNCTION_304(v28);
      *v26 = 67110146;
      OUTLINED_FUNCTION_129(*(v23 + OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage));
      *(v26 + 8) = 2082;
      sub_1C5CB5698(v25, v412);
      sub_1C5CAE9DC();
      OUTLINED_FUNCTION_290();
      sub_1C5CB56D0(v25);
      v29 = OUTLINED_FUNCTION_300();
      sub_1C5C6AB10(v29, v30, v31);
      OUTLINED_FUNCTION_114();

      OUTLINED_FUNCTION_219();

      MEMORY[0x1C6953600](v32, &_s7ContentON);
      OUTLINED_FUNCTION_176();

      v33 = OUTLINED_FUNCTION_111();
      sub_1C5C6AB10(v33, v23, v34);
      OUTLINED_FUNCTION_203();

      *(v26 + 20) = v25;
      *(v26 + 28) = 2114;
      *(v26 + 30) = v24;
      *(v26 + 38) = 2114;
      *(v26 + 40) = v22;
      *v27 = v24;
      v27[1] = v22;
      v35 = v24;
      v36 = v22;
      _os_log_impl(&dword_1C5C61000, v20, v21, "[XSQ:%{sonic:fourCC}u] fitContent(...) | begin []\ncontent=%{public}s\nitems=%{public}s\ndestination=%{public}@\naccount=%{public}@", v26, 0x30u);
      OUTLINED_FUNCTION_14_4(v37, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0);
      OUTLINED_FUNCTION_119();
      swift_arrayDestroy();
      v38 = OUTLINED_FUNCTION_28_0();
      v39 = MEMORY[0x1C6956920](v38);
      OUTLINED_FUNCTION_138(v39, v40, v41, v42, v43, v44, v45, v46, v386, v387, v388, v389, v390, *(&v390 + 1), v391, *(&v391 + 1), v392, v393, v395, v397, v400, v402, v403, v404, v406, v407, v408, v409);
      swift_arrayDestroy();
      v47 = OUTLINED_FUNCTION_31_0();
      MEMORY[0x1C6956920](v47);
      v48 = OUTLINED_FUNCTION_19();
      MEMORY[0x1C6956920](v48);
    }

    v49 = *(v1 + 304);
    v50 = [v49 hasCatalogPlaybackCapability];
    if ([v49 hasCatalogPlaybackCapability])
    {
      HIDWORD(v403) = [*(v1 + 304) hasCloudLibraryEnabled];
    }

    else
    {
      HIDWORD(v403) = 0;
    }

    v404 = (v413 - 152);
    v51 = (v413 - 48);
    v52 = *(v1 + 312);
    v53 = sub_1C5C96F98();
    v54 = v52;
    v55 = sub_1C5CB3604();
    v58 = OUTLINED_FUNCTION_71_0(v55, v56, v57);
    sub_1C5C74C18(v58);
    v59 = sub_1C60162B0();
    v60 = sub_1C6016F30();

    v402 = v53;
    if (os_log_type_enabled(v59, v60))
    {
      v61 = *(v1 + 312);
      v62 = swift_slowAlloc();
      OUTLINED_FUNCTION_64_0();
      v63 = swift_slowAlloc();
      *&v421 = v63;
      *v62 = 67109890;
      OUTLINED_FUNCTION_129(*(v61 + OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage));
      *(v62 + 8) = 1024;
      *(v62 + 10) = v50;
      *(v62 + 14) = 1024;
      *(v62 + 16) = HIDWORD(v403);
      *(v62 + 20) = 2082;
      v64 = sub_1C5C96FE4(v53);
      v66 = sub_1C5C6AB10(v64, v65, &v421);

      *(v62 + 22) = v66;
      OUTLINED_FUNCTION_239();
      _os_log_impl(v67, v68, v69, v70, v71, 0x1Eu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      v72 = OUTLINED_FUNCTION_16_1();
      MEMORY[0x1C6956920](v72);
      v73 = OUTLINED_FUNCTION_19();
      MEMORY[0x1C6956920](v73);
    }

    if (v50)
    {
      v74 = v413;
      v75 = *(v1 + 49);
      v77 = *(v1 + 336);
      v76 = *(v1 + 344);
      v78 = *(v1 + 320);
      v79 = *(v1 + 328);
      v412 = *(v1 + 288);
    }

    else
    {
      v80 = (v413 - 232);
      v81 = *(v1 + 280);
      if ((*(v81 + 32) & 0xC0) != 0x80 || (*(v81 + 16) & 0x80) != 0)
      {
        v84 = (v1 + 320);
        sub_1C5CB5698(v81, v412);
        v83 = *(v1 + 49);
        v77 = *(v1 + 336);
        v82 = *(v1 + 344);
        v79 = *(v1 + 328);
        v81 = *(v1 + 280);
      }

      else
      {
        v79 = 0;
        v82 = 0;
        v83 = 5;
        v77 = 1;
        v84 = *(v1 + 280);
      }

      v85 = *v84;
      *(v1 + 16) = *v84;
      *(v1 + 24) = v79;
      *(v1 + 32) = v77;
      *(v1 + 40) = v82;
      *(v1 + 48) = v83;
      if (sub_1C5CAC810(v413 - 232, v81))
      {
        OUTLINED_FUNCTION_18_0();
        sub_1C5CB587C(v86, v87, v88, v89, v90);
        LODWORD(v395) = *(v1 + 49);
        v77 = *(v1 + 336);
        v394 = *(v1 + 344);
        v78 = *(v1 + 320);
        v79 = *(v1 + 328);
      }

      else
      {
        v91 = *(v1 + 312);
        v92 = sub_1C5CB3604();
        v95 = OUTLINED_FUNCTION_71_0(v92, v93, v94);
        sub_1C5C74C18(v95);
        OUTLINED_FUNCTION_18_0();
        sub_1C5CB58E0(v96, v97, v98, v99, v100);
        v101 = sub_1C60162B0();
        v102 = sub_1C6016F30();

        OUTLINED_FUNCTION_18_0();
        sub_1C5CB587C(v103, v104, v105, v106, v107);
        LODWORD(v391) = v102;
        LODWORD(v395) = v83;
        v394 = v82;
        if (os_log_type_enabled(v101, v102))
        {
          v108 = *(v1 + 312);
          *&v390 = v101;
          v109 = *(v1 + 280);
          OUTLINED_FUNCTION_103_0();
          v110 = swift_slowAlloc();
          OUTLINED_FUNCTION_72();
          v389 = swift_slowAlloc();
          *&v421 = v389;
          *v110 = 67109634;
          OUTLINED_FUNCTION_207(*(v108 + OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage));
          *(v110 + 8) = 2082;
          sub_1C5CB5698(v109, v412);
          v111 = sub_1C5CAE9DC();
          v113 = v112;
          sub_1C5CB56D0(v109);
          sub_1C5C6AB10(v111, v113, &v421);
          OUTLINED_FUNCTION_250();

          *(v110 + 10) = v109;
          *(v110 + 18) = 2082;
          v114 = OUTLINED_FUNCTION_244();
          sub_1C5CB58E0(v114, v115, v116, v117, v118);
          sub_1C5CAE9DC();
          OUTLINED_FUNCTION_99_0();
          v119 = OUTLINED_FUNCTION_244();
          sub_1C5CB587C(v119, v120, v121, v122, v123);
          v124 = OUTLINED_FUNCTION_111();
          sub_1C5C6AB10(v124, v111, v125);
          OUTLINED_FUNCTION_98();

          *(v110 + 20) = v80;
          v101 = v390;
          OUTLINED_FUNCTION_238();
          _os_log_impl(v126, v127, v128, v129, v130, 0x1Cu);
          swift_arrayDestroy();
          v131 = OUTLINED_FUNCTION_22_0();
          MEMORY[0x1C6956920](v131);
          OUTLINED_FUNCTION_55();
          MEMORY[0x1C6956920]();
        }

        v132 = *(v1 + 280);
        swift_beginAccess();
        v133 = *(v413 - 216);
        *v404 = *v80;
        *(v413 - 136) = v133;
        *(v413 - 120) = *(v413 - 200);
        sub_1C5CB56D0(v132);
        v78 = v85;
      }

      v51 = (v413 - 48);
      v134 = *(v1 + 288);
      v135 = *(v134 + 16);
      v136 = MEMORY[0x1E69E7CC0];
      v410 = v79;
      if (v135)
      {
        v398 = v78;
        v401 = v77;
        *&v421 = MEMORY[0x1E69E7CC0];

        sub_1C5D0F07C(0, v135, 0);
        v136 = v421;
        v137 = (v134 + 64);
        do
        {
          v139 = *(v137 - 4);
          v138 = *(v137 - 3);
          v140 = *(v137 - 2);
          v141 = *(v137 - 1);
          v142 = *v137;
          if ((*v137 & 0xC0) == 0x80)
          {
            if ((v140 & 0x80) != 0)
            {
              sub_1C5CB586C(*(v137 - 4), *(v137 - 3), v140);
            }

            else
            {
              v138 = 0;
              v141 = 0;
              v142 = 5;
              v140 = 1;
            }
          }

          else
          {
            sub_1C5CB58E0(*(v137 - 4), *(v137 - 3), *(v137 - 2), *(v137 - 1), *v137);
          }

          *&v421 = v136;
          v144 = *(v136 + 16);
          v143 = *(v136 + 24);
          if (v144 >= v143 >> 1)
          {
            v146 = OUTLINED_FUNCTION_128(v143);
            sub_1C5D0F07C(v146, v144 + 1, 1);
            v136 = v421;
          }

          v137 += 40;
          *(v136 + 16) = v144 + 1;
          v145 = v136 + 40 * v144;
          *(v145 + 32) = v139;
          *(v145 + 40) = v138;
          *(v145 + 48) = v140;
          *(v145 + 56) = v141;
          *(v145 + 64) = v142;
          --v135;
        }

        while (v135);
        v1 = v411;

        v134 = *(v411 + 288);
        v147 = v413;
        v51 = (v413 - 48);
        v78 = v398;
        v77 = v401;
        v79 = v410;
      }

      else
      {
        v147 = v413;
      }

      v148 = v136;
      v149 = sub_1C5DBC7DC(v136, v134);

      if (v149)
      {
        v74 = v147;

        v412 = *(v1 + 288);
        v75 = v395;
        v76 = v394;
      }

      else
      {
        v150 = v147;
        *&v391 = v147 - 72;
        v151 = *(v1 + 312);
        v152 = sub_1C5CB3604();
        v155 = OUTLINED_FUNCTION_71_0(v152, v153, v154);
        sub_1C5C74C18(v155);

        v156 = sub_1C60162B0();
        v157 = sub_1C6016F30();

        v412 = v148;
        if (os_log_type_enabled(v156, v157))
        {
          v399 = v78;
          v158 = *(v1 + 312);
          OUTLINED_FUNCTION_103_0();
          v159 = swift_slowAlloc();
          OUTLINED_FUNCTION_72();
          *&v421 = swift_slowAlloc();
          *v159 = 67109634;
          OUTLINED_FUNCTION_207(*(v158 + OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage));
          *(v159 + 8) = 2082;

          v161 = v51;
          v162 = MEMORY[0x1C6953600](v160, &_s7ContentON);
          v164 = v163;

          v165 = v162;
          v51 = v161;
          v166 = sub_1C5C6AB10(v165, v164, &v421);
          v1 = v411;

          *(v159 + 10) = v166;
          *(v159 + 18) = 2082;
          v78 = v399;
          v167 = MEMORY[0x1C6953600](v412, &_s7ContentON);
          v169 = sub_1C5C6AB10(v167, v168, &v421);

          *(v159 + 20) = v169;
          OUTLINED_FUNCTION_238();
          _os_log_impl(v170, v171, v172, v173, v174, 0x1Cu);
          OUTLINED_FUNCTION_77_0();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_55();
          MEMORY[0x1C6956920]();
          v175 = v412;
          OUTLINED_FUNCTION_55();
          MEMORY[0x1C6956920]();

          v176 = v413;
          v75 = v395;
          v76 = v394;
          v79 = v410;
        }

        else
        {
          v175 = v148;

          v75 = v395;
          v76 = v394;
          v79 = v410;
          v176 = v150;
        }

        v74 = v176;
        swift_beginAccess();
        *(v1 + 248) = v175;
      }
    }

    v177 = *(v1 + 304);
    v178 = *(v1 + 312);
    *&v421 = v78;
    *(&v421 + 1) = v79;
    v422 = v77;
    v423 = v76;
    v424 = v75;
    v179 = v177;
    OUTLINED_FUNCTION_18_0();
    sub_1C5CB58E0(v180, v181, v182, v183, v184);
    v185 = v179;
    OUTLINED_FUNCTION_18_0();
    sub_1C5CB58E0(v186, v187, v188, v189, v190);
    sub_1C5CA6F0C(&v421, v178, v185, v51, "[XSQ:%{sonic:fourCC}u] fitContent(...) | failed [library content not in library]\ncontent=%{public}s \nerror=%{public}s", &v418);
    HIDWORD(v406) = HIDWORD(v51);
    OUTLINED_FUNCTION_18_0();
    sub_1C5CB587C(v191, v192, v193, v194, v195);
    OUTLINED_FUNCTION_18_0();
    sub_1C5CB587C(v196, v197, v198, v199, v200);
    v409 = v79;
    v201 = v420;
    if (v420 > 0xF7u)
    {
      v385 = *(v1 + 304);

      __break(1u);
      return;
    }

    v202 = v78;
    v203 = v77;
    v204 = *(&v418 + 1);
    v205 = v418;
    v206 = v419;
    *(v1 + 56) = v418;
    *(v1 + 64) = v204;
    v397 = *(&v206 + 1);
    v400 = v206;
    *(v1 + 72) = v206;
    *(v1 + 88) = v201;
    swift_beginAccess();
    v207 = *(v74 - 176);
    *v404 = *(v74 - 192);
    *(v413 - 136) = v207;
    v393 = v74 - 192;
    *(v413 - 120) = *(v74 - 160);
    sub_1C5CB587C(v202, v409, v203, v76, v75);
    v208 = *(v412 + 16);
    LODWORD(v406) = v201;
    if (!v208)
    {
      break;
    }

    v395 = v204;
    v404 = v205;
    v416 = MEMORY[0x1E69E7CC0];

    sub_1C5D0F07C(0, v208, 0);
    v209 = v412;
    v210 = 0;
    v211 = v416;
    v212 = (v412 + 64);
    v409 = v208;
    while (v210 < *(v209 + 16))
    {
      v213 = v211;
      v214 = *(v1 + 304);
      v215 = *(v1 + 312);
      v216 = *(v212 - 3);
      v217 = *(v212 - 2);
      v218 = *(v212 - 1);
      v219 = *v212;
      *&v421 = *(v212 - 4);
      *(&v421 + 1) = v216;
      v422 = v217;
      v423 = v218;
      v424 = v219;
      v220 = v214;
      v221 = OUTLINED_FUNCTION_116();
      sub_1C5CB58E0(v221, v222, v217, v218, v219);
      sub_1C5CA6F0C(&v421, v215, v220, (v413 + 8), "[XSQ:%{sonic:fourCC}u] fitContent(...) | failed [library content not in library]\ncontent=%{public}s\nerror=%{public}s", &v418);
      v223 = OUTLINED_FUNCTION_116();
      sub_1C5CB587C(v223, v224, v217, v218, v219);
      v225 = v418;
      v226 = v419;
      v227 = v420;
      v211 = v213;
      v417 = v213;
      v228 = *(v213 + 16);
      v229 = *(v211 + 24);
      if (v228 >= v229 >> 1)
      {
        v231 = OUTLINED_FUNCTION_128(v229);
        v390 = v233;
        v391 = v232;
        sub_1C5D0F07C(v231, v228 + 1, 1);
        v226 = v390;
        v225 = v391;
        v211 = v417;
      }

      ++v210;
      *(v211 + 16) = v228 + 1;
      v230 = v211 + 40 * v228;
      *(v230 + 32) = v225;
      *(v230 + 48) = v226;
      *(v230 + 64) = v227;
      v212 += 40;
      v1 = v411;
      v209 = v412;
      if (v409 == v210)
      {
        swift_bridgeObjectRelease_n();
        v201 = v406;
        v205 = v404;
        v204 = v395;
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_77:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v211 = MEMORY[0x1E69E7CC0];
LABEL_47:
  if (v201 > 0x3F)
  {
    goto LABEL_60;
  }

  if (v201 == 5)
  {
    v234 = *(v1 + 312);
    v235 = sub_1C5CB3604();
    v238 = OUTLINED_FUNCTION_71_0(v235, v236, v237);
    sub_1C5C74C18(v238);
    v239 = sub_1C60162B0();
    v240 = sub_1C6016F30();

    v241 = os_log_type_enabled(v239, v240);
    if (v402 == 2)
    {
      if (v241)
      {
        OUTLINED_FUNCTION_103_0();
        v242 = swift_slowAlloc();
        OUTLINED_FUNCTION_72();
        v243 = swift_slowAlloc();
        OUTLINED_FUNCTION_304(v243);
        *v242 = 67109634;
        OUTLINED_FUNCTION_83(OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage);
        OUTLINED_FUNCTION_141();
        OUTLINED_FUNCTION_143();
        sub_1C5CB5C88(v244, v245, v246, v247, v248);
        sub_1C5CAE9DC();
        OUTLINED_FUNCTION_149_0();
        OUTLINED_FUNCTION_88_0();
        OUTLINED_FUNCTION_143();
        sub_1C5CB5C9C(v249, v250, v251, v252, v253);
        v254 = OUTLINED_FUNCTION_111();
        sub_1C5C6AB10(v254, v211, v255);
        OUTLINED_FUNCTION_90();

        OUTLINED_FUNCTION_219();
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_136_0();

        *(v242 + 20) = v211;
        v211 = v412;
        OUTLINED_FUNCTION_139();
        _os_log_impl(v256, v257, v258, v259, v260, 0x1Cu);
        OUTLINED_FUNCTION_138(v261, v262, v263, v264, v265, v266, v267, v268, v386, v387, v388, v389, v390, *(&v390 + 1), v391, *(&v391 + 1), v392, v393, v395, *(&v206 + 1), v206, 2, v403, v404, v406, v407, v408, v409);
        swift_arrayDestroy();
        v269 = OUTLINED_FUNCTION_31_0();
        MEMORY[0x1C6956920](v269);
        v270 = OUTLINED_FUNCTION_19();
        MEMORY[0x1C6956920](v270);

LABEL_55:
        LOBYTE(v201) = v406;
        goto LABEL_56;
      }
    }

    else if (v241)
    {
      OUTLINED_FUNCTION_170();
      v271 = swift_slowAlloc();
      OUTLINED_FUNCTION_112_0();
      v272 = swift_slowAlloc();
      OUTLINED_FUNCTION_304(v272);
      *v271 = 67109890;
      OUTLINED_FUNCTION_83(OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage);
      OUTLINED_FUNCTION_141();
      OUTLINED_FUNCTION_143();
      sub_1C5CB5C88(v273, v274, v275, v276, v277);
      sub_1C5CAE9DC();
      OUTLINED_FUNCTION_149_0();
      OUTLINED_FUNCTION_88_0();
      OUTLINED_FUNCTION_143();
      sub_1C5CB5C9C(v278, v279, v280, v281, v282);
      v283 = OUTLINED_FUNCTION_111();
      sub_1C5C6AB10(v283, v211, v284);
      OUTLINED_FUNCTION_90();

      *(v271 + 10) = v393;
      *(v271 + 18) = 2082;
      v285 = OUTLINED_FUNCTION_152();
      OUTLINED_FUNCTION_231(v285);
      OUTLINED_FUNCTION_136_0();

      *(v271 + 20) = v211;
      *(v271 + 28) = 2082;
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_136_0();

      *(v271 + 30) = v211;
      v211 = v412;
      OUTLINED_FUNCTION_139();
      _os_log_impl(v286, v287, v288, v289, v290, 0x26u);
      OUTLINED_FUNCTION_138(v291, v292, v293, v294, v295, v296, v297, v298, v386, v387, v388, v389, v390, *(&v390 + 1), v391, *(&v391 + 1), v392, v393, v395, *(&v206 + 1), v206, v402, v403, v404, v406, v407, v408, v409);
      swift_arrayDestroy();
      v299 = OUTLINED_FUNCTION_31_0();
      MEMORY[0x1C6956920](v299);
      v300 = OUTLINED_FUNCTION_19();
      MEMORY[0x1C6956920](v300);
    }

    v402 = 2;
    goto LABEL_55;
  }

LABEL_56:
  if ([*(v1 + 296) isCompanion])
  {
    v301 = *(v1 + 312);
    v302 = sub_1C5CB3604();
    v305 = OUTLINED_FUNCTION_71_0(v302, v303, v304);
    sub_1C5C74C18(v305);
    v306 = sub_1C60162B0();
    v307 = sub_1C6016F30();

    v308 = os_log_type_enabled(v306, v307);
    if (v402 == 2)
    {
      if (v308)
      {
        v414 = *(v1 + 304);
        OUTLINED_FUNCTION_103_0();
        v309 = swift_slowAlloc();
        OUTLINED_FUNCTION_72();
        *&v421 = swift_slowAlloc();
        *v309 = 67109634;
        OUTLINED_FUNCTION_83(OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage);
        *(v309 + 8) = 2082;
        LOBYTE(v201) = v406;
        sub_1C5CB5C88(v205, v204, v400, v397, v406);
        sub_1C5CAE9DC();
        OUTLINED_FUNCTION_149_0();
        sub_1C5CB5C9C(v205, v204, v400, v397, v406);
        v310 = OUTLINED_FUNCTION_111();
        sub_1C5C6AB10(v310, v211, v311);
        OUTLINED_FUNCTION_90();

        OUTLINED_FUNCTION_219();
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_136_0();

        *(v309 + 20) = v211;
        v211 = v412;
        OUTLINED_FUNCTION_139();
        _os_log_impl(v312, v313, v314, v315, v316, 0x1Cu);
        v317 = 2;
        OUTLINED_FUNCTION_196();
        v318 = OUTLINED_FUNCTION_16_1();
        MEMORY[0x1C6956920](v318);
        v319 = OUTLINED_FUNCTION_19();
        MEMORY[0x1C6956920](v319);

        goto LABEL_70;
      }

LABEL_69:
      v381 = *(v1 + 304);

      v317 = 2;
      LOBYTE(v201) = v406;
      goto LABEL_70;
    }

    if (!v308)
    {
      goto LABEL_69;
    }

    v415 = *(v1 + 304);
    OUTLINED_FUNCTION_170();
    v364 = swift_slowAlloc();
    OUTLINED_FUNCTION_112_0();
    v365 = swift_slowAlloc();
    OUTLINED_FUNCTION_304(v365);
    *v364 = 67109890;
    OUTLINED_FUNCTION_83(OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage);
    v366 = OUTLINED_FUNCTION_141();
    LODWORD(v408) = v307;
    LOBYTE(v201) = v406;
    sub_1C5CB5C88(v366, v367, v400, v397, v406);
    sub_1C5CAE9DC();
    OUTLINED_FUNCTION_149_0();
    sub_1C5CB5C9C(v205, v204, v400, v397, v406);
    v368 = OUTLINED_FUNCTION_111();
    sub_1C5C6AB10(v368, v211, v369);
    OUTLINED_FUNCTION_90();

    *(v364 + 10) = v393;
    *(v364 + 18) = 2082;
    v370 = OUTLINED_FUNCTION_152();
    OUTLINED_FUNCTION_231(v370);
    OUTLINED_FUNCTION_136_0();

    *(v364 + 20) = v211;
    *(v364 + 28) = 2082;
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_136_0();

    *(v364 + 30) = v211;
    v211 = v412;
    _os_log_impl(&dword_1C5C61000, v306, v307, "[XSQ:%{sonic:fourCC}u] fitContent(...) | policy change [forcing library mode for companion content] \ncontent=%{public}s\npreviousIntentDestination=%{public}s\nintentDestination=%{public}s", v364, 0x26u);
    OUTLINED_FUNCTION_138(v371, v372, v373, v374, v375, v376, v377, v378, v386, v387, v388, v389, v390, *(&v390 + 1), v391, *(&v391 + 1), v392, v393, v395, v397, v400, v402, v403, v404, v406, v407, v408, v409);
    swift_arrayDestroy();
    v379 = OUTLINED_FUNCTION_31_0();
    MEMORY[0x1C6956920](v379);
    v380 = OUTLINED_FUNCTION_19();
    MEMORY[0x1C6956920](v380);

    v321 = v415;
LABEL_64:

    v317 = 2;
    goto LABEL_70;
  }

LABEL_60:
  if (v402 != 3)
  {
    v321 = *(v1 + 304);
    goto LABEL_64;
  }

  if ((v403 & 0x100000000) == 0)
  {
    v396 = v204;
    v405 = v205;
    v323 = *(v1 + 304);
    v322 = *(v1 + 312);
    v324 = *(v1 + 296);
    v325 = sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    *(v1 + 256) = 10;
    OUTLINED_FUNCTION_224();
    sub_1C6017540();

    OUTLINED_FUNCTION_89();
    *&v421 = 0xD000000000000023;
    *(&v421 + 1) = v326;
    v327 = [v322 description];
    sub_1C6016940();
    OUTLINED_FUNCTION_290();

    v328 = OUTLINED_FUNCTION_300();
    MEMORY[0x1C69534E0](v328);

    v329 = OUTLINED_FUNCTION_41();
    MEMORY[0x1C69534E0](v329);
    v330 = [v323 description];
    sub_1C6016940();

    v331 = OUTLINED_FUNCTION_88_0();
    MEMORY[0x1C69534E0](v331);

    v332 = OUTLINED_FUNCTION_41();
    MEMORY[0x1C69534E0](v332);
    v333 = [v324 description];
    v334 = sub_1C6016940();
    v336 = v335;

    MEMORY[0x1C69534E0](v334, v336);

    sub_1C6016880();
    _s3__C4CodeOMa_4(0);
    OUTLINED_FUNCTION_2_3();
    sub_1C5CB8318(v337, v338);
    OUTLINED_FUNCTION_26();
    sub_1C6017280();
    OUTLINED_FUNCTION_98();

    v339 = v322;
    v340 = sub_1C5CB3604();
    v343 = OUTLINED_FUNCTION_71_0(v340, v341, v342);
    sub_1C5C74C18(v343);
    v344 = v325;
    v345 = sub_1C60162B0();
    v346 = sub_1C6016F20();

    if (os_log_type_enabled(v345, v346))
    {
      OUTLINED_FUNCTION_103_0();
      v347 = swift_slowAlloc();
      OUTLINED_FUNCTION_72();
      *&v421 = swift_slowAlloc();
      *v347 = 67109634;
      OUTLINED_FUNCTION_121();
      *(v347 + 4) = v348;
      *(v347 + 8) = 2082;
      v349 = v397;
      sub_1C5CB5C88(v405, v396, v400, v397, v406);
      sub_1C5CAE9DC();
      OUTLINED_FUNCTION_176();
      v350 = OUTLINED_FUNCTION_293();
      sub_1C5CB5C9C(v350, v351, v400, v397, v406);
      v352 = OUTLINED_FUNCTION_111();
      sub_1C5C6AB10(v352, v413, v353);
      OUTLINED_FUNCTION_203();

      *(v347 + 10) = v393;
      *(v347 + 18) = 2082;
      swift_getErrorValue();
      v354 = sub_1C6017940();
      sub_1C5C6AB10(v354, v355, &v421);
      OUTLINED_FUNCTION_261();
      *(v347 + 20) = v406;
      OUTLINED_FUNCTION_169();
      _os_log_impl(v356, v357, v358, v359, v360, 0x1Cu);
      swift_arrayDestroy();
      v361 = OUTLINED_FUNCTION_19();
      MEMORY[0x1C6956920](v361);
      v362 = OUTLINED_FUNCTION_16_1();
      MEMORY[0x1C6956920](v362);

      v363 = v411;
    }

    else
    {

      v363 = v411;
      v349 = v397;
    }

    v384 = *(v363 + 304);
    swift_willThrow();

    sub_1C5CB587C(v405, v396, v400, v349, v406);
    v383 = *(v363 + 8);
    goto LABEL_73;
  }

  v320 = *(v1 + 304);

  v317 = 3;
LABEL_70:
  v382 = *(v1 + 272);
  *v382 = v205;
  *(v382 + 8) = v204;
  *(v382 + 16) = v400;
  *(v382 + 24) = v397;
  *(v382 + 32) = v201;
  *(v382 + 40) = v211;
  *(v382 + 48) = v317;
  v383 = *(v1 + 8);
LABEL_73:

  v383();
}

uint64_t sub_1C5CA58A4(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C5CA58C8, 0, 0);
}

NSObject *sub_1C5CA58C8()
{
  v223 = v0;
  if (qword_1EC1A9730 != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v2 = *(v0 + 176);
    v1 = *(v0 + 184);
    v3 = *(v0 + 168);
    v4 = sub_1C60162D0();
    __swift_project_value_buffer(v4, qword_1EC1BE490);
    v5 = sub_1C5CB55D8();
    v6 = v1;
    v220 = v5;
    v7 = sub_1C5CB3604();
    v10 = OUTLINED_FUNCTION_71_0(v7, v8, v9);
    sub_1C5C74C18(v10);
    v11 = *v3;
    v12 = v3[1];
    *(v0 + 88) = *(v3 + 32);
    *(v0 + 72) = v12;
    *(v0 + 56) = v11;
    v216 = *(v3 + 1);
    v218 = *v3;
    v214 = *(v3 + 2);
    v13 = *(v3 + 5);
    sub_1C5CB5698(v0 + 56, v0 + 96);

    v14 = v2;
    v15 = OUTLINED_FUNCTION_346();
    v16 = sub_1C6016F30();

    sub_1C5CB56D0(v0 + 56);

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 176);
      OUTLINED_FUNCTION_170();
      v18 = swift_slowAlloc();
      OUTLINED_FUNCTION_97();
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_72();
      v3 = swift_slowAlloc();
      v221 = v3;
      *v18 = 67109890;
      OUTLINED_FUNCTION_121();
      *(v18 + 4) = v20;
      OUTLINED_FUNCTION_298();
      v21 = sub_1C5CAE9DC();
      sub_1C5C6AB10(v21, v22, &v221);
      OUTLINED_FUNCTION_261();
      *(v18 + 10) = v13;
      OUTLINED_FUNCTION_299();
      v23 = MEMORY[0x1C6953600](v13, &_s7ContentON);
      sub_1C5C6AB10(v23, v24, &v221);
      OUTLINED_FUNCTION_261();
      *(v18 + 20) = v13;
      *(v18 + 28) = 2114;
      *(v18 + 30) = v17;
      *v19 = v17;
      v25 = v17;
      _os_log_impl(&dword_1C5C61000, v15, v16, "[XSQ:%{sonic:fourCC}u] buildPlaybackIntent(...) | begin []\ncontent=%{public}s\nitemsContent=%{public}s\nuserIdentity=%{public}@", v18, 0x26u);
      sub_1C5CB5700(v19);
      v26 = OUTLINED_FUNCTION_17();
      MEMORY[0x1C6956920](v26);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_55();
      MEMORY[0x1C6956920]();
      v27 = OUTLINED_FUNCTION_47();
      MEMORY[0x1C6956920](v27);
    }

    v28 = *(v0 + 56);
    v29 = *(v0 + 64);
    v30 = *(v0 + 72);
    v31 = *(v0 + 88);
    if (!(v31 >> 6))
    {
      break;
    }

    if (v31 >> 6 == 1)
    {
      v3 = *(v0 + 184);
      objc_opt_self();
      OUTLINED_FUNCTION_110_0();
      v32 = sub_1C6016900();
      v33 = OUTLINED_FUNCTION_253();
      v35 = [v33 v34];

      v36 = v3;
      v37 = sub_1C5CB3604();
      v40 = OUTLINED_FUNCTION_71_0(v37, v38, v39);
      sub_1C5C74C18(v40);
      v41 = v35;
      v42 = OUTLINED_FUNCTION_346();
      v43 = sub_1C6016F30();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = *(v0 + 184);
        v45 = OUTLINED_FUNCTION_220();
        OUTLINED_FUNCTION_97();
        v46 = swift_slowAlloc();
        *v45 = 67109378;
        OUTLINED_FUNCTION_208(*(v44 + OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage));
        *(v45 + 8) = 2114;
        *(v45 + 10) = v3;
        *v47 = v3;
        v3 = v3;
        _os_log_impl(&dword_1C5C61000, v42, v43, "[XSQ:%{sonic:fourCC}u] buildPlaybackIntent(...) | building radio request []\nintent=%{public}@", v45, 0x12u);
        sub_1C5CB5700(v46);
        v48 = OUTLINED_FUNCTION_16_1();
        MEMORY[0x1C6956920](v48);
        v49 = OUTLINED_FUNCTION_47();
        MEMORY[0x1C6956920](v49);
      }

LABEL_56:

      v208 = *(v0 + 8);

      return v208(v3);
    }

    v72 = *(v0 + 176);
    v73 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
    v74 = [objc_opt_self() musicRequestWithUserIdentity_];
    [v73 setPlaybackRequestEnvironment_];

    v75 = *(v13 + 16);
    if (!v75)
    {
      v109 = &selRef_hasCapability_;
      OUTLINED_FUNCTION_3_1();
      sub_1C5C6EFFC(0, v110, v111, v112);
      v113 = swift_allocObject();
      v114 = v113;
      *(v113 + 16) = xmmword_1C60311E0;
      if (v30 < 0)
      {
        *(v113 + 32) = v28;
        *(v113 + 40) = v29;
        sub_1C5CB586C(v218, v216, v214);
      }

      else
      {
        *(v0 + 96) = v28;
        *(v113 + 32) = sub_1C60177D0();
        *(v114 + 40) = v115;
      }

      sub_1C5CB507C(v114, v73);
      v3 = v220;
LABEL_53:
      v190 = *(v0 + 184);
      v191 = [objc_allocWithZone(MPCPlaybackIntent) v109[103]];
      v192 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) v109[103]];
      [v192 setRequest_];
      [v191 setTracklistToken_];
      [v191 setTracklistSource_];
      v193 = v190;
      v194 = sub_1C5CB3604();
      v197 = OUTLINED_FUNCTION_71_0(v194, v195, v196);
      sub_1C5C74C18(v197);
      v198 = v73;
      v199 = v191;
      v42 = OUTLINED_FUNCTION_346();
      v200 = sub_1C6016F30();

      if (os_log_type_enabled(v42, v200))
      {
        OUTLINED_FUNCTION_103_0();
        v201 = swift_slowAlloc();
        OUTLINED_FUNCTION_259();
        *v201 = 67109634;
        OUTLINED_FUNCTION_199();
        *(v201 + 4) = v202;
        *(v201 + 8) = 2114;
        *(v201 + 10) = v198;
        *(v201 + 18) = 2114;
        *(v201 + 20) = v3;
        *v203 = v198;
        v203[1] = v3;
        v204 = v198;
        v3 = v3;
        _os_log_impl(&dword_1C5C61000, v42, v200, "[XSQ:%{sonic:fourCC}u] buildPlaybackIntent(...) | building subscription request []\nrequest=%{public}@\nintent=%{public}@", v201, 0x1Cu);
        OUTLINED_FUNCTION_14_4(v205, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0);
        OUTLINED_FUNCTION_119();
        swift_arrayDestroy();
        v206 = OUTLINED_FUNCTION_28_0();
        MEMORY[0x1C6956920](v206);
        v207 = OUTLINED_FUNCTION_31_0();
        MEMORY[0x1C6956920](v207);
      }

      else
      {

        v42 = v198;
      }

      goto LABEL_56;
    }

    v219 = [objc_allocWithZone(MEMORY[0x1E6970818]) &selRef_int64ValueAtColumnIndex_];
    if (v30 < 0)
    {
      sub_1C5C64D74(0, &qword_1EC1A8B78);
      v77 = [swift_getObjCClassFromMetadata() identityKind];
      v78 = swift_task_alloc();
      v78[2] = v28;
      v78[3] = v29;
      v79 = objc_allocWithZone(MEMORY[0x1E6970550]);
    }

    else
    {
      if ((v30 & 1) != 0 || (v76 = sub_1C5CAB8D0(v29)) == 0)
      {
        v76 = [objc_opt_self() kindWithVariants_];
      }

      v77 = v76;
      v78 = swift_task_alloc();
      v78[2] = v28;
      v79 = objc_allocWithZone(MEMORY[0x1E6970550]);
    }

    v116 = OUTLINED_FUNCTION_9_4();
    sub_1C5E1ED90(v116, v117, v77, v118, v78);
    OUTLINED_FUNCTION_73();

    [v219 appendSection_];

    v119 = 0;
    v221 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v120 = v13 + 40 * v119;
    while (1)
    {
      if (v75 == v119)
      {
        sub_1C5C64D74(0, &qword_1ED7DCE70);
        sub_1C6016AF0();
        OUTLINED_FUNCTION_206();

        v188 = OUTLINED_FUNCTION_319();
        [v188 v189];

        [v73 setIdentifiers_];
        v3 = v220;
        v109 = &selRef_hasCapability_;
        goto LABEL_53;
      }

      if (v119 >= v75)
      {
        break;
      }

      v121 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        goto LABEL_60;
      }

      v122 = *(v120 + 64);
      ++v119;
      v120 += 40;
      if ((v122 & 0xC0) == 0x80)
      {
        v215 = v13;
        v217 = v73;
        v124 = *(v120 - 8);
        v123 = *v120;
        v126 = *(v120 + 8);
        v125 = *(v120 + 16);
        if ((v126 & 0x80) != 0)
        {
          sub_1C5C64D74(0, &qword_1EC1A8B78);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          sub_1C5CB586C(v124, v123, v126);
          v135 = [ObjCClassFromMetadata identityKind];
          v136 = swift_task_alloc();
          v136[2] = v124;
          v136[3] = v123;
          v137 = objc_allocWithZone(MEMORY[0x1E6970550]);
          v138 = OUTLINED_FUNCTION_8_2();
          sub_1C5E1ED90(v138, v139, v140, v141, v136);
        }

        else
        {
          v213 = *(v120 + 16);
          if ((v126 & 1) == 0)
          {
            switch(v123)
            {
              case 1:
              case 14:
                goto LABEL_40;
              case 2:
                objc_opt_self();
                v142 = objc_opt_self();
                v143 = OUTLINED_FUNCTION_119();
                sub_1C5CB58E0(v143, v144, v126, v125, v122);
                v145 = OUTLINED_FUNCTION_119();
                sub_1C5CB58E0(v145, v146, v126, v125, v122);
                v147 = [v142 kindWithVariants_];
                v148 = OUTLINED_FUNCTION_319();
                v150 = [v148 v149];
                goto LABEL_45;
              case 3:
                v211 = objc_opt_self();
                objc_opt_self();
                v168 = objc_opt_self();
                OUTLINED_FUNCTION_134(v124, 3);
                OUTLINED_FUNCTION_134(v124, 3);
                v169 = [v168 kindWithVariants_];
                v147 = OUTLINED_FUNCTION_350(v169, sel_kindWithSongKind_);

                v150 = [v211 kindWithAlbumKind_];
                goto LABEL_45;
              case 4:
                v212 = objc_opt_self();
                objc_opt_self();
                v170 = objc_opt_self();
                OUTLINED_FUNCTION_134(v124, 4);
                OUTLINED_FUNCTION_134(v124, 4);
                v171 = [v170 kindWithVariants_];
                v147 = OUTLINED_FUNCTION_350(v171, sel_kindWithSongKind_);

                v150 = [v212 kindWithAlbumKind_];
                goto LABEL_45;
              case 5:
                v209 = objc_opt_self();
                OUTLINED_FUNCTION_3_1();
                v158 = OUTLINED_FUNCTION_195();
                sub_1C5C6EFFC(v158, &qword_1ED7DCAF0, v159, v160);
                v161 = OUTLINED_FUNCTION_213();
                *(v161 + 16) = xmmword_1C60311D0;
                v162 = objc_opt_self();
                OUTLINED_FUNCTION_134(v124, 5);
                OUTLINED_FUNCTION_134(v124, 5);
                *(v161 + 32) = [v162 kindWithVariants_];
                *(v161 + 40) = [objc_opt_self() kindWithVariants_];
                *(v161 + 48) = [objc_opt_self() kindWithVariants_];
                sub_1C5CB593C();
                v163 = sub_1C6016AF0();

                v210 = [v209 kindWithKinds_];

                v164 = objc_opt_self();
                v165 = [v164 kindWithPlaylistEntryKind:v210 options:0];
                v166 = [v165 variants];

                v167 = v166 & 0xFFFFFFFFFFFFFFF7;
                v147 = v210;
                v150 = [v164 kindWithVariants:v167 playlistEntryKind:v210 options:0];
LABEL_45:
                v172 = v150;

                goto LABEL_46;
              case 6:
              case 7:
              case 8:
              case 9:
              case 10:
              case 11:
              case 12:
              case 13:
                break;
              default:
                if (v123 != 18)
                {
                  break;
                }

LABEL_40:
                objc_opt_self();
                OUTLINED_FUNCTION_315();
                v151 = OUTLINED_FUNCTION_59_0();
                OUTLINED_FUNCTION_342(v151, v152, v153);
                v154 = OUTLINED_FUNCTION_59_0();
                OUTLINED_FUNCTION_342(v154, v155, v156);
                v133 = [v125 kindWithVariants_];
                goto LABEL_41;
            }
          }

          objc_opt_self();
          OUTLINED_FUNCTION_315();
          v127 = OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_342(v127, v128, v129);
          v130 = OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_342(v130, v131, v132);
          v133 = [v125 kindWithVariants_];
LABEL_41:
          v157 = v133;
LABEL_46:
          v173 = swift_task_alloc();
          v173[2] = v124;
          v174 = objc_allocWithZone(MEMORY[0x1E6970550]);
          v175 = OUTLINED_FUNCTION_8_2();
          sub_1C5E1ED90(v175, v176, v177, v178, v173);
          v179 = OUTLINED_FUNCTION_59_0();
          sub_1C5CB587C(v179, v180, v181, v213, v122);
        }

        v182 = OUTLINED_FUNCTION_59_0();
        sub_1C5CB587C(v182, v183, v184, v185, v122);

        MEMORY[0x1C69535C0](v186);
        v78 = *((v221 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v187 = *((v221 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (v78 >= v187 >> 1)
        {
          OUTLINED_FUNCTION_128(v187);
          sub_1C6016B30();
        }

        OUTLINED_FUNCTION_252();
        sub_1C6016B70();
        v119 = v121;
        v13 = v215;
        v73 = v217;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v50 = *(v0 + 176);
  v51 = *(v0 + 80);
  *(v0 + 16) = v28;
  *(v0 + 24) = v29;
  *(v0 + 32) = v30;
  *(v0 + 40) = v51;
  *(v0 + 48) = v31 & 0x3F;
  v52 = [objc_allocWithZone(MEMORY[0x1E69706C8]) init];
  v53 = [objc_opt_self() deviceMediaLibraryWithUserIdentity_];
  if (v53)
  {
    v54 = v53;
    [v52 setMediaLibrary_];
    sub_1C5CA7574();
    result = [v52 playbackIntentWithStartItemIdentifiers_];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v56 = result;
    v57 = *(v0 + 184);
    -[NSObject setShuffleMode:](result, sel_setShuffleMode_, [v57 shuffleType]);
    -[NSObject setRepeatMode:](v56, sel_setRepeatMode_, [v57 repeatType]);
    v58 = v57;
    v59 = sub_1C5CB3604();
    v62 = OUTLINED_FUNCTION_71_0(v59, v60, v61);
    sub_1C5C74C18(v62);
    v42 = v52;
    v63 = v56;
    v64 = OUTLINED_FUNCTION_346();
    v65 = sub_1C6016F30();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = *(v0 + 184);
      OUTLINED_FUNCTION_103_0();
      v67 = swift_slowAlloc();
      OUTLINED_FUNCTION_259();
      *v67 = 67109634;
      OUTLINED_FUNCTION_208(*(v66 + OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage));
      *(v67 + 8) = 2114;
      *(v67 + 10) = v42;
      *(v67 + 18) = 2114;
      *(v67 + 20) = v3;
      *v68 = v42;
      v68[1] = v56;
      v42 = v42;
      v3 = v3;
      _os_log_impl(&dword_1C5C61000, v64, v65, "[XSQ:%{sonic:fourCC}u] buildPlaybackIntent(...) | building library request []\nrequest=%{public}@\nintent=%{public}@", v67, 0x1Cu);
      OUTLINED_FUNCTION_14_4(v69, &qword_1ED7DCC20, &qword_1ED7DCC30, 0x1E69E58C0);
      swift_arrayDestroy();
      v70 = OUTLINED_FUNCTION_37();
      MEMORY[0x1C6956920](v70);
      v71 = OUTLINED_FUNCTION_47();
      MEMORY[0x1C6956920](v71);
    }

    goto LABEL_56;
  }

  v80 = *(v0 + 176);
  v81 = *(v0 + 184);
  sub_1C5C64D74(0, &qword_1ED7DCCF0);
  sub_1C6016940();
  *(v0 + 96) = 3;
  v221 = 0;
  v222 = 0xE000000000000000;
  sub_1C6017540();

  OUTLINED_FUNCTION_89();
  v221 = 0xD000000000000021;
  v222 = v82;
  v83 = v81;
  v84 = [v81 description];
  v85 = sub_1C6016940();
  v87 = v86;

  MEMORY[0x1C69534E0](v85, v87);

  v88 = OUTLINED_FUNCTION_41();
  MEMORY[0x1C69534E0](v88);
  v89 = [v80 description];
  sub_1C6016940();

  v90 = OUTLINED_FUNCTION_252();
  MEMORY[0x1C69534E0](v90);

  sub_1C6016880();
  _s3__C4CodeOMa_4(0);
  OUTLINED_FUNCTION_2_3();
  sub_1C5CB8318(v91, v92);
  OUTLINED_FUNCTION_100();
  v93 = sub_1C6017280();

  v94 = v83;
  v95 = sub_1C5CB3604();
  v98 = OUTLINED_FUNCTION_71_0(v95, v96, v97);
  sub_1C5C74C18(v98);
  v99 = v93;
  v100 = sub_1C60162B0();
  v101 = sub_1C6016F20();

  if (os_log_type_enabled(v100, v101))
  {
    OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_46();
    v102 = swift_slowAlloc();
    v221 = v102;
    *v94 = 67109378;
    OUTLINED_FUNCTION_121();
    v94[1] = v103;
    *(v94 + 4) = 2082;
    swift_getErrorValue();
    v104 = sub_1C6017940();
    sub_1C5C6AB10(v104, v105, &v221);
    OUTLINED_FUNCTION_95();

    *(v94 + 10) = v83;
    _os_log_impl(&dword_1C5C61000, v100, v101, "[XSQ:%{sonic:fourCC}u] buildPlaybackIntent(...) | failed building library request [missing library] error=%{public}s", v94, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v102);
    v106 = OUTLINED_FUNCTION_28_0();
    MEMORY[0x1C6956920](v106);
    v107 = OUTLINED_FUNCTION_17();
    MEMORY[0x1C6956920](v107);
  }

  swift_willThrow();
  OUTLINED_FUNCTION_172();

  return v108();
}

uint64_t *sub_1C5CA6B88(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1C5E0232C(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1C5E0231C(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5CA6CA0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1C5CA6D64;

  return sub_1C5CA1278();
}

uint64_t sub_1C5CA6D64()
{
  OUTLINED_FUNCTION_315();
  v3 = *v2;
  v4 = *(*v2 + 24);
  v5 = *(*v2 + 16);
  v6 = *v2;
  OUTLINED_FUNCTION_101();
  *v7 = v6;

  v8 = *(v3 + 32);
  if (v0)
  {
    sub_1C6014D30();

    (v8)[2](v8, 0, v1);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v3 + 32), v1, 0);
    _Block_release(v8);
  }

  v9 = *(v6 + 8);

  return v9();
}

void sub_1C5CA6F0C(__int128 *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, const char *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = a1[1];
  v92 = *a1;
  v93 = v10;
  v94 = *(a1 + 32);
  if (v94 > 0x3Fu)
  {
    v32 = *(a1 + 32);
    v83 = *a1;
    v85 = a1[1];
    sub_1C5CB5698(&v92, v86);
    goto LABEL_11;
  }

  v99 = v92;
  v100 = v93;
  v101 = v94;
  objc_opt_self();
  v12 = [a3 userIdentity];
  v13 = OUTLINED_FUNCTION_253();
  v15 = [v13 v14];

  if (!v15)
  {
    __break(1u);
    goto LABEL_42;
  }

  sub_1C5CACA28(v15, v87);
  if (!v6)
  {
    v83 = v87[0];
    v85 = v87[1];
    v32 = v88;

LABEL_11:
    v89 = v83;
    v90 = v85;
    v91 = v32;
    if (v32 >> 6)
    {
      if (v32 >> 6 == 1)
      {
        if ((v94 & 0xC0) == 0x40)
        {
          v34 = *(&v92 + 1);
          v33 = v92;
LABEL_15:
          if (v83 == v33 && *(&v83 + 1) == v34)
          {
            goto LABEL_23;
          }

          v36 = sub_1C6017860();
LABEL_22:
          if (v36)
          {
LABEL_23:

LABEL_38:
            v79 = v90;
            *a6 = v89;
            *(a6 + 16) = v79;
            *(a6 + 32) = v91;
            return;
          }
        }
      }

      else if ((v94 & 0xC0) == 0x80)
      {
        v34 = *(&v92 + 1);
        v33 = v92;
        if ((v85 & 0x80) == 0)
        {
          if ((v93 & 0x80) == 0 && v83 == v92)
          {
            if (v85)
            {
              if (v93)
              {
                goto LABEL_23;
              }
            }

            else if (!(v93 & 1 | (*(&v83 + 1) != *(&v92 + 1))))
            {
              goto LABEL_23;
            }
          }

          goto LABEL_32;
        }

        if ((v93 & 0x80) != 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v95[0] = v83;
      v95[1] = v85;
      v96 = v32;
      if (v94 <= 0x3Fu)
      {
        v97[0] = v92;
        v97[1] = v93;
        v98 = v94;
        v36 = sub_1C5CAC220(v95, v97);
        goto LABEL_22;
      }
    }

LABEL_32:
    v102 = v6;
    if (qword_1EC1A9730 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v37 = sub_1C60162D0();
    __swift_project_value_buffer(v37, qword_1EC1BE490);
    sub_1C5CB55D8();
    v38 = a2;
    v39 = sub_1C5CB3604();
    v42 = OUTLINED_FUNCTION_71_0(v39, v40, v41);
    sub_1C5C74C18(v42);
    sub_1C5CB5698(&v92, v86);
    OUTLINED_FUNCTION_85_1();
    sub_1C5CB58E0(v43, v44, v45, v46, v47);
    v48 = sub_1C60162B0();
    v49 = sub_1C6016F30();

    sub_1C5CB56D0(&v92);
    OUTLINED_FUNCTION_85_1();
    sub_1C5CB587C(v50, v51, v52, v53, v54);
    if (!os_log_type_enabled(v48, v49))
    {

      goto LABEL_38;
    }

    v81 = v49;
    OUTLINED_FUNCTION_170();
    v55 = a3;
    v56 = swift_slowAlloc();
    OUTLINED_FUNCTION_97();
    v80 = swift_slowAlloc();
    OUTLINED_FUNCTION_72();
    v86[0] = swift_slowAlloc();
    *v56 = 67109890;
    *(v56 + 4) = *(*&v38[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage] + 16);
    *(v56 + 8) = 2082;
    v57 = sub_1C5CAE9DC();
    sub_1C5C6AB10(v57, v58, v86);
    OUTLINED_FUNCTION_113();

    *(v56 + 10) = v38;
    *(v56 + 18) = 2114;
    v59 = objc_opt_self();
    v60 = [v55 userIdentity];
    v61 = [v59 deviceMediaLibraryWithUserIdentity_];

    if (v61)
    {
      *(v56 + 20) = v61;
      *v80 = v61;
      *(v56 + 28) = 2082;
      OUTLINED_FUNCTION_85_1();
      sub_1C5CB58E0(v62, v63, v64, v65, v66);
      sub_1C5CAE9DC();
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_85_1();
      sub_1C5CB587C(v67, v68, v69, v70, v71);
      v72 = OUTLINED_FUNCTION_110_0();
      v75 = sub_1C5C6AB10(v72, v73, v74);

      *(v56 + 30) = v75;
      _os_log_impl(&dword_1C5C61000, v48, v81, "[XSQ:%{sonic:fourCC}u] fitContent(...) | swapped content [exists in library] \ncontent=%{public}s\nlibrary=%{public}@\nexistingContent=%{public}s", v56, 0x26u);
      sub_1C5CB5700(v80);
      v76 = OUTLINED_FUNCTION_28_0();
      MEMORY[0x1C6956920](v76);
      swift_arrayDestroy();
      v77 = OUTLINED_FUNCTION_47();
      MEMORY[0x1C6956920](v77);
      v78 = OUTLINED_FUNCTION_37();
      MEMORY[0x1C6956920](v78);

      goto LABEL_38;
    }

LABEL_42:
    __break(1u);
    return;
  }

  v84 = a3;

  if (qword_1EC1A9730 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v16 = sub_1C60162D0();
  __swift_project_value_buffer(v16, qword_1EC1BE490);
  sub_1C5CB55D8();
  v17 = a2;
  v18 = sub_1C5CB3604();
  v21 = OUTLINED_FUNCTION_71_0(v18, v19, v20);
  sub_1C5C74C18(v21);
  sub_1C5CB5698(&v92, v86);
  v22 = v6;
  v23 = sub_1C60162B0();
  v24 = sub_1C6016F20();

  sub_1C5CB56D0(&v92);
  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_103_0();
    v25 = swift_slowAlloc();
    OUTLINED_FUNCTION_72();
    v86[0] = swift_slowAlloc();
    *v25 = 67109634;
    OUTLINED_FUNCTION_129(*&v17[OBJC_IVAR___MPCAssistantXSchemeURLPlaybackQueue__storage]);
    *(v25 + 8) = 2082;
    v26 = sub_1C5CAE9DC();
    sub_1C5C6AB10(v26, v27, v86);
    OUTLINED_FUNCTION_95();

    *(v25 + 10) = v17;
    *(v25 + 18) = 2082;
    swift_getErrorValue();
    v28 = sub_1C6017940();
    sub_1C5C6AB10(v28, v29, v86);
    OUTLINED_FUNCTION_95();

    *(v25 + 20) = v17;
    _os_log_impl(&dword_1C5C61000, v23, v24, a5, v25, 0x1Cu);
    OUTLINED_FUNCTION_77_0();
    swift_arrayDestroy();
    v30 = OUTLINED_FUNCTION_28_0();
    MEMORY[0x1C6956920](v30);
    v31 = OUTLINED_FUNCTION_19();
    MEMORY[0x1C6956920](v31);
  }

  swift_willThrow();
  *a4 = v6;
}