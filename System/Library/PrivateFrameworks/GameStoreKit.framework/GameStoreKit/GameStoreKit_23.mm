uint64_t sub_24E859F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_24F923228();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F4C8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F4D0);
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E85A0D0, 0, 0);
}

uint64_t sub_24E85A0D0()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  sub_24F9231C8();
  swift_allocObject();
  *(v0 + 64) = sub_24F9231B8();
  sub_24E861C8C(&qword_27F21F4D8, MEMORY[0x277CD8E78]);
  sub_24E861C8C(&qword_27F21F4E0, MEMORY[0x277CD8F90]);
  sub_24F92B9C8();

  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  *(v0 + 184) = v6;
  *(v0 + 192) = v7;
  *(v0 + 72) = v5;
  sub_24F92B9B8();
  v8 = *(v2 + 40);
  *(v0 + 296) = v8;
  v9 = *(v4 + 56);
  *(v0 + 200) = v9;
  *(v0 + 208) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v1 + v8, 1, 1, v3);
  v10 = (v1 + *(v2 + 36));
  *v10 = v6;
  v10[1] = v7;
  swift_beginAccess();

  return MEMORY[0x2822009F8](sub_24E85A290, 0, 0);
}

uint64_t sub_24E85A290()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  sub_24E60169C(*(v0 + 176) + *(v0 + 296), v1, &qword_27F21F4C8);
  v4 = *(v3 + 48);
  *(v0 + 216) = v4;
  *(v0 + 224) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v2);
  v6 = *(v0 + 152);
  if (v5 == 1)
  {
    sub_24E601704(*(v0 + 152), &qword_27F21F4C8);
    v7 = sub_24F9231A8();
    v8 = sub_24E861C8C(&qword_27F21F4E8, MEMORY[0x277CD8E68]);
    v9 = swift_task_alloc();
    *(v0 + 248) = v9;
    *v9 = v0;
    v9[1] = sub_24E85A4B8;
    v10 = *(v0 + 144);
  }

  else
  {
    v11 = *(v0 + 128);
    v12 = *(v0 + 96);
    v13 = *(v0 + 104);
    v14 = *(v13 + 32);
    *(v0 + 232) = v14;
    *(v0 + 240) = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v14(v11, v6, v12);
    v7 = sub_24F9231A8();
    v8 = sub_24E861C8C(&qword_27F21F4E8, MEMORY[0x277CD8E68]);
    v15 = swift_task_alloc();
    *(v0 + 264) = v15;
    *v15 = v0;
    v15[1] = sub_24E85A5CC;
    v10 = *(v0 + 136);
  }

  return MEMORY[0x282200308](v10, v7, v8);
}

uint64_t sub_24E85A4B8()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_24E85AF70;
  }

  else
  {
    v2 = sub_24E85AEBC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E85A5CC()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_24E85A8AC;
  }

  else
  {
    v2 = sub_24E85A6E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E85A6E0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  if ((*(v0 + 216))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 200);
    v4 = *(v0 + 160);
    (*(*(v0 + 104) + 8))(*(v0 + 128), v2);
    sub_24E601704(v1, &qword_27F21F4C8);
    v3(v4, 1, 1, v2);

    return MEMORY[0x2822009F8](sub_24E85AC48, 0, 0);
  }

  else
  {
    v5 = *(v0 + 184);
    (*(v0 + 232))(*(v0 + 120), v1, v2);
    v10 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v0 + 280) = v6;
    *v6 = v0;
    v6[1] = sub_24E85A92C;
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);

    return v10(v8, v7);
  }
}

uint64_t sub_24E85A8AC()
{
  (*(v0[13] + 8))(v0[16], v0[12]);
  v0[36] = v0[34];

  return MEMORY[0x2822009F8](sub_24E85AE30, 0, 0);
}

uint64_t sub_24E85A92C(char a1)
{
  *(*v1 + 300) = a1;

  return MEMORY[0x2822009F8](sub_24E85AA2C, 0, 0);
}

uint64_t sub_24E85AA2C()
{
  if (*(v0 + 300) == 1)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 120), *(v0 + 96));
    v1 = sub_24F9231A8();
    v2 = sub_24E861C8C(&qword_27F21F4E8, MEMORY[0x277CD8E68]);
    v3 = swift_task_alloc();
    *(v0 + 264) = v3;
    *v3 = v0;
    v3[1] = sub_24E85A5CC;
    v4 = *(v0 + 136);

    return MEMORY[0x282200308](v4, v1, v2);
  }

  else
  {
    v5 = *(v0 + 232);
    v6 = *(v0 + 200);
    v7 = *(v0 + 296);
    v8 = *(v0 + 176);
    v9 = *(v0 + 160);
    v10 = *(v0 + 120);
    v11 = *(v0 + 96);
    v12 = *(v0 + 104);
    (*(v12 + 8))(*(v0 + 128), v11);
    sub_24E601704(v8 + v7, &qword_27F21F4C8);
    (*(v12 + 16))(v8 + v7, v10, v11);
    v6(v8 + v7, 0, 1, v11);
    v5(v9, v10, v11);
    v6(v9, 0, 1, v11);

    return MEMORY[0x2822009F8](sub_24E85AC48, 0, 0);
  }
}

uint64_t sub_24E85AC64()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 96);
  if ((*(v0 + 216))(v1, 1, v2) == 1)
  {
    sub_24E601704(*(v0 + 176), &qword_27F21F4D0);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    (*(*(v0 + 104) + 32))(*(v0 + 112), v1, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = *(v0 + 112);
    v7 = *(v0 + 96);
    v8 = (*(v0 + 104) + 8);
    if (Strong)
    {
      v9 = Strong;
      v10 = sub_24F9231D8();
      (*v8)(v6, v7);
      v9[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isNetworkConstrained] = v10 & 1;
    }

    else
    {
      (*v8)(*(v0 + 112), *(v0 + 96));
    }

    return MEMORY[0x2822009F8](sub_24E85A290, 0, 0);
  }
}

uint64_t sub_24E85AE30()
{
  *(v0 + 80) = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_24E85AEBC()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  sub_24E61DA68(*(v0 + 144), v2 + v1, &qword_27F21F4C8);
  sub_24E60169C(v2 + v1, v3, &qword_27F21F4C8);

  return MEMORY[0x2822009F8](sub_24E85AC48, 0, 0);
}

void sub_24E85AF94()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    IsVideoAutoplayEnabled = UIAccessibilityIsVideoAutoplayEnabled();
    v3 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isVideoAutoplayAccessibilityEnabled;
    v1[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isVideoAutoplayAccessibilityEnabled] = IsVideoAutoplayEnabled;
    if (qword_27F211468 != -1)
    {
      swift_once();
    }

    v4 = sub_24F9220D8();
    __swift_project_value_buffer(v4, qword_27F39E988);
    v5 = v1;
    v6 = sub_24F9220B8();
    v7 = sub_24F92BD98();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67240192;
      *(v8 + 4) = v1[v3];

      _os_log_impl(&dword_24E5DD000, v6, v7, "Changed accessibility video autoplay: %{BOOL,public}d", v8, 8u);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    else
    {

      v6 = v5;
    }

    if (v1[v3] == 1)
    {
      *(&v5->isa + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isAutoPlayActive) = 1;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      if ((v9 & 1) == 0)
      {
        sub_24E85C800();
      }
    }

    else
    {
      sub_24E85B15C();
    }
  }
}

void sub_24E85B15C()
{
  v1 = sub_24F929158();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_24F928698();
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isAutoPlayActive) = 0;
  v13 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activeVideo;
  v14 = *(v0 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activeVideo);
  if (!v14)
  {
    return;
  }

  v15 = *(v14 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
  if (!v15)
  {
    return;
  }

  v33 = v7;
  v16 = v9;
  v17 = v4;
  v18 = v1;
  v19 = v10;
  v20 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
  swift_beginAccess();
  v21 = v15[v20];
  v22 = v2;
  v23 = v19;
  v24 = v18;
  v25 = v17;
  v26 = v16;
  v27 = v12;
  v28 = v33;
  if (v21 != 1)
  {
    return;
  }

  [v15 pause];
  if (!*(v0 + v13))
  {
    (*(v23 + 56))(v28, 1, 1, v26);
    goto LABEL_9;
  }

  v29 = v0;

  sub_24F39EB00(0, 0, v28);

  if ((*(v23 + 48))(v28, 1, v26) == 1)
  {
LABEL_9:
    sub_24E601704(v28, &qword_27F21EB88);
    return;
  }

  (*(v23 + 32))(v27, v28, v26);
  v30 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_metricsPipeline;
  swift_beginAccess();
  if ((*(v22 + 48))(v29 + v30, 1, v24))
  {
    (*(v23 + 8))(v27, v26);
    swift_endAccess();
  }

  else
  {
    (*(v22 + 16))(v25, v29 + v30, v24);
    swift_endAccess();
    if (qword_27F210658 != -1)
    {
      swift_once();
    }

    v31 = sub_24F929AB8();
    __swift_project_value_buffer(v31, qword_27F22E3B8);
    sub_24F929138();

    (*(v22 + 8))(v25, v24);
    (*(v23 + 8))(v27, v26);
  }
}

void sub_24E85B53C(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator__isGlobalAutoPlayEnabled);
    *(Strong + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator__isGlobalAutoPlayEnabled) = v1;
    if (v1 != v4)
    {
      if (v1)
      {
        *(Strong + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isAutoPlayActive) = 1;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_24F923098();

        if ((v5 & 1) == 0)
        {
          sub_24E85C800();
        }
      }

      else
      {
        sub_24E85B15C();
        *&v3[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activeVideo] = 0;

        sub_24E85C2E0();
      }
    }
  }
}

BOOL sub_24E85B634()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activeVideo;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activeVideo))
  {
    type metadata accessor for GSKVideo();

    sub_24F92C7F8();
    sub_24E601704(&v6, &qword_27F235830);
    v2 = *(v0 + v1);
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_isFullScreen);
LABEL_6:
      type metadata accessor for GSKVideo();

      sub_24F92C7F8();
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_24E601704(&v6, &qword_27F235830);
    if (*(v0 + v1))
    {
      v3 = 0;
      goto LABEL_6;
    }
  }

  v3 = 0;
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
LABEL_8:
  v4 = sub_24E85C6F4(&v6);
  sub_24E601704(&v6, &qword_27F235830);
  if ((v4 & 1) == 0)
  {
    return v3 != 0;
  }

  if (!*(v0 + v1))
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F923098();

  if (v6 == 5 || (v3 & 1) != 0)
  {
    return 1;
  }

  return v6 != 4;
}

uint64_t sub_24E85B828(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_visibleVideoFrames;
  v21 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_videoViewModelManager;
  v9 = (v5 + 63) >> 6;

  v11 = 0;
  v22 = result;
  while (v7)
  {
LABEL_11:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_24E65864C(*(v3 + 48) + 40 * (v13 | (v11 << 6)), v36);
    v34[0] = v36[0];
    v34[1] = v36[1];
    v35 = v37;
    swift_beginAccess();
    if (*(*(v2 + v8) + 16))
    {
      sub_24E76D934(v34);
      if (v14)
      {
        swift_endAccess();
        goto LABEL_5;
      }
    }

    swift_endAccess();
    sub_24E65864C(v34, v33);
    sub_24E60169C(v33, &v28, &qword_27F235830);
    if (*(&v29 + 1))
    {
      v31[0] = v28;
      v31[1] = v29;
      v32 = v30;
      v15 = *(v2 + v21);
      sub_24E65864C(v31, &v28);
      sub_24E60169C(&v28, &v23, &qword_27F235830);
      if (*(&v24 + 1))
      {
        v26[0] = v23;
        v26[1] = v24;
        v27 = v25;
        swift_beginAccess();
        v16 = *(v15 + 16);
        if (!*(v16 + 16))
        {
          goto LABEL_22;
        }

        v17 = sub_24E76D934(v26);
        if ((v18 & 1) == 0)
        {

LABEL_22:
          sub_24E6585F8(v26);
          sub_24E601704(&v28, &qword_27F235830);
          sub_24E6585F8(v31);
          v20 = v33;
          goto LABEL_23;
        }

        v19 = *(*(v16 + 56) + 8 * v17);

        sub_24E6585F8(v26);
        sub_24E601704(&v28, &qword_27F235830);
        sub_24E6585F8(v31);
        sub_24E601704(v33, &qword_27F235830);

        if (*(v19 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_isFullScreen))
        {
          sub_24E6585F8(v34);
        }

        else
        {
          sub_24E85BC40(v34);

          result = sub_24E6585F8(v34);
        }

        v3 = v22;
      }

      else
      {
        sub_24E601704(&v28, &qword_27F235830);
        sub_24E6585F8(v31);
        sub_24E601704(v33, &qword_27F235830);
        v20 = &v23;
LABEL_23:
        sub_24E601704(v20, &qword_27F235830);
        v3 = v22;
LABEL_5:
        result = sub_24E6585F8(v34);
      }
    }

    else
    {
      sub_24E601704(v33, &qword_27F235830);
      sub_24E6585F8(v34);
      result = sub_24E601704(&v28, &qword_27F235830);
      v3 = v22;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24E85BB80(uint64_t a1)
{
  sub_24E60169C(a1, &v3, &qword_27F235830);
  if (*(&v4 + 1))
  {
    v6[0] = v3;
    v6[1] = v4;
    v7 = v5;
    sub_24E65864C(v6, &v3);
    v1 = sub_24E78EC20(&v3);
    sub_24E601704(&v3, &qword_27F235830);
    sub_24E6585F8(v6);
  }

  else
  {
    sub_24E601704(&v3, &qword_27F235830);
    return 0;
  }

  return v1;
}

uint64_t sub_24E85BC40(uint64_t a1)
{
  v3 = sub_24F929158();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_24F928698();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65864C(a1, &v39);
  sub_24E60169C(&v39, &v45, &qword_27F235830);
  if (!*(&v46 + 1))
  {
    sub_24E601704(&v39, &qword_27F235830);
    return sub_24E601704(&v45, &qword_27F235830);
  }

  v34 = v4;
  v35 = v11;
  v48 = v45;
  v49 = v46;
  v50 = v47;
  v14 = v1;
  sub_24E65864C(&v48, &v45);
  v15 = sub_24E78EC20(&v45);
  sub_24E601704(&v45, &qword_27F235830);
  sub_24E6585F8(&v48);
  result = sub_24E601704(&v39, &qword_27F235830);
  if (!v15)
  {
    return result;
  }

  v17 = *(v15 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
  if (v17)
  {
    v18 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
    swift_beginAccess();
    LODWORD(v18) = v17[v18];
    [v17 pause];
    v19 = v18 == 1;
    v20 = v14;
    if (v19)
    {
      sub_24F39EB00(0, 0, v9);
      v21 = v35;
      if ((*(v35 + 48))(v9, 1, v10) == 1)
      {
        sub_24E601704(v9, &qword_27F21EB88);
      }

      else
      {
        (*(v21 + 32))(v13, v9, v10);
        v22 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_metricsPipeline;
        swift_beginAccess();
        v23 = v34;
        if ((*(v34 + 48))(v20 + v22, 1, v3))
        {
          (*(v21 + 8))(v13, v10);
          swift_endAccess();
        }

        else
        {
          (*(v23 + 16))(v6, v20 + v22, v3);
          swift_endAccess();
          if (qword_27F210658 != -1)
          {
            swift_once();
          }

          v24 = sub_24F929AB8();
          __swift_project_value_buffer(v24, qword_27F22E3B8);
          sub_24F929138();

          (*(v23 + 8))(v6, v3);
          (*(v35 + 8))(v13, v10);
        }
      }
    }
  }

  else
  {
    [0 pause];
    v20 = v14;
  }

  v25 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activeVideo;
  v26 = *(v20 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activeVideo);
  if (v26)
  {
    v27 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
    v28 = (v26 + v27 + *(type metadata accessor for GSKVideo() + 44));
    v29 = v28[1];
    v39 = *v28;
    v40 = v29;

    sub_24F92C7F8();
  }

  else
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
  }

  v30 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
  v31 = (v15 + v30 + *(type metadata accessor for GSKVideo() + 44));
  v32 = v31[1];
  v39 = *v31;
  v40 = v32;

  sub_24F92C7F8();
  sub_24E60169C(&v48, &v39, &qword_27F235830);
  sub_24E60169C(&v45, &v42, &qword_27F235830);
  if (v41)
  {
    sub_24E60169C(&v39, v38, &qword_27F235830);
    if (*(&v43 + 1))
    {
      v36[0] = v42;
      v36[1] = v43;
      v37 = v44;
      v33 = MEMORY[0x253052150](v38, v36);
      sub_24E6585F8(v36);
      sub_24E601704(&v45, &qword_27F235830);
      sub_24E601704(&v48, &qword_27F235830);
      sub_24E6585F8(v38);
      sub_24E601704(&v39, &qword_27F235830);
      if ((v33 & 1) == 0)
      {
      }

      goto LABEL_24;
    }

    sub_24E601704(&v45, &qword_27F235830);
    sub_24E601704(&v48, &qword_27F235830);
    sub_24E6585F8(v38);
LABEL_26:
    sub_24E601704(&v39, &qword_27F21B438);
  }

  sub_24E601704(&v45, &qword_27F235830);
  sub_24E601704(&v48, &qword_27F235830);
  if (*(&v43 + 1))
  {
    goto LABEL_26;
  }

  sub_24E601704(&v39, &qword_27F235830);
LABEL_24:
  *(v20 + v25) = 0;

  sub_24E85C2E0();
}

uint64_t sub_24E85C2E0()
{
  result = *(v0 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_playbackQueue);
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v0;
    v4 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activeVideo;
    v18 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_videoViewModelManager;
    v5 = result + 32;

    while (1)
    {
      sub_24E65864C(v5, v33);
      sub_24E65864C(v33, v31);
      v6 = *(v3 + v4);
      if (v6)
      {
        v7 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
        v8 = (v6 + *(type metadata accessor for GSKVideo() + 44) + v7);
        v9 = v8[1];
        v24[0] = *v8;
        v24[1] = v9;

        sub_24F92C7F8();
      }

      else
      {
        v30 = 0;
        v28 = 0u;
        v29 = 0u;
      }

      sub_24E60169C(v31, v24, &qword_27F235830);
      sub_24E60169C(&v28, &v25, &qword_27F235830);
      if (!v24[3])
      {
        break;
      }

      sub_24E60169C(v24, v22, &qword_27F235830);
      if (!*(&v26 + 1))
      {
        sub_24E601704(&v28, &qword_27F235830);
        sub_24E601704(v31, &qword_27F235830);
        sub_24E6585F8(v22);
LABEL_15:
        sub_24E601704(v24, &qword_27F21B438);
        goto LABEL_16;
      }

      v19 = v25;
      v20 = v26;
      v21 = v27;
      v10 = MEMORY[0x253052150](v22, &v19);
      sub_24E6585F8(&v19);
      sub_24E601704(&v28, &qword_27F235830);
      sub_24E601704(v31, &qword_27F235830);
      sub_24E6585F8(v22);
      sub_24E601704(v24, &qword_27F235830);
      if (v10)
      {
        goto LABEL_27;
      }

LABEL_16:
      sub_24E65864C(v33, v24);
      sub_24E60169C(v24, &v28, &qword_27F235830);
      if (*(&v29 + 1))
      {
        v31[0] = v28;
        v31[1] = v29;
        v32 = v30;
        v11 = *(v3 + v18);
        sub_24E65864C(v31, &v28);
        sub_24E60169C(&v28, &v19, &qword_27F235830);
        if (*(&v20 + 1))
        {
          v22[0] = v19;
          v22[1] = v20;
          v23 = v21;
          swift_beginAccess();
          v12 = *(v11 + 16);
          if (*(v12 + 16))
          {

            v13 = sub_24E76D934(v22);
            if (v14)
            {
              v15 = *(*(v12 + 56) + 8 * v13);

              sub_24E6585F8(v22);
              sub_24E601704(&v28, &qword_27F235830);
              sub_24E6585F8(v31);
              sub_24E601704(v24, &qword_27F235830);

              v16 = *(v15 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
              if (!v16)
              {
                sub_24E6585F8(v33);

                goto LABEL_4;
              }

              [v16 pause];

              goto LABEL_27;
            }
          }

          sub_24E6585F8(v22);
          sub_24E601704(&v28, &qword_27F235830);
          sub_24E6585F8(v31);
LABEL_25:
          v17 = v24;
        }

        else
        {
          sub_24E601704(&v28, &qword_27F235830);
          sub_24E6585F8(v31);
          sub_24E601704(v24, &qword_27F235830);
          v17 = &v19;
        }

        sub_24E601704(v17, &qword_27F235830);
LABEL_27:
        sub_24E6585F8(v33);
        goto LABEL_4;
      }

      sub_24E601704(v24, &qword_27F235830);
      sub_24E6585F8(v33);
      sub_24E601704(&v28, &qword_27F235830);
LABEL_4:
      v5 += 40;
      if (!--v2)
      {
      }
    }

    sub_24E601704(&v28, &qword_27F235830);
    sub_24E601704(v31, &qword_27F235830);
    if (!*(&v26 + 1))
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t sub_24E85C6F4(uint64_t a1)
{
  sub_24E60169C(a1, &v8, &qword_27F235830);
  if (!*(&v9 + 1))
  {
    sub_24E601704(&v8, &qword_27F235830);
LABEL_8:
    v6 = 0;
    return v6 & 1;
  }

  v11[0] = v8;
  v11[1] = v9;
  v12 = v10;
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_autoPlayExclusions);

  v3 = sub_24F4D3620(v11, v2);

  if (v3)
  {
LABEL_7:
    sub_24E6585F8(v11);
    goto LABEL_8;
  }

  v4 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_visibleVideoFrames;
  swift_beginAccess();
  if (!*(*(v1 + v4) + 16))
  {
    swift_endAccess();
    goto LABEL_7;
  }

  sub_24E76D934(v11);
  v6 = v5;
  swift_endAccess();
  sub_24E6585F8(v11);
  return v6 & 1;
}

void sub_24E85C800()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator__isGlobalAutoPlayEnabled) & 1) == 0 && !sub_24E85B634() || *(v0 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isVideoAutoplayAccessibilityEnabled) != 1 || *(v0 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isAutoPlayEnabled) != 1 || *(v0 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isAutoPlayActive) != 1 || (*(v0 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isNetworkConstrained))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activeVideo);
    if (v1)
    {
      v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
      if (v2)
      {

        [v2 pause];
      }
    }

    return;
  }

  if (!sub_24E85B634())
  {
    v6 = v0 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activePlaybackIndex;
    v7 = sub_24E85DD98(*(v0 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activePlaybackIndex), *(v0 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activePlaybackIndex + 8));
    if (v8)
    {
      v7 = sub_24E85DD98(v7, 1);
      *v6 = v7;
      *(v6 + 8) = v9 & 1;
      if (v9)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *v6 = v7;
      *(v6 + 8) = 0;
    }

    v10 = *(v0 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_playbackQueue);
    if (v7 < *(v10 + 16))
    {
      if (v7 < 0)
      {
        __break(1u);
        return;
      }

      sub_24E65864C(v10 + 40 * v7 + 32, v12);
      v11 = sub_24E85BB80(v12);
      sub_24E601704(v12, &qword_27F235830);
      goto LABEL_25;
    }

LABEL_24:
    v11 = 0;
LABEL_25:
    sub_24E85CABC(v11, 0);

    return;
  }

  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activeVideo);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
    if (!v4 || (v5 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying, swift_beginAccess(), (*(v4 + v5) & 1) == 0))
    {
      sub_24E85D0A4(0);
    }
  }
}

uint64_t sub_24E85C9F4(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v5 == 1 && (a1 & 1) == 0)
  {
    sub_24E85C800();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  return sub_24F9230A8();
}

uint64_t sub_24E85CABC(uint64_t a1, int a2)
{
  v3 = v2;
  v39 = a2;
  v5 = sub_24F929158();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_24F928698();
  v38 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activeVideo;
  v14 = *(v2 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activeVideo);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
    v16 = (v14 + v15 + *(type metadata accessor for GSKVideo() + 44));
    v17 = v16[1];
    v43 = *v16;
    v44 = v17;

    sub_24F92C7F8();
    if (a1)
    {
LABEL_3:
      v18 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
      v19 = (a1 + *(type metadata accessor for GSKVideo() + 44) + v18);
      v20 = v19[1];
      v43 = *v19;
      v44 = v20;

      sub_24F92C7F8();
      goto LABEL_6;
    }
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v50 = 0;
  memset(v49, 0, sizeof(v49));
LABEL_6:
  sub_24E60169C(v51, &v43, &qword_27F235830);
  sub_24E60169C(v49, &v46, &qword_27F235830);
  if (v45)
  {
    sub_24E60169C(&v43, v42, &qword_27F235830);
    if (*(&v47 + 1))
    {
      v40[0] = v46;
      v40[1] = v47;
      v41 = v48;
      v21 = MEMORY[0x253052150](v42, v40);
      sub_24E6585F8(v40);
      sub_24E601704(v49, &qword_27F235830);
      sub_24E601704(v51, &qword_27F235830);
      sub_24E6585F8(v42);
      result = sub_24E601704(&v43, &qword_27F235830);
      if (v21)
      {
        return result;
      }

      v23 = *(v3 + v13);
      if (!v23)
      {
        goto LABEL_24;
      }

      goto LABEL_15;
    }

    sub_24E601704(v49, &qword_27F235830);
    sub_24E601704(v51, &qword_27F235830);
    sub_24E6585F8(v42);
  }

  else
  {
    sub_24E601704(v49, &qword_27F235830);
    sub_24E601704(v51, &qword_27F235830);
    if (!*(&v47 + 1))
    {
      return sub_24E601704(&v43, &qword_27F235830);
    }
  }

  sub_24E601704(&v43, &qword_27F21B438);
  v23 = *(v3 + v13);
  if (v23)
  {
LABEL_15:
    v24 = *(v23 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
    if (v24)
    {
      v25 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
      swift_beginAccess();
      if (*(v24 + v25) == 1)
      {

        sub_24F39EB00(v39 & 1, 0, v9);

        v26 = v38;
        if ((*(v38 + 48))(v9, 1, v10) == 1)
        {
          sub_24E601704(v9, &qword_27F21EB88);
        }

        else
        {
          (*(v26 + 32))(v12, v9, v10);
          v27 = v26;
          v28 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_metricsPipeline;
          swift_beginAccess();
          v30 = v36;
          v29 = v37;
          if ((*(v36 + 48))(v3 + v28, 1, v37))
          {
            (*(v27 + 8))(v12, v10);
            swift_endAccess();
          }

          else
          {
            v31 = v3 + v28;
            v32 = v35;
            (*(v30 + 16))(v35, v31, v29);
            swift_endAccess();
            if (qword_27F210658 != -1)
            {
              swift_once();
            }

            v33 = sub_24F929AB8();
            __swift_project_value_buffer(v33, qword_27F22E3B8);
            sub_24F929138();

            (*(v30 + 8))(v32, v29);
            (*(v38 + 8))(v12, v10);
          }
        }
      }
    }
  }

LABEL_24:
  *(v3 + v13) = a1;

  result = sub_24E85C2E0();
  if (*(v3 + v13))
  {
    return sub_24E85D0A4(v39 & 1);
  }

  return result;
}

uint64_t sub_24E85D0A4(char a1)
{
  v3 = sub_24F927DE8();
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v18 = &v18 - v7;
  v8 = sub_24F927D88();
  MEMORY[0x28223BE20](v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_24E861A60;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_23;
  _Block_copy(aBlock);
  v21 = MEMORY[0x277D84F90];
  sub_24E861C8C(&qword_27F222930, MEMORY[0x277D85198]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  sub_24F927E28();
  swift_allocObject();
  v11 = sub_24F927E08();

  v12 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_playbackWorkItem;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_playbackWorkItem))
  {

    sub_24F927E18();
  }

  *(v1 + v12) = v11;

  v13 = v18;
  if (qword_27F20FF98 != -1)
  {
    swift_once();
  }

  sub_24F927DD8();
  sub_24F927E58();
  v14 = *(v19 + 8);
  v15 = v5;
  v16 = v20;
  result = v14(v15, v20);
  if (*(v1 + v12))
  {

    sub_24F92BEA8();

    return v14(v13, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E85D450(uint64_t a1, char a2)
{
  v4 = sub_24F927D88();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F927DC8();
  v7 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  v10 = sub_24F92BEF8();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_24E861A84;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_11_0;
  v12 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E861C8C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v15 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v14);
}

void sub_24E85D740(uint64_t a1, int a2)
{
  v3 = sub_24F929158();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v28 - v8;
  v10 = sub_24F928698();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v29 = a2;
    v16 = *(Strong + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activeVideo);
    if (!v16 || (v17 = *(v16 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player)) != 0 && (v28[1] = *(Strong + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activeVideo), v18 = v13, v19 = v10, v20 = v6, v21 = v3, v22 = v11, v23 = v4, v24 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying, swift_beginAccess(), v25 = *(v17 + v24), v4 = v23, v11 = v22, v3 = v21, v6 = v20, v10 = v19, v13 = v18, (v25 & 1) != 0) || v15[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isAutoPlayActive] != 1)
    {
    }

    else
    {

      sub_24E8815CC();
      if (v29)
      {
LABEL_13:

        return;
      }

      sub_24F39F378(0, v9);
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {

        sub_24E601704(v9, &qword_27F21EB88);
        return;
      }

      (*(v11 + 32))(v13, v9, v10);
      v26 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_metricsPipeline;
      swift_beginAccess();
      if ((*(v4 + 48))(&v15[v26], 1, v3))
      {
        (*(v11 + 8))(v13, v10);
        swift_endAccess();
        goto LABEL_13;
      }

      (*(v4 + 16))(v6, &v15[v26], v3);
      swift_endAccess();
      if (qword_27F210658 != -1)
      {
        swift_once();
      }

      v27 = sub_24F929AB8();
      __swift_project_value_buffer(v27, qword_27F22E3B8);
      sub_24F929138();

      (*(v4 + 8))(v6, v3);
      (*(v11 + 8))(v13, v10);
    }
  }
}

uint64_t sub_24E85DB5C(uint64_t result)
{
  v2 = result;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator__isGlobalAutoPlayEnabled) & 1) == 0 && (result = sub_24E85B634(), (result & 1) == 0) || *(v1 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isVideoAutoplayAccessibilityEnabled) != 1 || *(v1 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isAutoPlayEnabled) != 1 || *(v1 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isAutoPlayActive) != 1 || (*(v1 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isNetworkConstrained))
  {
    v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activeVideo);
    if (v3)
    {
      result = *(v3 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
      if (result)
      {

        return [result pause];
      }
    }

    return result;
  }

  result = sub_24E85B634();
  if ((result & 1) != 0 && (v2 & 1) == 0)
  {
    v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activeVideo);
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
      if (!v5)
      {
        return sub_24E85D0A4(0);
      }

      v6 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
      result = swift_beginAccess();
      if ((*(v5 + v6) & 1) == 0)
      {
        return sub_24E85D0A4(0);
      }
    }

    return result;
  }

  v7 = v1 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activePlaybackIndex;
  result = sub_24E85DD98(*(v1 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activePlaybackIndex), *(v1 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activePlaybackIndex + 8));
  if (v8)
  {
    if ((*(v1 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_shouldLoopAutoPlayback) & 1) == 0)
    {
      if ((*(v7 + 8) & 1) == 0)
      {
LABEL_32:
        *v7 = result;
        goto LABEL_33;
      }

LABEL_31:
      *v7 = 0;
LABEL_33:
      *(v7 + 8) = 1;
      return result;
    }

    result = sub_24E85DD98(0, 1);
    v9 = *(v7 + 8);
    if (v10)
    {
      if (!*(v7 + 8))
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v9 = *(v7 + 8);
  }

  if ((v9 & 1) == 0 && result == *v7)
  {
    goto LABEL_31;
  }

  *v7 = result;
  *(v7 + 8) = 0;
  v11 = *(v1 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_playbackQueue);
  if (result < *(v11 + 16))
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      sub_24E65864C(v11 + 40 * result + 32, v13);
      v12 = sub_24E85BB80(v13);
      result = sub_24E601704(v13, &qword_27F235830);
      if (v12)
      {
        sub_24E85CABC(v12, 0);
      }
    }
  }

  return result;
}

uint64_t sub_24E85DD98(uint64_t result, char a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = result + 1;
    if (__OFADD__(result, 1))
    {
      goto LABEL_26;
    }
  }

  v5 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_playbackQueue;
  v6 = *(*(v2 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_playbackQueue) + 16);
  if (v4 >= v6)
  {
    return 0;
  }

  v18 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_videoViewModelManager;
  v7 = 40 * v4 + 32;
  v8 = v4;
  while ((v4 & 0x8000000000000000) == 0)
  {
    v10 = *(v3 + v5);
    if (v8 >= *(v10 + 16))
    {
      goto LABEL_25;
    }

    sub_24E65864C(v10 + v7, v29);
    sub_24E60169C(v29, &v24, &qword_27F235830);
    if (!*(&v25 + 1))
    {
      sub_24E601704(v29, &qword_27F235830);
      v9 = &v24;
      goto LABEL_7;
    }

    v27[0] = v24;
    v27[1] = v25;
    v28 = v26;
    v11 = *(v3 + v18);
    sub_24E65864C(v27, &v24);
    sub_24E60169C(&v24, &v19, &qword_27F235830);
    if (!*(&v20 + 1))
    {
      sub_24E601704(&v24, &qword_27F235830);
      sub_24E6585F8(v27);
      sub_24E601704(v29, &qword_27F235830);
      v9 = &v19;
      goto LABEL_7;
    }

    v22[0] = v19;
    v22[1] = v20;
    v23 = v21;
    swift_beginAccess();
    v12 = *(v11 + 16);
    if (!*(v12 + 16))
    {
      goto LABEL_20;
    }

    v13 = sub_24E76D934(v22);
    if ((v14 & 1) == 0)
    {

LABEL_20:
      sub_24E6585F8(v22);
      sub_24E601704(&v24, &qword_27F235830);
      sub_24E6585F8(v27);
      v9 = v29;
LABEL_7:
      result = sub_24E601704(v9, &qword_27F235830);
      goto LABEL_8;
    }

    v15 = *(*(v12 + 56) + 8 * v13);

    sub_24E6585F8(v22);
    sub_24E601704(&v24, &qword_27F235830);
    sub_24E6585F8(v27);
    sub_24E601704(v29, &qword_27F235830);

    v16 = v15 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_configuration;
    swift_beginAccess();
    if (*(v16 + *(type metadata accessor for VideoConfiguration() + 36)))
    {
      v17 = *(v15 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_isAutoPlayVideoSettingsEnabled);

      if (v17)
      {
        return v8;
      }
    }

    else
    {
    }

LABEL_8:
    ++v8;
    v7 += 40;
    if (v6 == v8)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24E85E064()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_visibleVideoFrames;
  swift_beginAccess();
  v48 = v0;
  v49 = v2;
  v3 = *(v0 + v2);
  v4 = *(v3 + 16);
  if (!v4)
  {

    v5 = MEMORY[0x277D84F90];
LABEL_5:
    *&v61[0] = v5;
    sub_24E85866C(v61);

    v7 = *&v61[0];
    v8 = *(*&v61[0] + 16);
    if (v8)
    {
      v66 = MEMORY[0x277D84F90];
      sub_24F457B3C(0, v8, 0);
      v5 = v66;
      v9 = v7 + 32;
      do
      {
        sub_24E60169C(v9, v61, &qword_27F21F450);
        sub_24E60169C(v61, &v56, &qword_27F21F450);
        v51 = v56;
        v52 = v57;
        v53 = v58;
        v54 = v59;
        v55 = v60;
        sub_24E65864C(&v51, &v63);
        sub_24E601704(&v51, &qword_27F21F450);
        sub_24E601704(v61, &qword_27F21F450);
        v66 = v5;
        v11 = v5[2];
        v10 = v5[3];
        if (v11 >= v10 >> 1)
        {
          sub_24F457B3C((v10 > 1), v11 + 1, 1);
          v5 = v66;
        }

        v5[2] = v11 + 1;
        v12 = &v5[5 * v11];
        v13 = v63;
        v14 = v64;
        v12[8] = v65;
        *(v12 + 2) = v13;
        *(v12 + 3) = v14;
        v9 += 72;
        --v8;
      }

      while (v8);

      v1 = v48;
      v15 = v5[2];
      if (v15)
      {
        goto LABEL_11;
      }
    }

    else
    {

      v5 = MEMORY[0x277D84F90];
      v15 = *(MEMORY[0x277D84F90] + 16);
      if (v15)
      {
LABEL_11:
        v16 = 0;
        v50 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_autoPlayExclusions;
        v17 = v5 + 4;
        v47 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v16 >= v5[2])
          {
            __break(1u);
            goto LABEL_48;
          }

          sub_24E65864C(&v17[5 * v16], v61);
          sub_24E65864C(v61, &v56);
          sub_24E60169C(&v56, &v63, &qword_27F235830);
          if (!*(&v64 + 1))
          {
            break;
          }

          v51 = v63;
          v52 = v64;
          v53 = v65;
          v19 = *(v1 + v50);
          if (*(v19 + 16))
          {
            v20 = v15;

            v21 = sub_24F92C7B8();
            v22 = -1 << *(v19 + 32);
            v23 = v21 & ~v22;
            if ((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
            {
              v24 = ~v22;
              while (1)
              {
                sub_24E65864C(*(v19 + 48) + 40 * v23, &v63);
                v25 = MEMORY[0x253052150](&v63, &v51);
                sub_24E6585F8(&v63);
                if (v25)
                {
                  break;
                }

                v23 = (v23 + 1) & v24;
                if (((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
                {
                  goto LABEL_23;
                }
              }

              sub_24E6585F8(&v51);
              sub_24E601704(&v56, &qword_27F235830);
              v15 = v20;
              v17 = v5 + 4;
              v1 = v48;
              goto LABEL_14;
            }

LABEL_23:

            v15 = v20;
            v17 = v5 + 4;
            v1 = v48;
          }

          swift_beginAccess();
          if (!*(*(v1 + v49) + 16))
          {
            swift_endAccess();
            sub_24E6585F8(&v51);
            v18 = &v56;
            goto LABEL_13;
          }

          sub_24E76D934(&v51);
          v27 = v26;
          swift_endAccess();
          sub_24E6585F8(&v51);
          sub_24E601704(&v56, &qword_27F235830);
          if (v27)
          {
            v56 = v61[0];
            v57 = v61[1];
            v58 = v62;
            v28 = v47;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v66 = v47;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_24F457B3C(0, v47[2] + 1, 1);
              v28 = v66;
            }

            v31 = v28[2];
            v30 = v28[3];
            if (v31 >= v30 >> 1)
            {
              sub_24F457B3C((v30 > 1), v31 + 1, 1);
              v28 = v66;
            }

            v28[2] = v31 + 1;
            v47 = v28;
            v32 = &v28[5 * v31];
            v33 = v56;
            v34 = v57;
            v32[8] = v58;
            *(v32 + 2) = v33;
            *(v32 + 3) = v34;
            goto LABEL_15;
          }

LABEL_14:
          sub_24E6585F8(v61);
LABEL_15:
          if (++v16 == v15)
          {
            goto LABEL_35;
          }
        }

        sub_24E601704(&v56, &qword_27F235830);
        v18 = &v63;
LABEL_13:
        sub_24E601704(v18, &qword_27F235830);
        goto LABEL_14;
      }
    }

    v47 = MEMORY[0x277D84F90];
LABEL_35:

    v35 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_playbackQueue;
    *(v1 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_playbackQueue) = v47;

    v37 = *(v1 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activeVideo);
    if (v37)
    {
      v5 = *(v1 + v35);
      v38 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
      v39 = (v37 + v38 + *(type metadata accessor for GSKVideo() + 44));
      v40 = v39[1];
      *&v56 = *v39;
      *(&v56 + 1) = v40;

      sub_24F92C7F8();
      v41 = v5[2];
      if (v41)
      {
        v42 = 0;
        v43 = (v5 + 4);
        while (v42 < v5[2])
        {
          sub_24E65864C(v43, &v56);
          v44 = MEMORY[0x253052150](&v56, v61);
          sub_24E6585F8(&v56);
          if (v44)
          {
            goto LABEL_42;
          }

          ++v42;
          v43 += 40;
          if (v41 == v42)
          {
            v42 = 0;
LABEL_42:
            v45 = v44 ^ 1;
            goto LABEL_45;
          }
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v42 = 0;
      v45 = 1;
LABEL_45:
      sub_24E6585F8(v61);
    }

    else
    {
      v42 = 0;
      v45 = 1;
    }

    v46 = v1 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activePlaybackIndex;
    *v46 = v42;
    *(v46 + 8) = v45 & 1;
    return result;
  }

  v5 = sub_24EAE6894(*(v3 + 16), 0);
  v6 = sub_24EAE7F74(v61, (v5 + 4), v4, v3);
  swift_bridgeObjectRetain_n();
  sub_24E6586B4();
  if (v6 == v4)
  {
    v1 = v48;
    goto LABEL_5;
  }

LABEL_49:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_24E85E6CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v17 - v2;
  result = sub_24E85DD98(*(v0 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activePlaybackIndex), *(v0 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activePlaybackIndex + 8));
  if ((v5 & 1) == 0)
  {
    v6 = *(v0 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_playbackQueue);
    if (result < *(v6 + 16))
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        sub_24E65864C(v6 + 40 * result + 32, v19);
        v7 = sub_24E85BB80(v19);
        result = sub_24E601704(v19, &qword_27F235830);
        if (v7)
        {
          v8 = *(v0 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activeVideo);
          if (v8)
          {
            v9 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
            v10 = type metadata accessor for GSKVideo();
            v11 = (v7 + *(v10 + 44) + v9);
            v12 = v11[1];
            v18[0] = *v11;
            v18[1] = v12;

            sub_24F92C7F8();
            v13 = (v8 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video + *(v10 + 44));
            v14 = v13[1];
            v17[0] = *v13;
            v17[1] = v14;

            sub_24F92C7F8();
            LOBYTE(v10) = MEMORY[0x253052150](v19, v18);
            sub_24E6585F8(v18);
            sub_24E6585F8(v19);
            if ((v10 & 1) == 0)
            {
              v15 = sub_24F92B858();
              (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
              v16 = swift_allocObject();
              v16[2] = 0;
              v16[3] = 0;
              v16[4] = v7;

              sub_24EA9A1C4(0, 0, v3, &unk_24F95FB68, v16);
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_24E85E93C(_BYTE *a1, uint64_t a2)
{
  v3 = *a1;
  if (!*a1)
  {
    return;
  }

  v4 = v2;
  v6 = *(v4 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_playbackQueue);
  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = 0;
    v9 = v6 + 32;
    while (v8 < *(v6 + 16))
    {
      sub_24E65864C(v9, v21);
      v10 = MEMORY[0x253052150](v21, a2);
      sub_24E6585F8(v21);
      if (v10)
      {

        v21[0] = v8;
        v9 = sub_24F92CD88();
        v6 = v11;
        goto LABEL_9;
      }

      ++v8;
      v9 += 40;
      if (v7 == v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    v6 = 0xE200000000000000;
    v9 = 11565;
LABEL_9:
    if (qword_27F211468 == -1)
    {
      goto LABEL_10;
    }
  }

  swift_once();
LABEL_10:
  v12 = sub_24F9220D8();
  __swift_project_value_buffer(v12, qword_27F39E988);

  v13 = sub_24F9220B8();
  v14 = sub_24F92BD98();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21[0] = v16;
    *v15 = 136446466;
    v17 = sub_24E7620D4(v9, v6, v21);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2082;
    v18 = sub_24F92B188();
    v20 = sub_24E7620D4(v18, v19, v21);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_24E5DD000, v13, v14, "GSKVideoPlaybackCoordinator: GSKVideo at index %{public}s is %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v16, -1, -1);
    MEMORY[0x2530542D0](v15, -1, -1);
  }

  else
  {
  }

  if (v3 == 4)
  {
    sub_24E85DB5C(0);
  }
}

uint64_t sub_24E85EBB4(double a1)
{
  if (qword_27F211468 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E988);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_24E5DD000, v3, v4, "GSKVideoPlaybackCoordinator: Playback ending in %{public}f", v5, 0xCu);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  return sub_24E85E6CC();
}

uint64_t sub_24E85ECB8(int a1, uint64_t a2)
{
  v49 = a1;
  v4 = sub_24F929158();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = sub_24F928698();
  v50 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  sub_24E65864C(a2, v56);
  sub_24E60169C(v56, &v51, &qword_27F235830);
  if (*(&v52 + 1))
  {
    v46 = v7;
    v45 = a2;
    v54[0] = v51;
    v54[1] = v52;
    v55 = v53;
    v48 = v2;
    sub_24E65864C(v54, &v51);
    v20 = sub_24E78EC20(&v51);
    sub_24E601704(&v51, &qword_27F235830);
    sub_24E6585F8(v54);
    result = sub_24E601704(v56, &qword_27F235830);
    if (v20)
    {
      v47 = v20;
      sub_24F39EB00(0, 1, v13);
      v22 = v50;
      v44 = *(v50 + 48);
      if (v44(v13, 1, v14) == 1)
      {
        sub_24E601704(v13, &qword_27F21EB88);
      }

      else
      {
        (*(v22 + 32))(v19, v13, v14);
        v23 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_metricsPipeline;
        v24 = v48;
        swift_beginAccess();
        if ((*(v5 + 48))(&v24[v23], 1, v4))
        {
          (*(v22 + 8))(v19, v14);
          swift_endAccess();
        }

        else
        {
          v25 = &v24[v23];
          v26 = v46;
          (*(v5 + 16))(v46, v25, v4);
          swift_endAccess();
          if (qword_27F210658 != -1)
          {
            swift_once();
          }

          v27 = sub_24F929AB8();
          __swift_project_value_buffer(v27, qword_27F22E3B8);
          sub_24F929138();

          (*(v5 + 8))(v26, v4);
          (*(v50 + 8))(v19, v14);
        }
      }

      if (v49)
      {
        sub_24F39FC20(v10);
        if (v44(v10, 1, v14) == 1)
        {
          sub_24E601704(v10, &qword_27F21EB88);
          v28 = v48;
        }

        else
        {
          v29 = v50;
          (*(v50 + 32))(v16, v10, v14);
          v30 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_metricsPipeline;
          v28 = v48;
          swift_beginAccess();
          if (!(*(v5 + 48))(&v28[v30], 1, v4))
          {
            v31 = &v28[v30];
            v32 = v46;
            (*(v5 + 16))(v46, v31, v4);
            swift_endAccess();
            if (qword_27F210658 != -1)
            {
              goto LABEL_29;
            }

            goto LABEL_17;
          }

          (*(v29 + 8))(v16, v14);
          swift_endAccess();
        }

        while (1)
        {
          v32 = v28;
          v35 = sub_24E85DD98(*&v28[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activePlaybackIndex], v28[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activePlaybackIndex + 8]);
          if (v36)
          {
            v32 = v28;
            v35 = sub_24E85DD98(v35, 1);
            if (v37)
            {
              break;
            }
          }

          v38 = *&v28[OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_playbackQueue];
          if (v35 >= *(v38 + 16))
          {
            break;
          }

          if ((v35 & 0x8000000000000000) == 0)
          {
            sub_24E65864C(v38 + 40 * v35 + 32, v56);
            v39 = sub_24E85BB80(v56);
            sub_24E601704(v56, &qword_27F235830);
            if (v39)
            {
              v40 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
              v41 = (v39 + *(type metadata accessor for GSKVideo() + 44) + v40);
              v42 = v41[1];
              *&v54[0] = *v41;
              *(&v54[0] + 1) = v42;

              sub_24F92C7F8();
              v43 = MEMORY[0x253052150](v45, v56);
              sub_24E6585F8(v56);
              if ((v43 & 1) == 0)
              {
                sub_24E85DB5C(1);
              }
            }
          }

          __break(1u);
LABEL_29:
          swift_once();
LABEL_17:
          v33 = sub_24F929AB8();
          __swift_project_value_buffer(v33, qword_27F22E3B8);
          sub_24F929138();

          v34 = *(v5 + 8);
          v5 += 8;
          v34(v32, v4);
          (*(v50 + 8))(v16, v14);
        }
      }
    }
  }

  else
  {
    sub_24E601704(v56, &qword_27F235830);
    return sub_24E601704(&v51, &qword_27F235830);
  }

  return result;
}

uint64_t sub_24E85F3D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F929158();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_24F928698();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211468 != -1)
  {
    swift_once();
  }

  v36 = v14;
  v15 = sub_24F9220D8();
  __swift_project_value_buffer(v15, qword_27F39E988);
  v16 = sub_24F9220B8();
  v17 = sub_24F92BD98();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = v2;
    v19 = v10;
    v20 = v11;
    v21 = a1;
    v22 = v12;
    v23 = v7;
    v24 = v4;
    v25 = v5;
    v26 = v18;
    *v18 = 0;
    _os_log_impl(&dword_24E5DD000, v16, v17, "GSKVideoPlaybackCoordinator: Pause was user initiated: true", v18, 2u);
    v27 = v26;
    v5 = v25;
    v4 = v24;
    v7 = v23;
    v12 = v22;
    a1 = v21;
    v11 = v20;
    v10 = v19;
    v2 = v35;
    MEMORY[0x2530542D0](v27, -1, -1);
  }

  if (((*(v2 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator__isGlobalAutoPlayEnabled) & 1) != 0 || sub_24E85B634()) && *(v2 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isVideoAutoplayAccessibilityEnabled) == 1)
  {
    *(v2 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isAutoPlayEnabled) = 0;
  }

  sub_24E65864C(a1, v37);
  v28 = sub_24E85BB80(v37);
  result = sub_24E601704(v37, &qword_27F235830);
  if (v28)
  {
    sub_24F39EB00(1, 0, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {

      return sub_24E601704(v10, &qword_27F21EB88);
    }

    else
    {
      v30 = v36;
      (*(v12 + 32))(v36, v10, v11);
      v31 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_metricsPipeline;
      swift_beginAccess();
      if ((*(v5 + 48))(v2 + v31, 1, v4))
      {
        (*(v12 + 8))(v30, v11);
        swift_endAccess();
      }

      else
      {
        (*(v5 + 16))(v7, v2 + v31, v4);
        swift_endAccess();
        if (qword_27F210658 != -1)
        {
          swift_once();
        }

        v32 = sub_24F929AB8();
        __swift_project_value_buffer(v32, qword_27F22E3B8);
        v33 = v36;
        sub_24F929138();

        (*(v5 + 8))(v7, v4);
        return (*(v12 + 8))(v33, v11);
      }
    }
  }

  return result;
}

uint64_t sub_24E85F874(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F929158();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v11 = sub_24F928698();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65864C(a1, v48);
  sub_24E60169C(v48, &v43, &qword_27F235830);
  if (*(&v44 + 1))
  {
    v42 = v12;
    v46[0] = v43;
    v46[1] = v44;
    v47 = v45;
    sub_24E65864C(v46, &v43);
    v15 = sub_24E78EC20(&v43);
    sub_24E601704(&v43, &qword_27F235830);
    sub_24E6585F8(v46);
    result = sub_24E601704(v48, &qword_27F235830);
    if (v15)
    {
      v39 = v7;
      v40 = v5;
      if (qword_27F211468 != -1)
      {
        goto LABEL_24;
      }

      while (1)
      {
        v17 = sub_24F9220D8();
        __swift_project_value_buffer(v17, qword_27F39E988);
        v18 = sub_24F9220B8();
        v19 = sub_24F92BD98();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_24E5DD000, v18, v19, "GSKVideoPlaybackCoordinator: Play was user initiated: true", v20, 2u);
          MEMORY[0x2530542D0](v20, -1, -1);
        }

        v41 = v4;

        v21 = 1;
        *(v2 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_isAutoPlayEnabled) = 1;
        sub_24E85E064();
        v22 = *(v2 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_playbackQueue);
        v23 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
        v24 = (v15 + v23 + *(type metadata accessor for GSKVideo() + 44));
        v25 = v24[1];
        *&v46[0] = *v24;
        *(&v46[0] + 1) = v25;

        sub_24F92C7F8();
        v4 = *(v22 + 16);
        if (!v4)
        {
          break;
        }

        v26 = 0;
        v27 = v22 + 32;
        while (v26 < *(v22 + 16))
        {
          sub_24E65864C(v27, v46);
          v28 = MEMORY[0x253052150](v46, v48);
          sub_24E6585F8(v46);
          if (v28)
          {
            goto LABEL_12;
          }

          ++v26;
          v27 += 40;
          if (v4 == v26)
          {
            v26 = 0;
LABEL_12:
            v21 = v28 ^ 1;
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        swift_once();
      }

      v26 = 0;
LABEL_15:
      v29 = v42;
      sub_24E6585F8(v48);

      v30 = v2 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_activePlaybackIndex;
      *v30 = v26;
      *(v30 + 8) = v21 & 1;

      sub_24E85CABC(v31, 1);

      sub_24F39F378(1, v10);
      if ((*(v29 + 48))(v10, 1, v11) == 1)
      {

        return sub_24E601704(v10, &qword_27F21EB88);
      }

      else
      {
        (*(v29 + 32))(v14, v10, v11);
        v32 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_metricsPipeline;
        swift_beginAccess();
        v34 = v40;
        v33 = v41;
        if ((*(v40 + 48))(v2 + v32, 1, v41))
        {
          (*(v29 + 8))(v14, v11);
          swift_endAccess();
        }

        else
        {
          v35 = v2 + v32;
          v36 = v39;
          (*(v34 + 16))(v39, v35, v33);
          swift_endAccess();
          if (qword_27F210658 != -1)
          {
            swift_once();
          }

          v37 = sub_24F929AB8();
          __swift_project_value_buffer(v37, qword_27F22E3B8);
          sub_24F929138();

          (*(v34 + 8))(v36, v33);
          return (*(v29 + 8))(v14, v11);
        }
      }
    }
  }

  else
  {
    sub_24E601704(v48, &qword_27F235830);
    return sub_24E601704(&v43, &qword_27F235830);
  }

  return result;
}

uint64_t type metadata accessor for GSKVideoPlaybackCoordinator()
{
  result = qword_27F21F430;
  if (!qword_27F21F430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E860054()
{
  sub_24E8601F0(319, &qword_27F21F440, MEMORY[0x277CBCEC0]);
  if (v0 <= 0x3F)
  {
    sub_24E78F45C();
    if (v1 <= 0x3F)
    {
      sub_24E8601F0(319, &qword_27F21F448, MEMORY[0x277CBCED0]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24E8601F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24E860244@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_24F922FA8();
  *a1 = result;
  return result;
}

uint64_t sub_24E86029C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_videoViewModelManager);
  sub_24E60169C(a1, &v8, &qword_27F235830);
  if (*(&v9 + 1))
  {
    v11[0] = v8;
    v11[1] = v9;
    v12 = v10;
    swift_beginAccess();
    v3 = *(v2 + 16);
    if (*(v3 + 16))
    {

      v4 = sub_24E76D934(v11);
      if (v5)
      {
        v6 = *(*(v3 + 56) + 8 * v4);

        sub_24E6585F8(v11);

        return v6;
      }
    }

    sub_24E6585F8(v11);
  }

  else
  {
    sub_24E601704(&v8, &qword_27F235830);
  }

  return 0;
}

uint64_t sub_24E86038C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_24F92CD78();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F450);
        v5 = sub_24F92B618();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24E8606E4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_24E860494(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24E860494(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 72 * a3;
    v7 = result - a3;
LABEL_6:
    v8 = v7;
    v9 = v6;
    while (1)
    {
      sub_24E60169C(v9, &v32, &qword_27F21F450);
      v10 = (v9 - 72);
      sub_24E60169C(v9 - 72, &rect.origin.y, &qword_27F21F450);
      v38.origin.x = *(&v34 + 1);
      v12 = v35;
      v11 = v36;
      v13 = v28;
      v14 = v29;
      v15 = v30;
      v16 = v31;
      rect.origin.x = *(&v34 + 1);
      *&v38.origin.y = v35;
      v38.size.height = v36;
      MinY = CGRectGetMinY(v38);
      v37 = v13;
      v39.origin.x = v13;
      v39.origin.y = v14;
      v39.size.width = v15;
      v39.size.height = v16;
      if (MinY >= CGRectGetMinY(v39))
      {
        v40.origin.x = rect.origin.x;
        *&v40.origin.y = v12;
        v40.size.height = v11;
        v18 = CGRectGetMinY(v40);
        v41.origin.x = v37;
        v41.origin.y = v14;
        v41.size.width = v15;
        v41.size.height = v16;
        if (v18 != CGRectGetMinY(v41) || (v42.origin.x = rect.origin.x, *&v42.origin.y = v12, v42.size.height = v11, MinX = CGRectGetMinX(v42), v43.origin.x = v37, v43.origin.y = v14, v43.size.width = v15, v43.size.height = v16, MinX >= CGRectGetMinX(v43)))
        {
          sub_24E601704(&rect.origin.y, &qword_27F21F450);
          result = sub_24E601704(&v32, &qword_27F21F450);
LABEL_5:
          ++v4;
          v6 += 72;
          --v7;
          if (v4 == a2)
          {
            return result;
          }

          goto LABEL_6;
        }
      }

      sub_24E601704(&rect.origin.y, &qword_27F21F450);
      result = sub_24E601704(&v32, &qword_27F21F450);
      if (!v5)
      {
        break;
      }

      v33 = *(v9 + 16);
      v34 = *(v9 + 32);
      v35 = *(v9 + 48);
      v36 = *(v9 + 64);
      v32 = *v9;
      v20 = *(v9 - 24);
      *(v9 + 32) = *(v9 - 40);
      *(v9 + 48) = v20;
      *(v9 + 64) = *(v9 - 8);
      v21 = *(v9 - 56);
      *v9 = *v10;
      *(v9 + 16) = v21;
      *v10 = v32;
      v22 = v33;
      v23 = v34;
      v24 = v35;
      *(v9 - 8) = v36;
      *(v9 - 40) = v23;
      *(v9 - 24) = v24;
      *(v9 - 56) = v22;
      v9 -= 72;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24E8606E4(uint64_t result, uint64_t a2, double *a3, uint64_t a4)
{
  v6 = v4;
  v119 = result;
  v7 = *(a3 + 1);
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_100:
    v5 = *v119;
    if (!*v119)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_102:
      v136 = v9;
      v110 = *(v9 + 2);
      if (v110 >= 2)
      {
        while (*a3)
        {
          v111 = *&v9[16 * v110];
          v112 = *&v9[16 * v110 + 24];
          sub_24E8610D8((*a3 + 72 * v111), (*a3 + 72 * *&v9[16 * v110 + 16]), (*a3 + 72 * v112), *&v5);
          if (v6)
          {
          }

          if (v112 < v111)
          {
            goto LABEL_125;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_24E86164C(v9);
          }

          if (v110 - 2 >= *(v9 + 2))
          {
            goto LABEL_126;
          }

          v113 = &v9[16 * v110];
          *v113 = v111;
          *(v113 + 1) = v112;
          v136 = v9;
          result = sub_24E8615C0(v110 - 1);
          v9 = v136;
          v110 = *(v136 + 2);
          if (v110 <= 1)
          {
          }
        }

        goto LABEL_136;
      }
    }

LABEL_132:
    result = sub_24E86164C(v9);
    v9 = result;
    goto LABEL_102;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    *&v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v120 = v7;
      v12 = *a3;
      v13 = v8 + 1;
      sub_24E60169C(*a3 + 72 * *&v11, &v131, &qword_27F21F450);
      sub_24E60169C(*&v12 + 72 * v10, &rect.size, &qword_27F21F450);
      v137.origin.x = *(&v133 + 1);
      v15 = v134;
      v14 = v135;
      v16 = v127;
      v17 = v128;
      v18 = v129;
      v19 = v130;
      rect.origin.x = *(&v133 + 1);
      *&v137.origin.y = v134;
      v137.size.height = v135;
      MinY = CGRectGetMinY(v137);
      v138.origin.x = v16;
      v138.origin.y = v17;
      v138.size.width = v18;
      v138.size.height = v19;
      v115 = v6;
      if (MinY >= CGRectGetMinY(v138))
      {
        v139.origin.x = rect.origin.x;
        *&v139.origin.y = v15;
        v139.size.height = v14;
        v21 = CGRectGetMinY(v139);
        v140.origin.x = v16;
        v140.origin.y = v17;
        v140.size.width = v18;
        v140.size.height = v19;
        if (v21 == CGRectGetMinY(v140))
        {
          v141.origin.x = rect.origin.x;
          *&v141.origin.y = v15;
          v141.size.height = v14;
          MinX = CGRectGetMinX(v141);
          v142.origin.x = v16;
          v142.origin.y = v17;
          v142.size.width = v18;
          v142.size.height = v19;
          v123 = MinX < CGRectGetMinX(v142);
        }

        else
        {
          v123 = 0;
        }
      }

      else
      {
        v123 = 1;
      }

      sub_24E601704(&rect.size, &qword_27F21F450);
      result = sub_24E601704(&v131, &qword_27F21F450);
      *&v23 = v10 + 2;
      v117 = v10;
      v6 = 72 * v10;
      v24 = *&v12 + 72 * v10 + 144;
      v25 = 72 * v10 + 72;
      v26 = v13;
      do
      {
        v5 = v23;
        v28 = v26;
        v29 = v25;
        if (*&v23 >= v120)
        {
          break;
        }

        sub_24E60169C(v24, &v131, &qword_27F21F450);
        sub_24E60169C(v24 - 72, &rect.size, &qword_27F21F450);
        v143.origin.x = *(&v133 + 1);
        v31 = v134;
        v30 = v135;
        v32 = v127;
        v33 = v128;
        v34 = v129;
        v35 = v130;
        rect.origin.x = *(&v133 + 1);
        *&v143.origin.y = v134;
        v143.size.height = v135;
        v36 = CGRectGetMinY(v143);
        v144.origin.x = v32;
        v144.origin.y = v33;
        v144.size.width = v34;
        v144.size.height = v35;
        if (v36 < CGRectGetMinY(v144))
        {
          v27 = 1;
        }

        else
        {
          v145.origin.x = rect.origin.x;
          *&v145.origin.y = v31;
          v145.size.height = v30;
          v37 = CGRectGetMinY(v145);
          v146.origin.x = v32;
          v146.origin.y = v33;
          v146.size.width = v34;
          v146.size.height = v35;
          if (v37 == CGRectGetMinY(v146))
          {
            v147.origin.x = rect.origin.x;
            *&v147.origin.y = v31;
            v147.size.height = v30;
            v38 = CGRectGetMinX(v147);
            v148.origin.x = v32;
            v148.origin.y = v33;
            v148.size.width = v34;
            v148.size.height = v35;
            v27 = v38 < CGRectGetMinX(v148);
          }

          else
          {
            v27 = 0;
          }
        }

        sub_24E601704(&rect.size, &qword_27F21F450);
        result = sub_24E601704(&v131, &qword_27F21F450);
        *&v23 = *&v5 + 1;
        v24 += 72;
        v26 = v28 + 1;
        v25 = v29 + 72;
      }

      while (v123 == v27);
      if (!v123)
      {
        goto LABEL_27;
      }

      v39 = v117;
      if (*&v5 < v117)
      {
        goto LABEL_129;
      }

      if (v117 < *&v5)
      {
        do
        {
          if (v39 != v28)
          {
            v41 = *a3;
            if (!*a3)
            {
              goto LABEL_135;
            }

            v42 = *&v41 + v29;
            v132 = *(*&v41 + v6 + 16);
            v133 = *(*&v41 + v6 + 32);
            v134 = *(*&v41 + v6 + 48);
            v135 = *(*&v41 + v6 + 64);
            v131 = *(*&v41 + v6);
            result = memmove((*&v41 + v6), (*&v41 + v29), 0x48uLL);
            *(v42 + 16) = v132;
            *(v42 + 32) = v133;
            *(v42 + 48) = v134;
            *(v42 + 64) = v135;
            *v42 = v131;
          }

          ++v39;
          v29 -= 72;
          v6 += 72;
        }

        while (v39 < v28--);
LABEL_27:
        v11 = v5;
        v6 = v115;
        v10 = v117;
        goto LABEL_28;
      }

      v11 = v5;
      v6 = v115;
      v10 = v117;
    }

LABEL_28:
    v43 = *(a3 + 1);
    if (*&v11 < v43)
    {
      if (__OFSUB__(*&v11, v10))
      {
        goto LABEL_128;
      }

      if (*&v11 - v10 < a4)
      {
        break;
      }
    }

LABEL_48:
    if (*&v11 < v10)
    {
      goto LABEL_127;
    }

    v125 = *&v11;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v66 = *(v9 + 2);
    v65 = *(v9 + 3);
    v67 = v66 + 1;
    v8 = v125;
    if (v66 >= v65 >> 1)
    {
      result = sub_24E615ED8((v65 > 1), v66 + 1, 1, v9);
      v8 = v125;
      v9 = result;
    }

    *(v9 + 2) = v67;
    v68 = &v9[16 * v66];
    *(v68 + 4) = v10;
    *(v68 + 5) = v8;
    rect.origin.y = *v119;
    if (!*v119)
    {
      goto LABEL_137;
    }

    v69 = v6;
    if (v66)
    {
      while (1)
      {
        v6 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v70 = *(v9 + 4);
          v71 = *(v9 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_68:
          if (v73)
          {
            goto LABEL_116;
          }

          v86 = &v9[16 * v67];
          v88 = *v86;
          v87 = *(v86 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_119;
          }

          v92 = &v9[16 * v6 + 32];
          v94 = *v92;
          v93 = *(v92 + 1);
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_123;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              v6 = v67 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        v96 = &v9[16 * v67];
        v98 = *v96;
        v97 = *(v96 + 1);
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_82:
        if (v91)
        {
          goto LABEL_118;
        }

        v99 = &v9[16 * v6];
        v101 = *(v99 + 4);
        v100 = *(v99 + 5);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_121;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_89:
        v107 = v6 - 1;
        if (v6 - 1 >= v67)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (!*a3)
        {
          goto LABEL_134;
        }

        v108 = *&v9[16 * v107 + 32];
        v5 = *&v9[16 * v6 + 40];
        sub_24E8610D8((*a3 + 72 * v108), (*a3 + 72 * *&v9[16 * v6 + 32]), (*a3 + 72 * *&v5), *&rect.origin.y);
        if (v69)
        {
        }

        if (*&v5 < v108)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24E86164C(v9);
        }

        if (v107 >= *(v9 + 2))
        {
          goto LABEL_113;
        }

        v109 = &v9[16 * v107];
        *(v109 + 4) = v108;
        *(v109 + 5) = v5;
        v136 = v9;
        result = sub_24E8615C0(v6);
        v9 = v136;
        v67 = *(v136 + 2);
        v8 = v125;
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = &v9[16 * v67 + 32];
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_114;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_115;
      }

      v81 = &v9[16 * v67];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_117;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_120;
      }

      if (v85 >= v77)
      {
        v103 = &v9[16 * v6 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_124;
        }

        if (v72 < v106)
        {
          v6 = v67 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_68;
    }

LABEL_3:
    v7 = *(a3 + 1);
    v6 = v69;
    if (v8 >= v7)
    {
      goto LABEL_100;
    }
  }

  *&v44 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_130;
  }

  if (*&v44 >= v43)
  {
    v44 = a3[1];
  }

  if (*&v44 < v10)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (*&v11 == *&v44)
  {
    goto LABEL_48;
  }

  v116 = v6;
  v118 = v10;
  v45 = *a3;
  v46 = *a3 + 72 * *&v11;
  *&v47 = v10 - *&v11;
  v121 = v44;
LABEL_39:
  v124 = v11;
  v5 = v47;
  v48 = v46;
  while (1)
  {
    sub_24E60169C(v48, &v131, &qword_27F21F450);
    v49 = (v48 - 72);
    sub_24E60169C(v48 - 72, &rect.size, &qword_27F21F450);
    v149.origin.x = *(&v133 + 1);
    v51 = v134;
    v50 = v135;
    v52 = v127;
    v53 = v128;
    v54 = v129;
    v55 = v130;
    rect.origin.x = *(&v133 + 1);
    *&v149.origin.y = v134;
    v149.size.height = v135;
    v56 = CGRectGetMinY(v149);
    v150.origin.x = v52;
    v150.origin.y = v53;
    v150.size.width = v54;
    v150.size.height = v55;
    if (v56 >= CGRectGetMinY(v150))
    {
      v151.origin.x = rect.origin.x;
      *&v151.origin.y = v51;
      v151.size.height = v50;
      v57 = CGRectGetMinY(v151);
      v152.origin.x = v52;
      v152.origin.y = v53;
      v152.size.width = v54;
      v152.size.height = v55;
      if (v57 != CGRectGetMinY(v152) || (v153.origin.x = rect.origin.x, *&v153.origin.y = v51, v153.size.height = v50, v58 = CGRectGetMinX(v153), v154.origin.x = v52, v154.origin.y = v53, v154.size.width = v54, v154.size.height = v55, v58 >= CGRectGetMinX(v154)))
      {
        sub_24E601704(&rect.size, &qword_27F21F450);
        sub_24E601704(&v131, &qword_27F21F450);
LABEL_38:
        *&v11 = *&v124 + 1;
        v46 += 72;
        --*&v47;
        if (*&v124 + 1 == *&v121)
        {
          v11 = v121;
          v6 = v116;
          v10 = v118;
          goto LABEL_48;
        }

        goto LABEL_39;
      }
    }

    sub_24E601704(&rect.size, &qword_27F21F450);
    result = sub_24E601704(&v131, &qword_27F21F450);
    if (v45 == 0.0)
    {
      break;
    }

    v132 = *(v48 + 16);
    v133 = *(v48 + 32);
    v134 = *(v48 + 48);
    v135 = *(v48 + 64);
    v131 = *v48;
    v59 = *(v48 - 24);
    *(v48 + 32) = *(v48 - 40);
    *(v48 + 48) = v59;
    *(v48 + 64) = *(v48 - 8);
    v60 = *(v48 - 56);
    *v48 = *v49;
    *(v48 + 16) = v60;
    *v49 = v131;
    v61 = v132;
    v62 = v133;
    v63 = v134;
    *(v48 - 8) = v135;
    *(v48 - 40) = v62;
    *(v48 - 24) = v63;
    *(v48 - 56) = v61;
    v48 -= 72;
    if (__CFADD__((*&v5)++, 1))
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
  return result;
}

uint64_t sub_24E8610D8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 72;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 72;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[72 * v11] <= a4)
    {
      memmove(a4, __src, 72 * v11);
    }

    v12 = &v4[72 * v11];
    if (v10 < 72 || v6 <= v7)
    {
      v25 = v6;
    }

    else
    {
      do
      {
        v25 = v6 - 72;
        v26 = v12 - 72;
        v5 -= 72;
        while (1)
        {
          sub_24E60169C(v26, v47, &qword_27F21F450);
          sub_24E60169C((v6 - 72), &rect.origin.y, &qword_27F21F450);
          y = v48.origin.y;
          width = v48.size.width;
          height = v48.size.height;
          v32 = v43;
          v33 = v44;
          v34 = v45;
          v35 = v46;
          rect.origin.x = v48.origin.x;
          MinY = CGRectGetMinY(v48);
          v49 = v32;
          v55.origin.x = v32;
          v55.origin.y = v33;
          v55.size.width = v34;
          v55.size.height = v35;
          v39 = 1;
          if (MinY >= CGRectGetMinY(v55))
          {
            v56.origin.x = rect.origin.x;
            v56.origin.y = y;
            v56.size.width = width;
            v56.size.height = height;
            v37 = CGRectGetMinY(v56);
            v57.origin.x = v49;
            v57.origin.y = v33;
            v57.size.width = v34;
            v57.size.height = v35;
            if (v37 != CGRectGetMinY(v57) || (v58.origin.x = rect.origin.x, v58.origin.y = y, v58.size.width = width, v58.size.height = height, MinX = CGRectGetMinX(v58), v59.origin.x = v49, v59.origin.y = v33, v59.size.width = v34, v59.size.height = v35, MinX >= CGRectGetMinX(v59)))
            {
              v39 = 0;
            }
          }

          sub_24E601704(&rect.origin.y, &qword_27F21F450);
          sub_24E601704(v47, &qword_27F21F450);
          if (v39)
          {
            break;
          }

          if (v5 + 72 != v26 + 72)
          {
            memmove(v5, v26, 0x48uLL);
          }

          v27 = v26 - 72;
          v5 -= 72;
          v28 = v26 > v4;
          v26 -= 72;
          if (!v28)
          {
            v12 = v27 + 72;
            v25 = v6;
            goto LABEL_42;
          }
        }

        if (v5 + 72 != v6)
        {
          memmove(v5, v6 - 72, 0x48uLL);
        }

        v12 = v26 + 72;
        if (v26 + 72 <= v4)
        {
          break;
        }

        v6 -= 72;
      }

      while (v25 > v7);
      v12 = v26 + 72;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[72 * v9] <= a4)
    {
      memmove(a4, __dst, 72 * v9);
    }

    v12 = &v4[72 * v9];
    if (v8 >= 72 && v6 < v5)
    {
      while (1)
      {
        sub_24E60169C(v6, v47, &qword_27F21F450);
        sub_24E60169C(v4, &rect.origin.y, &qword_27F21F450);
        v13 = v48.origin.y;
        v14 = v48.size.width;
        v15 = v48.size.height;
        v16 = v43;
        v17 = v44;
        v18 = v45;
        v19 = v46;
        rect.origin.x = v48.origin.x;
        v20 = CGRectGetMinY(v48);
        v49 = v16;
        v50.origin.x = v16;
        v50.origin.y = v17;
        v50.size.width = v18;
        v50.size.height = v19;
        if (v20 < CGRectGetMinY(v50))
        {
          break;
        }

        v51.origin.x = rect.origin.x;
        v51.origin.y = v13;
        v51.size.width = v14;
        v51.size.height = v15;
        v21 = CGRectGetMinY(v51);
        v52.origin.x = v49;
        v52.origin.y = v17;
        v52.size.width = v18;
        v52.size.height = v19;
        if (v21 == CGRectGetMinY(v52))
        {
          v53.origin.x = rect.origin.x;
          v53.origin.y = v13;
          v53.size.width = v14;
          v53.size.height = v15;
          v22 = CGRectGetMinX(v53);
          v54.origin.x = v49;
          v54.origin.y = v17;
          v54.size.width = v18;
          v54.size.height = v19;
          if (v22 < CGRectGetMinX(v54))
          {
            break;
          }
        }

        sub_24E601704(&rect.origin.y, &qword_27F21F450);
        sub_24E601704(v47, &qword_27F21F450);
        v23 = v4;
        v24 = v7 == v4;
        v4 += 72;
        if (!v24)
        {
          goto LABEL_11;
        }

LABEL_12:
        v7 += 72;
        if (v4 >= v12 || v6 >= v5)
        {
          v25 = v7;
          goto LABEL_42;
        }
      }

      sub_24E601704(&rect.origin.y, &qword_27F21F450);
      sub_24E601704(v47, &qword_27F21F450);
      v23 = v6;
      v24 = v7 == v6;
      v6 += 72;
      if (v24)
      {
        goto LABEL_12;
      }

LABEL_11:
      memmove(v7, v23, 0x48uLL);
      goto LABEL_12;
    }

    v25 = v7;
  }

LABEL_42:
  v40 = (v12 - v4) / 72;
  if (v25 != v4 || v25 >= &v4[72 * v40])
  {
    memmove(v25, v4, 72 * v40);
  }

  return 1;
}

uint64_t sub_24E8615C0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24E86164C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_24E861660(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2137F0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_24E861908()
{
  if (qword_27F211468 != -1)
  {
    swift_once();
  }

  v0 = sub_24F9220D8();
  __swift_project_value_buffer(v0, qword_27F39E988);
  oslog = sub_24F9220B8();
  v1 = sub_24F92BDB8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_24E5DD000, oslog, v1, "GSKVideoPlaybackCoordinator: Playback aborted", v2, 2u);
    MEMORY[0x2530542D0](v2, -1, -1);
  }
}

uint64_t sub_24E8619F0()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24E861A28()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E861A9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24E8825CC(a1, v4, v5, v6);
}

uint64_t sub_24E861B58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E861BC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24E859F60(a1, v4, v5, v6);
}

uint64_t sub_24E861C8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E861CD4(uint64_t a1)
{
  v2 = type metadata accessor for VideoConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E861D30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E861D98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoConfiguration();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E861DFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_24E861E74()
{
  v1 = *(v0 + 8);
  v2 = [objc_allocWithZone(type metadata accessor for GSKMirroredVideoPlayerBaseView()) init];
  [*&v2[OBJC_IVAR____TtC12GameStoreKit30GSKMirroredVideoPlayerBaseView_videoLayer] setPlayer_];
  return v2;
}

uint64_t sub_24E861F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E862310();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24E861F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E862310();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24E861FD0()
{
  sub_24E862310();
  sub_24F924DC8();
  __break(1u);
}

char *sub_24E861FF8()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC12GameStoreKit30GSKMirroredVideoPlayerBaseView_videoLayer;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277CE65D8]) init];
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = OBJC_IVAR____TtC12GameStoreKit30GSKMirroredVideoPlayerBaseView_videoLayer;
  v5 = *&v3[OBJC_IVAR____TtC12GameStoreKit30GSKMirroredVideoPlayerBaseView_videoLayer];
  v6 = v3;
  [v5 setAnchorPoint_];
  [*&v3[v4] setMasksToBounds_];
  [*&v3[v4] setContentsGravity_];
  [*&v3[v4] setVideoGravity_];
  v7 = [objc_opt_self() blackColor];
  [v6 setBackgroundColor_];

  v8 = [v6 layer];
  [v8 addSublayer_];

  return v6;
}

unint64_t sub_24E862310()
{
  result = qword_27F21F4F8;
  if (!qword_27F21F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F4F8);
  }

  return result;
}

uint64_t ContentMode.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F92D118();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_24F92CEC8();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

void ContentMode.jsRepresentation(in:)(char a1@<W1>, uint64_t *a2@<X8>)
{
  v2 = 7629158;
  if (a1)
  {
    v2 = 1819044198;
  }

  v3 = 0xE300000000000000;
  v4 = MEMORY[0x277D22580];
  a2[3] = MEMORY[0x277D837D0];
  a2[4] = v4;
  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24E862488@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24E8625C4(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_24E8624B8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F92D118();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_24F92CEC8();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

void sub_24E862580(uint64_t *a1@<X8>)
{
  v2 = *v1 == 0;
  v3 = 7629158;
  if (*v1)
  {
    v3 = 1819044198;
  }

  v4 = 0xE300000000000000;
  v5 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v5;
  if (!v2)
  {
    v4 = 0xE400000000000000;
  }

  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_24E8625C4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F92D0D8();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v3 = sub_24F92CEB8();
  v6 = v3;
  v7 = v4;
  v8 = v3 == 7629158 && v4 == 0xE300000000000000;
  if (v8 || (sub_24F92CE08() & 1) != 0)
  {

    v9 = 0;
  }

  else if (v6 == 1819044198 && v7 == 0xE400000000000000)
  {

    v9 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9 & 1;
}

uint64_t sub_24E86273C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E8627FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RefreshAppStateUpdateRegistryAction()
{
  result = qword_27F21F500;
  if (!qword_27F21F500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E8628EC()
{
  result = sub_24F928AD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E862974@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_24F928AD8();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F510);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v22 - v7;
  refreshed = type metadata accessor for RefreshAppStateUpdateRegistryAction();
  MEMORY[0x28223BE20](refreshed);
  v11 = (v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E862EBC();
  v27 = v8;
  v12 = v28;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v14 = v25;
  v15 = v26;
  v28 = v3;
  v33 = 0;
  v16 = v11;
  *v11 = sub_24F92CC28();
  v11[1] = v17;
  v22[1] = v17;
  v32 = 1;
  v11[2] = sub_24F92CC28();
  v11[3] = v18;
  v31 = 2;
  v22[0] = 0;
  v11[4] = sub_24F92CC58();
  v30 = 3;
  v11[5] = sub_24F92CC28();
  v11[6] = v19;
  v29 = 4;
  sub_24E862F10();
  v20 = v28;
  sub_24F92CC68();
  (*(v14 + 8))(v27, v15);
  (*(v23 + 32))(v16 + *(refreshed + 32), v5, v20);
  sub_24E862F68(v16, v24);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_24E862FCC(v16);
}

unint64_t sub_24E862D50()
{
  v1 = *v0;
  v2 = 0x44496D616461;
  v3 = 0xD000000000000011;
  v4 = 0x7542657461647075;
  if (v1 != 3)
  {
    v4 = 0x654D6E6F69746361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449656C646E7562;
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

uint64_t sub_24E862E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E863140(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E862E2C(uint64_t a1)
{
  v2 = sub_24E862EBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E862E68(uint64_t a1)
{
  v2 = sub_24E862EBC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E862EBC()
{
  result = qword_27F21F518;
  if (!qword_27F21F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F518);
  }

  return result;
}

unint64_t sub_24E862F10()
{
  result = qword_27F254CB0;
  if (!qword_27F254CB0)
  {
    sub_24F928AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F254CB0);
  }

  return result;
}

uint64_t sub_24E862F68(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for RefreshAppStateUpdateRegistryAction();
  (*(*(refreshed - 8) + 16))(a2, a1, refreshed);
  return a2;
}

uint64_t sub_24E862FCC(uint64_t a1)
{
  refreshed = type metadata accessor for RefreshAppStateUpdateRegistryAction();
  (*(*(refreshed - 8) + 8))(a1, refreshed);
  return a1;
}

unint64_t sub_24E86303C()
{
  result = qword_27F21F520;
  if (!qword_27F21F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F520);
  }

  return result;
}

unint64_t sub_24E863094()
{
  result = qword_27F21F528;
  if (!qword_27F21F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F528);
  }

  return result;
}

unint64_t sub_24E8630EC()
{
  result = qword_27F21F530;
  if (!qword_27F21F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F530);
  }

  return result;
}

uint64_t sub_24E863140(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA48610 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7542657461647075 && a2 == 0xEF736D6172615079 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

double sub_24E863304()
{
  swift_getKeyPath();
  sub_24E86A52C(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  return *(v0 + 16);
}

uint64_t sub_24E8633D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v26 - v2;
  v4 = type metadata accessor for GSKVideo();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for MixedMediaItem.ContentType();
  v27 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v16 = v0 + *(type metadata accessor for DebugErrorCard() + 36);
  v17 = type metadata accessor for CommonCardAttributes(0);
  v18 = (v16 + *(v17 + 36));
  if (*v18 && (v19 = v18[1], *(v19 + 16)) && (v20 = sub_24E76DCB8(0), (v21 & 1) != 0))
  {
    sub_24E86A794(*(v19 + 56) + *(v27 + 72) * v20, v15, type metadata accessor for MixedMediaItem.ContentType);
    sub_24E86A630(v15, v12, type metadata accessor for MixedMediaItem.ContentType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = v26;
      sub_24E86A630(v12, v26, type metadata accessor for GSKVideo);
      v23 = *(v22 + *(v4 + 44));

      v24 = v22;
LABEL_10:
      sub_24E86A574(v24, type metadata accessor for GSKVideo);
      return v23;
    }

    sub_24E86A574(v12, type metadata accessor for MixedMediaItem.ContentType);
  }

  else
  {
    sub_24E60169C(v16 + *(v17 + 32), v3, &qword_27F213FB8);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      sub_24E86A630(v3, v9, type metadata accessor for GSKVideo);
      v23 = *&v9[*(v4 + 44)];

      v24 = v9;
      goto LABEL_10;
    }

    sub_24E601704(v3, &qword_27F213FB8);
  }

  return 0;
}

uint64_t sub_24E863770(uint64_t (*a1)(void, __n128))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for GSKVideo();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v29 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for MixedMediaItem.ContentType();
  v30 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v29 - v17;
  v19 = v1 + *(a1(0, v16) + 32);
  v20 = type metadata accessor for CommonCardAttributes(0);
  v21 = (v19 + *(v20 + 36));
  if (*v21 && (v22 = v21[1], *(v22 + 16)) && (v23 = sub_24E76DCB8(0), (v24 & 1) != 0))
  {
    sub_24E86A794(*(v22 + 56) + *(v30 + 72) * v23, v18, type metadata accessor for MixedMediaItem.ContentType);
    sub_24E86A630(v18, v14, type metadata accessor for MixedMediaItem.ContentType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = v29;
      sub_24E86A630(v14, v29, type metadata accessor for GSKVideo);
      v26 = *(v25 + *(v6 + 44));

      v27 = v25;
LABEL_10:
      sub_24E86A574(v27, type metadata accessor for GSKVideo);
      return v26;
    }

    sub_24E86A574(v14, type metadata accessor for MixedMediaItem.ContentType);
  }

  else
  {
    sub_24E60169C(v19 + *(v20 + 32), v5, &qword_27F213FB8);
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      sub_24E86A630(v5, v11, type metadata accessor for GSKVideo);
      v26 = *&v11[*(v6 + 44)];

      v27 = v11;
      goto LABEL_10;
    }

    sub_24E601704(v5, &qword_27F213FB8);
  }

  return 0;
}

uint64_t sub_24E863B40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = type metadata accessor for CommonCardAttributes.CardBackgroundColor(0);
  MEMORY[0x28223BE20](v22);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F650);
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F658);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E86A7FC();
  v11 = v30;
  sub_24F92D108();
  if (v11)
  {
    goto LABEL_10;
  }

  v30 = a1;
  v13 = v23;
  v12 = v24;
  v14 = sub_24F92CC78();
  v15 = (2 * *(v14 + 16)) | 1;
  v26 = v14;
  v27 = v14 + 32;
  v28 = 0;
  v29 = v15;
  v16 = v10;
  if ((sub_24E643448() & 1) != 0 || v28 != v29 >> 1)
  {
    v18 = sub_24F92C918();
    swift_allocError();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v20 = v22;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84160], v18);
    swift_willThrow();
    (*(v25 + 8))(v16, v8);
    swift_unknownObjectRelease();
    a1 = v30;
LABEL_10:
    v17 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  sub_24E86A850();
  sub_24F92CBA8();
  type metadata accessor for JSColor();
  sub_24E86A52C(&qword_27F21C758, type metadata accessor for JSColor);
  v22 = v10;
  sub_24F92CC68();
  (*(v13 + 8))(v7, v5);
  (*(v25 + 8))(v22, v8);
  swift_unknownObjectRelease();
  sub_24E86A630(v4, v12, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
  v17 = v30;
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_24E863F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x800000024FA48750 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24F92CE08();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24E864004(uint64_t a1)
{
  v2 = sub_24E86A7FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E864040(uint64_t a1)
{
  v2 = sub_24E86A7FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E864090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
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

uint64_t sub_24E864114(uint64_t a1)
{
  v2 = sub_24E86A850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E864150(uint64_t a1)
{
  v2 = sub_24E86A850();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E8641A4(char a1)
{
  result = 0x79726F6765746163;
  switch(a1)
  {
    case 1:
    case 2:
      return result;
    case 3:
    case 15:
      result = 0x417972616D697270;
      break;
    case 4:
      result = 0x567972616D697270;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x65487265746F6F66;
      break;
    case 8:
      result = 0x48746361706D6F63;
      break;
    case 9:
      result = 0x54746361706D6F63;
      break;
    case 10:
      result = 0x69547265746F6F66;
      break;
    case 11:
      result = 0x75537265746F6F66;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    case 14:
      result = 0x6D617473656D6974;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x436C616974726170;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_24E864430@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a1;
  v82 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B270);
  MEMORY[0x28223BE20](v2 - 8);
  v81 = &v76 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F550);
  MEMORY[0x28223BE20](v4 - 8);
  v85 = &v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v6 - 8);
  v97 = &v76 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v8 - 8);
  v93 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v99 = &v76 - v11;
  MEMORY[0x28223BE20](v12);
  v100 = &v76 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F620);
  v102 = *(v14 - 8);
  v103 = v14;
  MEMORY[0x28223BE20](v14);
  v106 = &v76 - v15;
  v16 = type metadata accessor for CommonCardAttributes(0);
  v17 = (v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v19 = 6;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  v20 = v17[8];
  v21 = sub_24F9289E8();
  v22 = *(*(v21 - 8) + 56);
  v98 = v20;
  v22(&v19[v20], 1, 1, v21);
  v95 = v17[9];
  v22(&v19[v95], 1, 1, v21);
  v23 = v17[10];
  v24 = type metadata accessor for GSKVideo();
  v25 = *(*(v24 - 8) + 56);
  v94 = v23;
  v96 = v24;
  v25(&v19[v23], 1, 1);
  v26 = &v19[v17[11]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v92 = v26;
  v91 = v17[12];
  v101 = v21;
  v22(&v19[v91], 1, 1, v21);
  v27 = &v19[v17[13]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v90 = v27;
  v28 = &v19[v17[14]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v89 = v28;
  v29 = &v19[v17[15]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v88 = v29;
  v30 = &v19[v17[16]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v87 = v30;
  v31 = &v19[v17[17]];
  *v31 = 0;
  *(v31 + 1) = 0;
  v86 = v31;
  v32 = &v19[v17[18]];
  *v32 = 0;
  *(v32 + 1) = 0;
  v84 = v32;
  v33 = v17[19];
  v34 = type metadata accessor for CommonCardAttributes.CardBackgroundColor(0);
  v35 = *(*(v34 - 8) + 56);
  v83 = v33;
  v35(&v19[v33], 1, 1, v34);
  v36 = &v19[v17[20]];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = &v19[v17[21]];
  v109 = 0;
  memset(v108, 0, sizeof(v108));
  *v37 = 0u;
  *(v37 + 16) = 0u;
  *(v37 + 32) = 0;
  sub_24E61DA68(v108, v37, qword_27F21B590);
  v38 = v17[22];
  v39 = type metadata accessor for CardPrimaryActionType();
  (*(*(v39 - 8) + 56))(&v19[v38], 1, 1, v39);
  v40 = v17[23];
  v105 = v19;
  v19[v40] = 2;
  __swift_project_boxed_opaque_existential_1(v107, v107[3]);
  sub_24E86A698();
  v41 = v104;
  sub_24F92D108();
  if (v41)
  {
    v72 = v105;
  }

  else
  {
    v104 = v36;
    v80 = v37;
    v79 = v39;
    v78 = v38;
    v77 = v40;
    v42 = v102;
    v110 = 0;
    sub_24E86A6EC();
    sub_24F92CC18();
    v44 = v105;
    *v105 = v108[0];
    LOBYTE(v108[0]) = 1;
    *(v44 + 1) = sub_24F92CBC8();
    *(v44 + 2) = v45;
    LOBYTE(v108[0]) = 2;
    v46 = sub_24E86A52C(&qword_27F214018, MEMORY[0x277D21C48]);
    v47 = v100;
    sub_24F92CC18();
    sub_24E61DA68(v47, &v44[v98], &qword_27F213FB0);
    LOBYTE(v108[0]) = 3;
    v48 = v99;
    sub_24F92CC18();
    v100 = v46;
    sub_24E61DA68(v48, &v44[v95], &qword_27F213FB0);
    LOBYTE(v108[0]) = 4;
    sub_24E86A52C(&qword_27F214020, type metadata accessor for GSKVideo);
    v49 = v97;
    sub_24F92CC18();
    sub_24E61DA68(v49, &v44[v94], &qword_27F213FB8);
    v110 = 5;
    sub_24E86A740();
    sub_24F92CC18();
    v50 = v93;
    *v92 = v108[0];
    LOBYTE(v108[0]) = 6;
    sub_24F92CC18();
    sub_24E61DA68(v50, &v44[v91], &qword_27F213FB0);
    LOBYTE(v108[0]) = 7;
    v51 = sub_24F92CBC8();
    v52 = v90;
    *v90 = v51;
    v52[1] = v53;
    LOBYTE(v108[0]) = 8;
    v54 = sub_24F92CBC8();
    v55 = v89;
    *v89 = v54;
    v55[1] = v56;
    LOBYTE(v108[0]) = 9;
    v57 = sub_24F92CBC8();
    v58 = v88;
    *v88 = v57;
    v58[1] = v59;
    LOBYTE(v108[0]) = 10;
    v60 = sub_24F92CBC8();
    v61 = v87;
    *v87 = v60;
    v61[1] = v62;
    LOBYTE(v108[0]) = 11;
    v63 = sub_24F92CBC8();
    v64 = v86;
    *v86 = v63;
    v64[1] = v65;
    LOBYTE(v108[0]) = 12;
    v66 = sub_24F92CBC8();
    v67 = v84;
    *v84 = v66;
    v67[1] = v68;
    LOBYTE(v108[0]) = 13;
    sub_24E86A52C(&qword_27F21F640, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
    sub_24F92CC18();
    sub_24E61DA68(v85, &v105[v83], &qword_27F21F550);
    LOBYTE(v108[0]) = 14;
    v69 = sub_24F92CBC8();
    v70 = v104;
    *v104 = v69;
    v70[1] = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v110 = 15;
    sub_24E61D970();
    sub_24F92CC68();
    sub_24E61DA68(v108, v80, qword_27F24EC90);
    LOBYTE(v108[0]) = 16;
    sub_24E86A52C(&qword_27F21F648, type metadata accessor for CardPrimaryActionType);
    sub_24F92CC18();
    v72 = v105;
    sub_24E61DA68(v81, &v105[v78], &qword_27F21B270);
    LOBYTE(v108[0]) = 17;
    v73 = v103;
    v74 = v106;
    v75 = sub_24F92CBD8();
    (*(v42 + 8))(v74, v73);
    *(v72 + v77) = v75;
    sub_24E86A794(v72, v82, type metadata accessor for CommonCardAttributes);
  }

  __swift_destroy_boxed_opaque_existential_1(v107);
  return sub_24E86A574(v72, type metadata accessor for CommonCardAttributes);
}

uint64_t sub_24E865018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E86B2D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E865040(uint64_t a1)
{
  v2 = sub_24E86A698();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E86507C(uint64_t a1)
{
  v2 = sub_24E86A698();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E8650D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v82 = a1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F6E0);
  MEMORY[0x28223BE20](v73);
  v67 = (&v67 - v3);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F6E8);
  MEMORY[0x28223BE20](v70);
  v5 = &v67 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F6F0);
  MEMORY[0x28223BE20](v81);
  v74 = &v67 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F6F8);
  MEMORY[0x28223BE20](v69);
  v8 = (&v67 - v7);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F700);
  MEMORY[0x28223BE20](v71);
  v10 = (&v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v68 = &v67 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v72 = &v67 - v17;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F708);
  MEMORY[0x28223BE20](v78);
  v80 = &v67 - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F710);
  MEMORY[0x28223BE20](v75);
  v20 = &v67 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F718);
  MEMORY[0x28223BE20](v21);
  v23 = (&v67 - v22);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F720);
  MEMORY[0x28223BE20](v76);
  v25 = &v67 - v24;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F728);
  MEMORY[0x28223BE20](v79);
  v77 = (&v67 - v26);
  v27 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E86A794(v2, v29, type metadata accessor for CardContentBackgroundStyle);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
  v31 = (*(*(v30 - 8) + 48))(v29, 5, v30);
  if (v31 > 2)
  {
    if (v31 == 3)
    {
      sub_24F926C88();
      v46 = sub_24F926D08();

      v83 = v46;
      v84 = 0u;
      v85 = 0u;
      v86 = 1;
      sub_24E86BC28();

      sub_24F924E28();
      v47 = v89;
      v48 = v90;
      v49 = v88;
      *v20 = v87;
      *(v20 + 1) = v49;
      *(v20 + 4) = v47;
      v20[40] = v48;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F760);
      sub_24E86BA60();
      sub_24E86BB9C();
      v50 = v77;
      sub_24F924E28();
      v33 = &qword_27F21F728;
      sub_24E60169C(v50, v80, &qword_27F21F728);
      swift_storeEnumTagMultiPayload();
      sub_24E86B9D4();
      sub_24E86BC7C();
      sub_24F924E28();

      v39 = v50;
LABEL_14:
      v40 = v33;
      return sub_24E601704(v39, v40);
    }

    if (v31 != 4)
    {
      v57 = sub_24F926C98();
      v32 = v67;
      v58 = v67 + *(v73 + 36);
      sub_24F927438();
      v59 = sub_24F925808();
      v58[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870) + 36)] = v59;
      *v32 = v57;
      v33 = &qword_27F21F6E0;
      sub_24E60169C(v32, v5, &qword_27F21F6E0);
      swift_storeEnumTagMultiPayload();
      sub_24E86B898();
      sub_24E86B91C();
      v60 = v74;
      sub_24F924E28();
      sub_24E60169C(v60, v80, &qword_27F21F6F0);
      swift_storeEnumTagMultiPayload();
      sub_24E86B9D4();
      sub_24E86BC7C();
      sub_24F924E28();
      sub_24E601704(v60, &qword_27F21F6F0);
      goto LABEL_13;
    }

    sub_24F926C88();
    v34 = sub_24F926D08();

    v35 = *(v69 + 36);
    v36 = *MEMORY[0x277CE13B0];
    v37 = sub_24F927748();
    (*(*(v37 - 8) + 104))(v8 + v35, v36, v37);
    *v8 = v34;
    sub_24E60169C(v8, v5, &qword_27F21F6F8);
    swift_storeEnumTagMultiPayload();
    sub_24E86B898();
    sub_24E86B91C();
    v38 = v74;
    sub_24F924E28();
    sub_24E60169C(v38, v80, &qword_27F21F6F0);
    swift_storeEnumTagMultiPayload();
    sub_24E86B9D4();
    sub_24E86BC7C();
    sub_24F924E28();
    sub_24E601704(v38, &qword_27F21F6F0);
    v39 = v8;
    v40 = &qword_27F21F6F8;
  }

  else if (v31)
  {
    if (v31 == 1)
    {
      *v23 = sub_24F926C98();
      swift_storeEnumTagMultiPayload();
      sub_24E86BAEC();

      sub_24F924E28();
      sub_24E60169C(v25, v20, &qword_27F21F720);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F760);
      sub_24E86BA60();
      sub_24E86BB9C();
      v32 = v77;
      sub_24F924E28();
      sub_24E601704(v25, &qword_27F21F720);
      v33 = &qword_27F21F728;
      sub_24E60169C(v32, v80, &qword_27F21F728);
      swift_storeEnumTagMultiPayload();
      sub_24E86B9D4();
      sub_24E86BC7C();
      sub_24F924E28();

LABEL_13:
      v39 = v32;
      goto LABEL_14;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_24F93A400;
    sub_24F926C88();
    v52 = sub_24F926D08();

    *(v51 + 32) = v52;
    *(v51 + 40) = sub_24F926C98();
    sub_24F9278B8();
    sub_24F9278C8();
    MEMORY[0x25304CD70](v51);
    sub_24F923BD8();
    v83 = v91;
    v84 = v92;
    v85 = v93;
    v86 = 0;
    sub_24E86BC28();
    sub_24F924E28();
    v53 = v89;
    v54 = v90;
    v55 = v88;
    *v20 = v87;
    *(v20 + 1) = v55;
    *(v20 + 4) = v53;
    v20[40] = v54;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F760);
    sub_24E86BA60();
    sub_24E86BB9C();
    v56 = v77;
    sub_24F924E28();
    sub_24E60169C(v56, v80, &qword_27F21F728);
    swift_storeEnumTagMultiPayload();
    sub_24E86B9D4();
    sub_24E86BC7C();
    sub_24F924E28();
    v39 = v56;
    v40 = &qword_27F21F728;
  }

  else
  {
    v41 = v29[*(v30 + 48)];
    v42 = v29;
    v43 = v72;
    sub_24E6009C8(v42, v72, &qword_27F2190D8);
    sub_24E60169C(v43, v15, &qword_27F2190D8);
    v44 = type metadata accessor for ColorGroup();
    if ((*(*(v44 - 8) + 48))(v15, 1, v44) == 1)
    {
      sub_24E601704(v15, &qword_27F2190D8);
      v45 = 1;
    }

    else
    {
      *v10 = sub_24F927618();
      v10[1] = v61;
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219120);
      sub_24F594F18(v41, v15, v10 + *(v62 + 44));
      sub_24E86A574(v15, type metadata accessor for ColorGroup);
      v45 = 0;
    }

    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219070);
    (*(*(v63 - 8) + 56))(v10, v45, 1, v63);
    v64 = v68;
    sub_24E6009C8(v10, v68, &qword_27F21F700);
    sub_24E60169C(v64, v23, &qword_27F21F700);
    swift_storeEnumTagMultiPayload();
    sub_24E86BAEC();
    sub_24F924E28();
    sub_24E60169C(v25, v20, &qword_27F21F720);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F760);
    sub_24E86BA60();
    sub_24E86BB9C();
    v65 = v77;
    sub_24F924E28();
    sub_24E601704(v25, &qword_27F21F720);
    sub_24E60169C(v65, v80, &qword_27F21F728);
    swift_storeEnumTagMultiPayload();
    sub_24E86B9D4();
    sub_24E86BC7C();
    sub_24F924E28();
    sub_24E601704(v65, &qword_27F21F728);
    sub_24E601704(v64, &qword_27F21F700);
    v40 = &qword_27F2190D8;
    v39 = v72;
  }

  return sub_24E601704(v39, v40);
}

double sub_24E8660B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F93A400;
  *(v0 + 32) = sub_24F926C98();
  sub_24F926C88();
  v1 = sub_24F926D08();

  *(v0 + 40) = v1;
  sub_24F9278B8();
  sub_24F9278C8();
  MEMORY[0x25304CD70](v0);
  sub_24F923BD8();
  result = *&v3;
  xmmword_27F39B048 = v3;
  unk_27F39B058 = v4;
  qword_27F39B068 = v5;
  return result;
}

uint64_t sub_24E8661A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v121 = a1;
  v122 = a3;
  v120 = sub_24F925508();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v117 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_24F924218();
  v123 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v115 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v126);
  v118 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v125 = &v89 - v8;
  v10 = a2[2];
  v9 = a2[3];
  v103 = a2;
  v11 = a2[4];
  type metadata accessor for CardExtraLargeView();
  type metadata accessor for CardLargeView();
  sub_24F924E38();
  type metadata accessor for CardPortraitView();
  type metadata accessor for CardCompactView();
  v110 = sub_24F924E38();
  v108 = sub_24F924E38();
  v109 = type metadata accessor for CardSmallView();
  v127 = v10;
  v93 = v9;
  v112 = type metadata accessor for CardHeroView();
  v114 = sub_24F924E38();
  v12 = sub_24F924E38();
  v13 = sub_24F926DC8();
  v95 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v92 = &v89 - v14;
  v15 = sub_24F924038();
  v105 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v101 = &v89 - v16;
  v111 = sub_24F924038();
  v17 = sub_24F924E38();
  v113 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v124 = &v89 - v18;
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v148 = WitnessTable;
  v149 = v20;
  v21 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v146 = v22;
  v147 = v23;
  v24 = swift_getWitnessTable();
  v144 = v21;
  v145 = v24;
  v25 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v142 = v26;
  v143 = v27;
  v28 = swift_getWitnessTable();
  v140 = v25;
  v141 = v28;
  v94 = v12;
  v139 = swift_getWitnessTable();
  v96 = v13;
  v90 = swift_getWitnessTable();
  v137 = v90;
  v138 = MEMORY[0x277CE0688];
  v106 = v15;
  v29 = swift_getWitnessTable();
  v30 = sub_24E73A224();
  v135 = v29;
  v136 = v30;
  v133 = swift_getWitnessTable();
  v134 = v29;
  v91 = v29;
  v31 = swift_getWitnessTable();
  v130 = v17;
  v131 = v31;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v100 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v34 = &v89 - v33;
  v114 = v17;
  v130 = v17;
  v98 = v31;
  v131 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v111 = OpaqueTypeMetadata2;
  v130 = OpaqueTypeMetadata2;
  v99 = OpaqueTypeConformance2;
  v131 = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeMetadata2();
  v107 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v104 = &v89 - v37;
  sub_24F925658();
  v109 = v36;
  v102 = sub_24F924038();
  v112 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v108 = &v89 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v110 = &v89 - v40;
  v41 = sub_24F924848();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v89 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *v97;
  v46 = v97;
  if (*(v97 + 8) != 1)
  {

    sub_24F92BDC8();
    v47 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v45, 0);
    (*(v42 + 8))(v44, v41);
    v45 = v130;
  }

  v48 = v121;
  v49 = v93;
  v50 = (*(v11 + 48))(v121, v45, v93, v11);
  v51 = v50;
  MEMORY[0x28223BE20](v50);
  *(&v89 - 6) = v127;
  *(&v89 - 5) = v49;
  *(&v89 - 4) = v11;
  *(&v89 - 24) = v52;
  *(&v89 - 2) = v46;
  *(&v89 - 1) = v48;
  v53 = v92;
  sub_24F926DB8();
  v54 = v101;
  v55 = v96;
  sub_24F926488();
  (*(v95 + 8))(v53, v55);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24F928D78();
  v57 = v132;
  sub_24E601704(&v130, qword_27F21B590);
  if (v57)
  {
    v58 = 0;
  }

  else if (v51 > 4u)
  {

    v58 = 0;
  }

  else
  {
    v59 = sub_24F92CE08();

    v58 = v59 ^ 1;
  }

  v60 = v106;
  sub_24E739E38(v58 & 1, v106, v91, v124);
  (*(v105 + 8))(v54, v60);
  v61 = v125;
  v106 = *(AssociatedConformanceWitness + 24);
  v106(v127, AssociatedConformanceWitness);
  v62 = *(v61 + *(v126 + 84));
  if (v62 == 2 || (v62 & 1) == 0)
  {
    v130 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE58);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_24F93DE60;
    sub_24F924208();
    v130 = v63;
  }

  sub_24E86A52C(&qword_27F216C88, MEMORY[0x277CDFB98]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40);
  sub_24E602068(&qword_27F21AE48, &qword_27F21AE40);
  v64 = v115;
  v65 = v116;
  sub_24F92C6A8();
  sub_24E86A574(v125, type metadata accessor for CommonCardAttributes);
  v66 = v34;
  v67 = v114;
  v68 = v124;
  sub_24F926AE8();
  (*(v123 + 8))(v64, v65);
  (*(v113 + 8))(v68, v67);
  v69 = v117;
  sub_24F9254E8();
  v70 = v104;
  v71 = v111;
  v72 = v99;
  sub_24F926678();
  (*(v119 + 8))(v69, v120);
  (*(v100 + 8))(v66, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_24F93DE60;
  v74 = v118;
  v106(v127, AssociatedConformanceWitness);
  v75 = (v74 + *(v126 + 56));
  v77 = *v75;
  v76 = v75[1];

  sub_24E86A574(v74, type metadata accessor for CommonCardAttributes);
  if (v76)
  {
    v78 = v77;
  }

  else
  {
    v78 = 0;
  }

  v79 = 0xE000000000000000;
  if (v76)
  {
    v79 = v76;
  }

  *(v73 + 32) = v78;
  *(v73 + 40) = v79;
  v130 = v71;
  v131 = v72;
  v80 = swift_getOpaqueTypeConformance2();
  sub_24E600AEC();
  v81 = v108;
  v82 = v109;
  sub_24F9267A8();

  (*(v107 + 8))(v70, v82);
  v83 = sub_24E86A52C(&qword_27F2141E0, MEMORY[0x277CDE470]);
  v128 = v80;
  v129 = v83;
  v84 = v102;
  v85 = swift_getWitnessTable();
  v86 = v110;
  sub_24E7896B8(v81, v84, v85);
  v87 = *(v112 + 8);
  v87(v81, v84);
  sub_24E7896B8(v86, v84, v85);
  return (v87)(v86, v84);
}

uint64_t sub_24E867300@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v213 = a2;
  v214 = a3;
  LODWORD(v215) = a1;
  v218 = a7;
  v10 = type metadata accessor for CardHeroView();
  v204 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v184 = &v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v198 = &v181 - v13;
  v14 = type metadata accessor for CardSmallView();
  v225 = v10;
  v226 = sub_24F924E38();
  v199 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v205 = &v181 - v15;
  v224 = v14;
  v183 = *(v14 - 8);
  MEMORY[0x28223BE20](v16);
  v182 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v195 = &v181 - v19;
  v20 = type metadata accessor for CardCompactView();
  v203 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v194 = &v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v193 = &v181 - v23;
  v24 = type metadata accessor for CardPortraitView();
  v227 = v20;
  v25 = sub_24F924E38();
  v197 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v196 = &v181 - v26;
  v221 = v24;
  v202 = *(v24 - 8);
  MEMORY[0x28223BE20](v27);
  v192 = &v181 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v191 = &v181 - v30;
  v31 = type metadata accessor for CardLargeView();
  v201 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v188 = &v181 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v187 = &v181 - v34;
  v35 = type metadata accessor for CardExtraLargeView();
  v222 = v31;
  v36 = sub_24F924E38();
  v190 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v189 = &v181 - v37;
  v220 = v38;
  v223 = v25;
  v39 = sub_24F924E38();
  v207 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v206 = &v181 - v40;
  v41 = sub_24F923E98();
  MEMORY[0x28223BE20](v41 - 8);
  v212 = &v181 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a4 - 8);
  MEMORY[0x28223BE20](v44);
  v46 = &v181 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(a5 - 8);
  MEMORY[0x28223BE20](v48);
  v50 = &v181 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = v35;
  v200 = *(v35 - 8);
  MEMORY[0x28223BE20](v51);
  v186 = &v181 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v185 = &v181 - v54;
  v211 = v39;
  v55 = sub_24F924E38();
  v216 = *(v55 - 8);
  v217 = v55;
  MEMORY[0x28223BE20](v55);
  v57 = &v181 - v56;
  v210 = a6;
  v58 = type metadata accessor for CardComponent();
  v59 = *(v47 + 16);
  v60 = v213 + *(v58 + 48);
  v209 = a5;
  v59(v50, v60, a5);
  v61 = v212;
  (*(v43 + 16))(v46, v214, a4);
  sub_24F769788(v61);
  if (v215 > 2u)
  {
    v208 = v57;
    if (v215 == 3)
    {
      v115 = v188;
      sub_24E8CA4E8(v50, v46, v61, a4, v209, v188);
      v116 = v222;
      WitnessTable = swift_getWitnessTable();
      v118 = v187;
      sub_24E7896B8(v115, v116, WitnessTable);
      v119 = *(v201 + 8);
      v201 += 8;
      v215 = v119;
      v119(v115, v116);
      sub_24E7896B8(v118, v116, WitnessTable);
      v120 = v219;
      v121 = swift_getWitnessTable();
      v122 = v189;
      sub_24ECCCC98(v115, v120, v116);
      v242 = v121;
      v243 = WitnessTable;
      v123 = v220;
      v124 = swift_getWitnessTable();
      v125 = swift_getWitnessTable();
      v126 = swift_getWitnessTable();
      v240 = v125;
      v241 = v126;
      v127 = swift_getWitnessTable();
      v128 = v206;
      sub_24ECCCBA0(v122, v123);
      (*(v190 + 8))(v122, v123);
      v238 = v124;
      v239 = v127;
      v129 = v211;
      swift_getWitnessTable();
      v130 = swift_getWitnessTable();
      v131 = swift_getWitnessTable();
      v236 = v130;
      v237 = v131;
      swift_getWitnessTable();
      v132 = v208;
      sub_24ECCCBA0(v128, v129);
      (*(v207 + 8))(v128, v129);
      v133 = v215;
      v215(v188, v116);
      v133(v187, v116);
      v80 = v132;
    }

    else if (v215 == 4)
    {
      v83 = v186;
      sub_24F3A6384(v50, v46, v61, a4, v209, v186);
      v84 = v219;
      v85 = swift_getWitnessTable();
      v86 = v185;
      sub_24E7896B8(v83, v84, v85);
      v87 = *(v200 + 8);
      v200 += 8;
      v215 = v87;
      v87(v83, v84);
      sub_24E7896B8(v86, v84, v85);
      v88 = swift_getWitnessTable();
      v89 = v189;
      sub_24ECCCBA0(v83, v84);
      v234 = v85;
      v235 = v88;
      v90 = v220;
      v91 = swift_getWitnessTable();
      v92 = swift_getWitnessTable();
      v93 = swift_getWitnessTable();
      v232 = v92;
      v233 = v93;
      v94 = swift_getWitnessTable();
      v95 = v206;
      sub_24ECCCBA0(v89, v90);
      (*(v190 + 8))(v89, v90);
      v230 = v91;
      v231 = v94;
      v96 = v211;
      swift_getWitnessTable();
      v97 = swift_getWitnessTable();
      v98 = swift_getWitnessTable();
      v228 = v97;
      v229 = v98;
      swift_getWitnessTable();
      v80 = v208;
      sub_24ECCCBA0(v95, v96);
      (*(v207 + 8))(v95, v96);
      v99 = v215;
      v215(v186, v84);
      v99(v185, v84);
    }

    else
    {
      v151 = v184;
      sub_24F30A6B4(v50, v46, v61, a4, v209, v184);
      v152 = v225;
      v153 = swift_getWitnessTable();
      v154 = v198;
      sub_24E7896B8(v151, v152, v153);
      v155 = *(v204 + 8);
      v204 += 8;
      v215 = v155;
      v155(v151, v152);
      sub_24E7896B8(v154, v152, v153);
      v156 = v224;
      v214 = swift_getWitnessTable();
      sub_24ECCCC98(v151, v156, v152);
      v157 = swift_getWitnessTable();
      v158 = swift_getWitnessTable();
      v284 = v157;
      v285 = v158;
      v159 = swift_getWitnessTable();
      v160 = swift_getWitnessTable();
      v161 = swift_getWitnessTable();
      v282 = v160;
      v283 = v161;
      v162 = swift_getWitnessTable();
      v280 = v159;
      v281 = v162;
      v163 = v211;
      swift_getWitnessTable();
      v278 = v214;
      v279 = v153;
      v164 = v226;
      swift_getWitnessTable();
      v80 = v208;
      v165 = v205;
      sub_24ECCCC98(v205, v163, v164);
      (*(v199 + 8))(v165, v164);
      v166 = v151;
      v167 = v215;
      v215(v166, v152);
      v167(v198, v152);
    }
  }

  else if (v215)
  {
    v208 = v57;
    if (v215 == 1)
    {
      v62 = v194;
      sub_24F640184(v50, v46, v61, a4, v209, v194);
      v63 = v227;
      v64 = swift_getWitnessTable();
      v65 = v193;
      sub_24E7896B8(v62, v63, v64);
      v66 = *(v203 + 8);
      v203 += 8;
      v215 = v66;
      v66(v62, v63);
      sub_24E7896B8(v65, v63, v64);
      v67 = v221;
      v68 = swift_getWitnessTable();
      v69 = v196;
      sub_24ECCCC98(v62, v67, v63);
      v70 = swift_getWitnessTable();
      v71 = swift_getWitnessTable();
      v258 = v70;
      v259 = v71;
      v72 = v220;
      v73 = swift_getWitnessTable();
      v256 = v68;
      v257 = v64;
      v74 = v223;
      v75 = swift_getWitnessTable();
      v76 = v206;
      sub_24ECCCC98(v69, v72, v74);
      (*(v197 + 8))(v69, v74);
      v254 = v73;
      v255 = v75;
      v77 = v211;
      swift_getWitnessTable();
      v78 = swift_getWitnessTable();
      v79 = swift_getWitnessTable();
      v252 = v78;
      v253 = v79;
      swift_getWitnessTable();
      v80 = v208;
      sub_24ECCCBA0(v76, v77);
      (*(v207 + 8))(v76, v77);
      v81 = v227;
      v82 = v215;
      v215(v194, v227);
      v82(v193, v81);
    }

    else
    {
      v134 = v192;
      sub_24F5C6D44(v50, v46, v61, a4, v209, v192);
      v135 = v221;
      v136 = swift_getWitnessTable();
      v137 = v191;
      sub_24E7896B8(v134, v135, v136);
      v215 = *(v202 + 8);
      v202 += 8;
      v215(v134, v135);
      sub_24E7896B8(v137, v135, v136);
      v138 = swift_getWitnessTable();
      v139 = v196;
      sub_24ECCCBA0(v134, v135);
      v140 = swift_getWitnessTable();
      v141 = swift_getWitnessTable();
      v250 = v140;
      v251 = v141;
      v142 = v220;
      v143 = swift_getWitnessTable();
      v248 = v136;
      v249 = v138;
      v144 = v223;
      v145 = swift_getWitnessTable();
      v146 = v206;
      sub_24ECCCC98(v139, v142, v144);
      (*(v197 + 8))(v139, v144);
      v246 = v143;
      v247 = v145;
      v147 = v211;
      swift_getWitnessTable();
      v148 = swift_getWitnessTable();
      v149 = swift_getWitnessTable();
      v244 = v148;
      v245 = v149;
      swift_getWitnessTable();
      v80 = v208;
      sub_24ECCCBA0(v146, v147);
      (*(v207 + 8))(v146, v147);
      v150 = v215;
      v215(v192, v135);
      v150(v191, v135);
    }
  }

  else
  {
    v100 = v182;
    sub_24E6BB8AC(v50, v46, v61, a4, v209, v182);
    v101 = v224;
    v102 = swift_getWitnessTable();
    v103 = v195;
    sub_24E7896B8(v100, v101, v102);
    v215 = *(v183 + 8);
    v215(v100, v101);
    v214 = v102;
    sub_24E7896B8(v103, v101, v102);
    v213 = swift_getWitnessTable();
    sub_24ECCCBA0(v100, v101);
    v80 = v57;
    v104 = swift_getWitnessTable();
    v105 = swift_getWitnessTable();
    v266 = v104;
    v267 = v105;
    v106 = swift_getWitnessTable();
    v107 = swift_getWitnessTable();
    v108 = swift_getWitnessTable();
    v264 = v107;
    v265 = v108;
    v109 = swift_getWitnessTable();
    v262 = v106;
    v263 = v109;
    v110 = v211;
    swift_getWitnessTable();
    v260 = v214;
    v261 = v213;
    v111 = v226;
    swift_getWitnessTable();
    v112 = v205;
    sub_24ECCCC98(v205, v110, v111);
    (*(v199 + 8))(v112, v111);
    v113 = v100;
    v114 = v215;
    v215(v113, v101);
    v114(v195, v101);
  }

  v168 = swift_getWitnessTable();
  v169 = swift_getWitnessTable();
  v276 = v168;
  v277 = v169;
  v170 = swift_getWitnessTable();
  v171 = swift_getWitnessTable();
  v172 = swift_getWitnessTable();
  v274 = v171;
  v275 = v172;
  v173 = swift_getWitnessTable();
  v272 = v170;
  v273 = v173;
  v174 = swift_getWitnessTable();
  v175 = swift_getWitnessTable();
  v176 = swift_getWitnessTable();
  v270 = v175;
  v271 = v176;
  v177 = swift_getWitnessTable();
  v268 = v174;
  v269 = v177;
  v178 = v217;
  v179 = swift_getWitnessTable();
  sub_24E7896B8(v80, v178, v179);
  return (*(v216 + 8))(v80, v178);
}

uint64_t sub_24E868C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_24F924848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *v3;
  if (*(v3 + 8) != 1)
  {

    sub_24F92BDC8();
    v12 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v11, 0);
    (*(v8 + 8))(v10, v7);
    v11 = v16[15];
  }

  if ((*(*(a2 + 32) + 48))(a1, v11, *(a2 + 24)) > 4u)
  {

    v15 = 0;
  }

  else
  {
    v13 = sub_24F92CE08();

    v15 = v13 ^ 1;
  }

  *a3 = v15 & 1;
  return result;
}

uint64_t sub_24E868E7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821E7CE8](a1, WitnessTable);
}

uint64_t sub_24E868EE0(double a1, double a2, double a3, double a4)
{
  result = sub_24F923308();
  if (result)
  {
    v4[2] = a1;
    v4[3] = a2;
    v4[4] = a3;
    v4[5] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E86A52C(&qword_27F214D10, type metadata accessor for CardSafeArea);
    sub_24F91FD78();
  }

  return result;
}

double *sub_24E869028(double *result, double a2, double a3, double a4, double a5)
{
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  return result;
}

uint64_t sub_24E869034()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit12CardSafeArea___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24E8690F8()
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

uint64_t sub_24E8691A8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[6];
LABEL_13:
    v15 = *(v11 + 48);

    return v15(a1 + v12, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[8];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F550);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = a3[17];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B270);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[20];

  return v17(v18, a2, v16);
}

uint64_t sub_24E8693AC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F550);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[17];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B270);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[20];

  return v16(v17, a2, a2, v15);
}

void sub_24E8695B0()
{
  sub_24E86A114(319, &qword_27F21F568, &type metadata for ComponentSize, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24E86A114(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24E869854(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24E869854(319, &qword_27F213FD8, type metadata accessor for GSKVideo, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24E86A114(319, &qword_27F2191D0, &type metadata for MixedMediaItem, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_24E869854(319, &qword_27F21F570, type metadata accessor for CommonCardAttributes.CardBackgroundColor, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_24E61C8D4();
              if (v6 <= 0x3F)
              {
                sub_24E869854(319, &qword_27F21B288, type metadata accessor for CardPrimaryActionType, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_24E86A114(319, &qword_27F2169A0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
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

void sub_24E869854(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24E8698D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F578);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E869950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F578);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_24E8699D8(uint64_t a1)
{
  sub_24E869A90();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for JSColor();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_24E869A90()
{
  if (!qword_27F21F590[0])
  {
    v0 = type metadata accessor for JSColor();
    if (!v1)
    {
      atomic_store(v0, qword_27F21F590);
    }
  }
}

void sub_24E869AD8()
{
  sub_24E86A114(319, &qword_27F21F618, &type metadata for ComponentSize, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24E869854(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E869BCC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_24F923E98() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(*(a3 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v8 + 80);
  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 & 0xF8;
  v14 = v13 | 7;
  v15 = v7 + v11 + 1;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v16 = ((v15 + ((v13 + 16) & ~v14)) & ~v11) + *(v8 + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_31:
      if (v9 > 0xFE)
      {
        v25 = *(v8 + 48);

        return v25((v15 + ((a1 + v14 + 9) & ~v14)) & ~v11);
      }

      else
      {
        v24 = *(a1 + 8);
        if (v24 > 1)
        {
          return (v24 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_31;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v12 + (v23 | v21) + 1;
}

void sub_24E869E18(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_24F923E98() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a4 + 24) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 & 0xF8;
  v16 = v15 | 7;
  v17 = v9 + v13 + 1;
  v18 = ((v17 + ((v15 + 16) & ~(v15 | 7))) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_48:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v18] = 0;
  }

  else if (v19)
  {
    a1[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v11 > 0xFE)
  {
    v25 = *(v10 + 56);

    v25((v17 + (&a1[v16 + 9] & ~v16)) & ~v13, a2);
  }

  else if (a2 > 0xFE)
  {
    a1[8] = 0;
    *a1 = (a2 - 255);
  }

  else
  {
    a1[8] = -a2;
  }
}

void sub_24E86A114(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_24E86A52C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E86A574(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E86A630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E86A698()
{
  result = qword_27F21F628;
  if (!qword_27F21F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F628);
  }

  return result;
}

unint64_t sub_24E86A6EC()
{
  result = qword_27F21F630;
  if (!qword_27F21F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F630);
  }

  return result;
}

unint64_t sub_24E86A740()
{
  result = qword_27F21F638;
  if (!qword_27F21F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F638);
  }

  return result;
}

uint64_t sub_24E86A794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E86A7FC()
{
  result = qword_27F21F660;
  if (!qword_27F21F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F660);
  }

  return result;
}

unint64_t sub_24E86A850()
{
  result = qword_27F21F668;
  if (!qword_27F21F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F668);
  }

  return result;
}

uint64_t sub_24E86A8E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 6)
  {
    return v5 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E86A974(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 5);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24E86AA24()
{
  sub_24E86AA7C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_24E86AA7C()
{
  if (!qword_27F21F680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2190D8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F21F680);
    }
  }
}

uint64_t sub_24E86AB38()
{
  type metadata accessor for CardExtraLargeView();
  type metadata accessor for CardLargeView();
  sub_24F924E38();
  type metadata accessor for CardPortraitView();
  type metadata accessor for CardCompactView();
  sub_24F924E38();
  sub_24F924E38();
  type metadata accessor for CardSmallView();
  type metadata accessor for CardHeroView();
  sub_24F924E38();
  sub_24F924E38();
  sub_24F926DC8();
  sub_24F924038();
  sub_24F924038();
  sub_24F924E38();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E73A224();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24F925658();
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24E86A52C(&qword_27F2141E0, MEMORY[0x277CDE470]);
  return swift_getWitnessTable();
}

unint64_t sub_24E86AF84()
{
  result = qword_27F21F698;
  if (!qword_27F21F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F698);
  }

  return result;
}

unint64_t sub_24E86AFDC()
{
  result = qword_27F21F6A0;
  if (!qword_27F21F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F6A0);
  }

  return result;
}

unint64_t sub_24E86B034()
{
  result = qword_27F21F6A8;
  if (!qword_27F21F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F6A8);
  }

  return result;
}

unint64_t sub_24E86B0A8()
{
  result = qword_27F21F6B0;
  if (!qword_27F21F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F6B0);
  }

  return result;
}

unint64_t sub_24E86B100()
{
  result = qword_27F21F6B8;
  if (!qword_27F21F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F6B8);
  }

  return result;
}

unint64_t sub_24E86B158()
{
  result = qword_27F21F6C0;
  if (!qword_27F21F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F6C0);
  }

  return result;
}

unint64_t sub_24E86B1B0()
{
  result = qword_27F21F6C8;
  if (!qword_27F21F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F6C8);
  }

  return result;
}

unint64_t sub_24E86B208()
{
  result = qword_27F21F6D0;
  if (!qword_27F21F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F6D0);
  }

  return result;
}

unint64_t sub_24E86B260()
{
  result = qword_27F21F6D8;
  if (!qword_27F21F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F6D8);
  }

  return result;
}

__n128 sub_24E86B2BC()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 16) = result;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_24E86B2D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x800000024FA48690 == a2;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xEF6B726F77747241 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x417972616D697270 && a2 == 0xEE006B726F777472 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x567972616D697270 && a2 == 0xEC0000006F656469 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA486B0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA486D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65487265746F6F66 && a2 == 0xED0000676E696461 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x48746361706D6F63 && a2 == 0xEE00676E69646165 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x54746361706D6F63 && a2 == 0xEC000000656C7469 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x69547265746F6F66 && a2 == 0xEB00000000656C74 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x75537265746F6F66 && a2 == 0xEE00656C74697462 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA486F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024FA48710 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_24F92CE08() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x417972616D697270 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA48730 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x436C616974726170 && a2 == 0xEE00746E65746E6FLL)
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

unint64_t sub_24E86B898()
{
  result = qword_27F21F730;
  if (!qword_27F21F730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F730);
  }

  return result;
}

unint64_t sub_24E86B91C()
{
  result = qword_27F21F738;
  if (!qword_27F21F738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F6E0);
    sub_24E602068(&qword_27F2188E0, &qword_27F217870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F738);
  }

  return result;
}

unint64_t sub_24E86B9D4()
{
  result = qword_27F21F740;
  if (!qword_27F21F740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F728);
    sub_24E86BA60();
    sub_24E86BB9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F740);
  }

  return result;
}

unint64_t sub_24E86BA60()
{
  result = qword_27F21F748;
  if (!qword_27F21F748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F720);
    sub_24E86BAEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F748);
  }

  return result;
}

unint64_t sub_24E86BAEC()
{
  result = qword_27F21F750;
  if (!qword_27F21F750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F700);
    sub_24E602068(&qword_27F219118, &qword_27F219070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F750);
  }

  return result;
}

unint64_t sub_24E86BB9C()
{
  result = qword_27F21F758;
  if (!qword_27F21F758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F760);
    sub_24E86BC28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F758);
  }

  return result;
}

unint64_t sub_24E86BC28()
{
  result = qword_27F21F768;
  if (!qword_27F21F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F768);
  }

  return result;
}

unint64_t sub_24E86BC7C()
{
  result = qword_27F21F770;
  if (!qword_27F21F770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F6F0);
    sub_24E86B898();
    sub_24E86B91C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F770);
  }

  return result;
}

unint64_t sub_24E86BD0C()
{
  result = qword_27F21F778;
  if (!qword_27F21F778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F780);
    sub_24E86B9D4();
    sub_24E86BC7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F778);
  }

  return result;
}

uint64_t RecentlyPlayedShelfConstructionIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for RecentlyPlayedShelfConstructionIntent()
{
  result = qword_27F21F7A0;
  if (!qword_27F21F7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RecentlyPlayedShelfConstructionIntent.games.getter()
{
  type metadata accessor for RecentlyPlayedShelfConstructionIntent();
}

unint64_t RecentlyPlayedShelfConstructionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v7 = type metadata accessor for RecentlyPlayedShelfConstructionIntent();
  v8 = *(v7 + 20);
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E7B74F8(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E86C8A0(v1 + v8, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 0x73656D6167;
  *(inited + 152) = 0xE500000000000000;
  v10 = *(v1 + *(v7 + 24));
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0);
  *(inited + 192) = sub_24E7B745C(&qword_27F219830, &qword_27F217960);
  *(inited + 160) = v10;

  v11 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v11;
  return result;
}

uint64_t sub_24E86C0D4()
{
  v1 = 0x726579616C70;
  if (*v0 != 1)
  {
    v1 = 0x73656D6167;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24E86C124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E86CC8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E86C14C(uint64_t a1)
{
  v2 = sub_24E86C84C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E86C188(uint64_t a1)
{
  v2 = sub_24E86C84C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecentlyPlayedShelfConstructionIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F788);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E86C84C();
  sub_24F92D128();
  v14 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v9 = type metadata accessor for RecentlyPlayedShelfConstructionIntent();
    v13 = 1;
    type metadata accessor for Player(0);
    sub_24E7B74F8(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0);
    sub_24E7B745C(&qword_27F219848, &qword_27F214950);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RecentlyPlayedShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F798);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = type metadata accessor for RecentlyPlayedShelfConstructionIntent();
  MEMORY[0x28223BE20](v9);
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E86C84C();
  v24 = v8;
  v12 = v25;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v5;
  v14 = v22;
  v15 = v23;
  v29 = 0;
  *v11 = sub_24F92CC28();
  v11[1] = v16;
  v20[1] = v16;
  v25 = v11;
  v28 = 1;
  sub_24E7B74F8(&qword_27F213E38, type metadata accessor for Player);
  sub_24F92CC68();
  sub_24E61C0A8(v13, v25 + *(v9 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0);
  v27 = 2;
  sub_24E7B745C(&qword_27F219858, &qword_27F214968);
  sub_24F92CC68();
  (*(v14 + 8))(v24, v15);
  v17 = *(v9 + 24);
  v18 = v25;
  *(v25 + v17) = v26;
  sub_24E86C8A0(v18, v21, type metadata accessor for RecentlyPlayedShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24E86C908(v18, type metadata accessor for RecentlyPlayedShelfConstructionIntent);
}

unint64_t sub_24E86C84C()
{
  result = qword_27F21F790;
  if (!qword_27F21F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F790);
  }

  return result;
}

uint64_t sub_24E86C8A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E86C908(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E86C97C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E86CA3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E86CAE0()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24E7B7820();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24E86CB88()
{
  result = qword_27F21F7B0;
  if (!qword_27F21F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F7B0);
  }

  return result;
}

unint64_t sub_24E86CBE0()
{
  result = qword_27F21F7B8;
  if (!qword_27F21F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F7B8);
  }

  return result;
}

unint64_t sub_24E86CC38()
{
  result = qword_27F21F7C0;
  if (!qword_27F21F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F7C0);
  }

  return result;
}

uint64_t sub_24E86CC8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656D6167 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t AccessPointContainer.items.getter()
{
  type metadata accessor for AccessPointContainer(0);
}

uint64_t sub_24E86CE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000)
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

uint64_t sub_24E86CED4(uint64_t a1)
{
  v2 = sub_24E86E184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E86CF10(uint64_t a1)
{
  v2 = sub_24E86E184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E86CF4C()
{
  if (*v0)
  {
    return 0x69537261656E696CLL;
  }

  else
  {
    return 0x6D614E6567616D69;
  }
}

uint64_t sub_24E86CF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E6567616D69 && a2 == 0xE900000000000065;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69537261656E696CLL && a2 == 0xEA0000000000657ALL)
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

uint64_t sub_24E86D07C(uint64_t a1)
{
  v2 = sub_24E86E130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E86D0B8(uint64_t a1)
{
  v2 = sub_24E86E130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E86D0F4()
{
  v1 = *v0;
  v2 = 0x6C6F626D7973;
  v3 = 0x6B726F77747261;
  v4 = 0x656C646E7562;
  if (v1 != 4)
  {
    v4 = 0x6567616D69;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7641726579616C70;
  if (v1 != 1)
  {
    v5 = 0x7247726579616C70;
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

uint64_t sub_24E86D1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E871F00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E86D1DC(uint64_t a1)
{
  v2 = sub_24E86E034();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E86D218(uint64_t a1)
{
  v2 = sub_24E86E034();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E86D270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061)
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

uint64_t sub_24E86D300(uint64_t a1)
{
  v2 = sub_24E86E088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E86D33C(uint64_t a1)
{
  v2 = sub_24E86E088();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E86D398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C706D65546C7275 && a2 == 0xEB00000000657461)
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

uint64_t sub_24E86D424(uint64_t a1)
{
  v2 = sub_24E86E22C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E86D460(uint64_t a1)
{
  v2 = sub_24E86E22C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E86D4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73726579616C70 && a2 == 0xE700000000000000)
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

uint64_t sub_24E86D53C(uint64_t a1)
{
  v2 = sub_24E86E1D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E86D578(uint64_t a1)
{
  v2 = sub_24E86E1D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E86D5B4(uint64_t a1)
{
  v2 = sub_24E86E280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E86D5F0(uint64_t a1)
{
  v2 = sub_24E86E280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AccessPointIconType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F7C8);
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x28223BE20](v2);
  v61 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F7D0);
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x28223BE20](v4);
  v62 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F7D8);
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x28223BE20](v6);
  v56 = &v48 - v7;
  v8 = sub_24F9289E8();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x28223BE20](v8);
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F7E0);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v48 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F7E8);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F7F0);
  v49 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  v16 = type metadata accessor for AccessPointIconType(0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F7F8);
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v20 = &v48 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E86E034();
  v69 = v20;
  sub_24F92D128();
  sub_24E86FFFC(v71, v18, type metadata accessor for AccessPointIconType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v33 = v57;
      v32 = v58;
      v34 = v55;
      (*(v57 + 32))(v55, v18, v58);
      LOBYTE(v73) = 3;
      sub_24E86E184();
      v35 = v56;
      v37 = v69;
      v36 = v70;
      sub_24F92CC98();
      sub_24E870E98(&qword_27F214060, MEMORY[0x277D21C48]);
      v38 = v60;
      sub_24F92CD48();
      (*(v59 + 8))(v35, v38);
      (*(v33 + 8))(v34, v32);
      return (*(v68 + 8))(v37, v36);
    }

    v23 = v69;
    v22 = v70;
    if (EnumCaseMultiPayload != 4)
    {
      v44 = *v18;
      v45 = v18[1];
      LOBYTE(v73) = 5;
      sub_24E86E088();
      v46 = v61;
      sub_24F92CC98();
      v73 = v44;
      v74 = v45;
      sub_24E86E0DC();
      v47 = v64;
      sub_24F92CCF8();
      (*(v63 + 8))(v46, v47);
      (*(v68 + 8))(v23, v22);
      return sub_24E71CBAC(v44, v45);
    }

    v25 = v18[2];
    LOBYTE(v73) = 4;
    sub_24E86E130();
    v26 = v62;
    sub_24F92CC98();
    LOBYTE(v73) = 0;
    v28 = v66;
    v27 = v67;
    sub_24F92CD08();

    if (!v27)
    {
      v73 = v25;
      v72 = 1;
      sub_24E620F7C();
      sub_24F92CD48();
    }

    (*(v65 + 8))(v26, v28);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      LOBYTE(v73) = 0;
      sub_24E86E280();
      v30 = v69;
      v29 = v70;
      sub_24F92CC98();
      sub_24F92CD08();

      (*(v49 + 8))(v15, v13);
      return (*(v68 + 8))(v30, v29);
    }

    if (EnumCaseMultiPayload != 1)
    {
      v39 = *v18;
      LOBYTE(v73) = 2;
      sub_24E86E1D8();
      v40 = v52;
      v42 = v69;
      v41 = v70;
      sub_24F92CC98();
      v73 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
      sub_24E86F1B4(&qword_27F21BC30, &qword_27F213E28);
      v43 = v54;
      sub_24F92CD48();
      (*(v53 + 8))(v40, v43);
      (*(v68 + 8))(v42, v41);
    }

    LOBYTE(v73) = 1;
    sub_24E86E22C();
    v23 = v69;
    v22 = v70;
    sub_24F92CC98();
    v24 = v51;
    sub_24F92CD08();

    (*(v50 + 8))(v12, v24);
  }

  return (*(v68 + 8))(v23, v22);
}

unint64_t sub_24E86E034()
{
  result = qword_27F21F800;
  if (!qword_27F21F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F800);
  }

  return result;
}

unint64_t sub_24E86E088()
{
  result = qword_27F21F808;
  if (!qword_27F21F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F808);
  }

  return result;
}

unint64_t sub_24E86E0DC()
{
  result = qword_27F21F810;
  if (!qword_27F21F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F810);
  }

  return result;
}

unint64_t sub_24E86E130()
{
  result = qword_27F21F818;
  if (!qword_27F21F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F818);
  }

  return result;
}

unint64_t sub_24E86E184()
{
  result = qword_27F21F820;
  if (!qword_27F21F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F820);
  }

  return result;
}

unint64_t sub_24E86E1D8()
{
  result = qword_27F21F828;
  if (!qword_27F21F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F828);
  }

  return result;
}

unint64_t sub_24E86E22C()
{
  result = qword_27F21F830;
  if (!qword_27F21F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F830);
  }

  return result;
}

unint64_t sub_24E86E280()
{
  result = qword_27F21F838;
  if (!qword_27F21F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F838);
  }

  return result;
}

uint64_t AccessPointIconType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F840);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v114 = &v85 - v3;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F848);
  v103 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v113 = &v85 - v4;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F850);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v112 = &v85 - v5;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F858);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v106 = &v85 - v6;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F860);
  v95 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v105 = &v85 - v7;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F868);
  v93 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v109 = &v85 - v8;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F870);
  v108 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v10 = &v85 - v9;
  v107 = type metadata accessor for AccessPointIconType(0);
  MEMORY[0x28223BE20](v107);
  v91 = (&v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v90 = (&v85 - v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v85 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v85 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = (&v85 - v21);
  MEMORY[0x28223BE20](v23);
  v25 = (&v85 - v24);
  MEMORY[0x28223BE20](v26);
  v28 = &v85 - v27;
  v29 = a1[3];
  v116 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_24E86E034();
  v110 = v10;
  v30 = v115;
  sub_24F92D108();
  if (!v30)
  {
    v85 = v25;
    v86 = v22;
    v88 = v16;
    v87 = v19;
    v31 = v109;
    v33 = v112;
    v32 = v113;
    v115 = 0;
    v34 = v114;
    v89 = v28;
    v35 = v108;
    v36 = v110;
    v37 = v111;
    v38 = sub_24F92CC78();
    v39 = (2 * *(v38 + 16)) | 1;
    v118 = v38;
    v119 = v38 + 32;
    v120 = 0;
    v121 = v39;
    v40 = sub_24E64343C();
    if (v40 == 6 || v120 != v121 >> 1)
    {
      v46 = sub_24F92C918();
      swift_allocError();
      v47 = v36;
      v49 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
      *v49 = v107;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v46 - 8) + 104))(v49, *MEMORY[0x277D84160], v46);
      swift_willThrow();
      (*(v35 + 8))(v47, v37);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v116);
    }

    if (v40 > 2u)
    {
      if (v40 == 3)
      {
        LOBYTE(v117) = 3;
        sub_24E86E184();
        v59 = v115;
        sub_24F92CBA8();
        if (!v59)
        {
          v60 = v36;
          v61 = v37;
          sub_24F9289E8();
          sub_24E870E98(&qword_27F214018, MEMORY[0x277D21C48]);
          v62 = v88;
          v63 = v99;
          sub_24F92CC68();
          (*(v98 + 8))(v33, v63);
          (*(v35 + 8))(v60, v61);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v76 = v62;
          goto LABEL_28;
        }
      }

      else if (v40 == 4)
      {
        LOBYTE(v117) = 4;
        sub_24E86E130();
        v51 = v115;
        sub_24F92CBA8();
        if (!v51)
        {
          v52 = v37;
          LOBYTE(v117) = 0;
          v53 = v100;
          v54 = sub_24F92CC28();
          v78 = v77;
          v79 = v32;
          v80 = v36;
          v81 = v54;
          v122 = 1;
          sub_24E620E90();
          sub_24F92CC68();
          (*(v103 + 8))(v79, v53);
          (*(v35 + 8))(v80, v52);
          swift_unknownObjectRelease();
          v83 = v117;
          v84 = v90;
          *v90 = v81;
          v84[1] = v78;
          v84[2] = v83;
          swift_storeEnumTagMultiPayload();
          v76 = v84;
          goto LABEL_28;
        }
      }

      else
      {
        LOBYTE(v117) = 5;
        sub_24E86E088();
        v65 = v115;
        sub_24F92CBA8();
        if (!v65)
        {
          sub_24E86F160();
          v66 = v102;
          sub_24F92CC18();
          (*(v101 + 8))(v34, v66);
          (*(v35 + 8))(v36, v37);
          swift_unknownObjectRelease();
          v71 = v91;
          *v91 = v117;
          goto LABEL_27;
        }
      }
    }

    else
    {
      if (v40)
      {
        v41 = v35;
        v42 = v115;
        if (v40 == 1)
        {
          LOBYTE(v117) = 1;
          sub_24E86E22C();
          v43 = v105;
          v44 = v36;
          sub_24F92CBA8();
          if (!v42)
          {
            v45 = v94;
            v72 = sub_24F92CC28();
            v74 = v73;
            (*(v95 + 8))(v43, v45);
            (*(v41 + 8))(v36, v37);
            swift_unknownObjectRelease();
            v75 = v86;
            *v86 = v72;
            v75[1] = v74;
            swift_storeEnumTagMultiPayload();
            v76 = v75;
LABEL_28:
            v82 = v89;
            sub_24E86F8E8(v76, v89, type metadata accessor for AccessPointIconType);
            sub_24E86F8E8(v82, v104, type metadata accessor for AccessPointIconType);
            return __swift_destroy_boxed_opaque_existential_1(v116);
          }

          goto LABEL_21;
        }

        LOBYTE(v117) = 2;
        sub_24E86E1D8();
        v64 = v106;
        v44 = v36;
        sub_24F92CBA8();
        if (v42)
        {
LABEL_21:
          (*(v41 + 8))(v44, v37);
          goto LABEL_10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
        sub_24E86F1B4(&qword_27F2196A8, &qword_27F213E38);
        v67 = v97;
        sub_24F92CC68();
        (*(v96 + 8))(v64, v67);
        (*(v41 + 8))(v36, v37);
        swift_unknownObjectRelease();
        v71 = v87;
        *v87 = v117;
LABEL_27:
        swift_storeEnumTagMultiPayload();
        v76 = v71;
        goto LABEL_28;
      }

      LOBYTE(v117) = 0;
      sub_24E86E280();
      v55 = v115;
      sub_24F92CBA8();
      v56 = v35;
      if (!v55)
      {
        v57 = v36;
        v58 = v92;
        v68 = sub_24F92CC28();
        v70 = v69;
        (*(v93 + 8))(v31, v58);
        (*(v56 + 8))(v57, v37);
        swift_unknownObjectRelease();
        v71 = v85;
        *v85 = v68;
        v71[1] = v70;
        goto LABEL_27;
      }
    }

    (*(v35 + 8))(v36, v37);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v116);
}

unint64_t sub_24E86F160()
{
  result = qword_27F21F878;
  if (!qword_27F21F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F878);
  }

  return result;
}

uint64_t sub_24E86F1B4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247240);
    sub_24E870E98(a2, type metadata accessor for Player);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AccessPointContainer.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A708();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AccessPointContainer.id.setter(uint64_t a1)
{
  v3 = sub_24F92A708();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AccessPointContainer.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessPointContainer(0) + 20);
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AccessPointContainer.pageMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessPointContainer(0) + 20);
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AccessPointContainer.useCase.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AccessPointContainer(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AccessPointContainer.useCase.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AccessPointContainer(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t sub_24E86F55C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AccessPointContainer(0) + 28);

  *(a2 + v4) = v3;
  return result;
}

uint64_t AccessPointContainer.items.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessPointContainer(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AccessPointContainer.init(id:pageMetrics:useCase:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = sub_24F92A708();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for AccessPointContainer(0);
  v12 = v11[5];
  v13 = sub_24F928818();
  result = (*(*(v13 - 8) + 32))(a5 + v12, a2, v13);
  *(a5 + v11[6]) = v9;
  *(a5 + v11[7]) = a4;
  return result;
}

Swift::Double __swiftcall AccessPointContainer.displayDuration(for:)(Swift::Int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C090);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18[-v4 - 8];
  v6 = type metadata accessor for AccessPointHighlight(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = *(v1 + *(type metadata accessor for AccessPointContainer(0) + 28));
  result = 0.0;
  if (*(v10 + 16) > a1)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_24E615E00(v10 + 40 * a1 + 32, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      v12 = swift_dynamicCast();
      v13 = *(v7 + 56);
      if (v12)
      {
        v13(v5, 0, 1, v6);
        sub_24E86F8E8(v5, v9, type metadata accessor for AccessPointHighlight);
        v14 = &v9[*(v6 + 36)];
        v15 = *v14;
        v16 = v14[8];
        sub_24E870F30(v9, type metadata accessor for AccessPointHighlight);
        result = 0.0;
        if (!v16)
        {
          return v15;
        }
      }

      else
      {
        v13(v5, 1, 1, v6);
        sub_24E601704(v5, &qword_27F21C090);
        return 0.0;
      }
    }
  }

  return result;
}

uint64_t sub_24E86F8E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AccessPointContainer.cornerRadii(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v17);
  v37 = &v36 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  v22 = type metadata accessor for AccessPointHighlight(0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for AccessPointContainer(0);
  v27 = *(v1 + *(result + 28));
  if (*(v27 + 16) <= a1)
  {
    (*(v23 + 56))(v13, 1, 1, v22);
  }

  else
  {
    if (a1 < 0)
    {
      __break(1u);
      return result;
    }

    sub_24E615E00(v27 + 40 * a1 + 32, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
    v28 = swift_dynamicCast();
    v29 = *(v23 + 56);
    if (v28)
    {
      v29(v21, 0, 1, v22);
      sub_24E86F8E8(v21, v25, type metadata accessor for AccessPointHighlight);
      v30 = v37;
      sub_24E86FFFC(v25, v37, type metadata accessor for AccessPointHighlight);
      v29(v30, 0, 1, v22);
      sub_24E60169C(v30, v16, &qword_27F21C090);
      if ((*(v23 + 48))(v16, 1, v22) == 1)
      {
        sub_24E601704(v16, &qword_27F21C090);
        v31 = type metadata accessor for AccessPointIconType(0);
        v32 = v38;
        (*(*(v31 - 8) + 56))(v38, 1, 1, v31);
      }

      else
      {
        v32 = v38;
        sub_24E60169C(&v16[*(v22 + 32)], v38, &qword_27F21C0A0);
        sub_24E870F30(v16, type metadata accessor for AccessPointHighlight);
        v35 = type metadata accessor for AccessPointIconType(0);
        (*(*(v35 - 8) + 48))(v32, 1, v35);
      }

      sub_24E601704(v32, &qword_27F21C0A0);
      sub_24F924EE8();
      sub_24E601704(v30, &qword_27F21C090);
      return sub_24E870F30(v25, type metadata accessor for AccessPointHighlight);
    }

    v29(v21, 1, 1, v22);
    sub_24E601704(v21, &qword_27F21C090);
    v29(v13, 1, 1, v22);
  }

  sub_24E60169C(v13, v10, &qword_27F21C090);
  if ((*(v23 + 48))(v10, 1, v22) == 1)
  {
    sub_24E601704(v10, &qword_27F21C090);
    v33 = type metadata accessor for AccessPointIconType(0);
    (*(*(v33 - 8) + 56))(v5, 1, 1, v33);
  }

  else
  {
    sub_24E60169C(&v10[*(v22 + 32)], v5, &qword_27F21C0A0);
    sub_24E870F30(v10, type metadata accessor for AccessPointHighlight);
    v34 = type metadata accessor for AccessPointIconType(0);
    (*(*(v34 - 8) + 48))(v5, 1, v34);
  }

  sub_24E601704(v5, &qword_27F21C0A0);
  sub_24F924EE8();
  return sub_24E601704(v13, &qword_27F21C090);
}

uint64_t sub_24E86FFFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

Swift::Bool __swiftcall AccessPointContainer.isCollapsibleItem(at:)(Swift::Int at)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25[-v4 - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C090);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25[-v7 - 8];
  v9 = type metadata accessor for AccessPointHighlight(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = type metadata accessor for AccessPointContainer(0);
  v14 = *(v1 + *(v13 + 28));
  if (*(v14 + 16) <= at)
  {
    v21 = 1;
  }

  else
  {
    if (at < 0)
    {
      __break(1u);
      return v13;
    }

    sub_24E615E00(v14 + 40 * at + 32, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
    v15 = swift_dynamicCast();
    v16 = *(v10 + 56);
    if (v15)
    {
      v16(v8, 0, 1, v9);
      sub_24E86F8E8(v8, v12, type metadata accessor for AccessPointHighlight);
      v17 = v12[6];
      if (v17 && ((v17 & 0x2000000000000000) != 0 ? (v18 = HIBYTE(v17) & 0xF) : (v18 = v12[5] & 0xFFFFFFFFFFFFLL), v18) || (v19 = v12[8]) != 0 && ((v19 & 0x2000000000000000) != 0 ? (v20 = HIBYTE(v19) & 0xF) : (v20 = v12[7] & 0xFFFFFFFFFFFFLL), v20))
      {
        v21 = 0;
      }

      else
      {
        sub_24E60169C(v12 + *(v9 + 32), v5, &qword_27F21C0A0);
        v22 = type metadata accessor for AccessPointIconType(0);
        v21 = (*(*(v22 - 8) + 48))(v5, 1, v22) == 1;
        sub_24E601704(v5, &qword_27F21C0A0);
      }

      sub_24E870F30(v12, type metadata accessor for AccessPointHighlight);
    }

    else
    {
      v21 = 1;
      v16(v8, 1, 1, v9);
      sub_24E601704(v8, &qword_27F21C090);
    }
  }

  LOBYTE(v13) = v21;
  return v13;
}

uint64_t AccessPointContainer.componentView(for:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for AccessPointContainer(0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v2 + *(result + 28));
    if (*(v6 + 16) > a1)
    {
      sub_24E615E00(v6 + 40 * a1 + 32, a2 + 16);
      type metadata accessor for GSKComponentContentBuilder();
      sub_24E870E98(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
      result = sub_24F923598();
      *a2 = result;
      *(a2 + 8) = v7 & 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24E870448()
{
  v1 = 25705;
  v2 = 0x65736143657375;
  if (*v0 != 2)
  {
    v2 = 0x736D657469;
  }

  if (*v0)
  {
    v1 = 0x7274654D65676170;
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

uint64_t sub_24E8704BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E8720F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E8704E4(uint64_t a1)
{
  v2 = sub_24E870834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E870520(uint64_t a1)
{
  v2 = sub_24E870834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AccessPointContainer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F880);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E870834();
  sub_24F92D128();
  v16 = 0;
  sub_24F92A708();
  sub_24E870E98(&qword_27F21F890, MEMORY[0x277D22408]);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for AccessPointContainer(0);
    v15 = 1;
    sub_24F928818();
    sub_24E870E98(&qword_27F21F898, MEMORY[0x277D21BF8]);
    sub_24F92CD48();
    v14 = *(v3 + *(v9 + 24));
    v13 = 2;
    sub_24E636B10();
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 28));
    v11[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F8A0);
    sub_24E870888(&qword_27F21F8A8, &qword_27F21F8B0);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24E870834()
{
  result = qword_27F21F888;
  if (!qword_27F21F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F888);
  }

  return result;
}

uint64_t sub_24E870888(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F8A0);
    sub_24E870EE0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AccessPointContainer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v26 = sub_24F928818();
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92A708();
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v27 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F8B8);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for AccessPointContainer(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E870834();
  v30 = v9;
  v13 = v31;
  sub_24F92D108();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v10;
  v31 = a1;
  v14 = v12;
  v15 = v25;
  v16 = v26;
  v37 = 0;
  sub_24E870E98(&qword_27F21F8C0, MEMORY[0x277D22408]);
  v17 = v27;
  sub_24F92CC68();
  v18 = *(v15 + 32);
  v27 = v5;
  v18(v12, v17);
  v36 = 1;
  sub_24E870E98(&qword_27F21F8C8, MEMORY[0x277D21BF8]);
  sub_24F92CC68();
  v19 = v22;
  (*(v24 + 32))(v14 + *(v22 + 20), v4, v16);
  v34 = 2;
  sub_24E636FAC();
  sub_24F92CC68();
  *(v14 + *(v19 + 24)) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F8A0);
  v33 = 3;
  sub_24E870888(&qword_27F21F8D0, &qword_27F21F8D8);
  sub_24F92CC68();
  (*(v28 + 8))(v30, v29);
  *(v14 + *(v19 + 28)) = v32;
  sub_24E86FFFC(v14, v23, type metadata accessor for AccessPointContainer);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_24E870F30(v14, type metadata accessor for AccessPointContainer);
}

uint64_t sub_24E870E98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E870EE0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21BE90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E870F30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E870F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24E871034@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AccessPointContainer(0) + 28));
}

void sub_24E871080()
{
  sub_24E871198();
  if (v0 <= 0x3F)
  {
    sub_24E8711C8();
    if (v1 <= 0x3F)
    {
      sub_24E87125C(319, &qword_27F21F900, sub_24E76AE60);
      if (v2 <= 0x3F)
      {
        sub_24E87125C(319, &qword_27F21F908, MEMORY[0x277D21C48]);
        if (v3 <= 0x3F)
        {
          sub_24E8711F8();
          if (v4 <= 0x3F)
          {
            sub_24E87125C(319, &qword_27F21F918, sub_24E8712A8);
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24E871198()
{
  result = qword_27F21F8F0;
  if (!qword_27F21F8F0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F21F8F0);
  }

  return result;
}

uint64_t sub_24E8711C8()
{
  result = qword_27F21F8F8;
  if (!qword_27F21F8F8)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F21F8F8);
  }

  return result;
}

void sub_24E8711F8()
{
  if (!qword_27F21F910)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F21F910);
    }
  }
}

void sub_24E87125C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24E8712A8()
{
  if (!qword_27F21F920)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21F920);
    }
  }
}

uint64_t sub_24E87130C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F92A708();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_24F928818();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24E87142C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24F92A708();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_24F928818();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24E871534()
{
  sub_24F92A708();
  if (v0 <= 0x3F)
  {
    sub_24F928818();
    if (v1 <= 0x3F)
    {
      sub_24E8715D8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E8715D8()
{
  if (!qword_27F21F938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21BE90);
    v0 = sub_24F928DE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21F938);
    }
  }
}

unint64_t sub_24E8716C4()
{
  result = qword_27F21F940;
  if (!qword_27F21F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F940);
  }

  return result;
}

unint64_t sub_24E87171C()
{
  result = qword_27F21F948;
  if (!qword_27F21F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F948);
  }

  return result;
}

unint64_t sub_24E871774()
{
  result = qword_27F21F950;
  if (!qword_27F21F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F950);
  }

  return result;
}

unint64_t sub_24E8717CC()
{
  result = qword_27F21F958;
  if (!qword_27F21F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F958);
  }

  return result;
}

unint64_t sub_24E871824()
{
  result = qword_27F21F960;
  if (!qword_27F21F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F960);
  }

  return result;
}

unint64_t sub_24E87187C()
{
  result = qword_27F21F968;
  if (!qword_27F21F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F968);
  }

  return result;
}

unint64_t sub_24E8718D4()
{
  result = qword_27F21F970;
  if (!qword_27F21F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F970);
  }

  return result;
}

unint64_t sub_24E87192C()
{
  result = qword_27F21F978;
  if (!qword_27F21F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F978);
  }

  return result;
}

unint64_t sub_24E871984()
{
  result = qword_27F21F980;
  if (!qword_27F21F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F980);
  }

  return result;
}

unint64_t sub_24E8719DC()
{
  result = qword_27F21F988;
  if (!qword_27F21F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F988);
  }

  return result;
}

unint64_t sub_24E871A34()
{
  result = qword_27F21F990;
  if (!qword_27F21F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F990);
  }

  return result;
}

unint64_t sub_24E871A8C()
{
  result = qword_27F21F998;
  if (!qword_27F21F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F998);
  }

  return result;
}

unint64_t sub_24E871AE4()
{
  result = qword_27F21F9A0;
  if (!qword_27F21F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F9A0);
  }

  return result;
}

unint64_t sub_24E871B3C()
{
  result = qword_27F21F9A8;
  if (!qword_27F21F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F9A8);
  }

  return result;
}

unint64_t sub_24E871B94()
{
  result = qword_27F21F9B0;
  if (!qword_27F21F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F9B0);
  }

  return result;
}

unint64_t sub_24E871BEC()
{
  result = qword_27F21F9B8;
  if (!qword_27F21F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F9B8);
  }

  return result;
}

unint64_t sub_24E871C44()
{
  result = qword_27F21F9C0;
  if (!qword_27F21F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F9C0);
  }

  return result;
}

unint64_t sub_24E871C9C()
{
  result = qword_27F21F9C8;
  if (!qword_27F21F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F9C8);
  }

  return result;
}

unint64_t sub_24E871CF4()
{
  result = qword_27F21F9D0;
  if (!qword_27F21F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F9D0);
  }

  return result;
}

unint64_t sub_24E871D4C()
{
  result = qword_27F21F9D8;
  if (!qword_27F21F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F9D8);
  }

  return result;
}

unint64_t sub_24E871DA4()
{
  result = qword_27F21F9E0;
  if (!qword_27F21F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F9E0);
  }

  return result;
}

unint64_t sub_24E871DFC()
{
  result = qword_27F21F9E8;
  if (!qword_27F21F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F9E8);
  }

  return result;
}

unint64_t sub_24E871E54()
{
  result = qword_27F21F9F0;
  if (!qword_27F21F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F9F0);
  }

  return result;
}

unint64_t sub_24E871EAC()
{
  result = qword_27F21F9F8;
  if (!qword_27F21F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F9F8);
  }

  return result;
}

uint64_t sub_24E871F00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7641726579616C70 && a2 == 0xEC00000072617461 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7247726579616C70 && a2 == 0xEB0000000070756FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C646E7562 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24E8720F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736143657375 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
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

void sub_24E872254(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_24E635B5C();
  v5 = sub_24F92B5A8();

  v6 = a3;
  v4(v5, a3);
}

uint64_t PlayerProfileDataIntentImplementation.perform(_:objectGraph:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E67D094;

  return (sub_24E872700)(a1);
}

void sub_24E8723A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FA08);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() proxyForLocalPlayer];
  v9 = [v8 profileServicePrivate];

  sub_24E8E817C(a2);
  v10 = sub_24F92B588();

  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v7, v4);
  aBlock[4] = sub_24E872F08;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E872254;
  aBlock[3] = &block_descriptor_24;
  v13 = _Block_copy(aBlock);

  [v9 getProfilesForPlayerIDs:v10 fetchOptions:1 handler:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

uint64_t sub_24E8725CC(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FA08);
    return sub_24F92B788();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FA08);
    return sub_24F92B798();
  }
}

uint64_t sub_24E872650(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24E67D244;

  return (sub_24E872700)(a2);
}

uint64_t sub_24E872700(uint64_t *a1)
{
  v3 = type metadata accessor for PlayerProfileData();
  v1[3] = v3;
  v1[4] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *a1;
  v1[5] = v4;
  v1[6] = v5;

  return MEMORY[0x2822009F8](sub_24E8727C4, 0, 0);
}

uint64_t sub_24E8727C4()
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[7] = __swift_project_value_buffer(v1, qword_27F39E808);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[PlayerProfileDataIntentImplementation] Fetching profiles...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = v0[6];

  v6 = swift_task_alloc();
  v0[8] = v6;
  *(v6 + 16) = v5;
  v7 = swift_task_alloc();
  v0[9] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FA00);
  *v7 = v0;
  v7[1] = sub_24E872984;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000019, 0x800000024FA453B0, sub_24E872E08, v6, v8);
}

uint64_t sub_24E872984()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24E872D84;
  }

  else
  {

    v2 = sub_24E872AA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

size_t sub_24E872AA0()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    v20 = v0[2];
    v2 = sub_24F92C738();
    v1 = v20;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v7 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v3 = v1;
  v30 = MEMORY[0x277D84F90];
  result = sub_24F458060(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  v26 = v0[3];
  v27 = v0[4];
  v6 = v3;
  v25 = v3 & 0xC000000000000001;
  v7 = v30;
  v28 = v2;
  v29 = v6;
  do
  {
    if (v25)
    {
      v8 = MEMORY[0x253052270](v5);
    }

    else
    {
      v8 = *(v6 + 8 * v5 + 32);
    }

    v9 = v8;
    v10 = v0[5];
    v11 = [v8 numberOfFriends];
    v12 = [v9 numberOfFriendsInCommon];
    v13 = [v9 numberOfGames];
    v14 = [v9 numberOfGamesInCommon];
    v15 = [v9 numberOfAchievements];
    sub_24F3FAC70(v9, 0, 0, v10);
    v16 = (v10 + *(v26 + 20));
    *v16 = v11;
    v16[1] = v12;
    v16[2] = v13;
    v16[3] = v14;
    v16[4] = v15;
    v18 = *(v30 + 16);
    v17 = *(v30 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_24F458060(v17 > 1, v18 + 1, 1);
    }

    v19 = v0[5];
    ++v5;
    *(v30 + 16) = v18 + 1;
    sub_24E872E10(v19, v30 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v18);
    v6 = v29;
  }

  while (v28 != v5);

LABEL_14:

  v21 = sub_24F9220B8();
  v22 = sub_24F92BD98();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = *(v7 + 16);

    _os_log_impl(&dword_24E5DD000, v21, v22, "[PlayerProfileDataIntentImplementation] Fetched %ld profiles.", v23, 0xCu);
    MEMORY[0x2530542D0](v23, -1, -1);
  }

  else
  {
  }

  v24 = v0[1];

  return v24(v7);
}

uint64_t sub_24E872D84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E872E10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerProfileData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E872E74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FA08);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24E872F08(int a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FA08);

  return sub_24E8725CC(a1, a2);
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E872FC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24F928818();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E8730F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_24F928AD8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24F928818();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}