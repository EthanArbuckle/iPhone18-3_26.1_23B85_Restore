uint64_t sub_25B084540(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_25B0E24A0() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_25B05859C;

  return sub_25B0834BC(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t objectdestroy_10Tm()
{
  v1 = sub_25B0E24A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v18 = (v3 + 32) & ~v3;
  v19 = v1;
  v4 = v18 + *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v17 = *(v11 + 64);
  v14 = v3 | v7 | v12;
  v15 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v18, v19);
  (*(v6 + 8))(v0 + v8, v5);
  (*(v11 + 8))(v0 + v13, v10);

  return MEMORY[0x2821FE8E8](v0, v13 + v17, v14 | 7);
}

uint64_t sub_25B084900(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_25B0E24A0() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_25B05859C;

  return sub_25B082B94(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_25B084ACC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25B05859C;

  return sub_25B07CE34(a1, a2, v6, v7, v8);
}

uint64_t sub_25B084B90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25B05859C;

  return sub_25B07E5BC(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_25B084C64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25B05859C;

  return sub_25B07F6EC(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

void sub_25B084D38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a2 != 1)
  {
    sub_25B084D48(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_25B084D48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a2)
  {
  }
}

unint64_t sub_25B084DCC()
{
  result = qword_27FA31750;
  if (!qword_27FA31750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31750);
  }

  return result;
}

uint64_t sub_25B084E20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31820, &unk_25B0E6910);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v23 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v26 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  *v4 = 1;
  (*(v1 + 104))(v4, *MEMORY[0x277D85768], v0);
  sub_25B0E3950();
  (*(v1 + 8))(v4, v0);
  v14 = *(v6 + 16);
  v14(v11, v13, v5);
  v15 = *(v6 + 80);
  v16 = swift_allocObject();
  v24 = *(v6 + 32);
  v24(v16 + ((v15 + 16) & ~v15), v11, v5);
  sub_25B0E3960();
  v17 = v25 + OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_continuations;
  os_unfair_lock_lock((v25 + OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_continuations));
  v14(v26, v13, v5);
  v18 = *(v17 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v17 + 8) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_25B089A40(0, v18[2] + 1, 1, v18);
    *(v17 + 8) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_25B089A40(v20 > 1, v21 + 1, 1, v18);
    *(v17 + 8) = v18;
  }

  v18[2] = v21 + 1;
  v24(v18 + ((v15 + 32) & ~v15) + *(v6 + 72) * v21, v26, v5);
  os_unfair_lock_unlock(v17);
  return (*(v6 + 8))(v13, v5);
}

uint64_t sub_25B085194()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31760);
  __swift_project_value_buffer(v0, qword_27FA31760);
  return sub_25B0E2960();
}

uint64_t sub_25B085214(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for FacePlacement(0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = sub_25B0E3900();
  v2[6] = sub_25B0E38F0();
  v5 = sub_25B0E3850();
  v2[7] = v5;
  v2[8] = v4;

  return MEMORY[0x2822009F8](sub_25B0852DC, v5, v4);
}

uint64_t sub_25B0852DC()
{
  v22 = v0;
  if (qword_27FA30CF8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_25B0E2970();
  __swift_project_value_buffer(v2, qword_27FA31760);

  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315394;
    sub_25B0E24A0();
    sub_25B08405C();
    v8 = sub_25B0E3E20();
    v10 = sub_25B04BE04(v8, v9, &v21);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = sub_25B0E2730();
    swift_getObjectType();

    v12 = sub_25B0E3FB0();
    v14 = sub_25B04BE04(v12, v13, &v21);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_25B03D000, v3, v4, "Provider %s asked for snapshot for %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v7, -1, -1);
    MEMORY[0x25F8613E0](v6, -1, -1);
  }

  v15 = v0[3];
  v16 = v0[4];
  sub_25B0596E0(v15 + OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_placement, v16);
  v17 = type metadata accessor for FaceRequest();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v0[9] = FaceRequest.init(placement:visible:)(v16, 1);
  v0[10] = *(v15 + OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_faceQueue);

  return MEMORY[0x2822009F8](sub_25B085550, 0, 0);
}

uint64_t sub_25B085550()
{
  v1 = *(*(v0 + 80) + 16);
  *(v0 + 88) = v1;
  return MEMORY[0x2822009F8](sub_25B085574, v1, 0);
}

uint64_t sub_25B085574()
{
  v1 = v0[11];
  sub_25B053238(v0[9]);
  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x2822009F8](sub_25B0855DC, v2, v3);
}

uint64_t sub_25B0855DC()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[12] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = sub_25B0E38F0();
  v0[13] = v5;
  v6 = *(MEMORY[0x277D85A10] + 4);
  v7 = swift_task_alloc();
  v0[14] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31848, &qword_25B0E7718);
  *v7 = v0;
  v7[1] = sub_25B0856FC;
  v9 = v0[9];
  v10 = v0[2];
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200830](v10, &unk_25B0E7710, v4, sub_25B087A58, v9, v5, v11, v8);
}

uint64_t sub_25B0856FC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v10 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_25B08589C;
  }

  else
  {
    v8 = v2[12];
    v7 = v2[13];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_25B085820;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_25B085820()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_25B08589C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[4];

  v6 = v0[1];
  v7 = v0[15];

  return v6();
}

uint64_t sub_25B085934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a1;
  v3[10] = a3;
  v3[11] = sub_25B0E3900();
  v3[12] = sub_25B0E38F0();
  v4 = swift_task_alloc();
  v3[13] = v4;
  *v4 = v3;
  v4[1] = sub_25B0859F0;

  return FaceRequest.result.getter((v3 + 2));
}

uint64_t sub_25B0859F0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  v6 = *(v3 + 96);
  v7 = *(v3 + 88);
  v9 = sub_25B0E3850();
  if (v2)
  {
    v10 = sub_25B085DA4;
  }

  else
  {
    v10 = sub_25B085B48;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_25B085B48()
{
  v28 = v0;
  v1 = *(v0 + 96);

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 56);
  v25 = v5;
  v26 = *(v0 + 40);
  if (qword_27FA30CF8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 80);
  v7 = sub_25B0E2970();
  __swift_project_value_buffer(v7, qword_27FA31760);

  v8 = sub_25B0E2950();
  v9 = sub_25B0E3A50();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 80);
    v11 = swift_slowAlloc();
    v24 = v2;
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315394;
    sub_25B0E24A0();
    sub_25B08405C();
    v13 = sub_25B0E3E20();
    v15 = sub_25B04BE04(v13, v14, &v27);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = sub_25B0E2730();
    swift_getObjectType();

    v17 = sub_25B0E3FB0();
    v19 = sub_25B04BE04(v17, v18, &v27);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_25B03D000, v8, v9, "Provider %s got snapshot for %s", v11, 0x16u);
    swift_arrayDestroy();
    v20 = v12;
    v2 = v24;
    MEMORY[0x25F8613E0](v20, -1, -1);
    MEMORY[0x25F8613E0](v11, -1, -1);
  }

  v21 = *(v0 + 72);
  *v21 = v2;
  *(v21 + 8) = v3;
  *(v21 + 16) = v4;
  *(v21 + 24) = v26;
  *(v21 + 40) = v25;
  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_25B085DA4()
{
  v27 = v0;
  v1 = v0[12];

  if (qword_27FA30CF8 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v3 = v0[10];
  v4 = sub_25B0E2970();
  __swift_project_value_buffer(v4, qword_27FA31760);

  v5 = v2;
  v6 = sub_25B0E2950();
  v7 = sub_25B0E3A50();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[14];
    v9 = v0[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26[0] = v12;
    *v10 = 136315650;
    sub_25B0E24A0();
    sub_25B08405C();
    v13 = sub_25B0E3E20();
    v15 = sub_25B04BE04(v13, v14, v26);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v16 = sub_25B0E2730();
    swift_getObjectType();

    v17 = sub_25B0E3FB0();
    v19 = sub_25B04BE04(v17, v18, v26);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2112;
    v20 = v8;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v21;
    *v11 = v21;
    _os_log_impl(&dword_25B03D000, v6, v7, "Provider %s fail snapshot for %s - %@", v10, 0x20u);
    sub_25B058448(v11, &unk_27FA31850, &qword_25B0E74B0);
    MEMORY[0x25F8613E0](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v12, -1, -1);
    MEMORY[0x25F8613E0](v10, -1, -1);
  }

  v22 = v0[14];
  swift_willThrow();
  v23 = v0[1];
  v24 = v0[14];

  return v23();
}

void sub_25B086044(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState));
  sub_25B058D54(&v1[2]);

  os_unfair_lock_unlock(v1);
}

uint64_t sub_25B0860A4()
{
  sub_25B0597A8(v0 + OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_placement);
  v1 = OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_instanceIdentifier;
  v2 = sub_25B0E24A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_faceQueue);

  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_25B086168(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B0498DC;

  return sub_25B085214(a1);
}

uint64_t sub_25B086204@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  sub_25B084E20();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

id sub_25B08628C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  [*&v1[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_face] removeObserver_];
  v7 = &v1[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_continuations];
  os_unfair_lock_lock(&v1[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_continuations]);
  v8 = *(v7 + 1);
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
      (*(v10 - 8))(v6, v2);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  os_unfair_lock_unlock(v7);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_dealloc);
}

void sub_25B0864D8()
{
  if (qword_27FA30CF8 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  __swift_project_value_buffer(v1, qword_27FA31760);
  v2 = v0;
  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15[0] = v6;
    *v5 = 136315394;
    sub_25B0E24A0();
    sub_25B08405C();
    v7 = sub_25B0E3E20();
    v9 = sub_25B04BE04(v7, v8, v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = *&v2[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_face];
    swift_getObjectType();
    v11 = sub_25B0E3FB0();
    v13 = sub_25B04BE04(v11, v12, v15);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_25B03D000, v3, v4, "Observer using %s got face update for %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v6, -1, -1);
    MEMORY[0x25F8613E0](v5, -1, -1);
  }

  v14 = &v2[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_continuations];
  os_unfair_lock_lock(v14);
  sub_25B0866D0(&v14[2]._os_unfair_lock_opaque);

  os_unfair_lock_unlock(v14);
}

uint64_t sub_25B0866D0(void *a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v2 = *(v44 - 8);
  v3 = *(v2 + 64);
  v4 = (MEMORY[0x28223BE20])();
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
  result = *a1;
  v41 = *(*a1 + 16);
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

  *v29 = v16;
  return result;
}

uint64_t IdentifiableFace.placement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B0E2750();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = (a1 + *(type metadata accessor for FacePlacement(0) + 20));
  v5 = &v4[*(type metadata accessor for FacePlacement.Location(0) + 20)];
  result = sub_25B0E2530();
  *v4 = 0;
  return result;
}

uint64_t IdentifiableFace.roundTripSnapshotKey.getter()
{
  v1[11] = v0;
  v2 = sub_25B0E24A0();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v5 = type metadata accessor for FacePlacement(0);
  v1[15] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  sub_25B0E3900();
  v1[17] = sub_25B0E38F0();
  v8 = sub_25B0E3850();
  v1[18] = v8;
  v1[19] = v7;

  return MEMORY[0x2822009F8](sub_25B086C7C, v8, v7);
}

uint64_t sub_25B086C7C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 88);
  v4 = sub_25B0E2750();
  (*(*(v4 - 8) + 16))(v1, v3, v4);
  v5 = (v1 + *(v2 + 20));
  v6 = &v5[*(type metadata accessor for FacePlacement.Location(0) + 20)];
  sub_25B0E2530();
  *v5 = 0;
  v7 = type metadata accessor for OnDemandSnapshotProvider(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  *(v0 + 160) = v10;
  v11 = OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_instanceIdentifier;
  sub_25B0E2490();
  v12 = OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_faceQueue;
  if (qword_27FA30C90 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 128);
  v26 = v13;
  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  v16 = *(v0 + 96);
  *(v10 + v12) = qword_27FA31318;

  v17 = sub_25B0E2730();
  sub_25B0596E0(v13, v10 + OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_placement);
  v18 = *(v15 + 16);
  v18(v14, v10 + v11, v16);
  v19 = type metadata accessor for FaceObserver(0);
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_continuations];
  *v21 = 0;
  *(v21 + 1) = MEMORY[0x277D84F90];
  *&v20[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_face] = v17;
  v18(&v20[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_instanceIdentifier], v14, v16);
  *(v0 + 72) = v20;
  *(v0 + 80) = v19;
  v22 = v17;
  v23 = objc_msgSendSuper2((v0 + 72), sel_init);
  [v22 addObserver_];
  (*(v15 + 8))(v14, v16);

  sub_25B0597A8(v26);
  *(v10 + 16) = v23;
  v24 = swift_task_alloc();
  *(v0 + 168) = v24;
  *v24 = v0;
  v24[1] = sub_25B086F20;

  return sub_25B085214(v0 + 16);
}

uint64_t sub_25B086F20()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 152);
  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_25B08714C;
  }

  else
  {
    v7 = sub_25B08705C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_25B08705C()
{
  v1 = v0[20];
  v2 = v0[17];

  v3 = v0[3];
  if (v3)
  {
    v4 = v0[2];
    v6 = v0[4];
    v5 = v0[5];
    v7 = v0[6];
    v8 = v0[7];
    v9 = v0[8];

    sub_25B0505A8(v4, v3, v6, v5, v7, v8, v9);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v10 = v0[16];
  v11 = v0[14];

  v12 = v0[1];

  return v12(v6, v5);
}

uint64_t sub_25B08714C()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];

  v5 = v0[1];
  v6 = v0[22];

  return v5();
}

uint64_t IdentifiableFace.localSnapshot.getter()
{
  v1[11] = v0;
  v2 = sub_25B0E24A0();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v5 = type metadata accessor for FacePlacement(0);
  v1[15] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  sub_25B0E3900();
  v1[17] = sub_25B0E38F0();
  v8 = sub_25B0E3850();
  v1[18] = v8;
  v1[19] = v7;

  return MEMORY[0x2822009F8](sub_25B08733C, v8, v7);
}

uint64_t sub_25B08733C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 88);
  v4 = sub_25B0E2750();
  (*(*(v4 - 8) + 16))(v1, v3, v4);
  v5 = (v1 + *(v2 + 20));
  v6 = &v5[*(type metadata accessor for FacePlacement.Location(0) + 20)];
  sub_25B0E2530();
  *v5 = 0;
  v7 = type metadata accessor for OnDemandSnapshotProvider(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  *(v0 + 160) = v10;
  v11 = OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_instanceIdentifier;
  sub_25B0E2490();
  v12 = OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_faceQueue;
  if (qword_27FA30C90 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 128);
  v26 = v13;
  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  v16 = *(v0 + 96);
  *(v10 + v12) = qword_27FA31318;

  v17 = sub_25B0E2730();
  sub_25B0596E0(v13, v10 + OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_placement);
  v18 = *(v15 + 16);
  v18(v14, v10 + v11, v16);
  v19 = type metadata accessor for FaceObserver(0);
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_continuations];
  *v21 = 0;
  *(v21 + 1) = MEMORY[0x277D84F90];
  *&v20[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_face] = v17;
  v18(&v20[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_instanceIdentifier], v14, v16);
  *(v0 + 72) = v20;
  *(v0 + 80) = v19;
  v22 = v17;
  v23 = objc_msgSendSuper2((v0 + 72), sel_init);
  [v22 addObserver_];
  (*(v15 + 8))(v14, v16);

  sub_25B0597A8(v26);
  *(v10 + 16) = v23;
  v24 = swift_task_alloc();
  *(v0 + 168) = v24;
  *v24 = v0;
  v24[1] = sub_25B0875E0;

  return sub_25B085214(v0 + 16);
}

uint64_t sub_25B0875E0()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 152);
  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_25B08714C;
  }

  else
  {
    v7 = sub_25B08771C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_25B08771C()
{
  v1 = v0[20];
  v2 = v0[17];

  v3 = v0[3];
  if (v3)
  {
    v4 = v0[2];
    v5 = v0[4];
    v6 = v0[5];
    v7 = v0[6];
    v8 = v0[7];
    v9 = v0[8];
    v10 = v9;
    sub_25B0505A8(v4, v3, v5, v6, v7, v8, v9);
  }

  else
  {
    v9 = 0;
  }

  v11 = v0[16];
  v12 = v0[14];

  v13 = v0[1];

  return v13(v9);
}

uint64_t sub_25B087808()
{
  result = type metadata accessor for FacePlacement(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_25B0E24A0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25B0878F8()
{
  result = sub_25B0E24A0();
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

uint64_t sub_25B0879AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25B0498DC;

  return sub_25B085934(a1, v5, v4);
}

uint64_t sub_25B087A78()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31860);
  __swift_project_value_buffer(v0, qword_27FA31860);
  return sub_25B0E2960();
}

uint64_t GalleryLoader.__allocating_init(device:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t GalleryLoader.faces.getter()
{
  v1[118] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31878, &unk_25B0E8B00);
  v1[119] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[120] = swift_task_alloc();
  v1[121] = swift_task_alloc();
  v4 = type metadata accessor for FacePlacement(0);
  v1[122] = v4;
  v5 = *(v4 - 8);
  v1[123] = v5;
  v6 = *(v5 + 64) + 15;
  v1[124] = swift_task_alloc();
  v7 = sub_25B0E2750();
  v1[125] = v7;
  v8 = *(v7 - 8);
  v1[126] = v8;
  v9 = *(v8 + 64) + 15;
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v10 = sub_25B0E24A0();
  v1[129] = v10;
  v11 = *(v10 - 8);
  v1[130] = v11;
  v12 = *(v11 + 64) + 15;
  v1[131] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31880, &qword_25B0E7758);
  v1[132] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v1[133] = swift_task_alloc();
  v1[134] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B087D50, 0, 0);
}

uint64_t sub_25B087D50()
{
  if (qword_27FA30D00 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  v0[135] = __swift_project_value_buffer(v1, qword_27FA31860);
  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25B03D000, v2, v3, "Faces requested…", v4, 2u);
    MEMORY[0x25F8613E0](v4, -1, -1);
  }

  v5 = v0[118];

  v6 = *(v5 + 16);
  type metadata accessor for WatchGallery();
  v7 = swift_allocObject();
  v0[136] = v7;
  *(v7 + 16) = v6;
  v8 = v6;
  v9 = swift_task_alloc();
  v0[137] = v9;
  *v9 = v0;
  v9[1] = sub_25B087ED0;

  return WatchGallery.groups.getter();
}

uint64_t sub_25B087ED0(uint64_t a1)
{
  v2 = *(*v1 + 1096);
  v4 = *v1;
  *(*v1 + 1104) = a1;

  return MEMORY[0x2822009F8](sub_25B087FD0, 0, 0);
}

void sub_25B087FD0()
{
  v191 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v174 = *(v0 + 1056);
    v4 = *(v0 + 1040);
    v189 = MEMORY[0x277D84F90];

    sub_25B08C230(0, v2, 0);
    v3 = v189;
    v181 = *(v1 + 16);
    v5 = sub_25B0E2830();
    v6 = 0;
    v167 = v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));
    v169 = *(v5 - 8);
    v171 = v5;
    v163 = (v4 + 8);
    v176 = v2;
    v179 = v1;
    while (v181 != v6)
    {
      if (v6 >= *(v1 + 16))
      {
        goto LABEL_93;
      }

      v186 = v3;
      v7 = *(v0 + 1072);
      v8 = *(v174 + 48);
      v9 = *(v0 + 1064);
      (*(v169 + 16))(v7 + v8, v167 + *(v169 + 72) * v6, v171);
      *v9 = v6;
      (*(v169 + 32))(&v9[*(v174 + 48)], v7 + v8, v171);
      v10 = sub_25B0E2800();
      if (v11)
      {
        v12 = v11;
        v184 = v10;
      }

      else
      {
        v13 = *(v0 + 1048);
        v14 = *(v0 + 1032);
        sub_25B0E2490();
        v184 = sub_25B0E2460();
        v12 = v15;
        (*v163)(v13, v14);
      }

      v16 = *(v0 + 1064);
      v17 = sub_25B0E2820();
      v19 = v18;
      v20 = sub_25B0E27D0();
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = MEMORY[0x277D84F98];
      }

      v22 = sub_25B0E2810();
      sub_25B058448(v16, &qword_27FA31880, &qword_25B0E7758);
      v3 = v186;
      v189 = v186;
      v24 = v186[2];
      v23 = v186[3];
      if (v24 >= v23 >> 1)
      {
        sub_25B08C230((v23 > 1), v24 + 1, 1);
        v3 = v189;
      }

      v3[2] = v24 + 1;
      v25 = &v3[9 * v24];
      v25[11] = v22;
      v25[12] = v6;
      v25[4] = v184;
      v25[5] = v12;
      v25[6] = v17;
      v25[7] = v19;
      v25[8] = 0;
      v25[9] = 0;
      v25[10] = v21;
      ++v6;
      v1 = v179;
      if (v176 == v6)
      {
        v26 = *(v0 + 1104);

        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

LABEL_15:

  v187 = v3;
  v28 = sub_25B0DBB48(v27);
  v29 = *(v28 + 16);

  if (v29)
  {
    v30 = 0;
    v31 = (v28 + 32);
    v32 = MEMORY[0x277D84F90];
    v33 = *(v0 + 984);
    while (1)
    {
      if (v30 >= *(v28 + 16))
      {
        goto LABEL_94;
      }

      v34 = v31[1];
      *(v0 + 416) = *v31;
      *(v0 + 432) = v34;
      v35 = v31[2];
      v36 = v31[3];
      v37 = v31[5];
      *(v0 + 480) = v31[4];
      *(v0 + 496) = v37;
      *(v0 + 448) = v35;
      *(v0 + 464) = v36;
      v39 = *v31;
      v38 = v31[1];
      v41 = v31[4];
      v40 = v31[5];
      v43 = v31[2];
      v42 = v31[3];
      *(v0 + 16) = v30;
      *(v0 + 56) = v43;
      *(v0 + 72) = v42;
      *(v0 + 88) = v41;
      *(v0 + 104) = v40;
      *(v0 + 24) = v39;
      *(v0 + 40) = v38;
      v44 = *(v0 + 72);
      *(v0 + 256) = *(v0 + 56);
      *(v0 + 272) = v44;
      v45 = *(v0 + 104);
      *(v0 + 288) = *(v0 + 88);
      *(v0 + 304) = v45;
      v46 = *(v0 + 40);
      *(v0 + 224) = *(v0 + 24);
      *(v0 + 240) = v46;
      sub_25B08CE58(v0 + 416, v0 + 512);
      v47 = sub_25B088F18(v30, v0 + 224);
      sub_25B058448(v0 + 16, &qword_27FA31888, &qword_25B0E7760);
      v48 = *(v47 + 16);
      v49 = v32[2];
      v50 = v49 + v48;
      if (__OFADD__(v49, v48))
      {
        goto LABEL_95;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && (v52 = v32[3] >> 1, v52 >= v50))
      {
        if (!*(v47 + 16))
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v49 <= v50)
        {
          v53 = v49 + v48;
        }

        else
        {
          v53 = v49;
        }

        v32 = sub_25B08A26C(isUniquelyReferenced_nonNull_native, v53, 1, v32, &qword_27FA318E8, &qword_25B0E77F8, type metadata accessor for FacePlacement);
        v52 = v32[3] >> 1;
        if (!*(v47 + 16))
        {
LABEL_17:

          v28 = v185;
          if (v48)
          {
            goto LABEL_96;
          }

          goto LABEL_18;
        }
      }

      if (v52 - v32[2] < v48)
      {
        goto LABEL_101;
      }

      v54 = *(v0 + 976);
      v55 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v56 = *(v33 + 72);
      swift_arrayInitWithCopy();

      v28 = v185;
      if (v48)
      {
        v57 = v32[2];
        v58 = __OFADD__(v57, v48);
        v59 = v57 + v48;
        if (v58)
        {
          goto LABEL_103;
        }

        v32[2] = v59;
      }

LABEL_18:
      ++v30;
      v31 += 6;
      if (v29 == v30)
      {
        goto LABEL_34;
      }
    }
  }

  v32 = MEMORY[0x277D84F90];
LABEL_34:
  v60 = *(v0 + 1080);

  v61 = sub_25B0E2950();
  v62 = sub_25B0E3A50();
  v175 = v32;
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 134217984;
    *(v63 + 4) = v32[2];

    _os_log_impl(&dword_25B03D000, v61, v62, "Curated gallery has %ld face(s) to load!", v63, 0xCu);
    MEMORY[0x25F8613E0](v63, -1, -1);
  }

  else
  {
  }

  v64 = *(v28 + 16);

  if (v64)
  {
    v65 = 0;
    v66 = (v28 + 32);
    v67 = MEMORY[0x277D84F90];
    v68 = *(v0 + 984);
    while (v65 < *(v28 + 16))
    {
      v69 = v66[1];
      *(v0 + 608) = *v66;
      *(v0 + 624) = v69;
      v70 = v66[2];
      v71 = v66[3];
      v72 = v66[5];
      *(v0 + 672) = v66[4];
      *(v0 + 688) = v72;
      *(v0 + 640) = v70;
      *(v0 + 656) = v71;
      v74 = *v66;
      v73 = v66[1];
      v76 = v66[4];
      v75 = v66[5];
      v78 = v66[2];
      v77 = v66[3];
      *(v0 + 120) = v65;
      *(v0 + 160) = v78;
      *(v0 + 176) = v77;
      *(v0 + 192) = v76;
      *(v0 + 208) = v75;
      *(v0 + 128) = v74;
      *(v0 + 144) = v73;
      v79 = *(v0 + 176);
      *(v0 + 352) = *(v0 + 160);
      *(v0 + 368) = v79;
      v80 = *(v0 + 208);
      *(v0 + 384) = *(v0 + 192);
      *(v0 + 400) = v80;
      v81 = *(v0 + 144);
      *(v0 + 320) = *(v0 + 128);
      *(v0 + 336) = v81;
      sub_25B08CE58(v0 + 608, v0 + 704);
      v82 = sub_25B08924C(v65, v0 + 320);
      sub_25B058448(v0 + 120, &qword_27FA31888, &qword_25B0E7760);
      v83 = *(v82 + 16);
      v84 = v67[2];
      v85 = v84 + v83;
      if (__OFADD__(v84, v83))
      {
        goto LABEL_99;
      }

      v86 = swift_isUniquelyReferenced_nonNull_native();
      if ((v86 & 1) == 0 || (v87 = v67[3] >> 1, v87 < v85))
      {
        if (v84 <= v85)
        {
          v88 = v84 + v83;
        }

        else
        {
          v88 = v84;
        }

        v67 = sub_25B08A26C(v86, v88, 1, v67, &qword_27FA318E8, &qword_25B0E77F8, type metadata accessor for FacePlacement);
        v87 = v67[3] >> 1;
      }

      v28 = v185;
      if (*(v82 + 16))
      {
        if (v87 - v67[2] < v83)
        {
          goto LABEL_102;
        }

        v89 = *(v0 + 976);
        v90 = (*(v68 + 80) + 32) & ~*(v68 + 80);
        v91 = *(v68 + 72);
        swift_arrayInitWithCopy();

        if (v83)
        {
          v92 = v67[2];
          v58 = __OFADD__(v92, v83);
          v93 = v92 + v83;
          if (v58)
          {
            goto LABEL_104;
          }

          v67[2] = v93;
        }
      }

      else
      {

        if (v83)
        {
          goto LABEL_100;
        }
      }

      ++v65;
      v66 += 6;
      if (v64 == v65)
      {
        goto LABEL_55;
      }
    }

LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v67 = MEMORY[0x277D84F90];
LABEL_55:
  v94 = *(v0 + 1080);

  v95 = sub_25B0E2950();
  v96 = sub_25B0E3A50();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 134217984;
    *(v97 + 4) = v67[2];

    _os_log_impl(&dword_25B03D000, v95, v96, "Gallery details has %ld face(s) to load!", v97, 0xCu);
    MEMORY[0x25F8613E0](v97, -1, -1);
  }

  else
  {
  }

  v182 = v187[2];
  if (v182)
  {
    v98 = 0;
    v99 = v187 + 4;
    v172 = *(v0 + 1008);
    v177 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v98 >= v187[2])
      {
        goto LABEL_97;
      }

      *(v0 + 800) = *v99;
      v100 = *(v99 + 1);
      v101 = *(v99 + 2);
      v102 = *(v99 + 3);
      *(v0 + 864) = v99[8];
      *(v0 + 832) = v101;
      *(v0 + 848) = v102;
      *(v0 + 816) = v100;
      v103 = *(v0 + 800);
      v104 = *(v0 + 808);
      sub_25B08CEB4(v0 + 800, v0 + 872);
      v105 = sub_25B0E3730();
      v106 = sub_25B0E3730();
      v107 = NTKCompanionClockFaceLocalizedString();

      v108 = sub_25B0E3740();
      v110 = v109;

      if (v103 == v108 && v104 == v110)
      {
      }

      else
      {
        v111 = sub_25B0E3E30();

        if ((v111 & 1) == 0)
        {
          v112 = *(v0 + 856);
          if (*(v112 + 16))
          {
            v113 = *(v0 + 1024);
            v114 = *(v0 + 1016);
            v115 = *(v0 + 1000);
            v116 = (*(v172 + 80) + 32) & ~*(v172 + 80);
            (*(v172 + 16))(v114, v112 + v116, v115);
            sub_25B08CF10(v0 + 800);
            v117 = *(v172 + 32);
            v117(v113, v114, v115);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v177 = sub_25B08A26C(0, v177[2] + 1, 1, v177, &qword_27FA318B8, &qword_25B0E77C8, MEMORY[0x277D2BE00]);
            }

            v119 = v177[2];
            v118 = v177[3];
            if (v119 >= v118 >> 1)
            {
              v177 = sub_25B08A26C(v118 > 1, v119 + 1, 1, v177, &qword_27FA318B8, &qword_25B0E77C8, MEMORY[0x277D2BE00]);
            }

            v120 = *(v0 + 1024);
            v121 = *(v0 + 1000);
            v177[2] = v119 + 1;
            v117(v177 + v116 + *(v172 + 72) * v119, v120, v121);
            goto LABEL_62;
          }
        }
      }

      sub_25B08CF10(v0 + 800);
LABEL_62:
      ++v98;
      v99 += 9;
      if (v182 == v98)
      {
        goto LABEL_74;
      }
    }
  }

  v177 = MEMORY[0x277D84F90];
LABEL_74:
  v189 = v177;

  sub_25B08A448(&v189);

  v122 = v189;
  v123 = v189[2];
  if (v123)
  {
    v124 = *(v0 + 1008);
    v164 = *(v0 + 976);
    v165 = *(v0 + 984);
    v162 = *(v0 + 952);
    v189 = MEMORY[0x277D84F90];
    sub_25B08C1EC(0, v123, 0);
    v125 = 0;
    v183 = v189;
    v178 = v122[2];
    v161 = v122 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
    v168 = v124;
    v170 = v123;
    v173 = v122;
    v166 = v67;
    while (v178 != v125)
    {
      if (v125 >= v122[2])
      {
        goto LABEL_106;
      }

      v126 = *(v0 + 968);
      v127 = *(v162 + 48);
      v128 = *(v0 + 1000);
      v180 = *(v0 + 992);
      v129 = *(v0 + 960);
      v130 = *(v168 + 16);
      v130(v126 + v127, &v161[*(v168 + 72) * v125], v128);
      *v129 = v125;
      v131 = *(v162 + 48);
      (*(v168 + 32))(&v129[v131], v126 + v127, v128);
      v130(v180, &v129[v131], v128);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31890, &qword_25B0E7768);
      v132 = swift_allocObject();
      *(v132 + 16) = xmmword_25B0E7720;
      *(v132 + 32) = v125;
      v133 = (v180 + *(v164 + 20));
      v134 = &v133[*(type metadata accessor for FacePlacement.Location(0) + 20)];
      MEMORY[0x25F85F060](v132);
      *v133 = 4;
      sub_25B058448(v129, &qword_27FA31878, &unk_25B0E8B00);
      v189 = v183;
      v136 = v183[2];
      v135 = v183[3];
      if (v136 >= v135 >> 1)
      {
        sub_25B08C1EC(v135 > 1, v136 + 1, 1);
        v183 = v189;
      }

      v137 = *(v0 + 992);
      ++v125;
      v183[2] = v136 + 1;
      sub_25B059744(v137, v183 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v136);
      v122 = v173;
      v138 = v175;
      v67 = v166;
      if (v170 == v125)
      {
        v139 = *(v0 + 1104);

        goto LABEL_83;
      }
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    return;
  }

  v140 = *(v0 + 1104);

  v183 = MEMORY[0x277D84F90];
  v138 = v175;
LABEL_83:
  v141 = *(v0 + 1080);

  v142 = sub_25B0E2950();
  v143 = sub_25B0E3A50();
  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    *v144 = 134217984;
    *(v144 + 4) = v183[2];

    _os_log_impl(&dword_25B03D000, v142, v143, "All Faces has %ld face(s) to load!", v144, 0xCu);
    MEMORY[0x25F8613E0](v144, -1, -1);
  }

  else
  {
  }

  v145 = *(v0 + 1080);
  v190 = v138;
  sub_25B08BE30(v67);
  sub_25B08BE30(v183);
  v146 = v190;

  v147 = sub_25B0E2950();
  v148 = sub_25B0E3A50();
  v149 = os_log_type_enabled(v147, v148);
  v150 = *(v0 + 1088);
  v188 = v146;
  if (v149)
  {
    v151 = swift_slowAlloc();
    *v151 = 134217984;
    *(v151 + 4) = v146[2];

    _os_log_impl(&dword_25B03D000, v147, v148, "Identified %ld face(s) to load!", v151, 0xCu);
    MEMORY[0x25F8613E0](v151, -1, -1);
  }

  else
  {
  }

  v152 = *(v0 + 1072);
  v153 = *(v0 + 1064);
  v154 = *(v0 + 1048);
  v155 = *(v0 + 1024);
  v156 = *(v0 + 1016);
  v157 = *(v0 + 992);
  v158 = *(v0 + 968);
  v159 = *(v0 + 960);

  v160 = *(v0 + 8);

  v160(v188);
}

uint64_t sub_25B088F18(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31878, &unk_25B0E8B00);
  v3 = *(*(v43 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v43);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = &v32 - v6;
  v7 = type metadata accessor for FacePlacement(0);
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 64);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v46 = MEMORY[0x277D84F90];
    sub_25B08C1EC(0, v12, 0);
    v13 = v46;
    v14 = 0;
    v35 = sub_25B0E2750();
    v15 = *(v35 - 8);
    v16 = *(v15 + 16);
    v15 += 16;
    v38 = v16;
    v17 = (v11 + ((*(v15 + 64) + 32) & ~*(v15 + 64)));
    v18 = *(v15 + 56);
    v36 = v15;
    v33 = (v15 + 16);
    v34 = v18;
    v32 = xmmword_25B0E7730;
    v37 = v12;
    v19 = v39;
    do
    {
      v21 = v42;
      v20 = v43;
      v22 = *(v43 + 48);
      v45 = v17;
      v23 = v35;
      v24 = v38;
      v38(&v42[v22], v17, v35);
      *v19 = v14;
      v25 = *(v20 + 48);
      (*v33)(&v19[v25], &v21[v22], v23);
      v24(v10, &v19[v25], v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31890, &qword_25B0E7768);
      v26 = swift_allocObject();
      *(v26 + 16) = v32;
      *(v26 + 32) = v44;
      *(v26 + 40) = v14;
      v27 = &v10[*(v41 + 20)];
      v28 = &v27[*(type metadata accessor for FacePlacement.Location(0) + 20)];
      MEMORY[0x25F85F060](v26);
      *v27 = 3;
      sub_25B058448(v19, &qword_27FA31878, &unk_25B0E8B00);
      v46 = v13;
      v30 = *(v13 + 16);
      v29 = *(v13 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_25B08C1EC(v29 > 1, v30 + 1, 1);
        v13 = v46;
      }

      ++v14;
      *(v13 + 16) = v30 + 1;
      sub_25B059744(v10, v13 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30);
      v17 = &v45[v34];
    }

    while (v37 != v14);
  }

  return v13;
}

uint64_t sub_25B08924C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = (v2 + 32);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v32[0] = *v5;
    v8 = v5[1];
    v9 = v5[2];
    v10 = v5[3];
    v33 = *(v5 + 8);
    v32[2] = v9;
    v32[3] = v10;
    v32[1] = v8;
    v11 = *(v5 + 8);
    v13 = v5[2];
    v12 = v5[3];
    v14 = *v5;
    v15 = v5[1];
    v34 = v4;
    v36 = v15;
    v37 = v13;
    v38 = v12;
    v39 = v11;
    v35 = v14;
    v41 = v11;
    v40[2] = v13;
    v40[3] = v12;
    v40[0] = v14;
    v40[1] = v15;
    sub_25B08CEB4(v32, v31);
    v16 = sub_25B089494(v4, v40, a1);
    result = sub_25B058448(&v34, &qword_27FA318F0, &qword_25B0E7800);
    v17 = *(v16 + 16);
    v18 = v6[2];
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && (v21 = v6[3] >> 1, v21 >= v19))
    {
      if (*(v16 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v22 = v18 + v17;
      }

      else
      {
        v22 = v18;
      }

      v6 = sub_25B08A26C(isUniquelyReferenced_nonNull_native, v22, 1, v6, &qword_27FA318E8, &qword_25B0E77F8, type metadata accessor for FacePlacement);
      v21 = v6[3] >> 1;
      if (*(v16 + 16))
      {
LABEL_14:
        v23 = v21 - v6[2];
        result = type metadata accessor for FacePlacement(0);
        v24 = *(result - 8);
        if (v23 < v17)
        {
          goto LABEL_22;
        }

        v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
        v26 = *(v24 + 72);
        swift_arrayInitWithCopy();

        if (v17)
        {
          v27 = v6[2];
          v28 = __OFADD__(v27, v17);
          v29 = v27 + v17;
          if (v28)
          {
            goto LABEL_23;
          }

          v6[2] = v29;
        }

        goto LABEL_4;
      }
    }

    if (v17)
    {
      goto LABEL_21;
    }

LABEL_4:
    ++v4;
    v5 = (v5 + 72);
    if (v3 == v4)
    {
      return v6;
    }
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

uint64_t sub_25B089494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a1;
  v49 = a3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31878, &unk_25B0E8B00);
  v4 = *(*(v47 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v47);
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = &v36 - v7;
  v8 = type metadata accessor for FacePlacement(0);
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 56);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v51 = MEMORY[0x277D84F90];
    sub_25B08C1EC(0, v13, 0);
    v14 = v51;
    v15 = 0;
    v39 = sub_25B0E2750();
    v16 = *(v39 - 8);
    v17 = *(v16 + 16);
    v16 += 16;
    v42 = v17;
    v18 = v12 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v19 = *(v16 + 56);
    v40 = v16;
    v37 = (v16 + 16);
    v38 = v19;
    v36 = xmmword_25B0E7740;
    v41 = v13;
    v20 = v17;
    v21 = v43;
    do
    {
      v23 = v46;
      v22 = v47;
      v24 = *(v47 + 48);
      v50 = v18;
      v25 = v14;
      v26 = v39;
      v20(&v46[v24], v18, v39);
      *v21 = v15;
      v27 = *(v22 + 48);
      (*v37)(&v21[v27], &v23[v24], v26);
      v28 = v26;
      v14 = v25;
      v20(v11, &v21[v27], v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31890, &qword_25B0E7768);
      v29 = swift_allocObject();
      *(v29 + 16) = v36;
      v30 = v48;
      *(v29 + 32) = v49;
      *(v29 + 40) = v30;
      *(v29 + 48) = v15;
      v31 = &v11[*(v45 + 20)];
      v32 = &v31[*(type metadata accessor for FacePlacement.Location(0) + 20)];
      MEMORY[0x25F85F060](v29);
      *v31 = 5;
      sub_25B058448(v21, &qword_27FA31878, &unk_25B0E8B00);
      v51 = v25;
      v34 = *(v25 + 16);
      v33 = *(v25 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_25B08C1EC(v33 > 1, v34 + 1, 1);
        v14 = v51;
      }

      ++v15;
      *(v14 + 16) = v34 + 1;
      sub_25B059744(v11, v14 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v34);
      v18 = v50 + v38;
    }

    while (v41 != v15);
  }

  return v14;
}

BOOL sub_25B0897D0()
{
  v0 = sub_25B0E2730();
  v1 = [v0 name];

  if (v1)
  {
    sub_25B0E3740();

    v2 = sub_25B0E2730();
    v3 = [v2 name];

    if (v3)
    {
      sub_25B0E3740();

      sub_25B04C9BC();
      v4 = sub_25B0E3B20();

      return v4 == -1;
    }
  }

  return 0;
}

uint64_t GalleryLoader.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

char *sub_25B08993C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318B0, &qword_25B0E77C0);
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

size_t sub_25B089A88(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_25B089CE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318C0, &qword_25B0E77D0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25B089DF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318C8, &qword_25B0E77D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25B089EF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318A8, &unk_25B0E94C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25B08A018(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318A0, &qword_25B0E77B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[192 * v8])
    {
      memmove(v12, v13, 192 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25B08A138(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31920, &qword_25B0E7828);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_25B08A26C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_25B08A448(void **a1)
{
  v2 = *(sub_25B0E2750() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25B0D40B8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25B08A4F0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25B08A4F0(uint64_t *a1)
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
        sub_25B0E2750();
        v6 = sub_25B0E3820();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25B0E2750() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25B08A9A8(v8, v9, a1, v4);
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
    return sub_25B08A61C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25B08A61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_25B0E2750();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v57 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v67 = &v47 - v13;
  result = MEMORY[0x28223BE20](v12);
  v17 = &v47 - v15;
  v49 = a2;
  if (a3 != a2)
  {
    v19 = *(v16 + 16);
    v18 = v16 + 16;
    v20 = *a4;
    v21 = *(v18 + 56);
    v59 = (v18 - 8);
    v60 = v19;
    v61 = v18;
    v22 = v20 + v21 * (a3 - 1);
    v54 = -v21;
    v55 = (v18 + 16);
    v23 = a1 - a3;
    v56 = v20;
    v48 = v21;
    v24 = v20 + v21 * a3;
    v25 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
    v58 = &v47 - v15;
LABEL_7:
    v52 = v22;
    v53 = a3;
    v50 = v24;
    v51 = v23;
    v27 = v23;
    while (1)
    {
      v28 = v60;
      v60(v17, v24, v8);
      v28(v67, v22, v8);
      v29 = sub_25B0E2730();
      v30 = [v29 v25[137]];

      if (!v30)
      {
        goto LABEL_5;
      }

      v62 = v27;
      v31 = v25;
      v32 = sub_25B0E3740();
      v34 = v33;

      v35 = sub_25B0E2730();
      v36 = [v35 v31 + 3064];

      if (!v36)
      {

        v25 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
LABEL_5:
        v26 = *v59;
        (*v59)(v67, v8);
        result = (v26)(v17, v8);
LABEL_6:
        a3 = v53 + 1;
        v22 = v52 + v48;
        v23 = v51 - 1;
        v24 = v50 + v48;
        if (v53 + 1 == v49)
        {
          return result;
        }

        goto LABEL_7;
      }

      v37 = sub_25B0E3740();
      v39 = v38;

      v65 = v32;
      v66 = v34;
      v63 = v37;
      v64 = v39;
      sub_25B04C9BC();
      v40 = sub_25B0E3B20();

      v41 = v67;
      v17 = v58;

      v42 = *v59;
      (*v59)(v41, v8);
      result = (v42)(v17, v8);
      v25 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
      v43 = v62;
      if (v40 != -1)
      {
        goto LABEL_6;
      }

      if (!v56)
      {
        break;
      }

      v44 = *v55;
      v45 = v57;
      (*v55)(v57, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v44)(v22, v45, v8);
      v22 += v54;
      v24 += v54;
      v46 = __CFADD__(v43, 1);
      v27 = v43 + 1;
      if (v46)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25B08A9A8(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v150 = a1;
  v174 = sub_25B0E2750();
  v8 = *(*(v174 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v174);
  v155 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v168 = &v146 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v146 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v173 = &v146 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v146 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v164 = &v146 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  result = MEMORY[0x28223BE20](v23);
  v163 = a3;
  v28 = *(a3 + 8);
  v161 = v26;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_106:
    a3 = *v150;
    if (!*v150)
    {
      goto LABEL_146;
    }

    a4 = v30;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_140:
      result = sub_25B0D3F4C(a4);
    }

    v179 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v163)
      {
        v139 = *(result + 16 * a4);
        v140 = result;
        v141 = *(result + 16 * (a4 - 1) + 40);
        sub_25B08B6B0(*v163 + v161[9] * v139, *v163 + v161[9] * *(result + 16 * (a4 - 1) + 32), (*v163 + v161[9] * v141), a3);
        if (v5)
        {
        }

        if (v141 < v139)
        {
          goto LABEL_133;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v140 = sub_25B0D3F4C(v140);
        }

        if (a4 - 2 >= *(v140 + 2))
        {
          goto LABEL_134;
        }

        v142 = &v140[16 * a4];
        *v142 = v139;
        *(v142 + 1) = v141;
        v179 = v140;
        sub_25B0D3EC0(a4 - 1);
        result = v179;
        a4 = *(v179 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_144;
    }
  }

  v148 = &v146 - v25;
  v147 = v27;
  v29 = 0;
  v171 = v26 + 2;
  v172 = v26 + 1;
  v170 = v26 + 4;
  v30 = MEMORY[0x277D84F90];
  v31 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
  v149 = a4;
  v162 = v15;
  v160 = v20;
  while (1)
  {
    v32 = v29;
    v156 = v30;
    if (v29 + 1 < v28)
    {
      v165 = v28;
      v33 = v26[9];
      v34 = v29;
      v35 = *v163;
      v36 = v26[2];
      v169 = (*v163 + v33 * (v29 + 1));
      v37 = v174;
      (v36)(v148);
      v151 = v34;
      v38 = v35 + v33 * v34;
      v39 = v147;
      v159 = v36;
      (v36)(v147, v38, v37);
      v40 = v148;
      LODWORD(v166) = sub_25B0897D0();
      if (!v5)
      {
        v152 = 0;
        v41 = *v172;
        v42 = v39;
        v43 = v174;
        (*v172)(v42, v174);
        v158 = v41;
        result = (v41)(v40, v43);
        v44 = v151 + 2;
        a3 = v35 + v33 * (v151 + 2);
        v31 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
        v45 = v33;
        v167 = v33;
        while (1)
        {
          v48 = v165;
          if (v165 == v44)
          {
            break;
          }

          v49 = v174;
          v50 = v159;
          (v159)(v164, a3, v174);
          v50(v20, v169, v49);
          v51 = sub_25B0E2730();
          v52 = [v51 v31[137]];

          if (v52)
          {
            v53 = sub_25B0E3740();
            v55 = v54;

            v56 = sub_25B0E2730();
            v52 = [v56 v31[137]];

            if (v52)
            {
              v57 = sub_25B0E3740();
              v59 = v58;

              v177 = v53;
              v178 = v55;
              v175 = v57;
              v176 = v59;
              sub_25B04C9BC();
              v52 = sub_25B0E3B20();

              LODWORD(v52) = v52 == -1;
            }

            else
            {
            }

            v15 = v162;
            v31 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
          }

          v20 = v160;
          v46 = v174;
          v47 = v158;
          (v158)(v160, v174);
          result = v47(v164, v46);
          ++v44;
          v45 = v167;
          a3 += v167;
          v169 += v167;
          if ((v166 & 1) != v52)
          {
            v48 = v44 - 1;
            break;
          }
        }

        v5 = v152;
        v26 = v161;
        v60 = v156;
        a4 = v149;
        v32 = v151;
        if (v166)
        {
          if (v48 < v151)
          {
            goto LABEL_139;
          }

          if (v151 < v48)
          {
            v61 = v45 * (v48 - 1);
            v62 = v48 * v45;
            v63 = v48;
            v64 = v48;
            v65 = v151;
            v66 = v151 * v45;
            do
            {
              if (v65 != --v64)
              {
                v67 = *v163;
                if (!*v163)
                {
                  goto LABEL_143;
                }

                a3 = v67 + v66;
                v68 = *v170;
                (*v170)(v155, v67 + v66, v174, v60);
                if (v66 < v61 || a3 >= v67 + v62)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v66 != v61)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = v68(v67 + v61, v155, v174);
                v5 = v152;
                v60 = v156;
                v31 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
                v45 = v167;
              }

              ++v65;
              v61 -= v45;
              v62 -= v45;
              v66 += v45;
            }

            while (v65 < v64);
            v26 = v161;
            v15 = v162;
            a4 = v149;
            v32 = v151;
            v48 = v63;
          }
        }

        goto LABEL_30;
      }

      v143 = *v172;
      v144 = v39;
      v145 = v174;
      (*v172)(v144, v174);
      v143(v40, v145);
    }

    v48 = v29 + 1;
LABEL_30:
    v69 = v163[1];
    if (v48 >= v69)
    {
      goto LABEL_39;
    }

    if (__OFSUB__(v48, v32))
    {
      goto LABEL_136;
    }

    if (v48 - v32 >= a4)
    {
LABEL_39:
      v29 = v48;
      if (v48 < v32)
      {
        goto LABEL_135;
      }

      goto LABEL_40;
    }

    if (__OFADD__(v32, a4))
    {
      goto LABEL_137;
    }

    if ((v32 + a4) >= v69)
    {
      v70 = v163[1];
    }

    else
    {
      v70 = v32 + a4;
    }

    if (v70 < v32)
    {
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    if (v48 == v70)
    {
      goto LABEL_39;
    }

    v152 = v5;
    v116 = *v163;
    v117 = v26[9];
    v169 = v26[2];
    v118 = (v116 + v117 * (v48 - 1));
    v166 = -v117;
    v151 = v32;
    v119 = (v32 - v48);
    v167 = v116;
    v153 = v117;
    v120 = v116 + v48 * v117;
    v154 = v70;
LABEL_94:
    v165 = v48;
    v157 = v120;
    v158 = v119;
    v159 = v118;
LABEL_95:
    v122 = v174;
    v123 = v169;
    (v169)(v173, v120, v174);
    v123(v15, v118, v122);
    v124 = sub_25B0E2730();
    v125 = [v124 v31[137]];

    if (!v125)
    {
      goto LABEL_92;
    }

    v126 = v31;
    v127 = sub_25B0E3740();
    v129 = v128;

    v130 = v15;
    v131 = sub_25B0E2730();
    v132 = [v131 v126 + 3064];

    if (v132)
    {
      break;
    }

    v15 = v130;
    v31 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
LABEL_92:
    a4 = v172;
    a3 = *v172;
    v121 = v174;
    (*v172)(v15, v174);
    (a3)(v173, v121);
LABEL_93:
    v48 = v165 + 1;
    v118 = &v159[v153];
    v119 = v158 - 1;
    v120 = v157 + v153;
    v29 = v154;
    if (v165 + 1 != v154)
    {
      goto LABEL_94;
    }

    v5 = v152;
    v32 = v151;
    if (v154 < v151)
    {
      goto LABEL_135;
    }

LABEL_40:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v30 = v156;
    }

    else
    {
      result = sub_25B08993C(0, *(v156 + 2) + 1, 1, v156);
      v30 = result;
    }

    a3 = *(v30 + 2);
    v71 = *(v30 + 3);
    a4 = a3 + 1;
    if (a3 >= v71 >> 1)
    {
      result = sub_25B08993C((v71 > 1), a3 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = a4;
    v72 = &v30[16 * a3];
    *(v72 + 4) = v32;
    *(v72 + 5) = v29;
    v73 = *v150;
    if (!*v150)
    {
      goto LABEL_145;
    }

    if (a3)
    {
      while (2)
      {
        v74 = a4 - 1;
        if (a4 >= 4)
        {
          v79 = &v30[16 * a4 + 32];
          v80 = *(v79 - 64);
          v81 = *(v79 - 56);
          v85 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          if (v85)
          {
            goto LABEL_122;
          }

          v84 = *(v79 - 48);
          v83 = *(v79 - 40);
          v85 = __OFSUB__(v83, v84);
          v77 = v83 - v84;
          v78 = v85;
          if (v85)
          {
            goto LABEL_123;
          }

          v86 = &v30[16 * a4];
          v88 = *v86;
          v87 = *(v86 + 1);
          v85 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v85)
          {
            goto LABEL_125;
          }

          v85 = __OFADD__(v77, v89);
          v90 = v77 + v89;
          if (v85)
          {
            goto LABEL_128;
          }

          if (v90 >= v82)
          {
            v108 = &v30[16 * v74 + 32];
            v110 = *v108;
            v109 = *(v108 + 1);
            v85 = __OFSUB__(v109, v110);
            v111 = v109 - v110;
            if (v85)
            {
              goto LABEL_132;
            }

            if (v77 < v111)
            {
              v74 = a4 - 2;
            }
          }

          else
          {
LABEL_59:
            if (v78)
            {
              goto LABEL_124;
            }

            v91 = &v30[16 * a4];
            v93 = *v91;
            v92 = *(v91 + 1);
            v94 = __OFSUB__(v92, v93);
            v95 = v92 - v93;
            v96 = v94;
            if (v94)
            {
              goto LABEL_127;
            }

            v97 = &v30[16 * v74 + 32];
            v99 = *v97;
            v98 = *(v97 + 1);
            v85 = __OFSUB__(v98, v99);
            v100 = v98 - v99;
            if (v85)
            {
              goto LABEL_130;
            }

            if (__OFADD__(v95, v100))
            {
              goto LABEL_131;
            }

            if (v95 + v100 < v77)
            {
              goto LABEL_73;
            }

            if (v77 < v100)
            {
              v74 = a4 - 2;
            }
          }
        }

        else
        {
          if (a4 == 3)
          {
            v75 = *(v30 + 4);
            v76 = *(v30 + 5);
            v85 = __OFSUB__(v76, v75);
            v77 = v76 - v75;
            v78 = v85;
            goto LABEL_59;
          }

          v101 = &v30[16 * a4];
          v103 = *v101;
          v102 = *(v101 + 1);
          v85 = __OFSUB__(v102, v103);
          v95 = v102 - v103;
          v96 = v85;
LABEL_73:
          if (v96)
          {
            goto LABEL_126;
          }

          v104 = &v30[16 * v74];
          v106 = *(v104 + 4);
          v105 = *(v104 + 5);
          v85 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v85)
          {
            goto LABEL_129;
          }

          if (v107 < v95)
          {
            break;
          }
        }

        a3 = v74 - 1;
        if (v74 - 1 >= a4)
        {
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
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v163)
        {
          goto LABEL_142;
        }

        v112 = v30;
        a4 = *&v30[16 * a3 + 32];
        v113 = *&v30[16 * v74 + 40];
        sub_25B08B6B0(*v163 + v161[9] * a4, *v163 + v161[9] * *&v30[16 * v74 + 32], (*v163 + v161[9] * v113), v73);
        if (v5)
        {
        }

        if (v113 < a4)
        {
          goto LABEL_120;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v114 = v112;
        }

        else
        {
          v114 = sub_25B0D3F4C(v112);
        }

        v15 = v162;
        if (a3 >= *(v114 + 2))
        {
          goto LABEL_121;
        }

        v115 = &v114[16 * a3];
        *(v115 + 4) = a4;
        *(v115 + 5) = v113;
        v179 = v114;
        result = sub_25B0D3EC0(v74);
        v30 = v179;
        a4 = *(v179 + 16);
        if (a4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v28 = v163[1];
    v20 = v160;
    v26 = v161;
    a4 = v149;
    if (v29 >= v28)
    {
      goto LABEL_106;
    }
  }

  v133 = sub_25B0E3740();
  v135 = v134;

  v177 = v127;
  v178 = v129;
  v175 = v133;
  v176 = v135;
  sub_25B04C9BC();
  a4 = sub_25B0E3B20();

  v136 = v174;

  a3 = *v172;
  (*v172)(v130, v136);
  result = (a3)(v173, v136);
  v15 = v130;
  v31 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
  if (a4 != -1)
  {
    goto LABEL_93;
  }

  if (v167)
  {
    a3 = *v170;
    a4 = v168;
    v137 = v174;
    (*v170)(v168, v120, v174);
    swift_arrayInitWithTakeFrontToBack();
    (a3)(v118, a4, v137);
    v118 += v166;
    v120 += v166;
    if (__CFADD__(v119++, 1))
    {
      goto LABEL_93;
    }

    goto LABEL_95;
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

uint64_t sub_25B08B6B0(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = sub_25B0E2750();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v70 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v69 = &v61 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v61 - v16;
  result = MEMORY[0x28223BE20](v15);
  v73 = &v61 - v19;
  v71 = *(v20 + 72);
  if (!v71)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v71 == -1)
  {
    goto LABEL_70;
  }

  v21 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v71 == -1)
  {
    goto LABEL_71;
  }

  v22 = (a2 - a1) / v71;
  v80 = a1;
  v79 = a4;
  if (v22 >= v21 / v71)
  {
    v24 = v21 / v71 * v71;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v44 = a4 + v24;
    if (v24 >= 1)
    {
      v45 = -v71;
      v66 = (v9 + 8);
      v67 = (v9 + 16);
      v46 = v44;
      v65 = a4;
      v73 = -v71;
      do
      {
        v62 = v44;
        v47 = a2;
        a2 += v45;
        v72 = a2;
        v68 = v47;
        while (1)
        {
          if (v47 <= a1)
          {
            v80 = v47;
            v78 = v62;
            goto LABEL_68;
          }

          v49 = a3;
          v64 = v44;
          v50 = *v67;
          v71 = v46 + v45;
          v50(v69);
          (v50)(v70, a2, v8);
          v51 = sub_25B0E2730();
          v52 = [v51 name];

          if (v52)
          {
            v63 = sub_25B0E3740();
            v54 = v53;

            v55 = sub_25B0E2730();
            v52 = [v55 name];

            if (v52)
            {
              v56 = sub_25B0E3740();
              v58 = v57;

              v76 = v63;
              v77 = v54;
              v74 = v56;
              v75 = v58;
              sub_25B04C9BC();
              v52 = sub_25B0E3B20();

              LOBYTE(v52) = v52 == -1;
            }

            else
            {
            }

            a2 = v72;
          }

          a3 = &v49[v73];
          v59 = *v66;
          (*v66)(v70, v8);
          v59(v69, v8);
          if (v52)
          {
            break;
          }

          v60 = v71;
          v44 = v71;
          if (v49 < v46 || a3 >= v46)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v49 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = v44;
          v48 = v60 > v65;
          v45 = v73;
          v47 = v68;
          if (!v48)
          {
            a2 = v68;
            goto LABEL_67;
          }
        }

        if (v49 < v68 || a3 >= v68)
        {
          swift_arrayInitWithTakeFrontToBack();
          v44 = v64;
          v45 = v73;
        }

        else
        {
          v44 = v64;
          v45 = v73;
          if (v49 != v68)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v46 > v65);
    }

LABEL_67:
    v80 = a2;
    v78 = v44;
  }

  else
  {
    v23 = v22 * v71;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = a3;
    v70 = (a4 + v23);
    v78 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v67 = *(v9 + 16);
      v68 = v9 + 16;
      v66 = (v9 + 8);
      while (1)
      {
        v26 = v67;
        (v67)(v73, a2, v8);
        v27 = v8;
        v26(v17, a4, v8);
        v28 = v17;
        v29 = sub_25B0E2730();
        v30 = [v29 name];

        if (!v30)
        {
          goto LABEL_29;
        }

        v72 = a2;
        v31 = sub_25B0E3740();
        v33 = v32;

        v34 = sub_25B0E2730();
        v35 = [v34 name];

        if (!v35)
        {
          break;
        }

        v36 = sub_25B0E3740();
        v37 = a4;
        v39 = v38;

        v76 = v31;
        v77 = v33;
        v74 = v36;
        v75 = v39;
        sub_25B04C9BC();
        v40 = sub_25B0E3B20();

        a4 = v37;
        v41 = v71;

        v42 = *v66;
        (*v66)(v28, v27);
        v42(v73, v27);
        a2 = v72;
        v17 = v28;
        if (v40 != -1)
        {
          goto LABEL_30;
        }

        if (a1 < v72 || a1 >= v72 + v41)
        {
          v8 = v27;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v8 = v27;
          if (a1 != v72)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a2 += v41;
LABEL_36:
        a1 += v41;
        v80 = a1;
        if (a4 >= v70 || a2 >= v69)
        {
          goto LABEL_68;
        }
      }

      a2 = v72;
LABEL_29:
      v43 = *v66;
      (*v66)(v28, v27);
      v43(v73, v27);
      v17 = v28;
      v41 = v71;
LABEL_30:
      if (a1 < a4 || a1 >= a4 + v41)
      {
        v8 = v27;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v8 = v27;
        if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v79 = a4 + v41;
      a4 += v41;
      goto LABEL_36;
    }
  }

LABEL_68:
  sub_25B0D3F60(&v80, &v79, &v78);
  return 1;
}

uint64_t sub_25B08BE30(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_25B08A26C(isUniquelyReferenced_nonNull_native, v16, 1, v3, &qword_27FA318E8, &qword_25B0E77F8, type metadata accessor for FacePlacement);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for FacePlacement(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25B08BF80(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25B089CE8(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25B08C074(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  v6 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_25B0E3BE0();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

size_t sub_25B08C168(size_t a1, int64_t a2, char a3)
{
  result = sub_25B08C39C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25B08C188(char *a1, int64_t a2, char a3)
{
  result = sub_25B08C58C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25B08C1A8(size_t a1, int64_t a2, char a3)
{
  result = sub_25B08CC7C(a1, a2, a3, *v3, &qword_27FA31908, &qword_25B0E7810, type metadata accessor for LinkedFace);
  *v3 = result;
  return result;
}

size_t sub_25B08C1EC(size_t a1, int64_t a2, char a3)
{
  result = sub_25B08CC7C(a1, a2, a3, *v3, &qword_27FA318E8, &qword_25B0E77F8, type metadata accessor for FacePlacement);
  *v3 = result;
  return result;
}

char *sub_25B08C230(char *a1, int64_t a2, char a3)
{
  result = sub_25B08C7D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25B08C250(size_t a1, int64_t a2, char a3)
{
  result = sub_25B08CC7C(a1, a2, a3, *v3, &qword_27FA318B8, &qword_25B0E77C8, MEMORY[0x277D2BE00]);
  *v3 = result;
  return result;
}

size_t sub_25B08C294(size_t a1, int64_t a2, char a3)
{
  result = sub_25B08CC7C(a1, a2, a3, *v3, &qword_27FA318D8, &qword_25B0E77E8, type metadata accessor for FaceLibraryManager.Entry);
  *v3 = result;
  return result;
}

char *sub_25B08C2D8(char *a1, int64_t a2, char a3)
{
  result = sub_25B08C928(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25B08C2F8(char *a1, int64_t a2, char a3)
{
  result = sub_25B08CA44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25B08C318(char *a1, int64_t a2, char a3)
{
  result = sub_25B08CB50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25B08C338(char *a1, int64_t a2, char a3)
{
  result = sub_25B08C6AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25B08C358(size_t a1, int64_t a2, char a3)
{
  result = sub_25B08CC7C(a1, a2, a3, *v3, &qword_27FA31918, &qword_25B0E7820, MEMORY[0x277CDF110]);
  *v3 = result;
  return result;
}

size_t sub_25B08C39C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31898, &qword_25B0E77B0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_25B08C58C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318A8, &unk_25B0E94C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25B08C6AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318C8, &qword_25B0E77D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25B08C7D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318F8, &unk_25B0E94D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25B08C928(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318D0, &qword_25B0E77E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

char *sub_25B08CA44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318C0, &qword_25B0E77D0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25B08CB50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31890, &qword_25B0E7768);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_25B08CC7C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_25B08CFB4()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31930);
  __swift_project_value_buffer(v0, qword_27FA31930);
  return sub_25B0E2960();
}

uint64_t sub_25B08D034(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 >> 62)
  {
    if (a3 >> 62 == 1)
    {
      MEMORY[0x25F860A80](4);
      return sub_25B0E3F30();
    }

    v9 = a5 | a4;
    if (a3 != 0x8000000000000000 || v9 | a2)
    {
      if (a3 == 0x8000000000000000 && a2 == 1 && !v9)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    MEMORY[0x25F860A80](3);
    sub_25B0E3B00();
    sub_25B0E3F30();
    MEMORY[0x25F860A80](a4);
    v8 = a5;
  }

  return MEMORY[0x25F860A80](v8);
}

uint64_t sub_25B08D110()
{
  if (*v0)
  {
    result = 0x3E656C6174533CLL;
  }

  else
  {
    result = 0x676E697373694D3CLL;
  }

  *v0;
  return result;
}

uint64_t sub_25B08D150()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = v0[3];
  sub_25B0E3F10();
  sub_25B0E3B00();
  sub_25B0E3F30();
  MEMORY[0x25F860A80](v3);
  MEMORY[0x25F860A80](v4);
  return sub_25B0E3F50();
}

uint64_t sub_25B08D1D4()
{
  v1 = *(v0 + 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = *v0;
  sub_25B0E3B00();
  sub_25B0E3F30();
  MEMORY[0x25F860A80](v2);
  return MEMORY[0x25F860A80](v3);
}

uint64_t sub_25B08D234()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = v0[3];
  sub_25B0E3F10();
  sub_25B0E3B00();
  sub_25B0E3F30();
  MEMORY[0x25F860A80](v3);
  MEMORY[0x25F860A80](v4);
  return sub_25B0E3F50();
}

BOOL sub_25B08D2B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = a2[2];
  v9 = a2[3];
  sub_25B0954F8();
  if ((sub_25B0E3AF0() & 1) == 0)
  {
    return 0;
  }

  v10 = v5 == v9;
  if (v4 != v8)
  {
    v10 = 0;
  }

  return ((v3 ^ v7) & 1) == 0 && v10;
}

uint64_t sub_25B08D344()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25B0E3F10();
  sub_25B08D034(v6, v1, v2, v4, v3);
  return sub_25B0E3F50();
}

uint64_t sub_25B08D3B0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25B0E3F10();
  sub_25B08D034(v6, v1, v2, v4, v3);
  return sub_25B0E3F50();
}

id sub_25B08D428()
{
  ObjectType = swift_getObjectType();
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v2 = sub_25B0E2970();
  __swift_project_value_buffer(v2, qword_27FA31930);
  v3 = v0;
  v4 = sub_25B0E2950();
  v5 = sub_25B0E3A50();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v8 = *&v3[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24];
    v9 = __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR___NFGFaceSnapshotRefresher_loader], v8);
    v10 = *(*(v8 - 8) + 64);
    MEMORY[0x28223BE20](v9);
    (*(v12 + 16))(&v18 - v11);
    type metadata accessor for GalleryLoader();
    v13 = sub_25B0E3760();
    v15 = sub_25B04BE04(v13, v14, &v18);

    *(v6 + 4) = v15;
    _os_log_impl(&dword_25B03D000, v4, v5, "Refresher going away with loader %s…", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25F8613E0](v7, -1, -1);
    MEMORY[0x25F8613E0](v6, -1, -1);
  }

  v16 = &v3[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState];
  os_unfair_lock_lock(&v3[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState]);
  sub_25B08D684(&v16[2], v3);
  os_unfair_lock_unlock(v16);
  v19.receiver = v3;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_dealloc);
}

void sub_25B08D684(uint64_t a1, void *a2)
{
  v4 = a1;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 40);
    sub_25B0E39E0();
  }

  v7 = *(v4 + 8);
  if (v7 >> 62)
  {
    if (v7 >> 62 == 1)
    {
      goto LABEL_25;
    }

    if (v7 == 0x8000000000000000 && (*(v4 + 16) | *(v4 + 24) | *v4) == 0)
    {
      goto LABEL_25;
    }
  }

  v32[2] = v5;
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v9 = sub_25B0E2970();
  __swift_project_value_buffer(v9, qword_27FA31930);
  v10 = a2;
  v11 = sub_25B0E2950();
  v12 = sub_25B0E3A50();

  v33 = v10;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34 = v14;
    *v13 = 136315138;
    v15 = *&v10[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24];
    v16 = __swift_project_boxed_opaque_existential_1(&v10[OBJC_IVAR___NFGFaceSnapshotRefresher_loader], v15);
    v17 = *(*(v15 - 8) + 64);
    MEMORY[0x28223BE20](v16);
    (*(v19 + 16))(v32 - v18);
    type metadata accessor for GalleryLoader();
    v20 = sub_25B0E3760();
    v22 = sub_25B04BE04(v20, v21, &v34);

    *(v13 + 4) = v22;
    _os_log_impl(&dword_25B03D000, v11, v12, "Refresher with loader %s going away with unfinished business…", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x25F8613E0](v14, -1, -1);
    MEMORY[0x25F8613E0](v13, -1, -1);
  }

  v23 = [*(v4 + 32) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31988, &unk_25B0E79F0);
  v24 = sub_25B0E37F0();

  if (!(v24 >> 62))
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

  v25 = sub_25B0E3CC0();
  if (!v25)
  {
LABEL_24:

LABEL_25:

LABEL_26:
    *(v4 + 40) = 0;
    return;
  }

LABEL_15:
  if (v25 >= 1)
  {
    v32[0] = v4;
    v32[1] = v2;
    v26 = 0;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x25F860730](v26, v24);
      }

      else
      {
        v27 = *(v24 + 8 * v26 + 32);
        swift_unknownObjectRetain();
      }

      ++v26;
      v28 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v29 = sub_25B0E3730();
      v30 = [v28 initWithDomain:v29 code:500 userInfo:0];

      v31 = sub_25B0E22C0();
      [v27 refresher:v33 didFinishWithError:v31];
      swift_unknownObjectRelease();
    }

    while (v25 != v26);

    v4 = v32[0];
    goto LABEL_26;
  }

  __break(1u);
}

void sub_25B08DB20(void *a1)
{
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v3 = sub_25B0E2970();
  __swift_project_value_buffer(v3, qword_27FA31930);
  v4 = v1;
  swift_unknownObjectRetain();
  v5 = sub_25B0E2950();
  v6 = sub_25B0E3A50();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136315394;
    v9 = *&v4[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24];
    v10 = __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR___NFGFaceSnapshotRefresher_loader], v9);
    v11 = *(*(v9 - 8) + 64);
    MEMORY[0x28223BE20](v10);
    (*(v13 + 16))(&v30 - v12);
    type metadata accessor for GalleryLoader();
    v14 = sub_25B0E3760();
    v16 = sub_25B04BE04(v14, v15, &v31);

    *(v7 + 4) = v16;
    *(v7 + 12) = 2080;
    swift_getObjectType();
    v30 = a1;
    swift_unknownObjectRetain();
    v17 = sub_25B0E3760();
    v19 = sub_25B04BE04(v17, v18, &v31);

    *(v7 + 14) = v19;
    _os_log_impl(&dword_25B03D000, v5, v6, "Refresher - %s - add: %s…", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v8, -1, -1);
    MEMORY[0x25F8613E0](v7, -1, -1);
  }

  v20 = &v4[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState];
  os_unfair_lock_lock(&v4[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState]);
  [v20[5] addObject_];
  v21 = v20[1];
  v22 = v20[2];
  v23 = v20[3];
  v24 = v20[4];
  if (v22 >> 62)
  {
    if (v22 >> 62 == 1)
    {
      if (v21)
      {
        v25 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v26 = sub_25B0E3730();
        v27 = [v25 initWithDomain:v26 code:200 userInfo:0];

        v28 = sub_25B0E22C0();
      }

      else
      {
        v28 = 0;
      }

      [a1 refresher:v4 didFinishWithError:v28];
    }

    else
    {
      v29 = v24 | v23;
      if (v22 != 0x8000000000000000 || v29 | v21)
      {
        if (v22 == 0x8000000000000000 && v21 == 1 && !v29)
        {
          [a1 refresherDidStart_];
        }

        else
        {
          [a1 refresherDidLoadFaces_];
        }
      }
    }
  }

  else if (v22)
  {
    [a1 refresher:v4 didSkipFace:v21 refreshedCount:v23 remainingCount:v24];
  }

  else
  {
    [a1 refresher:v4 didRefreshFace:v21 refreshedCount:v23 remainingCount:v24];
  }

  os_unfair_lock_unlock(v20);
}

void sub_25B08DF00(uint64_t a1)
{
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v3 = sub_25B0E2970();
  __swift_project_value_buffer(v3, qword_27FA31930);
  v4 = v1;
  swift_unknownObjectRetain();
  v5 = sub_25B0E2950();
  v6 = sub_25B0E3A50();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315394;
    v9 = *&v4[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24];
    v10 = __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR___NFGFaceSnapshotRefresher_loader], v9);
    v11 = *(*(v9 - 8) + 64);
    MEMORY[0x28223BE20](v10);
    (*(v13 + 16))(&v21 - v12);
    type metadata accessor for GalleryLoader();
    v14 = sub_25B0E3760();
    v16 = sub_25B04BE04(v14, v15, &v22);

    *(v7 + 4) = v16;
    *(v7 + 12) = 2080;
    swift_getObjectType();
    v21 = a1;
    swift_unknownObjectRetain();
    v17 = sub_25B0E3760();
    v19 = sub_25B04BE04(v17, v18, &v22);

    *(v7 + 14) = v19;
    _os_log_impl(&dword_25B03D000, v5, v6, "Refresher - %s - remove: %s…", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v8, -1, -1);
    MEMORY[0x25F8613E0](v7, -1, -1);
  }

  v20 = &v4[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState];
  os_unfair_lock_lock(&v4[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState]);
  [v20[5] removeObject_];
  os_unfair_lock_unlock(v20);
}

void sub_25B08E1C4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_25B08E23C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 8);
  if (!(v6 >> 62))
  {
LABEL_11:
    if (qword_27FA30D08 != -1)
    {
      swift_once();
    }

    v25 = sub_25B0E2970();
    __swift_project_value_buffer(v25, qword_27FA31930);
    v26 = a2;
    v27 = sub_25B0E2950();
    v28 = sub_25B0E3A30();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v64 = v30;
      *v29 = 136315138;
      v31 = &v26[OBJC_IVAR___NFGFaceSnapshotRefresher_loader];
      v32 = *&v26[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24];
      v33 = __swift_project_boxed_opaque_existential_1(v31, v32);
      v34 = *(*(v32 - 8) + 64);
      MEMORY[0x28223BE20](v33);
      (*(v36 + 16))(&v62 - v35);
      type metadata accessor for GalleryLoader();
      v37 = sub_25B0E3760();
      v39 = sub_25B04BE04(v37, v38, &v64);

      *(v29 + 4) = v39;
      _os_log_impl(&dword_25B03D000, v27, v28, "Refresher - %s start:other…!", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x25F8613E0](v30, -1, -1);
      MEMORY[0x25F8613E0](v29, -1, -1);
    }

    v40 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v41 = sub_25B0E3730();
    v42 = [v40 initWithDomain:v41 code:300 userInfo:0];

    result = swift_willThrow();
    *a3 = v42;
    return result;
  }

  if (v6 >> 62 != 1)
  {
    if (v6 == 0x8000000000000000 && (*(a1 + 16) | *(a1 + 24) | *a1) == 0)
    {
      v63 = v3;
      if (qword_27FA30D08 != -1)
      {
        goto LABEL_31;
      }

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v63 = v3;
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v8 = sub_25B0E2970();
  __swift_project_value_buffer(v8, qword_27FA31930);
  v9 = a2;
  v10 = sub_25B0E2950();
  v11 = sub_25B0E3A50();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v64 = v13;
    *v12 = 136315138;
    v14 = &v9[OBJC_IVAR___NFGFaceSnapshotRefresher_loader];
    v15 = *&v9[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24];
    v16 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v17 = *(*(v15 - 8) + 64);
    MEMORY[0x28223BE20](v16);
    (*(v19 + 16))(&v62 - v18);
    type metadata accessor for GalleryLoader();
    v20 = sub_25B0E3760();
    v22 = sub_25B04BE04(v20, v21, &v64);

    *(v12 + 4) = v22;
    v23 = "Refresher - %s start:finished…";
LABEL_19:
    _os_log_impl(&dword_25B03D000, v10, v11, v23, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x25F8613E0](v13, -1, -1);
    MEMORY[0x25F8613E0](v12, -1, -1);
    goto LABEL_20;
  }

  while (1)
  {
LABEL_20:

    *a1 = xmmword_25B0E7850;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v55 = [*(a1 + 32) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31988, &unk_25B0E79F0);
    v56 = sub_25B0E37F0();

    if (v56 >> 62)
    {
      v57 = sub_25B0E3CC0();
      if (!v57)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v57)
      {
        goto LABEL_29;
      }
    }

    if (v57 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_31:
    swift_once();
LABEL_17:
    v44 = sub_25B0E2970();
    __swift_project_value_buffer(v44, qword_27FA31930);
    v45 = a2;
    v10 = sub_25B0E2950();
    v11 = sub_25B0E3A50();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v64 = v13;
      *v12 = 136315138;
      v46 = &v45[OBJC_IVAR___NFGFaceSnapshotRefresher_loader];
      v47 = *&v45[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24];
      v48 = __swift_project_boxed_opaque_existential_1(v46, v47);
      v49 = *(*(v47 - 8) + 64);
      MEMORY[0x28223BE20](v48);
      (*(v51 + 16))(&v62 - v50);
      type metadata accessor for GalleryLoader();
      v52 = sub_25B0E3760();
      v54 = sub_25B04BE04(v52, v53, &v64);

      *(v12 + 4) = v54;
      v23 = "Refresher - %s - start:idle…";
      goto LABEL_19;
    }
  }

  for (i = 0; i != v57; ++i)
  {
    if ((v56 & 0xC000000000000001) != 0)
    {
      v59 = MEMORY[0x25F860730](i, v56);
    }

    else
    {
      v59 = *(v56 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v59 refresherDidStart_];
    swift_unknownObjectRelease();
  }

LABEL_29:

  v60 = sub_25B08E958();
  v61 = *(a1 + 40);

  *(a1 + 40) = v60;
  return result;
}

uint64_t sub_25B08E958()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20 - v3;
  v5 = (v0 + OBJC_IVAR___NFGFaceSnapshotRefresher_loader);
  *&v21[0] = 0;
  *(&v21[0] + 1) = 0xE000000000000000;
  sub_25B0E3BC0();
  v6 = v5[3];
  v7 = __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  (*(v10 + 16))(&v20 - v9);
  type metadata accessor for GalleryLoader();
  v11 = sub_25B0E3760();
  v13 = v12;

  *&v21[0] = v11;
  *(&v21[0] + 1) = v13;
  MEMORY[0x25F8602F0](0x6572666572202D20, 0xEF6B736174206873);
  v14 = v21[0];
  sub_25B0E3910();
  v15 = sub_25B0E3940();
  (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_25B049F48(v5, v21);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  sub_25B03F164(v21, (v17 + 4));
  v17[9] = v16;
  v18 = sub_25B094958(v14, *(&v14 + 1), v4, &unk_25B0E7A08, v17);

  sub_25B058448(v4, &qword_27FA31990, &qword_25B0E6920);
  return v18;
}

void sub_25B08ECA8()
{
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  __swift_project_value_buffer(v1, qword_27FA31930);
  v2 = v0;
  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v7 = *&v2[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24];
    v8 = __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR___NFGFaceSnapshotRefresher_loader], v7);
    v9 = *(*(v7 - 8) + 64);
    MEMORY[0x28223BE20](v8);
    (*(v11 + 16))(&v16 - v10);
    type metadata accessor for GalleryLoader();
    v12 = sub_25B0E3760();
    v14 = sub_25B04BE04(v12, v13, &v17);

    *(v5 + 4) = v14;
    _os_log_impl(&dword_25B03D000, v3, v4, "Refresher - %s cancel…", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x25F8613E0](v6, -1, -1);
    MEMORY[0x25F8613E0](v5, -1, -1);
  }

  v15 = &v2[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState];
  os_unfair_lock_lock(&v2[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState]);
  sub_25B08EEFC(&v15[2], v2, &v17);
  os_unfair_lock_unlock(v15);
}

void sub_25B08EEFC(uint64_t a1, void *a2, void *a3)
{
  v59 = a3;
  v60 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = qword_27FA30D08;
    v6 = *(a1 + 40);

    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_25B0E2970();
    __swift_project_value_buffer(v7, qword_27FA31930);
    v8 = v60;
    v9 = sub_25B0E2950();
    v10 = sub_25B0E3A50();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v61 = v12;
      *v11 = 136315138;
      v13 = &v8[OBJC_IVAR___NFGFaceSnapshotRefresher_loader];
      v14 = *&v8[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24];
      v15 = __swift_project_boxed_opaque_existential_1(v13, v14);
      v16 = *(*(v14 - 8) + 64);
      MEMORY[0x28223BE20](v15);
      (*(v18 + 16))(v54 - v17);
      type metadata accessor for GalleryLoader();
      v19 = sub_25B0E3760();
      v21 = sub_25B04BE04(v19, v20, &v61);

      *(v11 + 4) = v21;
      _os_log_impl(&dword_25B03D000, v9, v10, "Refresher - %s cancelling task…", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x25F8613E0](v12, -1, -1);
      MEMORY[0x25F8613E0](v11, -1, -1);
    }

    sub_25B0E39E0();
  }

  v22 = *a1;
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  if (v23 >> 62)
  {
    if (v23 >> 62 == 1 || (v23 == 0x8000000000000000 ? (v25 = (*(a1 + 24) | v24 | v22) == 0) : (v25 = 0), v25))
    {
      if (qword_27FA30D08 != -1)
      {
        swift_once();
      }

      v35 = sub_25B0E2970();
      __swift_project_value_buffer(v35, qword_27FA31930);
      v36 = v60;
      v37 = sub_25B0E2950();
      v38 = sub_25B0E3A30();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v61 = v40;
        *v39 = 136315138;
        v41 = *&v36[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24];
        v42 = __swift_project_boxed_opaque_existential_1(&v36[OBJC_IVAR___NFGFaceSnapshotRefresher_loader], v41);
        v43 = *(*(v41 - 8) + 64);
        MEMORY[0x28223BE20](v42);
        (*(v45 + 16))(v54 - v44);
        type metadata accessor for GalleryLoader();
        v46 = sub_25B0E3760();
        v48 = sub_25B04BE04(v46, v47, &v61);

        *(v39 + 4) = v48;
        _os_log_impl(&dword_25B03D000, v37, v38, "Refresher - %s - cancel:idle/finished…", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x25F8613E0](v40, -1, -1);
        MEMORY[0x25F8613E0](v39, -1, -1);
      }

      v49 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v50 = sub_25B0E3730();
      v51 = [v49 initWithDomain:v50 code:400 userInfo:0];

      swift_willThrow();
      *v59 = v51;
      return;
    }
  }

  v54[1] = *(a1 + 24);
  v54[2] = v24;
  v55 = v23;
  v56 = v22;
  v57 = (a1 + 16);
  v58 = v4;
  v59 = a1;
  v26 = [*(a1 + 32) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31988, &unk_25B0E79F0);
  v27 = sub_25B0E37F0();

  if (v27 >> 62)
  {
    v28 = sub_25B0E3CC0();
    if (v28)
    {
      goto LABEL_15;
    }

LABEL_27:

    sub_25B094C08(v56, v55);
    v52 = v59;
    v59[5] = 0;
    *v52 = xmmword_25B0E7860;
    v53 = v57;
    *v57 = 0;
    v53[1] = 0;
    return;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
    goto LABEL_27;
  }

LABEL_15:
  if (v28 >= 1)
  {
    v29 = 0;
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x25F860730](v29, v27);
      }

      else
      {
        v30 = *(v27 + 8 * v29 + 32);
        swift_unknownObjectRetain();
      }

      ++v29;
      v31 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v32 = sub_25B0E3730();
      v33 = [v31 initWithDomain:v32 code:200 userInfo:0];

      v34 = sub_25B0E22C0();
      [v30 refresher:v60 didFinishWithError:v34];
      swift_unknownObjectRelease();
    }

    while (v28 != v29);
    goto LABEL_27;
  }

  __break(1u);
}

unint64_t get_enum_tag_for_layout_string_15NanoFaceGallery0B17SnapshotRefresherC16InternalProgress33_35EB753405371E49E391841E1889FCEELLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_25B08F64C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_25B08F69C(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      *(result + 24) = 0;
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

unint64_t sub_25B08F704()
{
  result = qword_27FA31980;
  if (!qword_27FA31980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31980);
  }

  return result;
}

void sub_25B08F758()
{
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  __swift_project_value_buffer(v1, qword_27FA31930);
  v2 = v0;
  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16[0] = v6;
    *v5 = 136315138;
    v7 = *&v2[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24];
    v8 = __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR___NFGFaceSnapshotRefresher_loader], v7);
    v9 = *(*(v7 - 8) + 64);
    MEMORY[0x28223BE20](v8);
    (*(v11 + 16))(v16 - v10);
    type metadata accessor for GalleryLoader();
    v12 = sub_25B0E3760();
    v14 = sub_25B04BE04(v12, v13, v16);

    *(v5 + 4) = v14;
    _os_log_impl(&dword_25B03D000, v3, v4, "Refresher - %s - finished…", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x25F8613E0](v6, -1, -1);
    MEMORY[0x25F8613E0](v5, -1, -1);
  }

  v15 = &v2[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState];
  os_unfair_lock_lock(&v2[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState]);
  sub_25B08F98C(&v15[2], v2);
  os_unfair_lock_unlock(v15);
}

uint64_t sub_25B08F98C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 40);
    sub_25B0E39E0();
  }

  v5 = *(a1 + 8);
  if (v5 >> 62)
  {
    if (v5 >> 62 != 2)
    {
      goto LABEL_20;
    }

    if (v5 == 0x8000000000000000 && (*(a1 + 24) | *(a1 + 16) | *a1) == 0)
    {
      goto LABEL_20;
    }
  }

  v13 = *(a1 + 24);
  v14 = *(a1 + 16);
  v15 = *(a1 + 8);
  v16 = *a1;
  v7 = [*(a1 + 32) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31988, &unk_25B0E79F0);
  v8 = sub_25B0E37F0();

  if (v8 >> 62)
  {
    v9 = sub_25B0E3CC0();
    if (v9)
    {
      goto LABEL_11;
    }

LABEL_18:

    sub_25B094C08(v16, v15);

    *a1 = xmmword_25B0E7870;
    *(a1 + 40) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    return result;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x25F860730](i, v8);
      }

      else
      {
        v11 = *(v8 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v11 refresher:a2 didFinishWithError:0];
      swift_unknownObjectRelease();
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_20:
  result = sub_25B0E3D00();
  __break(1u);
  return result;
}

uint64_t sub_25B08FBEC(uint64_t a1, uint64_t a2)
{
  v3[39] = a2;
  v3[40] = v2;
  v3[38] = a1;
  v4 = type metadata accessor for FacePlacement(0);
  v3[41] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B08FCCC, 0, 0);
}

uint64_t sub_25B08FCCC()
{
  v1 = v0[39];
  sub_25B049F48(v0[40] + OBJC_IVAR___NFGFaceSnapshotRefresher_loader, (v0 + 14));
  v2 = sub_25B0E2730();
  v3 = [v2 device];

  if (v3)
  {
    v7 = v0[39];
    v8 = type metadata accessor for LocalStore();
    v0[49] = v8;
    swift_allocObject();
    v9 = v3;
    v10 = sub_25B04C598(v9);

    v0[22] = v8;
    v0[23] = &off_286C59968;

    v0[19] = v10;
    v0[50] = __swift_project_boxed_opaque_existential_1(v0 + 19, v8);
    v0[51] = sub_25B0E2730();
    sub_25B0E3900();
    v0[52] = sub_25B0E38F0();
    v11 = sub_25B0E3850();
    v13 = v12;
    v4 = sub_25B08FE20;
    v5 = v11;
    v6 = v13;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

id sub_25B08FE20()
{
  v2 = v0[51];
  v1 = v0[52];

  result = [v2 dailySnapshotKey];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  v5 = v0[51];
  v6 = sub_25B0E3740();
  v8 = v7;

  result = [v5 unsafeDailySnapshotKey];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = v0[51];
  v11 = sub_25B0E3740();
  v13 = v12;

  v0[34] = v6;
  v0[35] = v8;
  v0[36] = v11;
  v0[37] = v13;
  v18 = off_286C59970 + *off_286C59970;
  v14 = *(off_286C59970 + 1);
  v15 = swift_task_alloc();
  v0[53] = v15;
  *v15 = v0;
  v15[1] = sub_25B08FFD8;
  v16 = v0[49];
  v17 = v0[50];

  return (v18)(v0 + 8, v0 + 34, v16, &off_286C59968);
}

uint64_t sub_25B08FFD8()
{
  v1 = *v0;
  v2 = *(*v0 + 424);
  v6 = *v0;

  v3 = *(v1 + 280);
  v4 = *(v1 + 296);

  return MEMORY[0x2822009F8](sub_25B09010C, 0, 0);
}

uint64_t sub_25B09010C()
{
  v92 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v3;
  *(v0 + 48) = *(v0 + 96);
  if (sub_25B090D74((v0 + 16), v1))
  {
    if (qword_27FA30D08 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 376);
    v5 = *(v0 + 384);
    v6 = *(v0 + 368);
    v7 = *(v0 + 312);
    v8 = sub_25B0E2970();
    __swift_project_value_buffer(v8, qword_27FA31930);
    sub_25B049F48(v0 + 112, v0 + 232);
    sub_25B0596E0(v7, v5);
    sub_25B0596E0(v7, v4);
    sub_25B0596E0(v7, v6);
    v9 = sub_25B0E2950();
    v10 = sub_25B0E3A50();
    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 376);
    v12 = *(v0 + 384);
    v14 = *(v0 + 368);
    if (v11)
    {
      v85 = *(v0 + 328);
      v87 = v10;
      v15 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v91[0] = v89;
      *v15 = 136315906;
      v16 = *(v0 + 256);
      __swift_project_boxed_opaque_existential_1((v0 + 232), v16);
      v17 = *(v16 - 8);
      v18 = *(v17 + 64) + 15;
      swift_task_alloc();
      (*(v17 + 16))();
      type metadata accessor for GalleryLoader();
      v19 = sub_25B0E3760();
      v21 = v20;

      __swift_destroy_boxed_opaque_existential_1((v0 + 232));
      v22 = sub_25B04BE04(v19, v21, v91);

      *(v15 + 4) = v22;
      *(v15 + 12) = 2080;
      v23 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
      v25 = v24;
      sub_25B0597A8(v12);
      v26 = sub_25B04BE04(v23, v25, v91);

      *(v15 + 14) = v26;
      *(v15 + 22) = 2080;
      v27 = v13 + *(v85 + 20);
      v28 = FacePlacement.Location.description.getter();
      v30 = v29;
      sub_25B0597A8(v13);
      v31 = sub_25B04BE04(v28, v30, v91);

      *(v15 + 24) = v31;
      *(v15 + 32) = 2080;
      v32 = sub_25B0E2730();
      swift_getObjectType();

      v33 = sub_25B0E3FB0();
      v35 = v34;
      sub_25B0597A8(v14);
      v36 = sub_25B04BE04(v33, v35, v91);

      *(v15 + 34) = v36;
      _os_log_impl(&dword_25B03D000, v9, v87, "Refresher - %s - snapshotting %s @ %s (%s)…", v15, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x25F8613E0](v89, -1, -1);
      MEMORY[0x25F8613E0](v15, -1, -1);
    }

    else
    {

      sub_25B0597A8(v14);
      sub_25B0597A8(v13);
      sub_25B0597A8(v12);
      __swift_destroy_boxed_opaque_existential_1((v0 + 232));
    }

    v70 = *(v0 + 360);
    v71 = *(v0 + 320);
    sub_25B0596E0(*(v0 + 312), v70);
    v72 = type metadata accessor for FaceRequest();
    v73 = *(v72 + 48);
    v74 = *(v72 + 52);
    swift_allocObject();
    *(v0 + 432) = FaceRequest.init(placement:visible:)(v70, 0);
    v75 = *(*(v71 + OBJC_IVAR___NFGFaceSnapshotRefresher_queue) + 16);
    *(v0 + 440) = v75;

    return MEMORY[0x2822009F8](sub_25B0908FC, v75, 0);
  }

  else
  {
    if (qword_27FA30D08 != -1)
    {
      swift_once();
    }

    v37 = *(v0 + 344);
    v38 = *(v0 + 352);
    v39 = *(v0 + 336);
    v40 = *(v0 + 312);
    v41 = sub_25B0E2970();
    __swift_project_value_buffer(v41, qword_27FA31930);
    sub_25B049F48(v0 + 112, v0 + 192);
    sub_25B0596E0(v40, v38);
    sub_25B0596E0(v40, v37);
    sub_25B0596E0(v40, v39);
    v42 = sub_25B0E2950();
    v43 = sub_25B0E3A50();
    v44 = os_log_type_enabled(v42, v43);
    v46 = *(v0 + 344);
    v45 = *(v0 + 352);
    v47 = *(v0 + 336);
    if (v44)
    {
      v86 = *(v0 + 328);
      v88 = v43;
      v48 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v91[0] = v90;
      *v48 = 136315906;
      v49 = *(v0 + 216);
      __swift_project_boxed_opaque_existential_1((v0 + 192), v49);
      v50 = *(v49 - 8);
      v51 = *(v50 + 64) + 15;
      swift_task_alloc();
      (*(v50 + 16))();
      type metadata accessor for GalleryLoader();
      v52 = sub_25B0E3760();
      v54 = v53;

      __swift_destroy_boxed_opaque_existential_1((v0 + 192));
      v55 = sub_25B04BE04(v52, v54, v91);

      *(v48 + 4) = v55;
      *(v48 + 12) = 2080;
      v56 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
      v58 = v57;
      sub_25B0597A8(v45);
      v59 = sub_25B04BE04(v56, v58, v91);

      *(v48 + 14) = v59;
      *(v48 + 22) = 2080;
      v60 = v46 + *(v86 + 20);
      v61 = FacePlacement.Location.description.getter();
      v63 = v62;
      sub_25B0597A8(v46);
      v64 = sub_25B04BE04(v61, v63, v91);

      *(v48 + 24) = v64;
      *(v48 + 32) = 2080;
      v65 = sub_25B0E2730();
      swift_getObjectType();

      v66 = sub_25B0E3FB0();
      v68 = v67;
      sub_25B0597A8(v47);
      v69 = sub_25B04BE04(v66, v68, v91);

      *(v48 + 34) = v69;
      _os_log_impl(&dword_25B03D000, v42, v88, "Refresher - %s - skipping %s @ %s (%s)…", v48, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x25F8613E0](v90, -1, -1);
      MEMORY[0x25F8613E0](v48, -1, -1);
    }

    else
    {

      sub_25B0597A8(v47);
      sub_25B0597A8(v46);
      sub_25B0597A8(v45);
      __swift_destroy_boxed_opaque_existential_1((v0 + 192));
    }

    sub_25B095198();
    swift_allocError();
    swift_willThrow();
    sub_25B058448(v0 + 16, &qword_27FA319B8, &qword_25B0E7A68);
    v77 = *(v0 + 376);
    v76 = *(v0 + 384);
    v79 = *(v0 + 360);
    v78 = *(v0 + 368);
    v81 = *(v0 + 344);
    v80 = *(v0 + 352);
    v82 = *(v0 + 336);
    __swift_destroy_boxed_opaque_existential_1((v0 + 152));
    __swift_destroy_boxed_opaque_existential_1((v0 + 112));

    v83 = *(v0 + 8);

    return v83();
  }
}

uint64_t sub_25B0908FC()
{
  v1 = *(v0 + 440);
  sub_25B053238(*(v0 + 432));

  return MEMORY[0x2822009F8](sub_25B090964, 0, 0);
}

uint64_t sub_25B090964()
{
  v1 = v0[54];
  v2 = v0[39];
  v3 = swift_task_alloc();
  v0[56] = v3;
  v3[2] = v1;
  v3[3] = v0 + 14;
  v3[4] = v2;
  v3[5] = v0 + 19;
  v4 = *(MEMORY[0x277D85A10] + 4);
  v5 = swift_task_alloc();
  v0[57] = v5;
  *v5 = v0;
  v5[1] = sub_25B090A74;
  v6 = v0[54];
  v7 = v0[38];

  return MEMORY[0x282200830](v7, &unk_25B0E7A78, v3, sub_25B087A58, v6, 0, 0, &type metadata for FaceRequest.Result);
}

uint64_t sub_25B090A74()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v7 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = sub_25B090C7C;
  }

  else
  {
    v5 = *(v2 + 448);

    v4 = sub_25B090B90;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25B090B90()
{
  v1 = v0[54];
  v2 = v0[47];
  v3 = v0[48];
  v5 = v0[45];
  v4 = v0[46];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[42];

  sub_25B058448((v0 + 2), &qword_27FA319B8, &qword_25B0E7A68);
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  v9 = v0[1];

  return v9();
}

uint64_t sub_25B090C7C()
{
  v1 = v0[56];
  v2 = v0[54];

  sub_25B058448((v0 + 2), &qword_27FA319B8, &qword_25B0E7A68);

  v3 = v0[58];
  v5 = v0[47];
  v4 = v0[48];
  v7 = v0[45];
  v6 = v0[46];
  v9 = v0[43];
  v8 = v0[44];
  v10 = v0[42];
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  v11 = v0[1];

  return v11();
}

uint64_t sub_25B090D74(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_25B0E2440();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v4)
  {
    return 1;
  }

  if (*(a2 + OBJC_IVAR___NFGFaceSnapshotRefresher_refreshPolicy) != 1)
  {
    return 0;
  }

  v34 = v11;
  v14 = a1[2];
  v15 = objc_allocWithZone(MEMORY[0x277D2C030]);

  v35 = v6;
  v16 = v7;
  v17 = [v15 init];
  v18 = sub_25B0E2730();
  v19 = [v18 unsafeDailySnapshotKey];

  if (!v19)
  {
    v36[0] = v14;
    v36[1] = v5;

    sub_25B058448(a1, &qword_27FA319B8, &qword_25B0E7A68);
    sub_25B0952AC(v36);
    return 1;
  }

  v20 = sub_25B0E3740();
  v22 = v21;

  if (v20 == v14 && v22 == v5)
  {

    v23 = v35;
  }

  else
  {
    v25 = sub_25B0E3E30();

    v23 = v35;
    if ((v25 & 1) == 0)
    {

      sub_25B058448(a1, &qword_27FA319B8, &qword_25B0E7A68);
      return 1;
    }
  }

  v26 = sub_25B0E2730();
  v27 = [v26 isLibraryFace];

  if ((v27 & 1) == 0)
  {
    v28 = [v23 date];
    if (v28)
    {
      v29 = v28;
      sub_25B0E2430();

      v30 = sub_25B0E2410();
      (*(v9 + 8))(v13, v34);
    }

    else
    {
      v30 = 0;
    }

    [v17 setDate_];
  }

  v31 = sub_25B0E2730();
  v32 = v23;
  v33 = [v31 snapshotContext:v32 isStaleRelativeToContext:v17];

  sub_25B058448(a1, &qword_27FA319B8, &qword_25B0E7A68);
  return v33;
}

uint64_t sub_25B091088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v5[25] = a1;
  v5[26] = a3;
  v6 = type metadata accessor for FacePlacement(0);
  v5[29] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[33] = v8;
  *v8 = v5;
  v8[1] = sub_25B091174;

  return FaceRequest.result.getter((v5 + 2));
}

uint64_t sub_25B091174()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_25B09197C;
  }

  else
  {
    v3 = sub_25B091288;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25B091288()
{
  v62 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v0[35] = v2;
  v0[36] = v1;
  v56 = v1;
  v3 = v0[5];
  v60 = v0[4];
  v0[37] = v60;
  v0[38] = v3;
  v55 = v3;
  v57 = v0[6];
  v58 = v0[7];
  v0[39] = v57;
  v0[40] = v58;
  v4 = v0[8];
  v0[41] = v4;
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[30];
  v9 = v0[26];
  v8 = v0[27];
  v10 = sub_25B0E2970();
  __swift_project_value_buffer(v10, qword_27FA31930);
  sub_25B049F48(v9, (v0 + 15));
  sub_25B0596E0(v8, v5);
  sub_25B0596E0(v8, v6);
  sub_25B0596E0(v8, v7);
  v11 = sub_25B0E2950();
  v12 = sub_25B0E3A50();
  v13 = os_log_type_enabled(v11, v12);
  v15 = v0[31];
  v14 = v0[32];
  v16 = v0[30];
  if (v13)
  {
    v50 = v0[29];
    v51 = v12;
    v17 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v61 = v52;
    *v17 = 136315906;
    v18 = v0[18];
    __swift_project_boxed_opaque_existential_1(v0 + 15, v18);
    v53 = v2;
    v19 = *(v18 - 8);
    v20 = *(v19 + 64) + 15;
    swift_task_alloc();
    v54 = v4;
    (*(v19 + 16))();
    type metadata accessor for GalleryLoader();
    v21 = sub_25B0E3760();
    v23 = v22;

    __swift_destroy_boxed_opaque_existential_1(v0 + 15);
    v24 = sub_25B04BE04(v21, v23, &v61);

    *(v17 + 4) = v24;
    *(v17 + 12) = 2080;
    v25 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
    v27 = v26;
    sub_25B0597A8(v14);
    v28 = sub_25B04BE04(v25, v27, &v61);
    v4 = v54;

    *(v17 + 14) = v28;
    *(v17 + 22) = 2080;
    v29 = v15 + *(v50 + 20);
    v30 = FacePlacement.Location.description.getter();
    v32 = v31;
    sub_25B0597A8(v15);
    v33 = sub_25B04BE04(v30, v32, &v61);

    *(v17 + 24) = v33;
    *(v17 + 32) = 2080;
    v34 = sub_25B0E2730();
    swift_getObjectType();

    v35 = sub_25B0E3FB0();
    v37 = v36;
    sub_25B0597A8(v16);
    v38 = sub_25B04BE04(v35, v37, &v61);
    v2 = v53;

    *(v17 + 34) = v38;
    _os_log_impl(&dword_25B03D000, v11, v51, "Refresher - %s - snapshotted %s @ %s (%s)…", v17, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v52, -1, -1);
    MEMORY[0x25F8613E0](v17, -1, -1);
  }

  else
  {

    sub_25B0597A8(v16);
    sub_25B0597A8(v15);
    sub_25B0597A8(v14);
    __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  }

  v39 = v0[28];
  v40 = v39[3];
  v41 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v0[23] = &type metadata for FaceRequest.Result;
  v0[24] = &off_286C59F00;
  v42 = swift_allocObject();
  v0[20] = v42;
  v42[2] = v2;
  v42[3] = v56;
  v42[4] = v60;
  v42[5] = v55;
  v42[6] = v57;
  v42[7] = v58;
  v42[8] = v4;
  v43 = *(v41 + 16);

  v44 = v57;
  v45 = v58;
  v46 = v4;
  v59 = (v43 + *v43);
  v47 = v43[1];
  v48 = swift_task_alloc();
  v0[42] = v48;
  *v48 = v0;
  v48[1] = sub_25B09179C;

  return (v59)(v0 + 9, v0 + 20, v40, v41);
}

uint64_t sub_25B09179C()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v10 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = sub_25B0919FC;
  }

  else
  {
    v5 = v2[10];
    v6 = v2[12];
    v7 = v2[13];
    v8 = v2[14];

    __swift_destroy_boxed_opaque_existential_1(v2 + 20);
    v4 = sub_25B0918E0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25B0918E0()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 240);
  v5 = *(v0 + 200);
  v6 = *(v0 + 304);
  v7 = *(v0 + 320);
  *v5 = *(v0 + 280);
  *(v5 + 16) = v1;
  *(v5 + 24) = v6;
  *(v5 + 40) = v7;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_25B09197C()
{
  v1 = v0[34];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];

  v5 = v0[1];

  return v5();
}

uint64_t sub_25B0919FC()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[36];

  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  v6 = v0[43];
  v8 = v0[31];
  v7 = v0[32];
  v9 = v0[30];

  v10 = v0[1];

  return v10();
}

void sub_25B091AA8(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v68 = a2;
  v67 = type metadata accessor for FacePlacement(0);
  v9 = *(*(v67 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v67);
  v12 = &v62[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v62[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v62[-v16];
  v18 = OBJC_IVAR___NFGFaceSnapshotRefresher_loader;
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v19 = sub_25B0E2970();
  __swift_project_value_buffer(v19, qword_27FA31930);
  sub_25B049F48(v4 + v18, v70);
  sub_25B0596E0(a1, v17);
  sub_25B0596E0(a1, v15);
  sub_25B0596E0(a1, v12);
  v20 = sub_25B0E2950();
  v21 = sub_25B0E3A50();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v66 = a1;
    v23 = v22;
    v64 = swift_slowAlloc();
    v69 = v64;
    *v23 = 136316674;
    v24 = v71;
    v25 = __swift_project_boxed_opaque_existential_1(v70, v71);
    v63 = v21;
    v26 = *(*(v24 - 8) + 64);
    MEMORY[0x28223BE20](v25);
    v65 = a4;
    (*(v28 + 16))(&v62[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    type metadata accessor for GalleryLoader();
    v29 = sub_25B0E3760();
    v31 = v30;
    __swift_destroy_boxed_opaque_existential_1(v70);
    v32 = sub_25B04BE04(v29, v31, &v69);

    *(v23 + 4) = v32;
    *(v23 + 12) = 2080;
    v33 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
    v35 = v34;
    sub_25B0597A8(v17);
    v36 = sub_25B04BE04(v33, v35, &v69);

    *(v23 + 14) = v36;
    *(v23 + 22) = 2080;
    v37 = &v15[*(v67 + 20)];
    v38 = FacePlacement.Location.description.getter();
    v40 = v39;
    sub_25B0597A8(v15);
    v41 = sub_25B04BE04(v38, v40, &v69);

    *(v23 + 24) = v41;
    *(v23 + 32) = 2080;
    v42 = sub_25B0E2730();
    swift_getObjectType();

    v43 = sub_25B0E3FB0();
    v45 = v44;
    sub_25B0597A8(v12);
    v46 = sub_25B04BE04(v43, v45, &v69);
    a4 = v65;

    *(v23 + 34) = v46;
    *(v23 + 42) = 1024;
    v47 = v68;
    *(v23 + 44) = v68 & 1;
    *(v23 + 48) = 2048;
    *(v23 + 50) = a3;
    *(v23 + 58) = 2048;
    *(v23 + 60) = a4;
    _os_log_impl(&dword_25B03D000, v20, v63, "Refresher - %s - notifying %s @ %s (%s) %{BOOL}d %ld of %ld left…", v23, 0x44u);
    v48 = v64;
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v48, -1, -1);
    MEMORY[0x25F8613E0](v23, -1, -1);
  }

  else
  {

    sub_25B0597A8(v12);
    sub_25B0597A8(v15);
    sub_25B0597A8(v17);
    __swift_destroy_boxed_opaque_existential_1(v70);
    v47 = v68;
  }

  v49 = v5 + OBJC_IVAR___NFGFaceSnapshotRefresher_internalState;
  os_unfair_lock_lock((v5 + OBJC_IVAR___NFGFaceSnapshotRefresher_internalState));
  v50 = sub_25B0E2730();
  v51 = __OFSUB__(a4, a3);
  v52 = a4 - a3;
  if (v51)
  {
    __break(1u);
  }

  else
  {
    v54 = *(v49 + 8);
    v53 = *(v49 + 16);
    v55 = *(v49 + 24);
    v56 = *(v49 + 32);
    *(v49 + 8) = v50;
    *(v49 + 16) = v47 & 1;
    *(v49 + 24) = v52;
    *(v49 + 32) = a3;
    sub_25B094C08(v54, v53);
    v68 = v49;
    v57 = [*(v49 + 40) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31988, &unk_25B0E79F0);
    v49 = sub_25B0E37F0();

    if (!(v49 >> 62))
    {
      v58 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v58)
      {
        goto LABEL_9;
      }

LABEL_17:

      os_unfair_lock_unlock(v68);
      return;
    }
  }

  v58 = sub_25B0E3CC0();
  if (!v58)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (v58 >= 1)
  {
    v59 = 0;
    do
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v60 = MEMORY[0x25F860730](v59, v49);
      }

      else
      {
        v60 = *(v49 + 8 * v59 + 32);
        swift_unknownObjectRetain();
      }

      ++v59;
      v61 = sub_25B0E2730();
      [v60 refresher:v5 didRefreshFace:v61 refreshedCount:v52 remainingCount:a3];
      swift_unknownObjectRelease();
    }

    while (v58 != v59);
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_25B092038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  return MEMORY[0x2822009F8](sub_25B092058, 0, 0);
}

uint64_t sub_25B092058()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 104), *(*(v0 + 104) + 24));
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_25B0920F8;

  return GalleryLoader.faces.getter();
}

uint64_t sub_25B0920F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;

  if (v1)
  {

    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 128) = a1;

    return MEMORY[0x2822009F8](sub_25B09224C, 0, 0);
  }
}

uint64_t sub_25B09224C()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31998, &qword_25B0E7A28);
  v5 = swift_allocObject();
  v0[17] = v5;
  *(v5 + 24) = 0;
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v0[18] = v8;
  v8[2] = v5;
  v8[3] = v6;
  v8[4] = v4;
  v9 = swift_allocObject();
  v0[19] = v9;
  v10 = swift_unknownObjectWeakLoadStrong();

  swift_unknownObjectWeakInit();

  v11 = swift_task_alloc();
  v0[20] = v11;
  v11[2] = v1;
  v11[3] = v2;
  v11[4] = v9;
  v11[5] = sub_25B094CD8;
  v11[6] = v8;
  v12 = *(MEMORY[0x277D858E8] + 4);
  v13 = swift_task_alloc();
  v0[21] = v13;
  *v13 = v0;
  v13[1] = sub_25B09244C;
  v14 = MEMORY[0x277D84F78] + 8;
  v15 = MEMORY[0x277D84F78] + 8;
  v16 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v13, v14, v15, 0, 0, &unk_25B0E7A38, v11, v16);
}

uint64_t sub_25B09244C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 128);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_25B0925A4, 0, 0);
}

uint64_t sub_25B0925A4()
{
  v25 = v0;
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_25B0E2970();
  __swift_project_value_buffer(v2, qword_27FA31930);
  sub_25B049F48(v1, (v0 + 2));
  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();
  if (!os_log_type_enabled(v3, v4))
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if ((sub_25B0E39F0() & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v19 = v0[17];
    v20 = v0[18];

    goto LABEL_10;
  }

  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v24 = v6;
  *v5 = 136315394;
  v7 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64) + 15;
  swift_task_alloc();
  (*(v8 + 16))();
  type metadata accessor for GalleryLoader();
  v10 = sub_25B0E3760();
  v12 = v11;

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v13 = sub_25B04BE04(v10, v12, &v24);

  *(v5 + 4) = v13;
  *(v5 + 12) = 1024;
  *(v5 + 14) = sub_25B0E39F0() & 1;
  _os_log_impl(&dword_25B03D000, v3, v4, "Refresher - %s - finished - cancelled? %{BOOL}d…", v5, 0x12u);
  __swift_destroy_boxed_opaque_existential_1(v6);
  MEMORY[0x25F8613E0](v6, -1, -1);
  MEMORY[0x25F8613E0](v5, -1, -1);

  if (sub_25B0E39F0())
  {
    goto LABEL_8;
  }

LABEL_5:
  v14 = v0[14];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = v0[17];
  v16 = v0[18];
  if (Strong)
  {
    v18 = Strong;
    sub_25B08F758();

    goto LABEL_11;
  }

  v21 = v0[17];

LABEL_10:

LABEL_11:
  v22 = v0[1];

  return v22();
}

uint64_t sub_25B09287C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  os_unfair_lock_lock((a3 + 24));
  sub_25B095300((a3 + 16));
  os_unfair_lock_unlock((a3 + 24));
}

void sub_25B092950(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    *a1 = v5;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_25B091AA8(a3, (a4 & 1), v5, a5);
    }
  }
}

uint64_t sub_25B0929F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[31] = a6;
  v7[32] = a7;
  v7[29] = a4;
  v7[30] = a5;
  v7[27] = a2;
  v7[28] = a3;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920) - 8) + 64) + 15;
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v9 = type metadata accessor for FacePlacement(0);
  v7[35] = v9;
  v10 = *(v9 - 8);
  v7[36] = v10;
  v7[37] = *(v10 + 64);
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B092B58, 0, 0);
}

uint64_t sub_25B092B58()
{
  v134 = v0;
  v1 = *(v0 + 224);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 288);
    v4 = *(v0 + 296);
    v120 = *(v0 + 280);
    v5 = *(v0 + 240);
    v6 = *(v3 + 80);
    v7 = v1 + ((v6 + 32) & ~v6);
    v125 = **(v0 + 216);
    swift_beginAccess();
    v123 = (v6 + 72) & ~v6;
    v121 = (v4 + v123 + 7) & 0xFFFFFFFFFFFFFFF8;
    v122 = *(v3 + 72);
    while (1)
    {
      v130 = v2;
      v129 = v7;
      sub_25B0596E0(v7, *(v0 + 360));
      if (qword_27FA30D08 != -1)
      {
        swift_once();
      }

      v34 = *(v0 + 352);
      v33 = *(v0 + 360);
      v36 = *(v0 + 336);
      v35 = *(v0 + 344);
      v37 = *(v0 + 232);
      v38 = sub_25B0E2970();
      __swift_project_value_buffer(v38, qword_27FA31930);
      sub_25B049F48(v37, v0 + 16);
      sub_25B0596E0(v33, v34);
      sub_25B0596E0(v33, v35);
      sub_25B0596E0(v33, v36);
      v39 = sub_25B0E2950();
      v40 = sub_25B0E3A50();
      v41 = os_log_type_enabled(v39, v40);
      v43 = *(v0 + 344);
      v42 = *(v0 + 352);
      if (v41)
      {
        v44 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v131 = v127;
        *v44 = 136315906;
        v45 = *(v0 + 40);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v45);
        v46 = *(v45 - 8);
        v47 = *(v46 + 64) + 15;
        swift_task_alloc();
        (*(v46 + 16))();
        type metadata accessor for GalleryLoader();
        v48 = sub_25B0E3760();
        v50 = v49;

        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
        v51 = sub_25B04BE04(v48, v50, &v131);

        *(v44 + 4) = v51;
        *(v44 + 12) = 2080;
        v52 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
        v54 = v53;
        sub_25B0597A8(v42);
        v55 = sub_25B04BE04(v52, v54, &v131);

        *(v44 + 14) = v55;
        *(v44 + 22) = 2080;
        v56 = (v43 + *(v120 + 20));
        v132 = 0;
        v133 = 0xE000000000000000;
        v57 = *v56;
        if (v57 > 2)
        {
          if (v57 == 3)
          {
            v58 = 0xE700000000000000;
            v59 = 0x7972656C6C6147;
          }

          else if (v57 == 4)
          {
            v58 = 0xE900000000000073;
            v59 = 0x65636146206C6C41;
          }

          else
          {
            v59 = 0x207972656C6C6147;
            v58 = 0xEE006C6961746544;
          }
        }

        else if (*v56)
        {
          if (v57 == 1)
          {
            v58 = 0xE700000000000000;
            v59 = 0x676E6972616853;
          }

          else
          {
            v58 = 0xE800000000000000;
            v59 = 0x736563614620794DLL;
          }
        }

        else
        {
          v58 = 0xE700000000000000;
          v59 = 0x66664F2D656E4FLL;
        }

        v62 = *(v0 + 336);
        v61 = *(v0 + 344);
        MEMORY[0x25F8602F0](v59, v58);

        MEMORY[0x25F8602F0](0x209286E220, 0xA500000000000000);
        v63 = *(type metadata accessor for FacePlacement.Location(0) + 20);
        sub_25B0E2540();
        sub_25B094FBC();
        v64 = sub_25B0E3E20();
        MEMORY[0x25F8602F0](v64);

        v65 = v132;
        v66 = v133;
        sub_25B0597A8(v61);
        v67 = sub_25B04BE04(v65, v66, &v131);

        *(v44 + 24) = v67;
        *(v44 + 32) = 2080;
        v68 = sub_25B0E2730();
        swift_getObjectType();

        v69 = sub_25B0E3FB0();
        v71 = v70;
        sub_25B0597A8(v62);
        v72 = sub_25B04BE04(v69, v71, &v131);

        *(v44 + 34) = v72;
        _os_log_impl(&dword_25B03D000, v39, v40, "Refresher - %s - adding %s @ %s (%s)…", v44, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x25F8613E0](v127, -1, -1);
        MEMORY[0x25F8613E0](v44, -1, -1);
      }

      else
      {
        v60 = *(v0 + 336);

        sub_25B0597A8(v60);
        sub_25B0597A8(v43);
        sub_25B0597A8(v42);
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      }

      v73 = *(v0 + 360);
      v74 = *(v0 + 328);
      v75 = *(v0 + 272);
      v76 = *(v0 + 256);
      v128 = *(v0 + 248);
      v78 = *(v0 + 232);
      v77 = *(v0 + 240);
      v79 = sub_25B0E3940();
      v80 = *(v79 - 8);
      (*(v80 + 56))(v75, 1, 1, v79);
      v81 = swift_allocObject();
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      sub_25B049F48(v78, v0 + 56);
      sub_25B0596E0(v73, v74);
      v83 = swift_allocObject();
      *(v83 + 16) = 0;
      v84 = (v83 + 16);
      *(v83 + 24) = 0;
      sub_25B03F164((v0 + 56), v83 + 32);
      sub_25B059744(v74, v83 + v123);
      v85 = (v83 + v121);
      *v85 = v128;
      v85[1] = v76;
      *(v83 + ((v121 + 23) & 0xFFFFFFFFFFFFFFF8)) = v81;

      if (swift_taskGroup_addPending())
      {
        break;
      }

      v93 = *(v0 + 360);
      v95 = *(v0 + 312);
      v94 = *(v0 + 320);
      v96 = *(v0 + 304);
      v97 = *(v0 + 272);
      v98 = *(v0 + 232);

      sub_25B058448(v97, &qword_27FA31990, &qword_25B0E6920);
      sub_25B049F48(v98, v0 + 96);
      sub_25B0596E0(v93, v94);
      sub_25B0596E0(v93, v95);
      sub_25B0596E0(v93, v96);
      v99 = sub_25B0E2950();
      v100 = sub_25B0E3A50();
      v101 = os_log_type_enabled(v99, v100);
      v103 = *(v0 + 312);
      v102 = *(v0 + 320);
      v104 = *(v0 + 304);
      if (v101)
      {
        v8 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v132 = v126;
        *v8 = 136315906;
        v9 = *(v0 + 120);
        __swift_project_boxed_opaque_existential_1((v0 + 96), v9);
        v124 = v100;
        v10 = *(v9 - 8);
        v11 = *(v10 + 64) + 15;
        swift_task_alloc();
        (*(v10 + 16))();
        type metadata accessor for GalleryLoader();
        v12 = sub_25B0E3760();
        v14 = v13;

        __swift_destroy_boxed_opaque_existential_1((v0 + 96));
        v15 = sub_25B04BE04(v12, v14, &v132);

        *(v8 + 4) = v15;
        *(v8 + 12) = 2080;
        v16 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
        v18 = v17;
        sub_25B0597A8(v102);
        v19 = sub_25B04BE04(v16, v18, &v132);

        *(v8 + 14) = v19;
        *(v8 + 22) = 2080;
        v20 = v103 + *(v120 + 20);
        v21 = FacePlacement.Location.description.getter();
        v23 = v22;
        sub_25B0597A8(v103);
        v24 = sub_25B04BE04(v21, v23, &v132);

        *(v8 + 24) = v24;
        *(v8 + 32) = 2080;
        v25 = sub_25B0E2730();
        swift_getObjectType();

        v26 = sub_25B0E3FB0();
        v28 = v27;
        sub_25B0597A8(v104);
        v29 = sub_25B04BE04(v26, v28, &v132);

        *(v8 + 34) = v29;
        _os_log_impl(&dword_25B03D000, v99, v124, "Refresher - %s - never added %s @ %s (%s)…", v8, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x25F8613E0](v126, -1, -1);
        MEMORY[0x25F8613E0](v8, -1, -1);
      }

      else
      {

        sub_25B0597A8(v104);
        sub_25B0597A8(v103);
        sub_25B0597A8(v102);
        __swift_destroy_boxed_opaque_existential_1((v0 + 96));
      }

      v30 = v130;
      v31 = v129;
      v32 = *(v0 + 256);
      (*(v0 + 248))(*(v0 + 360), 1);
LABEL_5:
      sub_25B0597A8(*(v0 + 360));
      v7 = v31 + v122;
      v2 = v30 - 1;
      if (!v2)
      {
        goto LABEL_33;
      }
    }

    v86 = *(v0 + 264);
    sub_25B058198(*(v0 + 272), v86);
    v87 = (*(v80 + 48))(v86, 1, v79);
    v88 = *(v0 + 264);
    if (v87 == 1)
    {
      sub_25B058448(*(v0 + 264), &qword_27FA31990, &qword_25B0E6920);
      if (*v84)
      {
LABEL_25:
        v89 = *(v83 + 24);
        swift_getObjectType();
        swift_unknownObjectRetain();
        v90 = sub_25B0E3850();
        v92 = v91;
        swift_unknownObjectRelease();
LABEL_30:
        v105 = swift_allocObject();
        *(v105 + 16) = &unk_25B0E7A48;
        *(v105 + 24) = v83;
        v106 = v92 | v90;
        if (v92 | v90)
        {
          v106 = v0 + 136;
          *(v0 + 136) = 0;
          *(v0 + 144) = 0;
          *(v0 + 152) = v90;
          *(v0 + 160) = v92;
        }

        v30 = v130;
        v107 = *(v0 + 272);
        *(v0 + 192) = 1;
        *(v0 + 200) = v106;
        *(v0 + 208) = v125;
        swift_task_create();

        sub_25B058448(v107, &qword_27FA31990, &qword_25B0E6920);
        v31 = v129;
        goto LABEL_5;
      }
    }

    else
    {
      sub_25B0E3930();
      (*(v80 + 8))(v88, v79);
      if (*v84)
      {
        goto LABEL_25;
      }
    }

    v90 = 0;
    v92 = 0;
    goto LABEL_30;
  }

LABEL_33:
  v109 = *(v0 + 352);
  v108 = *(v0 + 360);
  v111 = *(v0 + 336);
  v110 = *(v0 + 344);
  v113 = *(v0 + 320);
  v112 = *(v0 + 328);
  v115 = *(v0 + 304);
  v114 = *(v0 + 312);
  v117 = *(v0 + 264);
  v116 = *(v0 + 272);

  v118 = *(v0 + 8);

  return v118();
}

uint64_t sub_25B0936E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[30] = a7;
  v8[31] = a8;
  v8[28] = a5;
  v8[29] = a6;
  v8[27] = a4;
  v9 = type metadata accessor for FacePlacement(0);
  v8[32] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B0937E4, 0, 0);
}

uint64_t sub_25B0937E4()
{
  v93 = v0;
  v1 = sub_25B0E39F0();
  if (v1)
  {
    if (qword_27FA30D08 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 296);
    v2 = *(v0 + 304);
    v4 = *(v0 + 288);
    v6 = *(v0 + 216);
    v5 = *(v0 + 224);
    v7 = sub_25B0E2970();
    __swift_project_value_buffer(v7, qword_27FA31930);
    sub_25B049F48(v6, v0 + 152);
    sub_25B0596E0(v5, v2);
    sub_25B0596E0(v5, v3);
    sub_25B0596E0(v5, v4);
    v8 = sub_25B0E2950();
    v9 = sub_25B0E3A50();
    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 296);
    v11 = *(v0 + 304);
    v13 = *(v0 + 288);
    if (v10)
    {
      v86 = *(v0 + 256);
      v88 = v9;
      v14 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v92 = v89;
      *v14 = 136315906;
      v15 = *(v0 + 176);
      __swift_project_boxed_opaque_existential_1((v0 + 152), v15);
      v90 = v1;
      v16 = *(v15 - 8);
      v17 = *(v16 + 64) + 15;
      swift_task_alloc();
      (*(v16 + 16))();
      type metadata accessor for GalleryLoader();
      v18 = sub_25B0E3760();
      v20 = v19;

      __swift_destroy_boxed_opaque_existential_1((v0 + 152));
      v21 = sub_25B04BE04(v18, v20, &v92);

      *(v14 + 4) = v21;
      *(v14 + 12) = 2080;
      v22 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
      v24 = v23;
      sub_25B0597A8(v11);
      v25 = sub_25B04BE04(v22, v24, &v92);

      *(v14 + 14) = v25;
      *(v14 + 22) = 2080;
      v26 = v12 + *(v86 + 20);
      v27 = FacePlacement.Location.description.getter();
      v29 = v28;
      sub_25B0597A8(v12);
      v30 = sub_25B04BE04(v27, v29, &v92);

      *(v14 + 24) = v30;
      *(v14 + 32) = 2080;
      v31 = sub_25B0E2730();
      swift_getObjectType();

      v32 = sub_25B0E3FB0();
      v34 = v33;
      sub_25B0597A8(v13);
      v35 = sub_25B04BE04(v32, v34, &v92);
      v1 = v90;

      *(v14 + 34) = v35;
      v36 = "Refresher - %s - cancelled %s @ %s (%s)…";
LABEL_15:
      _os_log_impl(&dword_25B03D000, v8, v88, v36, v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x25F8613E0](v89, -1, -1);
      MEMORY[0x25F8613E0](v14, -1, -1);

LABEL_18:
      v75 = *(v0 + 240);
      (*(v0 + 232))(*(v0 + 224), v1 & 1);
      v77 = *(v0 + 320);
      v76 = *(v0 + 328);
      v79 = *(v0 + 304);
      v78 = *(v0 + 312);
      v81 = *(v0 + 288);
      v80 = *(v0 + 296);
      v83 = *(v0 + 272);
      v82 = *(v0 + 280);
      v84 = *(v0 + 264);

      v85 = *(v0 + 8);

      return v85();
    }

    sub_25B0597A8(v13);
    sub_25B0597A8(v12);
    sub_25B0597A8(v11);
    v42 = (v0 + 152);
    goto LABEL_17;
  }

  v37 = *(v0 + 248);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 336) = Strong;
  if (!Strong)
  {
    if (qword_27FA30D08 != -1)
    {
      swift_once();
    }

    v44 = *(v0 + 320);
    v43 = *(v0 + 328);
    v45 = *(v0 + 312);
    v47 = *(v0 + 216);
    v46 = *(v0 + 224);
    v48 = sub_25B0E2970();
    __swift_project_value_buffer(v48, qword_27FA31930);
    sub_25B049F48(v47, v0 + 112);
    sub_25B0596E0(v46, v43);
    sub_25B0596E0(v46, v44);
    sub_25B0596E0(v46, v45);
    v8 = sub_25B0E2950();
    v49 = sub_25B0E3A50();
    v50 = os_log_type_enabled(v8, v49);
    v52 = *(v0 + 320);
    v51 = *(v0 + 328);
    v53 = *(v0 + 312);
    if (v50)
    {
      v87 = *(v0 + 256);
      v88 = v49;
      v14 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v92 = v89;
      *v14 = 136315906;
      v54 = *(v0 + 136);
      __swift_project_boxed_opaque_existential_1((v0 + 112), v54);
      v91 = v1;
      v55 = *(v54 - 8);
      v56 = *(v55 + 64) + 15;
      swift_task_alloc();
      (*(v55 + 16))();
      type metadata accessor for GalleryLoader();
      v57 = sub_25B0E3760();
      v59 = v58;

      __swift_destroy_boxed_opaque_existential_1((v0 + 112));
      v60 = sub_25B04BE04(v57, v59, &v92);

      *(v14 + 4) = v60;
      *(v14 + 12) = 2080;
      v61 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
      v63 = v62;
      sub_25B0597A8(v51);
      v64 = sub_25B04BE04(v61, v63, &v92);

      *(v14 + 14) = v64;
      *(v14 + 22) = 2080;
      v65 = v52 + *(v87 + 20);
      v66 = FacePlacement.Location.description.getter();
      v68 = v67;
      sub_25B0597A8(v52);
      v69 = sub_25B04BE04(v66, v68, &v92);

      *(v14 + 24) = v69;
      *(v14 + 32) = 2080;
      v1 = v91;
      v70 = sub_25B0E2730();
      swift_getObjectType();

      v71 = sub_25B0E3FB0();
      v73 = v72;
      sub_25B0597A8(v53);
      v74 = sub_25B04BE04(v71, v73, &v92);

      *(v14 + 34) = v74;
      v36 = "Refresher - %s - refresh done %s @ %s (%s)…";
      goto LABEL_15;
    }

    sub_25B0597A8(v53);
    sub_25B0597A8(v52);
    sub_25B0597A8(v51);
    v42 = (v0 + 112);
LABEL_17:
    __swift_destroy_boxed_opaque_existential_1(v42);
    goto LABEL_18;
  }

  v39 = swift_task_alloc();
  *(v0 + 344) = v39;
  *v39 = v0;
  v39[1] = sub_25B093F78;
  v40 = *(v0 + 224);

  return sub_25B08FBEC(v0 + 16, v40);
}

uint64_t sub_25B093F78()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v12 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_25B0944C8;
  }

  else
  {
    v5 = v2[42];
    v6 = v2[3];
    v7 = v2[5];
    v8 = v2[6];
    v10 = v2[7];
    v9 = v2[8];

    v4 = sub_25B0940C8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25B0940C8()
{
  v51 = v0;
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = sub_25B0E2970();
  __swift_project_value_buffer(v6, qword_27FA31930);
  sub_25B049F48(v5, v0 + 112);
  sub_25B0596E0(v4, v2);
  sub_25B0596E0(v4, v1);
  sub_25B0596E0(v4, v3);
  v7 = sub_25B0E2950();
  v8 = sub_25B0E3A50();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 320);
  v10 = *(v0 + 328);
  v12 = *(v0 + 312);
  if (v9)
  {
    v47 = *(v0 + 256);
    v48 = v8;
    v13 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = v49;
    *v13 = 136315906;
    v14 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 112), v14);
    v15 = *(v14 - 8);
    v16 = *(v15 + 64) + 15;
    swift_task_alloc();
    (*(v15 + 16))();
    type metadata accessor for GalleryLoader();
    v17 = sub_25B0E3760();
    v19 = v18;

    __swift_destroy_boxed_opaque_existential_1((v0 + 112));
    v20 = sub_25B04BE04(v17, v19, &v50);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2080;
    v21 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
    v23 = v22;
    sub_25B0597A8(v10);
    v24 = sub_25B04BE04(v21, v23, &v50);

    *(v13 + 14) = v24;
    *(v13 + 22) = 2080;
    v25 = v11 + *(v47 + 20);
    v26 = FacePlacement.Location.description.getter();
    v28 = v27;
    sub_25B0597A8(v11);
    v29 = sub_25B04BE04(v26, v28, &v50);

    *(v13 + 24) = v29;
    *(v13 + 32) = 2080;
    v30 = sub_25B0E2730();
    swift_getObjectType();

    v31 = sub_25B0E3FB0();
    v33 = v32;
    sub_25B0597A8(v12);
    v34 = sub_25B04BE04(v31, v33, &v50);

    *(v13 + 34) = v34;
    _os_log_impl(&dword_25B03D000, v7, v48, "Refresher - %s - refresh done %s @ %s (%s)…", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v49, -1, -1);
    MEMORY[0x25F8613E0](v13, -1, -1);
  }

  else
  {

    sub_25B0597A8(v12);
    sub_25B0597A8(v11);
    sub_25B0597A8(v10);
    __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  }

  v35 = *(v0 + 240);
  (*(v0 + 232))(*(v0 + 224), 0);
  v37 = *(v0 + 320);
  v36 = *(v0 + 328);
  v39 = *(v0 + 304);
  v38 = *(v0 + 312);
  v41 = *(v0 + 288);
  v40 = *(v0 + 296);
  v43 = *(v0 + 272);
  v42 = *(v0 + 280);
  v44 = *(v0 + 264);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_25B0944C8()
{
  v59 = v0;

  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = sub_25B0E2970();
  __swift_project_value_buffer(v7, qword_27FA31930);
  sub_25B049F48(v6, v0 + 72);
  sub_25B0596E0(v5, v3);
  sub_25B0596E0(v5, v2);
  sub_25B0596E0(v5, v4);
  v8 = v1;
  v9 = sub_25B0E2950();
  v10 = sub_25B0E3A50();

  if (os_log_type_enabled(v9, v10))
  {
    v56 = *(v0 + 352);
    v12 = *(v0 + 272);
    v11 = *(v0 + 280);
    v53 = *(v0 + 256);
    v54 = *(v0 + 264);
    v13 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = v57;
    *v13 = 136316162;
    v14 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v14);
    v15 = *(v14 - 8);
    v16 = *(v15 + 64) + 15;
    swift_task_alloc();
    (*(v15 + 16))();
    type metadata accessor for GalleryLoader();
    v17 = sub_25B0E3760();
    v19 = v18;

    __swift_destroy_boxed_opaque_existential_1((v0 + 72));
    v20 = sub_25B04BE04(v17, v19, &v58);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2080;
    v21 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
    v23 = v22;
    sub_25B0597A8(v11);
    v24 = sub_25B04BE04(v21, v23, &v58);

    *(v13 + 14) = v24;
    *(v13 + 22) = 2080;
    v25 = v12 + *(v53 + 20);
    v26 = FacePlacement.Location.description.getter();
    v28 = v27;
    sub_25B0597A8(v12);
    v29 = sub_25B04BE04(v26, v28, &v58);

    *(v13 + 24) = v29;
    *(v13 + 32) = 2080;
    v30 = sub_25B0E2730();
    swift_getObjectType();

    v31 = sub_25B0E3FB0();
    v33 = v32;
    sub_25B0597A8(v54);
    v34 = sub_25B04BE04(v31, v33, &v58);

    *(v13 + 34) = v34;
    *(v13 + 42) = 2112;
    v35 = v56;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 44) = v36;
    *v55 = v36;
    _os_log_impl(&dword_25B03D000, v9, v10, "Refresher - %s - failed %s @ %s (%s) %@…", v13, 0x34u);
    sub_25B058448(v55, &unk_27FA31850, &qword_25B0E74B0);
    MEMORY[0x25F8613E0](v55, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v57, -1, -1);
    MEMORY[0x25F8613E0](v13, -1, -1);
  }

  else
  {
    v38 = *(v0 + 272);
    v37 = *(v0 + 280);
    v39 = *(v0 + 264);

    sub_25B0597A8(v39);
    sub_25B0597A8(v38);
    sub_25B0597A8(v37);
    __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  }

  v40 = *(v0 + 352);
  v41 = *(v0 + 240);
  (*(v0 + 232))(*(v0 + 224), 1);

  v43 = *(v0 + 320);
  v42 = *(v0 + 328);
  v45 = *(v0 + 304);
  v44 = *(v0 + 312);
  v47 = *(v0 + 288);
  v46 = *(v0 + 296);
  v49 = *(v0 + 272);
  v48 = *(v0 + 280);
  v50 = *(v0 + 264);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_25B094958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_25B058198(a3, v27 - v11);
  v13 = sub_25B0E3940();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_25B058448(v12, &qword_27FA31990, &qword_25B0E6920);
  }

  else
  {
    sub_25B0E3930();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25B0E3850();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_25B0E3770() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_25B094C08(id a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
  }
}

uint64_t sub_25B094C18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B0498DC;

  return sub_25B092038(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_25B094CD8(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_25B09287C(a1, a2, v2[2]);
}

uint64_t sub_25B094CE4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_25B05859C;

  return sub_25B0929F0(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_25B094DBC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FacePlacement(0) - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_25B05859C;

  return sub_25B0936E8(a1, v9, v10, v1 + 32, v1 + v6, v12, v13, v14);
}

uint64_t sub_25B094F04(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25B05859C;

  return sub_25B065840(a1, v5);
}

unint64_t sub_25B094FBC()
{
  result = qword_27FA319A0;
  if (!qword_27FA319A0)
  {
    sub_25B0E2540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA319A0);
  }

  return result;
}

uint64_t sub_25B095014(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 == 1)
    {
      if (a6 >> 62 == 1)
      {
        return (a5 ^ a1 ^ 1) & 1;
      }

      return 0;
    }

    v16 = a4 | a3;
    if (a2 != 0x8000000000000000 || v16 | a1)
    {
      if (a2 == 0x8000000000000000 && a1 == 1 && !v16)
      {
        if (a6 >> 62 != 2 || a5 != 1 || a6 != 0x8000000000000000 || a8 | a7)
        {
          return 0;
        }
      }

      else if (a6 >> 62 != 2 || a5 != 2 || a6 != 0x8000000000000000 || a8 | a7)
      {
        return 0;
      }
    }

    else if (a6 >> 62 != 2 || a6 != 0x8000000000000000 || a8 | a7 | a5)
    {
      return 0;
    }

    return 1;
  }

  if (a6 >> 62)
  {
    return 0;
  }

  v11 = a6;
  v12 = a2;
  sub_25B0954F8();
  v15 = sub_25B0E3AF0() & ~(v11 ^ v12) & (a3 == a7);
  if (a4 != a8)
  {
    LOBYTE(v15) = 0;
  }

  return v15 & 1;
}

unint64_t sub_25B095198()
{
  result = qword_27FA319B0;
  if (!qword_27FA319B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA319B0);
  }

  return result;
}

uint64_t sub_25B0951EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25B0498DC;

  return sub_25B091088(a1, v4, v5, v7, v6);
}

uint64_t sub_25B095364(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_25B0953B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_25B09540C(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x8000000000000000;
    result[2] = 0;
    result[3] = 0;
  }

  return result;
}

unint64_t sub_25B09544C()
{
  result = qword_27FA319C0;
  if (!qword_27FA319C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA319C0);
  }

  return result;
}

unint64_t sub_25B0954A4()
{
  result = qword_27FA319C8;
  if (!qword_27FA319C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA319C8);
  }

  return result;
}

unint64_t sub_25B0954F8()
{
  result = qword_27FA319D0;
  if (!qword_27FA319D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA319D0);
  }

  return result;
}

uint64_t sub_25B095544(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25B09558C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25B0955E0()
{
  result = qword_27FA319D8;
  if (!qword_27FA319D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA319D8);
  }

  return result;
}

uint64_t WatchGallery.__allocating_init(device:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t WatchGallery.groups.getter()
{
  v1[3] = v0;
  v1[4] = sub_25B0E3900();
  v1[5] = sub_25B0E38F0();
  v3 = sub_25B0E3850();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_25B095704, v3, v2);
}

uint64_t sub_25B095704()
{
  v1 = *(*(v0 + 24) + 16);
  type metadata accessor for GalleryCollectionLoader();
  v2 = swift_allocObject();
  *(v0 + 64) = v2;
  v3 = v1;
  swift_defaultActor_initialize();
  *(v2 + 112) = v3;

  return MEMORY[0x2822009F8](sub_25B09579C, v2, 0);
}

uint64_t sub_25B09579C()
{
  v1 = v0[8];
  v0[9] = sub_25B095C30();
  v2 = v0[6];
  v3 = v0[7];

  return MEMORY[0x2822009F8](sub_25B095804, v2, v3);
}

uint64_t sub_25B095804()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v19 = MEMORY[0x277D84F90];
    sub_25B0E3C50();
    v3 = (v1 + 32);
    do
    {
      v5 = v0[4];
      v6 = *v3;
      sub_25B0E38F0();
      sub_25B0E3850();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_25B0E3C30();
      v4 = *(v19 + 16);
      sub_25B0E3C60();
      sub_25B0E3C70();
      sub_25B0E3C40();
      ++v3;
      --v2;
    }

    while (v2);
    v7 = v0[9];

    v8 = v19;
  }

  else
  {
    v9 = v0[9];

    v8 = MEMORY[0x277D84F90];
  }

  v0[10] = v8;
  v10 = v0[4];
  v11 = sub_25B0E2830();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA319E0, &qword_25B0E7CC8);
  v13 = sub_25B0E38F0();
  v0[11] = v13;
  v14 = swift_task_alloc();
  v0[12] = v14;
  *(v14 + 16) = v8;
  v15 = *(MEMORY[0x277D858E8] + 4);
  v16 = swift_task_alloc();
  v0[13] = v16;
  *v16 = v0;
  v16[1] = sub_25B095A3C;
  v17 = MEMORY[0x277D85700];

  return MEMORY[0x282200600](v0 + 2, v11, v12, v13, v17, &unk_25B0E7CD8, v14, v11);
}

uint64_t sub_25B095A3C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  v9 = *v0;

  v6 = *(v1 + 56);
  v7 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_25B095BC0, v7, v6);
}

uint64_t sub_25B095BC0()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[2];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_25B095C30()
{
  v1 = objc_opt_self();
  v2 = *(v0 + 112);
  v3 = [v1 galleryCollectionsForDevice_];
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v5 = v3;
  sub_25B046E60(0, &unk_27FA31A00, 0x277D2C058);
  v6 = sub_25B0E37F0();

  v7 = [objc_opt_self() sharedManager];
  v14[4] = nullsub_1;
  v14[5] = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_25B095E4C;
  v14[3] = &block_descriptor_0;
  v8 = _Block_copy(v14);
  [v7 enumerateFaceBundlesOnDevice:v2 withBlock:v8];
  _Block_release(v8);

  if (!(v6 >> 62))
  {
    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v9 = sub_25B0E3CC0();
  if (!v9)
  {
LABEL_12:

    return v4;
  }

LABEL_4:
  v14[0] = v4;
  result = sub_25B0E3C50();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F860730](v11, v6);
      }

      else
      {
        v13 = *(v6 + 8 * v11 + 32);
      }

      ++v11;
      sub_25B0E3C30();
      v12 = *(v14[0] + 16);
      sub_25B0E3C60();
      sub_25B0E3C70();
      sub_25B0E3C40();
    }

    while (v9 != v11);

    return v14[0];
  }

  __break(1u);
  return result;
}

void sub_25B095E4C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_25B095EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = sub_25B0E2830();
  v3[12] = v4;
  v5 = *(v4 - 8);
  v3[13] = v5;
  v6 = *(v5 + 64) + 15;
  v3[14] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA319E8, &qword_25B0E7D60) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA319F0, &qword_25B0E7D68);
  v3[18] = v9;
  v10 = *(v9 - 8);
  v3[19] = v10;
  v11 = *(v10 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = sub_25B0E3900();
  v3[22] = sub_25B0E38F0();
  v13 = sub_25B0E3850();
  v3[23] = v13;
  v3[24] = v12;

  return MEMORY[0x2822009F8](sub_25B0960CC, v13, v12);
}

uint64_t sub_25B0960CC()
{
  v1 = *(v0 + 88);
  if (v1 >> 62)
  {
LABEL_27:
    v2 = sub_25B0E3CC0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v52 = (v0 + 16);
      v53 = v2;
      v55 = v1 & 0xFFFFFFFFFFFFFF8;
      v56 = v1 & 0xC000000000000001;
      v54 = *(v0 + 88) + 32;
      do
      {
        if (v56)
        {
          v7 = MEMORY[0x25F860730](v3, *(v0 + 88));
        }

        else
        {
          if (v3 >= *(v55 + 16))
          {
            goto LABEL_26;
          }

          v7 = *(v54 + 8 * v3);
        }

        v1 = v7;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        type metadata accessor for WatchGalleryCollectionLoader();
        v8 = swift_allocObject();
        v9 = objc_allocWithZone(type metadata accessor for WatchGalleryCollectionObserver());
        v10 = v1;
        v11 = [v9 init];
        v8[8] = v11;
        v8[2] = v10;
        v12 = v10;
        [v12 setDelegate_];
        v13 = [v12 title];
        if (!v13)
        {
          __break(1u);
          return MEMORY[0x2822002E8](v13, v14, v15, v16);
        }

        v17 = v13;
        v18 = sub_25B0E3740();
        v20 = v19;

        v8[3] = v18;
        v8[4] = v20;
        v21 = [v12 descriptionText];
        if (v21)
        {
          v22 = v21;
          v23 = sub_25B0E3740();
          v25 = v24;
        }

        else
        {
          v23 = 0;
          v25 = 0;
        }

        v8[5] = v23;
        v8[6] = v25;
        v26 = [v12 priorities];
        v57 = v3 + 1;
        v58 = v3;
        if (v26)
        {
          v27 = v26;
          sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
          sub_25B098874();
          v28 = sub_25B0E36A0();
        }

        else
        {
          v28 = MEMORY[0x277D84F98];
        }

        v30 = *(v0 + 120);
        v29 = *(v0 + 128);
        v8[7] = v28;
        v31 = sub_25B0E3940();
        v32 = *(v31 - 8);
        (*(v32 + 56))(v29, 1, 1, v31);
        v33 = swift_allocObject();
        v33[2] = 0;
        v34 = v33 + 2;
        v33[3] = 0;
        v33[4] = v8;
        v33[5] = v58;
        sub_25B058198(v29, v30);
        v35 = (*(v32 + 48))(v30, 1, v31);

        v36 = *(v0 + 120);
        if (v35 == 1)
        {
          sub_25B098754(*(v0 + 120));
          if (!*v34)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_25B0E3930();
          (*(v32 + 8))(v36, v31);
          if (!*v34)
          {
LABEL_21:
            v38 = 0;
            v40 = 0;
            goto LABEL_22;
          }
        }

        v37 = v33[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v38 = sub_25B0E3850();
        v40 = v39;
        swift_unknownObjectRelease();
LABEL_22:
        v41 = **(v0 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = &unk_25B0E7D78;
        *(v42 + 24) = v33;

        if (v40 | v38)
        {
          v4 = v52;
          *v52 = 0;
          v52[1] = 0;
          *(v0 + 32) = v38;
          *(v0 + 40) = v40;
        }

        else
        {
          v4 = 0;
        }

        v5 = *(v0 + 128);
        v6 = *(v0 + 96);
        *(v0 + 48) = 1;
        *(v0 + 56) = v4;
        *(v0 + 64) = v41;
        v1 = swift_task_create();

        sub_25B098754(v5);
        v3 = v58 + 1;
      }

      while (v57 != v53);
    }
  }

  v43 = *(v0 + 160);
  v44 = *(v0 + 96);
  v45 = **(v0 + 80);
  sub_25B0E3890();
  *(v0 + 200) = MEMORY[0x277D84F90];
  v46 = *(v0 + 168);
  v47 = sub_25B0E38F0();
  *(v0 + 208) = v47;
  v48 = *(MEMORY[0x277D856B0] + 4);
  v49 = swift_task_alloc();
  *(v0 + 216) = v49;
  *v49 = v0;
  v49[1] = sub_25B0965CC;
  v50 = *(v0 + 160);
  v13 = *(v0 + 136);
  v16 = *(v0 + 144);
  v15 = MEMORY[0x277D85700];
  v14 = v47;

  return MEMORY[0x2822002E8](v13, v14, v15, v16);
}

uint64_t sub_25B0965CC()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v7 = *v0;

  v4 = *(v1 + 192);
  v5 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_25B096710, v5, v4);
}

uint64_t sub_25B096710()
{
  v33 = v0;
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[13];
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[25];
  if (v4 == 1)
  {
    v6 = v0[22];
    (*(v0[19] + 8))(v0[20], v0[18]);

    v32 = v5;

    sub_25B096EB4(&v32);
    v23 = v0[25];
    v24 = v0[20];
    v26 = v0[16];
    v25 = v0[17];
    v28 = v0[14];
    v27 = v0[15];
    v29 = v0[9];

    *v29 = v32;

    v30 = v0[1];

    return v30();
  }

  else
  {
    v7 = *(v3 + 32);
    v7(v0[14], v1, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v0[25];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_25B089CC0(0, *(v9 + 2) + 1, 1, v0[25]);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_25B089CC0(v10 > 1, v11 + 1, 1, v9);
    }

    v13 = v0[13];
    v12 = v0[14];
    v14 = v0[12];
    *(v9 + 2) = v11 + 1;
    v7(&v9[((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11], v12, v14);
    v0[25] = v9;
    v15 = v0[21];
    v16 = sub_25B0E38F0();
    v0[26] = v16;
    v17 = *(MEMORY[0x277D856B0] + 4);
    v18 = swift_task_alloc();
    v0[27] = v18;
    *v18 = v0;
    v18[1] = sub_25B0965CC;
    v19 = v0[20];
    v20 = v0[17];
    v21 = v0[18];
    v22 = MEMORY[0x277D85700];

    return MEMORY[0x2822002E8](v20, v16, v22, v21);
  }
}

uint64_t sub_25B0969C0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25B05859C;

  return sub_25B095EEC(a1, a2, v6);
}

uint64_t sub_25B096A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_25B0E2750();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[8] = v9;
  *v9 = v5;
  v9[1] = sub_25B096B64;

  return sub_25B0988F4();
}

uint64_t sub_25B096B64(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_25B096C64, 0, 0);
}

uint64_t sub_25B096C64()
{
  v1 = v0[3];
  v2 = v1[4];
  v17 = v1[3];
  if (v1[6])
  {
    v3 = v1[5];
  }

  else
  {
    v4 = v0[9];
    if (*(v4 + 16))
    {
      v5 = v0[6];
      v6 = v0[7];
      v7 = v0[5];
      (*(v5 + 16))(v6, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v7);

      v8 = sub_25B0E2730();
      (*(v5 + 8))(v6, v7);
      v9 = [v8 faceDescription];

      sub_25B0E3740();
      v1 = v0[3];
    }

    else
    {
    }
  }

  v10 = v0[9];
  v11 = v0[7];
  v12 = v0[4];
  v13 = v0[2];
  v14 = v1[7];

  sub_25B0E27F0();

  v15 = v0[1];

  return v15();
}

uint64_t WatchGallery.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25B096EB4(void **a1)
{
  v2 = *(sub_25B0E2830() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25B0D40CC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25B096F5C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25B096F5C(uint64_t *a1)
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
        sub_25B0E2830();
        v6 = sub_25B0E3820();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25B0E2830() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25B097390(v8, v9, a1, v4);
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
    return sub_25B097088(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25B097088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_25B0E2830();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v48 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v55 = &v38 - v14;
  result = MEMORY[0x28223BE20](v13);
  v54 = &v38 - v16;
  v40 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = sub_25B0E3900();
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v51 = v20;
    v52 = v18;
    v21 = *(v19 + 56);
    v49 = v8;
    v50 = (v19 - 8);
    v53 = v19;
    v22 = v17 + v21 * (a3 - 1);
    v45 = -v21;
    v46 = (v19 + 16);
    v23 = a1 - a3;
    v47 = v17;
    v39 = v21;
    v24 = v17 + v21 * a3;
LABEL_5:
    v43 = v22;
    v44 = a3;
    v41 = v24;
    v42 = v23;
    v25 = v22;
    while (1)
    {
      v26 = v51;
      v51(v54, v24, v8);
      v26(v55, v25, v8);
      sub_25B0E38F0();
      sub_25B0E3850();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v27 = v54;
      v28 = sub_25B0E27E0();
      v29 = v55;
      v30 = sub_25B0E27E0();

      v31 = *v50;
      v32 = v29;
      v33 = v49;
      (*v50)(v32, v49);
      v34 = v27;
      v8 = v33;
      result = v31(v34, v33);
      if (v28 >= v30)
      {
LABEL_4:
        a3 = v44 + 1;
        v22 = v43 + v39;
        v23 = v42 - 1;
        v24 = v41 + v39;
        if (v44 + 1 == v40)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v47)
      {
        break;
      }

      v35 = *v46;
      v36 = v48;
      (*v46)(v48, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v35)(v25, v36, v8);
      v25 += v45;
      v24 += v45;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25B097390(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v140 = a1;
  v163 = sub_25B0E2830();
  v8 = *(v163 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v163);
  v143 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v155 = &v133 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v162 = &v133 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v161 = &v133 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v152 = &v133 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v151 = &v133 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v139 = &v133 - v23;
  result = MEMORY[0x28223BE20](v22);
  v138 = &v133 - v25;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_100:
    a4 = *v140;
    if (!*v140)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_102:
      v164 = v28;
      v129 = *(v28 + 2);
      if (v129 >= 2)
      {
        while (*a3)
        {
          v130 = *&v28[16 * v129];
          v131 = *&v28[16 * v129 + 24];
          sub_25B097FC8(*a3 + v8[9] * v130, *a3 + v8[9] * *&v28[16 * v129 + 16], *a3 + v8[9] * v131, a4);
          if (v5)
          {
          }

          if (v131 < v130)
          {
            goto LABEL_125;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_25B0D3F4C(v28);
          }

          if (v129 - 2 >= *(v28 + 2))
          {
            goto LABEL_126;
          }

          v132 = &v28[16 * v129];
          *v132 = v130;
          *(v132 + 1) = v131;
          v164 = v28;
          result = sub_25B0D3EC0(v129 - 1);
          v28 = v164;
          v129 = *(v164 + 2);
          if (v129 <= 1)
          {
          }
        }

        goto LABEL_136;
      }
    }

LABEL_132:
    result = sub_25B0D3F4C(v28);
    v28 = result;
    goto LABEL_102;
  }

  v134 = a4;
  v27 = 0;
  v159 = (v8 + 1);
  v160 = v8 + 2;
  v158 = (v8 + 4);
  v28 = MEMORY[0x277D84F90];
  v141 = a3;
  v135 = v8;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    v142 = v27;
    if (v27 + 1 < v26)
    {
      v147 = v26;
      v136 = v28;
      v137 = v5;
      v31 = *a3;
      v32 = v8[9];
      v5 = v27 + 1;
      v33 = v31 + v32 * v30;
      v34 = v8[2];
      v35 = v27;
      v36 = v163;
      v34(v138, v33, v163);
      v150 = v32;
      v146 = v34;
      v34(v139, v31 + v32 * v35, v36);
      v37 = sub_25B0E3900();
      sub_25B0E38F0();
      v145 = v37;
      sub_25B0E3850();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v38 = v138;
      v149 = sub_25B0E27E0();
      v39 = v139;
      v148 = sub_25B0E27E0();

      v40 = *v159;
      (*v159)(v39, v36);
      v144 = v40;
      result = (v40)(v38, v36);
      v41 = (v142 + 2);
      v42 = v150 * (v142 + 2);
      v43 = v31 + v42;
      v44 = v150 * v5;
      a4 = v31 + v150 * v5;
      do
      {
        v28 = v41;
        v53 = v5;
        a3 = v44;
        v8 = v42;
        if (v41 >= v147)
        {
          break;
        }

        v153 = v44;
        v154 = v5;
        v156 = v41;
        v157 = v42;
        v54 = v163;
        v55 = v146;
        v146(v151, v43, v163);
        v55(v152, a4, v54);
        sub_25B0E38F0();
        sub_25B0E3850();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v45 = v149 < v148;
        v46 = v151;
        v47 = sub_25B0E27E0();
        v48 = v152;
        v49 = sub_25B0E27E0();

        v50 = v163;
        v51 = v144;
        v144(v48, v163);
        result = (v51)(v46, v50);
        v52 = v45 ^ (v47 >= v49);
        v28 = v156;
        v8 = v157;
        v41 = v156 + 1;
        v43 += v150;
        a4 += v150;
        a3 = v153;
        v53 = v154;
        v5 = v154 + 1;
        v44 = v153 + v150;
        v42 = v157 + v150;
      }

      while ((v52 & 1) != 0);
      if (v149 >= v148)
      {
        v30 = v28;
        v5 = v137;
        a3 = v141;
        v8 = v135;
        v28 = v136;
        v29 = v142;
      }

      else
      {
        v29 = v142;
        if (v28 < v142)
        {
          goto LABEL_129;
        }

        if (v142 < v28)
        {
          v56 = v142 * v150;
          v57 = v142;
          do
          {
            if (v57 != v53)
            {
              v60 = *v141;
              if (!*v141)
              {
                goto LABEL_135;
              }

              v61 = v53;
              a4 = v60 + v56;
              v62 = *v158;
              (*v158)(v143, v60 + v56, v163);
              v157 = v8;
              if (v56 < a3 || a4 >= v8 + v60)
              {
                v58 = v163;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v58 = v163;
                if (v56 != a3)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v62)(a3 + v60, v143, v58);
              v29 = v142;
              v8 = v157;
              v53 = v61;
            }

            ++v57;
            a3 = (a3 - v150);
            v8 = (v8 - v150);
            v56 += v150;
          }

          while (v57 < v53--);
        }

        v30 = v28;
        v5 = v137;
        a3 = v141;
        v8 = v135;
        v28 = v136;
      }
    }

    v63 = a3[1];
    if (v30 < v63)
    {
      if (__OFSUB__(v30, v29))
      {
        goto LABEL_128;
      }

      if (v30 - v29 < v134)
      {
        break;
      }
    }

LABEL_49:
    if (v30 < v29)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25B08993C(0, *(v28 + 2) + 1, 1, v28);
      v28 = result;
    }

    a4 = *(v28 + 2);
    v84 = *(v28 + 3);
    v85 = a4 + 1;
    if (a4 >= v84 >> 1)
    {
      result = sub_25B08993C((v84 > 1), a4 + 1, 1, v28);
      v28 = result;
    }

    *(v28 + 2) = v85;
    v86 = &v28[16 * a4];
    *(v86 + 4) = v29;
    *(v86 + 5) = v30;
    v150 = v30;
    v87 = *v140;
    if (!*v140)
    {
      goto LABEL_137;
    }

    if (a4)
    {
      while (1)
      {
        v88 = v85 - 1;
        if (v85 >= 4)
        {
          break;
        }

        if (v85 == 3)
        {
          v89 = *(v28 + 4);
          v90 = *(v28 + 5);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_69:
          if (v92)
          {
            goto LABEL_116;
          }

          v105 = &v28[16 * v85];
          v107 = *v105;
          v106 = *(v105 + 1);
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_119;
          }

          v111 = &v28[16 * v88 + 32];
          v113 = *v111;
          v112 = *(v111 + 1);
          v99 = __OFSUB__(v112, v113);
          v114 = v112 - v113;
          if (v99)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v109, v114))
          {
            goto LABEL_123;
          }

          if (v109 + v114 >= v91)
          {
            if (v91 < v114)
            {
              v88 = v85 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        v115 = &v28[16 * v85];
        v117 = *v115;
        v116 = *(v115 + 1);
        v99 = __OFSUB__(v116, v117);
        v109 = v116 - v117;
        v110 = v99;
LABEL_83:
        if (v110)
        {
          goto LABEL_118;
        }

        v118 = &v28[16 * v88];
        v120 = *(v118 + 4);
        v119 = *(v118 + 5);
        v99 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v99)
        {
          goto LABEL_121;
        }

        if (v121 < v109)
        {
          goto LABEL_3;
        }

LABEL_90:
        a4 = v88 - 1;
        if (v88 - 1 >= v85)
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

        v126 = *&v28[16 * a4 + 32];
        v127 = *&v28[16 * v88 + 40];
        sub_25B097FC8(*a3 + v8[9] * v126, *a3 + v8[9] * *&v28[16 * v88 + 32], *a3 + v8[9] * v127, v87);
        if (v5)
        {
        }

        if (v127 < v126)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_25B0D3F4C(v28);
        }

        if (a4 >= *(v28 + 2))
        {
          goto LABEL_113;
        }

        v128 = &v28[16 * a4];
        *(v128 + 4) = v126;
        *(v128 + 5) = v127;
        v164 = v28;
        result = sub_25B0D3EC0(v88);
        v28 = v164;
        v85 = *(v164 + 2);
        if (v85 <= 1)
        {
          goto LABEL_3;
        }
      }

      v93 = &v28[16 * v85 + 32];
      v94 = *(v93 - 64);
      v95 = *(v93 - 56);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_114;
      }

      v98 = *(v93 - 48);
      v97 = *(v93 - 40);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_115;
      }

      v100 = &v28[16 * v85];
      v102 = *v100;
      v101 = *(v100 + 1);
      v99 = __OFSUB__(v101, v102);
      v103 = v101 - v102;
      if (v99)
      {
        goto LABEL_117;
      }

      v99 = __OFADD__(v91, v103);
      v104 = v91 + v103;
      if (v99)
      {
        goto LABEL_120;
      }

      if (v104 >= v96)
      {
        v122 = &v28[16 * v88 + 32];
        v124 = *v122;
        v123 = *(v122 + 1);
        v99 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v99)
        {
          goto LABEL_124;
        }

        if (v91 < v125)
        {
          v88 = v85 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_69;
    }

LABEL_3:
    v26 = a3[1];
    v27 = v150;
    if (v150 >= v26)
    {
      goto LABEL_100;
    }
  }

  if (__OFADD__(v29, v134))
  {
    goto LABEL_130;
  }

  if (v29 + v134 >= v63)
  {
    a4 = a3[1];
  }

  else
  {
    a4 = v29 + v134;
  }

  if (a4 < v29)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (v30 == a4)
  {
    goto LABEL_49;
  }

  v136 = v28;
  v137 = v5;
  v64 = *a3;
  v65 = sub_25B0E3900();
  v66 = v8[9];
  v156 = v8[2];
  v157 = v65;
  v67 = v64 + v66 * (v30 - 1);
  v153 = -v66;
  v154 = v64;
  v68 = v29 - v30;
  v145 = v66;
  v146 = a4;
  v69 = v64 + v30 * v66;
  v70 = v163;
LABEL_40:
  v149 = v67;
  v150 = v30;
  v147 = v69;
  v148 = v68;
  v71 = v69;
  v72 = v67;
  while (1)
  {
    v73 = v156;
    (v156)(v161, v71, v70);
    (v73)(v162, v72, v70);
    sub_25B0E38F0();
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v74 = v161;
    v75 = sub_25B0E27E0();
    v76 = v162;
    v77 = sub_25B0E27E0();

    v78 = *v159;
    v79 = v76;
    v80 = v163;
    (*v159)(v79, v163);
    result = (v78)(v74, v80);
    if (v75 >= v77)
    {
      v70 = v163;
LABEL_39:
      v30 = v150 + 1;
      a4 = v146;
      v67 = v149 + v145;
      v68 = v148 - 1;
      v69 = v147 + v145;
      if ((v150 + 1) == v146)
      {
        v30 = v146;
        v5 = v137;
        a3 = v141;
        v8 = v135;
        v28 = v136;
        v29 = v142;
        goto LABEL_49;
      }

      goto LABEL_40;
    }

    if (!v154)
    {
      break;
    }

    v81 = *v158;
    v82 = v155;
    v70 = v163;
    (*v158)(v155, v71, v163);
    swift_arrayInitWithTakeFrontToBack();
    v81(v72, v82, v70);
    v72 += v153;
    v71 += v153;
    if (__CFADD__(v68++, 1))
    {
      goto LABEL_39;
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