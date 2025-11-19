uint64_t sub_25B054FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B0550A4, a3, 0);
}

uint64_t sub_25B0550A4()
{
  v1 = *(v0[10] + 152);
  if (v1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B0E3CC0())
  {
    v3 = 0;
    v37 = i;
    v39 = v1 & 0xFFFFFFFFFFFFFF8;
    v40 = v1 & 0xC000000000000001;
    v38 = v1;
    while (v40)
    {
      v5 = MEMORY[0x25F860730](v3, v1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_25;
      }

LABEL_9:
      v41 = v6;
      v7 = v0[12];
      v9 = v0[9];
      v8 = v0[10];
      v10 = sub_25B0E3940();
      v11 = *(v10 - 8);
      (*(v11 + 56))(v7, 1, 1, v10);
      v12 = swift_allocObject();
      v12[2] = 0;
      v13 = v12 + 2;
      v12[3] = 0;
      v12[4] = v8;
      v12[5] = v5;
      v12[6] = v3;
      v14 = *v9;

      v15 = swift_taskGroup_addPending();
      v16 = v0[12];
      if (v15)
      {
        v17 = v0[11];
        sub_25B058198(v16, v17);
        v18 = (*(v11 + 48))(v17, 1, v10);
        v19 = v0[11];
        if (v18 == 1)
        {
          sub_25B058448(v0[11], &qword_27FA31990, &qword_25B0E6920);
        }

        else
        {
          sub_25B0E3930();
          (*(v11 + 8))(v19, v10);
        }

        v23 = v37;
        if (*v13)
        {
          v25 = v12[3];
          v26 = *v13;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v27 = sub_25B0E3850();
          v29 = v28;
          swift_unknownObjectRelease();
        }

        else
        {
          v27 = 0;
          v29 = 0;
        }

        v1 = v38;
        v30 = swift_allocObject();
        *(v30 + 16) = &unk_25B0E65A0;
        *(v30 + 24) = v12;
        v31 = (v29 | v27);
        if (v29 | v27)
        {
          v31 = v0 + 2;
          v0[2] = 0;
          v0[3] = 0;
          v0[4] = v27;
          v0[5] = v29;
        }

        v4 = v41;
        v32 = v0[12];
        v0[6] = 1;
        v0[7] = v31;
        v0[8] = v14;
        swift_task_create();

        sub_25B058448(v32, &qword_27FA31990, &qword_25B0E6920);
      }

      else
      {
        sub_25B058448(v16, &qword_27FA31990, &qword_25B0E6920);

        if (qword_27FA30C80 != -1)
        {
          swift_once();
        }

        v20 = sub_25B0E2970();
        __swift_project_value_buffer(v20, qword_27FA31160);
        v21 = sub_25B0E2950();
        v22 = sub_25B0E3A50();
        v23 = v37;
        v1 = v38;
        if (os_log_type_enabled(v21, v22))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_25B03D000, v21, v22, "Task cancelled, not adding child task…", v24, 2u);
          MEMORY[0x25F8613E0](v24, -1, -1);
        }

        v4 = v41;
      }

      ++v3;
      if (v4 == v23)
      {
        goto LABEL_28;
      }
    }

    if (v3 >= *(v39 + 16))
    {
      goto LABEL_26;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_28:
  v34 = v0[11];
  v33 = v0[12];

  v35 = v0[1];

  return v35();
}

uint64_t sub_25B0554F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return MEMORY[0x2822009F8](sub_25B05551C, a4, 0);
}

uint64_t sub_25B05551C()
{
  v1 = *(v0 + 48);
  *(v0 + 72) = sub_25B053714();

  return MEMORY[0x2822009F8](sub_25B055588, 0, 0);
}

uint64_t sub_25B055588()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[6];
    swift_beginAccess();
    v0[10] = 0;
    v0[11] = v1;

    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_25B0556A0;
    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[6];

    return sub_25B05381C(v1, v4, v5);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_25B0556A0()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25B0557B0, v2, 0);
}

uint64_t sub_25B0557D8()
{
  if (*(v0 + 120) == 1)
  {
    v1 = *(v0 + 88);

    if (qword_27FA30C80 != -1)
    {
      swift_once();
    }

    v2 = sub_25B0E2970();
    __swift_project_value_buffer(v2, qword_27FA31160);
    v3 = sub_25B0E2950();
    v4 = sub_25B0E3A50();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 88);
    if (!v5)
    {
      goto LABEL_12;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Queue is paused or nil, aborting…";
LABEL_11:
    _os_log_impl(&dword_25B03D000, v3, v4, v8, v7, 2u);
    MEMORY[0x25F8613E0](v7, -1, -1);
LABEL_12:

    v13 = *(v0 + 8);

    return v13();
  }

  if (sub_25B0E39F0())
  {
    v9 = *(v0 + 88);

    if (qword_27FA30C80 != -1)
    {
      swift_once();
    }

    v10 = sub_25B0E2970();
    __swift_project_value_buffer(v10, qword_27FA31160);
    v3 = sub_25B0E2950();
    v4 = sub_25B0E3A50();
    v11 = os_log_type_enabled(v3, v4);
    v12 = *(v0 + 88);
    if (!v11)
    {
      goto LABEL_12;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Task is cancelled, aborting…";
    goto LABEL_11;
  }

  v15 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_25B0559EC, v15, 0);
}

uint64_t sub_25B0559EC()
{
  v1 = v0[10];
  v2 = *(v0[6] + 112);

  sub_25B052654(v3);

  v0[5] = sub_25B057C2C(v4);
  sub_25B056820(v0 + 5);
  v0[13] = v1;
  if (!v1)
  {
    v7 = v0[11];

    v11 = v0[5];
    if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
    {
      v14 = v0[5];
      v8 = sub_25B0E3CC0();
      if (v8)
      {
        goto LABEL_8;
      }
    }

    else if (*(v11 + 16))
    {
LABEL_8:
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x25F860730](0, v11);
      }

      else
      {
        if (!*(v11 + 16))
        {
          __break(1u);
          return MEMORY[0x2822009F8](v8, v9, v10);
        }

        v12 = *(v11 + 32);
      }

      v0[14] = v12;
      v13 = sub_25B055B54;
LABEL_14:
      v8 = v13;
      v9 = 0;
      v10 = 0;

      return MEMORY[0x2822009F8](v8, v9, v10);
    }

    v13 = sub_25B055C24;
    goto LABEL_14;
  }

  v5 = v0[5];
}

uint64_t sub_25B055B54()
{
  v1 = v0[11];

  v2 = v0[14];
  v0[10] = v0[13];
  v0[11] = v2;

  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_25B0556A0;
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];

  return sub_25B05381C(v2, v4, v5);
}

uint64_t sub_25B055C24()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t FaceQueueState.Status.description.getter()
{
  v1 = 1701602377;
  v2 = 0x676E6973756150;
  if (*v0 != 2)
  {
    v2 = 0x646573756150;
  }

  if (*v0)
  {
    v1 = 0x676E696B726F57;
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

uint64_t FaceQueueState.Status.hashValue.getter()
{
  v1 = *v0;
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v1);
  return sub_25B0E3F50();
}

uint64_t sub_25B055D7C()
{
  v1 = 1701602377;
  v2 = 0x676E6973756150;
  if (*v0 != 2)
  {
    v2 = 0x646573756150;
  }

  if (*v0)
  {
    v1 = 0x676E696B726F57;
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

uint64_t FaceQueueState.queuedRequestCount.getter()
{
  v1 = *v0;
  if (!(*v0 >> 62))
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 < 0)
  {
    v3 = *v0;
  }

  return sub_25B0E3CC0();
}

uint64_t FaceQueueState.queuedRequests.getter()
{
  v1 = *v0;

  v4 = sub_25B057C2C(v2);
  sub_25B056820(&v4);
  return v4;
}

uint64_t FaceQueueState.currentRequests.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t FaceQueue.__allocating_init()()
{
  v0 = swift_allocObject();
  FaceQueue.init()();
  return v0;
}

uint64_t FaceQueue.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F00, &qword_25B0E5948);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25B0E6410;
  type metadata accessor for FaceHandler();
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  *(v1 + 32) = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + 40) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31320, &qword_25B0E6420);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = MEMORY[0x277D84F98];
  *(v4 + 112) = MEMORY[0x277D84F98];
  *(v4 + 120) = v5;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = v1;
  *(v0 + 16) = v4;
  return v0;
}

uint64_t FaceQueue.add(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25B05602C, 0, 0);
}

uint64_t sub_25B05602C()
{
  v1 = *(*(v0 + 24) + 16);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_25B056050, v1, 0);
}

uint64_t sub_25B056050()
{
  v1 = v0[4];
  sub_25B053238(v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t FaceQueue.set(paused:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920) - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B056154, 0, 0);
}

uint64_t sub_25B056154()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_25B056178, v1, 0);
}

uint64_t sub_25B056178()
{
  v1 = *(v0 + 32);
  *(v1 + 145) = *(v0 + 40);
  v2 = *(v1 + 128);
  if (v2)
  {
    v3 = *(*(v0 + 32) + 136);

    sub_25B052524();
    v2();

    sub_25B043E90(v2);
  }

  if ((*(v0 + 40) & 1) == 0)
  {
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = sub_25B0E3940();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = sub_25B058150(&qword_27FA31328, &qword_27FA31320, &qword_25B0E6420);
    v8 = swift_allocObject();
    v8[2] = v4;
    v8[3] = v7;
    v8[4] = v4;
    swift_retain_n();
    sub_25B052F48(0, 0, v5, &unk_25B0E6440, v8);
  }

  v9 = *(v0 + 24);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t FaceQueue.set(stateCallback:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25B05633C, 0, 0);
}

uint64_t sub_25B05633C()
{
  v1 = v0[2];
  v2 = v0[4];
  if (v1)
  {
    v3 = v0[3];
    v4 = *(v2 + 16);
    v0[5] = v4;
    v5 = swift_allocObject();
    v0[6] = v5;
    *(v5 + 16) = v1;
    *(v5 + 24) = v3;
    sub_25B057D7C(v1);
    sub_25B057D7C(v1);

    v6 = sub_25B056418;
    v7 = v4;
  }

  else
  {
    v7 = *(v2 + 16);
    v0[7] = v7;
    v6 = sub_25B056550;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_25B056418()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v2 + 128);
  v6 = *(v2 + 136);
  *(v2 + 128) = sub_25B057D74;
  *(v2 + 136) = v1;
  sub_25B043E90(v5);

  v7 = sub_25B052524();
  sub_25B0565B8(v7, v8, v9, v4);

  sub_25B043E90(v4);

  return MEMORY[0x2822009F8](sub_25B0564F0, 0, 0);
}

uint64_t sub_25B0564F0()
{
  v1 = v0[3];
  sub_25B043E90(v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_25B056550()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  sub_25B043E90(v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25B0565B8(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t *))
{

  v9[0] = sub_25B057C2C(v7);
  sub_25B056820(v9);
  v9[1] = a2;
  v10 = a3;

  a4(v9);
}

uint64_t FaceQueue.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t FaceQueue.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25B0566C0()
{
  type metadata accessor for FaceQueue();
  v0 = swift_allocObject();
  result = FaceQueue.init()();
  qword_27FA31318 = v0;
  return result;
}

uint64_t static FaceQueue.sharedNanoTimeKitQueue.getter()
{
  if (qword_27FA30C90 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25B056758(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_25B065DD0(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25B069C7C();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_25B0E2750();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_25B06827C(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_25B056820(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_25B0D4090(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_25B05689C(v6);
  return sub_25B0E3C40();
}

uint64_t sub_25B05689C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25B0E3E10();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for FaceRequest();
        v6 = sub_25B0E3820();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_25B056C0C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_25B0569A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25B0569A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 8 * a3 - 8);
    v6 = result - a3;
    v30 = *a4;
LABEL_6:
    v28 = v5;
    v29 = a3;
    v7 = *(v4 + 8 * a3);
    v27 = v6;
    while (1)
    {
      if (*(v7 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible) != *(*v5 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
      {
        if (!*(v7 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
        {
          goto LABEL_5;
        }

        goto LABEL_23;
      }

      v8 = v7 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
      v9 = *v5 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
      v10 = *(type metadata accessor for FacePlacement(0) + 20);
      v11 = (v8 + v10);
      v12 = (v9 + v10);
      v13 = *(v8 + v10);
      v14 = *v12;
      if (v13 != v14)
      {
        break;
      }

      v15 = *(type metadata accessor for FacePlacement.Location(0) + 20);

      if ((sub_25B0E2520() & 1) == 0)
      {
        v13 = *v11;
        v14 = *v12;
        if (v13 == v14)
        {
          v22 = *(type metadata accessor for FacePlacement.Location(0) + 20);
          v23 = sub_25B0E2510();

          v4 = v30;
          if ((v23 & 1) == 0)
          {
            goto LABEL_5;
          }

          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v16 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
      v18 = v17;
      if (v16 == _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0() && v18 == v19)
      {

        v4 = v30;
LABEL_5:
        a3 = v29 + 1;
        v5 = v28 + 1;
        v6 = v27 - 1;
        if (v29 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v21 = sub_25B0E3E30();

      v4 = v30;
      if ((v21 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_23:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v24 = *v5;
      v7 = v5[1];
      *v5 = v7;
      v5[1] = v24;
      --v5;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

LABEL_22:

    v4 = v30;
    if (v13 >= v14)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_25B056C0C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v128 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_137:
    v9 = v8;
    v8 = *v128;
    if (!*v128)
    {
      goto LABEL_175;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_139;
    }

    goto LABEL_169;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (2)
  {
    v9 = v7 + 1;
    v140 = v8;
    v129 = v7;
    if (v7 + 1 >= v6)
    {
      goto LABEL_53;
    }

    v126 = v5;
    v10 = *a3;
    v11 = *(*a3 + 8 * v9);
    v12 = *(*a3 + 8 * v7);
    v13 = *(v11 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible);
    v133 = v6;
    if (v13 == *(v12 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
    {
      v136 = v9;
      v14 = v11 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
      v15 = v12 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
      v16 = *(type metadata accessor for FacePlacement(0) + 20);
      v17 = (v14 + v16);
      v18 = (v15 + v16);
      v19 = *(v14 + v16);
      v13 = *(v15 + v16);
      if (v19 == v13)
      {
        v20 = *(type metadata accessor for FacePlacement.Location(0) + 20);

        if (sub_25B0E2520())
        {
          v21 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
          v23 = v22;
          if (v21 == _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0() && v23 == v24)
          {
            v26 = 0;
          }

          else
          {
            v26 = sub_25B0E3E30();
          }

          v9 = v136;
          v6 = v133;

          LOBYTE(v13) = v26;
          goto LABEL_21;
        }

        v19 = *v17;
        v13 = *v18;
      }

      else
      {
      }

      v9 = v136;
      if (v19 == v13)
      {
        v27 = *(type metadata accessor for FacePlacement.Location(0) + 20);
        LOBYTE(v13) = sub_25B0E2510();
      }

      else
      {

        LOBYTE(v13) = v19 < v13;
      }

      v6 = v133;
    }

LABEL_21:
    v5 = (v10 + 8 * v129 + 16);
    v28 = 8 * v129 + 8;
    v131 = v13;
    do
    {
      v30 = v9;
      v8 = v28;
      if (++v9 >= v6)
      {
        break;
      }

      v31 = *(v5 - 1);
      v29 = *(*v5 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible);
      if (v29 != *(v31 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
      {
        goto LABEL_25;
      }

      v137 = v9;
      v32 = *v5 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
      v33 = v31 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
      v34 = *(type metadata accessor for FacePlacement(0) + 20);
      v35 = (v32 + v34);
      v36 = (v33 + v34);
      v37 = *v35;
      v38 = *(v33 + v34);
      if (v37 == v38)
      {
        v39 = *(type metadata accessor for FacePlacement.Location(0) + 20);

        if (sub_25B0E2520())
        {
          v40 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
          v42 = v41;
          if (v40 == _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0() && v42 == v43)
          {
            LOBYTE(v29) = 0;
          }

          else
          {
            LOBYTE(v29) = sub_25B0E3E30();
          }

          v9 = v137;
          v6 = v133;

          goto LABEL_24;
        }

        v37 = *v35;
        v38 = *v36;
        if (v37 == v38)
        {
          v45 = *(type metadata accessor for FacePlacement.Location(0) + 20);
          LOBYTE(v29) = sub_25B0E2510();

          goto LABEL_23;
        }
      }

      else
      {
      }

      LOBYTE(v29) = v37 < v38;
LABEL_23:
      v9 = v137;
      v6 = v133;
LABEL_24:
      LOBYTE(v13) = v131;
LABEL_25:
      ++v5;
      v28 = (v8 + 8);
    }

    while ((v13 & 1) == (v29 & 1));
    if (v13)
    {
      v46 = v129;
      if (v9 < v129)
      {
        goto LABEL_166;
      }

      if (v129 < v9)
      {
        v5 = v126;
        v47 = 8 * v129;
        while (1)
        {
          if (v46 != v30)
          {
            v50 = *a3;
            if (!*a3)
            {
              goto LABEL_172;
            }

            v48 = *(v50 + v47);
            *(v50 + v47) = *&v8[v50];
            *&v8[v50] = v48;
          }

          ++v46;
          v8 -= 8;
          v47 += 8;
          if (v46 >= v30--)
          {
            goto LABEL_51;
          }
        }
      }

      v5 = v126;
      v8 = v140;
      v7 = v129;
    }

    else
    {
      v5 = v126;
LABEL_51:
      v8 = v140;
      v7 = v129;
    }

LABEL_53:
    v51 = a3[1];
    if (v9 >= v51)
    {
      goto LABEL_86;
    }

    if (__OFSUB__(v9, v7))
    {
      goto LABEL_165;
    }

    if (v9 - v7 >= a4)
    {
      goto LABEL_86;
    }

    v52 = v7 + a4;
    if (__OFADD__(v7, a4))
    {
      goto LABEL_167;
    }

    if (v52 >= v51)
    {
      v52 = a3[1];
    }

    if (v52 < v7)
    {
LABEL_168:
      __break(1u);
LABEL_169:
      result = sub_25B0D3F4C(v9);
      v9 = result;
LABEL_139:
      v121 = *(v9 + 16);
      if (v121 < 2)
      {
      }

      while (*a3)
      {
        v122 = *(v9 + 16 * v121);
        v123 = *(v9 + 16 * (v121 - 1) + 40);
        sub_25B05767C((*a3 + 8 * v122), (*a3 + 8 * *(v9 + 16 * (v121 - 1) + 32)), (*a3 + 8 * v123), v8);
        if (v5)
        {
        }

        if (v123 < v122)
        {
          goto LABEL_162;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_25B0D3F4C(v9);
        }

        if (v121 - 2 >= *(v9 + 16))
        {
          goto LABEL_163;
        }

        v124 = (v9 + 16 * v121);
        *v124 = v122;
        v124[1] = v123;
        result = sub_25B0D3EC0(v121 - 1);
        v121 = *(v9 + 16);
        if (v121 <= 1)
        {
        }
      }

LABEL_173:
      __break(1u);
      break;
    }

    if (v9 == v52)
    {
      goto LABEL_86;
    }

    v127 = v5;
    v53 = *a3;
    v54 = (*a3 + 8 * v9 - 8);
    v55 = v7 - v9;
    v130 = v52;
    v139 = *a3;
    while (2)
    {
      v138 = v9;
      v56 = *(v53 + 8 * v9);
      v132 = v55;
      v134 = v54;
      while (2)
      {
        if (*(v56 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible) != *(*v54 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
        {
          if (!*(v56 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
          {
            goto LABEL_63;
          }

          goto LABEL_81;
        }

        v57 = v56 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
        v58 = *v54 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
        v59 = *(type metadata accessor for FacePlacement(0) + 20);
        v60 = (v57 + v59);
        v61 = (v58 + v59);
        v62 = *(v57 + v59);
        v63 = *v61;
        if (v62 != v63)
        {

          goto LABEL_80;
        }

        v64 = *(type metadata accessor for FacePlacement.Location(0) + 20);

        if ((sub_25B0E2520() & 1) == 0)
        {
          v62 = *v60;
          v63 = *v61;
          if (v62 == v63)
          {
            v71 = *(type metadata accessor for FacePlacement.Location(0) + 20);
            v72 = sub_25B0E2510();

            v53 = v139;
            v8 = v140;
            if ((v72 & 1) == 0)
            {
              goto LABEL_63;
            }

LABEL_81:
            if (v53)
            {
              v74 = *v54;
              v56 = v54[1];
              *v54 = v56;
              v54[1] = v74;
              --v54;
              v73 = __CFADD__(v55++, 1);
              if (v73)
              {
                goto LABEL_63;
              }

              continue;
            }

            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

LABEL_80:

          v73 = v62 >= v63;
          v53 = v139;
          v8 = v140;
          if (v73)
          {
            goto LABEL_63;
          }

          goto LABEL_81;
        }

        break;
      }

      v65 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
      v67 = v66;
      if (v65 != _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0() || v67 != v68)
      {
        v70 = sub_25B0E3E30();

        v53 = v139;
        v8 = v140;
        if ((v70 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_81;
      }

      v53 = v139;
      v8 = v140;
LABEL_63:
      v9 = v138 + 1;
      v54 = v134 + 1;
      v55 = v132 - 1;
      if (v138 + 1 != v130)
      {
        continue;
      }

      break;
    }

    v9 = v130;
    v5 = v127;
    v7 = v129;
LABEL_86:
    if (v9 < v7)
    {
      goto LABEL_164;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25B08993C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v76 = *(v8 + 2);
    v75 = *(v8 + 3);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_25B08993C((v75 > 1), v76 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v77;
    v78 = &v8[16 * v76];
    *(v78 + 4) = v129;
    *(v78 + 5) = v9;
    v7 = v9;
    v9 = *v128;
    if (*v128)
    {
      if (!v76)
      {
LABEL_3:
        v6 = a3[1];
        if (v7 >= v6)
        {
          goto LABEL_137;
        }

        continue;
      }

      while (2)
      {
        v79 = v77 - 1;
        if (v77 >= 4)
        {
          v84 = &v8[16 * v77 + 32];
          v85 = *(v84 - 64);
          v86 = *(v84 - 56);
          v90 = __OFSUB__(v86, v85);
          v87 = v86 - v85;
          if (v90)
          {
            goto LABEL_151;
          }

          v89 = *(v84 - 48);
          v88 = *(v84 - 40);
          v90 = __OFSUB__(v88, v89);
          v82 = v88 - v89;
          v83 = v90;
          if (v90)
          {
            goto LABEL_152;
          }

          v91 = &v8[16 * v77];
          v93 = *v91;
          v92 = *(v91 + 1);
          v90 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v90)
          {
            goto LABEL_154;
          }

          v90 = __OFADD__(v82, v94);
          v95 = v82 + v94;
          if (v90)
          {
            goto LABEL_157;
          }

          if (v95 >= v87)
          {
            v113 = &v8[16 * v79 + 32];
            v115 = *v113;
            v114 = *(v113 + 1);
            v90 = __OFSUB__(v114, v115);
            v116 = v114 - v115;
            if (v90)
            {
              goto LABEL_161;
            }

            if (v82 < v116)
            {
              v79 = v77 - 2;
            }
          }

          else
          {
LABEL_106:
            if (v83)
            {
              goto LABEL_153;
            }

            v96 = &v8[16 * v77];
            v98 = *v96;
            v97 = *(v96 + 1);
            v99 = __OFSUB__(v97, v98);
            v100 = v97 - v98;
            v101 = v99;
            if (v99)
            {
              goto LABEL_156;
            }

            v102 = &v8[16 * v79 + 32];
            v104 = *v102;
            v103 = *(v102 + 1);
            v90 = __OFSUB__(v103, v104);
            v105 = v103 - v104;
            if (v90)
            {
              goto LABEL_159;
            }

            if (__OFADD__(v100, v105))
            {
              goto LABEL_160;
            }

            if (v100 + v105 < v82)
            {
              goto LABEL_120;
            }

            if (v82 < v105)
            {
              v79 = v77 - 2;
            }
          }
        }

        else
        {
          if (v77 == 3)
          {
            v80 = *(v8 + 4);
            v81 = *(v8 + 5);
            v90 = __OFSUB__(v81, v80);
            v82 = v81 - v80;
            v83 = v90;
            goto LABEL_106;
          }

          v106 = &v8[16 * v77];
          v108 = *v106;
          v107 = *(v106 + 1);
          v90 = __OFSUB__(v107, v108);
          v100 = v107 - v108;
          v101 = v90;
LABEL_120:
          if (v101)
          {
            goto LABEL_155;
          }

          v109 = &v8[16 * v79];
          v111 = *(v109 + 4);
          v110 = *(v109 + 5);
          v90 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v90)
          {
            goto LABEL_158;
          }

          if (v112 < v100)
          {
            goto LABEL_3;
          }
        }

        v117 = v79 - 1;
        if (v79 - 1 >= v77)
        {
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        if (!*a3)
        {
          goto LABEL_171;
        }

        v118 = *&v8[16 * v117 + 32];
        v119 = *&v8[16 * v79 + 40];
        sub_25B05767C((*a3 + 8 * v118), (*a3 + 8 * *&v8[16 * v79 + 32]), (*a3 + 8 * v119), v9);
        if (v5)
        {
        }

        if (v119 < v118)
        {
          goto LABEL_149;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25B0D3F4C(v8);
        }

        if (v117 >= *(v8 + 2))
        {
          goto LABEL_150;
        }

        v120 = &v8[16 * v117];
        *(v120 + 4) = v118;
        *(v120 + 5) = v119;
        result = sub_25B0D3EC0(v79);
        v77 = *(v8 + 2);
        if (v77 <= 1)
        {
          goto LABEL_3;
        }

        continue;
      }
    }

    break;
  }

  __break(1u);
LABEL_175:
  __break(1u);
  return result;
}

uint64_t sub_25B05767C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 < 8 || v6 <= __dst)
    {
      goto LABEL_73;
    }

    v64 = v4;
LABEL_44:
    v58 = v6;
    v33 = v6 - 8;
    v34 = v5;
    v35 = v14;
    v56 = v33;
    while (1)
    {
      v37 = *(v35 - 1);
      v35 -= 8;
      v36 = v37;
      v38 = *(v37 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible);
      if (v38 == *(*v33 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
      {
        v62 = v14;
        v39 = v36 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
        v40 = *v33 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
        v41 = *(type metadata accessor for FacePlacement(0) + 20);
        v42 = (v39 + v41);
        v43 = (v40 + v41);
        v44 = *(v39 + v41);
        v45 = *v43;
        if (v44 != v45)
        {

LABEL_60:

          v5 = v34 - 8;
          v4 = v64;
          v14 = v62;
          v33 = v56;
          if (v44 < v45)
          {
            goto LABEL_66;
          }

          goto LABEL_64;
        }

        v46 = *(type metadata accessor for FacePlacement.Location(0) + 20);

        if (sub_25B0E2520())
        {
          v47 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
          v49 = v48;
          if (v47 == _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0() && v49 == v50)
          {
            v52 = 0;
          }

          else
          {
            v52 = sub_25B0E3E30();
          }

          v4 = v64;

          v5 = v34 - 8;
          v14 = v62;
          v33 = v56;
          if (v52)
          {
LABEL_66:
            if (v34 != v58)
            {
              *v5 = *v33;
            }

            if (v14 <= v4 || (v6 = v33, v33 <= __dst))
            {
              v6 = v33;
              goto LABEL_73;
            }

            goto LABEL_44;
          }

          goto LABEL_64;
        }

        v44 = *v42;
        v45 = *v43;
        if (v44 != v45)
        {
          goto LABEL_60;
        }

        v53 = *(type metadata accessor for FacePlacement.Location(0) + 20);
        v54 = sub_25B0E2510();

        v5 = v34 - 8;
        v4 = v64;
        v14 = v62;
        v33 = v56;
        if (v54)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v5 = v34 - 8;
        if (v38)
        {
          goto LABEL_66;
        }
      }

LABEL_64:
      if (v14 != v34)
      {
        *v5 = *v35;
      }

      v14 = v35;
      v34 = v5;
      if (v35 <= v4)
      {
        v14 = v35;
        v6 = v58;
        goto LABEL_73;
      }
    }
  }

  if (a4 != __dst || &__dst[8 * v10] <= a4)
  {
    memmove(a4, __dst, 8 * v10);
  }

  v14 = &v4[8 * v10];
  if (v8 < 8)
  {
    v6 = __dst;
    goto LABEL_73;
  }

  v15 = __dst;
  if (v6 < v5)
  {
    v61 = &v4[8 * v10];
    do
    {
      if (*(*v6 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible) != *(*v4 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
      {
        if (!*(*v6 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
        {
          goto LABEL_33;
        }

        goto LABEL_29;
      }

      v57 = v6;
      v59 = v15;
      v63 = v4;
      v16 = *v6 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
      v17 = *v4 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
      v18 = *(type metadata accessor for FacePlacement(0) + 20);
      v19 = (v16 + v18);
      v20 = (v17 + v18);
      v21 = *(v16 + v18);
      v22 = *(v17 + v18);
      if (v21 == v22)
      {
        v23 = *(type metadata accessor for FacePlacement.Location(0) + 20);

        if (sub_25B0E2520())
        {
          v24 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
          v26 = v25;
          v28 = v24 == _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0() && v26 == v27;
          if (v28)
          {

            v4 = v63;
            v6 = v57;
            v15 = v59;
            v14 = v61;
LABEL_33:
            v32 = v4;
            v28 = v15 == v4;
            v4 += 8;
            if (v28)
            {
              goto LABEL_35;
            }

LABEL_34:
            *v15 = *v32;
            goto LABEL_35;
          }

          v29 = sub_25B0E3E30();

          v4 = v63;
          goto LABEL_26;
        }

        v21 = *v19;
        v22 = *v20;
      }

      else
      {
      }

      v4 = v63;
      if (v21 == v22)
      {
        v30 = *(type metadata accessor for FacePlacement.Location(0) + 20);
        v29 = sub_25B0E2510();

LABEL_26:
        v6 = v57;
        v15 = v59;
        v14 = v61;
        if ((v29 & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_29;
      }

      v31 = v21 >= v22;
      v6 = v57;
      v15 = v59;
      v14 = v61;
      if (v31)
      {
        goto LABEL_33;
      }

LABEL_29:
      v32 = v6;
      v28 = v15 == v6;
      v6 += 8;
      if (!v28)
      {
        goto LABEL_34;
      }

LABEL_35:
      v15 += 8;
    }

    while (v4 < v14 && v6 < v5);
  }

  v6 = v15;
LABEL_73:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_25B057C2C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_25B0E3CC0();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_25B0B32DC(v3, 0);
  sub_25B057E54((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_25B057CC0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25B05859C;

  return sub_25B0529B8();
}

uint64_t sub_25B057D7C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25B057D90()
{
  result = qword_27FA31330;
  if (!qword_27FA31330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31330);
  }

  return result;
}

uint64_t sub_25B057E54(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25B0E3CC0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_25B0E3CC0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_25B058150(&qword_27FA31340, &qword_27FA31338, &qword_25B0E6568);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31338, &qword_25B0E6568);
            v9 = sub_25B057FF8(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for FaceRequest();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_25B057FF8(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x25F860730](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_25B058078;
  }

  __break(1u);
  return result;
}

uint64_t sub_25B058080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v12 = *a5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25B05859C;

  return sub_25B0554F8(a1, a2, a3, a4, v12, a6);
}

uint64_t sub_25B058150(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_25B058198(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B058208(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25B05859C;

  return sub_25B065938(a1, v5);
}

uint64_t sub_25B0582C0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25B05859C;

  return sub_25B054FF8(a1, a2, v2);
}

uint64_t sub_25B05836C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25B05859C;

  return sub_25B058080(a1, v4, v5, v6, v1 + 5, v7);
}

uint64_t sub_25B058448(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25B0584E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25B0498DC;

  return sub_25B053670();
}

uint64_t FaceRequest.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
  v4 = sub_25B0E2750();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_25B058618(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 cachedFile];
  if (v4)
  {
    v5 = [a1 snapshotKey];
    v6 = sub_25B0E3740();
    v8 = v7;

    v9 = [a1 rawSnapshotKey];
    v10 = sub_25B0E3740();
    v12 = v11;

    v13 = [a1 snapshotContext];
    v14 = [a1 snapshot];

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {

    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    *a2 = 0;
    a2[1] = 0;
  }

  a2[2] = v10;
  a2[3] = v12;
  a2[4] = v13;
  a2[5] = v4;
  a2[6] = v14;
}

uint64_t static FaceRequest.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible) == *(a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
  {
    return _s15NanoFaceGallery0B9PlacementV1loiySbAC_ACtFZ_0(a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement, a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement);
  }

  else
  {
    return *(a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible);
  }
}

uint64_t FaceRequest.Result.key.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 FaceRequest.Result.key.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = v1->n128_u64[1];
  v5 = v1[1].n128_u64[1];

  result = v7;
  *v1 = v7;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t sub_25B058924@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t FaceRequest.__allocating_init(placement:visible:)(uint64_t a1, char a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = v7 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState;
  *v8 = 0;
  v9 = MEMORY[0x277D84F90];
  *(v8 + 8) = 0;
  *(v8 + 16) = v9;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  sub_25B059744(a1, v7 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement);
  *(v7 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible) = a2;
  return v7;
}

uint64_t FaceRequest.init(placement:visible:)(uint64_t a1, char a2)
{
  v4 = v2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState;
  *v4 = 0;
  v5 = MEMORY[0x277D84F90];
  *(v4 + 8) = 0;
  *(v4 + 16) = v5;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  sub_25B059744(a1, v2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement);
  *(v2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible) = a2;
  return v2;
}

uint64_t FaceRequest.deinit()
{
  v1 = (v0 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState));
  sub_25B058B40(&v1[2]);
  os_unfair_lock_unlock(v1);
  sub_25B0597A8(v0 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement);
  sub_25B059804(&v1[2]);
  return v0;
}

uint64_t sub_25B058B40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31348, &unk_25B0E6870);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = v17 - v6;
  v8 = *(a1 + 8);
  v9 = *(v8 + 16);
  if (v9)
  {
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v7, v13, v2);
      sub_25B0598AC();
      v15 = swift_allocError();
      *v16 = 0;
      v17[3] = v15;
      sub_25B0E3870();
      result = (*(v10 - 8))(v7, v2);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t FaceRequest.__deallocating_deinit()
{
  v1 = (v0 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState));
  sub_25B058B40(&v1[2]);
  os_unfair_lock_unlock(v1);
  sub_25B0597A8(v0 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement);
  sub_25B059804(&v1[2]);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t sub_25B058D54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31348, &unk_25B0E6870);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  *a1 = 1;
  v17 = a1;
  v18 = *(a1 + 8);
  v7 = *(v18 + 16);
  if (v7)
  {
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v8 = v10;
    v11 = v18 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    do
    {
      v8(v6, v11, v2);
      sub_25B0598AC();
      v13 = swift_allocError();
      *v14 = 1;
      v19 = v13;
      sub_25B0E3870();
      (*(v9 - 8))(v6, v2);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  *(v17 + 8) = MEMORY[0x277D84F90];
  return result;
}

uint64_t FaceRequest.result.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25B058F08, 0, 0);
}

uint64_t sub_25B058F08()
{
  v1 = v0[3] + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState;
  os_unfair_lock_lock(v1);
  if (*(v1 + 8) == 1)
  {
    sub_25B0598AC();
    swift_allocError();
    *v2 = 1;
LABEL_3:
    swift_willThrow();
    os_unfair_lock_unlock(v1);
    v3 = v0[1];
LABEL_8:

    return v3();
  }

  v4 = *(v1 + 24);
  v0[4] = v4;
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v0[5] = v5;
  v7 = *(v1 + 48);
  v0[6] = v7;
  v8 = *(v1 + 56);
  v0[7] = v8;
  v9 = *(v1 + 64);
  v0[8] = v9;
  v10 = *(v1 + 72);
  v0[9] = v10;
  if (v6)
  {
    *&v11 = v7;
    *(&v11 + 1) = v8;
    v22 = v11;
    *&v11 = v9;
    *(&v11 + 1) = v10;
    v21 = v11;
    v12 = v4;
    v13 = v5;
  }

  else
  {
    v13 = *(v1 + 80);
    if (v13)
    {
      v16 = v13;
      goto LABEL_3;
    }

    v12 = 0;
    v21 = 0u;
    v22 = 0u;
  }

  sub_25B059834(v4, v6, v5, v7, v8, v9, v10);
  os_unfair_lock_unlock(v1);
  if (v6)
  {
    v14 = v0[2];
    *v14 = v12;
    *(v14 + 8) = v6;
    *(v14 + 16) = v13;
    *(v14 + 40) = v21;
    *(v14 + 24) = v22;
    v3 = v0[1];
    goto LABEL_8;
  }

  v17 = *(MEMORY[0x277D85A40] + 4);
  v18 = swift_task_alloc();
  v0[10] = v18;
  *v18 = v0;
  v18[1] = sub_25B059130;
  v19 = v0[2];
  v20 = v0[3];

  return MEMORY[0x2822008A0](v19, 0, 0, 0x746C75736572, 0xE600000000000000, sub_25B0598A4, v20, &type metadata for FaceRequest.Result);
}

uint64_t sub_25B059130()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_25B0592B4;
  }

  else
  {
    v3 = sub_25B059244;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25B059244()
{
  sub_25B0505A8(*(v0 + 32), 0, *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25B0592B4()
{
  sub_25B0505A8(*(v0 + 32), 0, *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2();
}

void sub_25B059324(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31348, &unk_25B0E6870);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState;
  os_unfair_lock_lock(v9);
  (*(v5 + 16))(v8, a1, v4);
  v10 = *(v9 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v9 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_25B089A64(0, v10[2] + 1, 1, v10);
    *(v9 + 16) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_25B089A64(v12 > 1, v13 + 1, 1, v10);
    *(v9 + 16) = v10;
  }

  v10[2] = v13 + 1;
  (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v4);
  os_unfair_lock_unlock(v9);
}

uint64_t sub_25B0594C0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  result = *(*a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible);
  if (result == *(*a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
  {
    return _s15NanoFaceGallery0B9PlacementV1loiySbAC_ACtFZ_0(v2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement, *a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement);
  }

  return result;
}

BOOL sub_25B0594F8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible);
  if (v3 == *(v2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
  {
    LOBYTE(v3) = _s15NanoFaceGallery0B9PlacementV1loiySbAC_ACtFZ_0(*a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement, v2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement);
  }

  return (v3 & 1) == 0;
}

BOOL sub_25B05954C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible);
  if (v3 == *(*a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
  {
    LOBYTE(v3) = _s15NanoFaceGallery0B9PlacementV1loiySbAC_ACtFZ_0(v2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement, *a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement);
  }

  return (v3 & 1) == 0;
}

uint64_t sub_25B0595A0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  result = *(*a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible);
  if (result == *(v2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
  {
    return _s15NanoFaceGallery0B9PlacementV1loiySbAC_ACtFZ_0(*a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement, v2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement);
  }

  return result;
}

BOOL _s15NanoFaceGallery0B7RequestC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState));
  v5 = *(v4 + 8);
  os_unfair_lock_unlock(v4);
  v6 = a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState;
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState));
  v7 = *(v6 + 8);
  os_unfair_lock_unlock(v6);
  result = 0;
  if (v5 == v7 && *(a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible) == *(a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_visible))
  {
    v8 = a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
    v9 = a2 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
    if (MEMORY[0x25F85F260](v8, v9))
    {
      v10 = type metadata accessor for FacePlacement(0);
      if (*(v8 + *(v10 + 20)) == *(v9 + *(v10 + 20)))
      {
        v11 = *(type metadata accessor for FacePlacement.Location(0) + 20);
        if (sub_25B0E2520())
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_25B0596E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FacePlacement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B059744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FacePlacement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0597A8(uint64_t a1)
{
  v2 = type metadata accessor for FacePlacement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25B059834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  if (a2)
  {

    v9 = a5;
    v10 = a6;

    v11 = a7;
  }
}

unint64_t sub_25B0598AC()
{
  result = qword_27FA31358;
  if (!qword_27FA31358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31358);
  }

  return result;
}

uint64_t sub_25B059948(uint64_t a1)
{
  result = sub_25B059A34(&qword_27FA31360, type metadata accessor for FaceRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for FaceRequest()
{
  result = qword_27FA31370;
  if (!qword_27FA31370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B059A34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25B059A84()
{
  result = type metadata accessor for FacePlacement(319);
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25B059B70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25B059BB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15NanoFaceGallery0B7RequestC6ResultVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_25B059C58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_25B059CA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25B059D08()
{
  result = qword_27FA31388;
  if (!qword_27FA31388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31388);
  }

  return result;
}

uint64_t sub_25B059D60()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31390);
  __swift_project_value_buffer(v0, qword_27FA31390);
  return sub_25B0E2960();
}

uint64_t sub_25B059DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v5[32] = v6;
  v7 = *(v6 - 8);
  v5[33] = v7;
  v8 = *(v7 + 64) + 15;
  v5[34] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0) - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v5[36] = v10;
  v11 = *(v10 - 8);
  v5[37] = v11;
  v12 = *(v11 + 64) + 15;
  v5[38] = swift_task_alloc();
  v13 = swift_task_alloc();
  v5[39] = v13;
  *v13 = v5;
  v13[1] = sub_25B059F7C;

  return sub_25B05F058();
}

uint64_t sub_25B059F7C(uint64_t a1)
{
  v3 = *(*v2 + 312);
  v6 = *v2;
  *(*v2 + 320) = a1;

  if (v1)
  {

    v4 = sub_25B05C52C;
  }

  else
  {
    v4 = sub_25B05A098;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25B05A098()
{
  if (v0[40])
  {
    if (sub_25B0E39F0())
    {
      v1 = swift_task_alloc();
      v0[49] = v1;
      *v1 = v0;
      v2 = sub_25B05AD80;
    }

    else
    {
      v14 = v0[31];
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      v0[41] = Strong;
      v1 = swift_task_alloc();
      v0[42] = v1;
      *v1 = v0;
      if (Strong)
      {
        v2 = sub_25B05A370;
      }

      else
      {
        v2 = sub_25B05AAA8;
      }
    }

    v1[1] = v2;
    v22 = v0[30];

    return sub_25B05CA70(v22);
  }

  else
  {
    v3 = v0[36];
    v4 = v0[37];
    v5 = v0[35];
    v6 = v0[30];
    v7 = v6[10];
    v8 = v6[11];
    __swift_project_boxed_opaque_existential_1(v6 + 7, v7);
    (*(v8 + 32))(v7, v8);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      sub_25B058448(v0[35], &qword_27FA313B8, &unk_25B0E72A0);
      v9 = v0[38];
      v10 = v0[34];
      v11 = v0[35];

      v12 = v0[1];

      return v12();
    }

    else
    {
      v16 = v0[34];
      v17 = v0[31];
      (*(v0[37] + 32))(v0[38], v0[35], v0[36]);
      sub_25B0E39A0();
      swift_beginAccess();
      v18 = *(MEMORY[0x277D85798] + 4);
      v19 = swift_task_alloc();
      v0[52] = v19;
      *v19 = v0;
      v19[1] = sub_25B05B058;
      v20 = v0[34];
      v21 = v0[32];

      return MEMORY[0x2822003E8](v0 + 72, 0, 0, v21);
    }
  }
}

uint64_t sub_25B05A370(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v6 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = a2;

  return MEMORY[0x2822009F8](sub_25B05A470, 0, 0);
}

uint64_t sub_25B05A470()
{
  v21 = v0;
  if (qword_27FA30C98 != -1)
  {
    swift_once();
  }

  v1 = v0[44];
  v2 = sub_25B0E2970();
  __swift_project_value_buffer(v2, qword_27FA31390);

  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[44];
  if (v5)
  {
    v7 = v0[43];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    v10 = sub_25B04BE04(v7, v6, &v20);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_25B03D000, v3, v4, "Auto-updating provider for %s storing initial update", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x25F8613E0](v9, -1, -1);
    MEMORY[0x25F8613E0](v8, -1, -1);
  }

  else
  {
  }

  v11 = v0[40];
  v12 = v0[30];
  v13 = v12[15];
  v14 = v12[16];
  __swift_project_boxed_opaque_existential_1(v12 + 12, v13);
  v0[22] = type metadata accessor for PreloadedSnapshot();
  v0[23] = &off_286C5A298;
  v0[19] = v11;
  v15 = *(v14 + 16);

  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[45] = v17;
  *v17 = v0;
  v17[1] = sub_25B05A718;

  return (v19)(v0 + 8, v0 + 19, v13, v14);
}

uint64_t sub_25B05A718()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v10 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {

    v4 = sub_25B05C6FC;
  }

  else
  {
    v5 = v2[9];
    v6 = v2[11];
    v7 = v2[12];
    v8 = v2[13];

    __swift_destroy_boxed_opaque_existential_1(v2 + 19);
    v4 = sub_25B05A864;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_25B05A864()
{
  v1 = v0[46];
  v2 = v0[41];
  os_unfair_lock_lock(v2 + 4);
  sub_25B05D300(&v2[6]);
  if (v1)
  {

    os_unfair_lock_unlock(v2 + 4);
  }

  else
  {
    v3 = v0[40];
    v4 = v0[41];
    os_unfair_lock_unlock(v2 + 4);

    v5 = v0[36];
    v6 = v0[37];
    v7 = v0[35];
    v8 = v0[30];
    v9 = v8[10];
    v10 = v8[11];
    __swift_project_boxed_opaque_existential_1(v8 + 7, v9);
    (*(v10 + 32))(v9, v10);
    if ((*(v6 + 48))(v7, 1, v5) == 1)
    {
      sub_25B058448(v0[35], &qword_27FA313B8, &unk_25B0E72A0);
      v11 = v0[38];
      v12 = v0[34];
      v13 = v0[35];

      v14 = v0[1];

      v14();
    }

    else
    {
      v15 = v0[34];
      v16 = v0[31];
      (*(v0[37] + 32))(v0[38], v0[35], v0[36]);
      sub_25B0E39A0();
      swift_beginAccess();
      v17 = *(MEMORY[0x277D85798] + 4);
      v18 = swift_task_alloc();
      v0[52] = v18;
      *v18 = v0;
      v18[1] = sub_25B05B058;
      v19 = v0[34];
      v20 = v0[32];

      MEMORY[0x2822003E8](v0 + 72, 0, 0, v20);
    }
  }
}

uint64_t sub_25B05AAA8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v6 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = a2;

  return MEMORY[0x2822009F8](sub_25B05ABA8, 0, 0);
}

uint64_t sub_25B05ABA8()
{
  v19 = v0;
  if (qword_27FA30C98 != -1)
  {
    swift_once();
  }

  v1 = v0[48];
  v2 = sub_25B0E2970();
  __swift_project_value_buffer(v2, qword_27FA31390);

  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[48];
  if (v5)
  {
    v7 = v0[47];
    v8 = v0[40];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = sub_25B04BE04(v7, v6, &v18);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_25B03D000, v3, v4, "Initial auto-updating provider for %s vanished", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x25F8613E0](v10, -1, -1);
    MEMORY[0x25F8613E0](v9, -1, -1);
  }

  else
  {
    v12 = v0[40];
  }

  v13 = v0[38];
  v14 = v0[34];
  v15 = v0[35];

  v16 = v0[1];

  return v16();
}

uint64_t sub_25B05AD80(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 392);
  v6 = *v2;
  *(v3 + 400) = a1;
  *(v3 + 408) = a2;

  return MEMORY[0x2822009F8](sub_25B05AE80, 0, 0);
}

uint64_t sub_25B05AE80()
{
  v19 = v0;
  if (qword_27FA30C98 != -1)
  {
    swift_once();
  }

  v1 = v0[51];
  v2 = sub_25B0E2970();
  __swift_project_value_buffer(v2, qword_27FA31390);

  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[51];
  if (v5)
  {
    v7 = v0[50];
    v8 = v0[40];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = sub_25B04BE04(v7, v6, &v18);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_25B03D000, v3, v4, "Initial provider updates for %s cancelled", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x25F8613E0](v10, -1, -1);
    MEMORY[0x25F8613E0](v9, -1, -1);
  }

  else
  {
    v12 = v0[40];
  }

  v13 = v0[38];
  v14 = v0[34];
  v15 = v0[35];

  v16 = v0[1];

  return v16();
}

uint64_t sub_25B05B058()
{
  v1 = *(*v0 + 416);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25B05B154, 0, 0);
}

uint64_t sub_25B05B154()
{
  if (*(v0 + 576) == 1)
  {
    v2 = *(v0 + 296);
    v1 = *(v0 + 304);
    v3 = *(v0 + 288);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    (*(v2 + 8))(v1, v3);
    v4 = *(v0 + 304);
    v5 = *(v0 + 272);
    v6 = *(v0 + 280);

    v7 = *(v0 + 8);

    return v7();
  }

  if (sub_25B0E39F0())
  {
    v9 = swift_task_alloc();
    *(v0 + 552) = v9;
    *v9 = v0;
    v10 = sub_25B05C1DC;
LABEL_12:
    v9[1] = v10;
    v15 = *(v0 + 240);

    return sub_25B05CA70(v15);
  }

  v11 = *(v0 + 248);
  Strong = swift_weakLoadStrong();
  *(v0 + 424) = Strong;
  if (!Strong)
  {
    v9 = swift_task_alloc();
    *(v0 + 528) = v9;
    *v9 = v0;
    v10 = sub_25B05BE8C;
    goto LABEL_12;
  }

  v13 = swift_task_alloc();
  *(v0 + 432) = v13;
  *v13 = v0;
  v13[1] = sub_25B05B34C;
  v14 = *(v0 + 240);

  return sub_25B05F058();
}

uint64_t sub_25B05B34C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  *(*v2 + 440) = a1;

  if (v1)
  {

LABEL_3:

    return MEMORY[0x2822009F8](sub_25B05BAF0, 0, 0);
  }

  if (!a1)
  {
    goto LABEL_3;
  }

  v7 = swift_task_alloc();
  *(v4 + 448) = v7;
  *v7 = v6;
  v7[1] = sub_25B05B4DC;
  v8 = *(v4 + 240);

  return sub_25B05CA70(v8);
}

uint64_t sub_25B05B4DC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 448);
  v6 = *v2;
  *(v3 + 456) = a1;
  *(v3 + 464) = a2;

  return MEMORY[0x2822009F8](sub_25B05B5DC, 0, 0);
}

uint64_t sub_25B05B5DC()
{
  v21 = v0;
  if (qword_27FA30C98 != -1)
  {
    swift_once();
  }

  v1 = v0[58];
  v2 = sub_25B0E2970();
  __swift_project_value_buffer(v2, qword_27FA31390);

  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[58];
  if (v5)
  {
    v7 = v0[57];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    v10 = sub_25B04BE04(v7, v6, &v20);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_25B03D000, v3, v4, "Auto-updating provider for %s storing snapshot", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x25F8613E0](v9, -1, -1);
    MEMORY[0x25F8613E0](v8, -1, -1);
  }

  else
  {
  }

  v11 = v0[55];
  v12 = v0[30];
  v13 = v12[15];
  v14 = v12[16];
  __swift_project_boxed_opaque_existential_1(v12 + 12, v13);
  v0[17] = type metadata accessor for PreloadedSnapshot();
  v0[18] = &off_286C5A298;
  v0[14] = v11;
  v15 = *(v14 + 16);

  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[59] = v17;
  *v17 = v0;
  v17[1] = sub_25B05B884;

  return (v19)(v0 + 2, v0 + 14, v13, v14);
}

uint64_t sub_25B05B884()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v10 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {

    v4 = sub_25B05C948;
  }

  else
  {
    v5 = v2[3];
    v6 = v2[5];
    v7 = v2[6];
    v8 = v2[7];

    __swift_destroy_boxed_opaque_existential_1(v2 + 14);
    v4 = sub_25B05B9D0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_25B05B9D0()
{
  v1 = v0[60];
  v2 = v0[53];
  os_unfair_lock_lock(v2 + 4);
  sub_25B05D300(&v2[6]);
  if (v1)
  {

    os_unfair_lock_unlock(v2 + 4);
  }

  else
  {
    v3 = v0[55];
    v4 = v0[53];
    os_unfair_lock_unlock(v2 + 4);

    v5 = *(MEMORY[0x277D85798] + 4);
    v6 = swift_task_alloc();
    v0[52] = v6;
    *v6 = v0;
    v6[1] = sub_25B05B058;
    v7 = v0[34];
    v8 = v0[32];

    MEMORY[0x2822003E8](v0 + 72, 0, 0, v8);
  }
}

uint64_t sub_25B05BAF0()
{
  v0[61] = __swift_project_boxed_opaque_existential_1((v0[30] + 16), *(v0[30] + 40));
  sub_25B0E3900();
  v0[62] = sub_25B0E38F0();
  v2 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B05BB98, v2, v1);
}

uint64_t sub_25B05BB98()
{
  v2 = v0[61];
  v1 = v0[62];

  v3 = *v2;
  v4 = [v3 dailySnapshotKey];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v4;
  sub_25B0E3740();
  v9 = v8;

  v4 = [v3 unsafeDailySnapshotKey];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v10 = v4;
  v0[63] = v9;
  v11 = sub_25B0E3740();
  v13 = v12;

  v0[64] = v11;
  v0[65] = v13;
  v4 = sub_25B05BC7C;
  v5 = 0;
  v6 = 0;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_25B05BC7C()
{
  v20 = v0;
  v1 = v0[63];

  if (qword_27FA30C98 != -1)
  {
    swift_once();
  }

  v2 = v0[65];
  v3 = sub_25B0E2970();
  __swift_project_value_buffer(v3, qword_27FA31390);

  v4 = sub_25B0E2950();
  v5 = sub_25B0E3A50();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[65];
  if (v6)
  {
    v8 = v0[64];
    v9 = v0[53];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    v12 = sub_25B04BE04(v8, v7, &v19);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_25B03D000, v4, v5, "Provider snapshot for %s failed to fetch", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x25F8613E0](v11, -1, -1);
    MEMORY[0x25F8613E0](v10, -1, -1);
  }

  else
  {
    v13 = v0[53];
  }

  v14 = *(MEMORY[0x277D85798] + 4);
  v15 = swift_task_alloc();
  v0[52] = v15;
  *v15 = v0;
  v15[1] = sub_25B05B058;
  v16 = v0[34];
  v17 = v0[32];

  return MEMORY[0x2822003E8](v0 + 72, 0, 0, v17);
}

uint64_t sub_25B05BE8C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 528);
  v6 = *v2;
  *(v3 + 536) = a1;
  *(v3 + 544) = a2;

  return MEMORY[0x2822009F8](sub_25B05BF90, 0, 0);
}

uint64_t sub_25B05BF90()
{
  v29 = v0;
  if (qword_27FA30C98 != -1)
  {
    swift_once();
  }

  v1 = v0[68];
  v2 = sub_25B0E2970();
  __swift_project_value_buffer(v2, qword_27FA31390);

  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[68];
  if (v5)
  {
    v7 = v0[67];
    v8 = v0[37];
    v26 = v0[36];
    v27 = v0[38];
    v9 = v0[33];
    v25 = v0[34];
    v10 = v0[32];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136315138;
    v13 = sub_25B04BE04(v7, v6, &v28);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_25B03D000, v3, v4, "Auto-updating provider for %s vanished", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x25F8613E0](v12, -1, -1);
    MEMORY[0x25F8613E0](v11, -1, -1);

    (*(v9 + 8))(v25, v10);
    (*(v8 + 8))(v27, v26);
  }

  else
  {
    v15 = v0[37];
    v14 = v0[38];
    v16 = v0[36];
    v18 = v0[33];
    v17 = v0[34];
    v19 = v0[32];

    (*(v18 + 8))(v17, v19);
    (*(v15 + 8))(v14, v16);
  }

  v20 = v0[38];
  v21 = v0[34];
  v22 = v0[35];

  v23 = v0[1];

  return v23();
}

uint64_t sub_25B05C1DC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 552);
  v6 = *v2;
  *(v3 + 560) = a1;
  *(v3 + 568) = a2;

  return MEMORY[0x2822009F8](sub_25B05C2E0, 0, 0);
}

uint64_t sub_25B05C2E0()
{
  v29 = v0;
  if (qword_27FA30C98 != -1)
  {
    swift_once();
  }

  v1 = v0[71];
  v2 = sub_25B0E2970();
  __swift_project_value_buffer(v2, qword_27FA31390);

  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[71];
  if (v5)
  {
    v7 = v0[70];
    v8 = v0[37];
    v26 = v0[36];
    v27 = v0[38];
    v9 = v0[33];
    v25 = v0[34];
    v10 = v0[32];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136315138;
    v13 = sub_25B04BE04(v7, v6, &v28);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_25B03D000, v3, v4, "Provider updates for %s cancelled", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x25F8613E0](v12, -1, -1);
    MEMORY[0x25F8613E0](v11, -1, -1);

    (*(v9 + 8))(v25, v10);
    (*(v8 + 8))(v27, v26);
  }

  else
  {
    v15 = v0[37];
    v14 = v0[38];
    v16 = v0[36];
    v18 = v0[33];
    v17 = v0[34];
    v19 = v0[32];

    (*(v18 + 8))(v17, v19);
    (*(v15 + 8))(v14, v16);
  }

  v20 = v0[38];
  v21 = v0[34];
  v22 = v0[35];

  v23 = v0[1];

  return v23();
}

uint64_t sub_25B05C52C()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[30];
  v5 = v4[10];
  v6 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v5);
  (*(v6 + 32))(v5, v6);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_25B058448(v0[35], &qword_27FA313B8, &unk_25B0E72A0);
    v7 = v0[38];
    v8 = v0[34];
    v9 = v0[35];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[34];
    v13 = v0[31];
    (*(v0[37] + 32))(v0[38], v0[35], v0[36]);
    sub_25B0E39A0();
    swift_beginAccess();
    v14 = *(MEMORY[0x277D85798] + 4);
    v15 = swift_task_alloc();
    v0[52] = v15;
    *v15 = v0;
    v15[1] = sub_25B05B058;
    v16 = v0[34];
    v17 = v0[32];

    return MEMORY[0x2822003E8](v0 + 72, 0, 0, v17);
  }
}

uint64_t sub_25B05C6FC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  v1 = v0[41];
  os_unfair_lock_lock(v1 + 4);
  sub_25B05D300(&v1[6]);
  v2 = v0[40];
  v3 = v0[41];
  os_unfair_lock_unlock(v1 + 4);

  v4 = v0[36];
  v5 = v0[37];
  v6 = v0[35];
  v7 = v0[30];
  v8 = v7[10];
  v9 = v7[11];
  __swift_project_boxed_opaque_existential_1(v7 + 7, v8);
  (*(v9 + 32))(v8, v9);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    sub_25B058448(v0[35], &qword_27FA313B8, &unk_25B0E72A0);
    v10 = v0[38];
    v11 = v0[34];
    v12 = v0[35];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[34];
    v16 = v0[31];
    (*(v0[37] + 32))(v0[38], v0[35], v0[36]);
    sub_25B0E39A0();
    swift_beginAccess();
    v17 = *(MEMORY[0x277D85798] + 4);
    v18 = swift_task_alloc();
    v0[52] = v18;
    *v18 = v0;
    v18[1] = sub_25B05B058;
    v19 = v0[34];
    v20 = v0[32];

    return MEMORY[0x2822003E8](v0 + 72, 0, 0, v20);
  }
}

uint64_t sub_25B05C948()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v1 = v0[53];
  os_unfair_lock_lock(v1 + 4);
  sub_25B05D300(&v1[6]);
  v2 = v0[55];
  v3 = v0[53];
  os_unfair_lock_unlock(v1 + 4);

  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[52] = v5;
  *v5 = v0;
  v5[1] = sub_25B05B058;
  v6 = v0[34];
  v7 = v0[32];

  return MEMORY[0x2822003E8](v0 + 72, 0, 0, v7);
}

uint64_t sub_25B05CA90()
{
  v0[3] = __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  sub_25B0E3900();
  v0[4] = sub_25B0E38F0();
  v2 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B05CB38, v2, v1);
}

uint64_t sub_25B05CB38()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = *v2;
  v4 = [v3 dailySnapshotKey];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v4;
  sub_25B0E3740();
  v9 = v8;

  v4 = [v3 unsafeDailySnapshotKey];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v10 = v4;
  v0[5] = v9;
  v11 = sub_25B0E3740();
  v13 = v12;

  v0[6] = v11;
  v0[7] = v13;
  v4 = sub_25B05CC18;
  v5 = 0;
  v6 = 0;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_25B05CC18()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[6];
  v4 = v0[7];

  return v2(v3, v4);
}

uint64_t sub_25B05CC7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v10 - v3;
  sub_25B049F48(*(v0 + 40) + 16, v11);
  v5 = sub_25B0E3940();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_25B049F48(v11, v10);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_25B03F164(v10, v6 + 32);
  sub_25B052F48(0, 0, v4, &unk_25B0E6958, v6);

  os_unfair_lock_lock((v0 + 16));
  sub_25B05D12C((v0 + 24));
  os_unfair_lock_unlock((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_25B05EB70(v0 + 24);
  v7 = *(v0 + 40);

  return v0;
}

uint64_t sub_25B05CDFC()
{
  *(v0 + 24) = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_25B0E3900();
  *(v0 + 32) = sub_25B0E38F0();
  v2 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B05CEA0, v2, v1);
}

uint64_t sub_25B05CEA0()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = *v2;
  v4 = [v3 dailySnapshotKey];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v4;
  sub_25B0E3740();
  v9 = v8;

  v4 = [v3 unsafeDailySnapshotKey];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v10 = v4;
  v0[5] = v9;
  v11 = sub_25B0E3740();
  v13 = v12;

  v0[6] = v11;
  v0[7] = v13;
  v4 = sub_25B05CF80;
  v5 = 0;
  v6 = 0;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_25B05CF80()
{
  v15 = v0;
  v1 = v0[5];

  if (qword_27FA30C98 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = sub_25B0E2970();
  __swift_project_value_buffer(v3, qword_27FA31390);

  v4 = sub_25B0E2950();
  v5 = sub_25B0E3A50();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    v11 = sub_25B04BE04(v8, v7, &v14);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_25B03D000, v4, v5, "Auto-updating provider %s went away", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x25F8613E0](v10, -1, -1);
    MEMORY[0x25F8613E0](v9, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_25B05D12C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  result = *a1;
  if (*a1)
  {
    result = sub_25B0E39E0();
  }

  v8 = a1[1];
  v9 = *(v8 + 16);
  if (v9)
  {
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v6, v13, v2);
      sub_25B0E3990();
      result = (*(v10 - 8))(v6, v2);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_25B05D28C()
{
  sub_25B05CC7C();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_25B05D300(uint64_t a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v2 = *(v44 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v44);
  v43 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v46 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v29 = a1;
  result = *(a1 + 8);
  v41 = *(result + 16);
  if (v41)
  {
    v15 = 0;
    v37 = (v2 + 32);
    v38 = v11 + 16;
    v36 = (v2 + 88);
    v35 = *MEMORY[0x277D85758];
    v34 = *MEMORY[0x277D85750];
    v32 = *MEMORY[0x277D85748];
    v30 = (v11 + 8);
    v31 = (v2 + 8);
    v45 = (v11 + 32);
    v16 = MEMORY[0x277D84F90];
    v33 = v7;
    v39 = result;
    v40 = v11;
    while (1)
    {
      if (v15 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v18 = *(v11 + 72);
      (*(v11 + 16))(v13, result + v17 + v18 * v15, v7);
      v19 = v42;
      sub_25B0E3970();
      v21 = v43;
      v20 = v44;
      (*v37)(v43, v19, v44);
      v22 = (*v36)(v21, v20);
      if (v22 == v35 || v22 == v34)
      {
        goto LABEL_12;
      }

      if (v22 != v32)
      {
        break;
      }

      (*v30)(v13, v7);
LABEL_4:
      ++v15;
      v11 = v40;
      result = v39;
      if (v41 == v15)
      {
        goto LABEL_18;
      }
    }

    (*v31)(v43, v44);
LABEL_12:
    v24 = *v45;
    (*v45)(v46, v13, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25B08C168(0, *(v16 + 16) + 1, 1);
      v16 = v47;
    }

    v27 = *(v16 + 16);
    v26 = *(v16 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_25B08C168(v26 > 1, v27 + 1, 1);
      v16 = v47;
    }

    *(v16 + 16) = v27 + 1;
    v28 = v16 + v17 + v27 * v18;
    v7 = v33;
    v24(v28, v46, v33);
    goto LABEL_4;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_18:

  *(v29 + 8) = v16;
  return result;
}

uint64_t sub_25B05D6D0()
{
  v1[7] = v0;
  v1[8] = sub_25B0E3900();
  v1[9] = sub_25B0E38F0();
  v3 = sub_25B0E3850();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](sub_25B05D76C, v3, v2);
}

uint64_t sub_25B05D76C()
{
  v1 = v0[8];
  v2 = *(v0[7] + 40);
  v0[12] = v2;
  sub_25B049F48(v2 + 16, (v0 + 2));
  v0[13] = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[14] = sub_25B0E38F0();
  v4 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B05D81C, v4, v3);
}

uint64_t sub_25B05D81C()
{
  v2 = v0[13];
  v1 = v0[14];

  v3 = *v2;
  v4 = [v3 dailySnapshotKey];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v4;
  sub_25B0E3740();
  v9 = v8;

  v4 = [v3 unsafeDailySnapshotKey];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v10 = v4;
  v0[15] = v9;
  v11 = sub_25B0E3740();
  v13 = v12;

  v0[16] = v11;
  v0[17] = v13;
  v5 = v0[10];
  v6 = v0[11];
  v4 = sub_25B05D8F8;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_25B05D8F8()
{
  v14 = v0;
  v1 = v0[15];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_27FA30C98 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v3 = sub_25B0E2970();
  v0[18] = __swift_project_value_buffer(v3, qword_27FA31390);

  v4 = sub_25B0E2950();
  v5 = sub_25B0E3A50();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_25B04BE04(v7, v6, &v13);
    _os_log_impl(&dword_25B03D000, v4, v5, "Auto-updating provider for %s wants snapshot", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x25F8613E0](v9, -1, -1);
    MEMORY[0x25F8613E0](v8, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_25B05DAC8;
  v11 = v0[12];

  return sub_25B05F058();
}

uint64_t sub_25B05DAC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 168) = v1;

  v7 = *(v3 + 88);
  v8 = *(v3 + 80);
  if (v1)
  {
    v9 = sub_25B05DDC4;
  }

  else
  {
    v9 = sub_25B05DC0C;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_25B05DC0C()
{
  v18 = v0;
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[9];

  swift_retain_n();

  v5 = sub_25B0E2950();
  v6 = sub_25B0E3A50();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[20];
    v9 = v0[16];
    v8 = v0[17];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    v12 = sub_25B04BE04(v9, v8, &v17);

    *(v10 + 4) = v12;
    *(v10 + 12) = 1024;

    *(v10 + 14) = v7 != 0;

    _os_log_impl(&dword_25B03D000, v5, v6, "Auto-updating provider for %s vending snapshot %{BOOL}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x25F8613E0](v11, -1, -1);
    MEMORY[0x25F8613E0](v10, -1, -1);
  }

  else
  {
    v13 = v0[17];
  }

  v14 = v0[1];
  v15 = v0[20];

  return v14(v15);
}

uint64_t sub_25B05DDC4()
{
  v23 = v0;
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[9];

  v5 = v1;
  v6 = sub_25B0E2950();
  v7 = sub_25B0E3A50();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[21];
    v10 = v0[16];
    v9 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v11 = 136315394;
    v14 = sub_25B04BE04(v10, v9, &v22);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v12 = v16;
    _os_log_impl(&dword_25B03D000, v6, v7, "Auto-updating provider for %s failed to vend snapshot %@", v11, 0x16u);
    sub_25B058448(v12, &unk_27FA31850, &qword_25B0E74B0);
    MEMORY[0x25F8613E0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x25F8613E0](v13, -1, -1);
    MEMORY[0x25F8613E0](v11, -1, -1);
  }

  else
  {
    v17 = v0[17];
  }

  v18 = v0[21];
  swift_willThrow();
  v19 = v0[1];
  v20 = v0[21];

  return v19();
}

uint64_t sub_25B05DFAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31820, &unk_25B0E6910);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v35 - v6);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v38);
  v41 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v10);
  v40 = (&v35 - v12);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v35 - v17;
  v19 = sub_25B0E3940();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v1;

  sub_25B052F48(0, 0, v18, &unk_25B0E6930, v20);

  *v7 = 1;
  (*(v4 + 104))(v7, *MEMORY[0x277D85768], v3);
  v36 = v14;
  sub_25B0E3950();
  (*(v4 + 8))(v7, v3);
  v21 = *(v8 + 16);
  v22 = v40;
  v23 = v14;
  v24 = v38;
  v21(v40, v23, v38);
  v25 = *(v8 + 80);
  v26 = swift_allocObject();
  v39 = v8;
  v37 = *(v8 + 32);
  v37(v26 + ((v25 + 16) & ~v25), v22, v24);
  v27 = v36;
  sub_25B0E3960();
  os_unfair_lock_lock(v2 + 4);
  v21(v41, v27, v24);
  v28 = *&v2[8]._os_unfair_lock_opaque;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v2;
  *&v2[8]._os_unfair_lock_opaque = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = sub_25B089A40(0, v28[2] + 1, 1, v28);
    *&v40[8]._os_unfair_lock_opaque = v28;
  }

  v31 = v28[2];
  v30 = v28[3];
  if (v31 >= v30 >> 1)
  {
    v28 = sub_25B089A40(v30 > 1, v31 + 1, 1, v28);
    *&v40[8]._os_unfair_lock_opaque = v28;
  }

  v28[2] = v31 + 1;
  v32 = v39;
  v37(v28 + ((v25 + 32) & ~v25) + *(v39 + 72) * v31, v41, v24);
  os_unfair_lock_unlock(v40 + 4);
  (*(v32 + 8))(v27, v24);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  return (*(*(v33 - 8) + 56))(v42, 0, 1, v33);
}

uint64_t sub_25B05E490()
{
  sub_25B049F48(*(v0[7] + 40) + 16, (v0 + 2));
  v0[8] = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_25B0E3900();
  v0[9] = sub_25B0E38F0();
  v2 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B05E548, v2, v1);
}

uint64_t sub_25B05E548()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = *v2;
  v4 = [v3 dailySnapshotKey];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v4;
  sub_25B0E3740();
  v9 = v8;

  v4 = [v3 unsafeDailySnapshotKey];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v10 = v4;
  v0[10] = v9;
  v11 = sub_25B0E3740();
  v13 = v12;

  v0[11] = v11;
  v0[12] = v13;
  v4 = sub_25B05E628;
  v5 = 0;
  v6 = 0;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_25B05E628()
{
  v15 = v0;
  v1 = v0[10];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_27FA30C98 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = sub_25B0E2970();
  __swift_project_value_buffer(v3, qword_27FA31390);

  v4 = sub_25B0E2950();
  v5 = sub_25B0E3A50();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = v0[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    v11 = sub_25B04BE04(v8, v7, &v14);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_25B03D000, v4, v5, "Auto-updating updates requested for %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x25F8613E0](v10, -1, -1);
    MEMORY[0x25F8613E0](v9, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_25B05E7DC(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25B05E870;

  return sub_25B05D6D0();
}

uint64_t sub_25B05E870(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_25B05E9A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B0498DC;

  return sub_25B05E470(a1, v4, v5, v6);
}

uint64_t sub_25B05EA58()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_25B0E3990();
}

uint64_t sub_25B05EAC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25B05859C;

  return sub_25B05CDDC(a1, v4, v5, v1 + 32);
}

uint64_t sub_25B05EBA0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  *(v1 + 16) = 0;
  v7 = MEMORY[0x277D84F90];
  *(v1 + 24) = 0;
  *(v1 + 32) = v7;
  *(v1 + 40) = a1;

  os_unfair_lock_lock((v1 + 16));
  v8 = sub_25B0E3940();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = v9;

  v11 = sub_25B052F48(0, 0, v6, &unk_25B0E6968, v10);
  v12 = *(v1 + 24);
  *(v1 + 24) = v11;

  os_unfair_lock_unlock((v1 + 16));
  return v1;
}

uint64_t sub_25B05ED18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25B05859C;

  return sub_25B059DE0(a1, v4, v5, v7, v6);
}

unint64_t sub_25B05EDD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_25B068A88(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v16;
  }

  else
  {
    v9 = *v2;
    result = sub_25B065D8C(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v17 = *v3;
      if (!v13)
      {
        sub_25B069B20();
        v14 = v17;
      }

      v15 = *(*(v14 + 56) + 8 * v11);

      result = sub_25B06810C(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

uint64_t sub_25B05EE98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_25B068DA0(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_25B0E23C0();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v23;
  }

  else
  {
    v10 = *v2;
    v11 = sub_25B065C64(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v24 = *v3;
      if (!v15)
      {
        sub_25B069EFC();
        v16 = v24;
      }

      v17 = *(v16 + 48);
      v18 = sub_25B0E23C0();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);

      sub_25B06859C(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v21 = sub_25B0E23C0();
      v22 = *(*(v21 - 8) + 8);

      return v22(a2, v21);
    }
  }

  return result;
}

uint64_t sub_25B05F058()
{
  v1[24] = v0;
  v1[25] = sub_25B0E3900();
  v1[26] = sub_25B0E38F0();
  v2 = swift_task_alloc();
  v1[27] = v2;
  *v2 = v1;
  v2[1] = sub_25B05F108;

  return sub_25B062484();
}

uint64_t sub_25B05F108(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 200);
  v9 = *v1;
  v2[28] = a1;

  v7 = sub_25B0E3850();
  v2[29] = v7;
  v2[30] = v6;

  return MEMORY[0x2822009F8](sub_25B05F254, v7, v6);
}

uint64_t sub_25B05F254()
{
  v1 = v0[25];
  v0[31] = __swift_project_boxed_opaque_existential_1((v0[24] + 16), *(v0[24] + 40));
  v0[32] = sub_25B0E38F0();
  v3 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B05F2F0, v3, v2);
}

uint64_t sub_25B05F2F0()
{
  v2 = v0[31];
  v1 = v0[32];

  v3 = *v2;
  v4 = [v3 dailySnapshotKey];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v4;
  sub_25B0E3740();
  v9 = v8;

  v0[33] = v9;
  v4 = [v3 unsafeDailySnapshotKey];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v10 = v4;
  v11 = sub_25B0E3740();
  v13 = v12;

  v0[34] = v11;
  v0[35] = v13;
  v5 = v0[29];
  v6 = v0[30];
  v4 = sub_25B05F3CC;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_25B05F3CC()
{
  v30 = v0;
  if (v0[28])
  {
    v1 = v0[26];

    if (qword_27FA30CA0 != -1)
    {
      swift_once();
    }

    v2 = v0[35];
    v3 = v0[33];
    v4 = sub_25B0E2970();
    __swift_project_value_buffer(v4, qword_27FA313C0);

    v5 = sub_25B0E2950();
    v6 = sub_25B0E3A50();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[35];
    if (v7)
    {
      v10 = v0[33];
      v9 = v0[34];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v11 = 136315138;

      v13 = sub_25B04BE04(v9, v8, &v29);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_25B03D000, v5, v6, "Using preloaded snapshot for %s…", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x25F8613E0](v12, -1, -1);
      MEMORY[0x25F8613E0](v11, -1, -1);
    }

    else
    {
      v25 = v0[33];
    }

    v26 = v0[28];
    v27 = v0[1];

    return v27(v26);
  }

  else
  {
    v14 = v0[24];
    v15 = v14[10];
    v0[36] = v15;
    v16 = v14[11];
    v0[37] = v16;
    __swift_project_boxed_opaque_existential_1(v14 + 7, v15);
    v17 = *(v16 + 24);
    v0[38] = swift_getAssociatedTypeWitness();
    v18 = sub_25B0E3B10();
    v0[39] = v18;
    v19 = *(v18 - 8);
    v0[40] = v19;
    v20 = *(v19 + 64) + 15;
    v21 = swift_task_alloc();
    v0[41] = v21;
    v28 = (v17 + *v17);
    v22 = v17[1];
    v23 = swift_task_alloc();
    v0[42] = v23;
    *v23 = v0;
    v23[1] = sub_25B05F754;

    return v28(v21, v15, v16);
  }
}

uint64_t sub_25B05F754()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v10 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = v2[35];
    v5 = v2[33];

    v6 = v2[29];
    v7 = v2[30];
    v8 = sub_25B060644;
  }

  else
  {
    v6 = v2[29];
    v7 = v2[30];
    v8 = sub_25B05F87C;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_25B05F87C()
{
  v36 = v0;
  v1 = v0[41];
  v2 = v0[38];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[39];
    v5 = v0[40];
    v6 = v0[26];

    (*(v5 + 8))(v1, v4);

    if (qword_27FA30CA0 != -1)
    {
      swift_once();
    }

    v7 = v0[35];
    v8 = v0[33];
    v9 = sub_25B0E2970();
    __swift_project_value_buffer(v9, qword_27FA313C0);

    v10 = sub_25B0E2950();
    v11 = sub_25B0E3A50();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[35];
    if (v12)
    {
      v15 = v0[33];
      v14 = v0[34];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136315138;

      v18 = sub_25B04BE04(v14, v13, &v35);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_25B03D000, v10, v11, "Generator didn't generate snapshot for %s…", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x25F8613E0](v17, -1, -1);
      MEMORY[0x25F8613E0](v16, -1, -1);
    }

    else
    {
      v32 = v0[33];
    }

    v33 = v0[1];

    return v33(0);
  }

  else
  {
    v20 = v0[36];
    v19 = v0[37];
    v0[22] = v2;
    v0[23] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 19);
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);

    sub_25B03F164((v0 + 19), (v0 + 14));
    if (qword_27FA30CA0 != -1)
    {
      swift_once();
    }

    v22 = v0[35];
    v23 = v0[33];
    v24 = sub_25B0E2970();
    v0[44] = __swift_project_value_buffer(v24, qword_27FA313C0);

    v25 = sub_25B0E2950();
    v26 = sub_25B0E3A50();

    if (os_log_type_enabled(v25, v26))
    {
      v28 = v0[34];
      v27 = v0[35];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35 = v30;
      *v29 = 136315138;

      v31 = sub_25B04BE04(v28, v27, &v35);

      *(v29 + 4) = v31;
      _os_log_impl(&dword_25B03D000, v25, v26, "Storing snapshot for %s…", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x25F8613E0](v30, -1, -1);
      MEMORY[0x25F8613E0](v29, -1, -1);
    }

    return MEMORY[0x2822009F8](sub_25B05FCC8, 0, 0);
  }
}

uint64_t sub_25B05FCC8()
{
  v1 = *(v0 + 192);
  v2 = v1[15];
  v3 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 360) = v6;
  *v6 = v0;
  v6[1] = sub_25B05FDFC;

  return v8(v0 + 16, v0 + 112, v2, v3);
}

uint64_t sub_25B05FDFC()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v8 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = sub_25B060148;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = *(v2 + 232);
    v6 = *(v2 + 240);
    v4 = sub_25B05FF18;
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_25B05FF18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 376) = v2;
  *(v0 + 384) = v4;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  *(v0 + 64) = v1;
  *(v0 + 392) = v5;
  *(v0 + 400) = v6;
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  *(v0 + 96) = v5;
  *(v0 + 104) = v6;
  type metadata accessor for PreloadedSnapshot();
  swift_allocObject();

  v7 = v5;
  v8 = v6;
  v9 = swift_task_alloc();
  *(v0 + 408) = v9;
  *v9 = v0;
  v9[1] = sub_25B06001C;

  return sub_25B060778((v0 + 64));
}

uint64_t sub_25B06001C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;

  if (v1)
  {

    v7 = v4[29];
    v8 = v4[30];
    v9 = sub_25B060448;
  }

  else
  {
    v4[52] = a1;
    v7 = v4[29];
    v8 = v4[30];
    v9 = sub_25B060224;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_25B060148()
{
  v1 = v0[35];
  v2 = v0[33];

  v3 = v0[29];
  v4 = v0[30];

  return MEMORY[0x2822009F8](sub_25B0601B8, v3, v4);
}

uint64_t sub_25B0601B8()
{
  v1 = v0[26];

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v2 = v0[46];
  v3 = v0[1];

  return v3();
}

uint64_t sub_25B060224()
{
  v26 = v0;
  v1 = v0[52];
  v2 = v0[26];

  v3 = v0[44];
  v4 = v0[35];
  v5 = v0[33];

  v6 = sub_25B0E2950();
  v7 = sub_25B0E3A50();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[49];
  v9 = v0[50];
  v12 = v0[47];
  v11 = v0[48];
  v13 = v0[35];
  if (v8)
  {
    v14 = v0[33];
    v22 = v0[34];
    v24 = v0[50];
    v15 = swift_slowAlloc();
    v23 = v10;
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 67109378;
    *(v15 + 4) = v1 != 0;

    *(v15 + 8) = 2080;

    v17 = sub_25B04BE04(v22, v13, &v25);

    *(v15 + 10) = v17;
    _os_log_impl(&dword_25B03D000, v6, v7, "Returning snapshot %{BOOL}d for %s…", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x25F8613E0](v16, -1, -1);
    MEMORY[0x25F8613E0](v15, -1, -1);
  }

  else
  {
    v18 = v0[33];
    v19 = v0[47];
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v20 = v0[1];

  return v20(v1);
}

uint64_t sub_25B060448()
{
  v25 = v0;
  v1 = v0[26];

  v2 = v0[44];
  v3 = v0[35];
  v4 = v0[33];

  v5 = sub_25B0E2950();
  v6 = sub_25B0E3A50();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[49];
  v8 = v0[50];
  v11 = v0[47];
  v10 = v0[48];
  v12 = v0[35];
  if (v7)
  {
    v23 = v0[49];
    v14 = v0[33];
    v13 = v0[34];
    v22 = v0[50];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 67109378;
    *(v15 + 8) = 2080;

    v17 = sub_25B04BE04(v13, v12, &v24);

    *(v15 + 10) = v17;
    _os_log_impl(&dword_25B03D000, v5, v6, "Returning snapshot %{BOOL}d for %s…", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x25F8613E0](v16, -1, -1);
    MEMORY[0x25F8613E0](v15, -1, -1);
  }

  else
  {
    v18 = v0[33];
    v19 = v0[47];
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v20 = v0[1];

  return v20(0);
}

uint64_t sub_25B060644()
{
  v1 = v0[41];
  v2 = v0[26];

  v3 = v0[43];
  v4 = v0[1];

  return v4();
}

uint64_t sub_25B0606B4()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA313C0);
  __swift_project_value_buffer(v0, qword_27FA313C0);
  return sub_25B0E2960();
}

id sub_25B060734()
{
  result = [objc_allocWithZone(MEMORY[0x277CCA940]) init];
  dword_27FA313D8 = 0;
  qword_27FA313E0 = result;
  unk_27FA313E8 = MEMORY[0x277D84F98];
  return result;
}

uint64_t sub_25B060778(_OWORD *a1)
{
  v3 = v1;
  *(v2 + 120) = a1;
  *(v2 + 128) = v3;
  *(v2 + 136) = *v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920) - 8) + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  v6 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  *(v2 + 48) = a1[2];

  return MEMORY[0x2822009F8](sub_25B060850, 0, 0);
}

uint64_t sub_25B060850()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *v4;
  v6 = v4[1];
  *(v3 + 56) = v4[2];
  *(v3 + 40) = v6;
  *(v3 + 24) = v5;
  v7 = sub_25B0E3940();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  v9 = *(v0 + 32);
  *(v8 + 32) = *(v0 + 16);
  *(v8 + 48) = v9;
  *(v8 + 64) = *(v0 + 48);
  *(v8 + 80) = v2;
  sub_25B065BE8(v0 + 16, v0 + 64);
  v10 = sub_25B06143C(0, 0, v1, &unk_25B0E6B18, v8);
  *(v0 + 152) = v10;
  v11 = *(MEMORY[0x277D857C8] + 4);
  v12 = swift_task_alloc();
  *(v0 + 160) = v12;
  v13 = sub_25B046E60(0, &qword_27FA313F0, 0x277D755B8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F40, &unk_25B0E6060);
  *v12 = v0;
  v12[1] = sub_25B0609FC;
  v15 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 112, v10, v13, v14, v15);
}

uint64_t sub_25B0609FC()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_25B060B8C;
  }

  else
  {
    v3 = sub_25B060B10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25B060B10()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];

  *(v3 + 16) = v0[14];

  v4 = v0[1];
  v5 = v0[16];

  return v4(v5);
}

uint64_t sub_25B060B8C()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];

  v5 = v4[4];
  v6 = v4[6];
  v7 = v4[7];
  v8 = v4[8];

  swift_deallocPartialClassInstance();

  v9 = v0[1];
  v10 = v0[21];

  return v9();
}

uint64_t sub_25B060C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v5 = sub_25B0E23C0();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B060D00, 0, 0);
}

uint64_t sub_25B060D00()
{
  v11 = v0;
  v1 = v0[7];
  v2 = [*(v0[4] + 40) fileURL];
  sub_25B0E23A0();

  if (qword_27FA30CA8 != -1)
  {
    swift_once();
  }

  v3 = v0[7];
  os_unfair_lock_lock(&dword_27FA313D8);
  sub_25B060E7C(&qword_27FA313E0, v3, v0 + 2, &v10);
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v7 = v0[3];
  os_unfair_lock_unlock(&dword_27FA313D8);
  (*(v5 + 8))(v4, v6);
  *v7 = v10;

  v8 = v0[1];

  return v8();
}

void sub_25B060E7C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t **a4@<X8>)
{
  v64 = a3;
  v66 = a4;
  v6 = sub_25B0E23C0();
  v65 = *(v6 - 8);
  v7 = v65[8];
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v57 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v57 - v14;
  v16 = *a1;
  v17 = sub_25B0E2360();
  v18 = [v16 countForObject_];

  if (v18)
  {
    v19 = v66;
    v20 = sub_25B0E2360();
    [v16 addObject_];

    v21 = *(a1 + 8);
    if (*(v21 + 16))
    {
      v22 = sub_25B065C64(a2);
      if (v23)
      {
        v24 = *(*(v21 + 56) + 8 * v22);
        *v19 = v24;
        v25 = v24;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  v62 = v13;
  v63 = v6;
  v61 = v10;
  if (qword_27FA30CA0 != -1)
  {
LABEL_17:
    swift_once();
  }

  v26 = sub_25B0E2970();
  v27 = __swift_project_value_buffer(v26, qword_27FA313C0);
  v28 = v65;
  v29 = v15;
  v30 = v15;
  v31 = a2;
  v32 = v63;
  v58 = v65[2];
  v59 = v65 + 2;
  v58(v30, a2, v63);
  v57[1] = v27;
  v33 = sub_25B0E2950();
  v34 = sub_25B0E3A50();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v68 = v36;
    *v35 = 136315138;
    sub_25B06B48C(&qword_27FA31400, MEMORY[0x277CC9260]);
    v37 = sub_25B0E3E20();
    v39 = v38;
    v60 = v65[1];
    v60(v29, v63);
    v40 = sub_25B04BE04(v37, v39, &v68);
    v32 = v63;

    *(v35 + 4) = v40;
    _os_log_impl(&dword_25B03D000, v33, v34, "Preloading %s…", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x25F8613E0](v36, -1, -1);
    MEMORY[0x25F8613E0](v35, -1, -1);
  }

  else
  {

    v60 = v28[1];
    v60(v29, v32);
  }

  v41 = sub_25B0E2360();
  v42 = [objc_opt_self() imageFromSnapshotResultFileURL_];

  v43 = v64;
  v44 = v62;
  if (v42)
  {
    v45 = v58;
    v58(v62, v31, v32);
    v64 = v42;
    sub_25B05EE98(v42, v44);
    v46 = v61;
    v45(v61, v31, v32);
    v47 = sub_25B0E2950();
    v48 = sub_25B0E3A50();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v68 = v50;
      *v49 = 136315138;
      sub_25B06B48C(&qword_27FA31400, MEMORY[0x277CC9260]);
      v51 = sub_25B0E3E20();
      v53 = v52;
      v60(v46, v32);
      v54 = sub_25B04BE04(v51, v53, &v68);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_25B03D000, v47, v48, "Preloaded %s!", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x25F8613E0](v50, -1, -1);
      MEMORY[0x25F8613E0](v49, -1, -1);

      v55 = v64;
    }

    else
    {

      v55 = v64;
      v60(v46, v32);
    }

    *v66 = v55;
  }

  else
  {
    sub_25B065D38();
    v56 = swift_allocError();
    swift_willThrow();
    *v43 = v56;
    v67 = 1;
  }
}

uint64_t sub_25B06143C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_25B058198(a3, v24 - v10);
  v12 = sub_25B0E3940();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25B058448(v11, &qword_27FA31990, &qword_25B0E6920);
  }

  else
  {
    sub_25B0E3930();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_25B0E3850();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a3;
      v20 = sub_25B0E3770() + 32;
      sub_25B046E60(0, &qword_27FA313F0, 0x277D755B8);

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_25B058448(v24[0], &qword_27FA31990, &qword_25B0E6920);

      return v22;
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

  sub_25B058448(a3, &qword_27FA31990, &qword_25B0E6920);
  sub_25B046E60(0, &qword_27FA313F0, 0x277D755B8);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_25B061704()
{
  v1 = v0;
  v2 = sub_25B0E23C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = [*(v0 + 64) fileURL];
  sub_25B0E23A0();

  if (qword_27FA30CA8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_27FA313D8);
  v11 = qword_27FA313E0;
  v12 = sub_25B0E2360();
  [v11 removeObject_];

  v13 = qword_27FA313E0;
  v14 = sub_25B0E2360();
  v15 = [v13 countForObject_];

  if (!v15)
  {
    (*(v3 + 16))(v7, v9, v2);
    sub_25B05EE98(0, v7);
  }

  os_unfair_lock_unlock(&dword_27FA313D8);
  (*(v3 + 8))(v9, v2);

  v16 = *(v1 + 32);
  v17 = *(v1 + 48);
  v18 = *(v1 + 56);

  return v1;
}

uint64_t sub_25B061920()
{
  sub_25B061704();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_25B061978@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  *a1 = *(*v1 + 24);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_25B061A08(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 7955819;
  }

  else
  {
    v4 = 0x6465766968637261;
  }

  if (v3)
  {
    v5 = 0xEC00000061746144;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 7955819;
  }

  else
  {
    v6 = 0x6465766968637261;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xEC00000061746144;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25B0E3E30();
  }

  return v9 & 1;
}

uint64_t sub_25B061AB0()
{
  v1 = *v0;
  sub_25B0E3F10();
  sub_25B0E3780();

  return sub_25B0E3F50();
}

uint64_t sub_25B061B34()
{
  *v0;
  sub_25B0E3780();
}

uint64_t sub_25B061BA4()
{
  v1 = *v0;
  sub_25B0E3F10();
  sub_25B0E3780();

  return sub_25B0E3F50();
}

uint64_t sub_25B061C24@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25B0E3D50();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25B061C84(uint64_t *a1@<X8>)
{
  v2 = 7955819;
  if (!*v1)
  {
    v2 = 0x6465766968637261;
  }

  v3 = 0xEC00000061746144;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25B061CC4()
{
  if (*v0)
  {
    result = 7955819;
  }

  else
  {
    result = 0x6465766968637261;
  }

  *v0;
  return result;
}

uint64_t sub_25B061D00@<X0>(char *a1@<X8>)
{
  v2 = sub_25B0E3D50();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_25B061D64(uint64_t a1)
{
  v2 = sub_25B06A9F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B061DA0(uint64_t a1)
{
  v2 = sub_25B06A9F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25B061DDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31420, &qword_25B0E6B30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B06A9F0();
  sub_25B0E3F60();
  if (!v2)
  {
    v30 = 0;
    sub_25B06AA44();
    sub_25B0E3DA0();
    v11 = v27;
    v12 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_25B06AB58(v11, *(&v11 + 1));
    v13 = sub_25B06AA98();
    sub_25B06ABAC(v11, *(&v11 + 1));
    [v13 setRequiresSecureCoding_];
    sub_25B046E60(0, &qword_27FA31438, 0x277D2C030);
    v24 = sub_25B0E3AC0();
    sub_25B046E60(0, &qword_27FA31440, 0x277D2C040);
    v26 = v13;
    v14 = sub_25B0E3AC0();
    v15 = v14;
    v25 = (v6 + 8);
    v16 = v24;
    if (v24)
    {
      v17 = v14 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      sub_25B06AC00();
      swift_allocError();
      swift_willThrow();

      sub_25B06ABAC(v11, *(&v11 + 1));
      (*v25)(v9, v5);
    }

    else
    {
      v30 = 1;
      v23 = sub_25B06AC54();
      v24 = v16;
      v18 = v15;
      sub_25B0E3DA0();
      (*v25)(v9, v5);
      sub_25B06ABAC(v11, *(&v11 + 1));

      v19 = v24;
      v20 = v28;
      v21 = v29;
      *a2 = v27;
      *(a2 + 16) = v20;
      *(a2 + 24) = v21;
      *(a2 + 32) = v19;
      *(a2 + 40) = v18;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25B062180(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31458, &qword_25B0E6B38);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = v1[1];
  v23 = *v1;
  v24 = v8;
  v9 = v1[3];
  v22 = v1[2];
  v25 = v9;
  v11 = v1[4];
  v10 = v1[5];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B06A9F0();
  sub_25B0E3F70();
  v13 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v14 = sub_25B0E3730();
  [v13 encodeObject:v11 forKey:v14];

  v15 = sub_25B0E3730();
  [v13 encodeObject:v10 forKey:v15];

  v16 = [v13 encodedData];
  v17 = sub_25B0E23F0();
  v19 = v18;

  v27 = v17;
  v28 = v19;
  v31 = 0;
  sub_25B06ACA8();
  sub_25B0E3DF0();
  if (v2)
  {
    (*(v26 + 8))(v7, v4);

    return sub_25B06ABAC(v17, v19);
  }

  else
  {
    v27 = v23;
    v28 = v24;
    v29 = v22;
    v30 = v25;
    v31 = 1;
    sub_25B06ACFC();

    sub_25B0E3DF0();
    sub_25B06ABAC(v17, v19);

    return (*(v26 + 8))(v7, v4);
  }
}

uint64_t sub_25B0624A4()
{
  v1 = v0[18];
  v2 = v1[15];
  v0[19] = v2;
  v0[20] = v1[16];
  v0[21] = __swift_project_boxed_opaque_existential_1(v1 + 12, v2);
  v0[22] = __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_25B0E3900();
  v0[23] = sub_25B0E38F0();
  v4 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B062568, v4, v3);
}

id sub_25B062568()
{
  v2 = v0[22];
  v1 = v0[23];

  v3 = *v2;
  result = [*v2 dailySnapshotKey];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v6 = sub_25B0E3740();
  v8 = v7;

  result = [v3 unsafeDailySnapshotKey];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v9 = result;
  v20 = v0[20];
  v10 = sub_25B0E3740();
  v12 = v11;

  v0[14] = v6;
  v0[15] = v8;
  v0[16] = v10;
  v0[17] = v12;
  v13 = *(v20 + 8);
  v19 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[24] = v15;
  *v15 = v0;
  v15[1] = sub_25B06271C;
  v16 = v0[20];
  v17 = v0[21];
  v18 = v0[19];

  return (v19)(v0 + 2, v0 + 14, v18, v16);
}

uint64_t sub_25B06271C()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v6 = *v0;

  v3 = *(v1 + 120);
  v4 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_25B062850, 0, 0);
}

uint64_t sub_25B062850()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 200) = v1;
  *(v0 + 208) = v2;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  *(v0 + 216) = v3;
  *(v0 + 224) = v4;
  *(v0 + 232) = v5;
  *(v0 + 240) = v6;
  if (v2)
  {
    *(v0 + 64) = v1;
    *(v0 + 72) = v2;
    *(v0 + 80) = v3;
    *(v0 + 88) = v4;
    *(v0 + 96) = v5;
    *(v0 + 104) = v6;
    type metadata accessor for PreloadedSnapshot();
    swift_allocObject();

    v7 = v5;
    v8 = v6;
    v9 = swift_task_alloc();
    *(v0 + 248) = v9;
    *v9 = v0;
    v9[1] = sub_25B0629A0;

    return sub_25B060778((v0 + 64));
  }

  else
  {
    v11 = *(v0 + 8);

    return v11(0);
  }
}

uint64_t sub_25B0629A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v7 = sub_25B062B38;
  }

  else
  {
    *(v4 + 264) = a1;
    v7 = sub_25B062AC8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25B062AC8()
{
  v1 = *(v0 + 264);
  sub_25B04C538(*(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25B062B38()
{
  v1 = *(v0 + 256);
  sub_25B04C538(*(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240));

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_25B062BB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31820, &unk_25B0E6910);
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  sub_25B049F48(v1 + 56, v43);
  sub_25B049F48(v1 + 96, v40);
  v18 = v44;
  v17 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  (*(v17 + 32))(v18, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v22 = v21(v16, 1, v19);
  v23 = sub_25B058448(v16, &qword_27FA313B8, &unk_25B0E72A0);
  if (v22 == 1 && (v24 = v41, v25 = v42, __swift_project_boxed_opaque_existential_1(v40, v41), (*(v25 + 24))(v24, v25), LODWORD(v24) = v21(v14, 1, v19), v23 = sub_25B058448(v14, &qword_27FA313B8, &unk_25B0E72A0), v24 == 1))
  {
    v26 = sub_25B0E3940();
    v27 = v36;
    (*(*(v26 - 8) + 56))(v36, 1, 1, v26);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v2;

    sub_25B052F48(0, 0, v27, &unk_25B0E6B50, v28);

    v29 = 1;
    v30 = v39;
  }

  else
  {
    v31 = *(v2 + 136);
    v32 = *(v2 + 144);
    MEMORY[0x28223BE20](v23);
    *(&v36 - 6) = v2;
    *(&v36 - 5) = v43;
    *(&v36 - 4) = v33;
    *(&v36 - 3) = v34;
    *(&v36 - 2) = v40;
    (*(v37 + 104))(v9, *MEMORY[0x277D85778], v38);
    v30 = v39;
    sub_25B0E39C0();
    v29 = 0;
  }

  (*(v20 + 56))(v30, v29, 1, v19);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_25B063008()
{
  v0[3] = __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  sub_25B0E3900();
  v0[4] = sub_25B0E38F0();
  v2 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B0630B0, v2, v1);
}

uint64_t sub_25B0630B0()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = *v2;
  v4 = [v3 dailySnapshotKey];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v4;
  sub_25B0E3740();
  v9 = v8;

  v0[5] = v9;
  v4 = [v3 unsafeDailySnapshotKey];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v10 = v4;
  v11 = sub_25B0E3740();
  v13 = v12;

  v0[6] = v11;
  v0[7] = v13;
  v4 = sub_25B063190;
  v5 = 0;
  v6 = 0;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_25B063190()
{
  v17 = v0;
  if (qword_27FA30CA0 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[5];
  v3 = sub_25B0E2970();
  __swift_project_value_buffer(v3, qword_27FA313C0);

  v4 = sub_25B0E2950();
  v5 = sub_25B0E3A50();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v9 = v0[5];
    v8 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;

    v12 = sub_25B04BE04(v8, v7, &v16);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_25B03D000, v4, v5, "Generator and store do not vend streams for %s…", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x25F8613E0](v11, -1, -1);
    MEMORY[0x25F8613E0](v10, -1, -1);
  }

  else
  {
    v13 = v0[5];
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_25B06335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a3;
  v27 = a6;
  v29 = a4;
  v30 = a5;
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v25 = &v23 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v23 = *(v11 + 16);
  v23(&v23 - v13, a1, v10);
  v15 = *(v11 + 80);
  v16 = swift_allocObject();
  v24 = *(v11 + 32);
  v24(v16 + ((v15 + 16) & ~v15), v14, v10);
  sub_25B0E3960();
  v17 = sub_25B0E3940();
  v18 = v25;
  (*(*(v17 - 8) + 56))(v25, 1, 1, v17);
  sub_25B049F48(v26, v32);
  v23(v14, a1, v10);
  sub_25B049F48(v27, v31);
  v19 = (v15 + 96) & ~v15;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v28;
  sub_25B03F164(v32, (v20 + 5));
  v21 = v30;
  v20[10] = v29;
  v20[11] = v21;
  v24(v20 + v19, v14, v10);
  sub_25B03F164(v31, v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_25B052F48(0, 0, v18, &unk_25B0E6B68, v20);
}

uint64_t sub_25B063638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x2822009F8](sub_25B063668, 0, 0);
}

uint64_t sub_25B063668()
{
  v0[8] = __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  sub_25B0E3900();
  v0[9] = sub_25B0E38F0();
  v2 = sub_25B0E3850();

  return MEMORY[0x2822009F8](sub_25B063710, v2, v1);
}

uint64_t sub_25B063710()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = *v2;
  v4 = [v3 dailySnapshotKey];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v4;
  v8 = sub_25B0E3740();
  v10 = v9;

  v0[10] = v10;
  v4 = [v3 unsafeDailySnapshotKey];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v11 = v4;
  v0[11] = v8;
  v12 = sub_25B0E3740();
  v14 = v13;

  v0[12] = v12;
  v0[13] = v14;
  v4 = sub_25B0637F8;
  v5 = 0;
  v6 = 0;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_25B0637F8()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 40);
  v11 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  v7 = *(v0 + 48);
  *(v6 + 16) = v11;
  *(v6 + 32) = v5;
  *(v6 + 40) = v3;
  *(v6 + 48) = v4;
  *(v6 + 56) = v2;
  *(v6 + 64) = v1;
  *(v6 + 72) = v7;
  v8 = *(MEMORY[0x277D858E8] + 4);
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_25B06391C;

  return MEMORY[0x282200600]();
}

uint64_t sub_25B06391C()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25B063A34, 0, 0);
}

uint64_t sub_25B063A34()
{
  v18 = v0;
  if (qword_27FA30CA0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[10];
  v3 = sub_25B0E2970();
  __swift_project_value_buffer(v3, qword_27FA313C0);

  v4 = sub_25B0E2950();
  v5 = sub_25B0E3A50();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = v0[12];
    v9 = v0[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;

    v12 = sub_25B04BE04(v8, v7, &v17);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_25B03D000, v4, v5, "Update streams for %s finished…", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x25F8613E0](v11, -1, -1);
    MEMORY[0x25F8613E0](v10, -1, -1);
  }

  else
  {
    v13 = v0[10];
  }

  v14 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  sub_25B0E3990();
  v15 = v0[1];

  return v15();
}

uint64_t sub_25B063C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v18;
  *(v8 + 72) = v17;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  *(v8 + 96) = v9;
  v10 = *(v9 - 8);
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 + 64);
  *(v8 + 120) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920) - 8) + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0) - 8) + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  *(v8 + 152) = v13;
  v14 = *(v13 - 8);
  *(v8 + 160) = v14;
  *(v8 + 168) = *(v14 + 64);
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B063E18, 0, 0);
}

uint64_t sub_25B063E18()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[3];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 32))(v5, v6);
  v7 = *(v2 + 48);
  if (v7(v3, 1, v1) == 1)
  {
    sub_25B058448(v0[18], &qword_27FA313B8, &unk_25B0E72A0);
  }

  else
  {
    v9 = v0[23];
    v8 = v0[24];
    v75 = v0[21];
    v78 = v0[20];
    v10 = v0[19];
    v11 = v0[15];
    v12 = v0[16];
    v66 = v12;
    v55 = v11;
    v13 = v0[13];
    v57 = v0[14];
    v80 = v0[12];
    v54 = v0[10];
    v68 = v0[8];
    v69 = v0[9];
    v14 = v0[6];
    v62 = v14;
    v64 = v0[7];
    v58 = v0[4];
    v60 = v0[5];
    v72 = v8;
    v56 = *(v78 + 32);
    v56(v8, v0[18], v10);
    v15 = sub_25B0E3940();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = v10;
    (*(v78 + 16))(v9, v8, v10);
    (*(v13 + 16))(v11, v54, v80);
    v17 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v18 = v75 + v17 + 7;
    v76 = v7;
    v19 = v18 & 0xFFFFFFFFFFFFFFF8;
    v20 = ((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v21 = (*(v13 + 80) + v20 + 32) & ~*(v13 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    v56(v22 + v17, v9, v16);
    v23 = (v22 + v19);
    v7 = v76;
    *v23 = v58;
    v23[1] = v60;
    v24 = (v22 + v20);
    *v24 = v62;
    v24[1] = v64;
    v24[2] = v68;
    v24[3] = v69;
    (*(v13 + 32))(v22 + v21, v55, v80);

    sub_25B064B60(v66, &unk_25B0E6B98, v22);
    sub_25B058448(v66, &qword_27FA31990, &qword_25B0E6920);
    (*(v78 + 8))(v72, v16);
  }

  v25 = v0[19];
  v26 = v0[17];
  v27 = v0[11];
  v28 = v27[3];
  v29 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (*(v29 + 24))(v28, v29);
  if (v7(v26, 1, v25) == 1)
  {
    sub_25B058448(v0[17], &qword_27FA313B8, &unk_25B0E72A0);
  }

  else
  {
    v30 = v0[22];
    v31 = v0[23];
    v32 = v0[20];
    v33 = v0[19];
    v34 = v0[16];
    v35 = v0[15];
    v70 = v34;
    v37 = v0[12];
    v36 = v0[13];
    v59 = v37;
    v61 = v35;
    v38 = v0[10];
    v63 = v38;
    v65 = v0[21];
    v77 = v0[9];
    v73 = v0[7];
    v74 = v0[8];
    v71 = v0[6];
    v81 = v0[2];
    v67 = *(v32 + 32);
    v79 = v30;
    v67(v30, v0[17], v33);
    v39 = sub_25B0E3940();
    (*(*(v39 - 8) + 56))(v34, 1, 1, v39);
    (*(v32 + 16))(v31, v30, v33);
    (*(v36 + 16))(v35, v63, v37);
    v40 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v41 = (v65 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (*(v36 + 80) + v41 + 32) & ~*(v36 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    v67(v43 + v40, v31, v33);
    v44 = (v43 + v41);
    *v44 = v71;
    v44[1] = v73;
    v44[2] = v74;
    v44[3] = v77;
    (*(v36 + 32))(v43 + v42, v61, v59);

    sub_25B064B60(v70, &unk_25B0E6B88, v43);
    sub_25B058448(v70, &qword_27FA31990, &qword_25B0E6920);
    (*(v32 + 8))(v79, v33);
  }

  v46 = v0[23];
  v45 = v0[24];
  v47 = v0[22];
  v49 = v0[17];
  v48 = v0[18];
  v51 = v0[15];
  v50 = v0[16];

  v52 = v0[1];

  return v52();
}

uint64_t sub_25B0643DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v18;
  *(v8 + 48) = v17;
  *(v8 + 32) = a6;
  *(v8 + 40) = a8;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  *(v8 + 96) = v12;
  v13 = *(v12 - 8);
  *(v8 + 104) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B064528, 0, 0);
}

uint64_t sub_25B064528()
{
  v1 = v0[14];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  sub_25B0E39A0();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_25B0645F4;
  v5 = v0[14];
  v6 = v0[12];

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v6);
}

uint64_t sub_25B0645F4()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25B0646F0, 0, 0);
}

uint64_t sub_25B0646F0()
{
  v43 = v0;
  if (*(v0 + 128) == 1)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
LABEL_16:
    v36 = *(v0 + 112);
    v37 = *(v0 + 88);

    v38 = *(v0 + 8);

    return v38();
  }

  if (sub_25B0E39F0())
  {
    if (qword_27FA30CA0 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 56);
    v3 = *(v0 + 32);
    v2 = *(v0 + 40);
    v4 = sub_25B0E2970();
    __swift_project_value_buffer(v4, qword_27FA313C0);

    v5 = sub_25B0E2950();
    v6 = sub_25B0E3A50();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    v10 = *(v0 + 96);
    if (v7)
    {
      v11 = *(v0 + 48);
      v40 = *(v0 + 56);
      v13 = *(v0 + 24);
      v12 = *(v0 + 32);
      v41 = *(v0 + 112);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v42 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_25B04BE04(v13, v12, &v42);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_25B04BE04(v11, v40, &v42);
      _os_log_impl(&dword_25B03D000, v5, v6, "Generator %s task cancelled for %s…", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8613E0](v15, -1, -1);
      MEMORY[0x25F8613E0](v14, -1, -1);

      (*(v8 + 8))(v41, v10);
    }

    else
    {

      (*(v8 + 8))(v9, v10);
    }

    goto LABEL_16;
  }

  if (qword_27FA30CA0 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 56);
  v18 = *(v0 + 32);
  v17 = *(v0 + 40);
  v19 = sub_25B0E2970();
  __swift_project_value_buffer(v19, qword_27FA313C0);

  v20 = sub_25B0E2950();
  v21 = sub_25B0E3A50();

  if (os_log_type_enabled(v20, v21))
  {
    v23 = *(v0 + 48);
    v22 = *(v0 + 56);
    v25 = *(v0 + 24);
    v24 = *(v0 + 32);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v42 = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_25B04BE04(v25, v24, &v42);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_25B04BE04(v23, v22, &v42);
    _os_log_impl(&dword_25B03D000, v20, v21, "Generator %s update for %s…", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v27, -1, -1);
    MEMORY[0x25F8613E0](v26, -1, -1);
  }

  v29 = *(v0 + 80);
  v28 = *(v0 + 88);
  v30 = *(v0 + 64);
  v31 = *(v0 + 72);
  sub_25B0E3970();
  (*(v29 + 8))(v28, v31);
  v32 = *(MEMORY[0x277D85798] + 4);
  v33 = swift_task_alloc();
  *(v0 + 120) = v33;
  *v33 = v0;
  v33[1] = sub_25B0645F4;
  v34 = *(v0 + 112);
  v35 = *(v0 + 96);

  return MEMORY[0x2822003E8](v0 + 128, 0, 0, v35);
}

uint64_t sub_25B064B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  sub_25B058198(a1, v22 - v10);
  v12 = sub_25B0E3940();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_25B058448(v11, &qword_27FA31990, &qword_25B0E6920);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_25B0E3850();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_25B0E3930();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_25B064D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  sub_25B058198(a1, v22 - v10);
  v12 = sub_25B0E3940();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_25B058448(v11, &qword_27FA31990, &qword_25B0E6920);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_25B0E3850();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_25B0E3930();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31470, &qword_25B0E6BD0);
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_25B064F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v17;
  v8[3] = a6;
  v8[4] = a7;
  v8[2] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v8[7] = v9;
  v10 = *(v9 - 8);
  v8[8] = v10;
  v11 = *(v10 + 64) + 15;
  v8[9] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v8[10] = v12;
  v13 = *(v12 - 8);
  v8[11] = v13;
  v14 = *(v13 + 64) + 15;
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B0650C4, 0, 0);
}

uint64_t sub_25B0650C4()
{
  v1 = v0[12];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  sub_25B0E39A0();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_25B065190;
  v5 = v0[12];
  v6 = v0[10];

  return MEMORY[0x2822003E8](v0 + 14, 0, 0, v6);
}

uint64_t sub_25B065190()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25B06528C, 0, 0);
}

uint64_t sub_25B06528C()
{
  v36 = v0;
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
LABEL_9:
    v14 = *(v0 + 96);
    v15 = *(v0 + 72);

    v16 = *(v0 + 8);

    return v16();
  }

  if (sub_25B0E39F0())
  {
    if (qword_27FA30CA0 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 40);
    v2 = *(v0 + 24);
    v3 = sub_25B0E2970();
    __swift_project_value_buffer(v3, qword_27FA313C0);

    v4 = sub_25B0E2950();
    v5 = sub_25B0E3A50();

    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    v9 = *(v0 + 80);
    if (v6)
    {
      v11 = *(v0 + 32);
      v10 = *(v0 + 40);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v35 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_25B04BE04(v11, v10, &v35);
      _os_log_impl(&dword_25B03D000, v4, v5, "Store task cancelled for %s…", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x25F8613E0](v13, -1, -1);
      MEMORY[0x25F8613E0](v12, -1, -1);
    }

    (*(v8 + 8))(v7, v9);
    goto LABEL_9;
  }

  if (qword_27FA30CA0 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 40);
  v19 = *(v0 + 24);
  v20 = sub_25B0E2970();
  __swift_project_value_buffer(v20, qword_27FA313C0);

  v21 = sub_25B0E2950();
  v22 = sub_25B0E3A50();

  if (os_log_type_enabled(v21, v22))
  {
    v24 = *(v0 + 32);
    v23 = *(v0 + 40);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v35 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_25B04BE04(v24, v23, &v35);
    _os_log_impl(&dword_25B03D000, v21, v22, "Store update for %s…", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x25F8613E0](v26, -1, -1);
    MEMORY[0x25F8613E0](v25, -1, -1);
  }

  v28 = *(v0 + 64);
  v27 = *(v0 + 72);
  v29 = *(v0 + 48);
  v30 = *(v0 + 56);
  sub_25B0E3970();
  (*(v28 + 8))(v27, v30);
  v31 = *(MEMORY[0x277D85798] + 4);
  v32 = swift_task_alloc();
  *(v0 + 104) = v32;
  *v32 = v0;
  v32[1] = sub_25B065190;
  v33 = *(v0 + 96);
  v34 = *(v0 + 80);

  return MEMORY[0x2822003E8](v0 + 112, 0, 0, v34);
}

uint64_t sub_25B065664()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[18];

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

uint64_t sub_25B0656D8(uint64_t a1, int a2)
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

uint64_t sub_25B065720(uint64_t result, int a2, int a3)
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

uint64_t sub_25B065788(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25B05E870;

  return sub_25B05F058();
}

uint64_t sub_25B065840(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B06B6C8;

  return v7(a1);
}

uint64_t sub_25B065938(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B065A30;

  return v7(a1);
}

uint64_t sub_25B065A30()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25B065B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[10];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B05859C;

  return sub_25B060C40(a1, v4, v5, (v1 + 4));
}

unint64_t sub_25B065C20(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_25B0E3AE0();

  return sub_25B0693C4(a1, v5);
}

unint64_t sub_25B065C64(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25B0E23C0();
  v5 = MEMORY[0x277CC9260];
  sub_25B06B48C(&qword_27FA31410, MEMORY[0x277CC9260]);
  v6 = sub_25B0E36C0();
  return sub_25B069504(a1, v6, MEMORY[0x277CC9260], &qword_27FA31418, v5, MEMORY[0x277CC9278]);
}

unint64_t sub_25B065D38()
{
  result = qword_27FA313F8;
  if (!qword_27FA313F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA313F8);
  }

  return result;
}

unint64_t sub_25B065D8C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_25B0E3F00();

  return sub_25B069498(a1, v4);
}

unint64_t sub_25B065DD0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25B0E2750();
  v5 = MEMORY[0x277D2BE00];
  sub_25B06B48C(&qword_27FA312D0, MEMORY[0x277D2BE00]);
  v6 = sub_25B0E36C0();
  return sub_25B069504(a1, v6, MEMORY[0x277D2BE00], &qword_27FA314D0, v5, MEMORY[0x277D2BE10]);
}

unint64_t sub_25B065EA4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25B0E28B0();
  v5 = MEMORY[0x277D2BE48];
  sub_25B06B48C(&qword_27FA31490, MEMORY[0x277D2BE48]);
  v6 = sub_25B0E36C0();
  return sub_25B069504(a1, v6, MEMORY[0x277D2BE48], &qword_27FA31498, v5, MEMORY[0x277D2BE58]);
}

unint64_t sub_25B065F78(uint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_25B0E3F10();
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  sub_25B0E3780();
  sub_25B0E3780();
  sub_25B0E3780();
  v10 = sub_25B0E3F50();

  return sub_25B0696A4(a1, v10);
}

unint64_t sub_25B066014(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25B0E2870();
  v5 = MEMORY[0x277D2BE30];
  sub_25B06B48C(&qword_27FA314A0, MEMORY[0x277D2BE30]);
  v6 = sub_25B0E36C0();
  return sub_25B069504(a1, v6, MEMORY[0x277D2BE30], &qword_27FA314A8, v5, MEMORY[0x277D2BE40]);
}

unint64_t sub_25B0660E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25B0E3F10();
  sub_25B0E3780();
  v6 = sub_25B0E3F50();

  return sub_25B0697E8(a1, a2, v6);
}

unint64_t sub_25B066160(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_25B0E3F10();
  MEMORY[0x25F860A80](a1);
  v4 = sub_25B0E3F50();

  return sub_25B069498(a1, v4);
}

uint64_t sub_25B0661CC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25B0E23C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31478, &qword_25B0E6BD8);
  v43 = a2;
  result = sub_25B0E3D30();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_25B06B48C(&qword_27FA31410, MEMORY[0x277CC9260]);
      result = sub_25B0E36C0();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_25B0665A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA314E0, &unk_25B0E6C20);
  result = sub_25B0E3D30();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_25B0E3F00();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25B066818(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25B0E2750();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA314C8, &qword_25B0E6C10);
  v43 = a2;
  result = sub_25B0E3D30();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_25B06B48C(&qword_27FA312D0, MEMORY[0x277D2BE00]);
      result = sub_25B0E36C0();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_25B066BF4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25B0E23C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31408, &qword_25B0E6B28);
  v43 = a2;
  result = sub_25B0E3D30();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_25B06B48C(&qword_27FA31410, MEMORY[0x277CC9260]);
      result = sub_25B0E36C0();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_25B066FD0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA314D8, &qword_25B0E6C18);
  v39 = a2;
  result = sub_25B0E3D30();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_25B0E3F10();
      sub_25B0E3780();
      result = sub_25B0E3F50();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25B067274(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = sub_25B0E26B0();
  v6 = *(v52 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA314B8, &qword_25B0E6C00);
  v47 = a2;
  result = sub_25B0E3D30();
  v12 = result;
  if (*(v9 + 16))
  {
    v43 = v2;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v44 = (v6 + 16);
    v45 = v9;
    v46 = v6;
    v48 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v26 = v23 | (v13 << 6);
      v27 = *(v9 + 56);
      v28 = (*(v9 + 48) + 48 * v26);
      v30 = *v28;
      v29 = v28[1];
      v31 = v28[3];
      v54 = v28[2];
      v32 = v28[5];
      v53 = v28[4];
      v33 = v27 + *(v46 + 72) * v26;
      v50 = *(v46 + 72);
      if (v47)
      {
        (*v48)(v51, v33, v52);
      }

      else
      {
        (*v44)(v51, v33, v52);
      }

      v34 = *(v12 + 40);
      sub_25B0E3F10();
      v49 = v30;
      sub_25B0E3780();
      sub_25B0E3780();
      sub_25B0E3780();
      result = sub_25B0E3F50();
      v35 = -1 << *(v12 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v19 + 8 * v37);
          if (v41 != -1)
          {
            v20 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 48 * v20);
      *v21 = v49;
      v21[1] = v29;
      v22 = v53;
      v21[2] = v54;
      v21[3] = v31;
      v21[4] = v22;
      v21[5] = v32;
      result = (*v48)(*(v12 + 56) + v50 * v20, v51, v52);
      ++*(v12 + 16);
      v9 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v25 = v14[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v17 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v9 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v14, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v42;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_25B067660(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25B0E2870();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA314B0, &qword_25B0E6BF8);
  v50 = a2;
  result = sub_25B0E3D30();
  v13 = result;
  if (*(v10 + 16))
  {
    v57 = v6;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v46 = v2;
    v47 = (v7 + 16);
    v48 = v10;
    v49 = v7;
    v52 = (v7 + 32);
    v20 = result + 64;
    v21 = v51;
    while (v18)
    {
      v25 = __clz(__rbit64(v18));
      v26 = (v18 - 1) & v18;
LABEL_17:
      v29 = v25 | (v14 << 6);
      v30 = *(v10 + 48) + *(v49 + 72) * v29;
      v55 = *(v49 + 72);
      v56 = v26;
      if (v50)
      {
        (*v52)(v21, v30, v57);
        v31 = (*(v10 + 56) + 32 * v29);
        v32 = *v31;
        v33 = v31[1];
        v34 = v31[3];
        v53 = v31[2];
        v54 = v32;
      }

      else
      {
        (*v47)(v21, v30, v57);
        v35 = (*(v10 + 56) + 32 * v29);
        v36 = *v35;
        v33 = v35[1];
        v34 = v35[3];
        v53 = v35[2];
        v54 = v36;
      }

      v37 = *(v13 + 40);
      sub_25B06B48C(&qword_27FA314A0, MEMORY[0x277D2BE30]);
      result = sub_25B0E36C0();
      v38 = -1 << *(v13 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v20 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v21 = v51;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v20 + 8 * v40);
          if (v44 != -1)
          {
            v22 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v39) & ~*(v20 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v21 = v51;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v52)(*(v13 + 48) + v55 * v22, v21, v57);
      v23 = (*(v13 + 56) + 32 * v22);
      v24 = v53;
      *v23 = v54;
      v23[1] = v33;
      v23[2] = v24;
      v23[3] = v34;
      ++*(v13 + 16);
      v10 = v48;
      v18 = v56;
    }

    v27 = v14;
    while (1)
    {
      v14 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v28 = v15[v14];
      ++v27;
      if (v28)
      {
        v25 = __clz(__rbit64(v28));
        v26 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v45 = 1 << *(v10 + 32);
    v3 = v46;
    if (v45 >= 64)
    {
      bzero(v15, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v45;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_25B067A68(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25B0E28B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA314C0, &qword_25B0E6C08);
  v50 = a2;
  result = sub_25B0E3D30();
  v13 = result;
  if (*(v10 + 16))
  {
    v57 = v6;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v46 = v2;
    v47 = (v7 + 16);
    v48 = v10;
    v49 = v7;
    v52 = (v7 + 32);
    v20 = result + 64;
    v21 = v51;
    while (v18)
    {
      v25 = __clz(__rbit64(v18));
      v26 = (v18 - 1) & v18;
LABEL_17:
      v29 = v25 | (v14 << 6);
      v30 = *(v10 + 48) + *(v49 + 72) * v29;
      v55 = *(v49 + 72);
      v56 = v26;
      if (v50)
      {
        (*v52)(v21, v30, v57);
        v31 = (*(v10 + 56) + 32 * v29);
        v32 = *v31;
        v33 = v31[1];
        v34 = v31[3];
        v53 = v31[2];
        v54 = v32;
      }

      else
      {
        (*v47)(v21, v30, v57);
        v35 = (*(v10 + 56) + 32 * v29);
        v36 = *v35;
        v33 = v35[1];
        v34 = v35[3];
        v53 = v35[2];
        v54 = v36;
      }

      v37 = *(v13 + 40);
      sub_25B06B48C(&qword_27FA31490, MEMORY[0x277D2BE48]);
      result = sub_25B0E36C0();
      v38 = -1 << *(v13 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v20 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v21 = v51;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v20 + 8 * v40);
          if (v44 != -1)
          {
            v22 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v39) & ~*(v20 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v21 = v51;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v52)(*(v13 + 48) + v55 * v22, v21, v57);
      v23 = (*(v13 + 56) + 32 * v22);
      v24 = v53;
      *v23 = v54;
      v23[1] = v33;
      v23[2] = v24;
      v23[3] = v34;
      ++*(v13 + 16);
      v10 = v48;
      v18 = v56;
    }

    v27 = v14;
    while (1)
    {
      v14 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v28 = v15[v14];
      ++v27;
      if (v28)
      {
        v25 = __clz(__rbit64(v28));
        v26 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v45 = 1 << *(v10 + 32);
    v3 = v46;
    if (v45 >= 64)
    {
      bzero(v15, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v45;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_25B067E84(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = a2;
  result = sub_25B0E3D30();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v5;
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
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v10 + 40);
      sub_25B0E3F10();
      MEMORY[0x25F860A80](v23);
      result = sub_25B0E3F50();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_25B06810C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25B0E3B60() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_25B0E3F00();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25B06827C(int64_t a1, uint64_t a2)
{
  v43 = sub_25B0E2750();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_25B0E3B60();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_25B06B48C(&qword_27FA312D0, MEMORY[0x277D2BE00]);
      v26 = sub_25B0E36C0();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_25B06859C(int64_t a1, uint64_t a2)
{
  v43 = sub_25B0E23C0();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_25B0E3B60();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_25B06B48C(&qword_27FA31410, MEMORY[0x277CC9260]);
      v26 = sub_25B0E36C0();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_25B0688BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25B0E23C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_25B065C64(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_25B0698A0();
      goto LABEL_7;
    }

    sub_25B0661CC(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_25B065C64(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_25B06930C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_25B0E3E80();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

unint64_t sub_25B068A88(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25B065D8C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_25B0665A8(v14, a3 & 1);
      v18 = *v4;
      result = sub_25B065D8C(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_25B0E3E80();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_25B069B20();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_25B068BD4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25B0E2750();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_25B065DD0(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_25B069C7C();
      goto LABEL_7;
    }

    sub_25B066818(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_25B065DD0(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_25B069254(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_25B0E3E80();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

void sub_25B068DA0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25B0E23C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_25B065C64(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_25B069EFC();
      goto LABEL_7;
    }

    sub_25B066BF4(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_25B065C64(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_25B06930C(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_25B0E3E80();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

void sub_25B068F6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25B0660E8(a2, a3);
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
      sub_25B066FD0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_25B0660E8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_25B0E3E80();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_25B06A170();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

unint64_t sub_25B0690E4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25B066160(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_25B067E84(v14, a3 & 1, &qword_27FA31480, &qword_25B0E6BE0);
      v18 = *v4;
      result = sub_25B066160(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        type metadata accessor for NTKFaceCurationGroup(0);
        result = sub_25B0E3E80();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_25B06A8A4(&qword_27FA31480, &qword_25B0E6BE0);
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_25B069254(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25B0E2750();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_25B06930C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25B0E23C0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_25B0693C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_25B0E3AF0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25B069498(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25B069504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_25B06B48C(v24, v25);
      v20 = sub_25B0E3700();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_25B0696A4(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v6 = *a1;
    v5 = a1[1];
    v21 = a1[3];
    v22 = a1[2];
    v7 = a1[4];
    v8 = a1[5];
    v9 = *(v2 + 48);
    do
    {
      v10 = (v9 + 48 * v4);
      v12 = v10[2];
      v11 = v10[3];
      v13 = v10[4];
      v14 = v10[5];
      v15 = *v10 == v6 && v10[1] == v5;
      if (v15 || (sub_25B0E3E30() & 1) != 0)
      {
        v16 = v12 == v22 && v11 == v21;
        if (v16 || (sub_25B0E3E30() & 1) != 0)
        {
          v17 = v13 == v7 && v14 == v8;
          if (v17 || (sub_25B0E3E30() & 1) != 0)
          {
            break;
          }
        }
      }

      v4 = (v4 + 1) & v19;
    }

    while (((*(v20 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25B0697E8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25B0E3E30())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_25B0698A0()
{
  v1 = v0;
  v34 = sub_25B0E23C0();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31478, &qword_25B0E6BD8);
  v4 = *v0;
  v5 = sub_25B0E3D20();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}