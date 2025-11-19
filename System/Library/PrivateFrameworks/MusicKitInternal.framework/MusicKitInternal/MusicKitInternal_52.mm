uint64_t sub_1D52F41D0()
{
  sub_1D4F0029C();
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3 >= *(v1 + 24) >> 1)
  {
    OUTLINED_FUNCTION_75();
    v2 = v21;
  }

  *(v2 + 16) = v3 + 1;
  v4 = v2 + 80 * v3;
  *(v4 + 32) = 0xD000000000000016;
  *(v4 + 40) = 0x80000001D5689E30;
  *(v4 + 104) = 0;
  v0[7] = 60;
  v5 = sub_1D56160F8();
  v7 = v6;
  v8 = *(v2 + 16);
  v9 = v8 + 1;
  if (v8 >= *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_75();
    v2 = v22;
  }

  *(v2 + 16) = v9;
  v10 = v2 + 80 * v8;
  *(v10 + 32) = v5;
  *(v10 + 40) = v7;
  OUTLINED_FUNCTION_3_99(v10, v24, v26, v28, v30);
  if ((v8 + 2) > *(v2 + 24) >> 1)
  {
    sub_1D4F0029C();
    v2 = v23;
  }

  *(v2 + 16) = v8 + 2;
  v11 = v2 + 80 * v9;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0xE000000000000000;
  OUTLINED_FUNCTION_3_99(v11, v25, v27, v29, v31);
  OUTLINED_FUNCTION_57_1();
  sub_1D54F08F4(v12, v13, v14, v15, v16);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[13] = v17;
  *v17 = v18;
  v17[1] = sub_1D52F4390;
  v19 = v0[8];

  return sub_1D54F1FF0((v0 + 2));
}

uint64_t sub_1D52F4390()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (v0)
  {
    sub_1D51D2984(v3 + 16);
    OUTLINED_FUNCTION_71_0();

    return v9();
  }

  else
  {
    v11 = *(v3 + 64);
    OUTLINED_FUNCTION_204();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1D52F44B8()
{
  OUTLINED_FUNCTION_60();
  sub_1D51D2984(v0 + 16);
  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D52F4514()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);
  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D52F4570()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 64);

  v2 = *(v0 + 96);
  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D52F45CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_4_100(sub_1D52F45EC);
}

uint64_t sub_1D52F45EC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  *(v5 + 32) = v6;
  *(v5 + 48) = v2;
  OUTLINED_FUNCTION_27_0(dword_1D5650B98);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 72) = v7;
  *v7 = v8;
  v7[1] = sub_1D52F46D8;
  v9 = *(v0 + 16);
  OUTLINED_FUNCTION_153_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1D52F46D8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    v9 = v3[7];

    return MEMORY[0x1EEE6DFA0](sub_1D52C6A04, v9, 0);
  }

  else
  {
    v10 = v3[8];

    OUTLINED_FUNCTION_55();

    return v11();
  }
}

uint64_t sub_1D52F47F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D52F481C, a2, 0);
}

uint64_t sub_1D52F481C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0[3] + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);
  OUTLINED_FUNCTION_27_0(dword_1D566A688);
  v11 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[8] = v3;
  *v3 = v4;
  v3[1] = sub_1D52EF4B4;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];

  return v11(v9, v7, v8, v1, v5, v6);
}

uint64_t sub_1D52F48D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D52F48F0, v1, 0);
}

uint64_t sub_1D52F48F0()
{
  OUTLINED_FUNCTION_91();
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  OUTLINED_FUNCTION_27_0(dword_1D5650C20);
  v8 = v5;
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1D52F49CC;

  return v8(&unk_1D5650C18, v4);
}

uint64_t sub_1D52F49CC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[6] = v0;

  if (v0)
  {
    v9 = v3[3];
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    v14 = v3[4];

    v15 = *(v7 + 8);
    OUTLINED_FUNCTION_153_1();

    return v19(v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1D52F4B14()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_55();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_1D52F4B70(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D52F4B94, a1, 0);
}

uint64_t sub_1D52F4B94()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0[2] + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);
  OUTLINED_FUNCTION_27_0(&dword_1D564E038);
  v6 = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1D52F4C40;
  v4 = v0[3];

  return v6(v4);
}

uint64_t sub_1D52F4C40()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = *(v2 + 32);
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_55();

    return v6();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_42_37();

    return v9(v8);
  }
}

uint64_t sub_1D52F4D64()
{
  sub_1D5014360(v0 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_location);
  v1 = *(v0 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);

  v2 = *(v0 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D52F4DB4()
{
  sub_1D52F4D64();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t _s8DatabaseCMa()
{
  result = qword_1EDD5A008;
  if (!qword_1EDD5A008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D52F4E34()
{
  result = type metadata accessor for SQLDatabase.Location(319);
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

uint64_t sub_1D52F4EE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796C6E4F64616572 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469725764616572 && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D52F4FB0(char a1)
{
  if (a1)
  {
    return 0x7469725764616572;
  }

  else
  {
    return 0x796C6E4F64616572;
  }
}

uint64_t sub_1D52F4FEC(void *a1, int a2)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3D48, &qword_1D5650EA0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v30 = v5;
  v31 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3D50, &qword_1D5650EA8);
  OUTLINED_FUNCTION_4(v29);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3D58, &qword_1D5650EB0);
  OUTLINED_FUNCTION_4(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v29 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D52F8608();
  sub_1D56163D8();
  v27 = (v20 + 8);
  if (v32)
  {
    v34 = 1;
    sub_1D52F865C();
    sub_1D5616018();
    (*(v30 + 8))(v10, v31);
  }

  else
  {
    v33 = 0;
    sub_1D52F86B0();
    sub_1D5616018();
    (*(v12 + 8))(v17, v29);
  }

  return (*v27)(v25, v18);
}

uint64_t sub_1D52F5278(unint64_t a1)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3D18, &qword_1D5650E80);
  OUTLINED_FUNCTION_4(v49);
  v47 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3D20, &qword_1D5650E88);
  OUTLINED_FUNCTION_4(v8);
  v46 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3D28, &unk_1D5650E90);
  OUTLINED_FUNCTION_4(v15);
  v48 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v22 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_1D52F8608();
  v23 = v50;
  sub_1D5616398();
  if (v23)
  {
    goto LABEL_8;
  }

  v44 = v8;
  v45 = v14;
  v50 = a1;
  v24 = v49;
  v25 = sub_1D5615FE8();
  result = sub_1D4FE35F0(v25, 0);
  if (v28 == v29 >> 1)
  {
LABEL_7:
    v34 = sub_1D5615C18();
    swift_allocError();
    v36 = v35;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v36 = &_s8DatabaseC4ModeON;
    sub_1D5615F28();
    sub_1D5615BF8();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v48 + 8))(v21, v15);
    a1 = v50;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return a1;
  }

  v43 = 0;
  if (v28 < (v29 >> 1))
  {
    a1 = *(v27 + v28);
    sub_1D4FE35EC(v28 + 1, v29 >> 1, result, v27, v28, v29);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    if (v31 == v33 >> 1)
    {
      if (a1)
      {
        LODWORD(v46) = a1;
        v52 = 1;
        sub_1D52F865C();
        OUTLINED_FUNCTION_76_16();
        swift_unknownObjectRelease();
        (*(v47 + 8))(v7, v24);
        v39 = OUTLINED_FUNCTION_46_31();
        v40(v39);
        a1 = v46;
      }

      else
      {
        v51 = 0;
        sub_1D52F86B0();
        v38 = v45;
        OUTLINED_FUNCTION_76_16();
        swift_unknownObjectRelease();
        (*(v46 + 8))(v38, v44);
        v41 = OUTLINED_FUNCTION_46_31();
        v42(v41);
      }

      __swift_destroy_boxed_opaque_existential_1(v50);
      return a1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D52F571C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D52F4EE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D52F5744(uint64_t a1)
{
  v2 = sub_1D52F8608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D52F5780(uint64_t a1)
{
  v2 = sub_1D52F8608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D52F57BC(uint64_t a1)
{
  v2 = sub_1D52F86B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D52F57F8(uint64_t a1)
{
  v2 = sub_1D52F86B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D52F5834(uint64_t a1)
{
  v2 = sub_1D52F865C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D52F5870(uint64_t a1)
{
  v2 = sub_1D52F865C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D52F58AC@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D52F5278(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1D52F5910(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D52F5964()
{
  OUTLINED_FUNCTION_80();
  v1 = v0;
  v3 = v2;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_32(v4);
  *v5 = v6;
  v5[1] = sub_1D4E6ED20;

  return sub_1D52F3E24(v3, v1);
}

uint64_t sub_1D52F5A04()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_32(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_7_8(v7);

  return sub_1D52F47F8(v9, v10, v2, v3, v4, v5);
}

uint64_t sub_1D52F5AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1D52F5B00, v3, 0);
}

uint64_t sub_1D52F5C58()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v1 + 168);
  v6 = *(v1 + 152);
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_153_4();
  v8 = *(v7 + 136);
  OUTLINED_FUNCTION_204();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D52F5D88()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[14];
  sub_1D552EF80();
  v4 = OUTLINED_FUNCTION_83_19();
  *v3 = v5;
  *(v3 + 8) = v4;
  *(v3 + 24) = v6;
  *(v3 + 40) = v7;

  OUTLINED_FUNCTION_55();

  return v8();
}

uint64_t sub_1D52F5E10()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[20];
  v2 = v0[17];
  sub_1D552EF80();

  OUTLINED_FUNCTION_55();
  v4 = v0[22];

  return v3();
}

uint64_t sub_1D52F5E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[12] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1D52F5EC4, v3, 0);
}

uint64_t sub_1D52F5EC4()
{
  OUTLINED_FUNCTION_75_0();
  if (qword_1EDD58C20 != -1)
  {
    OUTLINED_FUNCTION_3_135();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v12 = *(v0 + 72);
  sub_1D552E500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAD18, &qword_1D561DB00);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_87_15(inited, xmmword_1D561C050);
  *(v0 + 104) = v13;
  *(v0 + 56) = v13;
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *(v4 + 16) = v12;
  OUTLINED_FUNCTION_0_177();
  sub_1D52F84F4(v5, v6);
  v7 = *(MEMORY[0x1E69E8950] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 120) = v8;
  *v8 = v9;
  v8[1] = sub_1D52F6060;
  v10 = *(v0 + 64);
  OUTLINED_FUNCTION_2_130();

  return MEMORY[0x1EEE6DE98]();
}

uint64_t sub_1D52F6060()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = v5[15];
  v7 = v5[14];
  v8 = v5[13];
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v3 + 128) = v0;

  v11 = *(v3 + 88);
  if (v0)
  {
    v12 = sub_1D52F61FC;
  }

  else
  {
    v12 = sub_1D52F61A0;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

uint64_t sub_1D52F61A0()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 88);
  sub_1D552EF80();
  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D52F61FC()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 88);
  sub_1D552EF80();
  OUTLINED_FUNCTION_55();
  v3 = *(v0 + 128);

  return v2();
}

uint64_t sub_1D52F6258(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D52F62A4, v2, 0);
}

uint64_t sub_1D52F62A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_78_21();
  OUTLINED_FUNCTION_75_0();
  if (qword_1EDD58C20 != -1)
  {
    OUTLINED_FUNCTION_3_135();
  }

  v14 = *(v12 + 96);
  v13 = *(v12 + 104);
  v33 = *(v12 + 80);
  sub_1D552E500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAD18, &qword_1D561DB00);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_38_36(inited, xmmword_1D561C050);
  *(v12 + 112) = a11;
  *(v12 + 72) = a11;
  v16 = swift_task_alloc();
  *(v12 + 120) = v16;
  *(v16 + 16) = v33;
  OUTLINED_FUNCTION_0_177();
  sub_1D52F84F4(v17, v18);
  v19 = *(MEMORY[0x1E69E8950] + 4);
  v20 = swift_task_alloc();
  *(v12 + 128) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3CE8, &unk_1D56611E0);
  OUTLINED_FUNCTION_68_22();
  *v20 = v21;
  OUTLINED_FUNCTION_36_43(v22);
  OUTLINED_FUNCTION_2_130();
  OUTLINED_FUNCTION_60_22();

  return MEMORY[0x1EEE6DE98](v23, v24, v25, v26, v27, v28, v29, v30, v33, *(&v33 + 1), a11, a12);
}

uint64_t sub_1D52F642C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = v5[16];
  v7 = v5[15];
  v8 = v5[14];
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v3 + 136) = v0;

  v11 = *(v3 + 96);
  if (v0)
  {
    v12 = sub_1D52F65D4;
  }

  else
  {
    v12 = sub_1D52F656C;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

uint64_t sub_1D52F656C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 96);
  sub_1D552EF80();
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_1D52F65D4()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 96);
  sub_1D552EF80();
  OUTLINED_FUNCTION_55();
  v3 = *(v0 + 136);

  return v2();
}

uint64_t sub_1D52F6630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1D52F667C, v3, 0);
}

uint64_t sub_1D52F667C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75_0();
  if (qword_1EDD58C20 != -1)
  {
    OUTLINED_FUNCTION_3_135();
  }

  v14 = v12[17];
  v13 = v12[18];
  OUTLINED_FUNCTION_79_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAD18, &qword_1D561DB00);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_87_15(inited, xmmword_1D561C050);
  v12[19] = v39;
  v12[13] = v39;
  v16 = swift_task_alloc();
  OUTLINED_FUNCTION_21_59(v16, v17, v18, v19, v20, v21, v22, v23, v24);
  OUTLINED_FUNCTION_0_177();
  sub_1D52F84F4(v25, v26);
  v27 = *(MEMORY[0x1E69E8950] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v12[21] = v28;
  *v28 = v29;
  v28[1] = sub_1D52F67FC;
  OUTLINED_FUNCTION_71_19();
  OUTLINED_FUNCTION_2_130();

  return MEMORY[0x1EEE6DE98](v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_1D52F67FC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = v5[21];
  v7 = v5[20];
  v8 = v5[19];
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v3 + 176) = v0;

  v11 = *(v3 + 136);
  if (v0)
  {
    v12 = sub_1D52F69B0;
  }

  else
  {
    v12 = sub_1D52F693C;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

uint64_t sub_1D52F693C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  sub_1D552EF80();
  v3 = OUTLINED_FUNCTION_83_19();
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 24) = v5;
  *(v2 + 40) = v6;
  OUTLINED_FUNCTION_55();

  return v7();
}

uint64_t sub_1D52F69B0()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 136);
  sub_1D552EF80();
  OUTLINED_FUNCTION_55();
  v3 = *(v0 + 176);

  return v2();
}

uint64_t sub_1D52F6A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1D52F6A58, v3, 0);
}

uint64_t sub_1D52F6BB0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v1 + 168);
  v6 = *(v1 + 152);
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_153_4();
  v8 = *(v7 + 136);
  OUTLINED_FUNCTION_204();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D52F6CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1D52F6D2C, v3, 0);
}

uint64_t sub_1D52F6E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1D52F6ED0, v3, 0);
}

uint64_t sub_1D52F7028()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_22_58();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_102(v1);

  return sub_1D552E5CC(v3, v4, v5);
}

uint64_t sub_1D52F70BC(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_1D52F71B0;

  return v6(v2 + 16);
}

uint64_t sub_1D52F71B0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D52F72A8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v3;
  *(v1 + 24) = v4;
  *(v1 + 40) = v2;
  return OUTLINED_FUNCTION_1_18();
}

uint64_t sub_1D52F72D0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D4E6ED20;

  return v7(a1);
}

uint64_t sub_1D52F73C8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_8(v1);

  return sub_1D52F72D0(v3, v4);
}

uint64_t sub_1D52F7458(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = sub_1D52F7548;

  return v5(v1 + 16);
}

uint64_t sub_1D52F7548()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 40) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D52F7660()
{
  OUTLINED_FUNCTION_55();
  v1 = *(v0 + 40);
  return v2();
}

uint64_t sub_1D52F7684(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_1D52F7778;

  return v6(v2 + 16);
}

uint64_t sub_1D52F7778()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D52F7870()
{
  OUTLINED_FUNCTION_55();
  v1 = *(v0 + 80);
  return v2();
}

uint64_t sub_1D52F7894(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_1D52F7988;

  return v6(v2 + 16);
}

uint64_t sub_1D52F7988()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D52F7A80(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_1D52F8A8C;

  return sub_1D52F70BC(v2 + 16, a2);
}

uint64_t sub_1D52F7B28()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t sub_1D52F7BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D52F7C58;

  return sub_1D52F4B70(a2, a3);
}

uint64_t sub_1D52F7C58()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_59_1();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v12 = v11;

  if (!v0)
  {
    v13 = *(v7 + 16);
    *v13 = v5;
    *(v13 + 8) = v3 & 1;
  }

  v14 = *(v11 + 8);
  OUTLINED_FUNCTION_153_1();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1D52F7D5C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t sub_1D52F7DEC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1D52F8A7C;

  return sub_1D52F7458(a2);
}

uint64_t sub_1D52F7E8C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t sub_1D52F7F1C(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_1D52F7FC4;

  return sub_1D52F7684(v2 + 16, a2);
}

uint64_t sub_1D52F7FC4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (!v0)
  {
    v9 = *(v3 + 64);
    v10 = *(v3 + 16);
    v11 = *(v3 + 32);
    *(v9 + 25) = *(v3 + 41);
    *v9 = v10;
    v9[1] = v11;
  }

  OUTLINED_FUNCTION_71_0();

  return v12();
}

uint64_t sub_1D52F80BC(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_1D52F8A8C;

  return sub_1D52F7894(v2 + 16, a2);
}

uint64_t sub_1D52F8164(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_1D52F8A8C;

  return sub_1D52F7894(v2 + 16, a2);
}

uint64_t sub_1D52F820C(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_1D52F8A8C;

  return sub_1D52F7894(v2 + 16, a2);
}

uint64_t sub_1D52F82B4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t sub_1D52F8344()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t sub_1D52F83D4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t sub_1D52F8464()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t sub_1D52F84F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D52F853C()
{
  result = qword_1EC7F3D08;
  if (!qword_1EC7F3D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D08);
  }

  return result;
}

unint64_t sub_1D52F85B4()
{
  result = qword_1EC7F3D10;
  if (!qword_1EC7F3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D10);
  }

  return result;
}

unint64_t sub_1D52F8608()
{
  result = qword_1EC7F3D30;
  if (!qword_1EC7F3D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D30);
  }

  return result;
}

unint64_t sub_1D52F865C()
{
  result = qword_1EC7F3D38;
  if (!qword_1EC7F3D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D38);
  }

  return result;
}

unint64_t sub_1D52F86B0()
{
  result = qword_1EC7F3D40;
  if (!qword_1EC7F3D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D40);
  }

  return result;
}

_BYTE *sub_1D52F8704(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D52F8804()
{
  result = qword_1EC7F3D60;
  if (!qword_1EC7F3D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D60);
  }

  return result;
}

unint64_t sub_1D52F885C()
{
  result = qword_1EC7F3D68;
  if (!qword_1EC7F3D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D68);
  }

  return result;
}

unint64_t sub_1D52F88B4()
{
  result = qword_1EC7F3D70;
  if (!qword_1EC7F3D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D70);
  }

  return result;
}

unint64_t sub_1D52F890C()
{
  result = qword_1EC7F3D78;
  if (!qword_1EC7F3D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D78);
  }

  return result;
}

unint64_t sub_1D52F8964()
{
  result = qword_1EC7F3D80;
  if (!qword_1EC7F3D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D80);
  }

  return result;
}

unint64_t sub_1D52F89BC()
{
  result = qword_1EC7F3D88;
  if (!qword_1EC7F3D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D88);
  }

  return result;
}

unint64_t sub_1D52F8A14()
{
  result = qword_1EC7F3D90;
  if (!qword_1EC7F3D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D90);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_34_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 152) = a11;
  *(v11 + 104) = a11;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_37_35(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v1;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_51_30()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_65_26(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[6];
  v4 = v2[7];
  return v2[5];
}

uint64_t OUTLINED_FUNCTION_76_16()
{
  v2 = *(v0 - 144);

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_80_13()
{
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
}

uint64_t OUTLINED_FUNCTION_81_23(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[7];
  v4 = v2[8];
  result = v2[5];
  v6 = v2[6];
  return result;
}

void OUTLINED_FUNCTION_87_15(uint64_t a1, __n128 a2)
{
  *(a1 + 16) = a2;
  *(a1 + 32) = v2;

  sub_1D4EF3348(a1);
}

unint64_t sub_1D52F8C28(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  if (*v1 < 0)
  {
    v19 = v1[2];
    v20 = v5;
    v21 = v8;
    v22 = v7;
    v23 = v9;
    v24 = v1[7];
    sub_1D5615B68();

    v17 = 0x22206E6D756C6F43;
    v18 = 0xE800000000000000;
    MEMORY[0x1DA6EAC70](*((v4 & 0x7FFFFFFFFFFFFFFFLL) + 0x10), *((v4 & 0x7FFFFFFFFFFFFFFFLL) + 0x18));
    MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D568A720);
    if (v3)
    {
      sub_1D5615B68();

      strcpy(v16, " Actual type: ");
      HIBYTE(v16[1]) = -18;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7F3D98, &qword_1D56511A0);
      v12 = sub_1D5614DB8();
      MEMORY[0x1DA6EAC70](v12);

      MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
      MEMORY[0x1DA6EAC70](v16[0], v16[1]);
    }

    v16[0] = 32;
    v16[1] = 0xE100000000000000;
    v13 = *(a1 + 16);
    _s10QueryErrorO7ContextVMa();
    v14 = sub_1D52F8EA8();
    MEMORY[0x1DA6EAC70](v14);
  }

  else
  {
    v19 = v1[1];
    v20 = v6;
    v21 = v5;
    v22 = v8;
    v23 = v7;
    v24 = v9;
    sub_1D5615B68();

    v17 = 0xD000000000000011;
    v18 = 0x80000001D568A740;
    MEMORY[0x1DA6EAC70](*(v4 + 16), *(v4 + 24));
    MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D568A760);
    v16[0] = 32;
    v16[1] = 0xE100000000000000;
    v10 = *(a1 + 16);
    _s10QueryErrorO7ContextVMa();
    v11 = sub_1D52F8EA8();
    MEMORY[0x1DA6EAC70](v11);

    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  }

  MEMORY[0x1DA6EAC70](v16[0], v16[1]);

  return v17;
}

uint64_t sub_1D52F8EA8()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = v1;
    sub_1D5615B68();

    v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v4 = sub_1D5614DB8();
    MEMORY[0x1DA6EAC70](v4);

    sub_1D4EFF8E4();
    v6 = v5;
    v7 = *(v5 + 16);
    if (v7 >= *(v5 + 24) >> 1)
    {
      sub_1D4EFF8E4();
      v6 = v19;
    }

    *(v6 + 16) = v7 + 1;
    v8 = v6 + 16 * v7;
    *(v8 + 32) = 0xD000000000000011;
    *(v8 + 40) = 0x80000001D568A7A0;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v0 + 32);
  if (v9 == 255)
  {
    if (!*(v6 + 16))
    {

      MEMORY[0x1DA6EAC70](1701736302, 0xE400000000000000);
      goto LABEL_14;
    }
  }

  else
  {
    v23 = *v0;
    v24 = *(v0 + 8);
    v25 = *(v0 + 16);
    v26 = *(v0 + 24);
    sub_1D51D2A80(*v0, v24, v25, v26, v9 & 1);
    sub_1D5615B68();

    v10 = sub_1D54F1774();
    v12 = v11;
    sub_1D52F927C(v23, v24, v25, v26, v9);
    MEMORY[0x1DA6EAC70](v10, v12);

    MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = *(v6 + 16);
      sub_1D4EFF8E4();
      v6 = v21;
    }

    v13 = *(v6 + 16);
    if (v13 >= *(v6 + 24) >> 1)
    {
      sub_1D4EFF8E4();
      v6 = v22;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = 0xD000000000000012;
    *(v14 + 40) = 0x80000001D568A780;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D50A9E08();
  v15 = sub_1D5614CF8();
  v17 = v16;

  MEMORY[0x1DA6EAC70](v15, v17);

LABEL_14:
  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0x28747865746E6F43;
}

unint64_t sub_1D52F91CC()
{
  v0 = sub_1D52F8EA8();
  MEMORY[0x1DA6EAC70](v0);

  return 0xD000000000000034;
}

unint64_t sub_1D52F9228()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_1D52F91CC();
}

uint64_t sub_1D52F927C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1D51D29D8(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_1D52F9294()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_16MusicKitInternal3SQLOSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D52F92FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 64))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D52F9350(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
      *(result + 40) = 0u;
      *(result + 56) = 0;
    }
  }

  return result;
}

uint64_t sub_1D52F9404()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D52F9440(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D52F9494(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t _s8LocationVMa()
{
  result = qword_1EDD5A078;
  if (!qword_1EDD5A078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D52F9568()
{
  result = type metadata accessor for SQLDatabase.Location(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D52F95D8()
{
  result = qword_1EC7F3EA0[0];
  if (!qword_1EC7F3EA0[0])
  {
    _s8LocationVMa();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7F3EA0);
  }

  return result;
}

uint64_t sub_1D52F9630@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SQLDatabase.Location(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1D52FA270(v2, v7 - v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D560C0A8();
    (*(*(v9 - 8) + 32))(a1, v8, v9);
    v10 = OUTLINED_FUNCTION_60_0();
    v13 = v9;
  }

  else
  {
    sub_1D52FA2D4(v8);
    v13 = sub_1D560C0A8();
    v10 = a1;
    v11 = 1;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_1D52F9734@<X0>(void *a1@<X8>)
{
  v81[3] = *MEMORY[0x1E69E9840];
  v2 = sub_1D560BDE8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v78 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v7 = sub_1D560BEE8();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = sub_1D560C0A8();
  v17 = OUTLINED_FUNCTION_4(v16);
  v79 = v18;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17);
  v23 = &v74[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v80 = &v74[-v24];
  sub_1D4E4D51C();
  if (sub_1D4E4D5FC())
  {
    if (qword_1EDD5D8B0 != -1)
    {
      OUTLINED_FUNCTION_0_20();
    }

    v25 = sub_1D560C758();
    __swift_project_value_buffer(v25, qword_1EDD76DE0);
    v26 = sub_1D560C738();
    v27 = sub_1D56156E8();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_14;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Testing environment detected while initializing the database from the MusicLibrary. To avoid corrupting existing data, overriding database configuration to run in-memory.";
LABEL_13:
    _os_log_impl(&dword_1D4E3F000, v26, v27, v29, v28, 2u);
    OUTLINED_FUNCTION_122();
LABEL_14:

    sub_1D4EF1814(0xD000000000000040, 0x80000001D567E560, 0xFuLL);
    *a1 = v37;
    a1[1] = v38;
    type metadata accessor for SQLDatabase.Location(0);
    swift_storeEnumTagMultiPayload();
    _s8LocationVMa();
    v39 = *MEMORY[0x1E69E9840];
    v40 = OUTLINED_FUNCTION_60_0();

    return __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  }

  v77 = v16;
  v30 = [objc_opt_self() mainBundle];
  v31 = sub_1D5615818();

  if ((v31 & 1) == 0)
  {
    if (qword_1EDD5D8B0 != -1)
    {
      OUTLINED_FUNCTION_0_20();
    }

    v36 = sub_1D560C758();
    __swift_project_value_buffer(v36, qword_1EDD76DE0);
    v26 = sub_1D560C738();
    v27 = sub_1D56156C8();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_14;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Trying to use the database in not-Music.app. Defaulting to in-memory database (DATA IS DELETED ON PROCESS QUIT).";
    goto LABEL_13;
  }

  sub_1D52FA020();
  v32 = [objc_opt_self() defaultManager];
  v33 = sub_1D560BF68();
  v81[0] = 0;
  v34 = [v32 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:v81];

  if (v34)
  {
    v35 = v81[0];
  }

  else
  {
    v45 = v81[0];
    v46 = sub_1D560BE98();

    swift_willThrow();
    if (qword_1EDD5D8B0 != -1)
    {
      OUTLINED_FUNCTION_0_20();
    }

    v47 = sub_1D560C758();
    __swift_project_value_buffer(v47, qword_1EDD76DE0);
    v48 = v46;
    v49 = sub_1D560C738();
    v50 = sub_1D56156C8();

    v76 = v49;
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v75 = v50;
      v53 = v52;
      *v51 = 138543362;
      v54 = v46;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 4) = v55;
      *v53 = v55;
      _os_log_impl(&dword_1D4E3F000, v76, v75, "Unable to createDirectory, are you in a read-only environment? %{public}@", v51, 0xCu);
      sub_1D5103588(v53);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    else
    {
    }
  }

  v81[0] = 0xD000000000000013;
  v81[1] = 0x80000001D5689F60;
  (*(v10 + 104))(v15, *MEMORY[0x1E6968F70], v7);
  sub_1D4F53278();
  sub_1D560C088();
  (*(v10 + 8))(v15, v7);
  sub_1D560BDD8();
  sub_1D560BDC8();
  sub_1D560BF58();
  v56 = OUTLINED_FUNCTION_5_103();
  v57(v56);
  v58 = v79;
  if (qword_1EDD5D8B0 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v59 = sub_1D560C758();
  __swift_project_value_buffer(v59, qword_1EDD76DE0);
  v60 = sub_1D560C738();
  v61 = sub_1D56156E8();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v81[0] = v63;
    *v62 = 136446210;
    swift_beginAccess();
    v64 = sub_1D560BF08();
    v66 = sub_1D4E6835C(v64, v65, v81);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_1D4E3F000, v60, v61, "Storing database on disk at %{public}s.", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  v67 = *(v58 + 8);
  v68 = v77;
  v67(v80, v77);
  swift_beginAccess();
  (*(v58 + 16))(a1, v23, v68);
  type metadata accessor for SQLDatabase.Location(0);
  swift_storeEnumTagMultiPayload();
  _s8LocationVMa();
  v69 = OUTLINED_FUNCTION_60_0();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
  result = (v67)(v23, v68);
  v73 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D52FA020()
{
  v0 = sub_1D560BEE8();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  (*(v3 + 104))(v7 - v6, *MEMORY[0x1E6968F58], v0);
  sub_1D4F53278();
  sub_1D560C088();
  return (*(v3 + 8))(v8, v0);
}

uint64_t sub_1D52FA144()
{
  sub_1D56162D8();
  sub_1D54E73DC();
  return sub_1D5616328();
}

uint64_t sub_1D52FA190()
{
  sub_1D56162D8();
  sub_1D54E73DC();
  return sub_1D5616328();
}

uint64_t sub_1D52FA1CC()
{
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000047, 0x80000001D568A800);
  type metadata accessor for SQLDatabase.Location(0);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D52FA270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLDatabase.Location(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D52FA2D4(uint64_t a1)
{
  v2 = type metadata accessor for SQLDatabase.Location(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D52FA374(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D5616168();
  }
}

uint64_t sub_1D52FA3A4()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_1D52FA488()
{
  sub_1D52FA3A4();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1D52FA4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a3;
  v4[25] = a4;
  v4[22] = a1;
  v4[23] = a2;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D52FA510()
{
  v3 = *(v2 + 184);
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v4 = *(v2 + 176) & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_1D4F0029C();
    OUTLINED_FUNCTION_144_3(v5);
    if (v6)
    {
      OUTLINED_FUNCTION_4_101();
      v1 = v117;
    }

    OUTLINED_FUNCTION_64_16();
    *(v7 + 32) = 0x205443454C4553;
    *(v7 + 40) = 0xE700000000000000;
    *(v7 + 104) = 0;
    if (qword_1EDD5A218 != -1)
    {
      OUTLINED_FUNCTION_5_104();
      v0 = *(v1 + 16);
    }

    v9 = *aValue_19;
    v8 = unk_1EC7E98B0;
    v10 = *(v1 + 24);

    if (v0 >= v10 >> 1)
    {
      OUTLINED_FUNCTION_8_98();
      v1 = v118;
    }

    OUTLINED_FUNCTION_61_3();
    *(v11 + 32) = v9;
    *(v11 + 40) = v8;
    v20 = OUTLINED_FUNCTION_17_68(v12, v13, v14, v15, v16, v17, v18, v19, v124, v131, v138);
    OUTLINED_FUNCTION_21(v21, v20, v22, v23);
    if ((v0 + 2) > *(v1 + 24) >> 1)
    {
      OUTLINED_FUNCTION_4_101();
      v1 = v119;
    }

    OUTLINED_FUNCTION_64_16();
    *(v24 + 32) = 0x204D4F524620;
    *(v24 + 40) = 0xE600000000000000;
    v33 = OUTLINED_FUNCTION_17_68(v25, v26, v27, v28, v29, v30, v31, v32, v125, v132, *&v139);
    OUTLINED_FUNCTION_21(v34, v33, v35, v36);
    v37 = OUTLINED_FUNCTION_30_49();
    v39 = v38;
    v40 = *(v1 + 16);
    v41 = *(v1 + 24);

    if (v40 >= v41 >> 1)
    {
      OUTLINED_FUNCTION_8_98();
      v1 = v120;
    }

    *(v1 + 16) = v40 + 1;
    v43 = v1 + 80 * v40;
    *(v43 + 32) = v37;
    *(v43 + 40) = v39;
    v51 = OUTLINED_FUNCTION_17_68(v42, v44, v45, v46, v47, v48, v49, v50, v126, v133, *&v140);
    OUTLINED_FUNCTION_21(v52, v51, v53, v54);
    if ((v40 + 2) > *(v1 + 24) >> 1)
    {
      OUTLINED_FUNCTION_4_101();
      v1 = v121;
    }

    OUTLINED_FUNCTION_64_16();
    OUTLINED_FUNCTION_18_72(v55);
    v64 = OUTLINED_FUNCTION_17_68(v56, v57, v58, v59, v60, v61, v62, v63, v127, v134, *&v141);
    OUTLINED_FUNCTION_21(v65, v64, v66, v67);
    v69 = qword_1EC7E98D0;
    v68 = unk_1EC7E98D8;
    v70 = *(v1 + 24);

    if ((v40 + 3) > (v70 >> 1))
    {
      OUTLINED_FUNCTION_8_98();
      v1 = v122;
    }

    OUTLINED_FUNCTION_61_3();
    *(v71 + 32) = v69;
    *(v71 + 40) = v68;
    v80 = OUTLINED_FUNCTION_17_68(v72, v73, v74, v75, v76, v77, v78, v79, v128, v135, *&v142);
    OUTLINED_FUNCTION_21(v81, v80, v82, v83);
    if ((v40 + 4) > *(v1 + 24) >> 1)
    {
      OUTLINED_FUNCTION_4_101();
      v1 = v123;
    }

    v84 = *(v2 + 176);
    v85 = *(v2 + 184);
    OUTLINED_FUNCTION_288();
    OUTLINED_FUNCTION_27_54();
    v94 = OUTLINED_FUNCTION_17_68(v86, v87, v88, v89, v90, v91, v92, v93, v129, v136, *&v143);
    OUTLINED_FUNCTION_52_20(v94, v95, v96);
    OUTLINED_FUNCTION_29_49(v97);
    *(v2 + 88) = 1;
    v98 = *(v1 + 24);

    if ((v40 + 5) > (v98 >> 1))
    {
      OUTLINED_FUNCTION_8_98();
    }

    OUTLINED_FUNCTION_61_3();
    OUTLINED_FUNCTION_140_7(v99);
    __swift_destroy_boxed_opaque_existential_1((v2 + 96));
    OUTLINED_FUNCTION_97_2();
    if (v6)
    {
      OUTLINED_FUNCTION_4_101();
    }

    OUTLINED_FUNCTION_64_16();
    *(v100 + 32) = 0;
    *(v100 + 40) = 0xE000000000000000;
    v109 = OUTLINED_FUNCTION_17_68(v101, v102, v103, v104, v105, v106, v107, v108, v130, v137, *&v144);
    OUTLINED_FUNCTION_21(v110, v109, v111, v112);
    OUTLINED_FUNCTION_21_60(MEMORY[0x1E69E7CC0], v2 + 136);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v2 + 208) = v113;
    *v113 = v114;
    OUTLINED_FUNCTION_24_54(v113);

    return sub_1D52ABE9C();
  }

  else
  {
    v116 = *(v2 + 8);

    return v116(0, 0);
  }
}

uint64_t sub_1D52FA8B8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_59_1();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  *v8 = v7;
  v10 = *(v9 + 208);
  v11 = *v3;
  OUTLINED_FUNCTION_23_0();
  *v12 = v11;

  sub_1D51D2984(v7 + 136);
  if (v2)
  {
    v13 = *(v11 + 8);

    return v13();
  }

  else
  {
    *(v7 + 216) = a2;
    *(v7 + 224) = a1;
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v15, v16, v17);
  }
}

uint64_t sub_1D52FAA04()
{
  v1 = *(v0 + 224);
  if (*(v0 + 216))
  {
    v2 = *(v0 + 224);
  }

  else
  {
    v2 = 0;
  }

  return (*(v0 + 8))(v2);
}

uint64_t sub_1D52FAA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[41] = a5;
  v6[42] = a6;
  v6[39] = a3;
  v6[40] = a4;
  v6[37] = a1;
  v6[38] = a2;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D52FAA44()
{
  sub_1D4F0029C();
  v4 = v3;
  OUTLINED_FUNCTION_22_59(v3);
  if (v5)
  {
    OUTLINED_FUNCTION_4_101();
    v4 = v46;
  }

  OUTLINED_FUNCTION_123_0();
  v7 = v4 + v2 * v6;
  *(v7 + 32) = 0xD000000000000017;
  *(v7 + 40) = v0;
  *(v7 + 104) = 0;
  v8 = OUTLINED_FUNCTION_30_49();
  v10 = v9;
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);

  if (v11 >= v12 >> 1)
  {
    OUTLINED_FUNCTION_7_104();
    v4 = v47;
  }

  OUTLINED_FUNCTION_123_0();
  v14 = v4 + v11 * v13;
  *(v14 + 32) = v8;
  *(v14 + 40) = v10;
  OUTLINED_FUNCTION_3_99(v14, v55, v61, v67, v73);
  if ((v11 + 2) > *(v4 + 24) >> 1)
  {
    OUTLINED_FUNCTION_8_98();
    v4 = v48;
  }

  OUTLINED_FUNCTION_61_3();
  *(v15 + 32) = 0x202020200A28;
  *(v15 + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_3_99(v15, v56, v62, v68, v74);
  if (qword_1EDD5A218 != -1)
  {
    OUTLINED_FUNCTION_5_104();
  }

  v17 = qword_1EC7E98D0;
  v16 = unk_1EC7E98D8;
  v18 = *(v4 + 16);
  v19 = *(v4 + 24);

  if (v18 >= v19 >> 1)
  {
    OUTLINED_FUNCTION_8_98();
    v4 = v49;
  }

  *(v4 + 16) = v18 + 1;
  v20 = v4 + 80 * v18;
  *(v20 + 32) = v17;
  *(v20 + 40) = v16;
  OUTLINED_FUNCTION_3_99(v20, v57, v63, v69, v75);
  if ((v18 + 2) > *(v4 + 24) >> 1)
  {
    OUTLINED_FUNCTION_4_101();
    v4 = v50;
  }

  OUTLINED_FUNCTION_64_16();
  *(v21 + 32) = 0x202020200A2CLL;
  *(v21 + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_3_99(v21, v58, v64, v70, v76);
  v23 = *aValue_19;
  v22 = unk_1EC7E98B0;
  v24 = *(v4 + 24);

  if ((v18 + 3) > (v24 >> 1))
  {
    OUTLINED_FUNCTION_8_98();
    v4 = v51;
  }

  OUTLINED_FUNCTION_61_3();
  *(v25 + 32) = v23;
  *(v25 + 40) = v22;
  OUTLINED_FUNCTION_1_135(v25, v59, v65, v71, v77);
  *(v26 + 104) = 0;
  if ((v18 + 4) > *(v4 + 24) >> 1)
  {
    OUTLINED_FUNCTION_4_101();
    v4 = v52;
  }

  v27 = *(v1 + 312);
  v28 = *(v1 + 320);
  OUTLINED_FUNCTION_288();
  *(v29 + 32) = 0xD000000000000010;
  *(v29 + 40) = 0x80000001D5687730;
  OUTLINED_FUNCTION_52_20(v60, v66, v72);
  v30 = MEMORY[0x1E69E6158];
  *(v1 + 200) = MEMORY[0x1E69E6158];
  *(v1 + 208) = &off_1F50C0538;
  *(v1 + 176) = v31;
  *(v1 + 184) = v28;
  sub_1D4E628D4(v1 + 176, v1 + 16);
  *(v1 + 88) = 1;
  v32 = *(v4 + 24);

  if ((v18 + 5) > (v32 >> 1))
  {
    OUTLINED_FUNCTION_8_98();
    v4 = v53;
  }

  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_140_7(v33);
  __swift_destroy_boxed_opaque_existential_1((v1 + 176));
  OUTLINED_FUNCTION_97_2();
  if (v5)
  {
    OUTLINED_FUNCTION_4_101();
    v4 = v54;
  }

  v34 = *(v1 + 296);
  v35 = *(v1 + 304);
  OUTLINED_FUNCTION_288();
  *(v36 + 32) = 0x202020200A2CLL;
  *(v36 + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_52_20(v60, v66, v72);
  *(v1 + 240) = v30;
  *(v1 + 248) = &off_1F50C0538;
  *(v1 + 216) = v37;
  *(v1 + 224) = v35;
  sub_1D4E628D4(v1 + 216, v1 + 96);
  *(v1 + 168) = 1;
  v38 = *(v4 + 24);

  if ((v18 + 7) > (v38 >> 1))
  {
    OUTLINED_FUNCTION_8_98();
  }

  OUTLINED_FUNCTION_61_3();
  memcpy((v39 + 32), (v1 + 96), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v1 + 216));
  OUTLINED_FUNCTION_97_2();
  if (v5)
  {
    OUTLINED_FUNCTION_4_101();
  }

  OUTLINED_FUNCTION_64_16();
  *(v40 + 32) = 10506;
  *(v40 + 40) = 0xE200000000000000;
  OUTLINED_FUNCTION_3_99(v40, v60, v66, v72, v78);
  OUTLINED_FUNCTION_21_60(MEMORY[0x1E69E7CC0], v1 + 256);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 344) = v41;
  *v41 = v42;
  v41[1] = sub_1D52FAE30;
  v43 = *(v1 + 328);
  v44 = *(v1 + 336);

  return sub_1D52EF24C(v1 + 256, v43, v44);
}

uint64_t sub_1D52FAE30()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 344);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 352) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1D51D2984(v3 + 256);
    OUTLINED_FUNCTION_55();

    return v12();
  }
}

uint64_t sub_1D52FAF4C()
{
  OUTLINED_FUNCTION_60();
  sub_1D51D2984(v0 + 256);
  OUTLINED_FUNCTION_55();
  v2 = *(v0 + 352);

  return v1();
}

uint64_t sub_1D52FAFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a3;
  v4[25] = a4;
  v4[22] = a1;
  v4[23] = a2;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D52FAFC0()
{
  sub_1D4F0029C();
  OUTLINED_FUNCTION_144_3(v2);
  if (v3)
  {
    OUTLINED_FUNCTION_4_101();
    v0 = v89;
  }

  OUTLINED_FUNCTION_64_16();
  strcpy((v4 + 32), "DELETE FROM ");
  *(v4 + 45) = 0;
  *(v4 + 46) = -5120;
  *(v4 + 104) = 0;
  v5 = OUTLINED_FUNCTION_30_49();
  v7 = v6;
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);

  if (v8 >= v9 >> 1)
  {
    OUTLINED_FUNCTION_7_104();
    v0 = v90;
  }

  OUTLINED_FUNCTION_123_0();
  v11 = v0 + v8 * v10;
  *(v11 + 32) = v5;
  *(v11 + 40) = v7;
  v20 = OUTLINED_FUNCTION_11_90(v12, v13, v14, v15, v16, v17, v18, v19, v93, v98);
  OUTLINED_FUNCTION_21(v21, v20, v22, v23);
  if ((v8 + 2) > *(v0 + 24) >> 1)
  {
    OUTLINED_FUNCTION_8_98();
    v0 = v91;
  }

  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_18_72(v24);
  v33 = OUTLINED_FUNCTION_11_90(v25, v26, v27, v28, v29, v30, v31, v32, v94, *&v99);
  OUTLINED_FUNCTION_21(v34, v33, v35, v36);
  if (qword_1EDD5A218 != -1)
  {
    OUTLINED_FUNCTION_5_104();
  }

  v38 = qword_1EC7E98D0;
  v37 = unk_1EC7E98D8;
  v39 = *(v0 + 16);
  v40 = *(v0 + 24);

  if (v39 >= v40 >> 1)
  {
    OUTLINED_FUNCTION_8_98();
    v0 = v41;
  }

  *(v0 + 16) = v39 + 1;
  v49 = v0 + 80 * v39;
  *(v49 + 32) = v38;
  *(v49 + 40) = v37;
  v50 = OUTLINED_FUNCTION_11_90(v41, v42, v43, v44, v45, v46, v47, v48, v95, *&v100);
  OUTLINED_FUNCTION_21(v51, v50, v52, v53);
  if ((v39 + 2) > *(v0 + 24) >> 1)
  {
    OUTLINED_FUNCTION_4_101();
    v0 = v92;
  }

  v54 = *(v1 + 176);
  v55 = *(v1 + 184);
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_27_54();
  v64 = OUTLINED_FUNCTION_11_90(v56, v57, v58, v59, v60, v61, v62, v63, v96, *&v101);
  OUTLINED_FUNCTION_52_20(v64, v65, v66);
  OUTLINED_FUNCTION_29_49(v67);
  *(v1 + 88) = 1;
  v68 = *(v0 + 24);

  if ((v39 + 3) > (v68 >> 1))
  {
    OUTLINED_FUNCTION_8_98();
  }

  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_140_7(v69);
  __swift_destroy_boxed_opaque_existential_1((v1 + 96));
  OUTLINED_FUNCTION_97_2();
  if (v3)
  {
    OUTLINED_FUNCTION_4_101();
  }

  OUTLINED_FUNCTION_64_16();
  *(v70 + 32) = 0;
  *(v70 + 40) = 0xE000000000000000;
  v79 = OUTLINED_FUNCTION_11_90(v71, v72, v73, v74, v75, v76, v77, v78, v97, *&v102);
  OUTLINED_FUNCTION_21(v80, v79, v81, v82);
  OUTLINED_FUNCTION_21_60(MEMORY[0x1E69E7CC0], v1 + 136);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 208) = v83;
  *v83 = v84;
  v85 = OUTLINED_FUNCTION_24_54(v83);

  return sub_1D52EF24C(v85, v86, v87);
}

uint64_t sub_1D52FB278()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 208);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 216) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1D51D2984(v3 + 136);
    OUTLINED_FUNCTION_55();

    return v12();
  }
}

uint64_t sub_1D52FB394()
{
  OUTLINED_FUNCTION_60();
  sub_1D51D2984(v0 + 136);
  OUTLINED_FUNCTION_55();
  v2 = *(v0 + 216);

  return v1();
}

uint64_t sub_1D52FB3F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D52FB404()
{
  sub_1D4F0029C();
  v4 = v3;
  OUTLINED_FUNCTION_22_59(v3);
  if (v5)
  {
    OUTLINED_FUNCTION_4_101();
    v4 = v34;
  }

  OUTLINED_FUNCTION_123_0();
  v7 = v4 + v2 * v6;
  *(v7 + 32) = 0xD00000000000001BLL;
  *(v7 + 40) = v0;
  *(v7 + 104) = 0;
  v8 = OUTLINED_FUNCTION_30_49();
  v10 = v9;
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);

  if (v11 >= v12 >> 1)
  {
    OUTLINED_FUNCTION_7_104();
    v4 = v35;
  }

  OUTLINED_FUNCTION_123_0();
  v14 = v4 + v11 * v13;
  *(v14 + 32) = v8;
  *(v14 + 40) = v10;
  OUTLINED_FUNCTION_3_99(v14, v40, v46, v52, v58);
  if ((v11 + 2) > *(v4 + 24) >> 1)
  {
    OUTLINED_FUNCTION_8_98();
    v4 = v36;
  }

  OUTLINED_FUNCTION_61_3();
  *(v15 + 32) = 0x202020200A28;
  *(v15 + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_3_99(v15, v41, v47, v53, v59);
  if (qword_1EDD5A218 != -1)
  {
    OUTLINED_FUNCTION_5_104();
  }

  v17 = qword_1EC7E98D0;
  v16 = unk_1EC7E98D8;
  v18 = *(v4 + 16);
  v19 = *(v4 + 24);

  if (v18 >= v19 >> 1)
  {
    OUTLINED_FUNCTION_7_104();
    v4 = v37;
  }

  OUTLINED_FUNCTION_123_0();
  v21 = v4 + v18 * v20;
  *(v21 + 32) = v17;
  *(v21 + 40) = v16;
  OUTLINED_FUNCTION_1_135(v21, v42, v48, v54, v60);
  *(v22 + 104) = 0;
  if ((v18 + 2) > *(v4 + 24) >> 1)
  {
    OUTLINED_FUNCTION_8_98();
    v4 = v38;
  }

  OUTLINED_FUNCTION_61_3();
  *(v23 + 32) = 0xD000000000000027;
  *(v23 + 40) = 0x80000001D568A880;
  OUTLINED_FUNCTION_3_99(v23, v43, v49, v55, v61);
  v25 = *aValue_19;
  v24 = unk_1EC7E98B0;
  v26 = *(v4 + 24);

  if ((v18 + 3) > (v26 >> 1))
  {
    OUTLINED_FUNCTION_7_104();
    v4 = v39;
  }

  OUTLINED_FUNCTION_64_16();
  *(v27 + 32) = v25;
  *(v27 + 40) = v24;
  OUTLINED_FUNCTION_3_99(v27, v44, v50, v56, v62);
  if ((v18 + 4) > *(v4 + 24) >> 1)
  {
    OUTLINED_FUNCTION_8_98();
  }

  OUTLINED_FUNCTION_61_3();
  strcpy((v28 + 32), "    STRING\n)");
  *(v28 + 45) = 0;
  *(v28 + 46) = -5120;
  OUTLINED_FUNCTION_3_99(v28, v45, v51, v57, v63);
  OUTLINED_FUNCTION_21_60(MEMORY[0x1E69E7CC0], (v1 + 2));
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v1[9] = v29;
  *v29 = v30;
  v29[1] = sub_1D51BC2B4;
  v31 = v1[7];
  v32 = v1[8];

  return sub_1D52EF24C((v1 + 2), v31, v32);
}

uint64_t sub_1D52FB6CC()
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3FA8, &qword_1D56516D0);
  qword_1EDD5A220 = result;
  return result;
}

uint64_t sub_1D52FB70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  v9 = type metadata accessor for MusicLibraryMapping.MappedItem();
  v10 = *(*(a3 - 8) + 32);
  v11 = a4 + *(v9 + 36);

  return v10(v11, a2, a3);
}

uint64_t MusicLibraryMapping.MappedItem.item.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a2, v2, AssociatedTypeWitness);
}

uint64_t MusicLibraryMapping.MappedItem.identifierSet.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return sub_1D560EC98();
}

uint64_t static MusicLibraryMapping.MappedItem<>.== infix(_:_:)()
{
  swift_getAssociatedTypeWitness();
  if ((sub_1D5614D18() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for MusicLibraryMapping.MappedItem() + 36);
  return sub_1D5614D18() & 1;
}

uint64_t sub_1D52FBA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 16);
  v4 = *(a4 - 8);
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  return static MusicLibraryMapping.MappedItem<>.== infix(_:_:)();
}

uint64_t MusicLibraryMapping.MappedItem<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  sub_1D5614CB8();
  v6 = v2 + *(a2 + 36);
  return sub_1D5614CB8();
}

uint64_t MusicLibraryMapping.MappedItem<>.hashValue.getter(uint64_t a1)
{
  sub_1D56162D8();
  MusicLibraryMapping.MappedItem<>.hash(into:)(v3, a1);
  return sub_1D5616328();
}

uint64_t sub_1D52FBB04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 16);
  v3 = *(a2 - 8);
  return MusicLibraryMapping.MappedItem<>.hashValue.getter(a1);
}

uint64_t sub_1D52FBB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 16);
  v4 = *(a3 - 8);
  return MusicLibraryMapping.MappedItem<>.hash(into:)(a1, a2);
}

uint64_t sub_1D52FBB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  sub_1D56162D8();
  MusicLibraryMapping.MappedItem<>.hash(into:)(v7, a2);
  return sub_1D5616328();
}

uint64_t MusicLibraryMapping.MappedItem<>.id.getter(uint64_t a1)
{
  v1 = *(a1 + 36);
  v2 = *(a1 + 16);
  return sub_1D5615B88();
}

uint64_t sub_1D52FBBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 8);
  v5 = *(*(a3 - 16) + 8);
  return swift_getWitnessTable();
}

uint64_t sub_1D52FBBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1D52FBC18(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D52FBCB8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 84);
  v9 = *(v6 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v13 = AssociatedTypeWitness;
  v14 = *(*(AssociatedTypeWitness - 8) + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v8 >= v10)
    {
      v22 = a1;
    }

    else
    {
      v22 = (a1 + v14) & ~v12;
      v8 = *(v9 + 84);
      v13 = v6;
    }

    return __swift_getEnumTagSinglePayload(v22, v8, v13);
  }

  v15 = (v14 & ~v12) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_24;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = (v14 & ~v12) + *(*(v6 - 8) + 64);
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 2:
        v21 = *a1;
        break;
      case 3:
        v21 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v21 = *a1;
        break;
      default:
        v21 = *a1;
        break;
    }
  }

  else
  {
    v21 = 0;
  }

  return v11 + (v21 | v19) + 1;
}

void sub_1D52FBEE0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 84);
  v11 = *(v8 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v10)
  {
    v13 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v11 + 80);
  v15 = *(*(AssociatedTypeWitness - 8) + 64) + v14;
  v16 = (v15 & ~v14) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v10 >= v12)
          {
            v24 = a1;
            v25 = a2;
          }

          else
          {
            v24 = &a1[v15] & ~v14;
            v25 = a2;
            v10 = v12;
            AssociatedTypeWitness = v8;
          }

          __swift_storeEnumTagSinglePayload(v24, v25, v10, AssociatedTypeWitness);
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1D52FC190()
{
  v0 = sub_1D560F8F8();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_59_0();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v33 - v16;
  v18 = sub_1D560F928();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  v27 = type metadata accessor for UploadedVideoPropertyProvider();
  sub_1D4F43D5C(v33[1] + *(v27 + 28), v17, &qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_57(v17, 1, v18);
  if (v28)
  {
    sub_1D4E7661C(v17, &qword_1EC7EDB98, L"X\b\a");
  }

  else
  {
    (*(v21 + 32))(v26, v17, v18);
    sub_1D560F908();
    (*(v3 + 104))(v8, *MEMORY[0x1E6975910], v0);
    OUTLINED_FUNCTION_61();
    v29 = sub_1D560F8E8();
    v30 = *(v3 + 8);
    v30(v8, v0);
    v30(v11, v0);
    if (v29)
    {
      v31 = sub_1D560F918();
      (*(v21 + 8))(v26, v18);
      if (v31)
      {
        return 1;
      }
    }

    else
    {
      (*(v21 + 8))(v26, v18);
    }
  }

  return 0;
}

uint64_t sub_1D52FC43C()
{
  v0 = *(type metadata accessor for UploadedVideoPropertyProvider() + 124);
  sub_1D560D768();
  if (!v1)
  {
    sub_1D560D628();
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D52FC49C()
{
  v1 = sub_1D56106B8();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v32 = v8 - v7;
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE730, &unk_1D562C598) - 8);
  v10 = *(*v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_59_0();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v31 - v22;
  v24 = *(type metadata accessor for UploadedVideoPropertyProvider() + 32);
  (*(v4 + 104))(v23, *MEMORY[0x1E6975D58], v1);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v1);
  v25 = v9[14];
  sub_1D4F43D5C(v0 + v24, v13, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4F43D5C(v23, &v13[v25], &qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_57(v13, 1, v1);
  if (!v27)
  {
    sub_1D4F43D5C(v13, v20, &qword_1EC7EC478, &unk_1D56299D0);
    OUTLINED_FUNCTION_57(&v13[v25], 1, v1);
    if (!v27)
    {
      v28 = v32;
      (*(v4 + 32))(v32, &v13[v25], v1);
      sub_1D52FCF44();
      OUTLINED_FUNCTION_61();
      v26 = sub_1D5614D18();
      v29 = *(v4 + 8);
      v29(v28, v1);
      sub_1D4E7661C(v23, &qword_1EC7EC478, &unk_1D56299D0);
      v29(v20, v1);
      sub_1D4E7661C(v13, &qword_1EC7EC478, &unk_1D56299D0);
      return v26 & 1;
    }

    sub_1D4E7661C(v23, &qword_1EC7EC478, &unk_1D56299D0);
    (*(v4 + 8))(v20, v1);
LABEL_9:
    sub_1D4E7661C(v13, &qword_1EC7EE730, &unk_1D562C598);
    v26 = 0;
    return v26 & 1;
  }

  sub_1D4E7661C(v23, &qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_57(&v13[v25], 1, v1);
  if (!v27)
  {
    goto LABEL_9;
  }

  sub_1D4E7661C(v13, &qword_1EC7EC478, &unk_1D56299D0);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_1D52FC7F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_2_131();
  OUTLINED_FUNCTION_9_92(*(v5 + 80));
  v6 = sub_1D5614A78();
  OUTLINED_FUNCTION_57(v0, 1, v6);
  if (v7)
  {
    sub_1D4E7661C(v0, &qword_1EC7EF5D8, &unk_1D5632160);
    v8 = 0;
  }

  else
  {
    v8 = sub_1D5614A58();
    OUTLINED_FUNCTION_24_0(v6);
    (*(v9 + 8))(v0, v6);
  }

  return v8 & 1;
}

BOOL sub_1D52FC8E4()
{
  v1 = v0;
  v2 = sub_1D5614A48();
  v3 = OUTLINED_FUNCTION_4(v2);
  v41 = v4;
  v42 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v40 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1D5614A78();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v18 = (v17 - v16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  v20 = OUTLINED_FUNCTION_22(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_59_0();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v39 - v27;
  v29 = *(type metadata accessor for UploadedVideoPropertyProvider() + 80);
  sub_1D4F43D5C(v1 + v29, v28, &qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_57(v28, 1, v10);
  if (v30)
  {
    goto LABEL_3;
  }

  v31 = sub_1D5614A58();
  v39 = *(v13 + 8);
  v39(v28, v10);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

  sub_1D4F43D5C(v1 + v29, v25, &qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_57(v25, 1, v10);
  if (v30)
  {
    v28 = v25;
LABEL_3:
    sub_1D4E7661C(v28, &qword_1EC7EF5D8, &unk_1D5632160);
    return 0;
  }

  (*(v13 + 32))(v18, v25, v10);
  sub_1D5614A68();
  v33 = v40;
  v32 = v41;
  v34 = v42;
  (*(v41 + 104))(v40, *MEMORY[0x1E6977490], v42);
  v35 = sub_1D5614A38();
  v36 = *(v32 + 8);
  v36(v33, v34);
  v37 = OUTLINED_FUNCTION_61();
  (v36)(v37);
  v39(v18, v10);
  return (v35 & 1) != 0;
}

uint64_t sub_1D52FCBEC(uint64_t (*a1)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_2_131();
  sub_1D4F43D5C(v1 + *(v8 + 28), v2, &qword_1EC7EDB98, L"X\b\a");
  v9 = sub_1D560F928();
  v10 = OUTLINED_FUNCTION_57(v2, 1, v9);
  if (v11)
  {
    sub_1D4E7661C(v2, &qword_1EC7EDB98, L"X\b\a");
    v12 = 0;
  }

  else
  {
    v12 = a1(v10);
    OUTLINED_FUNCTION_24_0(v9);
    v14 = *(v13 + 8);
    v15 = OUTLINED_FUNCTION_61();
    v16(v15);
  }

  return v12 & 1;
}

uint64_t sub_1D52FCCF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_2_131();
  OUTLINED_FUNCTION_9_92(*(v5 + 64));
  v6 = sub_1D5610CB8();
  OUTLINED_FUNCTION_57(v0, 1, v6);
  if (v7)
  {
    sub_1D4E7661C(v0, &qword_1EC7EF5D0, &unk_1D5632140);
    v8 = 0;
  }

  else
  {
    v8 = sub_1D5610CA8();
    OUTLINED_FUNCTION_24_0(v6);
    (*(v9 + 8))(v0, v6);
  }

  return v8 & 1;
}

uint64_t sub_1D52FCDE8@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  OUTLINED_FUNCTION_24_0(v5);
  v8 = *(v7 + 104);

  return v8(a3, v4, v6);
}

unint64_t sub_1D52FCF44()
{
  result = qword_1EC7EE738;
  if (!qword_1EC7EE738)
  {
    sub_1D56106B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE738);
  }

  return result;
}

unint64_t sub_1D52FCF9C@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 3)
  {
    result = sub_1D5615E08();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t MusicLibrary.TasteStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D52FD0A0()
{
  result = qword_1EC7F3FB0;
  if (!qword_1EC7F3FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3FB0);
  }

  return result;
}

_BYTE *_s11TasteStatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D52FD1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v41[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D560F0C8();
  if (result)
  {
    *a3 = 9;
    return result;
  }

  (*(v6 + 16))(v9, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    result = sub_1D4E6C9CC(&v45, &qword_1EC7EC548, &qword_1D5621090);
LABEL_14:
    *a3 = 0;
    return result;
  }

  sub_1D4F69344(&v45, v48);
  __swift_project_boxed_opaque_existential_1(v48, v48[3]);
  sub_1D560DB68();
  if (!v41[3])
  {
    sub_1D4E6C9CC(v41, &qword_1EC7EEC40, &unk_1D561C070);
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    goto LABEL_13;
  }

  if (!*(&v43 + 1))
  {
LABEL_13:
    sub_1D4E6C9CC(&v42, &qword_1EC7EC548, &qword_1D5621090);
    result = __swift_destroy_boxed_opaque_existential_1(v48);
    goto LABEL_14;
  }

  sub_1D4F69344(&v42, &v45);
  __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
  OUTLINED_FUNCTION_0_178();
  sub_1D4F67E14(v11, v12, v13);
  if ((v42 & 0xC0) == 0x40)
  {
    if ((v42 & 0x3F) == 2)
    {
      v14 = 11;
      goto LABEL_21;
    }

LABEL_20:
    v14 = 1;
    goto LABEL_21;
  }

  if (v42 != 128)
  {
    goto LABEL_20;
  }

  if (MusicLibrary.isDownloadActionAvailable.getter())
  {
    __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
    OUTLINED_FUNCTION_0_178();
    sub_1D4F67EE4(v15, v16, v17);
    if (BYTE8(v42))
    {
      if (BYTE8(v42) == 1)
      {
        v14 = 5;
      }

      else
      {
        v14 = 3;
        switch(v42)
        {
          case 1:
            v18 = [objc_opt_self() mainBundle];
            v19 = [v18 bundleIdentifier];

            if (v19)
            {
              v20 = sub_1D5614D68();
              v22 = v21;

              v23 = v20 == 0x6C7070612E6D6F63 && v22 == 0xEF636973754D2E65;
              if (v23 || (sub_1D5616168() & 1) != 0)
              {

                v24 = [objc_opt_self() standardUserDefaults];
                goto LABEL_44;
              }
            }

            else
            {
              v20 = 0;
              v22 = 0;
            }

            v25 = objc_allocWithZone(MEMORY[0x1E695E000]);
            v26 = sub_1D533F4D0(0x6C7070612E6D6F63, 0xEF636973754D2E65);
            if (v26)
            {
              v27 = v26;

              goto LABEL_45;
            }

            if (qword_1EDD54468 != -1)
            {
              swift_once();
            }

            v28 = sub_1D560C758();
            __swift_project_value_buffer(v28, qword_1EDD76A78);

            v29 = sub_1D560C738();
            v30 = sub_1D56156C8();

            if (os_log_type_enabled(v29, v30))
            {
              v31 = swift_slowAlloc();
              v32 = swift_slowAlloc();
              v41[0] = v32;
              *v31 = 136446466;
              *(v31 + 4) = sub_1D4E6835C(0x6C7070612E6D6F63, 0xEF636973754D2E65, v41);
              *(v31 + 12) = 2082;
              *&v42 = v20;
              *(&v42 + 1) = v22;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC3B0, &qword_1D5630D90);
              v33 = sub_1D5614DB8();
              v35 = sub_1D4E6835C(v33, v34, v41);

              *(v31 + 14) = v35;
              _os_log_impl(&dword_1D4E3F000, v29, v30, "Failed to load UserDefaults for %{public}s from process with bundle ID: %{public}s. Falling back to UserDefaults.standard.", v31, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1DA6ED200](v32, -1, -1);
              MEMORY[0x1DA6ED200](v31, -1, -1);
            }

            else
            {
            }

            v24 = [objc_opt_self() standardUserDefaults];
LABEL_44:
            v27 = v24;
LABEL_45:
            v36 = v27;
            v37 = sub_1D5614D38();
            v38 = [v36 BOOLForKey_];

            if (v38)
            {
            }

            else
            {
              v39 = [objc_opt_self() sharedMonitor];
              [v39 networkType];

              LOBYTE(v39) = ICEnvironmentNetworkTypeIsCellular();
              if (v39)
              {
                v14 = 10;
                break;
              }
            }

            v14 = 12;
            break;
          case 2:
            v14 = 4;
            break;
          case 3:
            v14 = 8;
            break;
          case 4:
            v14 = 6;
            break;
          default:
            break;
        }
      }
    }

    else
    {
      v14 = 7;
    }
  }

  else
  {
    v14 = 2;
  }

LABEL_21:
  *a3 = v14;
  __swift_destroy_boxed_opaque_existential_1(&v45);
  return __swift_destroy_boxed_opaque_existential_1(v48);
}

uint64_t MusicLibrary.DownloadAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D52FD8B8()
{
  v2 = *v0;
  sub_1D56162D8();
  MusicLibrary.DownloadAction.UnsupportedReason.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D52FD908()
{
  result = qword_1EC7F3FB8;
  if (!qword_1EC7F3FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3FB8);
  }

  return result;
}

_BYTE *_s14DownloadActionVwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s14DownloadActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t MusicSuggestedPivotSeed.init(track:container:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a1;
  v70 = a3;
  v4 = sub_1D5613D28();
  v67 = *(v4 - 8);
  v68 = v4;
  v5 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF790, &qword_1D5632E90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v64 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v64 - v13;
  v15 = type metadata accessor for GenericMusicItem();
  v16 = OUTLINED_FUNCTION_14(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v64 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v64 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v64 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD0, &qword_1D56331E0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v64 - v31;
  v33 = type metadata accessor for MusicSuggestedPivotContainer();
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v33);
  v66 = a2;
  sub_1D4E69910(a2, v14, &qword_1EC7EA608, &qword_1D561C510);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1D4E50004(v14, &qword_1EC7EA608, &qword_1D561C510);
  }

  else
  {
    sub_1D52FE1E8(v14, v25, type metadata accessor for GenericMusicItem);
    sub_1D4F26680(v25, v23);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 15)
    {
      sub_1D52FE248(v25);
      sub_1D4E50004(v32, &qword_1EC7EADD0, &qword_1D56331E0);
      v35 = sub_1D5614408();
    }

    else if (EnumCaseMultiPayload == 9)
    {
      sub_1D52FE248(v25);
      sub_1D4E50004(v32, &qword_1EC7EADD0, &qword_1D56331E0);
      v35 = sub_1D5614898();
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (qword_1EC7E90C0 != -1)
        {
          swift_once();
        }

        v46 = sub_1D560C758();
        __swift_project_value_buffer(v46, qword_1EC87C2E8);
        v47 = v64;
        sub_1D4F26680(v25, v64);
        v48 = sub_1D560C738();
        v49 = sub_1D56156C8();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v71[0] = v51;
          *v50 = 136446210;
          GenericMusicItem.description.getter(v51, v52, v53, v54, v55, v56, v57, v58, v64, v65, v66, v67, v68, v69, v70, v71[0], v71[1], v71[2], v71[3], v71[4]);
          v60 = v59;
          v62 = v61;
          sub_1D52FE248(v47);
          v63 = sub_1D4E6835C(v60, v62, v71);

          *(v50 + 4) = v63;
          _os_log_impl(&dword_1D4E3F000, v48, v49, "MusicSuggestedPivotSeed: Attempting to create a seed with an unsupported container kind=%{public}s).", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v51);
          MEMORY[0x1DA6ED200](v51, -1, -1);
          MEMORY[0x1DA6ED200](v50, -1, -1);

          sub_1D4E50004(v66, &qword_1EC7EA608, &qword_1D561C510);
          (*(v67 + 8))(v69, v68);
        }

        else
        {

          sub_1D4E50004(v66, &qword_1EC7EA608, &qword_1D561C510);
          (*(v67 + 8))(v69, v68);
          sub_1D52FE248(v47);
        }

        sub_1D52FE248(v25);
        sub_1D4E50004(v32, &qword_1EC7EADD0, &qword_1D56331E0);
        sub_1D52FE248(v23);
        goto LABEL_12;
      }

      sub_1D52FE248(v25);
      sub_1D4E50004(v32, &qword_1EC7EADD0, &qword_1D56331E0);
      v35 = sub_1D5613AF8();
    }

    (*(*(v35 - 8) + 32))(v32, v23);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
  }

  v37 = v67;
  v36 = v68;
  v38 = v69;
  (*(v67 + 16))(v65, v69, v68);
  sub_1D4E69910(v32, v30, &qword_1EC7EADD0, &qword_1D56331E0);
  MusicSuggestedPivotSeed.init(track:container:)();
  sub_1D4E50004(v66, &qword_1EC7EA608, &qword_1D561C510);
  (*(v37 + 8))(v38, v36);
  sub_1D4E50004(v32, &qword_1EC7EADD0, &qword_1D56331E0);
  v39 = type metadata accessor for MusicSuggestedPivotSeed();
  if (!__swift_getEnumTagSinglePayload(v10, 1, v39))
  {
    v43 = v10;
    v44 = v70;
    sub_1D52FE1E8(v43, v70, type metadata accessor for MusicSuggestedPivotSeed);
    v41 = v44;
    v42 = 0;
    v40 = v39;
    return __swift_storeEnumTagSinglePayload(v41, v42, 1, v40);
  }

  sub_1D4E50004(v10, &qword_1EC7EF790, &qword_1D5632E90);
LABEL_12:
  v40 = type metadata accessor for MusicSuggestedPivotSeed();
  v41 = v70;
  v42 = 1;
  return __swift_storeEnumTagSinglePayload(v41, v42, 1, v40);
}

uint64_t sub_1D52FE1E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D52FE248(uint64_t a1)
{
  v2 = type metadata accessor for GenericMusicItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D52FE2A4()
{
  if (qword_1EDD526C0 != -1)
  {
    OUTLINED_FUNCTION_1_136();
  }

  if (qword_1EDD526C8)
  {
    v0 = qword_1EDD526C8;
    v1 = sub_1D5614D38();
    v2 = [v0 BOOLForKey_];
  }

  else
  {
    if (qword_1EC7E8DF8 != -1)
    {
      OUTLINED_FUNCTION_0_179();
    }

    v3 = sub_1D560C758();
    __swift_project_value_buffer(v3, qword_1EC87C158);
    v1 = sub_1D560C738();
    v4 = sub_1D56156C8();
    if (os_log_type_enabled(v1, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      OUTLINED_FUNCTION_168(&dword_1D4E3F000, v6, v7, "Unable to access the MusicKit user defaults.");
      MEMORY[0x1DA6ED200](v5, -1, -1);
    }

    v2 = 0;
  }

  return v2;
}

id sub_1D52FE3D8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  result = sub_1D533F4D0(0xD000000000000012, 0x80000001D5681640);
  qword_1EDD526C8 = result;
  return result;
}

id sub_1D52FE428()
{
  if (qword_1EDD526C0 != -1)
  {
    OUTLINED_FUNCTION_1_136();
  }

  if (qword_1EDD526C8)
  {
    v0 = qword_1EDD526C8;
    v1 = sub_1D5614D38();
    v2 = [v0 BOOLForKey_];
  }

  else
  {
    if (qword_1EC7E8DF8 != -1)
    {
      OUTLINED_FUNCTION_0_179();
    }

    v3 = sub_1D560C758();
    __swift_project_value_buffer(v3, qword_1EC87C158);
    v1 = sub_1D560C738();
    v4 = sub_1D56156C8();
    if (os_log_type_enabled(v1, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      OUTLINED_FUNCTION_168(&dword_1D4E3F000, v6, v7, "Unable to access the MusicKit user defaults.");
      MEMORY[0x1DA6ED200](v5, -1, -1);
    }

    v2 = 0;
  }

  return v2;
}

uint64_t type metadata accessor for StorePlatformUploadedVideo()
{
  result = qword_1EDD55020;
  if (!qword_1EDD55020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D52FE5DC()
{
  sub_1D4E518A0(319, &qword_1EDD5F070);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD53248, &qword_1EC7EF388, &unk_1D5631100);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD52910, &qword_1EC7EC9B8, &unk_1D56222D0);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
    if (v7 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
    if (v8 > 0x3F)
    {
      return v3;
    }

    sub_1D500A1D4();
    if (v10 > 0x3F)
    {
      return v9;
    }

    sub_1D4E518A0(319, &qword_1EDD5F550);
    if (v11 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1D52FE818@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v88 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v88 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v88 - v23;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3FC8, &qword_1D5651B78);
  OUTLINED_FUNCTION_4(v93);
  v26 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v88 - v30;
  v96 = type metadata accessor for StorePlatformUploadedVideo();
  v32 = OUTLINED_FUNCTION_14(v96);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  v94 = a1;
  v95 = v35;
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D530136C();
  v91 = v31;
  v37 = v97;
  sub_1D5616398();
  if (v37)
  {
    v97 = v37;
    v39 = 0;
    v26 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    LODWORD(v43) = 0;
    LODWORD(v90) = 0;
    LODWORD(v91) = 0;
    LODWORD(v93) = 0;
  }

  else
  {
    v97 = v18;
    v92 = v12;
    v89 = v9;
    LOBYTE(v98) = 0;
    v38 = sub_1D5615F38();
    v51 = v95;
    *v95 = v38;
    v51[1] = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    LOBYTE(v98) = 1;
    sub_1D4F886BC();
    sub_1D5615F78();
    v40 = v26;
    v53 = v96;
    sub_1D4F39A1C(v24, v51 + v96[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
    LOBYTE(v98) = 2;
    sub_1D50C41B8();
    v54 = v97;
    sub_1D5615F78();
    sub_1D4F39A1C(v54, v51 + v53[6], &qword_1EC7EF380, &unk_1D5677480);
    LOBYTE(v98) = 3;
    v55 = sub_1D5615F38();
    v56 = (v51 + v53[7]);
    *v56 = v55;
    v56[1] = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v100 = 4;
    sub_1D4F887A4();
    OUTLINED_FUNCTION_10_89();
    *(v51 + v53[8]) = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v100 = 5;
    sub_1D50C44B0(&qword_1EDD528F8);
    OUTLINED_FUNCTION_10_89();
    *(v51 + v53[9]) = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v100 = 6;
    sub_1D50C42A0(&qword_1EDD52908);
    OUTLINED_FUNCTION_10_89();
    *(v51 + v53[10]) = v98;
    v100 = 7;
    sub_1D4F89C9C();
    sub_1D5615FD8();
    v58 = v99;
    v59 = (v51 + v53[11]);
    *v59 = v98;
    v59[1] = v58;
    v41 = sub_1D560C0A8();
    LOBYTE(v98) = 8;
    OUTLINED_FUNCTION_0_180();
    v42 = sub_1D53015C8(v60);
    v43 = v92;
    sub_1D5615F78();
    v97 = 0;
    sub_1D4F39A1C(v43, v51 + v53[12], &unk_1EC7E9CA8, &unk_1D561D1D0);
    LOBYTE(v98) = 9;
    v61 = v97;
    v62 = sub_1D5615F48();
    v97 = v61;
    if (!v61)
    {
      *(v95 + v96[13]) = v62;
      OUTLINED_FUNCTION_6_103(10);
      v63 = sub_1D5615F38();
      v97 = 0;
      v67 = (v95 + v96[14]);
      *v67 = v63;
      v67[1] = v68;
      OUTLINED_FUNCTION_6_103(11);
      v69 = sub_1D5615F38();
      v97 = 0;
      v71 = (v95 + v96[15]);
      *v71 = v69;
      v71[1] = v70;
      LOBYTE(v98) = 12;
      v72 = v97;
      sub_1D5615F78();
      LODWORD(v92) = v72 == 0;
      v97 = v72;
      if (!v72)
      {
        sub_1D4F39A1C(v89, v95 + v96[16], &unk_1EC7E9CA8, &unk_1D561D1D0);
        OUTLINED_FUNCTION_6_103(13);
        v73 = sub_1D5615F48();
        v97 = 0;
        *(v95 + v96[17]) = v73;
        OUTLINED_FUNCTION_6_103(14);
        v74 = sub_1D5615F38();
        v97 = 0;
        v78 = (v95 + v96[18]);
        *v78 = v74;
        v78[1] = v79;
        OUTLINED_FUNCTION_6_103(15);
        v80 = sub_1D5615F38();
        v97 = 0;
        v81 = v80;
        v83 = v82;
        v84 = OUTLINED_FUNCTION_14_71();
        v85(v84);
        v86 = v95;
        v87 = (v95 + v96[19]);
        *v87 = v81;
        v87[1] = v83;
        sub_1D53013C0(v86, v90);
        __swift_destroy_boxed_opaque_existential_1(v94);
        return sub_1D5301424(v86);
      }

      v75 = OUTLINED_FUNCTION_14_71();
      v76(v75);
      LODWORD(v89) = 0;
      __swift_destroy_boxed_opaque_existential_1(v94);
      OUTLINED_FUNCTION_1_137();
      OUTLINED_FUNCTION_22_60();
      LODWORD(v91) = v77;
      LODWORD(v93) = v77;
      v47 = 1;
      v44 = v95;
      v45 = v96;
LABEL_6:
      v48 = v44[1];

      if (v26)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

    v64 = OUTLINED_FUNCTION_14_71();
    v65(v64);
    LODWORD(v93) = 0;
    v39 = 1;
    OUTLINED_FUNCTION_1_137();
    OUTLINED_FUNCTION_22_60();
    LODWORD(v91) = v66;
  }

  v44 = v95;
  v45 = v96;
  result = __swift_destroy_boxed_opaque_existential_1(v94);
  if (v39)
  {
    v47 = 0;
    LODWORD(v92) = 0;
    LODWORD(v89) = 0;
    goto LABEL_6;
  }

  LODWORD(v89) = 0;
  LODWORD(v92) = 0;
  v47 = 0;
  if (v26)
  {
LABEL_7:
    result = sub_1D4E50004(v44 + v45[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    if ((v40 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_21:
    result = sub_1D4E50004(v44 + v45[6], &qword_1EC7EF380, &unk_1D5677480);
    if (v41)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_20:
  if (v40)
  {
    goto LABEL_21;
  }

LABEL_8:
  if (v41)
  {
LABEL_9:
    result = OUTLINED_FUNCTION_46_4(v45[7]);
  }

LABEL_10:
  if (v42)
  {
    v49 = *(v44 + v45[9]);

    if ((v43 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!v43)
  {
LABEL_12:
    if (v90)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  v50 = *(v44 + v45[10]);

  if (v90)
  {
LABEL_13:
    result = OUTLINED_FUNCTION_46_4(v45[11]);
    if ((v91 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  if (!v91)
  {
LABEL_14:
    if (v93)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = sub_1D4E50004(v44 + v45[12], &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (v93)
  {
LABEL_15:
    result = OUTLINED_FUNCTION_46_4(v45[14]);
    if ((v47 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  if (!v47)
  {
LABEL_16:
    if (v92)
    {
      goto LABEL_17;
    }

LABEL_29:
    if (!v89)
    {
      return result;
    }

    return OUTLINED_FUNCTION_46_4(v45[18]);
  }

LABEL_28:
  result = OUTLINED_FUNCTION_46_4(v45[15]);
  if ((v92 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  result = sub_1D4E50004(v44 + v45[16], &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v89 & 1) == 0)
  {
    return result;
  }

  return OUTLINED_FUNCTION_46_4(v45[18]);
}

uint64_t sub_1D52FF2D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3FD8, &unk_1D5651B80);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v28 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D530136C();
  sub_1D56163D8();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v28[0]) = 0;
  OUTLINED_FUNCTION_29_0();
  sub_1D5616028();
  if (!v2)
  {
    v16 = type metadata accessor for StorePlatformUploadedVideo();
    v17 = v16[5];
    LOBYTE(v28[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F7CD24();
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v18 = v16[6];
    LOBYTE(v28[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
    sub_1D50C43C8();
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_35_5(v16[7]);
    OUTLINED_FUNCTION_9_93(3);
    v28[0] = *(v3 + v16[8]);
    v29 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    sub_1D4F7CE0C();
    OUTLINED_FUNCTION_8_2();
    v28[0] = *(v3 + v16[9]);
    v29 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D50C44B0(&qword_1EC7EC9D8);
    OUTLINED_FUNCTION_8_2();
    v28[0] = *(v3 + v16[10]);
    v29 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    sub_1D50C42A0(&qword_1EC7EC9F0);
    OUTLINED_FUNCTION_8_2();
    v19 = (v3 + v16[11]);
    v21 = *v19;
    v20 = v19[1];
    v28[0] = v21;
    v28[1] = v20;
    v29 = 7;
    sub_1D4F89BA0();
    OUTLINED_FUNCTION_29_0();
    sub_1D56160C8();
    v22 = v16[12];
    LOBYTE(v28[0]) = 8;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_180();
    sub_1D53015C8(v23);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v24 = *(v3 + v16[13]);
    LOBYTE(v28[0]) = 9;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    OUTLINED_FUNCTION_35_5(v16[14]);
    OUTLINED_FUNCTION_9_93(10);
    OUTLINED_FUNCTION_35_5(v16[15]);
    OUTLINED_FUNCTION_9_93(11);
    v25 = v16[16];
    LOBYTE(v28[0]) = 12;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v26 = *(v3 + v16[17]);
    LOBYTE(v28[0]) = 13;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    OUTLINED_FUNCTION_35_5(v16[18]);
    OUTLINED_FUNCTION_9_93(14);
    OUTLINED_FUNCTION_35_5(v16[19]);
    OUTLINED_FUNCTION_9_93(15);
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1D52FF750(void *a1, void *a2)
{
  v4 = sub_1D560C0A8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v213 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v211 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_59_0();
  v209 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v212 = &v206 - v17;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  v18 = OUTLINED_FUNCTION_14(v215);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_59_0();
  v210 = v21 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v214 = &v206 - v24;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  OUTLINED_FUNCTION_4(v220);
  v218 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  v216 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  v217 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF8B0, &unk_1D5633390);
  OUTLINED_FUNCTION_14(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  v219 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v40);
  v42 = v41;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v206 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v206 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v206 - v58;
  v60 = a1[1];
  v61 = a2[1];
  if (v60)
  {
    if (!v61)
    {
      return 0;
    }

    v62 = *a1 == *a2 && v60 == v61;
    if (!v62 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v61)
  {
    return 0;
  }

  v206 = v4;
  v63 = type metadata accessor for StorePlatformUploadedVideo();
  v221 = a2;
  v64 = *(v63 + 20);
  v65 = *(v54 + 48);
  v207 = v63;
  v208 = a1;
  sub_1D4F39AB0(a1 + v64, v59, &qword_1EC7EB5B8, &unk_1D56206A0);
  v66 = v221 + v64;
  v67 = v221;
  sub_1D4F39AB0(v66, &v59[v65], &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v59, 1, v40);
  if (v62)
  {
    OUTLINED_FUNCTION_57(&v59[v65], 1, v40);
    if (v62)
    {
      sub_1D4E50004(v59, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_20;
    }

LABEL_18:
    v72 = &qword_1EC7EC330;
    v73 = &qword_1D56222C0;
    v74 = v59;
LABEL_29:
    sub_1D4E50004(v74, v72, v73);
    return 0;
  }

  sub_1D4F39AB0(v59, v53, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(&v59[v65], 1, v40);
  if (v68)
  {
    v69 = *(v42 + 8);
    v70 = OUTLINED_FUNCTION_71();
    v71(v70);
    goto LABEL_18;
  }

  (*(v42 + 32))(v47, &v59[v65], v40);
  sub_1D5301480(&qword_1EC7EBEB8);
  v75 = sub_1D5614D18();
  v76 = *(v42 + 8);
  v76(v47, v40);
  v77 = OUTLINED_FUNCTION_71();
  (v76)(v77);
  sub_1D4E50004(v59, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v75 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v79 = v207;
  v78 = v208;
  v80 = v207[6];
  v81 = *(v35 + 48);
  v82 = v219;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v83, v84, v85, v86);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v87, v88, v89, v90);
  v91 = v220;
  OUTLINED_FUNCTION_4_18(v82, 1);
  if (v62)
  {
    OUTLINED_FUNCTION_4_18(v82 + v81, 1);
    if (v62)
    {
      sub_1D4E50004(v82, &qword_1EC7EF380, &unk_1D5677480);
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  sub_1D4F39AB0(v82, v217, &qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_4_18(v82 + v81, 1);
  if (v92)
  {
    v93 = *(v218 + 8);
    v94 = OUTLINED_FUNCTION_164_0();
    v95(v94);
LABEL_28:
    v72 = &qword_1EC7EF8B0;
    v73 = &unk_1D5633390;
    v74 = v82;
    goto LABEL_29;
  }

  v97 = v218;
  v98 = v82 + v81;
  v99 = v216;
  (*(v218 + 32))(v216, v98, v91);
  sub_1D5301500(&qword_1EC7EF8B8);
  v100 = sub_1D5614D18();
  v101 = *(v97 + 8);
  v101(v99, v91);
  v102 = OUTLINED_FUNCTION_164_0();
  (v101)(v102);
  sub_1D4E50004(v82, &qword_1EC7EF380, &unk_1D5677480);
  if ((v100 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  v103 = v79[7];
  OUTLINED_FUNCTION_25_15();
  if (v106)
  {
    if (!v104)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v105);
    v109 = v62 && v107 == v108;
    if (!v109 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v104)
  {
    return 0;
  }

  v110 = v79[8];
  v111 = *(v67 + v110);
  if (*(v78 + v110))
  {
    if (!v111)
    {
      return 0;
    }

    v112 = *(v67 + v110);

    sub_1D4F2C07C();
    v114 = v113;

    if ((v114 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v111)
  {
    return 0;
  }

  v115 = v79[9];
  v116 = *(v67 + v115);
  if (*(v78 + v115))
  {
    if (!v116)
    {
      return 0;
    }

    v117 = *(v67 + v115);

    sub_1D4F28F1C();
    v119 = v118;

    if ((v119 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v116)
  {
    return 0;
  }

  v120 = v79[10];
  v121 = *(v67 + v120);
  if (*(v78 + v120))
  {
    if (!v121)
    {
      return 0;
    }

    v122 = *(v67 + v120);

    sub_1D4F29174();
    v124 = v123;

    if ((v124 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v121)
  {
    return 0;
  }

  v125 = v79[11];
  v126 = *(v78 + v125);
  v127 = *(v78 + v125 + 8);
  v128 = (v67 + v125);
  v129 = v126 == *v128 && v127 == v128[1];
  if (!v129 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v130 = v79[12];
  v131 = v214;
  v132 = *(v215 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v133, v134, v135, v136);
  v137 = v131;
  sub_1D4F39AB0(v67 + v130, v131 + v132, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v138 = v206;
  OUTLINED_FUNCTION_4_18(v131, 1);
  if (v62)
  {
    OUTLINED_FUNCTION_4_18(v131 + v132, 1);
    if (v62)
    {
      sub_1D4E50004(v131, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_72;
    }

    goto LABEL_70;
  }

  sub_1D4F39AB0(v131, v212, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_4_18(v131 + v132, 1);
  if (v139)
  {
    v140 = *(v213 + 8);
    v141 = OUTLINED_FUNCTION_164_0();
    v142(v141);
LABEL_70:
    v72 = &qword_1EC7E9FB0;
    v73 = &qword_1D562C590;
    v74 = v131;
    goto LABEL_29;
  }

  v143 = v213;
  v144 = v211;
  (*(v213 + 32))(v211, v137 + v132, v138);
  OUTLINED_FUNCTION_0_180();
  sub_1D53015C8(v145);
  LODWORD(v220) = sub_1D5614D18();
  v146 = *(v143 + 8);
  v146(v144, v138);
  v147 = OUTLINED_FUNCTION_164_0();
  (v146)(v147);
  sub_1D4E50004(v137, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v220 & 1) == 0)
  {
    return 0;
  }

LABEL_72:
  v148 = v79[13];
  v149 = *(v78 + v148);
  v150 = *(v67 + v148);
  if (v149 == 2)
  {
    if (v150 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v150 == 2 || ((v150 ^ v149) & 1) != 0)
    {
      return result;
    }
  }

  v151 = v79[14];
  OUTLINED_FUNCTION_25_15();
  if (v154)
  {
    if (!v152)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v153);
    v157 = v62 && v155 == v156;
    if (!v157 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v152)
  {
    return 0;
  }

  v158 = v207[15];
  OUTLINED_FUNCTION_38_1(v208);
  if (v161)
  {
    if (!v159)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v160);
    v164 = v62 && v162 == v163;
    if (!v164 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v159)
  {
    return 0;
  }

  v165 = v207[16];
  v166 = *(v215 + 48);
  v167 = v210;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v168, v169, v170, v171);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v172, v173, v174, v175);
  OUTLINED_FUNCTION_57(v167, 1, v206);
  if (!v62)
  {
    v176 = v210;
    sub_1D4F39AB0(v210, v209, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_57(v176 + v166, 1, v206);
    if (!v177)
    {
      v178 = v213;
      v180 = v210;
      v179 = v211;
      v181 = v210 + v166;
      v182 = v206;
      (*(v213 + 32))(v211, v181, v206);
      OUTLINED_FUNCTION_0_180();
      sub_1D53015C8(v183);
      v184 = v209;
      v185 = sub_1D5614D18();
      v186 = *(v178 + 8);
      v186(v179, v182);
      v186(v184, v182);
      sub_1D4E50004(v180, &unk_1EC7E9CA8, &unk_1D561D1D0);
      if ((v185 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_105;
    }

    (*(v213 + 8))(v209, v206);
    goto LABEL_103;
  }

  OUTLINED_FUNCTION_57(v210 + v166, 1, v206);
  if (!v62)
  {
LABEL_103:
    v72 = &qword_1EC7E9FB0;
    v73 = &qword_1D562C590;
    v74 = v210;
    goto LABEL_29;
  }

  sub_1D4E50004(v210, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_105:
  v187 = v207[17];
  v188 = *(v208 + v187);
  v189 = *(v221 + v187);
  if (v188 == 2)
  {
    v190 = v221;
    v191 = v207;
    v192 = v208;
    if (v189 != 2)
    {
      return 0;
    }

    goto LABEL_110;
  }

  result = 0;
  if (v189 != 2)
  {
    v193 = v189 ^ v188;
    v190 = v221;
    v191 = v207;
    v192 = v208;
    if ((v193 & 1) == 0)
    {
LABEL_110:
      v194 = v191[18];
      v195 = *(v190 + v194 + 8);
      if (*(v192 + v194 + 8))
      {
        if (!v195)
        {
          return 0;
        }

        OUTLINED_FUNCTION_31_0((v192 + v194));
        v198 = v62 && v196 == v197;
        if (!v198 && (sub_1D5616168() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v195)
      {
        return 0;
      }

      v199 = v207[19];
      OUTLINED_FUNCTION_38_1(v208);
      if (v202)
      {
        if (v200)
        {
          OUTLINED_FUNCTION_31_0(v201);
          v205 = v62 && v203 == v204;
          if (v205 || (sub_1D5616168() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v200)
      {
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1D530042C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B6F547465737361 && a2 == 0xEB00000000736E65;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65707954637561 && a2 == 0xE700000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x80000001D5680650 == a2;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 25705 && a2 == 0xE200000000000000;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x76697372656D6D69 && a2 == 0xEC0000006C725565;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x616C696176417369 && a2 == 0xEB00000000656C62;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 1684957547 && a2 == 0xE400000000000000;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 1701667182 && a2 == 0xE400000000000000;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6C725574736F70 && a2 == 0xE700000000000000;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000016 && 0x80000001D5681620 == a2;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x614464616F6C7075 && a2 == 0xEA00000000006574;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0xD000000000000013 && 0x80000001D5683C10 == a2)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1D5616168();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D5300904(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 0x6B6F547465737361;
      break;
    case 3:
      result = 0x65707954637561;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6169726F74696465;
      break;
    case 7:
      result = 25705;
      break;
    case 8:
      result = 0x76697372656D6D69;
      break;
    case 9:
      result = 0x616C696176417369;
      break;
    case 10:
      result = 1684957547;
      break;
    case 11:
      result = 1701667182;
      break;
    case 12:
      result = 0x6C725574736F70;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0x614464616F6C7075;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5300AC4()
{
  v1 = v0;
  v2 = sub_1D560C0A8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v79 = v4;
  v80 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v78 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_59_0();
  v77 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v73 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  v17 = OUTLINED_FUNCTION_4(v16);
  v74 = v18;
  v75 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v73 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v73 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v73 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v73 - v41;
  if (v0[1])
  {
    v43 = *v0;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v44 = type metadata accessor for StorePlatformUploadedVideo();
  sub_1D4F39AB0(v0 + v44[5], v42, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v42, 1, v29);
  if (v45)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v31 + 32))(v36, v42, v29);
    OUTLINED_FUNCTION_27();
    sub_1D5301480(&qword_1EC7EBE78);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v31 + 8))(v36, v29);
  }

  sub_1D4F39AB0(v0 + v44[6], v28, &qword_1EC7EF380, &unk_1D5677480);
  v46 = v75;
  OUTLINED_FUNCTION_4_18(v28, 1);
  if (v45)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v48 = v73;
    v47 = v74;
    (*(v74 + 32))(v73, v28, v46);
    OUTLINED_FUNCTION_27();
    sub_1D5301500(&qword_1EC7EF8C8);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v49 = *(v47 + 8);
    v29 = v47 + 8;
    v49(v48, v46);
  }

  v50 = v80;
  OUTLINED_FUNCTION_33_5(v44[7]);
  if (v46)
  {
    v29 = *v51;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v44[8]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F35348();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v44[9]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v52 = *(v0 + v44[10]);
  if (v52)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v53 = (v0 + v44[11]);
  v54 = *v53;
  v55 = v53[1];
  sub_1D5614E28();
  v56 = v76;
  sub_1D4F39AB0(v1 + v44[12], v76, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v56, 1, v50);
  if (v45)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v57 = OUTLINED_FUNCTION_26_59();
    v58(v57);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_180();
    sub_1D53015C8(v59);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v52 + 8))(v29, v50);
  }

  v60 = *(v1 + v44[13]);
  if (v60 != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_33_5(v44[14]);
  if (v60)
  {
    v29 = *v61;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_33_5(v44[15]);
  if (v60)
  {
    v29 = *v62;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v63 = v77;
  sub_1D4F39AB0(v1 + v44[16], v77, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v63, 1, v50);
  if (v45)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v64 = OUTLINED_FUNCTION_26_59();
    v65(v64);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_180();
    sub_1D53015C8(v66);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v60 + 8))(v29, v50);
  }

  v67 = *(v1 + v44[17]);
  if (v67 != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_33_5(v44[18]);
  if (v67)
  {
    v69 = *v68;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v70 = (v1 + v44[19]);
  if (!v70[1])
  {
    return OUTLINED_FUNCTION_36();
  }

  v71 = *v70;
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_24();
  return sub_1D5614E28();
}

uint64_t sub_1D53011B8()
{
  sub_1D56162D8();
  sub_1D5300AC4();
  return sub_1D5616328();
}

uint64_t sub_1D5301200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D530042C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5301228(uint64_t a1)
{
  v2 = sub_1D530136C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5301264(uint64_t a1)
{
  v2 = sub_1D530136C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D53012DC()
{
  sub_1D56162D8();
  sub_1D5300AC4();
  return sub_1D5616328();
}

unint64_t sub_1D530136C()
{
  result = qword_1EC7F3FD0;
  if (!qword_1EC7F3FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3FD0);
  }

  return result;
}

uint64_t sub_1D53013C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformUploadedVideo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5301424(uint64_t a1)
{
  v2 = type metadata accessor for StorePlatformUploadedVideo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5301480(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D53015C8(v2);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D5301500(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF388, &unk_1D5631100);
    sub_1D53015C8(v2);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D5301580()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EC87C508);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  return sub_1D560FF38();
}

unint64_t sub_1D53015C8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StorePlatformUploadedVideo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D53016EC()
{
  result = qword_1EC7F3FE0;
  if (!qword_1EC7F3FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3FE0);
  }

  return result;
}

unint64_t sub_1D5301744()
{
  result = qword_1EC7F3FE8;
  if (!qword_1EC7F3FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3FE8);
  }

  return result;
}

unint64_t sub_1D530179C()
{
  result = qword_1EC7F3FF0;
  if (!qword_1EC7F3FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3FF0);
  }

  return result;
}

uint64_t sub_1D53017F0()
{
  OUTLINED_FUNCTION_23_58();
  v7 = v0;
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v1 = OUTLINED_FUNCTION_10_88(dword_1D5651DC8);
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_0_2(v2);

  return v5(v4);
}

uint64_t sub_1D530187C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5304058, 0, 0);
}

uint64_t sub_1D530189C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D53018BC, 0, 0);
}

uint64_t sub_1D53018BC()
{
  OUTLINED_FUNCTION_80();
  v2 = v0[2];
  v1 = v0[3];
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  v5 = v0[1];

  v3 = v0[3];

  return v5(v3);
}

void sub_1D5301960()
{
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD00000000000002CLL, 0x80000001D568AA00);
  v0 = OUTLINED_FUNCTION_98();
  MEMORY[0x1DA6EAC70](v0);
  MEMORY[0x1DA6EAC70](8250, 0xE200000000000000);
  sub_1D560CDE8();
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  OUTLINED_FUNCTION_22_61();
  __break(1u);
}

uint64_t static LegacyModelExtendedLibraryRequestable.standaloneExtendedLibraryRequestConfigurationParameters(for:sortDescriptors:filteringOptions:)()
{
  if (!dynamic_cast_existential_1_conditional(v0))
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_61();
  v6 = sub_1D535159C(v1, v2, v3, v4, v5);
  if (dynamic_cast_existential_1_conditional(v0))
  {
    v7 = sub_1D5613218();

    return v7;
  }

  return v6;
}

uint64_t static LegacyModelExtendedLibraryRequestable.extendedLibraryRequestConfigurationParameters(for:predicates:sortDescriptors:filteringOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = dynamic_cast_existential_1_conditional(v4);
  if (v8)
  {
    return sub_1D5302A24(a1, a2, a3, v8, v9);
  }

  sub_1D5615B68();
  v11 = sub_1D5616458();
  MEMORY[0x1DA6EAC70](v11);

  MEMORY[0x1DA6EAC70](0xD00000000000003BLL, 0x80000001D568A9C0);
  result = OUTLINED_FUNCTION_22_61();
  __break(1u);
  return result;
}

uint64_t LegacyModelExtendedLibraryRequestable.extendedAugmentedItem<A>(for:propertyProviderBasedInitializableType:attributeProperties:relationshipProperties:metadataProperties:options:library:)()
{
  OUTLINED_FUNCTION_60();
  v1[28] = v21;
  v1[29] = v0;
  v1[26] = v19;
  v1[27] = v20;
  v1[24] = v2;
  v1[25] = v18;
  v1[22] = v3;
  v1[23] = v4;
  v1[20] = v5;
  v1[21] = v6;
  v1[18] = v7;
  v1[19] = v8;
  v1[17] = v9;
  OUTLINED_FUNCTION_1_0();
  v1[30] = v10;
  v12 = *(v11 + 64) + 15;
  v1[31] = swift_task_alloc();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D5301CD8()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 208);
  v5 = *(v0 + 136);
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  (*(v1 + 16))(v2, v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3FF8, &qword_1D5651CB8);
  if (swift_dynamicCast())
  {
    sub_1D4E48324((v0 + 56), v0 + 16);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 256) = v7;
    *v7 = v8;
    v7[1] = sub_1D5301E78;
    v9 = *(v0 + 192);
    v10 = *(v0 + 176);
    v11 = *(v0 + 184);
    v12 = *(v0 + 160);
    v13 = *(v0 + 168);
    v14 = *(v0 + 144);
    v15 = *(v0 + 152);
    v22 = *(v0 + 224);
    v21 = *(v0 + 216);
    v20 = *(v0 + 200);

    return sub_1D5351C78();
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_1D4E7661C(v0 + 56, &qword_1EC7F4000, &qword_1D5651CC0);
    v17 = *(v0 + 248);

    OUTLINED_FUNCTION_22_1();

    return v18();
  }
}

uint64_t sub_1D5301E78()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = *(v2 + 256);
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5301F78()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 136);
  sub_1D4E7661C(v1, &qword_1EC7F4008, &qword_1D5651CC8);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  *v1 = *(v0 + 96);
  *(v1 + 16) = v3;
  *(v1 + 32) = v2;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v4 = *(v0 + 248);

  OUTLINED_FUNCTION_22_1();

  return v5();
}

uint64_t sub_1D5302004()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[31];
  sub_1D4E7661C(v0[17], &qword_1EC7F4008, &qword_1D5651CC8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  OUTLINED_FUNCTION_55();
  v3 = v0[33];

  return v2();
}

uint64_t LegacyModelExtendedLibraryRequestable.extendedAugmentedItemWithInternalRelationships<A>(for:propertyProviderBasedInitializableType:relationshipProperties:library:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[35] = v13;
  v8[36] = v14;
  v8[33] = a7;
  v8[34] = a8;
  v8[31] = a5;
  v8[32] = a6;
  v8[29] = a3;
  v8[30] = a4;
  v8[27] = a1;
  v8[28] = a2;
  OUTLINED_FUNCTION_57_1();
  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D53020C8()
{
  v1 = *(v0 + 224);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *(v2 + 8);
  sub_1D5612B18();
  sub_1D4E62938(v1, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4010, &qword_1D5651CD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4018, &qword_1D5651CE0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 248);
    v4 = *(v0 + 256);
    v13 = *(v0 + 280);
    v14 = *(v0 + 264);
    sub_1D4E48324((v0 + 136), v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4028, &qword_1D5651CF0);
    v6 = swift_task_alloc();
    *(v0 + 296) = v6;
    *(v6 + 16) = v14;
    *(v6 + 32) = v13;
    *(v6 + 48) = v5;
    *(v6 + 56) = v0 + 56;
    *(v6 + 64) = v4;
    *(v6 + 72) = v0 + 16;
    v7 = *(MEMORY[0x1E69E88A0] + 4);
    v8 = swift_task_alloc();
    *(v0 + 304) = v8;
    *v8 = v0;
    v8[1] = sub_1D5302300;

    return MEMORY[0x1EEE6DD58]();
  }

  else
  {
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0;
    sub_1D4E7661C(v0 + 136, &qword_1EC7F4020, &qword_1D5651CE8);
    sub_1D4E62938(v9, v10);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    OUTLINED_FUNCTION_22_1();

    return v11();
  }
}

uint64_t sub_1D5302300()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  v4 = *(v2 + 304);
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (!v0)
  {
    v7 = *(v3 + 296);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5302408()
{
  OUTLINED_FUNCTION_91();
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v0[25] = v4;
  v0[26] = *(v5 + 8);
  __swift_allocate_boxed_opaque_existential_0(v0 + 22);
  OUTLINED_FUNCTION_24_0(v4);
  v7 = *(v6 + 16);
  OUTLINED_FUNCTION_21_61();
  v8();
  v3[3] = v2;
  v3[4] = v1;
  __swift_allocate_boxed_opaque_existential_0(v3);
  sub_1D56131E8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_22_1();

  return v9();
}

uint64_t sub_1D53024F0()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[37];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_55();
  v3 = v0[39];

  return v2();
}

uint64_t LegacyModelExtendedLibraryRequestable.extendedUnderlyingRelationshipConfiguration(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4030, &qword_1D5651D08);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - v8;
  v10 = sub_1D5613158();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v32 - v19;
  v21 = dynamic_cast_existential_1_conditional(a2);
  if (v21)
  {
    v23 = v21;
    v24 = v22;
    (*(v22 + 80))(a1, v21, v22);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_1D4E7661C(v9, &qword_1EC7F4030, &qword_1D5651D08);
      v25 = sub_1D5613528();
      v26 = a3;
      v27 = 1;
    }

    else
    {
      (*(v12 + 32))(v20, v9, v10);
      v30 = *(v24 + 88);

      v30(v31, v23, v24);
      (*(v12 + 16))(v18, v20, v10);
      sub_1D5613508();
      (*(v12 + 8))(v20, v10);
      v25 = sub_1D5613528();
      v26 = a3;
      v27 = 0;
    }

    return __swift_storeEnumTagSinglePayload(v26, v27, 1, v25);
  }

  else
  {
    v28 = sub_1D5613528();

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v28);
  }
}

uint64_t sub_1D530280C()
{
  OUTLINED_FUNCTION_23_58();
  v7 = v0;
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v1 = OUTLINED_FUNCTION_10_88(dword_1D5651DB8);
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_0_2(v2);

  return v5(v4);
}

uint64_t sub_1D53028C0()
{
  OUTLINED_FUNCTION_23_58();
  v7 = v0;
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v1 = OUTLINED_FUNCTION_10_88(dword_1D5651DA8);
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_0_2(v2);

  return v5(v4);
}

uint64_t sub_1D5302970()
{
  OUTLINED_FUNCTION_23_58();
  v7 = v0;
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v1 = OUTLINED_FUNCTION_10_88(dword_1D5651D98);
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_0_2(v2);

  return v5(v4);
}

uint64_t sub_1D5302A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a2;
  v66 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_0();
  v63 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v62 = v56 - v13;
  v14 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_0();
  v61 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v59 = v56 - v19;
  v20 = sub_1D560E4F8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v64 = swift_getAssociatedConformanceWitness();
  v70 = v14;
  v71 = AssociatedTypeWitness;
  v72 = AssociatedConformanceWitness;
  v73 = v64;
  type metadata accessor for LibraryRequestConfigurationParameters();
  sub_1D5613358();
  v25 = swift_allocObject();
  v67 = a4;
  v25[2] = a4;
  v25[3] = a5;
  v25[4] = v68;
  v26 = sub_1D50B8CD8(v23, sub_1D5303FD0, v25);
  v70 = sub_1D56133A8();
  v60 = AssociatedConformanceWitness;
  v27 = *(AssociatedConformanceWitness + 8);
  v28 = v59;
  sub_1D5616418();
  v29 = *(*v26 + qword_1EDD76EF0 + 32);
  swift_beginAccess();
  v30 = *(v61 + 40);
  v61 = v14;
  v30(&v26[v29], v28, v14);
  swift_endAccess();
  v70 = sub_1D5613318();
  v31 = *(v64 + 8);
  v32 = v62;
  sub_1D5616418();
  v33 = *(*v26 + qword_1EDD76EF0 + 40);
  swift_beginAccess();
  v34 = *(v63 + 40);
  v63 = AssociatedTypeWitness;
  v34(&v26[v33], v32, AssociatedTypeWitness);
  swift_endAccess();

  sub_1D5613388();
  sub_1D5613398();
  sub_1D5613438();
  sub_1D5613448();
  sub_1D56133B8();
  sub_1D56133C8();
  sub_1D56133E8();
  sub_1D56133F8();
  v56[1] = a1;
  sub_1D5613328();
  v62 = v26;
  sub_1D5613338();
  result = sub_1D4E62628(v65);
  if (result)
  {
    if (result < 1)
    {
      goto LABEL_23;
    }

    v36 = 0;
    v37 = *(a5 + 48);
    v57 = v65 & 0xC000000000000001;
    v58 = v37;
    v59 = result;
    do
    {
      if (v57)
      {
        v38 = MEMORY[0x1DA6EB9B0](v36, v65);
      }

      else
      {
        v38 = *(v65 + 8 * v36 + 32);
      }

      ++v36;
      v39 = v67;
      v76 = v58(v67, a5);
      MEMORY[0x1EEE9AC00](v76);
      OUTLINED_FUNCTION_20_67();
      v40 = v61;
      v41 = v62;
      *(v42 - 16) = v38;
      *(v42 - 8) = v41;
      v43 = *(*(a5 + 8) + 8);
      v70 = v39;
      v71 = v40;
      v72 = v63;
      v73 = v43;
      v74 = v60;
      v75 = v64;
      type metadata accessor for PartialLibraryInternalPredicateResolver();
      sub_1D56152D8();
      OUTLINED_FUNCTION_7_105();
      sub_1D5615098();
    }

    while (v59 != v36);
  }

  v44 = sub_1D5613408();
  v70 = v44;
  v45 = v66;
  v46 = sub_1D4E62628(v66);
  v47 = 0;
  v64 = v45 & 0xC000000000000001;
  v65 = v46;
  v63 = a5 + 56;
  while (1)
  {
    if (v65 == v47)
    {
      v55 = v62;
      sub_1D5613418();

      return v55;
    }

    v48 = v64;
    sub_1D4F0B2FC(v47, v64 == 0, v45);
    if (v48)
    {
      result = MEMORY[0x1DA6EB9B0](v47, v45);
      v49 = result;
    }

    else
    {
      v49 = *(v45 + 8 * v47 + 32);
    }

    if (__OFADD__(v47, 1))
    {
      break;
    }

    v76 = MEMORY[0x1E69E7CC0];
    v69 = (*(a5 + 56))(v67, a5);
    MEMORY[0x1EEE9AC00](v69);
    OUTLINED_FUNCTION_20_67();
    *(v50 - 16) = v49;
    *(v50 - 8) = &v76;
    v51 = *(a5 + 8);
    type metadata accessor for LibraryInternalSortDescriptorResolver();
    sub_1D56152D8();
    OUTLINED_FUNCTION_7_105();
    sub_1D5615098();

    v52 = v76;
    if (sub_1D4E62628(v76))
    {
      result = sub_1D4E62638(v44);
      if (result < v47)
      {
        goto LABEL_21;
      }

      v53 = sub_1D4F0B2D8(v52);
      result = sub_1D4F0B2D8(v44);
      v54 = result + v53;
      if (__OFADD__(result, v53))
      {
        goto LABEL_22;
      }

      sub_1D4F05F24(v54);
      sub_1D54FB264();
      v44 = v70;
    }

    ++v47;
    v45 = v66;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1D530313C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[42] = v15;
  v8[43] = v16;
  v8[40] = a7;
  v8[41] = a8;
  v8[38] = a5;
  v8[39] = a6;
  v8[36] = a3;
  v8[37] = a4;
  v8[35] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440) - 8) + 64) + 15;
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4038, &qword_1D5651DD8);
  v8[46] = v10;
  v11 = *(v10 - 8);
  v8[47] = v11;
  v12 = *(v11 + 64) + 15;
  v8[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5303264, 0, 0);
}

uint64_t sub_1D5303264()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 288);
  sub_1D560D0C8();
  OUTLINED_FUNCTION_98();
  v3 = sub_1D5615178();
  v37 = v3;
  OUTLINED_FUNCTION_98();
  if (v3 != sub_1D5615208())
  {
    v34 = *(v0 + 288) + 32;
    v35 = **(v0 + 280);
    do
    {
      v10 = *(v0 + 288);
      OUTLINED_FUNCTION_98();
      v11 = sub_1D56151E8();
      sub_1D56151A8();
      if (v11)
      {
        v12 = *(v34 + 8 * v3);
      }

      else
      {
        v32 = *(v0 + 288);
        v12 = sub_1D5615BB8();
      }

      v14 = *(v0 + 352);
      v13 = *(v0 + 360);
      v15 = *(v0 + 320);
      v17 = *(v0 + 296);
      v16 = *(v0 + 304);
      v18 = *(v0 + 288);
      v36 = *(v0 + 336);
      sub_1D56152C8();
      v19 = sub_1D5615458();
      __swift_storeEnumTagSinglePayload(v13, 1, 1, v19);
      sub_1D4E62938(v17, v0 + 64);
      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      v21 = (v20 + 16);
      *(v20 + 24) = 0;
      *(v20 + 32) = v15;
      *(v20 + 40) = v36;
      sub_1D4E48324((v0 + 64), v20 + 56);
      *(v20 + 96) = v12;
      *(v20 + 104) = v16;
      sub_1D5155C5C(v13, v14);
      LODWORD(v13) = __swift_getEnumTagSinglePayload(v14, 1, v19);

      v22 = *(v0 + 352);
      if (v13 == 1)
      {
        sub_1D4E7661C(*(v0 + 352), &qword_1EC7EB710, &qword_1D561F440);
      }

      else
      {
        sub_1D5615448();
        OUTLINED_FUNCTION_24_0(v19);
        (*(v23 + 8))(v22, v19);
      }

      if (*v21)
      {
        v24 = *(v20 + 24);
        v25 = *v21;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v26 = sub_1D5615338();
        v28 = v27;
        swift_unknownObjectRelease();
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4028, &qword_1D5651CF0);
      v29 = v28 | v26;
      if (v28 | v26)
      {
        v29 = v0 + 184;
        *(v0 + 184) = 0;
        *(v0 + 192) = 0;
        *(v0 + 200) = v26;
        *(v0 + 208) = v28;
      }

      v30 = *(v0 + 360);
      v31 = *(v0 + 288);
      *(v0 + 248) = 1;
      *(v0 + 256) = v29;
      *(v0 + 264) = v35;
      swift_task_create();

      sub_1D4E7661C(v30, &qword_1EC7EB710, &qword_1D561F440);
      v3 = v37;
    }

    while (v37 != sub_1D5615208());
  }

  v4 = *(v0 + 384);
  v5 = **(v0 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4028, &qword_1D5651CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  sub_1D5615508();
  v6 = *(MEMORY[0x1E69E8710] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 392) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_5_105(v7);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DAD8](v9);
}

uint64_t sub_1D5303624()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 392);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5303720()
{
  OUTLINED_FUNCTION_91();
  if (*(v0 + 16))
  {
    *(v0 + 176) = *(v0 + 56);
    v1 = *(v0 + 40);
    *(v0 + 144) = *(v0 + 24);
    *(v0 + 160) = v1;
    if (*(v0 + 168))
    {
      v2 = *(v0 + 312);
      sub_1D4E48324((v0 + 144), v0 + 104);
      v3 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 104), v3);
      *(v0 + 240) = v3;
      __swift_allocate_boxed_opaque_existential_0((v0 + 216));
      OUTLINED_FUNCTION_24_0(v3);
      v5 = *(v4 + 16);
      OUTLINED_FUNCTION_21_61();
      v6();
      v7 = *(v2 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v2, *(v2 + 24));
      sub_1D5612228();
      __swift_destroy_boxed_opaque_existential_1((v0 + 104));
    }

    else
    {

      sub_1D4E7661C(v0 + 144, &qword_1EC7F0900, &qword_1D563A1B0);
    }

    v12 = *(MEMORY[0x1E69E8710] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 392) = v13;
    *v13 = v14;
    OUTLINED_FUNCTION_5_105();
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DAD8](v15);
  }

  else
  {
    v8 = *(v0 + 360);
    v9 = *(v0 + 352);
    (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));

    OUTLINED_FUNCTION_22_1();

    return v10();
  }
}

uint64_t sub_1D53038F4()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[45];
  v2 = v0[44];
  (*(v0[47] + 8))(v0[48], v0[46]);
  v3 = v0[34];

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D5303988(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v16 = v2[2];
  v7 = v2[4];
  v6 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_32(v12);
  *v13 = v14;
  v13[1] = sub_1D4E73560;

  return sub_1D530313C(a1, a2, v8, v9, v11, v10, v16, v5);
}

uint64_t sub_1D5303A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5303A9C, 0, 0);
}

uint64_t sub_1D5303A9C()
{
  OUTLINED_FUNCTION_23_58();
  v15 = v1;
  OUTLINED_FUNCTION_91();
  v3 = v0[2];
  v2 = v0[3];
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  OUTLINED_FUNCTION_17_69(v5);
  v14 = (v6 + *v6);
  v8 = *(v7 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[6] = v9;
  *v9 = v10;
  v9[1] = sub_1D5303BBC;
  v11 = v0[4];
  v12 = v0[5];

  return v14(v3 + 8, v11, v12, v4, v5);
}

uint64_t sub_1D5303BBC()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  v6 = *(v4 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 56) = v3;
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1D5303CF4()
{
  **(v0 + 16) = *(v0 + 56);
  OUTLINED_FUNCTION_22_1();
  return v1();
}

uint64_t sub_1D5303D20()
{
  OUTLINED_FUNCTION_23_58();
  v7 = v0;
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v1 = OUTLINED_FUNCTION_10_88(dword_1D5651D88);
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_0_2(v2);

  return v5(v4);
}

uint64_t sub_1D5303DAC()
{
  OUTLINED_FUNCTION_23_58();
  v7 = v0;
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v1 = OUTLINED_FUNCTION_10_88(dword_1D5651D78);
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_0_2(v2);

  return v5(v4);
}

uint64_t sub_1D5303E38()
{
  OUTLINED_FUNCTION_23_58();
  v7 = v0;
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v1 = OUTLINED_FUNCTION_10_88(dword_1D5651D68);
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_0_2(v2);

  return v5(v4);
}

uint64_t sub_1D5303EEC(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[12];
  v9 = v1[13];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_32(v10);
  *v11 = v12;
  v11[1] = sub_1D4E6ED20;

  return sub_1D5303A74(a1, v6, v7, (v1 + 7), v8, v9);
}

uint64_t sub_1D5303FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  return (*(v5 + 64))(a1, a2, a3, v4);
}

uint64_t sub_1D53040AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x776F4C79726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7827308 && a2 == 0xE300000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D756964656DLL && a2 == 0xE600000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1751607656 && a2 == 0xE400000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6867694879726576 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1D5616168();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1D5304248(char a1)
{
  result = 0x776F4C79726576;
  switch(a1)
  {
    case 1:
      result = 7827308;
      break;
    case 2:
      result = 0x6D756964656DLL;
      break;
    case 3:
      result = 1751607656;
      break;
    case 4:
      result = 0x6867694879726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D53042F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D53040AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5304318(uint64_t a1)
{
  v2 = sub_1D5304A58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5304354(uint64_t a1)
{
  v2 = sub_1D5304A58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5304390(uint64_t a1)
{
  v2 = sub_1D5304B00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D53043CC(uint64_t a1)
{
  v2 = sub_1D5304B00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5304408(uint64_t a1)
{
  v2 = sub_1D5304BA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5304444(uint64_t a1)
{
  v2 = sub_1D5304BA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5304480(uint64_t a1)
{
  v2 = sub_1D5304B54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D53044BC(uint64_t a1)
{
  v2 = sub_1D5304B54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D53044F8(uint64_t a1)
{
  v2 = sub_1D5304AAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5304534(uint64_t a1)
{
  v2 = sub_1D5304AAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5304570(uint64_t a1)
{
  v2 = sub_1D5304BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D53045AC(uint64_t a1)
{
  v2 = sub_1D5304BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VocalActivity.VocalStrength.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4040, &qword_1D5651DF0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v66 = v5;
  v67 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v65 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4048, &qword_1D5651DF8);
  v11 = OUTLINED_FUNCTION_4(v10);
  v63 = v12;
  v64 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v62 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4050, &qword_1D5651E00);
  v18 = OUTLINED_FUNCTION_4(v17);
  v60 = v19;
  v61 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v59 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4058, &qword_1D5651E08);
  v25 = OUTLINED_FUNCTION_4(v24);
  v57 = v26;
  v58 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  v56 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4060, &qword_1D5651E10);
  v32 = OUTLINED_FUNCTION_4(v31);
  v54 = v33;
  v55 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v53 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4068, &qword_1D5651E18);
  OUTLINED_FUNCTION_4(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v53 - v45;
  v47 = *v0;
  v48 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D5304A58();
  sub_1D56163D8();
  v49 = (v41 + 8);
  switch(v47)
  {
    case 1:
      sub_1D5304BA8();
      v50 = v56;
      OUTLINED_FUNCTION_7_11();
      sub_1D5616018();
      v52 = v57;
      v51 = v58;
      goto LABEL_7;
    case 2:
      sub_1D5304B54();
      v50 = v59;
      OUTLINED_FUNCTION_7_11();
      sub_1D5616018();
      v52 = v60;
      v51 = v61;
      goto LABEL_7;
    case 3:
      sub_1D5304B00();
      v50 = v62;
      OUTLINED_FUNCTION_7_11();
      sub_1D5616018();
      v52 = v63;
      v51 = v64;
      goto LABEL_7;
    case 4:
      sub_1D5304AAC();
      v50 = v65;
      OUTLINED_FUNCTION_7_11();
      sub_1D5616018();
      v52 = v66;
      v51 = v67;
LABEL_7:
      (*(v52 + 8))(v50, v51);
      break;
    default:
      sub_1D5304BFC();
      sub_1D5616018();
      (*(v54 + 8))(v38, v55);
      break;
  }

  (*v49)(v46, v39);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D5304A58()
{
  result = qword_1EC7F4070;
  if (!qword_1EC7F4070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4070);
  }

  return result;
}

unint64_t sub_1D5304AAC()
{
  result = qword_1EC7F4078;
  if (!qword_1EC7F4078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4078);
  }

  return result;
}

unint64_t sub_1D5304B00()
{
  result = qword_1EC7F4080;
  if (!qword_1EC7F4080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4080);
  }

  return result;
}

unint64_t sub_1D5304B54()
{
  result = qword_1EC7F4088;
  if (!qword_1EC7F4088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4088);
  }

  return result;
}

unint64_t sub_1D5304BA8()
{
  result = qword_1EC7F4090;
  if (!qword_1EC7F4090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4090);
  }

  return result;
}

unint64_t sub_1D5304BFC()
{
  result = qword_1EC7F4098;
  if (!qword_1EC7F4098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4098);
  }

  return result;
}

void VocalActivity.VocalStrength.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v88 = v0;
  v3 = v2;
  v84 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F40A0, &qword_1D5651E20);
  v81 = OUTLINED_FUNCTION_4(v5);
  v82 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v87 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F40A8, &qword_1D5651E28);
  v79 = OUTLINED_FUNCTION_4(v11);
  v80 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v86 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F40B0, &qword_1D5651E30);
  v18 = OUTLINED_FUNCTION_4(v17);
  v77 = v19;
  v78 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v83 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F40B8, &qword_1D5651E38);
  v25 = OUTLINED_FUNCTION_4(v24);
  v75 = v26;
  v76 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v69 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F40C0, &qword_1D5651E40);
  OUTLINED_FUNCTION_4(v32);
  v74 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_31();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F40C8, &unk_1D5651E48);
  OUTLINED_FUNCTION_4(v37);
  v85 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v69 - v42;
  v44 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D5304A58();
  v45 = v88;
  sub_1D5616398();
  if (v45)
  {
    goto LABEL_10;
  }

  v72 = v32;
  v73 = v1;
  v88 = v31;
  v46 = v86;
  v47 = v87;
  v48 = v43;
  v49 = sub_1D5615FE8();
  v53 = sub_1D4FE35F0(v49, 0);
  if (v51 == v52 >> 1)
  {
    v54 = v85;
LABEL_9:
    v63 = sub_1D5615C18();
    swift_allocError();
    v65 = v64;
    v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v65 = &type metadata for VocalActivity.VocalStrength;
    sub_1D5615F28();
    OUTLINED_FUNCTION_48_2();
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x1E69E6AF8], v63);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v54 + 8))(v48, v37);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_11:
    OUTLINED_FUNCTION_26();
    return;
  }

  if (v51 < (v52 >> 1))
  {
    v70 = *(v50 + v51);
    v55 = sub_1D4FE35EC(v51 + 1, v52 >> 1, v53, v50, v51, v52);
    v57 = v56;
    v59 = v58;
    swift_unknownObjectRelease();
    v71 = v55;
    if (v57 == v59 >> 1)
    {
      v60 = v84;
      v61 = v85;
      switch(v70)
      {
        case 1:
          sub_1D5304BA8();
          v46 = v88;
          OUTLINED_FUNCTION_3_137();
          swift_unknownObjectRelease();
          v68 = v75;
          v67 = v76;
          goto LABEL_16;
        case 2:
          sub_1D5304B54();
          v46 = v83;
          OUTLINED_FUNCTION_3_137();
          swift_unknownObjectRelease();
          v68 = v77;
          v67 = v78;
          goto LABEL_16;
        case 3:
          sub_1D5304B00();
          OUTLINED_FUNCTION_3_137();
          swift_unknownObjectRelease();
          v67 = v79;
          v68 = v80;
LABEL_16:
          (*(v68 + 8))(v46, v67);
          break;
        case 4:
          sub_1D5304AAC();
          v55 = v43;
          sub_1D5615F18();
          swift_unknownObjectRelease();
          (*(v82 + 8))(v47, v81);
          break;
        default:
          sub_1D5304BFC();
          v62 = v73;
          OUTLINED_FUNCTION_3_137();
          swift_unknownObjectRelease();
          (*(v74 + 8))(v62, v72);
          break;
      }

      (*(v61 + 8))(v55, v37);
      *v60 = v70;
      __swift_destroy_boxed_opaque_existential_1(v3);
      goto LABEL_11;
    }

    v54 = v85;
    v48 = v43;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1D5305300(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69676E6973 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x686365657073 && a2 == 0xE600000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x676E6970706172 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1D530540C(char a1)
{
  if (!a1)
  {
    return 0x676E69676E6973;
  }

  if (a1 == 1)
  {
    return 0x686365657073;
  }

  return 0x676E6970706172;
}

uint64_t sub_1D5305468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5305300(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5305490(uint64_t a1)
{
  v2 = sub_1D5306824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D53054CC(uint64_t a1)
{
  v2 = sub_1D5306824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5305508(uint64_t a1)
{
  v2 = sub_1D5306878();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5305544(uint64_t a1)
{
  v2 = sub_1D5306878();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5305580(uint64_t a1)
{
  v2 = sub_1D5306920();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D53055BC(uint64_t a1)
{
  v2 = sub_1D5306920();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D53055F8(uint64_t a1)
{
  v2 = sub_1D53068CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5305634(uint64_t a1)
{
  v2 = sub_1D53068CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VocalActivity.VocalKind.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F40D0, &qword_1D5651E58);
  v5 = OUTLINED_FUNCTION_4(v4);
  v43 = v6;
  v44 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v42 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F40D8, &qword_1D5651E60);
  v12 = OUTLINED_FUNCTION_4(v11);
  v40 = v13;
  v41 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v39 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F40E0, &qword_1D5651E68);
  v19 = OUTLINED_FUNCTION_4(v18);
  v37 = v20;
  v38 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_31();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F40E8, &qword_1D5651E70);
  OUTLINED_FUNCTION_4(v24);
  v26 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v36 - v30;
  v32 = *v0;
  v33 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D5306824();
  sub_1D56163D8();
  if (v32)
  {
    if (v32 == 1)
    {
      OUTLINED_FUNCTION_7_3();
      sub_1D53068CC();
      v1 = v39;
      OUTLINED_FUNCTION_7_11();
      sub_1D5616018();
      v35 = v40;
      v34 = v41;
    }

    else
    {
      sub_1D5306878();
      v1 = v42;
      OUTLINED_FUNCTION_7_11();
      sub_1D5616018();
      v35 = v43;
      v34 = v44;
    }
  }

  else
  {
    sub_1D5306920();
    OUTLINED_FUNCTION_7_11();
    sub_1D5616018();
    v35 = v37;
    v34 = v38;
  }

  (*(v35 + 8))(v1, v34);
  (*(v26 + 8))(v31, v24);
  OUTLINED_FUNCTION_26();
}

void VocalActivity.VocalKind.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v73 = v0;
  v2 = v1;
  v68 = v3;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4110, &qword_1D5651E78);
  OUTLINED_FUNCTION_4(v72);
  v69 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v71 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4118, &qword_1D5651E80);
  v10 = OUTLINED_FUNCTION_4(v9);
  v66 = v11;
  v67 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4120, &qword_1D5651E88);
  OUTLINED_FUNCTION_4(v17);
  v65 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v60 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4128, &qword_1D5651E90);
  OUTLINED_FUNCTION_4(v24);
  v70 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v60 - v29;
  v31 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D5306824();
  v32 = v73;
  sub_1D5616398();
  if (v32)
  {
    goto LABEL_10;
  }

  v62 = v17;
  v63 = v23;
  v64 = v16;
  v34 = v71;
  v33 = v72;
  v73 = v2;
  v35 = sub_1D5615FE8();
  v39 = sub_1D4FE35F0(v35, 0);
  if (v37 == v38 >> 1)
  {
    goto LABEL_9;
  }

  v61 = 0;
  if (v37 < (v38 >> 1))
  {
    LODWORD(v40) = *(v36 + v37);
    sub_1D4FE35EC(v37 + 1, v38 >> 1, v39, v36, v37, v38);
    v42 = v41;
    v44 = v43;
    swift_unknownObjectRelease();
    v45 = v42 == v44 >> 1;
    v46 = v69;
    if (v45)
    {
      if (v40)
      {
        if (v40 == 1)
        {
          OUTLINED_FUNCTION_7_3();
          sub_1D53068CC();
          v47 = v64;
          OUTLINED_FUNCTION_4_4();
          v48 = v68;
          v49 = v24;
          v50 = v70;
          swift_unknownObjectRelease();
          (*(v66 + 8))(v47, v67);
          (*(v50 + 8))(v30, v49);
        }

        else
        {
          LODWORD(v67) = v40;
          sub_1D5306878();
          v56 = v61;
          sub_1D5615F18();
          v48 = v68;
          v40 = v24;
          v57 = v70;
          if (v56)
          {
            (*(v70 + 8))(v30, v40);
            swift_unknownObjectRelease();
            v2 = v73;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          (*(v46 + 8))(v34, v33);
          (*(v57 + 8))(v30, v40);
          LOBYTE(v40) = v67;
        }
      }

      else
      {
        sub_1D5306920();
        v55 = v63;
        OUTLINED_FUNCTION_4_4();
        swift_unknownObjectRelease();
        (*(v65 + 8))(v55, v62);
        v58 = OUTLINED_FUNCTION_3_59();
        v59(v58);
        v48 = v68;
      }

      *v48 = v40;
      __swift_destroy_boxed_opaque_existential_1(v73);
      goto LABEL_11;
    }

LABEL_9:
    v51 = sub_1D5615C18();
    swift_allocError();
    v53 = v52;
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v53 = &type metadata for VocalActivity.VocalKind;
    sub_1D5615F28();
    OUTLINED_FUNCTION_48_2();
    (*(*(v51 - 8) + 104))(v53, *MEMORY[0x1E69E6AF8], v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v70 + 8))(v30, v24);
    v2 = v73;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_11:
    OUTLINED_FUNCTION_26();
    return;
  }

  __break(1u);
}

uint64_t sub_1D5305FA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6581861 && a2 == 0xE300000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6874676E65727473 && a2 == 0xE800000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1684957547 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1D53060F8(char a1)
{
  result = 0x7472617473;
  switch(a1)
  {
    case 1:
      result = 6581861;
      break;
    case 2:
      result = 0x6874676E65727473;
      break;
    case 3:
      result = 1684957547;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5306168(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D53061BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5305FA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D53061E4(uint64_t a1)
{
  v2 = sub_1D5306974();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5306220(uint64_t a1)
{
  v2 = sub_1D5306974();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VocalActivity.encode(to:)(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4130, &qword_1D5651E98);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_31();
  v12 = *v1;
  v11 = v1[1];
  v16 = *(v1 + 16);
  v13 = *(v1 + 17);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5306974();
  sub_1D56163D8();
  OUTLINED_FUNCTION_22_14();
  sub_1D56160A8();
  if (!v2)
  {
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160A8();
    sub_1D53069C8();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
    sub_1D5306A1C();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
  }

  return (*(v7 + 8))(v3, v5);
}

uint64_t VocalActivity.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1DA6EC100](*&v5);
  MEMORY[0x1DA6EC0D0](v3);
  return MEMORY[0x1DA6EC0D0](v4);
}

uint64_t VocalActivity.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_1D56162D8();
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v1;
  }

  MEMORY[0x1DA6EC100](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x1DA6EC100](*&v6);
  MEMORY[0x1DA6EC0D0](v3);
  MEMORY[0x1DA6EC0D0](v4);
  return sub_1D5616328();
}

uint64_t VocalActivity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4150, &qword_1D5651EA0);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5306974();
  sub_1D5616398();
  if (!v2)
  {
    v26 = 0;
    OUTLINED_FUNCTION_10_90();
    sub_1D5615FB8();
    v15 = v14;
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_10_90();
    sub_1D5615FB8();
    v17 = v16;
    v24 = 2;
    sub_1D5306A70();
    OUTLINED_FUNCTION_10_90();
    sub_1D5615FD8();
    v19 = v25;
    v22 = 3;
    sub_1D5306AC4();
    OUTLINED_FUNCTION_10_90();
    sub_1D5615FD8();
    (*(v7 + 8))(v12, v5);
    v20 = v23;
    *a2 = v15;
    *(a2 + 8) = v17;
    *(a2 + 16) = v19;
    *(a2 + 17) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5306788()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_1D56162D8();
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v1;
  }

  MEMORY[0x1DA6EC100](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x1DA6EC100](*&v6);
  MEMORY[0x1DA6EC0D0](v3);
  MEMORY[0x1DA6EC0D0](v4);
  return sub_1D5616328();
}

unint64_t sub_1D5306824()
{
  result = qword_1EC7F40F0;
  if (!qword_1EC7F40F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F40F0);
  }

  return result;
}

unint64_t sub_1D5306878()
{
  result = qword_1EC7F40F8;
  if (!qword_1EC7F40F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F40F8);
  }

  return result;
}

unint64_t sub_1D53068CC()
{
  result = qword_1EC7F4100;
  if (!qword_1EC7F4100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4100);
  }

  return result;
}

unint64_t sub_1D5306920()
{
  result = qword_1EC7F4108;
  if (!qword_1EC7F4108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4108);
  }

  return result;
}

unint64_t sub_1D5306974()
{
  result = qword_1EC7F4138;
  if (!qword_1EC7F4138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4138);
  }

  return result;
}

unint64_t sub_1D53069C8()
{
  result = qword_1EC7F4140;
  if (!qword_1EC7F4140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4140);
  }

  return result;
}

unint64_t sub_1D5306A1C()
{
  result = qword_1EC7F4148;
  if (!qword_1EC7F4148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4148);
  }

  return result;
}

unint64_t sub_1D5306A70()
{
  result = qword_1EC7F4158;
  if (!qword_1EC7F4158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4158);
  }

  return result;
}

unint64_t sub_1D5306AC4()
{
  result = qword_1EC7F4160;
  if (!qword_1EC7F4160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4160);
  }

  return result;
}

unint64_t sub_1D5306B4C()
{
  result = qword_1EC7F4178;
  if (!qword_1EC7F4178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4178);
  }

  return result;
}

unint64_t sub_1D5306BD4()
{
  result = qword_1EC7F4190;
  if (!qword_1EC7F4190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4190);
  }

  return result;
}

unint64_t sub_1D5306C2C()
{
  result = qword_1EC7F4198;
  if (!qword_1EC7F4198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4198);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VocalActivity(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 18))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 17);
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for VocalActivity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VocalActivity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D5306E00(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D5306F0C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D530703C()
{
  result = qword_1EC7F41A0;
  if (!qword_1EC7F41A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41A0);
  }

  return result;
}

unint64_t sub_1D5307094()
{
  result = qword_1EC7F41A8;
  if (!qword_1EC7F41A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41A8);
  }

  return result;
}

unint64_t sub_1D53070EC()
{
  result = qword_1EC7F41B0;
  if (!qword_1EC7F41B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41B0);
  }

  return result;
}

unint64_t sub_1D5307144()
{
  result = qword_1EC7F41B8;
  if (!qword_1EC7F41B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41B8);
  }

  return result;
}

unint64_t sub_1D530719C()
{
  result = qword_1EC7F41C0;
  if (!qword_1EC7F41C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41C0);
  }

  return result;
}

unint64_t sub_1D53071F4()
{
  result = qword_1EC7F41C8;
  if (!qword_1EC7F41C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41C8);
  }

  return result;
}

unint64_t sub_1D530724C()
{
  result = qword_1EC7F41D0;
  if (!qword_1EC7F41D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41D0);
  }

  return result;
}

unint64_t sub_1D53072A4()
{
  result = qword_1EC7F41D8;
  if (!qword_1EC7F41D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41D8);
  }

  return result;
}

unint64_t sub_1D53072FC()
{
  result = qword_1EC7F41E0;
  if (!qword_1EC7F41E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41E0);
  }

  return result;
}

unint64_t sub_1D5307354()
{
  result = qword_1EC7F41E8;
  if (!qword_1EC7F41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41E8);
  }

  return result;
}

unint64_t sub_1D53073AC()
{
  result = qword_1EC7F41F0;
  if (!qword_1EC7F41F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41F0);
  }

  return result;
}

unint64_t sub_1D5307404()
{
  result = qword_1EC7F41F8;
  if (!qword_1EC7F41F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41F8);
  }

  return result;
}

unint64_t sub_1D530745C()
{
  result = qword_1EC7F4200;
  if (!qword_1EC7F4200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4200);
  }

  return result;
}

unint64_t sub_1D53074B4()
{
  result = qword_1EC7F4208;
  if (!qword_1EC7F4208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4208);
  }

  return result;
}

unint64_t sub_1D530750C()
{
  result = qword_1EC7F4210;
  if (!qword_1EC7F4210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4210);
  }

  return result;
}

unint64_t sub_1D5307564()
{
  result = qword_1EC7F4218;
  if (!qword_1EC7F4218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4218);
  }

  return result;
}

unint64_t sub_1D53075BC()
{
  result = qword_1EC7F4220;
  if (!qword_1EC7F4220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4220);
  }

  return result;
}

unint64_t sub_1D5307614()
{
  result = qword_1EC7F4228;
  if (!qword_1EC7F4228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4228);
  }

  return result;
}

unint64_t sub_1D530766C()
{
  result = qword_1EC7F4230;
  if (!qword_1EC7F4230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4230);
  }

  return result;
}

unint64_t sub_1D53076C4()
{
  result = qword_1EC7F4238;
  if (!qword_1EC7F4238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4238);
  }

  return result;
}

unint64_t sub_1D530771C()
{
  result = qword_1EC7F4240;
  if (!qword_1EC7F4240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4240);
  }

  return result;
}

unint64_t sub_1D5307774()
{
  result = qword_1EC7F4248;
  if (!qword_1EC7F4248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4248);
  }

  return result;
}

unint64_t sub_1D53077CC()
{
  result = qword_1EC7F4250;
  if (!qword_1EC7F4250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4250);
  }

  return result;
}

unint64_t sub_1D5307824()
{
  result = qword_1EC7F4258;
  if (!qword_1EC7F4258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4258);
  }

  return result;
}

unint64_t sub_1D530787C()
{
  result = qword_1EC7F4260;
  if (!qword_1EC7F4260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4260);
  }

  return result;
}

uint64_t sub_1D53078F4(uint64_t a1)
{
  v2 = sub_1D560E348();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = 0;
  v9 = *(a1 + 16);
  v10 = *MEMORY[0x1E6975218];
  v22 = *MEMORY[0x1E69751E0];
  v21 = *MEMORY[0x1E6975220];
  v20 = *MEMORY[0x1E69751E8];
  v19 = *MEMORY[0x1E6975200];
  v18 = *MEMORY[0x1E69751F0];
  v17 = *MEMORY[0x1E69751F8];
  v16 = *MEMORY[0x1E6975208];
  v15 = *MEMORY[0x1E6975210];
  v14 = *MEMORY[0x1E6975228];
  while (v9 != v8)
  {
    (*(v3 + 16))(v6, a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8, v2);
    v11 = (*(v3 + 88))(v6, v2);
    if (v11 == v10)
    {
      goto LABEL_4;
    }

    if (v11 == v22)
    {
      v7 |= 2uLL;
    }

    else if (v11 == v21)
    {
      v7 |= 4uLL;
    }

    else if (v11 == v20)
    {
      v7 |= 8uLL;
    }

    else if (v11 == v19)
    {
      v7 |= 0x10uLL;
    }

    else if (v11 == v18)
    {
      v7 |= 0x20uLL;
    }

    else if (v11 == v17)
    {
      v7 |= 0x40uLL;
    }

    else
    {
      if (v11 == v16)
      {
LABEL_4:
        v7 |= 1uLL;
        goto LABEL_17;
      }

      if (v11 == v15)
      {
        v7 |= 0x80uLL;
      }

      else if (v11 != v14)
      {
        sub_1D5615E08();
        __break(1u);
        return v7;
      }
    }

LABEL_17:
    ++v8;
  }

  return v7;
}

uint64_t sub_1D5307BC4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v7 + 28);
  v11 = qword_1EDD574A0;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_1D560D9A8();
  v13 = __swift_project_value_buffer(v12, qword_1EDD574A8);
  v14 = (*(*(v12 - 8) + 16))(&v9[v10], v13, v12);
  *v9 = a1;
  *(v9 + 1) = a2;
  v15 = *(v2 + 32);
  MEMORY[0x1EEE9AC00](v14);
  *&v17[-16] = v2;
  *&v17[-8] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA968, &unk_1D561D1F0);
  sub_1D560F608();

  return sub_1D50F3940(v9);
}

uint64_t sub_1D5307D64(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v7 + 28);
  v11 = qword_1EC7E8F10;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_1D560D9A8();
  v13 = __swift_project_value_buffer(v12, qword_1EC7F0888);
  v14 = (*(*(v12 - 8) + 16))(&v9[v10], v13, v12);
  *v9 = a1;
  *(v9 + 1) = a2;
  v15 = *(v2 + 32);
  MEMORY[0x1EEE9AC00](v14);
  *&v17[-16] = v2;
  *&v17[-8] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA970, &unk_1D5652B00);
  sub_1D560F608();

  return sub_1D50F3940(v9);
}

uint64_t sub_1D5307F04(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v7 + 28);
  v11 = qword_1EC7E95E0;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_1D560D9A8();
  v13 = __swift_project_value_buffer(v12, qword_1EC7F5D80);
  v14 = (*(*(v12 - 8) + 16))(&v9[v10], v13, v12);
  *v9 = a1;
  *(v9 + 1) = a2;
  v15 = *(v2 + 32);
  MEMORY[0x1EEE9AC00](v14);
  *&v17[-16] = v2;
  *&v17[-8] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B0, &unk_1D561C1F0);
  sub_1D560F608();

  return sub_1D50F3940(v9);
}

uint64_t sub_1D53080A4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v7 + 28);
  v11 = qword_1EDD546B0;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_1D560D9A8();
  v13 = __swift_project_value_buffer(v12, qword_1EDD546B8);
  v14 = (*(*(v12 - 8) + 16))(&v9[v10], v13, v12);
  *v9 = a1;
  *(v9 + 1) = a2;
  v15 = *(v2 + 32);
  MEMORY[0x1EEE9AC00](v14);
  *&v17[-16] = v2;
  *&v17[-8] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  sub_1D560F608();

  return sub_1D50F3940(v9);
}

uint64_t sub_1D5308244(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v7 + 28);
  v11 = qword_1EDD54510;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_1D560D9A8();
  v13 = __swift_project_value_buffer(v12, qword_1EDD54518);
  v14 = (*(*(v12 - 8) + 16))(&v9[v10], v13, v12);
  *v9 = a1;
  *(v9 + 1) = a2;
  v15 = *(v2 + 32);
  MEMORY[0x1EEE9AC00](v14);
  *&v17[-16] = v2;
  *&v17[-8] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  sub_1D560F608();

  return sub_1D50F3940(v9);
}

uint64_t sub_1D53083E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MusicItemCache.Key();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v8 + 28);
  sub_1D5613D28();

  sub_1D560E358();
  *v10 = a1;
  v10[1] = a2;
  v12 = *(v2 + 32);
  v15 = v3;
  v16 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  sub_1D560F608();

  return sub_1D50F3940(v10);
}

uint64_t sub_1D5308500(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MusicItemCache.Key();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v8 + 28);
  sub_1D5614408();

  sub_1D560E358();
  *v10 = a1;
  v10[1] = a2;
  v12 = *(v2 + 32);
  v15 = v3;
  v16 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65A0, &unk_1D561D200);
  sub_1D560F608();

  return sub_1D50F3940(v10);
}

uint64_t sub_1D530861C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MusicItemCache.Key();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v8 + 28);
  sub_1D5613838();

  sub_1D560E358();
  *v10 = a1;
  v10[1] = a2;
  v12 = *(v2 + 32);
  v15 = v3;
  v16 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  sub_1D560F608();

  return sub_1D50F3940(v10);
}

uint64_t sub_1D5308738(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v7 + 28);
  v11 = qword_1EDD57520;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_1D560D9A8();
  v13 = __swift_project_value_buffer(v12, qword_1EDD57528);
  v14 = (*(*(v12 - 8) + 16))(&v9[v10], v13, v12);
  *v9 = a1;
  *(v9 + 1) = a2;
  v15 = *(v2 + 32);
  MEMORY[0x1EEE9AC00](v14);
  *&v17[-16] = v2;
  *&v17[-8] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  sub_1D560F608();

  return sub_1D50F3940(v9);
}

uint64_t sub_1D53088D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MusicItemCache.Key();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v8 + 28);
  sub_1D560F8B8();

  sub_1D560E358();
  *v10 = a1;
  v10[1] = a2;
  v12 = *(v2 + 32);
  v15 = v3;
  v16 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA980, &unk_1D561D210);
  sub_1D560F608();

  return sub_1D50F3940(v10);
}

uint64_t sub_1D53089F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MusicItemCache.Key();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v8 + 28);
  sub_1D5614B68();

  sub_1D560E358();
  *v10 = a1;
  v10[1] = a2;
  v12 = *(v2 + 32);
  v15 = v3;
  v16 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA988, &qword_1D56397B0);
  sub_1D560F608();

  return sub_1D50F3940(v10);
}

uint64_t sub_1D5308B10(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v7 + 28);
  v11 = qword_1EDD52BA8;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_1D560D9A8();
  v13 = __swift_project_value_buffer(v12, qword_1EDD52BB0);
  v14 = (*(*(v12 - 8) + 16))(&v9[v10], v13, v12);
  *v9 = a1;
  *(v9 + 1) = a2;
  v15 = *(v2 + 32);
  MEMORY[0x1EEE9AC00](v14);
  *&v17[-16] = v2;
  *&v17[-8] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1980, &qword_1D5642040);
  sub_1D560F608();

  return sub_1D50F3940(v9);
}