uint64_t sub_24F6FB73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v11;
  v13 = *(*(*(v10 + 16) - 8) + 64);
  v14 = (*(*(*(v10 + 16) - 8) + 80) + 32) & ~*(*(*(v10 + 16) - 8) + 80);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA20) - 8);
  v16 = (v14 + v13 + *(v15 + 80)) & ~*(v15 + 80);
  v17 = *(v15 + 64);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA18) - 8);
  v19 = (v16 + v17 + *(v18 + 80)) & ~*(v18 + 80);
  v20 = (*(v18 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8) - 8);
  v22 = (v20 + *(v21 + 80) + 9) & ~*(v21 + 80);
  v23 = v10 + v20;
  v24 = *(v10 + v20);
  v25 = *(v23 + 8);
  v26 = swift_task_alloc();
  *(v12 + 16) = v26;
  *v26 = v12;
  v26[1] = sub_24E614970;

  return sub_24F6F9730(a1, a2, v10 + v14, v10 + v16, v10 + v19, v24, v25, v10 + v22, a9, a10);
}

uint64_t ChallengesHistoryDataIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 104) = a1;
  *(v3 + 112) = a3;
  v4 = *(a2 + 8);
  *(v3 + 120) = *a2;
  *(v3 + 128) = v4;
  *(v3 + 208) = *(a2 + 16);
  *(v3 + 136) = *(a2 + 24);

  return MEMORY[0x2822009F8](sub_24F6FBA14, 0, 0);
}

uint64_t sub_24F6FBA14()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 120);
    *(v0 + 184) = v1;
    v3 = swift_task_alloc();
    *(v0 + 192) = v3;
    *v3 = v0;
    v3[1] = sub_24F6FBD80;
    v4 = *(v0 + 136);
    v5 = *(v0 + 144);
    v6 = *(v0 + 208);
    v7 = *(v0 + 112);

    return sub_24F6FC19C(v0 + 16, v2, v1, v6, v4, v5, v7);
  }

  else
  {
    *(v0 + 152) = sub_24F92B7F8();
    *(v0 + 160) = sub_24F92B7E8();
    v10 = sub_24F92B778();

    return MEMORY[0x2822009F8](sub_24F6FBB3C, v10, v9);
  }
}

uint64_t sub_24F6FBB3C()
{

  type metadata accessor for LocalPlayerProvider();
  sub_24F928F28();
  *(v0 + 168) = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_24F6FBBC4, 0, 0);
}

uint64_t sub_24F6FBBC4()
{
  *(v0 + 176) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F6FBC50, v2, v1);
}

uint64_t sub_24F6FBC50()
{
  v1 = *(v0 + 168);

  swift_getKeyPath();
  *(v0 + 96) = v1;
  sub_24E69A53C();
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  *(v0 + 184) = v3;
  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *v5 = v0;
  v5[1] = sub_24F6FBD80;
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);
  v8 = *(v0 + 208);
  v9 = *(v0 + 112);

  return sub_24F6FC19C(v0 + 16, v4, v3, v8, v6, v7, v9);
}

uint64_t sub_24F6FBD80()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_24F6FBFFC;
  }

  else
  {
    v2 = sub_24F6FBEB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F6FBEB4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = *(v0 + 16);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E778);
  v4 = sub_24F9220B8();
  v5 = sub_24F92BD98();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengesHistoryDataIntentImplementation fetch history data fetched", v6, 2u);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v7 = *(v0 + 104);

  *v7 = v11;
  *(v7 + 16) = v1;
  *(v7 + 24) = v2;
  *(v7 + 32) = v10;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24F6FBFFC()
{
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 200);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengesHistoryDataIntentImplementation fetch history data failed: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24F6FC19C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 1680) = a7;
  *(v7 + 1672) = a6;
  *(v7 + 1624) = a5;
  *(v7 + 1856) = a4;
  *(v7 + 1576) = a3;
  *(v7 + 1528) = a2;
  *(v7 + 1480) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D8B8);
  *(v7 + 1688) = swift_task_alloc();
  v8 = type metadata accessor for ChallengesHistoryData.GameHistory(0);
  *(v7 + 1696) = v8;
  *(v7 + 1704) = *(v8 - 8);
  *(v7 + 1712) = swift_task_alloc();
  *(v7 + 1720) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D8C0);
  *(v7 + 1728) = swift_task_alloc();
  v9 = type metadata accessor for ChallengesHistoryData.FriendHistory(0);
  *(v7 + 1736) = v9;
  *(v7 + 1744) = *(v9 - 8);
  *(v7 + 1752) = swift_task_alloc();
  *(v7 + 1760) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F6FC358, 0, 0);
}

uint64_t sub_24F6FC358()
{
  v1 = *(v0 + 1672);
  v2 = *(v0 + 1624);
  v3 = *(v0 + 1856);
  v4 = *(v0 + 1576);
  v5 = *(v0 + 1528);
  v6 = swift_task_alloc();
  *(v0 + 1768) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  *(v6 + 48) = v1;
  v7 = swift_task_alloc();
  *(v0 + 1776) = v7;
  v8 = sub_24E69A5C4(0, &qword_27F24D8C8);
  *v7 = v0;
  v7[1] = sub_24F6FC48C;

  return MEMORY[0x2822008A0](v0 + 1336, 0, 0, 0xD000000000000037, 0x800000024FA7C670, sub_24F6FE2A8, v6, v8);
}

uint64_t sub_24F6FC48C()
{
  *(*v1 + 1784) = v0;

  if (v0)
  {
    v2 = sub_24F6FCA00;
  }

  else
  {

    v2 = sub_24F6FC5A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F6FC5A8()
{
  v1 = v0[167];
  v0[224] = v1;
  v2 = [v1 playerCounts];
  v41 = v0;
  v0[225] = sub_24E69A5C4(0, &qword_27F24D8D0);
  v3 = sub_24F92B5A8();

  if (v3 >> 62)
  {
    v4 = sub_24F92C738();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v42 = MEMORY[0x277D84F90];
    v6 = sub_24F4578E0(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      goto LABEL_32;
    }

    v40 = v1;
    v10 = 0;
    v11 = v42;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x253052270](v10, v3);
      }

      else
      {
        v12 = *(v3 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v12 playerID];
      v15 = sub_24F92B0D8();
      v17 = v16;

      v19 = *(v42 + 16);
      v18 = *(v42 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_24F4578E0((v18 > 1), v19 + 1, 1);
      }

      ++v10;
      *(v42 + 16) = v19 + 1;
      v20 = v42 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
    }

    while (v4 != v10);

    v1 = v40;
    v5 = MEMORY[0x277D84F90];
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v21 = v41[210];
  v22 = swift_allocObject();
  v41[226] = v22;
  *(v22 + 16) = v11;
  *(v22 + 24) = 0;
  *(v22 + 32) = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE30);
  swift_asyncLet_begin();
  v23 = [v1 gameCounts];
  v41[227] = sub_24E69A5C4(0, &qword_27F24D8D8);
  v24 = sub_24F92B5A8();

  if (v24 >> 62)
  {
    v25 = sub_24F92C738();
    if (v25)
    {
LABEL_16:
      v6 = sub_24F4578E0(0, v25 & ~(v25 >> 63), 0);
      if ((v25 & 0x8000000000000000) == 0)
      {
        v26 = 0;
        v27 = v5;
        do
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x253052270](v26, v24);
          }

          else
          {
            v28 = *(v24 + 8 * v26 + 32);
          }

          v29 = v28;
          v30 = [v28 bundleID];
          v31 = sub_24F92B0D8();
          v33 = v32;

          v35 = *(v27 + 16);
          v34 = *(v27 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_24F4578E0((v34 > 1), v35 + 1, 1);
          }

          ++v26;
          *(v27 + 16) = v35 + 1;
          v36 = v27 + 16 * v35;
          *(v36 + 32) = v31;
          *(v36 + 40) = v33;
        }

        while (v25 != v26);

        goto LABEL_28;
      }

LABEL_32:
      __break(1u);
      return MEMORY[0x282200930](v6, v7, v8, v9);
    }
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_16;
    }
  }

  v27 = MEMORY[0x277D84F90];
LABEL_28:
  v37 = v41[210];
  v38 = swift_allocObject();
  v41[228] = v38;
  *(v38 + 16) = v27;
  *(v38 + 24) = 0;
  *(v38 + 32) = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE38);
  swift_asyncLet_begin();
  v8 = sub_24F6FCAB8;
  v6 = (v41 + 2);
  v7 = v41 + 173;
  v9 = v41 + 162;

  return MEMORY[0x282200930](v6, v7, v8, v9);
}

uint64_t sub_24F6FCA00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F6FCAB8()
{
  v1[229] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 179, sub_24F6FD2C4, v1 + 168);
  }

  else
  {
    v1[230] = v1[173];

    return MEMORY[0x282200930](v1 + 82, v1 + 179, sub_24F6FCB6C, v1 + 180);
  }
}

uint64_t sub_24F6FCB6C()
{
  *(v1 + 1848) = v0;
  if (v0)
  {
    v2 = sub_24F6FD3EC;
  }

  else
  {
    v2 = sub_24F6FCBA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F6FCBA0()
{
  v56 = v0;
  v1 = *(v0 + 1792);
  v2 = *(v0 + 1672);
  v53 = *(v0 + 1432);

  v3 = [v1 totalCount];
  v45 = [v3 integerValue];

  v46 = v2;
  if (v2)
  {
    v44 = 0;
  }

  else
  {
    v4 = [*(v0 + 1792) totalGames];
    v44 = [v4 integerValue];
  }

  v5 = *(v0 + 1792);
  v6 = [v5 totalFriends];
  v43 = [v6 integerValue];

  v7 = [v5 playerCounts];
  v8 = sub_24F92B5A8();

  v9 = v8;
  if (v8 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v9 = v23)
  {
    v11 = 0;
    v49 = v9 & 0xFFFFFFFFFFFFFF8;
    v51 = v9 & 0xC000000000000001;
    v48 = *(v0 + 1744);
    v54 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v51)
      {
        v12 = v9;
        v9 = MEMORY[0x253052270](v11);
      }

      else
      {
        if (v11 >= *(v49 + 16))
        {
          goto LABEL_21;
        }

        v12 = v9;
        v9 = *(v9 + 8 * v11 + 32);
      }

      v13 = v9;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = *(v0 + 1840);
      v16 = *(v0 + 1736);
      v17 = *(v0 + 1728);
      v55[0] = v9;
      sub_24F6FD708(v55, v15, v17);

      if ((*(v48 + 48))(v17, 1, v16) == 1)
      {
        sub_24E601704(*(v0 + 1728), &qword_27F24D8C0);
      }

      else
      {
        v18 = *(v0 + 1760);
        v19 = *(v0 + 1752);
        sub_24F6FE42C(*(v0 + 1728), v18, type metadata accessor for ChallengesHistoryData.FriendHistory);
        sub_24F6FE42C(v18, v19, type metadata accessor for ChallengesHistoryData.FriendHistory);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_24E61AA5C(0, v54[2] + 1, 1, v54);
        }

        v21 = v54[2];
        v20 = v54[3];
        if (v21 >= v20 >> 1)
        {
          v54 = sub_24E61AA5C(v20 > 1, v21 + 1, 1, v54);
        }

        v22 = *(v0 + 1752);
        v54[2] = v21 + 1;
        sub_24F6FE42C(v22, v54 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v21, type metadata accessor for ChallengesHistoryData.FriendHistory);
      }

      ++v11;
      v9 = v12;
      if (v14 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v23 = v9;
    i = sub_24F92C738();
  }

  v54 = MEMORY[0x277D84F90];
LABEL_24:
  v24 = *(v0 + 1792);

  v25 = [v24 gameCounts];
  v26 = sub_24F92B5A8();

  if (v26 >> 62)
  {
    goto LABEL_42;
  }

  for (j = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_24F92C738())
  {
    v28 = 0;
    v50 = v26 & 0xFFFFFFFFFFFFFF8;
    v52 = v26 & 0xC000000000000001;
    v47 = *(v0 + 1704);
    v29 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v52)
      {
        v30 = MEMORY[0x253052270](v28, v26);
      }

      else
      {
        if (v28 >= *(v50 + 16))
        {
          goto LABEL_41;
        }

        v30 = *(v26 + 8 * v28 + 32);
      }

      v31 = v30;
      v32 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v33 = v26;
      v34 = *(v0 + 1696);
      v35 = *(v0 + 1688);
      v55[0] = v30;
      sub_24F6FDA14(v55, v53, v35);

      if ((*(v47 + 48))(v35, 1, v34) == 1)
      {
        sub_24E601704(*(v0 + 1688), &qword_27F24D8B8);
        v26 = v33;
      }

      else
      {
        v36 = *(v0 + 1720);
        v37 = *(v0 + 1712);
        sub_24F6FE42C(*(v0 + 1688), v36, type metadata accessor for ChallengesHistoryData.GameHistory);
        sub_24F6FE42C(v36, v37, type metadata accessor for ChallengesHistoryData.GameHistory);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_24E61AA34(0, v29[2] + 1, 1, v29);
        }

        v26 = v33;
        v39 = v29[2];
        v38 = v29[3];
        if (v39 >= v38 >> 1)
        {
          v29 = sub_24E61AA34(v38 > 1, v39 + 1, 1, v29);
        }

        v40 = *(v0 + 1712);
        v29[2] = v39 + 1;
        sub_24F6FE42C(v40, v29 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v39, type metadata accessor for ChallengesHistoryData.GameHistory);
      }

      ++v28;
      if (v32 == j)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  v29 = MEMORY[0x277D84F90];
LABEL_44:
  v41 = *(v0 + 1480);

  *v41 = v45;
  *(v41 + 8) = v44;
  *(v41 + 16) = v46 != 0;
  *(v41 + 24) = v43;
  *(v41 + 32) = v54;
  *(v41 + 40) = v29;

  return MEMORY[0x282200920](v0 + 656, v0 + 1432, sub_24F6FD190, v0 + 1584);
}

uint64_t sub_24F6FD1E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F6FD31C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F6FD3EC()
{

  return MEMORY[0x282200920](v0 + 656, v0 + 1432, sub_24F6FD458, v0 + 1488);
}

uint64_t sub_24F6FD4B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F6FD580(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_24E7E3A7C;

  return sub_24E6473DC(a2, a3, a4);
}

uint64_t sub_24F6FD644(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_24E67D244;

  return sub_24E64768C(a2, a3, a4);
}

uint64_t sub_24F6FD708@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v31 - v12;
  v14 = *a1;
  v15 = [v14 playerID];
  v16 = sub_24F92B0D8();
  v18 = v17;

  if (*(a2 + 16))
  {
    v19 = sub_24E76D644(v16, v18);
    v21 = v20;

    if (v21)
    {
      sub_24E7E38E0(*(a2 + 56) + *(v7 + 72) * v19, v9, type metadata accessor for Player);
      sub_24F6FE42C(v9, v13, type metadata accessor for Player);
      sub_24E7E38E0(v13, a3, type metadata accessor for Player);
      v22 = [v14 count];
      v23 = [v22 integerValue];

      sub_24F1B20A0(v13, type metadata accessor for Player);
      v24 = type metadata accessor for ChallengesHistoryData.FriendHistory(0);
      *(a3 + *(v24 + 20)) = v23;
      return (*(*(v24 - 8) + 56))(a3, 0, 1, v24);
    }
  }

  else
  {
  }

  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v26 = sub_24F9220D8();
  __swift_project_value_buffer(v26, qword_27F39E778);
  v27 = sub_24F9220B8();
  v28 = sub_24F92BDB8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_24E5DD000, v27, v28, "ChallengesHistoryDataIntentImplementation friendHistories: Failed to find player", v29, 2u);
    MEMORY[0x2530542D0](v29, -1, -1);
  }

  v30 = type metadata accessor for ChallengesHistoryData.FriendHistory(0);
  return (*(*(v30 - 8) + 56))(a3, 1, 1, v30);
}

uint64_t sub_24F6FDA14@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Game();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6 - 8).n128_u64[0];
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = [v11 bundleID];
  v13 = sub_24F92B0D8();
  v15 = v14;

  if (*(a2 + 16))
  {
    v16 = sub_24E76D644(v13, v15);
    v18 = v17;

    if (v18)
    {
      sub_24E7E38E0(*(a2 + 56) + *(v7 + 72) * v16, v10, type metadata accessor for Game);
      sub_24E7E38E0(v10, a3, type metadata accessor for Game);
      v19 = [v11 count];
      v20 = [v19 integerValue];

      sub_24F1B20A0(v10, type metadata accessor for Game);
      v21 = type metadata accessor for ChallengesHistoryData.GameHistory(0);
      *(a3 + *(v21 + 20)) = v20;
      return (*(*(v21 - 8) + 56))(a3, 0, 1, v21);
    }
  }

  else
  {
  }

  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v23 = sub_24F9220D8();
  __swift_project_value_buffer(v23, qword_27F39E778);
  v24 = v11;
  v25 = sub_24F9220B8();
  v26 = sub_24F92BDB8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v36 = v28;
    *v27 = 136315138;
    v29 = [v24 bundleID];
    v30 = sub_24F92B0D8();
    v32 = v31;

    v33 = sub_24E7620D4(v30, v32, &v36);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_24E5DD000, v25, v26, "ChallengesHistoryDataIntentImplementation gameHistories: Failed to find game for bundleID: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x2530542D0](v28, -1, -1);
    MEMORY[0x2530542D0](v27, -1, -1);
  }

  v34 = type metadata accessor for ChallengesHistoryData.GameHistory(0);
  return (*(*(v34 - 8) + 56))(a3, 1, 1, v34);
}

void sub_24F6FDD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v18 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D8E0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = [objc_opt_self() proxyForLocalPlayer];
  v19 = [v12 challengeServicePrivate];

  v13 = sub_24F92B098();
  v14 = sub_24F92B098();

  if (a6)
  {
    a6 = sub_24F92B098();
  }

  (*(v9 + 16))(v11, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v11, v8);
  aBlock[4] = sub_24F6FE528;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E6251C8;
  aBlock[3] = &block_descriptor_170;
  v17 = _Block_copy(aBlock);

  [v19 getLeaderboardCompletedChallengeSummaryForPlayerID:v13 type:v14 bundleID:a6 completionHandler:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();
}

uint64_t sub_24F6FE000(void *a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v4 = sub_24F9220D8();
    __swift_project_value_buffer(v4, qword_27F39E778);
    v5 = a2;
    v6 = sub_24F9220B8();
    v7 = sub_24F92BDB8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_24E5DD000, v6, v7, "ChallengesHistoryDataIntentImplementation fetch history summary internal failed: %@", v8, 0xCu);
      sub_24E601704(v9, &qword_27F227B20);
      MEMORY[0x2530542D0](v9, -1, -1);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    goto LABEL_7;
  }

  if (!a1)
  {
    sub_24F6FE5CC();
    swift_allocError();
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D8E0);
    return sub_24F92B788();
  }

  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D8E0);
  return sub_24F92B798();
}

uint64_t sub_24F6FE1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return ChallengesHistoryDataIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t sub_24F6FE2BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F6FD580(a1, v4, v5, v6);
}

uint64_t sub_24F6FE374(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F6FD644(a1, v4, v5, v6);
}

uint64_t sub_24F6FE42C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F6FE494()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D8E0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F6FE528(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D8E0);

  return sub_24F6FE000(a1, a2);
}

uint64_t block_copy_helper_170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24F6FE5CC()
{
  result = qword_27F24D8E8;
  if (!qword_27F24D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D8E8);
  }

  return result;
}

unint64_t sub_24F6FE634()
{
  result = qword_27F24D8F0;
  if (!qword_27F24D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D8F0);
  }

  return result;
}

void sub_24F6FE69C(void *a1)
{
  v3 = sub_24F91F308();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v1 + 64) rootLayer];
  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = v8;
  v13[0] = v3;
  sub_24F6FEB28();
  v10 = [v9 mp:swift_getObjCClassFromMetadata() allLayersWithKindOfClass:?];

  if (!v10)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_24F92C348();
  sub_24F91F2F8();
  while (v16)
  {
    sub_24E612B0C(&v15, &v14);
    swift_dynamicCast();
    v11 = v13[1];
    v12 = [a1 CGColor];
    [v11 setFillColor_];

    sub_24F91F2F8();
  }

  (*(v4 + 8))(v7, v13[0]);
}

id sub_24F6FE878()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 64);
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v5 = [v4 layer];
  [v3 addToLayer:v5 onTop:1 gravity:v1];

  if (v2 == 1)
  {
    [v3 play];
  }

  return v4;
}

void sub_24F6FE93C()
{
  v3 = *(v0 + 48);
  v1 = *(v0 + 72);
  if (v1)
  {

    v1(v2);
    sub_24F6FE69C(*(&v3 + 1));

    sub_24E824448(v1);
  }
}

uint64_t sub_24F6FE9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F6FEB74();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24F6FEA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F6FEB74();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24F6FEAA8()
{
  sub_24F6FEB74();
  sub_24F924DC8();
  __break(1u);
}

unint64_t sub_24F6FEAD4()
{
  result = qword_27F24D8F8;
  if (!qword_27F24D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D8F8);
  }

  return result;
}

unint64_t sub_24F6FEB28()
{
  result = qword_27F24D900;
  if (!qword_27F24D900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F24D900);
  }

  return result;
}

unint64_t sub_24F6FEB74()
{
  result = qword_27F24D908;
  if (!qword_27F24D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D908);
  }

  return result;
}

unint64_t sub_24F6FEBD8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6554686372616573;
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 40) = 0xEA00000000006D72;
  v17 = *v1;
  v4 = v17;
  v5 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v5;
  *(inited + 48) = v4;
  *(inited + 88) = 0x6974736567677573;
  *(inited + 96) = 0xEB00000000736E6FLL;
  v18 = *(v1 + 2);
  v6 = v18;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247208);
  v7 = sub_24F6FF4DC(&qword_27F24D930, sub_24F536BD8);
  *(inited + 104) = v6;
  *(inited + 136) = v7;
  strcpy((inited + 144), "friendsLookup");
  *(inited + 158) = -4864;
  v16 = *(v1 + 3);
  v8 = v16;
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE30);
  v9 = sub_24F6FF554();
  *(inited + 160) = v8;
  *(inited + 192) = v9;
  *(inited + 200) = 0x69766E49746E6573;
  *(inited + 208) = 0xEF736E6F69746174;
  v15 = *(v1 + 4);
  v10 = v15;
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  *(inited + 248) = sub_24E61B71C(&qword_27F213798);
  *(inited + 216) = v10;
  sub_24E614DB0(&v17, v14);
  sub_24E60169C(&v18, v14, &qword_27F247208);
  sub_24E60169C(&v16, v14, &qword_27F21DE30);
  sub_24E60169C(&v15, v14, &unk_27F2285F0);
  v11 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v12 = sub_24E80FFAC(v11);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v12;
  return result;
}

uint64_t sub_24F6FEE9C()
{
  v1 = 0x6554686372616573;
  v2 = 0x4C73646E65697266;
  if (*v0 != 2)
  {
    v2 = 0x69766E49746E6573;
  }

  if (*v0)
  {
    v1 = 0x6974736567677573;
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

uint64_t sub_24F6FEF3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F6FF70C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F6FEF64(uint64_t a1)
{
  v2 = sub_24F6FF3E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6FEFA0(uint64_t a1)
{
  v2 = sub_24F6FF3E0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24F6FEFFC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24F6FF05C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_24F6FF05C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D910);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6FF3E0();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v18 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247208);
  v19 = 1;
  sub_24F6FF4DC(&qword_27F24D920, sub_24F536D7C);
  sub_24F92CC68();
  v17 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE30);
  v19 = 2;
  sub_24F6FF434();
  sub_24F92CC68();
  v16 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  v19 = 3;
  sub_24E61B71C(&qword_27F216420);
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v12 = v20;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v17;
  *a2 = v18;
  a2[1] = v11;
  v15 = v16;
  a2[2] = v14;
  a2[3] = v15;
  a2[4] = v12;
  return result;
}

unint64_t sub_24F6FF3E0()
{
  result = qword_27F24D918;
  if (!qword_27F24D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D918);
  }

  return result;
}

unint64_t sub_24F6FF434()
{
  result = qword_27F24D928;
  if (!qword_27F24D928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DE30);
    sub_24E61C064(&qword_27F213E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D928);
  }

  return result;
}

uint64_t sub_24F6FF4DC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247208);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F6FF554()
{
  result = qword_27F24D938;
  if (!qword_27F24D938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21DE30);
    sub_24E61C064(&qword_27F215388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D938);
  }

  return result;
}

unint64_t sub_24F6FF608()
{
  result = qword_27F24D940;
  if (!qword_27F24D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D940);
  }

  return result;
}

unint64_t sub_24F6FF660()
{
  result = qword_27F24D948;
  if (!qword_27F24D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D948);
  }

  return result;
}

unint64_t sub_24F6FF6B8()
{
  result = qword_27F24D950;
  if (!qword_27F24D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24D950);
  }

  return result;
}

uint64_t sub_24F6FF70C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6554686372616573 && a2 == 0xEA00000000006D72;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C73646E65697266 && a2 == 0xED000070756B6F6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69766E49746E6573 && a2 == 0xEF736E6F69746174)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24F6FF88C(uint64_t a1)
{
  type metadata accessor for ShelfPaginationController(0);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC12GameStoreKitP33_53DA2F17A7B96116B1142914DE5099ED25ShelfPaginationController_shelf;
  v4 = type metadata accessor for GSKShelf();
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  v5 = v2 + OBJC_IVAR____TtC12GameStoreKitP33_53DA2F17A7B96116B1142914DE5099ED25ShelfPaginationController_nextPageIntent;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  *(v2 + OBJC_IVAR____TtC12GameStoreKitP33_53DA2F17A7B96116B1142914DE5099ED25ShelfPaginationController_isFetching) = 0;
  v6 = OBJC_IVAR____TtC12GameStoreKitP33_53DA2F17A7B96116B1142914DE5099ED25ShelfPaginationController_shelfUpdate;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D988);
  swift_allocObject();
  *(v2 + v6) = sub_24F9280D8();
  *(v2 + 16) = a1;

  return v2;
}

uint64_t sub_24F6FF97C@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for PaginatedShelfIntentView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v44 = v5;
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D9C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v36 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D9C8);
  v46 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v11 = v36 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D9D0);
  MEMORY[0x28223BE20](v47);
  v39 = v36 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D9D8);
  v14 = *(v13 - 8);
  v48 = v13;
  v49 = v14;
  MEMORY[0x28223BE20](v13);
  v45 = v36 - v15;
  v38 = *(v3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D990);
  v37 = v1;
  sub_24F926F58();
  v40 = v6;
  v41 = type metadata accessor for PaginatedShelfIntentView;
  sub_24F70418C(v1, v6, type metadata accessor for PaginatedShelfIntentView);
  v16 = *(v4 + 80);
  v17 = (v16 + 16) & ~v16;
  v42 = v17;
  v43 = v16;
  v18 = swift_allocObject();
  sub_24F7057E8(v6, v18 + v17, type metadata accessor for PaginatedShelfIntentView);
  v36[1] = type metadata accessor for GSKShelf();
  sub_24F921BC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292B0);
  sub_24F921C58();
  sub_24F703A3C(&qword_27F2477E8, MEMORY[0x277D7EC50]);
  sub_24E602068(&qword_27F2292A8, &qword_27F2292B0);
  sub_24F703A3C(&qword_27F248440, MEMORY[0x277D7EC80]);
  sub_24F921918();
  v19 = v37;
  sub_24F926F58();
  v20 = sub_24E602068(&qword_27F24D9E0, &qword_27F24D9C8);
  v21 = sub_24E7C5EC0();
  v22 = sub_24E602068(&qword_27F21EDE0, &qword_27F213768);
  v23 = v39;
  v24 = v51;
  sub_24F925FD8();
  sub_24E601704(v9, &qword_27F24D9C0);
  (*(v46 + 8))(v11, v24);
  v52 = v24;
  v53 = &type metadata for PaginatedShelfIntent;
  v54 = v20;
  v55 = v21;
  v56 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_24F703A3C(&qword_27F238838, type metadata accessor for GSKShelf);
  v27 = v45;
  sub_24F923FB8();
  sub_24F703A84(v23);
  v28 = v19;
  v30 = v40;
  v29 = v41;
  sub_24F70418C(v28, v40, v41);
  v31 = v42;
  v32 = swift_allocObject();
  sub_24F7057E8(v30, v32 + v31, v29);
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D9E8);
  v52 = v51;
  v53 = v33;
  v54 = v20;
  v55 = OpaqueTypeConformance2;
  v56 = v22;
  v57 = v26;
  swift_getOpaqueTypeConformance2();
  v34 = v48;
  sub_24F925EF8();

  return (*(v49 + 8))(v27, v34);
}

uint64_t sub_24F70003C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for PaginatedShelfIntentView(0);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GSKShelf();
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v31 = *(a2 + 40);
  sub_24F70418C(a1, &v28 - v13, type metadata accessor for GSKShelf);
  v32 = *(a2 + 48);
  sub_24F70418C(a2, v8, type metadata accessor for PaginatedShelfIntentView);
  sub_24F70418C(a1, v11, type metadata accessor for GSKShelf);
  v15 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v16 = (v7 + *(v29 + 80) + v15) & ~*(v29 + 80);
  v17 = swift_allocObject();
  sub_24F7057E8(v8, v17 + v15, type metadata accessor for PaginatedShelfIntentView);
  sub_24F7057E8(v11, v17 + v16, type metadata accessor for GSKShelf);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292B0);
  v19 = &a3[v18[14]];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = &a3[v18[15]];
  v33 = 0;
  sub_24F926F28();
  v21 = v35;
  *v20 = v34;
  *(v20 + 1) = v21;
  v22 = v18[16];
  *&a3[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE58);
  swift_storeEnumTagMultiPayload();
  *a3 = v31;
  sub_24E64346C(&a3[v18[9]]);
  result = sub_24F705928(v14, type metadata accessor for GSKShelf);
  v24 = &a3[v18[10]];
  *v24 = v32;
  v24[8] = 0;
  v25 = &a3[v18[11]];
  *v25 = CGSizeMake;
  v25[1] = 0;
  v26 = &a3[v18[12]];
  *v26 = sub_24F705850;
  v26[1] = v17;
  v27 = &a3[v18[13]];
  *v27 = 0;
  v27[1] = 0;
  return result;
}

uint64_t sub_24F700378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKShelf();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PaginatedShelfIntentView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = sub_24F92B858();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_24F70418C(a1, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaginatedShelfIntentView);
  sub_24F70418C(a2, v7, type metadata accessor for GSKShelf);
  sub_24F92B7F8();
  v15 = sub_24F92B7E8();
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = (v10 + *(v5 + 80) + v16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  sub_24F7057E8(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for PaginatedShelfIntentView);
  sub_24F7057E8(v7, v18 + v17, type metadata accessor for GSKShelf);
  sub_24EA998B8(0, 0, v13, &unk_24FA20248, v18);
}

uint64_t sub_24F700618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_24F92B7F8();
  v5[4] = sub_24F92B7E8();
  v7 = sub_24F92B778();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_24F7006B0, v7, v6);
}

uint64_t sub_24F7006B0()
{
  type metadata accessor for ShelfPaginationController(0);
  sub_24F703A3C(&qword_27F24D9B0, type metadata accessor for ShelfPaginationController);
  v0[7] = sub_24F923628();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_24F7007B8;
  v2 = v0[3];

  return sub_24F7008FC(v2);
}

uint64_t sub_24F7007B8()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_24EA9C5F8, v3, v2);
}

uint64_t sub_24F7008FC(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v2[36] = type metadata accessor for PaginatedShelfContent();
  v2[37] = swift_task_alloc();
  v3 = sub_24F92AA48();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v4 = type metadata accessor for GSKShelf();
  v2[44] = v4;
  v2[45] = *(v4 - 8);
  v2[46] = swift_task_alloc();
  sub_24F92B7F8();
  v2[47] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v2[48] = v6;
  v2[49] = v5;

  return MEMORY[0x2822009F8](sub_24F700ACC, v6, v5);
}

uint64_t sub_24F700ACC()
{
  v40 = v0;
  v1 = *(v0 + 280);
  v2 = OBJC_IVAR____TtC12GameStoreKitP33_53DA2F17A7B96116B1142914DE5099ED25ShelfPaginationController_isFetching;
  *(v0 + 400) = OBJC_IVAR____TtC12GameStoreKitP33_53DA2F17A7B96116B1142914DE5099ED25ShelfPaginationController_isFetching;
  if (*(v1 + v2))
  {
    goto LABEL_2;
  }

  v3 = *(v0 + 352);
  v4 = *(v0 + 360);
  v5 = *(v0 + 344);
  v6 = OBJC_IVAR____TtC12GameStoreKitP33_53DA2F17A7B96116B1142914DE5099ED25ShelfPaginationController_shelf;
  *(v0 + 408) = OBJC_IVAR____TtC12GameStoreKitP33_53DA2F17A7B96116B1142914DE5099ED25ShelfPaginationController_shelf;
  swift_beginAccess();
  sub_24E60169C(v1 + v6, v5, &qword_27F21E5E8);
  v7 = (*(v4 + 48))(v5, 1, v3);
  v8 = *(v0 + 344);
  if (v7 == 1)
  {

    sub_24E601704(v8, &qword_27F21E5E8);
    goto LABEL_5;
  }

  v11 = *(v0 + 368);
  v12 = *(v0 + 272);
  sub_24F7057E8(*(v0 + 344), v11, type metadata accessor for GSKShelf);
  if ((MEMORY[0x2530503B0](v11, v12) & 1) == 0)
  {
    sub_24F705928(*(v0 + 368), type metadata accessor for GSKShelf);
LABEL_2:

LABEL_5:

    v9 = *(v0 + 8);

    return v9();
  }

  v13 = *(v0 + 280);
  v14 = OBJC_IVAR____TtC12GameStoreKitP33_53DA2F17A7B96116B1142914DE5099ED25ShelfPaginationController_nextPageIntent;
  *(v0 + 416) = OBJC_IVAR____TtC12GameStoreKitP33_53DA2F17A7B96116B1142914DE5099ED25ShelfPaginationController_nextPageIntent;
  v15 = v13 + v14;
  swift_beginAccess();
  if (!*(v15 + 24))
  {
    v34 = *v15;
    v35 = *(v15 + 16);
    *(v0 + 88) = *(v15 + 32);
    *(v0 + 72) = v35;
    *(v0 + 56) = v34;
    if (*(v0 + 80))
    {
      goto LABEL_11;
    }

LABEL_17:
    sub_24F705928(*(v0 + 368), type metadata accessor for GSKShelf);

    if (*(v0 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 56);
    }

    goto LABEL_5;
  }

  sub_24E615E00(v15, v0 + 56);
  if (!*(v0 + 80))
  {
    goto LABEL_17;
  }

LABEL_11:
  sub_24E612C80((v0 + 56), v0 + 16);
  *(v1 + v2) = 1;
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v19 = *(v0 + 272);
  v20 = sub_24F9220D8();
  *(v0 + 424) = __swift_project_value_buffer(v20, qword_27F39E850);
  v21 = *(v18 + 16);
  *(v0 + 432) = v21;
  *(v0 + 440) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v16, v19, v17);
  v22 = sub_24F9220B8();
  v23 = sub_24F92BD98();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 328);
  v26 = *(v0 + 304);
  v27 = *(v0 + 312);
  if (v24)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v39 = v29;
    *v28 = 136315138;
    v38 = sub_24F92AA08();
    v31 = v30;
    v32 = *(v27 + 8);
    v32(v25, v26);
    v33 = sub_24E7620D4(v38, v31, &v39);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_24E5DD000, v22, v23, "Fetching more results for shelf %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x2530542D0](v29, -1, -1);
    MEMORY[0x2530542D0](v28, -1, -1);
  }

  else
  {

    v32 = *(v27 + 8);
    v32(v25, v26);
  }

  *(v0 + 448) = v32;
  *(v0 + 456) = *(*(v0 + 280) + 16);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v37 = swift_task_alloc();
  *(v0 + 464) = v37;
  *v37 = v0;
  v37[1] = sub_24F700F78;

  return MEMORY[0x28217F228](v0 + 96, v36, v36);
}

uint64_t sub_24F700F78()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 392);
  v4 = *(v2 + 384);
  if (v0)
  {
    v5 = sub_24F701534;
  }

  else
  {
    v5 = sub_24F7010B4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F7010B4()
{
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  v3 = v0[5];
  v4 = v0[6];
  v5 = __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v6 = swift_task_alloc();
  v0[60] = v6;
  *v6 = v0;
  v6[1] = sub_24F70119C;
  v7 = v0[57];
  v8 = v0[37];

  return MEMORY[0x28217F4B0](v8, v5, v7, v3, v4, v1, v2);
}

uint64_t sub_24F70119C()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  v3 = *(v2 + 392);
  v4 = *(v2 + 384);
  if (v0)
  {
    v5 = sub_24F7017F4;
  }

  else
  {
    v5 = sub_24F7012D8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F7012D8()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 368);
  v4 = *(v0 + 352);
  v5 = *(v0 + 360);
  v6 = *(v0 + 336);
  v7 = *(v0 + 296);
  v21 = *(v0 + 288);
  v8 = *(v0 + 280);

  v9 = v8 + v1;

  sub_24EA0AEC0(v10);
  sub_24F70418C(v3, v6, type metadata accessor for GSKShelf);
  (*(v5 + 56))(v6, 0, 1, v4);
  swift_beginAccess();
  sub_24F7041F4(v6, v8 + v2);
  swift_endAccess();
  sub_24E60169C(v7 + *(v21 + 20), v0 + 136, &qword_27F216638);
  swift_beginAccess();
  v11 = *(v0 + 160);
  v12 = *(v0 + 416);
  v13 = *(v0 + 280);
  v14 = v13 + v12;
  if (*(v9 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v13 + v12);
    v14 = *(v0 + 280) + *(v0 + 416);
    if (v11)
    {
LABEL_3:
      sub_24E612C80((v0 + 136), v14);
      goto LABEL_6;
    }
  }

  else if (v11)
  {
    goto LABEL_3;
  }

  v15 = *(v0 + 136);
  v16 = *(v0 + 152);
  *(v14 + 32) = *(v0 + 168);
  *v14 = v15;
  *(v14 + 16) = v16;
LABEL_6:
  v17 = *(v0 + 368);
  v18 = *(v0 + 296);
  swift_endAccess();
  sub_24F9280C8();
  sub_24F705928(v18, type metadata accessor for PaginatedShelfContent);
  sub_24F705928(v17, type metadata accessor for GSKShelf);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  *(*(v0 + 280) + *(v0 + 400)) = 0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_24F701534()
{
  v25 = v0;

  v1 = *(v0 + 472);
  (*(v0 + 432))(*(v0 + 320), *(v0 + 272), *(v0 + 304));
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 448);
  v7 = *(v0 + 368);
  v8 = *(v0 + 320);
  v9 = *(v0 + 304);
  if (v5)
  {
    v21 = v4;
    v10 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v10 = 136315394;
    v23 = v7;
    v11 = sub_24F92AA08();
    v13 = v12;
    v6(v8, v9);
    v14 = sub_24E7620D4(v11, v13, &v24);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v16;
    *v20 = v16;
    _os_log_impl(&dword_24E5DD000, v3, v21, "GSKShelf %s pagination fetch failed: %@", v10, 0x16u);
    sub_24E601704(v20, &qword_27F227B20);
    MEMORY[0x2530542D0](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x2530542D0](v22, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);

    v17 = v23;
  }

  else
  {

    v6(v8, v9);
    v17 = v7;
  }

  sub_24F705928(v17, type metadata accessor for GSKShelf);
  *(*(v0 + 280) + *(v0 + 400)) = 0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_24F7017F4()
{
  v25 = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  v1 = *(v0 + 488);
  (*(v0 + 432))(*(v0 + 320), *(v0 + 272), *(v0 + 304));
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 448);
  v7 = *(v0 + 368);
  v8 = *(v0 + 320);
  v9 = *(v0 + 304);
  if (v5)
  {
    v21 = v4;
    v10 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v10 = 136315394;
    v23 = v7;
    v11 = sub_24F92AA08();
    v13 = v12;
    v6(v8, v9);
    v14 = sub_24E7620D4(v11, v13, &v24);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v16;
    *v20 = v16;
    _os_log_impl(&dword_24E5DD000, v3, v21, "GSKShelf %s pagination fetch failed: %@", v10, 0x16u);
    sub_24E601704(v20, &qword_27F227B20);
    MEMORY[0x2530542D0](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x2530542D0](v22, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);

    v17 = v23;
  }

  else
  {

    v6(v8, v9);
    v17 = v7;
  }

  sub_24F705928(v17, type metadata accessor for GSKShelf);
  *(*(v0 + 280) + *(v0 + 400)) = 0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_24F701ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D9F0);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D9F8);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F701C00, 0, 0);
}

uint64_t sub_24F701C00()
{
  *(v0 + 96) = sub_24F92B7F8();
  *(v0 + 104) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F701C98, v2, v1);
}

uint64_t sub_24F701C98()
{

  type metadata accessor for ShelfPaginationController(0);
  sub_24F703A3C(&qword_27F24D9B0, type metadata accessor for ShelfPaginationController);
  *(v0 + 112) = sub_24F923628();

  return MEMORY[0x2822009F8](sub_24F701D70, 0, 0);
}

uint64_t sub_24F701D70()
{
  *(v0 + 120) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F701DFC, v2, v1);
}

uint64_t sub_24F701DFC()
{
  v1 = v0[14];
  v2 = v0[11];
  v13 = v0[10];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v8 = v0[3];
  v14 = v0[2];

  v9 = swift_task_alloc();
  *(v9 + 16) = v1;
  *(v9 + 24) = v8;
  type metadata accessor for GSKShelf();
  (*(v6 + 104))(v5, *MEMORY[0x277D858A0], v7);
  sub_24F92BA08();

  (*(v3 + 16))(v13, v2, v4);
  sub_24E602068(&qword_27F24DA00, &qword_27F24D9F8);
  sub_24F9280F8();

  (*(v3 + 8))(v2, v4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  (*(*(v10 - 8) + 56))(v14, 0, 1, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24F70200C(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E8);
  v2[30] = swift_task_alloc();
  v2[31] = type metadata accessor for PaginatedShelfContent();
  v2[32] = swift_task_alloc();
  sub_24F92B7F8();
  v2[33] = sub_24F92B7E8();
  v4 = sub_24F92B778();
  v2[34] = v4;
  v2[35] = v3;

  return MEMORY[0x2822009F8](sub_24F70210C, v4, v3);
}

uint64_t sub_24F70210C()
{
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E850);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "Fetching initial page", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = v0[29];

  v0[36] = *(v5 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v7 = swift_task_alloc();
  v0[37] = v7;
  *v7 = v0;
  v7[1] = sub_24F70228C;

  return MEMORY[0x28217F228](v0 + 2, v6, v6);
}

uint64_t sub_24F70228C()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 280);
  v4 = *(v2 + 272);
  if (v0)
  {
    v5 = sub_24F702808;
  }

  else
  {
    v5 = sub_24F7023C8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F7023C8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  sub_24E60169C(v1, v0 + 96, &qword_27F216698);
  sub_24E612C80((v0 + 96), v0 + 56);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = __swift_project_boxed_opaque_existential_1((v0 + 56), v4);
  v7 = swift_task_alloc();
  *(v0 + 312) = v7;
  *v7 = v0;
  v7[1] = sub_24F7024E0;
  v8 = *(v0 + 288);
  v9 = *(v0 + 256);

  return MEMORY[0x28217F4B0](v9, v6, v8, v4, v5, v2, v3);
}

uint64_t sub_24F7024E0()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 280);
  v4 = *(v2 + 272);
  if (v0)
  {
    v5 = sub_24F702880;
  }

  else
  {
    v5 = sub_24F70261C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F70261C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  sub_24F70418C(v1, v2, type metadata accessor for GSKShelf);
  v5 = type metadata accessor for GSKShelf();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  v6 = OBJC_IVAR____TtC12GameStoreKitP33_53DA2F17A7B96116B1142914DE5099ED25ShelfPaginationController_shelf;
  swift_beginAccess();
  sub_24F7041F4(v2, v4 + v6);
  swift_endAccess();
  sub_24E60169C(v1 + *(v3 + 20), v0 + 136, &qword_27F216638);
  v7 = v4 + OBJC_IVAR____TtC12GameStoreKitP33_53DA2F17A7B96116B1142914DE5099ED25ShelfPaginationController_nextPageIntent;
  swift_beginAccess();
  v8 = *(v0 + 160);
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
    if (v8)
    {
LABEL_3:
      sub_24E612C80((v0 + 136), v7);
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    goto LABEL_3;
  }

  v9 = *(v0 + 136);
  v10 = *(v0 + 152);
  *(v7 + 32) = *(v0 + 168);
  *v7 = v9;
  *(v7 + 16) = v10;
LABEL_6:
  v11 = *(v0 + 256);
  swift_endAccess();
  sub_24F9280C8();
  sub_24F705928(v11, type metadata accessor for PaginatedShelfContent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24F702808()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F702880()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F702908()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKitP33_53DA2F17A7B96116B1142914DE5099ED25ShelfPaginationController_shelf, &qword_27F21E5E8);
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKitP33_53DA2F17A7B96116B1142914DE5099ED25ShelfPaginationController_nextPageIntent + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12GameStoreKitP33_53DA2F17A7B96116B1142914DE5099ED25ShelfPaginationController_nextPageIntent);
  }

  return swift_deallocClassInstance();
}

void sub_24F7029D4()
{
  sub_24F702A88();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24F702A88()
{
  if (!qword_27F21ECA8)
  {
    type metadata accessor for GSKShelf();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21ECA8);
    }
  }
}

uint64_t sub_24F702AF4(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D990);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F702BC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D990);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F702C94()
{
  sub_24F702D40();
  if (v0 <= 0x3F)
  {
    sub_24F702DD4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F702D40()
{
  if (!qword_27F24D9A8)
  {
    type metadata accessor for ShelfPaginationController(255);
    sub_24F703A3C(&qword_27F24D9B0, type metadata accessor for ShelfPaginationController);
    v0 = sub_24F923648();
    if (!v1)
    {
      atomic_store(v0, &qword_27F24D9A8);
    }
  }
}

void sub_24F702DD4()
{
  if (!qword_27F24D9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EDC0);
    v0 = sub_24F926F68();
    if (!v1)
    {
      atomic_store(v0, &qword_27F24D9B8);
    }
  }
}

uint64_t sub_24F702E58@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for PaginatedShelfIntentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F70003C(a1, v6, a2);
}

uint64_t sub_24F702ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v38 = a2;
  v41 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DA08);
  v8 = *(v7 - 8);
  v45 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v37 - v9;
  v42 = v37 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DA10);
  v11 = *(v51 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v51);
  v40 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v50 = v37 - v15;
  v37[1] = *(a2 + OBJC_IVAR____TtC12GameStoreKitP33_53DA2F17A7B96116B1142914DE5099ED25ShelfPaginationController_shelfUpdate);
  v16 = v8;
  v17 = *(v8 + 16);
  v43 = v8 + 16;
  v44 = v17;
  v39 = v7;
  (v17)(v10, a1, v7, v14);
  v18 = *(v8 + 80);
  v19 = swift_allocObject();
  v46 = *(v16 + 32);
  v47 = v16 + 32;
  v46(v19 + ((v18 + 16) & ~v18), v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D988);
  sub_24E602068(&qword_27F24DA18, &qword_27F24D988);
  sub_24F9288B8();
  v20 = v50;
  sub_24F9288D8();

  __swift_destroy_boxed_opaque_existential_1(v52);
  v21 = swift_allocObject();
  v22 = v38;
  swift_weakInit();
  v23 = v40;
  v24 = v51;
  (*(v11 + 16))(v40, v20, v51);
  v25 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v21;
  (*(v11 + 32))(v26 + v25, v23, v24);
  v27 = v39;
  v28 = v41;
  sub_24F92B9D8();
  v29 = sub_24F92B858();
  v30 = v48;
  (*(*(v29 - 8) + 56))(v48, 1, 1, v29);
  sub_24EB3BA60(v49, v52);
  v31 = v42;
  v44(v42, v28, v27);
  sub_24F92B7F8();

  v32 = sub_24F92B7E8();
  v33 = swift_allocObject();
  v34 = MEMORY[0x277D85700];
  *(v33 + 16) = v32;
  *(v33 + 24) = v34;
  *(v33 + 32) = v22;
  v35 = v52[1];
  *(v33 + 40) = v52[0];
  *(v33 + 56) = v35;
  *(v33 + 72) = v53;
  v46(v33 + ((v18 + 80) & ~v18), v31, v27);
  sub_24EA998B8(0, 0, v30, &unk_24FA201B0, v33);

  return (*(v11 + 8))(v50, v51);
}

uint64_t sub_24F7033CC(uint64_t a1)
{
  v2 = type metadata accessor for GSKShelf();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DA20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_24F70418C(a1, v4, type metadata accessor for GSKShelf);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DA08);
  sub_24F92B9E8();
  return (*(v6 + 8))(v8, v5);
}

void sub_24F703524()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_24F9280B8();
  }

  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v0 = sub_24F9220D8();
  __swift_project_value_buffer(v0, qword_27F39E850);
  v1 = sub_24F9220B8();
  v2 = sub_24F92BDA8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24E5DD000, v1, v2, "GSKShelf subscription terminated", v3, 2u);
    MEMORY[0x2530542D0](v3, -1, -1);
  }
}

uint64_t sub_24F70365C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a6;
  v6[4] = sub_24F92B7F8();
  v6[5] = sub_24F92B7E8();
  v8 = swift_task_alloc();
  v6[6] = v8;
  *v8 = v6;
  v8[1] = sub_24F70371C;

  return sub_24F70200C(a5);
}

uint64_t sub_24F70371C()
{
  *(*v1 + 56) = v0;

  v3 = sub_24F92B778();
  if (v0)
  {
    v4 = sub_24F703878;
  }

  else
  {
    v4 = sub_24E847734;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24F703878()
{

  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E850);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Initial shelf fetch failed: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v11 = v0[7];

  v0[2] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DA08);
  sub_24F92B9F8();
  v12 = v0[1];

  return v12();
}

uint64_t sub_24F703A3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F703A84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_83()
{
  v1 = (type metadata accessor for PaginatedShelfIntentView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  __swift_destroy_boxed_opaque_existential_1(v2);
  sub_24E683950();
  v3 = v2 + v1[10];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDC0);
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D990);

  return swift_deallocObject();
}

uint64_t sub_24F703C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for PaginatedShelfIntentView(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24E614970;

  return sub_24F701ABC(a1, a2, a3, v3 + v9);
}

uint64_t sub_24F703D0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DA08);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F703DA0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DA08);

  return sub_24F7033CC(a1);
}

uint64_t sub_24F703E1C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F703E54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DA10);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24F703F24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DA10);

  sub_24F703524();
}

uint64_t sub_24F703FA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DA08);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F704084(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DA08) - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E6541E4;

  return sub_24F70365C(a1, v6, v7, v8, (v1 + 5), v1 + v5);
}

uint64_t sub_24F70418C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7041F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F704264()
{
  v1 = v0;
  v2 = (type metadata accessor for PaginatedShelfIntentView(0) - 8);
  v3 = (*(*v2 + 80) + 16) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = type metadata accessor for GSKShelf();
  v93 = *(*(v5 - 1) + 80);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);
  sub_24E683950();
  v6 = v1 + v3 + v2[10];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDC0);
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D990);

  v8 = v1 + ((v3 + v4 + v93) & ~v93);
  v9 = sub_24F92AA48();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = v5[5];
  v11 = sub_24F929608();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v8 + v10, 1, v11))
  {
    (*(v12 + 8))(v8 + v10, v11);
  }

  v13 = v8 + v5[6];
  v14 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v15 = *(*(v14 - 1) + 48);
  if (!v15(v13, 1, v14))
  {

    v16 = v13 + v14[5];
    v17 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v17 - 8) + 48))(v16, 1, v17))
    {
      goto LABEL_5;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v68 = sub_24F9289E8();
          (*(*(v68 - 8) + 8))(v16, v68);
          goto LABEL_5;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_5:
          v18 = v13 + v14[7];
          v19 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v21 = sub_24F928388();
              (*(*(v21 - 8) + 8))(v18, v21);
            }
          }

          v22 = v13 + v14[10];
          if (*(v22 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v22);
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v56 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v57 = type metadata accessor for JSColor();
        if (!(*(*(v57 - 8) + 48))(v56, 1, v57))
        {
          v58 = sub_24F928388();
          (*(*(v58 - 8) + 8))(v56, v58);
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v65 = sub_24F9289E8();
        v66 = *(v65 - 8);
        if (!(*(v66 + 48))(v16, 1, v65))
        {
          (*(v66 + 8))(v16, v65);
        }

        if (*(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_5;
  }

LABEL_16:
  v23 = type metadata accessor for HeaderPresentation(0);
  v24 = v13 + v23[5];
  if (v15(v24, 1, v14))
  {
    goto LABEL_33;
  }

  v25 = v24 + v14[5];
  v26 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    goto LABEL_18;
  }

  v29 = swift_getEnumCaseMultiPayload();
  if (v29 <= 2)
  {
    if (!v29)
    {

      v59 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v60 = type metadata accessor for JSColor();
      if (!(*(*(v60 - 8) + 48))(v59, 1, v60))
      {
        v61 = sub_24F928388();
        (*(*(v61 - 8) + 8))(v59, v61);
      }

      goto LABEL_18;
    }

    if (v29 == 1)
    {
      v67 = sub_24F9289E8();
      v91 = *(v67 - 8);
      if (!(*(v91 + 48))(v25, 1, v67))
      {
        (*(v91 + 8))(v25, v67);
      }

      if (*(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_18;
    }

    if (v29 != 2)
    {
      goto LABEL_18;
    }

LABEL_46:

    goto LABEL_18;
  }

  switch(v29)
  {
    case 3:
      goto LABEL_46;
    case 4:
      v70 = sub_24F9289E8();
      (*(*(v70 - 8) + 8))(v25, v70);
      break;
    case 5:
      goto LABEL_46;
  }

LABEL_18:
  v27 = v24 + v14[7];
  v28 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v28 - 8) + 48))(v27, 1, v28))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v30 = sub_24F928388();
      (*(*(v30 - 8) + 8))(v27, v30);
    }
  }

  v31 = v24 + v14[10];
  if (*(v31 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

LABEL_33:
  v32 = v13 + v23[6];
  if (v15(v32, 1, v14))
  {
    goto LABEL_50;
  }

  v33 = v32 + v14[5];
  v34 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v34 - 8) + 48))(v33, 1, v34))
  {
    goto LABEL_35;
  }

  v37 = swift_getEnumCaseMultiPayload();
  if (v37 <= 2)
  {
    if (!v37)
    {

      v62 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v63 = type metadata accessor for JSColor();
      if (!(*(*(v63 - 8) + 48))(v62, 1, v63))
      {
        v64 = sub_24F928388();
        (*(*(v64 - 8) + 8))(v62, v64);
      }

      goto LABEL_35;
    }

    if (v37 == 1)
    {
      v69 = sub_24F9289E8();
      v92 = *(v69 - 8);
      if (!(*(v92 + 48))(v33, 1, v69))
      {
        (*(v92 + 8))(v33, v69);
      }

      if (*(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_35;
    }

    if (v37 != 2)
    {
      goto LABEL_35;
    }

LABEL_84:

    goto LABEL_35;
  }

  switch(v37)
  {
    case 3:
      goto LABEL_84;
    case 4:
      v71 = sub_24F9289E8();
      (*(*(v71 - 8) + 8))(v33, v71);
      break;
    case 5:
      goto LABEL_84;
  }

LABEL_35:
  v35 = v32 + v14[7];
  v36 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v38 = sub_24F928388();
      (*(*(v38 - 8) + 8))(v35, v38);
    }
  }

  v39 = v32 + v14[10];
  if (*(v39 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

LABEL_50:
  v40 = v13 + v23[7];
  if (*(v40 + 56) == 1)
  {
  }

  else if (!*(v40 + 56))
  {

    if (*(v40 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v40 + 16);
    }
  }

  v41 = v13 + v23[8];
  v42 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
  {
    v47 = swift_getEnumCaseMultiPayload();
    if (v47 == 2)
    {
      goto LABEL_125;
    }

    if (v47 != 1)
    {
      if (v47)
      {
        goto LABEL_56;
      }

      v48 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v48 - 8) + 48))(v41, 1, v48))
      {
        goto LABEL_56;
      }

      v49 = swift_getEnumCaseMultiPayload();
      if (v49 > 2)
      {
        if (v49 != 3)
        {
          if (v49 == 4)
          {
            v90 = sub_24F9289E8();
            (*(*(v90 - 8) + 8))(v41, v90);
            goto LABEL_56;
          }

          if (v49 != 5)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_125;
      }

      if (v49)
      {
        if (v49 == 1)
        {
          v88 = sub_24F9289E8();
          v89 = *(v88 - 8);
          if (!(*(v89 + 48))(v41, 1, v88))
          {
            (*(v89 + 8))(v41, v88);
          }

          if (!*(v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_56;
          }
        }

        else if (v49 != 2)
        {
          goto LABEL_56;
        }

LABEL_125:

        goto LABEL_56;
      }

      v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
LABEL_144:
      v84 = v41 + v78;
      v85 = type metadata accessor for JSColor();
      if (!(*(*(v85 - 8) + 48))(v84, 1, v85))
      {
        v86 = sub_24F928388();
        (*(*(v86 - 8) + 8))(v84, v86);
      }

      goto LABEL_56;
    }

    v50 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v51 = *(*(v50 - 8) + 48);
    if (v51(v41, 1, v50))
    {
LABEL_75:
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v53 = v41 + *(v52 + 48);
      if (!v51(v53, 1, v50))
      {
        v54 = swift_getEnumCaseMultiPayload();
        if (v54 <= 2)
        {
          switch(v54)
          {
            case 0:

              v72 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
              v73 = type metadata accessor for JSColor();
              if (!(*(*(v73 - 8) + 48))(v72, 1, v73))
              {
                v74 = sub_24F928388();
                (*(*(v74 - 8) + 8))(v72, v74);
              }

              goto LABEL_143;
            case 1:
              v79 = sub_24F9289E8();
              v80 = *(v79 - 8);
              if (!(*(v80 + 48))(v53, 1, v79))
              {
                (*(v80 + 8))(v53, v79);
              }

              if (!*(v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
              {
                goto LABEL_143;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_143;
          }

LABEL_137:

          goto LABEL_143;
        }

        switch(v54)
        {
          case 3:
            goto LABEL_137;
          case 4:
            v83 = sub_24F9289E8();
            (*(*(v83 - 8) + 8))(v53, v83);
            break;
          case 5:
            goto LABEL_137;
        }
      }

LABEL_143:
      v78 = *(v52 + 80);
      goto LABEL_144;
    }

    v55 = swift_getEnumCaseMultiPayload();
    if (v55 > 2)
    {
      if (v55 != 3)
      {
        if (v55 == 4)
        {
          v87 = sub_24F9289E8();
          (*(*(v87 - 8) + 8))(v41, v87);
          goto LABEL_75;
        }

        if (v55 != 5)
        {
          goto LABEL_75;
        }
      }
    }

    else
    {
      if (!v55)
      {

        v75 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v76 = type metadata accessor for JSColor();
        if (!(*(*(v76 - 8) + 48))(v75, 1, v76))
        {
          v77 = sub_24F928388();
          (*(*(v77 - 8) + 8))(v75, v77);
        }

        goto LABEL_75;
      }

      if (v55 == 1)
      {
        v81 = sub_24F9289E8();
        v82 = *(v81 - 8);
        if (!(*(v82 + 48))(v41, 1, v81))
        {
          (*(v82 + 8))(v41, v81);
        }

        if (*(v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_75;
      }

      if (v55 != 2)
      {
        goto LABEL_75;
      }
    }

    goto LABEL_75;
  }

LABEL_56:
  v43 = v8 + v5[13];
  if (*(v43 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v44 = v8 + v5[14];
  if (*(v44 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v45 = v8 + v5[16];
  if (*(v45 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  return swift_deallocObject();
}

uint64_t sub_24F7057E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F705850()
{
  v1 = *(type metadata accessor for PaginatedShelfIntentView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for GSKShelf() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_24F700378(v0 + v2, v5);
}

uint64_t sub_24F705928(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F705988()
{
  v1 = v0;
  v2 = (type metadata accessor for PaginatedShelfIntentView(0) - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = type metadata accessor for GSKShelf();
  v93 = *(*(v5 - 1) + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);
  sub_24E683950();
  v6 = v1 + v3 + v2[10];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDC0);
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D990);

  v8 = v1 + ((v3 + v4 + v93) & ~v93);
  v9 = sub_24F92AA48();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = v5[5];
  v11 = sub_24F929608();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v8 + v10, 1, v11))
  {
    (*(v12 + 8))(v8 + v10, v11);
  }

  v13 = v8 + v5[6];
  v14 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v15 = *(*(v14 - 1) + 48);
  if (!v15(v13, 1, v14))
  {

    v16 = v13 + v14[5];
    v17 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v17 - 8) + 48))(v16, 1, v17))
    {
      goto LABEL_5;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v68 = sub_24F9289E8();
          (*(*(v68 - 8) + 8))(v16, v68);
          goto LABEL_5;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_5:
          v18 = v13 + v14[7];
          v19 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v21 = sub_24F928388();
              (*(*(v21 - 8) + 8))(v18, v21);
            }
          }

          v22 = v13 + v14[10];
          if (*(v22 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v22);
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v56 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v57 = type metadata accessor for JSColor();
        if (!(*(*(v57 - 8) + 48))(v56, 1, v57))
        {
          v58 = sub_24F928388();
          (*(*(v58 - 8) + 8))(v56, v58);
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v65 = sub_24F9289E8();
        v66 = *(v65 - 8);
        if (!(*(v66 + 48))(v16, 1, v65))
        {
          (*(v66 + 8))(v16, v65);
        }

        if (*(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_5;
  }

LABEL_16:
  v23 = type metadata accessor for HeaderPresentation(0);
  v24 = v13 + v23[5];
  if (v15(v24, 1, v14))
  {
    goto LABEL_33;
  }

  v25 = v24 + v14[5];
  v26 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    goto LABEL_18;
  }

  v29 = swift_getEnumCaseMultiPayload();
  if (v29 <= 2)
  {
    if (!v29)
    {

      v59 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v60 = type metadata accessor for JSColor();
      if (!(*(*(v60 - 8) + 48))(v59, 1, v60))
      {
        v61 = sub_24F928388();
        (*(*(v61 - 8) + 8))(v59, v61);
      }

      goto LABEL_18;
    }

    if (v29 == 1)
    {
      v67 = sub_24F9289E8();
      v91 = *(v67 - 8);
      if (!(*(v91 + 48))(v25, 1, v67))
      {
        (*(v91 + 8))(v25, v67);
      }

      if (*(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_18;
    }

    if (v29 != 2)
    {
      goto LABEL_18;
    }

LABEL_46:

    goto LABEL_18;
  }

  switch(v29)
  {
    case 3:
      goto LABEL_46;
    case 4:
      v70 = sub_24F9289E8();
      (*(*(v70 - 8) + 8))(v25, v70);
      break;
    case 5:
      goto LABEL_46;
  }

LABEL_18:
  v27 = v24 + v14[7];
  v28 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v28 - 8) + 48))(v27, 1, v28))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v30 = sub_24F928388();
      (*(*(v30 - 8) + 8))(v27, v30);
    }
  }

  v31 = v24 + v14[10];
  if (*(v31 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

LABEL_33:
  v32 = v13 + v23[6];
  if (v15(v32, 1, v14))
  {
    goto LABEL_50;
  }

  v33 = v32 + v14[5];
  v34 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v34 - 8) + 48))(v33, 1, v34))
  {
    goto LABEL_35;
  }

  v37 = swift_getEnumCaseMultiPayload();
  if (v37 <= 2)
  {
    if (!v37)
    {

      v62 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v63 = type metadata accessor for JSColor();
      if (!(*(*(v63 - 8) + 48))(v62, 1, v63))
      {
        v64 = sub_24F928388();
        (*(*(v64 - 8) + 8))(v62, v64);
      }

      goto LABEL_35;
    }

    if (v37 == 1)
    {
      v69 = sub_24F9289E8();
      v92 = *(v69 - 8);
      if (!(*(v92 + 48))(v33, 1, v69))
      {
        (*(v92 + 8))(v33, v69);
      }

      if (*(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_35;
    }

    if (v37 != 2)
    {
      goto LABEL_35;
    }

LABEL_84:

    goto LABEL_35;
  }

  switch(v37)
  {
    case 3:
      goto LABEL_84;
    case 4:
      v71 = sub_24F9289E8();
      (*(*(v71 - 8) + 8))(v33, v71);
      break;
    case 5:
      goto LABEL_84;
  }

LABEL_35:
  v35 = v32 + v14[7];
  v36 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v38 = sub_24F928388();
      (*(*(v38 - 8) + 8))(v35, v38);
    }
  }

  v39 = v32 + v14[10];
  if (*(v39 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

LABEL_50:
  v40 = v13 + v23[7];
  if (*(v40 + 56) == 1)
  {
  }

  else if (!*(v40 + 56))
  {

    if (*(v40 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v40 + 16);
    }
  }

  v41 = v13 + v23[8];
  v42 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
  {
    v47 = swift_getEnumCaseMultiPayload();
    if (v47 == 2)
    {
      goto LABEL_125;
    }

    if (v47 != 1)
    {
      if (v47)
      {
        goto LABEL_56;
      }

      v48 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v48 - 8) + 48))(v41, 1, v48))
      {
        goto LABEL_56;
      }

      v49 = swift_getEnumCaseMultiPayload();
      if (v49 > 2)
      {
        if (v49 != 3)
        {
          if (v49 == 4)
          {
            v90 = sub_24F9289E8();
            (*(*(v90 - 8) + 8))(v41, v90);
            goto LABEL_56;
          }

          if (v49 != 5)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_125;
      }

      if (v49)
      {
        if (v49 == 1)
        {
          v88 = sub_24F9289E8();
          v89 = *(v88 - 8);
          if (!(*(v89 + 48))(v41, 1, v88))
          {
            (*(v89 + 8))(v41, v88);
          }

          if (!*(v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_56;
          }
        }

        else if (v49 != 2)
        {
          goto LABEL_56;
        }

LABEL_125:

        goto LABEL_56;
      }

      v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
LABEL_144:
      v84 = v41 + v78;
      v85 = type metadata accessor for JSColor();
      if (!(*(*(v85 - 8) + 48))(v84, 1, v85))
      {
        v86 = sub_24F928388();
        (*(*(v86 - 8) + 8))(v84, v86);
      }

      goto LABEL_56;
    }

    v50 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v51 = *(*(v50 - 8) + 48);
    if (v51(v41, 1, v50))
    {
LABEL_75:
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v53 = v41 + *(v52 + 48);
      if (!v51(v53, 1, v50))
      {
        v54 = swift_getEnumCaseMultiPayload();
        if (v54 <= 2)
        {
          switch(v54)
          {
            case 0:

              v72 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
              v73 = type metadata accessor for JSColor();
              if (!(*(*(v73 - 8) + 48))(v72, 1, v73))
              {
                v74 = sub_24F928388();
                (*(*(v74 - 8) + 8))(v72, v74);
              }

              goto LABEL_143;
            case 1:
              v79 = sub_24F9289E8();
              v80 = *(v79 - 8);
              if (!(*(v80 + 48))(v53, 1, v79))
              {
                (*(v80 + 8))(v53, v79);
              }

              if (!*(v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
              {
                goto LABEL_143;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_143;
          }

LABEL_137:

          goto LABEL_143;
        }

        switch(v54)
        {
          case 3:
            goto LABEL_137;
          case 4:
            v83 = sub_24F9289E8();
            (*(*(v83 - 8) + 8))(v53, v83);
            break;
          case 5:
            goto LABEL_137;
        }
      }

LABEL_143:
      v78 = *(v52 + 80);
      goto LABEL_144;
    }

    v55 = swift_getEnumCaseMultiPayload();
    if (v55 > 2)
    {
      if (v55 != 3)
      {
        if (v55 == 4)
        {
          v87 = sub_24F9289E8();
          (*(*(v87 - 8) + 8))(v41, v87);
          goto LABEL_75;
        }

        if (v55 != 5)
        {
          goto LABEL_75;
        }
      }
    }

    else
    {
      if (!v55)
      {

        v75 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v76 = type metadata accessor for JSColor();
        if (!(*(*(v76 - 8) + 48))(v75, 1, v76))
        {
          v77 = sub_24F928388();
          (*(*(v77 - 8) + 8))(v75, v77);
        }

        goto LABEL_75;
      }

      if (v55 == 1)
      {
        v81 = sub_24F9289E8();
        v82 = *(v81 - 8);
        if (!(*(v82 + 48))(v41, 1, v81))
        {
          (*(v82 + 8))(v41, v81);
        }

        if (*(v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_75;
      }

      if (v55 != 2)
      {
        goto LABEL_75;
      }
    }

    goto LABEL_75;
  }

LABEL_56:
  v43 = v8 + v5[13];
  if (*(v43 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v44 = v8 + v5[14];
  if (*(v44 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v45 = v8 + v5[16];
  if (*(v45 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  return swift_deallocObject();
}

uint64_t sub_24F706F14(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PaginatedShelfIntentView(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for GSKShelf() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24E614970;

  return sub_24F700618(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_24F707064()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D9D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D9C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D9E8);
  sub_24E602068(&qword_27F24D9E0, &qword_27F24D9C8);
  sub_24E7C5EC0();
  sub_24E602068(&qword_27F21EDE0, &qword_27F213768);
  swift_getOpaqueTypeConformance2();
  sub_24F703A3C(&qword_27F238838, type metadata accessor for GSKShelf);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t GameLibraryMenuDataIntentImplementation.perform(_:objectGraph:)(uint64_t a1)
{
  *(v1 + 32) = a1;
  v2 = type metadata accessor for ArcadeSubscription();
  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v1;
  v3[1] = sub_24F7072D0;

  return MEMORY[0x28217F228](v1 + 16, v2, v2);
}

uint64_t sub_24F7072D0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24EF3F85C;
  }

  else
  {
    v2 = sub_24F7073E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7073E4()
{
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 72) = 1;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_24F70748C;

  return ArcadeSubscription.updateStateFromEntitlements(policy:)((v0 + 72));
}

uint64_t sub_24F70748C()
{

  return MEMORY[0x2822009F8](sub_24F707588, 0, 0);
}

uint64_t sub_24F707588()
{
  v1 = v0[7];
  v2 = v0[4];
  swift_getKeyPath();
  v0[3] = v1;
  sub_24F707780(&qword_27F21FE50, type metadata accessor for ArcadeSubscription);
  sub_24F91FD88();

  v3 = *(v1 + 16);

  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = 0u;
  *(v2 + 48) = v3 < 2;
  v4 = v0[1];

  return v4();
}

uint64_t sub_24F707690(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E614970;

  return GameLibraryMenuDataIntentImplementation.perform(_:objectGraph:)(a1);
}

uint64_t sub_24F707780(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AddFriendButtonShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = *(type metadata accessor for AddFriendButtonShelfIntent() - 8);
  v3[8] = v5;
  v3[9] = *(v5 + 64);
  v3[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760);
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F70797C, 0, 0);
}

uint64_t sub_24F70797C()
{
  v1 = v0[14];
  v2 = v0[12];
  v18 = v0[11];
  v19 = v0[13];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];
  v8 = v0[4];
  v16 = v0[5];
  v17 = v0[2];
  sub_24F708C04(v0[3], v4, type metadata accessor for AddFriendButtonShelfIntent);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_24F708974(v4, v10 + v9);
  *(v10 + ((v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;

  v11 = sub_24E802CE0(&unk_2861C25F8);
  v12 = swift_task_alloc();
  *(v12 + 16) = v11;
  *(v12 + 24) = &unk_24FA20320;
  *(v12 + 32) = v10;
  *(v12 + 40) = 257;
  type metadata accessor for GSKShelf();
  (*(v7 + 104))(v5, *MEMORY[0x277D85778], v16);
  sub_24F92B928();

  (*(v2 + 16))(v19, v1, v18);
  sub_24E613678();
  sub_24F9280F8();
  (*(v2 + 8))(v1, v18);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  (*(*(v13 - 8) + 56))(v17, 0, 1, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24F707BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v5[10] = type metadata accessor for AddFriendButtonShelfConstructionIntent();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F707C94, 0, 0);
}

uint64_t sub_24F707C94()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v5 = *v3;
  v4 = v3[1];
  v6 = type metadata accessor for AddFriendButtonShelfIntent();
  sub_24F708C04(v3 + *(v6 + 20), v1 + *(v2 + 20), type metadata accessor for Player);
  *v1 = v5;
  v1[1] = v4;
  v7 = qword_27F2113E8;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_24F9220D8();
  __swift_project_value_buffer(v8, qword_27F39E808);
  v9 = sub_24F9220B8();
  v10 = sub_24F92BDD8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24E5DD000, v9, v10, "Friend request sent", v11, 2u);
    MEMORY[0x2530542D0](v11, -1, -1);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_24F707E5C;

  return MEMORY[0x28217F228](v0 + 2, v12, v12);
}

uint64_t sub_24F707E5C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24F708180;
  }

  else
  {
    v2 = sub_24F707F70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F707F70()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  v4 = sub_24F708C6C(&qword_27F21D528, type metadata accessor for AddFriendButtonShelfConstructionIntent);
  *v3 = v0;
  v3[1] = sub_24F70806C;
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x28217F4B0](v8, v5, v7, v6, v4, v1, v2);
}

uint64_t sub_24F70806C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24F708268;
  }

  else
  {
    v2 = sub_24F7081F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F708180()
{
  sub_24E7D704C(*(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7081F0()
{
  v1 = *(v0 + 88);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_24E7D704C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F708268()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_24E7D704C(*(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7082E0()
{
  v1 = (type metadata accessor for AddFriendButtonShelfIntent() - 8);
  v2 = *(*v1 + 80);

  v3 = v0 + ((v2 + 16) & ~v2) + v1[7];

  v4 = type metadata accessor for Player(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  v29 = *(*(v6 - 8) + 8);
  v30 = *(v6 - 8);
  v29(v3 + v5, v6);

  if (*(v3 + v4[9] + 8) != 1)
  {
  }

  v7 = v3 + v4[13];
  v8 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = type metadata accessor for CallProviderConversationHandle();
    v10 = *(*(v9 - 8) + 48);
    if (!v10(v7, 1, v9))
    {

      v11 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v30 + 48))(v7 + v11, 1, v6))
      {
        v29(v7 + v11, v6);
      }
    }

    v12 = v7 + *(v8 + 20);
    if (!v10(v12, 1, v9))
    {

      v13 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v30 + 48))(v12 + v13, 1, v6))
      {
        v29(v12 + v13, v6);
      }
    }
  }

  if (*(v3 + v4[15] + 8))
  {
  }

  v14 = v3 + v4[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v14, 1, PlayedTogetherInfo))
  {

    v16 = type metadata accessor for Game();
    v29(v14 + v16[18], v6);
    v17 = v16[19];
    if (!(*(v30 + 48))(v14 + v17, 1, v6))
    {
      v29(v14 + v17, v6);
    }

    v18 = v16[21];
    v19 = sub_24F920818();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v14 + v18, 1, v19))
    {
      (*(v20 + 8))(v14 + v18, v19);
    }
  }

  v21 = v3 + v4[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v21, 1, ChallengeInfo))
  {

    v23 = type metadata accessor for Game();
    v29(v21 + v23[18], v6);
    v24 = v23[19];
    if (!(*(v30 + 48))(v21 + v24, 1, v6))
    {
      v29(v21 + v24, v6);
    }

    v25 = v23[21];
    v26 = sub_24F920818();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v21 + v25, 1, v26))
    {
      (*(v27 + 8))(v21 + v25, v26);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F708974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddFriendButtonShelfIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F7089D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AddFriendButtonShelfIntent() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24E614970;

  return sub_24F707BFC(a1, a2, a3, v3 + v9, v10);
}

uint64_t sub_24F708AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return AddFriendButtonShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t sub_24F708C04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F708C6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F708CB4()
{
  sub_24F708E60(v0 + OBJC_IVAR____TtC12GameStoreKit16TaskUpdateHolder_taskUpdate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TaskUpdateHolder()
{
  result = qword_27F24DA28;
  if (!qword_27F24DA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F708D6C()
{
  sub_24F708DFC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24F708DFC()
{
  if (!qword_27F24DA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216F50);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F24DA38);
    }
  }
}

uint64_t sub_24F708E60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static GameObjectGraphBuilder.frameworkObjects(metricsPipelineTransformer:)(uint64_t a1)
{
  v2 = sub_24F928188();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v78 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v80 = v60 - v6;
  MEMORY[0x28223BE20](v7);
  v79 = v60 - v8;
  MEMORY[0x28223BE20](v9);
  v77 = v60 - v10;
  MEMORY[0x28223BE20](v11);
  v76 = v60 - v12;
  MEMORY[0x28223BE20](v13);
  v68 = v60 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v60 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v60 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v60 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v60 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v60 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v60 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = v60 - v34;
  sub_24F92C078();
  v69 = v35;
  sub_24F928158();
  type metadata accessor for GameActivityDraftBuilder();
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  v81[0] = v36;
  v70 = v32;
  sub_24F928168();
  type metadata accessor for ChallengesUpdateNotifier();
  v71 = v29;
  sub_24F928158();
  type metadata accessor for FeedRefreshNotifier();
  swift_allocObject();
  v81[0] = sub_24F0390D0();
  v72 = v26;
  sub_24F928168();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720);
  v37 = [objc_opt_self() standardUserDefaults];
  v82 = sub_24E69A5C4(0, &qword_27F21ECF8);
  v83 = &protocol witness table for NSUserDefaults;
  v81[0] = v37;
  v73 = v23;
  sub_24F928168();
  type metadata accessor for GSKAutoPlayVideoSettingsManager();
  v74 = v20;
  sub_24F928158();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2222B0);
  v75 = v17;
  sub_24F928158();
  v38 = OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  v39 = *(a1 + v38);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v38) = v39;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v39 = sub_24E619A88(0, v39[2] + 1, 1, v39);
    *(a1 + v38) = v39;
  }

  v42 = v39[2];
  v41 = v39[3];
  if (v42 >= v41 >> 1)
  {
    v39 = sub_24E619A88((v41 > 1), v42 + 1, 1, v39);
  }

  v39[2] = v42 + 1;
  v43 = &v39[2 * v42];
  v43[4] = sub_24F708EC8;
  v43[5] = 0;
  *(a1 + v38) = v39;
  swift_endAccess();
  sub_24F929158();

  v44 = v68;
  sub_24F928158();
  sub_24F928FD8();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF8);
  v46 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v62 = *(v3 + 72);
  v61 = v45;
  v47 = swift_allocObject();
  v64 = xmmword_24F93DE60;
  *(v47 + 16) = xmmword_24F93DE60;
  v65 = *(v3 + 16);
  v65(v47 + v46, v44, v2);
  v48 = sub_24F928F68();
  v49 = v2;
  v50 = *(v3 + 8);
  v66 = v3 + 8;
  v50(v44, v49);
  type metadata accessor for OnDevicePersonalizationManager();
  v67 = v48;

  sub_24F928158();
  type metadata accessor for ArcadeSubscription();
  sub_24F928158();
  type metadata accessor for TaskUpdateHolder();
  v51 = swift_allocObject();
  v52 = OBJC_IVAR____TtC12GameStoreKit16TaskUpdateHolder_taskUpdate;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50);
  (*(*(v53 - 8) + 56))(v51 + v52, 1, 1, v53);
  v81[0] = v51;
  sub_24F928168();
  sub_24F9285B8();
  sub_24F928158();
  v82 = &_s14descr2861AC041O5GamesON;
  v83 = sub_24EDA569C();
  LOBYTE(v81[0]) = 3;
  v54 = sub_24F91FE68();
  __swift_destroy_boxed_opaque_existential_1(v81);
  if (v54)
  {
    type metadata accessor for PhotosAssetManager();
    sub_24F928158();
    v55 = swift_allocObject();
    *(v55 + 16) = v64;
    v65(v55 + v46, v44, v49);
    v63 = sub_24F928F68();

    v50(v44, v49);
  }

  else
  {
    v63 = sub_24F928F68();
  }

  sub_24E69A5C4(0, &qword_27F24DA40);
  sub_24F928158();
  sub_24E69A5C4(0, &qword_27F22D170);
  sub_24F928158();
  v56 = swift_allocObject();
  *(v56 + 16) = v64;
  v65(v56 + v46, v69, v49);
  v65 = sub_24F928F68();
  *&v64 = sub_24F928F88();
  v62 = sub_24F928F88();
  v61 = sub_24F928F88();
  v60[4] = sub_24F928F88();
  v60[3] = sub_24F928F88();
  v60[2] = sub_24F928F88();
  v57 = sub_24F928FA8();

  v60[1] = v57;

  sub_24F928F88();

  sub_24F928F88();

  sub_24F928F88();

  sub_24F928F88();

  sub_24F928FA8();

  sub_24F928F88();

  v58 = sub_24F928F88();

  v50(v78, v49);
  v50(v68, v49);
  v50(v80, v49);
  v50(v79, v49);
  v50(v77, v49);
  v50(v76, v49);
  v50(v75, v49);
  v50(v74, v49);
  v50(v73, v49);
  v50(v72, v49);
  v50(v71, v49);
  v50(v70, v49);
  v50(v69, v49);
  return v58;
}

id sub_24F709AC4@<X0>(void *a1@<X8>)
{
  [objc_opt_self() setForCurrentProcessAllowingPDF_];
  result = [objc_allocWithZone(MEMORY[0x277D0C090]) init];
  *a1 = result;
  return result;
}

uint64_t sub_24F709B18@<X0>(uint64_t *a1@<X8>)
{
  sub_24F928FD8();
  v2 = sub_24F928FB8();
  type metadata accessor for ChallengesUpdateNotifier();
  swift_allocObject();
  v3 = sub_24F5EFB64(v2, 2.0);

  *a1 = v3;
  return result;
}

uint64_t sub_24F709B88@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  type metadata accessor for GSKAutoPlayVideoSettingsManager();
  swift_allocObject();
  v5 = sub_24F543B28();
  swift_beginAccess();
  *(v5 + 16) = 0;
  v6 = sub_24F92B858();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  sub_24EA998B8(0, 0, v4, &unk_24FA07680, v7);

  *a1 = v5;
  return result;
}

uint64_t sub_24F709CD4@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  result = sub_24E69A5C4(0, &qword_27F221568);
  v4 = MEMORY[0x277D225B8];
  a1[3] = result;
  a1[4] = v4;
  *a1 = v2;
  return result;
}

uint64_t sub_24F709D48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - v4;
  v6 = sub_24F92A498();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  sub_24F928F28();
  v27 = &type metadata for PageContextMetricsFieldProvider;
  v28 = sub_24F70AD80();
  if (qword_27F210328 != -1)
  {
    swift_once();
  }

  v13 = sub_24F92A278();
  __swift_project_value_buffer(v13, qword_27F229DD0);
  sub_24F929F08();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  sub_24F929E08();
  (*(v7 + 16))(v9, v12, v6);
  if (qword_27F211860 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A408();
  (*(v3 + 8))(v5, v2);
  v14 = v26;
  v15 = Bag.anonymousMetricsTopics.getter();
  v16 = MEMORY[0x25304F780](v9, v14, *(&v14 + 1), v15);
  v17 = type metadata accessor for MetricsPipelineTransformer.State(0);
  v18 = *(v17 + 20);

  *(a1 + v18) = v16;
  if ((sub_24F737A14() & 1) == 0)
  {
    return (*(v7 + 8))(v12, v6);
  }

  if (qword_27F211250 != -1)
  {
    swift_once();
  }

  v19 = qword_27F39E538;
  v20 = *(v17 + 28);
  v21 = *(a1 + v20);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_24E6191F0(0, v21[2] + 1, 1, v21);
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_24E6191F0((v22 > 1), v23 + 1, 1, v21);
  }

  (*(v7 + 8))(v12, v6);
  v27 = type metadata accessor for GSKDebugMetricsEventRecorder();
  v28 = sub_24F70ADD4();
  *&v26 = v19;
  v21[2] = v23 + 1;
  result = sub_24E612E28(&v26, &v21[5 * v23 + 4]);
  *(a1 + v20) = v21;
  return result;
}

uint64_t sub_24F70A130@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24F92A498();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  sub_24F928FD8();
  sub_24F928FB8();
  sub_24F928F28();
  (*(v3 + 16))(v5, v8, v2);
  type metadata accessor for OnDevicePersonalizationManager();
  v9 = swift_allocObject();
  v10 = [objc_allocWithZone(MEMORY[0x277CEE498]) initWithBag_];

  swift_unknownObjectRelease();
  v11 = *(v3 + 8);
  v11(v5, v2);
  result = (v11)(v8, v2);
  *(v9 + 16) = v10;
  *a1 = v9;
  return result;
}

uint64_t sub_24F70A2DC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - v4;
  v6 = sub_24F92A498();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928FD8();
  sub_24F928FB8();
  sub_24F928F28();
  if (qword_27F211898 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A408();
  (*(v3 + 8))(v5, v2);
  v10 = v16[0];
  v11 = v16[1];
  v12 = [objc_opt_self() sharedInstance];
  type metadata accessor for ArcadeSubscription();
  v13 = swift_allocObject();
  v14 = sub_24F70AA88(v10, v11, v12, v13);

  result = (*(v7 + 8))(v9, v6);
  *a1 = v14;
  return result;
}

uint64_t sub_24F70A540@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A758);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = &v24 - v1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A750);
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v24 - v3;
  v5 = sub_24F928D08();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9285B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_24F9285A8();
  v24 = sub_24F15F2FC();
  sub_24F928D18();
  sub_24F928558();
  sub_24F928528();
  (*(v2 + 8))(v4, v25);
  (*(v6 + 8))(v8, v5);
  v19 = *(v10 + 8);
  v19(v12, v9);
  v20 = sub_24F70AC74();
  v30 = &type metadata for ComponentKinds;
  v31 = v20;
  if (qword_27F2107B0 != -1)
  {
    swift_once();
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232810);
  __swift_project_value_buffer(v21, qword_27F2327F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232820);
  sub_24F928528();
  v19(v15, v9);
  v30 = &type metadata for ActionKinds;
  v31 = v24;
  v22 = v26;
  sub_24F928578();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A768);
  sub_24F928528();
  (*(v27 + 8))(v22, v29);
  return (v19)(v18, v9);
}

uint64_t sub_24F70A960@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PhotosService();
  v3 = swift_allocObject();
  type metadata accessor for PhotosAssetManager();
  v4 = swift_allocObject();
  v7[3] = v2;
  v7[4] = &protocol witness table for PhotosService;
  v7[0] = v3;
  sub_24E615E00(v7, v4 + 16);
  v5 = sub_24E611D40(MEMORY[0x277D84F90]);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  *(v4 + 56) = v5;
  *a1 = v4;
  return result;
}

id sub_24F70AA00@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277CF7D40]) init];
  *a1 = result;
  return result;
}

id sub_24F70AA3C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  *a1 = result;
  return result;
}

uint64_t sub_24F70AA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18[-1] - v9;
  v18[3] = sub_24E69A5C4(0, &qword_27F231410);
  v18[4] = &protocol witness table for ASDSubscriptionEntitlements;
  v18[0] = a3;
  *(a4 + 24) = 0;
  sub_24F91FDB8();
  *(a4 + 32) = a1;
  *(a4 + 40) = a2;
  sub_24E615E00(v18, a4 + 48);
  *(a4 + 16) = 5;
  v11 = [objc_opt_self() defaultCenter];
  [v11 addObserver:a4 selector:sel_entitlementsDidChange name:*MEMORY[0x277CEC318] object:0];

  v12 = sub_24F92B858();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_24F92B7F8();

  v13 = sub_24F92B7E8();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a4;
  sub_24EA998B8(0, 0, v10, &unk_24FA20410, v14);

  __swift_destroy_boxed_opaque_existential_1(v18);
  return a4;
}

unint64_t sub_24F70AC74()
{
  result = qword_27F24DA48;
  if (!qword_27F24DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DA48);
  }

  return result;
}

uint64_t sub_24F70ACCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E614970;

  return sub_24F74D9C0();
}

unint64_t sub_24F70AD80()
{
  result = qword_27F24DA50;
  if (!qword_27F24DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DA50);
  }

  return result;
}

unint64_t sub_24F70ADD4()
{
  result = qword_27F24DA58;
  if (!qword_27F24DA58)
  {
    type metadata accessor for GSKDebugMetricsEventRecorder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DA58);
  }

  return result;
}

uint64_t sub_24F70AE44(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DA60);
  *(v3 + 64) = swift_task_alloc();
  v5 = type metadata accessor for Player(0);
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = *a2;

  return MEMORY[0x2822009F8](sub_24F70AFE0, 0, 0);
}

uint64_t sub_24F70AFE0()
{
  v33 = v0;
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[16] = __swift_project_value_buffer(v1, qword_27F39E850);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "PlayerData: Fetching player...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = v0[15];

  if (v5)
  {
    v6 = v0[15];

    v7 = sub_24F9220B8();
    v8 = sub_24F92BD98();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[14];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_24E7620D4(v9, v6, &v32);
      _os_log_impl(&dword_24E5DD000, v7, v8, "PlayerData: Fetching player %s data...", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x2530542D0](v11, -1, -1);
      MEMORY[0x2530542D0](v10, -1, -1);
    }

    v12 = v0[14];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
    v13 = swift_allocObject();
    v0[17] = v13;
    *(v13 + 16) = xmmword_24F93DE60;
    *(v13 + 32) = v12;
    *(v13 + 40) = v6;

    v14 = swift_task_alloc();
    v0[18] = v14;
    *v14 = v0;
    v14[1] = sub_24F70B43C;
    v15 = v0[3];

    return sub_24E64C130(v13, 1, v15);
  }

  else
  {
    v17 = sub_24F9220B8();
    v18 = sub_24F92BD98();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24E5DD000, v17, v18, "PlayerData: No playerID provided, fetching from LocalPlayerProvider...", v19, 2u);
      MEMORY[0x2530542D0](v19, -1, -1);
    }

    v21 = v0[3];
    v20 = v0[4];

    v22 = sub_24F92B858();
    (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
    sub_24F92B7F8();

    v23 = sub_24F92B7E8();
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v21;
    v26 = sub_24F1D48B8(0, 0, v20, &unk_24FA204A0, v24);
    v0[21] = v26;
    v27 = swift_task_alloc();
    v0[22] = v27;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
    *v27 = v0;
    v27[1] = sub_24F70B874;
    v29 = v0[7];
    v30 = v0[5];
    v31 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v29, v26, v30, v28, v31);
  }
}

uint64_t sub_24F70B43C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_24F70BF88;
  }

  else
  {

    *(v4 + 160) = a1;
    v5 = sub_24F70B56C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F70B56C()
{
  v1 = v0[8];
  sub_24ECD0B78(v0[20], v1);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D6F8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_24E601704(v0[8], &qword_27F24DA60);
    v3 = sub_24F9220B8();
    v4 = sub_24F92BDB8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24E5DD000, v3, v4, "PlayerData: Failed to fetch player data, returning nil.", v5, 2u);
      MEMORY[0x2530542D0](v5, -1, -1);
    }

    sub_24F70C5E0();
    swift_allocError();
    swift_willThrow();

    v6 = v0[1];
  }

  else
  {
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[8];

    sub_24E61C0A8(v9 + *(v2 + 48), v8);
    sub_24E61C0A8(v8, v7);
    v10 = sub_24F9220B8();
    v11 = sub_24F92BD98();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24E5DD000, v10, v11, "PlayerData: Returning player data.", v12, 2u);
      MEMORY[0x2530542D0](v12, -1, -1);
    }

    v13 = v0[10];
    v14 = v0[9];
    v15 = v0[2];
    sub_24E61C0A8(v0[13], v15);
    (*(v13 + 56))(v15, 0, 1, v14);

    v6 = v0[1];
  }

  return v6();
}

uint64_t sub_24F70B874()
{

  if (v0)
  {

    v1 = sub_24F70BC84;
  }

  else
  {
    v1 = sub_24F70B998;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24F70B998()
{

  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  sub_24E6364A0(v0[7], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24E601704(v0[6], &unk_27F23E1F0);
    v4 = sub_24F9220B8();
    v5 = sub_24F92BDB8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24E5DD000, v4, v5, "PlayerData: LocalPlayerProvider has not been set up yet, returning nil.", v6, 2u);
      MEMORY[0x2530542D0](v6, -1, -1);
    }

    v7 = v0[7];

    sub_24F70C5E0();
    swift_allocError();
    swift_willThrow();
    sub_24E601704(v7, &unk_27F23E1F0);

    v8 = v0[1];
  }

  else
  {
    sub_24E61C0A8(v0[6], v0[11]);
    v9 = sub_24F9220B8();
    v10 = sub_24F92BD98();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24E5DD000, v9, v10, "PlayerData: returning local player.", v11, 2u);
      MEMORY[0x2530542D0](v11, -1, -1);
    }

    v12 = v0[7];

    sub_24E601704(v12, &unk_27F23E1F0);
    v13 = v0[10];
    v14 = v0[9];
    v15 = v0[2];
    sub_24E61C0A8(v0[11], v15);
    (*(v13 + 56))(v15, 0, 1, v14);

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_24F70BC84()
{
  (*(v0[10] + 56))(v0[7], 1, 1, v0[9]);
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  sub_24E6364A0(v0[7], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24E601704(v0[6], &unk_27F23E1F0);
    v4 = sub_24F9220B8();
    v5 = sub_24F92BDB8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24E5DD000, v4, v5, "PlayerData: LocalPlayerProvider has not been set up yet, returning nil.", v6, 2u);
      MEMORY[0x2530542D0](v6, -1, -1);
    }

    v7 = v0[7];

    sub_24F70C5E0();
    swift_allocError();
    swift_willThrow();
    sub_24E601704(v7, &unk_27F23E1F0);

    v8 = v0[1];
  }

  else
  {
    sub_24E61C0A8(v0[6], v0[11]);
    v9 = sub_24F9220B8();
    v10 = sub_24F92BD98();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24E5DD000, v9, v10, "PlayerData: returning local player.", v11, 2u);
      MEMORY[0x2530542D0](v11, -1, -1);
    }

    v12 = v0[7];

    sub_24E601704(v12, &unk_27F23E1F0);
    v13 = v0[10];
    v14 = v0[9];
    v15 = v0[2];
    sub_24E61C0A8(v0[11], v15);
    (*(v13 + 56))(v15, 0, 1, v14);

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_24F70BF88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F70C04C(uint64_t a1)
{
  v1[7] = a1;
  v1[8] = sub_24F92B7F8();
  v1[9] = sub_24F92B7E8();
  v2 = type metadata accessor for LocalPlayerProvider();
  v3 = swift_task_alloc();
  v1[10] = v3;
  *v3 = v1;
  v3[1] = sub_24F70C11C;

  return MEMORY[0x28217F210](v1 + 5, v2, v2);
}

uint64_t sub_24F70C11C()
{
  *(*v1 + 88) = v0;

  v3 = sub_24F92B778();
  if (v0)
  {
    v4 = sub_24F70C3D8;
  }

  else
  {
    v4 = sub_24F70C278;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24F70C278()
{

  v1 = v0[5];
  if (v1)
  {
    v2 = v0[7];
    swift_getKeyPath();
    v0[6] = v1;
    sub_24E69A53C();

    sub_24F91FD88();

    v3 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
    swift_beginAccess();
    sub_24E70D960(v1 + v3, v2);

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v0[7];
  v6 = type metadata accessor for Player(0);
  (*(*(v6 - 8) + 56))(v5, v4, 1, v6);
  v7 = v0[1];

  return v7();
}

uint64_t sub_24F70C3D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F70C43C(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return sub_24F70AE44(a1, a2, a3);
}

uint64_t sub_24F70C4EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F70C52C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E614970;

  return sub_24F70C04C(a1);
}

unint64_t sub_24F70C5E0()
{
  result = qword_27F24DA68;
  if (!qword_27F24DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DA68);
  }

  return result;
}

unint64_t sub_24F70C650()
{
  result = qword_27F24DA70[0];
  if (!qword_27F24DA70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F24DA70);
  }

  return result;
}

uint64_t Artwork.Style.imageType(isPlaceholder:)(char a1)
{
  result = *v1;
  if (*v1 > 4u)
  {
    if ((result - 6) >= 2)
    {
      if (result == 5)
      {
        return 4;
      }

      else
      {
        return 2;
      }
    }

    return 0;
  }

  if (*v1 <= 1u)
  {
    if (*v1)
    {
      return result;
    }

    return 0;
  }

  if (result == 2)
  {
    if (a1)
    {
      return 1;
    }
  }

  else if (result == 3 || (a1 & 1) != 0)
  {
    return 3;
  }

  return 7;
}

unint64_t sub_24F70C734()
{
  result = qword_27F2162B8;
  if (!qword_27F2162B8)
  {
    type metadata accessor for GSKWrappedAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2162B8);
  }

  return result;
}

uint64_t sub_24F70C798(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12GameStoreKit16GSKWrappedAction_wrappedAction;
  type metadata accessor for GSKWrappedActionImplementation();
  swift_getWitnessTable();

  return sub_24F1489C4(a1 + v2);
}

uint64_t sub_24F70C82C(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DB08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F70CE1C();
  sub_24F92D128();
  v11 = a2;
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  sub_24E61B71C(&qword_27F2137A0);
  sub_24F92CD48();
  if (!v2)
  {
    v10[14] = 1;
    sub_24F92CD18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F70CA04()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x4449726579616C70;
  }
}

uint64_t sub_24F70CA48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449726579616C70 && a2 == 0xE900000000000073;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FA7C7A0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F70CB34(uint64_t a1)
{
  v2 = sub_24F70CE1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F70CB70(uint64_t a1)
{
  v2 = sub_24F70CE1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F70CBCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24F70CC20(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_24F70CC20(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DAF8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_24F70CE1C();
  sub_24F92D108();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    v9[7] = 0;
    sub_24E61B71C(&qword_27F216420);
    sub_24F92CC68();
    v7 = v10;
    v9[6] = 1;
    sub_24F92CC38();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24F70CE1C()
{
  result = qword_27F24DB00;
  if (!qword_27F24DB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DB00);
  }

  return result;
}

unint64_t sub_24F70CE84()
{
  result = qword_27F24DB10;
  if (!qword_27F24DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DB10);
  }

  return result;
}

unint64_t sub_24F70CEDC()
{
  result = qword_27F24DB18;
  if (!qword_27F24DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DB18);
  }

  return result;
}

unint64_t sub_24F70CF34()
{
  result = qword_27F24DB20;
  if (!qword_27F24DB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DB20);
  }

  return result;
}

uint64_t RecentSearchesDataIntent.playerID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24F70CFD4(uint64_t a1)
{
  v2 = sub_24F70D188();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F70D010(uint64_t a1)
{
  v2 = sub_24F70D188();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecentSearchesDataIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DB28);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F70D188();
  sub_24F92D128();
  sub_24F92CD08();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F70D188()
{
  result = qword_27F24DB30;
  if (!qword_27F24DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DB30);
  }

  return result;
}

uint64_t RecentSearchesDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DB38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F70D188();
  sub_24F92D108();
  if (!v2)
  {
    v9 = sub_24F92CC28();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F70D388(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DB28);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F70D188();
  sub_24F92D128();
  sub_24F92CD08();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F70D4E8()
{
  result = qword_27F24DB40;
  if (!qword_27F24DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DB40);
  }

  return result;
}

unint64_t sub_24F70D540()
{
  result = qword_27F24DB48;
  if (!qword_27F24DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DB48);
  }

  return result;
}

unint64_t sub_24F70D598()
{
  result = qword_27F24DB50;
  if (!qword_27F24DB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DB50);
  }

  return result;
}

uint64_t LaunchDashboardAction.player.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LaunchDashboardAction() + 20);

  return sub_24E6364A0(v3, a1);
}

uint64_t type metadata accessor for LaunchDashboardAction()
{
  result = qword_27F24DC58;
  if (!qword_27F24DC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LaunchDashboardAction.destination.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LaunchDashboardAction() + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_24E9C4DC4(v4, v5, v6);
}

uint64_t LaunchDashboardAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LaunchDashboardAction() + 28);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24F70D7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D65766569686361 && a2 == 0xED00004449746E65)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F70D830(uint64_t a1)
{
  v2 = sub_24F70E934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F70D86C(uint64_t a1)
{
  v2 = sub_24F70E934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F70D8A8(uint64_t a1)
{
  v2 = sub_24F70E88C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F70D8E4(uint64_t a1)
{
  v2 = sub_24F70E88C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F70D920()
{
  v1 = *v0;
  v2 = 0x72616F6268736164;
  v3 = 0x6552646E65697266;
  if (v1 != 6)
  {
    v3 = 0x6E6964726F636572;
  }

  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0x656C69666F7270;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F6272656461656CLL;
  if (v1 != 2)
  {
    v5 = 0x676E656C6C616863;
  }

  if (*v0)
  {
    v2 = 0x6D65766569686361;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F70DA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F710FC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F70DA74(uint64_t a1)
{
  v2 = sub_24F70E6E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F70DAB0(uint64_t a1)
{
  v2 = sub_24F70E6E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F70DAEC(uint64_t a1)
{
  v2 = sub_24F70E988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F70DB28(uint64_t a1)
{
  v2 = sub_24F70E988();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F70DB64(uint64_t a1)
{
  v2 = sub_24F70E790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F70DBA0(uint64_t a1)
{
  v2 = sub_24F70E790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F70DC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F6272656461656CLL && a2 == 0xED00004449647261)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F70DC90(uint64_t a1)
{
  v2 = sub_24F70E8E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F70DCCC(uint64_t a1)
{
  v2 = sub_24F70E8E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F70DD08(uint64_t a1)
{
  v2 = sub_24F70E838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F70DD44(uint64_t a1)
{
  v2 = sub_24F70E838();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F70DD80(uint64_t a1)
{
  v2 = sub_24F70E7E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F70DDBC(uint64_t a1)
{
  v2 = sub_24F70E7E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F70DDF8(uint64_t a1)
{
  v2 = sub_24F70E73C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F70DE34(uint64_t a1)
{
  v2 = sub_24F70E73C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LaunchDashboardAction.Destination.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DB58);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DB60);
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DB68);
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x28223BE20](v7);
  v56 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DB70);
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v44 = &v39 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DB78);
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DB80);
  v54 = *(v12 - 8);
  v55 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DB88);
  v53 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DB90);
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DB98);
  v21 = *(v20 - 8);
  v59 = v20;
  v60 = v21;
  MEMORY[0x28223BE20](v20);
  v22 = *(v1 + 8);
  *&v61 = *v1;
  *(&v61 + 1) = v22;
  v23 = *(v1 + 16);
  v24 = a1[3];
  v25 = a1;
  v27 = &v39 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  sub_24F70E6E8();
  sub_24F92D128();
  if (v23 <= 1)
  {
    if (!v23)
    {
      v63 = 1;
      sub_24F70E934();
      v28 = v59;
      sub_24F92CC98();
      sub_24F92CCA8();
      (*(v53 + 8))(v17, v15);
      return (*(v60 + 8))(v27, v28);
    }

    v64 = 2;
    sub_24F70E8E0();
    v31 = v59;
    sub_24F92CC98();
    v33 = v55;
    sub_24F92CCA8();
    (*(v54 + 8))(v14, v33);
    return (*(v60 + 8))(v27, v31);
  }

  if (v23 == 2)
  {
    v67 = 5;
    sub_24F70E7E4();
    v30 = v56;
    v31 = v59;
    sub_24F92CC98();
    v32 = v58;
    sub_24F92CD08();
    (*(v57 + 8))(v30, v32);
    return (*(v60 + 8))(v27, v31);
  }

  if (v61 <= 1)
  {
    if (v61 == 0)
    {
      v62 = 0;
      sub_24F70E988();
      v35 = v59;
      sub_24F92CC98();
      (*(v39 + 8))(v19, v40);
    }

    else
    {
      v65 = 3;
      sub_24F70E88C();
      v38 = v41;
      v35 = v59;
      sub_24F92CC98();
      (*(v42 + 8))(v38, v43);
    }
  }

  else
  {
    if (v61 ^ 2 | *(&v61 + 1))
    {
      if (v61 ^ 3 | *(&v61 + 1))
      {
        v69 = 7;
        sub_24F70E73C();
        v34 = v50;
        v35 = v59;
        sub_24F92CC98();
        v37 = v51;
        v36 = v52;
      }

      else
      {
        v68 = 6;
        sub_24F70E790();
        v34 = v47;
        v35 = v59;
        sub_24F92CC98();
        v37 = v48;
        v36 = v49;
      }
    }

    else
    {
      v66 = 4;
      sub_24F70E838();
      v34 = v44;
      v35 = v59;
      sub_24F92CC98();
      v37 = v45;
      v36 = v46;
    }

    (*(v37 + 8))(v34, v36);
  }

  return (*(v60 + 8))(v27, v35);
}

unint64_t sub_24F70E6E8()
{
  result = qword_27F24DBA0;
  if (!qword_27F24DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DBA0);
  }

  return result;
}

unint64_t sub_24F70E73C()
{
  result = qword_27F24DBA8;
  if (!qword_27F24DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DBA8);
  }

  return result;
}

unint64_t sub_24F70E790()
{
  result = qword_27F24DBB0;
  if (!qword_27F24DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DBB0);
  }

  return result;
}

unint64_t sub_24F70E7E4()
{
  result = qword_27F24DBB8;
  if (!qword_27F24DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DBB8);
  }

  return result;
}

unint64_t sub_24F70E838()
{
  result = qword_27F24DBC0;
  if (!qword_27F24DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DBC0);
  }

  return result;
}

unint64_t sub_24F70E88C()
{
  result = qword_27F24DBC8;
  if (!qword_27F24DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DBC8);
  }

  return result;
}

unint64_t sub_24F70E8E0()
{
  result = qword_27F24DBD0;
  if (!qword_27F24DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DBD0);
  }

  return result;
}

unint64_t sub_24F70E934()
{
  result = qword_27F24DBD8;
  if (!qword_27F24DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DBD8);
  }

  return result;
}

unint64_t sub_24F70E988()
{
  result = qword_27F24DBE0;
  if (!qword_27F24DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DBE0);
  }

  return result;
}

uint64_t LaunchDashboardAction.Destination.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DBE8);
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x28223BE20](v3);
  v81 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DBF0);
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x28223BE20](v5);
  v78 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DBF8);
  v8 = *(v7 - 8);
  v70 = v7;
  v71 = v8;
  MEMORY[0x28223BE20](v7);
  v80 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DC00);
  v11 = *(v10 - 8);
  v68 = v10;
  v69 = v11;
  MEMORY[0x28223BE20](v10);
  v79 = &v58 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DC08);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v77 = &v58 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DC10);
  v65 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v76 = &v58 - v14;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DC18);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DC20);
  v61 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DC28);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v58 - v22;
  v24 = a1[3];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24F70E6E8();
  v25 = v83;
  sub_24F92D108();
  if (!v25)
  {
    v60 = v19;
    v59 = v17;
    v27 = v79;
    v26 = v80;
    v83 = v21;
    v28 = v81;
    v29 = v82;
    v30 = sub_24F92CC78();
    v31 = (2 * *(v30 + 16)) | 1;
    v85 = v30;
    v86 = v30 + 32;
    v87 = 0;
    v88 = v31;
    v32 = sub_24E64344C();
    if (v32 == 8 || v87 != v88 >> 1)
    {
      v37 = v20;
      v38 = sub_24F92C918();
      swift_allocError();
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
      *v40 = &type metadata for LaunchDashboardAction.Destination;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
      swift_willThrow();
      (*(v83 + 8))(v23, v37);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v32 > 3u)
      {
        v42 = v83;
        if (v32 > 5u)
        {
          v43 = v29;
          if (v32 == 6)
          {
            v89 = 6;
            sub_24F70E790();
            v46 = v78;
            sub_24F92CBA8();
            (*(v72 + 8))(v46, v73);
            (*(v42 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v35 = 0;
            v34 = 3;
            v36 = 3;
          }

          else
          {
            v89 = 7;
            sub_24F70E73C();
            sub_24F92CBA8();
            (*(v74 + 8))(v28, v75);
            (*(v42 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v35 = 0;
            v36 = 3;
            v34 = 4;
          }
        }

        else
        {
          if (v32 == 4)
          {
            v89 = 4;
            sub_24F70E838();
            sub_24F92CBA8();
            (*(v69 + 8))(v27, v68);
            (*(v42 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v35 = 0;
            v36 = 3;
            v34 = 2;
          }

          else
          {
            v89 = 5;
            sub_24F70E7E4();
            sub_24F92CBA8();
            v81 = v20;
            v47 = v70;
            v34 = sub_24F92CC28();
            v35 = v55;
            (*(v71 + 8))(v26, v47);
            (*(v42 + 8))(v23, v81);
            swift_unknownObjectRelease();
            v36 = 2;
          }

          v43 = v82;
        }
      }

      else if (v32 > 1u)
      {
        v43 = v29;
        if (v32 == 2)
        {
          v89 = 2;
          sub_24F70E8E0();
          v44 = v76;
          sub_24F92CBA8();
          v45 = v83;
          v81 = v20;
          v51 = v62;
          v34 = sub_24F92CBC8();
          v35 = v56;
          (*(v65 + 8))(v44, v51);
          (*(v45 + 8))(v23, v81);
          swift_unknownObjectRelease();
          v36 = 1;
        }

        else
        {
          v89 = 3;
          sub_24F70E88C();
          v48 = v77;
          sub_24F92CBA8();
          v49 = v20;
          v50 = v83;
          (*(v66 + 8))(v48, v67);
          (*(v50 + 8))(v23, v49);
          swift_unknownObjectRelease();
          v35 = 0;
          v36 = 3;
          v34 = 1;
        }
      }

      else
      {
        if (v32)
        {
          v89 = 1;
          sub_24F70E934();
          sub_24F92CBA8();
          v52 = v23;
          v53 = v20;
          v54 = v64;
          v34 = sub_24F92CBC8();
          v35 = v57;
          (*(v63 + 8))(v16, v54);
          (*(v83 + 8))(v52, v53);
          swift_unknownObjectRelease();
          v36 = 0;
        }

        else
        {
          v89 = 0;
          sub_24F70E988();
          v33 = v60;
          sub_24F92CBA8();
          (*(v61 + 8))(v33, v59);
          (*(v83 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v34 = 0;
          v35 = 0;
          v36 = 3;
        }

        v43 = v29;
      }

      *v43 = v34;
      *(v43 + 8) = v35;
      *(v43 + 16) = v36;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v84);
}

uint64_t sub_24F70F6C8()
{
  v1 = 1701667175;
  v2 = 0x74616E6974736564;
  if (*v0 != 2)
  {
    v2 = 0x654D6E6F69746361;
  }

  if (*v0)
  {
    v1 = 0x726579616C70;
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

uint64_t sub_24F70F74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F711280(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F70F774(uint64_t a1)
{
  v2 = sub_24F70FAC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F70F7B0(uint64_t a1)
{
  v2 = sub_24F70FAC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LaunchDashboardAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DC30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F70FAC4();
  sub_24F92D128();
  LOBYTE(v15) = 0;
  type metadata accessor for Game();
  sub_24F710154(&qword_27F214950, type metadata accessor for Game);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for LaunchDashboardAction();
    LOBYTE(v15) = 1;
    type metadata accessor for Player(0);
    sub_24F710154(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CCF8();
    v10 = v3 + *(v9 + 24);
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v15 = *v10;
    v16 = v11;
    v17 = v12;
    v14[7] = 2;
    sub_24E9C4DC4(v15, v11, v12);
    sub_24F70FB18();
    sub_24F92CD48();
    sub_24E634F20(v15, v16, v17);
    LOBYTE(v15) = 3;
    sub_24F928AD8();
    sub_24F710154(&qword_27F216080, MEMORY[0x277D21C88]);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24F70FAC4()
{
  result = qword_27F24DC38;
  if (!qword_27F24DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DC38);
  }

  return result;
}

unint64_t sub_24F70FB18()
{
  result = qword_27F24DC40;
  if (!qword_27F24DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DC40);
  }

  return result;
}

uint64_t LaunchDashboardAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v28 = sub_24F928AD8();
  v24 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v26 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v7);
  v27 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DC48);
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v10 = &v23 - v9;
  v11 = type metadata accessor for LaunchDashboardAction();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F70FAC4();
  v30 = v10;
  v14 = v32;
  sub_24F92D108();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v13;
  v16 = v28;
  LOBYTE(v33) = 0;
  sub_24F710154(&qword_27F214968, type metadata accessor for Game);
  v17 = v27;
  sub_24F92CC68();
  sub_24E636644(v17, v15);
  type metadata accessor for Player(0);
  LOBYTE(v33) = 1;
  sub_24F710154(&qword_27F213E38, type metadata accessor for Player);
  sub_24F92CC18();
  sub_24E6365D4(v6, v15 + v11[5]);
  v35 = 2;
  sub_24F710100();
  sub_24F92CC68();
  v18 = a1;
  v19 = v34;
  v20 = v15 + v11[6];
  *v20 = v33;
  *(v20 + 16) = v19;
  LOBYTE(v33) = 3;
  sub_24F710154(&qword_27F254CB0, MEMORY[0x277D21C88]);
  v21 = v26;
  sub_24F92CC68();
  (*(v29 + 8))(v30, v31);
  (*(v24 + 32))(v15 + v11[7], v21, v16);
  sub_24F71019C(v15, v25, type metadata accessor for LaunchDashboardAction);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_24F710204(v15, type metadata accessor for LaunchDashboardAction);
}

unint64_t sub_24F710100()
{
  result = qword_27F24DC50;
  if (!qword_27F24DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DC50);
  }

  return result;
}

uint64_t sub_24F710154(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F71019C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F710204(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F7102A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Game();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 252)
  {
    v14 = *(a1 + a3[6] + 16);
    if (v14 > 3)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = sub_24F928AD8();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24F710438(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Game();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 252)
  {
    *(a1 + a4[6] + 16) = -a2;
  }

  else
  {
    v15 = sub_24F928AD8();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_24F7105B8()
{
  type metadata accessor for Game();
  if (v0 <= 0x3F)
  {
    sub_24E637694();
    if (v1 <= 0x3F)
    {
      sub_24F928AD8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit21LaunchDashboardActionV11DestinationO(uint64_t a1)
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

unint64_t sub_24F71072C()
{
  result = qword_27F24DC68;
  if (!qword_27F24DC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DC68);
  }

  return result;
}

unint64_t sub_24F710784()
{
  result = qword_27F24DC70;
  if (!qword_27F24DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DC70);
  }

  return result;
}

unint64_t sub_24F7107DC()
{
  result = qword_27F24DC78;
  if (!qword_27F24DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DC78);
  }

  return result;
}

unint64_t sub_24F710834()
{
  result = qword_27F24DC80;
  if (!qword_27F24DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DC80);
  }

  return result;
}

unint64_t sub_24F71088C()
{
  result = qword_27F24DC88;
  if (!qword_27F24DC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DC88);
  }

  return result;
}

unint64_t sub_24F7108E4()
{
  result = qword_27F24DC90;
  if (!qword_27F24DC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DC90);
  }

  return result;
}

unint64_t sub_24F71093C()
{
  result = qword_27F24DC98;
  if (!qword_27F24DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DC98);
  }

  return result;
}

unint64_t sub_24F710994()
{
  result = qword_27F24DCA0;
  if (!qword_27F24DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DCA0);
  }

  return result;
}

unint64_t sub_24F7109EC()
{
  result = qword_27F24DCA8;
  if (!qword_27F24DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DCA8);
  }

  return result;
}

unint64_t sub_24F710A44()
{
  result = qword_27F24DCB0;
  if (!qword_27F24DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DCB0);
  }

  return result;
}

unint64_t sub_24F710A9C()
{
  result = qword_27F24DCB8;
  if (!qword_27F24DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DCB8);
  }

  return result;
}

unint64_t sub_24F710AF4()
{
  result = qword_27F24DCC0;
  if (!qword_27F24DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DCC0);
  }

  return result;
}

unint64_t sub_24F710B4C()
{
  result = qword_27F24DCC8;
  if (!qword_27F24DCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DCC8);
  }

  return result;
}

unint64_t sub_24F710BA4()
{
  result = qword_27F24DCD0;
  if (!qword_27F24DCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DCD0);
  }

  return result;
}

unint64_t sub_24F710BFC()
{
  result = qword_27F24DCD8;
  if (!qword_27F24DCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DCD8);
  }

  return result;
}

unint64_t sub_24F710C54()
{
  result = qword_27F24DCE0;
  if (!qword_27F24DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DCE0);
  }

  return result;
}

unint64_t sub_24F710CAC()
{
  result = qword_27F24DCE8;
  if (!qword_27F24DCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DCE8);
  }

  return result;
}

unint64_t sub_24F710D04()
{
  result = qword_27F24DCF0;
  if (!qword_27F24DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DCF0);
  }

  return result;
}

unint64_t sub_24F710D5C()
{
  result = qword_27F24DCF8;
  if (!qword_27F24DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DCF8);
  }

  return result;
}

unint64_t sub_24F710DB4()
{
  result = qword_27F24DD00;
  if (!qword_27F24DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DD00);
  }

  return result;
}

unint64_t sub_24F710E0C()
{
  result = qword_27F24DD08;
  if (!qword_27F24DD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DD08);
  }

  return result;
}

unint64_t sub_24F710E64()
{
  result = qword_27F24DD10;
  if (!qword_27F24DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DD10);
  }

  return result;
}

unint64_t sub_24F710EBC()
{
  result = qword_27F24DD18;
  if (!qword_27F24DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DD18);
  }

  return result;
}

unint64_t sub_24F710F14()
{
  result = qword_27F24DD20;
  if (!qword_27F24DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DD20);
  }

  return result;
}

unint64_t sub_24F710F6C()
{
  result = qword_27F24DD28;
  if (!qword_27F24DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DD28);
  }

  return result;
}

uint64_t sub_24F710FC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72616F6268736164 && a2 == 0xE900000000000064;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D65766569686361 && a2 == 0xEC00000073746E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xEC00000073647261 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E656C6C616863 && a2 == 0xEA00000000007365 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA7C7C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C69666F7270 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6552646E65697266 && a2 == 0xEE00737473657571 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6964726F636572 && a2 == 0xEA00000000007367)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_24F711280(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667175 && a2 == 0xE400000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24F7113EC()
{
  swift_getKeyPath();
  sub_24F71320C();
  sub_24F91FD88();

  return *(v0 + 48);
}

uint64_t sub_24F71145C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F71320C();
  sub_24F91FD88();

  *a2 = *(v3 + 48);
  return result;
}

id sub_24F7114FC(char a1)
{
  if (*(v1 + 48) == (a1 & 1))
  {
    *(v1 + 48) = a1 & 1;

    return sub_24F7124E8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F71320C();
    sub_24F91FD78();
  }
}

id sub_24F711600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 56);
  if (v5 == 2)
  {
    goto LABEL_11;
  }

  v9 = *v4;
  v11 = v4[8];
  v10 = v4[9];
  swift_getKeyPath();
  aBlock = v4;
  sub_24F71320C();
  sub_24F91FD88();

  v12 = v4[2];
  if (!v12)
  {
    goto LABEL_11;
  }

  sub_24E615E00(a1, &aBlock);
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DD50);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v41 = 0;
    memset(v40, 0, sizeof(v40));
    sub_24E601704(v40, &qword_27F24DD58);
LABEL_11:
    sub_24F712190(0);
    return sub_24F7124E8();
  }

  sub_24E612C80(v40, v42);
  v14 = v43;
  v15 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v16 = (*(v15 + 32))(v14, v15);
  if (!v17 || (*&v40[0] = v16, *(&v40[0] + 1) = v17, sub_24F92C7F8(), v18 = sub_24E86029C(&aBlock), sub_24E601704(&aBlock, &qword_27F235830), !v18))
  {

    __swift_destroy_boxed_opaque_existential_1(v42);
    goto LABEL_11;
  }

  [v13 pauseTimer];
  v19 = *(v18 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
  if (v19)
  {
    v20 = MEMORY[0x277CC08F0];
    v21 = *MEMORY[0x277CC08F0];
    v32 = v18;
    v22 = *(MEMORY[0x277CC08F0] + 16);
    v23 = type metadata accessor for VideoPlayer();
    v39.receiver = v19;
    v39.super_class = v23;
    aBlock = v21;
    v34 = *(v20 + 8);
    v35 = v22;
    v18 = v32;
    objc_msgSendSuper2(&v39, sel_seekToTime_, &aBlock);
  }

  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v18;
  *(v25 + 24) = v24;
  *(v25 + 32) = v5 & 1;
  *(v25 + 40) = v11;
  *(v25 + 48) = v10;
  *(v25 + 56) = a3;
  *(v25 + 64) = a4;
  *(v25 + 72) = v9;
  v37 = sub_24F713430;
  v38 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_24ECAEFC8;
  v36 = &block_descriptor_171;
  v26 = _Block_copy(&aBlock);
  v27 = objc_opt_self();

  v28 = [v27 timerWithTimeInterval:1 repeats:v26 block:0.25];
  _Block_release(v26);

  v29 = [objc_opt_self() currentRunLoop];
  [v29 addTimer:v28 forMode:*MEMORY[0x277CBE738]];

  v30 = v28;
  sub_24F712190(v28);

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

void *sub_24F711A0C()
{
  swift_getKeyPath();
  sub_24F71320C();
  sub_24F91FD88();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_24F711ABC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F71320C();
  sub_24F91FD88();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_24F711B44(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24F711B74(v1);
}

void sub_24F711B74(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F71320C();
    sub_24F91FD78();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_24E69A5C4(0, &qword_27F24DD48);
  v5 = v4;
  v6 = a1;
  v7 = sub_24F92C408();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

void sub_24F711CD4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  v3 = a2;
}

id sub_24F711D08(void *a1)
{
  result = [a1 invalidate];
  if (*(v1 + 32) == 0.0)
  {
    *(v1 + 32) = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F71320C();
    sub_24F91FD78();
  }

  if (*(v1 + 40) == 0.0)
  {
    *(v1 + 40) = 0;
  }

  else
  {
    v4 = swift_getKeyPath();
    MEMORY[0x28223BE20](v4);
    sub_24F71320C();
    sub_24F91FD78();
  }

  return result;
}

void sub_24F711E90(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F71320C();
    sub_24F91FD78();
  }
}

void sub_24F711F78(double a1)
{
  if (*(v1 + 40) == a1)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F71320C();
    sub_24F91FD78();
  }
}

void *sub_24F712060()
{
  swift_getKeyPath();
  sub_24F71320C();
  sub_24F91FD88();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_24F7120D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F71320C();
  sub_24F91FD88();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_24F712160(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24F712190(v1);
}

void sub_24F712190(void *a1)
{
  v3 = *(v1 + 24);
  if (!v3)
  {
    if (!a1)
    {
      v9 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F71320C();
    sub_24F91FD78();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_24E69A5C4(0, &qword_27F22F900);
  v4 = v3;
  v5 = a1;
  v6 = sub_24F92C408();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v1 + 24);
LABEL_8:
  *(v1 + 24) = a1;
  v8 = v5;
  sub_24F711D08(v9);
}

double sub_24F712318()
{
  swift_getKeyPath();
  sub_24F71320C();
  sub_24F91FD88();

  return *(v0 + 32);
}

double sub_24F712388@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F71320C();
  sub_24F91FD88();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

double sub_24F712400()
{
  swift_getKeyPath();
  sub_24F71320C();
  sub_24F91FD88();

  return *(v0 + 40);
}

double sub_24F712470@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F71320C();
  sub_24F91FD88();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

id sub_24F7124E8()
{
  swift_getKeyPath();
  sub_24F71320C();
  sub_24F91FD88();

  if (!*(v0 + 24))
  {
    IsSwitchControlRunning = UIAccessibilityIsSwitchControlRunning();
    if (_AXSVoiceOverTouchEnabled() || _AXSReduceMotionEnabled() || _AXSAssistiveTouchEnabled() || _AXSCommandAndControlEnabled() || _AXSFullKeyboardAccessEnabled())
    {
      IsSwitchControlRunning = 1;
    }

    swift_getKeyPath();
    sub_24F91FD88();

    if ((*(v0 + 48) & 1) != 0 || (*(v0 + 50) & 1) != 0 || IsSwitchControlRunning || (*(v0 + 49) & 1) == 0)
    {
      swift_getKeyPath();
      sub_24F91FD88();

      v3 = &selRef_pauseTimer;
    }

    else
    {
      swift_getKeyPath();
      sub_24F91FD88();

      v3 = &selRef_resumeTimer;
    }

    return [*(v0 + 16) *v3];
  }

  return result;
}

void sub_24F712668()
{
  v1 = v0;
  v2 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v4 = *MEMORY[0x277D76520];
  *(inited + 32) = *MEMORY[0x277D76520];

  v5 = v4;
  sub_24EA0AFE0(inited);
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = 0;
    while (v7 < *(v2 + 16))
    {
      v8 = v7 + 1;
      v9 = *(v2 + 32 + 8 * v7);
      v10 = objc_opt_self();
      v11 = v9;
      v12 = [v10 defaultCenter];
      [v12 addObserver:v1 selector:sel_pauseResumeTimer name:v11 object:0];

      v7 = v8;
      if (v6 == v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

void sub_24F7127A8()
{
  v1 = v0;
  v2 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v4 = *MEMORY[0x277D76520];
  *(inited + 32) = *MEMORY[0x277D76520];

  v5 = v4;
  sub_24EA0AFE0(inited);
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = 0;
    while (v7 < *(v2 + 16))
    {
      v8 = v7 + 1;
      v9 = *(v2 + 32 + 8 * v7);
      v10 = objc_opt_self();
      v11 = v9;
      v12 = [v10 defaultCenter];
      [v12 removeObserver:v1 name:v11 object:0];

      v7 = v8;
      if (v6 == v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_24F71291C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v25 - v18;
  v20 = sub_24F92B858();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_24F92B7F8();

  v21 = sub_24F92B7E8();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v21;
  *(v22 + 24) = v23;
  *(v22 + 32) = a4;
  *(v22 + 40) = a5;
  *(v22 + 48) = a6;
  *(v22 + 56) = a1;
  *(v22 + 64) = a2;
  *(v22 + 72) = a7;
  *(v22 + 80) = a8;
  *(v22 + 88) = a9;
  sub_24EA998B8(0, 0, v19, &unk_24FA21810, v22);
}

uint64_t sub_24F712A94(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 104) = a9;
  *(v10 + 112) = a10;
  *(v10 + 88) = a1;
  *(v10 + 96) = a2;
  *(v10 + 72) = a6;
  *(v10 + 80) = a7;
  sub_24F92B7F8();
  *(v10 + 120) = sub_24F92B7E8();
  v12 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F712B38, v12, v11);
}

uint64_t sub_24F712B38()
{
  v1 = *(v0 + 72);

  v2 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
  if (v3)
  {
    v4 = [v3 currentItem];
    if (v4)
    {
      v5 = v4;
      [v4 duration];

      *(v0 + 128) = v26;
      *(v0 + 136) = v27;
      *(v0 + 144) = v28;
      Seconds = CMTimeGetSeconds((v0 + 128));
      v7 = *(v1 + v2);
      if (v7)
      {
        v8 = Seconds;
        [v7 currentTime];
        *(v0 + 128) = v26;
        *(v0 + 136) = v27;
        *(v0 + 144) = v28;
        v9 = CMTimeGetSeconds((v0 + 128));
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v11 = Strong;
          swift_getKeyPath();
          *(v0 + 40) = v11;
          sub_24F71320C();
          sub_24F91FD88();

          v12 = *(v11 + 40);
          if (v9 < v12)
          {
            swift_getKeyPath();
            *(v0 + 40) = v11;
            sub_24F91FD88();

            *(v0 + 40) = v11;
            swift_getKeyPath();
            sub_24F91FDA8();

            *(v11 + 32) = v8 + *(v11 + 32);
            *(v0 + 40) = v11;
            swift_getKeyPath();
            sub_24F91FD98();

            v12 = *(v11 + 40);
          }

          if (v12 == v9)
          {
            *(v11 + 40) = v9;
          }

          else
          {
            swift_getKeyPath();
            v13 = swift_task_alloc();
            *(v13 + 16) = v11;
            *(v13 + 24) = v9;
            *(v0 + 40) = v11;
            sub_24F91FD78();
          }

          v15 = *(v0 + 88);
          v14 = *(v0 + 96);
          v16 = *(v0 + 72);
          swift_getKeyPath();
          *(v0 + 40) = v11;
          sub_24F91FD88();

          v17 = v9 + *(v11 + 32);
          v18 = v16 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_configuration;
          swift_beginAccess();
          v19 = *(v18 + *(type metadata accessor for VideoConfiguration() + 40));
          if (v8 <= v14)
          {
            v20 = v8;
          }

          else
          {
            v20 = v14;
          }

          if ((v19 & (v8 < v15)) != 0)
          {
            v21 = v15;
          }

          else
          {
            v21 = v20;
          }

          swift_getKeyPath();
          *(v0 + 64) = v11;
          sub_24F91FD88();

          v22 = *(v11 + 16);
          if (v22)
          {
            v23 = v17 / v21;
            if (v17 / v21 > 1.0)
            {
              v23 = 1.0;
            }

            *&v23 = v23;
            v22 = [v22 setCurrentProgress_];
          }

          if (vabdd_f64(v17, v21) <= 0.25)
          {
            (*(v0 + 104))(v22);
          }
        }
      }
    }
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_24F712F04()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit34HeroPageControlProgressCoordinator___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeroPageControlProgressCoordinator()
{
  result = qword_27F24DD38;
  if (!qword_27F24DD38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F71300C()
{
  result = sub_24F91FDC8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F7130F0()
{
  *(v0 + 47) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 56) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139A0);
  result = swift_allocObject();
  *(result + 16) = xmmword_24F942000;
  if (!*MEMORY[0x277D81DF0])
  {
    __break(1u);
    goto LABEL_8;
  }

  *(result + 32) = *MEMORY[0x277D81DF0];
  if (!*MEMORY[0x277D81E80])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(result + 40) = *MEMORY[0x277D81E80];
  if (!*MEMORY[0x277D81C50])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(result + 48) = *MEMORY[0x277D81C50];
  if (!*MEMORY[0x277D81C90])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(result + 56) = *MEMORY[0x277D81C90];
  if (*MEMORY[0x277D81CC8])
  {
    *(result + 64) = *MEMORY[0x277D81CC8];
    *(v0 + 80) = result;
    sub_24F91FDB8();
    return v0;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_24F7131DC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24F712190(v1);
}

unint64_t sub_24F71320C()
{
  result = qword_27F226930;
  if (!qword_27F226930)
  {
    type metadata accessor for HeroPageControlProgressCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226930);
  }

  return result;
}

void sub_24F713294(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24F711B74(v1);
}

void sub_24F7132FC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 24);
  *(v2 + 24) = v1;
  v4 = v1;
  sub_24F711D08(v3);
}

double sub_24F7133A0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 40) = result;
  return result;
}

uint64_t sub_24F7133B0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F7133E8()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_171(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F713460()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F7134B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = *(v1 + 80);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_24E614970;

  return sub_24F712A94(v9, v10, a1, v4, v5, v6, v7, v8, v11, v12);
}

uint64_t sub_24F7135E0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for OverviewTileContentType(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for OverviewTileAccessoryType(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[10];

  return v16(v17, a2, v15);
}

uint64_t sub_24F7137C0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for OverviewTileContentType(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for OverviewTileAccessoryType(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[10];

  return v16(v17, a2, a2, v15);
}

void sub_24F7139AC()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for OverviewTileContentType(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for OverviewTileAccessoryType(319);
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
        if (v3 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
          if (v4 <= 0x3F)
          {
            sub_24F713DCC(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24F713AF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F713B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F713C30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_24F713D18()
{
  sub_24F713DCC(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24E79CAE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F713DCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F713EB0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DE28);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F716994();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for OverviewTile(0);
    v8[14] = 1;
    type metadata accessor for OverviewTileContentType(0);
    sub_24F713AF8(&qword_27F24DE30, type metadata accessor for OverviewTileContentType);
    sub_24F92CD48();
    v8[13] = 2;
    sub_24F92CD08();
    v8[12] = 3;
    type metadata accessor for OverviewTileAccessoryType(0);
    sub_24F713AF8(&qword_27F24DE38, type metadata accessor for OverviewTileAccessoryType);
    sub_24F92CD48();
    v8[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v8[10] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    v8[9] = 6;
    sub_24F929608();
    sub_24F713AF8(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F7142AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = v39 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v42);
  v43 = v39 - v5;
  v44 = type metadata accessor for OverviewTileAccessoryType(0);
  MEMORY[0x28223BE20](v44);
  v45 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for OverviewTileContentType(0);
  MEMORY[0x28223BE20](v46);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DE10);
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v39 - v10;
  v12 = type metadata accessor for OverviewTile(0);
  MEMORY[0x28223BE20](v12);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v14[*(v15 + 32)];
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  v51 = v16;
  sub_24E61DA68(&v54, v16, qword_27F21B590);
  v17 = *(v12 + 36);
  v18 = sub_24F92A6D8();
  v19 = *(*(v18 - 8) + 56);
  v52 = v17;
  v19(&v14[v17], 1, 1, v18);
  v20 = *(v12 + 40);
  v21 = sub_24F929608();
  v22 = *(*(v21 - 8) + 56);
  v53 = v20;
  v23 = v14;
  v22(&v14[v20], 1, 1, v21);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F716994();
  v49 = v11;
  v24 = v50;
  sub_24F92D108();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v25 = v52;
    sub_24E601704(v51, qword_27F24EC90);
    sub_24E601704(&v14[v25], &qword_27F215440);
    return sub_24E601704(&v14[v53], &qword_27F213E68);
  }

  else
  {
    v39[1] = v21;
    v50 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v57 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v26 = v55;
    *v14 = v54;
    *(v14 + 1) = v26;
    *(v14 + 4) = v56;
    LOBYTE(v54) = 1;
    sub_24F713AF8(&qword_27F24DE20, type metadata accessor for OverviewTileContentType);
    sub_24F92CC68();
    v27 = v50;
    sub_24F7169E8(v8, *(v50 + 20), type metadata accessor for OverviewTileContentType);
    LOBYTE(v54) = 2;
    v46 = 0;
    v28 = sub_24F92CC28();
    v29 = a1;
    v30 = v51;
    v31 = v52;
    v32 = (v23 + *(v27 + 24));
    *v32 = v28;
    v32[1] = v33;
    LOBYTE(v54) = 3;
    sub_24F713AF8(&qword_27F21CAB8, type metadata accessor for OverviewTileAccessoryType);
    v34 = v45;
    sub_24F92CC68();
    v35 = v47;
    sub_24F7169E8(v34, v23 + *(v27 + 28), type metadata accessor for OverviewTileAccessoryType);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v57 = 4;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v54, v30, qword_27F24EC90);
    LOBYTE(v54) = 5;
    sub_24E65CAA0();
    v36 = v43;
    sub_24F92CC68();
    sub_24E61DA68(v36, v23 + v31, &qword_27F215440);
    LOBYTE(v54) = 6;
    sub_24F713AF8(&qword_27F213F48, MEMORY[0x277D21F70]);
    v37 = v41;
    sub_24F92CC18();
    (*(v35 + 8))(v49, v48);
    sub_24E61DA68(v37, v23 + v53, &qword_27F213E68);
    sub_24F716894(v23, v40, type metadata accessor for OverviewTile);
    __swift_destroy_boxed_opaque_existential_1(v29);
    return sub_24F716934(v23, type metadata accessor for OverviewTile);
  }
}

unint64_t sub_24F714BA8()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x726F737365636361;
  if (v1 != 3)
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746E65746E6F63;
  if (v1 != 1)
  {
    v5 = 0x656C746974;
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
    return v3;
  }
}

uint64_t sub_24F714C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F716D20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F714CAC(uint64_t a1)
{
  v2 = sub_24F716994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F714CE8(uint64_t a1)
{
  v2 = sub_24F716994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F714D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 36), &v9 - v6, &qword_27F215440);
  return sub_24E68039C(v7, a2);
}

uint64_t sub_24F714E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v37 = sub_24F923E98();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_24F9248C8();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DD90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DD98);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DDA0);
  v13 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DDA8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v32 - v17;
  *v9 = sub_24F9249A8();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DDB0);
  sub_24F715374(a1, &v9[*(v19 + 44)]);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v9, v12, &qword_27F24DD90);
  v20 = &v12[*(v10 + 36)];
  v21 = v45;
  *(v20 + 4) = v44;
  *(v20 + 5) = v21;
  *(v20 + 6) = v46;
  v22 = v41;
  *v20 = v40;
  *(v20 + 1) = v22;
  v23 = v43;
  *(v20 + 2) = v42;
  *(v20 + 3) = v23;
  v24 = type metadata accessor for OverviewTile(0);
  sub_24E60169C(a1 + *(v24 + 32), v39, qword_27F24EC90);
  sub_24E601704(v39, qword_27F21B590);
  sub_24F9248B8();
  sub_24F716458();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v34 + 8))(v6, v35);
  sub_24E601704(v12, &qword_27F24DD98);
  (*(v13 + 32))(v18, v15, v33);
  sub_24F769788(v4);
  LOBYTE(v15) = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v36 + 8))(v4, v37);
  if (v15)
  {
    v25 = 16.0;
  }

  else
  {
    v25 = 20.0;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DDC8);
  v27 = v38;
  v28 = v38 + *(v26 + 36);
  v29 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v30 = type metadata accessor for GradientBackground(0);
  (*(*(v30 - 8) + 56))(v28 + v29, 1, 1, v30);
  *v28 = swift_getKeyPath();
  *(v28 + 8) = 0;
  *(v28 + 16) = xmmword_24F93CFD0;
  *(v28 + 32) = v25;
  *(v28 + 40) = 257;
  return sub_24E6009C8(v18, v27, &qword_27F24DDA8);
}

uint64_t sub_24F715374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214418);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v34 - v8);
  v10 = type metadata accessor for OverviewTile(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DDD0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  sub_24F716894(a1, &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OverviewTile);
  v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v21 = swift_allocObject();
  sub_24F7169E8(&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for OverviewTile);
  v22 = sub_24F924C98();
  v23 = sub_24F9249A8();
  v24 = *(v14 + 60);
  *&v19[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  *v19 = sub_24F71681C;
  *(v19 + 1) = v21;
  *(v19 + 2) = v22;
  *(v19 + 3) = 0;
  v19[32] = 1;
  *(v19 + 5) = v23;
  *(v19 + 6) = 0;
  v19[56] = 0;
  v25 = sub_24F926DF8();
  LODWORD(v24) = sub_24F9251C8();
  v26 = v9 + *(v4 + 44);
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
  v28 = *MEMORY[0x277CE13B8];
  v29 = sub_24F927748();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  *v26 = v24;
  *v9 = v25;
  sub_24E60169C(v19, v16, &qword_27F24DDD0);
  sub_24E60169C(v9, v6, &qword_27F214418);
  v30 = v35;
  sub_24E60169C(v16, v35, &qword_27F24DDD0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DDD8);
  v32 = v30 + *(v31 + 48);
  *v32 = 0;
  *(v32 + 8) = 1;
  sub_24E60169C(v6, v30 + *(v31 + 64), &qword_27F214418);
  sub_24E601704(v9, &qword_27F214418);
  sub_24E601704(v19, &qword_27F24DDD0);
  sub_24E601704(v6, &qword_27F214418);
  return sub_24E601704(v16, &qword_27F24DDD0);
}

uint64_t sub_24F715768@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DDE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8);
  MEMORY[0x28223BE20](v34);
  v10 = &v32 - v9;
  v11 = type metadata accessor for OverviewTileAccessory(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DDE8);
  v37 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v36 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v19 = type metadata accessor for OverviewTile(0);
  sub_24F716894(a1 + *(v19 + 28), v13, type metadata accessor for OverviewTileAccessoryType);
  v20 = &v13[*(v11 + 20)];
  *v20 = 0;
  v20[8] = 1;
  v13[*(v11 + 24)] = 1;
  v21 = *MEMORY[0x277CDF9D8];
  v22 = sub_24F923E98();
  (*(*(v22 - 8) + 104))(v10, v21, v22);
  sub_24F713AF8(&qword_27F22DF90, MEMORY[0x277CDFA28]);
  result = sub_24F92AFF8();
  if (result)
  {
    sub_24F713AF8(&qword_27F24DDF0, type metadata accessor for OverviewTileAccessory);
    v33 = a1;
    sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
    v32 = v18;
    sub_24F9263F8();
    sub_24E601704(v10, &qword_27F21CCC8);
    sub_24F716934(v13, type metadata accessor for OverviewTileAccessory);
    *v8 = sub_24F924C98();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DDF8);
    sub_24F715C2C(v33, &v8[*(v24 + 44)]);
    v26 = v36;
    v25 = v37;
    v27 = *(v37 + 16);
    v27(v36, v18, v14);
    v28 = v5;
    sub_24E60169C(v8, v5, &qword_27F24DDE0);
    v29 = v35;
    v27(v35, v26, v14);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DE00);
    sub_24E60169C(v28, &v29[*(v30 + 48)], &qword_27F24DDE0);
    sub_24E601704(v8, &qword_27F24DDE0);
    v31 = *(v25 + 8);
    v31(v32, v14);
    sub_24E601704(v28, &qword_27F24DDE0);
    return (v31)(v26, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24F715C2C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a1;
  v66 = a2;
  v3 = type metadata accessor for OverviewTileContent(0);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v64 = &v52 - v6;
  v55 = sub_24F9297D8();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24F929888();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217370);
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v57 = &v52 - v12;
  v58 = type metadata accessor for OverviewTile(0);
  v13 = (a1 + *(v58 + 24));
  v14 = v13[1];
  *&v67[0] = *v13;
  *(&v67[0] + 1) = v14;
  sub_24E600AEC();

  v15 = sub_24F925E18();
  v17 = v16;
  v19 = v18;
  sub_24F925A28();
  v20 = sub_24F925C98();
  v22 = v21;
  v24 = v23;

  sub_24E600B40(v15, v17, v19 & 1);

  sub_24F925958();
  v25 = sub_24F925B78();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v52 = v30;
  sub_24E600B40(v20, v22, v24 & 1);

  v71 = v25;
  v72 = v27;
  LOBYTE(v17) = v29 & 1;
  v73 = v29 & 1;
  v74 = v31;
  v32 = v54;
  v33 = v8;
  v34 = v55;
  (*(v54 + 104))(v8, *MEMORY[0x277D22050], v55);
  memset(v70, 0, sizeof(v70));
  v69[3] = MEMORY[0x277D84030];
  v35 = swift_allocObject();
  v69[0] = v35;
  v36 = v53;
  sub_24E60169C(v53, v67, &qword_27F213F18);
  v37 = v67[1];
  *(v35 + 16) = v67[0];
  *(v35 + 32) = v37;
  *(v35 + 48) = v68;
  v38 = v56;
  sub_24F929818();
  sub_24E601704(v70, &qword_27F2129B0);
  (*(v32 + 8))(v33, v34);
  sub_24E601704(v69, &qword_27F2129B0);
  v39 = v57;
  sub_24F925EE8();
  (*(v60 + 8))(v38, v62);
  sub_24E600B40(v25, v27, v17);

  v40 = v64;
  sub_24F716894(v36 + *(v58 + 20), v64, type metadata accessor for OverviewTileContentType);
  v41 = v61;
  v42 = *(v61 + 16);
  v43 = v59;
  v44 = v63;
  v42(v59, v39, v63);
  v45 = v40;
  v46 = v40;
  v47 = v65;
  sub_24F716894(v45, v65, type metadata accessor for OverviewTileContent);
  v48 = v66;
  v42(v66, v43, v44);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DE08);
  sub_24F716894(v47, &v48[*(v49 + 48)], type metadata accessor for OverviewTileContent);
  sub_24F716934(v46, type metadata accessor for OverviewTileContent);
  v50 = *(v41 + 8);
  v50(v39, v44);
  sub_24F716934(v47, type metadata accessor for OverviewTileContent);
  return (v50)(v43, v44);
}

uint64_t sub_24F716270()
{
  MEMORY[0x28223BE20](v0);
  sub_24F716894(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OverviewTileComponent);
  sub_24F713AF8(&qword_27F244508, type metadata accessor for OverviewTileComponent);
  return sub_24F9218E8();
}

unint64_t sub_24F716458()
{
  result = qword_27F24DDB8;
  if (!qword_27F24DDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24DD98);
    sub_24E602068(&qword_27F24DDC0, &qword_27F24DD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DDB8);
  }

  return result;
}

uint64_t sub_24F716518()
{
  v1 = type metadata accessor for OverviewTile(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  __swift_destroy_boxed_opaque_existential_1(v2);
  v3 = v2 + v1[5];
  type metadata accessor for OverviewTileContentType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v5 = sub_24F9289E8();
    (*(*(v5 - 8) + 8))(v3, v5);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v6 = v2 + v1[7];
  type metadata accessor for OverviewTileAccessoryType(0);
  v7 = swift_getEnumCaseMultiPayload();
  if (v7 <= 1)
  {
    if (v7 > 1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v7 == 2)
  {
LABEL_11:

    goto LABEL_12;
  }

  if (v7 != 3)
  {
    if (v7 != 4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v16 = sub_24F9289E8();
  (*(*(v16 - 8) + 8))(v6, v16);
LABEL_12:
  v8 = v2 + v1[8];
  if (*(v8 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  v9 = v1[9];
  v10 = sub_24F92A6D8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  v12 = v1[10];
  v13 = sub_24F929608();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v2 + v12, 1, v13))
  {
    (*(v14 + 8))(v2 + v12, v13);
  }

  return swift_deallocObject();
}

uint64_t sub_24F71681C@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for OverviewTile(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F715768(v4, a1);
}

uint64_t sub_24F716894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7168FC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F716934(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F716994()
{
  result = qword_27F24DE18;
  if (!qword_27F24DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DE18);
  }

  return result;
}

uint64_t sub_24F7169E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F716A68()
{
  result = qword_27F24DE40;
  if (!qword_27F24DE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24DDC8);
    sub_24F716B24();
    sub_24F713AF8(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DE40);
  }

  return result;
}

unint64_t sub_24F716B24()
{
  result = qword_27F24DE48;
  if (!qword_27F24DE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24DDA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24DD98);
    sub_24F716458();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DE48);
  }

  return result;
}

unint64_t sub_24F716C1C()
{
  result = qword_27F24DE50;
  if (!qword_27F24DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DE50);
  }

  return result;
}

unint64_t sub_24F716C74()
{
  result = qword_27F24DE58;
  if (!qword_27F24DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24DE58);
  }

  return result;
}

unint64_t sub_24F716CCC()
{
  result = qword_27F24DE60[0];
  if (!qword_27F24DE60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F24DE60);
  }

  return result;
}

uint64_t sub_24F716D20(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00006570795479 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_24F716F7C()
{
  v0 = sub_24F928AE8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() proxyForLocalPlayer];
  v5 = [v4 utilityServicePrivate];

  [v5 updateNotificationTopicsForcefully_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  (*(v1 + 104))(v3, *MEMORY[0x277D21CA8], v0);
  return sub_24F92A988();
}

unint64_t sub_24F7170CC()
{
  result = qword_27F2163E0;
  if (!qword_27F2163E0)
  {
    type metadata accessor for UpdateNotificationTopicsAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2163E0);
  }

  return result;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_24F717150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_24F717198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F717208@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v54 = sub_24F929888();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DEE8);
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v42 = v41 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DEF0);
  MEMORY[0x28223BE20](v45);
  v44 = v41 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DEF8);
  MEMORY[0x28223BE20](v43);
  v48 = v41 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DF00);
  MEMORY[0x28223BE20](v49);
  v50 = v41 - v6;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v10 = *(v1 + 17);
  v11 = *(v1 + 18);
  v12 = *(v1 + 19);
  v13 = *(v1 + 20);
  v62 = v7;
  v63 = v8;
  v64 = v9;
  v65 = v10;
  v66 = v11;
  v67 = v12;
  v68 = v13;
  v55 = v7;
  v56 = v8;
  v57 = v9;
  v58 = v10;
  v59 = v11;
  v60 = v12;
  v61 = v13;
  v41[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DF08);
  v41[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DF10);
  sub_24F7199F8();
  v14 = v42;
  sub_24E602068(&qword_27F24DF40, &qword_27F24DF10);
  sub_24F925AB8();
  v69[0] = v7;
  v69[1] = v8;
  v70 = v9;
  v71 = v10;
  v72 = v11;
  v73 = v12;
  v74 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DF48);
  MEMORY[0x25304CAF0](&v77, v15);
  LODWORD(v69[0]) = v77;
  BYTE4(v69[0]) = BYTE4(v77);
  if (sub_24E6B318C())
  {
    v16 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  else
  {
    v16 = sub_24F926C98();
  }

  v17 = v16;
  v18 = sub_24F925808();
  v19 = v44;
  (*(v46 + 32))(v44, v14, v47);
  v20 = v19 + *(v45 + 36);
  *v20 = v17;
  *(v20 + 8) = v18;
  v21 = v48;
  sub_24E6009C8(v19, v48, &qword_27F24DEF0);
  *(v21 + *(v43 + 36)) = 256;
  v75 = MEMORY[0x277CE1120];
  v76 = sub_24E63E454();
  v22 = v50;
  sub_24E60169C(v69, v50, &qword_27F24DF50);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DF58);
  sub_24E60169C(v21, v22 + v23[9], &qword_27F24DEF8);
  v24 = v22 + v23[10];
  *v24 = sub_24F923398() & 1;
  *(v24 + 8) = v25;
  *(v24 + 16) = v26 & 1;
  v27 = v22 + v23[11];
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v28 = qword_27F24E488;
  v29 = sub_24F923398();
  v31 = v30;
  v33 = v32;
  v34 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DF60) + 36);
  *v34 = v28;
  *(v34 + 8) = v29 & 1;
  *(v34 + 16) = v31;
  *(v34 + 24) = v33 & 1;
  LOBYTE(v28) = sub_24F923398();
  v36 = v35;
  LOBYTE(v31) = v37;
  sub_24E601704(v69, &qword_27F24DF50);
  sub_24E601704(v21, &qword_27F24DEF8);
  v38 = v22 + *(v49 + 36);
  *v38 = v28 & 1;
  *(v38 + 8) = v36;
  *(v38 + 16) = v31 & 1;
  v39 = v51;
  sub_24F9297E8();
  sub_24F719C58();
  sub_24F925EE8();
  (*(v52 + 8))(v39, v54);
  return sub_24E601704(v22, &qword_27F24DF00);
}

uint64_t sub_24F71787C@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v4 = a3;
  v83 = a2;
  v94 = a1;
  v80 = a4;
  v7 = a3 >> 8;
  v97 = (a3 >> 8);
  v8 = HIDWORD(a3);
  v84 = HIDWORD(a3);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DF80);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v92 = &v67[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v91 = &v67[-v11];
  v78 = sub_24F9248E8();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v67[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DF88);
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = &v67[-v13];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DF90);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v67[-v14];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DF98);
  v79 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v96 = &v67[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v86 = &v67[-v17];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DFA0);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v67[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v95 = &v67[-v20];
  v113 = a1;
  v114 = a2;
  v93 = v4 & 1;
  v115 = v4 & 1;
  v116 = v7;
  v68 = HIWORD(v4) & 1;
  v117 = BYTE2(v4) & 1;
  v21 = HIBYTE(v4) & 1;
  v118 = HIBYTE(v4) & 1;
  v119 = v8;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DF48);
  sub_24F927198();
  v23 = v120;
  v24 = v121;
  LOBYTE(v4) = v122;
  v25 = v123;
  v26 = v124;
  LOBYTE(v7) = v125;
  v27 = v126;
  swift_getKeyPath();
  v113 = v23;
  v114 = v24;
  v115 = v4;
  v116 = v25;
  v117 = v26;
  v118 = v7;
  v28 = v84;
  v119 = v27;
  v29 = v83;
  v69 = v22;
  sub_24F927188();

  v98 = v94;
  v99 = v29;
  v100 = v93;
  v30 = v68;
  v101 = v97;
  v102 = v68;
  v85 = v21;
  v103 = v21;
  v104 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58);
  sub_24E602068(&qword_27F212910, &qword_27F211B58);
  sub_24F9270D8();
  if (qword_27F211598 != -1)
  {
    swift_once();
  }

  v108 = qword_27F39EBF8;
  v109 = unk_27F39EC00;
  v113 = v94;
  v114 = v29;
  v115 = v93;
  v116 = v97;
  v117 = v30;
  v118 = v85;
  v119 = v28;

  sub_24F927198();
  v31 = v120;
  v32 = v121;
  v33 = v122;
  v34 = v123;
  v35 = v124;
  v36 = v125;
  v37 = v126;
  swift_getKeyPath();
  v113 = v31;
  v114 = v32;
  v115 = v33;
  v116 = v34;
  v117 = v35;
  v118 = v36;
  v119 = v37;
  sub_24F927188();

  v105 = v110;
  v106 = v111;
  v107 = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DFA8);
  sub_24F719DC4();
  v65 = sub_24F719E18();
  v66 = sub_24E600AEC();
  v38 = v70;
  sub_24F927098();
  v39 = sub_24E602068(&qword_27F24DFC0, &qword_27F24DF88);
  v40 = v72;
  v41 = v73;
  sub_24F926968();
  (*(v71 + 8))(v38, v41);
  v42 = v76;
  sub_24F9248D8();
  v120 = v41;
  v121 = v39;
  swift_getOpaqueTypeConformance2();
  v43 = v86;
  v44 = v75;
  v45 = v78;
  sub_24F9261F8();
  (*(v77 + 8))(v42, v45);
  (*(v74 + 8))(v40, v44);
  v46 = v94;
  if (qword_27F2115A0 != -1)
  {
    swift_once();
  }

  v120 = qword_27F39EC08;
  v121 = unk_27F39EC10;
  MEMORY[0x28223BE20](unk_27F39EC10);
  v47 = v83;
  *&v67[-32] = v46;
  *&v67[-24] = v47;
  LOBYTE(v65) = v93;
  BYTE1(v65) = v97;
  BYTE2(v65) = v30;
  BYTE3(v65) = v85;
  BYTE4(v65) = v84;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DFC8);
  sub_24E602068(&qword_27F24DFD0, &qword_27F24DFC8);
  v48 = v91;
  sub_24F927288();
  v49 = *(v88 + 16);
  v50 = v87;
  v51 = v89;
  v49(v87, v95, v89);
  v52 = v79;
  v97 = *(v79 + 16);
  v97(v96, v43, v90);
  v53 = v81;
  v94 = *(v81 + 16);
  v54 = v48;
  v55 = v82;
  v94(v92, v54, v82);
  v56 = v80;
  v49(v80, v50, v51);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DFD8);
  v58 = v90;
  v97(&v56[*(v57 + 48)], v96, v90);
  v59 = v92;
  v94(&v56[*(v57 + 64)], v92, v55);
  v60 = *(v53 + 8);
  v60(v91, v55);
  v61 = *(v52 + 8);
  v61(v86, v58);
  v62 = *(v88 + 8);
  v63 = v89;
  v62(v95, v89);
  v60(v59, v55);
  v61(v96, v58);
  return (v62)(v87, v63);
}

uint64_t sub_24F71842C()
{
  if (qword_27F2115B8 != -1)
  {
    swift_once();
  }

  v3 = qword_27F39EC38;
  v4 = unk_27F39EC40;

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DF48);
  MEMORY[0x25304CAF0](&v2, v0);
  sub_24E600AEC();
  return sub_24F926EB8();
}

uint64_t sub_24F71857C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217A80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E030);
  sub_24E602068(&qword_27F24E038, &qword_27F217A80);
  sub_24F719DC4();
  swift_getOpaqueTypeConformance2();
  sub_24F71A0AC();
  return sub_24F927238();
}

uint64_t sub_24F7186B0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3 <= 1)
  {
    if (*a1)
    {
      if (qword_27F2115C8 == -1)
      {
        goto LABEL_11;
      }
    }

    else if (qword_27F2115C0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (v3 == 2)
  {
    if (qword_27F2115D0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (qword_27F2115D8 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_11:

  sub_24E600AEC();
  result = sub_24F925E18();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

uint64_t sub_24F718824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  v66 = a2;
  v6 = a1;
  v72 = a1;
  v65 = a4;
  v7 = a3 >> 8;
  v71 = a3 >> 8;
  v8 = HIDWORD(a3);
  v68 = HIDWORD(a3);
  v64 = sub_24F923F98();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v60 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58);
  MEMORY[0x28223BE20](v52);
  v53 = &v51 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DFE0);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v51 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DFE8);
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v77 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v76 = &v51 - v14;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DFA0);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v56 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v75 = &v51 - v17;
  MEMORY[0x28223BE20](v18);
  v78 = &v51 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v51 - v21;
  v87 = v6;
  v88 = v5;
  v70 = v4 & 1;
  v89 = v4 & 1;
  v90 = v7;
  v69 = HIWORD(v4) & 1;
  v91 = BYTE2(v4) & 1;
  v67 = HIBYTE(v4) & 1;
  v92 = HIBYTE(v4) & 1;
  v93 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DF48);
  sub_24F927198();
  v23 = v94;
  v24 = v95;
  LOBYTE(v4) = v96;
  v25 = v97;
  v26 = v98;
  LOBYTE(v6) = v99;
  LOBYTE(v5) = v100;
  swift_getKeyPath();
  v87 = v23;
  v88 = v24;
  v89 = v4;
  v90 = v25;
  v91 = v26;
  v92 = v6;
  v93 = v5;
  sub_24F927188();

  v73 = sub_24E602068(&qword_27F212910, &qword_27F211B58);
  v74 = v22;
  sub_24F9270D8();
  v87 = v72;
  v88 = v66;
  v89 = v70;
  v90 = v71;
  v91 = v69;
  v92 = v67;
  v93 = v68;
  sub_24F927198();
  v27 = v94;
  v28 = v95;
  LOBYTE(v4) = v96;
  LOBYTE(v6) = v97;
  LOBYTE(v5) = v98;
  v29 = v99;
  LOBYTE(v23) = v100;
  swift_getKeyPath();
  v87 = v27;
  v88 = v28;
  v89 = v4;
  v90 = v6;
  v91 = v5;
  v92 = v29;
  v93 = v23;
  sub_24F927188();

  sub_24F9270D8();
  v87 = v72;
  v88 = v66;
  v89 = v70;
  v90 = v71;
  v91 = v69;
  v92 = v67;
  v93 = v68;
  sub_24F927198();
  v30 = v94;
  v31 = v95;
  LOBYTE(v23) = v96;
  LOBYTE(v4) = v97;
  LOBYTE(v6) = v98;
  LOBYTE(v5) = v99;
  LOBYTE(v22) = v100;
  swift_getKeyPath();
  v87 = v30;
  v88 = v31;
  v89 = v23;
  v90 = v4;
  v91 = v6;
  v92 = v5;
  v93 = v22;
  sub_24F927188();

  v81 = v84;
  v82 = v85;
  v83 = v86;
  if (qword_27F2115F0 != -1)
  {
    swift_once();
  }

  v79 = qword_27F39ECA8;
  v80 = unk_27F39ECB0;
  sub_24E600AEC();

  sub_24F926EB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24DFF0);
  sub_24F719F40();
  sub_24F719F94();
  v32 = v54;
  sub_24F927088();
  v33 = v60;
  sub_24F923F88();
  sub_24E602068(&qword_27F24E008, &qword_27F24DFE0);
  v34 = v76;
  v35 = v57;
  v36 = v64;
  sub_24F9261F8();
  (*(v62 + 8))(v33, v36);
  (*(v55 + 8))(v32, v35);
  v37 = v58;
  v38 = *(v58 + 16);
  v39 = v75;
  v40 = v59;
  v38(v75, v74, v59);
  v41 = v56;
  v38(v56, v78, v40);
  v42 = v61;
  v73 = *(v61 + 16);
  v43 = v34;
  v44 = v63;
  v73(v77, v43, v63);
  v45 = v65;
  v38(v65, v39, v40);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E010);
  v38(&v45[*(v46 + 48)], v41, v40);
  v47 = v77;
  v73(&v45[*(v46 + 64)], v77, v44);
  v48 = *(v42 + 8);
  v48(v76, v44);
  v49 = *(v37 + 8);
  v49(v78, v40);
  v49(v74, v40);
  v48(v47, v44);
  v49(v41, v40);
  return (v49)(v75, v40);
}