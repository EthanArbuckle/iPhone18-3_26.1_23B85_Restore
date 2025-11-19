uint64_t sub_1C5D45CC4()
{
  sub_1C60150D0();
  sub_1C5D46310(&qword_1EC1AB538, MEMORY[0x1E6969770]);
  return sub_1C60168F0() & 1;
}

uint64_t sub_1C5D45D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1C6017860() & 1;
  }
}

uint64_t sub_1C5D45D98()
{
  OUTLINED_FUNCTION_51_4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_0(v4);
  *v5 = v6;
  v5[1] = sub_1C5CBD218;
  v7 = OUTLINED_FUNCTION_15_10();

  return sub_1C5D42BEC(v7, v8, v9, v10, v11, v1, v2, v3);
}

id sub_1C5D45E64(id result)
{
  if (result >= 0xA)
  {
    return result;
  }

  return result;
}

void sub_1C5D45E74(id a1)
{
  if (a1 >= 0xA)
  {
  }
}

void sub_1C5D45EB0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1C5C74680(255, a3);
    v4 = sub_1C6017350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C5D45F08()
{
  OUTLINED_FUNCTION_13();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_6_0(v6);
  *v7 = v8;
  v7[1] = sub_1C5CBD218;

  return sub_1C5D41610(v2, v3, v4, v5);
}

uint64_t sub_1C5D45FB0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_51_4();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_6_0(v2);
  *v3 = v4;
  v3[1] = sub_1C5CBD218;
  v5 = OUTLINED_FUNCTION_15_10();

  return sub_1C5D43188(v5, v6, v7, v8, v9, v1);
}

void sub_1C5D46080(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C6017690();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t objectdestroy_54Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C5D46120()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_51_4();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_6_0(v2);
  *v3 = v4;
  v3[1] = sub_1C5CBCD24;
  v5 = OUTLINED_FUNCTION_15_10();

  return sub_1C5D433BC(v5, v6, v7, v8, v9, v1);
}

uint64_t sub_1C5D461C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C5D46228(uint64_t a1)
{
  sub_1C5D45EB0(0, &qword_1ED7DCAD0, &qword_1ED7DCAE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C5D4629C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, MEMORY[0x1E69E6158], v8, MEMORY[0x1E69E6168]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1C5D46310(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1C5D4636C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 26))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5D463AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_8_16()
{

  sub_1C5D0DB30();
}

void OUTLINED_FUNCTION_18_8()
{

  JUMPOUT(0x1C69534E0);
}

void OUTLINED_FUNCTION_40_3()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_42_5()
{
  *(v0 + 88) = 0;
  *(v0 + 96) = 0xE000000000000000;

  return sub_1C6017540();
}

void OUTLINED_FUNCTION_43_6()
{

  sub_1C5D0DB30();
}

void OUTLINED_FUNCTION_58_3()
{
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
}

uint64_t OUTLINED_FUNCTION_63_1()
{

  return sub_1C6016820();
}

uint64_t OUTLINED_FUNCTION_64_4()
{
  *(v0 + 152) = 0;
  *(v0 + 160) = 0xE000000000000000;

  return sub_1C6017540();
}

uint64_t OUTLINED_FUNCTION_66_4()
{
}

uint64_t OUTLINED_FUNCTION_67_2()
{

  return sub_1C5D3F100();
}

void OUTLINED_FUNCTION_68_3()
{

  JUMPOUT(0x1C69534E0);
}

void OUTLINED_FUNCTION_84_0()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_85_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t sub_1C5D466B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  if (v3)
  {
    v5 = *(v1 + 16);
    v4 = *(v1 + 24);
    v6 = *(v1 + 32);
    if (v3 == 1)
    {
      v3 = 0;
      v7 = 2;
    }

    else
    {
      v7 = *(v1 + 120) & 1;
      v8 = v3;
    }

    swift_unknownObjectRetain();
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v6 = 0;
    v7 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v3;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_1C5D4674C()
{
  v1 = *(v0 + 112);
  if (!v1)
  {
    return 1;
  }

  if (v1 != 1)
  {
    return 0;
  }

  result = *(v0 + 32);
  if (result)
  {
    result = [result avPlayerItem];
    if (result)
    {

      return 1;
    }
  }

  return result;
}

void sub_1C5D467D8()
{
  if (*(v0 + 128))
  {

    swift_task_isCancelled();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1C5D4681C()
{
  OUTLINED_FUNCTION_151();
  sub_1C6017540();

  MEMORY[0x1C69534E0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1C69534E0](62, 0xE100000000000000);
  return 0xD000000000000019;
}

uint64_t sub_1C5D46894()
{
  OUTLINED_FUNCTION_248();
  if (qword_1ED7DFE38 != -1)
  {
    OUTLINED_FUNCTION_3_19();
  }

  *(v0 + 16) = qword_1ED7E1700;

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1C5D46958;

  return sub_1C5D4879C();
}

uint64_t sub_1C5D46958()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  OUTLINED_FUNCTION_65_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5D46A54()
{
  OUTLINED_FUNCTION_13();
  if (qword_1ED7DFE38 != -1)
  {
    OUTLINED_FUNCTION_3_19();
  }

  *(v0 + 16) = qword_1ED7E1700;

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1C5D46B28;

  return sub_1C5D4879C();
}

uint64_t sub_1C5D46B28()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  OUTLINED_FUNCTION_65_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5D46C24()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D46C80()
{
  if (*(v0 + 128))
  {
    sub_1C5CB5808();

    sub_1C6016C70();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5D46CEC()
{
  OUTLINED_FUNCTION_248();
  *(v1 + 16) = v0;
  *(v1 + 64) = v2;
  if (qword_1ED7DFE38 != -1)
  {
    OUTLINED_FUNCTION_3_19();
  }

  *(v1 + 24) = qword_1ED7E1700;

  OUTLINED_FUNCTION_65_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5D46D84()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[4] = Strong;
  v0[5] = *(v1 + 48);
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_1C5D46EB8;

    return sub_1C5D43FC4();
  }

  else
  {

    sub_1C6016BE0();
    sub_1C5D4A964();
    swift_allocError();
    sub_1C6016820();
    swift_willThrow();
    OUTLINED_FUNCTION_172();

    return v5();
  }
}

uint64_t sub_1C5D46EB8()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_30();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v0;

  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_32_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5D46FCC()
{
  OUTLINED_FUNCTION_248();

  v1 = v0[1];
  v2 = v0[4];
  v3 = v0[5];

  return v1(v2, v3);
}

uint64_t sub_1C5D47030()
{
  OUTLINED_FUNCTION_248();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D47094()
{
  OUTLINED_FUNCTION_248();
  *(v1 + 464) = v0;
  *(v1 + 233) = v2;
  sub_1C5C671CC();
  *(v1 + 472) = swift_task_alloc();
  if (qword_1ED7DFE38 != -1)
  {
    OUTLINED_FUNCTION_3_19();
  }

  *(v1 + 480) = qword_1ED7E1700;

  OUTLINED_FUNCTION_65_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5D47158()
{
  if (*(v0[58] + 32))
  {
    if (![OUTLINED_FUNCTION_66_5() hasLoadableAsset])
    {

      OUTLINED_FUNCTION_40_4();
      OUTLINED_FUNCTION_151();
      sub_1C6017540();
      v5 = sub_1C5D4681C();
      v7 = v6;

      OUTLINED_FUNCTION_18_9();
      v8 = MEMORY[0x1C69534E0]();
      OUTLINED_FUNCTION_38_4(v8, v9, v10, v11, v12, v13, v14, v15, v5, v7);
      sub_1C5DBBF0C();
      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_34_2();

      __asm { BRAA            X1, X16 }
    }

    v1 = swift_task_alloc();
    v0[70] = v1;
    *v1 = v0;
    OUTLINED_FUNCTION_21_12(v1);
    OUTLINED_FUNCTION_34_2();

    return MEMORY[0x1EEE41840]();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[61] = v3;
    *v3 = v0;
    v3[1] = sub_1C5D4732C;
    OUTLINED_FUNCTION_34_2();

    return sub_1C5D46CEC();
  }
}

uint64_t sub_1C5D4732C()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 496) = v0;

  if (!v0)
  {
    *(v4 + 504) = v3;
  }

  OUTLINED_FUNCTION_32_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C5D47458()
{
  OUTLINED_FUNCTION_248();
  v1 = v0[58];
  v0[64] = *(v1 + 16);
  v0[65] = *(v1 + 24);
  sub_1C6016C10();
  v0[66] = sub_1C6016C00();
  v3 = sub_1C6016BA0();

  return MEMORY[0x1EEE6DFA0](sub_1C5D474FC, v3, v2);
}

uint64_t sub_1C5D474FC()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  v3 = *(v0 + 496);
  v4 = *(v0 + 233);

  *(v0 + 536) = sub_1C5D400D8(v2, v1, v4);
  *(v0 + 544) = v3;
  swift_unknownObjectRelease();
  v5 = *(v0 + 480);
  if (v3)
  {
    v6 = sub_1C5D475B8;
  }

  else
  {
    v6 = sub_1C5D4761C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1C5D475B8()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D4761C()
{
  v1 = v0[58];
  *(v1 + 32) = v0[67];
  swift_unknownObjectRelease();
  if (*(v1 + 32))
  {
    if (![OUTLINED_FUNCTION_66_5() hasLoadableAsset])
    {

      OUTLINED_FUNCTION_40_4();
      OUTLINED_FUNCTION_151();
      sub_1C6017540();
      v4 = sub_1C5D4681C();
      v6 = v5;

      OUTLINED_FUNCTION_18_9();
      v7 = MEMORY[0x1C69534E0]();
      OUTLINED_FUNCTION_38_4(v7, v8, v9, v10, v11, v12, v13, v14, v4, v6);
      sub_1C5DBBF0C();
      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_34_2();

      __asm { BRAA            X1, X16 }
    }

    v2 = swift_task_alloc();
    v0[70] = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_21_12(v2);
    OUTLINED_FUNCTION_34_2();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE41840]();
}

uint64_t sub_1C5D47794()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  v3[71] = v0;

  if (v0)
  {
    v7 = v3[60];

    return MEMORY[0x1EEE6DFA0](sub_1C5D48360, v7, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v3[72] = v8;
    *v8 = v5;
    v8[1] = sub_1C5D478EC;

    return sub_1C5D46CEC();
  }
}

uint64_t sub_1C5D478EC()
{
  OUTLINED_FUNCTION_13();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  v5 = v4;
  OUTLINED_FUNCTION_30();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_101();
  *v8 = v7;
  v5[73] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_32_3();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v5[74] = v3;
    v12 = swift_task_alloc();
    v5[75] = v12;
    *v12 = v7;
    v12[1] = sub_1C5D47A60;

    return sub_1C5D4384C();
  }
}

uint64_t sub_1C5D47A60()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_30();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v7 + 608) = v6;
  *(v7 + 616) = v0;

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_32_3();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C5D47B94()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[77];
  sub_1C6016CB0();
  v2 = v0[76];
  if (v1)
  {

LABEL_8:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_172();

    return v9();
  }

  v0[78] = swift_getObjectType();
  if (([v2 isAssetLoaded] & 1) == 0)
  {
    OUTLINED_FUNCTION_63_2();
    v5 = v0[59];

    v6 = sub_1C6016C30();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    sub_1C5CE92C4(0, 0, v5, &unk_1C60378C8, v7);

    sub_1C5C7ACE0(v5);
    sub_1C6016BE0();
    sub_1C5D4A964();
    v8 = swift_allocError();
    sub_1C6016820();
    sub_1C5DBA7C4(v2);

    swift_willThrow();
    goto LABEL_8;
  }

  v3 = swift_task_alloc();
  v0[79] = v3;
  *v3 = v0;
  v3[1] = sub_1C5D47DFC;

  return sub_1C5D46CEC();
}

uint64_t sub_1C5D47D8C()
{
  OUTLINED_FUNCTION_248();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D47DFC()
{
  OUTLINED_FUNCTION_13();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  v5 = v4;
  OUTLINED_FUNCTION_30();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_101();
  *v8 = v7;
  v5[80] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_32_3();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v5[81] = v3;
    v12 = swift_task_alloc();
    v5[82] = v12;
    *v12 = v7;
    v12[1] = sub_1C5D47F6C;

    return sub_1C5D43C24();
  }
}

uint64_t sub_1C5D47F6C()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_30();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 664) = v0;

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_32_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5D4809C()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v1 + 664);

  sub_1C6016CB0();
  if (v2)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_172();
  }

  else
  {
    if ([*(v1 + 608) avPlayerItem])
    {
      OUTLINED_FUNCTION_63_2();
      v5 = v4;
      sub_1C5DEA0B4();
      v6 = sub_1C6016900();

      [v5 setContentItemID_];

      v7 = v5;
      v8 = [v0 title];
      [v7 setTitle_];

      v9 = v7;
      [v9 setIsVideoContent_];

      v10 = v9;
      [v10 setPrefersSeekOverSkip_];
    }

    swift_unknownObjectRelease();
    v11 = *(v1 + 464);
    *(v11 + 32) = *(v1 + 608);
    swift_unknownObjectRelease();
    v12 = *(v11 + 112);
    *(v11 + 112) = 1;
    *(v11 + 120) = 0;
    sub_1C5D4A7DC(v12);

    OUTLINED_FUNCTION_172();
  }

  return v3();
}

uint64_t sub_1C5D48284()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_63_2();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D482FC()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D48360()
{
  OUTLINED_FUNCTION_248();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D483D0()
{
  OUTLINED_FUNCTION_248();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D48440()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_63_2();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D484D4()
{
  OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_35();
  v1 = objc_opt_self();
  v2 = *MEMORY[0x1E69B1340];
  v3 = sub_1C6016900();
  v0[18] = v3;
  v4 = sub_1C6016900();
  v0[19] = v4;
  v5 = sub_1C6016900();
  v0[20] = v5;
  v0[2] = v0;
  v0[3] = sub_1C5D48664;
  v6 = swift_continuation_init();
  sub_1C5CB562C();
  v0[17] = v7;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C5E22268;
  v0[13] = &block_descriptor_13;
  v0[14] = v6;
  [v1 snapshotWithDomain:v2 type:v3 subType:v4 context:v5 triggerThresholdValues:0 events:0 completion:?];
  OUTLINED_FUNCTION_23_7();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1C5D48664()
{
  OUTLINED_FUNCTION_248();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C5D48738, 0, 0);
}

uint64_t sub_1C5D48738()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  OUTLINED_FUNCTION_172();

  return v3();
}

uint64_t sub_1C5D4879C()
{
  OUTLINED_FUNCTION_13();
  v1[297] = v0;
  v2 = sub_1C6016BE0();
  v1[298] = v2;
  v1[299] = *(v2 - 8);
  v1[300] = swift_task_alloc();
  v1[301] = swift_task_alloc();
  if (qword_1ED7DFE38 != -1)
  {
    OUTLINED_FUNCTION_3_19();
  }

  v1[302] = qword_1ED7E1700;

  v3 = swift_task_alloc();
  v1[303] = v3;
  *v3 = v1;
  v3[1] = sub_1C5D488D8;

  return sub_1C5D47094();
}

uint64_t sub_1C5D488D8()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 2416);
  v6 = *v1;
  OUTLINED_FUNCTION_101();
  *v7 = v6;
  *(v8 + 2432) = v0;

  if (v0)
  {
    v9 = sub_1C5D48C88;
  }

  else
  {
    v9 = sub_1C5D489E8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v5, 0);
}

uint64_t sub_1C5D490F8()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_30();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v7 + 2456) = v6;
  *(v7 + 2464) = v0;

  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_32_3();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C5D49210()
{
  OUTLINED_FUNCTION_13();
  v0[309] = *(v0[297] + 32);
  swift_unknownObjectRetain();
  v1 = swift_task_alloc();
  v0[310] = v1;
  *v1 = v0;
  v1[1] = sub_1C5D492C8;

  return sub_1C5D4524C();
}

uint64_t sub_1C5D492C8()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  *v4 = *v1;
  v3[311] = v5;
  v3[312] = v0;

  v6 = v3[302];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v0)
  {
    v7 = sub_1C5D498EC;
  }

  else
  {
    v7 = sub_1C5D49400;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1C5D49B90()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_30();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 2512) = v0;

  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_32_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

BOOL sub_1C5D4A4A0(id a1)
{
  sub_1C5C64D74(0, &qword_1ED7DCCF0);
  sub_1C5D4A854();
  v3 = v1;
  v4 = sub_1C6017810();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = swift_allocError();
    *v6 = v3;
  }

  v7 = sub_1C6014D30();

  v8 = [v7 domain];
  v9 = sub_1C6016940();
  v11 = v10;

  if (v9 == sub_1C6016940() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_1C6017860();

    if ((v14 & 1) == 0)
    {

      return 0;
    }
  }

  v16 = [v7 code];

  return v16 == a1;
}

uint64_t sub_1C5D4A610()
{

  swift_unknownObjectRelease();
  sub_1C5C96DF0(v0 + 40);
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  sub_1C5D4A7DC(*(v0 + 112));

  return v0;
}

uint64_t sub_1C5D4A664()
{
  sub_1C5D4A610();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

uint64_t get_enum_tag_for_layout_string_17MediaPlaybackCore9AssetTaskC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C5D4A6D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 9))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5D4A728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C5D4A788(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void sub_1C5D4A7DC(id a1)
{
  if (a1 >= 2)
  {
  }
}

void sub_1C5D4A7EC()
{
  if (!qword_1ED7DCEA0)
  {
    sub_1C5C64D74(255, &qword_1ED7DCEA8);
    v0 = sub_1C6017350();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7DCEA0);
    }
  }
}

unint64_t sub_1C5D4A854()
{
  result = qword_1ED7DCD00;
  if (!qword_1ED7DCD00)
  {
    sub_1C5C64D74(255, &qword_1ED7DCCF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7DCD00);
  }

  return result;
}

uint64_t sub_1C5D4A8BC()
{
  OUTLINED_FUNCTION_13();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C5CBCD24;

  return sub_1C5D484B8();
}

unint64_t sub_1C5D4A964()
{
  result = qword_1ED7DCF38;
  if (!qword_1ED7DCF38)
  {
    sub_1C6016BE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7DCF38);
  }

  return result;
}

uint64_t sub_1C5D4A9D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5D4AA18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetTask.Step(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetTask.Step(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C5D4ABD4()
{
  result = qword_1EC1AB548;
  if (!qword_1EC1AB548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB548);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_14()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_16_10()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t OUTLINED_FUNCTION_27_10()
{

  return sub_1C6017830();
}

void OUTLINED_FUNCTION_37_3()
{
  v2 = *(v0 + 2432);
}

void *OUTLINED_FUNCTION_38_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[30] = 0;
  v10[31] = 0;
  v10[32] = a9;
  v10[33] = a10;
  sub_1C5D3DD34((v10 + 30));

  return memcpy(v10 + 2, v10 + 30, 0xD9uLL);
}

void *OUTLINED_FUNCTION_40_4()
{
  v2 = *(v0 + 80);

  return __swift_project_boxed_opaque_existential_0((v0 + 56), v2);
}

uint64_t OUTLINED_FUNCTION_46_2()
{

  return sub_1C5DBBF0C();
}

unint64_t OUTLINED_FUNCTION_49_5()
{

  return sub_1C5D4681C();
}

void OUTLINED_FUNCTION_51_5()
{

  sub_1C5D4A7DC(v0);
}

uint64_t OUTLINED_FUNCTION_53_3()
{

  return sub_1C60169A0();
}

uint64_t OUTLINED_FUNCTION_54_3()
{

  return sub_1C5DBBF0C();
}

uint64_t OUTLINED_FUNCTION_56_3()
{

  return swift_unknownObjectRelease();
}

void OUTLINED_FUNCTION_57_2()
{

  JUMPOUT(0x1C69534E0);
}

unint64_t OUTLINED_FUNCTION_58_4()
{

  return sub_1C5D4681C();
}

uint64_t OUTLINED_FUNCTION_60_4()
{

  return sub_1C5CDAF64(v0 + 56, v1 + 2256);
}

uint64_t OUTLINED_FUNCTION_66_5()
{
  *(v1 + 552) = v0;

  return swift_unknownObjectRetain();
}

uint64_t sub_1C5D4AFF0()
{
  OUTLINED_FUNCTION_7_17();
  OUTLINED_FUNCTION_0_31();
  result = OUTLINED_FUNCTION_64_5(v0, v1, v2);
  if (v7)
  {
    OUTLINED_FUNCTION_35_7(v6, v7);
    v5 = *(v4 + 184);
    __swift_destroy_boxed_opaque_existential_0(v6);
    return (v5 & 1) == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C5D4B048()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v87 = v3;
  v88 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_102();
  v89 = (v4 - v5);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v84 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v84 - v10;
  sub_1C5D2D8C8();
  v12 = v11;
  OUTLINED_FUNCTION_25();
  v90 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_102();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v84 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v84 - v19;
  v21 = sub_1C60167E0();
  OUTLINED_FUNCTION_25();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_146();
  v27 = v26 - v25;
  (*(v23 + 104))(v26 - v25, *MEMORY[0x1E69D3968], v21);
  OUTLINED_FUNCTION_19_13();
  sub_1C5D5CE80(v28, v29);
  v30 = sub_1C6015290();
  (*(v23 + 8))(v27, v21);
  if ((v30 & 1) == 0)
  {
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_75_4();
  sub_1C5DABCEC(&v91);
  v31 = &selRef_addTarget_action_usingExtendedStatus_;
  if (!v92)
  {
    OUTLINED_FUNCTION_1_24();
    v54 = sub_1C5D5D294();
    goto LABEL_18;
  }

  sub_1C5C6BEFC(&v91, v93);
  sub_1C5CDAF64(v93, &v91);
  sub_1C5C74680(0, qword_1ED7DE920);
  OUTLINED_FUNCTION_107();
  type metadata accessor for SmartPlayerItemTransition();
  if (!swift_dynamicCast())
  {
    v54 = __swift_destroy_boxed_opaque_existential_0(v93);
LABEL_18:
    MEMORY[0x1C6952D20](v54);
    sub_1C6016250();
    (*(v90 + 8))(v18, v12);

    v55 = v9;
    v56 = sub_1C60162B0();
    v57 = sub_1C6016F30();

    if (os_log_type_enabled(v56, v57))
    {
      v20 = OUTLINED_FUNCTION_14_15();
      v58 = OUTLINED_FUNCTION_21();
      v93[0] = v58;
      *v20 = 136446210;
      v59 = *(v1 + 32);
      if (v59 && (v60 = [v59 avPlayerItem]) != 0)
      {
        v61 = v60;
        v86 = sub_1C5DBCDF8();
        v63 = v62;

        v55 = v86;
      }

      else
      {
        v63 = 0xE700000000000000;
      }

      sub_1C5C6AB10(v55, v63, v93);
      OUTLINED_FUNCTION_81_3();

      *(v20 + 4) = v55;
      _os_log_impl(&dword_1C5C61000, v56, v57, "[ALC] - Setting speedRamps to nil on: %{public}s due to no existing smart transition", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_4();

      v66 = OUTLINED_FUNCTION_43_7();
      v67(v66);
      v31 = &selRef_addTarget_action_usingExtendedStatus_;
      OUTLINED_FUNCTION_75_4();
    }

    else
    {

      v64 = OUTLINED_FUNCTION_43_7();
      v65(v64);
    }

    v68 = *(v1 + 32);
    v39 = v89;
    if (v68 && [v68 avPlayerItem])
    {
      OUTLINED_FUNCTION_107();
      sub_1C6016E90();
    }

    goto LABEL_35;
  }

  v32 = v93[4];
  __swift_project_boxed_opaque_existential_0(v93, v93[3]);
  v33 = OUTLINED_FUNCTION_312();
  v34 = v32;
  v31 = &selRef_addTarget_action_usingExtendedStatus_;
  v37 = v35(v33, v34) - 3;
  v38 = v36 >= 2u && v37 >= 2;
  v39 = v89;
  if (v38)
  {
    v40 = *(v1 + 32);
    if (v40)
    {
      v41 = [v40 avPlayerItem];
      if (v41)
      {
        v42 = v41;
        v43 = sub_1C6016E80();

        if (v43)
        {

          MEMORY[0x1C6952D20](v44);
          v45 = v86;
          sub_1C6016250();
          (*(v90 + 8))(v20, v12);

          v46 = sub_1C60162B0();
          v47 = sub_1C6016F30();

          if (os_log_type_enabled(v46, v47))
          {
            v85 = v47;
            v48 = OUTLINED_FUNCTION_14_15();
            v84 = OUTLINED_FUNCTION_21();
            *&v91 = v84;
            *v48 = 136446210;
            v49 = *(v1 + 32);
            if (v49 && (v50 = [v49 avPlayerItem]) != 0)
            {
              v51 = v50;
              v47 = sub_1C5DBCDF8();
              v53 = v52;

              v31 = &selRef_addTarget_action_usingExtendedStatus_;
            }

            else
            {
              v53 = 0xE700000000000000;
            }

            sub_1C5C6AB10(v47, v53, &v91);
            OUTLINED_FUNCTION_312();

            *(v48 + 4) = v47;
            _os_log_impl(&dword_1C5C61000, v46, v85, "[ALC] - Setting speedRamps to nil on: %{public}s due to clearTransitionOffsetDataOnCurrentItem with an uninitialized transition", v48, 0xCu);
            v47 = v84;
            __swift_destroy_boxed_opaque_existential_0(v84);
            OUTLINED_FUNCTION_4();
            OUTLINED_FUNCTION_4();

            v87[1](v86, v88);
          }

          else
          {

            v87[1](v45, v88);
          }

          v69 = *(v1 + 32);
          if (v69)
          {
            if ([v69 v31[176]])
            {
              OUTLINED_FUNCTION_107();
              sub_1C6016E90();
            }
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v93);
  v20 = v87;
  v9 = v88;
LABEL_35:
  MEMORY[0x1C6952D20]();
  sub_1C6016250();
  v70 = OUTLINED_FUNCTION_6_3();
  v71(v70);

  v72 = v39;
  v73 = sub_1C60162B0();
  v74 = sub_1C6016F30();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = OUTLINED_FUNCTION_14_15();
    v76 = OUTLINED_FUNCTION_21();
    v93[0] = v76;
    *v75 = 136446210;
    v77 = *(v1 + 32);
    if (v77)
    {
      v78 = [v77 v31[176]];
      if (v78)
      {
        v79 = v78;
        v72 = sub_1C5DBCDF8();
        v81 = v80;
      }

      else
      {
        v81 = 0xE700000000000000;
      }

      v39 = v89;
    }

    else
    {
      v81 = 0xE700000000000000;
    }

    sub_1C5C6AB10(v72, v81, v93);
    OUTLINED_FUNCTION_81_3();

    *(v75 + 4) = v72;
    _os_log_impl(&dword_1C5C61000, v73, v74, "[ALC] - Setting currentTransitionOffsetData nil on: %{public}s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v76);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();

    (*(v20 + 1))(v39, v9);
    v31 = &selRef_addTarget_action_usingExtendedStatus_;
  }

  else
  {

    (*(v20 + 1))(v39, v9);
  }

  v82 = *(v1 + 32);
  if (v82 && [v82 v31[176]])
  {
    v83 = OUTLINED_FUNCTION_107();
    sub_1C5DB1830(v83, 0, 1);
  }

LABEL_47:
  OUTLINED_FUNCTION_237();
}

void sub_1C5D4B884()
{
  OUTLINED_FUNCTION_77_3();
  v2 = v1;
  sub_1C5DABCEC(v11);
  v3 = v12;
  if (v12)
  {
    v4 = v13;
    OUTLINED_FUNCTION_45(v11, v12);
    v5 = (*(v4 + 112))(v0, v3, v4, v2);
    __swift_destroy_boxed_opaque_existential_0(v11);
    if (v5)
    {
      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      OUTLINED_FUNCTION_84_1();
      sub_1C6016880();
      OUTLINED_FUNCTION_297();
      _s3__C4CodeOMa_6();
      OUTLINED_FUNCTION_3_21();
      sub_1C5D5CE80(v6, v7);
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_100();
      v8 = sub_1C6017280();

      OUTLINED_FUNCTION_31_4();
      sub_1C5D4BA1C(v9, v10);

      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_24();
    sub_1C5D5D294();
  }

  sub_1C5D4B048();
}

uint64_t sub_1C5D4BA1C(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1C5D4B048();
  }

  return sub_1C5DAE024();
}

void sub_1C5D4BA50()
{
  OUTLINED_FUNCTION_52();
  sub_1C5DABCEC(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_45(v8, v9);
    v0 = OUTLINED_FUNCTION_303();
    v2 = v1(v0);
    __swift_destroy_boxed_opaque_existential_0(v8);
    if (v2)
    {
      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      OUTLINED_FUNCTION_84_1();
      sub_1C6016880();
      OUTLINED_FUNCTION_297();
      _s3__C4CodeOMa_6();
      OUTLINED_FUNCTION_3_21();
      sub_1C5D5CE80(v3, v4);
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_100();
      v5 = sub_1C6017280();

      OUTLINED_FUNCTION_31_4();
      sub_1C5D4BA1C(v6, v7);

      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_24();
    sub_1C5D5D294();
  }

  sub_1C5D4B048();
}

uint64_t sub_1C5D4BBD8(void *a1)
{
  v2 = v1;
  sub_1C5DABCEC(&v22);
  if (!v24)
  {
    OUTLINED_FUNCTION_1_24();
    return sub_1C5D5D294();
  }

  sub_1C5C74680(0, qword_1ED7DE920);
  OUTLINED_FUNCTION_107();
  type metadata accessor for SmartPlayerItemTransition();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  if (*(v21 + 48) == a1)
  {
    v5 = [a1 activeAudioFormat];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 isSpatialized];

      v8 = *(v21 + 80);
      if (v8 == 2 || ((v7 ^ v8) & 1) != 0)
      {
        goto LABEL_18;
      }
    }

    else if (*(v21 + 80) != 2)
    {
      goto LABEL_18;
    }
  }

  else if (*(v21 + 64) != a1)
  {
  }

  if (*(v21 + 64) == a1)
  {
    v9 = [a1 activeAudioFormat];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 isSpatialized];

      v12 = *(v21 + 81);
      if (v12 != 2 && ((v11 ^ v12) & 1) == 0)
      {
      }

      goto LABEL_18;
    }

    if (*(v21 + 81) != 2)
    {
LABEL_18:
      sub_1C5D9BCDC();
      if (v13 == 1)
      {
        if (sub_1C5DDBDF8())
        {
          if (*(v2 + 32))
          {
            swift_getObjectType();
            swift_unknownObjectRetain_n();
            sub_1C5D5C5D4();
            swift_unknownObjectRelease_n();
          }
        }

        else
        {
          sub_1C5C64D74(0, &qword_1ED7DCCF0);
          sub_1C6016940();
          v22 = 0;
          v23 = 0xE000000000000000;
          sub_1C6017540();

          v22 = 0x697469736E617254;
          v23 = 0xEB00000000206E6FLL;
          v14 = *(v21 + 16);
          v15 = *(v21 + 24);

          MEMORY[0x1C69534E0](v14, v15);

          MEMORY[0x1C69534E0](0xD000000000000024, 0x80000001C604D2E0);
          sub_1C6016880();
          _s3__C4CodeOMa_6();
          OUTLINED_FUNCTION_3_21();
          sub_1C5D5CE80(v16, v17);
          OUTLINED_FUNCTION_62_6();
          OUTLINED_FUNCTION_100();
          v18 = sub_1C6017280();

          OUTLINED_FUNCTION_31_4();
          sub_1C5D4BA1C(v19, v20);
        }
      }

      else
      {
        sub_1C5D4BF40();
      }
    }
  }
}

uint64_t sub_1C5D4BF40()
{
  OUTLINED_FUNCTION_7_17();
  OUTLINED_FUNCTION_0_31();
  result = OUTLINED_FUNCTION_64_5(v0, v1, v2);
  if (v9)
  {
    OUTLINED_FUNCTION_17_9(v8, v9);
    sub_1C5D3F6F8();
    v5 = v4;
    v7 = v6;
    swift_unknownObjectRelease();

    sub_1C5D4BFC4(v5);

    return __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5D4BFC4(uint64_t result)
{
  if (*(*(v1 + 40) + 32) != 1)
  {
    v2 = result;
    result = result >> 62 ? sub_1C6017440() : *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 2)
    {
      result = sub_1C5C6AA20(v2);
      if (result)
      {
        sub_1C5C8CEE0(0, (v2 & 0xC000000000000001) == 0, v2);
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C6954040](0, v2);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        result = sub_1C5DDBB38(1, v2);
        if (v3 != v4 >> 1)
        {
          if (v3 >= (v4 >> 1))
          {
            __break(1u);
            return result;
          }

          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          swift_unknownObjectRetain();

          swift_unknownObjectRetain();
          sub_1C5DAD5C8();
        }

        swift_unknownObjectRelease();

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1C5D4C118()
{
  sub_1C5D4C4B0();
  swift_unknownObjectRelease();

  sub_1C5C74C18(*(v0 + 48));

  return v0;
}

uint64_t sub_1C5D4C164()
{
  sub_1C5D4C118();

  return MEMORY[0x1EEE6BDC0](v0, 73, 7);
}

uint64_t sub_1C5D4C198(uint64_t a1)
{
  *(v1 + 16) = a1;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  *(v1 + 72) = 1;
  return result;
}

uint64_t sub_1C5D4C1D0()
{
  v1 = v0;
  sub_1C6014D30();
  v2 = swift_beginAccess();
  MEMORY[0x1C69535C0](v2);
  sub_1C5C68934(*((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10));
  OUTLINED_FUNCTION_303();
  sub_1C6016B70();
  v3 = *(v0 + 64);
  swift_endAccess();
  result = sub_1C5C6AA20(v3);
  if (result >= 11)
  {
    result = sub_1C5C6AA20(*(v1 + 64));
    v5 = result - 10;
    if (__OFSUB__(result, 10))
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      sub_1C5D4C2A0(v5);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1C5D4C2A0(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1C5C6AA20(*v1);
  result = sub_1C5D85590(0);
  if (v2)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (result < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_1C5D105F8(0, result);
}

uint64_t sub_1C5D4C330()
{
  OUTLINED_FUNCTION_77_3();
  if (v2)
  {
    OUTLINED_FUNCTION_31_2();
    swift_beginAccess();
    if (sub_1C5C6AA20(v0[8]) < 1)
    {
      v6 = v1;
    }

    else
    {
      v11 = v0[8];
      v3 = v1;

      sub_1C6014D30();
      MEMORY[0x1C69535C0]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C6016B30();
      }

      OUTLINED_FUNCTION_32();
      sub_1C6016B70();
      swift_getErrorValue();
      sub_1C6017930();
      v5 = v4;
      sub_1C60169D0();
      OUTLINED_FUNCTION_80_3();

      OUTLINED_FUNCTION_11_0();
      sub_1C5DBAC6C();
      OUTLINED_FUNCTION_81_3();

      v1 = v5;
    }
  }

  v7 = v0[6];
  if (v7)
  {

    v8 = OUTLINED_FUNCTION_18();
    v7(v8);
    sub_1C5C74C18(v7);
  }

  v9 = v0[6];
  v0[6] = 0;
  v0[7] = 0;
  return sub_1C5C74C18(v9);
}

void sub_1C5D4C4B0()
{
  OUTLINED_FUNCTION_52();
  sub_1C6017540();

  OUTLINED_FUNCTION_89();
  v6 = v0;
  v1 = OUTLINED_FUNCTION_303();
  MEMORY[0x1C69534E0](v1);
  OUTLINED_FUNCTION_87();
  v2 = OUTLINED_FUNCTION_18();
  v5 = sub_1C5DBA4F0(v2, v3, 0, v4, v6);

  sub_1C5D4C330();
}

uint64_t sub_1C5D4C574()
{
  if (*(v0 + 272))
  {
    return 0;
  }

  else
  {
  }
}

uint64_t sub_1C5D4C5A0()
{
  v1 = *(v0 + 256);
  v2 = 0;
  switch(*(v0 + 272))
  {
    case 1:
    case 2:
      goto LABEL_3;
    case 3:
      return v2;
    default:
      v1 = *(v1 + 32);
LABEL_3:

      v2 = v1;
      break;
  }

  return v2;
}

void sub_1C5D4C600(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 280);
  if (a1)
  {
    if (v3 == a1)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  sub_1C5DDBEA4();
  v4 = *(v1 + 288);
  if (v4)
  {
    v5 = v4;
    sub_1C6014CB0();

    v4 = *(v2 + 288);
  }

  *(v2 + 288) = 0;

  v6 = *(v2 + 280);
  if (v6)
  {
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v12[4] = sub_1C5D5D8EC;
    v12[5] = v8;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1C5D4C97C;
    v12[3] = &block_descriptor_207;
    v9 = _Block_copy(v12);
    swift_unknownObjectRetain_n();

    v10 = [v6 observeChapters_];
    swift_unknownObjectRelease();
    _Block_release(v9);
    v11 = *(v2 + 288);
    *(v2 + 288) = v10;
  }
}

uint64_t sub_1C5D4C778(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (, , Strong = sub_1C5DDBE58(), , Strong))
  {
    v5 = [Strong contentItemID];
    swift_unknownObjectRelease();
    v6 = sub_1C6016940();
    Strong = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = [a3 contentItemID];
  v9 = sub_1C6016940();
  v11 = v10;

  if (!Strong)
  {
  }

  if (v6 == v9 && Strong == v11)
  {
  }

  else
  {
    v13 = sub_1C6017860();

    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1C5DDBEA4();
  }

  return result;
}

uint64_t sub_1C5D4C924(uint64_t a1)
{
  v2 = *(v1 + 280);
  *(v1 + 280) = a1;
  swift_unknownObjectRetain();
  sub_1C5D4C600(v2);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5D4C97C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1C6016B10();

  v1(v2);
}

uint64_t sub_1C5D4C9EC()
{
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_31();
  result = sub_1C5C84D90(v0 + 144, v9);
  if (v10)
  {
    OUTLINED_FUNCTION_17_9(v9, v10);
    *(v0 + 208) = 1;
    sub_1C5D3FA08(1, v2, v3, v4, v5, v6, v7, v8, v9[0], v9[1], v9[2], v10, v11, v12, v13, v14, v15, v16, vars0, vars8);
    __swift_destroy_boxed_opaque_existential_0(v9);
    sub_1C5C96DF0(v0 + 16);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v0 + 80);

    swift_unknownObjectRelease();

    sub_1C5D5D294();
    sub_1C5D5D118(*(v0 + 192), *(v0 + 200), *(v0 + 208));

    sub_1C5D5CE30(*(v0 + 256), *(v0 + 264), *(v0 + 272));
    swift_unknownObjectRelease();

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5D4CB10()
{
  sub_1C5D4C9EC();

  return MEMORY[0x1EEE6BDC0](v0, 296, 7);
}

uint64_t sub_1C5D4CB44()
{
  OUTLINED_FUNCTION_77_3();
  OUTLINED_FUNCTION_7_17();
  OUTLINED_FUNCTION_0_31();
  result = OUTLINED_FUNCTION_64_5(v2, v3, v4);
  if (v26)
  {
    OUTLINED_FUNCTION_17_9(v25, v26);
    sub_1C5D41550(v1, v6, v7, v8, v9, v10, v11, v12, v22, v23, v24, v25[0], v25[1], v25[2], v26, v27, v28, v29, v30, v31);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v13 = v0[8];
    v14 = sub_1C6014D30();
    [v13 resetWithReason_];

    v15 = v0[15];
    if (v15)
    {
      v16 = sub_1C6014D30();
      [v15 resetWithReason_];
    }

    v17 = v0[24];
    v18 = v0[25];
    v19 = v0[26];
    v0[25] = 0;
    v0[26] = 0;
    v0[24] = 0;
    sub_1C5D5D118(v17, v18, v19);
    OUTLINED_FUNCTION_31_4();
    sub_1C5D4BA1C(v20, v21);
    return OUTLINED_FUNCTION_24_11();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5D4CD70()
{
  if (*(v0 + 272) == 2)
  {
    return 1;
  }

  v1 = v0;
  if (sub_1C5DDBEF8() == 0x8000)
  {
    return 1;
  }

  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_31();
  v4 = OUTLINED_FUNCTION_30_10();
  result = sub_1C5C84D90(v4, v5);
  if (v12)
  {
    OUTLINED_FUNCTION_35_7(v11, v12);
    v7 = v6[185];
    v8 = v6[186];
    v9 = v6[187];
    v2 = v6[188];
    __swift_destroy_boxed_opaque_existential_0(v11);
    if (v7 == 1)
    {
      v10 = *(v1 + 32);
      if (v10 && !(v8 & 1 | (([v10 isAssetLoaded] & 1) == 0) | v9 & 1))
      {
        return v2;
      }
    }

    else if (((v8 | v9) & 1) == 0)
    {
      return v2;
    }

    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5D4CE50()
{
  if ((sub_1C5D4CD70() & 1) == 0)
  {
    return 0;
  }

  result = [*(v0 + 56) targetContentItemID];
  if (result)
  {

    return 1;
  }

  return result;
}

void sub_1C5D4CE98()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  sub_1C6015060();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_45((v0 + 80), *(v0 + 104));
  OUTLINED_FUNCTION_89();
  v21[0] = 0xD000000000000014;
  v21[1] = v3;
  sub_1C5D5CCE4(v21);
  memcpy(v20, v21, sizeof(v20));
  sub_1C5DBBF0C();
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_31();
  sub_1C5C84D90(v0 + 144, v18);
  if (v19)
  {
    OUTLINED_FUNCTION_35_7(v18, v19);
    if (v4[184])
    {
      __swift_destroy_boxed_opaque_existential_0(v18);
    }

    else
    {
      v5 = v4[186];
      v6 = v4[187];
      v7 = v4[188];
      v8 = v4[189];
      v9 = v4[185];
      __swift_destroy_boxed_opaque_existential_0(v18);
      if ((v9 & 1) == 0 && ((v5 | v6 | v7 | v8) & 1) == 0 && *(v1 + 32))
      {
        swift_unknownObjectRetain_n();
        sub_1C6015050();
        v10 = sub_1C6015030();
        v12 = v11;
        v13 = OUTLINED_FUNCTION_32();
        v14(v13);
        v18[0] = 0xD000000000000011;
        v18[1] = 0x80000001C604D360;
        MEMORY[0x1C69534E0](v10, v12);

        sub_1C5D4DC68();
        swift_unknownObjectRelease_n();

LABEL_10:
        OUTLINED_FUNCTION_237();
        return;
      }
    }

    OUTLINED_FUNCTION_0_31();
    sub_1C5C84D90(v1 + 144, v18);
    if (v19)
    {
      OUTLINED_FUNCTION_17_9(v18, v19);
      OUTLINED_FUNCTION_31_2();
      sub_1C5D41AB0(v15, v16, v17);
      __swift_destroy_boxed_opaque_existential_0(v18);
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1C5D4D0E8()
{
  v1 = v0;
  v2 = sub_1C5D4C574();
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3 && [v3 hasLoadableAsset])
    {
    }

    else
    {
      sub_1C5D4C330();
      sub_1C5DDC0F0();
      v5 = v4;

      *(v0 + 220) = v5;
      *(v0 + 224) = 0;
    }
  }

  OUTLINED_FUNCTION_24_11();
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_31();
  v6 = OUTLINED_FUNCTION_30_10();
  sub_1C5C84D90(v6, v7);
  if (v15)
  {
    OUTLINED_FUNCTION_35_7(v14, v15);
    if (*(v8 + 104))
    {
      v9 = *(v8 + 96);
      v10 = *(v8 + 104);
    }

    else
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_0(v14);
    v11 = sub_1C5DBA4F0(v9, v10, 0, 0x6572206575657551, 0xEE00646563616C70);

    *(v1 + 248) = 1;
    sub_1C5DDC13C(v11);
    *(v1 + 248) = 0;
    OUTLINED_FUNCTION_31_4();
    sub_1C5D4BA1C(v12, v13);
    sub_1C5D4D248();
  }

  else
  {
    __break(1u);
  }
}

void sub_1C5D4D248()
{
  OUTLINED_FUNCTION_247();
  v2 = v0;
  v4 = v3;
  v5 = v1;
  v6 = 0x65736C6166;
  v7 = v0[4];
  if (v7)
  {
    if (v7 == v1)
    {
LABEL_3:
      sub_1C5CDAF64((v0 + 10), v58);
      OUTLINED_FUNCTION_34_7(v58, v58[3]);
      __dst[0] = 0;
      __dst[1] = v8;
      swift_unknownObjectRetain();
      sub_1C6017540();
      v57[0] = __dst[0];
      v57[1] = __dst[1];
      MEMORY[0x1C69534E0](0xD00000000000003CLL, 0x80000001C604C2F0);
      if (v7)
      {
        ObjectType = swift_getObjectType();
        v10 = v7;
      }

      else
      {
        ObjectType = OUTLINED_FUNCTION_9_16();
      }

      OUTLINED_FUNCTION_79_1(ObjectType, v10);
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_10_0(__dst);
      sub_1C5CBCF4C(__dst);
      OUTLINED_FUNCTION_38_5();
      if (v7 && ([v7 isAssetLoaded] & 1) != 0)
      {
        v20 = 0xE400000000000000;
        v21 = 1702195828;
      }

      else
      {
        v20 = 0xE500000000000000;
        v21 = 0x65736C6166;
      }

      MEMORY[0x1C69534E0](v21, v20);

      MEMORY[0x1C69534E0](0x203E2D3C205DLL, 0xE600000000000000);
      if (v5)
      {
        v22 = swift_getObjectType();
        v23 = v5;
      }

      else
      {
        v22 = OUTLINED_FUNCTION_9_16();
      }

      OUTLINED_FUNCTION_79_1(v22, v23);
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_10_0(__dst);
      sub_1C5CBCF4C(__dst);
      OUTLINED_FUNCTION_38_5();
      if (v5)
      {
        [v5 isAssetLoaded];
      }

      v24 = OUTLINED_FUNCTION_62_6();
      MEMORY[0x1C69534E0](v24);

      OUTLINED_FUNCTION_87();
      v59[0] = v57[0];
      v59[1] = v57[1];
      sub_1C5D5CCE4(v59);
      memcpy(__dst, v59, 0xD9uLL);
      sub_1C5DBBF0C();

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v58);
      goto LABEL_49;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  sub_1C5CDAF64((v0 + 10), v56);
  __swift_project_boxed_opaque_existential_0(v56, v56[3]);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  swift_unknownObjectRetain();
  sub_1C6017540();
  v54 = __dst[0];
  v55 = __dst[1];
  MEMORY[0x1C69534E0](0xD00000000000003ALL, 0x80000001C604C210);
  if (v7)
  {
    v11 = swift_getObjectType();
    v12 = v7;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_9_16();
  }

  OUTLINED_FUNCTION_79_1(v11, v12);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_10_0(__dst);
  sub_1C5CBCF4C(__dst);
  OUTLINED_FUNCTION_38_5();
  if (v7 && ([v7 isAssetLoaded] & 1) != 0)
  {
    v13 = 0xE400000000000000;
    v14 = 1702195828;
  }

  else
  {
    v13 = 0xE500000000000000;
    v14 = 0x65736C6166;
  }

  MEMORY[0x1C69534E0](v14, v13);

  MEMORY[0x1C69534E0](0x203E2D205DLL, 0xE500000000000000);
  if (v5)
  {
    v15 = swift_getObjectType();
    v16 = v5;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_9_16();
  }

  OUTLINED_FUNCTION_79_1(v15, v16);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_10_0(__dst);
  sub_1C5CBCF4C(__dst);
  OUTLINED_FUNCTION_38_5();
  v17 = 0xE500000000000000;
  if (v5 && [v5 isAssetLoaded])
  {
    v6 = 1702195828;
    v17 = 0xE400000000000000;
  }

  MEMORY[0x1C69534E0](v6, v17);

  OUTLINED_FUNCTION_87();
  __src[0] = v54;
  __src[1] = v55;
  sub_1C5D5CCE4(__src);
  memcpy(__dst, __src, 0xD9uLL);
  sub_1C5DBBF0C();

  __swift_destroy_boxed_opaque_existential_0(v56);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = OUTLINED_FUNCTION_73();
    sub_1C5DD0BD0(v18, v5);
    swift_unknownObjectRelease();
  }

  if (v7)
  {
    __swift_project_boxed_opaque_existential_0(v0 + 10, v0[13]);
    v59[0] = 0;
    v59[1] = 0xE000000000000000;
    swift_unknownObjectRetain();
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000039, 0x80000001C604C2B0);
    swift_getObjectType();
    v57[0] = v7;
    sub_1C6017830();
    v58[0] = v59[0];
    v58[1] = v59[1];
    sub_1C5D5CCE4(v58);
    memcpy(v59, v58, 0xD9uLL);
    sub_1C5DBBF0C();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = OUTLINED_FUNCTION_73();
      sub_1C5DD0C7C(v19);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v0[4] = v5;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1C5CDAF64((v0 + 10), v52);
  OUTLINED_FUNCTION_16_11(v52, v52[3]);
  v58[0] = 0;
  v58[1] = v25;
  sub_1C6017540();
  v50 = v58[0];
  v51 = v58[1];
  MEMORY[0x1C69534E0](0xD000000000000039, 0x80000001C604C250);
  v26 = v0[4];
  if (v26)
  {
    v27 = swift_getObjectType();
  }

  else
  {
    v27 = 0;
    v49[2] = 0;
    v49[1] = 0;
  }

  v49[0] = v26;
  v49[3] = v27;
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_10_0(v49);
  sub_1C5CBCF4C(v49);
  v48[0] = v50;
  v48[1] = v51;
  sub_1C5D5CCE4(v48);
  memcpy(v58, v48, 0xD9uLL);
  sub_1C5DBBF0C();

  __swift_destroy_boxed_opaque_existential_0(v52);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = swift_unknownObjectRetain();
    sub_1C5DD0DDC(v28);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v29 = v2[4];
  if (!v29)
  {
LABEL_48:
    swift_unknownObjectRelease();
LABEL_49:
    OUTLINED_FUNCTION_237();
    return;
  }

  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_31();
  sub_1C5C84D90((v2 + 18), v46);
  if (v47)
  {
    OUTLINED_FUNCTION_45(v46, v47);
    swift_getObjectType();
    v30 = [swift_unknownObjectRetain() contentItemID];
    v31 = sub_1C6016940();
    v33 = v32;

    sub_1C5D42F88(v31, v33, v34, v35, v36, v37, v38, v39, v42, v4, v44, v45[0], v45[1], v45[2], v45[3], v45[4], v45[5], v45[6], v45[7], v45[8]);

    __swift_destroy_boxed_opaque_existential_0(v46);
    __swift_project_boxed_opaque_existential_0(v2 + 10, v2[13]);
    v57[0] = 0;
    v57[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000039, 0x80000001C604C250);
    sub_1C6017830();
    MEMORY[0x1C69534E0](0xD00000000000001DLL, 0x80000001C604C290);
    v45[0] = v57[0];
    v45[1] = v57[1];
    sub_1C5D5CCE4(v45);
    memcpy(v57, v45, 0xD9uLL);
    sub_1C5DBBF0C();

    sub_1C5DDD4FC(v29, [v2[7] canSkipInDirection:1 fromItem:v29], objc_msgSend(v2[7], sel_canSkipInDirection_fromItem_, 0, v29));
    if (v43)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v40 = OUTLINED_FUNCTION_312();
        sub_1C5DD0D20(v29);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        goto LABEL_48;
      }
    }

    else
    {

      sub_1C5D57708();
      OUTLINED_FUNCTION_312();

      v41 = v2;
      OUTLINED_FUNCTION_312();
      sub_1C5DB598C();
    }

    swift_unknownObjectRelease();
    goto LABEL_48;
  }

  __break(1u);
}

uint64_t sub_1C5D4DACC()
{
  OUTLINED_FUNCTION_7_17();
  OUTLINED_FUNCTION_0_31();
  result = OUTLINED_FUNCTION_64_5(v0, v1, v2);
  if (v5)
  {
    OUTLINED_FUNCTION_17_9(v4, v5);
    sub_1C5D41728();
    __swift_destroy_boxed_opaque_existential_0(v4);
    return OUTLINED_FUNCTION_24_11();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5D4DB3C()
{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_16_11((v1 + 80), *(v1 + 104));
  sub_1C6017540();

  OUTLINED_FUNCTION_89();
  __src[0] = 0xD000000000000024;
  __src[1] = v2;
  v3 = OUTLINED_FUNCTION_303();
  MEMORY[0x1C69534E0](v3);
  sub_1C5D5CCE4(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C5DBBF0C();

  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_31();
  result = sub_1C5C84D90(v0 + 144, v21);
  if (v22)
  {
    OUTLINED_FUNCTION_45(v21, v22);
    OUTLINED_FUNCTION_0_31();
    result = sub_1C5C84D90(v0 + 144, v15);
    if (v16)
    {
      OUTLINED_FUNCTION_35_7(v15, v16);
      v6 = *(v5 + 184);
      __swift_destroy_boxed_opaque_existential_0(v15);
      sub_1C5D3EF18(v6 | 0x10000000000, v7, v8, v9, v10, v11, v12, v13, v14, v15[0], v15[1], v15[2], v16, v17, v18, v19, v20, v21[0], v21[1], v21[2]);
      return __swift_destroy_boxed_opaque_existential_0(v21);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C5D4DC68()
{
  OUTLINED_FUNCTION_131();
  v1 = v0;
  v36 = v2;
  v37 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  __swift_project_boxed_opaque_existential_0((v0 + 80), *(v0 + 104));
  sub_1C6017540();

  OUTLINED_FUNCTION_89();
  __src[0] = 0xD00000000000002DLL;
  __src[1] = v12;
  v13 = OUTLINED_FUNCTION_303();
  MEMORY[0x1C69534E0](v13);
  sub_1C5D5CCE4(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C5DBBF0C();

  if (*(v0 + 224) != 1)
  {
    v14 = *(v0 + 220);
    OUTLINED_FUNCTION_55_5();
    if (v14 != 0.0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if ((v9 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_5();
    v14 = 0.0;
LABEL_9:
    v18 = sub_1C5DDBEF8();
    if ((v18 & 0xC000) != 0 || (v18 & 1) == 0)
    {
      v17 = 0;
    }

    else
    {
      sub_1C5DDC0F0();
      v14 = v19;
      v17 = 1;
    }

    goto LABEL_13;
  }

  sub_1C5DDC0F0();
  v14 = 1.0;
  if (v15 != 0.0)
  {
    sub_1C5DDC0F0();
    v14 = v16;
  }

  OUTLINED_FUNCTION_55_5();
LABEL_13:
  v35 = v17;
  v20 = sub_1C5DDBEF8();
  v21 = v11;
  if (!v11)
  {
    v21 = *(v0 + 32);
    swift_unknownObjectRetain();
  }

  v34 = v20 > 0x8004u;
  *(v0 + 248) = 1;
  OUTLINED_FUNCTION_7_3();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_89_1();
  swift_unknownObjectRetain();

  sub_1C5DDC1F0(v21, v7, v5, sub_1C5D5D814, v22, v14);

  *(v0 + 248) = 0;
  OUTLINED_FUNCTION_7_3();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_89_1();
  v24 = swift_allocObject();
  v24[2] = v36;
  v24[3] = v37;
  v24[4] = v7;
  v24[5] = v5;
  v24[6] = v23;
  type metadata accessor for AssetSlidingQueueController.SetQueueContext();
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E7CC0];
  *(v25 + 56) = v24;
  *(v25 + 64) = v26;
  *(v25 + 16) = v21;
  *(v25 + 24) = v35;
  *(v25 + 25) = v34;
  *(v25 + 32) = v7;
  *(v25 + 40) = v5;
  *(v25 + 48) = sub_1C5D5D81C;
  *(v25 + 72) = 0;
  v27 = *(v1 + 256);
  v28 = *(v1 + 264);
  *(v1 + 256) = v25;
  *(v1 + 264) = 0;
  LOBYTE(v22) = *(v1 + 272);
  *(v1 + 272) = 0;
  swift_unknownObjectRetain();
  swift_bridgeObjectRetain_n();
  v29 = OUTLINED_FUNCTION_32();
  sub_1C5C74C28(v29);

  sub_1C5D5CE30(v27, v28, v22);
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_31();
  sub_1C5C84D90(v1 + 144, v38);
  if (v39)
  {
    OUTLINED_FUNCTION_45(v38, v39);
    OUTLINED_FUNCTION_7_3();
    v30 = swift_allocObject();
    OUTLINED_FUNCTION_89_1();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = v7;
    v31[4] = v5;
    v31[5] = v25;

    sub_1C5D41938();

    __swift_destroy_boxed_opaque_existential_0(v38);
    OUTLINED_FUNCTION_0_31();
    sub_1C5C84D90(v1 + 144, v38);
    if (v39)
    {
      OUTLINED_FUNCTION_17_9(v38, v39);
      sub_1C5D3F6F8();
      v33 = v32;
      sub_1C5D4E3B8();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0(v38);
      OUTLINED_FUNCTION_130();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C5D4E064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    if (a3)
    {
    }

    swift_beginAccess();
    result = sub_1C5C84D90(v5 + 144, v20);
    if (v21)
    {
      __swift_project_boxed_opaque_existential_0(v20, v21);
      result = sub_1C5C84D90(v5 + 144, v14);
      if (v15)
      {
        v6 = *(*__swift_project_boxed_opaque_existential_0(v14, v15) + 184);
        __swift_destroy_boxed_opaque_existential_0(v14);
        sub_1C5D3EF18(v6, v7, v8, v9, v10, v11, v12, v13, v14[0], v14[1], v14[2], v15, v16, v17, v18, v19, v20[0], v20[1], v20[2], v21);

        return __swift_destroy_boxed_opaque_existential_0(v20);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1C5D4E178(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t, void *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    a4(a6, a7, a3);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_1C5D4C574();
    if (!v12)
    {
LABEL_10:

      return;
    }

    v14 = *(v12 + 32);
    v13 = *(v12 + 40);

    if (v14 == a6 && v13 == a7)
    {
    }

    else
    {
      v16 = sub_1C6017860();

      if ((v16 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    if (a3)
    {
      v17 = *(v11 + 256);
      v18 = *(v11 + 264);
      *(v11 + 256) = a6;
      *(v11 + 264) = a7;
      v19 = *(v11 + 272);
      *(v11 + 272) = 2;

      v20 = a3;
      sub_1C5D5CE30(v17, v18, v19);
      v21 = *(v11 + 64);
      swift_unknownObjectRetain();
      v22 = sub_1C6014D30();
      [v21 reportCriticalError:v22 forItem:0];

      swift_unknownObjectRelease();
    }

    else
    {
      v23 = *(v11 + 256);
      v24 = *(v11 + 264);
      *(v11 + 256) = a6;
      *(v11 + 264) = a7;
      v25 = *(v11 + 272);
      *(v11 + 272) = 1;

      sub_1C5D5CE30(v23, v24, v25);
      swift_beginAccess();
      sub_1C5C84D90(v11 + 144, v28);
      if (v29)
      {
        __swift_project_boxed_opaque_existential_0(v28, v29);
        sub_1C5D3F6F8();
        v27 = v26;
        sub_1C5D4E3B8();

        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_0(v28);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1C5D4E3B8()
{
  OUTLINED_FUNCTION_247();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_297();
  v9 = sub_1C60166C0();
  OUTLINED_FUNCTION_25();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_146();
  v15 = (v14 - v13);
  sub_1C5C64D74(0, &qword_1ED7DCE50);
  *v15 = sub_1C6016FD0();
  (*(v11 + 104))(v15, *MEMORY[0x1E69E8020], v9);
  v16 = sub_1C60166F0();
  (*(v11 + 8))(v15, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_31();
  sub_1C5C84D90(v2 + 144, v18);
  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_17_9(v18, v20);
  sub_1C5D400C0();
  __swift_destroy_boxed_opaque_existential_0(v18);
  v18[0] = v1;
  v18[1] = v8;
  v19 = v6;
  LOWORD(v20) = v4 & 0x101;
  swift_unknownObjectRetain();

  v17 = v6;
  swift_unknownObjectRetain();
  sub_1C5D5B104(v18, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_0_31();
  sub_1C5C84D90(v2 + 144, v18);
  if (v20)
  {
    OUTLINED_FUNCTION_17_9(v18, v20);
    sub_1C5D42AC4();
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_237();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1C5D4E5B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    __swift_project_boxed_opaque_existential_0((Strong + 80), *(Strong + 104));
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD00000000000002ELL, 0x80000001C604D120);
    MEMORY[0x1C69534E0](a4, a5);
    MEMORY[0x1C69534E0](0xD000000000000013, 0x80000001C604D150);
    sub_1C5D3A17C();
    swift_unknownObjectRetain();
    v13 = sub_1C60169A0();
    MEMORY[0x1C69534E0](v13);

    MEMORY[0x1C69534E0](0x726F727265202D20, 0xE90000000000003DLL);
    v50[0] = a2;
    v14 = a2;
    sub_1C5D5D838();
    v15 = sub_1C60169A0();
    MEMORY[0x1C69534E0](v15);

    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_1C5D5CCE4(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    if (a1)
    {
      v16 = swift_unknownObjectRetain();
      sub_1C5D4C198(v16);
      sub_1C5D4EA04(a6);
      swift_unknownObjectRelease();

      return;
    }

    if (a2)
    {
      v17 = sub_1C5D4C5A0();
      if (!v18)
      {
        v22 = a2;
LABEL_25:
        v41 = a2;
        sub_1C5D4C330();

        return;
      }

      if (v17 == a4 && v18 == a5)
      {
        v23 = a2;
      }

      else
      {
        v20 = sub_1C6017860();
        v21 = a2;

        if ((v20 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      *(v12 + 248) = 1;

      sub_1C5DDC13C(a2);

      swift_beginAccess();
      sub_1C5C84D90(v12 + 144, v50);
      if (v50[3])
      {
        __swift_project_boxed_opaque_existential_0(v50, v50[3]);
        sub_1C5C84D90(v12 + 144, v48);
        if (v48[3])
        {
          v24 = __swift_project_boxed_opaque_existential_0(v48, v48[3]);
          v25 = *(*v24 + 184);
          v26 = *(*v24 + 185);
          v27 = *(*v24 + 187);
          v28 = *(*v24 + 188);
          v29 = *(*v24 + 189);
          __swift_destroy_boxed_opaque_existential_0(v48);
          v37 = 0x10000000000;
          if (!v29)
          {
            v37 = 0;
          }

          v38 = 0x100000000;
          if (!v28)
          {
            v38 = 0;
          }

          v39 = 0x1000000;
          if (!v27)
          {
            v39 = 0;
          }

          v40 = 256;
          if (!v26)
          {
            v40 = 0;
          }

          sub_1C5D3EF18(v40 | v25 | v39 | v38 | v37 | 0x10000, v30, v31, v32, v33, v34, v35, v36, v42, v43, v45, v47, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7]);
          __swift_destroy_boxed_opaque_existential_0(v50);
          *(v12 + 248) = 0;
          goto LABEL_25;
        }

LABEL_29:
        __break(1u);
        return;
      }
    }

    else
    {
      __swift_project_boxed_opaque_existential_0((v12 + 80), *(v12 + 104));
      v50[0] = 0;
      v50[1] = 0xE000000000000000;
      sub_1C6017540();
      v44 = v50[0];
      v46 = v50[1];
      MEMORY[0x1C69534E0](0xD000000000000041, 0x80000001C604D170);
      MEMORY[0x1C69534E0](a4, a5);
      v48[0] = v44;
      v48[1] = v46;
      sub_1C5D45B74(v48);
      memcpy(v50, v48, 0xD9uLL);

      sub_1C5DBBF0C();

      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }
}

uint64_t sub_1C5D4EA04(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v1;
    v4 = result;
    v5 = *(result + 24);
    swift_unknownObjectRetain();
    v6 = sub_1C5DDBEF8();
    if ((v6 & 0xC000) == 0)
    {
      v5 = v6;
    }

    v7 = (sub_1C5DDBEF8() != 32773) & v5;
    if (*(v4 + 25))
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    __swift_project_boxed_opaque_existential_0((v1 + 80), *(v1 + 104));
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000028, 0x80000001C604C130);
    swift_getObjectType();
    sub_1C6017830();
    MEMORY[0x1C69534E0](93, 0xE100000000000000);
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_1C5D5CCE4(v11);
    memcpy(__dst, v11, 0xD9uLL);
    sub_1C5DBBF0C();

    *(v1 + 248) = 1;
    v9 = *(v4 + 32);
    v10 = *(v4 + 40);

    sub_1C5DDD3E4(v2, v8 & 1, v9, v10, sub_1C5D5CFE4, v4);

    result = swift_unknownObjectRelease();
    *(v3 + 248) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C5D4EBA0()
{
  OUTLINED_FUNCTION_131();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C60167E0();
  OUTLINED_FUNCTION_25();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_146();
  v12 = v11 - v10;
  (*(v8 + 104))(v11 - v10, *MEMORY[0x1E69D3968], v6);
  OUTLINED_FUNCTION_19_13();
  sub_1C5D5CE80(v13, v14);
  v15 = sub_1C6015290();
  (*(v8 + 8))(v12, v6);
  if ((v15 & 1) == 0 || !sub_1C5DDBDF8())
  {
    v33 = 0;
    if (v3)
    {
      v34 = 1;
      OUTLINED_FUNCTION_76_2();
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_76_2();
    goto LABEL_17;
  }

  HIDWORD(v76) = v5;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_31();
  sub_1C5C84D90(v1 + 144, v81);
  if (v81[3])
  {
    OUTLINED_FUNCTION_17_9(v81, v81[3]);
    sub_1C5D3F6F8();
    v17 = v16;
    v19 = v18;
    swift_unknownObjectRelease();

    v20 = sub_1C5C6AA20();
    v75 = v1;
    HIDWORD(v74) = v3;
    if (v20)
    {
      v21 = v20;
      v78[0] = MEMORY[0x1E69E7CC0];
      sub_1C5C66A1C(0, v20 & ~(v20 >> 63), 0);
      if (v21 < 0)
      {
        __break(1u);
        goto LABEL_76;
      }

      v22 = 0;
      v23 = v78[0];
      v77 = v17 & 0xC000000000000001;
      v24 = v17;
      do
      {
        if (v77)
        {
          v25 = MEMORY[0x1C6954040](v22, v17);
        }

        else
        {
          v25 = *(v17 + 8 * v22 + 32);
          swift_unknownObjectRetain();
        }

        v26 = [v25 contentItemID];
        v27 = sub_1C6016940();
        v29 = v28;
        swift_unknownObjectRelease();

        v78[0] = v23;
        v31 = v23[2];
        v30 = v23[3];
        if (v31 >= v30 >> 1)
        {
          sub_1C5C66A1C((v30 > 1), v31 + 1, 1);
          v23 = v78[0];
        }

        ++v22;
        v23[2] = v31 + 1;
        v32 = &v23[2 * v31];
        v32[4] = v27;
        v32[5] = v29;
        v17 = v24;
      }

      while (v21 != v22);

      v1 = v75;
    }

    else
    {

      v23 = MEMORY[0x1E69E7CC0];
    }

    __swift_destroy_boxed_opaque_existential_0(v81);
    v15 = v23[2];
    v46 = sub_1C5D4F300(0, v15);
    v47 = v46;
    if (v23[2])
    {
      v48 = v23[4];
      v49 = v23[5];
      v50 = *(v46 + 16);

      if (!v50)
      {
        if (!v49)
        {
          goto LABEL_49;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (!*(v46 + 16))
      {
        goto LABEL_49;
      }

      v49 = 0;
      v48 = 0;
    }

    v52 = *(v47 + 32);
    v51 = *(v47 + 40);

    if (v49)
    {
      if (!v51)
      {
        v1 = v75;
LABEL_44:

        goto LABEL_45;
      }

      if (v48 != v52 || v49 != v51)
      {
        v54 = sub_1C6017860();

        v1 = v75;
        if (v54)
        {
          goto LABEL_49;
        }

        goto LABEL_42;
      }

      v1 = v75;
    }

    else
    {
      v1 = v75;
      if (v51)
      {

LABEL_42:

LABEL_45:

        v33 = 0;
        if (BYTE4(v76) & BYTE4(v74))
        {
          v34 = 1;
          OUTLINED_FUNCTION_76_2();
          LOBYTE(v5) = 1;
LABEL_18:
          OUTLINED_FUNCTION_31_2();
          swift_beginAccess();
          OUTLINED_FUNCTION_0_31();
          sub_1C5C84D90(v1 + 144, v78);
          if (v78[3])
          {
            OUTLINED_FUNCTION_17_9(v78, v78[3]);
            sub_1C5D41AB0(v5 & 1, v34, v15);
            __swift_destroy_boxed_opaque_existential_0(v78);
            if (*(v1 + 249) == 1)
            {
              *(v1 + 249) = 0;
            }

            sub_1C5C84D90(v1 + 144, v78);
            if (v78[3])
            {
              OUTLINED_FUNCTION_45(v78, v78[3]);
              OUTLINED_FUNCTION_0_31();
              sub_1C5C84D90(v1 + 144, v79);
              if (v80)
              {
                OUTLINED_FUNCTION_35_7(v79, v80);
                __swift_destroy_boxed_opaque_existential_0(v79);
                OUTLINED_FUNCTION_11_10();
                sub_1C5D3EF18(v36 | v35, v37, v38, v39, v40, v41, v42, v43, v74, v75, v76, v77, v78[0], v78[1], v78[2], v78[3], v78[4], v78[5], v78[6], v78[7]);
                v44 = OUTLINED_FUNCTION_18();
                sub_1C5D5D118(v44, v45, v33);
                __swift_destroy_boxed_opaque_existential_0(v78);
LABEL_24:
                OUTLINED_FUNCTION_130();
                return;
              }

              goto LABEL_80;
            }

LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
            goto LABEL_81;
          }

LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        OUTLINED_FUNCTION_76_2();
        LOBYTE(v5) = BYTE4(v76);
LABEL_17:
        [*(v1 + 56) invalidateCache];
        v34 = 0;
        goto LABEL_18;
      }
    }

LABEL_49:
    if (v15 < 2)
    {
      goto LABEL_52;
    }

    sub_1C5DDBB0C(1, v23);
    if (v56 == v57 >> 1)
    {
      v58 = 0;
      v59 = 0;
      goto LABEL_55;
    }

    if (v56 < (v57 >> 1))
    {
      v60 = (v55 + 16 * v56);
      v58 = *v60;
      v59 = v60[1];

LABEL_55:
      swift_unknownObjectRelease();
      sub_1C5DDBB0C(1, v47);
      if (v62 == v63 >> 1)
      {
        swift_unknownObjectRelease();
        if (!v59)
        {
          goto LABEL_24;
        }

        goto LABEL_69;
      }

      if (v62 < (v63 >> 1))
      {
        v64 = (v61 + 16 * v62);
        v66 = *v64;
        v65 = v64[1];

        swift_unknownObjectRelease();
        if (!v59)
        {
          if (!v65)
          {
            goto LABEL_24;
          }

          goto LABEL_69;
        }

        if (!v65)
        {
LABEL_69:

LABEL_70:
          if (*(v1 + 249))
          {
            goto LABEL_24;
          }

          v15 = *(v1 + 280);
          if (v15)
          {
            *(v1 + 249) = 1;
            [swift_unknownObjectRetain_n() time];
            __swift_project_boxed_opaque_existential_0((v1 + 80), *(v1 + 104));
            OUTLINED_FUNCTION_85_3();
            v81[0] = 0;
            v81[1] = v69;
            sub_1C6017540();

            OUTLINED_FUNCTION_89();
            v81[0] = 0xD00000000000002BLL;
            v81[1] = v70;
            [v15 time];
            sub_1C5D5CCF8();
            v71 = swift_allocObject();
            v72 = MEMORY[0x1E69E63B0];
            *(v71 + 16) = xmmword_1C60311E0;
            v73 = OUTLINED_FUNCTION_13_11(v71, v72);
            MEMORY[0x1C69534E0](v73);

            swift_unknownObjectRelease();
            v78[0] = v81[0];
            v78[1] = v81[1];
            sub_1C5D5CCE4(v78);
            memcpy(v81, v78, 0xD9uLL);
            sub_1C5DBBF0C();

            LOBYTE(v5) = 0;
            v33 = 8;
          }

          else
          {
            v33 = 0;
            LOBYTE(v5) = 0;
          }

          goto LABEL_17;
        }

        if (v58 != v66 || v59 != v65)
        {
          OUTLINED_FUNCTION_32();
          v68 = OUTLINED_FUNCTION_71();

          if (v68)
          {
            goto LABEL_24;
          }

          goto LABEL_70;
        }

LABEL_52:

        goto LABEL_24;
      }

LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_81:
  __break(1u);
}

uint64_t sub_1C5D4F300(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = sub_1C6014B90();
  v5 = [*(v2 + 56) contentItemIDsFromOffset:a1 toOffset:a2 nowPlayingIndex:v9];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1C6016B10();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1C6014B90();
  }

  return v7;
}

uint64_t sub_1C5D4F3C4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *(v2 + 280);
  if (v6)
  {
    v7 = [swift_unknownObjectRetain() contentItemID];
    v8 = sub_1C6016940();
    v10 = v9;

    if (v8 == a1 && v10 == a2)
    {
    }

    else
    {
      OUTLINED_FUNCTION_147();
      v12 = sub_1C6017860();

      if ((v12 & 1) == 0)
      {
        swift_unknownObjectRelease();
        goto LABEL_8;
      }
    }

    return v6;
  }

LABEL_8:
  sub_1C5DABCEC(&v34);
  if (v35)
  {
    sub_1C5C6BEFC(&v34, v36);
    v13 = v37;
    __swift_project_boxed_opaque_existential_0(v36, v37);
    v14 = OUTLINED_FUNCTION_18();
    v16 = v15(v14);
    v17 = [v16 contentItemID];
    swift_unknownObjectRelease();
    sub_1C6016940();
    OUTLINED_FUNCTION_88_1();
    if (v13 == a1 && v16 == a2)
    {
    }

    else
    {
      OUTLINED_FUNCTION_147();
      v19 = OUTLINED_FUNCTION_71();

      if ((v19 & 1) == 0)
      {
        v20 = v37;
        __swift_project_boxed_opaque_existential_0(v36, v37);
        v21 = OUTLINED_FUNCTION_18();
        v23 = v22(v21);
        v24 = [v23 contentItemID];
        swift_unknownObjectRelease();
        sub_1C6016940();
        OUTLINED_FUNCTION_88_1();
        if (v20 == a1 && v23 == a2)
        {
        }

        else
        {
          OUTLINED_FUNCTION_147();
          v26 = OUTLINED_FUNCTION_71();

          if ((v26 & 1) == 0)
          {
            __swift_destroy_boxed_opaque_existential_0(v36);
            goto LABEL_22;
          }
        }
      }
    }

    v31 = v38;
    __swift_project_boxed_opaque_existential_0(v36, v37);
    v32 = OUTLINED_FUNCTION_73();
    v30 = v33(v32, v31);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_1_24();
  sub_1C5D5D294();
LABEL_22:
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_31();
  result = sub_1C5C84D90(v3 + 144, v36);
  if (v37)
  {
    OUTLINED_FUNCTION_17_9(v36, v37);
    v28 = OUTLINED_FUNCTION_147();
    v30 = sub_1C5D409F4(v28, v29);
LABEL_26:
    v6 = v30;
    __swift_destroy_boxed_opaque_existential_0(v36);
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5D4F87C(uint64_t a1, uint64_t (*a2)(void), NSObject *a3)
{
  if (*(v3 + 32))
  {
    if (*(v3 + 272) == 1)
    {
      if ((a1 - 8) >= 2 && a1 == 2)
      {

        return sub_1C5D54B00(2, a2, a3);
      }

      else
      {
        v14 = OUTLINED_FUNCTION_303();

        return sub_1C5D55584(v14, v15, a3);
      }
    }

    OUTLINED_FUNCTION_16_11((v3 + 80), *(v3 + 104));
    __dst[0] = 0;
    __dst[1] = v12;
    sub_1C6017540();
    OUTLINED_FUNCTION_39_4();
    v13 = sub_1C5DB2EA8();
    MEMORY[0x1C69534E0](v13);

    v10 = "current item to reload";
    v11 = v4 | 0x26;
  }

  else
  {
    OUTLINED_FUNCTION_16_11((v3 + 80), *(v3 + 104));
    __dst[0] = 0;
    __dst[1] = v8;
    sub_1C6017540();
    OUTLINED_FUNCTION_39_4();
    v9 = sub_1C5DB2EA8();
    MEMORY[0x1C69534E0](v9);

    v10 = "Reloading current item [";
    v11 = v4 + 14;
  }

  MEMORY[0x1C69534E0](v11, v10 | 0x8000000000000000);
  v16[0] = __dst[0];
  v16[1] = __dst[1];
  sub_1C5D5CCE4(v16);
  memcpy(__dst, v16, 0xD9uLL);
  sub_1C5DBBF0C();

  if (a2)
  {
    return a2(0);
  }

  return result;
}

void sub_1C5D4FA6C()
{
  OUTLINED_FUNCTION_131();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1C6016630();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_146();
  v9 = v8 - v7;
  v33 = sub_1C6016690();
  OUTLINED_FUNCTION_25();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_146();
  v15 = v14 - v13;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1C5DCEB30(v5, v3);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_31();
  sub_1C5C84D90(v1 + 144, v34);
  if (v35)
  {
    OUTLINED_FUNCTION_17_9(v34, v35);
    sub_1C5D3F6F8();
    v17 = v16;
    v19 = v18;

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(v34);
    if ((v19 & 0x100) != 0)
    {
      sub_1C5C64D74(0, &qword_1ED7DCE50);
      v20 = sub_1C6016FD0();
      v36 = sub_1C5D5D628;
      v37 = v1;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 1107296256;
      v34[2] = sub_1C5DBC798;
      v35 = &block_descriptor_191;
      v21 = _Block_copy(v34);

      sub_1C6016670();
      v34[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_6_18();
      sub_1C5D5CE80(v22, v23);
      sub_1C5D5CF8C();
      OUTLINED_FUNCTION_5_21();
      sub_1C5D5CE80(v24, v25);
      sub_1C60173B0();
      MEMORY[0x1C6953AC0](0, v15, v9, v21);
      _Block_release(v21);

      v26 = OUTLINED_FUNCTION_62_6();
      v27(v26);
      (*(v11 + 8))(v15, v33);
    }

    if ((v3 & 0x8000) != 0 && ((1 << v3) & 0x3A) == 0)
    {
      if (*(v1 + 240))
      {
        goto LABEL_10;
      }

      [*(v1 + 48) unloadingPlaybackAssetsOnIdleDuration];
      if (v29 <= 0.0)
      {
        goto LABEL_10;
      }

      v30 = v29;
      sub_1C5C64D74(0, &qword_1ED7DBB30);
      OUTLINED_FUNCTION_7_3();
      v31 = swift_allocObject();
      OUTLINED_FUNCTION_89_1();
      v32 = sub_1C5D5037C(0, sub_1C5D5D620, v31, v30);
      v28 = *(v1 + 240);
      *(v1 + 240) = v32;
    }

    else
    {
      v28 = *(v1 + 240);
      *(v1 + 240) = 0;
    }

LABEL_10:
    OUTLINED_FUNCTION_130();
    return;
  }

  __break(1u);
}

uint64_t sub_1C5D4FE34(uint64_t a1)
{
  swift_beginAccess();
  result = sub_1C5C84D90(a1 + 144, v5);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_0(v5, v6);
    sub_1C5D3F6F8();
    v4 = v3;
    sub_1C5D4E3B8();

    swift_unknownObjectRelease();

    return __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5D4FEF8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v1 = sub_1C5DDBEF8();

    if (v1 < 0 && ((1 << v1) & 0x3A) == 0)
    {
      sub_1C5D4FFA4();
    }
  }

  return result;
}

void sub_1C5D4FFA4()
{
  OUTLINED_FUNCTION_247();
  OUTLINED_FUNCTION_77_3();
  sub_1C5D54A58(v2, 0.0);
  sub_1C5CDAF64(v1 + 80, v45);
  __swift_project_boxed_opaque_existential_0(v45, v45[3]);
  OUTLINED_FUNCTION_85_3();
  __dst[0] = 0;
  __dst[1] = v3;
  sub_1C6017540();
  v43 = __dst[0];
  v44 = __dst[1];
  MEMORY[0x1C69534E0](0xD000000000000024, 0x80000001C604CE00);
  v4 = sub_1C5DB2EA8();
  MEMORY[0x1C69534E0](v4);

  MEMORY[0x1C69534E0](0x3A6D657469202D20, 0xE900000000000020);
  v6 = (v0 + 192);
  v5 = *(v0 + 192);
  if (v5)
  {
    v8 = *(v0 + 200);
    v7 = *(v0 + 208);
    sub_1C5D5D0D8(*(v0 + 192), v8, v7);
    v9 = swift_unknownObjectRetain();
    sub_1C5D5D118(v9, v8, v7);
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = 0;
    __dst[1] = 0;
    __dst[2] = 0;
  }

  __dst[0] = v5;
  __dst[3] = ObjectType;
  OUTLINED_FUNCTION_10_0(__dst);
  sub_1C5CBCF4C(__dst);
  MEMORY[0x1C69534E0](0x3A656D6974202D20, 0xE900000000000020);
  v11 = *(v0 + 192);
  v12 = *(v0 + 200);
  v13 = *(v0 + 208);
  if (v11)
  {
    v14 = *(v0 + 200);
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  sub_1C5D5D0D8(*(v0 + 192), *(v0 + 200), *(v0 + 208));
  sub_1C5D5D118(v11, v12, v13);
  v47.is_nil = v14;
  DefaultStringInterpolation.appendInterpolation(time:)(v47);
  __src[0] = v43;
  __src[1] = v44;
  sub_1C5D5CCE4(__src);
  memcpy(__dst, __src, 0xD9uLL);
  sub_1C5DBBF0C();

  __swift_destroy_boxed_opaque_existential_0(v45);
  sub_1C6017540();

  strcpy(v39, "Unload items [");
  HIBYTE(v39[1]) = -18;
  v15 = sub_1C5DB2EA8();
  MEMORY[0x1C69534E0](v15);

  OUTLINED_FUNCTION_87();
  sub_1C5C64D74(0, &qword_1ED7DCCF0);
  sub_1C6016940();
  v39[0] = 2;
  sub_1C6016880();
  _s3__C4CodeOMa_6();
  v17 = v16;
  OUTLINED_FUNCTION_3_21();
  v34 = sub_1C5D5CE80(v18, v19);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_100();
  v20 = sub_1C6017280();

  OUTLINED_FUNCTION_30_10();
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_31();
  sub_1C5C84D90(v0 + 144, v39);
  if (v40)
  {
    OUTLINED_FUNCTION_17_9(v39, v40);
    sub_1C5D41550(v20, v21, v22, v23, v24, v25, v26, v27, v17, v34, v35, v36, v37, v38, v39[0], v39[1], v39[2], v40, v41, __src[0]);
    __swift_destroy_boxed_opaque_existential_0(v39);
    OUTLINED_FUNCTION_31_4();
    sub_1C5D4BA1C(v28, v29);
    [*(v0 + 56) invalidateCache];
    OUTLINED_FUNCTION_0_31();
    sub_1C5C84D90(v0 + 144, v39);
    if (v40)
    {
      __swift_project_boxed_opaque_existential_0(v39, v40);
      v30 = *(v0 + 192);
      v31 = *(v0 + 208);
      v6[1] = 0;
      v6[2] = 0;
      *v6 = 0;
      sub_1C5D41AB0(0, 0, v30);

      v32 = OUTLINED_FUNCTION_11_0();
      sub_1C5D5D118(v32, v33, v31);
      __swift_destroy_boxed_opaque_existential_0(v39);
      OUTLINED_FUNCTION_237();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1C5D5037C(char a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v10[4] = a2;
    v10[5] = a3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    OUTLINED_FUNCTION_18_10();
    v10[2] = v6;
    v10[3] = &block_descriptor_173;
    v7 = _Block_copy(v10);
  }

  else
  {
    v7 = 0;
  }

  v8 = [swift_getObjCClassFromMetadata() timerWithInterval:a1 & 1 repeats:v7 block:a4];
  _Block_release(v7);
  return v8;
}

uint64_t sub_1C5D50518()
{
  __swift_project_boxed_opaque_existential_0((v0 + 80), *(v0 + 104));
  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  sub_1C6017540();
  MEMORY[0x1C69534E0](0xD000000000000039, 0x80000001C604C4D0);
  swift_getObjectType();
  sub_1C6017830();
  MEMORY[0x1C69534E0](0x726F727265202D20, 0xE90000000000003ALL);
  swift_getErrorValue();
  sub_1C6017830();
  sub_1C5D5CCE4(__src);
  memcpy(__dst, __src, 0xD9uLL);
  sub_1C5DBBF0C();
}

uint64_t sub_1C5D5062C()
{
  __swift_project_boxed_opaque_existential_0((v0 + 80), *(v0 + 104));
  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  sub_1C6017540();
  MEMORY[0x1C69534E0](0xD000000000000034, 0x80000001C604C510);
  swift_getObjectType();
  sub_1C6017830();
  MEMORY[0x1C69534E0](0x726F727265202D20, 0xE90000000000003ALL);
  swift_getErrorValue();
  sub_1C6017830();
  sub_1C5D5CCE4(__src);
  memcpy(__dst, __src, 0xD9uLL);
  sub_1C5DBBF0C();
}

void sub_1C5D50740(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1C5DEA0B4();
  v6 = v5;
  if (v1[4])
  {
    v7 = v4;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v8 = sub_1C5DEA0B4();
    v10 = v9;
    swift_unknownObjectRelease();
    if (v7 == v8 && v6 == v10)
    {

      goto LABEL_12;
    }

    v12 = sub_1C6017860();

    if (v12)
    {
LABEL_12:
      swift_beginAccess();
      sub_1C5C84D90((v2 + 18), v64);
      if (v65)
      {
        __swift_project_boxed_opaque_existential_0(v64, v65);
        v23 = [a1 contentItemID];
        v24 = sub_1C6016940();
        v26 = v25;

        sub_1C5D436F8(v24, v26, 1);

        __swift_destroy_boxed_opaque_existential_0(v64);
        __swift_project_boxed_opaque_existential_0(v2 + 10, v2[13]);
        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        sub_1C6017540();
        MEMORY[0x1C69534E0](0xD00000000000002BLL, 0x80000001C604C690);
        __src[0] = a1;
        sub_1C6017830();
        MEMORY[0x1C69534E0](0xD000000000000015, 0x80000001C604C6C0);
        __src[0] = __dst[0];
        __src[1] = __dst[1];
        sub_1C5D5CCE4(__src);
        memcpy(__dst, __src, 0xD9uLL);
        sub_1C5DBBF0C();

        return;
      }

      goto LABEL_34;
    }
  }

  else
  {
  }

  sub_1C5D5CFEC();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C60379A0;
  *(v13 + 32) = 0xD000000000000014;
  *(v13 + 40) = 0x80000001C604C550;
  v14 = [a1 description];
  v15 = sub_1C6016940();
  v17 = v16;

  *(v13 + 48) = v15;
  *(v13 + 56) = v17;
  *(v13 + 64) = 0xD000000000000019;
  *(v13 + 72) = 0x80000001C604C570;
  v63 = v13;
  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  v18 = [a1 avPlayerItem];
  v19 = v18;
  if (v18)
  {
    [v18 currentTime];
    v20 = __dst[0];
    v21 = __dst[1];
    v22 = __dst[2];
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  v68.is_nil = v19 == 0;
  v27 = 0x676E697373694DLL;
  v68.value.value = v20;
  *&v68.value.timescale = v21;
  v68.value.epoch = v22;
  DefaultStringInterpolation.appendInterpolation(time:)(v68);
  v28 = __src[1];
  *(v13 + 80) = __src[0];
  *(v13 + 88) = v28;
  *(v13 + 96) = 0xD000000000000013;
  *(v13 + 104) = 0x80000001C604C590;
  v29 = sub_1C5DDBE58();
  if (v29)
  {
    v30 = [v29 description];
    swift_unknownObjectRelease();
    v31 = sub_1C6016940();
    v33 = v32;
  }

  else
  {
    v33 = 0xE700000000000000;
    v31 = 0x676E697373694DLL;
  }

  *(v13 + 112) = v31;
  *(v13 + 120) = v33;
  *(v13 + 128) = 0xD000000000000012;
  *(v13 + 136) = 0x80000001C604C5B0;
  v34 = v2[4];
  if (v34)
  {
    v35 = [v34 description];
    v27 = sub_1C6016940();
    v37 = v36;
  }

  else
  {
    v37 = 0xE700000000000000;
  }

  *(v13 + 144) = v27;
  *(v13 + 152) = v37;
  *(v13 + 160) = 0xD000000000000014;
  *(v13 + 168) = 0x80000001C604C5D0;
  v38 = sub_1C5DDD4B0();
  v39 = sub_1C5C6AA20(v38);
  if (!v39)
  {

    v42 = MEMORY[0x1E69E7CC0];
LABEL_32:
    __dst[0] = v42;
    sub_1C5C67580(0, &qword_1ED7DCF10, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1C5D5D054();
    v51 = sub_1C60168D0();
    v53 = v52;

    *(v63 + 176) = v51;
    *(v63 + 184) = v53;
    v54 = sub_1C6016880();
    __swift_project_boxed_opaque_existential_0(v2 + 10, v2[13]);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000069, 0x80000001C604C5F0);
    v55 = sub_1C6016870();
    MEMORY[0x1C69534E0](v55);

    __src[0] = __dst[0];
    __src[1] = __dst[1];
    sub_1C5D45B74(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    v56 = objc_opt_self();
    v57 = *MEMORY[0x1E69B1338];
    v58 = sub_1C6016900();
    v59 = sub_1C6016900();
    v60 = sub_1C6016900();
    sub_1C5C67580(0, &qword_1ED7DCAE8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1C60311E0;
    sub_1C5D5D7C0(0, &qword_1EC1AB550);
    *(v61 + 56) = v62;
    *(v61 + 32) = v54;
    sub_1C5DC9604(v57, v58, v59, v60, 0, v61, 0, v56);

    return;
  }

  v40 = v39;
  __dst[0] = MEMORY[0x1E69E7CC0];
  sub_1C5C66A1C(0, v39 & ~(v39 >> 63), 0);
  if ((v40 & 0x8000000000000000) == 0)
  {
    v41 = 0;
    v42 = __dst[0];
    do
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x1C6954040](v41, v38);
      }

      else
      {
        v43 = *(v38 + 8 * v41 + 32);
        swift_unknownObjectRetain();
      }

      v44 = [v43 description];
      v45 = sub_1C6016940();
      v47 = v46;
      swift_unknownObjectRelease();

      __dst[0] = v42;
      v49 = *(v42 + 16);
      v48 = *(v42 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1C5C66A1C((v48 > 1), v49 + 1, 1);
        v42 = __dst[0];
      }

      ++v41;
      *(v42 + 16) = v49 + 1;
      v50 = v42 + 16 * v49;
      *(v50 + 32) = v45;
      *(v50 + 40) = v47;
    }

    while (v40 != v41);

    goto LABEL_32;
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1C5D50EE8(char *a1)
{
  v2 = v1;
  v4 = sub_1C6015060();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 248) == 1)
  {
    __swift_project_boxed_opaque_existential_0((v1 + 80), *(v1 + 104));
    v126[0] = 0xD00000000000006ALL;
    v126[1] = 0x80000001C604C840;
    sub_1C5D5CCE4(v126);
    memcpy(v129, v126, 0xD9uLL);
    return sub_1C5DBBF0C();
  }

  swift_beginAccess();
  result = sub_1C5C84D90(v1 + 144, v129);
  if (!v129[3])
  {
    goto LABEL_55;
  }

  __swift_project_boxed_opaque_existential_0(v129, v129[3]);
  sub_1C5D400C0();
  __swift_destroy_boxed_opaque_existential_0(v129);
  if (!a1)
  {
    goto LABEL_9;
  }

  result = sub_1C5C84D90(v1 + 144, v129);
  if (!v129[3])
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  __swift_project_boxed_opaque_existential_0(v129, v129[3]);
  ObjectType = swift_getObjectType();
  v4 = &selRef_addTarget_action_usingExtendedStatus_;
  v10 = [swift_unknownObjectRetain() contentItemID];
  v11 = sub_1C6016940();
  v13 = v12;

  v7 = a1;
  v14 = sub_1C5D409F4(v11, v13);

  __swift_destroy_boxed_opaque_existential_0(v129);
  if (v14)
  {
    v15 = [v7 contentItemID];
    sub_1C6016940();
    v5 = v16;

    sub_1C5D577EC();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    sub_1C5C84D90(v2 + 144, v129);
    v17 = v129[3];
    if (v129[3])
    {
LABEL_51:
      __swift_project_boxed_opaque_existential_0(v129, v17);
      sub_1C5D42AC4();
      v110 = v129;
      return __swift_destroy_boxed_opaque_existential_0(v110);
    }

    __break(1u);
LABEL_9:
    sub_1C5D577EC();
    result = sub_1C5C84D90(v2 + 144, v129);
    if (v129[3])
    {
      __swift_project_boxed_opaque_existential_0(v129, v129[3]);
      sub_1C5D3F6F8();
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_0(v129);
      if (v23)
      {
        v120 = v21;
        v121 = v19;
        v26 = v2;
        v129[0] = 0;
        v129[1] = 0xE000000000000000;
        v27 = v23;
        v28 = v23;
        sub_1C6017540();

        v129[0] = 0xD000000000000015;
        v129[1] = 0x80000001C604C000;
        sub_1C6015050();
        v29 = sub_1C6015030();
        v31 = v30;
        (*(v5 + 8))(v7, v4);
        MEMORY[0x1C69534E0](v29, v31);

        sub_1C5DDC60C(0, 0, v23, v129[0], v129[1], 0, 0, 0.0);

        result = sub_1C5C84D90(v2 + 144, v129);
        if (!v129[3])
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        __swift_project_boxed_opaque_existential_0(v129, v129[3]);
        result = sub_1C5C84D90(v2 + 144, v126);
        if (!v126[3])
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v32 = __swift_project_boxed_opaque_existential_0(v126, v126[3]);
        v33 = *(*v32 + 184);
        v34 = *(*v32 + 185);
        v35 = *(*v32 + 187);
        v36 = *(*v32 + 188);
        v37 = *(*v32 + 189);
        __swift_destroy_boxed_opaque_existential_0(v126);
        v45 = 0x10000000000;
        if (!v37)
        {
          v45 = 0;
        }

        v46 = 0x100000000;
        if (!v36)
        {
          v46 = 0;
        }

        v47 = 0x1000000;
        if (!v35)
        {
          v47 = 0;
        }

        v48 = 256;
        if (!v34)
        {
          v48 = 0;
        }

        sub_1C5D3EF18(v48 | v33 | v47 | v46 | v45 | 0x10000, v38, v39, v40, v41, v42, v43, v44, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);

        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_0(v129);
        v2 = v26;
      }

      else
      {
        if (v25)
        {
          sub_1C5D575E0(0xD000000000000014, 0x80000001C604C6E0);
        }

        else
        {
          sub_1C5DE3834(0, 0, 3);
        }

        swift_unknownObjectRelease();
      }

      result = sub_1C5C84D90(v2 + 144, v129);
      v17 = v129[3];
      if (v129[3])
      {
        goto LABEL_51;
      }

LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v118 = ObjectType;
  v119 = v7;
  result = sub_1C5C84D90(v1 + 144, v127);
  if (!v128)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  __swift_project_boxed_opaque_existential_0(v127, v128);
  sub_1C5D3F6F8();
  v114 = v49;
  v115 = v50;
  v52 = v51;
  __swift_destroy_boxed_opaque_existential_0(v127);
  __swift_project_boxed_opaque_existential_0((v1 + 80), *(v1 + 104));
  v129[0] = 0;
  v129[1] = 0xE000000000000000;
  sub_1C6017540();
  MEMORY[0x1C69534E0](0xD00000000000002FLL, 0x80000001C604C700);
  v126[0] = v119;
  sub_1C6017830();
  MEMORY[0x1C69534E0](0xD000000000000053, 0x80000001C604C730);
  v53 = sub_1C5D2AA10(0, qword_1ED7DF160);
  v54 = MEMORY[0x1C6953600](v52, v53);
  MEMORY[0x1C69534E0](v54);

  MEMORY[0x1C69534E0](0xD000000000000011, 0x80000001C604C790);
  v120 = *(v1 + 40);
  v55 = sub_1C5DDD4B0();
  v56 = sub_1C5D2AA10(0, &qword_1ED7DC870);
  v57 = MEMORY[0x1C6953600](v55, v56);
  v59 = v58;

  MEMORY[0x1C69534E0](v57, v59);

  MEMORY[0x1C69534E0](0x6574617453202D20, 0xEA0000000000203ALL);
  v116 = v2;
  v60 = [v2 stateDictionary];
  sub_1C6016860();

  v61 = sub_1C6016870();
  v63 = v62;

  MEMORY[0x1C69534E0](v61, v63);

  v126[0] = v129[0];
  v126[1] = v129[1];
  sub_1C5D45B74(v126);
  memcpy(v129, v126, 0xD9uLL);
  sub_1C5DBBF0C();

  sub_1C5D5CFEC();
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1C60379A0;
  *(v64 + 32) = 0x72656767697274;
  *(v64 + 40) = 0xE700000000000000;
  *(v64 + 48) = 0xD00000000000001FLL;
  *(v64 + 56) = 0x80000001C604C7B0;
  *(v64 + 64) = 0x6E6F73616572;
  *(v64 + 72) = 0xE600000000000000;
  *(v64 + 80) = 0xD000000000000029;
  *(v64 + 88) = 0x80000001C604C7D0;
  *(v64 + 96) = 0x7469206575657571;
  *(v64 + 104) = 0xEB00000000736D65;
  v121 = v52;
  v65 = sub_1C5C6AA20(v52);
  v66 = MEMORY[0x1E69E7CC0];
  v117 = v64;
  if (v65)
  {
    v67 = v65;
    v122 = MEMORY[0x1E69E7CC0];
    result = sub_1C5C66A1C(0, v65 & ~(v65 >> 63), 0);
    if (v67 < 0)
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v68 = 0;
    v66 = v122;
    v69 = v121 & 0xC000000000000001;
    do
    {
      if (v69)
      {
        v70 = MEMORY[0x1C6954040](v68, v121);
      }

      else
      {
        v70 = *(v121 + 8 * v68 + 32);
        swift_unknownObjectRetain();
      }

      v71 = [v70 description];
      v72 = sub_1C6016940();
      v74 = v73;
      swift_unknownObjectRelease();

      v122 = v66;
      v76 = *(v66 + 16);
      v75 = *(v66 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_1C5C66A1C((v75 > 1), v76 + 1, 1);
        v66 = v122;
      }

      ++v68;
      *(v66 + 16) = v76 + 1;
      v77 = v66 + 16 * v76;
      *(v77 + 32) = v72;
      *(v77 + 40) = v74;
    }

    while (v67 != v68);
    v64 = v117;
  }

  v122 = v66;
  sub_1C5C67580(0, &qword_1ED7DCF10, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v79 = v78;
  v80 = sub_1C5D5D054();
  v81 = sub_1C60168D0();
  v83 = v82;

  *(v64 + 112) = v81;
  *(v64 + 120) = v83;
  strcpy((v64 + 128), "player items");
  *(v64 + 141) = 0;
  *(v64 + 142) = -5120;
  v84 = sub_1C5DDD4B0();
  v85 = sub_1C5C6AA20(v84);
  if (!v85)
  {

    v88 = MEMORY[0x1E69E7CC0];
    goto LABEL_46;
  }

  v86 = v85;
  v112 = v80;
  v113 = v79;
  v122 = MEMORY[0x1E69E7CC0];
  result = sub_1C5C66A1C(0, v85 & ~(v85 >> 63), 0);
  if (v86 < 0)
  {
    goto LABEL_54;
  }

  v87 = 0;
  v88 = v122;
  v120 = (v84 & 0xC000000000000001);
  v89 = v84;
  v90 = v86;
  do
  {
    if (v120)
    {
      v91 = MEMORY[0x1C6954040](v87, v84);
    }

    else
    {
      v91 = *(v84 + 8 * v87 + 32);
      swift_unknownObjectRetain();
    }

    v92 = [v91 description];
    v93 = sub_1C6016940();
    v95 = v94;
    swift_unknownObjectRelease();

    v122 = v88;
    v97 = *(v88 + 16);
    v96 = *(v88 + 24);
    if (v97 >= v96 >> 1)
    {
      sub_1C5C66A1C((v96 > 1), v97 + 1, 1);
      v88 = v122;
    }

    ++v87;
    *(v88 + 16) = v97 + 1;
    v98 = v88 + 16 * v97;
    *(v98 + 32) = v93;
    *(v98 + 40) = v95;
    v84 = v89;
  }

  while (v90 != v87);

  v64 = v117;
LABEL_46:
  v122 = v88;
  v99 = sub_1C60168D0();
  v101 = v100;

  *(v64 + 144) = v99;
  *(v64 + 152) = v101;
  *(v64 + 160) = 0xD000000000000013;
  *(v64 + 168) = 0x80000001C604C800;
  v122 = 0;
  v123 = 0xE000000000000000;
  v125 = v119;
  sub_1C6017830();
  v102 = v123;
  *(v64 + 176) = v122;
  *(v64 + 184) = v102;
  v103 = sub_1C6016880();
  v120 = objc_opt_self();
  v104 = *MEMORY[0x1E69B1338];
  v105 = sub_1C6016900();
  v106 = sub_1C6016900();
  v107 = sub_1C6016900();
  sub_1C5C67580(0, &qword_1ED7DCAE8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1C60311E0;
  sub_1C5D5D7C0(0, &qword_1EC1AB550);
  *(v108 + 56) = v109;
  *(v108 + 32) = v103;
  sub_1C5DC9604(v104, v105, v106, v107, 0, v108, 0, v120);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  result = sub_1C5C84D90(v116 + 144, &v122);
  if (v124)
  {
    __swift_project_boxed_opaque_existential_0(&v122, v124);
    sub_1C5D42AC4();
    v110 = &v122;
    return __swift_destroy_boxed_opaque_existential_0(v110);
  }

LABEL_62:
  __break(1u);
  return result;
}

void sub_1C5D51C4C()
{
  v1 = *(v0 + 232);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 232);
    *(v0 + 232) = 0;

    if (*(v0 + 120))
    {
      sub_1C5DB8C58(2);
    }
  }
}

uint64_t sub_1C5D51CD8(void *a1)
{
  swift_beginAccess();
  result = sub_1C5C84D90(v1 + 144, v9);
  if (v10)
  {
    __swift_project_boxed_opaque_existential_0(v9, v10);
    swift_getObjectType();
    v4 = [a1 contentItemID];
    v5 = sub_1C6016940();
    v7 = v6;

    sub_1C5D436F8(v5, v7, [a1 isFullyDownloaded]);

    __swift_destroy_boxed_opaque_existential_0(v9);
    __swift_project_boxed_opaque_existential_0((v1 + 80), *(v1 + 104));
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000033, 0x80000001C604C900);
    sub_1C6017830();
    MEMORY[0x1C69534E0](0xD000000000000019, 0x80000001C604C940);
    v8[0] = __dst[0];
    v8[1] = __dst[1];
    sub_1C5D5CCE4(v8);
    memcpy(__dst, v8, 0xD9uLL);
    sub_1C5DBBF0C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5D51E8C(void *a1)
{
  swift_beginAccess();
  result = sub_1C5C84D90(v1 + 144, v9);
  if (v10)
  {
    __swift_project_boxed_opaque_existential_0(v9, v10);
    swift_getObjectType();
    v4 = [a1 contentItemID];
    v5 = sub_1C6016940();
    v7 = v6;

    sub_1C5D43674(v5, v7);

    __swift_destroy_boxed_opaque_existential_0(v9);
    __swift_project_boxed_opaque_existential_0((v1 + 80), *(v1 + 104));
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000033, 0x80000001C604C960);
    sub_1C6017830();
    MEMORY[0x1C69534E0](0xD000000000000019, 0x80000001C604C940);
    v8[0] = __dst[0];
    v8[1] = __dst[1];
    sub_1C5D5CCE4(v8);
    memcpy(__dst, v8, 0xD9uLL);
    sub_1C5DBBF0C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5D5202C()
{
  sub_1C5D51C4C();
  if (v0[15])
  {
    sub_1C5DB7C24(2);
  }

  if (v0[16])
  {
    swift_getObjectType();
    v1 = sub_1C5D4AE50();
  }

  else
  {
    v1 = 300.0;
  }

  sub_1C5C64D74(0, &qword_1ED7DBB30);
  v2 = swift_allocObject();
  swift_weakInit();
  v0[29] = sub_1C5D5037C(0, sub_1C5D5D28C, v2, v1);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1C5D52114(void *a1)
{
  swift_beginAccess();
  result = sub_1C5C84D90(v1 + 144, v9);
  if (v10)
  {
    __swift_project_boxed_opaque_existential_0(v9, v10);
    swift_getObjectType();
    v4 = [a1 contentItemID];
    v5 = sub_1C6016940();
    v7 = v6;

    sub_1C5D435F0(v5, v7);

    __swift_destroy_boxed_opaque_existential_0(v9);
    __swift_project_boxed_opaque_existential_0((v1 + 80), *(v1 + 104));
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD00000000000002BLL, 0x80000001C604C9A0);
    sub_1C6017830();
    MEMORY[0x1C69534E0](0xD000000000000019, 0x80000001C604C940);
    v8[0] = __dst[0];
    v8[1] = __dst[1];
    sub_1C5D5CCE4(v8);
    memcpy(__dst, v8, 0xD9uLL);
    sub_1C5DBBF0C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5D522B4()
{
  v0 = sub_1C60167E0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D3968], v0);
  sub_1C5D5CE80(&qword_1ED7DCF48, MEMORY[0x1E69D3970]);
  v4 = sub_1C6015290();
  (*(v1 + 8))(v3, v0);
  if ((v4 & 1) == 0)
  {
    return sub_1C5D58914();
  }

  swift_getObjectType();
  sub_1C5D58C04();
  sub_1C5D4B048();
  sub_1C5DABCEC(&v15);
  if (!v16.i64[1])
  {
    return sub_1C5D5D294();
  }

  sub_1C5C6BEFC(&v15, v12);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_0(v12, v13);
  (*(v6 + 56))(v5, v6);
  if (v7 == 1)
  {
    sub_1C5D58914();
  }

  else
  {
    v9 = v13;
    v10 = v14;
    __swift_project_boxed_opaque_existential_0(v12, v13);
    (*(v10 + 48))(&v15, v9, v10);
    if ((v18 & 0xC0) == 0x80 && v18 == 128)
    {
      v11 = vorrq_s8(v16, v17);
      if (!(*&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | *(&v15 + 1) | v15))
      {
        sub_1C5D4BF40();
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_1C5D52520()
{
  sub_1C5DABCEC(v2);
  if (!v3)
  {
    return sub_1C5D5D294();
  }

  sub_1C5C74680(0, qword_1ED7DE920);
  type metadata accessor for SmartPlayerItemTransition();
  result = swift_dynamicCast();
  if (result)
  {
    *(v1 + 138) = 1;
  }

  return result;
}

uint64_t sub_1C5D525C8()
{
  sub_1C5DABCEC(v2);
  if (!v3)
  {
    return sub_1C5D5D294();
  }

  sub_1C5C74680(0, qword_1ED7DE920);
  type metadata accessor for SmartPlayerItemTransition();
  result = swift_dynamicCast();
  if (result)
  {
    *(v1 + 137) = 1;
  }

  return result;
}

void *sub_1C5D52670(void *result, uint64_t a2, void *a3, unint64_t a4)
{
  if (a4 >> 61 == 5)
  {
    v5 = v4;
    v9 = result;
    sub_1C5D5D0D8(result, a2, a3);

    sub_1C5D5D118(v9, a2, a3);
    sub_1C5D54A58(0, 0.0);
    sub_1C5D4AE5C(0);
    sub_1C5CDAF64(v4 + 80, v32);
    __swift_project_boxed_opaque_existential_0(v32, v32[3]);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    v30 = __dst[0];
    v31 = __dst[1];
    MEMORY[0x1C69534E0](0x100000000000002DLL, 0x80000001C604CD70);
    v10 = *(v4 + 192);
    v28 = a3;
    if (v10)
    {
      v12 = *(v5 + 200);
      v11 = *(v5 + 208);
      sub_1C5D5D0D8(v10, v12, v11);
      v13 = swift_unknownObjectRetain();
      sub_1C5D5D118(v13, v12, v11);
      ObjectType = swift_getObjectType();
    }

    else
    {
      ObjectType = 0;
      __dst[1] = 0;
      __dst[2] = 0;
    }

    __dst[0] = v10;
    __dst[3] = ObjectType;
    DefaultStringInterpolation.appendInterpolation(describing:default:)(__dst, 7104878, 0xE300000000000000);
    sub_1C5CBCF4C(__dst);
    MEMORY[0x1C69534E0](0x41656D6954202D20, 0xEF3A687461654474);
    v15 = *(v5 + 192);
    v16 = *(v5 + 200);
    v17 = *(v5 + 208);
    if (v15)
    {
      v18 = *(v5 + 200);
    }

    else
    {
      LOBYTE(v18) = 0;
    }

    sub_1C5D5D0D8(*(v5 + 192), *(v5 + 200), *(v5 + 208));
    sub_1C5D5D118(v15, v16, v17);
    v36.is_nil = v18;
    DefaultStringInterpolation.appendInterpolation(time:)(v36);
    __src[0] = v30;
    __src[1] = v31;
    sub_1C5D5CCE4(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v32);
    if (qword_1EC1A9680 != -1)
    {
      swift_once();
    }

    v19 = qword_1EC1BE470;
    v20 = *(v5 + 64);
    v21 = sub_1C6014D30();
    [v20 resetWithReason_];

    sub_1C5D4BA1C(v19, 1);
    sub_1C5DDD240();
    if (*(v5 + 120))
    {
      sub_1C5DB7C24(1);
    }

    v22 = *(v5 + 192);
    v23 = *(v5 + 200);
    v24 = *(v5 + 208);
    v25 = v22;
    v26 = v23;
    v27 = v24;
    if (!v22)
    {
      v27 = v28;
      sub_1C5D5D0D8(v9, a2, v28);
      v25 = v9;
      v26 = a2;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v33[0] = v25;
      v33[1] = v26;
      v33[2] = v27;
      v33[3] = a4;
      v34 = 3;
      sub_1C5D5D0D8(v22, v23, v24);
      sub_1C5C8CF74(v25, v26, v27, a4);
      sub_1C5DCEC3C(v33);

      sub_1C5C8C748(v25, v26, v27, a4);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C5D5D0D8(v22, v23, v24);
    }

    return sub_1C5C8C748(v25, v26, v27, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5D529E4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 61 != 6)
  {
    __break(1u);
    goto LABEL_27;
  }

  v5 = v4;
  v6 = a4;
  v9 = result;
  if (*(v4[5] + 32) >= 2uLL)
  {
    swift_beginAccess();
    result = sub_1C5C84D90((v4 + 18), __dst);
    if (!__dst[3])
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v37 = v9;
    v39 = v6;
    v10 = a2;
    v11 = a3;
    __swift_project_boxed_opaque_existential_0(__dst, __dst[3]);
    result = sub_1C5C84D90((v4 + 18), __src);
    if (!__src[3])
    {
LABEL_29:
      __break(1u);
      return result;
    }

    v12 = __swift_project_boxed_opaque_existential_0(__src, __src[3]);
    v13 = *(*v12 + 184);
    v14 = *(*v12 + 185);
    v15 = *(*v12 + 186);
    v16 = *(*v12 + 188);
    v17 = *(*v12 + 189);
    __swift_destroy_boxed_opaque_existential_0(__src);
    v25 = 0x10000000000;
    if (!v17)
    {
      v25 = 0;
    }

    v26 = 0x100000000;
    if (!v16)
    {
      v26 = 0;
    }

    v27 = 0x10000;
    if (!v15)
    {
      v27 = 0;
    }

    v28 = 256;
    if (!v14)
    {
      v28 = 0;
    }

    sub_1C5D3EF18(v28 | v13 | v27 | v26 | v25 | 0x1000000, v18, v19, v20, v21, v22, v23, v24, v36, v37, v39, v41, v42, v43, v44, __src[0], __src[1], __src[2], __src[3], __src[4]);
    __swift_destroy_boxed_opaque_existential_0(__dst);
    a3 = v11;
    a2 = v10;
    v9 = v38;
    v6 = v40;
  }

  sub_1C5DDC6D4();
  swift_beginAccess();
  result = sub_1C5C84D90((v4 + 18), __dst);
  if (!__dst[3])
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_0(__dst, __dst[3]);
  v29 = v4[24];
  v30 = v4[25];
  v31 = v4[26];
  v4[25] = 0;
  v4[26] = 0;
  v4[24] = 0;
  sub_1C5D41AB0(0, 0, v29);
  sub_1C5D5D118(v29, v30, v31);
  __swift_destroy_boxed_opaque_existential_0(__dst);
  sub_1C5D4AE5C(1);
  sub_1C5CDAF64((v4 + 10), v48);
  __swift_project_boxed_opaque_existential_0(v48, v48[3]);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C6017540();
  v46 = __dst[0];
  v47 = __dst[1];
  MEMORY[0x1C69534E0](0x1000000000000030, 0x80000001C604CDA0);
  v32 = v4[4];
  if (v32)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = 0;
    __dst[1] = 0;
    __dst[2] = 0;
  }

  __dst[0] = v32;
  __dst[3] = ObjectType;
  swift_unknownObjectRetain();
  DefaultStringInterpolation.appendInterpolation(describing:default:)(__dst, 7104878, 0xE300000000000000);
  sub_1C5CBCF4C(__dst);
  MEMORY[0x1C69534E0](0xD000000000000011, 0x80000001C604CDE0);
  if (v5[4])
  {
    [v5[4] playbackStartTimeOverride];
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  DefaultStringInterpolation.appendInterpolation(time:)(*&v34);
  __src[0] = v46;
  __src[1] = v47;
  sub_1C5D5CCE4(__src);
  memcpy(__dst, __src, 0xD9uLL);
  sub_1C5DBBF0C();

  __swift_destroy_boxed_opaque_existential_0(v48);
  if (v5[15])
  {
    sub_1C5DB8C58(1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v49[0] = v9;
    v49[1] = a2;
    v49[2] = a3;
    v49[3] = v6;
    v50 = 3;
    sub_1C5DCEC3C(v49);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C5D52D8C()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C6016630();
  OUTLINED_FUNCTION_25();
  v59 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_146();
  v9 = v8 - v7;
  v10 = sub_1C6016690();
  OUTLINED_FUNCTION_25();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_146();
  v58 = v15 - v14;
  OUTLINED_FUNCTION_34_7(v0 + 10, v0[13]);
  v69[0] = 0;
  v69[1] = v16;
  sub_1C6017540();
  MEMORY[0x1C69534E0](0xD00000000000005BLL, 0x80000001C604CE30);
  v17 = sub_1C5D5F72C();
  MEMORY[0x1C69534E0](v17);

  sub_1C5D5CCE4(v69);
  memcpy(v68, v69, sizeof(v68));
  sub_1C5DBBF0C();

  if (((v3[8] >> 1) & 2 | (v3[8] >> 58) & 0x3C) != 4)
  {
    goto LABEL_36;
  }

  v55 = v12;
  v56 = v4;
  v57 = v9;
  v19 = v3[1];
  v18 = v3[2];
  v54 = v3;
  v20 = *v3;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_31();
  v62 = v0;
  sub_1C5C84D90((v0 + 18), v64);
  if (!v65)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_17_9(v64, v65);
  swift_unknownObjectRetain();
  v60 = v19;
  v21 = v19;
  v61 = v18;

  sub_1C5D3F6F8();
  v23 = v22;
  v25 = v24;
  swift_unknownObjectRelease();

  v26 = sub_1C5C6AA20();
  for (i = 0; ; ++i)
  {
    if (v26 == i)
    {

      __swift_destroy_boxed_opaque_existential_0(v64);
      OUTLINED_FUNCTION_34_7(v62 + 10, v62[13]);
      v67[0] = 0;
      v67[1] = v36;
      sub_1C6017540();
      MEMORY[0x1C69534E0](0x726579616C505641, 0xEE00206D65746920);
      swift_getObjectType();
      v66[0] = v20;
      sub_1C6017830();
      swift_unknownObjectRelease();
      MEMORY[0x1C69534E0](0xD000000000000053, 0x80000001C604CEE0);
      v37 = [v62 stateDictionary];
      sub_1C6016860();

      OUTLINED_FUNCTION_62_6();
      sub_1C6016870();

      v38 = OUTLINED_FUNCTION_11_0();
      MEMORY[0x1C69534E0](v38);

      v66[0] = v67[0];
      v66[1] = v67[1];
      sub_1C5D5CCE4(v66);
      memcpy(v67, v66, 0xD9uLL);
      sub_1C5DBBF0C();

LABEL_33:
      OUTLINED_FUNCTION_237();
      return;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1C6954040](i, v23);
    }

    else
    {
      if (i >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v28 = *(v23 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      OUTLINED_FUNCTION_34_7((v1 + 80), *(v1 + 104));
      v67[0] = 0;
      v67[1] = v52;
      sub_1C6017540();
      MEMORY[0x1C69534E0](0xD00000000000004FLL, 0x80000001C604CE90);
      v53 = sub_1C5D5F72C();
      MEMORY[0x1C69534E0](v53);

      v66[0] = v67[0];
      v66[1] = v67[1];
      sub_1C5D45B74(v66);
      memcpy(v67, v66, 0xD9uLL);
      sub_1C5DBBF0C();

      __break(1u);
      goto LABEL_37;
    }

    swift_getObjectType();
    v1 = sub_1C5DEA0B4();
    v30 = v29;
    swift_getObjectType();
    if (v1 == sub_1C5DEA0B4() && v30 == v31)
    {
    }

    else
    {
      v1 = OUTLINED_FUNCTION_71();

      if ((v1 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v33 = [v28 avPlayerItem];
    v34 = [v20 avPlayerItem];
    v35 = v34;
    if (!v33)
    {
      break;
    }

    if (!v34)
    {
      v35 = v33;
      goto LABEL_23;
    }

    if (v33 == v35)
    {
      goto LABEL_27;
    }

LABEL_24:
    swift_unknownObjectRelease();
  }

  if (v34)
  {
LABEL_23:

    goto LABEL_24;
  }

LABEL_27:

  __swift_destroy_boxed_opaque_existential_0(v64);
  OUTLINED_FUNCTION_0_31();
  sub_1C5C84D90((v62 + 18), v67);
  if (!v67[3])
  {
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_35_7(v67, v67[3]);
  v40 = *(v39 + 96);
  v41 = *(v39 + 104);

  __swift_destroy_boxed_opaque_existential_0(v67);
  OUTLINED_FUNCTION_0_31();
  sub_1C5C84D90((v62 + 18), v67);
  if (v67[3])
  {
    v63 = v40;
    OUTLINED_FUNCTION_17_9(v67, v67[3]);
    sub_1C5D400C0();
    __swift_destroy_boxed_opaque_existential_0(v67);
    OUTLINED_FUNCTION_0_31();
    sub_1C5C84D90((v62 + 18), v67);
    if (!v67[3])
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_45(v67, v67[3]);
    v42 = [v28 contentItemID];
    sub_1C6016940();

    sub_1C5D43224();

    __swift_destroy_boxed_opaque_existential_0(v67);
    if (swift_unknownObjectWeakLoadStrong())
    {
      OUTLINED_FUNCTION_81_3();
      sub_1C5DD0ECC();
      swift_unknownObjectRelease();
    }

    sub_1C5C64D74(0, &qword_1ED7DCE50);
    v43 = sub_1C6016FD0();
    OUTLINED_FUNCTION_7_3();
    v44 = swift_allocObject();
    swift_weakInit();
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = v60;
    v45[4] = v20;
    v45[5] = v63;
    v45[6] = v41;
    memcpy(v45 + 7, v54, 0x48uLL);
    v45[16] = v28;
    v45[17] = v61;
    v66[4] = sub_1C5D5D594;
    v66[5] = v45;
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 1107296256;
    OUTLINED_FUNCTION_18_10();
    v66[2] = v46;
    v66[3] = &block_descriptor_180;
    v47 = _Block_copy(v66);
    sub_1C5D5D5AC(v54, v67);
    swift_unknownObjectRetain();

    sub_1C6016670();
    v67[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_6_18();
    sub_1C5D5CE80(v48, v49);
    OUTLINED_FUNCTION_297();
    sub_1C5D5CF8C();
    OUTLINED_FUNCTION_5_21();
    sub_1C5D5CE80(v50, v51);
    sub_1C60173B0();
    MEMORY[0x1C6953AC0](0, v58, v57, v47);
    _Block_release(v47);
    swift_unknownObjectRelease();

    (*(v59 + 8))(v57, v56);
    (*(v55 + 8))(v58, v10);
    goto LABEL_33;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_1C5D53648(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1C5DE3834(0, 0, 1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + 64);
    swift_unknownObjectRetain();

    v25 = sub_1C6014D30();
    v24 = a3;
    v17 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    v18 = a8;
    swift_weakInit();

    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = a4;
    v19[4] = a5;
    memcpy(v19 + 5, a6, 0x48uLL);
    v19[14] = a7;
    v19[15] = a2;
    v19[16] = v18;
    aBlock[4] = sub_1C5D5D608;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5D54350;
    aBlock[3] = &block_descriptor_187;
    v20 = _Block_copy(aBlock);

    sub_1C5D5D5AC(a6, v26);
    swift_unknownObjectRetain();
    v21 = a2;

    [v16 resolveError:v25 forItem:v24 completion:v20];
    swift_unknownObjectRelease();
    _Block_release(v20);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    swift_beginAccess();
    sub_1C5C84D90(v23 + 144, v26);

    if (v27)
    {
      __swift_project_boxed_opaque_existential_0(v26, v27);
      sub_1C5D42AC4();
      return __swift_destroy_boxed_opaque_existential_0(v26);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C5D53920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v89 = a7;
  v90 = a1;
  v13 = sub_1C6015060();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v87 = v14;
    v88 = a8;
    swift_beginAccess();
    result = sub_1C5C84D90((v18 + 18), v99);
    if (!v99[3])
    {
      __break(1u);
      goto LABEL_62;
    }

    v19 = __swift_project_boxed_opaque_existential_0(v99, v99[3]);
    v20 = *(*v19 + 104);
    if (v20)
    {
      if (a4)
      {
        if (*(*v19 + 96) != a3 || v20 != a4)
        {
          v22 = sub_1C6017860();
          __swift_destroy_boxed_opaque_existential_0(v99);
          if (v22)
          {
            goto LABEL_15;
          }

LABEL_13:
          __swift_project_boxed_opaque_existential_0(v18 + 10, v18[13]);
          v99[0] = 0;
          v99[1] = 0xE000000000000000;
          sub_1C6017540();
          MEMORY[0x1C69534E0](0xD00000000000001CLL, 0x80000001C604CF40);
          type metadata accessor for Description();
          v23 = sub_1C5DCA5B4(v90);
          MEMORY[0x1C69534E0](v23);

          MEMORY[0x1C69534E0](0x6E657645202D205DLL, 0xEA00000000003A74);
          v24 = sub_1C5D5F72C();
          MEMORY[0x1C69534E0](v24);

          MEMORY[0x1C69534E0](0xD00000000000001FLL, 0x80000001C604CF60);
          v98[0] = v99[0];
          v98[1] = v99[1];
          sub_1C5D5CCE4(v98);
          memcpy(v99, v98, 0xD9uLL);
          sub_1C5DBBF0C();
        }

LABEL_14:
        __swift_destroy_boxed_opaque_existential_0(v99);
LABEL_15:
        __swift_project_boxed_opaque_existential_0(v18 + 10, v18[13]);
        v99[0] = 0;
        v99[1] = 0xE000000000000000;
        sub_1C6017540();
        MEMORY[0x1C69534E0](0xD00000000000001CLL, 0x80000001C604CF40);
        type metadata accessor for Description();
        v25 = v90;
        v26 = sub_1C5DCA5B4(v90);
        MEMORY[0x1C69534E0](v26);

        MEMORY[0x1C69534E0](0x6E657645202D205DLL, 0xEA00000000003A74);
        v27 = sub_1C5D5F72C();
        MEMORY[0x1C69534E0](v27);

        MEMORY[0x1C69534E0](0x7449657565757120, 0xEB000000003A6D65);
        swift_getObjectType();
        v98[0] = a6;
        sub_1C6017830();
        v97[0] = v99[0];
        v97[1] = v99[1];
        sub_1C5D5CCE4(v97);
        memcpy(v99, v97, 0xD9uLL);
        sub_1C5DBBF0C();

        v28 = sub_1C6014D30();
        v29 = *MEMORY[0x1E69874D8];
        v86 = v28;
        v30 = [v28 msv:v29 errorByUnwrappingDomain:-11835 code:?];
        if (v30 && (v30, v25 == 2))
        {
          __swift_project_boxed_opaque_existential_0(v18 + 10, v18[13]);
          v31 = 0x80000001C604CFF0;
          v32 = 0xD00000000000005DLL;
        }

        else
        {

          v33 = sub_1C5DDC30C(a5);

          if (v33)
          {
            goto LABEL_21;
          }

          __swift_project_boxed_opaque_existential_0(v18 + 10, v18[13]);
          v31 = 0x80000001C604CF80;
          v32 = 0xD000000000000061;
        }

        v96[0] = v32;
        v96[1] = v31;
        sub_1C5D5CCE4(v96);
        memcpy(v98, v96, 0xD9uLL);
        sub_1C5DBBF0C();
LABEL_21:
        if (*(v18[5] + 32) == 1 || v25 == 1)
        {
          result = sub_1C5C84D90((v18 + 18), v96);
          if (!v96[3])
          {
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          v85 = a6;
          __swift_project_boxed_opaque_existential_0(v96, v96[3]);
          result = sub_1C5C84D90((v18 + 18), &v91);
          if (!v94)
          {
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v35 = __swift_project_boxed_opaque_existential_0(&v91, v94);
          v36 = *(*v35 + 184);
          v37 = *(*v35 + 185);
          v38 = *(*v35 + 187);
          v39 = *(*v35 + 188);
          v40 = *(*v35 + 189);
          __swift_destroy_boxed_opaque_existential_0(&v91);
          v48 = 0x10000000000;
          if (!v40)
          {
            v48 = 0;
          }

          v49 = 0x100000000;
          if (!v39)
          {
            v49 = 0;
          }

          v50 = 0x1000000;
          if (!v38)
          {
            v50 = 0;
          }

          v51 = 256;
          if (!v37)
          {
            v51 = 0;
          }

          sub_1C5D3EF18(v51 | v36 | v50 | v49 | v48 | 0x10000, v41, v42, v43, v44, v45, v46, v47, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96[0]);
          __swift_destroy_boxed_opaque_existential_0(v96);
          a6 = v85;
          v25 = v90;
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1C5DD0F4C(a6, v89, v25);
          swift_unknownObjectRelease();
        }

        if (v25 == 1)
        {
          v96[0] = 0;
          v96[1] = 0xE000000000000000;

          sub_1C6017540();

          v96[0] = 0xD000000000000015;
          v96[1] = 0x80000001C604C000;
          sub_1C6015050();
          v52 = sub_1C6015030();
          v54 = v53;
          (*(v87 + 8))(v16, v13);
          MEMORY[0x1C69534E0](v52, v54);

          sub_1C5DDC60C(0, 0, v89, v96[0], v96[1], 0, 0, 0.0);

          result = sub_1C5C84D90((v18 + 18), v96);
          if (!v96[3])
          {
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          v55 = a6;
          __swift_project_boxed_opaque_existential_0(v96, v96[3]);
          result = sub_1C5C84D90((v18 + 18), &v91);
          if (!v94)
          {
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
            return result;
          }

          v56 = __swift_project_boxed_opaque_existential_0(&v91, v94);
          v57 = *(*v56 + 184);
          v58 = *(*v56 + 185);
          v59 = *(*v56 + 187);
          v60 = *(*v56 + 188);
          v61 = *(*v56 + 189);
          __swift_destroy_boxed_opaque_existential_0(&v91);
          v69 = 0x10000000000;
          if (!v61)
          {
            v69 = 0;
          }

          v70 = 0x100000000;
          if (!v60)
          {
            v70 = 0;
          }

          v71 = 0x1000000;
          if (!v59)
          {
            v71 = 0;
          }

          v72 = 256;
          if (!v58)
          {
            v72 = 0;
          }

          sub_1C5D3EF18(v72 | v57 | v71 | v70 | v69 | 0x10000, v62, v63, v64, v65, v66, v67, v68, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96[0]);
          __swift_destroy_boxed_opaque_existential_0(v96);
          result = sub_1C5C84D90((v18 + 18), v96);
          if (!v96[3])
          {
            goto LABEL_68;
          }

          __swift_project_boxed_opaque_existential_0(v96, v96[3]);
          sub_1C5D3F6F8();
          v74 = v73;
          v76 = v75;
          swift_unknownObjectRelease();

          a6 = v55;
          if (sub_1C5C6AA20())
          {
            sub_1C5C8CEE0(0, (v74 & 0xC000000000000001) == 0, v74);
            if ((v74 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1C6954040](0, v74);
              swift_unknownObjectRelease();
            }

            __swift_destroy_boxed_opaque_existential_0(v96);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_0(v96);
            if (v18[4])
            {
              v96[0] = v18[4];
              *&v96[1] = xmmword_1C60311B0;
              v77 = v89;
              v96[3] = v89;
              v96[4] = v88;
              *&v96[7] = xmmword_1C60379B0;
              LOBYTE(v96[9]) = 1;
              swift_unknownObjectRetain();

              v78 = v77;
              sub_1C5C8AE5C();

              swift_unknownObjectRelease();
            }
          }
        }

        result = sub_1C5C84D90((v18 + 18), &v91);
        if (v94)
        {
          __swift_project_boxed_opaque_existential_0(&v91, v94);
          v79 = [a6 contentItemID];
          v80 = sub_1C6016940();
          v82 = v81;

          sub_1C5D434EC(v80, v82, v89, v90);

          __swift_destroy_boxed_opaque_existential_0(&v91);
          v83 = v18[7];
          swift_unknownObjectRetain();
          v84 = [a6 contentItemID];
          [v83 invalidateCacheWithContentItemID_];
          swift_unknownObjectRelease();

          result = sub_1C5C84D90((v18 + 18), &v91);
          if (v94)
          {
            __swift_project_boxed_opaque_existential_0(&v91, v94);
            swift_unknownObjectRetain();
            sub_1C5D41AB0(0, 0, a6);
            swift_unknownObjectRelease();

            return __swift_destroy_boxed_opaque_existential_0(&v91);
          }

          goto LABEL_63;
        }

LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }
    }

    else if (!a4)
    {
      goto LABEL_14;
    }

    __swift_destroy_boxed_opaque_existential_0(v99);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1C5D54350(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1C5D543A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5D4C5A0();
  if (v7)
  {
    if (v6 != a2 || v7 != a3)
    {
      OUTLINED_FUNCTION_6_3();
      if ((sub_1C6017860() & 1) == 0)
      {
        OUTLINED_FUNCTION_49();
        sub_1C6017540();
        MEMORY[0x1C69534E0](0xD000000000000020, 0x80000001C604C180);
        v16 = OUTLINED_FUNCTION_6_3();
        MEMORY[0x1C69534E0](v16);
        MEMORY[0x1C69534E0](0xD00000000000001BLL, 0x80000001C604C1B0);
        v17 = OUTLINED_FUNCTION_303();
        MEMORY[0x1C69534E0](v17);

        return 0;
      }
    }
  }

  if (*(v3 + 32))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v9 = sub_1C5DEA0B4();
    v11 = v10;
    swift_getObjectType();
    if (v9 == sub_1C5DEA0B4() && v11 == v12)
    {
      swift_unknownObjectRelease();

      return 1;
    }

    OUTLINED_FUNCTION_15_1();
    v14 = OUTLINED_FUNCTION_71();

    if (v14)
    {
      swift_unknownObjectRelease();
      return 1;
    }

    OUTLINED_FUNCTION_49();
    sub_1C6017540();
    OUTLINED_FUNCTION_65_6();
    sub_1C6017830();
    MEMORY[0x1C69534E0](544437792, 0xE400000000000000);
    sub_1C6017830();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_49();
    sub_1C6017540();
    OUTLINED_FUNCTION_65_6();
    swift_getObjectType();
    sub_1C6017830();
    MEMORY[0x1C69534E0](0x6C696E20737620, 0xE700000000000000);
  }

  return 0;
}

void sub_1C5D54614()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = OUTLINED_FUNCTION_56_4();
    sub_1C5DD11DC(v6, v7, v8, v5, v3, v1);
    OUTLINED_FUNCTION_237();

    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_237();
  }
}

uint64_t sub_1C5D546B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = OUTLINED_FUNCTION_15_1();
    sub_1C5DD1300(v11, v12, a3, a4, a5, a6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C5D5475C(void *a1, uint64_t a2)
{
  v3 = [a1 contentItemID];
  sub_1C6016940();

  v4 = OUTLINED_FUNCTION_11_0();
  v6 = sub_1C5D4F3C4(v4, v5);

  if (v6)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = OUTLINED_FUNCTION_312();
      sub_1C5DD17D0(v8, a2);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1C5D54818()
{
  result = *(v0 + 128);
  if (result)
  {
    return [result shouldPreroll];
  }

  return result;
}

id sub_1C5D54840()
{
  result = *(v0 + 128);
  if (result)
  {
    return [result allowScreenRecording];
  }

  return result;
}

uint64_t sub_1C5D54868()
{
  sub_1C5DABCEC(v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_1_24();
    sub_1C5D5D294();
    v5 = 0u;
    v6 = 0u;
    v7 = 0;
    goto LABEL_7;
  }

  sub_1C5C74680(0, qword_1ED7DE920);
  sub_1C5C74680(0, qword_1ED7DD8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    goto LABEL_7;
  }

  if (!*(&v6 + 1))
  {
LABEL_7:
    sub_1C5D5D294();
    return 0;
  }

  sub_1C5C6BEFC(&v5, v8);
  v0 = v10;
  __swift_project_boxed_opaque_existential_0(v8, v9);
  v1 = OUTLINED_FUNCTION_73();
  v3 = v2(v1, v0);
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v3;
}

uint64_t sub_1C5D549A0()
{
  sub_1C5DABCEC(v3);
  if (!v4)
  {
    OUTLINED_FUNCTION_1_24();
    sub_1C5D5D294();
    return 0;
  }

  sub_1C5C74680(0, qword_1ED7DE920);
  OUTLINED_FUNCTION_68();
  type metadata accessor for SmartPlayerItemTransition();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_1C5D9B954();
  v1 = v0;

  return v1;
}

void sub_1C5D54A58(void *a1, double a2)
{
  v3 = *(v2 + 32);
  if (v3)
  {
    [swift_unknownObjectRetain() time];
    v7 = *(v2 + 208);
    *(v2 + 192) = v3;
    *(v2 + 200) = v6 + a2;
    *(v2 + 208) = a1;
    sub_1C5D45E64(a1);
    v8 = OUTLINED_FUNCTION_11_0();

    sub_1C5D5D118(v8, v9, v7);
  }
}

uint64_t sub_1C5D54B00(void *a1, uint64_t a2, NSObject *a3)
{
  v4 = v3;
  v72 = a2;
  v73 = a3;
  v6 = sub_1C6016630();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C6016690();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = sub_1C5C84D90(v4 + 144, v83);
  if (!v84)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v69 = v11;
  v70 = v10;
  v67 = v9;
  v68 = v6;
  v71 = v7;
  __swift_project_boxed_opaque_existential_0(v83, v84);
  sub_1C5D400C0();
  __swift_destroy_boxed_opaque_existential_0(v83);
  __swift_project_boxed_opaque_existential_0((v4 + 80), *(v4 + 104));
  v82[0] = 0xD000000000000039;
  v82[1] = 0x80000001C604CAE0;
  sub_1C5D5CCE4(v82);
  memcpy(v86, v82, sizeof(v86));
  sub_1C5DBBF0C();
  v15 = sub_1C5D55E88();
  if (v15)
  {
    v16 = v15;
    v17 = v13;
    v18 = sub_1C6016900();
    [v16 floatForKey_];
    v20 = v19;

    v21 = 0.0;
    if (v20 >= 0.0)
    {
      if (v20 <= 1000.0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 1000.0;
      }
    }
  }

  else
  {
    v17 = v13;
    v21 = 250.0;
  }

  v22 = sub_1C5D55E88();
  if (v22)
  {
    v23 = v22;
    v24 = sub_1C6016900();
    [v23 floatForKey_];
    v26 = v25;

    v27 = 100.0;
    if (v26 >= 100.0)
    {
      if (v26 <= 3000.0)
      {
        v27 = v26;
      }

      else
      {
        v27 = 3000.0;
      }
    }
  }

  else
  {
    v27 = 500.0;
  }

  v28 = sub_1C5D55E88();
  if (v28)
  {
    v29 = v28;
    v30 = sub_1C6016900();
    [v29 floatForKey_];
    v32 = v31;

    v33 = 100.0;
    if (v32 >= 100.0)
    {
      if (v32 <= 3000.0)
      {
        v33 = v32;
      }

      else
      {
        v33 = 3000.0;
      }
    }
  }

  else
  {
    v33 = 1500.0;
  }

  v34 = sub_1C5D55E88();
  if (v34)
  {
    v35 = v34;
    v36 = sub_1C6016900();
    [v35 floatForKey_];
    v38 = v37;

    v39 = 0.0;
    if (v38 >= 0.0)
    {
      if (v38 <= 1000.0)
      {
        v39 = v38;
      }

      else
      {
        v39 = 1000.0;
      }
    }
  }

  else
  {
    v39 = 250.0;
  }

  v40 = sub_1C5DDBEF8();
  v41 = (v21 + v27) + v39;
  if (v40 != 32769)
  {
    v41 = v21;
  }

  v42 = v41 / 1000.0;
  v43 = *(v4 + 32);
  swift_unknownObjectRetain();
  sub_1C5D54A58(a1, v42);
  __swift_project_boxed_opaque_existential_0((v4 + 80), *(v4 + 104));
  v85[0] = 0;
  v85[1] = 0xE000000000000000;
  sub_1C6017540();
  v80 = v85[0];
  v81 = v85[1];
  MEMORY[0x1C69534E0](0xD00000000000003CLL, 0x80000001C604CB20);
  v44 = sub_1C5D55E88();
  if (v44)
  {
    v45 = v44;
    v46 = sub_1C6016900();
    [v45 floatForKey_];
  }

  sub_1C6016D30();
  MEMORY[0x1C69534E0](0x6574536564616620, 0xEB000000003A7370);
  v47 = sub_1C5D55E88();
  if (v47)
  {
    v48 = v47;
    v49 = sub_1C6016900();
    [v48 floatForKey_];
  }

  sub_1C6016D30();
  MEMORY[0x1C69534E0](0xD000000000000012, 0x80000001C604CB60);
  sub_1C6016D30();
  MEMORY[0x1C69534E0](0xD000000000000014, 0x80000001C604CB80);
  sub_1C6016D30();
  MEMORY[0x1C69534E0](0xD000000000000018, 0x80000001C604CBA0);
  sub_1C6016D30();
  MEMORY[0x1C69534E0](0xD000000000000012, 0x80000001C604CBC0);
  sub_1C6016D30();
  MEMORY[0x1C69534E0](29549, 0xE200000000000000);
  v79[0] = v80;
  v79[1] = v81;
  sub_1C5D5CCE4(v79);
  memcpy(v85, v79, 0xD9uLL);
  sub_1C5DBBF0C();

  v50 = dispatch_group_create();
  dispatch_group_enter(v50);
  *(v4 + 216) = 1;
  [*(v4 + 56) invalidateCache];
  result = sub_1C5C84D90(v4 + 144, v75);
  if (!v76)
  {
    goto LABEL_37;
  }

  __swift_project_boxed_opaque_existential_0(v75, v76);
  v51 = *(v4 + 192);
  v52 = *(v4 + 200);
  v53 = *(v4 + 208);
  *(v4 + 200) = 0;
  *(v4 + 208) = 0;
  *(v4 + 192) = 0;
  sub_1C5D41AB0(0, 0, v51);
  sub_1C5D5D118(v51, v52, v53);
  __swift_destroy_boxed_opaque_existential_0(v75);
  result = sub_1C5C84D90(v4 + 144, v75);
  if (!v76)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  __swift_project_boxed_opaque_existential_0(v75, v76);
  v54 = swift_allocObject();
  v54[2] = v50;
  v54[3] = v4;
  v56 = v72;
  v55 = v73;
  v54[4] = v43;
  v54[5] = v56;
  v54[6] = v55;
  swift_unknownObjectRetain();
  v57 = v50;

  sub_1C5C74C28(v56);
  sub_1C5D4186C(sub_1C5D5D170, v54);

  __swift_destroy_boxed_opaque_existential_0(v75);
  dispatch_group_enter(v57);
  v58 = swift_allocObject();
  v58[2] = v4;
  v58[3] = v43;
  v58[4] = v57;
  swift_unknownObjectRetain();
  v73 = v57;

  sub_1C5D561D4(1, sub_1C5D5D1A0, v58, v27);

  sub_1C5C64D74(0, &qword_1ED7DCE50);
  v59 = sub_1C6016FD0();
  v60 = swift_allocObject();
  *(v60 + 16) = v4;
  *(v60 + 24) = v43;
  *(v60 + 32) = v33;
  v77 = sub_1C5D5D1AC;
  v78 = v60;
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 1107296256;
  v75[2] = sub_1C5DBC798;
  v76 = &block_descriptor_148;
  v61 = _Block_copy(v75);
  swift_unknownObjectRetain();

  v62 = v17;
  sub_1C6016670();
  v74 = MEMORY[0x1E69E7CC0];
  sub_1C5D5CE80(&qword_1ED7DC2A0, MEMORY[0x1E69E7F60]);
  sub_1C5D5CF8C();
  sub_1C5D5CE80(&qword_1ED7DC280, sub_1C5D5CF8C);
  v64 = v67;
  v63 = v68;
  sub_1C60173B0();
  v65 = v73;
  sub_1C6016F70();
  _Block_release(v61);

  swift_unknownObjectRelease();
  (*(v71 + 8))(v64, v63);
  (*(v69 + 8))(v62, v70);

  result = sub_1C5C84D90(v4 + 144, v75);
  if (v76)
  {
    __swift_project_boxed_opaque_existential_0(v75, v76);
    sub_1C5D42AC4();
    return __swift_destroy_boxed_opaque_existential_0(v75);
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1C5D55584(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = sub_1C5C84D90(v3 + 144, __dst);
  if (!__dst[3])
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_0(__dst, __dst[3]);
  sub_1C5D400C0();
  __swift_destroy_boxed_opaque_existential_0(__dst);
  sub_1C5D54A58(a1, 0.0);
  sub_1C5CDAF64(v3 + 80, v32);
  __swift_project_boxed_opaque_existential_0(v32, v32[3]);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C6017540();
  v30 = __dst[0];
  v31 = __dst[1];
  MEMORY[0x1C69534E0](0x1000000000000023, 0x80000001C604CA70);
  v8 = sub_1C5DB2EA8();
  MEMORY[0x1C69534E0](v8);

  MEMORY[0x1C69534E0](0x6D657469202D205DLL, 0xEA0000000000203ALL);
  v9 = *(v3 + 192);
  if (v9)
  {
    v11 = *(v4 + 200);
    v10 = *(v4 + 208);
    sub_1C5D5D0D8(*(v4 + 192), v11, v10);
    v12 = swift_unknownObjectRetain();
    sub_1C5D5D118(v12, v11, v10);
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = 0;
    __dst[1] = 0;
    __dst[2] = 0;
  }

  __dst[0] = v9;
  __dst[3] = ObjectType;
  DefaultStringInterpolation.appendInterpolation(describing:default:)(__dst, 7104878, 0xE300000000000000);
  sub_1C5CBCF4C(__dst);
  MEMORY[0x1C69534E0](0x3A656D6974202D20, 0xE900000000000020);
  v14 = *(v4 + 192);
  v15 = *(v4 + 200);
  v16 = *(v4 + 208);
  if (v14)
  {
    v17 = *(v4 + 200);
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  sub_1C5D5D0D8(*(v4 + 192), *(v4 + 200), *(v4 + 208));
  sub_1C5D5D118(v14, v15, v16);
  v34.is_nil = v17;
  DefaultStringInterpolation.appendInterpolation(time:)(v34);
  __src[0] = v30;
  __src[1] = v31;
  sub_1C5D5CCE4(__src);
  memcpy(__dst, __src, 0xD9uLL);
  sub_1C5DBBF0C();

  __swift_destroy_boxed_opaque_existential_0(v32);
  if (a1 == 6 || a1 == 9)
  {
    v19 = 1;
  }

  else
  {
    if (a1 != 8)
    {
      [*(v4 + 56) invalidateCache];
    }

    v19 = 0;
  }

  result = sub_1C5C84D90(v4 + 144, v27);
  if (!v28)
  {
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_0(v27, v28);
  v20 = *(v4 + 192);
  v21 = *(v4 + 200);
  v22 = *(v4 + 208);
  *(v4 + 200) = 0;
  *(v4 + 208) = 0;
  *(v4 + 192) = 0;
  sub_1C5D41AB0(v19, v19, v20);
  sub_1C5D5D118(v20, v21, v22);
  __swift_destroy_boxed_opaque_existential_0(v27);
  v23 = *(v4 + 32);
  if (v23)
  {
    result = sub_1C5C84D90(v4 + 144, v27);
    if (v28)
    {
      __swift_project_boxed_opaque_existential_0(v27, v28);
      v24 = swift_allocObject();
      v24[2] = v4;
      v24[3] = a1;
      v24[4] = v23;
      v24[5] = a2;
      v24[6] = a3;
      swift_unknownObjectRetain_n();

      sub_1C5D45E64(a1);
      sub_1C5C74C28(a2);
      sub_1C5D4186C(sub_1C5D5D158, v24);

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v27);
      sub_1C5C84D90(v4 + 144, v27);
      v25 = v28;
      if (v28)
      {
LABEL_25:
        __swift_project_boxed_opaque_existential_0(v27, v25);
        sub_1C5D42AC4();
        return __swift_destroy_boxed_opaque_existential_0(v27);
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_22:
  if (a2)
  {
    a2(0);
  }

  result = sub_1C5C84D90(v4 + 144, v27);
  v25 = v28;
  if (v28)
  {
    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1C5D559D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void *))
{
  if (a2)
  {
    __swift_project_boxed_opaque_existential_0((a3 + 80), *(a3 + 104));
    __dst[1] = 0xE000000000000000;
    v9 = a2;
    sub_1C6017540();
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    MEMORY[0x1C69534E0](0x100000000000001CLL, 0x80000001C604CAA0);
    v10 = sub_1C5DB2EA8();
    MEMORY[0x1C69534E0](v10);

    MEMORY[0x1C69534E0](0x6D657469202D205DLL, 0xEA0000000000203ALL);
    __dst[3] = swift_getObjectType();
    __dst[0] = a5;
    swift_unknownObjectRetain();
    DefaultStringInterpolation.appendInterpolation(describing:default:)(__dst, 7104878, 0xE300000000000000);
    sub_1C5CBCF4C(__dst);
    MEMORY[0x1C69534E0](0xD000000000000014, 0x80000001C604CAC0);
    swift_getErrorValue();
    __dst[3] = v28;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(__dst);
    (*(*(v28 - 8) + 16))(boxed_opaque_existential_0);
    DefaultStringInterpolation.appendInterpolation(describing:default:)(__dst, 7104878, 0xE300000000000000);
    sub_1C5CBCF4C(__dst);
    MEMORY[0x1C69534E0](0x3A656D6974202D20, 0xE900000000000020);
    [a5 playbackStartTimeOverride];
    v13 = v12;
    sub_1C5D5CCF8();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E63B0];
    *(v14 + 16) = xmmword_1C60311E0;
    v16 = MEMORY[0x1E69E6438];
    *(v14 + 56) = v15;
    *(v14 + 64) = v16;
    *(v14 + 32) = v13;
    v17 = sub_1C6016960();
    MEMORY[0x1C69534E0](v17);

    sub_1C5D5CCE4(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    if (!a6)
    {
      return;
    }

    goto LABEL_3;
  }

  sub_1C5CDAF64(a3 + 80, v33);
  __swift_project_boxed_opaque_existential_0(v33, v33[3]);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C6017540();
  v31 = __dst[0];
  v32 = __dst[1];
  MEMORY[0x1C69534E0](0x100000000000001CLL, 0x80000001C604CAA0);
  v19 = sub_1C5DB2EA8();
  MEMORY[0x1C69534E0](v19);

  MEMORY[0x1C69534E0](0x6D657469202D205DLL, 0xEA0000000000203ALL);
  __dst[3] = swift_getObjectType();
  __dst[0] = a5;
  swift_unknownObjectRetain();
  DefaultStringInterpolation.appendInterpolation(describing:default:)(__dst, 7104878, 0xE300000000000000);
  sub_1C5CBCF4C(__dst);
  MEMORY[0x1C69534E0](0x6574692077656E20, 0xEB00000000203A6DLL);
  if (a1)
  {
    ObjectType = swift_getObjectType();
    v21 = a1;
  }

  else
  {
    v21 = 0;
    ObjectType = 0;
    v30[1] = 0;
    v30[2] = 0;
  }

  v30[0] = v21;
  v30[3] = ObjectType;
  swift_unknownObjectRetain();
  DefaultStringInterpolation.appendInterpolation(describing:default:)(v30, 7104878, 0xE300000000000000);
  sub_1C5CBCF4C(v30);
  MEMORY[0x1C69534E0](0x3A656D6974202D20, 0xE900000000000020);
  [a5 playbackStartTimeOverride];
  v23 = v22;
  sub_1C5D5CCF8();
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E63B0];
  *(v24 + 16) = xmmword_1C60311E0;
  v26 = MEMORY[0x1E69E6438];
  *(v24 + 56) = v25;
  *(v24 + 64) = v26;
  *(v24 + 32) = v23;
  v27 = sub_1C6016960();
  MEMORY[0x1C69534E0](v27);

  __src[0] = v31;
  __src[1] = v32;
  sub_1C5D5CCE4(__src);
  memcpy(__dst, __src, 0xD9uLL);
  sub_1C5DBBF0C();

  __swift_destroy_boxed_opaque_existential_0(v33);
  if (a6)
  {
LABEL_3:
    a6(a2);
  }
}

uint64_t sub_1C5D55E88()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C5DD1888(0xD000000000000014, 0x80000001C604A000);
  v2 = v1;
  if (!v1)
  {
    return v2;
  }

  v21 = v1;
  v3 = sub_1C6016880();
  v4 = 0;
  while (1)
  {
    v5 = &unk_1F453BF00 + v4++;
    v6 = 0xEB00000000737065;
    v7 = 10.0;
    v8 = 0x7453656461464156;
    switch(v5[32])
    {
      case 1:
        v7 = -40.0;
        v8 = 0x6154656461464156;
        v6 = 0xEE00424474656772;
        break;
      case 2:
        v8 = 0xD000000000000011;
        v7 = 500.0;
        v6 = 0x80000001C604CC20;
        break;
      case 3:
        v7 = 1500.0;
        v8 = 0xD000000000000010;
        v6 = 0x80000001C604CC00;
        break;
      case 4:
        v8 = 0xD000000000000013;
        v7 = 250.0;
        v6 = 0x80000001C604CBE0;
        break;
      case 5:
        v8 = 0xD000000000000017;
        v7 = 250.0;
        v6 = 0x80000001C604CC40;
        break;
      default:
        break;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_1C5CE2084(v8, v6);
    if (__OFADD__(v3[2], (v10 & 1) == 0))
    {
      break;
    }

    v11 = v9;
    v12 = v10;
    sub_1C5D5D22C();
    if (sub_1C6017660())
    {
      v13 = sub_1C5CE2084(v8, v6);
      if ((v12 & 1) != (v14 & 1))
      {
        goto LABEL_22;
      }

      v11 = v13;
    }

    if (v12)
    {

      *(v3[7] + 4 * v11) = v7;
    }

    else
    {
      v3[(v11 >> 6) + 8] |= 1 << v11;
      v15 = (v3[6] + 16 * v11);
      *v15 = v8;
      v15[1] = v6;
      *(v3[7] + 4 * v11) = v7;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_21;
      }

      v3[2] = v18;
    }

    if (v4 == 6)
    {
      sub_1C5E10914(v3);

      v19 = sub_1C6016840();

      v2 = v21;
      [v21 registerDefaults_];

      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1C60178D0();
  __break(1u);
  return result;
}

void sub_1C5D561D4(int a1, void (*a2)(void), uint64_t a3, float a4)
{
  v96 = sub_1C6016630();
  v9 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v71[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = sub_1C6016690();
  v11 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v71[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = sub_1C6016620();
  v13 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v71[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v100 = sub_1C60166B0();
  v98 = *(v100 - 8);
  v15 = MEMORY[0x1EEE9AC00](v100);
  v17 = &v71[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v99 = &v71[-v19];
  v20 = *(*(v4 + 40) + 64);
  if (v20 && (objc_opt_self(), (v18 = swift_dynamicCastObjCClass()) != 0))
  {
    v21 = v18;
    swift_unknownObjectRetain();
    v22 = [v21 currentItem];
    if (v22)
    {
      v86 = v11;
      v97 = v9;

      v23 = sub_1C5D55E88();
      if (v23)
      {
        v24 = v23;
        v25 = sub_1C6016900();
        [v24 floatForKey_];
        v27 = v26;

        v28 = 10.0;
        if (v27 >= 10.0)
        {
          v28 = v27;
          if (v27 > 100.0)
          {
            v28 = 100.0;
          }
        }
      }

      else
      {
        v28 = 10.0;
      }

      if (v28 > -9.2234e18)
      {
        if (v28 >= 9.2234e18)
        {
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v89 = v28;
        v29 = v28;
        v30 = a4 / v29;
        v31 = COERCE_INT(fabs(a4 / v29)) > 2139095039;
        if ((LODWORD(v28) & 0x7FFFFFFFu) > 0x7F7FFFFF || v31)
        {
          goto LABEL_42;
        }

        if (v30 <= -9.2234e18)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        if (v30 >= 9.2234e18)
        {
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          return;
        }

        v32 = sub_1C5D55E88();
        if (v32)
        {
          v33 = v32;
          v34 = sub_1C6016900();
          [v33 floatForKey_];
          v36 = v35;

          if (v36 <= 0.0)
          {
            v37 = v36;
          }

          else
          {
            v37 = -40.0;
          }
        }

        else
        {
          v37 = -40.0;
        }

        v38 = v97;
        v39 = v37 / v29;
        v90 = swift_allocObject();
        if (a1)
        {
          v40 = 1.0;
          v41 = 20.0;
        }

        else
        {
          v40 = __exp10f(v37 / 20.0);
          v41 = -20.0;
        }

        v87 = v21;
        v72 = a1;
        v73 = a3;
        v74 = a2;
        v42 = __exp10f(v39 / v41);
        *(v90 + 16) = v40;
        v43 = dispatch_group_create();
        if (v89 < 1)
        {
          goto LABEL_45;
        }

        v44 = v43;
        v84 = v30;
        v88 = sub_1C5C64D74(0, &qword_1ED7DCE50);
        v82 = *MEMORY[0x1E69E7F38];
        v81 = (v13 + 104);
        v80 = (v13 + 8);
        ++v98;
        v79 = &v104;
        v85 = (v38 + 8);
        ++v86;
        v45 = 1;
        v83 = v20;
        v75 = v17;
        while (1)
        {
          dispatch_group_enter(v44);
          v46 = sub_1C6016FD0();
          sub_1C60166A0();
          if ((v45 * v84) >> 64 != (v45 * v84) >> 63)
          {
            break;
          }

          v48 = v91;
          v47 = v92;
          *v91 = v45 * v84;
          (*v81)(v48, v82, v47);
          MEMORY[0x1C69531B0](v17, v48);
          (*v80)(v48, v47);
          v97 = *v98;
          (v97)(v17, v100);
          v49 = swift_allocObject();
          *(v49 + 16) = v90;
          *(v49 + 24) = v42;
          *(v49 + 32) = v87;
          *(v49 + 40) = v44;
          v106 = sub_1C5D5D1CC;
          v107 = v49;
          aBlock = MEMORY[0x1E69E9820];
          v103 = 1107296256;
          v104 = sub_1C5DBC798;
          v105 = &block_descriptor_163;
          v50 = _Block_copy(&aBlock);
          swift_unknownObjectRetain();

          v51 = v44;
          v78 = v44;

          v52 = v93;
          sub_1C6016670();
          aBlock = MEMORY[0x1E69E7CC0];
          v53 = sub_1C5D5CE80(&qword_1ED7DC2A0, MEMORY[0x1E69E7F60]);
          sub_1C5D5CF8C();
          v55 = v54;
          sub_1C5D5CE80(&qword_1ED7DC280, sub_1C5D5CF8C);
          v56 = v95;
          v76 = v55;
          v57 = v96;
          v77 = v53;
          sub_1C60173B0();
          v58 = v99;
          MEMORY[0x1C6953A80](v99, v52, v56, v50);
          _Block_release(v50);

          v59 = *v85;
          (*v85)(v56, v57);
          v60 = *v86;
          (*v86)(v52, v94);
          (v97)(v58, v100);
          if (v89 == v45)
          {
            goto LABEL_37;
          }

          v61 = __OFADD__(v45++, 1);
          v17 = v75;
          v44 = v51;
          if (v61)
          {
            __break(1u);
LABEL_37:
            v62 = sub_1C6016FD0();
            v63 = swift_allocObject();
            *(v63 + 16) = v87;
            *(v63 + 24) = v72 & 1;
            v64 = v74;
            v65 = v73;
            *(v63 + 32) = v74;
            *(v63 + 40) = v65;
            v106 = sub_1C5D5D1DC;
            v107 = v63;
            aBlock = MEMORY[0x1E69E9820];
            v103 = 1107296256;
            v104 = sub_1C5DBC798;
            v105 = &block_descriptor_169;
            v66 = _Block_copy(&aBlock);
            swift_unknownObjectRetain();
            sub_1C5C74C28(v64);
            v67 = v93;
            sub_1C6016670();
            v101 = MEMORY[0x1E69E7CC0];
            v68 = v95;
            v69 = v96;
            sub_1C60173B0();
            v70 = v78;
            sub_1C6016F70();
            _Block_release(v66);
            swift_unknownObjectRelease();

            v59(v68, v69);
            v60(v67, v94);

            return;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_41;
    }

    if (a2)
    {
      a2();
    }

    swift_unknownObjectRelease();
  }

  else if (a2)
  {
    (a2)(v18);
  }
}

void sub_1C5D56C50(uint64_t a1, void *a2, NSObject *a3, float a4)
{
  swift_beginAccess();
  *(a1 + 16) = *(a1 + 16) * a4;
  [a2 setVolume_];
  dispatch_group_leave(a3);
}

uint64_t sub_1C5D56CCC(int a1, uint64_t a2, dispatch_group_t group, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t))
{
  dispatch_group_leave(group);
  sub_1C5CDAF64(a4 + 80, v19);
  __swift_project_boxed_opaque_existential_0(v19, v19[3]);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C6017540();
  v17 = __dst[0];
  v18 = __dst[1];
  MEMORY[0x1C69534E0](0x1000000000000023, 0x80000001C604CCE0);
  MEMORY[0x1C69534E0](0xD000000000000018, 0x80000001C604CD10);
  MEMORY[0x1C69534E0](0x6D657469202D205DLL, 0xEA0000000000203ALL);
  if (a5)
  {
    ObjectType = swift_getObjectType();
    v11 = a5;
  }

  else
  {
    v11 = 0;
    ObjectType = 0;
    __dst[2] = 0;
    __dst[1] = 0;
  }

  __dst[0] = v11;
  __dst[3] = ObjectType;
  swift_unknownObjectRetain();
  DefaultStringInterpolation.appendInterpolation(describing:default:)(__dst, 7104878, 0xE300000000000000);
  sub_1C5CBCF4C(__dst);
  MEMORY[0x1C69534E0](0x656D6974202D2029, 0xEA0000000000203ALL);
  if (a5)
  {
    [a5 playbackStartTimeOverride];
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  DefaultStringInterpolation.appendInterpolation(time:)(*&v12);
  __src[0] = v17;
  __src[1] = v18;
  sub_1C5D5CCE4(__src);
  memcpy(__dst, __src, 0xD9uLL);
  sub_1C5DBBF0C();

  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_project_boxed_opaque_existential_0((a4 + 80), *(a4 + 104));
  v16[0] = 0xD00000000000003ALL;
  v16[1] = 0x80000001C604CD30;
  sub_1C5D5CCE4(v16);
  memcpy(v20, v16, sizeof(v20));
  result = sub_1C5DBBF0C();
  if (a6)
  {
    return a6(a2);
  }

  return result;
}

void sub_1C5D56F14(uint64_t a1, uint64_t a2, NSObject *a3)
{
  sub_1C5CDAF64(a1 + 80, v11);
  __swift_project_boxed_opaque_existential_0(v11, v11[3]);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C6017540();
  v9 = __dst[0];
  v10 = __dst[1];
  MEMORY[0x1C69534E0](0xD000000000000020, 0x80000001C604CCB0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v6 = a2;
  }

  else
  {
    v6 = 0;
    ObjectType = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  v8[0] = v6;
  v8[3] = ObjectType;
  swift_unknownObjectRetain();
  DefaultStringInterpolation.appendInterpolation(describing:default:)(v8, 7104878, 0xE300000000000000);
  sub_1C5CBCF4C(v8);
  MEMORY[0x1C69534E0](41, 0xE100000000000000);
  __src[0] = v9;
  __src[1] = v10;
  sub_1C5D5CCE4(__src);
  memcpy(__dst, __src, 0xD9uLL);
  sub_1C5DBBF0C();

  __swift_destroy_boxed_opaque_existential_0(v11);
  dispatch_group_leave(a3);
}

uint64_t sub_1C5D5704C(uint64_t a1, uint64_t a2, float a3)
{
  *(a1 + 216) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  swift_unknownObjectRetain();

  sub_1C5DDD110(sub_1C5D5D1B8, v6);

  *(a1 + 216) = 0;
  sub_1C5DE3834(MEMORY[0x1E69E7CC0], 0, 0);
  sub_1C5DE3834(0, 0, 3);
  swift_beginAccess();
  result = sub_1C5C84D90(a1 + 144, v10);
  if (v11)
  {
    __swift_project_boxed_opaque_existential_0(v10, v11);
    sub_1C5D3F6F8();
    v9 = v8;
    sub_1C5D4E3B8();

    swift_unknownObjectRelease();

    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5D571A4(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 216))
  {
    sub_1C5CDAF64(a1 + 80, v14);
    __swift_project_boxed_opaque_existential_0(v14, v14[3]);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C6017540();
    v12 = __dst[0];
    v13 = __dst[1];
    MEMORY[0x1C69534E0](0xD000000000000028, 0x80000001C604CC60);
    if (a2)
    {
      ObjectType = swift_getObjectType();
      v6 = a2;
    }

    else
    {
      v6 = 0;
      ObjectType = 0;
      v11[1] = 0;
      v11[2] = 0;
    }

    v11[0] = v6;
    v11[3] = ObjectType;
    swift_unknownObjectRetain();
    DefaultStringInterpolation.appendInterpolation(describing:default:)(v11, 7104878, 0xE300000000000000);
    sub_1C5CBCF4C(v11);
    MEMORY[0x1C69534E0](41, 0xE100000000000000);
    __src[0] = v12;
    __src[1] = v13;
    sub_1C5D5CCE4(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    swift_unknownObjectRetain();

    sub_1C5D561D4(0, sub_1C5D5D1C4, v8, a3);
  }
}

uint64_t sub_1C5D5735C(uint64_t a1, uint64_t a2)
{
  sub_1C5CDAF64(a1 + 80, v10);
  __swift_project_boxed_opaque_existential_0(v10, v10[3]);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C6017540();
  v8 = __dst[0];
  v9 = __dst[1];
  MEMORY[0x1C69534E0](0xD00000000000001FLL, 0x80000001C604CC90);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v4 = a2;
  }

  else
  {
    v4 = 0;
    ObjectType = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  v7[0] = v4;
  v7[3] = ObjectType;
  swift_unknownObjectRetain();
  DefaultStringInterpolation.appendInterpolation(describing:default:)(v7, 7104878, 0xE300000000000000);
  sub_1C5CBCF4C(v7);
  MEMORY[0x1C69534E0](41, 0xE100000000000000);
  __src[0] = v8;
  __src[1] = v9;
  sub_1C5D5CCE4(__src);
  memcpy(__dst, __src, 0xD9uLL);
  sub_1C5DBBF0C();

  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t sub_1C5D57480()
{
  v0 = sub_1C6015060();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C5D51C4C();
    sub_1C6015050();
    v5 = sub_1C6015030();
    v7 = v6;
    (*(v1 + 8))(v3, v0);
    sub_1C5DDC60C(0, 0, 8, v5, v7, nullsub_1, 0, 0.0);
  }

  return result;
}

uint64_t sub_1C5D575E0(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0((v2 + 80), *(v2 + 104));
  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  sub_1C6017540();
  MEMORY[0x1C69534E0](0xD000000000000032, 0x80000001C604C1D0);
  MEMORY[0x1C69534E0](a1, a2);
  sub_1C5D5CCE4(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C5DBBF0C();

  *(v2 + 248) = 1;
  sub_1C5DE3834(a1, a2, 2);
  *(v2 + 248) = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6[0] = a1;
    v6[1] = a2;
    v7 = 2;
    v8 = 2;
    sub_1C5DCEC3C(v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1C5D57708()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    if ([swift_unknownObjectRetain() isSpokenAudio])
    {
      v2 = *MEMORY[0x1E6958150];
    }

    else
    {
      v2 = *MEMORY[0x1E6958130];
      if ([v1 isMovieOrTVShow])
      {
        v5 = *MEMORY[0x1E6958148];
        swift_unknownObjectRelease();

        return v5;
      }
    }

    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    v3 = *MEMORY[0x1E6958130];

    return v3;
  }
}

uint64_t sub_1C5D577EC()
{
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_7_17();
  OUTLINED_FUNCTION_0_31();
  result = OUTLINED_FUNCTION_64_5(v4, v5, v6);
  if (!v17)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_9(v16, v17);
  sub_1C5D400C0();
  __swift_destroy_boxed_opaque_existential_0(v16);
  v8 = *(v0 + 32);
  if (v8)
  {
    v9 = [v8 contentItemID];
    sub_1C6016940();
    OUTLINED_FUNCTION_88_1();
  }

  else
  {
    v3 = 0;
    v1 = 0;
  }

  OUTLINED_FUNCTION_0_31();
  v10 = OUTLINED_FUNCTION_30_10();
  result = sub_1C5C84D90(v10, v11);
  if (!v17)
  {
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_0(v16, v17);

  v12 = OUTLINED_FUNCTION_62_6();
  sub_1C5D40A34(v12, v13, v2, v0, v3, v1);

  __swift_destroy_boxed_opaque_existential_0(v16);
  OUTLINED_FUNCTION_0_31();
  v14 = OUTLINED_FUNCTION_30_10();
  result = sub_1C5C84D90(v14, v15);
  if (v17)
  {
    OUTLINED_FUNCTION_17_9(v16, v17);
    sub_1C5D42AC4();
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_1C5D57914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_247();
  v27 = v26;
  v28 = v25;
  v29 = v24;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v23;
  v37 = v22;
  if (v25 && (v22 == v24 ? (v38 = v23 == v25) : (v38 = 0), v38 || (OUTLINED_FUNCTION_15_1(), (sub_1C6017860() & 1) != 0)))
  {
    if (v35)
    {
LABEL_10:
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1C5D4D248();
LABEL_11:
      swift_unknownObjectRelease_n();
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_31_2();
    swift_beginAccess();
    OUTLINED_FUNCTION_0_31();
    sub_1C5C84D90(v27 + 144, __dst);
    if (__dst[3])
    {
      OUTLINED_FUNCTION_17_9(__dst, __dst[3]);
      v39 = OUTLINED_FUNCTION_15_1();
      v41 = sub_1C5D409F4(v39, v40);
      __swift_destroy_boxed_opaque_existential_0(__dst);
      if (!v41)
      {
LABEL_31:
        OUTLINED_FUNCTION_237();
        return;
      }

      goto LABEL_10;
    }

    __break(1u);
  }

  else
  {
    if (a22)
    {
      if (v37 == a21 && v36 == a22)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_15_1();
      if (sub_1C6017860())
      {
        goto LABEL_31;
      }
    }

    if (v35)
    {
      if (v33)
      {
        if (v31)
        {
          __swift_project_boxed_opaque_existential_0((v27 + 80), *(v27 + 104));
          __dst[0] = 0;
          __dst[1] = 0xE000000000000000;
          swift_unknownObjectRetain();
          v43 = v33;
          sub_1C6017540();
          MEMORY[0x1C69534E0](0xD000000000000027, 0x80000001C604B7D0);
          v44 = OUTLINED_FUNCTION_15_1();
          MEMORY[0x1C69534E0](v44);
          MEMORY[0x1C69534E0](23328, 0xE200000000000000);
          swift_getObjectType();
          sub_1C6017830();
          MEMORY[0x1C69534E0](0x20726F727265205DLL, 0xE800000000000000);
          swift_getErrorValue();
          sub_1C6017830();
          __src[0] = 0;
          __src[1] = 0xE000000000000000;
          sub_1C5D45B74(__src);
          memcpy(__dst, __src, 0xD9uLL);
          sub_1C5DBBF0C();
        }

        else
        {
          swift_unknownObjectRetain();
          v49 = v33;
        }

        swift_unknownObjectRetain();
        v50 = v33;
        sub_1C5D4D248();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else if (v28)
      {
        OUTLINED_FUNCTION_34_7((v27 + 80), *(v27 + 104));
        __dst[0] = 0;
        __dst[1] = v48;
        swift_unknownObjectRetain();
        sub_1C6017540();
        MEMORY[0x1C69534E0](0xD000000000000023, 0x80000001C604C8B0);
        MEMORY[0x1C69534E0](v29, v28);
        MEMORY[0x1C69534E0](0xD000000000000013, 0x80000001C604C8E0);
        __src[0] = 0;
        __src[1] = __dst[1];
        sub_1C5D45B74(__src);
        memcpy(__dst, __src, 0xD9uLL);
        sub_1C5DBBF0C();

        swift_unknownObjectRelease();
      }

      goto LABEL_31;
    }

    OUTLINED_FUNCTION_31_2();
    swift_beginAccess();
    OUTLINED_FUNCTION_0_31();
    sub_1C5C84D90(v27 + 144, __dst);
    if (__dst[3])
    {
      OUTLINED_FUNCTION_17_9(__dst, __dst[3]);
      v45 = OUTLINED_FUNCTION_15_1();
      v47 = sub_1C5D409F4(v45, v46);
      __swift_destroy_boxed_opaque_existential_0(__dst);
      if (!v47)
      {
        goto LABEL_31;
      }

      swift_unknownObjectRetain();
      sub_1C5D4D248();
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1C5D57CD8()
{
  OUTLINED_FUNCTION_7_17();
  OUTLINED_FUNCTION_0_31();
  result = OUTLINED_FUNCTION_64_5(v0, v1, v2);
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_17_9(v8, v9);
  sub_1C5D400C0();
  __swift_destroy_boxed_opaque_existential_0(v8);
  OUTLINED_FUNCTION_0_31();
  v4 = OUTLINED_FUNCTION_30_10();
  result = sub_1C5C84D90(v4, v5);
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_17_9(v8, v9);

  sub_1C5D40DDC();
  __swift_destroy_boxed_opaque_existential_0(v8);
  OUTLINED_FUNCTION_0_31();
  v6 = OUTLINED_FUNCTION_30_10();
  result = sub_1C5C84D90(v6, v7);
  if (v9)
  {
    OUTLINED_FUNCTION_17_9(v8, v9);
    sub_1C5D42AC4();
    return __swift_destroy_boxed_opaque_existential_0(v8);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1C5D57DA4(uint64_t a1)
{
  if (*(*(v1 + 40) + 32) != 1)
  {
    sub_1C5DACED4(a1);
  }
}

void sub_1C5D57DD8()
{
  OUTLINED_FUNCTION_131();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1C6016630();
  OUTLINED_FUNCTION_25();
  v81 = v9;
  v82 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_146();
  v79 = v11 - v10;
  v80 = sub_1C6016690();
  OUTLINED_FUNCTION_25();
  v78 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_146();
  v77 = v15 - v14;
  sub_1C6016620();
  OUTLINED_FUNCTION_25();
  v74 = v17;
  v75 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_146();
  v20 = (v19 - v18);
  v84 = sub_1C60166B0();
  OUTLINED_FUNCTION_25();
  v76 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_102();
  v73 = v23 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v83 = &v71 - v26;
  sub_1C5CDAF64(v5 + 80, v105);
  __swift_project_boxed_opaque_existential_0(v105, v105[3]);
  *&v108[0] = 0;
  *(&v108[0] + 1) = 0xE000000000000000;
  sub_1C6017540();
  v104 = v108[0];
  MEMORY[0x1C69534E0](0x20746E6572727563, 0xEC000000203A4947);
  v27 = [v3 avPlayerItem];
  if (v27 && (v28 = sub_1C5D5C454(v27)) != 0)
  {
    v29 = v28;
    sub_1C5D5D7C0(0, &qword_1EC1AAC40);
    *(&v108[1] + 1) = v30;
    *&v108[0] = v29;
  }

  else
  {
    memset(v108, 0, 32);
  }

  OUTLINED_FUNCTION_10_0(v108);
  sub_1C5CBCF4C(v108);
  MEMORY[0x1C69534E0](0x207478656E202D20, 0xEC000000203A4947);
  v31 = [v1 avPlayerItem];
  if (v31 && (v32 = sub_1C5D5C454(v31)) != 0)
  {
    v33 = v32;
    sub_1C5D5D7C0(0, &qword_1EC1AAC40);
    *(&v103 + 1) = v34;
    *&v102 = v33;
  }

  else
  {
    v102 = 0u;
    v103 = 0u;
  }

  OUTLINED_FUNCTION_10_0(&v102);
  sub_1C5CBCF4C(&v102);
  *&v101[0] = 0;
  *(&v101[0] + 1) = 0xE000000000000000;
  v101[1] = v104;
  sub_1C5D5CEC8(v101);
  memcpy(v108, v101, 0xD9uLL);
  sub_1C5DBBF0C();

  __swift_destroy_boxed_opaque_existential_0(v105);
  sub_1C5C84D90(v7, v99);
  if ((v100 & 1) == 0)
  {
    sub_1C5C6BEFC(v99, v86);
    OUTLINED_FUNCTION_58_5();
    __swift_project_boxed_opaque_existential_0(v86, v87);
    v62 = OUTLINED_FUNCTION_18();
    v63(v62);
    OUTLINED_FUNCTION_89();
    v90 = v64;
    v91 = v65;
    v92 = 0xD00000000000001ALL;
    v93 = v66;
    OUTLINED_FUNCTION_48_5();
    sub_1C5DBBF0C();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1C5DD0FE0(v86);
      swift_unknownObjectRelease();
    }

    sub_1C5D58738(v86);
    __swift_destroy_boxed_opaque_existential_0(v86);
    goto LABEL_22;
  }

  v35 = *&v99[0];
  v98 = *&v99[0];
  v36 = *&v99[0];
  sub_1C5C74680(0, &qword_1ED7DCAE0);
  if (!swift_dynamicCast())
  {
    goto LABEL_21;
  }

  v38 = v94;
  v37 = v95;
  if (v97 != 1)
  {
    v67 = OUTLINED_FUNCTION_56_4();
    sub_1C5D5CF6C(v67, v68, v69, 0);
LABEL_21:

    OUTLINED_FUNCTION_34_7((v5 + 80), *(v5 + 104));
    v106 = 0;
    v107 = v70;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000018, 0x80000001C604C0C0);
    swift_getErrorValue();
    sub_1C6017830();
    v90 = 0x726F727265;
    v91 = 0xE500000000000000;
    v92 = v106;
    v93 = v107;
    OUTLINED_FUNCTION_48_5();
    sub_1C5DBBF0C();

    goto LABEL_22;
  }

  v39 = v96 * 1000.0;
  if (COERCE__INT64(fabs(v96 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v39 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v40 = v39 + 1000;
  if (!__OFADD__(v39, 1000))
  {
    v72 = OUTLINED_FUNCTION_58_5();
    v106 = 0;
    v107 = 0xE000000000000000;
    sub_1C6017540();

    OUTLINED_FUNCTION_89();
    v106 = 0xD000000000000022;
    v107 = v41;
    sub_1C5D5CCF8();
    v42 = swift_allocObject();
    v43 = MEMORY[0x1E69E63B0];
    *(v42 + 16) = xmmword_1C60311E0;
    v44 = OUTLINED_FUNCTION_13_11(v42, v43);
    MEMORY[0x1C69534E0](v44);

    v90 = v38;
    v91 = v37;
    v92 = v106;
    v93 = v107;
    OUTLINED_FUNCTION_48_5();
    sub_1C5DBBF0C();
    v45 = OUTLINED_FUNCTION_56_4();
    sub_1C5D5CF6C(v45, v46, v47, 1);

    sub_1C5C64D74(0, &qword_1ED7DCE50);
    v72 = sub_1C6016FD0();
    v48 = v73;
    sub_1C60166A0();
    *v20 = v40;
    v50 = v74;
    v49 = v75;
    (*(v74 + 104))(v20, *MEMORY[0x1E69E7F38], v75);
    MEMORY[0x1C69531B0](v48, v20);
    (*(v50 + 8))(v20, v49);
    v76 = *(v76 + 8);
    (v76)(v48, v84);
    OUTLINED_FUNCTION_7_3();
    v51 = swift_allocObject();
    swift_weakInit();
    v88 = sub_1C5D5CF7C;
    v89 = v51;
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 1107296256;
    v86[2] = sub_1C5DBC798;
    v87 = &block_descriptor_14;
    v52 = _Block_copy(v86);

    v53 = v77;
    sub_1C6016670();
    v85 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_6_18();
    sub_1C5D5CE80(v54, v55);
    OUTLINED_FUNCTION_297();
    sub_1C5D5CF8C();
    OUTLINED_FUNCTION_5_21();
    sub_1C5D5CE80(v56, v57);
    v58 = v79;
    v59 = v82;
    sub_1C60173B0();
    v60 = v83;
    v61 = v72;
    MEMORY[0x1C6953A80](v83, v53, v58, v52);
    _Block_release(v52);

    (*(v81 + 8))(v58, v59);
    (*(v78 + 8))(v53, v80);
    (v76)(v60, v84);

LABEL_22:
    OUTLINED_FUNCTION_130();
    return;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_1C5D58738(uint64_t a1)
{
  sub_1C5CDAF64(a1, v3);
  sub_1C5C74680(0, qword_1ED7DE920);
  type metadata accessor for SmartPlayerItemTransition();
  result = swift_dynamicCast();
  if (result)
  {
    sub_1C5D9BAC0();
    if ((v2 & 1) == 0)
    {
      sub_1C5DDD5B8();
    }
  }

  return result;
}

uint64_t sub_1C5D587D4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    result = sub_1C5C84D90(v1 + 144, v7);
    if (v8)
    {

      __swift_project_boxed_opaque_existential_0(v7, v8);
      sub_1C5D3F6F8();
      v3 = v2;
      v5 = v4;
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0(v7);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v6 = sub_1C5D4AFF0();

        if (v6)
        {
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            sub_1C5D4BFC4(v3);
          }
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C5D58914()
{
  sub_1C5DABCEC(&v28);
  if (!v30)
  {
    return sub_1C5D5D294();
  }

  sub_1C5C6BEFC(&v28, v23);
  v1 = v24;
  v2 = v25;
  __swift_project_boxed_opaque_existential_0(v23, v24);
  (*(v2 + 56))(v1, v2);
  if (v3 == 1)
  {
    v4 = v24;
    v5 = v25;
    __swift_project_boxed_opaque_existential_0(v23, v24);
    (*(v5 + 48))(v26, v4, v5);
    v6 = v27 >> 6;
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = v24;
        v8 = v25;
        __swift_project_boxed_opaque_existential_0(v23, v24);
        v9 = (*(v8 + 24))(v7, v8);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v10 = sub_1C5D62DEC();
          *&v28 = 1;
          *(&v28 + 1) = v9;
          v29 = v10;
          v31 = xmmword_1C60379D0;
          v32 = 1;
          sub_1C5DCEC3C(&v28);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else if (v27 == 128 && !(v26[4] | v26[5] | v26[0] | v26[3] | v26[2] | v26[1]))
      {
        v12 = v24;
        v13 = v25;
        __swift_project_boxed_opaque_existential_0(v23, v24);
        v14 = (*(v13 + 40))(v12, v13);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v15 = v14;
          v16 = sub_1C5D62DEC();
          *&v28 = 0;
          *(&v28 + 1) = v15;
          v29 = v16;
          v31 = xmmword_1C60379C0;
          v32 = 1;
          sub_1C5DCEC3C(&v28);

          swift_unknownObjectRelease();
        }

        swift_beginAccess();
        result = sub_1C5C84D90(v0 + 144, v21);
        if (!v22)
        {
          __break(1u);
          return result;
        }

        __swift_project_boxed_opaque_existential_0(v21, v22);
        sub_1C5D3F6F8();
        v18 = v17;
        v20 = v19;
        swift_unknownObjectRelease();

        sub_1C5D4BFC4(v18);

        __swift_destroy_boxed_opaque_existential_0(v21);
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v23);
}

void sub_1C5D58C04()
{
  OUTLINED_FUNCTION_247();
  OUTLINED_FUNCTION_68();
  sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_146();
  v3 = [v1 avPlayerItem];
  if (!v3 || (v4 = v3, v5 = COERCE_DOUBLE(sub_1C5DB1894()), v7 = v6, v9 = v8, v4, (v9 & 1) != 0) || v5 - v7 == 0.0 || (v10 = OUTLINED_FUNCTION_90_1()) == 0 || (v11 = v10, v12 = sub_1C6016E80(), v11, !v12))
  {
LABEL_4:
    OUTLINED_FUNCTION_237();
    return;
  }

  v13 = OUTLINED_FUNCTION_90_1();
  if (v13)
  {
    v14 = v13;
    [v13 currentTime];

    v15 = sub_1C6017150();
    v17 = v16;
    v19 = v18;

    if (sub_1C6017200() & 1) != 0 && (sub_1C60171E0())
    {
      v46 = v17;
      v47 = v15;
      v45 = v19;
      sub_1C60162C0();
      swift_unknownObjectRetain();
      v20 = sub_1C60162B0();
      v21 = sub_1C6016F30();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v20, v21))
      {
        v44 = v21;
        v22 = OUTLINED_FUNCTION_21();
        v43 = OUTLINED_FUNCTION_21();
        v57 = v43;
        *v22 = 134349570;
        sub_1C6017220();
        *(v22 + 4) = v23;
        *(v22 + 12) = 2050;
        sub_1C6017220();
        *(v22 + 14) = v24;
        v48 = v22;
        *(v22 + 22) = 2082;
        v25 = OUTLINED_FUNCTION_90_1();
        if (v25)
        {
          v26 = v25;
          v27 = sub_1C5DBCDF8();
          v29 = v28;
        }

        else
        {
          v29 = 0xEB000000006D6574;
          v27 = 0x49746E6572727563;
        }

        v31 = sub_1C5C6AB10(v27, v29, &v57);

        *(v48 + 24) = v31;
        _os_log_impl(&dword_1C5C61000, v20, v44, "[ALC] - Attempting to seek from targetTime: %{public}f to sourceTime: %{public}f on %{public}s", v48, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v43);
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_4();
      }

      v32 = OUTLINED_FUNCTION_32();
      v33(v32);
      v34 = OUTLINED_FUNCTION_90_1();
      if (v34)
      {
        v35 = v34;
        v36 = *MEMORY[0x1E6960CC0];
        v37 = *(MEMORY[0x1E6960CC0] + 8);
        v38 = *(MEMORY[0x1E6960CC0] + 12);
        v39 = *(MEMORY[0x1E6960CC0] + 16);
        OUTLINED_FUNCTION_7_3();
        v40 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v41 = swift_allocObject();
        *(v41 + 16) = v0;
        *(v41 + 24) = v40;
        v61 = sub_1C5D5D0D0;
        v62 = v41;
        v57 = MEMORY[0x1E69E9820];
        v58 = 1107296256;
        v59 = sub_1C5DBCF1C;
        v60 = &block_descriptor_133;
        v42 = _Block_copy(&v57);

        v56 = v39;
        v57 = v47;
        v58 = v46;
        v59 = v45;
        v52 = v39;
        v53 = v36;
        v54 = v37;
        v55 = v38;
        v49 = v36;
        v50 = v37;
        v51 = v38;
        [v35 seekToTime:&v57 toleranceBefore:&v53 toleranceAfter:&v49 completionHandler:v42];
        _Block_release(v42);
      }
    }

    goto LABEL_4;
  }

  OUTLINED_FUNCTION_237();
}

uint64_t get_enum_tag_for_layout_string_17MediaPlaybackCore27AssetSlidingQueueControllerC03SetF5StateO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1C5D59130(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5D59170(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C5D591B4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void sub_1C5D591DC()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  sub_1C5D5D630();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60379E0;
  OUTLINED_FUNCTION_89();
  *(v3 + 32) = 0xD00000000000001ALL;
  *(v3 + 40) = v4;
  v5 = *(v0 + 32);
  if (v5)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = 0;
    v30 = 0;
    v31 = 0;
  }

  v29 = v5;
  v32 = ObjectType;
  v25 = 0;
  v26 = 0xE000000000000000;
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_10_0(&v29);
  sub_1C5CBCF4C(&v29);
  v7 = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  OUTLINED_FUNCTION_89();
  *(inited + 72) = v7;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = v8;
  v9 = *(v1 + 40);
  v10 = sub_1C5DDBE58();
  v11 = v10;
  if (v10)
  {
    v10 = swift_getObjectType();
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v29 = v11;
  v32 = v10;
  v25 = 0;
  v26 = 0xE000000000000000;
  OUTLINED_FUNCTION_10_0(&v29);
  sub_1C5CBCF4C(&v29);
  *(inited + 96) = 0;
  *(inited + 104) = 0xE000000000000000;
  OUTLINED_FUNCTION_89();
  *(inited + 120) = v7;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = v12;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_31();
  sub_1C5C84D90(v1 + 144, &v29);
  if (v32)
  {
    OUTLINED_FUNCTION_17_9(&v29, v32);
    sub_1C5D3F6F8();
    v14 = v13;
    v16 = v15;
    swift_unknownObjectRelease();

    sub_1C5D5D6F0();
    *(inited + 144) = v14;
    *(inited + 168) = v17;
    *(inited + 176) = 0x7449726579616C50;
    *(inited + 184) = 0xEB00000000736D65;
    sub_1C5DDD4B0();
    OUTLINED_FUNCTION_107();
    sub_1C5D5D758();
    *(inited + 192) = v9;
    *(inited + 216) = v18;
    *(inited + 224) = 0x6E6F436575657551;
    *(inited + 232) = 0xEF72656C6C6F7274;
    v19 = *(v1 + 56);
    v28 = swift_getObjectType();
    v25 = v19;
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_10_0(&v25);
    sub_1C5CBCF4C(&v25);
    *(inited + 240) = 0;
    *(inited + 248) = 0xE000000000000000;
    *(inited + 264) = v7;
    *(inited + 272) = 0x65746167656C6544;
    *(inited + 280) = 0xE800000000000000;
    Strong = swift_unknownObjectWeakLoadStrong();
    v21 = Strong;
    if (Strong)
    {
      Strong = swift_getObjectType();
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    v28 = Strong;
    v25 = v21;
    OUTLINED_FUNCTION_10_0(&v25);
    sub_1C5CBCF4C(&v25);
    *(inited + 288) = 0;
    *(inited + 296) = 0xE000000000000000;
    OUTLINED_FUNCTION_89();
    *(inited + 312) = v7;
    *(inited + 320) = 0xD000000000000010;
    *(inited + 328) = v22;
    v23 = sub_1C5DDD6EC();
    sub_1C5D5D7C0(0, &qword_1EC1A9490);
    *(inited + 360) = v24;
    *(inited + 336) = v23;
    __swift_destroy_boxed_opaque_existential_0(&v29);
    sub_1C6016880();
    OUTLINED_FUNCTION_237();
  }

  else
  {
    __break(1u);
  }
}

id sub_1C5D594F4(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = *(v3 + 56);
  v6 = sub_1C6016900();
  v11[0] = 0;
  v7 = [v5 queueItemForContentItemID:v6 allowReuse:a3 & 1 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_1C6014D40();

    swift_willThrow();
  }

  return v7;
}

uint64_t sub_1C5D595C8()
{
  OUTLINED_FUNCTION_248();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_1C6016C10();
  v1[7] = OUTLINED_FUNCTION_66_6(v4);
  OUTLINED_FUNCTION_73();
  v5 = sub_1C6016BA0();
  OUTLINED_FUNCTION_47_2(v5, v6);

  return MEMORY[0x1EEE6DFA0](sub_1C5D5964C, v8, v7);
}

uint64_t sub_1C5D5964C()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = sub_1C6016C00();
  v0[10] = v4;
  v5 = swift_task_alloc();
  v0[11] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1C5D59764;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 2, v4, v7, 0xD000000000000013, 0x80000001C604D220, sub_1C5D5D8F4, v5, &type metadata for ErrorResolution);
}

uint64_t sub_1C5D59764()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_101();
  *v3 = v2;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1C5D598BC, v5, v4);
}

uint64_t sub_1C5D598BC()
{
  OUTLINED_FUNCTION_248();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1C5D5991C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v21 = a4;
  sub_1C5D5D900();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = sub_1C60166C0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C5C64D74(0, &qword_1ED7DCE50);
  *v12 = sub_1C6016FD0();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v13 = sub_1C60166F0();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v14 = *(a2 + 64);
    v15 = sub_1C6014D30();
    v16 = swift_allocObject();
    swift_weakInit();
    (*(v7 + 16))(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v6);
    v17 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    (*(v7 + 32))(v18 + v17, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    aBlock[4] = sub_1C5D5D960;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5D54350;
    aBlock[3] = &block_descriptor_215;
    v19 = _Block_copy(aBlock);

    [v14 resolveError:v15 forItem:v21 completion:v19];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C5D59C00(uint64_t a1)
{
  if (!a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_1C5DDBEF8();
    }
  }

  sub_1C5D5D900();
  return sub_1C6016BC0();
}

uint64_t sub_1C5D59CBC()
{
  OUTLINED_FUNCTION_248();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_1C6016C10();
  v1[7] = OUTLINED_FUNCTION_66_6(v4);
  OUTLINED_FUNCTION_73();
  v5 = sub_1C6016BA0();
  OUTLINED_FUNCTION_47_2(v5, v6);

  return MEMORY[0x1EEE6DFA0](sub_1C5D59D40, v8, v7);
}

uint64_t sub_1C5D59D40()
{
  v1 = *(v0 + 40);
  v8 = *(v0 + 24);
  v2 = sub_1C6016C00();
  *(v0 + 80) = v2;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v8;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  v5 = sub_1C5D2AA10(0, qword_1ED7DF160);
  *v4 = v0;
  v4[1] = sub_1C5D59E74;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 16, v2, v6, 0xD000000000000014, 0x80000001C604D260, sub_1C5D5DA70, v3, v5);
}

uint64_t sub_1C5D59E74()
{
  OUTLINED_FUNCTION_248();
  v2 = *v1;
  OUTLINED_FUNCTION_101();
  *v3 = v2;
  v2[13] = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_1C5D59FF0;
  }

  else
  {

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_1C5D59F8C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1C5D59F8C()
{
  OUTLINED_FUNCTION_248();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C5D59FF0()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

void sub_1C5D5A060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v22 = a4;
  sub_1C5D5DA7C();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C60166C0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C5C64D74(0, &qword_1ED7DCE50);
  *v14 = sub_1C6016FD0();
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v15 = sub_1C60166F0();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v16 = *(a2 + 48);
    (*(v8 + 16))(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v7);
    v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    (*(v8 + 32))(v19 + v17, v10, v7);
    *(v19 + v18) = a3;
    *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
    aBlock[4] = sub_1C5D5DBB8;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5D5A6E4;
    aBlock[3] = &block_descriptor_231;
    v20 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v16 loadAssetFor:a3 task:v22 completion:v20];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C5D5A33C(void *a1, void *a2, id a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v7 = a3;
    sub_1C5DBA7C4(a5);
    sub_1C5D5DA7C();
    sub_1C6016BB0();

    return;
  }

  if (a2)
  {
    v9 = a2;
    v10 = [a1 avPlayerItem];
    if (v10)
    {
      v11 = v10;

      if (v11 == v9)
      {
        v24 = [v9 error];
        if (v24)
        {
        }

        else if ([v9 status] != 2)
        {
          sub_1C5D5DA7C();
          swift_unknownObjectRetain();
          sub_1C6016BC0();

          return;
        }

        v25 = v9;
        v26 = [v25 error];
        sub_1C5D63784();
        v28 = v27;
        v30 = v29;
        v31 = v25;
        sub_1C5D7FA7C(v31, v26, v28, v30);

        sub_1C5D5DA7C();
        sub_1C6016BB0();

        return;
      }
    }
  }

  if (sub_1C5D4AFF0())
  {
    v12 = objc_opt_self();
    v13 = *MEMORY[0x1E69B1338];
    v14 = sub_1C6016900();
    v15 = sub_1C6016900();
    v16 = sub_1C6016900();
    sub_1C5C67580(0, &qword_1ED7DCAE8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C60311E0;
    sub_1C6017540();

    v18 = [a5 contentItemID];
    v19 = sub_1C6016940();
    v21 = v20;

    MEMORY[0x1C69534E0](v19, v21);

    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 32) = 0x49746E65746E6F63;
    *(v17 + 40) = 0xEF203A44496D6574;
    sub_1C5DC9604(v13, v14, v15, v16, 0, v17, 0, v12);
  }

  if (qword_1EC1A9680 != -1)
  {
    swift_once();
  }

  v22 = qword_1EC1BE470;
  sub_1C5D5DA7C();
  v23 = v22;
  sub_1C6016BB0();
}

uint64_t sub_1C5D5A6E4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5D5A784()
{
  OUTLINED_FUNCTION_248();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_1C6016C10();
  v1[7] = OUTLINED_FUNCTION_66_6(v3);
  OUTLINED_FUNCTION_73();
  v4 = sub_1C6016BA0();
  OUTLINED_FUNCTION_47_2(v4, v5);

  return MEMORY[0x1EEE6DFA0](sub_1C5D5A804, v7, v6);
}

uint64_t sub_1C5D5A804()
{
  v1 = MEMORY[0x1E69E7CC0];
  v0[1].i64[0] = MEMORY[0x1E69E7CC0];
  v2 = v0 + 1;
  v3 = v0[2].i64[1];
  v4 = *(v3 + 184);
  if (v4 == 1)
  {
LABEL_19:
    if (*(v1 + 16))
    {
      v27 = v0[2];
      v20 = sub_1C6016C00();
      v0[5].i64[0] = v20;
      v21 = swift_task_alloc();
      v0[5].i64[1] = v21;
      v21[1] = vextq_s8(v27, v27, 8uLL);
      v21[2].i64[0] = v2;
      v22 = swift_task_alloc();
      v0[6].i64[0] = v22;
      *v22 = v0;
      v22[1] = sub_1C5D5AB14;
      v23 = MEMORY[0x1E69E85E0];
      v24 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DE38](v22, v20, v23, 0xD000000000000015, 0x80000001C604D240, sub_1C5D5D9D0, v21, v24);
    }

    else
    {

      OUTLINED_FUNCTION_172();

      return v25();
    }
  }

  if (!v4)
  {
    v5 = [v0[2].i64[0] contentItemID];
    v6 = sub_1C6016940();
    v8 = v7;

    v9 = *(v3 + 32);
    if (v9)
    {
      v10 = [v9 contentItemID];
      v11 = sub_1C6016940();
      v13 = v12;

      if (v6 == v11 && v8 == v13)
      {

LABEL_18:
        v1 = MEMORY[0x1E69E7CC0];
        goto LABEL_19;
      }

      v15 = sub_1C6017860();

      if (v15)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    sub_1C5D0DB30();
    v1 = v17;
    v18 = *(v17 + 16);
    if (v18 >= *(v17 + 24) >> 1)
    {
      sub_1C5D0DB30();
      v1 = v26;
    }

    *(v1 + 16) = v18 + 1;
    v19 = v1 + 16 * v18;
    *(v19 + 32) = 0x736B63617274;
    *(v19 + 40) = 0xE600000000000000;
    v2->i64[0] = v1;
    goto LABEL_19;
  }

  v0[1].i64[1] = v4;

  return sub_1C60178A0();
}

uint64_t sub_1C5D5AB14()
{
  OUTLINED_FUNCTION_248();
  v2 = *v1;
  OUTLINED_FUNCTION_101();
  *v3 = v2;
  v2[13] = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_1C5D5AC90;
  }

  else
  {

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_1C5D5AC2C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}