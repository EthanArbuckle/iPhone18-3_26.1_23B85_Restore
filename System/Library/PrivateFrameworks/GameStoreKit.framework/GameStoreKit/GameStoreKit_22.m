uint64_t sub_24E83E544()
{
  v1 = *(v0 + 3392);
  v2 = *(v0 + 3384);
  v3 = *(v0 + 3376);
  v4 = *(v0 + 3368);

  sub_24E841B78(v4, v3, v2, v1);
  v5 = *(v0 + 3416);
  if (qword_27F211398 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E718);
  v7 = v5;
  v8 = sub_24F9220B8();
  v9 = sub_24F92BDB8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v8, v9, "Error retrieving highlights: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  v14 = *(v0 + 3424);
  v15 = *(v0 + 3272);
  v16 = *(v0 + 3248);
  v17 = *(v0 + 3240);
  v18 = *(v0 + 2856);
  v19 = *(v0 + 2808);

  v29 = *v18;
  v20 = type metadata accessor for AccessPointRequiredData();
  v21 = v20[5];
  sub_24E840A0C(v15, &v19[v21], type metadata accessor for Player);
  (*(v16 + 56))(&v19[v21], 0, 1, v17);
  sub_24E840A0C(&v18[v14], &v19[v20[6]], type metadata accessor for Game);

  v22 = v20[16];
  v23 = sub_24F9289E8();
  (*(*(v23 - 8) + 56))(&v19[v22], 1, 1, v23);
  *v19 = v29;
  *&v19[v20[7]] = MEMORY[0x277D84F90];
  *&v19[v20[8]] = 0;
  *&v19[v20[9]] = 0;
  *&v19[v20[10]] = 0;
  *&v19[v20[11]] = 0;
  v24 = &v19[v20[12]];
  *v24 = 0;
  v24[1] = 0;
  *&v19[v20[13]] = 0;
  *&v19[v20[14]] = 0;
  v25 = &v19[v20[15]];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v19[v20[17]];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v19[v20[18]];
  *v27 = 0;
  v27[1] = 0;

  return MEMORY[0x282200920](v0 + 1936, v0 + 2760, sub_24E83DB6C, v0 + 2672);
}

uint64_t sub_24E83E86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24E83E890, 0, 0);
}

uint64_t sub_24E83E890()
{
  v1 = v0[3];
  v2 = (v1 + *(type metadata accessor for AccessPointDataIntent() + 28));
  v4 = *v2;
  v3 = v2[1];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_24E83E940;
  v6 = v0[4];
  v7 = v0[5];

  return sub_24E841BF4(v4, v3, v6, v7);
}

uint64_t sub_24E83E940(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;

    return MEMORY[0x2822009F8](sub_24E83EA9C, 0, 0);
  }
}

uint64_t sub_24E83EAC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_24E83EAE4, 0, 0);
}

uint64_t sub_24E83EAE4()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE80);
  *v3 = v0;
  v3[1] = sub_24E83EBEC;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001ELL, 0x800000024FA47D60, sub_24E8433BC, v2, v4);
}

uint64_t sub_24E83EBEC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24E83ED2C;
  }

  else
  {

    v2 = sub_24E83ED08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E83ED08()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_24E83ED2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E83ED90(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_24E83EDB0, 0, 0);
}

uint64_t sub_24E83EDB0()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE88);
  *v3 = v0;
  v3[1] = sub_24E83EEB8;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001ELL, 0x800000024FA47D40, sub_24E843314, v2, v4);
}

uint64_t sub_24E83EEB8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_24E635AF0;
  }

  else
  {

    v2 = sub_24E80CB00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E83EFD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24E83F06C;

  return sub_24E842AFC(a2);
}

uint64_t sub_24E83F06C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_24E83F1B8, 0, 0);
  }
}

void sub_24E83F1DC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EEA0);
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = aBlock - v7;
  v9 = [a2 internal];
  v10 = [v9 isArcadeGame];

  if (v10)
  {
    v11 = [objc_opt_self() proxyForLocalPlayer];
    v12 = [v11 gameService];

    v13 = [a2 internal];
    v14 = [v13 adamID];

    (*(v5 + 16))(v8, a1, v4);
    v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v16 = swift_allocObject();
    (*(v5 + 32))(v16 + v15, v8, v4);
    aBlock[4] = sub_24E843330;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E83F674;
    aBlock[3] = &block_descriptor_42;
    v17 = _Block_copy(aBlock);

    [v12 getArcadeHighlightForAdamID:v14 count:2 handler:v17];
    _Block_release(v17);
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock[0] = 0;
    sub_24F92B798();
  }
}

uint64_t sub_24E83F464(unint64_t a1, id a2)
{
  if (a2)
  {
    v4 = a2;
    if (qword_27F211398 != -1)
    {
      swift_once();
    }

    v5 = sub_24F9220D8();
    __swift_project_value_buffer(v5, qword_27F39E718);
    v6 = a2;
    v7 = sub_24F9220B8();
    v8 = sub_24F92BDB8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_24E5DD000, v7, v8, "Error fetching Arcade games for you highlights: %@", v9, 0xCu);
      sub_24E601704(v10, &qword_27F227B20);
      MEMORY[0x2530542D0](v10, -1, -1);
      MEMORY[0x2530542D0](v9, -1, -1);
    }

    else
    {
    }
  }

  if (a1 >> 62)
  {
    result = sub_24F92C738();
    if (!result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EEA0);
      return sub_24F92B798();
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x253052270](0, a1);
    goto LABEL_13;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(a1 + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_24E83F688(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EEB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = objc_opt_self();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_24E84345C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E83F95C;
  aBlock[3] = &block_descriptor_50;
  v11 = _Block_copy(aBlock);

  [v8 loadHighlightsWithPlayerScope:1 timeScope:2 game:a2 handler:v11];
  _Block_release(v11);
}

void sub_24E83F854(void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = a1;
      [a2 rank];
    }

    else
    {
      v5 = a1;
    }

    v6 = [a1 localizedTitle];
    if (v6)
    {
      v7 = v6;
      sub_24F92B0D8();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EEB0);
    sub_24F92B798();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EEB0);
    sub_24F92B798();
  }
}

void sub_24E83F95C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v12 = *(a1 + 32);

  v18 = a2;
  v16 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v12(a2, a3, a4, a5, a6, a7);
}

uint64_t sub_24E83FA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a2;
  v4[14] = a4;
  v4[12] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  v6 = swift_task_alloc();
  v4[15] = v6;
  *v6 = v4;
  v6[1] = sub_24E83FB04;

  return MEMORY[0x28217F228](v4 + 7, v5, v5);
}

uint64_t sub_24E83FB04()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24E64E9E8;
  }

  else
  {
    v2 = sub_24E83FC18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E83FC18()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920518();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v2 = v0[5];
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_24E83FD08;
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];

  return MEMORY[0x282165218](v6, v4, v5, v2, v1);
}

uint64_t sub_24E83FD08()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24E83FE1C;
  }

  else
  {
    v2 = sub_24E646B90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E83FE1C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E83FE80(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = [objc_opt_self() daemonProxy];
  v10 = [v9 friendServicePrivate];

  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  *(v12 + v11 + v6) = a2 & 1;
  aBlock[4] = sub_24E843250;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E840678;
  aBlock[3] = &block_descriptor_22;
  v13 = _Block_copy(aBlock);

  [v10 getFriendRequestsBannerDataWithCompletion_];
  _Block_release(v13);
  return swift_unknownObjectRelease();
}

uint64_t sub_24E840084(unint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for Player(0) - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    if (qword_27F211398 != -1)
    {
LABEL_40:
      swift_once();
    }

    v13 = sub_24F9220D8();
    __swift_project_value_buffer(v13, qword_27F39E718);
    v14 = a2;
    v15 = sub_24F9220B8();
    v16 = sub_24F92BDB8();

    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_6;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = a2;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_24E5DD000, v15, v16, "Error fetching friend requests for highlight: %@", v17, 0xCu);
    sub_24E601704(v18, &qword_27F227B20);
    MEMORY[0x2530542D0](v18, -1, -1);
    goto LABEL_5;
  }

  v40 = v9;
  a2 = MEMORY[0x277D84F90];
  v41 = a3;
  if ((a4 & 1) == 0)
  {
    v42 = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
      v22 = sub_24F92C738();
      if (v22)
      {
LABEL_13:
        v39 = v12;
        v23 = 0;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x253052270](v23, a1, v10);
          }

          else
          {
            if (v23 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            v24 = *(a1 + 8 * v23 + 32);
          }

          v25 = v24;
          a2 = (v23 + 1);
          if (__OFADD__(v23, 1))
          {
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          if ([v24 isFriendInvitationInContacts])
          {
            sub_24F92C948();
            sub_24F92C988();
            sub_24F92C998();
            sub_24F92C958();
          }

          else
          {
          }

          ++v23;
        }

        while (a2 != v22);
        a1 = v42;
        a2 = MEMORY[0x277D84F90];
        v12 = v39;
        if (v42 >> 62)
        {
          goto LABEL_43;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_13;
      }
    }

    a1 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_43;
    }

    goto LABEL_24;
  }

  if (a1 >> 62)
  {
LABEL_43:
    v26 = sub_24F92C738();
    if (v26 < 1)
    {
      goto LABEL_44;
    }

    goto LABEL_25;
  }

LABEL_24:
  v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v26 < 1)
  {
LABEL_44:

    if (qword_27F211398 != -1)
    {
      swift_once();
    }

    v37 = sub_24F9220D8();
    __swift_project_value_buffer(v37, qword_27F39E718);
    v15 = sub_24F9220B8();
    v38 = sub_24F92BD98();
    if (!os_log_type_enabled(v15, v38))
    {
      goto LABEL_6;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_24E5DD000, v15, v38, "No pending friend requests or friend requests banner is not enabled.", v17, 2u);
LABEL_5:
    MEMORY[0x2530542D0](v17, -1, -1);
LABEL_6:

    v42 = 0;
    goto LABEL_7;
  }

LABEL_25:
  v42 = a2;
  sub_24F457FDC(0, v26, 0);
  v27 = 0;
  v28 = v42;
  v29 = v40;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x253052270](v27, a1);
    }

    else
    {
      v30 = *(a1 + 8 * v27 + 32);
    }

    sub_24F3FAC70(v30, 0, 0, v12);
    v42 = v28;
    v32 = v28[2];
    v31 = v28[3];
    if (v32 >= v31 >> 1)
    {
      sub_24F457FDC(v31 > 1, v32 + 1, 1);
      v29 = v40;
      v28 = v42;
    }

    ++v27;
    v28[2] = v32 + 1;
    sub_24E841B8C(v12, v28 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v32, type metadata accessor for Player);
  }

  while (v26 != v27);

  if (qword_27F211398 != -1)
  {
    swift_once();
  }

  v33 = sub_24F9220D8();
  __swift_project_value_buffer(v33, qword_27F39E718);

  v34 = sub_24F9220B8();
  v35 = sub_24F92BD98();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    *(v36 + 4) = v28[2];

    _os_log_impl(&dword_24E5DD000, v34, v35, "Retrieved %ld pending friend requests.", v36, 0xCu);
    MEMORY[0x2530542D0](v36, -1, -1);
  }

  else
  {
  }

  v42 = v28;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE98);
  return sub_24F92B798();
}

void sub_24E84068C(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = *(a1 + 32);
  sub_24E69A5C4(0, a4);
  v6 = sub_24F92B5A8();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_24E840734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v6 = type metadata accessor for AccessPointRequiredData();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_24E840844;

  return sub_24E83C094(v7, a2, a3);
}

uint64_t sub_24E840844()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_24E635AF0;
  }

  else
  {
    v2 = sub_24E840958;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E840958()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];
  sub_24E841B8C(v0[5], v3, type metadata accessor for AccessPointRequiredData);
  (*(v1 + 56))(v3, 0, 1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24E840A0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E840A74()
{
  v1 = type metadata accessor for AccessPointDataIntent();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(*(v1 - 8) + 64);
  v5 = type metadata accessor for Player(0);
  v6 = *(v5 - 1);
  v7 = *(v6 + 80);
  v8 = v0 + v3;
  v9 = v0 + v3 + *(v1 + 24);
  v72 = v7;
  if (!(*(v6 + 48))(v9, 1, v5))
  {

    v10 = v5[6];
    v11 = sub_24F9289E8();
    v71 = *(v11 - 8);
    v12 = *(v71 + 8);
    v74 = v11;
    v12(v9 + v10);

    if (*(v9 + v5[9] + 8) != 1)
    {
    }

    v13 = v9 + v5[13];
    v14 = type metadata accessor for CallProviderConversationHandleSet();
    v73 = v4;
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {
      v67 = v12;
      v64 = v0;
      v15 = type metadata accessor for CallProviderConversationHandle();
      v16 = *(*(v15 - 8) + 48);
      if (!v16(v13, 1, v15))
      {

        v17 = *(type metadata accessor for CallProvider() + 24);
        if (!(*(v71 + 48))(v13 + v17, 1, v74))
        {
          v67(v13 + v17, v74);
        }
      }

      v18 = v13 + *(v14 + 20);
      v19 = v16(v18, 1, v15);
      v4 = v73;
      if (!v19)
      {

        v20 = *(type metadata accessor for CallProvider() + 24);
        if (!(*(v71 + 48))(v18 + v20, 1, v74))
        {
          v67(v18 + v20, v74);
        }
      }

      v0 = v64;
      v12 = v67;
    }

    if (*(v9 + v5[15] + 8))
    {
    }

    v21 = v9 + v5[16];
    PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
    v7 = v72;
    if (!(*(*(PlayedTogetherInfo - 8) + 48))(v21, 1, PlayedTogetherInfo))
    {

      v23 = type metadata accessor for Game();
      (v12)(v21 + v23[18], v74);
      v24 = v23[19];
      if (!(*(v71 + 48))(v21 + v24, 1, v74))
      {
        (v12)(v21 + v24, v74);
      }

      v68 = v12;

      v25 = v23[21];
      v26 = sub_24F920818();
      v27 = *(v26 - 8);
      if (!(*(v27 + 48))(v21 + v25, 1, v26))
      {
        (*(v27 + 8))(v21 + v25, v26);
      }

      v7 = v72;
      v4 = v73;
      v12 = v68;
    }

    v28 = v9 + v5[17];
    ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
    if (!(*(*(ChallengeInfo - 8) + 48))(v28, 1, ChallengeInfo))
    {

      v30 = type metadata accessor for Game();
      (v12)(v28 + v30[18], v74);
      v31 = v30[19];
      if (!(*(v71 + 48))(v28 + v31, 1, v74))
      {
        (v12)(v28 + v31, v74);
      }

      v32 = v30[21];
      v33 = sub_24F920818();
      v34 = *(v33 - 8);
      if (!(*(v34 + 48))(v28 + v32, 1, v33))
      {
        (*(v34 + 8))(v28 + v32, v33);
      }

      v7 = v72;
      v4 = v73;
    }
  }

  v35 = v0;
  v36 = v4 + v7;
  v37 = v8 + *(v1 + 28);

  v38 = type metadata accessor for Game();
  v39 = v38[18];
  v40 = sub_24F9289E8();
  v41 = *(v40 - 8);
  v75 = *(v41 + 8);
  v75(v37 + v39, v40);
  v42 = v38[19];
  v70 = *(v41 + 48);
  if (!v70(v37 + v42, 1, v40))
  {
    v75(v37 + v42, v40);
  }

  v43 = v36 & ~v7;

  v44 = v38[21];
  v45 = sub_24F920818();
  v46 = *(v45 - 8);
  v66 = *(v46 + 48);
  if (!v66(v37 + v44, 1, v45))
  {
    (*(v46 + 8))(v37 + v44, v45);
  }

  v65 = v46;
  v69 = v45;

  v47 = v35 + v43;

  v75(v35 + v43 + v5[6], v40);

  if (*(v35 + v43 + v5[9] + 8) != 1)
  {
  }

  v48 = v47 + v5[13];
  v49 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v49 - 8) + 48))(v48, 1, v49))
  {
    v50 = type metadata accessor for CallProviderConversationHandle();
    v51 = *(*(v50 - 8) + 48);
    if (!v51(v48, 1, v50))
    {

      v52 = *(type metadata accessor for CallProvider() + 24);
      if (!v70(v48 + v52, 1, v40))
      {
        v75(v48 + v52, v40);
      }
    }

    v53 = v48 + *(v49 + 20);
    if (!v51(v53, 1, v50))
    {

      v54 = *(type metadata accessor for CallProvider() + 24);
      if (!v70(v53 + v54, 1, v40))
      {
        v75(v53 + v54, v40);
      }
    }
  }

  if (*(v47 + v5[15] + 8))
  {
  }

  v55 = v47 + v5[16];
  v56 = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(v56 - 8) + 48))(v55, 1, v56))
  {

    v75(v55 + v38[18], v40);
    v57 = v38[19];
    if (!v70(v55 + v57, 1, v40))
    {
      v75(v55 + v57, v40);
    }

    v58 = v38[21];
    if (!v66(v55 + v58, 1, v69))
    {
      (*(v65 + 8))(v55 + v58, v69);
    }
  }

  v59 = v47 + v5[17];
  v60 = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(v60 - 8) + 48))(v59, 1, v60))
  {

    v75(v59 + v38[18], v40);
    v61 = v38[19];
    if (!v70(v59 + v61, 1, v40))
    {
      v75(v59 + v61, v40);
    }

    v62 = v38[21];
    if (!v66(v59 + v62, 1, v69))
    {
      (*(v65 + 8))(v59 + v62, v69);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24E8417DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AccessPointDataIntent() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Player(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24E6541E4;

  return sub_24E83E86C(a1, v1 + v6, v1 + v9, v10);
}

uint64_t sub_24E841950(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E6541E4;

  return sub_24E83EAC4(a1, v4);
}

uint64_t sub_24E8419F0()
{

  return swift_deallocObject();
}

uint64_t sub_24E841A28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E6541E4;

  return sub_24E83ED90(a1, v4);
}

uint64_t sub_24E841AC8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24E614970;

  return sub_24E83EFD4(a1, v1);
}

uint64_t sub_24E841B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t sub_24E841B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t sub_24E841B8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E841BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v5 = sub_24F920A58();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C048);
  v4[23] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EEB8);
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  v4[27] = v8;
  v9 = *(v8 - 8);
  v4[28] = v9;
  v4[29] = *(v9 + 64);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E841E48, 0, 0);
}

uint64_t sub_24E841E48()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[27];
  v5 = v0[23];
  v6 = v0[15];

  sub_24F920EF8();
  v7 = sub_24F921038();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  (*(v3 + 16))(v1, v2, v4);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  (*(v3 + 32))(v9 + v8, v1, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EEC0);
  sub_24E8436E8(&qword_27F21EEC8);
  sub_24E8436E8(&qword_27F21EED0);
  sub_24F920A28();
  v10 = swift_task_alloc();
  v0[32] = v10;
  *v10 = v0;
  v10[1] = sub_24E842070;
  v11 = v0[24];

  return MEMORY[0x282164EA8](v11);
}

uint64_t sub_24E842070(uint64_t a1)
{
  v3 = *v2;
  v3[33] = a1;
  v3[34] = v1;

  if (v1)
  {
    (*(v3[25] + 8))(v3[26], v3[24]);

    return MEMORY[0x2822009F8](sub_24E842954, 0, 0);
  }

  else
  {
    (*(v3[25] + 8))(v3[26], v3[24]);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
    v5 = swift_task_alloc();
    v3[35] = v5;
    *v5 = v3;
    v5[1] = sub_24E842244;

    return MEMORY[0x28217F228](v3 + 7, v4, v4);
  }
}

uint64_t sub_24E842244()
{
  *(*v1 + 288) = v0;

  if (v0)
  {

    v2 = sub_24E842600;
  }

  else
  {
    v2 = sub_24E842360;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E842360()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920518();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);

  sub_24F920FC8();
  v3 = swift_task_alloc();
  v0[37] = v3;
  *v3 = v0;
  v3[1] = sub_24E842478;
  v4 = v0[33];
  v5 = v0[22];

  return MEMORY[0x282165210](v4, v5, v1, v2);
}

uint64_t sub_24E842478(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v5 = *(*v2 + 168);
  v6 = *(*v2 + 160);
  *(v3 + 304) = a1;
  *(v3 + 312) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {

    v7 = sub_24E842A24;
  }

  else
  {
    v7 = sub_24E8426D0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24E842600()
{
  (*(v0[28] + 8))(v0[31], v0[27]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24E8426D0()
{
  v1 = v0[38];
  result = __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v0[17];
    v20 = (v5 + 32);
    v6 = MEMORY[0x277D84F90];
    v18 = *(v1 + 16);
    v19 = v1;
    while (v4 < *(v1 + 16))
    {
      v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v8 = *(v5 + 72);
      (*(v5 + 16))(v0[19], v0[38] + v7 + v8 * v4, v0[16]);
      if (sub_24F920A48())
      {
        v9 = *v20;
        (*v20)(v0[18], v0[19], v0[16]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24F457F98(0, *(v6 + 16) + 1, 1);
        }

        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_24F457F98(v10 > 1, v11 + 1, 1);
        }

        v12 = v0[18];
        v13 = v0[16];
        *(v6 + 16) = v11 + 1;
        result = v9(v6 + v7 + v11 * v8, v12, v13);
        v3 = v18;
        v1 = v19;
      }

      else
      {
        result = (*(v5 + 8))(v0[19], v0[16]);
      }

      if (v3 == ++v4)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_13:
    v14 = v0[33];
    (*(v0[28] + 8))(v0[31], v0[27]);

    v15 = *(v6 + 16);

    v16 = *(v14 + 16);

    v17 = v0[1];

    return v17(v15, v16);
  }

  return result;
}

uint64_t sub_24E842954()
{
  (*(v0[28] + 8))(v0[31], v0[27]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24E842A24()
{
  (*(v0[28] + 8))(v0[31], v0[27]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_24E842AFC(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v1;
  v3[1] = sub_24E842BBC;

  return MEMORY[0x28217F228](v1 + 16, v2, v2);
}

uint64_t sub_24E842BBC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24E64B378;
  }

  else
  {
    v2 = sub_24E842CD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E842CD0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  v5 = sub_24E6540F4();
  *v3 = v0;
  v3[1] = sub_24E842DA0;
  v6 = v0[8];

  return MEMORY[0x28217F4B0](v0 + 16, v4, v6, &type metadata for FriendRequestsPrivacyToggleDataIntent, v5, v1, v2);
}

uint64_t sub_24E842DA0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24E64B390;
  }

  else
  {
    v2 = sub_24E842EB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E842EB4()
{
  v1 = *(v0 + 128);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE90);
  *v3 = v0;
  v3[1] = sub_24E842FBC;

  return MEMORY[0x2822008A0](v0 + 56, 0, 0, 0xD00000000000001FLL, 0x800000024FA47D20, sub_24E8431B0, v2, v4);
}

uint64_t sub_24E842FBC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24E843144;
  }

  else
  {

    v2 = sub_24E8430D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E8430D8()
{
  v1 = *(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24E843144()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E8431B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE98);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24E843250(unint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE98) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_24E840084(a1, a2, v6, v7);
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E843330(unint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EEA0);

  return sub_24E83F464(a1, a2);
}

uint64_t objectdestroy_38Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

void sub_24E84345C(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EEB0);

  sub_24E83F854(a1, a2);
}

uint64_t sub_24E843518()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24E8435E8(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24E6541E4;

  return sub_24E83FA40(a1, a2, v8, v2 + v7);
}

uint64_t sub_24E8436E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EEC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static OverlayMagicPocketHiddenKey.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  byte_27F21EED8 = a1;
  return result;
}

uint64_t static OverlayMagicPocketHiddenKey.reduce(value:nextValue:)(_BYTE *a1, uint64_t (*a2)(void))
{
  if (*a1)
  {
    result = 1;
  }

  else
  {
    result = a2();
  }

  *a1 = result & 1;
  return result;
}

uint64_t sub_24E843878@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F21EED8;
  return result;
}

char *sub_24E8438C4(char *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result)
  {
    v3 = 1;
  }

  else
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t sub_24E843914@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F21EED8;
  return result;
}

uint64_t sub_24E843960(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27F21EED8 = v1;
  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TwoColumnGroup(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  if (v4 <= 1)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4 ^ 0xFF;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TwoColumnGroup(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = -a2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OneColumnGroup(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OneColumnGroup(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24E843C48(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24E843C5C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_24E843C88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24E843CE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_24E843D68(uint64_t a1, ValueMetadata *a2, uint64_t a3, uint64_t a4)
{
  v4 = 3;
  if (a4 != 4)
  {
    v4 = 1;
  }

  v5 = 2;
  if (a4 != 3)
  {
    v5 = v4;
  }

  if (v5 <= a1)
  {
    return a4;
  }

  if ((a4 - 3) < 2u || a4 != 2 || a2 == &type metadata for OneColumnGroup)
  {
    if (a1 < 2)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return 1;
}

uint64_t sub_24E843DD4()
{
  v1 = *v0;
  v2 = 3;
  if (v1 != 4)
  {
    v2 = 1;
  }

  if (v1 == 3)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24E843DF4()
{
  if (*(v0 + 2) != 1)
  {
    return 1;
  }

  v1 = *v0;
  v2 = HIBYTE(*v0);
  v3 = 3;
  if (v1 == 4)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  if (v1 == 3)
  {
    v4 = 2;
  }

  if (v2 != 4)
  {
    v3 = 1;
  }

  if (v2 == 3)
  {
    v5 = 2;
  }

  else
  {
    v5 = v3;
  }

  return v5 + v4;
}

uint64_t sub_24E843E44(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (!v1)
    {
      return 1;
    }

    v12 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x13);
    if (*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x12))
    {
      v13 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      goto LABEL_29;
    }
  }

  else
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        v2 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v3 = 3;
        if (v2 == 4)
        {
          v4 = 3;
        }

        else
        {
          v4 = 1;
        }

        if (v2 == 3)
        {
          v4 = 2;
        }

        v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x11);
        if (v5 == 4)
        {
          v6 = 3;
        }

        else
        {
          v6 = 1;
        }

        if (v5 == 3)
        {
          v7 = 2;
        }

        else
        {
          v7 = v6;
        }

        v8 = v7 + v4;
        v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x12);
        if (v9 != 4)
        {
          v3 = 1;
        }

        if (v9 == 3)
        {
          v10 = 2;
        }

        else
        {
          v10 = v3;
        }

        return v8 + v10;
      }

      else
      {
        v14 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v15 = sub_24E843E44(*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));
        v16 = sub_24E843E44(v14);
        v17 = __OFADD__(v15, v16);
        result = v15 + v16;
        if (v17)
        {
          __break(1u);
        }
      }

      return result;
    }

    v12 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    if (*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x13))
    {
      v13 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x11);
LABEL_29:
      v18 = v13;
      v19 = v13 >> 8;
      v20 = 3;
      if (v18 == 4)
      {
        v21 = 3;
      }

      else
      {
        v21 = 1;
      }

      if (v18 == 3)
      {
        v21 = 2;
      }

      if (v19 != 4)
      {
        v20 = 1;
      }

      if (v19 == 3)
      {
        v22 = 2;
      }

      else
      {
        v22 = v20;
      }

      v23 = v22 + v21;
      goto LABEL_41;
    }
  }

  v23 = 1;
LABEL_41:
  v24 = 3;
  if (v12 != 4)
  {
    v24 = 1;
  }

  v25 = v12 == 3;
  v26 = 2;
  if (!v25)
  {
    v26 = v24;
  }

  return v23 + v26;
}

unint64_t sub_24E843FB8()
{
  result = qword_27F21EEE0;
  if (!qword_27F21EEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EEE0);
  }

  return result;
}

unint64_t sub_24E844010()
{
  result = qword_27F21EEE8;
  if (!qword_27F21EEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EEE8);
  }

  return result;
}

uint64_t sub_24E844064(uint64_t result, unsigned int a2)
{
  if ((a2 & 0x10000) == 0)
  {
    v2 = 0;
    return a2 | (v2 << 16);
  }

  v3 = 3;
  if (a2 == 4)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  if (a2 == 3)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  if (BYTE1(a2) != 4)
  {
    v3 = 1;
  }

  if (BYTE1(a2) == 3)
  {
    v6 = 2;
  }

  else
  {
    v6 = v3;
  }

  if (v6 + v5 <= result)
  {
LABEL_55:
    v2 = 1;
    return a2 | (v2 << 16);
  }

  v7 = result - v5;
  if (!__OFSUB__(result, v5))
  {
    if (v7 >= v6)
    {
      v8 = a2 >> 8;
      if (BYTE1(a2) != 3)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (BYTE1(a2) == 2)
      {
        if (v5 >= result)
        {
          LOBYTE(v8) = 1;
          v3 = 1;
          v9 = result - 1;
          if (!__OFSUB__(result, 1))
          {
            goto LABEL_25;
          }

          goto LABEL_52;
        }

        goto LABEL_44;
      }

      if (v7 <= 1)
      {
        if (v5 >= result)
        {
          v3 = 1;
          LOBYTE(v8) = 1;
          v9 = result - 1;
          if (!__OFSUB__(result, 1))
          {
            goto LABEL_25;
          }

LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

LABEL_44:
        v14 = 256;
LABEL_54:
        LOWORD(a2) = v14 | a2;
        goto LABEL_55;
      }

      if (v5 + 2 <= result)
      {
LABEL_53:
        v14 = 768;
        goto LABEL_54;
      }

      LOBYTE(v8) = 3;
    }

    v3 = 2;
LABEL_24:
    v9 = result - v3;
    if (!__OFSUB__(result, v3))
    {
LABEL_25:
      if (v9 < 2 || a2 == 2)
      {
        v11 = 1;
      }

      else
      {
        v11 = 3;
      }

      v12 = v5 <= v9;
      if (v5 <= v9)
      {
        v13 = a2;
      }

      else
      {
        v13 = v11;
      }

      if (!v12)
      {
        v4 = 1;
      }

      if (v13 == 3)
      {
        v4 = 2;
      }

      if (v4 + v3 <= result)
      {
        v2 = 1;
        LOWORD(a2) = v13 | (v8 << 8);
      }

      else if ((a2 - 3) >= 2u)
      {
        v2 = 0;
        if (a2 == 1)
        {
          LOWORD(a2) = 1;
        }

        else
        {
          LOWORD(a2) = 2;
        }
      }

      else
      {
        v2 = 0;
        LOWORD(a2) = 1;
      }

      return a2 | (v2 << 16);
    }

    goto LABEL_52;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E8441E0(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  result = sub_24E843E44(a2);
  if (result <= a1)
  {

    return v2;
  }

  v5 = v2 >> 61;
  if ((v2 >> 61) <= 1)
  {
    if (v5)
    {
      v29 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v30 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x12);
      v31 = v29 >> 8;
      if (v30)
      {
        v32 = 3;
        if (*((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == 4)
        {
          v33 = 3;
        }

        else
        {
          v33 = 1;
        }

        v34 = 2;
        if (*((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == 3)
        {
          v33 = 2;
        }

        if (v31 != 4)
        {
          v32 = 1;
        }

        if (v31 != 3)
        {
          v34 = v32;
        }

        v35 = v34 + v33;
      }

      else
      {
        v35 = 1;
      }

      v36 = __OFSUB__(a1, v35);
      v37 = a1 - v35;
      if (!v36)
      {
        v38 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x13);
        if (v38 == 4)
        {
          v39 = 3;
        }

        else
        {
          v39 = 1;
        }

        if (v38 == 3)
        {
          v39 = 2;
        }

        if (v37 < 2)
        {
          v40 = 1;
        }

        else
        {
          v40 = 3;
        }

        if (v38 == 2)
        {
          v40 = 1;
        }

        if (v39 > v37)
        {
          v41 = v40;
        }

        else
        {
          v41 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x13);
        }

        v42 = 3;
        if (*((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == 4)
        {
          v43 = 3;
        }

        else
        {
          v43 = 1;
        }

        if (*((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == 3)
        {
          v43 = 2;
        }

        if (v31 != 4)
        {
          v42 = 1;
        }

        v44 = v31 - 3;
        if (v31 == 3)
        {
          v45 = 2;
        }

        else
        {
          v45 = v42;
        }

        v46 = v45 + v43;
        if (!*((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x12))
        {
          v46 = 1;
        }

        v47 = 3;
        if (v41 != 4)
        {
          v47 = 1;
        }

        if (v41 == 3)
        {
          v48 = 2;
        }

        else
        {
          v48 = v47;
        }

        if (v46 + v48 <= a1)
        {
          v56 = swift_allocObject();
          *(v56 + 16) = v29;
          *(v56 + 18) = v30;
        }

        else
        {
          result = a1 - v48;
          if (__OFSUB__(a1, v48))
          {
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
LABEL_208:
            __break(1u);
            goto LABEL_209;
          }

          v49 = sub_24E844064(result, v29 | (v30 << 16));
          v50 = 1;
          v51 = 3;
          if (v49 == 4)
          {
            v52 = 3;
          }

          else
          {
            v52 = 1;
          }

          v53 = 2;
          if (v49 == 3)
          {
            v52 = 2;
          }

          if (BYTE1(v49) != 4)
          {
            v51 = 1;
          }

          if (BYTE1(v49) != 3)
          {
            v53 = v51;
          }

          v54 = v53 + v52;
          if ((v49 & 0x10000) != 0)
          {
            v50 = v54;
          }

          if (v50 + v48 > a1)
          {
            if (v30)
            {
              if (v29 - 3 >= 2 && v44 >= 2)
              {
                goto LABEL_184;
              }
            }

            else if (v29 == 1)
            {
              goto LABEL_184;
            }

            goto LABEL_196;
          }

          v70 = v49;
          v56 = swift_allocObject();
          *(v56 + 16) = v70;
          *(v56 + 18) = BYTE2(v70) & 1;
        }

        *(v56 + 19) = v41;
        return v56 | 0x2000000000000000;
      }

      goto LABEL_203;
    }

    v18 = *(v2 + 16);
    v2 = swift_allocObject();
    *(v2 + 16) = v18;
    return v2;
  }

  if (v5 == 2)
  {
    v19 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v20 = 3;
    if (v19 != 4)
    {
      v20 = 1;
    }

    if (v19 == 3)
    {
      v21 = 2;
    }

    else
    {
      v21 = v20;
    }

    result = a1 - v21;
    if (__OFSUB__(a1, v21))
    {
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
      goto LABEL_205;
    }

    result = sub_24E844064(result, *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x11) | (*((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x13) << 16));
    v22 = result;
    if ((result & 0x10000) != 0)
    {
      v23 = 3;
      if (result == 4)
      {
        v24 = 3;
      }

      else
      {
        v24 = 1;
      }

      if (result == 3)
      {
        v25 = 2;
      }

      else
      {
        v25 = v24;
      }

      if (BYTE1(result) != 4)
      {
        v23 = 1;
      }

      if (BYTE1(result) == 3)
      {
        v26 = 2;
      }

      else
      {
        v26 = v23;
      }

      if (v25 + v21 + v26 > a1)
      {
        v27 = v26 + v25;
LABEL_115:
        v36 = __OFSUB__(a1, v27);
        v57 = a1 - v27;
        if (v36)
        {
LABEL_205:
          __break(1u);
          goto LABEL_206;
        }

        if (v57 < 2)
        {
          v58 = 1;
        }

        else
        {
          v58 = 3;
        }

        if (v19 == 2)
        {
          v59 = 1;
        }

        else
        {
          v59 = v58;
        }

        if (v21 > v57)
        {
          v60 = v59;
        }

        else
        {
          v60 = v19;
        }

        v61 = 1;
        v62 = 3;
        if (result == 4)
        {
          v63 = 3;
        }

        else
        {
          v63 = 1;
        }

        v64 = 2;
        if (result == 3)
        {
          v63 = 2;
        }

        if (BYTE1(result) != 4)
        {
          v62 = 1;
        }

        if (BYTE1(result) != 3)
        {
          v64 = v62;
        }

        v65 = v64 + v63;
        if ((result & 0x10000) != 0)
        {
          v61 = v65;
        }

        v66 = 3;
        if (v60 != 4)
        {
          v66 = 1;
        }

        if (v60 == 3)
        {
          v66 = 2;
        }

        if (v61 + v66 > a1)
        {
          if ((v19 | 2) == 3)
          {
            goto LABEL_184;
          }

          goto LABEL_196;
        }

        v55 = swift_allocObject();
        *(v55 + 16) = v60;
        goto LABEL_144;
      }
    }

    else if (v21 >= a1)
    {
      v27 = 1;
      goto LABEL_115;
    }

    v55 = swift_allocObject();
    *(v55 + 16) = v19;
LABEL_144:
    *(v55 + 17) = v22;
    *(v55 + 19) = BYTE2(v22) & 1;
    return v55 | 0x4000000000000000;
  }

  if (v5 != 3)
  {
    v2 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    if (sub_24E843E44(v2) < a1)
    {

      v28 = swift_allocObject();
      *(v28 + 16) = 257;
      *(v28 + 18) = 1;
      return v28 | 0x6000000000000000;
    }

    return v2;
  }

  v6 = v2 & 0x1FFFFFFFFFFFFFFFLL;
  v7 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v8 = 3;
  if (v7 != 4)
  {
    v8 = 1;
  }

  v9 = 2;
  if (v7 != 3)
  {
    v9 = v8;
  }

  v10 = a1 - v9;
  if (__OFSUB__(a1, v9))
  {
    goto LABEL_202;
  }

  v11 = *(v6 + 17);
  v12 = 3;
  if (v11 != 4)
  {
    v12 = 1;
  }

  v13 = 2;
  if (v11 != 3)
  {
    v13 = v12;
  }

  v14 = v10 - v13;
  if (__OFSUB__(v10, v13))
  {
    goto LABEL_204;
  }

  v15 = *(v6 + 18);
  v16 = 3;
  if (v15 != 4)
  {
    v16 = 1;
  }

  v17 = 2;
  if (v15 != 3)
  {
    v17 = v16;
  }

  if (v17 <= v14)
  {
    if (v15 == 3)
    {
      goto LABEL_147;
    }
  }

  else
  {
    if ((v15 - 3) < 2u)
    {
      if (v14 < 2)
      {
        v15 = 1;
        v16 = 1;
        goto LABEL_148;
      }

      goto LABEL_147;
    }

    v67 = v15;
    v16 = 1;
    v15 = 1;
    if (v67 != 2 && v14 >= 2)
    {
LABEL_147:
      v15 = 3;
      v16 = 2;
    }
  }

LABEL_148:
  if (v13 + v9 + v16 <= a1)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = v7;
    *(v28 + 17) = v11;
LABEL_189:
    *(v28 + 18) = v15;
    return v28 | 0x6000000000000000;
  }

  v36 = __OFSUB__(v10, v16);
  v68 = v10 - v16;
  if (v36)
  {
    goto LABEL_207;
  }

  if (v13 <= v68)
  {
    v69 = v11;
    if (v11 == 3)
    {
      goto LABEL_163;
    }
  }

  else
  {
    if ((v11 - 3) < 2u)
    {
      if (v68 < 2)
      {
        v69 = 1;
        v12 = 1;
        goto LABEL_164;
      }

      goto LABEL_163;
    }

    v12 = 1;
    v69 = 1;
    if (v11 != 2 && v68 >= 2)
    {
LABEL_163:
      v69 = 3;
      v12 = 2;
    }
  }

LABEL_164:
  if (v16 + v9 + v12 <= a1)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = v7;
LABEL_188:
    *(v28 + 17) = v69;
    goto LABEL_189;
  }

  v71 = a1 - v12;
  if (__OFSUB__(a1, v12))
  {
    goto LABEL_208;
  }

  v36 = __OFSUB__(v71, v16);
  v72 = v71 - v16;
  if (!v36)
  {
    if (v72 < 2 || v7 == 2)
    {
      v74 = 1;
    }

    else
    {
      v74 = 3;
    }

    if (v9 <= v72)
    {
      v75 = v7;
    }

    else
    {
      v75 = v74;
    }

    if (v9 > v72)
    {
      v8 = 1;
    }

    if (v75 == 3)
    {
      v8 = 2;
    }

    if (v12 + v16 + v8 > a1)
    {
      if ((v7 | 2) == 3)
      {
        if (a1 != 2)
        {
          goto LABEL_184;
        }

        v76 = 1;
        goto LABEL_193;
      }

      if (a1 == 2)
      {
        v76 = 0;
LABEL_193:
        if ((v11 | 2) != 3)
        {
          v56 = swift_allocObject();
          if (v76)
          {
            goto LABEL_185;
          }

LABEL_197:
          v77 = 33554434;
          goto LABEL_198;
        }

LABEL_184:
        v56 = swift_allocObject();
LABEL_185:
        v77 = 16777217;
LABEL_198:
        *(v56 + 16) = v77;
        return v56 | 0x2000000000000000;
      }

LABEL_196:
      v56 = swift_allocObject();
      goto LABEL_197;
    }

    v28 = swift_allocObject();
    *(v28 + 16) = v75;
    goto LABEL_188;
  }

LABEL_209:
  __break(1u);
  return result;
}

uint64_t sub_24E844918(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 448))
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

uint64_t sub_24E844960(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 440) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 448) = 1;
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

    *(result + 448) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E844A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EF00) - 8;
  MEMORY[0x28223BE20](v49);
  v50 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v42[-v5];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215110) - 8;
  MEMORY[0x28223BE20](v46);
  v48 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v44 = &v42[-v9];
  v10 = *(a1 + 24);
  v52 = *(a1 + 16);
  v53 = v10;
  sub_24E600AEC();

  v11 = sub_24F925E18();
  v13 = v12;
  v15 = v14;
  v45 = a1;
  v43 = *(a1 + 320);
  v47 = *(a1 + 344);
  v16 = sub_24F925C98();
  v18 = v17;
  v20 = v19;
  sub_24E600B40(v11, v13, v15 & 1);

  LODWORD(v52) = v43;
  v21 = sub_24F925C58();
  v23 = v22;
  LOBYTE(v11) = v24;
  v26 = v25;
  sub_24E600B40(v16, v18, v20 & 1);

  v52 = v21;
  v53 = v23;
  v54 = v11 & 1;
  v55 = v26;
  v27 = v44;
  sub_24F9268B8();
  sub_24E600B40(v21, v23, v11 & 1);

  KeyPath = swift_getKeyPath();
  v29 = &v27[*(v46 + 44)];
  v30 = v27;
  *v29 = KeyPath;
  v29[8] = 0;
  v31 = sub_24F924C98();
  v32 = sub_24F9249A8();
  v33 = swift_allocObject();
  v34 = v45;
  memcpy((v33 + 16), v45, 0x1C0uLL);
  v35 = *(v49 + 60);
  *&v6[v35] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  *v6 = sub_24E845C98;
  *(v6 + 1) = v33;
  v36 = v47;
  v37 = v48;
  *(v6 + 2) = v31;
  *(v6 + 3) = v36;
  v6[32] = 0;
  *(v6 + 5) = v32;
  *(v6 + 6) = 0;
  v6[56] = 1;
  sub_24E845CA8(v30, v37);
  v38 = v50;
  sub_24E60169C(v6, v50, &qword_27F21EF00);
  v39 = v51;
  sub_24E845CA8(v37, v51);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EF08);
  sub_24E60169C(v38, v39 + *(v40 + 48), &qword_27F21EF00);
  sub_24E845D18(v34, &v52);
  sub_24E601704(v6, &qword_27F21EF00);
  sub_24E845D50(v30);
  sub_24E601704(v38, &qword_27F21EF00);
  return sub_24E845D50(v37);
}

uint64_t sub_24E844E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EF10);
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v37[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37[-v7];
  v9 = sub_24F91F008();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v37[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EF18);
  MEMORY[0x28223BE20](v15 - 8);
  v45 = &v37[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v44 = &v37[-v18];
  memcpy(v48, a1, sizeof(v48));
  sub_24E845344(&v49);
  v39 = *(a1 + 160);
  v38 = *(a1 + 264);
  sub_24F927618();
  sub_24F9238C8();
  sub_24E8455D4(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24E601704(v8, &qword_27F215340);
    v19 = v44;
    (*(v42 + 56))(v44, 1, 1, v43);
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    v20 = v40;
    (*(v10 + 16))(v40, v14, v9);
    v21 = v41;
    sub_24F3EEFB4(v20, v41);
    v22 = *(v10 + 8);
    v22(v20, v9);
    v22(v14, v9);
    KeyPath = swift_getKeyPath();
    v24 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EF30) + 36)];
    v25 = v39;
    *v24 = KeyPath;
    v24[1] = v25;
    v26 = v43;
    v19 = v44;
    *&v21[*(v43 + 36)] = v38;
    sub_24E845DC0(v21, v19);
    (*(v42 + 56))(v19, 0, 1, v26);
  }

  v27 = v45;
  sub_24E60169C(v19, v45, &qword_27F21EF18);
  v28 = v54;
  v46[6] = v55;
  v46[7] = v56;
  v29 = v50;
  v30 = v51;
  v46[2] = v51;
  v46[3] = v52;
  v31 = v52;
  v32 = v53;
  v46[4] = v53;
  v46[5] = v54;
  v33 = v49;
  v46[0] = v49;
  v46[1] = v50;
  v34 = v56;
  *(a2 + 96) = v55;
  *(a2 + 112) = v34;
  *(a2 + 32) = v30;
  *(a2 + 48) = v31;
  *(a2 + 64) = v32;
  *(a2 + 80) = v28;
  v47 = v57;
  *(a2 + 128) = v57;
  *a2 = v33;
  *(a2 + 16) = v29;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EF20);
  sub_24E60169C(v27, a2 + *(v35 + 48), &qword_27F21EF18);
  sub_24E60169C(v46, v48, &qword_27F21EF28);
  sub_24E601704(v19, &qword_27F21EF18);
  sub_24E601704(v27, &qword_27F21EF18);
  v48[6] = v55;
  v48[7] = v56;
  *&v48[8] = v57;
  v48[2] = v51;
  v48[3] = v52;
  v48[4] = v53;
  v48[5] = v54;
  v48[0] = v49;
  v48[1] = v50;
  return sub_24E601704(v48, &qword_27F21EF28);
}

void sub_24E845344(uint64_t a1@<X8>)
{
  v3 = *(v1 + 304);
  v4 = *(v1 + 312);
  v6 = *(v1 + 408);
  v5 = *(v1 + 416);
  v7 = *(v1 + 424);
  v8 = *(v1 + 432);
  v9 = *(v1 + 440);
  v10 = [objc_opt_self() whiteColor];
  v11 = qword_27F211820;
  v12 = v10;

  v13 = v7;
  if (v11 != -1)
  {
    swift_once();
  }

  v14 = qword_27F24F280;
  v15 = sub_24F92B098();
  v16 = sub_24F92B098();
  v17 = [v14 pathForResource:v15 ofType:v16];

  v18 = [objc_allocWithZone(AppStoreMicaPlayer) initWithPath:v17 retinaScale:v9];
  if (v18)
  {
    v19 = swift_allocObject();
    *&v29 = v6;
    *(&v29 + 1) = v5;
    *&v30 = v13;
    BYTE8(v30) = v8;
    *&v31 = v9;
    *(&v31 + 1) = v3;
    *&v32 = v4;
    *(&v32 + 1) = v12;
    v33 = v18;
    v34 = 0;
    v35[0] = v6;
    v35[1] = v5;
    v35[2] = v13;
    v36 = v8;
    v37 = v9;
    v38 = v3;
    v39 = v4;
    v40 = v12;
    v41 = v18;
    v42 = 0;
    v43 = 0;
    sub_24E845EE4(&v29, &v44);
    sub_24E845F40(v35);
    v20 = v32;
    *(v19 + 48) = v31;
    *(v19 + 64) = v20;
    *(v19 + 80) = v33;
    *(v19 + 96) = v34;
    v21 = v30;
    *(v19 + 16) = v29;
    *(v19 + 32) = v21;
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v12;
    swift_beginAccess();
    v23 = *(v19 + 88);
    *(v19 + 88) = sub_24E845FD4;
    *(v19 + 96) = v22;

    sub_24E824448(v23);
    v24 = *(v19 + 64);
    v46 = *(v19 + 48);
    v47 = v24;
    v48 = *(v19 + 80);
    v49 = *(v19 + 96);
    v25 = *(v19 + 32);
    v44 = *(v19 + 16);
    v45 = v25;
    sub_24E845EE4(&v44, &v28);

    v26 = v47;
    *(a1 + 32) = v46;
    *(a1 + 48) = v26;
    *(a1 + 64) = v48;
    *(a1 + 80) = v49;
    v27 = v45;
    *a1 = v44;
    *(a1 + 16) = v27;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24E8455D4@<X0>(uint64_t a1@<X8>)
{
  v18[0] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v18 - v2;
  v4 = sub_24F91EE98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91EEA8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F91EEC8();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  (*(v9 + 104))(v11, *MEMORY[0x277CC8BA8], v8, v13);
  v14 = v18[0];
  (*(v5 + 104))(v7, *MEMORY[0x277CC8BA0], v4);

  sub_24F91EEB8();
  v15 = sub_24F91F4A8();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  sub_24E845E30();
  sub_24F91EFE8();
  v16 = sub_24F91F008();
  return (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
}

void sub_24E845A04(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 80);
  v5 = sub_24F92B098();
  v6 = [v4 publishedLayerWithKey:v5 required:1];

  if (v6)
  {
    v7 = v6;
    v8 = [a2 CGColor];
    [v7 setBorderColor_];
  }
}

uint64_t sub_24E845AF0@<X0>(uint64_t a1@<X8>)
{
  memcpy(v15, v1, sizeof(v15));
  *a1 = sub_24F924C98();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EEF0);
  sub_24E844A40(v15, a1 + *(v3 + 44));
  v4 = sub_24F925828();
  sub_24F923318();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EEF8);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_24E845BC8()
{

  return swift_deallocObject();
}

uint64_t sub_24E845CA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E845D50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E845DC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EF10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E845E30()
{
  result = qword_27F21EF38;
  if (!qword_27F21EF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EF38);
  }

  return result;
}

uint64_t sub_24E845E84()
{

  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E845F94()
{

  return swift_deallocObject();
}

unint64_t sub_24E845FE0()
{
  result = qword_27F21EF40;
  if (!qword_27F21EF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EEF8);
    sub_24E84606C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EF40);
  }

  return result;
}

unint64_t sub_24E84606C()
{
  result = qword_27F21EF48;
  if (!qword_27F21EF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EF50);
    sub_24E602068(&qword_27F21EF58, &qword_27F21EF60);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EF48);
  }

  return result;
}

uint64_t sub_24E846150@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (v3 > 4)
  {
    if (*v1 <= 6u)
    {
      if (v3 == 5)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EF88);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_24F93A400;
        v6 = swift_allocObject();
        *(v6 + 16) = 16777217;
        *(v10 + 32) = v6 | 0x2000000000000000;
        result = swift_allocObject();
        *(result + 16) = 1;
        *(result + 17) = 1;
        *(result + 19) = 0;
        *(v10 + 40) = result | 0x4000000000000000;
        v9 = &unk_2861BFA10;
        v11 = &unk_2861BF9E8;
        v12 = &unk_2861BF9C0;
        v13 = &unk_2861BF998;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EF88);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_24F93DE60;
        result = swift_allocObject();
        v13 = 0;
        v11 = 0;
        *(result + 16) = 257;
        *(result + 18) = 1;
        *(v10 + 32) = result | 0x6000000000000000;
        v9 = &unk_2861BFA60;
        v12 = &unk_2861BFA38;
      }
    }

    else if (v3 == 7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EF88);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_24F93A400;
      v7 = swift_allocObject();
      *(v7 + 16) = 514;
      *(v7 + 18) = 2;
      *(v10 + 32) = v7 | 0x6000000000000000;
      result = swift_allocObject();
      v13 = 0;
      v11 = 0;
      *(result + 16) = 514;
      *(result + 18) = 2;
      *(v10 + 40) = result | 0x6000000000000000;
      v9 = &unk_2861BFAB0;
      v12 = &unk_2861BFA88;
    }

    else if (v3 == 8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EF88);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_24F93DE60;
      result = swift_allocObject();
      v13 = 0;
      v11 = 0;
      *(result + 16) = 33554433;
      *(v10 + 32) = result | 0x2000000000000000;
      v9 = &unk_2861BFB08;
      v12 = &unk_2861BFAE0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EF88);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_24F9479A0;
      v14 = swift_allocObject();
      *(v14 + 16) = 514;
      *(v14 + 18) = 2;
      *(v10 + 32) = v14 | 0x6000000000000000;
      v15 = swift_allocObject();
      *(v15 + 16) = 514;
      *(v15 + 18) = 2;
      *(v10 + 40) = v15 | 0x6000000000000000;
      result = swift_allocObject();
      v13 = 0;
      v11 = 0;
      *(result + 16) = 514;
      *(result + 18) = 2;
      *(v10 + 48) = result | 0x6000000000000000;
      v9 = &unk_2861BFB58;
      v12 = &unk_2861BFB30;
    }
  }

  else if (*v1 <= 1u)
  {
    if (*v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EF88);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_24F93DE60;
      result = swift_allocObject();
      v11 = 0;
      *(result + 16) = 771;
      *(result + 18) = 3;
      *(v10 + 32) = result | 0x6000000000000000;
      v9 = &unk_2861BF920;
      v12 = &unk_2861BF8F8;
      v13 = &unk_2861BF8D0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EF88);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_24F9479A0;
      v4 = swift_allocObject();
      *(v4 + 16) = 257;
      *(v4 + 18) = 1;
      *(v10 + 32) = v4 | 0x6000000000000000;
      v5 = swift_allocObject();
      *(v5 + 16) = 16777217;
      *(v10 + 40) = v5 | 0x2000000000000000;
      result = swift_allocObject();
      *(result + 16) = 1;
      *(result + 17) = 1;
      *(result + 19) = 0;
      *(v10 + 48) = result | 0x4000000000000000;
      v9 = &unk_2861BF8A0;
      v11 = &unk_2861BF878;
      v12 = &unk_2861BF850;
      v13 = &unk_2861BF828;
    }
  }

  else if (v3 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EF88);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_24F93DE60;
    result = swift_allocObject();
    v13 = 0;
    v11 = 0;
    *(result + 16) = 257;
    *(result + 18) = 1;
    *(v10 + 32) = result | 0x6000000000000000;
    v9 = &unk_2861BF970;
    v12 = &unk_2861BF948;
  }

  else
  {
    result = sub_24E846674(v3 != 3, v16);
    v9 = v16[3];
    v10 = v16[4];
    v12 = v16[1];
    v11 = v16[2];
    v13 = v16[0];
  }

  *a1 = v13;
  a1[1] = v12;
  a1[2] = v11;
  a1[3] = v9;
  a1[4] = v10;
  return result;
}

uint64_t sub_24E846674@<X0>(char a1@<W0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EF90);
  v4 = swift_allocObject();
  v5 = v4;
  if (a1)
  {
    v6 = &unk_2861BF7B0;
  }

  else
  {
    v6 = &unk_2861BF7D8;
  }

  *(v4 + 16) = xmmword_24F93A400;
  *(v4 + 32) = 1;
  if (a1)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  *(v4 + 33) = v7;
  if (a1)
  {
    v8 = 1025;
  }

  else
  {
    v8 = 769;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EF98);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24F93DE60;
  *(v9 + 32) = v8;
  *(v9 + 34) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EF88);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24F93DE60;
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = 16777217;
  *(v11 + 16) = v12 | 0x2000000000000000;
  result = swift_allocObject();
  *(result + 16) = 1;
  *(result + 17) = 1;
  *(result + 19) = 0;
  *(v11 + 24) = result | 0x4000000000000000;
  *(v10 + 32) = v11 | 0x8000000000000000;
  *a2 = v6;
  a2[1] = v5;
  a2[2] = v9;
  a2[3] = &unk_2861BF800;
  a2[4] = v10;
  return result;
}

GameStoreKit::ComponentGridLayout_optional __swiftcall ComponentGridLayout.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ComponentGridLayout.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x476E6769736564;
    v7 = 0x486E6769736564;
    if (v1 != 8)
    {
      v7 = 0x496E6769736564;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x456E6769736564;
    if (v1 != 5)
    {
      v8 = 0x466E6769736564;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x416E6769736564;
    v3 = 0x436E6769736564;
    v4 = 0x446E6769736564;
    if (v1 != 3)
    {
      v4 = 0x44446E6769736564;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x426E6769736564;
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
}

unint64_t sub_24E8469C0()
{
  result = qword_27F21EF68;
  if (!qword_27F21EF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EF68);
  }

  return result;
}

uint64_t sub_24E846A14()
{
  sub_24F92D068();
  sub_24F203F9C();
  return sub_24F92D0B8();
}

uint64_t sub_24E846A64()
{
  sub_24F92D068();
  sub_24F203F9C();
  return sub_24F92D0B8();
}

uint64_t sub_24E846AB4@<X0>(uint64_t *a1@<X8>)
{
  result = ComponentGridLayout.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_24E846B90()
{
  result = qword_27F21EF70;
  if (!qword_27F21EF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EF78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EF70);
  }

  return result;
}

unint64_t sub_24E846C14()
{
  result = qword_27F21EF80;
  if (!qword_27F21EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EF80);
  }

  return result;
}

uint64_t sub_24E846C88()
{

  return swift_deallocObject();
}

__n128 __swift_memcpy168_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_24E846D0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E846D54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E846DDC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v40 = v1[8];
  v41 = v3;
  v42 = *(v1 + 20);
  v4 = v1[5];
  v36 = v1[4];
  v37 = v4;
  v5 = v1[7];
  v38 = v1[6];
  v39 = v5;
  v6 = v1[1];
  v32 = *v1;
  v33 = v6;
  v7 = v1[3];
  v34 = v1[2];
  v35 = v7;
  v8 = swift_allocObject();
  v9 = v1[9];
  *(v8 + 144) = v1[8];
  *(v8 + 160) = v9;
  *(v8 + 176) = *(v1 + 20);
  v10 = v1[5];
  *(v8 + 80) = v1[4];
  *(v8 + 96) = v10;
  v11 = v1[7];
  *(v8 + 112) = v1[6];
  *(v8 + 128) = v11;
  v12 = v1[1];
  *(v8 + 16) = *v1;
  *(v8 + 32) = v12;
  v13 = v1[3];
  *(v8 + 48) = v1[2];
  *(v8 + 64) = v13;
  v14 = swift_allocObject();
  v15 = v1[9];
  *(v14 + 144) = v1[8];
  *(v14 + 160) = v15;
  *(v14 + 176) = *(v1 + 20);
  v16 = v1[5];
  *(v14 + 80) = v1[4];
  *(v14 + 96) = v16;
  v17 = v1[7];
  *(v14 + 112) = v1[6];
  *(v14 + 128) = v17;
  v18 = v1[1];
  *(v14 + 16) = *v1;
  *(v14 + 32) = v18;
  v19 = v1[3];
  *(v14 + 48) = v1[2];
  *(v14 + 64) = v19;
  sub_24E7B4F28(&v32, v31);
  sub_24E7B4F28(&v32, v31);
  sub_24F921E18();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFA0) + 36)) = 0x8000000000000000;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFA8) + 36)) = 0x3FF199999999999ALL;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFB0) + 36)) = 0x3FF0000000000000;
  v20 = sub_24F926C98();
  v21 = sub_24F925808();
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFB8) + 36);
  *v22 = v20;
  *(v22 + 8) = v21;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFC0) + 36)) = 0;
  v23 = swift_allocObject();
  v24 = v41;
  *(v23 + 144) = v40;
  *(v23 + 160) = v24;
  *(v23 + 176) = v42;
  v25 = v37;
  *(v23 + 80) = v36;
  *(v23 + 96) = v25;
  v26 = v39;
  *(v23 + 112) = v38;
  *(v23 + 128) = v26;
  v27 = v33;
  *(v23 + 16) = v32;
  *(v23 + 32) = v27;
  v28 = v35;
  *(v23 + 48) = v34;
  *(v23 + 64) = v28;
  v29 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFC8) + 36));
  *v29 = sub_24E848BF0;
  v29[1] = v23;
  v29[2] = 0;
  v29[3] = 0;
  return sub_24E7B4F28(&v32, v31);
}

uint64_t sub_24E847064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_24F92B858();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_24F92B7F8();
  sub_24E7B4F28(a1, v15);
  v6 = sub_24F92B7E8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v9 = *(a1 + 144);
  *(v7 + 160) = *(a1 + 128);
  *(v7 + 176) = v9;
  *(v7 + 192) = *(a1 + 160);
  v10 = *(a1 + 80);
  *(v7 + 96) = *(a1 + 64);
  *(v7 + 112) = v10;
  v11 = *(a1 + 112);
  *(v7 + 128) = *(a1 + 96);
  *(v7 + 144) = v11;
  v12 = *(a1 + 16);
  *(v7 + 32) = *a1;
  *(v7 + 48) = v12;
  v13 = *(a1 + 48);
  *(v7 + 64) = *(a1 + 32);
  *(v7 + 80) = v13;
  sub_24EA998B8(0, 0, v4, &unk_24F95EFF0, v7);
}

uint64_t sub_24E8471BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v4[4] = sub_24F92B7F8();
  v4[5] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_24E847258, v6, v5);
}

uint64_t sub_24E847258()
{
  v0[8] = *(v0[3] + 152);
  v0[9] = sub_24F92B7E8();
  v2 = sub_24F92B778();
  v0[10] = v2;
  v0[11] = v1;

  return MEMORY[0x2822009F8](sub_24E8472EC, v2, v1);
}

uint64_t sub_24E8472EC()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
  v4 = sub_24F92B7E8();
  v0[12] = v4;
  v5 = swift_task_alloc();
  v0[13] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239460);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_24E847424;
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x282200600](v0 + 2, v3, v6, v4, v8, &unk_24F95F008, v5, v3);
}

uint64_t sub_24E847424()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_24E847584, v3, v2);
}

uint64_t sub_24E847584()
{

  *(v0 + 120) = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_24E8475F4, 0, 0);
}

uint64_t sub_24E8475F4()
{
  *(v0 + 128) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E847680, v2, v1);
}

uint64_t sub_24E847680()
{
  v1 = v0[15];
  v2 = v0[3];

  sub_24E847794(v2, v1);

  v3 = v0[6];
  v4 = v0[7];

  return MEMORY[0x2822009F8](sub_24E847734, v3, v4);
}

uint64_t sub_24E847734()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E847794(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFD0);
  sub_24F926F48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFD8);
  result = sub_24F926F38();
  if (a2)
  {

    sub_24E7B5088(a2, a2);
  }

  return result;
}

uint64_t sub_24E847858()
{
  v32 = *v0;
  v1 = *(v0 + 12);
  v2 = *(v0 + 13);
  v3 = *(v0 + 15);
  v4 = *(v0 + 34);
  v35 = *(v0 + 14);
  v36 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFE8);
  sub_24F926F38();
  atanf(36.0 / (v4 + v4));
  sub_24F91FBE8();
  v5 = sub_24F91FC08();
  sub_24F91FC48();
  v5(&v35, 0);

  v35 = v1;
  v36 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFF0);
  sub_24F926F38();
  sub_24F91FAC8();
  v6 = sub_24F91FB18();
  *(v7 + 32) = v32;
  v6(&v35, 0);

  v35 = v1;
  v36 = v2;
  sub_24F926F38();
  if (qword_27F20FF90 != -1)
  {
    swift_once();
  }

  v8 = (3.1416 * *&xmmword_27F39B030) / 180.0;
  v9 = vmuls_lane_f32(3.1416, *&xmmword_27F39B030, 1) / 180.0;
  v10 = vmuls_lane_f32(3.1416, xmmword_27F39B030, 2) / 180.0;
  sub_24F0EF924(&unk_2861BFBB8);
  v29 = v11;
  v12 = __sincosf_stret(v8 * 0.5);
  v30 = vmulq_n_f32(v29, v12.__sinval);
  sub_24F0EF924(&unk_2861BFBE8);
  v28 = v13;
  v14 = __sincosf_stret(v9 * 0.5);
  v15 = vmulq_n_f32(v28, v14.__sinval);
  v15.i32[3] = LODWORD(v14.__cosval);
  v16 = vnegq_f32(v15);
  v17 = vtrn2q_s32(v15, vtrn1q_s32(v15, v16));
  v18 = vrev64q_s32(v15);
  v18.i32[0] = v16.i32[1];
  v18.i32[3] = v16.i32[2];
  v33 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v15, v12.__cosval), v18, v30, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v15, v16, 8uLL), *v30.f32, 1), vextq_s8(v17, v17, 8uLL), v30.f32[0]));
  sub_24F0EF924(&unk_2861BFC18);
  v31 = v19;
  v20 = __sincosf_stret(v10 * 0.5);
  v21 = vmulq_n_f32(v31, v20.__sinval);
  v21.i32[3] = LODWORD(v20.__cosval);
  v22 = vnegq_f32(v21);
  v23 = vtrn2q_s32(v21, vtrn1q_s32(v21, v22));
  v24 = vrev64q_s32(v21);
  v24.i32[0] = v22.i32[1];
  v24.i32[3] = v22.i32[2];
  v34 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v21, v22, 8uLL), *v33.f32, 1), vextq_s8(v23, v23, 8uLL), v33.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v21, v33, 3), v24, v33, 2));
  v25 = sub_24F91FB18();
  v26[1] = v34;
  v25(&v35, 0);
}

uint64_t sub_24E847B78(uint64_t a1, uint64_t a2)
{
  v2[41] = a1;
  v2[42] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v2[43] = swift_task_alloc();
  v3 = sub_24F921438();
  v2[44] = v3;
  v2[45] = *(v3 - 8);
  v2[46] = swift_task_alloc();
  sub_24F921DB8();
  v2[47] = swift_task_alloc();
  v2[48] = sub_24F92B7F8();
  v2[49] = sub_24F92B7E8();
  v5 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E847CD4, v5, v4);
}

uint64_t sub_24E847CD4()
{
  v1 = *(v0 + 360);
  v18 = *(v0 + 368);
  v19 = *(v0 + 352);
  v2 = *(v0 + 336);
  v20 = *(v0 + 344);

  *(v0 + 216) = *(v2 + 96);
  *(v0 + 232) = *(v2 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFF0);
  sub_24F926F38();
  *(v0 + 248) = *(v2 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFE8);
  sub_24F926F38();
  sub_24F91FAC8();
  sub_24F91FAD8();

  sub_24F921DA8();
  sub_24F921DD8();
  (*(v1 + 104))(v18, *MEMORY[0x277CDB3B0], v19);
  v3 = sub_24F921DC8();
  sub_24F921E08();
  v3(v0 + 184, 0);
  *(v0 + 264) = *(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFF8);
  sub_24F926F38();
  sub_24F921DE8();
  sub_24E84A9AC(&qword_27F21F000, MEMORY[0x277CE4468]);
  sub_24F921DF8();

  *(v0 + 280) = *(v0 + 216);
  sub_24F926F38();
  sub_24F921DF8();

  v4 = sub_24F92B858();
  (*(*(v4 - 8) + 56))(v20, 1, 1, v4);
  sub_24E7B4F28(v2, v0 + 16);
  v5 = sub_24F92B7E8();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  v9 = *(v2 + 16);
  v8 = *(v2 + 32);
  *(v6 + 32) = *v2;
  *(v6 + 48) = v9;
  *(v6 + 64) = v8;
  v10 = *(v2 + 96);
  v12 = *(v2 + 48);
  v11 = *(v2 + 64);
  *(v6 + 112) = *(v2 + 80);
  *(v6 + 128) = v10;
  *(v6 + 80) = v12;
  *(v6 + 96) = v11;
  v14 = *(v2 + 128);
  v13 = *(v2 + 144);
  v15 = *(v2 + 112);
  *(v6 + 192) = *(v2 + 160);
  *(v6 + 160) = v14;
  *(v6 + 176) = v13;
  *(v6 + 144) = v15;
  sub_24EA998B8(0, 0, v20, &unk_24F95F080, v6);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24E848030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  v4[27] = sub_24F92B7F8();
  v4[28] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v4[29] = v6;
  v4[30] = v5;

  return MEMORY[0x2822009F8](sub_24E8480CC, v6, v5);
}

uint64_t sub_24E8480CC()
{
  v1 = *(v0 + 208);
  *(v0 + 248) = sub_24F91FD28();
  v2 = *(v1 + 128);
  *(v0 + 289) = v2;
  *(v0 + 288) = v2;
  v3 = sub_24EE783E0();
  v5 = v4;
  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_27F22B5B8;
  v7 = qword_27F22B5B8;
  v8 = swift_task_alloc();
  *(v0 + 256) = v8;
  *v8 = v0;
  v8[1] = sub_24E848204;

  return MEMORY[0x282129BD0](v3, v5, v6);
}

uint64_t sub_24E848204(uint64_t a1)
{
  v3 = *v2;
  v3[33] = a1;
  v3[34] = v1;

  v4 = v3[29];
  v5 = v3[30];
  if (v1)
  {
    v6 = sub_24E848550;
  }

  else
  {
    v6 = sub_24E848318;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_24E848318()
{
  if ((*(*(v0 + 208) + 28) & 1) == 0)
  {
    sub_24F91FB08();
  }

  return MEMORY[0x2822009F8](sub_24E8483AC, 0, 0);
}

uint64_t sub_24E8483AC()
{
  *(v0 + 280) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E848438, v2, v1);
}

void sub_24E848438()
{
  v1 = v0[34];
  v2 = v0[33];
  v3 = v0[26];

  sub_24E848784(v3, v2);
  if (v1)
  {
  }

  else
  {
    v4 = v0[29];
    v5 = v0[30];

    MEMORY[0x2822009F8](sub_24E8484E4, v4, v5);
  }
}

uint64_t sub_24E8484E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E848550()
{
  v22 = v0;

  if (qword_27F211460 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 208);
  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E970);
  sub_24E7B4F28(v2, v0 + 16);
  v4 = v1;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();
  sub_24E84AB58(v2);

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 272);
  if (v7)
  {
    v9 = *(v0 + 289);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136315394;
    v21 = v9;
    v13 = sub_24EE783E0();
    v15 = sub_24E7620D4(v13, v14, &v20);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_24E5DD000, v5, v6, "GamesThreeDimensionalMediaArtworkContentView: Error loading USDZ named %s: %@", v10, 0x16u);
    sub_24E601704(v11, &qword_27F227B20);
    MEMORY[0x2530542D0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2530542D0](v12, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_24E848784(_OWORD *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v16 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFF8);
  sub_24F926F38();
  sub_24F91FD28();
  sub_24F91FAD8();

  v16 = a1[2];
  v17 = a2;
  v15 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFD8);
  sub_24F926F48();
  v14 = a1;
  v16 = a1[4];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFD0);
  result = sub_24F926F38();
  v9 = v17;
  v10 = *(v17 + 16);
  if (v10)
  {
    v11 = 0;
    while (v11 < *(v9 + 16))
    {
      sub_24E60169C(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, &qword_27F213800);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
      if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
      {
        sub_24E601704(v7, &qword_27F213800);
      }

      ++v11;
      result = sub_24E601704(v7, &qword_27F213800);
      if (v10 == v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v16 = v14[4];
    sub_24F926F38();
    sub_24E7B5088(v17, v15);
  }

  return result;
}

uint64_t sub_24E848A54(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24E6541E4;

  return sub_24E847B78(a1, v1 + 16);
}

uint64_t objectdestroyTm_14()
{

  return swift_deallocObject();
}

uint64_t sub_24E848BF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24E8471BC(a1, v4, v5, v1 + 32);
}

uint64_t sub_24E848CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[53] = a3;
  v4[54] = a4;
  v4[51] = a1;
  v4[52] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
  v4[55] = v5;
  v4[56] = *(v5 - 8);
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE28);
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239470);
  v4[65] = v6;
  v4[66] = *(v6 - 8);
  v4[67] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFE0);
  v4[68] = v7;
  v8 = *(v7 - 8);
  v4[69] = v8;
  v4[70] = *(v8 + 64);
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = sub_24F92B7F8();
  v4[77] = sub_24F92B7E8();
  v10 = sub_24F92B778();
  v4[78] = v10;
  v4[79] = v9;

  return MEMORY[0x2822009F8](sub_24E848F68, v10, v9);
}

uint64_t sub_24E848F68()
{
  v1 = *(v0 + 424);
  v2 = *(v1 + 16);
  *(v0 + 640) = v2;
  if (v2)
  {
    v48 = *(v0 + 600);
    v3 = *(v0 + 552);
    v4 = *(v3 + 80);
    v47 = *(v0 + 544);
    v45 = **(v0 + 416);
    v46 = *(v47 + 48);
    v5 = v1 + ((v4 + 32) & ~v4);
    v44 = (v4 + 200) & ~v4;
    v6 = &unk_24F9FADC0;
    v43 = *(v3 + 72);
    do
    {
      v51 = v2;
      v10 = *(v0 + 600);
      v11 = *(v0 + 592);
      v12 = *(v0 + 584);
      v13 = *(v0 + 496);
      v49 = *(v0 + 488);
      v14 = *(v0 + 432);
      v50 = v5;
      sub_24E60169C(v5, v10, &qword_27F21EFE0);
      v15 = *(v47 + 48);
      sub_24E612C80(v10, v11);
      v16 = sub_24F91F6B8();
      (*(*(v16 - 8) + 32))(v11 + v15, v48 + v46, v16);
      v17 = sub_24F92B858();
      v18 = *(v17 - 8);
      (*(v18 + 56))(v13, 1, 1, v17);
      sub_24E60169C(v11, v12, &qword_27F21EFE0);
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      v20 = (v19 + 16);
      *(v19 + 24) = 0;
      v21 = *(v14 + 20);
      v22 = v14[7];
      v23 = v14[9];
      *(v19 + 160) = v14[8];
      *(v19 + 176) = v23;
      *(v19 + 144) = v22;
      *(v19 + 192) = v21;
      v24 = v14[3];
      v25 = v14[4];
      v26 = v14[6];
      *(v19 + 112) = v14[5];
      *(v19 + 128) = v26;
      *(v19 + 80) = v24;
      *(v19 + 96) = v25;
      v27 = *v14;
      v28 = v14[2];
      *(v19 + 48) = v14[1];
      *(v19 + 64) = v28;
      *(v19 + 32) = v27;
      v29 = v6;
      sub_24E6009C8(v12, v19 + v44, &qword_27F21EFE0);
      sub_24E60169C(v13, v49, &unk_27F21B570);
      v30 = (*(v18 + 48))(v49, 1, v17);
      v31 = *(v0 + 488);
      v32 = *(v0 + 432);
      if (v30 == 1)
      {
        sub_24E7B4F28(v32, v0 + 16);
        sub_24E601704(v31, &unk_27F21B570);
        if (*v20)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_24E7B4F28(v32, v0 + 240);
        sub_24F92B848();
        (*(v18 + 8))(v31, v17);
        if (*v20)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v33 = sub_24F92B778();
          v34 = v35;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v33 = 0;
      v34 = 0;
LABEL_10:
      v36 = swift_allocObject();
      *(v36 + 16) = &unk_24F95F038;
      *(v36 + 24) = v19;

      if (v34 | v33)
      {
        v7 = v0 + 184;
        *(v0 + 184) = 0;
        *(v0 + 192) = 0;
        *(v0 + 200) = v33;
        *(v0 + 208) = v34;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 592);
      v9 = *(v0 + 496);
      *(v0 + 216) = 1;
      *(v0 + 224) = v7;
      *(v0 + 232) = v45;
      swift_task_create();

      sub_24E601704(v9, &unk_27F21B570);
      v6 = v29;
      sub_24E601704(v8, &qword_27F21EFE0);
      v5 = v50 + v43;
      v2 = v51 - 1;
    }

    while (v51 != 1);
  }

  sub_24F92B7A8();
  *(v0 + 648) = MEMORY[0x277D84F90];
  v37 = sub_24F92B7E8();
  *(v0 + 656) = v37;
  v38 = swift_task_alloc();
  *(v0 + 664) = v38;
  *v38 = v0;
  v38[1] = sub_24E849430;
  v39 = *(v0 + 520);
  v40 = *(v0 + 512);
  v41 = MEMORY[0x277D85700];

  return MEMORY[0x2822002E8](v40, v37, v41, v39);
}

uint64_t sub_24E849430()
{
  v1 = *v0;

  v2 = *(v1 + 632);
  v3 = *(v1 + 624);

  return MEMORY[0x2822009F8](sub_24E849574, v3, v2);
}

uint64_t sub_24E849574()
{
  v1 = v0[64];
  v47 = *(v0[56] + 48);
  if (v47(v1, 1, v0[55]) == 1)
  {
    v2 = v0[80];
    (*(v0[66] + 8))(v0[67], v0[65]);

    if (v2)
    {
      v3 = 0;
      v46 = v0[72];
      v4 = v0[69];
      v5 = v0[53] + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v48 = MEMORY[0x277D84F90];
      v45 = v0[68];
      v44 = *(v45 + 48);
      v43 = *(v4 + 72);
      do
      {
        v11 = v0[81];
        v12 = v0[72];
        v13 = v0[71];
        v14 = v0[63];
        v15 = v0[55];
        sub_24E60169C(v5, v12, &qword_27F21EFE0);
        v16 = *(v45 + 48);
        sub_24E612C80(v12, v13);
        v17 = sub_24F91F6B8();
        (*(*(v17 - 8) + 32))(v13 + v16, v46 + v44, v17);
        *(swift_task_alloc() + 16) = v13;
        sub_24E7AAD1C(sub_24E84A98C, v11, v14);

        v18 = v47(v14, 1, v15);
        v19 = v0[63];
        if (v18 == 1)
        {
          v20 = v0[58];
          sub_24E601704(v19, &qword_27F21CE28);
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
          (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
          v22 = v48;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_24E61798C(0, v48[2] + 1, 1, v48);
          }

          v24 = v22[2];
          v23 = v22[3];
          v25 = v24 + 1;
          if (v24 >= v23 >> 1)
          {
            v22 = sub_24E61798C(v23 > 1, v24 + 1, 1, v22);
          }

          v6 = v0 + 58;
        }

        else
        {
          v26 = v0[59];
          v27 = v0[57];
          sub_24E6009C8(v19, v26, &qword_27F213800);
          sub_24E60169C(v26, v27, &qword_27F213800);
          v22 = v48;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_24E61798C(0, v48[2] + 1, 1, v48);
          }

          v24 = v22[2];
          v28 = v22[3];
          v25 = v24 + 1;
          if (v24 >= v28 >> 1)
          {
            v22 = sub_24E61798C(v28 > 1, v24 + 1, 1, v22);
          }

          sub_24E601704(v0[59], &qword_27F213800);
          v6 = v0 + 57;
        }

        ++v3;
        v7 = *v6;
        v8 = v0[80];
        v9 = v0[71];
        v10 = v0[56];
        v22[2] = v25;
        v48 = v22;
        sub_24E6009C8(v7, v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v24, &qword_27F213800);
        sub_24E601704(v9, &qword_27F21EFE0);
        v5 += v43;
      }

      while (v3 != v8);
    }

    else
    {
      v48 = MEMORY[0x277D84F90];
    }

    v40 = v0[51];

    *v40 = v48;

    v41 = v0[1];

    return v41();
  }

  else
  {
    sub_24E6009C8(v1, v0[60], &qword_27F213800);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v0[81];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = sub_24E61798C(0, v30[2] + 1, 1, v0[81]);
    }

    v32 = v30[2];
    v31 = v30[3];
    if (v32 >= v31 >> 1)
    {
      v30 = sub_24E61798C(v31 > 1, v32 + 1, 1, v30);
    }

    v33 = v0[60];
    v34 = v0[56];
    v30[2] = v32 + 1;
    sub_24E6009C8(v33, v30 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v32, &qword_27F213800);
    v0[81] = v30;
    v35 = sub_24F92B7E8();
    v0[82] = v35;
    v36 = swift_task_alloc();
    v0[83] = v36;
    *v36 = v0;
    v36[1] = sub_24E849430;
    v37 = v0[65];
    v38 = v0[64];
    v39 = MEMORY[0x277D85700];

    return MEMORY[0x2822002E8](v38, v35, v39, v37);
  }
}

uint64_t sub_24E849BC0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24E6541E4;

  return sub_24E848CA8(a1, a2, v7, v6);
}

uint64_t sub_24E849C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24E849C98, 0, 0);
}

uint64_t sub_24E849C98()
{
  v1 = *(v0 + 24);
  *(v0 + 112) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFE0) + 48);
  *(v0 + 40) = *(v1 + 144);
  *(v0 + 48) = *(v1 + 160);
  sub_24F92B7F8();
  *(v0 + 56) = sub_24F92B7E8();
  v3 = sub_24F92B778();
  *(v0 + 64) = v3;
  *(v0 + 72) = v2;

  return MEMORY[0x2822009F8](sub_24E849D5C, v3, v2);
}

uint64_t sub_24E849D5C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v2 + 3);
  v5 = *(v2 + 4);
  __swift_project_boxed_opaque_existential_1(v2, v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
  *(v0 + 80) = v6;
  v7 = *(v6 + 64);
  v12 = (*(v5 + 8) + **(v5 + 8));
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_24E849ECC;
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);

  return v12(v3 + v7, v9, &v2[v1], v10, v4, v5);
}

uint64_t sub_24E849ECC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = a2;

  v5 = *(v3 + 72);
  v6 = *(v3 + 64);

  return MEMORY[0x2822009F8](sub_24E849FF4, v6, v5);
}

uint64_t sub_24E849FF4()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[2];

  *v4 = v2;
  v4[1] = v1;
  (*(*(v3 - 8) + 56))(v4, 0, 1, v3);
  v5 = v0[1];

  return v5();
}

uint64_t sub_24E84A0A4(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v44 = a1;
  v2 = sub_24F91F6B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239480);
  MEMORY[0x28223BE20](v46);
  v48 = &v41 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFE0);
  MEMORY[0x28223BE20](v45);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v41 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  sub_24E60169C(v44, v10, &qword_27F213800);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0);
  v21 = (*(*(v20 - 8) + 48))(v10, 1, v20);
  v43 = v13;
  if (v21 == 1)
  {
    sub_24E601704(v10, &qword_27F213800);
    v22 = 1;
  }

  else
  {

    (*(v3 + 32))(v19, v10 + *(v20 + 64), v2);
    v22 = 0;
  }

  v23 = v19;
  v24 = *(v3 + 56);
  v24(v19, v22, 1, v2);
  sub_24E60169C(v47, v7, &qword_27F21EFE0);
  v25 = *(v45 + 48);
  v26 = *(v3 + 32);
  v47 = v7;
  v45 = v26;
  v26(v16, &v7[v25], v2);
  v24(v16, 0, 1, v2);
  v27 = v3;
  v28 = *(v46 + 12);
  v29 = v48;
  sub_24E60169C(v19, v48, &qword_27F21CE20);
  sub_24E60169C(v16, v29 + v28, &qword_27F21CE20);
  v30 = v27;
  v31 = *(v27 + 48);
  if (v31(v29, 1, v2) != 1)
  {
    v46 = v19;
    v36 = v43;
    sub_24E60169C(v29, v43, &qword_27F21CE20);
    if (v31(v29 + v28, 1, v2) != 1)
    {
      v37 = v29 + v28;
      v38 = v42;
      (v45)(v42, v37, v2);
      sub_24E84A9AC(&unk_27F239490, MEMORY[0x277CC95F0]);
      v35 = sub_24F92AFF8();
      v39 = *(v30 + 8);
      v39(v38, v2);
      sub_24E601704(v16, &qword_27F21CE20);
      sub_24E601704(v46, &qword_27F21CE20);
      v39(v36, v2);
      sub_24E601704(v48, &qword_27F21CE20);
      v34 = v47;
      goto LABEL_11;
    }

    sub_24E601704(v16, &qword_27F21CE20);
    v32 = v48;
    sub_24E601704(v46, &qword_27F21CE20);
    (*(v30 + 8))(v36, v2);
    v34 = v47;
    goto LABEL_9;
  }

  sub_24E601704(v16, &qword_27F21CE20);
  v32 = v48;
  sub_24E601704(v23, &qword_27F21CE20);
  v33 = v31(v32 + v28, 1, v2);
  v34 = v47;
  if (v33 != 1)
  {
LABEL_9:
    sub_24E601704(v32, &unk_27F239480);
    v35 = 0;
    goto LABEL_11;
  }

  sub_24E601704(v32, &qword_27F21CE20);
  v35 = 1;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v35 & 1;
}

uint64_t sub_24E84A6E0()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFE0) - 8);
  v2 = (*(*v1 + 80) + 200) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + v2);
  v3 = v1[14];
  v4 = sub_24F91F6B8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24E84A854(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EFE0) - 8);
  v5 = (*(v4 + 80) + 200) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24E849C74(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_24E84A954()
{

  return swift_deallocObject();
}

uint64_t sub_24E84A9AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E84AAA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24E848030(a1, v4, v5, v1 + 32);
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for GamesThreeDimensionalMediaArtworkContentView.ModelPositionMetrics(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GamesThreeDimensionalMediaArtworkContentView.ModelPositionMetrics(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

unint64_t sub_24E84ABFC()
{
  result = qword_27F21F008;
  if (!qword_27F21F008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EFC8);
    sub_24E84AC88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F008);
  }

  return result;
}

unint64_t sub_24E84AC88()
{
  result = qword_27F21F010;
  if (!qword_27F21F010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EFC0);
    sub_24E84AD14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F010);
  }

  return result;
}

unint64_t sub_24E84AD14()
{
  result = qword_27F21F018;
  if (!qword_27F21F018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EFB8);
    sub_24E84ADCC();
    sub_24E602068(&qword_27F216518, &qword_27F216520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F018);
  }

  return result;
}

unint64_t sub_24E84ADCC()
{
  result = qword_27F21F020;
  if (!qword_27F21F020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EFB0);
    sub_24E84AE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F020);
  }

  return result;
}

unint64_t sub_24E84AE58()
{
  result = qword_27F21F028;
  if (!qword_27F21F028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EFA8);
    sub_24E84AEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F028);
  }

  return result;
}

unint64_t sub_24E84AEE4()
{
  result = qword_27F21F030;
  if (!qword_27F21F030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EFA0);
    sub_24E602068(&qword_27F21F038, &qword_27F21F040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F030);
  }

  return result;
}

uint64_t sub_24E84AFA8()
{
  v1 = v0;
  v2 = sub_24F926E68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = sub_24E609AB0(MEMORY[0x277D84F90]);
  (*(v3 + 104))(v5, *MEMORY[0x277CE1020], v2);
  sub_24E84B158();
  v6 = sub_24F92AFF8();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    v7 = *(v1 + 48);
    if (v7)
    {
      v8 = *MEMORY[0x277CEE210];
      v9 = v7;
      sub_24E988884([v9 CGColor], v8);
    }
  }

  return sub_24F928948();
}

unint64_t sub_24E84B158()
{
  result = qword_27F21F048;
  if (!qword_27F21F048)
  {
    sub_24F926E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F048);
  }

  return result;
}

uint64_t sub_24E84B1C4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v13 = sub_24F91F648();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[12];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[13];
    goto LABEL_13;
  }

  v16 = type metadata accessor for GameLockup(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[19];

  return v17(v18, a2, v16);
}

uint64_t sub_24E84B3F8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v13 = sub_24F91F648();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[12];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[13];
    goto LABEL_11;
  }

  v16 = type metadata accessor for GameLockup(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[19];

  return v17(v18, a2, a2, v16);
}

void sub_24E84B638()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E84BB60(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21D28]);
    if (v1 <= 0x3F)
    {
      sub_24E8537F8(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24E8537F8(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24E6BCB04();
          if (v4 <= 0x3F)
          {
            sub_24F91F648();
            if (v5 <= 0x3F)
            {
              sub_24E8537F8(319, &qword_27F21A4A0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_24E8537F8(319, &qword_27F21F060, type metadata accessor for GSKAppEventFormattedDate, MEMORY[0x277D83940]);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for GameLockup(319);
                  if (v8 <= 0x3F)
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
  }
}

uint64_t sub_24E84B894(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E84B8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
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

    return (v10 + 1);
  }
}

uint64_t sub_24E84B9CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_24E84BAB0()
{
  sub_24E84BB60(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24F928FD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E84BB60(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_24E84BC44(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6575676573;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x746E657645707061;
      break;
    case 4:
      result = 0x7472416567646162;
      break;
    case 5:
      result = 0x656C746974;
      break;
    case 6:
      result = 0x656C746974627573;
      break;
    case 7:
      result = 0x6C6961746564;
      break;
    case 8:
      result = 0x7461447472617473;
      break;
    case 9:
      result = 0x65746144646E65;
      break;
    case 10:
      result = 0x6D65726975716572;
      break;
    case 11:
      result = 0x6E694B6567646162;
      break;
    case 12:
      result = 0x657474616D726F66;
      break;
    case 13:
      result = 0x4C5255746E657665;
      break;
    case 14:
      result = 0x4379616C70736964;
      break;
    case 15:
      result = 0x6B636F4C656D6167;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E84BE90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v81 = type metadata accessor for GameLockup(0);
  MEMORY[0x28223BE20](v81);
  v82 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v4 - 8);
  v83 = &v80 - v5;
  v6 = sub_24F91F648();
  v86 = *(v6 - 8);
  v87 = v6;
  MEMORY[0x28223BE20](v6);
  v84 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v8 - 8);
  v88 = &v80 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v10 - 8);
  v85 = &v80 - v11;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F0C0);
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v13 = &v80 - v12;
  v14 = type metadata accessor for AppEventDetail(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + 40) = 0u;
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 9) = 0;
  v99 = v16 + 40;
  sub_24E61DA68(&v100, (v16 + 40), qword_27F21B590);
  v17 = v14[6];
  v18 = sub_24F929608();
  v19 = *(*(v18 - 8) + 56);
  v98 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = v14[8];
  v21 = sub_24F9289E8();
  v22 = *(*(v21 - 8) + 56);
  v97 = v20;
  v22(&v16[v20], 1, 1, v21);
  v94 = v16;
  v95 = v14;
  v23 = &v16[v14[20]];
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  v92 = v23;
  sub_24E61DA68(&v100, v23, qword_27F21B590);
  v24 = a1[3];
  v93 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24E8529FC();
  v90 = v13;
  v25 = v96;
  sub_24F92D108();
  if (v25)
  {
    v96 = v25;
    v28 = v94;
    v29 = v95;
    __swift_destroy_boxed_opaque_existential_1(v93);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    LODWORD(v88) = 0;
    LODWORD(v89) = 0;
    LODWORD(v90) = 0;
    LODWORD(v91) = 0;
    goto LABEL_4;
  }

  v96 = v21;
  v26 = v85;
  v27 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  v103 = 0;
  sub_24E602068(&qword_27F213F30, &qword_27F213F18);
  sub_24F92CC68();
  v38 = v101;
  v39 = v94;
  *v94 = v100;
  v39[1] = v38;
  *(v39 + 4) = v102;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
  v103 = 1;
  v41 = sub_24E61D970();
  sub_24F92CC68();
  v42 = v95;
  sub_24E61DA68(&v100, v99, qword_27F24EC90);
  LOBYTE(v100) = 2;
  sub_24E84B894(&qword_27F213F48, MEMORY[0x277D21F70]);
  sub_24F92CC18();
  sub_24E61DA68(v26, v39 + v98, &qword_27F213E68);
  LOBYTE(v100) = 3;
  v43 = sub_24F92CC28();
  v85 = v40;
  v44 = (v39 + v42[7]);
  *v44 = v43;
  v44[1] = v45;
  LOBYTE(v100) = 4;
  sub_24E84B894(&qword_27F214018, MEMORY[0x277D21C48]);
  sub_24F92CC18();
  sub_24E61DA68(v27, v39 + v97, &qword_27F213FB0);
  LOBYTE(v100) = 5;
  v46 = sub_24F92CC28();
  v47 = (v39 + v42[9]);
  *v47 = v46;
  v47[1] = v48;
  LOBYTE(v100) = 6;
  v49 = sub_24F92CBC8();
  v50 = (v39 + v42[10]);
  *v50 = v49;
  v50[1] = v51;
  LOBYTE(v100) = 7;
  v52 = sub_24F92CC28();
  v88 = v41;
  v53 = (v39 + v42[11]);
  *v53 = v52;
  v53[1] = v54;
  LOBYTE(v100) = 8;
  sub_24E84B894(&qword_27F21B778, MEMORY[0x277CC9578]);
  v55 = v84;
  sub_24F92CC68();
  v96 = 0;
  (*(v86 + 32))(v39 + v42[12], v55, v87);
  LOBYTE(v100) = 9;
  v56 = v96;
  sub_24F92CC18();
  v96 = v56;
  if (v56)
  {
    (*(v89 + 8))(v90, v91);
    v35 = 0;
    v36 = 0;
    LODWORD(v88) = 0;
    LODWORD(v89) = 0;
    LODWORD(v90) = 0;
    LODWORD(v91) = 0;
    v30 = 1;
    v31 = 1;
    v32 = 1;
    v33 = 1;
    v34 = 1;
LABEL_42:
    v28 = v94;
    v29 = v95;
    __swift_destroy_boxed_opaque_existential_1(v93);
    sub_24E601704(v28, &qword_27F213F18);
LABEL_4:
    sub_24E601704(v99, qword_27F24EC90);
    sub_24E601704(v28 + v98, &qword_27F213E68);
    if (v30)
    {
    }

    sub_24E601704(v28 + v97, &qword_27F213FB0);
    if (v31)
    {

      if (!v32)
      {
LABEL_8:
        if (!v33)
        {
          goto LABEL_9;
        }

        goto LABEL_21;
      }
    }

    else if (!v32)
    {
      goto LABEL_8;
    }

    if (!v33)
    {
LABEL_9:
      if (!v34)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }

LABEL_21:

    if (!v34)
    {
LABEL_10:
      if (!v35)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }

LABEL_22:
    (*(v86 + 8))(v28 + v29[12], v87);
    if (!v35)
    {
LABEL_11:
      if (!v36)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }

LABEL_23:
    sub_24E601704(v28 + v29[13], &unk_27F22EC30);
    if (!v36)
    {
LABEL_12:
      if (!v88)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

LABEL_24:

    if (!v88)
    {
LABEL_14:
      if (v89)
      {

        if (!v90)
        {
LABEL_16:
          if (!v91)
          {
            return sub_24E601704(v92, qword_27F24EC90);
          }

LABEL_17:
          sub_24E85299C(v28 + v29[19], type metadata accessor for GameLockup);
          return sub_24E601704(v92, qword_27F24EC90);
        }
      }

      else if (!v90)
      {
        goto LABEL_16;
      }

      if (!v91)
      {
        return sub_24E601704(v92, qword_27F24EC90);
      }

      goto LABEL_17;
    }

LABEL_13:

    goto LABEL_14;
  }

  sub_24E6009C8(v83, v94 + v95[13], &unk_27F22EC30);
  LOBYTE(v100) = 10;
  v57 = v96;
  v58 = sub_24F92CC28();
  v96 = v57;
  if (v57)
  {
    (*(v89 + 8))(v90, v91);
    v36 = 0;
    LODWORD(v88) = 0;
    LODWORD(v89) = 0;
    LODWORD(v90) = 0;
    LODWORD(v91) = 0;
    v30 = 1;
    v31 = 1;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    goto LABEL_42;
  }

  v60 = (v94 + v95[14]);
  *v60 = v58;
  v60[1] = v59;
  LOBYTE(v100) = 11;
  v61 = v96;
  v62 = sub_24F92CC28();
  v96 = v61;
  if (v61)
  {
    (*(v89 + 8))(v90, v91);
    LODWORD(v88) = 0;
    LODWORD(v89) = 0;
    LODWORD(v90) = 0;
    LODWORD(v91) = 0;
    v30 = 1;
    v31 = 1;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    goto LABEL_42;
  }

  v64 = (v94 + v95[15]);
  *v64 = v62;
  v64[1] = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F0D0);
  v103 = 12;
  sub_24E852A50();
  v65 = v96;
  sub_24F92CC68();
  v96 = v65;
  if (v65)
  {
    (*(v89 + 8))(v90, v91);
    LODWORD(v89) = 0;
    LODWORD(v90) = 0;
    LODWORD(v91) = 0;
    v30 = 1;
    v31 = 1;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    LODWORD(v88) = 1;
    goto LABEL_42;
  }

  *(v94 + v95[16]) = v100;
  LOBYTE(v100) = 13;
  v66 = v96;
  v67 = sub_24F92CC28();
  v96 = v66;
  if (v66)
  {
    (*(v89 + 8))(v90, v91);
    LODWORD(v90) = 0;
    LODWORD(v91) = 0;
    v30 = 1;
    v31 = 1;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    LODWORD(v88) = 1;
    LODWORD(v89) = 1;
    goto LABEL_42;
  }

  v69 = (v94 + v95[17]);
  *v69 = v67;
  v69[1] = v68;
  v103 = 14;
  sub_24E852B04();
  v70 = v96;
  sub_24F92CC68();
  v96 = v70;
  if (v70 || (*(v94 + v95[18]) = v100, LOBYTE(v100) = 15, sub_24E84B894(&qword_27F21CB68, type metadata accessor for GameLockup), v71 = v96, sub_24F92CC68(), (v96 = v71) != 0))
  {
    (*(v89 + 8))(v90, v91);
    LODWORD(v91) = 0;
    v30 = 1;
    v31 = 1;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    LODWORD(v88) = 1;
    LODWORD(v89) = 1;
    LODWORD(v90) = 1;
    goto LABEL_42;
  }

  sub_24E8540CC(v82, v94 + v95[19], type metadata accessor for GameLockup);
  v103 = 16;
  v72 = v96;
  sub_24F92CC68();
  v96 = v72;
  if (v72 || (sub_24E61DA68(&v100, v92, qword_27F24EC90), LOBYTE(v100) = 17, v73 = v96, v74 = sub_24F92CBC8(), (v96 = v73) != 0))
  {
    (*(v89 + 8))(v90, v91);
    v30 = 1;
    v31 = 1;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    LODWORD(v88) = 1;
    LODWORD(v89) = 1;
    LODWORD(v90) = 1;
    LODWORD(v91) = 1;
    goto LABEL_42;
  }

  v76 = v74;
  v77 = v75;
  v78 = v94;
  v79 = (v94 + v95[21]);
  (*(v89 + 8))(v90, v91);
  *v79 = v76;
  v79[1] = v77;
  sub_24E85292C(v78, v80, type metadata accessor for AppEventDetail);
  __swift_destroy_boxed_opaque_existential_1(v93);
  return sub_24E85299C(v78, type metadata accessor for AppEventDetail);
}

uint64_t sub_24E84CF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E852284(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E84CF34(uint64_t a1)
{
  v2 = sub_24E8529FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E84CF70(uint64_t a1)
{
  v2 = sub_24E8529FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E84CFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31[0] = a1;
  v31[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F090);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F098);
  MEMORY[0x28223BE20](v13);
  v15 = v31 - v14;
  v16 = sub_24F924C98();
  sub_24F769764(v9);
  type metadata accessor for AppEventDetailComponent(0);
  sub_24F769764(v6);
  v17 = sub_24F4D9600(v9, v6);
  sub_24E601704(v6, &qword_27F215598);
  sub_24E601704(v9, &qword_27F215598);
  v18 = 0x4044000000000000;
  if (!v17)
  {
    v18 = 0;
  }

  *v12 = v16;
  *(v12 + 1) = v18;
  v12[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F0A0);
  sub_24E84D274(v31[0], v3, &v12[*(v19 + 44)]);
  v20 = sub_24E84DB1C();
  sub_24F923318();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_24E6009C8(v12, v15, &qword_27F21F090);
  v29 = &v15[*(v13 + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  sub_24F9257D8();
  sub_24F927618();
  sub_24E852834();
  sub_24F9266F8();
  return sub_24E601704(v15, &qword_27F21F098);
}

uint64_t sub_24E84D274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a3;
  v79 = type metadata accessor for AppEventDetailComponent.Footer(0);
  MEMORY[0x28223BE20](v79);
  v81 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v74 = (&v65 - v7);
  v82 = sub_24F925218();
  v70 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v67 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v69);
  v10 = &v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v11 - 8);
  v68 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v65 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v65 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v65 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v65 - v23;
  v25 = type metadata accessor for AppEventDetailComponent.Header(0);
  MEMORY[0x28223BE20](v25 - 8);
  v78 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v76 = a1;
  v77 = &v65 - v28;
  sub_24E85292C(a1, &v65 - v28, type metadata accessor for AppEventDetail);
  sub_24F769764(v24);
  v73 = type metadata accessor for AppEventDetailComponent(0);
  sub_24F769764(v21);
  LOBYTE(a1) = sub_24F4D9600(v24, v21);
  v75 = v21;
  sub_24E601704(v21, &qword_27F215598);
  v72 = v24;
  sub_24E601704(v24, &qword_27F215598);
  v71 = a2;
  if (a1)
  {
    sub_24F769764(v18);
    v29 = v70;
    v30 = v82;
    (*(v70 + 104))(v15, *MEMORY[0x277CE0558], v82);
    (*(v29 + 56))(v15, 0, 1, v30);
    v31 = *(v69 + 48);
    sub_24E60169C(v18, v10, &qword_27F215598);
    sub_24E60169C(v15, &v10[v31], &qword_27F215598);
    v32 = *(v29 + 48);
    if (v32(v10, 1, v30) == 1)
    {
      sub_24E601704(v15, &qword_27F215598);
      sub_24E601704(v18, &qword_27F215598);
      if (v32(&v10[v31], 1, v82) == 1)
      {
        sub_24E601704(v10, &qword_27F215598);
LABEL_11:
        LODWORD(v82) = 0;
        v70 = 0x4034000000000000;
        goto LABEL_12;
      }
    }

    else
    {
      v33 = v29;
      v34 = v68;
      sub_24E60169C(v10, v68, &qword_27F215598);
      if (v32(&v10[v31], 1, v82) != 1)
      {
        v35 = v67;
        v36 = v82;
        (*(v33 + 32))(v67, &v10[v31], v82);
        sub_24E84B894(&qword_27F215650, MEMORY[0x277CE0570]);
        LODWORD(v69) = sub_24F92AFF8();
        v37 = *(v33 + 8);
        v37(v35, v36);
        sub_24E601704(v15, &qword_27F215598);
        sub_24E601704(v18, &qword_27F215598);
        v37(v34, v36);
        sub_24E601704(v10, &qword_27F215598);
        if (v69)
        {
          goto LABEL_11;
        }

LABEL_9:
        v70 = 0;
        LODWORD(v82) = 1;
        goto LABEL_12;
      }

      sub_24E601704(v15, &qword_27F215598);
      sub_24E601704(v18, &qword_27F215598);
      (*(v33 + 8))(v34, v82);
    }

    sub_24E601704(v10, &unk_27F254F20);
    goto LABEL_9;
  }

  LODWORD(v82) = 0;
  v70 = 0x4034000000000000;
LABEL_12:
  v38 = type metadata accessor for AppEventDetail(0);
  v39 = (v76 + v38[15]);
  v40 = *v39;
  v41 = v39[1];
  v42 = (v76 + v38[9]);
  v43 = v42[1];
  v68 = *v42;
  v69 = v40;
  v44 = (v76 + v38[11]);
  v45 = *v44;
  v46 = v44[1];
  v66 = v41;
  v67 = v45;
  v47 = v79;
  v48 = v74;
  sub_24E85292C(v76 + v38[19], v74 + *(v79 + 32), type metadata accessor for GameLockup);

  v50 = v71;
  v49 = v72;
  sub_24F769764(v72);
  v51 = v75;
  sub_24F769764(v75);
  LOBYTE(v41) = sub_24F4D9600(v49, v51);
  sub_24E601704(v51, &qword_27F215598);
  sub_24E601704(v49, &qword_27F215598);
  v52 = *(v50 + *(v73 + 24));
  *v48 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v53 = (v48 + v47[5]);
  v54 = v66;
  *v53 = v69;
  v53[1] = v54;
  v55 = (v48 + v47[6]);
  v56 = v67;
  *v55 = v68;
  v55[1] = v43;
  v57 = (v48 + v47[7]);
  *v57 = v56;
  v57[1] = v46;
  *(v48 + v47[9]) = v41 & 1;
  *(v48 + v47[10]) = v52;
  v58 = v77;
  v59 = v78;
  sub_24E85292C(v77, v78, type metadata accessor for AppEventDetailComponent.Header);
  v60 = v81;
  sub_24E85292C(v48, v81, type metadata accessor for AppEventDetailComponent.Footer);
  v61 = v80;
  sub_24E85292C(v59, v80, type metadata accessor for AppEventDetailComponent.Header);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F0B8);
  v63 = v61 + *(v62 + 48);
  *v63 = v70;
  *(v63 + 8) = 0;
  *(v63 + 9) = v82;
  sub_24E85292C(v60, v61 + *(v62 + 64), type metadata accessor for AppEventDetailComponent.Footer);

  sub_24E85299C(v48, type metadata accessor for AppEventDetailComponent.Footer);
  sub_24E85299C(v58, type metadata accessor for AppEventDetailComponent.Header);
  sub_24E85299C(v60, type metadata accessor for AppEventDetailComponent.Footer);
  return sub_24E85299C(v59, type metadata accessor for AppEventDetailComponent.Header);
}

uint64_t sub_24E84DB1C()
{
  v0 = sub_24F925218();
  v34 = *(v0 - 8);
  v35 = v0;
  MEMORY[0x28223BE20](v0);
  v31 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v33);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  sub_24F769764(&v30 - v16);
  type metadata accessor for AppEventDetailComponent(0);
  sub_24F769764(v14);
  v18 = sub_24F4D9600(v17, v14);
  sub_24E601704(v14, &qword_27F215598);
  sub_24E601704(v17, &qword_27F215598);
  if (!v18)
  {
    return sub_24F925818();
  }

  sub_24F769764(v11);
  v20 = v34;
  v19 = v35;
  (*(v34 + 104))(v8, *MEMORY[0x277CE0558], v35);
  (*(v20 + 56))(v8, 0, 1, v19);
  v21 = *(v33 + 48);
  sub_24E60169C(v11, v3, &qword_27F215598);
  sub_24E60169C(v8, &v3[v21], &qword_27F215598);
  v22 = *(v20 + 48);
  if (v22(v3, 1, v19) != 1)
  {
    v24 = v20;
    v25 = v32;
    sub_24E60169C(v3, v32, &qword_27F215598);
    if (v22(&v3[v21], 1, v19) != 1)
    {
      v26 = &v3[v21];
      v27 = v31;
      (*(v24 + 32))(v31, v26, v19);
      sub_24E84B894(&qword_27F215650, MEMORY[0x277CE0570]);
      v28 = sub_24F92AFF8();
      v29 = *(v24 + 8);
      v29(v27, v19);
      sub_24E601704(v8, &qword_27F215598);
      sub_24E601704(v11, &qword_27F215598);
      v29(v25, v19);
      sub_24E601704(v3, &qword_27F215598);
      if (v28)
      {
        return sub_24F925808();
      }

      return sub_24F925868();
    }

    sub_24E601704(v8, &qword_27F215598);
    sub_24E601704(v11, &qword_27F215598);
    (*(v24 + 8))(v25, v19);
LABEL_8:
    sub_24E601704(v3, &unk_27F254F20);
    return sub_24F925868();
  }

  sub_24E601704(v8, &qword_27F215598);
  sub_24E601704(v11, &qword_27F215598);
  if (v22(&v3[v21], 1, v19) != 1)
  {
    goto LABEL_8;
  }

  sub_24E601704(v3, &qword_27F215598);
  return sub_24F925808();
}

uint64_t sub_24E84E014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppEventDetailComponent.Header.Buttons(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v21 - v9);
  v11 = type metadata accessor for AppEventDetailComponent.Header.Badge(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v21 - v15);
  sub_24E85292C(a1, &v21 + *(v17 + 28) - v15, type metadata accessor for AppEventDetail);
  *v16 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  sub_24E85292C(a1, v10 + *(v5 + 28), type metadata accessor for AppEventDetail);
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F1A8);
  swift_storeEnumTagMultiPayload();
  sub_24E85292C(v16, v13, type metadata accessor for AppEventDetailComponent.Header.Badge);
  sub_24E85292C(v10, v7, type metadata accessor for AppEventDetailComponent.Header.Buttons);
  sub_24E85292C(v13, a2, type metadata accessor for AppEventDetailComponent.Header.Badge);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F1B0);
  v19 = a2 + *(v18 + 48);
  *v19 = 0x4034000000000000;
  *(v19 + 8) = 0;
  sub_24E85292C(v7, a2 + *(v18 + 64), type metadata accessor for AppEventDetailComponent.Header.Buttons);
  sub_24E85299C(v10, type metadata accessor for AppEventDetailComponent.Header.Buttons);
  sub_24E85299C(v16, type metadata accessor for AppEventDetailComponent.Header.Badge);
  sub_24E85299C(v7, type metadata accessor for AppEventDetailComponent.Header.Buttons);
  return sub_24E85299C(v13, type metadata accessor for AppEventDetailComponent.Header.Badge);
}

uint64_t sub_24E84E2B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24E60169C(v2, &v14 - v9, &qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923E98();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24E84E4B0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8);
  MEMORY[0x28223BE20](v3);
  v5 = &v93 - v4;
  v6 = sub_24F923E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v115 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v9 - 8);
  v110 = &v93 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v103 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v102 = &v93 - v11;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F2E8);
  MEMORY[0x28223BE20](v101);
  v108 = &v93 - v12;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F2F0);
  MEMORY[0x28223BE20](v105);
  v107 = &v93 - v13;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F2F8);
  MEMORY[0x28223BE20](v104);
  v111 = &v93 - v14;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F300);
  MEMORY[0x28223BE20](v106);
  v113 = &v93 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F308);
  MEMORY[0x28223BE20](v112);
  v114 = &v93 - v16;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F310);
  MEMORY[0x28223BE20](v116);
  v117 = &v93 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F318);
  v118 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v100 = &v93 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F320);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v93 - v21;
  v23 = v1 + *(type metadata accessor for AppEventDetailComponent.Header.Badge(0) + 20);
  v24 = type metadata accessor for AppEventDetail(0);
  sub_24F66F0C8(*(v23 + *(v24 + 64)), v22);
  v25 = type metadata accessor for GSKAppEventFormattedDate(0);
  if ((*(*(v25 - 8) + 48))(v22, 1, v25) == 1)
  {
    sub_24E601704(v22, &qword_27F21F320);
    v26 = 1;
LABEL_9:
    v92 = v118;
    return (*(v92 + 56))(a1, v26, 1, v18);
  }

  v27 = &v22[*(v25 + 20)];
  v28 = *v27;
  v29 = *(v27 + 1);

  sub_24E85299C(v22, type metadata accessor for GSKAppEventFormattedDate);
  v26 = 1;
  if (!v29)
  {
    goto LABEL_9;
  }

  v94 = v18;
  v95 = v3;
  v96 = a1;
  v119 = v28;
  v120 = v29;
  sub_24E600AEC();
  v30 = sub_24F925E18();
  v32 = v31;
  v34 = v33;
  v98 = v7;
  sub_24F925A18();
  v99 = v5;
  v35 = sub_24F925C98();
  v97 = v6;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  sub_24E600B40(v30, v32, v34 & 1);

  v119 = v36;
  v120 = v38;
  LOBYTE(v32) = v40 & 1;
  v121 = v40 & 1;
  v122 = v42;
  v43 = MEMORY[0x277CE0BD8];
  v44 = MEMORY[0x277CE0BC8];
  v45 = v102;
  sub_24F9268B8();
  sub_24E600B40(v36, v38, v32);

  v46 = *MEMORY[0x277CE09A0];
  v47 = sub_24F925908();
  v48 = *(v47 - 8);
  v49 = v110;
  (*(v48 + 104))(v110, v46, v47);
  (*(v48 + 56))(v49, 0, 1, v47);
  v50 = v99;
  v119 = v43;
  v120 = v44;
  swift_getOpaqueTypeConformance2();
  v52 = v108;
  v51 = v109;
  sub_24F9260B8();
  sub_24E601704(v49, &qword_27F214698);
  (*(v103 + 8))(v45, v51);
  *(v52 + *(v101 + 36)) = sub_24F925198();
  v53 = v115;
  sub_24E84E2B0(v115);
  LOBYTE(v51) = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v54 = v98;
  v55 = v97;
  (*(v98 + 8))(v53, v97);
  if (v51)
  {
    v56 = 1;
  }

  else
  {
    v56 = 2;
  }

  KeyPath = swift_getKeyPath();
  v58 = v107;
  sub_24E6009C8(v52, v107, &qword_27F21F2E8);
  v59 = v58 + *(v105 + 36);
  *v59 = KeyPath;
  *(v59 + 8) = v56;
  *(v59 + 16) = 0;
  v60 = swift_getKeyPath();
  v61 = v111;
  sub_24E6009C8(v58, v111, &qword_27F21F2F0);
  v62 = v61 + *(v104 + 36);
  *v62 = v60;
  *(v62 + 8) = 1;
  LOBYTE(v60) = sub_24F925868();
  sub_24F923318();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v61;
  v72 = v113;
  sub_24E6009C8(v71, v113, &qword_27F21F2F8);
  v73 = v72 + *(v106 + 36);
  *v73 = v60;
  *(v73 + 8) = v64;
  *(v73 + 16) = v66;
  *(v73 + 24) = v68;
  *(v73 + 32) = v70;
  *(v73 + 40) = 0;
  LOBYTE(v60) = sub_24F9257F8();
  sub_24F923318();
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v82 = v114;
  sub_24E6009C8(v72, v114, &qword_27F21F300);
  v83 = v82 + *(v112 + 36);
  *v83 = v60;
  *(v83 + 8) = v75;
  *(v83 + 16) = v77;
  *(v83 + 24) = v79;
  *(v83 + 32) = v81;
  *(v83 + 40) = 0;
  v84 = v117;
  v85 = &v117[*(v116 + 36)];
  sub_24F927438();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F328);
  v87 = *(v86 + 52);
  v88 = *MEMORY[0x277CE0118];
  v89 = sub_24F924B38();
  (*(*(v89 - 8) + 104))(&v85[v87], v88, v89);
  *&v85[*(v86 + 56)] = 256;
  sub_24E6009C8(v82, v84, &qword_27F21F308);
  (*(v54 + 104))(v50, *MEMORY[0x277CDF998], v55);
  sub_24E84B894(&qword_27F22DF90, MEMORY[0x277CDFA28]);
  result = sub_24F92AFF8();
  if (result)
  {
    sub_24E854314();
    sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
    v91 = v100;
    sub_24F9263F8();
    sub_24E601704(v50, &qword_27F21CCC8);
    sub_24E601704(v84, &qword_27F21F310);
    v92 = v118;
    a1 = v96;
    v18 = v94;
    (*(v118 + 32))(v96, v91, v94);
    v26 = 0;
    return (*(v92 + 56))(a1, v26, 1, v18);
  }

  __break(1u);
  return result;
}

uint64_t sub_24E84F03C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = sub_24F923E98();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v43 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9241F8();
  v6 = *(v5 - 8);
  v41 = v5;
  v42 = v6;
  MEMORY[0x28223BE20](v5);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F9249F8();
  v36 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F208);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F210);
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F218);
  v17 = *(v16 - 8);
  v39 = v16;
  v40 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - v18;
  *v13 = sub_24F9249A8();
  *(v13 + 1) = 0x4020000000000000;
  v13[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F220);
  sub_24E84F5B4(v2, &v13[*(v20 + 44)]);
  sub_24F9249E8();
  v21 = sub_24E602068(&qword_27F21F228, &qword_27F21F208);
  v22 = sub_24E84B894(&qword_27F21F230, MEMORY[0x277CDDE78]);
  sub_24F9260E8();
  (*(v36 + 8))(v10, v8);
  sub_24E601704(v13, &qword_27F21F208);
  v23 = v38;
  sub_24F9241E8();
  v47 = v11;
  v48 = v8;
  v49 = v21;
  v50 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_24E84B894(&qword_27F212838, MEMORY[0x277CDDB18]);
  v26 = v35;
  v27 = v41;
  sub_24F926178();
  v28 = v23;
  v29 = v27;
  (*(v42 + 8))(v28, v27);
  (*(v37 + 8))(v15, v26);
  v30 = v43;
  v31 = v44;
  v32 = v45;
  (*(v44 + 104))(v43, *MEMORY[0x277CDF9E8], v45);
  v47 = v26;
  v48 = v29;
  v49 = OpaqueTypeConformance2;
  v50 = v25;
  swift_getOpaqueTypeConformance2();
  v33 = v39;
  sub_24F9263E8();
  (*(v31 + 8))(v30, v32);
  return (*(v40 + 8))(v19, v33);
}

uint64_t sub_24E84F5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v153 = a2;
  v3 = type metadata accessor for AppEventDetailComponent.Header.Buttons(0);
  v4 = v3 - 8;
  v140 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v141 = v5;
  v143 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v6 - 8);
  v145 = &v125 - v7;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F238);
  MEMORY[0x28223BE20](v146);
  v147 = &v125 - v8;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F240);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v149 = &v125 - v9;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F248);
  MEMORY[0x28223BE20](v148);
  v152 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v138 = &v125 - v12;
  v137 = sub_24F926D98();
  v155 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v14 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v125 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F250);
  MEMORY[0x28223BE20](v18 - 8);
  v127 = &v125 - v19;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F258);
  MEMORY[0x28223BE20](v128);
  v129 = &v125 - v20;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F260);
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = &v125 - v21;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F268);
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v23 = &v125 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v125 - v25;
  v27 = sub_24F91F4A8();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v133 = &v125 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F270);
  MEMORY[0x28223BE20](v33 - 8);
  v144 = &v125 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v156 = &v125 - v36;
  v37 = *(v4 + 28);
  v142 = a1;
  v38 = a1 + v37;
  v39 = type metadata accessor for AppEventDetail(0);
  sub_24F91F488();
  v134 = v28;
  v40 = (*(v28 + 48))(v26, 1, v27);
  v41 = MEMORY[0x277CE1088];
  v42 = MEMORY[0x277CE1078];
  v154 = v17;
  v139 = v14;
  if (v40 == 1)
  {
    sub_24E601704(v26, &qword_27F228530);
    v43 = 1;
    v44 = v137;
    v45 = v156;
    v46 = v138;
    v47 = v136;
  }

  else
  {
    v48 = v27;
    v49 = v134;
    v50 = *(v134 + 32);
    v125 = v23;
    v51 = v133;
    v50(v133, v26, v48);
    (*(v49 + 16))(v30, v51, v48);
    v52 = (v38 + *(v39 + 36));
    v53 = v52[1];
    *&v163 = *v52;
    *(&v163 + 1) = v53;
    sub_24E600AEC();

    sub_24F9237F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255010);
    v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217BD8);
    *&v163 = v41;
    *(&v163 + 1) = v42;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v163 = v54;
    *(&v163 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_24E84B894(&qword_27F21F2B0, MEMORY[0x277CC9260]);
    v126 = v48;
    v56 = v129;
    sub_24F9277A8();
    sub_24F927618();
    sub_24F9238C8();
    v57 = (v56 + *(v128 + 36));
    v58 = v161;
    *v57 = v160;
    v57[1] = v58;
    v57[2] = v162;
    sub_24F926D88();
    v59 = v154;
    MEMORY[0x25304C700](1);
    v60 = *(v155 + 8);
    v61 = v137;
    v60(v14, v137);
    sub_24E854254();
    sub_24E63E314();
    v62 = v130;
    v63 = MEMORY[0x277CE1120];
    sub_24F9261C8();
    v60(v59, v61);
    sub_24E601704(v56, &qword_27F21F258);
    *(&v164 + 1) = v63;
    *&v165 = sub_24E63E454();
    v64 = v125;
    sub_24E60169C(&v163, v125, &qword_27F21F2D0);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F2D8);
    v66 = v131;
    v67 = v132;
    (*(v131 + 16))(v64 + v65[9], v62, v132);
    v68 = v64 + v65[10];
    *v68 = sub_24F923398() & 1;
    *(v68 + 8) = v69;
    *(v68 + 16) = v70 & 1;
    v71 = v64 + v65[11];
    *v71 = swift_getKeyPath();
    *(v71 + 8) = 0;
    v72 = v61;
    v73 = v67;
    if (qword_27F211808 != -1)
    {
      swift_once();
    }

    v74 = qword_27F24E488;
    v75 = sub_24F923398();
    v77 = v76;
    v79 = v78;
    v80 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F2E0) + 36);
    *v80 = v74;
    *(v80 + 8) = v75 & 1;
    *(v80 + 16) = v77;
    *(v80 + 24) = v79 & 1;
    LOBYTE(v74) = sub_24F923398();
    v82 = v81;
    LOBYTE(v77) = v83;
    sub_24E601704(&v163, &qword_27F21F2D0);
    (*(v66 + 8))(v62, v73);
    (*(v134 + 8))(v133, v126);
    v47 = v136;
    v84 = v64 + *(v136 + 36);
    *v84 = v74 & 1;
    *(v84 + 8) = v82;
    *(v84 + 16) = v77 & 1;
    v85 = v64;
    v45 = v156;
    sub_24E6009C8(v85, v156, &qword_27F21F268);
    v43 = 0;
    v46 = v138;
    v44 = v72;
  }

  (*(v135 + 56))(v45, v43, 1, v47);
  v86 = v145;
  sub_24F9232C8();
  v87 = sub_24F9232F8();
  (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
  v88 = v143;
  sub_24E85292C(v142, v143, type metadata accessor for AppEventDetailComponent.Header.Buttons);
  v89 = (*(v140 + 80) + 16) & ~*(v140 + 80);
  v90 = swift_allocObject();
  sub_24E8540CC(v88, v90 + v89, type metadata accessor for AppEventDetailComponent.Header.Buttons);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255010);
  v91 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217BD8);
  *&v163 = MEMORY[0x277CE1088];
  *(&v163 + 1) = MEMORY[0x277CE1078];
  v92 = swift_getOpaqueTypeConformance2();
  *&v163 = v91;
  *(&v163 + 1) = v92;
  swift_getOpaqueTypeConformance2();
  v93 = v147;
  sub_24F926F78();
  sub_24F927618();
  sub_24F9238C8();
  v94 = (v93 + *(v146 + 36));
  v95 = v164;
  *v94 = v163;
  v94[1] = v95;
  v94[2] = v165;
  v96 = v139;
  sub_24F926D88();
  v97 = v154;
  MEMORY[0x25304C700](1);
  v98 = *(v155 + 8);
  v98(v96, v44);
  sub_24E854194();
  sub_24E63E314();
  v99 = v149;
  v100 = MEMORY[0x277CE1120];
  sub_24F9261C8();
  v98(v97, v44);
  sub_24E601704(v93, &qword_27F21F238);
  v158 = v100;
  v159 = sub_24E63E454();
  sub_24E60169C(v157, v46, &qword_27F21F290);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F298);
  v102 = v150;
  v103 = v151;
  (*(v150 + 16))(v46 + v101[9], v99, v151);
  v104 = v46 + v101[10];
  *v104 = sub_24F923398() & 1;
  *(v104 + 8) = v105;
  *(v104 + 16) = v106 & 1;
  v107 = v46 + v101[11];
  *v107 = swift_getKeyPath();
  *(v107 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v108 = qword_27F24E488;
  v109 = sub_24F923398();
  v111 = v110;
  v113 = v112;
  v114 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F2A0) + 36);
  *v114 = v108;
  *(v114 + 8) = v109 & 1;
  *(v114 + 16) = v111;
  *(v114 + 24) = v113 & 1;
  LOBYTE(v108) = sub_24F923398();
  v116 = v115;
  LOBYTE(v111) = v117;
  sub_24E601704(v157, &qword_27F21F290);
  (*(v102 + 8))(v99, v103);
  v118 = v46 + *(v148 + 36);
  *v118 = v108 & 1;
  *(v118 + 8) = v116;
  *(v118 + 16) = v111 & 1;
  v119 = v156;
  v120 = v144;
  sub_24E60169C(v156, v144, &qword_27F21F270);
  v121 = v152;
  sub_24E60169C(v46, v152, &qword_27F21F248);
  v122 = v153;
  sub_24E60169C(v120, v153, &qword_27F21F270);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F2A8);
  sub_24E60169C(v121, v122 + *(v123 + 48), &qword_27F21F248);
  sub_24E601704(v46, &qword_27F21F248);
  sub_24E601704(v119, &qword_27F21F270);
  sub_24E601704(v121, &qword_27F21F248);
  return sub_24E601704(v120, &qword_27F21F270);
}

uint64_t sub_24E8506CC@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v15 = sub_24F929888();
  v1 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9248C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217BD8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  v12 = sub_24F926DF8();
  sub_24F9248B8();
  *&v17[0] = v12;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v5 + 8))(v7, v4);

  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  sub_24F929828();
  sub_24E601704(v16, &qword_27F2129B0);
  sub_24E601704(v17, &qword_27F2129B0);
  *&v17[0] = MEMORY[0x277CE1088];
  *(&v17[0] + 1) = MEMORY[0x277CE1078];
  swift_getOpaqueTypeConformance2();
  sub_24F925EE8();
  (*(v1 + 8))(v3, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24E8509DC(uint64_t a1)
{
  v15 = sub_24F924848();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F1A8);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_24F923978();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, v7, &qword_27F21F1A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_24F92BDC8();
    v12 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_24F923968();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24E850C58@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v17 = sub_24F929888();
  v15 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F9248C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217BD8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  v11 = sub_24F926DF8();
  sub_24F9248B8();
  v18 = v11;
  v12 = MEMORY[0x277CE1088];
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v4 + 8))(v6, v3);

  sub_24F929808();
  v18 = v12;
  v19 = MEMORY[0x277CE1078];
  swift_getOpaqueTypeConformance2();
  sub_24F925EE8();
  (*(v15 + 8))(v2, v17);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24E850F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a1;
  v145 = a2;
  v141 = type metadata accessor for GameLockupComponent(0);
  MEMORY[0x28223BE20](v141);
  v140 = &v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F130);
  MEMORY[0x28223BE20](v139);
  v144 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v143 = &v120 - v6;
  v7 = sub_24F925218();
  v125 = *(v7 - 8);
  v126 = v7;
  MEMORY[0x28223BE20](v7);
  v121 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v123);
  v124 = &v120 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v10 - 8);
  v122 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v137 = &v120 - v13;
  MEMORY[0x28223BE20](v14);
  v127 = &v120 - v15;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F138) - 8;
  MEMORY[0x28223BE20](v136);
  v142 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v152 = &v120 - v18;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F140) - 8;
  MEMORY[0x28223BE20](v135);
  v138 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v158 = &v120 - v21;
  v151 = sub_24F925DC8();
  v155 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v23 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F148);
  MEMORY[0x28223BE20](v150);
  v25 = &v120 - v24;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F150) - 8;
  MEMORY[0x28223BE20](v129);
  v153 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v157 = &v120 - v28;
  v156 = type metadata accessor for AppEventDetailComponent.Footer(0);
  v29 = (a1 + v156[5]);
  v30 = v29[1];
  *&v173 = *v29;
  *(&v173 + 1) = v30;
  v128 = sub_24E600AEC();

  v31 = sub_24F925E18();
  v33 = v32;
  LOBYTE(v30) = v34;
  v36 = v35;
  v131 = v23;
  sub_24F925DB8();
  KeyPath = swift_getKeyPath();
  *&v173 = v31;
  *(&v173 + 1) = v33;
  LOBYTE(v174) = v30 & 1;
  *(&v174 + 1) = v36;
  *&v175 = KeyPath;
  BYTE8(v175) = 0;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146D8);
  v133 = sub_24E62FBF4();
  sub_24F926718();
  v38 = *(v155 + 8);
  v155 += 8;
  v132 = v38;
  v38(v23, v151);
  sub_24E600B40(v31, v33, v30 & 1);

  v39 = sub_24F925A18();
  v40 = swift_getKeyPath();
  v41 = &v25[*(v150 + 36)];
  *v41 = v40;
  v41[1] = v39;
  sub_24E8531F8();
  v42 = v157;
  sub_24F9268B8();
  sub_24E601704(v25, &qword_27F21F148);
  LODWORD(v39) = sub_24F9251C8();
  v43 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F160) + 36));
  v44 = v42;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  v45 = *(v130 + 36);
  v148 = *MEMORY[0x277CE13B8];
  v46 = v148;
  v147 = sub_24F927748();
  v47 = *(v147 - 8);
  v146 = *(v47 + 104);
  v149 = v47 + 104;
  v146(&v43[v45], v46, v147);
  *v43 = v39;
  LOBYTE(v39) = sub_24F925828();
  sub_24F923318();
  v48 = v44 + *(v129 + 44);
  *v48 = v39;
  *(v48 + 8) = v49;
  *(v48 + 16) = v50;
  *(v48 + 24) = v51;
  *(v48 + 32) = v52;
  *(v48 + 40) = 0;
  v53 = v156;
  v54 = v154;
  v55 = (v154 + v156[6]);
  v56 = v55[1];
  *&v173 = *v55;
  *(&v173 + 1) = v56;

  v57 = sub_24F925E18();
  v59 = v58;
  LOBYTE(v23) = v60;
  v62 = v61;
  v63 = swift_getKeyPath();
  v64 = sub_24F925998();
  v65 = swift_getKeyPath();
  LOBYTE(v162) = v23 & 1;
  *&v178 = v57;
  *(&v178 + 1) = v59;
  LOBYTE(v179) = v23 & 1;
  *(&v179 + 1) = v62;
  *&v180 = v63;
  BYTE8(v180) = 0;
  *&v181 = v65;
  *(&v181 + 1) = v64;
  v173 = v178;
  v174 = v179;
  v175 = v180;
  v176 = v181;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F168);
  sub_24E8532EC();
  v66 = v158;
  sub_24F9268B8();
  sub_24E601704(&v178, &qword_27F21F168);
  LODWORD(v57) = sub_24F925198();
  *(v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F178) + 36)) = v57;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F180);
  v146((v66 + *(v67 + 36)), v148, v147);
  LOBYTE(v57) = sub_24F925828();
  sub_24F923318();
  v68 = v66 + *(v135 + 44);
  *v68 = v57;
  *(v68 + 8) = v69;
  *(v68 + 16) = v70;
  *(v68 + 24) = v71;
  *(v68 + 32) = v72;
  *(v68 + 40) = 0;
  v73 = (v54 + v53[7]);
  v74 = v73[1];
  *&v173 = *v73;
  *(&v173 + 1) = v74;

  v75 = sub_24F925E18();
  v77 = v76;
  LOBYTE(v57) = v78;
  v80 = v79;
  v81 = v131;
  sub_24F925DB8();
  v82 = swift_getKeyPath();
  *&v173 = v75;
  *(&v173 + 1) = v77;
  LOBYTE(v174) = v57 & 1;
  *(&v174 + 1) = v80;
  *&v175 = v82;
  BYTE8(v175) = 0;
  v83 = v152;
  sub_24F926718();
  v132(v81, v151);
  sub_24E600B40(v75, v77, v57 & 1);

  v84 = sub_24F925898();
  v85 = swift_getKeyPath();
  v86 = (v83 + *(v150 + 36));
  *v86 = v85;
  v86[1] = v84;
  LODWORD(v84) = sub_24F9251C8();
  v87 = (v83 + *(v136 + 44));
  v146(&v87[*(v130 + 36)], v148, v147);
  *v87 = v84;
  if (*(v54 + v156[9]) != 1)
  {
    goto LABEL_10;
  }

  v88 = v127;
  sub_24F769764(v127);
  v90 = v125;
  v89 = v126;
  v91 = v137;
  (*(v125 + 104))(v137, *MEMORY[0x277CE0558], v126);
  (*(v90 + 56))(v91, 0, 1, v89);
  v92 = v124;
  v93 = *(v123 + 48);
  sub_24E60169C(v88, v124, &qword_27F215598);
  sub_24E60169C(v91, v92 + v93, &qword_27F215598);
  v94 = *(v90 + 48);
  if (v94(v92, 1, v89) == 1)
  {
    sub_24E601704(v137, &qword_27F215598);
    sub_24E601704(v88, &qword_27F215598);
    if (v94(v92 + v93, 1, v89) == 1)
    {
      sub_24E601704(v92, &qword_27F215598);
LABEL_10:
      sub_24F927618();
      sub_24F9238C8();
      v161 = 1;
      v160 = v169;
      v159 = v171;
      v167 = 0;
      *&v162 = 0;
      BYTE8(v162) = 1;
      *&v163 = v168;
      BYTE8(v163) = v169;
      *&v164 = v170;
      BYTE8(v164) = v171;
      v165 = v172;
      v166 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F188);
      sub_24E8533A4();
      sub_24F924E28();
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v95 = v90;
  v96 = v122;
  sub_24E60169C(v92, v122, &qword_27F215598);
  if (v94(v92 + v93, 1, v89) == 1)
  {
    sub_24E601704(v137, &qword_27F215598);
    sub_24E601704(v127, &qword_27F215598);
    (*(v95 + 8))(v96, v89);
LABEL_7:
    sub_24E601704(v92, &unk_27F254F20);
    goto LABEL_8;
  }

  v97 = v121;
  (*(v95 + 32))(v121, v92 + v93, v89);
  sub_24E84B894(&qword_27F215650, MEMORY[0x277CE0570]);
  v98 = v95;
  v99 = sub_24F92AFF8();
  v100 = *(v98 + 8);
  v100(v97, v89);
  sub_24E601704(v137, &qword_27F215598);
  sub_24E601704(v127, &qword_27F215598);
  v100(v96, v89);
  sub_24E601704(v92, &qword_27F215598);
  if (v99)
  {
    goto LABEL_10;
  }

LABEL_8:
  LOBYTE(v168) = 0;
  v167 = 1;
  *&v162 = 0x4034000000000000;
  BYTE8(v162) = 0;
  v166 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F188);
  sub_24E8533A4();
  sub_24F924E28();
LABEL_11:
  v101 = *(v154 + v156[10]);
  v102 = v141;
  v103 = *(v141 + 20);
  v104 = swift_getKeyPath();
  v105 = v140;
  *&v140[v103] = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  swift_storeEnumTagMultiPayload();
  v106 = *(v102 + 24);
  *(v105 + v106) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  *v105 = v101;
  sub_24E84B894(&qword_27F216AC0, type metadata accessor for GameLockupComponent);

  v107 = v143;
  sub_24F921D38();
  sub_24E85299C(v105, type metadata accessor for GameLockupComponent);
  *(v107 + *(v139 + 36)) = 256;
  v108 = v153;
  sub_24E60169C(v157, v153, &qword_27F21F150);
  v109 = v138;
  sub_24E60169C(v158, v138, &qword_27F21F140);
  v110 = v152;
  v111 = v142;
  sub_24E60169C(v152, v142, &qword_27F21F138);
  v164 = v175;
  v165 = v176;
  v166 = v177;
  v162 = v173;
  v163 = v174;
  v112 = v144;
  sub_24E60169C(v107, v144, &qword_27F21F130);
  v113 = v108;
  v114 = v145;
  sub_24E60169C(v113, v145, &qword_27F21F150);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F198);
  sub_24E60169C(v109, v114 + v115[12], &qword_27F21F140);
  sub_24E60169C(v111, v114 + v115[16], &qword_27F21F138);
  v116 = v114 + v115[20];
  v117 = v165;
  *(v116 + 32) = v164;
  *(v116 + 48) = v117;
  *(v116 + 64) = v166;
  v118 = v163;
  *v116 = v162;
  *(v116 + 16) = v118;
  sub_24E60169C(v112, v114 + v115[24], &qword_27F21F130);
  sub_24E601704(v107, &qword_27F21F130);
  sub_24E601704(v110, &qword_27F21F138);
  sub_24E601704(v158, &qword_27F21F140);
  sub_24E601704(v157, &qword_27F21F150);
  sub_24E601704(v112, &qword_27F21F130);
  sub_24E601704(v111, &qword_27F21F138);
  sub_24E601704(v109, &qword_27F21F140);
  return sub_24E601704(v153, &qword_27F21F150);
}

uint64_t sub_24E852000@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t a4@<X8>)
{
  *a4 = a1();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  return a3(v4);
}

uint64_t sub_24E852070()
{
  MEMORY[0x28223BE20](v0);
  sub_24E85292C(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppEventDetailComponent);
  sub_24E84B894(&qword_27F21F078, type metadata accessor for AppEventDetailComponent);
  return sub_24F9218E8();
}

uint64_t sub_24E852284(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E657645707061 && a2 == 0xEA00000000006449 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7472416567646162 && a2 == 0xEC0000006B726F77 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D65726975716572 && a2 == 0xEC00000073746E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E694B6567646162 && a2 == 0xE900000000000064 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x657474616D726F66 && a2 == 0xEE00736574614464 || (sub_24F92CE08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x4C5255746E657665 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x4379616C70736964 && a2 == 0xEE00747865746E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6B636F4C656D6167 && a2 == 0xEA00000000007075 || (sub_24F92CE08() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA47E00 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA47E20 == a2)
  {

    return 17;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

unint64_t sub_24E852834()
{
  result = qword_27F21F0A8;
  if (!qword_27F21F0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F098);
    sub_24E602068(&qword_27F21F0B0, &qword_27F21F090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F0A8);
  }

  return result;
}

uint64_t sub_24E85292C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E85299C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E8529FC()
{
  result = qword_27F21F0C8;
  if (!qword_27F21F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F0C8);
  }

  return result;
}

unint64_t sub_24E852A50()
{
  result = qword_27F21F0D8;
  if (!qword_27F21F0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F0D0);
    sub_24E84B894(&qword_27F21F0E0, type metadata accessor for GSKAppEventFormattedDate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F0D8);
  }

  return result;
}

unint64_t sub_24E852B04()
{
  result = qword_27F21F0E8;
  if (!qword_27F21F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F0E8);
  }

  return result;
}

uint64_t sub_24E852B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for GameLockup(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24E852CC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for GameLockup(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24E852DF8()
{
  sub_24E84BB60(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for GameLockup(319);
    if (v1 <= 0x3F)
    {
      sub_24F928FD8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E852EE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventDetail(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E852F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventDetail(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24E852FD8()
{
  result = type metadata accessor for AppEventDetail(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E853044()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F098);
  sub_24E852834();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24E8530E4()
{
  result = qword_27F21F110;
  if (!qword_27F21F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F110);
  }

  return result;
}

unint64_t sub_24E85313C()
{
  result = qword_27F21F118;
  if (!qword_27F21F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F118);
  }

  return result;
}

unint64_t sub_24E853194()
{
  result = qword_27F21F120;
  if (!qword_27F21F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F120);
  }

  return result;
}

unint64_t sub_24E8531F8()
{
  result = qword_27F21F158;
  if (!qword_27F21F158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F148);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146D8);
    sub_24E62FBF4();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F158);
  }

  return result;
}

unint64_t sub_24E8532EC()
{
  result = qword_27F21F170;
  if (!qword_27F21F170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F168);
    sub_24E62FBF4();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F170);
  }

  return result;
}

unint64_t sub_24E8533A4()
{
  result = qword_27F21F190;
  if (!qword_27F21F190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F190);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_65Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = type metadata accessor for AppEventDetail(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_66Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, v9);
  }

  else
  {
    v13 = type metadata accessor for AppEventDetail(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

void sub_24E853758(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_24E8537F8(319, a4, a5, MEMORY[0x277CDF468]);
  if (v5 <= 0x3F)
  {
    type metadata accessor for AppEventDetail(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E8537F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24E85391C()
{
  v1 = type metadata accessor for AppEventDetailComponent.Header.Buttons(0);
  v41 = *(*(v1 - 8) + 80);
  v2 = v0 + ((v41 + 16) & ~v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F1A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923978();
    (*(*(v3 - 8) + 8))(v2, v3);
  }

  else
  {
  }

  v4 = v2 + *(v1 + 20);
  __swift_destroy_boxed_opaque_existential_1(v4);
  if (*(v4 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1(v4 + 40);
  }

  v5 = type metadata accessor for AppEventDetail(0);
  v6 = v5[6];
  v7 = sub_24F929608();
  v8 = *(v7 - 8);
  v40 = *(v8 + 48);
  if (!v40(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v39 = v8;

  v9 = v5[8];
  v10 = sub_24F9289E8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  v12 = v5[12];
  v13 = sub_24F91F648();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v4 + v12, v13);
  v16 = v5[13];
  if (!(*(v14 + 48))(v4 + v16, 1, v13))
  {
    v15(v4 + v16, v13);
  }

  v17 = v4 + v5[19];
  __swift_destroy_boxed_opaque_existential_1(v17);
  v18 = type metadata accessor for GameLockup(0);
  v19 = v18[5];
  v20 = type metadata accessor for TransitionalGameIcon(0);
  if (!(*(*(v20 - 8) + 48))(v17 + v19, 1, v20))
  {
    (*(v11 + 8))(v17 + v19, v10);
  }

  v21 = v17 + v18[10];
  v22 = type metadata accessor for DescriptionLabelConfig(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {

    v23 = v21 + *(v22 + 24);
    v24 = type metadata accessor for JSColor();
    if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
    {
      v25 = sub_24F928388();
      (*(*(v25 - 8) + 8))(v23, v25);
    }
  }

  v26 = v17 + v18[13];
  v27 = type metadata accessor for GameLockup.TrailingButtonType(0);
  if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      __swift_destroy_boxed_opaque_existential_1(v26 + 16);
    }

    else
    {
      v28 = type metadata accessor for OfferButtonInfo();
      if (!(*(*(v28 - 8) + 48))(v26, 1, v28))
      {

        v29 = *(v28 + 24);
        v30 = sub_24F91F4A8();
        v31 = *(v30 - 8);
        if (!(*(v31 + 48))(v26 + v29, 1, v30))
        {
          (*(v31 + 8))(v26 + v29, v30);
        }
      }
    }
  }

  v32 = v18[15];
  if (!v40(v17 + v32, 1, v7))
  {
    (*(v39 + 8))(v17 + v32, v7);
  }

  v33 = v17 + v18[16];
  if (*(v33 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v34 = v18[17];
  v35 = sub_24F92A6D8();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v17 + v34, 1, v35))
  {
    (*(v36 + 8))(v17 + v34, v35);
  }

  if (*(v17 + v18[21] + 8))
  {
  }

  v37 = v4 + v5[20];
  if (*(v37 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  return swift_deallocObject();
}

uint64_t sub_24E8540CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E854134()
{
  v1 = *(type metadata accessor for AppEventDetailComponent.Header.Buttons(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24E8509DC(v2);
}

unint64_t sub_24E854194()
{
  result = qword_27F21F278;
  if (!qword_27F21F278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F238);
    sub_24E602068(&qword_27F21F280, &qword_27F21F288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F278);
  }

  return result;
}

unint64_t sub_24E854254()
{
  result = qword_27F21F2B8;
  if (!qword_27F21F2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F258);
    sub_24E602068(&qword_27F21F2C0, &qword_27F21F2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F2B8);
  }

  return result;
}

unint64_t sub_24E854314()
{
  result = qword_27F21F330;
  if (!qword_27F21F330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F310);
    sub_24E8543F8(&qword_27F21F338, &qword_27F21F308, &unk_24F95F840, sub_24E85447C);
    sub_24E602068(&qword_27F21F360, &qword_27F21F328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F330);
  }

  return result;
}

uint64_t sub_24E8543F8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E8544AC()
{
  result = qword_27F21F348;
  if (!qword_27F21F348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F2F8);
    sub_24E854564();
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F348);
  }

  return result;
}

unint64_t sub_24E854564()
{
  result = qword_27F21F350;
  if (!qword_27F21F350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F2F0);
    sub_24E85461C();
    sub_24E602068(&qword_27F214778, &qword_27F214780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F350);
  }

  return result;
}

unint64_t sub_24E85461C()
{
  result = qword_27F21F358;
  if (!qword_27F21F358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F2E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2128D0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F217388, &qword_27F217390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F358);
  }

  return result;
}

uint64_t sub_24E854740()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F218);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F210);
  sub_24F9241F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F208);
  sub_24F9249F8();
  sub_24E602068(&qword_27F21F228, &qword_27F21F208);
  sub_24E84B894(&qword_27F21F230, MEMORY[0x277CDDE78]);
  swift_getOpaqueTypeConformance2();
  sub_24E84B894(&qword_27F212838, MEMORY[0x277CDDB18]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24E8548F4()
{
  result = qword_27F21F368;
  if (!qword_27F21F368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F370);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F310);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CCC8);
    sub_24E854314();
    sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F368);
  }

  return result;
}

uint64_t sub_24E854A14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_24F92B858();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_24EA9A1C4(0, 0, v4, &unk_24F95FA20, v6);
}

uint64_t sub_24E854B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_24E854B40, 0, 0);
}

uint64_t sub_24E854B40()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_24E854C34;

    return sub_24E8552E8();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_24E854C34(char a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_24E854D4C, v2, 0);
}

uint64_t sub_24E854D4C()
{
  if (*(v0 + 80) == 1)
  {
    v1 = sub_24E854DD0;
  }

  else
  {

    v1 = sub_24E854F78;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24E854DD0()
{
  sub_24F92B7F8();
  *(v0 + 72) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E854E64, v2, v1);
}

uint64_t sub_24E854E64()
{
  v1 = *(v0 + 56);

  v2 = [objc_opt_self() defaultCenter];
  sub_24E8585CC();
  sub_24F92C0D8();

  return MEMORY[0x2822009F8](sub_24E854F10, v1, 0);
}

uint64_t sub_24E854F10()
{

  return MEMORY[0x2822009F8](sub_24E854F78, 0, 0);
}

uint64_t sub_24E854FA0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_24E855034;

  return sub_24E8552E8();
}

uint64_t sub_24E855034(char a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_24E855134, 0, 0);
}

uint64_t Restrictions.deinit()
{
  v1 = *(v0 + 120);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_10:

    swift_defaultActor_destroy();
    return v0;
  }

  v2 = sub_24F92C738();
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_3:
  result = objc_opt_self();
  if (v2 >= 1)
  {
    v4 = result;

    v5 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x253052270](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      ++v5;
      v7 = [v4 defaultCenter];
      [v7 removeObserver_];
      swift_unknownObjectRelease();
    }

    while (v2 != v5);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t Restrictions.__deallocating_deinit()
{
  Restrictions.deinit();

  return swift_defaultActor_deallocate();
}

uint64_t sub_24E8552E8()
{
  *(v1 + 584) = v0;
  sub_24F928418();
  *(v1 + 592) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E855378, v0, 0);
}

uint64_t sub_24E855378()
{
  v1 = *(v0 + 584);
  if (*(v1 + 128))
  {
    if (qword_27F2105B0 != -1)
    {
      swift_once();
      v1 = *(v0 + 584);
    }

    v2 = sub_24F92AAE8();
    __swift_project_value_buffer(v2, qword_27F39C470);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    *(v0 + 72) = type metadata accessor for Restrictions();
    *(v0 + 48) = v1;

    sub_24F9283D8();
    sub_24E857CC8(v0 + 48);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();

    v3 = *(v0 + 8);

    return v3(0);
  }

  else
  {
    *(v1 + 128) = 1;
    if (qword_27F2105B0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 584);
    v6 = sub_24F92AAE8();
    *(v0 + 600) = v6;
    *(v0 + 608) = __swift_project_value_buffer(v6, qword_27F39C470);
    *(v0 + 616) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    v7 = *(sub_24F928468() - 8);
    *(v0 + 624) = *(v7 + 72);
    *(v0 + 744) = *(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    v8 = type metadata accessor for Restrictions();
    *(v0 + 632) = v8;
    *(v0 + 40) = v8;
    *(v0 + 16) = v5;

    sub_24F9283D8();
    sub_24E857CC8(v0 + 16);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();

    return MEMORY[0x2822009F8](sub_24E855744, 0, 0);
  }
}

uint64_t sub_24E855744()
{
  v1 = objc_opt_self();
  v0[80] = v1;
  v2 = [v1 sharedConnection];
  if (v2)
  {
    v5 = v2;
    v6 = [v2 effectiveValueForSetting_];

    if (v6)
    {
      v7 = [v6 integerValue];
    }

    else
    {
      v7 = 1000;
    }

    v0[81] = v7;
    v3 = v0[73];
    v2 = sub_24E855824;
    v4 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24E855824()
{
  v1 = v0[81];
  sub_24F92BF18();
  v0[82] = 0;
  v2 = v0[70];
  v0[83] = v2;
  if (v1 != v2)
  {
    v3 = v0[81];
    v6 = v0[79];
    v4 = v0[73];
    sub_24E856BE8(v3);
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    v0[49] = v6;
    v0[46] = v4;

    sub_24F9283D8();
    sub_24E857CC8((v0 + 46));
    sub_24F9283F8();
    v0[10] = v3;
    v0[13] = MEMORY[0x277D83B88];
    sub_24F9283D8();
    sub_24E857CC8((v0 + 10));
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();
  }

  return MEMORY[0x2822009F8](sub_24E855A0C, 0, 0);
}

uint64_t sub_24E855A0C()
{
  v1 = [*(v0 + 640) sharedConnection];
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 584);
    *(v0 + 753) = [v1 isOnDeviceAppInstallationAllowed];

    v1 = sub_24E855AA8;
    v2 = v5;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E855AA8()
{
  v1 = *(v0 + 753);
  v2 = *(v0 + 656);
  sub_24F92BF18();
  *(v0 + 672) = v2;
  if (v1 == *(v0 + 748))
  {
    v5 = *(v0 + 648) != *(v0 + 664);
  }

  else
  {
    v3 = *(v0 + 753);
    v7 = *(v0 + 632);
    v4 = *(v0 + 584);
    sub_24E856DA0(v3);
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    *(v0 + 136) = v7;
    *(v0 + 112) = v4;

    sub_24F9283D8();
    sub_24E857CC8(v0 + 112);
    sub_24F9283F8();
    *(v0 + 144) = v3;
    *(v0 + 168) = MEMORY[0x277D839B0];
    sub_24F9283D8();
    sub_24E857CC8(v0 + 144);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();

    v5 = 1;
  }

  *(v0 + 754) = v5;

  return MEMORY[0x2822009F8](sub_24E855CAC, 0, 0);
}

uint64_t sub_24E855CAC()
{
  v1 = [*(v0 + 640) sharedConnection];
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 584);
    *(v0 + 755) = [v1 isAppRemovalAllowed];

    v1 = sub_24E855D48;
    v2 = v5;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E855D48()
{
  v1 = *(v0 + 755);
  v2 = *(v0 + 672);
  sub_24F92BF18();
  *(v0 + 680) = v2;
  if (v1 == *(v0 + 752))
  {
    v5 = *(v0 + 754);
  }

  else
  {
    v3 = *(v0 + 755);
    v7 = *(v0 + 632);
    v4 = *(v0 + 584);
    sub_24E856DA0(v3);
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    *(v0 + 200) = v7;
    *(v0 + 176) = v4;

    sub_24F9283D8();
    sub_24E857CC8(v0 + 176);
    sub_24F9283F8();
    *(v0 + 208) = v3;
    *(v0 + 232) = MEMORY[0x277D839B0];
    sub_24F9283D8();
    sub_24E857CC8(v0 + 208);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();

    v5 = 1;
  }

  *(v0 + 756) = v5;

  return MEMORY[0x2822009F8](sub_24E855F40, 0, 0);
}

uint64_t sub_24E855F40()
{
  v1 = *(v0 + 584);
  *(v0 + 757) = [objc_opt_self() isRunningInStoreDemoMode];

  return MEMORY[0x2822009F8](sub_24E855FC0, v1, 0);
}

uint64_t sub_24E855FC0()
{
  v1 = *(v0 + 757);
  v2 = *(v0 + 680);
  sub_24F92BF18();
  *(v0 + 688) = v2;
  if (v1 == *(v0 + 749))
  {
    v5 = *(v0 + 756);
  }

  else
  {
    v3 = *(v0 + 757);
    v7 = *(v0 + 632);
    v4 = *(v0 + 584);
    sub_24E856DA0(v3);
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    *(v0 + 240) = v4;
    *(v0 + 264) = v7;

    sub_24F9283D8();
    sub_24E857CC8(v0 + 240);
    sub_24F9283F8();
    *(v0 + 296) = MEMORY[0x277D839B0];
    *(v0 + 272) = v3;
    sub_24F9283D8();
    sub_24E857CC8(v0 + 272);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();

    v5 = 1;
  }

  *(v0 + 758) = v5;
  *(v0 + 696) = *(*(v0 + 584) + 112);

  return MEMORY[0x2822009F8](sub_24E8561C0, 0, 0);
}

uint64_t sub_24E8561C0()
{
  v1 = [*(*(v0 + 696) + 16) ams_activeiTunesAccount];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 ams_isManagedAppleID];
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 759) = v3;
  v4 = *(v0 + 584);

  return MEMORY[0x2822009F8](sub_24E856264, v4, 0);
}

uint64_t sub_24E856264()
{
  v1 = *(v0 + 759);
  v2 = *(v0 + 688);
  sub_24F92BF18();
  *(v0 + 704) = v2;
  if (v1 == *(v0 + 750))
  {
    v5 = *(v0 + 758);
  }

  else
  {
    v3 = *(v0 + 759);
    v7 = *(v0 + 632);
    v4 = *(v0 + 584);
    sub_24E856DA0(v3);
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    *(v0 + 328) = v7;
    *(v0 + 304) = v4;

    sub_24F9283D8();
    sub_24E857CC8(v0 + 304);
    sub_24F9283F8();
    *(v0 + 360) = MEMORY[0x277D839B0];
    *(v0 + 336) = v3;
    sub_24F9283D8();
    sub_24E857CC8(v0 + 336);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();

    v5 = 1;
  }

  *(v0 + 760) = v5;

  return MEMORY[0x2822009F8](sub_24E856454, 0, 0);
}

uint64_t sub_24E856454()
{
  v1 = [*(v0 + 640) sharedConnection];
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 584);
    *(v0 + 761) = [v1 isAccountModificationAllowed];

    v1 = sub_24E8564F0;
    v2 = v5;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_24E8564F0()
{
  v1 = *(v0 + 761);
  v2 = *(v0 + 704);
  sub_24F92BF18();
  *(v0 + 712) = v2;
  if (v1 == *(v0 + 751))
  {
    v6 = *(v0 + 632);
    v4 = *(v0 + 584);
    v3 = 1;
    v7 = (*(v0 + 761) & 1) == 0;
    sub_24E856DA0(v7);
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    *(v0 + 424) = v6;
    *(v0 + 400) = v4;

    sub_24F9283D8();
    sub_24E857CC8(v0 + 400);
    sub_24F9283F8();
    *(v0 + 456) = MEMORY[0x277D839B0];
    *(v0 + 432) = v7;
    sub_24F9283D8();
    sub_24E857CC8(v0 + 432);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();
  }

  else
  {
    v3 = *(v0 + 760);
  }

  *(v0 + 762) = v3;

  return MEMORY[0x2822009F8](sub_24E8566E8, 0, 0);
}

uint64_t sub_24E8566E8()
{
  v1 = swift_task_alloc();
  v0[90] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD48);
  v0[91] = v2;
  *v1 = v0;
  v1[1] = sub_24E8567D4;
  v3 = v0[87];

  return MEMORY[0x2822007B8](v0 + 71, 0, 0, 0xD00000000000001BLL, 0x800000024FA48210, sub_24E857D30, v3, v2);
}

uint64_t sub_24E8567D4()
{

  return MEMORY[0x2822009F8](sub_24E8568D0, 0, 0);
}

uint64_t sub_24E8568D0()
{
  v1 = v0[73];
  v0[92] = v0[71];
  return MEMORY[0x2822009F8](sub_24E8568F4, v1, 0);
}

uint64_t sub_24E8568F4()
{
  v1 = *(v0 + 736);
  sub_24F92BF18();
  LOBYTE(v1) = sub_24EBADF38(v1, *(v0 + 576));

  if (v1)
  {
    v2 = *(v0 + 762);
  }

  else
  {
    v3 = *(v0 + 736);
    v11 = *(v0 + 632);
    v4 = *(v0 + 584);

    sub_24E858098(v5);

    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    *(v0 + 488) = v11;
    *(v0 + 464) = v4;

    sub_24F9283D8();
    sub_24E857CC8(v0 + 464);
    sub_24F9283F8();
    v6 = *(v3 + 16);

    *(v0 + 520) = MEMORY[0x277D83B88];
    *(v0 + 496) = v6;
    sub_24F9283D8();
    sub_24E857CC8(v0 + 496);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();
    v2 = 1;
  }

  v12 = v2;
  v7 = *(v0 + 632);
  v8 = *(v0 + 584);

  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  *(v0 + 552) = v7;
  *(v0 + 528) = v8;

  sub_24F9283D8();
  sub_24E857CC8(v0 + 528);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  *(v8 + 128) = 0;

  v9 = *(v0 + 8);

  return v9(v12);
}

uint64_t sub_24E856BE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F927D88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F93DE60;
  sub_24F927D78();
  v13 = v8;
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  sub_24F92C6A8();
  v11 = v2;
  v12 = &v14;
  sub_24F92BF08();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24E856DA0(char a1)
{
  v2 = v1;
  v4 = sub_24F927D88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F93DE60;
  sub_24F927D78();
  v13 = v8;
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  sub_24F92C6A8();
  v11 = v2;
  v12 = &v14;
  sub_24F92BF08();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24E8570F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD48);
  sub_24F92BF18();
  return v1;
}

void Restrictions.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void Restrictions.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_24E8576A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD48);
  sub_24F92BF18();
  return v1;
}

uint64_t sub_24E857954@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = swift_beginAccess();
  *a2 = *(a1 + 24);
  return result;
}

uint64_t sub_24E8579AC@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 24);
  return result;
}

uint64_t sub_24E857A10@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 24);
  return result;
}

uint64_t sub_24E857CC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E857D38(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  *(a1 + 24) = v3;
}

void *sub_24E857D9C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  swift_defaultActor_initialize();
  v7 = MEMORY[0x277D84F90];
  *(v1 + 120) = MEMORY[0x277D84F90];
  *(v1 + 128) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F378);
  swift_allocObject();
  *(v1 + 136) = sub_24EA50028(1000);
  v8 = sub_24E60B368(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F380);
  swift_allocObject();
  v2[18] = sub_24EA50028(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F388);
  swift_allocObject();
  v2[19] = sub_24EA4ED84(1);
  swift_allocObject();
  v2[20] = sub_24EA4ED84(1);
  swift_allocObject();
  v2[21] = sub_24EA4ED84(0);
  swift_allocObject();
  v2[22] = sub_24EA4ED84(0);
  swift_allocObject();
  v2[23] = sub_24EA4ED84(0);
  v2[14] = a1;
  v9 = type metadata accessor for Restrictions();
  v17.receiver = v2;
  v17.super_class = v9;

  v10 = objc_msgSendSuper2(&v17, sel_init);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = v10;

  v13 = sub_24EE3E14C(sub_24E858458, v11);

  v12[15] = v13;

  sub_24F92B818();
  v14 = sub_24F92B858();
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v12;
  sub_24EA99ECC(0, 0, v6, &unk_24F95FA10, v15);

  return v12;
}

uint64_t sub_24E858098(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F927D88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F93DE60;
  sub_24F927D78();
  v13 = v8;
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  sub_24F92C6A8();
  v11 = v2;
  v12 = &v14;
  sub_24F92BF08();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24E858250()
{
  result = qword_27F222930;
  if (!qword_27F222930)
  {
    sub_24F927D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222930);
  }

  return result;
}

unint64_t sub_24E8582A8()
{
  result = qword_27F222940;
  if (!qword_27F222940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F222940);
  }

  return result;
}

uint64_t sub_24E858328()
{
  v1 = *(v0 + 16);
  v2 = **(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_24E85837C()
{
  v1 = *(v0 + 16);
  v2 = **(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_24E8583D0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 24);
}

uint64_t sub_24E858420()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24E858464(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E614970;

  return sub_24E854FA0(a1);
}

uint64_t sub_24E858518(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24E854B20(a1, v4, v5, v6);
}

unint64_t sub_24E8585CC()
{
  result = qword_27F21F390;
  if (!qword_27F21F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F390);
  }

  return result;
}

uint64_t sub_24E85866C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24E8617A0(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = sub_24E86038C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_24E8586D8(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v90 = a1;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F458);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v85 = &v74 - v2;
  v3 = type metadata accessor for GSKVideo();
  MEMORY[0x28223BE20](v3);
  v84 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v81 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v74 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v86 = &v74 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218618);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v74 - v16;
  v18 = type metadata accessor for VideoConfiguration();
  v19 = *(v18 - 1);
  v20 = MEMORY[0x28223BE20](v18);
  v87 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v74 - v23;
  MEMORY[0x28223BE20](v22);
  v91 = &v74 - v25;
  sub_24E60169C(v88, v17, &qword_27F218618);
  v26 = *(v19 + 48);
  v88 = v19 + 48;
  if (v26(v17, 1, v18) == 1)
  {
    v77 = v17;
    v78 = v26;
    v80 = v9;
    v27 = sub_24F922348();
    v28 = *(*(v27 - 8) + 56);
    v29 = v86;
    v28(v86, 1, 1, v27);
    v30 = v18[5];
    v28(&v24[v30], 1, 1, v27);
    v31 = v18[12];
    v32 = v90;
    v76 = v13;
    v33 = &v24[v31];
    *v24 = 1;
    sub_24E61DA68(v29, &v24[v30], &qword_27F214148);
    *&v24[v18[6]] = 15;
    *&v24[v18[7]] = 15;
    v24[v18[8]] = 0;
    v24[v18[9]] = 1;
    v24[v18[10]] = 1;
    v24[v18[11]] = 0;
    *v33 = 0;
    v33[8] = 1;
    v34 = v76;
    v75 = *v24;
    sub_24E861CD4(v24);
    sub_24F921BE8();
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    v28(v34, 0, 1, v27);
    v79 = v3;
    v35 = v3[8];
    v74 = *(v32 + v3[7]);
    if (*(v32 + v35 + 8) == 1)
    {
      v36 = v86;
      v28(v86, 1, 1, v27);
      v37 = v18[5];
      v38 = v87;
      v28(&v87[v37], 1, 1, v27);
      v39 = &v38[v18[12]];
      *v38 = 1;
      sub_24E61DA68(v36, &v38[v37], &qword_27F214148);
      *&v38[v18[6]] = 15;
      v40 = v18[7];
      *&v38[v40] = 15;
      v38[v18[8]] = 0;
      v38[v18[9]] = 1;
      v38[v18[10]] = 1;
      v38[v18[11]] = 0;
      *v39 = 0;
      v39[8] = 1;
      v41 = *&v38[v40];
      sub_24E861CD4(v38);
    }

    else
    {
      v41 = *(v32 + v35);
    }

    v42 = v79;
    v43 = v91;
    v44 = *(v90 + v79[6]);
    v45 = v18[5];
    v28(&v91[v45], 1, 1, v27);
    v46 = &v43[v18[12]];
    *v43 = v75;
    sub_24E61DA68(v34, &v43[v45], &qword_27F214148);
    *&v43[v18[6]] = v74;
    *&v43[v18[7]] = v41;
    v43[v18[8]] = (v44 & 4) != 0;
    v43[v18[9]] = v44 & 1;
    v43[v18[10]] = (v44 & 2) != 0;
    v43[v18[11]] = 0;
    *v46 = 0;
    v46[8] = 1;
    v3 = v42;
    v47 = v77;
    v48 = v78(v77, 1, v18);
    v9 = v80;
    if (v48 != 1)
    {
      sub_24E601704(v47, &qword_27F218618);
    }
  }

  else
  {
    sub_24E861DFC(v17, v91);
  }

  v49 = v89;
  v50 = *(v89 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_videoViewModelManager);
  v51 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isAutoPlayVideoSettingsEnabled;
  v52 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_metricsPipeline;
  swift_beginAccess();
  sub_24E60169C(v49 + v52, v9, &qword_27F21C570);
  v53 = v90;
  v54 = (v90 + v3[11]);
  v56 = *v54;
  v55 = v54[1];
  v95 = *v54;
  v96 = v55;
  swift_bridgeObjectRetain_n();
  sub_24F92C7F8();
  swift_beginAccess();
  v57 = *(v50 + 16);
  if (!*(v57 + 16))
  {
    goto LABEL_12;
  }

  v58 = sub_24E76D934(v97);
  if ((v59 & 1) == 0)
  {

LABEL_12:
    sub_24E6585F8(v97);
    v61 = v53;
    v62 = v84;
    sub_24E861D30(v61, v84, type metadata accessor for GSKVideo);
    v63 = v49 + v51;
    v64 = v85;
    (*(v82 + 16))(v85, v63, v83);
    v90 = v55;
    v65 = v56;
    v66 = v9;
    v67 = v87;
    sub_24E861D30(v91, v87, type metadata accessor for VideoConfiguration);
    v68 = v81;
    sub_24E60169C(v66, v81, &qword_27F21C570);
    type metadata accessor for GSKVideoViewModel();
    swift_allocObject();
    v69 = v67;
    v9 = v66;
    v56 = v65;
    v55 = v90;
    v60 = sub_24E8816F4(v62, v64, v69, v68);
    goto LABEL_13;
  }

  v60 = *(*(v57 + 56) + 8 * v58);

  sub_24E6585F8(v97);

LABEL_13:
  *(v60 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_delegate + 8) = &off_2861D2730;
  swift_unknownObjectWeakAssign();
  v70 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_configuration;
  swift_beginAccess();
  v71 = v91;
  sub_24E861D98(v91, v60 + v70);
  swift_endAccess();
  v93 = v56;
  v94 = v55;
  sub_24F92C7F8();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v92 = *(v50 + 16);
  *(v50 + 16) = 0x8000000000000000;
  sub_24E81C7F8(v60, v97, isUniquelyReferenced_nonNull_native);
  sub_24E6585F8(v97);
  *(v50 + 16) = v92;
  swift_endAccess();
  sub_24E601704(v9, &qword_27F21C570);
  sub_24E861CD4(v71);
  return v60;
}

uint64_t sub_24E85907C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24E8590F0()
{
  v7 = sub_24F92BEE8();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F92BE88();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24F927DC8();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_24E74EC40();
  sub_24F927DB8();
  v8 = MEMORY[0x277D84F90];
  sub_24E861C8C(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_24F92BF38();
  qword_27F21F398 = result;
  return result;
}

char *sub_24E859354(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v75 = a2;
  v76 = a1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F460);
  v5 = *(v4 - 8);
  v73 = v4;
  v74 = v5;
  MEMORY[0x28223BE20](v4);
  v72 = &ObjectType - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F468);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &ObjectType - v8;
  v9 = sub_24F92C0E8();
  v10 = *(v9 - 8);
  v63 = v9;
  v64 = v10;
  MEMORY[0x28223BE20](v9);
  v61 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F470);
  v13 = *(v12 - 8);
  v68 = v12;
  v69 = v13;
  MEMORY[0x28223BE20](v12);
  v62 = &ObjectType - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F478);
  v16 = *(v15 - 8);
  v70 = v15;
  v71 = v16;
  MEMORY[0x28223BE20](v15);
  v65 = &ObjectType - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &ObjectType - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &ObjectType - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &ObjectType - v26;
  v3[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator__isGlobalAutoPlayEnabled] = 1;
  v3[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isAutoPlayEnabled] = 1;
  v3[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isAutoPlayActive] = 1;
  v3[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_shouldLoopAutoPlayback] = 1;
  v28 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_metricsPipeline;
  v29 = sub_24F929158();
  (*(*(v29 - 8) + 56))(&v3[v28], 1, 1, v29);
  v30 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_visibleVideoFrames;
  v31 = MEMORY[0x277D84F90];
  *&v3[v30] = sub_24E60AF2C(MEMORY[0x277D84F90]);
  *&v3[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_autoPlayExclusions] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_playbackQueue] = v31;
  v32 = &v3[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activePlaybackIndex];
  *v32 = 0;
  v32[8] = 1;
  *&v3[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activeVideo] = 0;
  v33 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator__isScrolling;
  LOBYTE(v78) = 0;
  sub_24F923058();
  (*(v25 + 32))(&v3[v33], v27, v24);
  *&v3[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_networkMonitorTask] = 0;
  *&v3[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_cancellables] = v31;
  v3[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isNetworkConstrained] = 0;
  *&v3[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_playbackCoalescingWaitTime] = 0x3FB999999999999ALL;
  *&v3[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_playbackWorkItem] = 0;
  swift_beginAccess();
  v34 = v75;
  sub_24E861B58(v75, &v3[v28]);
  swift_endAccess();
  sub_24E60169C(v34, v23, &qword_27F21C570);
  type metadata accessor for GSKVideoViewModelManager();
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_videoViewModelManager] = sub_24E78E9B0(v23);
  v3[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isVideoAutoplayAccessibilityEnabled] = UIAccessibilityIsVideoAutoplayEnabled();
  v35 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isAutoPlayVideoSettingsEnabled;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F458);
  v66 = *(v60 - 8);
  (*(v66 + 16))(&v3[v35], v76, v60);
  v77.receiver = v3;
  v77.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v77, sel_init);
  v37 = sub_24F92B858();
  (*(*(v37 - 8) + 56))(v20, 1, 1, v37);
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v38;
  v40 = v36;
  *&v40[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_networkMonitorTask] = sub_24EA998B8(0, 0, v20, &unk_24F95FBE8, v39);

  v41 = [objc_opt_self() defaultCenter];
  v42 = v61;
  sub_24F92C0F8();

  sub_24E861C8C(&qword_27F21F480, MEMORY[0x277CC9DB0]);
  sub_24E861C8C(&qword_27F21F488, MEMORY[0x277CC8900]);
  v44 = v62;
  v43 = v63;
  sub_24F923138();
  (*(v64 + 8))(v42, v43);
  sub_24E74EC40();
  v45 = sub_24F92BEF8();
  v78 = v45;
  v46 = sub_24F92BEB8();
  v47 = *(v46 - 8);
  v63 = *(v47 + 56);
  v64 = v47 + 56;
  v48 = v67;
  v63(v67, 1, 1, v46);
  sub_24E602068(&qword_27F21F490, &qword_27F21F470);
  v61 = sub_24E861C8C(&qword_27F21F498, sub_24E74EC40);
  v49 = v65;
  v50 = v68;
  sub_24F923118();
  sub_24E601704(v48, &qword_27F21F468);

  (*(v69 + 8))(v44, v50);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = MEMORY[0x277CBCD60];
  sub_24E602068(&qword_27F21F4A0, &qword_27F21F478);
  v51 = v70;
  sub_24F923148();

  (*(v71 + 8))(v49, v51);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F4A8);
  sub_24E602068(&qword_27F21F4B0, &qword_27F21F4A8);
  sub_24F922F68();
  swift_endAccess();

  v52 = sub_24F92BEF8();
  v78 = v52;
  v53 = v48;
  v63(v48, 1, 1, v46);
  sub_24E602068(&qword_27F21F4B8, &qword_27F21F458);
  v54 = v72;
  v55 = v60;
  v56 = v76;
  sub_24F923118();
  sub_24E601704(v53, &qword_27F21F468);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_24E602068(&qword_27F21F4C0, &qword_27F21F460);
  v57 = v73;
  sub_24F923148();

  (*(v74 + 8))(v54, v57);
  swift_beginAccess();
  sub_24F922F68();
  swift_endAccess();

  sub_24E601704(v75, &qword_27F21C570);
  (*(v66 + 8))(v56, v55);
  return v40;
}