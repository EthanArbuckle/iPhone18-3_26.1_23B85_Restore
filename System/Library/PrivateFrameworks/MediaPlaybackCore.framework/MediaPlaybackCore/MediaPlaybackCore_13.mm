void sub_1C5D97590()
{
  OUTLINED_FUNCTION_3_34();
  v5 = v2 + 64;
  OUTLINED_FUNCTION_0_55();
  if (!v6)
  {
    v11 = 0;
LABEL_16:
    *v0 = v1;
    v0[1] = v5;
    v0[2] = ~v3;
    v0[3] = v11;
    v0[4] = v4;
    return;
  }

  v8 = v7;
  if (!v7)
  {
    v11 = 0;
    goto LABEL_16;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = v6;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (!v4)
      {
        while (1)
        {
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v13 >= ((63 - v3) >> 6))
          {
            v4 = 0;
            goto LABEL_16;
          }

          v4 = *(v5 + 8 * v13);
          ++v11;
          if (v4)
          {
            v11 = v13;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      v14 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      sub_1C5C653C8(*(v1 + 56) + ((v11 << 11) | (32 * v14)), v15);
      sub_1C5C70758(v15, v16);
      sub_1C5C70758(v16, v9);
      v9 += 2;
      v10 = v12;
      if (v12 == v8)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1C5D976C8()
{
  OUTLINED_FUNCTION_3_34();
  v4 = v1 + 56;
  OUTLINED_FUNCTION_0_55();
  if (!v6)
  {
    v8 = 0;
LABEL_17:
    OUTLINED_FUNCTION_4_36(v8);
    return;
  }

  v7 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_34();
    while (v9 < v7)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (1)
        {
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v11 >= v3)
          {
            goto LABEL_17;
          }

          v2 = *(v4 + 8 * v11);
          ++v8;
          if (v2)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v11 = v8;
LABEL_12:
      OUTLINED_FUNCTION_1_46();
      if (v12)
      {

        v8 = v11;
        goto LABEL_17;
      }

      v0 += 16;

      v9 = v10;
      v8 = v11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_1C5D977B8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = (*(a4 + 48) + 24 * (v12 | (v9 << 6)));
      v14 = v13[2];
      v15 = v13[1];
      *a2 = *v13;
      a2[1] = v15;
      a2[2] = v14;
      a2 += 3;
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C5D97920()
{
  if (!qword_1EC1AAE38)
  {
    sub_1C5D11EE4();
    v0 = sub_1C60177E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AAE38);
    }
  }
}

__n128 sub_1C5D97978@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 80);
  *a1 = *(v1 + 64);
  *(a1 + 16) = v3;
  result = *(v1 + 96);
  *(a1 + 32) = result;
  *(a1 + 48) = v2 & 1 | 0x40;
  return result;
}

uint64_t sub_1C5D9799C()
{
  if (*(v0 + 297) & 1) != 0 || (*(v0 + 241))
  {
    return qword_1C6040680[*(v0 + 184)];
  }

  v2 = *(v0 + 248);
  v3 = sub_1C5D9A58C();
  if (v4)
  {
    return *&v3;
  }

  if (sub_1C5D9A6FC())
  {
    return 4;
  }

  return v2;
}

id sub_1C5D97A10(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  *(v7 + 168) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 248) = 0u;
  *(v7 + 176) = 0;
  *(v7 + 184) = 0;
  *(v7 + 192) = 0u;
  *(v7 + 208) = 0u;
  *(v7 + 224) = 0u;
  *(v7 + 240) = 256;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0u;
  *(v7 + 296) = 256;
  result = [a1 isAssetLoaded];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = [a2 isAssetLoaded];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(v7 + 32) = a1;
  result = [swift_unknownObjectRetain() avPlayerItem];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v7 + 40) = result;
  *(v7 + 48) = a2;
  result = [swift_unknownObjectRetain() avPlayerItem];
  if (result)
  {
    *(v7 + 56) = result;
    v14 = *(a3 + 16);
    *(v7 + 64) = *a3;
    *(v7 + 80) = v14;
    *(v7 + 96) = *(a3 + 32);
    *(v7 + 112) = *(a3 + 48);
    sub_1C5D7E40C(a4, v7 + 120);
    *(v7 + 168) = a6;
    swift_unknownObjectWeakAssign();
    v15 = *(v7 + 40);
    v16 = [v15 description];
    v17 = sub_1C6016940();
    v19 = v18;

    v25 = v17;
    v26 = v19;
    MEMORY[0x1C69534E0](0x209D8A80F420, 0xA600000000000000);
    v20 = *(v7 + 56);
    v21 = [v20 description];
    v22 = sub_1C6016940();
    v24 = v23;

    MEMORY[0x1C69534E0](v22, v24);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_1C5D7E4D8(a4);
    *(v7 + 16) = v25;
    *(v7 + 24) = v26;
    *(v7 + 176) = *a3;
    return v7;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1C5D97C58()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[335];
  *(v1 + 184) = 0;
  v2 = sub_1C6016CA0();
  sub_1C5D7E40C(v1 + 120, (v0 + 82));
  v3 = v0[85];
  if (v2)
  {
    if (v3)
    {
      v4 = v0[335];
      __swift_project_boxed_opaque_existential_0(v0 + 82, v3);
      v5 = *(v4 + 24);
      OUTLINED_FUNCTION_9_24();
      v0[2] = v6;
      v0[3] = v5;
      v0[4] = 0xD000000000000027;
      v0[5] = v7;
      sub_1C5D5CEC8((v0 + 2));
      memcpy(v0 + 223, v0 + 2, 0xD9uLL);

      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0((v0 + 82));
    }

    else
    {
      sub_1C5D7E4D8((v0 + 82));
    }

    sub_1C5D9AFB4();
    OUTLINED_FUNCTION_10_1();
    swift_allocError();
    OUTLINED_FUNCTION_19_21(v12, 2);
    OUTLINED_FUNCTION_172();

    return v13();
  }

  else
  {
    if (v3)
    {
      v8 = v0[335];
      __swift_project_boxed_opaque_existential_0(v0 + 82, v3);
      v9 = *(v8 + 24);
      OUTLINED_FUNCTION_9_24();
      v0[2] = v10;
      v0[3] = v9;
      v0[4] = 0xD00000000000001ELL;
      v0[5] = v11;
      sub_1C5D5CEC8((v0 + 2));
      memcpy(v0 + 167, v0 + 2, 0xD9uLL);

      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0((v0 + 82));
    }

    else
    {
      sub_1C5D7E4D8((v0 + 82));
    }

    sub_1C5D995F0();

    swift_asyncLet_begin();

    swift_asyncLet_begin();

    return MEMORY[0x1EEE6DEC0](v0 + 2, v15, sub_1C5D97EA0, v0 + 162);
  }
}

uint64_t sub_1C5D97EA0(uint64_t a1, uint64_t a2)
{
  *(v3 + 2688) = v2;
  if (v2)
  {
    return OUTLINED_FUNCTION_2_35(a1, a2, sub_1C5D98B48);
  }

  else
  {
    return MEMORY[0x1EEE6DEC0](v3 + 656, a2, sub_1C5D97ED8, v3 + 1296);
  }
}

uint64_t sub_1C5D97ED8(uint64_t a1, uint64_t a2)
{
  *(v3 + 2696) = v2;
  if (v2)
  {
    return OUTLINED_FUNCTION_2_35(a1, a2, sub_1C5D98BDC);
  }

  else
  {
    return OUTLINED_FUNCTION_0_2(sub_1C5D97F08);
  }
}

uint64_t sub_1C5D97F08()
{
  v1 = sub_1C6016CA0();
  v2 = v0[335];
  if (v1)
  {
    sub_1C5D7E40C(v2 + 120, (v0 + 162));
    v3 = v0[165];
    if (v3)
    {
      v4 = v0[335];
      __swift_project_boxed_opaque_existential_0(v0 + 162, v3);
      v6 = *(v4 + 16);
      v5 = *(v4 + 24);

      sub_1C6017540();

      MEMORY[0x1C69534E0](v6, v5);
      v0[195] = v6;
      v0[196] = v5;
      v0[197] = 0xD000000000000027;
      v0[198] = 0x80000001C6050120;
      sub_1C5D5CEC8((v0 + 195));
      memcpy(v0 + 307, v0 + 195, 0xD9uLL);
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0((v0 + 162));
    }

    else
    {
      sub_1C5D7E4D8((v0 + 162));
    }

    sub_1C5D9AFB4();
    OUTLINED_FUNCTION_10_1();
    v0[338] = swift_allocError();
    OUTLINED_FUNCTION_19_21(v24, 2);
    v26 = sub_1C5D98378;
    goto LABEL_18;
  }

  v7 = *(v2 + 40);
  v0[339] = v7;
  [v7 forwardPlaybackEndTime];
  if ((sub_1C60171C0() & 1) == 0)
  {
    sub_1C5D7E40C(v0[335] + 120, (v0 + 162));
    v12 = v0[165];
    if (v12)
    {
      v13 = v0[335];
      __swift_project_boxed_opaque_existential_0(v0 + 162, v12);
      v15 = *(v13 + 16);
      v14 = *(v13 + 24);

      sub_1C6017540();
      MEMORY[0x1C69534E0](0xD000000000000023, 0x80000001C60500A0);
      [v7 forwardPlaybackEndTime];
      sub_1C6017220();
      v16 = OUTLINED_FUNCTION_3_35();
      sub_1C5C72B9C(v16, v17, v18, v19, v20);
      OUTLINED_FUNCTION_8_26();
      v21 = swift_allocObject();
      v22 = MEMORY[0x1E69E63B0];
      *(v21 + 16) = xmmword_1C60311E0;
      OUTLINED_FUNCTION_7_29(v21, v22);
      v23 = sub_1C6016960();
      MEMORY[0x1C69534E0](v23);

      MEMORY[0x1C69534E0](0xD00000000000001CLL, 0x80000001C60500D0);
      v0[195] = v15;
      v0[196] = v14;
      v0[197] = 0;
      v0[198] = 0xE000000000000000;
      sub_1C5D5CEC8((v0 + 195));
      memcpy(v0 + 279, v0 + 195, 0xD9uLL);
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0((v0 + 162));
    }

    else
    {
      sub_1C5D7E4D8((v0 + 162));
    }

    sub_1C5D9AFB4();
    OUTLINED_FUNCTION_10_1();
    v0[354] = swift_allocError();
    OUTLINED_FUNCTION_19_21(v27, 4);
    v26 = sub_1C5D98AB4;
    goto LABEL_18;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    if ((sub_1C5DE3F2C() & 1) == 0)
    {
      *(v0[335] + 184) = 1;
      sub_1C5D9AFB4();
      OUTLINED_FUNCTION_10_1();
      v0[340] = swift_allocError();
      OUTLINED_FUNCTION_19_21(v28, 3);
      swift_unknownObjectRelease();
      v26 = sub_1C5D9840C;
LABEL_18:

      return MEMORY[0x1EEE6DEB0](v0 + 82, v25, v26, v0 + 162);
    }

    swift_unknownObjectRelease();
  }

  [v7 currentTime];
  sub_1C6017220();
  v0[341] = v8;
  v0[342] = sub_1C6016C10();
  v0[343] = sub_1C6016C00();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_117();
  v9 = OUTLINED_FUNCTION_6_27();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C5D983B4()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D98448()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D984A0()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 2712);

  *(v0 + 2752) = [v1 asset];
  v2 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C5D9851C()
{
  v1 = v0[344];
  v2 = v0[335];
  [v1 duration];

  sub_1C6017220();
  v0[345] = v3;
  v0[346] = *(v2 + 64);
  v0[347] = sub_1C6016C00();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_117();
  v4 = OUTLINED_FUNCTION_6_27();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5D985F0()
{
  OUTLINED_FUNCTION_13();
  v8 = v0;
  v1 = *(v0 + 2712);

  [v1 overlappedPlaybackSafetyMargin];
  *(v0 + 2784) = v6;
  *(v0 + 2800) = v7;
  v2 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C5D98674()
{
  v1 = *(v0 + 2768);
  v2 = *(v0 + 2760);
  v3 = *(v0 + 2728);
  sub_1C6017220();
  if (v3 >= v2 - v4 - v1)
  {
    sub_1C5D7E40C(*(v0 + 2680) + 120, v0 + 1296);
    v8 = *(v0 + 1320);
    if (v8)
    {
      v9 = *(v0 + 2680);
      __swift_project_boxed_opaque_existential_0((v0 + 1296), v8);
      v10 = *(v9 + 24);
      OUTLINED_FUNCTION_9_24();
      *(v0 + 1560) = v11;
      *(v0 + 1568) = v10;
      *(v0 + 1576) = 0xD000000000000024;
      *(v0 + 1584) = v12;
      sub_1C5D5CEC8(v0 + 1560);
      memcpy((v0 + 2008), (v0 + 1560), 0xD9uLL);

      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v0 + 1296);
    }

    else
    {
      sub_1C5D7E4D8(v0 + 1296);
    }

    *(*(v0 + 2680) + 184) = 2;
    sub_1C5D9AFB4();
    OUTLINED_FUNCTION_10_1();
    *(v0 + 2824) = swift_allocError();
    OUTLINED_FUNCTION_19_21(v13, 1);

    return MEMORY[0x1EEE6DEB0](v0 + 656, v14, sub_1C5D98A20, v0 + 1296);
  }

  else
  {
    *(v0 + 2808) = sub_1C6016C00();
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_117();
    v5 = OUTLINED_FUNCTION_6_27();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }
}

uint64_t sub_1C5D9883C()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[337];
  v2 = v0[335];

  sub_1C5D98EB8(v2);
  v0[352] = v1;
  if (v1)
  {
    v3 = sub_1C5D98978;
  }

  else
  {
    v3 = sub_1C5D988D0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C5D98920()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D989C8()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D98A5C()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D98AF0()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D98B84()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D98C18()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5D98C90()
{
  OUTLINED_FUNCTION_248();
  v1 = *(*(v0 + 16) + 40);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1C5D9B3BC;

  return sub_1C5D99B3C(v1);
}

uint64_t sub_1C5D98D44()
{
  OUTLINED_FUNCTION_248();
  v1 = *(*(v0 + 16) + 56);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1C5D98DD8;

  return sub_1C5D99B3C(v1);
}

uint64_t sub_1C5D98DD8()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  OUTLINED_FUNCTION_172();

  return v3();
}

uint64_t sub_1C5D98EB8(uint64_t a1)
{
  sub_1C5D7E40C(a1 + 120, v17);
  if (v18)
  {
    __swift_project_boxed_opaque_existential_0(v17, v18);
    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    __src[0] = 0;
    __src[1] = 0xE000000000000000;

    sub_1C6017540();

    v5 = [objc_opt_self() isMainThread];
    v6 = v5 == 0;
    if (v5)
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (v6)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    MEMORY[0x1C69534E0](v7, v8);

    MEMORY[0x1C69534E0](41, 0xE100000000000000);
    __src[0] = v4;
    __src[1] = v3;
    __src[2] = 0xD00000000000002BLL;
    __src[3] = 0x80000001C60501E0;
    sub_1C5D5CEC8(__src);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    sub_1C5D7E4D8(v17);
  }

  result = sub_1C5D99F34(*(a1 + 40), 1);
  if (!v1)
  {
    sub_1C5D99F34(*(a1 + 56), 0);
    sub_1C5D7E40C(a1 + 120, v17);
    if (v18)
    {
      __swift_project_boxed_opaque_existential_0(v17, v18);
      v11 = *(a1 + 16);
      v10 = *(a1 + 24);

      v12 = sub_1C5D991B0();
      __src[0] = v11;
      __src[1] = v10;
      __src[2] = v12;
      __src[3] = v13;
      sub_1C5D5CEC8(__src);
      memcpy(v20, __src, sizeof(v20));
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v17);
    }

    else
    {
      sub_1C5D7E4D8(v17);
    }

    result = sub_1C6016CA0();
    if (result)
    {
      sub_1C5D7E40C(a1 + 120, v17);
      if (v18)
      {
        __swift_project_boxed_opaque_existential_0(v17, v18);
        v14 = *(a1 + 24);
        __src[0] = *(a1 + 16);
        __src[1] = v14;
        __src[2] = 0xD00000000000003FLL;
        __src[3] = 0x80000001C60501A0;
        sub_1C5D5CEC8(__src);
        memcpy(v19, __src, sizeof(v19));

        sub_1C5DBBF0C();

        __swift_destroy_boxed_opaque_existential_0(v17);
      }

      else
      {
        sub_1C5D7E4D8(v17);
      }

      sub_1C5D99694();
      sub_1C5D9AFB4();
      swift_allocError();
      *v15 = 2;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1C5D991B0()
{
  v1 = v0;
  if (*(v0 + 241) & 1) != 0 || (*(v0 + 297))
  {
    OUTLINED_FUNCTION_14_24();
    sub_1C6017540();
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);

    v90 = v3;
    v91 = v2;
    MEMORY[0x1C69534E0](0xD000000000000017, 0x80000001C604FF30);
  }

  else
  {
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);
    time = *(v0 + 232);
    HIDWORD(v75) = *(v0 + 240);
    HIDWORD(v83) = *(v0 + 296);
    v86 = *(v0 + 288);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    OUTLINED_FUNCTION_14_24();
    sub_1C6017540();
    v93 = v90;
    v94 = v91;
    v8 = *(v0 + 40);
    v9 = sub_1C5C64D74(0, &qword_1ED7DCEA8);
    v92 = v9;
    v90 = v8;
    v10 = v8;
    OUTLINED_FUNCTION_18_20(v10, v11, v12, v13, v14, v15, v16);
    sub_1C5CBCF4C(&v90);
    v17 = OUTLINED_FUNCTION_25_13();
    MEMORY[0x1C69534E0](v17, 0xEF285B203A74756FLL);
    v18 = OUTLINED_FUNCTION_3_35();
    sub_1C5C72B9C(v18, v19, v20, v21, v22);
    OUTLINED_FUNCTION_8_26();
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E63B0];
    *(v23 + 16) = xmmword_1C60311E0;
    v25 = MEMORY[0x1E69E6438];
    *(v23 + 56) = v24;
    *(v23 + 64) = v25;
    *(v23 + 32) = v5;
    v26 = sub_1C6016960();
    MEMORY[0x1C69534E0](v26);

    OUTLINED_FUNCTION_11_19();
    sub_1C6016D30();
    OUTLINED_FUNCTION_27_14();
    OUTLINED_FUNCTION_8_26();
    v27 = swift_allocObject();
    OUTLINED_FUNCTION_13_21(v27, v28, v29, v30, v31, v32, v33, v34, v75, time, v83, v86, v35);
    v36[7] = v24;
    v36[8] = v25;
    v36[4] = v4;
    v37 = sub_1C6016960();
    MEMORY[0x1C69534E0](v37);

    OUTLINED_FUNCTION_11_19();
    sub_1C6016D30();
    OUTLINED_FUNCTION_26_13();
    v95.is_nil = timea;
    DefaultStringInterpolation.appendInterpolation(time:)(v95);
    v38 = v94;
    timeb = v93;
    OUTLINED_FUNCTION_14_24();
    sub_1C6017540();
    v93 = v90;
    v94 = v91;
    v39 = v1[7];
    v92 = v9;
    v90 = v39;
    v40 = v39;
    OUTLINED_FUNCTION_18_20(v40, v41, v42, v43, v44, v45, v46);
    sub_1C5CBCF4C(&v90);
    v47 = OUTLINED_FUNCTION_25_13();
    MEMORY[0x1C69534E0](v47);
    OUTLINED_FUNCTION_8_26();
    v48 = swift_allocObject();
    OUTLINED_FUNCTION_13_21(v48, v49, v50, v51, v52, v53, v54, v55, v76, timeb, v84, v87, v56);
    v57 = MEMORY[0x1E69E63B0];
    v58[7] = MEMORY[0x1E69E63B0];
    v58[8] = v25;
    v58[4] = v7;
    v59 = sub_1C6016960();
    MEMORY[0x1C69534E0](v59);

    OUTLINED_FUNCTION_11_19();
    sub_1C6016D30();
    OUTLINED_FUNCTION_27_14();
    OUTLINED_FUNCTION_8_26();
    v60 = swift_allocObject();
    OUTLINED_FUNCTION_13_21(v60, v61, v62, v63, v64, v65, v66, v67, v77, timec, v85, v88, v68);
    v69[7] = v57;
    v69[8] = v25;
    v69[4] = v6;
    v70 = sub_1C6016960();
    MEMORY[0x1C69534E0](v70);

    OUTLINED_FUNCTION_11_19();
    sub_1C6016D30();
    OUTLINED_FUNCTION_26_13();
    v96.is_nil = v89;
    DefaultStringInterpolation.appendInterpolation(time:)(v96);
    v72 = v93;
    v71 = v94;
    v73 = v1[3];
    v90 = v1[2];
    v91 = v73;

    MEMORY[0x1C69534E0](10, 0xE100000000000000);
    OUTLINED_FUNCTION_17_17();
    MEMORY[0x1C69534E0](timed, v38);

    OUTLINED_FUNCTION_17_17();
    MEMORY[0x1C69534E0](10, 0xE100000000000000);

    OUTLINED_FUNCTION_17_17();
    MEMORY[0x1C69534E0](v72, v71);
  }

  return v90;
}

id sub_1C5D995F0()
{
  v1 = *(v0 + 40);
  sub_1C5DABC1C();
  sub_1C5E10700();
  v3 = v2;

  sub_1C5D9B0F0(v3, v1);
  v4 = *(v0 + 56);
  sub_1C5DABC1C();
  sub_1C5E10700();
  v6 = v5;

  sub_1C5D9B0F0(v6, v4);
  [v1 setAudioMix_];

  return [v4 setAudioMix_];
}

uint64_t sub_1C5D99694()
{
  sub_1C5D7E40C(v0 + 120, v17);
  if (v18)
  {
    __swift_project_boxed_opaque_existential_0(v17, v18);
    v1 = *(v0 + 24);
    OUTLINED_FUNCTION_9_24();
    __src[0] = v2;
    __src[1] = v1;
    __src[2] = 0xD000000000000018;
    __src[3] = v3;
    sub_1C5D5CEC8(__src);
    memcpy(__dst, __src, sizeof(__dst));

    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    sub_1C5D7E4D8(v17);
  }

  v16 = 1;
  *(v0 + 248) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 256;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 256;
  v4 = *(v0 + 40);
  sub_1C5D9A520(v4);
  sub_1C5D9A520(*(v0 + 56));
  [v4 overlappedPlaybackEndTime];
  v5 = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 8);
  v7 = *(MEMORY[0x1E6960C70] + 12);
  v8 = *(MEMORY[0x1E6960C70] + 16);
  result = sub_1C60171E0();
  if (result)
  {
    sub_1C5D7E40C(v0 + 120, v14);
    if (v15)
    {
      __swift_project_boxed_opaque_existential_0(v14, v15);
      v11 = *(v0 + 16);
      v10 = *(v0 + 24);
      __src[0] = 0;
      __src[1] = 0xE000000000000000;

      sub_1C6017540();
      MEMORY[0x1C69534E0](0xD00000000000002ALL, 0x80000001C6050030);
      v12 = sub_1C5DBCDF8();
      MEMORY[0x1C69534E0](v12);

      MEMORY[0x1C69534E0](0xD000000000000018, 0x80000001C6050060);
      v13[0] = v11;
      v13[1] = v10;
      v13[2] = __src[0];
      v13[3] = __src[1];
      sub_1C5D5CEC8(v13);
      memcpy(__src, v13, 0xD9uLL);
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v14);
    }

    else
    {
      sub_1C5D7E4D8(v14);
    }

    v13[0] = v5;
    v13[1] = __PAIR64__(v7, v6);
    v13[2] = v8;
    return [v4 setOverlappedPlaybackEndTime_];
  }

  return result;
}

uint64_t sub_1C5D99908(uint64_t a1, double a2)
{
  if (*(v2 + 32) != a1)
  {
    sub_1C5D7E40C(v2 + 120, v11);
    if (v12)
    {
      __swift_project_boxed_opaque_existential_0(v11, v12);
      v3 = *(v2 + 24);
      OUTLINED_FUNCTION_9_24();
      __src[0] = v5;
      __src[1] = v3;
      v6 = 0xD00000000000002ALL;
LABEL_4:
      __src[2] = v6;
      __src[3] = v4;
      sub_1C5D5CEC8(__src);
      memcpy(__dst, __src, sizeof(__dst));

      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v11);
      return 1;
    }

    goto LABEL_11;
  }

  if (*(v2 + 241))
  {
    return 0;
  }

  result = 0;
  if ((*(v2 + 240) & 1) == 0 && *(v2 + 232) < a2 + 0.1)
  {
    sub_1C5D7E40C(v2 + 120, v11);
    if (v12)
    {
      __swift_project_boxed_opaque_existential_0(v11, v12);
      v8 = *(v2 + 24);
      OUTLINED_FUNCTION_9_24();
      __src[0] = v9;
      __src[1] = v8;
      v6 = 0xD000000000000038;
      goto LABEL_4;
    }

LABEL_11:
    sub_1C5D7E4D8(v11);
    return 1;
  }

  return result;
}

double *sub_1C5D99A54(double a1)
{
  type metadata accessor for OverlappingTransitionTimeImpl();
  swift_allocObject();
  v3 = sub_1C5DAFD74();
  v5 = v4;
  if (*(v1 + 241))
  {
    [*(v1 + 40) duration];
    sub_1C6017220();
    v7 = v6;
  }

  else
  {
    v7 = *(v1 + 200);
  }

  sub_1C5C64D74(0, &qword_1ED7DCC30);
  v8 = sub_1C60172D0();
  v9 = a1 - v7;
  if (a1 - v7 < 0.0)
  {
    v9 = 0.0;
  }

  v10 = v7 + a1;
  if (v8)
  {
    v10 = a1;
  }

  v5[2] = v10;
  v5[3] = v10;
  if ((v8 & 1) == 0)
  {
    v9 = a1;
  }

  v5[4] = v9;
  v5[5] = v9;
  return v5;
}

uint64_t sub_1C5D99B54()
{
  OUTLINED_FUNCTION_248();
  sub_1C6016C10();
  *(v0 + 32) = sub_1C6016C00();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_117();
  v1 = OUTLINED_FUNCTION_6_27();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C5D99BD0()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 24);

  *(v0 + 40) = [v1 asset];
  v2 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C5D99C48()
{
  OUTLINED_FUNCTION_13();
  sub_1C5D9B070(0, &qword_1EC1AB6C8, sub_1C5D9B008);
  v1 = sub_1C6015270();
  v0[6] = v1;
  sub_1C5D9B070(0, &qword_1EC1AAC18, type metadata accessor for CMTime);
  v2 = sub_1C6015280();
  v0[7] = v2;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1C5D99D78;

  return MEMORY[0x1EEE68148](v0 + 2, v0 + 10, v0 + 10, v1, v2, v0 + 10, 0, 0);
}

uint64_t sub_1C5D99D78()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  v4 = *(v2 + 40);
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    v7 = sub_1C5D99F10;
  }

  else
  {

    v7 = sub_1C5D99EEC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

id sub_1C5D99F34(void *a1, char a2)
{
  v5 = [a1 asset];
  [v5 duration];

  sub_1C6017220();
  if (*(v2 + 64) >= v6)
  {
    sub_1C5D7E40C(v2 + 120, &v34);
    if (v38)
    {
      __swift_project_boxed_opaque_existential_0(&v34, v38);
      v13 = *(v2 + 16);
      v12 = *(v2 + 24);
      *&v33[0] = 0;
      *(&v33[0] + 1) = 0xE000000000000000;

      sub_1C6017540();

      *&v33[0] = 0xD00000000000002DLL;
      *(&v33[0] + 1) = 0x80000001C604FF90;
      v14 = OUTLINED_FUNCTION_3_35();
      sub_1C5C72B9C(v14, v15, v16, v17, v18);
      OUTLINED_FUNCTION_8_26();
      v19 = swift_allocObject();
      v20 = MEMORY[0x1E69E63B0];
      *(v19 + 16) = xmmword_1C60311E0;
      OUTLINED_FUNCTION_7_29(v19, v20);
      v21 = sub_1C6016960();
      MEMORY[0x1C69534E0](v21);

      v22 = v33[0];
      *&v33[0] = v13;
      *(&v33[0] + 1) = v12;
      v33[1] = v22;
      sub_1C5D5CEC8(v33);
      memcpy(__dst, v33, sizeof(__dst));
      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(&v34);
    }

    else
    {
      sub_1C5D7E4D8(&v34);
    }

    sub_1C5D9AFB4();
    OUTLINED_FUNCTION_10_1();
    swift_allocError();
    *v32 = 0;
    return swift_willThrow();
  }

  else
  {
    if (a2)
    {
      sub_1C5D9A2C4(a1, &v44, v6, *(v2 + 64));
      v8 = v45;
      v33[0] = v44;
      v7 = v44;
      v33[1] = v45;
      v9 = v47;
      *&v33[2] = v46;
      *(v2 + 224) = v46;
      *(v2 + 232) = v9;
      v10 = v9;
      v11 = v48;
      LOBYTE(v34) = 0;
      *(v2 + 192) = v7;
      *(v2 + 208) = v8;
      *(v2 + 240) = v11;
    }

    else
    {
      sub_1C5D9A23C(a1, &v39, v6, *(v2 + 64));
      v23 = v39;
      v24 = v40;
      v33[0] = v39;
      v33[1] = v40;
      v25 = v42;
      *&v33[2] = v41;
      *(v2 + 280) = v41;
      *(v2 + 288) = v25;
      v10 = v25;
      v11 = v43;
      LOBYTE(v34) = 0;
      *(v2 + 248) = v23;
      *(v2 + 264) = v24;
      *(v2 + 296) = v11;
    }

    v49[0] = v33[0];
    v49[1] = v33[1];
    v50 = *&v33[2];
    v51 = v10;
    v52 = v11;
    v26 = sub_1C5D9A350(v49);
    [a1 setAudioMix_];

    if (v11)
    {
      v27 = *MEMORY[0x1E6960C70];
      LODWORD(v28) = *(MEMORY[0x1E6960C70] + 8);
      LODWORD(v29) = *(MEMORY[0x1E6960C70] + 12);
      v30 = *(MEMORY[0x1E6960C70] + 16);
    }

    else
    {
      v27 = sub_1C5D67CC0(v10);
      v29 = HIDWORD(v28);
    }

    v34 = v27;
    v35 = v28;
    v36 = v29;
    v37 = v30;
    return [a1 setAdvanceTimeForOverlappedPlayback_];
  }
}

void sub_1C5D9A23C(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  if (a3 <= a4)
  {
    __break(1u);
  }

  else
  {
    [a1 currentTime];
    sub_1C6017220();
    if (v5 < 0.0)
    {
      v5 = 0.0;
    }

    OUTLINED_FUNCTION_16_19(v5);
    *(a2 + 24) = xmmword_1C6040410;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
  }
}

void sub_1C5D9A2C4(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = a3 - a4;
  if (a3 - a4 <= 0.0)
  {
    __break(1u);
  }

  else
  {
    [a1 currentTime];
    sub_1C6017220();
    if (v4 > v6)
    {
      v6 = v4;
    }

    OUTLINED_FUNCTION_16_19(v6);
    *(a2 + 24) = xmmword_1C6040420;
    *(a2 + 40) = v7;
    *(a2 + 48) = 0;
  }
}

id sub_1C5D9A350(uint64_t a1)
{
  v2 = [objc_opt_self() audioMixInputParametersWithTrack_];
  [v2 setTrackID_];
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5 = sub_1C5D67CC0(*(a1 + 8));
  v7 = v6;
  v9 = v8;
  v10 = HIDWORD(v6);
  v11 = sub_1C5D67CC0(*a1);
  duration.epoch = v12;
  start.value = v5;
  start.timescale = v7;
  start.flags = v10;
  start.epoch = v9;
  duration.value = v11;
  duration.timescale = v13;
  duration.flags = v14;
  CMTimeRangeMake(&v20, &start, &duration);
  [v2 setVolumeRampFromStartVolume:&v20 toEndVolume:COERCE_DOUBLE(__PAIR64__(v20.duration.flags timeRange:{v3)), COERCE_DOUBLE(__PAIR64__(HIDWORD(v20.start.epoch), v4))}];
  v15 = [objc_allocWithZone(MEMORY[0x1E6988038]) init];
  sub_1C5C674E0(0, &qword_1ED7DCAF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C60311F0;
  *(v16 + 32) = v2;
  sub_1C5C64D74(0, &qword_1EC1AB528);
  v17 = v2;
  v18 = sub_1C6016AF0();

  [v15 setInputParameters_];

  return v15;
}

id sub_1C5D9A520(void *a1)
{
  [a1 setAudioMix_];
  v2 = *(MEMORY[0x1E6960C70] + 16);
  v4[0] = *MEMORY[0x1E6960C70];
  v4[1] = *(MEMORY[0x1E6960C70] + 8);
  v4[2] = v2;
  return [a1 setAdvanceTimeForOverlappedPlayback_];
}

double sub_1C5D9A58C()
{
  v1 = 0.0;
  if ((*(v0 + 241) & 1) == 0)
  {
    v2 = v0;
    v3 = *(v0 + 208);
    v4 = [*(v0 + 40) timebase];
    if (v4)
    {
      v5 = v4;
      sub_1C6016EC0();

      if ((sub_1C5D9A664() & 1) != 0 && (sub_1C5D9A6FC() & 1) == 0)
      {
        sub_1C6017220();
        return v3 - v6;
      }

      else if ((*(v2 + 297) & 1) == 0)
      {
        if (*(v2 + 248) >= *(v2 + 176))
        {
          return *(v2 + 176);
        }

        else
        {
          return *(v2 + 248);
        }
      }
    }
  }

  return v1;
}

id sub_1C5D9A664()
{
  if (*(v0 + 241))
  {
    return 0;
  }

  v2 = *(v0 + 200);
  result = [*(v0 + 40) timebase];
  if (result)
  {
    v3 = result;
    sub_1C6016EC0();

    sub_1C6017220();
    return (v2 + -0.1 <= v4);
  }

  return result;
}

id sub_1C5D9A6FC()
{
  if (*(v0 + 297))
  {
    return 0;
  }

  v2 = *(v0 + 256);
  result = [*(v0 + 56) timebase];
  if (result)
  {
    v3 = result;
    sub_1C6016EC0();

    v4 = 0.0;
    if ((*(v0 + 297) & 1) == 0)
    {
      v4 = *(v0 + 248);
      if (v4 >= *(v0 + 176))
      {
        v4 = *(v0 + 176);
      }
    }

    v5 = v2 + v4;
    sub_1C6017220();
    return (v5 + 0.1 < v6);
  }

  return result;
}

uint64_t sub_1C5D9A7C4()
{
  v1 = v0;
  v2 = type metadata accessor for PlayerItemTransitionProvided(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5D5D630();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035CF0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001C604FF70;
  v6 = sub_1C6014A60();
  __swift_storeEnumTagSinglePayload(v4, 2, 2, v6);
  v7 = sub_1C5DAE2E8();
  sub_1C5D9AEE0(v4);
  v8 = 0;
  v9 = MEMORY[0x1E69E6530];
  *(inited + 48) = v7;
  *(inited + 72) = v9;
  *(inited + 80) = 0x6E6F697461727564;
  *(inited + 88) = 0xE800000000000000;
  v10 = *(v1 + 176);
  *(inited + 120) = MEMORY[0x1E69E63B0];
  *(inited + 128) = 0x676E696F6774756FLL;
  *(inited + 96) = v10;
  *(inited + 136) = 0xE800000000000000;
  if ((*(v1 + 241) & 1) == 0)
  {
    v11 = *(v1 + 208);
    v21 = *(v1 + 192);
    v22 = v11;
    v23 = *(v1 + 224);
    v24 = *(v1 + 240);
    v8 = sub_1C5DAE4B8();
  }

  sub_1C5D9AF3C();
  v13 = v12;
  *(inited + 168) = v12;
  if (!v8)
  {
    sub_1C5C64D74(0, &qword_1ED7DCCD0);
    v8 = sub_1C6016880();
  }

  *(inited + 144) = v8;
  *(inited + 176) = 0x676E696D6F636E69;
  *(inited + 184) = 0xE800000000000000;
  if (*(v1 + 297))
  {
    *(inited + 216) = v13;
LABEL_8:
    sub_1C5C64D74(0, &qword_1ED7DCCD0);
    v17 = sub_1C6016880();
    goto LABEL_9;
  }

  v14 = *(v1 + 248);
  v20 = *(v1 + 296);
  v15 = *(v1 + 264);
  v16 = *(v1 + 280);
  v19[14] = v14;
  v19[15] = v15;
  v19[16] = v16;
  v17 = sub_1C5DAE4B8();
  *(inited + 216) = v13;
  if (!v17)
  {
    goto LABEL_8;
  }

LABEL_9:
  *(inited + 192) = v17;
  return sub_1C6016880();
}

double sub_1C5D9AA34()
{
  result = 0.0;
  if ((*(v0 + 297) & 1) == 0)
  {
    result = *(v0 + 248);
    if (result >= *(v0 + 176))
    {
      return *(v0 + 176);
    }
  }

  return result;
}

uint64_t sub_1C5D9AA54()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1C5D7E4D8(v0 + 120);
  sub_1C5C96DF0(v0 + 160);
  return v0;
}

uint64_t sub_1C5D9AAA4()
{
  sub_1C5D9AA54();

  return MEMORY[0x1EEE6BDC0](v0, 298, 7);
}

_BYTE *storeEnumTagSinglePayload for SmartPlayerItemTransitionSetupFailureReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C5D9ABDC()
{
  result = qword_1EC1AB6B0;
  if (!qword_1EC1AB6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB6B0);
  }

  return result;
}

double sub_1C5D9AC7C()
{
  if ((*(v0 + 297) & 1) == 0)
  {
    v1 = *(v0 + 248);
    if (v1 >= *(v0 + 176))
    {
      v1 = *(v0 + 176);
    }

    return *(v0 + 256) + v1 * 0.5;
  }

  return result;
}

uint64_t sub_1C5D9ACBC()
{
  v1 = *(*v0 + 16);

  return v1;
}

double sub_1C5D9AD20@<D0>(uint64_t a1@<X8>)
{
  sub_1C5D97978(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1C5D9ADB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C5CBCD24;

  return sub_1C5D97C40();
}

uint64_t sub_1C5D9AEE0(uint64_t a1)
{
  v2 = type metadata accessor for PlayerItemTransitionProvided(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C5D9AF3C()
{
  if (!qword_1EC1AB6B8)
  {
    sub_1C5C64D74(255, &qword_1ED7DCCD0);
    v0 = sub_1C60168A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AB6B8);
    }
  }
}

unint64_t sub_1C5D9AFB4()
{
  result = qword_1EC1AB6C0;
  if (!qword_1EC1AB6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB6C0);
  }

  return result;
}

void sub_1C5D9B008()
{
  if (!qword_1EC1AB6D0)
  {
    sub_1C5C64D74(255, &qword_1EC1AB5A0);
    v0 = sub_1C6016B80();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AB6D0);
    }
  }
}

void sub_1C5D9B070(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1C5C64D74(255, &qword_1EC1AAC20);
    a3(255);
    v5 = sub_1C6015200();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C5D9B0F0(uint64_t a1, void *a2)
{
  v3 = sub_1C6016840();

  [a2 setGaplessInfo_];
}

uint64_t sub_1C5D9B170()
{
  OUTLINED_FUNCTION_248();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_21_18(v1);

  return sub_1C5D98C70(v2, v3);
}

uint64_t sub_1C5D9B1FC()
{
  OUTLINED_FUNCTION_248();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_21_18(v1);

  return sub_1C5D98D24(v2, v3);
}

_BYTE *storeEnumTagSinglePayload for CrossFadePlayerItemTransition.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C5D9B368()
{
  result = qword_1EC1AB6D8;
  if (!qword_1EC1AB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB6D8);
  }

  return result;
}

void OUTLINED_FUNCTION_16_19(double a1)
{
  v4 = a1 + v2;
  if (a1 + v2 > v3)
  {
    v4 = v3;
  }

  *v1 = v2;
  v1[1] = a1;
  v1[2] = v4;
}

uint64_t OUTLINED_FUNCTION_18_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return DefaultStringInterpolation.appendInterpolation(describing:default:)(va, 7104878, 0xE300000000000000);
}

void OUTLINED_FUNCTION_27_14()
{

  JUMPOUT(0x1C69534E0);
}

uint64_t sub_1C5D9B454(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C5D9B494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1C5D9B504@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  result = *(v1 + 56);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u64[1] = v3;
  a1[2].n128_u64[0] = 0;
  a1[2].n128_u64[1] = 0;
  a1[3].n128_u8[0] = 0;
  return result;
}

uint64_t sub_1C5D9B524()
{
  v1 = [*(v0 + 32) gaplessInfo];
  if (v1 && (v2 = v1, v3 = sub_1C6016860(), v2, sub_1C5DF59E4(v3), v5 = v4, , v5) && (sub_1C5DABC1C(), sub_1C5D29214(), v7 = v6, , , (v7 & 1) == 0))
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

void sub_1C5D9B5E4()
{
  v1 = *(v0 + 32);
  v2 = [v1 gaplessInfo];
  if (!v2 || (v3 = v2, v4 = sub_1C6016860(), v3, sub_1C5DF59E4(v4), v6 = v5, , !v6) || (sub_1C5DABC1C(), sub_1C5D29214(), v8 = v7, , , (v8 & 1) != 0))
  {
    sub_1C5D9B6F4();
    sub_1C5DAE6C8(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
    sub_1C5E10700();
    v10 = v9;

    sub_1C5D9B0F0(v10, v1);
  }
}

id sub_1C5D9B6F4()
{
  v1 = *(v0 + 32);
  sub_1C5DABC1C();
  sub_1C5E10700();
  v3 = v2;

  sub_1C5D9B0F0(v3, v1);
  v4 = *(v0 + 48);
  sub_1C5DABC1C();
  sub_1C5E10700();
  v6 = v5;

  sub_1C5D9B0F0(v6, v4);
  [v1 setAudioMix_];

  return [v4 setAudioMix_];
}

void sub_1C5D9B798()
{
  v1 = *(v0 + 32);
  sub_1C5DABC1C();
  sub_1C5E10700();
  v3 = v2;

  sub_1C5D9B0F0(v3, v1);
}

unint64_t sub_1C5D9B7F0()
{
  v1 = sub_1C5DAE6C8(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v2 = sub_1C5E10D34(v1);

  return v2;
}

uint64_t sub_1C5D9B834()
{
  v1 = *(v0 + 8);

  return v1;
}

double sub_1C5D9B884@<D0>(uint64_t a1@<X8>)
{
  sub_1C5D9B504(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1C5D9B8F0()
{
  sub_1C5D9B5E4();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1C5D9B954()
{
  OUTLINED_FUNCTION_153_0();
  v2 = type metadata accessor for SmartTransitionParameters(0);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_22_18();
  sub_1C5DA4F3C(0, &qword_1EC1AB720, v1, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v4);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  OUTLINED_FUNCTION_82_2();
  sub_1C5DAAA70();
  if (__swift_getEnumTagSinglePayload(v7, 1, v2))
  {
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10_25();
    sub_1C5DAAB34(v7, v0, v10);
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v7, v11, v12);
    sub_1C6014B10();
    OUTLINED_FUNCTION_5_32();
    sub_1C5DAAB90(v0, v13);
  }

  OUTLINED_FUNCTION_146_0();
}

void sub_1C5D9BAC0()
{
  OUTLINED_FUNCTION_153_0();
  v2 = type metadata accessor for SmartTransitionParameters(0);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_22_18();
  OUTLINED_FUNCTION_138_0();
  sub_1C5DA4F3C(v4, v5, v6, v7);
  OUTLINED_FUNCTION_13_3(v8);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_148_0();
  v10 = OUTLINED_FUNCTION_99_1();
  if (__swift_getEnumTagSinglePayload(v10, v11, v2))
  {
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v1, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_10_25();
    sub_1C5DAAB34(v1, v0, v14);
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v1, v15, v16);
    sub_1C6014B10();
    OUTLINED_FUNCTION_5_32();
    sub_1C5DAAB90(v0, v17);
  }

  OUTLINED_FUNCTION_146_0();
}

uint64_t sub_1C5D9BC08(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return 11;
  }

  else
  {
    return byte_1C6040B22[a1];
  }
}

uint64_t sub_1C5D9BC60@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C5D9BC08(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C5D9BC8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5D9BC28(*v1);
  *a1 = result;
  return result;
}

double sub_1C5D9BCC4@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0x80;
  return result;
}

uint64_t sub_1C5D9BCDC()
{
  OUTLINED_FUNCTION_65_7();
  sub_1C5DA4F3C(0, &qword_1EC1AB720, v1, MEMORY[0x1E69E6720]);
  v4 = OUTLINED_FUNCTION_13_3(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_102();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_104_0();
  v6 = OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_incomingParameters;
  OUTLINED_FUNCTION_27();
  sub_1C5DAAA70();
  type metadata accessor for SmartTransitionParameters(0);
  v7 = OUTLINED_FUNCTION_135_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v6);
  sub_1C5DAAACC(v2, &qword_1EC1AB720, v1);
  if (EnumTagSinglePayload == 1)
  {
    return qword_1C6040B88[*(v0 + 140)];
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_65_7();
  sub_1C5DAAA70();
  v9 = OUTLINED_FUNCTION_56_1();
  v11 = __swift_getEnumTagSinglePayload(v9, v10, v6);
  v12 = OUTLINED_FUNCTION_252();
  sub_1C5DAAACC(v12, v13, v1);
  if (v11 == 1)
  {
    return qword_1C6040B88[*(v0 + 140)];
  }

  if (*(v0 + 139))
  {
    return 4;
  }

  v15 = sub_1C5D9BE8C();
  if (v16)
  {
    return *&v15;
  }

  sub_1C5D9BEE4();
  if (v17)
  {
    return 4;
  }

  return *(v0 + 88);
}

double sub_1C5D9BE8C()
{
  v0 = 0.0;
  if (sub_1C5DA56B8())
  {
    sub_1C5D9BEE4();
    if ((v1 & 1) == 0)
    {
      v2 = COERCE_DOUBLE(sub_1C5DA5900());
      if (v3)
      {
        return 0.0;
      }

      else
      {
        return v2;
      }
    }
  }

  return v0;
}

void sub_1C5D9BEE4()
{
  OUTLINED_FUNCTION_153_0();
  OUTLINED_FUNCTION_22_18();
  OUTLINED_FUNCTION_138_0();
  sub_1C5DA4F3C(v2, v3, v4, v5);
  OUTLINED_FUNCTION_13_3(v6);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78_2();
  v8 = type metadata accessor for SmartTransitionParameters(0);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_146();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_148_0();
  v13 = OUTLINED_FUNCTION_99_1();
  if (__swift_getEnumTagSinglePayload(v13, v14, v8) == 1)
  {
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v1, v15, v16);
  }

  else
  {
    sub_1C5DAAD4C(v1, v12, type metadata accessor for SmartTransitionParameters);
    v17 = [*(v0 + 72) timebase];
    if (v17)
    {
      v18 = v17;
      sub_1C6016EC0();

      OUTLINED_FUNCTION_138_0();
      sub_1C6017220();
      sub_1C6014B10();
    }

    OUTLINED_FUNCTION_5_32();
    sub_1C5DAAB90(v12, v19);
  }

  OUTLINED_FUNCTION_146_0();
}

void sub_1C5D9C084()
{
  OUTLINED_FUNCTION_247();
  v2 = v0;
  v3 = type metadata accessor for SmartTransitionParameters(0);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_10();
  sub_1C5DA4F3C(0, &qword_1EC1AB720, type metadata accessor for SmartTransitionParameters, MEMORY[0x1E69E6720]);
  v6 = OUTLINED_FUNCTION_13_3(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_102();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v13 = type metadata accessor for PlayerItemTransitionProvided(0);
  v14 = OUTLINED_FUNCTION_13_3(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_146();
  v17 = v16 - v15;
  sub_1C5DA4F3C(0, &qword_1EC1A9230, sub_1C5D80578, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60379A0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001C604FF70;
  v19 = OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionProvided;
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_21_19();
  sub_1C5DAAB34(v2 + v19, v17, v20);
  v21 = sub_1C5DAE2E8();
  OUTLINED_FUNCTION_20_20();
  sub_1C5DAAB90(v17, v22);
  v23 = MEMORY[0x1E69E6530];
  *(inited + 48) = v21;
  *(inited + 72) = v23;
  *(inited + 80) = 0x7967657461727473;
  *(inited + 88) = 0xE800000000000000;
  v24 = *(v2 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionStrategy);
  v25 = *(v2 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionStrategy + 8);
  v26 = MEMORY[0x1E69E6158];
  if (!v25)
  {
    v24 = 1701736270;
  }

  v27 = 0xE400000000000000;
  if (v25)
  {
    v27 = *(v2 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionStrategy + 8);
  }

  *(inited + 96) = v24;
  *(inited + 104) = v27;
  *(inited + 120) = v26;
  *(inited + 128) = 0x6E6F697461727564;
  *(inited + 136) = 0xE800000000000000;
  v28 = MEMORY[0x1E69E63B0];
  *(inited + 144) = *(v2 + 88);
  *(inited + 168) = v28;
  *(inited + 176) = 0x676E696F6774756FLL;
  *(inited + 184) = 0xE800000000000000;
  OUTLINED_FUNCTION_27();
  sub_1C5DAAA70();
  if (__swift_getEnumTagSinglePayload(v12, 1, v3))
  {

    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v12, v29, v30);
    v31 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_25();
    sub_1C5DAAB34(v12, v1, v32);

    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v12, v33, v34);
    v31 = sub_1C5DAE8AC();
    OUTLINED_FUNCTION_5_32();
    sub_1C5DAAB90(v1, v35);
  }

  sub_1C5D9AF3C();
  v37 = v36;
  *(inited + 216) = v36;
  if (!v31)
  {
    sub_1C5C64D74(0, &qword_1ED7DCCD0);
    v31 = sub_1C6016880();
  }

  *(inited + 192) = v31;
  *(inited + 224) = 0x676E696D6F636E69;
  *(inited + 232) = 0xE800000000000000;
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_60_6();
  sub_1C5DAAA70();
  if (__swift_getEnumTagSinglePayload(v9, 1, v3))
  {
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v9, v38, v39);
    *(inited + 264) = v37;
  }

  else
  {
    OUTLINED_FUNCTION_10_25();
    sub_1C5DAAB34(v9, v1, v41);
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v9, v42, v43);
    v40 = sub_1C5DAE8AC();
    OUTLINED_FUNCTION_5_32();
    sub_1C5DAAB90(v1, v44);
    *(inited + 264) = v37;
    if (v40)
    {
      goto LABEL_14;
    }
  }

  sub_1C5C64D74(0, &qword_1ED7DCCD0);
  v40 = sub_1C6016880();
LABEL_14:
  *(inited + 240) = v40;
  sub_1C6016880();
  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5D9C50C()
{
  OUTLINED_FUNCTION_248();
  v1[7] = v0;
  v2 = sub_1C6014980();
  v1[8] = v2;
  OUTLINED_FUNCTION_12(v2);
  v1[9] = v3;
  v1[10] = OUTLINED_FUNCTION_105_1();
  v1[11] = swift_task_alloc();
  OUTLINED_FUNCTION_8_27();
  sub_1C5DA4F3C(0, v4, v5, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v6);
  v1[12] = swift_task_alloc();
  v7 = sub_1C60149E0();
  v1[13] = v7;
  OUTLINED_FUNCTION_12(v7);
  v1[14] = v8;
  v1[15] = OUTLINED_FUNCTION_105_1();
  v1[16] = swift_task_alloc();
  v9 = sub_1C60162D0();
  v1[17] = v9;
  OUTLINED_FUNCTION_12(v9);
  v1[18] = v10;
  v1[19] = OUTLINED_FUNCTION_105_1();
  v1[20] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C5D9C6B4()
{
  v73 = v0;
  v2 = *(v0 + 56);
  *(v2 + 140) = 0;
  sub_1C6016CB0();
  OUTLINED_FUNCTION_1_48();
  OUTLINED_FUNCTION_157_0();

  v3 = sub_1C60162B0();
  sub_1C6016F30();
  OUTLINED_FUNCTION_75_2();

  v4 = OUTLINED_FUNCTION_137_0();
  v5 = *(v0 + 160);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  if (v4)
  {
    OUTLINED_FUNCTION_112();
    v69 = v5;
    v71 = OUTLINED_FUNCTION_53_5();
    v8 = OUTLINED_FUNCTION_69_5(4.8751e-34);
    OUTLINED_FUNCTION_110_1(v8, v9, &v71);
    OUTLINED_FUNCTION_109_0();
    *(v5 + 4) = v1;
    OUTLINED_FUNCTION_94();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    OUTLINED_FUNCTION_31_8();
    OUTLINED_FUNCTION_6();

    v15 = *(v6 + 8);
    v15(v5, v7);
  }

  else
  {

    v15 = *(v6 + 8);
    v15(v5, v7);
  }

  *(v0 + 168) = v15;
  v16 = *(v0 + 56);
  v17 = *(v16 + 80);
  *(v0 + 453) = v17;
  if (v17 == 2 || (v18 = *(v16 + 81), *(v0 + 454) = v18, v18 == 2))
  {
    *(v0 + 448) = 3;
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000050, 0x80000001C6050450);
    v19 = *(v16 + 80);
    if (v19)
    {
      v20 = 7562617;
    }

    else
    {
      v20 = 28526;
    }

    if (v19)
    {
      v21 = 0xE300000000000000;
    }

    else
    {
      v21 = 0xE200000000000000;
    }

    if (v19 == 2)
    {
      v22 = 0x6E776F6E6B6E75;
    }

    else
    {
      v22 = v20;
    }

    if (v19 == 2)
    {
      v23 = 0xE700000000000000;
    }

    else
    {
      v23 = v21;
    }

    MEMORY[0x1C69534E0](v22, v23);

    MEMORY[0x1C69534E0](0xD000000000000018, 0x80000001C60504B0);
    v24 = *(v16 + 81);
    if (v24)
    {
      v25 = 7562617;
    }

    else
    {
      v25 = 28526;
    }

    if (v24)
    {
      v26 = 0xE300000000000000;
    }

    else
    {
      v26 = 0xE200000000000000;
    }

    if (v24 == 2)
    {
      v27 = 0x6E776F6E6B6E75;
    }

    else
    {
      v27 = v25;
    }

    if (v24 == 2)
    {
      v28 = 0xE700000000000000;
    }

    else
    {
      v28 = v26;
    }

    MEMORY[0x1C69534E0](v27, v28);

    sub_1C5DAA568();
    sub_1C5DAA618();
    OUTLINED_FUNCTION_16();
    sub_1C5DAA5C4();
    goto LABEL_31;
  }

  v31 = [*(v16 + 56) forwardPlaybackEndTime];
  OUTLINED_FUNCTION_127_1(v31, v32, v33, v34, v35, v36, v37, v38, v69, v71);
  if ((sub_1C60171C0() & 1) == 0 || ([*(*(v0 + 56) + 64) playbackStartTime], v39 != 0.0))
  {
    v58 = *(v0 + 56);
    *(v0 + 449) = 4;
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_1C6017540();
    v59 = v72;
    *(v0 + 40) = v71;
    *(v0 + 48) = v59;
    MEMORY[0x1C69534E0](0xD000000000000056, 0x80000001C60504D0);
    v60 = [*(v16 + 56) forwardPlaybackEndTime];
    OUTLINED_FUNCTION_127_1(v60, v61, v62, v63, v64, v65, v66, v67, v70, v71);
    sub_1C6017220();
    OUTLINED_FUNCTION_132_0();
    sub_1C6016D10();
    MEMORY[0x1C69534E0](0xD000000000000019, 0x80000001C6050530);
    [*(v58 + 64) playbackStartTime];
    OUTLINED_FUNCTION_132_0();
    sub_1C6016D10();
    sub_1C5DAA568();
    sub_1C5DAA618();
    OUTLINED_FUNCTION_16();
    sub_1C5DAA5C4();
LABEL_31:
    OUTLINED_FUNCTION_132_0();
LABEL_32:
    MEMORY[0x1C6951DD0]();
    swift_willThrow();
LABEL_33:
    OUTLINED_FUNCTION_35_10();

    OUTLINED_FUNCTION_172();

    return v29();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v40 = *(*(v0 + 56) + 72);
    v41 = *(v16 + 56);
    v42 = v40;
    OUTLINED_FUNCTION_45_0();
    LOBYTE(v40) = sub_1C5DE3F2C();

    if ((v40 & 1) == 0)
    {
      *(v2 + 140) = 1;
      *(v0 + 452) = 2;
      sub_1C5DAA568();
      sub_1C5DAA618();
      OUTLINED_FUNCTION_16();
      v68 = sub_1C5DAA5C4();
      MEMORY[0x1C6951DD0](v0 + 452, 0xD000000000000047, 0x80000001C6050600, MEMORY[0x1E69E7CC0], &type metadata for SmartPlayerItemTransitionError, v68);
      swift_willThrow();
      swift_unknownObjectRelease();
      goto LABEL_33;
    }

    swift_unknownObjectRelease();
  }

  if (!swift_unknownObjectWeakLoadStrong() || (v43 = sub_1C5DE3FD4(), swift_unknownObjectRelease(), (v43 & 1) == 0))
  {
    *(v2 + 140) = 2;
    *(v0 + 450) = 5;
    OUTLINED_FUNCTION_126_1();
    sub_1C5DAA618();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_156_0();
    OUTLINED_FUNCTION_115_1();
    goto LABEL_32;
  }

  v44 = [*(v16 + 56) currentTime];
  OUTLINED_FUNCTION_127_1(v44, v45, v46, v47, v48, v49, v50, v51, v70, v71);
  sub_1C6017220();
  *(v0 + 176) = v52;
  v53 = *(v16 + 56);
  *(v0 + 184) = v53;
  *(v0 + 192) = sub_1C6016C10();
  v54 = v53;
  *(v0 + 200) = sub_1C6016C00();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_117();
  v55 = OUTLINED_FUNCTION_6_27();

  return MEMORY[0x1EEE6DFA0](v55, v56, v57);
}

uint64_t sub_1C5D9CCCC()
{
  OUTLINED_FUNCTION_23();
  v22 = v0;
  v1 = v0[23];

  v2 = [v1 currentTime];
  OUTLINED_FUNCTION_127_1(v2, v3, v4, v5, v6, v7, v8, v9, v20, v21);
  sub_1C5D643DC();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v0[26] = v11;
  v0[27] = v13;
  v0[28] = v15;
  v16 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1C5D9CD70()
{
  OUTLINED_FUNCTION_248();
  v1 = v0[7];
  sub_1C6017220();
  v0[29] = v2;
  v3 = *(v1 + 56);
  v0[30] = v3;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_118_0();
  v0[31] = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_75_5(v5);

  return sub_1C5DA32E8(v6);
}

uint64_t sub_1C5D9CE14()
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
  *(v5 + 256) = v9;
  *(v5 + 264) = v10;
  *(v5 + 272) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_235();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {

    *(v5 + 280) = v3;

    v14 = swift_task_alloc();
    *(v5 + 288) = v14;
    *v14 = v7;
    v14[1] = sub_1C5D9CF90;

    return sub_1C5D9E1F8();
  }
}

uint64_t sub_1C5D9CF90()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_101();
  *v4 = v3;
  *(v5 + 296) = v6;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5D9D074()
{
  v39 = v0;
  v3 = *(v0 + 296) + 0.5 + *(v0 + 176);
  sub_1C6017220();
  if (v3 >= v4)
  {
    *(*(v0 + 56) + 140) = 3;
    OUTLINED_FUNCTION_1_48();
    OUTLINED_FUNCTION_157_0();

    v18 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_75_2();

    if (OUTLINED_FUNCTION_137_0())
    {
      v19 = *(v0 + 296);
      v20 = *(v0 + 232);
      v21 = *(v0 + 176);
      v37 = *(v0 + 168);
      swift_slowAlloc();
      v38 = OUTLINED_FUNCTION_53_5();
      v22 = OUTLINED_FUNCTION_69_5(4.8755e-34);
      OUTLINED_FUNCTION_110_1(v22, v23, &v38);
      OUTLINED_FUNCTION_109_0();
      *(v1 + 4) = v2;
      *(v1 + 12) = 2050;
      *(v1 + 14) = v21;
      *(v1 + 22) = 2050;
      *(v1 + 24) = v20;
      *(v1 + 32) = 2050;
      *(v1 + 34) = v19;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v24, v25, v26, v27, v28, 0x2Au);
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_6();

      v29 = OUTLINED_FUNCTION_28_9();
      v37(v29);
    }

    else
    {
      v33 = *(v0 + 168);

      v34 = OUTLINED_FUNCTION_252();
      v33(v34);
    }

    *(v0 + 451) = 10;
    OUTLINED_FUNCTION_126_1();
    sub_1C5DAA618();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_156_0();
    OUTLINED_FUNCTION_115_1();
    MEMORY[0x1C6951DD0]();
    swift_willThrow();
    OUTLINED_FUNCTION_35_10();

    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_97_1();

    __asm { BRAA            X1, X16 }
  }

  v5 = *(v0 + 104);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63_3();
  sub_1C5DAAA70();
  v6 = OUTLINED_FUNCTION_56_1();
  if (__swift_getEnumTagSinglePayload(v6, v7, v5) == 1)
  {
    v8 = *(v0 + 56);
    OUTLINED_FUNCTION_8_27();
    sub_1C5DAAACC(v9, v10, v11);
    v12 = *(v8 + 72);
    *(v0 + 320) = v12;
    v13 = v12;
    v14 = OUTLINED_FUNCTION_118_0();
    *(v0 + 328) = v14;
    *v14 = v0;
    OUTLINED_FUNCTION_75_5(v14);
    OUTLINED_FUNCTION_97_1();

    return sub_1C5DA32E8(v15);
  }

  else
  {
    (*(*(v0 + 112) + 32))(*(v0 + 128), *(v0 + 96), *(v0 + 104));
    v30 = swift_task_alloc();
    *(v0 + 304) = v30;
    *v30 = v0;
    v30[1] = sub_1C5D9D400;
    OUTLINED_FUNCTION_94_1(*(v0 + 128));
    OUTLINED_FUNCTION_97_1();

    return sub_1C5D9E568(v31);
  }
}

uint64_t sub_1C5D9D400()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5D9D4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  v11 = *(v10 + 128);
  OUTLINED_FUNCTION_130_1();
  v12(v11);

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_31();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C5D9D5AC()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_8_0();
  v9 = v8;
  OUTLINED_FUNCTION_30();
  *v10 = v9;
  v11 = *v1;
  OUTLINED_FUNCTION_101();
  *v12 = v11;
  *(v9 + 336) = v0;

  if (!v0)
  {

    *(v9 + 344) = v5;
    *(v9 + 352) = v3;
    *(v9 + 360) = v7;
  }

  OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C5D9D6D4()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 56);
  *(v0 + 455) = [v2[6] hasSubscriptionAssetSource];
  *(v0 + 456) = [v2[8] hasSubscriptionAssetSource];
  OUTLINED_FUNCTION_138_0();
  sub_1C6017220();
  *(v0 + 368) = v3;
  OUTLINED_FUNCTION_85_0();
  sub_1C6017220();
  *(v0 + 376) = v4;
  v5 = v2[7];
  v6 = [v1 respondsToSelector_];

  if (v6 && (v7 = *(*(v0 + 56) + 72), v8 = [v1 respondsToSelector_], v1, v8))
  {
    v9 = *(*(v0 + 56) + 56);
    *(v0 + 384) = v9;
    v10 = v9;
    *(v0 + 392) = sub_1C6016C00();
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_117();
    v11 = OUTLINED_FUNCTION_6_27();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_139_1(*(v0 + 296));
    sub_1C6014970();
    OUTLINED_FUNCTION_150_0();
    swift_task_alloc();
    OUTLINED_FUNCTION_14_2();
    *(v0 + 416) = v14;
    *v14 = v15;
    OUTLINED_FUNCTION_45_5(v14);

    return sub_1C5D9F2F4();
  }
}

uint64_t sub_1C5D9D8E8()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 384);

  *(v0 + 457) = [v1 missingAudioEditList];

  v2 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C5D9D95C()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0[7] + 72);
  v0[50] = v1;
  v2 = v1;
  v0[51] = sub_1C6016C00();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_117();
  v3 = OUTLINED_FUNCTION_6_27();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5D9D9E0()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 400);

  *(v0 + 458) = [v1 missingAudioEditList];

  v2 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C5D9DA54()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_139_1(*(v0 + 296));
  sub_1C6014970();
  OUTLINED_FUNCTION_150_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_2();
  *(v0 + 416) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_45_5(v1);

  return sub_1C5D9F2F4();
}

uint64_t sub_1C5D9DB2C()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_101();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[53] = v0;

  v6 = v2[11];
  v7 = v2[10];
  v8 = v2[9];
  v9 = v2[8];
  if (v0)
  {
    v10 = *(v8 + 8);
    v10(v7, v2[8]);
    v10(v6, v9);
    v11 = OUTLINED_FUNCTION_137_1();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v8 + 8);
    v14(v7, v2[8]);
    v14(v6, v9);
    v15 = swift_task_alloc();
    v3[54] = v15;
    *v15 = v5;
    v15[1] = sub_1C5D9DD3C;
    v16 = OUTLINED_FUNCTION_94_1(v3[15]);

    return sub_1C5D9E568(v16);
  }
}

uint64_t sub_1C5D9DD3C()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  *(v6 + 440) = v0;

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5D9DE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  v11 = *(v10 + 120);
  OUTLINED_FUNCTION_130_1();
  v12(v11);

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_31();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C5D9DEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_35_10();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_31();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1C5D9DF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  (*(v10[14] + 8))(v10[16], v10[13]);
  OUTLINED_FUNCTION_35_10();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_31();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1C5D9E028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_35_10();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_31();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1C5D9E0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_35_10();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_31();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_1C5D9E150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  (*(v10[14] + 8))(v10[15], v10[13]);
  OUTLINED_FUNCTION_35_10();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_31();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1C5D9E218()
{
  OUTLINED_FUNCTION_248();
  type metadata accessor for CMTime();
  OUTLINED_FUNCTION_100_1();
  OUTLINED_FUNCTION_100_1();

  return MEMORY[0x1EEE6DEB8](v0 + 16, v0 + 1360, sub_1C5D9E2C8, v0 + 1296);
}

uint64_t sub_1C5D9E2DC()
{
  OUTLINED_FUNCTION_248();
  if (sub_1C6017200())
  {
    v1 = sub_1C5D9E35C;
    v2 = v0 + 16;
    v3 = v0 + 1360;
  }

  else
  {
    *(v0 + 1344) = 0;
    v2 = OUTLINED_FUNCTION_56_5();
  }

  return MEMORY[0x1EEE6DEB8](v2, v3, v1, v0 + 1296);
}

uint64_t sub_1C5D9E370()
{
  OUTLINED_FUNCTION_248();
  sub_1C6017220();
  *(v0 + 1344) = v1;
  v2 = OUTLINED_FUNCTION_56_5();

  return MEMORY[0x1EEE6DEB8](v2, v3, v4, v0 + 1296);
}

uint64_t sub_1C5D9E3E4()
{
  OUTLINED_FUNCTION_248();
  if (sub_1C6017200())
  {

    return MEMORY[0x1EEE6DEB8](v0 + 656, v0 + 1384, sub_1C5D9E480, v0 + 1296);
  }

  else
  {
    *(v0 + 1352) = 0;
    v1 = OUTLINED_FUNCTION_50_6();

    return MEMORY[0x1EEE6DEB0](v1, v2, v3, v4);
  }
}

uint64_t sub_1C5D9E494()
{
  OUTLINED_FUNCTION_248();
  sub_1C6017220();
  *(v0 + 1352) = v1;
  v2 = OUTLINED_FUNCTION_50_6();

  return MEMORY[0x1EEE6DEB0](v2, v3, v4, v5);
}

uint64_t sub_1C5D9E538()
{
  OUTLINED_FUNCTION_172();
  v2.n128_u64[0] = *(v0 + 1352);
  if (*(v0 + 1344) > v2.n128_f64[0])
  {
    v2.n128_u64[0] = *(v0 + 1344);
  }

  return v1(v2);
}

uint64_t sub_1C5D9E568(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1C60149E0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1C6014B20();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_1C6014AE0();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_1C6014A50();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v7 = sub_1C60162D0();
  v2[16] = v7;
  v2[17] = *(v7 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5D9E7B0, 0, 0);
}

uint64_t sub_1C5D9E7B0()
{
  v62 = v0;
  OUTLINED_FUNCTION_157_0();

  v1 = sub_1C60162B0();
  v2 = sub_1C6016F30();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 160);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  if (v3)
  {
    v7 = *(v0 + 24);
    v8 = OUTLINED_FUNCTION_112();
    v9 = OUTLINED_FUNCTION_21();
    v61 = v9;
    *v8 = 136446210;
    v10 = *(v7 + 32);
    v11 = *(v7 + 40);

    v12 = sub_1C5C6AB10(v10, v11, &v61);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1C5C61000, v1, v2, "[ALC:%{public}s] - Attempting to apply Smart Transition", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();
  }

  v13 = *(v5 + 8);
  v13(v4, v6);
  *(v0 + 168) = v13;
  sub_1C6016CB0();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v0 + 24);
    v17 = *(v16 + 72);
    v18 = *(v16 + 56);
    v19 = v17;
    OUTLINED_FUNCTION_252();
    LOBYTE(v17) = sub_1C5DE3F2C();

    if ((v17 & 1) == 0)
    {
      *(*(v0 + 24) + 140) = 1;
      *(v0 + 218) = 2;
      OUTLINED_FUNCTION_126_1();
      sub_1C5DAA618();
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_156_0();
      OUTLINED_FUNCTION_115_1();
      MEMORY[0x1C6951DD0]();
      swift_willThrow();
      swift_unknownObjectRelease();
LABEL_4:
      OUTLINED_FUNCTION_106_0();

      OUTLINED_FUNCTION_172();

      return v14();
    }

    swift_unknownObjectRelease();
  }

  v20 = *(v0 + 112);
  v21 = sub_1C60149B0();
  v22 = MEMORY[0x1C69514E0](v21);
  v23 = *(v20 + 8);
  v24 = OUTLINED_FUNCTION_252();
  v23(v24);
  if (v22 < 0.5)
  {
    v26 = *(v0 + 40);
    v25 = *(v0 + 48);
    v27 = *(v0 + 32);
    v28 = *(v0 + 16);
    OUTLINED_FUNCTION_1_48();
    sub_1C60162C0();
    (*(v26 + 16))(v25, v28, v27);

    v29 = sub_1C60162B0();
    v30 = sub_1C6016F30();

    v31 = OUTLINED_FUNCTION_29_0();
    v60 = *(v0 + 144);
    v32 = *(v0 + 128);
    if (v31)
    {
      v59 = *(v0 + 128);
      v33 = *(v0 + 120);
      v56 = *(v0 + 104);
      v34 = *(v0 + 40);
      v54 = *(v0 + 48);
      v35 = *(v0 + 24);
      v58 = *(v0 + 32);
      v36 = OUTLINED_FUNCTION_68_0();
      v57 = OUTLINED_FUNCTION_21();
      v61 = v57;
      *v36 = 136446466;
      v55 = v30;
      v37 = *(v35 + 32);

      v38 = OUTLINED_FUNCTION_85_0();
      sub_1C5C6AB10(v38, v39, v40);
      OUTLINED_FUNCTION_155_0();
      *(v36 + 4) = v37;
      *(v36 + 12) = 2050;
      v41 = sub_1C60149B0();
      v42 = MEMORY[0x1C69514E0](v41);
      (v23)(v33, v56);
      (*(v34 + 8))(v54, v58);
      *(v36 + 14) = v42;
      _os_log_impl(&dword_1C5C61000, v29, v55, "[ALC:%{public}s] - Failed to apply Smart Transition - transition duration (%{public}f) is too short", v36, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v57);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_28();

      v43 = v59;
      v44 = v60;
    }

    else
    {

      v52 = OUTLINED_FUNCTION_85_0();
      v53(v52);
      v44 = v60;
      v43 = v32;
    }

    v13(v44, v43);
    *(v0 + 216) = 9;
    OUTLINED_FUNCTION_126_1();
    sub_1C5DAA618();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_156_0();
    OUTLINED_FUNCTION_115_1();
    MEMORY[0x1C6951DD0]();
    swift_willThrow();
    goto LABEL_4;
  }

  [*(*(v0 + 24) + 56) currentTime];
  sub_1C6017220();
  *(v0 + 176) = v45;
  sub_1C60149A0();
  sub_1C6014A90();
  v46 = OUTLINED_FUNCTION_252();
  v47(v46);
  sub_1C6014B10();
  *(v0 + 184) = v48;
  v49 = OUTLINED_FUNCTION_18();
  v50(v49);
  v51 = swift_task_alloc();
  *(v0 + 192) = v51;
  *v51 = v0;
  v51[1] = sub_1C5D9EDA4;

  return sub_1C5D9E1F8();
}

uint64_t sub_1C5D9EDA4()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_101();
  *v4 = v3;
  *(v5 + 200) = v6;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5D9EE88()
{
  v23 = v0;
  if (*(v0 + 176) >= *(v0 + 184) - *(v0 + 200))
  {
    *(*(v0 + 24) + 140) = 3;
    OUTLINED_FUNCTION_1_48();
    OUTLINED_FUNCTION_157_0();

    v6 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_75_2();

    if (OUTLINED_FUNCTION_137_0())
    {
      v7 = *(v0 + 200);
      v8 = *(v0 + 176);
      v21 = *(v0 + 168);
      OUTLINED_FUNCTION_21();
      v22 = OUTLINED_FUNCTION_53_5();
      v9 = OUTLINED_FUNCTION_69_5(4.8754e-34);
      OUTLINED_FUNCTION_110_1(v9, v10, &v22);
      OUTLINED_FUNCTION_109_0();
      *(v1 + 4) = v2;
      *(v1 + 12) = 2050;
      *(v1 + 14) = v8;
      *(v1 + 22) = 2050;
      *(v1 + 24) = v7;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v11, v12, v13, v14, v15, 0x20u);
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_6();

      v16 = OUTLINED_FUNCTION_28_9();
      v21(v16);
    }

    else
    {
      v17 = *(v0 + 168);

      v18 = OUTLINED_FUNCTION_252();
      v17(v18);
    }

    *(v0 + 217) = 10;
    sub_1C5DAA568();
    sub_1C5DAA618();
    OUTLINED_FUNCTION_16();
    v19 = sub_1C5DAA5C4();
    MEMORY[0x1C6951DD0](v0 + 217, 0xD000000000000033, 0x80000001C60505A0, MEMORY[0x1E69E7CC0], &type metadata for SmartPlayerItemTransitionError, v19);
    swift_willThrow();
    OUTLINED_FUNCTION_106_0();

    OUTLINED_FUNCTION_172();

    return v20();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 208) = v3;
    *v3 = v0;
    v3[1] = sub_1C5D9F130;
    v4 = OUTLINED_FUNCTION_94_1(*(v0 + 16));

    return sub_1C5DA5F80(v4);
  }
}

uint64_t sub_1C5D9F130()
{
  OUTLINED_FUNCTION_23();
  v1 = *v0;
  OUTLINED_FUNCTION_101();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C5D9F2F4()
{
  OUTLINED_FUNCTION_248();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v5 = sub_1C60148F0();
  v1[14] = v5;
  OUTLINED_FUNCTION_12(v5);
  v1[15] = v6;
  v1[16] = swift_task_alloc();
  v7 = sub_1C6014930();
  v1[17] = v7;
  OUTLINED_FUNCTION_12(v7);
  v1[18] = v8;
  v1[19] = OUTLINED_FUNCTION_105_1();
  v1[20] = swift_task_alloc();
  sub_1C5DAA9FC();
  v1[21] = v9;
  OUTLINED_FUNCTION_13_3(v9);
  v1[22] = OUTLINED_FUNCTION_105_1();
  v1[23] = swift_task_alloc();
  OUTLINED_FUNCTION_4_37();
  v10 = MEMORY[0x1E69E6720];
  sub_1C5DA4F3C(0, v11, v12, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v13);
  v1[24] = swift_task_alloc();
  OUTLINED_FUNCTION_8_27();
  sub_1C5DA4F3C(0, v14, v15, v10);
  OUTLINED_FUNCTION_13_3(v16);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v17 = type metadata accessor for TransitionProvider.TransitionableIdentifier();
  v1[28] = v17;
  OUTLINED_FUNCTION_13_3(v17);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  OUTLINED_FUNCTION_13_22();
  sub_1C5DA4F3C(0, v18, v19, v10);
  OUTLINED_FUNCTION_13_3(v20);
  v1[33] = OUTLINED_FUNCTION_105_1();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v21 = sub_1C6014980();
  v1[37] = v21;
  OUTLINED_FUNCTION_12(v21);
  v1[38] = v22;
  v1[39] = OUTLINED_FUNCTION_105_1();
  v1[40] = swift_task_alloc();
  v23 = sub_1C60162D0();
  v1[41] = v23;
  OUTLINED_FUNCTION_12(v23);
  v1[42] = v24;
  v1[43] = OUTLINED_FUNCTION_105_1();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  sub_1C5D2D8C8();
  v1[50] = v25;
  OUTLINED_FUNCTION_12(v25);
  v1[51] = v26;
  v1[52] = OUTLINED_FUNCTION_105_1();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v27, v28, v29);
}

uint64_t sub_1C5D9F6EC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, os_log_t a22, uint64_t a23, uint64_t a24, os_log_t log, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_71_2();
  a45 = v47;
  a46 = v48;
  OUTLINED_FUNCTION_81_4();
  a44 = v46;
  v49 = *(v46 + 408);
  v272 = *(v46 + 312);
  v51 = *(v46 + 296);
  v50 = *(v46 + 304);
  v268 = *(v46 + 320);
  v270 = *(v46 + 96);
  v52 = *(v46 + 88);
  MEMORY[0x1C6952D20]();
  OUTLINED_FUNCTION_108_1();
  *(v46 + 472) = *(v49 + 8);
  *(v46 + 480) = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v53 = OUTLINED_FUNCTION_108();
  v274 = v54;
  v54(v53);
  v55 = *(v50 + 16);
  v55(v268, v52, v51);
  v56 = v270;
  v269 = v55;
  v271 = v50 + 16;
  v55(v272, v56, v51);

  v57 = sub_1C60162B0();
  v58 = sub_1C6016F30();

  v59 = os_log_type_enabled(v57, v58);
  v273 = *(v46 + 392);
  v60 = *(v46 + 328);
  v61 = *(v46 + 336);
  v62 = *(v46 + 320);
  v64 = *(v46 + 296);
  v63 = *(v46 + 304);
  if (v59)
  {
    a27 = *(v46 + 328);
    v65 = OUTLINED_FUNCTION_21();
    a26 = swift_slowAlloc();
    a33 = a26;
    *v65 = 136446722;
    log = v57;

    v66 = OUTLINED_FUNCTION_45_0();
    v69 = sub_1C5C6AB10(v66, v67, v68);

    *(v65 + 4) = v69;
    *(v65 + 12) = 2082;
    sub_1C6014960();
    LODWORD(a24) = v58;
    v70 = *(v63 + 8);
    v70(v62, v64);
    v71 = OUTLINED_FUNCTION_45_0();
    v74 = sub_1C5C6AB10(v71, v72, v73);

    *(v65 + 14) = v74;
    *(v65 + 22) = 2082;
    v75 = sub_1C6014960();
    v76 = OUTLINED_FUNCTION_134_1();
    (v70)(v76);
    v77 = OUTLINED_FUNCTION_85_0();
    sub_1C5C6AB10(v77, v78, v79);
    OUTLINED_FUNCTION_155_0();
    *(v65 + 24) = v75;
    _os_log_impl(&dword_1C5C61000, log, v58, "[ALC:%{public}s] - Fetching Smart Transition info. OutgoingItemInfo: %{public}s.  IncomingItemInfo: %{public}s", v65, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();

    v80 = *(v61 + 8);
    (v80)(v273, a27);
  }

  else
  {

    v81 = *(v63 + 8);
    v82 = OUTLINED_FUNCTION_134_1();
    v81(v82);
    (v81)(v62, v64);
    v80 = *(v61 + 8);
    (v80)(v273, v60);
  }

  *(v46 + 488) = v80;
  v83 = *(v46 + 104);
  objc_opt_self();
  OUTLINED_FUNCTION_34_4();
  v84 = swift_dynamicCastObjCClass();
  v85 = "rameworks/AssistantServices.framework/AssistantServices";
  if (v84)
  {
    v86 = [v84 modelGenericObject];
    if (v86)
    {
      v87 = v86;
      v88 = [v86 identifiers];

      if (v88)
      {
        MEMORY[0x1C6952D20]();
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_108_1();
        v89 = OUTLINED_FUNCTION_46_4();
        v90(v89);

        v91 = v88;
        v92 = sub_1C60162B0();
        v93 = sub_1C6016F30();

        v94 = os_log_type_enabled(v92, v93);
        v95 = *(v46 + 384);
        a27 = *(v46 + 336);
        if (v94)
        {
          log = *(v46 + 328);
          v273 = v80;
          v96 = OUTLINED_FUNCTION_68_0();
          v97 = swift_slowAlloc();
          a26 = v83;
          v98 = OUTLINED_FUNCTION_21();
          a33 = v98;
          *v96 = 136446466;
          a24 = v95;

          v99 = OUTLINED_FUNCTION_45_0();
          v102 = sub_1C5C6AB10(v99, v100, v101);

          *(v96 + 4) = v102;
          *(v96 + 12) = 2114;
          *(v96 + 14) = v91;
          *v97 = v88;
          v103 = v91;
          _os_log_impl(&dword_1C5C61000, v92, v93, "[ALC:%{public}s] - Outgoing identifier set: %{public}@", v96, 0x16u);
          sub_1C5CB5700(v97);
          v85 = "softlink:r:path:/System/Library/PrivateFrameworks/AssistantServices.framework/AssistantServices" + 40;
          OUTLINED_FUNCTION_4();
          __swift_destroy_boxed_opaque_existential_0(v98);
          v83 = a26;
          OUTLINED_FUNCTION_4();
          v80 = v273;
          OUTLINED_FUNCTION_4();

          OUTLINED_FUNCTION_129_1();
          v104 = a24;
          v105 = log;
        }

        else
        {

          OUTLINED_FUNCTION_129_1();
          v104 = OUTLINED_FUNCTION_45_0();
        }

        (v80)(v104, v105);
      }
    }
  }

  v106 = *(v46 + 288);
  v107 = *(v46 + 224);
  v108 = (*(v46 + 104) + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionProvider);
  __swift_project_boxed_opaque_existential_0(v108, v108[3]);
  v109 = swift_unknownObjectRetain();
  sub_1C5DB1A0C(v109, v106);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_108();
  sub_1C5DAAA70();
  v110 = OUTLINED_FUNCTION_56_1();
  if (__swift_getEnumTagSinglePayload(v110, v111, v107) == 1)
  {
    v112 = *(v46 + 104);
    OUTLINED_FUNCTION_13_22();
    v116 = sub_1C5DAAACC(v113, v114, v115);
    MEMORY[0x1C6952D20](v116);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_108_1();
    v117 = OUTLINED_FUNCTION_46_4();
    v118(v117);

    v119 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_125_1();
    if (OUTLINED_FUNCTION_137_0())
    {
      v120 = *(v46 + 104);
      OUTLINED_FUNCTION_112();
      v121 = OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_136_2(v121);
      *v112 = 136446210;
      v273 = v80;
      v122 = *(v120 + 32);

      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_109_0();
      *(v112 + 4) = v122;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v123, v124, v125, v126, v127, 0xCu);
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_6();

      v128 = OUTLINED_FUNCTION_28_9();
      v273(v128);
    }

    else
    {

      v154 = OUTLINED_FUNCTION_28_9();
      v80(v154);
    }

    v155 = *(v46 + 288);
    *(v46 + 664) = 6;
    OUTLINED_FUNCTION_126_1();
    sub_1C5DAA618();
    v156 = swift_allocError();
    sub_1C5DAA5C4();
    OUTLINED_FUNCTION_115_1();
    MEMORY[0x1C6951DD0]();
    v276 = v156;
    swift_willThrow();
    OUTLINED_FUNCTION_13_22();
    v159 = v155;
LABEL_32:
    sub_1C5DAAACC(v159, v157, v158);
    OUTLINED_FUNCTION_17_18();
    v249 = v205;
    v250 = v206;
    v251 = v207;
    v252 = *(v46 + 344);
    v253 = *(v46 + 320);
    v254 = *(v46 + 312);
    v255 = *(v46 + 288);
    v256 = *(v46 + 280);
    v257 = *(v46 + 272);
    v258 = *(v46 + 264);
    v259 = *(v46 + 256);
    v260 = *(v46 + 248);
    v261 = *(v46 + 240);
    v262 = *(v46 + 232);
    v263 = *(v46 + 216);
    v264 = *(v46 + 208);
    loga = *(v46 + 200);
    v266 = *(v46 + 192);
    v267 = *(v46 + 184);
    OUTLINED_FUNCTION_147_0();

    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_43_9();

    return v209(v208, v209, v210, v211, v212, v213, v214, v215, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, loga, v266, v267, v269, v271, v273, v274, v276, a33, a34, a35, a36, a37, a38);
  }

  v273 = v80;
  v129 = *(v46 + 104);
  OUTLINED_FUNCTION_73_2(*(v46 + 280), *(v46 + 256));
  objc_opt_self();
  OUTLINED_FUNCTION_34_4();
  v130 = swift_dynamicCastObjCClass();
  if (v130)
  {
    v131 = [v130 modelGenericObject];
    if (v131)
    {
      v132 = v131;
      v133 = [v131 identifiers];

      if (v133)
      {
        MEMORY[0x1C6952D20]();
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_108_1();
        v134 = OUTLINED_FUNCTION_46_4();
        v135(v134);

        v136 = v133;
        v137 = sub_1C60162B0();
        v138 = sub_1C6016F30();

        LODWORD(log) = v138;
        v139 = os_log_type_enabled(v137, v138);
        v140 = *(v46 + 376);
        v141 = *(v46 + 328);
        a27 = *(v46 + 336);
        if (v139)
        {
          a22 = v137;
          v142 = *(v46 + 104);
          a26 = v83;
          v143 = OUTLINED_FUNCTION_68_0();
          a24 = v140;
          v144 = swift_slowAlloc();
          v145 = OUTLINED_FUNCTION_21();
          v146 = v85;
          v147 = v145;
          a33 = v145;
          *v143 = *(v146 + 31);
          a23 = v141;
          v149 = *(v142 + 32);
          v148 = *(v142 + 40);

          v150 = sub_1C5C6AB10(v149, v148, &a33);

          *(v143 + 4) = v150;
          *(v143 + 12) = 2114;
          *(v143 + 14) = v136;
          *v144 = v133;
          v151 = v136;
          _os_log_impl(&dword_1C5C61000, a22, log, "[ALC:%{public}s] - Incoming identifier set: %{public}@", v143, 0x16u);
          sub_1C5CB5700(v144);
          OUTLINED_FUNCTION_4();
          __swift_destroy_boxed_opaque_existential_0(v147);
          OUTLINED_FUNCTION_4();
          v83 = a26;
          OUTLINED_FUNCTION_4();

          OUTLINED_FUNCTION_129_1();
          v153 = a23;
          v152 = a24;
        }

        else
        {

          OUTLINED_FUNCTION_129_1();
          v152 = OUTLINED_FUNCTION_86();
        }

        (v273)(v152, v153);
      }
    }
  }

  v160 = *(v46 + 272);
  v161 = *(v46 + 224);
  __swift_project_boxed_opaque_existential_0(v108, v108[3]);
  v162 = swift_unknownObjectRetain();
  sub_1C5DB1A0C(v162, v160);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_108();
  sub_1C5DAAA70();
  v163 = OUTLINED_FUNCTION_56_1();
  if (__swift_getEnumTagSinglePayload(v163, v164, v161) == 1)
  {
    v165 = *(v46 + 104);
    OUTLINED_FUNCTION_13_22();
    v169 = sub_1C5DAAACC(v166, v167, v168);
    MEMORY[0x1C6952D20](v169);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_108_1();
    v170 = OUTLINED_FUNCTION_46_4();
    v171(v170);

    v172 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_125_1();
    if (OUTLINED_FUNCTION_137_0())
    {
      OUTLINED_FUNCTION_112();
      v173 = OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_136_2(v173);
      OUTLINED_FUNCTION_69_5(4.8751e-34);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_109_0();
      *(v165 + 4) = v129;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v174, v175, v176, v177, v178, 0xCu);
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_6();
    }

    v179 = OUTLINED_FUNCTION_28_9();
    v273(v179);
    v180 = *(v46 + 272);
    v181 = *(v46 + 256);
    *(v46 + 665) = 6;
    sub_1C5DAA568();
    sub_1C5DAA618();
    v182 = OUTLINED_FUNCTION_92_1();
    v183 = sub_1C5DAA5C4();
    MEMORY[0x1C6951DD0](v46 + 665, 0xD000000000000040, 0x80000001C6050710, MEMORY[0x1E69E7CC0], &type metadata for SmartPlayerItemTransitionError, v183);
    v276 = v182;
    swift_willThrow();
    sub_1C5DAAACC(v180, &qword_1EC1AB760, type metadata accessor for TransitionProvider.TransitionableIdentifier);
    sub_1C5DAAB90(v181, type metadata accessor for TransitionProvider.TransitionableIdentifier);
    v159 = OUTLINED_FUNCTION_85_0();
    v158 = type metadata accessor for TransitionProvider.TransitionableIdentifier;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_73_2(*(v46 + 264), *(v46 + 248));
  v184 = [*(v83 + 48) userIdentity];
  *(v46 + 496) = v184;
  if (!v184)
  {
    v185 = *(v46 + 104);
    MEMORY[0x1C6952D20]();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_108_1();
    v186 = OUTLINED_FUNCTION_46_4();
    v187(v186);

    v188 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_125_1();
    if (OUTLINED_FUNCTION_137_0())
    {
      OUTLINED_FUNCTION_112();
      v189 = OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_136_2(v189);
      OUTLINED_FUNCTION_69_5(4.8751e-34);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_109_0();
      *(v185 + 4) = v129;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v190, v191, v192, v193, v194, 0xCu);
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_6();
    }

    v195 = OUTLINED_FUNCTION_28_9();
    v273(v195);
    v196 = *(v46 + 288);
    v197 = *(v46 + 272);
    v198 = *(v46 + 248);
    *(v46 + 666) = 7;
    sub_1C5DAA568();
    sub_1C5DAA618();
    v199 = OUTLINED_FUNCTION_92_1();
    v200 = sub_1C5DAA5C4();
    MEMORY[0x1C6951DD0](v46 + 666, 0xD00000000000003ELL, 0x80000001C6050760, MEMORY[0x1E69E7CC0], &type metadata for SmartPlayerItemTransitionError, v200);
    v276 = v199;
    swift_willThrow();
    OUTLINED_FUNCTION_23_13();
    sub_1C5DAAB90(v198, v201);
    OUTLINED_FUNCTION_2_36();
    sub_1C5DAAACC(v197, &qword_1EC1AB760, v202);
    v203 = OUTLINED_FUNCTION_252();
    sub_1C5DAAB90(v203, v204);
    v159 = v196;
    v157 = &qword_1EC1AB760;
    v158 = " transition info";
    goto LABEL_32;
  }

  sub_1C6016CB0();
  v217 = *(v46 + 104);
  sub_1C5CDAF64(v108, v46 + 16);
  __swift_project_boxed_opaque_existential_0((v46 + 16), *(v46 + 40));
  if (*(v217 + 112))
  {
    v218 = 1;
  }

  else
  {
    sub_1C6014AF0();
    v218 = 0;
  }

  v219 = *(v46 + 296);
  v220 = *(v46 + 256);
  v222 = *(v46 + 184);
  v221 = *(v46 + 192);
  v223 = *(v46 + 168);
  v224 = *(v46 + 176);
  v225 = *(v46 + 88);
  v275 = *(v46 + 248);
  v277 = *(v46 + 96);
  v226 = sub_1C6014B20();
  __swift_storeEnumTagSinglePayload(v221, v218, 1, v226);
  sub_1C5DAAB34(v220, v222, type metadata accessor for TransitionProvider.TransitionableIdentifier);
  v227 = *(v223 + 48);
  *(v46 + 656) = v227;
  v269(v222 + v227, v225, v219);
  sub_1C5DAAB34(v275, v224, type metadata accessor for TransitionProvider.TransitionableIdentifier);
  v228 = *(v223 + 48);
  *(v46 + 660) = v228;
  v269(v224 + v228, v277, v219);
  sub_1C6016CB0();
  OUTLINED_FUNCTION_27_15(*(v46 + 184));
  OUTLINED_FUNCTION_108();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v230 = *(v46 + 240);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v46 + 144) + 32))(*(v46 + 160), v230, *(v46 + 136));
    v231 = swift_task_alloc();
    *(v46 + 504) = v231;
    *v231 = v46;
    v231[1] = sub_1C5DA0844;
    OUTLINED_FUNCTION_94_1(*(v46 + 160));
LABEL_42:
    OUTLINED_FUNCTION_43_9();

    return sub_1C5DB1F7C();
  }

  v232 = *v230;
  *(v46 + 528) = v230[1];
  *(v46 + 520) = v232;
  OUTLINED_FUNCTION_27_15(*(v46 + 176));
  OUTLINED_FUNCTION_108();
  v233 = swift_getEnumCaseMultiPayload();
  v234 = *(v46 + 232);
  if (v233 == 1)
  {
    (*(*(v46 + 144) + 32))(*(v46 + 152), v234, *(v46 + 136));
    v235 = swift_task_alloc();
    *(v46 + 536) = v235;
    *v235 = v46;
    OUTLINED_FUNCTION_44_8(v235);
    goto LABEL_42;
  }

  v237 = *v234;
  *(v46 + 560) = v234[1];
  *(v46 + 552) = v237;
  sub_1C6016CB0();
  v238 = *(v46 + 496);
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_14_2();
  *(v46 + 568) = v239;
  *v239 = v240;
  OUTLINED_FUNCTION_16_20(v239);
  OUTLINED_FUNCTION_43_9();

  return MEMORY[0x1EEE5F870](v241, v242, v243, v244, v245, v246, v247, v248, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, log, a26, a27, v269, v271, v273, v275, v277, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_1C5DA0844()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_8_0();
  v7 = v6;
  OUTLINED_FUNCTION_30();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_101();
  *v10 = v9;
  v7[64] = v0;

  if (!v0)
  {
    v7[80] = v3;
    v7[81] = v5;
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C5DA0960()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_8_0();
  v7 = v6;
  OUTLINED_FUNCTION_30();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_101();
  *v10 = v9;
  v7[68] = v0;

  if (v0)
  {
  }

  else
  {
    v7[78] = v3;
    v7[79] = v5;
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C5DA0A84()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  *(v3 + 576) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_10();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C60148B0();
    v10 = swift_task_alloc();
    *(v3 + 584) = v10;
    *v10 = v5;
    v10[1] = sub_1C5DA0BF0;

    return MEMORY[0x1EEE5F850]();
  }
}

uint64_t sub_1C5DA0BF0()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  v5 = v4;
  OUTLINED_FUNCTION_30();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_101();
  *v8 = v7;
  v5[74] = v3;
  v5[75] = v0;

  if (v0)
  {

    v9 = OUTLINED_FUNCTION_137_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v5[76] = v12;
    *v12 = v7;
    v12[1] = sub_1C5DA0F80;
    OUTLINED_FUNCTION_31();

    return MEMORY[0x1EEE5F848]();
  }
}

uint64_t sub_1C5DA0DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_81_4();
  v62 = *(v39 + 576);
  v43 = OUTLINED_FUNCTION_3_36();
  sub_1C5DAAB90(v43, v44);
  v45 = OUTLINED_FUNCTION_55_2();
  sub_1C5DAAB90(v45, v46);
  OUTLINED_FUNCTION_4_37();
  sub_1C5DAAACC(v41, v47, v48);

  OUTLINED_FUNCTION_6_28();
  sub_1C5DAAB90(v40, v49);
  OUTLINED_FUNCTION_2_36();
  sub_1C5DAAACC(v38, &qword_1EC1AB760, v50);
  v51 = OUTLINED_FUNCTION_86();
  sub_1C5DAAB90(v51, v52);
  OUTLINED_FUNCTION_58_6();
  __swift_destroy_boxed_opaque_existential_0(v39 + 16);
  OUTLINED_FUNCTION_9_25();

  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_43_9();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v62, a35, a36, a37, a38);
}

uint64_t sub_1C5DA0F80()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_30();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 616) = v0;

  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_74_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5DA10FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_81_4();
  v43 = OUTLINED_FUNCTION_103_1();
  v44(v43);
  v64 = *(v39 + 600);
  v45 = OUTLINED_FUNCTION_3_36();
  sub_1C5DAAB90(v45, v46);
  v47 = OUTLINED_FUNCTION_55_2();
  sub_1C5DAAB90(v47, v48);
  OUTLINED_FUNCTION_4_37();
  sub_1C5DAAACC(v41, v49, v50);

  OUTLINED_FUNCTION_6_28();
  sub_1C5DAAB90(v40, v51);
  OUTLINED_FUNCTION_2_36();
  sub_1C5DAAACC(v38, &qword_1EC1AB760, v52);
  v53 = OUTLINED_FUNCTION_86();
  sub_1C5DAAB90(v53, v54);
  OUTLINED_FUNCTION_58_6();
  __swift_destroy_boxed_opaque_existential_0(v39 + 16);
  OUTLINED_FUNCTION_9_25();

  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_43_9();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v64, a35, a36, a37, a38);
}

uint64_t sub_1C5DA12DC()
{
  v3 = *(v0 + 616);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  v7 = OUTLINED_FUNCTION_103_1();
  v8(v7);
  v9 = sub_1C5DAA9FC;
  sub_1C5DAAB90(v6, sub_1C5DAA9FC);
  sub_1C5DAAB90(v4, sub_1C5DAA9FC);
  OUTLINED_FUNCTION_4_37();
  sub_1C5DAAACC(v5, v10, v11);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  sub_1C6016CB0();
  if (v3)
  {
    OUTLINED_FUNCTION_116_1();
  }

  else
  {
    v12 = *(v0 + 208);
    OUTLINED_FUNCTION_63_3();
    sub_1C5DAAA70();
    v13 = sub_1C60149E0();
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      v46 = *(v0 + 288);
      v27 = *(v0 + 272);
      v28 = *(v0 + 248);
      v29 = *(v0 + 256);
      v30 = *(v0 + 208);
      v31 = *(v0 + 216);
      v47 = *(v0 + 200);
      v32 = *(v0 + 80);

      sub_1C5DAAACC(v31, &qword_1EC1AB718, MEMORY[0x1E69E3BD8]);
      OUTLINED_FUNCTION_23_13();
      sub_1C5DAAB90(v28, v33);
      sub_1C5DAAACC(v27, &qword_1EC1AB760, type metadata accessor for TransitionProvider.TransitionableIdentifier);
      sub_1C5DAAB90(v29, 0);
      sub_1C5DAAACC(v46, &qword_1EC1AB760, type metadata accessor for TransitionProvider.TransitionableIdentifier);
      (*(*(v13 - 8) + 32))(v32, v30, v13);
      v34 = OUTLINED_FUNCTION_134_1();
      v35(v34);
      __swift_storeEnumTagSinglePayload(v47, 0, 1, v13);
      swift_beginAccess();
      sub_1C5DAABE8();
      swift_endAccess();

      OUTLINED_FUNCTION_172();
      goto LABEL_9;
    }

    v1 = *(v0 + 472);
    v6 = *(v0 + 480);
    OUTLINED_FUNCTION_8_27();
    v17 = sub_1C5DAAACC(v14, v15, v16);
    MEMORY[0x1C6952D20](v17);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_108_1();
    v18 = OUTLINED_FUNCTION_108();
    v1(v18);

    v5 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_125_1();
    v19 = OUTLINED_FUNCTION_137_0();
    v9 = *(v0 + 488);
    if (v19)
    {
      OUTLINED_FUNCTION_112();
      v20 = OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_136_2(v20);
      OUTLINED_FUNCTION_69_5(4.8751e-34);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_109_0();
      *(v9 + 4) = v2;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_6();
    }

    v26 = OUTLINED_FUNCTION_28_9();
    (v9)(v26);
    OUTLINED_FUNCTION_116_1();
    *(v0 + 667) = 8;
    sub_1C5DAA568();
    sub_1C5DAA618();
    v37 = OUTLINED_FUNCTION_92_1();
    v38 = sub_1C5DAA5C4();
    MEMORY[0x1C6951DD0](v0 + 667, 0xD000000000000028, 0x80000001C60507A0, MEMORY[0x1E69E7CC0], &type metadata for SmartPlayerItemTransitionError, v38);
    v3 = v37;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_8_27();
  sub_1C5DAAACC(v1, v39, v40);
  OUTLINED_FUNCTION_23_13();
  sub_1C5DAAB90(v5, v41);
  OUTLINED_FUNCTION_2_36();
  sub_1C5DAAACC(v9, &qword_1EC1AB760, v42);
  sub_1C5DAAB90(v6, v3);
  v43 = OUTLINED_FUNCTION_255();
  sub_1C5DAAACC(v43, v44, v1);
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_147_0();

  OUTLINED_FUNCTION_172();
LABEL_9:

  return v36();
}

uint64_t sub_1C5DA1A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_81_4();
  v43 = OUTLINED_FUNCTION_103_1();
  v44(v43);
  v64 = *(v39 + 616);
  v45 = OUTLINED_FUNCTION_3_36();
  sub_1C5DAAB90(v45, v46);
  v47 = OUTLINED_FUNCTION_55_2();
  sub_1C5DAAB90(v47, v48);
  OUTLINED_FUNCTION_4_37();
  sub_1C5DAAACC(v41, v49, v50);

  OUTLINED_FUNCTION_6_28();
  sub_1C5DAAB90(v40, v51);
  OUTLINED_FUNCTION_2_36();
  sub_1C5DAAACC(v38, &qword_1EC1AB760, v52);
  v53 = OUTLINED_FUNCTION_86();
  sub_1C5DAAB90(v53, v54);
  OUTLINED_FUNCTION_58_6();
  __swift_destroy_boxed_opaque_existential_0(v39 + 16);
  OUTLINED_FUNCTION_9_25();

  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_43_9();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v64, a35, a36, a37, a38);
}

uint64_t sub_1C5DA1C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_81_4();
  (*(*(v39 + 144) + 8))(*(v39 + 152), *(v39 + 136));
  v43 = *(v39 + 632);
  v44 = *(v39 + 544);
  *(v39 + 560) = *(v39 + 624);
  *(v39 + 552) = v43;
  sub_1C6016CB0();
  if (v44)
  {

    v45 = OUTLINED_FUNCTION_3_36();
    sub_1C5DAAB90(v45, v46);
    v47 = OUTLINED_FUNCTION_55_2();
    sub_1C5DAAB90(v47, v48);
    OUTLINED_FUNCTION_4_37();
    sub_1C5DAAACC(v41, v49, v50);

    OUTLINED_FUNCTION_6_28();
    sub_1C5DAAB90(v40, v51);
    OUTLINED_FUNCTION_2_36();
    sub_1C5DAAACC(v38, &qword_1EC1AB760, v52);
    v53 = OUTLINED_FUNCTION_86();
    sub_1C5DAAB90(v53, v54);
    OUTLINED_FUNCTION_58_6();
    __swift_destroy_boxed_opaque_existential_0(v39 + 16);
    OUTLINED_FUNCTION_38_7();

    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_43_9();

    return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, v44, a34, a35, a36, a37, a38);
  }

  else
  {
    v64 = *(v39 + 496);
    OUTLINED_FUNCTION_118_0();
    OUTLINED_FUNCTION_14_2();
    *(v39 + 568) = v65;
    *v65 = v66;
    OUTLINED_FUNCTION_16_20(v65);
    OUTLINED_FUNCTION_43_9();

    return MEMORY[0x1EEE5F870](v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, 0, a34, a35, a36, a37, a38);
  }
}

uint64_t sub_1C5DA1E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_81_4();
  (*(v39[18] + 8))(v39[19], v39[17]);
  v62 = v39[68];
  v43 = OUTLINED_FUNCTION_3_36();
  sub_1C5DAAB90(v43, v44);
  v45 = OUTLINED_FUNCTION_55_2();
  sub_1C5DAAB90(v45, v46);
  OUTLINED_FUNCTION_4_37();
  sub_1C5DAAACC(v41, v47, v48);

  OUTLINED_FUNCTION_6_28();
  sub_1C5DAAB90(v40, v49);
  OUTLINED_FUNCTION_2_36();
  sub_1C5DAAACC(v38, &qword_1EC1AB760, v50);
  v51 = OUTLINED_FUNCTION_86();
  sub_1C5DAAB90(v51, v52);
  OUTLINED_FUNCTION_58_6();
  __swift_destroy_boxed_opaque_existential_0((v39 + 2));
  OUTLINED_FUNCTION_9_25();

  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_43_9();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v62, a35, a36, a37, a38);
}

uint64_t sub_1C5DA2060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_81_4();
  (*(*(v38 + 144) + 8))(*(v38 + 160), *(v38 + 136));
  v42 = *(v38 + 648);
  v43 = *(v38 + 512);
  *(v38 + 528) = *(v38 + 640);
  *(v38 + 520) = v42;
  v44 = *(v38 + 224);
  OUTLINED_FUNCTION_27_15(*(v38 + 176));
  OUTLINED_FUNCTION_108();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v46 = *(v38 + 232);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v38 + 144) + 32))(*(v38 + 152), v46, *(v38 + 136));
    v47 = swift_task_alloc();
    *(v38 + 536) = v47;
    *v47 = v38;
    OUTLINED_FUNCTION_44_8(v47);
    OUTLINED_FUNCTION_43_9();

    return sub_1C5DB1F7C();
  }

  else
  {
    v50 = *v46;
    *(v38 + 560) = v46[1];
    *(v38 + 552) = v50;
    sub_1C6016CB0();
    if (v43)
    {

      v51 = OUTLINED_FUNCTION_3_36();
      sub_1C5DAAB90(v51, v52);
      v53 = OUTLINED_FUNCTION_55_2();
      sub_1C5DAAB90(v53, v54);
      OUTLINED_FUNCTION_4_37();
      sub_1C5DAAACC(v40, v55, v56);

      OUTLINED_FUNCTION_6_28();
      sub_1C5DAAB90(v39, v57);
      OUTLINED_FUNCTION_2_36();
      sub_1C5DAAACC(v44, &qword_1EC1AB760, v58);
      v59 = OUTLINED_FUNCTION_86();
      sub_1C5DAAB90(v59, v60);
      OUTLINED_FUNCTION_58_6();
      __swift_destroy_boxed_opaque_existential_0(v38 + 16);
      OUTLINED_FUNCTION_38_7();

      OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_43_9();

      return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, v43, a34, a35, a36, a37, a38);
    }

    else
    {
      v69 = *(v38 + 496);
      OUTLINED_FUNCTION_118_0();
      OUTLINED_FUNCTION_14_2();
      *(v38 + 568) = v70;
      *v70 = v71;
      OUTLINED_FUNCTION_16_20(v70);
      OUTLINED_FUNCTION_43_9();

      return MEMORY[0x1EEE5F870](v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, 0, a34, a35, a36, a37, a38);
    }
  }
}

uint64_t sub_1C5DA235C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_81_4();
  (*(v39[18] + 8))(v39[20], v39[17]);
  v62 = v39[64];
  v43 = OUTLINED_FUNCTION_3_36();
  sub_1C5DAAB90(v43, v44);
  v45 = OUTLINED_FUNCTION_55_2();
  sub_1C5DAAB90(v45, v46);
  OUTLINED_FUNCTION_4_37();
  sub_1C5DAAACC(v41, v47, v48);

  OUTLINED_FUNCTION_6_28();
  sub_1C5DAAB90(v40, v49);
  OUTLINED_FUNCTION_2_36();
  sub_1C5DAAACC(v38, &qword_1EC1AB760, v50);
  v51 = OUTLINED_FUNCTION_86();
  sub_1C5DAAB90(v51, v52);
  OUTLINED_FUNCTION_58_6();
  __swift_destroy_boxed_opaque_existential_0((v39 + 2));
  OUTLINED_FUNCTION_9_25();

  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_43_9();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v62, a35, a36, a37, a38);
}

void sub_1C5DA2544(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E6988038]) init];
  v3 = [objc_opt_self() audioMixInputParametersWithTrack_];
  [v3 setTrackID_];
  sub_1C5C64D74(0, &qword_1EC1AB520);
  sub_1C5D96190();
  if (v4)
  {
    v5 = v4;
    [v3 addEffect_];
  }

  sub_1C5D3BEAC();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C60311F0;
  *(v6 + 32) = v3;
  sub_1C5C64D74(0, &qword_1EC1AB528);
  v8 = v3;
  v7 = sub_1C6016AF0();

  [v2 setInputParameters_];

  [a1 setAudioMix_];
}

uint64_t sub_1C5DA26B8(uint64_t a1, double a2)
{
  v4 = v2;
  v92 = a1;
  v89 = type metadata accessor for SmartTransitionParameters(0);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_146();
  v88 = v8 - v7;
  OUTLINED_FUNCTION_0_56();
  sub_1C5DA4F3C(0, v9, v10, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v11);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_78_2();
  sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v90 = v13;
  v91 = v14;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_102();
  v17 = v15 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v87 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v87 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v87 - v25;
  sub_1C5D2D8C8();
  v28 = v27;
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_102();
  v32 = v30 - v31;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v36 = MEMORY[0x1EEE9AC00](v35);
  if (*(v4 + 48) != v92)
  {
    v38 = v37;
    MEMORY[0x1C6952D20](v36);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_98_1();
    sub_1C6016250();
    (*(v38 + 8))(v32, v28);

    v39 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_154_0();
    if (OUTLINED_FUNCTION_29_0())
    {
      v40 = OUTLINED_FUNCTION_112();
      v94[0] = OUTLINED_FUNCTION_21();
      *v40 = 136446210;
      v41 = *(v4 + 32);
      v42 = *(v4 + 40);

      v43 = sub_1C5C6AB10(v41, v42, v94);

      *(v40 + 4) = v43;
      OUTLINED_FUNCTION_91_2(&dword_1C5C61000, v44, v45, "[ALC:%{public}s] - Jump in the new item, cancelling transition");
      OUTLINED_FUNCTION_48_6();
      OUTLINED_FUNCTION_4();
    }

    (*(v91 + 8))(v17, v90);
    return 1;
  }

  v92 = v37;
  v46 = v89;
  if (*(v4 + 112) != 1)
  {
    MEMORY[0x1C6952D20](v36);
    OUTLINED_FUNCTION_1();
    v24 = v21;
    OUTLINED_FUNCTION_98_1();
    sub_1C6016250();
    v58 = OUTLINED_FUNCTION_131_1();
    v59(v58);

    v60 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_154_0();
    if (OUTLINED_FUNCTION_29_0())
    {
      v61 = OUTLINED_FUNCTION_112();
      v94[0] = OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_120_0(4.8751e-34);
      v62 = OUTLINED_FUNCTION_18();
      sub_1C5C6AB10(v62, v63, v64);
      OUTLINED_FUNCTION_135_1();

      *(v61 + 4) = v28;
      v67 = "[ALC:%{public}s] - Jump with a previousTransitionOffsetData, cancelling transition";
LABEL_12:
      OUTLINED_FUNCTION_91_2(&dword_1C5C61000, v65, v66, v67);
      OUTLINED_FUNCTION_48_6();
      OUTLINED_FUNCTION_4();
    }

LABEL_13:

    (*(v91 + 8))(v24, v90);
    return 1;
  }

  v47 = sub_1C5D9BCDC();
  if (v48 == 1)
  {
    MEMORY[0x1C6952D20](v47);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_98_1();
    sub_1C6016250();
    v49 = OUTLINED_FUNCTION_45_0();
    v50(v49);

    v51 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_154_0();
    if (OUTLINED_FUNCTION_29_0())
    {
      v52 = OUTLINED_FUNCTION_112();
      v94[0] = OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_120_0(4.8751e-34);
      v53 = OUTLINED_FUNCTION_18();
      sub_1C5C6AB10(v53, v54, v55);
      OUTLINED_FUNCTION_135_1();

      *(v52 + 4) = v28;
      OUTLINED_FUNCTION_91_2(&dword_1C5C61000, v56, v57, "[ALC:%{public}s] - Jump during an ongoing transition, cancelling transition");
      OUTLINED_FUNCTION_48_6();
      OUTLINED_FUNCTION_4();
    }

    (*(v91 + 8))(v26, v90);
    return 1;
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_60_6();
  sub_1C5DAAA70();
  v69 = OUTLINED_FUNCTION_99_1();
  if (!__swift_getEnumTagSinglePayload(v69, v70, v46))
  {
    OUTLINED_FUNCTION_10_25();
    v73 = v88;
    sub_1C5DAAB34(v3, v88, v74);
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v3, v75, v76);
    sub_1C6014B10();
    v78 = v77;
    OUTLINED_FUNCTION_5_32();
    v80 = sub_1C5DAAB90(v73, v79);
    if (v78 >= a2 + 0.1)
    {
      return 0;
    }

    MEMORY[0x1C6952D20](v80);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_98_1();
    sub_1C6016250();
    v81 = OUTLINED_FUNCTION_131_1();
    v82(v81);

    v60 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_154_0();
    if (OUTLINED_FUNCTION_29_0())
    {
      v83 = OUTLINED_FUNCTION_112();
      v93 = OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_120_0(4.8751e-34);
      v84 = OUTLINED_FUNCTION_18();
      sub_1C5C6AB10(v84, v85, v86);
      OUTLINED_FUNCTION_135_1();

      *(v83 + 4) = v28;
      v67 = "[ALC:%{public}s] - Jump position passes overlap start, cancelling transition";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_56();
  sub_1C5DAAACC(v3, v71, v72);
  return 0;
}

double *sub_1C5DA2D34(uint64_t a1, double a2)
{
  v83 = a1;
  sub_1C6014B20();
  OUTLINED_FUNCTION_25();
  v78 = v6;
  v79 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  v9 = v8 - v7;
  sub_1C6014A50();
  OUTLINED_FUNCTION_25();
  v80 = v11;
  v81 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_146();
  v14 = v13 - v12;
  v15 = sub_1C60149E0();
  OUTLINED_FUNCTION_25();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_10();
  sub_1C5DA4F3C(0, &qword_1EC1AB718, MEMORY[0x1E69E3BD8], MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v19);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v77 - v21;
  v82 = sub_1C6014B60();
  OUTLINED_FUNCTION_25();
  v86 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_102();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v77 - v29;
  type metadata accessor for OverlappingTransitionTimeImpl();
  swift_allocObject();
  sub_1C5DAFD74();
  v87 = v30;
  OUTLINED_FUNCTION_27();
  v84 = v2;
  sub_1C5DAAA70();
  v31 = OUTLINED_FUNCTION_56_1();
  if (__swift_getEnumTagSinglePayload(v31, v32, v15))
  {
    OUTLINED_FUNCTION_8_27();
    sub_1C5DAAACC(v22, v33, v34);
    return v87;
  }

  else
  {
    v37 = v78;
    v36 = v79;
    (*(v17 + 16))(v3, v22, v15);
    OUTLINED_FUNCTION_8_27();
    sub_1C5DAAACC(v22, v38, v39);
    sub_1C60149B0();
    (*(v17 + 8))(v3, v15);
    sub_1C6014A30();
    (*(v80 + 8))(v14, v81);
    (*(v86 + 32))(v85, v27, v82);
    sub_1C5C64D74(0, &qword_1ED7DCC30);
    v40 = v84;
    v41 = *(v84 + 56);
    v42 = sub_1C60172D0();

    if (v42)
    {
      v35 = v87;
      v87[2] = a2;
      v43 = COERCE_DOUBLE(sub_1C5D6772C());
      if (v44)
      {
        v43 = -1.0;
      }

      v35[3] = v43;
      v45 = sub_1C6014B50();
      v46 = MEMORY[0x1C69515E0](v45);
      v47 = *(v37 + 8);
      v47(v9, v36);
      v48 = a2 - v46;
      v49 = sub_1C6014B40();
      v50 = MEMORY[0x1C69515E0](v49);
      v47(v9, v36);
      if (v48 + v50 < 0.0)
      {
        v51 = 0.0;
      }

      else
      {
        v51 = v48 + v50;
      }

      v35[4] = v51;
      v52 = *(v40 + 72);
      v53 = sub_1C5D6772C();
      v55 = v54;

      v56 = OUTLINED_FUNCTION_300();
      v57(v56);
      v58 = *&v53;
      if (v55)
      {
        v58 = -1.0;
      }
    }

    else
    {
      v59 = sub_1C6014B50();
      v60 = MEMORY[0x1C69515E0](v59);
      v61 = *(v37 + 8);
      v61(v9, v36);
      v62 = v60 + a2;
      v63 = sub_1C6014B40();
      v64 = MEMORY[0x1C69515E0](v63);
      v61(v9, v36);
      if (v62 - v64 < 0.0)
      {
        v65 = 0.0;
      }

      else
      {
        v65 = v62 - v64;
      }

      v35 = v87;
      v87[2] = v65;
      v66 = *(v40 + 56);
      v67 = sub_1C5D6772C();
      v69 = v68;

      v70 = *&v67;
      if (v69)
      {
        v70 = -1.0;
      }

      v35[3] = v70;
      v35[4] = a2;
      v71 = sub_1C5D6772C();
      v73 = v72;
      v74 = OUTLINED_FUNCTION_300();
      v75(v74);
      v58 = *&v71;
      if (v73)
      {
        v58 = -1.0;
      }
    }

    v35[5] = v58;
  }

  return v35;
}

uint64_t sub_1C5DA3300()
{
  OUTLINED_FUNCTION_248();
  sub_1C6016C10();
  *(v0 + 32) = sub_1C6016C00();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_117();
  v1 = OUTLINED_FUNCTION_6_27();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C5DA337C()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 24);

  *(v0 + 40) = [v1 asset];
  v2 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C5DA33F4()
{
  OUTLINED_FUNCTION_13();
  sub_1C5DAA45C();
  v1 = sub_1C6015270();
  v0[6] = v1;
  sub_1C5CFC4D8();
  v2 = sub_1C6015280();
  v0[7] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_14_2();
  v0[8] = v3;
  *v3 = v4;
  v3[1] = sub_1C5DA34E8;

  return MEMORY[0x1EEE68148](v0 + 2, v0 + 10, v0 + 10, v1, v2, v0 + 10, 0, 0);
}

uint64_t sub_1C5DA34E8()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_101();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C5DA3660()
{
  OUTLINED_FUNCTION_247();
  v3 = v0;
  sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v42 = v5;
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_102();
  v41 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_64_6();
  sub_1C5DA4F3C(0, &qword_1EC1AB720, v2, MEMORY[0x1E69E6720]);
  v10 = OUTLINED_FUNCTION_13_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_102();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - v15;
  v17 = OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_outgoingParameters;
  OUTLINED_FUNCTION_82_2();
  sub_1C5DAAA70();
  v18 = type metadata accessor for SmartTransitionParameters(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v18);
  sub_1C5DAAACC(v16, &qword_1EC1AB720, v2);
  if (EnumTagSinglePayload == 1 && (OUTLINED_FUNCTION_27(), OUTLINED_FUNCTION_67_4(), sub_1C5DAAA70(), v20 = __swift_getEnumTagSinglePayload(v14, 1, v18), sub_1C5DAAACC(v14, &qword_1EC1AB720, &qword_1EC1AB720), v20 == 1))
  {
    v21 = v41;
    OUTLINED_FUNCTION_1_48();
    sub_1C60162C0();

    v22 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_75_2();

    if (os_log_type_enabled(v22, v17))
    {
      OUTLINED_FUNCTION_112();
      v44 = OUTLINED_FUNCTION_53_5();
      *v1 = 136446210;
      v24 = *(v3 + 32);
      v23 = *(v3 + 40);

      v25 = sub_1C5C6AB10(v24, v23, &v44);

      *(v1 + 4) = v25;
      _os_log_impl(&dword_1C5C61000, v22, v17, "[ALC:%{public}s] - Skipping transition cancellation - no transition has been applied to the player items", v1, 0xCu);
      OUTLINED_FUNCTION_48_6();
      OUTLINED_FUNCTION_6();
    }

    (*(v42 + 8))(v21, v43);
  }

  else
  {
    v41 = v18;
    OUTLINED_FUNCTION_1_48();
    sub_1C60162C0();

    v26 = sub_1C60162B0();
    v27 = sub_1C6016F30();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_112();
      v44 = OUTLINED_FUNCTION_21();
      *v28 = 136446210;

      v29 = OUTLINED_FUNCTION_300();
      v32 = sub_1C5C6AB10(v29, v30, v31);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1C5C61000, v26, v27, "[ALC:%{public}s] - Tearing down transition", v28, 0xCu);
      OUTLINED_FUNCTION_48_6();
      OUTLINED_FUNCTION_4();
    }

    (*(v42 + 8))(v1, v43);
    v33 = *(v3 + 56);
    sub_1C5DA3AF4();

    v34 = *(v3 + 72);
    sub_1C5DA43CC();

    objc_opt_self();
    OUTLINED_FUNCTION_34_4();
    v35 = swift_dynamicCastObjCClass();
    v36 = v41;
    if (v35)
    {
      [v35 clearPlannedContentItemTransitionInfo];
    }

    v37 = OUTLINED_FUNCTION_99_1();
    __swift_storeEnumTagSinglePayload(v37, v38, 1, v36);
    OUTLINED_FUNCTION_144_0();
    OUTLINED_FUNCTION_66_7();
    sub_1C5DAABE8();
    swift_endAccess();
    v39 = OUTLINED_FUNCTION_99_1();
    __swift_storeEnumTagSinglePayload(v39, v40, 1, v36);
    OUTLINED_FUNCTION_144_0();
    sub_1C5DAABE8();
    swift_endAccess();
    *(v3 + 137) = 0;
    *(v3 + 139) = 0;
  }

  OUTLINED_FUNCTION_237();
}

void sub_1C5DA3AF4()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v3 = v2;
  v93 = sub_1C6014B20();
  OUTLINED_FUNCTION_25();
  v92 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  v91 = v7 - v6;
  v8 = sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_102();
  v94 = v12 - v13;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v90 = v83 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v83 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v83 - v20;
  sub_1C5D9BCDC();
  OUTLINED_FUNCTION_128_0();
  if (v23)
  {
    v24 = v22 == 4;
  }

  else
  {
    v24 = 0;
  }

  if (!v24)
  {
    sub_1C5DA2544(v3);
    v26 = *(MEMORY[0x1E6960C70] + 8);
    v27 = *(MEMORY[0x1E6960C70] + 12);
    v28 = *(MEMORY[0x1E6960C70] + 16);
    v96[0] = *MEMORY[0x1E6960C70];
    v25 = v96[0];
    v96[1] = __PAIR64__(v27, v26);
    v96[2] = v28;
    [v3 setAdvanceTimeForOverlappedPlayback_];
    [v3 forwardPlaybackEndTime];
    OUTLINED_FUNCTION_133_1();
    v88 = v26;
    v87 = v27;
    v29 = OUTLINED_FUNCTION_121_0();
    v89 = v25;
    if (v29)
    {
      v86 = v8;
      OUTLINED_FUNCTION_1_48();
      sub_1C60162C0();

      v30 = v3;
      v31 = sub_1C60162B0();
      v32 = sub_1C6016F30();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = OUTLINED_FUNCTION_68_0();
        v85 = v10;
        v34 = v33;
        v83[0] = OUTLINED_FUNCTION_119_0();
        v96[0] = v83[0];
        *v34 = 136446466;
        v83[1] = v28;
        v35 = v30;
        OUTLINED_FUNCTION_140_1();
        v36 = sub_1C5C6AB10(v30, v3, v96);

        *(v34 + 4) = v36;
        *(v34 + 12) = 2082;
        v37 = sub_1C5DBCDF8();
        v39 = sub_1C5C6AB10(v37, v38, v96);
        v30 = v35;

        *(v34 + 14) = v39;
        v3 = v84;
        _os_log_impl(&dword_1C5C61000, v31, v32, "[ALC:%{public}s] - forwardPlaybackEndTime had been set on %{public}s - resetting to .invalid", v34, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_28();
        v10 = v85;
        OUTLINED_FUNCTION_4();
      }

      v8 = v86;
      (*(v10 + 8))(v21, v86);
      v96[0] = v89;
      OUTLINED_FUNCTION_61_3();
      [v30 v40];
    }

    [v3 overlappedPlaybackEndTime];
    OUTLINED_FUNCTION_133_1();
    if (OUTLINED_FUNCTION_121_0())
    {
      v85 = v10;
      OUTLINED_FUNCTION_1_48();
      sub_1C60162C0();

      v41 = v3;
      v42 = sub_1C60162B0();
      v43 = sub_1C6016F30();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = OUTLINED_FUNCTION_68_0();
        v86 = v8;
        v45 = v44;
        v96[0] = OUTLINED_FUNCTION_119_0();
        *v45 = 136446466;
        OUTLINED_FUNCTION_140_1();
        v46 = sub_1C5C6AB10(v19, v3, v96);

        *(v45 + 4) = v46;
        *(v45 + 12) = 2082;
        v47 = sub_1C5DBCDF8();
        v49 = sub_1C5C6AB10(v47, v48, v96);

        *(v45 + 14) = v49;
        v3 = v84;
        _os_log_impl(&dword_1C5C61000, v42, v43, "[ALC:%{public}s] - overlappedPlaybackEndTime had been set on %{public}s - resetting to .invalid", v45, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_4();
        v8 = v86;
        OUTLINED_FUNCTION_4();
      }

      v10 = v85;
      (*(v85 + 8))(v19, v8);
      v96[0] = v89;
      OUTLINED_FUNCTION_61_3();
      [v41 v50];
    }
  }

  sub_1C5D9BCDC();
  OUTLINED_FUNCTION_128_0();
  if (v23)
  {
    v52 = v51 == 4;
  }

  else
  {
    v52 = 0;
  }

  if (!v52)
  {
    v53 = v10;
    v54 = *(v1 + 56);
    sub_1C5DB1894();
    v56 = v55;

    if (v56 & 1) != 0 || (v57 = v91, sub_1C6014AF0(), sub_1C5DAB728(v96), (*(v92 + 8))(v57, v93), (v97))
    {
      v58 = v94;
      OUTLINED_FUNCTION_1_48();
      sub_1C60162C0();

      v59 = v3;
      v60 = sub_1C60162B0();
      v61 = sub_1C6016F30();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = OUTLINED_FUNCTION_68_0();
        v98[0] = OUTLINED_FUNCTION_119_0();
        *v62 = 136446466;
        v63 = *(v1 + 32);
        v64 = *(v1 + 40);

        sub_1C5C6AB10(v63, v64, v98);

        v65 = OUTLINED_FUNCTION_152_0();
        v67 = sub_1C5C6AB10(v65, v66, v98);

        *(v62 + 14) = v67;
        OUTLINED_FUNCTION_151_0(&dword_1C5C61000, v68, v69, "[ALC:%{public}s] - Resetting speedRamps to nil on outgoingItem: %{public}s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_4();

        (*(v53 + 8))(v94, v8);
      }

      else
      {

        (*(v53 + 8))(v58, v8);
      }
    }

    else
    {
      memcpy(v98, v96, 0x60uLL);
      v70 = v90;
      OUTLINED_FUNCTION_1_48();
      sub_1C60162C0();

      v71 = v3;
      v72 = sub_1C60162B0();
      v73 = sub_1C6016F30();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = OUTLINED_FUNCTION_68_0();
        v95 = OUTLINED_FUNCTION_119_0();
        *v74 = 136446466;
        v75 = *(v1 + 32);
        v76 = *(v1 + 40);

        sub_1C5C6AB10(v75, v76, &v95);

        v77 = OUTLINED_FUNCTION_152_0();
        v79 = sub_1C5C6AB10(v77, v78, &v95);

        *(v74 + 14) = v79;
        OUTLINED_FUNCTION_151_0(&dword_1C5C61000, v80, v81, "[ALC:%{public}s] - Resetting speedRamps to previous shell on outgoingItem: %{public}s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_4();

        (*(v53 + 8))(v90, v8);
      }

      else
      {

        (*(v53 + 8))(v70, v8);
      }

      sub_1C5DA4F3C(0, &qword_1EC1AAE50, type metadata accessor for CMTimeMapping, MEMORY[0x1E69E6F90]);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_1C60311E0;
      memcpy((v82 + 32), v98, 0x60uLL);
    }

    sub_1C6016E90();
  }

  OUTLINED_FUNCTION_237();
}

void sub_1C5DA43CC()
{
  OUTLINED_FUNCTION_247();
  v2 = v0;
  v4 = v3;
  v5 = sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_102();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_104_0();
  sub_1C5DA2544(v4);
  sub_1C5D9BCDC();
  OUTLINED_FUNCTION_128_0();
  if (v14)
  {
    v15 = v13 == 4;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    v69 = v11;
    v71 = v7;
    OUTLINED_FUNCTION_1_48();
    sub_1C60162C0();

    v16 = v4;
    v17 = sub_1C60162B0();
    v18 = sub_1C6016F30();

    if (os_log_type_enabled(v17, v18))
    {
      v67 = v5;
      v19 = OUTLINED_FUNCTION_68_0();
      v74 = OUTLINED_FUNCTION_119_0();
      *v19 = 136446466;
      v20 = *(v0 + 32);

      v21 = OUTLINED_FUNCTION_85_0();
      sub_1C5C6AB10(v21, v22, v23);
      OUTLINED_FUNCTION_155_0();
      *(v19 + 4) = v20;
      *(v19 + 12) = 2082;
      v24 = sub_1C5DBCDF8();
      v26 = sub_1C5C6AB10(v24, v25, &v74);

      *(v19 + 14) = v26;
      OUTLINED_FUNCTION_149_1(&dword_1C5C61000, v27, v28, "[ALC:%{public}s] - Resetting speedRamps to nil on incomingItem: %{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4();
      v5 = v67;
      OUTLINED_FUNCTION_4();
    }

    v7 = v71;
    (*(v71 + 8))(v1, v5);
    sub_1C6016E90();
    v11 = v69;
  }

  if (MSVDeviceOSIsInternalInstall() && (v29 = [objc_opt_self() standardUserDefaults], v30 = sub_1C6016900(), v31 = objc_msgSend(v29, sel_BOOLForKey_, v30), v29, v30, v31))
  {
    v32 = swift_allocObject();
    *(v32 + 16) = v2;
    *(v32 + 24) = v4;

    v33 = v4;
    v34 = 0;
    v35 = sub_1C5DAA454;
  }

  else
  {
    v35 = 0;
    v32 = 0;
    v34 = 1;
  }

  if ((*(v2 + 138) & 1) != 0 || ((sub_1C5D9BCDC(), OUTLINED_FUNCTION_128_0(), v14) ? (v37 = v36 == 4) : (v37 = 0), v37))
  {
    sub_1C5C74C18(v35);
  }

  else
  {
    v65 = v34;
    v72 = v7;
    OUTLINED_FUNCTION_1_48();
    sub_1C60162C0();

    v38 = v4;
    v39 = sub_1C60162B0();
    v40 = v11;
    v41 = sub_1C6016F30();

    v66 = v38;
    if (os_log_type_enabled(v39, v41))
    {
      v68 = v5;
      v42 = OUTLINED_FUNCTION_68_0();
      v74 = OUTLINED_FUNCTION_119_0();
      *v42 = 136446466;
      v43 = *(v2 + 32);

      v44 = OUTLINED_FUNCTION_85_0();
      sub_1C5C6AB10(v44, v45, v46);
      OUTLINED_FUNCTION_155_0();
      *(v42 + 4) = v43;
      *(v42 + 12) = 2082;
      v47 = sub_1C5DBCDF8();
      v49 = sub_1C5C6AB10(v47, v48, &v74);

      *(v42 + 14) = v49;
      OUTLINED_FUNCTION_149_1(&dword_1C5C61000, v50, v51, "[ALC:%{public}s] - Attempting to seek to 0.0 on incomingItem: %{public}s due to cancellation prior to pivot point");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_4();

      (*(v72 + 8))(v40, v68);
    }

    else
    {

      v52 = OUTLINED_FUNCTION_134_1();
      v54(v52, v53);
    }

    v73 = sub_1C5D67CC0(0.0);
    v56 = v55;
    v58 = v57;
    v59 = HIDWORD(v55);
    v60 = *MEMORY[0x1E6960CC0];
    v62 = *(MEMORY[0x1E6960CC0] + 8);
    v61 = *(MEMORY[0x1E6960CC0] + 12);
    v63 = *(MEMORY[0x1E6960CC0] + 16);
    if (v65)
    {
      v64 = 0;
    }

    else
    {
      v78 = v35;
      v79 = v32;
      v74 = MEMORY[0x1E69E9820];
      v70 = HIDWORD(v55);
      v75 = 1107296256;
      v76 = sub_1C5DBCF1C;
      v77 = &block_descriptor_18;
      v64 = _Block_copy(&v74);

      LODWORD(v59) = v70;
    }

    v74 = v73;
    v75 = __PAIR64__(v59, v56);
    v76 = v58;
    v83 = v63;
    v84 = v60;
    v85 = v62;
    v86 = v61;
    v87 = v63;
    v80 = v60;
    v81 = v62;
    v82 = v61;
    [v66 seekToTime:&v74 toleranceBefore:&v84 toleranceAfter:&v80 completionHandler:v64];
    sub_1C5C74C18(v35);
    _Block_release(v64);
  }

  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5DA4904(char a1, uint64_t a2, void *a3)
{
  v6 = sub_1C60162D0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C60162C0();

  v10 = a3;
  v11 = sub_1C60162B0();
  v12 = sub_1C6016F30();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v6;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136446722;
    v16 = *(a2 + 32);
    v17 = *(a2 + 40);

    v18 = sub_1C5C6AB10(v16, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    if (a1)
    {
      v19 = 0x6564656563637553;
    }

    else
    {
      v19 = 0x64656C696146;
    }

    if (a1)
    {
      v20 = 0xE900000000000064;
    }

    else
    {
      v20 = 0xE600000000000000;
    }

    v21 = sub_1C5C6AB10(v19, v20, &v27);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2082;
    v22 = sub_1C5DBCDF8();
    v24 = sub_1C5C6AB10(v22, v23, &v27);

    *(v14 + 24) = v24;
    _os_log_impl(&dword_1C5C61000, v11, v12, "[ALC:%{public}s] - %{public}s to seek to 0.0 on incomingItem: %{public}s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6956920](v15, -1, -1);
    MEMORY[0x1C6956920](v14, -1, -1);

    return (*(v7 + 8))(v9, v26);
  }

  else
  {

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1C5DA4BB4()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_8_27();
  sub_1C5DAAACC(v0 + v1, v2, v3);
  sub_1C5C96DF0(v0 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_delegate);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionProvider);
  OUTLINED_FUNCTION_20_20();
  sub_1C5DAAB90(v0 + v4, v5);

  OUTLINED_FUNCTION_66_7();
  sub_1C5DAAACC(v0 + v6, &qword_1EC1AB720, v7);
  OUTLINED_FUNCTION_132_0();
  sub_1C5DAAACC(v8, v9, v10);
  return v0;
}

uint64_t sub_1C5DA4CA8()
{
  sub_1C5DA4BB4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for SmartPlayerItemTransition()
{
  result = qword_1EC1A9048;
  if (!qword_1EC1A9048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C5DA4D54()
{
  sub_1C5DA4F3C(319, &qword_1EC1AB718, MEMORY[0x1E69E3BD8], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PlayerItemTransitionProvided(319);
    if (v1 <= 0x3F)
    {
      sub_1C5DA4F3C(319, &qword_1EC1AB720, type metadata accessor for SmartTransitionParameters, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C5DA4F3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_BYTE *_s17MediaPlaybackCore43SmartPlayerItemTransitionSetupFailureReasonOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C5DA5080()
{
  result = qword_1EC1AB728;
  if (!qword_1EC1AB728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB728);
  }

  return result;
}

uint64_t sub_1C5DA512C()
{
  v2 = sub_1C6014B20();
  OUTLINED_FUNCTION_25();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  v8 = v7 - v6;
  v9 = type metadata accessor for SmartTransitionParameters(0);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_64_6();
  sub_1C5DA4F3C(0, &qword_1EC1AB720, v1, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v11);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  OUTLINED_FUNCTION_27();
  sub_1C5DAAA70();
  if (__swift_getEnumTagSinglePayload(v14, 1, v9))
  {
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v14, v15, v16);
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_25();
    sub_1C5DAAB34(v14, v0, v18);
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v14, v19, v20);
    (*(v4 + 16))(v8, v0 + *(v9 + 24), v2);
    OUTLINED_FUNCTION_5_32();
    sub_1C5DAAB90(v0, v21);
    sub_1C6014B10();
    v23 = v22;
    (*(v4 + 8))(v8, v2);
    return v23;
  }
}

void sub_1C5DA537C()
{
  OUTLINED_FUNCTION_153_0();
  v3 = type metadata accessor for SmartTransitionParameters(0);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_67_4();
  sub_1C5DA4F3C(0, &qword_1EC1AB720, v2, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v5);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_82_2();
  sub_1C5DAAA70();
  v7 = OUTLINED_FUNCTION_99_1();
  if (__swift_getEnumTagSinglePayload(v7, v8, v3))
  {
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v1, v9, v10);
  }

  else
  {
    sub_1C5DAAB34(v1, v0, type metadata accessor for SmartTransitionParameters);
    OUTLINED_FUNCTION_0_56();
    sub_1C5DAAACC(v1, v11, v12);
    OUTLINED_FUNCTION_5_32();
    sub_1C5DAAB90(v0, v13);
  }

  OUTLINED_FUNCTION_146_0();
}

double sub_1C5DA5520@<D0>(uint64_t a1@<X8>)
{
  sub_1C5D9BCC4(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1C5DA55B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C5CBCD24;

  return sub_1C5D9C50C();
}

BOOL sub_1C5DA56B8()
{
  v1 = v0;
  sub_1C5DA4F3C(0, &qword_1EC1AB720, type metadata accessor for SmartTransitionParameters, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for SmartTransitionParameters(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1C5DAAA70();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1C5DAAACC(v4, &qword_1EC1AB720, type metadata accessor for SmartTransitionParameters);
    return 0;
  }

  sub_1C5DAAD4C(v4, v7, type metadata accessor for SmartTransitionParameters);
  v8 = [*(v1 + 56) timebase];
  if (!v8)
  {
    sub_1C5DAAB90(v7, type metadata accessor for SmartTransitionParameters);
    return 0;
  }

  v9 = v8;
  sub_1C6016EC0();

  if (*(v1 + 137))
  {
    v10 = 1;
  }

  else
  {
    sub_1C6017220();
    v12 = v11;
    sub_1C6014B10();
    v10 = v13 <= v12;
  }

  sub_1C5DAAB90(v7, type metadata accessor for SmartTransitionParameters);
  return v10;
}

uint64_t sub_1C5DA5900()
{
  v1 = sub_1C6014B20();
  v46 = *(v1 - 8);
  v47 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v45 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C6014B60();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6014A50();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1C5DA4F3C(0, &qword_1EC1AB718, MEMORY[0x1E69E3BD8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v11 = sub_1C60149E0();
  v49 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5DA4F3C(0, &qword_1EC1AB720, type metadata accessor for SmartTransitionParameters, v7);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - v17;
  swift_beginAccess();
  sub_1C5DAAA70();
  v19 = type metadata accessor for SmartTransitionParameters(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v19);
  sub_1C5DAAACC(v18, &qword_1EC1AB720, type metadata accessor for SmartTransitionParameters);
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  sub_1C5DAAA70();
  v21 = __swift_getEnumTagSinglePayload(v16, 1, v19);
  sub_1C5DAAACC(v16, &qword_1EC1AB720, type metadata accessor for SmartTransitionParameters);
  if (v21 == 1)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  sub_1C5DAAA70();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    v23 = v48;
    v22 = v49;
    (*(v49 + 32))(v48, v10, v11);
    if (*(v0 + 138))
    {
      goto LABEL_6;
    }

    v31 = [*(v0 + 56) timebase];
    if (v31)
    {
      v32 = v31;
      sub_1C6016EC0();

      sub_1C6017220();
      v27 = v33;
      v34 = v39;
      sub_1C60149B0();
      v29 = v42;
      sub_1C60149F0();
      (*(v40 + 8))(v34, v41);
      v30 = v45;
      sub_1C6014B50();
      goto LABEL_10;
    }

    if (*(v0 + 138) == 1)
    {
LABEL_6:
      v24 = [*(v0 + 72) timebase];
      if (v24)
      {
        v25 = v24;
        sub_1C6016EC0();

        sub_1C6017220();
        v27 = v26;
        v28 = v39;
        sub_1C60149B0();
        v29 = v42;
        sub_1C60149F0();
        (*(v40 + 8))(v28, v41);
        v30 = v45;
        sub_1C6014B40();
LABEL_10:
        (*(v43 + 8))(v29, v44);
        sub_1C6014B10();
        v36 = v35;
        (*(v46 + 8))(v30, v47);
        (*(v22 + 8))(v23, v11);
        *&result = v36 - v27;
        return result;
      }
    }

    (*(v22 + 8))(v23, v11);
    goto LABEL_13;
  }

  sub_1C5DAAACC(v10, &qword_1EC1AB718, MEMORY[0x1E69E3BD8]);
LABEL_13:
  *&result = 0.0;
  return result;
}

uint64_t sub_1C5DA5F80(uint64_t a1)
{
  v2[181] = v1;
  v2[175] = a1;
  v3 = sub_1C6014A50();
  v2[187] = v3;
  v2[193] = *(v3 - 8);
  v2[199] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5DA6044, 0, 0);
}

uint64_t sub_1C5DA6044()
{
  OUTLINED_FUNCTION_23();
  sub_1C6016CB0();

  sub_1C5DAA6F4();
  OUTLINED_FUNCTION_100_1();

  OUTLINED_FUNCTION_100_1();
  sub_1C6016CB0();
  *(v0 + 1640) = 0;
  v1 = *(v0 + 1448);
  v2 = sub_1C60149B0();
  v3 = MEMORY[0x1C69514E0](v2);
  v4 = OUTLINED_FUNCTION_252();
  v5(v4);
  *(v1 + 88) = v3;

  return MEMORY[0x1EEE6DEC0](v0 + 16, v0 + 1336, sub_1C5DA6200, v0 + 1456);
}

uint64_t sub_1C5DA6200()
{
  *(v1 + 1688) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 656, v1 + 1368, sub_1C5DA6668, v1 + 1504);
  }

  else
  {
    return OUTLINED_FUNCTION_0_2(sub_1C5DA623C);
  }
}

uint64_t sub_1C5DA623C()
{
  OUTLINED_FUNCTION_248();
  sub_1C6017220();
  *(v0 + 1736) = v1;

  return MEMORY[0x1EEE6DEC0](v0 + 656, v0 + 1368, sub_1C5DA62B0, v0 + 1600);
}

uint64_t sub_1C5DA62B0()
{
  *(v1 + 1784) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 656, v1 + 1368, sub_1C5DA6710, v1 + 1648);
  }

  else
  {
    return OUTLINED_FUNCTION_0_2(sub_1C5DA62EC);
  }
}

uint64_t sub_1C5DA62EC()
{
  OUTLINED_FUNCTION_248();
  sub_1C6017220();
  *(v0 + 1832) = v1;
  sub_1C6016C10();
  *(v0 + 1880) = sub_1C6016C00();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_117();
  v2 = OUTLINED_FUNCTION_6_27();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C5DA637C()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[229];
  v2 = *(v0 + 223);
  v3 = v0[217];
  v4 = *(v0 + 181);
  v5 = *(v0 + 175);

  sub_1C5DA6BDC(v4, v5, v3, v1);
  *(v0 + 241) = v2;
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C5DA6494()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_123_1();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5DA6560()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_123_1();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5DA6608()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_123_1();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5DA66B0()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_123_1();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5DA6758()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_123_1();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5DA67B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C5DA67D8, 0, 0);
}

uint64_t sub_1C5DA67D8()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0[3] + 56);
  v0[4] = v1;
  v2 = v1;
  v3 = OUTLINED_FUNCTION_118_0();
  v0[5] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_75_5(v3);

  return sub_1C5DA32E8(v4);
}

uint64_t sub_1C5DA686C()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_8_0();
  v11 = v10;
  OUTLINED_FUNCTION_30();
  *v12 = v11;
  v13 = *v1;
  OUTLINED_FUNCTION_101();
  *v14 = v13;
  *(v11 + 48) = v0;

  if (!v0)
  {

    *(v11 + 56) = v5;
    *(v11 + 64) = v3;
    *(v11 + 72) = v7;
    *(v11 + 80) = v9;
  }

  OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C5DA698C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C5DA69AC, 0, 0);
}

uint64_t sub_1C5DA69AC()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0[3] + 72);
  v0[4] = v1;
  v2 = v1;
  v3 = OUTLINED_FUNCTION_118_0();
  v0[5] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_75_5(v3);

  return sub_1C5DA32E8(v4);
}

uint64_t sub_1C5DA6A40()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_8_0();
  v11 = v10;
  OUTLINED_FUNCTION_30();
  *v12 = v11;
  v13 = *v1;
  OUTLINED_FUNCTION_101();
  *v14 = v13;
  *(v11 + 48) = v0;

  if (!v0)
  {

    *(v11 + 56) = v5;
    *(v11 + 64) = v3;
    *(v11 + 72) = v7;
    *(v11 + 80) = v9;
  }

  OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C5DA6B60()
{
  v1 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[2];
  *v4 = v0[10];
  v4[1] = v1;
  v4[2] = v3;
  v4[3] = v2;
  return OUTLINED_FUNCTION_54_5();
}

uint64_t sub_1C5DA6B80()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v1();
}

uint64_t sub_1C5DA6BDC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v37 = a2;
  v8 = sub_1C6014AE0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C60162D0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C6016CB0();
  if (!v4)
  {
    v34 = 0;
    v35 = v9;
    v36 = v8;
    sub_1C60162C0();

    v17 = sub_1C60162B0();
    v18 = sub_1C6016F30();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v32 = v19;
      v33 = swift_slowAlloc();
      v38 = v33;
      *v19 = 136446210;
      v21 = *(a1 + 32);
      v20 = *(a1 + 40);

      v22 = sub_1C5C6AB10(v21, v20, &v38);

      v23 = v32;
      *(v32 + 1) = v22;
      _os_log_impl(&dword_1C5C61000, v17, v18, "[ALC:%{public}s] - Apply smart transition to player items", v23, 0xCu);
      v24 = v33;
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x1C6956920](v24, -1, -1);
      MEMORY[0x1C6956920](v23, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
    v25 = *(a1 + 56);
    v26 = v37;
    sub_1C60149A0();
    v27 = sub_1C60149D0();
    sub_1C5DA6F4C(v25, 1, v11, v27, a3);

    v28 = v36;
    v29 = *(v35 + 8);
    v29(v11, v36);
    v30 = *(a1 + 72);
    sub_1C6014990();
    v31 = sub_1C60149C0();
    sub_1C5DA6F4C(v30, 0, v11, v31, a4);

    v29(v11, v28);
    sub_1C5DA85F4(v26);
    return sub_1C6016CB0();
  }

  return result;
}

uint64_t sub_1C5DA6F4C(void (*a1)(void, void), char a2, uint64_t a3, char *a4, double a5)
{
  v211 = a4;
  v219 = a3;
  v213 = a1;
  v210 = sub_1C6014AE0();
  v206 = *(v210 - 8);
  v7 = MEMORY[0x1EEE9AC00](v210);
  v205 = (&v197 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v204 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v203 = &v197 - v9;
  v10 = sub_1C60162D0();
  v217 = *(v10 - 8);
  v218 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v208 = &v197 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v200 = &v197 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v201 = &v197 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v209 = &v197 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v199 = &v197 - v19;
  v20 = MEMORY[0x1E69E6720];
  sub_1C5DA4F3C(0, &qword_1EC1AB720, type metadata accessor for SmartTransitionParameters, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v197 - v22;
  sub_1C5DA4F3C(0, &qword_1EC1AB750, MEMORY[0x1E69E3C00], v20);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v197 - v25;
  v27 = sub_1C6014B20();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v202 = (&v197 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x1EEE9AC00](v29);
  v207 = &v197 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v197 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v198 = &v197 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v197 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v197 - v41;
  v43 = type metadata accessor for SmartTransitionParameters(0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v197 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = v27;
  v214 = v45;
  v212 = v28;
  if (a2)
  {
    v204 = v35;
    sub_1C6014A90();
    sub_1C6014AB0();
    v46 = *(v28 + 16);
    v206 = v42;
    v46(v45, v42, v27);
    v47 = v43[5];
    sub_1C6014A80();
    sub_1C6014AA0();
    sub_1C6014AC0();
    v49 = v48;
    v208 = v26;
    sub_1C5DAAA70();
    *&v45[v43[7]] = v49;
    sub_1C5DAAB34(v45, v23, type metadata accessor for SmartTransitionParameters);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v43);
    v50 = v215;
    swift_beginAccess();
    sub_1C5DAABE8();
    swift_endAccess();
    v51 = &v45[v47];
    v52 = v216;
    v205 = v46;
    v53 = (v46)(v40, v51, v216);
    v54 = MEMORY[0x1C69515E0](v53);
    v55 = v50;
    v56 = v213;
    v57 = v40;
    v210 = v40;
    v58 = v209;
    v59 = v207;
    if (a5 + 0.1 < v54)
    {
      sub_1C6014B10();
      if (a5 + 0.1 < v60)
      {
        sub_1C60162C0();
        v61 = v205;
        v205(v198, v57, v52);
        v62 = v204;
        v61(v204, v57, v52);

        v63 = v56;
        v64 = sub_1C60162B0();
        v65 = sub_1C6016F30();

        LODWORD(v203) = v65;
        v66 = os_log_type_enabled(v64, v65);
        v67 = v52;
        if (v66)
        {
          v68 = v62;
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          aBlock = v70;
          *v69 = 136447234;
          v202 = v64;
          v71 = *(v55 + 32);
          v72 = *(v55 + 40);

          v73 = sub_1C5C6AB10(v71, v72, &aBlock);

          *(v69 + 4) = v73;
          *(v69 + 12) = 2050;
          v74 = v198;
          sub_1C6014B10();
          v76 = v75;
          v77 = *(v212 + 8);
          v77(v74, v67);
          *(v69 + 14) = v76;
          *(v69 + 22) = 2082;
          v78 = sub_1C5DBCDF8();
          v80 = sub_1C5C6AB10(v78, v79, &aBlock);

          *(v69 + 24) = v80;
          *(v69 + 32) = 2050;
          v82 = MEMORY[0x1C69515E0](v81);
          v77(v68, v67);
          v55 = v215;
          *(v69 + 34) = v82;
          *(v69 + 42) = 2050;
          *(v69 + 44) = a5;
          v83 = v202;
          _os_log_impl(&dword_1C5C61000, v202, v203, "[ALC:%{public}s] - Setting forwardPlaybackEndTime to %{public}f on %{public}s due to transition endTime: %{public}f exceeding duration: %{public}f", v69, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x1C6956920](v70, -1, -1);
          v56 = v213;
          v58 = v209;
          v59 = v207;
          MEMORY[0x1C6956920](v69, -1, -1);
        }

        else
        {

          v144 = *(v212 + 8);
          v144(v62, v52);
          v144(v198, v52);
        }

        (*(v217 + 8))(v199, v218);
        v57 = v210;
        sub_1C6014B10();
        aBlock = sub_1C6017130();
        v229 = v145;
        v230 = v146;
        [v63 setForwardPlaybackEndTime_];
        v52 = v216;
      }
    }

    sub_1C60162C0();
    v205(v59, v57, v52);

    v147 = v56;
    v148 = sub_1C60162B0();
    v149 = sub_1C6016F30();

    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      aBlock = v207;
      *v150 = 136446722;
      v151 = *(v55 + 32);
      v152 = v55;
      v153 = v212;
      v154 = *(v152 + 40);

      v155 = sub_1C5C6AB10(v151, v154, &aBlock);

      *(v150 + 4) = v155;
      *(v150 + 12) = 2050;
      sub_1C6014B10();
      v157 = v156;
      v213 = *(v153 + 8);
      v213(v59, v52);
      *(v150 + 14) = v157;
      *(v150 + 22) = 2082;
      v158 = sub_1C5DBCDF8();
      v160 = sub_1C5C6AB10(v158, v159, &aBlock);

      *(v150 + 24) = v160;
      v55 = v152;
      _os_log_impl(&dword_1C5C61000, v148, v149, "[ALC:%{public}s] - Setting overlappedPlaybackEndTime to %{public}f on %{public}s", v150, 0x20u);
      v161 = v207;
      swift_arrayDestroy();
      MEMORY[0x1C6956920](v161, -1, -1);
      v162 = v150;
      v57 = v210;
      MEMORY[0x1C6956920](v162, -1, -1);

      v163 = v218;
      v164 = *(v217 + 8);
      v165 = v209;
    }

    else
    {

      v213 = *(v212 + 8);
      v213(v59, v52);
      v163 = v218;
      v164 = *(v217 + 8);
      v165 = v58;
    }

    v209 = v164;
    (v164)(v165, v163);
    v166 = v208;
    v167 = v206;
    v168 = v211;
    sub_1C6014B10();
    aBlock = sub_1C6017130();
    v229 = v169;
    v230 = v170;
    [v147 setOverlappedPlaybackEndTime_];
    [v147 setAudioMix_];
    sub_1C5DAED88();
    if (v171)
    {
      v172 = *MEMORY[0x1E6960C70];
      LODWORD(v173) = *(MEMORY[0x1E6960C70] + 8);
      LODWORD(v174) = *(MEMORY[0x1E6960C70] + 12);
      v175 = *(MEMORY[0x1E6960C70] + 16);
    }

    else
    {
      v172 = sub_1C6017130();
      v174 = HIDWORD(v173);
    }

    aBlock = v172;
    v229 = __PAIR64__(v174, v173);
    v230 = v175;
    [v147 setAdvanceTimeForOverlappedPlayback_];
    v176 = sub_1C6014A70();
    v177 = sub_1C5DAB860(v176);

    if (v177)
    {
      v178 = v201;
      sub_1C60162C0();
      swift_bridgeObjectRetain_n();

      v179 = v147;
      v180 = sub_1C60162B0();
      v181 = sub_1C6016F30();

      if (os_log_type_enabled(v180, v181))
      {
        v182 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        aBlock = v183;
        *v182 = 136446722;
        v185 = *(v55 + 32);
        v184 = *(v55 + 40);

        v186 = sub_1C5C6AB10(v185, v184, &aBlock);

        *(v182 + 4) = v186;
        *(v182 + 12) = 2082;
        v187 = sub_1C5DBCDF8();
        v189 = sub_1C5C6AB10(v187, v188, &aBlock);

        *(v182 + 14) = v189;
        *(v182 + 22) = 2050;
        v190 = *(v177 + 16);

        *(v182 + 24) = v190;

        _os_log_impl(&dword_1C5C61000, v180, v181, "[ALC:%{public}s] - Setting speedRamp for outgoing item - %{public}s with %{public}ld time mappings", v182, 0x20u);
        swift_arrayDestroy();
        v191 = v183;
        v167 = v206;
        MEMORY[0x1C6956920](v191, -1, -1);
        v192 = v182;
        v166 = v208;
        MEMORY[0x1C6956920](v192, -1, -1);

        v193 = v201;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v193 = v178;
      }

      (v209)(v193, v218);
      sub_1C6016E90();
      v57 = v210;
    }

    v194 = v216;
    v195 = v213;
    v213(v57, v216);
    sub_1C5DAAACC(v166, &qword_1EC1AB750, MEMORY[0x1E69E3C00]);
    v195(v167, v194);
  }

  else
  {
    v84 = v219;
    sub_1C6014A90();
    sub_1C6014A80();
    sub_1C6014AA0();
    sub_1C6014AC0();
    v86 = v85;
    __swift_storeEnumTagSinglePayload(&v45[v43[8]], 1, 1, v27);
    *&v45[v43[7]] = v86;
    sub_1C5DAAB34(v45, v23, type metadata accessor for SmartTransitionParameters);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v43);
    v87 = v215;
    swift_beginAccess();
    sub_1C5DAABE8();
    swift_endAccess();
    v88 = v213;
    [v213 setAudioMix_];
    v89 = sub_1C6014A70();
    v90 = sub_1C5DABACC(v89);

    v91 = "rameworks/AssistantServices.framework/AssistantServices";
    if (v90)
    {
      v92 = v200;
      sub_1C60162C0();
      swift_bridgeObjectRetain_n();

      v93 = v88;
      v94 = sub_1C60162B0();
      v95 = sub_1C6016F30();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v211 = swift_slowAlloc();
        aBlock = v211;
        *v96 = 136446722;
        v97 = *(v87 + 32);
        v98 = *(v87 + 40);

        v99 = sub_1C5C6AB10(v97, v98, &aBlock);

        *(v96 + 4) = v99;
        *(v96 + 12) = 2082;
        v100 = sub_1C5DBCDF8();
        v102 = sub_1C5C6AB10(v100, v101, &aBlock);

        *(v96 + 14) = v102;
        v88 = v213;
        *(v96 + 22) = 2050;
        v103 = v92;
        v104 = *(v90 + 16);

        *(v96 + 24) = v104;

        _os_log_impl(&dword_1C5C61000, v94, v95, "[ALC:%{public}s] - Setting speedRamp for incoming item - %{public}s with %{public}ld time mappings", v96, 0x20u);
        v105 = v211;
        swift_arrayDestroy();
        MEMORY[0x1C6956920](v105, -1, -1);
        v106 = v96;
        v91 = "softlink:r:path:/System/Library/PrivateFrameworks/AssistantServices.framework/AssistantServices" + 40;
        MEMORY[0x1C6956920](v106, -1, -1);

        (*(v217 + 8))(v103, v218);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        (*(v217 + 8))(v92, v218);
      }

      sub_1C6016E90();
    }

    objc_opt_self();
    v107 = swift_dynamicCastObjCClass();
    v108 = v203;
    if (v107)
    {
      [v107 disableItemReuse];
    }

    v109 = v208;
    sub_1C60162C0();
    v110 = v206;
    v111 = v210;
    v211 = *(v206 + 2);
    (v211)(v108, v84, v210);
    v112 = v109;

    v113 = v88;
    v114 = sub_1C60162B0();
    v115 = sub_1C6016F30();
    v213 = v113;

    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      aBlock = v209;
      *v116 = *(v91 + 39);
      LODWORD(v207) = v115;
      v117 = *(v87 + 32);
      v118 = *(v87 + 40);

      v119 = sub_1C5C6AB10(v117, v118, &aBlock);

      *(v116 + 4) = v119;
      *(v116 + 12) = 2050;
      v120 = v202;
      sub_1C6014A90();
      sub_1C6014B10();
      v122 = v121;
      v123 = v212;
      v124 = v108;
      v125 = v216;
      (*(v212 + 8))(v120, v216);
      v110[1](v124, v111);
      *(v116 + 14) = v122;
      *(v116 + 22) = 2082;
      v126 = sub_1C5DBCDF8();
      v128 = sub_1C5C6AB10(v126, v127, &aBlock);

      *(v116 + 24) = v128;
      _os_log_impl(&dword_1C5C61000, v114, v207, "[ALC:%{public}s] - Attempting to seek to startTime: %{public}f on incomingItem: %{public}s", v116, 0x20u);
      v129 = v209;
      swift_arrayDestroy();
      MEMORY[0x1C6956920](v129, -1, -1);
      MEMORY[0x1C6956920](v116, -1, -1);

      (*(v217 + 8))(v208, v218);
    }

    else
    {

      v110[1](v108, v111);
      (*(v217 + 8))(v112, v218);
      v125 = v216;
      v123 = v212;
      v120 = v202;
    }

    v130 = v219;
    sub_1C6014A90();
    sub_1C6014B10();
    (*(v123 + 8))(v120, v125);
    v209 = sub_1C6017130();
    v132 = v131;
    v217 = HIDWORD(v131);
    v218 = v133;
    v134 = *MEMORY[0x1E6960CC0];
    v135 = *(MEMORY[0x1E6960CC0] + 8);
    LODWORD(v216) = *(MEMORY[0x1E6960CC0] + 12);
    v212 = *(MEMORY[0x1E6960CC0] + 16);
    v136 = v205;
    v137 = v210;
    (v211)(v205, v130, v210);
    v138 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v139 = &v204[v138 + 7] & 0xFFFFFFFFFFFFFFF8;
    v140 = swift_allocObject();
    *(v140 + 16) = v215;
    (v110[4])(v140 + v138, v136, v137);
    v141 = v213;
    *(v140 + v139) = v213;
    v232 = sub_1C5DAA964;
    v233 = v140;
    aBlock = MEMORY[0x1E69E9820];
    v229 = 1107296256;
    v230 = sub_1C5DBCF1C;
    v231 = &block_descriptor_115;
    v142 = _Block_copy(&aBlock);

    v143 = v141;

    v229 = __PAIR64__(v217, v132);
    v230 = v218;
    v225 = v135;
    v226 = v216;
    v227 = v212;
    aBlock = v209;
    v220 = v134;
    v221 = v135;
    v222 = v216;
    v223 = v212;
    v224 = v134;
    [v143 seekToTime:&aBlock toleranceBefore:&v224 toleranceAfter:&v220 completionHandler:v142];
    _Block_release(v142);
  }

  return sub_1C5DAAB90(v214, type metadata accessor for SmartTransitionParameters);
}

uint64_t sub_1C5DA85F4(uint64_t a1)
{
  v79 = a1;
  v1 = sub_1C60149E0();
  v77 = *(v1 - 8);
  v78 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v75 = v2;
  v76 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E69E6720];
  sub_1C5DA4F3C(0, &qword_1ED7DCEC0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v74 = &v66 - v5;
  v6 = sub_1C60162D0();
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlayerItemTransitionProvided(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v69 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5DA4F3C(0, &qword_1EC1AB750, MEMORY[0x1E69E3C00], v3);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v66 - v11;
  v13 = sub_1C6014A50();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v66 - v18;
  v20 = sub_1C6014B20();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v66 - v25;
  sub_1C60149B0();
  sub_1C6014A40();
  v27 = *(v14 + 8);
  v68 = v13;
  v28 = v13;
  v29 = v27;
  v27(v19, v28);
  if (__swift_getEnumTagSinglePayload(v12, 1, v20) == 1)
  {
    sub_1C5DAAACC(v12, &qword_1EC1AB750, MEMORY[0x1E69E3C00]);
    v30 = v70;
  }

  else
  {
    (*(v21 + 32))(v26, v12, v20);
    v31 = (*(v21 + 16))(v24, v26, v20);
    *&v32 = MEMORY[0x1C69515E0](v31);
    v67 = v32;
    sub_1C6014B10();
    v66 = v33;
    v34 = *(v21 + 8);
    v34(v24, v20);
    v34(v26, v20);
    v35.i64[0] = v67;
    v36 = *&v67 == *&v66;
    v35.i64[1] = v66;
    v37 = v35;
    *v35.i8 = vdup_n_s32(v36);
    v38.i64[0] = v35.u32[0];
    v38.i64[1] = v35.u32[1];
    v30 = v70;
    *(v70 + 120) = vandq_s8(v37, vcgezq_s64(vshlq_n_s64(v38, 0x3FuLL)));
    *(v30 + 136) = v36;
  }

  sub_1C60149B0();
  v39 = v69;
  sub_1C6014A10();
  v40 = v68;
  v29(v17, v68);
  v41 = sub_1C6014A60();
  __swift_storeEnumTagSinglePayload(v39, 0, 2, v41);
  v42 = OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionProvided;
  swift_beginAccess();
  sub_1C5DAA818(v39, v30 + v42);
  swift_endAccess();
  sub_1C60149B0();
  v43 = sub_1C6014A20();
  v45 = v44;
  v29(v17, v40);
  v46 = (v30 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionStrategy);
  *v46 = v43;
  v46[1] = v45;

  v47 = v71;
  sub_1C60162C0();

  v48 = sub_1C60162B0();
  v49 = sub_1C6016F30();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v80[0] = v51;
    *v50 = 136446466;
    v52 = *(v30 + 32);
    v53 = *(v30 + 40);

    v54 = sub_1C5C6AB10(v52, v53, v80);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2082;
    sub_1C5D9C084();
    v55 = sub_1C6016870();
    v57 = v56;

    v58 = sub_1C5C6AB10(v55, v57, v80);

    *(v50 + 14) = v58;
    _os_log_impl(&dword_1C5C61000, v48, v49, "[ALC:%{public}s] - Smart transition setup complete with parameters: %{public}s", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6956920](v51, -1, -1);
    MEMORY[0x1C6956920](v50, -1, -1);
  }

  (*(v72 + 8))(v47, v73);
  v59 = sub_1C6016C30();
  __swift_storeEnumTagSinglePayload(v74, 1, 1, v59);
  v61 = v76;
  v60 = v77;
  v62 = v78;
  (*(v77 + 16))(v76, v79, v78);
  v63 = (*(v60 + 80) + 40) & ~*(v60 + 80);
  v64 = swift_allocObject();
  *(v64 + 2) = 0;
  *(v64 + 3) = 0;
  *(v64 + 4) = v30;
  (*(v60 + 32))(&v64[v63], v61, v62);

  sub_1C5CDC270();
}

uint64_t sub_1C5DA8DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1C5CBCD24;

  return sub_1C5DA8E80(a5);
}

uint64_t sub_1C5DA8E80(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1C6014A60();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  type metadata accessor for PlayerItemTransitionProvided(0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = sub_1C60162D0();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  sub_1C5D2D8C8();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v6 = sub_1C6014B20();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();
  v7 = sub_1C6014AE0();
  v2[28] = v7;
  v2[29] = *(v7 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  sub_1C6016C10();
  v2[32] = sub_1C6016C00();
  v9 = sub_1C6016BA0();
  v2[33] = v9;
  v2[34] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C5DA917C, v9, v8);
}

uint64_t sub_1C5DA917C()
{
  v31 = v0;
  *(v0 + 280) = *(*(v0 + 48) + 48);
  objc_opt_self();
  OUTLINED_FUNCTION_34_4();
  v2 = swift_dynamicCastObjCClass();
  *(v0 + 288) = v2;
  if (v2)
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 224);
    v5 = *(v0 + 232);
    v7 = *(v0 + 208);
    v6 = *(v0 + 216);
    v8 = *(v0 + 200);
    swift_unknownObjectRetain();
    sub_1C60149A0();
    sub_1C6014A90();
    v9 = *(v5 + 8);
    *(v0 + 296) = v9;
    *(v0 + 304) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10 = v9(v3, v4);
    *(v0 + 312) = MEMORY[0x1C69515E0](v10);
    v11 = *(v7 + 8);
    v11(v6, v8);
    sub_1C60149A0();
    sub_1C6014AA0();
    v12 = v9(v3, v4);
    *(v0 + 320) = MEMORY[0x1C69515E0](v12);
    v11(v6, v8);
    v13 = swift_task_alloc();
    *(v0 + 328) = v13;
    *v13 = v0;
    v13[1] = sub_1C5DA94A8;

    return sub_1C5D9E1F8();
  }

  else
  {
    v15 = *(v0 + 48);

    MEMORY[0x1C6952D20](v16);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_108_1();
    v17 = OUTLINED_FUNCTION_108();
    v18(v17);

    v19 = sub_1C60162B0();
    sub_1C6016F30();
    OUTLINED_FUNCTION_125_1();
    if (OUTLINED_FUNCTION_137_0())
    {
      OUTLINED_FUNCTION_112();
      v30 = OUTLINED_FUNCTION_53_5();
      v20 = OUTLINED_FUNCTION_69_5(4.8751e-34);
      OUTLINED_FUNCTION_110_1(v20, v21, &v30);
      OUTLINED_FUNCTION_109_0();
      *(v15 + 4) = v1;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_6();
    }

    v27 = OUTLINED_FUNCTION_252();
    v28(v27);
    OUTLINED_FUNCTION_79_2();

    OUTLINED_FUNCTION_172();

    return v29();
  }
}

uint64_t sub_1C5DA94A8()
{
  OUTLINED_FUNCTION_248();
  v1 = *v0;
  OUTLINED_FUNCTION_30();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 336) = v4;

  v5 = *(v1 + 272);
  v6 = *(v1 + 264);

  return MEMORY[0x1EEE6DFA0](sub_1C5DA95BC, v6, v5);
}

uint64_t sub_1C5DA95BC()
{
  v84 = v0;
  OUTLINED_FUNCTION_76_3();
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);

  v4 = v2 - v1 + -0.5 + -0.1;
  sub_1C60149A0();
  v5 = sub_1C6014AD0();
  v6 = OUTLINED_FUNCTION_18();
  v3(v6);
  if (!v5)
  {
LABEL_25:
    v14 = v4;
    goto LABEL_26;
  }

  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = (v5 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = *v8;
      if (*v8 < v4)
      {
        v83 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C5D0F218(0, *(v9 + 16) + 1, 1);
          v9 = v83;
        }

        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1C5D0F218((v11 > 1), v12 + 1, 1);
          v9 = v83;
        }

        *(v9 + 16) = v12 + 1;
        *(v9 + 8 * v12 + 32) = v10;
      }

      ++v8;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v13 = *(v9 + 16);
  if (!v13)
  {

    MEMORY[0x1C6952D20](v33);
    OUTLINED_FUNCTION_98_1();
    sub_1C6016250();
    v34 = OUTLINED_FUNCTION_45_0();
    v35(v34);

    v36 = sub_1C60162B0();
    v37 = sub_1C6016F30();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_68_0();
      v39 = OUTLINED_FUNCTION_21();
      v83 = v39;
      *v38 = 136446466;

      v40 = OUTLINED_FUNCTION_300();
      v43 = sub_1C5C6AB10(v40, v41, v42);
      OUTLINED_FUNCTION_76_3();

      *(v38 + 4) = v43;
      *(v38 + 12) = 2050;
      *(v38 + 14) = v4;
      _os_log_impl(&dword_1C5C61000, v36, v37, "[ALC:%{public}s] - No suitable downbeats found before safe start time %{public}f", v38, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v39);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_28();
    }

    v44 = OUTLINED_FUNCTION_45_0();
    v45(v44);
    goto LABEL_25;
  }

  v14 = *(v9 + 32);
  v15 = v13 - 1;
  if (v15)
  {
    v16 = (v9 + 40);
    v17 = *(v9 + 32);
    do
    {
      v18 = *v16++;
      v19 = v18;
      if (v17 < v18)
      {
        v14 = v19;
        v17 = v19;
      }

      --v15;
    }

    while (v15);
  }

  MEMORY[0x1C6952D20](v20);
  OUTLINED_FUNCTION_98_1();
  sub_1C6016250();
  v21 = OUTLINED_FUNCTION_45_0();
  v22(v21);

  v23 = sub_1C60162B0();
  v24 = sub_1C6016F30();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_21();
    v26 = OUTLINED_FUNCTION_21();
    v83 = v26;
    *v25 = 136446722;

    v27 = OUTLINED_FUNCTION_300();
    v30 = sub_1C5C6AB10(v27, v28, v29);
    OUTLINED_FUNCTION_76_3();

    *(v25 + 4) = v30;
    *(v25 + 12) = 2050;
    *(v25 + 14) = v14;
    *(v25 + 22) = 2050;
    *(v25 + 24) = v4;
    _os_log_impl(&dword_1C5C61000, v23, v24, "[ALC:%{public}s] - Using downbeat at %{public}f instead of safe start time %{public}f", v25, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_28();
  }

  v31 = OUTLINED_FUNCTION_45_0();
  v32(v31);
LABEL_26:
  v46 = *(v0 + 96);
  v47 = *(v0 + 48);
  v48 = OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionProvided;
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_21_19();
  v82 = v48;
  sub_1C5DAAB34(v47 + v48, v46, v49);
  v50 = sub_1C5DAE2E8();
  OUTLINED_FUNCTION_20_20();
  sub_1C5DAAB90(v46, v51);
  if (*(v47 + OBJC_IVAR____TtC17MediaPlaybackCore25SmartPlayerItemTransition_transitionStrategy + 8))
  {

    OUTLINED_FUNCTION_45_0();
    v52 = sub_1C6016900();
  }

  else
  {
    v52 = 0;
  }

  [*(v0 + 288) updateContentItemWithPlannedTransitionStartTime:v50 pivotTime:v52 transitionProvided:v14 debugString:*(v0 + 320)];

  MEMORY[0x1C6952D20]();
  sub_1C6016250();
  v53 = OUTLINED_FUNCTION_18();
  v54(v53);

  v55 = sub_1C60162B0();
  v56 = sub_1C6016F30();
  v57 = os_log_type_enabled(v55, v56);
  v58 = *(v0 + 48);
  if (!v57)
  {
    swift_unknownObjectRelease();

    v70 = OUTLINED_FUNCTION_252();
    v71(v70);
    goto LABEL_37;
  }

  v59 = *(v0 + 320);
  v60 = *(v0 + 80);
  v61 = *(v0 + 88);
  v62 = *(v0 + 56);
  v63 = swift_slowAlloc();
  v81 = OUTLINED_FUNCTION_21();
  v83 = v81;
  *v63 = 136446978;
  v65 = *(v58 + 32);
  v64 = *(v58 + 40);

  v66 = sub_1C5C6AB10(v65, v64, &v83);

  *(v63 + 4) = v66;
  *(v63 + 12) = 2050;
  *(v63 + 14) = v14;
  *(v63 + 22) = 2050;
  *(v63 + 24) = v59;
  *(v63 + 32) = 2050;
  OUTLINED_FUNCTION_21_19();
  sub_1C5DAAB34(v47 + v82, v61, v67);
  sub_1C5DAAD4C(v61, v60, type metadata accessor for PlayerItemTransitionProvided);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 2, v62);
  if (EnumTagSinglePayload)
  {
    v69 = EnumTagSinglePayload != 1;
  }

  else
  {
    v72 = *(v0 + 72);
    v74 = *(v0 + 56);
    v73 = *(v0 + 64);
    (*(v73 + 32))(v72, *(v0 + 80), v74);
    v75 = (*(v73 + 88))(v72, v74);
    if (v75 != *MEMORY[0x1E69E3BF8])
    {
      v76 = v81;
      if (v75 == *MEMORY[0x1E69E3BE0])
      {
        v69 = 3;
      }

      else if (v75 == *MEMORY[0x1E69E3BE8])
      {
        v69 = 4;
      }

      else if (v75 == *MEMORY[0x1E69E3BF0])
      {
        v69 = 5;
      }

      else
      {
        (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
        v69 = 0;
      }

      goto LABEL_36;
    }

    v69 = 2;
  }

  v76 = v81;
LABEL_36:
  *(v63 + 34) = v69;

  _os_log_impl(&dword_1C5C61000, v55, v56, "[ALC:%{public}s] - Updated outgoing item content with transition info - finalStartTime: %{public}f, pivotTime: %{public}f, transitionProvided: %{public}ld", v63, 0x2Au);
  __swift_destroy_boxed_opaque_existential_0(v76);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4();
  swift_unknownObjectRelease();

  v77 = OUTLINED_FUNCTION_55_2();
  v78(v77);
LABEL_37:
  OUTLINED_FUNCTION_79_2();

  OUTLINED_FUNCTION_172();

  return v79();
}

uint64_t sub_1C5DA9DC0(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v39 = a1;
  v7 = sub_1C6014B20();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1C6014AE0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1C60162D0();
  v42 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C60162C0();
  (*(v11 + 16))(v13, a3, v10);

  v17 = a4;
  v18 = sub_1C60162B0();
  v19 = sub_1C6016F30();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = v14;
    v21 = v20;
    v37 = swift_slowAlloc();
    v43 = v37;
    *v21 = 136446978;
    v36 = v19;
    v22 = *(a2 + 32);
    v23 = *(a2 + 40);

    v24 = sub_1C5C6AB10(v22, v23, &v43);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2082;
    if (v39)
    {
      v25 = 0x6564656563637553;
    }

    else
    {
      v25 = 0x64656C696146;
    }

    if (v39)
    {
      v26 = 0xE900000000000064;
    }

    else
    {
      v26 = 0xE600000000000000;
    }

    v27 = sub_1C5C6AB10(v25, v26, &v43);

    *(v21 + 14) = v27;
    *(v21 + 22) = 2050;
    sub_1C6014A90();
    sub_1C6014B10();
    v29 = v28;
    (*(v40 + 8))(v9, v41);
    (*(v11 + 8))(v13, v10);
    *(v21 + 24) = v29;
    *(v21 + 32) = 2082;
    v30 = sub_1C5DBCDF8();
    v32 = sub_1C5C6AB10(v30, v31, &v43);

    *(v21 + 34) = v32;
    _os_log_impl(&dword_1C5C61000, v18, v36, "[ALC:%{public}s] - %{public}s to seek to startTime: %{public}f on incomingItem: %{public}s", v21, 0x2Au);
    v33 = v37;
    swift_arrayDestroy();
    MEMORY[0x1C6956920](v33, -1, -1);
    MEMORY[0x1C6956920](v21, -1, -1);

    return (*(v42 + 8))(v16, v38);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
    return (*(v42 + 8))(v16, v14);
  }
}

uint64_t sub_1C5DAA210(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C5DAA230, 0, 0);
}

uint64_t sub_1C5DAA230()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_143_0();
  v2 = v0;
  *(v1 + 40) = sub_1C6016C00();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_117();
  v3 = OUTLINED_FUNCTION_6_27();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5DAA2AC()
{
  OUTLINED_FUNCTION_13();
  v17 = v0;
  v1 = *(v0 + 32);

  v2 = [v1 overlappedPlaybackSafetyMargin];
  OUTLINED_FUNCTION_122_0(v2, v3, v4, v5, v6, v7, v8, v9, v14, v15, v16);
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C5DAA320(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C5DAA340, 0, 0);
}

uint64_t sub_1C5DAA340()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_143_0();
  v2 = v0;
  *(v1 + 40) = sub_1C6016C00();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_117();
  v3 = OUTLINED_FUNCTION_6_27();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5DAA3BC()
{
  OUTLINED_FUNCTION_13();
  v17 = v0;
  v1 = *(v0 + 32);

  v2 = [v1 speedRampAdjustabilityMargin];
  OUTLINED_FUNCTION_122_0(v2, v3, v4, v5, v6, v7, v8, v9, v14, v15, v16);
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C5DAA430()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = v0[8];
  *v2 = v0[6];
  v2[1] = v3;
  v2[2] = v1;
  return OUTLINED_FUNCTION_54_5();
}

void sub_1C5DAA45C()
{
  if (!qword_1EC1AB6C8)
  {
    sub_1C5C64D74(255, &qword_1EC1AAC20);
    sub_1C5DAA500(255, &qword_1EC1AB6D0, &qword_1EC1AB5A0, 0x1E6987EC8, MEMORY[0x1E69E62F8]);
    v0 = sub_1C6015200();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AB6C8);
    }
  }
}

void sub_1C5DAA500(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1C5C64D74(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C5DAA568()
{
  if (!qword_1EC1AB730)
  {
    sub_1C5DAA5C4();
    v0 = sub_1C6015300();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AB730);
    }
  }
}

unint64_t sub_1C5DAA5C4()
{
  result = qword_1EC1AB738;
  if (!qword_1EC1AB738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB738);
  }

  return result;
}

unint64_t sub_1C5DAA618()
{
  result = qword_1EC1AB740;
  if (!qword_1EC1AB740)
  {
    sub_1C5DAA568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB740);
  }

  return result;
}

uint64_t sub_1C5DAA670()
{
  OUTLINED_FUNCTION_248();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_18(v1);

  return sub_1C5DA67B8(v3, v4);
}

void sub_1C5DAA6F4()
{
  if (!qword_1EC1AB748)
  {
    sub_1C5DAA500(255, &qword_1EC1AB6D0, &qword_1EC1AB5A0, 0x1E6987EC8, MEMORY[0x1E69E62F8]);
    type metadata accessor for CMTime();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1AB748);
    }
  }
}

uint64_t sub_1C5DAA794()
{
  OUTLINED_FUNCTION_248();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_18(v1);

  return sub_1C5DA698C(v3, v4);
}

uint64_t sub_1C5DAA818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerItemTransitionProvided(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5DAA87C()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v3 = sub_1C60149E0();
  OUTLINED_FUNCTION_13_3(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_6_0(v9);
  *v10 = v11;
  v10[1] = sub_1C5CBCD24;

  return sub_1C5DA8DE4(v2, v6, v7, v8, v0 + v5);
}

uint64_t sub_1C5DAA964(int a1)
{
  v3 = sub_1C6014AE0();
  OUTLINED_FUNCTION_12(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C5DA9DC0(a1, v9, v1 + v8, v10);
}

void sub_1C5DAA9FC()
{
  if (!qword_1EC1AB758)
  {
    type metadata accessor for TransitionProvider.TransitionableIdentifier();
    sub_1C6014980();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1AB758);
    }
  }
}

uint64_t sub_1C5DAAA70()
{
  v1 = OUTLINED_FUNCTION_57_3();
  sub_1C5DA4F3C(v1, v2, v3, v4);
  OUTLINED_FUNCTION_105();
  v5 = OUTLINED_FUNCTION_255();
  v6(v5);
  return v0;
}

uint64_t sub_1C5DAAACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C5DA4F3C(0, a2, a3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_105();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C5DAAB34(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_105();
  v4 = OUTLINED_FUNCTION_255();
  v5(v4);
  return a2;
}

uint64_t sub_1C5DAAB90(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_105();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C5DAABE8()
{
  v1 = OUTLINED_FUNCTION_57_3();
  sub_1C5DA4F3C(v1, v2, v3, v4);
  OUTLINED_FUNCTION_105();
  v5 = OUTLINED_FUNCTION_255();
  v6(v5);
  return v0;
}

uint64_t sub_1C5DAAC44()
{
  OUTLINED_FUNCTION_248();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_18(v1);

  return sub_1C5DAA210(v3, v4);
}

uint64_t sub_1C5DAACC8()
{
  OUTLINED_FUNCTION_248();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_18(v1);

  return sub_1C5DAA320(v3, v4);
}

uint64_t sub_1C5DAAD4C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_105();
  v4 = OUTLINED_FUNCTION_255();
  v5(v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for SmartPlayerItemTransitionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SmartPlayerItemTransitionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C5DAAF10()
{
  result = qword_1EC1AB768;
  if (!qword_1EC1AB768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB768);
  }

  return result;
}

unint64_t sub_1C5DAAF68()
{
  result = qword_1EC1AB770;
  if (!qword_1EC1AB770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AB770);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_27_15(uint64_t a1)
{

  return sub_1C5DAAB34(a1, v1, type metadata accessor for TransitionProvider.TransitionableIdentifier);
}

uint64_t OUTLINED_FUNCTION_38_7()
{
  v3 = v0[22];
  *(v1 - 136) = v0[23];
  *(v1 - 128) = v3;
  v4 = v0[19];
  *(v1 - 120) = v0[20];
  *(v1 - 112) = v4;
  *(v1 - 104) = v0[16];
}

uint64_t OUTLINED_FUNCTION_53_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_58_6()
{

  return sub_1C5DAAACC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_73_2(uint64_t a1, uint64_t a2)
{

  return sub_1C5DAAD4C(a1, a2, type metadata accessor for TransitionProvider.TransitionableIdentifier);
}

uint64_t OUTLINED_FUNCTION_82_2()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_91_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_92_1()
{

  return swift_allocError();
}

unint64_t OUTLINED_FUNCTION_96_0()
{

  return sub_1C5C6AB10(v0, v1, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_100_1()
{

  return swift_asyncLet_begin();
}

uint64_t OUTLINED_FUNCTION_105_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_106_0()
{
}

uint64_t OUTLINED_FUNCTION_108_1()
{

  return sub_1C6016250();
}

uint64_t OUTLINED_FUNCTION_109_0()
{
}

unint64_t OUTLINED_FUNCTION_110_1(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1C5C6AB10(v3, v4, a3);
}

uint64_t OUTLINED_FUNCTION_118_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_120_0(float a1)
{
  *v1 = a1;
}

uint64_t OUTLINED_FUNCTION_121_0()
{

  return sub_1C60171E0();
}

void OUTLINED_FUNCTION_122_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12[8] = a10;
  v12[6] = a9;
  v12[7] = a11;
}

uint64_t OUTLINED_FUNCTION_123_1()
{
}

uint64_t OUTLINED_FUNCTION_125_1()
{
}

void OUTLINED_FUNCTION_126_1()
{

  sub_1C5DAA568();
}

uint64_t OUTLINED_FUNCTION_140_1()
{
  *(v1 - 384) = v0;
}

uint64_t OUTLINED_FUNCTION_142_1()
{

  return MEMORY[0x1EEE6CDE8](0xD000000000000014, v0 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_143_0()
{
  *(v0 + 32) = *(*(v0 + 24) + 56);

  return sub_1C6016C10();
}

uint64_t OUTLINED_FUNCTION_147_0()
{
  v5 = v1[19];
  v4 = v1[20];
  *(v2 - 136) = v0;
  *(v2 - 128) = v4;
  v6 = v1[16];
  *(v2 - 120) = v5;
  *(v2 - 112) = v6;
}

uint64_t OUTLINED_FUNCTION_148_0()
{

  return sub_1C5DAAA70();
}

void OUTLINED_FUNCTION_149_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_150_0()
{

  return sub_1C6014970();
}

void OUTLINED_FUNCTION_151_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_152_0()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2082;

  return sub_1C5DBCDF8();
}

uint64_t OUTLINED_FUNCTION_155_0()
{
}

unint64_t OUTLINED_FUNCTION_156_0()
{

  return sub_1C5DAA5C4();
}

uint64_t OUTLINED_FUNCTION_157_0()
{

  return sub_1C60162C0();
}

void sub_1C5DAB728(uint64_t a1@<X8>)
{
  if (MEMORY[0x1C69515E0]() <= 0.0 || (v2 = sub_1C6014B10(), v3 <= 0.0) || (v4 = MEMORY[0x1C69515E0](v2), sub_1C6014B10(), v4 == v5))
  {
    v6 = 0;
    v7 = 0;
    v8 = 1;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  else
  {
    sub_1C6017130();
    MEMORY[0x1C69515E0]();
    sub_1C6017130();
    OUTLINED_FUNCTION_0_57();
    sub_1C6016E60();
    v6 = v16;
    v7 = v17;
    sub_1C6017130();
    sub_1C6014B10();
    sub_1C6017130();
    OUTLINED_FUNCTION_0_57();
    sub_1C6016E60();
    v12 = v14;
    v13 = v15;
    v8 = 0;
    v9 = v18;
    v10 = v19;
    v11 = v20;
  }

  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v9;
  *(a1 + 64) = v10;
  *(a1 + 80) = v11;
  *(a1 + 96) = v8;
}

uint64_t sub_1C5DAB860(void *a1)
{
  v3 = sub_1C6014B20();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || !a1[2])
  {
    return 0;
  }

  if (*(v1 + 112))
  {

LABEL_8:
    v8 = sub_1C5DABACC(v7);

    return v8;
  }

  v9 = a1[10];
  v17[0] = a1[11];
  v17[1] = v9;

  sub_1C6014AF0();
  sub_1C5DAB728(v20);
  (*(v4 + 8))(v6, v3);
  if (v21)
  {
    v7 = a1;
    goto LABEL_8;
  }

  sub_1C5D0E900();
  v11 = v10;
  v12 = *(v10 + 16);
  if (v12 >= *(v10 + 24) >> 1)
  {
    OUTLINED_FUNCTION_1_49();
    v11 = v15;
  }

  *(v11 + 16) = v12 + 1;
  memcpy((v11 + 96 * v12 + 32), v20, 0x60uLL);
  v25 = v20[0];
  v26 = v20[1];
  v27 = v20[2];
  sub_1C6016E50();
  sub_1C6016E60();
  v22 = v20[3];
  v23 = v20[4];
  v24 = v20[5];
  sub_1C6016E50();
  sub_1C6016E60();
  v13 = *(v11 + 16);
  if (v13 >= *(v11 + 24) >> 1)
  {
    OUTLINED_FUNCTION_1_49();
    v11 = v16;
  }

  *(v11 + 16) = v13 + 1;
  memcpy((v11 + 96 * v13 + 32), v18, 0x60uLL);
  v19 = v11;
  sub_1C5D0CE8C(a1);
  return v19;
}

uint64_t sub_1C5DABACC(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {

      sub_1C6017130();
      OUTLINED_FUNCTION_0_57();
      if (sub_1C60171E0() & 1) != 0 || (sub_1C6017130(), OUTLINED_FUNCTION_0_57(), (sub_1C60171E0()))
      {
        sub_1C6017130();
        sub_1C6016E60();
        sub_1C6017130();
        sub_1C6016E60();
        if (!swift_isUniquelyReferenced_nonNull_native() || v2 >= *(v1 + 24) >> 1)
        {
          sub_1C5D0E900();
          v1 = v3;
        }

        sub_1C5D10DBC(0, 0, 1);
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1C5DABC1C()
{
  OUTLINED_FUNCTION_3_37();
  sub_1C5DB08EC(0, v0, v1, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  OUTLINED_FUNCTION_89();
  *(v3 + 32) = 0xD00000000000001CLL;
  *(v3 + 40) = v4;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  sub_1C5C64D74(0, &qword_1ED7DCCD0);
  return sub_1C6016880();
}

double sub_1C5DABCEC@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  if (v2)
  {
    sub_1C5DB0BBC(v2 + 24, a1);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_1C5DABD28()
{
  OUTLINED_FUNCTION_247();
  v1 = *(v0 + 120);
  if (!v1 || (v2 = v0, sub_1C5DB0BBC(v1 + 24, __src), sub_1C5C74680(0, qword_1ED7DE920), sub_1C5C74680(0, qword_1ED7DD8B0), (swift_dynamicCast() & 1) == 0))
  {
    memset(__dst, 0, 40);
    goto LABEL_17;
  }

  if (!*(&__dst[1] + 1))
  {
LABEL_17:
    OUTLINED_FUNCTION_0_58();
    sub_1C5DB13B0(__dst, v22, v23, v24, v25);
    goto LABEL_18;
  }

  sub_1C5C6BEFC(__dst, v62);
  if (swift_unknownObjectWeakLoadStrong() && (v3 = v63, OUTLINED_FUNCTION_7_30(v62, v63), v5 = (*(v4 + 24))(v3), v6 = v63, OUTLINED_FUNCTION_7_30(v62, v63), (*(v7 + 40))(v6), v8 = OUTLINED_FUNCTION_36_8(), swift_unknownObjectRelease(), v5, v6, (v8 & 1) != 0) || ((OUTLINED_FUNCTION_7_30(v62, v63), v9 = OUTLINED_FUNCTION_312(), v10(v9), OUTLINED_FUNCTION_128_0(), v16) ? (v12 = v11 == 0) : (v12 = 0), v12))
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = v63;
      OUTLINED_FUNCTION_7_30(v62, v63);
      v28 = (*(v27 + 24))(v26);
      v29 = v63;
      OUTLINED_FUNCTION_7_30(v62, v63);
      (*(v30 + 40))(v29);
      v31 = OUTLINED_FUNCTION_36_8();
      swift_unknownObjectRelease();

      if (v31)
      {
        OUTLINED_FUNCTION_7_30(v62, v63);
        v32 = OUTLINED_FUNCTION_312();
        v33(v32);
        OUTLINED_FUNCTION_128_0();
        if (v16 && !v34)
        {
          OUTLINED_FUNCTION_1_50();
          sub_1C5DB1340(v2 + 16, v60, v35, v36, v37, v38);
          if (v61)
          {
            OUTLINED_FUNCTION_45(v60, v61);
            OUTLINED_FUNCTION_89();
            __src[0] = 0xD00000000000001FLL;
            __src[1] = v39;
            sub_1C5DB12C8(__src);
            memcpy(__dst, __src, 0xD9uLL);
            sub_1C5DBBF0C();
            __swift_destroy_boxed_opaque_existential_0(v60);
          }

          else
          {
            OUTLINED_FUNCTION_0_58();
            sub_1C5DB13B0(v60, v50, v51, v52, v53);
          }

          sub_1C5C64D74(0, &qword_1ED7DCCF0);
          sub_1C6016940();
          OUTLINED_FUNCTION_13_23();
          sub_1C6017540();
          v54 = OUTLINED_FUNCTION_4_38();
          MEMORY[0x1C69534E0](v54);
          v55 = v63;
          OUTLINED_FUNCTION_7_30(v62, v63);
          OUTLINED_FUNCTION_16_0();
          v57 = v56(v55);
          MEMORY[0x1C69534E0](v57);

          v48 = "Player can't overlap playback";
          v49 = 0xD000000000000030;
          goto LABEL_31;
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_30(v62, v63);
    v13 = OUTLINED_FUNCTION_312();
    v14(v13);
    OUTLINED_FUNCTION_128_0();
    v16 = v16 && v15 >= 5;
    if (!v16)
    {
      OUTLINED_FUNCTION_1_50();
      sub_1C5DB1340(v2 + 16, v60, v17, v18, v19, v20);
      if (v61)
      {
        OUTLINED_FUNCTION_45(v60, v61);
        OUTLINED_FUNCTION_89();
        __src[0] = 0xD00000000000001DLL;
        __src[1] = v21;
        sub_1C5DB12C8(__src);
        memcpy(__dst, __src, 0xD9uLL);
        sub_1C5DBBF0C();
        __swift_destroy_boxed_opaque_existential_0(v60);
      }

      else
      {
        OUTLINED_FUNCTION_0_58();
        sub_1C5DB13B0(v60, v40, v41, v42, v43);
      }

      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      OUTLINED_FUNCTION_13_23();
      sub_1C6017540();
      v44 = OUTLINED_FUNCTION_4_38();
      MEMORY[0x1C69534E0](v44);
      v45 = v63;
      OUTLINED_FUNCTION_7_30(v62, v63);
      OUTLINED_FUNCTION_16_0();
      v47 = v46(v45);
      MEMORY[0x1C69534E0](v47);

      v48 = "edPlaybackEndTime to ";
      v49 = 0xD00000000000002FLL;
LABEL_31:
      MEMORY[0x1C69534E0](v49, v48 | 0x8000000000000000);
      sub_1C6016880();
      _s3__C4CodeOMa_6();
      sub_1C5DB0894();
      v58 = sub_1C6017280();

      sub_1C5DAE024();

      __swift_destroy_boxed_opaque_existential_0(v62);
      goto LABEL_18;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v62);
LABEL_18:
  OUTLINED_FUNCTION_237();
}

void sub_1C5DAC2E4()
{
  OUTLINED_FUNCTION_247();
  v1 = *(v0 + 120);
  if (v1)
  {
    sub_1C5DB0BBC(v1 + 24, __dst);
    sub_1C5C74680(0, qword_1ED7DE920);
    type metadata accessor for SmartPlayerItemTransition();
    if (swift_dynamicCast())
    {
      v2 = __src[0];
      if (swift_unknownObjectWeakLoadStrong() && (v3 = sub_1C5DE3FD4(), swift_unknownObjectRelease(), (v3 & 1) != 0) || ((sub_1C5D9BCDC(), OUTLINED_FUNCTION_128_0(), v5) ? (v6 = v4 > 4) : (v6 = 0), v6))
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v13 = sub_1C5DE3FD4();
          swift_unknownObjectRelease();
          if (v13)
          {
            v14 = sub_1C5D9BCDC();
            if (v15 >= 2u && v14 == 5)
            {
              OUTLINED_FUNCTION_1_50();
              sub_1C5DB1340(v0 + 16, v39, v26, v27, v28, v29);
              if (v40)
              {
                OUTLINED_FUNCTION_45(v39, v40);
                OUTLINED_FUNCTION_89();
                __src[0] = 0xD00000000000001ELL;
                __src[1] = v30;
                sub_1C5DB12C8(__src);
                memcpy(__dst, __src, 0xD9uLL);
                sub_1C5DBBF0C();
                __swift_destroy_boxed_opaque_existential_0(v39);
              }

              else
              {
                OUTLINED_FUNCTION_0_58();
                sub_1C5DB13B0(v39, v31, v32, v33, v34);
              }

              sub_1C5C64D74(0, &qword_1ED7DCCF0);
              sub_1C6016940();
              OUTLINED_FUNCTION_12_25();
              sub_1C6017540();
              v35 = OUTLINED_FUNCTION_4_38();
              MEMORY[0x1C69534E0](v35);
              v36 = *(v2 + 16);
              v37 = *(v2 + 24);

              MEMORY[0x1C69534E0](v36, v37);

              v23 = "Player can now overlap playback";
              v24 = 0xD000000000000032;
              goto LABEL_22;
            }
          }
        }
      }

      else
      {
        sub_1C5D9BCDC();
        OUTLINED_FUNCTION_128_0();
        if (!v5 || v7)
        {
          OUTLINED_FUNCTION_1_50();
          sub_1C5DB1340(v0 + 16, v39, v8, v9, v10, v11);
          if (v40)
          {
            OUTLINED_FUNCTION_45(v39, v40);
            OUTLINED_FUNCTION_89();
            __src[0] = 0xD00000000000001CLL;
            __src[1] = v12;
            sub_1C5DB12C8(__src);
            memcpy(__dst, __src, 0xD9uLL);
            sub_1C5DBBF0C();
            __swift_destroy_boxed_opaque_existential_0(v39);
          }

          else
          {
            OUTLINED_FUNCTION_0_58();
            sub_1C5DB13B0(v39, v16, v17, v18, v19);
          }

          sub_1C5C64D74(0, &qword_1ED7DCCF0);
          sub_1C6016940();
          OUTLINED_FUNCTION_12_25();
          sub_1C6017540();
          v20 = OUTLINED_FUNCTION_4_38();
          MEMORY[0x1C69534E0](v20);
          v21 = *(v2 + 16);
          v22 = *(v2 + 24);

          MEMORY[0x1C69534E0](v21, v22);

          v23 = "Player can now play speedRamps";
          v24 = 0xD000000000000031;
LABEL_22:
          MEMORY[0x1C69534E0](v24, v23 | 0x8000000000000000);
          sub_1C6016880();
          _s3__C4CodeOMa_6();
          sub_1C5DB0894();
          OUTLINED_FUNCTION_26();
          v25 = sub_1C6017280();

          sub_1C5DAE024();

          goto LABEL_19;
        }
      }
    }
  }

LABEL_19:
  OUTLINED_FUNCTION_237();
}

void sub_1C5DAC724()
{
  OUTLINED_FUNCTION_247();
  v32 = v0;
  v3 = v2;
  v4 = sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_21_20();
  sub_1C5D2D8C8();
  v9 = v8;
  OUTLINED_FUNCTION_25();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_146();
  v15 = v14 - v13;
  if (MSVDeviceOSIsInternalInstall())
  {
    v16 = [objc_opt_self() standardUserDefaults];
    OUTLINED_FUNCTION_109();
    v17 = sub_1C6016900();
    v18 = [v16 BOOLForKey_];

    if (v18)
    {
      OUTLINED_FUNCTION_237();
      return;
    }
  }

  MEMORY[0x1C6952D20]();
  sub_1C6016250();
  (*(v11 + 8))(v15, v9);
  v33 = v3;
  v19 = sub_1C60162B0();
  v20 = sub_1C6016F30();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34 = v22;
    *v21 = 136446210;
    v23 = [v33 playerItem];

    if (!v23)
    {
      __break(1u);
      return;
    }

    v24 = sub_1C5DBCDF8();
    v26 = v25;

    v27 = sub_1C5C6AB10(v24, v26, &v34);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_1C5C61000, v19, v20, "[ALC]: 🟡 TransitionController setSmartTransitionOutroItemReference: %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();
  }

  else
  {
  }

  (*(v6 + 8))(v1, v4);
  v28 = *(v32 + 112);
  *(v32 + 112) = v33;

  OUTLINED_FUNCTION_237();

  v31 = v29;
}

void sub_1C5DACA28()
{
  OUTLINED_FUNCTION_247();
  v2 = v0;
  v4 = v3;
  sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v50 = v6;
  v51 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17_19();
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v49 - v8;
  sub_1C5D2D8C8();
  v10 = v9;
  OUTLINED_FUNCTION_25();
  v12 = v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v49 - v17;
  if (!MSVDeviceOSIsInternalInstall() || (v19 = [objc_opt_self() standardUserDefaults], OUTLINED_FUNCTION_109(), v20 = sub_1C6016900(), v21 = objc_msgSend(v19, sel_BOOLForKey_, v20), v19, v20, (v21 & 1) == 0))
  {
    v22 = *(v2 + 112);
    if (v22 && (v23 = [v22 playerItem]) != 0 && (v24 = v23, v23, v24 == v4))
    {
      MEMORY[0x1C6952D20]();
      v40 = v49;
      sub_1C6016250();
      (*(v12 + 8))(v18, v10);
      v41 = v4;
      v42 = sub_1C60162B0();
      v43 = sub_1C6016F30();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v52 = v45;
        *v44 = 136446210;
        v46 = sub_1C5DBCDF8();
        v48 = sub_1C5C6AB10(v46, v47, &v52);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_1C5C61000, v42, v43, "[ALC]: 🟢 TransitionController removeSmartTransitionOutroItemReference: %{public}s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_4();
      }

      (*(v50 + 8))(v40, v51);
    }

    else
    {
      MEMORY[0x1C6952D20]();
      sub_1C6016250();
      (*(v12 + 8))(v16, v10);
      v25 = v4;

      v26 = sub_1C60162B0();
      v27 = sub_1C6016F20();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = 7104878;
        v29 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v29 = 136315394;
        v30 = sub_1C5DBCDF8();
        v32 = sub_1C5C6AB10(v30, v31, &v52);

        *(v29 + 4) = v32;
        *(v29 + 12) = 2080;
        v33 = *(v2 + 112);
        if (v33 && (v34 = [v33 playerItem]) != 0)
        {
          v35 = v34;
          v28 = sub_1C5DBCDF8();
          v37 = v36;
        }

        else
        {
          v37 = 0xE300000000000000;
        }

        v38 = sub_1C5C6AB10(v28, v37, &v52);

        *(v29 + 14) = v38;
        _os_log_impl(&dword_1C5C61000, v26, v27, "[ALC]: 🔴 TransitionController removeSmartTransitionOutroItemReference called with: %s but existing outroItemReference was %s", v29, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_4();
      }

      (*(v50 + 8))(v1, v51);
    }

    v39 = *(v2 + 112);
    *(v2 + 112) = 0;
  }

  OUTLINED_FUNCTION_237();
}

void sub_1C5DACED4(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = sub_1C5DE3F1C();
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = sub_1C5C6AA20(a1);
      if (v3 < 0)
      {
        goto LABEL_53;
      }

      v4 = v3;
      if (v3)
      {
        v5 = 0;
        v59 = a1 & 0xC000000000000001;
        v52 = a1 & 0xFFFFFFFFFFFFFF8;
        v57 = *(MEMORY[0x1E6960C70] + 8);
        v58 = *MEMORY[0x1E6960C70];
        v55 = *(MEMORY[0x1E6960C70] + 16);
        v56 = *(MEMORY[0x1E6960C70] + 12);
        v45 = *(MEMORY[0x1E6960C88] + 8);
        v46 = *MEMORY[0x1E6960C88];
        v44 = *(MEMORY[0x1E6960C88] + 12);
        v43 = *(MEMORY[0x1E6960C88] + 16);
        v47 = a1;
        v53 = v3;
        while (1)
        {
          v6 = a1 + 8 * v5;
          if (v59)
          {
            v7 = MEMORY[0x1C6954040](v5, a1);
          }

          else
          {
            if (v5 >= *(v52 + 16))
            {
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
              return;
            }

            v7 = *(v6 + 32);
            swift_unknownObjectRetain();
          }

          ++v5;
          v8 = [v7 avPlayerItem];
          if (!v8)
          {
            swift_unknownObjectRelease();
            goto LABEL_46;
          }

          v9 = v8;
          v10 = v57;
          v11 = v58;
          v12 = v55;
          LODWORD(v13) = v56;
          if (v5 < v4)
          {
            break;
          }

LABEL_39:
          [v9 advanceTimeForOverlappedPlayback];
          if (sub_1C60171E0())
          {
            v48 = v12;
            v49 = v10;
            v51 = v11;
            v29 = [v9 asset];
            [v29 duration];
            v30 = __src[0];
            v50 = v9;
            v31 = __src[1];
            v32 = HIDWORD(__src[1]);
            v33 = __src[2];

            OUTLINED_FUNCTION_1_50();
            sub_1C5DB1340(v54 + 16, v63, &qword_1ED7DF410, qword_1ED7DF420, &protocol descriptor for EventReporting, v34);
            if (v64)
            {
              __swift_project_boxed_opaque_existential_0(v63, v64);
              __src[0] = 0;
              __src[1] = 0xE000000000000000;
              sub_1C6017540();
              v60 = __src[0];
              v61 = __src[1];
              MEMORY[0x1C69534E0](0xD000000000000025, 0x80000001C6050B50);
              __src[0] = v30;
              v35 = v31;
              __src[1] = __PAIR64__(v32, v31);
              __src[2] = v33;
              type metadata accessor for CMTime();
              sub_1C6017650();
              MEMORY[0x1C69534E0](544108320, 0xE400000000000000);
              v36 = v50;
              v37 = sub_1C5DBCDF8();
              MEMORY[0x1C69534E0](v37);

              __src[0] = 0x6E776F6E6B6E75;
              __src[1] = 0xE700000000000000;
              __src[2] = v60;
              __src[3] = v61;
              sub_1C5D5CEC8(__src);
              memcpy(__dst, __src, sizeof(__dst));
              sub_1C5DBBF0C();
              a1 = v47;

              __swift_destroy_boxed_opaque_existential_0(v63);
              v38 = v35;
            }

            else
            {
              OUTLINED_FUNCTION_0_58();
              sub_1C5DB13B0(v63, &qword_1ED7DF410, qword_1ED7DF420, &protocol descriptor for EventReporting, v39);
              v38 = v31;
              v36 = v50;
            }

            __src[0] = v30;
            __src[1] = __PAIR64__(v32, v38);
            __src[2] = v33;
            [v36 setOverlappedPlaybackEndTime_];
            __src[0] = v51;
            __src[1] = __PAIR64__(v13, v49);
            __src[2] = v48;
            [v36 setAdvanceTimeForOverlappedPlayback_];
            swift_unknownObjectRelease();

            goto LABEL_45;
          }

          swift_unknownObjectRelease();

LABEL_46:
          if (v4 == v5)
          {
            return;
          }
        }

        if (v59)
        {
          v14 = MEMORY[0x1C6954040](v5, a1);
          v15 = &selRef_currentThread;
        }

        else
        {
          v15 = &selRef_currentThread;
          if (v5 >= *(v52 + 16))
          {
            goto LABEL_52;
          }

          v14 = *(v6 + 40);
          swift_unknownObjectRetain();
        }

        v16 = [v14 avPlayerItem];
        if (!v16)
        {
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          a1 = v47;
LABEL_45:
          v4 = v53;
          goto LABEL_46;
        }

        v17 = v16;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v18 = sub_1C5DE4028();
          v19 = v18;
          if (v18)
          {
            if (v18 != 1)
            {
              swift_unknownObjectRetain();
              if ([v7 shouldPerformOverlappingTransitionWith_])
              {
                [v19 v15[176]];
                v21 = v20;
                sub_1C5DB0BAC(v19);
                swift_unknownObjectRelease();
                sub_1C5DB0BAC(v19);
                if (v21 > 0.0)
                {
                  v22 = [v9 asset];
                  [v22 v15[176]];

                  sub_1C6017220();
                  v24 = v23 - v21;
                  if (v24 > 0.0)
                  {
                    [v9 currentTime];
                    sub_1C6017220();
                    if (v25 + 0.1 < v24)
                    {
                      if (swift_unknownObjectWeakLoadStrong())
                      {
                        v26 = sub_1C5DE3F2C();
                        swift_unknownObjectRelease();
                        if (v26)
                        {
                          if (v24 == INFINITY)
                          {
                            swift_unknownObjectRelease();

                            v10 = v45;
                            v11 = v46;
                            v12 = v43;
                            LODWORD(v13) = v44;
                          }

                          else
                          {
                            v11 = sub_1C6017210();
                            v41 = v40;
                            v12 = v42;
                            swift_unknownObjectRelease();

                            v10 = v41;
                            v13 = HIDWORD(v41);
                          }

                          goto LABEL_38;
                        }
                      }
                    }
                  }
                }

                goto LABEL_30;
              }
            }
          }

          else if ([v7 shouldPerformOverlappingTransitionWith_])
          {
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            return;
          }

          if ([v7 shouldPerformGaplessTransitionWith_] && (v27 = objc_msgSend(v7, sel_gaplessParameters)) != 0)
          {
            v28 = v27;
            [v27 durationInFrames];
            [v28 lastPacketsResync];
            [v28 encodingDelayInFrames];
            [v28 encodingDrainInFrames];
            [v28 heuristicInfo];

            swift_unknownObjectRelease();
          }

          else
          {
          }

          sub_1C5DB0BAC(v19);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_1C5DB0BAC(v19);
          goto LABEL_37;
        }

LABEL_30:
        swift_unknownObjectRelease();

LABEL_37:
        v10 = v57;
        v11 = v58;
        v12 = v55;
        LODWORD(v13) = v56;
LABEL_38:
        a1 = v47;
        v4 = v53;
        goto LABEL_39;
      }
    }
  }
}

void sub_1C5DAD5C8()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = v3;
  v12[4] = v1;
  sub_1C5DABCEC(__dst);
  if (!*(&__dst[1] + 1))
  {

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_0_58();
    sub_1C5DB13B0(__dst, v30, v31, v32, v33);
    goto LABEL_7;
  }

  v13 = v7;
  v116 = v12;
  sub_1C5C6BEFC(__dst, v117);
  v15 = *(&v117[1] + 1);
  v14 = *&v117[2];
  OUTLINED_FUNCTION_45(v117, *(&v117[1] + 1));
  v16 = *(v14 + 56);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v17 = v16(v15, v14);
  if (v18 != 1)
  {
    __swift_destroy_boxed_opaque_existential_0(v117);
    v12 = v116;
    v7 = v13;
LABEL_7:
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1C5DAF01C(v11, v9, v7 + 16, Strong, *(v7 + 64), v7 + 72, v120);
    swift_unknownObjectRelease();
    v35 = v121;
    v36 = v122;
    __swift_project_boxed_opaque_existential_0(v120, v121);
    OUTLINED_FUNCTION_16_0();
    v38 = v37(v35, v36);
    v40 = v39;
    OUTLINED_FUNCTION_1_50();
    sub_1C5DB1340(v7 + 16, v117, v41, v42, v43, v44);
    if (*(&v117[1] + 1))
    {
      OUTLINED_FUNCTION_45(v117, *(&v117[1] + 1));
      OUTLINED_FUNCTION_89();
      *&__src[0] = v38;
      *(&__src[0] + 1) = v40;
      *&__src[1] = 0xD000000000000024;
      *(&__src[1] + 1) = v45;
      sub_1C5D5CEC8(__src);
      memcpy(__dst, __src, 0xD9uLL);

      sub_1C5DBBF0C();

      __swift_destroy_boxed_opaque_existential_0(v117);
    }

    else
    {
      OUTLINED_FUNCTION_0_58();
      sub_1C5DB13B0(v117, v58, v59, v60, v61);
    }

    sub_1C5DABCEC(__src);
    v62 = *(&__src[1] + 1);
    if (*(&__src[1] + 1))
    {
      v63 = *&__src[2];
      __swift_project_boxed_opaque_existential_0(__src, *(&__src[1] + 1));
      OUTLINED_FUNCTION_16_0();
      v65 = v64(v62, v63);
      v67 = v66;
      __swift_destroy_boxed_opaque_existential_0(__src);
      v68 = v65 == v38 && v67 == v40;
      if (!v68 && (sub_1C6017860() & 1) == 0)
      {
        OUTLINED_FUNCTION_1_50();
        sub_1C5DB1340(v7 + 16, v118, v90, v91, v92, v93);
        if (v119)
        {
          __swift_project_boxed_opaque_existential_0(v118, v119);
          *&__src[0] = 0;
          *(&__src[0] + 1) = 0xE000000000000000;

          sub_1C6017540();

          OUTLINED_FUNCTION_89();
          *&__src[0] = 0xD00000000000001ELL;
          *(&__src[0] + 1) = v94;
          MEMORY[0x1C69534E0](v65, v67);
          *&v117[0] = v38;
          *(&v117[0] + 1) = v40;
          v117[1] = __src[0];
          sub_1C5D5CEC8(v117);
          memcpy(__src, v117, 0xD9uLL);
          sub_1C5DBBF0C();

          __swift_destroy_boxed_opaque_existential_0(v118);
        }

        else
        {
          OUTLINED_FUNCTION_0_58();
          sub_1C5DB13B0(v118, v108, v109, v110, v111);
        }

        sub_1C5C64D74(0, &qword_1ED7DCCF0);
        sub_1C6016940();
        v118[0] = 2;
        *&v117[0] = 0;
        *(&v117[0] + 1) = 0xE000000000000000;
        sub_1C6017540();

        *&v117[0] = 0x697469736E617254;
        *(&v117[0] + 1) = 0xEB00000000206E6FLL;
        MEMORY[0x1C69534E0](v65, v67);

        OUTLINED_FUNCTION_109();
        MEMORY[0x1C69534E0](0xD00000000000001DLL);
        MEMORY[0x1C69534E0](v38, v40);

        sub_1C6016880();
        _s3__C4CodeOMa_6();
        sub_1C5DB0894();
        OUTLINED_FUNCTION_26();
        v112 = sub_1C6017280();

        sub_1C5DAE024();

LABEL_43:
        sub_1C5DB0BBC(v120, v117);
        type metadata accessor for PlayerItemTransitionTask();
        v113 = swift_allocObject();
        *(v113 + 16) = 0;
        sub_1C5C6BEFC(v117, v113 + 24);
        *(v7 + 120) = v113;

        if (*(v7 + 120))
        {

          sub_1C5DAF884(sub_1C5DB07D8, v12);
        }

        goto LABEL_45;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_58();
      sub_1C5DB13B0(__src, v69, v70, v71, v72);
    }

    v73 = *(v7 + 120);
    if (v73)
    {
      v114 = v7;
      v115 = v40;
      v75 = v73[6];
      v74 = v73[7];
      OUTLINED_FUNCTION_45(v73 + 3, v75);
      v76 = *(v74 + 8);

      v77 = v76(v75, v74);
      v79 = v78;

      if (v77 == v38 && v79 == v115)
      {
      }

      else
      {
        v81 = sub_1C6017860();

        if ((v81 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      sub_1C5DABCEC(__src);
      v82 = *(&__src[1] + 1);
      if (*(&__src[1] + 1))
      {
        v83 = *&__src[2];
        __swift_project_boxed_opaque_existential_0(__src, *(&__src[1] + 1));
        v84 = (*(v83 + 56))(v82, v83);
        v86 = v85;
        __swift_destroy_boxed_opaque_existential_0(__src);
        v87 = v86 >= 2;
        v7 = v114;
        v88 = v87 && v84 == 1;
        v89 = v38;
        if (v88)
        {
          goto LABEL_26;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_58();
        sub_1C5DB13B0(__src, v95, v96, v97, v98);
        v89 = v38;
      }

      OUTLINED_FUNCTION_1_50();
      sub_1C5DB1340(v7 + 16, v118, v99, v100, v101, v102);
      if (v119)
      {
        OUTLINED_FUNCTION_45(v118, v119);
        OUTLINED_FUNCTION_89();
        *&v117[0] = v89;
        *(&v117[0] + 1) = v115;
        *&v117[1] = 0xD00000000000003DLL;
        *(&v117[1] + 1) = v103;
        sub_1C5D5CEC8(v117);
        memcpy(__src, v117, 0xD9uLL);
        sub_1C5DBBF0C();

        __swift_destroy_boxed_opaque_existential_0(v118);
      }

      else
      {

        OUTLINED_FUNCTION_0_58();
        sub_1C5DB13B0(v118, v104, v105, v106, v107);
      }

LABEL_45:
      __swift_destroy_boxed_opaque_existential_0(v120);

      goto LABEL_46;
    }

LABEL_26:

    goto LABEL_43;
  }

  v19 = v17;
  OUTLINED_FUNCTION_1_50();
  sub_1C5DB1340(v13 + 16, v120, v20, v21, v22, v23);
  if (v121)
  {
    __swift_project_boxed_opaque_existential_0(v120, v121);
    v24 = *(&v117[1] + 1);
    v25 = *&v117[2];
    __swift_project_boxed_opaque_existential_0(v117, *(&v117[1] + 1));
    OUTLINED_FUNCTION_16_0();
    v26(v24, v25);
    OUTLINED_FUNCTION_89();
    *&__src[0] = v27;
    *(&__src[0] + 1) = v28;
    *&__src[1] = 0xD00000000000003ALL;
    *(&__src[1] + 1) = v29;
    sub_1C5D5CEC8(__src);
    memcpy(__dst, __src, 0xD9uLL);
    sub_1C5DBBF0C();

    __swift_destroy_boxed_opaque_existential_0(v120);
  }

  else
  {
    OUTLINED_FUNCTION_0_58();
    sub_1C5DB13B0(v120, v46, v47, v48, v49);
  }

  v50 = *(&v117[1] + 1);
  v51 = *&v117[2];
  __swift_project_boxed_opaque_existential_0(v117, *(&v117[1] + 1));
  OUTLINED_FUNCTION_16_0();
  v53 = v52(v50, v51);
  v55 = v54;
  sub_1C5DB07E4();
  OUTLINED_FUNCTION_10_1();
  v56 = swift_allocError();
  *v57 = v53;
  *(v57 + 8) = v55;
  *(v57 + 16) = v19;
  *(v57 + 24) = 1;
  *&__src[0] = v56;
  BYTE8(__src[2]) = 1;
  sub_1C5D57DD8();
  sub_1C5DB0838(__src);
  __swift_destroy_boxed_opaque_existential_0(v117);

LABEL_46:

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_237();
}